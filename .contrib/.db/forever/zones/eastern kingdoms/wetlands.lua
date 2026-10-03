---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

maproot(MAP.EASTERN_KINGDOMS, MAP.WETLANDS, {
	["lore"] = "The Wetlands is a large, wet zone below Stonewrought Dam and north of Loch Modan, covered with small rivers, lakes, and ponds. Bordered on three sides by mountains, the Wetlands are open to the ocean to the west. Adventurers seeking a route to the Wetlands must either come through sieged Dun Algaz from Loch Modan or cross the damaged Thandol Span from Arathi Highlands. The northern slopes of Wetlands are generally classed within mountains of Khaz Modan.\n\nThe Wetlands is a vast, cold swamp. Mists cloak the ground, and the overcast sky makes the land a uniform gray. Many Ironforge strongholds once stood in this region, but war has reduced them to rubble. Wild creatures, murlocs and renegade orcs now control the land. Menethil Harbor, a city on the west coast, is the Alliance's only presence in this dreary region.",
	["icon"] = 236853,
	["groups"] = {
		n(ACHIEVEMENTS, {
			ach(841),	-- Explore Wetlands
		}),
		explorationHeader({
			exploration(1036),	-- Angerfang Encampment
			exploration(1018),	-- Black Channel Marsh
			exploration(1022),	-- Bluegill Marsh
			exploration(1016),	-- Direforge Hill
			exploration(1038),	-- Dragonmaw Gates
			exploration(836),	-- Dun Algaz
			exploration(205),	-- Dun Modr
			exploration(1037),	-- Grim Batol
			exploration(309),	-- Ironbeard's Tomb
			exploration(150),	-- Menethil Harbor
			exploration(1020),	-- Mosshide Fen
			exploration(1017),	-- Raptor Ridge
			exploration(1023),	-- Saltspray Glen
			exploration(1024),	-- Sundown Marsh
			visit_exploration(5304,{coord={26.3,25.9,MAP.WETLANDS}}),	-- Swiftgear Station
			exploration(1025),	-- The Green Belt
			exploration(1021),	-- Thelgen Rock
			exploration(118),	-- Whelgar's Excavation Site
		}),
		n(FLIGHT_PATHS, {
			fp(7, {	-- Menethil Harbor, Wetlands
				["cr"] = 1571,	-- Shellei Brondir <Gryphon Master>
				["coord"] = { 9.6, 59.6, MAP.WETLANDS },
				["races"] = ALLIANCE_ONLY,
			}),
		}),
		lockpicking({
			o(179488, {	-- Battered Footlocker
				["coords"] = {
					{ 13.7, 41.6, MAP.WETLANDS },
					{ 16.5, 30.8, MAP.WETLANDS },
					{ 18.4, 39.5, MAP.WETLANDS },
				},
				["requireSkill"] = LOCKPICKING,
				["learnedAt"] = 110,
			}),
		}),
		n(PROFESSIONS, {
			prof(FISHING, {
				o(180662),	-- Schooner Wreckage
			}),
			prof(MINING, {
				i(3340, {	-- Incendicite Ore
					["provider"] = { "o", 1610 },	-- Incendicite Mineral Vein
				}),
			}),
			prof(SKINNING, {
				i(7287, {	-- Red Whelp Scale
					["coord"] = { 62.1, 47.5, MAP.WETLANDS },	-- Greenwarden's Grove, southeast of it's future location.
					["crs"] = {
						1069,	-- Crimson Whelp
						1044,	-- Flamesnorting Whelp
					},
				}),
			}),
		}),
		n(QUESTS, {
			q(304, {	-- A Grim Task
				["qg"] = 1071,	-- Longbraid the Grim
				["coord"] = { 49.8, 18.3, MAP.WETLANDS },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 26,
				["groups"] = {
					objective(1, {	-- 0/1 Ear of Balgaras
						["provider"] = { "i", 3639 },	-- Ear of Balgaras
						["cr"] = 1364,	-- Balgaras the Foul
						["coords"] = {
							{ 47.4, 15.0, MAP.WETLANDS },
							{ 46.6, 18.6, MAP.WETLANDS },
							{ 61.8, 31.0, MAP.WETLANDS },
						},
					}),
					i(2916),	-- Gold Lion Shield
					i(2917),	-- Tranquil Ring
				},
			}),
			q(471, {	-- Apprentice's Duties
				["sourceQuest"] = 484,	-- Young Crocolisk Skins
				["qg"] = 2094,	-- James Halloran
				["coord"] = { 8.5, 55.7, MAP.WETLANDS },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 18,
				["groups"] = {
					objective(1, {	-- 0/6 Giant Crocolisk Skin
						["provider"] = { "i", 3348 },	-- Giant Crocolisk Skin
						["cr"] = 2089,	-- Giant Wetlands Crocolisk
					}),
					i(2545),	-- Malleable Chain Leggings
					i(3561),	-- Resilient Poncho
					i(3681),	-- Recipe: Crocolisk Gumbo (RECIPE!)
				},
			}),
			q(275, {	-- Blisters on The Land
				["sourceQuest"] = 277,	-- Fire Taboo
				["qg"] = 1244,	-- Rethiel the Greenwarden
				["coord"] = { 56.3, 40.4, MAP.WETLANDS },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 20,
				["groups"] = {
					objective(1, {	-- 0/12 Fen Creeper slain
						["provider"] = { "n", 1040 },	-- Fen Creeper
					}),
					i(3558),	-- Fen Keeper Robe
					i(1273),	-- Forest Chain
					i(2263),	-- Phytoblade
				},
			}),
			q(279, {	-- Claws from the Deep
				["qg"] = 1242,	-- Karl Boran
				["coord"] = { 8.3, 58.5, MAP.WETLANDS },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 20,
				["groups"] = {
					objective(1, {	-- 0/12 Bluegill Murloc slain
						["provider"] = { "n", 1024 },	-- Bluegill Murloc
					}),
					objective(2, {	-- 0/1 Gobbler's Head
						["provider"] = { "i", 3618 },	-- Gobbler's Head
						["coord"] = { 17.4, 40.4, MAP.WETLANDS },
						["cr"] = 1259,	-- Gobbler
					}),
				},
			}),
			q(293, {	-- Cleansing the Eye
				["sourceQuest"] = 292,	-- The Eye of Paleth
				["qg"] = 1217,	-- Glorin Steelbrow
				["coord"] = { 10.6, 60.5, MAP.WETLANDS },
				["maps"] = { MAP.STORMWIND_CITY },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 22,
				["groups"] = {
					i(2943),	-- Eye of Paleth
				},
			}),
			q(469, {	-- Daily Delivery
				["qg"] = 2093,	-- Einar Stonegrip
				["qi"] = 3347,	-- Bundle of Crocolisk Skins
				["coord"] = { 49.8, 39.4, MAP.WETLANDS },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 18,
			}),
			q(474, {	-- Defeat Nek'rosh
				["sourceQuest"] = 465,	-- Nek'rosh's Gambit
				["provider"] = { "o", 1609 },	-- Dragonmaw Catapult
				["coord"] = { 47.5, 46.9, MAP.WETLANDS },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 23,
				["groups"] = {
					objective(1, {	-- 0/1 Nek'rosh's Head
						["provider"] = { "i", 3625 },	-- Nek'rosh's Head
						["coord"] = { 54.2, 54.2, MAP.WETLANDS },
						["cr"] = 2091,	-- Chieftain Nek'rosh
					}),
					i(3209),	-- Ancient War Sword
					i(6194),	-- Barreling Reaper
				},
			}),
			q(470, {	-- Digging Through the Ooze
				["qg"] = 2111,	-- Sida
				["coord"] = { 11.8, 58.0, MAP.WETLANDS },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 19,
				["groups"] = {
					objective(1, {	-- 0/1 Sida's Bag
						["provider"] = { "i", 3349 },	-- Sida's Bag
						["crs"] = {
							1032,	-- Black Ooze
							1031,	-- Crimson Ooze
							1033,	-- Monstrous Ooze
						},
					}),
					i(3352),	-- Ooze-covered Bag
				},
			}),
			q(472, {	-- Fall of Dun Modr
				["qg"] = 2097,	-- Harlo Barnaby
				["coord"] = { 10.8, 55.9, MAP.WETLANDS },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 25,
			}),
			q(277, {	-- Fire Taboo
				["sourceQuest"] = 276,	-- Tramping Paws
				["qg"] = 1244,	-- Rethiel the Greenwarden
				["coord"] = { 56.3, 40.4, MAP.WETLANDS },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 20,
				["groups"] = {
					objective(1, {	-- 0/9 Crude Flint
						["provider"] = { "i", 2611 },	-- Crude Flint
						["crs"] = {
							14425,	-- Gnawbone
							1014,	-- Mosshide Alpha
							1012,	-- Mosshide Brute
							1010,	-- Mosshide Fenrunner
							1009,	-- Mosshide Mistweaver
							1013,	-- Mosshide Mystic
							1011,	-- Mosshide Trapper
						},
					}),
				},
			}),
			q(305, {	-- In Search of The Excavation Team (1/2)
				["qg"] = 2096,	-- Tarrel Rockweaver
				["coord"] = { 11.5, 52.2, MAP.WETLANDS },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 21,
			}),
			q(306, {	-- In Search of The Excavation Team (2/2)
				["sourceQuest"] = 305,	-- In Search of The Excavation Team (1/2)
				["qg"] = 1076,	-- Merrin Rockweaver
				["qi"] = 2639,	-- Merrin's Letter
				["coord"] = { 38.8, 52.2, MAP.WETLANDS },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 21,
			}),
			q(290, {	-- Lifting the Curse
				["sourceQuest"] = 289,	-- The Cursed Crew
				["qg"] = 1239,	-- First Mate Fitzsimmons
				["coord"] = { 10.9, 59.6, MAP.WETLANDS },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 22,
				["groups"] = {
					objective(1, {	-- 0/1 Intrepid Strongbox Key
						["provider"] = { "i", 2629 },	-- Intrepid Strongbox Key
						["coord"] = { 15.6, 23.4, MAP.WETLANDS },
						["cr"] = 1160,	-- Captain Halyndor
					}),
				},
			}),
			q(321, {	-- Lightforge Iron
				["sourceQuest"] = 270,	-- The Doomed Fleet
				["qg"] = 1217,	-- Glorin Steelbrow
				["coord"] = { 10.6, 60.5, MAP.WETLANDS },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 20,
				["groups"] = {
					i(2702),	-- Lightforge Ingot
				},
			}),
			q(526, {	-- Lightforge Ingots
				["sourceQuest"] = 321,	-- Lightforge Iron
				["altQuests"] = { 324 },	-- The Lost Ingots
				["qg"] = 1217,	-- Glorin Steelbrow
				["coord"] = { 10.6, 60.6, MAP.WETLANDS },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 20,
				["groups"] = {
					objective(1, {	-- 0/5 Lightforge Ingot
						["provider"] = { "i", 2702 },	-- Lightforge Ingot
						["cr"] = 1418,	-- Bluegill Raider
					}),
				},
			}),
			q(465, {	-- Nek'rosh's Gambit
				["sourceQuest"] = 464,	-- War Banners
				["qg"] = 2104,	-- Captain Stoutfist
				["qi"] = 3339,	-- Dwarven Tinder
				["coord"] = { 9.8, 57.4, MAP.WETLANDS },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 23,
			}),
			q(294, {	-- Ormer's Revenge (1/3)
				["qg"] = 1078,	-- Ormer Ironbraid
				["coord"] = { 38.0, 51.2, MAP.WETLANDS },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 22,
				["groups"] = {
					objective(1, {	-- 0/10 Mottled Raptor slain
						["provider"] = { "n", 1020 },	-- Mottled Raptor
					}),
					objective(2, {	-- 0/10 Mottled Screecher slain
						["provider"] = { "n", 1021 },	-- Mottled Screecher
					}),
				},
			}),
			q(295, {	-- Ormer's Revenge (2/3)
				["sourceQuest"] = 294,	-- Ormer's Revenge (1/3)
				["qg"] = 1078,	-- Ormer Ironbraid
				["coord"] = { 38.0, 51.2, MAP.WETLANDS },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 22,
				["groups"] = {
					objective(1, {	-- 0/10 Mottled Scytheclaw slain
						["provider"] = { "n", 1022 },	-- Mottled Scytheclaw
					}),
					objective(2, {	-- 0/10 Mottled Razormaw slain
						["provider"] = { "n", 1023 },	-- Mottled Razormaw
					}),
				},
			}),
			q(296, {	-- Ormer's Revenge (3/3)
				["sourceQuest"] = 295,	-- Ormer's Revenge (2/3)
				["qg"] = 1078,	-- Ormer Ironbraid
				["coord"] = { 38.0, 51.2, MAP.WETLANDS },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 22,
				["groups"] = {
					objective(1, {	-- 0/1 Sarltooth's Talon
						["provider"] = { "i", 3638 },	-- Sarltooth's Talon
						["coord"] = { 33.0, 51.4, MAP.WETLANDS },
						["cr"] = 1353,	-- Sarltooth
					}),
					i(3493),	-- Raptor's End
					i(3566),	-- Raptorbane Armor
					i(5246),	-- Excavation Rod
					i(3682),	-- Recipe: Curiously Tasty Omelet (RECIPE!)
				},
			}),
			q(634, {	-- Plea To The Alliance
				["sourceQuest"] = 633,	-- The Thandol Span (3/3)
				["qg"] = 1075,	-- Rhag Garmason
				["coord"] = { 49.9, 18.2, MAP.WETLANDS },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 28,
			}),
			q(281, {	-- Reclaiming Goods
				["sourceQuest"] = 279,	-- Claws from the Deep
				["qg"] = 1242,	-- Karl Boran
				["coord"] = { 8.4, 58.6, MAP.WETLANDS },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 20,
			}),
			q(473, {	-- Report to Captain Stoutfist
				["sourceQuest"] = 455,	-- The Algaz Gauntlet
				["qg"] = 2086,	-- Valstag Ironjaw
				["coord"] = { 10.1, 56.9, MAP.WETLANDS },
				["races"] = ALLIANCE_ONLY,
				["isBreadcrumb"] = true,
				["lvl"] = 23,
			}),
			q(286, {	-- Return the Statuette
				["sourceQuest"] = 285,	-- Search More Hovels
				["providers"] = {
					{ "o", 259 },	-- Half-buried Barrel
					{ "i", 2625 },	-- Menethil Statuette
				},
				["coord"] = { 14.0, 34.8, MAP.WETLANDS },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 20,
				["groups"] = {
					i(2950),	-- Icicle Rod
					i(2949),	-- Mariner Boots
				},
			}),
			q(285, {	-- Search More Hovels
				["sourceQuest"] = 284,	-- The Search Continues
				["provider"] = { "o", 142151 },	-- Sealed Barrel
				["coord"] = { 13.6, 38.2, MAP.WETLANDS },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 20,
			}),
			q(943, {	-- The Absent Minded Prospector (5/5)
				["sourceQuest"] = 942,	-- The Absent Minded Prospector (4/5) (Darnassus)
				["qg"] = 2911,	-- Archaeologist Flagongut
				["coord"] = { 10.8, 60.4, MAP.WETLANDS },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 15,
				["groups"] = {
					objective(1, {	-- 0/1 Stone of Relu
						["provider"] = { "i", 5233 },	-- Stone of Relu
						["crs"] = {
							1020,	-- Mottled Raptor
							1023,	-- Mottled Razormaw
							1021,	-- Mottled Screecher
							1022,	-- Mottled Scytheclaw
						},
					}),
					objective(2, {	-- 0/1 Flagongut's Fossil
						["providers"] = {
							{ "i", 5234 },	-- Flagongut's Fossil
							{ "o", 9630 },	-- Flagongut's Fossil
						},
						["coord"] = { 38.8, 52.2, MAP.WETLANDS },
					}),
					i(5627),	-- Relic Blade
					i(5626),	-- Skullchipper
				},
			}),
			q(289, {	-- The Cursed Crew
				["sourceQuest"] = 288,	-- The Third Fleet
				["qg"] = 1239,	-- First Mate Fitzsimmons
				["coord"] = { 10.9, 59.6, MAP.WETLANDS },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 22,
				["groups"] = {
					objective(1, {	-- 0/13 Cursed Sailor
						["provider"] = { "n", 1157 },	-- Cursed Sailor
					}),
					objective(2, {	-- 0/5 Cursed Marine
						["provider"] = { "n", 1158 },	-- Cursed Marine
					}),
					objective(3, {	-- 0/1 Snellig's Snuffbox
						["provider"] = { "i", 3619 },	-- Snellig's Snuffbox
						["coord"] = { 14.0, 30.6, MAP.WETLANDS },
						["cr"] = 1159,	-- First Mate Snellig
					}),
				},
			}),
			q(303, {	-- The Dark Iron War
				["qg"] = 1074,	-- Motley Garmason
				["coord"] = { 49.7, 18.3, MAP.WETLANDS },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 25,
				["groups"] = {
					objective(1, {	-- 0/15 Dark Iron Dwarf
						["provider"] = { "n", 1051 },	-- Dark Iron Dwarf
					}),
					objective(2, {	-- 0/5 Dark Iron Tunneler
						["provider"] = { "n", 1053 },	-- Dark Iron Tunneler
					}),
					objective(3, {	-- 0/5 Dark Iron Saboteur
						["provider"] = { "n", 1052 },	-- Dark Iron Saboteur
					}),
					objective(4, {	-- 0/5 Dark Iron Demolitionist
						["provider"] = { "n", 1054 },	-- Dark Iron Demolitionist
					}),
				},
			}),
			q(292, {	-- The Eye of Paleth
				["sourceQuest"] = 290,	-- Lifting the Curse
				["provider"] = { "o", 112948 },	-- Intrepid's Locked Strongbox
				["coord"] = { 14.5, 24.0, MAP.WETLANDS },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 22,
				["groups"] = {
					i(2944),	-- Cursed Eye of Paleth
				},
			}),
			q(463, {	-- The Greenwarden
				["qg"] = 1239,	-- First Mate Fitzsimmons
				["coord"] = { 10.9, 59.6, MAP.WETLANDS },
				["races"] = ALLIANCE_ONLY,
				["isBreadcrumb"] = true,
				["lvl"] = 20,
			}),
			q(324, {	-- The Lost Ingots
				["sourceQuest"] = 321,	-- Lightforge Iron
				["altQuests"] = { 526 },	-- Lightforge Ingots
				["provider"] = { "o", 2734 },	-- Waterlogged Chest
				["coord"] = { 12.1, 64.1, MAP.WETLANDS },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 20,
				["groups"] = {
					objective(1, {	-- 0/5 Lightforge Ingot
						["provider"] = { "i", 2702 },	-- Lightforge Ingot
						["cr"] = 1418,	-- Bluegill Raider
					}),
				},
			}),
			q(1249, {	-- The Missing Diplomat (11/17)
				["sourceQuest"] = 1248,	-- The Missing Diplomat (10/17)
				["qg"] = 4963,	-- Mikhail <Bartender>
				["coord"] = { 10.6, 60.7, MAP.WETLANDS },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 28,
				["groups"] = {
					objective(1, {	-- Defeat Tapoke Jahn
						["provider"] = { "n", 4962 },	-- Tapoke "Slim" Jahn
					}),
				},
			}),
			q(1250, {	-- The Missing Diplomat (12/17)
				["sourceQuest"] = 1249,	-- The Missing Diplomat (11/17)
				["qg"] = 4962,	-- Tapoke "Slim" Jahn
				["coord"] = { 10.6, 60.3, MAP.WETLANDS },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 28,
			}),
			q(1264, {	-- The Missing Diplomat (13/17)
				["sourceQuest"] = 1250,	-- The Missing Diplomat (12/17)
				["qg"] = 4963,	-- Mikhail <Bartender>
				["coord"] = { 10.6, 60.7, MAP.WETLANDS },
				["maps"] = { MAP.DUSTWALLOW_MARSH },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 28,
			}),
			q(284, {	-- The Search Continues
				["sourceQuest"] = 281,	-- Reclaiming Goods
				["provider"] = { "o", 261 },	-- Damaged Crate
				["coord"] = { 13.5, 41.4, MAP.WETLANDS },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 20,
			}),
			q(631, {	-- The Thandol Span (1/3)
				["qg"] = 1075,	-- Rhag Garmason
				["coord"] = { 49.9, 18.2, MAP.WETLANDS },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 28,
			}),
			q(632, {	-- The Thandol Span (2/3)
				["sourceQuest"] = 631,	-- The Thandol Span (1/3)
				["providers"] = {
					{ "o", 2652 },	-- Ebenezer Rustlocke's Corpse
					{ "i", 4429 },	-- Deepfury's Orders
				},
				["coord"] = { 51.3, 8.0, MAP.WETLANDS },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 28,
			}),
			q(633, {	-- The Thandol Span (3/3)
				["sourceQuest"] = 632,	-- The Thandol Span (2/3)
				["qg"] = 1075,	-- Rhag Garmason
				["coord"] = { 49.9, 18.2, MAP.WETLANDS },
				["maps"] = { MAP.ARATHI_HIGHLANDS },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 28,
				["groups"] = {
					objective(1, {	-- Cache of Explosives Destroyed
						["provider"] = { "o", 2704 },	-- Cache of Explosives
						["coord"] = { 48.8, 88.2, MAP.ARATHI_HIGHLANDS },
					}),
					i(4504),	-- Dwarven Guard Cloak
					i(4505),	-- Swampland Trousers
				},
			}),
			q(288, {	-- The Third Fleet
				["qg"] = 1239,	-- First Mate Fitzsimmons
				["coord"] = { 10.9, 59.6, MAP.WETLANDS },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 22,
				["groups"] = {
					objective(1, {	-- 0/1 Flagon of Dwarven Honeymead
						["cost"] = { { "i", 2594, 1 } },	-- Flagon of Dwarven Honeymead
						["coord"] = { 10.6, 60.8, MAP.WETLANDS },
						["cr"] = 1464,	-- Innkeeper Helbrek <Innkeeper>
					}),
				},
			}),
			q(276, {	-- Tramping Paws
				["sourceQuest"] = 463,	-- The Greenwarden
				["qg"] = 1244,	-- Rethiel the Greenwarden
				["coord"] = { 56.3, 40.4, MAP.WETLANDS },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 20,
				["groups"] = {
					objective(1, {	-- 0/15 Mosshide Gnoll
						["provider"] = { "n", 1007 },	-- Mosshide Gnoll
					}),
					objective(2, {	-- 0/15 Mosshide Mongrel
						["provider"] = { "n", 1008 },	-- Mosshide Mongrel
					}),
				},
			}),
			q(299, {	-- Uncovering the Past
				["description"] = "The quest items spawn randomly in the dig site below.",
				["qg"] = 1077,	-- Prospector Whelgar
				["coord"] = { 38.8, 52.2, MAP.WETLANDS },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 25,
				["groups"] = {
					objective(1, {	-- 0/1 Ados Fragment
						["providers"] = {
							{ "i", 2658 },	-- Ados Fragment
							{ "o", 35252 },	-- Ancient Relic
						},
					}),
					objective(2, {	-- 0/1 Modr Fragment
						["providers"] = {
							{ "i", 2659 },	-- Modr Fragment
							{ "o", 334 },	-- Ancient Relic
						},
					}),
					objective(3, {	-- 0/1 Golm Fragment
						["providers"] = {
							{ "i", 2660 },	-- Golm Fragment
							{ "o", 333 },	-- Ancient Relic
						},
					}),
					objective(4, {	-- 0/1 Neru Fragment
						["providers"] = {
							{ "i", 2661 },	-- Neru Fragment
							{ "o", 331 },	-- Loose Soil
						},
					}),
					i(2913),	-- Silk Mantle of Gamn
				},
			}),
			q(464, {	-- War Banners
				["sourceQuest"] = 473,	-- Report to Captain Stoutfist
				["qg"] = 2104,	-- Captain Stoutfist
				["coord"] = { 9.8, 57.4, MAP.WETLANDS },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 23,
				["groups"] = {
					objective(1, {	-- 0/8 Dragonmaw War Banner
						["provider"] = { "i", 3337 },	-- Dragonmaw War Banner
						["crs"] = {
							2091,	-- Chieftain Nek'rosh
							1037,	-- Dragonmaw Battlemaster
							1057,	-- Dragonmaw Bonewarder
							1036,	-- Dragonmaw Centurion
							1034,	-- Dragonmaw Raider
							1038,	-- Dragonmaw Shadowwarder
							1035,	-- Dragonmaw Swamprunner
						},
					}),
				},
			}),
			q(484, {	-- Young Crocolisk Skins
				["qg"] = 2094,	-- James Halloran
				["coord"] = { 8.5, 55.7, MAP.WETLANDS },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 18,
				["groups"] = {
					objective(1, {	-- 0/4 Young Crocolisk Skin
						["provider"] = { "i", 3397 },	-- Young Crocolisk Skin
						["cr"] = 1417,	-- Young Wetlands Crocolisk
					}),
				},
			}),
		}),
		n(RARES, {
			n(1037, {	-- Dragonmaw Battlemaster
				["coords"] = {
					{ 42.8, 43.8, MAP.WETLANDS },
					{ 47.6, 46.0, MAP.WETLANDS },
					{ 50.0, 48.2, MAP.WETLANDS },
					{ 50.8, 50.6, MAP.WETLANDS },
					{ 53.0, 53.6, MAP.WETLANDS },
				},
			}),
			n(2108, {	-- Garneg Charskull
				["coords"] = {
					{ 38.6, 46.2, MAP.WETLANDS },
					{ 43.2, 44.2, MAP.WETLANDS },
					{ 48.0, 47.6, MAP.WETLANDS },
				},
				["groups"] = {
					i(6200),	-- Garneg's War Belt
					i(3392),	-- Ringed Helm
				},
			}),
			n(14425, {	-- Gnawbone
				["coords"] = {
					{ 39.0, 30.6, MAP.WETLANDS },
					{ 30.6, 31.2, MAP.WETLANDS },
					{ 35.4, 37.2, MAP.WETLANDS },
					{ 38.4, 36.4, MAP.WETLANDS },
				},
			}),
			n(1112, {	-- Leech Widow
				["coord"] = { 46.8, 61.4, MAP.WETLANDS },
				["groups"] = {
					i(4444),	-- Black Husk Shield
					i(6199),	-- Black Widow Band
				},
			}),
			n(2090, {	-- Ma'ruk Wyrmscale <Dragonmaw Warlord>
				["coord"] = { 47.8, 76.8, MAP.WETLANDS },
				["groups"] = {
					i(5749),	-- Scythe Axe
					i(5750),	-- Warchief's Girdle
				},
			}),
			n(14424, {	-- Mirelow
				["coords"] = {
					{ 18.6, 28.4, MAP.WETLANDS },
					{ 22.8, 31.4, MAP.WETLANDS },
					{ 27.8, 32.8, MAP.WETLANDS },
					{ 23.0, 21.4, MAP.WETLANDS },
					{ 24.6, 37.0, MAP.WETLANDS },
				},
			}),
			n(1140, {	-- Razormaw Matriarch
				["coord"] = { 70.8, 30.4, MAP.WETLANDS },
				["groups"] = {
					i(4463),	-- Beaded Raptor Collar
					i(6198),	-- Jurassic Wristguards
				},
			}),
			n(14433, {	-- Sludginn
				["coords"] = {
					{ 14.8, 67.2, MAP.WETLANDS },
					{ 12.0, 70.6, MAP.WETLANDS },
				},
			}),
		}),
		n(VENDORS, {
			n(1450, {	-- Brahnmar <Armorer>
				["coord"] = { 11.6, 59.9, MAP.WETLANDS },
				["races"] = ALLIANCE_ONLY,
				["sym"] = {{"select","itemID",
					2446,	-- Kite Shield
					2148,	-- Polished Scale Belt
					2149,	-- Polished Scale Boots
					2150,	-- Polished Scale Bracers
					2151,	-- Polished Scale Gloves
					2152,	-- Polished Scale Leggings
					2153,	-- Polished Scale Vest
					17192,	-- Reinforced Targe
				}},
			}),
			n(1441, {	-- Brak Durnad <Weaponsmith>
				["coord"] = { 11.6, 59.5, MAP.WETLANDS },
				["races"] = ALLIANCE_ONLY,
				["sym"] = {{"select","itemID",
					926,	-- Battle Axe
					922,	-- Dacian Falx
					927,	-- Double Axe
					925,	-- Flail
					2209,	-- Kris
					923,	-- Longsword
					928,	-- Long Staff
					924,	-- Maul
				}},
				["groups"] = {
					i(4817, {	-- Blessed Claymore
						["isLimited"] = true,
					}),
					i(4818, {	-- Executioner's Sword
						["isLimited"] = true,
					}),
				},
			}),
			n(3180, {	-- Dark Iron Entrepreneur <Speciality Goods>
				["coord"] = { 46.6, 18.2, MAP.WETLANDS },
				["groups"] = {
					i(4824, {	-- Blurred Axe
						["isLimited"] = true,
					}),
					i(4825, {	-- Callous Axe
						["isLimited"] = true,
					}),
					i(4826, {	-- Marauder Axe
						["isLimited"] = true,
					}),
					i(4835, {	-- Elite Shoulders
						["isLimited"] = true,
					}),
					i(4833, {	-- Glorious Shoulders
						["isLimited"] = true,
					}),
					i(4832, {	-- Mystic Sarong
						["isLimited"] = true,
					}),
					i(4830, {	-- Saber Leggings
						["isLimited"] = true,
					}),
					i(4831, {	-- Stalking Pants
						["isLimited"] = true,
					}),
				},
			}),
			n(2682, {	-- Fradd Swiftgear <Engineering Supplies>
				["coord"] = { 26.4, 25.8, MAP.WETLANDS },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(13309, {	-- Schematic: Lovingly Crafted Boomstick (RECIPE!)
						["isLimited"] = true,
					}),
					i(14639, {	-- Schematic: Minor Recombobulator (RECIPE!)
						["isLimited"] = true,
					}),
				},
			}),
			n(1454, {	-- Jennabink Powerseam <Tailoring Supplies & Specialty Goods>
				["coord"] = { 8.1, 55.8, MAP.WETLANDS },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(6275, {	-- Pattern: Greater Adept's Robe (RECIPE!)
						["isLimited"] = true,
					}),
					i(5772, {	-- Pattern: Red Woolen Bag (RECIPE!)
						["isLimited"] = true,
					}),
					i(4829, {	-- Dreamer's Belt
						["isLimited"] = true,
					}),
					i(4790, {	-- Inferno Cloak
						["isLimited"] = true,
					}),
					i(4828, {	-- Nightwind Belt
						["isLimited"] = true,
					}),
					i(4792, {	-- Spirit Cloak
						["isLimited"] = true,
					}),
					i(4793, {	-- Sylvan Cloak
						["isLimited"] = true,
					}),
					i(4827, {	-- Wizard's Belt
						["isLimited"] = true,
					}),
				},
			}),
			n(1461, {	-- Murndan Derth <Gunsmith>
				["coord"] = { 11.3, 59.6, MAP.WETLANDS },
				["races"] = ALLIANCE_ONLY,
				["sym"] = {{"select","itemID",
					3024,	-- BKP 2700 "Enforcer"
					3023,	-- Large Bore Blunderbuss
				}},
			}),
			n(1459, {	-- Naela Trance <Bowyer>
				["coord"] = { 11.3, 58.4, MAP.WETLANDS },
				["races"] = ALLIANCE_ONLY,
				["sym"] = {{"select","itemID",
					2507,	-- Laminated Recurve Bow
					3026,	-- Reinforced Bow
				}},
				["groups"] = {
					i(11304, {	-- Fine Longbow
						["isLimited"] = true,
					}),
				},
			}),
			n(1448, {	-- Neal Allen <Engineering Supplies & General Goods>
				["coord"] = { 10.8, 56.8, MAP.WETLANDS },
				["races"] = ALLIANCE_ONLY,
			}),
			n(1457, {	-- Samor Festivus <Shady Dealer>
				["coord"] = { 10.5, 60.2, MAP.WETLANDS },
				["races"] = ALLIANCE_ONLY,
			}),
			n(3178, {	-- Stuart Fleming <Fisherman>
				["coord"] = { 8.0, 58.3, MAP.WETLANDS },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(17062),	-- Recipe: Mithril Head Trout (RECIPE!)
					i(6368),	-- Recipe: Rainbow Fin Albacore (RECIPE!)
					i(6369),	-- Recipe: Rockscale Cod (RECIPE!)
				},
			}),
			n(1460, {	-- Unger Statforth <Horse Breeder>
				["coord"] = { 8.6, 54.4, MAP.WETLANDS },
				-- Available to Humans without faction requirements.
				["minReputation"] = { FACTION_STORMWIND, EXALTED },	-- Stormwind, Exalted.
				["OnInit"] = [[function(t)
					if _.RaceIndex == ]] .. HUMAN .. [[ then
						t.minReputation = nil;
					end
					return t;
				end]],
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(2411),	-- Black Stallion (MOUNT!)
					i(5656),	-- Brown Horse (MOUNT!)
					i(5655),	-- Chestnut Mare (MOUNT!)
					i(2414),	-- Pinto (MOUNT!)
				},
			}),
			n(2679, {	-- Wenna Silkbeard <Special Goods Dealer>
				["coord"] = { 25.6, 25.8, MAP.WETLANDS },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(7114, {	-- Pattern: Azure Silk Gloves (RECIPE!)
						["isLimited"] = true,
					}),
					i(7613, {	-- Pattern: Green Leather Armor (RECIPE!)
						["isLimited"] = true,
					}),
					i(7290, {	-- Pattern: Red Whelp Gloves (RECIPE!)
						["isLimited"] = true,
					}),
					i(4829, {	-- Dreamer's Belt
						["isLimited"] = true,
					}),
					i(4835, {	-- Elite Shoulders
						["isLimited"] = true,
					}),
					i(4833, {	-- Glorious Shoulders
						["isLimited"] = true,
					}),
					i(4832, {	-- Mystic Sarong
						["isLimited"] = true,
					}),
					i(4828, {	-- Nightwind Belt
						["isLimited"] = true,
					}),
					i(4830, {	-- Saber Leggings
						["isLimited"] = true,
					}),
					i(4831, {	-- Stalking Pants
						["isLimited"] = true,
					}),
					i(4827, {	-- Wizard's Belt
						["isLimited"] = true,
					}),
				},
			}),
		}),
		n(ZONE_DROPS, {
			i(3022, {	-- Bluegill Breeches
				["coords"] = {
					{ 23.0, 37.2, MAP.WETLANDS },
					{ 13.0, 33.2, MAP.WETLANDS },
				},
				["crs"] = {
					1028,	-- Bluegill Muckdweller
				},
			}),
			i(2046, {	-- Bluegill Kukri
				["coords"] = {
					{ 18.6, 40.0, MAP.WETLANDS },
					{ 15.2, 38.4, MAP.WETLANDS },
				},
				["crs"] = {
					1027,	-- Bluegill Warrior
				},
			}),
			i(1560, {	-- Bluegill Sandals
				["coords"] = {
					{ 18.6, 40.0, MAP.WETLANDS },
					{ 15.2, 38.4, MAP.WETLANDS },
				},
				["crs"] = {
					1025,	-- Bluegill Puddlejumper
				},
			}),
			i(2084, {	-- Darksteel Bastard Sword
				["coords"] = {
					{ 62.4, 28.0, MAP.WETLANDS },
					{ 46.8, 18.0, MAP.WETLANDS },
				},
				["crs"] = {
					1054,	-- Dark Iron Demolitionist
				},
			}),
			i(1955, {	-- Dragonmaw Chain Boots
				["coords"] = {
					{ 50.6, 49.4, MAP.WETLANDS },
					{ 39.0, 46.6, MAP.WETLANDS },
				},
				["cr"] = 1035,	-- Dragonmaw Swamprunner
			}),
			i(753, {	-- Dragonmaw Shortsword
				["coords"] = {
					{ 54.2, 54.2, MAP.WETLANDS },
					{ 53.4, 56.0, MAP.WETLANDS },
					{ 45.6, 45.4, MAP.WETLANDS },
				},
				["cr"] = 1036,	-- Dragonmaw Centurion
			}),
			i(11150, {	-- Formula: Enchant Gloves - Mining (RECIPE!)
				["crs"] = {
					1364,	-- Balgaras the Foul
					1054,	-- Dark Iron Demolitionist
					1051,	-- Dark Iron Dwarf
					1052,	-- Dark Iron Saboteur
					1053,	-- Dark Iron Tunneler
				},
			}),
			i(892, {	-- Gnoll Casting Gloves
				["coords"] = {
					{ 45.6, 34.6, MAP.WETLANDS },
					{ 61.0, 58.4, MAP.WETLANDS },
					{ 62.6, 69.2, MAP.WETLANDS },
				},
				["crs"] = {
					1009,	-- Mosshide Mistweaver
				},
			}),
			i(5788, {	-- Pattern: Thick Murloc Armor (RECIPE!)
				["coord"] = { 15.6, 23.4, MAP.WETLANDS },
				["cr"] = 1160,	-- Captain Halyndor
			}),
			i(3076, {	-- Smoldering Boots
				["coords"] = {
					{ 66.8, 53.2, MAP.WETLANDS },
					{ 59.6, 43.0, MAP.WETLANDS },
				},
				["crs"] = {
					1042,	-- Red Whelp
				},
			}),
			i(3074, {	-- Smoldering Gloves
				["coords"] = {
					{ 60.6, 33.2, MAP.WETLANDS },
					{ 66.2, 49.0, MAP.WETLANDS },
				},
				["crs"] = {
					1043,	-- Lost Whelp
				},
			}),
			i(3073, {	-- Smoldering Pants
				["coords"] = {
					{ 61.8, 31.2, MAP.WETLANDS },
					{ 65.4, 43.0, MAP.WETLANDS },
					{ 68.8, 45.6, MAP.WETLANDS },
				},
				["crs"] = {
					1069,	-- Crimson Whelp
				},
			}),
			i(3072, {	-- Smoldering Robe
				["coords"] = {
					{ 71.8, 47.6, MAP.WETLANDS },
					{ 66.4, 40.4, MAP.WETLANDS },
					{ 63.8, 33.6, MAP.WETLANDS },
				},
				["crs"] = {
					1044,	-- Flamesnorting Whelp
				},
			}),
			i(6315, {	-- Steelarrow Crossbow
				["coords"] = {
					{ 48.8, 17.6, MAP.WETLANDS },
					{ 48.9, 17.6, MAP.WETLANDS },
				},
				["crs"] = {
					6523,	-- Dark Iron Rifleman
				},
			}),
			i(8499, {	-- Tiny Crimson Whelpling (item) / Crimson Whelpling (PET!)
				["crs"] = {
					1069,	-- Crimson Whelp
					1044,	-- Flamesnorting Whelp
					1042,	-- Red Whelp
				},
			}),
			i(756, {	-- Tunnel Pick
				["coords"] = {
					{ 61.2, 25.4, MAP.WETLANDS },
					{ 48.0, 18.6, MAP.WETLANDS },
				},
				["crs"] = {
					1053,	-- Dark Iron Tunneler
				},
			}),
		}),
	},
});
