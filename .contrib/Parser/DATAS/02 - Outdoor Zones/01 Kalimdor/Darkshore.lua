---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(KALIMDOR, {
	m(DARKSHORE, {
		["lore"] =
			-- #if AFTER CATA
			"Darkshore, a shadowy forest punctuated by waterfalls, is one of the saddest zones in the game. It underwent many changes and heavy losses in the Cataclysm--invasions by the trolls, Twilight Cultist infiltrations in the south, and most notably, the destruction of Auberdine, viewed by many as one of the most atmospheric towns. Alliance players help rescue and comfort dying NPCs, aid the refugees of Auberdine, and assist Malfurion Stormrage in driving back the threat of the cultists.",
			-- #else
			"This rocky area stretches along Kalimdor's north coast. Rains, winds and rocky beaches make the place inhospitable. Old night elf ruins stand crumbling on the cliffs, and murlocs and naga lurk within. The night elf village of Auberdine serves as a friendly trading post.",
			-- #endif
		["icon"] = 236739,
		-- #if AFTER 8.1.0
		["crs"] = { 141489 },	-- Zidormi
		-- #endif
		["groups"] = {
			n(ACHIEVEMENTS, {
				ach(4928, {	-- Darkshore Quests
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					-- #if AFTER 7.3.5
					["_doautomation"] = true,
					-- #else
					["sourceQuests"] = {
						13568,	-- Spirit of the Moonstalker
						13567,	-- Spirit of the Stag
						13597,	-- Spirit of the Thistle Bear
						13515,	-- Ending the Threat
						13588,	-- The Eye of All Storms
						13891,	-- The Devourer of Darkshore
						13546,	-- The Defiler
						13897,	-- The Battle for Darkshore
					},
					-- #endif
				}),
				ach(844),	-- Explore Darkshore
				ach(13251, {	-- In Teldrassil's Shadow
					["timeline"] = { ADDED_8_1_0 },
					["races"] = ALLIANCE_ONLY,
				}),
				ach(5453, {	-- Ghost in the Dark
					["sourceQuest"] = 28529,	-- Writings of the Void
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
			}),
			battlepets({
				["sym"] = {{"select","speciesID",
					378,	-- Rabbit (PET!)
					417,	-- Rat (PET!)
					379,	-- Squirrel (PET!)
				}},
				["groups"] = {
					pet(508, {	-- Darkshore Cub (PET!)
						["description"] = "Can be found in the woods west of the Grove of the Ancients, usually on the treeline just before the beach.",
					}),
					pet(493, {	-- Shimmershell Snail (PET!)
						["description"] = "Can commonly be found on the beaches of Old Darkshore.",
					}),
				},
			}),
			explorationHeader({
				exploration(447),	-- Ameth'Aran
				-- #if BEFORE CATA
				exploration(442),	-- Auberdine
				exploration(446),	-- Bashal'Aran
				exploration(445),	-- Cliffspring Falls
				exploration(456),	-- Cliffspring River
				-- #endif
				exploration(448),	-- Grove of the Ancients
				-- #if AFTER CATA
				exploration(4659),	-- Lor'danel
				exploration(5312),	-- Nazj'vel
				-- #endif
				exploration(450),	-- Remtravel's Excavation
				-- #if AFTER CATA
				exploration(442),	-- Ruins of Auberdine
				-- #endif
				exploration(443),	-- Ruins of Mathystra
				-- #if AFTER CATA
				exploration(4664),	-- Shatterspear Vale
				exploration(4662),	-- Shatterspear War Camp
				exploration(4695),	-- The Eye of the Vortex
				-- #endif
				exploration(449),	-- The Master's Glaive
				-- #if BEFORE CATA
				exploration(444),	-- Tower of Althalaxx
				-- #endif
				-- #if AFTER CATA
				exploration(4675),	-- Withering Thicket
				exploration(454),	-- Wildbend River
				-- #endif
			}),
			n(FLIGHT_PATHS, {
				fp(339, {	-- Grove of the Ancients, Darkshore
					["cr"] = 33253,	-- Delanea <Flight Master>
					["coord"] = { 44.4, 75.5, DARKSHORE },
					["timeline"] = { ADDED_4_0_1 },
					["races"] = ALLIANCE_ONLY,
				}),
				fp(26, {	-- Lor'danel, Darkshore [CATA+] / Auberdine, Darkshore
					["cr"] = 3841,	-- Teldira Moonfeather <Hippogryph Master> [CATA+] / Caylais Moonfeather <Hippogryph Master>
					["coords"] = {
						-- #if AFTER CATA
						{ 51.7, 17.6, DARKSHORE },
						-- #else
						{ 36.4, 45.6, DARKSHORE },
						-- #endif
					},
					["races"] = ALLIANCE_ONLY,
				}),
			}),
			petbattles({
				q(31584, {	-- Got one! (Will)
					["sourceQuest"] = 31832,	-- Level Up!
					["qg"] = 63083,	-- Will Larsons
					["coord"] = { 50.1, 20.2, DARKSHORE },
					["timeline"] = { ADDED_5_0_4 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(31582, {	-- Learning the Ropes (Will)
					["qg"] = 63083,	-- Will Larsons
					["coord"] = { 50.1, 20.2, DARKSHORE },
					["timeline"] = { ADDED_5_0_4 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(31832, {	-- Level Up! (Will)
					["sourceQuest"] = 31583,	-- On The Mend
					["qg"] = 63083,	-- Will Larsons
					["coord"] = { 50.1, 20.2, DARKSHORE },
					["timeline"] = { ADDED_5_0_4 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(31583, {	-- On The Mend (Will)
					["sourceQuest"] = 31582,	-- Learning the Ropes
					["qg"] = 63083,	-- Will Larsons
					["coord"] = { 50.1, 20.2, DARKSHORE },
					["timeline"] = { ADDED_5_0_4 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- Battle Pets Healed
							["provider"] = { "n", 10085 },	-- Jaelysia <Stable Master>
							["coord"] = { 50.4, 19.2, DARKSHORE },
						}),
					},
				}),
			}),
			n(PROFESSIONS, {
				prof(FISHING, {
					i(12238),	-- Darkshore Grouper
				}),
			}),
			n(QUESTS, {
				q(13554, {	-- A Cure In The Dark
					["sourceQuest"] = 13528,	-- Buzzbox 723
					["provider"] = { "o", 194122 },	-- Buzzbox 723
					["coord"] = { 54.2, 29.3, DARKSHORE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/6 Foul Ichor
							["provider"] = { "i", 44966 },	-- Foul Ichor
							["crs"] = {
								33020,	-- Zenn Foulhoof
								33021,	-- Vile Grell
								33022,	-- Vile Corruptor
							},
						}),
						i(52619, {	-- Ichor Stained Vest
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(52631, {	-- Befouled Staff
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(52583, {	-- Rat Hair Vest
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(13564, {	-- A Lost Companion
					["sourceQuests"] = {
						13554,	-- A Cure In The Dark
						13529,	-- The Corruption's Source
					},
					["qg"] = 32960,	-- Volcor
					["coord"] = { 50.9, 18.0, DARKSHORE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(986, {	-- A Lost Master (1/2)
					["sourceQuest"] = 985,	-- How Big a Threat? (2/2)
					["qg"] = 3693,	-- Terenthis
					["coord"] = { 39.4, 43.5, DARKSHORE },
					["timeline"] = { REMOVED_4_0_3 },
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
						i(5387, {	-- Enchanted Moonstalker Cloak
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(993, {	-- A Lost Master (2/2)
					["sourceQuest"] = 986,	-- A Lost Master (1/2)
					["providers"] = {
						{ "n", 3693 },	-- Terenthis
						{ "i", 5387 },	-- Enchanted Moonstalker Cloak
					},
					["coord"] = { 39.4, 43.5, DARKSHORE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 10,
				}),
				q(13563, {	-- A Love Eternal
					["sourceQuests"] = {
						13554,	-- A Cure In The Dark
						13529,	-- The Corruption's Source
					},
					["qg"] = 32959,	-- Cerellean Whiteclaw
					["coord"] = { 50.8, 17.9, DARKSHORE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Anaya Dawnrunner slain
							["provider"] = { "n", 33181 },	-- Anaya Dawnrunner
						}),
						objective(2, {	-- 0/1 Anaya's Pendant
							["provider"] = { "i", 5382 },	-- Anaya's Pendant
							["crs"] = {
								3667,	-- Anaya Dawnrunner
								33181,	-- Anaya Dawnrunner
							},
						}),
						i(52654, {	-- Forlorn Shield
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(52599, {	-- Restless Leggings
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131286, {	-- Legguards of Eternal Longing
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(13910, {	-- A New Home
					["sourceQuest"] = 13909,	-- Got Some Flotsam?
					["qg"] = 34340,	-- Archaeologist Groff
					["coord"] = { 37.6, 82.8, DARKSHORE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(52663, {	-- Groff's Tarpaulin
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(52594, {	-- Hovel Digger Bands
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(13537, {	-- A Taste for Grouper
					["sourceQuests"] = {
						13518,	-- The Last Wave of Survivors
						13522,	-- Threat From the Water
					},
					["qg"] = 33175,	-- Johnathan Staats
					["coord"] = { 52.3, 18.0, DARKSHORE },
					["timeline"] = { ADDED_4_0_3 },
					["requireSkill"] = FISHING,
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(46337, {	-- Staats' Fishing Pole
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(13831, {	-- A Troubling Prescription
					["sourceQuest"] = 13528,	-- Buzzbox 723
					["provider"] = { "o", 194714 },	-- Disgusting Workbench
					["coord"] = { 57.4, 33.8, DARKSHORE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(13542, {	-- Against the Wind
					["qg"] = 3694,	-- Sentinel Selarin
					["coord"] = { 42.5, 45.1, DARKSHORE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(52593, {	-- Becalmed Bracers
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(52617, {	-- Very Tranquil Bracers
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131283, {	-- Serene Breeze Bracers
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(13560, {	-- An Ocean Not So Deep
					["sourceQuest"] = 13569,	-- The Ritual Bond
					["qg"] = 32979,	-- Gorbold Steelhand
					["coord"] = { 51.0, 19.2, DARKSHORE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(52652, {	-- Glowing Murloc Eye
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(52646, {	-- Shipwreck Bow
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(13925, {	-- An Ounce of Prevention
					["sourceQuest"] = 13882,	-- The Seeds of Life
					["qg"] = 34301,	-- Kathrena Winterwisp
					["coord"] = { 45.2, 74.6, DARKSHORE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(13578, {	-- Aroom's Farewell
					["sourceQuest"] = 13577,	-- The Last Wildkin
					["qg"] = 33119,	-- Aroom
					["coord"] = { 45.6, 48.5, DARKSHORE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/8 Slain Wildkin Feather
							["providers"] = {
								{ "i", 44960 },	-- Slain Wildkin Feather
								{ "o", 195007 },	-- Slain Wildkin Feather
							},
						}),
						i(55133, {	-- Wildkin Feather Belt
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(52643, {	-- Wildkin Claw Dagger
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131290, {	-- Wildkin Feathered Links
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(4812, {	-- As Water Cascades
					["sourceQuest"] = 4811,	-- The Red Crystal
					["qg"] = 2930,	-- Sentinel Glynda Nal'Shea
					["coord"] = { 37.7, 43.4, DARKSHORE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 12,
					["groups"] = {
						objective(1, {	-- 0/1 Moonwell Water Tube
							["provider"] = { "i", 14339 },	-- Moonwell Water Tube
							["coord"] = { 37, 43, DARKSHORE },
							["cost"] = {{ "i", 14338, 1 }},	-- Empty Water Tube
						}),
					},
				}),
				q(26408, {	-- Ashes in Ashenvale
					["sourceQuest"] = 13897,	-- The Battle for Darkshore
					["qg"] = 34402,	-- Balren of the Claw
					["coord"] = { 45.3, 75.1, DARKSHORE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
				}),
				q(954, {	-- Bashal'Aran (1/4)
					["qg"] = 3649,	-- Thundris Windweaver
					["coord"] = { 37.4, 40.2, DARKSHORE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 7,
				}),
				q(955, {	-- Bashal'Aran (2/4)
					["sourceQuest"] = 954,	-- Bashal'Aran (1/4)
					["qg"] = 3650,	-- Asterion
					["coord"] = { 44.2, 36.3, DARKSHORE },
					["timeline"] = { REMOVED_4_0_3 },
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
					["coord"] = { 44.2, 36.3, DARKSHORE },
					["timeline"] = { REMOVED_4_0_3 },
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
					["coord"] = { 44.2, 36.3, DARKSHORE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 7,
					["groups"] = {
						objective(1, {	-- 0/1 Destroy the seal at the ancient flame
							["providers"] = {
								{ "i", 5338 },	-- Ancient Moonstone Seal
								{ "o", 16393 },	-- Ancient Flame
							},
							["coord"] = { 42, 61, DARKSHORE },
						}),
						i(7229, {	-- Explorer's Vest
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(5617, {	-- Vagabond Leggings
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(5604, {	-- Elven Wand
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(4723, {	-- Beached Sea Creature (1/4)
					["sourceQuest"] = 4681,	-- Washed Ashore (2/2)
					["providers"] = {
						{ "o", 175233 },	-- Beached Sea Creature
						{ "i",  12242 },	-- Sea Creature Bones
					},
					["coord"] = { 42.0, 31.6, DARKSHORE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 11,
				}),
				q(4728, {	-- Beached Sea Creature (2/4)
					["sourceQuest"] = 4681,	-- Washed Ashore (2/2)
					["providers"] = {
						{ "o", 175226 },	-- Beached Sea Creature
						{ "i",  12242 },	-- Sea Creature Bones
					},
					["coord"] = { 36.0, 70.8, DARKSHORE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 12,
				}),
				q(4730, {	-- Beached Sea Creature (3/4)
					["sourceQuest"] = 4681,	-- Washed Ashore (2/2)
					["providers"] = {
						{ "o", 175227 },	-- Beached Sea Creature
						{ "i",  12242 },	-- Sea Creature Bones
					},
					["coord"] = { 32.7, 80.9, DARKSHORE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 12,
				}),
				q(4733, {	-- Beached Sea Creature (4/4)
					["sourceQuest"] = 4681,	-- Washed Ashore (2/2)
					["providers"] = {
						{ "o", 175230 },	-- Beached Sea Creature
						{ "i",  12242 },	-- Sea Creature Bones
					},
					["coord"] = { 31.2, 87.4, DARKSHORE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 13,
				}),
				q(4722, {	-- Beached Sea Turtle (1/5)
					["sourceQuest"] = 4681,	-- Washed Ashore (2/2)
					["providers"] = {
						{ "o", 176190 },	-- Beached Sea Turtle
						{ "i",  12289 },	-- Sea Turtle Remains
					},
					["coord"] = { 37.2, 62.2, DARKSHORE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 11,
				}),
				q(4725, {	-- Beached Sea Turtle (2/5)
					["sourceQuest"] = 4681,	-- Washed Ashore (2/2)
					["providers"] = {
						{ "o", 176197 },	-- Beached Sea Turtle
						{ "i",  12292 },	-- Strangely Marked Box
					},
					["coord"] = { 44.2, 20.7, DARKSHORE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 12,
				}),
				q(4727, {	-- Beached Sea Turtle (3/5)
					["sourceQuest"] = 4681,	-- Washed Ashore (2/2)
					["providers"] = {
						{ "o", 176196 },	-- Beached Sea Turtle
						{ "i",  12289 },	-- Sea Turtle Remains
					},
					["coord"] = { 53.1, 18.1, DARKSHORE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 12,
				}),
				q(4731, {	-- Beached Sea Turtle (4/5)
					["sourceQuest"] = 4681,	-- Washed Ashore (2/2)
					["providers"] = {
						{ "o", 176198 },	-- Beached Sea Turtle
						{ "i",  12292 },	-- Strangely Marked Box
					},
					["coord"] = { 31.7, 83.7, DARKSHORE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 13,
				}),
				q(4732, {	-- Beached Sea Turtle (5/5)
					["sourceQuest"] = 4681,	-- Washed Ashore (2/2)
					["providers"] = {
						{ "o", 176191 },	-- Beached Sea Turtle
						{ "i",  12289 },	-- Sea Turtle Remains
					},
					["coord"] = { 31.2, 85.6, DARKSHORE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 13,
				}),
				q(13557, {	-- Bearer of Good Fortune
					["provider"] = { "i", 44927 },	-- Corruptor's Master Key
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["crs"] = {
						33022,	-- Vile Corruptor
						33020,	-- Zenn Foulhoof
					},
				}),
				q(53130, {	-- Bloodied Sentinel's Glaive (Alliance)
					["provider"] = { "o", 296536 },	-- Bloodied Sentinel's Glaive
					["coord"] = { 45.2, 18.0, DARKSHORE },
					["timeline"] = { ADDED_8_0_1 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(120, 120, 50),
				}),
				q(53129, {	-- Bloodied Sentinel's Glaive (Horde)
					["provider"] = { "o", 296536 },	-- Bloodied Sentinel's Glaive
					["coord"] = { 45.2, 18.0, DARKSHORE },
					["timeline"] = { ADDED_8_0_1 },
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(120, 120, 50),
				}),
				q(1002, {	-- Buzzbox 323
					["sourceQuest"] = 1001,	-- Buzzbox 411
					["provider"] = { "o", 17183 },	-- Buzzbox 411
					["coord"] = { 42, 28.7, DARKSHORE },
					["timeline"] = { REMOVED_4_0_3 },
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
					["coord"] = { 36.7, 46.3, DARKSHORE },
					["timeline"] = { REMOVED_4_0_3 },
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
				q(13521, {	-- Buzzbox 413
					["sourceQuests"] = {
						13518,	-- The Last Wave of Survivors
						13522,	-- Threat from the Water
					},
					["qg"] = 32977,	-- Wizbang Cranktoggle
					["coord"] = { 51.1, 19.7, DARKSHORE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/4 Corrupted Tide Crawler Flesh
							["provider"] = { "i", 44863 },	-- Corrupted Tide Crawler Flesh
							["cr"] = 32935,	-- Corrupted Tide Crawler
						}),
					},
				}),
				q(1003, {	-- Buzzbox 525
					["sourceQuest"] = 1002,	-- Buzzbox 323
					["provider"] = { "o", 17184 },	-- Buzzbox 323
					["coord"] = { 51.3, 24.6, DARKSHORE },
					["timeline"] = { REMOVED_4_0_3 },
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
						i(2082, {	-- Wizbang's Gunnysack
							["timeline"] = { REMOVED_4_0_3 },
						}),
						-- #if BEFORE 4.0.3
						i(11846, {	-- Wizbang's Special Brew
							["timeline"] = { REMOVED_4_0_3 },
						}),
						-- #endif
					},
				}),
				q(13528, {	-- Buzzbox 723
					["sourceQuest"] = 13527,	-- No Accounting for Taste
					["qg"] = 32977,	-- Wizbang Cranktoggle
					["coord"] = { 51.1, 19.7, DARKSHORE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/6 Corrupted Thistle Bear Guts
							["provider"] = { "i", 44913 },	-- Corrupted Thistle Bear Guts
							["crs"] = {
								33009,	-- Corrupted Thistle Bear
								33905,	-- Corrupted Thistle Bear Matriarch
							},
						}),
					},
				}),
				q(983, {	-- Buzzbox 827
					["qg"] = 3666,	-- Wizbang Cranktoggle
					["coord"] = { 37, 44, DARKSHORE },
					["timeline"] = { REMOVED_4_0_3 },
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
				q(13558, {	-- Call Down the Thunder
					["sourceQuest"] = 13547,	-- Coaxing the Spirits
					["qg"] = 6887,	-- Yalda
					["coord"] = { 39.1, 43.2, DARKSHORE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Use the Aetherion Ritual Orb
							["provider"] = { "o", 194145 },	-- Aetherion Ritual Orb
							["coord"] = { 36.5, 41.0, DARKSHORE },
						}),
						objective(2, {	-- 0/1 Aetherion's Essence
							["provider"] = { "i", 44929 },	-- Aetherion's Essence
							["cr"] = 33041,	-- Aetherion
						}),
						i(52596, {	-- Aetherion Imbued Vest
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(52622, {	-- Auberdine Platemail
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131285, {	-- Auberdine Ringmail Tunic
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(13584, {	-- Calming the Earth
					["sourceQuest"] = 13579,	-- Protector of Ameth'aran
					["qg"] = 33112,	-- Selenn
					["coord"] = { 44.4, 56.7, DARKSHORE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/8 Enraged Earth Elemental slain
							["provider"] = { "n", 33083 },	-- Enraged Earth Elemental
						}),
						i(52620, {	-- Earth-Crusted Breastplate
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(52634, {	-- Earthborn Staff
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(947, {	-- Cave Mushrooms
					["qg"] = 3583,	-- Barithras Moonshade
					["coord"] = { 37.3, 43.6, DARKSHORE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 12,
					["groups"] = {
						objective(1, {	-- 0/5 Scaber Stalk
							["providers"] = {
								{ "i", 5271 },	-- Scaber Stalk
								{ "o", 11714 },	-- Scaber Stalk
							},
							["coord"] = { 55.1, 34.6, DARKSHORE },
						}),
						objective(2, {	-- 0/1 Death Cap
							["providers"] = {
								{ "i", 5270 },	-- Death Cap
								{ "o", 11713 },	-- Death Cap
							},
							["coord"] = { 55.4, 36.4, DARKSHORE },
						}),
						i(5610, {	-- Gustweald Cloak
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(2138, {	-- Cleansing of the Infected
					["sourceQuest"] = 2118,	-- Plagued Lands
					["qg"] = 3701,	-- Tharnariun Treetender
					["coord"] = { 38.8, 43.4, DARKSHORE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 10,
					["groups"] = {
						objective(1, {	-- 0/20 Rabid Thistle Bear slain
							["provider"] = { "n", 2164 },	-- Rabid Thistle Bear
						}),
					},
				}),
				q(13545, {	-- Cleansing the Afflicted
					["sourceQuest"] = 13544,	-- The Bear's Blessing
					["qg"] = 32967,	-- Elder Brolg
					["coord"] = { 43.5, 81.0, DARKSHORE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/7 Blackwood Furbolg Cleansed
							["provider"] = { "n", 33000 },	-- Spirit of Corruption
						}),
					},
				}),
				q(13547, {	-- Coaxing the Spirits
					["qg"] = 6887,	-- Yalda
					["coord"] = { 39.1, 43.2, DARKSHORE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Thundris Windweaver's spirit coaxed
							["provider"] = { "n", 33001 },	-- Thundris Windweaver
							["coord"] = { 39.3, 38.9, DARKSHORE },
						}),
						objective(2, {	-- 0/1 Sentinel Elissa Starbreeze's spirit coaxed
							["provider"] = { "n", 33033 },	-- Sentinel Elissa Starbreeze
							["coord"] = { 41.0, 41.4, DARKSHORE },
						}),
						objective(3, {	-- 0/1 Taldan's spirit coaxed
							["provider"] = { "n", 33035 },	-- Taldan
							["coord"] = { 38.5, 41.9, DARKSHORE },
						}),
						objective(4, {	-- 0/1 Caylais Moonfeather's spirit coaxed
							["provider"] = { "n", 33037 },	-- Caylais Moonfeather
							["coord"] = { 38.1, 44.0, DARKSHORE },
						}),
					},
				}),
				q(13881, {	-- Consumed
					["qg"] = 34301,	-- Kathrena Winterwisp
					["coord"] = { 45.2, 74.6, DARKSHORE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/6 Consumed Thistle Bear slain
							["provider"] = { "n", 34302 },	-- Consumed Thistle Bear
						}),
					},
				}),
				q(6124, {	-- Curing the Sick (A)
					["sourceQuest"] = 6123,	-- Gathering the Cure
					["qg"] = 3702,	-- Alanndarian Nightsong
					["coord"] = { 37.6, 40.6, DARKSHORE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { DRUID },
					["lvl"] = 14,
					["groups"] = {
						objective(1, {	-- 0/10 Sickly Deer cured
							["provider"] = { "i", 15826 },	-- Curative Animal Salve
							["cr"] = 12298,	-- Sickly Deer
						}),
						i(15866, {	-- Veildust Medicine Bag
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(982, {	-- Deep Ocean, Vast Sea
					["qg"] = 6301,	-- Gorbold Steelhand
					["coord"] = { 38.1, 41.2, DARKSHORE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 13,
					["groups"] = {
						objective(1, {	-- 0/1 Silver Dawning's Lockbox
							["providers"] = {
								{ "i",  12191 },	-- Silver Dawning's Lockbox
								{ "o", 175165 },	-- Silver Dawning's Lockbox
							},
							["coord"] = { 38.3, 28.8, DARKSHORE },
						}),
						objective(2, {	-- 0/1 Mist Veil's Lockbox
							["providers"] = {
								{ "i",  12192 },	-- Mist Veil's Lockbox
								{ "o", 175166 },	-- Mist Veil's Lockbox
							},
							["coord"] = { 39.7, 27.4, DARKSHORE },
						}),
						i(15401, {	-- Welldrip Gloves
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(15402, {	-- Noosegrip Gauntlets
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(13507, {	-- Denying Manpower
					["sourceQuests"] = {
						13504,	-- Shatterspear Laborers
						13505,	-- Remnants of the Highborne
					},
					["qg"] = 32965,	-- Sentinel Tysha Moonblade
					["coord"] = { 58.9, 19.4, DARKSHORE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/6 Horde Enforcer slain
							["provider"] = { "n", 32859 },	-- Horde Enforcer
						}),
						objective(2, {	-- 0/6 Shatterspear Mystic slain
							["provider"] = { "n", 34248 },	-- Shatterspear Mystic
						}),
						i(52659, {	-- Cover of Leaves
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(52597, {	-- Tysha's Chestguard
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131278, {	-- Sentinel's Leafbough Chestpiece
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(13591, {	-- Disturbing Connections
					["sourceQuest"] = 13515,	-- Ending the Threat
					["provider"] = { "i", 46318 },	-- Hellscream's Missive
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["cr"] = 32862,	-- Jor'kil the Soulripper
					["groups"] = {
						i(55128, {	-- Silver Embossed Boots
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(55129, {	-- Silver Plated Belt
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(52675, {	-- Silver Embroidered Cloak
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131292, {	-- Silver Inlaid Footguards
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(2178, {	-- Easy Strider Living
					["qg"] = 3702,	-- Alanndarian Nightsong
					["coord"] = { 37.7, 40.7, DARKSHORE },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = {{ "i", 5469, 5 }},	-- Strider Meat
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
					["coord"] = { 37.0, 44.0, DARKSHORE },
					["timeline"] = { REMOVED_4_0_3 },
					["requireSkill"] = FISHING,
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 10,
					["groups"] = {
						objective(1, {	-- 0/12 Electropeller
							["provider"] = { "i", 6718 },	-- Electropeller
							["coords"] = {
								{ 52.0, 28.9, DARKSHORE },
								{ 41.5, 73.4, DARKSHORE },
							},
						}),
						-- #if BEFORE 4.0.3
						i(6811),	-- Aquadynamic Fish Lens
						-- #endif
					},
				}),
				q(13582, {	-- Elune's Fire
					["sourceQuest"] = 13578,	-- Aroom's Farewell
					["qg"] = 33119,	-- Aroom
					["coord"] = { 45.6, 48.5, DARKSHORE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Elune's Torch
							["provider"] = { "i", 46692 },	-- Elune's Torch
							["cr"] = 34385,	-- Horoo the Flamekeeper
						}),
					},
				}),
				q(13515, {	-- Ending the Threat
					["sourceQuest"] = 13590,	-- The Front Line
					["qg"] = 33178,	-- Huntress Sandrya Moonfall
					["coord"] = { 72.3, 19.1, DARKSHORE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Jor'kil the Soulripper slain
							["provider"] = { "n", 32862 },	-- Jor'kil the Soulripper
						}),
					},
				}),
				q(994, {	-- Escape Through Force
					-- #if BEFORE 4.0.3
					["altQuests"] = { 995 },	-- Escape Through Stealth
					["description"] = "This quest becomes unavailable if you complete Escape Through Stealth",
					-- #endif
					["sourceQuest"] = 993,	-- A Lost Master (2/2)
					["qg"] = 3692,	-- Volcor
					["coord"] = { 45.0, 85.4, DARKSHORE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 10,
					["groups"] = {
						i(5609, {	-- Steadfast Cinch
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(995, {	-- Escape Through Stealth
					-- #if BEFORE 4.0.3
					["altQuests"] = { 994 },	-- Escape Through Force
					["description"] = "This quest becomes unavailable if you complete Escape Through Force",
					-- #endif
					["sourceQuest"] = 993,	-- A Lost Master (2/2)
					["qg"] = 3692,	-- Volcor
					["coord"] = { 45.0, 85.4, DARKSHORE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 10,
					["groups"] = {
						i(6659, {	-- Scarab Trousers
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				-- #if AFTER TBC
				q(1132, {	-- Fiora Longears
					["qg"] = 4455,	-- Red Jack Flint
					["coord"] = { 9.9, 57.9, WETLANDS },
					["timeline"] = { REMOVED_3_3_0 },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 18,
				}),
				-- #endif
				q(963, {	-- For Love Eternal
					["qg"] = 3644,	-- Cerellean Whiteclaw
					["coord"] = { 35.8, 43.7, DARKSHORE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 11,
					["groups"] = {
						objective(1, {	-- 0/1 Anaya's Pendant
							["provider"] = { "i", 5382 },	-- Anaya's Pendant
							["coord"] = { 43.2, 59.8, DARKSHORE },
							["cr"] = 3667,	-- Anaya Dawnrunner
						}),
						i(5611, {	-- Tear of Grief
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(1138, {	-- Fruit of the Sea
					["qg"] = 10216,	-- Gubber Blump
					["coord"] = { 36.1, 44.9, DARKSHORE },
					["timeline"] = { REMOVED_4_0_3 },
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
						i(15405, {	-- Shucking Gloves
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(15406, {	-- Crustacean Boots
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(1579, {	-- Gaffer Jacks
					["description"] = 'Requires fishing skill level 30',
					["qg"] = 3666,	-- Wizbang Cranktoggle
					["coord"] = { 37.0, 44.0, DARKSHORE },
					["timeline"] = { REMOVED_4_0_3 },
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
					["coord"] = { 37.6, 40.6, DARKSHORE },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = {{ "i", 2449, 5 }},	-- Earthroot
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
				q(13909, {	-- Got Some Flotsam?
					["sourceQuest"] = 13907,	-- Sweeping Clean the Ruins
					["qg"] = 34340,	-- Archaeologist Groff
					["coord"] = { 37.6, 82.8, DARKSHORE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/5 Salvageable Greymist Wreckage
							["providers"] = {
								{ "i", 46384 },	-- Salvageable Greymist Wreckage
								{ "o", 195042 },	-- Greymist Debris
								{ "o", 195080 },	-- Floating Greymist Debris
							},
						}),
					},
				}),
				q(13599, {	-- Grimclaw's Return
					["sourceQuest"] = 13569,	-- The Ritual Bond
					["qg"] = 33048,	-- Keeper Karithus
					["coord"] = { 43.0, 39.0, DARKSHORE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(2098, {	-- Gyromast's Retrieval
					["qg"] = 6667,	-- Gelkak Gyromast
					["coord"] = { 56.7, 13.5, DARKSHORE },
					["timeline"] = { REMOVED_4_0_3 },
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
					},
				}),
				q(2078, {	-- Gyromast's Revenge
					["sourceQuest"] = 2098,	-- Gyromast's Retrieval
					["qg"] = 6667,	-- Gelkak Gyromast
					["coord"] = { 56.7, 13.5, DARKSHORE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 14,
					["groups"] = {
						objective(1, {	-- 0/1 Gelkak's First Mate slain
							["provider"] = { "n", 6669 },	-- The Threshwackonator 4100 <The First Mate>
							["coord"] = { 55.8, 18.2, DARKSHORE },
							["cost"] = {{ "i", 7442, 1 }},	-- Gyromast's Key
						}),
						-- #if BEFORE 4.0.3
						i(5996),	-- Elixir of Water Breathing
						-- #endif
					},
				}),
				heroscall(q(28490, {	-- Hero's Call: Darkshore! (breadcrumb quest for 13518, not available if 26383, 26385 are completed) (max level 13)
					["timeline"] = { ADDED_4_0_3 },
					["maps"] = { DARNASSUS },	-- Only found in Darnassus in Cataclysm.
					["isBreadcrumb"] = true,
					-- #if BEFORE 7.3.5
					-- Cataclysm: Minimum is level 9. (Confirmed by Hurieve, Crieve's Level 9 Hunter.)
					-- Cataclysm: Maximum is level 18 (TODO: Test max level between 16 and 25)
					["lvl"] = { 9, 18 },
					-- #endif
				})),
				-- #if AFTER TBC
				q(1135, {	-- Highperch Venom
					["qg"] = 4456,	-- Fiora Longears
					["coord"] = { 33.8, 42.4, DARKSHORE },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { THOUSAND_NEEDLES },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 25,
					-- This quest was moved to Darkshore after TBC Prepatch.
					["groups"] = {
						objective(1, {	-- 0/10 Highperch Venom Sac
							["provider"] = { "i", 5809 },	-- Highperch Venom Sac
							["crs"] = {
								5934,	-- Heartrazor
								4109,	-- Highperch Consort
								4110,	-- Highperch Patriarch
								4107,	-- Highperch Wyvern
							},
						}),
						i(6719, {	-- Windborne Belt
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				-- #endif
				q(984, {	-- How Big a Threat? (1/2)
					["qg"] = 3693,	-- Terenthis
					["coord"] = { 39.4, 43.5, DARKSHORE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 10,
				}),
				q(985, {	-- How Big a Threat? (2/2)
					["sourceQuest"] = 984,	-- How Big a Threat? (1/2)
					["qg"] = 3693,	-- Terenthis
					["coord"] = { 39.4, 43.5, DARKSHORE },
					["timeline"] = { REMOVED_4_0_3 },
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
				q(13601, {	-- In Aid of the Refugees
					["sourceQuest"] = 13596,	-- Twilight Plans
					["qg"] = 32912,	-- Sentinel Lendra
					["coord"] = { 50.3, 20.3, DARKSHORE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(13885, {	-- In Defense of Darkshore
					["sourceQuest"] = 13925,	-- An Ounce of Prevention
					["qg"] = 34301,	-- Kathrena Winterwisp
					["coord"] = { 45.2, 74.6, DARKSHORE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(13572, {	-- Jadefire Braziers
					["sourceQuest"] = 13544,	-- The Bear's Blessing
					["qg"] = 32968,	-- Gren Tornfur
					["coord"] = { 43.6, 81.0, DARKSHORE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/8 Jadefire Brazier
							["provider"] = { "o", 194150 },	-- Jadefire Brazier
						}),
						i(52608, {	-- Torn Fur Belt
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(52624, {	-- Fire Stompers
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131289, {	-- Jadefire Squelcher Cord
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				-- #if AFTER TBC
				q(1133, {	-- Journey to Astranaar
					["sourceQuest"] = 1132,	-- Fiora Longears
					["qg"] = 4456,	-- Fiora Longears
					["coord"] = { 33.8, 42.4, DARKSHORE },
					["timeline"] = { REMOVED_3_3_0 },
					["maps"] = { ASHENVALE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 18,
					-- This quest was moved to Darkshore after TBC Prepatch.
				}),
				-- #endif
				q(13892, {	-- Leave No Tracks
					["qg"] = 34402,	-- Balren of the Claw
					["coord"] = { 45.3, 75.1, DARKSHORE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(13940, {	-- Leaving the Dream
					["sourceQuest"] = 13587,	-- The Waking Nightmare
					["qg"] = 33166,	-- Thessera
					["coord"] = { 49.2, 56.9, DARKSHORE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(13573, {	-- Malfurion's Return
					["qg"] = 32987,	-- Corvine Moonrise
					["coord"] = { 42.7, 45.1, DARKSHORE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(951, {	-- Mathystra Relics
					["sourceQuest"] = 950,	-- Return to Onu
					["qg"] = 3616,	-- Onu
					["coord"] = { 43.5, 76.3, DARKSHORE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 12,
					["groups"] = {
						objective(1, {	-- 0/6 Mathystra Relic
							["providers"] = {
								{ "i", 5273 },	-- Mathystra Relic
								{ "o", 13360 },	-- Mathystra Relic
							},
							["coord"] = { 59, 21.8, DARKSHORE },
						}),
						i(5757, {	-- Hardwood Cudgel
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(5615, {	-- Woodsman Sword
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(13902, {	-- Mounting the Offensive
					["sourceQuest"] = 13588,	-- The Eye of All Storms
					["qg"] = 33091,	-- Malfurion Stormrage
					["coord"] = { 43.7, 53.4, DARKSHORE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(13576, {	-- Mutual Aid
					["sourceQuest"] = 13575,	-- The Land is in Their Blood
					["qg"] = 33117,	-- Elder Brownpaw
					["coord"] = { 40.9, 56.5, DARKSHORE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(52656, {	-- Scorched Shield
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(52587, {	-- Singed Boots
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(13953, {	-- Naga In Our Midst
					["sourceQuest"] = 13895,	-- The Slumbering Ancients
					["qg"] = 34498,	-- Darkscale Assassin
					["coord"] = { 45.6, 71.7, DARKSHORE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(13527, {	-- No Accounting for Taste
					["sourceQuest"] = 13521,	-- Buzzbox 413
					["provider"] = { "o", 194105 },	-- Buzzbox 413
					["coord"] = { 53.2, 19.6, DARKSHORE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(13513, {	-- On the Brink
					["sourceQuests"] = {
						13507,	-- Denying Manpower
						13509,	-- War Supplies
					},
					["qg"] = 32966,	-- Balthule Shadowstrike
					["coord"] = { 58.9, 19.5, DARKSHORE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/6 Shatterspear Amulet
							["provider"] = { "i", 44942 },	-- Shatterspear Amulet
							["cr"] = 32860,	-- Shatterspear Shaman
						}),
					},
				}),
				q(13511, {	-- One Bitter Wish
					["sourceQuest"] = 13508,	-- Swift Response
					["qg"] = 33055,	-- Alanndarian Nightsong
					["coord"] = { 63.7, 6.0, DARKSHORE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Rit'ko slain
							["provider"] = { "n", 32970 },	-- Rit'ko
						}),
					},
				}),
				q(5713, {	-- One Shot. One Kill.
					["qg"] = 11711,	-- Sentinel Aynasha
					["coords"] = {
						-- #if AFTER CATA
						{ 47.7, 88.9, DARKSHORE },
						-- #else
						{ 45.9, 90.3, DARKSHORE },
						-- #endif
					},
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(10, 10, 5),
				}),
				q(948, {	-- Onu
					["sourceQuest"] = 947,	-- Cave Mushrooms
					["qg"] = 3583,	-- Barithras Moonshade
					["coord"] = { 37.3, 43.7, DARKSHORE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 12,
				}),
				q(960, {	-- Onu is meditating
					["description"] = "To complete this quest you must return to Onu after you complete The Master's Glaive, but before you turn in The Twilight Camp.",
					["sourceQuest"] = 944,	-- The Master's Glaive
					["qg"] = 3616,	-- Onu
					["coord"] = { 43.5, 76.3, DARKSHORE },
					["timeline"] = { REMOVED_4_0_3 },
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
					["coord"] = { 43.5, 76.3, DARKSHORE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					["groups"] = {
						i(5251),	-- Phial of Scrying
					},
				}),
				q(10752, {	-- Onward to Ashenvale
					["qg"] = 3649,	-- Thundris Windweaver
					["coord"] = { 37.4, 40.2, DARKSHORE },
					["timeline"] = { ADDED_2_0_3, REMOVED_4_0_3 },
					["maps"] = { ASHENVALE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 18,
				}),
				q(2118, {	-- Plagued Lands
					["qg"] = 3701,	-- Tharnariun Treetender
					["coord"] = { 38.8, 43.4, DARKSHORE },
					["timeline"] = { REMOVED_4_0_3 },
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
				q(13523, {	-- Power Over the Tides
					["qg"] = 32932,	-- Moon Priestess Tharill
					["coord"] = { 44.6, 30.8, DARKSHORE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/6 Tidal Spirit Soothed
							["provider"] = { "n", 32937 },	-- Tranquil Tidal Spirit
						}),
						i(55127, {	-- Tharill's Blessing
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(52662, {	-- Tidal Cloak
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131281, {	-- Tharill's Boon
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(13579, {	-- Protector of Ameth'Aran
					["qg"] = 33091,	-- Malfurion Stormrage
					["coord"] = { 43.7, 53.4, DARKSHORE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(13506, {	-- Reason to Worry
					["sourceQuest"] = 13589,	-- The Shatterspear Invaders
					["provider"] = { "i", 44979 },	-- Overseer's Orders
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["crs"] = { 32863 },	-- Shatterspear Overseer
				}),
				q(13570, {	-- Remembrance of Auberdine
					["sourceQuest"] = 13591,	-- Disturbing Connections
					["qg"] = 32959,	-- Cerellean Whiteclaw
					["coord"] = { 50.1, 19.5, DARKSHORE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(52645, {	-- Whiteclaw Dagger
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(52641, {	-- Cerellean's Dagger
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(55132, {	-- Darkshore Bow
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(156966, {	-- Cerellean's Spellsword
							["timeline"] = { ADDED_7_3_5 },
						}),
						i(46325, {	-- Withers (PET!)
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(13505, {	-- Remnants of the Highborne
					["sourceQuest"] = 13589,	-- The Shatterspear Invaders
					["qg"] = 32966,	-- Balthule Shadowstrike
					["coord"] = { 58.9, 19.5, DARKSHORE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/8 Highborne Relic
							["providers"] = {
								{ "i", 44830 },	-- Highborne Relic
								{ "o", 194088 },	-- Highborne Relic
								{ "o", 194089 },	-- Highborne Relic
								{ "o", 194090 },	-- Highborne Relic
							},
						}),
					},
				}),
				-- #if BEFORE CATA
				q(6343, {	-- Return to Nessa / Return to Nyoma [CATA+]
					["sourceQuest"] = 6342,	-- Flight to Auberdine
					["providers"] = {
						{ "n", 4200 },	-- Laird
						{ "i", 16263 },	-- Laird's Response
					},
					["coord"] = { 36.8, 44.2, DARKSHORE },
					["races"] = { NIGHTELF },
					["lvl"] = 10,
				}),
				-- #endif
				q(950, {	-- Return to Onu
					["sourceQuest"] = 949,	-- The Twilight Camp
					["providers"] = {
						{ "o", 12666 },	-- Twilight Tome
						{ "i", 5272 },	-- Insane Scribbles
					},
					["coord"] = { 38.7, 86.1, DARKSHORE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 12,
				}),
				q(13566, {	-- Ritual Materials
					["sourceQuest"] = 13564,	-- A Lost Companion
					["qg"] = 33048,	-- Keeper Karithus
					["coord"] = { 43.0, 39.0, DARKSHORE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(13504, {	-- Shatterspear Laborers
					["sourceQuest"] = 13589,	-- The Shatterspear Invaders
					["qg"] = 32965,	-- Sentinel Tysha Moonblade
					["coord"] = { 58.9, 19.4, DARKSHORE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/10 Shatterspear Laborer slain
							["provider"] = { "n", 32861 },	-- Shatterspear Laborer
						}),
					},
				}),
				q(13561, {	-- Solace for the Highborne
					["qg"] = 33177,	-- Arya Autumnlight
					["coord"] = { 46.8, 33.3, DARKSHORE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/6 Cursed Highborne slain
							["provider"] = { "n", 33179 },	-- Cursed Highborne
						}),
						objective(2, {	-- 0/6 Writhing Highborne slain
							["provider"] = { "n", 33180 },	-- Writhing Highborne
						}),
					},
				}),
				q(13893, {	-- Soggoth and Kronn
					["sourceQuest"] = 13896,	-- Unearthed Knowledge
					["qg"] = 34340,	-- Archaeologist Groff
					["coord"] = { 37.6, 82.8, DARKSHORE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(13580, {	-- Soothing the Elements
					["sourceQuest"] = 13576,	-- Mutual Aid
					["qg"] = 33117,	-- Elder Brownpaw
					["coord"] = { 40.9, 56.5, DARKSHORE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(52598, {	-- Soothsaying Vest
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(55134, {	-- Fiery Bracers
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131291, {	-- Soothsayer's Harness
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(13568, {	-- Spirit of the Moonstalker
					["description"] = "Great Moonstalker Spirit grants a buff increasing your haste by 10%.\nChoose carefuly, you can get only 1 buff.",
					["sourceQuests"] = {
						13566,	-- Ritual Materials
						13565,	-- Twice Removed
						13598,	-- Unsavory Remedies
					},
					["altQuests"] = {
						13567,	-- Spirit of the Stag
						13597,	-- Spirit of the Thistle Bear
					},
					["qg"] = 33131,	-- Great Moonstalker Spirit
					["coord"] = { 42.8, 40.2, DARKSHORE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["DisablePartySync"] = true,	-- cannot be completed with altQuests... they unflag due to the buff
				}),
				q(13567, {	-- Spirit of the Stag
					["description"] = "Great Stag Spirit grants a buff increasing your movement speed by 10%.\nChoose carefuly, you can get only 1 buff.",
					["sourceQuests"] = {
						13566,	-- Ritual Materials
						13565,	-- Twice Removed
						13598,	-- Unsavory Remedies
					},
					["altQuests"] = {
						13568,	-- Spirit of the Moonstalker
						13597,	-- Spirit of the Thistle Bear
					},
					["qg"] = 33133,	-- Great Stag Spirit
					["coord"] = { 43.7, 40.2, DARKSHORE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["DisablePartySync"] = true,	-- cannot be completed with altQuests... they unflag due to the buff
				}),
				q(13597, {	-- Spirit of the Thistle Bear
					["description"] = "Great Thistle Bear Spirit grants a buff reducing the damage you take by 10%.\nChoose carefuly, you can get only 1 buff.",
					["sourceQuests"] = {
						13566,	-- Ritual Materials
						13565,	-- Twice Removed
						13598,	-- Unsavory Remedies
					},
					["altQuests"] = {
						13568,	-- Spirit of the Moonstalker
						13567,	-- Spirit of the Stag
					},
					["qg"] = 33132,	-- Great Thistle Bear Spirit
					["coord"] = { 42.5, 38.6, DARKSHORE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["DisablePartySync"] = true,	-- cannot be completed with altQuests... they unflag due to the buff
				}),
				q(13948, {	-- Stepping Up Surveillance
					["sourceQuest"] = 13892,	-- Leave No Tracks
					["coord"] = { 40.5, 84.2, DARKSHORE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(13512, {	-- Strategic Strikes
					["sourceQuests"] = {
						13507,	-- Denying Manpower
						13509,	-- War Supplies
					},
					["qg"] = 32963,	-- Lieutenant Morra Starbreeze
					["coord"] = { 58.9, 19.4, DARKSHORE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Lorenth Thundercall slain
							["provider"] = { "n", 32868 },	-- Lorenth Thundercall
						}),
						objective(2, {	-- 0/1 Sheya Stormweaver slain
							["provider"] = { "n", 32869 },	-- Sheya Stormweaver
						}),
						i(52650, {	-- Dryad's Wand
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(13912, {	-- Swamped Secrets
					["qg"] = 34342,	-- Jr. Archaeologist Ferd
					["coord"] = { 37.7, 82.9, DARKSHORE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Mud-Crusted Ancient Disc
							["providers"] = {
								{ "i", 46386 },	-- Mud-Crusted Ancient Disc
								{ "o", 195054 },	-- Mud-Crusted Ancient Disc
							},
						}),
					},
				}),
				q(13907, {	-- Sweeping Clean the Ruins
					["qg"] = 34340,	-- Archaeologist Groff
					["coord"] = { 37.6, 82.8, DARKSHORE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/10 Murloc Squatters Killed
							["providers"] = {
								{ "n", 2207},	-- Greymist Oracle
								{ "n", 34339},	-- Greymist Refugee
							},
						}),
					},
				}),
				q(13508, {	-- Swift Response
					["sourceQuest"] = 13506,	-- Reason to Worry
					["qg"] = 32963,	-- Lieutenant Morra Starbreeze
					["coord"] = { 58.9, 19.4, DARKSHORE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(13585, {	-- Sworn to Protect
					["sourceQuest"] = 13584,	-- Calming the Earth
					["qg"] = 33112,	-- Selenn
					["coord"] = { 44.4, 56.7, DARKSHORE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(2139, {	-- Tharnariun's Hope
					["sourceQuest"] = 2138,	-- Cleansing of the Infected
					["qg"] = 3701,	-- Tharnariun Treetender
					["coord"] = { 38.8, 43.4, DARKSHORE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 10,
					["groups"] = {
						objective(1, {	-- 0/1 Den Mother slain
							["provider"] = { "n", 6788 },	-- Den Mother
							["coord"] = { 51.4, 38, DARKSHORE },
						}),
						i(7738, {	-- Evergreen Gloves
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(7739, {	-- Timberland Cape
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(13911, {	-- The Absent-Minded Prospector
					["qg"] = 34343,	-- Prospector Remtravel
					["coord"] = { 37.7, 82.9, DARKSHORE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(52592, {	-- Woolgathering Gloves
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(52600, {	-- Oblivious Leggings
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131318, {	-- Absentminded Legguards
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(52671, {	-- Bahrum's Bad Mood Ring
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(729, {	-- The Absent Minded Prospector (1/5)
					["sourceQuest"] = 730,	-- Trouble in Darkshore?
					["qg"] = 2913,	-- Archaeologist Hollee
					["coord"] = { 37.4, 41.8, DARKSHORE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 15,
				}),
				q(731, {	-- The Absent Minded Prospector (2/5)
					["sourceQuest"] = 729,	-- The Absent Minded Prospector (1/5)
					["qg"] = 2917,	-- Prospector Remtravel
					["coord"] = { 35.7, 83.7, DARKSHORE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 15,
				}),
				q(741, {	-- The Absent Minded Prospector (3/5)
					["sourceQuest"] = 731,	-- The Absent Minded Prospector (2/5)
					["providers"] = {
						{ "n", 2913 },	-- Archaeologist Hollee
						{ "i", 4654 },	-- Mysterious Fossil
					},
					["coord"] = { 37.4, 41.8, DARKSHORE },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { DARNASSUS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 15,
					["groups"] = {
						i(5629, {	-- Hammerfist Gloves
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(5630, {	-- Windfelt Gloves
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(11936, {	-- Relic Hunter Belt
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(13514, {	-- The Ancients' Ire
					["sourceQuests"] = {
						13513,	-- On the Brink
						13512,	-- Strategic Strikes
					},
					["qg"] = 33176,	-- Kerlonian Evershade
					["coord"] = { 69.1, 19.2, DARKSHORE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/30 Shatterspear Vale Trolls killed
							["providers"] = {
								{ "n", 32858},	-- Shatterspear Champion
								{ "n", 32855},	-- Shatterspear Priestess
								{ "n", 33071},	-- Shatterspear Raider
							},
						}),
					},
				}),
				q(13897, {	-- The Battle for Darkshore
					["description"] = "If you don't pick this quest up promptly after the event ends, Malfurion will despawn and you will have to repeat the event to get the quest.",
					["sourceQuest"] = 13900,	-- The Offering to Azshara
					["qg"] = 34422,	-- Malfurion Stormrage
					["coord"] = { 32.8, 84.3, DARKSHORE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Avatar of Soggoth slain
							["provider"] = { "n", 34485 },	-- Avatar of Soggoth
						}),
						i(52616, {	-- Bracers of the Ancient Grove
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(52655, {	-- Darkshore Warder's Shield
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131316, {	-- Armguards of the Ancient Grove
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(13544, {	-- The Bear's Blessing
					["sourceQuest"] = 13526,	-- The Bear's Paw
					["qg"] = 32967,	-- Elder Brolg
					["coord"] = { 43.5, 81.0, DARKSHORE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(13526, {	-- The Bear's Paw
					["sourceQuest"] = 13525,	-- What's Happening to the Blackwood Furbolg?
					["qg"] = 32967,	-- Elder Brolg
					["coord"] = { 43.5, 81.0, DARKSHORE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/8 Bear's Paw
							["providers"] = {
								{ "i", 44850 },	-- Bear's Paw
								{ "o", 194100 },	-- Bear's Paw
							},
						}),
					},
				}),
				q(4763, {	-- The Blackwood Corrupted
					["qg"] = 3649,	-- Thundris Windweaver
					["coord"] = { 37.4, 40.2, DARKSHORE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 15,
					["groups"] = {
						objective(1, {	-- Talisman of Corruption
							["providers"] = {
								{ "i",  12355 },	-- Talisman of Corruption
								{ "o", 177624 },	-- Xabraxxis' Demon Bag
							},
							["coords"] = {
								{ 52.30, 33.39, DARKSHORE },
								{ 52.5, 33.5, DARKSHORE },
							},
							["cost"] = {
								{ "i", 12347, 1 },	-- Filled Cleansing Bowl
								{ "i", 12341, 1 },	-- Blackwood Fruit Sample
								{ "i", 12342, 1 },	-- Blackwood Grain Sample
								{ "i", 12343, 1 },	-- Blackwood Nut Sample
							},
							["cr"] = 10373,	-- Xabraxxis
						}),
						-- #if BEFORE 4.0.3
						i(12347, {	-- Filled Cleansing Bowl
							["provider"] = { "i", 12346 },	-- Empty Cleansing Bowl
							["coord"] = { 37.76, 44.02, DARKSHORE },
						}),
						i(12341, {	-- Blackwood Fruit Sample
							["provider"] = { "o", 175330 },	-- Blackwood Fruit Stores
							["coord"] = { 52.91, 33.38, DARKSHORE },
						}),
						i(12342, {	-- Blackwood Grain Sample
							["provider"] = { "o", 175331 },	-- Blackwood Grain Stores
							["coord"] = { 50.63, 35.05, DARKSHORE },
						}),
						i(12343, {	-- Blackwood Nut Sample
							["provider"] = { "o", 175329 },	-- Blackwood Nut Stores
							["coord"] = { 51.81, 33.43, DARKSHORE },
						}),
						-- #endif
						i(15204, {	-- Moonstone Wand
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(15202, {	-- Wildkeeper Leggings
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(15203, {	-- Guststorm Legguards
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(13581, {	-- The Blackwood Pledge
					["sourceQuest"] = 13580,	-- Soothing the Elements
					["qg"] = 33117,	-- Elder Brownpaw
					["coord"] = { 40.9, 56.5, DARKSHORE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(13520, {	-- The Boon of the Seas
					["sourceQuests"] = {
						13518,	-- The Last Wave of Survivors
						13522,	-- Threat from the Water
					},
					["qg"] = 32972,	-- Serendia Oakwhisper
					["coord"] = { 51.8, 18.1, DARKSHORE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/16 Encrusted Clam Muscle
							["providers"] = {
								{ "i", 44864 },	-- Encrusted Clam Muscle
								{ "o", 194107 },	-- Encrusted Clam
							},
						}),
						i(131823, {	-- Diver's Waistband
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(52609, {	-- Diver's Cord
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(4762, {	-- The Cliffspring River
					["sourceQuest"] = 4761,	-- Thundris Windweaver
					["qg"] = 3649,	-- Thundris Windweaver
					["coord"] = { 37.4, 40.2, DARKSHORE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 11,
					["groups"] = {
						objective(1, {	-- 0/1 Cliffspring River Sample
							["provider"] = { "i", 12349 },	-- Cliffspring River Sample
							["coord"] = { 50.76, 25.56, DARKSHORE },
							["cost"] = {{ "i", 12350, 1 }},	-- Empty Sampling Tube
						}),
					},
				}),
				q(13529, {	-- The Corruption's Source
					["sourceQuest"] = 13528,	-- Buzzbox 723
					["qg"] = 32978,	-- Tharnarium Treetender
					["coord"] = { 56.8, 30.1, DARKSHORE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Zenn Foulhoof slain
							["provider"] = { "n", 33020 },	-- Zenn Foulhoof
							["coord"] = { 58.3, 33.0, DARKSHORE },
						}),
						objective(2, {	-- 0/8 Vile Grell slain
							["provider"] = { "n", 33021 },	-- Vile Grell
						}),
						i(52595, {	-- Goat Hide Vest
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(52621, {	-- Woven Plate Leggings
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(52633, {	-- Satyr Horn Staff
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131282, {	-- Treetender Tunic
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(13899, {	-- The Darkscale Warlord
					["sourceQuest"] = 13953,	-- Naga in Our Midst
					["qg"] = 34402,	-- Balren of the Claw
					["coord"] = { 45.3, 75.1, DARKSHORE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(13546, {	-- The Defiler
					["sourceQuest"] = 13545,	-- Cleansing the Afflicted
					["qg"] = 32967,	-- Elder Brolg
					["coord"] = { 43.5, 81.0, DARKSHORE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Sharax the Defiler slain
							["provider"] = { "n", 32996 },	-- Sharax the Defiler
						}),
						i(52606, {	-- Blackwood Boots
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(52647, {	-- Blackwood Hunter's Bow
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(52651, {	-- Blackwood Ritual Stick
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131284, {	-- Blackwood Treads
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(13891, {	-- The Devourer of Darkshore
					["sourceQuest"] = 13885,	-- In Defense of Darkshore
					["qg"] = 34301,	-- Kathrena Winterwisp
					["coord"] = { 45.1, 74.6, DARKSHORE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Devouring Artifact Destroyed
							["provider"] = { "n", 34331 },	-- Yoth'al the Devourer
						}),
						i(52618, {	-- Ancient Cuffs
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(52660, {	-- Incorruptable Shawl
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(52628, {	-- Ancient Handguards
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131315, {	-- Ancient Armbands
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(13586, {	-- The Emerald Dream
					["sourceQuests"] = {
						13585,	-- Sworn to Protect
						13581,	-- The Blackwood Pledge
						13583,	-- The Wildkin's Oath
					},
					["qg"] = 33091,	-- Malfurion Stormrage
					["coord"] = { 43.7, 53.4, DARKSHORE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(13588, {	-- The Eye of All Storms
					["sourceQuest"] = 13940,	-- Leaving the Dream
					["qg"] = 33091,	-- Malfurion Stormrage
					["coord"] = { 43.7, 53.4, DARKSHORE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Twilight Portal slain
							["provider"] = { "n", 34316 },	-- Twilight Portal
						}),
						objective(2, {	-- 0/12 Twilight Rider slain
							["provider"] = { "n", 34282 },	-- Twilight Rider
						}),
						i(52636, {	-- Portal Closer's Hammer
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(52584, {	-- Emerald Vest
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(953, {	-- The Fall of Ameth'Aran
					["qg"] = 3639,	-- Sentinel Tysha Moonblade
					["coord"] = { 40.3, 59.7, DARKSHORE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 9,
					["groups"] = {
						objective(1, {	-- Read the Lay of Ameth'Aran
							["provider"] = { "o", 17188 },	-- The Lay of Ameth'Aran
							["coord"] = { 43.3, 58.7, DARKSHORE },
						}),
						objective(2, {	-- Read the Fall of Ameth'Aran
							["provider"] = { "o", 17189 },	-- The Fall of Ameth'Aran
							["coord"] = { 42.7, 63.1, DARKSHORE },
						}),
					},
				}),
				q(1141, {	-- The Family and the Fishing Pole
					-- #if BEFORE 4.0.3
					["description"] = "Talk to Gubber Blump after accepting the quest to learn Fishing. Buy a Fishing Pole for 23c and a Shiny Bauble for 50c from Gubber Blump. Start fishing next to Gubber Blump to catch the fish required for the quest.",
					-- #endif
					["qg"] = 10216,	-- Gubber Blump
					["coord"] = { 36.1, 44.9, DARKSHORE },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = {{ "i", 12238, 6 }},	-- Darkshore Grouper
					["requireSkill"] = FISHING,
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 10,
					["groups"] = {
						i(12225, {	-- Blump Family Fishing Pole
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(13562, {	-- The Final Flame of Bashal'Aran
					["description"] = "Ranger Glynda Nal'Shea patrols around Lor'danel.",
					["sourceQuest"] = 13529,	-- The Corruption's Source
					["qg"] = 32971,	-- Ranger Glynda Nal'Shea (mobileNPC)
					["coords"] = {
						{ 50.1, 20.9, DARKSHORE },
						{ 50.4, 19.8, DARKSHORE },
						{ 50.3, 18.7, DARKSHORE },
						{ 50.8, 20.4, DARKSHORE },
						{ 50.8, 18.3, DARKSHORE },
						{ 51.6, 18.7, DARKSHORE },
						{ 51.7, 19.2, DARKSHORE },
					},
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(4813, {	-- The Fragments Within
					["sourceQuest"] = 4812,	-- As Water Cascades
					["provider"] = { "o", 175524 },	-- Mysterious Red Crystal
					["coord"] = { 47.3, 48.7, DARKSHORE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 12,
					["groups"] = {
						i(15335, {	-- Briarsteel Shortsword
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(15396, {	-- Curvewood Dagger
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(15397, {	-- Oakthrush Staff
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(13590, {	-- The Front Line
					["sourceQuests"] = {
						13513,	-- On the Brink
						13512,	-- Strategic Strikes
					},
					["qg"] = 32963,	-- Lieutenant Morra Starbreeze
					["coord"] = { 58.9, 19.4, DARKSHORE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(13575, {	-- The Land Is in Their Blood
					["qg"] = 33091,	-- Malfurion Stormrage
					["coord"] = { 43.7, 53.4, DARKSHORE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(13605, {	-- The Last Refugee
					["qg"] = 33232,	-- Archaeologist Hollee
					["coord"] = { 38.6, 42.4, DARKSHORE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(52586, {	-- Archaeologist's Dungarees
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(52632, {	-- Digging Staff
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(52602, {	-- Archaeologist's Britches
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131293, {	-- Archaeologist's Leggings
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(13518, {	-- The Last Wave of Survivors
					["sourceQuests"] = {
						28490,	-- Hero's Call: Darkshore!
						26383,	-- Breaking Waves of Change [NON-WORGEN]
						26385,	-- Breaking Waves of Change [WORGEN]
					},
					["qg"] = 32973,	-- Dentaria Silverglade
					["coord"] = { 51.8, 18.0, DARKSHORE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Cerellean Whiteclaw rescued
							["provider"] = { "n", 33093 },	-- Cerellean Whiteclaw
							["coord"] = { 44.6, 19.9, DARKSHORE },
						}),
						objective(2, {	-- 0/1 Gershala Nightwhisper rescued
							["provider"] = { "n", 32911 },	-- Gershala Nightwhisper
							["coord"] = { 44.1, 17.8, DARKSHORE },
						}),
						objective(3, {	-- 0/1 Shaldyn rescued
							["provider"] = { "n", 33095 },	-- Shaldyn
							["coord"] = { 42.9, 21.5, DARKSHORE },
						}),
						objective(4, {	-- 0/1 Volcor rescued
							["provider"] = { "n", 33094 },	-- Volcor
							["coord"] = { 45.0, 18.2, DARKSHORE },
						}),
					},
				}),
				q(13577, {	-- The Last Wildkin
					["qg"] = 33091,	-- Malfurion Stormrage
					["coord"] = { 43.7, 53.4, DARKSHORE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(13844, {	-- The Looting of Althalaxx
					["sourceQuests"] = {
						13507,	-- Denying Manpower
						13509,	-- War Supplies
					},
					["qg"] = 34041,	-- Mathas Wildwood
					["coord"] = { 59.1, 19.6, DARKSHORE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Teegan Holloway slain
							["provider"] = { "n", 34033 },	-- Teegan Holloway
						}),
						objective(2, {	-- 0/1 Narassin's Tome
							["providers"] = {
								{ "i", 45944 },	-- Narassin's Tome
								{ "o", 194787 },	-- Charred Book
							},
							["coord"] = { 58.3, 24.0, DARKSHORE },
						}),
						i(52623, {	-- Wild Bark Boots
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(52607, {	-- Forsaken Belt
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(52591, {	-- Narassin's Gloves
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131305, {	-- Wildwood Chain Links
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(944, {	-- The Master's Glaive
					["sourceQuest"] = 948,	-- Onu
					["providers"] = {
						{ "n", 3616 },	-- Onu
						{ "i", 5251 },	-- Phial of Scrying
						{ "o", 10076 },	-- Scrying Bowl
					},
					["coord"] = { 43.5, 76.3, DARKSHORE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 12,
				}),
				q(13900, {	-- The Offering to Azshara
					["sourceQuest"] = 13899,	-- The Darkscale Warlord
					["qg"] = 34423,	-- Warlord Wrathspine
					["coord"] = { 32.3, 85.4, DARKSHORE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(52588, {	-- Ritual Stopper's Slippers
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(52610, {	-- Strap of the Ancient Horn
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(52630, {	-- Horn Sounder's Bracers
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131317, {	-- Cord of the Ancient Horn
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(55135, {	-- Tia's Ring
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(968, {	-- The Powers Below
					["provider"] = { "i", 5352 },	-- Book: The Powers Below
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					["crs"] = {
						2339,	-- Twilight Thug
						2338,	-- Twilight Disciple
					},
					["lvl"] = 10,
				}),
				q(4811, {	-- The Red Crystal
					["qg"] = 2930,	-- Sentinel Glynda Nal'Shea
					["coord"] = { 37.7, 43.4, DARKSHORE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 12,
				}),
				q(13569, {	-- The Ritual Bond
					["sourceQuests"] = {
						13566,	-- Ritual Materials
						13565,	-- Twice Removed
						13598,	-- Unsavory Remedies
					},
					["qg"] = 33048,	-- Keeper Karithus
					["coord"] = { 43.0, 39.0, DARKSHORE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(52615, {	-- Moonstalker Bracers
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(55126, {	-- Thistle Bear Girdle
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(52664, {	-- Cloak of the Stag
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131288, {	-- Moonstalker Wristwraps
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(13882, {	-- The Seeds of Life
					["sourceQuest"] = 13881,	-- Consumed
					["qg"] = 34301,	-- Kathrena Winterwisp
					["coord"] = { 45.2, 74.6, DARKSHORE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Seed of the Earth
							["providers"] = {
								{ "i", 46354 },	-- Seed of the Earth
								{ "n", 33072 },	-- Onu
							},
						}),
						objective(2, {	-- 0/1 Seed of the Sea
							["providers"] = {
								{ "i", 46356 },	-- Seed of the Sea
								{ "o", 195021 },	-- Glittering Shell
							},
						}),
						objective(3, {	-- 0/1 Seed of the Sky
							["providers"] = {
								{ "i", 46355 },	-- Seed of the Sky
								{ "n", 34306 },	-- Darkshore Wisp
							},
						}),
						i(52590, {	-- Wisp-Chaser Cord
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(52612, {	-- Planter's Gloves
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131311, {	-- Seedhandler's Soft Grips
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(13589, {	-- The Shatterspear Invaders
					["description"] = "Ranger Glynda Nal'Shea patrols around Lor'danel.",
					["sourceQuest"] = 13569,	-- The Ritual Bond
					["qg"] = 32971,	-- Ranger Glynda Nal'Shea (mobileNPC)
					["coords"] = {
						{ 50.1, 20.9, DARKSHORE },
						{ 50.4, 19.8, DARKSHORE },
						{ 50.3, 18.7, DARKSHORE },
						{ 50.8, 20.4, DARKSHORE },
						{ 50.8, 18.3, DARKSHORE },
						{ 51.6, 18.7, DARKSHORE },
						{ 51.7, 19.2, DARKSHORE },
					},
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(5321, {	-- The Sleeper Has Awakened
					["qg"] = 11218,	-- Kerlonian Evershade
					["coord"] = { 44.4, 76.4, DARKSHORE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 17,
					["groups"] = {
						objective(1, {	-- Escort Kerlonian Evershade to Maestra's Post
							["providers"] = {
								{ "i",  13536 },	-- Horn of Awakening
								{ "o", 176634 },	-- Kerlonian's Chest
							},
							["coord"] = { 44.4, 76.4, DARKSHORE },
						}),
						i(15205, {	-- Owlsight Rifle
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(15206, {	-- Jadefinger Baton
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(15207, {	-- Steelcap Shield
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(13895, {	-- The Slumbering Ancients
					["sourceQuest"] = 13893,	-- Soggoth and Kronn
					["qg"] = 33072,	-- Onu
					["coord"] = { 45.4, 74.9, DARKSHORE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(13898, {	-- The Tides Turn Against Us
					["sourceQuest"] = 13953,	-- Naga in Our Midst
					["qg"] = 34403,	-- Felros
					["coord"] = { 45.3, 75.1, DARKSHORE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/8 Darkscale Myrmidon slain
							["provider"] = { "n", 33079 },	-- Darkscale Myrmidon
						}),
						i(52644, {	-- Scaling Knife
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(52640, {	-- Grove Keeper's Branch
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(52673, {	-- Felros' Signet
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(13918, {	-- The Titans' Terminal
					["sourceQuest"] = 13912,	-- Swamped Secrets
					["qg"] = 34342,	-- Jr. Archaeologist Ferd
					["coord"] = { 37.7, 82.9, DARKSHORE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(52653, {	-- Unidentified Cooking Utensil
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(52657, {	-- Professor's Sandwich Plate
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(965, {	-- The Tower of Althalaxx (1/9)
					["qg"] = 3657,	-- Sentinel Elissa Starbreeze
					["coord"] = { 39.0, 43.6, DARKSHORE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 13,
				}),
				q(966, {	-- The Tower of Althalaxx (2/9)
					["sourceQuest"] = 965,	-- The Tower of Althalaxx (1/9)
					["qg"] = 3661,	-- Balthule Shadowstrike
					["coord"] = { 55.0, 24.9, DARKSHORE },
					["timeline"] = { REMOVED_4_0_3 },
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
					["coord"] = { 55.0, 24.9, DARKSHORE },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { ASHENVALE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 13,
				}),
				q(1143, {	-- The Tower of Althalaxx (8/9)
					["sourceQuest"] = 1167,	-- The Tower of Althalaxx (7/9)
					["qg"] = 3661,	-- Balthule Shadowstrike
					["coord"] = { 55.0, 24.9, DARKSHORE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 13,
					["groups"] = {
						objective(1, {	-- 0/1 Athrikus Narassin's Head
							["provider"] = { "i", 5383 },	-- Athrikus Narassin's Head
							["coord"] = { 56.0, 26.0, DARKSHORE },
							["cr"] = 3660,	-- Athrikus Narassin <Cult of the Dark Strand>
						}),
					},
				}),
				q(981, {	-- The Tower of Althalaxx (9/9)
					["sourceQuest"] = 1143,	-- The Tower of Althalaxx (8/9)
					["qg"] = 3661,	-- Balthule Shadowstrike
					["coord"] = { 55.0, 24.9, DARKSHORE },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { ASHENVALE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 13,
					["groups"] = {
						i(10043, {	-- Pious Legwraps
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(5614, {	-- Seraph's Strike
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(949, {	-- The Twilight Camp
					["sourceQuest"] = 944,	-- The Master's Glaive
					["providers"] = {
						{ "i", 5251 },	-- Phial of Scrying
						{ "o", 10076 },	-- Scrying Bowl
					},
					["coord"] = { 38.6, 86.2, DARKSHORE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 12,
				}),
				q(13519, {	-- The Twilight's Hammer
					["sourceQuest"] = 13591,	-- Disturbing Connections
					["qg"] = 32912,	-- Sentinel Lendra
					["coord"] = { 50.3, 20.3, DARKSHORE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 High Cultist Azerynn slain
							["provider"] = { "n", 32899 },	-- High Cultist Azerynn
						}),
						objective(2, {	-- 0/10 Twilight Fanatic slain
							["provider"] = { "n", 32888 },	-- Twilight Fanatic
						}),
						i(52627, {	-- Gloves of the Plate Fist
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(52605, {	-- Fanatical Treads
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131280, {	-- Lendra's Cult-Stompers
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(13587, {	-- The Waking Nightmare
					["sourceQuest"] = 13586,	-- The Emerald Dream
					["qg"] = 33166,	-- Thessera
					["coord"] = { 49.2, 56.9, DARKSHORE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Emerald Scroll
							["provider"] = { "i", 46695 },	-- Emerald Scroll
							["cr"] = 34398,	-- Nightmare Guardian
						}),
						i(52614, {	-- Thessera's Gift
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131824, {	-- Thessera's Gratitude
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(13583, {	-- The Wildkin's Oath
					["sourceQuest"] = 13582,	-- Elune's Fire
					["qg"] = 33119,	-- Aroom
					["coord"] = { 45.6, 48.5, DARKSHORE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(945, {	-- Therylune's Escape
					["qg"] = 3584,	-- Therylune
					["coord"] = { 38.6, 87.3, DARKSHORE },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { ASHENVALE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 10,
				}),
				q(13522, {	-- Threat from the Water
					["qg"] = 32971,	-- Ranger Glynda Nal'Shea
					["coord"] = { 50.2, 19.8, DARKSHORE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/8 Vile Spray slain
							["provider"] = { "n", 32928 },	-- Vile Spray
						}),
					},
				}),
				q(13543, {	-- Three Hammers to Break
					["qg"] = 32987,	-- Corvine Moonrise
					["coord"] = { 42.7, 45.1, DARKSHORE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Cloudtamer Wildmane slain
							["provider"] = { "n", 32988 },	-- Cloudtamer Wildmane
							["coord"] = { 40.8, 41.5, DARKSHORE },
						}),
						objective(2, {	-- 0/1 Windmaster Tzu-Tzu slain
							["provider"] = { "n", 32989 },	-- Windmaster Tzu-Tzu
							["coord"] = { 37.9, 42.7, DARKSHORE },
						}),
						objective(3, {	-- 0/1 Skylord Braax slain
							["provider"] = { "n", 32990 },	-- Skylord Braax
							["coord"] = { 39.1, 38.3, DARKSHORE },
						}),
					},
				}),
				q(4761, {	-- Thundris Windweaver
					["sourceQuest"] = 984,	-- How Big a Threat? (1/2)
					["qg"] = 3693,	-- Terenthis
					["coord"] = { 39.4, 43.5, DARKSHORE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 11,
				}),
				q(13510, {	-- Timely Arrival
					["description"] = "In order to obtain this quest, loot a |cffffffffShatterspear Torturer's Cage Key|r dropped by |cffe50d12Rit'ko|r.",
					["qg"] = 32964,	-- Sentinel Aynasha
					["coord"] = { 64.4, 5.4, DARKSHORE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["cr"] = 32970,	-- Rit'ko
					["groups"] = {
						i(52637, {	-- Aynasha's Spare Sword
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(52613, {	-- Morra's Gloves
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131279, {	-- Starbreeze Gauntlets
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(958, {	-- Tools of the Highborne
					["qg"] = 3649,	-- Thundris Windweaver
					["coord"] = { 37.4, 40.2, DARKSHORE },
					["timeline"] = { REMOVED_4_0_3 },
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
						i(5612, {	-- Ivy Cuffs
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(990, {	-- Trek to Ashenvale
					["description"] = "The quest giver appears after turning in Escape Through Stealth. It takes some time until she offers this quest. Maybe 30 to 60 seconds. After a while she runs away again and you have to wait for somebody else to trigger this event, if you missed accepting this quest.",
					["sourceQuests"] = {
						994,	-- Escape Through Force
						995,	-- Escape Through Stealth
					},
					["qg"] = 3694,	-- Sentinel Selarin
					["coord"] = { 39.3, 43.5, DARKSHORE },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { ASHENVALE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 15,
				}),
				q(13565, {	-- Twice Removed
					["sourceQuest"] = 13564,	-- A Lost Companion
					["qg"] = 33126,	-- Seraphine
					["coord"] = { 42.9, 39.0, DARKSHORE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Lady Janira slain
							["provider"] = { "n", 33207 },	-- Lady Janira
							["coord"] = { 48.6, 40.4, DARKSHORE },
						}),
						i(52629, {	-- Naga Plate Bracers
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(52603, {	-- Mossy Boots
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131287, {	-- Grass-Stained Stompers
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(13596, {	-- Twilight Plans
					["sourceQuest"] = 13591,	-- Disturbing Connections
					["qg"] = 32912,	-- Sentinel Lendra
					["coord"] = { 50.3, 20.3, DARKSHORE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/6 Twilight Plans
							["providers"] = {
								{ "i", 44968 },	-- Twilight Plans
								{ "o", 194204 },	-- Twilight Plans
							},
						}),
					},
				}),
				q(13896, {	-- Unearthed Knowledge
					["sourceQuest"] = 13948,	-- Stepping Up Surveillance
					["qg"] = 34404,	-- Larien
					["coord"] = { 45.3, 75.1, DARKSHORE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(13598, {	-- Unsavory Remedies
					["sourceQuest"] = 13564,	-- A Lost Companion
					["qg"] = 33048,	-- Keeper Karithus
					["coord"] = { 43.0, 39.0, DARKSHORE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/6 Fuming Toadstool
							["providers"] = {
								{ "i", 44976 },	-- Fuming Toadstool
								{ "o", 194208 },	-- Fuming Toadstool
								{ "o", 194209 },	-- Fuming Toadstool
							},
						}),
					},
				}),
				q(4740, {	-- WANTED: Murkdeep!
					["provider"] = { "o", 175320 },	-- WANTED: Murkdeep!
					["coord"] = { 37.2, 44.2, DARKSHORE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 15,
					["groups"] = {
						objective(1, {	-- 0/1 Murkdeep slain
							["provider"] = { "n", 10323 },	-- Murkdeep
							["description"] = "Kill the murlocs at the camp and then a few waves of murlocs before Murkblood and a friend show up.",
							["coord"] = { 35.4, 76.4, DARKSHORE },
						}),
						i(15404, {	-- Breakwater Girdle
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(15403, {	-- Ridgeback Bracers
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(5315, {	-- Timberland Armguards
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(13509, {	-- War Supplies
					["sourceQuests"] = {
						13504,	-- Shatterspear Laborers
						13505,	-- Remnants of the Highborne
					},
					["qg"] = 32963,	-- Lieutenant Morra Starbreeze
					["coord"] = { 58.9, 19.4, DARKSHORE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(3524, {	-- Washed Ashore (1/2)
					["qg"] = 10219,	-- Gwennyth Bly'Leggonde
					["coord"] = { 36.6, 45.6, DARKSHORE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 11,
					["groups"] = {
						objective(1, {	-- 0/1 Sea Creature Bones
							["providers"] = {
								{ "i",  12242 },	-- Sea Creature Bones
								{ "o", 175207 },	-- Beached Sea Creature
							},
							["coord"] = { 36.4, 50.9, DARKSHORE },
						}),
					},
				}),
				q(4681, {	-- Washed Ashore (2/2)
					["sourceQuest"] = 3524,	-- Washed Ashore (1/2)
					["qg"] = 10219,	-- Gwennyth Bly'Leggonde
					["coord"] = { 36.6, 45.6, DARKSHORE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 11,
					["groups"] = {
						objective(1, {	-- 0/1 Sea Turtle Remains
							["providers"] = {
								{ "i",  12289 },	-- Sea Turtle Remains
								{ "o", 176189 },	-- Skeletal Sea Turtle
							},
							["coord"] = { 31.9, 46.3, DARKSHORE },
						}),
						i(15398, {	-- Sandcomber Boots
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(15399, {	-- Dryweed Belt
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(15400, {	-- Clamshell Bracers
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(13525, {	-- What's Happening to the Blackwood Furbolg?
					["qg"] = 33250,	-- Foriel Broadleaf
					["coord"] = { 45.1, 75.2, DARKSHORE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,	-- for "The Bear's Paw"
				}),
				q(28529, {	-- Writings of the Void
					["description"] = "Jump into the whirlpool.",
					["provider"] = { "i", 64450 },	-- Writings of the Dark Herald
					["coord"] = { 52.4, 32.0, DARKSHORE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["crs"] = { 48764 },	-- Telarius Voidstrider
				}),
			}),
			n(RARES, {
				n(2186, {	-- Carnivous the Breaker
					["coords"] = {
						-- #if AFTER CATA
						{ 44.4, 83.0, DARKSHORE },
						-- #else
						{ 39.6, 54.0, DARKSHORE },
						{ 40.0, 78.4, DARKSHORE },
						{ 43.2, 86.0, DARKSHORE },
						-- #endif
					},
				}),
				n(2192, {	-- Firecaller Radison
					["coords"] = {
						-- #if AFTER CATA
						{ 40.0, 83.0, DARKSHORE },
						-- #else
						{ 39.0, 86.4, DARKSHORE },
						-- #endif
					},
				}),
				n(7015, {	-- Flagglemurk the Cruel
					["coords"] = {
						-- #if AFTER CATA
						{ 57.6, 15.0, DARKSHORE },
						{ 58.0, 11.8, DARKSHORE },
						{ 58.6, 9.8, DARKSHORE },
						-- #else
						{ 37.6, 61.6, DARKSHORE },
						{ 36.8, 72.0, DARKSHORE },
						-- #endif
					},
				}),
				n(2184, {	-- Lady Moongazer
					["coords"] = {
						-- #if AFTER CATA
						{ 44.8, 56.6, DARKSHORE },
						-- #else
						{ 43.0, 61.2, DARKSHORE },
						-- #endif
					},
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_ONE, n(210451, {	-- Lady Sedorax
					["coord"] = { 55.6, 36.6, DARKSHORE },
					["groups"] = {
						i(208741, {	-- Rune of Endless Rage
							["classes"] = { WARRIOR },
							["groups"] = {
								recipe(403489),	-- Engrave Gloves - Endless Rage
							},
						}),
						i(209028, {	-- Spell Notes: BIVOLG NIMB
							["classes"] = { MAGE },
						}),
					},
				})),
				-- #endif
				n(7016, {	-- Lady Vespira
					["coords"] = {
						-- #if AFTER CATA
						{ 48.6, 39.0, DARKSHORE },
						{ 48.6, 41.6, DARKSHORE },
						{ 46.6, 41.4, DARKSHORE },
						-- #else
						{ 59.8, 15.6, DARKSHORE },
						{ 58.0, 18.4, DARKSHORE },
						{ 58.2, 23.8, DARKSHORE },
						{ 59.8, 23.6, DARKSHORE },
						{ 61.6, 23.6, DARKSHORE },
						{ 61.8, 17.8, DARKSHORE },
						-- #endif
					},
					["groups"] = {
						i(6332, {	-- Black Pearl Ring
							["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
						}),
						i(6333, {	-- Spikelash Dagger
							["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
						}),
					},
				}),
				n(2191, {	-- Licillin
					["coords"] = {
						-- #if AFTER CATA
						{ 57.2, 32.8, DARKSHORE },
						-- #else
						{ 47.0, 38.6, DARKSHORE },
						-- #endif
					},
				}),
				n(7017, {	-- Lord Sinslayer
					["coords"] = {
						-- #if AFTER CATA
						{ 34.2, 83.6, DARKSHORE },
						-- #else
						{ 55.0, 35.4, DARKSHORE },
						-- #endif
					},
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_ONE, n(210482, {	-- Paxnozz
					["coord"] = { 48.8, 15.6, DARKSHORE },
					["cost"] = {{ "i", 209047, 1 }},	-- Gnarled Harpoon
					["timeline"] = { REMOVED_2_0_1 },
					["classes"] = { WARRIOR, HUNTER },
					["groups"] = {
						i(208777, {	-- Rune of the Sniper
							["classes"] = { HUNTER },
							["groups"] = {
								recipe(416091),	-- Engrave Pants - Sniper Training
							},
						}),
						i(208778, {	-- Rune of Quick Strike
							["classes"] = { WARRIOR },
							["groups"] = {
								recipe(425443),	-- Engrave Gloves - Quick Strike
							},
						}),
					},
				})),
				-- #endif
				n(2175, {	-- Shadowclaw
					["coords"] = {
						-- #if AFTER CATA
						{ 41.6, 36.0, DARKSHORE },
						{ 41.2, 36.6, DARKSHORE },
						-- #else
						{ 39.2, 35.4, DARKSHORE },
						{ 42.2, 38.2, DARKSHORE },
						{ 40.2, 41.6, DARKSHORE },
						{ 39.4, 39.6, DARKSHORE },
						-- #endif
					},
				}),
				n(2172, {	-- Strider Clutchmother
					["coords"] = {
						-- #if AFTER CATA
						{ 40.8, 48.6, DARKSHORE },
						-- #else
						{ 35.0, 86.0, DARKSHORE },
						{ 34.4, 89.0, DARKSHORE },
						{ 36.6, 90.2, DARKSHORE },
						{ 38.2, 89.4, DARKSHORE },
						{ 41.2, 90.6, DARKSHORE },
						{ 40.6, 93.0, DARKSHORE },
						{ 38.8, 93.8, DARKSHORE },
						{ 37.0, 91.4, DARKSHORE },
						-- #endif
					},
				}),
			}),
			-- #if SEASON_OF_DISCOVERY
			n(TREASURES, {
				applyclassicphase(SOD_PHASE_ONE, i(209836, {	-- Althalaxx Orb
					["provider"] = { "o", 409289 },	-- Strange Orb
					["coord"] = { 56.2, 26.5, DARKSHORE },
					["description"] = "Climb the tower in Darkshore, you'll likely need a group or a friend capable of surviving long enough to give you about 3 seconds of uninterupted looting time.",
					["timeline"] = { REMOVED_2_0_1 },
					["classes"] = { PALADIN },
				})),
				applyclassicphase(SOD_PHASE_ONE, i(209047, {	-- Gnarled Harpoon
					["provider"] = { "o", 408802 },	-- Gnarled Harpoon
					["coords"] = {
						{ 44.1, 20.8, DARKSHORE },
						{ 47.3, 15.3, DARKSHORE },
						{ 49.2, 16.2, DARKSHORE },
						{ 48.3, 18.0, DARKSHORE },
					},
					["timeline"] = { REMOVED_2_0_1 },
					["classes"] = { WARRIOR, HUNTER },
				})),
				applyclassicphase(SOD_PHASE_ONE, i(205905, {	-- Memory of a Devout Champion
					["providers"] = {
						{ "o", 414663 },	-- Shatterspear Idol
						{ "i", 211482 },	-- Shatterspear Offering
					},
					["coord"] = { 59.2, 22.6, DARKSHORE },
					["classes"] = { PRIEST },
					["groups"] = {
						recipe(425215),	-- Engrave Chest - Twisted Faith
					},
				})),
				applyclassicphase(SOD_PHASE_ONE, i(209843, {	-- Nar'thalas Almanac, Vol. 74
					["provider"] = { "o", 409496 },	-- Scrolls
					["coord"] = { 59.6, 22.2, DARKSHORE },
				})),
				applyclassicphase(SOD_PHASE_ONE, i(205932, {	-- Prophecy of a King's Demise
					["provider"] = { "o", 414646 },	-- Remnant
					["coord"] = { 30.4, 48.0, DARKSHORE },
					["timeline"] = { REMOVED_2_0_1 },
					["classes"] = { PRIEST },
					["groups"] = {
						recipe(402849),	-- Engrave Gloves - Shadow Word - Death
					},
				})),
				applyclassicphase(SOD_PHASE_ONE, i(208701, {	-- Rune of Beast Mastery
					["providers"] = {
						{ "n",   2234 },	-- Young Reef Crawler
						{ "i", 209027 },	-- Crab Treats
					},
					["description"] = "Use Crab Treats on a young reef crawler to receive this rune.",
					["coord"] = { 36.4, 54.2, DARKSHORE },
					["classes"] = { HUNTER },
					["groups"] = {
						recipe(410110),	-- Engrave Gloves - Beast Mastery
					},
				})),
				applyclassicphase(SOD_PHASE_ONE, i(208771, {	-- Rune of Blade Dance
					["providers"] = {
						{ "o", 414532 },	-- Clliffspring Chest (mispelled?!)
						{ "i", 211471 },	-- Cliffspring Key
					},
					["coord"] = { 56.3, 34.9, DARKSHORE },
					["timeline"] = { REMOVED_2_0_1 },
					["classes"] = { ROGUE },
					["groups"] = {
						recipe(400099),	-- Engrave Pants - Blade Dance
					},
				})),
				applyclassicphase(SOD_PHASE_ONE, i(208772, {	-- Rune of Saber Slash
					["provider"] = { "o", 414624 },	-- Lighthouse Stash
					["coord"] = { 32.8, 37.1, DARKSHORE },
					["timeline"] = { REMOVED_2_0_1 },
					["classes"] = { ROGUE },
					["groups"] = {
						recipe(424984),	-- Engrave Gloves - Saber Slash
					},
				})),
			}),
			-- #endif
			n(VENDORS, {
				n(33980, {	-- Apothecary Furrows
					["coord"] = { 57.2, 33.8, DARKSHORE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(46325, {	-- Withers (PET!)
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				n(43436, {	-- Ceriale Duskwhisper <Clothier>
					["coord"] = { 50.6, 20.6, DARKSHORE },
					["timeline"] = { ADDED_4_0_1 },
					["races"] = ALLIANCE_ONLY,
					["sym"] = {{"select","itemID",
						16059,	-- Common Brown Shirt
						3428,	-- Common Grey Shirt
						16060,	-- Common White Shirt
					}},
				}),
				n(4307, {	-- Heldan Galesong <Fisherman>
					["coord"] = { 37.0, 56.4, DARKSHORE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					-- #if BEFORE 4.0.3
					["groups"] = {
						i(5528),	-- Recipe: Clam Chowder (RECIPE!)
						i(6368),	-- Recipe: Rainbow Fin Albacore (RECIPE!)
						i(6369),	-- Recipe: Rockscale Cod (RECIPE!)
						i(17062),	-- Recipe: Mithril Head Trout (RECIPE!)
					},
					-- #endif
				}),
				n(4200, {	-- Laird <Fish Vendor>
					["coord"] = { 36.8, 44.3, DARKSHORE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(5485, {	-- Recipe: Fillet of Frenzy (RECIPE!)
							["timeline"] = { REMOVED_4_0_3 },	-- Now taught by trainer, schematic removed from the game.
						}),
					},
				}),
				n(4186, {	-- Mavralyn <Leather Armor & Leatherworking Supplies>
					["coord"] = { 37.0, 41.2, DARKSHORE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					-- #if BEFORE 4.0.3
					["groups"] = {
						i(5786),	-- Pattern: Murloc Scale Belt (RECIPE!)
						i(5787),	-- Pattern: Murloc Scale Breastplate (RECIPE!)
					},
					-- #endif
				}),
				n(4189, {	-- Valdaron <Tailoring Supplies>
					["coord"] = { 38.1, 40.6, DARKSHORE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					-- #if BEFORE 4.0.3
					["groups"] = {
						i(6270),	-- Pattern: Blue Linen Vest (RECIPE!)
						i(5771),	-- Pattern: Red Linen Bag (RECIPE!)
						i(5772),	-- Pattern: Red Woolen Bag (RECIPE!)
					},
					-- #endif
				}),
			}),
			n(ZONE_DROPS, {
				-- #if BEFORE 4.0.3
				i(3173),	-- Bear Meat
				-- #endif
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_ONE, i(211471, {	-- Cliffspring Key
					["coord"] = { 55.8, 34.2, DARKSHORE },
					["classes"] = { ROGUE },
					["crs"] = {
						2179,	-- Stormscale Wave Rider
						2180,	-- Stormscale Siren
					},
				})),
				applyclassicphase(SOD_PHASE_ONE, i(209027, {	-- Crab Treats
					["coord"] = { 39.8, 54.6, DARKSHORE },
					["classes"] = { HUNTER },
					["crs"] = {
						2167,	-- Blackwood Pathfinder
						2324,	-- Blackwood Windtalker
						2171,	-- Blackwood Shaman
						2168,	-- Blackwood Warrior
						2169,	-- Blackwood Totemic
						2170,	-- Blackwood Ursa
					},
				})),
				applyclassicphase(SOD_PHASE_ONE, i(208689, {	-- Ferocious Idol
					["coord"] = { 51.4, 38, DARKSHORE },
					["classes"] = { DRUID },
					["cr"] = 6788,	-- Den Mother
					["groups"] = {
						recipe(410023),	-- Engrave Pants - Savage Roar
					},
				})),
				-- #endif
				i(5332, {	-- Glowing Cat Figurine
					["cr"] = 3619,	-- Ghost Saber
				}),
				-- #if BEFORE 4.0.3
				i(5839, {	-- Journal Page
					["timeline"] = { DELETED_4_0_3 },
					["cr"] = 3660,	-- Athrikus Narassin <Cult of the Dark Strand>
				}),
				-- #endif
				i(5773, {	-- Pattern: Robes of Arcana (RECIPE!)
					["timeline"] = { REMOVED_4_0_3 },
					["cr"] = 2337,	-- Dark Strand Voidcaller
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_ONE, i(208750, {	-- Rune of Channeling
					["coord"] = { 57.0, 26.4, DARKSHORE },
					["timeline"] = { REMOVED_2_0_1 },
					["classes"] = { WARLOCK },
					["cr"] = 2336,	-- Dark Strand Fanatic
					["groups"] = {
						recipe(403932),	-- Engrave Chest - Master Channeler
					},
				})),
				applyclassicphase(SOD_PHASE_ONE, i(208744, {	-- Rune of Shadowbolts
					["coords"] = {
						{ 57.6, 26.0, DARKSHORE },
						{ 52.6, 33.8, DARKSHORE },
					},
					["timeline"] = { REMOVED_2_0_1 },
					["classes"] = { WARLOCK },
					["crs"] = {
						3662,	-- Delmanis the Hated
						10373,	-- Xabraxxis
					},
					["groups"] = {
						recipe(403936),	-- Engrave Gloves - Shadow Bolt Volley
					},
				})),
				applyclassicphase(SOD_PHASE_ONE, i(211482, {	-- Shatterspear Offering
					["coord"] = { 58.8, 20.6, DARKSHORE },
					["classes"] = { PRIEST },
					["crs"] = {
						2181,	-- Stormscale Myrmidon
						2182,	-- Stormscale Sorceress
						2183,	-- Stormscale Warrior
					},
				})),
				-- #endif
				i(45040, {	-- Shatterspear Torturer's Cage Key
					["description"] = "Use the Key on a nearby cage to release Sentinel Aynasha and receive an Escort Quest.",
					["cr"] = 32970,	-- Rit'ko
					["coord"] = { 64.1, 5.3, DARKSHORE },
					["timeline"] = { ADDED_4_0_3 },
				}),
				-- #if BEFORE 4.0.3
				i(5568, {	-- Smooth Pebble
					["timeline"] = { DELETED_4_0_1 },
					["crs"] = {
						2156,	-- Cracked Golem
						2157,	-- Stone Behemoth
					},
				}),
				i(5469),	-- Strider Meat
				-- #endif
			}),
		},
	}),
}));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.BFA, bubbleDownSelf({ ["timeline"] = { ADDED_8_0_1_LAUNCH } }, {
	m(KALIMDOR, {
		m(DARKSHORE, {
			q(54411),	-- triggers when speaking with Zidormi in Darkshore to travel back in time (spellID 395734)
			q(52759),	-- Talked to Zom in Darkshore, which normally has 1 option. But this time had 2 "see past" options.
		}),
	})
})));
