---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

maproot(EASTERN_KINGDOMS, ELWYNN_FOREST, {
	lore = "Elwynn Forest is the starting zone for Human characters. It is a lush valley with farmers and loggers, with Stormwind City at its center. The mines are infested by kobolds and the farmlands have been taken over by the Defias.",
	icon = 236761,
	groups = {
		m(NORTHSHIRE_VALLEY, {
			lore = "Northshire was the pride of Stormwind's vineyards until recently when Defias bandits drove off the farmers and occupied the farm and fields. This is where the human starting area is located, though the serene valley is visited by adventurers from all over the world.",
			icon = 236447,
			zoneTextAreaIDs = {
				9,	-- Northshire Valley
				59,	-- Northshire Vineyards
				24,	-- Northshire Abbey
				34,	-- Echo Ridge Mine
			},
			groups = {
				n(QUESTS, {
					q(783, {	-- A Threat Within
						qg = 823,	-- Deputy Willem
						coord = { 48.1, 42.9, ELWYNN_FOREST },
						races = ALLIANCE_ONLY,
					}),
					q(6, {	-- Bounty on Garrick Padfoot
						sourceQuest = 18,	-- Brotherhood of Thieves
						qg = 823,	-- Deputy Willem
						coord = { 48.1, 42.9, ELWYNN_FOREST },
						races = ALLIANCE_ONLY,
						lvl = 2,
						groups = {
							objective(1, {	-- 0/1 Garrick's Head
								provider = { "i", 182 },	-- Garrick's Head (QI!)
								coord = { 57.4, 48.6, ELWYNN_FOREST },
								cr = 103,	-- Garrick Padfoot
							}),
							i(6076),	-- Tapered Pants
							i(60),	-- Layered Tunic
							i(3070),	-- Ensign Cloak
						},
					}),
					q(18, {	-- Brotherhood of Thieves
						qg = 823,	-- Deputy Willem
						coord = { 48.2, 42.8, ELWYNN_FOREST },
						races = ALLIANCE_ONLY,
						lvl = 2,
						groups = {
							objective(1, {	-- 0/12 Red Burlap Bandana
								provider = { "i", 752 },	-- Red Burlap Bandana (QI!)
								cr = 38,	-- Defias Thug
							}),
							i(2224, {	-- Militia Dagger
								-- CRIEVE NOTE: Not sure at which patch, but the dagger was lost forever.
							}),
							i(5580),	-- Militia Hammer
							i(1161, {	-- Militia Shortsword
								-- CRIEVE NOTE: Not sure at which patch, but the shortsword was lost forever.
							}),
							i(5579),	-- Militia Warhammer
							i(1159),	-- Militia Quarterstaff
						},
					}),
					q(3101, {	-- Consecrated Letter
						sourceQuest = 7,	-- Kobold Camp Cleanup
						qg = 197,	-- Marshal McBride
						qi = 9570,	-- Consecrated Letter (PQI!)
						coords = {
							{ 48.9, 41.6, ELWYNN_FOREST },
						},
						classes = { PALADIN },
						races = { HUMAN },
					}),
					q(5261, {	-- Eagan Peltskinner
						sourceQuest = 783,	-- A Threat Within
						qg = 823,	-- Deputy Willem
						coord = { 48.17, 42.94, ELWYNN_FOREST },
						races = ALLIANCE_ONLY,
						isBreadcrumb = true,
					}),
					q(3102, {	-- Encrypted Letter
						sourceQuest = 7,	-- Kobold Camp Cleanup
						qg = 197,	-- Marshal McBride
						qi = 9555,	-- Encrypted Letter (PQI!)
						coords = {
							{ 48.9, 41.6, ELWYNN_FOREST },
						},
						races = { HUMAN },
						classes = { ROGUE },
					}),
					q(3104, {	-- Glyphic Letter
						sourceQuest = 7,	-- Kobold Camp Cleanup
						qg = 197,	-- Marshal McBride
						qi = 9571,	-- Glyphic Letter (PQI!)
						coords = {
							{ 48.9, 41.6, ELWYNN_FOREST },
						},
						races = { HUMAN },
						classes = { MAGE },
					}),
					q(3905, {	-- Grape Manifest
						sourceQuest = 3904,	-- Milly's Harvest
						qg = 9296,	-- Milly Osworth
						qi = 11125,	-- Grape Manifest (PQI!)
						coord = { 50.7, 39.3, ELWYNN_FOREST },
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
						coords = {
							{ 48.9, 41.6, ELWYNN_FOREST },
						},
						races = { HUMAN },
						classes = { PRIEST },
					}),
					q(5623, {	-- In Favor of the Light
						qg = 375,	-- Priestess Anetta <Priest Trainer>
						coord = { 49.8, 39.6, ELWYNN_FOREST },
						races = { HUMAN },
						classes = { PRIEST },
						isBreadcrumb = true,
						lvl = 5,
					}),
					q(345, {	-- Ink Supplies
						sourceQuest = 344,	-- Brother Paxton (quest in Stormwind)
						qg = 951,	-- Brother Paxton
						coord = { 49.6, 40.4, ELWYNN_FOREST },
						races = ALLIANCE_ONLY,
						lvl = 20,
					}),
					q(15, {	-- Investigate Echo Ridge
						sourceQuest = 7,	-- Kobold Camp Cleanup
						qg = 197,	-- Marshal McBride
						coord = { 48.9, 41.6, ELWYNN_FOREST },
						races = ALLIANCE_ONLY,
						groups = {
							objective(1, {	-- 0/10 Kobold Worker
								provider = { "n", 257 },	-- Kobold Worker
							}),
						},
					}),
					q(7, {	-- Kobold Camp Cleanup
						qg = 197,	-- Marshal McBride
						coord = { 48.9, 41.6, ELWYNN_FOREST },
						races = ALLIANCE_ONLY,
						groups = {
							objective(1, {	-- 0/10 Kobold Vermin
								provider = { "n", 6 },	-- Kobold Vermin
							}),
						},
					}),

					applyclassicphase(SOD_PHASE_ONE, q(77619, {	-- Meditation on the Light
						qg = 375,	-- Priestess Anetta <Priest Trainer>
						coord = { 49.8, 39.6, ELWYNN_FOREST },
						classes = { PRIEST },
						races = { HUMAN },
						lvl = 2,
						groups = {
							objective(1, {	-- 0/1 Learn Spell: Engrave Gloves - Penance
								provider = { "i", 205951 },	-- Memory of a Troubled Acolyte
								coord = { 48.2, 30.2, ELWYNN_FOREST },
								description = "Kneel (/kneel) inside Northshire Abbey to gain a Meditation buff, then use the Rune to complete the quest.",
								cr = 80,	-- Kobold Laborer
							}),
							recipe(402862),	-- Engrave Gloves - Penance
							i(711),	-- Tattered Cloth Gloves
						},
					})),
					q(3903, {	-- Milly Osworth
						sourceQuest = 18,	-- Brotherhood of Thieves
						qg = 823,	-- Deputy Willem
						coord = { 48.2, 42.8, ELWYNN_FOREST },
						races = ALLIANCE_ONLY,
						lvl = 2,
					}),
					q(3904, {	-- Milly's Harvest
						sourceQuest = 3903,	-- Milly Osworth
						qg = 9296,	-- Milly Osworth
						coord = { 50.7, 39.3, ELWYNN_FOREST },
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
					applyclassicphase(SOD_PHASE_ONE, q(77617, {	-- Relics of the Light
						qg = 925,	-- Brother Sammuel <Paladin Trainer>
						coord = { 50.4, 42.0, ELWYNN_FOREST },
						classes = { PALADIN },
						races = { HUMAN },
						lvl = 2,
						groups = {
							objective(1, {	-- 0/1 Learn Spell: Engrave Gloves - Crusader Strike
								provider = { "i", 205420 },	-- Libram of Judgement
								cr = 38,	-- Defias Thug
							}),
							recipe(410002),	-- Engrave Gloves - Crusader Strike
							i(2385),	-- Tarnished Chain Gloves
						},
					})),
					q(54, {	-- Report to Goldshire
						sourceQuests = {
							21,		-- Skirmish at Echo Ridge
						},
						qg = 197,	-- Marshal McBride
						qi = 745,	-- Marshal McBride's Documents (PQI!)
						coords = {
							{ 48.9, 41.6, ELWYNN_FOREST },
						},
						races = exclude({ DRACTHYR_ALLIANCE, MECHAGNOME }, ALLIANCE_ONLY),
						groups = {
							i(6078),	-- Pikeman Shield
						},
					}),
					q(2158, {	-- Rest and Relaxation
						qg = 6774,	-- Falkhaan Isenstrider
						coords = {
							{ 45.6, 47.8, ELWYNN_FOREST },
						},
						races = ALLIANCE_ONLY,
					}),
					q(346, {	-- Return to Kristoff
						sourceQuest = 347,	-- Rethban Ore (quest in Redridge Mountains)
						qg = 951,	-- Brother Paxton
						qi = 2795,	-- Book: Stresses of Iron (PQI!)
						coord = { 49.6, 40.4, ELWYNN_FOREST },
						races = ALLIANCE_ONLY,
						lvl = 20,
						groups = {
							i(6095),	-- Wandering Boots
						},
					}),
					q(3100, {	-- Simple Letter
						sourceQuest = 7,	-- Kobold Camp Cleanup
						qg = 197,	-- Marshal McBride
						qi = 9542,	-- Simple Letter (PQI!)
						coords = {
							{ 48.8, 41.6, ELWYNN_FOREST },
						},
						races = { HUMAN },
						classes = { WARRIOR },
					}),
					q(21, {	-- Skirmish at Echo Ridge
						sourceQuest = 15,	-- Investigate Echo Ridge
						qg = 197,	-- Marshal McBride
						coord = { 48.9, 41.6, ELWYNN_FOREST },
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
					applyclassicphase(SOD_PHASE_ONE, q(77620, {	-- Spell Research
						qg = 198,	-- Khelden Bremen <Mage Trainer>
						qi = 211809,	-- Comprehension Primer
						coord = { 49.6, 39.4, ELWYNN_FOREST },
						classes = { MAGE },
						races = { HUMAN },
						lvl = 2,
						groups = {
							objective(1, {	-- 0/1 Learn Spell: Engrave Gloves - Ice Lance
								provider = { "i", 203745 },	-- Spell Notes: Ice Lance
							}),
							recipe(401760),	-- Engrave Gloves - Ice Lance
							i(211779),	-- Comprehension Charm
							i(711),	-- Tattered Cloth Gloves
						},
					})),
					applyclassicphase(SOD_PHASE_ONE, q(77621, {	-- Stolen Power
						qg = 459,	-- Drusilla La Salle <Warlock Trainer>
						coord = { 49.8, 42.6, ELWYNN_FOREST },
						classes = { WARLOCK },
						races = { HUMAN },
						lvl = 2,
						groups = {
							objective(1, {	-- 0/1 Learn Spell: Engrave Gloves - Haunt
								provider = { "i", 205230 },	-- Rune of Haunting
							}),
							recipe(403919),	-- Engrave Gloves - Haunt
							i(711),	-- Tattered Cloth Gloves
						},
					})),
					q(3105, {	-- Tainted Letter
						sourceQuest = 7,	-- Kobold Camp Cleanup
						qg = 197,	-- Marshal McBride
						qi = 9576,	-- Tainted Letter (PQI!)
						coords = {
							{ 48.8, 41.6, ELWYNN_FOREST },
						},
						races = { HUMAN },
						classes = { WARLOCK },
					}),
					applyclassicphase(SOD_PHASE_ONE, q(77616, {	-- The Lost Rune
						qg = 911,	-- Llane Beshere <Warrior Trainer>
						coord = { 50.2, 42.2, ELWYNN_FOREST },
						classes = { WARRIOR },
						races = { HUMAN },
						lvl = 2,
						groups = {
							objective(1, {	-- 0/1 Learn Spell: Engrave Gloves - Victory Rush
								providers = {
									{ "i", 204806 },	-- Rune of Victory Rush
									{ "o", 397987 },	-- Kobold Stashbox
								},
								coord = { 50.6, 27.2, ELWYNN_FOREST },
							}),
							recipe(403470),	-- Engrave Gloves - Victory Rush
							i(2385),	-- Tarnished Chain Gloves
						},
					})),
					q(1598, {	-- The Stolen Tome
						altQuests = { 1599 },	-- Beginnings
						qg = 459,	-- Drusilla La Salle <Warlock Trainer>
						coord = { 49.9, 42.6, ELWYNN_FOREST },
						races = ALLIANCE_ONLY,
						classes = { WARLOCK },
						groups = {
							objective(1, {	-- 0/1 Powers of the Void
								providers = {
									{ "i",  6785 },	-- Powers of the Void (QI!)
									{ "o", 83763 },	-- Stolen Books
								},
								coord = { 56.7, 44.0, ELWYNN_FOREST },
							}),
							recipe(688),	-- Summon Imp
						},
					}),
					applyclassicphase(SOD_PHASE_ONE, q(77618, {	-- Thrice Stolen
						qg = 915,	-- Jorik Kerridan <Rogue Trainer>
						coord = { 50.6, 40.0, ELWYNN_FOREST },
						classes = { ROGUE },
						races = { HUMAN },
						lvl = 2,
						groups = {
							objective(1, {	-- 0/1 Learn Spell: Engrave Gloves - Shadowstrike
								provider = { "i", 204795 },	-- Rune of Shadowstrike
							}),
							recipe(400105),	-- Engrave Gloves - Shadowstrike
							i(2125),	-- Cracked Leather Gloves
						},
					})),
					q(33, {	-- Wolves Across the Border
						sourceQuest = 5261,	-- Eagan Peltskinner
						qg = 196,	-- Eagan Peltskinner
						coord = { 48.9, 40.1, ELWYNN_FOREST },
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
						coords = {
							{ 47.6, 41.4, ELWYNN_FOREST },	-- WoWhead data
						},
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
						coords = {
							{ 47.6, 41.4, ELWYNN_FOREST },	-- WoWhead data
						},
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
						coords = {
							{ 47.2, 41.8, ELWYNN_FOREST },	-- WoWhead data
						},
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
				n(TREASURES, {
					applyclassicphase(SOD_PHASE_ONE, o(387477, {	-- Defias Stashbox
						coord = { 52.6, 51.8, ELWYNN_FOREST },
						races = ALLIANCE_ONLY,
						groups = {
							i(205230, {	-- Rune of Haunting
								classes = { WARLOCK },
							}),
							i(204795, {	-- Rune of Shadowstrike
								classes = { ROGUE },
							}),
						},
					})),
				}),
				n(ZONE_DROPS, {
					i(2057, {	-- Pitted Defias Shortsword
						cr = 38,	-- Defias Thug
					}),
					i(2055, {	-- Small Wooden Hammer
						cr = 80,	-- Kobold Laborer
						coords = {
							{ 49.0, 29.0, ELWYNN_FOREST },
							{ 50.2, 26.6, ELWYNN_FOREST },
						},
					}),
					applyclassicphase(SOD_PHASE_ONE, i(203751, {	-- Spell Notes: CALE ENCI
						classes = { MAGE },
						cr = 38,	-- Defias Thug
					})),
				}),
			},
		}),
		n(ACHIEVEMENTS, {
			ach(776),	-- Explore Elwynn Forest
		}),
		explorationHeader({
			exploration(62),	-- Brackwell Pumpkin Patch
			visit_exploration(18,{coord={47.4,62.2,ELWYNN_FOREST}}),	-- Crystal Lake
			exploration(88),	-- Eastvale Logging Camp
			exploration(57),	-- Fargodeep Mine
			exploration(60),	-- Forest's Edge
			exploration(87),	-- Goldshire
			visit_exploration(56, {coord={74.5,54.0,ELWYNN_FOREST}}),	-- Heroes' Vigil
			visit_exploration(5174,{coord={24.9,94.2,ELWYNN_FOREST}}),	-- Hogger Hill
			exploration(54),	-- Jasperlode Mine
			exploration(797),	-- Jerod's Landing
			visit_exploration(5637,{coord={42.9,65.6,ELWYNN_FOREST}}),	-- Lion's Pride Inn
			visit_exploration(92, {coord={32.1,58.2,ELWYNN_FOREST}}),	-- Mirror Lake
			visit_exploration(89, {coord={31.6,64.8,ELWYNN_FOREST}}),	-- Mirror Lake Orchard
			visit_exploration(9,   {coord={45.5,48.7,ELWYNN_FOREST}}),	-- Northshire Valley
			exploration(798),	-- Ridgepoint Tower
			exploration(86),	-- Stone Cairn Lake
			exploration(1519),	-- Stormwind City
			visit_exploration(7486,{coord={33.7,50.8,ELWYNN_FOREST}}),	-- Stormwind Gate
			exploration(64),	-- The Maclure Vineyards
			exploration(63),	-- The Stonefield Farm
			exploration(91),	-- Tower of Azora
			exploration(120),	-- Westbrook Garrison
		}),
		pickpocketing({
			applyclassicphase(SOD_PHASE_ONE, i(203723, {	-- Cutty's Note
				coords = {
					{ 57.4, 48.6, ELWYNN_FOREST },
					{ 71.0, 80.6, ELWYNN_FOREST },
				},
				maps = { NORTHSHIRE_VALLEY },
				classes = { ROGUE },
				crs = {
					103,	-- Garrick Padfoot
					473,	-- Morgan the Collector
				},
			})),
			applyclassicphase(SOD_PHASE_ONE, i(203750, {	-- Elwynn Treasure Map
				cost = {
					{ "i", 203787, 1 },	-- Bottom-Left Map Piece
					{ "i", 203786, 1 },	-- Bottom-Right Map Piece
					{ "i", 203785, 1 },	-- Top-Left Map Piece
					{ "i", 203784, 1 },	-- Top-Right Map Piece
				},
				classes = { ROGUE },
			})),
			applyclassicphase(SOD_PHASE_ONE, i(203787, {	-- Bottom-Left Map Piece
				coord = { 26.2, 88.6, ELWYNN_FOREST },
				classes = { ROGUE },
				cr = 478,	-- Riverpaw Outrunner
			})),
			applyclassicphase(SOD_PHASE_ONE, i(203786, {	-- Bottom-Right Map Piece
				coord = { 79.2, 57.4, ELWYNN_FOREST },
				classes = { ROGUE },
				cr = 46,	-- Murloc Forager
			})),
			applyclassicphase(SOD_PHASE_ONE, i(203785, {	-- Top-Left Map Piece
				coord = { 68.8, 78.6, ELWYNN_FOREST },
				classes = { ROGUE },
				crs = {
					6866,	-- Defias Bodyguard
					116,	-- Defias Bandit
					 38,	-- Defias Thug
					474,	-- Defias Rogue Wizard
				},
			})),
			applyclassicphase(SOD_PHASE_ONE, i(203784, {	-- Top-Right Map Piece
				coord = { 39.3, 80.4, ELWYNN_FOREST },
				classes = { ROGUE },
				crs = {
					 40,	-- Kobold Miner
					475,	-- Kobold Tunneler
					257,	-- Kobold Worker
				},
			})),
		}),
		n(QUESTS, {
			q(5545, {	-- A Bundle of Trouble
				qg = 10616,	-- Supervisor Raelen
				coord = { 81.4, 66.1, ELWYNN_FOREST },
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
				coord = { 42.1, 67.3, ELWYNN_FOREST },
				races = ALLIANCE_ONLY,
				lvl = 7,
			}),
			q(84, {	-- Back to Billy
				sourceQuest = 86,	-- Pie for Billy
				qg = 246,	-- "Auntie" Bernice Stonefield
				qi = 962,	-- Pork Belly Pie (PQI!)
				coord = { 34.5, 84.3, ELWYNN_FOREST },
				races = ALLIANCE_ONLY,
				lvl = 5,
			}),
			q(46, {	-- Bounty on Murlocs
				sourceQuest = 39,	-- Deliver Thomas' Report
				providers = {
					{ "n", 261 },	-- Guard Thomas
				},
				coord = { 74.0, 72.3, ELWYNN_FOREST },
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
				},
			}),
			q(59, {	-- Cloth and Leather Armor
				sourceQuests = {
					39,	-- Deliver Thomas' Report
				},
				providers = {
					{ "n", 240 },	-- Marshal Dughan
					{ "i", 748 },	-- Stormwind Armor Marker (PQI!)
				},
				coords = {
					{ 42.2, 65.8, ELWYNN_FOREST },
				},
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
				coord = { 43.3, 65.7, ELWYNN_FOREST },
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
			q(1667, {	-- Dead-tooth Jack
				sourceQuest = 1666,	-- Marshal Haggard
				qg = 294,	-- Marshal Haggard
				coord = { 84.6, 69.4, ELWYNN_FOREST },
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
						coord = { 89.2, 80.6, ELWYNN_FOREST },
						cr = 6093,	-- Dead-Tooth Jack
					}),
					i(6979),	-- Haggard's Axe
					i(6980),	-- Haggard's Dagger
					i(6983),	-- Haggard's Hammer
					i(6985),	-- Haggard's Sword
				},
			}),
			q(39, {	-- Deliver Thomas' Report
				sourceQuest = 71,	-- Report to Thomas
				qg = 261,	-- Guard Thomas
				coord = { 74.0, 72.2, ELWYNN_FOREST },
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
				coord = { 43.4, 65.6, ELWYNN_FOREST },
				races = { HUMAN, DWARF },
				classes = { PRIEST },
				lvl = 10,
				groups = {
					{
						recipeID = 13908,	-- Desperate Prayer (Rank 1)
						rank = 1,
					},
				},
			}),
			q(45, {	-- Discover Rolf's Fate
				sourceQuest = 37,	-- Find the Lost Guards
				provider = { "o", 55 },	-- A half-eaten body
				coord = { 72.7, 60.3, ELWYNN_FOREST },
				races = ALLIANCE_ONLY,
				lvl = 7,
			}),
			q(1097, {	-- Elmore's Task
				qgs = {
					514,	-- Smith Argus
					415,	-- Verner Osgood
				},
				coords = {
					{ 41.7, 65.6, ELWYNN_FOREST },	-- Smith Argus
					{ 31.0, 47.4, REDRIDGE_MOUNTAINS },	-- Verner Osgood
				},
				maps = { STORMWIND_CITY },
				races = ALLIANCE_ONLY,
				isBreadcrumb = true,	-- for "Stormpike's Delivery" in Stormwind
				lvl = 9,
			}),
			q(37, {	-- Find the Lost Guards
				sourceQuest = 35,	-- Further Concerns
				qg = 261,	-- Guard Thomas
				coord = { 74.0, 72.2, ELWYNN_FOREST },
				races = ALLIANCE_ONLY,
				lvl = 7,
			}),
			q(35, {	-- Further Concerns
				sourceQuest = 40,	-- A Fishy Peril
				qg = 240,	-- Marshal Dughan
				coord = { 42.1, 65.9, ELWYNN_FOREST },
				races = ALLIANCE_ONLY,
				lvl = 7,
			}),
			q(5624, {	-- Garments of the Light
				sourceQuest = 5623,	-- In Favor of the Light
				qg = 377,	-- Priestess Josetta <Priest Trainer>
				coord = { 43.4, 65.6, ELWYNN_FOREST },
				races = { HUMAN },
				classes = { PRIEST },
				lvl = 5,
				groups = {
					i(16605),	-- Friar's Robes of the Light
				},
			}),
			q(16, {	-- Give Gerard a Drink
				qg = 255,	-- Gerard Tiller
				coord = { 43.0, 85.6, ELWYNN_FOREST },
				cost = { { "i", 159, 1 } },	-- Refreshing Spring Water
				races = ALLIANCE_ONLY,
				repeatable = true,
				groups = {
					i(4536),	-- Shiny Red Apple
				},
			}),
			q(47, {	-- Gold Dust Exchange
				qg = 241,	-- Remy "Two Times"
				coord = { 42.1, 67.3, ELWYNN_FOREST },
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
						description = "One of the single best PvE defensive cooldowns. Choose your targets wisely... Save for Patchwerk!",
					}),
				},
			}),
			q(87, {	-- Goldtooth
				sourceQuest = 84,	-- Back to Billy
				qg = 247,	-- Billy Maclure
				coord = { 43.1, 85.7, ELWYNN_FOREST },
				races = ALLIANCE_ONLY,
				lvl = 5,
				groups = {
					objective(1, {	-- 0/1 Bernice's Necklace
						provider = { "i", 981 },	-- Bernice's Necklace (QI!)
						coords = {
							{ 41.6, 78.8, ELWYNN_FOREST },
						},
						cr = 327,	-- Goldtooth
					}),
					i(1359),	-- Lion-stamped Gloves
				},
			}),
			q(60, {	-- Kobold Candles
				qg = 253,	-- William Pestle
				coord = { 43.3, 65.7, ELWYNN_FOREST },
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
				coord = { 34.5, 84.3, ELWYNN_FOREST },
				races = ALLIANCE_ONLY,
				lvl = 5,
			}),
			q(147, {	-- Manhunt
				sourceQuest = 123,	-- The Collector
				qgs = {
					240,	-- Marshal Dughan
				},
				coords = {
					{ 42.1, 65.9, ELWYNN_FOREST },
				},
				races = ALLIANCE_ONLY,
				lvl = 7,
				groups = {
					objective(1, {	-- 0/1 The Collector's Ring
						provider = { "i", 2239 },	-- The Collector's Ring (QI!)
						coord = { 71.0, 80.8, ELWYNN_FOREST },
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
				coord = { 34.9, 83.9, ELWYNN_FOREST },
				races = ALLIANCE_ONLY,
				lvl = 5,
			}),
			q(7678, {	-- Palomino Exchange
				description = "If you are one of the poor unfortunate souls that turned in your unique mount for one of the generic mounts, I'm so sorry.",
				qg = 384,	-- Katie Hunter
				coord = { 84.0, 65.4, ELWYNN_FOREST },
				timeline = { REMOVED_1_4_0 },
				cost = { { "i", 12354, 1 } },	-- Palomino (MOUNT!)
				races = ALLIANCE_ONLY,
				repeatable = true,
				_drop = { "g" },
				sym = { { "select", "itemID", 18777, 18776, 18778 } },
			}),
			q(86, {	-- Pie for Billy
				sourceQuest = 85,	-- Lost Necklace
				qg = 247,	-- Billy Maclure
				coord = { 43.1, 85.7, ELWYNN_FOREST },
				cost = { { "i", 769, 4 } },	-- Chunk of Boar Meat
				races = ALLIANCE_ONLY,
				lvl = 5,
			}),
			q(88, {	-- Princess Must Die!
				qg = 244,	-- Ma Stonefield
				coord = { 34.7, 84.5, ELWYNN_FOREST },
				races = ALLIANCE_ONLY,
				lvl = 6,
				groups = {
					objective(1, {	-- 0/1 Brass Collar
						provider = { "i", 1006 },	-- Brass Collar (QI!)
						coords = {
							{ 69.8, 79.4, ELWYNN_FOREST },
						},
						cr = 330,	-- Princess
					}),
					i(1173),	-- Weather-worn Boots
					i(1182),	-- Brass-studded Bracers
					i(11191),	-- Farmer's Boots
				},
			}),
			q(52, {	-- Protect the Frontier
				qg = 261,	-- Guard Thomas
				coord = { 74.0, 72.2, ELWYNN_FOREST },
				races = ALLIANCE_ONLY,
				lvl = 7,
				groups = {
					objective(1, {	-- 0/8 Prowler (or Gray Forest Wolf after Cata)
						providers = {
							{ "n",  118 },	-- Prowler
						},
					}),
					objective(2, {	-- 0/5 Young Forest Bear
						provider = { "n", 822 },	-- Young Forest Bear
					}),
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
				coord = { 43.4, 65.6, ELWYNN_FOREST },
				classes = { PRIEST },
				races = { NIGHTELF },
				lvl = 10,
				groups = {
					{
						recipeID = 10797,	-- Starshards (Rank 1)
						rank = 1,
					},
				},
			}),
			q(83, {	-- Red Linen Goods / Fine Linen Goods [CATA]
				qg = 278,	-- Sara Timberlain
				coord = { 79.5, 68.7, ELWYNN_FOREST },
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
				providers = {
					{ "o",  56 },	-- Rolf's corpse
					{ "i", 735 },	-- Rolf and Malakai's Medallions (PQI!)
				},
				coord = { 79.8, 55.5, ELWYNN_FOREST },
				races = ALLIANCE_ONLY,
				lvl = 7,
			}),
			q(11, {	-- Riverpaw Gnoll Bounty
				sourceQuest = 239,	-- Westbrook Garrison Needs Help!
				qg = 963,	-- Deputy Rainer
				coord = { 24.2, 74.5, ELWYNN_FOREST },
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
			q(2205, {	-- Seek out SI: 7
				qg = 917,	-- Keryn Sylvius
				qi = 7674,	-- Delivery to Mathias (PQI!)
				coord = { 43.9, 65.9, ELWYNN_FOREST },
				races = ALLIANCE_ONLY,
				classes = { ROGUE },
				isBreadcrumb = true,
				lvl = 10,
			}),
			q(61, {	-- Shipment to Stormwind
				sourceQuest = 47,	-- Gold Dust Exchange
				qg = 253,	-- William Pestle
				qi = 957,	-- William's Shipment (PQI!)
				coord = { 43.2, 65.8, ELWYNN_FOREST },
				maps = { STORMWIND_CITY },
				races = ALLIANCE_ONLY,
				lvl = 3,
				groups = {
					i(2454),	-- Elixir of Lion's Strength
					i(1178),	-- Explosive Rocket
					i(1177),	-- Oil of Olaf
				},
			}),
			q(2300, {	-- SI:7
				sourceQuest = 2205,	-- Seek out SI:7
				qg = 917,	-- Keryn Sylvius
				coord = { 43.8, 65.8, ELWYNN_FOREST },
				races = ALLIANCE_ONLY,
				classes = { ROGUE },
				isBreadcrumb = true,
				lvl = 16,
			}),
			q(111, {	-- Speak with Gramma
				sourceQuest = 106,	-- Young Lovers
				qg = 252,	-- Tommy Joe Stonefield
				coord = { 29.8, 86.0, ELWYNN_FOREST },
				races = ALLIANCE_ONLY,
				lvl = 5,
			}),
			q(1860, {	-- Speak with Jennea
				altQuests = { 1879 },	-- Speak with Bink
				qg = 328,	-- Zaldimar Wefhellt <Mage Trainer>
				coord = { 43.3, 66.2, ELWYNN_FOREST },
				races = ALLIANCE_ONLY,
				classes = { MAGE },
				isBreadcrumb = true,
				lvl = 10,
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
				coord = { 43.3, 65.7, ELWYNN_FOREST },
				races = ALLIANCE_ONLY,
				lvl = 5,
			}),
			q(62, {	-- The Fargodeep Mine
				qg = 240,	-- Marshal Dughan
				coord = { 42.1, 65.9, ELWYNN_FOREST },
				races = ALLIANCE_ONLY,
				lvl = 4,
			}),
			q(76, {	-- The Jasperlode Mine
				sourceQuest = 62,	-- The Fargodeep Mine
				qg = 240,	-- Marshal Dughan
				coord = { 42.1, 65.9, ELWYNN_FOREST },
				races = ALLIANCE_ONLY,
				lvl = 4,
			}),
			q(176, {	-- Wanted: "Hogger"
				sourceQuest = 239,	-- Westbrook Garrison Needs Help!
				providers = {
					{ "o", 68 },	-- Wanted Poster
					{ "o", 156561 },	-- Wanted Poster
				},
				coords = {
					{ 24.5, 74.7, ELWYNN_FOREST },
					{ 24.6, 78.2, ELWYNN_FOREST },
				},
				races = ALLIANCE_ONLY,
				lvl = 5,
				groups = {
					objective(1, {	-- 0/1 Huge Gnoll Claw
						provider = { "i", 1931 },	-- Huge Gnoll Claw (QI!)
						coord = { 26.6, 89.8, ELWYNN_FOREST },
						cr = 448,	-- Hogger
					}),
					i(6085),	-- Footman Tunic
					i(6084),	-- Stormwind Guard Leggings
					i(6215),	-- Balanced Fighting Stick
				},
			}),
			q(239, {	-- Westbrook Garrison Needs Help!
				sourceQuest = 76,	-- The Jasperlode Mine
				qg = 240,	-- Marshal Dughan
				coord = { 42.1, 65.9, ELWYNN_FOREST },
				races = ALLIANCE_ONLY,
				isBreadcrumb = true,
				lvl = 6,
			}),
			q(7677, {	-- White Stallion Exchange
				description = "If you are one of the poor unfortunate souls that turned in your unique mount for one of the generic mounts, I'm so sorry.",
				qg = 384,	-- Katie Hunter
				coord = { 84.0, 65.4, ELWYNN_FOREST },
				timeline = { REMOVED_1_4_0 },
				cost = { { "i", 12353, 1 } },	-- White Stallion (MOUNT!)
				races = ALLIANCE_ONLY,
				repeatable = true,
				_drop = { "g" },
				sym = { { "select", "itemID", 18777, 18776, 18778 } },
			}),
			q(106, {	-- Young Lovers
				qg = 251,	-- Maybell Maclure
				qi = 1208,	-- Maybell's Love Letter (PQI!)
				coord = { 43.2, 89.6, ELWYNN_FOREST },
				races = ALLIANCE_ONLY,
				lvl = 5,
			}),
		}),
		n(RARES, {
			applyclassicphase(SOD_PHASE_ONE, n(204503, {	-- Dead Acolyte
				coord = { 56.6, 57.6, ELWYNN_FOREST },
				classes = { WARLOCK },
				races = ALLIANCE_ONLY,
				groups = {
					i(205364, {	-- Acolyte's Knapsack
						classes = { WARLOCK },
						groups = {
							i(205184),	-- Acolyte's Note
							i(205181),	-- Unidentified Artifact
						},
					}),
					i(205183, {	-- Fel-Powered Artifact
						description = "Bring the Unidentified Artifact back to the warlock trainer in the zone to receive the Powerless Artifact and then come back to acquire this item.\n\nBring it to Gakin in Stormwind City to receive the rune.",
						cost = { { "i", 205182, 1 } },	-- Powerless Artifact
						classes = { WARLOCK },
					}),
				},
			})),
			n(472, {	-- Fedfennel
				coords = {
					{ 68.0, 40.6, ELWYNN_FOREST },
				},
				groups = {
					i(3233),	-- Gnoll Hide Sack
					i(5744),	-- Pale Skinner
				},
			}),
			applyclassicphase(SOD_PHASE_ONE, n(202060, {	-- Frozen Murloc
				coord = { 77.0, 51.8, ELWYNN_FOREST },
				classes = { MAGE, WARLOCK },
				groups = {
					i(205228, {	-- Rune of Chaos Bolt
						classes = { WARLOCK },
						groups = {
							recipe(403925),	-- Engrave Gloves - Chaos Bolt
						},
					}),
					i(203748, {	-- Spell Notes: Burnout
						classes = { MAGE },
						groups = {
							recipe(401759),	-- Engrave Chest - Burnout
						},
					}),
				},
			})),
			n(100, {	-- Gruff Swiftbite
				coords = {
					{ 27.6, 88.4, ELWYNN_FOREST },
				},
			}),
			n(99, {	-- Morgaine the Sly
				coords = {
					{ 31.8, 65.6, ELWYNN_FOREST },
				},
				groups = {
					i(1917),	-- Jeweled Dagger
					i(6201),	-- Lithe Boots
					i(2091),	-- Magic Dust
				},
			}),
			n(471, {	-- Mother Fang
				coords = {
					{ 61.8, 47.8, ELWYNN_FOREST },
				},
				groups = {
					i(3000),	-- Brood Mother Carapace
					i(6148),	-- Web-covered Boots
				},
			}),
			n(79, {	-- Narg the Taskmaster
				coords = {
					{ 41.2, 78.8, ELWYNN_FOREST },
				},
				groups = {
					i(6147),	-- Ratty Old Belt
					i(1913),	-- Studded Blackjack
				},
			}),
			n(61, {	-- Thuros Lightfingers
				coords = {
					{ 30.0, 59.6, ELWYNN_FOREST },
					{ 51.4, 60.8, ELWYNN_FOREST },
					{ 51.2, 85.0, ELWYNN_FOREST },
					{ 89.6, 78.6, ELWYNN_FOREST },
				},
				groups = {
					i(6202),	-- Fingerless Gloves
					i(6203),	-- Thuggish Shield
				},
			}),
			applyclassicphase(SOD_PHASE_ONE, n(203079, {	-- Wandering Swordsman
				provider = { "o", 392029 },	-- Swordsman's Reward
				coords = {
					{ 25.6, 69.6, ELWYNN_FOREST },
					{ 30.6, 74.2, ELWYNN_FOREST },
					{ 38.4, 76.8, ELWYNN_FOREST },
				},
				groups = {
					i(204441, {	-- Rune of Blood Frenzy
						classes = { WARRIOR },
						groups = {
							recipe(403474),	-- Engrave Chest - Blood Frenzy
						},
					}),
				},
			})),
		}),
		n(RIDING_TRAINER, {
			n(4732, {	-- Randal Hunter <Horse Riding Instructor>
				coord = { 84.2, 65.0, ELWYNN_FOREST },
				races = ALLIANCE_ONLY,

				-- Available to Humans without faction requirements.
				minReputation = { FACTION_STORMWIND, EXALTED },
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
			applyclassicphase(SOD_PHASE_ONE, n(204937, {	-- Adventurer's Spirit
				provider = { "n", 204827 },	-- Adventurer's Remains
				coord = { 52.2, 84.65, ELWYNN_FOREST },
				groups = {
					i(210589, {	-- Echo of the Ancestors
						classes = { SHAMAN },
						groups = {
							recipe(410099),	-- Engrave Pants - Ancestral Guidance
						},
					}),
					i(205944, {	-- Reciprocal Epiphany
						classes = { PRIEST },
						groups = {
							recipe(402848),	-- Engrave Pants - Prayer of Mending
						},
					}),
					i(206264, {	-- Rune of Inspiration
						classes = { PALADIN },
						groups = {
							recipe(410011),	-- Engrave Pants - Inspiration Exemplar
						},
					}),
					i(206970, {	-- Rune of Life
						classes = { DRUID },
						groups = {
							recipe(410033),	-- Engrave Pants - Lifebloom
						},
					}),
				},
			})),
			applyclassicphase(SOD_PHASE_ONE, i(203755, {	-- Archmage Theocritus's Research Journal
				provider = { "o", 386759 },	-- Library Book
				coord = { 65.4, 70.1, ELWYNN_FOREST },
			})),
			applyclassicphase(SOD_PHASE_ONE, i(203993, {	-- Rune of Slaughter
				provider = { "o", 387466 },	-- Rusty Lockbox
				coord = { 46.2, 62.1, ELWYNN_FOREST },
				classes = { ROGUE },
				groups = {
					recipe(424992),	-- Engrave Chest - Slaughter from the Shadows
				},
			})),
			applyclassicphase(SOD_PHASE_ONE, i(203991, {	-- Rune of Quick Draw
				provider = { "o", 386675 },	-- Buried Treasure
				coord = { 80.3, 79.1, ELWYNN_FOREST },
				cost = { { "i", 203750, 1 } },	-- Elwynn Treasure Map
				classes = { ROGUE },
				groups = {
					recipe(400095),	-- Engrave Chest - Quick Draw
				},
			})),
			applyclassicphase(SOD_PHASE_ONE, n(204989, {	-- Wounded Adventurer
				coord = { 62.0, 47.32, ELWYNN_FOREST },
				classes = { PALADIN },
				races = ALLIANCE_ONLY,
				groups = {
					i(205685, {	-- Rune of Aegis
						classes = { PALADIN },
						groups = {
							recipe(425619),	-- Engrave Chest - Aegis
						},
					}),
				},
			})),
		}),
		n(VENDORS, {
			n(2046, {	-- Andrew Krighton <Armorer & Shieldcrafter>
				coord = { 41.7, 65.9, ELWYNN_FOREST },
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
					{ 19.6, 60.6, DUSKWOOD },
					{ 50.8, 66.6, DUSKWOOD },
					{ 75.0, 46.4, DUSKWOOD },
					{ 42.6, 66.6, ELWYNN_FOREST },
					{ 68.8, 71.6, ELWYNN_FOREST },
					{ 75.0, 72.4, ELWYNN_FOREST },
					{ 29.1, 47.4, REDRIDGE_MOUNTAINS },
					{ 57.4, 52.2, WESTFALL },
					{ 57.8, 65.0, WESTFALL },
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
				coord = { 43.8, 65.8, ELWYNN_FOREST },
				races = ALLIANCE_ONLY,
				groups = {
					i(1939),	-- Skin of Sweet Rum
				},
			}),
			n(54, {	-- Corina Steele <Weaponsmith>
				coord = { 41.4, 65.8, ELWYNN_FOREST },
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
			applyclassicphase(SOD_PHASE_ONE, n(201854, {	-- Cutty
				coord = { 49.8, 52.0, ELWYNN_FOREST },
				races = ALLIANCE_ONLY,
				groups = {
					i(203990, {	-- Rune of Mutilation
						cost = { { "i", 203723, 1 } },	-- Cutty's Note
						classes = { ROGUE },
						groups = {
							recipe(400094),	-- Engrave Gloves - Mutilate
						},
					}),
				},
			})),
			n(6367, {	-- Donni Anthania <Crazy Cat Lady>
				coord = { 44.2, 53.2, ELWYNN_FOREST },
				races = ALLIANCE_ONLY,
				groups = {
					i(8485),	-- Bombay Cat (PET!)
					i(8486),	-- Cornish Rex Cat (PET!)
					i(8487),	-- Orange Tabby Cat (PET!)
					i(8488),	-- Silver Tabby Cat (PET!)
				},
			}),
			n(1250, {	-- Drake Lindgren <General & Trade Supplies>
				coord = { 83.2, 66.7, ELWYNN_FOREST },
				races = ALLIANCE_ONLY,
				groups = {
					i(6272, {	-- Pattern: Blue Linen Robe (RECIPE!)
						isLimited = true,
					}),
				},
			}),
			n(6749, {	-- Erma <Stable Master>
				coord = { 42.8, 65.8, ELWYNN_FOREST },
				races = ALLIANCE_ONLY,
				groups = {
					i(12354, {	-- Palomino (MOUNT!)
						timeline = { REMOVED_1_4_0 },
					}),
					i(12353, {	-- White Stallion (MOUNT!)
						timeline = { REMOVED_1_4_0 },
					}),
				},
			}),
			n(384, {	-- Katie Hunter <Horse Breeder>
				coord = { 84.0, 65.4, ELWYNN_FOREST },
				-- Available to Humans without faction requirements.
				minReputation = { FACTION_STORMWIND, EXALTED },
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
				coord = { 41.4, 65.6, ELWYNN_FOREST },
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
			n(906, {	-- Maximillian Crowe <Warlock Trainer>
				coord = { 44.4, 66.0, ELWYNN_FOREST },
				races = ALLIANCE_ONLY,
				groups = {
					applyclassicphase(SOD_PHASE_ONE, i(205182, {	-- Powerless Artifact
						cost = { { "i", 205181, 1 } },	-- Unidentified Artifact
						classes = { WARLOCK },
					})),
				},
			}),
			n(959, {	-- Morley Eberlein <Clothier>
				coord = { 64.7, 69.5, ELWYNN_FOREST },
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
				coord = { 83.2, 66.0, ELWYNN_FOREST },
				races = ALLIANCE_ONLY,
				groups = {
					i(11303, {	-- Fine Shortbow
						isLimited = true,
					}),
				},
			}),
			n(955, {	-- Sergeant De Vries <Morale Officer>
				coord = { 24.0, 73.0, ELWYNN_FOREST },
			}),
			n(66, {	-- Tharynn Bouden <Trade Supplies>
				coord = { 41.8, 67.0, ELWYNN_FOREST },
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
		applyclassicphase(SOD_PHASE_ONE, n(WILD_POLYMORPH, {
			classes = { MAGE },
			races = ALLIANCE_ONLY,
			groups = {
				i(203749, {	-- Spell Notes: Enlightenment
					cost = { { "i", 204864, 6 } },	-- Azora Apprentice Notes
					classes = { MAGE },
					groups = {
						recipe(415942),	-- Engrave Chest - Enlightenment
					},
				}),
				i(204864, {	-- Azora Apprentice Notes
					cr = 202093,	-- Polymorphed Apprentice
				}),
			},
		})),
		n(ZONE_DROPS, {
			i(1307, {	-- Gold Pickup Schedule (QS!)
				crs = {
					100,	-- Gruff Swiftbite
					448,	-- Hogger
					478,	-- Riverpaw Outrunner
					97,		-- Riverpaw Runt
				},
			}),
			applyclassicphase(SOD_PHASE_ONE, i(204906, {	-- Gnoll Blood
				coords = {
					{ 68.2, 38.2, ELWYNN_FOREST },
					{ 27.0, 88.6, ELWYNN_FOREST },
				},
				classes = { WARLOCK },
				crs = {
					 97,	-- Riverpaw Runt
					478,	-- Riverpaw Outrunner
				},
			})),
			i(778, {	-- Kobold Excavation Pick
				cr = 476,	-- Kobold Geomancer
			}),
			i(1389, {	-- Kobold Mining Mallet
				coords = {
					{ 61.4, 50.4, ELWYNN_FOREST },
					{ 64.6, 56.4, ELWYNN_FOREST },
					{ 41.6, 80.0, ELWYNN_FOREST },
				},
				cr = 40,	-- Kobold Miner
			}),
			i(1195, {	-- Kobold Mining Shovel
				coords = {
					{ 41.6, 78.8, ELWYNN_FOREST },
					{ 40.0, 83.8, ELWYNN_FOREST },
					{ 38.0, 87.0, ELWYNN_FOREST },
				},
				cr = 475,	-- Kobold Tunneler
			}),
			i(1399, {	-- Magic Candle
				cr = 476,	-- Kobold Geomancer
			}),
			applyclassicphase(SOD_PHASE_ONE, i(205940, {	-- Memory of a Dark Purpose
				coord = { 41.6, 78.8, ELWYNN_FOREST },
				classes = { PRIEST },
				cr = 327,	-- Goldtooth
				groups = {
					recipe(425216),	-- Engrave Chest - Void Plague
				},
			})),
			applyclassicphase(SOD_PHASE_ONE, i(205945, {	-- Memory of an Imprisoned Savior
				description = "This can drop from any of the Rare Creatures in the zone.",
				coords = {
					{ 41.6, 79.2, ELWYNN_FOREST },
					{ 63.6, 55.4, ELWYNN_FOREST },
				},
				classes = { PRIEST },
				cr = 40,	-- Kobold Miner
				groups = {
					recipe(402854),	-- Engrave Pants - Shared Pain
				},
			})),
			applyclassicphase(SOD_PHASE_ONE, i(204905, {	-- Ominous Tome
				coords = {
					{ 71.0, 80.6, ELWYNN_FOREST },
					{ 62.6, 54.2, ELWYNN_FOREST },
					{ 74.0, 51.8, ELWYNN_FOREST },
				},
				classes = { WARLOCK },
				crs = {
					881,	-- Surena Caledon
					476,	-- Kobold Geomancer
					474,	-- Defias Rogue Wizard
				},
			})),
			applyclassicphase(SOD_PHASE_ONE, i(205947, {	-- Prophecy of a Desecrated Citadel
				coord = { 74.0, 51.8, ELWYNN_FOREST },
				classes = { PRIEST },
				cr = 474,	-- Defias Rogue Wizard
				groups = {
					recipe(402852),	-- Engrave Pants - Homunculi
				},
			})),
			applyclassicphase(SOD_PHASE_ONE, i(204809, {	-- Rune of Furious Thunder
				coord = { 41.6, 78.8, ELWYNN_FOREST },
				classes = { WARRIOR },
				crs = {
					327,	-- Goldtooth
					100,	-- Gruff Swiftbite
					448,	-- Hogger
				},
				groups = {
					recipe(403476),	-- Engrave Pants - Furious Thunder
				},
			})),
			applyclassicphase(SOD_PHASE_ONE, i(204478, {	-- Severed Gnoll Head
				coord = { 50.15, 62.81, ELWYNN_FOREST },
				classes = { WARRIOR },
				crs = {
					448,	-- Hogger
					478,	-- Riverpaw Outrunner
					 97,	-- Riverpaw Runt
				},
			})),
			applyclassicphase(SOD_PHASE_ONE, i(204476, {	-- Severed Kobold Head
				coord = { 39.0, 85.24, ELWYNN_FOREST },
				classes = { WARRIOR },
				crs = {
					327,	-- Goldtooth
					 40,	-- Kobold Miner
					475,	-- Kobold Tunneler
				},
			})),
			applyclassicphase(SOD_PHASE_ONE, i(204477, {	-- Severed Murloc Head
				coord = { 50.15, 62.81, ELWYNN_FOREST },
				classes = { WARRIOR },
				crs = {
					285,	-- Murloc
					 46,	-- Murloc Forager
					735,	-- Murloc Streamrunner
				},
			})),
			applyclassicphase(SOD_PHASE_ONE, i(203752, {	-- Spell Notes: MILEGIN VALF
				coord = { 62.6, 54.2, ELWYNN_FOREST },
				classes = { MAGE },
				cr = 476,	-- Kobold Geomancer
			})),
			applyclassicphase(SOD_PHASE_ONE, i(203753, {	-- Spell Notes: RING SEFF OSTROF
				coord = { 26.6, 89.8, ELWYNN_FOREST },
				classes = { MAGE },
				cr = 448,	-- Hogger
			})),
			i(781, {	-- Stone Gnoll Hammer
				coords = {
					{ 28.0, 86.8, ELWYNN_FOREST },
					{ 26.6, 89.6, ELWYNN_FOREST },
					{ 27.6, 95.4, ELWYNN_FOREST },
					{ 23.8, 91.6, ELWYNN_FOREST },
				},
				crs = {
					478,	-- Riverpaw Outrunner
					97,		-- Riverpaw Runt
				},
			}),
			i(1972, {	-- Westfall Deed (QS!)
				crs = {
					116,	-- Defias Bandit
					6866,	-- Defias Bodyguard
					6846,	-- Defias Dockmaster
					6927,	-- Defias Dockworker
					474,	-- Defias Rogue Wizard
					880,	-- Erlan Drudgemoor
				},
			}),
			applyclassicphase(SOD_PHASE_ONE, i(204907, {	-- Wolf Jawbone
				coords = {
					{ 48.4, 39.0, ELWYNN_FOREST },
					{ 41.6, 58.6, ELWYNN_FOREST },
					{ 30.2, 72.6, ELWYNN_FOREST },
					{ 62.0, 67.2, ELWYNN_FOREST },
					{ 73.5, 63.6, ELWYNN_FOREST },
					{ 80.6, 83.2, ELWYNN_FOREST },
				},
				classes = { WARLOCK },
				crs = {
					299,	-- Young Wolf
					525,	-- Mangy Wolf
					1922,	-- Gray Forest Wolf
					 69,	-- Timber Wolf
					118,	-- Prowler
				},
			})),
		}),
	},
});

