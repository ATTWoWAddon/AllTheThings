---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(MAP.KALIMDOR, {
	m(MAP.DESOLACE, {
		["lore"] =
			"Centaur control this rugged wilderness. Desolace is a land of craggy rock faces and stormy skies, and the rampaging centaur let no other race survive. Five centaur tribes strike from individual strongholds, but the great fortress of Maraudon occasionally plays host to them all.",
		["icon"] = 236742,
		["groups"] = {
			n(ACHIEVEMENTS, {
				ach(848),	-- Explore Desolace
			}),
			explorationHeader({
				visit_exploration(2405,{coord={41.6,29.8,MAP.DESOLACE}}),	-- Ethel Rethor
				exploration(606),	-- Gelkis Village
				exploration(596),	-- Kodo Graveyard
				exploration(609),	-- Kolkar Village
				exploration(2407),	-- Kormek's Hut
				exploration(604),	-- Magram Village / Shok'Thokar [CATA+]
				exploration(602),	-- Mannoroc Coven
				visit_exploration(2100,{coord={29.4,62.3,MAP.DESOLACE}}),	-- Maraudon
				exploration(608),	-- Nijel's Point
				exploration(2406),	-- Ranazjar Isle
				exploration(603),	-- Sargeron
				exploration(2198),	-- Shadowbreak Ravine
				exploration(2408),	-- Shadowprey Village
				exploration(2404),	-- Tethris Aran
				exploration(599),	-- Thunder Axe Fortress
				exploration(607),	-- Valley of Spears
			}),
			n(FACTIONS, {
				faction(FACTION_GELKIS_CLAN_CENTAUR, {	-- Gelkis Clan Centaur
					["icon"] = 134151,
					["minReputation"] = { FACTION_GELKIS_CLAN_CENTAUR, HONORED },	-- Gelkis Clan Centaur, must be Honored.
					["maxReputation"] = { FACTION_MAGRAM_CLAN_CENTAUR, HONORED },	-- Magram Clan Centaur, must be lower than Honored.
					["OnTooltip"] = [[_.OnTooltipDB.DesolaceCentaurs]],
				}),
				faction(FACTION_MAGRAM_CLAN_CENTAUR, {	-- Magram Clan Centaur
					["icon"] = 134151,
					["minReputation"] = { FACTION_MAGRAM_CLAN_CENTAUR, HONORED },	-- Magram Clan Centaur, must be Honored.
					["maxReputation"] = { FACTION_GELKIS_CLAN_CENTAUR, HONORED },	-- Gelkis Clan Centaur, must be lower than Honored.
					["OnTooltip"] = [[_.OnTooltipDB.DesolaceCentaurs]],
				}),
			}),
			n(FLIGHT_PATHS, {
				fp(37, {	-- Nijel's Point, Desolace
					["cr"] = 6706,	-- Baritanas Skyriver <Hippogryph Master>
					["coord"] = { 64.7, 10.5, MAP.DESOLACE },
					["races"] = ALLIANCE_ONLY,
				}),
				fp(38, {	-- Shadowprey Village, Desolace
					["cr"] = 6726,	-- Thalon <Wind Rider Master>
					["coord"] = { 21.6, 74.0, MAP.DESOLACE },
					["races"] = HORDE_ONLY,
				}),
			}),
			lockpicking({
				o(179491, {	-- Waterlogged Footlocker
					["coord"] = { 36.9, 24.1, MAP.DESOLACE },
					["requireSkill"] = LOCKPICKING,
					["learnedAt"] = 150,
				}),
			}),
			n(QUESTS, {
				q(1431, {	-- Alliance Relations (1/4)
					["qg"] = 5639,	-- Craven Drok
					["coord"] = { 49.8, 47.8, MAP.ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["lvl"] = 30,
				}),
				q(1432, {	-- Alliance Relations (2/4)
					["sourceQuest"] = 1431,	-- Alliance Relations (1/4)
					["qg"] = 5640,	-- Keldran
					["coord"] = { 22.4, 52.8, MAP.ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["lvl"] = 30,
				}),
				q(1433, {	-- Alliance Relations (3/4)
					["sourceQuest"] = 1432,	-- Alliance Relations (2/4)
					["qg"] = 5641,	-- Takata Steelblade
					["coord"] = { 52.6, 54.2, MAP.DESOLACE },
					["maps"] = { MAP.ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["lvl"] = 30,
				}),
				q(1436, {	-- Alliance Relations (4/4)
					["sourceQuests"] = {
						1434,	-- Befouled by Satyr
						1435,	-- The Burning of Spirits
					},
					["qg"] = 5641,	-- Takata Steelblade
					["coord"] = { 52.6, 54.2, MAP.DESOLACE },
					["maps"] = { MAP.ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["lvl"] = 30,
					["groups"] = {
						i(6744),	-- Gloves of Kapelan
						i(6745),	-- Swiftrunner Cape
					},
				}),
				q(1386, {	-- Assault on the Kolkar
					["sourceQuest"] = 1385,	-- Brutal Politics
					["qg"] = 5398,	-- Warug
					["coord"] = { 74.8, 68.0, MAP.DESOLACE },
					["minReputation"] = { FACTION_MAGRAM_CLAN_CENTAUR, FRIENDLY },	-- Magram Clan Centaur, Friendly.
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
				q(1434, {	-- Befouled by Satyr
					["sourceQuest"] = 1432,	-- Alliance Relations (2/4)
					["qg"] = 5641,	-- Takata Steelblade
					["coord"] = { 52.6, 54.2, MAP.DESOLACE },
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
				q(5821, {	-- Bodyguard for Hire
					["qg"] = 11625,	-- Cork Gizelton
					["coord"] = { 60.2, 38.2, MAP.DESOLACE },
					["lvl"] = 30,
					["groups"] = {
						i(15689),	-- Trader's Ring
					},
				}),
				q(5501, {	-- Bone Collector
					["qg"] = 11438,	-- Bibbly F'utzbuckle
					["coord"] = { 62.3, 39.0, MAP.DESOLACE },
					["lvl"] = 33,
					["groups"] = {
						objective(1, {	-- 0/10 Kodo Bone
							["providers"] = {
								{ "i",  13703 },	-- Kodo Bone
								{ "o", 176751 },	-- Kodo Bones
							},
						}),
						i(15690),	-- Kodobone Necklace
					},
				}),
				q(6027, {	-- Book of the Ancients
					["sourceQuest"] = 5741,	-- Sceptre of Light
					["qg"] = 11863,	-- Azore Aldamort <The Argent Dawn>
					["coord"] = { 38.8, 27.2, MAP.DESOLACE },
					["lvl"] = 30,
					["groups"] = {
						objective(1, {	-- 0/1 Book of the Ancients
							["providers"] = {
								{ "i",  15803 },	-- Book of the Ancients
								{ "o", 177673 },	-- Serpent Statue
							},
							["coord"] = { 28.2, 6.4, MAP.DESOLACE },
							["cost"] = { { "i", 15766, 1 } },	-- Gem of the Serpent
							["cr"] = 12369,	-- Lord Kragaru
						}),
						i(16791),	-- Silkstream Cuffs
						i(16793),	-- Arcmetal Shoulders
					},
				}),
				q(1369, {	-- Broken Tears
					["sourceQuests"] = {
						1386,	-- Assault on the Kolkar
						1367,	-- Magram Alliance
					},
					["qg"] = 5398,	-- Warug
					["coord"] = { 74.8, 68.0, MAP.DESOLACE },
					["minReputation"] = { FACTION_MAGRAM_CLAN_CENTAUR, FRIENDLY },	-- Magram Clan Centaur, Friendly.
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
					["coord"] = { 42.4, 24.4, MAP.STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 34,
				}),
				q(1385, {	-- Brutal Politics
					["description"] = "Once you complete 'Khan Hratha' for the Gelkis Clan, you can accept and start working on this quest. Bare in mind that it is quite-the-grind to get back to Friendly. Best of luck to you!",
					["qg"] = 5396,	-- Captain Pentigast
					["coord"] = { 66.7, 11.0, MAP.DESOLACE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
				}),
				q(5386, {	-- Catch of the Day
					["qg"] = 11259,	-- Nataka Longhorn
					["coord"] = { 55.4, 55.8, MAP.DESOLACE },
					["cost"] = { { "i", 13546, 2 } },	-- Bloodbelly Fish
					["races"] = HORDE_ONLY,
					["lvl"] = 32,
					["groups"] = {
						i(3858),	-- Mithril Ore
						i(4304),	-- Thick Leather
						i(4338),	-- Mageweave Cloth
					},
				}),
				q(1387, {	-- Centaur Bounty [A]
					["qg"] = 5752,	-- Corporal Melkins
					["coord"] = { 66.7, 10.9, MAP.DESOLACE },
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
						i(6790),	-- Ring of Calm
					},
				}),
				q(1366, {	-- Centaur Bounty [H]
					["sourceQuest"] = 1365,	-- Khan Dez'hepah
					["qg"] = 5395,	-- Felgur Twocuts
					["coord"] = { 56.2, 59.4, MAP.DESOLACE },
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
						i(6780),	-- Lilac Sash
						i(6784),	-- Braced Handguards
					},
				}),
				q(6161, {	-- Claim Rackmore's Treasure!
					["providers"] = {
						{ "o", 177787 },	-- Rackmore's Log
						{ "o", 177786 },	-- Rackmore's Chest
					},
					["coord"] = { 36.1, 30.4, MAP.DESOLACE },
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
						i(16788),	-- Captain Rackmore's Wheel
						i(16789),	-- Captain Rackmore's Tiller
					},
				}),
				q(6142, {	-- Clam Bait
					["qg"] = 12031,	-- Mai'Lahii
					["coord"] = { 22.6, 72.0, MAP.DESOLACE },
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
						i(15585),	-- Pardoc Grips
						i(15587),	-- Ringtail Girdle
						i(15588),	-- Bracesteel Belt
					},
				}),
				q(261, {	-- Down the Scarlet Path (1/2)
					["sourceQuest"] = 6141,	-- Brother Anton
					["qg"] = 1182,	-- Brother Anton <Scarlet Crusade Emissary>
					["coord"] = { 66.4, 7.8, MAP.DESOLACE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 34,
					["groups"] = {
						objective(1, {	-- 0/30 Undead Ravager slain
							["provider"] = { "n", 11561 },	-- Undead Ravager
						}),
					},
				}),
				q(1052, {	-- Down the Scarlet Path (2/2)
					["sourceQuest"] = 261,	-- Down the Scarlet Path (1/2)
					["providers"] = {
						{ "n", 1182 },	-- Brother Anton <Scarlet Crusade Emissary>
						{ "i", 5539 },	-- Letter of Commendation
					},
					["coord"] = { 66.5, 7.9, MAP.DESOLACE },
					["maps"] = { MAP.HILLSBRAD_FOOTHILLS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 34,
				}),
				q(5421, {	-- Fish in a Bucket
					["description"] =
						"You must be on the quest 'Catch of the Day' to accept this quest. It becomes unavailable after you turn in that quest as well.\n\nConsideration: You can make 55s for every 5 Shellfish you turn in and sell the fish on the AH. Up to you if your time is worth more or not. On densely populated servers, probably not a good idea.",
					["cost"] = { { "i", 13545, 5 } },	-- Shellfish
					["repeatable"] = true,
					["qg"] = 11317,	-- Jinar'Zillen
					["coord"] = { 22.4, 73.0, MAP.DESOLACE },
					["races"] = HORDE_ONLY,
					["lvl"] = 25,
					["groups"] = {
						objective(1, {	-- 0/5 Shellfish
							["providers"] = {
								{ "i", 13545 },	-- Shellfish
								{ "o", 176582 },	-- Shellfish Trap
							},
						}),
						i(13546),	-- Bloodbelly Fish
					},
				}),
				q(1368, {	-- Gelkis Alliance
					["qg"] = 5412,	-- Gurda Wildmane
					["coord"] = { 56.2, 59.6, MAP.DESOLACE },
					["races"] = HORDE_ONLY,
					["lvl"] = 30,
				}),
				q(6132, {	-- Get Me Out of Here!
					["qg"] = 12277,	-- Melizza Brimbuzzle
					["coord"] = { 33.9, 53.5, MAP.DESOLACE },
					["lvl"] = 34,
				}),
				q(6134, {	-- Ghost-o-plasm Round Up
					["qg"] = 6019,	-- Hornizz Brimbuzzle
					["coord"] = { 47.8, 61.8, MAP.DESOLACE },
					["lvl"] = 34,
					["groups"] = {
						objective(1, {	-- 0/8 Ghost-o-plasm
							["provider"] = { "i", 15849 },	-- Ghost-o-plasm
							["coord"] = { 65.0, 91.0, MAP.DESOLACE },
							["cost"] = { { "i", 15848, 1 } },	-- Crate of Ghost Magnets
							["cr"] = 11560,	-- Magrami Spectre
						}),
						i(15864),	-- Condor Bracers
						i(15865),	-- Anchorhold Buckler
					},
				}),
				q(5943, {	-- Gizelton Caravan
					["qg"] = 11626,	-- Rigger Gizelton
					["coord"] = { 40.4, 79.4, MAP.DESOLACE },
					["lvl"] = 32,
					["groups"] = {
						i(15691),	-- Sidegunner Shottie
						i(15692),	-- Kodo Brander
						i(15695),	-- Studded Ring Shield
					},
				}),
				q(1371, {	-- Gizmo for Warug
					["sourceQuest"] = 1369,	-- Broken Tears
					["qg"] = 5398,	-- Warug
					["coord"] = { 74.8, 68.0, MAP.DESOLACE },
					["minReputation"] = { FACTION_MAGRAM_CLAN_CENTAUR, FRIENDLY },	-- Magram Clan Centaur, Friendly.
					["cost"] = { { "i", 4392, 1 } },	-- Advanced Target Dummy
					["lvl"] = 30,
				}),
				q(5381, {	-- Hand of Iruxos
					["qg"] = 11624,	-- Taiga Wisemane
					["coord"] = { 25.8, 68.2, MAP.DESOLACE },
					["races"] = HORDE_ONLY,
					["lvl"] = 32,
					["groups"] = {
						objective(1, {	-- 0/1 Demon Box
							["providers"] = {
								{ "i",  13542 },	-- Demon Box
								{ "i",  14523 },	-- Demon Pick
								{ "o", 176581 },	-- Hand of Iruxos Crystal
							},
							["coord"] = { 55.0, 26.4, MAP.DESOLACE },
							["cr"] = 11876,	-- Demon Spirit
						}),
					},
				}),
				q(5763, {	-- Hunting in Stranglethorn
					["providers"] = {
						{ "n", 11877 },	-- Roon Wildmane
						{ "i", 14546 },	-- Roon's Kodo Horn
					},
					["coord"] = { 25.0, 72.2, MAP.DESOLACE },
					["maps"] = { MAP.STRANGLETHORN_VALE },
					["races"] = HORDE_ONLY,
					["lvl"] = 28,
				}),
				q(1365, {	-- Khan Dez'hepah
					["qg"] = 5395,	-- Felgur Twocuts
					["coord"] = { 56.2, 59.4, MAP.DESOLACE },
					["races"] = HORDE_ONLY,
					["lvl"] = 30,
					["groups"] = {
						objective(1, {	-- 0/1 Khan Dez'hepah's Head
							["provider"] = { "i", 6066 },	-- Khan Dez'hepah's Head
							["coords"] = {
								{ 73.2, 42.6, MAP.DESOLACE },
								{ 74.6, 48.8, MAP.DESOLACE },
							},
							["cr"] = 5600,	-- Khan Dez'hepah
						}),
					},
				}),
				q(1380, {	-- Khan Hratha (Gelkis)
					["sourceQuest"] = 1374,	-- Khan Jehn
					["qg"] = 5397,	-- Uthek the Wise
					["coord"] = { 36.2, 79.2, MAP.DESOLACE },
					["minReputation"] = { FACTION_GELKIS_CLAN_CENTAUR, FRIENDLY },	-- Gelkis Clan Centaur, Friendly.
					["lvl"] = 30,
					["groups"] = {
						objective(1, {	-- 0/1 Maraudine Key Fragment
							["provider"] = { "i", 6077 },	-- Maraudine Key Fragment
							["cost"] = { { "i", 6074, 1 } },	-- War Horn Mouthpiece
							["coord"] = { 29.8, 52.8, MAP.DESOLACE },
							["cr"] = 5402,	-- Khan Hratha
						}),
						i(6773),	-- Gelkis Marauder Chain
						i(6774),	-- Uthek's Finger
					},
				}),
				q(1381, {	-- Khan Hratha (Magram)
					["sourceQuest"] = 1375,	-- Khan Shaka
					["qg"] = 5398,	-- Warug
					["coord"] = { 74.8, 68.0, MAP.DESOLACE },
					["minReputation"] = { FACTION_MAGRAM_CLAN_CENTAUR, FRIENDLY },	-- Magram Clan Centaur, Friendly.
					["lvl"] = 30,
					["groups"] = {
						objective(1, {	-- 0/1 Maraudine Key Fragment
							["provider"] = { "i", 6077 },	-- Maraudine Key Fragment
							["cost"] = { { "i", 6074, 1 } },	-- War Horn Mouthpiece
							["coord"] = { 29.8, 52.8, MAP.DESOLACE },
							["cr"] = 5402,	-- Khan Hratha
						}),
						i(6788),	-- Magram Hunter's Belt
						i(6789),	-- Ceremonial Centaur Blanket
					},
				}),
				q(1374, {	-- Khan Jehn
					["sourceQuest"] = 1373,	-- Ongeku
					["qg"] = 5397,	-- Uthek the Wise
					["coord"] = { 36.2, 79.2, MAP.DESOLACE },
					["minReputation"] = { FACTION_GELKIS_CLAN_CENTAUR, FRIENDLY },	-- Gelkis Clan Centaur, Friendly.
					["lvl"] = 30,
					["groups"] = {
						objective(1, {	-- 0/1 Khan Jehn's Head
							["provider"] = { "i", 6072 },	-- Khan Jehn's Head
							["coord"] = { 66.6, 79.8, MAP.DESOLACE },
							["cr"] = 5601,	-- Khan Jehn
						}),
					},
				}),
				q(1375, {	-- Khan Shaka
					["sourceQuest"] = 1371,	-- Gizmo for Warug
					["qg"] = 5398,	-- Warug
					["coord"] = { 74.8, 68.0, MAP.DESOLACE },
					["minReputation"] = { FACTION_MAGRAM_CLAN_CENTAUR, FRIENDLY },	-- Magram Clan Centaur, Friendly.
					["lvl"] = 30,
					["groups"] = {
						objective(1, {	-- 0/1 Khan Shaka's Head
							["provider"] = { "i", 6073 },	-- Khan Shaka's Head
							["coord"] = { 40.6, 95.6, MAP.DESOLACE },
							["cr"] = 5602,	-- Khan Shaka
						}),
					},
				}),
				q(5561, {	-- Kodo Roundup
					["qg"] = 11596,	-- Smeed Scrabblescrew
					["coord"] = { 60.8, 61.8, MAP.DESOLACE },
					["lvl"] = 30,
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
						i(15697),	-- Kodo Rustler Boots
						i(15698),	-- Wrangling Spaulders
					},
				}),
				q(1367, {	-- Magram Alliance
					["qg"] = 5412,	-- Gurda Wildmane
					["coord"] = { 56.2, 59.6, MAP.DESOLACE },
					["races"] = HORDE_ONLY,
					["lvl"] = 30,
				}),
				q(1373, {	-- Ongeku
					["sourceQuest"] = 1370,	-- Stealing Supplies
					["qg"] = 5397,	-- Uthek the Wise
					["coord"] = { 36.2, 79.2, MAP.DESOLACE },
					["minReputation"] = { FACTION_GELKIS_CLAN_CENTAUR, FRIENDLY },	-- Gelkis Clan Centaur, Friendly.
					["maps"] = { MAP.SWAMP_OF_SORROWS },
					["lvl"] = 30,
					["groups"] = {
						objective(1, {	-- 0/1 Draenethyst Shard
							["provider"] = { "i", 6190 },	-- Draenethyst Shard
							["coord"] = { 65.0, 21.0, MAP.SWAMP_OF_SORROWS },
							["cr"] = 5622,	-- Ongeku
						}),
					},
				}),
				q(6143, {	-- Other Fish to Fry
					["qg"] = 12340,	-- Drulzegar Skraghook
					["coord"] = { 23.2, 72.8, MAP.DESOLACE },
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
				q(5581, {	-- Portals of the Legion (H)
					["sourceQuest"] = 5381,	-- Hand of Iruxos
					["qgs"] = {
						11624,	-- Taiga Wisemane
					},
					["coords"] = {
						{ 25.8, 68.2, MAP.DESOLACE },
					},
					["races"] = HORDE_ONLY,
					["lvl"] = 32,
					["groups"] = {
						objective(1, {	-- 0/6 Portals Banished
							["providers"] = {
								{ "i",  14547 },	-- Hand of Iruxos
								{ "o", 177243 },	-- Demon Portal
							},
							["cr"] = 11937,	-- Demon Portal Guardian
						}),
						i(16794),	-- Gripsteel Wristguards
						i(16873),	-- Braidfur Gloves
					},
				}),
				q(1384, {	-- Raid on the Kolkar
					["sourceQuest"] = 1368,	-- Gelkis Alliance
					["qg"] = 5397,	-- Uthek the Wise
					["coord"] = { 36.2, 79.2, MAP.DESOLACE },
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
					["sourceQuest"] = 1453,	-- Reclaimers' Business in Desolace
					["qg"] = 5638,	-- Kreldig Ungor
					["coord"] = { 66.2, 9.6, MAP.DESOLACE },
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
					["sourceQuest"] = 1458,	-- Reagents for Reclaimers Inc. (1/4)
					["qg"] = 5638,	-- Kreldig Ungor
					["coord"] = { 66.2, 9.6, MAP.DESOLACE },
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
					["sourceQuest"] = 1459,	-- Reagents for Reclaimers Inc. (2/4)
					["qg"] = 5638,	-- Kreldig Ungor
					["coord"] = { 66.2, 9.6, MAP.DESOLACE },
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
					["sourceQuest"] = 1466,	-- Reagents for Reclaimers Inc. (3/4)
					["providers"] = {
						{ "n", 5638 },	-- Kreldig Ungor
						{ "i", 6253 },	-- Leftwitch's Package
					},
					["coord"] = { 66.2, 9.6, MAP.DESOLACE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
					["groups"] = {
						i(6793),	-- Auric Bracers
						i(6794),	-- Stormfire Gauntlets / Tawny Gloves [LEGION+]
					},
				}),
				q(1453, {	-- Reclaimers' Business in Desolace
					["qg"] = 5637,	-- Roetten Stonehammer
					["coord"] = { 69.6, 21.0, MAP.IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 30,
				}),
				q(1361, {	-- Regthar Deathgate
					["qgs"] = {
						2229,	-- Krusk
						4485,	-- Belgrom Rockmaul
					},
					["coords"] = {
						{ 63.24, 20.68, MAP.HILLSBRAD_FOOTHILLS },	-- Krusk
						{ 75.0, 34.2, MAP.ORGRIMMAR },	-- Belgrom Rockmaul
					},
					["maps"] = { MAP.THE_BARRENS },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 30,
				}),
				q(1440, {	-- Return to Vahlarriel
					["sourceQuest"] = 1439,	-- Search for Tyranis
					["qg"] = 5644,	-- Dalinda Malem
					["coord"] = { 54.8, 26.2, MAP.DESOLACE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
					["groups"] = {
						i(9687),	-- Grappler's Belt
						i(9698),	-- Gloves of Insight
						i(9699),	-- Garrison Cloak
						i(11884),	-- Moonlit Amice
					},
				}),
				q(5741, {	-- Sceptre of Light
					["qg"] = 11863,	-- Azore Aldamort <The Argent Dawn>
					["coord"] = { 38.8, 27.2, MAP.DESOLACE },
					["lvl"] = 30,
					["groups"] = {
						objective(1, {	-- 0/1 Sceptre of Light
							["provider"] = { "i", 15750 },	-- Sceptre of Light
							["coord"] = { 55.2, 30.0, MAP.DESOLACE },
							["cr"] = 13019,	-- Burning Blade Seer
						}),
					},
				}),
				q(1439, {	-- Search for Tyranis
					["sourceQuest"] = 1438,	-- Vahlarriel's Search (3/3)
					["qg"] = 5644,	-- Dalinda Malem
					["coord"] = { 54.8, 26.2, MAP.DESOLACE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
					["groups"] = {
						objective(1, {	-- 0/1 Tyranis' Pendant
							["provider"] = { "i", 6767 },	-- Tyranis' Pendant
							["coord"] = { 53.0, 28.4, MAP.DESOLACE },
							["cr"] = 5643,	-- Tyranis Malem
						}),
					},
				}),
				q(1370, {	-- Stealing Supplies
					["sourceQuest"] = 1384,	-- Raid on the Kolkar
					["qg"] = 5397,	-- Uthek the Wise
					["coord"] = { 36.2, 79.2, MAP.DESOLACE },
					["minReputation"] = { FACTION_GELKIS_CLAN_CENTAUR, FRIENDLY },	-- Gelkis Clan Centaur, Friendly.
					["lvl"] = 30,
					["groups"] = {
						objective(1, {	-- 0/6 Crudely Dried Meat
							["providers"] = {
								{ "i", 6069 },	-- Crudely Dried Meat
								{ "o", 22245 },	-- Sack of Meat
							},
						}),
						i(3463, {	-- Silver Star [Classic] / Broken Silver Star [TBC]
							["timeline"] = { ADDED_1_11_1 },
						}),
						i(3464),	-- Feathered Arrow
						i(3465),	-- Exploding Shot
					},
				}),
				q(1382, {	-- Strange Alliance
					["description"] = "Once you complete 'Khan Hratha' for the Magram Clan, you can accept and start working on this quest. Bare in mind that it is quite-the-grind to get back to Friendly. Best of luck to you!",
					["qg"] = 5396,	-- Captain Pentigast
					["coord"] = { 66.7, 11.0, MAP.DESOLACE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
				}),
				q(1435, {	-- The Burning of Spirits
					["sourceQuest"] = 1433,	-- Alliance Relations (3/4)
					["qg"] = 4498,	-- Maurin Bonesplitter
					["coord"] = { 52.2, 53.4, MAP.DESOLACE },
					["races"] = HORDE_ONLY,
					["lvl"] = 25,
					["groups"] = {
						objective(1, {	-- 0/15 Infused Burning Gem
							["provider"] = { "i", 6435 },	-- Infused Burning Gem
							["coord"] = { 55.0, 26.7, MAP.DESOLACE },
							["cost"] = { { "i", 6436, 1 } },	-- Burning Gem
							["crs"] = {
								4665,	-- Burning Blade Adept
								4663,	-- Burning Blade Augur
								4666,	-- Burning Blade Felsworn
								4664,	-- Burning Blade Reaver
							},
						}),
						-- i(6766),	-- Flayed Demon Skin (old2) [TODO: Double check that this actually is given... strange name.]
					},
				}),
				q(1480, {	-- The Corrupter (1/5)
					["provider"] = { "i", 20310 },	-- Flayed Demon Skin
					["races"] = HORDE_ONLY,
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
					["lvl"] = 25,
				}),
				q(1481, {	-- The Corrupter (2/5)
					["sourceQuest"] = 1480,	-- The Corrupter (1/5)
					["qg"] = 4498,	-- Maurin Bonesplitter
					["coord"] = { 52.2, 53.4, MAP.DESOLACE },
					["races"] = HORDE_ONLY,
					["lvl"] = 25,
					["groups"] = {
						objective(1, {	-- 0/1 Shadowstalker Scalp
							["provider"] = { "i", 6441 },	-- Shadowstalker Scalp
							["coord"] = { 75.8, 20.0, MAP.DESOLACE },
							["cr"] = 4674,	-- Hatefury Shadowstalker
						}),
					},
				}),
				q(1482, {	-- The Corrupter (3/5)
					["sourceQuest"] = 1481,	-- The Corrupter (2/5)
					["qg"] = 4498,	-- Maurin Bonesplitter
					["coord"] = { 52.2, 53.4, MAP.DESOLACE },
					["races"] = HORDE_ONLY,
					["lvl"] = 25,
					["groups"] = {
						objective(1, {	-- 0/1 Oracle Crystal
							["provider"] = { "i", 6442 },	-- Oracle Crystal
							["coord"] = { 31.0, 15.4, MAP.DESOLACE },
							["cr"] = 4718,	-- Slitherblade Oracle
						}),
					},
				}),
				q(1484, {	-- The Corrupter (4/5)
					["sourceQuest"] = 1482,	-- The Corrupter (3/5)
					["qg"] = 4498,	-- Maurin Bonesplitter
					["coord"] = { 52.2, 53.4, MAP.DESOLACE },
					["races"] = HORDE_ONLY,
					["lvl"] = 25,
				}),
				q(1488, {	-- The Corrupter (5/5)
					["sourceQuest"] = 1484,	-- The Corrupter (4/5)
					["qg"] = 5641,	-- Takata Steelblade
					["coord"] = { 52.6, 54.2, MAP.DESOLACE },
					["races"] = HORDE_ONLY,
					["lvl"] = 25,
					["groups"] = {
						objective(1, {	-- 0/1 Lord Azrethoc slain
							["provider"] = { "n", 5760 },	-- Lord Azrethoc
						}),
						objective(2, {	-- 0/1 Jugkar Grim'rod slain
							["provider"] = { "n", 5771 },	-- Jugkar Grim'rod
							["coord"] = { 55.8, 77.6, MAP.DESOLACE },
						}),
						i(6746),	-- Basalt Buckler
						i(6747),	-- Enforcer Pauldrons
					},
				}),
				q(1454, {	-- The Karnitol Shipwreck (1/4)
					["sourceQuests"] = {
						1453,	-- Reclaimers' Business in Desolace
					},
					["qg"] = 5638,	-- Kreldig Ungor
					["coord"] = { 66.2, 9.6, MAP.DESOLACE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
				}),
				q(1455, {	-- The Karnitol Shipwreck (2/4)
					["sourceQuest"] = 1454,	-- The Karnitol Shipwreck (1/4)
					["provider"] = { "o", 35251 },	-- Karnitol's Chest
					["coord"] = { 36.1, 30.4, MAP.DESOLACE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
				}),
				q(1456, {	-- The Karnitol Shipwreck (3/4)
					["sourceQuest"] = 1455,	-- The Karnitol Shipwreck (2/4)
					["qg"] = 5638,	-- Kreldig Ungor
					["coord"] = { 66.2, 9.6, MAP.DESOLACE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
					["groups"] = {
						objective(1, {	-- 0/1 Karnitol's Satchel
							["provider"] = { "i", 6245 },	-- Karnitol's Satchel
							["crs"] = {
								4719,	-- Slitherblade Sea Witch
								4716,	-- Slitherblade Tidehunter
							},
						}),
					},
				}),
				q(1457, {	-- The Karnitol Shipwreck (4/4)
					["sourceQuest"] = 1456,	-- The Karnitol Shipwreck (3/4)
					["providers"] = {
						{ "n", 5638 },	-- Kreldig Ungor
						{ "i", 6245 },	-- Karnitol's Satchel
					},
					["coord"] = { 66.2, 9.6, MAP.DESOLACE },
					["maps"] = { MAP.IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
					["groups"] = {
						i(6791),	-- Hellion Boots
						i(6792),	-- Sanguine Pauldrons
					},
				}),
				q(1362, {	-- The Kolkar of Desolace
					["sourceQuest"] = 1361,	-- Regthar Deathgate
					["qg"] = 3389,	-- Regthar Deathgate
					["coord"] = { 45.2, 28.4, MAP.THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 30,
				}),
				q(1437, {	-- Vahlarriel's Search (1/3)
					["qg"] = 5642,	-- Vahlarriel Demonslayer
					["coord"] = { 66.4, 11.8, MAP.DESOLACE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
				}),
				q(1465, {	-- Vahlarriel's Search (2/3)
					["sourceQuest"] = 1437,	-- Vahlarriel's Search (1/3)
					["providers"] = {
						{ "o", 50961 },	-- Malem Chest
						{ "i", 6479 },	-- Malem Pendant
					},
					["coord"] = { 56.6, 17.8, MAP.DESOLACE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
				}),
				q(1438, {	-- Vahlarriel's Search (3/3)
					["sourceQuest"] = 1465,	-- Vahlarriel's Search (2/3)
					["qg"] = 5642,	-- Vahlarriel Demonslayer
					["coord"] = { 66.4, 11.8, MAP.DESOLACE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
				}),
			}),
			n(RARES, {
				n(14229, {	-- Accursed Slitherblade
					["coords"] = {
						{ 35.8, 3.8, MAP.DESOLACE },
						{ 40.6, 12.8, MAP.DESOLACE },
						{ 29.6, 13.0, MAP.DESOLACE },
						{ 30.8, 19.8, MAP.DESOLACE },
					},
				}),
				n(11688, {	-- Cursed Centaur
					["coords"] = {
						{ 29.8, 62.6, MAP.DESOLACE },
					},
				}),
				n(14228, {	-- Giggler
					["coords"] = {
						{ 50.8, 9.2, MAP.DESOLACE },
						{ 57.4, 10.0, MAP.DESOLACE },
						{ 60.2, 24.8, MAP.DESOLACE },
						{ 66.6, 17.4, MAP.DESOLACE },
						{ 67.2, 23.4, MAP.DESOLACE },
						{ 63.8, 34.8, MAP.DESOLACE },
					},
				}),
				n(14227, {	-- Hissperak
					["coords"] = {
						{ 55.6, 49.8, MAP.DESOLACE },
						{ 43.6, 42.6, MAP.DESOLACE },
						{ 41.8, 47.8, MAP.DESOLACE },
						{ 43.6, 51.0, MAP.DESOLACE },
						{ 46.6, 54.4, MAP.DESOLACE },
						{ 43.8, 61.8, MAP.DESOLACE },
					},
				}),
				n(14226, {	-- Kaskk
					["coords"] = {
						{ 49.6, 68.8, MAP.DESOLACE },
						{ 50.6, 75.8, MAP.DESOLACE },
						{ 51.0, 80.8, MAP.DESOLACE },
						{ 52.0, 85.8, MAP.DESOLACE },
						{ 57.0, 74.6, MAP.DESOLACE },
					},
				}),
				n(14225, {	-- Prince Kellen
					["coords"] = {
						{ 74.6, 13.4, MAP.DESOLACE },
						{ 76.4, 18.6, MAP.DESOLACE },
						{ 77.8, 23.2, MAP.DESOLACE },
					},
				}),
			}),
			n(TREASURES, {
				o(176582, {	-- Shellfish Trap
					["description"] = "You can interact with Shellfish Traps only during the quest |cFFE50D12Fish in a Bucket|r (5421).\n\nIf you want to obtain the |cFFFFFFFFBig Iron Fishing Pole|r, |cFFFFFFFFDO NOT|r turn in the quest until you do.",
					["coords"] = {
						{ 20.3, 71.3, MAP.DESOLACE },
						{ 23.4, 77.1, MAP.DESOLACE },
						{ 18.1, 86.5, MAP.DESOLACE },
					},
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(6367),	-- Big Iron Fishing Pole
						i(13545),	-- Shellfish
					},
				}),
			}),
			n(VENDORS, {
				n(12045, {	-- Hae'Wilani <Axecrafter>
					["coords"] = {
						{ 25.8, 71.0, MAP.DESOLACE },
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
					["coord"] = { 66.2, 6.6, MAP.DESOLACE },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(12240),	-- Recipe: Heavy Kodo Stew (RECIPE!)
						i(12233),	-- Recipe: Mystery Stew (RECIPE!)
					},
				}),
				n(9636, {	-- Kireena <Trade Goods>
					["coord"] = { 51.0, 53.4, MAP.DESOLACE },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(7114, {	-- Pattern: Azure Silk Gloves (RECIPE!)
							["isLimited"] = true,
						}),
						i(12232),	-- Recipe: Carrion Surprise (RECIPE!)
						i(12240),	-- Recipe: Heavy Kodo Stew (RECIPE!)
					},
				}),
				n(8878, {	-- Muuran <Superior Macecrafter>
					["coord"] = { 55.6, 56.6, MAP.DESOLACE },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(10858, {	-- Plans: Solid Iron Maul (RECIPE!)
							["isLimited"] = true,
						}),
					},
				}),
				n(12246, {	-- Super-Seller 680
					["coord"] = { 40.6, 79.2, MAP.DESOLACE },
					["groups"] = {
						i(7087, {	-- Pattern: Crimson Silk Cloak (RECIPE!)
							["isLimited"] = true,
						}),
						i(4609, {	-- Recipe: Barbecued Buzzard Wing (RECIPE!)
							["isLimited"] = true,
						}),
						i(3734, {	-- Recipe: Big Bear Steak (RECIPE!)
							["isLimited"] = true,
						}),
						i(12239, {	-- Recipe: Dragonbreath Chili (RECIPE!)
							["isLimited"] = true,
						}),
						i(12229, {	-- Recipe: Hot Wolf Ribs (RECIPE!)
							["isLimited"] = true,
						}),
						i(12227, {	-- Recipe: Lean Wolf Steak (RECIPE!)
							["isLimited"] = true,
						}),
						i(12233, {	-- Recipe: Mystery Stew (RECIPE!)
							["isLimited"] = true,
						}),
						i(13310, {	-- Schematic: Accurate Scope (RECIPE!)
							["isLimited"] = true,
						}),
						i(7561, {	-- Schematic: Goblin Jumper Cables (RECIPE!)
							["isLimited"] = true,
						}),
					},
				}),
				n(12245, {	-- Vendor-Tron 1000
					["coord"] = { 60.2, 38.0, MAP.DESOLACE },
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
							["isLimited"] = true,
						}),
						i(12228, {	-- Recipe: Roast Raptor (RECIPE!)
							["isLimited"] = true,
						}),
					},
				}),
				n(12033, {	-- Wulan <Cooking Supplies>
					["coord"] = { 26.2, 69.8, MAP.DESOLACE },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(16072, {	-- Expert Cookbook
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
					["coords"] = {
						{ 52.2, 83.6, MAP.DESOLACE },
						{ 48.2, 75.8, MAP.DESOLACE },
						{ 53.2, 71.0, MAP.DESOLACE },
					},
					["crs"] = {
						4684,	-- Nether Sorceress
					},
				}),
				i(6074, {	-- War Horn Mouthpiece
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
