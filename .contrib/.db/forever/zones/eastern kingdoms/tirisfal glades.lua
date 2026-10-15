---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

maproot(MAP.EASTERN_KINGDOMS, MAP.TIRISFAL_GLADES, {
	groups = {
		m(DEATHKNELL, {
			["lore"] = "Deathknell is a small Forsaken village nestled in a well guarded valley just north of Silverpine Forest in Tirisfal Glades which serves as the starting area for the Forsaken.",
			["icon"] = 236457,
			zoneTextAreaIDs = {
				154,	-- Deathknell
			},
			["groups"] = {
				n(QUESTS, {
					q(96656, {	-- The Adventurer [Tirisfal Glades]
						nextQuests = { 96607 },
						isBreadcrumb = true,
						altQuests = { 96627, 96628, 96630, 96638, 96652, 96659 },
						--["sourceQuest"] = ,	--
						["qg"] = 1570,	-- Executor Arren
						["coord"] = { 32.0, 66.0, MAP.TIRISFAL_GLADES },
						["timeline"] = { TIMELINE.ADDED_1_60_1 },
						["races"] = HORDE_ONLY,
						["lvl"] = 4,
						["groups"] = {
							objective(1, {	-- Speak to Eleanor Shackleton
								["provider"] = { "n", 265812 },	-- Eleanor Shackleton
								["coord"] = { 57.3, 55.5, MAP.TIRISFAL_GLADES },
							}),
						},
					}),
					q(98601, {	-- A Difficult Path
						["qg"] = 1569,	-- Shadow Priest Sarvis
						["qi"] = 282423,	-- Consecrated Scroll
						["coord"] = { 30.8, 66.2, MAP.TIRISFAL_GLADES },
						["timeline"] = { TIMELINE.ADDED_1_60_1 },
						["races"] = { UNDEAD },
						["classes"] = { PALADIN },
						["lvl"] = 1,
						["groups"] = {
							i(6060),	-- Flax Bracers
							i(2173),	-- Old Leather Belt
						},
					}),
					q(90902, {	-- Rediscovering the Light
						["qg"] = 244808,	-- Aramis Hammerhand
						["coord"] = { 31.0, 66.2, MAP.TIRISFAL_GLADES },
						["timeline"] = { TIMELINE.ADDED_1_60_1 },
						["races"] = { UNDEAD },
						["classes"] = { PALADIN },
						["lvl"] = 2,
					}),
					q(91208, {	-- Coming to Terms
						["qg"] = 244808,	-- Aramis Hammerhand
						["coord"] = { 31.0, 66.2, MAP.TIRISFAL_GLADES },
						["timeline"] = { TIMELINE.ADDED_1_60_1 },
						["races"] = { UNDEAD },
						["classes"] = { PALADIN },
						["lvl"] = 4,
					}),
					q(91209, {	-- Continue Your Training
						["qg"] = 244808,	-- Aramis Hammerhand
						["coord"] = { 31.0, 66.2, MAP.TIRISFAL_GLADES },
						["timeline"] = { TIMELINE.ADDED_1_60_1 },
						["races"] = { UNDEAD },
						["classes"] = { PALADIN },
						["lvl"] = 4,
						["groups"] = {
							objective(1, {	-- Report to Shari Stilwell
								["provider"] = { "n", 246152 },	-- Shari Stilwell
								["coord"] = { 60.3, 52.7, MAP.TIRISFAL_GLADES },
							}),
						},
					}),
					q(98389, {	-- A Light in the Darkness
						["qg"] = 244808,	-- Aramis Hammerhand
						["coord"] = { 31.0, 66.2, MAP.TIRISFAL_GLADES },
						["timeline"] = { TIMELINE.ADDED_1_60_1 },
						["races"] = HORDE_ONLY,
						["lvl"] = 2,
					}),
				}),
			},
		}),
		n(QUESTS, {
			q(91282, {	-- A Second Home
				qg = 246152,	-- Shari Stilwell
				coord = { 60.25, 52.63, MAP.TIRISFAL_GLADES },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = { UNDEAD },
				classes = { PALADIN },
				lvl = 8,
			}),
			q(91285, {	-- Murlocs at the Gates
				qg = 246349,	-- Breton Samuels
				coord = { 21.85, 45.31, MAP.TIRISFAL_GLADES },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = { UNDEAD },
				classes = { PALADIN },
				lvl = 7,
				groups = {
					objective(1, {	-- Vile Fin Attacker
						provider = { "n", 250283 },
					}),
					objective(2, {	-- Vile Fin Seer
						provider = { "n", 250282 },
					}),
					i(246164),	-- Skullthumper
					i(246165),	-- Driftwood Smasher
				},
			}),

			q(91316, {	-- Making Repairs
				qg = 246393,	-- Jorin Croge
				coord = { 22.65, 44.77, MAP.TIRISFAL_GLADES },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = { UNDEAD },
				classes = { PALADIN },
				lvl = 8,
				groups = {
					objective(1, {	-- Sturdy Lumber
						provider = { "i", 246213 },
					}),
					i(246265),	-- Salvaged Wooden Tower Shield
				},
			}),
			q(91317, {	-- The Tarnished
				qg = 246378,	-- Danitha Morr
				coord = { 22.05, 44.7, MAP.TIRISFAL_GLADES },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = { UNDEAD },
				classes = { PALADIN },
				lvl = 9,
				groups = {
					objective(1, {	-- Tarnished Drudge
						provider = { "n", 259434 },
					}),
					objective(2, {	-- Tarnished Zealot
						provider = { "n", 259433 },
					}),
					objective(3, {	-- Rudolph Gelhardt's Head
						provider = { "i", 270435 },
					}),
				},
			}),
			q(91858, {	-- Diplomatic Incident
				qg = 246378,	-- Danitha Morr
				coord = { 22.05, 44.7, MAP.TIRISFAL_GLADES },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = { UNDEAD },
				classes = { PALADIN },
				lvl = 18,
			}),
			q(94427, {	-- A Lesson in Divinity
				qg = 246378,	-- Danitha Morr
				coord = { 22.05, 44.7, MAP.TIRISFAL_GLADES },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = { UNDEAD },
				classes = { PALADIN },
				lvl = 12,
			}),
			q(94436, {	-- A Lesson in Divinity
				qg = 246378,	-- Danitha Morr
				coord = { 22.05, 44.7, MAP.TIRISFAL_GLADES },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = { UNDEAD },
				classes = { PALADIN },
				lvl = 12,
			}),
			q(94440, {	-- A Lesson in Divinity
				qg = 257663,	-- Deathguard Falgan
				coord = { 86.64, 47.63, MAP.TIRISFAL_GLADES },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = { UNDEAD },
				classes = { PALADIN },
				lvl = 12,
				groups = {
					objective(1, {	-- Scarlet Crusade Attack Plans
						provider = { "i", 264693 },
					}),
				},
			}),
			q(94441, {	-- A Lesson in Divinity
				qg = 257655,	-- Deathguard Billmuth
				coord = { 21.95, 44.5, MAP.TIRISFAL_GLADES },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = { UNDEAD },
				classes = { PALADIN },
				lvl = 12,
			}),
			q(95803, {	-- A Token of Good Faith
				qg = 246378,	-- Danitha Morr
				coord = { 22.05, 44.7, MAP.TIRISFAL_GLADES },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = { UNDEAD },
				classes = { PALADIN },
				qi = 270436,	-- Rudolph Gelhardt's Head
				lvl = 9,
			}),
			q(96896, {	-- A Righteous Cause
				["sourceQuest"] = 96899,	-- Bandarion Keep
				["qg"] = 267008,	-- Leonid Barthalomew the Revered
				["coord"] = { 22.0, 44.8, MAP.TIRISFAL_GLADES },
				["timeline"] = { TIMELINE.ADDED_1_60_1 },
				["races"] = { UNDEAD },
				["lvl"] = 10,
			}),
			q(99152, {	-- As Above, So Below
				["qg"] = 246389,	-- Hilda the Breaker
				["coord"] = { 22.0, 47.2, MAP.TIRISFAL_GLADES },
				["timeline"] = { TIMELINE.ADDED_1_60_1 },
				["races"] = { UNDEAD },
				["lvl"] = 10,
				["groups"] = {
					objective(1, {	-- 0/6 Faintly Glowing Bone
						["provider"] = { "i", 286259 },	-- Faintly Glowing Bone
						["crs"] = {
							260428,	-- Shadowvale Lurcher
							260430,	-- Shadowvale Mystic
							260432,	-- Shadowvale Mystic
						},
					}),
				},
			}),
			q(96899, {	-- Bandarion Keep
				["qg"] = 267009,	-- Hadric Harlson
				["coord"] = { 65.8, 61.0, MAP.TIRISFAL_GLADES },
				["timeline"] = { TIMELINE.ADDED_1_60_1 },
				["races"] = { ORC, UNDEAD },
				["lvl"] = 10,
			}),
			q(97951, {	-- Camping 101: Alchemy [Tirisfal Glades]
				lockCriteria = { 1, "spellID", 1230564 },
				altQuests = { 96045, 97899, 97915, 97927, 97938, 97963 },
				sourceQuest = 96607,	-- The Great Outdoors [Tirisfal Glades]
				qg = 265812,	-- Eleanor Shackleton <Adventurer>
				coord = { 57.2, 55.6, MAP.TIRISFAL_GLADES },
				timeline = { TIMELINE.ADDED_1_60_1 },
				requireSkill = ALCHEMY,
				races = HORDE_ONLY,
				lvl = 4,
				groups = {
					recipe(1230564),	-- Alchemy: Mana Well
				},
			}),
			q(97952, {	-- Camping 101: Blacksmithing [Tirisfal Glades]
				lockCriteria = { 1, "spellID", 1230171 },
				altQuests = { 96044, 97900, 97916, 97928, 97939, 97964 },
				sourceQuest = 96607,	-- The Great Outdoors [Tirisfal Glades]
				qg = 265812,	-- Eleanor Shackleton <Adventurer>
				coord = { 57.2, 55.6, MAP.TIRISFAL_GLADES },
				timeline = { TIMELINE.ADDED_1_60_1 },
				maps = { MAP.UNDERCITY },
				requireSkill = BLACKSMITHING,
				races = HORDE_ONLY,
				lvl = 4,
				groups = {
					recipe(1230171),	-- Blacksmithing: Sharpening Wheel
				},
			}),
			q(96658, {	-- Camping 101: Cooking [Tirisfal Glades]
				altQuests = { 96626, 96629, 96634, 96646, 96655, 96661 },
				sourceQuest = 96607,	-- The Great Outdoors [Tirisfal Glades]
				qg = 265812,	-- Eleanor Shackleton <Adventurer>
				coord = { 57.3, 55.5, MAP.TIRISFAL_GLADES },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = HORDE_ONLY,
				lvl = 4,
				groups = {
					objective(1, {	-- Learn Cooking from William Pickman
						provider = { "n", 265944 },	-- William Pickman
						coord = { 61.8, 51.5, MAP.TIRISFAL_GLADES },
					}),
				},
			}),
			q(97953, {	-- Camping 101: Enchanting [Tirisfal Glades]
				lockCriteria = { 1, "spellID", 1230643 },
				altQuests = { 96059, 97901, 97917, 97929, 97940, 98284, 98286 },
				sourceQuest = 96607,	-- The Great Outdoors [Tirisfal Glades]
				qg = 265812,	-- Eleanor Shackleton <Adventurer>
				coord = { 57.2, 55.6, MAP.TIRISFAL_GLADES },
				timeline = { TIMELINE.ADDED_1_60_1 },
				requireSkill = ENCHANTING,
				races = HORDE_ONLY,
				lvl = 4,
				groups = {
					recipe(1230643),	-- Enchanting: Enchanted Lute
				},
			}),
			q(97954, {	-- Camping 101: Engineering [Tirisfal Glades]
				lockCriteria = { 1, "spellID", 1230656 },
				altQuests = { 96058, 97902, 97918, 97930, 97941, 98285, 98287 },
				sourceQuest = 96607,	-- The Great Outdoors [Tirisfal Glades]
				qg = 265812,	-- Eleanor Shackleton <Adventurer>
				coord = { 57.2, 55.6, MAP.TIRISFAL_GLADES },
				timeline = { TIMELINE.ADDED_1_60_1 },
				maps = { MAP.UNDERCITY },
				requireSkill = ENGINEERING,
				races = HORDE_ONLY,
				lvl = 4,
				groups = {
					recipe(1230656),	-- Engineering: Reagent Bot
				},
			}),
			q(97955, {	-- Camping 101: First Aid [Tirisfal Glades]
				lockCriteria = { 1, "spellID", 1230117 },
				altQuests = { 96047, 97903, 97919, 97931, 97942, 97965 },
				sourceQuest = 96607,	-- The Great Outdoors [Tirisfal Glades]
				qg = 265812,	-- Eleanor Shackleton <Adventurer>
				coord = { 57.2, 55.6, MAP.TIRISFAL_GLADES },
				timeline = { TIMELINE.ADDED_1_60_1 },
				requireSkill = FIRST_AID,
				races = HORDE_ONLY,
				lvl = 4,
				groups = {
					recipe(1230117),	-- First Aid: First Aid Kit
				},
			}),
			q(97956, {	-- Camping 101: Fishing [Tirisfal Glades]
				lockCriteria = { 1, "spellID", 1229745 },
				altQuests = { 96050, 97904, 97920, 97932, 97943, 97967 },
				sourceQuest = 96607,	-- The Great Outdoors [Tirisfal Glades]
				qg = 265812,	-- Eleanor Shackleton <Adventurer>
				coord = { 57.2, 55.6, MAP.TIRISFAL_GLADES },
				timeline = { TIMELINE.ADDED_1_60_1 },
				requireSkill = FISHING,
				races = HORDE_ONLY,
				lvl = 4,
				groups = {
					recipe(1229745),	-- Fishing: Fish Bowl
				},
			}),
			q(97957, {	-- Camping 101: Herbalism [Tirisfal Glades]
				lockCriteria = { 1, "spellID", 1229705 },
				altQuests = { 96055, 97905, 97921, 97933, 97944, 97968 },
				sourceQuest = 96607,	-- The Great Outdoors [Tirisfal Glades]
				qg = 265812,	-- Eleanor Shackleton <Adventurer>
				coord = { 57.2, 55.6, MAP.TIRISFAL_GLADES },
				timeline = { TIMELINE.ADDED_1_60_1 },
				requireSkill = HERBALISM,
				races = HORDE_ONLY,
				lvl = 4,
				groups = {
					recipe(1229705),	-- Herbalism: Incense Candle
				},
			}),
			q(97958, {	-- Camping 101: Leatherworking [Tirisfal Glades]
				lockCriteria = { 1, "spellID", 1229432 },
				altQuests = { 96031, 97906, 97922, 97934, 97946, 97969 },
				sourceQuest = 96607,	-- The Great Outdoors [Tirisfal Glades]
				qg = 265812,	-- Eleanor Shackleton <Adventurer>
				coord = { 57.2, 55.6, MAP.TIRISFAL_GLADES },
				timeline = { TIMELINE.ADDED_1_60_1 },
				requireSkill = LEATHERWORKING,
				races = HORDE_ONLY,
				lvl = 4,
				groups = {
					recipe(1229432),	-- Leatherworking: Camp Tent
				},
			}),
			q(97959, {	-- Camping 101: Mining [Tirisfal Glades]
				lockCriteria = { 1, "spellID", 1230161 },
				altQuests = { 96046, 97907, 97923, 97935, 97948, 97970 },
				sourceQuest = 96607,	-- The Great Outdoors [Tirisfal Glades]
				qg = 265812,	-- Eleanor Shackleton <Adventurer>
				coord = { 57.2, 55.6, MAP.TIRISFAL_GLADES },
				timeline = { TIMELINE.ADDED_1_60_1 },
				maps = { MAP.UNDERCITY },
				requireSkill = MINING,
				races = HORDE_ONLY,
				lvl = 4,
				groups = {
					recipe(1230161),	-- Mining: Lodestone
				},
			}),
			q(97960, {	-- Camping 101: Skinning [Tirisfal Glades]
				lockCriteria = { 1, "spellID", 1229517 },
				altQuests = { 96056, 97908, 97924, 97936, 97949, 97971 },
				sourceQuest = 96607,	-- The Great Outdoors [Tirisfal Glades]
				qg = 265812,	-- Eleanor Shackleton <Adventurer>
				coord = { 57.2, 55.6, MAP.TIRISFAL_GLADES },
				timeline = { TIMELINE.ADDED_1_60_1 },
				requireSkill = SKINNING,
				races = HORDE_ONLY,
				lvl = 4,
				groups = {
					recipe(1229517),	-- Skinning: Camp Chair
				},
			}),
			q(97961, {	-- Camping 101: Tailoring [Tirisfal Glades]
				lockCriteria = { 1, "spellID", 1229504 },
				altQuests = { 96057, 96102, 97925, 97937, 97950, 97972, 97973 },
				sourceQuest = 96607,	-- The Great Outdoors [Tirisfal Glades]
				qg = 265812,	-- Eleanor Shackleton <Adventurer>
				coord = { 57.2, 55.6, MAP.TIRISFAL_GLADES },
				timeline = { TIMELINE.ADDED_1_60_1 },
				requireSkill = TAILORING,
				races = HORDE_ONLY,
				lvl = 4,
				groups = {
					recipe(1263425),	-- Tailoring: Camp Chair
				},
			}),
			q(97558, {	-- Hides for the Forsaken
				["qg"] = 3549,	-- Shelene Rhobart
				["coord"] = { 65.4, 60.0, MAP.TIRISFAL_GLADES },
				["timeline"] = { TIMELINE.ADDED_1_60_1 },
				["races"] = { ORC, UNDEAD },
				["lvl"] = 6,
				["groups"] = {
					objective(1, {	-- 0/8 Duskbat Wing Membrane
						["provider"] = { "i", 278242 },	-- Duskbat Wing Membrane
						["crs"] = {
							1553,	-- Greater Duskbat
							1554,	-- Vampiric Duskbat
						},
					}),
					objective(2, {	-- 0/6 Darkhound Hide
						["provider"] = { "i", 278243 },	-- Darkhound Hide
						["crs"] = {
							1547,	-- Decrepit Darkhound
							1548,	-- Cursed Darkhound
						},
					}),
					objective(3, {	-- 0/3 Vile Fin Murloc Skin
						["provider"] = { "i", 278244 },	-- Vile Fin Murloc Skin
						["crs"] = {
							1544,	-- Vile Fin Minor Oracle
							1545,	-- Vile Fin Muckdweller
						},
					}),
					i(281283),	-- Patchwing Pants
					i(281284),	-- Howlhide Vest
					i(281285),	-- Finscale Soles
				},
			}),
			q(98545, {	-- Leonid's Letter
				["sourceQuest"] = 96896,	-- A Righteous Cause
				["qg"] = 267008,	-- Leonid Barthalomew the Revered
				["qi"] = 282065,	-- Sealed Letter
				["coord"] = { 22.0, 44.8, MAP.TIRISFAL_GLADES },
				["timeline"] = { TIMELINE.ADDED_1_60_1 },
				["races"] = { UNDEAD },
				["lvl"] = 10,
				["groups"] = {
					i(282064),	-- Tim's Lost Rib
					i(277247),	-- Mug of Muddled Memories
					i(277255),	-- Misplaced Shooter
				},
			}),
			q(99156, {	-- Rear Guard Patrol (2/2)
				["sourceQuest"] = 356,	-- Rear Guard Patrol
				["qg"] = 1495,	-- Deathguard Linnea
				["coord"] = { 65.4, 60.2, MAP.TIRISFAL_GLADES },
				["timeline"] = { TIMELINE.ADDED_1_60_1 },
				["races"] = { ORC, UNDEAD },
				["lvl"] = 6,
				["groups"] = {
					objective(1, {	-- 0/1 Riptear's Heart
						["provider"] = { "i", 286326 },	-- Riptear's Heart
						["coord"] = { 83.9, 44.0, MAP.TIRISFAL_GLADES },
						["cr"] = 276020,	-- Riptear
					}),
					i(286742),	-- Riptear's Cleaver
					i(286743),	-- Riptear's Spare Arm
					i(286744),	-- Thrice-Stitched Flesh
				},
			}),
			q(96898, {	-- Remnants of War
				["qg"] = 267009,	-- Hadric Harlson
				["coord"] = { 65.8, 61.0, MAP.TIRISFAL_GLADES },
				["timeline"] = { TIMELINE.ADDED_1_60_1 },
				["races"] = { ORC, UNDEAD, TROLL },
				["lvl"] = 10,
				["groups"] = {
					objective(1, {	-- 0/12 Necrotic Crystal Fragment
						["providers"] = {
							{ "i", 275851 },	-- Necrotic Crystal Fragment
							{ "o", 656366 },	-- Naxxramas Crystal Fragment
						},
						["coord"] = { 69.2, 66.0, MAP.TIRISFAL_GLADES },
						["crs"] = {
							267006,	-- Dark Neophyte
							275437,	-- Dark Enforcer
						},
					}),
				},
			}),
			q(99144, {	-- Seeking Refuge
				["qg"] = 275954,	-- Bareth Dawnstone
				["coord"] = { 32.0, 46.2, MAP.TIRISFAL_GLADES },
				["timeline"] = { TIMELINE.ADDED_1_60_1 },
				["races"] = { UNDEAD },
				["lvl"] = 5,
				["groups"] = {
					objective(1, {	-- Escort Bareth Dawnstone out of Crusader's Outpost
						["provider"] = { "n", 275954 },	-- Bareth Dawnstone
					}),
				},
			}),
			q(96895, {	-- The Argent Emissary
				["qg"] = 1738,	-- Deathguard Terrence
				["coord"] = { 61.4, 53.4, MAP.TIRISFAL_GLADES },
				["timeline"] = { TIMELINE.ADDED_1_60_1 },
				["races"] = HORDE_ONLY,
				["lvl"] = 10,
			}),
			q(96897, {	-- The Cult of the Damned
				["qg"] = 267009,	-- Hadric Harlson
				["coord"] = { 65.8, 61.0, MAP.TIRISFAL_GLADES },
				["timeline"] = { TIMELINE.ADDED_1_60_1 },
				["races"] = { ORC, UNDEAD, TROLL },
				["lvl"] = 10,
				["groups"] = {
					objective(1, {	-- 0/8 Dark Neophyte slain
						["provider"] = { "n", 267006 },	-- Dark Neophyte
						["coord"] = { 68.8, 64.6, MAP.TIRISFAL_GLADES },
					}),
					objective(2, {	-- 0/8 Dark Enforcer slain
						["provider"] = { "n", 275437 },	-- Dark Enforcer
						["coord"] = { 68.0, 64.6, MAP.TIRISFAL_GLADES },
					}),
				},
			}),
			q(96607, {	-- The Great Outdoors [Tirisfal Glades]
				altQuests = { 95998, 96101, 96604, 96605, 96606, 96608 },
				["sourceQuest"] = 96656,	-- The Adventurer [Tirisfal Glades]
				["qg"] = 265812,	-- Eleanor Shackleton <Adventurer>
				["coord"] = { 57.3, 55.5, MAP.TIRISFAL_GLADES },
				["timeline"] = { TIMELINE.ADDED_1_60_1 },
				["races"] = HORDE_ONLY,
				["lvl"] = 4,
			}),
			q(86784, {	-- Sticks and Bones
				["qg"] = 1742,	-- Deathguard Bartholomew
				["qi"] = 279937,	-- Collecting Basket
				["coord"] = { 58.3, 50.4, MAP.TIRISFAL_GLADES },
				["timeline"] = { TIMELINE.ADDED_1_60_1 },
				["races"] = HORDE_ONLY,
				["lvl"] = 4,
				["groups"] = {
					objective(1, {	-- Dry Branch
						["providers"] = {
							{ "i", 279991 },	-- Dry Branch
							{ "o", 671154 },	-- Dry Branch
						},
					}),
					objective(2, {	-- Deliver Dry Branches to Eleanor Shackleton
						["provider"] = { "n", 265812 },	-- Eleanor Shackleton
						["coord"] = { 57.3, 55.5, MAP.TIRISFAL_GLADES },
					}),
					i(279939),	-- Collecting Basket
				},
			}),
			q(95314, {	-- That Shadowvale Green Elixir
				["qg"] = 2132,	-- Carolai Anise
				["coord"] = { 59.4, 52.3, MAP.TIRISFAL_GLADES },
				["timeline"] = { TIMELINE.ADDED_1_60_1 },
				["races"] = HORDE_ONLY,
				["lvl"] = 7,
				["groups"] = {
					objective(1, {	-- Bottle of Whispering Elixir
						["providers"] = {
							{ "i", 268801 },	-- Bottle of Whispering Elixir
							{ "o", 630871 },	-- Bottle
							{ "o", 630885 },	-- Bottle
						},
					}),
				},
			}),
			q(99134, {	-- Discipline
				["qg"] = 1515,	-- Executor Zygand
				["qi"] = 286176,	-- Executor's Motivator
				["coord"] = { 60.6, 51.7, MAP.TIRISFAL_GLADES },
				["timeline"] = { TIMELINE.ADDED_1_60_1 },
				["races"] = HORDE_ONLY,
				["lvl"] = 4,
				["groups"] = {
					objective(1, {	-- Deathguards motivated
						["providers"] = {
							{ "i", 286176 },	-- Executor's Motivator
							{ "n", 257655 },	-- Deathguard Billmuth
							{ "n", 1737 },	-- Deathguard Oliver
							{ "n", 275103 },	-- Deathguard Veteran
							{ "n", 1519 },	-- Deathguard Simmer
							{ "n", 5725 },	-- Deathguard Lundmark
							{ "n", 1742 },	-- Deathguard Bartholomew
							{ "n", 1738 },	-- Deathguard Terrence
						},
						["coords"] = {
							{ 22.0, 44.4, MAP.TIRISFAL_GLADES },	-- Deathguard Billmuth
							{ 30.9, 66.6, MAP.TIRISFAL_GLADES },	-- Deathguard Oliver
							{ 38.6, 55.6, MAP.TIRISFAL_GLADES },	-- Deathguard Veteran
							{ 40.8, 54.2, MAP.TIRISFAL_GLADES },	-- Deathguard Simmer
							{ 52.9, 55.7, MAP.TIRISFAL_GLADES },	-- Deathguard Lundmark
							{ 57.4, 49.2, MAP.TIRISFAL_GLADES },	-- Deathguard Bartholomew
							{ 61.4, 53.4, MAP.TIRISFAL_GLADES },	-- Deathguard Terrence
						},
					}),
				},
			}),
			q(99141, {	-- Patience
				["qg"] = 1515,	-- Executor Zygand
				["coord"] = { 60.6, 51.7, MAP.TIRISFAL_GLADES },
				["timeline"] = { TIMELINE.ADDED_1_60_1 },
				["races"] = HORDE_ONLY,
				["lvl"] = 4,
				["groups"] = {
					objective(1, {	-- Dillinger's Report
						["providers"] = {
							{ "i", 286200 },	-- Dillinger's Report
							{ "n", 1496 },	-- Deathguard Dillinger
						},
						["coord"] = { 58.2, 51.5, MAP.TIRISFAL_GLADES },
					}),
					objective(2, {	-- Kristof's Report
						["providers"] = {
							{ "i", 286201 },	-- Kristof's Report
							{ "n", 251001 },	-- Deathguard Kristof
						},
						["coord"] = { 65.2, 60.2, MAP.TIRISFAL_GLADES },
					}),
					objective(3, {	-- Gordo's Report
						["providers"] = {
							{ "i", 286202 },	-- Gordo's Report
							{ "n", 10666 },	-- Gordo
						},
						["coord"] = { 48.0, 55.4, MAP.TIRISFAL_GLADES },
					}),
				},
			}),
			q(99153, {	-- The One That Got Away
				["qg"] = 259190,	-- Ephram Barbaro
				["coord"] = { 20.2, 46.4, MAP.TIRISFAL_GLADES },
				["timeline"] = { TIMELINE.ADDED_1_60_1 },
				["races"] = { UNDEAD },
				["lvl"] = 10,
				["groups"] = {
					objective(1, {	-- 0/1 Glowing Crystal Fragment
						["providers"] = {
							{ "i", 286269 },	-- Glowing Crystal Fragment
							{ "o", 694895 },	-- Glowing Crystal Fragment
						},
					}),
				},
			}),
			q(99142, {	-- Tomb Weed
				["qg"] = 10665,	-- Junior Apothecary Holland
				["coord"] = { 57.5, 49.0, MAP.TIRISFAL_GLADES },
				["timeline"] = { TIMELINE.ADDED_1_60_1 },
				["races"] = { UNDEAD },
				["lvl"] = 5,
				["groups"] = {
					objective(1, {	-- 0/5 Tomb Weed
						["provider"] = { "i", 286204 },	-- Tomb Weed
					}),
				},
			}),
			q(95328, {	-- Whispering Horror Residue
				["provider"] = { "i", 268812 },	-- Whispering Horror Residue
				["cr"] = 260396,	-- Whispering Horror
				["coord"] = { 8.6, 60.2, MAP.TIRISFAL_GLADES },
				["timeline"] = { TIMELINE.ADDED_1_60_1 },
				["races"] = HORDE_ONLY,
				["lvl"] = 7,
			}),
		}),
	},
});
