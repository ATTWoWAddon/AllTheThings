---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(MAP.KALIMDOR, {
	m(MAP.DUSTWALLOW_MARSH, {
		["lore"] = "A hot, fetid swampland, underground springs feed Dustwallow Marsh and keep it eternally wet and muddy. Mosquitoes buzz in the air. Trees dip fronds into the waters. The climate is home to a variety of predators, including alligators and murlocs.\n\nBlack dragons dwell in the southern end of the swamp, and the creatures lair in such profusion that the area garners the name \"Wyrmbog.\" Dustwallow Marsh abuts the ocean on its east side, and the mixing of the waters makes a wide swath brackish. Off the coast is a rocky island, on which is perched the Alliance stronghold-city of Theramore.",
		["icon"] = 236758,
		["groups"] = {
			n(WORLD_BOSSES, {
				["isRaid"] = true,
				["lvl"] = 60,
				["groups"] = {
					n(15552, {	-- Dr. Weavil
						["coord"] = { 77.6, 17.0, MAP.DUSTWALLOW_MARSH },
						["groups"] = {
							i(21103, {	-- Draconic for Dummies [Chapter I]
								["timeline"] = { ADDED_1_9_0 },
							}),
							i(21130),	-- Diary of Weavil
						},
					}),
				},
			}),
			n(ACHIEVEMENTS, {
				ach(850),	-- Explore Dustwallow Marsh
			}),
			explorationHeader({
				exploration(2079),	-- Alcaz Island
				exploration(501),	-- Beezil's Wreck
				exploration(512),	-- Blackhoof Village
				exploration(498),	-- Bloodfen Burrow
				visit_exploration(507,{coord={42.2,23.4,MAP.DUSTWALLOW_MARSH}}),	-- Bluefen
				exploration(496),	-- Brackenwall Village
				exploration(499),	-- Darkmist Cavern
				exploration(518),	-- Dreadmurk Shore
				exploration(504),	-- North Point Tower
				exploration(503),	-- Sentry Point
				exploration(403),	-- Shady Rest Inn
				exploration(508),	-- Stonemaul Ruins
				exploration(497),	-- Swamplight Manor
				exploration(509, {	-- The Den of Flame
					-- Runaway note: I don't have this on my Main and based on the current harvested coords (all off the map) I have no idea how
					-- to even find a subzone with matching name to force collect with new logic
					["collectible"] = false,
				}),
				exploration(2302),	-- The Quagmire
				exploration(513),	-- Theramore Isle
				exploration(502),	-- Witch Hill
				exploration(511),	-- Wyrmbog
			}),
			n(FLIGHT_PATHS, {
				fp(55, {	-- Brackenwall Village, Dustwallow Marsh
					["cr"] = 11899,	-- Shardi <Wind Rider Master>
					["coord"] = { 35.6, 31.8, MAP.DUSTWALLOW_MARSH },
					["races"] = HORDE_ONLY,
				}),
				fp(32, {	-- Theramore, Dustwallow Marsh
					["cr"] = 4321,	-- Baldruc <Gryphon Master>
					["coord"] = { 67.5, 51.3, MAP.DUSTWALLOW_MARSH },
					["races"] = ALLIANCE_ONLY,
				}),
			}),
			n(PROFESSIONS, {
				prof(FIRST_AID, {
					n(12939, {	-- Doctor Gustaf VanHowzen <Trauma Surgeon>
						["coord"] = { 67.6, 48.8, MAP.DUSTWALLOW_MARSH },
						["races"] = ALLIANCE_ONLY,
						["groups"] = ARTISAN_FIRST_AID,
					}),
				}),
				prof(FISHING, {
					o(207724),	-- Shipwreck Debris
					o(180685),	-- Waterlogged Wreckage
				}),
				prof(TAILORING, {
					n(11052, {	-- Timothy Worthington <Master Tailor>
						["coord"] = { 66.2, 51.6, MAP.DUSTWALLOW_MARSH },
						["races"] = ALLIANCE_ONLY,
						["groups"] = ARTISAN_TAILORING,
					}),
				}),
			}),
			n(QUESTS, {
				q(1258, {	-- ... and Bugs
					["sourceQuest"] = 1204,	-- Mudrock Soup and Bugs
					["qg"] = 4794,	-- Morgan Stern
					["coords"] = {
						{ 66.4, 45.4, MAP.DUSTWALLOW_MARSH },
					},
					["maps"] = { MAP.SWAMP_OF_SORROWS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 33,
					["groups"] = {
						objective(1, {	-- 0/12 Pristine Crawler Leg
							["provider"] = { "i", 5938 },	-- Pristine Crawler Leg
							["crs"] = {
								1088,	-- Monstrous Crawler
								922,	-- Silt Crawler
							},
						}),
						i(6801),	-- Baroque Apron
					},
				}),
				q(6625, {	-- Alliance Trauma
					["qg"] = 5150,	-- Nissa Firestone
					["coord"] = { 54.8, 58.6, MAP.IRONFORGE },
					["requireSkill"] =
						FIRST_AID,
					["learnedAt"] = 225,
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 35,
				}),
				q(1168, {	-- Army of the Black Dragon
					["qg"] = 4502,	-- Tharg
					["coord"] = { 37.2, 31.4, MAP.DUSTWALLOW_MARSH },
					["races"] = HORDE_ONLY,
					["lvl"] = 37,
					["groups"] = {
						objective(1, {	-- 0/15 Firemane Scout slain
							["provider"] = { "n", 4329 },	-- Firemane Scout
						}),
						objective(2, {	-- 0/10 Firemane Ash Tail slain
							["provider"] = { "n", 4331 },	-- Firemane Ash Tail
						}),
						objective(3, {	-- 0/5 Firemane Scalebane slain
							["provider"] = { "n", 4328 },	-- Firemane Scalebane
						}),
						i(9706),	-- Tharg's Disk
						i(9705),	-- Tharg's Shoelace
					},
				}),
				q(1220, {	-- Captain Vimes
					["sourceQuest"] = 1219,	-- The Orc Report
					["providers"] = {
						{ "n", 4947 },	-- Theramore Lieutenant
						{ "i", 5917 },	-- Spy's Report (QI!) not prov
					},
					["coords"] = {
						{ 68.1, 48.2, MAP.DUSTWALLOW_MARSH },
						{ 67.2, 51.0, MAP.DUSTWALLOW_MARSH },
						{ 65.1, 47.1, MAP.DUSTWALLOW_MARSH },
					},
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
				}),
				q(1958, {	-- Celestial Power
					["sourceQuest"] = 1957,	-- Mana Surges
					["qg"] = 6546,	-- Tabetha
					["coord"] = { 46.0, 57.0, MAP.DUSTWALLOW_MARSH },
					["classes"] = { MAGE },
					["lvl"] = 35,
					["groups"] = {
						i(7515),	-- Celestial Orb
						i(9517),	-- Celestial Stave
					},
				}),
				q(1173, {	-- Challenge Overlord Mok'Morokk
					["sourceQuest"] = 1172,	-- The Brood of Onyxia (3/3)
					["qg"] = 4500,	-- Overlord Mok'Morokk
					["coord"] = { 36.2, 31.4, MAP.DUSTWALLOW_MARSH },
					["races"] = HORDE_ONLY,
					["lvl"] = 38,
					["groups"] = {
						i(10704),	-- Chillnail Splinter
						i(10703),	-- Fiendish Skiv
					},
				}),
				q(1285, {	-- Daelin's Men
					["sourceQuest"] = 1259,	-- Lieutenant Paval Reethe (2/2) [A]
					["qg"] = 4948,	-- Adjutant Tesoran
					["coord"] = { 68.0, 48.1, MAP.DUSTWALLOW_MARSH },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
				}),
				q(1271, {	-- Feast at the Blue Recluse
					["description"] = "Don't forget to loot all the food and drinks off the tables.",
					["sourceQuests"] = {
						1258,	-- ... and Bugs
						1222,	-- Stinky's Escape
					},
					["qg"] = 1141,	-- Angus Stern
					["coords"] = {
						{ 51.8, 93.7, MAP.STORMWIND_CITY },
					},
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
					["groups"] = {
						i(5951),	-- Moist Towelette
					},
				}),
				q(1132, {	-- Fiora Longears
					["qg"] = 4455,	-- Red Jack Flint
					["coord"] = { 9.9, 57.9, MAP.WETLANDS },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 18,
					-- This quest was moved to Darkshore after TBC Prepatch.
				}),
				q(1949, {	-- Hidden Secrets
					["sourceQuest"] = 1947,	-- Journey to the Marsh
					["qg"] = 6546,	-- Tabetha
					["coord"] = { 46.0, 57.0, MAP.DUSTWALLOW_MARSH },
					["classes"] = { MAGE },
					["lvl"] = 30,
				}),
				q(1135, {	-- Highperch Venom
					["qg"] = 4456,	-- Fiora Longears
					["coord"] = { 66.5, 45.2, MAP.DUSTWALLOW_MARSH },
					["maps"] = { MAP.THOUSAND_NEEDLES },
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
						i(6719),	-- Windborne Belt
					},
				}),
				q(1177, {	-- Hungry!
					["qg"] = 4503,	-- Mudcrush Durtfeet
					["coord"] = { 35.2, 38.3, MAP.DUSTWALLOW_MARSH },
					["lvl"] = 32,
					["groups"] = {
						objective(1, {	-- 0/12 Mirefin Head
							["provider"] = { "i", 5847 },	-- Mirefin Head
							["crs"] = {
								14230,	-- Burgle Eye
								4362,	-- Mirefin Coastrunner
								4361,	-- Mirefin Muckdweller
								4359,	-- Mirefin Murloc
								4363,	-- Mirefin Oracle
								4358,	-- Mirefin Puddlejumper
								4360,	-- Mirefin Warrior
							},
						}),
						i(9518),	-- Mud's Crushers
						i(9519),	-- Durtfeet Stompers
					},
				}),
				q(1169, {	-- Identifying the Brood
					["qg"] = 4501,	-- Draz'Zilb
					["coord"] = { 37.0, 33.0, MAP.DUSTWALLOW_MARSH },
					["races"] = HORDE_ONLY,
					["lvl"] = 38,
					["groups"] = {
						objective(1, {	-- 0/15 Searing Tongue
							["provider"] = { "i", 5840 },	-- Searing Tongue
							["crs"] = {
								4323,	-- Searing Hatchling
								4324,	-- Searing Whelp
							},
						}),
						objective(2, {	-- 0/15 Searing Heart
							["provider"] = { "i", 5841 },	-- Searing Heart
							["crs"] = {
								4323,	-- Searing Hatchling
								4324,	-- Searing Whelp
							},
						}),
						i(9703),	-- Scorched Cape
						i(9704),	-- Rustler Gloves
					},
				}),
				q(1948, {	-- Items of Power
					["sourceQuest"] = 1951,	-- Rituals of Power
					["providers"] = {
						{ "n", 6546 },	-- Tabetha
						{ "i", 7516 },	-- Tabetha's Instructions
					},
					["coord"] = { 46.0, 57.0, MAP.DUSTWALLOW_MARSH },
					["maps"] = { MAP.ARATHI_HIGHLANDS },
					["cost"] = { { "i", 1529, 1 } },	-- Jade
					["classes"] = { MAGE },
					["lvl"] = 30,
					["groups"] = {
						objective(2, {	-- 0/1 Bolt Charged Bramble
							["provider"] = { "i", 7272 },	-- Bolt Charged Bramble
							["coord"] = { 52.0, 51.0, MAP.ARATHI_HIGHLANDS },
							["cost"] = { { "i", 7273, 10 } },	-- Witherbark Totem Stick
							["crs"] = {
								2554,	-- Witherbark Axe Thrower
								2558,	-- Witherbark Berserker
								2556,	-- Witherbark Headhunter
								2557,	-- Witherbark Shadow Hunter
								2553,	-- Witherbark Shadowcaster
								2552,	-- Witherbark Troll
								2555,	-- Witherbark Witch Doctor
								2605,	-- Zalas Witherbark <Warband Leader>
							},
						}),
					},
				}),
				q(1301, {	-- James Hyal (1/2)
					["qg"] = 5081,	-- Connor Rivers
					["coord"] = { 40.4, 91.6, MAP.STORMWIND_CITY },
					["maps"] = { MAP.WETLANDS },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 30,
				}),
				q(1302, {	-- James Hyal (2/2)
					["sourceQuest"] = 1301,	-- James Hyal (1/2)
					["altQuests"] = { 1282 },	-- They Call Him Smiling Jim
					["qg"] = 5082,	-- Vincent Hyal
					["coord"] = { 10.8, 60.4, MAP.WETLANDS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
				}),
				q(1203, {	-- Jarl Needs a Blade
					["sourceQuest"] = 1206,	-- Jarl Needs Eyes
					["qg"] = 4792,	-- "Swamp Eye" Jarl
					["coord"] = { 55.4, 26.2, MAP.DUSTWALLOW_MARSH },
					["cost"] = { { "i", 3853, 1 } },	-- Moonsteel Broadsword
					["lvl"] = 30,
					["groups"] = {
						i(5016),	-- Artisan's Trousers
						i(9622),	-- Reedknot Ring
					},
				}),
				q(1206, {	-- Jarl Needs Eyes
					["sourceQuest"] = 1218,	-- Marsh Frog Legs (TBC+) / Soothing Spices (Classic)
					["qg"] = 4792,	-- "Swamp Eye" Jarl
					["coord"] = { 55.4, 26.2, MAP.DUSTWALLOW_MARSH },
					["lvl"] = 30,
					["groups"] = {
						objective(1, {	-- 0/40 Unpopped Darkmist Eye
							["provider"] = { "i", 5884 },	-- Unpopped Darkmist Eye
							["crs"] = {
								4377,	-- Darkmist Lurker
								4378,	-- Darkmist Recluse
								4379,	-- Darkmist Silkspinner
								4376,	-- Darkmist Spider
								4380,	-- Darkmist Widow
							},
						}),
					},
				}),
				q(1133, {	-- Journey to Astranaar
					["sourceQuest"] = 1132,	-- Fiora Longears
					["qg"] = 4456,	-- Fiora Longears
					["coord"] = { 66.4, 45.2, MAP.DUSTWALLOW_MARSH },
					["maps"] = { MAP.ASHENVALE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 18,
					-- This quest was moved to Darkshore after TBC Prepatch.
				}),
				q(1947, {	-- Journey to the Marsh
					["qgs"] = {
						5885,	-- Deino <Mage Trainer>
						5144,	-- Bink <Mage Trainer>
						5497,	-- Jennea Cannon <Mage Trainer>
						3048,	-- Ursyn Ghull <Mage Trainer>
						4568,	-- Anastasia Hartwell <Mage Trainer>
					},
					["coords"] = {
						{ 38.4, 86.0, MAP.ORGRIMMAR },
						{ 27.0, 8.2, MAP.IRONFORGE },
						{ 49.5, 85.8, MAP.STORMWIND_CITY },
						{ 25.8, 14.4, MAP.THUNDER_BLUFF },
						{ 85.0, 10.2, MAP.UNDERCITY },
					},
					["classes"] = { MAGE },
					["isBreadcrumb"] = true,
					["lvl"] = 30,
				}),
				q(1252, {	-- Lieutenant Paval Reethe (1/2) [A]
					["providers"] = {
						{ "o", 21042 },	-- Theramore Guard Badge
						{ "i", 5950 },	-- Reethe's Badge
					},
					["coord"] = { 29.8, 48.2, MAP.DUSTWALLOW_MARSH },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
				}),
				q(1259, {	-- Lieutenant Paval Reethe (2/2) [A]
					["sourceQuest"] = 1252,	-- Lieutenant Paval Reethe (1/2) [A]
					["qg"] = 4944,	-- Captain Garran Vimes
					["coord"] = { 68.2, 48.6, MAP.DUSTWALLOW_MARSH },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
				}),
				q(1269, {	-- Lieutenant Paval Reethe [H]
					["providers"] = {
						{ "o", 21042 },	-- Theramore Guard Badge
						{ "i", 5950 },	-- Reethe's Badge (QI!) not prov
					},
					["coord"] = { 29.8, 48.2, MAP.DUSTWALLOW_MARSH },
					["races"] = HORDE_ONLY,
					["lvl"] = 30,
				}),
				q(1952, {	-- Mage's Wand
					["sourceQuest"] = 1948,	-- Items of Power
					["qg"] = 6546,	-- Tabetha
					["coord"] = { 46.0, 57.0, MAP.DUSTWALLOW_MARSH },
					["classes"] = { MAGE },
					["lvl"] = 30,
					["groups"] = {
						i(7514),	-- Icefury Wand
						i(11263),	-- Nether Force Wand
						i(7513),	-- Ragefire Wand
					},
				}),
				q(1957, {	-- Mana Surges
					["sourceQuest"] = 1956,	-- Power in Uldaman
					["qg"] = 6546,	-- Tabetha
					["coord"] = { 46.0, 57.0, MAP.DUSTWALLOW_MARSH },
					["classes"] = { MAGE },
					["lvl"] = 35,
					["groups"] = {
						objective(1, {	-- 0/12 Mana Surge slain
							["provider"] = { "n", 6550 },	-- Mana Surge
						}),
					},
				}),
				q(1261, {	-- Marg Speaks
					["sourceQuest"] = 1240,	-- The Troll Witchdoctor
					["provider"] = { "o", 2076 },	-- Bubbling Cauldron
					["coord"] = { 32.2, 27.7, MAP.STRANGLETHORN_VALE },
					["races"] = HORDE_ONLY,
					["lvl"] = 30,
					["groups"] = {
						objective(1, {	-- 0/1 Jeweled Pendant
							["provider"] = { "i", 5942 },	-- Jeweled Pendant
							["crs"] = {
								14236,	-- Lord Angler
								4401,	-- Muckshell Clacker
								4403,	-- Muckshell Pincer
								4405,	-- Muckshell Razorclaw
								4404,	-- Muckshell Scrabbler
								4402,	-- Muckshell Snapclaw
							},
						}),
					},
				}),
				q(1260, {	-- Morgan Stern
					["qg"] = 1141,	-- Angus Stern
					["coords"] = {
						{ 51.8, 93.7, MAP.STORMWIND_CITY },
					},
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 33,
				}),
				q(1204, {	-- Mudrock Soup and Bugs
					["sourceQuest"] = 1260,	-- Morgan Stern
					["qg"] = 4794,	-- Morgan Stern
					["coords"] = {
						{ 66.4, 45.4, MAP.DUSTWALLOW_MARSH },
					},
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 33,
					["groups"] = {
						objective(1, {	-- 0/8 Forked Mudrock Tongue
							["provider"] = { "i", 5883 },	-- Forked Mudrock Tongue
							["crs"] = {
								4399,	-- Mudrock Borer
								4398,	-- Mudrock Burrower
								4400,	-- Mudrock Snapjaw
								4397,	-- Mudrock Spikeshell
								4396,	-- Mudrock Tortoise
							},
						}),
					},
				}),
				q(6607, {	-- Nat Pagle, Angler Extreme
					["sourceQuests"] = {
						6609,	-- I Got Nothin' Left!
						6608,	-- You Too Good.
					},
					["qg"] = 12919,	-- Nat Pagle
					["coord"] = { 58.6, 60.0, MAP.DUSTWALLOW_MARSH },
					["maps"] = {
						MAP.FERALAS,
						MAP.SWAMP_OF_SORROWS,
						MAP.DESOLACE,
						MAP.STRANGLETHORN_VALE,
					},
					["requireSkill"] = FISHING,
					["learnedAt"] = 225,
					["lvl"] = 35,
					["groups"] = {
						objective(1, {	-- 0/1 Feralas Ahi
							["provider"] = { "i", 16967 },	-- Feralas Ahi
							["coord"] = { 63.5, 53.6, MAP.FERALAS },
						}),
						objective(2, {	-- 0/1 Misty Reed Mahi Mahi
							["provider"] = { "i", 16970 },	-- Misty Reed Mahi Mahi
							["coord"] = { 94.1, 39.7, MAP.SWAMP_OF_SORROWS },
						}),
						objective(3, {	-- 0/1 Sar'theris Striker
							["provider"] = { "i", 16968 },	-- Sar'theris Striker
							["coords"] = {
								{ 36.2, 32.9, MAP.DESOLACE },
								{ 26.0, 80.1, MAP.DESOLACE },
							},
						}),
						objective(4, {	-- 0/1 Savage Coast Blue Sailfin
							["provider"] = { "i", 16969 },	-- Savage Coast Blue Sailfin
							["coord"] = { 26.3, 67.8, MAP.STRANGLETHORN_VALE },
						}),
						recipe(18248, {	-- Fishing (Artisan)
							["rank"] = 4,
						}),
					},
				}),
				q(1166, {	-- Overlord Mok'Morokk's Concern
					["qg"] = 4500,	-- Overlord Mok'Morokk
					["coord"] = { 36.2, 31.4, MAP.DUSTWALLOW_MARSH },
					["races"] = HORDE_ONLY,
					["lvl"] = 38,
					["groups"] = {
						objective(1, {	-- 0/1 Mok'Morokk's Snuff
							["provider"] = { "i", 5834 },	-- Mok'Morokk's Snuff
							["coord"] = { 44.4, 66.0, MAP.DUSTWALLOW_MARSH },
						}),
						objective(2, {	-- 0/1 Mok'Morokk's Grog
							["provider"] = { "i", 5835 },	-- Mok'Morokk's Grog
							["coord"] = { 38.6, 65.4, MAP.DUSTWALLOW_MARSH },
						}),
						objective(3, {	-- 0/1 Mok'Morokk's Strongbox
							["provider"] = { "i", 5836 },	-- Mok'Morokk's Strongbox
							["coord"] = { 36.6, 69.4, MAP.DUSTWALLOW_MARSH },
						}),
						i(10702),	-- Enormous Ogre Boots
					},
				}),
				q(1273, {	-- Questioning Reethe
					["sourceQuest"] = 1269,	-- Lieutenant Paval Reethe
					["qg"] = 4983,	-- Ogron
					["coord"] = { 40.8, 36.6, MAP.DUSTWALLOW_MARSH },
					["races"] = HORDE_ONLY,
					["lvl"] = 30,
					["groups"] = {
						i(6797),	-- Eyepoker
						i(6798),	-- Blasting Hackbut
					},
				}),
				q(1262, {	-- Report to Zor
					["sourceQuest"] = 1261,	-- Marg Speaks
					["providers"] = {
						{ "n", 4791 },	-- Nazeer Bloodpike
						{ "i", 5942 },	-- Jeweled Pendant
					},
					["coord"] = { 35.2, 30.6, MAP.DUSTWALLOW_MARSH },
					["races"] = HORDE_ONLY,
					["lvl"] = 30,
				}),
				q(11223, {	-- Return to Jaina
					["sourceQuest"] = 11222,	-- Warn Bolvar! / Proof of Treachery [WRATH+]
					["qg"] = 1748,	-- Highlord Bolvar Fordragon
					["coords"] = {
						{ 79.8, 38.6, MAP.STORMWIND_CITY },
					},
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 33,
					["groups"] = {
						i(33269),	-- Bejeweled Dagger
						i(33252),	-- Gleaming Scale Breastplate
						i(33250),	-- Archer's Wristguard
					},
				}),
				q(1953, {	-- Return to the Marsh
					["qgs"] = {
						5885,	-- Deino <Mage Trainer>
						5144,	-- Bink <Mage Trainer>
						5497,	-- Jennea Cannon <Mage Trainer>
						3048,	-- Ursyn Ghull <Mage Trainer>
						4568,	-- Anastasia Hartwell <Mage Trainer>
					},
					["coords"] = {
						{ 38.4, 86.0, MAP.ORGRIMMAR },
						{ 27.0, 8.2, MAP.IRONFORGE },
						{ 49.5, 85.8, MAP.STORMWIND_CITY },
						{ 25.8, 14.4, MAP.THUNDER_BLUFF },
						{ 85.0, 10.2, MAP.UNDERCITY },
					},
					["classes"] = { MAGE },
					["isBreadcrumb"] = true,
					["lvl"] = 35,
				}),
				q(7541, {	-- Service to the Horde
					["sourceQuest"] = 1262,	-- Report to Zor
					["qg"] = 4047,	-- Zor Lonetree
					["coord"] = { 39.0, 38.0, MAP.ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["lvl"] = 30,
					["groups"] = {
						i(18585),	-- Band of Allegiance
						i(18586),	-- Lonetree's Circle
					},
				}),
				q(1218, {	-- Soothing Spices (Classic) / Marsh Frog Legs (TBC+)
					["qg"] = 4792,	-- "Swamp Eye" Jarl
					["coord"] = { 55.4, 26.2, MAP.DUSTWALLOW_MARSH },
					["cost"] = { { "i", 3713, 3 } },	-- Soothing Spices
					["lvl"] = 30,
					["groups"] = { i(6807) },	-- Frog Leg Stew
				}),
				{	-- Stinky's Escape
					["allianceQuestData"] = q(1222),	-- Stinky's Escape [A]
					["hordeQuestData"] = q(1270),	-- Stinky's Escape [H]
					["qg"] = 4880,	-- "Stinky" Ignatz
					["coord"] = { 46.9, 17.5, MAP.DUSTWALLOW_MARSH },
					["lvl"] = 30,
					["groups"] = {
						i(3825),	-- Elixir of Fortitude
					},
				},
				q(11142, {	-- Survey Alcaz Island
					["sourceQuest"] = 11141,	-- Jaina Must Know
					["qg"] = 4968,	-- Lady Jaina Proudmoore <Ruler of Theramore>
					["coord"] = { 66.3, 49.0, MAP.DUSTWALLOW_MARSH },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 33,
				}),
				q(1284, {	-- Suspicious Hoofprints [A]
					["providers"] = {
						{ "o", 21015 },	-- Hoofprints
						{ "o", 21016 },	-- Hoofprints
					},
					["coord"] = { 29.7, 47.7, MAP.DUSTWALLOW_MARSH },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
				}),
				q(1268, {	-- Suspicious Hoofprints [H]
					["providers"] = {
						{ "o", 21015 },	-- Hoofprints
						{ "o", 21016 },	-- Hoofprints
					},
					["coord"] = { 29.7, 47.7, MAP.DUSTWALLOW_MARSH },
					["races"] = HORDE_ONLY,
					["lvl"] = 30,
				}),
				q(1253, {	-- The Black Shield (1/3) [A]
					["providers"] = {
						{ "o", 20992 },	-- Black Shield
						{ "i", 5919 },	-- Blackened Iron Shield (QI!) not prov
					},
					["coord"] = { 29.6, 48.5, MAP.DUSTWALLOW_MARSH },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
				}),
				q(1319, {	-- The Black Shield (2/3) [A]
					["sourceQuest"] = 1253,	-- The Black Shield (1/3) [A]
					["providers"] = {
						{ "n", 4944 },	-- Captain Garran Vimes
						{ "i", 5919 },	-- Blackened Iron Shield (QI!) not prov
					},
					["coord"] = { 68.2, 48.6, MAP.DUSTWALLOW_MARSH },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
				}),
				q(1320, {	-- The Black Shield (3/3) [A]
					["sourceQuest"] = 1319,	-- The Black Shield (2/3) [A]
					["qg"] = 4941,	-- Caz Twosprocket
					["coord"] = { 64.6, 50.4, MAP.DUSTWALLOW_MARSH },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
				}),
				q(1251, {	-- The Black Shield (1/5) [H]
					["providers"] = {
						{ "o", 20992 },	-- Black Shield
						{ "i", 5919 },	-- Blackened Iron Shield (QI!) not prov
					},
					["coord"] = { 29.6, 48.5, MAP.DUSTWALLOW_MARSH },
					["races"] = HORDE_ONLY,
					["lvl"] = 30,
				}),
				q(1321, {	-- The Black Shield (2/5) [H]
					["sourceQuest"] = 1251,	-- The Black Shield (1/5) [H]
					["providers"] = {
						{ "n", 4926 },	-- Krog
						{ "i", 5919 },	-- Blackened Iron Shield (QI!) not prov
					},
					["coord"] = { 36.4, 31.8, MAP.DUSTWALLOW_MARSH },
					["races"] = HORDE_ONLY,
					["lvl"] = 30,
				}),
				q(1322, {	-- The Black Shield (3/5) [H]
					["sourceQuest"] = 1321,	-- The Black Shield (2/5) [H]
					["qg"] = 5087,	-- Do'gol
					["coord"] = { 36.4, 30.8, MAP.DUSTWALLOW_MARSH },
					["races"] = HORDE_ONLY,
					["lvl"] = 30,
					["groups"] = {
						objective(1, {	-- 0/6 Acidic Venom Sac
							["provider"] = { "i", 5959 },	-- Acidic Venom Sac
							["crs"] = {
								4412,	-- Darkfang Creeper
								4411,	-- Darkfang Lurker
								4413,	-- Darkfang Spider
								4414,	-- Darkfang Venomspitter
								4415,	-- Giant Darkfang Spider
								4379,	-- Darkmist Silkspinner
								4376,	-- Darkmist Spider
								4378,	-- Darkmist Recluse
								4380,	-- Darkmist Widow
							},
						}),
					},
				}),
				q(1323, {	-- The Black Shield (4/5) [H]
					["sourceQuest"] = 1322,	-- The Black Shield (3/5) [H]
					["qg"] = 5087,	-- Do'gol
					["coord"] = { 36.4, 30.8, MAP.DUSTWALLOW_MARSH },
					["races"] = HORDE_ONLY,
					["lvl"] = 30,
				}),
				q(1276, {	-- The Black Shield (5/5) [H]
					["sourceQuest"] = 1323,	-- The Black Shield (4/5) [H]
					["providers"] = {
						{ "n", 4926 },	-- Krog
						{ "i", 5919 },	-- Blackened Iron Shield (QI!) not prov
					},
					["coord"] = { 36.4, 31.8, MAP.DUSTWALLOW_MARSH },
					["races"] = HORDE_ONLY,
					["lvl"] = 30,
				}),
				q(1170, {	-- The Brood of Onyxia (1/3)
					["sourceQuest"] = 1169,	-- Identifying the Brood
					["qg"] = 4501,	-- Draz'Zilb
					["coord"] = { 37.0, 33.0, MAP.DUSTWALLOW_MARSH },
					["races"] = HORDE_ONLY,
					["lvl"] = 38,
				}),
				q(1171, {	-- The Brood of Onyxia (2/3)
					["sourceQuest"] = 1170,	-- The Brood of Onyxia (1/3)
					["qg"] = 4500,	-- Overlord Mok'Morokk
					["coord"] = { 36.2, 31.4, MAP.DUSTWALLOW_MARSH },
					["races"] = HORDE_ONLY,
					["lvl"] = 38,
				}),
				q(1172, {	-- The Brood of Onyxia (3/3)
					["sourceQuest"] = 1171,	-- The Brood of Onyxia (2/3)
					["qg"] = 4501,	-- Draz'Zilb
					["coord"] = { 37.0, 33.0, MAP.DUSTWALLOW_MARSH },
					["races"] = HORDE_ONLY,
					["lvl"] = 38,
					["groups"] = {
						objective(1, {	-- 0/5 Egg of Onyxia destroyed
							["provider"] = { "o", 20359 },	-- Egg of Onyxia
						}),
						i(10700),	-- Encarmine Boots
						i(10701),	-- Boots of Zua'tec
					},
				}),
				q(1286, {	-- The Deserters (1/2)
					["sourceQuest"] = 1285,	-- Daelin's Men
					["qg"] = 4944,	-- Captain Garran Vimes
					["coord"] = { 68.2, 48.6, MAP.DUSTWALLOW_MARSH },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
				}),
				q(1287, {	-- The Deserters (2/2)
					["sourceQuest"] = 1286,	-- The Deserters (1/2)
					["qg"] = 5089,	-- Balos Jacken
					["coord"] = { 36.0, 54.2, MAP.DUSTWALLOW_MARSH },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
				}),
				q(1955, {	-- The Exorcism
					["sourceQuest"] = 1954,	-- The Infernal Orb
					["qg"] = 6546,	-- Tabetha
					["coord"] = { 46.0, 57.0, MAP.DUSTWALLOW_MARSH },
					["classes"] = { MAGE },
					["lvl"] = 35,
					["groups"] = {
						objective(1, {	-- 0/1 Demon of the Orb slain
							["provider"] = { "n", 6549 },	-- Demon of the Orb
						}),
					},
				}),
				q(1954, {	-- The Infernal Orb
					["sourceQuest"] = 1953,	-- Return to the Marsh
					["qg"] = 6546,	-- Tabetha
					["coord"] = { 46.0, 57.0, MAP.DUSTWALLOW_MARSH },
					["maps"] = { MAP.DESOLACE },
					["classes"] = { MAGE },
					["lvl"] = 35,
					["groups"] = {
						objective(1, {	-- 0/1 Infernal Orb
							["provider"] = { "i", 7291 },	-- Infernal Orb
							["coord"] = { 55.0, 77.8, MAP.DESOLACE },
							["cr"] = 4668,	-- Burning Blade Summoner
						}),
					},
				}),
				q(1238, {	-- The Lost Report
					["providers"] = {
						{ "o", 20985 },	-- Loose Dirt
						{ "i", 5917 },	-- Spy's Report (QI!) not prov
					},
					["coord"] = { 55.4, 26.0, MAP.DUSTWALLOW_MARSH },
					["races"] = HORDE_ONLY,
					["lvl"] = 30,
				}),
				q(1265, {	-- The Missing Diplomat (14/17)
					["sourceQuest"] = 1264,	-- The Missing Diplomat (13/17)
					["qg"] = 4964,	-- Commander Samaul
					["coord"] = { 68.0, 48.6, MAP.DUSTWALLOW_MARSH },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 28,
				}),
				q(1266, {	-- The Missing Diplomat (15/17)
					["sourceQuest"] = 1265,	-- The Missing Diplomat (14/17)
					["qg"] = 4967,	-- Archmage Tervosh
					["coord"] = { 66.4, 49.3, MAP.DUSTWALLOW_MARSH },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 28,
				}),
				q(1324, {	-- The Missing Diplomat (16/17)
					["sourceQuest"] = 1266,	-- The Missing Diplomat (15/17)
					["qg"] = 4966,	-- Private Hendel
					["coord"] = { 45.2, 24.6, MAP.DUSTWALLOW_MARSH },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 28,
				}),
				q(1267, {	-- The Missing Diplomat (17/17)
					["sourceQuest"] = 1324,	-- The Missing Diplomat (16/17)
					["qg"] = 4968,	-- Lady Jaina Proudmoore
					["coord"] = { 45.2, 24.2, MAP.DUSTWALLOW_MARSH },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 28,
					["groups"] = {
						i(6757),	-- Jaina's Signet Ring
					},
				}),
				q(1219, {	-- The Orc Report
					["providers"] = {
						{ "o", 20985 },	-- Loose Dirt
						{ "i", 5917 },	-- Spy's Report (QI!) not prov
					},
					["coord"] = { 55.4, 26.0, MAP.DUSTWALLOW_MARSH },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
				}),
				q(1239, {	-- The Severed Head
					["sourceQuest"] = 1238,	-- The Lost Report
					["providers"] = {
						{ "o", 20985 },	-- Loose Dirt
						{ "i", 5918 },	-- Defiant Orc Head
					},
					["coord"] = { 55.4, 26.0, MAP.DUSTWALLOW_MARSH },
					["races"] = HORDE_ONLY,
					["lvl"] = 30,
				}),
				q(1202, {	-- The Theramore Docks
					["sourceQuest"] = 1201,	-- Theramore Spies
					["qg"] = 4791,	-- Nazeer Bloodpike
					["coord"] = { 35.2, 30.6, MAP.DUSTWALLOW_MARSH },
					["races"] = HORDE_ONLY,
					["lvl"] = 30,
					["groups"] = {
						objective(1, {	-- 0/1 Captain's Documents
							["provider"] = { "i", 5882 },	-- Captain's Documents
							["coord"] = { 71.5, 51.1, MAP.DUSTWALLOW_MARSH },
						}),
					},
				}),
				q(1240, {	-- The Troll Witchdoctor
					["sourceQuest"] = 1239,	-- The Severed Head
					["providers"] = {
						{ "n", 4791 },	-- Nazeer Bloodpike
						{ "i", 5918 },	-- Defiant Orc Head
					},
					["coord"] = { 35.2, 30.6, MAP.DUSTWALLOW_MARSH },
					["maps"] = { MAP.STRANGLETHORN_VALE },
					["races"] = HORDE_ONLY,
					["lvl"] = 30,
				}),
				q(1201, {	-- Theramore Spies
					["qg"] = 4791,	-- Nazeer Bloodpike
					["coord"] = { 35.2, 30.6, MAP.DUSTWALLOW_MARSH },
					["races"] = HORDE_ONLY,
					["lvl"] = 30,
					["groups"] = {
						objective(1, {	-- 0/9 Theramore Infiltrator slain
							["provider"] = { "n", 4834 },	-- Theramore Infiltrator
						}),
					},
				}),
				q(1282, {	-- They Call Him Smiling Jim
					["altQuests"] = { 1302 },	-- James Hyal (2/2)
					["qg"] = 4921,	-- Guard Byron
					["coord"] = { 66.0, 46.0, MAP.DUSTWALLOW_MARSH },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
				}),
				q(6624, {	-- Triage [A]
					["description"] =
						"Needs a minimum of 225 skill in First Aid.",
					["sourceQuest"] = 6625,	-- Alliance Trauma
					["qg"] = 12939,	-- Doctor Gustaf VanHowzen
					["coord"] = { 67.7, 48.9, MAP.DUSTWALLOW_MARSH },
					["requireSkill"] =
						FIRST_AID,
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 35,
					["groups"] = {
						objective(1, {	-- 0/15 Patients Saved
							["provider"] = { "i", 16991 },	-- Triage Bandage
							["crs"] = {
								12936,	-- Badly Injured Alliance Soldier
								12937,	-- Critically Injured Alliance Soldier
								12938,	-- Injured Alliance Soldier
							},
						}),
						recipe(10846, {	-- First Aid (Artisan)
							["rank"] = 4,
						}),
					},
				}),
			}),
			n(RARES, {
				n(4339, {	-- Brimgore
					["coords"] = {
						{ 41.2, 75.2, MAP.DUSTWALLOW_MARSH },
						{ 43.6, 77.4, MAP.DUSTWALLOW_MARSH },
						{ 45.2, 81.8, MAP.DUSTWALLOW_MARSH },
					},
				}),
				n(14230, {	-- Burgle Eye
					["coords"] = {
						{ 63.0, 7.2, MAP.DUSTWALLOW_MARSH },
						{ 59.6, 10.6, MAP.DUSTWALLOW_MARSH },
						{ 57.6, 17.6, MAP.DUSTWALLOW_MARSH },
						{ 62.8, 18.4, MAP.DUSTWALLOW_MARSH },
						{ 64.4, 28.6, MAP.DUSTWALLOW_MARSH },
					},
				}),
				n(4380, {	-- Darkmist Widow
					["coords"] = {
						{ 31.0, 20.6, MAP.DUSTWALLOW_MARSH },
					},
				}),
				n(14232, {	-- Dart
					["coords"] = {
						{ 47.6, 18.6, MAP.DUSTWALLOW_MARSH },
					},
				}),
				n(14231, {	-- Drogoth the Roamer
					["coords"] = {
						{ 36.2, 13.6, MAP.DUSTWALLOW_MARSH },
						{ 39.4, 14.4, MAP.DUSTWALLOW_MARSH },
						{ 39.6, 21.2, MAP.DUSTWALLOW_MARSH },
						{ 42.2, 18.8, MAP.DUSTWALLOW_MARSH },
						{ 42.8, 22.0, MAP.DUSTWALLOW_MARSH },
					},
				}),
				n(14234, {	-- Hayoc
					["coords"] = {
						{ 54.8, 60.0, MAP.DUSTWALLOW_MARSH },
						{ 52.0, 63.6, MAP.DUSTWALLOW_MARSH },
						{ 52.0, 65.4, MAP.DUSTWALLOW_MARSH },
						{ 53.6, 66.2, MAP.DUSTWALLOW_MARSH },
						{ 55.6, 67.8, MAP.DUSTWALLOW_MARSH },
					},
				}),
				n(14236, {	-- Lord Angler
					["coords"] = {
						{ 55.8, 64.6, MAP.DUSTWALLOW_MARSH },
					},
				}),
				n(14237, {	-- Oozeworm
					["coords"] = {
						{ 39.8, 62.6, MAP.DUSTWALLOW_MARSH },
						{ 36.6, 62.6, MAP.DUSTWALLOW_MARSH },
						{ 36.0, 68.4, MAP.DUSTWALLOW_MARSH },
					},
				}),
				n(14233, {	-- Ripscale
					["coords"] = {
						{ 37.8, 50.4, MAP.DUSTWALLOW_MARSH },
						{ 43.8, 50.2, MAP.DUSTWALLOW_MARSH },
						{ 42.6, 55.4, MAP.DUSTWALLOW_MARSH },
						{ 47.6, 54.8, MAP.DUSTWALLOW_MARSH },
						{ 50.0, 57.6, MAP.DUSTWALLOW_MARSH },
					},
				}),
				n(14235, {	-- The Rot
					["coords"] = {
						{ 51.2, 50.8, MAP.DUSTWALLOW_MARSH },
						{ 52.6, 51.6, MAP.DUSTWALLOW_MARSH },
						{ 53.6, 54.2, MAP.DUSTWALLOW_MARSH },
						{ 52.2, 57.4, MAP.DUSTWALLOW_MARSH },
						{ 52.0, 60.4, MAP.DUSTWALLOW_MARSH },
					},
				}),
			}),
			n(VENDORS, {
				n(13476, {	-- Balai Lok'Wein <Potions, Scrolls and Reagents>
					["coord"] = { 36.4, 30.4, MAP.DUSTWALLOW_MARSH, },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(16084, {	-- Expert First Aid - Under Wraps (RECIPE!)
							["rank"] = 3,
						}),
						i(16112),	-- Manual: Heavy Silk Bandage (RECIPE!)
						i(16113),	-- Manual: Mageweave Bandage (RECIPE!)
					},
				}),
				n(6567, {	-- Ghok'kah <Tailoring Supplies>
					["coord"] = { 35.2, 30.8, MAP.DUSTWALLOW_MARSH, },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(4355, {	-- Pattern: Icy Cloak (RECIPE!)
							["isLimited"] = true,
						}),
					},
				}),
				n(4885, {	-- Gregor MacVince <Horse Breeder>
					["coord"] = { 65.2, 51.4, MAP.DUSTWALLOW_MARSH },

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
						i(5656),	-- Brown Horse (MOUNT!)
						i(5655),	-- Chestnut Mare (MOUNT!)
						i(2414),	-- Pinto (MOUNT!)
						i(18777),	-- Swift Brown Steed (MOUNT!)
						i(18776),	-- Swift Palomino (MOUNT!)
						i(18778),	-- Swift White Steed (MOUNT!)
					},
				}),
				n(4886, {	-- Hans Weston <Armorer & Weaponsmith>
					["coord"] = { 64.6, 50.4, MAP.DUSTWALLOW_MARSH },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(12248, {	-- Daring Dirk
							["isLimited"] = true,
						}),
						i(12250, {	-- Midnight Axe
							["isLimited"] = true,
						}),
					},
				}),
				n(4897, {	-- Helenia Olden <Trade Supplies>
					["coord"] = { 66.4, 51.4, MAP.DUSTWALLOW_MARSH },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(5789, {	-- Pattern: Murloc Scale Bracers (RECIPE!)
							["isLimited"] = true,
						}),
						i(12239),	-- Recipe: Dragonbreath Chili (RECIPE!)
						i(12233),	-- Recipe: Mystery Stew (RECIPE!)
						i(12228),	-- Recipe: Roast Raptor (RECIPE!)
					},
				}),
				n(4892, {	-- Jensen Farran <Hunter Trainer & Bowyer> [CATA+] / <Bowyer>
					["coord"] = { 67.8, 49.8, MAP.DUSTWALLOW_MARSH },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(11305, {	-- Dense Shortbow
							["isLimited"] = true,
						}),
					},
				}),
				n(4888, {	-- Marie Holdston <Weaponsmith> / <Blacksmithing Trainer> [CATA+]
					["coord"] = { 64.6, 50.0, MAP.DUSTWALLOW_MARSH, },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(12248, {	-- Daring Dirk
							["isLimited"] = true,
						}),
						i(12250, {	-- Midnight Axe
							["isLimited"] = true,
						}),
					},
				}),
				n(12919, {	-- Nat Pagle
					["sourceQuest"] = 8227,	-- Nat's Measuring Tape
					["coord"] = { 58.6, 60.1, MAP.DUSTWALLOW_MARSH },
					["description"] = "He will only sell you the Mudskunk Lures once you have turned in Nat's Measuring Tape.",
					["groups"] = {
						i(19974),	-- Mudskunk Lure
					},
				}),
				n(4879, {	-- Ogg'marr <Butcher>
					["coord"] = { 36.6, 31.0, MAP.DUSTWALLOW_MARSH },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(12232),	-- Recipe: Carrion Surprise (RECIPE!)
						i(12239),	-- Recipe: Dragonbreath Chili (RECIPE!)
						i(20075),	-- Recipe: Heavy Crocolisk Stew (RECIPE!)
						i(12228),	-- Recipe: Roast Raptor (RECIPE!)
					},
				}),
				n(4890, {	-- Piter Verance <Weaponsmith & Armorer>
					["coord"] = { 67.4, 47.9, MAP.DUSTWALLOW_MARSH },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(4817, {	-- Blessed Claymore
							["isLimited"] = true,
						}),
						i(4824, {	-- Blurred Axe
							["isLimited"] = true,
						}),
						i(4825, {	-- Callous Axe
							["isLimited"] = true,
						}),
						i(4818, {	-- Executioner's Sword
							["isLimited"] = true,
						}),
						i(4826, {	-- Marauder Axe
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
						i(4833, {	-- Glorious Shoulders
							["isLimited"] = true,
						}),
						i(4835, {	-- Elite Shoulders
							["isLimited"] = true,
						}),
					},
				}),
				n(9552, {	-- Zanara <Bowyer>
					["coord"] = { 35.6, 30.2, MAP.DUSTWALLOW_MARSH, },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(11305, {	-- Dense Shortbow
							["isLimited"] = true,
						}),
					},
				}),
				n(4884, {	-- Zulrg <Weaponsmith>
					["coord"] = { 36.2, 31.6, MAP.DUSTWALLOW_MARSH, },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(12251, {	-- Big Stick
							["isLimited"] = true,
						}),
						i(12250, {	-- Midnight Axe
							["isLimited"] = true,
						}),
					},
				}),
			}),
			n(ZONE_DROPS, {
				i(10822, {	-- Dark Whelpling (PET!)
					["crs"] = {
						4324,	-- Searing Whelp
					},
				}),
				i(4639, {	-- Enchanted Sea Kelp
					["cr"] = 4363,	-- Mirefin Oracle
				}),
				i(5775, {	-- Pattern: Black Silk Pack (RECIPE!)
					["cr"] = 4834,	-- Theramore Infiltrator
				}),
				i(12718, {	-- Plans: Runic Breastplate (RECIPE!)
					["timeline"] = { ADDED_1_11_1 },
					["crs"] = {
						4368,	-- Strashaz Myrmidon
						16072,	-- Tidelord Rrurgaz
					},
				}),
				i(12714, {	-- Plans: Runic Plate Helm (RECIPE!)
					["cr"] = 4364,	-- Strashaz Warrior
				}),
				i(12706, {	-- Plans: Runic Plate Shoulders (RECIPE!)
					["cr"] = 4366,	-- Strashaz Serpent Guard
				}),
				i(20766, {	-- Slimy Bag
					["crs"] = {
						4393,	-- Acidic Swamp Ooze
						4392,	-- Corrosive Swamp Ooze
						4391,	-- Swamp Ooze
					},
				}),
			}),
		},
	}),
}));
