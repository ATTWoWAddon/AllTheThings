---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(MAP.KALIMDOR, {
	m(MAP.THOUSAND_NEEDLES, {
		["lore"] =
			"This canyon desert gets its name from the innumerable sandstone spires that thrust up from the salt flats. Engineers have constructed bridges across the peaks of these towers, allowing travelers to cross the region without having to set foot on the ground below. The Thousand Needles is a dry and hot desert of salt. At its center is a stagnant lake ten times saltier than the ocean.\n\nResourceful goblins have discovered oil in the Scorched Basin, but they, a few scorpions, and the occasional centaur warband are the only signs of life in this parched land.",
		["icon"] = 236848,
		["groups"] = {
			n(ACHIEVEMENTS, {
				ach(846),	-- Explore Thousand Needles
			}),
			explorationHeader({
				exploration(480),	-- Camp E'thok
				exploration(2097),	-- Darkcloud Pinnacle
				exploration(484),	-- Freewind Post
				exploration(482),	-- Highperch
				exploration(481),	-- Splithoof Crag
				exploration(485),	-- The Great Lift
				exploration(483),	-- The Screeching Canyon
				exploration(439),	-- The Shimmering Flats
				exploration(2237),	-- Whitereach Post
				exploration(2303),	-- Windbreak Canyon
			}),
			n(FLIGHT_PATHS, {
				fp(30, {	-- Freewind Post, Thousand Needles
					["crs"] = {
						4317,	-- Nyse <Wind Rider Master>
					},
					["coord"] = { 45.0, 49.2, MAP.THOUSAND_NEEDLES },
					["races"] = HORDE_ONLY,
				}),
			}),
			n(QUESTS, {
				q(1175, {	-- A Bump in the Road
					["qg"] = 4629,	-- Trackmaster Zherin
					["coord"] = { 81.6, 77.9, MAP.THOUSAND_NEEDLES },
					["lvl"] = 28,
					["groups"] = {
						objective(1, {	-- 0/10 Saltstone Basilisk slain
							["provider"] = { "n", 4147 },	-- Saltstone Basilisk
						}),
						objective(2, {	-- 0/10 Saltstone Crystalhide slain
							["provider"] = { "n", 4151 },	-- Saltstone Crystalhide
						}),
						objective(3, {	-- 0/6 Saltstone Gazer slain
							["provider"] = { "n", 4150 },	-- Saltstone Gazer
						}),
					},
				}),
				q(9431, {	-- A Different Approach
					["qg"] = 17093,	-- Magistrix Elosai
					["coord"] = { 46.0, 50.4, MAP.THOUSAND_NEEDLES },
					["races"] = HORDE_ONLY,
					["lvl"] = 24,
					["groups"] = {
						objective(1, {	-- 0/2 Purifying Earth
							["provider"] = { "i", 23643 },	-- Purifying Earth
							["cr"] = 4120,	-- Thundering Boulderkin
						}),
					},
				}),
				q(9433, {	-- A Dip in the Moonwell
					["sourceQuest"] = 9431,	-- A Different Approach
					["qg"] = 10941,	-- Wizlo Bearingshiner
					["coord"] = { 21.4, 32.4, MAP.THOUSAND_NEEDLES },
					["races"] = HORDE_ONLY,
					["lvl"] = 24,
					["groups"] = {
						objective(1, {	-- 0/1 Thalanaar Moonwell Water
							["provider"] = { "i", 23670 },	-- Thalanaar Moonwell Water
							["cost"] = { { "i", 23675, 1 } },	-- Robotron Control Unit
							["coord"] = { 9.45, 18.71, MAP.THOUSAND_NEEDLES },
						}),
					},
				}),
				q(3842, {	-- A Short Incubation
					["sourceQuest"] = 3841,	-- An Orphan Looking For a Home
					["qg"] = 9238,	-- Quentin
					["coord"] = { 78.4, 74.7, MAP.THOUSAND_NEEDLES },
					["cost"] = { { "i", 3825, 2 } },	-- Elixir of Fortitude
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 38,
				}),
				q(4821, {	-- Alien Egg
					["qg"] = 10539,	-- Hagar Lightninghoof
					["coord"] = { 44.64, 50.29, MAP.THOUSAND_NEEDLES },
					["races"] = HORDE_ONLY,
					["lvl"] = 24,
					["groups"] = {
						objective(1, {	-- 0/1 Alien Egg
							["providers"] = {
								{ "i", 12467 },	-- Alien Egg
								{ "o", 175565 },	-- Alien Egg
							},
							["coords"] = {
								{ 37.7, 56.1, MAP.THOUSAND_NEEDLES },
								{ 52.4, 55.2, MAP.THOUSAND_NEEDLES },
								{ 56.3, 50.4, MAP.THOUSAND_NEEDLES },
							},
						}),
					},
				}),
				q(5088, {	-- Arikara
					["sourceQuest"] = 5062,	-- Sacred Fire
					["qg"] = 4046,	-- Magatha Grimtotem
					["coord"] = { 69.85, 30.90, MAP.THUNDER_BLUFF },
					["races"] = HORDE_ONLY,
					["lvl"] = 24,
					["groups"] = {
						objective(1, {	-- 0/1 Arikara Serpent Skin
							["providers"] = {
								{ "i",  12925 },	-- Arikara Serpent Skin
								{ "o", 175944 },	-- Sacred Fire of Life
								{ "i",  12785 },	-- Incendia Powder
							},
							["coord"] = { 37.7, 56.1, MAP.THOUSAND_NEEDLES },
							["cr"] = 10882,	-- Arikara <Vengeance>
						}),
						i(15464),	-- Brute Hammer
						i(15465),	-- Stingshot Wand
						i(15466),	-- Clink Shield
					},
				}),
				q(4881, {	-- Assassination Plot
					["description"] = "The item that starts this quest is dropped by Galak Messengers.",
					["provider"] = { "i", 12564 },	-- Assassination Note
					["coord"] = { 21.2, 32.0, MAP.THOUSAND_NEEDLES },
					["races"] = HORDE_ONLY,
					["cr"] = 10617,	-- Galak Messenger
					["lvl"] = 23,
				}),
				q(1118, {	-- Back to Booty Bay
					["sourceQuest"] = 1117,	-- Rumors for Kravel
					["providers"] = {
						{ "n", 4452 },	-- Kravel Koalbeard
						{ "i", 5826 },	-- Kravel's Scheme
					},
					["coord"] = { 78.8, 77.3, MAP.THOUSAND_NEEDLES },
					["maps"] = { MAP.STRANGLETHORN_VALE },
					["lvl"] = 35,
				}),
				q(1531, {	-- Call of Air [Orgrimmar]
					["qg"] = 5892,	-- Searn Firewarder
					["coord"] = { 37.8, 37.4, MAP.ORGRIMMAR },
					["classes"] = { SHAMAN },
					["races"] = HORDE_ONLY,
					["lvl"] = 30,
					["groups"] = {
						i(5178, {	-- Air Totem
							["description"] = "You must keep this in your bags forever.",
						}),
					},
				}),
				q(1532, {	-- Call of Air [Thunder Bluff]
					["qg"] = 5906,	-- Xanis Flameweaver
					["coord"] = { 25.2, 21.0, MAP.THUNDER_BLUFF },
					["classes"] = { SHAMAN },
					["races"] = HORDE_ONLY,
					["lvl"] = 30,
					["groups"] = {
						i(5178, {	-- Air Totem
							["description"] = "You must keep this in your bags forever.",
						}),
					},
				}),
				q(1114, {	-- Delivery to the Gnomes
					["sourceQuest"] = 1112,	-- Parts for Kravel
					["qg"] = 4452,	-- Kravel Koalbeard
					["providers"] = {
						{ "n", 4452 },	-- Kravel Koalbeard
						{ "i", 5802 },	-- Delicate Car Parts
					},
					["coord"] = { 78.8, 77.3, MAP.THOUSAND_NEEDLES },
					["lvl"] = 30,
				}),
				q(1107, {	-- Encrusted Tail Fins
					["sourceQuest"] = 1105,	-- Hardened Shells
					["qg"] = 4453,	-- Wizzle Brassbolts
					["coord"] = { 78.1, 77.1, MAP.THOUSAND_NEEDLES },
					["maps"] = { MAP.STRANGLETHORN_VALE },
					["lvl"] = 28,
					["groups"] = {
						objective(1, {	-- 0/10 Encrusted Tail Fin
							["provider"] = { "i", 5796 },	-- Encrusted Tail Fin
							["crs"] = {
								877,	-- Saltscale Forager
								879,	-- Saltscale Hunter
								873,	-- Saltscale Oracle
								875,	-- Saltscale Tide Lord
								871,	-- Saltscale Warrior
							},
						}),
					},
				}),
				q(5361, {	-- Family Tree
					["providers"] = {
						{ "n", 10537 },	-- Cliffwatcher Longhorn
						{ "i", 13507 },	-- Cliffwatcher Longhorn Report
					},
					["coord"] = { 45.65, 50.80, MAP.THOUSAND_NEEDLES },
					["maps"] = { MAP.DESOLACE },
					["races"] = HORDE_ONLY,
					["lvl"] = 32,
				}),
				q(1394, {	-- Final Passage
					["sourceQuest"] = 6628,	-- Test of Lore (6/6)
					["qg"] = 4488,	-- Parqual Fintallas
					["coord"] = { 57.75, 65.39, MAP.UNDERCITY },
					["races"] = HORDE_ONLY,
					["lvl"] = 25,
					["groups"] = {
						i(6804),	-- Windstorm Hammer
						i(6806),	-- Dancing Flame
					},
				}),
				q(4904, {	-- Free at Last
					["qg"] = 10646,	-- Lakota Windsong
					["coord"] = { 38.0, 26.6, MAP.THOUSAND_NEEDLES },
					["races"] = HORDE_ONLY,
					["lvl"] = 25,
					["groups"] = {
						i(15469),	-- Windsong Cinch
						i(15468),	-- Windsong Drape
					},
				}),
				q(1120, {	-- Get the Gnomes Drunk
					["sourceQuest"] = 1119,	-- Zanzil's Mixture and a Fool's Stout
					["altQuests"] = { 1121 },	-- Get the Goblins Drunk
					["providers"] = {
						{ "n", 4452 },	-- Kravel Koalbeard
						{ "i", 5806 },	-- Fool's Stout
					},
					["coord"] = { 78.8, 77.3, MAP.THOUSAND_NEEDLES },
					["lvl"] = 35,
				}),
				q(1121, {	-- Get the Goblins Drunk
					["sourceQuest"] = 1119,	-- Zanzil's Mixture and a Fool's Stout
					["altQuests"] = { 1120 },	-- Get the Gnomes Drunk
					["providers"] = {
						{ "n", 4452 },	-- Kravel Koalbeard
						{ "i", 5806 },	-- Fool's Stout
					},
					["coord"] = { 78.8, 77.3, MAP.THOUSAND_NEEDLES },
					["lvl"] = 35,
				}),
				q(1950, {	-- Get the Scoop
					["sourceQuest"] = 1949,	-- Hidden Secrets
					["qg"] = 6548,	-- Magus Tirth
					["coord"] = { 78.2, 75.8, MAP.THOUSAND_NEEDLES },
					["classes"] = { MAGE },
					["lvl"] = 30,
					["groups"] = {
						objective(1, {	-- Secret phrase found
							["provider"] = { "n", 6626 },	-- "Plucky" Johnson
							["description"] = "Target Plucky and then use /beckon at him.",
							["coord"] = { 79.6, 75.6, MAP.THOUSAND_NEEDLES },
						}),
					},
				}),
				q(1178, {	-- Goblin Sponsorship (1/5)
					["sourceQuest"] = 1176,	-- Load Lightening
					["qg"] = 4630,	-- Pozzik
					["coord"] = { 80.2, 75.9, MAP.THOUSAND_NEEDLES },
					["maps"] = { MAP.THE_BARRENS },
					["lvl"] = 29,
				}),
				q(1180, {	-- Goblin Sponsorship (2/5)
					["sourceQuest"] = 1178,	-- Goblin Sponsorship (1/5)
					["qg"] = 3391,	-- Gazlowe
					["coord"] = { 62.68, 36.24, MAP.THE_BARRENS },
					["maps"] = { MAP.STRANGLETHORN_VALE },
					["lvl"] = 29,
				}),
				q(1181, {	-- Goblin Sponsorship (3/5)
					["sourceQuest"] = 1180,	-- Goblin Sponsorship (2/5)
					["qg"] = 4631,	-- Wharfmaster Lozgil
					["coord"] = { 26.3, 73.6, MAP.STRANGLETHORN_VALE },
					["lvl"] = 29,
				}),
				q(1182, {	-- Goblin Sponsorship (4/5)
					["sourceQuest"] = 1181,	-- Goblin Sponsorship (3/5)
					["qg"] = 2496,	-- Baron Revilgaz
					["coord"] = { 27.2, 76.9, MAP.STRANGLETHORN_VALE },
					["lvl"] = 29,
					["groups"] = {
						objective(1, {	-- 0/1 Fuel Regulator Blueprints
							["providers"] = {
								{ "i", 5852 },	-- Fuel Regulator Blueprints
								{ "o", 20691 },	-- Cozzle's Footlocker
							},
							["coord"] = { 43.33, 20.33, MAP.STRANGLETHORN_VALE },
							["cost"] = { { "i", 5851, 1 } },	-- Cozzle's Key
						}),
						i(5851, {	-- Cozzle's Key
							["coord"] = { 42.6, 18.6, MAP.STRANGLETHORN_VALE },
							["cr"] = 4723,	-- Foreman Cozzle
						}),
					},
				}),
				q(1183, {	-- Goblin Sponsorship (5/5)
					["sourceQuest"] = 1182,	-- Goblin Sponsorship (4/5)
					["providers"] = {
						{ "n", 2496 },	-- Baron Revilgaz
						{ "i", 5852 },	-- Fuel Regulator Blueprints
					},
					["coord"] = { 27.2, 76.9, MAP.STRANGLETHORN_VALE },
					["lvl"] = 29,
				}),
				q(5064, {	-- Grimtotem Spying
					["sourceQuest"] = 4841,	-- Pacify the Centaur
					["qg"] = 10537,	-- Cliffwatcher Longhorn
					["coord"] = { 45.65, 50.80, MAP.THOUSAND_NEEDLES },
					["races"] = HORDE_ONLY,
					["lvl"] = 24,
					["groups"] = {
						objective(1, {	-- 0/1 Secret Note #1
							["providers"] = {
								{ "i",  12765 },	-- Secret Note #1
								{ "o", 176344 },	-- Document Chest #1
							},
							["coord"] = { 32.0, 33.0, MAP.THOUSAND_NEEDLES },
						}),
						objective(2, {	-- 0/1 Secret Note #2
							["providers"] = {
								{ "i",  12766 },	-- Secret Note #2
								{ "o", 190483 },	-- Document Chest #2
							},
							["coord"] = { 34.0, 39.0, MAP.THOUSAND_NEEDLES },
						}),
						objective(3, {	-- 0/1 Secret Note #3
							["providers"] = {
								{ "i",  12768 },	-- Secret Note #3
								{ "o", 190484 },	-- Document Chest #3
							},
							["coord"] = { 39.0, 41.0, MAP.THOUSAND_NEEDLES },
						}),
						i(15457),	-- Desert Shoulders
						i(15458),	-- Tundra Boots
						i(15459),	-- Grimtoll Wristguards
					},
				}),
				q(1105, {	-- Hardened Shells
					["qg"] = 4453,	-- Wizzle Brassbolts
					["coord"] = { 78.1, 77.1, MAP.THOUSAND_NEEDLES },
					["lvl"] = 28,
					["groups"] = {
						objective(1, {	-- 0/9 Hardened Tortoise Shell
							["provider"] = { "i", 5795 },	-- Hardened Tortoise Shell
							["crs"] = {
								4142,	-- Sparkleshell Tortoise
								4144,	-- Sparkleshell Borer
								4143,	-- Sparkleshell Snapper
							},
						}),
					},
				}),
				q(5762, {	-- Hemet Nesingwary
					["providers"] = {
						{ "n", 4452 },	-- Kravel Koalbeard
						{ "i", 14542 },	-- Kravel's Crate
					},
					["coord"] = { 78.8, 77.3, MAP.THOUSAND_NEEDLES },
					["maps"] = { MAP.STRANGLETHORN_VALE },
					["lvl"] = 28,
				}),
				q(4770, {	-- Homeward Bound
					["qg"] = 10427,	-- Pao'ka Swiftmountain
					["coord"] = { 17.8, 40.6, MAP.THOUSAND_NEEDLES },
					["races"] = HORDE_ONLY,
					["lvl"] = 25,
				}),
				q(5151, {	-- Hypercapacitor Gizmo
					["qg"] = 10941,	-- Wizlo Bearingshiner
					["coord"] = { 21.44, 32.55, MAP.THOUSAND_NEEDLES },
					["races"] = HORDE_ONLY,
					["lvl"] = 24,
					["groups"] = {
						objective(1, {	-- 0/1 Hypercapacitor Gizmo
							["provider"] = { "i", 12946 },	-- Hypercapacitor Gizmo
							["coord"] = { 22.8, 24.4, MAP.THOUSAND_NEEDLES },
							["cr"] = 10992,	-- Enraged Panther
						}),
						i(15467),	-- Inventor's League Ring
					},
				}),
				q(1192, {	-- Indurium Ore
					["sourceQuest"] = 1194,	-- Rizzle's Schematics
					["qg"] = 4630,	-- Pozzik
					["coord"] = { 80.0, 75.8, MAP.THOUSAND_NEEDLES },
					["cost"] = { { "i", 5833, 4 } },	-- Indurium Ore
					["repeatable"] = true,
					["lvl"] = 29,
				}),
				q(1190, {	-- Keeping Pace
					["sourceQuest"] = 1137,	-- News for Frizzle
					["qg"] = 4630,	-- Pozzik
					["coord"] = { 80.2, 75.9, MAP.THOUSAND_NEEDLES },
					["lvl"] = 29,
				}),
				q(1176, {	-- Load Lightening
					["qg"] = 4630,	-- Pozzik
					["coord"] = { 80.2, 75.9, MAP.THOUSAND_NEEDLES },
					["lvl"] = 29,
					["groups"] = {
						objective(1, {	-- 0/10 Hollow Vulture Bone
							["provider"] = { "i", 5848 },	-- Hollow Vulture Bone
							["crs"] = {
								4154,	-- Salt Flats Scavenger
								4158,	-- Salt Flats Vulture
							},
						}),
					},
				}),
				q(1106, {	-- Martek the Exiled
					["sourceQuests"] = {
						1105,	-- Hardened Shells
						1104,	-- Salt Flat Venom
					},
					["providers"] = {
						{ "n", 4454 },	-- Fizzle Brassbolts
						{ "i", 5827 },	-- Fizzle Brassbolts' Letter
					},
					["coord"] = { 78.1, 77.1, MAP.THOUSAND_NEEDLES },
					["maps"] = { MAP.BADLANDS },
					["lvl"] = 26,
				}),
				q(4542, {	-- Message to Freewind Post
					["providers"] = {
						{ "n", 10079 },	-- Brave Moonhorn
						{ "i", 11886 },	-- Urgent Message
					},
					["coord"] = { 32.23, 22.17, MAP.THOUSAND_NEEDLES },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 23,
				}),
				q(4841, {	-- Pacify the Centaur
					["sourceQuest"] = 4542,	-- Message to Freewind Post
					["qg"] = 10537,	-- Cliffwatcher Longhorn
					["coord"] = { 45.65, 50.80, MAP.THOUSAND_NEEDLES },
					["races"] = HORDE_ONLY,
					["lvl"] = 23,
					["groups"] = {
						objective(1, {	-- 0/12 Galak Scout slain
							["provider"] = { "n", 4094 },	-- Galak Scout
						}),
						objective(2, {	-- 0/10 Galak Wrangler slain
							["provider"] = { "n", 4093 },	-- Galak Wrangler
						}),
						objective(3, {	-- 0/6 Galak Windchaser slain
							["provider"] = { "n", 4096 },	-- Galak Windchaser
						}),
					},
				}),
				q(1112, {	-- Parts for Kravel
					["sourceQuest"] = 1111,	-- Wharfmaster Dizzywig
					["providers"] = {
						{ "n", 3453 },	-- Wharfmaster Dizzywig
						{ "i", 5800 },	-- Kravel's Parts
					},
					["coord"] = { 63.35, 38.45, MAP.THE_BARRENS },
					["lvl"] = 30,
				}),
				q(1148, {	-- Parts of the Swarm (1/2)
					["provider"] = { "i", 5877 },	-- Cracked Silithid Carapace
					["coord"] = { 70.2, 87.0, MAP.THOUSAND_NEEDLES },
					["races"] = HORDE_ONLY,
					["crs"] = {
						4133,	-- Silithid Hive Drone
						4130,	-- Silithid Searcher
						4131,	-- Silithid Invader
						4132,	-- Silithid Ravager
					},
					["lvl"] = 28,
					["groups"] = {
						objective(1, {	-- 0/1 Silithid Heart
							["provider"] = { "i", 5855 },	-- Silithid Heart
						}),
						objective(2, {	-- 0/5 Silithid Talon
							["provider"] = { "i", 5854 },	-- Silithid Talon
						}),
						objective(3, {	-- 0/3 Intact Silithid Carapace
							["provider"] = { "i", 5853 },	-- Intact Silithid Carapace
						}),
					},
				}),
				q(1184, {	-- Parts of the Swarm (2/2)
					["sourceQuest"] = 1148,	-- Parts of the Swarm (1/2)
					["qg"] = 3428,	-- Korran
					["coord"] = { 51.0, 29.6, MAP.THE_BARRENS },
					["maps"] = { MAP.ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["lvl"] = 28,
					["groups"] = {
						i(6737),	-- Dryleaf Pants
						i(6738),	-- Bleeding Crescent
					},
				}),
				q(4966, {	-- Protect Kanati Greycloud
					["sourceQuest"] = 4881,	-- Assassination Plot
					["qg"] = 10638,	-- Kanati Greycloud
					["coord"] = { 21.27, 32.03, MAP.THOUSAND_NEEDLES },
					["races"] = HORDE_ONLY,
					["lvl"] = 23,
					["groups"] = {
						i(15461),	-- Lightheel Boots
						i(15462),	-- Loamflake Bracers
						i(15463),	-- Palestrider Gloves
					},
				}),
				q(1187, {	-- Razzeric's Tweaking
					["sourceQuest"] = 1186,	-- The Eighteenth Pilot
					["qg"] = 4706,	-- Razzeric
					["coord"] = { 80.3, 76.1, MAP.THOUSAND_NEEDLES },
					["maps"] = { MAP.DUSTWALLOW_MARSH },
					["lvl"] = 29,
					["groups"] = {
						objective(1, {	-- 0/1 Seaforium Booster
							["providers"] = {
								{ "i", 5862 },	-- Seaforium Booster
								{ "o", 20727 },	-- Gizmorium Shipping Crate
							},
							["coord"] = { 54.1, 56.5, MAP.DUSTWALLOW_MARSH },
						}),
					},
				}),
				q(1122, {	-- Report Back to Fizzlebub
					["sourceQuests"] = {
						1120,	-- Get the Gnomes Drunk
						1121,	-- Get the Goblins Drunk
					},
					["providers"] = {
						{ "n", 4452 },	-- Kravel Koalbeard
						{ "i", 5807 },	-- Fool's Stout Report
					},
					["coord"] = { 78.8, 77.3, MAP.THOUSAND_NEEDLES },
					["maps"] = { MAP.STRANGLETHORN_VALE },
					["lvl"] = 35,
				}),
				q(1194, {	-- Rizzle's Schematics
					["sourceQuest"] = 1190,	-- Keeping Pace
					["providers"] = {
						{ "o", 20805 },	-- Rizzle's Unguarded Plans
						{ "i", 5866 },	-- Sample of Indurium Ore
					},
					["coord"] = { 77.22, 77.39, MAP.THOUSAND_NEEDLES },
					["lvl"] = 29,
				}),
				q(1110, {	-- Rocket Car Parts
					["qg"] = 4452,	-- Kravel Koalbeard
					["coord"] = { 78.8, 77.3, MAP.THOUSAND_NEEDLES },
					["lvl"] = 28,
					["groups"] = {
						objective(1, {	-- 0/30 Rocket Car Parts
							["providers"] = {
								{ "i", 5798 },	-- Rocket Car Parts
								{ "o", 19869 },	-- Rocket Car Rubble
							},
						}),
					},
				}),
				q(1117, {	-- Rumors for Kravel
					["sourceQuest"] = 1116,	-- Dream Dust in the Swamp
					["providers"] = {
						{ "n", 773 },	-- Krazek
						{ "i", 5804 },	-- Goblin Rumors
					},
					["coord"] = { 27.0, 77.2, MAP.STRANGLETHORN_VALE },
					["lvl"] = 30,
				}),
				q(5062, {	-- Sacred Fire
					["sourceQuest"] = 4865,	-- Serpent Wild
					["qg"] = 10428,	-- Motega Firemane
					["coord"] = { 21.55, 32.34, MAP.THOUSAND_NEEDLES },
					["races"] = HORDE_ONLY,
					["lvl"] = 24,
					["groups"] = {
						objective(1, {	-- 0/10 Incendia Agave
							["providers"] = {
								{ "i", 12732 },	-- Incendia Agave
								{ "o", 175928 },	-- Incendia Agave
							},
						}),
					},
				}),
				q(1188, {	-- Safety First (1/2)
					["sourceQuest"] = 1187,	-- Razzeric's Tweaking
					["providers"] = {
						{ "n", 4706 },	-- Razzeric
						{ "i", 5862 },	-- Seaforium Booster
					},
					["coord"] = { 80.3, 76.1, MAP.THOUSAND_NEEDLES },
					["maps"] = { MAP.TANARIS },
					["lvl"] = 29,
				}),
				q(1189, {	-- Safety First (2/2)
					["sourceQuest"] = 1188,	-- Safety First (1/2)
					["providers"] = {
						{ "n", 4708 },	-- Shreev
						{ "i", 5865 },	-- Modified Seaforium Booster
					},
					["coord"] = { 50.9, 27.0, MAP.TANARIS },
					["lvl"] = 29,
					["groups"] = {
						i(6726),	-- Razzeric's Customized Seatbelt
						i(6727),	-- Razzeric's Racing Grips
					},
				}),
				q(1104, {	-- Salt Flat Venom
					["qg"] = 4454,	-- Fizzle Brassbolts
					["coord"] = { 78.1, 77.1, MAP.THOUSAND_NEEDLES },
					["lvl"] = 28,
					["groups"] = {
						objective(1, {	-- 0/6 Salty Scorpid Venom
							["provider"] = { "i", 5794 },	-- Salty Scorpid Venom
							["crs"] = {
								4140,	-- Scorpid Reaver
								4139,	-- Scorpid Terror
								5937,	-- Vile Sting
							},
						}),
					},
				}),
				q(4865, {	-- Serpent Wild
					["sourceQuest"] = 4821,	-- Alien Egg
					["qg"] = 10539,	-- Hagar Lightninghoof
					["coord"] = { 44.64, 50.29, MAP.THOUSAND_NEEDLES },
					["races"] = HORDE_ONLY,
					["lvl"] = 24,
				}),
				q(1150, {	-- Test of Endurance
					["sourceQuest"] = 1149,	-- Test of Faith
					["qg"] = 2986,	-- Dorn Plainstalker
					["coord"] = { 53.94, 41.49, MAP.THOUSAND_NEEDLES },
					["races"] = HORDE_ONLY,
					["lvl"] = 25,
					["groups"] = {
						objective(1, {	-- 0/1 Grenka's Claw
							["providers"] = {
								{ "i", 5843 },	-- Grenka's Claw
								{ "o", 20447 },	-- Harpy Foodstuffs
								{ "i", 5845 },	-- Flank of Meat
							},
							["coord"] = { 26.0, 55.4, MAP.THOUSAND_NEEDLES },
							["cr"] = 4490,	-- Grenka Bloodscreech
						}),
					},
				}),
				q(1149, {	-- Test of Faith
					["qg"] = 2986,	-- Dorn Plainstalker
					["coord"] = { 53.94, 41.49, MAP.THOUSAND_NEEDLES },
					["races"] = HORDE_ONLY,
					["lvl"] = 25,
				}),
				q(1152, {	-- Test of Lore (1/6)
					["sourceQuest"] = 1151,	-- Test of Strength
					["qg"] = 2986,	-- Dorn Plainstalker
					["coord"] = { 53.94, 41.49, MAP.THOUSAND_NEEDLES },
					["maps"] = { MAP.STONETALON_MOUNTAINS },
					["races"] = HORDE_ONLY,
					["lvl"] = 25,
				}),
				q(1154, {	-- Test of Lore (2/6)
					["sourceQuest"] = 1152,	-- Test of Lore (1/6)
					["qg"] = 4489,	-- Braug Dimspirit
					["coord"] = { 78.80, 45.68, MAP.STONETALON_MOUNTAINS },
					["maps"] = { MAP.ASHENVALE },
					["races"] = HORDE_ONLY,
					["lvl"] = 25,
					["groups"] = {
						objective(1, {	-- 0/1 Legacy of the Aspects
							["providers"] = {
								{ "i", 5860 },	-- Legacy of the Aspects
								{ "o", 20725 },	-- The Legacy of the Aspects
							},
							["coord"] = { 75.5, 74.4, MAP.ASHENVALE },
						}),
					},
				}),
				q(6627, {	-- Test of Lore (3/6)
					["sourceQuest"] = 1154,	-- Test of Lore (2/6)
					["qg"] = 4489,	-- Braug Dimspirit
					["coord"] = { 78.80, 45.68, MAP.STONETALON_MOUNTAINS },
					["races"] = HORDE_ONLY,
					["lvl"] = 25,
					["groups"] = {
						objective(1, {	-- Answer Braug Dimspirit's question correctly
							["description"] = "The answer is Neltharion.",
						}),
					},
				}),
				q(1159, {	-- Test of Lore (4/6)
					["sourceQuest"] = 6627,	-- Test of Lore (3/6)
					["qg"] = 4489,	-- Braug Dimspirit
					["coord"] = { 78.80, 45.68, MAP.STONETALON_MOUNTAINS },
					["maps"] = { MAP.UNDERCITY },
					["races"] = HORDE_ONLY,
					["lvl"] = 25,
				}),
				q(6628, {	-- Test of Lore (6/6)
					["sourceQuest"] = 1160,	-- Test of Lore (5/6)
					["qg"] = 4488,	-- Parqual Fintallas
					["coord"] = { 57.75, 65.39, MAP.UNDERCITY },
					["races"] = HORDE_ONLY,
					["lvl"] = 25,
					["groups"] = {
						objective(1, {	-- Answer Parqual Fintallas' question correctly
							["description"] = "The answer is Nerzhul.",
						}),
					},
				}),
				q(1151, {	-- Test of Strength
					["sourceQuest"] = 1150,	-- Test of Endurance
					["qg"] = 2986,	-- Dorn Plainstalker
					["coord"] = { 53.94, 41.49, MAP.THOUSAND_NEEDLES },
					["races"] = HORDE_ONLY,
					["lvl"] = 25,
					["groups"] = {
						objective(1, {	-- 0/1 Fragments of Rok'Alim
							["provider"] = { "i", 5844 },	-- Fragments of Rok'Alim
							["cr"] = 4499,	-- Rok'Alim the Pounder
						}),
					},
				}),
				q(9434, {	-- Testing the Tonic
					["sourceQuest"] = 9433,	-- A Dip in the Moonwell
					["providers"] = {
						{ "n", 10941 },	-- Wizlo Bearingshiner
						{ "i", 23644 },	-- Crate of Reagents
					},
					["coord"] = { 21.4, 32.4, MAP.THOUSAND_NEEDLES },
					["races"] = HORDE_ONLY,
					["lvl"] = 24,
				}),
				q(1179, {	-- The Brassbolts Brothers
					["providers"] = {
						{ "n", 2092 },	-- Pilot Longbeard
						{ "i", 5849 },	-- Crate of Crash Helmets
					},
					["coord"] = { 72.4, 93.6, MAP.IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 28,
				}),
				q(1186, {	-- The Eighteenth Pilot
					["sourceQuest"] = 1183,	-- Goblin Sponsorship (5/5)
					["qg"] = 4630,	-- Pozzik
					["coord"] = { 80.2, 75.9, MAP.THOUSAND_NEEDLES },
					["lvl"] = 29,
				}),
				q(3843, {	-- The Newest Member of the Family
					["sourceQuest"] = 3842,	-- A Short Incubation
					["providers"] = {
						{ "n", 9238 },	-- Quentin
						{ "i", 11471 },	-- Fragile Sprite Darter Egg
					},
					["coord"] = { 78.4, 74.7, MAP.THOUSAND_NEEDLES },
					["maps"] = { MAP.THE_HINTERLANDS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 38,
				}),
				q(1115, {	-- The Rumormonger
					["qg"] = 4452,	-- Kravel Koalbeard
					["coord"] = { 78.8, 77.3, MAP.THOUSAND_NEEDLES },
					["maps"] = { MAP.STRANGLETHORN_VALE },
					["lvl"] = 30,
				}),
				q(1145, {	-- The Swarm Grows (1/3)
					["providers"] = {
						{ "n", 3428 },	-- Korran
						{ "i", 5846 },	-- Korran's Sealed Note
					},
					["coord"] = { 51.07, 29.62, MAP.THE_BARRENS },
					["maps"] = { MAP.ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["lvl"] = 29,
				}),
				q(1146, {	-- The Swarm Grows (2/3)
					["sourceQuest"] = 1145,	-- The Swarm Grows (1/3)
					["providers"] = {
						{ "n", 4485 },	-- Belgrom Rockmaul
						{ "i", 5850 },	-- Belgrom's Sealed Note
					},
					["coord"] = { 75.0, 34.2, MAP.ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["lvl"] = 29,
				}),
				q(1147, {	-- The Swarm Grows (3/3)
					["sourceQuest"] = 1146,	-- The Swarm Grows (2/3)
					["qg"] = 4483,	-- Moktar Krin
					["coord"] = { 67.60, 63.93, MAP.THOUSAND_NEEDLES },
					["races"] = HORDE_ONLY,
					["lvl"] = 29,
					["groups"] = {
						objective(1, {	-- 0/5 Silithid Searcher slain
							["provider"] = { "n", 4130 },	-- Silithid Searcher
						}),
						objective(2, {	-- 0/5 Silithid Hive Drone slain
							["provider"] = { "n", 4133 },	-- Silithid Hive Drone
						}),
						objective(3, {	-- 0/5 Silithid Invader slain
							["provider"] = { "n", 4131 },	-- Silithid Invader
						}),
					},
				}),
				q(5147, {	-- Wanted - Arnak Grimtotem
					["provider"] = { "o", 176115 },	-- Wanted Poster - Arnak Grimtotem
					["coord"] = { 46.01, 50.86, MAP.THOUSAND_NEEDLES },
					["races"] = HORDE_ONLY,
					["lvl"] = 25,
					["groups"] = {
						objective(1, {	-- 0/1 Arnak's Hoof
							["provider"] = { "i", 12884 },	-- Arnak's Hoof
							["coord"] = { 38.2, 27.0, MAP.THOUSAND_NEEDLES },
							["cr"] = 10896,	-- Arnak Grimtotem
						}),
						i(15471),	-- Brawnhide Armor
						i(15470),	-- Plainsguard Leggings
					},
				}),
				q(1111, {	-- Wharfmaster Dizzywig
					["providers"] = {
						{ "n", 4452 },	-- Kravel Koalbeard
						{ "i", 5799 },	-- Kravel's Parts Order
					},
					["coord"] = { 78.8, 77.3, MAP.THOUSAND_NEEDLES },
					["lvl"] = 30,
				}),
				q(4767, {	-- Wind Rider
					["qg"] = 10377,	-- Elu
					["coord"] = { 44.84, 48.97, MAP.THOUSAND_NEEDLES },
					["races"] = HORDE_ONLY,
					["lvl"] = 25,
					["groups"] = {
						objective(1, {	-- 0/10 Highperch Wyvern Egg
							["providers"] = {
								{ "i", 12356 },	-- Highperch Wyvern Egg
								{ "o", 175384 },	-- Highperch Wyvern Egg
							},
							["coord"] = { 11.7, 35.8, MAP.THOUSAND_NEEDLES },
						}),
						i(4265),	-- Heavy Armor Kit
					},
				}),
				q(1191, {	-- Zamek's Distraction
					["description"] = "This quest is repeatable, but can only be completed while you have the quest \"Keeping Pace\" in your quest log.",
					["altQuests"] = { 1190 },	-- Keeping Pace
					["qg"] = 4709,	-- Zamek
					["coord"] = { 79.8, 77.0, MAP.THOUSAND_NEEDLES },
					["repeatable"] = true,
					["lvl"] = 29,
				}),
				q(1119, {	-- Zanzil's Mixture and a Fool's Stout
					["sourceQuest"] = 1118,	-- Back to Booty Bay
					["providers"] = {
						{ "n", 2498 },	-- Crank Fizzlebub
						{ "i", 5806 },	-- Fool's Stout
					},
					["coord"] = { 27.1, 77.2, MAP.STRANGLETHORN_VALE },
					["lvl"] = 35,
				}),
			}),
			n(RARES, {
				n(5933, {	-- Achellios the Banished
					["coords"] = {
						{ 21.6, 33.4, MAP.THOUSAND_NEEDLES },
						{ 21.4, 37.2, MAP.THOUSAND_NEEDLES },
						{ 20.0, 39.4, MAP.THOUSAND_NEEDLES },
						{ 17.8, 36.8, MAP.THOUSAND_NEEDLES },
						{ 21.2, 41.6, MAP.THOUSAND_NEEDLES },
						{ 24.0, 43.6, MAP.THOUSAND_NEEDLES },
						{ 25.6, 41.4, MAP.THOUSAND_NEEDLES },
						{ 26.0, 39.6, MAP.THOUSAND_NEEDLES },
						{ 25.2, 36.8, MAP.THOUSAND_NEEDLES },
					},
				}),
				n(14427, {	-- Gibblesnik
					["coords"] = {
						{ 51.8, 43.6, MAP.THOUSAND_NEEDLES },
						{ 55.6, 49.6, MAP.THOUSAND_NEEDLES },
						{ 59.6, 47.6, MAP.THOUSAND_NEEDLES },
						{ 60.6, 58.6, MAP.THOUSAND_NEEDLES },
					},
				}),
				n(14426, {	-- Harb Foulmountain
					["coords"] = {
						{ 33.0, 27.6, MAP.THOUSAND_NEEDLES },
						{ 34.8, 31.6, MAP.THOUSAND_NEEDLES },
						{ 36.6, 31.6, MAP.THOUSAND_NEEDLES },
					},
				}),
				n(5934, {	-- Heartrazor
					["coords"] = {
						{ 17.8, 40.6, MAP.THOUSAND_NEEDLES },
						{ 18.0, 42.6, MAP.THOUSAND_NEEDLES },
						{ 15.8, 41.2, MAP.THOUSAND_NEEDLES },
					},
				}),
				n(5935, {	-- Ironeye the Invincible
					["coords"] = {
						{ 76.4, 60.2, MAP.THOUSAND_NEEDLES },
						{ 82.0, 58.0, MAP.THOUSAND_NEEDLES },
						{ 86.6, 70.2, MAP.THOUSAND_NEEDLES },
						{ 88.6, 73.4, MAP.THOUSAND_NEEDLES },
						{ 88.6, 78.8, MAP.THOUSAND_NEEDLES },
						{ 86.0, 80.6, MAP.THOUSAND_NEEDLES },
						{ 86.6, 76.8, MAP.THOUSAND_NEEDLES },
						{ 84.2, 72.8, MAP.THOUSAND_NEEDLES },
					},
					["groups"] = {
						i(8223),	-- Blade of the Basilisk
					},
				}),
				n(4132, {	-- Silithid Ravager
					["coords"] = {
						{ 68.8, 83.0, MAP.THOUSAND_NEEDLES },
						{ 72.6, 84.6, MAP.THOUSAND_NEEDLES },
						{ 69.4, 88.6, MAP.THOUSAND_NEEDLES },
						{ 65.6, 85.6, MAP.THOUSAND_NEEDLES },
					},
					["groups"] = {
						i(8224),	-- Silithid Ripper
					},
				}),
				n(5937, {	-- Vile Sting
					["coords"] = {
						{ 69.8, 64.6, MAP.THOUSAND_NEEDLES },
						{ 71.6, 64.4, MAP.THOUSAND_NEEDLES },
						{ 73.0, 67.8, MAP.THOUSAND_NEEDLES },
						{ 72.8, 72.0, MAP.THOUSAND_NEEDLES },
						{ 71.8, 72.4, MAP.THOUSAND_NEEDLES },
						{ 74.2, 76.8, MAP.THOUSAND_NEEDLES },
					},
				}),
			}),
			n(VENDORS, {
				n(4877, {	-- Jandia <Trade Supplies>
					["coord"] = { 46.0, 51.6, MAP.THOUSAND_NEEDLES },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(5973, {	-- Pattern: Barbaric Leggings (RECIPE!)
							["isLimited"] = true,
						}),
					},
				}),
				n(6730, {	-- Jinky Twizzlefixxit <Engineering Supplies>
					-- NOTE: There is still a Jinky Twizzlefixxit, but she doesn't sell things anymore. New ID and everything.
					["coord"] = { 77.7, 77.8, MAP.THOUSAND_NEEDLES },
					["groups"] = {
						i(7560, {	-- Schematic: Gnomish Universal Remote (RECIPE!)
							["isLimited"] = true,
						}),
						i(13309, {	-- Schematic: Lovingly Crafted Boomstick (RECIPE!)
							["isLimited"] = true,
						}),
					},
				}),
				n(6548, {	-- Magus Tirth
					["coord"] = { 78.30, 75.70, MAP.THOUSAND_NEEDLES },
					["groups"] = {
						i(11023),	-- Ancona Chicken (PET!)
					},
				}),
				n(4878, {	-- Montarr <Lorekeeper>
					["coord"] = { 45.2, 50.6, MAP.THOUSAND_NEEDLES },
					["groups"] = {
						i(6068),	-- Recipe: Shadow Oil (RECIPE!)
					},
				}),
				n(9551, {	-- Starn <Gunsmith & Bowyer>
					["coord"] = { 45.0, 50.6, MAP.THOUSAND_NEEDLES },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(11305, {	-- Dense Shortbow
							["isLimited"] = true,
						}),
						i(11304, {	-- Fine Longbow
							["isLimited"] = true,
						}),
					},
				}),
			}),
			n(ZONE_DROPS, {
				i(1493, {	-- Heavy Marauder Scimitar
					["coords"] = {
						{ 44.6, 33.6, MAP.THOUSAND_NEEDLES },
						{ 20.6, 22.2, MAP.THOUSAND_NEEDLES },
					},
					["crs"] = {
						4099,	-- Galak Marauder
					},
				}),
			}),
		},
	}),
}));
