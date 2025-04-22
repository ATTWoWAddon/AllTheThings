-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
DIVERGENT = createHeader({
	readable = "Divergent",
	icon = 4630469,
	text = {
		en = "Divergent",
	},
	description = {
		en = "Low Drop Chance",
	},
});
local QUANTUM_GROUP = sharedData({
	["description"] = "This Item turns into one (1) unlearned Item based on ItemID/SourceID from before Dragonflight (10.0).\nOnly items with no alternative source will be attached to the Quantum Tokens.\n\n|cFF1EFF0CPossible Items: The Quantum token will transform into an item from one of these sources:\nAny available Raid\nAny Dungeon (including removed Deadmines&Stockades)\nCrate Items from lowlevel PvP (including removed)\nEvents such as Dungeon Timewalking (including removed Events)\nGarrison Tokens (WoD)\nIsland Expeditions\nNever obtainable Items (if listed in the appearance journal)\nOutdoor Drops&Rewards (including removed)\nSatchel Items from random leveling Dungeons (including removed)\nScenarios (MoP&Torghast)|r\n\n|CFFFF0000Impossible Items: The Quantum Token will not grant you an item from these sources:\nAppearances not listed in the Journal\nChallenge Mode Items\nDragonflight+ Items\nCrafted Items\nQuest Rewards\nRemoved Raids\nVendor Items\nTier3 Set Items|r\n\n|cFFFF0000If you come across an Item that has been removed from the game or was previously unavailable,\nplease notify us on the ATT Discord.|r",
},{
	-- Please use 'ig()' to make sure Mythic ModID isn't attached to all of these sourced items
	-- If the item needs different/other ModID or BonusID you need to use 'i()' instead
	-- Which items you could get between 10.1.5 & 10.1.7 are saved at the bottom of the file as history
	i(208061, {	-- Quantum Headpiece
		filter(CLOTH, {
			hqt(77629, {	-- when you learn everything from Quantum Headpiece (Cloth)
				["name"] = "Quantum Headpiece (Cloth) completed.",
			}),
			ig(114263),	-- Firefly Hood						(NYI)
			ig(114387),	-- Hood of Hooded Nighmates			(NYI)
			i(147517, {	-- Inquisitor's Battle Cowl			(NYI)
				["modID"] = 2,
			}),
			ig(121507),	-- Runespeaker's Crown				(NYI)

			ig(134787),	-- Entrenched Cowl					(Removed)
			ig(19105),	-- Frost Runed Headdress			(Removed)
			ig(10782),	-- Hakkari Shroud					(Removed)
			ig(134615),	-- Inflammatory Hood				(Removed)
		}),
		filter(LEATHER, {
			hqt(77628, {	-- when you learn everything from Quantum Headpiece (Leather)
				["name"] = "Quantum Headpiece (Leather) completed.",
			}),
			ig(114264),	-- Bloodthorn Hood					(NYI)
			ig(114388),	-- Hood of Falling Leaves			(NYI)
			i(147516, {	-- Legion Stalker's Hood			(NYI)
				["modID"] = 2, -- Heroic dungeon
			}),
			ig(121509),	-- Runesworn Crown					(NYI)

			ig(134621),	-- Incendiary Helm					(Removed)
			ig(134794),	-- Ruinous Helm						(Removed)
		}),
		filter(MAIL, {
			hqt(77627, {	-- when you learn everything from Quantum Headpiece (Mail)
				["name"] = "Quantum Headpiece (Mail) completed.",
			}),
			ig(114389),	-- Element-Binder Helm				(NYI)
			ig(114265),	-- Leafscale Helm					(NYI)
			ig(121508),	-- Stormborn Crown					(NYI)

			ig(134624),	-- Firebrand Helm					(Removed)
			ig(134798),	-- Ironbranded Ringmail Helm		(Removed)
		}),
		filter(PLATE, {
			hqt(77626, {	-- when you learn everything from Quantum Headpiece (Plate)
				["name"] = "Quantum Headpiece (Plate) completed.",
			}),
			ig(121506),	-- Dreadsworn Crown					(NYI)
			ig(114390),	-- Greathelm of Grievous Storms		(NYI)
			ig(108081),	-- Hardened Draenic Steel Helm		(NYI)
			ig(108165),	-- Peerless Draenic Steel Helm		(NYI)
			ig(108181),	-- Peerless Draenic Steel Helm		(NYI)
			ig(108189),	-- Peerless Draenic Steel Helm		(NYI)
			ig(108197),	-- Peerless Draenic Steel Helm		(NYI)
			ig(108205),	-- Peerless Draenic Steel Helm		(NYI)
			ig(108213),	-- Peerless Draenic Steel Helm		(NYI)
			ig(108221),	-- Peerless Draenic Steel Helm		(NYI)
			ig(114266),	-- Ruby Plate Greathelm				(NYI)

			ig(134630),	-- Firescored Helm					(Removed)
			ig(134802),	-- Tempered Helm					(Removed)
		}),
	}),
	i(208062, {	-- Quantum Shoulders
		filter(CLOTH, {
			hqt(77641, {	-- when you learn everything from Quantum Shoulders (Cloth)
				["name"] = "Quantum Shoulders (Cloth) completed.",
			}),
			ig(114271),	-- Firefly Mantle					(NYI)
			ig(3958),	-- Mesh Mantle						(NYI)
			ig(34107),	-- Tattered Shoulderpads			(NYI)

			ig(134696),	-- Cascading Amice					(Removed)
			ig(134724),	-- Icyweave Amice					(Removed)
			ig(134753),	-- Veiled Mantle					(Removed)
		}),
		filter(LEATHER, {
			hqt(77640, {	-- when you learn everything from Quantum Shoulders (Leather)
				["name"] = "Quantum Shoulders (Leather) completed.",
			}),
			ig(114272),	-- Bloodthorn Spaulders				(NYI)
			ig(3983),	-- Strapped Shoulderpads			(NYI)

			ig(134731),	-- Frosthide Shoulderpads			(Removed)
			ig(134761),	-- Masked Shoulderpads				(Removed)
			ig(134702),	-- Swarming Shoulders				(Removed)
			ig(51998),	-- Vigorous Spaulders				(Removed)
		}),
		filter(MAIL, {
			hqt(77639, {	-- when you learn everything from Quantum Shoulders (Mail)
				["name"] = "Quantum Shoulders (Mail) completed.",
			}),
			ig(18320),	-- Demonheart Spaulders				(NYI)
			ig(114273),	-- Leafscale Spaulders				(NYI)
			ig(4014),	-- Sterling Chain Shoulderpads		(NYI)

			ig(134734),	-- Frigidlink Spaulders				(Removed)
			ig(134765),	-- Overgrown Shoulderguards			(Removed)
			ig(134706),	-- Surging Spaulders				(Removed)
			ig(19111),	-- Winteraxe Epaulets				(Removed)
		}),
		filter(PLATE, {
			hqt(77638 , {	-- when you learn everything from Quantum Shoulders (Plate)
				["name"] = "Quantum Shoulders (Plate) completed.",
			}),
			ig(108083),	-- Hardened Draenic Steel Shoulders	(NYI)
			ig(108167),	-- Peerless Draenic Steel Shoulders	(NYI)
			ig(108183),	-- Peerless Draenic Steel Shoulders	(NYI)
			ig(108191),	-- Peerless Draenic Steel Shoulders	(NYI)
			ig(108199),	-- Peerless Draenic Steel Shoulders	(NYI)
			ig(108207),	-- Peerless Draenic Steel Shoulders	(NYI)
			ig(108215),	-- Peerless Draenic Steel Shoulders	(NYI)
			ig(108223),	-- Peerless Draenic Steel Shoulders	(NYI)
			ig(114274),	-- Ruby Plate Shoulderguard			(NYI)

			ig(134737),	-- Chillplate Shoulders				(Removed)
			ig(134769),	-- Concealment Shoulderplates		(Removed)
			ig(134713),	-- Crushing Pauldrons				(Removed)
		}),
	}),
	i(208064, {	-- Quantum Chestpiece
		filter(CLOTH, {
			hqt(77637, {	-- when you learn everything from Quantum Chestpiece (Cloth)
				["name"] = "Quantum Chestpiece (Cloth) completed.",
			}),
			ig(114254),	-- Firefly Robes					(NYI)
			ig(114317),	-- Mantisweave Robes				(NYI)
			ig(3959),	-- Mesh Armor						(NYI)

			ig(6682),	-- Death Speaker Robes				(Removed)
			ig(134784),	-- Entrenched Raiment				(Removed)
			ig(134722),	-- Icyweave Robes					(Removed)
			ig(21040),	-- Narain's Robe					(Removed)
			ig(14150),	-- Robe of Evocation				(Removed)
			ig(134751),	-- Veiled Raiment					(Removed)
		}),
		filter(LEATHER, {
			hqt(77636, {	-- when you learn everything from Quantum Chestpiece (Leather)
				["name"] = "Quantum Chestpiece (Leather) completed.",
			}),
			ig(114251),	-- Bloodthorn Chestguard			(NYI)
			ig(189917),	-- Constellation Master's Smock		(NYI)
			ig(114314),	-- Shadow-Gorged Chestguard			(NYI)
			ig(3984),	-- Strapped Armor					(NYI)

			ig(134729),	-- Frosthide Tunic					(Removed)
			ig(10781),	-- Hakkari Breastplate				(Removed)
			ig(134759),	-- Masked Tunic						(Removed)
			ig(113718),	-- Ravaged Leather Chestguard		(Removed)
			ig(113716),	-- Ravaged Leather Tunic			(Removed)
			ig(134791),	-- Ruinous Tunic					(Removed)
		}),
		filter(MAIL, {
			hqt(77635, {	-- when you learn everything from Quantum Chestpiece (Mail)
				["name"] = "Quantum Chestpiece (Mail) completed.",
			}),
			ig(114315),	-- Chestguard of Meditative Focus	(NYI)
			ig(18304),	-- Greenroot Mail					(NYI Unique)
			ig(114252),	-- Leafscale Chestguard				(NYI)
			ig(4015),	-- Sterling Chain Armor				(NYI)

			ig(2016),	-- Dusty Chain Armor				(Removed)
			ig(134732),	-- Frigidlink Armor					(Removed)
			ig(6773),	-- Gelkis Marauder Chain			(Removed)
			ig(2273),	-- Guerrilla Armor					(Removed)
			ig(134795),	-- Ironbranded Chainmail			(Removed)
			ig(134763),	-- Overgrown Armor					(Removed)
		}),
		filter(PLATE, {
			hqt(77634, {	-- when you learn everything from Quantum Chestpiece (Plate)
				["name"] = "Quantum Chestpiece (Plate) completed.",
			}),
			ig(108078),	-- Hardened Draenic Steel Chestplate	(NYI)
			ig(108162),	-- Peerless Draenic Steel Chestplate	(NYI)
			ig(108178),	-- Peerless Draenic Steel Chestplate	(NYI)
			ig(108186),	-- Peerless Draenic Steel Chestplate	(NYI)
			ig(108194),	-- Peerless Draenic Steel Chestplate	(NYI)
			ig(108202),	-- Peerless Draenic Steel Chestplate	(NYI)
			ig(108210),	-- Peerless Draenic Steel Chestplate	(NYI)
			ig(108218),	-- Peerless Draenic Steel Chestplate	(NYI)
			ig(114253),	-- Ruby Plate Breastplate				(NYI)
			ig(114316),	-- Salt-Scorched Breastplate			(NYI)

			ig(134735),	-- Chillplate Chestpiece			(Removed)
			ig(134767),	-- Concealment Breastplate			(Removed)
			ig(134799),	-- Tempered Breastplate				(Removed)
		}),
	}),
	i(208063, {	-- Quantum Gloves
		filter(CLOTH, {
			hqt(77633 , {	-- when you learn everything from Quantum Gloves (Cloth)
				["name"] = "Quantum Gloves (Cloth) completed.",
			}),
			ig(114259),	-- Firefly Gloves					(NYI)
			ig(114383),	-- Gloves of Hooded Nightmares		(NYI)
			i(113225, {	-- Kalaena's Arcane Handwraps		(NYI)
				["modID"] = 4,
			}),
			ig(3956),	-- Mesh Gloves
			ig(189904),	-- Meticulous Architect's Mitts		(NYI)
			i(113218, {	-- Seebo's Sainted Touch			(NYI)
				["modID"] = 4,
			}),

			ig(20655),	-- Abyssal Cloth Handwraps			(Removed)
			ig(134786),	-- Entrenched Handwraps				(Removed)
			ig(134723),	-- Icyweave Gloves					(Removed)
		}),
		filter(LEATHER, {
			hqt(77632 , {	-- when you learn everything from Quantum Gloves (Leather)
				["name"] = "Quantum Gloves (Leather) completed.",
			}),
			ig(114260),	-- Bloodthorn Gauntlets				(NYI)
			i(113220, {	-- Crimson Gauntlets of Death		(NYI)
				["modID"] = 4,
			}),
			ig(114384),	-- Gauntlets of Falling Leaves		(NYI)
			i(113221, {	-- Siid's Silent Stranglers			(NYI)
				["modID"] = 4,
			}),
			ig(3981),	-- Strapped Gloves					(NYI)

			ig(20661),	-- Abyssal Leather Gloves			(Removed)
			ig(134730),	-- Frosthide Gloves					(Removed)
			ig(113722),	-- Ravaged Leather Gloves			(Removed)
			ig(134793),	-- Ruinous Gloves					(Removed)
		}),
		filter(MAIL, {
			hqt(77631 , {	-- when you learn everything from Quantum Gloves (Mail)
				["name"] = "Quantum Gloves (Mail) completed.",
			}),
			ig(114385),	-- Element-Binder Gauntlets			(NYI)
			i(113222, {	-- Keengrip Arrowpullers			(NYI)
				["modID"] = 4,
			}),
			ig(114261),	-- Leafscale Gauntlets				(NYI)
			i(113227, {	-- Marco's Crackling Gloves			(NYI)
				["modID"] = 4,
			}),
			ig(4012),	-- Sterling Chain Gloves			(NYI)

			ig(20659),	-- Abyssal Mail Handguards			(Removed)
			ig(51980),	-- Earthbound Handgrips				(Removed)
			ig(134733),	-- Frigidlink Gauntlets				(Removed)
			ig(134797),	-- Ironbranded Gauntlets			(Removed)
			ig(23170),	-- The Frozen Clutch				(Removed)
		}),
		filter(PLATE, {
			hqt(77630, {	-- when you learn everything from Quantum Gloves (Plate)
				["name"] = "Quantum Gloves (Plate) completed.",
			}),
			i(113228, {	-- Gauntlets of Discarded Time		(NYI)
				["modID"] = 4,
			}),
			ig(114386),	-- Gauntlets of Grievous Storms		(NYI)
			ig(108080),	-- Hardened Draenic Steel Guantlets	(NYI)
			ig(108164),	-- Peerless Draenic Steel Guantlets	(NYI)
			ig(108180),	-- Peerless Draenic Steel Guantlets	(NYI)
			ig(108188),	-- Peerless Draenic Steel Guantlets	(NYI)
			ig(108196),	-- Peerless Draenic Steel Guantlets	(NYI)
			ig(108204),	-- Peerless Draenic Steel Guantlets	(NYI)
			ig(108212),	-- Peerless Draenic Steel Guantlets	(NYI)
			ig(108220),	-- Peerless Draenic Steel Guantlets	(NYI)
			i(113219, {	-- Romy's Reliable Grips			(NYI)
				["modID"] = 4,
			}),
			ig(114262),	-- Ruby Plate Gauntlets				(NYI)
			i(113229, {	-- Zoid's Molten Gauntlets			(NYI)
				["modID"] = 4,
			}),

			ig(20653),	-- Abyssal Plate Gauntlets			(Removed)
			ig(134736),	-- Chillplate Gauntlets				(Removed)
			ig(134801),	-- Tempered Gauntlets				(Removed)
		}),
	}),
	i(208065, {	-- Quantum Legs
		filter(CLOTH, {
			hqt(77625, {	-- when you learn everything from Quantum Legs (Cloth)
				["name"] = "Quantum Legs (Cloth) completed.",
			}),
			ig(114267),	-- Firefly Trousers					(NYI)
			ig(3957),	-- Mesh Pants						(NYI)(Unique)
			ig(121511),	-- Runespeaker's Leggings			(NYI)
			ig(114391),	-- Trousers of Hooded Nightmares	(NYI)

			ig(23173),	-- Abomination Skin Leggings		(Removed)
			ig(134695),	-- Cascading Trousers				(Removed)
			ig(22342),	-- Leggings of Torment				(Removed)
			ig(15794),	-- Ripped Ogre Loincloth			(Removed)
			ig(134752),	-- Veiled Leggings					(Removed)
		}),
		filter(LEATHER, {
			hqt(77624, {	-- when you learn everything from Quantum Legs (Leather)
				["name"] = "Quantum Legs (Leather) completed.",
			}),
			ig(114268),	-- Bloodthorn Legguards				(NYI)
			ig(114392),	-- Legguards of Falling Leaves		(NYI)
			ig(121513),	-- Runesworn Breeches				(NYI)
			ig(3982),	-- Strapped Pants					(NYI)

			ig(134760),	-- Masked Leggings					(Removed)
			ig(134701),	-- Swarming Legguards				(Removed)
		}),
		filter(MAIL, {
			hqt(77623, {	-- when you learn everything from Quantum Legs (Mail)
				["name"] = "Quantum Legs (Mail) completed.",
			}),
			ig(114393),	-- Element-Binder Legguards			(NYI)
			ig(189943),	-- Greaves of Cosmic Designs		(NYI)
			ig(114269),	-- Leafscale Legguards				(NYI)
			i(147515, {	-- Hellblaze Invader's Greaves	(NYI)
				["modID"] = 2, -- Heroic dungeon
			}),
			ig(4013),	-- Sterling Chain Pants				(NYI)
			ig(121512),	-- Stormborn Leggings				(NYI)

			ig(23665),	-- Leggings of Elemental Fury		(Removed)
			ig(134764),	-- Overgrown Kilt					(Removed)
			ig(134705),	-- Surging Chain Leggings			(Removed)
		}),
		filter(PLATE, {
			hqt(77622, {	-- when you learn everything from Quantum Legs (Plate)
				["name"] = "Quantum Legs (Plate) completed.",
			}),
			ig(121510),	-- Dreadsworn Legguards				(NYI)
			i(147514, {	-- Felguard Destroyer's Legplates	(NYI)
				["modID"] = 2,
			}),
			ig(108082),	-- Hardened Draenic Steel Legguards	(NYI)
			ig(114394),	-- Legplates of Grievous Storms		(NYI)
			ig(108166),	-- Peerless Draenic Steel Legguards	(NYI)
			ig(108182),	-- Peerless Draenic Steel Legguards	(NYI)
			ig(108190),	-- Peerless Draenic Steel Legguards	(NYI)
			ig(108198),	-- Peerless Draenic Steel Legguards	(NYI)
			ig(108206),	-- Peerless Draenic Steel Legguards	(NYI)
			ig(108214),	-- Peerless Draenic Steel Legguards	(NYI)
			ig(108222),	-- Peerless Draenic Steel Legguards	(NYI)
			ig(114270),	-- Ruby Plate Legplates				(NYI)

			ig(134768),	-- Concealment Legplates			(Removed)
			ig(134712),	-- Crushing Legguards				(Removed)
		}),
	}),
	i(208111, {	-- Quantum Axe			(One-Handed)
		hqt(77597, {	-- when you learn everything from Quantum Axe (One-Handed)
			["name"] = "Quantum Axe (One-Handed) completed.",
		}),
		ig(134755),	-- Covert Hatchet						(NYI)
		ig(5255),	-- Quilboar Tomahawk					(NYI)
		ig(115292),	-- Spectral Axe							(NYI)
		ig(134586),	-- Vanguard Hatchet						(NYI)

		ig(134742),	-- Cold-Touched Hacker					(Removed)
		ig(134747),	-- Covert Cleaver						(Removed)
		ig(134775),	-- Covert Hacker						(Removed)
		ig(134607),	-- Scorching Cleaver					(Removed)
		ig(134633),	-- Scorching Hacker						(Removed)
		ig(134805),	-- Seasoned Hacker						(Removed)
		ig(134578),	-- Vanguard Cleaver						(Removed)
		ig(134604),	-- Vanguard Hacker						(Removed)
	}),
	i(208117, {	-- Quantum Bow
		hqt(77603, {	-- when you learn everything from Quantum Bow
			["name"] = "Quantum Bow completed.",
		}),
		ig(5748),	-- Centaur Longbow						(NYI)
		ig(204674),	-- Cursed Demonbone Longbow				(NYI)
		i(186414, {	-- Rae'shalare, Death's Whisper (LFR)	(NYI)
			["bonusID"] = 451,
			["modID"] = 0,
		}),
		i(186414, {	-- Rae'shalare, Death's Whisper (HC)	(NYI)
			["bonusID"] = 1,
			["modID"] = 0,
		}),
		i(186414, {	-- Rae'shalare, Death's Whisper (M)		(NYI)
			["bonusID"] = 450,
			["modID"] = 0,
		}),
		ig(115294),	-- Spectral Longbow						(NYI)

		ig(22318),	-- Malgen's Long Bow					(Removed)
		ig(134608),	-- Scorching Longbow					(Removed)
	}),
	i(208118, {	-- Quantum Crossbow
		hqt(77604, {	-- when you learn everything from Quantum Crossbow
			["name"] = "Quantum Crossbow completed.",
		}),
		ig(134778),	-- Seasoned Crossbow					(Removed)
		ig(134580),	-- Vanguard Heavy Crossbow				(Removed)
	}),
	i(208119, {	-- Quantum Firearm
		hqt(77605, {	-- when you learn everything from Quantum Firearm/Gun
			["name"] = "Quantum Firearm/Gun completed.",
		}),
		i(110591),	-- Flintlocke's Blasthammer				(NYI)

		ig(134720),	-- Cold-Touched Rifle					(Removed)
		ig(134749),	-- Covert Rifle							(Removed)
		i(55853, {	-- Thundercall							(Removed)
			["modID"] = 1,
		}),
		ig(56376),	-- Thundercall							(Removed)
	}),
	i(208125, {	-- Quantum Focus
		hqt(77609, {	-- when you learn everything from Quantum Focus (Off-hand)
			["name"] = "Quantum Focus/Off-hand completed.",
		}),
		ig(153641),	-- Manual of Elemental Enchancement		(NYI)
		ig(161932),	-- Manual of Elemental Enchancement		(NYI)
		ig(18316),	-- Obsidian Bauble						(NYI)

		ig(134727),	-- Cold-Touched Endgame					(Removed)
		ig(134757),	-- Covert Reprieve						(Removed)
		ig(13371),	-- Father Flame							(Removed)
		ig(134589),	-- Vanguard Reprieve					(Removed)
	}),
	i(208113, {	-- Quantum Greataxe		(Two-Handed)
		hqt(77599, {	-- when you learn everything from Quantum Greataxe (Two-Handed)
			["name"] = "Quantum Greataxe (Two-Handed) completed.",
		}),
		ig(108046),	-- Draenic Steel War Axe				(NYI)
		ig(189996),	-- Elegantly Balanced Axe				(NYI)(Unique)
		ig(108142),	-- Hardened Draenic Steel War Axe		(NYI)
		ig(108226),	-- Peerless Draenic Steel War Axe		(NYI)
		ig(108227),	-- Peerless Draenic Steel War Axe		(NYI)
		ig(108228),	-- Peerless Draenic Steel War Axe		(NYI)
		ig(108229),	-- Peerless Draenic Steel War Axe		(NYI)
		ig(115293),	-- Spectral Greataxe					(NYI)

		ig(134717),	-- Cold-Touched Decapitator				(Removed)
		ig(134776),	-- Seasoned Decapitator					(Removed)
		ig(23171),	-- The Axe of Severing					(Removed)
		ig(134577),	-- Vanguard Decapitator					(Removed)
	}),
	i(208114, {	-- Quantum Greathammer	(Two-Handed) (Mace)
		hqt(77600, {	-- when you learn everything from Quantum Greathammer (Two-Handed) (Mace)
			["name"] = "Quantum Greathammer/Mace (Two-Handed) completed.",
		}),
	}),
	i(208112, {	-- Quantum Greatsword	(Two-Handed)
		hqt(77598, {	-- when you learn everything from Quantum Greatsword	(Two-Handed)
			["name"] = "Quantum Greatsword (Two-Handed) completed.",
		}),
		ig(134746),	-- Covert Greatsword					(Removed)
		i(186410, {	-- Jaithys, the Prison Blade		(Removed)
			["modID"] = 2, -- Heroic raid
		}),
		i(186410, {	-- Jaithys, the Prison Blade		(Removed)
			["modID"] = 6, -- Mythic raid
		}),
		i(187542, {	-- Jaithys, the Prison Blade		(Removed)
			["modID"] = 4, -- LFR raid
		}),
		i(187542, {	-- Jaithys, the Prison Blade		(Removed)
			["modID"] = 3, -- Normal raid
		}),
		i(187542, {	-- Jaithys, the Prison Blade		(Removed)
			["modID"] = 5, -- Heroic raid
		}),
		i(187542, {	-- Jaithys, the Prison Blade		(Removed)
			["modID"] = 6, -- Mythic raid
		}),
		-- This item is available outside of Quantum, but nobody knows where. Maybe in WoD Classic!
		ig(108905),	-- Jagged Turtleshell Blade				(Removed)
		ig(134606),	-- Scorching Greatsword					(Removed)
	}),
	i(208120, {	-- Quantum Knife
		hqt(77606, {	-- when you learn everything from Quantum Knife (Dagger)
			["name"] = "Quantum Knife/Dagger completed.",
		}),
		ig(147908),	-- 6.0 Weapon - Knife_1h_DraenorRaid_D_01 - Jade	(NYI)
		ig(108054),	-- Draenic Steel Dagger					(NYI)
		ig(108150),	-- Hardened Draeneic Steel Dagger		(NYI)
		ig(108234),	-- Peerless Draenic Steel Dagger		(NYI)
		ig(108235),	-- Peerless Draenic Steel Dagger		(NYI)
		ig(108236),	-- Peerless Draenic Steel Dagger		(NYI)
		ig(108237),	-- Peerless Draenic Steel Dagger		(NYI)
		ig(115295),	-- Spectral Dagger						(NYI)
		ig(2664),	-- Spinner Fang							(NYI)
		ig(3222),	-- Wicked Dagger						(NYI)

		ig(14151),	-- Chanting Blade						(Removed)
		ig(134718),	-- Cold-Touched Shanker					(Removed)
		ig(134748),	-- Covert Shanker						(Removed)
		ig(37597),	-- Direbrew's Shanker					(Removed)
		ig(107217),	-- Direbrew's Bloodied Shanker			(Removed)
		ig(49120),	-- Direbrew's Bloody Shanker			(Removed)
		ig(93625),	-- Miniature Winter Veil Tree			(Removed)(MOP Version)
		ig(66540),	-- Miniature Winter Veil Tree			(Removed)
		ig(2941),	-- Prison Shank							(Removed)
		ig(134610),	-- Scorching Shanker					(Removed)
		ig(134779),	-- Seasoned Shanker						(Removed)
		ig(134581),	-- Vanguard Shanker						(Removed)
	}),
	i(208121, {	-- Quantum Knuckles
		hqt(77607, {	-- when you learn everything from Quantum Knuckles (Fist Weapon)
			["name"] = "Quantum Knuckles/Fist Weapon completed.",
		}),
		ig(134719),	-- Cold-Touched Ripper					(Removed)
		ig(2942),	-- Iron Knuckles						(Removed)
		ig(22317),	-- Lefty's Brass Knuckle				(Removed)
		ig(134780),	-- Seasoned Ripper						(Removed)
	}),
	i(208110, {	-- Quantum Mace			(One-Handed)
		hqt(77596, {	-- when you learn everything from Quantum Mace (One-Handed)
			["name"] = "Quantum Mace (One-Handed) completed.",
		}),
		ig(166405),	-- Blindside							(NYI)
		ig(108058),	-- Draenic Steel Mace					(NYI)
		ig(174228),	-- Gavel of the Oasis					(NYI)
		ig(108154),	-- Hardened Draenic Steel Mace			(NYI)
		ig(163930),	-- Kovork's Rattle						(NYI)
		ig(161118),	-- Marrow Shatter						(NYI)
		ig(107390),	-- Obliterator Firing Lever				(NYI)(Unique)
		ig(108238),	-- Peerless Draenic Steel Mace			(NYI)
		ig(108240),	-- Peerless Draenic Steel Mace			(NYI)
		ig(108241),	-- Peerless Draenic Steel Mace			(NYI)
		ig(108239),	-- Peerless Draenic Steel Mace			(NYI)
		ig(115299),	-- Spectral Scepter						(NYI)
		ig(115296),	-- Spectral Warmace						(NYI)

		ig(2048),	-- Anvilmar Hammer						(Removed)
		ig(134756),	-- Covert Gavel							(Removed)
		ig(2816),	-- Death Speaker Scepter				(Removed)
		ig(6196),	-- Noboru's Cudgel						(Removed)
		ig(134618),	-- Scorching Gavel						(Removed)
		ig(134611),	-- Scorching Pummeler					(Removed)
		ig(134789),	-- Seasoned Gavel						(Removed)
		ig(134781),	-- Seasoned Pummeler					(Removed)
		ig(22322),	-- The Jaw Breaker						(Removed)
		ig(134588),	-- Vanguard Gavel						(Removed)
	}),
	i(208116, {	-- Quantum Polearm
		hqt(77602, {	-- when you learn everything from Quantum Polearm
			["name"] = "Quantum Polearm completed.",
		}),
		ig(115297),	-- Spectral Polearm						(NYI)

		ig(6679),	-- Armor Piercer						(Removed)
		ig(134750),	-- Covert Pike							(Removed)
		ig(134612),	-- Scorching Pike						(Removed)
		ig(134782),	-- Seasoned Pike						(Removed)
	}),
	i(208126, {	-- Quantum Shield
		hqt(77611, {	-- when you learn everything from Quantum Shield
			["name"] = "Quantum Shield completed.",
		}),
		ig(108062),	-- Draenic Steel Bulwark				(NYI)
		ig(108158),	-- Hardened Draenic Steel Bulwark		(NYI)
		ig(18303),	-- Nimble Buckler						(NYI)
		ig(108242),	-- Peerless Draenic Steel Bulwark		(NYI)
		ig(108243),	-- Peerless Draenic Steel Bulwark		(NYI)
		ig(108244),	-- Peerless Draenic Steel Bulwark		(NYI)
		ig(108245),	-- Peerless Draenic Steel Bulwark		(NYI)
		ig(3988),	-- Plate Wall Shield					(NYI)
		ig(3991),	-- Plated Buckler						(NYI)

		ig(134741),	-- Cold-Touched Barrier					(Removed)
		ig(134774),	-- Covert Barrier						(Removed)
		ig(22336),	-- Draconian Aegis of the Legion		(Removed)
		ig(134632),	-- Scorching Redoubt					(Removed)
		ig(134803),	-- Seasoned Redoubt						(Removed)
		ig(134603),	-- Vanguard Redoubt						(Removed)
	}),
	i(208115, {	-- Quantum Staff
		hqt(77601, {	-- when you learn everything from Quantum Staff
			["name"] = "Quantum Staff completed.",
		}),
		ig(115298),	-- Spectral Spire						(NYI)

		ig(134721),	-- Cold-Touched Staff					(Removed)
		ig(1388),	-- Crooked Staff						(Removed)
		ig(119409),	-- Icebound Bloodmaul Spire				(Removed)
		ig(2280),	-- Kam's Walking Stick					(Removed)
		ig(22335),	-- Lord Valthalak's Staff of Command	(Removed)
		ig(134619),	-- Scorching Staff						(Removed)
		ig(134790),	-- Seasoned Staff						(Removed)
		ig(134582),	-- Vanguard Staff						(Removed)
	}),
	i(208109, {	-- Quantum Sword		(One-Handed)
		hqt(77595, {	-- when you learn everything from Quantum Sword (One-Handed)
			["name"] = "Quantum Sword (One-Handed) completed.",
		}),
		ig(134613),	-- Scorching Quickblade					(NYI)
		ig(166364),	-- Song of the Fallen					(NYI)
		ig(155074),	-- Toll Enforcer						(NYI)

		ig(68195),	-- Bazzalan's Blade						(Removed)
		ig(19110),	-- Cold Forged Blade					(Removed)
		ig(134725),	-- Cold-Touched Mageblade				(Removed)
		ig(134726),	-- Cold-Touched Sword					(Removed)
		ig(134758),	-- Covert Mageblade						(Removed)
		ig(14145),	-- Cursed Felblade						(Removed)
		ig(134783),	-- Seasoned Quickblade					(Removed)
		ig(25145),	-- Wisdom Blade
	}),
	i(208123, {	-- Quantum Wand
		hqt(77610, {	-- when you learn everything from Quantum Wand
			["name"] = "Quantum Wand completed.",
		}),
		ig(134728),	-- Cold-Touched Wand					(Removed)
		ig(134590),	-- Vanguard Baton of Light				(Removed)
	}),
	i(208122, {	-- Quantum Warglaives
		hqt(77608, {	-- when you learn everything from Quantum Warglaives
			["name"] = "Quantum Warglaives completed.",
		}),
	}),
	i(208216, {	-- Reins of the Quantum Courser
		["description"] = "Turns into one (1) unlearned Dungeon Mount from before Dragonflight.",
		["filter"] = MISC,	-- Not an actual Mount itself
		["sym"] = {{"select","itemID",
			-- Dungeon
			68823,	-- Armored Razzashi Raptor
			186638,	-- Cartel Master's Gearglider
			13335,	-- Deathcharger's Reins
			181819,	-- Marrowfang's Reins
			168826,	-- Mechagon Peacekeeper
			142236,	-- Midnight's Eternal Reins
			159921,	-- Mummified Raptor Skull
			44151,	-- Reins of the Blue Proto-Drake
			63040,	-- Reins of the Drake of the North Wind
			32768,	-- Reins of the Raven Lord
			63043,	-- Reins of the Vitreous Stone Drake
			159842,	-- Sharkbait's Favorite Crackers
			35513,	-- Swift White Hawkstrider
			68824,	-- Swift Zulian Panther
			160829,	-- Underrot Crawg Harness
		},
		{"prune","u","e"}	-- prune any unobtainable/event statuses from the selected monuts
		},-- Raid (Maybe in future)--	78919, -- Experiment 12-B--	71665, -- Flametalon of Alysrazor--	77069, -- Life-Binder's Handmaiden--	45693, -- Mimiron's Head--	77067, -- Reins of the Blazing Drake
		["g"] = {
			i(133543),	-- Reins of the Infinite Timereaver
		},
	}),
});
root(ROOTS.Instances, expansion(EXPANSION.DF, bubbleDown({ ["timeline"] = { ADDED_10_1_5 } }, {
	inst(1209, {	-- Dawn of the Infinite
		["coord"] = { 61.0, 84.3, THALDRASZUS },
		["maps"] = {
			2190,	-- Sanctum of Chronology
			2191,	-- Milleenia's Threshold
			2192,	-- Locus of Eternity
			2193,	-- Spoke of Endless Winter
			2194,	-- Crossroads of Fate
			2195,	-- Infinite Conflux
			2196,	-- Twisting Approach
			2197,	-- Immemorial Battlefield
			2198,	-- Dawn of the Infinite
		},
		["g"] = {
			n(QUESTS, {
				q(76140, {	-- Dawn of the Infinite
					["provider"] = { "n", 187669 },	-- Nozdormu
					["coord"] = { 60.8, 38.9, VALDRAKKEN },
				}),
				q(76141, {	-- Align in the Sand
					["sourceQuests"] = { 76140 },	-- Dawn of the Infinite
					["provider"] = { "n", 205706 },	-- Future Chromie
					["coord"] = { 52.3, 39.5, THALDRASZUS },
				}),
				q(76142, {	-- On Borrowed Time
					["sourceQuests"] = { 76140 },	-- Dawn of the Infinite
					["provider"] = { "n", 205706 },	-- Future Chromie
					["coord"] = { 52.3, 39.5, THALDRASZUS },
					["g"] = {
						i(206586),	-- Epoch Extractor (QI!)
						i(206269),	-- Time-Lost Essence (QI!)
					},
				}),
				q(76431),	-- Popped when Future Chromie and Chromie met
				q(76143, {	-- Chro-me?
					["sourceQuests"] = {
						76141,	-- Align in the Sand
						76142,	-- On Borrowed Time
					},
					["provider"] = { "n", 205707 },	-- Chromie
					["coord"] = { 61.4, 79.7, THALDRASZUS },
					["g"] = {
						i(206369),	-- Time Trap (QI!)
					},
				}),
				q(76144, {	-- Morchie Mayhem
					["sourceQuests"] = { 76143 },	-- Chro-me?
					["provider"] = { "n", 205707 },	-- Chromie
					["coord"] = { 61.4, 79.7, THALDRASZUS },
				}),
				q(76145, {	-- Who's That Chromie?
					["sourceQuests"] = { 76144 },	-- Morchie Mayhem
					["provider"] = { "n", 206149 },	-- Chromie
					["coord"] = { 62.1, 81.5, THALDRASZUS },
				}),
				q(76146, {	-- Dawn of the Infinite: Chrono-Lord Deios
					["sourceQuests"] = { 76145 },	-- Who's That Chromie?
					["provider"] = { "n", 205710 },	-- Chromie
					["coord"] = { 62.2, 83.2, THALDRASZUS },
					["g"] = {
						-- Received if you already have the Toy
						i(208417),	-- Chromie's Certificate of Temporal Tidiness
						i(208415),	-- Stasis Sand (TOY!)
					},
				}),
				q(76147, {	-- Rewind and Reconcile
					["provider"] = { "i", 206145 },	-- Mysterious Time Relic (QI!)
					--["coord"] = { ??, ??, 2194 },	-- No coords since it dungeon
					["g"] = {
						i(208390),	-- Bronze Archive Stone
					},
				}),
			}),
			-- #if AFTER 10.1.7
			d(DIFFICULTY.DUNGEON.MULTI.HEROIC_PLUS, {
				n(COMMON_BOSS_DROPS, {
					currency(PARACAUSAL_FLAKES),
					currency(SORIDORMIS_RECOGNITION),
				}),
				e(2521, {	-- Chronikar
					["crs"] = { 198995 },	-- Chronikar
					["g"] = {
						i(207828),	-- Bronze Defender's Vesture
						i(207995),	-- Chronikar's Ceremonial Saber
						i(207819),	-- Timeways Intruder's Greaves
						i(207838),	-- Vigorous Sandstompers
						i(207923),	-- Zealous Commander's Cuffs
						n(DIVERGENT, sharedData({ ["bonusID"] = 9526 }, {
							i(207991),	-- Double Time
						})),
					},
				}),
				e(2528, {	-- Manifested Timeways
					["crs"] = { 198996 },	-- Manifested Timeways
					["g"] = {
						i(207566),	-- Accelerating Sandglass
						i(207999),	-- Conflux Caller's Baton
						i(207903),	-- Fading Chronogrips
						i(207898),	-- Mobius Strap
						i(207851),	-- Timeway Sojourner's Bracelet
						i(207858),	-- Unwinding Eon Girdle
						n(DIVERGENT, sharedData({ ["bonusID"] = 9526 }, {
							i(207996),	-- Nick of Time
						})),
					},
				}),
				e(2535, {	-- Blight of Galakrond
					["crs"] = {
						198997,	-- Blight of Galakrond
						201792,	-- Ahnzon
						201788,	-- Dazhak
						201790,	-- Loszkeleth
					},
					["g"] = {
						i(207836),	-- Ahnzon's Corroded Carapace
						i(207983),	-- Ancestor's Necromantic Focus
						i(207921),	-- Dazhak's Desiccated Wingbones
						i(207992),	-- Fallen Drake's Bonesplitter
						i(207912),	-- Loszkeleth's Blighted Skullhelm
						n(DIVERGENT, sharedData({ ["bonusID"] = 9526 }, {
							i(207817),	-- Imbued Frostweave Slippers
						})),
					},
				}),
				e(2537, {	-- Iridikron the Stonescaled
					["crs"] = {
						204459,	-- Iridikron the Stonescaled
						198933,	-- Iridikron the Stonescaled
					},
					["g"] = {
						ach(18703),	-- Dawn of the Infinite: Galakrond's Fall
						i(207820),	-- Galakrond's Voracious Hide
						i(207920),	-- Incarnate's Perceptive Casque
						i(207897),	-- Mantle of Meticulous Plans
						i(207528),	-- Prophetic Stonescales
						i(207911),	-- Stonecracker Knuckles
						n(DIVERGENT, sharedData({ ["bonusID"] = 9526 }, {
							i(208321),	-- Iridal, the Earth's Master
						})),
					},
				}),
				e(2526, {	-- Tyr, the Infinite Keeper
					["crs"] = { 198998 },	-- Tyr, the Infinite Keeper
					["g"] = {
						i(207927),	-- Crown of the Infinite Lord
						i(207552),	-- Echoing Tyrstone
						i(207950),	-- Marbled Oathstone Greatboots
						i(207876),	-- Temple Acolyte's Uniform
						i(207873),	-- Titanic Shouldersparks
						n(DIVERGENT, sharedData({ ["bonusID"] = 9526 }, {
							i(208391),	-- The Infinite Hand
						})),
					},
				}),
				e(2536, {	-- Morchie
					["crs"] = { 198999 },	-- Morchie
					["g"] = {
						i(207939),	-- Chronomancer's Stasis Shackles
						i(207862),	-- Familiar's Frayed Gloves
						i(207824),	-- Greaves of Parallel Lives
						i(207997),	-- Morchie's Distorted Spellblade
						i(207946),	-- Reality-Warping Waistband
						i(207579),	-- Time-Thief's Gambit
						n(DIVERGENT, sharedData({ ["bonusID"] = 9526 }, {
							i(207986),	-- Traveler's Timesplitter
						})),
					},
				}),
				e(2533, {	-- Time-Lost Battlefield [A]
					["crs"] = {
						209207,	-- Grommash Hellscream <Warlord with the Iron Will>
						203679,	-- Anduin Lothar <Knight Champion of the Kingdom of Stormwind>
					},
					["g"] = {
						i(207867),	-- Arathi Field Bandages
						i(208000),	-- Cudgel of Bygone Victories
						i(207878),	-- Grunt's Eternal Treads
						i(207936),	-- Hood of Perpetual Conflict
						i(207884),	-- Unceasing Footman's Breastplate
						n(DIVERGENT, sharedData({ ["bonusID"] = 9526 }, {
							i(208193),	-- Gorehowl, Might of the Warchief
							i(207994),	-- Quel'Zaram, High Blade of the Lion
						})),
					},
				}),
				e(2538, {	-- Chrono-Lord Deios and the Infinite Dragonflight
					["crs"] = { 199000 },	-- Chrono-Lord Deios
					["g"] = appendGroups(QUANTUM_GROUP, {
						ach(18704),	-- Dawn of the Infinite: Murozond's Rise
						i(206145),	-- Mysterious Time Relic (QI!)
						i(208102),	-- Cliffside Wylderdrake: Visage of the Infinite (MM!)
						i(208103),	-- Highland Drake: Visage of the Infinite (MM!)
						i(208104),	-- Renewed Proto-Drake: Visage of the Infinite (MM!)
						i(208105),	-- Windborne Velocidrake: Visage of the Infinite (MM!)
						i(208106),	-- Winding Slitherdrake: Visage of the Infinite (MM!)
						i(207874),	-- Belt of the Eternal Struggle
						i(207945),	-- Chrono-Lord's Wingspan
						i(207951),	-- Displaced Trooper's Gauntlets
						i(207928),	-- Leggings of the New Dawn
						i(207581),	-- Mirror of Fractured Tomorrows
						i(207978),	-- Murozond's Timeless Scale
						n(DIVERGENT, sharedData({ ["bonusID"] = 9526 }, {
							i(207987),	-- Borrowed Time
						})),
					}),
				}),
			}),
			d(DIFFICULTY.DUNGEON.MYTHIC, {
				n(ACHIEVEMENTS, {
					ach(18705, bubbleDownSelf({ ["timeline"] = { ADDED_10_1_5, REMOVED_10_2_0 } }, {	-- Defender of the Timeways
						title(514),	-- <Name> of the Infinite
						crit(60810, {	-- Chronikar
							["_encounter"] = { 2521, DIFFICULTY.DUNGEON.MYTHIC },
						}),
						crit(60811, {	-- Manifested Timeways
							["_encounter"] = { 2528, DIFFICULTY.DUNGEON.MYTHIC },
						}),
						crit(60812, {	-- Blight of Galakrond
							["_encounter"] = { 2535, DIFFICULTY.DUNGEON.MYTHIC },
						}),
						crit(60813, {	-- Iridikron the Stonescaled
							["_encounter"] = { 2537, DIFFICULTY.DUNGEON.MYTHIC },
						}),
						crit(60814, {	-- Tyr, the Infinite Keeper
							["_encounter"] = { 2526, DIFFICULTY.DUNGEON.MYTHIC },
						}),
						crit(60815, {	-- Morchie
							["_encounter"] = { 2536, DIFFICULTY.DUNGEON.MYTHIC },
						}),
						crit(60816, {	-- Time-Lost Battlefield
							["_encounter"] = { 2533, DIFFICULTY.DUNGEON.MYTHIC },	-- [A]
							-- ["_encounter"] = { 2534, DIFFICULTY.DUNGEON.MYTHIC },	-- [H]
						}),
						crit(60817, {	-- Chrono-Lord Deios and the Infinite Dragonflight
							["_encounter"] = { 2538, DIFFICULTY.DUNGEON.MYTHIC },
						}),
					})),
					ach(18706, bubbleDown({ ["timeline"] = { ADDED_10_1_5 } }, {	-- Put That Thing Back Where It Came From
						iensemble(208490, {	-- Ensemble: Infinite Acolyte's Regalia
							["extraTransmogSetSpells"] = {
								421485,	-- Ensemble: Infinite Acolyte's Regalia
								421486,	-- Ensemble: Infinite Acolyte's Regalia
								421487,	-- Ensemble: Infinite Acolyte's Regalia
							},
						}),
					})),
				}),
				n(COMMON_BOSS_DROPS, {
					currency(PARACAUSAL_FLAKES),
					currency(SORIDORMIS_RECOGNITION),
					i(204078),	-- Aspect's Shadowflame Crest Fragment
				}),
				e(2521, {	-- Chronikar
					["crs"] = { 198995 },	-- Chronikar
					["g"] = {
						ach(18589),	-- Crunch Time
					},
				}),
				e(2528, {	-- Manifested Timeways
					["crs"] = { 198996 },	-- Manifested Timeways
					["g"] = {
						ach(18556),	-- Chaotic Time
					},
				}),
				e(2535, {	-- Blight of Galakrond
					["crs"] = {
						198997,	-- Blight of Galakrond
						201792,	-- Ahnzon
						201788,	-- Dazhak
						201790,	-- Loszkeleth
					},
					["g"] = {
						ach(18612),	-- A Slime in Need
					},
				}),
				e(2537, {	-- Iridikron the Stonescaled
					["crs"] = {
						204459,	-- Iridikron the Stonescaled
						198933,	-- Iridikron the Stonescaled
					},
				}),
				e(2526, {	-- Tyr, the Infinite Keeper
					["crs"] = { 198998 },	-- Tyr, the Infinite Keeper
					["g"] = {
						ach(18539),	-- Back En-masse
					},
				}),
				e(2536, {	-- Morchie
					["crs"] = { 198999 },	-- Morchie
				}),
				e(2533, {	-- Time-Lost Battlefield [A]
					["crs"] = {
						209207,	-- Grommash Hellscream <Warlord with the Iron Will>
						203679,	-- Anduin Lothar <Knight Champion of the Kingdom of Stormwind>
					},
				}),
				e(2538, {	-- Chrono-Lord Deios and the Infinite Dragonflight
					["crs"] = { 199000 },	-- Chrono-Lord Deios
				}),
			}),
			-- #else
			d(DIFFICULTY.DUNGEON.MYTHIC, {
				n(ACHIEVEMENTS, {
					ach(18705, bubbleDownSelf({ ["timeline"] = { ADDED_10_1_5, REMOVED_10_2_0 } }, {	-- Defender of the Timeways
						title(514),	-- <Name> of the Infinite
						crit(60810, {	-- Chronikar
							["_encounter"] = { 2521, DIFFICULTY.DUNGEON.MYTHIC },
						}),
						crit(60811, {	-- Manifested Timeways
							["_encounter"] = { 2528, DIFFICULTY.DUNGEON.MYTHIC },
						}),
						crit(60812, {	-- Blight of Galakrond
							["_encounter"] = { 2535, DIFFICULTY.DUNGEON.MYTHIC },
						}),
						crit(60813, {	-- Iridikron the Stonescaled
							["_encounter"] = { 2537, DIFFICULTY.DUNGEON.MYTHIC },
						}),
						crit(60814, {	-- Tyr, the Infinite Keeper
							["_encounter"] = { 2526, DIFFICULTY.DUNGEON.MYTHIC },
						}),
						crit(60815, {	-- Morchie
							["_encounter"] = { 2536, DIFFICULTY.DUNGEON.MYTHIC },
						}),
						crit(60816, {	-- Time-Lost Battlefield
							["_encounter"] = { 2533, DIFFICULTY.DUNGEON.MYTHIC },	-- [A]
							-- ["_encounter"] = { 2534, DIFFICULTY.DUNGEON.MYTHIC },	-- [H]
						}),
						crit(60817, {	-- Chrono-Lord Deios and the Infinite Dragonflight
							["_encounter"] = { 2538, DIFFICULTY.DUNGEON.MYTHIC },
						}),
					})),
					ach(18706, bubbleDown({ ["timeline"] = { ADDED_10_1_5, REMOVED_10_2_0 } }, {	-- Put That Thing Back Where It Came From
						iensemble(208490, {	-- Ensemble: Infinite Acolyte's Regalia
							["extraTransmogSetSpells"] = {
								421485,	-- Ensemble: Infinite Acolyte's Regalia
								421486,	-- Ensemble: Infinite Acolyte's Regalia
								421487,	-- Ensemble: Infinite Acolyte's Regalia
							},
						}),
					})),
				}),
				n(COMMON_BOSS_DROPS, {
					currency(PARACAUSAL_FLAKES),
					currency(SORIDORMIS_RECOGNITION),
					i(204078),	-- Aspect's Shadowflame Crest Fragment
				}),
				e(2521, {	-- Chronikar
					["crs"] = { 198995 },	-- Chronikar
					["g"] = {
						ach(18589),	-- Crunch Time
						i(207828),	-- Bronze Defender's Vesture
						i(207995),	-- Chronikar's Ceremonial Saber
						i(207819),	-- Timeways Intruder's Greaves
						i(207838),	-- Vigorous Sandstompers
						i(207923),	-- Zealous Commander's Cuffs
						n(DIVERGENT, sharedData({ ["bonusID"] = 9526 }, {
							i(207991),	-- Double Time
						})),
					},
				}),
				e(2528, {	-- Manifested Timeways
					["crs"] = { 198996 },	-- Manifested Timeways
					["g"] = {
						ach(18556),	-- Chaotic Time
						i(207566),	-- Accelerating Sandglass
						i(207999),	-- Conflux Caller's Baton
						i(207903),	-- Fading Chronogrips
						i(207898),	-- Mobius Strap
						i(207851),	-- Timeway Sojourner's Bracelet
						i(207858),	-- Unwinding Eon Girdle
						n(DIVERGENT, sharedData({ ["bonusID"] = 9526 }, {
							i(207996),	-- Nick of Time
						})),
					},
				}),
				e(2535, {	-- Blight of Galakrond
					["crs"] = {
						198997,	-- Blight of Galakrond
						201792,	-- Ahnzon
						201788,	-- Dazhak
						201790,	-- Loszkeleth
					},
					["g"] = {
						ach(18612),	-- A Slime in Need
						i(207836),	-- Ahnzon's Corroded Carapace
						i(207983),	-- Ancestor's Necromantic Focus
						i(207921),	-- Dazhak's Desiccated Wingbones
						i(207992),	-- Fallen Drake's Bonesplitter
						i(207912),	-- Loszkeleth's Blighted Skullhelm
						n(DIVERGENT, sharedData({ ["bonusID"] = 9526 }, {
							i(207817),	-- Imbued Frostweave Slippers
						})),
					},
				}),
				e(2537, {	-- Iridikron the Stonescaled
					["crs"] = {
						204459,	-- Iridikron the Stonescaled
						198933,	-- Iridikron the Stonescaled
					},
					["g"] = {
						ach(18703),	-- Dawn of the Infinite: Galakrond's Fall
						i(207820),	-- Galakrond's Voracious Hide
						i(207920),	-- Incarnate's Perceptive Casque
						i(207897),	-- Mantle of Meticulous Plans
						i(207528),	-- Prophetic Stonescales
						i(207911),	-- Stonecracker Knuckles
						n(DIVERGENT, sharedData({ ["bonusID"] = 9526 }, {
							i(208321),	-- Iridal, the Earth's Master
						})),
					},
				}),
				e(2526, {	-- Tyr, the Infinite Keeper
					["crs"] = { 198998 },	-- Tyr, the Infinite Keeper
					["g"] = {
						ach(18539),	-- Back En-masse
						i(207927),	-- Crown of the Infinite Lord
						i(207552),	-- Echoing Tyrstone
						i(207950),	-- Marbled Oathstone Greatboots
						i(207876),	-- Temple Acolyte's Uniform
						i(207873),	-- Titanic Shouldersparks
						n(DIVERGENT, sharedData({ ["bonusID"] = 9526 }, {
							i(208391),	-- The Infinite Hand
						})),
					},
				}),
				e(2536, {	-- Morchie
					["crs"] = { 198999 },	-- Morchie
					["g"] = {
						i(207939),	-- Chronomancer's Stasis Shackles
						i(207862),	-- Familiar's Frayed Gloves
						i(207824),	-- Greaves of Parallel Lives
						i(207997),	-- Morchie's Distorted Spellblade
						i(207946),	-- Reality-Warping Waistband
						i(207579),	-- Time-Thief's Gambit
						n(DIVERGENT, sharedData({ ["bonusID"] = 9526 }, {
							i(207986),	-- Traveler's Timesplitter
						})),
					},
				}),
				e(2533, {	-- Time-Lost Battlefield [A]
					["crs"] = {
						209207,	-- Grommash Hellscream <Warlord with the Iron Will>
						203679,	-- Anduin Lothar <Knight Champion of the Kingdom of Stormwind>
					},
					["g"] = {
						i(207867),	-- Arathi Field Bandages
						i(208000),	-- Cudgel of Bygone Victories
						i(207878),	-- Grunt's Eternal Treads
						i(207936),	-- Hood of Perpetual Conflict
						i(207884),	-- Unceasing Footman's Breastplate
						n(DIVERGENT, sharedData({ ["bonusID"] = 9526 }, {
							i(208193),	-- Gorehowl, Might of the Warchief
							i(207994),	-- Quel'Zaram, High Blade of the Lion
						})),
					},
				}),
				--[[	Dont seem to be any difference in loot. Might just use one?
				e(2534, {	-- Time-Lost Battlefield [H]
					["crs"] = { 203679 },	-- Anduin Lothar <Knight Champion of the Kingdom of Stormwind>
					["g"] = {
						i(207867),	-- Arathi Field Bandages
						i(208000),	-- Cudgel of Bygone Victories
						i(207878),	-- Grunt's Eternal Treads
						i(207936),	-- Hood of Perpetual Conflict
						i(207884),	-- Unceasing Footman's Breastplate
						n(DIVERGENT, sharedData({ ["bonusID"] = 9526 }, {
							i(208193),	-- Gorehowl, Might of the Warchief
							i(207994),	-- Quel'Zaram, High Blade of the Lion
						})),
					},
				}),
				--]]
				e(2538, {	-- Chrono-Lord Deios and the Infinite Dragonflight
					["crs"] = { 199000 },	-- Chrono-Lord Deios
					["g"] = appendGroups(QUANTUM_GROUP, {
						ach(18704),	-- Dawn of the Infinite: Murozond's Rise
						i(206145),	-- Mysterious Time Relic (QI!)
						i(208102),	-- Cliffside Wylderdrake: Visage of the Infinite (MM!)
						i(208103),	-- Highland Drake: Visage of the Infinite (MM!)
						i(208104),	-- Renewed Proto-Drake: Visage of the Infinite (MM!)
						i(208105),	-- Windborne Velocidrake: Visage of the Infinite (MM!)
						i(208106),	-- Winding Slitherdrake: Visage of the Infinite (MM!)
						i(207874),	-- Belt of the Eternal Struggle
						i(207945),	-- Chrono-Lord's Wingspan
						i(207951),	-- Displaced Trooper's Gauntlets
						i(207928),	-- Leggings of the New Dawn
						i(207581),	-- Mirror of Fractured Tomorrows
						i(207978),	-- Murozond's Timeless Scale
						n(DIVERGENT, sharedData({ ["bonusID"] = 9526 }, {
							i(207987),	-- Borrowed Time
						})),
					}),
				}),
			}),
			-- #endif
		},
	}),
})));
-- root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.DF, bubbleDownSelf({ ["timeline"] = { ADDED_10_1_5 } }, {
-- 	inst(1209, {	-- Dawn of the Infinite
-- 		-- Ensembles
-- 		q(77850),	-- Ensemble: Infinite Acolyte's Regalia (spellID 419820)
-- 		q(77851),	-- Ensemble: Infinite Acolyte's Regalia (spellID 421485)
-- 		q(77852),	-- Ensemble: Infinite Acolyte's Regalia (spellID 421486)
-- 		q(77853),	-- Ensemble: Infinite Acolyte's Regalia (spellID 421487)
-- 	}),
-- })));

-- History for items between 10.1.5 & 10.1.7
--[[	i(208061, {	-- Quantum Headpiece
		filter(CLOTH, {
			ig(114387),	-- Hood of Hooded Nighmates			(NYI)
		}),
		filter(LEATHER, {
			ig(105806),	-- Circlet of the Panser			(Ordos)

			ig(114264),	-- Bloodthorn Hood					(NYI)
			ig(114388),	-- Hood of Falling Leaves			(NYI)
			ig(93081),	-- Hozen-Stitched Hood				(NYI)
		--	ig(147516),	-- Legion Stalker's Hood			(NYI)						Listed under CoEN (Legion Dungeon)
			ig(121509),	-- Runesworn Crown					(NYI)

			ig(134621),	-- Incendiary Helm					(Removed)
			ig(134794),	-- Ruinous Helm						(Removed)
			ig(89480),	-- Hozen-Crafted Hood				(Unsorted)
		--	ig(1280),	-- Cloaked Hood						(Removed)					Added in 10.1.7 to original Source
		--	ig(4724),	-- Humbert's Helm					(Removed)					Added in 10.1.7 to original Source
		--	ig(3392),	-- Ringed Helm						(Removed)					Added in 10.1.7 to original Source
		--	ig(5753),	-- Ruffled Chaplet					(Removed)(unique)			Added in 10.1.7 to original Source
		--	ig(6204),	-- Tribal Worg Helm					(Removed)(unique)			Added in 10.1.7 to original Source
		}),
		filter(MAIL, {
			ig(105809),	-- Crest of Burning Deeds			(Ordos)

			ig(92842),	-- Danio-Scale Helm					(NYI)
			ig(114389),	-- Element-Binder Helm				(NYI)
			ig(114265),	-- Leafscale Helm					(NYI)
			ig(121508),	-- Stormborn Crown					(NYI)

			ig(134624),	-- Firebrand Helm					(Removed)
			ig(134798),	-- Ironbranded Ringmail Helm		(Removed)
		}),
		filter(PLATE, {
		}),
	}),
	i(208062, {	-- Quantum Shoulders
		filter(CLOTH, {
		}),
		filter(LEATHER, {
		}),
		filter(MAIL, {
		--	ig(1445),	-- Blackrock Pauldrons				(Removed)			Added in 10.1.7 to original Source
		--	ig(3231),	-- Cutthroat Pauldrons				(Removed)			Added in 10.1.7 to original Source
			ig(18320),	-- Demonheart Spaulders				(NYI)
		}),
		filter(PLATE, {
			ig(93099),	-- Yaungolian Pauldrons				(NYI)
		}),
	}),
	i(208064, {	-- Quantum Chestpiece
		filter(CLOTH, {
		--	ig(2114),	-- Snowy Robe						(Removed)			Added in 10.1.7 to original Source
		--	ig(3260),	-- Scarlet Initiate Robes			(Removed)			Added in 10.1.7 to original Source
		}),
		filter(LEATHER, {
			ig(114251),	-- Bloodthorn Chestguard			(NYI)
			ig(189917),	-- Constellation Master's Smock		(NYI)
			ig(93078),	-- Hozen-Stitched Jerkin			(NYI)
			ig(93049),	-- Mogubreaker Jerkin				(NYI)
			ig(3984),	-- Strapped Armor					(NYI)

			ig(134729),	-- Frosthide Tunic					(Removed)
			ig(10781),	-- Hakkari Breastplate				(Removed)
			ig(134759),	-- Masked Tunic						(Removed)
			ig(134791),	-- Ruinous Tunic					(Removed)

			ig(89481),	-- Hozen-Crafted Jerkin				(Unsorted)
		--	ig(2069),	-- Black Bear Hide Vest				(Removed)			Added in 10.1.7 to original Source
		--	ig(2108),	-- Frostmane Leather Vest			(Removed)(unique)	Added in 10.1.7 to original Source
		--	ig(1211),	-- Gnoll War Harness				(Removed)			Added in 10.1.7 to original Source
		--	ig(17922),	-- Lionfur Armor					(Removed)			Added in 10.1.7 to original Source
		--	ig(6197),	-- Loch Croc Hide Vest				(Removed)(unique)	Added in 10.1.7 to original Source
		--	ig(2112),	-- Lumberjack Jerkin				(Removed)(unique)	Added in 10.1.7 to original Source
		--	ig(4861),	-- Sleek Feathered Tunic			(Removed)			Added in 10.1.7 to original Source
		}),
		filter(MAIL, {
			ig(114252),	-- Leafscale Chestguard				(NYI)
			ig(108218),	-- Peerless Draeneic Steel Chest	(NYI)
			ig(93086),	-- Swashbuckling Vest				(NYI)

			ig(134732),	-- Frigidlink Armor					(Removed)
			ig(134763),	-- Overgrown Armor					(Removed)
		--	ig(120952),	-- Slarkhide						(Removed)			Added in 10.1.7 to original Source
		}),
		filter(PLATE, {
			ig(108078),	-- Hardened Draenic Steel Chestplate (NYI)
		}),
	}),
	i(208063, {	-- Quantum Gloves
		filter(CLOTH, {
		}),
		filter(LEATHER, {
		}),
		filter(MAIL, {
		}),
		filter(PLATE, {
		}),
	}),
	i(208065, {	-- Quantum Legs
		filter(CLOTH, {
				ig(3957),	-- Mesh Pants (NYI)
		}),
		filter(LEATHER, {
			ig(114268),	-- Bloodthorn Legguards			(NYI)
			ig(93082),	-- Hozen-Stitched Britches		(NYI)
			ig(114392),	-- Legguards of Falling Leaves	(NYI)
			ig(121513),	-- Runesworn Breeches			(NYI)
			ig(3982),	-- Strapped Pants				(NYI)

			ig(134760),	-- Masked Leggings				(Removed)

			ig(89478),	-- Hozen-Crafted Britches		(Unsorted)
		--	ig(3022),	-- Bluegill Breeches			(Removed)(unique)	Added in 10.1.7 to original Source
		--	ig(18611),	-- Gnarlpine Leggings			(Removed)			Added in 10.1.7 to original Source
		--	ig(2233),	-- Shadow Weaver Leggings		(Removed)			Added in 10.1.7 to original Source
		}),
		filter(MAIL, {
		}),
		filter(PLATE, {
		}),
	}),
	i(208111, {	-- Quantum Axe			(One-Handed)
		ig(134604),	-- Vanguard Hacker					(Removed)
	}),
	i(208117, {	-- Quantum Bow
	--	ig(4474),	-- Ravenwood Bow					(Removed)(Unique)	Added in 10.1.7 to original Source
	}),
	i(208118, {	-- Quantum Crossbow
	}),
	i(208119, {	-- Quantum Firearm
	}),
	i(208125, {	-- Quantum Focus
	--	ig(5183),	-- Pulsating Hydra Heart			(Removed)			Added in 10.1.7 to original Source
	}),
	i(208113, {	-- Quantum Greataxe		(Two-Handed)
		ig(39769),	-- Arcanite Ripper					(BMAH)
		ig(44924),	-- Sun Lute							(BMAH)

		ig(134717),	-- Cold-Touched Decapitator			(NYI)
		ig(108046),	-- Draenic Steel War Axe			(NYI)
		ig(189996),	-- Elegantly Balanced Axe			(NYI)(Unique)
		ig(108228),	-- Peerless Draenic Steel War Axe	(NYI)
		ig(108229),	-- Peerless Draenic Steel War Axe	(NYI)
		ig(115293),	-- Spectral Greataxe				(NYI)
		ig(134577),	-- Vanguard Decapitator				(NYI)

		ig(5194),	-- Taskmaster Axe					(Removed)(Unique)(Dungeon)
		ig(23171),	-- The Axe of Severing				(Removed)

		ig(9425),	-- Pendumlum of Doom				(Very Rare BoE)
	--	ig(2015),	-- Black Metal War Axe				(Removed)			Added in 10.1.7 to original Source
	--	ig(2227),	-- Heavy Ogre War Axe				(Removed)			Added in 10.1.7 to original Source
	--	ig(1220),	-- Lupine Axe						(Removed)			Added in 10.1.7 to original Source
	--	ig(2823),	-- Mo'grosh Can Opener				(Removed)			Added in 10.1.7 to original Source
	--	ig(5749),	-- Scythe Axe						(Removed)(Unique)	Added in 10.1.7 to original Source
	--	ig(756),	-- Tunnel Pick						(Removed)			Added in 10.1.7 to original Source
	--	ig(3325),	-- Vile Fin Battle Axe				(Removed)			Added in 10.1.7 to original Source
	}),
	i(208114, {	-- Quantum Greathammer	(Two-Handed)(Mace)
	--	ig(2254),	-- Icepane Warhammer				(Removed)			Added in 10.1.7 to original Source
	--	ig(911),	-- Ironwood Treebranch				(Removed)			Added in 10.1.7 to original Source
	--	ig(3571),	-- Trogg Beater						(Removed)			Added in 10.1.7 to original Source
	}),
	i(208112, {	-- Quantum Greatsword	(Two-Handed)
		-- CA IS NOT POSSIBLE -- Gold 13.07.2023
		ig(134746),	-- Covert Greatsword				(NYI)
		ig(134606),	-- Scorching Greatsword				(NYI)
	--	ig(2014),	-- Black Metal Greatsword			(Removed)(Unique)	Added in 10.1.7 to original Source
	--	ig(2204),	-- Brashclaws Skewer				(Removed)(Unique)	Added in 10.1.7 to original Source
	--	ig(3188),	-- Coral Claymore					(Removed)			Added in 10.1.7 to original Source
	--	ig(2084),	-- Darksteel Bastard Sword			(Removed)			Added in 10.1.7 to original Source
	--	ig(1387),	-- Ghoulfang						(Removed)			Added in 10.1.7 to original Source
	--	ig(16039),	-- Ta'Kierthan Songblade			(Removed)			Added in 10.1.7 to original Source
	--	ig(2754),	-- Tarnished Bastard Sword			(Removed)(Unique)	Added in 10.1.7 to original Source
	}),
	i(208120, {	-- Quantum Knife
		ig(108150),	-- Hardened Draeneic Steel Dagger)	(NY)
	}),
	i(208121, {	-- Quantum Knuckles
	}),
	i(208110, {	-- Quantum Mace			(One-Handed)
	--	ig(2259),	-- Frostmane Club					(Removed)			Added in 10.1.7 to original Source
	--	ig(3223),	-- Frostmane Scepter				(Removed)			Added in 10.1.7 to original Source
	}),
	i(208116, {	-- Quantum Polearm
		ig(115297),	-- Spectral Polearm					(NYI)
	}),
	i(208126, {	-- Quantum Shield
		ig(134803),	-- Seasoned Redoubt					(Removed)
	}),
	i(208115, {	-- Quantum Staff
		ig(115298),	-- Spectral Spire					(NYI)

		ig(6679),	-- Armor Piercer					(Removed)
		ig(134721),	-- Cold-Touched Staff				(Removed)
	--	ig(1388),	-- Crooked Staff					(Removed)			Added in 10.1.7 to original Source
	--	ig(1539),	-- Gnarled Hermit's staff			(Removed)(Unique)	Added in 10.1.7 to original Source
		ig(2280),	-- Kam's Walking Stick				(Removed)
	--	ig(2013),	-- Cryptbone Staff					(Removed)			Added in 10.1.7 to original Source
	--	ig(1928),	-- Defias Mage Staff				(Removed)(Unique)	Added in 10.1.7 to original Source
	--	ig(7094),	-- Driftwood Branch					(Removed)			Added in 10.1.7 to original Source
	--	ig(1300),	-- Lesser Staff of the Spire Staff	(Removed)(Unique)	Added in 10.1.7 to original Source
	--	ig(3227),	-- Nightbane Staff					(Removed)(Unique)	Added in 10.1.7 to original Source
	--	ig(2226),	-- Ogremage Staff					(Removed)(Unique)	Added in 10.1.7 to original Source
	--	ig(1473),	-- Riverside Staff					(Removed)			Added in 10.1.7 to original Source
	--	ig(880),	-- Staff of Horrors					(Removed)			Added in 10.1.7 to original Source
	}),
	i(208109, {	-- Quantum Sword		(One-Handed)
	--	ig(8223),	-- Blade of the Basilisk			(Removed)			Added in 10.1.7 to original Source
	--	ig(2065),	-- Rockjaw Blade					(Removed)(Unique)	Added in 10.1.7 to original Source
	}),
	i(208122, {	-- Quantum Warglaives
	}),
	i(208123, {	-- Quantum Wand
	}),--]]