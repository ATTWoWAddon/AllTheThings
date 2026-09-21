---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(MAP.EASTERN_KINGDOMS, {
	m(MAP.REDRIDGE_MOUNTAINS, {
		["lore"] =
		"The Redridge Mountains are located east of Elwynn Forest, northeast of Duskwood, and south of the Burning Steppes. Although it may be considered contested, Horde characters have no settlements or NPCs and it is thus a place they use mostly for passing through to reach Flame Crest or Stonard.\n\nAn idyllic region of rushing rivers, towering elms and rising elevations, the Redridge Mountains are under Stormwind's protection (though since the second war it is technically independent), and remain one of the last peaceful regions in Azeroth. The people are content and calm, and supply Stormwind with timber, fish, and crops. A force of Blackrock orcs from the Burning Steppes has secured Stonewatch Keep, but so far the orcs keep to themselves.",
		["icon"] = 236814,
		["groups"] = {
			n(ACHIEVEMENTS, {
				ach(780),	-- Explore Redridge Mountains
			}),
			explorationHeader({
				exploration(97),	-- Alther's Mill
				exploration(1000),	-- Galardell Valley
				exploration(68),	-- Lake Everstill
				exploration(1001),	-- Lakeridge Highway
				exploration(69),	-- Lakeshire
				exploration(95),	-- Redridge Canyons
				exploration(996),	-- Render's Camp
				exploration(998),	-- Render's Rock
				exploration(997),	-- Render's Valley
				exploration(98),	-- Rethban Caverns
				exploration(70),	-- Stonewatch
				exploration(71),	-- Stonewatch Falls
				exploration(999),	-- Stonewatch Tower
				exploration(1002),	-- Three Corners
				exploration(96),	-- Tower of Ilgalar
			}),
			n(FLIGHT_PATHS, {
				fp(5, {	-- Lakeshire, Redridge
					["cr"] = 931,	-- Ariena Stormfeather <Gryphon Master>
					["coord"] = { 30.6, 59.6, MAP.REDRIDGE_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
				}),
			}),
			lockpicking({
				o(121264, {	-- Lucius's Lockbox
					["coord"] = { 52.0, 44.9, MAP.REDRIDGE_MOUNTAINS },
					["requireSkill"] = LOCKPICKING,
					["learnedAt"] = 25,
					["groups"] = {
						i(7871),	-- Token of Thievery
					},
				}),
				o(178244, {	-- Practice Lockbox
					["coord"] = { 51.9, 45.0, MAP.REDRIDGE_MOUNTAINS },
					["requireSkill"] = LOCKPICKING,
					["learnedAt"] = 1,
				}),
			}),
			n(PROFESSIONS, {
				prof(SKINNING, {
					i(7286, {	-- Black Whelp Scale
						["crs"] = {
							441,	-- Black Dragon Whelp
							14272,	-- Snarlflare
						},
					}),
				}),
			}),
			n(QUESTS, {
				q(124, {	-- A Baying of Gnolls
					["sourceQuest"] = 119,	-- Return to Verner
					["qg"] = 415,	-- Verner Osgood
					["coord"] = { 31.0, 47.4, MAP.REDRIDGE_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 15,
					["groups"] = {
						objective(1, {	-- 0/10 Redridge Brute
							["provider"] = { "n", 426 },	-- Redridge Brute
						}),
						objective(2, {	-- 0/10 Redridge Mystic
							["provider"] = { "n", 430 },	-- Redridge Mystic
						}),
					},
				}),
				q(129, {	-- A Free Lunch
					["providers"] = {
						{ "n",  379 },	-- Darcy
						{ "i", 5534 },	-- Parker's Lunch (PQI!)
					},
					["coord"] = { 26.7, 44.3, MAP.REDRIDGE_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 12,
				}),
				q(94, {	-- A Watchful Eye
					["providers"] = {
						{ "n",  313 },	-- Theocritus
						{ "i", 1083 },	-- Glyph of Azora (PQI!)
					},
					["coord"] = { 65.2, 69.8, MAP.ELWYNN_FOREST },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
				}),
				q(2282, {	-- Alther's Mill
					["sourceQuest"] = 2281,	-- Redridge Rendezvous
					["providers"] = {
						{ "n", 6966 },	-- Lucius
						{ "i", 5060 },	-- Thieves' Tools (PQI!)
					},
					["coord"] = { 28.2, 52.2, MAP.REDRIDGE_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { ROGUE },
					["lvl"] = 16,
					["groups"] = {
						objective(1, {	-- 0/1 Token of Thievery
							["provider"] = { "i", 7871 },	-- Token of Thievery (QI!)
						}),
						i(7907, {	-- Certificate of Thievery
							["description"] = "This item has no function, but if you get caught, just hand them this like you're Ron Swanson.",
						}),
					},
				}),
				q(34, {	-- An Unwelcome Guest
					["qg"] = 342,	-- Martie Jainrose
					["coord"] = { 21.9, 46.4, MAP.REDRIDGE_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 18,
					["groups"] = {
						objective(1, {	-- 0/1 Bellygrub's Tusk
							["provider"] = { "i", 3631 },	-- Bellygrub's Tusk (QI!)
							["coord"] = { 16.6, 49.8, MAP.REDRIDGE_MOUNTAINS },
							["cr"] = 345,	-- Bellygrub
						}),
						i(2562),	-- Bouquet of Scarlet Begonias
					},
				}),
				q(246, {	-- Assessing the Threat
					["sourceQuest"] = 244,	-- Encroaching Gnolls
					["qg"] = 1070,	-- Deputy Feldon
					["coord"] = { 30.8, 60.0, MAP.REDRIDGE_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 11,
					["groups"] = {
						objective(1, {	-- 0/10 Redridge Mongrel
							["provider"] = { "n", 423 },	-- Redridge Mongrel
						}),
						objective(2, {	-- 0/10 Redridge Poacher
							["provider"] = { "n", 424 },	-- Redridge Poacher
						}),
					},
				}),
				q(128, {	-- Blackrock Bounty
					["qg"] = 903,	-- Guard Howe
					["coord"] = { 31.5, 58.0, MAP.REDRIDGE_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
					["groups"] = {
						objective(1, {	-- 0/15 Blackrock Champion
							["provider"] = { "n", 435 },	-- Blackrock Champion
						}),
					},
				}),
				q(20, {	-- Blackrock Menace
					["qg"] = 382,	-- Marshal Marris
					["coord"] = { 33.4, 49.0, MAP.REDRIDGE_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 18,
					["groups"] = {
						objective(1, {	-- 0/10 Battleworn Axe
							["provider"] = { "i", 3014 },	-- Battleworn Axe (QI!)
							["crs"] = {
								435,	-- Blackrock Champion
								4464,	-- Blackrock Gladiator
								440,	-- Blackrock Grunt
								4462,	-- Blackrock Hunter
								485,	-- Blackrock Outrunner
								437,	-- Blackrock Renegade
								4064,	-- Blackrock Scout
								4065,	-- Blackrock Sentry
								436,	-- Blackrock Shadowcaster
								4463,	-- Blackrock Summoner
								615,	-- Blackrock Tracker
							},
						}),
					},
				}),
				q(131, {	-- Delivering Daffodils
					["sourceQuest"] = 130,	-- Visit the Herbalist
					["providers"] = {
						{ "n",  342 },	-- Martie Jainrose
						{ "i", 1325 },	-- Daffodil Bouquet (PQI!)
					},
					["coord"] = { 21.9, 46.4, MAP.REDRIDGE_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 12,
					["groups"] = {
						i(1326),	-- Sauteed Sunfish
					},
				}),
				q(116, {	-- Dry Times
					["qg"] = 346,	-- Barkeep Daniels
					["coord"] = { 26.5, 44.2, MAP.REDRIDGE_MOUNTAINS },
					["maps"] = {
						MAP.DUSKWOOD,
						MAP.ELWYNN_FOREST,
						MAP.STORMWIND_CITY,
						MAP.WESTFALL,
					},
					["cost"] = {
						{ "i", 1942, 1 },	-- Bottle of Moonshine
						{ "i", 1941, 1 },	-- Cask of Merlot
						{ "i", 1262, 1 },	-- Keg of Thunderbrew
						{ "i", 1939, 1 },	-- Skin of Sweet Rum
					},
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 12,
					["groups"] = {
						i(1270),	-- Finely Woven Cloak
						i(10456),	-- A Bulging Coin Purse
					},
				}),
				q(244, {	-- Encroaching Gnolls
					["qg"] = 464,	-- Guard Parker
					["coord"] = { 17.3, 69.5, MAP.REDRIDGE_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 11,
				}),
				q(3741, {	-- Hilary's Necklace
					["qg"] = 8965,	-- Shawn
					["coord"] = { 29.3, 53.4, MAP.REDRIDGE_MOUNTAINS },
					["lvl"] = 12,
					["groups"] = {
						objective(1, {	-- 0/1 Hilary's Necklace
							["providers"] = {
								{ "i",  10958 },	-- Hilary's Necklace (QI!)
								{ "o", 154357 },	-- Glinting Mud
							},
							["coords"] = {
								{ 19.3, 51.8, MAP.REDRIDGE_MOUNTAINS },
								{ 25.9, 54.1, MAP.REDRIDGE_MOUNTAINS },
								{ 37.8, 54.4, MAP.REDRIDGE_MOUNTAINS },
							},
						}),
					},
				}),
				q(126, {	-- Howling in the Hills
					["sourceQuest"] = 124,	-- A Baying of Gnolls
					["qg"] = 415,	-- Verner Osgood
					["coord"] = { 31.0, 47.4, MAP.REDRIDGE_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 15,
					["groups"] = {
						objective(1, {	-- 0/1 Yowler's Paw
							["provider"] = { "i", 3614 },	-- Yowler's Paw (QI!)
							["coord"] = { 28.8, 23.2, MAP.REDRIDGE_MOUNTAINS },
							["cr"] = 518,	-- Yowler
						}),
						i(1319),	-- Ring of Iron Will
						i(2910),	-- Gold Militia Boots
					},
				}),
				q(248, {	-- Looking Further
					["sourceQuest"] = 94,	-- A Watchful Eye
					["providers"] = {
						{ "o",   31 },	-- Old Lion Statue
						{ "i", 1083 },	-- Glyph of Azora (QI!)
						{ "o",   76 },	-- An Empty Jar
					},
					["coord"] = { 84.3, 46.9, MAP.REDRIDGE_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
				}),
				q(145, {	-- Messenger to Darkshire (1/2)
					["sourceQuest"] = 144,	-- Messenger to Westfall (2/2)
					["providers"] = {
						{ "n",  344 },	-- Magistrate Solomon
						{ "i", 1409 },	-- Solomon's Plea to Darkshire (PQI!)
					},
					["coord"] = { 30.0, 44.4, MAP.REDRIDGE_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 18,
				}),
				q(146, {	-- Messenger to Darkshire (2/2)
					["sourceQuest"] = 145,	-- Messenger to Darkshire (1/2)
					["providers"] = {
						{ "n",  263 },	-- Lord Ello Ebonlocke
						{ "i", 1410 },	-- Ebonlocke's Response to Solomon (PQI!)
					},
					["coord"] = { 72.0, 46.6, MAP.DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 18,
				}),
				q(120, {	-- Messenger to Stormwind (1/2)
					["providers"] = {
						{ "n",  344 },	-- Magistrate Solomon
						{ "i", 1293 },	-- The State of Lakeshire (PQI!)
					},
					["coord"] = { 30.0, 44.4, MAP.REDRIDGE_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 14,
				}),
				q(121, {	-- Messenger to Stormwind (2/2)
					["sourceQuest"] = 120,	-- Messenger to Stormwind (1/2)
					["providers"] = {
						{ "n",  466 },	-- General Marcus Jonathan
						{ "i", 1294 },	-- The General's Response (PQI!)
					},
					["coord"] = { 63.8, 75.4, MAP.STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 14,
				}),
				q(143, {	-- Messenger to Westfall (1/2)
					["sourceQuest"] = 121,	-- Messenger to Stormwind (2/2)
					["providers"] = {
						{ "n",  344 },	-- Magistrate Solomon
						{ "i", 1407 },	-- Solomon's Plea to Westfall (PQI!)
					},
					["coord"] = { 30.0, 44.4, MAP.REDRIDGE_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 14,
				}),
				q(144, {	-- Messenger to Westfall (2/2)
					["sourceQuest"] = 143,	-- Messenger to Westfall (1/2)
					["providers"] = {
						{ "n", 234 },	-- Gryan Stoutmantle
						{ "i", 1408 },	-- Stoutmantle's Response to Solomon (PQI!)
					},
					["coord"] = { 56.2, 47.6, MAP.WESTFALL },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 14,
				}),
				q(219, {	-- Missing In Action
					["qg"] = 349,	-- Corporal Keeshan
					["coord"] = { 28.4, 12.6, MAP.REDRIDGE_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 19,
					["groups"] = {
						i(3555),	-- Robe of Solomon
						i(1275),	-- Deputy Chain Coat
						i(3431),	-- Bone-studded Leather
					},
				}),
				q(249, {	-- Morganth
					["sourceQuest"] = 248,	-- Looking Further
					["providers"] = {
						{ "o",  31 },	-- Old Lion Statue
						{ "n", 313 },	-- Theocritus <Mage of Tower Azora>
					},
					["coords"] = {
						{ 84.5, 47.1, MAP.REDRIDGE_MOUNTAINS },
						{ 65.2, 69.8, MAP.ELWYNN_FOREST },
					},
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
					["groups"] = {
						objective(1, {	-- 0/1 Pendant of Shadow
							["provider"] = { "i", 3617 },	-- Pendant of Shadow (QI!)
							["coord"] = { 80.0, 49.0, MAP.REDRIDGE_MOUNTAINS },
							["cr"] = 397,	-- Morganth
						}),
						i(5274),	-- Rose Mantle
					},
				}),
				q(150, {	-- Murloc Poachers
					["qg"] = 381,	-- Dockmaster Baren
					["coord"] = { 27.7, 47.3, MAP.REDRIDGE_MOUNTAINS },
					["cost"] = { { "i", 1468, 8 } },	-- Murloc Fin
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
					["groups"] = {
						i(3567),	-- Dwarven Fishing Pole
					},
				}),
				q(92, {	-- Redridge Goulash
					["qg"] = 343,	-- Chef Breanna
					["coord"] = { 22.7, 44.0, MAP.REDRIDGE_MOUNTAINS },
					["cost"] = {
						{ "i", 2296, 5 },	-- Great Goretusk Snout
						{ "i", 1080, 5 },	-- Tough Condor Meat
						{ "i", 1081, 5 },	-- Crisp Spider Meat
					},
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 15,
					["groups"] = {
						i(1082),	-- Redridge Goulash
						i(2699),	-- Recipe: Redridge Goulash (RECIPE!)
					},
				}),
				q(347, {	-- Rethban Ore
					["sourceQuest"] = 345,	-- Ink Supplies (Elwynn Forest)
					["qg"] = 341,	-- Foreman Oslow
					["coord"] = { 32.2, 48.6, MAP.REDRIDGE_MOUNTAINS },
					["cost"] = { { "i", 2798, 5 } },	-- Rethban Ore
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
				}),
				q(119, {	-- Return to Verner
					["sourceQuest"] = 118,	-- The Price of Shoes
					["providers"] = {
						{ "n",  514 },	-- Smith Argus
						{ "i", 1284 },	-- Crate of Horseshoes (PQI!)
					},
					["coord"] = { 41.7, 65.5, MAP.ELWYNN_FOREST },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 13,
				}),
				q(127, {	-- Selling Fish
					["qg"] = 381,	-- Dockmaster Baren
					["coord"] = { 27.8, 47.2, MAP.REDRIDGE_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 16,
					["groups"] = {
						objective(1, {	-- 0/10 Spotted Sunfish
							["provider"] = { "i", 1467 },	-- Spotted Sunfish (QI!)
							["crs"] = {
								422,	-- Murloc Flesheater
								548,	-- Murloc Minor Tidecaller
								544,	-- Murloc Nightcrawler
								578,	-- Murloc Scout
								1083,	-- Murloc Shorestriker
								545,	-- Murloc Tidecaller
								14270,	-- Squiddic
							},
						}),
						i(3663),	-- Murloc Fin Soup
						i(1322),	-- Fishliver Oil
						i(3680),	-- Recipe: Murloc Fin Soup (RECIPE!)
					},
				}),
				q(115, {	-- Shadow Magic
					["qg"] = 382,	-- Marshal Marris
					["coord"] = { 33.4, 49.0, MAP.REDRIDGE_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 18,
					["groups"] = {
						objective(1, {	-- 0/3 Midnight Orb
							["provider"] = { "i", 1261 },	-- Midnight Orb (QI!)
							["coord"] = { 68.6, 57.6, MAP.REDRIDGE_MOUNTAINS },
							["cr"] = 436,	-- Blackrock Shadowcaster
						}),
					},
				}),
				q(91, {	-- Solomon's Law
					["qg"] = 900,	-- Bailiff Conacher
					["coord"] = { 29.6, 44.3, MAP.REDRIDGE_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 17,
					["groups"] = {
						objective(1, {	-- 0/10 Shadowhide Pendant
							["provider"] = { "i", 1075 },	-- Shadowhide Pendant (QI!)
							["crs"] = {
								703,	-- Lieutenant Fangore
								434,	-- Rabid Shadowhide Gnoll
								947,	-- Rohh the Silent
								579,	-- Shadowhide Assassin
								432,	-- Shadowhide Brute
								429,	-- Shadowhide Darkweaver
								433,	-- Shadowhide Gnoll
								431,	-- Shadowhide Slayer
								568,	-- Shadowhide Warrior
							},
						}),
					},
				}),
				q(19, {	-- Tharil'zun
					["qg"] = 382,	-- Marshal Marris
					["coord"] = { 33.4, 49.0, MAP.REDRIDGE_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 18,
					["groups"] = {
						objective(1, {	-- 0/1 Tharil'zun's Head
							["provider"] = { "i", 1260 },	-- Tharil'zun's Head (QI!)
							["coord"] = { 68.4, 58.8, MAP.REDRIDGE_MOUNTAINS },
							["cr"] = 486,	-- Tharil'zun
						}),
						i(1276),	-- Fire Hardened Buckler
						i(6093),	-- Orc Crusher
					},
				}),
				q(89, {	-- The Everstill Bridge
					["qg"] = 341,	-- Foreman Oslow
					["coord"] = { 32.2, 48.6, MAP.REDRIDGE_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 15,
					["groups"] = {
						objective(1, {	-- 0/5 Iron Pike
							["provider"] = { "i", 2856 },	-- Iron Pike (QI!)
							["crs"] = {
								446,	-- Redridge Basher
								426,	-- Redridge Brute
								580,	-- Redridge Drudger
								430,	-- Redridge Mystic
								14271,	-- Ribchaser
							},
						}),
						objective(2, {	-- 0/5 Iron Rivet
							["provider"] = { "i", 1013 },	-- Iron Rivet (QI!)
							["crs"] = {
								446,	-- Redridge Basher
								426,	-- Redridge Brute
								580,	-- Redridge Drudger
								430,	-- Redridge Mystic
								14271,	-- Ribchaser
							},
						}),
						i(1310),	-- Smith's Trousers
						i(1303),	-- Bridgeworker's Gloves
						i(1304),	-- Riding Gloves
					},
				}),
				q(125, {	-- The Lost Tools
					["qg"] = 341,	-- Foreman Oslow
					["coord"] = { 32.2, 48.7, MAP.REDRIDGE_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 15,
					["groups"] = {
						objective(1, {	-- 0/1 Oslow's Toolbox
							["providers"] = {
								{ "i", 1309 },	-- Oslow's Toolbox (QI!)
								{ "o",   32 },	-- Sunken Chest
							},
							["coord"] = { 41.5, 54.68, MAP.REDRIDGE_MOUNTAINS },
						}),
						i(2313),	-- Medium Armor Kit
					},
				}),
				q(118, {	-- The Price of Shoes
					["providers"] = {
						{ "n",  415 },	-- Verner Osgood
						{ "i", 1283 },	-- Verner's Notes
					},
					["coord"] = { 31.0, 47.4, MAP.REDRIDGE_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 14,
				}),
				q(1699, {	-- The Rethban Gauntlet
					["sourceQuests"] = {
						1698,	-- Yorus Barleybrew
					},
					["qg"] = 6166,	-- Yorus Barleybrew
					["coord"] = { 26.6, 44.8, MAP.REDRIDGE_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { WARRIOR },
					["lvl"] = 20,
				}),
				q(1702, {	-- The Shieldsmith
					["sourceQuest"] = 1699,	-- The Rethban Gauntlet
					["providers"] = {
						{ "n", 6166 },	-- Yorus Barleybrew
						{ "i", 6843 },	-- Cask of Scalder (PQI!)
					},
					["coord"] = { 26.6, 44.8, MAP.REDRIDGE_MOUNTAINS },
					["classes"] = { WARRIOR },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
					["groups"] = {
						i(6970),	-- Furen's Favor
					},
				}),
				q(178, {	-- Theocritus' Retrieval
					["providers"] = {
						{ "i", 1962 },	-- Glowing Shadowhide Pendant (QS!)
						{ "i", 1956 },	-- Faded Shadowhide Pendant (PQI!)
					},
					["maps"] = { MAP.ELWYNN_FOREST },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 15,
					["groups"] = {
						i(1970),	-- Restoring Balm
					},
				}),
				q(122, {	-- Underbelly Scales
					["sourceQuest"] = 119,	-- Return to Verner
					["qg"] = 415,	-- Verner Osgood
					["coord"] = { 31.0, 47.4, MAP.REDRIDGE_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 14,
					["groups"] = {
						objective(1, {	-- 0/6 Underbelly Whelp Scale
							["provider"] = { "i", 1221 },	-- Underbelly Whelp Scale (QI!)
							["crs"] = {
								14272,	-- Snarlflare
								441,	-- Black Dragon Whelp
							},
						}),
						i(6092),	-- Black Whelp Boots
						i(1302),	-- Black Whelp Gloves
					},
				}),
				q(130, {	-- Visit the Herbalist
					["sourceQuest"] = 129,	-- A Free Lunch
					["qg"] = 464,	-- Guard Parker
					["coord"] = { 17.3, 69.5, MAP.REDRIDGE_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 12,
				}),
				q(169, {	-- Wanted: Gath'Ilzogg
					["provider"] = { "o", 60 },	-- Wanted: Gath'Ilzogg
					["coord"] = { 29.6, 46.2, MAP.REDRIDGE_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 15,
					["groups"] = {
						objective(1, {	-- 0/1 Head of Gath'Ilzogg
							["provider"] = { "i", 3633 },	-- Head of Gath'Ilzogg (QI!)
							["coord"] = { 69.6, 55.8, MAP.REDRIDGE_MOUNTAINS },
							["cr"] = 334,	-- Gath'Ilzogg <Warlord of the Blackrock Clan>
						}),
					},
				}),
				q(180, {	-- Wanted: Lieutenant Fangore
					["provider"] = { "o", 47 },	-- Wanted: Lieutenant Fangore
					["coord"] = { 26.7, 46.5, MAP.REDRIDGE_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 15,
					["groups"] = {
						objective(1, {	-- 0/1 Fangore's Paw
							["provider"] = { "i", 3632 },	-- Fangore's Paw (QI!)
							["coord"] = { 80.0, 39.0, MAP.REDRIDGE_MOUNTAINS },
							["cr"] = 703,	-- Lieutenant Fangore
						}),
					},
				}),
				q(1698, {	-- Yorus Barleybrew
					["qgs"] = {
						5479,	-- Wu Shen <Warrior Trainer>
						7315,	-- Darnath Bladesinger <Warrior Trainer>
					},
					["coords"] = {
						{ 48.6, 35.6, MAP.DARNASSUS },
						{ 78.8, 45.6, MAP.STORMWIND_CITY },
					},
					["races"] = ALLIANCE_ONLY,
					["classes"] = { WARRIOR },
					["isBreadcrumb"] = true,
					["lvl"] = 20,
				}),
			}),
			n(RARES, {
				n(14273, {	-- Boulderheart
					["coord"] = { 88.8, 67.0, MAP.REDRIDGE_MOUNTAINS },
				}),
				n(616, {	-- Chatter
					["coords"] = {
						{ 51.2, 37.2, MAP.REDRIDGE_MOUNTAINS },
						{ 56.0, 41.4, MAP.REDRIDGE_MOUNTAINS },
						{ 58.6, 41.0, MAP.REDRIDGE_MOUNTAINS },
						{ 57.8, 49.8, MAP.REDRIDGE_MOUNTAINS },
						{ 53.6, 48.6, MAP.REDRIDGE_MOUNTAINS },
						{ 49.2, 41.8, MAP.REDRIDGE_MOUNTAINS },
					},
					["groups"] = {
						i(3229),	-- Tarantula Silk Sash
					},
				}),
				n(584, {	-- Kazon
					["coords"] = {
						{ 33.0,  6.6, MAP.REDRIDGE_MOUNTAINS },
						{ 36.0,  8.6, MAP.REDRIDGE_MOUNTAINS },
						{ 36.6, 11.6, MAP.REDRIDGE_MOUNTAINS },
						{ 38.4, 13.6, MAP.REDRIDGE_MOUNTAINS },
						{ 42.4, 15.4, MAP.REDRIDGE_MOUNTAINS },
					},
					["groups"] = {
						i(3231),	-- Cutthroat Pauldrons
						i(2058),	-- Kazon's Maul
					},
				}),
				n(14271, {	-- Ribchaser
					["coords"] = {
						{ 16.2, 60.6, MAP.REDRIDGE_MOUNTAINS },
						{ 14.0, 64.2, MAP.REDRIDGE_MOUNTAINS },
						{ 18.8, 64.8, MAP.REDRIDGE_MOUNTAINS },
						{ 16.0, 67.2, MAP.REDRIDGE_MOUNTAINS },
						{ 28.4, 84.0, MAP.REDRIDGE_MOUNTAINS },
						{ 32.6, 78.8, MAP.REDRIDGE_MOUNTAINS },
						{ 33.6, 84.8, MAP.REDRIDGE_MOUNTAINS },
					},
				}),
				n(947, {	-- Rohh the Silent
					["coords"] = {
						{ 76.0, 29.4, MAP.REDRIDGE_MOUNTAINS },
						{ 76.0, 34.2, MAP.REDRIDGE_MOUNTAINS },
						{ 73.0, 41.6, MAP.REDRIDGE_MOUNTAINS },
						{ 78.0, 40.4, MAP.REDRIDGE_MOUNTAINS },
						{ 76.4, 38.6, MAP.REDRIDGE_MOUNTAINS },
						{ 83.0, 47.8, MAP.REDRIDGE_MOUNTAINS },
						{ 80.2, 48.6, MAP.REDRIDGE_MOUNTAINS },
						{ 83.2, 51.0, MAP.REDRIDGE_MOUNTAINS },
						{ 83.4, 57.6, MAP.REDRIDGE_MOUNTAINS },
					},
					["groups"] = {
						i(4446),	-- Blackvenom Blade
						i(4447),	-- Cloak of Night
					},
				}),
				n(14269, {	-- Seeker Aqualon
					["coords"] = {
						{ 46.2, 59.6, MAP.REDRIDGE_MOUNTAINS },
						{ 50.2, 61.4, MAP.REDRIDGE_MOUNTAINS },
						{ 28.2, 58.2, MAP.REDRIDGE_MOUNTAINS },
						{ 63.6, 62.6, MAP.REDRIDGE_MOUNTAINS },
						{ 71.6, 64.6, MAP.REDRIDGE_MOUNTAINS },
						{ 75.8, 67.4, MAP.REDRIDGE_MOUNTAINS },
						{ 73.2, 71.2, MAP.REDRIDGE_MOUNTAINS },
					},
					["groups"] = {
						i(7091),	-- Pattern: Truefaith Gloves (RECIPE!)
					},
				}),
				n(14272, {	-- Snarlflare
					["coords"] = {
						{ 36.4, 66.8, MAP.REDRIDGE_MOUNTAINS },
						{ 43.4, 30.0, MAP.REDRIDGE_MOUNTAINS },
						{ 49.2, 33.0, MAP.REDRIDGE_MOUNTAINS },
						{ 54.6, 37.2, MAP.REDRIDGE_MOUNTAINS },
					},
				}),
				n(14270, {	-- Squiddic
					["coords"] = {
						{ 42.8, 52.8, MAP.REDRIDGE_MOUNTAINS },
						{ 39.0, 60.8, MAP.REDRIDGE_MOUNTAINS },
						{ 46.0, 63.4, MAP.REDRIDGE_MOUNTAINS },
						{ 52.6, 67.6, MAP.REDRIDGE_MOUNTAINS },
						{ 54.6, 60.0, MAP.REDRIDGE_MOUNTAINS },
						{ 47.6, 54.4, MAP.REDRIDGE_MOUNTAINS },
					},
				}),
			}),
			n(VENDORS, {
				n(777, {	-- Amy Davenport <Tradeswoman>
					["coord"] = { 29.0, 47.6, MAP.REDRIDGE_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(20576, {	-- Pattern: Black Whelp Tunic (RECIPE!)
							["isLimited"] = true,
						}),
						i(5772, {	-- Pattern: Red Woolen Bag (RECIPE!)
							["isLimited"] = true,
						}),
					},
				}),
				n(3097, {	-- Bernard Brubaker <Leather Armor Merchant>
					["coord"] = { 88.2, 71.6, MAP.REDRIDGE_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(4795, {	-- Bear Bracers
							["isLimited"] = true,
						}),
						i(4796, {	-- Owl Bracers
							["isLimited"] = true,
						}),
						i(4794, {	-- Wolf Bracers
							["isLimited"] = true,
						}),
					},
				}),
				n(3096, {	-- Captured Servant of Azora <Specialist Tailoring Supplies>
					["coord"] = { 74.5, 79.6, MAP.REDRIDGE_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						-- No longer sells any of this stuff after 4.0.3
						i(4790, {	-- Inferno Cloak
							["isLimited"] = true,
						}),
						i(4792, {	-- Spirit Cloak
							["isLimited"] = true,
						}),
						i(4793, {	-- Sylvan Cloak
							["isLimited"] = true,
						}),
					},
				}),
				n(2697, {	-- Clyde Ranthal <Leatherworking Supplies>
					["coord"] = { 89.0, 70.2, MAP.REDRIDGE_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(7289, {	-- Pattern: Black Whelp Cloak (RECIPE!)
							["isLimited"] = true,
						}),
					},
				}),
				n(956, {	-- Dorin Songblade <Armorer>
					["coord"] = { 30.8, 46.6, MAP.REDRIDGE_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["sym"] = {{"select","itemID",
						1853,	-- Scalemail Belt
						287,	-- Scalemail Boots
						1852,	-- Scalemail Bracers
						718,	-- Scalemail Gloves
						286,	-- Scalemail Pants
						285,	-- Scalemail Vest
					}},
				}),
				n(3091, {	-- Franklin Hamar <Tailoring Supplies>
					["coord"] = { 27.2, 45.4, MAP.REDRIDGE_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(4782, {	-- Solstice Robe
							["isLimited"] = true,
						}),
						i(4781, {	-- Whispering Vest
							["isLimited"] = true,
						}),
						i(4786, {	-- Wise Man's Belt
							["isLimited"] = true,
						}),
					},
				}),
				n(3085, {	-- Gloria Femmel <Cooking Supplies>
					["coord"] = { 26.7, 43.6, MAP.REDRIDGE_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(21219),	-- Recipe: Sagefish Delight (RECIPE!)
						i(21099),	-- Recipe: Smoked Sagefish (RECIPE!)
					},
				}),
				n(3088, {	-- Henry Chapal <Gunsmith>
					["coord"] = { 23.8, 41.4, MAP.REDRIDGE_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["sym"] = {{"select","itemID",
						2511,	-- Hunter's Boomstick
						3023,	-- Large Bore Blunderbuss
					}},
				}),
				n(793, {	-- Kara Adams <Shield Crafter>
					["coord"] = { 30.6, 46.6, MAP.REDRIDGE_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["sym"] = {{"select","itemID",
						2445,	-- Large Metal Shield
						17188,	-- Ringed Buckler
					}},
					["groups"] = {
						i(4821, {	-- Bear Buckler
							["isLimited"] = true,
						}),
						i(4820, {	-- Guardian Buckler
							["isLimited"] = true,
						}),
						i(4822, {	-- Owl's Disk
							["isLimited"] = true,
						}),
					},
				}),
			}),
			n(ZONE_DROPS, {
				i(1446, {	-- Blackrock Boots
					["crs"] = {
						440,	-- Blackrock Grunt
					},
					["coords"] = {
						{ 41.4, 39.8, MAP.REDRIDGE_MOUNTAINS },	-- Blackrock Grunt
						{ 62.0, 44.0, MAP.REDRIDGE_MOUNTAINS },	-- Blackrock Grunt
						{ 74.8, 78.8, MAP.REDRIDGE_MOUNTAINS },	-- Blackrock Grunt
					},
				}),
				i(1455, {	-- Blackrock Champion's Axe
					["crs"] = {
						435,	-- Blackrock Champion
						4464,	-- Blackrock Gladiator
					},
					["coords"] = {
						{ 35.6, 9.6, MAP.REDRIDGE_MOUNTAINS },
						{ 28.6, 14.6, MAP.REDRIDGE_MOUNTAINS },
						{ 69.6, 57.4, MAP.REDRIDGE_MOUNTAINS },
					},
				}),
				i(1448, {	-- Blackrock Gauntlets
					["crs"] = {
						4064,	-- Blackrock Scout
						485,	-- Blackrock Outrunner
					},
					["coords"] = {
						{ 65.6, 48.8, MAP.REDRIDGE_MOUNTAINS },
						{ 67.0, 59.0, MAP.REDRIDGE_MOUNTAINS },
					},
				}),
				i(1296, {	-- Blackrock Mace
					["crs"] = {
						437,	-- Blackrock Renegade
						4065,	-- Blackrock Sentry
					},
					["coords"] = {
						{ 78.6, 71.6, MAP.REDRIDGE_MOUNTAINS },
						{ 62.6, 45.6, MAP.REDRIDGE_MOUNTAINS },
						{ 46.0, 18.4, MAP.REDRIDGE_MOUNTAINS },
					},
				}),
				i(1445, {	-- Blackrock Pauldrons
					["coords"] = {
						{ 39.4, 14.8, MAP.REDRIDGE_MOUNTAINS },
						{ 35.4,  8.6, MAP.REDRIDGE_MOUNTAINS },
						{ 28.6, 14.4, MAP.REDRIDGE_MOUNTAINS },
					},
					["crs"] = {
						615,	-- Blackrock Tracker
						4462,	-- Blackrock Hunter
					},
				}),
				i(1287, {	-- Giant Tarantula Fang
					["cr"] = 442,	-- Tarantula
					["coords"] = {
						{ 28.4, 78.8, MAP.REDRIDGE_MOUNTAINS },
						{ 15.2, 76.2, MAP.REDRIDGE_MOUNTAINS },
					},
				}),
				i(1962, {	-- Glowing Shadowhide Pendant
					["races"] = ALLIANCE_ONLY,
					["crs"] = {
						703,	-- Lieutenant Fangore
						434,	-- Rabid Shadowhide Gnoll
						947,	-- Rohh the Silent
						579,	-- Shadowhide Assassin
						432,	-- Shadowhide Brute
						429,	-- Shadowhide Darkweaver
						433,	-- Shadowhide Gnoll
						431,	-- Shadowhide Slayer
						568,	-- Shadowhide Warrior
					},
				}),
				i(723),	-- Goretusk Liver
				i(1213, {	-- Gnoll Kindred Bracers
					["cr"] = 712,	-- Redridge Thrasher
					["coords"] = {
						{ 17.8, 59.6, MAP.REDRIDGE_MOUNTAINS },
						{ 28.8, 81.6, MAP.REDRIDGE_MOUNTAINS },
					},
				}),
				i(1214, {	-- Gnoll Punisher
					["crs"] = {
						14271,	-- Ribchaser
						426,	-- Redridge Brute
					},
					["coords"] = {
						{ 17.4, 64.4, MAP.REDRIDGE_MOUNTAINS },
						{ 31.0, 82.2, MAP.REDRIDGE_MOUNTAINS },
						{ 39.0, 33.0, MAP.REDRIDGE_MOUNTAINS },
						{ 24.0, 38.6, MAP.REDRIDGE_MOUNTAINS },
					},
				}),
				i(1440, {	-- Gnoll Skull Basher
					["cr"] = 446,	-- Redridge Basher
					["coords"] = {
						{ 38.2, 31.6, MAP.REDRIDGE_MOUNTAINS },
						{ 27.2, 36.8, MAP.REDRIDGE_MOUNTAINS },
						{ 21.6, 35.0, MAP.REDRIDGE_MOUNTAINS },
						{ 31.0, 21.6, MAP.REDRIDGE_MOUNTAINS },
						{ 24.4, 24.4, MAP.REDRIDGE_MOUNTAINS },
						{ 19.0, 16.6, MAP.REDRIDGE_MOUNTAINS },
					},
				}),
				i(1211, {	-- Gnoll War Harness
					["cr"] = 423,	-- Redridge Mongrel
					["coords"] = {
						{ 30.6, 62.6, MAP.REDRIDGE_MOUNTAINS },
						{ 30.0, 71.6, MAP.REDRIDGE_MOUNTAINS },
						{ 17.8, 57.8, MAP.REDRIDGE_MOUNTAINS },
					},
				}),
				i(2296, {	-- Great Goretusk Snout
					["crs"] = {
						345,	-- Bellygrub
						547,	-- Great Goretusk
					},
				}),
				i(1218, {	-- Heavy Gnoll War Club
					["crs"] = {
						445,	-- Redridge Alpha
					},
					["coords"] = {
						{ 28.6, 22.2, MAP.REDRIDGE_MOUNTAINS },
						{ 18.6, 16.4, MAP.REDRIDGE_MOUNTAINS },
					},
				}),
				i(1299, {	-- Lesser Belt of the Spire
					["crs"] = {
						436,	-- Blackrock Shadowcaster
					},
					["coords"] = {
						{ 59.2, 43.2, MAP.REDRIDGE_MOUNTAINS },
						{ 60.0, 50.6, MAP.REDRIDGE_MOUNTAINS },
					},
				}),
				i(1300, {	-- Lesser Staff of the Spire
					["crs"] = {
						436,	-- Blackrock Shadowcaster
					},
					["coords"] = {
						{ 59.2, 43.2, MAP.REDRIDGE_MOUNTAINS },
						{ 60.0, 50.6, MAP.REDRIDGE_MOUNTAINS },
					},
				}),
				i(1220, {	-- Lupine Axe
					["cr"] = 580,	-- Redridge Drudger
					["coords"] = {
						{ 23.0, 19.0, MAP.REDRIDGE_MOUNTAINS },
						{ 20.0, 23.8, MAP.REDRIDGE_MOUNTAINS },
					},
				}),
				i(1406, {	-- Pearl-encrusted Spear / Pearl-Encrusted Spear
					["cr"] = 544,	-- Murloc Nightcrawler
					["coords"] = {
						{ 80.4, 58.4, MAP.REDRIDGE_MOUNTAINS },
						{ 81.0, 70.0, MAP.REDRIDGE_MOUNTAINS },
					},
				}),
				i(1219, {	-- Redridge Machete
					["cr"] = 424,	-- Redridge Poacher
					["coords"] = {
						{ 44.0, 72.8, MAP.REDRIDGE_MOUNTAINS },
						{ 32.2, 82.6, MAP.REDRIDGE_MOUNTAINS },
					},
				}),
				i(2798, {	-- Rethban Ore
					["providers"] = {
						{ "n", 580 },	-- Redridge Drudger
						{ "o", 2055 },	-- Copper Vein (Redridge Mountains - Rethban Caverns)
						{ "o", 2054 },	-- Tin Vein (Redridge Mountains - Rethban Caverns)
					},
				}),
				i(1462, {	-- Ring of the Shadow
					["cr"] = 429,	-- Shadowhide Darkweaver
					["coords"] = {
						{ 76.6, 43.6, MAP.REDRIDGE_MOUNTAINS },
						{ 80.0, 49.6, MAP.REDRIDGE_MOUNTAINS },
						{ 82.4, 55.2, MAP.REDRIDGE_MOUNTAINS },
					},
				}),
				i(1473, {	-- Riverside Staff
					["cr"] = 545,	-- Murloc Tidecaller
					["coords"] = {
						{ 56.4, 49.0, MAP.REDRIDGE_MOUNTAINS },
						{ 81.0, 63.6, MAP.REDRIDGE_MOUNTAINS },
					},
				}),
				i(2566, {	-- Sacrificial Robes
					["crs"] = {
						397,	-- Morganth / Grand Magus Doane [CATA+]
					},
					["coord"] = { 80.0, 49.6, MAP.REDRIDGE_MOUNTAINS },	-- Morganth
				}),
				i(1469, {	-- Scimitar of Atun
					["crs"] = {
						578,	-- Murloc Scout
						14270,	-- Squiddic
					},
					["coords"] = {
						{ 37.8, 41.4, MAP.REDRIDGE_MOUNTAINS },
						{ 36.4, 43.8, MAP.REDRIDGE_MOUNTAINS },
						{ 57.8, 51.8, MAP.REDRIDGE_MOUNTAINS },
						{ 41.8, 48.2, MAP.REDRIDGE_MOUNTAINS },
					},
				}),
				i(2175, {	-- Shadowhide Battle Axe
					["cr"] = 568,	-- Shadowhide Warrior
					["coords"] = {
						{ 81.8, 38.2, MAP.REDRIDGE_MOUNTAINS },
						{ 77.8, 44.4, MAP.REDRIDGE_MOUNTAINS },
					},
				}),
				i(1457, {	-- Shadowhide Mace
					["cr"] = 433,	-- Shadowhide Gnoll
					["coords"] = {
						{ 66.8, 48.2, MAP.REDRIDGE_MOUNTAINS },
						{ 68.6, 44.4, MAP.REDRIDGE_MOUNTAINS },
						{ 66.2, 41.6, MAP.REDRIDGE_MOUNTAINS },
					},
				}),
				i(1458, {	-- Shadowhide Maul
					["cr"] = 432,	-- Shadowhide Brute
					["coords"] = {
						{ 82.0, 38.8, MAP.REDRIDGE_MOUNTAINS },
						{ 75.4, 46.0, MAP.REDRIDGE_MOUNTAINS },
					},
				}),
				i(1459, {	-- Shadowhide Scalper
					["crs"] = {
						579,	-- Shadowhide Assassin
					},
					["coords"] = {
						{ 80.6, 48.8, MAP.REDRIDGE_MOUNTAINS },
						{ 79.2, 40.6, MAP.REDRIDGE_MOUNTAINS },
					},
				}),
				i(1460, {	-- Shadowhide Two-handed Sword / Shadowhide Two-Handed Sword
					["cr"] = 434,	-- Rabid Shadowhide Gnoll
					["coords"] = {
						{ 74.2, 44.6, MAP.REDRIDGE_MOUNTAINS },
						{ 72.6, 51.2, MAP.REDRIDGE_MOUNTAINS },
					},
				}),
				i(1461, {	-- Slayer's Battle Axe
					["cr"] = 431,	-- Shadowhide Slayer
					["coords"] = {
						{ 81.6, 48.6, MAP.REDRIDGE_MOUNTAINS },
						{ 78.4, 38.2, MAP.REDRIDGE_MOUNTAINS },
					},
				}),
				i(1080, {	-- Tough Condor Meat
					["coords"] = {
						{ 52.0, 40.0, MAP.REDRIDGE_MOUNTAINS },	-- Northside
						{ 55.0, 72.0, MAP.REDRIDGE_MOUNTAINS },	-- Southside
					},
					["crs"] = {
						428,	-- Dire Condor
					},
					["description"] = "Only drops from Dire Condors in Redridge Mountains."
				}),
			}),
		},
	}),
}));
