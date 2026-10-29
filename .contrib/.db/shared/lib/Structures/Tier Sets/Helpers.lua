-- Assigns the TierStructures by ClassID which are listed by constant key
--- Class-keyed tier content and an optional symbolic selector.
---@class ATTTierStructure
---@field [ClassID] ATTObjectArray # Tier pieces indexed by class ID.
---@field DEATHKNIGHT? ATTObjectArray # Tier pieces for death knight.
---@field DEMONHUNTER? ATTObjectArray # Tier pieces for demon hunter.
---@field DRUID? ATTObjectArray # Tier pieces for druid.
---@field EVOKER? ATTObjectArray # Tier pieces for evoker.
---@field HUNTER? ATTObjectArray # Tier pieces for hunter.
---@field MAGE? ATTObjectArray # Tier pieces for mage.
---@field MONK? ATTObjectArray # Tier pieces for monk.
---@field PALADIN? ATTObjectArray # Tier pieces for paladin.
---@field PRIEST? ATTObjectArray # Tier pieces for priest.
---@field ROGUE? ATTObjectArray # Tier pieces for rogue.
---@field SHAMAN? ATTObjectArray # Tier pieces for shaman.
---@field WARLOCK? ATTObjectArray # Tier pieces for warlock.
---@field WARRIOR? ATTObjectArray # Tier pieces for warrior.
---@field SYM_TIER? fun(classID: ClassID, difficultyID?: DifficultyID): ATTSym # Builds symbolic tier selection for a class and difficulty.
--- Adds numeric class-ID aliases for the named tier arrays in place.
---@param tierStructure ATTTierStructure # Tier data to update in place.
TIER_STRUCTURE_ASSIGN_CLASSIDS = function(tierStructure)
	tierStructure[DEATHKNIGHT] = tierStructure.DEATHKNIGHT
	tierStructure[DEMONHUNTER] = tierStructure.DEMONHUNTER
	tierStructure[DRUID] = tierStructure.DRUID
	tierStructure[EVOKER] = tierStructure.EVOKER
	tierStructure[HUNTER] = tierStructure.HUNTER
	tierStructure[MAGE] = tierStructure.MAGE
	tierStructure[MONK] = tierStructure.MONK
	tierStructure[PALADIN] = tierStructure.PALADIN
	tierStructure[PRIEST] = tierStructure.PRIEST
	tierStructure[ROGUE] = tierStructure.ROGUE
	tierStructure[SHAMAN] = tierStructure.SHAMAN
	tierStructure[WARLOCK] = tierStructure.WARLOCK
	tierStructure[WARRIOR] = tierStructure.WARRIOR
end

-- Can be used when a common Tier structure exists. Builds the typical Class header for use within a Difficulty/Catalyst/Vendor
--- Builds a class header for one tier structure.
---@param classID ClassID # Class whose tier pieces are selected.
---@param tierStructure ATTTierStructure # Class-keyed tier data and optional symbolic selector.
---@param difficultyID? DifficultyID # Difficulty passed to the symbolic selector.
---@return ATTObject|nil # Class header, or nil if no tier data exists for the class.
local CLASS_TIER_HELPER = function(classID, tierStructure, difficultyID)
	if not tierStructure[classID] then return end
	local class = cl(classID, { groups = clone(tierStructure[classID]) })
	local tierSym = tierStructure.SYM_TIER
	if tierSym then
		class.sym = tierSym(classID, difficultyID)
	end
	return class
end

-- Can be used when a common Tier structure exists. Builds the typical array of Class headers within a Difficulty/Catalyst/Vendor
--- Builds class headers for all classes with tier data.
---@param tierStructure ATTTierStructure # Class-keyed tier data and optional symbolic selector.
---@param difficultyID? DifficultyID # Difficulty passed to the symbolic selector.
---@return ATTObjectArray # Class headers with available tier data.
ALL_CLASS_TIERS_HELPER = function(tierStructure, difficultyID)
	local classes = {}
	for i=1,#ALL_CLASSES do
		local classTier = CLASS_TIER_HELPER(ALL_CLASSES[i], tierStructure, difficultyID)
		if classTier then
			classes[#classes+1] = classTier
		end
	end
	return classes
end
