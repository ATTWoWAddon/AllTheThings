NERUBAR_PALACE_TIER = {
	DEATHKNIGHT = {
		i(211999),	-- Exhumed Centurion's Baltea
		i(211997),	-- Exhumed Centurion's Drape
		i(211998),	-- Exhumed Centurion's Manacles
		i(212004),	-- Exhumed Centurion's Sollerets
	};
	DEMONHUNTER = {
		i(212061),	-- Armguards of the Hypogeal Nemesis
		i(212060),	-- Drape of the Hypogeal Nemesis
		i(212067),	-- Talons of the Hypogeal Nemesis
		i(212062),	-- Waistguard of the Hypogeal Nemesis
	};
	DRUID = {
		i(212051),	-- Cloak of the Greatlynx
		i(212053),	-- Faulds of the Greatlynx
		i(212052),	-- Great Links of the Greatlynx
		i(212058),	-- Treads of the Greatlynx
	};
	EVOKER = {
		i(212024),	-- Cape of the Destroyer
		i(212026),	-- Core of the Destroyer
		i(212031),	-- Talons of the Destroyer
		i(212025),	-- Wristblades of the Destroyer
	};
	HUNTER = {
		i(212017),	-- Lightless Scavenger's Bonegirdle
		i(212022),	-- Lightless Scavenger's Footpads
		i(212015),	-- Lightless Scavenger's Hide
		i(212016),	-- Lightless Scavenger's Wristguards
	};
	MAGE = {
		i(212088),	-- Bracelets of Violet Rebirth
		i(212089),	-- Sigil of Violet Rebirth
		i(212094),	-- Slippers of Violet Rebirth
		i(212087),	-- Ward of Violet Rebirth
	};
	MONK = {
		i(212043),	-- Gatecrasher's Armguards
		i(212044),	-- Gatecrasher's Cord
		i(212042),	-- Gatecrasher's Mantle
		i(212049),	-- Gatecrasher's Tabi
	};
	PALADIN = {
		i(211988),	-- Entombed Seraph's Greatcloak
		i(211995),	-- Entombed Seraph's Sabatons
		i(211989),	-- Entombed Seraph's Shackles
		i(211990),	-- Entombed Seraph's Waistguard
	};
	PRIEST = {
		i(212085),	-- Living Luster's Boots
		i(212079),	-- Living Luster's Crystbands
		i(212078),	-- Living Luster's Glow
		i(212080),	-- Living Luster's Lightbelt
	};
	ROGUE = {
		i(212035),	-- K'areshi Phantom's Belt
		i(212033),	-- K'areshi Phantom's Breeze
		i(212034),	-- K'areshi Phantom's Cuffs
		i(212040),	-- K'areshi Phantom's Netherwalkers
	};
	SHAMAN = {
		i(212007),	-- Embrace of the Forgotten Reservoir
		i(212006),	-- Mist of the Forgotten Reservoir
		i(212013),	-- Shoes of the Forgotten Reservoir
		i(212008),	-- Wrappings of the Forgotten Reservoir
	};
	WARLOCK = {
		i(212071),	-- Hexflame Coven's Dormant Eye
		i(212069),	-- Hexflame Coven's Shawl
		i(212076),	-- Hexflame Coven's Treads
		i(212070),	-- Hexflame Coven's Wristlace
	},
	WARRIOR = {
		i(211980),	-- Warsculptor's Armguards
		i(211981),	-- Warsculptor's Buckle
		i(211986),	-- Warsculptor's Carved Boots
		i(211979),	-- Warsculptor's Cloak
	},
	SYM_TIER = function(ClassID, DiffID) return {{"sub","instance_tier",1273,DiffID,ClassID}} end,
}

TIER_STRUCTURE_ASSIGN_CLASSIDS(NERUBAR_PALACE_TIER)
