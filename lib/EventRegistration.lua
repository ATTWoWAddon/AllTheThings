-- Registration of Event capture functionality
local _, app = ...;


-- Create an Event Processor.
local events = setmetatable({}, {
	-- undefined event handler
	__index = function(t, key)
		local unhandledEventFunction = function(...)
			app.print("UNHANDLED EVENT",key,...)
		end
		t[key] = unhandledEventFunction
		return unhandledEventFunction
	end
});
local frame = CreateFrame("FRAME", nil, UIParent, BackdropTemplateMixin and "BackdropTemplate");
---@diagnostic disable-next-line: inject-field
frame.Suffix = "ATTFRAME";
local function OnEvent_Debugging(self, e, ...)
	app.PrintDebug(e,...);
	events[e](...);
	app.PrintDebugPrior(e);
end
local function OnEvent(self, e, ...) events[e](...) end
frame:SetScript("OnEvent", app.DebuggingEvents and OnEvent_Debugging or OnEvent);
frame:SetPoint("BOTTOMLEFT", UIParent, "TOPLEFT", 0, 0);
frame:SetSize(1, 1);
frame:Show();
app.frame = frame;
app.events = events;
app.RegisterEvent = function(self, ...)
	frame:RegisterEvent(...);
end
app.RegisterFuncEvent = function(self, event, func)
	if func then
		frame:RegisterEvent(event);
		app.events[event] = func
	end
end
app.UnregisterEvent = function(self, event)
	frame:UnregisterEvent(event);
end
app.UnregisterEventClean = function(self, event)
	frame:UnregisterEvent(event);
	app.events[event] = nil
end
app.SetScript = function(self, ...)
	local scriptName, method = ...;
	if method then
		frame:SetScript(scriptName, function(...)
			method(app, ...);
		end);
	else
		frame:SetScript(scriptName, nil);
	end
end
local ForceDebugPrint
app.DebugEvents = function()
	app.DebuggingEvents = not app.DebuggingEvents
	frame:SetScript("OnEvent", app.DebuggingEvents and OnEvent_Debugging or OnEvent);
	-- enable/disable Debugging for prints if not already enabled
	if app.DebuggingEvents then
		if not app.Debugging then
			ForceDebugPrint = true
			app.Debugging = true
		end
	else
		if ForceDebugPrint and app.Debugging then
			ForceDebugPrint = nil
			app.Debugging = nil
		end
	end
end

-- Simple Events
app:RegisterFuncEvent("PLAYER_LEVEL_UP", function(newLevel)
	app.Level = newLevel;
	app.HandleEvent("OnPlayerLevelUp");
end)