
local appName, app = ...;

local rawget, pairs, rawset, setmetatable, print, type, pcall, tinsert
	= rawget, pairs, rawset, setmetatable, print, type, pcall, tinsert

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
		if OnReadyEventRegistrations[event] then
			app.PrintDebug(app.Modules.Color.Colorize("Replaced Event Registration!",app.Colors.Horde),event)
		end
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
	-- in case future events are registered, they need to directly be registered
	app.AddEventRegistration = function(event, func)
		if not event or not func then
			app.print("AddEventRegistration invalid call",event,func)
		end
		app:RegisterFuncEvent(event, func)
	end
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
	OnWindowUpdated = true,
}
-- Allows non-hardcoded assignment of Events which should ignore Runners and simply process immediately when fired
-- This is helpful when an Event has an Event Sequence defined but also may occur during a Runner, which would lead to the
-- Event Sequence processing multiple times in succession, whereas when running immediately we assign the Event Sequence
-- to fire as CallbackEvents instead of being queued on the Runner
app.DesignateImmediateEvent = function(event)
	if not event then
		app.print("DesignateImmediateEvent needs an event",event)
		return
	end

	ImmediateEvents[event] = true
end
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
-- Allows adding an EventSequence entry, preventing any duplication
app.LinkEventSequence = function(event, followupEvent)
	if not (event and followupEvent) then
		app.print("LinkEventSequence needs both event and followupEvent",event,followupEvent)
		return
	end

	local triggerEventSequence = EventSequence[event]
	if not triggerEventSequence then
		triggerEventSequence = {}
		EventSequence[event] = triggerEventSequence
	end

	for i=1,#triggerEventSequence do
		if triggerEventSequence[i] == followupEvent then
			app.print("LinkEventSequence duplicate followupEvent defined",event,followupEvent)
			return
		end
	end

	triggerEventSequence[#triggerEventSequence + 1] = followupEvent
end
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
local Run = Runner.Run
local OnEnd = Runner.OnEnd
local IsRunning = Runner.IsRunning
-- Runner.SetPerFrameDefault(5)
local Callback = app.CallbackHandlers.Callback
local IgnoredDebugEvents = {
	RowOnEnter = true,
	RowOnLeave = true,
	RowOnClick = true,
}
local function DebugEventTriggered(eventName,...)
	if IgnoredDebugEvents[eventName] then return end
	app.PrintDebug(app.Modules.Color.Colorize(eventName,app.Colors.Renown),...)
end
local function DebugEventStart(eventName,...)
	if IgnoredDebugEvents[eventName] then return end
	app.PrintDebug(app.Modules.Color.Colorize(eventName,IsRunning() and app.Colors.Time or app.Colors.AddedWithPatch),...)
end
local function DebugEventDone(eventName,...)
	if IgnoredDebugEvents[eventName] then return end
	app.PrintDebug(app.Modules.Color.Colorize(eventName,IsRunning() and app.Colors.Horde or app.Colors.RemovedWithPatch),...)
end
local function DebugNextSequenceEvent(eventName,...)
	if IgnoredDebugEvents[eventName] then return end
	app.PrintDebug(app.Modules.Color.Colorize(eventName,app.Colors.Mount),...)
end
local function DebugQueueSequencedEvents(eventName,...)
	if IgnoredDebugEvents[eventName] then return end
	app.PrintDebug(app.Modules.Color.Colorize(eventName,app.Colors.Alliance),...)
end
local function DebugQueuedSequenceEvent(eventName,...)
	if IgnoredDebugEvents[eventName] then return end
	app.PrintDebug(app.Modules.Color.Colorize(eventName,app.Colors.Default),...)
end
local function DebugStartRunnerEvent(eventName,...)
	if IgnoredDebugEvents[eventName] then return end
	app.PrintDebug(app.Modules.Color.Colorize(eventName,app.Colors.LockedWarning),...)
end
local function DebugStartRunnerFunc(eventName,...)
	if IgnoredDebugEvents[eventName] then return end
	app.PrintDebug(app.Modules.Color.Colorize(eventName,app.Colors.Time),...)
end
local function DebugEndRunnerFunc(eventName,...)
	if IgnoredDebugEvents[eventName] then return end
	app.PrintDebug(app.Modules.Color.Colorize(eventName,app.Colors.TimeUnder2Hr),...)
end
local function DebugCallbackEvent(eventName)
	if IgnoredDebugEvents[eventName] then return end
	app.PrintDebug(app.Modules.Color.Colorize(eventName,app.Colors.Insane))
end

-- Event Handling Logic

local CallbackEvent
local SequenceEventsStack = {}
local function OnEndSequenceEvents()
	local sequenceEventCount = #SequenceEventsStack
	if sequenceEventCount > 0 then
		-- DebugNextSequenceEvent(SequenceEventsStack[sequenceEventCount])
		-- callback the top event in the SequenceEventsStack (Runner is reset after OnEnd in the same frame)
		CallbackEvent(SequenceEventsStack[sequenceEventCount])
		SequenceEventsStack[sequenceEventCount] = nil
	end
end
local function QueueSequenceEvents(eventName)
	local sequenceEvents = EventSequence[eventName]
	if sequenceEvents then
		-- DebugQueueSequencedEvents(eventName)
		if not ImmediateEvents[eventName] and (#SequenceEventsStack > 0 or IsRunning()) then
			-- add sequence events to the SequenceEventsStack if there's a Runner running
			for i=#sequenceEvents,1,-1 do
				-- DebugQueuedSequenceEvent(sequenceEvents[i])
				SequenceEventsStack[#SequenceEventsStack + 1] = sequenceEvents[i]
			end
		else
			-- run the sequence events on the next frame when not in a Runner
			-- NOTE: Multiple Callbacks in the same frame are not guaranteed to process in the same order in which they
			-- were registered. This might just be a nuance of how C_Timer.After() handles the set of functions registered
			-- for the same delay...
			for i=1,#sequenceEvents do
				CallbackEvent(sequenceEvents[i])
			end
		end
	end
	if #SequenceEventsStack > 0 then
		OnEnd(OnEndSequenceEvents)
	end
end

-- Performs the logic needed to integrate the Handlers of a given Event into the current Event flow such that they
-- are processed in the proper sequence and timing in conjunction with other events
local function HandleEvent(eventName, ...)
	-- getting to the point where there's noticeable stutter again during refresh due to the amount of handlers added
	-- to the refresh event. would rather spread that out over multiple frames so it remains unnoticeable
	-- additionally, since some events can process on a Runner, then following Events need to also be pushed onto
	-- the Event Runner so that they execute in the expected sequence
	local handlers = EventHandlers[eventName]
	if not ImmediateEvents[eventName] and (#SequenceEventsStack > 0 or RunnerEvents[eventName] or IsRunning()) then
		-- DebugStartRunnerEvent(eventName,...)
		-- Run(DebugEventStart, eventName, ...)
		for i=1,#handlers do
			-- Run(DebugStartRunnerFunc,"Handler #",i)
			Run(handlers[i], ...)
			-- Run(DebugEndRunnerFunc,"Handler Done")
		end
		-- Run(DebugEventDone, eventName)
	else
		-- DebugEventTriggered(eventName, ...)
		-- DebugEventStart(eventName, ...)
		for i=1,#handlers do
			-- DebugStartRunnerFunc("Handler #",i)
			handlers[i](...)
			-- DebugEndRunnerFunc("Handler Done")
		end
		-- DebugEventDone(eventName)
	end
	QueueSequenceEvents(eventName)
end
app.HandleEvent = HandleEvent
-- Provides a unique function per EventName which can be used in a Callback without interfering with other Callback Events
local CallbackEventFunctions = setmetatable({}, { __index = function(t, eventName)
	local callback = function(eventName)
		HandleEvent(eventName)
	end
	t[eventName] = callback
	return callback
end})
-- Allows performing an Event on the next frame instead of immediately.
-- Also enforces that a single handle of that Event is performed that frame, thus for clarity, parameters are NOT supported
CallbackEvent = function(eventName)
	-- DebugCallbackEvent(eventName)
	Callback(CallbackEventFunctions[eventName], eventName)
end
app.CallbackEvent = CallbackEvent