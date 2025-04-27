---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(KALIMDOR, {
	m(DESOLACE, {
		["lore"] =
			-- #if AFTER CATA
			"Desolace used to be a barren zone, primarily populated by centaur tribes. Post-Shattering, the Cenarion Circle has begun to heal the land, leading to regrowth in the center of Desolace.",
			-- #else
			"Centaur control this rugged wilderness. Desolace is a land of craggy rock faces and stormy skies, and the rampaging centaur let no other race survive. Five centaur tribes strike from individual strongholds, but the great fortress of Maraudon occasionally plays host to them all.",
			-- #endif
		["icon"] = 236742,
		["groups"] = {
			n(ACHIEVEMENTS, {
				ach(4930, {	-- Desolace Quests
					["timeline"] = { ADDED_4_0_3 },
					-- #if ANYCLASSIC
					["sourceQuests"] = {
						14302,	-- Official Assessment
						14309,	-- Calming the Kodo
						14327,	-- My Word is My Bond (verify if this chain is part of this criteria or Uniting The Tribes)
						14307,	-- Stubborn Winds
						14381,	-- Cleaning Our Crevasse
						14346,	-- Cleansing Our Crevasse
						14394,	-- Death to Agogridon
						1456,	-- The Karnitol Shipwreck (3/4)
						14335,	-- Chipping In
						14342,	-- Infernal Encroachment
						5581,	-- Portals of the Legion
						14227,	-- Putting Their Heads Together
						14198,	-- Rider on the Storm
					},
					-- #endif
				}),
				explorationAch(848),	-- Explore Desolace
			}),
			battlepets({
				["sym"] = {{"select","speciesID",
					838,	-- Amethyst Shale Hatchling (PET!)
					479,	-- Elfin Rabbit (PET!)
					478,	-- Forest Moth (PET!)
					417,	-- Rat (PET!)
					452,	-- Red-Tailed Chipmunk (PET!)
					424,	-- Roach (PET!)
					419,	-- Small Frog (PET!)
				}},
				["groups"] = {
					pet(484),	-- Desert Spider (PET!)
					pet(483),	-- Horny Toad (PET!)
					pet(482),	-- Rock Viper (PET!)
					pet(485, {	-- Stone Armadillo (PET!)
						["description"] =
							-- #if BEFORE 5.1.0
							"Found in the southeastern area of Desolace. It only spawns during the night between 6:30pm to 6:30am realm time.",
							-- #else
							"Found in the southeastern area of Desolace. It only spawns during the night between 6:30pm to 6:30am PST(US)/CEST(EU)/AEST(OCE).",
							-- #endif
					}),
					pet(480, {	-- Topaz Shale Hatchling (PET!)
						["description"] = "The biggest concentration can be found in Desolace, the orange section of open world Maraudon. Can also be found in Deepholm around Therazane's Throne, beneath Silvermarsh, as well as inside Fungal Deep.",
						["coords"] = {
							{ 26.8, 43.5, DESOLACE },	-- Maraudon entrance
							{ 69.4, 68.2, DEEPHOLM },	-- Cavern beneath Silvermarsh
							{ 68.6, 28.5, DEEPHOLM },	-- Fungal Deep cavern entrance
							{ 57.0, 13.2, DEEPHOLM },	-- Therazane's Throne
						},
					}),
				},
			}),
			explorationHeader({
				-- #if AFTER CATA
				exploration(4804),	-- Cenarion Wildlands
				-- #endif
				visit_exploration(2405,{coord={41.6,29.8,DESOLACE}}),	-- Ethel Rethor
				-- #if AFTER CATA
				exploration(4803),	-- Furien's Post
				-- #endif
				exploration(606),	-- Gelkis Village
				exploration(596),	-- Kodo Graveyard
				-- #if BEFORE CATA
				exploration(609),	-- Kolkar Village
				exploration(2407),	-- Kormek's Hut
				-- #endif
				-- #if AFTER CATA
				exploration(4797),	-- Magram Territory
				-- #endif
				-- #if BEFORE CATA
				exploration(604),	-- Magram Village / Shok'Thokar [CATA+]
				-- #endif
				exploration(602),	-- Mannoroc Coven
				visit_exploration(2100,{coord={29.4,62.3,DESOLACE}}),	-- Maraudon
				exploration(608),	-- Nijel's Point
				exploration(2406),	-- Ranazjar Isle
				exploration(603),	-- Sargeron
				exploration(2198),	-- Shadowbreak Ravine
				exploration(2408),	-- Shadowprey Village
				-- #if AFTER CATA
				visit_exploration(604,{coord={66.0,76.7,DESOLACE}}),	-- Shok'Thokar [CATA+] / Magram Village
				exploration(4796),	-- Slitherblade Shore
				-- #endif
				exploration(2404),	-- Tethris Aran
				-- #if AFTER CATA
				exploration(4798),	-- Thargad's Camp
				-- #endif
				exploration(599),	-- Thunder Axe Fortress
				-- #if AFTER CATA
				exploration(2657),	-- Valley of Bones
				-- #endif
				exploration(607),	-- Valley of Spears
			}),
			n(FACTIONS, {
				faction(FACTION_GELKIS_CLAN_CENTAUR, {	-- Gelkis Clan Centaur
					["icon"] = 134151,
					-- #if AFTER CATA
					-- #if ANYCLASSIC
					-- CRIEVE NOTE: Blizzard included the rep update with Cata instead of making us wait until 8.0.1. :)
					["sourceQuest"] = 14394,	-- Death to Agogridon
					-- #else
					-- #if AFTER 8.0.1
					["sourceQuest"] = 14394,	-- Death to Agogridon
					-- #endif
					["timeline"] = { REMOVED_4_0_3, ADDED_8_0_1 },
					-- #endif
					-- #else
					["minReputation"] = { FACTION_GELKIS_CLAN_CENTAUR, HONORED },	-- Gelkis Clan Centaur, must be Honored.
					["maxReputation"] = { FACTION_MAGRAM_CLAN_CENTAUR, HONORED },	-- Magram Clan Centaur, must be lower than Honored.
					["OnTooltip"] = [[_.OnTooltipDB.DesolaceCentaurs]],
					-- #endif
				}),
				faction(FACTION_MAGRAM_CLAN_CENTAUR, {	-- Magram Clan Centaur
					["icon"] = 134151,
					-- #if AFTER CATA
					-- #if ANYCLASSIC
					-- CRIEVE NOTE: Blizzard included the rep update with Cata instead of making us wait until 8.0.1. :)
					["sourceQuest"] = 14394,	-- Death to Agogridon
					-- #else
					-- #if AFTER 8.0.1
					["sourceQuest"] = 14394,	-- Death to Agogridon
					-- #endif
					["timeline"] = { REMOVED_4_0_3, ADDED_8_0_1 },
					-- #endif
					-- #else
					["minReputation"] = { FACTION_MAGRAM_CLAN_CENTAUR, HONORED },	-- Magram Clan Centaur, must be Honored.
					["maxReputation"] = { FACTION_GELKIS_CLAN_CENTAUR, HONORED },	-- Gelkis Clan Centaur, must be lower than Honored.
					["OnTooltip"] = [[_.OnTooltipDB.DesolaceCentaurs]],
					-- #endif
				}),
			}),
			n(FLIGHT_PATHS, {
				fp(370, {	-- Ethel Rethor, Desolace
					["cr"] = 35562,	-- Korrah's Hippogryph <Flight Master>
					["coord"] = { 39.1, 26.9, DESOLACE },
					["timeline"] = { ADDED_4_0_3 },
				}),
				fp(366, {	-- Furien's Post, Desolace
					["cr"] = 35315,	-- Narimar <Flight Master>
					["coord"] = { 44.2, 29.6, DESOLACE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				fp(368, {	-- Karnum's Glade, Desolace
					["cr"] = 35478,	-- Lastrea Greengale <Flight Master>
					["coord"] = { 57.7, 49.7, DESOLACE },
					["timeline"] = { ADDED_4_0_3 },
				}),
				fp(37, {	-- Nijel's Point, Desolace
					["cr"] = 6706,	-- Baritanas Skyriver <Hippogryph Master>
					["coord"] = { 64.7, 10.5, DESOLACE },
					["races"] = ALLIANCE_ONLY,
				}),
				fp(38, {	-- Shadowprey Village, Desolace
					["cr"] = 6726,	-- Thalon <Wind Rider Master>
					["coord"] = { 21.6, 74.0, DESOLACE },
					["races"] = HORDE_ONLY,
				}),
				fp(367, {	-- Thargad's Camp, Desolace
					["cr"] = 35481,	-- Moira Steelwing <Gryphon Master>
					["coord"] = { 36.8, 71.7, DESOLACE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				fp(369, {	-- Thunk's Abode, Desolace
					["cr"] = 35556,	-- Thunk's Wyvern <Flight Master>
					["coord"] = { 70.7, 32.9, DESOLACE },
					["timeline"] = { ADDED_4_0_3 },
				}),
			}),
			n(PROFESSIONS, {
				prof(FISHING, {
					o(180685),	-- Waterlogged Wreckage
				}),
			}),
			n(QUESTS, {
				q(14284, {	-- A Revenant's Vengeance
					["qg"] = 35902,	-- Lord Hydronis
					["sourceQuest"] = 14292,	-- The Enemy of Our Enemy
					["coord"] = { 29.1, 8.1, DESOLACE },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/1 Valishj Slain
							["provider"] = { "n", 35898 },	-- Valishj
						}),
					},
				}),
				q(14305, {	-- A Time to Reap
					["qg"] = 36060,	-- Botanist Ferrah
					["coord"] = { 58.6, 48.7, DESOLACE },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/10 Aloe Thistle
							["providers"] = {
								{ "i", 49140 },	-- Aloe Thistle
								{ "o", 195674 },	-- Aloe Thistle
							},
						}),
					},
				}),
				q(14195, {	-- All Becoming Clearer
					["sourceQuest"] = 14360,	-- Nothing a Couple of Melons Won't Fix
					["coord"] = { 77.0, 18.0, DESOLACE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				q(1431, {	-- Alliance Relations (1/4)
					["qg"] = 5639,	-- Craven Drok
					["coord"] = { 49.8, 47.8, ORGRIMMAR },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 30,
				}),
				q(1432, {	-- Alliance Relations (2/4)
					["qg"] = 5640,	-- Keldran
					["sourceQuest"] = 1431,	-- Alliance Relations (1/4)
					["coord"] = { 22.4, 52.8, ORGRIMMAR },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 30,
				}),
				q(1433, {	-- Alliance Relations (3/4)
					["qg"] = 5641,	-- Takata Steelblade
					["sourceQuest"] = 1432,	-- Alliance Relations (2/4)
					["coord"] = { 52.6, 54.2, DESOLACE },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["lvl"] = 30,
				}),
				q(1436, {	-- Alliance Relations (4/4)
					["qg"] = 5641,	-- Takata Steelblade
					["sourceQuests"] = {
						1434,	-- Befouled by Satyr
						1435,	-- The Burning of Spirits
					},
					["coord"] = { 52.6, 54.2, DESOLACE },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["lvl"] = 30,
					["groups"] = {
						i(6744, {	-- Gloves of Kapelan
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(6745, {	-- Swiftrunner Cape
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(14380, {	-- An Impactful Discovery
					["qg"] = 36329,	-- Thargad
					["sourceQuest"] = 14378,	-- Hunting Brendol
					["coord"] = { 36.7, 71.2, DESOLACE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(14312, {	-- An Introduction Is In Order (is this chain part of Karnum's Glade or Uniting the Tribes?)
					["qg"] = 36052,	-- Garren Darkwind
					["sourceQuest"] = 14311,	-- Taking Part
					["coord"] = { 58.4, 49.8, DESOLACE },
					["timeline"] = { ADDED_4_0_3 },
				}),
				q(1386, {	-- Assault on the Kolkar
					["qg"] = 5398,	-- Warug
					["sourceQuest"] = 1385,	-- Brutal Politics
					["minReputation"] = { FACTION_MAGRAM_CLAN_CENTAUR, FRIENDLY },	-- Magram Clan Centaur, Friendly.
					["coord"] = { 74.8, 68.0, DESOLACE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,	-- TODO: Double check that this is only Alliance Only
					["lvl"] = 30,
					["groups"] = {
						objective(1, {	-- 0/12 Kolkar Centaur slain
							["provider"] = { "n", 4632 },	-- Kolkar Centaur
						}),
						objective(2, {	-- 0/12 Kolkar Scout slain
							["provider"] = { "n", 4633 },	-- Kolkar Scout
						}),
						objective(3, {	-- 0/6 Kolkar Mauler slain
							["provider"] = { "n", 4634 },	-- Kolkar Mauler
						}),
					},
				}),
				q(14188, {	-- Avenge Furien!
					["qg"] = 35295,	-- Cerelia
					["sourceQuest"] = 14184,	-- My Time Has Passed
					["coord"] = { 44.6, 29.4, DESOLACE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				q(1434, {	-- Befouled by Satyr
					["qg"] = 5641,	-- Takata Steelblade
					["sourceQuest"] = 1432,	-- Alliance Relations (2/4)
					["coord"] = { 52.6, 54.2, DESOLACE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 25,
					["groups"] = {
						objective(1, {	-- 0/7 Hatefury Rogue slain
							["provider"] = { "n", 4670 },	-- Hatefury Rogue
						}),
						objective(2, {	-- 0/7 Hatefury Felsworn slain
							["provider"] = { "n", 4672 },	-- Hatefury Felsworn
						}),
						objective(3, {	-- 0/7 Hatefury Betrayer slain
							["provider"] = { "n", 4673 },	-- Hatefury Betrayer
						}),
						objective(4, {	-- 0/7 Hatefury Hellcaller slain
							["provider"] = { "n", 4675 },	-- Hatefury Hellcaller
						}),
					},
				}),
				q(14330, {	-- Behind Closed Doors
					["provider"] = { "i", 38567 },	-- Maraudine Prisoner Manifest
					["sourceQuest"] = 14328,	-- Three Princes
					["timeline"] = { ADDED_4_0_3 },
					["crs"] = { 4656 },	-- Maraudine Mauler
				}),
				q(14359, {	-- Blessings From Above
					["provider"] = { "o", 195497 },	-- Elune's Brazier
					["sourceQuest"] = 14358,	-- Ten Pounds of Flesh
					["coord"] = { 78.7, 23.2, DESOLACE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
				}),
				q(14304, {	-- Blood Theory
					["providers"] = {
						{ "n", 36048 },	-- Thressa Amberglen
						{ "i", 49138 },	-- Bottle of Leeches
					},
					["coord"] = { 58.8, 46.4, DESOLACE },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/10 Blood-Filled Leech
							["providers"] = {
								{ "n", 35412 },	-- Rejuvenated Thunder Lizzard
								{ "n", 36059 },	-- Blood-filled Leech
							},
						}),
					},
				}),
				q(14334, {	-- Blubbergut
					["qg"] = 12031,	-- Mai'Lahii
					["sourceQuest"] = 14337,	-- Shadowprey Village
					["coord"] = { 22.6, 71.9, DESOLACE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Blubbergut Slain
							["provider"] = { "n", 36206 },	-- Blubbergut
						}),
						i(55955, {	-- Whalefang's Pendant
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(55956, {	-- Blubber-Stained Grips
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(55957, {	-- Orca-Oiled Spaulders
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(55958, {	-- Orca-Tooth Ring
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(5821, {	-- Bodyguard for Hire
					["qg"] = 11625,	-- Cork Gizelton
					["coord"] = { 40.4, 79.2, DESOLACE },
					["timeline"] = { REMOVED_5_0_4 },
					["lvl"] = 30,
					["groups"] = {
						i(15689, {	-- Trader's Ring
							["timeline"] = { REMOVED_5_0_4 },
						}),
					},
				}),
				q(5501, {	-- Bone Collector
					["qg"] = 11438,	-- Bibbly F'utzbuckle
					["coord"] = { 62.3, 39.0, DESOLACE },
					["lvl"] = lvlsquish(33, 33, 10),
					["groups"] = {
						objective(1, {	-- 0/10 Kodo Bone
							["providers"] = {
								{ "i",  13703 },	-- Kodo Bone
								{ "o", 176751 },	-- Kodo Bones
							},
						}),
						i(15690, {	-- Kodobone Necklace
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(6027, {	-- Book of the Ancients
					["qg"] = 11863,	-- Azore Aldamort <The Argent Dawn>
					["sourceQuest"] = 5741,	-- Sceptre of Light
					["coord"] = { 38.8, 27.2, DESOLACE },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 30,
					["groups"] = {
						objective(1, {	-- 0/1 Book of the Ancients
							["providers"] = {
								{ "i",  15803 },	-- Book of the Ancients
								{ "o", 177673 },	-- Serpent Statue
							},
							["coord"] = { 28.2, 6.4, DESOLACE },
							["cost"] = {{ "i", 15766, 1 }},	-- Gem of the Serpent
							["cr"] = 12369,	-- Lord Kragaru
						}),
						i(16791, {	-- Silkstream Cuffs
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(16793, {	-- Arcmetal Shoulders
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(14314, {	-- Breakout!
					["qg"] = 36056,	-- Khan Leh'Prah
					["sourceQuest"] = 14312,	-- An Introduction is in Order
					["coord"] = { 58.3, 50.1, DESOLACE },
					["timeline"] = { ADDED_4_0_3 },
				}),
				q(1369, {	-- Broken Tears
					["qg"] = 5398,	-- Warug
					["sourceQuests"] = {
						1386,	-- Assault on the Kolkar
						1367,	-- Magram Alliance
					},
					["minReputation"] = { FACTION_MAGRAM_CLAN_CENTAUR, FRIENDLY },	-- Magram Clan Centaur, Friendly.
					["coord"] = { 74.8, 68.0, DESOLACE },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 30,
					["groups"] = {
						objective(1, {	-- 0/3 Broken Tears
							["providers"] = {
								{ "i",  6083 },	-- Broken Tears
								{ "o", 22246 },	-- Tear of Theradras
							},
							["crs"] = {
								4649,	-- Gelkis Windchaser
								4651,	-- Gelkis Earthcaller
								4661,	-- Gelkis Rumbler
							},
						}),
					},
				}),
				q(6141, {	-- Brother Anton
					["qg"] = 12336,	-- Brother Crowley
					["coord"] = { 42.4, 24.4, STORMWIND_CITY },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 34,
				}),
				q(1385, {	-- Brutal Politics
					["qg"] = 5396,	-- Captain Pentigast
					-- #if BEFORE 4.0.3
					["description"] = "Once you complete 'Khan Hratha' for the Gelkis Clan, you can accept and start working on this quest. Bare in mind that it is quite-the-grind to get back to Friendly. Best of luck to you!",
					-- #endif
					["coord"] = { 66.7, 11.0, DESOLACE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
				}),
				q(14309, {	-- Calming the Kodo
					["qg"] = 36048,	-- Thressa Amberglen
					["sourceQuest"] = 14304,	-- Blood Theory
					["coord"] = { 58.8, 46.4, DESOLACE },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						i(55904, {	-- The Tranquilizer
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(55902, {	-- Kodo-Wrangler Cover
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(55903, {	-- Dusty Lasso
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131344, {	-- Kodo Lead Chain
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(5386, {	-- Catch of the Day
					["qg"] = 11259,	-- Nataka Longhorn
					["coord"] = { 55.4, 55.8, DESOLACE },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = {{ "i", 13546, 2 }},	-- Bloodbelly Fish
					["races"] = HORDE_ONLY,
					["lvl"] = 32,
					-- #if BEFORE 4.0.3
					["groups"] = {
						i(3858),	-- Mithril Ore
						i(4304),	-- Thick Leather
						i(4338),	-- Mageweave Cloth
					},
					-- #endif
				}),
				q(14316, {	-- Cenarion Property
					["qg"] = 36052,	-- Garren Darkwind
					["sourceQuest"] = 14312,	-- An Introduction is in Order
					["coord"] = { 58.4, 49.8, DESOLACE },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/7 Cenarion Supply Crate
							["providers"] = {
								{ "i", 49164 },	-- Cenarion Supply Crate
								{ "o", 195692 },	-- Cenarion Supply Crate
							},
						}),
					},
				}),
				q(1387, {	-- Centaur Bounty [A]
					["qg"] = 5752,	-- Corporal Melkins
					["coord"] = { 66.7, 10.9, DESOLACE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
					["groups"] = {
						objective(1, {	-- 0/15 Centaur Ear
							["provider"] = { "i", 6067 },	-- Centaur Ear
							["crs"] = {
								4636,	-- Kolkar Battle Lord
								4632,	-- Kolkar Centaur
								4637,	-- Kolkar Destroyer
								4634,	-- Kolkar Mauler
								4633,	-- Kolkar Scout
								4633,	-- Kolkar Scout
								4635,	-- Kolkar Windchaser
							},
						}),
						i(6790, {	-- Ring of Calm
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(1366, {	-- Centaur Bounty [H]
					["qg"] = 5395,	-- Felgur Twocuts
					["sourceQuest"] = 1365,	-- Khan Dez'hepah
					["coord"] = { 56.2, 59.4, DESOLACE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 30,
					["groups"] = {
						objective(1, {	-- 0/15 Centaur Ear
							["provider"] = { "i", 6067 },	-- Centaur Ear
							["crs"] = {
								4636,	-- Kolkar Battle Lord
								4632,	-- Kolkar Centaur
								4637,	-- Kolkar Destroyer
								4634,	-- Kolkar Mauler
								4633,	-- Kolkar Scout
								4633,	-- Kolkar Scout
								4635,	-- Kolkar Windchaser
							},
						}),
						i(6780, {	-- Lilac Sash
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(6784, {	-- Braced Handguards
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(14335, {	-- Chipping In
					["qg"] = 11624,	-- Taiga Wisemane
					["sourceQuests"] = {
						14334,	-- Blubbergut
						5421,	-- Fish in a Bucket
					},
					["coord"] = { 25.8, 68.2, DESOLACE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/5 Drysnap Pincers slain
							["provider"] = { "n", 11563 },	-- Drysnap Pincer
						}),
						objective(2, {	-- 0/5 Drysnap Crawlers slain
							["provider"] = { "n", 11562 },	-- Drysnap Crawler
						}),
						i(55959, {	-- Coven Battleaxe
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(55960, {	-- Carapace Robes
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(55961, {	-- Ghost Walker Treads
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131348, {	-- Lob Stompers
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(6161, {	-- Claim Rackmore's Treasure!
					["providers"] = {
						{ "o", 177787 },	-- Rackmore's Log
						{ "o", 177786 },	-- Rackmore's Chest
					},
					["coord"] = { 36.1, 30.4, DESOLACE },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 30,
					["groups"] = {
						objective(1, {	-- 0/1 Rackmore's Silver Key
							["provider"] = { "i", 15878 },	-- Rackmore's Silver Key
							["crs"] = {
								11562,	-- Drysnap Crawler
								11563,	-- Drysnap Pincer
							},
						}),
						objective(2, {	-- 0/1 Rackmore's Golden Key
							["provider"] = { "i", 15881 },	-- Rackmore's Golden Key
							["crs"] = {
								14229,	-- Accursed Slitherblade
								4714,	-- Slitherblade Myrmidon
								4711,	-- Slitherblade Naga
								4718,	-- Slitherblade Oracle
								4715,	-- Slitherblade Razortail
								4719,	-- Slitherblade Sea Witch
								4712,	-- Slitherblade Sorceress
								4716,	-- Slitherblade Tidehunter
								4713,	-- Slitherblade Warrior
							},
						}),
						i(16788, {	-- Captain Rackmore's Wheel
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(16789, {	-- Captain Rackmore's Tiller
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(6142, {	-- Clam Bait
					["qg"] = 12031,	-- Mai'Lahii
					["coord"] = { 22.6, 72, DESOLACE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 31,
					["groups"] = {
						objective(1, {	-- 0/10 Soft-shelled Clam Meat
							["providers"] = {
								{ "i",  15924 },	-- Soft-shelled Clam Meat
								{ "i",  15874 },	-- Soft-shelled Clam
								{ "o", 177784 },	-- Giant Softshell Clam
							},
							["cr"] = 12347,	-- Enraged Reef Crawler
						}),
						i(15585, {	-- Pardoc Grips
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(15587, {	-- Ringtail Girdle
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(15588, {	-- Bracesteel Belt
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(14381, {	-- Cleansing Our Crevasse (A)
					["qg"] = 36034,	-- Karnum Marshweaver
					["sourceQuest"] = 14380,	-- An Impactful Discovery
					["coord"] = { 57.5, 47.7, DESOLACE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Grimfeather Mounted
							["provider"] = { "n", 36232 },	-- Grimfeather
						}),
						i(55918, {	-- Leggings of the Windy Ravine
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(55919, {	-- Craggy Handgrips
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(55920, {	-- Marshweaver's Wristguards
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131353, {	-- Windwhipped Grips
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(14346, {	-- Cleansing Our Crevasse (H)
					["qg"] = 36034,	-- Karnum Marshweaver
					["sourceQuest"] = 14343,	-- Maurin's Concoction
					["coord"] = { 57.5, 47.7, DESOLACE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Grimfeather Mounted
							["provider"] = { "n", 36232 },	-- Grimfeather
						}),
						i(55921, {	-- Leggings of the Windy Ravine
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(55922, {	-- Craggy Handgrips
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(55923, {	-- Marshweaver's Wristguards
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131349, {	-- Windwhipped Grips
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(14394, {	-- Death to Agogridon
					["qg"] = 36398,	-- Khan Leh'Prah
					["sourceQuest"] = 14393,	-- Into the Fray!
					["coord"] = { 72.3, 67.4, DESOLACE },
					["timeline"] = { ADDED_4_0_3 },
					["description"] = "If you completed this quest prior to 8.0.1, go to Karnum's Glade and speak with Karnum Marshweaver (57.4, 47.6) and he'll grant you the rep.\n\n - Crieve",
					["groups"] = {
						objective(1, {	-- 0/1 Agogridon Defeated
							["provider"] = { "n", 36442 },	-- Agogridon
						}),
						i(55915, {	-- Cutlass of Agogridon
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(55916, {	-- Soulstar Mace
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(55917, {	-- Kolkar Cleaver
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(156968, {	-- Kolkar Polearm
							["timeline"] = { ADDED_7_3_5 },
						}),
					},
				}),
				q(14268, {	-- Deep Impact
					["qg"] = 35827,	-- Valishj
					["sourceQuest"] = 14264,	-- Wetter than Wet
					["coord"] = { 30.9, 30.9, DESOLACE },
					["timeline"] = { ADDED_4_0_3 },
				}),
				q(14318, {	-- Delicate Negotiations
					["qg"] = 36056,	-- Khan Leh'Prah
					["sourceQuests"] = {
						14314,	-- Breakout!
						14316,	-- Cenarion Property
					},
					["coord"] = { 58.3, 50.1, DESOLACE },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						i(55909, {	-- Drape of Centaur Dreams
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(55910, {	-- Defiant Spire Shoulderguard
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131345, {	-- Rebellious Epaulets
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(55911, {	-- Stubborn Legguards
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(14339, {	-- Delivery Device
					["qg"] = 4498,	-- Maurin Bonesplitter
					["sourceQuest"] = 14338,	-- Ghost Walker Post
					["coord"] = { 52.2, 53.4, DESOLACE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/3 Hollow Kodo Horn
							["provider"] = { "i", 49195 },	-- Hollow Kodo Horn
							["cr"] = 4701,	-- Dying Kodo
						}),
					},
				}),
				q(261, {	-- Down the Scarlet Path (1/2)
					["qg"] = 1182,	-- Brother Anton <Scarlet Crusade Emissary>
					["sourceQuest"] = 6141,	-- Brother Anton
					["coord"] = { 66.4, 7.8, DESOLACE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 34,
					["groups"] = {
						objective(1, {	-- 0/30 Undead Ravager slain
							["provider"] = { "n", 11561 },	-- Undead Ravager
						}),
					},
				}),
				q(1052, {	-- Down the Scarlet Path (2/2)
					["providers"] = {
						{ "n", 1182 },	-- Brother Anton <Scarlet Crusade Emissary>
						{ "i", 5539 },	-- Letter of Commendation
					},
					["sourceQuest"] = 261,	-- Down the Scarlet Path (1/2)
					["coord"] = { 66.5, 7.9, DESOLACE },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { HILLSBRAD_FOOTHILLS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 34,
				}),
				q(14246, {	-- Early Adoption
					["qg"] = 35661,	-- Cenarion Embassador Thunk
					["coord"] = { 70.4, 33.0, DESOLACE },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						i(55894, {	-- Featherlight Leggings
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(55895, {	-- Collector's Padded Gauntlets
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(14362, {	-- Ears are Burning (A)
					["provider"] = { "i", 49203 },	-- Burning Blade Ear (Alliance)
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["crs"] = {
						4663,	-- Burning Blade Augur
						4664,	-- Burning Blade Reaver
						4665,	-- Burning Blade Adept
						4666,	-- Burning Blade Felsworn
						4667,	-- Burning Blade Shadowmage
					},
					["groups"] = {
						objective(1, {	-- 0/25 Burning Blade Ear
							["provider"] = { "i", 49008 },	-- Burning Blade Ear
							["crs"] = {
								4663,	-- Burning Blade Augur
								4664,	-- Burning Blade Reaver
								4665,	-- Burning Blade Adept
								4666,	-- Burning Blade Felsworn
								4667,	-- Burning Blade Shadowmage
							},
						}),
					},
				}),
				q(14232, {	-- Ears are Burning (H)
					["provider"] = { "i", 49010 },	-- Burning Blade Ear (Horde)
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["crs"] = {
						4663,	-- Burning Blade Augur
						4664,	-- Burning Blade Reaver
						4665,	-- Burning Blade Adept
						4666,	-- Burning Blade Felsworn
						4667,	-- Burning Blade Shadowmage
					},
					["groups"] = {
						objective(1, {	-- 0/25 Burning Blade Ear
							["provider"] = { "i", 49008 },	-- Burning Blade Ear
							["crs"] = {
								4663,	-- Burning Blade Augur
								4664,	-- Burning Blade Reaver
								4665,	-- Burning Blade Adept
								4666,	-- Burning Blade Felsworn
								4667,	-- Burning Blade Shadowmage
							},
						}),
					},
				}),
				q(14354, {	-- Elune's Gifts
					["qg"] = 5642,	-- Vahlarriel Demonslayer
					["sourceQuest"] = 14387,	-- Lay of the Land
					["coord"] = { 66.4, 11.8, DESOLACE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(55951, {	-- Choker of Renewal
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(55952, {	-- Gloves of Nurture
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(55953, {	-- Shoulderguards of Protection
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(55954, {	-- Demonslayer's Signet
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(14365, {	-- Ethel Rethor (A)
					["qg"] = 5752,	-- Corporal Melkins
					["sourceQuest"] = 14354,	-- Elune's Gifts
					["coord"] = { 66.7, 10.9, DESOLACE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
				}),
				q(14255, {	-- Ethel Rethor (H)
					["qg"] = 35295,	-- Cerelia
					["sourceQuest"] = 14189,	-- Translation
					["coord"] = { 44.6, 29.4, DESOLACE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
				}),
				q(14196, {	-- Firestarter
					["provider"] = { "o", 195445 },	-- Ancient Vortex Runestone
					["sourceQuest"] = 14195,	-- All Becoming Clearer
					["coord"] = { 74.8, 13.2, DESOLACE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				q(5421, {	-- Fish in a Bucket
					["qg"] = 11317,	-- Jinar'Zillen
					["coord"] = { 22.4, 73, DESOLACE },
					-- #if BEFORE CATA
					-- #if AFTER CLASSIC
					["description"] = "You must be on the quest 'Catch of the Day' to accept this quest. It becomes unavailable after you turn in that quest as well.",
					-- #else
					["description"] = "You must be on the quest 'Catch of the Day' to accept this quest. It becomes unavailable after you turn in that quest as well.\n\nConsideration: You can make 55s for every 5 Shellfish you turn in and sell the fish on the AH. Up to you if your time is worth more or not. On densely populated servers, probably not a good idea.",
					-- #endif
					["cost"] = {{ "i", 13545, 5 }},	-- Shellfish
					["repeatable"] = true,
					-- #endif
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(25, 25, 10),
					["groups"] = {
						objective(1, {	-- 0/5 Shellfish
							["providers"] = {
								{ "i", 13545 },	-- Shellfish
								{ "o", 176582 },	-- Shellfish Trap
							},
						}),
						-- #if BEFORE CATA
						i(13546),	-- Bloodbelly Fish
						-- #endif
					},
				}),
				q(14253, {	-- Fletch Me Some Plumage!
					["qg"] = 35757,	-- Bizby
					["coord"] = { 61.0, 29.0, DESOLACE },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/25 Dread Swoop Feather
							["provider"] = { "i", 49032 },	-- Dread Swoop Feather
							["cr"] = 4692,	-- Dread Swoop
						}),
						i(55891, {	-- Swoop-Tail Shoulders
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(55892, {	-- Feather Lined Legguards
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(55893, {	-- Talonrend Stompers
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131337, {	-- Avian Oiled Greaves
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(14191, {	-- Furien's Footsteps
					["providers"] = {
						{ "o", 195438 },	-- Cup of Elune
						{ "o", 195433 },	-- Ancient Tablets
					},
					["sourceQuest"] = 14189,	-- Translation
					["coord"] = { 69.2, 29.2, DESOLACE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				q(1368, {	-- Gelkis Alliance
					["qg"] = 5412,	-- Gurda Wildmane
					["coord"] = { 56.2, 59.6, DESOLACE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 30,
				}),
				q(6132, {	-- Get Me Out of Here!
					["qg"] = 12277,	-- Melizza Brimbuzzle
					["coord"] = { 33.9, 53.5, DESOLACE },
					["lvl"] = lvlsquish(34, 34, 10),
				}),
				q(14338, {	-- Ghost Walker Post
					["qg"] = 36034,	-- Karnum Marshweaver
					["sourceQuest"] = 14311,	-- Taking Part
					["coord"] = { 57.3, 47.7, DESOLACE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
				}),
				q(6134, {	-- Ghost-o-plasm Round Up
					["qg"] = 6019,	-- Hornizz Brimbuzzle
					["coord"] = { 47.8, 61.8, DESOLACE },
					["lvl"] = lvlsquish(34, 34, 10),
					["groups"] = {
						objective(1, {	-- 0/8 Ghost-o-plasm
							["provider"] = { "i", 15849 },	-- Ghost-o-plasm
							["coord"] = { 65, 91, DESOLACE },
							["cost"] = {{ "i", 15848, 1 }},	-- Crate of Ghost Magnets
							["cr"] = 11560,	-- Magrami Spectre
						}),
						i(15864),	-- Condor Bracers
						i(15865),	-- Anchorhold Buckler
					},
				}),
				q(5943, {	-- Gizelton Caravan
					["qg"] = 11626,	-- Rigger Gizelton
					["coord"] = { 40.4, 79.4, DESOLACE },
					["timeline"] = { REMOVED_5_0_4 },
					["lvl"] = 32,
					["groups"] = {
						i(15691, {	-- Sidegunner Shottie
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(15692, {	-- Kodo Brander
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(15695, {	-- Studded Ring Shield
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(1371, {	-- Gizmo for Warug
					["qg"] = 5398,	-- Warug
					["sourceQuest"] = 1369,	-- Broken Tears
					["minReputation"] = { FACTION_MAGRAM_CLAN_CENTAUR, FRIENDLY },	-- Magram Clan Centaur, Friendly.
					["coord"] = { 74.8, 68.0, DESOLACE },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = {{ "i", 4392, 1 }},	-- Advanced Target Dummy
					["lvl"] = 30,
				}),
				q(14260, {	-- Going Deep
					["qg"] = 35773,	-- Cenarion Researcher Korrah
					["sourceQuest"] = 14257,	-- Slitherblade Slaughter
					["coord"] = { 38.8, 27.0, DESOLACE },
					["timeline"] = { ADDED_4_0_3 },
				}),
				q(14252, {	-- Good Gold For Bad Tail
					["qg"] = 35757,	-- Bizby
					["coord"] = { 61.0, 29.0, DESOLACE },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/15 Aged Basilisk Tail
							["provider"] = { "i", 49030 },	-- Aged Basilisk Tail
							["cr"] = 4728,	-- Gritjaw Basilisk
						}),
					},
				}),
				q(5381, {	-- Hand of Iruxos
					["qg"] = 11624,	-- Taiga Wisemane
					["coord"] = { 25.8, 68.2, DESOLACE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 32,
					["groups"] = {
						objective(1, {	-- 0/1 Demon Box
							["providers"] = {
								{ "i",  13542 },	-- Demon Box
								{ "i",  14523 },	-- Demon Pick
								{ "o", 176581 },	-- Hand of Iruxos Crystal
							},
							["coord"] = { 55, 26.4, DESOLACE },
							["cr"] = 11876,	-- Demon Spirit
						}),
					},
				}),
				q(14254, {	-- Heavy Metal
					["provider"] = { "o", 195600 },	-- Smouldering Stone
					["sourceQuest"] = 14247,	-- Stubborn Lands
					["coord"] = { 69.3, 21.2, DESOLACE },
					["timeline"] = { ADDED_4_0_3 },
					["modelScale"] = 6,
					["groups"] = {
						objective(1, {	-- 0/7 Element 116
							["providers"] = {
								{ "i", 49034 },	-- Element 116
								{ "o", 195601 },	-- Element 116
							},
						}),
					},
				}),
				q(25938, {	-- Help for Desolace
					["qg"] = 41487,	-- Hierophant Malyk
					["coord"] = { 33.1, 59.6, STONETALON_MOUNTAINS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
				}),
				heroscall(q(28531, {    -- Hero's Call: Desolace!
					["timeline"] = { ADDED_4_0_3 },
					["maps"] = { DARNASSUS, THE_EXODAR },	-- Only found in Darnassus & The Exodar in Cataclysm.
					["isBreadcrumb"] = true,
					["lockCriteria"] = { 1, "questID", 25938 },	-- Help for Desolace
					-- #if BEFORE 7.3.5
					-- Cataclysm: Minimum is level 29. (TODO: Confirm this.)
					-- Cataclysm: Maximum is level 33. (TODO: Test max level between 32 and 37)
					["lvl"] = { 29, 33 },
					-- #endif
				})),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_TWO, q(79229, {	-- Highway Robbery
					["provider"] = { "o", 417353 },	-- Extinguished Campfire
					["coord"] = { 47.5, 54.6, DESOLACE },
					["timeline"] = { ADDED_1_15_1 },
					["lvl"] = 30,
				})),
				-- #endif
				q(14378, {	-- Hunting Brendol
					["qg"] = 36329,	-- Thargad
					["sourceQuests"] = {
						14373,	-- Infernal Encroachment
						14374,	-- Portals of the Legion
					},
					["coord"] = { 36.7, 71.2, DESOLACE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Brendol's Satchel
							["provider"] = { "i", 49221 },	-- Brendol's Satchel
							["description"] = "Brendol is stealthed. Be vigilant!",
							["cr"] = 36353,	-- Brendol
						}),
					},
				}),
				q(5763, {	-- Hunting in Stranglethorn
					["providers"] = {
						{ "n", 11877 },	-- Roon Wildmane
						{ "i", 14546 },	-- Roon's Kodo Horn
					},
					["coord"] = { 25, 72.2, DESOLACE },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { STRANGLETHORN_VALE },
					["races"] = HORDE_ONLY,
					["lvl"] = 28,
				}),
				q(14373, {	-- Infernal Encroachment
					["qg"] = 36329,	-- Thargad
					["sourceQuest"] = 14372,	-- Thargad's Camp
					["coord"] = { 36.7, 71.2, DESOLACE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/10 Lesser Infernals Destroyed
							["provider"] = { "n", 35591 },	-- Lesser Infernal
						}),
						i(55931, {	-- Demonkiller Mask
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(55930, {	-- Darkblood Dagger
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(55932, {	-- Claw-Scarred Bulwark
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(14342, {	-- Infernal Encroachment
					["qg"] = 5395,	-- Felgur Twocuts
					["coord"] = { 56.1, 59.5, DESOLACE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/10 Lesser Infernals Destroyed
							["provider"] = { "n", 35591 },	-- Lesser Infernal
						}),
						i(55934, {	-- Demonkiller Mask
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(55933, {	-- Darkblood Dagger
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(55935, {	-- Claw-Scarred Bulwark
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(14393, {	-- Into the Fray!
					["qg"] = 36398,	-- Khan Leh'Prah
					["sourceQuest"] = 14332,	-- Time for Change
					["coord"] = { 72.3, 67.4, DESOLACE },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/15 Burning Blade Warlocks Slain
							["provider"] = { "n", 36414 },	-- Burning Blade Warlock
						}),
						objective(2, {	-- 0/3 Doomguard Invaders Slain
							["provider"] = { "n", 36412 },	-- Doomguard Invader
						}),
						objective(3, {	-- 0/1 Priestess Than'darissa Slain
							["provider"] = { "n", 36413 },	-- Priestess Than'darissa
						}),
					},
				}),
				q(14376, {	-- Jugkar's Undoing (A)
					["provider"] = { "i", 49220 },	-- Infernal Power Core
					["coord"] = { 51.2, 75.4, DESOLACE },
					["timeline"] = { ADDED_4_0_3 },
					["crs"] = { 35591 },	-- Lesser Infernal
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Jugkar Grim'rod Slain
							["provider"] = { "n", 5771 },	-- Jugkar Grim'rod
						}),
					},
				}),
				q(14344, {	-- Jugkar's Undoing (H)
					["provider"] = { "i", 49200 },	-- Infernal Power Core
					["coord"] = { 51.2, 75.4, DESOLACE },
					["timeline"] = { ADDED_4_0_3 },
					["crs"] = { 35591 },	-- Lesser Infernal
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Jugkar Grim'rod Slain
							["provider"] = { "n", 5771 },	-- Jugkar Grim'rod
						}),
					},
				}),
				q(1365, {	-- Khan Dez'hepah
					["qg"] = 5395,	-- Felgur Twocuts
					["coord"] = { 56.2, 59.4, DESOLACE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 30,
					["groups"] = {
						objective(1, {	-- 0/1 Khan Dez'hepah's Head
							["provider"] = { "i", 6066 },	-- Khan Dez'hepah's Head
							["coords"] = {
								{ 73.2, 42.6, DESOLACE },
								{ 74.6, 48.8, DESOLACE },
							},
							["cr"] = 5600,	-- Khan Dez'hepah
						}),
					},
				}),
				q(1380, {	-- Khan Hratha (Gelkis)
					["qg"] = 5397,	-- Uthek the Wise
					["sourceQuest"] = 1374,	-- Khan Jehn
					["minReputation"] = { FACTION_GELKIS_CLAN_CENTAUR, FRIENDLY },	-- Gelkis Clan Centaur, Friendly.
					["coord"] = { 36.2, 79.2, DESOLACE },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 30,
					["groups"] = {
						objective(1, {	-- 0/1 Maraudine Key Fragment
							["provider"] = { "i", 6077 },	-- Maraudine Key Fragment
							["cost"] = { { "i", 6074, 1 } },	-- War Horn Mouthpiece
							["coord"] = { 29.8, 52.8, DESOLACE },
							["cr"] = 5402,	-- Khan Hratha
						}),
						i(6773, {	-- Gelkis Marauder Chain
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(6774, {	-- Uthek's Finger
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(1381, {	-- Khan Hratha (Magram)
					["qg"] = 5398,	-- Warug
					["sourceQuest"] = 1375,	-- Khan Shaka
					["minReputation"] = { FACTION_MAGRAM_CLAN_CENTAUR, FRIENDLY },	-- Magram Clan Centaur, Friendly.
					["coord"] = { 74.8, 68.0, DESOLACE },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 30,
					["groups"] = {
						objective(1, {	-- 0/1 Maraudine Key Fragment
							["provider"] = { "i", 6077 },	-- Maraudine Key Fragment
							["cost"] = { { "i", 6074, 1 } },	-- War Horn Mouthpiece
							["coord"] = { 29.8, 52.8, DESOLACE },
							["cr"] = 5402,	-- Khan Hratha
						}),
						i(6788, {	-- Magram Hunter's Belt
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(6789, {	-- Ceremonial Centaur Blanket
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(1374, {	-- Khan Jehn
					["qg"] = 5397,	-- Uthek the Wise
					["sourceQuest"] = 1373,	-- Ongeku
					["minReputation"] = { FACTION_GELKIS_CLAN_CENTAUR, FRIENDLY },	-- Gelkis Clan Centaur, Friendly.
					["coord"] = { 36.2, 79.2, DESOLACE },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 30,
					["groups"] = {
						objective(1, {	-- 0/1 Khan Jehn's Head
							["provider"] = { "i", 6072 },	-- Khan Jehn's Head
							["coord"] = { 66.6, 79.8, DESOLACE },
							["cr"] = 5601,	-- Khan Jehn
						}),
					},
				}),
				q(1375, {	-- Khan Shaka
					["qg"] = 5398,	-- Warug
					["sourceQuest"] = 1371,	-- Gizmo for Warug
					["minReputation"] = { FACTION_MAGRAM_CLAN_CENTAUR, FRIENDLY },	-- Magram Clan Centaur, Friendly.
					["coord"] = { 74.8, 68.0, DESOLACE },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 30,
					["groups"] = {
						objective(1, {	-- 0/1 Khan Shaka's Head
							["provider"] = { "i", 6073 },	-- Khan Shaka's Head
							["coord"] = { 40.6, 95.6, DESOLACE },
							["cr"] = 5602,	-- Khan Shaka
						}),
					},
				}),
				q(5561, {	-- Kodo Roundup
					["qg"] = 11596,	-- Smeed Scrabblescrew
					["coord"] = { 60.8, 61.8, DESOLACE },
					["lvl"] = lvlsquish(30, 30, 10),
					["groups"] = {
						objective(1, {	-- 0/5 Kodos Tamed
							["provider"] = { "i", 13892 },	-- Kodo Kombobulator
							["crs"] = {
								4702,	-- Ancient Kodo
								4700,	-- Aged Kodo
								4701,	-- Dying Kodo
								11627,	-- Tamed Kodo
							},
						}),
						i(15697, {	-- Kodo Rustler Boots
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(15698, {	-- Wrangling Spaulders
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(14387, {	-- Lay of the Land
					["qg"] = 5396,	-- Captain Pentigast
					["sourceQuest"] = 14384,	-- Rerouted!
					["coord"] = { 66.7, 10.9, DESOLACE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(1367, {	-- Magram Alliance
					["qg"] = 5412,	-- Gurda Wildmane
					["coord"] = { 56.2, 59.6, DESOLACE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 30,
				}),
				q(14343, {	-- Maurin's Concoction
					["qg"] = 4498,	-- Maurin Bonesplitter
					["sourceQuest"] = 14339,	-- Delivery Device
					["coord"] = { 52.2, 53.4, DESOLACE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				q(14184, {	-- My Time Has Passed
					["qg"] = 35286,	-- Furien
					["sourceQuests"] = {
						28548,	-- Warchief's Command: Desolace!
						26134,	-- Nothing Left for You Here
					},
					["coord"] = { 54.7, 8.7, DESOLACE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
				}),
				q(14327, {	-- My Word is My Bond
					["qg"] = 36163,	-- Khan Kammah
					["sourceQuest"] = 14325,	-- Will Work For Food
					["coord"] = { 73.3, 41.6, DESOLACE },
					["timeline"] = { ADDED_4_0_3 },
				}),
				q(14282, {	-- Mystery Solved
					["qg"] = 35773,	-- Cenarion Researcher Korrah
					["description"] = "If you abandon this quest, you can pick it up again from Cenarion Researcher Korrah at Ethel Rethor.",
					["sourceQuest"] = 14268,	-- Deep Impact
					["coord"] = { 38.8, 27.0, DESOLACE },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						i(55896, {	-- Emblazoned Girdle
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(55897, {	-- Stonegouge Headgear
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131338, {	-- Earthhewn Helm
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(55898, {	-- Rockgrab Crushers
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(14251, {	-- New Beginnings
					["qg"] = 35757,	-- Bizby
					["coord"] = { 61.0, 29.0, DESOLACE },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/15 Scorpion Stinger
							["provider"] = { "i", 49026 },	-- Scorpion Stinger
							["cr"] = 4696,	-- Scorpashi Snapper
						}),
					},
				}),
				q(14329, {	-- Not So Fast!
					["qg"] = 36185,	-- Khan Shodo
					["sourceQuest"] = 14328,	-- Three Princes
					["coord"] = { 40.5, 95.5, DESOLACE },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/10 Maraudine Maulers Slain
							["provider"] = { "n", 4656 },	-- Maraudine Mauler
						}),
					},
				}),
				q(14193, {	-- Nothing a Couple of Melons Won't Fix (A)
					["providers"] = {
						{ "o", 195433 },	-- Ancient Tablets
						{ "o", 195438 },	-- Cup of Elune
					},
					["coord"] = { 77.0, 18.1, DESOLACE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(14360, {	-- Nothing a Couple of Melons Won't Fix (H)
					["provider"] = { "o", 195433 },	-- Ancient Tablets
					["sourceQuest"] = 14191,	-- Furien's Footsteps
					["coord"] = { 77.0, 18.1, DESOLACE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				q(14302, {	-- Official Assessment
					["qg"] = 35773,	-- Cenarion Researcher Korrah
					["sourceQuest"] = 14301,	-- Return and Report
					["coord"] = { 38.8, 27.0, DESOLACE },
					["timeline"] = { ADDED_4_0_3 },
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_TWO, q(79235, {	-- On The Lam
					["qg"] = 11438,	-- Bibbly F'utzbuckle
					["sourceQuest"] = 79229,	-- Highway Robbery
					["coord"] = { 62.2, 38.8, DESOLACE },
					["timeline"] = { ADDED_1_15_1 },
					["lvl"] = 30,
				})),
				-- #endif
				q(1373, {	-- Ongeku
					["qg"] = 5397,	-- Uthek the Wise
					["sourceQuest"] = 1370,	-- Stealing Supplies
					["minReputation"] = { FACTION_GELKIS_CLAN_CENTAUR, FRIENDLY },	-- Gelkis Clan Centaur, Friendly.
					["coord"] = { 36.2, 79.2, DESOLACE },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { SWAMP_OF_SORROWS },
					["lvl"] = 30,
					["groups"] = {
						objective(1, {	-- 0/1 Draenethyst Shard
							["provider"] = { "i", 6190 },	-- Draenethyst Shard
							["coord"] = { 65, 21, SWAMP_OF_SORROWS },
							["cr"] = 5622,	-- Ongeku
						}),
					},
				}),
				q(6143, {	-- Other Fish to Fry
					["qg"] = 12340,	-- Drulzegar Skraghook
					["coord"] = { 23.2, 72.8, DESOLACE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 32,
					["groups"] = {
						objective(1, {	-- 0/7 Slitherblade Myrmidon slain
							["provider"] = { "n", 4714 },	-- Slitherblade Myrmidon
						}),
						objective(2, {	-- 0/7 Slitherblade Naga slain
							["provider"] = { "n", 4711 },	-- Slitherblade Naga
						}),
						objective(3, {	-- 0/5 Slitherblade Sorceress slain
							["provider"] = { "n", 4712 },	-- Slitherblade Sorceress
						}),
					},
				}),
				q(14361, {	-- Peace of Mind (A)
					["qg"] = 5396,	-- Captain Pentigast
					["sourceQuest"] = 14354,	-- Elune's Gifts
					["coord"] = { 66.7, 10.9, DESOLACE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Kohor Slain
							["provider"] = { "n", 35632 },	-- Kohor
						}),
					},
				}),
				q(14223, {	-- Peace of Mind (H)
					["qg"] = 35298,	-- Sorrem
					["sourceQuest"] = 14189,	-- Translation
					["coord"] = { 44.9, 29.5, DESOLACE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Kohor Slain
							["provider"] = { "n", 35632 },	-- Kohor
						}),
					},
				}),
				q(14374, {	-- Portals of the Legion (A)
					["qg"] = 36329,	-- Thargad
					["sourceQuest"] = 14372,	-- Thargad's Camp
					["coord"] = { 36.7, 71.2, DESOLACE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/6 Portals Banished
							["providers"] = {
								{ "i",  14547 },	-- Hand of Iruxos
								{ "o", 177243 },	-- Demon Portal
							},
							["cr"] = 11937,	-- Demon Portal Guardian
						}),
						i(55937, {	-- Bracer of Portals
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(55938, {	-- Spaulders of Sealing
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(55936, {	-- Binding Staff
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131352, {	-- Securing Bindings
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(5581, {	-- Portals of the Legion (H)
					["qgs"] = {
						-- #if AFTER CATA
						5395,	-- Felgur Twocuts
						-- #else
						11624,	-- Taiga Wisemane
						-- #endif
					},
					-- #if BEFORE CATA
					["sourceQuest"] = 5381,	-- Hand of Iruxos
					-- #endif
					["coords"] = {
						-- #if AFTER CATA
						{ 56.1, 59.5, DESOLACE },
						-- #else
						{ 25.8, 68.2, DESOLACE },
						-- #endif
					},
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(32, 32, 10),
					["groups"] = {
						objective(1, {	-- 0/6 Portals Banished
							["providers"] = {
								{ "i",  14547 },	-- Hand of Iruxos
								{ "o", 177243 },	-- Demon Portal
							},
							["cr"] = 11937,	-- Demon Portal Guardian
						}),
						i(55940, {	-- Bracer of Portals
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(55941, {	-- Spaulders of Sealing
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(55939, {	-- Binding Staff
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131233, {	-- Securing Bindings
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(16794, {	-- Gripsteel Wristguards
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(16873, {	-- Braidfur Gloves
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(14306, {	-- Pulling Weeds
					["qg"] = 36060,	-- Botanist Ferrah
					["coord"] = { 58.6, 48.7, DESOLACE },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/7 Uprooted Lashers Slain
							["provider"] = { "n", 36062 },	-- Uprooted Lasher
						}),
						i(55899, {	-- Lasherspike Wristguards
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(55900, {	-- Puncture-Binding Spaulder
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131343, {	-- Thornwoven Epaulets
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(55901, {	-- Phytoresistant Helm
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(14364, {	-- Putting Their Heads Together (A)
					["qg"] = 5396,	-- Captain Pentigast
					["description"] = "If you abandon this quest, you can pick it up again from Captain Pentigast at Nijel's Point.",
					["sourceQuest"] = 14363,	-- You'll Know it When You See It
					["coord"] = { 66.7, 10.9, DESOLACE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Nazargen slain
							["provider"] = { "n", 35647 },	-- Nazargen
						}),
						i(55924, {	-- Ring of Vigorous Interruption
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(55925, {	-- Grounding Choker
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(55926, {	-- Skull-Scorched Cloak
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(14227, {	-- Putting Their Heads Together (H)
					["qg"] = 35298,	-- Sorrem
					["sourceQuest"] = 14225,	-- You'll Know it When You See It
					["coord"] = { 44.9, 29.5, DESOLACE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Nazargen slain
							["provider"] = { "n", 35647 },	-- Nazargen
						}),
						i(55927, {	-- Ring of Vigorous Interruption
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(55928, {	-- Grounding Choker
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(55929, {	-- Skull-Scorched Cloak
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(1384, {	-- Raid on the Kolkar
					["qg"] = 5397,	-- Uthek the Wise
					["sourceQuest"] = 1368,	-- Gelkis Alliance
					["coord"] = { 36.2, 79.2, DESOLACE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
					["groups"] = {
						objective(1, {	-- 0/10 Crude Charm
							["provider"] = { "i", 6079 },	-- Crude Charm
							["crs"] = {
								12977,	-- Kolkar Ambusher
								4636,	-- Kolkar Battle Lord
								4632,	-- Kolkar Centaur
								4637,	-- Kolkar Destroyer
								4634,	-- Kolkar Mauler
								4633,	-- Kolkar Scout
								12976,	-- Kolkar Waylayer
								4635,	-- Kolkar Windchaser
							},
						}),
					},
				}),
				q(1458, {	-- Reagents for Reclaimers Inc. (1/4)
					["qg"] = 5638,	-- Kreldig Ungor
					["sourceQuest"] = 1453,	-- Reclaimers' Business in Desolace
					["coord"] = { 66.2, 9.6, DESOLACE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
					["groups"] = {
						objective(1, {	-- 0/10 Hatefury Claw
							["provider"] = { "i", 6246 },	-- Hatefury Claw
							["crs"] = {
								4673,	-- Hatefury Betrayer
								4672,	-- Hatefury Felsworn
								4675,	-- Hatefury Hellcaller
								4670,	-- Hatefury Rogue
								4674,	-- Hatefury Shadowstalker
								4671,	-- Hatefury Trickster
								14225,	-- Prince Kellen
							},
						}),
						objective(2, {	-- 0/10 Hatefury Horn
							["provider"] = { "i", 6247 },	-- Hatefury Horn
							["crs"] = {
								4673,	-- Hatefury Betrayer
								4672,	-- Hatefury Felsworn
								4675,	-- Hatefury Hellcaller
								4670,	-- Hatefury Rogue
								4674,	-- Hatefury Shadowstalker
								4671,	-- Hatefury Trickster
								14225,	-- Prince Kellen
							},
						}),
					},
				}),
				q(1459, {	-- Reagents for Reclaimers Inc. (2/4)
					["qg"] = 5638,	-- Kreldig Ungor
					["sourceQuest"] = 1458,	-- Reagents for Reclaimers Inc. (1/4)
					["coord"] = { 66.2, 9.6, DESOLACE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
					["groups"] = {
						objective(1, {	-- 0/7 Scorpashi Venom
							["provider"] = { "i", 6248 },	-- Scorpashi Venom
							["crs"] = {
								4697,	-- Scorpashi Lasher
								4696,	-- Scorpashi Snapper
								4699,	-- Scorpashi Venomlash
							},
						}),
						objective(2, {	-- 0/3 Aged Kodo Hide
							["provider"] = { "i", 6249 },	-- Aged Kodo Hide
							["cr"] = 4700,	-- Aged Kodo
						}),
					},
				}),
				q(1466, {	-- Reagents for Reclaimers Inc. (3/4)
					["qg"] = 5638,	-- Kreldig Ungor
					["sourceQuest"] = 1459,	-- Reagents for Reclaimers Inc. (2/4)
					["coord"] = { 66.2, 9.6, DESOLACE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
					["groups"] = {
						objective(1, {	-- 0/10 Felhound Brain
							["provider"] = { "i", 6250 },	-- Felhound Brain
							["crs"] = {
								4685,	-- Ley Hunter
								4681,	-- Mage Hunter
								4678,	-- Mana Eater
							},
						}),
						objective(2, {	-- 0/10 Nether Wing
							["provider"] = { "i", 6251 },	-- Nether Wing
							["crs"] = {
								4679,	-- Nether Maiden
								4682,	-- Nether Sister
								4684,	-- Nether Sorceress
							},
						}),
						objective(3, {	-- 0/10 Doomwarder Blood
							["provider"] = { "i", 6252 },	-- Doomwarder Blood
							["crs"] = {
								4680,	-- Doomwarder Captain
								14226,	-- Kaskk
								5760,	-- Lord Azrethoc
							},
						}),
					},
				}),
				q(1467, {	-- Reagents for Reclaimers Inc. (4/4)
					["providers"] = {
						{ "n", 5638 },	-- Kreldig Ungor
						{ "i", 6253 },	-- Leftwitch's Package
					},
					["sourceQuest"] = 1466,	-- Reagents for Reclaimers Inc. (3/4)
					["coord"] = { 66.2, 9.6, DESOLACE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
					["groups"] = {
						i(6793, {	-- Auric Bracers
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(6794, {	-- Stormfire Gauntlets / Tawny Gloves [LEGION+]
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(131232, {	-- Stormfire Gauntlets
							["timeline"] = { CREATED_7_0_3 },
						}),
					},
				}),
				q(1453, {	-- Reclaimers' Business in Desolace
					["qg"] = 5637,	-- Roetten Stonehammer
					["coord"] = { 69.6, 21.0, IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = lvlsquish(30, 30, 10),
				}),
				q(1361, {	-- Regthar Deathgate
					["qgs"] = {
						2229,	-- Krusk
						4485,	-- Belgrom Rockmaul
					},
					["coords"] = {
						{ 63.24, 20.68, HILLSBRAD_FOOTHILLS },	-- Krusk
						{ 75, 34.2, ORGRIMMAR },	-- Belgrom Rockmaul
					},
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { THE_BARRENS },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 30,
				}),
				q(14384, {	-- Rerouted!
					["qg"] = 36410,	-- Officer Jankie
					["sourceQuests"] = {
						25938,	-- Help for Desolace
						28531,	-- Hero's Call: Desolace!
					},
					["coord"] = { 54.2, 9.3, DESOLACE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(14301, {	-- Return and Report
					["qg"] = 35902,	-- Lord Hydronis
					["sourceQuest"] = 14284,	-- A Revenant's Vengeance
					["coord"] = { 29.1, 8.1, DESOLACE },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						i(55906, {	-- Balmy Wraps
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(55907, {	-- Vest of Flowing Water
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(55908, {	-- Crackling Girdle
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(55905, {	-- Spinescale Longbow
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131342, {	-- Crashing Water Hauberk
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(156967, {	-- Spinescale Hammer
							["timeline"] = { ADDED_7_3_5 },
						}),
					},
				}),
				q(1440, {	-- Return to Vahlarriel
					["qg"] = 5644,	-- Dalinda Malem
					["sourceQuest"] = 1439,	-- Search for Tyranis
					["coord"] = { 54.8, 26.2, DESOLACE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
					["groups"] = {
						i(9687, {	-- Grappler's Belt
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(9698, {	-- Gloves of Insight
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(9699, {	-- Garrison Cloak
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(11884, {	-- Moonlit Amice
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(14198, {	-- Rider on the Storm
					["provider"] = { "o", 195445 },	-- Ancient Vortex Runestone
					["sourceQuest"] = 14196,	-- Firestarter
					["coord"] = { 74.8, 13.2, DESOLACE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/40 Nijel's Point Defenders Slain
							["provider"] = { "n", 35506 },	-- Nijel's Point Defender
						}),
						objective(2, {	-- 0/15 Nijel's Point Merchants Slain
							["provider"] = { "n", 35510 },	-- Nijel's Point Merchant
						}),
						i(55963, {	-- Tranquility of Furien
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(55962, {	-- Nimblefinger Cloak
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(55964, {	-- Flashfire Collar
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(14379, {	-- Rock Lobstrock!
					["qg"] = 36378,	-- Dumti
					["sourceQuests"] = {
						14373,	-- Infernal Encroachment
						14374,	-- Portals of the Legion
					},
					["coord"] = { 36.4, 71.2, DESOLACE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/7 Tender Lobstrock Tail
							["provider"] = { "i", 49222 },	-- Tender Lobstrock Tail
							["crs"] = {
								11562,	-- Drysnap Crawler
								11563,	-- Drysnap Pincer
							},
						}),
					},
				}),
				q(14217, {	-- Satyrical Offerings
					["provider"] = { "o", 195497 },	-- Elune's Brazier
					["sourceQuest"] = 14213,	-- Ten Pounds of Flesh
					["coord"] = { 78.6, 23.1, DESOLACE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
				}),
				q(5741, {	-- Sceptre of Light
					["qg"] = 11863,	-- Azore Aldamort <The Argent Dawn>
					["coord"] = { 38.8, 27.2, DESOLACE },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 30,
					["groups"] = {
						objective(1, {	-- 0/1 Sceptre of Light
							["provider"] = { "i", 15750 },	-- Sceptre of Light
							["coord"] = { 55.2, 30.0, DESOLACE },
							["cr"] = 13019,	-- Burning Blade Seer
						}),
					},
				}),
				q(1439, {	-- Search for Tyranis
					["qg"] = 5644,	-- Dalinda Malem
					["sourceQuest"] = 1438,	-- Vahlarriel's Search (3/3)
					["coord"] = { 54.8, 26.2, DESOLACE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
					["groups"] = {
						objective(1, {	-- 0/1 Tyranis' Pendant
							["provider"] = { "i", 6767 },	-- Tyranis' Pendant
							["coord"] = { 53.0, 28.4, DESOLACE },
							["cr"] = 5643,	-- Tyranis Malem
						}),
					},
				}),
				q(14337, {	-- Shadowprey Village
					["qg"] = 36034,	-- Karnum Marshweaver
					["sourceQuest"] = 14327,	-- My Word is My Bond
					["coord"] = { 57.3, 47.7, DESOLACE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
				}),
				q(14257, {	-- Slitherblade Slaughter
					["qg"] = 35773,	-- Cenarion Researcher Korrah
					["sourceQuest"] = 14256,	-- The Emerging Threat
					["coord"] = { 38.8, 27.0, DESOLACE },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/10 Slitherblade Bones
							["provider"] = { "i", 49056 },	-- Slitherblade Bones
							["cr"] = 4711,	-- Slitherblade Naga
						}),
						objective(2, {	-- 0/30 Slitherblade Scale
							["provider"] = { "i", 49058 },	-- Slitherblade Scale
							["cr"] = 4712,	-- Slitherblade Sorceress
						}),
						objective(3, {	-- 0/4 Slitherblade Fin
							["provider"] = { "i", 49060 },	-- Slitherblade Fin
							["cr"] = 4713,	-- Slitherblade Warrior
						}),
					},
				}),
				q(14341, {	-- Smeed's Harnesses (breadcrumb?)
					["qg"] = 11259,	-- Nataka Longhorn
					["coord"] = { 55.4, 55.8, DESOLACE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				q(1370, {	-- Stealing Supplies
					["qg"] = 5397,	-- Uthek the Wise
					["sourceQuest"] = 1384,	-- Raid on the Kolkar
					["minReputation"] = { FACTION_GELKIS_CLAN_CENTAUR, FRIENDLY },	-- Gelkis Clan Centaur, Friendly.
					["coord"] = { 36.2, 79.2, DESOLACE },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 30,
					["groups"] = {
						objective(1, {	-- 0/6 Crudely Dried Meat
							["providers"] = {
								{ "i", 6069 },	-- Crudely Dried Meat
								{ "o", 22245 },	-- Sack of Meat
							},
						}),
						-- #if BEFORE MOP
						i(3463, {	-- Silver Star [Classic] / Broken Silver Star [TBC]
							["timeline"] = {
								ADDED_1_11_1,
								REMOVED_2_0_1
							},
						}),
						i(32378, {	-- Silver Star [TBC]
							["timeline"] = {
								ADDED_2_0_1,
								REMOVED_4_0_3,
							},
						}),
						-- #endif
						-- #if BEFORE 4.0.3
						i(3464),	-- Feathered Arrow
						i(3465),	-- Exploding Shot
						-- #endif
					},
				}),
				q(1382, {	-- Strange Alliance
					["qg"] = 5396,	-- Captain Pentigast
					["coord"] = { 66.7, 11.0, DESOLACE },
					-- #if BEFORE 4.0.3
					["description"] = "Once you complete 'Khan Hratha' for the Magram Clan, you can accept and start working on this quest. Bare in mind that it is quite-the-grind to get back to Friendly. Best of luck to you!",
					-- #endif
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
				}),
				q(14247, {	-- Stubborn Lands
					["qg"] = 35661,	-- Cenarion Embassador Thunk
					["coord"] = { 70.4, 33.0, DESOLACE },
					["timeline"] = { ADDED_4_0_3 },
				}),
				q(14307, {	-- Stubborn Winds
					["qg"] = 36034,	-- Karnum Marshweaver
					["coord"] = { 57.5, 47.7, DESOLACE },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/5 Whirlwind Stormwalkers destroyed
							["provider"] = { "n", 11577 },	-- Whirlwind Stormwalker
						}),
					},
				}),
				q(14311, {	-- Taking Part
					["qg"] = 36060,	-- Botanist Ferrah
					["sourceQuests"] = {
						14305,	-- A Time to Reap
						14306,	-- Pulling Weeds
					},
					["coord"] = { 58.6, 48.7, DESOLACE },
					["timeline"] = { ADDED_4_0_3 },
				}),
				q(14358, {	-- Ten Pounds of Flesh (A)
					["provider"] = { "o", 195497 },	-- Elune's Brazier
					["coord"] = { 78.7, 23.2, DESOLACE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(14213, {	-- Ten Pounds of Flesh (H)
					["provider"] = { "o", 195497 },	-- Elune's Brazier
					["sourceQuest"] = 14189,	-- Translation
					["coord"] = { 78.7, 23.2, DESOLACE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				q(14372, {	-- Thargad's Camp
					["qg"] = 36034,	-- Karnum Marshweaver
					["sourceQuest"] = 14327,	-- My Word is My Bond
					["coord"] = { 57.5, 47.7, DESOLACE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_TWO, q(79939, {	-- The Broken Hammer
					["providers"] = {
						{ "i", 215441 },	-- Broken Hammer
						{ "o", 423703 },	-- Broken Warhammer
					},
					["sourceQuest"] = 78093,	-- Return to Delgren
					["coord"] = { 52.7, 84.8, DESOLACE },
					["maps"] = { STORMWIND_CITY },
					["classes"] = { PALADIN },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 25,
					["groups"] = {
						objective(1, {	-- 0/1 Torn Letter
							["provider"] = { "i", 216956 },	-- Torn Letter
							["coord"] = { 54.2, 78.0, DESOLACE },
							["crs"] = {
								4668,	-- Burning Blade Summoner
								4705,	-- Burning Blade Invoker
							},
						}),
						objective(2, {	-- Find someone who can tell you about the hammer
							["provider"] = { "n", 5492 },	-- Katherine the Pure <Paladin Trainer>
							["coord"] = { 37.8, 31.6, STORMWIND_CITY },
						}),
					},
				})),
				-- #endif
				q(1435, {	-- The Burning of Spirits
					["qg"] = 4498,	-- Maurin Bonesplitter
					["sourceQuest"] = 1433,	-- Alliance Relations (3/4)
					["coord"] = { 52.2, 53.4, DESOLACE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 25,
					["groups"] = {
						objective(1, {	-- 0/15 Infused Burning Gem
							["provider"] = { "i", 6435 },	-- Infused Burning Gem
							["coord"] = { 55, 26.7, DESOLACE },
							["cost"] = {{ "i", 6436, 1 }},	-- Burning Gem
							["crs"] = {
								4665,	-- Burning Blade Adept
								4663,	-- Burning Blade Augur
								4666,	-- Burning Blade Felsworn
								4664,	-- Burning Blade Reaver
							},
						}),
						--i(6766),	-- Flayed Demon Skin (old2) [TODO: Double check that this actually is given... strange name.]
					},
				}),
				q(1480, {	-- The Corrupter (1/5)
					["provider"] = { "i", 20310 },	-- Flayed Demon Skin
					["timeline"] = { REMOVED_4_0_3 },
					["crs"] = {
						4665,	-- Burning Blade Adept
						4663,	-- Burning Blade Augur
						4666,	-- Burning Blade Felsworn
						4705,	-- Burning Blade Invoker
						4664,	-- Burning Blade Reaver
						13019,	-- Burning Blade Seer
						4667,	-- Burning Blade Shadowmage
						4668,	-- Burning Blade Summoner
					},
					["races"] = HORDE_ONLY,
					["lvl"] = 25,
				}),
				q(1481, {	-- The Corrupter (2/5)
					["qg"] = 4498,	-- Maurin Bonesplitter
					["sourceQuest"] = 1480,	-- The Corrupter (1/5)
					["coord"] = { 52.2, 53.4, DESOLACE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 25,
					["groups"] = {
						objective(1, {	-- 0/1 Shadowstalker Scalp
							["provider"] = { "i", 6441 },	-- Shadowstalker Scalp
							["coord"] = { 75.8, 20, DESOLACE },
							["cr"] = 4674,	-- Hatefury Shadowstalker
						}),
					},
				}),
				q(1482, {	-- The Corrupter (3/5)
					["qg"] = 4498,	-- Maurin Bonesplitter
					["sourceQuest"] = 1481,	-- The Corrupter (2/5)
					["coord"] = { 52.2, 53.4, DESOLACE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 25,
					["groups"] = {
						objective(1, {	-- 0/1 Oracle Crystal
							["provider"] = { "i", 6442 },	-- Oracle Crystal
							["coord"] = { 31, 15.4, DESOLACE },
							["cr"] = 4718,	-- Slitherblade Oracle
						}),
					},
				}),
				q(1484, {	-- The Corrupter (4/5)
					["qg"] = 4498,	-- Maurin Bonesplitter
					["sourceQuest"] = 1482,	-- The Corrupter (3/5)
					["coord"] = { 52.2, 53.4, DESOLACE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 25,
				}),
				q(1488, {	-- The Corrupter (5/5)
					["qg"] = 5641,	-- Takata Steelblade
					["sourceQuest"] = 1484,	-- The Corrupter (4/5)
					["coord"] = { 52.6, 54.2, DESOLACE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 25,
					["groups"] = {
						objective(1, {	-- 0/1 Lord Azrethoc slain
							["provider"] = { "n", 5760 },	-- Lord Azrethoc
						}),
						objective(2, {	-- 0/1 Jugkar Grim'rod slain
							["provider"] = { "n", 5771 },	-- Jugkar Grim'rod
							["coord"] = { 55.8, 77.6, DESOLACE },
						}),
						i(6746, {	-- Basalt Buckler
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(6747, {	-- Enforcer Pauldrons
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(14256, {	-- The Emerging Threat
					["qg"] = 35773,	-- Cenarion Researcher Korrah
					["sourceQuests"] = {
						14365,	-- Ethel Rethor (alliance)
						14255,	-- Ethel Rethor (horde)
					},
					["coord"] = { 38.8, 27.0, DESOLACE },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/1 Naga Forces Scouted
							["provider"] = { "n", 35779 },	-- Korrah's Mount
						}),
					},
				}),
				q(14292, {	-- The Enemy of Our Enemy
					["qg"] = 35773,	-- Cenarion Researh Korrah
					["sourceQuest"] = 14282,	-- Mystery Solved
					["coord"] = { 38.8, 27.0, DESOLACE },
					["timeline"] = { ADDED_4_0_3 },
				}),
				q(1454, {	-- The Karnitol Shipwreck (1/4)
					["qg"] = 5638,	-- Kreldig Ungor
					["sourceQuests"] = {
						1453,	-- Reclaimers' Business in Desolace
						-- #if AFTER CATA
						14354,	-- Elune's Gift
						-- #endif
					},
					["coord"] = { 66.2, 9.6, DESOLACE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(30, 30, 10),
				}),
				q(1455, {	-- The Karnitol Shipwreck (2/4)
					["provider"] = { "o", 35251 },	-- Karnitol's Chest
					["sourceQuest"] = 1454,	-- The Karnitol Shipwreck (1/4)
					["coord"] = { 36.1, 30.4, DESOLACE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(30, 30, 10),
				}),
				q(1456, {	-- The Karnitol Shipwreck (3/4)
					["qg"] = 5638,	-- Kreldig Ungor
					["sourceQuest"] = 1455,	-- The Karnitol Shipwreck (2/4)
					["coord"] = { 66.2, 9.6, DESOLACE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(30, 30, 10),
					["groups"] = {
						objective(1, {	-- 0/1 Karnitol's Satchel
							["provider"] = { "i", 6245 },	-- Karnitol's Satchel
							["crs"] = {
								4719,	-- Slitherblade Sea Witch
								4716,	-- Slitherblade Tidehunter
							},
						}),
						i(55948, {	-- Finder's Battleaxe
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(55949, {	-- Karnitol's Leftover Robe
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131231, {	-- Claimant Treads
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(55950, {	-- Treads of the Seeker
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(1457, {	-- The Karnitol Shipwreck (4/4)
					["providers"] = {
						{ "n", 5638 },	-- Kreldig Ungor
						{ "i", 6245 },	-- Karnitol's Satchel
					},
					["sourceQuest"] = 1456,	-- The Karnitol Shipwreck (3/4)
					["coord"] = { 66.2, 9.6, DESOLACE },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
					["groups"] = {
						i(6791, {	-- Hellion Boots
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(6792, {	-- Sanguine Pauldrons
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(1362, {	-- The Kolkar of Desolace
					["qg"] = 3389,	-- Regthar Deathgate
					["sourceQuest"] = 1361,	-- Regthar Deathgate
					["coord"] = { 45.2, 28.4, THE_BARRENS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 30,
				}),
				q(14410, {	-- The Wilds of Feralas (A)
					["qg"] = 36487,	-- Khan Shodo
					["altQuests"] = {
						14411,	-- Feralas Breadcrumb [PH]
						14414,	-- Feralas Breadcrumb [PH]
					},
					["sourceQuests"] = {
						14381,	-- Cleansing Our Crevasse (A)
						14394,	-- Death to Agogridon
					},
					["coord"] = { 73.3, 73.0, DESOLACE },
					["modelScale"] = 1.5,
					["timeline"] = { ADDED_4_0_3 },
					["isBreadcrumb"] = true,
				}),
				q(26589, {	-- The Wilds of Feralas (H)
					["qg"] = 36487,	-- Khan Shodo
					["sourceQuests"] = {
						14346,	-- Cleansing Our Crevasse (H)
						14394,	-- Death to Agogridon
					},
					["coord"] = { 73.3, 73.0, DESOLACE },
					["timeline"] = { ADDED_4_0_3 },
					["isBreadcrumb"] = true,
				}),
				q(14328, {	-- Three Princes
					["qg"] = 36056,	-- Khan Leh'Prah
					["sourceQuest"] = 14327,	-- My Word is My Bond
					["coord"] = { 58.3, 50.1, DESOLACE },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/1 Rhoho Defeated
							["provider"] = { "n", 36181 },	-- Rhoho
						}),
						objective(2, {	-- 0/1 Sherik Defeated
							["provider"] = { "n", 36182 },	-- Sherik
						}),
						objective(3, {	-- 0/1 Jorreth Defeated
							["provider"] = { "n", 36183 },	-- Jorreth
						}),
					},
				}),
				q(14332, {	-- Time For Change
					["qg"] = 36196,	-- Kherrah
					["sourceQuest"] = 14330,	-- Behind Closed Doors
					["coord"] = { 13.0, 46.3, 67 },	-- quest starts in Maraudon's mapID
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						i(55912, {	-- Wrought Formal Dagger
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(55913, {	-- Emissary's Chestpiece
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(55914, {	-- Silent Footpads
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131347, {	-- Messenger's Greaves
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(14357, {	-- To the Hilt! (A)
					["provider"] = { "o", 195517 },	-- Elune's Handmaiden
					["coord"] = { 75.9, 26.6, DESOLACE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(55942, {	-- Sandals of Ritual
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(55943, {	-- Gilt Cuirass
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(55944, {	-- Profound Girdle
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131350, {	-- Gleaming Link Hauberk
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(14219, {	-- To the Hilt! (H)
					["provider"] = { "o", 195517 },	-- Elune's Handmaiden
					["sourceQuest"] = 14189,	-- Translation
					["coord"] = { 75.9, 26.6, DESOLACE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(55945, {	-- Sandals of Ritual
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(55946, {	-- Gilt Cuirass
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(55947, {	-- Profound Girdle
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131335, {	-- Gleaming Link Hauberk
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(14189, {	-- Translation
					["qg"] = 35298,	-- Sorrem
					["sourceQuest"] = 14188,	-- Avenge Furien!
					["coord"] = { 44.9, 29.5, DESOLACE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				q(1437, {	-- Vahlarriel's Search (1/3)
					["qg"] = 5642,	-- Vahlarriel Demonslayer
					["coord"] = { 66.4, 11.8, DESOLACE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
				}),
				q(1465, {	-- Vahlarriel's Search (2/3)
					["providers"] = {
						{ "o", 50961 },	-- Malem Chest
						{ "i", 6479 },	-- Malem Pendant
					},
					["sourceQuest"] = 1437,	-- Vahlarriel's Search (1/3)
					["coord"] = { 56.6, 17.8, DESOLACE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
				}),
				q(1438, {	-- Vahlarriel's Search (3/3)
					["qg"] = 5642,	-- Vahlarriel Demonslayer
					["sourceQuest"] = 1465,	-- Vahlarriel's Search (2/3)
					["coord"] = { 66.4, 11.8, DESOLACE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
				}),
				warchiefscommand(q(28548, {	-- Warchief's Command: Desolace!
					["timeline"] = { ADDED_4_0_3 },
					["maps"] = { ORGRIMMAR, THUNDER_BLUFF },	-- Only found in Orgrimmar & Thunder Bluff in Cataclysm.
					["isBreadcrumb"] = true,
					-- #if BEFORE 7.3.5
					-- Cataclysm: Minimum is level 29. (TODO: Confirm this.)
					-- Cataclysm: Maximum is level 33. (TODO: Test max level)
					["lvl"] = { 29, 33 },
					-- #endif
				})),
				q(14264, {	-- Wetter Than Wet
					["qg"] = 35827,	-- Valishj
					["sourceQuest"] = 14260,	-- Going Deep
					["coord"] = { 30.9, 30.9, DESOLACE },
					["timeline"] = { ADDED_4_0_3 },
				}),
				q(14333, {	-- While You're Here
					["provider"] = { "o", 196393 },	-- Broken Relic
					["sourceQuest"] = 14328,	-- Three Princes
					["coord"] = { 12.5, 49.3, 67 },	-- quest starts in Maraudon's mapID
					["timeline"] = { ADDED_4_0_3 },
				}),
				q(14325, {	-- Will Work For Food
					["qg"] = 36163,	-- Khan Kammah
					["sourceQuest"] = 14318,	-- Delicate Negotiations
					["coord"] = { 71.7, 45.6, DESOLACE },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/5 Basilisk Flank
							["provider"] = { "i", 49170 },	-- Basilisk Flank
							["cr"] = 35409,	-- Revitalized Basilisk
						}),
					},
				}),
				q(14363, {	-- You'll Know It When You See It (A)
					["qg"] = 5396,	-- Captain Pentigast
					["description"] = "If you abandon this quest, you can pick it up again from Captain Pentigast at Nijel's Point.",
					["sourceQuest"] = 14361,	-- Peace of Mind
					["coord"] = { 66.7, 10.9, DESOLACE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Ancient Summoning Ritual
							["providers"] = {
								{ "i", 48951 },	-- Ancient Summoning Ritual
								{ "o", 195531 },	-- Demonic Chest
							},
							["coord"] = { 52.9, 29.0, DESOLACE },
						}),
					},
				}),
				q(14225, {	-- You'll Know It When You See It (H)
					["qg"] = 35298,	-- Sorrem
					["sourceQuest"] = 14223,	-- Peace of Mind
					["coord"] = { 44.8, 29.4, DESOLACE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Ancient Summoning Ritual
							["providers"] = {
								{ "i", 48951 },	-- Ancient Summoning Ritual
								{ "o", 195531 },	-- Demonic Chest
							},
							["coord"] = { 52.9, 29.0, DESOLACE },
						}),
					},
				}),
			}),
			n(RARES, {
				n(14229, {	-- Accursed Slitherblade
					["coords"] = {
						-- #if AFTER CATA
						{ 29.4, 13.8, DESOLACE },
						{ 32.6, 13.4, DESOLACE },
						{ 32.8, 5.60, DESOLACE },
						{ 34.2, 9.60, DESOLACE },
						{ 30.4, 18.8, DESOLACE },
						-- #else
						{ 35.8, 3.8, DESOLACE },
						{ 40.6, 12.8, DESOLACE },
						{ 29.6, 13.0, DESOLACE },
						{ 30.8, 19.8, DESOLACE },
						-- #endif
					},
				}),
				n(18241, {	-- Crusty
					["coords"] = {
						-- #if AFTER CATA
						{ 39.0, 18.2, DESOLACE },
						{ 36.0, 20.4, DESOLACE },
						{ 36.4, 23.4, DESOLACE },
						{ 36.0, 25.2, DESOLACE },
						{ 34.4, 24.0, DESOLACE },
						{ 34.6, 22.4, DESOLACE },
						{ 35.0, 20.0, DESOLACE },
						-- #else
						{ 34.8, 16.2, DESOLACE },
						{ 33.6, 19.6, DESOLACE },
						{ 31.0, 18.0, DESOLACE },
						{ 31.0, 21.8, DESOLACE },
						{ 30.0, 25.6, DESOLACE },
						{ 29.2, 31.6, DESOLACE },
						{ 32.8, 31.4, DESOLACE },
						{ 31.6, 29.4, DESOLACE },
						-- #endif
					},
					["timeline"] = { ADDED_2_2_0 },
				}),
				n(11688, {	-- Cursed Centaur
					["coords"] = {
						-- #if AFTER CATA
						{ 28.4, 64.6, DESOLACE },
						{ 27.4, 63.2, DESOLACE },
						{ 28.8, 62.6, DESOLACE },
						{ 30.2, 62.6, DESOLACE },
						{ 30.2, 61.0, DESOLACE },
						{ 30.6, 62.2, DESOLACE },
						-- #else
						{ 29.8, 62.6, DESOLACE },
						-- #endif
					},
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_TWO, n(218931, {	-- Dark Rider
					["provider"] = { "i", 216941 },	-- Ariden's Sigil
					["coord"] = { 65, 25, DESOLACE },
					["groups"] = {
						i(216950),	-- Creepy Dalaran Relic
					},
				})),
				-- #endif
				n(14228, {	-- Giggler
					["coords"] = {
						-- #if AFTER CATA
						{ 58.0, 9.00, DESOLACE },
						{ 60.4, 23.2, DESOLACE },
						{ 63.1, 34.3, DESOLACE },
						{ 66.2, 24.0, DESOLACE },
						-- #else
						{ 50.8, 9.2, DESOLACE },
						{ 57.4, 10.0, DESOLACE },
						{ 60.2, 24.8, DESOLACE },
						{ 66.6, 17.4, DESOLACE },
						{ 67.2, 23.4, DESOLACE },
						{ 63.8, 34.8, DESOLACE },
						-- #endif
					},
				}),
				n(14227, {	-- Hissperak
					["coords"] = {
						-- #if AFTER CATA
						{ 52.0, 48.0, DESOLACE },
						{ 46.8, 53.4, DESOLACE },
						{ 43.6, 60.6, DESOLACE },
						{ 42.0, 47.0, DESOLACE },
						{ 43.8, 43.0, DESOLACE },
						-- #else
						{ 55.6, 49.8, DESOLACE },
						{ 43.6, 42.6, DESOLACE },
						{ 41.8, 47.8, DESOLACE },
						{ 43.6, 51.0, DESOLACE },
						{ 46.6, 54.4, DESOLACE },
						{ 43.8, 61.8, DESOLACE },
						-- #endif
					},
				}),
				n(14226, {	-- Kaskk
					["coords"] = {
						-- #if AFTER CATA
						{ 51.2, 84.8, DESOLACE },
						{ 50.8, 80.8, DESOLACE },
						{ 51.0, 76.6, DESOLACE },
						{ 50.0, 72.0, DESOLACE },
						{ 55.2, 76.6, DESOLACE },
						{ 56.8, 74.6, DESOLACE },
						-- #else
						{ 49.6, 68.8, DESOLACE },
						{ 50.6, 75.8, DESOLACE },
						{ 51.0, 80.8, DESOLACE },
						{ 52.0, 85.8, DESOLACE },
						{ 57.0, 74.6, DESOLACE },
						-- #endif
					},
				}),
				n(14225, {	-- Prince Kellen
					["coords"] = {
						-- #if AFTER CATA
						{ 74.6, 12.4, DESOLACE },
						{ 75.4, 18.8, DESOLACE },
						{ 77.8, 23.8, DESOLACE },
						-- #else
						{ 74.6, 13.4, DESOLACE },
						{ 76.4, 18.6, DESOLACE },
						{ 77.8, 23.2, DESOLACE },
						-- #endif
					},
				}),
			}),
			n(TREASURES, {
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_TWO, i(213513, {	-- Libram of Deliverance
					["provider"] = { "o", 423695 },	-- Libram of Deliverance
					["coord"] = { 66.5, 7.5, DESOLACE },
					["timeline"] = { ADDED_1_15_1 },
					["classes"] = { PALADIN },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						recipe(416028),	-- Engrave Boots - Sacred Shield
					},
				})),
				-- #endif
				o(176582, {	-- Shellfish Trap
					["sourceQuest"] = 14334,	-- Blubbergut
					["description"] = "You can interract with Shellfish Traps only during the quest |cFFE50D12Fish in a Bucket|r (5421).\n\nIf you want to obtain the |cFFFFFFFFBig Iron Fishing Pole|r, |cFFFFFFFFDO NOT|r turn in the quest until you do.",
					["coords"] = {
						{ 20.3, 71.3, DESOLACE },
						{ 23.4, 77.1, DESOLACE },
						{ 18.1, 86.5, DESOLACE },
					},
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(6367, {	-- Big Iron Fishing Pole
							-- #if AFTER 10.0.0
							["collectible"] = false,
							-- #endif
						}),
						i(13545),	-- Shellfish
					},
				}),
			}),
			n(VENDORS, {
				n(12045, {	-- Hae'Wilani <Axecrafter>
					["coords"] = {
						-- #if AFTER CATA
						{ 25.6, 70.8, DESOLACE },
						-- #else
						{ 25.8, 71.0, DESOLACE },
						-- #endif
					},
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(12249, {	-- Merciless Axe
							["isLimited"] = true,
						}),
						i(12250, {	-- Midnight Axe
							["isLimited"] = true,
						}),
					},
				}),
				n(8150, {	-- Janet Hommers <Food & Drink>
					["coord"] = { 66.2, 6.6, DESOLACE },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(12240),	-- Recipe: Heavy Kodo Stew (RECIPE!)
						i(12233),	-- Recipe: Mystery Stew (RECIPE!)
					},
				}),
				n(9636, {	-- Kireena <Trade Goods>
					["coord"] = { 51.0, 53.4, DESOLACE },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(20973, {	-- Design: Blazing Citrine Ring (RECIPE!)
							["timeline"] = { ADDED_2_0_1, REMOVED_4_0_3 },	-- Now taught by trainer, recipe removed from the game.
							["isLimited"] = true,
						}),
						i(7114, {	-- Pattern: Azure Silk Gloves (RECIPE!)
							["isLimited"] = true,
						}),
						i(12232),	-- Recipe: Carrion Surprise (RECIPE!)
						i(12240),	-- Recipe: Heavy Kodo Stew (RECIPE!)
					},
				}),
				n(8878, {	-- Muuran <Superior Macecrafter>
					["coord"] = { 55.6, 56.6, DESOLACE },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(10858, {	-- Plans: Solid Iron Maul (RECIPE!)
							["isLimited"] = true,
						}),
					},
				}),
				n(12246, {	-- Super-Seller 680
					["coord"] = { 40.6, 79.2, DESOLACE },
					["timeline"] = { REMOVED_5_0_4 },
					["groups"] = {
						i(7087, {	-- Pattern: Crimson Silk Cloak (RECIPE!)
							["isLimited"] = true,
						}),
						i(4609, {	-- Recipe: Barbecued Buzzard Wing (RECIPE!)
							["isLimited"] = true,
						}),
						i(3734, {	-- Recipe: Big Bear Steak (RECIPE!)
							["timeline"] = { REMOVED_4_0_3 },
							["isLimited"] = true,
						}),
						i(12239, {	-- Recipe: Dragonbreath Chili (RECIPE!)
							["isLimited"] = true,
						}),
						i(12229, {	-- Recipe: Hot Wolf Ribs (RECIPE!)
							["isLimited"] = true,
						}),
						i(12227, {	-- Recipe: Lean Wolf Steak (RECIPE!)
							["timeline"] = { REMOVED_5_0_4 },
							["isLimited"] = true,
						}),
						i(12233, {	-- Recipe: Mystery Stew (RECIPE!)
							["isLimited"] = true,
						}),
						i(13310, {	-- Schematic: Accurate Scope (RECIPE!)
							["timeline"] = { REMOVED_5_0_4 },	-- Now taught by trainer, recipe removed from the game.
							["isLimited"] = true,
						}),
						i(7561, {	-- Schematic: Goblin Jumper Cables (RECIPE!)
							["isLimited"] = true,
						}),
					},
				}),
				n(12245, {	-- Vendor-Tron 1000
					["coord"] = { 60.2, 38.0, DESOLACE },
					["timeline"] = { REMOVED_5_0_4 },
					["sym"] = {{"select", "itemID",
						5973,	-- Pattern: Barbaric Leggings (RECIPE!)
						14635,	-- Pattern: Gem-studded Leather Belt (RECIPE!)
						7613,	-- Pattern: Green Leather Armor (RECIPE!)
					}},
					["groups"] = {
						i(12232, {	-- Recipe: Carrion Surprise (RECIPE!)
							["isLimited"] = true,
						}),
						i(5643, {	-- Recipe: Great Rage Potion (RECIPE!)
							["isLimited"] = true,
						}),
						i(12240, {	-- Recipe: Heavy Kodo Stew (RECIPE!)
							["isLimited"] = true,
						}),
						i(3735, {	-- Recipe: Hot Lion Chops (RECIPE!)
							["isLimited"] = true,
						}),
						i(12231, {	-- Recipe: Jungle Stew (RECIPE!)
							["isLimited"] = true,
						}),
						i(5489, {	-- Recipe: Lean Venison (RECIPE!)
							["timeline"] = { REMOVED_5_0_4 },
							["isLimited"] = true,
						}),
						i(12228, {	-- Recipe: Roast Raptor (RECIPE!)
							["isLimited"] = true,
						}),
					},
				}),
				n(12033, {	-- Wulan <Cooking Supplies>
					["coord"] = { 26.2, 69.8, DESOLACE },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(16072, {	-- Expert Cookbook
							["timeline"] = { REMOVED_3_1_0 },
							-- #if SEASON_OF_DISCOVERY
							["OnUpdate"] = [[function(t)
								if C_Seasons and C_Seasons.GetActiveSeason() == 2 then
									t.u = ]] .. SOD_PHASE_TWO .. [[;
								end
								t.OnUpdate = nil;
							end]],
							-- #endif
							["rank"] = 3,
						}),
						i(17062),	-- Recipe: Mithril Head Trout (RECIPE!)
						i(6369),	-- Recipe: Rockscale Cod (RECIPE!)
						i(21219),	-- Recipe: Sagefish Delight (RECIPE!)
						i(21099),	-- Recipe: Smoked Sagefish (RECIPE!)
					},
				}),
			}),
			n(ZONE_DROPS, {
				i(2620, {	-- Augural Shroud
					["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
					["crs"] = {
						-- #if AFTER 10.1.7
						4679,	-- Nether Maiden
						-- #else
						4684,	-- Nether Sorceress
						-- #endif
					},
					["coords"] = {
						-- #if AFTER 10.1.7
						{ 52.6, 83.8, DESOLACE },
						{ 50.6, 77.0, DESOLACE },
						{ 50.2, 71.6, DESOLACE },
						-- #else
						{ 52.2, 83.6, DESOLACE },
						{ 48.2, 75.8, DESOLACE },
						{ 53.2, 71.0, DESOLACE },
						-- #endif
					},
				}),
				i(6074, {	-- War Horn Mouthpiece
					["timeline"] = { REMOVED_4_0_3 },
					["crs"] = {
						6070,	-- Maraudine Khan Advisor
						6069,	-- Maraudine Khan Guard
						4659,	-- Maraudine Marauder
						4656,	-- Maraudine Mauler
						4654,	-- Maraudine Scout
						4658,	-- Maraudine Stormer
						4657,	-- Maraudine Windchaser
						4655,	-- Maraudine Wrangler
					},
				}),
			}),
		},
	}),
}));
