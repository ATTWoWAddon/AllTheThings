VAULT_OF_THE_INCARNATES_TIER = {
	DEATHKNIGHT = {
		i(200413),	-- Drape of the Haunted Frostbrood
		i(200411),	-- Girdle of the Haunted Frostbrood
		i(200406),	-- Sabatons of the Haunted Frostbrood
		i(200412),	-- Vambraces of the Haunted Frostbrood
	};
	DEMONHUNTER = {
		i(200343),	-- Skybound Avenger's Boots
		i(200350),	-- Skybound Avenger's Cape
		i(200348),	-- Skybound Avenger's Waistwrap
		i(200349),	-- Skybound Avenger's Wristbands
	};
	DRUID = {
		i(200358),	-- Lost Landcaller's Bindings
		i(200359),	-- Lost Landcaller's Laena
		i(200352),	-- Lost Landcaller's Moccasins
		i(200357),	-- Lost Landcaller's Sash
	};
	EVOKER = {
		i(200385),	-- Bracers of the Awakened
		i(200384),	-- Chain of the Awakened
		i(200386),	-- Shroud of the Awakened
		i(200379),	-- Treads of the Awakened
	};
	HUNTER = {
		i(200393),	-- Stormwing Harrier's Belt
		i(200395),	-- Stormwing Harrier's Plumage
		i(200388),	-- Stormwing Harrier's Sabatons
		i(200394),	-- Stormwing Harrier's Wristguards
	};
	MAGE = {
		i(200323),	-- Crystal Scholar's Cape
		i(200321),	-- Crystal Scholar's Cinch
		i(200322),	-- Crystal Scholar's Cuffs
		i(200316),	-- Crystal Scholar's Footwraps
	};
	MONK = {
		i(200367),	-- Cuffs of the Waking Fist
		i(200368),	-- Drape of the Waking Fist
		i(200361),	-- Gaiters of the Waking Fist
		i(200366),	-- Girdle of the Waking Fist
	};
	PALADIN = {
		i(200421),	-- Virtuous Silver Bracers
		i(200422),	-- Virtuous Silver Cloak
		i(200420),	-- Virtuous Silver Faulds
		i(200415),	-- Virtuous Silver Greatboots
	};
	PRIEST = {
		i(200332),	-- Draconic Hierophant's Drape
		i(200330),	-- Draconic Hierophant's Sash
		i(200325),	-- Draconic Hierophant's Slippers
		i(200331),	-- Draconic Hierophant's Wristbands
	};
	ROGUE = {
		i(200377),	-- Vault Delver's Camouflage
		i(200370),	-- Vault Delver's Shinguards
		i(200376),	-- Vault Delver's Sweatbands
		i(200375),	-- Vault Delver's Utility Belt
	};
	SHAMAN = {
		i(200403),	-- Cuffs of Infused Earth
		i(200402),	-- Faulds of Infused Earth
		i(200404),	-- Greatcloak of Infused Earth
		i(200397),	-- Treads of Infused Earth
	};
	WARLOCK = {
		i(200339),	-- Scalesworn Cultist's Girdle
		i(200341),	-- Scalesworn Cultist's Runedrape
		i(200334),	-- Scalesworn Cultist's Sandals
		i(200340),	-- Scalesworn Cultist's Wristwraps
	},
	WARRIOR = {
		i(200424),	-- Boots of the Walking Mountain
		i(200430),	-- Bracers of the Walking Mountain
		i(200429),	-- Core of the Walking Mountain
		i(200431),	-- Drape of the Walking Mountain
	},
	SYM_TIER = function(ClassID, DiffID) return {{"sub","instance_tier",1200,DiffID,ClassID}} end
}

TIER_STRUCTURE_ASSIGN_CLASSIDS(VAULT_OF_THE_INCARNATES_TIER)
