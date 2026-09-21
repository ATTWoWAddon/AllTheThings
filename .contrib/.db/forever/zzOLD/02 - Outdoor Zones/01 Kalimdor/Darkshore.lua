---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(MAP.KALIMDOR, {
	m(MAP.DARKSHORE, {
		["lore"] =
			"This rocky area stretches along Kalimdor's north coast. Rains, winds and rocky beaches make the place inhospitable. Old night elf ruins stand crumbling on the cliffs, and murlocs and naga lurk within. The night elf village of Auberdine serves as a friendly trading post.",
		["icon"] = 236739,
		["groups"] = {
			n(ACHIEVEMENTS, {
				ach(844),	-- Explore Darkshore
			}),
			explorationHeader({
				exploration(447),	-- Ameth'Aran
				exploration(442),	-- Auberdine
				exploration(446),	-- Bashal'Aran
				exploration(445),	-- Cliffspring Falls
				exploration(456),	-- Cliffspring River
				exploration(448),	-- Grove of the Ancients
				exploration(450),	-- Remtravel's Excavation
				exploration(443),	-- Ruins of Mathystra
				exploration(449),	-- The Master's Glaive
				exploration(444),	-- Tower of Althalaxx
			}),
			n(FLIGHT_PATHS, {
				fp(26, {	-- Auberdine, Darkshore
					["cr"] = 3841,	-- Caylais Moonfeather <Hippogryph Master>
					["coord"] = { 36.4, 45.6, MAP.DARKSHORE },
					["races"] = ALLIANCE_ONLY,
				}),
			}),
			n(PROFESSIONS, {
				prof(FISHING, {
					i(12238),	-- Darkshore Grouper
				}),
			}),
			n(QUESTS, {
				q(986, {	-- A Lost Master (1/2)
					["sourceQuest"] = 985,	-- How Big a Threat? (2/2)
					["qg"] = 3693,	-- Terenthis
					["coord"] = { 39.4, 43.5, MAP.DARKSHORE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 10,
					["groups"] = {
						objective(1, {	-- 0/5 Fine Moonstalker Pelt
							["provider"] = { "i", 5386 },	-- Fine Moonstalker Pelt
							["crs"] = {
								2071,	-- Moonstalker Matriarch
								2237,	-- Moonstalker Sire
							},
						}),
						i(5387),	-- Enchanted Moonstalker Cloak
					},
				}),
				q(993, {	-- A Lost Master (2/2)
					["sourceQuest"] = 986,	-- A Lost Master (1/2)
					["providers"] = {
						{ "n", 3693 },	-- Terenthis
						{ "i", 5387 },	-- Enchanted Moonstalker Cloak
					},
					["coord"] = { 39.4, 43.5, MAP.DARKSHORE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 10,
				}),
				q(4812, {	-- As Water Cascades
					["sourceQuest"] = 4811,	-- The Red Crystal
					["qg"] = 2930,	-- Sentinel Glynda Nal'Shea
					["coord"] = { 37.7, 43.4, MAP.DARKSHORE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 12,
					["groups"] = {
						objective(1, {	-- 0/1 Moonwell Water Tube
							["provider"] = { "i", 14339 },	-- Moonwell Water Tube
							["coord"] = { 37.0, 43.0, MAP.DARKSHORE },
							["cost"] = { { "i", 14338, 1 } },	-- Empty Water Tube
						}),
					},
				}),
				q(954, {	-- Bashal'Aran (1/4)
					["qg"] = 3649,	-- Thundris Windweaver
					["coord"] = { 37.4, 40.2, MAP.DARKSHORE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 7,
				}),
				q(955, {	-- Bashal'Aran (2/4)
					["sourceQuest"] = 954,	-- Bashal'Aran (1/4)
					["qg"] = 3650,	-- Asterion
					["coord"] = { 44.2, 36.3, MAP.DARKSHORE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 7,
					["groups"] = {
						objective(1, {	-- 0/8 Grell Earring
							["provider"] = { "i", 5336 },	-- Grell Earring
							["crs"] = {
								2189,	-- Vile Sprite
								2190,	-- Wild Grell
							},
						}),
					},
				}),
				q(956, {	-- Bashal'Aran (3/4)
					["sourceQuest"] = 955,	-- Bashal'Aran (2/4)
					["qg"] = 3650,	-- Asterion
					["coord"] = { 44.2, 36.3, MAP.DARKSHORE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 7,
					["groups"] = {
						objective(1, {	-- 0/1 Ancient Moonstone Seal
							["provider"] = { "i", 5338 },	-- Ancient Moonstone Seal
							["cr"] = 2212,	-- Deth'ryll Satyr
						}),
					},
				}),
				q(957, {	-- Bashal'Aran (4/4)
					["sourceQuest"] = 956,	-- Bashal'Aran (3/4)
					["qg"] = 3650,	-- Asterion
					["coord"] = { 44.2, 36.3, MAP.DARKSHORE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 7,
					["groups"] = {
						objective(1, {	-- 0/1 Destroy the seal at the ancient flame
							["providers"] = {
								{ "i", 5338 },	-- Ancient Moonstone Seal
								{ "o", 16393 },	-- Ancient Flame
							},
							["coord"] = { 42.0, 61.0, MAP.DARKSHORE },
						}),
						i(7229),	-- Explorer's Vest
						i(5617),	-- Vagabond Leggings
						i(5604),	-- Elven Wand
					},
				}),
				q(4723, {	-- Beached Sea Creature (1/4)
					["sourceQuest"] = 4681,	-- Washed Ashore (2/2)
					["providers"] = {
						{ "o", 175233 },	-- Beached Sea Creature
						{ "i",  12242 },	-- Sea Creature Bones
					},
					["coord"] = { 42.0, 31.6, MAP.DARKSHORE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 11,
				}),
				q(4728, {	-- Beached Sea Creature (2/4)
					["sourceQuest"] = 4681,	-- Washed Ashore (2/2)
					["providers"] = {
						{ "o", 175226 },	-- Beached Sea Creature
						{ "i",  12242 },	-- Sea Creature Bones
					},
					["coord"] = { 36.0, 70.8, MAP.DARKSHORE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 12,
				}),
				q(4730, {	-- Beached Sea Creature (3/4)
					["sourceQuest"] = 4681,	-- Washed Ashore (2/2)
					["providers"] = {
						{ "o", 175227 },	-- Beached Sea Creature
						{ "i",  12242 },	-- Sea Creature Bones
					},
					["coord"] = { 32.7, 80.9, MAP.DARKSHORE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 12,
				}),
				q(4733, {	-- Beached Sea Creature (4/4)
					["sourceQuest"] = 4681,	-- Washed Ashore (2/2)
					["providers"] = {
						{ "o", 175230 },	-- Beached Sea Creature
						{ "i",  12242 },	-- Sea Creature Bones
					},
					["coord"] = { 31.2, 87.4, MAP.DARKSHORE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 13,
				}),
				q(4722, {	-- Beached Sea Turtle (1/5)
					["sourceQuest"] = 4681,	-- Washed Ashore (2/2)
					["providers"] = {
						{ "o", 176190 },	-- Beached Sea Turtle
						{ "i",  12289 },	-- Sea Turtle Remains
					},
					["coord"] = { 37.2, 62.2, MAP.DARKSHORE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 11,
				}),
				q(4725, {	-- Beached Sea Turtle (2/5)
					["sourceQuest"] = 4681,	-- Washed Ashore (2/2)
					["providers"] = {
						{ "o", 176197 },	-- Beached Sea Turtle
						{ "i",  12292 },	-- Strangely Marked Box
					},
					["coord"] = { 44.2, 20.7, MAP.DARKSHORE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 12,
				}),
				q(4727, {	-- Beached Sea Turtle (3/5)
					["sourceQuest"] = 4681,	-- Washed Ashore (2/2)
					["providers"] = {
						{ "o", 176196 },	-- Beached Sea Turtle
						{ "i",  12289 },	-- Sea Turtle Remains
					},
					["coord"] = { 53.1, 18.1, MAP.DARKSHORE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 12,
				}),
				q(4731, {	-- Beached Sea Turtle (4/5)
					["sourceQuest"] = 4681,	-- Washed Ashore (2/2)
					["providers"] = {
						{ "o", 176198 },	-- Beached Sea Turtle
						{ "i",  12292 },	-- Strangely Marked Box
					},
					["coord"] = { 31.7, 83.7, MAP.DARKSHORE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 13,
				}),
				q(4732, {	-- Beached Sea Turtle (5/5)
					["sourceQuest"] = 4681,	-- Washed Ashore (2/2)
					["providers"] = {
						{ "o", 176191 },	-- Beached Sea Turtle
						{ "i",  12289 },	-- Sea Turtle Remains
					},
					["coord"] = { 31.2, 85.6, MAP.DARKSHORE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 13,
				}),
				q(1002, {	-- Buzzbox 323
					["sourceQuest"] = 1001,	-- Buzzbox 411
					["provider"] = { "o", 17183 },	-- Buzzbox 411
					["coord"] = { 42.0, 28.7, MAP.DARKSHORE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 7,
					["groups"] = {
						objective(1, {	-- 0/6 Moonstalker Fang
							["provider"] = { "i", 5413 },	-- Moonstalker Fang
							["crs"] = {
								2069,	-- Moonstalker
								2071,	-- Moonstalker Matriarch
								2070,	-- Moonstalker Runt
								2237,	-- Moonstalker Sire
								2175,	-- Shadowclaw
							},
						}),
					},
				}),
				q(1001, {	-- Buzzbox 411
					["sourceQuest"] = 983,	-- Buzzbox 827
					["provider"] = { "o", 17182 },	-- Buzzbox 827
					["coord"] = { 36.7, 46.3, MAP.DARKSHORE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 7,
					["groups"] = {
						objective(1, {	-- 0/3 Thresher Eye
							["provider"] = { "i", 5412 },	-- Thresher Eye
							["crs"] = {
								2185,	-- Darkshore Thresher
								2187,	-- Elder Darkshore Thresher
							},
						}),
					},
				}),
				q(1003, {	-- Buzzbox 525
					["sourceQuest"] = 1002,	-- Buzzbox 323
					["provider"] = { "o", 17184 },	-- Buzzbox 323
					["coord"] = { 51.3, 24.6, MAP.DARKSHORE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 7,
					["groups"] = {
						objective(1, {	-- 0/4 Grizzled Scalp
							["provider"] = { "i", 5414 },	-- Grizzled Scalp
							["crs"] = {
								6788,	-- Den Mother
								2165,	-- Grizzled Thistle Bear
							},
						}),
						i(2082),	-- Wizbang's Gunnysack
						i(11846),	-- Wizbang's Special Brew
					},
				}),
				q(983, {	-- Buzzbox 827
					["qg"] = 3666,	-- Wizbang Cranktoggle
					["coord"] = { 37.0, 44.0, MAP.DARKSHORE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 7,
					["groups"] = {
						objective(1, {	-- 0/6 Crawler Leg
							["provider"] = { "i", 5385 },	-- Crawler Leg
							["crs"] = {
								2231,	-- Pygmy Tide Crawler
								2236,	-- Raging Reef Crawler
								2235,	-- Reef Crawler
								2232,	-- Tide Crawler
								2234,	-- Young Reef Crawler
							},
						}),
					},
				}),
				q(947, {	-- Cave Mushrooms
					["qg"] = 3583,	-- Barithras Moonshade
					["coord"] = { 37.3, 43.6, MAP.DARKSHORE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 12,
					["groups"] = {
						objective(1, {	-- 0/5 Scaber Stalk
							["providers"] = {
								{ "i", 5271 },	-- Scaber Stalk
								{ "o", 11714 },	-- Scaber Stalk
							},
							["coord"] = { 55.1, 34.6, MAP.DARKSHORE },
						}),
						objective(2, {	-- 0/1 Death Cap
							["providers"] = {
								{ "i", 5270 },	-- Death Cap
								{ "o", 11713 },	-- Death Cap
							},
							["coord"] = { 55.4, 36.4, MAP.DARKSHORE },
						}),
						i(5610),	-- Gustweald Cloak
					},
				}),
				q(2138, {	-- Cleansing of the Infected
					["sourceQuest"] = 2118,	-- Plagued Lands
					["qg"] = 3701,	-- Tharnariun Treetender
					["coord"] = { 38.8, 43.4, MAP.DARKSHORE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 10,
					["groups"] = {
						objective(1, {	-- 0/20 Rabid Thistle Bear slain
							["provider"] = { "n", 2164 },	-- Rabid Thistle Bear
						}),
					},
				}),
				q(6124, {	-- Curing the Sick (A)
					["sourceQuest"] = 6123,	-- Gathering the Cure
					["qg"] = 3702,	-- Alanndarian Nightsong
					["coord"] = { 37.6, 40.6, MAP.DARKSHORE },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { DRUID },
					["lvl"] = 14,
					["groups"] = {
						objective(1, {	-- 0/10 Sickly Deer cured
							["provider"] = { "i", 15826 },	-- Curative Animal Salve
							["cr"] = 12298,	-- Sickly Deer
						}),
						i(15866),	-- Veildust Medicine Bag
					},
				}),
				q(982, {	-- Deep Ocean, Vast Sea
					["qg"] = 6301,	-- Gorbold Steelhand
					["coord"] = { 38.1, 41.2, MAP.DARKSHORE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 13,
					["groups"] = {
						objective(1, {	-- 0/1 Silver Dawning's Lockbox
							["providers"] = {
								{ "i",  12191 },	-- Silver Dawning's Lockbox
								{ "o", 175165 },	-- Silver Dawning's Lockbox
							},
							["coord"] = { 38.3, 28.8, MAP.DARKSHORE },
						}),
						objective(2, {	-- 0/1 Mist Veil's Lockbox
							["providers"] = {
								{ "i",  12192 },	-- Mist Veil's Lockbox
								{ "o", 175166 },	-- Mist Veil's Lockbox
							},
							["coord"] = { 39.7, 27.4, MAP.DARKSHORE },
						}),
						i(15401),	-- Welldrip Gloves
						i(15402),	-- Noosegrip Gauntlets
					},
				}),
				q(2178, {	-- Easy Strider Living
					["qg"] = 3702,	-- Alanndarian Nightsong
					["coord"] = { 37.7, 40.7, MAP.DARKSHORE },
					["cost"] = { { "i", 5469, 5 } },	-- Strider Meat
					["requireSkill"] = COOKING,
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 9,
					["groups"] = {
						i(5486),	-- Recipe: Strider Stew (RECIPE!)
						i(5477),	-- Strider Stew
					},
				}),
				q(1580, {	-- Electropellers
					["sourceQuest"] = 1579,	-- Gaffer Jacks
					["qg"] = 3666,	-- Wizbang Cranktoggle
					["coord"] = { 37.0, 44.0, MAP.DARKSHORE },
					["requireSkill"] = FISHING,
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 10,
					["groups"] = {
						objective(1, {	-- 0/12 Electropeller
							["provider"] = { "i", 6718 },	-- Electropeller
							["coords"] = {
								{ 52.0, 28.9, MAP.DARKSHORE },
								{ 41.5, 73.4, MAP.DARKSHORE },
							},
						}),
						i(6811),	-- Aquadynamic Fish Lens
					},
				}),
				q(994, {	-- Escape Through Force
					["altQuests"] = { 995 },	-- Escape Through Stealth
					["description"] = "This quest becomes unavailable if you complete Escape Through Stealth",
					["sourceQuest"] = 993,	-- A Lost Master (2/2)
					["qg"] = 3692,	-- Volcor
					["coord"] = { 45.0, 85.4, MAP.DARKSHORE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 10,
					["groups"] = {
						i(5609),	-- Steadfast Cinch
					},
				}),
				q(995, {	-- Escape Through Stealth
					["altQuests"] = { 994 },	-- Escape Through Force
					["description"] = "This quest becomes unavailable if you complete Escape Through Force",
					["sourceQuest"] = 993,	-- A Lost Master (2/2)
					["qg"] = 3692,	-- Volcor
					["coord"] = { 45.0, 85.4, MAP.DARKSHORE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 10,
					["groups"] = {
						i(6659),	-- Scarab Trousers
					},
				}),
				q(963, {	-- For Love Eternal
					["qg"] = 3644,	-- Cerellean Whiteclaw
					["coord"] = { 35.8, 43.7, MAP.DARKSHORE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 11,
					["groups"] = {
						objective(1, {	-- 0/1 Anaya's Pendant
							["provider"] = { "i", 5382 },	-- Anaya's Pendant
							["coord"] = { 43.2, 59.8, MAP.DARKSHORE },
							["cr"] = 3667,	-- Anaya Dawnrunner
						}),
						i(5611),	-- Tear of Grief
					},
				}),
				q(1138, {	-- Fruit of the Sea
					["qg"] = 10216,	-- Gubber Blump
					["coord"] = { 36.1, 44.9, MAP.DARKSHORE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 15,
					["groups"] = {
						objective(1, {	-- 0/6 Fine Crab Chunks
							["provider"] = { "i", 12237 },	-- Fine Crab Chunks
							["crs"] = {
								2233,	-- Encrusted Tide Crawler
								2235,	-- Reef Crawler
							},
						}),
						i(15405),	-- Shucking Gloves
						i(15406),	-- Crustacean Boots
					},
				}),
				q(1579, {	-- Gaffer Jacks
					["description"] = 'Requires fishing skill level 30',
					["qg"] = 3666,	-- Wizbang Cranktoggle
					["coord"] = { 37.0, 44.0, MAP.DARKSHORE },
					["requireSkill"] = FISHING,
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 10,
					["groups"] = {
						objective(1, {	-- 0/8 Gaffer Jack
							["provider"] = { "i", 6717 },	-- Gaffer Jack
						}),
					},
				}),
				q(6123, {	-- Gathering the Cure (A)
					["sourceQuest"] = 6122,	-- The Principal Source [A]
					["qg"] = 3702,	-- Alanndarian Nightsong
					["coord"] = { 37.6, 40.6, MAP.DARKSHORE },
					["cost"] = { { "i", 2449, 5 } },	-- Earthroot
					["races"] = ALLIANCE_ONLY,
					["classes"] = { DRUID },
					["lvl"] = 14,
					["groups"] = {
						objective(2, {	-- 0/12 Lunar Fungus
							["providers"] = {
								{ "i",  15851 },	-- Lunar Fungus
								{ "o", 177750 },	-- Lunar Fungal Bloom
							},
						}),
					},
				}),
				q(2098, {	-- Gyromast's Retrieval
					["qg"] = 6667,	-- Gelkak Gyromast
					["coord"] = { 56.7, 13.5, MAP.DARKSHORE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 14,
					["groups"] = {
						objective(1, {	-- 0/1 Top of Gelkak's Key
							["provider"] = { "i", 7498 },	-- Top of Gelkak's Key
							["cr"] = 2323,	-- Giant Foreststrider
						}),
						objective(2, {	-- 0/1 Middle of Gelkak's Key
							["provider"] = { "i", 7499 },	-- Middle of Gelkak's Key
							["crs"] = {
								2202,	-- Greymist Coastrunner
								2206,	-- Greymist Hunter
								2204,	-- Greymist Netter
								2207,	-- Greymist Oracle
								2201,	-- Greymist Raider
								2203,	-- Greymist Seer
								2208,	-- Greymist Tidehunter
								2205,	-- Greymist Warrior
								10323,	-- Murkdeep
							},
						}),
						objective(3, {	-- 0/1 Bottom of Gelkak's Key
							["provider"] = { "i", 7500 },	-- Bottom of Gelkak's Key
							["crs"] = {
								2233,	-- Encrusted Tide Crawler
								2236,	-- Raging Reef Crawler
							},
						}),
						i(7442),	-- Gyromast's Key
					},
				}),
				q(2078, {	-- Gyromast's Revenge
					["sourceQuest"] = 2098,	-- Gyromast's Retrieval
					["qg"] = 6667,	-- Gelkak Gyromast
					["coord"] = { 56.7, 13.5, MAP.DARKSHORE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 14,
					["groups"] = {
						objective(1, {	-- 0/1 Gelkak's First Mate slain
							["providers"] = {
								{ "n", 6669 },	-- The Threshwackonator 4100 <The First Mate>
								{ "i", 7442 },	-- Gyromast's Key
							},
							["coord"] = { 55.8, 18.2, MAP.DARKSHORE },
						}),
						i(5996),	-- Elixir of Water Breathing
					},
				}),
				q(984, {	-- How Big a Threat? (1/2)
					["qg"] = 3693,	-- Terenthis
					["coord"] = { 39.4, 43.5, MAP.DARKSHORE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 10,
				}),
				q(985, {	-- How Big a Threat? (2/2)
					["sourceQuest"] = 984,	-- How Big a Threat? (1/2)
					["qg"] = 3693,	-- Terenthis
					["coord"] = { 39.4, 43.5, MAP.DARKSHORE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 10,
					["groups"] = {
						objective(1, {	-- 0/8 Blackwood Pathfinder slain
							["provider"] = { "n", 2167 },	-- Blackwood Pathfinder
						}),
						objective(2, {	-- 0/5 Blackwood Windtalker slain
							["provider"] = { "n", 2324 },	-- Blackwood Windtalker
						}),
					},
				}),
				q(951, {	-- Mathystra Relics
					["sourceQuest"] = 950,	-- Return to Onu
					["qg"] = 3616,	-- Onu
					["coord"] = { 43.5, 76.3, MAP.DARKSHORE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 12,
					["groups"] = {
						objective(1, {	-- 0/6 Mathystra Relic
							["providers"] = {
								{ "i", 5273 },	-- Mathystra Relic
								{ "o", 13360 },	-- Mathystra Relic
							},
							["coord"] = { 59.0, 21.8, MAP.DARKSHORE },
						}),
						i(5757),	-- Hardwood Cudgel
						i(5615),	-- Woodsman Sword
					},
				}),
				q(5713, {	-- One Shot. One Kill.
					["qg"] = 11711,	-- Sentinel Aynasha
					["coord"] = { 45.9, 90.3, MAP.DARKSHORE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 10,
				}),
				q(948, {	-- Onu
					["sourceQuest"] = 947,	-- Cave Mushrooms
					["qg"] = 3583,	-- Barithras Moonshade
					["coord"] = { 37.3, 43.7, MAP.DARKSHORE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 12,
				}),
				q(960, {	-- Onu is meditating
					["description"] = "To complete this quest you must return to Onu after you complete The Master's Glaive, but before you turn in The Twilight Camp.",
					["sourceQuest"] = 944,	-- The Master's Glaive
					["qg"] = 3616,	-- Onu
					["coord"] = { 43.5, 76.3, MAP.DARKSHORE },
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					["groups"] = {
						i(5251),	-- Phial of Scrying
					},
				}),
				q(961, {	-- Onu is meditating
					["description"] = "To complete this quest you must return to Onu after you complete The Twilight Camp, but before you turn in Return to Onu.",
					["sourceQuest"] = 949,	-- The Twilight Camp
					["qg"] = 3616,	-- Onu
					["coord"] = { 43.5, 76.3, MAP.DARKSHORE },
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					["groups"] = {
						i(5251),	-- Phial of Scrying
					},
				}),
				q(2118, {	-- Plagued Lands
					["qg"] = 3701,	-- Tharnariun Treetender
					["coord"] = { 38.8, 43.4, MAP.DARKSHORE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 10,
					["groups"] = {
						objective(1, {	-- Rabid Thistle Bear Captured
							["providers"] = {
								{ "n", 11836 },	-- Captured Rabid Thistle Bear
								{ "i", 7586 },	-- Tharnariun's Hope
							},
							["cr"] = 2164,	-- Rabid Thistle Bear
						}),
					},
				}),
				q(6343, {	-- Return to Nessa
					["sourceQuest"] = 6342,	-- Flight to Auberdine
					["providers"] = {
						{ "n", 4200 },	-- Laird
						{ "i", 16263 },	-- Laird's Response
					},
					["coord"] = { 36.8, 44.2, MAP.DARKSHORE },
					["races"] = { NIGHTELF },
					["lvl"] = 10,
				}),
				q(950, {	-- Return to Onu
					["sourceQuest"] = 949,	-- The Twilight Camp
					["providers"] = {
						{ "o", 12666 },	-- Twilight Tome
						{ "i", 5272 },	-- Insane Scribbles
					},
					["coord"] = { 38.7, 86.1, MAP.DARKSHORE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 12,
				}),
				q(2139, {	-- Tharnariun's Hope
					["sourceQuest"] = 2138,	-- Cleansing of the Infected
					["qg"] = 3701,	-- Tharnariun Treetender
					["coord"] = { 38.8, 43.4, MAP.DARKSHORE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 10,
					["groups"] = {
						objective(1, {	-- 0/1 Den Mother slain
							["provider"] = { "n", 6788 },	-- Den Mother
							["coord"] = { 51.4, 38.0, MAP.DARKSHORE },
						}),
						i(7738),	-- Evergreen Gloves
						i(7739),	-- Timberland Cape
					},
				}),
				q(729, {	-- The Absent Minded Prospector (1/5)
					["sourceQuest"] = 730,	-- Trouble in Darkshore?
					["qg"] = 2913,	-- Archaeologist Hollee
					["coord"] = { 37.4, 41.8, MAP.DARKSHORE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 15,
				}),
				q(731, {	-- The Absent Minded Prospector (2/5)
					["sourceQuest"] = 729,	-- The Absent Minded Prospector (1/5)
					["qg"] = 2917,	-- Prospector Remtravel
					["coord"] = { 35.7, 83.7, MAP.DARKSHORE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 15,
				}),
				q(741, {	-- The Absent Minded Prospector (3/5)
					["sourceQuest"] = 731,	-- The Absent Minded Prospector (2/5)
					["providers"] = {
						{ "n", 2913 },	-- Archaeologist Hollee
						{ "i", 4654 },	-- Mysterious Fossil
					},
					["coord"] = { 37.4, 41.8, MAP.DARKSHORE },
					["maps"] = { MAP.DARNASSUS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 15,
					["groups"] = {
						i(5629),	-- Hammerfist Gloves
						i(5630),	-- Windfelt Gloves
						i(11936),	-- Relic Hunter Belt
					},
				}),
				q(4763, {	-- The Blackwood Corrupted
					["qg"] = 3649,	-- Thundris Windweaver
					["coord"] = { 37.4, 40.2, MAP.DARKSHORE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 15,
					["groups"] = {
						objective(1, {	-- Talisman of Corruption
							["providers"] = {
								{ "i",  12355 },	-- Talisman of Corruption
								{ "o", 177624 },	-- Xabraxxis' Demon Bag
							},
							["coord"] = { 52.5, 33.5, MAP.DARKSHORE },
							["cost"] = {
								{ "i", 12347, 1 },	-- Filled Cleansing Bowl
								{ "i", 12341, 1 },	-- Blackwood Fruit Sample
								{ "i", 12342, 1 },	-- Blackwood Grain Sample
								{ "i", 12343, 1 },	-- Blackwood Nut Sample
							},
							["cr"] = 10373,	-- Xabraxxis
						}),
						i(12347, {	-- Filled Cleansing Bowl
							["provider"] = { "i", 12346 },	-- Empty Cleansing Bowl
							["coord"] = { 37.76, 44.02, MAP.DARKSHORE },
						}),
						i(12341, {	-- Blackwood Fruit Sample
							["provider"] = { "o", 175330 },	-- Blackwood Fruit Stores
							["coord"] = { 52.91, 33.38, MAP.DARKSHORE },
						}),
						i(12342, {	-- Blackwood Grain Sample
							["provider"] = { "o", 175331 },	-- Blackwood Grain Stores
							["coord"] = { 50.63, 35.05, MAP.DARKSHORE },
						}),
						i(12343, {	-- Blackwood Nut Sample
							["provider"] = { "o", 175329 },	-- Blackwood Nut Stores
							["coord"] = { 51.81, 33.43, MAP.DARKSHORE },
						}),
						i(15204),	-- Moonstone Wand
						i(15202),	-- Wildkeeper Leggings
						i(15203),	-- Guststorm Legguards
					},
				}),
				q(4762, {	-- The Cliffspring River
					["sourceQuest"] = 4761,	-- Thundris Windweaver
					["qg"] = 3649,	-- Thundris Windweaver
					["coord"] = { 37.4, 40.2, MAP.DARKSHORE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 11,
					["groups"] = {
						objective(1, {	-- 0/1 Cliffspring River Sample
							["provider"] = { "i", 12349 },	-- Cliffspring River Sample
							["coord"] = { 50.76, 25.56, MAP.DARKSHORE },
							["cost"] = { { "i", 12350, 1 } },	-- Empty Sampling Tube
						}),
					},
				}),
				q(953, {	-- The Fall of Ameth'Aran
					["qg"] = 3639,	-- Sentinel Tysha Moonblade
					["coord"] = { 40.3, 59.7, MAP.DARKSHORE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 9,
					["groups"] = {
						objective(1, {	-- Read the Lay of Ameth'Aran
							["provider"] = { "o", 17188 },	-- The Lay of Ameth'Aran
							["coord"] = { 43.3, 58.7, MAP.DARKSHORE },
						}),
						objective(2, {	-- Read the Fall of Ameth'Aran
							["provider"] = { "o", 17189 },	-- The Fall of Ameth'Aran
							["coord"] = { 42.7, 63.1, MAP.DARKSHORE },
						}),
					},
				}),
				q(1141, {	-- The Family and the Fishing Pole
					["description"] = "Talk to Gubber Blump after accepting the quest to learn Fishing. Buy a Fishing Pole for 23c and a Shiny Bauble for 50c from Gubber Blump. Start fishing next to Gubber Blump to catch the fish required for the quest.",
					["qg"] = 10216,	-- Gubber Blump
					["coord"] = { 36.1, 44.9, MAP.DARKSHORE },
					["cost"] = { { "i", 12238, 6 } },	-- Darkshore Grouper
					["requireSkill"] = FISHING,
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 10,
					["groups"] = {
						i(12225),	-- Blump Family Fishing Pole
					},
				}),
				q(4813, {	-- The Fragments Within
					["sourceQuest"] = 4812,	-- As Water Cascades
					["provider"] = { "o", 175524 },	-- Mysterious Red Crystal
					["coord"] = { 47.3, 48.7, MAP.DARKSHORE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 12,
					["groups"] = {
						i(15335),	-- Briarsteel Shortsword
						i(15396),	-- Curvewood Dagger
						i(15397),	-- Oakthrush Staff
					},
				}),
				q(944, {	-- The Master's Glaive
					["sourceQuest"] = 948,	-- Onu
					["providers"] = {
						{ "n", 3616 },	-- Onu
						{ "i", 5251 },	-- Phial of Scrying
						{ "o", 10076 },	-- Scrying Bowl
					},
					["coord"] = { 43.5, 76.3, MAP.DARKSHORE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 12,
				}),
				q(968, {	-- The Powers Below
					["provider"] = { "i", 5352 },	-- Book: The Powers Below
					["maps"] = { MAP.IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 10,
				}),
				q(4811, {	-- The Red Crystal
					["qg"] = 2930,	-- Sentinel Glynda Nal'Shea
					["coord"] = { 37.7, 43.4, MAP.DARKSHORE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 12,
				}),
				q(5321, {	-- The Sleeper Has Awakened
					["qg"] = 11218,	-- Kerlonian Evershade
					["coord"] = { 44.4, 76.4, MAP.DARKSHORE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 17,
					["groups"] = {
						objective(1, {	-- Escort Kerlonian Evershade to Maestra's Post
							["providers"] = {
								{ "i",  13536 },	-- Horn of Awakening
								{ "o", 176634 },	-- Kerlonian's Chest
							},
							["coord"] = { 44.4, 76.4, MAP.DARKSHORE },
						}),
						i(15205),	-- Owlsight Rifle
						i(15206),	-- Jadefinger Baton
						i(15207),	-- Steelcap Shield
					},
				}),
				q(965, {	-- The Tower of Althalaxx (1/9)
					["qg"] = 3657,	-- Sentinel Elissa Starbreeze
					["coord"] = { 39.0, 43.6, MAP.DARKSHORE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 13,
				}),
				q(966, {	-- The Tower of Althalaxx (2/9)
					["sourceQuest"] = 965,	-- The Tower of Althalaxx (1/9)
					["qg"] = 3661,	-- Balthule Shadowstrike
					["coord"] = { 55.0, 24.9, MAP.DARKSHORE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 13,
					["groups"] = {
						objective(1, {	-- 0/4 Worn Parchment
							["provider"] = { "i", 5348 },	-- Worn Parchment
							["cr"] = 2336,	-- Dark Strand Fanatic
						}),
					},
				}),
				q(967, {	-- The Tower of Althalaxx (3/9)
					["sourceQuest"] = 966,	-- The Tower of Althalaxx (2/9)
					["providers"] = {
						{ "n", 3661 },	-- Balthule Shadowstrike
						{ "i", 5354 },	-- Letter to Delgren
					},
					["coord"] = { 55.0, 24.9, MAP.DARKSHORE },
					["maps"] = { MAP.ASHENVALE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 13,
				}),
				q(1143, {	-- The Tower of Althalaxx (8/9)
					["sourceQuest"] = 1167,	-- The Tower of Althalaxx (7/9)
					["qg"] = 3661,	-- Balthule Shadowstrike
					["coord"] = { 55.0, 24.9, MAP.DARKSHORE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 13,
					["groups"] = {
						objective(1, {	-- 0/1 Athrikus Narassin's Head
							["provider"] = { "i", 5383 },	-- Athrikus Narassin's Head
							["coord"] = { 56.0, 26.0, MAP.DARKSHORE },
							["cr"] = 3660,	-- Athrikus Narassin <Cult of the Dark Strand>
						}),
					},
				}),
				q(981, {	-- The Tower of Althalaxx (9/9)
					["sourceQuest"] = 1143,	-- The Tower of Althalaxx (8/9)
					["qg"] = 3661,	-- Balthule Shadowstrike
					["coord"] = { 55.0, 24.9, MAP.DARKSHORE },
					["maps"] = { MAP.ASHENVALE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 13,
					["groups"] = {
						i(10043),	-- Pious Legwraps
						i(5614),	-- Seraph's Strike
					},
				}),
				q(949, {	-- The Twilight Camp
					["sourceQuest"] = 944,	-- The Master's Glaive
					["providers"] = {
						{ "i", 5251 },	-- Phial of Scrying
						{ "o", 10076 },	-- Scrying Bowl
					},
					["coord"] = { 38.6, 86.2, MAP.DARKSHORE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 12,
				}),
				q(945, {	-- Therylune's Escape
					["qg"] = 3584,	-- Therylune
					["coord"] = { 38.6, 87.3, MAP.DARKSHORE },
					["maps"] = { MAP.ASHENVALE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 10,
				}),
				q(4761, {	-- Thundris Windweaver
					["sourceQuest"] = 984,	-- How Big a Threat? (1/2)
					["qg"] = 3693,	-- Terenthis
					["coord"] = { 39.4, 43.5, MAP.DARKSHORE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 11,
				}),
				q(958, {	-- Tools of the Highborne
					["qg"] = 3649,	-- Thundris Windweaver
					["coord"] = { 37.4, 40.2, MAP.DARKSHORE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 9,
					["groups"] = {
						objective(1, {	-- 0/7 Highborne Relic
							["provider"] = { "i", 5360 },	-- Highborne Relic
							["crs"] = {
								2176,	-- Cursed Highborne
								2178,	-- Wailing Highborne
								2177,	-- Writhing Highborne
							},
						}),
						i(5612),	-- Ivy Cuffs
					},
				}),
				q(990, {	-- Trek to Ashenvale
					["description"] = "The quest giver appears after turning in Escape Through Stealth. It takes some time until she offers this quest. Maybe 30 to 60 seconds. After a while she runs away again and you have to wait for somebody else to trigger this event, if you missed accepting this quest.",
					["sourceQuests"] = {
						994,	-- Escape Through Force
						995,	-- Escape Through Stealth
					},
					["qg"] = 3694,	-- Sentinel Selarin
					["coord"] = { 39.3, 43.5, MAP.DARKSHORE },
					["maps"] = { MAP.ASHENVALE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 15,
				}),
				q(4740, {	-- WANTED: Murkdeep!
					["provider"] = { "o", 175320 },	-- WANTED: Murkdeep!
					["coord"] = { 37.2, 44.2, MAP.DARKSHORE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 15,
					["groups"] = {
						objective(1, {	-- 0/1 Murkdeep slain
							["provider"] = { "n", 10323 },	-- Murkdeep
							["description"] = "Kill the murlocs at the camp and then a few waves of murlocs before Murkblood and a friend show up.",
							["coord"] = { 35.4, 76.4, MAP.DARKSHORE },
						}),
						i(15404),	-- Breakwater Girdle
						i(15403),	-- Ridgeback Bracers
						i(5315),	-- Timberland Armguards
					},
				}),
				q(3524, {	-- Washed Ashore (1/2)
					["qg"] = 10219,	-- Gwennyth Bly'Leggonde
					["coord"] = { 36.6, 45.6, MAP.DARKSHORE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 11,
					["groups"] = {
						objective(1, {	-- 0/1 Sea Creature Bones
							["providers"] = {
								{ "i",  12242 },	-- Sea Creature Bones
								{ "o", 175207 },	-- Beached Sea Creature
							},
							["coord"] = { 36.4, 50.9, MAP.DARKSHORE },
						}),
					},
				}),
				q(4681, {	-- Washed Ashore (2/2)
					["sourceQuest"] = 3524,	-- Washed Ashore (1/2)
					["qg"] = 10219,	-- Gwennyth Bly'Leggonde
					["coord"] = { 36.6, 45.6, MAP.DARKSHORE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 11,
					["groups"] = {
						objective(1, {	-- 0/1 Sea Turtle Remains
							["providers"] = {
								{ "i",  12289 },	-- Sea Turtle Remains
								{ "o", 176189 },	-- Skeletal Sea Turtle
							},
							["coord"] = { 31.9, 46.3, MAP.DARKSHORE },
						}),
						i(15398),	-- Sandcomber Boots
						i(15399),	-- Dryweed Belt
						i(15400),	-- Clamshell Bracers
					},
				}),
			}),
			n(RARES, {
				n(2186, {	-- Carnivous the Breaker
					["coords"] = {
						{ 39.6, 54.0, MAP.DARKSHORE },
						{ 40.0, 78.4, MAP.DARKSHORE },
						{ 43.2, 86.0, MAP.DARKSHORE },
					},
				}),
				n(2192, {	-- Firecaller Radison
					["coord"] = { 39.0, 86.4, MAP.DARKSHORE },
				}),
				n(7015, {	-- Flagglemurk the Cruel
					["coords"] = {
						{ 37.6, 61.6, MAP.DARKSHORE },
						{ 36.8, 72.0, MAP.DARKSHORE },
					},
				}),
				n(2184, {	-- Lady Moongazer
					["coord"] = { 43.0, 61.2, MAP.DARKSHORE },
				}),
				n(7016, {	-- Lady Vespira
					["coords"] = {
						{ 59.8, 15.6, MAP.DARKSHORE },
						{ 58.0, 18.4, MAP.DARKSHORE },
						{ 58.2, 23.8, MAP.DARKSHORE },
						{ 59.8, 23.6, MAP.DARKSHORE },
						{ 61.6, 23.6, MAP.DARKSHORE },
						{ 61.8, 17.8, MAP.DARKSHORE },
					},
					["groups"] = {
						i(6332),	-- Black Pearl Ring
						i(6333),	-- Spikelash Dagger
					},
				}),
				n(2191, {	-- Licillin
					["coord"] = { 47.0, 38.6, MAP.DARKSHORE },
				}),
				n(7017, {	-- Lord Sinslayer
					["coord"] = { 55.0, 35.4, MAP.DARKSHORE },
				}),
				n(2175, {	-- Shadowclaw
					["coords"] = {
						{ 39.2, 35.4, MAP.DARKSHORE },
						{ 42.2, 38.2, MAP.DARKSHORE },
						{ 40.2, 41.6, MAP.DARKSHORE },
						{ 39.4, 39.6, MAP.DARKSHORE },
					},
				}),
				n(2172, {	-- Strider Clutchmother
					["coords"] = {
						{ 35.0, 86.0, MAP.DARKSHORE },
						{ 34.4, 89.0, MAP.DARKSHORE },
						{ 36.6, 90.2, MAP.DARKSHORE },
						{ 38.2, 89.4, MAP.DARKSHORE },
						{ 41.2, 90.6, MAP.DARKSHORE },
						{ 40.6, 93.0, MAP.DARKSHORE },
						{ 38.8, 93.8, MAP.DARKSHORE },
						{ 37.0, 91.4, MAP.DARKSHORE },
					},
				}),
			}),
			n(TREASURES, {
				o(13359, {	-- Cat Figurine
					["description"] = "Can be found scattered around the Ruins of Mathystra. Rarely spawns a Ghost Saber which can be tamed by a Hunter and can also drop a Glowing Cat Figurine.",
					["coord"] = { 58.9, 21.2, MAP.DARKSHORE },
					["groups"] = {
						i(5332, {	-- Glowing Cat Figurine
							["cr"] = 3619,	-- Ghost Saber
						}),
					},
				}),
			}),
			n(VENDORS, {
				n(4307, {	-- Heldan Galesong <Fisherman>
					["coord"] = { 37.0, 56.4, MAP.DARKSHORE },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(5528),	-- Recipe: Clam Chowder (RECIPE!)
						i(6368),	-- Recipe: Rainbow Fin Albacore (RECIPE!)
						i(6369),	-- Recipe: Rockscale Cod (RECIPE!)
						i(17062),	-- Recipe: Mithril Head Trout (RECIPE!)
					},
				}),
				n(4200, {	-- Laird <Fish Vendor>
					["coord"] = { 36.8, 44.3, MAP.DARKSHORE },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(5485),	-- Recipe: Fillet of Frenzy (RECIPE!)
					},
				}),
				n(4186, {	-- Mavralyn <Leather Armor & Leatherworking Supplies>
					["coord"] = { 37.0, 41.2, MAP.DARKSHORE },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(5786),	-- Pattern: Murloc Scale Belt (RECIPE!)
						i(5787),	-- Pattern: Murloc Scale Breastplate (RECIPE!)
					},
				}),
				n(4189, {	-- Valdaron <Tailoring Supplies>
					["coord"] = { 38.1, 40.6, MAP.DARKSHORE },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(6270),	-- Pattern: Blue Linen Vest (RECIPE!)
						i(5771),	-- Pattern: Red Linen Bag (RECIPE!)
						i(5772),	-- Pattern: Red Woolen Bag (RECIPE!)
					},
				}),
			}),
			n(ZONE_DROPS, {
				i(3173),	-- Bear Meat
				i(5352, {	-- Book: The Powers Below
					["races"] = ALLIANCE_ONLY,
					["crs"] = {
						2339,	-- Twilight Thug
						2338,	-- Twilight Disciple
					},
					["lvl"] = 10,
				}),
				i(5839, {	-- Journal Page
					["cr"] = 3660,	-- Athrikus Narassin <Cult of the Dark Strand>
				}),
				i(5773, {	-- Pattern: Robes of Arcana (RECIPE!)
					["cr"] = 2337,	-- Dark Strand Voidcaller
				}),
				i(5568, {	-- Smooth Pebble
					["crs"] = {
						2156,	-- Cracked Golem
						2157,	-- Stone Behemoth
					},
				}),
			}),
		},
	}),
}));
