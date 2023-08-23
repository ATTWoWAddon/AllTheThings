
-- Runner Lib
local _, app = ...;

-- Concepts:
-- Capability to add to and run an entire set of Functions each frame, removing those which do not return a status
-- Capability to add and run coroutine Functions, with one loop of iteration per frame
-- Capability to add to and run a sequence of Functions with a specific allotment being processed individually each frame

-- Global locals
local wipe, math_max, tonumber, unpack, coroutine, type, select, tremove, tinsert, pcall, C_Timer_After =
	  wipe, math.max, tonumber, unpack, coroutine, type, select, tremove, tinsert, pcall,  C_Timer.After;

local Stack = {};
local StackParams = {};
-- Tracks whether the Stack has already been requested to begin running
local RunningStack;
-- Function that queues RunStack only once regardless of call-count within one frame
local QueueStack;
-- A static coroutine which can be invoked to reverse-sequentially process all Functions within the Stack,
-- passing the corresponding Stack param to each called Function.
-- Any Functions which do not return a status will be removed
local StackCo = coroutine.create(function()
	while true do
		-- app.PrintDebug("StackCo:Call",#Stack)
		local f, p, s, c;
		for i=#Stack,1,-1 do
			f, p = Stack[i], StackParams[i];
			-- app.PrintDebug("StackCo:Run",i,f,p)
			s, c = pcall(f, p);
			-- Function call has an error or it is not continuing, remove it from the Stack
			if not s or not c then
				if not s then app.PrintDebug("StackError:",c) end
				-- app.PrintDebug("StackCo:Remove",i)
				tremove(Stack, i);
				tremove(StackParams, i);
			end
		end
		-- app.PrintDebug("StackCo:Done")
		-- Re-call StackCo if anything remains in the Stack
		if #Stack > 0 then
			-- app.PrintDebug("StackCo:QueueStack",#Stack)
			QueueStack();
		end
		-- after processing the Stack, yield this coroutine
		-- app.PrintDebug("StackCo:Yield")
		coroutine.yield();
	end
end);
-- Function that begins a once-per-frame pass of the StackCo to run all Functions in the Stack
local function RunStack()
	-- app.PrintDebug("RunStackStatus:",coroutine.status(StackCo))
	RunningStack = nil;
	coroutine.resume(StackCo);
end
QueueStack = function()
	-- app.PrintDebug("QueueStackStatus:",RunningStack and "REPEAT" or "FIRST",coroutine.status(StackCo))
	if RunningStack then return; end
	RunningStack = true;
	C_Timer_After(0, RunStack);
end
-- Accepts a param and Function which will execute on the following frame using the provided param
local function Push(param, name, func)
	-- app.PrintDebug("Push",name,func,param)
	tinsert(Stack, func);
	tinsert(StackParams, param or 1);
	QueueStack();
end
app.Push = Push;

-- Represents a key-weak table containing a cache of functions which are desired to be run within a coroutine.
-- If the function is temporary and all references are removed externally, then the respective cache entry can be removed as well when garbagecollection
-- happens to run. This makes sure that we don't permanently hold references to every coroutined-function during the lifetime of the client
local CoroutineCache = setmetatable({}, { __mode = "k" });
-- Represents a small set of Push functions which are used to allow the Stack to handle coroutine processing. As these functions have no bearing
-- on the coroutine they run, they can be reused and only created when the current amount is not enough to handle all concurrent coroutines.
-- We will make this a weak-value cache, such that the Push methods can be cleaned up/recreated if needed
local PushCache = setmetatable({}, { __mode = "v" });
local function GetCoroutine(func, name)
	local co = CoroutineCache[func];
	if not co then
		-- Coroutines are typically not designed to be re-run, so wrap the func in a permanent loop so it can simply be restarted
		-- when retrieved from the cache instead of needing to be re-created each time it is used
		co = coroutine.create(function() while true do func(); coroutine.yield(false); end end);
		-- app.PrintDebug("CO:New",name,co,func)
		CoroutineCache[func] = co;
	-- else app.PrintDebug("CO:Cache",name,co,func)
	end
	-- Mark this name/coroutine until the coroutine is returned
	CoroutineCache[name] = true;
	CoroutineCache[co] = name;
	return co;
end
-- Allows freeing a coroutine and the respective name used to create it initially
local function ReturnCoroutine(co)
	local name = CoroutineCache[co];
	-- app.PrintDebug("CO:Return",name,co)
	CoroutineCache[name] = nil;
	CoroutineCache[co] = nil;
end
local function GetPusher()
	local pusher = PushCache[1];
	if pusher then
		tremove(PushCache, 1);
		-- app.PrintDebug("PUSH:Cache",#PushCache)
		return pusher;
	end

	-- app.PrintDebug("PUSH:New",#PushCache + 1)
	local function pushfunc(co)
			-- Check the status of the coroutine
			-- app.PrintDebug("PUSH:Run",pushfunc,"=>",co)
			if co and coroutine.status(co) ~= "dead" then
				local ok, err = coroutine.resume(co);
				if ok then
					if err == false then
						-- This means the coroutine signals completion by returning false
						-- app.PrintDebug("PUSH.Run.Complete",co)
					else
						-- This means more work is required.
						-- app.PrintDebug("PUSH.Run.Yielded",co)
						return true;
					end
				else
					app.PrintDebug("PUSH.Run.Error",co)
					-- Throw the error. Returning nothing is the same as canceling the work.
					-- local instanceTrace = debugstack(instance);
					if app.DEBUG_PRINT then
						local instanceTrace = debugstack(co);
						print(instanceTrace)
					end
					error(err,2);
					-- print(debugstack(instance));
					-- print(err);
					-- app.report();
				end
			end
			-- After the pusher is done running the coroutine, it can return itself to the cache
			-- app.PrintDebug("PUSH:Return",pushfunc,"=>",#PushCache + 1)
			tinsert(PushCache, pushfunc);
			-- Then grab the corresponding Name of this coroutine based on the coroutine cache
			-- and swap in the coroutine for the Name, and un-flag the Name from the NameCache
			ReturnCoroutine(co);
		end;
	return pushfunc;
end
-- Allows running a function on a coroutine until it completes
local function StartCoroutine(name, func, delay)
	if not func or CoroutineCache[name] then return; end
	-- app.PrintDebug("CO:Prep",name);

	local co = GetCoroutine(func, name);
	local pusher = GetPusher();

	if delay and delay > 0 then
		-- app.PrintDebug("CO:Delay",delay,name,pusher,co);
		C_Timer_After(delay, function() Push(co, name, pusher) end);
	else
		-- app.PrintDebug("CO:Start",name,pusher,co);
		Push(co, name, pusher);
	end
end
app.StartCoroutine = StartCoroutine;

-- Iterative Function Runner
-- Creates a Function Runner which can execute a sequence of Functions on a set iteration per frame update
local function CreateRunner(name)
	local FunctionQueue, ParameterBucketQueue, ParameterSingleQueue, Config = {}, {}, {}, { PerFrame = 1 };
	local Name = "Runner:"..name;
	local QueueIndex = 1;
	local Pushed;
	local function SetPerFrame(count)
		Config.PerFrame = math_max(1, tonumber(count) or 1);
		-- app.PrintDebug("FR.PerFrame."..name,Config.PerFrame)
	end
	local function Reset()
		Config.PerFrame = 1;
		-- when done with all functions in the queue, reset the queue index and clear the queues of data
		QueueIndex = 1;
		wipe(FunctionQueue);
		wipe(ParameterBucketQueue);
		wipe(ParameterSingleQueue);
		-- app.PrintDebug("FR:Reset."..name)
	end

	-- Static coroutine for the Runner which runs one loop each time the Runner is called, and yields on the Stack
	local RunnerCoroutine = coroutine.create(function()
		while true do
			local i, perFrame = 1, Config.PerFrame;
			local params;
			local func = FunctionQueue[i];
			-- app.PrintDebug("FRC.Running."..name)
			while func do
				perFrame = perFrame - 1;
				params = ParameterBucketQueue[i];
				if params then
					-- app.PrintDebug("FRC.Run.N."..name,i,unpack(params))
					pcall(func, unpack(params));
				else
					-- app.PrintDebug("FRC.Run.1."..name,i,ParameterSingleQueue[i])
					pcall(func, ParameterSingleQueue[i]);
				end
				-- app.PrintDebug("FRC.Done."..name,i)
				if perFrame <= 0 then
					-- app.PrintDebug("FRC.Yield."..name)
					coroutine.yield();
					perFrame = Config.PerFrame;
				end
				i = i + 1;
				func = FunctionQueue[i];
			end
			-- Run the OnEnd function if it exists
			local OnEnd = FunctionQueue[0];
			if OnEnd then
				-- app.PrintDebug("FRC.End."..name,#FunctionQueue)
				OnEnd();
			end
			Reset();
			Pushed = nil;
			-- Yield false to kick the StackRun off the Stack to stop calling this coroutine since it is complete until Run is called again
			coroutine.yield(false);
		end
	end);

	-- Static Function that handles the Stack-Run for the Runner-Coroutine
	local function StackRun()
		-- app.PrintDebug("Stack.Run",Name)
		local ok, err = coroutine.resume(RunnerCoroutine);
		if ok then
			if err == false then
				-- app.PrintDebug("Stack.Run.Complete",Name)
				return;			-- This means the coroutine signals completion by returning false
			else
				-- app.PrintDebug("Stack.Run.Yielded",Name)
				return true;	-- This means more work is required.
			end
		else
			app.PrintDebug("Stack.Run.Error",Name)
			-- Throw the error. Returning nothing is the same as canceling the work.
			if app.DEBUG_PRINT then
				local instanceTrace = debugstack(RunnerCoroutine);
				print(instanceTrace)
			end
			error(err,2);
			-- print(debugstack(instance));
			-- print(err);
			-- app.report();
		end
	end

	-- Provides a utility which will process a given number of functions each frame in a Queue
	local Runner = {
		-- Adds a function to be run with any necessary parameters
		Run = function(func, ...)
			if type(func) ~= "function" then
				error("Must be a 'function' type!")
			end
			FunctionQueue[QueueIndex] = func;
			-- app.PrintDebug("FR.Add."..name,QueueIndex,...)
			local arrs = select("#", ...);
			if arrs == 1 then
				ParameterSingleQueue[QueueIndex] = ...;
			elseif arrs > 1 then
				ParameterBucketQueue[QueueIndex] = { ... };
			end
			QueueIndex = QueueIndex + 1;
			-- Only push the coroutine onto the Stack once until it is completed
			if Pushed then return; end
			Pushed = true;
			Push(nil, Name, StackRun);
		end,
		-- Set a function to be run once the queue is empty. This function takes no parameters.
		OnEnd = function(func)
			FunctionQueue[0] = func;
		end,
	};
	-- Defines how many functions will be executed per frame. Executes via the Runner when encountered in the Queue, unless specified as 'instant'
	Runner.SetPerFrame = function(count, instant)
		if instant then
			SetPerFrame(count);
		else
			Runner.Run(SetPerFrame, count);
		end
	end
	Runner.Reset = Reset; -- for testing

	return Runner;
end
app.CreateRunner = CreateRunner;