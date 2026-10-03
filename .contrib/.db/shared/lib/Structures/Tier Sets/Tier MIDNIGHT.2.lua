THE_VENOMOUS_ABYSS_TIER = {
	DEATHKNIGHT = {
		i(271471),	-- Baleful Grave-Knight's Girdle
		i(271469),	-- Baleful Grave-Knight's Greatcloak
		i(271476),	-- Baleful Grave-Knight's Sabatons
		i(271470),	-- Baleful Grave-Knight's Vambraces
	};
	DEMONHUNTER = {
		i(271539),	-- Abyssal Doomhound's Footpads
		i(271534),	-- Abyssal Doomhound's Jeweled Cinch
		i(271532),	-- Abyssal Doomhound's Ornate Drape
		i(271533),	-- Abyssal Doomhound's Wristguards
	};
	DRUID = {
		i(271523),	-- Enigmatic Dreamwatcher's Cloak
		i(271530),	-- Enigmatic Dreamwatcher's Sandals
		i(271525),	-- Enigmatic Dreamwatcher's Sigiled Cincture
		i(271524),	-- Enigmatic Dreamwatcher's Wraps
	};
	EVOKER = {
		i(271497),	-- Calamitous Echo's Scalebands
		i(271498),	-- Calamitous Echo's Scarred Girdle
		i(271503),	-- Calamitous Echo's Volcanic Stompers
		i(271496),	-- Fearsome Greatcloak of Calamity
	};
	HUNTER = {
		i(271489),	-- Prized Fangs of the Skulking Viper
		i(271487),	-- Shroud of the Skulking Viper
		i(271488),	-- Skulking Viper's Hardened Wristscales
		i(271494),	-- Skulking Viper's Tracks
	};
	MAGE = {
		i(271566),	-- Battleboots of the Primal Leywarden
		i(271560),	-- Cuffs of the Primal Leywarden
		i(271561),	-- Primal Leywarden's Bejeweled Buckle
		i(271559),	-- Spellcloak of the Primal Leywarden
	};
	MONK = {
		i(271516),	-- Agile Cord of the Monkey King
		i(271514),	-- Cape of the Monkey King
		i(271521),	-- Shinguards of the Monkey King
		i(271515),	-- Wristguards of the Monkey King
	};
	PALADIN = {
		i(271461),	-- Bracers of the Consecrated Flame
		i(271460),	-- Cloak of the Consecrated Flame
		i(271467),	-- Greatboots of the Consecrated Flame
		i(271462),	-- Waistguard of the Consecrated Flame
	};
	PRIEST = {
		i(271551),	-- Bandings of the Cosmic Penitent
		i(271552),	-- Cosmic Penitent's Orbiting Cinch
		i(271550),	-- Drape of the Cosmic Penitent
		i(271557),	-- Trail of the Cosmic Penitent
	};
	ROGUE = {
		i(271512),	-- Chosen Bloodslayer's Boots
		i(271505),	-- Chosen Bloodslayer's Cloak
		i(271507),	-- Chosen Bloodslayer's Trophy Belt
		i(271506),	-- Chosen Bloodslayer's Wristguards
	};
	SHAMAN = {
		i(271478),	-- Ritual Drape of the Ophidian Oracle
		i(271485),	-- Scaled Shoes of the Ophidian Oracle
		i(271480),	-- Venomous Belt of the Ophidian Oracle
		i(271479),	-- Wristbands of the Ophidian Oracle
	};
	WARLOCK = {
		i(271541),	-- Chaincloak of the Damned Necrolyte
		i(271543),	-- Damned Necrolyte's Clanging Cinch
		i(271542),	-- Damned Necrolyte's Shackles
		i(271548),	-- Soles of the Damned Necrolyte
	},
	WARRIOR = {
		i(271452),	-- Bracers of the Jade Warlord
		i(271451),	-- Cloak of the Jade Warlord
		i(271453),	-- Greatbelt of the Jade Warlord
		i(271458),	-- Vicious Kickers of the Jade Warlord
	},
	SYM_TIER = function(ClassID, DiffID) return {{"sub","instance_tier",1320,DiffID,ClassID}} end
}

TIER_STRUCTURE_ASSIGN_CLASSIDS(THE_VENOMOUS_ABYSS_TIER)
