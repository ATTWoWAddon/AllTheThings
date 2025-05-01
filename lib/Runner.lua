
-- Runner Lib
local _, app = ...;

-- Concepts:
-- Capability to add to and run an entire set of Functions each frame, removing those which do not return a status
-- Capability to add and run coroutine Functions, with one loop of iteration per frame
-- Capability to add to and run a sequence of Functions with a specific allotment being processed individually each frame

-- Global locals
local wipe, math_max, tonumber, unpack, coroutine, type, select, tremove, pcall,xpcall, C_Timer_After,GetTimePreciseSec =
	  wipe, math.max, tonumber, unpack, coroutine, type, select, tremove, pcall,xpcall, C_Timer.After,GetTimePreciseSec
local c_create, c_yield, c_resume, c_status
	= coroutine.create, coroutine.yield, coroutine.resume, coroutine.status;

local function PrintError(err, source, co)
	app.print(app.Modules.Color.Colorize("ERROR:",app.Colors.ChatLinkError),source,":",err)
	if co then
		local instanceTrace = debugstack(co);
		print(instanceTrace)
	end
end

local Stack = {};
local StackParams = {};
-- Tracks whether the Stack has already been requested to begin running
local RunningStack;
-- Function that queues RunStack only once regardless of call-count within one frame
local QueueStack;
-- A static coroutine which can be invoked to reverse-sequentially process all Functions within the Stack,
-- passing the corresponding Stack param to each called Function.
-- Any Functions which do not return a status will be removed
local StackCo
local function SetStackCo()
	-- app.PrintDebug("SetStackCo")
	StackCo = c_create(function()
		while true do
			-- app.PrintDebug("StackCo:Call",#Stack)
			local f, p, status, err;
			for i=#Stack,1,-1 do
				f, p = Stack[i], StackParams[i];
				-- app.PrintDebug("StackCo:Run",i,f,p)
				status, err = pcall(f, p);
				-- Function call has an error or it is not continuing, remove it from the Stack
				if not status or not err then
					if not status then PrintError(err, "StackCo", StackCo) end
					-- app.PrintDebug("StackCo:Remove",i)
					tremove(Stack, i);
					tremove(StackParams, i);
				end
			end
			-- app.PrintDebug("StackCo:Done",f,p)
			-- Re-call StackCo if anything remains in the Stack
			if #Stack > 0 then
				-- app.PrintDebug("StackCo:QueueStack",#Stack)
				QueueStack();
			end
			-- after processing the Stack, yield this coroutine
			-- app.PrintDebug("StackCo:Yield")
			c_yield();
		end
	end)
end
SetStackCo()
-- Function that begins a once-per-frame pass of the StackCo to run all Functions in the Stack
local function RunStack()
	-- app.PrintDebug("StackCoStatus:",c_status(StackCo))
	if c_status(StackCo) == "dead" then SetStackCo() end
	RunningStack = nil;
	local ok, err = pcall(c_resume, StackCo);
	if not ok then PrintError(err, "RunStack", StackCo) end
end
QueueStack = function()
	-- app.PrintDebug("QueueStackStatus:",RunningStack and "REPEAT" or "FIRST",c_status(StackCo))
	if RunningStack then return; end
	RunningStack = true;
	C_Timer_After(0, RunStack);
end
-- Accepts a param and Function which will execute on the following frame using the provided param
local function Push(param, name, func)
	Stack[#Stack + 1] = func;
	StackParams[#StackParams + 1] = param or 1;
	-- app.PrintDebug("Push @",#StackParams,name,func,param)
	QueueStack();
end
app.Push = Push;

-- Represents a key-weak table containing a cache of functions which are desired to be run within a coroutine.
-- If the function is temporary and all references are removed externally, then the respective cache entry can be removed as well when garbagecollection
-- happens to run. This makes sure that we don't permanently hold references to every coroutined-function during the lifetime of the client
local CoroutineCache = setmetatable({}, {
	__mode = "k",
	__index = function(t, func)
		if type(func) ~= "function" then return end
		-- Coroutines are typically not designed to be re-run, so wrap the func in a permanent loop so it can simply be restarted
		-- when retrieved from the cache instead of needing to be re-created each time it is used
		local co = c_create(function() while true do func(); c_yield(false); end end);
		-- app.PrintDebug("CO:New",co,"<==",func)
		t[func] = co;
		return co;
	end
});
local function GetCoroutine(func, name)
	local co = CoroutineCache[func];
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
-- We will make this a weak-value cache, such that the Push methods can be cleaned up/recreated if needed
local _PushQueue = setmetatable({}, {__mode = "v",})
-- Represents a small set of Push functions which are used to allow the Stack to handle coroutine processing. As these functions have no bearing
-- on the coroutine they run, they can be reused and only created when the current amount is not enough to handle all concurrent coroutines.
local PushQueue = setmetatable({}, {
	-- any index reference will return the next available pusher
	__index = function()
		local pusher = _PushQueue[#_PushQueue];
		if pusher then
			-- app.PrintDebug("PUSH:Cache",#_PushQueue)
			_PushQueue[#_PushQueue] = nil;
			return pusher;
		end
		-- app.PrintDebug("PUSH:New",#_PushQueue + 1)
		local function pushfunc(co)
			-- Check the status of the coroutine
			-- app.PrintDebug("PUSH:Run",pushfunc,"=>",co)
			if co and c_status(co) ~= "dead" then
				local ok, err = c_resume(co);
				if ok then
					if err == false then
						-- This means the coroutine signals completion by returning false
						-- app.PrintDebug("PUSH.Run.Complete",co)
					else
						-- This means more work is required.
						-- app.PrintDebug("PUSH.Run.Yielded",co)
						return true;
					end
				else PrintError(err, "PUSH.Run", co) end
			end
			-- After the pusher is done running the coroutine, it can return itself to the cache
			_PushQueue[#_PushQueue + 1] = pushfunc;
			-- app.PrintDebug("PUSH:Return",pushfunc,"=>",#_PushQueue)
			-- Then grab the corresponding Name of this coroutine based on the coroutine cache
			-- and swap in the coroutine for the Name, and un-flag the Name from the NameCache
			ReturnCoroutine(co);
		end;
		return pushfunc;
	end
});
-- Allows running a function on a coroutine until it completes
local function StartCoroutine(name, func, delay)
	if not func or CoroutineCache[name] then return; end
	-- app.PrintDebug("CO:Prep",name);

	local co = GetCoroutine(func, name);
	local pusher = PushQueue.Next;

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
	local OnStart, OnReset
	local Name = "Runner:"..name;
	if app.__perf then
		app.__perf.AutoCaptureTable(FunctionQueue, Name..".FunctionQueue")
	end
	local QueueIndex, RunIndex = 1, 1
	local Pushed, perFrame
	local function SetPerFrame(count)
		Config.PerFrame = math_max(1, tonumber(count) or 1);
		-- app.PrintDebug("FR.PerFrame."..name,Config.PerFrame)
		-- always yield immediately so that it takes effect when encountered
		perFrame = 0
	end
	local function Reset()
		-- app.PrintDebug("FR:Reset."..name,Pushed and "RUNNING" or "STOPPED","Qi",QueueIndex,"Ri",RunIndex,"@",Config.PerFrame)
		if OnReset then OnReset() end
		SetPerFrame(Config.PerFrameDefault or 1)
		-- when done with all functions in the queue, reset the indexes and clear the queues of data
		QueueIndex = 1
		RunIndex = Pushed and 0 or 1	-- reset while running will resume and continue at index 1
		wipe(FunctionQueue)
		wipe(ParameterBucketQueue)
		wipe(ParameterSingleQueue)
	end
	local function Stats()
		app.print(name,Pushed and "RUNNING" or "STOPPED","Qi",QueueIndex,"Ri",RunIndex,"@",Config.PerFrame)
	end

	-- Static coroutine for the Runner which runs one loop each time the Runner is called, and yields on the Stack
	local RunnerCoroutine
	local function err(msg)
		PrintError(msg, "Runner."..name, RunnerCoroutine)
	end
	local SetRunnerCoroutine = function()
		RunnerCoroutine = c_create(function()
			while true do
				local frameStartTime = Config.DebugFrameTime and GetTimePreciseSec() or nil
				perFrame = Config.PerFrame
				local params;
				local func = FunctionQueue[RunIndex];
				-- app.PrintDebug("FRC.Running."..name)
				if OnStart then OnStart() end
				while func do
					perFrame = perFrame - 1;
					params = ParameterBucketQueue[RunIndex];
					if params then
						-- app.PrintDebug("FRC.Run.N."..name,RunIndex,unpack(params))
						xpcall(func, err, unpack(params));
					else
						-- app.PrintDebug("FRC.Run.1."..name,RunIndex,ParameterSingleQueue[RunIndex])
						xpcall(func, err, ParameterSingleQueue[RunIndex]);
					end
					-- app.PrintDebug("FRC.Done."..name,RunIndex)
					if perFrame <= 0 then
						-- app.PrintDebug("FRC.Yield."..name)
						if frameStartTime then
							local diff = math.floor(100000 * (GetTimePreciseSec() - frameStartTime)) / 100
							app.PrintDebug("FRC",name,"FrameTime","#",Config.PerFrame,diff,"ms Stutter @", math.ceil(1000 / diff))
						end
						c_yield();
						frameStartTime = Config.DebugFrameTime and GetTimePreciseSec() or nil
						perFrame = Config.PerFrame;
					end
					RunIndex = RunIndex + 1;
					func = FunctionQueue[RunIndex];
				end
				-- Run the OnEnd function if it exists
				local OnEnd = FunctionQueue[0];
				if OnEnd then
					-- app.PrintDebug("FRC.End."..name,#FunctionQueue)
					OnEnd();
				end
				Pushed = nil;
				Reset();
				if frameStartTime then
					local diff = math.floor(100000 * (GetTimePreciseSec() - frameStartTime)) / 100
					app.PrintDebug("FRC",name,"FrameTime","#",Config.PerFrame,diff,"ms Stutter @", math.ceil(1000 / diff))
				end
				-- Yield false to kick the StackRun off the Stack to stop calling this coroutine since it is complete until Run is called again
				c_yield(false);
				frameStartTime = Config.DebugFrameTime and GetTimePreciseSec() or nil
			end
		end);
		-- app.PrintDebug("SetRunnerCoroutine",Name)
	end
	SetRunnerCoroutine()

	-- Static Function that handles the Stack-Run for the Runner-Coroutine
	local function StackRun()
		-- app.PrintDebug("Stack.Run",Name)
		if c_status(RunnerCoroutine) == "dead" then SetRunnerCoroutine() end
		local ok, err = c_resume(RunnerCoroutine);
		if ok then
			if err == false then
				-- app.PrintDebug("Stack.Run.Complete",Name)
				return;			-- This means the coroutine signals completion by returning false
			else
				-- app.PrintDebug("Stack.Run.Yielded",Name)
				return true;	-- This means more work is required.
			end
		else PrintError(err, Name, RunnerCoroutine) end
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
		-- Set a function to be run when the Runner attempts to start.
		-- This function takes no parameters and persists for the duration of the Runner
		DefaultOnStart = function(func)
			OnStart = func
		end,
		-- Set a function to be run when the Runner is Reset.
		-- This function takes no parameters and persists for the duration of the Runner
		DefaultOnReset = function(func)
			OnReset = func
		end,
		-- Return the current PerFrame of the Runner
		GetPerFrame = function() return Config.PerFrame end,
		-- Return if the Runner is currently Running
		IsRunning = function() return Pushed end,
		-- Allows defining the default PerFrame for this Runner (i.e. when Reset)
		SetPerFrameDefault = function(count) Config.PerFrameDefault = count; Config.PerFrame = count end,
		-- Allows adding/removing timing tracking into PrintDebug messages for this Runner
		ToggleDebugFrameTime = function() Config.DebugFrameTime = not Config.DebugFrameTime; return Config.DebugFrameTime end,
	};
	-- Defines how many functions will be executed per frame. Executes via the Runner when encountered in the Queue, unless specified as 'instant'
	Runner.SetPerFrame = function(count, instant)
		if instant then
			SetPerFrame(count);
		else
			Runner.Run(SetPerFrame, count);
		end
	end

	Runner.Reset = Reset -- for testing
	Runner.Stats = Stats -- for testing
	app.Runners[name] = Runner

	return Runner;
end
-- Retrieves an existing or creates a new Runner with the provided name
app.CreateRunner = function(name)
	return app.Runners[name] or CreateRunner(name)
end
app.Runners = {}
app.FunctionRunner = CreateRunner("default");