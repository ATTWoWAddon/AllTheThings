-----------------------------------------------------
--       P R O F E S S I O N S   M O D U L E       --
-----------------------------------------------------
local DF_BLACKSMITHING_KNOWLEDGE = 2023;
local TWW_BLACKSMITHING_KNOWLEDGE = 2786;
local MID_BLACKSMITHING_KNOWLEDGE = 3151;
root(ROOTS.Professions, prof(BLACKSMITHING, bubbleDownSelf({ ["requireSkill"] = BLACKSMITHING }, {
	n(ACHIEVEMENTS, bubbleDownSelf({ ["timeline"] = { ADDED_10_1_7 } }, {
		ach(18866),	-- Anvil Mastery IV
		ach(18865),	-- Anvil Mastery III
		ach(18864),	-- Anvil Mastery II
		ach(18862),	-- Anvil Mastery I
		ach(18851),	-- Skeletons in the Lockbox (automated)
	})),
	expansion(EXPANSION.CLASSIC, {
		n(ACHIEVEMENTS, bubbleDownSelf({ ["timeline"] = { ADDED_10_0_7 } }, {
			ach(18765, {	-- Destined to be Legendary (automated)
				["timeline"] = { ADDED_10_1_7 },
			}),
			ach(17497, {	-- Renowned Armorsmith
				["sourceQuests"] = {
					5283,	-- The Art of the Armorsmith [A]
					5301,	-- The Art of the Armorsmith [H]
				},
				["sourceQuestNumRequired"] = 1,
				["timeline"] = { ADDED_10_0_7, REMOVED_10_0_7 },
			}),
			ach(17496, {	-- Renowned Weaponsmith
				["sourceQuests"] = {
					5284,	-- The Art of the Weaponsmith [A]
					5302,	-- The Art of the Weaponsmith [H]
				},
				["sourceQuestNumRequired"] = 1,
				["timeline"] = { ADDED_10_0_7, REMOVED_10_0_7 },
			}),
			ach(18853, {	-- Seething Flames of Hatred
				["provider"] = { "i", 207011 },	-- Warblades of the Hakkari, Reborn
				["timeline"] = { ADDED_10_1_7 },
			}),
		})),
		n(QUESTS, sharedData({
			["lvl"] = 40,
			["timeline"] = { REMOVED_4_0_3 },
		}, {
			q(5283, {	-- The Art of the Armorsmith [A]
				["description"] = "Upon finishing this quest, you will become a Armorsmith and be locked out of becoming a Weaponsmith.",
				["altQuests"] = {
					5301,	-- The Art of the Armorsmith [H]
					-- #if SEASON_OF_DISCOVERY
					82662,	-- The Way of the Weaponsmith [A]
					82665,	-- The Way of the Weaponsmith [H]
					-- #else
					5284,	-- The Way of the Weaponsmith [A]
					5302,	-- The Way of the Weaponsmith [H]
					-- #endif
				},
				["qg"] = 5164,	-- Grumnus Steelshaper
				["coord"] = { 50.2, 42.6, IRONFORGE },
				["cost"] = {
					{ "i", 7937, 4 },	-- Ornate Mithril Helm
					{ "i", 7936, 2 },	-- Ornate Mithril Boots
					{ "i", 7935, 1 },	-- Ornate Mithril Breastplate
				},
				["races"] = ALLIANCE_ONLY,
			}),
			q(5301, {	-- The Art of the Armorsmith [H]
				["description"] = "Upon finishing this quest, you will become a Armorsmith and be locked out of becoming a Weaponsmith.",
				["altQuests"] = {
					5283,	-- The Art of the Armorsmith [A]
					-- #if SEASON_OF_DISCOVERY
					82662,	-- The Way of the Weaponsmith [A]
					82665,	-- The Way of the Weaponsmith [H]
					-- #else
					5284,	-- The Way of the Weaponsmith [A]
					5302,	-- The Way of the Weaponsmith [H]
					-- #endif
				},
				["qg"] = 11177,	-- Okothos Ironrager
				["coord"] = { 79.8, 23.8, ORGRIMMAR },
				["cost"] = {
					{ "i", 7937, 4 },	-- Ornate Mithril Helm
					{ "i", 7936, 2 },	-- Ornate Mithril Boots
					{ "i", 7935, 1 },	-- Ornate Mithril Breastplate
				},
				["races"] = HORDE_ONLY,
			}),
			q(5284, {	-- The Way of the Weaponsmith [A]
				["description"] = "Upon finishing this quest, you will become a Weaponsmith and be locked out of becoming an Armorsmith.",
				["altQuests"] = {
					5283,	-- The Art of the Armorsmith [A]
					5301,	-- The Art of the Armorsmith [H]
					5302,	-- The Way of the Weaponsmith [H]
				},
				["qg"] = 11146,	-- Ironus Coldsteel
				["coord"] = { 49.8, 45.0, IRONFORGE },
				-- #if SEASON_OF_DISCOVERY
				["timeline"] = { REMOVED_1_15_2 },
				-- #endif
				["cost"] = {
					{ "i", 3853, 4 },	-- Moonsteel Broadsword
					{ "i", 3855, 4 },	-- Massive Iron Axe
					{ "i", 7941, 2 },	-- Heavy Mithril Axe
					{ "i", 7945, 2 },	-- Big Black Mace
				},
				["races"] = ALLIANCE_ONLY,
			}),
			q(5302, {	-- The Way of the Weaponsmith [H]
				["description"] = "Upon finishing this quest, you will become a Weaponsmith and be locked out of becoming an Armorsmith.",
				["altQuests"] = {
					5283,	-- The Art of the Armorsmith [A]
					5301,	-- The Art of the Armorsmith [H]
					5284,	-- The Way of the Weaponsmith [A]
				},
				["qg"] = 11178,	-- Borgosh Corebender
				["coord"] = { 79.6, 23.6, ORGRIMMAR },
				-- #if SEASON_OF_DISCOVERY
				["timeline"] = { REMOVED_1_15_2 },
				-- #endif
				["cost"] = {
					{ "i", 3853, 4 },	-- Moonsteel Broadsword
					{ "i", 3855, 4 },	-- Massive Iron Axe
					{ "i", 7941, 2 },	-- Heavy Mithril Axe
					{ "i", 7945, 2 },	-- Big Black Mace
				},
				["races"] = HORDE_ONLY,
			}),
			-- #if SEASON_OF_DISCOVERY
			applyclassicphase(SOD_PHASE_THREE, q(82662, {	-- The Way of the Weaponsmith [A]
				["description"] = "Upon finishing this quest, you will become a Weaponsmith and be locked out of becoming an Armorsmith.",
				["altQuests"] = {
					5283,	-- The Art of the Armorsmith [A]
					5301,	-- The Art of the Armorsmith [H]
					82665,	-- The Way of the Weaponsmith [H]
				},
				["qg"] = 11146,	-- Ironus Coldsteel
				["coord"] = { 49.8, 45.0, IRONFORGE },
				["timeline"] = { ADDED_1_15_2 },
				["cost"] = {
					{ "i", 217281, 4 },	-- Moonsteel Broadsword
					{ "i", 3855, 4 },	-- Massive Iron Axe
					{ "i", 7941, 2 },	-- Heavy Mithril Axe
					{ "i", 7945, 2 },	-- Big Black Mace
				},
				["races"] = ALLIANCE_ONLY,
			})),
			applyclassicphase(SOD_PHASE_THREE, q(82665, {	-- The Way of the Weaponsmith [H]
				["description"] = "Upon finishing this quest, you will become a Weaponsmith and be locked out of becoming an Armorsmith.",
				["altQuests"] = {
					5283,	-- The Art of the Armorsmith [A]
					5301,	-- The Art of the Armorsmith [H]
					82662,	-- The Way of the Weaponsmith [A]
				},
				["qg"] = 11178,	-- Borgosh Corebender
				["coord"] = { 79.6, 23.6, ORGRIMMAR },
				["timeline"] = { ADDED_1_15_2 },
				["cost"] = {
					{ "i", 217281, 4 },	-- Moonsteel Broadsword
					{ "i", 3855, 4 },	-- Massive Iron Axe
					{ "i", 7941, 2 },	-- Heavy Mithril Axe
					{ "i", 7945, 2 },	-- Big Black Mace
				},
				["races"] = HORDE_ONLY,
			})),
			-- #endif
		})),
	}),
	expansion(EXPANSION.MOP, bubbleDownSelf({ ["timeline"] = { ADDED_5_0_4 } }, {
		n(ACHIEVEMENTS, bubbleDownSelf({ ["timeline"] = { ADDED_10_1_7 } }, {
			ach(18852),	-- Weaponsmithing, Reborn (automated)
		})),
	})),
	expansion(EXPANSION.LEGION, bubbleDownSelf({ ["timeline"] = { ADDED_7_0_3_LAUNCH } }, {
		q(38499, {	-- Strange New Ores
			["provider"] = { "n", 92183 },	-- Alard Schmied
			["coord"] = { 45.0, 29.6, LEGION_DALARAN },
			["groups"] = {
				r(195097, {	-- Blacksmithing (Legion Master)
					["timeline"] = { ADDED_7_0_3_LAUNCH, REMOVED_8_0_1 },
					["collectible"] = false,
				}),
				applyclassicphase(BFA_PHASE_ONE, r(264446, {["timeline"] = {ADDED_8_0_1}})),	-- Legion Blacksmithing
				r(330169, {["timeline"] = {ADDED_9_0_1}}),	-- Relic of the Past I [Legion]
				r(330170, {["timeline"] = {ADDED_9_0_1}}),	-- Relic of the Past II [Legion]
				r(330171, {["timeline"] = {ADDED_9_0_1}}),	-- Relic of the Past III [Legion]
				r(330172, {["timeline"] = {ADDED_9_0_1}}),	-- Relic of the Past IV [Legion]
				r(330173, {["timeline"] = {ADDED_9_0_1}}),	-- Relic of the Past V [Legion]
			},
		}),
		q(39681, {	-- The Properties of Leystone
			["sourceQuest"] = 38499,	-- Strange New Ores
			["provider"] = { "n", 92183 },	-- Alard Schmied
			["coord"] = { 45.0, 29.6, LEGION_DALARAN },
			["groups"] = {
				r(182928),	-- Leystone Armguards [Rank 1] (RECIPE!)
				r(182929),	-- Leystone Waistguard [Rank 1] (RECIPE!)
			},
		}),
		q(38502, {	-- The Methods of the Nightfallen
			["sourceQuest"] = 39681,	-- The Properties of Leystone
			["provider"] = { "n", 97261 },	-- Alard Schmied
			["coord"] = { 45.0, 29.6, LEGION_DALARAN },
			["groups"] = {
				i(123976),	-- Ancient Sentry Construct Memory Core (QI!)
			},
		}),
		q(38501, {	-- Hatecoil Hammerwork
			["sourceQuest"] = 39681,	-- The Properties of Leystone
			["provider"] = { "n", 97261 },	-- Alard Schmied
			["coord"] = { 45.0, 29.6, LEGION_DALARAN },
			["groups"] = {
				r(182935),	-- Leystone Breastplate [Rank 1] (RECIPE!)
				r(182930),	-- Leystone Pauldrons [Rank 1] (RECIPE!)
			},
		}),
		q(38505, {	-- Engineers: Not COMPLETELY Useless
			["sourceQuests"] = {
				38501,	-- Hatecoil Hammerwork
				38502,	-- The Methods of the Nightfallen
			},
			["provider"] = { "n", 97261 },	-- Alard Schmied
			["coord"] = { 45.0, 29.6, LEGION_DALARAN },
			["groups"] = {
				i(123977),	-- Ancient Sentry Construct Memory Core (QI!)
			},
		}),
		q(38506, {	-- Chicken Scratch
			["sourceQuest"] = 38505,	-- Engineers: Not COMPLETELY Useless
			["provider"] = { "n", 92194 },	-- Timofey Oshenko
			["coord"] = { 38.4, 27.4, LEGION_DALARAN },
			["groups"] = {
				i(123978),	-- Ancient Highborne Data Printout (QI!)
			},
		}),
		q(38507, {	-- Secrets of Leysmithing
			["sourceQuest"] = 38506,	-- Chicken Scratch
			["provider"] = { "n", 92195 },	-- Professor Pallin
			["coord"] = { 41.6, 37.2, LEGION_DALARAN },
		}),
		q(38515, {	-- Nature Provides
			["sourceQuest"] = 38507,	-- Secrets of Leysmithing
			["provider"] = { "n", 97261 },	-- Alard Schmied
			["coord"] = { 45.0, 29.6, LEGION_DALARAN },
			["cost"] = { { "i", 124103,	10 }, },	-- 10xFoxflower
		}),
		q(38500, {	-- Leysmithing Mastery
			["sourceQuest"] = 38515,	-- Nature Provides
			["provider"] = { "n", 97261 },	-- Alard Schmied
			["coord"] = { 45.0, 29.6, LEGION_DALARAN },
			["groups"] = {
				r(182934),	-- Leystone Boots [Rank 1] (RECIPE!)
				r(182933),	-- Leystone Gauntlets [Rank 1] (RECIPE!)
				r(182931),	-- Leystone Greaves [Rank 1] (RECIPE!)
				r(182932),	-- Leystone Helm [Rank 1] (RECIPE!)
				r(183562, {["u"]=TRAINING}),	-- Handcrafted Leystone Gauntlets
				r(183280, {["u"]=TRAINING}),	-- Heated Leystone Bar
				r(183279, {["u"]=TRAINING}),	-- Leystone Bar
				r(183281, {["u"]=TRAINING}),	-- Leystone Cuffplate
				r(183283, {["u"]=TRAINING}),	-- Leystone Fingerguard
				i(124051),	-- Burnt, Exploded Mess (QI!)
				i(128777),	-- Heated Leystone Bar (QI!)
				i(124007),	-- Leystone Bar (QI!)
				i(124009),	-- Leystone Cuffplate (QI!)
				i(124010),	-- Leystone Fingerguard (QI!)
				i(124008),	-- Red-Hot Leystone Bar (QI!)
				i(124005),	-- Shopkeeper's Leystone Ore (QI!)
			},
		}),
		q(38563, {	-- Flower-Pickers and Potion-Quaffers
			["sourceQuest"] = 38500,	-- Leysmithing Mastery
			["provider"] = { "n", 97261 },	-- Alard Schmied
			["coord"] = { 45.0, 29.6, LEGION_DALARAN },
		}),
		q(38513, {	-- The Highmountain Smiths
			["sourceQuest"] = 38563,	-- Flower-Pickers and Potion-Quaffers
			["provider"] = { "n", 92183 },	-- Alard Schmied
			["coord"] = { 45.0, 29.6, LEGION_DALARAN },
			["isBreadcrumb"] = true,
		}),
		q(38514, {	-- You Are Not Worthy
			["sourceQuests"] = { 38513 },	-- The Highmountain Smiths
			["provider"] = { "n", 92242 },	-- Barm Stonebreaker
			["coord"] = { 55.2, 84.2, HIGHMOUNTAIN },
			["cost"] = {
				{ "i", 123893, 1 },	-- 1xLeystone Gauntlets
			},
		}),
		q(39699, {	-- Ironhorn Leysmithing
			["sourceQuests"] = { 38514 },	-- You Are Not Worthy
			["provider"] = { "n", 92242 },	-- Barm Stonebreaker
			["coord"] = { 55.2, 84.2, HIGHMOUNTAIN },
			["groups"] = {
				r(184216, {["u"]=TRAINING}),	-- Large Heated Scrap Metal
				r(184215, {["u"]=TRAINING}),	-- Medium Heated Scrap Metal
				r(184214, {["u"]=TRAINING}),	-- Small Heated Scrap Metal
				r(184220, {["u"]=TRAINING}),	-- Scrapmetal Cuffplate
				r(184217, {["u"]=TRAINING}),	-- Scrapmetal Fingerplates
				r(184219, {["u"]=TRAINING}),	-- Scrapmetal Handguard
				r(184218, {["u"]=TRAINING}),	-- Scrapmetal Palmplate
				i(123933),	-- Plans: Leystone Gauntlets [Rank 2] (RECIPE!)
			},
		}),
		q(38519, {	-- Grayheft
			["sourceQuests"] = { 39699 },	-- Ironhorn Leysmithing
			["provider"] = { "n", 92245 },	-- Thala Steeltotem
			["coord"] = { 55.2, 84.2, HIGHMOUNTAIN },
			["groups"] = {
				r(182967),	-- Leystone Gauntlets [Rank 2] (RECIPE!)
			},
		}),
		q(38518, {	-- From One Master to Another
			["sourceQuests"] = { 38519 },	-- Grayheft
			["provider"] = { "n", 92242 },	-- Barm Stonebreaker
			["coord"] = { 55.2, 84.2, HIGHMOUNTAIN },
			["isBreadcrumb"] = true,
		}),
		q(38522, {	-- Not Just Weapons and Armor
			["sourceQuest"] = 38518,	-- From One Master to Another
			["provider"] = { "n", 92183 },	-- Alard Schmied
			["coord"] = { 45.0, 29.6, LEGION_DALARAN },
			["groups"] = {
				r(184309, {["u"]=TRAINING}),	-- Hard Leystone Bar
				r(184313, {["u"]=TRAINING}),	-- Hard Leystone Ingots
				r(184315, {["u"]=TRAINING}),	-- Hard Leystone Nail
				r(184314, {["u"]=TRAINING}),	-- Heated Hard Leystone Ingot
				r(184310, {["u"]=TRAINING}),	-- Leystone Shards
				r(184308, {["u"]=TRAINING}),	-- Leystone Slag
				r(184312, {["u"]=TRAINING}),	-- Lumps of Leystone Slag
			},
		}),
		q(38523, {	-- Leystone Hoofplates
			["sourceQuest"] = 38522,	-- Not Just Weapons and Armor
			["provider"] = { "n", 92183 },	-- Alard Schmied
			["coord"] = { 45.0, 29.6, LEGION_DALARAN },
			["groups"] = {
				r(182999),	-- Leystone Hoofplates (RECIPE!)
			},
		}),
		q(39702, {	-- Legend of Black Rook Hold
			["sourceQuest"] = 38523,	-- Leystone Hoofplates
			["provider"] = { "n", 92183 },	-- Alard Schmied
			["coord"] = { 45.0, 29.6, LEGION_DALARAN },
			["isBreadcrumb"] = true,
		}),
		q(39680, {	-- Between the Hammer...
			["sourceQuests"] = { 39702 },	-- Legend of Black Rook Hold
			["provider"] = { "n", 96763 },	-- Saris Swifthammer
			["coord"] = { 40.0, 54.8, VALSHARAH },
			["groups"] = {
				i(123929),	-- Plans: Leystone Waistguard [Rank 2] (RECIPE!)
			},
		}),
		q(39726, {	-- ...And the Anvil
			["sourceQuests"] = { 39702 },	-- Legend of Black Rook Hold
			["provider"] = { "n", 96763 },	-- Saris Swifthammer
			["coord"] = { 40.0, 54.8, VALSHARAH },
		}),
		q(39729, {	-- The Knowledge of Black Rook
			["sourceQuests"] = {
				39680,	-- Between the Hammer...
				39726,	-- ...And the Anvil
			},
			["provider"] = { "n", 96763 },	-- Saris Swifthammer
			["coord"] = { 40.0, 54.8, VALSHARAH },
			["isBreadcrumb"] = true,
		}),
		q(38564, {	-- A Sweet Bargain
			["sourceQuest"] = 39729,	-- The Knowledge of Black Rock
			["provider"] = { "n", 92183 },	-- Alard Schmied
			["coord"] = { 45.0, 29.6, LEGION_DALARAN },
		}),
		q(44449, {	-- Advanced Quenching
			["sourceQuest"] = 38564,	-- A Sweet Bargain
			["provider"] = { "n", 92183 },	-- Alard Schmied
			["coord"] = { 45.0, 29.6, LEGION_DALARAN },
			["groups"] = {
				r(182969),	-- Leystone Breastplate [Rank 2] (RECIPE!)
				r(184184, {["u"]=TRAINING}),	-- Dull Hard Leystone Armguards
				r(184185, {["u"]=TRAINING}),	-- Hard Leystone Armguards
				r(184182, {["u"]=TRAINING}),	-- Hard Leystone Bar
				r(184183, {["u"]=TRAINING}),	-- Heated Hard Leystone Bar
				r(184181, {["u"]=TRAINING}),	-- Leystone Slag
			},
		}),
		q(38524, {	-- Felsmith Nal'ryssa
			["sourceQuest"] = 44449,	-- Advanced Quenching
			["provider"] = { "n", 92183 },	-- Alard Schmied
			["coord"] = { 45.0, 29.6, LEGION_DALARAN },
			["isBreadcrumb"] = true,
		}),
		q(38525, {	-- Part of the Team
			["sourceQuest"] = 38524,	-- Felsmith Nal'ryssa
			["provider"] = { "n", 92264 },	-- Felsmith Nal'ryssa
			["coord"] = { 30.0, 53.4, SURAMAR },
		}),
		q(38526, {	-- Smith Under Fire
			["sourceQuest"] = 38525,	-- Part of the Team
			["provider"] = { "n", 92264 },	-- Felsmith Nal'ryssa
			["coord"] = { 30.0, 53.4, SURAMAR },
			["groups"] = {
				r(182968),	-- Leystone Boots [Rank 2] (RECIPE!)
				r(184344, {["u"]=TRAINING}),	-- Handmade Leystone Boots
				r(184339, {["u"]=TRAINING}),	-- Leystone Footguard
				r(184338, {["u"]=TRAINING}),	-- Leystone Heelguard
				r(184337, {["u"]=TRAINING}),	-- Leystone Shinplate
				r(184340, {["u"]=TRAINING}),	-- Leystone Soleplate
				r(184336, {["u"]=TRAINING}),	-- Red-Hot Leystone Bar
			},
		}),
		q(38527, {	-- Nal'ryssa's Technique
			["sourceQuest"] = 38526,	-- Smith Under Fire
			["provider"] = { "n", 92264 },	-- Felsmith Nal'ryssa
			["coord"] = { 30.0, 53.4, SURAMAR },
			["cost"] = {
				{ "i", 123918, 60 },	-- 60xLeystone Ore
				{ "i", 123919, 60 },	-- 60xFelslate
			},
		}),
		q(38528, {	-- Leystone's Potential
			["sourceQuest"] = 38527,	-- Nal'ryssa's Technique
			["provider"] = { "n", 92264 },	-- Felsmith Nal'ryssa
			["coord"] = { 30.0, 53.4, SURAMAR },
			["groups"] = {
				r(182962),	-- Leystone Armguards [Rank 2] (RECIPE!)
				r(184405, {["u"]=TRAINING}),	-- Brimstone-Covered Armguards
				r(184407, {["u"]=TRAINING}),	-- Brimstone-Crusted Armguards
				r(184403, {["u"]=TRAINING}),	-- Engraved Leystone Armguards
				r(184408, {["u"]=TRAINING}),	-- Masterwork Leystone Armguards
				r(184404, {["u"]=TRAINING}),	-- Molten Brimstone
				i(124454),	-- Brimstone-Crusted Armguards (QI!)
				i(124450),	-- Engraved Leystone Armguards (QI!)
				i(124451),	-- Felsmith's Infernal Brimstone (QI!)
				i(124449),	-- Felsmith's Leystone Armguards (QI!)
				i(124455),	-- Masterwork Leystone Armguards (QI!)
			},
		}),
		q(38530, {	-- The Firmament Stone
			["sourceQuest"] = 38528,	-- Leystone's Potential
			["provider"] = { "n", 92264 },	-- Felsmith Nal'ryssa
			["coord"] = { 30.0, 53.4, SURAMAR },
			["isBreadcrumb"] = true,
		}),
		q(38531, {	-- Leystone Mastery
			["sourceQuest"] = 38530,	-- The Firmament Stone
			["provider"] = { "n", 92242 },	-- Barm Stonebreaker
			["coord"] = { 55.2, 84.2, HIGHMOUNTAIN },
			["cost"] = {
				{ "i", 123898, 1 },	-- 1xLeystone Armguards
				{ "i", 123892, 1 },	-- 1xLeystone Boots
				{ "i", 123891, 1 },	-- 1xLeystone Breastplate
				{ "i", 123893, 1 },	-- 1xLeystone Gauntlets
				{ "i", 123895, 1 },	-- 1xLeystone Greaves
				{ "i", 123894, 1 },	-- 1xLeystone Helm
				{ "i", 123896, 1 },	-- 1xLeystone Pauldrons
				{ "i", 123897, 1 },	-- 1xLeystone Waistguard
				{ "i", 123898, 1 },	-- 1xLeystone Armguards
				{ "i", 123898, 1 },	-- 1xLeystone Armguards
			},
			["groups"] = {
				r(182966),	-- Leystone Helm [Rank 2] (RECIPE!)
				r(182964),	-- Leystone Pauldrons [Rank 2] (RECIPE!)
			},
		}),
		q(38532, {	-- Maw of Souls: Hammered By The Storm
			["description"] = "Remember to loot Heyla to obtain Terrorspike.",
			["sourceQuests"] = { 38530 },	-- The Firmament Stone
			["provider"] = { "n", 92242 },	-- Barm Stonebreaker
			["coord"] = { 55.2, 84.2, HIGHMOUNTAIN },
			["maps"] = { 706, 707, 708 },	-- Maw of Souls
			["groups"] = {
				i(124025, {	-- Ancient Vrykul Hammer (QI!)
					["cr"] = 96759,	-- Helya
				}),
				i(136350),	-- Brumdysla, Hammer of Vrorsk
			},
		}),
		q(38559, {	-- Worthy of the Stone
			["sourceQuests"] = {
				38531,	-- Leystone Mastery
				38532,	-- Maw of Souls: Hammered By The Storm
			},
			["provider"] = { "n", 92242 },	-- Barm Stonebreaker
			["coord"] = { 55.2, 84.2, HIGHMOUNTAIN }
		}),
		q(38833, {	-- The Art of Demonsteel
			["sourceQuests"] = { 38559 },	-- Worthy of the Stone
			["provider"] = { "n", 92243 },	-- Muirn Ironhorn
			["coord"] = { 54.6, 84.0, HIGHMOUNTAIN },
			["groups"] = {
				r(184442),	-- Demonsteel Bar
			},
		}),
		q(38533, {	-- Tribal Knowledge
			["sourceQuests"] = { 38833 },	-- The Art of Demonsteel
			["provider"] = { "n", 92243 },	-- Muirn Ironhorn
			["coord"] = { 54.6, 84.0, HIGHMOUNTAIN },
			["groups"] = {
				r(182944),	-- Demonsteel Armguards [Rank 1] (RECIPE!)
			},
		}),
		q(38534, {	-- Demonsteel Armguards
			["description"] = "Create one Rank 1 of this item.",
			["sourceQuests"] = { 38533 },	-- Tribal Knowledge
			["provider"] = { "n", 92243 },	-- Muirn Ironhorn <Blacksmithing Trainer>
			["coord"] = { 54.6, 84.0, HIGHMOUNTAIN },
			["cost"] = { {"i", 123917, 1 } },	-- 1x Demonsteel Armguards
			["groups"] = {
				i(123940),	-- Plans: Demonsteel Armguards [Rank 2] (RECIPE!)
			},
		}),
		q(38538, {	-- Demonsteel Boots
			["description"] = "Create one Rank 1 of this item.",
			["sourceQuests"] = { 38533 },	-- Tribal Knowledge
			["provider"] = { "n", 92243 },	-- Muirn Ironhorn <Blacksmithing Trainer>
			["coord"] = { 54.6, 84.0, HIGHMOUNTAIN },
			["cost"] = { {"i", 123911, 1 } },	-- 1x Demonsteel Boots
			["groups"] = {
				i(123946),	-- Plans: Demonsteel Boots [Rank 2] (RECIPE!)
			},
		}),
		q(38542, {	-- Demonsteel Breastplate
			["description"] = "Create one Rank 1 of this item.",
			["sourceQuests"] = { 38533 },	-- Tribal Knowledge
			["provider"] = { "n", 92243 },	-- Muirn Ironhorn <Blacksmithing Trainer>
			["coord"] = { 54.6, 84.0, HIGHMOUNTAIN },
			["cost"] = { {"i", 123910, 1 } },	-- 1x Demonsteel Breastplate
			["groups"] = {
				i(123947),	-- Plans: Demonsteel Breastplate [Rank 2] (RECIPE!)
			},
		}),
		q(38539, {	-- Demonsteel Gauntlets
			["description"] = "Create one Rank 1 of this item.",
			["sourceQuests"] = { 38533 },	-- Tribal Knowledge
			["provider"] = { "n", 92243 },	-- Muirn Ironhorn <Blacksmithing Trainer>
			["coord"] = { 54.6, 84.0, HIGHMOUNTAIN },
			["cost"] = { {"i", 123912, 1 } },	-- 1x Demonsteel Gauntlets
			["groups"] = {
				i(123945),	-- Plans: Demonsteel Gauntlets [Rank 2] (RECIPE!)
			},
		}),
		q(38541, {	-- Demonsteel Greaves
			["description"] = "Create one Rank 1 of this item.",
			["sourceQuests"] = { 38533 },	-- Tribal Knowledge
			["provider"] = { "n", 92243 },	-- Muirn Ironhorn <Blacksmithing Trainer>
			["coord"] = { 54.6, 84.0, HIGHMOUNTAIN },
			["cost"] = { {"i", 123914, 1 } },	-- 1x Demonsteel Greaves
			["groups"] = {
				i(123943),	-- Plans: Demonsteel Greaves [Rank 2] (RECIPE!)
			},
		}),
		q(38540, {	-- Demonsteel Helm
			["description"] = "Create one Rank 1 of this item.",
			["sourceQuests"] = { 38533 },	-- Tribal Knowledge
			["provider"] = { "n", 92243 },	-- Muirn Ironhorn <Blacksmithing Trainer>
			["coord"] = { 54.6, 84.0, HIGHMOUNTAIN },
			["cost"] = { {"i", 123913, 1 } },	-- 1x Demonsteel Helm
			["groups"] = {
				i(123944),	-- Plans: Demonsteel Helm [Rank 2] (RECIPE!)
			},
		}),
		q(38537, {	-- Demonsteel Pauldrons
			["description"] = "Create one Rank 1 of this item.",
			["sourceQuests"] = { 38533 },	-- Tribal Knowledge
			["provider"] = { "n", 92243 },	-- Muirn Ironhorn <Blacksmithing Trainer>
			["coord"] = { 54.6, 84.0, HIGHMOUNTAIN },
			["cost"] = { {"i", 123915, 1 } },	-- 1x Demonsteel Pauldrons
			["groups"] = {
				i(123942),	-- Plans: Demonsteel Pauldrons [Rank 2] (RECIPE!)
			},
		}),
		q(38536, {	-- Demonsteel Waistguard
			["description"] = "Create one Rank 1 of this item.",
			["sourceQuests"] = { 38533 },	-- Tribal Knowledge
			["provider"] = { "n", 92243 },	-- Muirn Ironhorn <Blacksmithing Trainer>
			["coord"] = { 54.6, 84.0, HIGHMOUNTAIN },
			["cost"] = { {"i", 123916, 1 } },	-- 1x Demonsteel Waistguard
			["groups"] = {
				i(123941),	-- Plans: Demonsteel Waistguard [Rank 2] (RECIPE!)
			},
		}),
		------ Rethu's Incessant Courage Questline ------
		q(46696, bubbleDownSelf({ ["timeline"] = { ADDED_7_2_0 } }, {	-- The Legend of the Four Hammers
			["sourceQuests"] = { 46804 },	-- Fashion History and a Philosophy of Style
			["provider"] = { "n", 120221 },	-- Eliezer Hammerbeard
			["coord"] = { 41.2, 59.4, BROKEN_SHORE },
			["repeatable"] = true,
			["groups"] = {
				i(147197),	-- Legends of the Four Hammers (QI!)
			},
		})),
		q(46700, bubbleDownSelf({ ["timeline"] = { ADDED_7_2_0 } }, {	-- Armor of the Ancients
			["sourceQuests"] = { 46696 },	-- The Legend of the Four Hammers
			["provider"] = { "n", 120221 },	-- Eliezer Hammerbeard
			["coord"] = { 41.2, 59.4, BROKEN_SHORE },
			["repeatable"] = true,
			["groups"] = {
				i(146709),	-- Ancient Demonsteel (QI!)
				i(146708),	-- Ancient Demonsteel Armor (QI!)
			},
		})),
		q(46698, bubbleDownSelf({ ["timeline"] = { ADDED_7_2_0 } }, {	-- The Dragonhunter
			["sourceQuests"] = { 46696 },	-- The Legend of the Four Hammers
			["provider"] = { "n", 120221 },	-- Eliezer Hammerbeard
			["coord"] = { 41.2, 59.4, BROKEN_SHORE },
			["maps"] = { 731 },	-- Neltharion's Lair
			["repeatable"] = true,
			["groups"] = {
				i(146704),	-- Red-Hot Draconic Slag (QI!)
			},
		})),
		q(46697, bubbleDownSelf({ ["timeline"] = { ADDED_7_2_0 } }, {	-- The Godfighter
			["sourceQuests"] = { 46696 },	-- The Legend of the Four Hammers
			["provider"] = { "n", 120221 },	-- Eliezer Hammerbeard
			["coord"] = { 41.2, 59.4, BROKEN_SHORE },
			["maps"] = { 703, 704, 705 },	-- Halls of Valor
			["repeatable"] = true,
			["groups"] = {
				i(146703),	-- Godfighter Hammer (QI!)
				i(146702),	-- White Lightningsteel (QI!)
			},
		})),
		q(46699, bubbleDownSelf({ ["timeline"] = { ADDED_7_2_0 } }, {	-- The Hellslayer
			["sourceQuests"] = { 46696 },	-- The Legend of the Four Hammers
			["provider"] = { "n", 120221 },	-- Eliezer Hammerbeard
			["coord"] = { 41.2, 59.4, BROKEN_SHORE },
			["maps"] = { 806, 807, 808 },	-- Trial of Valor
			["repeatable"] = true,
			["groups"] = {
				i(146707),	-- Hellslayer Hammer (QI!)
				i(146706),	-- Frostveined Shale (QI!)
			},
		})),
		q(46701, bubbleDownSelf({ ["timeline"] = { ADDED_7_2_0 } }, {	-- Hammer of Forgotten Heroes
			["sourceQuests"] = {
				46700,	-- Armor of the Ancients
				46698,	-- The Dragonhunter
				46697,	-- The Godfighter
				46699,	-- The Hellslayer
			},
			["provider"] = { "n", 120221 },	-- Eliezer Hammerbeard
			["coord"] = { 41.1, 59.3, BROKEN_SHORE },
			["repeatable"] = true,
			["groups"] = {
				i(147443),	-- Carrying Case For Hammer of Forgotten Heroes (QI!)
				i(147207),	-- Legendary Blacksmithing Supplies (QI!)
				i(146714),	-- Hammer of Forgotten Heroes
			},
		})),
		------ 7.3.0 ------
		q(48055, bubbleDownSelf({ ["timeline"] = { ADDED_7_3_0 } }, {	-- Empyrial Strength
			["sourceQuests"] = { 47743 },	-- The Child of Light and Shadow
			["provider"] = { "n", 125341 },	-- Khamir
			["coord"] = { 40.6, 65.6, THE_VINDICAAR_KROKUUN_LOWER },
			["cost"] = {
				{ "i", 151564, 42 },	-- 42xEmpyrium
				{ "i", 151568, 2 },		-- 2xPrimal Sargerite
			},
			["groups"] = {
				r(247710),	-- Empyrial Breastplate [Rank 1] (RECIPE!)
				r(248869, {["u"]=TRAINING}),	-- Empyrial Back Plate
				r(248870, {["u"]=TRAINING}),	-- Empyrial Breastplate
				r(248867, {["u"]=TRAINING}),	-- Empyrial Chest Plate
				r(248864, {["u"]=TRAINING}),	-- Empyrial Rivets
				i(151872),	-- Empyrial Breastplate (QI!)
				i(151925),	-- Empyrial Back Plate (QI!)
				i(151924),	-- Empyrial Chest Plate (QI!)
				i(151923),	-- Empyrial Rivet (QI!)
			},
		})),
		q(48053, bubbleDownSelf({ ["timeline"] = { ADDED_7_3_0 } }, {	-- Weigh Anchor [A]
			["sourceQuests"] = { 38499 },	-- Strange New Ores
			["provider"] = { "n", 92183 },	-- Alard Schmied
			["coord"] = { 45.0, 29.6, LEGION_DALARAN },
			["races"] = ALLIANCE_ONLY,
			["groups"] = {
				r(247700),	-- Felslate Anchor (RECIPE!)
				i(151871),	-- Crate of Felslate (QI!)
			},
		})),
		q(48054, bubbleDownSelf({ ["timeline"] = { ADDED_7_3_0 } }, {	-- Weigh Anchor [H]
			["sourceQuests"] = { 38499 },	-- Strange New Ores
			["provider"] = { "n", 106655 },	-- Arcanomancer Vridiel
			["coord"] = { 45.0, 29.6, LEGION_DALARAN },
			["races"] = HORDE_ONLY,
			["groups"] = {
				r(247700),	-- Felslate Anchor (RECIPE!)
				i(151871),	-- Crate of Felslate (QI!)
			},
		})),
	})),
	expansion(EXPANSION.BFA, bubbleDownSelf({ ["timeline"] = { ADDED_8_0_1_LAUNCH } }, {
		n(ACHIEVEMENTS, bubbleDownSelf({ ["timeline"] = { ADDED_10_1_7 } }, {
			ach(18771, {	-- Khaz'gorian Smithing Hammer
				["provider"] = { "i", 152839 },	-- Khaz'gorian Smithing Hammer
			}),
		})),
		n(QUESTS, {
			q(54465, {	-- Blacksmithing Plans [A]
				["provider"] = { "n", 133536 },	-- Grix "Ironfists" Barlow
				["coord"] = { 73.6, 8.6, BORALUS },
				["timeline"] = { ADDED_8_1_0, REMOVED_9_0_1 },	-- Might no be correct removed patch
				["races"] = ALLIANCE_ONLY,
			}),
			q(54466, {	-- Blacksmithing Plans [H]
				["provider"] = { "n", 127112 },	-- Forgemaster Zak'aal
				["coord"] = { 43.6, 38.3, DAZARALOR },
				["timeline"] = { ADDED_8_1_0, REMOVED_9_0_1 },	-- Might no be correct removed patch
				["races"] = HORDE_ONLY,
			}),
			------ Tools of Trade Questline ------
			q(50123, {	-- A Recipe For the Ages [A]
				["description"] = "Requires 150 Kul Tiran Blacksmithing.",
				["provider"] = { "n", 133536 },	-- Grix "Ironfists" Barlow
				["coord"] = { 73.6, 8.6, BORALUS },
				["timeline"] = { ADDED_8_1_5 },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(156875),	-- Revlis Ore (QI!)
				},
			}),
			q(50276, {	-- A Recipe For the Ages [H]
				["description"] = "Requires 150 Zandalari Blacksmithing.",
				["provider"] = { "n", 127112 },	-- Forgemaster Zak'aal
				["coord"] = { 43.6, 38.3, DAZARALOR },
				["timeline"] = { ADDED_8_1_5 },
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(156875),	-- Revlis Ore (QI!)
				},
			}),
			q(50114, {	-- Hammering Out Information [A]
				["sourceQuests"] = { 50123 },	-- A Recipe For the Ages [A]
				["provider"] = { "n", 133536 },	-- Grix "Ironfists" Barlow
				["coord"] = { 73.6, 8.6, BORALUS },
				["timeline"] = { ADDED_8_1_5 },
				["races"] = ALLIANCE_ONLY,
			}),
			q(50277, {	-- Hammering Out Information [H]
				["sourceQuests"] = { 50276 },	-- A Recipe For the Ages [H]
				["provider"] = { "n", 127112 },	-- Forgemaster Zak'aal
				["coord"] = { 43.6, 38.3, DAZARALOR },
				["timeline"] = { ADDED_8_1_5 },
				["races"] = HORDE_ONLY,
			}),
			q(50270, {	-- Deep In the Core [A]
				["sourceQuests"] = { 50114 },	-- Hammering Out Information [A]
				["provider"] = { "n", 133536 },	-- Grix "Ironfists" Barlow
				["coord"] = { 73.6, 8.6, BORALUS },
				["timeline"] = { ADDED_8_1_5 },
				["races"] = ALLIANCE_ONLY,
			}),
			q(50278, {	-- Deep In the Core [H]
				["sourceQuests"] = { 50277 },	-- Hammering Out Information [H]
				["provider"] = { "n", 127112 },	-- Forgemaster Zak'aal
				["coord"] = { 43.6, 38.3, DAZARALOR },
				["timeline"] = { ADDED_8_1_5 },
				["races"] = HORDE_ONLY,
			}),
			q(50271, {	-- Smash and Grab
				["sourceQuests"] = {
					50270,	-- Deep In the Core [A]
					50278,	-- Deep In the Core [H]
				},
				["sourceQuestNumRequired"] = 1,
				["provider"] = { "n", 133489 },	-- Ormhun Stonehammer
				["coord"] = { 53.9, 50.0, DEEPHOLM },
				["timeline"] = { ADDED_8_1_5 },
				["groups"] = {
					i(156887),	-- Diaminium (QI!)
				},
			}),
			q(50272, {	-- An Ear to the Ground
				["sourceQuests"] = {
					50270,	-- Deep In the Core [A]
					50278,	-- Deep In the Core [H]
				},
				["sourceQuestNumRequired"] = 1,
				["provider"] = { "n", 133489 },	-- Ormhun Stonehammer
				["coord"] = { 53.9, 50.0, DEEPHOLM },
				["timeline"] = { ADDED_8_1_5 },
				["groups"] = {
					i(157556),	-- Earthen Thumper (QI!)
					i(156886),	-- Endurite (QI!)
				},
			}),
			q(50274, {	-- Titanic Forging
				["sourceQuests"] = {
					50271,	-- Smash and Grab
					50272,	-- An Ear to the Ground
				},
				["provider"] = { "n", 133489 },	-- Ormhun Stonehammer
				["coord"] = { 53.9, 50.0, DEEPHOLM },
				["timeline"] = { ADDED_8_1_5 },
			}),
			q(50288, {	-- Therazane's Choice
				["sourceQuests"] = { 50274 },	-- Titanic Forging
				["provider"] = { "n", 133796 },	-- Therazane
				["coord"] = { 27.5, 50.8, DEEPHOLM },
				["timeline"] = { ADDED_8_1_5 },
				["groups"] = {
					i(167021),	-- Khaz'gorian Anvil (QI!)
				},
			}),
			q(50275, bubbleDownSelf({ ["timeline"] = { ADDED_8_1_5 } }, {	-- Anvil's Away [A]
				["sourceQuests"] = { 50288 },	-- Therazane's Choice
				["provider"] = { "n", 133796 },	-- Therazane
				["coord"] = { 27.5, 50.8, DEEPHOLM },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					r(253145),	-- Khaz'gorian Smithing Hammer (RECIPE!)
				},
			})),
			q(50279, bubbleDownSelf({ ["timeline"] = { ADDED_8_1_5 } }, {	-- Anvil's Away [H]
				["sourceQuests"] = { 50288 },	-- Therazane's Choice
				["provider"] = { "n", 133796 },	-- Therazane
				["coord"] = { 27.5, 50.8, DEEPHOLM },
				["races"] = HORDE_ONLY,
				["groups"] = {
					r(253145),	-- Khaz'gorian Smithing Hammer (RECIPE!)
				},
			})),
		}),
	})),
	expansion(EXPANSION.DF, bubbleDownSelf({ ["timeline"] = { ADDED_10_0_2_LAUNCH } }, {
		n(QUESTS, {
			q(70358, {	-- Dragon Isles Blacksmithing
				["description"] = "This quest can only be picked up PRIOR to learning Dragon Isles Blacksmithing.",
				["provider"] = { "n", 192563 },	-- Kholmar Sunrunner
				["coord"] = { 76.4, 34.4, THE_WAKING_SHORES },
				["lockCriteria"] = { 1,
					"spellID", 365677,	-- Dragon Isles Blacksmithing
					"questID", 70357,	-- Dragon Isles Blacksmithing
				},
			}),
			q(70357, {	-- Dragon Isles Blacksmithing
				["description"] = "This quest can only be picked up PRIOR to learning Dragon Isles Blacksmithing.",
				["provider"] = { "n", 192164 },	-- Gringot Coldsteel <Blacksmithing Trainer>
				["coord"] = { 25.8, 54.4, THE_WAKING_SHORES },
				["lockCriteria"] = { 1,
					"spellID", 365677,	-- Dragon Isles Blacksmithing
					"questID", 70358,	-- Dragon Isles Blacksmithing
				},
			}),
			q(70025, {	-- Artisan's Supply: Draconium Sickle
				["provider"] = { "n", 192164 },	-- Gringot Coldsteel
				["coord"] = { 25.8, 54.4, THE_WAKING_SHORES },
				["cost"] = {{ "i", 191241, 1 }},	-- Draconium Sickle
				["_drop"] = { "g" },
			}),
			q(70250, {	-- Hidden Profession Master Blacksmith
				["name"] = "Hidden Profession Master: Blacksmith",
				["provider"] = { "n", 194836 },	-- Grekka Anvilsmash
				["coord"] = { 43.2, 66.6, THE_WAKING_SHORES },
			}),
			q(70184, {	-- Specialized Secrets: Blacksmithing
				["sourceQuests"] = { 69979 },	-- A Worthy Hunt
				["provider"] = { "n", 193110 },	-- Khadin
				["coord"] = { 51.8, 33.0, OHNAHRAN_PLAINS },
				["cost"] = {{ "i", 191784, 1 }},	-- 1x Dragon Shard of Knowledge
				["isRepeatable"] = true,
				["groups"] = {
					i(190456),	-- Artisan's Mettle
				},
			}),
		}),
		n(QUESTS, sharedData({
			["isWeekly"] = true,
			["maxReputation"] = { FACTION_ARTISANS_CONSORTIUM_DRAGON_ISLES_BRANCH, 5 },
			["groups"] = {
				i(198606),	-- Blacksmith's Writ
			},
		},{
			------ Requires 25 Skill ------
			q(70589, {	-- Blacksmithing Services Requested
				["description"] = "Requires 25 Skill.",
				["provider"] = { "n", 194026 },	-- Azley
				["coord"] = { 35.6, 58.8, VALDRAKKEN },
			}),
			q(66897, {	-- Fuel for the Forge
				["description"] = "Requires 25 Skill.",
				["provider"] = { "n", 191002 },	-- Dhurrel
				["coord"] = { 36.6, 63.6, VALDRAKKEN },
				["groups"] = {
					i(193864),	-- Magma Core (QI!)
				},
			}),
			q(72398, {	-- Rock and Stone
				["description"] = "Requires 25 Skill.",
				["provider"] = { "n", 191002 },	-- Dhurrel
				["coord"] = { 36.6, 63.6, VALDRAKKEN },
				["groups"] = {
					i(201819),	-- Earthen Sample (QI!)
				},
			}),
			q(66941, {	-- Tremendous Tools
				["description"] = "Requires 25 Skill.",
				["provider"] = { "n", 191002 },	-- Dhurrel
				["coord"] = { 36.6, 63.6, VALDRAKKEN },
				["groups"] = {
					i(194435),	-- Large Tool (QI!)
				},
			}),

			------ Requires 45 Skill ------
			q(66517, {	-- A New Source of Weapons
				["description"] = "Requires 45 Skill.",
				["provider"] = { "n", 191002 },	-- Dhurrel
				["coord"] = { 36.8, 63.6, VALDRAKKEN },
				["groups"] = {
					i(192126),	-- Intact Dracthyr Weapon (QI!)
				},
			}),
			q(70234, {	-- All this Hammering
				["description"] = "Requires 45 Skill.",
				["provider"] = { "n", 185546 },	-- Metalshaper Kuroko
				["coord"] = { 37.0, 47.0, VALDRAKKEN },
			}),
			q(70233, {	-- Axe Shortage
				["description"] = "Requires 45 Skill.",
				["provider"] = { "n", 185546 },	-- Metalshaper Kuroko
				["coord"] = { 37.0, 47.0, VALDRAKKEN },
			}),
			q(70235, {	-- Repair Bill
				["description"] = "Requires 45 Skill.",
				["provider"] = { "n", 185546 },	-- Metalshaper Kuroko
				["coord"] = { 37.0, 47.0, VALDRAKKEN },
			}),
			q(70211, {	-- Stomping Explorers
				["description"] = "Requires 45 Skill.",
				["provider"] = { "n", 185546 },	-- Metalshaper Kuroko
				["coord"] = { 37.0, 47.0, VALDRAKKEN },
			}),

			------ Requires ?? Skill - Patch 10.1.0. ------
			q(75148, {	-- Ancient Techniques
				["provider"] = { "n", 203516 },	-- Kayann
				["coord"] = { 36.5, 62.5, VALDRAKKEN },
				["timeline"] = { ADDED_10_1_0 },
				["groups"] = {
					i(198606),	-- Blacksmith's Writ
					i(204434),	-- Lava-Quenched Blade (QI!)
				},
			}),
			q(75569, {	-- Blacksmith, Black Dragon
				["provider"] = { "n", 203516 },	-- Kayann
				["coord"] = { 36.5, 62.5, VALDRAKKEN },
				["timeline"] = { ADDED_10_1_0 },
			}),
			-- Patch 10.2.0
			q(77935, {	-- A-Sword-ed Needs
				["provider"] = { "n", 210162 },	-- Magnolia Oaken
				["coord"] = { 36.8, 63.1, VALDRAKKEN },
				["timeline"] = { ADDED_10_2_0 },
				["cost"] = {{ "i", 190484, 3 }},	-- 3x Draconium Sword
			}),
			q(77936, {	-- A Warm Harvest
				["provider"] = { "n", 210162 },	-- Magnolia Oaken
				["coord"] = { 36.8, 63.1, VALDRAKKEN },
				["timeline"] = { ADDED_10_2_0 },
				["groups"] = {
					i(198606),	-- Blacksmith's Writ
					i(209049),	-- Essence of Endless Flame (QI!)
				},
			}),
		})),
		filter(RECIPES, {
			["description"] = "These are learned by specialization.",
			["groups"] = sharedData({ ["cost"] = {{ "c", DF_BLACKSMITHING_KNOWLEDGE, 1 }} }, {
				r(376700),	-- Illustrious Insight
				r(371412),	-- Khaz'gorite Blacksmith's Hammer
				r(371374),	-- Khaz'gorite Blacksmith's Toolbox
				r(371366),	-- Khaz'gorite Pickaxe
				r(393853),	-- Master's Hammer
				r(367608),	-- Primal Molten Breastplate
				r(367622),	-- Primal Molten Defender
				r(367606),	-- Primal Molten Gauntlets
				r(365734),	-- Primal Molten Greataxe
				r(367602),	-- Primal Molten Greatbelt
				r(367605),	-- Primal Molten Helm
				r(367604),	-- Primal Molten Legplates
				r(367585),	-- Primal Molten Longsword
				r(367586),	-- Primal Molten Mace
				r(367603),	-- Primal Molten Pauldrons
				r(367607),	-- Primal Molten Sabatons
				r(365730),	-- Primal Molten Shortblade
				r(365731),	-- Primal Molten Spellblade
				r(367601),	-- Primal Molten Vambraces
				r(365729),	-- Primal Molten Warglaive
			}),
		}),
		n(TREASURES, {
			o(411179,	-- Amirdrassil Defender's Shield
			bubbleDownSelf({ ["timeline"] = { ADDED_10_2_0 } }, {
				["coord"] = { 49.8, 63.0, EMERALD_DREAM },
				["questID"] = 78417,
				["groups"] = {
					i(210464),	-- Amirdrassil Defender's Shield
				},
			})),
			o(376657, {	-- Ancient Monument
				["description"] = "Kill NPCs and loot the sword. If you receive no loot, check your mail!",
				["crs"] = { 188648 },	-- Enchanted Bulwark
				["coord"] = { 22.3, 87.7, THE_WAKING_SHORES },
				["questID"] = 70246,
				["groups"] = {
					i(201007),	-- Ancient Monument
				},
			}),
			o(380620, {	-- Ancient Spear Shards
				["coord"] = { 81.1, 37.9, OHNAHRAN_PLAINS },
				["questID"] = 70313,
				["groups"] = {
					i(201004),	-- Ancient Spear Shards
				},
			}),
			o(402632,	-- Brimstone Rescue Ring
			bubbleDownSelf({ ["timeline"] = { ADDED_10_1_0 } }, {
				["coord"] = { 48.3, 22.0, ZARALEK_CAVERN },
				["questID"] = 76079,
				["groups"] = {
					i(205987),	-- Brimstone Rescue Ring
				},
			})),
			o(380619, {	-- Curious Ingots
				["coord"] = { 65.6, 25.7, THE_WAKING_SHORES },
				["questID"] = 70312,
				["groups"] = {
					i(201005),	-- Curious Ingots
				},
			}),
			o(380618, {	-- Draconic Flux
				["coord"] = { 52.2, 80.5, THALDRASZUS },
				["questID"] = 70311,
				["groups"] = {
					i(201006),	-- Draconic Flux
				},
			}),
			o(411180,	-- Deathstalker Chassis
			bubbleDownSelf({ ["timeline"] = { ADDED_10_2_0 } }, {
				["coord"] = { 36.34, 46.79, EMERALD_DREAM },
				["questID"] = 78418,
				["groups"] = {
					i(210465),	-- Deathstalker Chassis
				},
			})),
			o(380709, {	-- Falconer Gauntlet Drawings
				["coord"] = { 50.9, 66.5, OHNAHRAN_PLAINS },
				["questID"] = 70353,
				["groups"] = {
					i(201009),	-- Falconer Gauntlet Drawings
				},
			}),
			o(411181,	-- Flamesworn Render
			bubbleDownSelf({ ["timeline"] = { ADDED_10_2_0 } }, {
				["coord"] = { 37.27, 22.94, EMERALD_DREAM },
				["questID"] = 78419,
				["groups"] = {
					i(210466),	-- Flamesworn Render
				},
			})),
			o(380516, {	-- Glimmer of Wisdom
				["description"] = "Craft a Primal Molten Alloy or a Frostfire Alloy next to the Dim Forge. A sparkle will appear in the deposit box, which you can click to grab the treasure.",
				["sourceQuests"] = { 70232 },	-- This triggers when crafting the Alloy, which makes the treasure appear.
				["coord"] = { 56.4, 19.5, THE_WAKING_SHORES },
				["questID"] = 70230,
				["groups"] = {
					i(198791),	-- Glimmer of Blacksmithing Wisdom
				},
			}),
			o(380598, {	-- Molten Ingot
				["coord"] = { 35.6, 64.5, THE_WAKING_SHORES },
				["questID"] = 70296,
				["groups"] = {
					i(201008),	-- Molten Ingot
				},
			}),
			o(380617, {	-- Qalashi Weapon Diagram
				["coord"] = { 34.5, 67.1, THE_WAKING_SHORES },
				["questID"] = 70310,
				["groups"] = {
					i(201010),	-- Qalashi Weapon Diagram
				},
			}),
			o(380623, {	-- Spelltouched Tongs
				["description"] = "If you do not have Mining to clear the Rock Wall, try dying. Ghosts can walk through it.",
				["coord"] = { 53.1, 66.1, THE_AZURE_SPAN },
				["questID"] = 70314,
				["groups"] = {
					i(201011),	-- Spelltouched Tongs
				},
			}),
			o(402627,	-- Well-Worn Kiln
			bubbleDownSelf({ ["timeline"] = { ADDED_10_1_0 } }, {
				["coord"] = { 57.2, 54.6, ZARALEK_CAVERN },
				["questID"] = 76078,
				["groups"] = {
					i(205986),	-- Well-Worn Kiln
				},
			})),
			o(402634,	-- Zaqali Elder Spear
			bubbleDownSelf({ ["timeline"] = { ADDED_10_1_0 } }, {
				["coord"] = { 27.5, 42.9, ZARALEK_CAVERN },
				["questID"] = 76080,
				["groups"] = {
					i(205988),	-- Zaqali Elder Spear
				},
			})),
		}),
		n(WEEKLY_PROFESSION_KNOWLEDGE, sharedData({
			["isWeekly"] = true,
			["groups"] = {
				currency(DF_BLACKSMITHING_KNOWLEDGE),
			},
		},{
			i(198606),	-- Blacksmith's Writ
			q(74109, {	-- DF Inscription Order: Blacksmith
				["name"] = "DF Inscription Order: Blacksmith",
				["description"] = "Requires a crafting order from Inscription.",
				["provider"] = { "i", 198454 },	-- Draconic Treatise on Blacksmith
			}),
			q(66381, {	-- DF Weekly Blacksmithing Knowledgepoint #1
				["name"] = "DF Blacksmithing Treasure #1",
				["provider"] = { "i", 192131 },	-- Valdrakken Weapon Chain
			}),
			q(66382, {	-- DF Weekly Blacksmithing Knowledgepoint #2
				["name"] = "DF Blacksmithing Treasure #2",
				["provider"] = { "i", 192132 },	-- Draconium Blade Sharpener
			}),
			q(70513, {	-- DF Weekly Blacksmithing Knowledgepoint #3
				["name"] = "DF Blacksmithing Drop #1: Fire Elemental",
				["description"] = "Drops from any Fire Elemental.\nCoordinates link to the spot(s) we found best.",
				["provider"] = { "i", 198966 },	-- Molten Globule
				["coord"] = { 39.0, 48.8, THALDRASZUS },
				["crs"] = {
					196168,	-- Springs Heater
					196171,	-- Flame Boiler
				},
			}),
			q(70512, {	-- DF Weekly Blacksmithing Knowledgepoint #4
				["name"] = "DF Blacksmithing Drop #2: Earth Elemental",
				["description"] = "Drops from any Earth Elemental.\nCoordinates link to the spot(s) we found best.",
				["provider"] = { "i", 198965 },		-- Primeval Earth Fragment
				["coords"] = {
					{ 50.6, 57.6, THALDRASZUS },
					{ 48.8, 60.6, THALDRASZUS },
					{ 47.8, 35.6, THE_WAKING_SHORES },
					{ 50.6, 33.2, THE_WAKING_SHORES },
					{ 53.6, 31.0, THE_WAKING_SHORES },
				},
				["crs"] = {
					194212,	-- Unleashed Rubble
					194517,	-- Crushing Elemental
				},
			}),
		})),
	})),
	expansion(EXPANSION.TWW, bubbleDownSelf({ ["timeline"] = { ADDED_11_0_2 } }, {
		n(QUESTS, {
			q(84127, {	-- Blacksmithing Services Requested
				["sourceQuests"] = { 84274 },	-- Crafting Orders: Blacksmithing
				["provider"] = { "n", 228177 },	-- Kala Clayhoof
				["coord"] = { 59.2, 55.2, DORNOGAL },
				["isWeekly"] = true,
				["groups"] = {
					i(228774),	-- Algari Blacksmiths's Journal
				},
			}),
		}),
		filter(RECIPES, {
			["description"] = "These are learned by specialization.",
			["groups"] = sharedData({ ["cost"] = {{ "c", TWW_BLACKSMITHING_KNOWLEDGE, 1 }} }, {
				r(450281),	-- Artisan Blacksmith's Hammer
				r(450282),	-- Artisan Blacksmith's Toolbox
				r(450238),	-- Charged Claymore
				r(450239),	-- Charged Halberd
				r(450235),	-- Charged Hexsword
				r(450241),	-- Charged Invoker
				r(453727),	-- Everburning Ignition
				r(450221),	-- Everforged Breastplate
				r(450230),	-- Everforged Dagger
				r(450223),	-- Everforged Defender
				r(450228),	-- Everforged Gauntlets
				r(450234),	-- Everforged Greataxe
				r(450222),	-- Everforged Greatbelt
				r(450224),	-- Everforged Helm
				r(450225),	-- Everforged Legplates
				r(450231),	-- Everforged Longsword
				r(450233),	-- Everforged Mace
				r(450227),	-- Everforged Pauldrons
				r(450220),	-- Everforged Sabatons
				r(450229),	-- Everforged Stabber
				r(450226),	-- Everforged Vambraces
				r(450232),	-- Everforged Warglaive
				r(450286),	-- Ironclaw Razorstone
				r(450285),	-- Ironclaw Whetstone
				r(450289),	-- Tempered Framework
			}),
		}),
		n(TREASURES, {
			o(456017, {	-- Ancient Earthen Anvil
				["coord"] = { 59.8, 61.9, ISLE_OF_DORN },
				["questID"] = 83848,
				["groups"] = {
					i(226276),	-- Ancient Earthen Anvil
				},
			}),
			o(456016, {	-- Dornogal Hammer
				["coord"] = { 47.7, 26.5, DORNOGAL },
				["questID"] = 83849,
				["groups"] = {
					i(226277),	-- Dornogal Hammer
				},
			}),
			o(456014, {	-- Earthen Chisels
				["coord"] = { 60.6, 53.8, THE_RINGING_DEEPS },
				["questID"] = 83851,
				["groups"] = {
					i(226279),	-- Earthen Chisels
				},
			}),
			o(456013, {	-- Holy Flame Forge
				["coord"] = { 47.6, 61.0, HALLOWFALL },
				["questID"] = 83852,
				["groups"] = {
					i(226280),	-- Holy Flame Forge
				},
			}),
			o(456011, {	-- Nerubian Smith's Kit
				["coord"] = { 46.6, 22.7, NERUBAR },
				["questID"] = 83854,
				["groups"] = {
					i(226282),	-- Nerubian Smith's Kit
				},
			}),
			o(456012, {	-- Radiant Tongs
				["coord"] = { 44.1, 55.6, HALLOWFALL },
				["questID"] = 83853,
				["groups"] = {
					i(226281),	-- Radiant Tongs
				},
			}),
			o(456015, {	-- Ringing Hammer Vise
				["coord"] = { 47.7, 33.2, THE_RINGING_DEEPS },
				["questID"] = 83850,
				["groups"] = {
					i(226278),	-- Ringing Hammer Vise
				},
			}),
			o(456010, {	-- Spiderling's Wire Brush
				["coord"] = { 53.0, 51.3, AZJ_KAHET },
				["questID"] = 83855,
				["groups"] = {
					i(226283),	-- Spiderling's Wire Brush
				},
			}),
		}),
		n(WEEKLY_PROFESSION_KNOWLEDGE, sharedData({
			["isWeekly"] = true,
			["groups"] = {
				currency(TWW_BLACKSMITHING_KNOWLEDGE),
			},
		}, {
			q(83726, {	-- TWW Inscription Order: Blacksmith
				["name"] = "TWW Inscription Order: Blacksmith",
				["description"] = "Requires a crafting order from Inscription.",
				["provider"] = { "i", 222554 },	-- Algari Treatise on Blacksmithing
			}),
			q(83257, {	-- TWW Weekly Blacksmithing Knowledgepoint #1
				["name"] = "TWW Weekly Blacksmithing Treasure #1",
				["provider"] = { "i", 225232 },	-- Coreway Billet
			}),
			q(83256, {	-- TWW Weekly Blacksmithing Knowledgepoint #2
				["name"] = "TWW Weekly Blacksmithing Treasure #2",
				["provider"] = { "i", 225233 },	-- Dense Bladestone
			}),
		})),
	})),
	expansion(EXPANSION.MID, bubbleDownSelf({ ["timeline"] = { ADDED_12_0_X_LAUNCH } }, {
		n(ACHIEVEMENTS, {
			ach(42792, {	-- Blacksmithing at Midnight
				i(263998),	-- Midnight Blacksmith's Shop Sign (DECOR!)
			}),
		}),
		n(QUESTS, {
			q(93691, {	-- Blacksmithing Services Requested
				["sourceQuests"] = { 93726 },	-- Crafting Orders: Blacksmithing
				["provider"] = { "n", 241450 },	-- Bemarrin <Blacksmithing Trainer>
				["coord"] = { 43.7, 51.8, MAP.MIDNIGHT.SILVERMOON_CITY },
				["isWeekly"] = true,
				["groups"] = {
					i(263455),	-- Thalassian Blacksmith's Journal
				},
			}),
		}),
		filter(RECIPES, {
			["description"] = "These are learned by specialization.",
			["groups"] = sharedData({ ["cost"] = {{ "c", MID_BLACKSMITHING_KNOWLEDGE, 1 }} }, {
				r(1229646),	-- Farstrider's Chopper
				r(1229659),	-- Farstrider's Mercy
				r(1229658),	-- Spellbreaker's Blade
				r(1229662),	-- Spellbreaker's Bracers
				r(1229664),	-- Spellbreaker's Cover
				r(1229666),	-- Spellbreaker's Girdle
				r(1229663),	-- Spellbreaker's Legguards
				r(1229661),	-- Spellbreaker's Mantle
				r(1229668),	-- Spellbreaker's March
				r(1229665),	-- Spellbreaker's Rebuke
				r(1229660),	-- Spellbreaker's Resolve
				r(1229667),	-- Spellbreaker's Shelter
				r(1229656),	-- Spellbreaker's Ultimatum
				r(1229657),	-- Spellbreaker's Warglaive
				r(1229598),	-- Sun-Blessed Blacksmith's Hammer
				r(1229603),	-- Sun-Blessed Blacksmith's Toolbox
				r(1229599),	-- Sun-Blessed Leatherworker's Knife
				r(1229604),	-- Sun-Blessed Leatherworker's Toolset
				r(1229605),	-- Sun-Blessed Needle Set
				r(1229601),	-- Sun-Blessed Pickaxe
				r(1229602),	-- Sun-Blessed Sickle
				r(1229600),	-- Sun-Blessed Skinning Knife
			}),
		}),
		n(TREASURES, {
			o(525959, {	-- Carefully Racked Spear
				["coord"] = { 33.2, 65.9, MAP.MIDNIGHT.ATAL_AMAN_OUTDOOR },
				["questID"] = 89179,
				["groups"] = {
					i(238542),	-- Carefully Racked Spear
				},
			}),
			o(525961, {	-- Deconstructed Forge Techniques
				["coord"] = { 26.9, 60.3, MAP.MIDNIGHT.SILVERMOON_CITY },
				["questID"] = 89177,
				["groups"] = {
					i(238540),	-- Deconstructed Forge Techniques
				},
			}),
			o(525958, {	-- Metalworking Cheat Sheet
				["coord"] = { 56.8, 40.8, MAP.MIDNIGHT.EVERSONG_WOODS },
				["questID"] = 89180,
				["groups"] = {
					i(238543),	-- Metalworking Cheat Sheet
				},
			}),
			o(525956, {	-- Rutaani Floratender's Sword
				["coord"] = { 66.3, 50.9, MAP.MIDNIGHT.HARANDAR },
				["questID"] = 89182,
				["groups"] = {
					i(238545),	-- Rutaani Floratender's Sword
				},
			}),
			o(525954, {	-- Silvermoon Blacksmith's Hammer
				["coord"] = { 48.5, 74.7, MAP.MIDNIGHT.SILVERMOON_CITY },
				["questID"] = 89184,
				["groups"] = {
					i(238547),	-- Silvermoon Blacksmith's Hammer
				},
			}),
			o(525960, {	-- Silvermoon Smithing Kit
				["coord"] = { 48.3, 75.8, MAP.MIDNIGHT.EVERSONG_WOODS },
				["questID"] = 89178,
				["groups"] = {
					i(238541),	-- Silvermoon Smithing Kit
				},
			}),
			o(525955, {	-- Sin'dorei Master's Forgemace
				["coord"] = { 49.2, 61.3, MAP.MIDNIGHT.SILVERMOON_CITY },
				["questID"] = 89183,
				["groups"] = {
					i(238546),	-- Sin'dorei Master's Forgemace
				},
			}),
			o(525857, {	-- Voidstorm Defense Spear
				["coord"] = { 30.6, 69.0, SLAYERS_RISE },
				["questID"] = 89181,
				["groups"] = {
					i(238544),	-- Voidstorm Defense Spear
				},
			}),

		}),
		n(WEEKLY_PROFESSION_KNOWLEDGE, sharedData({
			["isWeekly"] = true,
			["groups"] = {
				currency(MID_BLACKSMITHING_KNOWLEDGE),
			},
		}, {
			i(263455),	-- Thalassian Blacksmith's Journal
			q(95128, {	-- MID Inscription Order: Blacksmith
				["name"] = "MID Inscription Order: Blacksmith",
				["description"] = "Requires a crafting order from Inscription.",
				["provider"] = { "i", 245763 },	-- Thalassian Treatise on Blacksmithing
			}),
			--[[ Need QuestIDs
			q(83257, {	-- MID Weekly Blacksmithing Knowledgepoint #1
				["name"] = "MID Weekly Blacksmithing Treasure #1",
				["provider"] = { "i", 259191 },	-- Infused Quenching Oil
			}),
			q(83256, {	-- MID Weekly Blacksmithing Knowledgepoint #2
				["name"] = "MID Weekly Blacksmithing Treasure #2",
				["provider"] = { "i", 259190 },	-- Thalassian Whestone
			}),
			--]]
		})),
	})),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.LEGION, bubbleDownSelf({ ["timeline"] = { ADDED_7_0_3_LAUNCH } }, {
	n(PROFESSIONS, {
		prof(BLACKSMITHING, {
			-- q(38543),	-- FLAG: Demonsteel Armguards Crafted
			-- q(38544),	-- FLAG: Demonsteel Waistguard Crafted
			-- q(38545),	-- FLAG: Demonsteel Pauldrons Crafted
			-- q(38546),	-- FLAG: Demonsteel Boots Crafted
			-- q(38547),	-- FLAG: Demonsteel Gauntlets Crafted
			-- q(38549),	-- FLAG: Demonsteel Helm Crafted
			-- q(38550),	-- FLAG: Demonsteel Greaves Crafted
			-- q(38551),	-- FLAG: Demonsteel Breastplate Crafted
			q(47096),	-- Broken Shore - Choice: Blacksmithing
		}),
	}),
})));
