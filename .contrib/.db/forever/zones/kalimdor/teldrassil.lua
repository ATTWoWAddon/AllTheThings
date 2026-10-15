---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

maproot(MAP.KALIMDOR, MAP.TELDRASSIL, {
	lore = "In the past few years, the night elves have moved their capital to an island off northwest Kalimdor. Here, the Circle of the Ancients and the wise druids pooled their power to create a great tree akin to the World Tree, but on a smaller scale.\n\nThey called this tree Teldrassil, meaning “Crown of the Earth,” and built their city of Darnassus atop it. The island takes the name of the tree as well, and a twilite forest now covers it.",
	icon = 236740,
	groups = {
		m(SHADOWGLEN, {
			lore = "Shadowglen is the starting area for night elves in the northeast part of Teldrassil, just north of Starbreeze Village. A small twilight field, bathed in a quiet dusk, the area is dominated by the great tree Aldrassil, which lies at the clearing's center. It has class trainers for all night elf classes. Another notable location is Shadowthread Cave, which lies in the region's extreme northwest. The area is ringed by mountains; the only gap is to the south, where the path headed to Dolanaar parts the mountain range.",
			icon = 236449,
			zoneTextAreaIDs = {
				188,	-- Shadowglen
				256,	-- Aldrassil
				257,	-- Shadowthread Cave
			},
			groups = {
				n(QUESTS, {
					q(3519, {	-- A Friend in Need
						sourceQuest = 4495,	-- A Good Friend
						qg = 8584,	-- Iverron
						coord = { 54.6, 33.0, MAP.TELDRASSIL },
						races = ALLIANCE_ONLY,
						lvl = 2,
					}),
					q(4495, {	-- A Good Friend
						qg = 8583,	-- Dirania Silvershine
						coord = { 60.8, 42.0, MAP.TELDRASSIL },
						races = ALLIANCE_ONLY,
						lvl = 2,
					}),
					q(921, {	-- Crown of the Earth (1/6)
						sourceQuest = 920,	-- Tenaron's Summons
						qg = 3514,	-- Tenaron Stormgrip
						coord = { 59.0, 39.4, MAP.TELDRASSIL },
						races = ALLIANCE_ONLY,
						groups = {
							objective(1, {	-- 0/1 Filled Crystal Phial
								providers = {
									{ "i", 5184 },	-- Filled Crystal Phial
									{ "i", 5185 },	-- Crystal Phial
								},
								coord = { 59.94, 33.07, MAP.TELDRASSIL },
							}),
						},
					}),
					q(928, {	-- Crown of the Earth (2/6)
						sourceQuest = 921,	-- Crown of the Earth (1/6)
						qg = 3514,	-- Tenaron Stormgrip
						qi = 5186,	-- Partially Filled Vessel
						coord = { 59.0, 39.4, MAP.TELDRASSIL },
						races = ALLIANCE_ONLY,
					}),
					q(2159, {	-- Dolanaar Delivery
						qg = 6780,	-- Porthannius
						qi = 7627,	-- Dolanaar Delivery
						coord = { 61.2, 47.6, MAP.TELDRASSIL },
						races = ALLIANCE_ONLY,
						_drop = { "g" },	-- Refreshing Spring Water
					}),
					q(3118, {	-- Encrypted Sigil
						sourceQuest = 457,	-- The Balance of Nature (2/2)
						qg = 2079,	-- Conservator Ilthalaine
						qi = 9551,	-- Encrypted Sigil
						coord = { 58.6, 44.2, MAP.TELDRASSIL },
						races = { NIGHTELF },
						classes = { ROGUE },
					}),
					q(3117, {	-- Etched Sigil
						sourceQuest = 457,	-- The Balance of Nature (2/2)
						qg = 2079,	-- Conservator Ilthalaine
						qi = 9567,	-- Etched Sigil
						coord = { 58.6, 44.2, MAP.TELDRASSIL },
						races = { NIGHTELF },
						classes = { HUNTER },
					}),
					q(97236, {	-- Fang of Githyiss
						provider = { "i", 277190 },	-- Fang of Githyiss
						timeline = { TIMELINE.ADDED_1_60_1 },
						races = ALLIANCE_ONLY,
						cr = 1994,	-- Githyiss the Vile
					}),
					q(3119, {	-- Hallowed Sigil
						sourceQuest = 457,	-- The Balance of Nature (2/2)
						qg = 2079,	-- Conservator Ilthalaine
						qi = 9557,	-- Hallowed Sigil
						coord = { 58.6, 44.2, MAP.TELDRASSIL },
						races = { NIGHTELF },
						classes = { PRIEST },
					}),
					q(5622, {	-- In Favor of Elune
						qg = 3595,	-- Shanda <Priest Trainer>
						coord = { 59.2, 40.4, MAP.TELDRASSIL },
						races = { NIGHTELF },
						classes = { PRIEST },
						isBreadcrumb = true,
						lvl = 5,
					}),
					q(3521, {	-- Iverron's Antidote (1/2)
						sourceQuest = 3519,	-- A Friend in Need
						qg = 8583,	-- Dirania Silvershine
						coord = { 60.8, 42.0, MAP.TELDRASSIL },
						races = ALLIANCE_ONLY,
						lvl = 2,
						groups = {
							objective(1, {	-- 0/7 Hyacinth Mushroom
								providers = {
									{ "i",  10639 },	-- Hyacinth Mushroom
									{ "o", 152094 },	-- Hyacinth Mushroom
								},
								crs = {
									1988,	-- Grell
									1989,	-- Grellkin
								},
							}),
							objective(2, {	-- 0/4 Moonpetal Lily
								providers = {
									{ "i", 10641 },	-- Moonpetal Lily
									{ "o", 152095 },	-- Moonpetal Lily
								},
							}),
							objective(3, {	-- 0/1 Webwood Ichor
								provider = { "i", 10640 },	-- Webwood Ichor
								cr = 1986,	-- Webwood Spider
							}),
						},
					}),
					q(3522, {	-- Iverron's Antidote (2/2)
						sourceQuest = 3522,	-- Iverron's Antidote (1/2)
						qg = 8583,	-- Dirania Silvershine
						qi = 10642,	-- Iverron's Antidote
						coord = { 60.8, 42.0, MAP.TELDRASSIL },
						races = ALLIANCE_ONLY,
						lvl = 2,
						groups = {
							i(10655),	-- Sedgeweed Britches
							i(10656),	-- Barkmail Vest
						},
					}),
					q(97977, {	-- Nature's Call
						qg = 1992,	-- Tarindrella
						coord = { 57.8, 45.0, MAP.TELDRASSIL },
						timeline = { TIMELINE.ADDED_1_60_1 },
						races = ALLIANCE_ONLY,
						groups = {
							objective(1, {	-- 0/4 Gnarlpine Totem
								providers = {
									{ "i", 279082 },	-- Gnarlpine Totem
									{ "o", 668482 },	-- Ellena Starlight
									{ "o", 668493 },	-- (unnamed object that gave a Gnarlpine Totem)
								},
							}),
						},
					}),
					q(5629, {	-- Returning Home [Teldrassil]
						altQuests = {
							5627,	-- Returning Home [Darnassus]
							5628,	-- Returning Home [Elwynn Forest]
							5630,	-- Returning Home [Dun Morogh]
							5631,	-- Returning Home [Stormwind City]
							5632,	-- Returning Home [Stormwind City]
							5633,	-- Returning Home [Ironforge]
						},
						qg = 3600,	-- Laurna Morninglight <Priest Trainer>
						coord = { 55.6, 56.8, MAP.TELDRASSIL },
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
					q(3116, {	-- Simple Sigil
						sourceQuest = 457,	-- The Balance of Nature (2/2)
						qg = 2079,	-- Conservator Ilthalaine
						qi = 9545,	-- Simple Sigil
						coord = { 58.6, 44.2, MAP.TELDRASSIL },
						races = { NIGHTELF },
						classes = { WARRIOR },
					}),
					q(920, {	-- Tenaron's Summons
						sourceQuest = 917,	-- Webwood Egg
						qg = 2082,	-- Gilshalan Windwalker
						coord = { 57.8, 41.6, MAP.TELDRASSIL },
						races = ALLIANCE_ONLY,
					}),
					q(96630, {	-- The Adventurer [Teldrassil]
						--["sourceQuest"] = ,	-- 
						provider = { "o", 654846 },	-- Lost Journal
						coord = { 59.1, 39.49, MAP.TELDRASSIL },
						qi = 275022,	-- Lost Journal (PQI!)
						timeline = { TIMELINE.ADDED_1_60_1 },
						races = ALLIANCE_ONLY,
						lvl = 4,
					}),
					q(456, {	-- The Balance of Nature (1/2)
						qg = 2079,	-- Conservator Ilthalaine
						coord = { 58.6, 44.2, MAP.TELDRASSIL },
						races = ALLIANCE_ONLY,
						groups = {
							objective(1, {	-- 0/7 Young Nightsaber
								provider = { "n", 2031 },	-- Young Nightsaber
							}),
							objective(2, {	-- 0/4 Young Thistle Boar
								provider = { "n", 1984 },	-- Young Thistle Boar
							}),
							i(5394),	-- Archery Training Gloves
							i(11187),	-- Stemleaf Bracers
						},
					}),
					q(457, {	-- The Balance of Nature (2/2)
						sourceQuest = 456,	-- The Balance of Nature (1/2)
						qg = 2079,	-- Conservator Ilthalaine
						coord = { 58.6, 44.2, MAP.TELDRASSIL },
						races = ALLIANCE_ONLY,
						groups = {
							objective(1, {	-- 0/7 Mangy Nightsaber
								provider = { "n", 2032 },	-- Mangy Nightsaber
							}),
							objective(2, {	-- 0/7 Thistle Boar
								provider = { "n", 1985 },	-- Thistle Boar
							}),
							i(5405),	-- Draped Cloak
							i(6058),	-- Blackened Leather Belt
						},
					}),
					q(97979, {	-- The Goddess Provides
						qg = 3595,	-- Shanda <Priest Trainer>
						coord = { 59.2, 40.4, MAP.TELDRASSIL },
						timeline = { TIMELINE.ADDED_1_60_1 },
						races = { NIGHTELF },
					}),
					q(458, {	-- The Woodland Protector (1/2)
						qg = 2077,	-- Melithar Staghelm
						coord = { 59.8, 42.4, MAP.TELDRASSIL },
						races = ALLIANCE_ONLY,
						groups = {
							i(247840),	-- Mining for Dummies
							i(247841),	-- Wild Harvest
							i(247846),	-- Pelt Collecting for Beginners
						},
					}),
					q(459, {	-- The Woodland Protector (2/2)
						sourceQuest = 458,	-- The Woodland Protector (1/2)
						qg = 1992,	-- Tarindrella
						coord = { 57.8, 45.0, MAP.TELDRASSIL },
						races = ALLIANCE_ONLY,
						groups = {
							objective(1, {	-- 0/8 Fel Moss
								provider = { "i", 3297 },	-- Fel Moss
								crs = {
									1988,	-- Grell
									1989,	-- Grellkin
								},
							}),
							i(5398),	-- Canopy Leggings
							i(5399),	-- Tracking Boots
							i(11190),	-- Viny Gloves
						},
					}),
					q(3120, {	-- Verdant Sigil
						sourceQuest = 457,	-- The Balance of Nature (2/2)
						qg = 2079,	-- Conservator Ilthalaine
						qi = 9580,	-- Verdant Sigil
						coord = { 58.6, 44.2, MAP.TELDRASSIL },
						races = { NIGHTELF },
						classes = { DRUID },
					}),
					q(917, {	-- Webwood Egg
						sourceQuest = 916,	-- Webwood Venom
						qg = 2082,	-- Gilshalan Windwalker
						coord = { 57.8, 41.6, MAP.TELDRASSIL },
						races = ALLIANCE_ONLY,
						groups = {
							objective(1, {	-- 0/1 Webwood Egg
								providers = {
									{ "i", 5167 },	-- Webwood Egg
									{ "o", 4406 },	-- Webwood Eggs
								},
								coord = { 56.6, 26.5, MAP.TELDRASSIL },
							}),
							i(5395),	-- Woodland Shield
							i(4907),	-- Woodland Tunic
							i(11189),	-- Woodland Robes
						},
					}),
					q(916, {	-- Webwood Venom
						qg = 2082,	-- Gilshalan Windwalker
						coord = { 57.8, 41.6, MAP.TELDRASSIL },
						races = ALLIANCE_ONLY,
						lvl = 3,
						groups = {
							objective(1, {	-- 0/10 Webwood Venom Sac
								provider = { "i", 5166 },	-- Webwood Venom Sac
								cr = 1986,	-- Webwood Spider
							}),
							i(10544),	-- Thistlewood Maul
							i(5392),	-- Thistlewood Dagger
							i(5393),	-- Thistlewood Staff
							i(5586),	-- Thistlewood Blade
							i(12447, {	-- Thistlewood Bow
								timeline = { REMOVED_1_7_0 },	-- CRIEVE NOTE: Check this.
							}),
						},
					}),
				}),
				n(VENDORS, {
					n(3592, {	-- Andiss
						races = ALLIANCE_ONLY,
						sym = {{ "select", "itemID",
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
					n(3591, {	-- Freja Nightwing
						races = ALLIANCE_ONLY,
						sym = {{ "select", "itemID",
							2122,	-- Cracked Leather Belt
							2123,	-- Cracked Leather Boots
							2124,	-- Cracked Leather Bracers
							2125,	-- Cracked Leather Gloves
							2126,	-- Cracked Leather Pants
							2127,	-- Cracked Leather Vest
						}},
					}),
					n(3590, {	-- Janna Brightmoon
						races = ALLIANCE_ONLY,
						sym = {{ "select", "itemID",
							2121,	-- Thin Cloth Armor
							3599,	-- Thin Cloth Belt
							3600,	-- Thin Cloth Bracers
							2119,	-- Thin Cloth Gloves
							2120,	-- Thin Cloth Pants
							2117,	-- Thin Cloth Shoes
						}},
					}),
					n(3589, {	-- Keina
						races = ALLIANCE_ONLY,
						sym = {{ "select", "itemID",
							2506,	-- Hornwood Recurve Bow
							2507,	-- Laminated Recurve Bow
						}},
					}),
					n(3588, {	-- Khardan Proudblade
						races = ALLIANCE_ONLY,
						sym = {{ "select", "itemID",
							1194,	-- Bastard Sword
							2479,	-- Broad Axe
							2130,	-- Club
							2139,	-- Dirk
							2134,	-- Hand Axe
							2480,	-- Large Club
							2132,	-- Short Staff
							2131,	-- Shortsword
						}},
					}),
				}),
			},
		}),
		n(ACHIEVEMENTS, {
			ach(842),	-- Explore Teldrassil
		}),
		explorationHeader({
			exploration(736),	-- Ban'ethil Hollow
			exploration(1657),	-- Darnassus
			exploration(186),	-- Dolanaar
			exploration(261),	-- Gnarlpine Hold
			exploration(259),	-- Lake Al'Ameth
			exploration(478),	-- Pools of Arlithrien
			exploration(702),	-- Rut'theran Village
			exploration(188),	-- Shadowglen
			exploration(260),	-- Starbreeze Village
			exploration(264),	-- The Oracle Glade
			exploration(1662),	-- Tradesmen's Terrace
			exploration(1660),	-- Warrior's Terrace
			exploration(266),	-- Wellspring Lake
			exploration(265),	-- Wellspring River
		}),
		n(FLIGHT_PATHS, {
			fp(27, {	-- Rut'theran Village, Teldrassil
				cr = 3838,	-- Vesprystus <Hippogryph Master>
				coord = { 58.4, 94.0, MAP.TELDRASSIL },
				races = ALLIANCE_ONLY,
			}),
		}),
		n(QUESTS, {
			q(475, {	-- A Troubling Breeze
				qg = 2078,	-- Athridas Bearmantle
				coord = { 56.0, 57.4, MAP.TELDRASSIL },
				races = ALLIANCE_ONLY,
				lvl = 4,
			}),
			q(490, {	-- Bounty: Gnarlpine Furbolg
				qg = 2155,	-- Sentinel Shayla Nightbreeze
				coord = { 38.4, 54.0, MAP.TELDRASSIL },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = ALLIANCE_ONLY,
				lvl = 5,
				groups = {
					objective(1, {	-- 0/15 Gnarlpine Fang
						provider = { "i", 5220 },	-- Gnarlpine Fang
						crs = {
							2006,	-- Gnarlpine Ursa
							2007,	-- Gnarlpine Gardener
							2008,	-- Gnarlpine Warrior
							2152,	-- Gnarlpine Ambusher
							2010,	-- Gnarlpine Defender
							2012,	-- Gnarlpine Pathfinder
							2009,	-- Gnarlpine Shaman
							2011,	-- Gnarlpine Augur
							2013,	-- Gnarlpine Avenger
							7235,	-- Gnarlpine Mystic
							2014,	-- Gnarlpine Totemic
							14428,	-- Uruson
							14429,	-- Grimmaw
						},
					}),
				},
			}),
			q(97938, {	-- Camping 101: Alchemy [Teldrassil]
				sourceQuest = 96630,	-- The Great Outdoors [Teldrassil]
				qg = 265811,	-- Lyreena Duskblade <Adventurer>
				coord = { 57.6, 56.6, MAP.TELDRASSIL },
				timeline = { TIMELINE.ADDED_1_60_1 },
				requireSkill = ALCHEMY,
				races = ALLIANCE_ONLY,
				lvl = 4,
				groups = {
					recipe(1230564),	-- Alchemy: Mana Well
				},
			}),
			q(97939, {	-- Camping 101: Blacksmithing [Teldrassil]
				sourceQuest = 96630,	-- The Great Outdoors [Teldrassil]
				qg = 265811,	-- Lyreena Duskblade <Adventurer>
				coord = { 57.6, 56.6, MAP.TELDRASSIL },
				timeline = { TIMELINE.ADDED_1_60_1 },
				maps = { MAP.DARKSHORE },
				requireSkill = BLACKSMITHING,
				races = ALLIANCE_ONLY,
				lvl = 4,
				groups = {
					recipe(1230171),	-- Blacksmithing: Sharpening Wheel
				},
			}),
			q(96634, {	-- Camping 101: Cooking [Teldrassil]
				sourceQuest = 96630,	-- The Great Outdoors [Teldrassil]
				qg = 265811,	-- Lyreena Duskblade <Adventurer>
				coord = { 57.6, 56.6, MAP.TELDRASSIL },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = ALLIANCE_ONLY,
				lvl = 4,
			}),
			q(97940, {	-- Camping 101: Enchanting [Teldrassil]
				sourceQuest = 96630,	-- The Great Outdoors [Teldrassil]
				qg = 265811,	-- Lyreena Duskblade <Adventurer>
				coord = { 57.6, 56.6, MAP.TELDRASSIL },
				timeline = { TIMELINE.ADDED_1_60_1 },
				requireSkill = ENCHANTING,
				races = ALLIANCE_ONLY,
				lvl = 4,
				groups = {
					recipe(1230643),	-- Enchanting: Enchanted Lute
				},
			}),
			q(97941, {	-- Camping 101: Engineering [Teldrassil]
				sourceQuest = 96630,	-- The Great Outdoors [Teldrassil]
				qg = 265811,	-- Lyreena Duskblade <Adventurer>
				coord = { 57.6, 56.6, MAP.TELDRASSIL },
				timeline = { TIMELINE.ADDED_1_60_1 },
				maps = { MAP.DARKSHORE },
				requireSkill = ENGINEERING,
				races = ALLIANCE_ONLY,
				lvl = 4,
				groups = {
					recipe(1230656),	-- Engineering: Reagent Bot
				},
			}),
			q(97942, {	-- Camping 101: First Aid [Teldrassil]
				sourceQuest = 96630,	-- The Great Outdoors [Teldrassil]
				qg = 265811,	-- Lyreena Duskblade <Adventurer>
				coord = { 57.6, 56.6, MAP.TELDRASSIL },
				timeline = { TIMELINE.ADDED_1_60_1 },
				requireSkill = FIRST_AID,
				races = ALLIANCE_ONLY,
				lvl = 4,
				groups = {
					recipe(1230117),	-- First Aid: First Aid Kit
				},
			}),
			q(97943, {	-- Camping 101: Fishing [Teldrassil]
				sourceQuest = 96630,	-- The Great Outdoors [Teldrassil]
				qg = 265811,	-- Lyreena Duskblade <Adventurer>
				coord = { 57.6, 56.6, MAP.TELDRASSIL },
				timeline = { TIMELINE.ADDED_1_60_1 },
				maps = { MAP.DARNASSUS },
				requireSkill = FISHING,
				races = ALLIANCE_ONLY,
				lvl = 4,
				groups = {
					recipe(1229745),	-- Fishing: Fish Bowl
				},
			}),
			q(97944, {	-- Camping 101: Herbalism [Teldrassil]
				sourceQuest = 96630,	-- The Great Outdoors [Teldrassil]
				qg = 265811,	-- Lyreena Duskblade <Adventurer>
				coord = { 57.6, 56.6, MAP.TELDRASSIL },
				timeline = { TIMELINE.ADDED_1_60_1 },
				requireSkill = HERBALISM,
				races = ALLIANCE_ONLY,
				lvl = 4,
				groups = {
					recipe(1229705),	-- Herbalism: Incense Candle
				},
			}),
			q(97946, {	-- Camping 101: Leatherworking [Teldrassil]
				sourceQuest = 96630,	-- The Great Outdoors [Teldrassil]
				qg = 265811,	-- Lyreena Duskblade <Adventurer>
				coord = { 57.6, 56.6, MAP.TELDRASSIL },
				timeline = { TIMELINE.ADDED_1_60_1 },
				requireSkill = LEATHERWORKING,
				races = ALLIANCE_ONLY,
				lvl = 4,
				groups = {
					recipe(1229432),	-- Leatherworking: Camp Tent
				},
			}),
			q(97948, {	-- Camping 101: Mining [Teldrassil]
				sourceQuest = 96630,	-- The Great Outdoors [Teldrassil]
				qg = 265811,	-- Lyreena Duskblade <Adventurer>
				coord = { 57.6, 56.6, MAP.TELDRASSIL },
				timeline = { TIMELINE.ADDED_1_60_1 },
				maps = { MAP.DARKSHORE },
				requireSkill = MINING,
				races = ALLIANCE_ONLY,
				lvl = 4,
				groups = {
					recipe(1230161),	-- Mining: Lodestone
				},
			}),
			q(97949, {	-- Camping 101: Skinning [Teldrassil]
				sourceQuest = 96630,	-- The Great Outdoors [Teldrassil]
				qg = 265811,	-- Lyreena Duskblade <Adventurer>
				coord = { 57.6, 56.6, MAP.TELDRASSIL },
				timeline = { TIMELINE.ADDED_1_60_1 },
				requireSkill = SKINNING,
				races = ALLIANCE_ONLY,
				lvl = 4,
				groups = {
					recipe(1229517),	-- Skinning: Camp Chair
				},
			}),
			q(97950, {	-- Camping 101: Tailoring [Teldrassil]
				sourceQuest = 96630,	-- The Great Outdoors [Teldrassil]
				qg = 265811,	-- Lyreena Duskblade <Adventurer>
				coord = { 57.6, 56.6, MAP.TELDRASSIL },
				timeline = { TIMELINE.ADDED_1_60_1 },
				maps = { MAP.DARNASSUS },
				requireSkill = TAILORING,
				races = ALLIANCE_ONLY,
				lvl = 4,
				groups = {
					recipe(1263425),	-- Tailoring: Camp Chair
				},
			}),
			q(98046, {	-- Crown of the Earth (1/2) [Forever]
				sourceQuest = 935,	-- Crown of the Earth (6/6) / The Waters of Teldrassil [CATA+]
				qg = 3516,	-- Arch Druid Fandral Staghelm
				qi = 279291,	-- Drained Vessel
				coord = { 34.8, 8.8, MAP.DARNASSUS },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = ALLIANCE_ONLY,
			}),
			q(98065, {	-- Crown of the Earth (2/2) [Forever]
				sourceQuest = 98046,	-- Crown of the Earth (1/2) [Forever]
				qg = 4092,	-- Lariia
				qi = 279331,	-- Moonwell Remnants
				coord = { 40.2, 88.2, MAP.DARNASSUS },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = ALLIANCE_ONLY,
			}),
			q(929, {	-- Crown of the Earth (3/6) / Teldrassil: The Refusal of the Aspects
				sourceQuest = 928,	-- Crown of the Earth (2/6)
				qg = 3515,	-- Corithras Moonrage
				coord = { 56.2, 61.7, MAP.TELDRASSIL },
				races = ALLIANCE_ONLY,
				groups = {
					objective(1, {	-- 0/1 Filled Jade Phial
						providers = {
							{ "i", 5639 },	-- Filled Jade Phial
							{ "i", 5619 },	-- Jade Phial
						},
						coord = { 63.0, 58.0, MAP.TELDRASSIL },
					}),
				},
			}),
			q(933, {	-- Crown of the Earth (4/6) / Teldrassil: The Coming Dawn [CATA+]
				sourceQuest = 929,	-- Crown of the Earth (3/6) / Teldrassil: The Refusal of the Aspects
				qg = 3515,	-- Corithras Moonrage
				coord = { 56.2, 61.7, MAP.TELDRASSIL },
				races = ALLIANCE_ONLY,
				groups = {
					objective(1, {	-- 0/1 Filled Tourmaline Phial
						providers = {
							{ "i", 5645 },	-- Filled Tourmaline Phial
							{ "i", 5621 },	-- Tourmaline Phial
						},
						coord = { 42.0, 67.0, MAP.TELDRASSIL },
					}),
				},
			}),
			q(7383, {	-- Crown of the Earth (5/6) / Teldrassil: The Burden of the Kaldorei [CATA+]
				sourceQuest = 933,	-- Crown of the Earth (4/6) / Teldrassil: The Coming Dawn [CATA+]
				qg = 3515,	-- Corithras Moonrage
				coord = { 56.2, 61.7, MAP.TELDRASSIL },
				races = ALLIANCE_ONLY,
				groups = {
					objective(1, {	-- 0/1 Filled Amethyst Phial
						providers = {
							{ "i", 18151 },	-- Filled Amethyst Phial
							{ "i", 18152 },	-- Amethyst Phial
						},
						coord = { 38.0, 34.0, MAP.TELDRASSIL },
					}),
				},
			}),
			q(935, {	-- Crown of the Earth (6/6) / The Waters of Teldrassil [CATA+]
				sourceQuest = 7383,	-- Crown of the Earth (5/6) / Teldrassil: The Burden of the Kaldorei [CATA+]
				qg = 3515,	-- Corithras Moonrage
				qi = 5188,	-- Filled Vessel
				coord = { 56.2, 61.7, MAP.TELDRASSIL },
				races = ALLIANCE_ONLY,
				groups = {
					i(5596),	-- Ashwood Bow
					i(5595),	-- Thicket Hammer
				},
			}),
			q(98392, {	-- Darkness in the Glade
				sourceQuest = 937,	-- The Enchanted Glade
				qg = 3519,	-- Sentinel Arynia Cloudsbreak
				coord = { 38.2, 34.4, MAP.TELDRASSIL },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = ALLIANCE_ONLY,
				lvl = 6,
				groups = {
					objective(1, {	-- 0/1 Hatescreech's Amulet
						provider = { "i", 280831 },	-- Hatescreech's Amulet
						coord = { 35.0, 38.6, MAP.TELDRASSIL },
						cr = 272034,	-- Hatescreech
					}),
					objective(2, {	-- 0/1 Windmistress Gaedress' Amulet
						provider = { "i", 280832 },	-- Windmistress Gaedress' Amulet
						coord = { 33.2, 36.0, MAP.TELDRASSIL },
						cr = 272044,	-- Windmistress Gaedress
					}),
					objective(3, {	-- 0/1 Witchmother Arysa's Amulet
						provider = { "i", 280834 },	-- Witchmother Arysa's Amulet
						coord = { 34.2, 27.9, MAP.TELDRASSIL },
						cr = 272046,	-- Witchmother Arysa
					}),
				},
			}),
			q(997, {	-- Denalan's Earth
				qg = 2083,	-- Syral Bladeleaf
				qi = 5391,	-- Rare Earth
				coord = { 56.0, 57.8, MAP.TELDRASSIL },
				races = ALLIANCE_ONLY,
				lvl = 4,
			}),
			q(5636, {	-- Desperate Prayer
				altQuests = {
					5634,	-- Desperate Prayer [Stormwind City #1]
					5635,	-- Desperate Prayer [Elwynn Forest]
					5637,	-- Desperate Prayer [Dun Morogh]
					5638,	-- Desperate Prayer [Stormwind City #2]
					5639,	-- Desperate Prayer [Ironforge]
					5640,	-- Desperate Prayer [Darnassus]
				},
				qg = 3600,	-- Laurna Morninglight <Priest Trainer>
				coord = { 55.6, 56.8, MAP.TELDRASSIL },
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
			q(2561, {	-- Druid of the Claw
				sourceQuest = 2541,	-- The Sleeping Druid
				qg = 7317,	-- Oben Rageclaw
				coords = { 45.0, 61.4, MAP.TELDRASSIL },
				races = ALLIANCE_ONLY,
				lvl = 3,
				groups = {
					objective(1, {	-- Release Oben Rageclaw's spirit
						providers = {
							{ "n", 7318 },	-- Rageclaw
							{ "i", 8149 },	-- Voodoo Charm
						},
						coord = { 45.6, 59.6, MAP.TELDRASSIL },
					}),
					i(9598),	-- Sleeping Robes
					i(18957),	-- Brushwood Blade
					i(9602, {	-- Brushwood Blade
						timeline = { REMOVED_1_11_1 },
						collectible = false,	-- CRIEVE NOTE: This item doesn't have a sourceID, it is 100% invalid.
						-- If anything, it should match the sourceID of the other item by that name. (7540)
						-- However, since Classic deals with itemID based tracking, it would not track correctly anyways.
					}),
				},
			}),
			q(99073, {	-- Easing Suffering
				sourceQuest = 99050,	-- The Great Tree Provides
				qg = 6094,	-- Byancie
				qi = 286069,	-- Lashwater Salve
				coord = { 55.2, 56.8, MAP.TELDRASSIL },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = ALLIANCE_ONLY,
				lvl = 4,
			}),
			q(1684, {	-- Elanaria
				altQuests = {
					1638,	-- A Warrior's Training
					1679,	-- Muren Stormpike
					1678,	-- Vejrek
				},
				qgs = {
					3657,	-- Sentinel Elissa Starbreeze [Darkshore]
					3598,	-- Kyra Windblade <Warrior Trainer> [Teldrassil]
					2151,	-- Moon Priestess Amara [Teldrassil]
				},
				coords = {
					{ 39.0, 43.4, MAP.DARKSHORE },
					{ 56.2, 59.2, MAP.TELDRASSIL },
				},
				maps = { MAP.DARNASSUS },
				races = ALLIANCE_ONLY,
				classes = { WARRIOR },
				isBreadcrumb = true,
				lvl = 10,
			}),
			q(1581, {	-- Elixirs for the Bladeleafs
				description = "This quest becomes available at Alchemy skill level 20 when the character level requirement is met.\n\nTODO: Check that this is true in Forever.",
				qg = 2083,	-- Syral Bladeleaf
				coord = { 56.0, 57.8, MAP.TELDRASSIL },
				cost = {
					{ "i", 2454, 6 },	-- Elixir of Minor Strength
					{ "i", 5997, 2 },	-- Elixir of Minor Defense
				},
				learnedAt = 20,
				requireSkill = ALCHEMY,
				races = ALLIANCE_ONLY,
				lvl = 4,
				_drop = { "g" },	-- Earthroot and Mageroyal
			}),
			q(2259, {	-- Erion Shadewhisper
				sourceQuest = 2241,	-- The Apple Falls
				qg = 3599,	-- Jannok Breezesong
				coord = { 56.4, 60.1, MAP.TELDRASSIL },
				races = ALLIANCE_ONLY,
				classes = { ROGUE },
				isBreadcrumb = true,
				lvl = 16,
			}),
			q(99053, {	-- Escaping Ban'ethil
				qg = 275744,	-- Sentinel Lynessa Duskblossom
				coord = { 44.6, 58.9, MAP.TELDRASSIL },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = ALLIANCE_ONLY,
				lvl = 4,
				groups = {
					objective(1, {	-- Escort Lynessa Duskblossom out of Ban'ethil
						provider = { "n", 275744 },	-- Sentinel Lynessa Duskblossom
					}),
					i(286734),	-- Ban'ethil Quiver
					i(286735),	-- Sentinel's Slasher
				},
			}),
			q(3661, {	-- Favored of Elune?
				qg = 7916,	-- Erelas Ambersky
				coord = { 55.5, 92.1, MAP.TELDRASSIL },
				maps = { MAP.THE_HINTERLANDS },
				races = ALLIANCE_ONLY,
				lvl = 42,
				groups = {
					objective(1, {	-- 0/15 Wildkin Feather
						providers = {
							{ "i",  10819 },	-- Wildkin Feather
							{ "o", 153239 },	-- Wildkin Feather
						},
						description = "Scattered on the ground around the Hinterlands.",
					}),
				},
			}),
			q(2940, {	-- Feralas: A History
				sourceQuest = 2939,	-- In Search of Knowledge
				provider = { "o", 142958 },	-- Feralas: A History
				coord = { 55.2, 91.4, MAP.TELDRASSIL },
				races = ALLIANCE_ONLY,
				lvl = 42,
			}),
			q(2459, {	-- Ferocitas the Dream Eater
				sourceQuest = 2438,	-- The Emerald Dreamcatcher
				qg = 3567,	-- Tallonkai Swiftroot
				coord = { 55.4, 56.8, MAP.TELDRASSIL },
				races = ALLIANCE_ONLY,
				groups = {
					objective(1, {	-- 0/7 Gnarlpine Mystic slain
						provider = { "n", 7235 },	-- Gnarlpine Mystic
					}),
					objective(2, {	-- 0/1 Tallonkai's Jewel
						providers = {
							{ "i", 8050 },	-- Tallonkai's Jewel
							{ "n", 7234 },	-- Ferocitas the Dream Eater
							{ "i", 8049 },	-- Gnarlpine Necklace
						},
						coord = { 69.2, 53.4, MAP.TELDRASSIL },
					}),
				},
			}),
			q(6342, {	-- Flight to Auberdine / An Unexpected Gift [CATA+]
				sourceQuest = 6341,	-- The Bounty of Teldrassil / To Darnassus [CATA+]
				qg = 3838,	-- Vesprystus
				qi = 16262,	-- Nessa's Collection
				coord = { 58.4, 94.0, MAP.TELDRASSIL },
				races = { NIGHTELF },
				lvl = 10,
			}),
			q(5621, {	-- Garments of the Moon
				sourceQuest = 5622,	-- In Favor of Elune
				qg = 3600,	-- Laurna Morninglight <Priest Trainer>
				coord = { 55.6, 56.8, MAP.TELDRASSIL },
				races = { NIGHTELF },
				classes = { PRIEST },
				lvl = 5,
				groups = {
					objective(1, {	-- Heal and fortify Sentinel Shaya
						provider = { "n", 12429 },	-- Sentinel Shaya
						coord = { 57.4, 63.6, MAP.TELDRASSIL },
					}),
					i(16604),	-- Moon Robes of Elune
				},
			}),
			q(476, {	-- Gnarlpine Corruption
				sourceQuest = 475,	-- A Troubling Breeze
				qg = 2107,	-- Gaerolas Talvethren
				coord = { 66.2, 58.6, MAP.TELDRASSIL },
				races = ALLIANCE_ONLY,
				lvl = 4,
			}),
			q(938, {	-- Mist
				qg = 3568,	-- Mist
				coord = { 31.4, 31.6, MAP.TELDRASSIL },
				races = ALLIANCE_ONLY,
				lvl = 7,
				groups = {
					i(5590),	-- Cord Bracers
					i(5593),	-- Crag Buckler
					i(5618),	-- Scout's Cloak
				},
			}),
			q(99047, {	-- Not Dead Yet
				sourceQuest = 99046,	-- The Lost Runner
				qg = 275683,	-- Sentinel Eralya Leafshadow
				coord = { 37.6, 36.8, MAP.TELDRASSIL },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = ALLIANCE_ONLY,
				lvl = 4,
			}),
			q(2499, {	-- Oakenscowl
				sourceQuest = 2498,	-- Return to Denalan
				qg = 2080,	-- Denalan
				coord = { 60.8, 68.4, MAP.TELDRASSIL },
				races = ALLIANCE_ONLY,
				lvl = 4,
				groups = {
					objective(1, {	-- 0/1 Gargantuan Tumor
						provider = { "i", 8136 },	-- Gargantuan Tumor
						coord = { 53.6, 75.0, MAP.TELDRASSIL },
						cr = 2166,	-- Oakenscowl
					}),
					i(5458),	-- Dirtwood Belt
					i(5589),	-- Moss-covered Gauntlets
				},
			}),
			q(941, {	-- Planting the Heart
				sourceQuest = 927,	-- The Moss-twined Heart
				qg = 2080,	-- Denalan
				qi = 5217,	-- Tainted Heart
				coord = { 60.8, 68.4, MAP.TELDRASSIL },
				races = ALLIANCE_ONLY,
				lvl = 9,
				groups = {
					i(5218),	-- Cleansed Timberling Heart
				},
			}),
			q(4161, {	-- Recipe of the Kaldorei
				qg = 6286,	-- Zarrin
				coord = { 57.0, 61.2, MAP.TELDRASSIL },
				cost = { { "i", 5465, 7 } },	-- Small Spider Leg
				requireSkill = COOKING,
				races = ALLIANCE_ONLY,
				groups = {
					i(5482),	-- Recipe: Kaldorei Spider Kabob (RECIPE!)
				},
			}),
			q(922, {	-- Rellian Greenspyre
				sourceQuest = 918,	-- Timberling Seeds
				qg = 2080,	-- Denalan
				qi = 5168,	-- Timberling Seed
				coord = { 60.8, 68.4, MAP.TELDRASSIL },
				races = ALLIANCE_ONLY,
				lvl = 4,
			}),
			q(2498, {	-- Return to Denalan
				sourceQuest = 923,	-- Tumors / Mossy Tumors [CATA+]
				qg = 3517,	-- Rellian Greenspyre
				coord = { 38.4, 21.6, MAP.DARNASSUS },
				races = ALLIANCE_ONLY,
				lvl = 4,
			}),
			q(2943, {	-- Return to Troyas
				sourceQuest = 2944,	-- The Super Snapper FX
				qg = 7907,	-- Daryn Lightwind
				qi = 9331,	-- Feralas: A History
				coord = { 55.4, 92.2, MAP.TELDRASSIL },
				maps = { MAP.FERALAS },
				races = ALLIANCE_ONLY,
				lvl = 42,
			}),
			q(489, {	-- Seek Redemption!
				sourceQuest = 488,	-- Zenn's Bidding
				qg = 2083,	-- Syral Bladeleaf
				coords = { 56.0, 59.4, MAP.TELDRASSIL },
				races = ALLIANCE_ONLY,
				lvl = 4,
				groups = {
					objective(1, {	-- 0/3 Fel Cone
						providers = {
							{ "i", 3418 },	-- Fel Cone
							{ "o", 1673 },	-- Fel Cone
						},
					}),
				},
			}),
			q(87288, {	-- Soft Saber Pelts
				qg = 3608,	-- Aldia
				coord = { 55.4, 57.2, MAP.TELDRASSIL },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = ALLIANCE_ONLY,
				lvl = 4,
				groups = {
					objective(1, {	-- 0/6 Soft Nightsaber Pelt
						provider = { "i", 280087 },	-- Soft Nightsaber Pelt
						cr = 2042,	-- Nightsaber
					}),
					i(280088),	-- Soft Saber Sack
				},
			}),
			q(6063, {	-- Taming the Beast (1/3)
				sourceQuests = {
					6071,	-- The Hunter's Path [Darnassus]
					6072,	-- The Hunter's Path [Teldrassil]
					6073,	-- The Hunter's Path [Darnassus]
					6721,	-- The Hunter's Path [Ironforge]
					6722,	-- The Hunter's Path [Dun Morogh]
				},
				qg = 3601,	-- Dazalar <Hunter Trainer>
				coord = { 56.6, 59.6, MAP.TELDRASSIL },
				races = { NIGHTELF },
				classes = { HUNTER },
				lvl = 10,
				groups = {
					objective(1, {	-- Tame a Webwood Lurker
						providers = {
							{ "n", 1998 },	-- Webwood Lurker
							{ "i", 15921 },	-- Taming Rod
						},
					}),
				},
			}),
			q(6101, {	-- Taming the Beast (2/3)
				sourceQuest = 6063,	-- Taming the Beast (1/3)
				qg = 3601,	-- Dazalar <Hunter Trainer>
				coord = { 56.6, 59.6, MAP.TELDRASSIL },
				races = { NIGHTELF },
				classes = { HUNTER },
				lvl = 10,
				groups = {
					objective(1, {	-- Tame a Nightsaber Stalker
						providers = {
							{ "n", 2043 },	-- Nightsaber Stalker
							{ "i", 15922 },	-- Taming Rod
						},
					}),
				},
			}),
			q(6102, {	-- Taming the Beast (3/3)
				sourceQuest = 6101,	-- Taming the Beast (2/3)
				qg = 3601,	-- Dazalar <Hunter Trainer>
				coord = { 56.6, 59.6, MAP.TELDRASSIL },
				races = { NIGHTELF },
				classes = { HUNTER },
				lvl = 10,
				groups = {
					objective(1, {	-- Tame a Strigid Screecher
						providers = {
							{ "n", 1996 },	-- Strigid Screecher
							{ "i", 15923 },	-- Taming Rod
						},
					}),
					recipe(883),	-- Call Pet
					recipe(2641),	-- Dismiss Pet
					recipe(1515),	-- Tame Beast
				},
			}),
			q(940, {	-- Teldrassil
				sourceQuest = 98398,	-- The Oracle Tree
				providers = {
					{ "n", 3519 },	-- Sentinel Arynia Cloudsbreak
					{ "o", 673378 },	-- Oracle Tree Bark
				},
				qi = 5219,	-- Inscribed Bark
				coords = {
					{ 38.2, 34.4, MAP.TELDRASSIL },
					{ 37.0, 34.1, MAP.TELDRASSIL },
				},
				races = ALLIANCE_ONLY,
				lvl = 6,
				groups = {
					i(281250, {	-- Forest Oracle's Cloak
						timeline = { TIMELINE.ADDED_1_60_1 },
					}),
				},
			}),
			q(2241, {	-- The Apple Falls
				qg = 3599,	-- Jannok Breezesong
				qi = 7735,	-- Jannok's Rose
				coord = { 56.4, 60.1, MAP.TELDRASSIL },
				races = ALLIANCE_ONLY,
				classes = { ROGUE },
				lvl = 10,
			}),
			q(2941, {	-- The Borrower
				sourceQuest = 2940,	-- Feralas: A History
				qg = 7907,	-- Daryn Lightwind
				qi = 9329,	-- A Short Note
				coord = { 55.4, 92.2, MAP.TELDRASSIL },
				races = ALLIANCE_ONLY,
				lvl = 42,
			}),
			q(6341, {	-- The Bounty of Teldrassil / To Darnassus [CATA+]
				sourceQuest = 6344,	-- Nessa Shadowsong
				qg = 10118,	-- Nessa Shadowsong
				qi = 16262,	-- Nessa's Collection
				coord = { 56.2, 92.4, MAP.TELDRASSIL },
				races = { NIGHTELF },
				lvl = 10,
			}),
			q(2438, {	-- The Emerald Dreamcatcher
				qg = 3567,	-- Tallonkai Swiftroot
				coord = { 55.4, 56.8, MAP.TELDRASSIL },
				races = ALLIANCE_ONLY,
				groups = {
					objective(1, {	-- 0/1 Emerald Dreamcatcher
						providers = {
							{ "i", 8048 },	-- Emerald Dreamcatcher
							{ "o", 126158 },	-- Tallonkai's Dresser
						},
						coord = { 68.0, 59.6, MAP.TELDRASSIL },
					}),
				},
			}),
			q(937, {	-- The Enchanted Glade
				qg = 3519,	-- Sentinel Arynia Cloudsbreak
				coord = { 38.2, 34.4, MAP.TELDRASSIL },
				races = ALLIANCE_ONLY,
				lvl = 6,
				groups = {
					objective(1, {	-- 0/6 Bloodfeather Belt
						provider = { "i", 5204 },	-- Bloodfeather Belt
						crs = {
							2019,	-- Bloodfeather Fury
							2015,	-- Bloodfeather Harpy
							2021,	-- Bloodfeather Matriarch
							2017,	-- Bloodfeather Rogue
							2018,	-- Bloodfeather Sorceress
							2020,	-- Bloodfeather Wind Witch
							14431,	-- Fury Shelda
						},
					}),
					i(5591),	-- Rain-spotted Cape
					i(5592),	-- Shackled Girdle
				},
			}),
			q(930, {	-- The Glowing Fruit
				providers = {
					{ "o", 6751 },	-- Strange Fruited Plant
					{ "i", 5189 },	-- Glowing Fruit
				},
				coord = { 42.6, 76.1, MAP.TELDRASSIL },
				races = ALLIANCE_ONLY,
				lvl = 4,
			}),
			q(96606, {	-- The Great Outdoors [Teldrassil]
				sourceQuest = 96630,	-- The Adventurer [Teldrassil]
				qg = 265811,	-- Lyreena Duskblade <Adventurer>
				coord = { 57.6, 56.6, MAP.TELDRASSIL },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = ALLIANCE_ONLY,
				lvl = 4,
			}),
			q(99050, {	-- The Great Tree Provides
				sourceQuest = 99047,	-- Not Dead Yet
				qg = 6094,	-- Byancie
				coord = { 55.2, 56.8, MAP.TELDRASSIL },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = ALLIANCE_ONLY,
				lvl = 4,
				groups = {
					objective(1, {	-- 0/6 Dewy Lasher Frond
						provider = { "i", 286017 },	-- Dewy Lasher Frond
						crs = {
							275703,	-- Lasher Sproutling
							275708,	-- Blooming Lasher
							276099,	-- Wrathvine
						},
					}),
					objective(2, {	-- 0/1 Empty Vial
						provider = { "i", 3371 },	-- Empty Vial
					}),
					objective(3, {	-- 0/1 Refreshing Spring Water
						provider = { "i", 159 },	-- Refreshing Spring Water
					}),
				},
			}),
			q(6071, {	-- The Hunter's Path [Darnassus]
				qg = 4146,	-- Jocaste <Hunter Trainer>
				coord = { 40.2, 8.8, MAP.DARNASSUS },
				races = { NIGHTELF },
				classes = { HUNTER },
				isBreadcrumb = true,
				lvl = 10,
			}),
			q(6072, {	-- The Hunter's Path [Teldrassil]
				qg = 3596,	-- Ayanna Everstride <Hunter Trainer>
				coord = { 58.66, 40.45, MAP.TELDRASSIL },
				races = { NIGHTELF },
				classes = { HUNTER },
				isBreadcrumb = true,
				lvl = 10,
			}),
			q(6073, {	-- The Hunter's Path [Darnassus]
				qg = 4205,	-- Dorion <Hunter Trainer>
				coord = { 42.2, 7.6, MAP.DARNASSUS },
				races = { NIGHTELF },
				classes = { HUNTER },
				isBreadcrumb = true,
				lvl = 10,
			}),
			q(6721, {	-- The Hunter's Path [Ironforge]
				qg = 5117,	-- Regnus Thundergranite <Hunter Trainer>
				coord = { 69.8, 83.6, MAP.IRONFORGE },
				races = { NIGHTELF },
				classes = { HUNTER },
				isBreadcrumb = true,
				lvl = 10,
			}),
			q(6722, {	-- The Hunter's Path [Dun Morogh]
				qg = 1231,	-- Grif Wildheart <Hunter Trainer>
				coord = { 45.8, 53.0, MAP.DUN_MOROGH },
				races = { NIGHTELF },
				classes = { HUNTER },
				isBreadcrumb = true,
				lvl = 10,
			}),
			q(99046, {	-- The Lost Runner
				qg = 2081,	-- Sentinel Kyra Starsong
				coord = { 56.0, 59.4, MAP.TELDRASSIL },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = ALLIANCE_ONLY,
				isBreadcrumb = true,
				lvl = 4,
			}),
			q(927, {	-- The Moss-twined Heart
				provider = { "i", 5179 },	-- Moss-twined Heart
				coord = { 52.0, 63.6, MAP.DARNASSUS },
				races = ALLIANCE_ONLY,
				cr = 3535,	-- Blackmoss the Fetid
				lvl = 5,
			}),
			q(98398, {	-- The Oracle Tree
				sourceQuest = 98392,	-- Darkness in the Glade
				qg = 3519,	-- Sentinel Arynia Cloudsbreak
				coord = { 38.2, 34.4, MAP.TELDRASSIL },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = ALLIANCE_ONLY,
				lvl = 6,
				groups = {
					objective(1, {	-- Find the Oracle Tree Bark
						provider = { "o", 673378 },	-- Oracle Tree Bark
						coord = { 37.0, 34.1, MAP.TELDRASSIL },
					}),
				},
			}),
			q(483, {	-- The Relics of Wakening
				sourceQuest = 476,	-- Gnarlpine Corruption
				qg = 2078,	-- Athridas Bearmantle
				coord = { 56.0, 57.4, MAP.TELDRASSIL },
				races = ALLIANCE_ONLY,
				lvl = 4,
				groups = {
					objective(1, {	-- 0/1 Raven Claw Talisman
						providers = {
							{ "i", 3405 },	-- Raven Claw Talisman
							{ "o", 2740 },	-- Chest of the Raven Claw
						},
						coord = { 45.7, 57.5, MAP.TELDRASSIL },
					}),
					objective(2, {	-- 0/1 Black Feather Quill
						providers = {
							{ "i", 3406 },	-- Black Feather Quill
							{ "o", 2739 },	-- Chest of the Black Feather
						},
						coord = { 43.8, 61.2, MAP.TELDRASSIL },
					}),
					objective(3, {	-- 0/1 Sapphire of Sky
						providers = {
							{ "i", 3407 },	-- Sapphire of Sky
							{ "o", 2741 },	-- Chest of the Sky
						},
						coord = { 44.6, 62.5, MAP.TELDRASSIL },
					}),
					objective(4, {	-- 0/1 Rune of Nesting
						providers = {
							{ "i", 3408 },	-- Rune of Nesting
							{ "o", 2742 },	-- Chest of Nesting
						},
						coord = { 44.5, 60.6, MAP.TELDRASSIL },
					}),
					i(9599),	-- Barkmail Leggings
					i(9603),	-- Gritroot Staff
				},
			}),
			q(487, {	-- The Road to Darnassus
				qg = 2151,	-- Moon Priestess Amara
				coord = { 55.6, 58.4, MAP.TELDRASSIL },
				races = ALLIANCE_ONLY,
				lvl = 5,
				groups = {
					objective(1, {	-- 0/6 Gnarlpine Ambusher slain
						provider = { "n", 2152 },	-- Gnarlpine Ambusher
					}),
				},
			}),
			q(931, {	-- The Shimmering Frond
				providers = {
					{ "o", 6752 },	-- Strange Fronded Plant
					{ "i", 5190 },	-- Shimmering Frond
				},
				coord = { 34.7, 28.8, MAP.TELDRASSIL },
				races = ALLIANCE_ONLY,
				lvl = 4,
			}),
			q(98391, {	-- The Sisterhood of Elune
				qg = 3600,	-- Laurna Morninglight <Priest Trainer>
				coord = { 55.6, 56.8, MAP.TELDRASSIL },
				timeline = { TIMELINE.ADDED_1_60_1 },
				maps = { MAP.DARNASSUS },
				races = ALLIANCE_ONLY,
				isBreadcrumb = true,
				lvl = 5,
			}),
			q(2541, {	-- The Sleeping Druid
				qg = 7317,	-- Oben Rageclaw
				coord = { 45.0, 61.4, MAP.TELDRASSIL },
				races = ALLIANCE_ONLY,
				lvl = 3,
				groups = {
					objective(1, {	-- Shaman Voodoo Charm
						provider = { "i", 8363 },	-- Shaman Voodoo Charm
						cr = 2009,	-- Gnarlpine Shaman
					}),
				},
			}),
			q(2399, {	-- The Sprouted Fronds
				sourceQuest = 931,	-- The Shimmering Frond
				provider = { "o", 7510 },	-- Sprouted Frond
				coord = { 60.8, 68.5, MAP.TELDRASSIL },
				races = ALLIANCE_ONLY,
				lvl = 4,
			}),
			q(918, {	-- Timberling Seeds
				sourceQuest = 997,	-- Denalan's Earth
				qg = 2080,	-- Denalan
				coord = { 60.8, 68.4, MAP.TELDRASSIL },
				races = ALLIANCE_ONLY,
				lvl = 4,
				groups = {
					objective(1, {	-- 0/8 Timberling Seed
						provider = { "i", 5168 },	-- Timberling Seed
						crs = {
							2030,	-- Elder Timberling
							2166,	-- Oakenscowl
							2022,	-- Timberling
							2025,	-- Timberling Bark Ripper
							2027,	-- Timberling Trampler
						},
					}),
				},
			}),
			q(919, {	-- Timberling Sprouts
				sourceQuest = 997,	-- Denalan's Earth
				qg = 2080,	-- Denalan
				coord = { 60.8, 68.4, MAP.TELDRASSIL },
				races = ALLIANCE_ONLY,
				lvl = 4,
				groups = {
					objective(1, {	-- 0/12 Timberling Seed
						providers = {
							{ "i", 5169 },	-- Timberling Sprout
							{ "o", 4608 },	-- Timberling Sprout
						},
					}),
					i(5606),	-- Gardening Gloves
					i(6061),	-- Graystone Bracers
				},
			}),
			q(6103, {	-- Training the Beast
				sourceQuest = 6102,	-- Taming the Beast (3/3)
				qg = 3601,	-- Dazalar <Hunter Trainer>
				coord = { 56.6, 59.6, MAP.TELDRASSIL },
				races = { NIGHTELF },
				classes = { HUNTER },
				lvl = 10,
				groups = {
					recipe(6991),	-- Feed Pet
					recipe(982),	-- Revive Pet
				},
			}),
			q(923, {	-- Tumors / Mossy Tumors [CATA+]
				sourceQuest = 922,	-- Rellian Greenspyre
				qg = 3517,	-- Rellian Greenspyre
				coord = { 38.2, 21.6, MAP.DARNASSUS },
				races = ALLIANCE_ONLY,
				lvl = 4,
				groups = {
					objective(1, {	-- 0/5 Mossy Tumor
						provider = { "i", 5170 },	-- Mossy Tumor
						crs = {
							2030,	-- Elder Timberling
							2029,	-- Timberling Mire Beast
							2027,	-- Timberling Trampler
						},
					}),
					i(5605),	-- Pruning Knife
				},
			}),
			q(932, {	-- Twisted Hatred
				qg = 3567,	-- Tallonkai Swiftroot
				coord = { 55.4, 56.8, MAP.TELDRASSIL },
				races = ALLIANCE_ONLY,
				lvl = 4,
				groups = {
					objective(1, {
						provider = { "i", 5221 },	-- Melenas' Head
						coord = { 51.6, 51.6, MAP.TELDRASSIL },
						cr = 2038,	-- Lord Melenas
					}),
					i(5419),	-- Feral Bracers
					i(2571),	-- Viny Wrappings
				},
			}),
			q(98403, {	-- Twisted Hatred (2/2)
				sourceQuest = 932,	-- Twisted Hatred
				qg = 3567,	-- Tallonkai Swiftroot
				coord = { 55.4, 56.8, MAP.TELDRASSIL },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = ALLIANCE_ONLY,
				lvl = 4,
				groups = {
					objective(1, {	-- 0/8 Befouled Webwood slain
						provider = { "n", 272096 },	-- Befouled Webwood
						coord = { 48.4, 50.2, MAP.TELDRASSIL },
					}),
					objective(2, {	-- 0/1 Mature Fel Moss
						provider = { "i", 281023 },	-- Mature Fel Moss
						coord = { 51.3, 45.4, MAP.TELDRASSIL },
						cr = 272116,	-- Xethorr the Wicked
					}),
					i(282284),	-- Webwood Slicer
				},
			}),
			q(486, {	-- Ursal the Mauler
				sourceQuest = 483,	-- The Relics of Wakening
				qg = 2078,	-- Athridas Bearmantle
				coord = { 56.0, 57.4, MAP.TELDRASSIL },
				races = ALLIANCE_ONLY,
				lvl = 4,
				groups = {
					objective(1, {	-- Ursal the Mauler slain
						provider = { "n", 2039 },	-- Ursal the Mauler
						coord = { 39.8, 80.6, MAP.TELDRASSIL },
					}),
					i(5459),	-- Defender Axe
					i(5587),	-- Thornroot Club
				},
			}),
			q(4902, {	-- Wildkin of Elune
				sourceQuest = 4901,	-- Guardians of the Altar
				qg = 7916,	-- Erelas Ambersky
				coord = { 55.5, 92.1, MAP.TELDRASSIL },
				maps = { MAP.DARNASSUS },
				races = ALLIANCE_ONLY,
				lvl = 52,
				groups = {
					i(16622),	-- Thornflinger
					i(16623),	-- Opaline Medallion
				},
			}),
			q(488, {	-- Zenn's Bidding
				qg = 2150,	-- Zenn Foulhoof
				coord = { 60.4, 56.2, MAP.TELDRASSIL },
				races = ALLIANCE_ONLY,
				lvl = 4,
				groups = {
					objective(1, {	-- 0/3 Nightsaber Fang
						provider = { "i", 3409 },	-- Nightsaber Fang
						crs = {
							14430,	-- Duskstalker
							2042,	-- Nightsaber
							2043,	-- Nightsaber Stalker
						},
					}),
					objective(2, {	-- 0/3 Strigid Owl Feather
						provider = { "i", 3411 },	-- Strigid Owl Feather
						crs = {
							1995,	-- Strigid Owl
							1996,	-- Strigid Screecher
						},
					}),
					objective(3, {	-- 0/3 Webwood Spider Silk
						provider = { "i", 3412 },	-- Webwood Spider Silk
						crs = {
							1998,	-- Webwood Lurker
							2000,	-- Webwood Silkspinner
							1999,	-- Webwood Venomfang
						},
					}),
					i(5457),	-- Severed Voodoo Claw
				},
			}),
		}),
		n(RARES, {
			n(3535, {	-- Blackmoss the Fetid
				coords = {
					{ 42.8, 25.8, MAP.TELDRASSIL },
					{ 44.6, 27.6, MAP.TELDRASSIL },
					{ 43.0, 31.0, MAP.TELDRASSIL },
					{ 43.8, 33.2, MAP.TELDRASSIL },
					{ 46.0, 30.4, MAP.TELDRASSIL },
					{ 40.8, 39.6, MAP.TELDRASSIL },
					{ 43.6, 36.6, MAP.TELDRASSIL },
					{ 42.8, 38.6, MAP.TELDRASSIL },
					{ 44.0, 39.6, MAP.TELDRASSIL },
				},
				groups = {
					i(5179, {	-- Moss-twined Heart
						description = "This is one of the only drops from a rare spawn in the game that start a quest. Good luck!",
						races = ALLIANCE_ONLY,
					}),
					i(284167, {	-- Blackmoss Robes
						timeline = { TIMELINE.ADDED_1_60_1 },
					}),
				},
			}),
			n(14430, {	-- Duskstalker
				coords = {
					{ 51.2, 77.8, MAP.TELDRASSIL },
					{ 53.4, 77.2, MAP.TELDRASSIL },
					{ 54.6, 75.8, MAP.TELDRASSIL },
					{ 54.8, 77.4, MAP.TELDRASSIL },
					{ 58.0, 75.8, MAP.TELDRASSIL },
					{ 58.8, 76.6, MAP.TELDRASSIL },
					{ 60.6, 76.2, MAP.TELDRASSIL },
					{ 61.0, 74.4, MAP.TELDRASSIL },
				},
				groups = {
					i(284165, {	-- Duskstalker's Hide
						timeline = { TIMELINE.ADDED_1_60_1 },
					}),
				},
			}),
			n(14431, {	-- Fury Shelda
				coords = {
					{ 34.8, 34.4, MAP.TELDRASSIL },
					{ 38.2, 34.8, MAP.TELDRASSIL },
					{ 36.0, 37.8, MAP.TELDRASSIL },
					{ 38.0, 39.0, MAP.TELDRASSIL },
					{ 36.4, 42.4, MAP.TELDRASSIL },
					{ 39.0, 41.4, MAP.TELDRASSIL },
					{ 38.0, 44.0, MAP.TELDRASSIL },
				},
				groups = {
					i(18612),	-- Bloody Chain Boots
				},
			}),
			n(14429, {	-- Grimmaw
				coords = {
					{ 41.6, 78.6, MAP.TELDRASSIL },
					{ 40.2, 80.6, MAP.TELDRASSIL },
				},
				groups = {
					i(284166, {	-- Gnarlpine War Staff
						timeline = { TIMELINE.ADDED_1_60_1 },
					}),
				},
			}),
			n(14432, {	-- Threggil
				coords = {
					{ 51.2, 50.8, MAP.TELDRASSIL },
					{ 52.0, 50.6, MAP.TELDRASSIL },
					{ 52.6, 52.4, MAP.TELDRASSIL },
				},
				groups = {
					i(18610),	-- Keen Machete
				},
			}),
			n(14428, {	-- Uruson
				coords = {
					{ 63.8, 57.2, MAP.TELDRASSIL },
					{ 65.4, 57.8, MAP.TELDRASSIL },
					{ 67.6, 56.4, MAP.TELDRASSIL },
					{ 66.2, 60.6, MAP.TELDRASSIL },
					{ 67.8, 61.0, MAP.TELDRASSIL },
					{ 69.6, 62.0, MAP.TELDRASSIL },
				},
				groups = {
					i(18611),	-- Gnarlpine Leggings
				},
			}),
		}),
		n(VENDORS, {
			n(10118, {	-- Nessa Shadowsong <Fishing Supplies>
				coord = { 56.2, 92.4, MAP.TELDRASSIL },
				races = ALLIANCE_ONLY,
				groups = {
					i(6368),	-- Recipe: Rainbow Fin Albacore (RECIPE!)
					i(6326),	-- Recipe: Slitherskin Mackerel (RECIPE!)
				},
			}),
			n(4265, {	-- Nyoma <Cooking Supplies>
				coord = { 57.2, 61.2, MAP.TELDRASSIL },
				races = ALLIANCE_ONLY,
				groups = {
					i(6325),	-- Recipe: Brilliant Smallfish (RECIPE!)
					i(6328),	-- Recipe: Longjaw Mud Snapper (RECIPE!)
					i(21219),	-- Recipe: Sagefish Delight (RECIPE!)
					i(21099),	-- Recipe: Smoked Sagefish (RECIPE!)
				},
			}),
		}),
		n(ZONE_DROPS, {
			i(7095, {	-- Bog Boots
				coords = {
					{ 43.6, 29.8, MAP.TELDRASSIL },
					{ 43.4, 35.4, MAP.TELDRASSIL },
					{ 52.6, 52.4, MAP.TELDRASSIL },
				},
				crs = {
					2029,	-- Timberling Mire Beast
					2005,	-- Vicious Grell
				},
			}),
			i(5206, {	-- Bogling Root
				cr = 3569,	-- Bogling
			}),
			i(7094, {	-- Driftwood Branch
				coord = { 45.4, 24.6, MAP.TELDRASSIL },
				cr = 2030,	-- Elder Timberling
			}),
		}),
	},
});

root(ROOTS.HiddenQuestTriggers, {
	q(934, {	-- Crown of the Earth (5/6)
		description = "This quest gets marked as completed when you complete the quest ' Crown of the Earth (5/6)' (7383).",
		races = ALLIANCE_ONLY,
	}),
});
