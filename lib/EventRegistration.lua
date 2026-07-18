-- Registration of Event capture functionality
local _, app = ...;


-- Create an Event Processor.
local events = setmetatable({}, {
	-- undefined event handler
	__index = function(t, key)
		-- Blizzard tries accessing ToDebugString on every table randomly because no one knows why
		if key == "ToDebugString" then return end

		app.report("UNHANDLED EVENT",key)
		local unhandledEventFunction = app.EmptyFunction
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
frame:SetPoint("BOTTOMLEFT", UIParent, "TOPLEFT", 0, 0);
frame:SetSize(1, 1);
frame:Show();
app.frame = frame;
app.events = events;
app.events.__ToggleOnEventFunc = function() frame:SetScript("OnEvent", app.DebuggingEvents and OnEvent_Debugging or OnEvent) end
app.events.__ToggleOnEventFunc()
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

-- Simple Events
app:RegisterFuncEvent("PLAYER_LEVEL_UP", function(newLevel)
	app.Level = newLevel;
	app.HandleEvent("OnPlayerLevelUp");
end)
