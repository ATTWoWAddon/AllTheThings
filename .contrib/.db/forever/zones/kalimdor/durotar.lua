---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

maproot(MAP.KALIMDOR, MAP.DUROTAR, {
	["lore"] = "Once the home of the savage quilboar, the Horde arrived on Kalimdor's shore and, in the aftermath of the Third War, drove the quilboar from the land and established this region as its own. Warchief Thrall named the new nation after his father, Durotan, and rules ably. Horde settlements are scattered throughout the rocky land, which is only marginally more fertile than the Barrens.\n\nThe Horde's greatest city is Orgrimmar, a warrior city that symbolizes the greatness of the orcs and their allies. Much of Durotar remains wild, and the orcs continually fend off centaur and quilboar as they attempt to tame the land.",
	["icon"] = 236756,
	["groups"] = {
		m(VALLEY_OF_TRIALS, {
			["lore"] = "The Valley of Trials in southern Durotar is where all young orc adventurers begin their journey. Within the valley, they are safe from external threats while taking on challenges that enable them to get used to their new status as recruits of the Horde.",
			["icon"] = 236452,
			["zone-text-areas"] = {
				363,	-- Valley of Trials
				364,	-- The Den
				365,	-- Burning Blade Coven
			},
			["groups"] = {
				n(QUESTS, {
					q(794, {	-- Burning Blade Medallion
						["sourceQuests"] = {
							792,	-- Vile Familiars
							1499,	-- Vile Familiars (Part 2 - Warlocks only!)
						},
						["qg"] = 3145,	-- Zureetha Fargaze
						["coord"] = { 42.8, 69.0, MAP.DUROTAR },
						["races"] = HORDE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/1 Burning Blade Medallion
								["provider"] = { "i", 4859 },	-- Burning Blade Medallion
								["coord"] = { 42.8, 52.6, MAP.DUROTAR },
								["cr"] = 3183,	-- Yarrog Baneshadow
							}),
							i(4921),	-- Dust-covered Leggings
							i(4922),	-- Jagged Chain Vest
							i(6713),	-- Ripped Pants
						},
					}),
					q(1516, {	-- Call of Earth (1/3)
						["altQuests"] = { 1519 },	-- Call to Earth (1/3 Mulgore)
						["qg"] = 5887,	-- Canaga Earthcaller
						["coord"] = { 42.4, 69.0, MAP.DUROTAR },
						["races"] = HORDE_ONLY,
						["classes"] = { SHAMAN },
						["lvl"] = 4,
						["groups"] = {
							objective(1, {	-- 0/2 Felstalker Hoof
								["provider"] = { "i", 6640 },	-- Felstalker Hoof
								["cr"] = 3102,	-- Felstalker
							}),
						},
					}),
					q(1517, {	-- Call of Earth (2/3)
						["sourceQuest"] = 1516,	-- Call of Earth (1/3)
						["altQuests"] = { 1520 },	-- Call to Earth (2/3 Mulgore)
						["qg"] = 5887,	-- Canaga Earthcaller
						["qi"] = 6635,	-- Earth Sapta
						["coord"] = { 42.4, 69.0, MAP.DUROTAR },
						["races"] = HORDE_ONLY,
						["classes"] = { SHAMAN },
						["lvl"] = 4,
					}),
					q(1518, {	-- Call of Earth (3/3)
						["sourceQuest"] = 1517,	-- Call of Earth (2/3)
						["altQuests"] = { 1521 },	-- Call to Earth (3/3 Mulgore)
						["qg"] = 5891,	-- Minor Manifestation of Earth
						["qi"] = 6656,	-- Rough Quartz
						["coord"] = { 44.0, 76.0, MAP.DUROTAR },
						["races"] = HORDE_ONLY,
						["classes"] = { SHAMAN },
						["lvl"] = 4,
						["groups"] = {
							recipe(8071),	-- Stoneskin Totem
							i(5175, {	-- Earth Totem
								["description"] = "You must keep this in your bags forever.",
							}),
						},
					}),
					q(788, {	-- Cutting Teeth
						["sourceQuest"] = 4641,	-- Your Place In The World
						["qg"] = 3143,	-- Gornek
						["coord"] = { 42.0, 68.4, MAP.DUROTAR },
						["races"] = HORDE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/10 (8 in Wrath) Mottled Boar
								["provider"] = { "n", 3098 },	-- Mottled Boar
							}),
							i(4915),	-- Soft Wool Boots
							i(4914),	-- Battleworn Leather Gloves
						},
					}),
					q(1463, {	-- Earth Sapta
						["sourceQuest"] = 1516,	-- Call of Earth (1/3)
						["qg"] = 5887,	-- Canaga Earthcaller
						["coord"] = { 42.4, 69.0, MAP.DUROTAR },
						["races"] = HORDE_ONLY,
						["classes"] = { SHAMAN },
						["repeatable"] = true,
						["lvl"] = 4,
						["groups"] = {
							i(6635),	-- Earth Sapta
						},
					}),
					q(3088, {	-- Encrypted Parchment
						["sourceQuest"] = 788,	-- Cutting Teeth
						["qg"] = 3143,	-- Gornek
						["qi"] = 9560,	-- Encrypted Parchment
						["coord"] = { 42.0, 68.4, MAP.DUROTAR },
						["races"] = { ORC },
						["classes"] = { ROGUE },
					}),
					q(3083, {	-- Encrypted Tablet
						["sourceQuest"] = 788,	-- Cutting Teeth
						["qg"] = 3143,	-- Gornek
						["qi"] = 9554,	-- Encrypted Tablet
						["coord"] = { 42.0, 68.4, MAP.DUROTAR },
						["races"] = { TROLL },
						["classes"] = { ROGUE },
					}),
					q(3087, {	-- Etched Parchment
						["sourceQuest"] = 788,	-- Cutting Teeth
						["qg"] = 3143,	-- Gornek
						["qi"] = 9553,	-- Etched Parchment
						["coord"] = { 42.0, 68.4, MAP.DUROTAR },
						["races"] = { ORC },
						["classes"] = { HUNTER },
					}),
					q(3082, {	-- Etched Tablet
						["sourceQuest"] = 788,	-- Cutting Teeth
						["qg"] = 3143,	-- Gornek
						["qi"] = 9564,	-- Etched Tablet
						["coord"] = { 42.0, 68.4, MAP.DUROTAR },
						["races"] = { TROLL },
						["classes"] = { HUNTER },
					}),
					q(4402, {	-- Galgar's Cactus Apple Surprise
						["sourceQuest"] = 788,	-- Cutting Teeth
						["qg"] = 9796,	-- Galgar
						["coord"] = { 42.6, 67.2, MAP.DUROTAR },
						["races"] = HORDE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/10 Cactus Apple
								["providers"] = {
									{ "i",  11583 },	-- Cactus Apple
									{ "o", 171938 },	-- Cactus Apple
								},
							}),
							i(11584),	-- Cactus Apple Surprise
						},
					}),
					q(3086, {	-- Glyphic Tablet
						["sourceQuest"] = 788,	-- Cutting Teeth
						["qg"] = 3143,	-- Gornek
						["qi"] = 9575,	-- Glyphic Tablet
						["coord"] = { 42.0, 68.4, MAP.DUROTAR },
						["races"] = { TROLL },
						["classes"] = { MAGE },
					}),
					q(3085, {	-- Hallowed Tablet
						["sourceQuest"] = 788,	-- Cutting Teeth
						["qg"] = 3143,	-- Gornek
						["qi"] = 9561,	-- Hallowed Tablet
						["coord"] = { 42.0, 68.4, MAP.DUROTAR },
						["races"] = { TROLL },
						["classes"] = { PRIEST },
					}),
					q(5649, {	-- In Favor of Spirituality
						["qg"] = 3707,	-- Ken'jai
						["coord"] = { 42.4, 68.8, MAP.DUROTAR },
						["races"] = { TROLL },
						["classes"] = { PRIEST },
						["lvl"] = 5
					}),
					q(5441, {	-- Lazy Peons
						["qg"] = 11378,	-- Foreman Thazz'ril
						["coord"] = { 44.6, 68.6, MAP.DUROTAR },
						["races"] = HORDE_ONLY,
						["lvl"] = 3,
						["groups"] = {
							objective(1, {	-- 0/5 Peons Awoken
								["provider"] = { "i", 16114 },	-- Foreman's Blackjack
								["cr"] = 10556,	-- Lazy Peon
							}),
						},
					}),
					q(805, {	-- Report to Sen'jin Village
						["sourceQuest"] = 794,	-- Burning Blade Medallion
						["qg"] = 3145,	-- Zureetha Fargaze
						["coord"] = { 42.8, 69.0, MAP.DUROTAR },
						["races"] = HORDE_ONLY,
					}),
					q(3089, {	-- Rune-Inscribed Parchment
						["sourceQuest"] = 788,	-- Cutting Teeth
						["qg"] = 3143,	-- Gornek
						["qi"] = 9568,	-- Rune-Inscribed Parchment
						["coord"] = { 42.0, 68.4, MAP.DUROTAR },
						["races"] = { ORC },
						["classes"] = { SHAMAN },
					}),
					q(3084, {	-- Rune-Inscribed Tablet
						["sourceQuest"] = 788,	-- Cutting Teeth
						["qg"] = 3143,	-- Gornek
						["qi"] = 9562,	-- Rune-Inscribed Tablet
						["coord"] = { 42.0, 68.4, MAP.DUROTAR },
						["races"] = { TROLL },
						["classes"] = { SHAMAN },
					}),
					q(790, {	-- Sarkoth (1/2)
						["qg"] = 3287,	-- Hana'zua
						["coord"] = { 40.6, 62.6, MAP.DUROTAR },
						["races"] = HORDE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/1 Sarkoth's Mangled Claw
								["provider"] = { "i", 4905 },	-- Sarkoth's Mangled Claw
								["coord"] = { 40.6, 66.6, MAP.DUROTAR },
								["cr"] = 3281,	-- Sarkoth
							}),
						},
					}),
					q(804, {	-- Sarkoth (2/2)
						["sourceQuest"] = 790,	-- Sarkoth (1/2)
						["qg"] = 3287,	-- Hana'zua
						["coord"] = { 40.6, 62.6, MAP.DUROTAR },
						["races"] = HORDE_ONLY,
						["groups"] = {
							i(4916),	-- Soft Wool Vest
							i(4917),	-- Battleworn Chain Leggings
						},
					}),
					q(2383, {	-- Simple Parchment
						["sourceQuest"] = 788,	-- Cutting Teeth
						["qg"] = 3143,	-- Gornek
						["qi"] = 12635,	-- Simple Parchment
						["coord"] = { 42.0, 68.4, MAP.DUROTAR },
						["races"] = { ORC },
						["classes"] = { WARRIOR },
					}),
					q(3065, {	-- Simple Tablet
						["sourceQuest"] = 788,	-- Cutting Teeth
						["qg"] = 3143,	-- Gornek
						["qi"] = 6488,	-- Simple Tablet
						["coord"] = { 42.0, 68.4, MAP.DUROTAR },
						["races"] = { TROLL },
						["classes"] = { WARRIOR },
					}),
					q(789, {	-- Sting of the Scorpid
						["sourceQuest"] = 788,	-- Cutting Teeth
						["qg"] = 3143,	-- Gornek
						["coord"] = { 42.0, 68.4, MAP.DUROTAR },
						["races"] = HORDE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/10 Scorpid Worker Tail
								["provider"] = { "i", 4862 },	-- Scorpid Worker Tail
								["crs"] = {
									3281,	-- Sarkoth
									3124,	-- Scorpid Worker
								},
							}),
							i(4919),	-- Soft Wool Belt
							i(4920),	-- Battleworn Cape
						},
					}),
					q(3090, {	-- Tainted Parchment
						["sourceQuest"] = 788,	-- Cutting Teeth
						["qg"] = 3143,	-- Gornek
						["qi"] = 9579,	-- Tainted Parchment
						["coords"] = { 42.0, 68.4, MAP.DUROTAR },
						["races"] = { ORC, TROLL },
						["classes"] = { WARLOCK },
					}),
					q(6394, {	-- Thazz'ril's Pick
						["sourceQuest"] = 5441,	-- Lazy Peons
						["qg"] = 11378,	-- Foreman Thazz'ril
						["coord"] = { 44.6, 68.6, MAP.DUROTAR },
						["races"] = HORDE_ONLY,
						["lvl"] = 3,
						["groups"] = {
							objective(1, {	-- 0/1 Thazz'ril's Pick
								["providers"] = {
									{ "i",  16332 },	-- Thazz'ril's Pick
									{ "o", 178087 },	-- Thazz'ril's Pick
								},
								["coord"] = { 43.8, 53.8, MAP.DUROTAR },
							}),
						},
					}),
					q(96652, {	-- The Adventurer [Durotar]
						["provider"] = { "o", 654925 },
						["coord"] = { 42.82, 69.14, MAP.DUROTAR },
						--["sourceQuest"] = ,	-- 
						--["provider"] = { "o", 654925 },	--
						["qi"] = 275022,	-- Lost Journal (PQI!)
						--["coord"] = { , MAP.DUROTAR },
						["timeline"] = { TIMELINE.ADDED_1_60_1 },
						["races"] = HORDE_ONLY,
						["lvl"] = 4,
					}),
					q(792, {	-- Vile Familiars
						["qg"] = 3145,	-- Zureetha Fargaze
						["coord"] = { 42.85, 69.14, MAP.DUROTAR },
						["classes"] = exclude(WARLOCK, ALL_CLASSES),
						["races"] = HORDE_ONLY,
						["lvl"] = 2,
						["groups"] = {
							objective(1, {	-- 0/12 Vile Familiar
								["provider"] = { "n", 3101 },	-- Vile Familiar
							}),
							i(12449, {	-- Primitive Bow
								["timeline"] = { REMOVED_1_7_0 },	-- CRIEVE NOTE: This might be removed already, if so, get rid of it.
							}),
							i(4924),	-- Primitive Club
							i(4925),	-- Primitive Hand Blade
							i(4923),	-- Primitive Hatchet
							i(5778),	-- Primitive Walking Stick
						},
					}),
					q(1485, {	-- Vile Familiars (Part 1 - Warlocks only!)
						["qg"] = 5765,	-- Ruzan
						["coord"] = { 42.6, 69.0, MAP.DUROTAR },
						["classes"] = { WARLOCK },
						["races"] = HORDE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/8 Vile Familiar Head
								["provider"] = { "i", 6487 },	-- Vile Familiar Head
								["cr"] = 3101,	-- Vile Familiar
							}),
							recipe(688),	-- Summon Imp
						},
					}),
					q(1499, {	-- Vile Familiars (Part 2 - Warlocks only!)
						["sourceQuest"] = 1485,	-- Vile Familiars (Part 1 - Warlocks only!)
						["qg"] = 5765,	-- Ruzan
						["coord"] = { 42.6, 69.0, MAP.DUROTAR },
						["classes"] = { WARLOCK },
						["races"] = HORDE_ONLY,
						["groups"] = {
							i(4925),	-- Primitive Hand Blade
							i(5778),	-- Primitive Walking Stick
						},
					}),
					q(4641, {	-- Your Place In The World
						["altQuests"] = { 787 },	-- The New Horde
						["qg"] = 10176,	-- Kaltunk
						["coord"] = { 43.2, 68.4, MAP.DUROTAR },
						["races"] = HORDE_ONLY,
						["isBreadcrumb"] = true,
					}),
				}),
			},
		}),
		n(ACHIEVEMENTS, {
			ach(728),	-- Explore Durotar
		}),
		explorationHeader({
			-- #if AFTER CATA
			exploration(374),	-- Bladefist Bay
			visit_exploration(365,{coord={54.50,19.20,VALLEY_OF_TRIALS}}),	-- Burning Blade Coven
			visit_exploration(393,{coord={61.20,65.50,MAP.DUROTAR}}),	-- Darkspear Strand
			exploration(4865),	-- Darkspear Training Grounds
			visit_exploration(375,{coord={58.70,25.40,MAP.DUROTAR}}),	-- Deadeye Shore
			exploration(370),	-- Drygulch Ravine
			exploration(6453),	-- Echo Isles
			exploration(368),	-- Echo Isles
			visit_exploration(1297,{coord={50.40,19.00,MAP.DUROTAR}}),	-- Jaggedswine Farm
			exploration(366),	-- Northwatch Foothold
			exploration(1637),	-- Orgrimmar
			exploration(362),	-- Razor Hill
			visit_exploration(6747,{coord={52.50,45.50,MAP.DUROTAR}}),	-- Razor Hill Outskirts
			visit_exploration(6750,{coord={50.30,39.50,MAP.DUROTAR}}),	-- Razor Hill Watchtower
			exploration(816),	-- Razormane Grounds
			exploration(410),	-- Razorwind Canyon
			visit_exploration(1296,{coord={43.20,16.20,MAP.DUROTAR}}),	-- Rocktusk Farm
			visit_exploration(373,{coord={60.60,61.10,MAP.DUROTAR}}),	-- Scuttle Coast
			exploration(367),	-- Sen'jin Village
			visit_exploration(6748,{coord={59.20,72.00,MAP.DUROTAR}}),	-- Sen'jin Village Outskirts
			exploration(817),	-- Skull Rock
			visit_exploration(879,{coord={37.80,20.70,MAP.DUROTAR}}),	-- Southfury River
			exploration(4981),	-- Southfury Watershed
			visit_exploration(4982),	-- The Dranosh'ar Blockade
			exploration(369),	-- Thunder Ridge
			exploration(372),	-- Tiragarde Keep
			exploration(2979),	-- Tor'kren Farm
			exploration(363),	-- Valley of Trials
			exploration(4864),	-- Zalazane's Fall
			-- #else
			exploration(370),	-- Drygulch Ravine
			exploration(368),	-- Echo Isles
			exploration(366),	-- Kolkar Crag
			exploration(1637),	-- Orgrimmar
			exploration(362),	-- Razor Hill
			exploration(816),	-- Razormane Grounds
			exploration(410),	-- Razorwind Canyon
			exploration(367),	-- Sen'jin Village
			exploration(817),	-- Skull Rock
			exploration(369),	-- Thunder Ridge
			exploration(372),	-- Tiragarde Keep
			exploration(363),	-- Valley of Trials
			-- #endif
		}),
		n(QUESTS, {
			q(2161, {	-- A Peon's Burden
				["qg"] = 6786,	-- Ukor
				["qi"] = 7629,	-- Ukor's Burden
				["coord"] = { 52.0, 68.2, MAP.DUROTAR },
				["races"] = HORDE_ONLY,
			}),
			q(818, {	-- A Solvent Spirit
				["qg"] = 3304,	-- Master Vornal
				["coord"] = { 55.8, 74.4, MAP.DUROTAR },
				["races"] = HORDE_ONLY,
				["lvl"] = 5,
				["groups"] = {
					objective(1, {	-- 0/4 Intact Makrura Eye
						["provider"] = { "i", 4887 },	-- Intact Makrura Eye
						["crs"] = {
							3103,	-- Makrura Clacker
							3104,	-- Makrura Shellhide
							3105,	-- Makrura Snapclaw
							3141,	-- Makrura Elder
						},
					}),
					objective(2, {	-- 0/8 Crawler Mucus
						["provider"] = { "i", 4888 },	-- Crawler Mucus
						["crs"] = {
							3228,	-- Corrupted Surf Crawler
							3108,	-- Encrusted Surf Crawler
							3106,	-- Pygmy Surf Crawler
							3107,	-- Surf Crawler
						},
					}),
					i(4941),	-- Really Sticky Glue
				},
			}),
			q(809, {	-- Ak'Zeloth
				["sourceQuest"] = 829,	-- Neeru Fireblade
				["qg"] = 3216,	-- Neeru Fireblade
				["coord"] = { 49.6, 50.4, MAP.ORGRIMMAR },
				["races"] = HORDE_ONLY,
				["lvl"] = 4,
			}),
			q(815, {	-- Break a Few Eggs
				["qg"] = 3191,	-- Cook Torka
				["coord"] = { 51.11, 42.45, MAP.DUROTAR },
				["races"] = HORDE_ONLY,
				["lvl"] = 6,
				["groups"] = {
					objective(1, {	-- 0/3 Taillasher Egg
						["providers"] = {
							{ "i", 4890 },	-- Taillasher Egg
							{ "o", 3240 },	-- Taillasher Eggs
						},
					}),
				},
			}),
			q(1843, {	-- Brutal Gauntlets
				["sourceQuest"] = 1842,	-- Satyr Hooves
				["qg"] = 6408,	-- Ula'elek
				["coord"] = { 56.2, 74.4, MAP.DUROTAR },
				["races"] = HORDE_ONLY,
				["classes"] = { WARRIOR },
				["lvl"] = 20,
				["groups"] = {
					i(7129),	-- Brutal Gauntlets
				},
			}),
			q(832, {	-- Burning Shadows
				["provider"] = { "i", 4903 },	-- Eye of Burning Shadow
				["coord"] = { 51.78, 9.56, MAP.DUROTAR },
				["maps"] = { MAP.ORGRIMMAR },
				["races"] = HORDE_ONLY,
				["cr"] = 3204,	-- Gazz'uz
				["lvl"] = 4,
			}),
			q(97899, {	-- Camping 101: Alchemy [Durotar]
				sourceQuest = 96604,	-- The Great Outdoors [Durotar]
				qg = 265809,	-- Brakk <Adventurer>
				coord = { 52.0, 47.4, MAP.DUROTAR },
				timeline = { TIMELINE.ADDED_1_60_1 },
				maps = { MAP.ORGRIMMAR },
				requireSkill = ALCHEMY,
				races = HORDE_ONLY,
				lvl = 4,
				groups = {
					recipe(1230564),	-- Alchemy: Mana Well
				},
			}),
			q(97900, {	-- Camping 101: Blacksmithing [Durotar]
				sourceQuest = 96604,	-- The Great Outdoors [Durotar]
				qg = 265809,	-- Brakk <Adventurer>
				coord = { 52.0, 47.4, MAP.DUROTAR },
				timeline = { TIMELINE.ADDED_1_60_1 },
				requireSkill = BLACKSMITHING,
				races = HORDE_ONLY,
				lvl = 4,
				groups = {
					recipe(1230171),	-- Blacksmithing: Sharpening Wheel
				},
			}),
			q(96655, {	-- Camping 101: Cooking [Durotar]
				sourceQuest = 96604,	-- The Great Outdoors [Durotar]
				qg = 265809,	-- Brakk <Adventurer>
				coord = { 52.0, 47.4, MAP.DUROTAR },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = HORDE_ONLY,
				lvl = 4,
			}),
			q(97901, {	-- Camping 101: Enchanting [Durotar]
				sourceQuest = 96604,	-- The Great Outdoors [Durotar]
				qg = 265809,	-- Brakk <Adventurer>
				coord = { 52.0, 47.4, MAP.DUROTAR },
				timeline = { TIMELINE.ADDED_1_60_1 },
				maps = { MAP.ORGRIMMAR },
				requireSkill = ENCHANTING,
				races = HORDE_ONLY,
				lvl = 4,
				groups = {
					recipe(1230643),	-- Enchanting: Enchanted Lute
				},
			}),
			q(97902, {	-- Camping 101: Engineering [Durotar]
				sourceQuest = 96604,	-- The Great Outdoors [Durotar]
				qg = 265809,	-- Brakk <Adventurer>
				coord = { 52.0, 47.4, MAP.DUROTAR },
				timeline = { TIMELINE.ADDED_1_60_1 },
				requireSkill = ENGINEERING,
				races = HORDE_ONLY,
				lvl = 4,
				groups = {
					recipe(1230656),	-- Engineering: Reagent Bot
				},
			}),
			q(97903, {	-- Camping 101: First Aid [Durotar]
				sourceQuest = 96604,	-- The Great Outdoors [Durotar]
				qg = 265809,	-- Brakk <Adventurer>
				coord = { 52.0, 47.4, MAP.DUROTAR },
				timeline = { TIMELINE.ADDED_1_60_1 },
				requireSkill = FIRST_AID,
				races = HORDE_ONLY,
				lvl = 4,
				groups = {
					recipe(1230117),	-- First Aid: First Aid Kit
				},
			}),
			q(97904, {	-- Camping 101: Fishing [Durotar]
				sourceQuest = 96604,	-- The Great Outdoors [Durotar]
				qg = 265809,	-- Brakk <Adventurer>
				coord = { 52.0, 47.4, MAP.DUROTAR },
				timeline = { TIMELINE.ADDED_1_60_1 },
				requireSkill = FISHING,
				races = HORDE_ONLY,
				lvl = 4,
				groups = {
					recipe(1229745),	-- Fishing: Fish Bowl
				},
			}),
			q(97905, {	-- Camping 101: Herbalism [Durotar]
				sourceQuest = 96604,	-- The Great Outdoors [Durotar]
				qg = 265809,	-- Brakk <Adventurer>
				coord = { 52.0, 47.4, MAP.DUROTAR },
				timeline = { TIMELINE.ADDED_1_60_1 },
				maps = { MAP.ORGRIMMAR },
				requireSkill = HERBALISM,
				races = HORDE_ONLY,
				lvl = 4,
				groups = {
					recipe(1229705),	-- Herbalism: Incense Candle
				},
			}),
			q(97906, {	-- Camping 101: Leatherworking [Durotar]
				sourceQuest = 96604,	-- The Great Outdoors [Durotar]
				qg = 265809,	-- Brakk <Adventurer>
				coord = { 52.0, 47.4, MAP.DUROTAR },
				timeline = { TIMELINE.ADDED_1_60_1 },
				maps = { MAP.ORGRIMMAR },
				requireSkill = LEATHERWORKING,
				races = HORDE_ONLY,
				lvl = 4,
				groups = {
					recipe(1229432),	-- Leatherworking: Camp Tent
				},
			}),
			q(97907, {	-- Camping 101: Mining [Durotar]
				sourceQuest = 96604,	-- The Great Outdoors [Durotar]
				qg = 265809,	-- Brakk <Adventurer>
				coord = { 52.0, 47.4, MAP.DUROTAR },
				timeline = { TIMELINE.ADDED_1_60_1 },
				requireSkill = MINING,
				races = HORDE_ONLY,
				lvl = 4,
				groups = {
					recipe(1230161),	-- Mining: Lodestone
				},
			}),
			q(97908, {	-- Camping 101: Skinning [Durotar]
				sourceQuest = 96604,	-- The Great Outdoors [Durotar]
				qg = 265809,	-- Brakk <Adventurer>
				coord = { 52.0, 47.4, MAP.DUROTAR },
				timeline = { TIMELINE.ADDED_1_60_1 },
				maps = { MAP.ORGRIMMAR },
				requireSkill = SKINNING,
				races = HORDE_ONLY,
				lvl = 4,
				groups = {
					recipe(1229517),	-- Skinning: Camp Chair
				},
			}),
			q(96102, {	-- Camping 101: Tailoring [Durotar]
				sourceQuest = 96604,	-- The Great Outdoors [Durotar]
				qg = 265809,	-- Brakk <Adventurer>
				coord = { 52.0, 47.4, MAP.DUROTAR },
				timeline = { TIMELINE.ADDED_1_60_1 },
				maps = { MAP.ORGRIMMAR },
				requireSkill = TAILORING,
				races = HORDE_ONLY,
				lvl = 4,
				groups = {
					recipe(1263425),	-- Tailoring: Camp Chair
				},
			}),
			q(791, {	-- Carry Your Weight
				["qg"] = 3147,	-- Furl Scornbrow
				["coord"] = { 49.8, 40.4, MAP.DUROTAR },
				["races"] = HORDE_ONLY,
				["lvl"] = 4,
				["groups"] = {
					objective(1, {	-- 0/8 Canvas Scraps
						["provider"] = { "i", 4870 },	-- Canvas Scraps
						["crs"] = {
							3119,	-- Kolkar Drudge
							3120,	-- Kolkar Outrunner
							3129,	-- Kul Tiras Marine
							3128,	-- Kul Tiras Sailor
							3192,	-- Lieutenant Benedict
							5808,	-- Warlord Kolkanis
							5809,	-- Watch Commander Zalaphil
						},
					}),
					i(11845),	-- Handmade Leather Bag
				},
			}),
			q(840, {	-- Conscript of the Horde
				["qg"] = 3336,	-- Takrin Pathseeker
				["qi"] = 4992,	-- Recruitment Letter
				["coord"] = { 50.8, 43.5, MAP.DUROTAR },
				["races"] = HORDE_ONLY,
				["isBreadcrumb"] = true,
				["lvl"] = 10,
			}),
			q(842, {	-- Crossroads Conscription
				["sourceQuest"] = 840,	-- Conscript of the Horde
				["qg"] = 3337,	-- Kargal Battlescar
				["qi"] = 4995,	-- Signed Recruitment Letter
				["coord"] = { 62.26, 19.37, MAP.THE_BARRENS },
				["races"] = HORDE_ONLY,
				["lvl"] = 10,
			}),
			q(806, {	-- Dark Storms
				["sourceQuest"] = 823,	-- Report to Orgnil
				["qg"] = 3142,	-- Orgnil Soulscar
				["coord"] = { 52.2, 43.2, MAP.DUROTAR },
				["races"] = HORDE_ONLY,
				["lvl"] = 4,
				["groups"] = {
					objective(1, {	-- 0/1 Fizzle's Claw
						["provider"] = { "i", 4869 },	-- Fizzle's Claw
						["coord"] = { 42.6, 26.4, MAP.DUROTAR },
						["cr"] = 3203,	-- Fizzle Darkstorm
					}),
					i(4942),	-- Tiger Hide Boots
				},
			}),
			q(837, {	-- Encroachment
				["qg"] = 3139,	-- Gar'Thok
				["coord"] = { 52.0, 43.4, MAP.DUROTAR },
				["races"] = HORDE_ONLY,
				["lvl"] = 6,
				["groups"] = {
					objective(1, {	-- 0/4 Razormane Quilboar slain
						["provider"] = { "n", 3111 },	-- Razormane Quilboar
					}),
					objective(2, {	-- 0/4 Razormane Scout slain
						["provider"] = { "n", 3112 },	-- Razormane Scout
					}),
					objective(3, {	-- 0/4 Razormane Dustrunner slain
						["provider"] = { "n", 3113 },	-- Razormane Dustrunner
					}),
					objective(4, {	-- 0/4 Razormane Battleguard slain
						["provider"] = { "n", 3114 },	-- Razormane Battleguard
					}),
				},
			}),
			q(1464, {	-- Fire Sapta
				["sourceQuest"] = 1525,	-- Call of Fire (3/5)
				["qg"] = 5900,	-- Telf Joolam
				["coord"] = { 38.6, 58.8, MAP.DUROTAR },
				["races"] = HORDE_ONLY,
				["classes"] = { SHAMAN },
				["repeatable"] = true,
				["lvl"] = 10,
				["groups"] = {
					i(6636),	-- Fire Sapta
				},
			}),
			q(825, {	-- From The Wreckage....
				["sourceQuest"] = 784,	-- Vanquish the Betrayers
				["qg"] = 3139,	-- Gar'Thok
				["coord"] = { 52.0, 43.4, MAP.DUROTAR },
				["races"] = HORDE_ONLY,
				["lvl"] = 3,
				["groups"] = {
					objective(1, {	-- 0/3 Gnomish Tools
						["providers"] = {
							{ "i", 4863 },	-- Gnomish Tools
							{ "o", 3236 },	-- Gnomish Toolbox
						},
					}),
					i(4936),	-- Dirt-trodden Boots
					i(4928),	-- Sandrunner Wristguards
					i(4935),	-- Wide Metal Girdle
				},
			}),
			q(1506, {	-- Gan'rul's Summons
				["altQuests"] = { 1478 },	-- Halgar's Summons
				["qg"] = 3294,	-- Ophek
				["coord"] = { 54.2, 41.2, MAP.DUROTAR },
				["races"] = { ORC, TROLL, UNDEAD },
				["classes"] = { WARLOCK },
				["lvl"] = 10,
			}),
			q(5648, {	-- Garments of Spirituality
				["sourceQuest"] = 5649,	-- In Favor of Spirituality
				["qg"] = 3706,	-- Tai'jin
				["coord"] = { 54.2, 42.8, MAP.DUROTAR },
				["races"] = { TROLL },
				["classes"] = { PRIEST },
				["lvl"] = 5,
				["groups"] = {
					i(16606),	-- Juju Hex Robes
				},
			}),
			q(5654, {	-- Hex of Weakness [Durotar]
				["altQuests"] = {
					5652,	-- Hex of Weakness [Orgrimmar]
					5655,	-- Hex of Weakness [Mulgore]
					5656,	-- Hex of Weakness [Thunder Bluff]
					5657,	-- Hex of Weakness [Undercity]
				},
				["qg"] = 3706,	-- Tai'jin <Priest Trainer>
				["coord"] = { 54.2, 42.8, MAP.DUROTAR },
				["races"] = { TROLL },
				["classes"] = { PRIEST },
				["lvl"] = 10,
				["groups"] = {
					{
						["recipeID"] = 9035,	-- Hex of Weakness (Rank 1)
						["rank"] = 1,
					},
				},
			}),
			q(1884, {	-- Ju-Ju Heaps
				["sourceQuests"] = {
					1881,	-- Speak with Anastasia
					1883,	-- Speak with Un'thuwa
				},
				["qg"] = 5880,	-- Un'Thuwa <Mage Trainer>
				["coord"] = { 56.2, 75.0, MAP.DUROTAR },
				["races"] = { UNDEAD, TROLL },
				["classes"] = { MAGE },
				["lvl"] = 10,
				["groups"] = {
					i(7508),	-- Ley Orb
					i(9513),	-- Ley Staff
				},
			}),
			q(816, {	-- Lost But Not Forgotten
				["qg"] = 3193,	-- Misha Tor'kren
				["coord"] = { 43.10, 30.24, MAP.DUROTAR },
				["races"] = HORDE_ONLY,
				["lvl"] = 8,
				["groups"] = {
					objective(1, {	-- 0/1 Kron's Amulet
						["provider"] = { "i", 4891 },	-- Kron's Amulet
						["crs"] = {
							3231,	-- Corrupted Dreadmaw Crocolisk
							3110,	-- Dreadmaw Crocolisk
						},
					}),
					i(4944),	-- Handsewn Cloak
				},
			}),
			q(828, {	-- Margoz
				["sourceQuest"] = 806,	-- Dark Storms
				["qg"] = 3142,	-- Orgnil Soulscar
				["coord"] = { 52.2, 43.2, MAP.DUROTAR },
				["races"] = HORDE_ONLY,
				["lvl"] = 4,
			}),
			q(808, {	-- Minshina's Skull
				["sourceQuest"] = 805,	-- Report to Sen'jin Village
				["qg"] = 3188,	-- Master Gadrin
				["coord"] = { 56.0, 74.6, MAP.DUROTAR },
				["races"] = HORDE_ONLY,
				["lvl"] = 4,
				["groups"] = {
					objective(1, {	-- 0/1 Minshina's Skull
						["providers"] = {
							{ "i", 4864 },	-- Minshina's Skull
							{ "o", 3237 },	-- Imprisoned Darkspear
						},
						["coord"] = { 67.4, 87.7, MAP.DUROTAR },
					}),
					i(4945),	-- Faintly Glowing Skull
				},
			}),
			q(812, {	-- Need for a Cure
				["qg"] = 3190,	-- Rhinag
				["coord"] = { 41.54, 18.61, MAP.DUROTAR },
				["maps"] = { MAP.ORGRIMMAR },
				["races"] = HORDE_ONLY,
				["lvl"] = 7,
				["groups"] = {
					q(813, {	-- Finding the Antidote
						["qg"] = 3189,	-- Kor'ghan
						["coord"] = { 47.0, 53.4, MAP.ORGRIMMAR },
						["races"] = HORDE_ONLY,
						["repeatable"] = true,
						["lvl"] = 7,
						["groups"] = {
							objective(1, {	-- 0/4 Venomtail Poison Sac
								["cost"] = { { "i", 4886, 4 } },	-- Venomtail Poison Sac
								["crs"] = {
									3226,	-- Corrupted Scorpid
									5823,	-- Death Flayer
									3127,	-- Venomtail Scorpid
								},
							}),
							objective(1, {	-- 0/1 Venomtail Antidote
								["questID"] = 812,	-- Need for a Cure
								["provider"] = { "i", 4904 },	-- Venomtail Antidote
							}),
						},
					}),
					i(4937),	-- Charging Buckler
					i(4929),	-- Light Scorpid Armor
				},
			}),
			q(829, {	-- Neeru Fireblade
				["sourceQuest"] = 827,	-- Skull Rock
				["qg"] = 3208,	-- Margoz
				["qi"] = 6658,	-- Example Collar
				["coord"] = { 56.4, 20.0, MAP.DUROTAR },
				["races"] = HORDE_ONLY,
				["lvl"] = 4,
			}),
			q(817, {	-- Practical Prey
				["qg"] = 3194,	-- Vel'rin Fang
				["coord"] = { 55.95, 73.92, MAP.DUROTAR },
				["races"] = HORDE_ONLY,
				["lvl"] = 5,
				["groups"] = {
					objective(1, {	-- 0/4 Durotar Tiger Fur
						["provider"] = { "i", 4892 },	-- Durotar Tiger Fur
						["cr"] = 3121,	-- Durotar Tiger
					}),
				},
			}),
			q(823, {	-- Report to Orgnil
				["sourceQuest"] = 805,	-- Report to Sen'jin Village
				["qg"] = 3188,	-- Master Gadrin
				["coord"] = { 56.0, 74.6, MAP.DUROTAR },
				["races"] = HORDE_ONLY,
				["lvl"] = 4,
			}),
			q(1842, {	-- Satyr Hooves
				["sourceQuest"] = 1839,	-- Ula'elek and the Brutal Gauntlets
				["qg"] = 6408,	-- Ula'elek
				["coord"] = { 56.2, 74.4, MAP.DUROTAR },
				["maps"] = { MAP.ASHENVALE },
				["races"] = HORDE_ONLY,
				["classes"] = { WARRIOR },
				["lvl"] = 20,
				["groups"] = {
					objective(1, {	-- 0/7 Uncloven Satyr Hoof
						["provider"] = { "i", 7128 },	-- Uncloven Satyr Hoof
						["crs"] = {
							3771,	-- Bleakheart Hellcaller
							3770,	-- Bleakheart Shadowstalker
							3767,	-- Bleakheart Trickster
							3765,	-- Bleakheart Satyr
							3755,	-- Xavian Felsworn
							3754,	-- Xavian Betrayer
							3757,	-- Xavian Hellcaller
							3752,	-- Xavian Rogue
							10647,	-- Prince Raze
							3758,	-- Felmusk Satyr
							3762,	-- Felmusk Felsworn
							3763,	-- Felmusk Shadowstalker
							3759,	-- Felmusk Rogue
						},
					}),
				},
			}),
			q(835, {	-- Securing the Lines
				["sourceQuest"] = 834,	-- Winds in the Desert
				["qg"] = 3293,	-- Rezlak
				["coord"] = { 46.4, 23.0, MAP.DUROTAR },
				-- ["races"] = ALL_RACES,	-- Crieve: Yes, doable on Alliance.
				["lvl"] = 7,
				["groups"] = {
					objective(1, {	-- 0/12 Dustwind Savage
						["provider"] = { "n", 3117 },	-- Dustwind Savage
					}),
					objective(2, {	-- 0/8 Dustwind Storm Witch
						["provider"] = { "n", 3118 },	-- Dustwind Storm Witch
					}),
					i(4932),	-- Harpy Wing Clipper
					i(4931),	-- Hickory Shortbow
					i(4938),	-- Blemished Wooden Staff
				},
			}),
			q(827, {	-- Skull Rock
				["sourceQuest"] = 828,	-- Margoz
				["qg"] = 3208,	-- Margoz
				["coord"] = { 56.4, 20.0, MAP.DUROTAR },
				["races"] = HORDE_ONLY,
				["lvl"] = 4,
				["groups"] = {
					objective(1, {	-- 0/6 Searing Collar
						["provider"] = { "i", 4871 },	-- Searing Collar
						["crs"] = {
							3198,	-- Burning Blade Apprentice
							3199,	-- Burning Blade Cultist
							3197,	-- Burning Blade Fanatic
							3196,	-- Burning Blade Neophyte
							3195,	-- Burning Blade Thug
						},
					}),
					i(4947),	-- Jagged Dagger
					i(4939),	-- Steady Bastard Sword
					i(4948),	-- Stinging Mace
				},
			}),
			q(1883, {	-- Speak with Un'thuwa
				["altQuests"] = { 1881 },	-- Speak with Anastasia
				["qgs"] = {
					3049,	-- Thurston Xane <Mage Trainer>
					7311,	-- Uthel'nay <Mage Trainer>
				},
				["coords"] = {
					{ 39.0, 86.0, MAP.ORGRIMMAR },
					{ 25.0, 20.6, MAP.THUNDER_BLUFF },
				},
				["races"] = { UNDEAD, TROLL },
				["classes"] = { MAGE },
				["isBreadcrumb"] = true,
				["lvl"] = 10,
			}),
			q(6062, {	-- Taming the Beast (1/3)
				["sourceQuests"] = {
					6068,	-- The Hunter's Path [Orgrimmar]
					6069,	-- The Hunter's Path [Durotar]
					6070,	-- The Hunter's Path [Thunder Bluff]
				},
				["qg"] = 3171,	-- Thotar <Hunter Trainer>
				["coord"] = { 51.8, 43.4, MAP.DUROTAR },
				["races"] = { ORC, UNDEAD, TROLL },
				["classes"] = { HUNTER },
				["lvl"] = 10,
				["groups"] = {
					objective(1, {	-- Tame a Dire Mottled Boar
						["provider"] = { "i", 15917 },	-- Taming Rod
						["cr"] = 3099,	-- Dire Mottled Boar
					}),
				},
			}),
			q(6083, {	-- Taming the Beast (2/3)
				["sourceQuest"] = 6062,	-- Taming the Beast (1/3)
				["qg"] = 3171,	-- Thotar <Hunter Trainer>
				["coord"] = { 51.8, 43.4, MAP.DUROTAR },
				["races"] = { ORC, UNDEAD, TROLL },
				["classes"] = { HUNTER },
				["lvl"] = 10,
				["groups"] = {
					objective(1, {	-- Tame a Surf Crawler
						["provider"] = { "i", 15919 },	-- Taming Rod
						["cr"] = 3107,	-- Surf Crawler
					}),
				},
			}),
			q(6082, {	-- Taming the Beast (3/3)
				["sourceQuest"] = 6083,	-- Taming the Beast (2/3)
				["qg"] = 3171,	-- Thotar <Hunter Trainer>
				["coord"] = { 51.8, 43.4, MAP.DUROTAR },
				["races"] = { ORC, UNDEAD, TROLL },
				["classes"] = { HUNTER },
				["lvl"] = 10,
				["groups"] = {
					objective(1, {	-- Tame an Armored Scorpid
						["provider"] = { "i", 15920 },	-- Taming Rod
						["cr"] = 3126,	-- Armored Scorpid
					}),
					recipe(883),	-- Call Pet
					recipe(2641),	-- Dismiss Pet
					recipe(1515),	-- Tame Beast
				},
			}),
			q(830, {	-- The Admiral's Orders (1/2)
				["provider"] = { "i", 4881 },	-- Aged Envelope
				["races"] = HORDE_ONLY,
			}),
			q(831, {	-- The Admiral's Orders (2/2)
				["sourceQuest"] = 830,	-- The Admiral's Orders (1/2)
				["qg"] = 3139,	-- Gar'Thok
				["qi"] = 4883,	-- Admiral Proudmoore's Orders
				["coord"] = { 52.0, 43.4, MAP.DUROTAR },
				["races"] = HORDE_ONLY,
			}),
			q(924, {	-- The Demon Seed
				["sourceQuest"] = 809,	-- Ak'Zeloth
				["qg"] = 3521,	-- Ak'Zeloth
				["coord"] = { 62.4, 20.0, MAP.THE_BARRENS },
				["races"] = HORDE_ONLY,
				["lvl"] = 9,
				["groups"] = {
					q(926, {	-- Flawed Power Stone
						["sourceQuest"] = 924,	-- The Demon Seed
						["provider"] = { "o", 5620 },	-- Flawed Power Stones
						["coord"] = { 62.4, 20.0, MAP.THE_BARRENS },
						["races"] = HORDE_ONLY,
						["repeatable"] = true,
						["groups"] = {
							objective(1, {	-- Destroy the Demon Seed
								["questID"] = 924,	-- The Demon Seed
								["providers"] = {
									{ "o", 3525 },	-- The Altar of Fire
									{ "i", 4986 },	-- Flawed Power Stone
								},
								["coord"] = { 47.0, 19.0, MAP.THE_BARRENS },
							}),
						},
					}),
					i(5420),	-- Banshee Armor
				},
			}),
			q(96604, {	-- The Great Outdoors [Durotar]
				["sourceQuest"] = 96652,	-- The Adventurer [Durotar]
				["qg"] = 265809,	-- Brakk <Adventurer>
				["coord"] = { 52.0, 47.4, MAP.DUROTAR },
				["timeline"] = { TIMELINE.ADDED_1_60_1 },
				["races"] = HORDE_ONLY,
				["lvl"] = 4,
			}),
			q(6068, {	-- The Hunter's Path [Orgrimmar]
				["qg"] = 3407,	-- Sian'dur <Hunter Trainer>
				["coord"] = { 67.8, 17.8, MAP.ORGRIMMAR },
				["races"] = { ORC, UNDEAD, TROLL },
				["classes"] = { HUNTER },
				["isBreadcrumb"] = true,
				["lvl"] = 10,
			}),
			q(6069, {	-- The Hunter's Path [Durotar]
				["qg"] = 11814,	-- Kali Remik
				["coord"] = { 6.2, 74.2, MAP.DUROTAR },
				["races"] = { ORC, UNDEAD, TROLL },
				["classes"] = { HUNTER },
				["isBreadcrumb"] = true,
				["lvl"] = 10,
			}),
			q(6070, {	-- The Hunter's Path [Thunder Bluff]
				["qg"] = 3038,	-- Kary Thunderhorn <Hunter Trainer>
				["coord"] = { 58.4, 88.0, MAP.THUNDER_BLUFF },
				["races"] = { ORC, UNDEAD, TROLL },
				["classes"] = { HUNTER },
				["isBreadcrumb"] = true,
				["lvl"] = 10,
			}),
			q(1859, {	-- Therzok
				["qg"] = 3170,	-- Kaplak
				["coord"] = { 51.98, 43.70, MAP.DUROTAR },
				["races"] = { ORC, TROLL },
				["classes"] = { ROGUE },
				["isBreadcrumb"] = true,
				["lvl"] = 10,
			}),
			q(786, {	-- Thwarting Kolkar Aggression
				-- ["sourceQuest"] = 785,	-- A Strategic Alliance [didn't make it into Classic]
				["qg"] = 3140,	-- Lar Prowltusk
				["coord"] = { 54.52, 75.20, MAP.DUROTAR },
				["races"] = HORDE_ONLY,
				["lvl"] = 5,
				["groups"] = {
					objective(1, {	-- 0/1 Attack Plan: Valley of Trials
						["provider"] = { "o", 3189 },	-- Attack Plan: Valley of Trials
						["coord"] = { 49.8, 81.3, MAP.DUROTAR },
					}),
					objective(2, {	-- 0/1 Attack Plan: Sen'jin Village
						["provider"] = { "o", 3190 },	-- Attack Plan: Sen'jin Village
						["coord"] = { 47.6, 77.4, MAP.DUROTAR },
					}),
					objective(3, {	-- 0/1 Attack Plan: Orgrimmar
						["provider"] = { "o", 3192 },	-- Attack Plan: Orgrimmar
						["coord"] = { 46.3, 79.0, MAP.DUROTAR },
					}),
					i(4933),	-- Seasoned Fighter's Cloak
					i(6062),	-- Heavy Cord Bracers
				},
			}),
			q(6081, {	-- Training the Beast
				["sourceQuest"] = 6082,	-- Taming the Beast (3/3)
				["qg"] = 3171,	-- Thotar <Hunter Trainer>
				["coord"] = { 51.8, 43.4, MAP.DUROTAR },
				["races"] = { ORC, UNDEAD, TROLL },
				["classes"] = { HUNTER },
				["lvl"] = 10,
				["groups"] = {
					recipe(6991),	-- Feed Pet
					recipe(982),	-- Revive Pet
				},
			}),
			q(5660, {	-- Touch of Weakness [Durotar]
				["altQuests"] = {
					5658,	-- Touch of Weakness [Undercity]
					5661,	-- Touch of Weakness [Mulgore]
					5662,	-- Touch of Weakness [Orgrimmar]
					5663,	-- Touch of Weakness [Thunder Bluff]
				},
				["qg"] = 3706,	-- Tai'jin <Priest Trainer>
				["coord"] = { 54.2, 42.8, MAP.DUROTAR },
				["classes"] = { PRIEST },
				["races"] = { UNDEAD },
				["lvl"] = 10,
				["groups"] = {
					{
						["recipeID"] = 2652,	-- Touch of Weakness (Rank 1)
						["rank"] = 1,
					},
				},
			}),
			q(784, {	-- Vanquish the Betrayers
				["qg"] = 3139,	-- Gar'Thok
				["coord"] = { 52.0, 43.4, MAP.DUROTAR },
				["races"] = HORDE_ONLY,
				["lvl"] = 3,
				["groups"] = {
					objective(1, {	-- 0/10 Kul Tiras Sailor
						["provider"] = { "n", 3128 },	-- Kul Tiras Sailor
					}),
					objective(2, {	-- 0/8 Kul Tiras Marine
						["provider"] = { "n", 3129 },	-- Kul Tiras Marine
					}),
					objective(3, {	-- 0/1 Lieutenant Benedict
						["provider"] = { "n", 3192 },	-- Lieutenant Benedict
					}),
				},
			}),
			q(834, {	-- Winds in the Desert
				["qg"] = 3293,	-- Rezlak
				["coord"] = { 46.4, 23.0, MAP.DUROTAR },
				-- ["races"] = ALL_RACES,	-- Crieve: Yes, doable on Alliance.
				["lvl"] = 7,
				["groups"] = {
					objective(1, {	-- 0/5 Sack of Supplies
						["providers"] = {
							{ "i", 4918 },	-- Sack of Supplies
							{ "o", 3290 },	-- Stolen Supply Sack
						},
					}),
				},
			}),
			q(826, {	-- Zalazane
				["sourceQuest"] = 805,	-- Report to Sen'jin Village
				["qg"] = 3188,	-- Master Gadrin
				["coord"] = { 56.0, 74.6, MAP.DUROTAR },
				["races"] = HORDE_ONLY,
				["lvl"] = 4,
				["groups"] = {
					objective(1, {	-- 0/8 Hexed Troll
						["provider"] = { "n", 3207 },	-- Hexed Troll
					}),
					objective(2, {	-- 0/8 Voodoo Troll
						["provider"] = { "n", 3206 },	-- Voodoo Troll
					}),
					objective(3, {	-- 0/1 Zalazane's Head
						["provider"] = { "i", 4866 },	-- Zalazane's Head
						["coord"] = { 67.6, 87.8, MAP.DUROTAR },
						["cr"] = 3205,	-- Zalazane
					}),
					i(4946),	-- Lightweight Boots
					i(4940),	-- Veiled Grips
				},
			}),
		}),
		n(RARES, {
			n(5824, {	-- Captain Flat Tusk <Captain of the Battleguard>
				["coords"] = {
					{ 38.6, 53.8, MAP.DUROTAR },
					{ 44.8, 50.6, MAP.DUROTAR },
					{ 42.4, 38.6, MAP.DUROTAR },
				},
			}),
			n(5823, {	-- Death Flayer
				["coords"] = {
					{ 38.8, 46.2, MAP.DUROTAR },
					{ 35.2, 48.2, MAP.DUROTAR },
					{ 35.4, 53.0, MAP.DUROTAR },
					{ 36.0, 55.6, MAP.DUROTAR },
					{ 37.8, 53.4, MAP.DUROTAR },
					{ 39.2, 51.0, MAP.DUROTAR },
				},
			}),
			n(5822, {	-- Felweaver Scornn
				["coords"] = {
					{ 51.6, 9.6, MAP.DUROTAR },
					{ 53.0, 7.2, MAP.DUROTAR },
				},
			}),
			n(5826, {	-- Geolord Mottle
				["coords"] = {
					{ 43.6, 40.8, MAP.DUROTAR },
					{ 49.6, 45.0, MAP.DUROTAR },
					{ 47.6, 50.0, MAP.DUROTAR },
					{ 44.6, 48.4, MAP.DUROTAR },
					{ 43.8, 50.0, MAP.DUROTAR },
				},
			}),
			n(276198, {	-- Shal'ma
				coords = {
					{ 69.0, 71.6, MAP.DUROTAR },
					{ 60.6, 89.6, MAP.DUROTAR },
					{ 63.6, 95.6, MAP.DUROTAR },
				},
				timeline = { TIMELINE.ADDED_1_60_1 },
				groups = {
					i(286746),	-- Shal'ma's Shawl
				},
			}),
			n(5808, {	-- Warlord Kolkanis
				["coords"] = {
					{ 46.6, 79.8, MAP.DUROTAR },
					{ 48.2, 78.2, MAP.DUROTAR },
					{ 49.6, 80.6, MAP.DUROTAR },
				},
			}),
			n(5809, {	-- Watch Commander Zalaphil
				["coord"] = { 59.6, 59.0, MAP.DUROTAR },
			}),
		}),
		n(RIDING_TRAINER, {
			n(7953, {	-- Xar'Ti <Raptor Riding Trainer>
				["coord"] = { 55.3, 75.5, MAP.DUROTAR },
				["races"] = { ORC, TROLL, UNDEAD },

				-- Available to Trolls without faction requirements.
				["minReputation"] = { FACTION_DARKSPEAR_TROLLS, EXALTED },	-- Darkspear Trolls, Exalted.
				["OnInit"] = [[function(t)
					if _.RaceIndex == ]] .. TROLL .. [[ then
						t.minReputation = nil;
					end
					return t;
				end]],
				["groups"] = {
					recipe(10861, {	-- Raptor Riding
						["cost"] = 200000,
						["lvl"] = 40,
					}),
				},
			}),
		}),
		n(TREASURES, {
			o(3239, {	-- Benedict's Chest
				["coord"] = { 59.3, 57.7, MAP.DUROTAR },
				["cost"] = { { "i", 4882, 1 } },	-- Benedict's Key
				["groups"] = {
					i(4881),	-- Aged Envelope
				},
			}),
		}),
		n(VENDORS, {
			n(3881, {	-- Grimtak
				["coord"] = { 51.2, 42.6, MAP.DUROTAR },
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(5483),	-- Recipe: Scorpid Surprise (RECIPE!)
				},
			}),
			n(5942, {	-- Zansoa <Fishing Supplies>
				["coord"] = { 56.0, 73.4, MAP.DUROTAR },
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(6368),	-- Recipe: Rainbow Fin Albacore (RECIPE!)
					i(6326),	-- Recipe: Slitherskin Mackerel (RECIPE!)
				},
			}),
			n(7952, {	-- Zjolnir <Raptor Handler>
				["coord"] = { 55.2, 75.6, MAP.DUROTAR },
				-- Available to Trolls without faction requirements.
				["minReputation"] = { FACTION_DARKSPEAR_TROLLS, EXALTED },	-- Darkspear Trolls, Exalted.
				["OnInit"] = [[function(t)
					if _.RaceIndex == ]] .. TROLL .. [[ then
						t.minReputation = nil;
					end
					return t;
				end]],
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(8588),	-- Emerald Raptor (MOUNT!)
					i(18788),	-- Swift Blue Raptor (MOUNT!)
					i(18789),	-- Swift Olive Raptor (MOUNT!)
					i(18790),	-- Swift Orange Raptor (MOUNT!)
					i(8591),	-- Turquoise Raptor (MOUNT!)
					i(8592),	-- Violet Raptor (MOUNT!)
				},
			}),
		}),
		n(ZONE_DROPS, {
			i(4882, {	-- Benedict's Key
				["cr"] = 3192,	-- Lieutenant Benedict
				["coord"] = { 59.6, 58.2, MAP.DUROTAR },
			}),
			i(769),	-- Chunk of Boar Meat
			i(5466, {	-- Scorpid Stinger
				["maps"] = { MAP.DUROTAR },
				["crs"] = {
					3126,	-- Armoured Scorpid
					3125,	-- Clattering Scorpid
					3226,	-- Corrupted Scorpid
					5823,	-- Death Flayer
					3127,	-- Venomtail Scorpid
				},
				["description"] = "Only drops from scorpids in Durotar, excluding Echo Isles and Valley of Trials."
			}),
		}),
	},
});
