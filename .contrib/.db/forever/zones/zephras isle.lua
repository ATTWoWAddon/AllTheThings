---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

maproot(MAP.ZEPHRAS_ISLE, {
	lore = "Once a secluded island oasis in the sky, Zephras Isle now welcomes the next generation of WoW’s newest race – the Skyborne – to protect this floating island and secure its future.",
	--icon = ,	-- TODO: Add an icon for Zephras Isle
	timeline = { TIMELINE.ADDED_1_60_1 },
	maps = { 2665 },	-- Zephras Isle (Flight Path Map)
	groups = {
		n(EXPLORATION, {
			exploration(16623),	-- Shen'dar Highlands
			exploration(16624),	-- Shen'dar Village
			exploration(16622),	-- Thendal Grove
			exploration(17678),	-- Thendal Standing Stones
			exploration(16635),	-- Thendal Village
		}),
		n(FACTIONS, {
			faction(FACTION_NIGHTCLAW_DRUIDS),
		}),
		n(QUESTS, {
			q(93746, {	-- A Firm Response
				["sourceQuest"] = 93738,	-- The Broken Construct
				["qg"] = 251968,	-- Ayessa Dawnsinger
				["coord"] = { 59.0, 79.6, MAP.ZEPHRAS_ISLE },
				["races"] = HORDE_ONLY,
				["lvl"] = 4,
				["groups"] = {
					i(263305),	-- Windshaped Shield
					i(250339),	-- Minor Mageblood Elixir
				},
			}),
			q(92708, {	-- A Grand Adventure
				["sourceQuest"] = 92700,	-- The Grand Skyseer
				["qg"] = 251968,	-- Ayessa Dawnsinger
				["coord"] = { 59.0, 79.6, MAP.ZEPHRAS_ISLE },
				["races"] = HORDE_ONLY,
				["lvl"] = 7,
			}),
			q(92709, {	-- A Grand Adventure
				["sourceQuest"] = 92699,	-- The Supreme Magister
				["qg"] = 252475,	-- Elaadrin Evengale
				["coord"] = { 66.6, 79.8, MAP.ZEPHRAS_ISLE },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 7,
				["groups"] = {
					objective(1, {	-- 0/1 Listen to Elaadrin
						["provider"] = { "n", 252475 },	-- Elaadrin Evengale
						["coord"] = { 66.5, 79.8, MAP.ZEPHRAS_ISLE },
					}),
				},
			}),
			q(93927, {	-- A Last Request
				["sourceQuest"] = 93926,	-- The Western Watch
				["qg"] = 252155,	-- Peacekeeper Vaaniel
				["coord"] = { 42.4, 62.0, MAP.ZEPHRAS_ISLE },
				["lvl"] = 5,
			}),
			q(93951, {	-- A Little Beauty
				["sourceQuests"] = {
					92514,	-- Welcome to Shen'dar Village (H)
					93461,	-- Welcome to Shen'dar Village (A)
				},
				["sourceQuestNumRequired"] = 1,
				["qg"] = 251991,	-- Taleen Shimmerthread
				["coord"] = { 44.8, 44.2, MAP.ZEPHRAS_ISLE },
				["lvl"] = 4,
			}),
			q(94413, {	-- A Magical Affront
				sourceQuest = 92596,	-- The High Order
				qg = 251903,	-- Rathiril Sunlance
				coord = { 45.0, 46.4, MAP.ZEPHRAS_ISLE },
				races = ALLIANCE_ONLY,
				lvl = 4,
				groups = {
					objective(1, {	-- 0/6 Windshaper Novice Seer defeated
						provider = { "n", 257532 },	-- Windshaper Novice Seer
					}),
					i(263428),	-- Dowsing Rod
					i(2454),	-- Elixir of Minor Strength
				},
			}),
			q(94493, {	-- A Sacrifice in Vain
				["qg"] = 257944,	-- Elegael Thornpaw
				["coord"] = { 61.6, 39.2, MAP.ZEPHRAS_ISLE },
				["lvl"] = 8,
			}),
			q(92485, {	-- A Student of Nature
				sourceQuest = 92461,	-- Harmony in Balance
				qg = 251361,	-- Rorian the Dayseeker
				qi = 282420,	-- Folder Parchment (PQI!)
				coord = { 42.1, 23.5, MAP.ZEPHRAS_ISLE },
				classes = { DRUID },
				lvl = 2,
			}),
			q(92481, {	-- A Student of the Arcane
				["qg"] = 251361,	-- Rorian the Dayseeker
				["coord"] = { 42.1, 23.5, MAP.ZEPHRAS_ISLE },
				["sourceQuest"] = 92461,	-- Harmony in Balance
				["classes"] = { MAGE },
				["races"] = { SKYBORNE_ALLIANCE },
				["lvl"] = 2,
				["groups"] = { i(282416), },	-- Glowing Recall Crystal
			}),
			q(92471, {	-- Aetheen of the Gales
				qg = 251361,	-- Rorian the Dayseeker
				coord = { 42.1, 23.5, MAP.ZEPHRAS_ISLE },
				lvl = 4,
			}),
			q(92473, {	-- Aggressive Encroachment
				sourceQuest = 92471,	-- Aetheen of the Gales
				qg = 257551,	-- Valreaa Valewind
				coord = { 42.4, 25.2, MAP.ZEPHRAS_ISLE },
				lvl = 3,
				groups = {
					objective(1, {	-- 0/6 Scrawny Ursera Claw
						provider = { "i", 251918 },	-- Scrawny Ursera Claw
						coord = { 40.4, 27.0, MAP.ZEPHRAS_ISLE },
						cr = 250926,	-- Scrawny Ursera
					}),
					i(257257),	-- Thendal Ranger's Shoes
					i(257264),	-- Thendal Ranger's Gloves
					i(257263),	-- Thendal Ranger's Belt
				},
			}),
			q(92465, {	-- Agitators
				qg = 249363,	-- Yala Windwatcher
				coord = { 47.3, 21.9, MAP.ZEPHRAS_ISLE },
				lvl = 2,
				groups = {
					objective(1, {	-- 0/7 Al'Aketh Convert
						provider = { "n", 251160 },	-- Al'Aketh Convert
					}),
					objective(2, {	-- 0/6 Roiling Winds
						provider = { "n", 251143 },	-- Roiling Winds
					}),
				},
			}),
			q(94896, {	-- Aid For The Refugees
				["qg"] = 259012,	-- Ealaane Nimbuswalker
				["coord"] = { 65.8, 74.4, MAP.ZEPHRAS_ISLE },
				["lvl"] = 8,
				["groups"] = {
					objective(1, {	-- 0/8 Abandoned Belongings
						["providers"] = {
							{ "i", 266433 },	-- Abandoned Belongings
							{ "o", 623295 },	-- Abandonded Belongings
						},
						["coord"] = { 58.0, 31.9, MAP.ZEPHRAS_ISLE },
					}),
				},
			}),
			q(98512, {	-- Al'Aketh Assassins
				["qg"] = 273017,	-- Fendaal Windstone
				["coord"] = { 56.8, 61.0, MAP.ZEPHRAS_ISLE },
				["lvl"] = 6,
			}),
			q(92544, {	-- Al'Aketh Thugs
				qg = 252095,	-- Hanaa Nightwind
				coord = { 38.2, 30.2, MAP.ZEPHRAS_ISLE },
				lvl = 2,
				groups = {
					objective(1, {	-- 0/6 Al'Aketh Brute slain
						provider = { "n", 251145 },	-- Al'Aketh Brute
					}),
					objective(2, {	-- 0/4 Al'Aketh Neophyte slain
						provider = { "n", 251448 },	-- Al'Aketh Neophyte
					}),
					objective(3, {	-- 0/1 Malduko Cloudcrush slain
						provider = { "n", 256935 },	-- Malduko Cloudcrush
						coord = { 35.6, 33.2, MAP.ZEPHRAS_ISLE },
					}),
				},
			}),
			q(92528, {	-- Among the Faithful
				["sourceQuest"] = 92529,	-- Falaath Village
				["qg"] = 257065,	-- Missionary Jasaan
				["coord"] = { 46.8, 56.2, MAP.ZEPHRAS_ISLE },
				["lvl"] = 5,
				["groups"] = {
					i(257332),	-- Stained Ritual Dagger
					i(257333),	-- Curved Scimitar
					i(273877),	-- Windswept Shortbow
				},
			}),
			q(92483, {	-- At Home in the Shadows
				["sourceQuest"] = 92461,	-- Harmony in Balance
				["qg"] = 251361,	-- Rorian the Dayseeker
				["coord"] = { 42.1, 23.5, MAP.ZEPHRAS_ISLE },
				["classes"] = { ROGUE },
				["lvl"] = 2,
			}),
			q(92834, {	-- Avenged Tenfold
				["sourceQuest"] = 92840,	-- Catching Wind
				["qg"] = 252475,	-- Elaadrin Evengale
				["coord"] = { 66.6, 79.8, MAP.ZEPHRAS_ISLE },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 6,
				["groups"] = {
					objective(1, {	-- 0/10 Al'Aketh Windstone Charm
						["provider"] = { "i", 255658 },	-- Al'Aketh Windstone Charm
						["crs"] = {
							253511,	-- Al'Aketh Pillager
							253195,	-- Al'Aketh Preacher
						},
						["coords"] = {
							{ 66.2, 62.2, MAP.ZEPHRAS_ISLE },
							{ 64.6, 62.7, MAP.ZEPHRAS_ISLE },
						},
					}),
					i(263401),	-- Martyr's Armor
					i(263402),	-- Sash of Sorrow
					i(263403),	-- Cilice of Regret
				},
			}),
			q(93740, {	-- Blood for Blood
				["sourceQuest"] = 93746,	-- A Firm Response
				["qg"] = 251968,	-- Ayessa Dawnsinger
				["coord"] = { 59.0, 79.6, MAP.ZEPHRAS_ISLE },
				["races"] = HORDE_ONLY,
				["lvl"] = 6,
			}),
			q(92679, {	-- Blood Tithe
				["qg"] = 252448,	-- Alvarion Windfield
				["coord"] = { 62.0, 73.2, MAP.ZEPHRAS_ISLE },
				["lvl"] = 5,
				["groups"] = {
					objective(1, {	-- 0/1 Find Aamelia Windfield
						["provider"] = { "n", 252800 },	-- Aamelia Windfield
						["coord"] = { 47.3, 79.6, MAP.ZEPHRAS_ISLE },
					}),
					objective(2, {	-- 0/1 Listen to Alvarion Windfield's Story (Optional)
						["provider"] = { "n", 252448 },	-- Alvarion Windfield
						["coord"] = { 62.0, 73.2, MAP.ZEPHRAS_ISLE },
					}),
				},
			}),
			q(93797, {	-- Boughs in the Wind
				["qg"] = 256507,	-- Belann Windwood
				["coord"] = { 62.8, 77.4, MAP.ZEPHRAS_ISLE },
				["classes"] = { MAGE },
				["races"] = { SKYBORNE_ALLIANCE },
				["lvl"] = 10,
				["groups"] = {
					i(263430),	-- Windbough Wand
					i(250344),	-- Elixir of Minor Spirit
				},
			}),
			q(92645, {	-- Breaking the Breaker
				["sourceQuest"] = 93320,	-- Tower Defense
				["qg"] = 252378,	-- Yorana Windyreed
				["coord"] = { 69.6, 67.0, MAP.ZEPHRAS_ISLE },
				["lvl"] = 6,
				["groups"] = {
					objective(1, {	-- 0/1 Commander Belguilos slain
						["provider"] = { "n", 252666 },	-- Commander Belguilos
						["coord"] = { 65.6, 65.5, MAP.ZEPHRAS_ISLE },
					}),
					i(263335),	-- Hunter's Cord
					i(263336),	-- Windsong Bangles
					i(263337),	-- Breaker's Gauntlets
				},
			}),
			q(93949, {	-- Bugged
				["sourceQuest"] = 93948,	-- Deliver the Signet
				["qg"] = 252383,	-- Valennia Stormfist
				["coord"] = { 66.2, 76.6, MAP.ZEPHRAS_ISLE },
				["lvl"] = 6,
				["groups"] = {
					objective(1, {	-- 0/8 Enchanted Skyhopper Exterminated
						["provider"] = { "n", 251314 },	-- Skyhopper
						["coord"] = { 61.7, 75.8, MAP.ZEPHRAS_ISLE },
					}),
				},
			}),
			q(92466, {	-- Call of Earth
				["qg"] = 251374,	-- Windshaper Boro
				["coord"] = { 42.8, 23.6, MAP.ZEPHRAS_ISLE },
				["classes"] = { SHAMAN },
				["races"] = { SKYBORNE_HORDE },
				["lvl"] = 3,
			}),
			q(92467, {	-- Call of Earth
				["sourceQuest"] = 92466,	-- Call of Earth
				["qg"] = 251374,	-- Windshaper Boro
				["coord"] = { 42.8, 23.6, MAP.ZEPHRAS_ISLE },
				["classes"] = { SHAMAN },
				["races"] = { SKYBORNE_HORDE },
				["lvl"] = 3,
			}),
			q(92468, {	-- Call of Earth
				["sourceQuest"] = 92467,	-- Call of Earth
				["qg"] = 251166,	-- Minor Manifestation of Earth
				["coord"] = { 49.6, 24.0, MAP.ZEPHRAS_ISLE },
				["classes"] = { SHAMAN },
				["races"] = { SKYBORNE_HORDE },
				["lvl"] = 3,
				["groups"] = {
					i(5175),	-- Earth Totem
				},
			}),
			q(97243, {	-- Call of Fire
				["qg"] = 252382,	-- Sessaria Skystride
				["coord"] = { 58.2, 78.4, MAP.ZEPHRAS_ISLE },
				["classes"] = { SHAMAN },
				["races"] = { SKYBORNE_HORDE },
				["lvl"] = 10,
			}),
			q(97244, {	-- Call of Fire
				["sourceQuest"] = 97243,	-- Call of Fire
				["qg"] = 268592,	-- Olariaan Swiftburn
				["coord"] = { 51.2, 86.0, MAP.ZEPHRAS_ISLE },
				["classes"] = { SHAMAN },
				["races"] = { SKYBORNE_HORDE },
				["lvl"] = 10,
			}),
			q(97245, {	-- Call of Fire
				["sourceQuest"] = 97244,	-- Call of Fire
				["qg"] = 268592,	-- Olariaan Swiftburn
				["coord"] = { 51.2, 86.0, MAP.ZEPHRAS_ISLE },
				["classes"] = { SHAMAN },
				["races"] = { SKYBORNE_HORDE },
				["lvl"] = 10,
			}),
			q(97257, {	-- Call of Fire
				["sourceQuest"] = 97245,	-- Call of Fire
				["qg"] = 268592,	-- Olariaan Swiftburn
				["coord"] = { 51.2, 86.0, MAP.ZEPHRAS_ISLE },
				["classes"] = { SHAMAN },
				["races"] = { SKYBORNE_HORDE },
				["lvl"] = 10,
				["groups"] = {
					i(5176),	-- Fire Totem
				},
			}),
			q(97963, {	-- Camping 101: Alchemy
				["sourceQuest"] = 96101,	-- The Great Outdoors [Zephras Isle]
				["qg"] = 263664,	-- Raan Wildwind
				["coord"] = { 41.6, 44.8, MAP.ZEPHRAS_ISLE },
				["requireSkill"] = ALCHEMY,
				["lvl"] = 4,
				["groups"] = { recipe(1230564), },
			}),
			q(97964, {	-- Camping 101: Blacksmithing
				["sourceQuest"] = 96101,	-- The Great Outdoors [Zephras Isle]
				["qg"] = 263664,	-- Raan Wildwind
				["coord"] = { 41.6, 44.8, MAP.ZEPHRAS_ISLE },
				["requireSkill"] = BLACKSMITHING,
				["lvl"] = 4,
				["groups"] = { recipe(1230171), },
			}),
			q(96646, {	-- Camping 101: Cooking
				["sourceQuest"] = 92470,	-- Foul Matriarch
				["qg"] = 263664,	-- Raan Wildwind
				["coord"] = { 41.6, 44.8, MAP.ZEPHRAS_ISLE },
				["lvl"] = 4,
			}),
			q(98284, {	-- Camping 101: Enchanting
				["sourceQuest"] = 96101,	-- The Great Outdoors [Zephras Isle]
				["altQuests"] = { 98286 },
				["qg"] = 263664,	-- Raan Wildwind
				["coord"] = { 41.6, 44.8, MAP.ZEPHRAS_ISLE },
				["requireSkill"] = ENCHANTING,
				["races"] = HORDE_ONLY,
				["lvl"] = 4,
				["groups"] = { recipe(1230643), },
			}),
			q(98286, {	-- Camping 101: Enchanting
				["sourceQuest"] = 96101,	-- The Great Outdoors [Zephras Isle]
				["altQuests"] = { 98284 },
				["qg"] = 263664,	-- Raan Wildwind
				["coord"] = { 41.6, 44.8, MAP.ZEPHRAS_ISLE },
				["requireSkill"] = ENCHANTING,
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 4,
				["groups"] = { recipe(1230643), },
			}),
			q(98285, {	-- Camping 101: Engineering
				["sourceQuest"] = 96101,	-- The Great Outdoors [Zephras Isle]
				["qg"] = 263664,	-- Raan Wildwind
				["coord"] = { 41.6, 44.8, MAP.ZEPHRAS_ISLE },
				["requireSkill"] = ENGINEERING,
				["lvl"] = 4,
				["groups"] = { recipe(1230656), },
			}),
			q(97965, {	-- Camping 101: First Aid
				["sourceQuest"] = 96101,	-- The Great Outdoors [Zephras Isle]
				["qg"] = 263664,	-- Raan Wildwind
				["coord"] = { 41.6, 44.8, MAP.ZEPHRAS_ISLE },
				["requireSkill"] = FIRST_AID,
				["lvl"] = 4,
				["groups"] = { recipe(1230117), },
			}),
			q(97967, {	-- Camping 101: Fishing
				["sourceQuest"] = 96101,	-- The Great Outdoors [Zephras Isle]
				["qg"] = 263664,	-- Raan Wildwind
				["coord"] = { 41.6, 44.8, MAP.ZEPHRAS_ISLE },
				["requireSkill"] = FISHING,
				["lvl"] = 4,
				["groups"] = { recipe(1229745), },
			}),
			q(97968, {	-- Camping 101: Herbalism
				["sourceQuest"] = 96101,	-- The Great Outdoors [Zephras Isle]
				["qg"] = 263664,	-- Raan Wildwind
				["coord"] = { 41.6, 44.8, MAP.ZEPHRAS_ISLE },
				["requireSkill"] = HERBALISM,
				["lvl"] = 4,
				["groups"] = { recipe(1229705), },
			}),
			q(97969, {	-- Camping 101: Leatherworking
				["sourceQuest"] = 96101,	-- The Great Outdoors [Zephras Isle]
				["qg"] = 263664,	-- Raan Wildwind
				["coord"] = { 41.6, 44.8, MAP.ZEPHRAS_ISLE },
				["requireSkill"] = LEATHERWORKING,
				["lvl"] = 4,
				["groups"] = { recipe(1229432), },
			}),
			q(97970, {	-- Camping 101: Mining
				["sourceQuest"] = 96101,	-- The Great Outdoors [Zephras Isle]
				["qg"] = 263664,	-- Raan Wildwind
				["coord"] = { 41.6, 44.8, MAP.ZEPHRAS_ISLE },
				["requireSkill"] = MINING,
				["lvl"] = 4,
				["groups"] = { recipe(1230161), },
			}),
			q(97971, {	-- Camping 101: Skinning
				["sourceQuest"] = 96101,	-- The Great Outdoors [Zephras Isle]
				["qg"] = 263664,	-- Raan Wildwind
				["coord"] = { 41.6, 44.8, MAP.ZEPHRAS_ISLE },
				["requireSkill"] = SKINNING,
				["lvl"] = 4,
				["groups"] = { recipe(1229517), },
			}),
			q(97972, {	-- Camping 101: Tailoring
				["sourceQuest"] = 96101,	-- The Great Outdoors [Zephras Isle]
				["altQuests"] = { 97973 },
				["qg"] = 263664,	-- Raan Wildwind
				["coord"] = { 41.6, 44.8, MAP.ZEPHRAS_ISLE },
				["requireSkill"] = TAILORING,
				["races"] = HORDE_ONLY,
				["lvl"] = 4,
				["groups"] = {
					recipe(1229504),	-- Faction Banner (Horde)
				},
			}),
			q(97973, {	-- Camping 101: Tailoring
				["sourceQuest"] = 96101,	-- The Great Outdoors [Zephras Isle]
				["altQuests"] = { 97972 },
				["qg"] = 263664,	-- Raan Wildwind
				["coord"] = { 41.6, 44.8, MAP.ZEPHRAS_ISLE },
				["requireSkill"] = TAILORING,
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 4,
				["groups"] = {
					recipe(1263425),	-- Faction Banner (Alliance)
				},
			}),
			q(92840, {	-- Catching Wind
				["sourceQuest"] = 99260,	-- Fillion's Mission
				["qg"] = 252475,	-- Elaadrin Evengale
				["qi"] = 254584,	-- Index Esoteria
				["coord"] = { 66.6, 79.8, MAP.ZEPHRAS_ISLE },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 5,
				["groups"] = {
					i(263404),	-- Bow of Hours
					i(3382),	-- Minor Troll's Blood Elixir
				},
			}),
			q(92460, {	-- Coming of Age
				qg = 251362,	-- Ailee Farheart
				coord = { 42.8, 23.4, MAP.ZEPHRAS_ISLE },
				groups = {
					i(264908),	-- Ancient Heirloom
				},
			}),
			q(92646, {	-- Confront Lorthuna
				["sourceQuest"] = 93958,	-- The Inner Sanctum
				["qg"] = 252383,	-- Valennia Stormfist
				["coord"] = { 65.2, 50.4, MAP.ZEPHRAS_ISLE },
				["races"] = HORDE_ONLY,
				["lvl"] = 7,
				["groups"] = {
					i(263405),	-- Belt of Blades
					i(263406),	-- Empyrean Shoes
					i(263407),	-- Empyrean Greatsword
					i(273875),	-- Empyrean Treads
				},
			}),
			q(93835, {	-- Confront Lorthuna
				["sourceQuest"] = 93958,	-- The Inner Sanctum
				["qg"] = 252383,	-- Valennia Stormfist
				["coord"] = { 65.2, 50.4, MAP.ZEPHRAS_ISLE },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 7,
				["groups"] = {
					i(263405),	-- Belt of Blades
					i(263406),	-- Empyrean Shoes
					i(263407),	-- Empyrean Greatsword
					i(273875),	-- Empyrean Treads
				},
			}),
			q(93317, {	-- Crab Season
				["qg"] = 257006,	-- Nyalah Brightfire
				["coord"] = { 60.6, 72.6, MAP.ZEPHRAS_ISLE },
				["lvl"] = 4,
				["groups"] = {
					objective(1, {	-- 0/6 Windsong Crawler Meat
						["provider"] = { "i", 257941 },	-- Windsong Crawler Meat
						["cr"] = 254588,	-- Windsong Crawler
						["coord"] = { 64.1, 61.5, MAP.ZEPHRAS_ISLE },
					}),
					i(263513),	-- Recipe Pincer Bites
					i(263512),	-- Pincer Bites
				},
			}),
			q(92703, {	-- Deliver the News
				["sourceQuest"] = 92693,	-- Standing Our Ground
				["qg"] = 252800,	-- Aamelia Windfield
				["coord"] = { 46.6, 81.8, MAP.ZEPHRAS_ISLE },
				["lvl"] = 5,
				["groups"] = {
					i(263312),	-- Planting Shovel
					i(263314),	-- Roofing Hammer
					i(263313),	-- Trusty Wrench
				},
			}),
			q(93948, {	-- Deliver the Signet
				["sourceQuest"] = 92550,	-- Havoc in the Highlands
				["qg"] = 251523,	-- Constable Aonda
				["coord"] = { 45.6, 45.4, MAP.ZEPHRAS_ISLE },
				["lvl"] = 6,
				["groups"] = {
					objective(1, {	-- Deliver the Shadowsong Family Signet to Talaanis Shadowsong in Valanaar.
						["provider"] = { "n", 252476 },	-- Talaanis Shadowsong
						["coord"] = { 66.2, 76.6, MAP.ZEPHRAS_ISLE },
					}),
				},
			}),
			q(92640, {	-- Desperate Times
				["sourceQuest"] = 94568,	-- The Cult's True Plans
				["qg"] = 252476,	-- Talaanis Shadowsong
				["coord"] = { 66.2, 76.6, MAP.ZEPHRAS_ISLE },
				["lvl"] = 6,
				["groups"] = {
					i(257344),	-- Skywatcher's Vestments
					i(257342),	-- Elite Peacekeeper's Leggings
					i(273876),	-- Broken Cultist Gloves
				},
			}),
			q(92642, {	-- Disrupting Logistics
				["sourceQuest"] = 93320,	-- Tower Defense
				["qg"] = 252378,	-- Yorana Windyreed
				["coord"] = { 69.6, 67.0, MAP.ZEPHRAS_ISLE },
				["lvl"] = 6,
				["groups"] = {
					objective(1, {	-- 0/4 Al'Aketh Healer slain
						["provider"] = { "n", 254596 },	-- Al'Aketh Healer
						["coord"] = { 65.5, 67.0, MAP.ZEPHRAS_ISLE },
					}),
					objective(2, {	-- 0/8 Al'Aketh Brawler slain
						["provider"] = { "n", 270201 },	-- Al'Aketh Brawler
						["coord"] = { 65.5, 66.6, MAP.ZEPHRAS_ISLE },
					}),
				},
			}),
			q(92464, {	-- Elemental Unrest
				sourceQuest = 92461,	-- Harmony in Balance
				qg = 251361,	-- Rorian the Dayseeker
				coord = { 42.1, 23.5, MAP.ZEPHRAS_ISLE },
				isBreadcrumb = true,
				lvl = 2,
			}),
			q(92484, {	-- Embracing the Elements
				["sourceQuest"] = 92461,	-- Harmony in Balance
				["qg"] = 251361,	-- Rorian the Dayseeker
				["coord"] = { 42.1, 23.5, MAP.ZEPHRAS_ISLE },
				["classes"] = { SHAMAN },
				["races"] = { SKYBORNE_HORDE },
				["lvl"] = 2,
			}),
			q(92529, {	-- Falaath Village
				["sourceQuest"] = 93036,	-- Infiltrating the Cult
				["qg"] = 251904,	-- Sania Silverstream
				["coord"] = { 44.8, 45.4, MAP.ZEPHRAS_ISLE },
				["lvl"] = 5,
			}),
			q(92474, {	-- Falling With Style
				qg = 263113,	-- Myriaal Mistwake
				coord = { 43.6, 24.0, MAP.ZEPHRAS_ISLE },
				races = { SKYBORNE_ALLIANCE, SKYBORNE_HORDE },
				lvl = 2,
			}),
			q(94486, {	-- Feathers for Binding
				["sourceQuest"] = 94484,	-- Unnerving Silence
				["qg"] = 257944,	-- Elegael Thornpaw
				["coord"] = { 61.6, 39.2, MAP.ZEPHRAS_ISLE },
				["lvl"] = 8,
			}),
			q(99260, {	-- Fillion's Mission
				["sourceQuest"] = 92850,	-- The Missing Scholar
				["qg"] = 253285,	-- Fillion Flamebreeze
				["coord"] = { 66.2, 79.9, MAP.ZEPHRAS_ISLE },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 5,
			}),
			q(92683, {	-- Flutterfly Dust
				["sourceQuest"] = 92679,	-- Blood Tithe
				["qg"] = 252800,	-- Aamelia Windfield
				["coord"] = { 46.6, 81.8, MAP.ZEPHRAS_ISLE },
				["lvl"] = 5,
				["groups"] = {
					objective(1, {	-- 0/5 Flutterfly Dust
						["providers"] = {
							{ "i", 253595 },	-- Flutterfly Dust
							{ "o", 578959 },	-- Object ID #578959
						},
						["coord"] = { 51.9, 83.4, MAP.ZEPHRAS_ISLE },
					}),
					i(263329),	-- Flutterfly Swatter
					i(2455),	-- Minor Mana Potion
				},
			}),
			q(92470, {	-- Foul Matriarch
				sourceQuest = 92471,	-- Aetheen of the Gales
				qg = 251366,	-- Aetheen of the Gales
				coord = { 42.8, 23.7, MAP.ZEPHRAS_ISLE },
				lvl = 2,
				groups = {
					objective(1, {	-- 0/8 Ursera Scavenger slain
						provider = { "n", 250937 },	-- Ursera Scavenger
						coord = { 37.6, 26.0, MAP.ZEPHRAS_ISLE },
					}),
					objective(2, {	-- 0/1 Head of Urs'anah
						provider = { "i", 252665 },	-- Head of Urs'anah
						coord = { 35.7, 25.3, MAP.ZEPHRAS_ISLE },
						cr = 251115,	-- Urs'anah <The Den Mother>
					}),
					i(258882),	-- Worn Greatsword
					i(257282),	-- Novice's Quarterstaff
					i(257283),	-- Scout Ranger's Dagger
					i(257276),	-- Peacekeeper's Pickhammer
					i(273879),	-- Refined Shortbow
				},
			}),
			q(93172, {	-- Free the Hollows
				["sourceQuest"] = 93159,	-- The Strange Hermit
				["qg"] = 251684,	-- Strange Hermit
				["coord"] = { 54.0, 39.0, MAP.ZEPHRAS_ISLE },
				["lvl"] = 8,
				["groups"] = {
					i(263309),	-- Freedom Walker's
					i(263310),	-- Sorrowsong Gloves
					i(263311),	-- Scuffed Cuffs
				},
			}),
			q(92461, {	-- Harmony in Balance
				sourceQuest = 92460,	-- Coming of Age
				qg = 251361,	-- Rorian the Dayseeker
				coord = { 42.1, 23.5, MAP.ZEPHRAS_ISLE },
				groups = {
					objective(1, {	-- 0/8 Juvenile Vuldren
						provider = { "n", 250873 },	-- Juvenile Vuldren
					}),
					i(257281),	-- Fur-Lined Shoes
					i(257280),	-- Vuldren Hide Bracers
				},
			}),
			q(93552, {	-- Harvesting Windstones
				["sourceQuest"] = 92461,	-- Harmony in Balance
				qg = 251363,	-- Dalia the Collector
				coord = { 43.4, 24.0, MAP.ZEPHRAS_ISLE },
				lvl = 2,
				groups = {
					objective(1, {	-- 0/15 Windstone Cluster
						providers = {
							{ "i", 258772 },	-- Windstone Cluster (QI!)
							{ "o", 613286 },	-- Raw Windstone
						},
						coords = {
							{ 48.6, 78.2, MAP.ZEPHRAS_ISLE },
						},
					}),
					i(247840),	-- Mining for Dummies
					i(247841),	-- Wild Harvest
					i(247846),	-- Pelt Collecting for Beginners
					i(255663),	-- Windstone
				},
			}),
			q(92550, {	-- Havoc in the Highlands
				["sourceQuest"] = 92528,	-- Among the Faithful
				["qg"] = 251523,	-- Constable Aonda
				["coord"] = { 45.6, 45.4, MAP.ZEPHRAS_ISLE },
				["lvl"] = 5,
				["groups"] = {
					i(263424),	-- Wolfhide Belt
					i(263425),	-- Elegant Cuffs
					i(263426),	-- Ex Commander's Gauntlets
				},
			}),
			q(92516, {	-- Hippogryph Harrassment
				["sourceQuests"] = {
					92514,	-- Welcome to Shen'dar Village (H)
					93461,	-- Welcome to Shen'dar Village (A)
				},
				["sourceQuestNumRequired"] = 1,
				["qg"] = 251906,	-- Teeri Wellwind
				["coord"] = { 44.4, 45.0, MAP.ZEPHRAS_ISLE },
				["lvl"] = 4,
			}),
			q(92860, {	-- In Service of Zephras
				["sourceQuest"] = 92834,	-- Avenged Tenfold
				["qg"] = 252475,	-- Elaadrin Evengale
				["coord"] = { 66.6, 79.8, MAP.ZEPHRAS_ISLE },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 6,
			}),
			q(92871, {	-- In Service of Zephras
				["sourceQuest"] = 93746,	-- A Firm Response
				["qg"] = 251968,	-- Ayessa Dawnsinger
				["coord"] = { 59.0, 79.6, MAP.ZEPHRAS_ISLE },
				["races"] = HORDE_ONLY,
				["lvl"] = 6,
			}),
			q(92462, {	-- Infestation Investigation
				sourceQuest = 92460,	-- Coming of Age
				qg = 251368,	-- Elatrell Featherlight
				coord = { 43.4, 24.8, MAP.ZEPHRAS_ISLE },
				groups = {
					objective(1, {	-- 0/8 Pesky Cirrusfly
						["provider"] = { "n", 251169 },	-- Pesky Cirrusfly
					}),
				},
			}),
			q(93036, {	-- Infiltrating the Cult
				["sourceQuest"] = 92517,	-- The Criminal Element
				["qg"] = 251523,	-- Constable Aonda
				["coord"] = { 45.6, 45.4, MAP.ZEPHRAS_ISLE },
				["lvl"] = 5,
			}),
			q(92682, {	-- Make Yourself Useful
				["sourceQuest"] = 92679,	-- Blood Tithe
				["qg"] = 252800,	-- Aamelia Windfield
				["coord"] = { 46.6, 81.8, MAP.ZEPHRAS_ISLE },
				["lvl"] = 5,
				["groups"] = {
					objective(1, {	-- 10/10 Ripe Stormapple
						["providers"] = {
							{ "i", 253591 },	-- Ripe Stormapple
							{ "o", 578937 },	-- Ripe Stormapple
						},
						["coord"] = { 47.6, 82.7, MAP.ZEPHRAS_ISLE },
					}),
					objective(2, {	-- 5/5 Hungry Bandit slain
						["provider"] = { "n", 252802 },	-- Hungry Bandit
						["coord"] = { 48.3, 82.6, MAP.ZEPHRAS_ISLE },
					}),
					i(252032),	-- Red Delicious Stormapple
				},
			}),
			q(92947, {	-- Making Our Move
				["sourceQuest"] = 93065,	-- Prepare for Battle
				["qg"] = 252383,	-- Valennia Stormfist
				["coord"] = { 61.2, 71.0, MAP.ZEPHRAS_ISLE },
				["lvl"] = 7,
			}),
			q(94411, {	-- Meddlesome Mages
				["sourceQuest"] = 92595,	-- The Windshapers
				["qg"] = 251902,	-- Illaya Amberwind
				["coord"] = { 43.6, 44.8, MAP.ZEPHRAS_ISLE },
				["races"] = HORDE_ONLY,
				["lvl"] = 4,
				["groups"] = {
					i(263411),	-- Windcharged Leaf
					i(263412),	-- Windcarved Effigy
				},
			}),
			q(93165, {	-- Mercy Falls on Deaf Ears
				["sourceQuest"] = 94484,	-- Unnerving Silence
				["qg"] = 254151,	-- Vayn Moongaze
				["coord"] = { 63.8, 36.0, MAP.ZEPHRAS_ISLE },
				["lvl"] = 8,
				["groups"] = {
					i(263306),	-- Nightclaw Gloves
					i(263307),	-- Shadowgale Pants
					i(263308),	-- Cult Hunter's Boots
				},
			}),
			q(93459, {	-- More Al'Aketh Ears
				["sourceQuest"] = 93165,	-- Mercy Falls on Deaf Ears
				["qg"] = 254151,
				repeatable = true,
				["lvl"] = 8,
			}),
			q(92684, {	-- Ornery Ornery Galestriders
				["sourceQuest"] = 92679,	-- Blood Tithe
				["qg"] = 252800,	-- Aamelia Windfield
				["coord"] = { 46.6, 81.8, MAP.ZEPHRAS_ISLE },
				["lvl"] = 5,
				["groups"] = {
					objective(1, {	-- 0/7 Lowlands Galestrider Tenderloin
						["provider"] = { "i", 253597 },	-- Lowlands Galestrider Tenderloin
						["cr"] = 251707,	-- Ornery Galestrider
						["coord"] = { 53.3, 72.2, MAP.ZEPHRAS_ISLE },
					}),
					i(257340),	-- Farmer's Field Boots
					i(257331),	-- Brass Banded Bracers
					i(257334),	-- Well Worn Pants
					i(252032),	-- Red Delicious Stormapple
				},
			}),
			q(93319, {	-- Pilfered Windstones
				["sourceQuests"] = {
					92514,	-- Welcome to Shen'dar Village (H)
					93461,	-- Welcome to Shen'dar Village (A)
				},
				["sourceQuestNumRequired"] = 1,
				["qg"] = 251906,	-- Teeri Wellwind
				["coord"] = { 44.4, 45.0, MAP.ZEPHRAS_ISLE },
				["lvl"] = 4,
			}),
			q(93065, {	-- Prepare for Battle
				["sourceQuest"] = 92640,	-- Desperate Times
				["qg"] = 252383,	-- Valennia Stormfist
				["coord"] = { 66.2, 76.6, MAP.ZEPHRAS_ISLE },
				["lvl"] = 7,
			}),
			q(92597, {	-- Reading the Ley Lines
				["qg"] = 251371,	-- Falorne Fallwind
				["coord"] = { 43.3, 24.9, MAP.ZEPHRAS_ISLE },
				["races"] = { SKYBORNE_ALLIANCE },
				["lvl"] = 2,
			}),
			q(92553, {	-- Restocking the Larders
				["sourceQuests"] = {
					92514,	-- Welcome to Shen'dar Village (H)
					93461,	-- Welcome to Shen'dar Village (A)
				},
				["sourceQuestNumRequired"] = 1,
				["qg"] = 251905,	-- Zerril Softbreeze
				["coord"] = { 43.8, 43.8, MAP.ZEPHRAS_ISLE },
				["lvl"] = 4,
				["groups"] = {
					i(263511),	-- Recipe Skywall Souffle
					i(263509),	-- Skywall Souffle
				},
			}),
			q(92469, {	-- Return to Rorian
				sourceQuest = 92465,	-- Agitators
				qg = 249363,	-- Yala Windwatcher
				coord = { 47.2, 21.8, MAP.ZEPHRAS_ISLE },
				lvl = 3,
				groups = {
					i(257277),	-- Windblown Short Cloak
					i(257272),	-- Skychain Belt
				},
			}),
			q(92880, {	-- Return to Valanaar
				["sourceQuests"] = {
					92642,	-- Disrupting Logistics
					92645,	-- Breaking the Breaker
				},
				["qg"] = 252378,	-- Yorana Windyreed
				["coord"] = { 69.6, 67.0, MAP.ZEPHRAS_ISLE },
				["lvl"] = 6,
				["groups"] = {
					i(257345),	-- Honed Greathammer
					i(257346),	-- Quickblade's Dagger
					i(257343),	-- Balanced Quarterstaff
				},
			}),
			q(94490, {	-- Ripped Missive
				["provider"] = { "i", 265476 },	-- Ripped Missive
				["cr"] = 253622,	-- Commander Haalien
				["coord"] = { 65.4, 36.2, MAP.ZEPHRAS_ISLE },
				["lvl"] = 9,
			}),
			q(93791, {	-- Speak with Belann
				["races"] = { SKYBORNE_ALLIANCE },
				["qg"] = 252373,	-- Anathamaas Aetherwind
				["coord"] = { 65.8, 80.4, MAP.ZEPHRAS_ISLE },
				["classes"] = { MAGE },
				["lvl"] = 10,
			}),
			q(92693, {	-- Standing Our Ground
				["sourceQuest"] = 92685,	-- The Hills Have Eyes
				["qg"] = 252800,	-- Aamelia Windfield
				["coord"] = { 46.6, 81.8, MAP.ZEPHRAS_ISLE },
				["lvl"] = 5,
				["groups"] = {
					objective(1, {	-- 0/1 Speak with Aamelia Windfield
						["provider"] = { "n", 252800 },	-- Aamelia Windfield
						["coord"] = { 47.3, 79.6, MAP.ZEPHRAS_ISLE },
					}),
					objective(2, {	-- 0/1 Follow Aamelia and make your final stand
						["provider"] = { "n", 252800 },	-- Aamelia Windfield
						["coord"] = { 47.3, 79.6, MAP.ZEPHRAS_ISLE },
					}),
					i(252032),	-- Red Delicious Stormapple
				},
			}),
			q(92551, {	-- Stolen Supplies
				["sourceQuest"] = 92528,	-- Among the Faithful
				["qg"] = 252172,	-- Danarii Bellowveil
				["coord"] = { 45.2, 45.2, MAP.ZEPHRAS_ISLE },
				["lvl"] = 5,
			}),
			q(94638, {	-- Strength and Mercy
				["qg"] = 255853,	-- Urs'endris
				["coord"] = { 69.8, 61.6, MAP.ZEPHRAS_ISLE },
				["sourceQuest"] = 92840,	-- Catching Wind
				["classes"] = { DRUID },
				["races"] = { SKYBORNE_ALLIANCE, SKYBORNE_HORDE },
				["lvl"] = 10,
				["groups"] = {
					objective(1, {	-- 0/1 Ur'endra slain
						["provider"] = { "n", 258443 },	-- Ur'endra
						["coord"] = { 53.9, 65.3, MAP.ZEPHRAS_ISLE },
					}),
				},
			}),
			q(94007, {	-- Taming the Beast
				["qg"] = 254084,	-- Elayaa Easewind
				["coord"] = { 45.2, 44.2, MAP.ZEPHRAS_ISLE },
				["classes"] = { HUNTER },
				["races"] = { SKYBORNE_ALLIANCE, SKYBORNE_HORDE },
				["lvl"] = 10,
			}),
			q(94013, {	-- Taming the Beast
				["qg"] = 252389,	-- Quel'ana Quickgale
				["coord"] = { 59.6, 72.6, MAP.ZEPHRAS_ISLE },
				["classes"] = { HUNTER },
				["races"] = { SKYBORNE_ALLIANCE, SKYBORNE_HORDE },
				["lvl"] = 10,
			}),
			q(94978, {	-- Taming the Beast
				["qg"] = 252389,	-- Quel'ana Quickgale
				["coord"] = { 59.6, 72.6, MAP.ZEPHRAS_ISLE },
				["classes"] = { HUNTER },
				["races"] = { SKYBORNE_ALLIANCE, SKYBORNE_HORDE },
				["lvl"] = 10,
			}),
			q(94979, {	-- Taming the Beast
				["qg"] = 252389,	-- Quel'ana Quickgale
				["coord"] = { 59.6, 72.6, MAP.ZEPHRAS_ISLE },
				["classes"] = { HUNTER },
				["races"] = { SKYBORNE_ALLIANCE, SKYBORNE_HORDE },
				["lvl"] = 10,
			}),
			q(94485, {	-- Tears of the Lady
				["sourceQuest"] = 94484,	-- Unnerving Silence
				["qg"] = 257944,	-- Elegael Thornpaw
				["coord"] = { 61.6, 39.2, MAP.ZEPHRAS_ISLE },
				["lvl"] = 8,
			}),
			q(96638, {	-- The Adventurer [Zephras Isle]
				sourceQuest = 92470,	-- Foul Matriarch
				qg = 251366,	-- Aetheen of the Gales
				coord = { 42.6, 23.6, MAP.ZEPHRAS_ISLE },
				lvl = 4,
			}),
			q(94414, {	-- The Anchors of Zephras
				qg = 257554,	-- Halaan Hawk-Eye
				coord = { 43.8, 24.0, MAP.ZEPHRAS_ISLE },
				lvl = 2,
			}),
			q(93735, {	-- The Broken Construct
				["sourceQuest"] = 92700,	-- The Grand Skyseer
				["races"] = HORDE_ONLY,
				["qg"] = 251968,	-- Ayessa Dawnsinger
				["coord"] = { 59.0, 79.6, MAP.ZEPHRAS_ISLE },
				["lvl"] = 4,
			}),
			q(93737, {	-- The Broken Construct
				["sourceQuest"] = 93735,	-- The Broken Construct
				["qg"] = 256083,	-- Riaani Nightwind
				["coord"] = { 59.0, 73.0, MAP.ZEPHRAS_ISLE },
				["races"] = HORDE_ONLY,
				["lvl"] = 4,
			}),
			q(93738, {	-- The Broken Construct
				["sourceQuest"] = 93737,	-- The Broken Construct
				["qg"] = 256083,	-- Riaani Nightwind
				["coord"] = { 59.0, 73.0, MAP.ZEPHRAS_ISLE },
				["races"] = HORDE_ONLY,
				["lvl"] = 4,
			}),
			q(92463, {	-- The Cirrusfly Queen
				sourceQuest = 92462,	-- Infestation Investigation 
				qg = 251368,	-- Elatrell Featherlight
				coord = { 43.4, 24.8, MAP.ZEPHRAS_ISLE },
				lvl = 2,
				groups = {
					objective(1, {	-- 0/1 Cirrusfly Queen slain
						provider = { "n", 251404 },	-- Cirrusfly Queen
						coord = { 47.6, 28.9, MAP.ZEPHRAS_ISLE },
					}),
					i(263408),	-- Exterminator's Vest
					i(263409),	-- Gardening Pants
					i(263410),	-- Watchers Mail Chest
				},
			}),
			q(92517, {	-- The Criminal Element
				sourceQuests = {
					93461,	-- Welcome to Shen'dar Village (A)
					92514,	-- Welcome to Shen'dar Village (H)
				},
				qg = 251523,	-- Constable Aonda
				coord = { 45.6, 45.4, MAP.ZEPHRAS_ISLE },
				lvl = 4,
				groups = {
					objective(1, {	-- 0/10 Highlands Bandit slain
						provider = { "n", 251918 },	-- Highlands Bandit
						coord = { 49.4, 36.0, MAP.ZEPHRAS_ISLE },
					}),
					objective(2, {	-- 0/1 "Badwind" Bennic slain
						provider = { "n", 255534 },	-- "Badwind" Bennic <Bandit Leader>
						coord = { 50.7, 34.0, MAP.ZEPHRAS_ISLE },
					}),
					i(263421),	-- Bandit's Jerkin
					i(263422),	-- Patchwork Leggings
					i(263423),	-- Highlands Mail Legguards
				},
			}),
			q(94568, {	-- The Cult's True Plans
				["sourceQuest"] = 92644,	-- Unfortunate News
				["qg"] = 252476,	-- Talaanis Shadowsong
				["coord"] = { 66.2, 76.6, MAP.ZEPHRAS_ISLE },
				["lvl"] = 6,
			}),
			q(95349, {	-- The Earthen Ring
				["sourceQuest"] = 93090,	-- What Comes Next
				["qg"] = 251968,	-- Ayessa Dawnsinger
				["coord"] = { 59.0, 79.6, MAP.ZEPHRAS_ISLE },
				["races"] = HORDE_ONLY,
				["lvl"] = 7,
			}),
			q(94897, {	-- The Fate of a Loved One
				["qg"] = 259012,	-- Ealaane Nimbuswalker
				["coord"] = { 65.8, 74.4, MAP.ZEPHRAS_ISLE },
				["lvl"] = 8,
				["groups"] = {
					objective(1, {	-- 0/1 Heirloom
						["provider"] = { "i", 266434 },	-- Resaan's Heirloom
						["cr"] = 259013,	-- Resaan Nimbuswalker
						["coord"] = { 57.0, 29.5, MAP.ZEPHRAS_ISLE },
					}),
				},
			}),
			q(94491, {	-- The Fate of the Den
				["sourceQuest"] = 94490,	-- Ripped Missive
				["qg"] = 257944,	-- Elegael Thornpaw
				["coord"] = { 61.6, 39.2, MAP.ZEPHRAS_ISLE },
				["lvl"] = 8,
			}),
			q(93836, {	-- The Fate of Zephras
				["sourceQuest"] = 92646,	-- Confront Lorthuna
				["qg"] = 251968,	-- Ayessa Dawnsinger
				["coord"] = { 59.0, 79.6, MAP.ZEPHRAS_ISLE },
				["races"] = HORDE_ONLY,
				["lvl"] = 7,
			}),
			q(94369, {	-- The Fate of Zephras
				["sourceQuest"] = 93835,	-- Confront Lorthuna
				["qg"] = 252475,	-- Elaadrin Evengale
				["coord"] = { 66.6, 79.8, MAP.ZEPHRAS_ISLE },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 7,
			}),
			q(93160, {	-- The Forest's Bounty
				["sourceQuest"] = 93159,	-- The Strange Hermit
				["qg"] = 251684,	-- Strange Hermit
				["coord"] = { 54.0, 39.0, MAP.ZEPHRAS_ISLE },
				["lvl"] = 8,
			}),
			q(92598, {	-- The Gift of Skysight
				["qg"] = 251487,	-- Ventaari Brightwish
				["coord"] = { 42.6, 24.4, MAP.ZEPHRAS_ISLE },
				["races"] = { SKYBORNE_HORDE },
				["lvl"] = 2,
			}),
			q(92700, {	-- The Grand Skyseer
				["sourceQuest"] = 92579,	-- To Valanaar
				["races"] = HORDE_ONLY,
				["qg"] = 252383,	-- Valennia Stormfist
				["coord"] = { 66.2, 76.6, MAP.ZEPHRAS_ISLE },
				["lvl"] = 4,
			}),
			q(96101, {	-- The Great Outdoors [Zephras Isle]
				sourceQuest = 96638,	-- The Adventurer [Zephras Isle]
				qg = 263664,	-- Raan Wildwind
				coord = { 41.6, 44.8, MAP.ZEPHRAS_ISLE },
				lvl = 4,
			}),
			q(94006, {	-- The Great Ursera Spirit
				["qg"] = 252359,	-- Lotheluum Starbreeze
				["coord"] = { 64.0, 75.0, MAP.ZEPHRAS_ISLE },
				["classes"] = { DRUID },
				["races"] = { SKYBORNE_ALLIANCE, SKYBORNE_HORDE },
				["lvl"] = 10,
			}),
			q(92881, {	-- The High Elder's Request
				["sourceQuest"] = 92880,	-- Return to Valanaar
				["qg"] = 252383,	-- Valennia Stormfist
				["coord"] = { 66.2, 76.6, MAP.ZEPHRAS_ISLE },
				["lvl"] = 6,
			}),
			q(92596, {	-- The High Order
				sourceQuest = 92472,	-- The Next Step
				qg = 251903,	-- Rathiril Sunlance
				coord = { 45.0, 46.4, MAP.ZEPHRAS_ISLE },
				races = ALLIANCE_ONLY,
				lvl = 4,
			}),
			q(92685, {	-- The Hills Have Eyes
				["sourceQuests"] = {
					92682,	-- Make Yourself Useful
					92683,	-- Flutterfly Dust
					92684,	-- Ornery Ornery Galestriders
				},
				["qg"] = 252800,	-- Aamelia Windfield
				["coord"] = { 46.6, 81.8, MAP.ZEPHRAS_ISLE },
				["lvl"] = 5,
				["groups"] = {
					objective(1, {	-- 7/7 Blood-Stained Bandit Mask
						["provider"] = { "i", 253596 },	-- Blood-Stained Bandit Mask
						["cr"] = 252820,	-- Bandit Highwayman
						["coord"] = { 47.6, 76.1, MAP.ZEPHRAS_ISLE },
					}),
					i(252032),	-- Red Delicious Stormapple
				},
			}),
			q(93958, {	-- The Inner Sanctum
				["sourceQuest"] = 92947,	-- Making Our Move
				["qg"] = 253576,	-- Hyusaa Quickbreeze
				["coord"] = { 63.8, 50.4, MAP.ZEPHRAS_ISLE },
				["lvl"] = 7,
			}),
			q(94946, {	-- The Magical City of Dalaran
				["sourceQuest"] = 93089,	-- What Comes Next
				["qg"] = 252475,	-- Elaadrin Evengale
				["coord"] = { 66.6, 79.8, MAP.ZEPHRAS_ISLE },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 7,
			}),
			q(92849, {	-- The Missing Scholar
				["sourceQuest"] = 92727,	-- The Missing Scholar
				["provider"] = { "o", 581822 },
				["coord"] = { 50.6, 65.4, MAP.ZEPHRAS_ISLE },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 4,
				["groups"] = {
					objective(1, {	-- 1/1 Find Fillion Flamebreeze
						["provider"] = { "n", 253284 },	-- Fillion Flamebreeze
						["coord"] = { 52.0, 69.4, MAP.ZEPHRAS_ISLE },
					}),
					objective(2, {	-- 1/1 Carry Fillion Flamebreeze to safety while avoiding enemies
						["provider"] = { "n", 253284 },	-- Fillion Flamebreeze
						["coord"] = { 52.0, 69.4, MAP.ZEPHRAS_ISLE },
					}),
				},
			}),
			q(92727, {	-- The Missing Scholar
				["sourceQuest"] = 92699,	-- The Supreme Magister
				["races"] = ALLIANCE_ONLY,
				["qg"] = 253204,	-- Dondallion Whisperwind
				["coord"] = { 66.2, 79.8, MAP.ZEPHRAS_ISLE },
				["lvl"] = 4,
			}),
			q(92850, {	-- The Missing Scholar
				["sourceQuest"] = 92849,	-- The Missing Scholar
				["qg"] = 253284,	-- Fillion Flamebreeze
				["coord"] = { 52.0, 69.4, MAP.ZEPHRAS_ISLE },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 4,
				["groups"] = {
					objective(1, {	-- 1/1 Shriekling Matriarch's Head
						["provider"] = { "i", 257107 },	-- Shriekling Matriarch's Head
						["cr"] = 253283,	-- Shriekling Matriarch
						["coord"] = { 52.3, 65.6, MAP.ZEPHRAS_ISLE },
					}),
				},
			}),
			q(92472, {	-- The Next Step
				sourceQuest = 92470,	-- Foul Matriarch
				qg = 251366,	-- Aetheen of the Gales
				coord = { 42.6, 23.6, MAP.ZEPHRAS_ISLE },
				lvl = 3,
			}),
			q(92515, {	-- The Problem With Prideclaws
				["sourceQuests"] = {
					92514,	-- Welcome to Shen'dar Village (H)
					93461,	-- Welcome to Shen'dar Village (A)
				},
				["sourceQuestNumRequired"] = 1,
				["qg"] = 251993,	-- Indari Sunseam
				["coord"] = { 44.6, 44.4, MAP.ZEPHRAS_ISLE },
				["lvl"] = 4,
				["groups"] = {
					i(256935),	-- Simple Leather Satchel
				},
			}),
			q(94003, {	-- The Skybreaker Bulwark
				["qg"] = 252377,	-- Seena Skybreaker
				["coord"] = { 59.8, 72.8, MAP.ZEPHRAS_ISLE },
				["classes"] = { WARRIOR },
				["races"] = { SKYBORNE_ALLIANCE, SKYBORNE_HORDE },
				["lvl"] = 10,
				["groups"] = {
					i(275290),	-- Stormforged Protector
				},
			}),
			q(93159, {	-- The Strange Hermit
				["qg"] = 251684,	-- Strange Hermit
				["coord"] = { 54.0, 39.0, MAP.ZEPHRAS_ISLE },
				["lvl"] = 8,
			}),
			q(92699, {	-- The Supreme Magister
				["sourceQuest"] = 92701,	-- To Valanaar
				["races"] = ALLIANCE_ONLY,
				["qg"] = 252383,	-- Valennia Stormfist
				["coord"] = { 66.2, 76.6, MAP.ZEPHRAS_ISLE },
				["lvl"] = 4,
			}),
			q(94488, {	-- The Ties That Bind
				["qg"] = 257944,	-- Elegael Thornpaw
				["coord"] = { 61.6, 39.2, MAP.ZEPHRAS_ISLE },
				["lvl"] = 8,
			}),
			q(92643, {	-- The Turncoat
				["sourceQuest"] = 92881,	-- The High Elder's Request
				["qg"] = 252476,	-- Talaanis Shadowsong
				["coord"] = { 66.2, 76.6, MAP.ZEPHRAS_ISLE },
				["lvl"] = 6,
			}),
			q(92532, {	-- The Warrior's Path
				["sourceQuest"] = 92461,	-- Harmony in Balance
				["qg"] = 251361,	-- Rorian the Dayseeker
				["coord"] = { 42.1, 23.5, MAP.ZEPHRAS_ISLE },
				["classes"] = { WARRIOR },
				["lvl"] = 2,
			}),
			q(92482, {	-- The Way of the Hunter
				["sourceQuest"] = 92461,	-- Harmony in Balance
				["qg"] = 251361,	-- Rorian the Dayseeker
				["coord"] = { 42.1, 23.5, MAP.ZEPHRAS_ISLE },
				["classes"] = { HUNTER },
				["lvl"] = 2,
			}),
			q(93926, {	-- The Western Watch
				["sourceQuest"] = 92528,	-- Among the Faithful
				["qg"] = 251523,	-- Constable Aonda
				["coord"] = { 45.6, 45.4, MAP.ZEPHRAS_ISLE },
				["lvl"] = 5,
			}),
			q(92595, {	-- The Windshapers
				["races"] = HORDE_ONLY,
				["qg"] = 251902,	-- Illaya Amberwind
				["coord"] = { 43.6, 44.8, MAP.ZEPHRAS_ISLE },
				["lvl"] = 4,
			}),
			q(94489, {	-- The Wounds of Betrayal
				["qg"] = 257944,	-- Elegael Thornpaw
				["coord"] = { 61.6, 39.2, MAP.ZEPHRAS_ISLE },
				["lvl"] = 8,
			}),
			q(92579, {	-- To Valanaar
				["sourceQuest"] = 92550,	-- Havoc in the Highlands
				["qg"] = 251523,	-- Constable Aonda
				["coord"] = { 45.6, 45.4, MAP.ZEPHRAS_ISLE },
				["races"] = HORDE_ONLY,
				["lvl"] = 6,
				["groups"] = {
					i(263414),	-- Traveler's Wraps
					i(263417),	-- Adventurer's Cloak
					i(263420),	-- Hiking Boots
				},
			}),
			q(92701, {	-- To Valanaar
				["sourceQuest"] = 92550,	-- Havoc in the Highlands
				["qg"] = 251523,	-- Constable Aonda
				["coord"] = { 45.6, 45.4, MAP.ZEPHRAS_ISLE },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 6,
				["groups"] = {
					objective(1, {	-- Deliver Aonda's Written Report to Valennia Stormfist in Valanaar.
						["provider"] = { "n", 252383 },	-- Valennia Stormfist
						["coord"] = { 66.2, 76.6, MAP.ZEPHRAS_ISLE },
					}),
				},
			}),
			q(93320, {	-- Tower Defense
				["sourceQuests"] = {
					92860,	-- In Service of Zephras
					92871,	-- In Service of Zephras
				},
				["sourceQuestNumRequired"] = 1,
				["qg"] = 252383,	-- Valennia Stormfist
				["coord"] = { 66.2, 76.6, MAP.ZEPHRAS_ISLE },
				["lvl"] = 6,
				["groups"] = {
					i(263338),	-- Defender's Bracers
					i(263339),	-- Windswept Slippers
					i(263340),	-- Peacekeeper's Legguards
				},
			}),
			q(94050, {	-- Training the Beast
				["qg"] = 252389,	-- Quel'ana Quickgale
				["coord"] = { 59.6, 72.6, MAP.ZEPHRAS_ISLE },
				["classes"] = { HUNTER },
				["races"] = { SKYBORNE_ALLIANCE, SKYBORNE_HORDE },
				["lvl"] = 10,
			}),
			q(92644, {	-- Unfortunate News
				["sourceQuest"] = 92643,	-- The Turncoat
				["qg"] = 253372,	-- Dead Cultist
				["coord"] = { 56.0, 58.8, MAP.ZEPHRAS_ISLE },
				["lvl"] = 6,
				["groups"] = {
					i(263330),	-- Tracker's Pants
					i(263332),	-- Elder's Tunic
					i(263333),	-- Peacekeeper's Mail
				},
			}),
			q(94484, {	-- Unnerving Silence
				["qg"] = 252359,	-- Lotheluum Starbreeze
				["coord"] = { 64.0, 75.0, MAP.ZEPHRAS_ISLE },
				["lvl"] = 8,
			}),
			q(94487, {	-- Unwanted and Unworthy
				["sourceQuest"] = 94484,	-- Unnerving Silence
				["qg"] = 257944,	-- Elegael Thornpaw
				["coord"] = { 61.6, 39.2, MAP.ZEPHRAS_ISLE },
				["lvl"] = 8,
			}),
			q(93736, {	-- Unwelcome Spirits
				["sourceQuest"] = 92700,	-- The Grand Skyseer
				["races"] = HORDE_ONLY,
				["qg"] = 254344,	-- Endaria Mistgaze
				["coord"] = { 58.2, 78.2, MAP.ZEPHRAS_ISLE },
				["lvl"] = 4,
			}),
			q(92741, {	-- Unwelcome Visitors
				["sourceQuest"] = 92699,	-- The Supreme Magister
				["races"] = ALLIANCE_ONLY,
				["qg"] = 253004,	-- Iaadaria Bitterwind
				["coord"] = { 66.2, 79.6, MAP.ZEPHRAS_ISLE },
				["lvl"] = 8,
				["groups"] = {
					objective(1, {	-- 0/8 Shriekling Talons
						["provider"] = { "i", 254378 },	-- Shriekling Talons
						["crs"] = {
							256092,	-- Shadowgale Shriekling
							251247,	-- Shadowgale Manticore (location unknown)
						},
						["coords"] = {
							{ 59.9, 38.4, MAP.ZEPHRAS_ISLE },	-- Shadowgale Shriekling
						},
					}),
				},
			}),
			q(93318, {	-- WANTED: Vulgara the Insatiable
				["sourceQuests"] = {
					92514,	-- Welcome to Shen'dar Village (H)
					93461,	-- Welcome to Shen'dar Village (A)
				},
				["sourceQuestNumRequired"] = 1,
				["provider"] = { "o", 610954 },
				["coord"] = { 45.2, 45.2, MAP.ZEPHRAS_ISLE },
				["lvl"] = 4,
				["groups"] = {
					i(257943),	-- Hunter's Simple Cloak
					i(257255),	-- Highlands Defender's Shield
				},
			}),
			q(93461, {	-- Welcome to Shen'dar Village (A)
				qg = 251523,	-- Constable Aonda
				coord = { 45.6, 45.4, MAP.ZEPHRAS_ISLE },
				races = ALLIANCE_ONLY,
				lvl = 4,
			}),
			q(92514, {	-- Welcome to Shen'dar Village (H)
				qg = 251523,	-- Constable Aonda
				coord = { 45.6, 45.4, MAP.ZEPHRAS_ISLE },
				races = HORDE_ONLY,
				lvl = 4,
			}),
			q(93089, {	-- What Comes Next
				["sourceQuest"] = 94369,	-- The Fate of Zephras
				["qg"] = 252476,	-- Talaanis Shadowsong
				["coord"] = { 66.2, 76.6, MAP.ZEPHRAS_ISLE },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 7,
			}),
			q(93090, {	-- What Comes Next
				["sourceQuest"] = 93836,	-- The Fate of Zephras
				["qg"] = 252476,	-- Talaanis Shadowsong
				["coord"] = { 66.2, 76.6, MAP.ZEPHRAS_ISLE },
				["races"] = HORDE_ONLY,
				["lvl"] = 7,
			}),
			q(92698, {	-- What Is My Purpose?
				["sourceQuest"] = 92679,	-- Blood Tithe
				["qg"] = 250929,	-- Malfunctioning Cyclone Construct
				["coord"] = { 48.6, 78.2, MAP.ZEPHRAS_ISLE },
				["lvl"] = 5,
			}),
		}),
		n(VENDORS, {
			n(272045, {	-- Brother Zendraas
				["coord"] = { 57.8, 52.0, MAP.ZEPHRAS_ISLE },
				["groups"] = {
					i(277069, {	-- Al'aketh Armguards
						["cost"] = {{ "i", 255663, 5 }},	-- Windstone
					}),
					i(277065, {	-- Al'aketh Belt
						["cost"] = {{ "i", 255663, 5 }},	-- Windstone
					}),
					i(277067, {	-- Al'aketh Boots
						["cost"] = {{ "i", 255663, 8 }},	-- Windstone
					}),
					i(277063, {	-- Al'aketh Bracers
						["cost"] = {{ "i", 255663, 5 }},	-- Windstone
					}),
					i(277059, {	-- Al'aketh Chain
						["cost"] = {{ "i", 255663, 5 }},	-- Windstone
					}),
					i(277056, {	-- Al'aketh Chainmail
						["cost"] = {{ "i", 255663, 15 }},	-- Windstone
					}),
					i(277077, {	-- Al'aketh Cord
						["cost"] = {{ "i", 255663, 5 }},	-- Windstone
					}),
					i(277075, {	-- Al'aketh Cuffs
						["cost"] = {{ "i", 255663, 5 }},	-- Windstone
					}),
					i(277073, {	-- Al'aketh Footwraps
						["cost"] = {{ "i", 255663, 8 }},	-- Windstone
					}),
					i(277058, {	-- Al'aketh Gauntlets
						["cost"] = {{ "i", 255663, 8 }},	-- Windstone
					}),
					i(277064, {	-- Al'aketh Gloves
						["cost"] = {{ "i", 255663, 8 }},	-- Windstone
					}),
					i(277061, {	-- Al'aketh Greaves
						["cost"] = {{ "i", 255663, 8 }},	-- Windstone
					}),
					i(277076, {	-- Al'aketh Handwraps
						["cost"] = {{ "i", 255663, 8 }},	-- Windstone
					}),
					i(277062, {	-- Al'aketh Harness
						["cost"] = {{ "i", 255663, 15 }},	-- Windstone
					}),
					i(277068, {	-- Al'aketh Jerkin
						["cost"] = {{ "i", 255663, 15 }},	-- Windstone
					}),
					i(277078, {	-- Al'aketh Leggings
						["cost"] = {{ "i", 255663, 15 }},	-- Windstone
					}),
					i(277060, {	-- Al'aketh Legguards
						["cost"] = {{ "i", 255663, 15 }},	-- Windstone
					}),
					i(277070, {	-- Al'aketh Mitts
						["cost"] = {{ "i", 255663, 8 }},	-- Windstone
					}),
					i(277072, {	-- Al'aketh Pants
						["cost"] = {{ "i", 255663, 15 }},	-- Windstone
					}),
					i(277079, {	-- Al'aketh Shoes
						["cost"] = {{ "i", 255663, 8 }},	-- Windstone
					}),
					i(277071, {	-- Al'aketh Strap
						["cost"] = {{ "i", 255663, 5 }},	-- Windstone
					}),
					i(277066, {	-- Al'aketh Trousers
						["cost"] = {{ "i", 255663, 15 }},	-- Windstone
					}),
					i(277074, {	-- Al'aketh Vestments
						["cost"] = {{ "i", 255663, 15 }},	-- Windstone
					}),
					i(277057, {	-- Al'aketh Wristguards
						["cost"] = {{ "i", 255663, 5 }},	-- Windstone
					}),
				},
			}),
			n(251364, {	-- Destin Thriceforged
				["coord"] = { 43.5, 23.6, MAP.ZEPHRAS_ISLE },
				["sym"] = {{"select","itemID",
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
			n(271478, {	-- Elaria Anvilwind
				["coord"] = { 59.5, 76.1, MAP.ZEPHRAS_ISLE },
				["groups"] = {
					i(277083),	-- Zephrali Chain
					i(277080),	-- Zephrali Chainmail
					i(277082),	-- Zephrali Gauntlets
					i(277085),	-- Zephrali Greaves
					i(277084),	-- Zephrali Legguards
					i(277081),	-- Zephrali Wristguards
				},
			}),
			n(271483, {	-- Ergaan Eastwind
				["coord"] = { 59.7, 75.9, MAP.ZEPHRAS_ISLE },
				["groups"] = {
					i(277093),	-- Zephrali Armguards
					i(277089),	-- Zephrali Belt
					i(277091),	-- Zephrali Boots
					i(277087),	-- Zephrali Bracers
					i(277097),	-- Zephrali Footwraps
					i(277088),	-- Zephrali Gloves
					i(277086),	-- Zephrali Harness
					i(277092),	-- Zephrali Jerkin
					i(277094),	-- Zephrali Mitts
					i(277096),	-- Zephrali Pants
					i(277095),	-- Zephrali Strap
					i(277090),	-- Zephrali Trousers
				},
			}),
			n(271465, {	-- Falfaan Halfwind
				["coord"] = { 59.4, 75.8, MAP.ZEPHRAS_ISLE },
				["groups"] = {
					i(277105),	-- Zephrali Blade
					i(277107),	-- Zephrali Bludgeon
					i(277110),	-- Zephrali Bow
					i(277111),	-- Zephrali Crossbow
					i(277109),	-- Zephrali Greatstaff
					i(277104),	-- Zephrali Greatsword
					i(277108),	-- Zephrali Knife
					i(277106),	-- Zephrali Smasher
				},
			}),
			n(251965, {	-- Fevrath Skyhammer
				["coord"] = { 43.4, 23.5, MAP.ZEPHRAS_ISLE },
				["sym"] = {{"select","itemID",
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
			n(265756, {	-- Genn Fairweather
				["coord"] = { 53.8, 81.2, MAP.ZEPHRAS_ISLE },
				["groups"] = {
					i(269681),	-- Empyrean Galestrider (MOUNT!)
					i(269683),	-- Stormy Galestrider (MOUNT!)
					i(269671),	-- Swift Empyrean Galestrider (MOUNT!)
					i(269678),	-- Swift Stormy Galestrider (MOUNT!)
					i(274933),	-- Swift Umber Galestrider (MOUNT!)
					i(274930),	-- Umber Galestrider (MOUNT!)
				},
			}),
			n(251365, {	-- Jolee Brightmeadows
				["coord"] = { 43.5, 23.7, MAP.ZEPHRAS_ISLE },
				["sym"] = {{"select","itemID",
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
			n(257020, {	-- Nasalanna Windsinger <Enchanter>
				["coord"] = { 60.8, 44.2, MAP.ZEPHRAS_ISLE },
				["groups"] = ENCHANTING_RECIPES.COMMON_RECIPES,
			}),
			n(257006, {	-- Nyalah Brightfire
				["coord"] = { 60.7, 72.7, MAP.ZEPHRAS_ISLE },
				["groups"] = {
					i(6326),	-- Recipe: Slitherskin Mackerel (RECIPE!)
					i(6328),	-- Recipe: Longjaw Mud Snapper (RECIPE!)
					i(6325),	-- Recipe: Brilliant Smallfish (RECIPE!)
				},
			}),
			n(257422, {	-- Railee Thriceforged
				["coord"] = { 59.0, 75.5, MAP.ZEPHRAS_ISLE },
				["sym"] = {{"select","itemID",
					2488,	-- Gladius
					2489,	-- Two-handed Sword
					2490,	-- Tomahawk
					2491,	-- Large Axe
					2492,	-- Cudgel
					2493,	-- Wooden Mallet
					2494,	-- Stiletto
					2495,	-- Walking Stick
					11303,	-- Fine Shortbow
				}},
			}),
			n(251991, {	-- Taleen Shimmerthread <Tailor>
				coord = { 77.3, 51.3, MAP.ZEPHRAS_ISLE },
				groups = {
					i(253665),	-- Pattern: Linen Reagent Bag (RECIPE!)
					i(253668),	-- Pattern: Woolen Reagent Bag (RECIPE!)
				},
			}),
			n(271480, {	-- Taliaa Brightsky <Artisan Clothier>
				["coord"] = { 59.3, 76.2, MAP.ZEPHRAS_ISLE },
				["groups"] = {
					i(273812),	-- Airy Magister's Shirt
					i(273813),	-- Airy Peacekeeper's Shirt
					i(273814),	-- Airy Skyseer's Shirt
					i(277101),	-- Zephrali Cord
					i(277099),	-- Zephrali Cuffs
					i(277100),	-- Zephrali Handwraps
					i(277102),	-- Zephrali Leggings
					i(277103),	-- Zephrali Shoes
					i(277098),	-- Zephrali Vest
				},
			}),
			n(257421, { -- Tephri Thriceforged <Weapon Merchant>
				coord = { 44.8, 44.2, MAP.ZEPHRAS_ISLE },
				sym = {{ "select", "itemID",
					2131, -- Shortsword
					1194, -- Bastard Sword
					2134, -- Hand Axe
					2479, -- Broad Axe
					2130, -- Club
					2480, -- Large Club
					2139, -- Dirk
					2132, -- Short Staff
					2488, -- Gladius
					2489, -- Two-handed Sword
					2490, -- Tomahawk
					2491, -- Large Axe
					2492, -- Cudgel
					2493, -- Wooden Mallet
					2494, -- Stiletto
					2495, -- Walking Stick
					2506, -- Hornwood Recurve Bow
					2507, -- Laminated Recurve Bow
				}},
			}),
			n(254151, {	-- Vayn Moongaze
				coord = { 63.8, 36.0, MAP.ZEPHRAS_ISLE },
				groups = bubbleDownClassicRep(FACTION_NIGHTCLAW_DRUIDS, {
					{		-- Neutral
					}, {	-- Friendly
						i(276961),	-- Pattern: Azure Gustwoven Belt (RECIPE!)
						i(276963),	-- Pattern: Azure Gustwoven Boots (RECIPE!)
						i(276959),	-- Pattern: Azure Gustwoven Bracers (RECIPE!)
						i(276960),	-- Pattern: Azure Gustwoven Gloves (RECIPE!)
						i(276973),	-- Pattern: Azure Stormsewn Cord (RECIPE!)
						i(276971),	-- Pattern: Azure Stormsewn Cuffs (RECIPE!)
						i(276972),	-- Pattern: Azure Stormsewn Handwraps (RECIPE!)
						i(276975),	-- Pattern: Azure Stormsewn Shoes (RECIPE!)
						i(276965),	-- Pattern: Azure Windraveled Armguards (RECIPE!)
						i(276969),	-- Pattern: Azure Windraveled Footwraps (RECIPE!)
						i(276966),	-- Pattern: Azure Windraveled Mitts (RECIPE!)
						i(276967),	-- Pattern: Azure Windraveled Strap (RECIPE!)
						i(276937),	-- Pattern: Cloudy Gustwoven Belt (RECIPE!)
						i(276939),	-- Pattern: Cloudy Gustwoven Boots (RECIPE!)
						i(276935),	-- Pattern: Cloudy Gustwoven Bracers (RECIPE!)
						i(276936),	-- Pattern: Cloudy Gustwoven Gloves (RECIPE!)
						i(276949),	-- Pattern: Cloudy Stormsewn Cord (RECIPE!)
						i(276947),	-- Pattern: Cloudy Stormsewn Cuffs (RECIPE!)
						i(276948),	-- Pattern: Cloudy Stormsewn Handwraps (RECIPE!)
						i(276951),	-- Pattern: Cloudy Stormsewn Shoes (RECIPE!)
						i(276941),	-- Pattern: Cloudy Windraveled Armguards (RECIPE!)
						i(276945),	-- Pattern: Cloudy Windraveled Footwraps (RECIPE!)
						i(276942),	-- Pattern: Cloudy Windraveled Mitts (RECIPE!)
						i(276943),	-- Pattern: Cloudy Windraveled Strap (RECIPE!)
						i(276955),	-- Plans: Azure Skyforged Chain (RECIPE!)
						i(276954),	-- Plans: Azure Skyforged Gauntlets (RECIPE!)
						i(276957),	-- Plans: Azure Skyforged Greaves (RECIPE!)
						i(276953),	-- Plans: Azure Skyforged Wristguards (RECIPE!)
						i(276931),	-- Plans: Cloudy Skyforged Chain (RECIPE!)
						i(276930),	-- Plans: Cloudy Skyforged Gauntlets (RECIPE!)
						i(276933),	-- Plans: Cloudy Skyforged Greaves (RECIPE!)
						i(276929),	-- Plans: Cloudy Skyforged Wristguards (RECIPE!)
					}, {	-- Honored
						i(276958),	-- Pattern: Azure Gustwoven Harness (RECIPE!)
						i(276962),	-- Pattern: Azure Gustwoven Trousers (RECIPE!)
						i(276974),	-- Pattern: Azure Stormsewn Leggings (RECIPE!)
						i(276970),	-- Pattern: Azure Stormsewn Vest (RECIPE!)
						i(276964),	-- Pattern: Azure Windraveled Jerkin (RECIPE!)
						i(276968),	-- Pattern: Azure Windraveled Pants (RECIPE!)
						i(276934),	-- Pattern: Cloudy Gustwoven Harness (RECIPE!)
						i(276938),	-- Pattern: Cloudy Gustwoven Trousers (RECIPE!)
						i(276950),	-- Pattern: Cloudy Stormsewn Leggings (RECIPE!)
						i(276946),	-- Pattern: Cloudy Stormsewn Vest (RECIPE!)
						i(276940),	-- Pattern: Cloudy Windraveled Jerkin (RECIPE!)
						i(276944),	-- Pattern: Cloudy Windraveled Pants (RECIPE!)
						i(276952),	-- Plans: Azure Skyforged Chainmail (RECIPE!)
						i(276956),	-- Plans: Azure Skyforged Legguards (RECIPE!)
						i(276928),	-- Plans: Cloudy Skyforged Chainmail (RECIPE!)
						i(276932),	-- Plans: Cloudy Skyforged Legguards (RECIPE!)
					}, {	-- Revered
						i(280347),	-- Shadowgale Squirrel (PET!)
					}, {	-- Exalted
						i(280363),	-- Nightclaw Mantle
					},
				}),
			}),
			n(251905, {	-- Fimbo Greasemitz <Cook>
				coord = { 43.9, 43.8, MAP.ZEPHRAS_ISLE },
				groups = {
					i(21219),	-- Recipe: Sagefish Delight (RECIPE!)
					i(21099),	-- Recipe: Smoked Sagefish (RECIPE!)
				},
			}),
		}),
		n(ZONE_DROPS, {
			i(2057, {	-- Pitted Defias Shortsword
				coords = {
					{ 45.7, 18.7, MAP.ZEPHRAS_ISLE },
					{ 47.0, 20.0, MAP.ZEPHRAS_ISLE },
				},
				cr = 251160,	-- Al'Aketh Convert
			}),
			i(251932, {	-- Sharpened Cirrusfly Stinger
				coord = { 47.5, 27.7, MAP.ZEPHRAS_ISLE },
				cr = 251402,	-- Cirrusfly Soldier
			}),
		}),
	},
});

root(ROOTS.HiddenQuestTriggers, {
	q(93463, {	-- Triggered when turning in 'The High Order', likely a shared quest flag for either faction having completed their initial introduction quest.
		timeline = { TIMELINE.ADDED_1_60_1 },
	}),
});
