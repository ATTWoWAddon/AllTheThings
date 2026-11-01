-- Provides an all-in-one builder object to help with consistently building Instance content


-- Provides an InstanceHelper based on a BossID-keyed set of tables to define and fill Encounter objects per Difficulty
--
-- crs 		  = { [bossID] = {crs}, ... }
-- loots 	  = { [bossID] = {i(###),i(###)}, ... }
-- extraLoots = { extraLootData, extraLootData, ... }
-- | extraLootData = { Add = func(encounter, bossID, difficultyID, [data]), Data = { [bossID] = {i(###),i(###)}, ... } }
--- Encounter or NPC identifier used to key boss configuration.
---@alias ATTInstanceBossID JournalEncounterID|NPCID

--- Boss-keyed extra loot and a callback that can mutate the encounter.
---@class ATTInstanceExtraLoot
---@field Add fun(encounter: ATTObject, bossID: ATTInstanceBossID, difficultyID: DifficultyID|DifficultyID[]|nil, data: table<ATTInstanceBossID, ATTObject|ATTObjectArray>): ATTObject|nil # May mutate the boss; its return value is ignored.
---@field Data table<ATTInstanceBossID, ATTObject|ATTObjectArray> # Boss-keyed extra loot data.
---
--- Wraps supplied boss loot in a header object.
---@alias ATTInstanceHeaderFunc fun(groups: ATTObjectArray|nil): ATTObject
--- A difficulty object with fluent functions accessed using dot calls.
---@class ATTInstanceDifficulty: ATTDifficultyObject
---@field AddGroups fun(groups?: ATTObjectArray): ATTInstanceDifficulty # Appends child groups and returns this difficulty.
---@field AddGroupsWithUpgrades fun(groups?: ATTObjectArray): ATTInstanceDifficulty # Appends child groups, applies upgrades, and returns this difficulty.
---@field WithUpgrades fun(): ATTInstanceDifficulty # Applies upgrades to existing groups and returns this difficulty.
---

--- Creates a builder using boss-keyed creature and optional loot data.
---@param crs table<ATTInstanceBossID, CreatureID[]> # Boss-keyed creature IDs.
---@param loots? table<ATTInstanceBossID, ATTObjectArray> # Boss-keyed loot arrays, required by loot-building methods.
---@param zonedrops? ATTObject|ATTObjectArray # Zone-drop data; required when ZoneDrops merges groups.
---@return ATTInstanceHelper # Builder configured with the supplied boss data.
CreateInstanceHelper = function(crs, loots, zonedrops)
	--- Builder state and functions returned by CreateInstanceHelper.
	---@class ATTInstanceHelper
	---@field TreatBossesAsNpcOnly? boolean # Construct bosses as NPCs instead of encounters.
	---@field Coords? table<ATTInstanceBossID, ATTRawCoordinates> # Boss-keyed coordinate inputs.
	---@field BossObjects? table<ATTInstanceBossID, ObjectID[]> # Boss-keyed object providers.
	---@field ExtraLoots? ATTInstanceExtraLoot[] # Additional loot callbacks and data.
	---@field UpgradeMapping? table<DifficultyID, number> # Difficulty-keyed upgrade values; zero skips upgrades.
	---@field LFRQueueNPC? ATTObject # Source for queue NPC creature and coordinate fields.
	---@field BossOnly fun(id: ATTInstanceBossID, t?: ATTObject|ATTObjectArray): ATTEncounterObject|ATTNPCObject|ATTHeaderObject # Builds boss metadata without adding loot.
	---@field Boss fun(id: ATTInstanceBossID, t?: ATTObject|ATTObjectArray): ATTEncounterObject|ATTNPCObject|ATTHeaderObject # Builds a boss with configured extra and regular loot.
	---@field BossWithHeader fun(id: ATTInstanceBossID, headerFunc: ATTInstanceHeaderFunc, t?: ATTObject|ATTObjectArray): ATTEncounterObject|ATTNPCObject|ATTHeaderObject # Builds a boss with regular loot wrapped by the header function.
	---@field BossWorldQuest fun(id: ATTInstanceBossID, questID: QuestID, t?: ATTObject|ATTObjectArray): ATTQuestObject # Builds a world quest linked to the boss encounter.
	---@field Difficulty fun(difficultyID: DifficultyID|DifficultyID[], t?: ATTObject|ATTObjectArray): ATTInstanceDifficulty # Creates a difficulty and records its original ID or ID list.
	---@field CommonBossDrops fun(t?: ATTObjectArray): ATTObject # Wraps drops with all boss creature IDs.
	---@field ZoneDrops fun(groups?: ATTObjectArray): ATTObject # Builds a zone-drop header, optionally merging additional groups.
	---@field RawAllBosses fun(groups?: ATTObjectArray): ATTObjectArray|nil # Assigns all boss creature IDs to each group and returns the input.
	---@field WithUpgrades fun(groups?: ATTObjectArray) # Mutates eligible items using the current difficulty upgrade mapping.
	local helper = {}
	---@type DifficultyID|DifficultyID[]|nil
	local CurrentDifficultyID
	---@type CreatureID[]
	local ALL_BOSSES = {}
	for _,v in pairs(crs) do
		appendAllGroups(ALL_BOSSES, v)
	end
	--- Constructs an encounter or NPC without adding loot.
	---@param id ATTInstanceBossID # Boss encounter or NPC identifier.
	---@param t? ATTObject|ATTObjectArray # Optional object fields or child groups.
	local function BossOnly(id, t)
		if not t and type(id) ~= "number" then
			error("Missing id for boss. Got instead: ",id)
		end
		local encounter = (helper.TreatBossesAsNpcOnly and n or e)(id, t)
		encounter.crs = crs[id]
		if helper.Coords and not encounter.coord then
			encounter.coord = helper.Coords[id]
		end
		if helper.BossObjects then
			local bossObjects = helper.BossObjects[id]
			if bossObjects then
				local bossProviders = encounter.providers
				if not bossProviders then
					bossProviders = {}
					encounter.providers = bossProviders
				end
				for i=1,#bossObjects do
					bossProviders[#bossProviders + 1] = { "o", bossObjects[i] }
				end
			end
		end
		return encounter
	end
	--- Constructs a boss and adds configured extra and regular loot.
	---@param id ATTInstanceBossID # Boss encounter or NPC identifier.
	---@param t? ATTObject|ATTObjectArray # Optional object fields or child groups.
	local function Boss(id, t)
		--- This method requires the loot map supplied to CreateInstanceHelper.
		---@cast loots -nil
		local encounter = BossOnly(id, t)
		if helper.ExtraLoots then
			local add, data
			for _,extraLootData in ipairs(helper.ExtraLoots) do
				add, data = extraLootData.Add, extraLootData.Data
				if (not add or type(add) ~= "function") or (not data or type(data) ~= "table") then
					print("'extraLoots' expects an array of tables with { Add = func(encounter, bossID, difficultyID, [data]), Data = { [bossID] = {i(###),i(###)}, ... } }")
				end
				add(encounter, id, CurrentDifficultyID, data)
			end
		end
		encounter.groups = appendAllGroups(encounter.groups, clone(loots[id]))
		return encounter
	end
	-- Represents a World Quest that requires defeating an Encounter
	--- Builds a world quest linked to a boss encounter.
	---@param id ATTInstanceBossID # Boss encounter or NPC identifier.
	---@param questID QuestID # World quest identifier.
	---@param t? ATTObject|ATTObjectArray # Optional quest fields or child groups.
	---@return ATTQuestObject # World quest linked to the boss.
	local function BossWorldQuest(id, questID, t)
		if not t and (type(id) ~= "number" or type(questID) ~= "number") then
			error("Missing id/questID for BossWorldQuest",id,questID)
		end
		local quest = q(questID, t)
		quest.crs = crs[id]
		quest.isWorldQuest = true
		if not quest.sym then
			quest.sym = {{"select","encounterID",id,},{"pop"}}	-- Original WB
		end
		if helper.Coords and not quest.coord then
			quest.coord = helper.Coords[id]
		end
		return quest
	end
	--- Mutates eligible nested items using the current difficulty's upgrade mapping.
	---@param groups? ATTObjectArray # Groups whose eligible nested items receive upgrades; nil does nothing.
	local function WithUpgrades(groups)
		if not groups then return end
		if not helper.UpgradeMapping then error("To use 'WithUpgrades', define InstanceHelper.UpgradeMapping = { [DifficultyID] = ModID.BonusID }") end
		local up = helper.UpgradeMapping[CurrentDifficultyID]
		if not up then print("Missing 'UpgradeMapping' for Difficulty ",CurrentDifficultyID) end
		-- allow a 0 upgrade to basically skip applying upgrades on that difficulty... some situations where this is desirable
		if up == 0 then return end
		for _,o in ipairs(groups) do
			-- add upgrades within certain nested groups
			if o.groups and (o.npcID or o.headerID or o.itemID or o.encounterID) then
				WithUpgrades(o.groups)
			elseif o.itemID and not o.up then
				o.up = up
			end
		end
	end
	--- Builds a boss with cloned regular loot wrapped in a header.
	---@param id ATTInstanceBossID # Boss encounter or NPC identifier.
	---@param headerFunc ATTInstanceHeaderFunc # Builds the header around cloned regular loot.
	---@param t? ATTObject|ATTObjectArray # Optional object fields or child groups.
	local function BossWithHeader(id, headerFunc, t)
		--- This method requires the loot map supplied to CreateInstanceHelper.
		---@cast loots -nil
		if not t and (type(headerFunc) ~= "function" or type(id) ~= "number") then
			error("Missing valid id/headerFunc for BossWithHeader",id,headerFunc)
		end
		local encounter = BossOnly(id, t)
		encounter.groups = appendAllGroups(encounter.groups, {headerFunc(clone(loots[id]))})
		return encounter
	end
	--- Wraps common drops with all boss creature IDs.
	---@param t? ATTObjectArray # Common drop groups.
	local function CommonBossDrops(t)
		return n(COMMON_BOSS_DROPS, {
					crs = ALL_BOSSES,
					groups = t,
				})
	end
	--- Assigns all boss creature IDs to each supplied group.
	---@param groups? ATTObjectArray # Groups to update in place.
	---@return ATTObjectArray|nil # The same groups, or nil when none were supplied.
	local function RawAllBosses(groups)
		if not groups or not isarray(groups) then
			print("Expecting array type for AddGroups for InstanceHelper")
			return groups
		end
		for _,o in ipairs(groups) do
			o.crs = ALL_BOSSES
		end
		return groups
	end
	--- Builds the zone-drop header and optionally merges groups.
	---@param groups? ATTObjectArray # Additional groups to merge into zone drops.
	local function ZoneDrops(groups)
		if groups then
			return n(ZONE_DROPS, { groups = appendGroups(clone(zonedrops), groups)})
		end
		return n(ZONE_DROPS, clone(zonedrops))
	end
	local helperMeta = {
		--- Provides fluent difficulty operations through the metatable.
		---@param t ATTInstanceDifficulty # Difficulty that receives the operation.
		---@param key string # Requested operation name.
		---@return (fun(groups?: ATTObjectArray): ATTInstanceDifficulty)|nil # The requested operation, or nil for an unknown key.
		__index = function(t, key)
			if key == "AddGroups" then
				--- Appends child groups to the difficulty.
				---@param groups? ATTObjectArray|ATTObject # Child groups to append.
				---@return ATTInstanceDifficulty # The difficulty, including when invalid groups are rejected.
				return function(groups)
					if not groups or not isarray(groups) or groups.g then
						print("Expecting array type for AddGroups for InstanceHelper")
						return t
					end
					t.groups = appendAllGroups(t.groups, groups)
					return t
				end
			elseif key == "AddGroupsWithUpgrades" then
				--- Appends groups and applies difficulty upgrades.
				---@param groups? ATTObjectArray|ATTObject # Child groups to append before applying upgrades.
				---@return ATTInstanceDifficulty # The difficulty, including when invalid groups are rejected.
				return function(groups)
					if not groups or not isarray(groups) or groups.g then
						print("Expecting array type for AddGroups for InstanceHelper")
						return t
					end
					t.groups = appendAllGroups(t.groups, groups)
					WithUpgrades(t.groups)
					return t
				end
			elseif key == "WithUpgrades" then
				--- Applies upgrades to existing difficulty groups.
				---@return ATTInstanceDifficulty # The difficulty after applying upgrades.
				return function()
					WithUpgrades(t.groups)
					return t
				end
			end
		end
	}
	--- Creates a fluent difficulty object and records the supplied difficulty.
	---@param difficultyID DifficultyID|DifficultyID[] # Difficulty ID or list used for subsequent boss loot.
	---@param t? ATTObject|ATTObjectArray # Optional difficulty fields or child groups.
	---@return ATTDifficultyObject # Difficulty object with fluent group helpers.
	local function Difficulty(difficultyID, t)
		local diff = d(difficultyID, t)
		diff = togroups(diff)
		--- d() normalizes input groups and supplies difficultyID before this call.
		---@cast diff ATTDifficultyObject
		-- d() can sometimes change the applied difficultyID, so just track the exact one passed in since
		-- it's likely the same one re-used in the file
		CurrentDifficultyID = difficultyID
		if helper.LFRQueueNPC and (difficultyID == DIFFICULTY.RAID.LFR or difficultyID == DIFFICULTY.RAID.MULTI.ALL or difficultyID == DIFFICULTY.RAID.MULTI.ALL_WITHOUT_MYTHIC) then
			-- assign the crs/coords to the difficulty group
			diff.cr = clone(helper.LFRQueueNPC.cr)
			diff.crs = clone(helper.LFRQueueNPC.crs)
			diff.coord = clone(helper.LFRQueueNPC.coord)
			diff.coords = clone(helper.LFRQueueNPC.coords)
		end
		return setmetatable(diff, helperMeta)
	end

	helper.BossOnly = BossOnly
	helper.Boss = Boss
	helper.BossWithHeader = BossWithHeader
	helper.BossWorldQuest = BossWorldQuest
	helper.Difficulty = Difficulty
	helper.CommonBossDrops = CommonBossDrops
	helper.ZoneDrops = ZoneDrops
	helper.RawAllBosses = RawAllBosses
	helper.WithUpgrades = WithUpgrades
	return helper
end

--- Builds symbolic commands for Dragonflight season 4 tier tokens.
---@param modID? ModID # Modifier ID to select; omitted uses the object modifier.
---@return ATTSym # Symbolic commands selecting and filling season 4 tier tokens.
GET_SYM_DF_S4_TIER_TOKENS = function(modID)
	return {
		modID and {"usemodID",modID} or {"usemyModID"},
		{"select","modItemID",
			217324,	-- Dreadful Decelerating Chronograph
			217325,	-- Mystic Decelerating Chronograph
			217326,	-- Venerated Decelerating Chronograph
			217327,	-- Zenith Decelerating Chronograph
			217332,	-- Dreadful Synchronous Timestrand
			217333,	-- Mystic Synchronous Timestrand
			217334,	-- Venerated Synchronous Timestrand
			217335,	-- Zenith Synchronous Timestrand
			217316,	-- Dreadful Fleeting Hourglass
			217317,	-- Mystic Fleeting Hourglass
			217318,	-- Venerated Fleeting Hourglass
			217319,	-- Zenith Fleeting Hourglass
			217320,	-- Dreadful Quickened Bronzestone
			217321,	-- Mystic Quickened Bronzestone
			217322,	-- Venerated Quickened Bronzestone
			217323,	-- Zenith Quickened Bronzestone
			217328,	-- Dreadful Ephemeral Hypersphere
			217329,	-- Mystic Ephemeral Hypersphere
			217330,	-- Venerated Ephemeral Hypersphere
			217331,	-- Zenith Ephemeral Hypersphere
		},
		{"groupfill",true},
		{"pop"}}
end
