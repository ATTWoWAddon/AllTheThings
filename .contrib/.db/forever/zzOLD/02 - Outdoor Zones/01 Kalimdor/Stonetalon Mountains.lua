---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(MAP.KALIMDOR, {
	m(MAP.STONETALON_MOUNTAINS, {
		["lore"] =
			"The Stonetalon Mountains are craggy and forbidding. The air is usually hot, though violent rainstorms and severe winds cool the slopes and endanger travelers. The mountains are home to many fierce creatures, including hippogryphs, harpies, drakes, wyverns and kobolds. This region is inhospitable and extreme.",
		["icon"] = 236831,
		["groups"] = {
			n(ACHIEVEMENTS, {
				ach(847),	-- Explore Stonetalon Mountains
			}),
			explorationHeader({
				exploration(2540),	-- Boulderslide Ravine
				exploration(2538),	-- Camp Aparaje
				exploration(2537),	-- Grimtotem Post
				exploration(2539),	-- Malaka'jin
				exploration(464),	-- Mirkfallon Lake
				exploration(2541),	-- Sishir Canyon
				exploration(467),	-- Stonetalon Peak
				exploration(460),	-- Sun Rock Retreat
				exploration(465),	-- The Charred Vale
				exploration(1277),	-- The Talondeep Path
				exploration(1076),	-- Webwinder Path
				exploration(461),	-- Windshear Crag
			}),
			n(FLIGHT_PATHS, {
				fp(29, {	-- Sun Rock Retreat, Stonetalon Mountains
					["cr"] = 4312,	-- Tharm <Wind Rider Master>
					["coords"] = {
						{ 45.2, 59.8, MAP.STONETALON_MOUNTAINS },
					},
					["races"] = HORDE_ONLY,
				}),
				fp(33, {	-- Thal'darah Overlook, Stonetalon Mountains [CATA+] / Stonetalon Peak, Stonetalon Mountains
					["cr"] = 4407,	-- Teloren <Hippogryph Master>
					["coords"] = {
						{ 36.4, 7.2, MAP.STONETALON_MOUNTAINS },
					},
					["races"] = ALLIANCE_ONLY,
				}),
			}),
			lockpicking({
				o(179486, {	-- Battered Footlocker
					["coords"] = {
						{ 63.5, 55.8, MAP.STONETALON_MOUNTAINS },
						{ 66.2, 47.5, MAP.STONETALON_MOUNTAINS },
						{ 75.4, 57.3, MAP.STONETALON_MOUNTAINS },
					},
					["requireSkill"] = LOCKPICKING,
					["learnedAt"] = 110,
				}),
			}),
			n(PROFESSIONS, {
				prof(FISHING, {
					o(180662),	-- Schooner Wreckage
				}),
			}),
			n(QUESTS, {
				q(1071, {	-- A Gnome's Respite
					["sourceQuest"] = 1085,	-- On Guard in Stonetalon (2/2)
					["qg"] = 4077,	-- Gaxim Rustfizzle
					["coord"] = { 59.6, 67.0, MAP.STONETALON_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 17,
					["groups"] = {
						objective(1, {	-- 0/10 Venture Co. Logger slain
							["provider"] = { "n", 3989 },	-- Venture Co. Logger
						}),
						objective(2, {	-- 0/10 Venture Co. Deforester slain
							["provider"] = { "n", 3991 },	-- Venture Co. Deforester
						}),
					},
				}),
				q(1075, {	-- A Scroll from Mauren
					["sourceQuest"] = 1071,	-- A Gnome's Respite
					["qg"] = 4077,	-- Gaxim Rustfizzle
					["coord"] = { 59.6, 67.0, MAP.STONETALON_MOUNTAINS },
					["maps"] = { MAP.STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 17,
				}),
				q(1072, {	-- An Old Colleague
					["sourceQuest"] = 1071,	-- A Gnome's Respite
					["qg"] = 4077,	-- Gaxim Rustfizzle
					["coord"] = { 59.6, 67.0, MAP.STONETALON_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 17,
				}),
				q(6284, {	-- Arachnophobia
					["provider"] = { "o", 177904 },	-- Wanted Poster: Besseleth
					["coord"] = { 59.09, 75.76, MAP.STONETALON_MOUNTAINS },
					["races"] = HORDE_ONLY,
					["lvl"] = 15,
					["groups"] = {
						objective(1, {	-- 0/1 Besseleth's Fang
							["provider"] = { "i", 16192 },	-- Besseleth's Fang
							["coord"] = { 52.8, 72.6, MAP.STONETALON_MOUNTAINS },
							["cr"] = 11921,	-- Besseleth
						}),
						i(16891),	-- Claystone Shortsword
						i(16894),	-- Clear Crystal Rod
					},
				}),
				q(6548, {	-- Avenge My Village
					["qg"] = 11857,	-- Makaba Flathoof
					["coord"] = { 35.23, 27.79, MAP.THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 12,
					["groups"] = {
						objective(1, {	-- 0/8 Grimtotem Ruffian slain
							["provider"] = { "n", 11910 },	-- Grimtotem Ruffian
						}),
						objective(2, {	-- 0/6 Grimtotem Mercenary slain
							["provider"] = { "n", 11911 },	-- Grimtotem Mercenary
						}),
					},
				}),
				q(6461, {	-- Blood Feeders
					["qg"] = 12816,	-- Xen'Zilla
					["coord"] = { 71.25, 95.0, MAP.STONETALON_MOUNTAINS },
					["races"] = HORDE_ONLY,
					["lvl"] = 13,
					["groups"] = {
						objective(1, {	-- 0/10 Deepmoss Creeper slain
							["provider"] = { "n", 4005 },	-- Deepmoss Creeper
						}),
						objective(2, {	-- 0/7 Deepmoss Venomspitter slain
							["provider"] = { "n", 4007 },	-- Deepmoss Venomspitter
						}),
					},
				}),
				q(6283, {	-- Bloodfury Bloodline
					["sourceQuest"] = 6282,	-- Harpies Threaten
					["qg"] = 11860,	-- Maggran Earthbinder
					["coord"] = { 47.17, 61.08, MAP.STONETALON_MOUNTAINS },
					["races"] = HORDE_ONLY,
					["lvl"] = 18,
					["groups"] = {
						objective(1, {	-- 0/1 Bloodfury Ripper's Remains
							["provider"] = { "i", 16190 },	-- Bloodfury Ripper's Remains
							["coord"] = { 31.8, 62.6, MAP.STONETALON_MOUNTAINS },
							["cr"] = 12579,	-- Bloodfury Ripper
						}),
						i(16990),	-- Spritekin Cloak
						i(16987),	-- Screecher Belt
					},
				}),
				q(6421, {	-- Boulderslide Ravine
					["qg"] = 11861,	-- Mor'rogal
					["coord"] = { 47.17, 64.10, MAP.STONETALON_MOUNTAINS },
					["races"] = HORDE_ONLY,
					["lvl"] = 14,
					["groups"] = {
						objective(1, {	-- 0/10 Resonite Crystal
							["providers"] = {
								{ "i",  16581 },	-- Resonite Crystal
								{ "o", 178104 },	-- Resonite Crystal
							},
							["coord"] = { 60.0, 90.1, MAP.STONETALON_MOUNTAINS },
						}),
					},
				}),
				q(5881, {	-- Calling in the Reserves
					["providers"] = {
						{ "n", 11860 },	-- Maggran Earthbinder
						{ "i", 16189 },	-- Maggran's Reserve Letter
					},
					["coord"] = { 47.17, 61.08, MAP.STONETALON_MOUNTAINS },
					["maps"] = { MAP.THOUSAND_NEEDLES },
					["races"] = HORDE_ONLY,
					["lvl"] = 23,
				}),
				q(1087, {	-- Cenarius' Legacy
					["qg"] = 4198,	-- Braelyn Firehand
					["coord"] = { 45.91, 60.35, MAP.STONETALON_MOUNTAINS },
					["races"] = HORDE_ONLY,
					["lvl"] = 20,
					["groups"] = {
						objective(1, {	-- 0/4 Son of Cenarius slain
							["provider"] = { "n", 4057 },	-- Son of Cenarius
						}),
						objective(2, {	-- 0/4 Daughter of Cenarius slain
							["provider"] = { "n", 4053 },	-- Daughter of Cenarius
						}),
						objective(3, {	-- 0/4 Cenarion Botanist slain
							["provider"] = { "n", 4051 },	-- Cenarion Botanist
						}),
					},
				}),
				q(1079, {	-- Covert Ops - Alpha
					["sourceQuests"] = {
						1074,	-- Ineptitude + Chemicals = Fun (2/2)
						1077,	-- Special Delivery for Gaxim
					},
					["providers"] = {
						{ "n", 4077 },	-- Gaxim Rustfizzle
						{ "i", 5738 },	-- Covert Ops Pack
					},
					["coord"] = { 59.6, 67.0, MAP.STONETALON_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 17,
					["groups"] = {
						objective(1, {	-- 0/1 Venture Co. Engineering Plans
							["providers"] = {
								{ "i", 5718 },	-- Venture Co. Engineering Plans
								{ "o", 19602 },	-- Venture Co. Engineering Plans
							},
							["coord"] = { 66.1, 51.3, MAP.STONETALON_MOUNTAINS },
						}),
					},
				}),
				q(1080, {	-- Covert Ops - Beta
					["sourceQuests"] = {
						1074,	-- Ineptitude + Chemicals = Fun (2/2)
						1077,	-- Special Delivery for Gaxim
					},
					["providers"] = {
						{ "n", 4077 },	-- Gaxim Rustfizzle
						{ "i", 5738 },	-- Covert Ops Pack
					},
					["coord"] = { 59.6, 67.0, MAP.STONETALON_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 17,
					["groups"] = {
						objective(1, {	-- 0/1 Venture Co. Letters
							["providers"] = {
								{ "i", 5717 },	-- Venture Co. Letters
								{ "o", 19603 },	-- Venture Co. Documents
							},
							["coord"] = { 74.4, 59.2, MAP.STONETALON_MOUNTAINS },
						}),
					},
				}),
				q(6301, {	-- Cycle of Rebirth
					["qg"] = 11864,	-- Tammra Windfield
					["coord"] = { 47.44, 58.47, MAP.STONETALON_MOUNTAINS },
					["races"] = HORDE_ONLY,
					["lvl"] = 17,
					["groups"] = {
						objective(1, {	-- 0/10 Gaea Seed
							["providers"] = {
								{ "i",  16205 },	-- Gaea Seed
								{ "o", 177926 },	-- Gaea Seed
							},
							["coord"] = { 48.0, 39.8, MAP.STONETALON_MOUNTAINS },
						}),
					},
				}),
				q(6481, {	-- Earthen Arise
					["sourceQuest"] = 6421,	-- Boulderslide Ravine
					["qg"] = 11861,	-- Mor'rogal
					["coord"] = { 47.17, 64.10, MAP.STONETALON_MOUNTAINS },
					["races"] = HORDE_ONLY,
					["lvl"] = 14,
					["groups"] = {
						objective(1, {	-- 0/1 Goggeroc slain
							["providers"] = {
								{ "n",  11920 },	-- Goggeroc
								{ "o", 178145 },	-- Resonite Cask
								{ "i",  16603 },	-- Enchanted Resonite Crystal
							},
							["coord"] = { 57.4, 89.4, MAP.STONETALON_MOUNTAINS },
						}),
						i(16981),	-- Owlbeard Bracers
						i(1306),	-- Wolfmane Wristguards
					},
				}),
				q(6393, {	-- Elemental War
					["qg"] = 11862,	-- Tsunaman
					["coord"] = { 47.28, 64.31, MAP.STONETALON_MOUNTAINS },
					["races"] = HORDE_ONLY,
					["lvl"] = 19,
					["groups"] = {
						objective(1, {	-- 0/10 Incendrites
							["provider"] = { "i", 16312 },	-- Incendrites
							["crs"] = {
								4038,	-- Burning Destroyer
								4037,	-- Burning Ravager
								4036,	-- Rogue Flame Spirit
							},
						}),
					},
				}),
				q(1083, {	-- Enraged Spirits
					["sourceQuest"] = 1091,	-- Kaela's Update
					["qg"] = 4080,	-- Kaela Shadowspear
					["coord"] = { 59.9, 66.8, MAP.STONETALON_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
					["groups"] = {
						objective(1, {	-- 0/8 Smoldering Embers
							["provider"] = { "i", 5659 },	-- Smoldering Embers
							["crs"] = {
								4038,	-- Burning Destroyer
								4037,	-- Burning Ravager
								4036,	-- Rogue Flame Spirit
							},
						}),
					},
				}),
				q(1094, {	-- Further Instructions (1/2)
					["sourceQuest"] = 1093,	-- Super Reaper 6000
					["providers"] = {
						{ "n", 4201 },	-- Ziz Fizziks
						{ "i", 5735 },	-- Sealed Envelope
					},
					["coord"] = { 59.00, 62.53, MAP.STONETALON_MOUNTAINS },
					["lvl"] = 16,
				}),
				q(1095, {	-- Further Instructions (2/2)
					["sourceQuest"] = 1094,	-- Further Instructions (1/2)
					["qg"] = 3442,	-- Sputtervalve
					["coord"] = { 62.97, 37.19, MAP.THE_BARRENS },
					["lvl"] = 16,
				}),
				q(1096, {	-- Gerenzo Wrenchwhistle
					["sourceQuest"] = 1095,	-- Further Instructions (2/2)
					["qg"] = 4201,	-- Ziz Fizziks
					["coord"] = { 59.0, 62.53, MAP.STONETALON_MOUNTAINS },
					["lvl"] = 16,
					["groups"] = {
						objective(1, {	-- 0/1 Gerenzo's Mechanical Arm
							["provider"] = { "i", 5736 },	-- Gerenzo's Mechanical Arm
							["coord"] = { 63.6, 39.6, MAP.STONETALON_MOUNTAINS },
							["cr"] = 4202,	-- Gerenzo Wrenchwhistle
						}),
						i(6667),	-- Engineer's Cloak
						i(6668),	-- Draftsman Boots
					},
				}),
				q(1090, {	-- Gerenzo's Orders (1/2)
					["qg"] = 4276,	-- Piznik
					["coord"] = { 71.80, 60.05, MAP.STONETALON_MOUNTAINS },
					["lvl"] = 17,
				}),
				q(1092, {	-- Gerenzo's Orders (2/2)
					["sourceQuest"] = 1090,	-- Gerenzo's Orders (1/2)
					["providers"] = {
						{ "n", 4276 },	-- Piznik
						{ "i", 5733 },	-- Unidentified Ore
					},
					["coord"] = { 71.80, 60.05, MAP.STONETALON_MOUNTAINS },
					["lvl"] = 17,
					["groups"] = {
						i(6666),	-- Dredge Boots
					},
				}),
				q(1062, {	-- Goblin Invaders
					["sourceQuest"] = 1061,	-- The Spirits of Stonetalon
					["qg"] = 4049,	-- Seereth Stonebreak
					["coord"] = { 35.28, 27.84, MAP.THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 13,
					["groups"] = {
						objective(1, {	-- 0/15 Venture Co. Logger slain
							["provider"] = { "n", 3989 },	-- Venture Co. Logger
						}),
					},
				}),
				q(6282, {	-- Harpies Threaten
					["qg"] = 11860,	-- Maggran Earthbinder
					["coord"] = { 47.17, 61.08, MAP.STONETALON_MOUNTAINS },
					["races"] = HORDE_ONLY,
					["lvl"] = 18,
					["groups"] = {
						objective(1, {	-- 0/7 Bloodfury Harpy slain
							["provider"] = { "n", 4022 },	-- Bloodfury Harpy
						}),
						objective(2, {	-- 0/7 Bloodfury Ambusher slain
							["provider"] = { "n", 4025 },	-- Bloodfury Ambusher
						}),
						objective(3, {	-- 0/7 Bloodfury Slayer slain
							["provider"] = { "n", 4024 },	-- Bloodfury Slayer
						}),
						objective(4, {	-- 0/7 Bloodfury Roguefeather slain
							["provider"] = { "n", 4023 },	-- Bloodfury Roguefeather
						}),
					},
				}),
				q(1058, {	-- Jin'Zil's Forest Magic
					["qg"] = 3995,	-- Witch Doctor Jin'Zil
					["coord"] = { 74.54, 97.84, MAP.STONETALON_MOUNTAINS },
					["races"] = HORDE_ONLY,
					["lvl"] = 20,
					["groups"] = {
						objective(1, {	-- 0/5 Stonetalon Sap
							["provider"] = { "i", 5582 },	-- Stonetalon Sap
							["cr"] = 4020,	-- Sap Beast
						}),
						objective(2, {	-- 0/5 Twilight Whisker
							["provider"] = { "i", 5584 },	-- Twilight Whisker
							["cr"] = 4067,	-- Twilight Runner
						}),
						objective(3, {	-- 0/30 Courser Eye
							["provider"] = { "i", 5585 },	-- Courser Eye
							["crs"] = {
								4018,	-- Antlered Courser
								4019,	-- Great Courser
							},
						}),
						objective(4, {	-- 0/1 Fey Dragon Scale
							["provider"] = { "i", 5583 },	-- Fey Dragon Scale
							["crs"] = {
								4016,	-- Fey Dragon
								4066,	-- Nal'taszar
								4017,	-- Wily Fey Dragon
							},
						}),
						i(6664),	-- Voodoo Mantle
						i(6665),	-- Hexed Bracers
					},
				}),
				q(1091, {	-- Kaela's Update
					["sourceQuests"] = {
						1079,	-- Covert Ops - Alpha
						1080,	-- Covert Ops - Beta
					},
					["providers"] = {
						{ "n", 4077 },	-- Gaxim Rustfizzle
						{ "i", 5717 },	-- Venture Co. Letters
					},
					["coord"] = { 59.6, 67.0, MAP.STONETALON_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 17,
				}),
				q(6401, {	-- Kaya's Alive
					["sourceQuest"] = 6523,	-- Protect Kaya
					["qg"] = 11857,	-- Makaba Flathoof
					["coord"] = { 35.23, 27.79, MAP.THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 12,
				}),
				q(1511, {	-- Ken'zigla's Draught
					["sourceQuest"] = 1510,	-- News of Dogran (2/2)
					["providers"] = {
						{ "n", 4197 },	-- Ken'zigla
						{ "i", 6624 },	-- Ken'zigla's Draught
					},
					["coord"] = { 73.2, 95.0, MAP.STONETALON_MOUNTAINS },
					["classes"] = { WARLOCK },
					["races"] = { ORC, UNDEAD },
					["lvl"] = 20,
				}),
				q(6629, {	-- Kill Grundig Darkcloud
					["sourceQuest"] = 6548,	-- Avenge My Village
					["qg"] = 11857,	-- Makaba Flathoof
					["coord"] = { 35.23, 27.79, MAP.THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 12,
					["groups"] = {
						objective(1, {	-- 0/1 Grundig Darkcloud slain
							["provider"] = { "n", 11858 },	-- Grundig Darkcloud
							["coord"] = { 73.8, 86.6, MAP.STONETALON_MOUNTAINS },
						}),
						objective(2, {	-- 0/6 Grimtotem Brute slain
							["provider"] = { "n", 11912 },	-- Grimtotem Brute
						}),
					},
				}),
				q(6381, {	-- New Life
					["sourceQuest"] = 6301,	-- Cycle of Rebirth
					["qg"] = 11864,	-- Tammra Windfield
					["coord"] = { 47.44, 58.47, MAP.STONETALON_MOUNTAINS },
					["races"] = HORDE_ONLY,
					["lvl"] = 17,
					["groups"] = {
						objective(1, {	-- 0/10 Gaea seed planted
							["providers"] = {
								{ "i",  16208 },	-- Enchanted Gaea Seeds
								{ "o", 177929 },	-- Gaea Dirt Mound
							},
							["coord"] = { 31.0, 61.0, MAP.STONETALON_MOUNTAINS },
						}),
						i(16985),	-- Windseeker Boots
						i(16986),	-- Sandspire Gloves
					},
				}),
				q(1070, {	-- On Guard in Stonetalon (1/2)
					["qg"] = 4079,	-- Sentinel Thenysil
					["coord"] = { 34.9, 49.8, MAP.ASHENVALE },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 17,
				}),
				q(1085, {	-- On Guard in Stonetalon (2/2)
					["sourceQuest"] = 1070,	-- On Guard in Stonetalon (1/2)
					["qg"] = 4080,	-- Kaela Shadowspear
					["coord"] = { 59.9, 66.8, MAP.STONETALON_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 17,
				}),
				q(1088, {	-- Ordanus
					["sourceQuest"] = 1087,	-- Cenarius' Legacy
					["qg"] = 4198,	-- Braelyn Firehand
					["coord"] = { 45.91, 60.35, MAP.STONETALON_MOUNTAINS },
					["maps"] = { MAP.ASHENVALE },
					["races"] = HORDE_ONLY,
					["lvl"] = 20,
					["groups"] = {
						objective(1, {	-- 0/1 Ordanus' Head
							["provider"] = { "i", 5686 },	-- Ordanus' Head
							["coord"] = { 62.0, 51.2, MAP.ASHENVALE },
							["cr"] = 4273,	-- Keeper Ordanus
						}),
					},
				}),
				q(6523, {	-- Protect Kaya
					["qg"] = 11856,	-- Kaya Flathoof
					["coord"] = { 73.51, 85.68, MAP.STONETALON_MOUNTAINS },
					["races"] = HORDE_ONLY,
					["lvl"] = 12,
				}),
				q(1081, {	-- Reception from Tyrande
					["sourceQuest"] = 1082,	-- Update for Sentinel Thenysil
					["qg"] = 4079,	-- Sentinel Thenysil
					["coord"] = { 34.8, 49.8, MAP.ASHENVALE },
					["maps"] = { MAP.DARNASSUS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 17,
					["groups"] = {
						i(7334),	-- Efflorescent Robe
						i(7335),	-- Grizzly Tunic
						i(7336),	-- Wildwood Chain
						i(6678),	-- Band of Elven Grace
					},
				}),
				q(1057, {	-- Reclaiming the Charred Vale (1/2)
					["sourceQuest"] = 1056,	-- Journey to Stonetalon Peak
					["qg"] = 3994,	-- Keeper Albagorm
					["coord"] = { 37.1, 8.1, MAP.STONETALON_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
					["groups"] = {
						objective(1, {	-- 0/7 Bloodfury Harpy slain
							["provider"] = { "n", 4022 },	-- Bloodfury Harpy
						}),
						objective(2, {	-- 0/7 Bloodfury Ambusher slain
							["provider"] = { "n", 4025 },	-- Bloodfury Ambusher
						}),
						objective(3, {	-- 0/7 Bloodfury Slayer slain
							["provider"] = { "n", 4024 },	-- Bloodfury Slayer
						}),
						objective(4, {	-- 0/7 Bloodfury Roguefeather slain
							["provider"] = { "n", 4023 },	-- Bloodfury Roguefeather
						}),
					},
				}),
				q(1059, {	-- Reclaiming the Charred Vale (2/2)
					["sourceQuest"] = 1057,	-- Reclaiming the Charred Vale (1/2)
					["qg"] = 3994,	-- Keeper Albagorm
					["coord"] = { 37.1, 8.1, MAP.STONETALON_MOUNTAINS },
					["maps"] = { MAP.FERALAS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
					["groups"] = {
						i(6675),	-- Tempered Bracers
						i(6676),	-- Constable Buckler
					},
				}),
				q(1078, {	-- Retrieval for Mauren
					["qg"] = 4078,	-- Collin Mauren
					["coord"] = { 43.1, 80.3, MAP.STORMWIND_CITY },
					["maps"] = { MAP.THOUSAND_NEEDLES },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 17,
					["groups"] = {
						objective(1, {	-- 0/8 Crystalized Scales
							["provider"] = { "i", 5675 },	-- Crystalized Scales
							["crs"] = {
								4044,	-- Blackened Basilisk
								4147,	-- Saltstone Basilisk
								4041,	-- Scorched Basilisk
								4042,	-- Singed Basilisk
							},
						}),
						i(6677),	-- Spellcrafter Wand
					},
				}),
				q(1068, {	-- Shredding Machines
					["sourceQuest"] = 1062,	-- Goblin Invaders
					["qg"] = 4049,	-- Seereth Stonebreak
					["coord"] = { 35.28, 27.84, MAP.THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 13,
					["groups"] = {
						objective(1, {	-- 0/1 XT:4 slain
							["provider"] = { "n", 4073 },	-- XT:4
						}),
						objective(2, {	-- 0/1 XT:9 slain
							["provider"] = { "n", 4074 },	-- XT:9
						}),
					},
				}),
				q(1077, {	-- Special Delivery for Gaxim
					["sourceQuest"] = 1076,	-- Devils in Westfall
					["providers"] = {
						{ "n", 4078 },	-- Collin Mauren
						{ "i", 5731 },	-- Scroll of Messaging
					},
					["coord"] = { 43.1, 80.3, MAP.STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 17,
				}),
				q(1093, {	-- Super Reaper 6000
					["sourceQuest"] = 1483,	-- Ziz Fizziks
					["qg"] = 4201,	-- Ziz Fizziks
					["coord"] = { 59.00, 62.53, MAP.STONETALON_MOUNTAINS },
					["lvl"] = 16,
					["groups"] = {
						objective(1, {	-- 0/1 Super Reaper 6000 Blueprints
							["provider"] = { "i", 5734 },	-- Super Reaper 6000 Blueprints
							["cr"] = 3988,	-- Venture Co. Operator
						}),
					},
				}),
				q(1089, {	-- The Den
					["sourceQuest"] = 1088,	-- Ordanus
					["providers"] = {
						{ "n", 4198 },	-- Braelyn Firehand
						{ "i", 5687 },	-- Gatekeeper's Key
						{ "o", 19599 },	-- Talon Den Hoard
					},
					["coord"] = { 45.91, 60.35, MAP.STONETALON_MOUNTAINS },
					["races"] = HORDE_ONLY,
					["lvl"] = 20,
					["groups"] = {
						objective(1, {	-- 0/1 Sleepers' Key
							["providers"] = {
								{ "i", 5689 },	-- Sleepers' Key
								{ "o", 19596 },	-- Sleepers' Cache
								{ "i", 5687 },	-- Gatekeeper's Key
							},
							["coord"] = { 25.6, 11.4, MAP.STONETALON_MOUNTAINS },
						}),
						objective(2, {	-- 0/1 Claw Key
							["providers"] = {
								{ "i", 5690 },	-- Claw Key
								{ "o", 19597 },	-- Druids' Cache
								{ "i", 5687 },	-- Gatekeeper's Key
							},
							["coord"] = { 29.5, 15.8, MAP.STONETALON_MOUNTAINS },
						}),
						objective(3, {	-- 0/1 Barrow Key
							["providers"] = {
								{ "i", 5691 },	-- Barrow Key
								{ "o", 19598 },	-- Barrow Cache
								{ "i", 5687 },	-- Gatekeeper's Key
							},
							["coord"] = { 27.9, 13.8, MAP.STONETALON_MOUNTAINS },
						}),
						o(19595, {	-- Gatekeeper's Hold
							["coord"] = { 30.0, 15.5, MAP.STONETALON_MOUNTAINS },
							["groups"] = { i(5687) },	-- Gatekeeper's Key
						}),
						i(6671),	-- Juggernaut Leggings
						i(6670),	-- Panther Armor
						i(6669),	-- Sacred Band
					},
				}),
				q(1063, {	-- The Elder Crone
					["sourceQuest"] = 1062,	-- Goblin Invaders
					["qg"] = 4049,	-- Seereth Stonebreak
					["coord"] = { 35.28, 27.84, MAP.THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 13,
				}),
				q(1061, {	-- The Spirits of Stonetalon
					["qg"] = 4047,	-- Zor Lonetree
					["coord"] = { 39.03, 38.04, MAP.ORGRIMMAR },
					["maps"] = { MAP.THE_BARRENS },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 13,
				}),
				q(1082, {	-- Update for Sentinel Thenysil
					["sourceQuests"] = {
						1083,	-- Enraged Spirits
						1084,	-- Wounded Ancients
					},
					["qg"] = 4080,	-- Kaela Shadowspear
					["coord"] = { 59.9, 66.8, MAP.STONETALON_MOUNTAINS },
					["maps"] = { MAP.ASHENVALE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 17,
				}),
				q(1084, {	-- Wounded Ancients
					["sourceQuest"] = 1091,	-- Kaela's Update
					["qg"] = 4080,	-- Kaela Shadowspear
					["coord"] = { 59.9, 66.8, MAP.STONETALON_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 22,
					["groups"] = {
						objective(1, {	-- 0/1 Corroded Shrapnel
							["provider"] = { "i", 5664 },	-- Corroded Shrapnel
							["crs"] = {
								4029,	-- Blackened Ancient
								4028,	-- Charred Ancient
								4030,	-- Vengeful Ancient
							},
						}),
					},
				}),
				q(1483, {	-- Ziz Fizziks
					["qg"] = 3442,	-- Sputtervalve
					["coord"] = { 62.98, 37.21, MAP.THE_BARRENS },
					["isBreadcrumb"] = true,
					["lvl"] = 16,
				}),
			}),
			n(RARES, {
				n(5915, {	-- Brother Ravenoak
					["coords"] = {
						{ 28.2, 12.8, MAP.STONETALON_MOUNTAINS },
					},
				}),
				n(5931, {	-- Foreman Rigger
					["coords"] = {
						{ 67.6, 45.4, MAP.STONETALON_MOUNTAINS },
						{ 68.0, 54.0, MAP.STONETALON_MOUNTAINS },
						{ 63.8, 51.8, MAP.STONETALON_MOUNTAINS },
					},
				}),
				n(4066, {	-- Nal'taszar
					["coords"] = {
						{ 25.6, 12.6, MAP.STONETALON_MOUNTAINS },
					},
				}),
				n(4015, {	-- Pridewing Patriarch
					["description"] =
						"Can spawn after killing any Pridewing Beasts.",
					["coords"] = {
						{ 45.2, 39.2, MAP.STONETALON_MOUNTAINS },
						{ 44.8, 45.6, MAP.STONETALON_MOUNTAINS },
						{ 48.8, 48.0, MAP.STONETALON_MOUNTAINS },
						{ 54.8, 38.0, MAP.STONETALON_MOUNTAINS },
					},
					["groups"] = {
						i(5751),	-- Webwing Cloak
						i(5752),	-- Wyvern Tailspike
					},
				}),
				n(5916, {	-- Sentinel Amarassan
					["coords"] = {
						{ 30.2, 14.8, MAP.STONETALON_MOUNTAINS },
						{ 33.2, 17.6, MAP.STONETALON_MOUNTAINS },
						{ 36.2, 18.8, MAP.STONETALON_MOUNTAINS },
						{ 36.6, 14.6, MAP.STONETALON_MOUNTAINS },
					},
				}),
				n(5930, {	-- Sister Riven
					["coords"] = {
						{ 36.8, 68.8, MAP.STONETALON_MOUNTAINS },
						{ 29.2, 67.0, MAP.STONETALON_MOUNTAINS },
						{ 29.0, 73.6, MAP.STONETALON_MOUNTAINS },
					},
				}),
				n(5928, {	-- Sorrow Wing
					["coords"] = {
						{ 46.8, 30.4, MAP.STONETALON_MOUNTAINS },
						{ 45.8, 38.8, MAP.STONETALON_MOUNTAINS },
						{ 49.6, 35.6, MAP.STONETALON_MOUNTAINS },
						{ 51.6, 36.8, MAP.STONETALON_MOUNTAINS },
						{ 51.4, 40.6, MAP.STONETALON_MOUNTAINS },
					},
				}),
				n(5932, {	-- Taskmaster Whipfang
					["coords"] = {
						{ 64.8, 49.2, MAP.STONETALON_MOUNTAINS },
						{ 60.4, 51.4, MAP.STONETALON_MOUNTAINS },
						{ 63.0, 54.4, MAP.STONETALON_MOUNTAINS },
						{ 64.2, 57.0, MAP.STONETALON_MOUNTAINS },
					},
				}),
				n(4030, {	-- Vengeful Ancient
					["coords"] = {
						{ 33.4, 63.0, MAP.STONETALON_MOUNTAINS },
						{ 30.2, 68.6, MAP.STONETALON_MOUNTAINS },
						{ 29.4, 72.6, MAP.STONETALON_MOUNTAINS },
						{ 33.0, 73.6, MAP.STONETALON_MOUNTAINS },
						{ 37.4, 72.4, MAP.STONETALON_MOUNTAINS },
					},
				}),
			}),
			n(VENDORS, {
				n(9549, {	-- Borand <Bowyer>
					["coords"] = {
						{ 45.2, 59.2, MAP.STONETALON_MOUNTAINS },
					},
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(11304, {	-- Fine Longbow
							["isLimited"] = true,
						}),
					},
				}),
				n(4083, {	-- Jeeda <Apprentice Witch Doctor>
					["coords"] = {
						{ 47.6, 61.6, MAP.STONETALON_MOUNTAINS },
					},
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(6055, {	-- Recipe: Fire Protection Potion (RECIPE!)
							["isLimited"] = true,
						}),
					},
				}),
				n(12043, {	-- Kulwia <Trade Supplies>
					["coords"] = {
						{ 45.4, 59.4, MAP.STONETALON_MOUNTAINS },
					},
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(11101, {	-- Formula: Enchant Bracer - Lesser Strength (RECIPE!)
							["isLimited"] = true,
						}),
						i(11039, {	-- Formula: Enchant Cloak - Minor Agility (RECIPE!)
							["isLimited"] = true,
						}),
					},
				}),
				n(4085, {	-- Nizzik <Venture Armor Salesman>
					["coord"] = { 62.6, 40.2, MAP.STONETALON_MOUNTAINS },
					["groups"] = {
						i(4827),	-- Wizard's Belt
						i(4828),	-- Nightwind Belt
						i(4829),	-- Dreamer's Belt
						i(4830),	-- Saber Leggings
						i(4831),	-- Stalking Pants
						i(4832),	-- Mystic Sarong
						i(4833),	-- Glorious Shoulders
						i(4835),	-- Elite Shoulders
					},
				}),
				n(4086, {	-- Veenix <Venture Co. Merchant>
					["coord"] = { 58.2, 51.6, MAP.STONETALON_MOUNTAINS },
					["groups"] = {
						i(4817),	-- Orb of Power
						i(4818, {	-- Executioner's Sword
							["isLimited"] = true,
						}),
						i(4836),	-- Fireproof Orb
						i(4837),	-- Strength of Will
						i(4838),	-- Orb of Power
						i(7561),	-- Schematic: Goblin Jumper Cables (RECIPE!)
					},
				}),
			}),
			n(ZONE_DROPS, {
				i(11151, {	-- Formula: Enchant Gloves - Herbalism
					["crs"] = {
						4029,	-- Blackened Ancient
						4028,	-- Charred Ancient
						4030,	-- Vengeful Ancient
					},
				}),
				i(6840, {	-- Galvanized Horn
					["cr"] = 6167,	-- Chimaera Matriarch
				}),
			}),
		},
	}),
}));
