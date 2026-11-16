-- Assigns the TierStructures by ClassID which are listed by constant key
--- Tier rewards indexed by class name or numeric class ID.
---@class ATTTierStructure
---@field [integer] ATTObjectArray|nil # Reward groups indexed by class ID.
---@field DEATHKNIGHT? ATTObjectArray # DEATHKNIGHT reward groups.
---@field DEMONHUNTER? ATTObjectArray # DEMONHUNTER reward groups.
---@field DRUID? ATTObjectArray # DRUID reward groups.
---@field EVOKER? ATTObjectArray # EVOKER reward groups.
---@field HUNTER? ATTObjectArray # HUNTER reward groups.
---@field MAGE? ATTObjectArray # MAGE reward groups.
---@field MONK? ATTObjectArray # MONK reward groups.
---@field PALADIN? ATTObjectArray # PALADIN reward groups.
---@field PRIEST? ATTObjectArray # PRIEST reward groups.
---@field ROGUE? ATTObjectArray # ROGUE reward groups.
---@field SHAMAN? ATTObjectArray # SHAMAN reward groups.
---@field WARLOCK? ATTObjectArray # WARLOCK reward groups.
---@field WARRIOR? ATTObjectArray # WARRIOR reward groups.
---@field SYM_TIER? fun(classID: ClassID, difficultyID?: DifficultyID): ATTSym # Optional symbolic tier selection.

--- Adds numeric class-ID keys for the named class reward groups in place.
---@param tierStructure ATTTierStructure # Tier data to update.
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
--- Builds a class group for tier rewards, when that class has rewards.
---@param classID ClassID # Class whose tier is requested.
---@param tierStructure ATTTierStructure # Tier rewards and optional symbolic selector.
---@param difficultyID? DifficultyID # Difficulty passed to the selector.
---@return ATTObject|nil # Class group, or nil if that class has no rewards.
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
--- Builds tier reward groups for all classes with entries.
---@param tierStructure ATTTierStructure # Tier rewards and optional symbolic selector.
---@param difficultyID? DifficultyID # Difficulty passed to the selector.
---@return ATTObjectArray # Class groups in the configured class order.
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
