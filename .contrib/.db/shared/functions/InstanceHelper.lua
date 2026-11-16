-- Provides an all-in-one builder object to help with consistently building Instance content


-- Provides an InstanceHelper based on a BossID-keyed set of tables to define and fill Encounter objects per Difficulty
--
-- crs 		  = { [bossID] = {crs}, ... }
-- loots 	  = { [bossID] = {i(###),i(###)}, ... }
-- extraLoots = { extraLootData, extraLootData, ... }
-- | extraLootData = { Add = func(encounter, bossID, difficultyID, [data]), Data = { [bossID] = {i(###),i(###)}, ... } }
---@alias ATTInstanceHeaderBuilder fun(loot: ATTObjectArray|nil): ATTObject # Wraps regular boss loot in a header.

---@alias ATTInstanceBossID JournalEncounterID|NPCID|ATTHeaderID # Encounter or NPC key; NPC-only mode also supports custom header IDs.

--- Extra loot callbacks mutate an encounter; their return values are ignored.
---@class ATTInstanceExtraLoot
---@field Add fun(encounter: ATTObject, bossID: ATTInstanceBossID, difficulty: DifficultyID|DifficultyID[]|nil, data: table<ATTInstanceBossID, ATTObject|ATTObjectArray>): any # Mutates the encounter; its return is ignored.
---@field Data table<ATTInstanceBossID, ATTObject|ATTObjectArray> # Callback data keyed by boss.
--- Difficulty result with fluent dot-call operations.
---@class ATTInstanceDifficulty: ATTDifficultyObject
---@field AddGroups fun(groups?: ATTObjectArray): ATTInstanceDifficulty # Appends child groups.
---@field AddGroupsWithUpgrades fun(groups?: ATTObjectArray): ATTInstanceDifficulty # Appends groups and applies upgrades.
---@field WithUpgrades fun(): ATTInstanceDifficulty # Applies upgrades to current groups.

--- Creates an instance builder whose boss and loot maps use the same encounter keys.
--- Boss and BossWithHeader require a loot map; ZoneDrops needs zone loot when merging groups.
---@param crs table<ATTInstanceBossID, CreatureID[]> # Creature IDs for each boss.
---@param loots? table<ATTInstanceBossID, ATTObjectArray> # Regular loot by boss; required by Boss and BossWithHeader.
---@param zonedrops? ATTObject|ATTObjectArray # Zone-drop object or array; only array entries are appended when extra groups are supplied.
---@return ATTInstanceHelper # Builder for bosses and difficulties.
CreateInstanceHelper = function(crs, loots, zonedrops)
	--- Instance builder methods use dot-call syntax and share the last requested difficulty.
	---@class ATTInstanceHelper
	---@field TreatBossesAsNpcOnly? boolean # Build bosses as NPCs instead of encounters.
	---@field Coords? table<ATTInstanceBossID, ATTRawCoordinates> # Boss coordinate inputs accepted by Parser normalization.
	---@field BossObjects? table<ATTInstanceBossID, ObjectID[]> # Object providers to attach to each boss.
	---@field LFRQueueNPC? ATTObject # NPC and coordinate fields copied to applicable LFR difficulties.
	---@field UpgradeMapping? table<DifficultyID, number|ATTIgnoredValue> # Difficulty upgrades; zero skips and IGNORED_VALUE propagates unchanged.
	---@field ExtraLoots? ATTInstanceExtraLoot[] # Additional callbacks and boss-keyed loot data.
	---@field BossOnly fun(id: ATTInstanceBossID, t?: ATTObject|ATTObjectArray): ATTEncounterObject|ATTNPCObject|ATTHeaderObject # Builds boss metadata without loot.
	---@field Boss fun(id: ATTInstanceBossID, t?: ATTObject|ATTObjectArray): ATTEncounterObject|ATTNPCObject|ATTHeaderObject # Adds regular and extra loot to a boss.
	---@field BossWithHeader fun(id: ATTInstanceBossID, headerFunc: ATTInstanceHeaderBuilder, t?: ATTObject|ATTObjectArray): ATTEncounterObject|ATTNPCObject|ATTHeaderObject # Wraps regular loot in a header.
	---@field BossWorldQuest fun(id: ATTInstanceBossID, questID: QuestID, t?: ATTObject|ATTObjectArray): ATTQuestObject # Builds a world quest for a boss.
	---@field Difficulty fun(id: DifficultyID|DifficultyID[], t?: ATTObject|ATTObjectArray): ATTInstanceDifficulty # Builds a difficulty and records its original ID or list.
	---@field CommonBossDrops fun(groups?: ATTObjectArray): ATTHeaderObject # Creates a common-drops header referencing all bosses.
	---@field ZoneDrops fun(groups?: ATTObjectArray): ATTHeaderObject # Creates a zone-drops header, optionally merging groups.
	---@field WithUpgrades fun(groups?: ATTObjectArray) # Applies configured upgrades in place.
	local helper = {}
	---@type DifficultyID|DifficultyID[]|nil
	local CurrentDifficultyID
	---@type CreatureID[]
	local ALL_BOSSES = {}
	for _,v in pairs(crs) do
		appendAllGroups(ALL_BOSSES, v)
	end
	--- Builds encounter metadata and configured providers without adding loot.
	---@param id ATTInstanceBossID # Boss key.
	---@param t? ATTObject|ATTObjectArray # Extra fields or child groups.
	---@return ATTEncounterObject|ATTNPCObject|ATTHeaderObject # Boss metadata with creature, coordinate, and object-provider fields.
	local function BossOnly(id, t)
		if not t and type(id) ~= "number" then
			error("Missing id for boss. Got instead: ",id)
		end
		local encounter = (helper.TreatBossesAsNpcOnly and n or e)(id, t)
		--- Valid IDs use the constructors' object branch, never the legacy omitted-ID branch.
		---@cast encounter ATTEncounterObject|ATTNPCObject|ATTHeaderObject
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
	--- Builds a boss and adds regular loot plus any extra-loot callbacks.
	---@param id ATTInstanceBossID # Boss key present in the loot map.
	---@param t? ATTObject|ATTObjectArray # Extra fields or child groups.
	---@return ATTEncounterObject|ATTNPCObject|ATTHeaderObject # Boss object after adding configured extra and regular loot.
	local function Boss(id, t)
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
	--- Builds a world quest linked to the boss and its creatures.
	---@param id ATTInstanceBossID # Boss key.
	---@param questID QuestID # World quest ID.
	---@param t? ATTObject|ATTObjectArray # Extra fields or child groups.
	---@return ATTQuestObject # World quest object.
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
	--- Applies the current difficulty upgrade recursively; nil groups do nothing.
	---@param groups? ATTObjectArray # Groups to update in place.
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
	--- Wraps a clone of regular boss loot using the supplied header function.
	---@param id ATTInstanceBossID # Boss key present in the loot map.
	---@param headerFunc ATTInstanceHeaderBuilder # Creates the loot wrapper.
	---@param t? ATTObject|ATTObjectArray # Extra fields or child groups.
	---@return ATTEncounterObject|ATTNPCObject|ATTHeaderObject # Boss object containing the header-wrapped loot.
	local function BossWithHeader(id, headerFunc, t)
		if not t and (type(headerFunc) ~= "function" or type(id) ~= "number") then
			error("Missing valid id/headerFunc for BossWithHeader",id,headerFunc)
		end
		local encounter = BossOnly(id, t)
		encounter.groups = appendAllGroups(encounter.groups, {headerFunc(clone(loots[id]))})
		return encounter
	end
	--- Builds common drops associated with every boss creature.
	---@param t? ATTObjectArray # Common loot groups.
	--- COMMON_BOSS_DROPS is a custom header registered by createHeader.
	---@return ATTHeaderObject # Common-drops header listing every boss creature.
	local function CommonBossDrops(t)
		return n(COMMON_BOSS_DROPS, {
					crs = ALL_BOSSES,
					groups = t,
				}) --[[@as ATTHeaderObject]]
	end
	--- Assigns all boss creature IDs to each supplied group and returns the input.
	---@generic T: ATTObject
	---@param groups? T[] # Groups to update, or nil.
	---@return T[]|nil # The original array with its element subtype preserved, or nil.
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
	--- Builds zone drops, merging extra groups when supplied.
	---@param groups? ATTObjectArray # Additional groups; requires configured zone drops.
	--- ZONE_DROPS is a custom header registered by createHeader.
	---@return ATTHeaderObject # Zone-drops header containing the configured loot and any extra groups.
	local function ZoneDrops(groups)
		if groups then
			return n(ZONE_DROPS, { groups = appendGroups(clone(zonedrops), groups)}) --[[@as ATTHeaderObject]]
		end
		return n(ZONE_DROPS, clone(zonedrops)) --[[@as ATTHeaderObject]]
	end
	local helperMeta = {
		--- Resolves the fluent methods supported by a difficulty result.
		---@param t ATTInstanceDifficulty # Difficulty receiving the operation.
		---@param key any # Requested key; supported method-name strings resolve to functions.
		---@return (fun(groups?: ATTObjectArray): ATTInstanceDifficulty)|nil # Method, or nil when unknown.
		__index = function(t, key)
			if key == "AddGroups" then
				--- Appends groups and returns the difficulty, including when input is rejected.
				---@param groups? ATTObjectArray|ATTObject # Candidate groups; objects with legacy g data are rejected.
				---@return ATTInstanceDifficulty # The owning difficulty.
				return function(groups)
					if not groups or not isarray(groups) or groups.g then
						print("Expecting array type for AddGroups for InstanceHelper")
						return t
					end
					t.groups = appendAllGroups(t.groups, groups)
					return t
				end
			elseif key == "AddGroupsWithUpgrades" then
				--- Appends groups, applies upgrades, and returns the difficulty.
				---@param groups? ATTObjectArray|ATTObject # Candidate groups; non-arrays or legacy g data are rejected.
				---@return ATTInstanceDifficulty # The owning difficulty.
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
				--- Applies upgrades to current groups and returns the difficulty.
				---@return ATTInstanceDifficulty # The owning difficulty.
				return function()
					WithUpgrades(t.groups)
					return t
				end
			end
		end
	}
	--- Creates a fluent difficulty group and remembers the exact input ID or list.
	---@param difficultyID DifficultyID|DifficultyID[] # Requested difficulty ID or multi-difficulty list.
	---@param t? ATTObject|ATTObjectArray # Additional fields or groups.
	---@return ATTInstanceDifficulty # Difficulty object with fluent operations supplied by its metatable.
	local function Difficulty(difficultyID, t)
		local diff = d(difficultyID, t)
		diff = togroups(diff)
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
		--- The identified difficulty keeps its fields; helperMeta supplies the fluent functions.
		---@cast diff ATTInstanceDifficulty
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

--- Builds symbolic selection for Dragonflight season four tier tokens.
---@param modID? ModID # Modifier to use; otherwise uses the owning object's modifier.
---@return ATTSym # Symbolic token selection and group operations.
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
