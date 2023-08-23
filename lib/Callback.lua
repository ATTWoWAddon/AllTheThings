
-- Callback Lib
local _, app = ...;

-- Setup the callback tables since they are heavily used
local __callbacks = {};
local __combatcallbacks = {};
local Cache = {};
local Timer, unpack, max, tinsert, InCombatLockdown = C_Timer.After, unpack, math.max, tinsert, InCombatLockdown;
-- Gets or Creates the actual method which runs as a callback to execute the specified method
local function GetOrCreateCallback(method)
	local callbackMethod = Cache[method];
	if not callbackMethod then
		-- app.PrintDebug("CB:New",method)
		callbackMethod = function()
			local args = __callbacks[method];
			__callbacks[method] = nil;
			-- callback with args/void
			if args ~= true then
				-- app.PrintDebug("CB:Run/args",method,unpack(args))
				method(unpack(args));
			else
				-- app.PrintDebug("CB:Run/void",method)
				method();
			end
			-- app.PrintDebug("CB:Done",method)
		end;
		Cache[method] = callbackMethod;
	end
	return callbackMethod;
end
-- Triggers a timer callback method to run on the next game frame with the provided params; the method can only be set to run once per frame
local function Callback(method, ...)
	if not __callbacks[method] then
		__callbacks[method] = ... and {...} or true;
		Timer(0, GetOrCreateCallback(method));
	-- else app.PrintDebug("CB:Skip",method)
	end
end
-- Triggers a timer callback method to run after the provided number of seconds with the provided params; the method can only be set to run once per delay
local function DelayedCallback(method, delaySec, ...)
	if not __callbacks[method] then
		__callbacks[method] = ... and {...} or true;
		Timer(max(0, delaySec or 0), GetOrCreateCallback(method));
	-- else app.PrintDebug("DCB:Skip",method)
	end
end
-- Triggers a timer callback method to run on the next game frame or following combat if in combat currently with the provided params; the method can only be set to run once per frame
local function AfterCombatCallback(method, ...)
	if not InCombatLockdown() then Callback(method, ...); return; end
	if not __callbacks[method] then
		__callbacks[method] = ... and {...} or true;
		-- TODO: convert to a CallbackRunner?
		tinsert(__combatcallbacks, 1, GetOrCreateCallback(method));
		app:RegisterEvent("PLAYER_REGEN_ENABLED");
	-- else app.PrintDebug("ACCB:Skip",method)
	end
end
-- Triggers a timer callback method to run either when current combat ends, or after the provided delay; the method can only be set to run once until it has been run
local function AfterCombatOrDelayedCallback(method, delaySec, ...)
	if InCombatLockdown() then
		AfterCombatCallback(method, ...);
	else
		DelayedCallback(method, delaySec, ...);
	end
end
app.__combatcallbacks = __combatcallbacks;
app.CallbackHandlers = {
	Callback = Callback,
	DelayedCallback = DelayedCallback,
	AfterCombatCallback = AfterCombatCallback,
	AfterCombatOrDelayedCallback = AfterCombatOrDelayedCallback
};