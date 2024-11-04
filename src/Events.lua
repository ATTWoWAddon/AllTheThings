
local appName, app = ...;

local rawget, ipairs, pairs, rawset, setmetatable, print, type, pcall, tinsert
	= rawget, ipairs, pairs, rawset, setmetatable, print, type, pcall, tinsert

-- Declare Custom Event Handlers
local EventHandlers = setmetatable({
	OnReady = {},
	OnRecalculate = {},
	OnRefreshCollections = {},
}, app.MetaTable.AutoTable)
app.AddEventHandler = function(eventName, handler, forceStart)
	if type(handler) ~= "function" then
		app.print("AddEventHandler was provided a non-function",handler)
		return
	end
	local handlers = EventHandlers[eventName]
	if forceStart then
		tinsert(handlers, 1, handler)
	else
		handlers[#handlers + 1] = handler;
	end
	-- app.PrintDebug("Added Handler",handler,"@",#handlers,"in Event",eventName)
end
app.RemoveEventHandler = function(handler)
	if type(handler) ~= "function" then
		app.print("RemoveEventHandler was provided a non-function",handler)
		return
	end
	for eventName,handlers in pairs(EventHandlers) do
		local count = #handlers
		local shift = count
		while shift > 0 do
			if handler == handlers[shift] then
				-- app.PrintDebug("Remove Handler",handler,"@",shift,"/",#handlers,"in Event",eventName)
				break
			end
			shift = shift - 1
		end
		if shift > 0 then
			local next = shift + 1
			while shift < count do
				handlers[shift] = handlers[next]
				shift = shift + 1
				next = next + 1
			end
			handlers[#handlers] = nil;
			-- app.PrintDebug("Handlers",#handlers,"in Event",eventName)
		-- else app.PrintDebug("Handler",handler,"not in Event",eventName)
		end
	end
end
-- Most of the time, there's no reason for ATT to try handling game events until it's even ready to do anything with it
-- So instead of individually adding a bazillion OnReady event registrations, let's just have one method do that all for us
local OnReadyEventRegistrations = {}
app.AddEventRegistration = function(event, func, doNotPreRegister)
	if not event or not func then
		app.print("AddEventRegistration invalid call",event,func)
	end
	if doNotPreRegister then
		app.events[event] = func
	else
		-- app.PrintDebug("Event Func Registered",event,func)
		OnReadyEventRegistrations[event] = func
	end
end
app.AddEventHandler("OnReady", function()
	local Register = app.RegisterFuncEvent
	for event,func in pairs(OnReadyEventRegistrations) do
		-- app.PrintDebug("RegisterFuncEvent",event,func)
		-- safely attempt to register the event incase it is not available in a game version
		pcall(Register, app, event, func);
	end
	OnReadyEventRegistrations = nil
end)

-- Represents Events whose individual handlers should be processed over multiple frames to reduce potential stutter
local RunnerEvents = {
	OnRefreshCollections = app.IsRetail,
	OnRecalculate = app.IsRetail,
	OnUpdateWindows = app.IsRetail,
	-- OnRefreshWindows = true,
}
-- Represents Events which must always be run synchronously in the same frame as when they are triggered. These should be user-based triggers
-- typically where their execution must be handled ASAP, even if other Events are running through the Runner
local ImmediateEvents = {
	RowOnEnter = true,
	RowOnLeave = true,
	RowOnClick = true,
}
-- Represents Events which should always fire upon completion of a prior Event. These cannot be passed arguments currently
local EventSequence = {
	OnLoad = {
		"OnStartup"
	},
	OnStartup = {
		"OnStartupDone"
	},
	OnRefreshSettings = {
		"OnSettingsRefreshed"
	},
	OnRecalculate = {
		"OnRecalculateDone",
	},
	OnRecalculateDone = {
		"OnRefreshComplete",
	},
	OnRenderDirty = {
		"OnRefreshWindows"
	},
	OnSavesUpdated = {
		"OnRefreshWindows"
	},
	OnCurrentMapIDChanged = {
		"OnRefreshWindows"
	},
}
-- Classic has some convoluted refresh sequence handling with coroutines and manual calls to events and data refreshes, so
-- I don't wanna mess with all that. We just won't link the OnRecalculate to the OnRefreshCollections for Classic --Runaway
if app.IsRetail then
	EventSequence.OnRefreshCollections = {
		"OnBeforeRecalculate",
		"OnRecalculate",
		"OnRefreshCollectionsDone",
	}
else
	EventSequence.OnRefreshCollections = {
		"OnRefreshCollectionsDone",
	}
end

local Runner = app.CreateRunner("events")
-- Runner.SetPerFrameDefault(5)
local Callback = app.CallbackHandlers.Callback
local IgnoredDebugEvents = {
	RowOnEnter = true,
	RowOnLeave = true
}
local function DebugEventTriggered(eventName,...)
	if IgnoredDebugEvents[eventName] then return end
	app.PrintDebug(app.Modules.Color.Colorize(eventName,app.Colors.Renown),...)
end
local function DebugEventStart(eventName,...)
	if IgnoredDebugEvents[eventName] then return end
	app.PrintDebug(app.Modules.Color.Colorize(eventName,Runner.IsRunning() and app.Colors.Time or app.Colors.AddedWithPatch),...)
end
local function DebugEventDone(eventName,...)
	if IgnoredDebugEvents[eventName] then return end
	app.PrintDebug(app.Modules.Color.Colorize(eventName,Runner.IsRunning() and app.Colors.Horde or app.Colors.RemovedWithPatch),...)
end
local SequenceEventsStack = {}
local function OnEndSequenceEvents()
	local sequenceEventCount = #SequenceEventsStack
	if sequenceEventCount > 0 then
		-- app.PrintDebug(app.Modules.Color.Colorize(SequenceEventsStack[sequenceEventCount],app.Colors.Mount))
		-- callback the top event in the SequenceEventsStack (Runner is reset after OnEnd in the same frame)
		app.CallbackEvent(SequenceEventsStack[sequenceEventCount])
		SequenceEventsStack[sequenceEventCount] = nil
	end
end
local function QueueSequenceEvents(eventName)
	local sequenceEvents = EventSequence[eventName]
	if sequenceEvents then
		-- app.PrintDebug(app.Modules.Color.Colorize(eventName,app.Colors.Alliance))
		if #SequenceEventsStack > 0 or Runner.IsRunning() then
			-- add sequence events to the SequenceEventsStack if there's a Runner running
			for i=#sequenceEvents,1,-1 do
				-- app.PrintDebug(app.Modules.Color.Colorize(sequenceEvents[i],app.Colors.Default))
				SequenceEventsStack[#SequenceEventsStack + 1] = sequenceEvents[i]
			end
		else
			-- run the sequence events on the next frame when not in a Runner
			-- NOTE: Multiple Callbacks in the same frame are not guaranteed to process in the same order in which they
			-- were registered. This might just be a nuance of how C_Timer.After() handles the set of functions registered
			-- for the same delay...
			for _,event in ipairs(sequenceEvents) do
				app.CallbackEvent(event)
			end
		end
	end
	if #SequenceEventsStack > 0 then
		Runner.OnEnd(OnEndSequenceEvents)
	end
end

app.HandleEvent = function(eventName, ...)
	-- getting to the point where there's noticeable stutter again during refresh due to the amount of handlers added
	-- to the refresh event. would rather spread that out over multiple frames so it remains unnoticeable
	-- additionally, since some events can process on a Runner, then following Events need to also be pushed onto
	-- the Event Runner so that they execute in the expected sequence
	if not ImmediateEvents[eventName] and (#SequenceEventsStack > 0 or RunnerEvents[eventName] or Runner.IsRunning()) then
		-- app.PrintDebug(app.Modules.Color.Colorize(eventName,app.Colors.LockedWarning),...)
		-- Runner.Run(DebugEventStart, eventName, ...)
		for i,handler in ipairs(EventHandlers[eventName]) do
			-- Runner.Run(app.PrintDebug,app.Modules.Color.Colorize(eventName,app.Colors.Time),"Handler #",i)
			Runner.Run(handler, ...)
			-- Runner.Run(app.PrintDebugPrior,app.Modules.Color.Colorize(eventName,app.Colors.Horde),"Handler Done")
		end
		-- Runner.Run(DebugEventDone, eventName)
	else
		-- DebugEventTriggered(eventName, ...)
		-- DebugEventStart(eventName, ...)
		for i,handler in ipairs(EventHandlers[eventName]) do
			handler(...);
		end
		-- DebugEventDone(eventName)
	end
	QueueSequenceEvents(eventName)
end
-- Provides a unique function per EventName which can be used in a Callback without interfering with other Callback Events
local CallbackEventFunctions = setmetatable({}, { __index = function(t, eventName)
	local callback = function(eventName)
		app.HandleEvent(eventName)
	end
	t[eventName] = callback
	return callback
end})
-- Allows performing an Event on the next frame instead of immediately.
-- Also enforces that a single handle of that Event is performed that frame, thus for clarity, parameters are NOT supported
app.CallbackEvent = function(eventName)
	-- app.PrintDebug(app.Modules.Color.Colorize(eventName,app.Colors.Insane))
	Callback(CallbackEventFunctions[eventName], eventName)
end