---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

maproot(MAP.EASTERN_KINGDOMS, MAP.ELWYNN_FOREST, {
	lore = "Elwynn Forest is the starting zone for Human characters. It is a lush valley with farmers and loggers, with Stormwind City at its center. The mines are infested by kobolds and the farmlands have been taken over by the Defias.",
	icon = 236761,
	groups = {
		m(MAP.NORTHSHIRE_VALLEY, {
			lore = "Northshire was the pride of Stormwind's vineyards until recently when Defias bandits drove off the farmers and occupied the farm and fields. This is where the human starting area is located, though the serene valley is visited by adventurers from all over the world.",
			icon = 236447,
			["zone-text-areas"] = {
				9,	-- Northshire Valley
				59,	-- Northshire Vineyards
				24,	-- Northshire Abbey
				34,	-- Echo Ridge Mine
			},
			groups = {
				n(QUESTS, {
					q(783, {	-- A Threat Within
						qg = 823,	-- Deputy Willem
						coord = { 48.1, 42.9, MAP.ELWYNN_FOREST },
						races = ALLIANCE_ONLY,
					}),
					q(92124, {	-- Book Inventory
						["lvl"] = 1,
						sourceQuest = 91741,	-- Nibbled on Book
						qg = 951,	-- Brother Paxton
						coord = { 49.6, 40.4, MAP.ELWYNN_FOREST },
						timeline = { TIMELINE.ADDED_1_60_1 },
						races = ALLIANCE_ONLY,
					}),
					q(6, {	-- Bounty on Garrick Padfoot
						sourceQuest = 18,	-- Brotherhood of Thieves
						qg = 823,	-- Deputy Willem
						coord = { 48.1, 42.9, MAP.ELWYNN_FOREST },
						races = ALLIANCE_ONLY,
						lvl = 2,
						groups = {
							objective(1, {	-- 0/1 Garrick's Head
								provider = { "i", 182 },	-- Garrick's Head (QI!)
								coord = { 57.4, 48.6, MAP.ELWYNN_FOREST },
								cr = 103,	-- Garrick Padfoot
							}),
							i(6076),	-- Tapered Pants
							i(60),	-- Layered Tunic
							i(3070),	-- Ensign Cloak
						},
					}),
					q(18, {	-- Brotherhood of Thieves
						qg = 823,	-- Deputy Willem
						coord = { 48.2, 42.8, MAP.ELWYNN_FOREST },
						races = ALLIANCE_ONLY,
						lvl = 2,
						groups = {
							objective(1, {	-- 0/12 Red Burlap Bandana
								provider = { "i", 752 },	-- Red Burlap Bandana (QI!)
								cr = 38,	-- Defias Thug
							}),
							i(2224),	-- Militia Dagger
							i(5580),	-- Militia Hammer
							i(1161),	-- Militia Shortsword
							i(5579),	-- Militia Warhammer
							i(1159),	-- Militia Quarterstaff
						},
					}),
					q(3101, {	-- Consecrated Letter
						sourceQuest = 7,	-- Kobold Camp Cleanup
						qg = 197,	-- Marshal McBride
						qi = 9570,	-- Consecrated Letter (PQI!)
						coord = { 48.9, 41.6, MAP.ELWYNN_FOREST },
						classes = { PALADIN },
						races = { HUMAN },
					}),
					q(5261, {	-- Eagan Peltskinner
						sourceQuest = 783,	-- A Threat Within
						qg = 823,	-- Deputy Willem
						coord = { 48.17, 42.94, MAP.ELWYNN_FOREST },
						races = ALLIANCE_ONLY,
						isBreadcrumb = true,
					}),
					q(3102, {	-- Encrypted Letter
						sourceQuest = 7,	-- Kobold Camp Cleanup
						qg = 197,	-- Marshal McBride
						qi = 9555,	-- Encrypted Letter (PQI!)
						coord = { 48.9, 41.6, MAP.ELWYNN_FOREST },
						races = { HUMAN },
						classes = { ROGUE },
					}),
					q(91758, {	-- Follow That Kobold!
						["lvl"] = 1,
						sourceQuest = 91752,	-- The Big Picture
						qg = 197,	-- Marshal McBride
						coord = { 48.9, 41.6, MAP.ELWYNN_FOREST },
						timeline = { TIMELINE.ADDED_1_60_1 },
						races = ALLIANCE_ONLY,
					}),
					q(3104, {	-- Glyphic Letter
						sourceQuest = 7,	-- Kobold Camp Cleanup
						qg = 197,	-- Marshal McBride
						qi = 9571,	-- Glyphic Letter (PQI!)
						coord = { 48.9, 41.6, MAP.ELWYNN_FOREST },
						races = { HUMAN },
						classes = { MAGE },
					}),
					q(3905, {	-- Grape Manifest
						sourceQuest = 3904,	-- Milly's Harvest
						qg = 9296,	-- Milly Osworth
						qi = 11125,	-- Grape Manifest (PQI!)
						coord = { 50.7, 39.3, MAP.ELWYNN_FOREST },
						races = ALLIANCE_ONLY,
						lvl = 2,
						groups = {
							i(2690),	-- Latched Belt
							i(11475),	-- Wine-stained Cloak
						},
					}),
					q(3103, {	-- Hallowed Letter
						sourceQuest = 7,	-- Kobold Camp Cleanup
						qg = 197,	-- Marshal McBride
						qi = 9548,	-- Hallowed Letter (PQI!)
						coord = { 48.9, 41.6, MAP.ELWYNN_FOREST },
						races = { HUMAN },
						classes = { PRIEST },
					}),
					q(5623, {	-- In Favor of the Light
						qg = 375,	-- Priestess Anetta <Priest Trainer>
						coord = { 49.8, 39.6, MAP.ELWYNN_FOREST },
						races = { HUMAN },
						classes = { PRIEST },
						isBreadcrumb = true,
						lvl = 5,
					}),
					q(345, {	-- Ink Supplies
						sourceQuest = 344,	-- Brother Paxton (quest in Stormwind)
						qg = 951,	-- Brother Paxton
						coord = { 49.6, 40.4, MAP.ELWYNN_FOREST },
						races = ALLIANCE_ONLY,
						lvl = 20,
					}),
					q(15, {		-- Investigate Echo Ridge
						sourceQuest = 7,	-- Kobold Camp Cleanup
						qg = 197,	-- Marshal McBride
						coord = { 48.9, 41.6, MAP.ELWYNN_FOREST },
						races = ALLIANCE_ONLY,
						groups = {
							objective(1, {	-- 0/10 Kobold Worker
								provider = { "n", 257 },	-- Kobold Worker
							}),
						},
					}),
					q(7, {	-- Kobold Camp Cleanup
						qg = 197,	-- Marshal McBride
						coord = { 48.9, 41.6, MAP.ELWYNN_FOREST },
						races = ALLIANCE_ONLY,
						groups = {
							objective(1, {	-- 0/10 Kobold Vermin
								provider = { "n", 6 },	-- Kobold Vermin
							}),
						},
					}),
					q(3903, {	-- Milly Osworth
						sourceQuest = 18,	-- Brotherhood of Thieves
						qg = 823,	-- Deputy Willem
						coord = { 48.2, 42.8, MAP.ELWYNN_FOREST },
						races = ALLIANCE_ONLY,
						lvl = 2,
					}),
					q(3904, {	-- Milly's Harvest
						sourceQuest = 3903,	-- Milly Osworth
						qg = 9296,	-- Milly Osworth
						coord = { 50.7, 39.3, MAP.ELWYNN_FOREST },
						races = ALLIANCE_ONLY,
						lvl = 2,
						groups = {
							objective(1, {	-- 0/8 Milly's Harvest
								providers = {
									{ "o", 161557 },	-- Milly's Harvest
									{ "i",  11119 },	-- Milly's Harvest (QI!)
								},
							}),
						},
					}),
					q(91745, {	-- Mining Consultant
						["lvl"] = 1,
						sourceQuest = 91743,	-- Rascally Rodents
						qg = 951,	-- Brother Paxton
						coord = { 49.6, 40.4, MAP.ELWYNN_FOREST },
						timeline = { TIMELINE.ADDED_1_60_1 },
						races = ALLIANCE_ONLY,
						--requireSkill = MINING,	-- CRIEVE NOTE: I picked the Mining book, maybe this is required?
					}),
					q(91741, {	-- Nibbled on Book
						["lvl"] = 1,
						qs = 247834,	-- Nibbled on Book (QS!)
						timeline = { TIMELINE.ADDED_1_60_1 },
						races = ALLIANCE_ONLY,
						qis = {
							247857,	-- Nibbled on Book
						},
					}),
					q(91743, {	-- Rascally Rodents
						["lvl"] = 1,
						sourceQuest = 92124,	-- Book Inventory
						qg = 951,	-- Brother Paxton
						coord = { 49.6, 40.4, MAP.ELWYNN_FOREST },
						timeline = { TIMELINE.ADDED_1_60_1 },
						races = ALLIANCE_ONLY,
						groups = {
							objective(1, {	-- 0/8 Stolen Book
								provider = { "i", 247839 },	-- Stolen Book
								crs = {
									6,	-- Kobold Vermin
									257,	-- Kobold Worker
								},
							}),
							i(247840),	-- Mining for Dummies
							i(247841),	-- Wild Harvest
							i(247846),	-- Pelt Collecting for Beginners
						},
					}),
					q(54, {	-- Report to Goldshire
						sourceQuest = 21,		-- Skirmish at Echo Ridge
						qg = 197,	-- Marshal McBride
						qi = 745,	-- Marshal McBride's Documents (PQI!)
						coord = { 48.9, 41.6, MAP.ELWYNN_FOREST },
						races = ALLIANCE_ONLY,
						groups = {
							i(6078),	-- Pikeman Shield
						},
					}),
					q(2158, {	-- Rest and Relaxation
						qg = 6774,	-- Falkhaan Isenstrider
						coord = { 45.6, 47.8, MAP.ELWYNN_FOREST },
						races = ALLIANCE_ONLY,
					}),
					q(346, {	-- Return to Kristoff
						sourceQuest = 347,	-- Rethban Ore (quest in Redridge Mountains)
						qg = 951,	-- Brother Paxton
						qi = 2795,	-- Book: Stresses of Iron (PQI!)
						coord = { 49.6, 40.4, MAP.ELWYNN_FOREST },
						races = ALLIANCE_ONLY,
						lvl = 20,
						groups = {
							i(6095),	-- Wandering Boots
						},
					}),
					q(91772, {	-- Shhh! We're Hunting Kobolds
						["lvl"] = 1,
						sourceQuest = 91758,	-- Follow That Kobold!
						qg = 248415,	-- Tordrin Sternblade
						qi = 247970,	-- Kobold Tracking Kit (PQI!)
						coord = { 48.9, 41.6, MAP.ELWYNN_FOREST },
						timeline = { TIMELINE.ADDED_1_60_1 },
						races = ALLIANCE_ONLY,
						groups = {
							objective(1, {	-- 0/6 Followed Kobold Tracks
								provider = { "o", 563442 },	-- Kobold Tracks
							}),
						},
					}),
					q(3100, {	-- Simple Letter
						sourceQuest = 7,	-- Kobold Camp Cleanup
						qg = 197,	-- Marshal McBride
						qi = 9542,	-- Simple Letter (PQI!)
						coord = { 48.8, 41.6, MAP.ELWYNN_FOREST },
						races = { HUMAN },
						classes = { WARRIOR },
					}),
					q(21, {	-- Skirmish at Echo Ridge
						sourceQuest = 15,	-- Investigate Echo Ridge
						qg = 197,	-- Marshal McBride
						coord = { 48.9, 41.6, MAP.ELWYNN_FOREST },
						races = ALLIANCE_ONLY,
						groups = {
							objective(1, {	-- 0/12 Kobold Laborer
								provider = { "n", 80 },	-- Kobold Laborer
							}),
							i(2186),	-- Outfitter Belt
							i(2691),	-- Outfitter Boots
							i(11192),	-- Outfitter Gloves
						},
					}),
					q(3105, {	-- Tainted Letter
						sourceQuest = 7,	-- Kobold Camp Cleanup
						qg = 197,	-- Marshal McBride
						qi = 9576,	-- Tainted Letter (PQI!)
						coord = { 48.8, 41.6, MAP.ELWYNN_FOREST },
						races = { HUMAN },
						classes = { WARLOCK },
					}),
					q(96627, {	-- The Adventurer [Elwynn Forest]
						sourceQuest = 21,	-- Skirmish at Echo Ridge
						qg = 197,	-- Marshal McBride
						coord = { 48.9, 41.6, MAP.ELWYNN_FOREST },
						timeline = { TIMELINE.ADDED_1_60_1 },
						races = ALLIANCE_ONLY,
						lvl = 4,
					}),
					q(91752, {	-- The Big Picture
						["lvl"] = 1,
						sourceQuest = 91745,	-- Mining Consultant
						qg = 247226,	-- Kelsey Fargo
						coord = { 47.2, 32.17, MAP.ELWYNN_FOREST },
						timeline = { TIMELINE.ADDED_1_60_1 },
						races = ALLIANCE_ONLY,
						groups = {
							objective(1, {	-- 0/1 Sack of "Picture" Books
								provider = { "i", 247886 },	-- Sack of "Picture" Books
								coord = { 49.0, 29.0, MAP.ELWYNN_FOREST },
								cr = 248362,	-- Shinyfinder Narf
							}),
						},
					}),
					q(1598, {	-- The Stolen Tome
						altQuests = { 1599 },	-- Beginnings
						qg = 459,	-- Drusilla La Salle <Warlock Trainer>
						coord = { 49.9, 42.6, MAP.ELWYNN_FOREST },
						races = ALLIANCE_ONLY,
						classes = { WARLOCK },
						groups = {
							objective(1, {	-- 0/1 Powers of the Void
								providers = {
									{ "i",  6785 },	-- Powers of the Void (QI!)
									{ "o", 83763 },	-- Stolen Books
								},
								coord = { 56.7, 44.0, MAP.ELWYNN_FOREST },
							}),
							recipe(688),	-- Summon Imp
						},
					}),
					q(33, {	-- Wolves Across the Border
						sourceQuest = 5261,	-- Eagan Peltskinner
						qg = 196,	-- Eagan Peltskinner
						coord = { 48.9, 40.1, MAP.ELWYNN_FOREST },
						races = ALLIANCE_ONLY,
						groups = {
							objective(1, {	-- 0/8 Tough Wolf Meat
								provider = { "i", 750 },	-- Tough Wolf Meat (QI!)
								crs = {
									299,	-- Young Wolf
									69,	-- Timber Wolf
								},
							}),
							i(80),	-- Soft Fur-lined Shoes
							i(6070),	-- Wolfskin Bracers
						},
					}),
				}),
				n(VENDORS, {
					n(190, {	-- Dermot Johns <Cloth & Leather Armor Merchant>
						coord = { 47.6, 41.4, MAP.ELWYNN_FOREST },
						sym = {{"select","itemID",
							2122,	-- Cracked Leather Belt
							2123,	-- Cracked Leather Boots
							2124,	-- Cracked Leather Bracers
							2125,	-- Cracked Leather Gloves
							2126,	-- Cracked Leather Pants
							2127,	-- Cracked Leather Vest
							2121,	-- Thin Cloth Armor
							3599,	-- Thin Cloth Belt
							3600,	-- Thin Cloth Bracers
							2119,	-- Thin Cloth Gloves
							2120,	-- Thin Cloth Pants
							2117,	-- Thin Cloth Shoes
						}},
					}),
					n(1213, {	-- Godric Rothgar <Armorer & Shieldcrafter>
						coord = { 47.6, 41.4, MAP.ELWYNN_FOREST },
						sym = {{"select","itemID",
							2129,	-- Large Round Shield
							17184,	-- Small Shield
							2380,	-- Tarnished Chain Belt
							2383,	-- Tarnished Chain Boots
							2384,	-- Tarnished Chain Bracers
							2385,	-- Tarnished Chain Gloves
							2381,	-- Tarnished Chain Leggings
							2379,	-- Tarnished Chain Vest
						}},
					}),
					n(78, {	-- Janos Hammerknuckle <Weaponsmith>
						coord = { 47.2, 41.8, MAP.ELWYNN_FOREST },
						sym = {{"select","itemID",
							1194,	-- Bastard Sword
							2479,	-- Broad Axe
							2130,	-- Club
							2139,	-- Dirk
							2134,	-- Hand Axe
							2480,	-- Large Club
							2131,	-- Shortsword
							2132,	-- Short Staff
						}},
					}),
				}),
				n(ZONE_DROPS, {
					i(2057, {	-- Pitted Defias Shortsword
						cr = 38,	-- Defias Thug
					}),
					i(247834, {	-- Nibbled on Book
						timeline = { TIMELINE.ADDED_1_60_1 },
						cr = 6,	-- Kobold Vermin
					}),
					i(2055, {	-- Small Wooden Hammer
						cr = 80,	-- Kobold Laborer
						coords = {
							{ 49.0, 29.0, MAP.ELWYNN_FOREST },
							{ 50.2, 26.6, MAP.ELWYNN_FOREST },
						},
					}),
				}),
			},
		}),
		n(ACHIEVEMENTS, {
			ach(776),	-- Explore Elwynn Forest
		}),
		explorationHeader({
			exploration(62),	-- Brackwell Pumpkin Patch
			visit_exploration(18,{coord={47.4,62.2,MAP.ELWYNN_FOREST}}),	-- Crystal Lake
			exploration(88),	-- Eastvale Logging Camp
			exploration(57),	-- Fargodeep Mine
			exploration(60),	-- Forest's Edge
			exploration(87),	-- Goldshire
			visit_exploration(56, {coord={74.5,54.0,MAP.ELWYNN_FOREST}}),	-- Heroes' Vigil
			exploration(54),	-- Jasperlode Mine
			exploration(797),	-- Jerod's Landing
			visit_exploration(92, {coord={32.1,58.2,MAP.ELWYNN_FOREST}}),	-- Mirror Lake
			visit_exploration(89, {coord={31.6,64.8,MAP.ELWYNN_FOREST}}),	-- Mirror Lake Orchard
			visit_exploration(9,   {coord={45.5,48.7,MAP.ELWYNN_FOREST}}),	-- Northshire Valley
			exploration(798),	-- Ridgepoint Tower
			exploration(86),	-- Stone Cairn Lake
			exploration(1519),	-- Stormwind City
			exploration(80, {	-- Stormwind Mountains
				timeline = { TIMELINE.ADDED_1_60_1 },
			}),
			exploration(64),	-- The Maclure Vineyards
			exploration(63),	-- The Stonefield Farm
			exploration(91),	-- Tower of Azora
			exploration(1617, {	-- Valley of Heroes
				timeline = { TIMELINE.ADDED_1_60_1 },
			}),
			exploration(120),	-- Westbrook Garrison
		}),
		n(QUESTS, {
			q(5545, {	-- A Bundle of Trouble
				qg = 10616,	-- Supervisor Raelen
				coord = { 81.4, 66.1, MAP.ELWYNN_FOREST },
				races = ALLIANCE_ONLY,
				lvl = 5,
				groups = {
					objective(1, {	-- 0/8 Bundle of Wood
						providers = {
							{ "i",  13872 },	-- Bundle of Wood (QI!)
							{ "o", 176793 },	-- Bundle of Wood
						},
					}),
				},
			}),
			q(40, {	-- A Fishy Peril
				qg = 241,	-- Remy "Two Times"
				coord = { 42.1, 67.3, MAP.ELWYNN_FOREST },
				races = ALLIANCE_ONLY,
				lvl = 7,
			}),
			q(99129, {	-- A Man About a Murloc
				sourceQuest = 99128,	-- Slimy Menace
				qg = 383,	-- Jason Mathers <Fishmonger>
				coord = { 47.4, 62.2, MAP.ELWYNN_FOREST },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = ALLIANCE_ONLY,
				lvl = 4,
			}),
			q(99127, {	-- A Net Disaster
				qg = 383,	-- Jason Mathers <Fishmonger>
				coord = { 47.4, 62.2, MAP.ELWYNN_FOREST },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = ALLIANCE_ONLY,
				lvl = 4,
				groups = {
					objective(1, {	-- 0/7 Half-Eaten Fish
						providers = {
							{ "i", 286205 },	-- Half-Eaten Fish
							{ "o", 694772 },	-- Fishing Net
						},
						coord = { 49.9, 66.7, MAP.ELWYNN_FOREST },
					}),
				},
			}),
			q(91738, {	-- An Apple Treat
				["races"] = ALLIANCE_ONLY,
				sourceQuest = 91736,	-- Applejack Still
				qg = 955,	-- Sergeant De Vries <Morale Officer>
				coord = { 24.0, 73.0, MAP.ELWYNN_FOREST },
				cost = { { "i", 247824, 1 } },	-- Thunder Applejack
				timeline = { TIMELINE.ADDED_1_60_1 },
				lvl = 7,
			}),
			q(91753, {	-- An Enchanting Lesson
				qg = 11072,	-- Kitta Firewind <Artisan Enchanter>
				coord = { 64.8, 70.6, MAP.ELWYNN_FOREST },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = ALLIANCE_ONLY,
				requireSkill = ENCHANTING,
				lvl = 5,
				groups = {
					objective(1, {	-- 0/3 Luminous Residue
						provider = { "i", 247884 },	-- Luminous Residue
						cost = {{ "i", 247883, 3 }},	-- Crude Wax Effigy
					}),
				},
			}),
			q(99130, {	-- An Enticing Offer
				sourceQuest = 99129,	-- A Man About a Murloc
				qg = 241,	-- Remy "Two Times"
				coord = { 42.2, 67.2, MAP.ELWYNN_FOREST },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = ALLIANCE_ONLY,
				lvl = 4,
				groups = {
					objective(1, {	-- 0/18 Duskweed Petal
						providers = {
							{ "i", 286214 },	-- Duskweed Petal
							{ "o", 694855 },	-- Overgrown Duskweed
						},
						coords = {
							{ 33.0, 86.6, MAP.ELWYNN_FOREST },
							{ 42.4, 73.0, MAP.ELWYNN_FOREST },
							{ 63.4, 79.4, MAP.ELWYNN_FOREST },
						},
					}),
					objective(2, {	-- 0/6 Vial of Animal Blood
						providers = { "i", 286215 },	-- Vial of Animal Blood
						coords = {
							{ 33.0, 86.6, MAP.ELWYNN_FOREST },
							{ 42.4, 73.0, MAP.ELWYNN_FOREST },
							{ 42.6, 87.0, MAP.ELWYNN_FOREST },
						},
						crs = {
							113,	-- Stonetusk Boar
							822,	-- Young Forest Bear
						},
					}),
					-- CRIEVE NOTE: Check this.
					i(286733),	-- Fightin' Fish
				},
			}),
			q(91736, {	-- Applejack Still
				["races"] = ALLIANCE_ONLY,
				provider = { "o", 562131 },	-- Applejack Still
				coord = { 24.6, 58.0, MAP.ELWYNN_FOREST },
				cost = { { "i", 4536, 4 } },	-- Shiny Red Apple
				timeline = { TIMELINE.ADDED_1_60_1 },
				repeatable = true,
				lvl = 7,
				groups = {
					i(247824),	-- Thunder Applejack
				},
			}),
			q(84, {	-- Back to Billy
				sourceQuest = 86,	-- Pie for Billy
				qg = 246,	-- "Auntie" Bernice Stonefield
				qi = 962,	-- Pork Belly Pie (PQI!)
				coord = { 34.5, 84.3, MAP.ELWYNN_FOREST },
				races = ALLIANCE_ONLY,
				lvl = 5,
			}),
			q(99131, {	-- Baited for Success
				sourceQuest = 99130,	-- An Enticing Offer
				qg = 241,	-- Remy "Two Times"
				coord = { 42.2, 67.2, MAP.ELWYNN_FOREST },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = ALLIANCE_ONLY,
				lvl = 4,
			}),
			q(91775, {	-- Book Return
				["lvl"] = 1,
				sourceQuest = 91772,	-- Shhh! We're Hunting Kobolds
				qg = 240,	-- Marshal Dughan
				qi = 279935,	-- Book Bag (PQI!)
				coord = { 42.2, 65.8, MAP.ELWYNN_FOREST },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = ALLIANCE_ONLY,
				groups = {
					objective(1, {	-- 0/1 Picture Book: Fun with Elementals
						provider = { "i", 248002 },	-- Picture Book: Fun with Elementals
						coord = { 41.6, 80.0, MAP.ELWYNN_FOREST },
						cr = 248464,	-- Nimsy <Apprentice Geosculptor>
					}),
					objective(2, {	-- 0/6 Lost Book
						provider = { "i", 248001 },	-- Lost Book
						coords = {
							{ 41.6, 80.0, MAP.ELWYNN_FOREST },
							{ 61.4, 52.8, MAP.ELWYNN_FOREST },
						},
						crs = {
							475,	-- Kobold Tunneler
							 40,	-- Kobold Miner
						},
					}),
					i(279936),	-- Book Bag
				},
			}),
			q(99143, {	-- Bottles and Baubles
				qg = 1651,	-- Lee Brown <Fisherman>
				coord = { 47.6, 62.2, MAP.ELWYNN_FOREST },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = ALLIANCE_ONLY,
				lvl = 4,
				groups = {
					objective(1, {	-- 0/6 Shiny Junk
						providers = {
							{ "i", 286209 },	-- Shiny Junk
							{ "o", 694785 },	-- Junk Pile
						},
						coord = { 54.4, 66.9, MAP.ELWYNN_FOREST },
					}),
				},
			}),
			q(46, {	-- Bounty on Murlocs
				sourceQuest = 39,	-- Deliver Thomas' Report
				qg = 261,	-- Guard Thomas
				coord = { 74.0, 72.3, MAP.ELWYNN_FOREST },
				races = ALLIANCE_ONLY,
				lvl = 7,
				groups = {
					objective(1, {	-- 0/8 Torn Murloc Fin
						provider = { "i", 780 },	-- Torn Murloc Fin (QI!)
						crs = {
							46,		-- Murloc Forager
							732,	-- Murloc Lurker
						},
					}),
					i(4840),	-- Long Bayonet
					i(1158),	-- Solid Metal Club
					i(1008),	-- Well-used Sword
					i(276686, {	-- Junior's Hunting Bow
						timeline = { TIMELINE.ADDED_1_60_1 },
					}),
				},
			}),
			q(97915, {	-- Camping 101: Alchemy [Elwynn Forest]
				sourceQuest = 95998,	-- The Great Outdoors [Elwynn Forest]
				qg = 263399,	-- Sam Sarsaparilla
				coord = { 44.91, 63.34, MAP.ELWYNN_FOREST },
				timeline = { TIMELINE.ADDED_1_60_1 },
				requireSkill = ALCHEMY,
				races = ALLIANCE_ONLY,
				lvl = 4,
				groups = {
					recipe(1230564),	-- Alchemy: Mana Well
				},
			}),
			q(97916, {	-- Camping 101: Blacksmithing [Elwynn Forest]
				sourceQuest = 95998,	-- The Great Outdoors [Elwynn Forest]
				qg = 263399,	-- Sam Sarsaparilla
				coord = { 44.91, 63.34, MAP.ELWYNN_FOREST },
				timeline = { TIMELINE.ADDED_1_60_1 },
				requireSkill = BLACKSMITHING,
				races = ALLIANCE_ONLY,
				lvl = 4,
				groups = {
					recipe(1230171),	-- Blacksmithing: Sharpening Wheel
				},
			}),
			q(96626, {	-- Camping 101: Cooking [Elwynn Forest]
				sourceQuest = 95998,	-- The Great Outdoors [Elwynn Forest]
				qg = 263399,	-- Sam Sarsaparilla
				coord = { 44.91, 63.34, MAP.ELWYNN_FOREST },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = ALLIANCE_ONLY,
				lvl = 4,
			}),
			q(97917, {	-- Camping 101: Enchanting [Elwynn Forest]
				sourceQuest = 95998,	-- The Great Outdoors [Elwynn Forest]
				qg = 263399,	-- Sam Sarsaparilla
				coord = { 44.91, 63.34, MAP.ELWYNN_FOREST },
				timeline = { TIMELINE.ADDED_1_60_1 },
				requireSkill = ENCHANTING,
				races = ALLIANCE_ONLY,
				lvl = 4,
				groups = {
					recipe(1230643),	-- Enchanting: Enchanted Lute
				},
			}),
			q(97918, {	-- Camping 101: Engineering [Elwynn Forest]
				sourceQuest = 95998,	-- The Great Outdoors [Elwynn Forest]
				qg = 263399,	-- Sam Sarsaparilla
				coord = { 44.91, 63.34, MAP.ELWYNN_FOREST },
				timeline = { TIMELINE.ADDED_1_60_1 },
				requireSkill = ENGINEERING,
				races = ALLIANCE_ONLY,
				lvl = 4,
				groups = {
					recipe(1230656),	-- Engineering: Reagent Bot
				},
			}),
			q(97919, {	-- Camping 101: First Aid [Elwynn Forest]
				sourceQuest = 95998,	-- The Great Outdoors [Elwynn Forest]
				qg = 263399,	-- Sam Sarsaparilla
				coord = { 44.91, 63.34, MAP.ELWYNN_FOREST },
				timeline = { TIMELINE.ADDED_1_60_1 },
				requireSkill = FIRST_AID,
				races = ALLIANCE_ONLY,
				lvl = 4,
				groups = {
					recipe(1230117),	-- First Aid: First Aid Kit
				},
			}),
			q(97920, {	-- Camping 101: Fishing [Elwynn Forest]
				sourceQuest = 95998,	-- The Great Outdoors [Elwynn Forest]
				qg = 263399,	-- Sam Sarsaparilla
				coord = { 44.91, 63.34, MAP.ELWYNN_FOREST },
				timeline = { TIMELINE.ADDED_1_60_1 },
				requireSkill = FISHING,
				races = ALLIANCE_ONLY,
				lvl = 4,
				groups = {
					recipe(1229745),	-- Fishing: Fish Bowl
				},
			}),
			q(97921, {	-- Camping 101: Herbalism [Elwynn Forest]
				sourceQuest = 95998,	-- The Great Outdoors [Elwynn Forest]
				qg = 263399,	-- Sam Sarsaparilla
				coord = { 44.91, 63.34, MAP.ELWYNN_FOREST },
				timeline = { TIMELINE.ADDED_1_60_1 },
				requireSkill = HERBALISM,
				races = ALLIANCE_ONLY,
				lvl = 4,
				groups = {
					recipe(1229705),	-- Herbalism: Incense Candle
				},
			}),
			q(97922, {	-- Camping 101: Leatherworking [Elwynn Forest]
				sourceQuest = 95998,	-- The Great Outdoors [Elwynn Forest]
				qg = 263399,	-- Sam Sarsaparilla
				coord = { 44.91, 63.34, MAP.ELWYNN_FOREST },
				timeline = { TIMELINE.ADDED_1_60_1 },
				requireSkill = LEATHERWORKING,
				races = ALLIANCE_ONLY,
				lvl = 4,
				groups = {
					recipe(1229432),	-- Leatherworking: Camp Tent
				},
			}),
			q(97923, {	-- Camping 101: Mining [Elwynn Forest]
				sourceQuest = 95998,	-- The Great Outdoors [Elwynn Forest]
				qg = 263399,	-- Sam Sarsaparilla
				coord = { 44.91, 63.34, MAP.ELWYNN_FOREST },
				timeline = { TIMELINE.ADDED_1_60_1 },
				requireSkill = MINING,
				races = ALLIANCE_ONLY,
				lvl = 4,
				groups = {
					recipe(1230161),	-- Mining: Lodestone
				},
			}),
			q(97924, {	-- Camping 101: Skinning [Elwynn Forest]
				sourceQuest = 95998,	-- The Great Outdoors [Elwynn Forest]
				qg = 263399,	-- Sam Sarsaparilla
				coord = { 44.91, 63.34, MAP.ELWYNN_FOREST },
				timeline = { TIMELINE.ADDED_1_60_1 },
				requireSkill = SKINNING,
				races = ALLIANCE_ONLY,
				lvl = 4,
				groups = {
					recipe(1229517),	-- Skinning: Camp Chair
				},
			}),
			q(97925, {	-- Camping 101: Tailoring [Elwynn Forest]
				sourceQuest = 95998,	-- The Great Outdoors [Elwynn Forest]
				qg = 263399,	-- Sam Sarsaparilla
				coord = { 44.91, 63.34, MAP.ELWYNN_FOREST },
				timeline = { TIMELINE.ADDED_1_60_1 },
				requireSkill = TAILORING,
				races = ALLIANCE_ONLY,
				lvl = 4,
				groups = {
					recipe(1263425),	-- Tailoring: Camp Chair
				},
			}),
			q(59, {	-- Cloth and Leather Armor
				sourceQuest = 39,	-- Deliver Thomas' Report
				qg = 240,	-- Marshal Dughan
				qi = 748,	-- Stormwind Armor Marker (PQI!)
				coord = { 42.2, 65.8, MAP.ELWYNN_FOREST },
				races = ALLIANCE_ONLY,
				lvl = 7,
				groups = {
					i(2237),	-- Patched Pants
					i(1171),	-- Well-stitched Robe
				},
			}),
			q(112, {	-- Collecting Kelp
				sourceQuest = 107,	-- Note to William
				qg = 253,	-- William Pestle
				coord = { 43.3, 65.7, MAP.ELWYNN_FOREST },
				races = ALLIANCE_ONLY,
				lvl = 5,
				groups = {
					objective(1, {	-- 0/4 Crystal Kelp Frond
						provider = { "i", 1256 },	-- Crystal Kelp Frond (QI!)
						crs = {
							285,	-- Murloc
							735,	-- Murloc Streamrunner
						},
					}),
				},
			}),
			q(91740, {	-- Croaky's Head
				qs = 247826,	-- Croaky's Head (QS!)
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = ALLIANCE_ONLY,
				lvl = 7,
			}),
			q(1667, {	-- Dead-tooth Jack
				sourceQuest = 1666,	-- Marshal Haggard
				qg = 294,	-- Marshal Haggard
				coord = { 84.6, 69.4, MAP.ELWYNN_FOREST },
				classes = { WARRIOR },
				races = ALLIANCE_ONLY,
				lvl = 10,
				groups = {
					objective(1, {	-- 0/1 Marshal Haggard's Badge
						providers = {
							{ "i",  6782 },	-- Marshal Haggard's Badge (QI!)
							{ "o", 85563 },	-- Dead-tooth's Strongbox
						},
						cost = { { "i", 6783, 1 } },	-- Dead-tooth's Key
						coord = { 89.2, 80.6, MAP.ELWYNN_FOREST },
						cr = 6093,	-- Dead-Tooth Jack
					}),
					i(6979),	-- Haggard's Axe
					i(6980),	-- Haggard's Dagger
					i(6983),	-- Haggard's Hammer
					i(6985),	-- Haggard's Sword
				},
			}),
			q(91723, {	-- Delicate Instruments (1/2)
				qg = 248242,	-- Hamish Bergwort
				coord = { 65.0, 69.8, MAP.ELWYNN_FOREST },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = ALLIANCE_ONLY,
				lvl = 7,
				groups = {
					objective(1, {	-- 0/8 Kobold Geomancer slain
						provider = { "n", 476 },	-- Kobold Geomancer
						coord = { 62.6, 54.2, MAP.ELWYNN_FOREST },
					}),
				},
			}),
			q(91724, {	-- Delicate Instruments (2/2)
				sourceQuest = 91723,	-- Delicate Instruments (1/2)
				qg = 248242,	-- Hamish Bergwort
				coord = { 65.0, 69.8, MAP.ELWYNN_FOREST },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = ALLIANCE_ONLY,
				lvl = 7,
				groups = {
					objective(1, {	-- 0/8 Defias Rogue Wizard slain
						provider = { "n", 474 },	-- Defias Rogue Wizard
						coord = { 75.4, 50.4, MAP.ELWYNN_FOREST },
					}),
				},
			}),
			q(39, {	-- Deliver Thomas' Report
				sourceQuest = 71,	-- Report to Thomas
				qg = 261,	-- Guard Thomas
				coord = { 74.0, 72.2, MAP.ELWYNN_FOREST },
				races = ALLIANCE_ONLY,
				lvl = 7,
			}),
			q(5635, {	-- Desperate Prayer
				altQuests = {
					5634,	-- Desperate Prayer [Stormwind City #1]
					5636,	-- Desperate Prayer [Teldrassil]
					5637,	-- Desperate Prayer [Dun Morogh]
					5638,	-- Desperate Prayer [Stormwind City #2]
					5639,	-- Desperate Prayer [Ironforge]
					5640,	-- Desperate Prayer [Darnassus]
				},
				qg = 377,	-- Priestess Josetta <Priest Trainer>
				coord = { 43.4, 65.6, MAP.ELWYNN_FOREST },
				races = { HUMAN, DWARF },
				classes = { PRIEST },
				lvl = 10,
				groups = {
					{
						["recipeID"] = 13908,	-- Desperate Prayer (Rank 1)
						["rank"] = 1,
					},
				},
			}),
			q(45, {	-- Discover Rolf's Fate
				sourceQuest = 37,	-- Find the Lost Guards
				provider = { "o", 55 },	-- A half-eaten body
				coord = { 72.7, 60.3, MAP.ELWYNN_FOREST },
				races = ALLIANCE_ONLY,
				lvl = 7,
			}),
			q(91733, {	-- Downstream
				qg = 248265,	-- Ormin Pelford
				coord = { 76.6, 72.0, MAP.ELWYNN_FOREST },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = ALLIANCE_ONLY,
				lvl = 7,
				groups = {
					objective(1, {	-- 0/1 Waterlogged Axe
						providers = {
							{ "i", 247817 },	-- Waterlogged Axe
							{ "o", 562105 },	-- Waterlogged Axe
						},
						coord = { 76.7, 82.5, MAP.ELWYNN_FOREST },
					}),
					objective(2, {	-- 0/1 Waterlogged Saw
						providers = {
							{ "i", 247813 },	-- Waterlogged Saw
							{ "o", 562103 },	-- Waterlogged Saw
						},
						coord = { 74.3, 76.4, MAP.ELWYNN_FOREST },
					}),
					objective(3, {	-- 0/1 Waterlogged Toolbox
						providers = {
							{ "i", 247818 },	-- Waterlogged Toolbox
							{ "o", 562106 },	-- Waterlogged Toolbox
						},
						coord = { 77.3, 86.8, MAP.ELWYNN_FOREST },
					}),
				},
			}),
			q(91746, {	-- Elmpaw's Head
				qs = 247862,	-- Elmpaw's Head (QS!)
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = ALLIANCE_ONLY,
				lvl = 7,
			}),
			q(1097, {	-- Elmore's Task
				qgs = {
					514,	-- Smith Argus
					415,	-- Verner Osgood
				},
				coords = {
					{ 41.7, 65.6, MAP.ELWYNN_FOREST },	-- Smith Argus
					{ 25.9, 47.3, MAP.REDRIDGE_MOUNTAINS },	-- Verner Osgood
				},
				maps = { MAP.STORMWIND_CITY },
				races = ALLIANCE_ONLY,
				isBreadcrumb = true,	-- for "Stormpike's Delivery" in Stormwind
				lvl = 9,
			}),
			q(37, {	-- Find the Lost Guards
				sourceQuest = 35,	-- Further Concerns
				qg = 261,	-- Guard Thomas
				coord = { 74.0, 72.2, MAP.ELWYNN_FOREST },
				races = ALLIANCE_ONLY,
				lvl = 7,
			}),
			q(35, {	-- Further Concerns
				sourceQuest = 40,	-- A Fishy Peril
				qg = 240,	-- Marshal Dughan
				coord = { 42.1, 65.9, MAP.ELWYNN_FOREST },
				races = ALLIANCE_ONLY,
				lvl = 7,
			}),
			q(5624, {	-- Garments of the Light
				sourceQuest = 5623,	-- In Favor of the Light
				qg = 377,	-- Priestess Josetta <Priest Trainer>
				coord = { 43.4, 65.6, MAP.ELWYNN_FOREST },
				races = { HUMAN },
				classes = { PRIEST },
				lvl = 5,
				groups = {
					i(16605),	-- Friar's Robes of the Light
				},
			}),
			q(16, {	-- Give Gerard a Drink
				qg = 255,	-- Gerard Tiller
				coord = { 43.0, 85.6, MAP.ELWYNN_FOREST },
				cost = { { "i", 159, 1 } },	-- Refreshing Spring Water
				races = ALLIANCE_ONLY,
				repeatable = true,
				groups = {
					i(4536),	-- Shiny Red Apple
				},
			}),
			q(47, {	-- Gold Dust Exchange
				qg = 241,	-- Remy "Two Times"
				coord = { 42.1, 67.3, MAP.ELWYNN_FOREST },
				races = ALLIANCE_ONLY,
				lvl = 4,
				groups = {
					objective(1, {	-- 0/10 Gold Dust
						provider = { "i", 773 },	-- Gold Dust (QI!)
						crs = {
							327,	-- Goldtooth
							476,	-- Kobold Geomancer
							40,		-- Kobold Miner
							475,	-- Kobold Tunneler
						},
					}),
					i(1191, {	-- Bag of Marbles
						["description"] = "One of the single best PvE defensive cooldowns. Choose your targets wisely... Save for Patchwerk!",
					}),
				},
			}),
			q(87, {	-- Goldtooth
				sourceQuest = 84,	-- Back to Billy
				qg = 247,	-- Billy Maclure
				coord = { 43.1, 85.7, MAP.ELWYNN_FOREST },
				races = ALLIANCE_ONLY,
				lvl = 5,
				groups = {
					objective(1, {	-- 0/1 Bernice's Necklace
						provider = { "i", 981 },	-- Bernice's Necklace (QI!)
						coord = { 41.6, 78.8, MAP.ELWYNN_FOREST },
						cr = 327,	-- Goldtooth
					}),
					i(1359),	-- Lion-stamped Gloves
				},
			}),
			q(91732, {	-- Good Steel
				qg = 248266,	-- Hagar Lowe
				coord = { 82.6, 63.8, MAP.ELWYNN_FOREST },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = ALLIANCE_ONLY,
				lvl = 7,
				groups = {
					objective(1, {	-- 0/4 Mining Tools
						providers = {
							{ "i", 247816 },	-- Mining Tools
							{ "o", 562114 },	-- Mining Tools
						},
						coord = { 60.8, 52.6, MAP.ELWYNN_FOREST },
					}),
				},
			}),
			q(60, {	-- Kobold Candles
				qg = 253,	-- William Pestle
				coord = { 43.3, 65.7, MAP.ELWYNN_FOREST },
				races = ALLIANCE_ONLY,
				lvl = 3,
				groups = {
					objective(1, {	-- 0/8 Large Candle
						provider = { "i", 772 },	-- Large Candle (QI!)
						crs = {
							327,	-- Goldtooth
							476,	-- Kobold Geomancer
							40,		-- Kobold Miner
							475,	-- Kobold Tunneler
						},
					}),
					i(1434),	-- Glowing Wax Stick
				},
			}),
			q(85, {	-- Lost Necklace
				qg = 246,	-- "Auntie" Bernice Stonefield
				coord = { 34.5, 84.3, MAP.ELWYNN_FOREST },
				races = ALLIANCE_ONLY,
				lvl = 5,
			}),
			q(147, {	-- Manhunt
				sourceQuest = 123,	-- The Collector
				qg = 240,	-- Marshal Dughan
				coord = { 42.1, 65.9, MAP.ELWYNN_FOREST },
				races = ALLIANCE_ONLY,
				lvl = 7,
				groups = {
					objective(1, {	-- 0/1 The Collector's Ring
						provider = { "i", 2239 },	-- The Collector's Ring (QI!)
						coord = { 71.0, 80.8, MAP.ELWYNN_FOREST },
						cr = 473,	-- Morgan the Collector
					}),
					i(1183),	-- Elastic Wristguards
					i(1360),	-- Stormwind Plate Gloves
				},
			}),
			q(107, {	-- Note to William
				sourceQuest = 111,	-- Speak with Gramma
				qg = 248,	-- Gramma Stonefield
				qi = 1252,	-- Gramma Stonefield's Note (PQI!)
				coord = { 34.9, 83.9, MAP.ELWYNN_FOREST },
				races = ALLIANCE_ONLY,
				lvl = 5,
			}),
			q(86, {	-- Pie for Billy
				sourceQuest = 85,	-- Lost Necklace
				qg = 247,	-- Billy Maclure
				coord = { 43.1, 85.7, MAP.ELWYNN_FOREST },
				races = ALLIANCE_ONLY,
				lvl = 5,
				groups = {
					objective(1, {	-- 0/4 Chunk of Boar Meat
						provider = { "i", 769 },	-- Chunk of Boar Meat (QI!)
					}),
				},
			}),
			q(88, {	-- Princess Must Die!
				qg = 244,	-- Ma Stonefield
				coord = { 34.7, 84.5, MAP.ELWYNN_FOREST },
				races = ALLIANCE_ONLY,
				lvl = 6,
				groups = {
					objective(1, {	-- 0/1 Brass Collar
						provider = { "i", 1006 },	-- Brass Collar (QI!)
						coord = { 69.8, 79.4, MAP.ELWYNN_FOREST },
						cr = 330,	-- Princess
					}),
					i(1173),	-- Weather-worn Boots
					i(1182),	-- Brass-studded Bracers
					i(11191),	-- Farmer's Boots
				},
			}),
			q(52, {	-- Protect the Frontier
				qg = 261,	-- Guard Thomas
				coord = { 74.0, 72.2, MAP.ELWYNN_FOREST },
				races = ALLIANCE_ONLY,
				lvl = 7,
				groups = {
					objective(1, {	-- 0/8 Prowler
						provider = { "n", 118 },	-- Prowler
					}),
					objective(2, {	-- 0/5 Young Forest Bear
						provider = { "n", 822 },	-- Young Forest Bear
					}),
				},
			}),
			q(91777, {	-- Rare Books
				["lvl"] = 1,
				sourceQuest = 91775,	-- Book Return
				qg = 240,	-- Marshal Dughan
				coord = { 42.2, 65.8, MAP.ELWYNN_FOREST },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = ALLIANCE_ONLY,
				groups = {
					objective(1, {	-- 0/1 Geomancy for Curious Young Wizards
						provider = { "i", 248003 },	-- Geomancy for Curious Young Wizards
						coord = { 60.6, 49.8, MAP.ELWYNN_FOREST },
						cr = 248474,	-- Geosculptor Yip
					}),
					objective(2, {	-- 0/1 Arcane Explainer: Magical Stuff in Simple Words
						provider = { "i", 248004 },	-- Arcane Explainer: Magical Stuff in Simple Words
						coord = { 61.8, 47.8, MAP.ELWYNN_FOREST },
						cr = 471,	-- Mother Fang
					}),
					i(248008),	-- Apprentice's Spellstaff
					i(248007),	-- Militia Shortblade
					i(248006),	-- Militia Sword
					i(248005),	-- Northshire Hammer
					i(276685),	-- Militia Bow
				},
			}),
			q(5628, {	-- Returning Home [Elwynn Forest]
				altQuests = {
					5627,	-- Returning Home [Darnassus]
					5629,	-- Returning Home [Teldrassil]
					5630,	-- Returning Home [Dun Morogh]
					5631,	-- Returning Home [Stormwind City]
					5632,	-- Returning Home [Stormwind City]
					5633,	-- Returning Home [Ironforge]
				},
				qg = 377,	-- Priestess Josetta <Priest Trainer>
				coord = { 43.4, 65.6, MAP.ELWYNN_FOREST },
				classes = { PRIEST },
				races = { NIGHTELF },
				lvl = 10,
				groups = {
					{
						["recipeID"] = 10797,	-- Starshards (Rank 1)
						["rank"] = 1,
					},
				},
			}),
			q(83, {	-- Red Linen Goods
				qg = 278,	-- Sara Timberlain
				coord = { 79.5, 68.7, MAP.ELWYNN_FOREST },
				races = ALLIANCE_ONLY,
				lvl = 4,
				groups = {
					objective(1, {	-- 0/6 Red Linen Bandana
						provider = { "i", 1019 },	-- Red Linen Bandana (QI!)
						crs = {
							583,	-- Defias Ambusher
							116,	-- Defias Bandit
							6866,	-- Defias Bodyguard
							6846,	-- Defias Dockmaster
							6927,	-- Defias Dockworker
							474,	-- Defias Rogue Wizard
							880,	-- Erlan Drudgemoor
							473,	-- Morgan the Collector
							881,	-- Surena Caledon
						},
					}),
					i(2575),	-- Red Linen Shirt
					i(983),		-- Red Linen Sash
				},
			}),
			q(71, {	-- Report to Thomas
				sourceQuest = 45,	-- Discover Rolf's Fate
				provider = { "o",  56 },	-- Rolf's corpse
				qi = 735,	-- Rolf and Malakai's Medallions (PQI!)
				coord = { 79.8, 55.5, MAP.ELWYNN_FOREST },
				races = ALLIANCE_ONLY,
				lvl = 7,
			}),
			q(11, {	-- Riverpaw Gnoll Bounty
				sourceQuest = 239,	-- Westbrook Garrison Needs Help!
				qg = 963,	-- Deputy Rainer
				coord = { 24.2, 74.5, MAP.ELWYNN_FOREST },
				races = ALLIANCE_ONLY,
				lvl = 6,
				groups = {
					objective(1, {	-- 0/8 Painted Gnoll Armband
						provider = { "i", 782 },	-- Painted Gnoll Armband (QI!)
						crs = {
							478,	-- Riverpaw Outrunner
							97,		-- Riverpaw Runt
						},
					}),
					i(2249),	-- Militia Buckler
					i(2238),	-- Urchin's Pants
				},
			}),
			q(91751, {	-- Rough Wolf Pelts
				qg = 6306,	-- Helene Peltskinner <Skinner>
				coord = { 46.2, 62.2, MAP.ELWYNN_FOREST },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = ALLIANCE_ONLY,
				requireSkill = SKINNING,
				lvl = 5,
				groups = {
					objective(1, {	-- 0/7 Rough Wolf Pelt
						provider = { "i", 247877 },	-- Rough Wolf Pelt
						crs = {
							1922,	-- Gray Forest Wolf
							118,	-- Prowler
						},
					}),
				},
			}),
			q(2205, {	-- Seek out SI: 7
				qg = 917,	-- Keryn Sylvius
				qi = 7674,	-- Delivery to Mathias (PQI!)
				coord = { 43.9, 65.9, MAP.ELWYNN_FOREST },
				races = ALLIANCE_ONLY,
				classes = { ROGUE },
				isBreadcrumb = true,
				lvl = 10,
			}),
			q(61, {	-- Shipment to Stormwind
				sourceQuest = 47,	-- Gold Dust Exchange
				qg = 253,	-- William Pestle
				qi = 957,	-- William's Shipment (PQI!)
				coord = { 43.2, 65.8, MAP.ELWYNN_FOREST },
				maps = { MAP.STORMWIND_CITY },
				races = ALLIANCE_ONLY,
				lvl = 3,
				groups = {
					i(2454),	-- Elixir of Minor Strength
					i(1178),	-- Explosive Rocket
					i(1177),	-- Oil of Olaf
				},
			}),
			q(2300, {	-- SI:7
				sourceQuest = 2205,	-- Seek out SI:7
				qg = 917,	-- Keryn Sylvius
				coord = { 43.8, 65.8, MAP.ELWYNN_FOREST },
				races = ALLIANCE_ONLY,
				classes = { ROGUE },
				isBreadcrumb = true,
				lvl = 16,
			}),
			q(99128, {	-- Slimy Menace
				sourceQuest = 99127,	-- A Net Disaster
				qg = 383,	-- Jason Mathers <Fishmonger>
				coord = { 47.4, 62.2, MAP.ELWYNN_FOREST },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = ALLIANCE_ONLY,
				lvl = 4,
				groups = {
					objective(1, {	-- 0/4 Murloc Streamrunner slain
						providers = { "n", 735 },	-- Murloc Streamrunner
						coord = { 52.8, 64.6, MAP.ELWYNN_FOREST },
					}),
					objective(2, {	-- 0/7 Murloc slain
						providers = { "n", 285 },	-- Murloc
						coord = { 56.4, 65.6, MAP.ELWYNN_FOREST },
					}),
				},
			}),
			q(111, {	-- Speak with Gramma
				sourceQuest = 106,	-- Young Lovers
				qg = 252,	-- Tommy Joe Stonefield
				coord = { 29.8, 86.0, MAP.ELWYNN_FOREST },
				races = ALLIANCE_ONLY,
				lvl = 5,
			}),
			q(1860, {	-- Speak with Jennea
				altQuests = { 1879 },	-- Speak with Bink
				qg = 328,	-- Zaldimar Wefhellt <Mage Trainer>
				coord = { 43.3, 66.2, MAP.ELWYNN_FOREST },
				races = ALLIANCE_ONLY,
				classes = { MAGE },
				isBreadcrumb = true,
				lvl = 10,
			}),
			q(91725, {	-- Stolen Enchanting Supplies
				qg = 248248,	-- Blixie Fitzwink
				coord = { 63.2, 72.6, MAP.ELWYNN_FOREST },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = ALLIANCE_ONLY,
				lvl = 7,
				groups = {
					objective(1, {	-- 0/5 Stolen Enchanting Supplies
						providers = {
							{ "i", 247805 },	-- Stolen Enchanting Supplies
							{ "o", 561159 },	-- Stolen Enchanting Supplies
						},
						coord = { 64.9, 41.1, MAP.ELWYNN_FOREST },
					}),
				},
			}),
			q(123, {	-- The Collector
				qs = 1307,	-- Gold Pickup Schedule (QS!)
				qi = 2223,	-- The Collector's Schedule (PQI!)
				races = ALLIANCE_ONLY,
				lvl = 7,
			}),
			q(114, {	-- The Escape
				sourceQuest = 112,	-- Collecting Kelp
				qg = 253,	-- William Pestle
				qi = 1257,	-- Invisibility Liquor (PQI!)
				coord = { 43.3, 65.7, MAP.ELWYNN_FOREST },
				races = ALLIANCE_ONLY,
				lvl = 5,
			}),
			q(62, {	-- The Fargodeep Mine
				qg = 240,	-- Marshal Dughan
				coord = { 42.1, 65.9, MAP.ELWYNN_FOREST },
				races = ALLIANCE_ONLY,
				lvl = 4,
			}),
			q(95998, {	-- The Great Outdoors [Elwynn Forest]
				sourceQuest = 96627,	-- The Adventurer [Elwynn Forest]
				qg = 263399,	-- Sam Sarsaparilla
				coord = { 44.91, 63.34, MAP.ELWYNN_FOREST },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = ALLIANCE_ONLY,
				lvl = 4,
			}),
			q(76, {	-- The Jasperlode Mine
				sourceQuest = 62,	-- The Fargodeep Mine
				qg = 240,	-- Marshal Dughan
				coord = { 42.1, 65.9, MAP.ELWYNN_FOREST },
				races = ALLIANCE_ONLY,
				lvl = 4,
			}),
			q(176, {	-- Wanted: "Hogger"
				sourceQuest = 239,	-- Westbrook Garrison Needs Help!
				provider = { "o", 68 },	-- Wanted Poster
				coords = {
					{ 24.5, 74.7, MAP.ELWYNN_FOREST },
					{ 24.6, 78.2, MAP.ELWYNN_FOREST },
				},
				races = ALLIANCE_ONLY,
				lvl = 5,
				groups = {
					objective(1, {	-- 0/1 Huge Gnoll Claw
						provider = { "i", 1931 },	-- Huge Gnoll Claw (QI!)
						coord = { 26.6, 89.8, MAP.ELWYNN_FOREST },
						cr = 448,	-- Hogger
					}),
					i(6085),	-- Footman Tunic
					i(6084),	-- Stormwind Guard Leggings
					i(6215),	-- Balanced Fighting Stick
					i(270000, {	-- Apprentice Wizard's Gown
						timeline = { TIMELINE.ADDED_1_60_1 },
					}),
				},
			}),
			q(239, {	-- Westbrook Garrison Needs Help!
				sourceQuest = 76,	-- The Jasperlode Mine
				qg = 240,	-- Marshal Dughan
				coord = { 42.1, 65.9, MAP.ELWYNN_FOREST },
				races = ALLIANCE_ONLY,
				isBreadcrumb = true,
				lvl = 6,
			}),
			q(106, {	-- Young Lovers
				qg = 251,	-- Maybell Maclure
				qi = 1208,	-- Maybell's Love Letter (PQI!)
				coord = { 43.2, 89.6, MAP.ELWYNN_FOREST },
				races = ALLIANCE_ONLY,
				lvl = 5,
			}),
		}),
		n(RARES, {
			n(276180, {	-- Elder Finseer
				coords = {
					{ 78.2, 57.0, MAP.ELWYNN_FOREST },
					{ 79.6, 46.8, MAP.ELWYNN_FOREST },
				},
				timeline = { TIMELINE.ADDED_1_60_1 },
			}),
			n(472, {	-- Fedfennel
				coord = { 68.0, 40.6, MAP.ELWYNN_FOREST },
				groups = {
					i(3233),	-- Gnoll Hide Sack
					i(5744),	-- Pale Skinner
				},
			}),
			n(100, {	-- Gruff Swiftbite
				coord = { 27.6, 88.4, MAP.ELWYNN_FOREST },
			}),
			n(276189, {	-- Matriarch Bristlefur
				coords = {
					{ 52.4, 79.8, MAP.ELWYNN_FOREST },
					{ 59.8, 80.2, MAP.ELWYNN_FOREST },
					{ 65.6, 76.4, MAP.ELWYNN_FOREST },
				},
				timeline = { TIMELINE.ADDED_1_60_1 },
				groups = {
					i(286748),	-- Bristlebark Bow
				},
			}),
			n(99, {	-- Morgaine the Sly
				coord = { 31.8, 65.6, MAP.ELWYNN_FOREST },
				groups = {
					i(1917),	-- Jeweled Dagger
					i(6201),	-- Lithe Boots
					i(2091),	-- Magic Dust
				},
			}),
			n(471, {	-- Mother Fang
				coord = { 61.8, 47.8, MAP.ELWYNN_FOREST },
				groups = {
					i(3000),	-- Brood Mother Carapace
					i(6148),	-- Web-covered Boots
				},
			}),
			n(79, {	-- Narg the Taskmaster
				coord = { 41.2, 78.8, MAP.ELWYNN_FOREST },
				groups = {
					i(6147),	-- Ratty Old Belt
					i(1913),	-- Studded Blackjack
				},
			}),
			n(61, {	-- Thuros Lightfingers
				coords = {
					{ 30.0, 59.6, MAP.ELWYNN_FOREST },
					{ 51.4, 60.8, MAP.ELWYNN_FOREST },
					{ 51.2, 85.0, MAP.ELWYNN_FOREST },
					{ 89.6, 78.6, MAP.ELWYNN_FOREST },
				},
				groups = {
					i(6202),	-- Fingerless Gloves
					i(6203),	-- Thuggish Shield
				},
			}),
		}),
		n(RIDING_TRAINER, {
			n(4732, {	-- Randal Hunter <Horse Riding Instructor>
				coord = { 84.2, 65.0, MAP.ELWYNN_FOREST },
				races = ALLIANCE_ONLY,

				-- Available to Humans without faction requirements.
				minReputation = { FACTION_STORMWIND, EXALTED },	-- Stormwind, Exalted.
				OnInit = [[function(t)
					if _.RaceIndex == ]] .. HUMAN .. [[ then
						t.minReputation = nil;
					end
					return t;
				end]],
				groups = {
					recipe(824, {	-- Horse Riding
						cost = 200000,
						lvl = 40,
					}),
				},
			}),
		}),
		n(TREASURES, {
			o(386759, {	-- Library Book
				coord = { 65.4, 70.1, MAP.ELWYNN_FOREST },
				timeline = { TIMELINE.ADDED_1_60_1 },
				groups = {
					i(203755),	-- Archmage Theocritus' Research Journal
				},
			}),
		}),
		n(VENDORS, {
			n(2046, {	-- Andrew Krighton <Armorer & Shieldcrafter>
				coord = { 41.7, 65.9, MAP.ELWYNN_FOREST },
				races = ALLIANCE_ONLY,
				sym = {{"select","itemID",
					1201,	-- Dull Heater Shield
					2392,	-- Light Mail Armor
					2393,	-- Light Mail Belt
					2395,	-- Light Mail Boots
					2396,	-- Light Mail Bracers
					2397,	-- Light Mail Gloves
					2394,	-- Light Mail Leggings
					17186,	-- Small Targe
				}},
			}),
			n(844, {	-- Antonio Perelli <Traveling Salesman>
				description = "This vendor travels in a big circuit from Elwynn Forest (stopping in Goldshire) to Westfall (stopping in Sentinel Hill) to Duskwood (stopping in Darkshire) to Redridge Mountains (stopping in Lakeshire) and then back to Elwynn Forest. If you cannot find him in this zone, check one of the other three.",
				coords = {
					{ 19.6, 60.6, MAP.DUSKWOOD },
					{ 50.8, 66.6, MAP.DUSKWOOD },
					{ 75.0, 46.4, MAP.DUSKWOOD },
					{ 42.6, 66.6, MAP.ELWYNN_FOREST },
					{ 68.8, 71.6, MAP.ELWYNN_FOREST },
					{ 75.0, 72.4, MAP.ELWYNN_FOREST },
					{ 29.1, 47.4, MAP.REDRIDGE_MOUNTAINS },
					{ 57.4, 52.2, MAP.WESTFALL },
					{ 57.8, 65.0, MAP.WESTFALL },
				},
				races = ALLIANCE_ONLY,
				groups = {
					i(4777, {	-- Ironwood Maul
						isLimited = true,
					}),
					i(4778, {	-- Heavy Spiked Mace
						isLimited = true,
					}),
					i(4795, {	-- Bear Bracers
						isLimited = true,
					}),
					i(4796, {	-- Owl Bracers
						isLimited = true,
					}),
					i(4794, {	-- Wolf Bracers
						isLimited = true,
					}),
					i(4817, {	-- Blessed Claymore
						isLimited = true,
					}),
					i(4818, {	-- Executioner's Sword
						isLimited = true,
					}),
				},
			}),
			n(465, {	-- Barkeep Dobbins <Bartender>
				coord = { 43.8, 65.8, MAP.ELWYNN_FOREST },
				races = ALLIANCE_ONLY,
				groups = {
					i(1939),	-- Skin of Sweet Rum
				},
			}),
			n(54, {	-- Corina Steele <Weaponsmith>
				coord = { 41.4, 65.8, MAP.ELWYNN_FOREST },
				races = ALLIANCE_ONLY,
				sym = {{"select","itemID",
					2492,	-- Cudgel
					2488,	-- Gladius
					2491,	-- Large Axe
					2494,	-- Stiletto
					2490,	-- Tomahawk
					2489,	-- Two-Handed Sword
					2495,	-- Walking Stick
					2493,	-- Wooden Mallet
				}},
			}),
			n(6367, {	-- Donni Anthania <Crazy Cat Lady>
				coord = { 44.2, 53.2, MAP.ELWYNN_FOREST },
				races = ALLIANCE_ONLY,
				groups = {
					i(8485),	-- Bombay Cat (PET!)
					i(8486),	-- Cornish Rex Cat (PET!)
					i(8487),	-- Orange Tabby Cat (PET!)
					i(8488),	-- Silver Tabby Cat (PET!)
				},
			}),
			n(1250, {	-- Drake Lindgren <General & Trade Supplies>
				coord = { 83.2, 66.7, MAP.ELWYNN_FOREST },
				races = ALLIANCE_ONLY,
				groups = {
					i(6272, {	-- Pattern: Blue Linen Robe (RECIPE!)
						isLimited = true,
					}),
				},
			}),
			n(384, {	-- Katie Hunter <Horse Breeder>
				coord = { 84.0, 65.4, MAP.ELWYNN_FOREST },
				-- Available to Humans without faction requirements.
				minReputation = { FACTION_STORMWIND, EXALTED },	-- Stormwind, Exalted.
				OnInit = [[function(t)
					if _.RaceIndex == ]] .. HUMAN .. [[ then
						t.minReputation = nil;
					end
					return t;
				end]],
				races = ALLIANCE_ONLY,
				groups = {
					i(5656),	-- Brown Horse (MOUNT!)
					i(5655),	-- Chestnut Mare (MOUNT!)
					i(2414),	-- Pinto (MOUNT!)
					i(18777),	-- Swift Brown Steed (MOUNT!)
					i(18776),	-- Swift Palomino (MOUNT!)
					i(18778),	-- Swift White Steed (MOUNT!)
				},
			}),
			n(74, {	-- Kurran Steele <Cloth & Leather Armor Merchant>
				coord = { 41.4, 65.6, MAP.ELWYNN_FOREST },
				races = ALLIANCE_ONLY,
				sym = {{"select","itemID",
					3602,	-- Knitted Belt
					3603,	-- Knitted Bracers
					793,	-- Knitted Gloves
					794,	-- Knitted Pants
					792,	-- Knitted Sandals
					795,	-- Knitted Tunic
					1839,	-- Rough Leather Belt
					796,	-- Rough Leather Boots
					1840,	-- Rough Leather Bracers
					797,	-- Rough Leather Gloves
					798,	-- Rough Leather Pants
					799,	-- Rough Leather Vest
				}},
			}),
			n(959, {	-- Morley Eberlein <Clothier>
				coord = { 64.7, 69.5, MAP.ELWYNN_FOREST },
				races = ALLIANCE_ONLY,
				sym = {{"select","itemID",
					3602,	-- Knitted Belt
					3603,	-- Knitted Bracers
					793,	-- Knitted Gloves
					794,	-- Knitted Pants
					792,	-- Knitted Sandals
					795,	-- Knitted Tunic
				}},
			}),
			n(1198, {	-- Rallic Finn <Bowyer>
				coord = { 83.2, 66.0, MAP.ELWYNN_FOREST },
				races = ALLIANCE_ONLY,
				groups = {
					i(11303, {	-- Fine Shortbow
						isLimited = true,
					}),
				},
			}),
			n(66, {	-- Tharynn Bouden <Trade Supplies>
				coord = { 41.8, 67.0, MAP.ELWYNN_FOREST },
				races = ALLIANCE_ONLY,
				groups = {
					i(6270, {	-- Pattern: Blue Linen Vest (RECIPE!)
						isLimited = true,
					}),
					i(6325),	-- Recipe: Brilliant Smallfish (RECIPE!)
					i(6328),	-- Recipe: Longjaw Mud Snapper (RECIPE!)
				},
			}),
		}),
		n(ZONE_DROPS, {
			i(769, {	-- Chunk of Boar Meat
				cr = 113,	-- Stonetusk Boar
			}),
			i(247826, {	-- Croaky's Head (QS!)
				coord = { 76.6, 86.8, MAP.ELWYNN_FOREST },
				timeline = { TIMELINE.ADDED_1_60_1 },
				cr = 248278,	-- Croaky
			}),
			i(247883, {	-- Crude Wax Effigy
				description = "You can continue to Disenchant these to level your enchanting well beyond skill level 40.",
				timeline = { TIMELINE.ADDED_1_60_1 },
				cr = 476,	-- Kobold Geomancer
			}),
			i(247862, {	-- Elmpaw's Head (QS!)
				coords = {
					{ 77.6, 37.8, MAP.ELWYNN_FOREST },
					{ 81.8, 84.2, MAP.ELWYNN_FOREST },
				},
				timeline = { TIMELINE.ADDED_1_60_1 },
				cr = 248299,	-- Elmpaw
			}),
			i(1307, {	-- Gold Pickup Schedule (QS!)
				crs = {
					100,	-- Gruff Swiftbite
					448,	-- Hogger
					478,	-- Riverpaw Outrunner
					97,		-- Riverpaw Runt
				},
			}),
			i(778, {	-- Kobold Excavation Pick
				["cr"] = 476,	-- Kobold Geomancer
			}),
			i(1389, {	-- Kobold Mining Mallet
				coords = {
					{ 61.4, 50.4, MAP.ELWYNN_FOREST },
					{ 64.6, 56.4, MAP.ELWYNN_FOREST },
					{ 41.6, 80.0, MAP.ELWYNN_FOREST },
				},
				["cr"] = 40,	-- Kobold Miner
			}),
			i(1195, {	-- Kobold Mining Shovel
				coords = {
					{ 41.6, 78.8, MAP.ELWYNN_FOREST },
					{ 40.0, 83.8, MAP.ELWYNN_FOREST },
					{ 38.0, 87.0, MAP.ELWYNN_FOREST },
				},
				["cr"] = 475,	-- Kobold Tunneler
			}),
			i(1399, {	-- Magic Candle
				["cr"] = 476,	-- Kobold Geomancer
			}),
			i(781, {	-- Stone Gnoll Hammer
				coords = {
					{ 28.0, 86.8, MAP.ELWYNN_FOREST },
					{ 26.6, 89.6, MAP.ELWYNN_FOREST },
					{ 27.6, 95.4, MAP.ELWYNN_FOREST },
					{ 23.8, 91.6, MAP.ELWYNN_FOREST },
				},
				crs = {
					478,	-- Riverpaw Outrunner
					97,		-- Riverpaw Runt
				},
			}),
			i(1972, {	-- Westfall Deed (QS!)
				["crs"] = {
					116,	-- Defias Bandit
					6866,	-- Defias Bodyguard
					6846,	-- Defias Dockmaster
					6927,	-- Defias Dockworker
					474,	-- Defias Rogue Wizard
					880,	-- Erlan Drudgemoor
				},
			}),
		}),
	},
});
