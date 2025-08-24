MANAFORGE_OMEGA_TIER = {
	DEATHKNIGHT = {
		i(237625),	-- Hollow Sentinel's Greatbelt
		i(237630),	-- Hollow Sentinel's Greatboots
		i(237624),	-- Hollow Sentinel's Stonecuffs
		i(237623),	-- Hollow Sentinel's Wingdrape
	};
	DEMONHUNTER = {
		i(237686),	-- Charhound's Vicious Felcover
		i(237693),	-- Charhound's Vicious Flametabi
		i(237688),	-- Charhound's Vicious Huntbelt
		i(237687),	-- Charhound's Vicious Restraints
	};
	DRUID = {
		i(237678),	-- Bands of the Mother Eagle
		i(237679),	-- Dreamsash of the Mother Eagle
		i(237684),	-- Feathered Boots of the Mother Eagle
		i(237677),	-- Plumage of the Mother Eagle
	};
	EVOKER = {
		i(237652),	-- Spellweaver's Immaculate Crystal Cord
		i(237651),	-- Spellweaver's Immaculate Cuffs
		i(237650),	-- Spellweaver's Immaculate Runecloak
		i(237657),	-- Spellweaver's Immaculate Talons
	};
	HUNTER = {
		i(237643),	-- Midnight Herald's Clasp
		i(237648),	-- Midnight Herald's Jackboots
		i(237641),	-- Midnight Herald's Shroud
		i(237642),	-- Midnight Herald's Wristguards
	};
	MAGE = {
		i(237714),	-- Augur's Ephemeral Bindings
		i(237713),	-- Augur's Ephemeral Brilliance
		i(237715),	-- Augur's Ephemeral Quillsash
		i(237720),	-- Augur's Ephemeral Slippers
	};
	MONK = {
		i(237668),	-- Breeze of Fallen Storms
		i(237669),	-- Demigaunts of Fallen Storms
		i(237675),	-- Footpads of Fallen Storms
		i(237670),	-- Thunderbund of Fallen Storms
	};
	PALADIN = {
		i(237614),	-- Gilded Cloak of the Lucent Battalion
		i(237616),	-- Seal of the Lucent Battalion
		i(237621),	-- Stompers of the Lucent Battalion
		i(237615),	-- Vambraces of the Lucent Battalion
	};
	PRIEST = {
		i(237705),	-- Dying Star's Bangles
		i(237704),	-- Dying Star's Memory
		i(237711),	-- Dying Star's Soles
		i(237706),	-- Dying Star's Waistlight
	};
	ROGUE = {
		i(237660),	-- Armbands of the Sudden Eclipse
		i(237666),	-- Bladed Boots of the Sudden Eclipse
		i(237659),	-- Cape of the Sudden Eclipse
		i(237661),	-- Strap of the Sudden Eclipse
	};
	SHAMAN = {
		i(237639),	-- Boots of Channeled Fury
		i(237633),	-- Bracers of Channeled Fury
		i(237634),	-- Fauld of Channeled Fury
		i(237632),	-- Shawl of Channeled Fury
	};
	WARLOCK = {
		i(237695),	-- Inquisitor's All-Seeing Madness
		i(237696),	-- Inquisitor's Bracelets of Madness
		i(237697),	-- Inquisitor's Tome of Madness
		i(237702),	-- Inquisitor's Treads of Madness
	},
	WARRIOR = {
		i(237605),	-- Living Weapon's Cape
		i(237607),	-- Living Weapon's Chain
		i(237606),	-- Living Weapon's Manacles
		i(237612),	-- Living Weapon's Sabatons
	},
	SYM_TIER = function(ClassID, DiffID) return {{"sub","instance_tier",1302,DiffID,ClassID}} end
}

TIER_STRUCTURE_ASSIGN_CLASSIDS(MANAFORGE_OMEGA_TIER)
