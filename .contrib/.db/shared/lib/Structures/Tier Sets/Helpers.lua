-- Assigns the TierStructures by ClassID which are listed by constant key
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
CLASS_TIER_HELPER = function(classID, tierStructure, difficultyID)
	local class = cl(classID, { ["groups"] = clone(tierStructure[classID]) })
	local tierSym = tierStructure.SYM_TIER
	if tierSym then
		class.sym = tierSym(classID, difficultyID)
	end
	return class
end

-- Can be used when a common Tier structure exists. Builds the typical array of Class headers within a Difficulty/Catalyst/Vendor
ALL_CLASS_TIERS_HELPER = function(tierStructure, difficultyID)
	return {
		-- #IF AFTER WRATH
		CLASS_TIER_HELPER(DEATHKNIGHT, tierStructure, difficultyID),
		-- #ENDIF
		-- #IF AFTER LEGION
		CLASS_TIER_HELPER(DEMONHUNTER, tierStructure, difficultyID),
		-- #ENDIF
		CLASS_TIER_HELPER(DRUID, tierStructure, difficultyID),
		-- #IF AFTER DF
		CLASS_TIER_HELPER(EVOKER, tierStructure, difficultyID),
		-- #ENDIF
		CLASS_TIER_HELPER(HUNTER, tierStructure, difficultyID),
		CLASS_TIER_HELPER(MAGE, tierStructure, difficultyID),
		-- #IF AFTER MOP
		CLASS_TIER_HELPER(MONK, tierStructure, difficultyID),
		-- #ENDIF
		CLASS_TIER_HELPER(PALADIN, tierStructure, difficultyID),
		CLASS_TIER_HELPER(PRIEST, tierStructure, difficultyID),
		CLASS_TIER_HELPER(ROGUE, tierStructure, difficultyID),
		CLASS_TIER_HELPER(SHAMAN, tierStructure, difficultyID),
		CLASS_TIER_HELPER(WARLOCK, tierStructure, difficultyID),
		CLASS_TIER_HELPER(WARRIOR, tierStructure, difficultyID),
	}
end
