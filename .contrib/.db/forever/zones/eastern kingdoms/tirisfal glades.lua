---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

maproot(MAP.EASTERN_KINGDOMS, MAP.TIRISFAL_GLADES, {
	groups = {
		m(DEATHKNELL, {
			lore = "Deathknell is a small Forsaken village nestled in a well guarded valley just north of Silverpine Forest in Tirisfal Glades which serves as the starting area for the Forsaken.",
			icon = 236457,
			zoneTextAreaIDs = {
				154,	-- Deathknell
			},
			groups = {
				n(QUESTS, {
					q(98601, {	-- A Difficult Path
						qg = 1569,	-- Shadow Priest Sarvis
						coord = { 30.8, 66.2, MAP.TIRISFAL_GLADES },
						races = { UNDEAD },
						classes = { PALADIN },
						lvl = 1,
						timeline = { TIMELINE.ADDED_1_60_1 },
						qi = 282423,	-- Consecrated Scroll (QI!)
						groups = {
							i(6060),	-- Flax Bracers
							i(2173),	-- Old Leather Belt
						},
					}),
					q(98389, {	-- A Light in the Darkness
						qg = 244808,	-- Aramis Hammerhand <Paladin Trainer>
						coord = { 31.0, 66.2, MAP.TIRISFAL_GLADES },
						races = HORDE_ONLY,
						lvl = 2,
						timeline = { TIMELINE.ADDED_1_60_1 },
					}),
					q(91208, {	-- Coming to Terms
						qg = 244808,	-- Aramis Hammerhand <Paladin Trainer>
						coord = { 31.0, 66.2, MAP.TIRISFAL_GLADES },
						races = { UNDEAD },
						classes = { PALADIN },
						lvl = 4,
						timeline = { TIMELINE.ADDED_1_60_1 },
					}),
					q(91209, {	-- Continue Your Training
						["sourceQuests"] = { 91208 },	-- Coming to Terms
						qg = 244808,	-- Aramis Hammerhand <Paladin Trainer>
						coord = { 31.0, 66.2, MAP.TIRISFAL_GLADES },
						races = { UNDEAD },
						classes = { PALADIN },
						lvl = 4,
						timeline = { TIMELINE.ADDED_1_60_1 },
						groups = {
							objective(1, {	-- Report to Shari Stilwell
								provider = { "n", 246152 },	-- Shari Stilwell <Paladin Trainer>
								coord = { 60.3, 52.7, MAP.TIRISFAL_GLADES },
							}),
						},
					}),
					q(90902, {	-- Rediscovering the Light
						["sourceQuests"] = { 91282 },	-- A Second Home
						qg = 244808,	-- Aramis Hammerhand <Paladin Trainer>
						coord = { 31.0, 66.2, MAP.TIRISFAL_GLADES },
						races = { UNDEAD },
						classes = { PALADIN },
						lvl = 2,
						timeline = { TIMELINE.ADDED_1_60_1 },
					}),
					q(96656, {	-- The Adventurer [Tirisfal Glades]
						altQuests = {
							96627,	-- The Adventurer [Elwynn Forest]
							96628,	-- The Adventurer [Dun Morogh]
							96630,	-- The Adventurer [Teldrassil]
							96638,	-- The Adventurer [Zephras Isle]
							96652,	-- The Adventurer [Durotar]
							96659,	-- The Adventurer [Mulgore]
						},
						qg = 1570,	-- Executor Arren
						coord = { 32.0, 66.0, MAP.TIRISFAL_GLADES },
						races = HORDE_ONLY,
						lvl = 4,
						isBreadcrumb = true,
						timeline = { TIMELINE.ADDED_1_60_1 },
						groups = {
							objective(1, {	-- Speak to Eleanor Shackleton
								provider = { "n", 265812 },	-- Eleanor Shackleton <Adventurer>
								coord = { 57.3, 55.5, MAP.TIRISFAL_GLADES },
							}),
						},
					}),
				}),
			},
		}),
		n(QUESTS, {
			q(94427, {	-- A Lesson in Divinity
				qg = 246378,	-- Danitha Morr
				coord = { 22.05, 44.7, MAP.TIRISFAL_GLADES },
				races = { UNDEAD },
				classes = { PALADIN },
				lvl = 12,
				timeline = { TIMELINE.ADDED_1_60_1 },
			}),
			q(94435, {	-- A Lesson in Divinity
				qg = 257648,	-- Tanis Alderwood
				coord = { 65.6, 37.8, MAP.UNDERCITY },
				races = { UNDEAD },
				classes = { PALADIN },
				lvl = 12,
				timeline = { TIMELINE.ADDED_1_60_1 },
			}),
			q(94436, {	-- A Lesson in Divinity
				["sourceQuests"] = { 94435 },	-- A Lesson in Divinity
				qg = 246378,	-- Danitha Morr
				coord = { 22.05, 44.7, MAP.TIRISFAL_GLADES },
				races = { UNDEAD },
				classes = { PALADIN },
				lvl = 12,
				timeline = { TIMELINE.ADDED_1_60_1 },
			}),
			q(94438, {	-- A Lesson in Divinity
				["sourceQuests"] = { 94436 },	-- A Lesson in Divinity
				qg = 257655,	-- Deathguard Billmuth
				coord = { 22.0, 44.6, MAP.TIRISFAL_GLADES },
				traces = { UNDEAD },
				classes = { PALADIN },
				lvl = 12,
				timeline = { TIMELINE.ADDED_1_60_1 },
			}),
			q(94440, {	-- A Lesson in Divinity
				["sourceQuests"] = { 94438 },	-- A Lesson in Divinity
				qg = 257663,	-- Deathguard Falgan
				coord = { 86.64, 47.63, MAP.TIRISFAL_GLADES },
				races = { UNDEAD },
				classes = { PALADIN },
				lvl = 12,
				timeline = { TIMELINE.ADDED_1_60_1 },
				groups = {
					objective(1, {	-- Scarlet Crusade Attack Plans
						provider = { "i", 264693 },	-- Scarlet Crusade Attack Plans (QI!)
					}),
				},
			}),
			q(94441, {	-- A Lesson in Divinity
				["sourceQuests"] = { 94440 },	-- A Lesson in Divinity
				qg = 257655,	-- Deathguard Billmuth
				coord = { 21.95, 44.5, MAP.TIRISFAL_GLADES },
				races = { UNDEAD },
				classes = { PALADIN },
				lvl = 12,
				timeline = { TIMELINE.ADDED_1_60_1 },
			}),
			q(96896, {	-- A Righteous Cause
				sourceQuest = 96899,	-- Bandarion Keep
				qg = 267008,	-- Leonid Barthalomew the Revered <The Argent Dawn>
				coord = { 22.0, 44.8, MAP.TIRISFAL_GLADES },
				races = { UNDEAD },
				lvl = 10,
				timeline = { TIMELINE.ADDED_1_60_1 },
			}),
			q(91282, {	-- A Second Home
				qg = 246152,	-- Shari Stilwell <Paladin Trainer>
				coord = { 60.25, 52.63, MAP.TIRISFAL_GLADES },
				races = { UNDEAD },
				classes = { PALADIN },
				lvl = 8,
				timeline = { TIMELINE.ADDED_1_60_1 },
			}),
			q(95803, {	-- A Token of Good Faith
				qg = 246378,	-- Danitha Morr
				coord = { 22.05, 44.7, MAP.TIRISFAL_GLADES },
				races = { UNDEAD },
				classes = { PALADIN },
				lvl = 9,
				timeline = { TIMELINE.ADDED_1_60_1 },
				qi = 270436,	-- Rudolph Gelhardt's Head (QI!)
			}),
			q(99152, {	-- As Above, So Below
				qg = 246389,	-- Hilda the Breaker <Paladin Trainer>
				coord = { 22.0, 47.2, MAP.TIRISFAL_GLADES },
				races = { UNDEAD },
				lvl = 10,
				timeline = { TIMELINE.ADDED_1_60_1 },
				groups = {
					objective(1, {	-- 0/6 Faintly Glowing Bone
						provider = { "i", 286259 },	-- Faintly Glowing Bone (QI!)
						crs = {
							260428,	-- Shadowvale Lurcher
							260430,	-- Shadowvale Mystic
							260432,	-- Shadowvale Mystic
						},
					}),
				},
			}),
			q(96899, {	-- Bandarion Keep
				qg = 267009,	-- Hadric Harlson <The Argent Dawn>
				coord = { 65.8, 61.0, MAP.TIRISFAL_GLADES },
				races = { ORC, UNDEAD },
				lvl = 10,
				timeline = { TIMELINE.ADDED_1_60_1 },
			}),
			q(97951, {	-- Camping 101: Alchemy [Tirisfal Glades]
				sourceQuest = 96607,	-- The Great Outdoors [Tirisfal Glades]
				altQuests = {
					96045,	-- Camping 101: Alchemy [Dun Morogh]
					97899,	-- Camping 101: Alchemy [Durotar]
					97915,	-- Camping 101: Alchemy [Elwynn Forest]
					97927,	-- Camping 101: Alchemy [Mulgore]
					97938,	-- Camping 101: Alchemy [Teldrassil]
					97963,	-- Camping 101: Alchemy
				},
				qg = 265812,	-- Eleanor Shackleton <Adventurer>
				coord = { 57.2, 55.6, MAP.TIRISFAL_GLADES },
				requireSkill = ALCHEMY,
				races = HORDE_ONLY,
				lvl = 4,
				lockCriteria = { 1, "spellID", 1230564 },
				timeline = { TIMELINE.ADDED_1_60_1 },
				groups = {
					recipe(1230564),	-- Alchemy: Mana Well
				},
			}),
			q(97952, {	-- Camping 101: Blacksmithing [Tirisfal Glades]
				sourceQuest = 96607,	-- The Great Outdoors [Tirisfal Glades]
				altQuests = {
					96044,	-- Camping 101: Blacksmithing [Dun Morogh]
					97900,	-- Camping 101: Blacksmithing [Durotar]
					97916,	-- Camping 101: Blacksmithing [Elwynn Forest]
					97928,	-- Camping 101: Blacksmithing [Mulgore]
					97939,	-- Camping 101: Blacksmithing [Teldrassil]
					97964,	-- Camping 101: Blacksmithing
				},
				qg = 265812,	-- Eleanor Shackleton <Adventurer>
				coord = { 57.2, 55.6, MAP.TIRISFAL_GLADES },
				maps = { MAP.UNDERCITY },
				requireSkill = BLACKSMITHING,
				races = HORDE_ONLY,
				lvl = 4,
				lockCriteria = { 1, "spellID", 1230171 },
				timeline = { TIMELINE.ADDED_1_60_1 },
				groups = {
					recipe(1230171),	-- Blacksmithing: Sharpening Wheel
				},
			}),
			q(96658, {	-- Camping 101: Cooking [Tirisfal Glades]
				sourceQuest = 96607,	-- The Great Outdoors [Tirisfal Glades]
				altQuests = {
					96626,	-- Camping 101: Cooking [Elwynn Forest]
					96629,	-- Camping 101: Cooking [Dun Morogh]
					96634,	-- Camping 101: Cooking [Teldrassil]
					96646,	-- Camping 101: Cooking
					96655,	-- Camping 101: Cooking [Durotar]
					96661,	-- Camping 101: Cooking [Mulgore]
				},
				qg = 265812,	-- Eleanor Shackleton <Adventurer>
				coord = { 57.3, 55.5, MAP.TIRISFAL_GLADES },
				races = HORDE_ONLY,
				lvl = 4,
				timeline = { TIMELINE.ADDED_1_60_1 },
				groups = {
					objective(1, {	-- Learn Cooking from William Pickman
						provider = { "n", 265944 },	-- William Pickman <Cooking Trainer>
						coord = { 61.8, 51.5, MAP.TIRISFAL_GLADES },
					}),
				},
			}),
			q(97953, {	-- Camping 101: Enchanting [Tirisfal Glades]
				sourceQuest = 96607,	-- The Great Outdoors [Tirisfal Glades]
				altQuests = {
					96059,	-- Camping 101: Enchanting [Dun Morogh]
					97901,	-- Camping 101: Enchanting [Durotar]
					97917,	-- Camping 101: Enchanting [Elwynn Forest]
					97929,	-- Camping 101: Enchanting [Mulgore]
					97940,	-- Camping 101: Enchanting [Teldrassil]
					98284,	-- Camping 101: Enchanting
					98286,	-- Camping 101: Enchanting
				},
				qg = 265812,	-- Eleanor Shackleton <Adventurer>
				coord = { 57.2, 55.6, MAP.TIRISFAL_GLADES },
				requireSkill = ENCHANTING,
				races = HORDE_ONLY,
				lvl = 4,
				lockCriteria = { 1, "spellID", 1230643 },
				timeline = { TIMELINE.ADDED_1_60_1 },
				groups = {
					recipe(1230643),	-- Enchanting: Enchanted Lute
				},
			}),
			q(97954, {	-- Camping 101: Engineering [Tirisfal Glades]
				sourceQuest = 96607,	-- The Great Outdoors [Tirisfal Glades]
				altQuests = {
					96058,	-- Camping 101: Engineering [Dun Morogh]
					97902,	-- Camping 101: Engineering [Durotar]
					97918,	-- Camping 101: Engineering [Elwynn Forest]
					97930,	-- Camping 101: Engineering [Mulgore]
					97941,	-- Camping 101: Engineering [Teldrassil]
					98285,	-- Camping 101: Engineering
					98287,
				},
				qg = 265812,	-- Eleanor Shackleton <Adventurer>
				coord = { 57.2, 55.6, MAP.TIRISFAL_GLADES },
				maps = { MAP.UNDERCITY },
				requireSkill = ENGINEERING,
				races = HORDE_ONLY,
				lvl = 4,
				lockCriteria = { 1, "spellID", 1230656 },
				timeline = { TIMELINE.ADDED_1_60_1 },
				groups = {
					recipe(1230656),	-- Engineering: Reagent Bot
				},
			}),
			q(97955, {	-- Camping 101: First Aid [Tirisfal Glades]
				sourceQuest = 96607,	-- The Great Outdoors [Tirisfal Glades]
				altQuests = {
					96047,	-- Camping 101: First Aid [Dun Morogh]
					97903,	-- Camping 101: First Aid [Durotar]
					97919,	-- Camping 101: First Aid [Elwynn Forest]
					97931,	-- Camping 101: First Aid [Mulgore]
					97942,	-- Camping 101: First Aid [Teldrassil]
					97965,	-- Camping 101: First Aid
				},
				qg = 265812,	-- Eleanor Shackleton <Adventurer>
				coord = { 57.2, 55.6, MAP.TIRISFAL_GLADES },
				requireSkill = FIRST_AID,
				races = HORDE_ONLY,
				lvl = 4,
				lockCriteria = { 1, "spellID", 1230117 },
				timeline = { TIMELINE.ADDED_1_60_1 },
				groups = {
					recipe(1230117),	-- First Aid: First Aid Kit
				},
			}),
			q(97956, {	-- Camping 101: Fishing [Tirisfal Glades]
				sourceQuest = 96607,	-- The Great Outdoors [Tirisfal Glades]
				altQuests = {
					96050,	-- Camping 101: Fishing [Dun Morogh]
					97904,	-- Camping 101: Fishing [Durotar]
					97920,	-- Camping 101: Fishing [Elwynn Forest]
					97932,	-- Camping 101: Fishing [Mulgore]
					97943,	-- Camping 101: Fishing [Teldrassil]
					97967,	-- Camping 101: Fishing
				},
				qg = 265812,	-- Eleanor Shackleton <Adventurer>
				coord = { 57.2, 55.6, MAP.TIRISFAL_GLADES },
				requireSkill = FISHING,
				races = HORDE_ONLY,
				lvl = 4,
				lockCriteria = { 1, "spellID", 1229745 },
				timeline = { TIMELINE.ADDED_1_60_1 },
				groups = {
					recipe(1229745),	-- Fishing: Fish Bowl
				},
			}),
			q(97957, {	-- Camping 101: Herbalism [Tirisfal Glades]
				sourceQuest = 96607,	-- The Great Outdoors [Tirisfal Glades]
				altQuests = {
					96055,	-- Camping 101: Herbalism [Dun Morogh]
					97905,	-- Camping 101: Herbalism [Durotar]
					97921,	-- Camping 101: Herbalism [Elwynn Forest]
					97933,	-- Camping 101: Herbalism [Mulgore]
					97944,	-- Camping 101: Herbalism [Teldrassil]
					97968,	-- Camping 101: Herbalism
				},
				qg = 265812,	-- Eleanor Shackleton <Adventurer>
				coord = { 57.2, 55.6, MAP.TIRISFAL_GLADES },
				requireSkill = HERBALISM,
				races = HORDE_ONLY,
				lvl = 4,
				lockCriteria = { 1, "spellID", 1229705 },
				timeline = { TIMELINE.ADDED_1_60_1 },
				groups = {
					recipe(1229705),	-- Herbalism: Incense Candle
				},
			}),
			q(97958, {	-- Camping 101: Leatherworking [Tirisfal Glades]
				sourceQuest = 96607,	-- The Great Outdoors [Tirisfal Glades]
				altQuests = {
					96031,	-- Camping 101: Leatherworking [Dun Morogh]
					97906,	-- Camping 101: Leatherworking [Durotar]
					97922,	-- Camping 101: Leatherworking [Elwynn Forest]
					97934,	-- Camping 101: Leatherworking [Mulgore]
					97946,	-- Camping 101: Leatherworking [Teldrassil]
					97969,	-- Camping 101: Leatherworking
				},
				qg = 265812,	-- Eleanor Shackleton <Adventurer>
				coord = { 57.2, 55.6, MAP.TIRISFAL_GLADES },
				requireSkill = LEATHERWORKING,
				races = HORDE_ONLY,
				lvl = 4,
				lockCriteria = { 1, "spellID", 1229432 },
				timeline = { TIMELINE.ADDED_1_60_1 },
				groups = {
					recipe(1229432),	-- Leatherworking: Camp Tent
				},
			}),
			q(97959, {	-- Camping 101: Mining [Tirisfal Glades]
				sourceQuest = 96607,	-- The Great Outdoors [Tirisfal Glades]
				altQuests = {
					96046,	-- Camping 101: Mining [Dun Morogh]
					97907,	-- Camping 101: Mining [Durotar]
					97923,	-- Camping 101: Mining [Elwynn Forest]
					97935,	-- Camping 101: Mining [Mulgore]
					97948,	-- Camping 101: Mining [Teldrassil]
					97970,	-- Camping 101: Mining
				},
				qg = 265812,	-- Eleanor Shackleton <Adventurer>
				coord = { 57.2, 55.6, MAP.TIRISFAL_GLADES },
				maps = { MAP.UNDERCITY },
				requireSkill = MINING,
				races = HORDE_ONLY,
				lvl = 4,
				lockCriteria = { 1, "spellID", 1230161 },
				timeline = { TIMELINE.ADDED_1_60_1 },
				groups = {
					recipe(1230161),	-- Mining: Lodestone
				},
			}),
			q(97960, {	-- Camping 101: Skinning [Tirisfal Glades]
				sourceQuest = 96607,	-- The Great Outdoors [Tirisfal Glades]
				altQuests = {
					96056,	-- Camping 101: Skinning [Dun Morogh]
					97908,	-- Camping 101: Skinning [Durotar]
					97924,	-- Camping 101: Skinning [Elwynn Forest]
					97936,	-- Camping 101: Skinning [Mulgore]
					97949,	-- Camping 101: Skinning [Teldrassil]
					97971,	-- Camping 101: Skinning
				},
				qg = 265812,	-- Eleanor Shackleton <Adventurer>
				coord = { 57.2, 55.6, MAP.TIRISFAL_GLADES },
				requireSkill = SKINNING,
				races = HORDE_ONLY,
				lvl = 4,
				lockCriteria = { 1, "spellID", 1229517 },
				timeline = { TIMELINE.ADDED_1_60_1 },
				groups = {
					recipe(1229517),	-- Skinning: Camp Chair
				},
			}),
			q(97961, {	-- Camping 101: Tailoring [Tirisfal Glades]
				sourceQuest = 96607,	-- The Great Outdoors [Tirisfal Glades]
				altQuests = {
					96057,	-- Camping 101: Tailoring [Dun Morogh]
					96102,	-- Camping 101: Tailoring [Durotar]
					97925,	-- Camping 101: Tailoring [Elwynn Forest]
					97937,	-- Camping 101: Tailoring [Mulgore]
					97950,	-- Camping 101: Tailoring [Teldrassil]
					97972,	-- Camping 101: Tailoring
					97973,	-- Camping 101: Tailoring
				},
				qg = 265812,	-- Eleanor Shackleton <Adventurer>
				coord = { 57.2, 55.6, MAP.TIRISFAL_GLADES },
				requireSkill = TAILORING,
				races = HORDE_ONLY,
				lvl = 4,
				lockCriteria = { 1, "spellID", 1229504 },
				timeline = { TIMELINE.ADDED_1_60_1 },
				groups = {
					recipe(1263425),	-- Tailoring: Camp Chair
				},
			}),
			q(91858, {	-- Diplomatic Incident
				qg = 246378,	-- Danitha Morr
				coord = { 22.05, 44.7, MAP.TIRISFAL_GLADES },
				races = { UNDEAD },
				classes = { PALADIN },
				lvl = 18,
				timeline = { TIMELINE.ADDED_1_60_1 },
			}),
			q(99134, {	-- Discipline
				qg = 1515,	-- Executor Zygand
				coord = { 60.6, 51.7, MAP.TIRISFAL_GLADES },
				races = HORDE_ONLY,
				lvl = 4,
				timeline = { TIMELINE.ADDED_1_60_1 },
				qi = 286176,	-- Executor's Motivator (QI!)
				groups = {
					objective(1, {	-- Deathguards motivated
						providers = {
							{ "i", 286176 },	-- Executor's Motivator (QI!)
							{ "n", 257655 },	-- Deathguard Billmuth
							{ "n", 1737 },	-- Deathguard Oliver
							{ "n", 275103 },	-- Deathguard Veteran
							{ "n", 1519 },	-- Deathguard Simmer
							{ "n", 5725 },	-- Deathguard Lundmark
							{ "n", 1742 },	-- Deathguard Bartholomew
							{ "n", 1738 },	-- Deathguard Terrence
						},
						coords = {
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
			q(97558, {	-- Hides for the Forsaken
				qg = 3549,	-- Shelene Rhobart <Journeyman Leatherworker>
				coord = { 65.4, 60.0, MAP.TIRISFAL_GLADES },
				races = { ORC, UNDEAD },
				lvl = 6,
				timeline = { TIMELINE.ADDED_1_60_1 },
				groups = {
					objective(1, {	-- 0/8 Duskbat Wing Membrane
						provider = { "i", 278242 },	-- Duskbat Wing Membrane (QI!)
						crs = {
							1553,	-- Greater Duskbat
							1554,	-- Vampiric Duskbat
						},
					}),
					objective(2, {	-- 0/6 Darkhound Hide
						provider = { "i", 278243 },	-- Darkhound Hide (QI!)
						crs = {
							1547,	-- Decrepit Darkhound
							1548,	-- Cursed Darkhound
						},
					}),
					objective(3, {	-- 0/3 Vile Fin Murloc Skin
						provider = { "i", 278244 },	-- Vile Fin Murloc Skin (QI!)
						crs = {
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
				sourceQuest = 96896,	-- A Righteous Cause
				qg = 267008,	-- Leonid Barthalomew the Revered <The Argent Dawn>
				coord = { 22.0, 44.8, MAP.TIRISFAL_GLADES },
				races = { UNDEAD },
				lvl = 10,
				timeline = { TIMELINE.ADDED_1_60_1 },
				qi = 282065,	-- Sealed Letter (QI!)
				groups = {
					i(282064),	-- Tim's Lost Rib
					i(277247),	-- Mug of Muddled Memories
					i(277255),	-- Misplaced Shooter
				},
			}),
			q(91316, {	-- Making Repairs
				qg = 246393,	-- Jorin Croge
				coord = { 22.65, 44.77, MAP.TIRISFAL_GLADES },
				races = { UNDEAD },
				classes = { PALADIN },
				lvl = 8,
				timeline = { TIMELINE.ADDED_1_60_1 },
				groups = {
					objective(1, {	-- Sturdy Lumber
						provider = { "i", 246213 },	-- Sturdy Lumber (QI!)
					}),
					i(246265),	-- Salvaged Wooden Tower Shield
				},
			}),
			q(91285, {	-- Murlocs at the Gates
				qg = 246349,	-- Breton Samuels
				coord = { 21.85, 45.31, MAP.TIRISFAL_GLADES },
				races = { UNDEAD },
				classes = { PALADIN },
				lvl = 7,
				timeline = { TIMELINE.ADDED_1_60_1 },
				groups = {
					objective(1, {	-- Vile Fin Attacker
						provider = { "n", 250283 },	-- Vile Fin Attacker
					}),
					objective(2, {	-- Vile Fin Seer
						provider = { "n", 250282 },	-- Vile Fin Seer
					}),
					i(246164),	-- Skullthumper
					i(246165),	-- Driftwood Smasher
				},
			}),
			q(99141, {	-- Patience
				qg = 1515,	-- Executor Zygand
				coord = { 60.6, 51.7, MAP.TIRISFAL_GLADES },
				races = HORDE_ONLY,
				lvl = 4,
				timeline = { TIMELINE.ADDED_1_60_1 },
				groups = {
					objective(1, {	-- Dillinger's Report
						providers = {
							{ "i", 286200 },	-- Dillinger's Report (QI!)
							{ "n", 1496 },	-- Deathguard Dillinger
						},
						coord = { 58.2, 51.5, MAP.TIRISFAL_GLADES },
					}),
					objective(2, {	-- Kristof's Report
						providers = {
							{ "i", 286201 },	-- Kristof's Report (QI!)
							{ "n", 251001 },	-- Deathguard Kristof
						},
						coord = { 65.2, 60.2, MAP.TIRISFAL_GLADES },
					}),
					objective(3, {	-- Gordo's Report
						providers = {
							{ "i", 286202 },	-- Gordo's Report (QI!)
							{ "n", 10666 },	-- Gordo
						},
						coord = { 48.0, 55.4, MAP.TIRISFAL_GLADES },
					}),
				},
			}),
			q(99156, {	-- Rear Guard Patrol (2/2)
				sourceQuest = 356,	-- Rear Guard Patrol
				qg = 1495,	-- Deathguard Linnea
				coord = { 65.4, 60.2, MAP.TIRISFAL_GLADES },
				races = { ORC, UNDEAD },
				lvl = 6,
				timeline = { TIMELINE.ADDED_1_60_1 },
				groups = {
					objective(1, {	-- 0/1 Riptear's Heart
						provider = { "i", 286326 },	-- Riptear's Heart (QI!)
						coord = { 83.9, 44.0, MAP.TIRISFAL_GLADES },
						cr = 276020,	-- Riptear
					}),
					i(286742),	-- Riptear's Cleaver
					i(286743),	-- Riptear's Spare Arm
					i(286744),	-- Thrice-Stitched Flesh
				},
			}),
			q(96898, {	-- Remnants of War
				qg = 267009,	-- Hadric Harlson <The Argent Dawn>
				coord = { 65.8, 61.0, MAP.TIRISFAL_GLADES },
				races = { ORC, UNDEAD, TROLL },
				lvl = 10,
				timeline = { TIMELINE.ADDED_1_60_1 },
				groups = {
					objective(1, {	-- 0/12 Necrotic Crystal Fragment
						providers = {
							{ "i", 275851 },	-- Necrotic Crystal Fragment (QI!)
							{ "o", 656366 },	-- Naxxramas Crystal Fragment
						},
						coord = { 69.2, 66.0, MAP.TIRISFAL_GLADES },
						crs = {
							267006,	-- Dark Neophyte
							275437,	-- Dark Enforcer
						},
					}),
				},
			}),
			q(99144, {	-- Seeking Refuge
				qg = 275954,	-- Bareth Dawnstone
				coord = { 32.0, 46.2, MAP.TIRISFAL_GLADES },
				races = { UNDEAD },
				lvl = 5,
				timeline = { TIMELINE.ADDED_1_60_1 },
				groups = {
					objective(1, {	-- Escort Bareth Dawnstone out of Crusader's Outpost
						provider = { "n", 275954 },	-- Bareth Dawnstone
					}),
				},
			}),
			q(86784, {	-- Sticks and Bones
				qg = 1742,	-- Deathguard Bartholomew
				coord = { 58.3, 50.4, MAP.TIRISFAL_GLADES },
				races = HORDE_ONLY,
				lvl = 4,
				timeline = { TIMELINE.ADDED_1_60_1 },
				qi = 279937,	-- Collecting Basket (QI!)
				groups = {
					objective(1, {	-- Dry Branch
						providers = {
							{ "i", 279991 },	-- Dry Branch (QI!)
							{ "o", 671154 },	-- Dry Branch
						},
					}),
					objective(2, {	-- Deliver Dry Branches to Eleanor Shackleton
						provider = { "n", 265812 },	-- Eleanor Shackleton <Adventurer>
						coord = { 57.3, 55.5, MAP.TIRISFAL_GLADES },
					}),
					i(279939),	-- Collecting Basket
				},
			}),
			q(95314, {	-- That Shadowvale Green Elixir
				qg = 2132,	-- Carolai Anise <Journeyman Alchemist>
				coord = { 59.4, 52.3, MAP.TIRISFAL_GLADES },
				races = HORDE_ONLY,
				lvl = 7,
				timeline = { TIMELINE.ADDED_1_60_1 },
				groups = {
					objective(1, {	-- Bottle of Whispering Elixir
						providers = {
							{ "i", 268801 },	-- Bottle of Whispering Elixir (QI!)
							{ "o", 630871 },	-- Bottle
							{ "o", 630885 },	-- Bottle
						},
					}),
				},
			}),
			q(96895, {	-- The Argent Emissary
				qg = 1738,	-- Deathguard Terrence
				coord = { 61.4, 53.4, MAP.TIRISFAL_GLADES },
				races = HORDE_ONLY,
				lvl = 10,
				timeline = { TIMELINE.ADDED_1_60_1 },
			}),
			q(96897, {	-- The Cult of the Damned
				qg = 267009,	-- Hadric Harlson <The Argent Dawn>
				coord = { 65.8, 61.0, MAP.TIRISFAL_GLADES },
				races = { ORC, UNDEAD, TROLL },
				lvl = 10,
				timeline = { TIMELINE.ADDED_1_60_1 },
				groups = {
					objective(1, {	-- 0/8 Dark Neophyte slain
						provider = { "n", 267006 },	-- Dark Neophyte <Cult of the Damned>
						coord = { 68.8, 64.6, MAP.TIRISFAL_GLADES },
					}),
					objective(2, {	-- 0/8 Dark Enforcer slain
						provider = { "n", 275437 },	-- Dark Enforcer <Cult of the Damned>
						coord = { 68.0, 64.6, MAP.TIRISFAL_GLADES },
					}),
				},
			}),
			q(96607, {	-- The Great Outdoors [Tirisfal Glades]
				sourceQuest = 96656,	-- The Adventurer [Tirisfal Glades]
				altQuests = {
					95998,	-- The Great Outdoors [Elwynn Forest]
					96101,	-- The Great Outdoors [Zephras Isle]
					96604,	-- The Great Outdoors [Durotar]
					96605,	-- The Great Outdoors [Mulgore]
					96606,	-- The Great Outdoors [Teldrassil]
					96608,	-- The Great Outdoors [Dun Morogh]
				},
				qg = 265812,	-- Eleanor Shackleton <Adventurer>
				coord = { 57.3, 55.5, MAP.TIRISFAL_GLADES },
				races = HORDE_ONLY,
				lvl = 4,
				timeline = { TIMELINE.ADDED_1_60_1 },
			}),
			q(99153, {	-- The One That Got Away
				qg = 259190,	-- Ephram Barbaro <Stable Master>
				coord = { 20.2, 46.4, MAP.TIRISFAL_GLADES },
				races = { UNDEAD },
				lvl = 10,
				timeline = { TIMELINE.ADDED_1_60_1 },
				groups = {
					objective(1, {	-- 0/1 Glowing Crystal Fragment
						providers = {
							{ "i", 286269 },	-- Glowing Crystal Fragment (QI!)
							{ "o", 694895 },	-- Glowing Crystal Fragment
						},
					}),
				},
			}),
			q(91317, {	-- The Tarnished
				qg = 246378,	-- Danitha Morr
				coord = { 22.05, 44.7, MAP.TIRISFAL_GLADES },
				races = { UNDEAD },
				classes = { PALADIN },
				lvl = 9,
				timeline = { TIMELINE.ADDED_1_60_1 },
				groups = {
					objective(1, {	-- Tarnished Drudge
						provider = { "n", 259434 },	-- Tarnished Drudge
					}),
					objective(2, {	-- Tarnished Zealot
						provider = { "n", 259433 },	-- Tarnished Zealot
					}),
					objective(3, {	-- Rudolph Gelhardt's Head
						provider = { "i", 270435 },	-- Rudolph Gelhardt's Head (QI!)
					}),
				},
			}),
			q(99142, {	-- Tomb Weed
				qg = 10665,	-- Junior Apothecary Holland <Royal Apothecary Society>
				coord = { 57.5, 49.0, MAP.TIRISFAL_GLADES },
				races = { UNDEAD },
				lvl = 5,
				timeline = { TIMELINE.ADDED_1_60_1 },
				groups = {
					objective(1, {	-- 0/5 Tomb Weed
						provider = { "i", 286204 },	-- Tomb Weed (QI!)
					}),
				},
			}),
			q(95328, {	-- Whispering Horror Residue
				provider = { "i", 268812 },	-- Whispering Horror Residue (QS!)
				cr = 260396,	-- Whispering Horror
				coord = { 8.6, 60.2, MAP.TIRISFAL_GLADES },
				races = HORDE_ONLY,
				lvl = 7,
				timeline = { TIMELINE.ADDED_1_60_1 },
			}),
		}),
	},
});
