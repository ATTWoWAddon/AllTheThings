---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

maproot(MAP.EASTERN_KINGDOMS, MAP.DUN_MOROGH, {
	["lore"] = "Dun Morogh is home to both the gnomes of Gnomeregan and the Ironforge dwarves and is the location of the major city of Ironforge. The Khaz Modan mountains surround Dun Morogh on all sides, making it accessible only by certain passes that are currently watched over by dwarven troops.\n\nThe center of dwarven culture and ingenuity, Dun Morogh holds the capital of Ironforge. The region is snow-swept and forested, with gray, craggy mountains and slinking wolves. Troggs recently overran Gnomeregan, the gnomes' former capital, and drove its citizens to Ironforge. Frostmane trolls menace dwarven patrols. Several villages and towns dot the landscape, and though the trade routes can be perilous, dwarven mountaineers and warriors keep their settlements safe.",
	["maps"] = {
		29,		-- The Grizzled Den
		31,		-- Gol'Balar Quarry
	},
	["icon"] = 236755,
	["groups"] = {
		m(MAP.COLDRIDGE_VALLEY, {
			["lore"] = "Coldridge Valley is the starting area for young dwarven recruits, and contains the base camp of Anvilmar. It is located in the southwestern corner of Dun Morogh, and is linked to the greater area by Coldridge Pass to the northeast.",
			["icon"] = 236444,
			["zone-text-areas"] = {
				132,	-- Coldridge Valley
				800,	-- Coldridge Pass
				77,		-- Anvilmar
			},
			["maps"] = {
				28,		-- Coldridge Pass
				428,	-- Frostmane Hovel (Coldridge Valley)
			},
			["groups"] = {
				n(QUESTS, {
					q(170, {	-- A New Threat
						["sourceQuest"] = 179,	-- Dwarven Outfitters
						["qg"] = 713,	-- Balir Frosthammer
						["coord"] = { 29.6, 71.2, MAP.DUN_MOROGH },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/6 Rockjaw Trogg
								["provider"] = { "n", 707 },	-- Rockjaw Trogg
							}),
							objective(2, {	-- 0/6 Burly Rockjaw Trogg
								["provider"] = { "n", 724 },	-- Burly Rockjaw Trogg
							}),
							i(6185),	-- Bear Shawl
							i(2172),	-- Rustic Belt
							i(6173),	-- Snow Boots
						},
					}),
					q(3361, {	-- A Refugee's Quandary
						["qg"] = 8416,	-- Felix Whindlebolt
						["coord"] = { 28.6, 67.8, MAP.DUN_MOROGH },
						["races"] = ALLIANCE_ONLY,
						["lvl"] = 3,
						["groups"] = {
							objective(1, {	-- 0/1 Felix's Box
								["providers"] = {
									{ "i", 10438 },	-- Felix's Box (QI!)
									{ "o", 148499 },	-- Felix's Box
								},
								["coord"] = { 20.9, 76.1, MAP.DUN_MOROGH },
							}),
							objective(2, {	-- 0/1 Felix's Chest
								["providers"] = {
									{ "i", 16313 },	-- Felix's Chest (QI!)
									{ "o", 178084 },	-- Felix's Chest
								},
								["coord"] = { 22.8, 79.9, MAP.DUN_MOROGH },
							}),
							objective(3, {	-- 0/1 Felix's Bucket of Bolts
								["providers"] = {
									{ "i", 16314 },	-- Felix's Bucket of Bolts (QI!)
									{ "o", 178085 },	-- Felix's Bucket of Bolts
								},
								["coord"] = { 26.3, 79.3, MAP.DUN_MOROGH },
							}),
						},
					}),
					q(98581, {	-- Archaic Rune
						["sourceQuest"] = 179,	-- Dwarven Outfitters
						["qg"] = 658,	-- Sten Stoutarm
						["qi"] = 282400,	-- Archaic Rune (PQI!)
						["coord"] = { 29.8, 71.2, MAP.DUN_MOROGH },
						["timeline"] = { TIMELINE.ADDED_1_60_1 },
						["races"] = { DWARF },
						["classes"] = { SHAMAN },
					}),
					q(1599, {	-- Beginnings
						["altQuests"] = { 1598 },	-- The Stolen Tome
						["qg"] = 460,	-- Alamar Grimm <Warlock Trainer>
						["coord"] = { 28.6, 66.1, MAP.DUN_MOROGH },
						["races"] = ALLIANCE_ONLY,
						["classes"] = { WARLOCK },
						["groups"] = {
							objective(1, {	-- 0/3 Feather Charm
								["provider"] = { "i", 6753 },	-- Feather Charm (QI!)
								["cr"] = 946,	-- Frostmane Novice
							}),
							recipe(688),	-- Summon Imp
						},
					}),
					q(3365, {	-- Bring Back the Mug
						["sourceQuest"] = 3364,	-- Scalding Mornbrew Delivery
						["qg"] = 836,	-- Durnan Furcutter
						["qi"] = 10440,	-- Nori's Mug
						["coord"] = { 28.8, 66.4, MAP.DUN_MOROGH },
						["races"] = ALLIANCE_ONLY,
						["lvl"] = 4,
					}),
					q(94373, {	-- Call of Earth
						["sourceQuest"] = 98581,	-- Archaic Rune
						["qg"] = 257446,	-- Teo Hammerstorm <Shaman Trainer>
						["coord"] = { 28.8, 66.2, MAP.DUN_MOROGH },
						["timeline"] = { TIMELINE.ADDED_1_60_1 },
						["races"] = { DWARF },
						["classes"] = { SHAMAN },
						["groups"] = {
							objective(1, {	-- 0/2 Frostmane Bear Pendant
								["provider"] = { "i", 264356 },	-- Iceclaw Bear Pendant
								["maps"] = { 428 },	-- Frostmane Hovel (Coldridge Valley)
							}),
						},
					}),
					q(233, {	-- Coldridge Valley Mail Delivery (1/2)
						["sourceQuest"] = 179,	-- Dwarven Outfitters
						["qg"] = 658,	-- Sten Stoutarm
						["qi"] = 2187,	-- A Stack of Letters (PQI!)
						["coord"] = { 29.8, 71.2, MAP.DUN_MOROGH },
						["races"] = ALLIANCE_ONLY,
					}),
					q(234, {	-- Coldridge Valley Mail Delivery (2/2)
						["sourceQuest"] = 233,	-- Coldridge Valley Mail Delivery (1/2)
						["qg"] = 714,	-- Talin Keeneye
						["qi"] = 2188,	-- A Letter to Grelin Whitebeard (PQI!)
						["coord"] = { 22.6, 71.4, MAP.DUN_MOROGH },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							i(247840),	-- Mining for Dummies
							i(247841),	-- Wild Harvest
							i(247846),	-- Pelt Collecting for Beginners
						},
					}),
					q(3107, {	-- Consecrated Rune
						["sourceQuest"] = 179,	-- Dwarven Outfitters
						["qg"] = 658,	-- Sten Stoutarm
						["qi"] = 9563,	-- Consecrated Rune (PQI!)
						["coord"] = { 29.8, 71.2, MAP.DUN_MOROGH },
						["races"] = { DWARF },
						["classes"] = { PALADIN },
					}),
					q(179, {	-- Dwarven Outfitters
						["qg"] = 658,	-- Sten Stoutarm
						["coord"] = { 29.8, 71.2, MAP.DUN_MOROGH },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/8 Tough Wolf Meat
								["provider"] = { "i", 750 },	-- Tough Wolf Meat (QI!)
								["crs"] = {
									705,	-- Ragged Young Wolf
									704,	-- Ragged Timber Wolf
								},
							}),
							i(719),		-- Rabbit Handler Gloves
							i(6171),	-- Wolf Handler Gloves
							i(2547),	-- Boar Handler Gloves
						},
					}),
					q(3113, {	-- Encrypted Memorandum
						["sourceQuest"] = 179,	-- Dwarven Outfitters
						["qg"] = 658,	-- Sten Stoutarm
						["qi"] = 9558,	-- Encrypted Memorandum (PQI!)
						["coord"] = { 29.8, 71.2, MAP.DUN_MOROGH },
						["races"] = { GNOME },
						["classes"] = { ROGUE },
					}),
					q(3109, {	-- Encrypted Rune
						["sourceQuest"] = 179,	-- Dwarven Outfitters
						["qg"] = 658,	-- Sten Stoutarm
						["qi"] = 9550,	-- Encrypted Rune (PQI!)
						["coord"] ={ 29.8, 71.2, MAP.DUN_MOROGH },
						["races"] = { DWARF },
						["classes"] = { ROGUE },
					}),
					q(3108, {	-- Etched Rune
						["sourceQuest"] = 179,	-- Dwarven Outfitters
						["qg"] = 658,	-- Sten Stoutarm
						["qi"] = 9566,	-- Etched Rune (PQI!)
						["coord"] = { 29.8, 71.2, MAP.DUN_MOROGH },
						["races"] = { DWARF },
						["classes"] = { HUNTER },
					}),
					q(3114, {	-- Glyphic Memorandum
						["sourceQuest"] = 179,	-- Dwarven Outfitters
						["qg"] = 658,	-- Sten Stoutarm
						["qi"] = 9573,	-- Glyphic Memorandum (PQI!)
						["coord"] = { 29.8, 71.2, MAP.DUN_MOROGH },
						["races"] = { GNOME },
						["classes"] = { MAGE },
					}),
					q(97277, {	-- Grund and Gozwin
						["qg"] = 2756,	-- Grund Drokda
						["coord"] = { 28.7, 67.5, MAP.DUN_MOROGH },
						["timeline"] = { TIMELINE.ADDED_1_60_1 },
						["races"] = ALLIANCE_ONLY,
						["lvl"] = 4,
						["groups"] = {
							objective(1, {	-- 0/1 Gozwin's Mechanic's Log
								["providers"] = {
									{ "i", 277976 },	-- Gozwin's Mechanic's Log (QI!)
									{ "o", 664122 },	-- Gozwin's Mechanic's Log
								},
								["coord"] = { 27.3, 62.9, MAP.DUN_MOROGH },
							}),
							objective(2, {	-- 0/1 Snow Leopard Prowler
								["provider"] = { "n", 269075 },	-- Snow Leopard Prowler
								["coord"] = { 27.3, 62.9, MAP.DUN_MOROGH },
							}),
							i(277977),	-- Canvas Latchbag
						},
					}),
					q(3110, {	-- Hallowed Rune
						["sourceQuest"] = 179,	-- Dwarven Outfitters
						["qg"] = 658,	-- Sten Stoutarm
						["qi"] = 9556,	-- Hallowed Rune (PQI!)
						["coord"] = { 29.8, 71.2, MAP.DUN_MOROGH },
						["races"] = { DWARF },
						["classes"] = { PRIEST },
					}),
					q(3364, {	-- Scalding Mornbrew Delivery
						["qg"] = 12738,	-- Nori Pridedrift
						["qi"] = 10439,	-- Durnan's Scalding Mornbrew (PQI!)
						["coord"] = { 25.0, 75.8, MAP.DUN_MOROGH },
						["races"] = ALLIANCE_ONLY,
						["lvl"] = 4,
					}),
					q(282, {	-- Senir's Observations (1/2)
						["sourceQuest"] = 218,	-- The Stolen Journal
						["altQuests"] = { 287 },	-- Frostmane Hold
						["qg"] = 786,	-- Grelin Whitebeard
						["qi"] = 2619,	-- Grelin's Report (PQI!)
						["coord"] = { 25.0, 75.8, MAP.DUN_MOROGH },
						["races"] = ALLIANCE_ONLY,
					}),
					q(420, {	-- Senir's Observations (2/2)
						["sourceQuest"] = 282,	-- Senir's Observations (1/2)
						["altQuests"] = { 287 },	-- Frostmane Hold
						["qg"] = 1965,	-- Mountaineer Thalos
						["qi"] = 2619,	-- Grelin's Report (PQI!)
						["coord"] = { 33.4, 71.8, MAP.DUN_MOROGH },
						["races"] = ALLIANCE_ONLY,
					}),
					q(3112, {	-- Simple Memorandum
						["sourceQuest"] = 179,	-- Dwarven Outfitters
						["qg"] = 658,	-- Sten Stoutarm
						["qi"] = 9544,	-- Simple Memorandum (PQI!)
						["coord"] = { 29.8, 71.2, MAP.DUN_MOROGH },
						["races"] = { GNOME },
						["classes"] = { WARRIOR },
					}),
					q(3106, {	-- Simple Rune
						["sourceQuest"] = 179,	-- Dwarven Outfitters
						["qg"] = 658,	-- Sten Stoutarm
						["qi"] = 9543,	-- Simple Rune (PQI!)
						["coord"] = { 29.8, 71.2, MAP.DUN_MOROGH },
						["races"] = { DWARF },
						["classes"] = { WARRIOR },
					}),
					q(2160, {	-- Supplies to Tannok
						["qg"] = 6782,	-- Hands Springsprocket
						["qi"] = 7646,	-- Crate of Inn Supplies (PQI!)
						["coord"] = { 33.8, 72.2, MAP.DUN_MOROGH },
						["races"] = ALLIANCE_ONLY,
					}),
					q(3115, {	-- Tainted Memorandum
						["sourceQuests"] = {
							179,	-- Dwarven Outfitters
						},
						["qg"] = 658,	-- Sten Stoutarm
						["qi"] = 9577,	-- Tainted Memorandum (PQI!)
						["coord"] = { 29.8, 71.2, MAP.DUN_MOROGH },
						["races"] = { GNOME },
						["classes"] = { WARLOCK },
					}),
					q(96628, {	-- The Adventurer [Dun Morogh]
						["sourceQuest"] = 218,	-- The Stolen Journal
						["qg"] = 786,	-- Grelin Whitebeard
						["qi"] = 2619,	-- Grelin's Report (PQI!)
						["coord"] = { 25.0, 75.8, MAP.DUN_MOROGH },
						["timeline"] = { TIMELINE.ADDED_1_60_1 },
						["races"] = ALLIANCE_ONLY,
						["lvl"] = 4,
					}),
					q(183, {	-- The Boar Hunter
						["qg"] = 714,	-- Talin Keeneye
						["coord"] = { 22.6, 71.4, MAP.DUN_MOROGH },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/12 Small Crag Boars slain
								["provider"] = { "n", 708 },	-- Small Crag Boar
							}),
							i(79),	-- Dwarven Cloth Britches
							i(61),	-- Dwarven Leather Pants
						},
					}),
					q(218, {	-- The Stolen Journal
						["sourceQuest"] = 182,	-- The Troll Cave
						["qg"] = 786,	-- Grelin Whitebeard
						["coord"] = { 25.0, 75.8, MAP.DUN_MOROGH },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/1 Grenlin Whitebeard's Journal
								["provider"] = { "i", 2004 },	-- Grenlin Whitebeard's Journal (QI!)
								["coord"] = { 30.4, 80.2, MAP.DUN_MOROGH },
								["cr"] = 808,	-- Grik'nir the Cold
							}),
							i(6176),	-- Dwarven Kite Shield
							i(5581),	-- Smooth Walking Staff
						},
					}),
					q(182, {	-- The Troll Cave
						["qg"] = 786,	-- Grelin Whitebeard
						["coord"] = { 25.0, 75.8, MAP.DUN_MOROGH },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/14 Frostmane Troll Whelp
								["provider"] = { "n", 706 },	-- Frostmane Troll Whelp
							}),
							i(2047),	-- Anvilmar Hand Axe
							i(2048),	-- Anvilmar Hammer
							i(2195),	-- Anvilmar Knife
							i(5761),	-- Anvilmar Sledge
							i(961),	-- Healing Herb
						},
					}),
				}),
				n(VENDORS, {
					n(836, {	-- Durnan Furcutter
						["coord"] = { 28.8, 66.4, MAP.DUN_MOROGH },
						["races"] = ALLIANCE_ONLY,
						["sym"] = {{"select","itemID",
							2122,	-- Cracked Leather Belt
							2123,	-- Cracked Leather Boots
							2124,	-- Cracked Leather Bracers
							2125,	-- Cracked Leather Gloves
							2126,	-- Cracked Leather Pants
							2127,	-- Cracked Leather Vest
							2121,	-- Thin Cloth Armor
							3599,	-- Thin Cloth Belt
							3600,	-- Thin Cloth Bracers
							2119,	-- Thin Cloth Gloves
							2120,	-- Thin Cloth Pants
							2117,	-- Thin Cloth Shoes
						}},
					}),
					n(1104, {	-- Grundel Harkin <Armorer>
						["coord"] = { 28.8, 67.8, MAP.DUN_MOROGH },
						["races"] = ALLIANCE_ONLY,
						["sym"] = {{"select","itemID",
							2129,	-- Large Round Shield
							17184,	-- Small Shield
							2380,	-- Tarnished Chain Belt
							2383,	-- Tarnished Chain Boots
							2384,	-- Tarnished Chain Bracers
							2385,	-- Tarnished Chain Gloves
							2381,	-- Tarnished Chain Leggings
							2379,	-- Tarnished Chain Vest
						}},
					}),
					n(945, {	-- Rybrad Coldbank
						["coord"] = { 28.7, 67.7, MAP.DUN_MOROGH },
						["races"] = ALLIANCE_ONLY,
						["sym"] = {{"select","itemID",
							1194,	-- Bastard Sword
							2479,	-- Broad Axe
							2130,	-- Club
							2139,	-- Dirk
							2134,	-- Hand Axe
							2480,	-- Large Club
							2132,	-- Short Staff
							2131,	-- Shortsword
						}},
					}),
				}),
				n(ZONE_DROPS, {
					i(2109, {	-- Frostmane Chain Vest
						["cr"] = 808,	-- Grik'nir the Cold
						["coord"] = { 30.4, 80.2, MAP.DUN_MOROGH },
					}),
					i(2259, {	-- Frostmane Club
						["cr"] = 1121,	-- Frostmane Snowstrider
						["coords"] = {
							{ 29.6, 79.0, MAP.DUN_MOROGH },
							{ 26.0, 79.8, MAP.DUN_MOROGH },
							{ 21.6, 77.0, MAP.DUN_MOROGH },
						},
					}),
					i(2108, {	-- Frostmane Leather Vest
						["cr"] = 706,	-- Frostmane Troll Whelp
						["coords"] = {
							{ 37.4, 78.2, MAP.DUN_MOROGH },
							{ 33.4, 77.6, MAP.DUN_MOROGH },
							{ 28.4, 75.6, MAP.DUN_MOROGH },
						},
					}),
					i(2110, {	-- Light Magesmith Robe
						["cr"] = 946,	-- Frostmane Novice
						["coord"] = { 30.4, 81.0, MAP.DUN_MOROGH },
					}),
					i(2787, {	-- Trogg Dagger
						["cr"] = 724,	-- Burly Rockjaw Trogg
						["coords"] = {
							{ 21.8, 72.6, MAP.DUN_MOROGH },
							{ 27.6, 72.8, MAP.DUN_MOROGH },
							{ 31.0, 76.0, MAP.DUN_MOROGH },
						},
					}),
					i(2054, {	-- Trogg Hand Axe
						["cr"] = 1718,	-- Rockjaw Raider
						["coord"] = { 35.6, 67.8, MAP.DUN_MOROGH },
					}),
				}),
			},
		}),
		n(ACHIEVEMENTS, {
			ach(627),	-- Explore Dun Morogh
		}),
		explorationHeader({
			exploration(803),	-- Amberstill Ranch
			exploration(77),	-- Anvilmar
			exploration(137),	-- Brewnall Village
			exploration(801),	-- Chill Breeze Valley
			exploration(800),	-- Coldridge Pass
			exploration(132),	-- Coldridge Valley
			exploration(135),	-- Frostmane Hold
			exploration(809),	-- Gates of Ironforge
			exploration(133),	-- Gnomeregan
			exploration(134),	-- Gol'Bolar Quarry
			exploration(212),	-- Helm's Bed Lake
			exploration(211),	-- Iceflow Lake
			exploration(716),	-- Ironband's Compound
			exploration(131),	-- Kharanos
			exploration(138),	-- Misty Pine Refuge
			exploration(808),	-- North Gate Outpost
			exploration(802),	-- Shimmer Ridge
			exploration(806),	-- South Gate Outpost
			exploration(136),	-- The Grizzled Den
			exploration(804),	-- The Tundrid Hills
		}),
		n(QUESTS, {
			q(319, {	-- A Favor for Evershine
				["sourceQuest"] = 318,	-- Evershine
				["qg"] = 1374,	-- Rejold Barleybrew
				["coord"] = { 30.2, 45.8, MAP.DUN_MOROGH },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 2,
				["groups"] = {
					objective(1, {	-- 0/6 Ice Claw Bear
						["provider"] = { "n", 1196 },	-- Ice Claw Bear
					}),
					objective(2, {	-- 0/8 Elder Crag Boar
						["provider"] = { "n", 1127 },	-- Elder Crag Boar
					}),
					objective(3, {	-- 0/8 Snow Leopard
						["provider"] = { "n", 1201 },	-- Snow Leopard
					}),
				},
			}),
			q(417, {	-- A Pilot's Revenge
				["sourceQuest"] = 419,	-- The Lost Pilot
				["providers"] = {
					{ "o", 2059 },	-- A Dwarven Corpse
					{ "i", 3117 },	-- Hildelve's Journal (PQI!)
				},
				["coord"] = { 79.7, 36.2, MAP.DUN_MOROGH },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 8,
				["groups"] = {
					objective(1, {	-- 0/1 Mangy Claw
						["cr"] = 1961,	-- Mangeclaw
						["provider"] = { "i", 3183 },	-- Mangy Claw (QI!)
						["coord"] = { 78.34, 37.74, MAP.DUN_MOROGH },
					}),
					i(2218),	-- Craftsman's Dagger
					i(1009),	-- Compact Hammer
				},
			}),
			q(96408, {	-- A Vistor to Dun Morogh
				["qg"] = 1376,	-- Beldin Steelgrill
				["coord"] = { 50.4, 49.1, MAP.DUN_MOROGH },
				["races"] = ALLIANCE_ONLY,
				["timeline"] = { TIMELINE.ADDED_1_60_1 },
				["lvl"] = 10,
			}),
			q(5541, {	-- Ammo for Rumbleshot
				["qg"] = 1694,	-- Loslor Rudge
				["coord"] = { 50.0, 49.4, MAP.DUN_MOROGH },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 5,
				["groups"] = {
					objective(1, {	-- 0/1 Rumbleshot's Ammo
						["providers"] = {
							{ "i", 13850 },		-- Rumbleshot's Ammo (QI!)
							{ "o", 176785 },	-- Ammo Crate
						},
						["coord"] = { 44.13, 56.95, MAP.DUN_MOROGH },
					}),
					objective(2, {
						["cr"] = 1243,	-- Hegnar Rumbleshot <Gunsmith>
						["coord"] = { 40.7, 65.1, MAP.DUN_MOROGH },
					}),
				},
			}),
			q(384, {	-- Beer Basted Boar Ribs
				["qg"] = 1267,	-- Ragnar Thunderbrew
				["coord"] = { 46.8, 52.4, MAP.DUN_MOROGH },
				["cost"] = {
					{ "i", 2894, 1 },	-- Rhapsody Malt
					{ "i", 2886, 6 },	-- Crag Boar Rib
				},
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 5,
				["groups"] = {
					objective(1, {	-- 0/6 Crag Boar Rib
						["provider"] = { "i", 2886 },	-- Tender Boar Ribs
						["crs"] = {
							1125,	-- Crag Boar
							1126,	-- Large Crag Boar
							1127,	-- Elder Crag Boar
							1689,	-- Scarred Crag Boar
						},
					}),
					objective(2, {	-- 0/1 Rhapsody Malt
						["provider"] = { "i", 2894 },	-- Rhapsody Malt
						["cr"] = 1247,	-- Innkeeper Belm <Innkeeper>
					}),
					i(2888),	-- Beer Basted Boar Ribs
					i(2889),	-- Recipe: Beer Basted Boar Ribs (RECIPE!)
				},
			}),
			q(310, {	-- Bitter Rivals
				["qg"] = 1375,	-- Marleth Barleybrew
				["qi"] = 2548,	-- Barrel of Barleybrew Scalder (PQI!)
				["coord"] = { 30.2, 45.6, MAP.DUN_MOROGH },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 2,
				["groups"] = {
					q(308, {	-- Distracting Jarven
						["qg"] = 1373,	-- Jarven Thunderbrew
						["coord"] = { 47.6, 52.6, MAP.DUN_MOROGH },
						["cost"] = {{ "i", 2686, 1 }},	-- Thunder Ale
						["races"] = ALLIANCE_ONLY,
						["repeatable"] = true,
						["groups"] = {
							q(311, {	-- Return to Marleth
								["sourceQuest"] = 310,	-- Bitter Rivals
								["providers"] = {
									{ "o", 270 },	-- Unguarded Thunder Ale Barrel
									{ "i", 2666 },	-- Barrel of Thunder Ale (QI!)
								},
								["coord"] = { 47.7, 52.7, MAP.DUN_MOROGH },
								["races"] = ALLIANCE_ONLY,
								["lvl"] = 2,
							}),
						},
					}),
					q(403, {	-- Guarded Thunderbrew Barrel
						["provider"] = { "o", 269 },	-- Guarded Thunder Ale Barrel
						["coord"] = { 47.7, 52.7, MAP.DUN_MOROGH },
						["repeatable"] = true,
					}),
				},
			}),
			q(96045, {	-- Camping 101: Alchemy [Dun Morogh]
				sourceQuest = 96608,	-- The Great Outdoors [Dun Morogh]
				qg = 265813,	-- Eric Brighthammer <Adventurer>
				coord = { 46.7, 53.9, MAP.DUN_MOROGH },
				timeline = { TIMELINE.ADDED_1_60_1 },
				maps = { MAP.IRONFORGE },
				requireSkill = ALCHEMY,
				races = ALLIANCE_ONLY,
				lvl = 4,
				groups = {
					recipe(1230564),	-- Alchemy: Mana Well
				},
			}),
			q(96044, {	-- Camping 101: Blacksmithing [Dun Morogh]
				sourceQuest = 96608,	-- The Great Outdoors [Dun Morogh]
				qg = 265813,	-- Eric Brighthammer <Adventurer>
				coord = { 46.7, 53.9, MAP.DUN_MOROGH },
				timeline = { TIMELINE.ADDED_1_60_1 },
				requireSkill = BLACKSMITHING,
				races = ALLIANCE_ONLY,
				lvl = 4,
				groups = {
					recipe(1230171),	-- Blacksmithing: Sharpening Wheel
				},
			}),
			q(96629, {	-- Camping 101: Cooking [Dun Morogh]
				sourceQuest = 96608,	-- The Great Outdoors [Dun Morogh]
				qg = 265813,	-- Eric Brighthammer <Adventurer>
				coord = { 46.7, 53.9, MAP.DUN_MOROGH },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = ALLIANCE_ONLY,
				lvl = 4,
			}),
			q(96059, {	-- Camping 101: Enchanting [Dun Morogh]
				sourceQuest = 96608,	-- The Great Outdoors [Dun Morogh]
				qg = 265813,	-- Eric Brighthammer <Adventurer>
				coord = { 46.7, 53.9, MAP.DUN_MOROGH },
				timeline = { TIMELINE.ADDED_1_60_1 },
				requireSkill = ENCHANTING,
				races = ALLIANCE_ONLY,
				lvl = 4,
				groups = {
					recipe(1230643),	-- Enchanting: Enchanted Lute
				},
			}),
			q(96058, {	-- Camping 101: Engineering [Dun Morogh]
				sourceQuest = 96608,	-- The Great Outdoors [Dun Morogh]
				qg = 265813,	-- Eric Brighthammer <Adventurer>
				coord = { 46.7, 53.9, MAP.DUN_MOROGH },
				timeline = { TIMELINE.ADDED_1_60_1 },
				requireSkill = ENGINEERING,
				races = ALLIANCE_ONLY,
				lvl = 4,
				groups = {
					recipe(1230656),	-- Engineering: Reagent Bot
				},
			}),
			q(96047, {	-- Camping 101: First Aid [Dun Morogh]
				sourceQuest = 96608,	-- The Great Outdoors [Dun Morogh]
				qg = 265813,	-- Eric Brighthammer <Adventurer>
				coord = { 46.7, 53.9, MAP.DUN_MOROGH },
				timeline = { TIMELINE.ADDED_1_60_1 },
				requireSkill = FIRST_AID,
				races = ALLIANCE_ONLY,
				lvl = 4,
				groups = {
					recipe(1230117),	-- First Aid: First Aid Kit
				},
			}),
			q(96050, {	-- Camping 101: Fishing [Dun Morogh]
				sourceQuest = 96608,	-- The Great Outdoors [Dun Morogh]
				qg = 265813,	-- Eric Brighthammer <Adventurer>
				coord = { 46.7, 53.9, MAP.DUN_MOROGH },
				timeline = { TIMELINE.ADDED_1_60_1 },
				requireSkill = FISHING,
				races = ALLIANCE_ONLY,
				lvl = 4,
				groups = {
					recipe(1229745),	-- Fishing: Fish Bowl
				},
			}),
			q(96055, {	-- Camping 101: Herbalism [Dun Morogh]
				sourceQuest = 96608,	-- The Great Outdoors [Dun Morogh]
				qg = 265813,	-- Eric Brighthammer <Adventurer>
				coord = { 46.7, 53.9, MAP.DUN_MOROGH },
				timeline = { TIMELINE.ADDED_1_60_1 },
				maps = { MAP.IRONFORGE },
				requireSkill = HERBALISM,
				races = ALLIANCE_ONLY,
				lvl = 4,
				groups = {
					recipe(1229705),	-- Herbalism: Incense Candle
				},
			}),
			q(96031, {	-- Camping 101: Leatherworking [Dun Morogh]
				sourceQuest = 96608,	-- The Great Outdoors [Dun Morogh]
				qg = 265813,	-- Eric Brighthammer <Adventurer>
				coord = { 46.7, 53.9, MAP.DUN_MOROGH },
				timeline = { TIMELINE.ADDED_1_60_1 },
				maps = { MAP.IRONFORGE },
				requireSkill = LEATHERWORKING,
				races = ALLIANCE_ONLY,
				lvl = 4,
				groups = {
					recipe(1229432),	-- Leatherworking: Camp Tent
				},
			}),
			q(96046, {	-- Camping 101: Mining [Dun Morogh]
				sourceQuest = 96608,	-- The Great Outdoors [Dun Morogh]
				qg = 265813,	-- Eric Brighthammer <Adventurer>
				coord = { 46.7, 53.9, MAP.DUN_MOROGH },
				timeline = { TIMELINE.ADDED_1_60_1 },
				requireSkill = MINING,
				races = ALLIANCE_ONLY,
				lvl = 4,
				groups = {
					recipe(1230161),	-- Mining: Lodestone
				},
			}),
			q(96056, {	-- Camping 101: Skinning [Dun Morogh]
				sourceQuest = 96608,	-- The Great Outdoors [Dun Morogh]
				qg = 265813,	-- Eric Brighthammer <Adventurer>
				coord = { 46.7, 53.9, MAP.DUN_MOROGH },
				timeline = { TIMELINE.ADDED_1_60_1 },
				maps = { MAP.IRONFORGE },
				requireSkill = SKINNING,
				races = ALLIANCE_ONLY,
				lvl = 4,
				groups = {
					recipe(1229517),	-- Skinning: Camp Chair
				},
			}),
			q(96057, {	-- Camping 101: Tailoring [Dun Morogh]
				sourceQuest = 96608,	-- The Great Outdoors [Dun Morogh]
				qg = 265813,	-- Eric Brighthammer <Adventurer>
				coord = { 46.7, 53.9, MAP.DUN_MOROGH },
				timeline = { TIMELINE.ADDED_1_60_1 },
				maps = { MAP.IRONFORGE },
				requireSkill = TAILORING,
				races = ALLIANCE_ONLY,
				lvl = 4,
				groups = {
					recipe(1263425),	-- Tailoring: Camp Chair
				},
			}),
			q(99158, {	-- Dawn in the Mountains
				["qg"] = 1226,	-- Maxan Anvol <Priest Trainer>
				["coord"] = { 47.3, 52.2, MAP.DUN_MOROGH },
				["timeline"] = { TIMELINE.ADDED_1_60_1 },
				["races"] = ALLIANCE_ONLY,
			}),
			q(5637, {	-- Desperate Prayer
				["altQuests"] = {
					5634,	-- Desperate Prayer [Stormwind City #1]
					5635,	-- Desperate Prayer [Elwynn Forest]
					5636,	-- Desperate Prayer [Teldrassil]
					5638,	-- Desperate Prayer [Stormwind City #2]
					5639,	-- Desperate Prayer [Ironforge]
					5640,	-- Desperate Prayer [Darnassus]
				},
				["qg"] = 1226,	-- Maxan Anvol <Priest Trainer>
				["coord"] = { 47.2, 52.2, MAP.DUN_MOROGH },
				["races"] = { HUMAN, DWARF },
				["classes"] = { PRIEST },
				["lvl"] = 10,
				["groups"] = {
					r(13908, {	-- Desperate Prayer (Rank 1)
						["rank"] = 1,
					}),
				},
			}),
			q(318, {	-- Evershine
				["sourceQuest"] = 317,	-- Stocking Jetsteam
				["qg"] = 1378,	-- Pilot Bellowfiz
				["coord"] = { 49.4, 48.4, MAP.DUN_MOROGH },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 2,
			}),
			q(96392, {	-- Farsen's Watch
				["sourceQuest"] = 96408,	-- A Vistor to Dun Morogh
				["qg"] = 264936,	-- Earthseer Farsen
				["coord"] = { 64.8, 58.4, MAP.DUN_MOROGH },
				["races"] = ALLIANCE_ONLY,
				["timeline"] = { TIMELINE.ADDED_1_60_1 },
			}),
			q(99159, {	-- Finding Warmth
				["sourceQuest"] = 99158,	-- Dawn in the Mountains
				["qg"] = 1253,	-- Father Gavin
				["coord"] = { 57.7, 44.9, MAP.DUN_MOROGH },
				["races"] = ALLIANCE_ONLY,
				["timeline"] = { TIMELINE.ADDED_1_60_1 },
				["groups"] = {
					objective(1, {	-- 0/14 Mostly Dry Firewood
						["providers"] = {
							{ "o", 694934 },	-- Fallen Log
							{ "i", 286339 },	-- Mostly Dry Firewood
						},
					}),
				},
			}),
			q(98321, {	-- Flintfire's Shipment
				["qg"] = 1241,	-- Tognus Flintfire <Journeyman Blacksmith>
				["coord"] = { 45.3, 51.9, MAP.DUN_MOROGH },
				["timeline"] = { TIMELINE.ADDED_1_60_1 },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					objective(1, {	-- 0/8 Flintfire's Shipments
						["providers"] = {
							{ "i", 280413 },	-- Flintfire's Shipments
							{ "o", 672508 },	-- Flintfire's Shipments
						},
					}),
				},
			}),
			q(98326, {	-- Frosthowl
				["qg"] = 8508,	-- Gretta Ganter <Fisherman Supplies>
				["coord"] = { 31.5, 44.6, MAP.DUN_MOROGH },
				["timeline"] = { TIMELINE.ADDED_1_60_1 },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					objective(1, {	-- 0/1 Sack of Fish
						["cr"] = 271587,	-- Frosthowl
						["provider"] = { "i", 280426 },	-- Sack of Fish
						["coord"] = { 40.0, 48.4, MAP.DUN_MOROGH },
					}),
					i(281322),	-- Frosthowl's Footwarmers
				},
			}),
			q(287, {	-- Frostmane Hold
				["sourceQuest"] = 420,	-- Senir's Observations (2/2)
				["qg"] = 1252,	-- Senir Whitebeard
				["coord"] = { 46.6, 53.8, MAP.DUN_MOROGH },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 7,
				["groups"] = {
					objective(1, {	-- 0/5 Frostmane Headhunter
						["provider"] = { "n", 1123 },	-- Frostmane Headhunter
					}),
					i(3216),	-- Warm Winter Robe
					i(2900),	-- Stone Buckler
				},
			}),
			q(5625, {	-- Garments of the Light
				["sourceQuest"] = 5626,	-- In Favor of the Light
				["qg"] = 1226,	-- Maxan Anvol <Priest Trainer>
				["coord"] = { 47.2, 52.2, MAP.DUN_MOROGH },
				["races"] = { DWARF },
				["classes"] = { PRIEST },
				["lvl"] = 5,
				["groups"] = {
					objective(1, {	-- Heal and fortify Mountaineer Dolf
						["provider"] = { "n", 12427 },	-- Mountaineer Dolf
						["coord"] = { 45.8, 54.4, MAP.DUN_MOROGH },
					}),
					i(16605),	-- Friar's Robes of the Light
				},
			}),
			q(5626, {	-- In Favor of the Light
				["qg"] = 837,	-- Branstock Khalder <Priest Trainer>
				["coord"] = { 28.6, 66.4, MAP.DUN_MOROGH },
				["maps"] = { MAP.COLDRIDGE_VALLEY },
				["races"] = { DWARF },
				["classes"] = { PRIEST },
				["isBreadcrumb"] = true,
				["lvl"] = 5,
			}),
			q(1679, {	-- Muren Stormpike
				["altQuests"] = {
					1638,	-- A Warrior's Training
					1684,	-- Elanaria
					1678,	-- Vejrek
				},
				["qg"] = 1229,	-- Granis Swiftaxe <Warrior Trainer>
				["coord"] = { 47.2, 52.6, MAP.DUN_MOROGH },
				["classes"] = { WARRIOR },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 10,
			}),
			q(95212, {	-- Never Saddle on Quality
				["qg"] = 1265,	-- Rudra Amberstill
				["coord"] = { 63.1, 49.9, MAP.DUN_MOROGH },
				["races"] = ALLIANCE_ONLY,
				["timeline"] = { TIMELINE.ADDED_1_60_1 },
				["lvl"] = 7,
				["groups"] = {
					objective(1, {	-- 0/6  Pristine Leopard Pelt
						["provider"] = { "i", 267414 },	-- Pristine Leopard Pelt
						["cr"] = 260157,	-- Elder Snow Leopard
					}),
				}
			}),
			q(96390, {	-- Nip 'Em in the Bud
				["sourceQuest"] = 96392,	-- Farsen's Watch
				["qg"] = 264936,	-- Earthseer Farsen
				["coord"] = { 64.8, 58.4, MAP.DUN_MOROGH },
				["races"] = ALLIANCE_ONLY,
				["timeline"] = { TIMELINE.ADDED_1_60_1 },
				["groups"] = {
					objective(1, {	-- 0/10  Dark Iron Spy
						["cr"] = 6123,	-- Dark Iron Spy
					}),
				}
			}),
			q(2239, {	-- Onin's Report
				["sourceQuest"] = 2238,	-- Simple Subterfugin'
				["qg"] = 6886,	-- Onin MacHammer
				["qi"] = 7715,	-- Onin's Report (PQI!)
				["coord"] = { 25.2, 44.4, MAP.DUN_MOROGH },
				["races"] = ALLIANCE_ONLY,
				["classes"] = { ROGUE },
				["lvl"] = 10,
				["groups"] = {
					i(7298),	-- Blade of Cunning
				},
			}),
			q(412, {	-- Operation Recombobulation
				["qg"] = 1269,	-- Razzle Sprysprocket
				["coord"] = { 45.8, 49.2, MAP.DUN_MOROGH },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 7,
				["groups"] = {
					objective(1, {	-- 0/8 Restabilization Cog
						["provider"] = { "i", 3083 },	-- Restabilization Cog (QI!)
						["crs"] = {
							8503,	-- Gibblewilt
							1211,	-- Leper Gnome
						},
					}),
					objective(2, {	-- 0/8 Gyromechanic Gear
						["provider"] = { "i", 3084 },	-- Gyromechanic Gear (QI!)
						["crs"] = {
							8503,	-- Gibblewilt
							1211,	-- Leper Gnome
						},
					}),
					i(3152),	-- Driving Gloves
					i(3153),	-- Oil-stained Cloak
				},
			}),
			q(314, {	-- Protecting the Herd
				["qg"] = 1265,	-- Rudra Amberstill
				["coord"] = { 63.0, 49.8, MAP.DUN_MOROGH },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 6,
				["groups"] = {
					objective(1, {	-- 0/1 Fang of Vagash
						["provider"] = { "i", 3627 },	-- Fang of Vagash (QI!)
						["cr"] = 1388,	-- Vagash
						["coord"] = { 69.8, 44.5, MAP.DUN_MOROGH },
					}),
					i(10549),	-- Rancher's Trousers
					i(2817),	-- Soft Leather Tunic
					i(3103),	-- Coldridge Hammer
				},
			}),
			q(415, {	-- Rejold's New Brew
				["description"] = "If you want to finish this, complete 'The Perfect Stout' and then do not accept Shimmer Stout after. Once you grab this quest and return to him, then you can grab Shimmer Stout!",
				["qgs"] = {
					1378,	-- Pilot Bellowfiz
					1872,	-- Tharek Blackstone
				},
				["coords"] = {
					{ 49.4, 48.4, MAP.DUN_MOROGH },
					{ 46.0, 51.6, MAP.DUN_MOROGH },
				},
				["races"] = ALLIANCE_ONLY,
				["isBreadcrumb"] = true,
				["lvl"] = 8,
				["groups"] = {
					i(3087),	-- Mug of Shimmer Stout
				},
			}),
			q(320, {	-- Return to Bellowfiz
				["sourceQuest"] = 319,	-- A Favor for Evershine
				["qg"] = 1374,	-- Rejold Barleybrew
				["qi"] = 2696,	-- Cask of Evershine (PQI!)
				["coord"] = { 30.2, 45.8, MAP.DUN_MOROGH },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 2,
				["groups"] = {
					i(1011),	-- Sharp Axe
					i(1010),	-- Gnarled Short Staff
					i(10547),	-- Camping Knife
				},
			}),
			q(5630, {	-- Returning Home [Dun Morogh]
				["altQuests"] = {
					5627,	-- Returning Home [Darnassus]
					5628,	-- Returning Home [Elwynn Forest]
					5629,	-- Returning Home [Teldrassil]
					5631,	-- Returning Home [Stormwind City]
					5632,	-- Returning Home [Stormwind City]
					5633,	-- Returning Home [Ironforge]
				},
				["qg"] = 1226,	-- Maxan Anvol <Priest Trainer>
				["coord"] = { 47.2, 52.2, MAP.DUN_MOROGH },
				["classes"] = { PRIEST },
				["races"] = { NIGHTELF },
				["lvl"] = 10,
				["groups"] = {
					r(10797, {	-- Starshards (Rank 1)
						["rank"] = 1,
					}),
				},
			}),
			q(99160, {	-- Rime's Wrath (1/2)
				["sourceQuest"] = 99159,	-- Finding Warmth
				["qg"] = 1253,	-- Father Gavin
				["coord"] = { 57.7, 44.9, MAP.DUN_MOROGH },
				["races"] = ALLIANCE_ONLY,
				["timeline"] = { TIMELINE.ADDED_1_60_1 },
				["groups"] = {
					objective(1, {	-- 0/10 Minor Ice Elemental
						["cr"] = 276003,	-- Minor Ice Elemental
					}),
				},
			}),
			q(99160, {	-- Rime's Wrath (2/2)
				["sourceQuest"] = 99160,	-- Rime's Wrath (1/2)
				["qg"] = 1253,	-- Father Gavin
				["coord"] = { 57.7, 44.9, MAP.DUN_MOROGH },
				["races"] = ALLIANCE_ONLY,
				["timeline"] = { TIMELINE.ADDED_1_60_1 },
				["groups"] = {
					objective(1, {	-- 0/1 Avala's Core
						["cr"] = 276009,	-- Minor Ice Elemental
						["provider"] = { "i", 286325 },	-- Avala's Core
						["coord"] = { 58.1, 42.1, MAP.DUN_MOROGH },
					}),
				},
			}),
			q(2218, {	-- Road to Salvation
				["qg"] = 1234,	-- Hogral Bakkan
				["coord"] = { 47.6, 52.6, MAP.DUN_MOROGH },
				["races"] = ALLIANCE_ONLY,
				["classes"] = { ROGUE },
				["lvl"] = 10,
			}),
			q(466, {	-- Search for Incendicite
				["sourceQuest"] = 467,	-- Stonegear's Search
				["qg"] = 1377,	-- Pilot Stonegear
				["coord"] = { 49.6, 48.4, MAP.DUN_MOROGH },
				["maps"] = { WETLANDS },
				["cost"] = {{ "i", 3340, 6 }},	-- Incendicite Ore
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 20,
				["groups"] = {
					i(3565),	-- Beerstained Gloves
				},
			}),
			q(98322, {	-- Secure the Mountain (1/3)
				["sourceQuest"] = 420,	-- Senir's Observations (2/2)
				["qg"] = 1252,	-- Senir Whitebeard
				["coord"] = { 46.8, 53.8, MAP.DUN_MOROGH },
				["timeline"] = { TIMELINE.ADDED_1_60_1 },
				["races"] = ALLIANCE_ONLY,
			}),
			q(98319, {	-- Secure the Mountain (2/3)
				["sourceQuest"] = 98322,	-- Secure the Mountain (1/3)
				["qg"] = 271546,	-- Mountaineer Gretchen
				["coord"] = { 44.1, 57.1, MAP.DUN_MOROGH },
				["timeline"] = { TIMELINE.ADDED_1_60_1 },
				["races"] = ALLIANCE_ONLY,
			}),
			q(98323, {	-- Secure the Mountain (3/3)
				["sourceQuest"] = 98319,	-- Secure the Mountain (2/3)
				["qg"] = 271546,	-- Mountaineer Gretchen
				["coord"] = { 44.1, 57.1, MAP.DUN_MOROGH },
				["timeline"] = { TIMELINE.ADDED_1_60_1 },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(280430),	-- Mountaineer Gretchen's Report
				},
			}),
			q(413, {	-- Shimmer Stout
				["sourceQuests"] = {
					415,	-- Rejold's New Brew
					315,	-- The Perfect Stout
				},
				["qg"] = 1374,	-- Rejold Barleybrew
				["qi"] = 3085,	-- Barrel of Shimmer Stout (PQI!)
				["coord"] = { 30.2, 45.8, MAP.DUN_MOROGH },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 8,
			}),
			q(1879, {	-- Speak with Bink
				["altQuests"] = { 1860 },	-- Speak with Jennea
				["qg"] = 1228,	-- Magis Sparkmantle <Mage Trainer>
				["coord"] = { 47.4, 52.0, MAP.DUN_MOROGH },
				["races"] = ALLIANCE_ONLY,
				["classes"] = { MAGE },
				["isBreadcrumb"] = true,
				["lvl"] = 10,
			}),
			q(317, {	-- Stocking Jetsteam
				["qg"] = 1378,	-- Pilot Bellowfiz
				["coord"] = { 49.4, 48.4, MAP.DUN_MOROGH },
				["cost"] = {{ "i", 769, 4 }},	-- Chunk of Boar Meat
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 2,
				["groups"] = {
					objective(1, {	-- 0/4 Chunk of Boar Meat
						["provider"] = { "i", 769 },	-- Chunk of Boar Meat
						["crs"] = {
							1125,	-- Crag Boar
							1126,	-- Large Crag Boar
							1127,	-- Elder Crag Boar
							1689,	-- Scarred Crag Boar
						},
					}),
					objective(2, {	-- 0/2 Thick Bear Fur
						["provider"] = { "i", 6952 },	-- Thick Bear Fur (QI!)
						["crs"] = {
							1128,	-- Young Black Bear
							1196,	-- Ice Claw Bear
						},
					}),
				},
			}),
			q(467, {	-- Stonegear's Search
				["qgs"] = {
					1340,	-- Mountaineer Kadrell
					2092,	-- Pilot Longbeard
				},
				["coords"] = {
					{ 34.8, 47.0, MAP.LOCH_MODAN },
					{ 72.4, 93.6, MAP.IRONFORGE },
				},
				["races"] = ALLIANCE_ONLY,
				["isBreadcrumb"] = true,
				["lvl"] = 20,
			}),
			q(414, {	-- Stout to Kadrell
				["sourceQuest"] = 413,	-- Shimmer Stout
				["qg"] = 1959,	-- Mountaineer Barleybrew
				["qi"] = 3086,	-- Cask of Shimmer Stout (PQI!)
				["coord"] = { 86.2, 48.8, MAP.DUN_MOROGH },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 8,
			}),
			q(6064, {	-- Taming the Beast (1/3)
				["sourceQuests"] = {
					6074,	-- The Hunter's Path [Ironforge]
					6075,	-- The Hunter's Path [Dun Morogh]
					6076,	-- The Hunter's Path [Stormwind City]
				},
				["qg"] = 1231,	-- Grif Wildheart <Hunter Trainer>
				["qi"] = 15911,	-- Taming Rod (PQI!)
				["coord"] = { 45.8, 53.0, MAP.DUN_MOROGH },
				["races"] = { DWARF },
				["classes"] = { HUNTER },
				["lvl"] = 10,
				["groups"] = {
					objective(1, {	-- 0/1 Tame a Large Crag Boar
						["providers"] = {
							{ "n", 1126 },	-- Large Crag Boar
						},
					}),
				},
			}),
			q(6084, {	-- Taming the Beast (2/3)
				["sourceQuest"] = 6064,	-- Taming the Beast (1/3)
				["qg"] = 1231,	-- Grif Wildheart <Hunter Trainer>
				["qi"] = 15913,	-- Taming Rod (PQI!)
				["coord"] = { 45.8, 53.0, MAP.DUN_MOROGH },
				["races"] = { DWARF },
				["classes"] = { HUNTER },
				["lvl"] = 10,
				["groups"] = {
					objective(1, {	-- 0/1 Tame a Snow Leopard
						["providers"] = {
							{ "n", 1201 },	-- Snow Leopard
						},
					}),
				},
			}),
			q(6085, {	-- Taming the Beast (3/3)
				["sourceQuest"] = 6084,	-- Taming the Beast (2/3)
				["qg"] = 1231,	-- Grif Wildheart <Hunter Trainer>
				["qi"] = 15908,	-- Taming Rod (PQI!)
				["coord"] = { 45.8, 53.0, MAP.DUN_MOROGH },
				["races"] = { DWARF },
				["classes"] = { HUNTER },
				["lvl"] = 10,
				["groups"] = {
					objective(1, {	-- 0/1 Tame a Ice Claw Bear
						["providers"] = {
							{ "n", 1196 },	-- Ice Claw Bear
						},
					}),
				},
			}),
			q(96608, {	-- The Great Outdoors [Dun Morogh]
				["sourceQuest"] = 96628,	-- The Adventurer [Dun Morogh]
				["qg"] = 265813,	-- Eric Birghthammer
				["coord"] = { 46.7, 53.9, MAP.DUN_MOROGH },
				["timeline"] = { TIMELINE.ADDED_1_60_1 },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 4,
			}),
			q(313, {	-- The Grizzled Den
				["qg"] = 1377,	-- Pilot Stonegear
				["coord"] = { 49.6, 48.6, MAP.DUN_MOROGH },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 4,
				["groups"] = {
					objective(1, {	-- 0/8 Wendigo Mane
						["provider"] = { "i", 2671 },	-- Wendigo Mane (QI!)
						["crs"] = {
							-- Shaman Wendigo/Elder Wendigo //Braghe
							1134,	-- Young Wendigo
							1137,	-- Edan the Howler
							1271,	-- Old Icebeard
							1135,	-- Wendigo
						},
					}),
				},
			}),
			q(6074, {	-- The Hunter's Path [Ironforge]
				["qg"] = 5116,	-- Olmin Burningbeard <Hunter Trainer>
				["coord"] = { 70.0, 84.6, MAP.IRONFORGE },
				["races"] = { DWARF },
				["classes"] = { HUNTER },
				["isBreadcrumb"] = true,
				["lvl"] = 10,
			}),
			q(6075, {	-- The Hunter's Path [Dun Morogh]
				["qg"] = 11807,	-- Tristane Shadowstone
				["coord"] = { 30.6, 45.4, MAP.DUN_MOROGH },
				["races"] = { DWARF },
				["classes"] = { HUNTER },
				["isBreadcrumb"] = true,
				["lvl"] = 10,
			}),
			q(6076, {	-- The Hunter's Path [Stormwind City]
				["qg"] = 5515,	-- Einris Brightspear <Hunter Trainer>
				["coord"] = { 67.6, 36.4, MAP.STORMWIND_CITY },
				["races"] = { DWARF },
				["classes"] = { HUNTER },
				["isBreadcrumb"] = true,
				["lvl"] = 10,
			}),
			q(419, {	-- The Lost Pilot
				["qg"] = 1960,	-- Pilot Hammerfoot
				["coord"] = { 83.8, 39.2, MAP.DUN_MOROGH },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 8,
				["groups"] = {
					i(3151),	-- Siege Brigade Vest
				},
			}),
			q(315, {	-- The Perfect Stout
				["qg"] = 1374,	-- Rejold Barleybrew
				["coord"] = { 30.2, 45.8, MAP.DUN_MOROGH },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 5,
				["groups"] = {
					objective(1, {	-- 0/6 Shimmerweed
						["providers"] = {
							{ "i", 2676 },	-- Shimmerweed (QI!)
							{ "o", 276 },	-- Shimmerweed Basket
						},
						["cr"] = 1397,	-- Frostmane Seer
					}),
					i(2326),	-- Ivy-weave Bracers
					i(2905),	-- Goat Fur Cloak
				},
			}),
			q(433, {	-- The Public Servant
				["description"] = "The quest 'The Public Servant' gets flagged as not completed on a yearly basis, thus is unintentionally repeatable. This does not affect the collected state of the quest rewards.",
				["provider"] = { "n", 1977 },	-- Senator Mehr Stonehallow
				["coord"] = { 68.6, 56.0, MAP.DUN_MOROGH },
				["races"] = ALLIANCE_ONLY,
				["isYearly"] = true,
				["lvl"] = 6,
				-- Danny Donkey: Molkree says this quest propably got added by mistake to a list of quests to be marked as incomplete on a yearly basis. All yearly quests resets 15/01.
				-- Classic have description in the quest because it will not play ball and appear directly on the npc itself due to conflict with the state of being a QG. This is not an issue on retail.
				["groups"] = {
					objective(1, {	-- 0/10 Rockjaw Bonesnapper slain
						["provider"] = { "n", 1117 },	-- Rockjaw Bonesnapper
					}),
				},
			}),
			q(291, {	-- The Reports
				["sourceQuest"] = 287,	-- Frostmane Hold
				["qg"] = 1252,	-- Senir Whitebeard
				["qi"] = 2628,	-- Senir's Report (PQI!)
				["coord"] = { 46.6, 53.8, MAP.DUN_MOROGH },
				["races"] = ALLIANCE_ONLY,
			}),
			q(1653, {	-- The Test of Righteousness (1/3)
				["sourceQuest"] = 1652,	-- The Tome of Valor (4/4)
				["qg"] = 6171,	-- Duthorian Rall
				["coord"] = { 50.5, 47.5, MAP.STORMWIND_CITY },
				["races"] = ALLIANCE_ONLY,
				["classes"] = { PALADIN },
				["lvl"] = 20,
			}),
			q(1654, {	-- The Test of Righteousness (2/3)
				["sourceQuest"] = 1653,	-- The Test of Righteousness (1/3)
				["qg"] = 6181,	-- Jordan Stilwell
				["qi"] = 6996,	-- Jordan's Weapon Notes (PQI!)
				["coord"] = { 52.6, 36.8, MAP.DUN_MOROGH },
				["maps"] = { MAP.BLACKFATHOM_DEEPS, MAP.DARKSHORE, MAP.DEADMINES, MAP.LOCH_MODAN, MAP.SHADOWFANG_KEEP },
				["races"] = ALLIANCE_ONLY,
				["classes"] = { PALADIN },
				["lvl"] = 20,
				["groups"] = {
					objective(1, {	-- 0/1 Whitestone Oak Lumber
						["provider"] = { "i", 6994 },	-- Whitestone Oak Lumber (QI!)
						["cr"] = 641,	-- Goblin Woodcarver
					}),
					objective(3, {	-- 0/1 Jordan's Smithing Hammer
						["providers"] = {
							{ "i", 6895 },	-- Jordan's Smithing Hammer (QI!)
							{ "o", 91138 },	-- Jordan's Hammer
						},
					}),
					q(1655, {	-- Bailor's Ore Shipment
						["qg"] = 6241,	-- Bailor Stonehand
						["coord"] = { 36.0, 45.0, MAP.LOCH_MODAN },
						["races"] = ALLIANCE_ONLY,
						["classes"] = { PALADIN },
						["repeatable"] = true,
						["lvl"] = 20,
						["groups"] = {
							objective(1, {	-- 0/1 Jordan's Ore Shipment
								["providers"] = {
									{ "i", 6992 },	-- Jordan's Ore Shipment
									{ "o", 92420 },	-- Bailor's Ore
								},
								["coord"] = { 71.6, 21.4, LOCH_MODAN },
							}),
							objective(2, {	-- 0/1 Jordan's Refined Ore Shipment
								["provider"] = { "i", 6993 },	-- Jordan's Refined Ore Shipment
								["questID"] = 1654,	-- The Test of Righteousness (2/3)
							}),
						},
					}),
					q(1442, {	-- Seeking the Kor Gem
						["sourceQuest"] = 1653,	-- The Test of Righteousness (1/3)
						["qg"] = 3649,	-- Thundris Windweaver
						["coord"] = { 37.4, 40.2, MAP.DARKSHORE },
						["races"] = ALLIANCE_ONLY,
						["classes"] = { PALADIN },
						["repeatable"] = true,
						["lvl"] = 20,
						["groups"] = {
							objective(1, {	-- 0/1 Corrupted Kor Gem
								["provider"] = { "i", 6995 },	-- Corrupted Kor Gem
								["crs"] = {
									4803,	-- Blackfathom Oracle
									4805,	-- Blackfathom Sea Witch
									4802,	-- Blackfathom Tide Priestess
								},
							}),
							objective(4, {	-- 0/1 Purified Kor Gem
								["provider"] = { "i", 7083 },	-- Purified Kor Gem
								["questID"] = 1654,	-- The Test of Righteousness (2/3)
							}),
						},
					}),
				},
			}),
			q(1806, {	-- The Test of Righteousness (3/3)
				["sourceQuest"] = 1654,	-- The Test of Righteousness (2/3)
				["qg"] = 6181,	-- Jordan Stilwell
				["coord"] = { 52.6, 36.8, MAP.DUN_MOROGH },
				["races"] = ALLIANCE_ONLY,
				["classes"] = { PALADIN },
				["lvl"] = 20,
				["groups"] = {
					i(6953),	-- Verigan's Fist
				},
			}),
			q(432, {	-- Those Blasted Troggs!
				["qg"] = 1254,	-- Foreman Stonebrow
				["coord"] = { 69.0, 56.2, MAP.DUN_MOROGH },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 5,
				["groups"] = {
					objective(1, {	-- 0/6 Rockjaw Skullthumper slain
						["provider"] = { "n", 1115 },	-- Rockjaw Skullthumper
					}),
				},
			}),
			q(2299, {	-- To Hulfdan!
				["sourceQuest"] = 2218,	-- Road to Salvation
				["qg"] = 1234,	-- Hogral Bakkan
				["coord"] = { 47.6, 52.6, MAP.DUN_MOROGH },
				["races"] = ALLIANCE_ONLY,
				["classes"] = { ROGUE },
				["isBreadcrumb"] = true,
				["lvl"] = 16,
			}),
			q(400, {	-- Tools for Steelgrill
				["qg"] = 1872,	-- Tharek Blackstone
				["qi"] = 2999,	-- Steelgrill's Tools (PQI!)
				["coord"] = { 46.0, 51.6, MAP.DUN_MOROGH },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 2,
			}),
			q(6086, {	-- Training the Beast
				["sourceQuest"] = 6085,	-- Taming the Beast (3/3)
				["qg"] = 1231,	-- Grif Wildheart <Hunter Trainer>
				["coord"] = { 45.8, 53.0, MAP.DUN_MOROGH },
				["races"] = { DWARF },
				["classes"] = { HUNTER },
				["lvl"] = 10,
				["groups"] = {
					recipe(883),	-- Call Pet
					recipe(2641),	-- Dismiss Pet
					recipe(1515),	-- Tame Beast
				},
			}),
			q(99162, {	-- Treacherous Cold
				["sourceQuest"] = 99159,	-- Finding Warmth
				["qg"] = 1253,	-- Father Gavin
				["coord"] = { 57.7, 44.9, MAP.DUN_MOROGH },
				["races"] = ALLIANCE_ONLY,
				["timeline"] = { TIMELINE.ADDED_1_60_1 },
				["groups"] = {
					objective(1, {	-- 0/1 Coalbeard's Rifle
						["providers"] = {
							{ "o", 695222 },	-- Coalbeard's Rifle
							{ "i", 286358 },	-- Coalbeard's Rifle
						},
						["coord"] = { 52.1, 44.1, MAP.DUN_MOROGH },
					}),
					objective(1, {	-- 0/1 Stoneavil's Rifle
						["providers"] = {
							{ "o", 695277 },	-- Stoneavil's Rifle
							{ "i", 286360 },	-- Stoneavil's Rifle
						},
						["coord"] = { 53.1, 58.8, MAP.DUN_MOROGH },
					}),
					objective(1, {	-- 0/1 Sunhammers's Rifle
						["providers"] = {
							{ "o", 695223 },	-- Sunhammers's Rifle
							{ "i", 286359 },	-- Sunhammers's Rifle
						},
						["coord"] = { 59.9, 50.1, MAP.DUN_MOROGH },
					}),
				},
			}),
			q(312, {	-- Tundra MacGrann's Stolen Stash
				["qg"] = 1266,	-- Tundra MacGrann
				["coord"] = { 34.6, 51.6, MAP.DUN_MOROGH },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 7,
				["groups"] = {
					objective(1, {	-- 0/1 MacGrann's Dried Meats
						["providers"] = {
							{ "i", 2667 },	-- MacGrann's Dried Meats (QI!)
							{ "o", 272 },	-- MacGrann's Meat Locker
						},
						["coord"] = { 38.5, 53.93, MAP.DUN_MOROGH },
					}),
					i(6177),	-- Ironwrought Bracers
					i(10550),	-- Wooly Mittens
				},
			}),
			q(96391, {	-- Underground Map
				qs = 274268,	-- Dark Iron Map (QS!)
				coord = { 77.4, 61.4, MAP.DUN_MOROGH },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = ALLIANCE_ONLY,
				lvl = 9,
			}),
		}),
		n(RARES, {
			n(1130, {	-- Bjarn
				["coords"] = {
					{ 52.8, 58.4, MAP.DUN_MOROGH },
					{ 56.8, 56.8, MAP.DUN_MOROGH },
					{ 63.6, 60.6, MAP.DUN_MOROGH },
					{ 59.0, 61.6, MAP.DUN_MOROGH },
				},
				["groups"] = {
					i(2069),	-- Black Bear Hide Vest
				},
			}),
			n(1137, {	-- Edan the Howler
				["description"] = "Located in The Grizzled Den.",
				["coords"] = {
					{ 43.6, 49.6, MAP.DUN_MOROGH },
					{ 39.6, 48.2, MAP.DUN_MOROGH },
					{ 42.2, 46.4, MAP.DUN_MOROGH },
				},
				["groups"] = {
					i(3225),	-- Bloodstained Knife
					i(3008),	-- Wendigo Fur Cloak
				},
			}),
			n(8503, {	-- Gibblewilt
				["coords"] = {
					{ 27.2, 36.6, MAP.DUN_MOROGH },
					{ 25.0, 44.6, MAP.DUN_MOROGH },
				},
				["groups"] = {
					i(10554),	-- Foreman Pants
					i(10553),	-- Foreman Vest
				},
			}),
			n(1260, {	-- Great Father Arctikus
				["coords"] = {
					{ 23.8, 53.4, MAP.DUN_MOROGH },
					{ 22.0, 51.0, MAP.DUN_MOROGH },
				},
				["groups"] = {
					i(3223),	-- Frostmane Scepter
					i(2546),	-- Royal Frostmane Girdle
				},
			}),
			n(1119, {	-- Hammerspine
				["coords"] = {
					{ 71.8, 51.4, MAP.DUN_MOROGH },
					{ 72.8, 53.8, MAP.DUN_MOROGH },
				},
				["groups"] = {
					i(763),		-- Ice-covered Bracers
					i(2254),	-- Icepane Warhammer
				},
			}),
			n(1271, {	-- Old Icebeard
				["coord"] = { 38.4, 54.0, MAP.DUN_MOROGH },
				["groups"] = {
					i(2899),	-- Wengido Collar
				},
			}),
			n(1132, {	-- Timber
				["coords"] = {
					{ 36.0, 37.8, MAP.DUN_MOROGH },
					{ 35.6, 42.8, MAP.DUN_MOROGH },
					{ 31.8, 42.6, MAP.DUN_MOROGH },
				},
				["groups"] = {
					i(3224),	-- Silver-lined Bracers
					i(1965),	-- White Wolf Gloves
				},
			}),
		}),
		n(RIDING_TRAINER, {
			n(7954, {	-- Binjy Featherwhistle <Mechanostrider Pilot>
				["coord"] = { 49.2, 48.0, MAP.DUN_MOROGH },
				["races"] = ALLIANCE_ONLY,
				-- Available to Gnomes without faction requirements.
				["minReputation"] = { FACTION_GNOMEREGAN, EXALTED },	-- Gnomeregan Exiles, Exalted.
				["OnInit"] = [[function(t)
					if _.RaceIndex == ]] .. GNOME .. [[ then
						t.minReputation = nil;
					end
					return t;
				end]],
				["groups"] = {
					recipe(10907, {	-- Mechanostrider Piloting
						["cost"] = 950000,
						["lvl"] = 40,
					}),
				},
			}),
			n(4772, {	-- Ultham Ironhorn <Ram Riding Instructor>
				["coord"] = { 63.8, 50.2, MAP.DUN_MOROGH },
				["races"] = ALLIANCE_ONLY,
				-- Available to Dwarves without faction requirements.
				["minReputation"] = { FACTION_IRONFORGE, EXALTED },	-- Ironforge, Exalted.
				["OnInit"] = [[function(t)
					if _.RaceIndex == ]] .. DWARF .. [[ then
						t.minReputation = nil;
					end
					return t;
				end]],
				["groups"] = {
					recipe(826, {	-- Ram Riding
						["cost"] = 950000,
						["lvl"] = 40,
					}),
				},
			}),
		}),
		n(VENDORS, {
			n(8508, {	-- Gretta Ganter <Fisherman Supplies>
				["coord"] = { 31.6, 44.6, MAP.DUN_MOROGH },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(6325),	-- Recipe: Brilliant Smallfish (RECIPE!)
				},
			}),
			n(1247, {	-- Innkeeper Belm <Innkeeper>
				["coord"] = { 47.4, 52.6, MAP.DUN_MOROGH },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(2894),	-- Rhapsody Malt
					i(2686),	-- Thunder Ale
				},
			}),
			n(7955, {	-- Milli Featherwhistle <Mechanostrider Merchant>
				["coord"] = { 49.0, 48.0, MAP.DUN_MOROGH },
				-- Available to Gnomes without faction requirements.
				["minReputation"] = { FACTION_GNOMEREGAN, EXALTED },	-- Gnomeregan Exiles, Exalted.
				["OnInit"] = [[function(t)
					if _.RaceIndex == ]] .. GNOME .. [[ then
						t.minReputation = nil;
					end
					return t;
				end]],
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(8595),	-- Blue Mechanostrider (MOUNT!)
					i(13321),	-- Green Mechanostrider (MOUNT!)
					i(8563),	-- Red Mechanostrider (MOUNT!)
					i(13322),	-- Unpainted Mechanostrider (MOUNT!)
					i(18772),	-- Swift Green Mechanostrider (MOUNT!)
					i(18773),	-- Swift White Mechanostrider (MOUNT!)
					i(18774),	-- Swift Yellow Mechanostrider (MOUNT!)
				},
			}),
			n(1261, {	-- Veron Amberstill <Ram Breeder>
				["coord"] = { 63.4, 50.6, MAP.DUN_MOROGH },
				-- Available to Dwarves without faction requirements.
				["minReputation"] = { FACTION_IRONFORGE, EXALTED },	-- Ironforge, Exalted.
				["OnInit"] = [[function(t)
					if _.RaceIndex == ]] .. DWARF .. [[ then
						t.minReputation = nil;
					end
					return t;
				end]],
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(5872),	-- Brown Ram (MOUNT!)
					i(5864),	-- Gray Ram (MOUNT!)
					i(5873),	-- White Ram (MOUNT!)
					i(18786),	-- Swift Brown Ram (MOUNT!)
					i(18787),	-- Swift Gray Ram (MOUNT!)
					i(18785),	-- Swift White Ram (MOUNT!)
				},
			}),
			n(1263, {	-- Yarlyn Amberstill
				["coord"] = { 63.2, 50.8, MAP.DUN_MOROGH },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(280797, {	-- Artic Rabbit (PET!)
						["timeline"] = { TIMELINE.ADDED_1_60_1 },
					}),
					i(280801, {	-- Brown Rabbit (PET!)
						["timeline"] = { TIMELINE.ADDED_1_60_1 },
					}),
					i(8497),	-- Snowshoe Rabbit (PET!)
				},
			}),
		}),
		n(ZONE_DROPS, {
			i(769),	-- Chunk of Boar Meat
			i(2886, {	-- Crag Boar Rib
				["description"] = "Only drops from Crag Boars in Dun Morogh.",
				["crs"] = {
					1125,	-- Crag Boar
					1689,	-- Scarred Crag Boar
					1127,	-- Elder Crag Boar
					1126,	-- Large Crag Boar
				},
				["coord"] = { 46.6, 59.8, MAP.DUN_MOROGH },
			}),
			i(274268, {	-- Dark Iron Map (QS!)
				timeline = { TIMELINE.ADDED_1_60_1 },
				coord = { 78.6, 62.0, MAP.DUN_MOROGH },
				crs = {
					6124,	-- Captain Beld <Dark Iron Captain>
					6123,	-- 6123
				},
			}),
			i(2067, {	-- Frostbit Staff
				["cr"] = 1117,	-- Rockjaw Bonesnapper
				["coords"] = {
					{ 79.2, 48.4, MAP.DUN_MOROGH },
					{ 78.0, 54.2, MAP.DUN_MOROGH },
				},
			}),
			i(2260, {	-- Frostmane Hand Axe
				["crs"] = {
					1123,	-- Frostmane Headhunter
					1122,	-- Frostmane Hideskinner
				},
				["coords"] = {
					{ 26.6, 50.6, MAP.DUN_MOROGH },
					{ 27.2, 52.8, MAP.DUN_MOROGH },
				},
			}),
			i(2258, {	-- Frostmane Shortsword
				["cr"] = 1120,	-- Frostmane Troll
				["coords"] = {
					{ 26.6, 50.6, MAP.DUN_MOROGH },
					{ 27.2, 52.8, MAP.DUN_MOROGH },
				},
			}),
			i(2257, {	-- Frostmane Staff
				["cr"] = 1124,	-- Frostmane Shadowcaster
				["coords"] = {
					{ 26.6, 50.6, MAP.DUN_MOROGH },
					{ 27.2, 52.8, MAP.DUN_MOROGH },
				},
				
			}),
			i(2112, {	-- Lumberjack Jerkin
				["cr"] = 1689,	-- Scarred Crag Boar
				["coords"] = {
					{ 88.6, 51.4, MAP.DUN_MOROGH },
					{ 81.6, 49.0, MAP.DUN_MOROGH },
				},
			}),
			i(2898, {	-- Mountaineer Chestpiece
				["cr"] = 1196,	-- Ice Claw Bear
				["coords"] = {
					{ 30.8, 40.4, MAP.DUN_MOROGH },
					{ 37.2, 44.8, MAP.DUN_MOROGH },
					{ 67.0, 50.2, MAP.DUN_MOROGH },
				},
			}),
			i(2065, {	-- Rockjaw Blade
				["cr"] = 1116,	-- Rockjaw Ambusher
				["coords"] = {
					{ 72.6, 54.0, MAP.DUN_MOROGH },
					{ 77.6, 59.6, MAP.DUN_MOROGH },
				},
			}),
			i(2066, {	-- Skull Hatchet
				["cr"] = 1115,	-- Rockjaw Skullthumper
				["coords"] = {
					{ 78.2, 52.2, MAP.DUN_MOROGH },
					{ 76.6, 58.0, MAP.DUN_MOROGH },
				},
			}),
			i(2114, {	-- Snowy Robe
				["crs"] = 1133,	-- Starving Winter Wolf
				["coords"] = {
					{ 36.0, 38.8, MAP.DUN_MOROGH },
					{ 33.0, 45.0, MAP.DUN_MOROGH },
				},
			}),
			i(2064, {	-- Trogg Club
				["cr"] = 1118,	-- Rockjaw Backbreaker
				["coords"] = {
					{ 80.0, 57.6, MAP.DUN_MOROGH },
					{ 69.4, 58.8, MAP.DUN_MOROGH },
				},
			}),
			i(5767, {	-- Violet Robes
				["cr"] = 1397,	-- Frostmane Seer
				["coords"] = {
					{ 49.8, 37.2, MAP.DUN_MOROGH },
					{ 46.6, 40.6, MAP.DUN_MOROGH },
					{ 49.0, 42.6, MAP.DUN_MOROGH },
				},
				
			}),
		}),
	},
});
