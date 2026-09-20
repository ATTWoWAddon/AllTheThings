---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(MAP.EASTERN_KINGDOMS, {
	m(MAP.UNDERCITY, {
		["lore"] = "The Undercity is the capital city of the Forsaken undead of the Horde.\n\nFar beneath the ruined Capital City of the kingdom of Lordaeron, its royal crypts were turned into a bastion of evil and undeath. Originally intended by Prince Arthas to be the Scourge's seat of power, the budding \"Undercity\" was abandoned when Arthas was recalled to aid the Lich King in the distant Northrend. In Arthas' absence, the Dark Lady, Sylvanas Windrunner, led the rebel Forsaken to the Undercity, and claimed it for her own. Since taking up residence, the Forsaken worked to complete the Undercity's construction by dredging the twisted maze of catacombs, tombs, and dungeons that Arthas began.",
		["icon"] = 255133,
		["isRaid"] = true,
		["groups"] = {
			n(FACTIONS, {
				faction(FACTION_UNDERCITY, {	-- Undercity
					["icon"] = 236458,
					["OnTooltip"] = [[_.OnTooltipDB.RuneclothTurnIns]],
					["races"] = HORDE_ONLY,
				}),
			}),
			n(FLIGHT_PATHS, {
				fp(11, {	-- Undercity, Tirisfal
					["cr"] = 4551,	-- Michael Garrett <Bat Handler>
					["coord"] = { 63.6, 48.6, MAP.UNDERCITY },
					["races"] = HORDE_ONLY,
				}),
			}),
			n(PROFESSIONS, {
				prof(TAILORING, {
					n(4578, {	-- Josephine Lister <Master Shadoweave Tailor>
						["coord"] = { 87.0, 20.8, MAP.UNDERCITY },
						["races"] = HORDE_ONLY,
						["groups"] = SHADOWEAVE_TAILORING_CLASSIC,
					}),
				}),
			}),
			n(QUESTS, {
				q(4294, {	-- ... and a Batch of Ooze
					["qg"] = 10136,	-- Chemist Fuely
					["coord"] = { 47.6, 73.0, MAP.UNDERCITY },
					["maps"] = { MAP.UNGORO_CRATER },
					["races"] = HORDE_ONLY,
					["lvl"] = 48,
					["groups"] = {
						q(4561, {	-- Testing for Impurities - Un'Goro Crater
							["provider"] = { "o", 174848 },	-- Testing Equipment
							["coord"] = { 47.7, 73.3, MAP.UNDERCITY },
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
				q(7817, {	-- A Donation of Mageweave
					["qg"] = 14729,	-- Ralston Farnsley
					["coord"] = { 71.8, 29.0, MAP.UNDERCITY },
					["cost"] = { { "i", 4338, 60 } },	-- Mageweave Cloth
					["races"] = HORDE_ONLY,
					["lvl"] = 40,
				}),
				q(7818, {	-- A Donation of Runecloth
					["qg"] = 14729,	-- Ralston Farnsley
					["coord"] = { 71.8, 29.0, MAP.UNDERCITY },
					["cost"] = { { "i", 14047, 60 } },	-- Runecloth
					["races"] = HORDE_ONLY,
					["lvl"] = 50,
				}),
				q(7814, {	-- A Donation of Silk
					["qg"] = 14729,	-- Ralston Farnsley
					["coord"] = { 71.8, 29.0, MAP.UNDERCITY },
					["cost"] = { { "i", 4306, 60 } },	-- Silk Cloth
					["races"] = HORDE_ONLY,
					["lvl"] = 26,
				}),
				q(7813, {	-- A Donation of Wool
					["qg"] = 14729,	-- Ralston Farnsley
					["coord"] = { 71.8, 29.0, MAP.UNDERCITY },
					["cost"] = { { "i", 2592, 60 } },	-- Wool Cloth
					["races"] = HORDE_ONLY,
					["lvl"] = 12,
				}),
				q(4293, {	-- A Sample of Slime...
					["qg"] = 10136,	-- Chemist Fuely
					["coord"] = { 47.6, 73.0, MAP.UNDERCITY },
					["maps"] = { MAP.FELWOOD },
					["races"] = HORDE_ONLY,
					["lvl"] = 48,
					["groups"] = {
						q(4661, {	-- Testing for Corruption - Felwood
							["provider"] = { "o", 174848 },	-- Testing Equipment
							["coord"] = { 47.7, 73.3, MAP.UNDERCITY },
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
							["description"] = "Bring at least 30 of these back with you to the Undercity for testing.",
							["crs"] = {
								7086,	-- Cursed Ooze
								7092,	-- Tainted Ooze
								14345,	-- The Ongar
							},
						}),
					},
				}),
				q(7819, {	-- Additional Runecloth [Undercity]
					["sourceQuest"] = 7818,	-- A Donation of Runecloth
					["qg"] = 14729,	-- Ralston Farnsley
					["coord"] = { 71.8, 29.0, MAP.UNDERCITY },
					["maxReputation"] = { FACTION_UNDERCITY, EXALTED },	-- Undercity, Exalted.
					["cost"] = { { "i", 14047, 20 } },	-- Runecloth
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["lvl"] = 50,
				}),
				q(1847, {	-- Brutal Legguards
					["sourceQuest"] = 1846,	-- Dragonmaw Shinbones
					["qg"] = 6411,	-- Velora Nitely
					["coord"] = { 62.4, 39.2, MAP.UNDERCITY },
					["classes"] = { WARRIOR },
					["races"] = HORDE_ONLY,
					["lvl"] = 20,
					["groups"] = {
						i(7132),	-- Brutal Legguards
					},
				}),
				q(1473, {	-- Creature of the Void [Undercity]
					["sourceQuest"] = 1478,	-- Halgar's Summons
					["altQuests"] = { 1501 },	-- Creature of the Void [Orgrimmar]
					["qg"] = 5675,	-- Carendin Halgar
					["coord"] = { 85.0, 25.6, MAP.UNDERCITY },
					["maps"] = { MAP.TIRISFAL_GLADES },
					["races"] = { ORC, UNDEAD },
					["classes"] = { WARLOCK },
					["lvl"] = 10,
					["groups"] = {
						objective(1, {	-- 0/1 Egalin's Grimoire
							["provider"] = { "i", 6285 },	-- Egalin's Grimoire
							["coord"] = { 51.1, 67.6, MAP.TIRISFAL_GLADES },
						}),
					},
				}),
				q(1507, {	-- Devourer of Souls [Orgrimmar]
					["altQuests"] = { 1472 },	-- Devourer of Souls [Undercity]
					["qg"] = 5875,	-- Dan'rul Bloodeye
					["races"] = { ORC, UNDEAD },
					["classes"] = { WARLOCK },
					["isBreadcrumb"] = true,
					["lvl"] = 20,
				}),
				q(1472, {	-- Devourer of Souls [Undercity]
					["altQuests"] = { 1507 },	-- Devourer of Souls [Orgrimmar]
					["qg"] = 5675,	-- Carendin Halgar
					["coord"] = { 85.0, 25.6, MAP.UNDERCITY },
					["races"] = { ORC, UNDEAD },
					["classes"] = { WARLOCK },
					["isBreadcrumb"] = true,
					["lvl"] = 20,
				}),
				q(5679, {	-- Devouring Plague [Undercity]
					["altQuests"] = {
						5646,	-- Devouring Plague [Orgrimmar]
						5644,	-- Devouring Plague [Thunder Bluff]
					},
					["qg"] = 4606,	-- Aelthalyste
					["coord"] = { 49.01, 18.32, MAP.UNDERCITY },
					["classes"] = { PRIEST },
					["races"] = { UNDEAD },
					["lvl"] = 20,
					["groups"] = {
						{
							["recipeID"] = 2944,	-- Devouring Plague (Rank 1)
							["rank"] = 1,
						},
					},
				}),
				q(1846, {	-- Dragonmaw Shinbones
					["sourceQuest"] = 1841,	-- Velora Nitely and the Brutal Legguards
					["qg"] = 6411,	-- Velora Nitely
					["coord"] = { 62.4, 39.2, MAP.UNDERCITY },
					["maps"] = { MAP.WETLANDS },
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
					["coord"] = { 50.0, 68.4, MAP.UNDERCITY },
					["races"] = HORDE_ONLY,
					["lvl"] = 38,
				}),
				q(238, {	-- Errand for Apothecary Zinge (2/2)
					["sourceQuest"] = 232,	-- Errand for Apothecary Zinge (1/2)
					["providers"] = {
						{ "n", 7683 },	-- Alessandro Luca
						{ "i", 8523 },	-- Field Testing Kit
					},
					["coord"] = { 58.2, 55.2, MAP.UNDERCITY },
					["races"] = HORDE_ONLY,
					["lvl"] = 38,
				}),
				q(1998, {	-- Fenwick Thatros
					["qg"] = 6467,	-- Mennet Carkad
					["coord"] = { 83.6, 67.6, MAP.UNDERCITY },
					["maps"] = { MAP.SILVERPINE_FOREST },
					["races"] = { UNDEAD },
					["classes"] = { ROGUE },
					["lvl"] = 16,
					["groups"] = {
						objective(1, {	-- 0/1 Fenwick's Head
							["provider"] = { "i", 7306 },	-- Fenwick's Head
							["coord"] = { 59.6, 34.2, MAP.SILVERPINE_FOREST },
							["cr"] = 6570,	-- Fenwick Thatros
						}),
					},
				}),
				q(1961, {	-- Gathering Materials
					["sourceQuest"] = 1960,	-- Investigate the Alchemist Shop
					["qg"] = 4568,	-- Anastasia Hartwell <Mage Trainer>
					["coord"] = { 85.0, 10.2, MAP.UNDERCITY },
					["maps"] = { MAP.SILVERPINE_FOREST },
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
				q(3635, {	-- Gnome Engineering [H]
					["altQuests"] = {
						3526,	-- Goblin Engineering
						3629,	-- Goblin Engineering
						3630,	-- Gnome Engineering
						3632,	-- Gnome Engineering
						3633,	-- Goblin Engineering
						3634,	-- Gnome Engineering
						-- 3635,	-- Gnome Engineering
						3637,	-- Gnome Engineering
						4181,	-- Goblin Engineering
					},
					["providers"] = {
						{ "n", 4586 },	-- Graham Van Talen <Journeyman Engineer>
						{ "i", 10789 },	-- Manual of Engineering Disciplines
					},
					["coord"] = { 75.6, 74.6, MAP.UNDERCITY },
					["races"] = HORDE_ONLY,
					["requireSkill"] = ENGINEERING,
					["learnedAt"] = 200,
					["lvl"] = 30,
				}),
				q(3526, {	-- Goblin Engineering [H]
					["altQuests"] = {
						-- 3526,	-- Goblin Engineering
						3629,	-- Goblin Engineering
						3630,	-- Gnome Engineering
						3632,	-- Gnome Engineering
						3633,	-- Goblin Engineering
						3634,	-- Gnome Engineering
						3635,	-- Gnome Engineering
						3637,	-- Gnome Engineering
						4181,	-- Goblin Engineering
					},
					["providers"] = {
						{ "n", 4586 },	-- Graham Van Talen <Journeyman Engineer>
						{ "i", 10789 },	-- Manual of Engineering Disciplines
					},
					["coord"] = { 75.6, 74.6, MAP.UNDERCITY },
					["races"] = HORDE_ONLY,
					["requireSkill"] = ENGINEERING,
					["learnedAt"] = 200,
					["lvl"] = 30,
				}),
				q(1478, {	-- Halgar's Summons
					["altQuests"] = { 1506 },	-- Gan'rul's Summons
					["qg"] = 5724,	-- Ageron Kargal
					["coord"] = { 61.6, 52.6, MAP.TIRISFAL_GLADES },
					["races"] = { ORC, UNDEAD },
					["classes"] = { WARLOCK },
					["lvl"] = 10,
				}),
				q(1476, {	-- Hearts of the Pure
					["sourceQuests"] = {
						1507,	-- Devourer of Souls [Orgrimmar]
						1472,	-- Devourer of Souls [Undercity]
					},
					["qg"] = 5693,	-- Godrick Farsan
					["coord"] = { 85.0, 14.8, MAP.UNDERCITY },
					["maps"] = { MAP.SILVERPINE_FOREST, MAP.WETLANDS },
					["classes"] = { WARLOCK },
					["races"] = { ORC, UNDEAD },
					["lvl"] = 20,
					["groups"] = {
						objective(1, {	-- 0/1 Dalin's Heart
							["provider"] = { "i", 6312 },	-- Dalin's Heart
							["coord"] = { 46.6, 84.2, MAP.SILVERPINE_FOREST },
							["cr"] = 5682,	-- Dalin Forgewright
						}),
						objective(2, {	-- 0/1 Comar's Heart
							["provider"] = { "i", 6313 },	-- Comar's Heart
							["coord"] = { 50.6, 12.6, MAP.WETLANDS },
							["cr"] = 5683,	-- Comar Villard
						}),
					},
				}),
				q(5657, {	-- Hex of Weakness [Undercity]
					["altQuests"] = {
						5652,	-- Hex of Weakness [Orgrimmar]
						5654,	-- Hex of Weakness [Durotar]
						5655,	-- Hex of Weakness [Mulgore]
						5656,	-- Hex of Weakness [Thunder Bluff]
					},
					["qg"] = 4606,	-- Aelthalyste <Priest Trainer>
					["coord"] = { 49.01, 18.32, MAP.UNDERCITY },
					["classes"] = { PRIEST },
					["races"] = { TROLL },
					["lvl"] = 10,
					["groups"] = {
						{
							["recipeID"] = 9035,	-- Hex of Weakness (Rank 1)
							["rank"] = 1,
						},
					},
				}),
				q(243, {	-- Into the Field
					["sourceQuest"] = 238,	-- Errand for Apothecary Zinge (2/2)
					["providers"] = {
						{ "n", 5204 },	-- Apothecary Zinge
						{ "i", 8523 },	-- Field Testing Kit
					},
					["coord"] = { 50.1, 68.0, MAP.UNDERCITY },
					["maps"] = { MAP.TANARIS },
					["races"] = HORDE_ONLY,
					["lvl"] = 38,
				}),
				q(1960, {	-- Investigate the Alchemist Shop
					["sourceQuest"] = 1959,	-- Report to Anastasia
					["qg"] = 4568,	-- Anastasia Hartwell <Mage Trainer>
					["coord"] = { 85.0, 10.2, MAP.UNDERCITY },
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
							["coord"] = { 53.9, 73.2, MAP.UNDERCITY },
							["cr"] = 6492,	-- Rift Spawn
						}),
						objective(2, {	-- 0/1 Chest of Containment Coffers
							["providers"] = {
								{ "i",   7247 },	-- Chest of Containment Coffers
								{ "o", 105174 },	-- Chest of Containment Coffers
							},
							["coord"] = { 85.4, 10.2, MAP.UNDERCITY },
						}),
						objective(3, {	-- 0/1 Cantation of Manifestation
							["providers"] = {
								{ "i",   7308 },	-- Cantation of Manifestation
								{ "o", 105175 },	-- Cantation of Manifestation
							},
							["coord"] = { 85.4, 10.2, MAP.UNDERCITY },
						}),
					},
				}),
				q(2995, {	-- Lines of Communication
					["qg"] = 7825,	-- Oran Snakewrithe
					["coord"] = { 73.3, 32.4, MAP.UNDERCITY },
					["maps"] = { MAP.THE_HINTERLANDS },
					["races"] = HORDE_ONLY,
					["lvl"] = 42,
					["groups"] = {
						objective(1, {	-- Burn the Highvale Records
							["coord"] = { 32.0, 46.9, MAP.THE_HINTERLANDS },
						}),
						objective(2, {	-- Burn the Highvale Notes
							["coord"] = { 29.7, 48.5, MAP.THE_HINTERLANDS },
						}),
						objective(3, {	-- Burn the Highvale Report
							["coord"] = { 28.7, 46.1, MAP.THE_HINTERLANDS },
						}),
					},
				}),
				q(4642, {	-- Melding of Influences
					["sourceQuests"] = {
						4294,	-- ... and a Batch of Ooze
						4293,	-- A Sample of Slime...
					},
					["qg"] = 10136,	-- Chemist Fuely
					["coord"] = { 47.6, 73.0, MAP.UNDERCITY },
					["maps"] = { MAP.UNGORO_CRATER },
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
						i(15702),	-- Chemist's Ring
						i(15703),	-- Chemist's Smock
					},
				}),
				q(1885, {	-- Mennet Carkad
					["qg"] = 2130,	-- Marion Call
					["coord"] = { 61.6, 52.0, MAP.TIRISFAL_GLADES },
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
					["coord"] = { 61.6, 41.8, MAP.UNDERCITY },
					["maps"] = { MAP.SILVERPINE_FOREST },
					["races"] = { UNDEAD },
					["lvl"] = 10,
				}),
				q(8273, {	-- Oran's Gratitude
					["sourceQuest"] = 2782,	-- Rin'ji's Secret
					["qg"] = 7825,	-- Oran Snakewrithe
					["coord"] = { 73.4, 32.4, MAP.UNDERCITY },
					["races"] = HORDE_ONLY,
					["lvl"] = 42,
					["groups"] = {
						i(20643),	-- Undercity Reservist's Cap
						i(20642),	-- Antiquated Nobleman's Tunic
					},
				}),
				q(1959, {	-- Report to Anastasia
					["qgs"] = {
						7311,	-- Uthel'nay <Mage Trainer>
						3049,	-- Thurston Xane <Mage Trainer>
					},
					["coords"] = {
						{ 39.0, 86.0, MAP.ORGRIMMAR },
						{ 25.0, 20.6, MAP.THUNDER_BLUFF },
					},
					["races"] = HORDE_ONLY,
					["classes"] = { MAGE },
					["isBreadcrumb"] = true,
					["lvl"] = 15,
				}),
				q(6324, {	-- Return to Podrig
					["sourceQuest"] = 6322,	-- Michael Garrett
					["providers"] = {
						{ "n", 4551 },	-- Michael Garrett
						{ "i", 16210 },	-- Gordon's Crate
					},
					["coords"] = {
						{ 44.9, 38.9, MAP.EASTERN_KINGDOMS },
						{ 63.4, 48.6, MAP.UNDERCITY },
					},
					["maps"] = { MAP.SILVERPINE_FOREST },
					["races"] = { UNDEAD },
					["lvl"] = 10,
				}),
				q(1358, {	-- Sample for Helbrim
					["sourceQuest"] = 1359,	-- Zinge's Delivery
					["providers"] = {
						{ "n", 5204 },	-- Apothecary Zinge
						{ "i", 6016 },	-- Wolf Heart Sample
					},
					["coord"] = { 50.0, 68.4, MAP.UNDERCITY },
					["maps"] = { MAP.THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 10,
					["groups"] = {
						i(10637),	-- Brewer's Gloves
						i(10638),	-- Long Draping Cape
					},
				}),
				q(3568, {	-- Seeping Corruption (1/3)
					["qg"] = 8390,	-- Chemist Cuely
					["coord"] = { 47.6, 73.0, MAP.UNDERCITY },
					["maps"] = { MAP.AZSHARA },
					["races"] = HORDE_ONLY,
					["lvl"] = 45,
					["groups"] = {
						objective(1, {	-- 0/1 Filled Vial Labeled #1
							["provider"] = { "i", 10691 },	-- Filled Vial Labeled #1
							["cost"] = { { "i", 10687, 1 } },	-- Empty Vial Labeled #1
							["coord"] = { 48.0, 60.0, MAP.AZSHARA },
						}),
						objective(2, {	-- 0/1 Filled Vial Labeled #2
							["provider"] = { "i", 10692 },	-- Filled Vial Labeled #2
							["cost"] = { { "i", 10688, 1 } },	-- Empty Vial Labeled #2
							["coord"] = { 47.0, 51.0, MAP.AZSHARA },
						}),
						objective(3, {	-- 0/1 Filled Vial Labeled #3
							["provider"] = { "i", 10693 },	-- Filled Vial Labeled #3
							["cost"] = { { "i", 10689, 1 } },	-- Empty Vial Labeled #3
							["coord"] = { 48.0, 48.0, MAP.AZSHARA },
						}),
						objective(4, {	-- 0/1 Filled Vial Labeled #4
							["provider"] = { "i", 10694 },	-- Filled Vial Labeled #4
							["cost"] = { { "i", 10690, 1 } },	-- Empty Vial Labeled #4
							["coord"] = { 47.0, 46.0, MAP.AZSHARA },
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
						{ "n", 8390 },	-- Chemist Cuely
						{ "i", 10712 },	-- Cuely's Elixir
					},
					["coord"] = { 47.6, 73.0, MAP.UNDERCITY },
					["races"] = HORDE_ONLY,
					["lvl"] = 45,
				}),
				q(3570, {	-- Seeping Corruption (3/3)
					["sourceQuest"] = 3569,	-- Seeping Corruption (2/3)
					["qg"] = 8390,	-- Chemist Cuely
					["coord"] = { 47.6, 73.0, MAP.UNDERCITY },
					["races"] = HORDE_ONLY,
					["lvl"] = 45,
				}),
				q(5643, {	-- Shadowguard [Undercity]
					["altQuests"] = {
						5680,	-- Shadowguard [Orgrimmar]
						5642,	-- Shadowguard [Thunder Bluff]
					},
					["qg"] = 4606,	-- Aelthalyste
					["coord"] = { 49.01, 18.32, MAP.UNDERCITY },
					["classes"] = { PRIEST },
					["races"] = { TROLL },
					["lvl"] = 20,
					["groups"] = {
						{
							["recipeID"] = 18137,	-- Shadowguard (Rank 1)
							["rank"] = 1,
						},
					},
				}),
				q(1881, {	-- Speak with Anastasia
					["altQuests"] = { 1883 },	-- Speak with Un'thuwa
					["qg"] = 2128,	-- Cain Firesong <Mage Trainer>
					["coord"] = { 61.8, 52.4, MAP.TIRISFAL_GLADES },
					["races"] = { UNDEAD, TROLL },
					["classes"] = { MAGE },
					["isBreadcrumb"] = true,
					["lvl"] = 10,
				}),
				q(1962, {	-- Spellfire Robes
					["sourceQuest"] = 1961,	-- Gathering Materials
					["qg"] = 11049,	-- Rhiannon Davis <Expert Tailor>
					["coord"] = { 70.2, 30.2, MAP.UNDERCITY },
					["races"] = HORDE_ONLY,
					["classes"] = { MAGE },
					["lvl"] = 15,
					["groups"] = {
						i(7510),	-- Lesser Spellfire Robes
					},
				}),
				q(1882, {	-- The Balnir Farmstead
					["sourceQuests"] = {
						1881,	-- Speak with Anastasia
						1883,	-- Speak with Un'thuwa
					},
					["qg"] = 4568,	-- Anastasia Hartwell <Mage Trainer>
					["coord"] = { 85.0, 10.2, MAP.UNDERCITY },
					["maps"] = { MAP.TIRISFAL_GLADES },
					["races"] = { UNDEAD, TROLL },
					["classes"] = { MAGE },
					["lvl"] = 10,
					["groups"] = {
						objective(1, {	-- 0/1 Balnir Snapdragons
							["providers"] = {
								{ "i",   7227 },	-- Balnir Snapdragons
								{ "o", 102985 },	-- Balnir Snapdragons
							},
							["coord"] = { 77.4, 62.1, MAP.TIRISFAL_GLADES },
						}),
						i(7507),	-- Arcane Orb
						i(9514),	-- Arcane Staff
					},
				}),
				q(1474, {	-- The Binding (Succubus) [Undercity]
					["sourceQuest"] = 1476,	-- Hearts of the Pure
					["altQuests"] = { 1513 },	-- The Binding (Succubus) [Orgrimmar]
					["qg"] = 5675,	-- Carendin Halgar
					["coord"] = { 85.0, 25.6, MAP.UNDERCITY },
					["classes"] = { WARLOCK },
					["races"] = HORDE_ONLY,
					["lvl"] = 20,
					["groups"] = {
						objective(1, {	-- 0/1 Summoned Succubus slain
							["provider"] = { "n", 5677 },	-- Summoned Succubus
							["cost"] = { { "i", 6286, 1 } },	-- Pure Hearts
						}),
						recipe(712),	-- Summon Succubus
						i(22243),	-- Small Soul Pouch
					},
				}),
				q(1471, {	-- The Binding (Voidwalker) [Undercity]
					["sourceQuest"] = 1473,	-- Creature of the Void [Undercity]
					["altQuests"] = { 1504 },	-- The Binding (Voidwalker) [Orgrimmar]
					["qg"] = 5675,	-- Carendin Halgar
					["coord"] = { 85.0, 25.6, MAP.UNDERCITY },
					["classes"] = { WARLOCK },
					["races"] = { ORC, UNDEAD },
					["lvl"] = 10,
					["groups"] = {
						objective(1, {	-- 0/1 Summoned Voidwalker slain
							["provider"] = { "n", 5676 },	-- Summoned Voidwalker
							["cost"] = { { "i", 6284, 1 } },	-- Runes of Summoning
						}),
						recipe(697),	-- Summon Voidwalker
					},
				}),
				q(1886, {	-- The Deathstalkers (1/4)
					["sourceQuest"] = 1885,	-- Mennet Carkad
					["qg"] = 6467,	-- Mennet Carkad
					["coord"] = { 83.2, 69.0, MAP.UNDERCITY },
					["maps"] = { MAP.SILVERPINE_FOREST },
					["races"] = { UNDEAD },
					["classes"] = { ROGUE },
					["lvl"] = 10,
					["groups"] = {
						objective(1, {	-- 0/1 Astor's Letter of Introduction
							["provider"] = { "i", 7231 },	-- Astor's Letter of Introduction
							["coords"] = {
								{ 67.4, 5.6, MAP.SILVERPINE_FOREST },
								{ 53.6, 19.5, MAP.SILVERPINE_FOREST },
								{ 51.0, 36.2, MAP.SILVERPINE_FOREST },
								{ 46.4, 41.4, MAP.SILVERPINE_FOREST },
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
					["coord"] = { 83.2, 69.0, MAP.UNDERCITY },
					["races"] = { UNDEAD },
					["classes"] = { ROGUE },
					["lvl"] = 10,
				}),
				q(1899, {	-- The Deathstalkers (3/4)
					["sourceQuest"] = 1898,	-- The Deathstalkers (2/4)
					["qg"] = 6522,	-- Andron Gant
					["coord"] = { 54.6, 75.6, MAP.UNDERCITY },
					["races"] = { UNDEAD },
					["classes"] = { ROGUE },
					["lvl"] = 10,
					["groups"] = {
						objective(1, {	-- 0/1 Andron's Ledger
							["provider"] = { "i", 7294 },	-- Andron's Ledger
							["coord"] = { 55.3, 76.7, MAP.UNDERCITY },
						}),
					},
				}),
				q(1978, {	-- The Deathstalkers (4/4)
					["sourceQuest"] = 1899,	-- The Deathstalkers (3/4)
					["providers"] = {
						{ "n", 6467 },	-- Mennet Carkad
						{ "i", 7294 },	-- Andron's Ledger
					},
					["coord"] = { 83.2, 69.0, MAP.UNDERCITY },
					["races"] = { UNDEAD },
					["classes"] = { ROGUE },
					["lvl"] = 10,
					["groups"] = {
						i(7298),	-- Blade of Cunning
					},
				}),
				q(1164, {	-- To Steal From Thieves
					["qg"] = 4486,	-- Genavie Callow
					["coord"] = { 64.8, 49.6, MAP.UNDERCITY },
					["maps"] = { MAP.ARATHI_HIGHLANDS },
					["races"] = HORDE_ONLY,
					["lvl"] = 27,
					["groups"] = {
						objective(1, {	-- 0/1 Kenata's Head
							["provider"] = { "i", 5830 },	-- Kenata's Head
							["coord"] = { 56.2, 36.0, MAP.ARATHI_HIGHLANDS },
							["cr"] = 4480,	-- Kenata Dabyrie
						}),
						objective(2, {	-- 0/1 Marcel's Head
							["provider"] = { "i", 5832 },	-- Marcel's Head
							["coord"] = { 54.5, 38.6, MAP.ARATHI_HIGHLANDS },
							["cr"] = 4481,	-- Marcel Dabyrie
						}),
						objective(3, {	-- 0/1 Fardel's Head
							["provider"] = { "i", 5831 },	-- Fardel's Head
							["coord"] = { 55.0, 40.0, MAP.ARATHI_HIGHLANDS },
							["cr"] = 4479,	-- Fardel Dabyrie
						}),
						i(4443),	-- Grim Pauldrons
						i(2032),	-- Gallan Cuffs
					},
				}),
				q(1999, {	-- Tools of the Trade
					["sourceQuest"] = 1998,	-- Fenwick Thatros
					["qg"] = 6467,	-- Mennet Carkad
					["coord"] = { 83.2, 69.0, MAP.UNDERCITY },
					["maps"] = { MAP.SILVERPINE_FOREST },
					["races"] = { UNDEAD },
					["classes"] = { ROGUE },
					["lvl"] = 16,
					["groups"] = {
						objective(1, {	-- 0/1 Dalaran Status Report
							["provider"] = { "i", 7309 },	-- Dalaran Status Report
						}),
					},
				}),
				q(5658, {	-- Touch of Weakness [Undercity]
					["altQuests"] = {
						5660,	-- Touch of Weakness [Durotar]
						5661,	-- Touch of Weakness [Mulgore]
						5662,	-- Touch of Weakness [Orgrimmar]
						5663,	-- Touch of Weakness [Thunder Bluff]
					},
					["qg"] = 4606,	-- Aelthalyste
					["coord"] = { 49.0, 18.3, MAP.UNDERCITY },
					["classes"] = { PRIEST },
					["races"] = { UNDEAD },
					["lvl"] = 10,
					["groups"] = {
						{
							["recipeID"] = 2652,	-- Touch of Weakness (Rank 1)
							["rank"] = 1,
						},
					},
				}),
				q(1841, {	-- Velora Nitely and the Brutal Legguards
					["sourceQuest"] = 1838,	-- Brutal Armor
					["qg"] = 5878,	-- Thun'grim Firegaze
					["coord"] = { 57.2, 30.2, MAP.THE_BARRENS },
					["classes"] = { WARRIOR },
					["races"] = HORDE_ONLY,
					["lvl"] = 20,
				}),
			}),
			n(TREASURES, {
				o(180666, {	-- Draconic for Dummies
					["coord"] = { 77.0, 38.0, MAP.UNDERCITY },
					["groups"] = {
						i(21106),	-- Draconic for Dummies [Chapter IV]
					},
				}),
			}),
			n(VENDORS, {
				n(4604, {	-- Abigail Sawyer <Bow Merchant>
					["coord"] = { 54.8, 38.0, MAP.UNDERCITY },
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
					["coord"] = { 51.8, 74.6, MAP.UNDERCITY },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(9301, {	-- Recipe: Elixir of Shadow Power (RECIPE!)
							["isLimited"] = true,
						}),
						i(13477, {
							["isLimited"] = true,
						}),	-- Recipe: Superior Mana Potion (RECIPE!)
					},
				}),
				n(4602, {	-- Benijah Fenner
					["coord"] = { 58.6, 32.6, MAP.UNDERCITY },
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
				n(4569, {	-- Charles Seaton <Blade Merchant>
					["coord"] = { 77.0, 50.0, MAP.UNDERCITY },
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
				n(4561, {	-- Daniel Bartlett <General Trade Supplier>
					["coord"] = { 64.0, 37.4, MAP.UNDERCITY },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(16217, {	-- Formula: Enchant Shield - Greater Stamina (RECIPE!)
							["isLimited"] = true,
						}),
					},
				}),
				n(4555, {	-- Eleanor Rusk <General Goods>
					["coord"] = { 69.2, 48.9, MAP.UNDERCITY },	-- Trade Quarter
					["races"] = HORDE_ONLY,
				}),
				n(4585, {	-- Ezekiel
					["coord"] = { 75.6, 51.6, MAP.UNDERCITY },
					["races"] = HORDE_ONLY,
				}),
				n(4775, {	-- Felicia Doan <Trade Supplies>
					["coord"] = { 64.1, 50.6, MAP.UNDERCITY },
					["races"] = HORDE_ONLY,
				}),
				n(4601, {	-- Francis Eliot
					["coord"] = { 58.6, 32.6, MAP.UNDERCITY },
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
					["coord"] = { 58.4, 32.6, MAP.UNDERCITY },
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
					["coord"] = { 70.6, 59.6, MAP.UNDERCITY },
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
					["coord"] = { 61.4, 41.2, MAP.UNDERCITY },
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
					["coord"] = { 67.6, 44.1, MAP.UNDERCITY },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(10393),	-- Undercity Cockroach (PET!)
					},
				}),
				n(4589, {	-- Joseph Moore <Leatherworking Supplies>
					["coord"] = { 70.1, 58.4, MAP.UNDERCITY },
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
				n(4615, {	-- Katrina Alliestar <Herbalism Supplier>
					["coord"] = { 54.73, 48.9, MAP.UNDERCITY },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(22250, {	-- Herb Pouch
							["description"] = "Only select Herbalism Suppliers sells this pouch.",
							["providers"] = {
								{ "n", 4216},	-- Chardryn <Herbalism Supplies>
								{ "n", 5503},	-- Eldraeith <Herbalism Supplier>
								{ "n", 5138},	-- Gwina Stonebranch <Herbalism Supplier>
								{ "n", 4615},	-- Katrina Alliestar <Herbalism Supplier>
								{ "n", 3548},	-- Selina Weston <Alchemy & Herbalism Supplies>
								{ "n", 3405},	-- Zeal'aya <Herbalism Supplies>
							},
						}),
					},
				}),
				n(4558, {	-- Lauren Newcomb <Light Armor Merchant>
					["coord"] = { 64.0, 38.0, MAP.UNDERCITY },
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
						i(210),	-- Dirty Leather Boots
						i(1836),	-- Dirty Leather Bracers
						i(714),	-- Dirty Leather Gloves
						i(209),	-- Dirty Leather Pants
						i(85),	-- Dirty Leather Vest
						i(3595),	-- Tattered Cloth Belt
						i(195),	-- Tattered Cloth Boots
						i(3596),	-- Tattered Cloth Bracers
						i(711),	-- Tattered Cloth Gloves
						i(194),	-- Tattered Cloth Pants
						i(193),	-- Tattered Cloth Vest
					},
				}),
				n(4574, {	-- Lizbeth Cromwell <Fishing Supplier>
					["coord"] = { 81.0, 30.8, MAP.UNDERCITY },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(6325),	-- Recipe: Brilliant Smallfish (RECIPE!)
						i(6328),	-- Recipe: Longjaw Mud Snapper (RECIPE!)
						i(17062),	-- Recipe: Mithril Head Trout (RECIPE!)
						i(6369),	-- Recipe: Rockscale Cod (RECIPE!)
					},
				}),
				n(4557, {	-- Louis Warren
					["coord"] = { 62.0, 41.2, MAP.UNDERCITY },
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
					["coord"] = { 71.4, 28.4, MAP.UNDERCITY },
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
					["sym"] = { {"sub", "common_vendor", 5188 } },	-- Garyl <Tabard Vendor>
					["coord"] = { 69.3, 44.8, MAP.UNDERCITY },
					["races"] = HORDE_ONLY,
				}),
				n(4577, {	-- Millie Gregorian <Tailoring Supplies>
					["coord"] = { 70.6, 30.1, MAP.UNDERCITY },
					["races"] = HORDE_ONLY,
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
					["coord"] = { 61.6, 28.4, MAP.UNDERCITY },
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
					["coord"] = { 77.2, 50.2, MAP.UNDERCITY },
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
					["coord"] = { 62.2, 27.0, MAP.UNDERCITY },
					["races"] = HORDE_ONLY,
					["sym"] = {{"select","itemID",
						3024,	-- BKP 2700 "Enforcer"
						3023,	-- Large Bore Blunderbuss
						2509,	-- Ornate Blunderbuss
						2510,	-- Solid Blunderbuss
					}},
				}),
				n(4553, {	-- Ronald Burch <Cooking Supplier>
					["coord"] = { 62.3, 43.1, MAP.UNDERCITY },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(6330),	-- Recipe: Bristle Whisker Catfish (RECIPE!)
						i(6368),	-- Recipe: Rainbow Fin Albacore (RECIPE!)
						i(21219),	-- Recipe: Sagefish Delight (RECIPE!)
						i(21099),	-- Recipe: Smoked Sagefish (RECIPE!)
					},
				}),
				n(4597, {	-- Samuel Van Brunt <Blacksmithing Supplies>
					["coord"] = { 61.4, 30.1, MAP.UNDERCITY },
					["races"] = HORDE_ONLY,
				}),
				n(4599, {	-- Sarah Killan <Mining Supplies>
					["coord"] = { 56.6, 37.3, MAP.UNDERCITY },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(2901),	-- Mining Pick
					},
				}),
				n(5821, {	-- Sheldon Von Croy <Cloth Armor Merchant>
					["coord"] = { 70.6, 28.8, MAP.UNDERCITY },
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
				n(4570, {	-- Sydney Upton <Staff Merchant>
					["coord"] = { 69.8, 27.4, MAP.UNDERCITY },
					["races"] = HORDE_ONLY,
					["sym"] = {{"select","itemID",
						2527,	-- Battle Staff
						2535,	-- War Staff
					}},
				}),
				n(4554, {	-- Tawny Grisette <Mushroom Vendor>
					["coord"] = { 69.7, 44.8, MAP.UNDERCITY },
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
					["coord"] = { 62.0, 60.8, MAP.UNDERCITY },
					["races"] = HORDE_ONLY,
					["groups"] = appendGroups(VANILLA_ENCHANTING_COMMON_RECIPES, {}),
				}),
				n(4559, {	-- Timothy Weldon
					["coord"] = { 63.6, 39.6, MAP.UNDERCITY },
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
					["coord"] = { 62.8, 39.6, MAP.UNDERCITY },
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
					["coord"] = { 70.0, 27.2, MAP.UNDERCITY },
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
		},
	}),
}));
