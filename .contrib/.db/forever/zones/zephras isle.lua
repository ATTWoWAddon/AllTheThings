---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

maproot(MAP.ZEPHRAS_ISLE, {
	lore = "Once a secluded island oasis in the sky, Zephras Isle now welcomes the next generation of WoW’s newest race – the Skyborne – to protect this floating island and secure its future.",
	--icon = ,	-- TODO: Add an icon for Zephras Isle
	timeline = { TIMELINE.ADDED_1_60_1 },
	["races"] = { SKYBORNE_ALLIANCE, SKYBORNE_HORDE },
	["groups"] = {
		n(QUESTS, {
			q(93746, {	-- A Firm Response
				["qg"] = 251968,	-- Ayessa Dawnsinger
				["coord"] = { 59.0, 79.6, MAP.ZEPHRAS_ISLE },
				["lvl"] = 4,
				["groups"] = {
					i(263305),	-- Windshaped Shield
					i(250339),	-- Minor Mageblood Elixir
				},
			}),
			q(92708, {	-- A Grand Adventure
				["qg"] = 251968,	-- Ayessa Dawnsinger
				["coord"] = { 59.0, 79.6, MAP.ZEPHRAS_ISLE },
				["races"] = { SKYBORNE_HORDE },
				["lvl"] = 7,
			}),
			q(92709, {	-- A Grand Adventure
				["qg"] = 252475,	-- Elaadrin Evengale
				["coord"] = { 66.6, 79.8, MAP.ZEPHRAS_ISLE },
				["races"] = { SKYBORNE_ALLIANCE },
				["lvl"] = 7,
			}),
			q(93927, {	-- A Last Request
				["qg"] = 252155,	-- Peacekeeper Vaaniel
				["coord"] = { 42.4, 62.0, MAP.ZEPHRAS_ISLE },
				["lvl"] = 5,
			}),
			q(93951, {	-- A Little Beauty
				["qg"] = 251991,	-- Taleen Shimmerthread
				["coord"] = { 44.8, 44.2, MAP.ZEPHRAS_ISLE },
				["lvl"] = 4,
			}),
			q(94413, {	-- A Magical Affront
				["qg"] = 251903,	-- Rathiril Sunlance
				["coord"] = { 45.0, 46.4, MAP.ZEPHRAS_ISLE },
				["lvl"] = 4,
				["groups"] = {
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
				["qg"] = 251361,	-- Rorian the Dayseeker
				["coord"] = { 42.0, 23.4, MAP.ZEPHRAS_ISLE },
				["classes"] = { DRUID },
				["lvl"] = 2,
			}),
			q(92481, {	-- A Student of the Arcane
				["qg"] = 251361,	-- Rorian the Dayseeker
				["coord"] = { 42.1, 23.5, MAP.ZEPHRAS_ISLE },
				["sourceQuest"] = 92461,	-- Harmony in Balance
				["classes"] = { MAGE },
				["lvl"] = 2,
				["groups"] = { i(282416), },	-- Glowing Recall Crystal
			}),
			q(92471, {	-- Aetheen of the Gales
				["qg"] = 251361,	-- Rorian the Dayseeker
				["coord"] = { 42.0, 23.4, MAP.ZEPHRAS_ISLE },
				["lvl"] = 4,
			}),
			q(92473, {	-- Aggressive Encroachment
				["qg"] = 257551,	-- Valreaa Valewind
				["coord"] = { 42.4, 25.0, MAP.ZEPHRAS_ISLE },
				["lvl"] = 3,
				["groups"] = {
					i(257257),	-- Thendal Ranger's Shoes
					i(257264),	-- Thendal Ranger's Gloves
					i(257263),	-- Thendal Ranger's Belt
				},
			}),
			q(92465, {	-- Agitators
				["qg"] = 249363,	-- Yala Windwatcher
				["coord"] = { 47.3, 21.9, MAP.ZEPHRAS_ISLE },
				["lvl"] = 2,
				["groups"] = {
					objective(1, { ["provider"] = { "n", 251160 } }),	-- Al'Aketh Convert
					objective(2, { ["provider"] = { "n", 251143 } }),	-- Roiling Winds
				},
			}),
			q(94896, {	-- Aid For The Refugees
				["qg"] = 259012,	-- Ealaane Nimbuswalker
				["coord"] = { 65.8, 74.4, MAP.ZEPHRAS_ISLE },
				["lvl"] = 8,
			}),
			q(98512, {	-- Al'Aketh Assassins
				["qg"] = 273017,	-- Fendaal Windstone
				["coord"] = { 56.8, 61.0, MAP.ZEPHRAS_ISLE },
				["lvl"] = 6,
			}),
			q(92544, {	-- Al'Aketh Thugs
				["qg"] = 252095,	-- Hanaa Nightwind
				["coord"] = { 38.2, 30.2, MAP.ZEPHRAS_ISLE },
				["lvl"] = 2,
			}),
			q(92528, {	-- Among the Faithful
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
				["qg"] = 251361,	-- Rorian the Dayseeker
				["coord"] = { 42.0, 23.4, MAP.ZEPHRAS_ISLE },
				["classes"] = { ROGUE },
				["lvl"] = 2,
			}),
			q(92834, {	-- Avenged Tenfold
				["qg"] = 252475,	-- Elaadrin Evengale
				["coord"] = { 66.6, 79.8, MAP.ZEPHRAS_ISLE },
				["lvl"] = 6,
				["groups"] = {
					i(263401),	-- Martyr's Armor
					i(263402),	-- Sash of Sorrow
					i(263403),	-- Cilice of Regret
				},
			}),
			q(93740, {	-- Blood for Blood
				["qg"] = 251968,	-- Ayessa Dawnsinger
				["coord"] = { 59.0, 79.6, MAP.ZEPHRAS_ISLE },
				["lvl"] = 6,
			}),
			q(92679, {	-- Blood Tithe
				["qg"] = 252448,	-- Alvarion Windfield
				["coord"] = { 62.0, 73.2, MAP.ZEPHRAS_ISLE },
				["lvl"] = 5,
			}),
			q(93797, {	-- Boughs in the Wind
				["qg"] = 256507,	-- Belann Windwood
				["coord"] = { 62.8, 77.4, MAP.ZEPHRAS_ISLE },
				["classes"] = { MAGE },
				["lvl"] = 10,
				["groups"] = {
					i(263430),	-- Windbough Wand
					i(250344),	-- Elixir of Minor Spirit
				},
			}),
			q(92645, {	-- Breaking the Breaker
				["qg"] = 252378,	-- Yorana Windyreed
				["coord"] = { 69.6, 67.0, MAP.ZEPHRAS_ISLE },
				["lvl"] = 6,
				["groups"] = {
					i(263335),	-- Hunter's Cord
					i(263336),	-- Windsong Bangles
					i(263337),	-- Breaker's Gauntlets
				},
			}),
			q(93949, {	-- Bugged
				["qg"] = 252383,	-- Valennia Stormfist
				["coord"] = { 66.2, 76.6, MAP.ZEPHRAS_ISLE },
				["lvl"] = 6,
			}),
			q(92466, {	-- Call of Earth
				["qg"] = 251374,	-- Windshaper Boro
				["coord"] = { 42.8, 23.6, MAP.ZEPHRAS_ISLE },
				["classes"] = { SHAMAN },
				["lvl"] = 3,
			}),
			q(92467, {	-- Call of Earth
				["qg"] = 251374,	-- Windshaper Boro
				["coord"] = { 42.8, 23.6, MAP.ZEPHRAS_ISLE },
				["classes"] = { SHAMAN },
				["lvl"] = 3,
			}),
			q(92468, {	-- Call of Earth
				["qg"] = 251166,	-- Minor Manifestation of Earth
				["coord"] = { 49.6, 24.0, MAP.ZEPHRAS_ISLE },
				["classes"] = { SHAMAN },
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
				["qg"] = 268592,	-- Olariaan Swiftburn
				["coord"] = { 51.2, 86.0, MAP.ZEPHRAS_ISLE },
				["classes"] = { SHAMAN },
				["races"] = { SKYBORNE_HORDE },
				["lvl"] = 10,
			}),
			q(97245, {	-- Call of Fire
				["qg"] = 268592,	-- Olariaan Swiftburn
				["coord"] = { 51.2, 86.0, MAP.ZEPHRAS_ISLE },
				["classes"] = { SHAMAN },
				["races"] = { SKYBORNE_HORDE },
				["lvl"] = 10,
			}),
			q(97257, {	-- Call of Fire
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
				["qg"] = 263664,	-- Raan Wildwind
				["coord"] = { 41.6, 44.8, MAP.ZEPHRAS_ISLE },
				["sourceQuest"] = 96101,	-- The Great Outdoors
				["requireSkill"] = ALCHEMY,
				["lvl"] = 4,
				["groups"] = { recipe(1230564), },
			}),
			q(97964, {	-- Camping 101: Blacksmithing
				["qg"] = 263664,	-- Raan Wildwind
				["coord"] = { 41.6, 44.8, MAP.ZEPHRAS_ISLE },
				["sourceQuest"] = 96101,	-- The Great Outdoors
				["requireSkill"] = BLACKSMITHING,
				["lvl"] = 4,
				["groups"] = { recipe(1230171), },
			}),
			q(96646, {	-- Camping 101: Cooking
				["qg"] = 263664,	-- Raan Wildwind
				["coord"] = { 41.6, 44.8, MAP.ZEPHRAS_ISLE },
				["lvl"] = 4,
			}),
			q(98284, {	-- Camping 101: Enchanting
				["altQuests"] = { 98286 },
				["qg"] = 263664,	-- Raan Wildwind
				["coord"] = { 41.6, 44.8, MAP.ZEPHRAS_ISLE },
				["sourceQuest"] = 96101,	-- The Great Outdoors
				["requireSkill"] = ENCHANTING,
				["races"] = { SKYBORNE_HORDE },
				["lvl"] = 4,
				["groups"] = { recipe(1230643), },
			}),
			q(98286, {	-- Camping 101: Enchanting
				["altQuests"] = { 98284 },
				["qg"] = 263664,	-- Raan Wildwind
				["coord"] = { 41.6, 44.8, MAP.ZEPHRAS_ISLE },
				["sourceQuest"] = 96101,	-- The Great Outdoors
				["requireSkill"] = ENCHANTING,
				["races"] = { SKYBORNE_ALLIANCE },
				["lvl"] = 4,
				["groups"] = { recipe(1230643), },
			}),
			q(98285, {	-- Camping 101: Engineering
				["qg"] = 263664,	-- Raan Wildwind
				["coord"] = { 41.6, 44.8, MAP.ZEPHRAS_ISLE },
				["sourceQuest"] = 96101,	-- The Great Outdoors
				["requireSkill"] = ENGINEERING,
				["lvl"] = 4,
				["groups"] = { recipe(1230656), },
			}),
			q(97965, {	-- Camping 101: First Aid
				["qg"] = 263664,	-- Raan Wildwind
				["coord"] = { 41.6, 44.8, MAP.ZEPHRAS_ISLE },
				["sourceQuest"] = 96101,	-- The Great Outdoors
				["requireSkill"] = FIRST_AID,
				["lvl"] = 4,
				["groups"] = { recipe(1230117), },
			}),
			q(97967, {	-- Camping 101: Fishing
				["qg"] = 263664,	-- Raan Wildwind
				["coord"] = { 41.6, 44.8, MAP.ZEPHRAS_ISLE },
				["sourceQuest"] = 96101,	-- The Great Outdoors
				["requireSkill"] = FISHING,
				["lvl"] = 4,
				["groups"] = { recipe(1229745), },
			}),
			q(97968, {	-- Camping 101: Herbalism
				["qg"] = 263664,	-- Raan Wildwind
				["coord"] = { 41.6, 44.8, MAP.ZEPHRAS_ISLE },
				["sourceQuest"] = 96101,	-- The Great Outdoors
				["requireSkill"] = HERBALISM,
				["lvl"] = 4,
				["groups"] = { recipe(1229705), },
			}),
			q(97969, {	-- Camping 101: Leatherworking
				["qg"] = 263664,	-- Raan Wildwind
				["coord"] = { 41.6, 44.8, MAP.ZEPHRAS_ISLE },
				["sourceQuest"] = 96101,	-- The Great Outdoors
				["requireSkill"] = LEATHERWORKING,
				["lvl"] = 4,
				["groups"] = { recipe(1229432), },
			}),
			q(97970, {	-- Camping 101: Mining
				["qg"] = 263664,	-- Raan Wildwind
				["coord"] = { 41.6, 44.8, MAP.ZEPHRAS_ISLE },
				["sourceQuest"] = 96101,	-- The Great Outdoors
				["requireSkill"] = MINING,
				["lvl"] = 4,
				["groups"] = { recipe(1230161), },
			}),
			q(97971, {	-- Camping 101: Skinning
				["qg"] = 263664,	-- Raan Wildwind
				["coord"] = { 41.6, 44.8, MAP.ZEPHRAS_ISLE },
				["sourceQuest"] = 96101,	-- The Great Outdoors
				["requireSkill"] = SKINNING,
				["lvl"] = 4,
				["groups"] = { recipe(1229517), },
			}),
			q(97972, {	-- Camping 101: Tailoring
				["altQuests"] = { 97973 },
				["qg"] = 263664,	-- Raan Wildwind
				["coord"] = { 41.6, 44.8, MAP.ZEPHRAS_ISLE },
				["sourceQuest"] = 96101,	-- The Great Outdoors
				["requireSkill"] = TAILORING,
				["races"] = { SKYBORNE_HORDE },
				["lvl"] = 4,
				["groups"] = { recipe(1229504), },
			}),
			q(97973, {	-- Camping 101: Tailoring
				["altQuests"] = { 97972 },
				["qg"] = 263664,	-- Raan Wildwind
				["coord"] = { 41.6, 44.8, MAP.ZEPHRAS_ISLE },
				["sourceQuest"] = 96101,	-- The Great Outdoors
				["requireSkill"] = TAILORING,
				["races"] = { SKYBORNE_ALLIANCE },
				["lvl"] = 4,
				["groups"] = { recipe(1263425), },
			}),
			q(92840, {	-- Catching Wind
				["qg"] = 252475,	-- Elaadrin Evengale
				["coord"] = { 66.6, 79.8, MAP.ZEPHRAS_ISLE },
				["lvl"] = 5,
				["groups"] = {
					i(263404),	-- Bow of Hours
					i(3382),	-- Minor Troll's Blood Elixir
				},
			}),
			q(92460, {	-- Coming of Age
				["qg"] = 251362,	-- Ailee Farheart
				["coord"] = { 42.8, 23.4, MAP.ZEPHRAS_ISLE },
				["groups"] = { i(264908), },	-- Ancient Heirloom
			}),
			q(92646, {	-- Confront Lorthuna
				["qg"] = 252383,	-- Valennia Stormfist
				["coord"] = { 65.2, 50.4, MAP.ZEPHRAS_ISLE },
				["races"] = { SKYBORNE_HORDE },
				["lvl"] = 7,
				["groups"] = {
					i(263405),	-- Belt of Blades
					i(263406),	-- Empyrean Shoes
					i(263407),	-- Empyrean Greatsword
					i(273875),	-- Empyrean Treads
				},
			}),
			q(93835, {	-- Confront Lorthuna
				["qg"] = 252383,	-- Valennia Stormfist
				["coord"] = { 65.2, 50.4, MAP.ZEPHRAS_ISLE },
				["races"] = { SKYBORNE_ALLIANCE },
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
					i(263513),	-- Recipe Pincer Bites
					i(263512),	-- Pincer Bites
				},
			}),
			q(92703, {	-- Deliver the News
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
				["qg"] = 251523,	-- Constable Aonda
				["coord"] = { 45.6, 45.4, MAP.ZEPHRAS_ISLE },
				["lvl"] = 6,
			}),
			q(92640, {	-- Desperate Times
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
				["qg"] = 252378,	-- Yorana Windyreed
				["coord"] = { 69.6, 67.0, MAP.ZEPHRAS_ISLE },
				["lvl"] = 6,
			}),
			q(92464, {	-- Elemental Unrest
				["qg"] = 251361,	-- Rorian the Dayseeker
				["coord"] = { 42.0, 23.4, MAP.ZEPHRAS_ISLE },
				["lvl"] = 2,
			}),
			q(92484, {	-- Embracing the Elements
				["qg"] = 251361,	-- Rorian the Dayseeker
				["coord"] = { 42.0, 23.4, MAP.ZEPHRAS_ISLE },
				["classes"] = { SHAMAN },
				["lvl"] = 2,
			}),
			q(92529, {	-- Falaath Village
				["qg"] = 251904,	-- Sania Silverstream
				["coord"] = { 44.8, 45.4, MAP.ZEPHRAS_ISLE },
				["lvl"] = 5,
			}),
			q(92474, {	-- Falling With Style
				["qg"] = 263113,	-- Myriaal Mistwake
				["coord"] = { 43.6, 24.0, MAP.ZEPHRAS_ISLE },
				["lvl"] = 2,
			}),
			q(94486, {	-- Feathers for Binding
				["qg"] = 257944,	-- Elegael Thornpaw
				["coord"] = { 61.6, 39.2, MAP.ZEPHRAS_ISLE },
				["lvl"] = 8,
			}),
			q(92683, {	-- Flutterfly Dust
				["qg"] = 252800,	-- Aamelia Windfield
				["coord"] = { 46.6, 81.8, MAP.ZEPHRAS_ISLE },
				["lvl"] = 5,
				["groups"] = {
					i(263329),	-- Flutterfly Swatter
					i(2455),	-- Minor Mana Potion
				},
			}),
			q(92470, {	-- Foul Matriarch
				["qg"] = 251366,	-- Aetheen of the Gales
				["coord"] = { 42.6, 23.6, MAP.ZEPHRAS_ISLE },
				["lvl"] = 2,
				["groups"] = {
					i(258882),	-- Worn Greatsword
					i(257282),	-- Novice's Quarterstaff
					i(257283),	-- Scout Ranger's Dagger
					i(257276),	-- Peacekeeper's Pickhammer
					i(273879),	-- Refined Shortbow
				},
			}),
			q(93172, {	-- Free the Hollows
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
				["qg"] = 251361,	-- Rorian the Dayseeker
				["coord"] = { 42.1, 23.5, MAP.ZEPHRAS_ISLE },
				["sourceQuest"] = 92460,	-- Coming of Age
				["groups"] = {
					i(257281),	-- Fur-Lined Shoes
					i(257280),	-- Vuldren Hide Bracers
					objective(1, { ["provider"] = { "n", 250873 } }),	-- Juvenile Vuldren
				},
			}),
			q(93552, {	-- Harvesting Windstones
				["qg"] = 251363,	-- Dalia the Collector
				["coord"] = { 43.2, 24.0, MAP.ZEPHRAS_ISLE },
				["lvl"] = 2,
				["groups"] = {
					i(247840),	-- Mining for Dummies
					i(247841),	-- Wild Harvest
					i(247846),	-- Pelt Collecting for Beginners
					i(255663),	-- Windstone
				},
			}),
			q(92550, {	-- Havoc in the Highlands
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
				["qg"] = 251906,	-- Teeri Wellwind
				["coord"] = { 44.4, 45.0, MAP.ZEPHRAS_ISLE },
				["lvl"] = 4,
			}),
			q(92860, {	-- In Service of Zephras
				["qg"] = 252475,	-- Elaadrin Evengale
				["coord"] = { 66.6, 79.8, MAP.ZEPHRAS_ISLE },
				["races"] = { SKYBORNE_ALLIANCE },
				["lvl"] = 6,
			}),
			q(92871, {	-- In Service of Zephras
				["qg"] = 251968,	-- Ayessa Dawnsinger
				["coord"] = { 59.0, 79.6, MAP.ZEPHRAS_ISLE },
				["races"] = { SKYBORNE_HORDE },
				["lvl"] = 6,
			}),
			q(92462, {	-- Infestation Investigation
				["qg"] = 251368,	-- Elatrell Featherlight
				["coord"] = { 43.4, 24.8, MAP.ZEPHRAS_ISLE },
				["sourceQuest"] = 92460,	-- Coming of Age
				["groups"] = {
					objective(1, { ["provider"] = { "n", 251169 } }),	-- Pesky Cirrusfly
				},
			}),
			q(93036, {	-- Infiltrating the Cult
				["qg"] = 251523,	-- Constable Aonda
				["coord"] = { 45.6, 45.4, MAP.ZEPHRAS_ISLE },
				["lvl"] = 5,
			}),
			q(92682, {	-- Make Yourself Useful
				["qg"] = 252800,	-- Aamelia Windfield
				["coord"] = { 46.6, 81.8, MAP.ZEPHRAS_ISLE },
				["lvl"] = 5,
				["groups"] = {
					i(252032),	-- Red Delicious Stormapple
				},
			}),
			q(92947, {	-- Making Our Move
				["qg"] = 252383,	-- Valennia Stormfist
				["coord"] = { 61.2, 71.0, MAP.ZEPHRAS_ISLE },
				["lvl"] = 7,
			}),
			q(94411, {	-- Meddlesome Mages
				["qg"] = 251902,	-- Illaya Amberwind
				["coord"] = { 43.6, 44.8, MAP.ZEPHRAS_ISLE },
				["lvl"] = 4,
				["groups"] = {
					i(263411),	-- Windcharged Leaf
					i(263412),	-- Windcarved Effigy
				},
			}),
			q(93165, {	-- Mercy Falls on Deaf Ears
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
				repeatable = true,
				["lvl"] = 8,
			}),
			q(92684, {	-- Ornery Ornery Galestriders
				["qg"] = 252800,	-- Aamelia Windfield
				["coord"] = { 46.6, 81.8, MAP.ZEPHRAS_ISLE },
				["lvl"] = 5,
				["groups"] = {
					i(257340),	-- Farmer's Field Boots
					i(257331),	-- Brass Banded Bracers
					i(257334),	-- Well Worn Pants
					i(252032),	-- Red Delicious Stormapple
				},
			}),
			q(93319, {	-- Pilfered Windstones
				["qg"] = 251906,	-- Teeri Wellwind
				["coord"] = { 44.4, 45.0, MAP.ZEPHRAS_ISLE },
				["lvl"] = 4,
			}),
			q(93065, {	-- Prepare for Battle
				["qg"] = 252383,	-- Valennia Stormfist
				["coord"] = { 66.2, 76.6, MAP.ZEPHRAS_ISLE },
				["lvl"] = 7,
			}),
			q(92597, {	-- Reading the Ley Lines
				["qg"] = 251371,	-- Falorne Fallwind
				["coord"] = { 43.2, 24.8, MAP.ZEPHRAS_ISLE },
				["races"] = { SKYBORNE_ALLIANCE },
				["lvl"] = 2,
			}),
			q(92553, {	-- Restocking the Larders
				["qg"] = 251905,	-- Zerril Softbreeze
				["coord"] = { 43.8, 43.8, MAP.ZEPHRAS_ISLE },
				["lvl"] = 4,
				["groups"] = {
					i(263511),	-- Recipe Skywall Souffle
					i(263509),	-- Skywall Souffle
				},
			}),
			q(92469, {	-- Return to Rorian
				["qg"] = 249363,	-- Yala Windwatcher
				["coord"] = { 47.2, 21.8, MAP.ZEPHRAS_ISLE },
				["lvl"] = 3,
				["groups"] = {
					i(257277),	-- Windblown Short Cloak
					i(257272),	-- Skychain Belt
				},
			}),
			q(92880, {	-- Return to Valanaar
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
				["qg"] = 252373,	-- Anathamaas Aetherwind
				["coord"] = { 65.8, 80.4, MAP.ZEPHRAS_ISLE },
				["classes"] = { MAGE },
				["lvl"] = 10,
			}),
			q(92693, {	-- Standing Our Ground
				["qg"] = 252800,	-- Aamelia Windfield
				["coord"] = { 46.6, 81.8, MAP.ZEPHRAS_ISLE },
				["lvl"] = 5,
				["groups"] = {
					i(252032),	-- Red Delicious Stormapple
				},
			}),
			q(92551, {	-- Stolen Supplies
				["qg"] = 252172,	-- Danarii Bellowveil
				["coord"] = { 45.2, 45.2, MAP.ZEPHRAS_ISLE },
				["lvl"] = 5,
			}),
			q(94638, {	-- Strength and Mercy
				["qg"] = 255853,	-- Urs'endris
				["coord"] = { 69.8, 61.6, MAP.ZEPHRAS_ISLE },
				["sourceQuest"] = 92840,	-- Catching Wind
				["classes"] = { DRUID },
				["lvl"] = 10,
			}),
			q(94007, {	-- Taming the Beast
				["qg"] = 254084,	-- Elayaa Easewind
				["coord"] = { 45.2, 44.2, MAP.ZEPHRAS_ISLE },
				["classes"] = { HUNTER },
				["lvl"] = 10,
			}),
			q(94013, {	-- Taming the Beast
				["qg"] = 252389,	-- Quel'ana Quickgale
				["coord"] = { 59.6, 72.6, MAP.ZEPHRAS_ISLE },
				["classes"] = { HUNTER },
				["lvl"] = 10,
			}),
			q(94978, {	-- Taming the Beast
				["qg"] = 252389,	-- Quel'ana Quickgale
				["coord"] = { 59.6, 72.6, MAP.ZEPHRAS_ISLE },
				["classes"] = { HUNTER },
				["lvl"] = 10,
			}),
			q(94979, {	-- Taming the Beast
				["qg"] = 252389,	-- Quel'ana Quickgale
				["coord"] = { 59.6, 72.6, MAP.ZEPHRAS_ISLE },
				["classes"] = { HUNTER },
				["lvl"] = 10,
			}),
			q(94485, {	-- Tears of the Lady
				["qg"] = 257944,	-- Elegael Thornpaw
				["coord"] = { 61.6, 39.2, MAP.ZEPHRAS_ISLE },
				["lvl"] = 8,
			}),
			q(96638, {	-- The Adventurer [Zephras Isle]
				["qg"] = 251366,	-- Aetheen of the Gales
				["coord"] = { 42.6, 23.6, MAP.ZEPHRAS_ISLE },
				["lvl"] = 4,
			}),
			q(94414, {	-- The Anchors of Zephras
				["qg"] = 257554,	-- Halaan Hawk-Eye
				["coord"] = { 43.8, 24.0, MAP.ZEPHRAS_ISLE },
				["lvl"] = 2,
			}),
			q(93735, {	-- The Broken Construct
				["qg"] = 251968,	-- Ayessa Dawnsinger
				["coord"] = { 59.0, 79.6, MAP.ZEPHRAS_ISLE },
				["lvl"] = 4,
			}),
			q(93737, {	-- The Broken Construct
				["qg"] = 256083,	-- Riaani Nightwind
				["coord"] = { 59.0, 73.0, MAP.ZEPHRAS_ISLE },
				["races"] = { SKYBORNE_ALLIANCE },
				["lvl"] = 4,
			}),
			q(93738, {	-- The Broken Construct
				["qg"] = 256083,	-- Riaani Nightwind
				["coord"] = { 59.0, 73.0, MAP.ZEPHRAS_ISLE },
				["races"] = { SKYBORNE_HORDE },
				["lvl"] = 4,
			}),
			q(92463, {	-- The Cirrusfly Queen
				["qg"] = 251368,	-- Elatrell Featherlight
				["coord"] = { 43.4, 24.8, MAP.ZEPHRAS_ISLE },
				["lvl"] = 2,
				["groups"] = {
					i(263408),	-- Exterminator's Vest
					i(263409),	-- Gardening Pants
					i(263410),	-- Watchers Mail Chest
				},
			}),
			q(92517, {	-- The Criminal Element
				["qg"] = 251523,	-- Constable Aonda
				["coord"] = { 45.6, 45.4, MAP.ZEPHRAS_ISLE },
				["lvl"] = 4,
				["groups"] = {
					i(263421),	-- Bandit's Jerkin
					i(263422),	-- Patchwork Leggings
					i(263423),	-- Highlands Mail Legguards
				},
			}),
			q(94568, {	-- The Cult's True Plans
				["qg"] = 252476,	-- Talaanis Shadowsong
				["coord"] = { 66.2, 76.6, MAP.ZEPHRAS_ISLE },
				["lvl"] = 6,
			}),
			q(95349, {	-- The Earthen Ring
				["qg"] = 251968,	-- Ayessa Dawnsinger
				["coord"] = { 59.0, 79.6, MAP.ZEPHRAS_ISLE },
				["races"] = { SKYBORNE_HORDE },
				["lvl"] = 7,
			}),
			q(94897, {	-- The Fate of a Loved One
				["qg"] = 259012,	-- Ealaane Nimbuswalker
				["coord"] = { 65.8, 74.4, MAP.ZEPHRAS_ISLE },
				["lvl"] = 8,
			}),
			q(94491, {	-- The Fate of the Den
				["qg"] = 257944,	-- Elegael Thornpaw
				["coord"] = { 61.6, 39.2, MAP.ZEPHRAS_ISLE },
				["lvl"] = 8,
			}),
			q(93836, {	-- The Fate of Zephras
				["qg"] = 251968,	-- Ayessa Dawnsinger
				["coord"] = { 59.0, 79.6, MAP.ZEPHRAS_ISLE },
				["races"] = { SKYBORNE_HORDE },
				["lvl"] = 7,
			}),
			q(94369, {	-- The Fate of Zephras
				["qg"] = 252475,	-- Elaadrin Evengale
				["coord"] = { 66.6, 79.8, MAP.ZEPHRAS_ISLE },
				["races"] = { SKYBORNE_ALLIANCE },
				["lvl"] = 7,
			}),
			q(93160, {	-- The Forest's Bounty
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
				["qg"] = 252383,	-- Valennia Stormfist
				["coord"] = { 66.2, 76.6, MAP.ZEPHRAS_ISLE },
				["lvl"] = 4,
			}),
			q(96101, {	-- The Great Outdoors
				["qg"] = 263664,	-- Raan Wildwind
				["coord"] = { 41.6, 44.8, MAP.ZEPHRAS_ISLE },
				["lvl"] = 4,
			}),
			q(94006, {	-- The Great Ursera Spirit
				["qg"] = 252359,	-- Lotheluum Starbreeze
				["coord"] = { 64.0, 75.0, MAP.ZEPHRAS_ISLE },
				["classes"] = { DRUID },
				["lvl"] = 10,
			}),
			q(92881, {	-- The High Elder's Request
				["qg"] = 252383,	-- Valennia Stormfist
				["coord"] = { 66.2, 76.6, MAP.ZEPHRAS_ISLE },
				["lvl"] = 6,
			}),
			q(92596, {	-- The High Order
				["qg"] = 251903,	-- Rathiril Sunlance
				["coord"] = { 45.0, 46.4, MAP.ZEPHRAS_ISLE },
				["lvl"] = 4,
			}),
			q(92685, {	-- The Hills Have Eyes
				["qg"] = 252800,	-- Aamelia Windfield
				["coord"] = { 46.6, 81.8, MAP.ZEPHRAS_ISLE },
				["lvl"] = 5,
				["groups"] = {
					i(252032),	-- Red Delicious Stormapple
				},
			}),
			q(93958, {	-- The Inner Sanctum
				["qg"] = 253576,	-- Hyusaa Quickbreeze
				["coord"] = { 63.8, 50.4, MAP.ZEPHRAS_ISLE },
				["lvl"] = 7,
			}),
			q(94946, {	-- The Magical City of Dalaran
				["qg"] = 252475,	-- Elaadrin Evengale
				["coord"] = { 66.6, 79.8, MAP.ZEPHRAS_ISLE },
				["races"] = { SKYBORNE_ALLIANCE },
				["lvl"] = 7,
			}),
			q(92849, {	-- The Missing Scholar
				["sourceQuest"] = 92727,	-- The Missing Scholar
				["provider"] = { "o", 581822 },
				["coord"] = { 50.6, 65.4, MAP.ZEPHRAS_ISLE },
				["races"] = { SKYBORNE_ALLIANCE },
				["lvl"] = 4,
			}),
			q(92727, {	-- The Missing Scholar
				["qg"] = 253204,	-- Dondallion Whisperwind
				["coord"] = { 66.2, 79.8, MAP.ZEPHRAS_ISLE },
				["lvl"] = 4,
			}),
			q(92850, {	-- The Missing Scholar
				["sourceQuest"] = 92849,	-- The Missing Scholar
				["qg"] = 253284,	-- Fillion Flamebreeze
				["coord"] = { 52.0, 69.4, MAP.ZEPHRAS_ISLE },
				["races"] = { SKYBORNE_ALLIANCE },
				["lvl"] = 4,
			}),
			q(92472, {	-- The Next Step
				["qg"] = 251366,	-- Aetheen of the Gales
				["coord"] = { 42.6, 23.6, MAP.ZEPHRAS_ISLE },
				["lvl"] = 3,
			}),
			q(92515, {	-- The Problem With Prideclaws
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
				["qg"] = 252476,	-- Talaanis Shadowsong
				["coord"] = { 66.2, 76.6, MAP.ZEPHRAS_ISLE },
				["lvl"] = 6,
			}),
			q(92532, {	-- The Warrior's Path
				["qg"] = 251361,	-- Rorian the Dayseeker
				["coord"] = { 42.0, 23.4, MAP.ZEPHRAS_ISLE },
				["classes"] = { WARRIOR },
				["lvl"] = 2,
			}),
			q(92482, {	-- The Way of the Hunter
				["qg"] = 251361,	-- Rorian the Dayseeker
				["coord"] = { 42.0, 23.4, MAP.ZEPHRAS_ISLE },
				["classes"] = { HUNTER },
				["lvl"] = 2,
			}),
			q(93926, {	-- The Western Watch
				["qg"] = 251523,	-- Constable Aonda
				["coord"] = { 45.6, 45.4, MAP.ZEPHRAS_ISLE },
				["lvl"] = 5,
			}),
			q(92595, {	-- The Windshapers
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
				["qg"] = 251523,	-- Constable Aonda
				["coord"] = { 45.6, 45.4, MAP.ZEPHRAS_ISLE },
				["races"] = { SKYBORNE_ALLIANCE },
				["lvl"] = 6,
				["groups"] = {
					i(263414),	-- Traveler's Wraps
					i(263417),	-- Adventurer's Cloak
					i(263420),	-- Hiking Boots
				},
			}),
			q(92701, {	-- To Valanaar
				["qg"] = 251523,	-- Constable Aonda
				["coord"] = { 45.6, 45.4, MAP.ZEPHRAS_ISLE },
				["races"] = { SKYBORNE_HORDE },
				["lvl"] = 6,
			}),
			q(93320, {	-- Tower Defense
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
				["lvl"] = 10,
			}),
			q(92644, {	-- Unfortunate News
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
				["qg"] = 257944,	-- Elegael Thornpaw
				["coord"] = { 61.6, 39.2, MAP.ZEPHRAS_ISLE },
				["lvl"] = 8,
			}),
			q(93736, {	-- Unwelcome Spirits
				["qg"] = 254344,	-- Endaria Mistgaze
				["coord"] = { 58.2, 78.2, MAP.ZEPHRAS_ISLE },
				["lvl"] = 4,
			}),
			q(92741, {	-- Unwelcome Visitors
				["qg"] = 253004,	-- Iaadaria Bitterwind
				["coord"] = { 66.2, 79.6, MAP.ZEPHRAS_ISLE },
				["lvl"] = 8,
			}),
			q(93318, {	-- WANTED: Vulgara the Insatiable
				["provider"] = { "o", 610954 },
				["coord"] = { 45.2, 45.2, MAP.ZEPHRAS_ISLE },
				["lvl"] = 4,
				["groups"] = {
					i(257943),	-- Hunter's Simple Cloak
					i(257255),	-- Highlands Defender's Shield
				},
			}),
			q(92514, {	-- Welcome to Shen'dar Village
				["qg"] = 251523,	-- Constable Aonda
				["coord"] = { 45.6, 45.4, MAP.ZEPHRAS_ISLE },
				["races"] = { SKYBORNE_ALLIANCE },
				["lvl"] = 4,
			}),
			q(93461, {	-- Welcome to Shen'dar Village
				["qg"] = 251523,	-- Constable Aonda
				["coord"] = { 45.6, 45.4, MAP.ZEPHRAS_ISLE },
				["races"] = { SKYBORNE_HORDE },
				["lvl"] = 4,
			}),
			q(93089, {	-- What Comes Next
				["qg"] = 252476,	-- Talaanis Shadowsong
				["coord"] = { 66.2, 76.6, MAP.ZEPHRAS_ISLE },
				["races"] = { SKYBORNE_ALLIANCE },
				["lvl"] = 7,
			}),
			q(93090, {	-- What Comes Next
				["qg"] = 252476,	-- Talaanis Shadowsong
				["coord"] = { 66.2, 76.6, MAP.ZEPHRAS_ISLE },
				["races"] = { SKYBORNE_HORDE },
				["lvl"] = 7,
			}),
			q(92698, {	-- What Is My Purpose?
				["qg"] = 250929,	-- Malfunctioning Cyclone Construct
				["coord"] = { 48.6, 78.2, MAP.ZEPHRAS_ISLE },
				["lvl"] = 5,
			}),
		}),
	},
});
