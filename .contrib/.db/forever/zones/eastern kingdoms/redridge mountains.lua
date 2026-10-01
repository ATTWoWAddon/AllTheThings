---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

maproot(MAP.EASTERN_KINGDOMS, MAP.REDRIDGE_MOUNTAINS, {
	lore = "The Redridge Mountains are located east of Elwynn Forest, northeast of Duskwood, and south of the Burning Steppes. Although it may be considered contested, Horde characters have no settlements or NPCs and it is thus a place they use mostly for passing through to reach Flame Crest or Stonard.\n\nAn idyllic region of rushing rivers, towering elms and rising elevations, the Redridge Mountains are under Stormwind's protection (though since the second war it is technically independent), and remain one of the last peaceful regions in Azeroth. The people are content and calm, and supply Stormwind with timber, fish, and crops. A force of Blackrock orcs from the Burning Steppes has secured Stonewatch Keep, but so far the orcs keep to themselves.",
	icon = 236814,
	groups = {
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
		n(FACTIONS, {
			faction(2586, {	-- Azeroth Commerce Authority
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = ALLIANCE_ONLY,
			}),
		}),
		n(FLIGHT_PATHS, {
			fp(5, {	-- Lakeshire, Redridge
				cr = 931,	-- Ariena Stormfeather <Gryphon Master>
				coord = { 25.5, 59.4, MAP.REDRIDGE_MOUNTAINS },
				races = ALLIANCE_ONLY,
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
					crs = {
						441,	-- Black Dragon Whelp
						14272,	-- Snarlflare
					},
				}),
			}),
		}),
		n(QUESTS, {
			q(124, {	-- A Baying of Gnolls
				sourceQuest = 119,	-- Return to Verner
				qg = 415,	-- Verner Osgood
				coord = { 25.9, 47.3, MAP.REDRIDGE_MOUNTAINS },
				races = ALLIANCE_ONLY,
				lvl = 15,
				groups = {
					objective(1, {	-- 0/10 Redridge Brute
						provider = { "n", 426 },	-- Redridge Brute
					}),
					objective(2, {	-- 0/10 Redridge Mystic
						provider = { "n", 430 },	-- Redridge Mystic
					}),
				},
			}),
			q(129, {	-- A Free Lunch
				qg = 379,	-- Darcy
				qi = 5534,	-- Parker's Lunch (PQI!)
				coord = { 22.0, 45.0, MAP.REDRIDGE_MOUNTAINS },
				races = ALLIANCE_ONLY,
				lvl = 12,
			}),
			q(94, {	-- A Watchful Eye
				qg = 313,	-- Theocritus
				qi = 1083,	-- Glyph of Azora (PQI!)
				coord = { 65.2, 69.8, MAP.ELWYNN_FOREST },
				races = ALLIANCE_ONLY,
				lvl = 20,
			}),
			q(2282, {	-- Alther's Mill
				sourceQuest = 2281,	-- Redridge Rendezvous
				qg = 6966,	-- Lucius
				qi = 5060,	-- Thieves' Tools (PQI!)
				coord = { 23.0, 52.0, MAP.REDRIDGE_MOUNTAINS },
				races = ALLIANCE_ONLY,
				classes = { ROGUE },
				lvl = 16,
				groups = {
					objective(1, {	-- 0/1 Token of Thievery
						provider = { "i", 7871 },	-- Token of Thievery (QI!)
					}),
					i(7907, {	-- Certificate of Thievery
						description = "This item has no function, but if you get caught, just hand them this like you're Ron Swanson.",
					}),
				},
			}),
			q(34, {	-- An Unwelcome Guest
				qg = 342,	-- Martie Jainrose
				coord = { 16.8, 46.3, MAP.REDRIDGE_MOUNTAINS },
				races = ALLIANCE_ONLY,
				lvl = 18,
				groups = {
					objective(1, {	-- 0/1 Bellygrub's Tusk
						provider = { "i", 3631 },	-- Bellygrub's Tusk (QI!)
						coord = { 10.8, 49.25, MAP.REDRIDGE_MOUNTAINS },
						cr = 345,	-- Bellygrub
					}),
					i(2562),	-- Bouquet of Scarlet Begonias
				},
			}),
			q(246, {	-- Assessing the Threat
				sourceQuest = 244,	-- Encroaching Gnolls
				qg = 1070,	-- Deputy Feldon
				coord = { 25.6, 60.0, MAP.REDRIDGE_MOUNTAINS },
				races = ALLIANCE_ONLY,
				lvl = 11,
				groups = {
					objective(1, {	-- 0/10 Redridge Mongrel
						provider = { "n", 423 },	-- Redridge Mongrel
					}),
					objective(2, {	-- 0/10 Redridge Poacher
						provider = { "n", 424 },	-- Redridge Poacher
					}),
				},
			}),
			q(98387, {	-- Blackrock Blockade
				qg = 382,	-- Marshal Marris
				coord = { 28.4, 49.0, MAP.REDRIDGE_MOUNTAINS },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = ALLIANCE_ONLY,
				lvl = 18,
				groups = {
					objective(1, {	-- 0/10 Stolen Supplies
						providers = {
							{ "i", 280839 },	-- Stolen Supplies (QI!)
							{ "o", 673384 },	-- Water Barrel
							{ "o", 673385 },	-- Grain Sack
							{ "o", 673399 },	-- Meat Haunch
						},
						coords = {
							{ 66.1, 73.6, MAP.REDRIDGE_MOUNTAINS },
							{ 69.4, 79.5, MAP.REDRIDGE_MOUNTAINS },
						},
					}),
					objective(2, {	-- 0/8 Stolen Weapon
						providers = {
							{ "i", 280841 },	-- Stolen Weapon (QI!)
							{ "o", 673399 },	-- Stolen Weapon
							{ "o", 673390 },	-- Weapon Rack
						},
						coords = {
							{ 65.3, 75.9, MAP.REDRIDGE_MOUNTAINS },
							{ 69.6, 82.3, MAP.REDRIDGE_MOUNTAINS },
						},
					}),
				},
			}),
			q(128, {	-- Blackrock Bounty
				qg = 903,	-- Guard Howe
				coord = { 26.5, 57.9, MAP.REDRIDGE_MOUNTAINS },
				races = ALLIANCE_ONLY,
				lvl = 20,
				groups = {
					objective(1, {	-- 0/15 Blackrock Champion
						provider = { "n", 435 },	-- Blackrock Champion
					}),
				},
			}),
			q(20, {	-- Blackrock Menace
				qg = 382,	-- Marshal Marris
				coord = { 28.4, 49.0, MAP.REDRIDGE_MOUNTAINS },
				races = ALLIANCE_ONLY,
				lvl = 18,
				groups = {
					objective(1, {	-- 0/10 Battleworn Axe
						provider = { "i", 3014 },	-- Battleworn Axe (QI!)
						crs = {
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
				sourceQuest = 130,	-- Visit the Herbalist
				qg = 342,	-- Martie Jainrose
				qi = 1325,	-- Daffodil Bouquet (PQI!)
				coord = { 16.8, 46.3, MAP.REDRIDGE_MOUNTAINS },
				races = ALLIANCE_ONLY,
				lvl = 12,
				groups = {
					i(1326),	-- Sauteed Sunfish
				},
			}),
			q(116, {	-- Dry Times
				qg = 346,	-- Barkeep Daniels
				coord = { 21.4, 44.0, MAP.REDRIDGE_MOUNTAINS },
				maps = {
					MAP.DUSKWOOD,
					MAP.ELWYNN_FOREST,
					MAP.STORMWIND_CITY,
					MAP.WESTFALL,
				},
				cost = {
					{ "i", 1942, 1 },	-- Bottle of Moonshine
					{ "i", 1941, 1 },	-- Cask of Merlot
					{ "i", 1262, 1 },	-- Keg of Thunderbrew
					{ "i", 1939, 1 },	-- Skin of Sweet Rum
				},
				races = ALLIANCE_ONLY,
				lvl = 12,
				groups = {
					i(1270),	-- Finely Woven Cloak
					i(10456),	-- A Bulging Coin Purse
				},
			}),
			q(244, {	-- Encroaching Gnolls
				qg = 464,	-- Guard Parker
				coord = { 10.4, 71.4, MAP.REDRIDGE_MOUNTAINS },
				races = ALLIANCE_ONLY,
				lvl = 11,
			}),
			q(3741, {	-- Hilary's Necklace
				qg = 8965,	-- Shawn
				coord = { 24.2, 53.6, MAP.REDRIDGE_MOUNTAINS },
				lvl = 12,
				groups = {
					objective(1, {	-- 0/1 Hilary's Necklace
						providers = {
							{ "i",  10958 },	-- Hilary's Necklace (QI!)
							{ "o", 154357 },	-- Glinting Mud
						},
						coords = {
							{ 14.3, 51.8, MAP.REDRIDGE_MOUNTAINS },
							{ 21.9, 54.1, MAP.REDRIDGE_MOUNTAINS },
							{ 32.8, 54.4, MAP.REDRIDGE_MOUNTAINS },
						},
					}),
				},
			}),
			q(126, {	-- Howling in the Hills
				sourceQuest = 124,	-- A Baying of Gnolls
				qg = 415,	-- Verner Osgood
				coord = { 25.9, 47.3, MAP.REDRIDGE_MOUNTAINS },
				races = ALLIANCE_ONLY,
				lvl = 15,
				groups = {
					objective(1, {	-- 0/1 Yowler's Paw
						provider = { "i", 3614 },	-- Yowler's Paw (QI!)
						coord = { 27.0, 20.0, MAP.REDRIDGE_MOUNTAINS },
						cr = 518,	-- Yowler
					}),
					i(1319),	-- Ring of Iron Will
					i(2910),	-- Gold Militia Boots
				},
			}),
			q(248, {	-- Looking Further
				sourceQuest = 94,	-- A Watchful Eye
				providers = {
					{ "o",   31 },	-- Old Lion Statue
					{ "i", 1083 },	-- Glyph of Azora (QI!)
					{ "o",   76 },	-- An Empty Jar
				},
				coord = { 79.2, 46.7, MAP.REDRIDGE_MOUNTAINS },
				races = ALLIANCE_ONLY,
				lvl = 20,
			}),
			q(145, {	-- Messenger to Darkshire (1/2)
				sourceQuest = 144,	-- Messenger to Westfall (2/2)
				qg = 344,	-- Magistrate Solomon
				qi = 1409,	-- Solomon's Plea to Darkshire (PQI!)
				coord = { 24.9, 44.4, MAP.REDRIDGE_MOUNTAINS },
				races = ALLIANCE_ONLY,
				lvl = 18,
			}),
			q(146, {	-- Messenger to Darkshire (2/2)
				sourceQuest = 145,	-- Messenger to Darkshire (1/2)
				qg = 263,	-- Lord Ello Ebonlocke
				qi = 1410,	-- Ebonlocke's Response to Solomon (PQI!)
				coord = { 72.0, 46.6, MAP.DUSKWOOD },
				races = ALLIANCE_ONLY,
				lvl = 18,
			}),
			q(120, {	-- Messenger to Stormwind (1/2)
				qg = 344,	-- Magistrate Solomon
				qi = 1293,	-- The State of Lakeshire (PQI!)
				coord = { 24.9, 44.4, MAP.REDRIDGE_MOUNTAINS },
				races = ALLIANCE_ONLY,
				lvl = 14,
			}),
			q(121, {	-- Messenger to Stormwind (2/2)
				sourceQuest = 120,	-- Messenger to Stormwind (1/2)
				qg = 466,	-- General Marcus Jonathan
				qi = 1294,	-- The General's Response (PQI!)
				coord = { 63.8, 75.4, MAP.STORMWIND_CITY },
				races = ALLIANCE_ONLY,
				lvl = 14,
			}),
			q(143, {	-- Messenger to Westfall (1/2)
				sourceQuest = 121,	-- Messenger to Stormwind (2/2)
				qg = 344,	-- Magistrate Solomon
				qi = 1407,	-- Solomon's Plea to Westfall (PQI!)
				coord = { 24.9, 44.4, MAP.REDRIDGE_MOUNTAINS },
				races = ALLIANCE_ONLY,
				lvl = 14,
			}),
			q(144, {	-- Messenger to Westfall (2/2)
				sourceQuest = 143,	-- Messenger to Westfall (1/2)
				qg = 234,	-- Gryan Stoutmantle
				qi = 1408,	-- Stoutmantle's Response to Solomon (PQI!)
				coord = { 56.2, 47.6, MAP.WESTFALL },
				races = ALLIANCE_ONLY,
				lvl = 14,
			}),
			q(219, {	-- Missing In Action
				qg = 349,	-- Corporal Keeshan
				coord = { 23.4, 12.6, MAP.REDRIDGE_MOUNTAINS },
				races = ALLIANCE_ONLY,
				lvl = 19,
				groups = {
					i(3555),	-- Robe of Solomon
					i(1275),	-- Deputy Chain Coat
					i(3431),	-- Bone-studded Leather
				},
			}),
			q(249, {	-- Morganth
				sourceQuest = 248,	-- Looking Further
				providers = {
					{ "o",  31 },	-- Old Lion Statue
					{ "n", 313 },	-- Theocritus <Mage of Tower Azora>
				},
				coords = {
					{ 79.2, 46.7, MAP.REDRIDGE_MOUNTAINS },
					{ 65.2, 69.8, MAP.ELWYNN_FOREST },
				},
				races = ALLIANCE_ONLY,
				lvl = 20,
				groups = {
					objective(1, {	-- 0/1 Pendant of Shadow
						provider = { "i", 3617 },	-- Pendant of Shadow (QI!)
						coord = { 75.0, 49.0, MAP.REDRIDGE_MOUNTAINS },
						cr = 397,	-- Morganth
					}),
					i(5274),	-- Rose Mantle
				},
			}),
			q(150, {	-- Murloc Poachers
				qg = 381,	-- Dockmaster Baren
				coord = { 22.6, 47.4, MAP.REDRIDGE_MOUNTAINS },
				cost = { { "i", 1468, 8 } },	-- Murloc Fin
				races = ALLIANCE_ONLY,
				lvl = 20,
				groups = {
					i(3567),	-- Dwarven Fishing Pole
				},
			}),
			q(92, {	-- Redridge Goulash
				qg = 343,	-- Chef Breanna
				coord = { 17.6, 43.8, MAP.REDRIDGE_MOUNTAINS },
				cost = {
					{ "i", 2296, 5 },	-- Great Goretusk Snout
					{ "i", 1080, 5 },	-- Tough Condor Meat
					{ "i", 1081, 5 },	-- Crisp Spider Meat
				},
				races = ALLIANCE_ONLY,
				lvl = 15,
				groups = {
					i(1082),	-- Redridge Goulash
					i(2699),	-- Recipe: Redridge Goulash (RECIPE!)
				},
			}),
			q(347, {	-- Rethban Ore
				sourceQuest = 345,	-- Ink Supplies (Elwynn Forest)
				qg = 341,	-- Foreman Oslow
				coord = { 27.0, 48.6, MAP.REDRIDGE_MOUNTAINS },
				cost = { { "i", 2798, 5 } },	-- Rethban Ore
				races = ALLIANCE_ONLY,
				lvl = 20,
			}),
			q(119, {	-- Return to Verner
				sourceQuest = 118,	-- The Price of Shoes
				qg = 514,	-- Smith Argus
				qi = 1284,	-- Crate of Horseshoes (PQI!)
				coord = { 41.7, 65.5, MAP.ELWYNN_FOREST },
				races = ALLIANCE_ONLY,
				lvl = 13,
			}),
			q(127, {	-- Selling Fish
				qg = 381,	-- Dockmaster Baren
				coord = { 22.6, 47.4, MAP.REDRIDGE_MOUNTAINS },
				races = ALLIANCE_ONLY,
				lvl = 16,
				groups = {
					objective(1, {	-- 0/10 Spotted Sunfish
						provider = { "i", 1467 },	-- Spotted Sunfish (QI!)
						crs = {
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
				qg = 382,	-- Marshal Marris
				coord = { 28.4, 49.0, MAP.REDRIDGE_MOUNTAINS },
				races = ALLIANCE_ONLY,
				lvl = 18,
				groups = {
					objective(1, {	-- 0/3 Midnight Orb
						provider = { "i", 1261 },	-- Midnight Orb (QI!)
						coord = { 63.6, 57.6, MAP.REDRIDGE_MOUNTAINS },
						cr = 436,	-- Blackrock Shadowcaster
					}),
				},
			}),
			q(98407, {	-- Show of Force
				qg = 1070,	-- Deputy Feldon
				coord = { 25.6, 60.0, MAP.REDRIDGE_MOUNTAINS },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = ALLIANCE_ONLY,
				lvl = 11,
				groups = {
					objective(1, {	-- 0/5 Spiked Collar
						provider = { "i", 280911 },	-- Spiked Collar
						coords = {
							{ 16.0, 61.4, MAP.REDRIDGE_MOUNTAINS },
							{ 31.0, 83.6, MAP.REDRIDGE_MOUNTAINS },
						},
						cr = 712,	-- Redridge Thrasher
					}),
				},
			}),
			q(98247, {	-- Shipping Label (A)
				description = "The shipping label appears in your inventory once you seal a waylaid crate for the first time.",
				qs = 280179,	-- Shipping Label (QS!)
				qg = 256390,	-- Marcy Baker <Inventory Intake>
				coord = { 9.6, 71.0, MAP.REDRIDGE_MOUNTAINS },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = ALLIANCE_ONLY,
				lvl = 10,
				groups = {
					currency(3402),	-- Merchant's Favor x50
				},
			}),
			q(91, {	-- Solomon's Law
				qg = 900,	-- Bailiff Conacher
				coord = { 24.6, 44.3, MAP.REDRIDGE_MOUNTAINS },
				races = ALLIANCE_ONLY,
				lvl = 17,
				groups = {
					objective(1, {	-- 0/10 Shadowhide Pendant
						provider = { "i", 1075 },	-- Shadowhide Pendant (QI!)
						crs = {
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
				qg = 382,	-- Marshal Marris
				coord = { 28.4, 49.0, MAP.REDRIDGE_MOUNTAINS },
				races = ALLIANCE_ONLY,
				lvl = 18,
				groups = {
					objective(1, {	-- 0/1 Tharil'zun's Head
						provider = { "i", 1260 },	-- Tharil'zun's Head (QI!)
						coord = { 63.4, 58.8, MAP.REDRIDGE_MOUNTAINS },
						cr = 486,	-- Tharil'zun
					}),
					i(1276),	-- Fire Hardened Buckler
					i(6093),	-- Orc Crusher
				},
			}),
			q(89, {	-- The Everstill Bridge
				qg = 341,	-- Foreman Oslow
				coord = { 27.0, 48.6, MAP.REDRIDGE_MOUNTAINS },
				races = ALLIANCE_ONLY,
				lvl = 15,
				groups = {
					objective(1, {	-- 0/5 Iron Pike
						provider = { "i", 2856 },	-- Iron Pike (QI!)
						crs = {
							446,	-- Redridge Basher
							426,	-- Redridge Brute
							580,	-- Redridge Drudger
							430,	-- Redridge Mystic
							14271,	-- Ribchaser
						},
					}),
					objective(2, {	-- 0/5 Iron Rivet
						provider = { "i", 1013 },	-- Iron Rivet (QI!)
						crs = {
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
				qg = 341,	-- Foreman Oslow
				coord = { 27.0, 48.6, MAP.REDRIDGE_MOUNTAINS },
				races = ALLIANCE_ONLY,
				lvl = 15,
				groups = {
					objective(1, {	-- 0/1 Oslow's Toolbox
						providers = {
							{ "i", 1309 },	-- Oslow's Toolbox (QI!)
							{ "o",   32 },	-- Sunken Chest
						},
						coord = { 36.5, 54.68, MAP.REDRIDGE_MOUNTAINS },
					}),
					i(2313),	-- Medium Armor Kit
				},
			}),
			q(118, {	-- The Price of Shoes
				qg = 415,	-- Verner Osgood
				qi = 1283,	-- Verner's Notes
				coord = { 25.9, 47.3, MAP.REDRIDGE_MOUNTAINS },
				races = ALLIANCE_ONLY,
				lvl = 14,
			}),
			q(1699, {	-- The Rethban Gauntlet
				sourceQuest = 1698,	-- Yorus Barleybrew
				qg = 6166,	-- Yorus Barleybrew
				coord = { 21.5, 44.7, MAP.REDRIDGE_MOUNTAINS },
				races = ALLIANCE_ONLY,
				classes = { WARRIOR },
				lvl = 20,
			}),
			q(1702, {	-- The Shieldsmith
				sourceQuest = 1699,	-- The Rethban Gauntlet
				qg = 6166,	-- Yorus Barleybrew
				qi = 6843,	-- Cask of Scalder (PQI!)
				coord = { 21.5, 44.7, MAP.REDRIDGE_MOUNTAINS },
				classes = { WARRIOR },
				races = ALLIANCE_ONLY,
				lvl = 20,
				groups = {
					i(6970),	-- Furen's Favor
				},
			}),
			q(178, {	-- Theocritus' Retrieval
				qs = 1962,	-- Glowing Shadowhide Pendant (QS!)
				qi = 1956,	-- Faded Shadowhide Pendant (PQI!)
				maps = { MAP.ELWYNN_FOREST },
				races = ALLIANCE_ONLY,
				lvl = 15,
				groups = {
					i(1970),	-- Restoring Balm
				},
			}),
			q(122, {	-- Underbelly Scales
				sourceQuest = 119,	-- Return to Verner
				qg = 415,	-- Verner Osgood
				coord = { 25.9, 47.3, MAP.REDRIDGE_MOUNTAINS },
				races = ALLIANCE_ONLY,
				lvl = 14,
				groups = {
					objective(1, {	-- 0/6 Underbelly Whelp Scale
						provider = { "i", 1221 },	-- Underbelly Whelp Scale (QI!)
						crs = {
							14272,	-- Snarlflare
							441,	-- Black Dragon Whelp
						},
					}),
					i(6092),	-- Black Whelp Boots
					i(1302),	-- Black Whelp Gloves
				},
			}),
			q(130, {	-- Visit the Herbalist
				sourceQuest = 129,	-- A Free Lunch
				qg = 464,	-- Guard Parker
				coord = { 10.4, 71.4, MAP.REDRIDGE_MOUNTAINS },
				races = ALLIANCE_ONLY,
				lvl = 12,
			}),
			q(169, {	-- Wanted: Gath'Ilzogg
				provider = { "o", 60 },	-- Wanted: Gath'Ilzogg
				coord = { 24.6, 46.2, MAP.REDRIDGE_MOUNTAINS },
				races = ALLIANCE_ONLY,
				lvl = 15,
				groups = {
					objective(1, {	-- 0/1 Head of Gath'Ilzogg
						provider = { "i", 3633 },	-- Head of Gath'Ilzogg (QI!)
						coord = { 64.6, 55.8, MAP.REDRIDGE_MOUNTAINS },
						cr = 334,	-- Gath'Ilzogg <Warlord of the Blackrock Clan>
					}),
				},
			}),
			q(95999, {	-- Wanted: Insinerator Gar'im
				provider = { "o", 649051 },	-- Wanted: Insinerator Gar'im
				coord = { 24.3, 46.2, MAP.REDRIDGE_MOUNTAINS },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = ALLIANCE_ONLY,
				lvl = 15,
				groups = {
					objective(1, {	-- 0/1 Broken Staff of Incinerator Gar'im
						provider = { "i", 271872 },	-- Broken Staff of Incinerator Gar'im (QI!)
						coord = { 77.8, 86.6, MAP.REDRIDGE_MOUNTAINS },
						cr = 214519,	-- Incinerator Gar'im
					}),
					i(277234),	-- Alacritous Treads
					i(277226),	-- Disjointed Shoes
					i(277218),	-- Incinerator's Boots
				},
			}),
			q(180, {	-- Wanted: Lieutenant Fangore
				provider = { "o", 47 },	-- Wanted: Lieutenant Fangore
				coord = { 21.7, 46.5, MAP.REDRIDGE_MOUNTAINS },
				races = ALLIANCE_ONLY,
				lvl = 15,
				groups = {
					objective(1, {	-- 0/1 Fangore's Paw
						provider = { "i", 3632 },	-- Fangore's Paw (QI!)
						coord = { 75.0, 39.0, MAP.REDRIDGE_MOUNTAINS },
						cr = 703,	-- Lieutenant Fangore
					}),
				},
			}),
			q(1698, {	-- Yorus Barleybrew
				qgs = {
					5479,	-- Wu Shen <Warrior Trainer>
					7315,	-- Darnath Bladesinger <Warrior Trainer>
				},
				coords = {
					{ 48.6, 35.6, MAP.DARNASSUS },
					{ 78.8, 45.6, MAP.STORMWIND_CITY },
				},
				races = ALLIANCE_ONLY,
				classes = { WARRIOR },
				isBreadcrumb = true,
				lvl = 20,
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
				coord = { 24.0, 47.3, MAP.REDRIDGE_MOUNTAINS },
				races = ALLIANCE_ONLY,
				groups = {
					i(20576, {	-- Pattern: Black Whelp Tunic (RECIPE!)
						isLimited = true,
					}),
					i(5772, {	-- Pattern: Red Woolen Bag (RECIPE!)
						isLimited = true,
					}),
				},
			}),
			n(256732, {	-- Alynsia
				coord = { 11.1, 71.6, MAP.REDRIDGE_MOUNTAINS },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = ALLIANCE_ONLY,
				groups = bubbleDownClassicRep(2586, {	-- Azeroth Commerce Authority
					{	-- Neutral
						i(271624, {	-- Enchanting Certification
							cost = { { "c", 3402, 1000 } },	-- x1000 Merchant's Favor
						}),
						i(249479, {	-- Formula: Enchant Weapon - Insight (RECIPE!)
							cost = { { "c", 3402, 45 } },	-- x45 Merchant's Favor
						}),
						i(249480, {	-- Formula: Enchant Weapon - Recovery (RECIPE!)
							cost = { { "c", 3402, 45 } },	-- x45 Merchant's Favor
						}),
						i(249481, {	-- Formula: Enchant Weapon - Revelation (RECIPE!)
							cost = { { "c", 3402, 45 } },	-- x45 Merchant's Favor
						}),
						i(249482, {	-- Formula: Glimmering Staff (RECIPE!)
							cost = { { "c", 3402, 45 } },	-- x45 Merchant's Favor
						}),
						i(249476, {	-- Formula: Mystic Mushroom (RECIPE!)
							cost = { { "c", 3402, 45 } },	-- x45 Merchant's Favor
						}),
						i(249484, {	-- Formula: Orb of Mystic Insight (RECIPE!)
							cost = { { "c", 3402, 45 } },	-- x45 Merchant's Favor
						}),
						i(249485, {	-- Formula: Orb of Souls (RECIPE!)
							cost = { { "c", 3402, 45 } },	-- x45 Merchant's Favor
						}),
						i(249478, {	-- Formula: Polished Driftwood Icon (RECIPE!)
							cost = { { "c", 3402, 45 } },	-- x45 Merchant's Favor
						}),
						i(249483, {	-- Formula: Soulstaff (RECIPE!)
							cost = { { "c", 3402, 45 } },	-- x45 Merchant's Favor
						}),
						i(249477, {	-- Formula: Tenets of the Silver Hand (RECIPE!)
							cost = { { "c", 3402, 45 } },	-- x45 Merchant's Favor
						}),
					}, {	-- Friendly
						i(249510, {	-- Formula: Enchant Chest - Absorption (RECIPE!)
							cost = { { "c", 3402, 120 } },	-- x120 Merchant's Favor
						}),
						i(249504, {	-- Formula: Enchant Necklace - Agility (RECIPE!)
							cost = { { "c", 3402, 120 } },	-- x120 Merchant's Favor
						}),
						i(249505, {	-- Formula: Enchant Necklace - Deflection (RECIPE!)
							cost = { { "c", 3402, 120 } },	-- x120 Merchant's Favor
						}),
						i(249503, {	-- Formula: Enchant Necklace - Healing Power (RECIPE!)
							cost = { { "c", 3402, 120 } },	-- x120 Merchant's Favor
						}),
						i(249502, {	-- Formula: Enchant Necklace - Spell Power (RECIPE!)
							cost = { { "c", 3402, 120 } },	-- x120 Merchant's Favor
						}),
						i(249496, {	-- Formula: Enchant Necklace - Strength (RECIPE!)
							cost = { { "c", 3402, 120 } },	-- x120 Merchant's Favor
						}),
						i(249507, {	-- Formula: Dreamstaff (RECIPE!)
							cost = { { "c", 3402, 120 } },	-- x120 Merchant's Favor
						}),
						i(249494, {	-- Formula: Libram of Invocation (RECIPE!)
							cost = { { "c", 3402, 120 } },	-- x120 Merchant's Favor
						}),
						i(249506, {	-- Formula: Radiant Staff (RECIPE!)
							cost = { { "c", 3402, 120 } },	-- x120 Merchant's Favor
						}),
						i(249493, {	-- Formula: Talons of Wrath (RECIPE!)
							cost = { { "c", 3402, 120 } },	-- x120 Merchant's Favor
						}),
						i(249495, {	-- Formula: Totem of Ancestral Protection (RECIPE!)
							cost = { { "c", 3402, 120 } },	-- x120 Merchant's Favor
						}),
						i(249508, {	-- Formula: Truesilver Conduit (RECIPE!)
							cost = { { "c", 3402, 120 } },	-- x120 Merchant's Favor
						}),
						i(249509, {	-- Formula: Twisting Essence Jar (RECIPE!)
							cost = { { "c", 3402, 120 } },	-- x120 Merchant's Favor
						}),
					}, {	-- Honored
						i(249537, {	-- Formula: Brilliant Wand (RECIPE!)
							cost = { { "c", 3402, 180 } },	-- x180 Merchant's Favor
						}),
						i(249526, {	-- Formula: Enchant 2H Weapon - Mighty Healing Power (RECIPE!)
							cost = { { "c", 3402, 240 } },	-- x240 Merchant's Favor
						}),
						i(249525, {	-- Formula: Enchant 2H Weapon - Mighty Spell Power (RECIPE!)
							cost = { { "c", 3402, 240 } },	-- x240 Merchant's Favor
						}),
						i(274394, {	-- Formula: Enchant 2H Weapon - Spellblasting (RECIPE!)
							cost = { { "c", 3402, 240 } },	-- x240 Merchant's Favor
						}),
						i(274399, {	-- Formula: Enchant Cloak - Agility (RECIPE!)
							cost = { { "c", 3402, 240 } },	-- x240 Merchant's Favor
						}),
						i(274401, {	-- Formula: Enchant Bracer - Greater Spellpower (RECIPE!)
							cost = { { "c", 3402, 240 } },	-- x240 Merchant's Favor
						}),
						i(249539, {	-- Formula: Enchant Bracer - Superior Deflection (RECIPE!)
							cost = { { "c", 3402, 240 } },	-- x240 Merchant's Favor
						}),
						i(249538, {	-- Formula: Enchant Bracer - Superior Intellect (RECIPE!)
							cost = { { "c", 3402, 240 } },	-- x240 Merchant's Favor
						}),
						i(249534, {	-- Formula: Enchant Gloves - Arcane Power (RECIPE!)
							cost = { { "c", 3402, 240 } },	-- x240 Merchant's Favor
						}),
						i(249536, {	-- Formula: Enchant Gloves - Holy Power (RECIPE!)
							cost = { { "c", 3402, 240 } },	-- x240 Merchant's Favor
						}),
						i(249535, {	-- Formula: Enchant Gloves - Natural Power (RECIPE!)
							cost = { { "c", 3402, 240 } },	-- x240 Merchant's Favor
						}),
						i(274398, {	-- Formula: Enchant Gloves - Superior Strength (RECIPE!)
							cost = { { "c", 3402, 240 } },	-- x240 Merchant's Favor
						}),
						i(274393, {	-- Formula: Enchant Off-Hand - Wisdom (RECIPE!)
							cost = { { "c", 3402, 240 } },	-- x240 Merchant's Favor
						}),
						i(249529, {	-- Formula: Idol of the Dream (RECIPE!)
							cost = { { "c", 3402, 240 } },	-- x240 Merchant's Favor
						}),
						i(249530, {	-- Formula: Libram of Holy Alacrity (RECIPE!)
							cost = { { "c", 3402, 240 } },	-- x240 Merchant's Favor
						}),
						i(249532, {	-- Formula: Totem of Thunder (RECIPE!)
							cost = { { "c", 3402, 240 } },	-- x240 Merchant's Favor
						}),
					}, {	-- Revered
					}, {	-- Exalted
					},
				}),
			}),
			n(3097, {	-- Bernard Brubaker <Leather Armor Merchant>
				coord = { 83.2, 71.0, MAP.REDRIDGE_MOUNTAINS },
				races = ALLIANCE_ONLY,
				groups = {
					i(4795, {	-- Bear Bracers
						isLimited = true,
					}),
					i(4796, {	-- Owl Bracers
						isLimited = true,
					}),
					i(4794, {	-- Wolf Bracers
						isLimited = true,
					}),
				},
			}),
			n(3096, {	-- Captured Servant of Azora <Specialist Tailoring Supplies>
				coord = { 69.4, 79.5, MAP.REDRIDGE_MOUNTAINS },
				races = ALLIANCE_ONLY,
				groups = {
					i(4790, {	-- Inferno Cloak
						isLimited = true,
					}),
					i(4792, {	-- Spirit Cloak
						isLimited = true,
					}),
					i(4793, {	-- Sylvan Cloak
						isLimited = true,
					}),
				},
			}),
			n(2697, {	-- Clyde Ranthal <Leatherworking Supplies>
				coord = { 83.9, 70.9, MAP.REDRIDGE_MOUNTAINS },
				races = ALLIANCE_ONLY,
				groups = {
					i(7289, {	-- Pattern: Black Whelp Cloak (RECIPE!)
						isLimited = true,
					}),
				},
			}),
			n(256734, {	-- Daniel Stitchsong
				coord = { 10.0, 72.6, MAP.REDRIDGE_MOUNTAINS },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = ALLIANCE_ONLY,
				groups = bubbleDownClassicRep(2586, {	-- Azeroth Commerce Authority
					{	-- Neutral
						i(271626, {	-- Leatherworking Certification
							cost = { { "c", 3402, 1000 } },	-- x1000 Merchant's Favor
						}),
						i(252765, {	-- Pattern: Brawler's Leather Belt (RECIPE!)
							cost = { { "c", 3402, 30 } },	-- x30 Merchant's Favor
						}),
						i(252786, {	-- Pattern: Brawler's Leather Boots (RECIPE!)
							cost = { { "c", 3402, 30 } },	-- x30 Merchant's Favor
						}),
						i(252777, {	-- Pattern: Brawler's Leather Gloves (RECIPE!)
							cost = { { "c", 3402, 30 } },	-- x30 Merchant's Favor
						}),
						i(252798, {	-- Pattern: Brawler's Leather Hood (RECIPE!)
							cost = { { "c", 3402, 30 } },	-- x30 Merchant's Favor
						}),
						i(252820, {	-- Pattern: Brawler's Leather Legguards (RECIPE!)
							cost = { { "c", 3402, 30 } },	-- x30 Merchant's Favor
						}),
						i(252805, {	-- Pattern: Brawler's Leather Tunic (RECIPE!)
							cost = { { "c", 3402, 30 } },	-- x30 Merchant's Favor
						}),
						i(252767, {	-- Pattern: Defender's Leather Belt (RECIPE!)
							cost = { { "c", 3402, 30 } },	-- x30 Merchant's Favor
						}),
						i(252788, {	-- Pattern: Defender's Leather Boots (RECIPE!)
							cost = { { "c", 3402, 30 } },	-- x30 Merchant's Favor
						}),
						i(252779, {	-- Pattern: Defender's Leather Gloves (RECIPE!)
							cost = { { "c", 3402, 30 } },	-- x30 Merchant's Favor
						}),
						i(252800, {	-- Pattern: Defender's Leather Hood (RECIPE!)
							cost = { { "c", 3402, 30 } },	-- x30 Merchant's Favor
						}),
						i(252822, {	-- Pattern: Defender's Leather Kilt (RECIPE!)
							cost = { { "c", 3402, 30 } },	-- x30 Merchant's Favor
						}),
						i(252807, {	-- Pattern: Defender's Leather Tunic (RECIPE!)
							cost = { { "c", 3402, 30 } },	-- x30 Merchant's Favor
						}),
						i(252769, {	-- Pattern: Stormrider's Leather Belt (RECIPE!)
							cost = { { "c", 3402, 30 } },	-- x30 Merchant's Favor
						}),
						i(252790, {	-- Pattern: Stormrider's Leather Boots (RECIPE!)
							cost = { { "c", 3402, 30 } },	-- x30 Merchant's Favor
						}),
						i(252781, {	-- Pattern: Stormrider's Leather Gloves (RECIPE!)
							cost = { { "c", 3402, 30 } },	-- x30 Merchant's Favor
						}),
						i(252802, {	-- Pattern: Stormrider's Leather Hood (RECIPE!)
							cost = { { "c", 3402, 30 } },	-- x30 Merchant's Favor
						}),
						i(252824, {	-- Pattern: Stormrider's Leather Kilt (RECIPE!)
							cost = { { "c", 3402, 30 } },	-- x30 Merchant's Favor
						}),
						i(252809, {	-- Pattern: Stormrider's Leather Tunic (RECIPE!)
							cost = { { "c", 3402, 30 } },	-- x30 Merchant's Favor
						}),
						i(252768, {	-- Pattern: Totemic Leather Belt (RECIPE!)
							cost = { { "c", 3402, 30 } },	-- x30 Merchant's Favor
						}),
						i(252789, {	-- Pattern: Totemic Leather Boots (RECIPE!)
							cost = { { "c", 3402, 30 } },	-- x30 Merchant's Favor
						}),
						i(252780, {	-- Pattern: Totemic Leather Gloves (RECIPE!)
							cost = { { "c", 3402, 30 } },	-- x30 Merchant's Favor
						}),
						i(252801, {	-- Pattern: Totemic Leather Hood (RECIPE!)
							cost = { { "c", 3402, 30 } },	-- x30 Merchant's Favor
						}),
						i(252823, {	-- Pattern: Totemic Leather Leggings (RECIPE!)
							cost = { { "c", 3402, 30 } },	-- x30 Merchant's Favor
						}),
						i(252808, {	-- Pattern: Totemic Leather Tunic (RECIPE!)
							cost = { { "c", 3402, 30 } },	-- x30 Merchant's Favor
						}),
						i(252767, {	-- Pattern: Trapper's Leather Belt (RECIPE!)
							cost = { { "c", 3402, 30 } },	-- x30 Merchant's Favor
						}),
						i(252787, {	-- Pattern: Trapper's Leather Boots (RECIPE!)
							cost = { { "c", 3402, 30 } },	-- x30 Merchant's Favor
						}),
						i(252778, {	-- Pattern: Trapper's Leather Gloves (RECIPE!)
							cost = { { "c", 3402, 30 } },	-- x30 Merchant's Favor
						}),
						i(252799, {	-- Pattern: Trapper's Leather Hood (RECIPE!)
							cost = { { "c", 3402, 30 } },	-- x30 Merchant's Favor
						}),
						i(252821, {	-- Pattern: Trapper's Leather Legguards (RECIPE!)
							cost = { { "c", 3402, 30 } },	-- x30 Merchant's Favor
						}),
						i(252806, {	-- Pattern: Trapper's Leather Tunic (RECIPE!)
							cost = { { "c", 3402, 30 } },	-- x30 Merchant's Favor
						}),
						i(252803, {	-- Pattern: Wisdom's Leather Hood (RECIPE!)
							cost = { { "c", 3402, 30 } },	-- x30 Merchant's Favor
						}),
						i(252782, {	-- Pattern: Wisdom's Leather Gloves (RECIPE!)
							cost = { { "c", 3402, 30 } },	-- x30 Merchant's Favor
						}),
						i(252825, {	-- Pattern: Wisdom's Leather Leggings (RECIPE!)
							cost = { { "c", 3402, 30 } },	-- x30 Merchant's Favor
						}),
						i(252770, {	-- Pattern: Wisdom's Leather Belt (RECIPE!)
							cost = { { "c", 3402, 30 } },	-- x30 Merchant's Favor
						}),
						i(252810, {	-- Pattern: Wisdom's Leather Tunic (RECIPE!)
							cost = { { "c", 3402, 30 } },	-- x30 Merchant's Favor
						}),
					}, {	-- Friendly
						i(252834, {	-- Pattern: Forceful Thick Armor Kit (RECIPE!)
							cost = { { "c", 3402, 60 } },	-- x60 Merchant's Favor
						}),
						i(252842, {	-- Pattern: Mender's Leather Gloves (RECIPE!)
							cost = { { "c", 3402, 60 } },	-- x60 Merchant's Favor
						}),
						i(252852, {	-- Pattern: Mender's Leather Shoulder (RECIPE!)
							cost = { { "c", 3402, 60 } },	-- x60 Merchant's Favor
						}),
						i(252903, {	-- Pattern: Mender's Mail Shoulder (RECIPE!)
							cost = { { "c", 3402, 60 } },	-- x60 Merchant's Favor
						}),
						i(252836, {	-- Pattern: Prowler's Leather Gloves (RECIPE!)
							cost = { { "c", 3402, 60 } },	-- x60 Merchant's Favor
						}),
						i(252848, {	-- Pattern: Prowler's Leather Shoulder (RECIPE!)
							cost = { { "c", 3402, 60 } },	-- x60 Merchant's Favor
						}),
						i(252840, {	-- Pattern: Skirmisher's Leather Gloves (RECIPE!)
							cost = { { "c", 3402, 60 } },	-- x60 Merchant's Favor
						}),
						i(252902, {	-- Pattern: Skirmisher's Mail Shoulder (RECIPE!)
							cost = { { "c", 3402, 60 } },	-- x60 Merchant's Favor
						}),
						i(252841, {	-- Pattern: Skycaller's Leather Gloves (RECIPE!)
							cost = { { "c", 3402, 60 } },	-- x60 Merchant's Favor
						}),
						i(252851, {	-- Pattern: Skycaller's Leather Shoulder (RECIPE!)
							cost = { { "c", 3402, 60 } },	-- x60 Merchant's Favor
						}),
						i(252901, {	-- Pattern: Skycaller's Mail Shoulder (RECIPE!)
							cost = { { "c", 3402, 60 } },	-- x60 Merchant's Favor
						}),
						i(252837, {	-- Pattern: Skulker's Leather Gloves (RECIPE!)
							cost = { { "c", 3402, 60 } },	-- x60 Merchant's Favor
						}),
						i(252849, {	-- Pattern: Skulker's Leather Shoulder (RECIPE!)
							cost = { { "c", 3402, 60 } },	-- x60 Merchant's Favor
						}),
						i(252838, {	-- Pattern: Stalker's Leather Gloves (RECIPE!)
							cost = { { "c", 3402, 60 } },	-- x60 Merchant's Favor
						}),
						i(252900, {	-- Pattern: Stalker's Mail Shoulder (RECIPE!)
							cost = { { "c", 3402, 60 } },	-- x60 Merchant's Favor
						}),
						i(252839, {	-- Pattern: Warden's Leather Gloves (RECIPE!)
							cost = { { "c", 3402, 60 } },	-- x60 Merchant's Favor
						}),
						i(252850, {	-- Pattern: Warden's Leather Shoulder (RECIPE!)
							cost = { { "c", 3402, 60 } },	-- x60 Merchant's Favor
						}),
					}, {	-- Honored
						i(252864, {	-- Pattern: Mender's Leather Boots (RECIPE!)
							cost = { { "c", 3402, 90 } },	-- x90 Merchant's Favor
						}),
						i(252857, {	-- Pattern: Mender's Leather Bracers (RECIPE!)
							cost = { { "c", 3402, 90 } },	-- x90 Merchant's Favor
						}),
						i(252876, {	-- Pattern: Mender's Leather Waistguard (RECIPE!)
							cost = { { "c", 3402, 90 } },	-- x90 Merchant's Favor
						}),
						i(252925, {	-- Pattern: Mender's Mail Belt (RECIPE!)
							cost = { { "c", 3402, 90 } },	-- x90 Merchant's Favor
						}),
						i(252907, {	-- Pattern: Mender's Mail Bracers (RECIPE!)
							cost = { { "c", 3402, 90 } },	-- x90 Merchant's Favor
						}),
						i(252913, {	-- Pattern: Mender's Mail Sabatons (RECIPE!)
							cost = { { "c", 3402, 90 } },	-- x90 Merchant's Favor
						}),
						i(252941, {	-- Pattern: Mystic Rugged Armor Kit (RECIPE!)
							cost = { { "c", 3402, 90 } },	-- x90 Merchant's Favor
						}),
						i(252860, {	-- Pattern: Prowler's Leather Boots (RECIPE!)
							cost = { { "c", 3402, 90 } },	-- x90 Merchant's Favor
						}),
						i(252853, {	-- Pattern: Prowler's Leather Bracers (RECIPE!)
							cost = { { "c", 3402, 90 } },	-- x90 Merchant's Favor
						}),
						i(252872, {	-- Pattern: Prowler's Leather Waistguard (RECIPE!)
							cost = { { "c", 3402, 90 } },	-- x90 Merchant's Favor
						}),
						i(252863, {	-- Pattern: Skycaller's Leather Boots (RECIPE!)
							cost = { { "c", 3402, 90 } },	-- x90 Merchant's Favor
						}),
						i(252856, {	-- Pattern: Skycaller's Leather Bracers (RECIPE!)
							cost = { { "c", 3402, 90 } },	-- x90 Merchant's Favor
						}),
						i(252875, {	-- Pattern: Skycaller's Leather Waistguard (RECIPE!)
							cost = { { "c", 3402, 90 } },	-- x90 Merchant's Favor
						}),
						i(252923, {	-- Pattern: Skycaller's Mail Belt (RECIPE!)
							cost = { { "c", 3402, 90 } },	-- x90 Merchant's Favor
						}),
						i(252905, {	-- Pattern: Skycaller's Mail Bracers (RECIPE!)
							cost = { { "c", 3402, 90 } },	-- x90 Merchant's Favor
						}),
						i(252911, {	-- Pattern: Skycaller's Mail Sabatons (RECIPE!)
							cost = { { "c", 3402, 90 } },	-- x90 Merchant's Favor
						}),
						i(252924, {	-- Pattern: Skirmisher's Mail Belt (RECIPE!)
							cost = { { "c", 3402, 90 } },	-- x90 Merchant's Favor
						}),
						i(252906, {	-- Pattern: Skirmisher's Mail Bracers (RECIPE!)
							cost = { { "c", 3402, 90 } },	-- x90 Merchant's Favor
						}),
						i(252912, {	-- Pattern: Skirmisher's Mail Sabatons (RECIPE!)
							cost = { { "c", 3402, 90 } },	-- x90 Merchant's Favor
						}),
						i(252861, {	-- Pattern: Skulker's Leather Boots (RECIPE!)
							cost = { { "c", 3402, 90 } },	-- x90 Merchant's Favor
						}),
						i(252854, {	-- Pattern: Skulker's Leather Bracers (RECIPE!)
							cost = { { "c", 3402, 90 } },	-- x90 Merchant's Favor
						}),
						i(252873, {	-- Pattern: Skulker's Leather Waistguard (RECIPE!)
							cost = { { "c", 3402, 90 } },	-- x90 Merchant's Favor
						}),
						i(252922, {	-- Pattern: Stalker's Mail Belt (RECIPE!)
							cost = { { "c", 3402, 90 } },	-- x90 Merchant's Favor
						}),
						i(252904, {	-- Pattern: Stalker's Mail Bracers (RECIPE!)
							cost = { { "c", 3402, 90 } },	-- x90 Merchant's Favor
						}),
						i(252910, {	-- Pattern: Stalker's Mail Sabatons (RECIPE!)
							cost = { { "c", 3402, 90 } },	-- x90 Merchant's Favor
						}),
						i(252862, {	-- Pattern: Warden's Leather Boots (RECIPE!)
							cost = { { "c", 3402, 90 } },	-- x90 Merchant's Favor
						}),
						i(252855, {	-- Pattern: Warden's Leather Bracers (RECIPE!)
							cost = { { "c", 3402, 90 } },	-- x90 Merchant's Favor
						}),
						i(252874, {	-- Pattern: Warden's Leather Waistguard (RECIPE!)
							cost = { { "c", 3402, 90 } },	-- x90 Merchant's Favor
						}),
					}, {	-- Revered
					}, {	-- Exalted
					},
				}),
			}),
			n(956, {	-- Dorin Songblade <Armorer>
				coord = { 25.8, 46.5, MAP.REDRIDGE_MOUNTAINS },
				races = ALLIANCE_ONLY,
				groups = {
					i(1853),	-- Scalemail Belt
					i(287),	-- Scalemail Boots
					i(1852),	-- Scalemail Bracers
					i(718),	-- Scalemail Gloves
					i(286),	-- Scalemail Pants
					i(285),	-- Scalemail Vest
				},
			}),
			n(3091, {	-- Franklin Hamar <Tailoring Supplies>
				coord = { 22.1, 45.6, MAP.REDRIDGE_MOUNTAINS },
				races = ALLIANCE_ONLY,
				groups = {
					i(253665, {	-- Pattern: Linen Reagent Bag
						timeline = { TIMELINE.ADDED_1_60_1 },
					}),
					i(253668, {	-- Pattern: Woolen Reagent Bag
						timeline = { TIMELINE.ADDED_1_60_1 },
					}),
					i(4782, {	-- Solstice Robe
						isLimited = true,
					}),
					i(4781, {	-- Whispering Vest
						isLimited = true,
					}),
					i(4786, {	-- Wise Man's Belt
						isLimited = true,
					}),
				},
			}),
			n(256733, {	-- Fritz Fizzle
				coord = { 10.4, 74.4, MAP.REDRIDGE_MOUNTAINS },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = ALLIANCE_ONLY,
				groups = bubbleDownClassicRep(2586, {	-- Azeroth Commerce Authority
					{	-- Neutral
						i(271625, {	-- Engineering Certification
							cost = { { "c", 3402, 1000 } },	-- x1000 Merchant's Favor
						}),
						i(264205, {	-- Schematic: EZ-Thro Copper Bomb XL (RECIPE!)
							cost = { { "c", 3402, 45 } },	-- x45 Merchant's Favor
						}),
						i(264204, {	-- Schematic: EZ-Thro Wrap (RECIPE!)
							cost = { { "c", 3402, 45 } },	-- x45 Merchant's Favor
						}),
						i(264206, {	-- Schematic: No Slip SAF-T Padding (RECIPE!)
							cost = { { "c", 3402, 45 } },	-- x45 Merchant's Favor
						}),
						i(264203, {	-- Schematic: SAF-T Copper Bomb (RECIPE!)
							cost = { { "c", 3402, 45 } },	-- x45 Merchant's Favor
						}),
						i(264202, {	-- Schematic: SAF-T Dynamite (RECIPE!)
							cost = { { "c", 3402, 45 } },	-- x45 Merchant's Favor
						}),
						i(264201, {	-- Schematic: SAF-T Tabs (RECIPE!)
							cost = { { "c", 3402, 45 } },	-- x45 Merchant's Favor
						}),
						i(285285, {	-- Schematic: Satchel of Copper Bombs (RECIPE!)
							cost = { { "c", 3402, 45 } },	-- x45 Merchant's Favor
						}),
					}, {	-- Friendly
						i(280326, {	-- Schematic: Bent Goggles (RECIPE!)
							cost = { { "c", 3402, 180 } },	-- x180 Merchant's Favor
						}),
						i(280323, {	-- Schematic: Clanking Cord (RECIPE!)
							cost = { { "c", 3402, 180 } },	-- x180 Merchant's Favor
						}),
						i(280328, {	-- Schematic: Dented Goggles (RECIPE!)
							cost = { { "c", 3402, 180 } },	-- x180 Merchant's Favor
						}),
						i(264211, {	-- Schematic: EZ-Thro Fireproof Fuse (RECIPE!)
							cost = { { "c", 3402, 180 } },	-- x180 Merchant's Favor
						}),
						i(280325, {	-- Schematic: Floppy Goggles (RECIPE!)
							cost = { { "c", 3402, 180 } },	-- x180 Merchant's Favor
						}),
						i(280322, {	-- Schematic: Gizmo Girdle (RECIPE!)
							cost = { { "c", 3402, 180 } },	-- x180 Merchant's Favor
						}),
						i(264209, {	-- Schematic: SAF-T Bell (RECIPE!)
							cost = { { "c", 3402, 180 } },	-- x180 Merchant's Favor
						}),
						i(285286, {	-- Schematic: Satchel of Bronze Bombs (RECIPE!)
							cost = { { "c", 3402, 180 } },	-- x180 Merchant's Favor
						}),
						i(280327, {	-- Schematic: Stuckbutton Goggles (RECIPE!)
							cost = { { "c", 3402, 180 } },	-- x180 Merchant's Favor
						}),
						i(280321, {	-- Schematic: Whimsical Waistwrap (RECIPE!)
							cost = { { "c", 3402, 180 } },	-- x180 Merchant's Favor
						}),
					}, {	-- Honored
						i(264217, {	-- Schematic: Compact Critter Carrier (RECIPE!)
							cost = { { "c", 3402, 270 } },	-- x270 Merchant's Favor
						}),
						i(264216, {	-- Schematic: Emergency Field Cloak 270 (RECIPE!)
							cost = { { "c", 3402, 270 } },	-- x270 Merchant's Favor
						}),
						i(264221, {	-- Schematic: Gnomish Army Knife (RECIPE!)
							cost = { { "c", 3402, 270 } },	-- x270 Merchant's Favor
						}),
						i(264234, {	-- Schematic: Gnomish Poultryizer (RECIPE!)
							cost = { { "c", 3402, 360 } },	-- x360 Merchant's Favor
						}),
						i(264222, {	-- Schematic: Loot-A-Rang (RECIPE!)
							cost = { { "c", 3402, 270 } },	-- x270 Merchant's Favor
						}),
						i(264220, {	-- Schematic: SAF-T Disposable Parachute (RECIPE!)
							cost = { { "c", 3402, 270 } },	-- x270 Merchant's Favor
						}),
						i(285288, {	-- Schematic: Satchel of Dark Iron Bombs (RECIPE!)
							cost = { { "c", 3402, 270 } },	-- x270 Merchant's Favor
						}),
						i(285287, {	-- Schematic: Satchel of Iron Bombs (RECIPE!)
							cost = { { "c", 3402, 270 } },	-- x270 Merchant's Favor
						}),
						i(264237, {	-- Schematic: Stealthman 52 (RECIPE!)
							cost = { { "c", 3402, 360 } },	-- x360 Merchant's Favor
						}),
						i(264235, {	-- Schematic: Ultralight Goblin Glider (RECIPE!)
							cost = { { "c", 3402, 360 } },	-- x360 Merchant's Favor
						}),
						i(264232, {	-- Schematic: Ultrasafe Rechargeable Battery (RECIPE!)
							cost = { { "c", 3402, 360 } },	-- x360 Merchant's Favor
						}),
					}, {	-- Revered
					}, {	-- Exalted
					},
				}),
			}),
			n(3085, {	-- Gloria Femmel <Cooking Supplies>
				coord = { 21.5, 43.4, MAP.REDRIDGE_MOUNTAINS },
				races = ALLIANCE_ONLY,
				groups = {
					i(21219),	-- Recipe: Sagefish Delight (RECIPE!)
					i(21099),	-- Recipe: Smoked Sagefish (RECIPE!)
				},
			}),
			n(3088, {	-- Henry Chapal <Gunsmith>
				coord = { 18.8, 41.3, MAP.REDRIDGE_MOUNTAINS },
				races = ALLIANCE_ONLY,
				sym = {{"select","itemID",
					2511,	-- Hunter's Boomstick
					3023,	-- Large Bore Blunderbuss
				}},
			}),
			n(793, {	-- Kara Adams <Shield Crafter>
				coord = { 25.5, 46.5, MAP.REDRIDGE_MOUNTAINS },
				races = ALLIANCE_ONLY,
				sym = {{"select","itemID",
					2445,	-- Large Metal Shield
					17188,	-- Ringed Buckler
				}},
				groups = {
					i(4821, {	-- Bear Buckler
						isLimited = true,
					}),
					i(4820, {	-- Guardian Buckler
						isLimited = true,
					}),
					i(4822, {	-- Owl's Disk
						isLimited = true,
					}),
				},
			}),
			n(256731, {	-- Kalsey Sanden
				coord = { 10.8, 72.8, MAP.REDRIDGE_MOUNTAINS },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = ALLIANCE_ONLY,
				groups = {
					i(249888, {	-- Recipe: Calcified Smoothie (RECIPE!)
						minReputation = { 2586, FRIENDLY },	-- Azeroth Commerce Authority, Friendly.
						cost = { { "c", 3402, 60 } },	-- x60 Merchant's Favor
					}),
					i(249887, {	-- Recipe: Mrrggl Smrrthle (RECIPE!)
						cost = { { "c", 3402, 30 } },	-- x30 Merchant's Favor
					}),
					i(21219), -- Recipe: Sagefish Delight (RECIPE!)
					i(249886, {	-- Recipe: Slimy Smoothie (RECIPE!)
						cost = { { "c", 3402, 30 } },	-- x30 Merchant's Favor
					}),
					i(21099), -- Recipe: Smoked Sagefish (RECIPE!)
					i(249889, {	-- Recipe: Spicy Smoothie (RECIPE!)
						minReputation = { 2586, FRIENDLY },	-- Azeroth Commerce Authority, Friendly.
						cost = { { "c", 3402, 60 } },	-- x60 Merchant's Favor
					}),
					i(249885, {	-- Recipe: Venomous Smoothie (RECIPE!)
						cost = { { "c", 3402, 30 } },	-- x30 Merchant's Favor
					}),
					i(249890, {	-- Recipe: Wicked Smoothie (RECIPE!)
						minReputation = { 2586, HONORED },	-- Azeroth Commerce Authority, Honored.
						cost = { { "c", 3402, 90 } },	-- x90 Merchant's Favor
					}),
				},
			}),
			n(256735, {	-- Mivin Shadowweave
				coord = { 10.0, 72.8, MAP.REDRIDGE_MOUNTAINS },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = ALLIANCE_ONLY,
				groups = bubbleDownClassicRep(2586, {	-- Azeroth Commerce Authority
					{	-- Neutral
						i(253894, {	-- Pattern: Flame Boots (RECIPE!)
							cost = { { "c", 3402, 30 } },	-- x30 Merchant's Favor
						}),
						i(253954, {	-- Pattern: Flame Circlet (RECIPE!)
							cost = { { "c", 3402, 30 } },	-- x30 Merchant's Favor
						}),
						i(253918, {	-- Pattern: Flame Gloves (RECIPE!)
							cost = { { "c", 3402, 30 } },	-- x30 Merchant's Favor
						}),
						i(253966, {	-- Pattern: Flame Gown (RECIPE!)
							cost = { { "c", 3402, 30 } },	-- x30 Merchant's Favor
						}),
						i(253992, {	-- Pattern: Flame Leggings (RECIPE!)
							cost = { { "c", 3402, 30 } },	-- x30 Merchant's Favor
						}),
						i(253930, {	-- Pattern: Flame Sash (RECIPE!)
							cost = { { "c", 3402, 30 } },	-- x30 Merchant's Favor
						}),
						i(253898, {	-- Pattern: Pearly Boots (RECIPE!)
							cost = { { "c", 3402, 30 } },	-- x30 Merchant's Favor
						}),
						i(253958, {	-- Pattern: Pearly Circlet (RECIPE!)
							cost = { { "c", 3402, 30 } },	-- x30 Merchant's Favor
						}),
						i(253922, {	-- Pattern: Pearly Gloves (RECIPE!)
							cost = { { "c", 3402, 30 } },	-- x30 Merchant's Favor
						}),
						i(253970, {	-- Pattern: Pearly Gown (RECIPE!)
							cost = { { "c", 3402, 30 } },	-- x30 Merchant's Favor
						}),
						i(253996, {	-- Pattern: Pearly Leggings (RECIPE!)
							cost = { { "c", 3402, 30 } },	-- x30 Merchant's Favor
						}),
						i(253934, {	-- Pattern: Pearly Sash (RECIPE!)
							cost = { { "c", 3402, 30 } },	-- x30 Merchant's Favor
						}),
						i(253890, {	-- Pattern: Pristine Boots (RECIPE!)
							cost = { { "c", 3402, 30 } },	-- x30 Merchant's Favor
						}),
						i(253950, {	-- Pattern: Pristine Circlet (RECIPE!)
							cost = { { "c", 3402, 30 } },	-- x30 Merchant's Favor
						}),
						i(253914, {	-- Pattern: Pristine Gloves (RECIPE!)
							cost = { { "c", 3402, 30 } },	-- x30 Merchant's Favor
						}),
						i(253962, {	-- Pattern: Pristine Gown (RECIPE!)
							cost = { { "c", 3402, 30 } },	-- x30 Merchant's Favor
						}),
						i(253988, {	-- Pattern: Pristine Leggings (RECIPE!)
							cost = { { "c", 3402, 30 } },	-- x30 Merchant's Favor
						}),
						i(253926, {	-- Pattern: Pristine Sash (RECIPE!)
							cost = { { "c", 3402, 30 } },	-- x30 Merchant's Favor
						}),
						i(253896, {	-- Pattern: Shadow Boots (RECIPE!)
							cost = { { "c", 3402, 30 } },	-- x30 Merchant's Favor
						}),
						i(253956, {	-- Pattern: Shadow Circlet (RECIPE!)
							cost = { { "c", 3402, 30 } },	-- x30 Merchant's Favor
						}),
						i(253920, {	-- Pattern: Shadow Gloves (RECIPE!)
							cost = { { "c", 3402, 30 } },	-- x30 Merchant's Favor
						}),
						i(253968, {	-- Pattern: Shadow Gown (RECIPE!)
							cost = { { "c", 3402, 30 } },	-- x30 Merchant's Favor
						}),
						i(253994, {	-- Pattern: Shadow Leggings (RECIPE!)
							cost = { { "c", 3402, 30 } },	-- x30 Merchant's Favor
						}),
						i(253932, {	-- Pattern: Shadow Sash (RECIPE!)
							cost = { { "c", 3402, 30 } },	-- x30 Merchant's Favor
						}),
						i(253900, {	-- Pattern: Shining Boots (RECIPE!)
							cost = { { "c", 3402, 30 } },	-- x30 Merchant's Favor
						}),
						i(253960, {	-- Pattern: Shining Circlet (RECIPE!)
							cost = { { "c", 3402, 30 } },	-- x30 Merchant's Favor
						}),
						i(253924, {	-- Pattern: Shining Gloves (RECIPE!)
							cost = { { "c", 3402, 30 } },	-- x30 Merchant's Favor
						}),
						i(253972, {	-- Pattern: Shining Gown (RECIPE!)
							cost = { { "c", 3402, 30 } },	-- x30 Merchant's Favor
						}),
						i(253998, {	-- Pattern: Shining Leggings (RECIPE!)
							cost = { { "c", 3402, 30 } },	-- x30 Merchant's Favor
						}),
						i(253936, {	-- Pattern: Shining Sash (RECIPE!)
							cost = { { "c", 3402, 30 } },	-- x30 Merchant's Favor
						}),
						i(253892, {	-- Pattern: Silky Boots (RECIPE!)
							cost = { { "c", 3402, 30 } },	-- x30 Merchant's Favor
						}),
						i(253952, {	-- Pattern: Silky Circlet (RECIPE!)
							cost = { { "c", 3402, 30 } },	-- x30 Merchant's Favor
						}),
						i(253916, {	-- Pattern: Silky Gloves (RECIPE!)
							cost = { { "c", 3402, 30 } },	-- x30 Merchant's Favor
						}),
						i(253964, {	-- Pattern: Silky Gown (RECIPE!)
							cost = { { "c", 3402, 30 } },	-- x30 Merchant's Favor
						}),
						i(253990, {	-- Pattern: Silky Leggings (RECIPE!)
							cost = { { "c", 3402, 30 } },	-- x30 Merchant's Favor
						}),
						i(253928, {	-- Pattern: Silky Sash (RECIPE!)
							cost = { { "c", 3402, 30 } },	-- x30 Merchant's Favor
						}),
						i(271627, {	-- Tailoring Certification
							cost = { { "c", 3402, 1000 } },	-- x1000 Merchant's Favor
						}),
					}, {	-- Friendly
						i(254028, {	-- Pattern: Black Handwraps (RECIPE!)
							cost = { { "c", 3402, 60 } },	-- x60 Merchant's Favor
						}),
						i(254088, {	-- Pattern: Black Waistcord (RECIPE!)
							cost = { { "c", 3402, 60 } },	-- x60 Merchant's Favor
						}),
						i(254026, {	-- Pattern: Fiery Handwraps (RECIPE!)
							cost = { { "c", 3402, 60 } },	-- x60 Merchant's Favor
						}),
						i(254086, {	-- Pattern: Fiery Waistcord (RECIPE!)
							cost = { { "c", 3402, 60 } },	-- x60 Merchant's Favor
						}),
						i(254024, {	-- Pattern: Frothing Handwraps (RECIPE!)
							cost = { { "c", 3402, 60 } },	-- x60 Merchant's Favor
						}),
						i(254084, {	-- Pattern: Frothing Waistcord (RECIPE!)
							cost = { { "c", 3402, 60 } },	-- x60 Merchant's Favor
						}),
						i(254082, {	-- Pattern: Gilded Waistcord (RECIPE!)
							cost = { { "c", 3402, 60 } },	-- x60 Merchant's Favor
						}),
						i(254030, {	-- Pattern: Golden Handwraps (RECIPE!)
							cost = { { "c", 3402, 60 } },	-- x60 Merchant's Favor
						}),
						i(254090, {	-- Pattern: Golden Waistcord (RECIPE!)
							cost = { { "c", 3402, 60 } },	-- x60 Merchant's Favor
						}),
						i(254036, {	-- Pattern: Mageweave Reagent Bag (RECIPE!)
							cost = { { "c", 3402, 60 } },	-- x60 Merchant's Favor
						}),
						i(254066, {	-- Pattern: Netherflame Cuffs (RECIPE!)
							cost = { { "c", 3402, 60 } },	-- x60 Merchant's Favor
						}),
						i(254054, {	-- Pattern: Netherflame Shoulders (RECIPE!)
							cost = { { "c", 3402, 60 } },	-- x60 Merchant's Favor
						}),
						i(254062, {	-- Pattern: Nethergeld Cuffs (RECIPE!)
							cost = { { "c", 3402, 60 } },	-- x60 Merchant's Favor
						}),
						i(254050, {	-- Pattern: Nethergeld Shoulders (RECIPE!)
							cost = { { "c", 3402, 60 } },	-- x60 Merchant's Favor
						}),
						i(254072, {	-- Pattern: Netherlight Cuffs (RECIPE!)
							cost = { { "c", 3402, 60 } },	-- x60 Merchant's Favor
						}),
						i(254060, {	-- Pattern: Netherlight Shoulders (RECIPE!)
							cost = { { "c", 3402, 60 } },	-- x60 Merchant's Favor
						}),
						i(254064, {	-- Pattern: Netherfroth Cuffs (RECIPE!)
							cost = { { "c", 3402, 60 } },	-- x60 Merchant's Favor
						}),
						i(254052, {	-- Pattern: Netherfroth Shoulders (RECIPE!)
							cost = { { "c", 3402, 60 } },	-- x60 Merchant's Favor
						}),
						i(254068, {	-- Pattern: Netherpearl Cuffs (RECIPE!)
							cost = { { "c", 3402, 60 } },	-- x60 Merchant's Favor
						}),
						i(254056, {	-- Pattern: Netherpearl Shoulders (RECIPE!)
							cost = { { "c", 3402, 60 } },	-- x60 Merchant's Favor
						}),
						i(254070, {	-- Pattern: Nethershine Cuffs (RECIPE!)
							cost = { { "c", 3402, 60 } },	-- x60 Merchant's Favor
						}),
						i(254058, {	-- Pattern: Nethershine Shoulders (RECIPE!)
							cost = { { "c", 3402, 60 } },	-- x60 Merchant's Favor
						}),
						i(254032, {	-- Pattern: Radiant Handwraps (RECIPE!)
							cost = { { "c", 3402, 60 } },	-- x60 Merchant's Favor
						}),
						i(254092, {	-- Pattern: Radiant Waistcord (RECIPE!)
							cost = { { "c", 3402, 60 } },	-- x60 Merchant's Favor
						}),
						i(254080, {	-- Pattern: Runecloth Reagent Bag (RECIPE!)
							cost = { { "c", 3402, 60 } },	-- x60 Merchant's Favor
						}),
					}, {	-- Honored
						i(254114, {	-- Pattern: Black Sandals (RECIPE!)
							cost = { { "c", 3402, 90 } },	-- x90 Merchant's Favor
						}),
						i(254112, {	-- Pattern: Fiery Sandals (RECIPE!)
							cost = { { "c", 3402, 90 } },	-- x90 Merchant's Favor
						}),
						i(254110, {	-- Pattern: Frothing Sandals (RECIPE!)
							cost = { { "c", 3402, 90 } },	-- x90 Merchant's Favor
						}),
						i(254108, {	-- Pattern: Gilded Sandals (RECIPE!)
							cost = { { "c", 3402, 90 } },	-- x90 Merchant's Favor
						}),
						i(254116, {	-- Pattern: Golden Sandals (RECIPE!)
							cost = { { "c", 3402, 90 } },	-- x90 Merchant's Favor
						}),
						i(254118, {	-- Pattern: Radiant Sandals (RECIPE!)
							cost = { { "c", 3402, 90 } },	-- x90 Merchant's Favor
						}),
					}, {	-- Revered
					}, {	-- Exalted
					},
				}),
			}),
			n(256729, {	-- Nina Surefire
				coord = { 10.8, 72.6, MAP.REDRIDGE_MOUNTAINS },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = ALLIANCE_ONLY,
				groups = ALCHEMY_RECIPES.MERCHANTS_FAVOR_RECIPES_ALLIANCE,
			}),
			n(256730, {	-- Stondry Darkhammer
				coord = { 10.4, 74.6, MAP.REDRIDGE_MOUNTAINS },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = ALLIANCE_ONLY,
				groups = BLACKSMITHING_RECIPES.MERCHANTS_FAVOR_RECIPES_ALLIANCE,
			}),
			n(256389, {	-- Tamelyn Aldridge
				coord = { 10.5, 71.3, MAP.REDRIDGE_MOUNTAINS },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = ALLIANCE_ONLY,
				groups = {
					i(270888, {	-- Advertising License Application
						minReputation = { 2586, HONORED },	-- Azeroth Commerce Authority, Honored.
						cost = { { "c", 3402, 1200 } },	-- x1200 Merchant's Favor
					}),
					i(262765, {	-- Azeroth Commerce Authority Tabard
						minReputation = { 2586, EXALTED },	-- Azeroth Commerce Authority, Exalted.
						cost = { { "c", 3402, 200 } },	-- x200 Merchant's Favor
					}),
					i(284664, {	-- Packmule Treat
						minReputation = { 2586, REVERED },	-- Azeroth Commerce Authority, Revered.
						cost = { { "c", 3402, 1500 } },	-- x1500 Merchant's Favor
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
				providers = {
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
					{ 32.8, 41.4, MAP.REDRIDGE_MOUNTAINS },
					{ 31.4, 43.8, MAP.REDRIDGE_MOUNTAINS },
					{ 52.8, 51.8, MAP.REDRIDGE_MOUNTAINS },
					{ 36.8, 48.2, MAP.REDRIDGE_MOUNTAINS },
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
});
