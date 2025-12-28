-- Filter Module
local _, app = ...;

-- Dependencies
-- FactionData, Table
-- Event

-- Concepts:
-- Encapsulates the functionality for all filtering logic which is used to check if a given Object meets the applicable filters via User Settings

-- Global locals
local select, pairs, type, rawget, wipe,math_floor
	= select, pairs, type, rawget, wipe,math.floor

-- WoW API Cache
local GetFactionCurrentReputation = app.WOWAPI.GetFactionCurrentReputation;

-- App locals
local containsAny = app.containsAny;
local ALLIANCE_ONLY, HORDE_ONLY = unpack(app.Modules.FactionData.FACTION_RACES);
local GetRelativeValue = app.GetRelativeValue;

-- Module locals
local ActiveCustomCollects, FactionID, SettingsUnobtainable;
local SettingsFilterIDs = {};

-- Filter API Implementation
-- Access via AllTheThings.Modules.Filter
local api = {};
app.Modules.Filter = api;

-- Meaning "Don't display." - Returns false
local function Filter() end;
-- Meaning "Display as expected" - Returns true
local function NoFilter() return true; end;

local LateSetFilters = {};
local function SetOnMissingFilter(t,name)
	-- app.PrintDebug("No Filter on Set",name)
	local function LateSetFunc(active)
		-- app.PrintDebug("LateSet Filter",name,active)
		LateSetFilters[name] = active;
	end
	return LateSetFunc
end
--- api.Set[FilterName]([true]) or api.Set.FilterName([true])
-- Function that allows defining whether that specific Filter will be applied
-- Need metatable since this can be accessed prior to Module-based Filters being defined (i.e. immediate Settings Update)
api.Set = setmetatable({}, { __index = SetOnMissingFilter})

--- api.Get[FilterName]() or api.Get.FilterName()
-- Function that allows checking whether that specific Filter will be applied
-- Need metatable since this can be accessed prior to Module-based Filters being defined (i.e. immediate Settings Update)
api.Get = setmetatable({}, { __index = function(t,key) return Filter end})

-- api.SettingsFilters.FilterFunction
-- Allows accessing the direct SettingsFilter functions which are sometimes required explicitly
api.SettingsFilters = {}

-- api.Filters.FilterFunction
-- Allows accessing the direct Filter functions which are sometimes required explicitly
api.Filters = {}

local AccountFilters, CharacterFilters, RawCharacterFilters = {}, {}, {}

-- Helper function to encapsulate simple logic for a 'toggle' filter
local function DefineToggleFilter(name, filterGroup, filter)
	-- Filters capture
	-- app.PrintDebug("DefineFilter",name,filter)
	api.Filters[name] = filter;
	-- Set implementation
	api.Set[name] = function(active)
		-- app.PrintDebug("FILTER",name,"->",active)
		filterGroup[name] = active and api.Filters[name] or nil;
	end
	-- Get implementation
	api.Get[name] = function()
		return filterGroup[name] == api.Filters[name];
	end

	-- Filter Defined after being requested to be Set, so set it immediately
	if LateSetFilters[name] then
		LateSetFilters[name] = nil;
		-- app.PrintDebug("Late Set Filter",name)
		filterGroup[name] = filter;
	end

	-- Keep track of all raw CharacterFilters
	if filterGroup == CharacterFilters then
		RawCharacterFilters[name] = filter;
	end
end
api.DefineToggleFilter = function(name, filterScope, filter)
	DefineToggleFilter(name, filterScope == "A" and AccountFilters or CharacterFilters, filter)
end

-- Whether the group has a binding designation, which means it basically cannot be moved to another Character
local function FilterBind(group)
	-- 1 = BoP, 4 = Quest Item... probably don't need that?
	return group.b == 1;-- or group.b == 4;
end
api.Filters.Bind = FilterBind;
local function FilterInGame(item)
	local u = item.u
	return not u or u > 2
end
api.Filters.InGame = FilterInGame;
-- manually track InGame in CurrentCharacterFilters
RawCharacterFilters.InGame = api.Filters.InGame

-- Unobtainable
DefineToggleFilter("Unobtainable", AccountFilters,
function(item)
	local u = item.u
	return not u or SettingsUnobtainable[u];
end);

-- PvP
DefineToggleFilter("PvP", AccountFilters,
function(item)
	return not item.pvp or false
end);

-- Challenge Master
DefineToggleFilter("ChallengeMaster", AccountFilters,
function(item)
	return not item.cm or false
end);

-- PetBattles
DefineToggleFilter("PetBattles", AccountFilters,
function(item)
	return not item.pb or false
end);

-- Skyriding
DefineToggleFilter("Skyriding", AccountFilters,
function(item)
	return not item.sr or false
end);

-- UnavailablePersonalLoot
DefineToggleFilter("UnavailablePersonalLoot", AccountFilters,
function(item)

	if not item.sourceID then
		return true
	end

	local sp = item.sourceParent
	if not sp
	or not sp.questID
	or not sp.key == "questID" then
		return true;
	end

	local specs = item.specs
	return specs and #specs > 0;
end);

-- MinReputation
local ExclusiveFactions = {
	[70]=1,		-- Syndicate
	[932]=1,	-- The Aldor
	[934]=1,	-- The Scryers
	[1104]=1,	-- Frenzyheart Tribe
	[1105]=1,	-- The Oracles
};
DefineToggleFilter("MinReputation", CharacterFilters,
function(item)
	local minReputation = item.minReputation;
	if minReputation then
		if ExclusiveFactions[minReputation[1]] then
			if minReputation[2] > GetFactionCurrentReputation(minReputation[1]) then
				return false;
			else
				return true;
			end
		else
			return true;
		end
	else
		return true;
	end
end);

-- MaxReputation (TODO)
-- DefineToggleFilter("MaxReputation", CharacterFilters,
-- function(item)
-- 	local maxReputation = item.maxReputation;
-- 	if maxReputation then
-- 		if maxReputation[2] > GetFactionCurrentReputation(maxReputation[1]) then
-- 			return false;
-- 		else
-- 			return true;
-- 		end
-- 	else
-- 		return true;
-- 	end
-- end);

-- Event
-- Filters defined in other Modules... maybe link them dynamically somehow instead
DefineToggleFilter("Event", AccountFilters, app.Modules.Events.FilterIsEventActive);

-- ItemUnbound
local SettingsFilterItemUnbound;
-- Whether this is a Character-transferable Thing/Item
local function ItemUnbound(item)	-- FilterItemBind
	return item.itemID and item.b ~= 1;
end
api.Filters.ItemUnbound = ItemUnbound
api.Set.ItemUnbound = function(active, nested)
	if active then
		SettingsFilterItemUnbound = api.Filters.ItemUnbound;
	elseif nested then
		SettingsFilterItemUnbound = NoFilter;
	else
		SettingsFilterItemUnbound = Filter;
	end
end
api.Get.ItemUnbound = function() return SettingsFilterItemUnbound == api.Filters.ItemUnbound end

-- FilterID
do
local FilterFilterID_IgnoredTypes = {}
app.AddEventHandler("OnRecalculate_NewSettings", function()
	FilterFilterID_IgnoredTypes.Heirloom = app.Settings.Collectibles.Heirlooms
	FilterFilterID_IgnoredTypes.HeirloomAndAppearance = app.Settings.Collectibles.Heirlooms
end)
DefineToggleFilter("FilterID", CharacterFilters,
function(item)
	local f = item.f;
	if f then
		-- Filter applied via Settings (character-equippable or manually set)
		if SettingsFilterIDs[f] then
			return true;
		end
		-- don't filter Types by their FilterID in some cases
		if FilterFilterID_IgnoredTypes[item.__type or 0] then
			return true;
		end
	else
		return true;
	end
end)
end

-- Bound
DefineToggleFilter("Bound", CharacterFilters,
function(item)
	return not item.itemID or item.b == 1;
end);
-- binding really doesn't matter as to whether current character can filter to it
RawCharacterFilters.Bound = nil

-- RequireSkill
local Professions, ActiveSkills
DefineToggleFilter("RequireSkill", CharacterFilters,
app.IsRetail and function(item)
	local requireSkill = item.requireSkill;
	if requireSkill and (not item.professionID or not GetRelativeValue(item, "DontEnforceSkillRequirements") or FilterBind(item)) then
		return Professions[requireSkill];
	else
		return true;
	end
end or function(item)
	local requireSkill = item.requireSkill;
	if requireSkill and (not item.professionID or not GetRelativeValue(item, "DontEnforceSkillRequirements") or FilterBind(item)) then
		requireSkill = app.SkillDB.SkillToSpell[requireSkill];
		return requireSkill and ActiveSkills[requireSkill];
	else
		return true;
	end
end);
app.AddEventHandler("OnStartup", function()
	Professions = app.CurrentCharacter.Professions
	ActiveSkills = app.CurrentCharacter.ActiveSkills
end)

-- Class
DefineToggleFilter("Class", CharacterFilters,
function(item)
	return not item.nmc;
end);

-- Race
local SettingsFilterRace_CurrentFaction;
-- Whether this is for the current 'race'
local function FilterRace(item)
	return not item.nmr;
end
api.Filters.Race = FilterRace
local function FilterRace_Horde(item)
	local races = item.races;
	return races and containsAny(races, HORDE_ONLY);
end
api.Filters.Race_Horde = FilterRace_Horde
local function FilterRace_Alliance(item)
	local races = item.races;
	return races and containsAny(races, ALLIANCE_ONLY);
end
api.Filters.Race_Alliance = FilterRace_Alliance
local function FilterRace_CurrentFaction(item)
	if item.nmr then
		local r = item.r;
		if r then
			if r == FactionID then
				return true;
			else
				return;
			end
		end
		return SettingsFilterRace_CurrentFaction(item);
	else
		return true;
	end
end
api.Filters.Race_CurrentFaction = FilterRace_CurrentFaction
api.Set.Race = function(active, factionOnly)
	if active then
		if factionOnly then
			CharacterFilters.Race = api.Filters.Race_CurrentFaction;
		else
			CharacterFilters.Race = api.Filters.Race;
		end
	else
		CharacterFilters.Race = nil;
	end
end
-- manually track Race in CurrentCharacterFilters
RawCharacterFilters.Race = api.Filters.Race;

-- CustomCollect
DefineToggleFilter("CustomCollect", CharacterFilters,
function(item)
	local customCollect = item.customCollect;
	if customCollect then
		for i=1,#customCollect do
			if not ActiveCustomCollects[customCollect[i]] then return end
		end
	end
	return true;
end);

-- Level
DefineToggleFilter("Level", CharacterFilters,
function(item)
	-- after 9.0, transition to a req lvl range, either min, or min + max
	local lvl = item.lvl;
	if lvl then
		local minlvl;
		local maxlvl;
		if type(lvl) == "table" then
			minlvl = lvl[1];
			maxlvl = lvl[2];
		else
			minlvl = lvl;
		end

		if maxlvl then
			-- min and max provided
			return app.Level >= minlvl and app.Level <= maxlvl;
		elseif minlvl then
			-- only min provided
			return app.Level >= minlvl;
		end
	end
	-- no level requirement on the group, have to include it
	return true;
end);
-- we actually don't "really" care to have level filter in the RawCharacterFilters... just causes more inaccurate quest reports since level req on every expac changes all the time
RawCharacterFilters.Level = nil;

-- SkillLevel (Classic only)
if app.IsClassic then
app.MaximumSkillLevel = 99999;
DefineToggleFilter("SkillLevel", CharacterFilters,
function(group)
	if group.learnedAt then
		return app.MaximumSkillLevel >= group.learnedAt;
	end
	-- no skill level requirement on the group, have to include it
	return true;
end);
-- SkillLevel doesn't really exclude a character from seeing a given Thing
RawCharacterFilters.SkillLevel = nil;
end

-- Trackable
-- Whether this group can be 'tracked'
local function FilterTrackable(group)
	return group.trackable;
end
api.Filters.Trackable = FilterTrackable
api.Set.Trackable = function(active)
	app.ShowTrackableThings = active and api.Filters.Trackable or Filter;
end

-- Expansion Filters (Retail Only)
if app.IsRetail then
	-- Cache for expansion filter settings (indexed by expansion ID for fast lookup)
	local ExpansionFilters = {}

	DefineToggleFilter("ExpansionContent", AccountFilters,
	function(item)
		-- Check if item has awp (added with patch) field
		local awp = GetRelativeValue(item, "awp")
		if awp then
			-- awp field uses patch format like 10205 for patch 1.2.5
			-- Extract expansion ID from patch value (e.g., 10205 -> 1)
			local expansionID = math_floor(awp / 10000)
			-- Direct lookup: if ExpansionFilters[expansionID] is false, filter it out
			return ExpansionFilters[expansionID]
		end

		return true
	end)

	-- Update expansion filter cache when settings change
	app.AddEventHandler("OnRecalculate_NewSettings", function()
		-- Build cache indexed by expansion ID (1-11) for O(1) lookup
		ExpansionFilters[1] = app.Settings:Get("ExpansionFilter:Classic")
		ExpansionFilters[2] = app.Settings:Get("ExpansionFilter:TBC")
		ExpansionFilters[3] = app.Settings:Get("ExpansionFilter:Wrath")
		ExpansionFilters[4] = app.Settings:Get("ExpansionFilter:Cata")
		ExpansionFilters[5] = app.Settings:Get("ExpansionFilter:MoP")
		ExpansionFilters[6] = app.Settings:Get("ExpansionFilter:WoD")
		ExpansionFilters[7] = app.Settings:Get("ExpansionFilter:Legion")
		ExpansionFilters[8] = app.Settings:Get("ExpansionFilter:BfA")
		ExpansionFilters[9] = app.Settings:Get("ExpansionFilter:SL")
		ExpansionFilters[10] = app.Settings:Get("ExpansionFilter:DF")
		ExpansionFilters[11] = app.Settings:Get("ExpansionFilter:TWW")

		-- Enable the filter if any expansion is disabled
		local anyDisabled = false
		for i = 1, 11 do
			if ExpansionFilters[i] == false then
				anyDisabled = true
				break
			end
		end
		api.Set.ExpansionContent(anyDisabled)
	end)
end

-- Visible
local function FilterVisible(group)
	return group.visible;
end
api.Filters.Visible = FilterVisible
api.Set.Visible = function(active)
	app.VisibilityFilter = active and api.Filters.Visible or NoFilter;
end
api.Get.Visible = function() return app.VisibilityFilter == api.Filters.Visible end

-- Completion
-- Whether the group is not 'complete'
local function FilterCompletion(group)
	local total = group.total;
	return total and (group.progress or 0) < total;
end

-- Filter Combinations
local function PrintExclusionCause(name, o)
	app.PrintDebug("F-EX",name,o.hash,o.link or o.name)
end
local function ApplySettingsFilters(o, filters)
	for name,filter in pairs(filters) do
		-- if not filter(o) then PrintExclusionCause(name, o) return end
		if not filter(o) then return end
	end
	return true;
end

-- Represents filters which should be applied during Updates to groups
local function SettingsFilters(item)
	if ApplySettingsFilters(item, AccountFilters) then
		-- BoE can skip Character trait filters
		if SettingsFilterItemUnbound(item) then return true; end
		return ApplySettingsFilters(item, CharacterFilters)
	end
end
local function SettingsFilters_Account(item)
	return ApplySettingsFilters(item, AccountFilters)
end
local function SettingsExtraFilters(item, extraFilters)
	if SettingsFilters(item) then
		if extraFilters then
			local filter
			for name,_ in pairs(extraFilters) do
				filter = api.Filters[name]
				if filter then
					-- if not filter(item) then PrintExclusionCause(name, item) return end
					if not filter(item) then return end
				end
			end
		end
		return true;
	end
end
-- Represents filters which should be applied during Updates to groups, but skips the BoE filter
local function SettingsFilters_IgnoreBoEFilter(item)
	if ApplySettingsFilters(item, AccountFilters) then
		return ApplySettingsFilters(item, CharacterFilters)
	end
end
api.SettingsFilters.IgnoreBoEFilter = SettingsFilters_IgnoreBoEFilter
local function CurrentCharacterFilters(o)
	for name,filter in pairs(RawCharacterFilters) do
		-- if not filter(o) then PrintExclusionCause(name, o) return end
		if not filter(o) then return end
	end
	return true;
end
app.CurrentCharacterFilters = CurrentCharacterFilters

-- TODO: adjust these function names
-- Used as the general Group filter during updates
api.Filters.Group = SettingsFilters
api.Get.Group = function()
	return app.GroupFilter == SettingsFilters;
end
api.Set.Group = function(active)
	app.GroupFilter = active and SettingsFilters or NoFilter;
	app.GroupExtraFilter = active and SettingsExtraFilters or NoFilter;
end
-- Used to show completed Groups
api.Filters.CompletedGroups = FilterCompletion
api.Get.CompletedGroups = function()
	return app.GroupVisibilityFilter == FilterCompletion;
end
api.Set.CompletedGroups = function(active)
	app.GroupVisibilityFilter = active and FilterCompletion or NoFilter;
end
-- Used to show completed Things
api.Set.CompletedThings = function(active)
	app.CollectedItemVisibilityFilter = active and Filter or NoFilter;
end
-- Used as the fallback filter applied to Groups in Debug mode
api.Set.DefaultGroup = function(active)
	app.DefaultGroupFilter = active and Filter or NoFilter;
end
-- Used as the fallback filter applied to Things in Debug mode
api.Set.DefaultThing = function(active)
	app.DefaultThingFilter = active and Filter or NoFilter;
end

-- Recursive Filters
-- Recursively check outwards to find if any parent group restricts the filter for the current settings
local function RecursiveGroupRequirementsFilter(group)
	local Filter = app.GroupFilter;
	while group do
		if not Filter(group) then return; end
		group = group.sourceParent or group.parent;
	end
	return true;
end
app.RecursiveGroupRequirementsFilter = RecursiveGroupRequirementsFilter;
api.Filters.RecursiveGroupRequirementsFilter = RecursiveGroupRequirementsFilter
-- Recursively check outwards to find if any parent group restricts the filter for only Account-based settings
local function RecursiveGroupRequirementsFilter_Account(group)
	local Filter = SettingsFilters_Account
	while group do
		if not Filter(group) then return; end
		group = group.sourceParent or group.parent;
	end
	return true;
end
api.Filters.RecursiveGroupRequirementsFilter_Account = RecursiveGroupRequirementsFilter_Account
-- Recursively check outwards to find if any parent group restricts the filter for the current settings with Extra Filters
local function RecursiveGroupRequirementsExtraFilter(group, extraFilters)
	local Filter = app.GroupExtraFilter;
	while group do
		if not Filter(group, extraFilters) then return; end
		group = group.sourceParent or group.parent;
	end
	return true;
end
app.RecursiveGroupRequirementsExtraFilter = RecursiveGroupRequirementsExtraFilter;
api.Filters.RecursiveGroupRequirementsExtraFilter = RecursiveGroupRequirementsExtraFilter
-- Recursively check outwards within the direct parent chain only to find if any parent group restricts the filter for this character
local function RecursiveDirectGroupRequirementsFilter(group)
	local Filter = app.GroupFilter;
	while group do
		if not Filter(group) then return; end
		group = group.parent;
	end
	return true;
end
app.RecursiveDirectGroupRequirementsFilter = RecursiveDirectGroupRequirementsFilter;
api.Filters.RecursiveDirectGroupRequirementsFilter = RecursiveDirectGroupRequirementsFilter
local function RecursiveUnobtainableFilter(group)
	local Unobtainable, Event = AccountFilters.Unobtainable or NoFilter, AccountFilters.Event or NoFilter
	while group do
		---@diagnostic disable-next-line: redundant-parameter
		if not (Unobtainable(group) and Event(group)) then return; end
		group = group.parent;
	end
	return true;
end
app.RecursiveUnobtainableFilter = RecursiveUnobtainableFilter;
api.Filters.RecursiveUnobtainableFilter = RecursiveUnobtainableFilter
-- Recursively check outwards to find if any parent group restricts the filter for the current character (regardless of settings)
local function RecursiveCharacterRequirementsFilter(group)
	while group do
		if not CurrentCharacterFilters(group) then return; end
		group = group.sourceParent or group.parent;
	end
	return true;
end
app.RecursiveCharacterRequirementsFilter = RecursiveCharacterRequirementsFilter;
api.Filters.RecursiveCharacterRequirementsFilter = RecursiveCharacterRequirementsFilter
local function RecursiveDefaultCharacterRequirementsFilter(group)
	local defaultClassFilter, defaultRaceFilter = api.Filters.Class, api.Filters.Race;
	while group do
		if not (defaultClassFilter(group) and defaultRaceFilter(group)) then return; end
		group = group.sourceParent or group.parent;
	end
	return true;
end
app.RecursiveDefaultCharacterRequirementsFilter = RecursiveDefaultCharacterRequirementsFilter;
api.Filters.RecursiveDefaultCharacterRequirementsFilter = RecursiveDefaultCharacterRequirementsFilter
local function RecursiveFilter(group, filterName)
	local filter = api.Filters[filterName]
	while group do
		if not filter(group) then return; end
		group = group.sourceParent or group.parent;
	end
	return true;
end
app.RecursiveFilter = RecursiveFilter;

-- Caching Helpers
local function CacheSettingsData()
	SettingsUnobtainable = app.Settings:GetRawSettings("Unobtainable");
	wipe(SettingsFilterIDs)
	local rawFilters = app.Settings:GetRawFilters();
	for k,v in pairs(rawFilters) do
		-- app.PrintDebug("f:user",k,v)
		SettingsFilterIDs[k] = v;
	end
	-- settings uses a meta-table to default filters... let's push those up for our local use
	for k,v in pairs(getmetatable(rawFilters).__index) do
		if SettingsFilterIDs[k] == nil then
			-- app.PrintDebug("f:default",k,v)
			SettingsFilterIDs[k] = v;
		end
	end
	-- app.PrintDebug("SettingsFilterIDs",#SettingsFilterIDs)
end

app.AddEventHandler("OnLoad", function()
	FactionID = app.FactionID;
	if FactionID == Enum.FlightPathFaction.Horde then
		SettingsFilterRace_CurrentFaction = api.Filters.Race_Horde;
	else
		SettingsFilterRace_CurrentFaction = api.Filters.Race_Alliance;
	end
end)
app.AddEventHandler("OnStartup", function()
	-- this table is set once in ATT, but contents are volatile
	ActiveCustomCollects = app.ActiveCustomCollects;
	CacheSettingsData();
end)
-- Cache filter-related content from Settings here instead of checking in every function call
app.AddEventHandler("OnRecalculate_NewSettings", CacheSettingsData)

-- Maybe need something like this eventually? This hasn't been tested or utilized much
-- local PreviousFilters = {}
-- -- Returns the set of Filter names which are currently enabled
-- api.GetFilterSet = function(filters)
-- 	local Get = api.Get
-- 	wipe(PreviousFilters)
-- 	for name,_ in pairs(api.Filters) do
-- 		PreviousFilters[name] = Get[name]() or nil
-- 	end
-- 	app.PrintDebug("ALL FILTERS GET")
-- 	return PreviousFilters
-- end
-- -- Expects being provided with a table of Filter names for which Filters should be activated
-- -- If nothing is provided, then the previous filters are re-enabled
-- -- Ideally used for allowing a swap of filters for processing a specific ATT window
-- api.SwapFilterSet = function(filters)
-- 	if not filters and not PreviousFilters then return end
-- 	local Get = api.Get
-- 	local Set = api.Set
-- 	if PreviousFilters then
-- 		for name,_ in pairs(api.Filters) do
-- 			Set[name]()
-- 		end
-- 		app.PrintDebug("ALL FILTERS OFF")
-- 		for _,name in pairs(PreviousFilters) do
-- 			app.PrintDebug("PREV FILTER ON:",name)
-- 			Set[name](true)
-- 		end
-- 		wipe(PreviousFilters)
-- 	end
-- 	if filters then
-- 		PreviousFilters = filters
-- 		for name,_ in pairs(api.Filters) do
-- 			PreviousFilters[name] = Get[name]() or nil
-- 			Set[name]()
-- 			app.PrintDebug("ALL FILTERS SWAPPED")
-- 		end
-- 		for _,name in pairs(filters) do
-- 			app.PrintDebug("SWAP FILTER ON:",name)
-- 			Set[name](true)
-- 		end
-- 	end
-- end

-- temp sanity debug logging
-- for name,setFilter in pairs(api.Set) do
-- 	api.Set[name] = function(...)
-- 		app.PrintDebug("Filter.Set",name,...)
-- 		return setFilter(...)
-- 	end
-- end

-- local GetTimePreciseSec = GetTimePreciseSec;
-- local Perf = { Count = {}, Time = {} }
-- for name,filter in pairs(api.Filters) do
-- 	Perf.Count[name] = 0
-- 	Perf.Time[name] = 0

	-- api.Filters[name] = function(...)
	-- 	Perf.Count[name] = Perf.Count[name] + 1
	-- 	local time = GetTimePreciseSec()
	-- 	local f = filter(...)
	-- 	Perf.Time[name] = Perf.Time[name] + (GetTimePreciseSec() - time)
	-- 	return f
	-- end
-- end

-- app.fstats = function()
-- 	app.print("Filter Stats")
-- 	print("-- Count")
-- 	for name,stat in pairs(Perf.Count) do
-- 		print(name,stat)
-- 	end
-- 	print("-- Time")
-- 	for name,stat in pairs(Perf.Time) do
-- 		print(name,stat)
-- 	end
-- end
