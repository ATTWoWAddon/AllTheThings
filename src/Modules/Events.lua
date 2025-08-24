do
local app = select(2, ...);
local L = app.L;

-- Global API cache
local C_DateAndTime_GetCurrentCalendarTime, C_DateAndTime_AdjustTimeByDays
	= C_DateAndTime.GetCurrentCalendarTime, C_DateAndTime.AdjustTimeByDays;
local ipairs, tinsert, pairs, time
	= ipairs, tinsert, pairs, time;

-- Event Variables
local ActiveEvents, EventInformation, NextEventSchedule = {}, {}, {};
local UpcomingEventLeeway = 604800;	-- 604800 is a week. 86400 is a day.
local RemappedEventToMapID = {
	[374] = 1429,	-- Elwynn Forest
	[375] = 1412,	-- Mulgore
	[376] = 1952,	-- Terrokar Forest
};
local function GetEventTimeString(d)
	if d then
		if d.weekday then
			return ("%s, %s %02d, %d at %02d:%02d"):format(
				CALENDAR_WEEKDAY_NAMES[d.weekday],
				CALENDAR_FULLDATE_MONTH_NAMES[d.month],
				d.monthDay or d.day, d.year, d.hour, d.minute );
		else
			return ("%s %02d, %d at %02d:%02d"):format(
				CALENDAR_FULLDATE_MONTH_NAMES[d.month],
				d.monthDay or d.day, d.year, d.hour, d.minute );
		end
	end
	return "??";
end

-- Event ID Remapping by Region
local remapping = L.EVENT_REMAPPING;
app.AddEventHandler("OnLoad", function()
	-- Remap the extra Timewalking Dungeon Event to the normal one
	remapping[237] = 239;	-- Timewalking Dungeon Event

	-- Remap Classic Timewalking => US
	remapping[1583] = 1508; -- EU
	remapping[1585] = 1508; -- KO
	remapping[1584] = 1508; -- TW

	-- Remap Outland Timewalking => US
	remapping[622] = 559; -- EU
	remapping[623] = 559; -- KO
	remapping[624] = 559; -- TW

	-- Remap Northrend Timewalking => US
	remapping[616] = 562; -- EU
	remapping[618] = 562; -- KO
	remapping[617] = 562; -- TW

	-- Remap Cataclysm Timewalking => US
	remapping[628] = 587; -- EU
	remapping[629] = 587; -- KO
	remapping[630] = 587; -- TW

	-- Remap MoP Timewalking => US
	remapping[652] = 643; -- EU
	remapping[656] = 643; -- KO
	remapping[654] = 643; -- TW

	-- Remap WoD Timewalking => US
	remapping[1063] = 1056; -- EU
	remapping[1068] = 1056; -- KO
	remapping[1065] = 1056; -- TW

	-- Remap Legion Timewalking => US
	remapping[1265] = 1263; -- EU
	remapping[1269] = 1263; -- KO
	remapping[1267] = 1263; -- TW

	-- Remap BFA Timewalking => US
	remapping[1667] = 1669; -- EU
	remapping[1668] = 1669; -- KO
	remapping[1666] = 1669; -- TW
end);

-- Event Cache
-- Determine if the Calendar is implemented or not.
local isCalendarAvailable = C_Calendar and GetCategoryInfo and GetCategoryInfo(92) ~= "";
local function CreateTimeStamp(t)
	return time({
		year=t.year,
		month=t.month,
		day=t.monthDay,
		hour=t.hour,
		minute=t.minute,
	});
end
local function CreateSchedule(startTime, endTime, t)
	if t then
		t.startTime = startTime;
		t.endTime = endTime;
		t.start = CreateTimeStamp(startTime);
		t["end"] = CreateTimeStamp(endTime);
		return t;
	end
	return {
		["start"] = CreateTimeStamp(startTime),
		["end"] = CreateTimeStamp(endTime),
		["startTime"] = startTime,
		["endTime"] = endTime,
	};
end
local SessionEventCache;
local CacheVersion = 20250703;
local function GetEventCache()
	-- app.PrintDebug("GetEventCache")
	local now = CreateTimeStamp(C_DateAndTime_GetCurrentCalendarTime());
	local cache = SessionEventCache or AllTheThingsSavedVariables.EventCache;
	if cache and (cache.lease or 0) > now and (cache.version and cache.version >= CacheVersion) then
		-- If our cache is still leased, then simply return it.
		-- app.PrintDebug("GetEventCache.lease")
		SessionEventCache = cache;
		return cache;
	end

	-- Create a new cache with a week long lease.
	cache = {
		lease = now + 604800,
		version = CacheVersion
	};
	if isCalendarAvailable then
		local C_Calendar_SetAbsMonth, C_Calendar_SetMonth, C_Calendar_GetDayEvent, C_Calendar_GetMonthInfo, C_Calendar_GetNumDayEvents
			= C_Calendar.SetAbsMonth, C_Calendar.SetMonth, C_Calendar.GetDayEvent, C_Calendar.GetMonthInfo, C_Calendar.GetNumDayEvents;

		-- Go back 18 months and then forward to the next year
		local date = C_DateAndTime_GetCurrentCalendarTime();
		C_Calendar_SetAbsMonth(date.month, date.year);
		C_Calendar_SetMonth(-18);

		local anyEvents = false;
		for offset=-18,12,1 do
			local monthInfo = C_Calendar_GetMonthInfo(0);
			for day=1,monthInfo.numDays,1 do
				local numEvents = C_Calendar_GetNumDayEvents(0, day);
				if numEvents > 0 then
					for index=1,numEvents,1 do
						local event = C_Calendar_GetDayEvent(0, day, index);
						if event then -- If this is nil, then attempting to index it on the same line will toss an error.
							if event.calendarType == "HOLIDAY" and (not event.sequenceType or event.sequenceType == "" or event.sequenceType == "START") then
								local eventID = event.eventID;
								local t = cache[eventID];
								if not t then
									t = {
										["name"] = event.title,
										["icon"] = event.iconTexture,
										["times"] = {},
									};
									cache[eventID] = t;
									anyEvents = true;
								end
								tinsert(t.times, CreateSchedule(event.startTime, event.endTime));

								local remappedID = remapping[eventID];
								if remappedID and remappedID ~= eventID then
									t = cache[remappedID];
									if not t then
										t = {
											["name"] = event.title,
											["icon"] = event.iconTexture,
											["times"] = {},
										};
										cache[remappedID] = t;
										anyEvents = true;
									end
									local schedule = CreateSchedule(event.startTime, event.endTime);
									schedule.remappedID = eventID;
									tinsert(t.times, schedule);

									local finalID = remapping[remappedID];
									if finalID then
										local t = cache[finalID];
										if not t then
											t = {
												["name"] = event.title,
												["icon"] = event.iconTexture,
												["times"] = {},
											};
											cache[finalID] = t;
											anyEvents = true;
										end
										tinsert(t.times, CreateSchedule(event.startTime, event.endTime));
									end
								end
							end
						end
					end
				end
			end
			C_Calendar_SetMonth(1);
		end

		-- Reset Calendar back to last date.
		C_Calendar_SetAbsMonth(date.month, date.year);

		-- If there were any events, let's wipe the active cache tables.
		if anyEvents then
			wipe(NextEventSchedule);
			wipe(ActiveEvents);
		else
			-- If there weren't any events, let's set a short lease.
			cache.lease = now + 5;	-- Wait 5 seconds
		end
	end

	-- Save the cache to SavedVariables.
	-- app.PrintDebug("GetEventCache.cached")
	AllTheThingsSavedVariables.EventCache = cache;
	SessionEventCache = cache;
	return cache;
end

-- add a simple chat command to reset the calendar cache
app.ChatCommands.Add("calendar-cache", function(args)
	local cache = GetEventCache()
	cache.lease = 0
	GetEventCache()
	app.print("Re-cached Calendar data!")
	end, {
		"Usage : /att calendar-cache",
		"Provides a quick way to reset ATT's cache of the user's calendar data for determining in-game event schedules and visibility",
	})

-- Event Helpers
local CustomEventHelpers = {
	[239] = { 559,562,587,643,1056,1263 },	-- EVENTS.TIMEWALKING
	[133701] = { 1395, 1400, 1407, 1429, 1430, 1431 },	-- EVENTS.DRAGONRIDING_CUP
};
local SortByStart = function(a, b)
	return a.start < b.start;
end;
setmetatable(EventInformation, { __index = function(t, id)
	-- app.PrintDebug("EventInformation.__index",id)
	local info = (SessionEventCache or GetEventCache())[id];
	if info and info.times then
		t[id] = info;
		return info;
	else
		local customEvent = CustomEventHelpers[id];
		if customEvent then
			local times = {};
			for i,eventID in ipairs(customEvent) do
				local subinfo = EventInformation[eventID];
				if subinfo and subinfo.times then
					for j,schedule in ipairs(subinfo.times) do
						schedule.subEventID = eventID;
						tinsert(times, schedule);
					end
				end
			end
			if #times > 0 then
				app.Sort(times, SortByStart);
				info = { name = times[1].name, icon = times[1].icon, times = times };
				t[id] = info;
				return info;
			end
		end
	end
	return app.EmptyTable;
end });
setmetatable(NextEventSchedule, { __index = function(t, id)
	-- app.PrintDebug("NextEventSchedule.__index",id)
	local info = EventInformation[id];
	if info then
		local times = info.times;
		if times and #times > 0 then
			local now = CreateTimeStamp(C_DateAndTime_GetCurrentCalendarTime());
			local schedule;
			for i,data in ipairs(times) do
				schedule = data;
				if now < data["end"] then
					-- If the event is within the leeway, mark it active
					if now > (data["start"] - UpcomingEventLeeway) then
						ActiveEvents[id] = true;
					end
					break;
				end
			end
			t[id] = schedule;
			return schedule;
		elseif id == 161 then -- EVENTS.KALUAK_FISHING_DERBY
			local startTime = C_DateAndTime_GetCurrentCalendarTime();
			local weekDay = date("*t").wday;
			if weekDay < 7 then
				startTime = C_DateAndTime_AdjustTimeByDays(startTime, 7 - weekDay);
			end
			local schedule = CreateSchedule({
				year=startTime.year,
				month=startTime.month,
				monthDay=startTime.monthDay,
				day=0,
				weekday=7,
				hour=14,
				minute=0,
				second=0,
			},
			{
				year=startTime.year,
				month=startTime.month,
				monthDay=startTime.monthDay,
				day=0,
				weekday=7,
				hour=15,
				minute=0,
				second=0,
			});
			t[id] = schedule;
			return schedule;
		elseif id == 6 then -- EVENTS.STRANGLETHORN_FISHING_EXTRAVAGANZA
			local startTime = C_DateAndTime_GetCurrentCalendarTime();
			local weekDay = date("*t").wday;
			if weekDay > 1 then
				startTime = C_DateAndTime_AdjustTimeByDays(startTime, 8 - weekDay);
			end
			local schedule = CreateSchedule({
				year=startTime.year,
				month=startTime.month,
				monthDay=startTime.monthDay,
				day=0,
				weekday=1,
				hour=14,
				minute=0,
				second=0,
			},
			{
				year=startTime.year,
				month=startTime.month,
				monthDay=startTime.monthDay,
				day=0,
				weekday=1,
				hour=16,
				minute=0,
				second=0,
			});
			t[id] = schedule;
			return schedule;
		end
	end
	t[id] = false;
end });
setmetatable(ActiveEvents, { __index = function(t, id)
	-- app.PrintDebug("ActiveEvents.__index",id)
	local nextEvent = NextEventSchedule[id];
	if nextEvent then
		local eventStart, eventEnd = nextEvent["start"], nextEvent["end"];
		if eventStart and eventEnd then
			-- If the event is within the leeway, mark it active
			local now = CreateTimeStamp(C_DateAndTime_GetCurrentCalendarTime());
			if now < eventEnd and now > (eventStart - UpcomingEventLeeway) then
				-- app.PrintDebug("ActiveEvents.__index",id,true)
				t[id] = true;
				return true;
			end
		end
	end
	t[id] = false;
	return false;
end });

-- Event Functions & Filters
local function FilterIsEventActive(group)
	local e = group.e;
	if e and not ActiveEvents[e] then
		return false;
	else
		return true;
	end
end
local function GetEventName(e)
	local info = EventInformation[e];
	if info then
		local name = info.name;
		if not name then
			name = "Event #" .. e;
			for id,eventID in pairs(L.HEADER_EVENTS) do
				if e == eventID then
					name = L.HEADER_NAMES[id];
					break;
				end
			end
			info.name = name;
		end
		return name;
	end
	return "Event #" .. e;
end

-- Timerunning Seasons
local GetTimerunningSeason;
local PlayerGetTimerunningSeasonID = PlayerGetTimerunningSeasonID;
-- Don't add the Timerunning Filter if there's no Season active!
local IsTimerunningActive = false
if PlayerGetTimerunningSeasonID and IsTimerunningActive then
	-- Timerunning API is available.
	local timerunningSeasons = L.EVENT_TIMERUNNING_SEASONS;
	GetTimerunningSeason = function()
		local seasonID = PlayerGetTimerunningSeasonID();
		if seasonID then return timerunningSeasons[seasonID]; end
	end
	local TimerunningSeasonEventID
	local GetRelativeRawWithField = app.GetRelativeRawWithField
	local ThingKeys
	local function OnlyTimerunning(group)
		-- app.PrintDebug("F:TR",group.e,TimerunningSeasonEventID,group.__type,ThingKeys[group.key],group.e == TimerunningSeasonEventID)
		if not ThingKeys[group.key] then return true end
		return GetRelativeRawWithField(group, "e") == TimerunningSeasonEventID
	end
	local function NotMoPRemixTimerunning(group)
		-- app.PrintDebug("F:~TR",group.e,TimerunningSeasonEventID,group.__type,ThingKeys[group.key],not group.e or group.e ~= 437)
		if not ThingKeys[group.key] then return true end
		local e = GetRelativeRawWithField(group, "e")
		-- TODO: revise with Legion Remix since we will need new eventID excluded
		return not e or e ~= 437
	end

	-- Add a Timerunning Filter that can be used for Live/Timerunning characters
	-- The use of the respective filter would be enabled based on the setting
	app.AddEventHandler("OnStartup", function()
		ThingKeys = app.ThingKeys
		local DefineFilter = app.Modules.Filter.DefineToggleFilter
		TimerunningSeasonEventID = GetTimerunningSeason()
		if TimerunningSeasonEventID then
			-- app.PrintDebug("Added OnlyTimerunning filter")
			DefineFilter("Timerunning", "A", OnlyTimerunning)
		else
			-- app.PrintDebug("Added NotMoPRemixTimerunning filter")
			DefineFilter("Timerunning", "A", NotMoPRemixTimerunning)
		end
	end)
else
	-- Timerunning API is not available.
	GetTimerunningSeason = app.EmptyFunction;
	-- Make sure the Feature Setting is disabled
	app.AddEventHandler("OnStartup", function()
		-- No Timerunning Active, don't be set
		app.Settings:SetTooltipSetting("Filter:MiniList:Timerunning", false)
	end)
end

-- Event API Implementation
-- Access via AllTheThings.Modules.Events
local events = {IsTimerunningActive=IsTimerunningActive};
app.Modules.Events = events;
events.CreateSchedule = CreateSchedule;
events.FilterIsEventActive = FilterIsEventActive;
events.GetEventActive = function(eventID)
	return ActiveEvents[eventID];
end;
events.GetEventCache = GetEventCache;	-- This should be executed before GetDataCache, or at the start of GetDataCache.
events.GetEventName = GetEventName;
events.GetEventInformation = function(eventID)
	return EventInformation[eventID];
end;
events.SetEventInformation = function(eventID, info)
	EventInformation[eventID] = info.times and info or { times = info };
end;
events.GetEventNextSchedule = function(eventID)
	return NextEventSchedule[eventID];
end;
events.SetEventNextSchedule = function(eventID, nextEvent)
	NextEventSchedule[eventID] = nextEvent;
end;
events.GetEventTimeString = GetEventTimeString;
events.GetTimerunningSeason = GetTimerunningSeason;
events.GetUpcomingEventLeeway = function()
	return UpcomingEventLeeway;
end;
events.SetUpcomingEventLeeway = function(leeway)
	UpcomingEventLeeway = leeway;
	wipe(ActiveEvents);
end;

-- Event Fields (Designed to be used with headers!)
local texcoordForEvents = { 0.0, 0.7109375, 0.0, 0.7109375 };
local fields = {};
fields.name = function(t)
	return L.HEADER_NAMES[t.headerID] or t.eventInfo.name;
end;
fields.icon = function(t)
	return L.HEADER_ICONS[t.headerID] or t.eventInfo.icon;
end;
fields.texcoord = function(t)
	if t.icon == t.eventInfo.icon then
		return texcoordForEvents;
	end
end;
fields.eventID = function(t)
	local eventID = L.HEADER_EVENTS[t.headerID];
	if eventID then
		t.eventID = eventID;
		return eventID;
	end
end;
fields.eventInfo = function(t)
	return EventInformation[t.eventID];
end;
fields.nextEvent = function(t)
	return NextEventSchedule[t.eventID];
end;
fields.ShouldShowEventSchedule = app.ReturnTrue;
events.Fields = fields;

-- Information Type hook for Events
app.AddEventHandler("OnLoad", function()
	app.Settings.CreateInformationType("nextEvent", {
		priority = 2.3,
		text = L.EVENT_SCHEDULE,
		Process = function(t, reference, tooltipInfo)
			if reference.ShouldShowEventSchedule then
				local e = reference.eventID or reference.e;
				if e then
					local nextEvent = NextEventSchedule[e];
					if nextEvent then
						if nextEvent.remappedID then
							local mapID = RemappedEventToMapID[nextEvent.remappedID];
							if mapID then
								tinsert(tooltipInfo, {
									left = L.EVENT_WHERE,
									right = app.GetMapName(mapID),
									color = app.Colors.TooltipDescription,
								});
							end
						end
						if nextEvent.endTime then
							tinsert(tooltipInfo, {
								left = L.EVENT_START,
								right = GetEventTimeString(nextEvent.startTime),
								color = app.Colors.TooltipDescription,
							});
							tinsert(tooltipInfo, {
								left = L.EVENT_END,
								right = GetEventTimeString(nextEvent.endTime),
								color = app.Colors.TooltipDescription,
							});
						else
							tinsert(tooltipInfo, {
								left = L.EVENT_ACTIVE,
								right = GetEventTimeString(nextEvent.startTime),
								color = app.Colors.TooltipDescription,
							});
						end
					end
				end
			end
		end,
	});
	app.Settings.CreateInformationType("requireEvent", {
		priority = 2.7,
		text = L.REQUIRES_EVENT,
		Process = function(t, reference, tooltipInfo)
			local e = reference.e;
			if e then
				tinsert(tooltipInfo, {
					left = t.text,
					right = GetEventName(e),
					color = "FF00FFDE",
				});
			end
		end,
	});
end);
end