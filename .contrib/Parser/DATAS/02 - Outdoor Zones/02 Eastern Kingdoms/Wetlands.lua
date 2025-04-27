---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(EASTERN_KINGDOMS, {
	m(WETLANDS, {
		["lore"] =
		-- #if AFTER CATA
		"Wetlands is a large swamp and primarily-Alliance area that is partially flooded after the Shattering. Quests involve trying to rebuild the flooded Menethil Harbor, assist the night elves in Greenwarden's Grove, and discover dwarven dig sites.",
		-- #else
		"The Wetlands is a large, wet zone below Stonewrought Dam and north of Loch Modan, covered with small rivers, lakes, and ponds. Bordered on three sides by mountains, the Wetlands are open to the ocean to the west. Adventurers seeking a route to the Wetlands must either come through sieged Dun Algaz from Loch Modan or cross the damaged Thandol Span from Arathi Highlands. The northern slopes of Wetlands are generally classed within mountains of Khaz Modan.\n\nThe Wetlands is a vast, cold swamp. Mists cloak the ground, and the overcast sky makes the land a uniform gray. Many Ironforge strongholds once stood in this region, but war has reduced them to rubble. Wild creatures, murlocs and renegade orcs now control the land. Menethil Harbor, a city on the west coast, is the Alliance's only presence in this dreary region.",
		-- #endif
		["icon"] = 236853,
		["groups"] = {
			n(ACHIEVEMENTS, {
				explorationAch(841),	-- Explore Wetlands
				ach(4898, {	-- Wetlands Quests
					-- In 5.0.4, this was merged into the Loch Modan quests achievement for some stupid reason no one knows the answer to.
					["timeline"] = { ADDED_4_0_3, REMOVED_5_0_4 },
					-- #if ANYCLASSIC
					["sourceQuests"] = {
						25734,	-- Down in Thelgen Rock
						25733,	-- Get Out of Here, Stalkers
						25735,	-- Incendicite Ore
						25780,	-- Assault on Menethil Keep
						25801,	-- Claws from the Deep
						25805,	-- Return the Statuette
						25819,	-- The Eye of Paleth
						25857,	-- Hunting Horrorjaw
						26189,	-- The Angerfang Menace
						25868,	-- Yorla Darksnare
						--[[	TODO: possibly required -- first two from same hub as Yorla Darksnare, second two from same hub as The Angerfang Menace
						25855,	-- Gizmos and Gadgets
						25850,	-- Strike the Earth!
						25853,	-- Tooling Around
						--]]
						26128,	-- The Battle of Thandol Span
						26120,	-- The Crazed Dragonmaw
						--[[ TODO: possibly needed
						25939,	-- For Peat's Sake
						26196,	-- Longbraid the Grim
						25927,	-- The Threat of Flame
						]]--
					},
					-- #endif
					["races"] = ALLIANCE_ONLY,
				}),
				ach(12429, {	-- Wetlands Quests
					["timeline"] = { ADDED_7_3_5 },
					["races"] = ALLIANCE_ONLY,
					-- #if ANYCLASSIC
					["sourceQuests"] = {
						25734,	-- Down in Thelgen Rock
						25733,	-- Get Out of Here, Stalkers
						25735,	-- Incendicite Ore
						25780,	-- Assault on Menethil Keep
						25801,	-- Claws from the Deep
						25805,	-- Return the Statuette
						25819,	-- The Eye of Paleth
						25857,	-- Hunting Horrorjaw
						26189,	-- The Angerfang Menace
						25868,	-- Yorla Darksnare
						--[[	TODO: possibly required -- first two from same hub as Yorla Darksnare, second two from same hub as The Angerfang Menace
						25855,	-- Gizmos and Gadgets
						25850,	-- Strike the Earth!
						25853,	-- Tooling Around
						--]]
						26128,	-- The Battle of Thandol Span
						26120,	-- The Crazed Dragonmaw
						--[[ TODO: possibly needed
						25939,	-- For Peat's Sake
						26196,	-- Longbraid the Grim
						25927,	-- The Threat of Flame
						]]--
					},
					-- #endif
				}),
			}),
			battlepets({
				["sym"] = {{"select","speciesID",
					398,	-- Black Rat (PET!)
					393,	-- Cockroach (PET!)
					633,	-- Mountain Skunk (PET!)
					385,	-- Mouse (PET!)
					379,	-- Squirrel (PET!)
					420,	-- Toad (PET!)
					418,	-- Water Snake (PET!)
				}},
				["groups"] = {
					pet(509, {	-- Tiny Bog Beast (PET!)
						["coord"] = { 54.6, 33.0, WETLANDS },
					}),
				},
			}),
			explorationHeader({
				exploration(1036),	-- Angerfang Encampment
				exploration(1018),	-- Black Channel Marsh
				exploration(1022),	-- Bluegill Marsh
				exploration(1016),	-- Direforge Hill
				exploration(1038),	-- Dragonmaw Gates
				exploration(836),	-- Dun Algaz
				exploration(205),	-- Dun Modr
				-- #if AFTER CATA
				exploration(5305),	-- Greenwarden's Grove
				-- #endif
				-- #if BEFORE CATA
				exploration(1037),	-- Grim Batol
				-- #endif
				exploration(309),	-- Ironbeard's Tomb
				exploration(150),	-- Menethil Harbor
				exploration(1020),	-- Mosshide Fen
				exploration(1017),	-- Raptor Ridge
				exploration(1023),	-- Saltspray Glen
				-- #if AFTER CATA
				exploration(5074),	-- Slabchisel's Survey
				-- #endif
				exploration(1024),	-- Sundown Marsh
				visit_exploration(5304,{coord={26.3,25.9,WETLANDS}}),	-- Swiftgear Station
				-- #if BEFORE CATA
				exploration(1025),	-- The Green Belt
				-- #endif
				-- #if AFTER CATA
				exploration(1039),	-- The Lost Fleet
				-- #endif
				exploration(1021),	-- Thelgen Rock
				exploration(118),	-- Whelgar's Excavation Site
			}),
			n(FLIGHT_PATHS, {
				fp(553, {	-- Dun Modr, Wetlands
					["cr"] = 41325,	-- Caleb Baelor <Gryphon Master>
					["coord"] = { 50.0, 18.4, WETLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				fp(552, {	-- Greenwarden's Grove, Wetlands
					["cr"] = 41322,	-- Halana <Hippogryph Master>
					["coord"] = { 56.4, 41.8, WETLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				fp(7, {	-- Menethil Harbor, Wetlands
					["cr"] = 1571,	-- Shellei Brondir <Gryphon Master>
					["coords"] = {
						-- #if AFTER CATA
						{ 9.4, 59.6, WETLANDS },
						-- #else
						{ 9.6, 59.6, WETLANDS },
						-- #endif
					},
					["races"] = ALLIANCE_ONLY,
				}),
				fp(554, {	-- Slabchisel's Survey, Wetlands
					["cr"] = 41321,	-- Elgin Baelor <Gryphon Master>
					["coord"] = { 56.8, 71.2, WETLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				fp(551, {	-- Whelgar's Retreat, Wetlands
					["cr"] = 41323,	-- Damon Baelor <Gryphon Master>
					["coord"] = { 38.6, 39.0, WETLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
			}),
			n(PROFESSIONS, {
				prof(FISHING, {
					o(180662),	-- Schooner Wreckage
				}),
				-- #if BEFORE 4.0.3
				prof(MINING, {
					i(3340, {	-- Incendicite Ore
						["provider"] = { "o", 1610 },	-- Incendicite Mineral Vein
					}),
				}),
				-- #endif
				prof(SKINNING, {
					i(7286, {	-- Black Whelp Scale
						["cr"] = 42042,	-- Ebon Whelp
					}),
					-- #if BEFORE 4.0.3
					i(7287, {	-- Red Whelp Scale
						["crs"] = {
							1069,	-- Crimson Whelp
							1044,	-- Flamesnorting Whelp
						},
					}),
					-- #endif
				}),
			}),
			n(QUESTS, {
				q(25726, {	-- A Dumpy Job
					["qg"] = 41129,	-- Surveyor Thurdan
					["sourceQuest"] = 25722,	-- Sedimentary, My Dear
					["coord"] = { 57.4, 71.4, WETLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Dumpy Level
							["provider"] = { "i", 55234 },	-- Dumpy Level
							["cr"] = 41145,	-- Silty Oozeling
						}),
					},
				}),
				q(304, {	-- A Grim Task
					["qg"] = 1071,	-- Longbraid the Grim
					["coord"] = { 49.8, 18.3, WETLANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 26,
					["groups"] = {
						objective(1, {	-- 0/1 Ear of Balgaras
							["provider"] = { "i", 3639 },	-- Ear of Balgaras
							["cr"] = 1364,	-- Balgaras the Foul
							["coords"] = {
								{ 47.4, 15.0, WETLANDS },
								{ 46.6, 18.6, WETLANDS },
								{ 61.8, 31.0, WETLANDS },
							},
						}),
						i(2916, {	-- Gold Lion Shield
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(2917, {	-- Tranquil Ring
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(25820, {	-- A Mother's Worries
					["qg"] = 1484,	-- Derina Rumdnul
					["coord"] = { 11.8, 57.9, WETLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/10 Harbor Shredfin slain
							["providers"] = {
								{ "n", 41293},	-- Harbor Shredfin
								{ "n", 44110},	-- Ocean Shredfin
							},
						}),
					},
				}),
				q(26327, {	-- Anvilmar the Hero
					["qg"] = 1071,	-- Longbraid the Grim
					["coord"] = { 49.8, 18.2, WETLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,	-- for The Twilight's Hammer Revealed
				}),
				q(471, {	-- Apprentice's Duties
					["qg"] = 2094,	-- James Halloran
					["sourceQuest"] = 484,	-- Young Crocolisk Skins
					["coord"] = { 8.5, 55.7, WETLANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 18,
					["groups"] = {
						objective(1, {	-- 0/6 Giant Crocolisk Skin
							["provider"] = { "i", 3348 },	-- Giant Crocolisk Skin
							["cr"] = 2089,	-- Giant Wetlands Crocolisk
						}),
						i(2545, {	-- Malleable Chain Leggings
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(3561, {	-- Resilient Poncho
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(3681),	-- Recipe: Crocolisk Gumbo (RECIPE!)
					},
				}),
				q(25780, {	-- Assault on Menethil Keep
					["qg"] = 2104,	-- Captain Stoutfist
					["sourceQuest"] = 25777,	-- Onwards to Menethil
					["coord"] = { 10.5, 55.7, WETLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Horghast Flarecrazed slain
							["provider"] = { "n", 41273 },	-- Horghast Flarecrazed
						}),
						i(59078, {	-- Flarecrazed Cloak
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59077, {	-- Stoutfist Breastplate
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59076, {	-- Wand of Infectious Dementia
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131441, {	-- Stoutfist Chainmail
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(157005, {	-- Stout Fist
							["timeline"] = { ADDED_7_3_5 },
						}),
					},
				}),
				q(275, {	-- Blisters on The Land
					["qg"] = 1244,	-- Rethiel the Greenwarden
					["sourceQuest"] = 277,	-- Fire Taboo
					["coord"] = { 56.3, 40.4, WETLANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
					["groups"] = {
						objective(1, {	-- 0/12 Fen Creeper slain
							["provider"] = { "n", 1040 },	-- Fen Creeper
						}),
						i(3558, {	-- Fen Keeper Robe
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(1273, {	-- Forest Chain
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(2263, {	-- Phytoblade
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(279, {	-- Claws from the Deep
					["qg"] = 1242,	-- Karl Boran
					["coord"] = { 8.3, 58.5, WETLANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
					["groups"] = {
						objective(1, {	-- 0/12 Bluegill Murloc slain
							["provider"] = { "n", 1024 },	-- Bluegill Murloc
						}),
						objective(2, {	-- 0/1 Gobbler's Head
							["provider"] = { "i", 3618 },	-- Gobbler's Head
							["coord"] = { 17.4, 40.4, WETLANDS },
							["cr"] = 1259,	-- Gobbler
						}),
					},
				}),
				q(25801, {	-- Claws from the Deep
					["qg"] = 41297,	-- Karl Boran
					["sourceQuest"] = 25800,	-- When Life Gives You Crabs
					["coord"] = { 11.0, 57.7, WETLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/12 Bluegill Murloc slain
							["providers"] = {
								{ "n", 42109},	-- Bluegill Murloc Kill Credit
								{ "n", 41425},	-- Bluegill Murloc
								{ "n", 41426},	-- Bluegill Oracle
								{ "n", 42110},	-- Bluegill Puddlejumper
								{ "n", 42111},	-- Bluegill Forager
								{ "n", 44224},	-- Two-Toes
							},
						}),
						objective(2, {	-- 0/1 Gobbler's Head
							["provider"] = { "i", 3618 },	-- Gobbler's Head
							["cr"] = 1259,	-- Gobbler
						}),
						i(59082, {	-- Merchant Marine Pauldrons
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59081, {	-- Merchant Marine Boots
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59080, {	-- Merchant Marine Waders
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59079, {	-- Merchant Marine Sandals
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131442, {	-- Merchant Marine Greaves
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(131443, {	-- Merchant Marine Stompers
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(25211, {	-- Cleaning Hovel
					["qg"] = 41074,	-- Mountaineer Grugelm
					["coord"] = { 49.9, 79.2, WETLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/5 Dragonmaw Orc slain
							["providers"] = {
								{ "n", 41080},	-- Dragonmaw Scout
								{ "n", 41072},	-- Dragonmaw Grunt
								{ "n", 42107},	-- Dragonmaw Grunt
							},
						}),
					},
				}),
				q(293, {	-- Cleansing the Eye
					["providers"] = {
						{ "n", 1217 },	-- Glorin Steelbrow
						{ "i", 2944 },	-- Cursed Eye of Paleth
					},
					["sourceQuest"] = 292,	-- The Eye of Paleth
					["coord"] = { 10.6, 60.5, WETLANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 22,
					["groups"] = {
						i(2943, {	-- Eye of Paleth
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(25856, {	-- Crocolisk Hides
					["qg"] = 41433,	-- James Halloran
					["coord"] = { 26.7, 26.7, WETLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/10 Marshy Crocolisk Hide
							["provider"] = { "i", 56087 },	-- Marshy Crocolisk Hide
							["cr"] = 41419,	-- Wetlands Crocolisk
						}),
					},
				}),
				q(25816, {	-- Cursed to Roam
					["qg"] = 1239,	-- First Mate Fitzsimmons
					["sourceQuest"] = 25815,	-- The Third Fleet
					["coord"] = { 10.9, 59.7, WETLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(469, {	-- Daily Delivery
					["providers"] = {
						{ "n", 2093 },	-- Einar Stonegrip
						{ "i", 3347 },	-- Bundle of Crocolisk Skins
					},
					["coord"] = { 49.8, 39.4, WETLANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 18,
				}),
				q(25866, {	-- Dark Iron Trappers
					["qg"] = 41415,	-- Shilah Slabchisel
					["sourceQuest"] = 25865,	-- The Mosshide Job
					["coord"] = { 26.9, 26.0, WETLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/10 Dark Iron Trapper slain
							["provider"] = { "n", 41409 },	-- Dark Iron Trapper
						}),
					},
				}),
				q(474, {	-- Defeat Nek'rosh
					["provider"] = { "o", 1609 },	-- Dragonmaw Catapult
					["sourceQuest"] = 465,	-- Nek'rosh's Gambit
					["coord"] = { 47.5, 46.9, WETLANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 23,
					["groups"] = {
						objective(1, {	-- 0/1 Nek'rosh's Head
							["provider"] = { "i", 3625 },	-- Nek'rosh's Head
							["coord"] = { 54.2, 54.2, WETLANDS },
							["cr"] = 2091,	-- Chieftain Nek'rosh
						}),
						i(3209, {	-- Ancient War Sword
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(6194, {	-- Barreling Reaper
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(470, {	-- Digging Through the Ooze
					["qg"] = 2111,	-- Sida
					["coord"] = { 11.8, 58.0, WETLANDS },
					["timeline"] = { REMOVED_4_0_3 },
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
						i(3352, {	-- Ooze-covered Bag
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(25864, {	-- Dinosaur Crisis
					["qg"] = 41415,	-- Shilah Slabchisel
					["sourceQuest"] = 26980,	-- Swiftgear Station
					["coord"] = { 26.9, 26.0, WETLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/8 Highland Raptors slain
							["providers"] = {
								{ "n", 41414},	-- Highland Raptor Kill Credit
								{ "n", 41400},	-- Highland Razormaw
								{ "n", 41401},	-- Highland Scytheclaw
							},
						}),
						i(59095, {	-- Swiftgear Belt
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59094, {	-- Highland Shoulderguards
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59093, {	-- Shilah's Bracers
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131451, {	-- Highland Chain Shoulders
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(25734, {	-- Down In Thelgen Rock
					["qg"] = 41129,	-- Surveyor Thurdan
					["sourceQuest"] = 25726,	-- A Dumpy Job
					["coord"] = { 57.4, 71.4, WETLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Thelgen Seismic Record
							["providers"] = {
								{ "i", 55242 },	-- Thelgen Seismic Record
								{ "o", 203184 },	-- Thelgen Seismograph
							},
						}),
					},
				}),
				q(25727, {	-- Drungeld Glowerglare
					["qg"] = 41086,	-- Forba Slabchisel
					["sourceQuest"] = 25721,	-- Fight the Flood
					["coord"] = { 57.5, 71.7, WETLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Glowerglare's Beard
							["provider"] = { "i", 55988 },	-- Glowerglare's Beard
							["cr"] = 41151,	-- Drungeld Glowerglare
						}),
						i(59072, {	-- Addled Blotter Bracers
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59071, {	-- Bad Belt
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59070, {	-- Surveyor's Leggings
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131438, {	-- Bad Waistguard
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(472, {	-- Fall of Dun Modr
					["qg"] = 2097,	-- Harlo Barnaby
					["coord"] = { 10.8, 55.9, WETLANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 25,
				}),
				q(25725, {	-- Fenbush Berries
					["qg"] = 41128,	-- Dunlor Marblebeard
					["sourceQuest"] = 25723,	-- Thresh Out of Luck
					["coord"] = { 57.8, 71.4, WETLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/15 Handful of Fenberries
							["providers"] = {
								{ "i", 55233 },	-- Handful of Fenberries
								{ "o", 203182 },	-- Fenberries
							},
						}),
					},
				}),
				q(25721, {	-- Fight the Flood
					["qg"] = 41086,	-- Forba Slabchisel
					["sourceQuest"] = 25770,	-- Keg Run
					["coord"] = { 57.5, 71.7, WETLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/10 Flood Elemental slain
							["provider"] = { "n", 41132 },	-- Flood Elemental
						}),
					},
				}),
				q(277, {	-- Fire Taboo
					["qg"] = 1244,	-- Rethiel the Greenwarden
					["sourceQuest"] = 276,	-- Tramping Paws
					["coord"] = { 56.3, 40.4, WETLANDS },
					["timeline"] = { REMOVED_4_0_3 },
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
				q(25939, {	-- For Peat's Sake
					["qg"] = 41615,	-- Ferilon Leafborn
					["sourceQuest"] = 25926,	-- Mired in Hatred
					["coord"] = { 56.4, 39.9, WETLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(59109, {	-- Marsh Fire Legguards
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59108, {	-- Deep Moss Bracers
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59107, {	-- Soothing Hands
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59106, {	-- Floodily Robes
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131460, {	-- Deep Moss Bindings
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(131461, {	-- Soothing Wraps
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(25733, {	-- Get Out Of Here, Stalkers
					["qg"] = 41086,	-- Forba Slabchisel
					["sourceQuest"] = 25727,	-- Drungeld Glowerglare
					["coord"] = { 57.5, 71.7, WETLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/7 Leech Stalker slain
							["provider"] = { "n", 1111 },	-- Leech Stalker
						}),
						objective(2, {	-- 0/7 Cave Stalker slain
							["provider"] = { "n", 4040 },	-- Cave Stalker
						}),
					},
				}),
				q(25855, {	-- Gizmos and Gadgets
					["qg"] = 41435,	-- Fradd Swiftgear
					["sourceQuest"] = 25854,	-- I'll Call Him Bitey
					["coord"] = { 26.8, 25.8, WETLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/7 Swiftgear Gizmo
							["providers"] = {
								{ "i", 56085 },	-- Swiftgear Gizmo
								{ "o", 203285 },	-- Swiftgear Gizmo
								{ "o", 203286 },	-- Swiftgear Gizmo
								{ "o", 203287 },	-- Swiftgear Gizmo
								{ "o", 203288 },	-- Swiftgear Gizmo
							},
						}),
					},
				}),
				q(25867, {	-- Gnoll Escape
					["qg"] = 41415,	-- Shilah Slabchisel
					["sourceQuest"] = 25865,	-- The Mosshide Job
					["coord"] = { 26.9, 26.0, WETLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				heroscall(q(28565, {	-- Hero's Call: Wetlands!
					["timeline"] = { ADDED_4_0_3 },
					["maps"] = { IRONFORGE },	-- Only found in Ironforge in Cataclysm.
					["isBreadcrumb"] = true,
					-- #if BEFORE 7.3.5
					-- Cataclysm: Minimum is level 19. (TODO: Confirm this.)
					-- Cataclysm: Maximum is level 23 (TODO: Test max level between 22 and 32)
					["lvl"] = { 19, 23 },
					-- #endif
				})),
				q(25857, {	-- Hunting Horrorjaw
					["qg"] = 41433,	-- James Halloran
					["sourceQuest"] = 25856,	-- Crocolisk Hides
					["coord"] = { 26.7, 26.7, WETLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Horrorjaw's Hide
							["provider"] = { "i", 56089 },	-- Horrorjaw's Hide
							["cr"] = 41420,	-- Horrorjaw
						}),
					},
				}),
				q(25854, {	-- I'll Call Him Bitey
					["qg"] = 41435,	-- Fradd Swiftgear
					["coord"] = { 26.8, 25.8, WETLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/6 Wobbling Raptor Egg
							["providers"] = {
								{ "i", 56058 },	-- Wobbling Raptor Egg
								{ "o", 203264 },	-- Wobbling Raptor Egg
							},
						}),
					},
				}),
				q(305, {	-- In Search of The Excavation Team (1/2)
					["qg"] = 2096,	-- Tarrel Rockweaver
					["coord"] = { 11.5, 52.2, WETLANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 21,
				}),
				q(306, {	-- In Search of The Excavation Team (2/2)
					["providers"] = {
						{ "n", 1076 },	-- Merrin Rockweaver
						{ "i", 2639 },	-- Merrin's Letter
					},
					["sourceQuest"] = 305,	-- In Search of The Excavation Team (1/2)
					["coord"] = { 38.8, 52.2, WETLANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 21,
				}),
				q(25735, {	-- Incendicite Ore
					["qg"] = 41128,	-- Dunlor Marblebeard
					["sourceQuest"] = 25725,	-- Fenbush Berries
					["coord"] = { 57.8, 71.5, WETLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/8 Incendicite Ore
							["providers"] = {
								{ "i", 55241 },	-- Incendicite Ore
								{ "o", 203188 },	-- Incendicite Mineral Vein
							},
						}),
						i(59066, {	-- Stabilized Incendicite Legguards
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59065, {	-- Sparkproof Gloves
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59064, {	-- Marblebeard's Shrug
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131439, {	-- Sparkproof Gauntlets
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(26139, {	-- Into Arathi
					["qg"] = 42160,	-- Thargas Anvilmar
					["sourceQuest"] = 26128,	-- The Battle of Thandol Span
					["coord"] = { 49.5, 17.2, WETLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,	-- for Northfold Manor in Arathi Highlands
				}),
				q(25770, {	-- Keg Run
					["qg"] = 41075,	-- Mountaineer Rharen
					["sourceQuest"] = 25395,	-- The Stolen Keg
					["coord"] = { 49.9, 79.2, WETLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,	-- for "Fight the Flood"
				}),
				q(290, {	-- Lifting the Curse
					["qg"] = 1239,	-- First Mate Fitzsimmons
					["sourceQuest"] = 289,	-- The Cursed Crew
					["coord"] = { 10.9, 59.6, WETLANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 22,
					["groups"] = {
						objective(1, {	-- 0/1 Intrepid Strongbox Key
							["provider"] = { "i", 2629 },	-- Intrepid Strongbox Key
							["coord"] = { 15.6, 23.4, WETLANDS },
							["cr"] = 1160,	-- Captain Halyndor
						}),
					},
				}),
				q(25818, {	-- Lifting the Curse
					["qg"] = 41307,	-- First Mate Snellig
					["sourceQuest"] = 25817,	-- The Cursed Crew
					["coord"] = { 15.2, 29.4, WETLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Intrepid Strongbox Key
							["provider"] = { "i", 2629 },	-- Intrepid Strongbox Key
							["crs"] = {
								1160,	-- Captain Halyndor
								41429,	-- Captain Halyndor
							},
						}),
					},
				}),
				q(321, {	-- Lightforge Iron
					["qg"] = 1217,	-- Glorin Steelbrow
					["sourceQuest"] = 270,	-- The Doomed Fleet
					["coord"] = { 10.6, 60.5, WETLANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
					["groups"] = {
						i(2702, {	-- Lightforge Ingot
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(526, {	-- Lightforge Ingots
					["qg"] = 1217,	-- Glorin Steelbrow
					["sourceQuest"] = 321,	-- Lightforge Iron
					["altQuests"] = { 324 },	-- The Lost Ingots
					["coord"] = { 10.6, 60.6, WETLANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
					["groups"] = {
						objective(1, {	-- 0/5 Lightforge Ingot
							["provider"] = { "i", 2702 },	-- Lightforge Ingot
							["cr"] = 1418,	-- Bluegill Raider
						}),
					},
				}),
				q(26196, {	-- Longbraid the Grim
					["qg"] = 41615,	-- Ferilon Leafborn
					["sourceQuest"] = 25939,	-- For Peat's Sake
				--	possibly requires The Threat of Flame?
					["coord"] = { 56.4, 40.0, WETLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(25926, {	-- Mired in Hatred
					["qg"] = 41503,	-- Rethiel the Greenwarden
					["coord"] = { 56.3, 40.4, WETLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/10 Mouldering Mirebeast slain
							["provider"] = { "n", 41424 },	-- Mouldering Mirebeast
						}),
					},
				}),
				q(465, {	-- Nek'rosh's Gambit
					["providers"] = {
						{ "n", 2104 },	-- Captain Stoutfist
						{ "i", 3339 },	-- Dwarven Tinder
					},
					["sourceQuest"] = 464,	-- War Banners
					["coord"] = { 9.8, 57.4, WETLANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 23,
				}),
				q(25777, {	-- Onwards to Menethil
					["qg"] = 41086,	-- Forba Slabchisel
					["sourceQuests"] = {
						25734,	-- Down in Thelgen Rock
						25733,	-- Get Out of Here, Stalkers
						25735,	-- Incendicite Ore
					},
					["coord"] = { 57.4, 71.7, WETLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_TWO, q(79945, {	-- Orders from the Grand Crusader
					["providers"] = {
						{ "i", 215468 },	-- Orders from the Grand Crusader
						{ "i", 216610 },	-- Orders from the Grand Crusader
					},
					["sourceQuest"] = 79972,	-- Speak to Harold HQT
					["coord"] = { 11.8, 75.7, DUN_MOROGH },
					["description"] = "Getting to this location is a real pain. From the Wetlands, swim along the coast around Dun Morogh until you reach the dock.",
					["maps"] = { STORMWIND_CITY },
					["classes"] = { PALADIN },
					["races"] = ALLIANCE_ONLY,
					["cr"] = 218908,	-- Scarlet Crusade Assassin
					["lvl"] = 26,
					["groups"] = {
						objective(1, {	-- Report back to Katherine the Pure
							["provider"] = { "n", 5492 },	-- Katherine the Pure <Paladin Trainer>
							["coord"] = { 37.8, 31.6, STORMWIND_CITY },
						}),
					},
				})),
				-- #endif
				q(294, {	-- Ormer's Revenge (1/3)
					["qg"] = 1078,	-- Ormer Ironbraid
					["coord"] = { 38, 51.2, WETLANDS },
					["timeline"] = { REMOVED_4_0_3 },
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
					["qg"] = 1078,	-- Ormer Ironbraid
					["sourceQuest"] = 294,	-- Ormer's Revenge (1/3)
					["coord"] = { 38, 51.2, WETLANDS },
					["timeline"] = { REMOVED_4_0_3 },
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
					["qg"] = 1078,	-- Ormer Ironbraid
					["sourceQuest"] = 295,	-- Ormer's Revenge (2/3)
					["coord"] = { 38, 51.2, WETLANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 22,
					["groups"] = {
						objective(1, {	-- 0/1 Sarltooth's Talon
							["provider"] = { "i", 3638 },	-- Sarltooth's Talon
							["coord"] = { 33.0, 51.4, WETLANDS },
							["cr"] = 1353,	-- Sarltooth
						}),
						i(3493, {	-- Raptor's End
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(3566, {	-- Raptorbane Armor
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(5246, {	-- Excavation Rod
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(3682),	-- Recipe: Curiously Tasty Omelet (RECIPE!)
					},
				}),
				q(634, {	-- Plea To The Alliance
					["qg"] = 1075,	-- Rhag Garmason
					["sourceQuest"] = 633,	-- The Thandol Span (3/3)
					["coord"] = { 49.9, 18.2, WETLANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 28,
				}),
				q(281, {	-- Reclaiming Goods
					["qg"] = 1242,	-- Karl Boran
					["sourceQuest"] = 279,	-- Claws from the Deep
					["coord"] = { 8.4, 58.6, WETLANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
				}),
				q(25802, {	-- Reclaiming Goods
					["qg"] = 41297,	-- Karl Boran
					["sourceQuest"] = 25800,	-- When Life Gives You Crabs
					["coord"] = { 11.0, 57.7, WETLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(473, {	-- Report to Captain Stoutfist
					["qg"] = 2086,	-- Valstag Ironjaw
					["coord"] = { 10.1, 56.9, WETLANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 23,
				}),
				q(286, {	-- Return the Statuette
					["providers"] = {
						{ "o", 259 },	-- Half-buried Barrel
						{ "i", 2625 },	-- Menethil Statuette
					},
					["sourceQuest"] = 285,	-- Search More Hovels
					["coord"] = { 14.0, 34.8, WETLANDS },
					["timeline"] = { REMOVED_4_0_3 },
					-- #if AFTER 4.0.3
					["description"] = "This quest gets marked as completed when you complete the quest 'Return the Statuette' (25805).",
					-- #endif
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
					["groups"] = {
						i(2950, {	-- Icicle Rod
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(2949, {	-- Mariner Boots
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(25805, {	-- Return the Statuette
					["provider"] = { "o", 259 },	-- Half-Buried Barrel
					["sourceQuest"] = 25804,	-- Search More Hovels
					["coord"] = { 13.9, 34.7, WETLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(59085, {	-- Breastplate of the Lost Paladin
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59084, {	-- Boran's Shoulderguards
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59083, {	-- Sash of the Blind Princess
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131444, {	-- Boran's Pauldrons
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(285, {	-- Search More Hovels
					["provider"] = { "o", 142151 },	-- Sealed Barrel
					["sourceQuest"] = 284,	-- The Search Continues
					["coord"] = { 13.6, 38.2, WETLANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
				}),
				q(25804, {	-- Search More Hovels
					["provider"] = { "o", 142151 },	-- Sealed Barrel
					["sourceQuest"] = 25803,	-- The Search Continues
					["coord"] = { 13.6, 38.2, WETLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(25722, {	-- Sedimentary, My Dear
					["qg"] = 41129,	-- Surveyor Thurdan
					["coord"] = { 57.4, 71.4, WETLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/8 Flood Sediment Sample
							["providers"] = {
								{ "i", 55231 },	-- Flood Sediment Sample
								{ "o", 203179 },	-- Sediment Deposit
							},
						}),
						i(59075, {	-- Drunkard's Belt
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59074, {	-- Topsoil Bracers
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59073, {	-- Discolored Bracers
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131437, {	-- Topsoil Binders
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_TWO, n(createHeader({	-- Speak to Harold
					readable = "SOD - Aeonas Whereabouts",
					icon = 131038,
					text = {
						en = "Speak to Harold",
					},
				}), {
					["qg"] = 3179,	-- Harold Riggs
					["questID"] = 79972,	-- Aeonas Whereabouts HQT
					["sourceQuest"] = 79940,	-- A Lost Brother
					["coord"] = { 8.1, 58.6, WETLANDS },
					["classes"] = { PALADIN },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 26,
				})),
				-- #endif
				q(25850, {	-- Strike the Earth!
					["qg"] = 41412,	-- Ormer Ironbraid
					["coord"] = { 38.6, 39.5, WETLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/7 Paleolithic Elemental slain
							["provider"] = { "n", 41389 },	-- Paleolithic Elemental
						}),
					},
				}),
				q(26980, {	-- Swiftgear Station
					["qg"] = 2104,	-- Captain Stoutfist
					["sourceQuests"] = {
						25780,	-- Assault on Menethil Keep (definitely required)
						25801,	-- Claws from the Deep (probably required)
						25805,	-- Return the Statuette (probably required)
						25819,	-- The Eye of Paleth (definitely required)
					},
					["coord"] = { 10.5, 55.6, WETLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,	-- for Dinosaur Crisis
				}),
				q(943, {	-- The Absent Minded Prospector (5/5)
					["qg"] = 2911,	-- Archaeologist Flagongut
					["sourceQuest"] = 942,	-- The Absent Minded Prospector (4/5) (Darnassus)
					["coord"] = { 10.8, 60.4, WETLANDS },
					["timeline"] = { REMOVED_4_0_3 },
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
							["coord"] = { 38.8, 52.2, WETLANDS },
						}),
						i(5627, {	-- Relic Blade
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(5626, {	-- Skullchipper
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(26189, {	-- The Angerfang Menace
					["qg"] = 41411,	-- Prospector Whelgar
					["sourceQuest"] = 25849,	-- When Archaeology Attacks
					["coord"] = { 38.9, 39.3, WETLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Gorfax Angerfang slain
							["provider"] = { "n", 46122 },	-- Gorfax Angerfang
						}),
						objective(2, {	-- 0/16 Angerfang Dragonmaw slain
							["providers"] = {
								{ "n", 42151},	-- Angerfang Dragonmaw Kill Credit
								{ "n", 1034},	-- Dragonmaw Raider
								{ "n", 1035},	-- Dragonmaw Swamprunner
								{ "n", 1036},	-- Dragonmaw Centurion
								{ "n", 1038},	-- Dragonmaw Shadowwarder
								{ "n", 1057},	-- Dragonmaw Bonewarder
							},
						}),
					},
				}),
				q(26128, {	-- The Battle of Thandol Span
					["qg"] = 42160,	-- Thargas Anvilmar
					["sourceQuest"] = 26127,	-- The Twilight's Hammer Revealed
					["coord"] = { 49.4, 17.2, WETLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Calamoth Ashbeard slain
							["provider"] = { "n", 41522 },	-- Calamoth Ashbeard
						}),
						i(59113, {	-- Khaz Modan Pauldrons (Plate)
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59112, {	-- Khaz Modan Spaulders
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59111, {	-- Khaz Modan Shoulderguards
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59110, {	-- Khaz Modan Mantle
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131488, {	-- Khaz Modan Monnions
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(131489, {	-- Khaz Modan Pauldrons (Mail)
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(26120, {	-- The Crazed Dragonmaw
					["qg"] = 41612,	-- Huntress Iczelia
					["coord"] = { 56.3, 39.8, WETLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/12 Dragonmaw Whelpstealer slain
							["provider"] = { "n", 42041 },	-- Dragonmaw Whelpstealer
						}),
						i(59116, {	-- Ring of Bravery
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59115, {	-- Greenwarden's Gift
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59114, {	-- Iczelia's Band
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(289, {	-- The Cursed Crew
					["qg"] = 1239,	-- First Mate Fitzsimmons
					["sourceQuest"] = 288,	-- The Third Fleet
					["coord"] = { 10.9, 59.6, WETLANDS },
					["timeline"] = { REMOVED_4_0_3 },
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
							["coord"] = { 14.0, 30.6, WETLANDS },
							["cr"] = 1159,	-- First Mate Snellig
						}),
					},
				}),
				q(25817, {	-- The Cursed Crew
					["qg"] = 41307,	-- First Mate Snellig
					["sourceQuest"] = 25816,	-- Cursed to Roam
					["coord"] = { 15.2, 29.4, WETLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/5 Cursed Sailor slain
							["provider"] = { "n", 41428 },	-- Cursed Sailor
						}),
						objective(2, {	-- 0/5 Cursed Marine slain
							["provider"] = { "n", 41427 },	-- Cursed Marine
						}),
						i(59089, {	-- Curse Lifter's Gloves
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59088, {	-- Snellig's Vest
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59087, {	-- Gloves of Anguished Cries
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59086, {	-- Third Fleet Cloak
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131445, {	-- Snellig's Chain Shirt
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(303, {	-- The Dark Iron War
					["qg"] = 1074,	-- Motley Garmason
					["coord"] = { 49.7, 18.3, WETLANDS },
					["timeline"] = { REMOVED_4_0_3 },
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
					["providers"] = {
						{ "o", 112948 },	-- Intrepid's Locked Strongbox
						{ "i", 2944 },	-- Cursed Eye of Paleth
					},
					["sourceQuest"] = 290,	-- Lifting the Curse
					["coord"] = { 14.5, 24.0, WETLANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 22,
				}),
				q(25819, {	-- The Eye of Paleth
					["providers"] = {
						{ "o", 112948 },	-- Intrepid's Locked Strongbox
						{ "i", 2944 },	-- Cursed Eye of Paleth
					},
					["sourceQuest"] = 25818,	-- Lifting the Curse
					["coord"] = { 14.3, 24.0, WETLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(2944),	-- Cursed Eye of Paleth
						i(59092, {	-- Haunted Pauldrons
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59091, {	-- Fitzsimmons' Belt
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59090, {	-- Steelbrow's Old Robe
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131446, {	-- Fitzsimmon's Cinch
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(25736, {	-- The Floodsurge Core
					["provider"] = { "i", 55243 },	-- Floodsurge Core
					["sourceQuest"] = 25734,	-- Down in Thelgen Rock
					["coord"] = { 47.6, 65.6, WETLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["cr"] = 41167,	-- Torrention
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(59069, {	-- Slabchisel Boots
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59068, {	-- Waterproof Leggings
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59067, {	-- Floodsurge Coat
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131440, {	-- Waterproof Britches
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(463, {	-- The Greenwarden
					["qg"] = 1239,	-- First Mate Fitzsimmons
					["coord"] = { 10.9, 59.6, WETLANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 20,
				}),
				q(324, {	-- The Lost Ingots
					["provider"] = { "o", 2734 },	-- Waterlogged Chest
					["altQuests"] = { 526 },	-- Lightforge Ingots
					["sourceQuest"] = 321,	-- Lightforge Iron
					["coord"] = { 12.1, 64.1, WETLANDS },
					["timeline"] = { REMOVED_4_0_3 },
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
					["qg"] = 4963,	-- Mikhail <Bartender>
					["sourceQuest"] = 1248,	-- The Missing Diplomat (10/17)
					["coord"] = { 10.6, 60.7, WETLANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 28,
					["groups"] = {
						objective(1, {	-- Defeat Tapoke Jahn
							["provider"] = { "n", 4962 },	-- Tapoke "Slim" Jahn
						}),
					},
				}),
				q(1250, {	-- The Missing Diplomat (12/17)
					["qg"] = 4962,	-- Tapoke "Slim" Jahn
					["sourceQuest"] = 1249,		-- The Missing Diplomat (11/17)
					["coord"] = { 10.6, 60.3, WETLANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 28,
				}),
				q(1264, {	-- The Missing Diplomat (13/17)
					["qg"] = 4963,	-- Mikhail <Bartender>
					["sourceQuest"] = 1250,	-- The Missing Diplomat (12/17)
					["coord"] = { 10.6, 60.7, WETLANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { DUSTWALLOW_MARSH },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 28,
				}),
				q(25865, {	-- The Mosshide Job
					["qg"] = 41415,	-- Shilah Slabchisel
					["sourceQuest"] = 25864,	-- Dinosaur Crisis
					["coord"] = { 26.9, 26.0, WETLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/8 Ironforge Ingot
							["provider"] = { "i", 56088 },	-- Ironforge Ingot
							["crs"] = {
								41390,	-- Mosshide Gnoll
								41391,	-- Mosshide Mystic
								44149,	-- Partially-Digested Mosshide Gnoll
								44150,	-- Slowly Decaying Mosshide Mystic
							},
						}),
						i(59098, {	-- Ingot-Handler Gloves
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59097, {	-- Royal Treasury Courier's Shield
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59096, {	-- Accountant's Lantern
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131452, {	-- Ingot-Handler Grips
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(284, {	-- The Search Continues
					["provider"] = { "o", 261 },	-- Damaged Crate
					["sourceQuest"] = 281,	-- Reclaiming Goods
					["coord"] = { 13.5, 41.4, WETLANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
				}),
				q(25803, {	-- The Search Continues
					["provider"] = { "o", 261 },	-- Damaged Crate
					["sourceQuest"] = 25802,	-- Reclaiming Goods
					["coord"] = { 13.5, 41.3, WETLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(25395, {	-- The Stolen Keg
					["qg"] = 41075,	-- Mountaineer Rharen
					["sourceQuests"] = {
						26137,	-- Checking on the Boys
						28565,	-- Hero's Call: Wetlands!
					},
					["coord"] = { 49.9, 79.2, WETLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["groups"] = {
						objective(1, {	-- 0/1 Mountaineer's Ale
							["providers"] = {
								{ "i", 55209 },	-- Mountaineer's Ale
								{ "o", 203151 },	-- Mountaineer's Ale
							},
						}),
					},
				}),
				q(631, {	-- The Thandol Span (1/3)
					["qg"] = 1075,	-- Rhag Garmason
					["coord"] = { 49.9, 18.2, WETLANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 28,
				}),
				q(632, {	-- The Thandol Span (2/3)
					["providers"] = {
						{ "o", 2652 },	-- Ebenezer Rustlocke's Corpse
						{ "i", 4429 },	-- Deepfury's Orders
					},
					["sourceQuest"] = 631,	-- The Thandol Span (1/3)
					["coord"] = { 51.3, 8.0, WETLANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 28,
				}),
				q(633, {	-- The Thandol Span (3/3)
					["qg"] = 1075,	-- Rhag Garmason
					["sourceQuest"] = 632,	-- The Thandol Span (2/3)
					["coord"] = { 49.9, 18.2, WETLANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { ARATHI_HIGHLANDS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 28,
					["groups"] = {
						objective(1, {	-- Cache of Explosives Destroyed
							["provider"] = { "o", 2704 },	-- Cache of Explosives
							["coord"] = { 48.8, 88.2, ARATHI_HIGHLANDS },
						}),
						i(4504, {	-- Dwarven Guard Cloak
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(4505, {	-- Swampland Trousers
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(288, {	-- The Third Fleet
					["qg"] = 1239,	-- First Mate Fitzsimmons
					["coord"] = { 10.9, 59.6, WETLANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 22,
					["groups"] = {
						objective(1, {	-- 0/1 Flagon of Dwarven Honeymead
							["cost"] = {{ "i", 2594, 1 }},	-- Flagon of Dwarven Honeymead
							["coord"] = { 10.6, 60.8, WETLANDS },
							["cr"] = 1464,	-- Innkeeper Helbrek <Innkeeper>
						}),
					},
				}),
				q(25815, {	-- The Third Fleet
					["qg"] = 1239,	-- First Mate Fitzsimmons
					["coord"] = { 10.9, 59.7, WETLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Fitzsimmons' Mead
							["providers"] = {
								{ "i", 56031 },	-- Fitzsimmons' Mead
								{ "o", 203247 },	-- Fitzsimmon's Mead
							},
						}),
					},
				}),
				q(25927, {	-- The Threat of Flame
					["qg"] = 41503,	-- Rethiel the Greenwarden
					["sourceQuest"] = 25926,	-- Mired in Hatred
					["coord"] = { 56.3, 40.4, WETLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/8 Rampant Fire Elemental slain
							["provider"] = { "n", 41449 },	-- Rampant Fire Elemental
						}),
					},
				}),
				q(26127, {	-- The Twilight's Hammer Revealed
					["qg"] = 42160,	-- Thargas Anvilmar
					["sourceQuest"] = 26327,	-- Anvilmar the Hero
					["coord"] = { 49.4, 17.2, WETLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/12 Twilight Convert slain
							["provider"] = { "n", 42154 },	-- Twilight Convert
						}),
					},
				}),
				q(25723, {	-- Thresh Out of Luck
					["qg"] = 41128,	-- Dunlor Marblebeard
					["coord"] = { 57.8, 71.4, WETLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/8 Threshadon Chunk
							["provider"] = { "i", 55232 },	-- Threshadon Chunk
							["cr"] = 41137,	-- Displaced Threshadon
						}),
					},
				}),
				q(25853, {	-- Tooling Around
					["qg"] = 41413,	-- Merrin Rockweaver
					["coord"] = { 38.8, 39.7, WETLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/6 Archaeologist's Tools
							["providers"] = {
								{ "i", 56082 },	-- Archaeologist's Tools
								{ "o", 203283 },	-- Archaeologist's Tools
							},
						}),
						i(59105, {	-- Antique Breastplate
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59104, {	-- Unbared Leggings
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59103, {	-- Rockweaver Leggings
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(60338, {	-- Reconstructed Sword
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131450, {	-- Unbared Greaves
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(157026, {	-- Fresh-Haft Axe
							["timeline"] = { ADDED_7_3_5 },
						}),
					},
				}),
				q(276, {	-- Tramping Paws
					["qg"] = 1244,	-- Rethiel the Greenwarden
					["sourceQuest"] = 463,	-- The Greenwarden
					["coord"] = { 56.3, 40.4, WETLANDS },
					["timeline"] = { REMOVED_4_0_3 },
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
					["qg"] = 1077,	-- Prospector Whelgar
					["coord"] = { 38.8, 52.2, WETLANDS },
					-- #if BEFORE 4.0.3
					["description"] = "The quest items spawn randomly in the dig site below.",
					-- #endif
					["timeline"] = { REMOVED_4_0_3 },
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
						i(2913, {	-- Silk Mantle of Gamn
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(464, {	-- War Banners
					["qg"] = 2104,	-- Captain Stoutfist
					["sourceQuest"] = 473,	-- Report to Captain Stoutfist
					["coord"] = { 9.8, 57.4, WETLANDS },
					["timeline"] = { REMOVED_4_0_3 },
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
				q(26981, {	-- Whelgar's Retreat
					["qg"] = 41415,	-- Shilah Slabchisel
					["sourceQuest"] = 25868,	-- Yorla Darksnare
					["coord"] = { 26.9, 26.0, WETLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,	-- for When Archaeology Attacks
				}),
				q(25849, {	-- When Archaeology Attacks
					["qg"] = 41411,	-- Prospector Whelgar
					["sourceQuest"] = 26981,	-- Whelgar's Retreat
					["coord"] = { 38.9, 39.3, WETLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/20 Fossilized Bone
							["provider"] = { "i", 56083 },	-- Fossilized Bone
							["crs"] = {
								41388,	-- Living Fossil
								44226,	-- Sarltooth
							},
						}),
					},
				}),
				q(25800, {	-- When Life Gives You Crabs
					["qg"] = 41297,	-- Karl Boran
					["coord"] = { 11.0, 57.7, WETLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/5 Meaty Crawler Claw
							["provider"] = { "i", 56013 },	-- Meaty Crawler Claw
							["crs"] = {
								41295,	-- Ocean Crawler
								44116,	-- Harbor Crawler
							},
						}),
					},
				}),
				q(26195, {	-- Who Wards The Greenwarden
					["qg"] = 41411,	-- Prospector Whelgar
					["sourceQuests"] = {
						25850,	-- Strike the Earth!
						26189,	-- The Angerfang Menace
						25853,	-- Tooling Around
					},
					["coord"] = { 38.8, 39.3, WETLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(25868, {	-- Yorla Darksnare
					["qg"] = 41415,	-- Shilah Slabchisel
					["sourceQuests"] = {
						25866,	-- Dark Iron Trappers
						25867,	-- Gnoll Escape
					},
					["coord"] = { 26.9, 26.0, WETLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Yorla Darksnare slain
							["provider"] = { "n", 41416 },	-- Yorla Darksnare
						}),
						i(59102, {	-- Old Guard's Hammer
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59101, {	-- Shilah's Blade
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59100, {	-- Old Guard's Greataxe
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59099, {	-- Darksnare Dagger
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(157004, {	-- Old Guard's Poleaxe
							["timeline"] = { ADDED_7_3_5 },
						}),
						i(157006, {	-- Old Guard's Bow
							["timeline"] = { ADDED_7_3_5 },
						}),
					},
				}),
				q(484, {	-- Young Crocolisk Skins
					["qg"] = 2094,	-- James Halloran
					["coord"] = { 8.5, 55.7, WETLANDS },
					["timeline"] = { REMOVED_4_0_3 },
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
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_ONE, n(211965, {	-- Carrodin
					["coord"] = { 47.6, 64.6, WETLANDS },
					["groups"] = {
						i(211205, {	-- Rune of Heart of the Lion
							["classes"] = { HUNTER },
							["groups"] = {
								recipe(410115),	-- Engrave Chest - Heart of the Lion
							},
						}),
						i(210573, {	-- Rune of Consuming Rage
							["classes"] = { WARRIOR },
							["groups"] = {
								recipe(425446),	-- Engrave Pants - Consumed by Rage
							},
						}),
					},
				})),
				-- #endif
				n(50964, {	-- Chops
					["coord"] = { 58.0, 8.6, WETLANDS },
					["timeline"] = { ADDED_5_1_0 },
				}),
				n(1037, {	-- Dragonmaw Battlemaster
					["coords"] = {
						{ 42.8, 43.8, WETLANDS },
						{ 47.6, 46.0, WETLANDS },
						{ 50.0, 48.2, WETLANDS },
						{ 50.8, 50.6, WETLANDS },
						{ 53.0, 53.6, WETLANDS },
					},
					["timeline"] = { REMOVED_4_0_3 },
				}),
				n(2108, {	-- Garneg Charskull
					["coords"] = {
						{ 38.6, 46.2, WETLANDS },
						-- #if BEFORE CATA
						{ 43.2, 44.2, WETLANDS },
						{ 48.0, 47.6, WETLANDS },
						-- #endif
					},
					["groups"] = {
						i(6200, {	-- Garneg's War Belt
							["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
						}),
						i(3392, {	-- Ringed Helm
							["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
						}),
					},
				}),
				n(44227, {	-- Gazz the Loch-Hunter
					["coord"] = { 61.6, 57.8, WETLANDS },
					["timeline"] = { ADDED_4_0_3 },
				}),
				n(14425, {	-- Gnawbone
					["coords"] = {
						-- #if AFTER CATA
						{ 31.6, 33.6, WETLANDS },
						{ 31.6, 29.6, WETLANDS },
						{ 35.2, 27.4, WETLANDS },
						-- #else
						{ 39.0, 30.6, WETLANDS },
						{ 30.6, 31.2, WETLANDS },
						{ 35.4, 37.2, WETLANDS },
						{ 38.4, 36.4, WETLANDS },
						-- #endif
					},
				}),
				n(1112, {	-- Leech Widow
					["coords"] = {
						-- #if AFTER CATA
						{ 46.8, 63.6, WETLANDS },
						-- #else
						{ 46.8, 61.4, WETLANDS },
						-- #endif
					},
					["groups"] = {
						i(4444, {	-- Black Husk Shield
							["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
						}),
						i(6199, {	-- Black Widow Band
							["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
						}),
					},
				}),
				n(2090, {	-- Ma'ruk Wyrmscale <Dragonmaw Warlord>
					["coords"] = {
						-- #if AFTER CATA
						{ 48.0, 74.6, WETLANDS },
						-- #else
						{ 47.8, 76.8, WETLANDS },
						-- #endif
					},
					["groups"] = {
						i(5749, {	-- Scythe Axe
							["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
						}),
						i(5750, {	-- Warchief's Girdle
							["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
						}),
					},
				}),
				n(14424, {	-- Mirelow
					["coords"] = {
						-- #if AFTER CATA
						{ 52.4, 36.2, WETLANDS },
						{ 54.6, 32.0, WETLANDS },
						{ 55.6, 29.0, WETLANDS },
						{ 52.4, 27.6, WETLANDS },
						{ 50.6, 32.4, WETLANDS },
						-- #else
						{ 18.6, 28.4, WETLANDS },
						{ 22.8, 31.4, WETLANDS },
						{ 27.8, 32.8, WETLANDS },
						{ 23.0, 21.4, WETLANDS },
						{ 24.6, 37.0, WETLANDS },
						-- #endif
					},
				}),
				n(1140, {	-- Razormaw Matriarch
					["coords"] = {
						-- #if AFTER CATA
						{ 69.8, 29.2, WETLANDS },
						-- #else
						{ 70.8, 30.4, WETLANDS },
						-- #endif
					},
					["groups"] = {
						i(4463, {	-- Beaded Raptor Collar
							["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
						}),
						i(6198, {	-- Jurassic Wristguards
							["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
						}),
						i(48124, {	-- Razormaw Hatchling (PET!)
							["timeline"] = { ADDED_3_2_0, REMOVED_3_3_0 },
						}),
					},
				}),
				n(44225, {	-- Rufus Darkshot
					["coord"] = { 42.8, 32.6, WETLANDS },
					["timeline"] = { ADDED_4_0_3 },
				}),
				n(44226, {	-- Sarltooth
					["coord"] = { 33.6, 51.0, WETLANDS },
					["timeline"] = { ADDED_4_0_3 },
				}),
				n(14433, {	-- Sludginn
					["coords"] = {
						-- #if AFTER CATA
						{ 44.4, 24.8, WETLANDS },
						-- #else
						{ 14.8, 67.2, WETLANDS },
						{ 12.0, 70.6, WETLANDS },
						-- #endif
					},
				}),
				n(44224, {	-- Two-Toes
					["coords"] = {
						{ 13.6, 41.6, WETLANDS },
						{ 13.6, 38.6, WETLANDS },
						{ 15.0, 39.0, WETLANDS },
					},
					["timeline"] = { ADDED_4_0_1 },
				}),
			}),
			n(TREASURES, {
				o(207496, {	-- Dark Iron Treasure Chest
					["timeline"] = { ADDED_4_0_3 },
					["modelScale"] = 1.5,
					["coords"] = {
						{ 63.9, 78.2, WETLANDS },
						{ 60.0, 24.5, WETLANDS },
						{ 44.3, 24.7, WETLANDS },
						{ 41.5, 21.7, WETLANDS },
						{ 48.1, 18.8, WETLANDS },
						{ 46.5, 18.8, WETLANDS },
						{ 45.6, 16.5, WETLANDS },
						{ 47.4, 15.4, WETLANDS },
						{ 48.1, 14.9, WETLANDS },
					},
					["groups"] = {
						i(2878),	-- Bearded Boneaxe
						i(13024),	-- Beazel's Basher
						i(13057),	-- Bloodpike
						i(12987),	-- Darkweave Breeches
						i(2194),	-- Diamond Hammer
						i(1717),	-- Double Link Tunic
						-- #if AFTER SHADOWLANDS
						i(2098),	-- Double-Barreled Shotgun
						-- #endif
						i(12999),	-- Drakewing Bands
						i(2911),	-- Keller's Girdle
						i(3021),	-- Ranger Bow
						i(12990),	-- Razor's Edge
						i(12984),	-- Skycaller
						i(13131),	-- Sparkleshell Mantle
						i(12988),	-- Starsight Tunic
						i(13032),	-- Sword of Corruption
						i(13062),	-- Thunderwood
						i(13114),	-- Troll's Bane Leggings
					},
				}),
				o(207498, {	-- Dark Iron Treasure Chest
					["coords"] = {	-- As opposed to 207496, this one spawns exclusively in Wetlands
						{ 36.6, 61.2, LOCH_MODAN },
						{ 61.9, 75.0, LOCH_MODAN },
						{ 80.3, 51.9, LOCH_MODAN },
					},
					["timeline"] = { ADDED_4_0_3 },
					["sym"] = {{ "select", "objectID", 207496 }, {"pop"}},
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_ONE, i(209848, {	-- Goaz Scrolls
					["provider"] = { "o", 409717 },	-- Scrolls
					["coord"] = { 33.6, 47.9, WETLANDS },
				})),
				-- #endif
				o(202083, {	-- Razormaw Matriarch's Nest
					["coords"] = {
						{ 69.9, 29.1, WETLANDS },
						{ 70.9, 31.3, WETLANDS },
					},
					["timeline"] = { ADDED_3_3_0 },
					["groups"] = {
						i(48124, {	-- Razormaw Hatchling (PET!)
							["timeline"] = { ADDED_3_3_0 },
						}),
					},
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_FOUR, i(226408, {	-- Rune of Mace Specialization
					["provider"] = { "o", 457093 },	-- Blunt Justice: A Dwarf's Tale
					["timeline"] = { ADDED_1_15_3 },
					["coord"] = { 74.0, 69.2, WETLANDS },
					["classes"] = { WARRIOR, PALADIN, PRIEST, SHAMAN, ROGUE, DRUID },
					["groups"] = {
						recipe(453689, {	-- Engrave Ring - Mace Specialization
							["classes"] = { WARRIOR, PALADIN, PRIEST, SHAMAN, ROGUE, DRUID },
						}),
					},
				})),
				applyclassicphase(SOD_PHASE_ONE, i(210500, {	-- Rune of the Stars
					["providers"] = {
						{ "n", 212209 },	-- Vodyanoi
						{ "i", 210499 },	-- Marshroom
					},
					["coord"] = { 31, 18, WETLANDS },
					["timeline"] = { REMOVED_2_0_1 },
					["classes"] = { DRUID },
					["groups"] = {
						recipe(424718),	-- Engrave Pants - Starsurge
					},
				})),
				-- #endif
			}),
			n(VENDORS, {
				n(1450, {	-- Brahnmar <Armorer>
					["coord"] = { 11.6, 59.9, WETLANDS },
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
					["coord"] = { 11.6, 59.5, WETLANDS },
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
				-- #if BEFORE 4.0.3
				n(3180, {	-- Dark Iron Entrepreneur <Speciality Goods>
					["coord"] = { 46.6, 18.2, WETLANDS },
					["groups"] = {
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_ONE, i(209874, {	-- Dragonslayer's Lance
							["timeline"] = { REMOVED_2_0_1 },
							["classes"] = { WARRIOR },
							["cost"] = 7500,	-- 75s
						})),
						-- #endif
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
				-- #endif
				-- #if AFTER 4.0.3
				n(1462, {	-- Edwina Monzor <Bowyer>
					["coord"] = { 11.1, 58.0, WETLANDS },
					["races"] = ALLIANCE_ONLY,
					["sym"] = {{"select","itemID",
						3027,	-- Heavy Recurve Bow
						3026,	-- Reinforced Bow
					}},
				}),
				-- #endif
				n(2682, {	-- Fradd Swiftgear <Engineering Supplies>
					["coord"] = { 26.4, 25.8, WETLANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(13309, {	-- Schematic: Lovingly Crafted Boomstick (RECIPE!)
							["timeline"] = { REMOVED_4_0_3 },
							["isLimited"] = true,
						}),
						i(14639, {	-- Schematic: Minor Recombobulator (RECIPE!)
							["isLimited"] = true,
						}),
					},
				}),
				n(41435, {	-- Fradd Swiftgear <Engineering Supplies>
					["coord"] = { 26.8, 25.9, WETLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(14639, {	-- Schematic: Minor Recombobulator (RECIPE!)
							["isLimited"] = true,
						}),
					},
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_ONE, n(212186, {	-- Grugimdern
					["coord"] = { 36.8, 15.2, WETLANDS },
					["classes"] = { DRUID },
					["groups"] = {
						i(210499),	-- Marshroom
					},
				})),
				-- #endif
				n(1454, {	-- Jennabink Powerseam <Tailoring Supplies & Specialty Goods>
					["coords"] = {
						-- #if AFTER CATA
						{ 10.0, 59.0, WETLANDS },
						-- #else
						{ 8.1, 55.8, WETLANDS },
						-- #endif
					},
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
					["coord"] = { 11.3, 59.6, WETLANDS },
					["races"] = ALLIANCE_ONLY,
					["sym"] = {{"select","itemID",
						3024,	-- BKP 2700 "Enforcer"
						3023,	-- Large Bore Blunderbuss
					}},
				}),
				n(1459, {	-- Naela Trance <Bowyer>
					["coords"] = {
						-- #if AFTER CATA
						{ 11.0, 57.8, WETLANDS },
						-- #else
						{ 11.3, 58.4, WETLANDS },
						-- #endif
					},
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
					["coords"] = {
						-- #if AFTER CATA
						{ 11.8, 52.6, WETLANDS },
						-- #else
						{ 10.8, 56.8, WETLANDS },
						-- #endif
					},
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(20970, {	-- Design: Pendant of the Agate Shield (RECIPE!)
							["timeline"] = { ADDED_2_0_1, REMOVED_4_1_0 },	-- Now taught by trainer, recipe removed from the game.
							["isLimited"] = true,
						}),
					},
				}),
				n(1457, {	-- Samor Festivus <Shady Dealer>
					["coord"] = { 10.5, 60.2, WETLANDS },
					["races"] = ALLIANCE_ONLY,
					["sym"] = {{"select","itemID",
						4565,	-- Simple Dagger
					}},
				}),
				n(3178, {	-- Stuart Fleming <Fisherman>
					["coords"] = {
						-- #if AFTER CATA
						{ 6.3, 57.4, WETLANDS },
						-- #else
						{ 8.0, 58.3, WETLANDS },
						-- #endif
					},
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(17062),	-- Recipe: Mithril Head Trout (RECIPE!)
						i(6368),	-- Recipe: Rainbow Fin Albacore (RECIPE!)
						i(6369),	-- Recipe: Rockscale Cod (RECIPE!)
					},
				}),
				n(1460, {	-- Unger Statforth <Horse Breeder>
					["coords"] = {
						-- #if AFTER CATA
						{ 9.2, 56.6, WETLANDS },
						-- #else
						{ 8.6, 54.4, WETLANDS },
						-- #endif
					},
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
				n(41622, {	-- Victorina <Weaponsmith>
					["coord"] = { 58.0, 40.7, WETLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["sym"] = {{"select","itemID",
						926,	-- Battle Axe
						2025,	-- Bearded Axe
						2029,	-- Cleaver
						922,	-- Dacian Falx
						927,	-- Double Axe
						2024,	-- Espadon
						925,	-- Flail
						2030,	-- Gnarled Staff
						2028,	-- Hammer
						2209,	-- Kris
						923,	-- Longsword
						928,	-- Long Staff
						924,	-- Maul
						2208,	-- Poniard
						2026,	-- Rock Hammer
						2027,	-- Scimitar
					}},
				}),
				n(2679, {	-- Wenna Silkbeard <Special Goods Dealer>
					["coord"] = { 25.6, 25.8, WETLANDS },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(7114, {	-- Pattern: Azure Silk Gloves
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
						i(3429, {	-- Guardsman Belt
							["timeline"] = { ADDED_10_1_7 },
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
					["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
					["crs"] = {
						-- #if AFTER 10.1.7
						42111,	-- Bluegill Forager
						-- #else
						1028,	-- Bluegill Muckdweller
						-- #endif
					},
					["coords"] = {
						-- #if AFTER 10.1.7
						{ 21.8, 40.0, WETLANDS },
						{ 17.4, 41.4, WETLANDS },
						{ 17.2, 33.6, WETLANDS },
						{ 13.6, 42.6, WETLANDS },
						{ 16.6, 26.2, WETLANDS },
						{ 20.4, 37.6, WETLANDS },
						{ 14.2, 36.8, WETLANDS },
						{ 18.6, 34.0, WETLANDS },
						{ 12.2, 40.2, WETLANDS },
						{ 13.4, 34.0, WETLANDS },
						{ 15.8, 28.2, WETLANDS },
						-- #else
						{ 23.0, 37.2, WETLANDS },
						{ 13.0, 33.2, WETLANDS },
						-- #endif
					},
				}),
				i(2046, {	-- Bluegill Kukri
					["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
					["crs"] = {
						-- #if AFTER 10.1.7
						41425,	-- Bluegill Murloc
						-- #else
						1027,	-- Bluegill Warrior
						-- #endif
					},
					["coords"] = {
						-- #if AFTER 10.1.7
						{ 21.8, 40.0, WETLANDS },
						{ 17.4, 41.4, WETLANDS },
						{ 17.2, 33.6, WETLANDS },
						{ 13.6, 42.6, WETLANDS },
						{ 16.6, 26.2, WETLANDS },
						{ 20.4, 37.6, WETLANDS },
						{ 14.2, 36.8, WETLANDS },
						{ 18.6, 34.0, WETLANDS },
						{ 12.2, 40.2, WETLANDS },
						{ 13.4, 34.0, WETLANDS },
						{ 15.8, 28.2, WETLANDS },
						-- #else
						{ 18.6, 40.0, WETLANDS },
						{ 15.2, 38.4, WETLANDS },
						-- #endif
					},
				}),
				i(1560, {	-- Bluegill Sandals
					["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
					["crs"] = {
						-- #if AFTER 10.1.7
						42110,	-- Bluegill Puddlejumper
						-- #else
						1025,	-- Bluegill Puddlejumper
						-- #endif
					},
					["coords"] = {
						-- #if AFTER 10.1.7
						{ 21.8, 40.0, WETLANDS },
						{ 17.4, 41.4, WETLANDS },
						{ 17.2, 33.6, WETLANDS },
						{ 13.6, 42.6, WETLANDS },
						{ 16.6, 26.2, WETLANDS },
						{ 20.4, 37.6, WETLANDS },
						{ 14.2, 36.8, WETLANDS },
						{ 18.6, 34.0, WETLANDS },
						{ 12.2, 40.2, WETLANDS },
						{ 13.4, 34.0, WETLANDS },
						{ 15.8, 28.2, WETLANDS },
						-- #else
						{ 18.6, 40.0, WETLANDS },
						{ 15.2, 38.4, WETLANDS },
						-- #endif
					},
				}),
				-- #if AFTER 4.0.3
				i(10822, {	-- Dark Whelpling (PET!)
					["cr"] = 42042,	-- Ebon Whelp
				}),
				-- #endif
				i(2084, {	-- Darksteel Bastard Sword
					["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
					["crs"] = {
						-- #if AFTER 10.1.7
						1034,	-- Dragonmaw Raider
						-- #else
						1054,	-- Dark Iron Demolitionist
						-- #endif
					},
					["coords"] = {
						-- #if AFTER 10.1.7
						{ 47.8, 47.6, WETLANDS },
						{ 45.4, 42.6, WETLANDS },
						{ 52.6, 53.4, WETLANDS },
						-- #else
						{ 62.4, 28.0, WETLANDS },
						{ 46.8, 18.0, WETLANDS },
						-- #endif
					},
				}),
				i(1955, {	-- Dragonmaw Chain Boots
					["cr"] = 1035,	-- Dragonmaw Swamprunner
					["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
					["coords"] = {
						{ 50.6, 49.4, WETLANDS },
						{ 39.0, 46.6, WETLANDS },
					},
				}),
				i(753, {	-- Dragonmaw Shortsword
					["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
					["cr"] = 1036,	-- Dragonmaw Centurion
					["coords"] = {
						-- #if AFTER 10.1.7
						{ 51.4, 52.6, WETLANDS },
						{ 49.0, 48.4, WETLANDS },
						{ 45.6, 45.4, WETLANDS },
						-- #else
						{ 54.2, 54.2, WETLANDS },
						{ 53.4, 56.0, WETLANDS },
						{ 45.6, 45.4, WETLANDS },
						-- #endif
					},
				}),
				-- #if BEFORE 4.0.3
				-- Moved to a Vendor, Dark Iron Entrepreneur after 4.0.3
				i(11150, {	-- Formula: Enchant Gloves - Mining (RECIPE!)
					["crs"] = {
						1364,	-- Balgaras the Foul
						1054,	-- Dark Iron Demolitionist
						1051,	-- Dark Iron Dwarf
						1052,	-- Dark Iron Saboteur
						1053,	-- Dark Iron Tunneler
					},
				}),
				-- #endif
				i(892, {	-- Gnoll Casting Gloves
					["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
					["crs"] = {
						-- #if AFTER 10.1.7
						41391,	-- Mosshide Mystic
						-- #else
						1009,	-- Mosshide Mistweaver
						-- #endif
					},
					["coords"] = {
						-- #if AFTER 10.1.7
						{ 39.0, 33.6, WETLANDS },
						{ 35.6, 31.6, WETLANDS },
						{ 30.2, 33.4, WETLANDS },
						-- #else
						{ 45.6, 34.6, WETLANDS },
						{ 61.0, 58.4, WETLANDS },
						{ 62.6, 69.2, WETLANDS },
						-- #endif
					},
				}),
				-- #if BEFORE 4.0.3
				i(5788, {	-- Pattern: Thick Murloc Armor (RECIPE!)
					["cr"] = 1160,	-- Captain Halyndor
					["coord"] = { 15.6, 23.4, WETLANDS },
				}),
				-- #endif
				i(3076, {	-- Smoldering Boots
					["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
					["crs"] = {
						-- #if AFTER 10.1.7
						42042,	-- Ebon Whelp
						-- #else
						1042,	-- Red Whelp
						-- #endif
					},
					["coords"] = {
						-- #if AFTER 10.1.7
						{ 63.8, 48.6, WETLANDS },
						{ 65.0, 42.6, WETLANDS },
						{ 61.8, 47.4, WETLANDS },
						{ 61.2, 40.0, WETLANDS },
						{ 70.6, 48.4, WETLANDS },
						{ 67.6, 52.8, WETLANDS },
						{ 63.8, 48.6, WETLANDS },
						{ 61.0, 47.2, WETLANDS },
						{ 61.8, 41.2, WETLANDS },
						-- #else
						{ 66.8, 53.2, WETLANDS },
						{ 59.6, 43.0, WETLANDS },
						-- #endif
					},
				}),
				i(3074, {	-- Smoldering Gloves
					["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
					["crs"] = {
						-- #if AFTER 10.1.7
						42042,	-- Ebon Whelp
						-- #else
						1043,	-- Lost Whelp
						-- #endif
					},
					["coords"] = {
						-- #if AFTER 10.1.7
						{ 63.8, 48.6, WETLANDS },
						{ 65.0, 42.6, WETLANDS },
						{ 61.8, 47.4, WETLANDS },
						{ 61.2, 40.0, WETLANDS },
						{ 70.6, 48.4, WETLANDS },
						{ 67.6, 52.8, WETLANDS },
						{ 63.8, 48.6, WETLANDS },
						{ 61.0, 47.2, WETLANDS },
						{ 61.8, 41.2, WETLANDS },
						-- #else
						{ 60.6, 33.2, WETLANDS },
						{ 66.2, 49.0, WETLANDS },
						-- #endif
					},
				}),
				i(3073, {	-- Smoldering Pants
					["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
					["crs"] = {
						-- #if AFTER 10.1.7
						42043,	-- Ebon Slavehunter
						-- #else
						1069,	-- Crimson Whelp
						-- #endif
					},
					["coords"] = {
						-- #if AFTER 10.1.7
						{ 66.0, 45.8, WETLANDS },
						{ 67.4, 47.2, WETLANDS },
						{ 66.2, 49.2, WETLANDS },
						-- #else
						{ 61.8, 31.2, WETLANDS },
						{ 65.4, 43.0, WETLANDS },
						{ 68.8, 45.6, WETLANDS },
						-- #endif
					},
				}),
				i(3072, {	-- Smoldering Robe
					["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
					["crs"] = {
						-- #if AFTER 10.1.7
						42043,	-- Ebon Slavehunter
						-- #else
						1044,	-- Flamesnorting Whelp
						-- #endif
					},
					["coords"] = {
						-- #if AFTER 10.1.7
						{ 66.0, 45.8, WETLANDS },
						{ 67.4, 47.2, WETLANDS },
						{ 66.2, 49.2, WETLANDS },
						-- #else
						{ 71.8, 47.6, WETLANDS },
						{ 66.4, 40.4, WETLANDS },
						{ 63.8, 33.6, WETLANDS },
						-- #endif
					},
				}),
				i(6315, {	-- Steelarrow Crossbow
					["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
					["crs"] = {
						-- #if AFTER 10.1.7
						41409,	-- Dark Iron Trapper
						-- #else
						6523,	-- Dark Iron Rifleman
						-- #endif
					},
					["coords"] = {
						-- #if AFTER 10.1.7
						{ 45.8, 34.4, WETLANDS },
						{ 42.2, 30.2, WETLANDS },
						{ 38.2, 28.6, WETLANDS },
						-- #else
						{ 48.8, 17.6, WETLANDS },
						{ 48.9, 17.6, WETLANDS },
						-- #endif
					},
				}),
				i(8499, {	-- Tiny Crimson Whelpling (item) / Crimson Whelpling (PET!)
					-- #if AFTER CATA
					["description"] = "Teaches you how to summon the pet Crimson Whelpling.\n\nThe best spot to farm this pet is near the border with The Twilight Highlands. There is a \"battle\" going on between Ebon Slavehunters and Dragonmaw Whelpstealers. Around four of them meet at this point to wage war with each other. They spawn roughly every 15 seconds and engage again, so you don't even have to move. Having skinning helps so you can clear the big Ebon Slavehunter corpses, but it isn't needed.",
					["coord"] = { 67.3, 47.2, WETLANDS },
					-- #endif
					["crs"] = {
						-- #if AFTER CATA
						41425,	-- Bluegill Murloc
						4040,	-- Cave Stalker
						41394,	-- Dark Iron Holdout
						41137,	-- Displaced Threshadon
						1038,	-- Dragonmaw Shadowwarder
						42041,	-- Dragonmaw Whelpstealer
						42043,	-- Ebon Slavehunter
						42042,	-- Ebon Whelp
						41132,	-- Flood Elemental
						44116,	-- Harbor Crawler
						41293,	-- Harbor Shredfin
						1016,	-- Highland Lashtail
						41400,	-- Highland Razormaw
						41401,	-- Highland Scytheclaw
						1111,	-- Leech Stalker
						41388,	-- Living Fossil
						41390,	-- Mosshide Gnoll
						41391,	-- Mosshide Mystic
						41342,	-- Mottled Screecher
						41424,	-- Mouldering Mirebeast
						41389,	-- Paleolithic Elemental
						41145,	-- Silty Oozeling
						41419,	-- Wetlands Crocolisk
						-- #else
						1069,	-- Crimson Whelp
						1044,	-- Flamesnorting Whelp
						1042,	-- Red Whelp
						-- #endif
					},
				}),
				i(756, {	-- Tunnel Pick
					["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
					["crs"] = {
						-- #if AFTER 10.1.7
						41390,	-- Mosshide Gnoll
						-- #else
						1053,	-- Dark Iron Tunneler
						-- #endif
					},
					["coords"] = {
						-- #if AFTER 10.1.7
						{ 39.0, 33.6, WETLANDS },
						{ 35.6, 31.6, WETLANDS },
						{ 30.2, 33.4, WETLANDS },
						-- #else
						{ 61.2, 25.4, WETLANDS },
						{ 48.0, 18.6, WETLANDS },
						-- #endif
					},
				}),
			}),
		},
	}),
}));
