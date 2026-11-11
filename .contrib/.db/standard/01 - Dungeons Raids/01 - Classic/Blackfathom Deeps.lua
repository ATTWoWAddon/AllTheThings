-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

root(ROOTS.Instances, expansion(EXPANSION.CLASSIC, {
	inst(227, {	-- Blackfathom Deeps
		-- #if BEFORE MOP
		lore = "Situated along the Zoram Strand of Ashenvale, Blackfathom Deeps was once a glorious temple dedicated to the night elves' moon-goddess, Elune. However, the great Sundering shattered the temple - sinking it beneath the waves of the Veiled Sea. There it remained untouched - until, drawn by its ancient power - the naga and satyr emerged to plumb its secrets. Legends hold that the ancient beast, Aku'mai, has taken up residence within the temple's ruins. Aku'mai, a favored pet of the primordial Old Gods, has preyed upon the area ever since. Drawn to Aku'mai's presence, the cult known as the Twilight's Hammer has also come to bask in the Old Gods' evil presence.",
		-- #endif
		-- #if BEFORE CATA
		zoneTextAreaID = 719,	-- Blackfathom Deeps
		-- #endif
		-- #if AFTER CATA
		coords = {
			{ 16.5, 11.0, ASHENVALE },
			{ 14.2, 14.0, ASHENVALE },	-- Cave entrance
		},
		-- #else
		coord = { 14.0, 11.1, ASHENVALE },
		-- #endif
		maps = { BLACKFATHOM_DEEPS, BLACKFATHOM_DEEPS_LEVEL2, BLACKFATHOM_DEEPS_LEVEL3 },
		lvl = lvlsquish(19, 19, 10),
		groups = {
			n(ZONE_DROPS, {
				i(1454),	-- Axe of the Enforcer
				i(3414),	-- Crested Scepter
				i(3413),	-- Doomspike
				i(2567),	-- Evocator's Blade
				i(1481),	-- Grimclaw
				i(3416),	-- Martyr's Chain
				i(3417),	-- Onyx Claymore
				i(1491),	-- Ring of Precision
				i(2034),	-- Scholarly Robes
				i(2271),	-- Staff of the Blessed Seer
				i(3415),	-- Staff of the Friar
				i(1486),	-- Tree Bark Jacket
				-- #if AFTER 6.0.1.18322
				i(4410, {	-- Schematic: Shadow Goggles
					cr = 74363,	-- Twilight Shadow
				}),
				-- #endif
			}),
			n(QUESTS, {
				q(6564, {	-- Allegiance to the Old Gods (1/2)
					description = "For this to drop, you need to be on the Essence of Aku'Mai quest.",
					sourceQuest = 6563,	-- The Essence of Aku'Mai [Pre-CATA]
					provider = { "i", 16790 },	-- Damp Note
					timeline = { REMOVED_4_0_3 },
					races = HORDE_ONLY,
					cr = 4802,	-- Blackfathom Tide Priestess
					lvl = 17,
				}),
				q(6565, {	-- Allegiance to the Old Gods (2/2)
					sourceQuest = 6564,	-- Allegiance to the Old Gods (1/2)
					qg = 12736,	-- Je'neu Sancrea <The Earthen Ring>
					coord = { 11.6, 34.3, ASHENVALE },
					timeline = { REMOVED_4_0_3 },
					races = HORDE_ONLY,
					lvl = 17,
					groups = {
						objective(1, {	-- 0/1 Lorgus Jett slain
							provider = { "n", 12902 },	-- Lorgus Jett
						}),
						i(17695),	-- Chestnut Mantle
						i(17694),	-- Band of the Fist
					},
				}),
				q(26891, {	-- Amongst the Ruins
					qg = 12736,	-- Je'neu Sancrea <The Earthen Ring>
					timeline = { ADDED_4_0_3, REMOVED_6_0_2 },
					races = HORDE_ONLY,
					lvl = 20,
					groups = {
						objective(1, {	-- 0/1 Fathom Core
							provider = { "i", 16762 },	-- Fathom Core
						}),
					},
				}),
				q(908, {	-- Amongst the Ruins
					qg = 12736,	-- Je'neu Sancrea <The Earthen Ring>
					coord = { 11.6, 34.3, ASHENVALE },
					timeline = { REMOVED_1_2_4 },
					-- #if AFTER 1.2.4
					description = "This quest gets marked as completed when you complete the quest 'Amongst the Ruins' (6921).",
					-- #endif
					races = HORDE_ONLY,
					lvl = 21,
					groups = {
						objective(1, {	-- 0/1 Fathom Core
							provider = { "i", 16762 },	-- Fathom Core
						}),
					},
				}),
				q(6921, {	-- Amongst the Ruins
					qg = 12736,	-- Je'neu Sancrea <The Earthen Ring>
					coord = { 11.6, 34.3, ASHENVALE },
					timeline = { ADDED_1_2_4, REMOVED_4_0_3 },
					races = HORDE_ONLY,
					lvl = 21,
					groups = {
						objective(1, {	-- 0/1 Fathom Core
							provider = { "i", 16762 },	-- Fathom Core
						}),
					},
				}),
				q(6922, {	-- Baron Aquanis
					provider = { "i", 16782 },	-- Strange Water Globe
					timeline = { REMOVED_6_0_2 },
					maps = { ASHENVALE },
					races = HORDE_ONLY,
					lvl = 21,
					groups = {
						i(16886),	-- Outlaw Sabre
						i(16887),	-- Witch's Finger
					},
				}),
				q(26894, {	-- Blackfathom Deeps (H)
					qg = 34122,	-- Commander Grimfang
					coord = { 12.1, 33.8, ASHENVALE },
					timeline = { ADDED_4_0_3 },
					races = HORDE_ONLY,
					isBreadcrumb = true,
					lvl = lvlsquish(22, 22, 10),
				}),
				q(26897, {	-- Blackfathom Deeps (A)
					qg = 3845,	-- Shindrell Swiftfire
					coord = { 18.2, 20.4, ASHENVALE },
					timeline = { ADDED_4_0_3 },
					races = ALLIANCE_ONLY,
					isBreadcrumb = true,
					lvl = lvlsquish(22, 22, 10),
				}),
				q(26898, {	-- Blackfathom Deeps (A)
					qg = 3691,	-- Raene Wolfrunner
					coord = { 36.6, 49.6, ASHENVALE },
					timeline = { ADDED_4_0_3 },
					races = ALLIANCE_ONLY,
					isBreadcrumb = true,
					lvl = lvlsquish(22, 22, 10),
				}),
				q(1200, {	-- Blackfathom Villainy (A)
					sourceQuest = 1198,	-- In Search of Thaelrid
					qg = 4787,	-- Argent Guard Thaelrid <The Argent Dawn>
					timeline = { REMOVED_4_0_3 },
					maps = { DARNASSUS },
					races = ALLIANCE_ONLY,
					lvl = 18,
					groups = {
						objective(1, {	-- 0/1 Head of Kelris
							provider = { "i", 5881 },	-- Head of Kelris
							cr = 4832,	-- Twilight Lord Kelris
						}),
						i(7002),	-- Arctic Buckler
						i(7001),	-- Gravestone Scepter
					},
				}),
				q(26882, {	-- Blackfathom Villainy (A) [CATA]
					sourceQuest = 26881,	-- In Search of Thaelrid
					qg = 4787,	-- Scout Thaelrid
					timeline = { ADDED_4_0_3, REMOVED_6_0_2 },
					races = ALLIANCE_ONLY,
					lvl = 20,
					groups = {
						objective(1, {	-- 0/1 Head of Kelris
							provider = { "i", 5881 },	-- Head of Kelris
							cr = 4832,	-- Twilight Lord Kelris
						}),
						-- #if BEFORE 6.0.1.18322
						i(65986),	-- Shield Against the Evil Presence
						i(65962),	-- Thaelrid's Greaves
						i(65938),	-- Blackfathom Leggings
						i(65912),	-- Robe of Kelris
						-- #endif
					},
				}),
				q(6561, {	-- Blackfathom Villainy (H)
					qg = 4787,	-- Argent Guard Thaelrid <The Argent Dawn>
					timeline = { REMOVED_4_0_3 },
					maps = { THUNDER_BLUFF },
					races = HORDE_ONLY,
					lvl = 18,
					groups = {
						objective(1, {	-- 0/1 Head of Kelris
							provider = { "i", 5881 },	-- Head of Kelris
							cr = 4832,	-- Twilight Lord Kelris
						}),
						i(7002),	-- Arctic Buckler
						i(7001),	-- Gravestone Scepter
					},
				}),
				q(26892, {	-- Deep in the Deeps
					qg = 44375,	-- Zeya
					timeline = { ADDED_4_0_3, REMOVED_6_0_2 },
					races = HORDE_ONLY,
					lvl = 20,
					groups = {
						objective(1, {	-- 0/1 Ghamoo-Ra slain
							provider = { "n", 4887 },	-- Ghamoo-Ra
						}),
						objective(2, {	-- 0/1 Lady Sarevess slain
							provider = { "n", 4831 },	-- Lady Sarevess
						}),
						objective(3, {	-- 0/1 Gelihast slain
							provider = { "n", 6243 },	-- Gelihast
						}),
					},
				}),
				q(1198, {	-- In Search of Thaelrid
					-- #if AFTER 3.1.0
					races = ALLIANCE_ONLY,
					-- #else
					description = "This quest is also available to Horde, though the questgiver is a bit out of the way. (And, of course, it doesn't grant the Darnassus rep.)",
					-- #endif
					qg = 4786,	-- Dawnwatcher Shaedlass <The Argent Dawn>
					coord = { 28.7, 52.1, DARNASSUS },
					timeline = { REMOVED_4_0_3 },
					isBreadcrumb = true,
					lvl = 18,
				}),
				q(26881, {	-- In Search of Thaelrid [CATA]
					qg = 33256,	-- Ashelan Northwood
					timeline = { ADDED_4_0_3, REMOVED_6_0_2 },
					races = ALLIANCE_ONLY,
					isBreadcrumb = true,
					lvl = 20,
				}),
				q(971, {	-- Knowledge in the Deeps
					sourceQuest = 968,	-- The Powers Below
					qg = 2786,	-- Gerrig Bonegrip
					coord = { 50.8, 5.6, IRONFORGE },
					timeline = { REMOVED_4_0_3 },
					races = ALLIANCE_ONLY,
					lvl = 10,
					groups = {
						objective(1, {	-- 0/1 Lorgalis Manuscript
							providers = {
								{ "i", 5359 },	-- Lorgalis Manuscript
								{ "o", 13949 },	-- Pitted Iron Chest
							},
							description = "Guarded by a few Naga in the underwater room directly to the right of Ghamoo-ra.",
						}),
						-- #if BEFORE 4.0.3
						i(6743, {	-- Sustaining Ring
							timeline = { REMOVED_6_0_2 },
						}),
						-- #endif
					},
				}),
				q(26885, {	-- Knowledge in the Deeps [CATA]
					qg = 33261,	-- Sentinel-trainee Issara
					timeline = { ADDED_4_0_3, REMOVED_6_0_2 },
					races = ALLIANCE_ONLY,
					lvl = 10,
					groups = {
						objective(1, {	-- 0/1 Lorgalis Manuscript
							providers = {
								{ "i", 5359 },	-- Lorgalis Manuscript
								{ "o", 13949 },	-- Pitted Iron Chest
							},
							description = "Guarded by a few Naga in the underwater room directly to the right of Ghamoo-ra.",
						}),
						i(56660),	-- Dusk-Stained Cloak
						i(56658),	-- Eventide Bow
						i(56659),	-- Gloaming Band
						i(6743, {	-- Sustaining Ring
							timeline = { REMOVED_6_0_2 },
						}),
					},
				}),
				q(26888, {	-- Nightmare of the Deeps (H) [CATA]
					qg = 12736,	-- Je'neu Sancrea <The Earthen Ring>
					timeline = { ADDED_4_0_3, REMOVED_6_0_2 },
					races = HORDE_ONLY,
					lvl = 20,
					groups = {
						objective(1, {	-- 0/1 Aku'mai slain
							provider = { "n", 4829 },	-- Aku'mai
						}),
						-- #if BEFORE 6.0.1.18322
						i(66030),	-- Plates of Aku'mai
						i(66039),	-- Shield Against the Evil Presence
						i(66021),	-- Blackfathom Leggings
						i(66012),	-- Je'neu's Robes
						-- #endif
					},
				}),
				q(1275, {	-- Researching the Corruption
					sourceQuest = 3765,	-- The Corruption Abroad
					qg = 8997,	-- Gershala Nightwhisper
					coord = { 38.3, 43.0, DARKSHORE },
					timeline = { REMOVED_4_0_3 },
					races = ALLIANCE_ONLY,
					lvl = 18,
					groups = {
						objective(1, {	-- 0/8 Corrupted Brain Stem
							provider = { "i", 5952 },	-- Corrupted Brain Stem
							crs = {
								4807,	-- Blackfathom Myrmidon
								4803,	-- Blackfathom Oracle
								4805,	-- Blackfathom Sea Witch
								4802,	-- Blackfathom Tide Priestess
								4799,	-- Fallenroot Hellcaller
								4789,	-- Fallenroot Rogue
								4788,	-- Fallenroot Satyr
								4798,	-- Fallenroot Shadowstalker
								4831,	-- Lady Sarevess
							},
						}),
						i(7003),	-- Beetle Clasps
						i(7004),	-- Prelacy Cape
					},
				}),
				q(26884, {	-- Researching the Corruption [CATA]
					qg = 33258,	-- Relwyn Shadestar
					coord = { 38.3, 43.0, DARKSHORE },
					timeline = { ADDED_4_0_3, REMOVED_6_0_2 },
					races = ALLIANCE_ONLY,
					lvl = 20,
					groups = {
						objective(1, {	-- 0/8 Corrupted Brain Stem
							provider = { "i", 5952 },	-- Corrupted Brain Stem
						}),
						i(56682),	-- Band of the Skull Crusher
						i(56679),	-- Dissector
						i(56681),	-- Searching Wand
						i(56680),	-- Shadestar Mace
					},
				}),
				q(3765, {	-- The Corruption Abroad
					qg = 4984,	-- Argos Nightwhisper
					coords = {
						-- #if AFTER WRATH
						{ 36.2, 67.6, STORMWIND_CITY },
						-- #else
						{ 21.6, 55.6, STORMWIND_CITY },
						-- #endif
					},
					timeline = { REMOVED_4_0_3 },
					maps = { DARKSHORE },
					races = ALLIANCE_ONLY,
					isBreadcrumb = true,
					lvl = 20,
				}),
				q(26899, {	-- The Enemy of My Enemy (H) [CATA]
					qg = 44387,	-- Flaming Eradicator
					timeline = { ADDED_4_0_3, REMOVED_6_0_2 },
					races = HORDE_ONLY,
					lvl = 20,
					groups = {
						objective(1, {	-- 0/1 Head of Kelris
							provider = { "i", 5881 },	-- Head of Kelris
							cr = 4832,	-- Twilight Lord Kelris
						}),
					},
				}),
				q(6563, {	-- The Essence of Aku'Mai [Pre-CATA]
					sourceQuest = 6562,	-- Trouble in the Deeps
					qg = 12736,	-- Je'neu Sancrea <The Earthen Ring>
					coord = { 11.6, 34.3, ASHENVALE },
					timeline = { REMOVED_4_0_3 },
					races = HORDE_ONLY,
					lvl = 17,
					groups = {
						objective(1, {	-- 0/20 Sapphire of Aku'Mai
							providers = {
								{ "i",  16784 },	-- Sapphire of Aku'Mai
								{ "o", 178184 },	-- Sapphire of Aku'Mai
								{ "o", 178185 },	-- Sapphire of Aku'Mai
								{ "o", 178186 },	-- Sapphire of Aku'Mai
							},
						}),
					},
				}),
				q(34672, {	-- The Rise of Aku'mai (A)
					qg = 75606,	-- Sentinel Aluwyn
					timeline = { ADDED_6_0_2 },
					races = ALLIANCE_ONLY,
					lvl = lvlsquish(20, 20, 10),
					groups = {
						objective(1, {	-- 0/1 Aku'mai the Devourer slain
							provider = { "n", 75155 },	-- Aku'mai the Devourer <Terror from the Deep>
						}),
						i(65986),	-- Shield Against the Evil Presence
						i(65962),	-- Thaelrid's Greaves
						i(65938),	-- Blackfathom Leggings
						i(65912),	-- Robe of Kelris
						i(131713, {	-- Scales of Aku'mai
							timeline = { ADDED_7_0_3 },
						}),
					},
				}),
				q(34673, {	-- The Rise of Aku'mai (H)
					qg = 74409,	-- Zeya
					timeline = { ADDED_6_0_2 },
					races = HORDE_ONLY,
					lvl = lvlsquish(20, 20, 10),
					groups = {
						objective(1, {	-- 0/1 Aku'mai the Devourer slain
							provider = { "n", 75155 },	-- Aku'mai the Devourer <Terror from the Deep>
						}),
						i(66030),	-- Plates of Aku'mai
						i(66039),	-- Shield Against the Evil Presence
						i(66021),	-- Blackfathom Leggings
						i(66012),	-- Je'neu's Robes
						i(131714, {	-- Blackfathom Chain Leggings
							timeline = { ADDED_7_0_3 },
						}),
					},
				}),
				q(6562, {	-- Trouble in the Deeps
					qg = 11862,	-- Tsunaman
					coord = { 47.3, 64.4, STONETALON_MOUNTAINS },
					timeline = { REMOVED_4_0_3 },
					maps = { ASHENVALE },
					races = HORDE_ONLY,
					isBreadcrumb = true,
					lvl = 17,
				}),
				q(1199, {	-- Twilight Falls
					qg = 4784,	-- Argent Guard Manados <The Argent Dawn>
					coord = { 38.3, 43.0, DARNASSUS },
					timeline = { REMOVED_4_0_3 },
					races = ALLIANCE_ONLY,
					lvl = 20,
					groups = {
						objective(1, {	-- 0/10 Twilight Pendant
							provider = { "i", 5879 },	-- Twilight Pendant
							crs = {
								4809,	-- Twilight Acolyte
								4811,	-- Twilight Aquamancer
								4814,	-- Twilight Elementalist
								4812,	-- Twilight Loreseeker
								4810,	-- Twilight Reaver
								4813,	-- Twilight Shadowmage
							},
						}),
						i(7000),	-- Heartwood Girdle
						i(6998),	-- Nimbus Boots
					},
				}),
				q(26883, {	-- Twilight Falls [CATA]
					qg = 33260,	-- Sentinel Aluwyn
					timeline = { ADDED_4_0_3, REMOVED_6_0_2 },
					races = ALLIANCE_ONLY,
					lvl = 20,
					groups = {
						objective(1, {	-- 0/10 Twilight Pendant
							provider = { "i", 5879 },	-- Twilight Pendant
						}),
						i(56697),	-- Blackfathom Mace
						i(56698),	-- Gift of the Enigmatic Tree
						i(56699),	-- Aluwyn's Legguards
						i(7000),	-- Heartwood Girdle
						i(6998),	-- Nimbus Boots
					},
				}),
			}),
			n(TREASURES, {
				o(19018, {	-- Giant Clam
					i(2143),	-- Cuirboulli Boots (confirmed - Danny Donkey)
					i(5500),	-- Iridescent Pearl
					i(5504),	-- Tangy Clam Meat
				}),
			}),
			n(4887, {	-- Ghamoo-ra
				timeline = { REMOVED_6_0_2 },
				-- #if BEFORE 6.0.1.18322
				groups = {
					i(6907),	-- Tortoise Armor
					i(6908),	-- Ghamoo-ra's Bind
				},
				-- #endif
			}),
			n(4831, {	-- Lady Sarevess
				timeline = { REMOVED_6_0_2 },
				-- #if BEFORE 6.0.1.18322
				groups = {
					i(11121),	-- Darkwater Talwar
					i(3078),	-- Naga Heartpiercer
					i(888),	-- Naga Battle Gloves
				},
				-- #endif
			}),
			o(177964, {	-- Fathom Stone
				description = "In the water below the Twilight bridge.\n\nWARNING: Spawns Baron Aquanis.",
				sourceQuests = {
					-- #if AFTER 4.0.3
					26891,	-- Amongst the Ruins
					-- #else
					6921,	-- Amongst the Ruins
					-- #endif
				},
				timeline = { REMOVED_6_0_2 },
				races = HORDE_ONLY,
				groups = {
					i(16762),	-- Fathom Core
					n(12876, {	-- Baron Aquanis
						description = "This boss can only be summoned by Horde players on the Amongst the Ruins quest.",
						groups = {
							i(16782),	-- Strange Water Globe
						},
					}),
				},
			}),
			n(6243, {	-- Gelihast
				timeline = { REMOVED_6_0_2 },
				-- #if BEFORE 6.0.1.18322
				groups = {
					i(6906),	-- Algae Fists
					i(1470),	-- Murloc Skin Bag
					i(6905),	-- Reef Axe
				},
				-- #endif
			}),
			n(4830, {	-- Old Serra'kis
				timeline = { REMOVED_6_0_2 },
				-- #if BEFORE 6.0.1.18322
				groups = {
					i(6904),	-- Bite of Serra'kis
					i(6902),	-- Bands of Serra'kis
					i(6901),	-- Glowing Thresher Cape
				},
				-- #endif
			}),
			n(4832, {	-- Twilight Lord Kelris
				timeline = { REMOVED_6_0_2 },
				-- #if BEFORE 6.0.1.18322
				groups = {
					i(1155),	-- Rod of the Sleepwalker
					i(6903),	-- Gaze Dreamer Pants
				},
				-- #endif
			}),
			n(4829, {	-- Aku'mai
				timeline = { REMOVED_6_0_2 },
				-- #if BEFORE 6.0.1.18322
				groups = {
					ach(632),	-- Blackfathom Deeps
					ach(5041, {	-- Blackfathom Deeps Guild Run
						timeline = { ADDED_4_0_3, REMOVED_6_0_2 },
					}),
					i(6909),	-- Strike of the Hydra
					i(6911),	-- Moss Cinch
					i(6910),	-- Leech Pants
				},
				-- #endif
			}),
			e(368, {	-- Ghamoo-Ra
				creatureID = 74446,
				timeline = { ADDED_6_0_2 },
				groups = {
					i(151433, {	-- Thick Shellplate Shoulders
						timeline = { ADDED_7_3_0 },
					}),
					i(6907),	-- Tortoise Armor
					i(6908),	-- Ghamoo-Ra's Bind
					i(151432, {	-- Twilight Turtleskin Leggings
						timeline = { ADDED_7_3_0 },
					}),
				},
			}),
			e(436, {	-- Domina <Mistress of Shadows>
				creatureID = 74476,
				timeline = { ADDED_6_0_2 },
				groups = {
					i(11121),	-- Darkwater Talwar
					i(3078),	-- Naga Heartpiercer
					i(132554, {	-- Deadly Serpentine Grips
						timeline = { ADDED_7_0_3 },
					}),
					i(888),	-- Naga Battle Gloves
					i(151435, {	-- Domina's Deathmaw Greaves
						timeline = { ADDED_7_3_0 },
					}),
					i(151434, {	-- Foul Shadowsleet Slippers
						timeline = { ADDED_7_3_0 },
					}),
				},
			}),
			e(426, {	-- Subjugator Kor'ul
				creatureID = 74565,
				timeline = { ADDED_6_0_2 },
				groups = {
					i(6906),	-- Algae Fists
					i(151436, {	-- Murloc Oppressor's Band
						timeline = { ADDED_7_3_0 },
					}),
					i(1470),	-- Murloc Skin Bag
					i(6905),	-- Reef Axe
				},
			}),
			e(1145, {	-- Thruk
				creatureID = 74505,
				timeline = { ADDED_6_0_2 },
				groups = {
					i(120164),	-- Thruk's Heavy Duty Fishing Pole
					i(120165),	-- Thruk's Fillet Knife
					i(120163),	-- Thruk's Fishing Rod
					i(151437, {	-- Hook Charm Necklace
						timeline = { ADDED_7_3_0 },
					}),
				},
			}),
			e(447, {	-- Guardian of the Deep
				crs = {
					75410,	-- Guardian of the Deep [Netted by Thruk]
					74508,	-- Guardian of the Deep [Fight location]
				},
				timeline = { ADDED_6_0_2 },
				groups = {
					i(6904),	-- Bite of Serra'kis
					i(132555, {	-- Serra'kis Scale Wraps
						timeline = { ADDED_7_0_3 },
					}),
					i(6902),	-- Bands of Serra'kis
					i(6901),	-- Glowing Thresher Cape
				},
			}),
			e(1144, {	-- Executioner Gore
				creatureID = 74988,
				timeline = { ADDED_6_0_2 },
				groups = {
					i(120167),	-- Bloody Twilight Cloak
					i(120166),	-- Gorestained Garb
				},
			}),
			e(437, {	-- Twilight Lord Bathiel
				creatureID = 74728,
				timeline = { ADDED_6_0_2 },
				groups = {
					i(1155),	-- Rod of the Sleepwalker
					i(151440, {	-- Blackfathom Ascendant's Helm
						timeline = { ADDED_7_3_0 },
					}),
					i(151439, {	-- Bathiel's Scale Spaulders
						timeline = { ADDED_7_3_0 },
					}),
					i(6903),	-- Gaze Dreamer Pants
					i(151438, {	-- Hungering Deepwater Treads
						timeline = { ADDED_7_3_0 },
					}),
				},
			}),
			e(444, {	-- Aku'mai
				creatureID = 75408,
				timeline = { ADDED_6_0_2 },
				groups = {
					ach(632),	-- Blackfathom Deeps
					ach(5041),	-- Blackfathom Deeps Guild Run
					i(6909),	-- Strike of the Hydra
					i(6911),	-- Moss Cinch
					i(132553, {	-- Algae-Twined Waistcord
						timeline = { ADDED_7_0_3 },
					}),
					i(6910),	-- Leech Pants
					i(151441, {	-- Aku'mai Worshipper's Greatboots
						timeline = { ADDED_7_3_0 },
					}),
				},
			}),
		},
	}),
}));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.WOD, {
	inst(227, {
		q(35929),	-- Blackfathom Deeps Reward Quest - Normal completion
		q(35930),	-- Blackfathom Deeps (Bonus) Reward Quest
	}),
}));
