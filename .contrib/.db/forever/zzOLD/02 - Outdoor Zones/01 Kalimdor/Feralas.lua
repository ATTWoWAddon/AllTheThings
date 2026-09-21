---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(MAP.KALIMDOR, {
	m(MAP.FERALAS, {
		["lore"] = "Feralas is a rainforest surrounded by arid zones in southern Kalimdor. It is known for the mystery surrounding Dire Maul--a former city of the Highborne that remained hermetic and drew upon demonic energy to stay immortal. There is a strong Night Elf presence--both in Feathermoon Stronghold, the base of operations for the Sentinels, and in the numerous ruins scattered around the zones.",
		["icon"] = 236764,
		["groups"] = {
			n(ACHIEVEMENTS, {
				ach(849),	-- Explore Feralas
			}),
			explorationHeader({
				exploration(1099),	-- Camp Mojache
				exploration(2577),	-- Dire Maul
				exploration(1111),	-- Dream Bough
				exploration(1105),	-- Feral Scar Vale
				exploration(1106),	-- Frayfeather Highlands
				exploration(1103),	-- Gordunni Outpost
				exploration(1100),	-- Grimtotem Compound
				exploration(1121),	-- Isle of Dread
				exploration(1137),	-- Lower Wilds
				exploration(1113),	-- Oneiros
				exploration(1116),	-- Feathermoon Stronghold
				exploration(2522),	-- Ruins of Isildien
				exploration(1114),	-- Ruins of Ravenwind
				exploration(1120),	-- Sardor Isle
				exploration(1108),	-- The Forgotten Coast
				exploration(1119),	-- The Twin Colossals
				exploration(1101),	-- The Writhing Deep
				exploration(2520),	-- Woodpaw Den
				exploration(2519),	-- Woodpaw Hills
			}),
			n(FLIGHT_PATHS, {
				fp(42, {	-- Camp Mojache, Feralas
					["crs"] = {
						8020,	-- Shyn <Hippogryph Master>
					},
					["coord"] = { 75.4, 44.2, MAP.FERALAS },
					["races"] = HORDE_ONLY,
				}),
				fp(41, {	-- Feathermoon, Feralas
					["crs"] = {
						8019,	-- Fyldren Moonfeather <Hippogryph Master>
					},
					["coords"] = {
						{ 30.2, 43.2, MAP.FERALAS },
					},
					["races"] = ALLIANCE_ONLY,
				}),
				fp(31, {	-- Shadebough, Feralas [CATA+] / Thalanaar, Feralas
					["crs"] = {
						4319,	-- Thyssiana <Hippogryph Master>
					},
					["coords"] = {
						{ 89.4, 45.8, MAP.FERALAS },
					},
					["races"] = ALLIANCE_ONLY,
				}),
			}),
			n(PROFESSIONS, {
				prof(ALCHEMY, {
					n(7948, {	-- Kylanna Windwhisper <Alchemy Trainer>
						["coord"] = { 32.6, 43.8, MAP.FERALAS },
						["races"] = ALLIANCE_ONLY,
						["groups"] = EXPERT_ARTISAN_ALCHEMY,
					}),
				}),
				prof(FISHING, {
					i(16967, {	-- Feralas Ahi
						["description"] = "Best fished at the given coords.",
						["coords"] = {
							{ 62.0, 52.0, MAP.FERALAS },	-- Verdantis River
						},
					}),
				}),
				prof(LEATHERWORKING, {
					n(7870, {	-- Caryssia Moonhunter <Tribal Leatherworking Trainer>
						["coord"] = { 89.4, 46.4, MAP.FERALAS },
						["races"] = ALLIANCE_ONLY,
						["groups"] = CLASSIC_TBC_TRIBAL,
					}),
					n(11098, {	-- Hahrana Ironhide <Master Leatherworker>
						["coord"] = { 74.4, 43.0, MAP.FERALAS },
						["races"] = HORDE_ONLY,
						["groups"] = EXPERT_ARTISAN_LEATHERWORKING,
					}),
				}),
			}),
			n(QUESTS, {
				q(2974, {	-- A Grim Discovery (1/2)
					["sourceQuest"] = 2973,	-- A New Cloak's Sheen
					["qg"] = 4544,	-- Krueg Skullsplitter
					["coord"] = { 76.0, 42.8, MAP.FERALAS },
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
					["sourceQuest"] = 2974,	-- A Grim Discovery (1/2)
					["providers"] = {
						{ "n", 4544 },	-- Krueg Skullsplitter
						{ "i", 9462 },	-- Crate of Grimtotem Horns
					},
					["coord"] = { 76.0, 42.8, MAP.FERALAS },
					["races"] = HORDE_ONLY,
					["lvl"] = 37,
					["groups"] = {
						i(11858),	-- Battlehard Cape
						i(11859),	-- Jademoon Orb
					},
				}),
				q(4266, {	-- A Hero's Welcome
					["sourceQuest"] = 4265,	-- Freed from the Hive
					["qg"] = 7880,	-- Ginro Hearthkindle
					["coord"] = { 31.8, 45.2, MAP.FERALAS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 40,
					["groups"] = {
						i(11856),	-- Ceremonial Elven Blade
						i(11857),	-- Sanctimonial Rod
					},
				}),
				q(2973, {	-- A New Cloak's Sheen
					["qg"] = 4544,	-- Krueg Skullsplitter
					["coord"] = { 76.0, 42.8, MAP.FERALAS },
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
					["coord"] = { 74.4, 43.4, MAP.FERALAS },
					["maps"] = { MAP.ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["lvl"] = 40,
				}),
				q(2981, {	-- A Threat in Feralas
					["qg"] = 4485,	-- Belgrom Rockmaul
					["coord"] = { 75.0, 34.2, MAP.ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 38,
				}),
				q(7725, {	-- Again With the Zapped Giants
					["sourceQuest"] = 7003,	-- Zapped Giants
					["qg"] = 14637,	-- Zorbin Fandazzle
					["coord"] = { 44.8, 43.4, MAP.FERALAS },
					["maxReputation"] = { FACTION_STEAMWHEEDLE_CARTEL, EXALTED },	-- Steamwheedle Cartel, Exalted.
					["repeatable"] = true,
					["lvl"] = 45,
					["groups"] = {
						objective(1, {	-- 0/10 Miniaturization Residue
							["provider"] = { "i", 18956 },	-- Miniaturization Residue
							["cost"] = { { "i", 18904, 1 } },	-- Zorbin's Ultra-Shrinker
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
					["sourceQuest"] = 2869,	-- Against the Hatecrest (2/2)
					["qg"] = 7877,	-- Latronicus Moonspear
					["coord"] = { 30.4, 46.2, MAP.FERALAS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 40,
					["groups"] = {
						objective(1, {	-- 0/1 Mysterious Relic
							["provider"] = { "i", 9248 },	-- Mysterious Relic
							["coord"] = { 28.4, 70.4, MAP.FERALAS },
							["cr"] = 8136,	-- Lord Shalzaru
						}),
					},
				}),
				q(3130, {	-- Against the Hatecrest (1/2)
					["sourceQuest"] = 2867,	-- Return to Feathermoon Stronghold
					["qg"] = 3936,	-- Shandris Feathermoon <General of the Sentinel Army>
					["coord"] = { 30.3, 46.2, MAP.FERALAS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 40,
				}),
				q(2869, {	-- Against the Hatecrest (2/2)
					["sourceQuest"] = 3130,	-- Against the Hatecrest (1/2)
					["qg"] = 7877,	-- Latronicus Moonspear
					["coord"] = { 30.4, 46.2, MAP.FERALAS },
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
				q(2863, {	-- Alpha Strike
					["sourceQuest"] = 2862,	-- War on the Woodpaw
					["qg"] = 7875,	-- Hadoken Swiftstrider
					["coord"] = { 74.8, 42.6, MAP.FERALAS },
					["races"] = HORDE_ONLY,
					["lvl"] = 39,
					["groups"] = {
						objective(1, {	-- 0/5 Woodpaw Alpha slain
							["provider"] = { "n", 5258 },	-- Woodpaw Alpha
						}),
					},
				}),
				q(3841, {	-- An Orphan Looking For a Home
					["sourceQuest"] = 2972,	-- Doling Justice (2/2)
					["providers"] = {
						{ "n", 7956 },	-- Kindal Moonweaver
						{ "i", 11102 },	-- Unhatched Sprite Darter Egg
					},
					["coord"] = { 65.8, 45.6, MAP.FERALAS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 38,
				}),
				q(4127, {	-- Boat Wreckage
					["sourceQuest"] = 4125,	-- The Missing Courier (2)
					["providers"] = {
						{ "o", 164909 },	-- Wrecked Row Boat
						{ "i", 11462 },	-- Discarded Knife
					},
					["coord"] = { 45.4, 65.0, MAP.FERALAS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 40,
				}),
				q(2979, {	-- Dark Ceremony
					["sourceQuest"] = 2978,	-- The Gordunni Scroll
					["qg"] = 7777,	-- Rok Orhan
					["coord"] = { 74.2, 44.6, MAP.FERALAS },
					["races"] = HORDE_ONLY,
					["lvl"] = 38,
					["groups"] = {
						objective(1, {	-- 0/1 Gordunni Orb
							["provider"] = { "i", 9371 },	-- Gordunni Orb
							["coord"] = { 59.2, 70.2, MAP.FERALAS },
							["cr"] = 5239,	-- Gordunni Mage-Lord
						}),
					},
				}),
				q(3062, {	-- Dark Heart
					["qg"] = 7776,	-- Talo Thornhoof
					["coord"] = { 76.0, 43.8, MAP.FERALAS },
					["races"] = HORDE_ONLY,
					["lvl"] = 45,
					["groups"] = {
						objective(1, {	-- 0/1 Edana's Dark Heart
							["provider"] = { "i", 9528 },	-- Edana's Dark Heart
							["cost"] = { { "i", 9530, 1 } },	-- Horn of Hatetalon
							["coord"] = { 40.6, 8.6, MAP.FERALAS },
							["cr"] = 8075,	-- Edana Hatetalon
						}),
						i(9530, {	-- Horn of Hatetalon
							["crs"] = {
								5366,	-- Northspring Windcaller
								5364,	-- Northspring Slayer
								5363,	-- Northspring Roguefeather
								5362,	-- Northspring Harpy
							},
						}),
						i(9665),	-- Wingcrest Gloves
						i(9666),	-- Stronghorn Girdle
					},
				}),
				q(2871, {	-- Delivering the Relic
					["sourceQuest"] = 2870,	-- Against Lord Shalzaru
					["providers"] = {
						{ "n", 7877 },	-- Latronicus Moonspear
						{ "i", 9248 }	-- Mysterious Relic
					},
					["coord"] = { 30.4, 46.2, MAP.FERALAS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 40,
					["groups"] = {
						i(9663),	-- Dawnrider's Chestpiece
						i(9664),	-- Sentinel's Guard
					},
				}),
				q(2970, {	-- Doling Justice (1/2)
					["sourceQuest"] = 2969,	-- Freedom for All Creatures
					["qg"] = 7957,	-- Jer'kai Moonweaver
					["coord"] = { 65.8, 45.6, MAP.FERALAS },
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
					["sourceQuest"] = 2970,	-- Doling Justice (1/2)
					["providers"] = {
						{ "n", 7957 },	-- Jer'kai Moonweaver
						{ "i", 9368 },	-- Jer'kai's Signet Ring
					},
					["coord"] = { 65.8, 45.6, MAP.FERALAS },
					["maps"] = { MAP.DARNASSUS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 38,
					["groups"] = {
						i(10705),	-- Firwillow Wristbands
						i(10706),	-- Nightscale Girdle
					},
				}),
				q(3125, {	-- Faerie Dragon Muisek
					["sourceQuest"] = 3124,	-- Hippogryph Muisek
					["qg"] = 8115,	-- Witch Doctor Uzer'i
					["coord"] = { 74.4, 43.4, MAP.FERALAS },
					["races"] = HORDE_ONLY,
					["lvl"] = 40,
					["groups"] = {
						objective(1, {	-- 0/8 Faerie Dragon Muisek
							["provider"] = { "i", 9596 },	-- Faerie Dragon Muisek
							["cost"] = { { "i", 9620, 1 } },	-- Faerie Dragon Muisek Vessel
							["crs"] = {
								5278,	-- Sprite Darter
								5276,	-- Sprite Dragon
							},
						}),
					},
				}),
				q(2766, {	-- Find OOX-22/FE!
					["provider"] = { "i", 8705 },	-- OOX-22/FE Distress Beacon
					["lvl"] = 40,
				}),
				q(4265, {	-- Freed from the Hive
					["sourceQuest"] = 4135,	-- The Writhing Deep
					["provider"] = { "o", 164954 },	-- Zukk'ash Pod
					["coord"] = { 72.1, 63.7, MAP.FERALAS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 40,
				}),
				q(2969, {	-- Freedom for All Creatures
					["qg"] = 7956,	-- Kindal Moonweaver
					["coord"] = { 65.8, 45.6, MAP.FERALAS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 38,
					["groups"] = {
						objective(1, {	-- Save at least 6 Sprite Darters from capture
							["providers"] = {
								{ "n", 7997 },	-- Captured Sprite Darter
								{ "n", 5278 },	-- Sprite Darter
							},
							["cost"] = { { "i", 12301, 1 } },	-- Bamboo Cage Key
						}),
					},
				}),
				q(7721, {	-- Fuel for the Zapping
					["qg"] = 14637,	-- Zorbin Fandazzle
					["coord"] = { 44.8, 43.4, MAP.FERALAS },
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
				q(2987, {	-- Gordunni Cobalt
					["qg"] = 8021,	-- Orwin Gizzmick
					["coord"] = { 75.6, 44.2, MAP.FERALAS },
					["races"] = HORDE_ONLY,
					["lvl"] = 38,
					["groups"] = {
						objective(1, {	-- 0/12 Gordunni Cobalt
							["providers"] = {
								{ "i",   9463 },	-- Gordunni Cobalt
								{ "o", 144064 },	-- Gordunni Dirt Mound
							},
							["cost"] = { { "i", 9466, 1 } },	-- Orwin's Shovel
						}),
						i(9658),	-- Boots of the Maharishi
						i(9660),	-- Stargazer Cloak
						o(144064, {	-- Gordunni Dirt Mound
							i(15794),	-- Ripped Ogre Loincloth
						}),
					},
				}),
				q(3124, {	-- Hippogryph Muisek
					["sourceQuest"] = 3123,	-- Testing the Vessel
					["qg"] = 8115,	-- Witch Doctor Uzer'i
					["coord"] = { 74.4, 43.4, MAP.FERALAS },
					["races"] = HORDE_ONLY,
					["lvl"] = 40,
					["groups"] = {
						objective(1, {	-- 0/10 Hippogryph Muisek
							["provider"] = { "i", 9595 },	-- Hippogryph Muisek
							["cost"] = { { "i", 9619, 1 } },	-- Hippogryph Muisek Vessel
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
				q(7733, {	-- Improved Quality [A]
					["sourceQuest"] = 2821,	-- The Mark of Quality [A]
					["qg"] = 7852,	-- Pratt McGrubben <Leatherworking Supplies>
					["coord"] = { 30.6, 42.7, MAP.FERALAS },
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
						i(19041),	-- Pratt's Handcrafted Tunic
					},
				}),
				q(7734, {	-- Improved Quality [H]
					["sourceQuest"] = 2822,	-- The Mark of Quality [H]
					["qg"] = 7854,	-- Jangdor Swiftstrider
					["coord"] = { 74.4, 42.8, MAP.FERALAS },
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
						i(19042),	-- Jangdor's Handcrafted Tunic
					},
				}),
				q(2939, {	-- In Search of Knowledge
					["qg"] = 7764,	-- Troyas Moonbreeze
					["coord"] = { 31.8, 45.5, MAP.FERALAS },
					["maps"] = { MAP.TELDRASSIL },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 42,
				}),
				q(3787, {	-- Jonespyre's Request
					["qg"] = 5566,	-- Tannysa
					["coord"] = { 44.8, 77.0, MAP.STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 47,
				}),
				q(3788, {	-- Jonespyre's Request
					["qg"] = 7736,	-- Innkeeper Shyria
					["coord"] = { 31.0, 43.4, MAP.FERALAS },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 47,
				}),
				{	-- Master of the Wild Leather
					["allianceQuestData"] = q(2853, {	-- Master of the Wild Leather [A]
						["sourceQuests"] = {
							2851,	-- Wild Leather Boots [A]
							2850,	-- Wild Leather Helmet [A]
							2852,	-- Wild Leather Leggings [A]
							2848,	-- Wild Leather Shoulders [A]
							2849,	-- Wild Leather Vest [A]
						},
						["providers"] = {
							{ "n", 7852 },	-- Pratt McGrubben
							{ "i", 9235 },	-- Pratt's Letter
						},
						["coord"] = { 30.6, 42.7, MAP.FERALAS },
					}),
					["hordeQuestData"] = q(2860, {	-- Master of the Wild Leather [H]
						["sourceQuests"] = {
							2858,	-- Wild Leather Boots [H]
							2857,	-- Wild Leather Helmet [H]
							2859,	-- Wild Leather Leggings [H]
							2855,	-- Wild Leather Shoulders [H]
							2856,	-- Wild Leather Vest [H]
						},
						["providers"] = {
							{ "n", 7854 },	-- Jangdor Swiftstrider
							{ "i", 9236 },	-- Jangdor's Letter
						},
						["coord"] = { 74.43, 42.91, MAP.FERALAS },
					}),
					["requireSkill"] = LEATHERWORKING,
					["learnedAt"] = 200,
					["lvl"] = 30,
					["groups"] = {
						i(8408),	-- Pattern: Wild Leather Cloak
					},
				},
				q(3792, {	-- Morrowgrain to Feathermoon Stronghold
					["sourceQuest"] = 3791,	-- The Mystery of Morrowgrain
					["qg"] = 7879,	-- Quintis Jonespyre
					["coord"] = { 32.4, 43.8, MAP.FERALAS },
					["cost"] = { { "i", 11040, 5 } },	-- Morrowgrain
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					["lvl"] = 47,
				}),
				q(3127, {	-- Mountain Giant Muisek
					["sourceQuest"] = 3126,	-- Treant Muisek
					["qg"] = 8115,	-- Witch Doctor Uzer'i
					["coord"] = { 74.4, 43.4, MAP.FERALAS },
					["races"] = HORDE_ONLY,
					["lvl"] = 40,
					["groups"] = {
						objective(1, {	-- 0/7 Mountain Giant Muisek
							["provider"] = { "i", 9597 },	-- Mountain Giant Muisek
							["cost"] = { { "i", 9621, 1 } },	-- Mountain Giant Muisek Vessel
							["crs"] = {
								5358,	-- Cliff Giant
								5357,	-- Land Walker
							},
						}),
					},
				}),
				q(3128, {	-- Natural Materials
					["qg"] = 8115,	-- Witch Doctor Uzer'i
					["coord"] = { 74.4, 43.4, MAP.FERALAS },
					["maps"] = { MAP.THE_HINTERLANDS },
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
				q(7738, {	-- Perfect Yeti Hide
					["provider"] = { "i", 18972 },	-- Perfect Yeti Hide
					["coord"] = { 55.6, 56.2, MAP.FERALAS },
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["crs"] = {
						5297,	-- Elder Rage Scar
						5299,	-- Ferocious Rage Scar
						5296,	-- Rage Scar Yeti
					},
					["lvl"] = 40,
				}),
				q(7735, {	-- Pristine Yeti Hide
					["provider"] = { "i", 18969 },	-- Pristine Yeti Hide
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
					["sourceQuest"] = 4129,	-- The Knife Revealed
					["qg"] = 7879,	-- Quintis Jonespyre
					["coord"] = { 32.5, 43.8, MAP.FERALAS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 40,
				}),
				q(7726, {	-- Refuel for the Zapping
					["sourceQuest"] = 7721,	-- Fuel for the Zapping
					["qg"] = 14637,	-- Zorbin Fandazzle
					["coord"] = { 44.8, 43.4, MAP.FERALAS },
					["maxReputation"] = { FACTION_STEAMWHEEDLE_CARTEL, EXALTED },	-- Steamwheedle Cartel, Exalted.
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
				q(2767, {	-- Rescue OOX-22/FE!
					["sourceQuest"] = 2766,	-- Find OOX-22/FE!
					["qg"] = 7807,	-- Homing Robot OOX-22\/FE
					["coord"] = { 53.4, 55.6, MAP.FERALAS },
					["lvl"] = 40,
					["groups"] = {
						i(9647),	-- Failed Flying Experiment
						i(9648),	-- Chainlink Towel
					},
				}),
				q(2867, {	-- Return to Feathermoon Stronghold
					["sourceQuest"] = 2866,	-- The Ruins of Solarsal
					["provider"] = { "o", 142179 },	-- Solarsal Gazebo
					["coord"] = { 26.3, 52.3, MAP.FERALAS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 40,
				}),
				q(3122, {	-- Return to Witch Doctor Uzer'i
					["sourceQuest"] = 3121,	-- A Strange Request
					["providers"] = {
						{ "n", 3216 },	-- Neeru Fireblade
						{ "i", 9628 },	-- Neeru's Herb Pouch
					},
					["coord"] = { 49.6, 50.6, MAP.ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["lvl"] = 40,
				}),
				q(4267, {	-- Rise of the Silithid
					["sourceQuest"] = 4266,	-- A Hero's Welcome
					["providers"] = {
						{ "n", 3936 },	-- Shandris Feathermoon <General of the Sentinel Army>
						{ "i", 11466 },	-- Raschal's Report
					},
					["coord"] = { 30.3, 46.2, MAP.FERALAS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 40,
					["groups"] = {
					},
				}),
				q(7731, {	-- Stinglasher
					["sourceQuest"] = 2903,	-- The Battle Plans
					["qg"] = 7875,	-- Hadoken Swiftstrider
					["coord"] = { 74.8, 42.6, MAP.FERALAS },
					["races"] = HORDE_ONLY,
					["lvl"] = 39,
					["groups"] = {
						objective(1, {	-- 0/1 Stinglasher's Glands
							["provider"] = { "i", 18962 },	-- Stinglasher's Glands
							["coord"] = { 75.4, 61.0, MAP.FERALAS },
							["cr"] = 14661,	-- Stinglasher
						}),
					},
				}),
				q(3123, {	-- Testing the Vessel
					["sourceQuest"] = 3122,	-- Return to Witch Doctor Uzer'i
					["qg"] = 8115,	-- Witch Doctor Uzer'i
					["coord"] = { 74.4, 43.4, MAP.FERALAS },
					["maps"] = { MAP.THE_HINTERLANDS },
					["races"] = HORDE_ONLY,
					["lvl"] = 40,
					["groups"] = {
						objective(1, {	-- 0/10 Wildkin Muisek
							["provider"] = { "i", 9594 },	-- Wildkin Muisek
							["cost"] = { { "i", 9618, 1 } },	-- Wildkin Muisek Vessel
							["cr"] = 2927,	-- Vicious Owlbeast
						}),
					},
				}),
				q(4281, {	-- Thalanaar Delivery
					["sourceQuest"] = 4135,	-- The Writhing Deep
					["provider"] = { "i", 11463 },	-- Undelivered Parcel
					["coord"] = { 73.3, 56.3, MAP.FERALAS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 40,
				}),
				q(2903, {	-- The Battle Plans
					["sourceQuest"] = 2902,	-- Woodpaw Investigation
					["providers"] = {
						{ "o", 142195 },	-- Woodpaw Battle Map
						{ "i",   9266 },	-- Woodpaw Battle Plans
					},
					["coord"] = { 71.6, 55.9, MAP.FERALAS },
					["races"] = HORDE_ONLY,
					["lvl"] = 39,
					["groups"] = {
						i(9661),	-- Earthclasp Barrier
						i(9662),	-- Rushridge Boots
					},
				}),
				q(2844, {	-- The Giant Guardian
					["qg"] = 7765,	-- Rockbiter
					["coord"] = { 42.4, 22.0, MAP.FERALAS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 44,
				}),
				q(3002, {	-- The Gordunni Orb
					["sourceQuest"] = 2979,	-- Dark Ceremony
					["providers"] = {
						{ "n", 7777 },	-- Rok Orhan
						{ "i", 9371 },	-- Gordunni Orb
					},
					["coord"] = { 74.2, 44.6, MAP.FERALAS },
					["maps"] = { MAP.ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["lvl"] = 38,
				}),
				q(2978, {	-- The Gordunni Scroll
					["providers"] = {
						{ "i",   9370 },	-- Gordunni Scroll
						{ "o", 143980 },	-- Gordunni Scroll
					},
					["coords"] = {
						{ 75.2, 28.7, MAP.FERALAS },
						{ 80.8, 35.0, MAP.FERALAS },
					},
					["races"] = HORDE_ONLY,
					["lvl"] = 38,
				}),
				q(2982, {	-- The High Wilderness
					["qg"] = 7900,	-- Angelas Moonbreeze
					["coord"] = { 31.8, 45.6, MAP.FERALAS },
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
				q(4129, {	-- The Knife Revealed
					["sourceQuest"] = 4127,	-- Boat Wreckage
					["providers"] = {
						{ "n", 7880 },	-- Ginro Hearthkindle
						{ "i", 11462 },	-- Discarded Knife
					},
					["coord"] = { 31.9, 45.1, MAP.FERALAS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 40,
				}),
				q(2821, {	-- The Mark of Quality [A]
					["qg"] = 7852,	-- Pratt McGrubben <Leatherworking Supplies>
					["coord"] = { 30.6, 42.7, MAP.FERALAS },
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
				q(2822, {	-- The Mark of Quality [H]
					["qg"] = 7854,	-- Jangdor Swiftstrider
					["coord"] = { 74.4, 42.8, MAP.FERALAS },
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
					["coord"] = { 30.4, 46.2, MAP.FERALAS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 40,
				}),
				q(4125, {	-- The Missing Courier (2/2)
					["sourceQuest"] = 4124,	-- The Missing Courier (1/2)
					["qg"] = 7880,	-- Ginro Hearthkindle
					["coord"] = { 31.9, 45.1, MAP.FERALAS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 40,
				}),
				q(2942, {	-- The Morrow Stone
					["sourceQuest"] = 2879,	-- The Stave of Equinex
					["providers"] = {
						{ "o", 144063 },	-- Equinex Monolith
						{ "i", 9306 },	-- Stave of Equinex
						{ "i", 9307 },	-- A Sparkling Stone
					},
					["coord"] = { 38.9, 13.2, MAP.FERALAS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 42,
					["groups"] = {
						i(9654),	-- Cairnstone Sliver
						i(9655),	-- Seedtime Hoop
					},
				}),
				q(3791, {	-- The Mystery of Morrowgrain
					["sourceQuests"] = {
						3787,	-- Jonespyre's Request
						3788,	-- Jonespyre's Request
					},
					["qg"] = 7879,	-- Quintis Jonespyre
					["coord"] = { 32.4, 43.8, MAP.FERALAS },
					["cost"] = { { "i", 11040, 10 } },	-- Morrowgrain
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 47,
					["groups"] = {
						i(11888),	-- Quintis' Research Gloves
						i(11889),	-- Bark Iron Pauldrons
					},
				}),
				q(2975, {	-- The Ogres of Feralas (1/2)
					["sourceQuest"] = 2981,	-- A Threat in Feralas
					["qg"] = 7777,	-- Rok Orhan
					["coord"] = { 74.2, 44.6, MAP.FERALAS },
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
					["sourceQuest"] = 2975,	-- The Ogres of Feralas (1/2)
					["qg"] = 7777,	-- Rok Orhan
					["coord"] = { 74.2, 44.6, MAP.FERALAS },
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
					["coord"] = { 30.2, 46.0, MAP.FERALAS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 40,
				}),
				q(2879, {	-- The Stave of Equinex
					["sourceQuest"] = 2943,	-- Return to Troyas
					["qg"] = 7764,	-- Troyas Moonbreeze
					["coord"] = { 31.8, 45.4, MAP.FERALAS },
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
						i(9258, {	-- Byltan Essence
							["provider"] = { "o", 142185 },	-- Flame of Byltan
							["coord"] = { 38.5, 15.8, MAP.FERALAS },
						}),
						i(9256, {	-- Imbel Essence
							["provider"] = { "o", 142187 },	-- Flame of Imbel
							["coord"] = { 39.9, 9.5, MAP.FERALAS },
						}),
						i(9255, {	-- Lahassa Essence
							["provider"] = { "o", 142186 },	-- Flame of Lahassa
							["coord"] = { 37.8, 12.1, MAP.FERALAS },
						}),
						i(9257, {	-- Samha Essence
							["provider"] = { "o", 142188 },	-- Flame of Samha
							["coord"] = { 40.6, 12.6, MAP.FERALAS },
						}),
					},
				}),
				q(4120, {	-- The Strength of Corruption
					["qg"] = 7776,	-- Talo Thornhoof
					["coord"] = { 76.0, 43.8, MAP.FERALAS },
					["maps"] = { MAP.FELWOOD },
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
					["sourceQuest"] = 4129,	-- Psychometric Reading
					["qg"] = 7880,	-- Ginro Hearthkindle
					["coord"] = { 31.9, 45.1, MAP.FERALAS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 40,
				}),
				q(4135, {	-- The Writhing Deep
					["sourceQuest"] = 4131,	-- The Woodpaw Gnolls
					["providers"] = {
						{ "o", 164953 },	-- Large Leather Backpacks
						{ "i", 11463 },	-- Undelivered Parcel
					},
					["coord"] = { 73.3, 56.3, MAP.FERALAS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 40,
				}),
				q(3567, {	-- To the Top
					["qg"] = 7773,	-- Marli Wishrunner
					["coord"] = { 45.8, 16.4, MAP.FERALAS },
					["repeatable"] = true,
					["lvl"] = 25,
				}),
				q(3126, {	-- Treant Muisek
					["sourceQuest"] = 3125,	-- Faerie Dragon Muisek
					["qg"] = 8115,	-- Witch Doctor Uzer'i
					["coord"] = { 74.4, 43.4, MAP.FERALAS },
					["races"] = HORDE_ONLY,
					["lvl"] = 40,
					["groups"] = {
						objective(1, {	-- 0/3 Treant Muisek
							["provider"] = { "i", 9593 },	-- Treant Muisek
							["cost"] = { { "i", 9606, 1 } },	-- Treant Muisek Vessel
							["cr"] = 7584,	-- Wandering Forest Walker
						}),
					},
				}),
				q(3063, {	-- Vengeance on the Northspring
					["qg"] = 7776,	-- Talo Thornhoof
					["coord"] = { 76.0, 43.8, MAP.FERALAS },
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
				q(2845, {	-- Wandering Shay
					["sourceQuest"] = 2844,	-- The Giant Guardian
					["qg"] = 7774,	-- Shay Leafrunner
					["coord"] = { 38.2, 10.3, MAP.FERALAS },
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
							["coord"] = { 42.4, 22.0, MAP.FERALAS },
							["cr"] = 7765,	-- Rockbiter
						}),
						i(9656),	-- Granite Grips
						i(9657),	-- Vinehedge Cinch
					},
				}),
				q(2862, {	-- War on the Woodpaw
					["qg"] = 7875,	-- Hadoken Swiftstrider
					["coord"] = { 74.8, 42.6, MAP.FERALAS },
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
				q(3129, {	-- Weapons of Spirit
					["sourceQuests"] = {
						3127,	-- Mountain Giant Muisek
						3128,	-- Natural Materials
					},
					["qg"] = 8115,	-- Witch Doctor Uzer'i
					["coord"] = { 74.4, 43.4, MAP.FERALAS },
					["races"] = HORDE_ONLY,
					["lvl"] = 40,
					["groups"] = {
						i(9684),	-- Force of the Hippogryph
						i(9686),	-- Spirit of the Faerie Dragon
						i(9683),	-- Strength of the Treant
						i(10652),	-- Will of the Mountain Giant
					},
				}),
				{	-- Wild Leather Armor
					["allianceQuestData"] = q(2847, {	-- Wild Leather Armor [A]
						["qg"] = 7852,	-- Pratt McGrubben
						["coord"] = { 30.6, 42.7, MAP.FERALAS },
					}),
					["hordeQuestData"] = q(2854, {	-- Wild Leather Armor [H]
						["qg"] = 7854,	-- Jangdor Swiftstrider
						["coord"] = { 74.43, 42.91, MAP.FERALAS },
					}),
					["cost"] = { { "i", 4304, 10 } },	-- Thick Leather
					["requireSkill"] = LEATHERWORKING,
					["learnedAt"] = 200,
					["lvl"] = 30,
				},
				{	-- Wild Leather Boots
					["allianceQuestData"] = q(2851, {	-- Wild Leather Boots [A]
						["sourceQuest"] = 2847,	-- Wild Leather Armor [A]
						["qg"] = 7852,	-- Pratt McGrubben
						["coord"] = { 30.6, 42.7, MAP.FERALAS },
					}),
					["hordeQuestData"] = q(2858, {	-- Wild Leather Boots [H]
						["sourceQuest"] = 2854,	-- Wild Leather Armor [H]
						["qg"] = 7854,	-- Jangdor Swiftstrider
						["coord"] = { 74.43, 42.91, MAP.FERALAS },
					}),
					["requireSkill"] = LEATHERWORKING,
					["learnedAt"] = 200,
					["cost"] = {
						{ "i", 8193, 2 },	-- Nightscape Pants
						{ "i", 8197, 2 },	-- Nightscape Boots
						{ "i", 8153, 2 },	-- Wildvine
					},
					["lvl"] = 30,
					["groups"] = {
						i(8406),	-- Pattern: Wild Leather Boots
					},
				},
				{	-- Wild Leather Helmet
					["allianceQuestData"] = q(2850, {	-- Wild Leather Helmet [A]
						["sourceQuest"] = 2847,	-- Wild Leather Armor [A]
						["qg"] = 7852,	-- Pratt McGrubben
						["coord"] = { 30.6, 42.7, MAP.FERALAS },
					}),
					["hordeQuestData"] = q(2857, {	-- Wild Leather Helmet [H]
						["sourceQuest"] = 2854,	-- Wild Leather Armor [H]
						["qg"] = 7854,	-- Jangdor Swiftstrider
						["coord"] = { 74.43, 42.91, MAP.FERALAS },
					}),
					["requireSkill"] = LEATHERWORKING,
					["learnedAt"] = 200,
					["cost"] = {
						{ "i", 8175, 2 },	-- Nightscape Tunic
						{ "i", 8176, 2 },	-- Nightscape Headband
						{ "i", 8153, 1 },	-- Wildvine
					},
					["lvl"] = 30,
					["groups"] = {
						i(8405),	-- Pattern: Wild Leather Helmet (RECIPE!)
					},
				},
				{	-- Wild Leather Leggings
					["allianceQuestData"] = q(2852, {	-- Wild Leather Leggings [A]
						["sourceQuest"] = 2847,	-- Wild Leather Armor [A]
						["qg"] = 7852,	-- Pratt McGrubben
						["coord"] = { 30.6, 42.7, MAP.FERALAS },
					}),
					["hordeQuestData"] = q(2859, {	-- Wild Leather Leggings [H]
						["sourceQuest"] = 2854,	-- Wild Leather Armor [H]
						["qg"] = 7854,	-- Jangdor Swiftstrider
						["coord"] = { 74.43, 42.91, MAP.FERALAS },
					}),
					["requireSkill"] = LEATHERWORKING,
					["learnedAt"] = 200,
					["cost"] = {
						{ "i", 8191, 2 },	-- Turtle Scale Helm
						{ "i", 8198, 2 },	-- Turtle Scale Bracers
						{ "i", 8153, 2 },	-- Wildvine
					},
					["lvl"] = 30,
					["groups"] = {
						i(8407),	-- Pattern: Wild Leather Leggings (RECIPE!)
					},
				},
				{	-- Wild Leather Shoulders
					["allianceQuestData"] = q(2848, {	-- Wild Leather Shoulders [A]
						["sourceQuest"] = 2847,	-- Wild Leather Armor [A]
						["qg"] = 7852,	-- Pratt McGrubben
						["coord"] = { 30.6, 42.7, MAP.FERALAS },
					}),
					["hordeQuestData"] = q(2855, {	-- Wild Leather Shoulders [H]
						["sourceQuest"] = 2854,	-- Wild Leather Armor [H]
						["qg"] = 7854,	-- Jangdor Swiftstrider
						["coord"] = { 74.43, 42.91, MAP.FERALAS },
					}),
					["requireSkill"] = LEATHERWORKING,
					["learnedAt"] = 200,
					["cost"] = {
						{ "i", 8173, 6 },	-- Thick Armor Kit
						{ "i", 8153, 1 },	-- Wildvine
					},
					["lvl"] = 30,
					["groups"] = {
						i(8403),	-- Pattern: Wild Leather Shoulders (RECIPE!)
					},
				},
				{	-- Wild Leather Vest
					["allianceQuestData"] = q(2849, {	-- Wild Leather Vest [A]
						["sourceQuest"] = 2847,	-- Wild Leather Armor [A]
						["qg"] = 7852,	-- Pratt McGrubben
						["coord"] = { 30.6, 42.7, MAP.FERALAS },
					}),
					["hordeQuestData"] = q(2856, {	-- Wild Leather Vest [H]
						["sourceQuest"] = 2854,	-- Wild Leather Armor [H]
						["qg"] = 7854,	-- Jangdor Swiftstrider
						["coord"] = { 74.43, 42.91, MAP.FERALAS },
					}),
					["requireSkill"] = LEATHERWORKING,
					["learnedAt"] = 200,
					["cost"] = {
						{ "i", 8189, 2 },	-- Turtle Scale Breastplate
						{ "i", 8187, 2 },	-- Turtle Scale Gloves
						{ "i", 8153, 1 },	-- Wildvine
					},
					["lvl"] = 30,
					["groups"] = {
						i(8404),	-- Pattern: Wild Leather Vest (RECIPE!)
					},
				},
				q(2902, {	-- Woodpaw Investigation
					["sourceQuest"] = 2863,	-- Alpha Strike
					["qg"] = 7875,	-- Hadoken Swiftstrider
					["coord"] = { 74.8, 42.6, MAP.FERALAS },
					["races"] = HORDE_ONLY,
					["lvl"] = 39,
				}),
				q(7003, {	-- Zapped Giants
					["qg"] = 14637,	-- Zorbin Fandazzle
					["coord"] = { 44.8, 43.4, MAP.FERALAS },
					["lvl"] = 45,
					["groups"] = {
						objective(1, {	-- 0/15 Miniaturization Residue
							["provider"] = { "i", 18956 },	-- Miniaturization Residue
							["cost"] = { { "i", 18904, 1 } },	-- Zorbin's Ultra-Shrinker
							["crs"] = {
								5358,	-- Cliff Giant
								5360,	-- Deep Strider
								5357,	-- Land Walker
								5359,	-- Shore Strider
								5361,	-- Wave Strider
							},
						}),
						i(19040),	-- Zorbin's Mega-Slicer
					},
				}),
				q(7730, {	-- Zukk'ash Infestation
					["sourceQuest"] = 2903,	-- The Battle Plans
					["qg"] = 7875,	-- Hadoken Swiftstrider
					["coord"] = { 74.8, 42.6, MAP.FERALAS },
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
					["sourceQuests"] = {
						7731,	-- Stinglasher
						7730,	-- Zukk'ash Infestation
					},
					["providers"] = {
						{ "n", 7875 },	-- Hadoken Swiftstrider
						{ "i", 19020 },	-- Camp Mojache Zukk'ash Report
					},
					["coord"] = { 74.8, 42.6, MAP.FERALAS },
					["maps"] = { MAP.ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["lvl"] = 39,
					["groups"] = {
						i(19038),	-- Ring of Subtlety
						i(19037),	-- Emerald Peak Spaulders
					},
				}),
			}),
			n(RARES, {
				n(5347, {	-- Antilus the Soarer
					["coords"] = {
						{ 53.6, 69.2, MAP.FERALAS },
						{ 54.2, 73.6, MAP.FERALAS },
						{ 57.2, 74.6, MAP.FERALAS },
						{ 59.8, 73.4, MAP.FERALAS },
					},
				}),
				n(5349, {	-- Arash-ethis
					["coords"] = {
						{ 41.8, 24.8, MAP.FERALAS },
						{ 46.0, 23.8, MAP.FERALAS },
						{ 46.2, 25.4, MAP.FERALAS },
					},
				}),
				n(5346, {	-- Bloodroar the Stalker
					["coord"] = { 52.6, 60.6, MAP.FERALAS },
				}),
				n(5345, {	-- Diamond Head
					["coords"] = {
						{ 21.6, 50.0, MAP.FERALAS },
						{ 21.6, 55.2, MAP.FERALAS },
						{ 22.4, 58.0, MAP.FERALAS },
						{ 35.0, 58.0, MAP.FERALAS },
						{ 36.0, 54.4, MAP.FERALAS },
					},
				}),
				n(5354, {	-- Gnarl Leafbrother
					["coords"] = {
						{ 68.6, 57.2, MAP.FERALAS },
						{ 72.0, 58.0, MAP.FERALAS },
						{ 75.6, 58.8, MAP.FERALAS },
					},
				}),
				n(5343, {	-- Lady Szallah
					["coords"] = {
						{ 26.6, 65.8, MAP.FERALAS },
						{ 26.0, 67.2, MAP.FERALAS },
						{ 28.2, 67.4, MAP.FERALAS },
						{ 27.8, 68.6, MAP.FERALAS },
						{ 24.8, 72.8, MAP.FERALAS },
					},
				}),
				n(11447, {	-- Mushgog
					["description"] = "Spawns in the Dire Maul Arena.",
				}),
				n(5352, {	-- Old Grizzlegut
					["coords"] = {
						{ 57.4, 56.8, MAP.FERALAS },
						{ 58.6, 59.0, MAP.FERALAS },
						{ 60.6, 60.6, MAP.FERALAS },
						{ 66.2, 47.4, MAP.FERALAS },
						{ 68.2, 48.6, MAP.FERALAS },
						{ 69.4, 45.0, MAP.FERALAS },
					},
				}),
				n(5350, {	-- Qirot
					["coords"] = {
						{ 71.8, 63.4, MAP.FERALAS },
						{ 74.0, 64.6, MAP.FERALAS },
						{ 74.2, 62.2, MAP.FERALAS },
						{ 76.6, 61.4, MAP.FERALAS },
						{ 78.6, 63.8, MAP.FERALAS },
						{ 76.8, 65.4, MAP.FERALAS },
					},
				}),
				n(11498, {	-- Skarr the Broken [CATA+] / Skarr the Unbreakable
					["description"] = "Spawns in the Dire Maul Arena.",
				}),
				n(5356, {	-- Snarler
					["coords"] = {
						{ 75.0, 36.2, MAP.FERALAS },
						{ 76.6, 39.8, MAP.FERALAS },
						{ 77.6, 37.2, MAP.FERALAS },
						{ 80.0, 39.2, MAP.FERALAS },
						{ 81.6, 39.4, MAP.FERALAS },
						{ 84.0, 39.2, MAP.FERALAS },
					},
				}),
				n(11497, {	-- The Razza
					["description"] = "Spawns in the Dire Maul Arena.",
				}),
			}),
			n(TREASURES, {
				o(141931, {	-- Hippogryph Egg
					["coord"] = { 57.0, 78.2, MAP.FERALAS },
					["groups"] = { i(8564) },	-- Hippogryph Egg
				}),
			}),
			n(VENDORS, {
				-- NOTE: This NPC stopped being a vendor with Cata, still available as a quest giver though
				n(6576, {	-- Brienna Starglow <Tailoring Supplies>
					["coord"] = { 89.0, 45.8, MAP.FERALAS },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(7089, {	-- Pattern: Azure Silk Cloak (RECIPE!)
							["isLimited"] = true,
						}),
					},
				}),
				n(8158, {	-- Bronk <Alchemy Supplies>
					["coord"] = { 76.0, 43.4, MAP.FERALAS },
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
					["coord"] = { 74.8, 45.6, MAP.FERALAS },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(11308, {	-- Sylvan Shortbow
							["isLimited"] = true,
						}),
					},
				}),
				n(7854, {	-- Jangdor Swiftstrider <Leatherworking Supplies>
					["coords"] = {
						{ 74.4, 42.8, MAP.FERALAS },
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
						{ 32.6, 44.0, MAP.FERALAS },
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
				n(7852, {	-- Pratt McGrubben <Leatherworking Supplies>
					["coord"] = { 30.6, 42.6, MAP.FERALAS },
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
					["coord"] = { 74.6, 42.8, MAP.FERALAS },
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
						{ 31.2, 43.4, MAP.FERALAS },
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
					["coord"] = { 74.6, 42.6, MAP.FERALAS },
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
						"Must complete quests |cFFFFD700Zapped Giants|r and |cFFFFD700Fuel For The Zapping|r before he will sell to you.",
					["sourceQuests"] = {
						7721,	-- Fuel for the Zapping
						7003,	-- Zapped Giants
					},
					["coords"] = {
						{ 44.8, 43.4, MAP.FERALAS },
					},
					["groups"] = {
						i(19027),	-- Schematic: Snake Burst Firework (RECIPE!)
					},
				}),
			}),
			n(ZONE_DROPS, {
				i(21024, {	-- Chimaerok Tenderloin
					["crs"] = {
						12801,	-- Arcane Chimaerok
						12800,	-- Chimaerok
						12802,	-- Chimaerok Devourer
						12803,	-- Lord Lakmaeran
					},
				}),
				i(8705, {	-- OOX-22/FE Distress Beacon
					["description"] = "This item has a chance to drop from any creature in Feralas.",
				}),
			}),
		},
	}),
}));
