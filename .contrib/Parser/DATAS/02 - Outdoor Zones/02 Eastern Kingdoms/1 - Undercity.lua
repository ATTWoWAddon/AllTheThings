---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(EASTERN_KINGDOMS, {
	m(UNDERCITY, {
		["lore"] = "The Undercity is the capital city of the Forsaken undead of the Horde.\n\nFar beneath the ruined Capital City of the kingdom of Lordaeron, its royal crypts were turned into a bastion of evil and undeath. Originally intended by Prince Arthas to be the Scourge's seat of power, the budding \"Undercity\" was abandoned when Arthas was recalled to aid the Lich King in the distant Northrend. In Arthas' absence, the Dark Lady, Sylvanas Windrunner, led the rebel Forsaken to the Undercity, and claimed it for her own. Since taking up residence, the Forsaken worked to complete the Undercity's construction by dredging the twisted maze of catacombs, tombs, and dungeons that Arthas began.",
		["icon"] = 255133,
		-- #if AFTER BFA
		["maps"] = { 998 },	-- Undercity (Battle for Lordaeron scenario)
		-- #endif
		["isRaid"] = true,
		["groups"] = {
			n(ACHIEVEMENTS, {
				applyclassicphase(CATA_PHASE_ONE, ach(5850, {	-- Fish or Cut Bait: Undercity
					["timeline"] = { ADDED_4_2_0 },
					["requireSkill"] = FISHING,
					["races"] = HORDE_ONLY,
					["groups"] = {
						crit(17764, {	-- Fish Head
							["_quests"] = { 29317 },
						}),
						crit(17765, {	-- Tadpole Terror
							["_quests"] = { 29319 },
						}),
						crit(17766, {	-- Like Pike?
							["_quests"] = { 29320 },
						}),
						crit(17767, {	-- Time for Slime
							["_quests"] = { 29322 },
						}),
						crit(17768, {	-- Moat Monster!
							["_quests"] = { 29361 },
						}),
					},
				})),
				applyclassicphase(CATA_PHASE_ONE, ach(5844, {	-- Let's Do Lunch: Undercity
					["timeline"] = { ADDED_4_2_0 },
					["requireSkill"] = COOKING,
					["races"] = HORDE_ONLY,
					["groups"] = {
						crit(17738, {	-- Fungus Among Us
							["_quests"] = { 29315 },
						}),
						crit(17739, {	-- Lily, Oh Lily
							["_quests"] = { 29332 },
						}),
						crit(17740, {	-- Escargot A Go-Go
							["_quests"] = { 29333 },
						}),
						crit(17741, {	-- Roach Coach
							["_quests"] = { 29334 },
						}),
						crit(17742, {	-- Would You Like Some Flies With That?
							["_quests"] = { 29360 },
						}),
					},
				})),
			}),
			battlepets({
				["sym"] = {{"select","speciesID",
					450,	-- Maggot (PET!)
					424,	-- Roach (PET!)
				}},
				["groups"] = {
					pet(454),	-- Undercity Rat (PET!)
				},
			}),
			n(FACTIONS, {
				faction(FACTION_UNDERCITY, {	-- Undercity
					-- #if AFTER CATA
					["provider"] = { "i", 45583 },	-- Undercity Tabard
					-- #else
					["icon"] = 236458,
					-- #endif
					["OnTooltip"] = [[_.OnTooltipDB.RuneclothTurnIns]],
					["races"] = HORDE_ONLY,
				}),
			}),
			n(FLIGHT_PATHS, {
				fp(11, {	-- Undercity, Tirisfal
					["cr"] = 4551,	-- Michael Garrett <Bat Handler>
					["coord"] = { 63.6, 48.6, UNDERCITY },
					-- #if AFTER BFA
					["description"] = "Can be picked up only during Chromie time.",
					-- #endif
					["races"] = HORDE_ONLY,
				}),
			}),
			n(PROFESSIONS, {
				prof(TAILORING, {
					n(4578, {	-- Josephine Lister <Master Shadoweave Tailor>
						["coord"] = { 87.0, 20.8, UNDERCITY },
						["races"] = HORDE_ONLY,
						["groups"] = SHADOWEAVE_TAILORING_CLASSIC,
					}),
				}),
			}),
			n(QUESTS, {
				q(4294, {	-- ... and a Batch of Ooze
					["qg"] = 10136,	-- Chemist Fuely
					["coord"] = { 47.6, 73.0, UNDERCITY },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { UNGORO_CRATER },
					["races"] = HORDE_ONLY,
					["lvl"] = 48,
					["groups"] = {
						q(4561, {	-- Testing for Impurities - Un'Goro Crater
							["provider"] = { "o", 174848 },	-- Testing Equipment
							["coord"] = { 47.7, 73.3, UNDERCITY },
							["cost"] = { { "i", 12235, 1 } },	-- Un'Goro Slime Sample
							["races"] = HORDE_ONLY,
							["repeatable"] = true,
							["lvl"] = 48,
							["groups"] = {
								i(15102, {	-- Un'Goro Tested Sample
									["description"] = "Might contain nothing. Bring way more slime samples than you need.",
									["groups"] = {
										objective(1, {	-- 0/5 Pure Un'Goro Sample
											["questID"] = 4294,	-- ... and a Batch of Ooze
											["provider"] = { "i", 12236 },	-- Pure Un'Goro Sample
										}),
									},
								}),
							},
						}),
						i(12235, {	-- Un'Goro Slime Sample
							["description"] = "Bring at least 30 of these back with you to the Undercity for testing.",
							["crs"] = {
								6559,	-- Glutinous Ooze
								6556,	-- Muculent Ooze
								6557,	-- Primal Ooze
							},
						}),
					},
				}),
				q(38397, {	-- A Curious Oddity
					["sourceQuest"] = 38395,	-- Completionism
					["qg"] = 6566,	-- Estelle Gendry
					["coords"] = {
						{ 78.2, 75.6, UNDERCITY },
						{ 56.8, 89.8, ORGRIMMAR },
					},
					["timeline"] = {
						ADDED_6_1_0,
						REMOVED_9_0_1,	-- seems inadvertent, maybe blizzard will fix eventually
					},
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(122339, {	-- Ancient Heirloom Scabbard
							["timeline"] = { ADDED_6_1_0 },
						}),
					},
				}),
				q(7817, {	-- A Donation of Mageweave
					["qg"] = 14729,	-- Ralston Farnsley
					["coord"] = { 71.8, 29.0, UNDERCITY },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = { { "i", 4338, 60 } },	-- Mageweave Cloth
					["races"] = HORDE_ONLY,
					["lvl"] = 40,
				}),
				q(7818, {	-- A Donation of Runecloth
					["qg"] = 14729,	-- Ralston Farnsley
					["coord"] = { 71.8, 29.0, UNDERCITY },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = { { "i", 14047, 60 } },	-- Runecloth
					["races"] = HORDE_ONLY,
					["lvl"] = 50,
				}),
				q(7814, {	-- A Donation of Silk
					["qg"] = 14729,	-- Ralston Farnsley
					["coord"] = { 71.8, 29.0, UNDERCITY },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = { { "i", 4306, 60 } },	-- Silk Cloth
					["races"] = HORDE_ONLY,
					["lvl"] = 26,
				}),
				q(7813, {	-- A Donation of Wool
					["qg"] = 14729,	-- Ralston Farnsley
					["coord"] = { 71.8, 29.0, UNDERCITY },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = { { "i", 2592, 60 } },	-- Wool Cloth
					["races"] = HORDE_ONLY,
					["lvl"] = 12,
				}),
				q(4293, {	-- A Sample of Slime...
					["qg"] = 10136,	-- Chemist Fuely
					["coord"] = { 47.6, 73.0, UNDERCITY },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { FELWOOD },
					["races"] = HORDE_ONLY,
					["lvl"] = 48,
					["groups"] = {
						q(4661, {	-- Testing for Corruption - Felwood
							["provider"] = { "o", 174848 },	-- Testing Equipment
							["coord"] = { 47.7, 73.3, UNDERCITY },
							["cost"] = { { "i", 12230, 1 } },	-- Felwood Slime Sample
							["races"] = HORDE_ONLY,
							["repeatable"] = true,
							["lvl"] = 48,
							["groups"] = {
								i(15103, {	-- Corrupt Tested Sample
									["description"] = "Might contain nothing. Bring way more slime samples than you need.",
									["groups"] = {
										objective(1, {	-- 0/5 Corrupted Felwood Sample
											["questID"] = 4293,	-- A Sample of Slime...
											["provider"] = { "i", 12234 },	-- Corrupted Felwood Sample
										}),
									},
								}),
							},
						}),
						i(12230, {	-- Felwood Slime Sample
							["description"] =
								-- #if AFTER WRATH
								"Bring at least 15 of these back with you to the Undercity for testing.",
								-- #else
								"Bring at least 30 of these back with you to the Undercity for testing.",
								-- #endif
							["crs"] = {
								7086,	-- Cursed Ooze
								7092,	-- Tainted Ooze
								14345,	-- The Ongar
							},
						}),
					},
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_ONE, q(78277, {	-- A Token of Gratitude
					["sourceQuest"] = 491,	-- Wand to Bethor
					["qg"] = 1498,	-- Bethor Iceshard
					["coord"] = { 84.2, 17.4, UNDERCITY },
					["timeline"] = { REMOVED_2_0_1 },
					["classes"] = { MAGE },
					["races"] = HORDE_ONLY,
					["lvl"] = 12,
					["groups"] = {
						recipe(415936, {	-- Engrave Gloves - Living Bomb
							["classes"] = { MAGE },
						}),
					},
				})),
				-- #endif
				q(7819, {	-- Additional Runecloth [Undercity]
					["sourceQuest"] = 7818,	-- A Donation of Runecloth
					["qg"] = 14729,	-- Ralston Farnsley
					["coord"] = { 71.8, 29.0, UNDERCITY },
					["maxReputation"] = { FACTION_UNDERCITY, EXALTED },	-- Undercity, Exalted.
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = { { "i", 14047, 20 } },	-- Runecloth
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["lvl"] = 50,
				}),
				q(1847, {	-- Brutal Legguards
					["sourceQuest"] = 1846,	-- Dragonmaw Shinbones
					["qg"] = 6411,	-- Velora Nitely
					["coord"] = { 62.4, 39.2, UNDERCITY },
					["timeline"] = { REMOVED_4_0_3 },
					["classes"] = { WARRIOR },
					["races"] = HORDE_ONLY,
					["lvl"] = 20,
					["groups"] = {
						i(7132, {	-- Brutal Legguards
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(38395, {	-- Completionism
					["sourceQuest"] = 38346,	-- Numismatics
					["qg"] = 6566,	-- Estelle Gendry
					["coords"] = {
						{ 78.2, 75.6, UNDERCITY },
						{ 56.8, 89.8, ORGRIMMAR },
					},
					["timeline"] = {
						ADDED_6_1_0,
						REMOVED_9_0_1,	-- seems inadvertent, maybe blizzard will fix eventually
					},
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(122340, {	-- Timeworn Heirloom Armor Casing
							["timeline"] = { ADDED_6_1_0 },
						}),
					},
				}),
				q(1473, {	-- Creature of the Void [Undercity]
					["sourceQuest"] = 1478,	-- Halgar's Summons
					["altQuests"] = { 1501 },	-- Creature of the Void [Orgrimmar]
					["qg"] = 5675,	-- Carendin Halgar
					["coord"] = { 85.0, 25.6, UNDERCITY },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { TIRISFAL_GLADES },
					["races"] = { ORC, UNDEAD },
					["classes"] = { WARLOCK },
					["lvl"] = 10,
					["groups"] = {
						objective(1, {	-- 0/1 Egalin's Grimoire
							["provider"] = { "i", 6285 },	-- Egalin's Grimoire
							["coord"] = { 51.1, 67.6, TIRISFAL_GLADES },
						}),
					},
				}),
				q(9189, {	-- Delivery to the Sepulcher
					["sourceQuest"] = 9180,	-- Journey to Undercity [Blood Elf Only]
					["providers"] = {
						{ "n", 16287 },	-- Ambassador Sunsorrow
						{ "i", 22629 },	-- Sealed Sin'dorei Orders
					},
					["coord"] = { 57.8, 90.6, UNDERCITY },
					["timeline"] = { ADDED_3_3_0, REMOVED_4_0_3 },
					["races"] = { BLOODELF },
					["lvl"] = lvlsquish(15, 15, 1),
				}),
				q(1507, {	-- Devourer of Souls [Orgrimmar]
					["altQuests"] = { 1472 },	-- Devourer of Souls [Undercity]
					["qg"] = 5875,	-- Dan'rul Bloodeye
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = { ORC, UNDEAD },
					["classes"] = { WARLOCK },
					["isBreadcrumb"] = true,
					["lvl"] = 20,
				}),
				q(1472, {	-- Devourer of Souls [Undercity]
					["altQuests"] = { 1507 },	-- Devourer of Souls [Orgrimmar]
					["qg"] = 5675,	-- Carendin Halgar
					["coord"] = { 85.0, 25.6, UNDERCITY },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = { ORC, UNDEAD },
					["classes"] = { WARLOCK },
					["isBreadcrumb"] = true,
					["lvl"] = 20,
				}),
				-- #if ANYCLASSIC
				q(5679, {	-- Devouring Plague [Undercity]
					["altQuests"] = {
						5646,	-- Devouring Plague [Orgrimmar]
						5644,	-- Devouring Plague [Thunder Bluff]
					},
					["qgs"] = {
						4606,	-- Aelthalyste
						6018,	-- Ur'kyo <Priest Trainer>
						3044,	-- Miles Welsh <Priest Trainer>
					},
					["coords"] = {
						{ 49.0, 18.3, UNDERCITY },
						{ 35.6, 87.6, ORGRIMMAR },
						{ 26.0, 15.8, THUNDER_BLUFF },
					},
					["timeline"] = { REMOVED_3_0_2 },
					["classes"] = { PRIEST },
					["races"] = { UNDEAD },
					["lvl"] = 20,
					-- #if BEFORE 3.0.2
					["groups"] = {
						{
							["recipeID"] = 2944,	-- Devouring Plague (Rank 1)
							["rank"] = 1,
						},
					},
					-- #endif
				}),
				-- #endif
				-- #if NOT ANYCLASSIC
				q(5679, {	-- Devouring Plague [Undercity]
					["altQuests"] = {
						5646,	-- Devouring Plague [Orgrimmar]
						5644,	-- Devouring Plague [Thunder Bluff]
					},
					["qg"] = 4606,	-- Aelthalyste
					["coord"] = { 49.01, 18.32, UNDERCITY },
					["timeline"] = { REMOVED_3_0_2 },
					["classes"] = { PRIEST },
					["races"] = { UNDEAD },
					["lvl"] = 20,
					-- #if BEFORE 3.0.2
					["groups"] = {
						{
							["recipeID"] = 2944,	-- Devouring Plague (Rank 1)
							["rank"] = 1,
						},
					},
					-- #endif
				}),
				-- #endif
				q(1846, {	-- Dragonmaw Shinbones
					["sourceQuest"] = 1841,	-- Velora Nitely and the Brutal Legguards
					["qg"] = 6411,	-- Velora Nitely
					["coord"] = { 62.4, 39.2, UNDERCITY },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { WETLANDS },
					["classes"] = { WARRIOR },
					["races"] = HORDE_ONLY,
					["lvl"] = 20,
					["groups"] = {
						objective(1, {	-- 0/8 Sturdy Dragonmaw Shinbone
							["provider"] = { "i", 7134 },	-- Sturdy Dragonmaw Shinbone
							["cost"] = { { "i", 7131, 1 } },	-- Dragonmaw Shinbone
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
				q(232, {	-- Errand for Apothecary Zinge (1/2)
					["providers"] = {
						{ "n", 5204 },	-- Apothecary Zinge
						{ "i", 8525 },	-- Zinge's Purchase Order
					},
					["coord"] = { 50.0, 68.4, UNDERCITY },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 38,
				}),
				q(238, {	-- Errand for Apothecary Zinge (2/2)
					["sourceQuest"] = 232,	-- Errand for Apothecary Zinge (1/2)
					["providers"] = {
						{ "n", 7683 },	-- Alessandro Luca
						{ "i", 8523 },	-- Field Testing Kit
					},
					["coord"] = { 58.2, 55.2, UNDERCITY },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 38,
				}),
				q(29333, {	-- Escargot A Go-Go
					["qg"] = 4552,	-- Eunice Burch
					["coord"] = { 62.2, 44.6, UNDERCITY },
					["timeline"] = { ADDED_4_1_0 },
					["requireSkill"] = COOKING,
					["races"] = HORDE_ONLY,
					["isDaily"] = true,
					["groups"] = {
						COOKING_AWARD,
					},
				}),
				q(1998, {	-- Fenwick Thatros
					["qg"] = 6467,	-- Mennet Carkad
					["coord"] = { 83.6, 67.6, UNDERCITY },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { SILVERPINE_FOREST },
					["races"] = { UNDEAD },
					["classes"] = { ROGUE },
					["lvl"] = 16,
					["groups"] = {
						objective(1, {	-- 0/1 Fenwick's Head
							["provider"] = { "i", 7306 },	-- Fenwick's Head
							["coord"] = { 59.6, 34.2, SILVERPINE_FOREST },
							["cr"] = 6570,	-- Fenwick Thatros
						}),
					},
				}),
				q(29317, {	-- Fish Head
					["qg"] = 4573,	-- Armand Cromwell
					["coord"] = { 80.7, 31.2, UNDERCITY },
					["timeline"] = { ADDED_4_1_0 },
					["requireSkill"] = FISHING,
					["races"] = HORDE_ONLY,
					["isDaily"] = true,
					["groups"] = {
						i(67414),	-- Bag of Shiny Things
					},
				}),
				q(29315, {	-- Fungus Among Us
					["qg"] = 4552,	-- Eunice Burch
					["coord"] = { 62.2, 44.6, UNDERCITY },
					["timeline"] = { ADDED_4_1_0 },
					["requireSkill"] = COOKING,
					["races"] = HORDE_ONLY,
					["isDaily"] = true,
					["groups"] = {
						COOKING_AWARD,
					},
				}),
				q(1961, {	-- Gathering Materials
					["sourceQuest"] = 1960,	-- Investigate the Alchemist Shop
					["qg"] = 4568,	-- Anastasia Hartwell <Mage Trainer>
					["coord"] = { 85.0, 10.2, UNDERCITY },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { SILVERPINE_FOREST },
					["cost"] = { { "i", 2589, 10 } },	-- Linen Cloth
					["races"] = HORDE_ONLY,
					["classes"] = { MAGE },
					["lvl"] = 15,
					["groups"] = {
						objective(2, {	-- 0/6 Dalaran Mana Gem
							["provider"] = { "i", 7293 },	-- Dalaran Mana Gem
							["crs"] = {
								1867,	-- Dalaran Apprentice
								3577,	-- Dalaran Brewmaster
								1915,	-- Dalaran Conjuror
								1914,	-- Dalaran Mage
								3578,	-- Dalaran Miner
								1912,	-- Dalaran Protector
								1913,	-- Dalaran Warder
								1888,	-- Dalaran Watcher
								1889,	-- Dalaran Wizard
							},
						}),
					},
				}),
				q(1478, {	-- Halgar's Summons
					["altQuests"] = { 1506 },	-- Gan'rul's Summons
					["qg"] = 5724,	-- Ageron Kargal
					["coord"] = { 61.6, 52.6, TIRISFAL_GLADES },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = { ORC, UNDEAD },
					["classes"] = { WARLOCK },
					["lvl"] = 10,
				}),
				-- #if ANYCLASSIC
				q(65593, {	-- Hearts of the Lovers
					["altQuests"] = { 65610 },	-- Wish You Were Here
					["qg"] = 5675,	-- Carendin Halgar
					["coord"] = { 85.0, 25.6, UNDERCITY },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { THE_BARRENS, SILVERPINE_FOREST },
					["classes"] = { WARLOCK },
					["races"] = HORDE_ONLY,
					["lvl"] = 20,
					["groups"] = {
						objective(1, {	-- 0/1 Avelina's Heart
							["provider"] = { "i", 190179 },	-- Avelina's Heart
							["coord"] = { 63.6, 65.6, SILVERPINE_FOREST },
							["cr"] = 185333,	-- Avelina Lilly
						}),
						objective(2, {	-- 0/1 Isaac's Heart
							["provider"] = { "i", 190180 },	-- Isaac's Heart
							["coord"] = { 61.8, 38.6, THE_BARRENS },
							["cr"] = 185334,	-- Isaac Pearson
						}),
					},
				}),
				-- #endif
				q(1476, {	-- Hearts of the Pure
					["sourceQuests"] = {
						1507,	-- Devourer of Souls [Orgrimmar]
						1472,	-- Devourer of Souls [Undercity]
					},
					["qg"] = 5693,	-- Godrick Farsan
					["coord"] = { 85.0, 14.8, UNDERCITY },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { SILVERPINE_FOREST, WETLANDS },
					["classes"] = { WARLOCK },
					["races"] = { ORC, UNDEAD },
					["lvl"] = 20,
					["groups"] = {
						objective(1, {	-- 0/1 Dalin's Heart
							["provider"] = { "i", 6312 },	-- Dalin's Heart
							["coord"] = { 46.6, 84.2, SILVERPINE_FOREST },
							["cr"] = 5682,	-- Dalin Forgewright
						}),
						objective(2, {	-- 0/1 Comar's Heart
							["provider"] = { "i", 6313 },	-- Comar's Heart
							["coord"] = { 50.6, 12.6, WETLANDS },
							["cr"] = 5683,	-- Comar Villard
						}),
					},
				}),
				-- #if NOT ANYCLASSIC
				q(5657, {	-- Hex of Weakness [Undercity]
					["altQuests"] = {
						5652,	-- Hex of Weakness [Orgrimmar]
						5654,	-- Hex of Weakness [Durotar]
						5655,	-- Hex of Weakness [Mulgore]
						5656,	-- Hex of Weakness [Thunder Bluff]
					},
					["qg"] = 4606,	-- Aelthalyste <Priest Trainer>
					["coord"] = { 49.01, 18.32, UNDERCITY },
					["timeline"] = { REMOVED_2_4_1 },
					["classes"] = { PRIEST },
					["races"] = { TROLL },
					["lvl"] = 10,
					-- #if BEFORE 3.0.2
					["groups"] = {
						{
							["recipeID"] = 9035,	-- Hex of Weakness (Rank 1)
							["rank"] = 1,
						},
					},
					-- #endif
				}),
				-- #endif
				q(243, {	-- Into the Field
					["sourceQuest"] = 238,	-- Errand for Apothecary Zinge (2/2)
					["providers"] = {
						{ "n", 5204 },	-- Apothecary Zinge
						{ "i", 8523 },	-- Field Testing Kit
					},
					["coord"] = { 50.1, 68.0, UNDERCITY },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { TANARIS },
					["races"] = HORDE_ONLY,
					["lvl"] = 38,
				}),
				q(1960, {	-- Investigate the Alchemist Shop
					["sourceQuest"] = 1959,	-- Report to Anastasia
					["qg"] = 4568,	-- Anastasia Hartwell <Mage Trainer>
					["coord"] = { 85.0, 10.2, UNDERCITY },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["classes"] = { MAGE },
					["lvl"] = 15,
					["groups"] = {
						objective(1, {	-- 0/3 Filled Containment Coffer
							["providers"] = {
								{ "i",   7292 },	-- Filled Containment Coffer
								{ "o", 103574 },	-- Filled Containment Coffer
								{ "i",   7247 },	-- Chest of Containment Coffers
								{ "i",   7308 },	-- Cantation of Manifestation
							},
							["coord"] = { 53.9, 73.2, UNDERCITY },
							["cr"] = 6492,	-- Rift Spawn
						}),
						objective(2, {	-- 0/1 Chest of Containment Coffers
							["providers"] = {
								{ "i",   7247 },	-- Chest of Containment Coffers
								{ "o", 105174 },	-- Chest of Containment Coffers
							},
							["coord"] = { 85.4, 10.2, UNDERCITY },
						}),
						objective(3, {	-- 0/1 Cantation of Manifestation
							["providers"] = {
								{ "i",   7308 },	-- Cantation of Manifestation
								{ "o", 105175 },	-- Cantation of Manifestation
							},
							["coord"] = { 85.4, 10.2, UNDERCITY },
						}),
					},
				}),
				q(29320, {	-- Like Pike?
					["qg"] = 4573,	-- Armand Cromwell
					["coord"] = { 80.7, 31.2, UNDERCITY },
					["timeline"] = { ADDED_4_1_0 },
					["requireSkill"] = FISHING,
					["races"] = HORDE_ONLY,
					["isDaily"] = true,
					["groups"] = {
						i(69907),	-- Corpse Worm
						i(67414),	-- Bag of Shiny Things
					},
				}),
				q(29332, {	-- Lily, Oh Lily
					["qg"] = 4552,	-- Eunice Burch
					["coord"] = { 62.2, 44.6, UNDERCITY },
					["timeline"] = { ADDED_4_1_0 },
					["requireSkill"] = COOKING,
					["races"] = HORDE_ONLY,
					["isDaily"] = true,
					["groups"] = {
						COOKING_AWARD,
					},
				}),
				q(2995, {	-- Lines of Communication
					["qg"] = 7825,	-- Oran Snakewrithe
					["coord"] = { 73.3, 32.4, UNDERCITY },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { THE_HINTERLANDS },
					["races"] = HORDE_ONLY,
					["lvl"] = 42,
					["groups"] = {
						objective(1, {	-- Burn the Highvale Records
							["coord"] = { 32.0, 46.9, THE_HINTERLANDS },
						}),
						objective(2, {	-- Burn the Highvale Notes
							["coord"] = { 29.7, 48.5, THE_HINTERLANDS },
						}),
						objective(3, {	-- Burn the Highvale Report
							["coord"] = { 28.7, 46.1, THE_HINTERLANDS },
						}),
					},
				}),
				q(4642, {	-- Melding of Influences
					["sourceQuests"] = {
						4294,	-- ... and a Batch of Ooze
						4293,	-- A Sample of Slime...
					},
					["qg"] = 10136,	-- Chemist Fuely
					["coord"] = { 47.6, 73.0, UNDERCITY },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { UNGORO_CRATER },
					["races"] = HORDE_ONLY,
					["lvl"] = 48,
					["groups"] = {
						objective(1, {	-- 0/1 Merged Ooze Sample
							["provider"] = { "i", 12291 },	-- Merged Ooze Sample
							["cost"] = { { "i", 12288, 1 } },	-- Encased Corrupt Ooze
							["crs"] = {
								6557,	-- Primal Ooze
								9621,	-- Gargantuan Ooze
							},
						}),
						i(15702, {	-- Chemist's Ring
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(15703, {	-- Chemist's Smock
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(1885, {	-- Mennet Carkad
					["qg"] = 2130,	-- Marion Call
					["coord"] = { 61.6, 52.0, TIRISFAL_GLADES },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = { UNDEAD },
					["classes"] = { ROGUE },
					["isBreadcrumb"] = true,
					["lvl"] = 10,
				}),
				q(6322, {	-- Michael Garrett
					["sourceQuest"] = 6323,	-- Ride to the Undercity
					["providers"] = {
						{ "n", 4556 },	-- Gordon Wendham
						{ "i", 16210 },	-- Gordon's Crate
					},
					["coord"] = { 61.6, 41.8, UNDERCITY },
					["maps"] = { SILVERPINE_FOREST },
					["races"] = { UNDEAD },
					["lvl"] = 10,
				}),
				q(29361, {	-- Moat Monster!
					["qg"] = 4573,	-- Armand Cromwell
					["coord"] = { 80.7, 31.2, UNDERCITY },
					["timeline"] = { ADDED_4_1_0 },
					["requireSkill"] = FISHING,
					["races"] = HORDE_ONLY,
					["isDaily"] = true,
					["groups"] = {
						i(69999, {	-- Moat Monster Feeding Kit
							i(69995),	-- Bloated Frog
							i(69998),	-- Alliance Decoy Kit
						}),
						i(67414),	-- Bag of Shiny Things
					},
				}),
				q(38346, {	-- Numismatics
					["sourceQuest"] = 38306,	-- Mystery Notebook
					["qg"] = 6566,	-- Estelle Gendry
					["coords"] = {
						{ 78.2, 75.6, UNDERCITY },
						{ 56.8, 89.8, ORGRIMMAR },
					},
					["timeline"] = {
						ADDED_6_1_0,
						REMOVED_9_0_1,	-- seems inadvertent, maybe blizzard will fix eventually
					},
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(122338, {	-- Ancient Heirloom Armor Casing
							["timeline"] = { ADDED_6_1_0 },
						}),
					},
				}),
				q(8273, {	-- Oran's Gratitude
					["sourceQuest"] = 2782,	-- Rin'ji's Secret
					["qg"] = 7825,	-- Oran Snakewrithe
					["coord"] = { 73.4, 32.4, UNDERCITY },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 42,
					["groups"] = {
						i(20643, {	-- Undercity Reservist's Cap
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(20642, {	-- Antiquated Nobleman's Tunic
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(1959, {	-- Report to Anastasia
					["qgs"] = {
						7311,	-- Uthel'nay <Mage Trainer>
						3049,	-- Thurston Xane <Mage Trainer>
					},
					["coords"] = {
						{ 39.0, 86.0, ORGRIMMAR },
						{ 25.0, 20.6, THUNDER_BLUFF },
					},
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["classes"] = { MAGE },
					["isBreadcrumb"] = true,
					["lvl"] = 15,
				}),
				q(6324, {	-- Return to Morris [CATA+] / Return to Podrig
					["sourceQuest"] = 6322,	-- Michael Garrett
					["providers"] = {
						{ "n", 4551 },	-- Michael Garrett
						{ "i", 16210 },	-- Gordon's Crate
					},
					["coord"] = { 63.4, 48.6, UNDERCITY },
					["maps"] = {
						-- #if AFTER CATA
						TIRISFAL_GLADES,
						-- #else
						SILVERPINE_FOREST,
						-- #endif
					},
					["races"] = { UNDEAD },
					["lvl"] = lvlsquish(10, 10, 1),
				}),
				q(29334, {	-- Roach Coach
					["qg"] = 4552,	-- Eunice Burch
					["coord"] = { 62.2, 44.6, UNDERCITY },
					["timeline"] = { ADDED_4_1_0 },
					["requireSkill"] = COOKING,
					["races"] = HORDE_ONLY,
					["isDaily"] = true,
					["groups"] = {
						COOKING_AWARD,
					},
				}),
				q(1358, {	-- Sample for Helbrim
					["sourceQuest"] = 1359,	-- Zinge's Delivery
					["providers"] = {
						{ "n", 5204 },	-- Apothecary Zinge
						{ "i", 6016 },	-- Wolf Heart Sample
					},
					["coord"] = { 50.0, 68.4, UNDERCITY },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 10,
					["groups"] = {
						i(10637, {	-- Brewer's Gloves
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(10638, {	-- Long Draping Cape
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_ONE, q(78198, {	-- Secrets of the Loa (1/2)
					["qg"] = 211225,	-- Baj'ura
					["coord"] = { 47.2, 19.6, UNDERCITY },
					["timeline"] = { REMOVED_2_0_1 },
					["maps"] = { HILLSBRAD_FOOTHILLS },
					["classes"] = { PRIEST },
					["races"] = { UNDEAD },
					["lvl"] = 18,
					["groups"] = {
						objective(1, {	-- 0/14 Hillsbrad Human Bones
							["provider"] = { "i", 210055 },	-- Hillsbrad Human Bones
							["coord"] = { 34.4, 40.8, HILLSBRAD_FOOTHILLS },
							["crs"] = {
								2360,	-- Hillsbrad Farmhand
								2266,	-- Hillsbrad Farmer
								2267,	-- Hillsbrad Peasant
								2268,	-- Hillsbrad Footman
							},
						}),
					},
				})),
				applyclassicphase(SOD_PHASE_ONE, q(78199, {	-- Secrets of the Loa (2/2)
					["description"] = "Completing this quest will allow you to meditate in the same manner as the trolls.",
					["sourceQuest"] = 78198,	-- Secrets of the Loa (1/2)
					["providers"] = {
						{ "n", 211225 },	-- Baj'ura
						{ "i", 210080 },	-- Voodoo Offering
					},
					["coord"] = { 47.2, 19.6, UNDERCITY },
					["timeline"] = { REMOVED_2_0_1 },
					["maps"] = { DUROTAR },
					["classes"] = { PRIEST },
					["races"] = { UNDEAD },
					["lvl"] = 18,
					["groups"] = {
						recipe(424037, {	-- Secrets of the Loa
							["classes"] = { PRIEST },
						}),
					},
				})),
				-- #endif
				q(3568, {	-- Seeping Corruption (1/3)
					["qg"] = 10136,	-- Chemist Fuely
					["coord"] = { 47.6, 73.0, UNDERCITY },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { AZSHARA },
					["races"] = HORDE_ONLY,
					["lvl"] = 45,
					["groups"] = {
						objective(1, {	-- 0/1 Filled Vial Labeled #1
							["provider"] = { "i", 10691 },	-- Filled Vial Labeled #1
							["cost"] = { { "i", 10687, 1 } },	-- Empty Vial Labeled #1
							["coord"] = { 48.0, 60.0, AZSHARA },
						}),
						objective(2, {	-- 0/1 Filled Vial Labeled #2
							["provider"] = { "i", 10692 },	-- Filled Vial Labeled #2
							["cost"] = { { "i", 10688, 1 } },	-- Empty Vial Labeled #2
							["coord"] = { 47.0, 51.0, AZSHARA },
						}),
						objective(3, {	-- 0/1 Filled Vial Labeled #3
							["provider"] = { "i", 10693 },	-- Filled Vial Labeled #3
							["cost"] = { { "i", 10689, 1 } },	-- Empty Vial Labeled #3
							["coord"] = { 48.0, 48.0, AZSHARA },
						}),
						objective(4, {	-- 0/1 Filled Vial Labeled #4
							["provider"] = { "i", 10694 },	-- Filled Vial Labeled #4
							["cost"] = { { "i", 10690, 1 } },	-- Empty Vial Labeled #4
							["coord"] = { 47.0, 46.0, AZSHARA },
						}),
						i(10695, {	-- Box of Empty Vials
							i(10687),	-- Empty Vial Labeled #1
							i(10688),	-- Empty Vial Labeled #2
							i(10689),	-- Empty Vial Labeled #3
							i(10690),	-- Empty Vial Labeled #4
						}),
					},
				}),
				q(3569, {	-- Seeping Corruption (2/3)
					["sourceQuest"] = 3568,	-- Seeping Corruption (1/3)
					["providers"] = {
						{ "n", 10136 },	-- Chemist Fuely
						{ "i", 10712 },	-- Cuely's Elixir
					},
					["coord"] = { 47.6, 73.0, UNDERCITY },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 45,
				}),
				q(3570, {	-- Seeping Corruption (3/3)
					["sourceQuest"] = 3569,	-- Seeping Corruption (2/3)
					["qg"] = 10136,	-- Chemist Fuely
					["coord"] = { 47.6, 73.0, UNDERCITY },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 45,
				}),
				-- #if NOT ANYCLASSIC
				q(5643, {	-- Shadowguard [Undercity]
					["altQuests"] = {
						5680,	-- Shadowguard [Orgrimmar]
						5642,	-- Shadowguard [Thunder Bluff]
					},
					["qg"] = 4606,	-- Aelthalyste
					["coord"] = { 49.01, 18.32, UNDERCITY },
					["timeline"] = { REMOVED_2_4_1 },
					["classes"] = { PRIEST },
					["races"] = { TROLL },
					["lvl"] = 20,
					-- #if BEFORE 2.4.1
					["groups"] = {
						{
							["recipeID"] = 18137,	-- Shadowguard (Rank 1)
							["rank"] = 1,
						},
					},
					-- #endif
				}),
				-- #endif
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_ONE, q(79080, {	-- Sharing the Faith
					["qg"] = 4607,	-- Father Lankester <Priest Trainer>
					["coord"] = { 49.6, 15.6, UNDERCITY },
					["timeline"] = { REMOVED_2_0_1 },
					["maps"] = { TIRISFAL_GLADES },
					["classes"] = { PRIEST },
					["races"] = { UNDEAD },
					["lvl"] = 5,
					["groups"] = {
						objective(1, {	-- Pray over the Supplicant
							["provider"] = { "n", 215098 },	-- Supplicant
							["description"] = "You must first have your Meditation buff and then use /pray on the kneeling Supplicant.",
						}),
					},
				})),
				-- #endif
				q(1881, {	-- Speak with Anastasia
					["altQuests"] = { 1883 },	-- Speak with Un'thuwa
					["qg"] = 2128,	-- Cain Firesong <Mage Trainer>
					["coord"] = { 61.8, 52.4, TIRISFAL_GLADES },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = { UNDEAD, TROLL },
					["classes"] = { MAGE },
					["isBreadcrumb"] = true,
					["lvl"] = 10,
				}),
				q(1962, {	-- Spellfire Robes
					["sourceQuest"] = 1961,	-- Gathering Materials
					["qg"] = 11049,	-- Rhiannon Davis <Expert Tailor>
					["coord"] = { 70.2, 30.2, UNDERCITY },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["classes"] = { MAGE },
					["lvl"] = 15,
					["groups"] = {
						i(7510, {	-- Lesser Spellfire Robes
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(29319, {	-- Tadpole Terror
					["qg"] = 4573,	-- Armand Cromwell
					["coord"] = { 80.7, 31.2, UNDERCITY },
					["timeline"] = { ADDED_4_1_0 },
					["requireSkill"] = FISHING,
					["races"] = HORDE_ONLY,
					["isDaily"] = true,
					["groups"] = {
						i(67414),	-- Bag of Shiny Things
					},
				}),
				q(1882, {	-- The Balnir Farmstead
					["sourceQuests"] = {
						1881,	-- Speak with Anastasia
						1883,	-- Speak with Un'thuwa
					},
					["qg"] = 4568,	-- Anastasia Hartwell <Mage Trainer>
					["coord"] = { 85.0, 10.2, UNDERCITY },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { TIRISFAL_GLADES },
					["races"] = { UNDEAD, TROLL },
					["classes"] = { MAGE },
					["lvl"] = 10,
					["groups"] = {
						objective(1, {	-- 0/1 Balnir Snapdragons
							["providers"] = {
								{ "i",   7227 },	-- Balnir Snapdragons
								{ "o", 102985 },	-- Balnir Snapdragons
							},
							["coord"] = { 77.4, 62.1, TIRISFAL_GLADES },
						}),
						i(7507, {	-- Arcane Orb
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(9514, {	-- Arcane Staff
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				-- #if ANYCLASSIC
				q(65597, {	-- The Binding (Incubus) [Undercity]
					["sourceQuest"] = 65593,	-- Hearts of the Lovers
					["altQuests"] = { 65604 },	-- The Binding (Incubus) [Orgrimmar]
					["qg"] = 5675,	-- Carendin Halgar
					["coord"] = { 85.0, 25.6, UNDERCITY },
					["timeline"] = { REMOVED_4_0_3 },
					["classes"] = { WARLOCK },
					["races"] = HORDE_ONLY,
					["lvl"] = 20,
					["groups"] = {
						objective(1, {	-- 0/1 Summoned Incubus slain
							["provider"] = { "n", 185335 },	-- Summoned Incubus
							["cost"] = { { "i", 190181, 1 } },	-- Lovers' Hearts
						}),
						-- #if BEFORE 4.0.3
						recipe(713),	-- Summon Incubus
						-- #endif
						i(22243, {	-- Small Soul Pouch
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				-- #endif
				q(1474, {	-- The Binding (Succubus) [Undercity]
					["sourceQuest"] = 1476,	-- Hearts of the Pure
					["altQuests"] = { 1513 },	-- The Binding (Succubus) [Orgrimmar]
					["qg"] = 5675,	-- Carendin Halgar
					["coord"] = { 85.0, 25.6, UNDERCITY },
					["timeline"] = { REMOVED_4_0_3 },
					["classes"] = { WARLOCK },
					["races"] = HORDE_ONLY,
					["lvl"] = 20,
					["groups"] = {
						objective(1, {	-- 0/1 Summoned Succubus slain
							["provider"] = { "n", 5677 },	-- Summoned Succubus
							["cost"] = { { "i", 6286, 1 } },	-- Pure Hearts
						}),
						-- #if BEFORE 4.0.3
						recipe(712),	-- Summon Succubus
						-- #endif
						i(22243, {	-- Small Soul Pouch
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(1471, {	-- The Binding (Voidwalker) [Undercity]
					["sourceQuest"] = 1473,	-- Creature of the Void [Undercity]
					["altQuests"] = { 1504 },	-- The Binding (Voidwalker) [Orgrimmar]
					["qg"] = 5675,	-- Carendin Halgar
					["coord"] = { 85.0, 25.6, UNDERCITY },
					["timeline"] = { REMOVED_4_0_3 },
					["classes"] = { WARLOCK },
					["races"] = { ORC, UNDEAD },
					["lvl"] = 10,
					["groups"] = {
						objective(1, {	-- 0/1 Summoned Voidwalker slain
							["provider"] = { "n", 5676 },	-- Summoned Voidwalker
							["cost"] = { { "i", 6284, 1 } },	-- Runes of Summoning
						}),
						-- #if BEFORE 4.0.3
						recipe(697),	-- Summon Voidwalker
						-- #endif
					},
				}),
				q(1886, {	-- The Deathstalkers (1/4)
					["sourceQuest"] = 1885,	-- Mennet Carkad
					["qg"] = 6467,	-- Mennet Carkad
					["coord"] = { 83.2, 69.0, UNDERCITY },
					["timeline"] = { REMOVED_3_3_0 },
					["maps"] = { SILVERPINE_FOREST },
					["races"] = { UNDEAD },
					["classes"] = { ROGUE },
					["lvl"] = 10,
					["groups"] = {
						objective(1, {	-- 0/1 Astor's Letter of Introduction
							["provider"] = { "i", 7231 },	-- Astor's Letter of Introduction
							["coords"] = {
								{ 67.4, 5.6, SILVERPINE_FOREST },
								{ 53.6, 19.5, SILVERPINE_FOREST },
								{ 51.0, 36.2, SILVERPINE_FOREST },
								{ 46.4, 41.4, SILVERPINE_FOREST },
							},
							["cr"] = 6497,	-- Astor Hadren
						}),
					},
				}),
				q(1898, {	-- The Deathstalkers (2/4)
					["sourceQuest"] = 1886,	-- The Deathstalkers (1/4)
					["providers"] = {
						{ "n", 6467 },	-- Mennet Carkad
						{ "i", 7231 },	-- Astor's Letter of Introduction
					},
					["coord"] = { 83.2, 69.0, UNDERCITY },
					["timeline"] = { REMOVED_3_3_0 },
					["races"] = { UNDEAD },
					["classes"] = { ROGUE },
					["lvl"] = 10,
				}),
				q(1899, {	-- The Deathstalkers (3/4)
					["sourceQuest"] = 1898,	-- The Deathstalkers (2/4)
					["qg"] = 6522,	-- Andron Gant
					["coord"] = { 54.6, 75.6, UNDERCITY },
					["timeline"] = { REMOVED_3_3_0 },
					["races"] = { UNDEAD },
					["classes"] = { ROGUE },
					["lvl"] = 10,
					["groups"] = {
						objective(1, {	-- 0/1 Andron's Ledger
							["provider"] = { "i", 7294 },	-- Andron's Ledger
							["coord"] = { 55.3, 76.7, UNDERCITY },
						}),
					},
				}),
				q(1978, {	-- The Deathstalkers (4/4)
					["sourceQuest"] = 1899,	-- The Deathstalkers (3/4)
					["providers"] = {
						{ "n", 6467 },	-- Mennet Carkad
						{ "i", 7294 },	-- Andron's Ledger
					},
					["coord"] = { 83.2, 69.0, UNDERCITY },
					["timeline"] = { REMOVED_3_3_0 },
					["races"] = { UNDEAD },
					["classes"] = { ROGUE },
					["lvl"] = 10,
					["groups"] = {
						i(7298, {	-- Blade of Cunning
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(14420, {	-- The Deathstalkers (1/4)
					["sourceQuest"] = 1885,	-- Mennet Carkad
					["qg"] = 6467,	-- Mennet Carkad
					["coord"] = { 83.2, 69.0, UNDERCITY },
					["timeline"] = { ADDED_3_3_0, REMOVED_4_0_3 },
					["maps"] = { SILVERPINE_FOREST },
					["races"] = { UNDEAD },
					["classes"] = { ROGUE },
					["lvl"] = 10,
					["groups"] = {
						objective(1, {	-- 0/1 Astor's Letter of Introduction
							["provider"] = { "i", 7231 },	-- Astor's Letter of Introduction
							["coords"] = {
								{ 67.4, 5.6, SILVERPINE_FOREST },
								{ 53.6, 19.5, SILVERPINE_FOREST },
								{ 51.0, 36.2, SILVERPINE_FOREST },
								{ 46.4, 41.4, SILVERPINE_FOREST },
							},
							["cr"] = 6497,	-- Astor Hadren
						}),
					},
				}),
				q(14419, {	-- The Deathstalkers (2/4)
					["sourceQuest"] = 14420,	-- The Deathstalkers (1/4)
					["providers"] = {
						{ "n", 6467 },	-- Mennet Carkad
						{ "i", 7231 },	-- Astor's Letter of Introduction
					},
					["coord"] = { 83.2, 69.0, UNDERCITY },
					["timeline"] = { ADDED_3_3_0, REMOVED_4_0_3 },
					["races"] = { UNDEAD },
					["classes"] = { ROGUE },
					["lvl"] = 10,
				}),
				q(14421, {	-- The Deathstalkers (3/4)
					["sourceQuest"] = 14419,	-- The Deathstalkers (2/4)
					["qg"] = 6522,	-- Andron Gant
					["coord"] = { 54.6, 75.6, UNDERCITY },
					["timeline"] = { ADDED_3_3_0, REMOVED_4_0_3 },
					["races"] = { UNDEAD },
					["classes"] = { ROGUE },
					["lvl"] = 10,
					["groups"] = {
						objective(1, {	-- 0/1 Andron's Ledger
							["provider"] = { "i", 7294 },	-- Andron's Ledger
							["coord"] = { 55.3, 76.7, UNDERCITY },
						}),
					},
				}),
				q(14418, {	-- The Deathstalkers (4/4)
					["sourceQuest"] = 14421,	-- The Deathstalkers (3/4)
					["providers"] = {
						{ "n", 6467 },	-- Mennet Carkad
						{ "i", 7294 },	-- Andron's Ledger
					},
					["coord"] = { 83.2, 69.0, UNDERCITY },
					["timeline"] = { ADDED_3_3_0, REMOVED_4_0_3 },
					["races"] = { UNDEAD },
					["classes"] = { ROGUE },
					["lvl"] = 10,
					["groups"] = {
						i(7298, {	-- Blade of Cunning
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(38404, {	-- The Same, But Different
					["sourceQuest"] = 38397,	-- A Curious Oddity
					["qg"] = 6566,	-- Estelle Gendry
					["coords"] = {
						{ 78.2, 75.6, UNDERCITY },
						{ 56.8, 89.8, ORGRIMMAR },
					},
					["timeline"] = {
						ADDED_6_1_0,
						REMOVED_9_0_1,	-- seems inadvertent, maybe blizzard will fix eventually
					},
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(122341, {	-- Timeworn Heirloom Scabbard
							["timeline"] = { ADDED_6_1_0 },
						}),
					},
				}),
				q(29322, {	-- Time for Slime
					["qg"] = 4573,	-- Armand Cromwell
					["coord"] = { 80.7, 31.2, UNDERCITY },
					["timeline"] = { ADDED_4_1_0 },
					["requireSkill"] = FISHING,
					["races"] = HORDE_ONLY,
					["isDaily"] = true,
					["groups"] = {
						i(67414),	-- Bag of Shiny Things
					},
				}),
				q(1164, {	-- To Steal From Thieves
					["qg"] = 4486,	-- Genavie Callow
					["coord"] = { 64.8, 49.6, UNDERCITY },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { ARATHI_HIGHLANDS },
					["races"] = HORDE_ONLY,
					["lvl"] = 27,
					["groups"] = {
						objective(1, {	-- 0/1 Kenata's Head
							["provider"] = { "i", 5830 },	-- Kenata's Head
							["coord"] = { 56.2, 36.0, ARATHI_HIGHLANDS },
							["cr"] = 4480,	-- Kenata Dabyrie
						}),
						objective(2, {	-- 0/1 Marcel's Head
							["provider"] = { "i", 5832 },	-- Marcel's Head
							["coord"] = { 54.5, 38.6, ARATHI_HIGHLANDS },
							["cr"] = 4481,	-- Marcel Dabyrie
						}),
						objective(3, {	-- 0/1 Fardel's Head
							["provider"] = { "i", 5831 },	-- Fardel's Head
							["coord"] = { 55.0, 40.0, ARATHI_HIGHLANDS },
							["cr"] = 4479,	-- Fardel Dabyrie
						}),
						i(4443, {	-- Grim Pauldrons
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(2032, {	-- Gallan Cuffs
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(1999, {	-- Tools of the Trade
					["sourceQuest"] = 1998,	-- Fenwick Thatros
					["qg"] = 6467,	-- Mennet Carkad
					["coord"] = { 83.2, 69.0, UNDERCITY },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { SILVERPINE_FOREST },
					["races"] = { UNDEAD },
					["classes"] = { ROGUE },
					["lvl"] = 16,
					["groups"] = {
						objective(1, {	-- 0/1 Dalaran Status Report
							["provider"] = { "i", 7309 },	-- Dalaran Status Report
							["coord"] = { 63.7, 65.3, SILVERPINE_FOREST },
						}),
					},
				}),
				-- #if ANYCLASSIC
				q(5658, {	-- Touch of Weakness [Undercity]
					["altQuests"] = {
						5660,	-- Touch of Weakness [Durotar]
						5661,	-- Touch of Weakness [Mulgore]
						5662,	-- Touch of Weakness [Orgrimmar]
						5663,	-- Touch of Weakness [Thunder Bluff]
					},
					["qgs"] = {
						4606,	-- Aelthalyste
						3706,	-- Tai'jin <Priest Trainer>
						11407,	-- Var'jun
						6018,	-- Ur'kyo <Priest Trainer>
						3044,	-- Miles Welsh <Priest Trainer>
					},
					["coords"] = {
						{ 49.01, 18.32, UNDERCITY },
						{ 54.2, 42.8, DUROTAR },
						{ 47.0, 58.8, MULGORE },
						{ 35.6, 87.6, ORGRIMMAR },
						{ 26.0, 15.8, THUNDER_BLUFF },
					},
					["timeline"] = { REMOVED_3_0_2 },
					["classes"] = { PRIEST },
					["races"] = { UNDEAD },
					["lvl"] = 10,
					-- #if BEFORE 3.0.2
					["groups"] = {
						{
							["recipeID"] = 2652,	-- Touch of Weakness (Rank 1)
							["rank"] = 1,
						},
					},
					-- #endif
				}),
				-- #endif
				-- #if NOT ANYCLASSIC
				q(5658, {	-- Touch of Weakness [Undercity]
					["altQuests"] = {
						5660,	-- Touch of Weakness [Durotar]
						5661,	-- Touch of Weakness [Mulgore]
						5662,	-- Touch of Weakness [Orgrimmar]
						5663,	-- Touch of Weakness [Thunder Bluff]
					},
					["qg"] = 4606,	-- Aelthalyste
					["coord"] = { 49.0, 18.3, UNDERCITY },
					["timeline"] = { REMOVED_3_0_2 },
					["classes"] = { PRIEST },
					["races"] = { UNDEAD },
					["lvl"] = 10,
					-- #if BEFORE 3.0.2
					["groups"] = {
						{
							["recipeID"] = 2652,	-- Touch of Weakness (Rank 1)
							["rank"] = 1,
						},
					},
					-- #endif
				}),
				-- #endif
				q(1841, {	-- Velora Nitely and the Brutal Legguards
					["sourceQuest"] = 1838,	-- Brutal Armor
					["qg"] = 5878,	-- Thun'grim Firegaze
					["coord"] = { 57.2, 30.2, THE_BARRENS },
					["timeline"] = { REMOVED_4_0_3 },
					["classes"] = { WARRIOR },
					["races"] = HORDE_ONLY,
					["lvl"] = 20,
				}),
				q(29360, {	-- Would You Like Some Flies With That?
					["qg"] = 4552,	-- Eunice Burch
					["coord"] = { 62.2, 44.6, UNDERCITY },
					["timeline"] = { ADDED_4_1_0 },
					["requireSkill"] = COOKING,
					["races"] = HORDE_ONLY,
					["isDaily"] = true,
					["groups"] = {
						COOKING_AWARD,
					},
				}),
			}),
			-- #if SEASON_OF_DISCOVERY
			n(RARES, {
				applyclassicphase(SOD_PHASE_ONE, n(204070, {	-- Soboz
					-- TODO: Try to get an objectID for this.
					-- ["provider"] = { "o",  },	-- Summoning Circle
					["coord"] = { 24.1, 41.6, UNDERCITY },
					["cost"] = {
						{ "i", 207974, 1 },	-- Ominous Tome
						{ "i", 204906, 1 },	-- Gnoll Blood
						{ "i", 207973, 1 },	-- Hound Jawbone
					},
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(204912, {	-- Rune of Grace
							["classes"] = { WARLOCK },
							["groups"] = {
								recipe(425477),	-- Engrave Pants - Demonic Grace
							},
						}),
					},
				})),
			}),
			-- #endif
			-- #if AFTER 6.1.0.19480
			n(TREASURES, {
				o(240623, {	-- Sylvanas' Strongbox
					["description"] = "Use Zidormi to access Tirisfal Glades of the past. Loot the strongbox at the base of a pillar to the left of Sylvanas Windrunner. Alliance characters *can* loot this.",
					["coord"] = { 58.1, 93.8, UNDERCITY },
					["timeline"] = { ADDED_6_1_0 },
					["modelRotation"] = 270,
					["modelScale"] = 1.3,
					["icon"] = 1041430,
					["groups"] = {
						i(122233, {	-- Music Roll: Lament of the Highborne
							["timeline"] = { ADDED_6_1_0 },
						}),
					},
				}),
			}),
			-- #endif
			n(VENDORS, {
				n(4604, {	-- Abigail Sawyer <Bow Merchant>
					["coord"] = { 54.8, 38.0, UNDERCITY },
					["races"] = HORDE_ONLY,
					["sym"] = {{"select","itemID",
						3027,	-- Heavy Recurve Bow
						3026,	-- Reinforced Bow
					}},
					["groups"] = {
						i(11303, {	-- Fine Shortbow
							["isLimited"] = true,
						}),
						i(11307, {	-- Massive Longbow
							["isLimited"] = true,
						}),
						i(11306, {	-- Sturdy Recurve
							["isLimited"] = true,
						}),
					},
				}),
				n(4610, {	-- Algernon <Alchemy Supplies>
					["coord"] = { 51.8, 74.6, UNDERCITY },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(9301, {	-- Recipe: Elixir of Shadow Power (RECIPE!)
							["isLimited"] = true,
						}),
						i(13477, {	-- Recipe: Superior Mana Potion (RECIPE!)
							["timeline"] = { REMOVED_2_0_1 },	-- Now taught by trainer, recipe removed from the game.
						}),
					},
				}),
				n(4602, {	-- Benijah Fenner
					["coord"] = { 58.6, 32.6, UNDERCITY },
					["races"] = HORDE_ONLY,
					["sym"] = {{"select","itemID",
						925,	-- Flail
						1197,	-- Giant Mace
						2030,	-- Gnarled Staff
						2028,	-- Hammer
						928,	-- Long Staff
						852,	-- Mace
						924,	-- Maul
						854,	-- Quarter Staff
						2026,	-- Rock Hammer
					}},
					["groups"] = {
						i(15808),	-- Fine Light Crossbow
						i(15809),	-- Heavy Crossbow
						i(15807),	-- Light Crossbow
					},
				}),
				n(50304, {	-- Captain Donald Adams <Undercity Quartermaster>
					["coords"] = {
						{ 63.6, 48.8, UNDERCITY },
						-- #if AFTER 8.0.1
						{ 56.6, 90.2, ORGRIMMAR },
						-- #endif
					},
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = bubbleDownClassicRep(FACTION_UNDERCITY, {
						{		-- Neutral
							i(245504, {	-- Lordaeron Fence (DECOR!)
								["timeline"] = { ADDED_11_2_7 },
							}),
							i(245505, {	-- Lordaeron Fencepost (DECOR!)
								["timeline"] = { ADDED_11_2_7 },
							}),
							i(45583, {	-- Undercity Tabard
								["timeline"] = { ADDED_3_1_0 },
							}),
						}, {	-- Friendly
						}, {	-- Honored
						}, {	-- Revered
							i(67529, {	-- Undercity Satchel
								["timeline"] = { ADDED_4_0_3 },
							}),
						}, {	-- Exalted
							i(64921, {	-- Cape of Undercity
								["timeline"] = { ADDED_4_0_1 },
							}),
							i(64922, {	-- Mantle of Undercity
								["timeline"] = { ADDED_4_0_1 },
							}),
							i(64920, {	-- Shroud of Undercity
								["timeline"] = { ADDED_4_0_1 },
							}),
						},
					}),
				}),
				-- #if SEASON_OF_DISCOVERY
				n(5675, {	-- Carendin Halgar
					["coord"] = { 85.0, 25.6, UNDERCITY },
					["races"] = HORDE_ONLY,
					["groups"] = {
						applyclassicphase(SOD_PHASE_ONE, i(205215, {	-- Rune of Tactics
							["cost"] = { { "i", 205183, 1 } },	-- Fel-Powered Artifact
							["classes"] = { WARLOCK },
							["groups"] = {
								recipe(416009),	-- Engrave Chest - Demonic Tactics
							},
						})),
					},
				}),
				-- #endif
				n(4569, {	-- Charles Seaton <Blade Merchant>
					["coord"] = { 77.0, 50.0, UNDERCITY },
					["races"] = HORDE_ONLY,
					["sym"] = {{"select","itemID",
						-- added all
						1198,	-- Claymore
						851,	-- Cutlass
						922,	-- Dacian Falx
						2024,	-- Espadon
						2207,	-- Jambiya
						2209,	-- Kris
						923,	-- Longsword
						2208,	-- Poniad
						2027,	-- Scimitar
					}},
				}),
				n(4561, {	-- Daniel Bartlett <Trade Supplies> [TBC+] / Daniel Bartlett <General Trade Supplier>
					["coord"] = { 64.0, 37.4, UNDERCITY },
					["races"] = HORDE_ONLY,
					["groups"] = {
						applyclassicphase(TBC_PHASE_ONE, i(20854, {	-- Design: Amulet of the Moon (RECIPE!)
							["timeline"] = { ADDED_2_0_5 },
							["isLimited"] = true,
						})),
						i(16217, {	-- Formula: Enchant Shield - Greater Stamina (RECIPE!)
							["isLimited"] = true,
						}),
					},
				}),
				n(4555, {	-- Eleanor Rusk <General Goods>
					["coord"] = { 69.2, 48.9, UNDERCITY },	-- Trade Quarter
					["races"] = HORDE_ONLY,
				}),
				-- #if AFTER 6.1.0
				n(6566, {	-- Estelle Gendry <Heirloom "Curator">
					["coords"] = {
						-- #if AFTER BFA
						{ 57.1, 90.0, ORGRIMMAR },
						-- #endif
						{ 78.2, 76.6, UNDERCITY },
					},
					["timeline"] = { ADDED_6_1_0 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						n(ARMOR, {
							filter(CLOTH, {
								gold(500, i(122378)),	-- Exquisite Sunderseer Mantle
								gold(500, i(122360)),	-- Tattered Dreadmist Mantle
								gold(500, i(122384)),	-- Tattered Dreadmist Robe
							}),
							filter(LEATHER, {
								gold(500, i(122376)),	-- Exceptional Stormshroud Shoulders
								gold(500, i(122377)),	-- Lasting Feralheart Spaulders
								gold(500, i(122382)),	-- Preened Ironfeather Breastplate
								gold(500, i(122359)),	-- Preened Ironfeather Shoulders
								gold(500, i(122358)),	-- Stained Shadowcraft Spaulders
								gold(500, i(122383)),	-- Stained Shadowcraft Tunic
							}),
							filter(MAIL, {
								gold(500, i(122375)),	-- Aged Pauldrons of The Five Thunders
								gold(500, i(122356)),	-- Champion Herod's Shoulders
								gold(500, i(122379)),	-- Champion's Deathdealer Breastplate
								gold(500, i(122357)),	-- Mystical Pauldrons of Elements
								gold(500, i(122380)),	-- Mystical Vest of Elements
								gold(500, i(122374)),	-- Prized Beastmaster's Mantle
							}),
							n(NECK, {
								gold(700, i(122663)),	-- Eternal Amulet of the Redeemed
								gold(700, i(122667)),	-- Eternal Emberfury Talisman
								gold(700, i(122664)),	-- Eternal Horizon Choker
								gold(700, i(122662)),	-- Eternal Talisman of Evasion
								gold(700, i(122668)),	-- Eternal Will of the Martyr
								gold(700, i(122666)),	-- Eternal Woven Ivy Necklace
							}),
							filter(PLATE, {
								gold(500, i(122387)),	-- Burnished Breastplate of Might
								gold(500, i(122388)),	-- Burnished Pauldrons of Might
								gold(500, i(122381)),	-- Polished Breastplate of Valor
								gold(500, i(122355)),	-- Polished Spaulders of Valor
								gold(500, i(127010)),	-- Pristine Lightforge Breastplate
								gold(500, i(122373)),	-- Pristine Lightforge Spaulders
								gold(500, i(122372)),	-- Strengthened Stockade Pauldrons
							}),
							n(TRINKET, {
								gold(700, i(122362)),	-- Discerning Eye of the Beast
								gold(700, i(122370, {	-- Inherited Insignia of the Horde
									["races"] = HORDE_ONLY,
								})),
								gold(700, i(122530)),	-- Inherited Mark of Tyranny
								gold(700, i(122361)),	-- Swift Hand of Justice
							}),
						}),
						n(HEIRLOOMS, {
							gold(500, i(122338, {	-- Ancient Heirloom Armor Casing
								["timeline"] = { ADDED_6_1_0 },
							})),
							gold(750, i(122339, {	-- Ancient Heirloom Scabbard
								["timeline"] = { ADDED_6_1_0 },
							})),
							gold(1000, i(122340, {	-- Timeworn Heirloom Armor Casing
								["timeline"] = { ADDED_6_1_0 },
							})),
							gold(1500, i(122341, {	-- Timeworn Heirloom Scabbard
								["timeline"] = { ADDED_6_1_0 },
							})),
							gold(2000, i(151614, {	-- Weathered Heirloom Armor Casing
								["timeline"] = { ADDED_7_2_5 },
							})),
							gold(3000, i(151615, {	-- Weathered Heirloom Scabbard
								["timeline"] = { ADDED_7_2_5 },
							})),
							gold(5000, i(167731, {	-- Battle-Hardened Heirloom Armor Casing
								["timeline"] = { ADDED_8_1_5 },
							})),
							gold(7500, i(167732, {	-- Battle-Hardened Heirloom Scabbard
								["timeline"] = { ADDED_8_1_5 },
							})),
							gold(5000, i(187997, {	-- Eternal Heirloom Armor Casing
								["timeline"] = { ADDED_9_1_5 },
							})),
							gold(7500, i(187998, {	-- Eternal Heirloom Scabbard
								["timeline"] = { ADDED_9_1_5 },
							})),
							gold(5000, i(204336, {	-- Awakened Heirloom Armor Casing
								["timeline"] = { ADDED_10_0_7 },
							})),
							gold(7500, i(204337, {	-- Awakened Heirloom Scabbard
								["timeline"] = { ADDED_10_0_7 },
							})),
						}),
						filter(TOYS, {
							gold(10000, i(187896, {	-- Scouting Map: A Stormstout's Guide to Pandaria (TOY!)
								["timeline"] = { ADDED_9_1_5 },
							})),
							gold(10000, i(187897, {	-- Scouting Map: Cataclysm's Consequences (TOY!)
								["timeline"] = { ADDED_9_1_5 },
							})),
							gold(10000, i(187869, {	-- Scouting Map: Into the Shadowlands (TOY!)
								["timeline"] = { ADDED_9_1_5 },
							})),
							gold(10000, i(187895, {	-- Scouting Map: The Dangers of Draenor (TOY!)
								["timeline"] = { ADDED_9_1_5 },
							})),
							gold(10000, i(150745, {	-- Scouting Map: The Eastern Kingdoms Campaign (TOY!)
								["timeline"] = { ADDED_7_2_5 },
								["races"] = HORDE_ONLY,
							})),
							gold(10000, i(187899, {	-- Scouting Map: The Many Curiosities of Outland (TOY!)
								["timeline"] = { ADDED_9_1_5 },
							})),
							gold(10000, i(187900, {	-- Scouting Map: The Wonders of Kul Tiras and Zandalar (TOY!)
								["timeline"] = { ADDED_9_1_5 },
							})),
							gold(10000, i(187898, {	-- Scouting Map: True Cost of the Northrend Campaign (TOY!)
								["timeline"] = { ADDED_9_1_5 },
							})),
							gold(10000, i(187875, {	-- Scouting Map: United Fronts of the Broken Isles (TOY!)
								["timeline"] = { ADDED_9_1_5 },
							})),
							gold(10000, i(150744, {	-- Scouting Map: Walking Kalimdor with the Earthmother (TOY!)
								["timeline"] = { ADDED_7_2_5 },
								["races"] = HORDE_ONLY,
							})),
						}),
						n(WEAPONS, {
							gold(650, i(122350)),	-- Balanced Heartseeker
							gold(650, i(122369)),	-- Battleworn Thrash Blade
							gold(750, i(122349)),	-- Bloodied Arcanite Reaper
							gold(650, i(122389)),	-- Bloodsoaked Skullforge Reaver
							gold(750, i(122363)),	-- Burnished Warden Staff
							gold(750, i(122352)),	-- Charmed Ancient Bone Bow
							gold(650, i(122354)),	-- Devout Aurastone Hammer
							gold(750, i(122353)),	-- Dignified Headmaster's Charge
							gold(650, i(140773, {	-- Eagletalon Spear
								["timeline"] = { ADDED_7_0_3 },
							})),
							gold(500, i(122391)),	-- Flamescarred Draconian Deflector
							gold(750, i(122368)),	-- Grand Staff of Jordan
							gold(500, i(122390)),	-- Musty Tome of the Lost
							gold(750, i(122365)),	-- Reforged Truesilver Champion
							gold(750, i(122386)),	-- Repurposed Lava Dredger
							gold(650, i(122364)),	-- Sharpened Scarlet Kris
							gold(650, i(122367)),	-- The Blessed Hammer of Grace
							gold(750, i(122366)),	-- Upgraded Dwarven Hand Cannon
							gold(650, i(122351)),	-- Venerable Dal'Rend's Sacred Charge
							gold(650, i(122385)),	-- Venerable Mass of McGowan
							gold(500, i(122392)),	-- Weathered Observer's Shield
						}),
					},
				}),
				-- #endif
				n(4585, {	-- Ezekiel
					["coord"] = { 75.6, 51.6, UNDERCITY },
					["races"] = HORDE_ONLY,
					-- #if AFTER MOP
					["sym"] = {{"select","itemID",
						4565,	-- Simple Dagger
					}},
					-- #endif
				}),
				n(4775, {	-- Felicia Doan <Trade Supplies>
					["coord"] = { 64.1, 50.6, UNDERCITY },
					["races"] = HORDE_ONLY,
					["groups"] = {
						applyclassicphase(TBC_PHASE_ONE, i(20975, {	-- Design: The Jade Eye (RECIPE!)
							["timeline"] = { ADDED_2_0_5 },
							["isLimited"] = true,
						})),
					},
				}),
				n(4601, {	-- Francis Eliot
					["coord"] = { 58.6, 32.6, UNDERCITY },
					["races"] = HORDE_ONLY,
					["sym"] = {{"select","itemID",
						926,	-- Battle Axe
						2025,	-- Bearded Axe
						2029,	-- Cleaver
						927,	-- Double Axe
						853,	-- Hatchet
						1196,	-- Tabar
					}},
					["groups"] = {
						i(15811),	-- Heavy Spear
						i(15810),	-- Short Spear
					},
				}),
				n(4600, {	-- Geoffrey Hartwell
					["coord"] = { 58.4, 32.6, UNDERCITY },
					["races"] = HORDE_ONLY,
					["sym"] = {{"select","itemID",
						2520,	-- Broadsword
						2523,	-- Bullova
						2528,	-- Falchion
						2521,	-- Flamberge
						2531,	-- Great Axe
						2526,	-- Main Gauche
						2534,	-- Rondel
						2525,	-- War Hammer
						2533,	-- War Maul
						2529,	-- Zweihander
					}},
				}),
				n(5820, {	-- Gillian Moore
					["coord"] = { 70.6, 59.6, UNDERCITY },
					["races"] = HORDE_ONLY,
					["sym"] = {{"select","itemID",
						2142,	-- Cuirboulli Belt
						2143,	-- Cuirboulli Boots
						2144,	-- Cuirboulli Bracers
						2145,	-- Cuirboulli Gloves
						2146,	-- Cuirboulli Pants
						2141,	-- Cuirboulli Vest
						236,	-- Cured Leather Armor
						1849,	-- Cured Leather Belt
						238,	-- Cured Leather Boots
						1850,	-- Cured Leather Bracers
						239,	-- Cured Leather Gloves
						237,	-- Cured Leather Pants
						2471,	-- Reinforced Leather Belt
						2473,	-- Reinforced Leather Boots
						2474,	-- Reinforced Leather Bracers
						3893,	-- Reinforced Leather Cap
						2475,	-- Reinforced Leather Gloves
						2472,	-- Reinforced Leather Pants
						2470,	-- Reinforced Leather Vest
						2464,	-- Studded Belt
						2467,	-- Studded Boots
						2468,	-- Studded Bracers
						2463,	-- Studded Doublet
						2469,	-- Studded Gloves
						3890,	-- Studded Hat
						2465,	-- Studded Pants
						1843,	-- Tanned Leather Belt
						843,	-- Tanned Leather Boots
						1844,	-- Tanned Leather Bracers
						844,	-- Tanned Leather Gloves
						846,	-- Tanned Leather Jerkin
						845,	-- Tanned Leather Pants
					}},
					["groups"] = {
						i(1839),	-- Rough Leather Belt
						i(796),	-- Rough Leather Boots
						i(1840),	-- Rough Leather Bracers
						i(797),	-- Rough Leather Gloves
						i(798),	-- Rough Leather Pants
						i(799),	-- Rough Leather Vest
					},
				}),
				n(4556, {	-- Gordon Wendham
					["coord"] = { 61.4, 41.2, UNDERCITY },
					["races"] = HORDE_ONLY,
					["sym"] = {{"select","itemID",
						1194,	-- Bastard Sword
						2479,	-- Broad Axe
						2130,	-- Club
						2492,	-- Cudgel
						2139,	-- Dirk
						2488,	-- Gladius
						2134,	-- Hand Axe
						2491,	-- Large Axe
						2480,	-- Large Club
						2132,	-- Short Staff
						2131,	-- Shortsword
						2494,	-- Stiletto
						2490,	-- Tomahawk
						2489,	-- Two-Handed Sword
						2495,	-- Walking Stick
						2493,	-- Wooden Mallet
					}},
				}),
				n(8403, {	-- Jeremiah Payson <Cockroach Vendor>
					["coord"] = { 67.6, 44.1, UNDERCITY },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(10393, {	-- Undercity Cockroach (PET!)
							["timeline"] = { ADDED_1_11_1 },
						}),
					},
				}),
				n(4589, {	-- Joseph Moore <Leatherworking Supplies>
					["coord"] = { 70.1, 58.4, UNDERCITY },
					["races"] = HORDE_ONLY,
					["sym"] = { {"sub", "common_vendor", 5565} },	-- Jillian Tanner <Leatherworking Supplies>
					["groups"] = {
						i(18949, {	-- Pattern: Barbaric Bracers (RECIPE!)
							["isLimited"] = true,
						}),
						i(7451, {	-- Pattern: Green Whelp Bracers (RECIPE!)
							["isLimited"] = true,
						}),
					},
				}),
				n(4615, {	-- Katrina Alliestar <Herbalism Supplies> [TBC+] / <Herbalism Supplier>
					["coord"] = { 54.73, 48.9, UNDERCITY },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(22250, {	-- Herb Pouch
							["description"] = "Only select Herbalism Suppliers sells this pouch.",
							["providers"] = {
								{ "n", 4216},	-- Chardryn <Herbalism Supplies>
								{ "n", 5503},	-- Eldraeith <Herbalism Supplies> [TBC+] / <Herbalism Supplier>
								{ "n", 5138},	-- Gwina Stonebranch <Herbalism Supplies> [TBC+] / <Herbalism Supplier>
								{ "n", 4615},	-- Katrina Alliestar <Herbalism Supplies> [TBC+] / <Herbalism Supplier>
								{ "n", 3548},	-- Selina Weston <Alchemy & Herbalism Supplies>
								-- #if AFTER TBC
								{ "n", 16367},	-- Botanist Tyniarrel <Herbalism Trainer & Supplies>
								-- #endif
								-- #if AFTER CATA
								{ "n", 46742},	-- Brunda <Herbalism Supplies>
								-- #else
								{ "n", 3405},	-- Zeal'aya <Herbalism Supplies>
								-- #endif
							},
						}),
					},
				}),
				n(4558, {	-- Lauren Newcomb <Light Armor Merchant>
					["coord"] = { 64.0, 38.0, UNDERCITY },
					["races"] = HORDE_ONLY,
					["sym"] = {{"select","itemID",
						2371,	-- Battered Leather Belt
						2373,	-- Battered Leather Boots
						2374,	-- Battered Leather Bracers
						2375,	-- Battered Leather Gloves
						2370,	-- Battered Leather Harness
						2372,	-- Battered Leather Pants
						16059,	-- Common Brown Shirt
						3428,	-- Common Gray Shirt
						16060,	-- Common White Shirt
						837,	-- Heavy Weave Armor
						3589,	-- Heavy Weave Belt
						3590,	-- Heavy Weave Bracers
						839,	-- Heavy Weave Gloves
						838,	-- Heavy Weave Pants
						840,	-- Heavy Weave Shoes
						1843,	-- Tanned Leather Belt
						843,	-- Tanned Leather Boots
						1844,	-- Tanned Leather Bracers
						844,	-- Tanned Leather Gloves
						846,	-- Tanned Leather Jerkin
						845,	-- Tanned Leather Pants
						3606,	-- Woven Belt
						2367,	-- Woven Boots
						3607,	-- Woven Bracers
						2369,	-- Woven Gloves
						2366,	-- Woven Pants
						2364,	-- Woven Vest
					}},
					["groups"] = {
						i(1835),	-- Dirty Leather Belt
						i(210),		-- Dirty Leather Boots
						i(1836),	-- Dirty Leather Bracers
						i(714),		-- Dirty Leather Gloves
						i(209),		-- Dirty Leather Pants
						i(85),		-- Dirty Leather Vest
						i(3595),	-- Tattered Cloth Belt
						i(195),	-- Tattered Cloth Boots
						i(3596),	-- Tattered Cloth Bracers
						i(711),	-- Tattered Cloth Gloves
						i(194),	-- Tattered Cloth Pants
						i(193),	-- Tattered Cloth Vest
					},
				}),
				n(4574, {	-- Lizbeth Cromwell <Fishing Supplies> [TBC+] / Lizbeth Cromwell <Fishing Supplier>
					["coord"] = { 81.0, 30.8, UNDERCITY },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(6325),	-- Recipe: Brilliant Smallfish (RECIPE!)
						i(6328),	-- Recipe: Longjaw Mud Snapper (RECIPE!)
						i(17062),	-- Recipe: Mithril Head Trout (RECIPE!)
						i(6369),	-- Recipe: Rockscale Cod (RECIPE!)
					},
				}),
				n(4557, {	-- Louis Warren
					["coord"] = { 62.0, 41.2, UNDERCITY },
					["races"] = HORDE_ONLY,
					["sym"] = {{"select","itemID",
						2025,	-- Bearded Axe
						1198,	-- Claymore
						2029,	-- Cleaver
						851,	-- Cutlass
						2024,	-- Espadon
						1197,	-- Giant Mace
						2030,	-- Gnarled Staff
						2028,	-- Hammer
						853,	-- Hatchet
						2207,	-- Jambiya
						852,	-- Mace
						2208,	-- Poniard
						854,	-- Quarter Staff
						2026,	-- Rock Hammer
						2027,	-- Scimitar
						1196,	-- Tabar
					}},
				}),
				n(4580, {	-- Lucille Castleton
					["coord"] = { 71.4, 28.4, UNDERCITY },
					["races"] = HORDE_ONLY,
					["sym"] = {{"select","itemID",
						2617,	-- Burning Robes
						2615,	-- Chromatic Robe
						2613,	-- Double Stitched Robes
						2612,	-- Plain Robe
						2614,	-- Robe Of Apprenticeship
						2616,	-- Shimmering Silk Robes
						2618,	-- Silver Dress Robes
					}},
				}),
				n(5190, {	-- Merill Pleasance <Tabard Vendor>
					-- #if AFTER 8.0.1.26297
					["crs"] = { 130966 },	-- Merill Pleasance <Tabard Vendor>
					-- #endif
					["sym"] = { {"sub", "common_vendor", 5188 } },	-- Garyl <Tabard Vendor>
					["coord"] = { 69.3, 44.8, UNDERCITY },
					["races"] = HORDE_ONLY,
				}),
				n(4577, {	-- Millie Gregorian <Tailoring Supplies>
					["coord"] = { 70.6, 30.1, UNDERCITY },
					["races"] = HORDE_ONLY,
					-- #if AFTER CATA
					["sym"] = {{ "sub", "common_vendor", 5154 }},	-- Poranna Snowbraid <Tailoring Supplies>
					-- #endif
					["groups"] = sharedData({
						["isLimited"] = true,
					}, {
						i(6275),	-- Pattern: Greater Adept's Robe (RECIPE!)
						i(5772),	-- Pattern: Red Woolen Bag (RECIPE!)
						i(10326),	-- Pattern: Tuxedo Jacket (RECIPE!)
						i(10323),	-- Pattern: Tuxedo Pants (RECIPE!)
						i(10321),	-- Pattern: Tuxedo Shirt (RECIPE!)
					}),
				}),
				n(5819, {	-- Mirelle Tremayne
					["coord"] = { 61.6, 28.4, UNDERCITY },
					["races"] = HORDE_ONLY,
					["sym"] = {{"select","itemID",
						2419,	-- Augmented Chain Belt
						2420,	-- Augmented Chain Boots
						2421,	-- Augmented Chain Bracers
						2422,	-- Augmented Chain Gloves
						3891,	-- Augmented Chain Helm
						2418,	-- Augmented Chain Leggings
						2417,	-- Augmented Chain Vest
						2424,	-- Brigandine Belt
						2426,	-- Brigandine Boots
						2427,	-- Brigandine Bracers
						2428,	-- Brigandine Gloves
						3894,	-- Brigandine Helm
						2425,	-- Brigandine Leggings
						2423,	-- Brigandine Vest
						847,	-- Chainmail Armor
						1845,	-- Chainmail Belt
						849,	-- Chainmail Boots
						1846,	-- Chainmail Bracers
						850,	-- Chainmail Gloves
						848,	-- Chainmail Pants
						2451,	-- Crested Heater Shield
						2448,	-- Heavy Pavise
						2446,	-- Kite Shield
						2392,	-- Light Mail Armor
						2393,	-- Light Mail Belt
						2395,	-- Light Mail Boots
						2396,	-- Light Mail Bracers
						2397,	-- Light Mail Gloves
						2394,	-- Light Mail Leggings
						17189,	-- Metal Buckler
						17190,	-- Ornate Buckler
						8094,	-- Platemail Armor
						8088,	-- Platemail Belt
						8089,	-- Platemail Boots
						8090,	-- Platemail Bracers
						8091,	-- Platemail Gloves
						8092,	-- Platemail Helm
						8093,	-- Platemail Leggings
						2148,	-- Polished Scale Belt
						2149,	-- Polished Scale Boots
						2150,	-- Polished Scale Bracers
						2151,	-- Polished Scale Gloves
						2152,	-- Polished Scale Leggings
						2153,	-- Polished Scale Vest
						17192,	-- Reinforced Targe
						1853,	-- Scalemail Belt
						287,	-- Scalemail Boots
						1852,	-- Scalemail Bracers
						718,	-- Scalemail Gloves
						286,	-- Scalemail Pants
					}},
				}),
				n(4592, {	-- Nathaniel Steenwick
					["coord"] = { 77.2, 50.2, UNDERCITY },
					["races"] = HORDE_ONLY,
					["sym"] = {{"select","itemID",
						3027,	-- Heavy Recurve Bow
						2506,	-- Hornwood Recurve Bow
						2507,	-- Laminated Recurve Bow
						2505,	-- Polished Shortbow
						3026,	-- Reinforced Bow
						2504,	-- Worn Shortbow
					}},
				}),
				n(4603, {	-- Nicholas Atwood
					["coord"] = { 62.2, 27.0, UNDERCITY },
					["races"] = HORDE_ONLY,
					["sym"] = {{"select","itemID",
						3024,	-- BKP 2700 "Enforcer"
						3023,	-- Large Bore Blunderbuss
						2509,	-- Ornate Blunderbuss
						2510,	-- Solid Blunderbuss
					}},
				}),
				n(4553, {	-- Ronald Burch <Cooking Supplies> [TBC+] / Ronald Burch <Cooking Supplier>
					["coord"] = { 62.3, 43.1, UNDERCITY },
					["races"] = HORDE_ONLY,
					-- #if AFTER CATA
					["sym"] = {{"sub", "common_vendor", 49737}},	-- Shazdar <Sous Chef>
					-- #endif
					["groups"] = {
						i(6330),	-- Recipe: Bristle Whisker Catfish (RECIPE!)
						i(6368),	-- Recipe: Rainbow Fin Albacore (RECIPE!)
						i(21219),	-- Recipe: Sagefish Delight (RECIPE!)
						i(21099),	-- Recipe: Smoked Sagefish (RECIPE!)
					},
				}),
				n(4597, {	-- Samuel Van Brunt <Blacksmithing Supplies>
					["sym"] = {{"sub", "common_recipes_vendor", 46359}},	-- Punra <Blacksmithing Supplies>
					["coord"] = { 61.4, 30.1, UNDERCITY },
					["races"] = HORDE_ONLY,
				}),
				n(52588, {	-- Sara Lanner <Jewelcrafting Supplies>
					["coord"] = { 56.2, 36.6, UNDERCITY },
					["timeline"] = { ADDED_4_1_0 },
					["races"] = HORDE_ONLY,
					["sym"] = {{ "sub", "common_recipes_vendor", 50482 }},	-- Marith Lazuria <Jewelcrafting Supplies>
				}),
				n(4599, {	-- Sarah Killan <Mining Supplies>
					["coord"] = { 56.6, 37.3, UNDERCITY },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(2901),	-- Mining Pick
						-- #if AFTER CATA
						i(30746, {	-- Mining Sack
							["providers"] = {
								{ "n", 5514 },	-- Brooke Stonebraid <Mining Supplies>
								{ "n", 4256 },	-- Golnir Bouldertoe <Mining Supplies>
								{ "n", 3358 },	-- Gorina <Mining Supplies>
								{ "n", 3002 },	-- Kurm Stonehoof <Mining Supplies>
								{ "n", 16751 },	-- Merran <Mining Supplies>
								{ "n", 52643 },	-- Rissa Halding <Mining Supplies>
								{ "n", 4599 },	-- Sarah Killan <Mining Supplies>
								{ "n", 16664 },	-- Zelan <Mining Supplies>
							},
							["timeline"] = { ADDED_2_0_1 },
						}),
						-- #endif
					},
				}),
				n(5821, {	-- Sheldon Von Croy <Cloth Armor Merchant>
					["coord"] = { 70.6, 28.8, UNDERCITY },
					["races"] = HORDE_ONLY,
					["sym"] = {{"select","itemID",
						2435,	-- Embroidered Armor
						3587,	-- Embroidered Belt
						2438,	-- Embroidered Boots
						3588,	-- Embroidered Bracers
						2440,	-- Embroidered Gloves
						3892,	-- Embroidered Hat
						2437,	-- Embroidered Pants
						837,	-- Heavy Weave Armor
						3589,	-- Heavy Weave Belt
						3590,	-- Heavy Weave Bracers
						839,	-- Heavy Weave Gloves
						838,	-- Heavy Weave Pants
						840,	-- Heavy Weave Shoes
						3602,	-- Knitted Belt
						3603,	-- Knitted Bracers
						793,	-- Knitted Gloves
						794,	-- Knitted Pants
						792,	-- Knitted Sandals
						795,	-- Knitted Tunic
						2160,	-- Padded Armor
						3591,	-- Padded Belt
						2156,	-- Padded Boots
						3592,	-- Padded Bracers
						2158,	-- Padded Gloves
						2159,	-- Padded Pants
						3593,	-- Russet Belt
						2432,	-- Russet Boots
						3594,	-- Russet Bracers
						2434,	-- Russet Gloves
						3889,	-- Russet Hat
						2431,	-- Russet Pants
						2429,	-- Russet Vest
						3597,	-- Thick Cloth Belt
						3598,	-- Thick Cloth Bracers
						203,	-- Thick Cloth Gloves
						201,	-- Thick Cloth Pants
						202,	-- Thick Cloth Shoes
						200,	-- Thick Cloth Vest
					}},
					["groups"] = {
						i(13896),	-- Dark Green Wedding Hanbok
						i(13898),	-- Royal Dangui
						i(13897),	-- White Traditional Hanbok
					},
				}),
				n(4570, {	-- Sydney Upton
					["coord"] = { 69.8, 27.4, UNDERCITY },
					["sym"] = {{"select","itemID",
						2527,	-- Battle Staff
						2535,	-- War Staff
					}},
				}),
				n(4554, {	-- Tawny Grisette <Mushroom Vendor>
					["coord"] = { 69.7, 44.8, UNDERCITY },
					["description"] = "Walks around the Trade Quarter, upper level.",
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(4607),	-- Delicious Cave Mold
						i(8948),	-- Dried King Bolete
						i(4604),	-- Forest Mushroom Cap
						i(4608),	-- Raw Black Truffle
						i(4605),	-- Red-speckled Mushroom
						i(4606),	-- Spongy Morel
					},
				}),
				n(4617, {	-- Thaddeus Webb <Enchanting Supplies>
					["sym"] = { {"sub", "common_recipes_vendor", 3346 } },	-- Kithas <Enchanting Supplies>
					["coord"] = { 62.0, 60.8, UNDERCITY },
					["races"] = HORDE_ONLY,
					["groups"] = appendGroups(VANILLA_ENCHANTING_COMMON_RECIPES, {}),
				}),
				n(4559, {	-- Timothy Weldon
					["coord"] = { 63.6, 39.6, UNDERCITY },
					["races"] = HORDE_ONLY,
					["sym"] = {{"select","itemID",
						17187,	-- Banded Buckler
						17183,	-- Dented Buckler
						1200,	-- Large Wooden Shield
						17185,	-- Round Buckler
						1202,	-- Wall Shield
						2376,	-- Worn Heater Shield
					}},
					["groups"] = {
						i(2398),	-- Light Chain Armor
						i(2399),	-- Light Chain Belt
						i(2401),	-- Light Chain Boots
						i(2402),	-- Light Chain Bracers
						i(2403),	-- Light Chain Gloves
						i(2400),	-- Light Chain Leggings
						i(2387),	-- Rusted Chain Belt
						i(2389),	-- Rusted Chain Boots
						i(2390),	-- Rusted Chain Bracers
						i(2391),	-- Rusted Chain Gloves
						i(2388),	-- Rusted Chain Leggings
						i(2386),	-- Rusted Chain Vest
					},
				}),
				n(4560, {	-- Walter Ellingson
					["coord"] = { 62.8, 39.6, UNDERCITY },
					["races"] = HORDE_ONLY,
					["sym"] = {{"select","itemID",
						17187,	-- Banded Buckler
						847,	-- Chainmail Armor
						1845,	-- Chainmail Belt
						849,	-- Chainmail Boots
						1846,	-- Chainmail Bracers
						850,	-- Chainmail Gloves
						848,	-- Chainmail Pants
						1202,	-- Wall Shield
					}},
				}),
				n(5754, {	-- Zane Bradford
					["coord"] = { 70.0, 27.2, UNDERCITY },
					["races"] = HORDE_ONLY,
					["sym"] = {{"select", "itemID",
						5239,	-- Blackbone Wand
						5210,	-- Burning Wand
						5236,	-- Combustible Wand
						5211,	-- Dusk Wand
						5209,	-- Gloom Wand
						5347,	-- Pestilent Wand
						5238,	-- Pitchwood Wand
						5208,	-- Smoldering Wand
					}},
				}),
			}),
			-- #if NOT ANYCLASSIC
			-- CRIEVE NOTE: I'm going to solve this a different way eventually.
			o(207324, {	-- Warchief's Command Board
				["coords"] = {
					{ 44.0, 35.4, UNDERCITY },
					{ 66.5, 49.8, UNDERCITY },
					{ 61.8, 75.6, UNDERCITY },
				},
				["timeline"] = { ADDED_4_0_1 },
				["sym"] = WARCHIEFS_COMMAND_BOARD_SYMLINK,
				["races"] = HORDE_ONLY,
				["skipFill"] = true,
			}),
			-- #endif
		},
	}),
}));
