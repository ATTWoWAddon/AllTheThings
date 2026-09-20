---@diagnostic disable: lowercase-global


-- ============================================================================
-- LuaLS / DocGen type model
-- ============================================================================
-- Parser-side documentation types used by the shortcut functions below.
-- These annotations are documentation-only and do not change runtime data.

---@alias FileID integer
---@alias ExpansionID integer
---@alias ObjectID integer
---@alias ItemID integer
---@alias ModID integer
---@alias ModItemID number
---@alias SourceID integer
---@alias BonusID integer
---@alias IllusionID integer
---@alias ArtifactID integer
---@alias AzeriteEssenceID integer
---@alias DecorID integer
---@alias CurrencyID integer
---@alias FilterID integer
---@alias MountID integer
---@alias QuestID integer
---@alias ObjectiveID integer
---@alias MissionID integer
---@alias SpellID integer
---@alias SkillID integer
---@alias RecipeID integer
---@alias CreatureID integer
---@alias NPCID integer Interactive creatures are NPCs.
---@alias ATTHeaderID integer Negative NPC IDs are used as ATT Headers
---@alias FollowerID integer
---@alias GarrisonBuildingID integer
---@alias GarrisonTalentID integer
---@alias RaceID integer
---@alias ClassID integer
---@alias ChrSpecializationID integer
---@alias TitleID integer
---@alias AchievementID integer
---@alias AchievementCategoryID integer
---@alias CriteriaID integer
---@alias JournalEncounterID integer
---@alias DungeonEncounterID integer
---@alias BattlePetSpeciesID integer
---@alias BattlePetAbilityID integer
---@alias BattlePetTypeID integer
---@alias FactionID integer
---@alias UiMapID integer
---@alias MapID integer
---@alias JournalInstanceID integer
---@alias FlightPathID integer
---@alias ExplorationID integer
---@alias DifficultyID integer
---@alias EventID integer
---@alias ATTUnobtainableStatus integer|string|string[]
---@alias ATTIgnoredValue string Parser sentinel value assigned via `IGNORED_VALUE`.
---@alias Region "US"|"EU"|"KR"|"TW"|"CN"
---@alias ATTTimelineEvent string
---@alias ATTSymCommand table
---@alias ATTSym ATTSymCommand[]
---@alias ATTProvider
---| { [1]: "i", [2]: ItemID|ModItemID } item
---| { [1]: "n", [2]: NPCID } creature
---| { [1]: "o", [2]: ObjectID } object
---| { [1]: "s", [2]: SpellID } spell
---@alias ATTCost
---| { [1]: "g", [2]: number } gold
---| { [1]: "i", [2]: ItemID|ModItemID, [3]: number } item
---| { [1]: "c", [2]: CurrencyID, [3]: number } currency
---@alias x_axis number
---@alias y_axis number
---@alias ATTObjectArray ATTObject[]
---@alias ATTObjectArrayArray ATTObjectArray[]

--- Intentionally non-exact: parser objects are an extensible data model and
--- may carry module/flavor-specific fields outside this central shortcut schema.
---@class ATTObject
---@field groups? ATTObjectArray Nested parser objects.
---@field g? ATTObjectArray Legacy alias for `groups`; normalized by parser helpers.
---@field type? string Parser object type override.
---@field text? string|ATTLocalizationStringTable Display/localization text.
---@field description? string|ATTLocalizationStringTable Description/localization data.
---@field name? string Display name.
---@field readable? string Human-readable parser label.
---@field icon? string|FileID Icon path/file ID.
---@field model? integer Display/model ID.
---@field displayID? integer Display ID.
---@field sourceID? SourceID Appearance/source ID.
---@field achievementCategoryID? AchievementCategoryID
---@field artifactID? ArtifactID
---@field azeriteessenceID? AzeriteEssenceID
---@field buildingID? GarrisonBuildingID
---@field campsiteID? integer
---@field categoryID? integer
---@field classID? number Class ID, optionally specialization-encoded as a decimal.
---@field decorID? DecorID
---@field expansionID? number Expansion ID, optionally patch-encoded as a decimal.
---@field followerID? FollowerID
---@field illusionID? IllusionID
---@field objectiveID? ObjectiveID
---@field petAbilityID? BattlePetAbilityID
---@field petTypeID? BattlePetTypeID
---@field professionnodeID? integer
---@field pvpRankID? integer
---@field raceID? RaceID
---@field setID? integer
---@field setHeaderID? integer
---@field setSubHeaderID? integer
---@field talentID? GarrisonTalentID
---@field itemID? ItemID
---@field modItemID? ModItemID
---@field modID? ModID
---@field bonusID? BonusID
---@field questID? QuestID
---@field sourceQuests? QuestID[] Prerequisite/source quests.
---@field sourceQuestNumRequired? integer Number of source quests required.
---@field spellID? SpellID
---@field npcID? NPCID
---@field creatureID? CreatureID
---@field encounterID? JournalEncounterID
---@field achievementID? AchievementID
---@field allianceAchievementID? AchievementID
---@field hordeAchievementID? AchievementID
---@field altAchID? AchievementID
---@field criteriaID? CriteriaID
---@field factionID? FactionID
---@field mapID? UiMapID
---@field map? UiMapID Legacy singular map field.
---@field maps? UiMapID[]
---@field difficultyID? DifficultyID
---@field difficulties? DifficultyID[]
---@field skillID? SkillID
---@field professionID? SkillID
---@field requireSkill? SkillID|ATTIgnoredValue
---@field headerID? ATTHeaderID
---@field filterID? FilterID
---@field currencyID? CurrencyID
---@field speciesID? BattlePetSpeciesID
---@field flightpathID? FlightPathID
---@field explorationID? ExplorationID
---@field missionID? MissionID
---@field mountID? MountID
---@field titleID? TitleID
---@field recipeID? RecipeID
---@field instanceID? JournalInstanceID
---@field savedInstanceID? MapID
---@field firstcraftID? RecipeID
---@field objectID? ObjectID
---@field rank? integer
---@field cr? CreatureID
---@field crs? CreatureID[]
---@field coord? Coord|ATTIgnoredValue
---@field coords? Coord[]
---@field provider? ATTProvider|ATTIgnoredValue
---@field providers? ATTProvider[]
---@field cost? number|ATTCost[] Copper amount or a list of cost entries.
---@field timeline? ATTTimelineEvent[]|ATTIgnoredValue
---@field _defaulttimeline? ATTTimelineEvent[] Parser fallback timeline used when no explicit timeline is supplied.
---@field forcetimeline? ATTTimelineEvent[] Parser-only timeline override consumed during expansion processing.
---@field e? EventID Event association applied by `applyevent`.
---@field symselector? integer Symbolic-selector ID.
---@field sym? ATTSym
---@field u? ATTUnobtainableStatus
---@field up? number|string Encoded upgrade target or parser sentinel such as `IGNORED_VALUE`.
---@field r? RaceID Race restriction.
---@field races? RaceID[]|ATTIgnoredValue Race restrictions.
---@field c? ClassID[] Class restrictions.
---@field classes? ClassID[]|ATTIgnoredValue Class restrictions.
---@field f? FilterID Filter ID.
---@field lvl? integer|{ [1]: integer, [2]: integer? } Minimum level, or a level tuple with an optional maximum.
---@field minReputation? { [1]: FactionID, [2]: integer } Reputation requirement tuple.
---@field maxReputation? { [1]: FactionID, [2]: integer } Reputation requirement tuple.
---@field customCollect? string|string[]
---@field pb? boolean|ATTIgnoredValue Pet-battle filter flag.
---@field isDaily? boolean|ATTIgnoredValue
---@field isWeekly? boolean|ATTIgnoredValue
---@field isWorldQuest? boolean
---@field isBreadcrumb? boolean
---@field isLocked? boolean
---@field isRaid? boolean
---@field collectible? boolean Whether the object is collectible.
---@field repeatable? boolean Whether the object is repeatable.
---@field gender? integer Gender restriction/variant ID.
---@field pvp? boolean PvP requirement/filter flag.
---@field cm? boolean Challenge-mode requirement/filter flag.
---@field sr? boolean Skyriding requirement/filter flag.
---@field ignoreBonus? boolean
---@field autoname? string
---@field OnInit? string
---@field _drop? string[] Parser fields to remove after processing.
---@field _noautomation? boolean Disables parser automation for this object.
---@field _remove? boolean Marks the object for parser-side removal.
---@field _multiDifficultyID? DifficultyID Original multi-difficulty ID retained for parser/instance processing.
---@field _ignore? boolean
---@field _DATAGROUP? string
---@field _DATAGROUPS? string[]
---@field [integer] ATTObject Array-style group entries.

---@class ATTAchievementObject: ATTObject
---@field achievementID? AchievementID
---@field allianceAchievementID? AchievementID
---@field hordeAchievementID? AchievementID

---@class ATTAchievementCriteriaObject: ATTObject
---@field criteriaID CriteriaID

---@class ATTItemObject: ATTObject
---@field itemID ItemID

---@class ATTQuestObject: ATTObject
---@field questID QuestID

---@class ATTSpellObject: ATTObject
---@field spellID SpellID

---@class ATTNPCObject: ATTObject
---@field npcID NPCID

---@class ATTCreatureObject: ATTObject
---@field creatureID CreatureID

---@class ATTEncounterObject: ATTObject
---@field encounterID JournalEncounterID

---@class ATTFactionObject: ATTObject
---@field factionID FactionID

---@class ATTMapObject: ATTObject
---@field mapID UiMapID

---@class ATTCurrencyObject: ATTObject
---@field currencyID CurrencyID

---@class ATTDifficultyObject: ATTObject
---@field difficultyID DifficultyID

---@class ATTHeaderObject: ATTObject
---@field headerID ATTHeaderID
---@field SortPriority? number Parser root-category sort priority.

---@class ATTProfessionObject: ATTObject
---@field professionID SkillID

---@class ATTRecipeObject: ATTObject
---@field recipeID RecipeID
---@field requireSkill? SkillID|ATTIgnoredValue
---@field _requireSkill? SkillID Parser-side recipe profession requirement cache.

---@class ATTInstanceObject: ATTObject
---@field instanceID JournalInstanceID
---@field savedInstanceID? MapID

---@class ATTFirstCraftObject: ATTObject
---@field firstcraftID RecipeID
---@field questID? QuestID

---@class ATTBattlePetObject: ATTObject
---@field speciesID BattlePetSpeciesID

---@class ATTExplorationObject: ATTObject
---@field explorationID ExplorationID

---@class ATTFlightPathObject: ATTObject
---@field flightpathID FlightPathID

---@class ATTMissionObject: ATTObject
---@field missionID MissionID

---@class ATTMountObject: ATTObject
---@field mountID MountID

---@class ATTTitleObject: ATTObject
---@field titleID TitleID

---@class Coord
---@field [1] x_axis
---@field [2] y_axis
---@field [3] UiMapID

---@class ATTLocalizationStringTable
---@field en string
---@field de? string
---@field es? string
---@field mx? string
---@field fr? string
---@field it? string
---@field ko? string
---@field pt? string
---@field ru? string
---@field cn? string
---@field tw? string

---@class ATTLocalizationStringData
---@field constant string Unique parser constant name.
---@field readable? string Human-readable label used in parser diagnostics.
---@field text ATTLocalizationStringTable Localized text/programmatic tokens by locale. Runtime formatting iterates this table.
---@field icon? string Optional icon path or programmatic icon token.
---@field color? string Optional color string or programmatic color token.
---@field description? ATTLocalizationStringTable Optional localized description.
---@field export? boolean Whether this localization definition is exported to generated addon data.
---@field [string] any Additional localization metadata.

--- Shared fields used by both raw header definitions and processed header data.
---@class ATTHeaderDefinitionBase: ATTObject
---@field readable string Human-readable parser label.
---@field text string|ATTLocalizationStringTable Localized header text.
---@field constant? string Unique header constant.
---@field icon? string|FileID
---@field sort? number
---@field SortPriority? number
---@field eventID? EventID
---@field eventIDs? EventID[]
---@field export? boolean Whether this header definition is exported to generated addon data.
---@field npcfill? boolean Whether sourced Things may be filled into matching NPC sources.

--- Mutable header while its schedule and standalone flag are normalized.
---@class ATTHeaderProcessingDefinition: ATTHeaderDefinitionBase
---@field eventSchedule? number[]|string
---@field standalone? boolean

--- Raw definition accepted by `createHeader`.
---@class ATTHeaderInputDefinition: ATTHeaderDefinitionBase
---@field eventSchedule? number[] Numeric schedule definition consumed by `createHeader`.
---@field standalone? boolean

--- Processed definition stored in `CustomHeaders`.
---@class ATTHeaderDefinition: ATTHeaderDefinitionBase
---@field eventSchedule? string Generated Lua schedule expression after processing.
---@field standalone boolean Normalized by `createHeader`; defaults to `false`.
---@field filepath? string Parser source file which registered this header.

---@class ATTCustomObjectDefinition: ATTObject
---@field readable string Human-readable parser label.
---@field text string|ATTLocalizationStringTable Localized object text.
---@field constant? string Unique custom-object constant.

--- Date input accepted by `getTimestamp`. Either `day` (such as an
--- `os.date("*t")` result) or parser-style `monthDay` must be present.
---@alias ATTDateParts
---| { year: integer, month: integer, day: integer, monthDay?: integer, hour?: integer, minute?: integer, weekday?: integer }
---| { year: integer, month: integer, day?: integer, monthDay: integer, hour?: integer, minute?: integer, weekday?: integer }

---@class ATTSymSelectorTable
---@field select fun(key: string): ATTSymCommand
---@field [string] integer Selector IDs; the reserved `select` method is declared separately.

--- Closed root-category registry; runtime rejects unknown keys via `__index`.
---@class (exact) ATTRootConstants
---@field AchievementDB string
---@field Achievements string
---@field Arcantina string
---@field BlackMarket string
---@field Character string
---@field Craftables string
---@field Delves string
---@field ExpansionFeatures string
---@field Factions string
---@field GroupFinder string
---@field HiddenAchievementTriggers string
---@field HiddenCurrencyTriggers string
---@field HiddenQuestTriggers string
---@field Holidays string
---@field Housing string
---@field InGameShop string
---@field Instances string
---@field ItemDB string
---@field ItemDBConditional string
---@field NeverImplemented string
---@field PVP string
---@field PetBattles string
---@field Professions string
---@field Promotions string
---@field RecipeDB string
---@field SeasonOfDiscovery string
---@field Secrets string
---@field Sourceless string
---@field TradingPost string
---@field Uncollectible string
---@field Unsorted string
---@field WorldDrops string
---@field WorldEvents string
---@field Zones string
---@field AprilFools string


--- Generic constructor used by most shortcuts in this file.
--- Accepts either an ordinary object table or an array of child objects. Array
--- input is normalized to `groups`. The function also performs parser
--- validation and registers `_DATAGROUP` / `_DATAGROUPS` references when set.
---@param field string
---@param id number
---@param t? ATTObject|ATTObjectArray
---@return ATTObject
struct = function(field, id, t)		-- Construct a commonly formatted object.
	if type(id) ~= "number" then
		error("struct() requires a number 'id'. Received:",type(id),"for",field)
		return
	end
	if not t then t = {};
	elseif (t.g or t.groups) and t[1] then
		error("Don't use 'g' or 'groups' with an array of objects! Fix Group: "..field..":"..id);
		return;
	elseif not t.groups and t[1] then
		t = { ["groups"] = validateGroups(t) };
	elseif t.groups then
		validateGroups(t.groups);
	end
	if not id then
		error("Missing ID for",field,"group");
	end
	if t[field] and t[field] ~= id then
		error("Don't reuse tables within constructed objects! Fix Group: "..field..":"..id.." which has "..t[field].." already assigned!")
	end
	t[field] = id;
	if t._DATAGROUP then
		local group = DATAGROUP[t._DATAGROUP]
		group[#group + 1] = t
		group = IDGROUP[t._DATAGROUP][field]
		group[#group + 1] = id
	end
	if t._DATAGROUPS then
		local datagroup
		for i=1,#t._DATAGROUPS do
			datagroup = t._DATAGROUPS[i]
			local group = DATAGROUP[datagroup]
			group[#group + 1] = t
			group = IDGROUP[datagroup][field]
			group[#group + 1] = id
		end
	end
	return t;
end

--- Deep-clones parser data into an optional destination table.
--- Existing keys in `c` are preserved; table values copied from `t` are
--- recursively cloned so the resulting parser object can be mutated safely.
---@param t any
---@param c? table
---@return any
clone = function(t, c)	-- Clone a piece of data as a separate table (t => c, return c)
	if type(t) ~= "table" then return t end
	c = c or {};

	for key,value in pairs(t) do
		if c[key] == nil then
			c[key] = type(value) == "table" and clone(value) or value;
		end
	end
	return c;
end

-- Helper Functions
--
-- Core table/group manipulation utilities used by parser DATAS. Most of these
-- mutate the provided object tree in place and also return the same table so
-- they can be composed around constructors.
--- Checks whether a value is an array-style table (including an empty table).
---@param t? any
---@return boolean|nil
isarray = function(t)
	return t and type(t) == 'table' and (#t > 0 or next(t) == nil);
end
--- Counts the number of keys in a table.
---@param t? table
---@return integer|nil
keycount = function(t)
	if not t or type(t) ~= "table" then return end
	local c = 0
	for _ in pairs(t) do
		c = c + 1
	end
	return c
end
-- Concats all the key/value pairs in the table into a string
--- Concatenates the key/value pairs of a table into a string.
---@param tbl? table
---@param sep? string
---@return string
StringifyTable = function(tbl, sep)
	if tbl then
		local tostring = tostring
		sep = sep or ""
		local tblvals = {};
		for k,v in pairs(tbl) do
			tblvals[#tblvals + 1] = k..":"..tostring(tbl[k])
		end
		return table.concat(tblvals, sep)
	end
	return "";
end
-- Ensures that 't' has a 'groups' field containing the array/'g' data of the table
--- Normalizes array or `g` data into a table containing a `groups` field.
---@param t ATTObject|ATTObjectArray
---@return ATTObject
togroups = function(t)
	if isarray(t) then
		local groups = {};
		for _,group in ipairs(t) do
			table.insert(groups, group);
		end
		return { ["groups"] = groups }
	end
	if t.g then
		t.groups = t.g
		t.g = nil
		return t
	end
	return t;
end
--- Appends an object to a table and returns that table.
---@param o ATTObject
---@param t ATTObjectArray
---@return ATTObjectArray
addObject = function(o, t)
	table.insert(t, o);
	return t;
end
-- Appends a common groups set into the groups for this object. The last element is the one to append into.
--- Combines group arrays, using the final argument as the destination when multiple arrays are supplied.
---@param ... ATTObjectArray
---@return ATTObjectArray
appendGroups = function(...)
	local data = { ... };
	local count = #data;
	if count < 2 then
		-- Clone the group.
		local groups = {};
		for i,o in ipairs(data[1]) do
			table.insert(groups, o);
		end
		return groups;
	else
		-- The last element is the one to append into.
		local groups = data[count];
		for i=1,count-1,1 do
			for j,o in ipairs(data[i]) do
				table.insert(groups, o);
			end
		end
		return groups;
	end
end
-- Appends together multiple arrays of groups (into the first provided group). This way multiple portions of a single group can be created separately and joined together for one final 'groups' container
--- Appends multiple group arrays into the first destination array.
---@param g? ATTObjectArray
---@param ... ATTObjectArray|nil
---@return ATTObjectArray|nil
appendAllGroups = function(g, ...)
	local arrs = select("#", ...);
	if arrs > 0 then
		g = g or {};
		local i, a = #g + 1, nil;
		for n=1,arrs do
			a = select(n, ...);
			if a then
				for ai=1,#a do
					g[i] = a[ai];
					i = i + 1;
				end
			end
		end
	end
	return g;
end
local SharedKeyWarnings = {
	-- sharedData description is not 'always' correct to consolidate to sharedDescription since it is recursive for all children, and may not be intentional for them
	-- description = "Using an identical 'description' on nested multiple groups via bubbleDown is not recommended. Use 'sharedDescription' instead for reduced data requirements!",
}
local BubbleDownKeyWarnings = {
	description = "Using an identical 'description' on nested multiple groups via bubbleDown is not recommended. Use 'sharedDescription' instead for reduced data requirements!",
}
-- I've determined that this isn't going to work out with how our data is currently organized
-- Since we've grown accustomed to making the inner timeline fully-replace any bubbleDown, there's no
-- real way to add logic to merge these properly. Oh well, maybe another field will eventually benefit
-- from this concept :(
-- local CustomMergedData = {
-- 	timeline = function(t, new)
-- 		local old = t.timeline
-- 		if old == new then
-- 			print("Self-merging timeline within bubbledown??",tostring(new),"=>",tostring(old))
-- 			for k, v in pairs(t) do
-- 				print(k,"=",v)
-- 			end
-- 			return
-- 		end
-- 		-- don't merge into an ignored timeline, the purpose is to prevent merging if it's ignored!
-- 		if old == IGNORED_VALUE then
-- 			return
-- 		end
-- 		if type(old) ~= "table" then
-- 			print("Merging into timeline which is not an array =>",old)
-- 			old = {old}
-- 		end
-- 		if type(new) ~= "table" then
-- 			print("Merging from timeline which is not an array =>",new)
-- 			new = {new}
-- 		end
-- 		-- print("#new",#new,tostring(old),tostring(new))
-- 		for _,patch in ipairs(new) do
-- 			old[#old + 1] = patch
-- 			-- print("merged timeline",patch,"@",#old)
-- 		end
-- 		t.timeline = old
-- 	end
-- }
-- Simply applies keys from 'data' into 't' using a custom function by key, or where the key does not already exist
--- Copies missing fields from `data` into `t` without replacing fields already present.
---@param data? table
---@param t? table
applyData = function(data, t)
	if data and t then
		for key, value in pairs(data) do
			if t[key] == nil and key ~= "IgnoreWarnings" then	-- don't replace existing data
				if SharedKeyWarnings[key] and not data.IgnoreWarnings then
					print(SharedKeyWarnings[key],key,"[",value,"]")
				end
				t[key] = clone(value)
			-- else
			-- 	local custom = CustomMergedData[key]
			-- 	if custom then
			-- 		custom(t, value)
			-- 	end
			end
		end
	end
end
-- Performs applyData logic to the top-level table
-- This is sort of a workaround for replacing bubbleDownSelf a billion times with static field and groups
--- Normalizes the top-level object and applies missing fields from `data` to it.
---@param data table
---@param t ATTObject|ATTObjectArray
---@return ATTObject
applyDataSelf = function(data, t)
	if not data then
		error("applyDataSelf: No Data",StringifyTable(t,","))
		return t
	end
	if not t then
		error("applyDataSelf: No Source 't'",StringifyTable(t,","))
		return t
	end
	-- if this is an array, convert to .g container first to prevent merge confusion
	t = togroups(t);
	-- then apply regular applyData on the group
	applyData(data, t);
	return t
end
-- Applies a function against the group and all sub-groups
--- Recursively applies a function to a group and all of its nested groups.
---@param func? fun(group: ATTObject|ATTObjectArray)
---@param t ATTObject|ATTObjectArray
---@return ATTObject|ATTObjectArray
applyFunc = function(func, t)
	if not func then return t end
	if t.groups then
		applyFunc(func, t.groups)
	elseif t.g then
		applyFunc(func, t.g)
	elseif isarray(t) then
		for _,group in ipairs(t) do
			applyFunc(func, group)
		end
	end
	func(t)
	return t
end
--- Splits a timeline event string into its textual and numeric components.
---@param epoch string
---@return (string|number)[]
splitTimelineEvent = function(epoch)
	local words = {};
	for word in epoch:gmatch("%S+") do table.insert(words, word) end
	for i=2,#words,1 do words[i] = tonumber(words[i]) or words[i]; end
	return words;
end
-- Applies the timeline event (epoch) to the object.
--- Adds a timeline event to an object while preserving timeline ordering and avoiding duplicates.
---@param epoch? string
---@param t? ATTObject
applyTimelineEvent = function(epoch, t)
	if epoch and t then
		local timeline = t.timeline;
		if not timeline then
			-- Nothing there already, simply assign a new timeline.
			t.timeline = { epoch };
		else
			-- More complicated... (merge the data!)
			local index = -1;
			local epochParts = splitTimelineEvent(epoch);
			for i,currentEpoch in ipairs(timeline) do
				if currentEpoch == epoch then
					-- Epoch already present. Don't duplicate it.
					return;
				end
				local after = true;
				local parts = splitTimelineEvent(currentEpoch);
				for j=2,math.min(#epochParts, #parts),1 do
					if epochParts[j] < parts[j] then
						after = false;
						break;
					end
				end
				if not after then
					-- We don't want to circumvent the timeline's ability to strip out data that's not supposed to be in the game yet.
					if i == 1 and parts[1] == "added" and epochParts[1] == "removed" then
						return;
					end
					--[[
					-- Uncomment to Test:
					local summary = "";
					for j=1,i - 1,1 do
						summary = summary .. "  [" .. j .. "]: '" .. timeline[j] .. "'\n";
					end
					summary = summary .. "  >>> '" .. epoch .. "'\n  [" .. i .. "]: '" .. currentEpoch .. "'";
					print(summary);
					]]--
					index = i;
					break;
				end
			end
			if index >= 0 then
				table.insert(timeline, index, epoch);
			else
				table.insert(timeline, epoch);
			end
		end
	end
end
-- Applies a copy of the provided data into the tables of the provided array/group
--- Applies shared data to each direct child in a group or group container.
---@param data table
---@param t ATTObject|ATTObjectArray
---@return ATTObject|ATTObjectArray
sharedData = function(data, t)
	if not data then
		error("sharedData: No Shared Data",StringifyTable(t,","))
	end
	if not t or (#t == 0 and not t.g and not t.groups) then
		error("sharedData: No Source 't'",StringifyTable(t,","))
	end
	if t then
		for _,group in ipairs(t) do
			applyData(data, group);
		end
		if t.g or t.groups then
			for _,group in ipairs(t.g or t.groups) do
				applyData(data, group);
			end
		end
	end
	return t;
end
-- Performs sharedData logic but also applies the data to the top-level table
--- Applies shared data to the top-level object and its direct children.
---@param data table
---@param t ATTObject|ATTObjectArray
---@return ATTObject
sharedDataSelf = function(data, t)
	if not data then
		error("sharedDataSelf: No Shared Data",StringifyTable(t,","))
		return t
	end
	if not t then
		error("sharedDataSelf: No Source 't'",StringifyTable(t,","))
		return t
	end
	-- if this is an array, convert to .groups container first to prevent merge confusion
	t = togroups(t);
	-- then apply the data to itself
	applyData(data, t);
	-- then apply regular sharedData on the group if it has content
	if not (#t == 0 and not t.g and not t.groups) then
		return sharedData(data, t);
	end
	return t
end
-- Applies a copy of the provided data into all sub-groups of the provided table/array
--- Recursively applies missing fields from `data` to all nested groups.
--- Recursively propagates shared metadata to descendant parser objects.
--- Existing values on child objects take precedence. This is intended for
--- inheritance-like metadata such as timeline, classes, races, or requirements.
---@param data table
---@param t ATTObject|ATTObjectArray
---@return ATTObject|ATTObjectArray
bubbleDown = function(data, t)
	if not data then
		error("bubbleDown: No Bubble Data",StringifyTable(t,","))
		return t
	end
	if not t then
		error("bubbleDown: No Source 't'",StringifyTable(t,","))
		return t
	end
	-- override to use 'timelineSelf' if the only data provided is a 'timeline' value
	-- if data.timeline and keycount(data) == 1 then
	-- 	local timelineSelfReturn = timelineSelf(data, t, true)
	-- 	if timelineSelfReturn then return timelineSelfReturn end
	-- end
	if not data.IgnoreWarnings then
		for key,val in pairs(data) do
			if BubbleDownKeyWarnings[key] then
				print(BubbleDownKeyWarnings[key],"[",val,"]")
			end
		end
	end
	if t then
		if t.g or t.groups then
			applyData(data, t);
			if t.groups then
				bubbleDown(data, t.groups);
			end
			if t.g then
				bubbleDown(data, t.g);
			end
		elseif isarray(t) then
			for _,group in ipairs(t) do
				bubbleDown(data, group);
			end
		else
			applyData(data, t);
		end
		return t;
	end
end
-- Applies a copy of the provided data into all sub-groups of the provided table/array assuming that table matches the requirements of the filter.
--- Recursively applies data only to groups accepted by the supplied filter function.
---@param data table
---@param filter fun(group: ATTObject): boolean
---@param t? ATTObject|ATTObjectArray
---@return ATTObject|ATTObjectArray|nil
bubbleDownFiltered = function(data, filter, t)
	if t then
		if t.g or t.groups then
			if filter(t) then applyData(data, t); end
			bubbleDownFiltered(data, filter, t.groups);
			bubbleDownFiltered(data, filter, t.g);
		elseif isarray(t) then
			for _,group in ipairs(t) do
				bubbleDownFiltered(data, filter, group);
			end
		else
			if filter(t) then applyData(data, t); end
		end
		return t;
	end
end
--- Recursively applies data to nested groups, replacing existing values.
--- Recursively propagates metadata while replacing existing child values.
--- Use only when the bubbled value is authoritative for every descendant.
---@param data table
---@param t? ATTObject|ATTObjectArray
---@return ATTObject|ATTObjectArray|nil
bubbleDownAndReplace = function(data, t)
	if t then
		if t.g or t.groups then
			for key, value in pairs(data) do
				t[key] = value;
			end
			bubbleDownAndReplace(data, t.groups);
			bubbleDownAndReplace(data, t.g);
		elseif isarray(t) then
			for i,group in ipairs(t) do
				bubbleDownAndReplace(data, group);
			end
		else
			for key, value in pairs(data) do
				t[key] = value;
			end
		end
		return t;
	end
end
-- Performs bubbleDown logic but also applies the data to the top-level table
--- Applies bubbled data to the top-level object and all nested groups.
---@param data table
---@param t ATTObject|ATTObjectArray
---@return ATTObject
bubbleDownSelf = function(data, t)
	if not data then
		error("bubbleDownSelf: No Bubble Data",StringifyTable(t,","))
		return t
	end
	if not t then
		error("bubbleDownSelf: No Source 't'",StringifyTable(t,","))
		return t
	end
	-- if this is an array, convert to .g container first to prevent merge confusion
	t = togroups(t);
	-- then apply regular bubbleDown on the group
	return bubbleDown(data, t);
end
-- Performs only the logic of applying the provided data against the merging object, this is intended as a quick replacement for those bubbleDown(Self) uses of only 'timeline' data
--- Applies timeline data to the current object using timeline-aware merge behavior.
---@param data table
---@param t ATTObject|ATTObjectArray
---@param auto? boolean
---@return ATTObject|ATTObjectArray|nil
timelineSelf = function(data, t, auto)
	if not data then
		error("timelineSelf: No Data",StringifyTable(t,","))
		return t
	end
	if not t then
		error("timelineSelf: No Source 't'",StringifyTable(t,","))
		return t
	end
	local datacount = keycount(data)
	local withtimeline = data.timeline and true or nil
	if datacount > 1 or not withtimeline then
		-- if we automatically call this function, then don't ERROR just return empty so the caller can handle it
		if auto then return end

		error("timelineSelf is only intended to replace 'timeline' bubbleDowns, ensure no other data is being bubbled! ",StringifyTable(t,","))
		return t
	end
	-- typically bubbleDownSelf is on expansion objects, and we want to avoid forcing timeline on these
	-- so instead do a sharedData pass of the timeline
	return sharedData(data, t)
end
-- Applies the timeline event (epoch) to all sub-groups of the provided table/array
--- Recursively applies a timeline event to all nested groups.
---@param epoch string
---@param t ATTObject|ATTObjectArray
---@return ATTObject|ATTObjectArray
bubbleDownTimelineEvent = function(epoch, t)
	if not epoch then
		error("bubbleDownTimelineEvent: No Epoch",StringifyTable(t,","))
	end
	if not t then
		error("bubbleDownTimelineEvent: No Source 't'",StringifyTable(t,","))
	end
	if t then
		if t.g or t.groups then
			applyTimelineEvent(epoch, t);
			if t.groups then
				bubbleDownTimelineEvent(epoch, t.groups);
			end
			if t.g then
				bubbleDownTimelineEvent(epoch, t.g);
			end
		elseif isarray(t) then
			for _,group in ipairs(t) do
				bubbleDownTimelineEvent(epoch, group);
			end
		else
			applyTimelineEvent(epoch, t);
		end
		return t;
	end
end
--- Normalizes the object to a group container and bubbles a timeline event through it.
---@param epoch string
---@param t ATTObject|ATTObjectArray
---@return ATTObject
bubbleDownTimelineEventSelf = function(epoch, t)
	return bubbleDownTimelineEvent(epoch, togroups(t));
end
--- Builds a human-readable representation of a nested table for validation errors.
---@param indent string
---@param t table
---@return string
generateValidationStructure = function(indent, t)
	local msg = "";
	for j,o in pairs(t) do
		msg = msg .. "\n" .. indent .. j .. ": " .. tostring(o);
		if type(o) == "table" then
			msg = msg .. generateValidationStructure(indent .. " ", o);
		end
	end
	return msg;
end
-- Validates and returns 't' (expected 'groups' content) ensuring that contained content is in the expected formats
--- Validates that group contents use numeric array keys and table values.
---@param t? ATTObjectArray
---@return ATTObjectArray|nil
validateGroups = function(t)
	if t then
		for i,group in pairs(t) do
			if type(i) ~= "number" then
				error("You're trying to use '" .. i .. "' in a 'groups' field. (can't do that!)\nDetails: " .. generateValidationStructure(" ", t));
			elseif type(group) ~= "table" then
				error("You're trying to use '" .. group .. "' in a 'groups' field. (can't do that!)\nDetails: " .. generateValidationStructure(" ", t));
			end
		end
		return t;
	end
end
--- Checks whether an array contains a value.
---@param arr table
---@param value any
---@return boolean|nil
contains = function(arr, value)
	for i,value2 in ipairs(arr) do
		if value2 == value then return true; end
	end
end
--- Checks whether two arrays share at least one value.
---@param arr table
---@param otherArr table
---@return boolean|nil
containsAny = function(arr, otherArr)
	for i, v in ipairs(arr) do
		for j, w in ipairs(otherArr) do
			if v == w then return true; end
		end
	end
end
--- Checks whether a table contains a value.
---@param dict table
---@param value any
---@return boolean|nil
containsValue = function(dict, value)
	for key,value2 in pairs(dict) do
		if value2 == value then return true; end
	end
end
--- Returns a filtered copy of a table excluding the supplied value or values.
---@param data any
---@param t table
---@return table
exclude = function(data, t)
	local t2 = {};
	if type(data) == "table" then
		-- Group of Values (You shouldn't be excluding a complex object if that's what you're trying to do)
		if #data > 0 then
			for i,o in ipairs(t) do
				if not contains(data, o) then
					table.insert(t2, o);
				end
			end
		else
			-- Just create a clone
			for i,o in ipairs(t) do
				table.insert(t2, o);
			end
		end
	else
		-- Single Value
		for i,o in ipairs(t) do
			if o ~= data then
				table.insert(t2, o);
			end
		end
	end
	return t2;
end
--- Returns a filtered copy of a table excluding all supplied values.
---@param t table
---@param ... any
---@return table
excludeMany = function(t, ...)
	return exclude({...}, t);
end
--- Merges multiple arrays into a new array.
---@param ... ATTObjectArray
---@return ATTObjectArray
merge = function(...)
	local t = {};
	for i,groups in ipairs({...}) do
		for j,o in ipairs(groups) do
			table.insert(t, o);
		end
	end
	return t;
end
--- Applies reputation requirements to grouped reputation tiers while skipping the initial ranks.
---@param rep FactionID
---@param group ATTObjectArrayArray
---@return ATTObjectArray
bubbleDownRepSkip = function(rep, group)
	local t = {};
	for i,groups in ipairs(group) do
		groups = bubbleDown({["minReputation"] = {rep, i+3}}, groups)
		for j,o in ipairs(groups) do
			table.insert(t, o);
		end
	end
	return t;
end
--- Applies reputation requirements to grouped reputation tiers.
---@param rep FactionID
---@param group ATTObjectArrayArray
---@return ATTObjectArray
bubbleDownRep = function(rep, group)
	local t = {};
	for i,groups in ipairs(group) do
		groups = bubbleDown({["minReputation"] = {rep, i}}, groups)
		for j,o in ipairs(groups) do
			table.insert(t, o);
		end
	end
	return t;
end
local classicRepsMap = {
	NEUTRAL,
	FRIENDLY,
	HONORED,
	REVERED,
	EXALTED
};
--- Applies Classic reputation requirements to grouped reputation tiers.
---@param rep FactionID
---@param group ATTObjectArrayArray
---@return ATTObjectArray
bubbleDownClassicRep = function(rep, group)
	local t = {};
	for i,groups in ipairs(group) do
		groups = bubbleDown({["minReputation"] = {rep, classicRepsMap[i]}}, groups)
		for j,o in ipairs(groups) do
			table.insert(t, o);
		end
	end
	return t;
end
--- Recursively invokes a method for an object and all nested groups.
---@param method fun(group: ATTObject)
---@param t? ATTObject|ATTObjectArray
---@return ATTObject|ATTObjectArray|nil
run = function(method, t)
	if t then
		if t.g or t.groups then
			method(t);
			run(method, t.groups);
			run(method, t.g);
		elseif isarray(t) then
			for _,group in ipairs(t) do
				run(method, group);
			end
		else
			method(t);
		end
		return t;
	end
end
--- Recursively unpacks an array beginning at the requested index.
---@param t table
---@param i? integer
---@return any ...
unpack = function(t, i)
  i = i or 1
  if t[i] ~= nil then
	return t[i], unpack(t, i + 1)
  end
end

-- Helper Functions
--- Provides the `asset` parser shortcut/helper.
---@param path string
asset = function(path)
	print("ASSET: " .. path);
	error("The asset function has been deprecated");
end
--- Provides the `icon` parser shortcut/helper.
---@param path string
icon = function(path)
	print("ICON: " .. path);
	error("The icon function has been deprecated");
end
--- Applies an event ID to all nested data.
---@param eventID EventID
---@param data ATTObject|ATTObjectArray
---@return ATTObject|ATTObjectArray
applyevent = function(eventID, data)
	if not eventID then
		print("INVALID EVENT ID PASSED TO APPLYHOLIDAY");
		---@diagnostic disable-next-line: undefined-global
		print(CurrentSubFileName or CurrentFileName);
	end
	return bubbleDown({ ["e"] = eventID }, data);
end
-- #if ANYCLASSIC
--- Applies a Classic phase/unobtainable value to nested data for Classic builds.
---@param phase integer
---@param data ATTObject|ATTObjectArray
---@param force? boolean
---@return ATTObject|ATTObjectArray
applyclassicphase = function(phase, data, force)
	return (force and bubbleDownAndReplace or bubbleDown)({ ["u"] = phase }, data);
end
--- Selects the Classic or non-Classic value for the active build.
---@param classicValue any
---@param value any
---@return any
ifclassic = function(classicValue, value)
	return classicValue;
end
-- #else
--- Applies a Classic phase/unobtainable value to nested data for Classic builds.
---@param phase integer
---@param data ATTObject|ATTObjectArray
---@param force? boolean
---@return ATTObject|ATTObjectArray
applyclassicphase = function(phase, data, force)
	return data;
end
--- Selects the Classic or non-Classic value for the active build.
---@param classicValue any
---@param value any
---@return any
ifclassic = function(classicValue, value)
	return value;
end
-- #endif

local squishes = {};
--- Returns the appropriate level after expansion-specific level squishes.
---@param originalLvl integer
---@param cataLvl integer
---@param shadowlandsLvl integer
---@return integer
lvlsquish = function(originalLvl, cataLvl, shadowlandsLvl)
	if cataLvl < shadowlandsLvl then
		local squish = "lvlsquish(" .. originalLvl .. ", " .. cataLvl .. ", " ..shadowlandsLvl .. ") > " .. "lvlsquish(" .. originalLvl .. ", " .. shadowlandsLvl .. ", " .. cataLvl .. ")";
		if not squishes[squish] then
			print("Someone messed up a lvlsquish order.", squish);
			squishes[squish] = true;
		end
	end
	local lvl;
	-- #if AFTER SL
	lvl = shadowlandsLvl;
	-- #elseif AFTER CATA
	lvl = cataLvl;
	-- #else
	lvl = originalLvl;
	-- #endif
	return lvl;
end
--- Builds the symbolic selector for a PvP weapons arsenal.
---@param TIER integer
---@param SEASON integer
---@param PVPSET integer
---@return ATTSym
Sym_PvPWeaponsArsenal = function(TIER, SEASON, PVPSET)
	return {{"sub","pvp_weapons_ensemble",TIER,SEASON,PVPSET}}
end
--- Creates the Shadowlands Legendaries header and assigns its symbolic selector.
---@param t? ATTObject|ATTObjectArray
---@return ATTHeaderObject
SL_Legendaries = function(t)
	t = n(LEGENDARIES, t)
	t.symselector = SymSelector.LEGION_LEGENDARY_HEADERS
	return t
end
--- Creates the Chronicle of Lost Memories item with its legendary-memory symbolic data.
---@param t? ATTObject|ATTObjectArray
---@return ATTItemObject
ChronicleOfLostMemories = function(t)
	t = t or {}
	-- TODO: revise this, don't rely on a header containing all legendaries
	-- also, Covenant legendaries are not rewarded by the Chronicle since they require a specific renown and are rewarded automatically
	-- so also need to exclude those with custom collect
	t.sym = {
		SymSelector.select("LEGION_LEGENDARY_HEADERS"),	-- Legendary header
		{ "extract", "runeforgepowerID" },	-- extract all Legendaries into a direct list
		{ "exclude", "itemID",
			190584,	-- Memory of Unity (DK)
			190587,	-- Memory of Unity (DH)
			190588,	-- Memory of Unity (DRUID)
			199552,	-- Memory of Unity (EVOKER)
			190589,	-- Memory of Unity (HUNTER)
			190590,	-- Memory of Unity (MAGE)
			190591,	-- Memory of Unity (MONK)
			190592,	-- Memory of Unity (PALADIN)
			190593,	-- Memory of Unity (PRIEST)
			190594,	-- Memory of Unity (ROGUE)
			190595,	-- Memory of Unity (SHAMAN)
			190596,	-- Memory of Unity (WARLOCK)
			190598,	-- Memory of Unity (WARRIOR)
		},
	}
	t._drop = { "customCollect" }
	return i(184665, t)	-- Chronicle of Lost Memories
end

-- Cost Helper Functions
--- Appends one or more cost entries to an object.
---@generic T: ATTObject
---@param item T
---@param ... ATTCost
---@return T
applycost = function(item, ...)
	local cost = item.cost;
	if not cost then
		cost = {};
		item.cost = cost;
	end
	for i,o in ipairs({ ... }) do
		table.insert(cost, o);
	end
	return item;
end
--- Assign a token cost to an item.
---@generic T: ATTObject
---@param tokenItemID ItemID
---@param item T
---@return T
tokencost = function(tokenItemID, item)				-- Assign a token cost to an item.
	applycost(item, { "i", tokenItemID, 1 });
	return item;
end
--- Assign a Remnant of Anguish cost to an item.
---@generic T: ATTObject
---@param cost number
---@param item T
---@return T
anguish = function(cost, item)						-- Assign a Remnant of Anguish cost to an item.
	if cost > 0 then applycost(item, { "c", 3392, cost }); end
	return item;
end
--- Assign an Bloody Tokens cost to an item.
---@generic T: ATTObject
---@param cost number
---@param item T
---@return T
bloody = function(cost, item)							-- Assign an Bloody Tokens cost to an item.
	if cost > 0 then applycost(item, { "c", BLOODY_TOKENS, cost }); end
	return item;
end
--- Assign a Champion's Seal cost to an item with proper timeline & phase requirements.
---@param cost number
---@param item ATTObject
---@return ATTObject
champ = function(cost, item)							-- Assign a Champion's Seal cost to an item with proper timeline & phase requirements.
	applycost(item, { "c", 241, cost });	-- Champion's Seal
	return applyclassicphase(WRATH_PHASE_TWO, item);
end
--- Assign a Chef's Award or Epicurean's Award cost to an item. (based on patch).
---@generic T: ATTObject
---@param cost number
---@param item T
---@return T
chefsaward = function(cost, item)						-- Assign a Chef's Award or Epicurean's Award cost to an item. (based on patch)
	-- #if AFTER 5.0.4
	applycost(item, { "c", 81, cost });	-- Epicurean's Award
	-- #else
	applycost(item, { "c", 402, cost });	-- Chef's Award
	-- #endif
	return item;
end
--- Assign a Conquest cost to an item.
---@generic T: ATTObject
---@param cost number
---@param item T
---@return T
conquest = function(cost, item)							-- Assign a Conquest cost to an item.
	if cost > 0 then applycost(item, { "c", CONQUEST, cost }); end
	return item;
end
--- Assign a Dalaran Jewelcrafter's Token cost to an item.
---@generic T: ATTObject
---@param cost number
---@param item T
---@return T
daljewelcraftingtoken = function(cost, item)			-- Assign a Dalaran Jewelcrafter's Token cost to an item.
	applycost(item, { "c", 61, cost });
	return item;
end
--- Assign a Darkmoon Daggermaw cost to an item.
---@generic T: ATTObject
---@param cost number
---@param item T
---@return T
darkmoondaggermaw = function(cost, item)				-- Assign a Darkmoon Daggermaw cost to an item.
	applycost(item, { "i", 124669, cost });	-- Darkmoon Daggermaw
	return item;
end
--- Assign a Darkmoon Prize Ticket cost to an item.
---@generic T: ATTObject
---@param cost number
---@param item T
---@return T
darkmoonprizeticket = function(cost, item)				-- Assign a Darkmoon Prize Ticket cost to an item.
	applycost(item, { "c", 515, cost });	-- Darkmoon Prize Ticket
	return item;
end
--- Assign a Defiler's Scourgestone (Defense Protocol Gamma - Wrath Classic) cost to an item with proper timeline requirements.
---@generic T: ATTObject
---@param cost number
---@param item T
---@return T
defilersscourgestone = function(cost, item)				-- Assign a Defiler's Scourgestone (Defense Protocol Gamma - Wrath Classic) cost to an item with proper timeline requirements.
	-- #if ANYCLASSIC
	applycost(item, { "c", DEFILERS_SCOURGESTONE, cost });
	-- #endif
	return item;
end
--- Assign a Emblem of Conquest cost to an item with proper timeline & phase requirements.
---@param cost number
---@param item ATTObject
---@return ATTObject
emoc = function(cost, item)								-- Assign a Emblem of Conquest cost to an item with proper timeline & phase requirements.
	-- #if BEFORE 4.0.1
	applycost(item, { "c", 221, cost });	-- Emblem of Conquest
	-- #endif
	return applyclassicphase(WRATH_PHASE_TWO, item);
end
--- Assign a Emblem of Frost cost to an item with proper timeline & phase requirements.
---@param cost number
---@param item ATTObject
---@return ATTObject
emof = function(cost, item)								-- Assign a Emblem of Frost cost to an item with proper timeline & phase requirements.
	-- #if BEFORE 4.0.1
	applycost(item, { "c", 341, cost });	-- Emblem of Frost
	-- #endif
	return applyclassicphase(WRATH_PHASE_FOUR, item);
end
--- Assign a Emblem of Heroism cost to an item with proper timeline & phase requirements.
---@param cost number
---@param item ATTObject
---@return ATTObject
emoh = function(cost, item)								-- Assign a Emblem of Heroism cost to an item with proper timeline & phase requirements.
	-- #if BEFORE 4.0.1
	applycost(item, { "c", 101, cost });	-- Emblem of Heroism
	-- #endif
	return applyclassicphase(WRATH_PHASE_ONE, item);
end
--- Assign a Emblem of Triumph cost to an item with proper timeline & phase requirements.
---@param cost number
---@param item ATTObject
---@return ATTObject
emot = function(cost, item)								-- Assign a Emblem of Triumph cost to an item with proper timeline & phase requirements.
	-- #if BEFORE 4.0.1
	applycost(item, { "c", 301, cost });	-- Emblem of Triumph
	-- #endif
	return applyclassicphase(WRATH_PHASE_THREE, item);
end
--- Assign a Emblem of Valor cost to an item with proper timeline & phase requirements.
---@param cost number
---@param item ATTObject
---@return ATTObject
emov = function(cost, item)								-- Assign a Emblem of Valor cost to an item with proper timeline & phase requirements.
	-- #if BEFORE 4.0.1
	applycost(item, { "c", 102, cost });	-- Emblem of Valor
	-- #endif
	return applyclassicphase(WRATH_PHASE_ONE, item);
end
--- Assign a Epicurean's Award cost to an item.
---@generic T: ATTObject
---@param cost number
---@param item T
---@return T
epicurean = function(cost, item)						-- Assign a Epicurean's Award cost to an item.
	applycost(item, { "c", 81, cost });
	return item;
end
--- Assign a Flame-Blessed Iron cost to an item.
---@generic T: ATTObject
---@param cost number
---@param item T
---@return T
fbiron = function(cost, item)						-- Assign a Flame-Blessed Iron cost to an item.
	if cost > 0 then applycost(item, { "c", 3090, cost }); end
	return item;
end
--- Assign a Gold cost to an item.
---@generic T: ATTObject
---@param cost number
---@param item T
---@return T
gold = function(cost, item)								-- Assign a Gold cost to an item.
	applycost(item, { "g", cost * 10000 });	-- Gold
	return item;
end
--- Assign an Heavy Savage Leather cost to an item.
---@generic T: ATTObject
---@param cost number
---@param item T
---@return T
heavysavageleather = function(cost, item)				-- Assign an Heavy Savage Leather cost to an item.
	if cost > 0 then applycost(item, { "i", 56516, cost }); end
	return item;
end
--- Assign an Honor cost to an item. (modern).
---@generic T: ATTObject
---@param cost number
---@param item T
---@return T
honor = function(cost, item)							-- Assign an Honor cost to an item. (modern)
	if cost > 0 then applycost(item, { "c", HONOR, cost }); end
	return item;
end
--- Assign a Honor cost to an item with proper timeline requirements. (pre-Cata costs).
---@generic T: ATTObject
---@param cost number
---@param item T
---@return T
honorpoints = function(cost, item)						-- Assign a Honor cost to an item with proper timeline requirements. (pre-Cata costs)
	-- #if BEFORE CATA
	-- TODO: Add the before Cata Honor System
	--applycost(item, { "c", , cost });	-- Honor
	-- #endif
	return item;
end
--- Assign a Mark of Honor cost to an item with proper timeline requirements.
---@generic T: ATTObject
---@param cost number
---@param item T
---@return T
moh = function(cost, item)								-- Assign a Mark of Honor cost to an item with proper timeline requirements.
	-- #if AFTER 7.0.3.22248
	applycost(item, { "i", 137642, cost });	-- Mark of Honor
	-- #endif
	return item;
end
--- Assign a Sidereal Essence (Defense Protocol Beta - Wrath Classic) cost to an item with proper timeline requirements.
---@generic T: ATTObject
---@param cost number
---@param item T
---@return T
siderealessence = function(cost, item)					-- Assign a Sidereal Essence (Defense Protocol Beta - Wrath Classic) cost to an item with proper timeline requirements.
	-- #if ANYCLASSIC
	applycost(item, { "c", SIDEREAL_ESSENCE, cost });
	-- #endif
	return item;
end
--- Assign a Chef's Award or Epicurean's Award cost to an item. (based on patch).
---@generic T: ATTObject
---@param cost number
---@param item T
---@return T
spiritshard = function(cost, item)						-- Assign a Chef's Award or Epicurean's Award cost to an item. (based on patch)
	-- #if AFTER 8.0.1
	applycost(item, { "c", 1704, cost });	-- Spirit Shard (currency)
	-- #else
	applycost(item, { "i", 28558, cost });	-- Spirit Shard (item)
	-- #endif
	return item;
end
--- Assign a Tol Barad Commendation cost to an item with proper timeline requirements.
---@generic T: ATTObject
---@param cost number
---@param item T
---@return T
tolbaradcommendation = function(cost, item)				-- Assign a Tol Barad Commendation cost to an item with proper timeline requirements.
	applycost(item, { "c", 391, cost });	-- Tol Barad Commendation
	return item;
end
--- Assign a Traders Tender cost to an item.
---@generic T: ATTObject
---@param cost number
---@param item T
---@return T
traderstender = function(cost, item)                	-- Assign a Traders Tender cost to an item.
	if cost > 0 then applycost(item, { "c", TRADERS_TENDER, cost }); end
	return item;
end
--- Assign a Venture Coin cost to an item with proper timeline requirements.
---@generic T: ATTObject
---@param cost number
---@param item T
---@return T
venture = function(cost, item)							-- Assign a Venture Coin cost to an item with proper timeline requirements.
	-- #if BEFORE 4.0.1
	applycost(item, { "c", 201, cost });	-- Venture Coin
	-- #endif
	return item;
end
--- Assign a Champion's Writ cost to an item with proper timeline & phase requirements.
---@param item ATTObject
---@return ATTObject
writ = function(item)									-- Assign a Champion's Writ cost to an item with proper timeline & phase requirements.
	applycost(item, { "i", 46114, 1 });	-- 1x Champion's Writ
	return applyclassicphase(WRATH_PHASE_TWO, item);
end

-- Achievement Shortcuts
--- Create an ACHIEVEMENT Object.
---@param id AchievementID
---@param altID? AchievementID
---@param t? ATTObject|ATTObjectArray
---@return ATTAchievementObject
---@overload fun(id: AchievementID, t?: ATTObject|ATTObjectArray): ATTAchievementObject
ach = function(id, altID, t)							-- Create an ACHIEVEMENT Object
	---@type AchievementID|ATTObject|ATTObjectArray|nil
	local altID = altID;
	if t or type(altID) == "number" then
		---@cast altID AchievementID|nil
		t = struct("allianceAchievementID", id, t or {});
		t.hordeAchievementID = altID;
	else
		---@cast altID ATTObject|ATTObjectArray|nil
		t = struct("achievementID", id, altID);
	end
	-- #if AFTER WRATH
	-- Apply a default timeline of 3.0.2 to Achievements
	if not t.timeline then
		t._defaulttimeline = { ADDED_3_0_2 }
	end
	-- #endif
	---@cast t ATTAchievementObject
	return t;
end
--- Create an ACHIEVEMENT Object with getting Exalted with a Faction as a requirement.
---@param id AchievementID
---@param factionID FactionID
---@param t? ATTObject|ATTObjectArray
---@return ATTAchievementObject
achWithRep = function(id, factionID, t)					-- Create an ACHIEVEMENT Object with getting Exalted with a Faction as a requirement.
	t = ach(id, t);
	t.minReputation = { factionID, EXALTED }
	return t;
end
--- Create an ACHIEVEMENT Object with getting Exalted with seveneral Factions as a requirement.
---@param id AchievementID
---@param factions FactionID[]
---@param t? ATTObject|ATTObjectArray
---@return ATTAchievementObject
achWithReps = function(id, factions, t)					-- Create an ACHIEVEMENT Object with getting Exalted with seveneral Factions as a requirement.
	return ach(id, t);
end
--- Create an ACHIEVEMENT Object with getting Exalted with seveneral Factions as a requirement.
---@param id AchievementID
---@param factions FactionID[]
---@param t? ATTObject|ATTObjectArray
---@return ATTAchievementObject
achWithAnyReps = function(id, factions, t)				-- Create an ACHIEVEMENT Object with getting Exalted with seveneral Factions as a requirement.
	return ach(id, t);
end
--- Create an ACHIEVEMENT Object whose Criteria will not be adjusted by AchievementDB info.
---@param id AchievementID
---@param altID? AchievementID
---@param t? ATTObject|ATTObjectArray
---@return ATTAchievementObject
---@overload fun(id: AchievementID, t?: ATTObject|ATTObjectArray): ATTAchievementObject
achraw = function(id, altID, t)							-- Create an ACHIEVEMENT Object whose Criteria will not be adjusted by AchievementDB info
	t = ach(id, altID, t);
	if t then
		if t.sym then
			error("Do not use 'sym' on achievement: "..id..". It causes criteria to be placed under Hidden Quest Triggers")
		end
		-- TODO: hopefully we can define a better way for these Criteria to exist such that the Criteria can be moved as expected again
		-- they were being moved under HQT defined in _quests via AchievementDB from Blizzard
		-- but for now prevent the Criteria from disappearing into the Unsorted window
		bubbleDown({ _noautomation = true }, t);
	end
	return t;
end
--- Create an ACHIEVEMENT Object whose Criteria is simply to complete a partial set of a broader Achievement's Criteria.
---@param id AchievementID
---@param fullAch AchievementID
---@param t? ATTObject|ATTObjectArray
---@return ATTAchievementObject
achpart = function(id, fullAch, t)						-- Create an ACHIEVEMENT Object whose Criteria is simply to complete a partial set of a broader Achievement's Criteria
	t = ach(id, t)
	t._noautomation = true
	t.sym = {{"partial_achievement",fullAch}}
	return t
end

-- SHORTCUTS for Object Class Types
--- Create an ACHIEVEMENT CATEGORY Object.
---@param id AchievementCategoryID
---@param t? ATTObject|ATTObjectArray
---@return ATTObject
achcat = function(id, t)								-- Create an ACHIEVEMENT CATEGORY Object
	return struct("achievementCategoryID", id, t);
end
achievementCategory = achcat;
--- Create an ARTIFACT Object.
---@param id ArtifactID
---@param t? ATTObject|ATTObjectArray
---@return ATTObject
artifact = function(id, t)								-- Create an ARTIFACT Object
	return struct("artifactID", id, t);
end
--- Create a AZERITE ESSENCE Object.
---@param id AzeriteEssenceID
---@param rank? integer
---@param t? ATTObject|ATTObjectArray
---@return ATTObject
---@overload fun(id: AzeriteEssenceID, t?: ATTObject|ATTObjectArray): ATTObject
az = function(id, rank, t)								-- Create a AZERITE ESSENCE Object
	---@type integer|ATTObject|ATTObjectArray|nil
	local rank = rank;
	if t or type(rank) == "number" then
		---@cast rank integer|nil
		t = struct("azeriteessenceID", id, t or {});
		t.rank = rank;
		return t;
	else
		---@cast rank ATTObject|ATTObjectArray|nil
		return struct("azeriteessenceID", id, rank);
	end
end
azeriteEssence = az;									-- Create a AZERITE ESSENCE Object. (alternative shortcut)
--- Create an Item which is marked as having obtained the Heart of Azeroth.
---@param id ItemID
---@param t? ATTObject|ATTObjectArray
---@return ATTItemObject
azeriteItem = function(id, t)							-- Create an Item which is marked as having obtained the Heart of Azeroth
	t = i(id, t);
	t.customCollect = { "HOA" };
	return t;
end
--- Create an Item which is marked as having not obtained the Heart of Azeroth.
---@param id ItemID
---@param t? ATTObject|ATTObjectArray
---@return ATTItemObject
azewrongItem = function(id, t)							-- Create an Item which is marked as having not obtained the Heart of Azeroth
	t = i(id, t);
	t.customCollect = { "!HOA" };
	return t;
end
--- Create a CAMPSITE Object.
---@param id integer
---@param t? ATTObject|ATTObjectArray
---@return ATTObject
campsite = function(id, t)								-- Create a CAMPSITE Object
	return struct("campsiteID", id, t);
end
--- Create a BATTLE PET Object (Battle Pet == Species == Pet).
---@param id BattlePetSpeciesID
---@param t? ATTObject|ATTObjectArray
---@return ATTBattlePetObject
battlepet = function(id, t)								-- Create a BATTLE PET Object (Battle Pet == Species == Pet)
	return struct("speciesID", id, t);
end
pet = battlepet;										-- Create a BATTLE PET Object (alternative shortcut)
p = battlepet;											-- Create a BATTLE PET Object (alternative shortcut)
--- Create a BATTLE PET ABILITY Object.
---@param id BattlePetAbilityID
---@param t? ATTObject|ATTObjectArray
---@return ATTObject
battlepetability = function(id, t)						-- Create a BATTLE PET ABILITY Object
	return struct("petAbilityID", id, t);
end
bpa = battlepetability;									-- Create a BATTLE PET ABILITY Object (alternative shortcut)
pa = battlepetability;									-- Create a BATTLE PET ABILITY Object (alternative shortcut)
--- Create a BATTLE PET TYPE Object.
---@param id BattlePetTypeID
---@param t? ATTObject|ATTObjectArray
---@return ATTObject
battlepettype = function(id, t)							-- Create a BATTLE PET TYPE Object
	return struct("petTypeID", id, t);
end
bpt = battlepettype;									-- Create a BATTLE PET TYPE Object (alternative shortcut)
--- Create a CATEGORY Object.
---@param id integer
---@param t? ATTObject|ATTObjectArray
---@return ATTObject
category = function(id, t)								-- Create a CATEGORY Object.
	return struct("categoryID", id, t);
end
cat = category
--- Create a CHARACTER CLASS Object.
---@param id ClassID
---@param spec ChrSpecializationID
---@param t ATTObject|ATTObjectArray
---@return ATTObject
---@overload fun(id: ClassID, t?: ATTObject|ATTObjectArray): ATTObject
cl = function(id, spec, t)								-- Create a CHARACTER CLASS Object
	---@type ChrSpecializationID|ATTObject|ATTObjectArray|nil, ATTObject|ATTObjectArray|nil
	local spec, t = spec, t;
	-- spec is optional
	if not t then
		---@cast spec ATTObject|ATTObjectArray|nil
		t = spec;
	else
		---@cast spec ChrSpecializationID
		if spec == FROST or spec == RESTORATION or spec == HOLY or spec == PROTECTION then
			if id == MAGE then
				spec = 64;
			elseif id == SHAMAN then
				spec = 264;
			elseif id == PRIEST then
				spec = 257
			elseif id == WARRIOR then
				spec = 73;
			end
		end
		id = id + (spec / 1000)
		t = togroups(t)
	end;
	return struct("classID", id, t);
end
--- Flag all nested content to require achieving Challenge Master FoS (Realm Best times for Challenge Modes in MoP and WoD).
---@param t ATTObject|ATTObjectArray
---@return ATTObject|ATTObjectArray
challengemaster = function(t)							-- Flag all nested content to require achieving Challenge Master FoS (Realm Best times for Challenge Modes in MoP and WoD)
	return bubbleDown({ ["cm"] = true }, t);
end
--- Create a CHARACTER CLASS Object without a Class Lock.
---@param id ClassID
---@param t? ATTObject|ATTObjectArray
---@return ATTHeaderObject
clWithoutLock = function(id, t)							-- Create a CHARACTER CLASS Object without a Class Lock
	t = struct("headerID", id, t);
	t.type = HEADERS.Class;
	return t;
end
--- Create a CREATURE Object.
---@param id CreatureID
---@param t? ATTObject|ATTObjectArray
---@return ATTCreatureObject
creature = function(id, t)								-- Create a CREATURE Object
	return struct("creatureID", id, t);
end
cr = creature;											-- Create a CREATURE Object (alternative shortcut)
--- Create an Achievement Criteria Object (localized automatically).
---@param criteriaUID CriteriaID
---@param t? ATTObject|ATTObjectArray
---@return ATTAchievementCriteriaObject
crit = function(criteriaUID, t)							-- Create an Achievement Criteria Object (localized automatically)
	if not t then t = {};
	elseif not t.groups then
		if isarray(t) then
			t = { ["groups"] = t };
		end
	end
	if (t.groups or t.g) and #(t.groups or t.g) > 0 and false then
		error(table.concat({"Do not nest content (g/groups) inside Achievement Criteria:",criteriaUID}))
	end
	if t.achievementID then
		-- print(table.concat({"Do not use AchievementID:",t.achievementID," inside Achievement Criteria:",criteriaUID," ==> Use '_quests', '_npcs', 'cost', or 'provider' to define where/how this Criteria is granted instead of directly nesting it in Source."}))
		-- error(table.concat({"Do not use AchievementID:",t.achievementID," inside Achievement Criteria:",criteriaUID," ==> Use '_quests', '_npcs', 'cost', or 'provider' to define where/how this Criteria is granted instead of directly nesting it in Source."}))
	end
	if t.questID then
		error(table.concat({"Do not use 'questID' in crit(",criteriaUID,") ==> [\"_quests\"]={",t.questID,"}"}))
	end
	if t.creatureID or t.npcID then
		error(table.concat({"Do not use 'creatureID' or 'npcID' in crit(",criteriaUID,") ==> [\"crs\"]={",t.creatureID or t.npcID,"}"}))
	end
	t.criteriaID = criteriaUID;
	-- Apply a default timeline of 3.0.2 to Criteria
	if not t.timeline then
		t._defaulttimeline = { ADDED_3_0_2 }
	end
	---@cast t ATTAchievementCriteriaObject
	return t;
end
--- Create a CURRENCY Object.
---@param id CurrencyID
---@param t? ATTObject|ATTObjectArray
---@return ATTCurrencyObject
currency = function(id, t)								-- Create a CURRENCY Object
	return struct("currencyID", id, t);
end
--- Create a DIFFICULTY Object.
---@param id DifficultyID|DifficultyID[]
---@param t? ATTObject|ATTObjectArray
---@return ATTDifficultyObject
d = function(id, t)										-- Create a DIFFICULTY Object
	if not id then
		error("INVALID DIFFICULTY", id);
	end
	local difficultyID, ids = GetOrCreateMultiDifficulty(id);
	t = struct("difficultyID", difficultyID, t);
	if t then
		local db = DifficultyDB[difficultyID];
		if db then
			if db.simplify then
				-- must preserve the multi-difficultyID for parser/instance helper, since changing the difficultyID secretly
				-- inside a shortcut function is anything but 'simple'
				-- TODO: clean this up and make it Parser logic instead to change the id values
				t._multiDifficultyID = difficultyID
				difficultyID = ids[1];
				local difficulties = {}
				for i=2,#ids,1 do
					difficulties[#difficulties + 1] = ids[i];
				end
				t.difficultyID = difficultyID;
				if #difficulties > 0 then
					t.difficulties = difficulties
				end
				ids = nil;
			end
			-- #if AFTER MOP
			t.modID = db.modID;
			-- #endif
		end

		if ids then
			local oldDifficulties = t.difficulties;
			if oldDifficulties then
				local merged,dict,count = {},{},1;
				for i,d in ipairs(oldDifficulties) do
					if not dict[d] then
						dict[d] = count;
						merged[count] = d;
						count = count + 1;
					end
				end
				local firstID = ids[1];
				for i=2,#ids,1 do
					local d = ids[i];
					if not dict[d] then
						dict[d] = count;
						merged[count] = d;
						count = count + 1;
					end
				end
				if dict[firstID] then
					table.remove(merged, dict[firstID]);
				end
				table.insert(merged, 1, firstID);
				t.difficulties = merged;
			else
				t.difficulties = ids;
			end
		end
	end
	return t;
end
--- Create an ENCOUNTER Object (Post-Wrath).
---@param id JournalEncounterID
---@param t? ATTObject|ATTObjectArray
---@return ATTEncounterObject
e = function(id, t)										-- Create an ENCOUNTER Object (Post-Wrath)
	return struct("encounterID", id, t);
end
--- Flag all nested content as requiring Elite PvP gameplay.
---@param t ATTObject|ATTObjectArray
---@return ATTObject|ATTObjectArray
elitepvp = function(t)									-- Flag all nested content as requiring Elite PvP gameplay
	return bubbleDown({
		["pvp"] = true,
		["u"] = ELITE_PVP_REQUIREMENT,					-- CRIEVE NOTE: This currently uses the same filter as our other filters. This should probably be changed to act like the PVP filter or make "pvp" a 2 or something.
	}, t);
end
local PatchDecimals = 2
local RevDecimals = 2
local PatchShift = 10 ^ PatchDecimals
local RevShift = 10 ^ RevDecimals
--- Create an EXPANSION Object.
---@param id ExpansionID
---@param patch number
---@param t ATTObject|ATTObjectArray
---@return ATTObject
---@overload fun(id: ExpansionID, t?: ATTObject|ATTObjectArray): ATTObject
expansion = function(id, patch, t)						-- Create an EXPANSION Object
	---@type number|ATTObject|ATTObjectArray|nil, ATTObject|ATTObjectArray|nil
	local patch, t = patch, t;
	-- patch is optional
	local hasPatch
	if not t then
		---@cast patch ATTObject|ATTObjectArray|nil
		t = patch;
	else
		---@cast patch number
		hasPatch = true
		id = id + (patch / PatchShift);
		t = togroups(t);
	end
	t = struct("expansionID", id, t);
	-- TEMP until timeline use within bubbleDown is removed
	if t.timeline then
		-- print("WARN: Removing timeline from expansion header",id,unpack(t.timeline))
		t.timeline = nil;
	end
	if t.forcetimeline then
		t.timeline = t.forcetimeline;
		t.forcetimeline = nil;
	end
	if t and not t.timeline then
		-- when an expansion header uses a specific patch, we can assume it's intended to have that specific timeline applied
		-- note that this will cause 'awp' values within NYI context, which isn't technically correct
		if hasPatch then
			---@cast patch number
			local patchstring = string.format("%.2f", patch)
			t.timeline = { "added " .. math.floor(id) ..".".. patchstring }
		else
			local deftimeline = EXPANSION_DEFAULT_TIMELINES[id]
			t._defaulttimeline = { deftimeline } or { "added " .. math.floor(id) .. ".0" }
		end
	end
	return t;
end
--- Create an EXPLORATION Object.
---@param id ExplorationID
---@param t? ATTObject|ATTObjectArray|string
---@return ATTExplorationObject
exploration = function(id, t)							-- Create an EXPLORATION Object
	if type(t) == "string" then
		t = nil;
	end
	return struct("explorationID", id, t);
end
--- Create an EXPLORATION Object (which fails to return in exploration API and must be visited manually for name-based area check to capture).
---@param id ExplorationID
---@param t? ATTObject|ATTObjectArray
---@return ATTExplorationObject
visit_exploration = function(id, t)						-- Create an EXPLORATION Object (which fails to return in exploration API and must be visited manually for name-based area check to capture)
	t = struct("explorationID", id, t)
	t.collectible = false	-- only way to cache these is to visit manually -- too tedious :/
	-- #IF ANYCLASSIC
	-- leave it up to the ExplorationAreaPositionDB for that Classic Version
	t.coord = nil
	t.coords = nil
	-- Flag as collectible if the areaID is confirmed as validly-working in that Classic Version
	if ValidExplorationAreaIDsForClassic[id] then
		t.collectible = nil
	else
		-- completely omit non-valid explorations from Classic for now since they're connected to Exploration Achievements
		t._remove=true
	end
	-- #ENDIF
	return t
end
map_exploration = visit_exploration;
--- Create a FACTION Object.
---@param id FactionID
---@param t? ATTObject|ATTObjectArray
---@return ATTFactionObject
faction = function(id, t)								-- Create a FACTION Object
	return struct("factionID", id, t);
end
--- Create a FIRST CRAFT Object.
---@param id RecipeID
---@param t? ATTObject|ATTObjectArray
---@return ATTFirstCraftObject
firstcraft = function(id, t)							-- Create a FIRST CRAFT Object
	t = struct("firstcraftID", id, t);
	t.provider = { "s", id };
	return t;
end
fc = firstcraft;
--- Create a FLIGHT PATH Object.
---@param id FlightPathID
---@param t? ATTObject|ATTObjectArray
---@return ATTFlightPathObject
flightpath = function(id, t)							-- Create a FLIGHT PATH Object
	return struct("flightpathID", id, t);
end
fp = flightpath;										-- Create a FLIGHT PATH Object (Alternative)
--- Create a FILTER Object.
---@param id FilterID
---@param t? ATTObject|ATTObjectArray
---@return ATTObject
filter = function(id, t)								-- Create a FILTER Object
	if not id or id < 0 then
		error("Used filter() with bad filter value "..(id or "")..". Did you mean to use n()?")
	end
	return struct("f", id, t);
end
f = filter;												-- Create a FILTER Object (Alternative)
--- Create a FOLLOWER Object.
---@param id FollowerID
---@param t? ATTObject|ATTObjectArray
---@return ATTObject
follower = function(id, t)								-- Create a FOLLOWER Object
	return struct("followerID", id, t);
end
--- Create a GARRISON BUILDING Object.
---@param id GarrisonBuildingID
---@param t? ATTObject|ATTObjectArray
---@return ATTObject
garrisonBuilding = function(id, t)						-- Create a GARRISON BUILDING Object
	return struct("buildingID", id, t);
end
gb = garrisonBuilding;									-- Create a GARRISON BUILDING Object (Alternative)
--- Create a GARRISON TALENT Object.
---@param id GarrisonTalentID
---@param t? ATTObject|ATTObjectArray
---@return ATTObject
garrisonTalent = function(id, t)						-- Create a GARRISON TALENT Object
	return struct("talentID", id, t);
end
--- Create an GARRISON TALENT Object (Alternative).
---@param id GarrisonTalentID
---@param t? ATTObject|ATTObjectArray
---@return ATTObject
gt = function(id, t)									-- Create an GARRISON TALENT Object (Alternative)
	return struct("talentID", id, t);
end
--- Create a GEAR SET Object (IE: "Vestments of Prophecy").
---@param id integer
---@param t? ATTObject|ATTObjectArray
---@return ATTObject
gs = function(id, t)									-- Create a GEAR SET Object (IE: "Vestments of Prophecy")
	return struct("setID", id, t);
end
--- Create a GEAR SET HEADER Object (IE: "Season 1").
---@param id integer
---@param t? ATTObject|ATTObjectArray
---@return ATTObject
gsh = function(id, t)									-- Create a GEAR SET HEADER Object (IE: "Season 1")
	return struct("setHeaderID", id, t);
end
--- Create a GEAR SET SUB HEADER Object (IE: "Gladiator").
---@param id integer
---@param t? ATTObject|ATTObjectArray
---@return ATTObject
gssh = function(id, t)									-- Create a GEAR SET SUB HEADER Object (IE: "Gladiator")
	return struct("setSubHeaderID", id, t);
end
--- Create an Automatic Header which will use the plain Text of the specified in-game object based on Type-ID combination.
---@param ty string|integer
---@param id ATTHeaderID
---@param t? ATTObject|ATTObjectArray
---@return ATTHeaderObject
header = function(ty, id, t)							-- Create an Automatic Header which will use the plain Text of the specified in-game object based on Type-ID combination
	if type(ty) == "string" or id >= 0 then
		-- Create an Automatic Header which will use the plain Text of the specified in-game object based on Type-ID combination
		t = struct("headerID", id, t);
		if not ty then
			error("Invalid header() type for id",id);
		end
		t.type = ty;
	else
		-- This is a custom header
		t = struct("headerID", ty, id);
	end
	---@cast t ATTHeaderObject
	return t;
end
--- Create an HEIRLOOM Object(NOTE: You should only use this if not an appearance).
---@param id ItemID
---@param t? ATTObject|ATTObjectArray
---@return ATTItemObject
heir = function(id, t)									-- Create an HEIRLOOM Object(NOTE: You should only use this if not an appearance)
	return struct("itemID", id, t);
end
--- Create a HQT (Hidden Quest Tracker) Object.
---@param id QuestID
---@param t? ATTObject|ATTObjectArray
---@return ATTQuestObject
hqt = function(id, t)									-- Create a HQT (Hidden Quest Tracker) Object
	t = q(id, t);
	t.type = "hqt"
	return t
end
--- Create an ILLUSION Object (only necessary for illusions without itemIDs).
---@param id IllusionID
---@param t? ATTObject|ATTObjectArray
---@return ATTObject
illusion = function(id, t)								-- Create an ILLUSION Object (only necessary for illusions without itemIDs)
	return struct("illusionID", id, t);
end
ill = illusion;											-- Create an ILLUSION Object

-- Create an ITEM Object
---@param id ItemID
---@param t? ATTObject|ATTObjectArray
---@return ATTItemObject
item = function(id, t)
	return struct("itemID", id, t);
end
i = item;												-- Create an ITEM Object (alternative shortcut)
--- Create an ITEM Object that ignores bonus IDs.
---@param id ItemID
---@param t? ATTObject|ATTObjectArray
---@return ATTItemObject
ig = function(id, t)									-- Create an ITEM Object that ignores bonus IDs.
	t = struct("itemID", id, t);
	-- #if NOT ANYCLASSIC
	t.ignoreBonus = true;
	-- #endif
	return t;
end
--- Create an ITEM Object which can be Upgraded to another Item version (specified by ModID/BonusID).
---@param itemID ItemID
---@param modID? ModID
---@param bonusID? BonusID
---@param t? ATTObject|ATTObjectArray
---@return ATTItemObject
iupgrade = function(itemID, modID, bonusID, t)			-- Create an ITEM Object which can be Upgraded to another Item version (specified by ModID/BonusID)
	if (modID or 0) == 0 and (bonusID or 0) == 0 then
		error("Item Upgrade needs ModID or BonusID!");
	end
	local i = i(itemID, t);
	-- use ModID/BonusID combination to represent the new Item available via Upgrading
	i.up = (tonumber(modID) or 0) + ((tonumber(bonusID) or 0) / 100000);
	return i;
end
--- Create an ITEM which imports Wago Ensemble data during Parse.
---@param itemID ItemID
---@param t? ATTObject|ATTObjectArray
---@return ATTItemObject
iensemble = function(itemID, t)							-- Create an ITEM which imports Wago Ensemble data during Parse
	-- Include '_IgnoreSharedEnsembleByQuestID' in the RARE situation that two distinct ensembles are given the same QuestID by Blizz
	local i = i(itemID, t);
	i.type = "ensembleID"
	return i
end
--- Create an exact ITEM Object (specified by ModID/BonusID).
---@param itemID ItemID
---@param modID? ModID
---@param bonusID? BonusID
---@param t? ATTObject|ATTObjectArray
---@return ATTItemObject
iexact = function(itemID, modID, bonusID, t)			-- Create an exact ITEM Object (specified by ModID/BonusID)
	local i = i(itemID, t);
	if modID and modID ~= 0 then
		i.modID = modID;
	end
	if bonusID and bonusID ~= 0 then
		i.bonusID = bonusID;
	end
	return i;
end
--- This function helps build an item container for a "sack" or "bag" or some other type of reward structure.
---@param id ItemID
---@param t? ATTObject|ATTObjectArray
---@return ATTHeaderObject
container = function(id, t)								-- This function helps build an item container for a "sack" or "bag" or some other type of reward structure.
	local bag = header(HEADERS.Item, id, t);
	local providers = bag.providers;
	if not providers then
		providers = {};
		bag.providers = providers;
	end
	providers[#providers + 1] = { "i", id };
	if bag.provider then
		providers[#providers + 1] = bag.provider;
		bag.provider = nil;
	end
	return bag;
end
--- This function helps build proper listing for 'Salvage' Recipes and their visible 'Display Item'.
---@param recipeID RecipeID
---@param displayItemID ItemID
---@param t? ATTObject|ATTObjectArray
---@return ATTHeaderObject
salvagerecipe = function(recipeID, displayItemID, t)	-- This function helps build proper listing for 'Salvage' Recipes and their visible 'Display Item'
	local item = container(displayItemID, t)
	local providers = item.providers
	providers[#providers + 1] = { "s", recipeID }
	return item
end

---@param id JournalInstanceID
---@param t? ATTObject|ATTObjectArray
---@return ATTInstanceObject
inst = function(id, t)									-- Create an INSTANCE Object
	t = struct("instanceID", id, t);

	-- #if BEFORE WRATH
	-- Not yet supported in classic.
	if t and (t.groups or t.g) then
		-- Convert to a MAP ID.
		if not t.mapID then
			if t.maps then
				t.mapID = t.maps[1];
				table.remove(t.maps, 1);
				if #t.maps < 1 then
					t.maps = nil;
				end
			else
				--error("Instance Missing a MapID: " .. id);
			end
		end
	end
	-- #endif
	return t;
end

---@param id UiMapID
---@param t? ATTObject|ATTObjectArray
---@return ATTMapObject
map = function(id, t)									-- Create a MAP Object
	if t then
		-- do not attach achievements to maps
		if t.achievementID then
			error("Do not attach 'achievementID' to a map.")
		end
	end
	return struct("mapID", id, t);
end
m = map;												-- Create a MAP Object (alternative shortcut)
--- Create an MISSION Object.
---@param id MissionID
---@param t? ATTObject|ATTObjectArray
---@return ATTMissionObject
mission = function(id, t)								-- Create an MISSION Object
	return struct("missionID", id, t);
end
mi = mission											-- Create a MISSION Object (Alternative)
--- Create a MOLE MACHINE Quest Object.
---@param questID? QuestID
---@param explorationID ExplorationID
---@param t? ATTObject|ATTObjectArray
---@return ATTQuestObject|ATTNPCObject
molemachine = function(questID, explorationID, t)		-- Create a MOLE MACHINE Quest Object
	if questID then
		t = q(questID, name(HEADERS.Exploration, explorationID, t))
		t.type = "characterUnlockQuestID"
		if t and not t.provider then
			t.provider = { "n", 143925 };	-- Dark Iron Mole Machine
		end
	else
		t = struct("npcID", 143925, t);	-- Dark Iron Mole Machine
	end
	if t then
		if not t.icon then
			t.icon = 1786409;
		end
		if not t.timeline then
			t._defaulttimeline = { ADDED_8_0_1 };
		end
		if not t.races then
			t.races = { DARKIRON };
		end
	end
	---@cast t ATTQuestObject|ATTNPCObject
	return t;
end
--- Create a MOUNT Object, which is just a spellID with a filter.
---@param id MountID
---@param t? ATTObject|ATTObjectArray
---@return ATTMountObject
mount = function(id, t)									-- Create a MOUNT Object, which is just a spellID with a filter.
	return struct("mountID", id, t);
end

--- Creates an NPC/header object. With a nil `id`, this preserves the legacy behavior of returning `unpack(t)`.
---@param id? ATTHeaderID|NPCID|CreatureID
---@param t? ATTObject|ATTObjectArray
---@return ATTNPCObject|ATTHeaderObject|ATTObject|nil first
---@return ATTObject|nil ... additional Values returned only by the legacy `id == nil` + array form.
npc = function(id, t)									-- Create an NPC Object (negative indicates that it is custom)
	if not id then
		print("NPC ID Missing for n() header");
		--[[
		-- Uncomment this if something from retail sneaks past the header checker again.
		for i,o in ipairs(t) do
			print("  " .. i .. ": ");
			for key,value in pairs(o) do
				if key == "groups" or key == "g" then
					print("    " .. key .. ": ");
					for j,p in ipairs(value) do
						print("    " .. j .. ": ");
						for key2,value2 in pairs(p) do
							if key2 == "groups" or key2 == "g" then
								print("    " .. key2 .. ": TRIMMED");
							else
								print("    " .. key2 .. " - " .. tostring(value2));
							end
						end
					end
				else
					print("    " .. key .. " - " .. tostring(value));
				end
			end
		end
		]]--
		if t then
			return unpack(t);
		else
			return nil;
		end
	end
	---@cast id ATTHeaderID|NPCID|CreatureID
	-- #IF NOT ANYCLASSIC
	-- Retail Cleanliness checks
	if id == COMMON_BOSS_DROPS or
		id == COMMON_VENDOR_ITEMS or
		id == DROPS
	then
		-- Items contained under these Header values will automatically list under the respective NPCs in minilists
		if t.crs or t.cr then
			t.maps = nil;
			t.map = nil;
		end
	end
	-- #ENDIF
	-- Temporary solution until we nuke headers using this shortcut
	return struct(id > 0 and "npcID" or "headerID", id, t);
end
n = npc;												-- Create an NPC Object (alternative shortcut)
--- Create an NPC Object which is Conditional (assign u = CONDITIONALLY_AVAILABLE for Retail).
---@param id ATTHeaderID|NPCID|CreatureID
---@param t? ATTObject|ATTObjectArray
---@return ATTNPCObject|ATTHeaderObject
n_conditional = function(id, t)							-- Create an NPC Object which is Conditional (assign u = CONDITIONALLY_AVAILABLE for Retail)
	t = n(id, t);
	-- #if NOT ANYCLASSIC
	t.u = CONDITIONALLY_AVAILABLE
	bubbleDownFiltered({u=CONDITIONALLY_AVAILABLE},FILTERFUNC_NoTimeline,t)
	-- #endif
	return t;
end
--- Create a WORLD OBJECT Object (an interactable, non-NPC object out in the world - like a chest).
---@param id ObjectID
---@param t? ATTObject|ATTObjectArray
---@return ATTObject
obj = function(id, t)									-- Create a WORLD OBJECT Object (an interactable, non-NPC object out in the world - like a chest)
	return struct("objectID", id, t);
end
o = obj;												-- Create a WORLD OBJECT Object (alternative shortcut)
--- Create a group which represents the shared contents for multiple, identically-named WORLD OBJECTS.
---@param t ATTObject|ATTObjectArray
---@param o? ATTObjectArray
---@return ATTObject|nil
o_repeated = function(t, o)								-- Create a group which represents the shared contents for multiple, identically-named WORLD OBJECTS
	if t[1] then
		-- move the raw array of objects into a .g group
		-- include o as a separate array so we can list the shared contents/objects separately for easier data application
		t = { g = appendAllGroups(t, o) };
	end
	t.type = "AsGenericObjectContainer"
	if t.groups or t.g then
		for i,group in ipairs(t.groups or t.g) do
			-- first existing objectID value of the sub-groups will be used to show the localized name in-game instead of creating a new custom category as well
			if group.objectID and not t.objectID then
				-- is it really this simple
				t = struct("objectID", group.objectID, t);
				break
			end
		end
		-- Now we want the children of these generic groups to be 'special' since they require 'special' logic in the addon
		for i,group in ipairs(t.groups or t.g) do
			if group.objectID then
				group.type = "AsSubGenericObject"
			end
		end
		return t
	end
	print("Could not find a group with an objectID value");
end
--- Pet Battle (bubbleDown pb filter).
---@param t ATTObject|ATTObjectArray
---@return ATTObject|ATTObjectArray
petbattle = function(t)									-- Pet Battle (bubbleDown pb filter)
	return bubbleDown({ ["pb"] = true }, t);
end
--- Create a PROFESSION Object.
---@param skillID SkillID
---@param t? ATTObject|ATTObjectArray
---@return ATTProfessionObject
prof = function(skillID, t)								-- Create a PROFESSION Object
	return struct("professionID", skillID, t);
end
--- Create a PROFESSION NODE Object.
---@param id integer
---@param t? ATTObject|ATTObjectArray
---@return ATTObject
professionnode = function(id, t)						-- Create a PROFESSION NODE Object
	return struct("professionnodeID", id, t);
end
pn = professionnode;
--- Flag all nested content as requiring PvP gameplay.
---@param t ATTObject|ATTObjectArray
---@return ATTObject|ATTObjectArray
pvp = function(t)										-- Flag all nested content as requiring PvP gameplay
	return bubbleDown({ ["pvp"] = true }, t);
end
--- Create a PVP Rank Object.
---@param id integer
---@param t? ATTObject|ATTObjectArray
---@return ATTObject
pvprank = function(id, t)								-- Create a PVP Rank Object.
	return struct("pvpRankID", id, t);
end
--- Create a QUEST Object.
---@param id QuestID
---@param t? ATTObject|ATTObjectArray
---@return ATTQuestObject
quest = function(id, t)									-- Create a QUEST Object
	return struct("questID", id, t);
end
q = quest;												-- Create a QUEST Object (alternative shortcut)
--- Create a QUEST Object flagged with the NYI unobtainable flag.
---@param id QuestID
---@param t? ATTObject|ATTObjectArray
---@return ATTQuestObject
qNYI = function (id, t)									-- Create a QUEST Object flagged with the NYI unobtainable flag
	t = q(id, t);
	t.u = NEVER_IMPLEMENTED;
	return t;
end
--- Create a QUEST OBJECTIVE Object.
---@param id ObjectiveID
---@param t? ATTObject|ATTObjectArray
---@return ATTObject
questobjective = function(id, t)						-- Create a QUEST OBJECTIVE Object
	t = struct("objectiveID", id, t);
	if t and t.itemID then
		print("INCORRECT OBJECTIVE FORMAT", id, t.itemID);
		print("Use a provider entry instead!");
	end
	return t;
end
objective = questobjective;								-- Create a QUEST OBJECTIVE Object (alternative shortcut)
qo = questobjective;									-- Create a QUEST OBJECTIVE Object (alternative shortcut)
--- Create a RACE Object.
---@param id RaceID
---@param t? ATTObject|ATTObjectArray
---@return ATTObject
race = function(id, t)									-- Create a RACE Object
	return struct("raceID", id, t);
end
--- Create a CHARACTER RACE Object without a Race Lock.
---@param id RaceID
---@param t? ATTObject|ATTObjectArray
---@return ATTHeaderObject
raceWithoutLock = function(id, t)						-- Create a CHARACTER RACE Object without a Race Lock
	t = struct("headerID", id, t);
	t.type = HEADERS.Race;
	return t;
end
--- Create a Raw Decor Object.
---@param id DecorID
---@param t? ATTObject|ATTObjectArray
---@return ATTObject
rawdecor = function(id, t)								-- Create a Raw Decor Object
	return struct("decorID", id, t)
end
--- Create a RECIPE Object.
---@param id RecipeID
---@param t? ATTObject|ATTObjectArray
---@return ATTRecipeObject
recipe = function(id, t)								-- Create a RECIPE Object
	return struct("recipeID", id, t);
end
r = recipe;												-- Create a RECIPE Object (alternative shortcut)
--- Create an Ensemble directly from SpellID.
---@param spellID SpellID
---@param t? ATTObject|ATTObjectArray
---@return ATTSpellObject
sensemble = function(spellID, t)						-- Create an Ensemble directly from SpellID
	local i = sp(spellID, t);
	i.type = "ensembleSpellID"
	return i
end
--- Skyriding (bubbleDown sr filter).
---@param t ATTObject|ATTObjectArray
---@return ATTObject|ATTObjectArray
skyriding = function(t)									-- Skyriding (bubbleDown sr filter)
	return bubbleDown({ ["sr"] = true }, t);
end
--- Create a SPELL Object.
---@param id SpellID
---@param t? ATTObject|ATTObjectArray
---@return ATTSpellObject
spell = function(id, t)									-- Create a SPELL Object
	return struct("spellID", id, t);
end
sp = spell;												-- Create a SPELL Object (alternative shortcut)
--- Create an Item Source Object.
---@param id SourceID
---@param t? ATTObject|ATTObjectArray
---@return ATTObject
itemsource = function(id, t)							-- Create an Item Source Object
	return struct("sourceID", id, t)
end
--- Create a TITLE Object.
---@param id TitleID
---@param t? ATTObject|ATTObjectArray
---@return ATTTitleObject
title = function(id, t)									-- Create a TITLE Object
	return struct("titleID", id, t);
end
--- Create a TITLE Object for Female Characters.
---@param id TitleID
---@param t? ATTObject|ATTObjectArray
---@return ATTTitleObject
title_female = function(id, t)							-- Create a TITLE Object for Female Characters
	t = struct("titleID", id, t);
	t.gender = 3;
	return t;
end
--- Create a TITLE Object for Male Characters.
---@param id TitleID
---@param t? ATTObject|ATTObjectArray
---@return ATTTitleObject
title_male = function(id, t)							-- Create a TITLE Object for Male Characters
	t = struct("titleID", id, t);
	t.gender = 2;
	return t;
end

-- Common Object Types
--- Creates a QUEST which is for a Dragonriding Race.
---@param id QuestID
---@param t? ATTObject|ATTObjectArray
---@return ATTQuestObject
dragonridingrace = function(id, t)						-- Creates a QUEST which is for a Dragonriding Race
	t = q(id, t);
	t.repeatable = true;
	t.collectible = false;	-- quest literally cannot be completed
	t.sourceQuestNumRequired = 1;
	t.sourceQuests = {
		68795,	-- Dragonriding
		DF_ACCOUNT_CAMPAIGN_QUEST,
	};
	return t;
end
--- Creates a QUEST which is for a Skyriding Race.
---@param id QuestID
---@param t? ATTObject|ATTObjectArray
---@return ATTQuestObject
skyridingrace = function(id, t)							-- Creates a QUEST which is for a Skyriding Race
	t = q(id, t);
	t.repeatable = true;
	t.collectible = false;	-- quest literally cannot be completed
	-- TODO: Do similar conditions exist?
	-- t.sourceQuestNumRequired = 1;
	-- t.sourceQuests = {
	-- 	68795,	-- Dragonriding
	-- 	DF_ACCOUNT_CAMPAIGN_QUEST,
	-- };
	return t;
end
--- Creates a QUEST which is for a D.R.I.V.E. Race.
---@param id QuestID
---@param t? ATTObject|ATTObjectArray
---@return ATTQuestObject
driverace = function(id, t)								-- Creates a QUEST which is for a D.R.I.V.E. Race
	t = q(id, t);
	t.repeatable = true;
	t.collectible = false;	-- quest literally cannot be completed
	-- TODO: Do similar conditions exist?
	-- t.sourceQuestNumRequired = 1;
	-- t.sourceQuests = {
	-- 	68795,	-- Dragonriding
	-- 	DF_ACCOUNT_CAMPAIGN_QUEST,
	-- };
	return t;
end
-- Simple function for First Craft HQTs
--- Creates a First Craft hidden quest trigger for a recipe.
---@param questID QuestID
---@param recipeID RecipeID
---@param added? ATTTimelineEvent
---@param removed? ATTTimelineEvent
---@return ATTFirstCraftObject
FirstCraft = function(questID, recipeID, added, removed)
	local t = fc(recipeID, {questID=questID})
	t.provider = { "s", recipeID };
	if added then
		t.timeline = { added };
	end
	if removed then
		if not added then
			error("Cannot have removed FirstCraft without added")
		end
		t.timeline[#t.timeline + 1] = removed
	end
	return t;
end
-- Simple function for Recipes with HQTs
--- Creates a recipe object associated with a hidden quest trigger.
---@param recipeID RecipeID
---@param questID QuestID
---@param added? ATTTimelineEvent
---@param description? string|ATTLocalizationStringTable
---@param maps? UiMapID[]
---@return ATTRecipeObject
r_withQuest = function(recipeID, questID, added, description, maps)
	local t = r(recipeID, {questID=questID})
	if added then
		t.timeline = { added };
	end
	if description then
		t.description = description;
	end
	if maps then
		t.maps = maps;
	end
    return t
end
-- Creates a simple 'gathered' Item which has a set of object providers
-- Note: If additional table data is provided it must be the last param
--- Creates a gathered item with the supplied object providers.
---@param itemID ItemID
---@param ... ObjectID|ATTObject|ATTObjectArray
---@return ATTItemObject
i_gathered = function(itemID, ...)
	local t
	local params = {...}
	---@type ObjectID|ATTObject|ATTObjectArray|nil
	local last = params[#params]
	if type(last) == "table" then
		t = i(itemID, last)
		last = nil
		params[#params] = nil
	else
		t = i(itemID)
	end
	local providers = t.providers
	if not providers then
		providers = {}
		t.providers = providers
	end
	---@cast params ObjectID[]
	for i=1,#params do
		providers[#providers + 1] = { "o", params[i] }
	end
	return t
end
-- Outdoor Zones Headers with Filters
--- Creates a BATTLE_PETS header with pet battle filter on it. Use this with Outdoor Zones.
---@param timeline ATTTimelineEvent[]
---@param t ATTObject|ATTObjectArray
---@return ATTObject
---@overload fun(t: ATTObject|ATTObjectArray): ATTObject
battlepets = function(timeline, t)						-- Creates a BATTLE_PETS header with pet battle filter on it. Use this with Outdoor Zones.
	---@type ATTTimelineEvent[]|ATTObject|ATTObjectArray, ATTObject|ATTObjectArray|nil
	local timeline, t = timeline, t;
	if not t then
		---@cast timeline ATTObject|ATTObjectArray
		t = timeline;
		timeline = { ADDED_5_0_4 };
	end
	return petbattle(filter(BATTLE_PETS, bubbleDownSelf({ ["timeline"] = timeline }, t)));
end
--- Creates a PET_BATTLES header with pet battle filter on it. Use this with Outdoor Zones.
---@param timeline ATTTimelineEvent[]
---@param t ATTObject|ATTObjectArray
---@return ATTObject
---@overload fun(t: ATTObject|ATTObjectArray): ATTObject
petbattles = function(timeline, t)						-- Creates a PET_BATTLES header with pet battle filter on it. Use this with Outdoor Zones.
	---@type ATTTimelineEvent[]|ATTObject|ATTObjectArray, ATTObject|ATTObjectArray|nil
	local timeline, t = timeline, t;
	if not t then
		---@cast timeline ATTObject|ATTObjectArray
		t = timeline;
		timeline = { ADDED_5_0_4 };
	end
	return petbattle(n(PET_BATTLES, bubbleDownSelf({ ["timeline"] = timeline }, t)));
end
--- Creates a LOCKPICKING header with Rogue Class Filtering on it. Use this with Outdoor Zones.
---@param skipRequirement boolean|nil
---@param t ATTObject|ATTObjectArray
---@return ATTProfessionObject
---@overload fun(): ATTProfessionObject
---@overload fun(t: ATTObject|ATTObjectArray): ATTProfessionObject
lockpicking = function(skipRequirement, t)				-- Creates a LOCKPICKING header with Rogue Class Filtering on it. Use this with Outdoor Zones.
	---@type boolean|ATTObject|ATTObjectArray|nil, ATTObject|ATTObjectArray|nil
	local skipRequirement, t = skipRequirement, t;
	if not t then
		---@cast skipRequirement ATTObject|ATTObjectArray|nil
		t = skipRequirement;
		skipRequirement = nil;
	end
	local obj = prof(LOCKPICKING, t);
	if not skipRequirement then obj.classes = { ROGUE }; end
	return obj;
end
--- Creates a PICK POCKET header with Rogue Class Filtering on it. Use this with Outdoor Zones.
---@param skipRequirement boolean|nil
---@param t ATTObject|ATTObjectArray
---@return ATTHeaderObject
---@overload fun(): ATTHeaderObject
---@overload fun(t: ATTObject|ATTObjectArray): ATTHeaderObject
pickpocketing = function(skipRequirement, t)			-- Creates a PICK POCKET header with Rogue Class Filtering on it. Use this with Outdoor Zones.
	---@type boolean|ATTObject|ATTObjectArray|nil, ATTObject|ATTObjectArray|nil
	local skipRequirement, t = skipRequirement, t;
	if not t then
		---@cast skipRequirement ATTObject|ATTObjectArray|nil
		t = skipRequirement;
		skipRequirement = nil;
	end
	local obj = header(HEADERS.Spell, 921, t);	-- Pick Pocket
	if not skipRequirement then obj.classes = { ROGUE }; end
	return obj;
end

-- SHORTCUTS for Field Modifiers (not objects, you can apply these anywhere)
--- Flag as Alliance Only.
---@generic T: ATTObject
---@param t T
---@return T
a = function(t)	-- Flag as Alliance Only
	if t.races then
		for key,value in pairs(t) do
			if key == "g" then
				-- Do nothing.
			elseif type(value) == "table" then
				-- Show the table.
				local statement = "";
				local count = 0;
				for j,value2 in ipairs(value) do
					if count > 0 then statement = statement .. ", "; end
					statement = statement .. tostring(value2);
					count = count + 1;
				end
				print("\t" .. tostring(key) .. ": { " .. statement .. " }");
			else
				print("\t" .. tostring(key) .. ": " .. tostring(value));
			end
		end
		error("Attempted to assign RACES as ALLIANCE_ONLY on a thing already marked with races.");
	else
		t.races = ALLIANCE_ONLY;
	end
	return t;
end
-- Adds an item which is convertable between itself and another subitem by way of a subitem amount and whether the
-- item to subitem is possible
--- Creates an item with a conversion cost to another item and optional reverse-conversion child.
---@param itemID ItemID
---@param subItemID ItemID
---@param subItemAmount number
---@param includeItemToSubitem? boolean
---@return ATTItemObject
convertItem = function(itemID, subItemID, subItemAmount, includeItemToSubitem)
	return i(itemID, {["cost"]={{"i",subItemID,subItemAmount}},["groups"]=includeItemToSubitem and {i(subItemID)} or nil})
end
--- Add a Creature List to an object.
---@generic T: ATTObject
---@param id CreatureID|CreatureID[]
---@param t T
---@return T
crs = function(id, t)									-- Add a Creature List to an object.
	if type(id) == "number" then
		t.cr = id;
	else
		t.crs = id;
	end
	return t;
end
--- Flag as Horde Only.
---@generic T: ATTObject
---@param t T
---@return T
h = function(t) -- Flag as Horde Only
	if t.races then
		for key,value in pairs(t) do
			if key == "g" then
				-- Do nothing.
			elseif type(value) == "table" then
				-- Show the table.
				local statement = "";
				local count = 0;
				for j,value2 in ipairs(value) do
					if count > 0 then statement = statement .. ", "; end
					statement = statement .. tostring(value2);
					count = count + 1;
				end
				print("\t" .. tostring(key) .. ": { " .. statement .. " }");
			else
				print("\t" .. tostring(key) .. ": " .. tostring(value));
			end
		end
		error("Attempted to assign RACES as HORDE_ONLY on a thing already marked with races.");
	else
		t.races = HORDE_ONLY;
	end
	return t;
end
--- Creates an item-drop Hidden Quest Trigger object.
---@param itemID ItemID
---@param questID QuestID
---@param t? ATTObject|ATTObjectArray
---@return ATTQuestObject
itemDropHQT = function(itemID, questID, t)
	t = t or {}
	t.provider = {"i",itemID}	-- Item
	return hqt(questID, name(HEADERS.Item, itemID, t))	-- Item Drop
end
--- Assigns a display ID to an object.
---@generic T: ATTObject
---@param displayID integer
---@param t T
---@return T
model = function(displayID, t)
	t.displayID = displayID;
	return t;
end
-- Converts a given Item/Mod/Bonus combination into the current modItemID format (should roughly match GetGroupItemIDWithModID from Item.Retail.lua)
--- Encodes ItemID, ModID, and BonusID into the parser's modItemID numeric format.
---@param itemID? ItemID
---@param modID? ModID
---@param bonusID? BonusID
---@return ModItemID
modItemId = function(itemID, modID, bonusID)
	itemID = itemID and tonumber(itemID) or 0;
	-- #if AFTER LEGION
	local m, b;
	m = modID and tonumber(modID);
	b = bonusID and tonumber(bonusID);
	if m then
		itemID = itemID + (m / 1000);
	end
	if b and b ~= 3524 then
		itemID = itemID + (b / 100000000);
	end
	-- #endif
	return itemID;
end
-- Adds the 'autoname' field with proper formatting to set the 'name' of this object automatically in Retail
-- NOTE: The base Type must support: GlobalVariants.WithAutoName as a Class Variant for the 'autoname' field to be recognized in the addon to generate a 'name'
-- ref. Classes/Quest.lua
--- Adds automatic-name metadata for a supported object type and ID.
---@param type? string
---@param id? integer
---@param t? ATTObject|ATTObjectArray
---@return ATTObject|ATTObjectArray|nil
name = function(type, id, t)
	if not type or not id then return t end
	t = togroups(t or {})
	if t.autoname then
		error("Cannot use name() when the contained data includes 'autoname' field! "..type..":"..id)
	end
	t.autoname = type..":"..id
	return t
end
-- Converts 3 separate patch values into a single patch decimal for use within expansion() groups
--- Encodes major, minor, and build values into the parser's decimal patch format.
---@param major number
---@param minor number
---@param build number
---@return number
patch = function(major, minor, build)
	major = math.floor(tonumber(major) or 0)
	minor = math.floor(tonumber(minor) or 0)
	build = math.floor(tonumber(build) or 0)
	if major >= PatchShift then
		print("Using a Major Patch with too many digits! It will not be represented properly in-game",major)
	end
	if minor >= RevShift then
		print("Using a Minor Patch with too many digits! It will not be represented properly in-game",minor)
	end
	if build > 99999 then
		print("WARN: Not currently supporting Build > 99999 within a Patch",build)
	end
	return major + (minor / RevShift) + (build / 100000)
end
--- Mark an object unobtainable where u is the type.
---@generic T: ATTObject
---@param u ATTUnobtainableStatus
---@param t T
---@return T
un = function(u, t) t.u = u; return t; end						-- Mark an object unobtainable where u is the type.
--- A daily group based on questID with specific rewards (typically an HQT trigger with lockout-based loot/rewards).
---@param questID QuestID
---@param t? ATTObject|ATTObjectArray
---@return ATTHeaderObject
dailyReward = function(questID, t)								-- A daily group based on questID with specific rewards (typically an HQT trigger with lockout-based loot/rewards)
	local t = n(DAILY, t)
	t.questID = questID
	t.isDaily = true
	return t
end
--- A weekly group based on questID with specific rewards (typically an HQT trigger with lockout-based loot/rewards).
---@param questID QuestID
---@param t? ATTObject|ATTObjectArray
---@return ATTHeaderObject
weeklyReward = function(questID, t)								-- A weekly group based on questID with specific rewards (typically an HQT trigger with lockout-based loot/rewards)
	local t = n(WEEKLY, t)
	t.questID = questID
	t.isWeekly = true
	return t
end

-- Region Specific Filters
--- Restricts an object to a specific WoW portal region.
---@generic T: ATTObject
---@param region Region
---@param t T
---@return T
regionExclusive = function(region, t)
	if t.OnInit then
		error("ERROR: You already have an OnInit assigned for this object.");
	end
	t.OnInit = [[function(t)
	if GetCVar("portal") ~= "]] .. region .. [[" then
		t.u = 1;
	end
	return t;
end]];
	return t;
end
--- Marks an object unavailable in a specific WoW portal region.
---@generic T: ATTObject
---@param region Region
---@param t T
---@return T
regionUnavailable = function(region, t)
	if t.OnInit then
		error("ERROR: You already have an OnInit assigned for this object.");
	end
	t.OnInit = [[function(t)
	if GetCVar("portal") == "]] .. region .. [[" then
		t.u = 1;
	end
	return t;
end]];
	return t;
end

---@generic T: ATTObject
---@param t T
---@return T
usONLY = function(t)	-- the object only available on US realm
	return regionExclusive("US", t);
end
---@generic T: ATTObject
---@param t T
---@return T
euONLY = function(t)	-- the object only available on EU realm
	return regionExclusive("EU", t);
end
---@generic T: ATTObject
---@param t T
---@return T
krONLY = function(t)	-- the object only available on KR realm
	return regionExclusive("KR", t);
end
---@generic T: ATTObject
---@param t T
---@return T
twONLY = function(t)	-- the object only available on TW realm
	return regionExclusive("TW", t);
end
---@generic T: ATTObject
---@param t T
---@return T
cnONLY = function(t)	-- the object only available on CN realm
	return regionExclusive("CN", t);
end
---@generic T: ATTObject
---@param t T
---@return T
usUnavailable = function(t)	-- the object only unavailable on US realm
	return regionUnavailable("US", t);
end
---@generic T: ATTObject
---@param t T
---@return T
euUnavailable = function(t)	-- the object only unavailable on EU realm
	return regionUnavailable("EU", t);
end
---@generic T: ATTObject
---@param t T
---@return T
krUnavailable = function(t)	-- the object only unavailable on KR realm
	return regionUnavailable("KR", t);
end
---@generic T: ATTObject
---@param t T
---@return T
twUnavailable = function(t)	-- the object only unavailable on TW realm
	return regionUnavailable("TW", t);
end
---@generic T: ATTObject
---@param t T
---@return T
cnUnavailable = function(t)	-- the object only unavailable on CN realm
	return regionUnavailable("CN", t);
end

-- Constants containers
do
	local AutoTableMetaFunc
	--- Wraps a table so missing string keys automatically create nested tables.
	---@param t table
	---@return table
	local function SelfAutoTable(t)
		return setmetatable(t, { __index = AutoTableMetaFunc })
	end
	--- Metatable index function which automatically creates nested tables for string keys.
	---@param t table
	---@param key any
	---@return table|nil
	AutoTableMetaFunc = function(t, key)
		-- only auto-key string keys
		if type(key) == "string" then
			local value = SelfAutoTable({})
			t[key] = value
			return value
		end
	end
	---@type table<string, table>
	DATAGROUP = SelfAutoTable({})
	---@type table<string, table<string, integer[]>>
	IDGROUP = SelfAutoTable({})
	---@type table<string, table>
	SYM = SelfAutoTable({})
	local symselector = 0
	--- Returns the next unique symbolic-selector ID.
	---@return integer
	local NextSymSelector = function()
		symselector = symselector + 1
		return symselector
	end
	-- Provides a Unique value for each unique Key referenced on the table
	---@type ATTSymSelectorTable
	SymSelector = setmetatable({
		-- Returns the proper symlink "select" table for a given SymSelector key
		-- e.g. {"select","symselector",SymSelector[key]}
		--- Provides the `select` parser shortcut/helper.
		---@param key string
		---@return ATTSymCommand
		select = function(key) return {"select","symselector",SymSelector[key]} end,
	}, {
		__index = function(t, key)
			local s = NextSymSelector()
			t[key] = s
			return s
		end
	});
end

-- Temporary function to force Items to use the Misc filter so that they do not get turned into Recipes by the Parser
-- until the 'guessing' logic is eventually relegated when Prof DB's are sufficient
--- Forces an item to use the Misc filter to prevent parser recipe conversion.
---@generic T: ATTObject
---@param t T
---@return T
TempForceMisc = function(t)
	t.f = MISC
	return t
end

-- Root Category Headers
--
-- Root categories are parser-only containers collected into the global `_`
-- database. `root()` merges repeated declarations for the same category.
(function()
-- Root constants
-- Usage: ROOTS.[Constant]
---@type ATTRootConstants
ROOTS = setmetatable({
	["AchievementDB"] = "AchievementDB",
	["Achievements"] = "Achievements",
	["Arcantina"] = "Arcantina",
	["BlackMarket"] = "BlackMarket",
	["Character"] = "Character",
	["Craftables"] = "Craftables",
	["Delves"] = "Delves",
	["ExpansionFeatures"] = "ExpansionFeatures",
	["Factions"] = "Factions",
	["GroupFinder"] = "GroupFinder",
	["HiddenAchievementTriggers"] = "HiddenAchievementTriggers",
	["HiddenCurrencyTriggers"] = "HiddenCurrencyTriggers",
	["HiddenQuestTriggers"] = "HiddenQuestTriggers",
	["Holidays"] = "Holidays",
	["Housing"] = "Housing",
	["InGameShop"] = "InGameShop",
	["Instances"] = "Instances",
	["ItemDB"] = "ItemDB",
	["ItemDBConditional"] = "ItemDBConditional",
	["NeverImplemented"] = "NeverImplemented",
	["PVP"] = "PVP",
	["PetBattles"] = "PetBattles",
	["Professions"] = "Professions",
	["Promotions"] = "Promotions",
	["RecipeDB"] = "RecipeDB",
	["SeasonOfDiscovery"] = "SeasonOfDiscovery",
	["Secrets"] = "Secrets",
	["Sourceless"] = "Sourceless",
	["TradingPost"] = "TradingPost",
	["Uncollectible"] = "Uncollectible",
	["Unsorted"] = "Unsorted",
	["WorldDrops"] = "WorldDrops",
	["WorldEvents"] = "WorldEvents",
	["Zones"] = "Zones",
	--
	["AprilFools"] = "Special_AprilFools",
}, {
	__index = function(t, category)
		error("Attempting to reference ROOTS." .. category .. ", which is not a valid Root Category.");
	end,
});

-- Root Data Processors
--- Marks quest objects under the Hidden Quest Triggers root as HQT objects.
---@param data table
local function HQTCleanup(data)
	if data.questID then
		-- force quests under the HQT section to be the HQT type
		data.type = "hqt"
		return
	end
end
--- Marks nested quest groups so parser-generated `g` data can be dropped.
---@param g any
---@return ATTObject|ATTObjectArray|nil
local function __DropG(g)
	return bubbleDownFiltered({
		-- keep API data from populating into NYI/Hidden quests
		["_drop"]={"g"}
	},FILTERFUNC_questID,g)
end
--- Preprocesses Hidden Quest Trigger data before it is attached to the root.
---@param g any
---@return ATTObject|ATTObjectArray|nil
local function __HiddenQuestTriggers(g)
	return applyFunc(HQTCleanup, __DropG(g))
end
--- Returns all arguments unchanged.
---@param ... any
---@return any ...
local function ReturnArguments(...)
	return ...;
end
local RootDataProcessors = setmetatable({
	[ROOTS.HiddenAchievementTriggers] = __DropG,
	[ROOTS.HiddenCurrencyTriggers] = __DropG,
	[ROOTS.HiddenQuestTriggers] = __HiddenQuestTriggers,
	[ROOTS.NeverImplemented] = __DropG
}, {
	__index = function(t, key) return ReturnArguments; end,
});

-- Connect data to a Root Category
--- Create a ROOT CATEGORY Object.
---@param category string|integer
---@param g any
---@return table
--- Adds data to a named parser root category.
--- Repeated calls merge into the existing root array. Hidden/NYI roots can run
--- preprocessing through `RootDataProcessors` before the data is stored.
root = function(category, g)							-- Create a ROOT CATEGORY Object
	g = RootDataProcessors[category](g or {});
	local o = _[category];
	if not o then
		if isarray(g) then
			o = g;
		else
			local isRef = true;
			for key,value in pairs(g) do
				if type(key) ~= "number" then
					isRef = false;
					break;
				end
			end
			if isRef then
				o = g;
			else
				o = { g };
			end
		end
		_[category] = o;
	else
		if isarray(g) then
			for i,t in ipairs(g) do
				table.insert(o, t);
			end
		else
			local isRef = true;
			for key,value in pairs(g) do
				if type(key) ~= "number" then
					isRef = false;
					break;
				end
			end
			if isRef then
				for key,value in pairs(g) do
					o[key] = value;
				end
			else
				table.insert(o, g);
			end
		end
	end
	return o;
end
---@param mapID UiMapID
---@param g? ATTObject|ATTObjectArray
battleground = function(mapID, g)						-- Create a BATTLEGROUND in the PvP header.
	root(ROOTS.PVP, pvp(n(BATTLEGROUNDS, { m(mapID, g) })));
end
---@param ... UiMapID|ATTObject|ATTObjectArray
maproot = function(...)									-- Create a MAP ROOT in the Zones header.
	-- Example: maproot(KALIMDOR, ELWYNN_FOREST, { });
	local args = { ... };
	local count = #args;
	local data = args[count];
	---@cast data ATTObject|ATTObjectArray
	for i=count-1,1,-1 do
		data = { m(args[i] --[[@as UiMapID]], data) };
	end
	root(ROOTS.Zones, data);
end
--- Create a PROFESSION Container. (NOTE: Only use in the Profession Folder.).
---@param skillID SkillID
---@param t? ATTObject|ATTObjectArray
---@return ATTProfessionObject
profession = function(skillID, t)						-- Create a PROFESSION Container. (NOTE: Only use in the Profession Folder.)
	local p = prof(skillID, t);
	-- #if NOT ANYCLASSIC
	bubbleDown({ ["requireSkill"] = skillID }, p);
	-- #endif
	root(ROOTS.Professions, p);
	return p;
end

-- Assign a Root Category Header
local rootCategoryHeaders = {};
---@type table<string|integer, ATTHeaderObject>
RootCategoryHeaders = rootCategoryHeaders;	-- This is global, so that it can be found by Parser!
--- Assigns a header object to a root category with a parser sort priority.
---@param priority number
---@param category string|integer
---@param headerID ATTHeaderID
---@param data? ATTObject|ATTObjectArray
assignRootCategoryHeader = function(priority, category, headerID, data)
	if not headerID or type(headerID) ~= "number" then
		print("ROOT CATEGORY: " .. category);
		print("INVALID ROOT CATEGORY HEADER: You must pass a headerID into the createRootCategoryHeader(priority,category,headerID,data) function.");
	elseif rootCategoryHeaders[category] then
		error("ERROR: ROOT CATEGORY HEADER " .. category .. " ALREADY ASSIGNED. Please double check that the root category definitions are unique.");
	end
	data = n(headerID, data or {});
	data.SortPriority = priority;
	rootCategoryHeaders[category] = data;
end
end)();

-- Create a String.
(function()
local localizationStringsByConstant = {};
---@type table<string, ATTLocalizationStringData>
LocalizationStrings = localizationStringsByConstant;	-- This is global, so that it can be found by Parser!
--- Checks whether a localization string is programmatic (prefixed with `~`).
---@param str string
---@return boolean
function isTextProgrammatic(str)
	return str:sub(1, 1) == '~';
end
--- Registers a parser localization string and applies optional color/icon formatting.
--- Registers a parser localization definition by its unique `constant`.
--- The definition may provide literal/localized text, an icon, formatting, or
--- programmatic text. Duplicate constants are rejected.
---@param data ATTLocalizationStringData
createLocalizationString = function(data)
	if not data then
		print("INVALID LOCALIZATION STRING: You must pass data into the createLocalizationString function.");
	elseif not data.constant then
		print("INVALID LOCALIZATION STRING (missing 'constant')", data.readable);
	elseif localizationStringsByConstant[data.constant] then
		error("ERROR: LOCALIZATION STRING CONSTANT " .. data.constant .. " ALREADY ASSIGNED TO " .. localizationStringsByConstant[data.constant].readable .. ". Please double check that the localization definitions are unique or reuse the same localization.");
	else
		local textData = data.text;
		if (not (textData and (type(textData) == "string" or (type(textData) == "table" and textData.en)))) and not data.icon then
			print("INVALID LOCALIZATION STRING", data.readable, textData);
		else
			localizationStringsByConstant[data.constant] = data;

			-- Build the text using icon and color, if supplied.
			if data.color then
				-- Include the color first!
				if isTextProgrammatic(data.color) then
					for key,value in pairs(textData) do
						if isTextProgrammatic(value) then
							textData[key] = "~\"|c\" .. " .. data.color:sub(2) .. " .. " .. value:sub(2) .. " .. \"|r\"";
						else
							textData[key] = "~\"|c\" .. " .. data.color:sub(2) .. " .. \"" .. value .. "|r\"";
						end
					end
				else
					-- Simple color prefixing
					for key,value in pairs(textData) do
						if isTextProgrammatic(value) then
							textData[key] = "~\"|c" .. data.color .. "\" .. " .. value:sub(2) .. " .. \"|r\"";
						else
							textData[key] = "|c" .. data.color .. value .. "|r";
						end
					end
				end
			end
			if data.icon then
				-- Prefix the string with the texture.
				if isTextProgrammatic(data.icon) then
					for key,value in pairs(textData) do
						if value == "" then
							textData[key] = "~\"|T\" .. " .. data.icon:sub(2) .. " .. \":0|t\"";
						elseif isTextProgrammatic(value) then
							textData[key] = "~\"|T\" .. " .. data.icon:sub(2) .. " .. \":0|t \" .. " .. value:sub(2);
						else
							textData[key] = "~\"|T\" .. " .. data.icon:sub(2) .. " .. \":0|t " .. value .. "\"";
						end
					end
				else
					-- Simple texture prefixing (this is very infrequent)
					for key,value in pairs(textData) do
						if value == "" then
							textData[key] = "|T" .. data.icon .. ":0|t";
						elseif isTextProgrammatic(value) then
							textData[key] = "~\"|T" .. data.icon .. ":0|t \" .. " .. value:sub(2);
						else
							textData[key] = "|T" .. data.icon .. ":0|t " .. value;
						end
					end
				end
			end
			for key,value in pairs(textData) do
				textData[key] = textData[key]:gsub("\" .. \"", "");
			end
		end
	end
end
end)();

-- Create a Header. Returns a UNIQUE ID, starting at 0.
(function()
if not NextHeaderID then
	-- Once we've eliminated all of the old style NPC IDs, we can change this value and
	-- delete the Dynamic Header IDs file to reassign easier to manage header IDs.
	NextHeaderID = -1;
	HeaderAssignments = {};
end
---@type table<ATTHeaderID, ATTHeaderDefinition>
local customHeaders = {};
local customHeadersByReadable, customHeadersByConstant = {}, {};
---@type table<ATTHeaderID, ATTHeaderDefinition>
CustomHeaders = customHeaders;	-- This is global, so that it can be found by Parser!
--- Serializes sorted table key/value pairs into a Lua table-literal string.
---@param t table<string, string|number>
---@return string
local concatKeyPairs = function(t)
	local keys = {};
	for key,value in pairs(t) do
		table.insert(keys, key);
	end
	table.sort(keys);
	local schedule = "{";
	for i,key in ipairs(keys) do
		if i > 1 then
			schedule = schedule .. ",";
		end
		schedule = schedule .. "[\"" .. key .. "\"]=" .. t[key];
	end
	return schedule .. "}";
end
--- Converts a parser date table into a Unix timestamp.
---@param t ATTDateParts
---@return integer
local getTimestamp = function(t)
	return os.time({
		year=t.year,
		month=t.month,
		day=t.monthDay or t.day,
		hour=t.hour,
		minute=t.minute,
	});
end
local SECONDS_IN_A_DAY = 86400;
local SECONDS_IN_A_WEEK = 604800;
-- Creates a Custom Header for use within ATT data
-- 'npcfill = true' indicates that Things Sourced under this Header can be 'filled' into the corresponding NPC Sources if tagged with applicable NPC data
--- Creates and registers a custom ATT header, returning its unique header ID.
--- Registers a reusable parser header definition and returns its header ID.
--- Header metadata is indexed for parser generation and can later be referenced
--- through `header(...)`, `n(...)`, or generated constants.
---@param data ATTHeaderInputDefinition
---@return ATTHeaderID|nil
createHeader = function(data)
	if not data then
		print("INVALID HEADER: You must pass data into the createHeader function.");
	elseif not data.readable then
		print("INVALID HEADER (missing 'readable')", data.readable or (type(data.text) == "table" and data.text.en) or data.text);
	elseif not (data.text and (type(data.text) == "string" or (type(data.text) == "table" and data.text.en))) then
		print("INVALID HEADER", data.readable, data.text);
	else
		if data.constant then
			if customHeadersByConstant[data.constant] then
				error("ERROR: HEADER CONSTANT " .. data.constant .. " ALREADY ASSIGNED TO " .. customHeadersByConstant[data.constant].text.en .. ". Please double check that the header definitions are unique or reuse the same header.");
			else
				customHeadersByConstant[data.constant] = data;
			end
		end
		if customHeadersByReadable[data.readable] then
			error("ERROR: HEADER READABLE " .. data.readable .. " ALREADY ASSIGNED TO " .. customHeadersByReadable[data.readable].text.en .. ". Please double check that the header definitions are unique or reuse the same header.");
		else
			customHeadersByReadable[data.readable] = data;
		end
		if data.eventSchedule then
			local schedule = "{";
			local currentDate = os.date("*t");
			if data.eventSchedule[1] == 0 then	-- Set Start and End Date
				local startTime = {
					year=data.eventSchedule[2],
					month=data.eventSchedule[3],
					monthDay=data.eventSchedule[4],
					--weekday=7,	-- generated below
					hour=0,
					minute=0,
				};
				local endTime = {
					year=data.eventSchedule[5] or (currentDate.year + 1),
					month=data.eventSchedule[6] or data.eventSchedule[3],
					monthDay=data.eventSchedule[7] or data.eventSchedule[4],
					--weekday=7,	-- generated below
					hour=0,
					minute=0,
				};

				-- Generate Time Stamps and add the weekday to the objects
				startTime.weekday = os.date("*t", getTimestamp(startTime)).wday;
				endTime.weekday = os.date("*t", getTimestamp(endTime)).wday;

				-- Append the schedule
				schedule = schedule .. "\n\t_.Modules.Events.CreateSchedule(" .. concatKeyPairs(startTime) .. "," .. concatKeyPairs(endTime)  .. ")";
			elseif data.eventSchedule[1] == 1 then	-- Recurring, every year forever on the same dates.
				local veryfirst = true;
				for yearOffset = -1,1,1 do
					if veryfirst then
						veryfirst = false;
					else
						schedule = schedule .. ",";
					end
					local startTime = {
						year=currentDate.year + yearOffset,
						month=data.eventSchedule[2],
						monthDay=data.eventSchedule[3],
						--weekday=7,	-- generated below
						hour=data.eventSchedule[4],
						minute=data.eventSchedule[5],
					};
					local endTime = {
						year=currentDate.year + yearOffset,
						month=data.eventSchedule[6],
						monthDay=data.eventSchedule[7],
						--weekday=7,	-- generated below
						hour=data.eventSchedule[8],
						minute=data.eventSchedule[9],
					};
					-- Feast of Winter Veil, for example, goes from Dec (Month 12) to Jan (Month 01)
					if endTime.month < startTime.month then
						endTime.year = endTime.year + 1;
					end

					-- Generate Time Stamps and add the weekday to the objects
					startTime.weekday = os.date("*t", getTimestamp(startTime)).wday;
					endTime.weekday = os.date("*t", getTimestamp(endTime)).wday;

					-- Append the schedule
					schedule = schedule .. "\n\t_.Modules.Events.CreateSchedule(" .. concatKeyPairs(startTime) .. "," .. concatKeyPairs(endTime) .. ")";
				end
			elseif data.eventSchedule[1] == 2 then	-- Recurring every month on the first Sunday until the next Sunday.
				-- START_YEAR, START_MONTH
				-- Example: 2023, 5
				local eventIDs = data.eventIDs;
				if not eventIDs then
					print("INVALID HEADER", data.readable, " INVALID SCHEDULE, MISSING EVENT IDs!");
					return;
				end
				local totalEventIDs = #eventIDs;
				if totalEventIDs < 1 then
					print("INVALID HEADER", data.readable, " INVALID SCHEDULE, EVENT IDs EMPTY!");
					return;
				end

				-- Calculate the difference between the specified month/year and the current month/year
				local year, month, totalMonthOffset = data.eventSchedule[2], data.eventSchedule[3], 0;
				local currentYear, currentMonth = currentDate.year, currentDate.month;
				while year < currentYear do
					while month <= 12 do
						month = month + 1;
						totalMonthOffset = totalMonthOffset + 1;
					end
					month = 1;
					year = year + 1;
				end
				while month < currentMonth do
					month = month + 1;
					totalMonthOffset = totalMonthOffset + 1;
				end

				-- Go back one month, to get last month's data.
				totalMonthOffset = (totalMonthOffset + totalEventIDs) - 1;	-- Ensure the offset is 0 or more
				month = month - 1;
				if month == 0 then month = 12; end

				local veryfirst = true;
				for monthOffset = 0,10,1 do
					if veryfirst then
						veryfirst = false;
					else
						schedule = schedule .. ",";
					end

					-- Grab the current eventID
					local eventID = eventIDs[(totalMonthOffset % totalEventIDs) + 1];

					-- Determine the first sunday
					local startTime = {
						year=year,
						month=month,
						monthDay=1,
						--weekday=7,	-- generated below
						hour=0,
						minute=0,
					};
					local startTimeStamp = getTimestamp(startTime) + 30;	-- Add a 30 second offset to prevent bad imprecision from causing problems.

					-- Find the first Sunday of the Month
					for dayOffset = 1,14,1 do
						if os.date("*t", startTimeStamp).wday == 1 then
							break;
						end
						startTime.monthDay = startTime.monthDay + 1;
						startTimeStamp = getTimestamp(startTime);
					end

					-- Determine the next Sunday
					local endTime = {
						year=startTime.year,
						month=startTime.month,
						monthDay=startTime.monthDay + 7,
						--weekday=7,	-- generated below
						hour=0,
						minute=0,
					};
					local endTimeStamp = getTimestamp(endTime);
					startTime.weekday = os.date("*t", startTimeStamp).wday;
					endTime.weekday = os.date("*t", endTimeStamp).wday;

					-- Append the schedule
					schedule = schedule .. "\n\t_.Modules.Events.CreateSchedule(" .. concatKeyPairs(startTime) .. "," .. concatKeyPairs(endTime) .. ",{[\"remappedID\"]=" .. eventID .. "})";

					totalMonthOffset = totalMonthOffset + 1;
					month = month + 1;
					if month > 12 then
						month = 1;
						year = year + 1;
					end
				end
			elseif data.eventSchedule[1] == 3 then	-- Recurring every two weeks, lasting a week.
				-- START_YEAR, START_MONTH, START_DAY
				-- Example: 2023, 12, 4
				local eventIDs = data.eventIDs;
				if not eventIDs then
					print("INVALID HEADER", data.readable, " INVALID SCHEDULE, MISSING EVENT IDs!");
					return;
				end
				local totalEventIDs = #eventIDs;
				if totalEventIDs < 1 then
					print("INVALID HEADER", data.readable, " INVALID SCHEDULE, EVENT IDs EMPTY!");
					return;
				end

				-- Specify the first recorded event matching the first eventID.
				local startTimeStamp = getTimestamp({
					year=data.eventSchedule[2],
					month=data.eventSchedule[3] or 1,
					monthDay=data.eventSchedule[4] or 1,
					--weekday=7,	-- generated below
					hour=0,
					minute=0,
				}) + 30;	-- Add a 30 second offset to prevent bad imprecision from causing problems.

				-- Calculate the difference between the first recorded event to now.
				local currentTimeStamp = os.time(currentDate);
				local totalOffset, SECONDS_IN_TWO_WEEKS = 0, SECONDS_IN_A_WEEK * 2;
				while true do
					startTimeStamp = startTimeStamp + SECONDS_IN_TWO_WEEKS;
					if startTimeStamp < currentTimeStamp then
						totalOffset = totalOffset + 1;
					else
						-- We want at least one event behind us if it is still active.
						startTimeStamp = startTimeStamp - SECONDS_IN_TWO_WEEKS;
						break;
					end
				end

				-- Now generate a full years worth of events going forward.
				local veryfirst = true;
				for week = 0,26,1 do
					if veryfirst then
						veryfirst = false;
					else
						schedule = schedule .. ",";
					end

					-- Determine when the event is supposed to end.
					local startTime = os.date("*t", startTimeStamp);
					local endTime = os.date("*t", startTimeStamp + SECONDS_IN_A_WEEK);

					-- Append the schedule
					schedule = schedule .. "\n\t_.Modules.Events.CreateSchedule(" .. concatKeyPairs({
						year=startTime.year,
						month=startTime.month,
						monthDay=startTime.day,
						weekday=startTime.wday,
						hour=0,
						minute=0,
					}) .. "," .. concatKeyPairs({
						year=endTime.year,
						month=endTime.month,
						monthDay=endTime.day,
						weekday=endTime.wday,
						hour=0,
						minute=0,
					}) .. ",{[\"remappedID\"]=" .. eventIDs[(totalOffset % totalEventIDs) + 1] .. "})";

					-- Adjust by 2 weeks.
					startTimeStamp = startTimeStamp + SECONDS_IN_TWO_WEEKS;
					totalOffset = totalOffset + 1;
				end
			elseif data.eventSchedule[1] == 4 then	-- Recurring every week between specific weekdays and times
				-- START: WEEKDAY, HOUR, MINUTE, DURATION (in minutes)
				-- Example: 1, 21, 0, 120,	-- Sunday at 09:00 PM (21:00) until 11:00 AM (23:00)
				-- Calculate the Duration of the Event (in seconds)
				local durationOfEvent = data.eventSchedule[5] * 60;

				-- Find the first timestamp matching the desired weekday.
				local weekday = data.eventSchedule[2];
				local startTimeStamp = getTimestamp({
					year=currentDate.year,
					month=currentDate.month,
					monthDay=currentDate.day,
					hour=data.eventSchedule[3],
					minute=data.eventSchedule[4],
				}) + 30;	-- Add a 30 second offset to prevent bad imprecision from causing problems.
				while os.date("*t", startTimeStamp).wday ~= weekday do
					startTimeStamp = startTimeStamp - SECONDS_IN_A_DAY;
				end

				-- Calculate the difference between the first recorded event to now.
				local currentTimeStamp = os.time(currentDate);
				local totalOffset = 0;
				while true do
					startTimeStamp = startTimeStamp + SECONDS_IN_A_WEEK;
					if startTimeStamp < currentTimeStamp then
						totalOffset = totalOffset + 1;
					else
						-- We want at least one event behind us if it is still active.
						startTimeStamp = startTimeStamp - SECONDS_IN_A_WEEK;
						break;
					end
				end

				-- Hour and minute don't change per week, so make sure these persist since there's randomly rounding errors in time?
				local eventHour, eventMinute = data.eventSchedule[3], data.eventSchedule[4]

				-- Now generate a full years worth of events going forward.
				local veryfirst = true;
				for week = 0,52,1 do
					if veryfirst then
						veryfirst = false;
					else
						schedule = schedule .. ",";
					end

					-- Determine when the event is supposed to end.
					local startTime = os.date("*t", startTimeStamp);
					startTime.hour = eventHour ~= 0 and eventHour or nil
					startTime.minute = eventMinute ~= 0 and eventMinute or nil
					local endTime = os.date("*t", getTimestamp(startTime) + durationOfEvent);

					-- Append the schedule
					schedule = schedule .. "\n\t_.Modules.Events.CreateSchedule(" .. concatKeyPairs({
						year=startTime.year,
						month=startTime.month,
						monthDay=startTime.day,
						weekday=startTime.wday,
						hour=startTime.hour,
						minute=startTime.minute,
					}) .. "," .. concatKeyPairs({
						year=endTime.year,
						month=endTime.month,
						monthDay=endTime.day,
						weekday=endTime.wday,
						hour=endTime.hour,
						minute=endTime.minute,
					}) .. ")";

					-- Adjust by 1 week.
					startTimeStamp = startTimeStamp + SECONDS_IN_A_WEEK;
					totalOffset = totalOffset + 1;
				end
			elseif data.eventSchedule[1] == 5 then	-- Setup Phase: Starts the first Friday of the month (3 days of assembly with no vendors). Open Phase: Opens on Monday following setup and stays active until Sunday evening.
				-- START_YEAR, START_MONTH
				-- Example: 2026, 7
				local eventIDs = data.eventIDs;
				if not eventIDs then
					print("INVALID HEADER", data.readable, " INVALID SCHEDULE, MISSING EVENT IDs!");
					return;
				end
				local totalEventIDs = #eventIDs;
				if totalEventIDs < 1 then
					print("INVALID HEADER", data.readable, " INVALID SCHEDULE, EVENT IDs EMPTY!");
					return;
				end

				-- Calculate the difference between the specified month/year and the current month/year
				local year, month, totalMonthOffset = data.eventSchedule[2], data.eventSchedule[3], 0;
				local currentYear, currentMonth = currentDate.year, currentDate.month;
				while year < currentYear do
					while month <= 12 do
						month = month + 1;
						totalMonthOffset = totalMonthOffset + 1;
					end
					month = 1;
					year = year + 1;
				end
				while month < currentMonth do
					month = month + 1;
					totalMonthOffset = totalMonthOffset + 1;
				end

				-- Go back one month, to get last month's data.
				totalMonthOffset = (totalMonthOffset + totalEventIDs) - 1;	-- Ensure the offset is 0 or more
				month = month - 1;
				if month == 0 then month = 12; end

				local veryfirst = true;
				for monthOffset = 0,10,1 do
					if veryfirst then
						veryfirst = false;
					else
						schedule = schedule .. ",";
					end

					-- Grab the current eventID
					local eventID = eventIDs[(totalMonthOffset % totalEventIDs) + 1];

					-- Determine the first Friday
					local startTime = {
						year=year,
						month=month,
						monthDay=1,
						--weekday=7,	-- generated below
						hour=0,
						minute=0,
					};
					local startTimeStamp = getTimestamp(startTime) + 30;	-- Add a 30 second offset to prevent bad imprecision from causing problems.

					-- Find the first Friday of the Month
					for dayOffset = 1,14,1 do
						if os.date("*t", startTimeStamp).wday == 6 then
							break;
						end
						startTime.monthDay = startTime.monthDay + 1;
						startTimeStamp = getTimestamp(startTime);
					end

					-- Determine the next Sunday
					local endTime = {
						year=startTime.year,
						month=startTime.month,
						monthDay=startTime.monthDay + 10,
						--weekday=7,	-- generated below
						hour=0,
						minute=0,
					};
					local endTimeStamp = getTimestamp(endTime);
					startTime.weekday = os.date("*t", startTimeStamp).wday;
					endTime.weekday = os.date("*t", endTimeStamp).wday;

					-- Append the schedule
					schedule = schedule .. "\n\t_.Modules.Events.CreateSchedule(" .. concatKeyPairs(startTime) .. "," .. concatKeyPairs(endTime) .. ",{[\"remappedID\"]=" .. eventID .. "})";

					totalMonthOffset = totalMonthOffset + 1;
					month = month + 1;
					if month > 12 then
						month = 1;
						year = year + 1;
					end
				end

			else
				print("INVALID HEADER", data.readable, " INVALID SCHEDULE TYPE", data.eventSchedule[1]);
				return;
			end
			---@cast data -ATTHeaderInputDefinition, +ATTHeaderProcessingDefinition
			data.eventSchedule = schedule .. "\n}";
		end

		-- Whether or not to allow empty headers for this type (Default: No)
		if not data.standalone then data.standalone = false; end
		---@cast data -ATTHeaderInputDefinition, -ATTHeaderProcessingDefinition, +ATTHeaderDefinition

		-- Try to find the headerID assignment from the readable table.
		local headerID = HeaderAssignments[data.readable];
		if not headerID then
			headerID = NextHeaderID;
			NextHeaderID = NextHeaderID - 1;
		end
		if customHeaders[headerID] then
			error("ERROR: HEADER ID " .. headerID .. " ALREADY ASSIGNED TO " .. customHeaders[headerID].readable .. ", but attempting to assign to " .. data.readable .. ". Please double check that the header definitions are different");
			return;
		end
		customHeaders[headerID] = data;
		---@diagnostic disable-next-line: undefined-global
		data.filepath = CurrentSubFileName or CurrentFileName;
		--print("HEADER", headerID .. ":", data.readable or (type(data.text) == "table" and data.text.en) or data.text);
		return headerID;
	end
end
--[[
-- Here's an example showing all the different supported fields.
CRIEVES_SUPER_COOL_HEADER = createHeader({
	readable = "Crieve's Super Cool Header",
	constant = "CRIEVES_SUPER_COOL_HEADER",	-- If you specify a constant, the identifier will become accessible in the addon code (app.HeaderConstants.CRIEVES_SUPER_COOL_HEADER)
	icon = 12345,
	text = {
		en = "Crieve's Super Cool Header",
		ru = "TODO: Russion Translation Here",
	},
	description = {
		en = "This is just an example!",
	},
});
]]--
local temporaryHeaderAssignments = {};
--- Returns a programmatic header-translation token for a header ID or localization table.
---@param data? ATTHeaderID|table<string, string>
---@param key? string|integer
---@return string|nil
translate = function(data, key)
	if not data then
		print("INVALID TRANSLATION: You must pass data into the translate function.");
	else
		if type(data) == "number" then
			if key then data = data .. ":" .. key; end
			return "~H:" .. data;
		else
			if not data.en then
				print("INVALID TRANSLATION (missing 'en')", data.en or (type(data.text) == "table" and data.text) or data);
			else
				-- We want to reuse this headerID for things that use the same translation data.
				local headerID = temporaryHeaderAssignments[data.en];
				if not headerID then
					headerID = createHeader({ readable = data.en, text = data });
					temporaryHeaderAssignments[data.en] = headerID;
				end
				return "~H:" .. headerID;
			end
		end
	end
end
end)();

-- Create a Custom Object. Returns a UNIQUE ID, starting at 100000000.
(function()
local nextCustomObjectID = 100000000;
--- Registers a custom object and returns its unique object ID.
--- Registers a reusable custom parser object and returns its custom object ID.
--- Custom objects are parser definitions, not ordinary runtime WoW API objects.
---@param data ATTCustomObjectDefinition
---@return ObjectID|nil
createCustomObject = function(data)
	if not data then
		print("INVALID OBJECT: You must pass data into the createCustomObject function.");
	elseif not data.readable then
		print("INVALID OBJECT (missing 'readable')", data.readable or (type(data.text) == "table" and data.text.en) or data.text);
	elseif not (data.text and (type(data.text) == "string" or (type(data.text) == "table" and data.text.en))) then
		print("INVALID OBJECT", data.readable, data.text);
	else
		local objectID = nextCustomObjectID;
		ObjectDB[objectID] = data;
		nextCustomObjectID = objectID + 1;
		return objectID;
	end
end
end)();

do
local itemDBConditional = ItemDBConditional;
local CurrentProfessionID = ALCHEMY;
--- Updates parser ItemDB/RecipeDB metadata for a recipe and its profession requirement.
--- Links an item and recipe in the parser-side ItemDB/RecipeDB.
--- This records recipe metadata, profession requirements, and optional
--- unobtainable state so generated database files can resolve the relationship.
---@param itemID ItemID
---@param recipeID RecipeID
---@param unobtainStatus? ATTUnobtainableStatus
---@param requireSkill? SkillID
---@return ATTObject
local ItemRecipeHelper = function(itemID, recipeID, unobtainStatus, requireSkill)
	-- Cache the object.
	local object;
	if itemID == 0 then
		-- The RecipeDB table isn't setup to always return a value.
		object = RecipeDB[recipeID];
	else
		-- Cache the object as an item
		object = itemDBConditional[itemID];

		-- Update the recipeID.
		local originalSpellID = object.spellID;
		local originalRecipeID = object.recipeID;
		if not originalRecipeID then
			object.recipeID = recipeID;
		elseif originalRecipeID ~= recipeID then
			-- Replace it, but also show a warning.
			print("Item", itemID, "recipeID changed", originalRecipeID, ">", recipeID);
			object.recipeID = recipeID;
		end

		-- Check for a spellID.
		if originalSpellID then
			object.spellID = nil;
			if not (originalSpellID == originalRecipeID or originalSpellID == recipeID) then
				print("Item", itemID, "spellID changed", originalSpellID, "> nil");
			end
		end
	end

	-- Mark it as a recipe.
	object.f = RECIPES;

	-- Update the skill requirement.
	if requireSkill then
		if itemID ~= 0 then
			RecipeDB[recipeID]._requireSkill = requireSkill;
		end
	end
	requireSkill = requireSkill or CurrentProfessionID;
	local originalRequireSkill = object.requireSkill;
	if not originalRequireSkill then
		if itemID ~= 0 then
			RecipeDB[recipeID].requireSkill = requireSkill;
		end
		object.requireSkill = requireSkill;
	elseif originalRequireSkill ~= requireSkill then
		-- Replace it, but also show a warning.
		if itemID == 0 then
			print("Recipe", recipeID, "requireSkill changed", originalRequireSkill, ">", requireSkill);
		else
			print("Item", itemID, "requireSkill changed", originalRequireSkill, ">", requireSkill);
			RecipeDB[recipeID].requireSkill = requireSkill;
		end
		object.requireSkill = requireSkill;
	end

	-- allow for timeline to be a raw 'u' value or single string of 'timeline' or table of multiple 'timeline' values
	local unobtainType = unobtainStatus and type(unobtainStatus);
	if unobtainType then
		if unobtainType == "number" then
			---@cast unobtainStatus integer
			-- #if ANYCLASSIC
			-- CRIEVE NOTE: At this time, this is exclusive to Classic builds.
			RecipeDB[recipeID].u = unobtainStatus
			-- #endif
		elseif unobtainType == "string" then
			---@cast unobtainStatus ATTTimelineEvent
			object.timeline = { unobtainStatus };
		elseif unobtainType == "table" then
			---@cast unobtainStatus ATTTimelineEvent[]
			object.timeline = unobtainStatus;
		end
	end
	return object;
end
--- Sets the active profession and returns the item/recipe helper function.
---@param professionID SkillID
---@return fun(itemID: ItemID, recipeID: RecipeID, unobtainStatus?: ATTUnobtainableStatus, requireSkill?: SkillID): ATTObject
GetRecipeHelperForProfession = function(professionID)
	CurrentProfessionID = professionID;
	return ItemRecipeHelper;
end


--[[
-- Proof of Concept:
-- If you assign new partial data to the item, it'll retain its previous data instead of discarding it.
local disgustingOozeling = ItemDBConditional[20769];
disgustingOozeling.spellID = 25162;
disgustingOozeling.speciesID = 114;

ItemDBConditional[20769] = { description = "What a shame it would be to lose this data..." };

print("Disgusting Oozeling contains:");
for key,value in pairs(ItemDBConditional[20769]) do
	print(" " .. key .. ": " .. value);
end
]]--
end
