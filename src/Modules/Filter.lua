

-- Filter Module
local _, app = ...;

-- Dependencies
-- FactionData, Table
-- Event

-- Concepts:
-- Encapsulates the functionality for all filtering logic which is used to check if a given Object meets the applicable filters via User Settings

-- Global locals
local ipairs, select, pairs, type, GetFactionInfoByID, rawget, wipe
	= ipairs, select, pairs, type, GetFactionInfoByID, rawget, wipe;

-- App locals
local containsAny = app.containsAny;
local ALLIANCE_ONLY, HORDE_ONLY = unpack(app.Modules.FactionData.FACTION_RACES);
local GetRelativeValue = app.GetRelativeValue;

-- Module locals
local SearchForSourceIDQuickly, ATTAccountWideData, ActiveCustomCollects, FactionID, CollectibleHeirlooms, SettingsUnobtainable;
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

local AccountFilters, CharacterFilters = {}, {}

-- Helper function to encapsulate simple logic for a 'toggle' filter
local function DefineToggleFilter(name, filterGroup, filter)
	-- Filters capture
	-- app.PrintDebug("DefineFilter",name,filter)
	api.Filters[name] = filter;
	-- Set implementation
	api.Set[name] = function(active)
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
end

-- Whether the group has a binding designation, which means it basically cannot be moved to another Character
local function FilterBind(group)	-- IsBoP
	-- 1 = BoP, 4 = Quest Item... probably don't need that?
	return group.b == 1;-- or group.b == 4;
end
api.Filters.Bind = FilterBind;
-- Used in a lot of places, need to keep for now
app.IsBoP = FilterBind;
local function FilterInGame(item)	-- ItemIsInGame
	return not item.u or item.u > 2;
end
api.Filters.InGame = FilterInGame;

-- Unobtainable 	-- FilterItemClass_UnobtainableItem
DefineToggleFilter("Unobtainable", AccountFilters,
function(item)
	return not item.u or SettingsUnobtainable[item.u];
end);

-- PvP	-- FilterItemClass_PvP
DefineToggleFilter("PvP", AccountFilters,
function(item)
	if item.pvp then
		return false;
	else
		return true;
	end
end);

-- PetBattles
DefineToggleFilter("PetBattles", AccountFilters,
function(item)
	if item.pb then
		return false;
	else
		return true;
	end
end);

-- MinReputation
DefineToggleFilter("MinReputation", AccountFilters,
function(item)
	local minReputation = item.minReputation;
	if minReputation and app.IsFactionExclusive(minReputation[1]) then
		if minReputation[2] > (select(6, GetFactionInfoByID(minReputation[1])) or 0) then
			--print("Filtering Out", item.key, item[item.key], item.text, item.minReputation[1], app.CreateFaction(item.minReputation[1]).text);
			return false;
		else
			return true;
		end
	else
		return true;
	end
end);

-- Event
-- Defined in OnLoad due to raw logic captured in Events Module

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

-- FilterID -- FilterItemClass_RequireItemFilter
DefineToggleFilter("FilterID", CharacterFilters,
function(item)
	local f = item.f;
	if f then
		-- Filter applied via Settings (character-equippable or manually set)
		if SettingsFilterIDs[f] then
			return true;
		end
		-- don't filter Heirlooms by their Type if they are collectible as Heirlooms
		if CollectibleHeirlooms and item.__type == "BaseHeirloom" then
			return true;
		end
	else
		return true;
	end
end);

-- Bound -- FilterItemClass_RequireBinding
DefineToggleFilter("Bound", CharacterFilters,
function(item)
	return not item.itemID or item.b == 1;
end);

-- RequireSkill -- FilterItemClass_RequiredSkill
DefineToggleFilter("RequireSkill", CharacterFilters,
function(item)
	local requireSkill = item.requireSkill;
	if requireSkill and (not item.professionID or not GetRelativeValue(item, "DontEnforceSkillRequirements") or FilterBind(item)) then
		return app.CurrentCharacter.Professions[requireSkill];
	else
		return true;
	end
end);

-- Class -- FilterItemClass_RequireClasses
DefineToggleFilter("Class", CharacterFilters,
function(item)
	return not item.nmc;
end);

-- Race
local SettingsFilterRace_CurrentFaction;
-- Whether this is for the current 'race'
local function FilterRace(item)	-- FilterItemClass_RequireRaces
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
local function FilterRace_CurrentFaction(item)	-- FilterItemClass_RequireRacesCurrentFaction
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
			if FactionID == Enum.FlightPathFaction.Horde then
				SettingsFilterRace_CurrentFaction = api.Filters.Race_Horde;
			else
				SettingsFilterRace_CurrentFaction = api.Filters.Race_Alliance;
			end
			CharacterFilters.Race = api.Filters.Race_CurrentFaction;
		else
			CharacterFilters.Race = api.Filters.Race;
		end
	else
		CharacterFilters.Race = nil;
	end
end

-- CustomCollect -- FilterItemClass_CustomCollect
DefineToggleFilter("CustomCollect", CharacterFilters,
function(item)
	local customCollect = item.customCollect;
	if customCollect then
		for _,c in ipairs(customCollect) do
			if not ActiveCustomCollects[c] then
				return;
			end
		end
	end
	return true;
end);

-- Level -- FilterGroupsByLevel
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

-- ItemSource
if C_TransmogCollection then

local C_TransmogCollection_GetAllAppearanceSources, C_TransmogCollection_GetSourceInfo, C_TransmogCollection_PlayerHasTransmogItemModifiedAppearance
	= C_TransmogCollection.GetAllAppearanceSources, C_TransmogCollection.GetSourceInfo, C_TransmogCollection.PlayerHasTransmogItemModifiedAppearance;

local function FilterItemSource(sourceInfo)
	return sourceInfo.isCollected;
end
api.Filters.ItemSource = FilterItemSource;
local function FilterItemSourceUnique(sourceInfo, allSources)
	if sourceInfo.isCollected then
		-- NOTE: This makes it so that the loop isn't necessary.
		return true;
	else
		-- If at least one of the sources of this visual ID was collected, that means that we've collected the provided source
		local item = SearchForSourceIDQuickly(sourceInfo.sourceID);
		if item then
			local knownItem, knownSource, valid;
			local acctSources = ATTAccountWideData.Sources;
			local factionRaces = app.Modules.FactionData.FACTION_RACES;
			for _,sourceID in ipairs(allSources or C_TransmogCollection_GetAllAppearanceSources(sourceInfo.visualID)) do
				-- only compare against other Sources of the VisualID which the Account knows
				if sourceID ~= sourceInfo.sourceID and acctSources[sourceID] == 1 then
					knownItem = SearchForSourceIDQuickly(sourceID);
					if knownItem then
						-- filter matches or one item is Cosmetic
						if item.f == knownItem.f or item.f == 2 or knownItem.f == 2 then
							valid = true;
							-- verify all possible restrictions that the known source may have against restrictions on the source in question
							-- if known source has no equivalent restrictions, then restrictions on the source are irrelevant
							-- Races
							if knownItem.races then
								if item.races then
									-- the known source has a race restriction that is not shared by the source in question
									if not containsAny(item.races, knownItem.races) then valid = nil; end
								else
									valid = nil;
								end
							end
							-- Classes
							if valid and knownItem.c then
								if item.c then
									-- the known source has a class restriction that is not shared by the source in question
									if not containsAny(item.c, knownItem.c) then valid = nil; end
								else
									valid = nil;
								end
							end
							-- Faction
							if valid and knownItem.r then
								if item.r then
									-- the known source has a faction restriction that is not shared by the source or source races in question
									if knownItem.r ~= item.r or (item.races and not containsAny(factionRaces[knownItem.r], item.races)) then valid = nil; end
								else
									valid = nil;
								end
							end

							-- found a known item which meets all the criteria to grant credit for the source in question
							if valid then
								knownSource = C_TransmogCollection_GetSourceInfo(sourceID);
								-- both sources are the same category (Equip-Type)
								if knownSource.categoryID == sourceInfo.categoryID
									-- and same Inventory Type
									and (knownSource.invType == sourceInfo.invType
										or sourceInfo.categoryID == 4 --[[CHEST: Robe vs Armor]]
										or app.SlotByInventoryType[knownSource.invType] == app.SlotByInventoryType[sourceInfo.invType])
								then
									return true;
								-- else print("sources share visual and filters but different equips",item.s,sourceID)
								end
							end
						end
					else
						-- OH NOES! It doesn't exist!
						knownSource = C_TransmogCollection_GetSourceInfo(sourceID);
						-- both sources are the same category (Equip-Type)
						if knownSource.categoryID == sourceInfo.categoryID
							-- and same Inventory Type
							and (knownSource.invType == sourceInfo.invType
								or sourceInfo.categoryID == 4 --[[CHEST: Robe vs Armor]]
								or app.SlotByInventoryType[knownSource.invType] == app.SlotByInventoryType[sourceInfo.invType])
						then
							-- print("OH NOES! MISSING SOURCE ID ", sourceID, " FOUND THAT YOU HAVE COLLECTED, BUT ATT DOESNT HAVE!!!!");
							return true;
						-- else print(knownSource.sourceID, sourceInfo.sourceID, "share appearances, but one is ", sourceInfo.invType, "and the other is", knownSource.invType, sourceInfo.categoryID);
						end
					end
				end
			end
		end
		return false;
	end
end
api.Filters.ItemSourceUnique = FilterItemSourceUnique;
local function FilterItemSourceUniqueOnlyMain(sourceInfo, allSources)
	if sourceInfo.isCollected then
		-- NOTE: This makes it so that the loop isn't necessary.
		return true;
	else
		-- If at least one of the sources of this visual ID was collected, that means that we've acquired the base appearance.
		local item = SearchForSourceIDQuickly(sourceInfo.sourceID);
		if item and not item.nmc and not item.nmr then
			-- This item is for my race and class.
			for i,sourceID in ipairs(allSources or C_TransmogCollection_GetAllAppearanceSources(sourceInfo.visualID)) do
				if sourceID ~= sourceInfo.sourceID and C_TransmogCollection_PlayerHasTransmogItemModifiedAppearance(sourceID) then
					local otherItem = SearchForSourceIDQuickly(sourceID);
					if otherItem and (item.f == otherItem.f or item.f == 2 or otherItem.f == 2) and not otherItem.nmc and not otherItem.nmr then
						return true; -- Okay, fine. You are this class/race. Enjoy your +1, cheater. D:
					end
				end
			end
		end
		return false;
	end
end
api.Filters.ItemSourceUniqueMainOnly = FilterItemSourceUniqueOnlyMain;
api.Set.ItemSource = function(useUnique, useMainOnly)
	if useUnique then
		if useMainOnly then
			app.ItemSourceFilter = api.Filters.ItemSourceUniqueMainOnly;
		else
			app.ItemSourceFilter = api.Filters.ItemSourceUnique;
		end
	else
		app.ItemSourceFilter = api.Filters.ItemSource;
	end
end
else
api.Set.ItemSource = function(useUnique, useMainOnly)
	-- Do nothing, not supported without C_TransmogCollection
end
end

-- Trackable
-- Whether this group can be 'tracked'
local function FilterTrackable(group)	-- FilterItemTrackable
	return group.trackable;
end
api.Filters.Trackable = FilterTrackable
api.Set.Trackable = function(active)
	app.ShowTrackableThings = active and api.Filters.Trackable or Filter;
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
local function FilterCompletion(group)	-- FilterGroupsByCompletion
	local total = group.total;
	return total and (group.progress or 0) < total;
end

-- Filter Combinations
local function PrintExclusionCause(name, o)
	app.PrintDebug("FilterExclude",name,o.hash,o.text)
end
local function SettingsAccountFilters(o)
	for name,filter in pairs(AccountFilters) do
		-- if not filter(o) then PrintExclusionCause(name, o) return end
		if not filter(o) then return end
	end
	return true;
end
local function SettingsCharacterFilters(o)
	for name,filter in pairs(CharacterFilters) do
		-- if not filter(o) then PrintExclusionCause(name, o) return end
		if not filter(o) then return end
	end
	return true;
end
app.CurrentCharacterFilters = SettingsCharacterFilters

-- Represents filters which should be applied during Updates to groups
local function SettingsFilters(item)	-- FilterItemClass
	-- check Account trait filters
	if SettingsAccountFilters(item)
		-- and SettingsFilterPvP(item)
		-- and SettingsFilterPetBattles(item)
		-- and SettingsFilterUnobtainable(item)
		-- and SettingsFilterMinReputation(item)
		-- and SettingsFilterEvent(item)
		then
		-- BoE can skip Character trait filters
		if SettingsFilterItemUnbound(item) then return true; end
		-- check Character trait filters
		return SettingsCharacterFilters(item)
			-- and SettingsFilterBound(item)
			-- and SettingsFilterClass(item)
			-- and SettingsFilterRace(item)
			-- and SettingsFilterFilterID(item)
			-- and SettingsFilterRequireSkill(item)
			-- and SettingsFilterCustomCollect(item)
			-- and SettingsFilterLevel(item);
	end
end
-- Represents filters which should be applied during Updates to groups, but skips the BoE filter
local function SettingsFilters_IgnoreBoEFilter(item)	-- FilterItemClass_IgnoreBoEFilter
	-- check Account trait filters
	if SettingsAccountFilters(item)
		-- and SettingsFilterPvP(item)
		-- and SettingsFilterPetBattles(item)
		-- and SettingsFilterUnobtainable(item)
		-- and SettingsFilterMinReputation(item)
		-- and SettingsFilterEvent(item)
		then
		-- check Character trait filters
		return SettingsCharacterFilters(item)
			-- and SettingsFilterBound(item)
			-- and SettingsFilterClass(item)
			-- and SettingsFilterRace(item)
			-- and SettingsFilterFilterID(item)
			-- and SettingsFilterRequireSkill(item)
			-- and SettingsFilterCustomCollect(item)
			-- and SettingsFilterLevel(item);
	end
end
api.SettingsFilters.IgnoreBoEFilter = SettingsFilters_IgnoreBoEFilter

-- TODO: adjust these function names
-- Used as the general Group filter during updates
api.Set.Group = function(active)
	app.GroupFilter = active and SettingsFilters or NoFilter;
end
-- Used to show completed Groups
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
local function RecursiveUnobtainableFilter(group)
	while group do
		if not ((AccountFilters.Unobtainable or NoFilter)(group) and (AccountFilters.Event or NoFilter)(group)) then return; end
		group = group.parent;
	end
	return true;
end
app.RecursiveUnobtainableFilter = RecursiveUnobtainableFilter;
-- Recursively check outwards to find if any parent group restricts the filter for the current character (regardless of settings)
local function RecursiveCharacterRequirementsFilter(group)
	while group do
		if not SettingsCharacterFilters(group) then return; end
		group = group.sourceParent or group.parent;
	end
	return true;
end
app.RecursiveCharacterRequirementsFilter = RecursiveCharacterRequirementsFilter;
-- Returns the first encountered group tracing upwards in parent hierarchy which has a value for the provided field.
-- Specify 'followSource' to prioritize the Source Parent of a group over the direct Parent
local function RecursiveFirstParentWithField(group, field, followSource)
	if group then
		return (group[field] and group) or RecursiveFirstParentWithField(followSource and group.sourceParent or group.parent, field);
	end
end
app.RecursiveFirstParentWithField = RecursiveFirstParentWithField;
-- Returns the first encountered group's value tracing upwards in parent hierarchy which has a value for the provided field.
-- Specify 'followSource' to prioritize the Source Parent of a group over the direct Parent
local function RecursiveFirstParentWithFieldValue(group, field, followSource)
	if group then
		return group[field] or RecursiveFirstParentWithFieldValue(followSource and group.sourceParent or group.parent, field);
	end
end
app.RecursiveFirstParentWithFieldValue = RecursiveFirstParentWithFieldValue;
-- Returns the first encountered group tracing upwards in direct parent hierarchy which has a value for the provided field
local function RecursiveFirstDirectParentWithField(group, field)
	if group then
		return group[field] or RecursiveFirstDirectParentWithField(rawget(group, "parent"), field);
	end
end
app.RecursiveFirstDirectParentWithField = RecursiveFirstDirectParentWithField;

-- Caching Helpers
local function CacheSettingsData()
	CollectibleHeirlooms = app.Settings.Collectibles.Heirlooms;
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

api.OnLoad = function()
	SearchForSourceIDQuickly = app.SearchForSourceIDQuickly
	FactionID = app.FactionID;

	-- Filters defined in other Modules... maybe link them dynamically somehow instead
	DefineToggleFilter("Event", AccountFilters, app.Modules.Events.FilterIsEventActive);
end
api.OnStartup = function(AccountData)
	ATTAccountWideData = AccountData
	-- this table is set once in ATT, but contents are volatile
	ActiveCustomCollects = app.ActiveCustomCollects;
	CacheSettingsData();
end
-- Cache filter-related content from Settings here instead of checking in every function call
api.OnRefreshData_NewSettings = function()
	CacheSettingsData();
end

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