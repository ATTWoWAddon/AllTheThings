---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(KALIMDOR, {
	m(FERALAS, {
		["lore"] = "Feralas is a rainforest surrounded by arid zones in southern Kalimdor. It is known for the mystery surrounding Dire Maul--a former city of the Highborne that remained hermetic and drew upon demonic energy to stay immortal. There is a strong Night Elf presence--both in Feathermoon Stronghold, the base of operations for the Sentinels, and in the numerous ruins scattered around the zones.",
		["icon"] = 236764,
		["groups"] = {
			n(ACHIEVEMENTS, {
				explorationAch(849),	-- Explore Feralas
				ach(4932, {	-- Feralas Quests
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					-- #if AFTER MOP
					["groups"] = {
						crit(38913, {	-- The Fate of Taerar
							["sourceQuest"] = 25398,	-- Sealing the Dream
						}),
						crit(38914, {	-- The Twilight Sermon
							["sourceQuest"] = 25333,	-- Might of the Sentinels
						}),
						crit(38915, {	-- Freed
							["sourceQuest"] = 26401,	-- Return to Vestia
						}),
						crit(38916, {	-- Forces of Nature
							["sourceQuest"] = 25468,	-- Forces of Nature: Faerie Dragons
						}),
						crit(38917, {	-- Forces of Nature
							["sourceQuest"] = 25469,	-- Forces of Nature: Mountain Giants
						}),
						crit(38918, {	-- The Dragons of Nightmare
							["sourceQuest"] = 25438,	-- Ysondre's Farewell
						}),
					},
					-- #else
					["sourceQuests"] = {
						25398,	-- Sealing the Dream
						25333,	-- Might of the Sentinels
						26401,	-- Return to Vestia
						25468,	-- Forces of Nature: Faerie Dragons
						25469,	-- Forces of Nature: Mountain Giants
						25438,	-- Ysondre's Farewell
					},
					-- #endif
				}),
				ach(4979, {	-- Feralas Quests
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					-- #if AFTER MOP
					["groups"] = {
						crit(38919, {	-- The Fate of Taerar
							["sourceQuest"] = 25250,	-- Sealing the Dream
						}),
						crit(38920, {	-- The Twilight Sermon
							["sourceQuest"] = 25329,	-- Might of the Stonemaul
						}),
						crit(38921, {	-- Muisek
							["sourceQuest"] = 25391,	-- Weapons of Spirit
						}),
						crit(38922, {	-- Freed
							["sourceQuest"] = 25645,	-- Return to Sage Palerunner
						}),
						crit(38923, {	-- The Dragons of Nightmare
							["sourceQuest"] = 25383,	-- Ysondre's Farewell
						}),
					},
					-- #else
					["sourceQuests"] = {
						25250,	-- Sealing the Dream
						25329,	-- Might of the Stonemaul
						25391,	-- Weapons of Spirit
						25645,	-- Return to Sage Palerunner
						25383,	-- Ysondre's Farewell
					},
					-- #endif
				}),
			}),
			battlepets({
				["sym"] = {{"select","speciesID",
					378,	-- Rabbit (PET!)
					379,	-- Squirrel (PET!)
				}},
				["groups"] = {
					pet(557, {	-- Nether Faerie Dragon (PET!)
						["description"] = "Can be found in the surrounding areas outside of the Dire Maul instance portals in Feralas.",
					}),
					pet(387),	-- Snake (PET!)
					pet(1158, {	-- Stunted Yeti (PET!)
						["description"] = "Can be found near Feral Scar Yetis south of Dire Maul.",
						["timeline"] = { ADDED_5_1_0 },
					}),
				},
			}),
			explorationHeader({
				exploration(1099),	-- Camp Mojache
				exploration(5036, {["timeline"] = { ADDED_4_0_1 }}),	-- Darkmist Ruins
				exploration(2577),	-- Dire Maul
				exploration(1111),	-- Dream Bough
				exploration(5072, {["timeline"] = { ADDED_4_0_1 }}),	-- Feathermoon Stronghold
				exploration(1105),	-- Feral Scar Vale
				exploration(1106),	-- Frayfeather Highlands
				exploration(1103),	-- Gordunni Outpost
				exploration(1100),	-- Grimtotem Compound
				-- #if BEFORE CATA
				exploration(1121),	-- Isle of Dread
				-- #endif
				exploration(1137),	-- Lower Wilds
				-- #if BEFORE CATA
				exploration(1113),	-- Oneiros
				-- #endif
				exploration(1116, {["timeline"] = { ADDED_4_0_1 }}),	-- Ruins of Feathermoon
				exploration(2522),	-- Ruins of Isildien
				exploration(1114),	-- Ruins of Ravenwind
				-- #if BEFORE CATA
				exploration(1120),	-- Sardor Isle
				-- #endif
				exploration(1108),	-- The Forgotten Coast
				exploration(1119),	-- The Twin Colossals
				exploration(1101),	-- The Writhing Deep
				exploration(2520, {["timeline"] = { ADDED_4_0_1 }}),	-- Woodpaw Den
				exploration(2519),	-- Woodpaw Hills
			}),
			n(FLIGHT_PATHS, {
				fp(568, {	-- Camp Ataya, Feralas
					["cr"] = 40473,	-- Tono <Wind Rider Master>
					["coord"] = { 41.4, 15.4, FERALAS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				fp(42, {	-- Camp Mojache, Feralas
					["crs"] = {
						-- #if AFTER CATA
						39898,	-- Shyn <Hippogryph Master>
						-- #else
						8020,	-- Shyn <Hippogryph Master>
						-- #endif
					},
					["coord"] = { 75.4, 44.2, FERALAS },
					["races"] = HORDE_ONLY,
				}),
				fp(565, {	-- Dreamer's Rest, Feralas
					["cr"] = 40966,	-- Selor <Flight Master>
					["coord"] = { 50.2, 16.6, FERALAS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				fp(41, {	-- Feathermoon, Feralas
					["crs"] = {
						-- #if AFTER CATA
						41383,	-- Irela Moonfeather <Hippogryph Master>
						-- #else
						8019,	-- Fyldren Moonfeather <Hippogryph Master>
						-- #endif
					},
					["coords"] = {
						-- #if AFTER CATA
						{ 46.8, 45.3, FERALAS },
						-- #else
						{ 30.2, 43.2, FERALAS },
						-- #endif
					},
					["races"] = ALLIANCE_ONLY,
				}),
				fp(31, {	-- Shadebough, Feralas [CATA+] / Thalanaar, Feralas
					["crs"] = {
						-- #if AFTER CATA
						40367,	-- Seyala Nightwisp <Hippogryph Master>
						-- #else
						4319,	-- Thyssiana <Hippogryph Master>
						-- #endif
					},
					["coords"] = {
						-- #if AFTER CATA
						{ 77.3, 56.8, FERALAS },
						-- #else
						{ 89.4, 45.8, FERALAS },
						-- #endif
					},
					["races"] = ALLIANCE_ONLY,
				}),
				fp(569, {	-- Stonemaul Hold, Feralas
					["cr"] = 41605,	-- Mergek <Wind Rider Master>
					["coord"] = { 51, 48.4, FERALAS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				fp(567, {	-- Tower of Estulan, Feralas
					["cr"] = 41580,	-- Aryenda <Flight Master>
					["coord"] = { 57.1, 53.9, FERALAS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
			}),
			n(PROFESSIONS, {
				prof(ALCHEMY, {
					n(7948, {	-- Kylanna Windwhisper <Alchemy Trainer>
						["coord"] = { 46.6, 42.8, FERALAS },
						["races"] = ALLIANCE_ONLY,
						-- #if BEFORE 2.1.0
						["g"] = EXPERT_ARTISAN_ALCHEMY,
						-- #endif
					}),
				}),
				prof(FISHING, {
					-- #if ANYCLASSIC
					i(16967, {	-- Feralas Ahi
						["coord"] = { 62.0, 52.0, FERALAS },
						["description"] = "Best fished at 62.0 52.0",
					}),
					-- #endif
					-- #if BEFORE CATA
					o(180751),	-- Floating Wreckage
					-- #endif
					-- #if AFTER CATA
					o(180685),	-- Waterlogged Wreckage
					-- #endif
				}),
				prof(LEATHERWORKING, {
					n(7870, {	-- Caryssia Moonhunter <Tribal Leatherworking Trainer>
						["coord"] = { 89.4, 46.4, FERALAS },
						["races"] = ALLIANCE_ONLY,
						["timeline"] = { REMOVED_4_0_3 },
						["g"] = CLASSIC_TBC_TRIBAL,
					}),
					n(11098, {	-- Hahrana Ironhide <Master Leatherworker>
						["coord"] = { 74.4, 43.0, FERALAS },
						["races"] = HORDE_ONLY,
						-- #if BEFORE 2.1.0
						["g"] = EXPERT_ARTISAN_LEATHERWORKING,
						-- #endif
					}),
				}),
				-- #if AFTER CATA
				prof(SKINNING, {
					i(7392, {	-- Green Whelp Scale
						["cr"] = 39384,	-- Noxious Whelp
					}),
				}),
				-- #endif
			}),
			n(QUESTS, {
				q(25362, {	-- A Grim Discovery
					["qg"] = 4544,	-- Krueg Skullsplitter
					["sourceQuest"] = 25361,	-- A New Cloak's Sheen
					["coord"] = { 74.8, 43.2, FERALAS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/20 Grimtotem Horn
							["provider"] = { "i", 9460 },	-- Grimtotem Horn
							["crs"] = {
								7725,	-- Grimtotem Raider
								7726,	-- Grimtotem Naturalist
								7727,	-- Grimtotem Shaman
							},
						}),
					},
				}),
				q(2974, {	-- A Grim Discovery (1/2)
					["qg"] = 4544,	-- Krueg Skullsplitter
					["sourceQuest"] = 2973,	-- A New Cloak's Sheen
					["coord"] = { 76.0, 42.8, FERALAS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 38,
					["groups"] = {
						objective(1, {	-- 0/20 Grimtotem Horn
							["provider"] = { "i", 9460 },	-- Grimtotem Horn
							["crs"] = {
								7726,	-- Grimtotem Naturalist
								7725,	-- Grimtotem Raider
								7727,	-- Grimtotem Shaman
							},
						}),
					},
				}),
				q(2976, {	-- A Grim Discovery (2/2)
					["providers"] = {
						{ "n", 4544 },	-- Krueg Skullsplitter
						{ "i", 9462 },	-- Crate of Grimtotem Horns
					},
					["sourceQuest"] = 2974, -- A Grim Discovery (1/2)
					["coord"] = { 76.0, 42.8, FERALAS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 37,
					["groups"] = {
						i(11858, {	-- Battlehard Cape
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(11859, {	-- Jademoon Orb
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(4266, {	-- A Hero's Welcome
					["qg"] = 7880,	-- Ginro Hearthkindle
					["sourceQuest"] = 4265,	-- Freed from the Hive
					["coord"] = { 31.8, 45.2, FERALAS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 40,
					["groups"] = {
						i(11856, {	-- Ceremonial Elven Blade
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(11857, {	-- Sanctimonial Rod
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(25361, {	-- A New Cloak's Sheen (when does this pop up?)
					["qg"] = 4544,	-- Krueg Skullsplitter
					["sourceQuest"] = 25345,	-- Faerie Dragon Muisek
					["coord"] = { 74.8, 43.3, FERALAS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/10 Iridescent Sprite Darter Wing
							["provider"] = { "i", 9369 },	-- Iridescent Sprite Darter Wing
							["crs"] = {
								5278,	-- Sprite Darter
								7997,	-- Captured Sprite Darter
							},
						}),
					},
				}),
				q(2973, {	-- A New Cloak's Sheen
					["qg"] = 4544,	-- Krueg Skullsplitter
					["coord"] = { 76.0, 42.8, FERALAS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 38,
					["groups"] = {
						objective(1, {	-- Iridescent Sprite Darter Wing
							["provider"] = { "i", 9369 },	-- Iridescent Sprite Darter Wing
							["crs"] = {
								7997,	-- Captured Sprite Darter
								5278,	-- Sprite Darter
							},
						}),
					},
				}),
				q(3121, {	-- A Strange Request
					["providers"] = {
						{ "n", 8115 },	-- Witch Doctor Uzer'i
						{ "i", 9629 },	-- A Shrunken Head
					},
					["coord"] = { 74.4, 43.4, FERALAS },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["lvl"] = 40,
				}),
				q(2981, {	-- A Threat in Feralas
					["qg"] = 4485,	-- Belgrom Rockmaul
					["coord"] = { 75, 34.2, ORGRIMMAR },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 38,
				}),
				q(26574, {	-- Adella's Covert Camp
					["qg"] = 39653,	-- Silvia
					["coord"] = { 56.9, 55.0, FERALAS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
				}),
				q(7725, {	-- Again With the Zapped Giants
					["qg"] = 14637,	-- Zorbin Fandazzle
					["sourceQuest"] = 7003,	-- Zapped Giants
					["coord"] = { 44.8, 43.4, FERALAS },
					["maxReputation"] = { FACTION_STEAMWHEEDLE_CARTEL, EXALTED },	-- Steamwheedle Cartel, Exalted.
					["timeline"] = { REMOVED_4_0_3 },
					["repeatable"] = true,
					["lvl"] = 45,
					["groups"] = {
						objective(1, {	-- 0/10 Miniaturization Residue
							["provider"] = { "i", 18956 },	-- Miniaturization Residue
							["cost"] = {{ "i", 18904, 1 }},	-- Zorbin's Ultra-Shrinker
							["crs"] = {
								5358,	-- Cliff Giant
								5360,	-- Deep Strider
								5357,	-- Land Walker
								5359,	-- Shore Strider
								5361,	-- Wave Strider
							},
						}),
					},
				}),
				q(2870, {	-- Against Lord Shalzaru
					["qg"] = 7877,	-- Latronicus Moonspear
					["sourceQuest"] = 2869,	-- Against the Hatecrest (2/2)
					["coord"] = { 30.4, 46.2, FERALAS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 40,
					["groups"] = {
						objective(1, {	-- 0/1 Mysterious Relic
							["provider"] = { "i", 9248 },	-- Mysterious Relic
							["coord"] = { 28.4, 70.4, FERALAS },
							["cr"] = 8136,	-- Lord Shalzaru
						}),
					},
				}),
				q(3130, {	-- Against the Hatecrest (1/2)
					["qg"] = 3936,	-- Shandris Feathermoon <General of the Sentinel Army>
					["sourceQuest"] = 2867,	-- Return to Feathermoon Stronghold
					["coord"] = { 30.3, 46.2, FERALAS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 40,
				}),
				q(2869, {	-- Against the Hatecrest (2/2)
					["qg"] = 7877,	-- Latronicus Moonspear
					["sourceQuest"] = 3130,	-- Against the Hatecrest (1/2)
					["coord"] = { 30.4, 46.2, FERALAS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 40,
					["groups"] = {
						objective(1, {	-- 0/10 Hatecrest Naga Scale
							["provider"] = { "i", 9247 },	-- Hatecrest Naga Scale
							["crs"] = {
								5334,	-- Hatecrest Myrmidon
								5335,	-- Hatecrest Screamer
								5333,	-- Hatecrest Serpent Guard
								5337,	-- Hatecrest Siren
								5336,	-- Hatecrest Sorceress
								5331,	-- Hatecrest Warrior
								5332,	-- Hatecrest Wave Rider
								5343,	-- Lady Szallah
								8136,	-- Lord Shalzaru
							},
						}),
					},
				}),
				q(25427, {	-- Alpha Strike [A]
					["qg"] = 39725,	-- Adella
					["sourceQuest"] = 25426,	-- War on the Woodpaw
					["coord"] = { 77.2, 56.5, FERALAS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/5 Woodpaw Alpha slain
							["provider"] = { "n", 5258 },	-- Woodpaw Alpha
						}),
					},
				}),
				q(25364, {	-- Alpha Strike [H]
					["qg"] = 7875,	-- Hadoken Swiftstrider
					["sourceQuest"] = 25363,	-- War on the Woodpaw
					["coord"] = { 74.9, 42.4, FERALAS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/5 Woodpaw Alpha slain
							["provider"] = { "n", 5258 },	-- Woodpaw Alpha
						}),
					},
				}),
				q(2863, {	-- Alpha Strike
					["qg"] = 7875,	-- Hadoken Swiftstrider
					["sourceQuest"] = 2862,	-- War on the Woodpaw
					["coord"] = { 74.8, 42.6, FERALAS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 39,
					["groups"] = {
						objective(1, {	-- 0/5 Woodpaw Alpha slain
							["provider"] = { "n", 5258 },	-- Woodpaw Alpha
						}),
					},
				}),
				q(3841, {	-- An Orphan Looking For a Home
					["providers"] = {
						{ "n", 7956 },	-- Kindal Moonweaver
						{ "i", 11102 },	-- Unhatched Sprite Darter Egg
					},
					["sourceQuest"] = 2972,	-- Doling Justice (2/2)
					["coord"] = { 65.8, 45.6, FERALAS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 38,
				}),
				q(25423, {	-- Ancient Suffering
					["qg"] = 40131,	-- Sensiria
					["sourceQuests"] = {
						25643,	-- The Darkmist Ruins
						25350,	-- Lost Apprentice
					},
					["coord"] = { 65.9, 62.8, FERALAS },
					["timeline"] = { ADDED_4_0_3 },
					["lockCriteria"] = { 1, "questID", 25368 },	-- Verinias the Twisted
					["groups"] = {
						objective(1, {	-- 0/6 Soul Essence
							["provider"] = { "i", 53136 },	-- Soul Essence
							["cr"] = 40059,	-- Highborne Poltergeist
						}),
					},
				}),
				q(4127, {	-- Boat Wreckage
					["providers"] = {
						{ "o", 164909 },	-- Wrecked Row Boat
						{ "i", 11462 },	-- Discarded Knife
					},
					["sourceQuest"] = 4125,	-- The Missing Courier (2)
					["coord"] = { 45.4, 65.0, FERALAS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 40,
				}),
				q(2979, {	-- Dark Ceremony
					["qg"] = 7777,	-- Rok Orhan
					["sourceQuest"] = 2978,	-- The Gordunni Scroll
					["coord"] = { 74.2, 44.6, FERALAS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 38,
					["groups"] = {
						objective(1, {	-- 0/1 Gordunni Orb
							["provider"] = { "i", 9371 },	-- Gordunni Orb
							["coord"] = { 59.2, 70.2, FERALAS },
							["cr"] = 5239,	-- Gordunni Mage-Lord
						}),
					},
				}),
				{	-- Dark Heart
					["allianceQuestData"] = q(25654, {	-- Dark Heart [A]
						["qg"] = 40035,	-- Erina Willowborn
						["coord"] = { 51.2, 17.8, FERALAS },
					}),
					["hordeQuestData"] = q(25340, {	-- Dark Heart [H]
						["qg"] = 7776,	-- Talo Thornhoof
						["coord"] = { 41.5, 15.2, FERALAS },
					}),
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/1 Edana's Dark Heart
							["provider"] = { "i", 9528 },	-- Edana's Dark Heart
							["cost"] = {{ "i", 9530, 1 }},	-- Horn of Hatetalon
							["coord"] = { 40.6, 8.6, FERALAS },
							["cr"] = 8075,	-- Edana Hatetalon
						}),
						-- #if AFTER 4.0.3
						i(9530, {	-- Horn of Hatetalon
							["crs"] = {
								5366,	-- Northspring Windcaller
								5362,	-- Northspring Harpy
							},
						}),
						-- #endif
						i(54921, {	-- Dark Crystal Waistband
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(54922, {	-- Bracers of the Captured Heart
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131417, {	-- Captured Heart Bindings
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				},
				q(3062, {	-- Dark Heart
					["qg"] = 7776,	-- Talo Thornhoof
					["coord"] = { 76, 43.8, FERALAS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 45,
					["groups"] = {
						objective(1, {	-- 0/1 Edana's Dark Heart
							["provider"] = { "i", 9528 },	-- Edana's Dark Heart
							["cost"] = {{ "i", 9530, 1 }},	-- Horn of Hatetalon
							["coord"] = { 40.6, 8.6, FERALAS },
							["cr"] = 8075,	-- Edana Hatetalon
						}),
						-- #if BEFORE 4.0.3
						i(9530, {	-- Horn of Hatetalon
							["crs"] = {
								5366,	-- Northspring Windcaller
								5364,	-- Northspring Slayer
								5363,	-- Northspring Roguefeather
								5362,	-- Northspring Harpy
							},
						}),
						-- #endif
						i(9665, {	-- Wingcrest Gloves
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(9666, {	-- Stronghorn Girdle
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(2871, {	-- Delivering the Relic
					["providers"] = {
						{ "n", 7877 },	-- Latronicus Moonspear
						{ "i", 9248 } -- Mysterious Relic
					},
					["sourceQuest"] = 2870,	-- Against Lord Shalzaru
					["coord"] = { 30.4, 46.2, FERALAS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 40,
					["groups"] = {
						i(9663, {	-- Dawnrider's Chestpiece
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(9664, {	-- Sentinel's Guard
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(2970, {	-- Doling Justice (1/2)
					["qg"] = 7957,	-- Jer'kai Moonweaver
					["sourceQuest"] = 2969,	-- Freedom for All Creatures
					["coord"] = { 65.8, 45.6, FERALAS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 38,
					["groups"] = {
						objective(1, {	-- 0/12 Grimtotem Naturalist slain
							["provider"] = { "n", 7726 },	-- Grimtotem Naturalist
						}),
						objective(2, {	-- 0/10 Grimtotem Raider slain
							["provider"] = { "n", 7725 },	-- Grimtotem Raider
						}),
						objective(3, {	-- 0/6 Grimtotem Shaman slain
							["provider"] = { "n", 7727 },	-- Grimtotem Shaman
						}),
					},
				}),
				q(2972, {	-- Doling Justice (2/2)
					["providers"] = {
						{ "n", 7957 },	-- Jer'kai Moonweaver
						{ "i", 9368 },	-- Jer'kai's Signet Ring
					},
					["sourceQuest"] = 2970,	-- Doling Justice (1/2)
					["coord"] = { 65.8, 45.6, FERALAS },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { DARNASSUS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 38,
					["groups"] = {
						i(10705, {	-- Firwillow Wristbands
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(10706, {	-- Nightscale Girdle
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(25402, {	-- Estulan's Examination
					["qg"] = 39653,	-- Silvia
					["sourceQuest"] = 25401,	-- The Gordunni Orb
					["coord"] = { 56.9, 55.0, FERALAS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(25466, {	-- Even More Fuel for the Zapping
					["qg"] = 14637,	-- Zorbin Fandazzle
					["coord"] = { 48.7, 44.8, FERALAS },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/10 Water Elemental Core
							["provider"] = { "i", 18958 },	-- Water Elemental Core
							["crs"] = {
								5461,	-- Sea Elemental
								5462,	-- Sea Spray
							},
						}),
						i(19039),	-- Zorbin's Water Resistant Hat
					},
				}),
				q(27133, {	-- Eyes in the Sky
					["qg"] = 3936,	-- Shandris Feathermoon
					["coord"] = { 46.0, 49.1, FERALAS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
				}),
				q(25345, {	-- Faerie Dragon Muisek
					["qg"] = 8115,	-- Witch Doctor Uzer'i
					["sourceQuest"] = 25338,	-- Treant Muisek
					["coord"] = { 74.4, 43.3, FERALAS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				q(3125, {	-- Faerie Dragon Muisek
					["qg"] = 8115,	-- Witch Doctor Uzer'i
					["sourceQuest"] = 3124,	-- Hippogryph Muisek
					["coord"] = { 74.4, 43.4, FERALAS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 40,
					["groups"] = {
						objective(1, {	-- 0/8 Faerie Dragon Muisek
							["provider"] = { "i", 9596 },	-- Faerie Dragon Muisek
							["cost"] = {{ "i", 9620, 1 }},	-- Faerie Dragon Muisek Vessel
							["crs"] = {
								5278,	-- Sprite Darter
								5276,	-- Sprite Dragon
							},
						}),
					},
				}),
				q(25475, {	-- Find OOX-22/FE!
					["provider"] = { "i", 8705 },	-- OOX-22/FE Distress Beacon
					["crs"] = { 39896 },	-- Feral Scar Yeti
					["timeline"] = { ADDED_4_0_3 },
				}),
				q(2766, {	-- Find OOX-22/FE!
					["provider"] = { "i", 8705 },	-- OOX-22/FE Distress Beacon
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 40,
				}),
				q(25468, {	-- Forces of Nature: Faerie Dragons
					["qg"] = 40913,	-- Handler Jesana
					["sourceQuest"] = 26574,	-- Adella's Covert Camp
					["coord"] = { 77.0, 56.6, FERALAS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/10 Faerie Dragons Rallied
							["provider"] = { "i", 58966 },	-- Jesana's Faerie Dragon Call
							["crs"] = {
								5278,	-- Sprite Darter
								5276,	-- Sprite Dragon
							},
						}),
					},
				}),
				q(25409, {	-- Forces of Nature: Hippogryphs
					["qg"] = 40078,	-- Handler Tessina
					["sourceQuest"] = 25407,	-- Forces of Nature: Wisps
					["coord"] = { 57.1, 53.8, FERALAS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(25469, {	-- Forces of Nature: Mountain Giants
					["qg"] = 40913,	-- Handler Jesana
					["sourceQuest"] = 25410,	-- Forces of Nature: Treants
					["coord"] = { 77.0, 56.6, FERALAS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(54885, {	-- Power of the Hippogryph
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(54886, {	-- Power of the Mountain Giant
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(54887, {	-- Power of the Faerie Dragon
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(54888, {	-- Power of the Treant
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(25410, {	-- Forces of Nature: Treants
					["qg"] = 40078,	-- Handler Tessina
					["sourceQuest"] = 25409,	-- Forces of Nature: Hippogryphs
					["coord"] = { 57.1, 53.8, FERALAS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(25407, {	-- Forces of Nature: Wisps
					["qg"] = 40078,	-- Handler Tessina
					["coord"] = { 57.1, 53.8, FERALAS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(4265, {	-- Freed from the Hive
					["provider"] = { "o", 164954 },	-- Zukk'ash Pod
					["sourceQuest"] = 4135,	-- The Writhing Deep
					["coord"] = { 72.1, 63.7, FERALAS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 40,
				}),
				q(2969, {	-- Freedom for All Creatures
					["qg"] = 7956,	-- Kindal Moonweaver
					["coord"] = { 65.8, 45.6, FERALAS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 38,
					["groups"] = {
						objective(1, {	-- Save at least 6 Sprite Darters from capture
							["providers"] = {
								{ "n", 7997 },	-- Captured Sprite Darter
								{ "n", 5278 },	-- Sprite Darter
							},
							["cost"] = {{ "i", 12301, 1 }},	-- Bamboo Cage Key
						}),
					},
				}),
				q(7721, {	-- Fuel for the Zapping
					["qg"] = 14637,	-- Zorbin Fandazzle
					["coord"] = { 44.8, 43.4, FERALAS },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 45,
					["groups"] = {
						objective(1, {	-- 0/10 Water Elemental Core
							["provider"] = { "i", 18958 },	-- Water Elemental Core
							["crs"] = {
								5461,	-- Sea Elemental
								5462,	-- Sea Spray
							},
						}),
						i(19039),	-- Zorbin's Water Resistant Hat
					},
				}),
				q(26402, {	-- General Shandris Feathermoon
					["qg"] = 40032,	-- Telaron Windflight
					["sourceQuest"] = 25398,	-- Sealing the Dream
					["description"] = "If you picked up or done any quest at Feathermoon Stronghold, this quest stops being available",
					["coord"] = { 50.7, 17.2, FERALAS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
				}),
				q(25458, {	-- General Skessesh
					["qg"] = 39723,	-- Tambre
					["coord"] = { 32.6, 45.7, FERALAS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Head of Skessesh
							["provider"] = { "i", 53099 },	-- Head of Skessesh
							["cr"] = 40051,	-- General Skessesh
						}),
					},
				}),
				q(25406, {	-- Gordok Guards
					["qg"] = 39653,	-- Silvia
					["sourceQuest"] = 25400,	-- The Gordunni Threat
					["coord"] = { 56.9, 55.0, FERALAS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/6 Gordok Enforcer slain
							["provider"] = { "n", 11440 },	-- Gordok Enforcer
						}),
						objective(2, {	-- 0/6 Gordok Ogre-Mage slain
							["provider"] = { "n", 11443 },	-- Gordok Ogre-Mage
						}),
					},
				}),
				q(2987, {	-- Gordunni Cobalt
					["qg"] = 8021,	-- Orwin Gizzmick
					["coord"] = { 75.6, 44.2, FERALAS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 38,
					["groups"] = {
						objective(1, {	-- 0/12 Gordunni Cobalt
							["providers"] = {
								{ "i",   9463 },	-- Gordunni Cobalt
								{ "o", 144064 },	-- Gordunni Dirt Mound
							},
							["cost"] = {{ "i", 9466, 1 }},	-- Orwin's Shovel
						}),
						i(9658, {	-- Boots of the Maharishi
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(9660, {	-- Stargazer Cloak
							["timeline"] = { REMOVED_4_0_3 },
						}),
						o(144064, {	-- Gordunni Dirt Mound
							i(15794, {	-- Ripped Ogre Loincloth
								["timeline"] = { REMOVED_4_0_3 },
							}),
						}),
					},
				}),
				q(25399, {	-- Hatecrest Forces
					["qg"] = 39723,	-- Tambre
					["coord"] = { 32.6, 45.7, FERALAS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/10 Hatecrest Naga killed
							["providers"] = {
								{ "n", 39750},	-- Hatecrest Naga Kill Credit Bunny
								{ "n", 39728},	-- Hatecrest Warrior
								{ "n", 39733},	-- Hatecrest Sorceress
							},
						}),
					},
				}),
				heroscall(q(28511, {	-- Hero's Call: Feralas!
					["timeline"] = { ADDED_4_0_3 },
					["maps"] = { DARNASSUS, THE_EXODAR },	-- Only found in Darnassus & The Exodar in Cataclysm.
					["isBreadcrumb"] = true,
					-- #if BEFORE 7.3.5
					-- Cataclysm: Minimum is level 34. (TODO: Confirm this.)
					-- Cataclysm: Maximum is level 38. (TODO: Test max level between 36 and 44)
					["lvl"] = { 34, 38 },
					-- #endif
				})),
				q(25337, {	-- Hippogryph Muisek
					["qg"] = 39894,	-- Gombana
					["sourceQuest"] = 25336,	-- Testing the Vessel
					["coord"] = { 52.2, 48.0, FERALAS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				q(3124, {	-- Hippogryph Muisek
					["qg"] = 8115,	-- Witch Doctor Uzer'i
					["sourceQuest"] = 3123,	-- Testing the Vessel
					["coord"] = { 74.4, 43.4, FERALAS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 40,
					["groups"] = {
						objective(1, {	-- 0/10 Hippogryph Muisek
							["provider"] = { "i", 9595 },	-- Hippogryph Muisek
							["cost"] = {{ "i", 9619, 1 }},	-- Hippogryph Muisek Vessel
							["crs"] = {
								5347,	-- Antilus the Soarer
								5300,	-- Frayfeather Hippogryph
								5306,	-- Frayfeather Patriarch
								5305,	-- Frayfeather Skystormer
								5304,	-- Frayfeather Stagwing
							},
						}),
					},
				}),
				q(25450, {	-- Improved Quality [A]
					["qg"] = 40226,	-- Pratt McGrubben
					["sourceQuest"] = 25449,	-- The Mark of Quality [A]
					["coord"] = { 45.4, 41.3, FERALAS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/10 Feral Scar Yeti Hide
							["provider"] = { "i", 18947 },	-- Feral Scar Yeti Hide
							["crs"] = {
								5296,	-- Rage Scar Yeti
								5297,	-- Elder Rage Scar
								5299,	-- Ferocious Rage Scar
								39896,	-- Feral Scar Yeti
							},
						}),
						i(54967, {	-- Pratt's Handcrafted Vest
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131862, {	-- Pratt's Handmade Hauberk
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(7733, {	-- Improved Quality [A]
					["qg"] = 7852,	-- Pratt McGrubben <Leatherworking Supplies>
					["sourceQuest"] = 2821,	-- The Mark of Quality [A]
					["coord"] = { 30.6, 42.7, FERALAS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 40,
					["groups"] = {
						objective(1, {	-- 0/10 Rage Scar Yeti Hide
							["provider"] = { "i", 18947 },	-- Rage Scar Yeti Hide
							["description"] = "Can also be looted via Skinning to speed up your progress.",
							["crs"] = {
								5297,	-- Elder Rage Scar
								5299,	-- Ferocious Rage Scar
								5296,	-- Rage Scar Yeti
							},
						}),
						i(19041, {	-- Pratt's Handcrafted Tunic
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(25453, {	-- Improved Quality [H]
					["qg"] = 7854,	-- Hangdor Swiftstrider
					["sourceQuest"] = 25452,	-- The Mark of Quality [H]
					["coord"] = { 52.8, 47.1, FERALAS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/10 Feral Scar Yeti Hide
							["provider"] = { "i", 18947 },	-- Feral Scar Yeti Hide
							["crs"] = {
								5296,	-- Rage Scar Yeti
								5297,	-- Elder Rage Scar
								5299,	-- Ferocious Rage Scar
								39896,	-- Feral Scar Yeti
							},
						}),
						i(54968, {	-- Jangdor's Handcrafted Vest
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131863, {	-- Jangdor's Handmade Hauberk
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(7734, {	-- Improved Quality [H]
					["qg"] = 7854,	-- Jangdor Swiftstrider
					["sourceQuest"] = 2822,	-- The Mark of Quality [H]
					["coord"] = { 74.4, 42.8, FERALAS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 40,
					["groups"] = {
						objective(1, {	-- 0/10 Rage Scar Yeti Hide
							["provider"] = { "i", 18947 },	-- Rage Scar Yeti Hide
							["description"] = "Can also be looted via Skinning to speed up your progress.",
							["crs"] = {
								5297,	-- Elder Rage Scar
								5299,	-- Ferocious Rage Scar
								5296,	-- Rage Scar Yeti
							},
						}),
						i(19042, {	-- Jangdor's Handcrafted Tunic
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(2939, {	-- In Search of Knowledge
					["qg"] = 7764,	-- Troyas Moonbreeze
					["coord"] = { 31.8, 45.5, FERALAS },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { TELDRASSIL },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 42,
				}),
				q(25432, {	-- It's not "Ogre" Yet
					["qg"] = 39725,	-- Adella
					["coord"] = { 77.2, 56.5, FERALAS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/5 Gordunni Hillguard slain
							["provider"] = { "n", 39952 },	-- Gordunni Hillguard
						}),
					},
				}),
				q(3787, {	-- Jonespyre's Request
					["qg"] = 5566,	-- Tannysa
					["coord"] = { 44.8, 77, STORMWIND_CITY },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 47,
				}),
				q(3788, {	-- Jonespyre's Request
					["qg"] = 7736,	-- Innkeeper Shyria
					["coord"] = { 31, 43.4, FERALAS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 47,
				}),
				{	-- Master of the Wild Leather
					["allianceQuestData"] = q(2853, {	-- Master of the Wild Leather [A]
						["providers"] = {
							{ "n", 7852 },	-- Pratt McGrubben
							{ "i", 9235 },	-- Pratt's Letter
						},
						["sourceQuests"] = {
							2851,	-- Wild Leather Boots [A]
							2850,	-- Wild Leather Helmet [A]
							2852,	-- Wild Leather Leggings [A]
							2848,	-- Wild Leather Shoulders [A]
							2849,	-- Wild Leather Vest [A]
						},
						["coord"] = { 30.6, 42.7, FERALAS },
					}),
					["hordeQuestData"] = q(2860, {	-- Master of the Wild Leather [H]
						["providers"] = {
							{ "n", 7854 },	-- Jangdor Swiftstrider
							{ "i", 9236 },	-- Jangdor's Letter
						},
						["sourceQuests"] = {
							2858,	-- Wild Leather Boots [H]
							2857,	-- Wild Leather Helmet [H]
							2859,	-- Wild Leather Leggings [H]
							2855,	-- Wild Leather Shoulders [H]
							2856,	-- Wild Leather Vest [H]
						},
						["coord"] = { 74.43, 42.91, FERALAS },
					}),
					["timeline"] = { REMOVED_4_0_3 },
					["requireSkill"] = LEATHERWORKING,
					["learnedAt"] = 200,
					["lvl"] = 30,
					["groups"] = {
						i(8408, {	-- Pattern: Wild Leather Cloak
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				},
				q(25333, {	-- Might of the Sentinels
					["qg"] = 39653,	-- Silvia
					["sourceQuests"] = {
						25406,	-- Gordok Guards
						25208,	-- Tell Silvia
					},
					["coord"] = { 56.9, 55.0, FERALAS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(54936, {	-- Sermon-Halter Gloves
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(54937, {	-- Sentinel's Headpiece
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(54935, {	-- Shadowleaf Bow
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131416, {	-- Sentinel's Headgear
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(25329, {	-- Might of the Stonemaul
					["qg"] = 39656,	-- Orhan Ogreblade
					["sourceQuest"] = 25344,	-- Ogre Abduction
					["coord"] = { 51.9, 47.9, FERALAS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(54939, {	-- Sermon-Halter Gloves
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(54940, {	-- Ogre's Coif
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(54938, {	-- Stonemaul Slinger
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131415, {	-- Ogre's Visage
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(25394, {	-- More than Illness [A]
					["qg"] = 40032,	-- Telaron Windflight
					["sourceQuest"] = 25447,	-- Signs of Change
					["coord"] = { 50.7, 17.2, FERALAS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/10 Noxious Whelp slain
							["provider"] = { "n", 39384 },	-- Noxious Whelp
						}),
						i(54910, {	-- Emerald Veil
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(54911, {	-- Green Whelp Shoulderguard
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131421, {	-- Green Whelp Spaulders
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(54912, {	-- Telaron's Platemail
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(156984, {	-- Windflight Knife
							["timeline"] = { ADDED_7_3_5 },
						}),
						i(54909, {	-- Windflight Staff
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(25230, {	-- More than Illness [H]
					["qg"] = 39377,	-- Konu Runetotem
					["sourceQuest"] = 25210,	-- Signs of Change
					["coord"] = { 41.3, 15.4, FERALAS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/10 Noxious Whelp slain
							["provider"] = { "n", 39384 },	-- Noxious Whelp
						}),
						i(54914, {	-- Emerald Veil
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(54915, {	-- Green Whelp Shoulderguard
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131411, {-- Green Whelp Spaulders
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(54916, {	-- Konu's Platemail
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(156983, {	-- Runetotem Slicer
							["timeline"] = { ADDED_7_3_5 },
						}),
						i(54913, {	-- Runetotem Staff
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(3792, {	-- Morrowgrain to Feathermoon Stronghold
					["qg"] = 7879,	-- Quintis Jonespyre
					["sourceQuest"] = 3791,	-- The Mystery of Morrowgrain
					["coord"] = { 32.4, 43.8, FERALAS },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = {{ "i", 11040, 5 }},	-- Morrowgrain
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					["lvl"] = 47,
				}),
				q(25346, {	-- Mountain Giant Muisek
					["qg"] = 8115,	-- Witch Doctor Uzer'i
					["sourceQuest"] = 25345,	-- Faerie Dragon Muisek
					["coord"] = { 74.4, 43.3, FERALAS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				q(3127, {	-- Mountain Giant Muisek
					["qg"] = 8115,	-- Witch Doctor Uzer'i
					["sourceQuest"] = 3126,	-- Treant Muisek
					["coord"] = { 74.4, 43.4, FERALAS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 40,
					["groups"] = {
						objective(1, {	-- 0/7 Mountain Giant Muisek
							["provider"] = { "i", 9597 },	-- Mountain Giant Muisek
							["cost"] = {{ "i", 9621, 1 }},	-- Mountain Giant Muisek Vessel
							["crs"] = {
								5358,	-- Cliff Giant
								5357,	-- Land Walker
							},
						}),
					},
				}),
				q(3128, {	-- Natural Materials
					["qg"] = 8115,	-- Witch Doctor Uzer'i
					["coord"] = { 74.4, 43.4, FERALAS },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { THE_HINTERLANDS },
					["races"] = HORDE_ONLY,
					["lvl"] = 40,
					["groups"] = {
						objective(1, {	-- 0/2 Splintered Log
							["provider"] = { "i", 9590 },	-- Splintered Log
							["cr"] = 7584,	-- Wandering Forest Walker
						}),
						objective(2, {	-- 0/6 Encrusted Minerals
							["provider"] = { "i", 9589 },	-- Encrusted Minerals
							["crs"] = {
								7997,	-- Captured Sprite Darter
								5358,	-- Cliff Giant
								5357,	-- Land Walker
								5278,	-- Sprite Darter
								5276,	-- Sprite Dragon
							},
						}),
						objective(3, {	-- 0/20 Resilient Sinew
							["provider"] = { "i", 9591 },	-- Resilient Sinew
							["crs"] = {
								5347,	-- Antilus the Soarer
								5300,	-- Frayfeather Hippogryph
								5306,	-- Frayfeather Patriarch
								5305,	-- Frayfeather Skystormer
								5304,	-- Frayfeather Stagwing
								7808,	-- Marauding Owlbeast
								2928,	-- Primitive Owlbeast
								2929,	-- Savage Owlbeast
								2927,	-- Vicious Owlbeast
							},
						}),
						objective(4, {	-- 0/40 Metallic Fragments
							["provider"] = { "i", 9592 },	-- Metallic Fragments
							["crs"] = {
								5347,	-- Antilus the Soarer
								5358,	-- Cliff Giant
								5300,	-- Frayfeather Hippogryph
								5306,	-- Frayfeather Patriarch
								5305,	-- Frayfeather Skystormer
								5304,	-- Frayfeather Stagwing
								5357,	-- Land Walker
								7584,	-- Wandering Forest Walker
								7808,	-- Marauding Owlbeast
								2928,	-- Primitive Owlbeast
								2929,	-- Savage Owlbeast
								2927,	-- Vicious Owlbeast
							},
						}),
					},
				}),
				q(25403, {	-- Ogre Abduction [A]
					["qg"] = 40052,	-- Estulan
					-- #if AFTER 7.0.3
					["description"] = "High-level players may require |cff0070ddSoft Foam Sword|r to lower creature health to 10%.",
					-- #endif
					["sourceQuest"] = 25402,	-- Estulan's Examination
					["coord"] = { 57.0, 55.4, FERALAS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(54927, {	-- Soulstealer's Bracers
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(54929, {	-- Shoulder of the Ogre-Nabber
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(54930, {	-- Abductor's Coverings
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(54928, {	-- Modified Spell Shield
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131423, {	-- Spaulders of the Ogre-Nabber
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(25344, {	-- Ogre Abduction [H]
					["qg"] = 39840,	-- Swar'jan
					-- #if AFTER 7.0.3
					["description"] = "High-level players may require |cff0070ddSoft Foam Sword|r to lower creature health to 10%.",
					-- #endif
					["sourceQuest"] = 25342,	-- Talk to Swar'jan
					["coord"] = { 51.9, 46.6, FERALAS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(54931, {	-- Soulstealer's Bracers
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(54933, {	-- Shoulder of the Ogre-Nabber
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(54934, {	-- Abductor's Coverings
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(54932, {	-- Modified Spell Shield
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131418, {	-- Spaulders of the Ogre-Nabber
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(27134, {	-- Ogre in the Field
					["qg"] = 39656,	-- Orhan Ogreblade
					["coord"] = { 51.9, 47.9, FERALAS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				q(25454, {	-- Perfect Yeti Hide
					["provider"] = { "i", 55167 },	-- Perfect Yeti Hide
					["sourceQuest"] = 25452,	-- The Mark of Quality
					["crs"] = { 39896 },	-- Feral Scar Yeti
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				q(7738, {	-- Perfect Yeti Hide
					["provider"] = { "i", 18972 },	-- Perfect Yeti Hide
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["crs"] = {
						5297,	-- Elder Rage Scar
						5299,	-- Ferocious Rage Scar
						5296,	-- Rage Scar Yeti
					},
					["lvl"] = 40,
				}),
				q(25451, {	-- Pristine Yeti Hide
					["provider"] = { "i", 55166 },	-- Pristine Yeti Hide
					["coord"] = { 55.4, 56.4, FERALAS },	-- General area where the Quest Starter can be looted
					["sourceQuest"] = 25449,	-- The Mark of Quality
					["crs"] = { 39896 },	-- Feral Scar Yeti
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(7735, {	-- Pristine Yeti Hide
					["provider"] = { "i", 18969 },	-- Pristine Yeti Hide
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					["crs"] = {
						5297,	-- Elder Rage Scar
						5299,	-- Ferocious Rage Scar
						5296,	-- Rage Scar Yeti
					},
					["lvl"] = 40,
				}),
				q(4130, {	-- Psychometric Reading
					["qg"] = 7879,	-- Quintis Jonespyre
					["sourceQuest"] = 4129,	-- The Knife Revealed
					["coord"] = { 32.5, 43.8, FERALAS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 40,
				}),
				q(7726, {	-- Refuel for the Zapping
					["qg"] = 14637,	-- Zorbin Fandazzle
					["sourceQuest"] = 7721,	-- Fuel for the Zapping
					["coord"] = { 44.8, 43.4, FERALAS },
					["maxReputation"] = { FACTION_STEAMWHEEDLE_CARTEL, EXALTED },	-- Steamwheedle Cartel, Exalted.
					["timeline"] = { REMOVED_4_0_3 },
					["repeatable"] = true,
					["lvl"] = 45,
					["groups"] = {
						objective(1, {	-- 0/6 Water Elemental Core
							["provider"] = { "i", 18958 },	-- Water Elemental Core
							["crs"] = {
								5461,	-- Sea Elemental
								5462,	-- Sea Spray
							},
						}),
					},
				}),
				q(25463, {	-- Report to Silvia
					["qg"] = 3936,	-- Shandris Feathermoon
					["sourceQuest"] = 25458,	-- General Skessesh
					["coord"] = { 46.0, 49.1, FERALAS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
				}),
				q(25476, {	-- Rescue OOX-22/FE!
					["qg"] = 7807,	-- Homing Robot OOX-22/FE
					["sourceQuest"] = 25475,	-- Find OOX-22/FE!
					["coord"] = { 53.3, 55.7, FERALAS },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						i(9647),	-- Failed Flying Experiment
						i(9648),	-- Chain Link Towel
					},
				}),
				q(2767, {	-- Rescue OOX-22/FE!
					["qg"] = 7807,	-- Homing Robot OOX-22\/FE
					["sourceQuest"] = 2766,	-- Find OOX-22/FE!
					["coord"] = { 53.4, 55.6, FERALAS },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 40,
					["groups"] = {
						i(9647),	-- Failed Flying Experiment
						i(9648),	-- Chainlink Towel
					},
				}),
				q(2867, {	-- Return to Feathermoon Stronghold
					["provider"] = { "o", 142179 },	-- Solarsal Gazebo
					["sourceQuest"] = 2866,	-- The Ruins of Solarsal
					["coord"] = { 26.3, 52.3, FERALAS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 40,
				}),
				q(25645, {	-- Return to Sage Palerunner
					["provider"] = { "o", 203134 },	-- Empty Pedestal
					["sourceQuest"] = 25368,	-- Verinias the Twisted
					["coord"] = { 65.8, 62.8, FERALAS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				q(26401, {	-- Return to Vestia
					["provider"] = { "o", 203134 },	-- Empty Pedestal
					["sourceQuest"] = 25368,	-- Verinias the Twisted
					["coord"] = { 65.9, 62.9, FERALAS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(3122, {	-- Return to Witch Doctor Uzer'i
					["providers"] = {
						{ "n", 3216 },	-- Neeru Fireblade
						{ "i", 9628 },	-- Neeru's Herb Pouch
					},
					["sourceQuest"] = 3121,	-- A Strange Request
					["coord"] = { 49.6, 50.6, ORGRIMMAR },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 40,
				}),
				q(4267, {	-- Rise of the Silithid
					["providers"] = {
						{ "n", 3936 },	-- Shandris Feathermoon <General of the Sentinel Army>
						{ "i", 11466 },	-- Raschal's Report
					},
					["sourceQuest"] = 4266,	-- A Hero's Welcome
					["coord"] = { 30.3, 46.2, FERALAS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 40,
					["groups"] = {
						i(34416, {	-- Gloves of the Dune
							["timeline"] = { ADDED_2_3_0, REMOVED_4_0_3 },
						}),
						i(34417, {	-- Marauder's Handwraps
							["timeline"] = { ADDED_2_3_0, REMOVED_4_0_3 },
						}),
					},
				}),
				q(25252, {	-- Rulers of Dire Maul
					["qg"] = 39656,	-- Orhan Ogreblade
					["sourceQuest"] = 25209,	-- The Gordunni Threat
					["coord"] = { 51.9, 48.0, FERALAS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/6 Gordok Enforcer slain
							["provider"] = { "n", 11440 },	-- Gordok Enforcer
						}),
						objective(2, {	-- 0/6 Gordok Ogre-Mage slain
							["provider"] = { "n", 11443 },	-- Gordok Ogre-Mage
						}),
					},
				}),
				q(25433, {	-- Sasquatch Sighting [A]
					["qg"] = 39725,	-- Adella
					["sourceQuest"] = 25432,	-- It's Not "Ogre" Yet
					["coord"] = { 77.2, 56.5, FERALAS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Bigfist slain
							["provider"] = { "n", 39958 },	-- Bigfist
						}),
						i(54943, {	-- Yeti Hide Britches
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(54944, {	-- Big Footwear
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(54945, {	-- Shadebough Cloak
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131424, {	-- Yeti Hide Padded Greaves
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(25374, {	-- Sasquatch Sighting [H]
					["qg"] = 39847,	-- Chief Spirithorn
					["sourceQuest"] = 25373,	-- The Hilltop Threat
					["coord"] = { 74.5, 42.8, FERALAS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Bigfist slain
							["provider"] = { "n", 39958 },	-- Bigfist
						}),
						i(54946, {	-- Yeti Hide Britches
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(54947, {	-- Big Footwear
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(54948, {	-- Mojache Cloak
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131420, {	-- Yeti Hide Padded Greaves
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(25398, {	-- Sealing the Dream [A]
					["providers"] = {
						{ "n", 40032 },	-- Telaron Windflight
						{ "i", 52576 },	-- Ysondre's Tear
					},
					["sourceQuests"] = {
						25396,	-- Tears of Stone
						25397,	-- The Land, Corrupted
					},
					["coord"] = { 50.7, 17.2, FERALAS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(54917, {	-- Dream Bough Robes
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(54918, {	-- Belt of Natural Essence
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131422, {	-- Chain of Natural Essence
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(25250, {	-- Sealing the Dream [H]
					["providers"] = {
						{ "n", 39377 },	-- Konu Runetotem
						{ "i", 52576 },	-- Ysondre's Tear
					},
					["sourceQuests"] = {
						25237,	-- Tears of Stone
						25241,	-- The Land, Corrupted
					},
					["coord"] = { 41.3, 15.4, FERALAS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(54919, {	-- Dream Bough Robes
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(54920, {	-- Belt of Natural Essence
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131412, {	-- Chain of Natural Essence
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(25447, {	-- Signs of Change [A]
					["qg"] = 40032,	-- Telaron Windflight
					["sourceQuests"] = {
						28511,	-- Hero's Call: Feralas!
						14410,	-- The Wilds of Feralas
					},
					["coord"] = { 50.7, 17.2, FERALAS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/8 Infected Stag Antler
							["provider"] = { "i", 53642 },	-- Infected Stag Antler
							["cr"] = 40193,	-- Sharphorn Stag
						}),
					},
				}),
				q(25210, {	-- Signs of Change [H]
					["qg"] = 39377,	-- Konu Runetotem
					["sourceQuests"] = {
						26589,	-- The Wilds of Feralas
						28510,	-- Warchief's Command: Feralas!
					},
					["coord"] = { 41.3, 15.4, FERALAS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/8 Infected Stag Antler
							["provider"] = { "i", 53642 },	-- Infected Stag Antler
							["cr"] = 40193,	-- Sharphorn Stag
						}),
					},
				}),
				q(25436, {	-- Spiteful Sisters
					["qg"] = 39725,	-- Adella
					["sourceQuests"] = {
						25431,	-- Stinglasher [A]
						25433,	-- Sasquatch Sighting [A]
						25434,	-- Taming the Tamers [A]
						25429,	-- Zukk'ash Infestation [A]
					},
					["coord"] = { 77.2, 56.5, FERALAS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/8 Corrupted Dryad slain
							["provider"] = { "n", 40168 },	-- Corrupted Dryad
						}),
					},
				}),
				q(25465, {	-- Still With The Zapped Giants
					["providers"] = {
						{ "n", 14637 },	-- Zorbin Fandazzle
						{ "i", 18904 },	-- Zorbin's Ultra-Shrinker
					},
					["coord"] = { 48.7, 44.8, FERALAS },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/6 Miniaturization Residue
							["provider"] = { "i", 18956 },	-- Miniaturization Residue
							["crs"] = {
								14603,	-- Zapped Shore Strider
								14604,	-- Zapped Land Walker
								14638,	-- Zapped Wave Strider
								14639,	-- Zapped Deep Strider
								14640,	-- Zapped Cliff Giant
							},
						}),
						i(54966, {	-- Zorbin's Mega-Chopper
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(25431, {	-- Stinglasher [A]
					["qg"] = 39725,	-- Adella
					["sourceQuest"] = 25427,	-- Alpha Strike
					["coord"] = { 77.2, 56.5, FERALAS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Stinglasher slain
							["provider"] = { "n", 14661 },	-- Stinglasher
						}),
						i(54941, {	-- Secretion-Coated Carapace
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(25369, {	-- Stinglasher [H]
					["qg"] = 7875,	-- Hadoken Swiftstrider
					["sourceQuest"] = 25366,	-- The Battle Plans
					["coord"] = { 74.9, 42.4, FERALAS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Stinglasher's Glands
							["provider"] = { "i", 18962 },	-- Stinglasher's Glands
							["cr"] = 14661,	-- Stinglasher
						}),
						i(54942, {	-- Secretion-Coated Carapace
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(7731, {	-- Stinglasher
					["qg"] = 7875,	-- Hadoken Swiftstrider
					["sourceQuest"] = 2903,	-- The Battle Plans
					["coord"] = { 74.8, 42.6, FERALAS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 39,
					["groups"] = {
						objective(1, {	-- 0/1 Stinglasher's Glands
							["provider"] = { "i", 18962 },	-- Stinglasher's Glands
							["coord"] = { 75.4, 61.0, FERALAS },
							["cr"] = 14661,	-- Stinglasher
						}),
					},
				}),
				q(25379, {	-- Taerar's Fall
					["qg"] = 39407,	-- Ysondre
					["sourceQuests"] = {
						25378,	-- Ysondre's Call (horde)
						25437,	-- Ysondre's Call (alliance)
					},
					["coord"] = { 81.5, 42.4, FERALAS },
					["timeline"] = { ADDED_4_0_3 },
				}),
				q(25342, {	-- Talk to Swar'jan
					["qg"] = 39656,	-- Orhan Ogreblade
					["sourceQuest"] = 25341,	-- The Gordunni Orb
					["coord"] = { 51.9, 48.0, FERALAS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				q(25434, {	-- Taming the Tamers [A]
					["qg"] = 39725,	-- Adella
					["sourceQuest"] = 25432,	-- It's Not "Ogre" Yet
					["coord"] = { 77.2, 56.5, FERALAS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/6 Gordunni Tamer slain
							["provider"] = { "n", 39957 },	-- Gordunni Tamer
						}),
					},
				}),
				q(25375, {	-- Taming the Tamers [H]
					["qg"] = 39847,	-- Chief Spirithorn
					["sourceQuest"] = 25373,	-- The Hilltop Threat
					["coord"] = { 74.5, 42.8, FERALAS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/6 Gordunni Tamer slain
							["provider"] = { "n", 39957 },	-- Gordunni Tamer
						}),
					},
				}),
				q(25396, {	-- Tears of Stone [A]
					["qg"] = 40032,	-- Telaron Windflight
					["sourceQuest"] = 25394,	-- More Than Illness
					["coord"] = { 50.7, 17.2, FERALAS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/7 Stonetear
							["providers"] = {
								{ "i", 52573 },	-- Stonetear
								{ "o", 202606 },	-- Stonetear
							},
						}),
					},
				}),
				q(25237, {	-- Tears of Stone [H]
					["qg"] = 39377,	-- Konu Runetotem
					["sourceQuest"] = 25230,	-- More Than Illness
					["coord"] = { 41.3, 15.4, FERALAS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/7 Stonetear
							["providers"] = {
								{ "i", 52573 },	-- Stonetear
								{ "o", 202606 },	-- Stonetear
							},
						}),
					},
				}),
				q(25208, {	-- Tell Silvia
					["qg"] = 40052,	-- Estulan
					["sourceQuest"] = 25403,	-- Ogre Abduction
					["coord"] = { 57.0, 55.4, FERALAS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(25336, {	-- Testing the Vessel
					["qg"] = 39894,	-- Gombana
					["coord"] = { 52.2, 48.0, FERALAS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				q(3123, {	-- Testing the Vessel
					["qg"] = 8115,	-- Witch Doctor Uzer'i
					["sourceQuest"] = 3122,	-- Return to Witch Doctor Uzer'i
					["coord"] = { 74.4, 43.4, FERALAS },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { THE_HINTERLANDS },
					["races"] = HORDE_ONLY,
					["lvl"] = 40,
					["groups"] = {
						objective(1, {	-- 0/10 Wildkin Muisek
							["provider"] = { "i", 9594 },	-- Wildkin Muisek
							["cost"] = {{ "i", 9618, 1 }},	-- Wildkin Muisek Vessel
							["cr"] = 2927,	-- Vicious Owlbeast
						}),
					},
				}),
				q(4281, {	-- Thalanaar Delivery
					["provider"] = { "i", 11463 },	-- Undelivered Parcel
					["sourceQuest"] = 4135,	-- The Writhing Deep
					["coord"] = { 73.3, 56.3, FERALAS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 40,
				}),
				q(25304, {	-- The Battle of Sardor
					["qg"] = 3936,	-- Shandris Feathermoon
					["coord"] = { 46.0, 49.1, FERALAS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
				}),
				q(25366, {	-- The Battle Plans
					["provider"] = { "o", 142195 },	-- Woodpaw Battle Map
					["sourceQuest"] = 25365,	-- Woodpaw Investigation
					["coord"] = { 71.6, 55.9, FERALAS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(54949, {	-- Hadoken Band
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(54950, {	-- Swiftstride Boots
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(2903, {	-- The Battle Plans
					["providers"] = {
						{ "o", 142195 },	-- Woodpaw Battle Map
						{ "i",   9266 },	-- Woodpaw Battle Plans
					},
					["sourceQuest"] = 2902,	-- Woodpaw Investigation
					["coord"] = { 71.6, 55.9, FERALAS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 39,
					["groups"] = {
						i(9661, {	-- Earthclasp Barrier
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(9662, {	-- Rushridge Boots
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(25422, {	-- The Darkmist Legacy
					["qg"] = 40131,	-- Sensiria
					["sourceQuests"] = {
						25643,	-- The Darkmist Ruins
						25350,	-- Lost Apprentice
					},
					["coord"] = { 65.9, 62.8, FERALAS },
					["timeline"] = { ADDED_4_0_3 },
					["lockCriteria"] = { 1, "questID", 25368 },	-- Verinias the Twisted
					["groups"] = {
						objective(1, {	-- 0/6 Glowing Soil
							["providers"] = {
								{ "i", 53135 },	-- Glowing Soil
								{ "o", 202793 },	-- Loose Soil
							},
						}),
					},
				}),
				q(25643, {	-- The Darkmist Ruins
					["qg"] = 5390,	-- Sage Palerunner
					["coord"] = { 75.0, 42.7, FERALAS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				q(25641, {	-- The Flow of Muisek
					["qg"] = 39894,	-- Gombana
					["sourceQuest"] = 25337,	-- Hippogryph Muisek
					["coord"] = { 52.2, 48.0, FERALAS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				q(2844, {	-- The Giant Guardian
					["qg"] = 7765,	-- Rockbiter
					["coord"] = { 42.4, 22.0, FERALAS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 44,
				}),
				q(25401, {	-- The Gordunni Orb [A]
					["qg"] = 39653,	-- Silvia
					["coord"] = { 56.9, 55.0, FERALAS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Gordunni Orb
							["provider"] = { "i", 52832 },	-- Gordunni Orb
							["crs"] = {
								5236,	-- Gordunni Shaman
								5240,	-- Gordunni Warlock
							},
						}),
					},
				}),
				q(25341, {	-- The Gordunni Orb [H]
					["qg"] = 39656,	-- Orhan Ogreblade
					["coord"] = { 51.9, 47.9, FERALAS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Gordunni Orb
							["provider"] = { "i", 52832 },	-- Gordunni Orb
							["crs"] = {
								5236,	-- Gordunni Shaman
								5240,	-- Gordunni Warlock
							},
						}),
					},
				}),
				q(3002, {	-- The Gordunni Orb
					["providers"] = {
						{ "n", 7777 },	-- Rok Orhan
						{ "i", 9371 },	-- Gordunni Orb
					},
					["sourceQuest"] = 2979,	-- Dark Ceremony
					["coord"] = { 74.2, 44.6, FERALAS },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["lvl"] = 38,
				}),
				q(2978, {	-- The Gordunni Scroll
					["providers"] = {
						{ "i",   9370 },	-- Gordunni Scroll
						{ "o", 143980 },	-- Gordunni Scroll
					},
					["coords"] = {
						{ 75.2, 28.7, FERALAS },
						{ 80.8, 35.0, FERALAS },
					},
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 38,
				}),
				q(25400, {	-- The Gordunni Threat [A]
					["qg"] = 39653,	-- Silvia
					["coord"] = { 56.9, 55.0, FERALAS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/16 Gordunni Ogre slain
							["providers"] = {
								{ "n", 5234},	-- Gordunni Mauler
								{ "n", 5236},	-- Gordunni Shaman
								{ "n", 5240},	-- Gordunni Warlock
							},
						}),
					},
				}),
				q(25209, {	-- The Gordunni Threat [H]
					["qg"] = 39656,	-- Orhan Ogreblade
					["sourceQuest"] = 25386,	-- To Stonemaul Hold
					["coord"] = { 51.9, 47.9, FERALAS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/16 Gordunni Ogre Slain
							["providers"] = {
								{ "n", 5234},	-- Gordunni Mauler
								{ "n", 5236},	-- Gordunni Shaman
								{ "n", 5240},	-- Gordunni Warlock
							},
						}),
					},
				}),
				q(2982, {	-- The High Wilderness
					["qg"] = 7900,	-- Angelas Moonbreeze
					["coord"] = { 31.8, 45.6, FERALAS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 39,
					["groups"] = {
						objective(1, {	-- 0/8 Gordunni Warlock slain
							["provider"] = { "n", 5240 },	-- Gordunni Warlock
						}),
						objective(2, {	-- 0/8 Gordunni Shaman slain
							["provider"] = { "n", 5236 },	-- Gordunni Shaman
						}),
						objective(3, {	-- 0/8 Gordunni Brute slain
							["provider"] = { "n", 5232 },	-- Gordunni Brute
						}),
					},
				}),
				q(25373, {	-- The Hilltop Threat
					["qg"] = 39847,	-- Chief Spirithorn
					["coord"] = { 74.5, 42.8, FERALAS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/5 Gordunni Hillguard slain
							["provider"] = { "n", 39952 },	-- Gordunni Hillguard
						}),
					},
				}),
				q(4129, {	-- The Knife Revealed
					["providers"] = {
						{ "n", 7880 },	-- Ginro Hearthkindle
						{ "i", 11462 },	-- Discarded Knife
					},
					["sourceQuest"] = 4127,	-- Boat Wreckage
					["coord"] = { 31.9, 45.1, FERALAS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 40,
				}),
				q(25397, {	-- The Land, Corrupted [A]
					["qg"] = 40032,	-- Telaron Windflight
					["sourceQuest"] = 25394,	-- More Than Illness
					["coord"] = { 50.7, 17.2, FERALAS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/6 Corrupted Cliff Giant slain
							["provider"] = { "n", 40972 },	-- Corrupted Cliff Giant
						}),
					},
				}),
				q(25241, {	-- The Land, Corrupted [H]
					["qg"] = 39377,	-- Konu Runetotem
					["sourceQuest"] = 25230,	-- More Than Illness
					["coord"] = { 41.3, 15.4, FERALAS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/7 Corrupted Cliff Giant slain
							["provider"] = { "n", 40972 },	-- Corrupted Cliff Giant
						}),
					},
				}),
				q(25350, {	-- The Lost Apprentice
					["qg"] = 40132,	-- Vestia Moonspear
					["coord"] = { 57.2, 55.0, FERALAS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(25449, {	-- The Mark of Quality [A]
					["qg"] = 40226,	-- Pratt McGrubben
					["coord"] = { 45.4, 41.3, FERALAS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/10 Thick Yeti Hide
							["provider"] = { "i", 8973 },	-- Thick Yeti Hide
							["crs"] = {
								5292,	-- Feral Scar Yeti
								5293,	-- Hulking Feral Scar
								5295,	-- Enraged Feral Scar
								5346,	-- Bloodroar the Stalker
								7848,	-- Lurking Feral Scar
								40224,	-- Rage Scar Yeti
							},
						}),
						i(9630),	-- Pratt's Handcrafted Boots
						i(9631),	-- Pratt's Handcrafted Gloves
						i(131425, {	-- Pratt's Handcrafted Greaves
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(131426, {	-- Pratt's Handcrafted Gauntlets
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(2821, {	-- The Mark of Quality [A]
					["qg"] = 7852,	-- Pratt McGrubben <Leatherworking Supplies>
					["coord"] = { 30.6, 42.7, FERALAS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 40,
					["groups"] = {
						objective(1, {	-- 0/10 Thick Yeti Hide
							["provider"] = { "i", 8973 },	-- Thick Yeti Hide
							["description"] = "Can also be looted via Skinning to speed up your progress.",
							["crs"] = {
								5346,	-- Bloodroar the Stalker
								5295,	-- Enraged Feral Scar
								5292,	-- Feral Scar Yeti
								5293,	-- Hulking Feral Scar
								7848,	-- Lurking Feral Scar
							},
						}),
						i(9630),	-- Pratt's Handcrafted Boots
						i(9631),	-- Pratt's Handcrafted Gloves
					},
				}),
				q(25452, {	-- The Mark of Quality [H]
					["qg"] = 7854,	-- Jangdor Swiftstrider
					["coord"] = { 52.8, 47.1, FERALAS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/10 Thick Yeti Hide
							["provider"] = { "i", 8973 },	-- Thick Yeti Hide
							["crs"] = {
								5292,	-- Feral Scar Yeti
								5293,	-- Hulking Feral Scar
								5295,	-- Enraged Feral Scar
								5346,	-- Bloodroar the Stalker
								7848,	-- Lurking Feral Scar
								40224,	-- Rage Scar Yeti
							},
						}),
						i(9633),	-- Jangdor's Handcrafted Boots
						i(9632),	-- Jangdor's Handcrafted Gloves
						i(131427, {	-- Jangdor's Handcrafted Greaves
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(131428, {	-- Jangdor's Handcrafted Gauntlets
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(2822, {	-- The Mark of Quality [H]
					["qg"] = 7854,	-- Jangdor Swiftstrider
					["coord"] = { 74.4, 42.8, FERALAS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 40,
					["groups"] = {
						objective(1, {	-- 0/10 Thick Yeti Hide
							["provider"] = { "i", 8973 },	-- Thick Yeti Hide
							["description"] = "Can also be looted via Skinning to speed up your progress.",
							["crs"] = {
								5346,	-- Bloodroar the Stalker
								5295,	-- Enraged Feral Scar
								5292,	-- Feral Scar Yeti
								5293,	-- Hulking Feral Scar
								7848,	-- Lurking Feral Scar
							},
						}),
						i(9633),	-- Jangdor's Handcrafted Boots
						i(9632),	-- Jangdor's Handcrafted Gloves
					},
				}),
				q(4124, {	-- The Missing Courier (1/2)
					["qg"] = 7877,	-- Latronicus Moonspear
					["coord"] = { 30.4, 46.2, FERALAS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 40,
				}),
				q(4125, {	-- The Missing Courier (2/2)
					["qg"] = 7880,	-- Ginro Hearthkindle
					["sourceQuest"] = 4124,	-- The Missing Courier (1/2)
					["coord"] = { 31.9, 45.1, FERALAS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 40,
				}),
				q(2942, {	-- The Morrow Stone
					["providers"] = {
						{ "o", 144063 },	-- Equinex Monolith
						{ "i", 9306 },	-- Stave of Equinex
						{ "i", 9307 },	-- A Sparkling Stone
					},
					["sourceQuest"] = 2879,	-- The Stave of Equinex
					["coord"] = { 38.9, 13.2, FERALAS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 42,
					["groups"] = {
						i(9654, {	-- Cairnstone Sliver
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(9655, {	-- Seedtime Hoop
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(3791, {	-- The Mystery of Morrowgrain
					["qg"] = 7879,	-- Quintis Jonespyre
					["sourceQuests"] = {
						3787,	-- Jonespyre's Request
						3788,	-- Jonespyre's Request
					},
					["coord"] = { 32.4, 43.8, FERALAS },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = {{ "i", 11040, 10 }},	-- Morrowgrain
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 47,
					["groups"] = {
						i(11888, {	-- Quintis' Research Gloves
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(11889, {	-- Bark Iron Pauldrons
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(25448, {	-- The Northspring Menace
					["qg"] = 40035,	-- Erina Willowborn
					["coord"] = { 51.2, 17.8, FERALAS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/6 Northspring Harpy slain
							["provider"] = { "n", 5362 },	-- Northspring Harpy
						}),
						objective(2, {	-- 0/6 Northspring Windcaller slain
							["provider"] = { "n", 5366 },	-- Northspring Windcaller
						}),
					},
				}),
				q(2975, {	-- The Ogres of Feralas (1/2)
					["qg"] = 7777,	-- Rok Orhan
					["sourceQuest"] = 2981,	-- A Threat in Feralas
					["coord"] = { 74.2, 44.6, FERALAS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 38,
					["groups"] = {
						objective(1, {	-- 0/10 Gordunni Ogre slain
							["provider"] = { "n", 5229 },	-- Gordunni Ogre
						}),
						objective(2, {	-- 0/10 Gordunni Ogre Mage slain
							["provider"] = { "n", 5237 },	-- Gordunni Ogre Mage
						}),
						objective(3, {	-- 0/5 Gordunni Brute slain
							["provider"] = { "n", 5232 },	-- Gordunni Brute
						}),
					},
				}),
				q(2980, {	-- The Ogres of Feralas (2/2)
					["qg"] = 7777,	-- Rok Orhan
					["sourceQuest"] = 2975,	-- The Ogres of Feralas (1/2)
					["coord"] = { 74.2, 44.6, FERALAS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 38,
					["groups"] = {
						objective(1, {	-- 0/10 Gordunni Shaman slain
							["provider"] = { "n", 5236 },	-- Gordunni Shaman
						}),
						objective(2, {	-- 0/10 Gordunni Warlock slain
							["provider"] = { "n", 5240 },	-- Gordunni Warlock
						}),
						objective(3, {	-- 0/5 Gordunni Mauler slain
							["provider"] = { "n", 5234 },	-- Gordunni Mauler
						}),
					},
				}),
				q(2866, {	-- The Ruins of Solarsal
					["qg"] = 3936,	-- Shandris Feathermoon <General of the Sentinel Army>
					["coord"] = { 30.2, 46.0, FERALAS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 40,
				}),
				q(2879, {	-- The Stave of Equinex
					["qg"] = 7764,	-- Troyas Moonbreeze
					["sourceQuest"] = 2943,	-- Return to Troyas
					["coord"] = { 31.8, 45.4, FERALAS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 42,
					["groups"] = {
						objective(1, {	-- 0/1 Stave of Equinex
							["provider"] = { "i", 9306 },	-- Stave of Equinex
							["cost"] = {
								{ "i", 9263, 1 },	-- Troyas' Stave
								{ "i", 9258, 1 },	-- Byltan Essence
								{ "i", 9256, 1 },	-- Imbel Essence
								{ "i", 9255, 1 },	-- Lahassa Essence
								{ "i", 9257, 1 },	-- Samha Essence
							},
						}),
						-- #if BEFORE 4.0.3
						i(9258, {	-- Byltan Essence
							["provider"] = { "o", 142185 },	-- Flame of Byltan
							["coord"] = { 38.5, 15.8, FERALAS },
						}),
						i(9256, {	-- Imbel Essence
							["provider"] = { "o", 142187 },	-- Flame of Imbel
							["coord"] = { 39.9, 9.5, FERALAS },
						}),
						i(9255, {	-- Lahassa Essence
							["provider"] = { "o", 142186 },	-- Flame of Lahassa
							["coord"] = { 37.8, 12.1, FERALAS },
						}),
						i(9257, {	-- Samha Essence
							["provider"] = { "o", 142188 },	-- Flame of Samha
							["coord"] = { 40.6, 12.6, FERALAS },
						}),
						-- #endif
					},
				}),
				q(4120, {	-- The Strength of Corruption
					["qg"] = 7776,	-- Talo Thornhoof
					["coord"] = { 76, 43.8, FERALAS },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { FELWOOD },
					["races"] = HORDE_ONLY,
					["lvl"] = 47,
					["groups"] = {
						objective(1, {	-- 0/12 Angerclaw Grizzly slain
							["provider"] = { "n", 8957 },	-- Angerclaw Grizzly
						}),
						objective(2, {	-- 0/12 Felpaw Ravager slain
							["provider"] = { "n", 8961 },	-- Felpaw Ravager
						}),
					},
				}),
				q(4131, {	-- The Woodpaw Gnolls
					["qg"] = 7880,	-- Ginro Hearthkindle
					["sourceQuest"] = 4129,	-- Psychometric Reading
					["coord"] = { 31.9, 45.1, FERALAS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 40,
				}),
				q(4135, {	-- The Writhing Deep
					["providers"] = {
						{ "o", 164953 },	-- Large Leather Backpacks
						{ "i", 11463 },	-- Undelivered Parcel
					},
					["sourceQuest"] = 4131,	-- The Woodpaw Gnolls
					["coord"] = { 73.3, 56.3, FERALAS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 40,
				}),
				q(25387, {	-- To Camp Mojache
					["qg"] = 39656,	-- Orhan Ogreblade
					["sourceQuest"] = 25329,	-- Might of the Stonoemaul
					["coord"] = { 51.9, 48.0, FERALAS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				q(25386, {	-- To Stonemaul Hold
					["qg"] = 39377,	-- Konu Runetotem
					["sourceQuest"] = 25250,	-- Sealing the Dream
					["coord"] = { 41.3, 15.4, FERALAS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
				}),
				q(3567, {	-- To the Top
					["qg"] = 7773,	-- Marli Wishrunner
					["coord"] = { 45.8, 16.4, FERALAS },
					["timeline"] = { REMOVED_4_0_3 },
					["repeatable"] = true,
					["lvl"] = 25,
				}),
				q(25338, {	-- Treant Muisek
					["qg"] = 8115,	-- Witch Doctor Uzer'i
					["sourceQuest"] = 25641,	-- The Flow of Muisek
					["coord"] = { 74.4, 43.3, FERALAS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				q(3126, {	-- Treant Muisek
					["qg"] = 8115,	-- Witch Doctor Uzer'i
					["sourceQuest"] = 3125,	-- Faerie Dragon Muisek
					["coord"] = { 74.4, 43.4, FERALAS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 40,
					["groups"] = {
						objective(1, {	-- 0/3 Treant Muisek
							["provider"] = { "i", 9593 },	-- Treant Muisek
							["cost"] = {{ "i", 9606, 1 }},	-- Treant Muisek Vessel
							["cr"] = 7584,	-- Wandering Forest Walker
						}),
					},
				}),
				q(25349, {	-- Twisted Sisters
					["qg"] = 39847,	-- Chief Spirithorn
					["coord"] = { 74.5, 42.8, FERALAS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/7 Corrupted Dryad slain
							["provider"] = { "n", 40168 },	-- Corrupted Dryad
						}),
					},
				}),
				q(25339, {	-- Vengeance on the Northspring
					["qg"] = 7776,	-- Talo Thornhoof
					["coord"] = { 41.5, 15.2, FERALAS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/6 Northspring Harpy slain
							["provider"] = { "n", 5362 },	-- Northspring Harpy
						}),
						objective(2, {	-- 0/6 Northspring Windcaller slain
							["provider"] = { "n", 5366 },	-- Northspring Windcaller
						}),
					},
				}),
				q(3063, {	-- Vengeance on the Northspring
					["qg"] = 7776,	-- Talo Thornhoof
					["coord"] = { 76, 43.8, FERALAS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 45,
					["groups"] = {
						objective(1, {	-- 0/4 Northspring Harpy slain
							["provider"] = { "n", 5362 },	-- Northspring Harpy
						}),
						objective(2, {	-- 0/4 Northspring Roguefeather slain
							["provider"] = { "n", 5363 },	-- Northspring Roguefeather
						}),
						objective(3, {	-- 0/4 Northspring Slayer slain
							["provider"] = { "n", 5364 },	-- Northspring Slayer
						}),
						objective(4, {	-- 0/4 Northspring Windcaller slain
							["provider"] = { "n", 5366 },	-- Northspring Windcaller
						}),
					},
				}),
				q(25368, {	-- Verinias the Twisted
					["qg"] = 40131,	-- Sensiria
					["sourceQuests"] = {
						25423,	-- Ancient Suffering
						25422,	-- The Darkmist Legacy
					},
					["coord"] = { 65.9, 62.8, FERALAS },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/1 Verinias the Twisted slain
							["provider"] = { "n", 40136 },	-- Verinias the Twisted
						}),
						i(54924, {	-- Twisted Leggings
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(54925, {	-- Luring Footpads
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131419, {	-- Luring Treads
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(54926, {	-- Condensed Essence Bracers
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(54923, {	-- Sensiria's Shroud
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(2845, {	-- Wandering Shay
					["qg"] = 7774,	-- Shay Leafrunner
					["sourceQuest"] = 2844,	-- The Giant Guardian
					["coord"] = { 38.2, 10.3, FERALAS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 44,
					["groups"] = {
						objective(1, {	-- Shay's Bell
							["providers"] = {
								{ "i",   9189 },	-- Shay's Bell
								{ "o", 144054 },	-- Shay's Chest
							},
						}),
						objective(2, {	-- Take Shay Leafrunner to Rockbiter's camp
							["provider"] = { "i", 9189 },	-- Shay's Bell
							["coord"] = { 42.4, 22.0, FERALAS },
							["cr"] = 7765,	-- Rockbiter
						}),
						i(9656, {	-- Granite Grips
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(9657, {	-- Vinehedge Cinch
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(25426, {	-- War on the Woodpaw [A]
					["qg"] = 39725,	-- Adella
					["coord"] = { 77.2, 56.5, FERALAS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/10 Woodpaw Gnoll Mane
							["provider"] = { "i", 9237 },	-- Woodpaw Gnoll Mane
							["crs"] = {
								5249,	-- Woodpaw Mongrel
								5251,	-- Woodpaw Trapper
								5253,	-- Woodpaw Brute
								5254,	-- Woodpaw Mystic
								5255,	-- Woodpaw Reaver
								5258,	-- Woodpaw Alpha
							},
						}),
					},
				}),
				q(25363, {	-- War on the Woodpaw [H]
					["qg"] = 7875,	-- Hadoken Swiftstrider
					["coord"] = { 74.9, 42.4, FERALAS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/10 Woodpaw Gnoll Mane
							["provider"] = { "i", 9237 },	-- Woodpaw Gnoll Mane
							["crs"] = {
								5249,	-- Woodpaw Mongrel
								5251,	-- Woodpaw Trapper
								5253,	-- Woodpaw Brute
								5254,	-- Woodpaw Mystic
								5255,	-- Woodpaw Reaver
								5258,	-- Woodpaw Alpha
							},
						}),
					},
				}),
				q(2862, {	-- War on the Woodpaw
					["qg"] = 7875,	-- Hadoken Swiftstrider
					["coord"] = { 74.8, 42.6, FERALAS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 39,
					["groups"] = {
						objective(1, {	-- 0/10 Woodpaw Gnoll Mane
							["provider"] = { "i", 9237 },	-- Woodpaw Gnoll Mane
							["crs"] = {
								5258,	-- Woodpaw Alpha
								5253,	-- Woodpaw Brute
								5249,	-- Woodpaw Mongrel
								5254,	-- Woodpaw Mystic
								5255,	-- Woodpaw Reaver
								5251,	-- Woodpaw Trapper
							},
						}),
					},
				}),
				warchiefscommand(q(28510, {	-- Warchief's Command: Feralas!
					["timeline"] = { ADDED_4_0_3 },
					["maps"] = { ORGRIMMAR, THUNDER_BLUFF },	-- Only found in Orgrimmar & Thunder Bluff in Cataclysm.
					["isBreadcrumb"] = true,
					-- #if BEFORE 7.3.5
					-- Cataclysm: Minimum is level 34. (TODO: Confirm this.)
					-- Cataclysm: Maximum is level 38. (TODO: Test max level)
					["lvl"] = { 34, 38 },
					-- #endif
				})),
				q(25391, {	-- Weapons of Spirit
					["qg"] = 8115,	-- Witch Doctor Uzer'i
					["sourceQuest"] = 25346,	-- Mountain Giant Muisek
					["coord"] = { 74.4, 43.3, FERALAS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(54971, {	-- Power of the Faerie Dragon
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(157023, {	-- Power of the Forest
							["timeline"] = { ADDED_7_3_5 },
						}),
						i(54969, {	-- Power of the Hippogryph
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(54970, {	-- Power of the Mountain Giant
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(54972, {	-- Power of the Treant
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(3129, {	-- Weapons of Spirit
					["qg"] = 8115,	-- Witch Doctor Uzer'i
					["sourceQuests"] = {
						3127,	-- Mountain Giant Muisek
						3128,	-- Natural Materials
					},
					["coord"] = { 74.4, 43.4, FERALAS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 40,
					["groups"] = {
						i(9684, {	-- Force of the Hippogryph
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(9686, {	-- Spirit of the Faerie Dragon
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(9683, {	-- Strength of the Treant
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(10652, {	-- Will of the Mountain Giant
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				{	-- Wild Leather Armor
					["allianceQuestData"] = q(2847, {	-- Wild Leather Armor [A]
						["qg"] = 7852,	-- Pratt McGrubben
						["coord"] = { 30.6, 42.7, FERALAS },
					}),
					["hordeQuestData"] = q(2854, {	-- Wild Leather Armor [H]
						["qg"] = 7854,	-- Jangdor Swiftstrider
						["coord"] = { 74.43, 42.91, FERALAS },
					}),
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = {{ "i", 4304, 10 }},	-- Thick Leather
					["requireSkill"] = LEATHERWORKING,
					["learnedAt"] = 200,
					["lvl"] = 30,
				},
				{	-- Wild Leather Boots
					["allianceQuestData"] = q(2851, {	-- Wild Leather Boots [A]
						["qg"] = 7852,	-- Pratt McGrubben
						["sourceQuest"] = 2847,	-- Wild Leather Armor [A]
						["coord"] = { 30.6, 42.7, FERALAS },
					}),
					["hordeQuestData"] = q(2858, {	-- Wild Leather Boots [H]
						["qg"] = 7854,	-- Jangdor Swiftstrider
						["sourceQuest"] = 2854,	-- Wild Leather Armor [H]
						["coord"] = { 74.43, 42.91, FERALAS },
					}),
					["timeline"] = { REMOVED_4_0_3 },
					["requireSkill"] = LEATHERWORKING,
					["learnedAt"] = 200,
					["cost"] = {
						{ "i", 8193, 2 },	-- Nightscape Pants
						{ "i", 8197, 2 },	-- Nightscape Boots
						{ "i", 8153, 2 },	-- Wildvine
					},
					["lvl"] = 30,
					["groups"] = {
						i(8406, {	-- Pattern: Wild Leather Boots
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				},
				{	-- Wild Leather Helmet
					["allianceQuestData"] = q(2850, {	-- Wild Leather Helmet [A]
						["qg"] = 7852,	-- Pratt McGrubben
						["sourceQuest"] = 2847,	-- Wild Leather Armor [A]
						["coord"] = { 30.6, 42.7, FERALAS },
					}),
					["hordeQuestData"] = q(2857, {	-- Wild Leather Helmet [H]
						["qg"] = 7854,	-- Jangdor Swiftstrider
						["sourceQuest"] = 2854,	-- Wild Leather Armor [H]
						["coord"] = { 74.43, 42.91, FERALAS },
					}),
					["timeline"] = { REMOVED_4_0_3 },
					["requireSkill"] = LEATHERWORKING,
					["learnedAt"] = 200,
					["cost"] = {
						{ "i", 8175, 2 },	-- Nightscape Tunic
						{ "i", 8176, 2 },	-- Nightscape Headband
						{ "i", 8153, 1 },	-- Wildvine
					},
					["lvl"] = 30,
					["groups"] = {
						i(8405, {	-- Pattern: Wild Leather Helmet (RECIPE!)
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				},
				{	-- Wild Leather Leggings
					["allianceQuestData"] = q(2852, {	-- Wild Leather Leggings [A]
						["qg"] = 7852,	-- Pratt McGrubben
						["sourceQuest"] = 2847,	-- Wild Leather Armor [A]
						["coord"] = { 30.6, 42.7, FERALAS },
					}),
					["hordeQuestData"] = q(2859, {	-- Wild Leather Leggings [H]
						["qg"] = 7854,	-- Jangdor Swiftstrider
						["sourceQuest"] = 2854,	-- Wild Leather Armor [H]
						["coord"] = { 74.43, 42.91, FERALAS },
					}),
					["timeline"] = { REMOVED_4_0_3 },
					["requireSkill"] = LEATHERWORKING,
					["learnedAt"] = 200,
					["cost"] = {
						{ "i", 8191, 2 },	-- Turtle Scale Helm
						{ "i", 8198, 2 },	-- Turtle Scale Bracers
						{ "i", 8153, 2 },	-- Wildvine
					},
					["lvl"] = 30,
					["groups"] = {
						i(8407, {	-- Pattern: Wild Leather Leggings (RECIPE!)
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				},
				{	-- Wild Leather Shoulders
					["allianceQuestData"] = q(2848, {	-- Wild Leather Shoulders [A]
						["qg"] = 7852,	-- Pratt McGrubben
						["sourceQuest"] = 2847,	-- Wild Leather Armor [A]
						["coord"] = { 30.6, 42.7, FERALAS },
					}),
					["hordeQuestData"] = q(2855, {	-- Wild Leather Shoulders [H]
						["qg"] = 7854,	-- Jangdor Swiftstrider
						["sourceQuest"] = 2854,	-- Wild Leather Armor [H]
						["coord"] = { 74.43, 42.91, FERALAS },
					}),
					["timeline"] = { REMOVED_4_0_3 },
					["requireSkill"] = LEATHERWORKING,
					["learnedAt"] = 200,
					["cost"] = {
						{ "i", 8173, 6 },	-- Thick Armor Kit
						{ "i", 8153, 1 },	-- Wildvine
					},
					["lvl"] = 30,
					["groups"] = {
						i(8403, {	-- Pattern: Wild Leather Shoulders (RECIPE!)
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				},
				{	-- Wild Leather Vest
					["allianceQuestData"] = q(2849, {	-- Wild Leather Vest [A]
						["qg"] = 7852,	-- Pratt McGrubben
						["sourceQuest"] = 2847,	-- Wild Leather Armor [A]
						["coord"] = { 30.6, 42.7, FERALAS },
					}),
					["hordeQuestData"] = q(2856, {	-- Wild Leather Vest [H]
						["qg"] = 7854,	-- Jangdor Swiftstrider
						["sourceQuest"] = 2854,	-- Wild Leather Armor [H]
						["coord"] = { 74.43, 42.91, FERALAS },
					}),
					["timeline"] = { REMOVED_4_0_3 },
					["requireSkill"] = LEATHERWORKING,
					["learnedAt"] = 200,
					["cost"] = {
						{ "i", 8189, 2 },	-- Turtle Scale Breastplate
						{ "i", 8187, 2 },	-- Turtle Scale Gloves
						{ "i", 8153, 1 },	-- Wildvine
					},
					["lvl"] = 30,
					["groups"] = {
						i(8404, {	-- Pattern: Wild Leather Vest (RECIPE!)
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				},
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_THREE, q(81924, {	-- Wisdom of the Guardians
					["qg"] = 221985,	-- Tyrisius
					["coord"] = { 57.2, 69, FERALAS },
					["timeline"] = { ADDED_1_15_2 },
					["maps"] = { THE_HINTERLANDS, AZSHARA },
					["classes"] = { DRUID },
					["lvl"] = 45,
					["groups"] = {
						objective(1, {	-- Guardian of Feralas
							["providers"] = {
								{ "o", 441948 },	-- Shrine of the Warden
								{ "n", 221935 },	-- Treant Avatar
								{ "n", 222705 },	-- Blightbark <Guardian of Feralas>
							},
							["coord"] = { 58.6, 52.2, FERALAS },
							["description"] = "Click the shrine to receive a buff called Duty of the Warden.\n\nFight a Gordunni Warlock until it casts Shrink on you. Cast Remove Curse to receive a buff that says 'You have cast out what corrupts the spirit.\n\nFight a Zukk'ash Wasp until it Poisons you. Cast Abolish Poison to receive a buff that says 'Your duty is fulfilled.'\n\nReturn to the Shrine and then defeat the Treant Avatar that spawns once you approach it.",
						}),
						objective(2, {	-- Guardian of the Hinterlands
							["providers"] = {
								{ "o", 441946 },	-- Shrine of the Moon
								{ "n", 221933 },	-- Moonkin Avatar
								{ "n", 222704 },	-- Sagefeather <Guardian of the Hinterlands>
							},
							["coord"] = { 66.2, 53.1, THE_HINTERLANDS },
							["description"] = "Click on the shrine to see the message 'The calm comes before the storm.'\n\nCast Tranquility followed by Hurricane.\n\nDefeat the avatar and receive its blessing.",
						}),
						objective(3, {	-- Guardian of Azshara
							["providers"] = {
								{ "o", 441947 },	-- Shrine of the Beast
								{ "n", 221928 },	-- Hippogryph Avatar
								{ "n", 222703 },	-- Whisperwing <Guardian of Azshara>
							},
							["coord"] = { 34.6, 49.0, AZSHARA },
							["description"] = "Click on the shrine to see the message 'Hunt the white stag with tooth and claw.'\n\nFight a White Stag with only physical attacks while in feral form and then loo the Sacred Stag Heart.\n\nReturn to the shrine and use the heart. Defeat the avatar and receive its blessing.",
						}),
						i(220360, {	-- Rune of Efflorescence
							["classes"] = { DRUID },
							["groups"] = {
								recipe(431468),	-- Engrave Bracers - Efflorescence
							},
						}),
						i(219326),	-- Seed of Renewal
					},
				})),
				-- #endif
				q(25365, {	-- Woodpaw Investigation
					["qg"] = 7875,	-- Hadoken Swiftstrider
					["sourceQuest"] = 25363,	-- War on the Woodpaw
					["coord"] = { 74.9, 42.4, FERALAS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				q(2902, {	-- Woodpaw Investigation
					["qg"] = 7875,	-- Hadoken Swiftstrider
					["sourceQuest"] = 2863,	-- Alpha Strike
					["coord"] = { 74.8, 42.6, FERALAS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 39,
				}),
				q(25437, {	-- Ysondre's Call [A]
					["qg"] = 39725,	-- Adella
					["sourceQuest"] = 25436,	-- Spiteful Sisters
					["coord"] = { 77.2, 56.5, FERALAS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(25378, {	-- Ysondre's Call [H]
					["qg"] = 39847,	-- Chief Spirithorn
					["sourceQuest"] = 25349,	-- Twisted Sisters
					["coord"] = { 74.5, 42.8, FERALAS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				q(25438, {	-- Ysondre's Farewell [A]
					["qg"] = 39407,	-- Ysondre
					["sourceQuest"] = 25379,	-- Taerar's Fall
					["coord"] = { 81.5, 42.4, FERALAS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(54951, {	-- Chain of Emeriss
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(54953, {	-- Chain of Lethon
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(54952, {	-- Chain of Taerar
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(25383, {	-- Ysondre's Farewell [H]
					["qg"] = 39407,	-- Ysondre
					["sourceQuest"] = 25379,	-- Taerar's Fall
					["coord"] = { 81.5, 42.4, FERALAS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(54954, {	-- Chain of Emeriss
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(54956, {	-- Chain of Lethon
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(54955, {	-- Chain of Taerar
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(7003, {	-- Zapped Giants
					["qg"] = 14637,	-- Zorbin Fandazzle
					["coord"] = { 44.8, 43.4, FERALAS },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 45,
					["groups"] = {
						objective(1, {	-- 0/15 Miniaturization Residue
							["provider"] = { "i", 18956 },	-- Miniaturization Residue
							["cost"] = {{ "i", 18904, 1 }},	-- Zorbin's Ultra-Shrinker
							["crs"] = {
								5358,	-- Cliff Giant
								5360,	-- Deep Strider
								5357,	-- Land Walker
								5359,	-- Shore Strider
								5361,	-- Wave Strider
							},
						}),
						i(19040, {	-- Zorbin's Mega-Slicer
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(25429, {	-- Zukk'ash Infestation [A]
					["qg"] = 39725,	-- Adella
					["sourceQuest"] = 25427,	-- Alpha Strike
					["coord"] = { 77.2, 56.5, FERALAS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/20 Zukk'ash Carapace
							["provider"] = { "i", 18961 },	-- Zukk'ash Carapace
							["crs"] = {
								5244,	-- Zukk'ash Stinger
								5245,	-- Zukk'ash Wasp
								5246,	-- Zukk'ash Worker
								5247,	-- Zukk'ash Tunneler
								14661,	-- Stinglasher
							},
						}),
					},
				}),
				q(25367, {	-- Zukk'ash Infestation [H]
					["qg"] = 7875,	-- Hadoken Swiftstrider
					["sourceQuest"] = 25366,	-- The Battle Plans
					["coord"] = { 74.9, 42.4, FERALAS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/20 Zukk'ash Carapace
							["provider"] = { "i", 18961 },	-- Zukk'ash Carapace
							["crs"] = {
								5244,	-- Zukk'ash Stinger
								5245,	-- Zukk'ash Wasp
								5246,	-- Zukk'ash Worker
								5247,	-- Zukk'ash Tunneler
								14661,	-- Stinglasher
							},
						}),
					},
				}),
				q(7730, {	-- Zukk'ash Infestation
					["qg"] = 7875,	-- Hadoken Swiftstrider
					-- #if AFTER 4.0.3
					["description"] = "This quest gets marked as completed when you complete the quest 'Verinias the Twisted' (25368).",
					-- #endif
					["sourceQuest"] = 2903,	-- The Battle Plans
					["coord"] = { 74.8, 42.6, FERALAS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 39,
					["groups"] = {
						objective(1, {	-- 0/20 Zukk'ash Carapace
							["provider"] = { "i", 18961 },	-- Zukk'ash Carapace
							["crs"] = {
								14661,	-- Stinglasher
								5244,	-- Zukk'ash Stinger
								5247,	-- Zukk'ash Tunneler
								5245,	-- Zukk'ash Wasp
								5246,	-- Zukk'ash Worker
							},
						}),
					},
				}),
				q(7732, {	-- Zukk'ash Report
					["providers"] = {
						{ "n", 7875 },	-- Hadoken Swiftstrider
						{ "i", 19020 },	-- Camp Mojache Zukk'ash Report
					},
					["sourceQuests"] = {
						7731,	-- Stinglasher
						7730,	-- Zukk'ash Infestation
					},
					["coord"] = { 74.8, 42.6, FERALAS },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["lvl"] = 39,
					["groups"] = {
						i(19038, {	-- Ring of Subtlety
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(19037, {	-- Emerald Peak Spaulders
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
			}),
			n(RARES, {
				n(5347, {	-- Antilus the Soarer
					["coords"] = {
						-- #if AFTER CATA
						{ 55.0, 65.8, FERALAS },
						{ 55.0, 69.0, FERALAS },
						{ 55.2, 71.6, FERALAS },
						{ 54.6, 73.6, FERALAS },
						{ 53.6, 70.6, FERALAS },
						{ 54.0, 66.4, FERALAS },
						-- #else
						{ 53.6, 69.2, FERALAS },
						{ 54.2, 73.6, FERALAS },
						{ 57.2, 74.6, FERALAS },
						{ 59.8, 73.4, FERALAS },
						-- #endif
					},
				}),
				n(5349, {	-- Arash-ethis
					["coords"] = {
						-- #if AFTER CATA
						{ 39.6, 20.6, FERALAS },
						{ 41.0, 22.6, FERALAS },
						{ 41.4, 23.8, FERALAS },
						{ 38.8, 24.6, FERALAS },
						{ 38.0, 24.2, FERALAS },
						{ 37.8, 23.4, FERALAS },
						-- #else
						{ 41.8, 24.8, FERALAS },
						{ 46.0, 23.8, FERALAS },
						{ 46.2, 25.4, FERALAS },
						-- #endif
					},
				}),
				n(5346, {	-- Bloodroar the Stalker
					["coord"] = { 52.6, 60.6, FERALAS },
				}),
				n(5345, {	-- Diamond Head
					["coords"] = {
						-- #if AFTER CATA
						{ 49.0, 20.8, FERALAS },
						-- #else
						{ 21.6, 50.0, FERALAS },
						{ 21.6, 55.2, FERALAS },
						{ 22.4, 58.0, FERALAS },
						{ 35.0, 58.0, FERALAS },
						{ 36.0, 54.4, FERALAS },
						-- #endif
					},
				}),
				n(5354, {	-- Gnarl Leafbrother
					["coords"] = {
						-- #if AFTER CATA
						{ 72.4, 39.6, FERALAS },
						{ 72.0, 43.4, FERALAS },
						{ 70.6, 46.0, FERALAS },
						{ 69.4, 44.2, FERALAS },
						{ 69.6, 41.8, FERALAS },
						{ 70.6, 41.0, FERALAS },
						-- #else
						{ 68.6, 57.2, FERALAS },
						{ 72.0, 58.0, FERALAS },
						{ 75.6, 58.8, FERALAS },
						-- #endif
					},
				}),
				n(5343, {	-- Lady Szallah
					["coords"] = {
						-- #if AFTER CATA
						{ 31.0, 42.6, FERALAS },
						{ 32.4, 43.8, FERALAS },
						{ 31.8, 45.2, FERALAS },
						{ 30.4, 45.8, FERALAS },
						-- #else
						{ 26.6, 65.8, FERALAS },
						{ 26.0, 67.2, FERALAS },
						{ 28.2, 67.4, FERALAS },
						{ 27.8, 68.6, FERALAS },
						{ 24.8, 72.8, FERALAS },
						-- #endif
					},
				}),
				n(43488, {	-- Mordei the Earthrender
					["coord"] = { 49.6, 30.2, FERALAS },
					["timeline"] = { ADDED_4_0_3 },
				}),
				n(11447, {	-- Mushgog
					-- #if AFTER CATA
					["coords"] = {
						{ 71.8, 58.6, FERALAS },
						{ 72.0, 59.6, FERALAS },
						{ 71.6, 63.0, FERALAS },
						{ 70.4, 63.6, FERALAS },
						{ 69.6, 62.2, FERALAS },
						{ 69.6, 58.8, FERALAS },
					},
					-- #else
					["description"] = "Spawns in the Dire Maul Arena.",
					-- #endif
				}),
				n(5352, {	-- Old Grizzlegut
					["coords"] = {
						-- #if AFTER CATA
						{ 56.4, 58.2, FERALAS },
						{ 58.6, 58.4, FERALAS },
						{ 60.0, 59.4, FERALAS },
						{ 61.0, 62.6, FERALAS },
						{ 59.0, 62.6, FERALAS },
						{ 56.6, 62.6, FERALAS },
						{ 55.4, 61.2, FERALAS },
						-- #else
						{ 57.4, 56.8, FERALAS },
						{ 58.6, 59.0, FERALAS },
						{ 60.6, 60.6, FERALAS },
						{ 66.2, 47.4, FERALAS },
						{ 68.2, 48.6, FERALAS },
						{ 69.4, 45.0, FERALAS },
						-- #endif
					},
				}),
				n(54533, {	-- Prince Lakma
					-- #if AFTER 10.1.7
					["description"] = "Prince Lakma drops Chimaerok Tenderloin, which is a cooking reagent for Dirge's Kickin' Chimaerok Chops. Eating this consumable is a criteria for the Leatherworking achievement named Always Be Camping. However, do not bother with Prince Lekma if you have not learned the required cooking recipe as it only was available for a short time during vanilla and now sells for gold cap. Dirge's Kickin' Chimaerok Chops can be found on the auction house, or you can ask around for a crafter.",
					-- #endif
					["coords"] = {
						{ 47.6, 74.6, FERALAS },
						{ 48.2, 78.8, FERALAS },
						{ 48.6, 79.0, FERALAS },
					},
					["timeline"] = { ADDED_4_3_0 },
					["groups"] = {
						i(21024),	-- Chimaerok Tenderloin
					},
				}),
				n(5350, {	-- Qirot
					["coords"] = {
						-- #if AFTER CATA
						{ 76.6, 61.4, FERALAS },
						{ 73.6, 64.0, FERALAS },
						-- #else
						{ 71.8, 63.4, FERALAS },
						{ 74.0, 64.6, FERALAS },
						{ 74.2, 62.2, FERALAS },
						{ 76.6, 61.4, FERALAS },
						{ 78.6, 63.8, FERALAS },
						{ 76.8, 65.4, FERALAS },
						-- #endif
					},
				}),
				n(11498, {	-- Skarr the Broken [CATA+] / Skarr the Unbreakable
					-- #if AFTER CATA
					["coord"] = { 84.2, 37.0, FERALAS },
					-- #else
					["description"] = "Spawns in the Dire Maul Arena.",
					-- #endif
				}),
				n(5356, {	-- Snarler
					["coords"] = {
						-- #if AFTER CATA
						{ 74.6, 35.4, FERALAS },
						{ 75.8, 38.6, FERALAS },
						{ 77.8, 37.8, FERALAS },
						{ 80.2, 39.8, FERALAS },
						{ 82.2, 39.8, FERALAS },
						{ 85.0, 37.6, FERALAS },
						-- #else
						{ 75.0, 36.2, FERALAS },
						{ 76.6, 39.8, FERALAS },
						{ 77.6, 37.2, FERALAS },
						{ 80.0, 39.2, FERALAS },
						{ 81.6, 39.4, FERALAS },
						{ 84.0, 39.2, FERALAS },
						-- #endif
					},
				}),
				n(11497, {	-- The Razza
					-- #if AFTER CATA
					["coord"] = { 84.5, 49.7, FERALAS },
					-- #else
					["description"] = "Spawns in the Dire Maul Arena.",
					-- #endif
				}),
			}),
			n(TREASURES, {
				o(420954, {	-- Carved Eye
					["coord"] = { 61.5, 30.7, FERALAS },
					["description"] = "Click on the Carved Eye in the room under the Maul Arena in Dire Maul",
					["timeline"] = { ADDED_10_2_5 },
					["g"] = {
						i(212991),	-- Grimoire of the Dire Observer (CI!)
					},
				}),
				o(141931, {	-- Hippogryph Egg
					["coord"] = { 57.0, 78.2, FERALAS },
					["timeline"] = { REMOVED_4_0_3 },
					["groups"] = { i(8564) },	-- Hippogryph Egg
				}),
			}),
			n(VENDORS, {
				n(44381, {	-- Apprentice of Estulan <Enchanting Supplies>
					["coord"] = { 56.8, 54.4, FERALAS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(20753),	-- Formula: Lesser Wizard Oil (RECIPE!)
						i(20752),	-- Formula: Minor Mana Oil (RECIPE!)
						i(20758),	-- Formula: Minor Wizard Oil (RECIPE!)
						i(22307),	-- Pattern: Enchanted Mageweave Pouch (RECIPE!)
					},
				}),
				-- #if BEFORE 4.0.3
				-- NOTE: This NPC stopped being a vendor with Cata, still available as a quest giver though
				n(6576, {	-- Brienna Starglow <Tailoring Supplies>
					["coord"] = { 89.0, 45.8, FERALAS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(7089, {	-- Pattern: Azure Silk Cloak
							["isLimited"] = true,
						}),
					},
				}),
				-- #endif
				n(8158, {	-- Bronk <Alchemy Supplies>
					["coord"] = { 76.0, 43.4, FERALAS },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(9302, {	-- Recipe: Ghost Dye (RECIPE!)
							["isLimited"] = true,
						}),
						i(6057, {	-- Recipe: Nature Protection Potion (RECIPE!)
							["isLimited"] = true,
						}),
					},
				}),
				n(9548, {	-- Cawind Trueaim <Gunsmith & Bowyer>
					["coord"] = { 74.8, 45.6, FERALAS },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(11308, {	-- Sylvan Shortbow
							["isLimited"] = true,
						}),
					},
				}),
				n(7854, {	-- Jangdor Swiftstrider <Leatherworking Supplies>
					["coords"] = {
						-- #if AFTER CATA
						{ 52.8, 47.0, FERALAS },
						-- #else
						{ 74.4, 42.8, FERALAS },
						-- #endif
					},
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(7451, {	-- Pattern: Green Whelp Bracers (RECIPE!)
							["isLimited"] = true,
						}),
						i(15734, {	-- Pattern: Living Shoulders (RECIPE!)
							["isLimited"] = true,
						}),
						i(8409, {	-- Pattern: Nightscape Shoulders (RECIPE!)
							["isLimited"] = true,
						}),
						i(8385, {	-- Pattern: Turtle Scale Gloves (RECIPE!)
							["isLimited"] = true,
						}),
					},
				}),
				n(8157, {	-- Logannas <Alchemy Supplies>
					["coords"] = {
						-- #if AFTER CATA
						{ 46.6, 43.0, FERALAS },
						-- #else
						{ 32.6, 44.0, FERALAS },
						-- #endif
					},
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(9302, {	-- Recipe: Ghost Dye (RECIPE!)
							["isLimited"] = true,
						}),
						i(6057, {	-- Recipe: Nature Protection Potion (RECIPE!)
							["isLimited"] = true,
						}),
					},
				}),
				n(40474, {	-- Moro Sungrain <Trade Supplies>
					["coord"] = { 40.8, 15.2, FERALAS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(21219),	-- Recipe: Sagefish Delight (RECIPE!)
						i(21099),	-- Recipe: Smoked Sagefish (RECIPE!)
					},
				}),
				n(40226, {	-- Pratt McGrubben <Leatherworking Supplies>
					["coord"] = { 45.4, 41.2, FERALAS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(7451, {	-- Pattern: Green Whelp Bracers (RECIPE!)
							["isLimited"] = true,
						}),
						i(15734, {	-- Pattern: Living Shoulders (RECIPE!)
							["isLimited"] = true,
						}),
						i(8385, {	-- Pattern: Turtle Scale Gloves (RECIPE!)
							["isLimited"] = true,
						}),
					},
				}),
				n(7852, {	-- Pratt McGrubben <Leatherworking Supplies>
					["coord"] = { 30.6, 42.6, FERALAS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(7451, {	-- Pattern: Green Whelp Bracers (RECIPE!)
							["isLimited"] = true,
						}),
						i(15734, {	-- Pattern: Living Shoulders (RECIPE!)
							["isLimited"] = true,
						}),
						i(8385, {	-- Pattern: Turtle Scale Gloves (RECIPE!)
							["isLimited"] = true,
						}),
					},
				}),
				n(8145, {	-- Sheendra Tallgrass <Trade Supplies>
					["coord"] = { 74.6, 42.8, FERALAS },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(13949),	-- Recipe: Baked Salmon (RECIPE!)
						i(12229),	-- Recipe: Hot Wolf Ribs (RECIPE!)
						i(13947),	-- Recipe: Lobster Stew (RECIPE!)
						i(13948),	-- Recipe: Mightfish Steak (RECIPE!)
					},
				}),
				n(7947, {	-- Vivianna <Trade Supplies>
					["coords"] = {
						-- #if AFTER CATA
						{ 46.3, 41.7, FERALAS },
						-- #else
						{ 31.2, 43.4, FERALAS },
						-- #endif
					},
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(13949),	-- Recipe: Baked Salmon (RECIPE!)
						i(12229),	-- Recipe: Hot Wolf Ribs (RECIPE!)
						i(13947),	-- Recipe: Lobster Stew (RECIPE!)
						i(13948),	-- Recipe: Mightfish Steak (RECIPE!)
					},
				}),
				n(8159, {	-- Worb Strongstitch <Light Armor Merchant>
					["coord"] = { 74.6, 42.6, FERALAS },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(12253, {	-- Brilliant Red Cloak
							["isLimited"] = true,
						}),
						i(12254, {	-- Well Oiled Cloak
							["isLimited"] = true,
						}),
					},
				}),
				n(14637, {	-- Zorbin Fandazzle
					["description"] =
						-- #if AFTER CATA
						"Must complete quests |cFFFFD700Still With The Zapped Giants|r and |cFFFFD700Even More Fuel For The Zapping|r before he will sell to you.",
						-- #else
						"Must complete quests |cFFFFD700Zapped Giants|r and |cFFFFD700Fuel For The Zapping|r before he will sell to you.",
						-- #endif
					["sourceQuests"] = {
						-- #if AFTER CATA
						25466,	-- Even More Fuel For The Zapping
						25465,	-- Still With The Zapped Giants
						-- #else
						7721,	-- Fuel for the Zapping
						7003,	-- Zapped Giants
						-- #endif
					},
					["coords"] = {
						-- #if AFTER CATA
						{ 48.6, 44.8, FERALAS },
						-- #else
						{ 44.8, 43.4, FERALAS },
						-- #endif
					},
					["groups"] = {
						i(19027),	-- Schematic: Snake Burst Firework (RECIPE!)
					},
				}),
			}),
			n(ZONE_DROPS, {
				-- #if BEFORE CATA
				i(21024, {	-- Chimaerok Tenderloin
					["crs"] = {
						12801,	-- Arcane Chimaerok
						12800,	-- Chimaerok
						12802,	-- Chimaerok Devourer
						12803,	-- Lord Lakmaeran
					},
				}),
				-- #endif
				-- #if AFTER CATA
				i(8498, {	-- Emerald Whelping (PET!)
					["cr"] = 39384,	-- Noxious Whelp
				}),
				-- #endif
				-- #if BEFORE CATA
				i(4589, {	-- Long Elegant Feather
					["cr"] = 5300,	-- Frayfeather Hippogryph
				}),
				-- #endif
				i(8705, {	-- OOX-22/FE Distress Beacon
					["description"] = "This item has a chance to drop from any creature in Feralas.",
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_TWO, i(216645, {	-- Mote of Darkness
					["provider"] = { "n", 218241 },	-- Shadowy Figure
					["description"] = "After acquiring the Spent Voidcore, killing any mob in the zone can cause the Shadowy Figure to appear.",
				})),
				applyclassicphase(SOD_PHASE_TWO, i(216635, {	-- Spent Voidcore
					["crs"] = {
						5335,	-- Hatecrest Screamer
						5337,	-- Hatecrest Siren
						5336,	-- Hatecrest Sorceress
					},
				})),
				-- #endif
				-- #if AFTER 3.1.0
				i(11474, {	-- Sprite Darter Egg (PET!)
					["timeline"] = { ADDED_1_11_1 },
					-- #if BEFORE 4.0.3
					["description"] = "This pet only drops from the Darters for Horde players. Alliance players will need to complete 'Becoming a Parent' that is completed in the Hinterlands.",
					["sourceQuest"] = 4298,	-- Becoming a Parent
					-- #endif
					["crs"] = {
						-- #if AFTER 4.0.3
						5300,	-- Frayfeather Hippogryph
						5304,	-- Frayfeather Stagwing
						39949,	-- Grimtotem Marauder
						11440,	-- Gordok Enforcer
						39384,	-- Noxious Whelp
						5278,	-- Sprite Darter
						5249,	-- Woodpaw Mogrel
						5246,	-- Zukk'ash Worker
						-- #else
						5278,	-- Sprite Darter
						-- #endif
					},
				}),
				-- #endif
			}),
		},
	}),
}));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.LEGION, bubbleDownSelf({ ["timeline"] = { ADDED_7_0_3 } }, {
	m(KALIMDOR, {
		m(FERALAS, {
			q(42078),	-- Ysondre's Seal - if you are druid and done the "Sealing the Dream" (questID 25398) you can reopen the Feralas portal
		}),
	}),
})));
