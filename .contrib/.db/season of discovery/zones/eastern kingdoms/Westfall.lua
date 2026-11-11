---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

maproot(EASTERN_KINGDOMS, WESTFALL, {
	lore =
		"Westfall borders the Kingdom of Stormwind and is mostly populated by humans not under the Alliance's complete control. The region was stolen right under the Alliance's nose by its own bitter people. This rich land has lain fallow since the Second War, but it is now held by the Defias Brotherhood. Stormwind claims the land as its own, but it has found little time to be concerned with it, with insufficient funds and might to retake the region. A handful of farmers still try to keep their land, and some even attempt a tithe to Stormwind every year, but most only grow enough to feed themselves. The Defias Brotherhood controls much of the region, focused in the southern area of Moonbrook.\n\nOnce a rich agricultural center, much of Westfall now lies fallow and forgotten. The Defias Brotherhood, renegade humans who wield secrecy and technology against Stormwind, control much of the area. Bandits and gnolls raid those farms that remain, and Stormwind's resources are stretched too thin to protect the beleaguered populace. Westfall has the mild temperatures of Elwynn, but winds batter it both from the sea and from Duskwood. The bare farmlands add little to break the wind, which can cut through clothing on a blustery day.",
	icon = 236852,
	groups = {
		n(ACHIEVEMENTS, {
			ach(802),	-- Explore Westfall
		}),
		explorationHeader({
			exploration(219),	-- Alexston Farmstead
			exploration(921),	-- Demont's Place
			exploration(109),	-- Furlbrow's Pumpkin Farm
			exploration(113),	-- Gold Coast Quarry
			exploration(111),	-- Jangolode Mine
			visit_exploration(2,	{coord={58.4,9.4,WESTFALL}}),	-- Longshore
			exploration(20),	-- Moonbrook
			visit_exploration(5289,{coord={69.9,74.0,WESTFALL}}),	-- Mortwake's Tower
			exploration(107),	-- Saldean's Farm
			exploration(108),	-- Sentinel Hill
			exploration(919),	-- Stendel's Pond
			exploration(920),	-- The Dagger Hills
			exploration(917),	-- The Dead Acre
			exploration(922),	-- The Dust Plains
			exploration(916),	-- The Jansen Stead
			exploration(918),	-- The Molsen Farm
			visit_exploration(5290,{coord={35.3,45.3,WESTFALL}}),	-- The Raging Chasm
			exploration(115),	-- Westfall Lighthouse
		}),
		n(FLIGHT_PATHS, {
			fp(4, {	-- Sentinel Hill, Westfall
				cr = 523,	-- Thor <Gryphon Master>
				coords = {
					{ 56.6, 52.6, WESTFALL },
				},
				races = ALLIANCE_ONLY,
			}),
		}),
		lockpicking({
			o(123214, {	-- Duskwood Chest
				coord = { 70.5, 74.0, WESTFALL },
				requireSkill = LOCKPICKING,
				learnedAt = 70,
				groups = {
					i(7908),	-- Klaven Mortwake's Journal (QI!)
				},
			}),
		}),
		pickpocketing({
			i(7923,	{	-- Defias Tower Key (QI!)
				description = "Can also be killed for the key, though hits hard for lower level rogues.",
				coord = { 68.6, 72.2, WESTFALL },
				cr = 7051,	-- Malformed Defias Drone
			}),
			applyclassicphase(SOD_PHASE_ONE, i(209031, {	-- Discreet Envelope
				coord = { 48.6, 48.6, WESTFALL },
				classes = { ROGUE },
				crs = {
					590,	-- Defias Looter
					121,	-- Defias Pathstalker
					589,	-- Defias Pillager
					 95,	-- Defias Smuggler
					504,	-- Defias Trapper
				},
				groups = {
					i(209030, {	-- Equipment Stash Key
						classes = { ROGUE },
					}),
					i(209029, {	-- Message from Emily
						classes = { ROGUE },
					}),
				},
			})),
			applyclassicphase(SOD_PHASE_ONE, i(208772, {	-- Rune of Saber Slash
				coords = {
					{ 51.0, 47.0, WESTFALL },
					{ 51.6, 55.6, WESTFALL },
				},
				classes = { ROGUE },
				cr = 210549,	-- Defias Scout
				groups = {
					recipe(424984),	-- Engrave Gloves - Saber Slash
				},
			})),
		}),
		n(QUESTS, {
			applyclassicphase(SOD_PHASE_TWO, q(79008, {	-- ... and that note you found (A)
				providers = {
					{ "o", 415107 },	-- Burned-Out Remains
					{ "o", 417072 },	-- Nailed Plank
				},
				coords = {
					{ 37.5, 50.7, WESTFALL },
					{ 46.4, 73.8, THE_BARRENS },
				},
				timeline = { ADDED_1_15_1 },
				races = ALLIANCE_ONLY,
				lvl = 14,
				groups = {
					i(2459),	-- Swiftness Potion
					i(3388),	-- Strong Troll's Blood Potion
				},
			})),
			q(6181, {	-- A Swift Message
				qg = 491,	-- Quartermaster Lewis
				qi = 15998,	-- Lewis' Note (PQI!)
				coord = { 56.9, 47.2, WESTFALL },
				races = { HUMAN },
				lvl = 10,
			}),
			q(136, {	-- Captain Sanders' Hidden Treasure (1/4)
				provider = { "i", 1357 },	-- Captain Sanders' Treasure Map (QS!)
				lvl = 10,
			}),
			q(138, {	-- Captain Sanders' Hidden Treasure (2/4)
				sourceQuest = 136,	-- Captain Sanders' Hidden Treasure (1/4)
				providers = {
					{ "o",   35 },	-- Captain's Footlocker
					{ "i", 1358 },	-- A Clue to Sander's Treasure (PQI!)
				},
				coord = { 25.9, 47.77, WESTFALL },
				lvl = 10,
			}),
			q(139, {	-- Captain Sanders' Hidden Treasure (3/4)
				sourceQuest = 138,	-- Captain Sanders' Hidden Treasure (2/4)
				providers = {
					{ "o",   36 },	-- Broken Barrel
					{ "i", 1361 },	-- Another Clue to Sander's Treasure (PQI!)
				},
				coord = { 40.50, 47.82, WESTFALL },
				lvl = 10,
			}),
			q(140, {	-- Captain Sanders' Hidden Treasure (4/4)
				sourceQuest = 139,	-- Captain Sanders' Hidden Treasure (3/4)
				providers = {
					{ "o",   34 },	-- Old Jug
					{ "i", 1362 },	-- Final Clue to Sanders' Treasure (PQI!)
					{ "o",   33 },	-- Locked Chest
				},
				coords = {
					{ 40.62, 17.01, WESTFALL },
					{ 25.97, 16.90, WESTFALL },
				},
				lvl = 10,
				groups = {
					i(3343),	-- Captain Sanders' Booty Bag
					i(3344),	-- Captain Sanders' Sash
					i(3342),	-- Captain Sanders' Shirt
					i(2842),	-- Silver Bar
				},
			}),
			q(3861, {	-- CLUCK!
				description =
					"Simply target any Chicken and spam |cFFFFD700/chicken|r at it until it emotes at you. This will take about 100 emotes. (make a macro!)\n\nOnce it does, type /cheer with it targetted.\n\nThe Chicken will never turn friendly for a Horde player, even if they get the emote.",
				qg = 620,	-- Chicken
				maps = {
					DUSKWOOD,
					DUSTWALLOW_MARSH,
					ELWYNN_FOREST,
					HILLSBRAD_FOOTHILLS,
					THE_BARRENS,
					REDRIDGE_MOUNTAINS,
					TIRISFAL_GLADES,
					WESTFALL,
				},
				cost = { { "i", 11109, 1 } },	-- Special Chicken Feed
				races = ALLIANCE_ONLY,
				repeatable = true,
				groups = {
					i(11110, {	-- Westfall Chicken (PET!)
						description = "A Horde player can get this pet if they have an Alliance character complete the quest itself and allow the Horde player to loot the egg.",
					}),
				},
			}),
			q(6281, {	-- Continue to Stormwind
				sourceQuest = 6181,	-- A Swift Message
				qg = 523,	-- Thor
				qi = 15998,	-- Lewis' Note (PQI!)
				coord = { 56.4, 52.6, WESTFALL },
				maps = { STORMWIND_CITY },
				races = { HUMAN },
				lvl = 10,
			}),
			q(1076, {	-- Devils in Westfall
				sourceQuest = 1075,	-- A Scroll from Mauren
				qg = 4078,	-- Collin Mauren
				coord = { 43.1, 80.3, STORMWIND_CITY },
				races = ALLIANCE_ONLY,
				lvl = 17,
				groups = {
					objective(1, {	-- 0/1 Dust Devil Debris
						provider = { "i", 5669 },	-- Dust Devil Debris (QI!)
						coords = {
							{ 40.8, 22.0, WESTFALL },
							{ 35.8, 34.4, WESTFALL },
							{ 33.8, 49.4, WESTFALL },
							{ 34.6, 68.6, WESTFALL },
							{ 38.8, 61.4, WESTFALL },
							{ 42.6, 59.2, WESTFALL },
							{ 46.8, 48.6, WESTFALL },
							{ 43.0, 42.2, WESTFALL },
							{ 54.6, 41.0, WESTFALL },
							{ 61.6, 36.0, WESTFALL },
							{ 63.6, 51.4, WESTFALL },
							{ 68.8, 74.0, WESTFALL },
						},
						cr = 832,	-- Dust Devil
					}),
				},
			}),
			q(184, {	-- Furlbrow's Deed
				providers = {
					{ "i",   1972 },	-- Westfall Deed (QS!)
					{ "i",   1971 },	-- Furlbrow's Deed (PQI!)
				},
				maps = { ELWYNN_FOREST },
				races = ALLIANCE_ONLY,
				lvl = 8,
				groups = {
					i(5057),	-- Ripe Watermelon
					i(4656),	-- Small Pumpkin
				},
			}),
			q(22, {		-- Goretusk Liver Pie
				qg = 235,	-- Salma Saldean
				coord = { 56.4, 30.6, WESTFALL },
				cost = { { "i", 723, 8 } },	-- Goretusk Liver
				races = ALLIANCE_ONLY,
				lvl = 9,
				groups = {
					i(724),	-- Goretusk Liver Pie
					i(2697),	-- Recipe: Goretusk Liver Pie (RECIPE!)
				},
			}),
			q(103, {	-- Keeper of the Flame
				qg = 392,	-- Captain Grayson
				coord = { 30.0, 86.0, WESTFALL },
				lvl = 10,
				groups = {
					objective(1, {	-- 0/5 Flask of Oil
						cost = { { "i", 814, 5 } },	-- Flask of Oil
					}),
				},
			}),
			q(2359, {	-- Klaven's Tower
				sourceQuest = 2360,	-- Mathias and the Defias
				qg = 7024,	-- Agent Kearnen
				qi = 8046,	-- Kearnen's Journal (PQI!)
				coord = { 68.5, 70.2, WESTFALL },
				races = ALLIANCE_ONLY,
				classes = { ROGUE },
				lvl = 20,
				groups = {
					objective(1, {	-- 0/1 Klaven Mortwake's Journal
						provider = { "i", 7908 },	-- Klaven Mortwake's Journal (QI!)
					}),
					objective(2, {	-- 0/1 Defias Tower Key
						provider = { "i", 7923 },	-- Defias Tower Key (QI!)
					}),
					recipe(8681),	-- Instant Poison
					recipe(2842),	-- Poisons
					i(7678,	{	-- Recipe: Thistle Tea (RECIPE!)
						timeline = { REMOVED_1_3_0 },
					}),
					i(18160, {	-- Recipe: Thistle Tea (RECIPE!)
						timeline = { ADDED_1_3_0 },
					}),
				},
			}),
			q(102, {	-- Patrolling Westfall
				qg = 821,	-- Captain Danuvin
				coord = { 56.4, 47.6, WESTFALL },
				races = ALLIANCE_ONLY,
				lvl = 8,
				groups = {
					objective(1, {	-- 0/8 Gnoll Paw
						provider = { "i", 725 },	-- Gnoll Paw (QI!)
						crs = {
							452,	-- Riverpaw Bandit
							124,	-- Riverpaw Brute
							117,	-- Riverpaw Gnoll
							501,	-- Riverpaw Herbalist
							1426,	-- Riverpaw Miner
							123,	-- Riverpaw Mongrel
							453,	-- Riverpaw Mystic
							125,	-- Riverpaw Overseer
							500,	-- Riverpaw Scout
							1065,	-- Riverpaw Shaman
							98,	-- Riverpaw Taskmaster
							506,	-- Sergeant Brashclaw
						},
					}),
					i(1154),	-- Belt of the People's Militia
					i(710),	-- Bracers of the People's Militia
				},
			}),
			q(151, {	-- Poor Old Blanchy
				qg = 238,	-- Verna Furlbrow
				coord = { 60.0, 19.4, WESTFALL },
				races = ALLIANCE_ONLY,
				lvl = 9,
				groups = {
					objective(1, {	-- 0/8 Handful of Oats
						providers = {
							{ "i", 1528 },	-- Handful of Oats (QI!)
							{ "o", 2724 },	-- Sack of Oats
						},
					}),
					i(2165),	-- Old Blanchy's Blanket
					i(1537),	-- Old Blanchy's Feed Pouch
				},
			}),
			q(153, {	-- Red Leather Bandanas
				qg = 878,	-- Scout Galiaan
				coord = { 54.0, 53.0, WESTFALL },
				races = ALLIANCE_ONLY,
				lvl = 10,
				groups = {
					objective(1, {	-- 0/15 Red Leather Bandana
						provider = { "i", 829 },	-- Red Leather Bandana (QI!)
						crs = {
							502,	-- Benny Blaanco
							481,	-- Defias Footpad
							122,	-- Defias Highwayman
							449,	-- Defias Knuckleduster
							590,	-- Defias Looter
							121,	-- Defias Pathstalker
							589,	-- Defias Pillager
							6180,	-- Defias Raider
							450,	-- Defias Renegade Mage
							95,	-- Defias Smuggler
							504,	-- Defias Trapper
							594,	-- Defias Henchman
						},
					}),
					i(3511),	-- Cloak of the People's Militia
					i(5944),	-- Greaves of the People's Militia
					i(12295),	-- Leggings of the People's Militia
				},
			}),
			q(109, {	-- Report to Gryan Stoutmantle
				qgs = {
					237,	-- Farmer Furlbrow
					233,	-- Farmer Saldean
					240,	-- Marshal Dughan
					261,	-- Guard Thomas
					294,	-- Marshal Haggard
					963,	-- Deputy Rainer
				},
				coords = {
					{ 60.0, 19.4, WESTFALL },
					{ 56.0, 31.2, WESTFALL },
					{ 42.2, 65.8, ELWYNN_FOREST },
					{ 74.0, 72.2, ELWYNN_FOREST },
					{ 84.6, 69.6, ELWYNN_FOREST },
					{ 24.2, 74.6, ELWYNN_FOREST },
				},
				races = ALLIANCE_ONLY,
				lvl = 9,
			}),
			q(48, {		-- Sweet Amber (1/5)
				qg = 239,	-- Grimbooze Thunderbrew
				coord = { 44.6, 80.2, WESTFALL },
				maps = { STRANGLETHORN_VALE },
				races = ALLIANCE_ONLY,
				lvl = 40,
				groups = {
					objective(1, {	-- 0/1 Holy Spring Water
						providers = {
							{ "i", 737 },	-- Holy Spring Water (QI!)
							{ "o", 759 },	-- The Holy Spring
						},
						coord = { 28.9, 62.0, STRANGLETHORN_VALE },
					}),
				},
			}),
			q(49, {		-- Sweet Amber (2/5)
				sourceQuest = 48,	-- Sweet Amber (1/5)
				qg = 239,	-- Grimbooze Thunderbrew
				coord = { 44.6, 80.2, WESTFALL },
				maps = { THE_HINTERLANDS, TANARIS, SWAMP_OF_SORROWS },
				races = ALLIANCE_ONLY,
				lvl = 40,
				groups = {
					objective(1, {	-- 0/1 Sack of Barley
						providers = {
							{ "i",   738 },	-- Sack of Barley (QI!)
							{ "o", 50936 },	-- Sack of Barley
						},
						coord = { 62.5, 23.3, SWAMP_OF_SORROWS },
					}),
					objective(2, {	-- 0/1 Sack of Corn
						providers = {
							{ "i",   739 },	-- Sack of Corn (QI!)
							{ "o", 50935 },	-- Sack of Corn
						},
						coord = { 65.8, 36.7, TANARIS },
					}),
					objective(3, {	-- 0/1 Sack of Rye
						providers = {
							{ "i",   740 },	-- Sack of Rye (QI!)
							{ "o", 50937 },	-- Sack of Rye
						},
						coord = { 39.9, 66.2, THE_HINTERLANDS },
					}),
				},
			}),
			q(50, {		-- Sweet Amber (3/5)
				sourceQuest = 49,	-- Sweet Amber (2/5)
				qg = 239,	-- Grimbooze Thunderbrew
				coord = { 44.6, 80.2, WESTFALL },
				cost = { { "i", 6037, 1 } },	-- Truesilver Bar
				races = ALLIANCE_ONLY,
				lvl = 40,
			}),
			q(51, {		-- Sweet Amber (4/5)
				sourceQuest = 50,	-- Sweet Amber (3/5)
				qg = 239,	-- Grimbooze Thunderbrew
				coord = { 44.6, 80.2, WESTFALL },
				maps = { FERALAS },
				races = ALLIANCE_ONLY,
				lvl = 40,
				groups = {
					objective(1, {	-- 0/1 A Sycamore Branch
						provider = { "i", 742 },	-- A Sycamore Branch (QI!)
						coord = { 54.8, 70.4, FERALAS },
						cr = 5881,	-- Cursed Sycamore
					}),
				},
			}),
			q(53, {		-- Sweet Amber (5/5)
				sourceQuest = 51,	-- Sweet Amber (4/5)
				qg = 239,	-- Grimbooze Thunderbrew
				coord = { 44.6, 80.2, WESTFALL },
				maps = { SEARING_GORGE },
				races = ALLIANCE_ONLY,
				lvl = 40,
				groups = {
					objective(1, {	-- 0/1 Bundle of Charred Oak
						providers = {
							{ "i",   743 },	-- Bundle of Charred Oak (QI!)
							{ "o", 50982 },	-- The Charred Oak
						},
						coord = { 54.6, 50.7, SEARING_GORGE },
					}),
					i(744),	-- Thunderbrew's Boot Flask
				},
			}),
			q(152, {	-- The Coast Isn't Clear
				qg = 392,	-- Captain Grayson
				coord = { 30.0, 86.0, WESTFALL },
				lvl = 10,
				groups = {
					objective(1, {	-- 0/7 Murloc Coastrunner slain
						provider = { "n", 126 },	-- Murloc Coastrunner
					}),
					objective(2, {	-- 0/7 Murloc Warrior slain
						provider = { "n", 171 },	-- Murloc Warrior
					}),
					objective(3, {	-- 0/7 Murloc Tidehunter slain
						provider = { "n", 127 },	-- Murloc Tidehunter
					}),
					objective(4, {	-- 0/7 Murloc Oracle slain
						provider = { "n", 517 },	-- Murloc Oracle
					}),
				},
			}),
			q(104, {	-- The Coastal Menace
				qg = 392,	-- Captain Grayson
				coord = { 30.0, 86.0, WESTFALL },
				lvl = 15,
				groups = {
					objective(1, {	-- 0/1 Scale of Old Murk-Eye
						provider = { "i", 3636 },	-- Scale of Old Murk-Eye (QI!)
						coord = { 34.4, 84.6, WESTFALL },
						cr = 391,	-- Old Murk-Eye
					}),
					i(1557),	-- Buckler of the Seas
					i(1172),	-- Grayson's Torch
					i(5240),	-- Torchlight Wand
				},
			}),
			q(65, {		-- The Defias Brotherhood (1/7)
				qg = 234,	-- Gryan Stoutmantle
				coord = { 56.3, 47.6, WESTFALL },
				races = ALLIANCE_ONLY,
				lvl = 14,
			}),
			q(132, {	-- The Defias Brotherhood (2/7)
				sourceQuest = 65,	-- The Defias Brotherhood (1/7)
				qg = 266,	-- Wiley the Black
				qi = 1327,	-- Wiley's Note (PQI!)
				coord = { 26.6, 45.3, REDRIDGE_MOUNTAINS },
				races = ALLIANCE_ONLY,
				lvl = 14,
			}),
			q(135, {	-- The Defias Brotherhood (3/7)
				sourceQuest = 132,	-- The Defias Brotherhood (2/7)
				qg = 234,	-- Gryan Stoutmantle
				qi = 1327,	-- Wiley's Note (PQI!)
				coord = { 56.3, 47.6, WESTFALL },
				races = ALLIANCE_ONLY,
				lvl = 14,
			}),
			q(141, {	-- The Defias Brotherhood (4/7)
				sourceQuest = 135,	-- The Defias Brotherhood (3/7)
				qg = 332,	-- Master Mathias Shaw
				qi = 1353,	-- Shaw's Report (PQI!)
				coord = { 75.8, 59.8, STORMWIND_CITY },
				races = ALLIANCE_ONLY,
				lvl = 14,
			}),
			q(142, {	-- The Defias Brotherhood (5/7)
				sourceQuest = 141,	-- The Defias Brotherhood (4/7)
				qg = 234,	-- Gryan Stoutmantle
				coord = { 56.3, 47.6, WESTFALL },
				races = ALLIANCE_ONLY,
				lvl = 14,
				groups = {
					objective(1, {
						provider = { "i", 1381 },	-- A Mysterious Message (QI!)
						coord = { 45.6, 68.6, WESTFALL },
						cr = 550,	-- Defias Messenger
					}),
				},
			}),
			q(155, {	-- The Defias Brotherhood (6/7)
				sourceQuest = 142,	-- The Defias Brotherhood (5/7)
				qg = 467,	-- The Defias Traitor
				coord = { 55.6, 47.5, WESTFALL },
				races = ALLIANCE_ONLY,
				lvl = 14,
			}),
			q(64, {		-- The Forgotten Heirloom
				qg = 237,	-- Farmer Furlbrow
				coord = { 60.0, 19.4, WESTFALL },
				races = ALLIANCE_ONLY,
				lvl = 9,
				groups = {
					objective(1, {	-- 0/1 Furlbrow's Pocket Watch
						providers = {
							{ "i", 841 },	-- Furlbrow's Pocket Watch (PQI!)
							{ "o", 290 },	-- Furlbrow's Wardrobe
						},
						coord = { 49.3, 19.5, WESTFALL },
					}),
				},
			}),
			q(9, {		-- The Killing Fields
				qg = 233,	-- Farmer Saldean
				coord = { 56.0, 31.2, WESTFALL },
				races = ALLIANCE_ONLY,
				lvl = 8,
				groups = {
					objective(1, {	-- 0/20 Harvest Watcher
						provider = { "n", 114 },	-- Harvest Watcher
					}),
					i(3578),	-- Harvester's Pants
					i(1561),	-- Harvester's Robe
				},
			}),
			q(12, {		-- The People's Militia (1/3)
				qg = 234,	-- Gryan Stoutmantle
				coord = { 56.3, 47.6, WESTFALL },
				races = ALLIANCE_ONLY,
				lvl = 9,
				groups = {
					objective(1, {	-- 0/15 Defias Trapper
						provider = { "n", 504 },	-- Defias Trapper
					}),
					objective(2, {	-- 0/15 Defias Smuggler
						provider = { "n", 95 },	-- Defias Smuggler
					}),
				},
			}),
			q(13, {		-- The People's Militia (2/3)
				sourceQuest = 12,	-- The People's Militia (1/3)
				qg = 234,	-- Gryan Stoutmantle
				coord = { 56.3, 47.6, WESTFALL },
				races = ALLIANCE_ONLY,
				lvl = 9,
				groups = {
					objective(1, {	-- 0/15 Defias Pillager
						provider = { "n", 589 },	-- Defias Pillager
					}),
					objective(2, {	-- 0/15 Defias Looter
						provider = { "n", 590 },	-- Defias Looter
					}),
				},
			}),
			q(14, {		-- The People's Militia (3/3)
				sourceQuest = 13,	-- The People's Militia (2/3)
				qg = 234,	-- Gryan Stoutmantle
				coord = { 56.3, 47.6, WESTFALL },
				races = ALLIANCE_ONLY,
				lvl = 9,
				groups = {
					objective(1, {	-- 0/15 Defias Highwayman
						provider = { "n", 122 },	-- Defias Highwayman
					}),
					objective(2, {	-- 0/15 Defias Pathstalker
						provider = { "n", 121 },	-- Defias Pathstalker
					}),
					objective(3, {	-- 0/15 Defias Knuckleduster
						provider = { "n", 449 },	-- Defias Knuckleduster
					}),
					i(1566),	-- Edge of the People's Militia
					i(1480),	-- Fist of the People's Militia
					i(12296),	-- Spark of the People's Militia
				},
			}),
			q(117, {	-- Thunderbrew
				qg = 239,	-- Grimbooze Thunderbrew
				coord = { 44.6, 80.2, WESTFALL },
				cost = { { "i", 1274, 5 } },	-- Hops
				races = ALLIANCE_ONLY,
				repeatable = true,
				groups = {
					i(1262),	-- Keg of Thunderbrew
				},
			}),
			q(36, {		-- Westfall Stew (1/2)
				qg = 238,	-- Verna Furlbrow
				qi = 2832,	-- Verna's Westfall Stew Recipe (PQI!)
				coord = { 60.0, 19.4, WESTFALL },
				races = ALLIANCE_ONLY,
				lvl = 9,
			}),
			q(38, {		-- Westfall Stew (2/2)
				sourceQuest = 36,	-- Westfall Stew (1/2)
				qg = 235,	-- Salma Saldean
				coord = { 56.4, 30.6, WESTFALL },
				cost = {
					{ "i", 729, 3 },	-- Stringy Vulture Meat
					{ "i", 730, 3 },	-- Murloc Eye
					{ "i", 731, 3 },	-- Goretusk Snout
					{ "i", 732, 3 },	-- Okra
				},
				races = ALLIANCE_ONLY,
				lvl = 9,
				groups = {
					i(728),	-- Recipe: Westfall Stew (RECIPE!)
					i(733),	-- Westfall Stew
					i(1479),	-- Salma's Oven Mitts
					i(2225),	-- Sharp Kitchen Knife
				},
			}),
		}),
		n(RARES, {
			applyclassicphase(SOD_PHASE_ONE, n(210483, {	-- Aggressive Squashling
				coords = {
					{ 43.8, 33.4, WESTFALL },
					{ 50.4, 19.8, WESTFALL },
				},
				cost = {
					{ "i", 209041, 1 },	-- Magic Pumpkin Seeds
					{ "i", 209043, 1 },	-- Fertile Soil Sample
					{ "i", 209042, 1 },	-- Fishy Bonemeal
				},
				classes = { DRUID },
				groups = {
					i(208687, {	-- Rune of Lacerate
						classes = { DRUID },
						groups = {
							recipe(416049),	-- Engrave Gloves - Lacerate
						},
					}),
				},
			})),
			n(520, {	-- Brack
				description = "Brack is running up and down the beach.",
				coords = {
					{ 26.2, 65.6, WESTFALL },
					{ 26.6, 56.4, WESTFALL },
					{ 27.2, 45.0, WESTFALL },
					{ 28.8, 72.6, WESTFALL },
					{ 29.0, 34.6, WESTFALL },
					{ 29.0, 79.4, WESTFALL },
					{ 29.6, 39.8, WESTFALL },
					{ 31.0, 26.4, WESTFALL },
					{ 33.6, 83.2, WESTFALL },
					{ 35.0, 20.6, WESTFALL },
					{ 39.0, 15.0, WESTFALL },
					{ 43.0, 10.0, WESTFALL },
					{ 48.6, 10.0, WESTFALL },
					{ 55.2, 13.4, WESTFALL },
				},
				groups = {
					i(2235),	-- Brackclaw
					i(6179),	-- Privateer's Cape
				},
			}),
			applyclassicphase(SOD_PHASE_ONE, n(210549, {	-- Defias Scout
				coords = {
					{ 51.0, 47.0, WESTFALL },
					{ 51.6, 55.6, WESTFALL },
				},
				description = "Hunters need to use Hunter's Mark.",
				classes = { HUNTER },
				groups = {
					i(208777, {	-- Rune of the Sniper
						classes = { HUNTER },
						groups = {
							recipe(416091),	-- Engrave Pants - Sniper Training
						},
					}),
				},
			})),
			n(573, {	-- Foe Reaper 4000
				coords = {
					{ 38.6, 51.6, WESTFALL },
					{ 45.5, 36.0, WESTFALL },
					{ 51.6, 67.4, WESTFALL },
					{ 51.8, 24.6, WESTFALL },
					{ 62.8, 62.2, WESTFALL },
				},
				groups = {
					i(933),	-- Large Rucksack
					i(4434),	-- Scarecrow Trousers
				},
			}),
			applyclassicphase(SOD_PHASE_ONE, n(210501, {	-- Harvest Reaper Prototype
				provider = { "i", 209057 },	-- Prototype Engine
				coords = {
					{ 50.6, 18.8, WESTFALL },
					{ 52.8, 33.8, WESTFALL },
					{ 45.6, 39.0, WESTFALL },
					{ 35.6, 52.2, WESTFALL },
					{ 61.4, 58.8, WESTFALL },
				},
				classes = { MAGE, WARLOCK },
				groups = {
					i(208750, {	-- Rune of Channeling
						classes = { WARLOCK },
						groups = {
							recipe(403932),	-- Engrave Chest - Master Channeler
						},
					}),
					i(208799, {	-- Spell Notes: Living Bomb
						classes = { MAGE },
						groups = {
							recipe(415936),	-- Engrave Gloves - Living Bomb
						},
					}),
				},
			})),
			applyclassicphase(SOD_PHASE_ONE, n(210487, {	-- Horror of the Deep
				providers = {
					{ "o", 408799 },	-- Idol of the Deep
					{ "i", 209045 },	-- Soul of the Sea
				},
				coord = { 26.0, 69.5, WESTFALL },
				classes = { WARRIOR, WARLOCK },
				groups = {
					i(208778, {	-- Rune of Quick Strike
						classes = { WARRIOR },
						groups = {
							recipe(425443),	-- Engrave Gloves - Quick Strike
						},
					}),
					i(208744, {	-- Rune of Shadowbolts
						classes = { WARLOCK },
						groups = {
							recipe(403936),	-- Engrave Gloves - Shadow Bolt Volley
						},
					}),
				},
			})),
			n(572, {	-- Leprithus
				description =
					"Spawns at BOTH the northern and west-most southern spawn points at approximately 20:00/8 PM server time. If you are quick, you could probably snag both.",
				coords = {
					{ 42.4, 30.8, WESTFALL },
					{ 65.2, 63.2, WESTFALL },
					{ 60.0, 77.6, WESTFALL },
				},
				groups = {
					applyclassicphase(SOD_PHASE_ONE, i(205932, {	-- Prophecy of a King's Demise
						classes = { PRIEST },
						groups = {
							recipe(402849),	-- Engrave Gloves - Shadow Word - Death
						},
					})),
					i(1387),	-- Ghoulfang
					i(1314),	-- Ghoul Fingers
				},
			}),
			n(1424, {	-- Master Digger
				description =
					"Spawns inside Jangolode Mine.",
				coord = { 46.2, 18.6, WESTFALL },
				groups = {
					i(6205),	-- Burrowing Shovel
					i(6206),	-- Rock Chipper
				},
			}),
			n(506, {	-- Sergeant Brashclaw
				coords = {
					{ 37.6, 32.8, WESTFALL },
				},
				groups = {
					i(2203),	-- Brashclaw's Chopper
					i(2204),	-- Brashclaw's Skewer
				},
			}),
			applyclassicphase(SOD_PHASE_ONE, n(210533, {	-- Silverspur
				coord = { 32.8, 35.9, WESTFALL },
				cost = { { "i", 209059, 1 } },	-- Goretusk Haunch
				classes = { HUNTER },
				groups = {
					i(208701, {	-- Rune of Beast Mastery
						classes = { HUNTER },
						groups = {
							recipe(410110),	-- Engrave Gloves - Beast Mastery
						},
					}),
				},
			})),
			n(519, {	-- Slark
				description = "Slark is running around the beach.",
				coords = {
					{ 26.2, 65.6, WESTFALL },
					{ 26.6, 56.4, WESTFALL },
					{ 27.2, 45.0, WESTFALL },
					{ 28.8, 72.6, WESTFALL },
					{ 29.0, 34.6, WESTFALL },
					{ 29.0, 79.4, WESTFALL },
					{ 29.6, 39.8, WESTFALL },
					{ 31.0, 26.4, WESTFALL },
					{ 33.6, 83.2, WESTFALL },
					{ 35.0, 20.6, WESTFALL },
					{ 39.0, 15.0, WESTFALL },
					{ 43.0, 10.0, WESTFALL },
					{ 48.6, 10.0, WESTFALL },
					{ 49.8, 10.4, WESTFALL },
					{ 55.2, 13.4, WESTFALL },
					{ 56.0, 9.8, WESTFALL },
				},
				groups = {
					i(3188),	-- Coral Claymore
					i(6180),	-- Slarkskin
				},
			}),
			applyclassicphase(SOD_PHASE_ONE, n(210537, {	-- Undying Laborer
				coord = { 31.8, 43.5, WESTFALL },
				groups = {
					i(208849, {	-- Libram of Blessings
						classes = { PALADIN },
						groups = {
							recipe(425618),	-- Engrave Chest - Horn of Lordaeron
						},
					}),
					i(205905, {	-- Memory of a Devout Champion
						classes = { PRIEST },
						groups = {
							recipe(425215),	-- Engrave Chest - Twisted Faith
						},
					}),
				},
			})),
			n(462, {	-- Vultros
				coords = {
					{ 51.8, 24.6, WESTFALL },
					{ 45.5, 44.6, WESTFALL },
					{ 64.4, 56.0, WESTFALL },
					{ 45.6, 60.2, WESTFALL },
					{ 35.8, 68.4, WESTFALL },
					{ 64.0, 73.8, WESTFALL },
				},
				groups = {
					i(5971),	-- Feathered Cape
					i(4454),	-- Talon of Vultros
				},
			}),
		}),
		n(TREASURES, {
			applyclassicphase(SOD_PHASE_ONE, i(209845, {	-- Bewitchments and Glamours
				provider = { "o", 409562 },	-- Spellbook
				coord = { 45.4, 70.5, WESTFALL },
			})),
			applyclassicphase(SOD_PHASE_ONE, i(208860, {	-- Rumi of Gnomeregan: The Collected Works
				provider = { "o", 408014 },	-- Gnomish Tome
				coord = { 52.7, 53.8, WESTFALL },
			})),
			applyclassicphase(SOD_PHASE_ONE, i(208771, {	-- Rune of Blade Dance
				providers = {
					{ "o", 408718 },	-- Equipment Stash
					{ "i", 209030 },	-- Equipment Stash Key
				},
				coord = { 40.80, 80.24, WESTFALL },
				classes = { ROGUE },
				groups = {
					recipe(400099),	-- Engrave Pants - Blade Dance
				},
			})),
		}),
		n(VENDORS, {
			n(1669, {	-- Defias Profiteer <Free Wheeling Merchant>
				coord = { 43.4, 66.8, WESTFALL },
				races = ALLIANCE_ONLY,
				groups = {
					i(4788, {	-- Agile Boots
						isLimited = true,
					}),
					i(4789, {	-- Stable Boots
						isLimited = true,
					}),
					i(5640, {	-- Recipe: Rage Potion (RECIPE!)
						isLimited = true,
					}),
				},
			}),
			n(843, {	-- Gina MacGregor <Trade Supplies>
				coord = { 57.6, 53.8, WESTFALL },
				races = ALLIANCE_ONLY,
				groups = {
					i(6274, {	-- Pattern: Blue Overalls (RECIPE!)
						isLimited = true,
					}),
					i(5786, {	-- Pattern: Murloc Scale Belt (RECIPE!)
						isLimited = true,
					}),
					i(5787, {	-- Pattern: Murloc Scale Breastplate (RECIPE!)
						isLimited = true,
					}),
					i(5771, {	-- Pattern: Red Linen Bag (RECIPE!)
						isLimited = true,
					}),
				},
			}),
			n(4305, {	-- Kriggon Talsone <Fisherman>
				coord = { 36.2, 90.0, WESTFALL },
				races = ALLIANCE_ONLY,
				groups = {
					i(5528),	-- Recipe: Clam Chowder (RECIPE!)
					i(6368),	-- Recipe: Rainbow Fin Albacore (RECIPE!)
					i(6326),	-- Recipe: Slitherskin Mackerel (RECIPE!)
					i(16111),	-- Recipe: Spiced Chili Crab (RECIPE!)
				},
			}),
			n(43948, {	-- Private Jackson <Provisioner>
				coord = { 42.2, 64.8, WESTFALL },
				races = ALLIANCE_ONLY,
				sym = {{"select","itemID",
					1198,	-- Claymore
					851,	-- Cutlass
					922,	-- Dacian Falx
					2024,	-- Espadon
					2207,	-- Jambiya
					2209,	-- Kris
					923,	-- Longsword
					2208,	-- Poniard
					20977,	-- Recruit's Shortsword
					2027,	-- Scimitar
					20982,	-- Sharp Dagger
				}},
			}),
			n(1668, {	-- William MacGregor <Bowyer>
				coord = { 57.7, 53.7, WESTFALL },
				races = ALLIANCE_ONLY,
				groups = {
					i(11304, {	-- Fine Longbow
						isLimited = true,
					}),
				},
			}),
		}),
		n(ZONE_DROPS, {
			i(3172, {	-- Boar Intestines
				coord = { 54.2, 42.6, WESTFALL },
				maps = { REDRIDGE_MOUNTAINS },
				crs = {
					454,	-- Young Goretusk
					157,	-- Goretusk
					547,	-- Great Goretusk
				},
			}),
			i(826, {	-- Brutish Riverpaw Axe
				coords = {
					{ 54.2, 62.0, WESTFALL },
					{ 55.8, 68.4, WESTFALL },
					{ 55.4, 69.4, WESTFALL },
					{ 31.4, 70.4, WESTFALL },
					{ 48.8, 62.6, WESTFALL },
				},
				cr = 124,	-- Riverpaw Brute
			}),
			i(2673, {	-- Coyote Meat
				description = "Only drops from coyotes in Westfall.",
				coord = { 49.4, 24.5, WESTFALL },	-- Furlbrow's Pumpkin Farm
				crs = {
					834,	-- Coyote
					833,	-- Coyote Packleader
				},
			}),
			i(1394, {	-- Driftwood Club
				coords = {
					{ 32.2, 26.6, WESTFALL },
					{ 34.8, 23.6, WESTFALL },
					{ 26.0, 47.8, WESTFALL },
				},
				cr = 171,	-- Murloc Warrior
			}),
			i(4290, {	-- Dust Bowl
				coords = {
					{ 40.8, 22.0, WESTFALL },
					{ 35.8, 34.4, WESTFALL },
					{ 33.8, 49.4, WESTFALL },
					{ 34.6, 68.6, WESTFALL },
					{ 38.8, 61.4, WESTFALL },
					{ 42.6, 59.2, WESTFALL },
					{ 46.8, 48.6, WESTFALL },
					{ 43.0, 42.2, WESTFALL },
					{ 54.6, 41.0, WESTFALL },
					{ 61.6, 36.0, WESTFALL },
					{ 63.6, 51.4, WESTFALL },
					{ 68.8, 74.0, WESTFALL },
				},
				crs = {
					832,	-- Dust Devil
				},
			}),
			applyclassicphase(SOD_PHASE_ONE, i(209058, {	-- Elemental Core
				coords = {
					{ 40.8, 22.0, WESTFALL },
					{ 35.8, 34.4, WESTFALL },
					{ 33.8, 49.4, WESTFALL },
					{ 34.6, 68.6, WESTFALL },
					{ 38.8, 61.4, WESTFALL },
					{ 42.6, 59.2, WESTFALL },
					{ 46.8, 48.6, WESTFALL },
					{ 43.0, 42.2, WESTFALL },
					{ 54.6, 41.0, WESTFALL },
					{ 61.6, 36.0, WESTFALL },
					{ 63.6, 51.4, WESTFALL },
					{ 68.8, 74.0, WESTFALL },
				},
				cr = 832,	-- Dust Devil
			})),
			i(1405, {	-- Foamspittle Staff
				cr = 517,	-- Murloc Oracle
			}),
			applyclassicphase(SOD_PHASE_ONE, i(208689, {	-- Ferocious Idol
				classes = { DRUID },
				crs = {
					452,	-- Riverpaw Bandit
					124,	-- Riverpaw Brute
					117,	-- Riverpaw Gnoll
					501,	-- Riverpaw Herbalist
					1426,	-- Riverpaw Miner
					123,	-- Riverpaw Mongrel
					453,	-- Riverpaw Mystic
					125,	-- Riverpaw Overseer
					500,	-- Riverpaw Scout
					1065,	-- Riverpaw Shaman
					98,	-- Riverpaw Taskmaster
				},
				groups = {
					recipe(410023),	-- Engrave Pants - Savage Roar
				},
			})),
			applyclassicphase(SOD_PHASE_ONE, i(209043, {	-- Fertile Soil Sample
				coord = { 45.6, 20.4, WESTFALL },
				classes = { DRUID },
				cr = 1236,	-- Kobold Digger
			})),
			applyclassicphase(SOD_PHASE_ONE, i(209042, {	-- Fishy Bonemeal
				coord = { 50.0, 11.8, WESTFALL },
				classes = { DRUID },
				crs = {
					831,	-- Sea Crawler
					830,	-- Sand Crawler
					1216,	-- Shore Crawler
				},
			})),
			applyclassicphase(SOD_PHASE_ONE, i(209420, {	-- Gillsbane
				description = "Supposedly this will not drop if you've completed the Quick Strike rune already.",
				coords = {
					{ 48.6, 21.8, WESTFALL },
					{ 47.6, 39.2, WESTFALL },
					{ 36.6, 74.4, WESTFALL },
					{ 37.6, 55.4, WESTFALL },
					{ 44.6, 67.6, WESTFALL },
					{ 51.6, 75.2, WESTFALL },
				},
				classes = { WARRIOR },
				crs = {
					449,	-- Defias Knuckleduster
					590,	-- Defias Looter
					589,	-- Defias Pillager
					121,	-- Defias Pathstalker
					 95,	-- Defias Smuggler
					504,	-- Defias Trapper
				},
			})),
			applyclassicphase(SOD_PHASE_ONE, i(209059, {	-- Goretusk Haunch
				classes = { HUNTER },
				crs = {
					157,	-- Goretusk
					454,	-- Young Goretusk
				},
			})),
			i(723),	-- Goretusk Liver
			i(731, {	-- Goretusk Snout
				crs = {
					157,	-- Goretusk
					454,	-- Young Goretusk
				},
			}),
			i(1401, {	-- Green Tea Leaf / Riverpaw Tea Leaf
				cr = 501,	-- Riverpaw Herbalist
			}),
			i(2087, {	-- Hard Crawler Carapace
				cr = 830,	-- Sand Crawler
			}),
			i(1274, {	-- Hops
				crs = {
					573,	-- Foe Reaper 4000
					 36,	-- Harvest Golem
					115,	-- Harvest Reaper
					114,	-- Harvest Watcher
					480,	-- Rusty Harvest Golem
				},
			}),
			applyclassicphase(SOD_PHASE_ONE, i(208851, {	-- Libram of Justice
				description = "While this supposedly can drop from the Drones, don't bother. Go loot the chest in Loch Modan instead!",
				coord = { 69.8, 72.4, WESTFALL },
				classes = { PALADIN },
				races = ALLIANCE_ONLY,
				cr = 7050,	-- Defias Drone
				groups = {
					recipe(410001),	-- Engrave Gloves - Hand of Reckoning
				},
			})),
			i(2088, {	-- Long Crawler Limb
				cr = 831,	-- Sea Crawler
			}),
			i(2091, {	-- Magic Dust
				cr = 832,	-- Dust Devil
				coords = {
					{ 40.8, 22.0, WESTFALL },
					{ 35.8, 34.4, WESTFALL },
					{ 33.8, 49.4, WESTFALL },
					{ 34.6, 68.6, WESTFALL },
					{ 38.8, 61.4, WESTFALL },
					{ 42.6, 59.2, WESTFALL },
					{ 46.8, 48.6, WESTFALL },
					{ 43.0, 42.2, WESTFALL },
					{ 54.6, 41.0, WESTFALL },
					{ 61.6, 36.0, WESTFALL },
					{ 63.6, 51.4, WESTFALL },
					{ 68.8, 74.0, WESTFALL },
				},
			}),
			applyclassicphase(SOD_PHASE_ONE, i(209041, {	-- Magic Pumpkin Seeds
				coords = {
					{ 48.6, 21.8, WESTFALL },
					{ 47.6, 39.2, WESTFALL },
					{ 36.6, 74.4, WESTFALL },
					{ 37.6, 55.4, WESTFALL },
					{ 44.6, 67.6, WESTFALL },
					{ 51.6, 75.2, WESTFALL },
				},
				classes = { DRUID },
				crs = {
					449,	-- Defias Knuckleduster
					590,	-- Defias Looter
					589,	-- Defias Pillager
					121,	-- Defias Pathstalker
					 95,	-- Defias Smuggler
					504,	-- Defias Trapper
				},
			})),
			i(732, {	-- Okra
				crs = {
					573,	-- Foe Reaper 4000
					36,	-- Harvest Golem
					115,	-- Harvest Reaper
					114,	-- Harvest Watcher
					480,	-- Rusty Harvest Golem
				},
			}),
			i(1190, {	-- Overseer's Cloak
				coords = {
					{ 63.8, 74.6, WESTFALL },
					{ 58.0, 72.2, WESTFALL },
				},
				crs = {
					125,	-- Riverpaw Overseer
				},
			}),
			i(1189, {	-- Overseer's Ring
				coords = {
					{ 63.8, 78.6, WESTFALL },
					{ 60.2, 76.6, WESTFALL },
					{ 60.2, 70.8, WESTFALL },
					{ 63.6, 72.8, WESTFALL },
				},
				crs = {
					125,	-- Riverpaw Overseer
				},
			}),
			i(5771, {	-- Pattern: Red Linen Bag (RECIPE!)
				cr = 590,	-- Defias Looter
			}),
			i(5772, {	-- Pattern: Red Woolen Bag (RECIPE!)
				cr = 450,	-- Defias Renegade Mage
			}),
			applyclassicphase(SOD_PHASE_ONE, i(209057, {	-- Prototype Engine
				cost = {
					{ "i", 209056, 1 },	-- Spare Reaper Parts
					{ "i", 209056, 1 },	-- Spare Reaper Parts
				},
			})),
			i(821, {	-- Riverpaw Leather Vest
				cr = 123,	-- Riverpaw Mongrel
			}),
			i(1391, {	-- Riverpaw Mystic Staff
				cr = 453,	-- Riverpaw Mystic
			}),
			applyclassicphase(SOD_PHASE_ONE, i(208741, {	-- Rune of Endless Rage
				description = "This Rune can drop from any of the Rare creatures in the zone.",
				coord = { 34.4, 84.6, WESTFALL },
				classes = { WARRIOR },
				cr = 391,	-- Old Murk-Eye
				groups = {
					recipe(403489),	-- Engrave Gloves - Endless Rage
				},
			})),
			i(832, {	-- Silver Defias Belt
				coords = {
					{ 51.6, 75.2, WESTFALL },
					{ 37.6, 75.0, WESTFALL },
				},
				crs = {
					121,	-- Defias Pathstalker
				},
			}),
			i(820, {	-- Slicer Blade
				cr = 115,	-- Harvest Reaper
			}),
			i(816, {	-- Small Hand Blade
				coords = {
					{ 57.6, 36.4, WESTFALL },
					{ 49.6, 33.2, WESTFALL },
					{ 32.8, 35.0, WESTFALL },
					{ 35.8, 46.0, WESTFALL },
					{ 47.6, 67.6, WESTFALL },
				},
				crs = {
					 36,	-- Harvest Golem
				},
			}),
			applyclassicphase(SOD_PHASE_ONE, i(209045, {	-- Soul of the Sea
				description = "This will only drop if you have Gillsbane equipped and haven't completed your Quick Strike rune yet.",
				provider = { "i", 209420 },	-- Gillsbane
				coords = {
					-- various common map locations where 'crs' may be found
					{ 28.8, 72.8, WESTFALL },
					{ 33.0, 83.6, WESTFALL },
					{ 34.6, 85.4, WESTFALL },
					{ 44.2, 9.6, WESTFALL },
					{ 50.8, 10.6, WESTFALL },
					{ 53.6, 11.6, WESTFALL },
					{ 55.8, 8.0, WESTFALL },
					{ 56.0, 9.8, WESTFALL },
					{ 56.6, 9.2, WESTFALL },
				},
				classes = { WARRIOR },
				crs = {
					126,	-- Murloc Coastrunner
					458,	-- Murloc Hunter
					456,	-- Murloc Minor Oracle
					513,	-- Murloc Netter
					517,	-- Murloc Oracle
					515,	-- Murloc Raider
					127,	-- Murloc Tidehunter
					171,	-- Murloc Warrior
					391,	-- Old Murk-Eye
					519,	-- Slark
				},
			})),
			applyclassicphase(SOD_PHASE_ONE, i(209056, {	-- Spare Reaper Parts
				coords = {
					{ 59.0, 18.2, WESTFALL },
					{ 54.4, 25.6, WESTFALL },
					{ 50.0, 22.6, WESTFALL },
					{ 54.6, 34.6, WESTFALL },
					{ 45.8, 36.0, WESTFALL },
					{ 39.2, 52.0, WESTFALL },
					{ 47.6, 67.6, WESTFALL },
					{ 63.6, 60.2, WESTFALL },
				},
				crs = {
					 36,	-- Harvest Golem
					115,	-- Harvest Reaper
					114,	-- Harvest Watcher
					480,	-- Rusty Harvest Golem
				},
			})),
			applyclassicphase(SOD_PHASE_ONE, i(208754, {	-- Spell Notes: TENGI RONEERA
				coord = { 53.0, 78.8, WESTFALL },
				classes = { MAGE },
				cr = 450,	-- Defias Renegade Mage
			})),
			i(1933, {	-- Staff of Conjuring
				coords = {
					{ 44.6, 69.4, WESTFALL },
					{ 42.6, 71.6, WESTFALL },
				},
				cr = 619,	-- Defias Conjurer
			}),
			i(729, {	-- Stringy Vulture Meat
				crs = {
					154,	-- Greater Fleshripper
					199,	-- Young Fleshripper
					1109,	-- Fleshripper
				},
			}),
			i(2327, {	-- Sturdy Leather Bracers
				coords = {
					{ 59.6, 18.6, WESTFALL },
					{ 54.6, 26.0, WESTFALL },
				},
				crs = {
					480,	-- Rusty Harvest Golem
				},
			}),
			i(827, {	-- Wicked Blackjack
				crs = {
					122,	-- Defias Highwayman
					449,	-- Defias Knuckleduster
				},
			}),
		}),
	},
});
