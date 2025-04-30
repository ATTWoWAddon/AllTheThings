-----------------------------------------------------
--       P R O F E S S I O N S   M O D U L E       --
-----------------------------------------------------
local DF_BLACKSMITHING_KNOWLEDGE = 2023;
local TWW_BLACKSMITHING_KNOWLEDGE = 2786;
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
			ach(18765, {	-- Destined to be Legendary
				["provider"] = { "i", 17193 },	-- Sulfuron Hammer
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
				["qg"] = 5164,	-- Grumnus Steelshaper
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
				["coord"] = { 50.2, 42.6, IRONFORGE },
				["description"] = "Upon finishing this quest, you will become a Armorsmith and be locked out of becoming a Weaponsmith.",
				["cost"] = {
					{ "i", 7937, 4 },	-- Ornate Mithril Helm
					{ "i", 7936, 2 },	-- Ornate Mithril Boots
					{ "i", 7935, 1 },	-- Ornate Mithril Breastplate
				},
				["races"] = ALLIANCE_ONLY,
			}),
			q(5301, {	-- The Art of the Armorsmith [H]
				["qg"] = 11177,	-- Okothos Ironrager
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
				["coord"] = { 79.8, 23.8, ORGRIMMAR },
				["description"] = "Upon finishing this quest, you will become a Armorsmith and be locked out of becoming a Weaponsmith.",
				["cost"] = {
					{ "i", 7937, 4 },	-- Ornate Mithril Helm
					{ "i", 7936, 2 },	-- Ornate Mithril Boots
					{ "i", 7935, 1 },	-- Ornate Mithril Breastplate
				},
				["races"] = HORDE_ONLY,
			}),
			q(5284, {	-- The Way of the Weaponsmith [A]
				["qg"] = 11146,	-- Ironus Coldsteel
				["altQuests"] = {
					5283,	-- The Art of the Armorsmith [A]
					5301,	-- The Art of the Armorsmith [H]
					5302,	-- The Way of the Weaponsmith [H]
				},
				["coord"] = { 49.8, 45, IRONFORGE },
				["description"] = "Upon finishing this quest, you will become a Weaponsmith and be locked out of becoming an Armorsmith.",
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
				["qg"] = 11178,	-- Borgosh Corebender
				["altQuests"] = {
					5283,	-- The Art of the Armorsmith [A]
					5301,	-- The Art of the Armorsmith [H]
					5284,	-- The Way of the Weaponsmith [A]
				},
				["coord"] = { 79.6, 23.6, ORGRIMMAR },
				["description"] = "Upon finishing this quest, you will become a Weaponsmith and be locked out of becoming an Armorsmith.",
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
				["qg"] = 11146,	-- Ironus Coldsteel
				["altQuests"] = {
					5283,	-- The Art of the Armorsmith [A]
					5301,	-- The Art of the Armorsmith [H]
					82665,	-- The Way of the Weaponsmith [H]
				},
				["coord"] = { 49.8, 45, IRONFORGE },
				["description"] = "Upon finishing this quest, you will become a Weaponsmith and be locked out of becoming an Armorsmith.",
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
				["qg"] = 11178,	-- Borgosh Corebender
				["altQuests"] = {
					5283,	-- The Art of the Armorsmith [A]
					5301,	-- The Art of the Armorsmith [H]
					82662,	-- The Way of the Weaponsmith [A]
				},
				["coord"] = { 79.6, 23.6, ORGRIMMAR },
				["description"] = "Upon finishing this quest, you will become a Weaponsmith and be locked out of becoming an Armorsmith.",
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
			ach(18852, {	-- Weaponsmithing, Reborn
				crit(61556, {	-- Wicked Edge of the Planes, Reborn
					["provider"] = { "i", 94579 },	-- Wicked Edge of the Planes, Reborn
				}),
				crit(61557, {	-- Bloodmoon, Reborn
					["provider"] = { "i", 94580 },	-- Bloodmoon, Reborn
				}),
				crit(61558, {	-- Dragonstrike, Reborn
					["provider"] = { "i", 94585 },	-- Dragonstrike, Reborn
				}),
				crit(61559, {	-- Stormherald, Reborn
					["provider"] = { "i", 94586 },	-- Stormherald, Reborn
				}),
				crit(61560, {	-- Blazefury, Reborn
					["provider"] = { "i", 94591 },	-- Blazefury, Reborn
				}),
				crit(61561, {	-- Lionheart Executioner, Reborn
					["provider"] = { "i", 94592 },	-- Lionheart Executioner, Reborn
				}),
			}),
		})),
		n(QUESTS, {
			q(32621, bubbleDownSelf({ ["timeline"] = { ADDED_5_2_0 } }, {	-- Lightning Steel
				["provider"] = { "i", 94721 },	-- Strange Metal Ingot
				["coord"] = { 57.6, 33.8, ISLE_OF_THUNDER },
				["g"] = {
					i(94553, {	-- Notes on Lightning Steel
						i(94568),	-- Plans: Drakefist Hammer, Reborn (RECIPE!)
						i(94572),	-- Plans: Fireguard, Reborn (RECIPE!)
						i(94552),	-- Plans: Lightning Steel Ingot (RECIPE!)
						i(94571),	-- Plans: Lionheart Blade, Reborn (RECIPE!)
						i(94569),	-- Plans: Lunar Crescent, Reborn (RECIPE!)
						i(94570),	-- Plans: Planar Edge, Reborn (RECIPE!)
						i(94567),	-- Plans: Thunder, Reborn (RECIPE!)
					}),
				},
			})),
		}),
	})),
	expansion(EXPANSION.LEGION, bubbleDownSelf({ ["timeline"] = { ADDED_7_0_3_LAUNCH } }, {
		q(38499, {	-- Strange New Ores
			["provider"] = { "n", 92183 },	-- Alard Schmied
			["coord"] = { 45.0, 29.6, LEGION_DALARAN },
			["g"] = {
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
			["g"] = {
				r(182928),	-- Leystone Armguards [Rank 1] (RECIPE!)
				r(182929),	-- Leystone Waistguard [Rank 1] (RECIPE!)
			},
		}),
		q(38502, {	-- The Methods of the Nightfallen
			["sourceQuest"] = 39681,	-- The Properties of Leystone
			["provider"] = { "n", 97261 },	-- Alard Schmied
			["coord"] = { 45.0, 29.6, LEGION_DALARAN },
		}),
		q(38501, {	-- Hatecoil Hammerwork
			["sourceQuest"] = 39681,	-- The Properties of Leystone
			["provider"] = { "n", 97261 },	-- Alard Schmied
			["coord"] = { 45.0, 29.6, LEGION_DALARAN },
			["g"] = {
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
		}),
		q(38506, {	-- Chicken Scratch
			["sourceQuest"] = 38505,	-- Engineers: Not COMPLETELY Useless
			["provider"] = { "n", 92194 },	-- Timofey Oshenko
			["coord"] = { 38.4, 27.4, LEGION_DALARAN },
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
			["g"] = {
				r(182934),	-- Leystone Boots [Rank 1] (RECIPE!)
				r(182933),	-- Leystone Gauntlets [Rank 1] (RECIPE!)
				r(182931),	-- Leystone Greaves [Rank 1] (RECIPE!)
				r(182932),	-- Leystone Helm [Rank 1] (RECIPE!)
				r(183562, {["u"]=TRAINING}),	-- Handcrafted Leystone Gauntlets
				r(183280, {["u"]=TRAINING}),	-- Heated Leystone Bar
				r(183279, {["u"]=TRAINING}),	-- Leystone Bar
				r(183281, {["u"]=TRAINING}),	-- Leystone Cuffplate
				r(183283, {["u"]=TRAINING}),	-- Leystone Fingerguard
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
			["g"] = {
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
			["g"] = {
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
			["g"] = {
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
			["g"] = {
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
				39726,	--  ...And the Anvil
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
			["g"] = {
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
			["g"] = {
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
			["g"] = {
				r(182962),	-- Leystone Armguards [Rank 2] (RECIPE!)
				r(184405, {["u"]=TRAINING}),	-- Brimstone-Covered Armguards
				r(184407, {["u"]=TRAINING}),	-- Brimstone-Crusted Armguards
				r(184403, {["u"]=TRAINING}),	-- Engraved Leystone Armguards
				r(184408, {["u"]=TRAINING}),	-- Masterwork Leystone Armguards
				r(184404, {["u"]=TRAINING}),	-- Molten Brimstone
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
			["g"] = {
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
			["g"] = {
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
			["g"] = {
				r(184442),	-- Demonsteel Bar
			},
		}),
		q(38533, {	-- Tribal Knowledge
			["sourceQuests"] = { 38833 },	-- The Art of Demonsteel
			["provider"] = { "n", 92243 },	-- Muirn Ironhorn
			["coord"] = { 54.6, 84.0, HIGHMOUNTAIN },
			["g"] = {
				r(182944),	-- Demonsteel Armguards [Rank 1] (RECIPE!)
			},
		}),
		q(38534, {	-- Demonsteel Armguards
			["description"] = "Create one Rank 1 of this item.",
			["sourceQuests"] = { 38533 },	-- Tribal Knowledge
			["provider"] = { "n", 92243 },	-- Muirn Ironhorn <Blacksmithing Trainer>
			["coord"] = { 54.6, 84.0, HIGHMOUNTAIN },
			["cost"] = { {"i", 123917, 1 } },	-- 1x Demonsteel Armguards
			["g"] = {
				i(123940),	-- Plans: Demonsteel Armguards [Rank 2] (RECIPE!)
			},
		}),
		q(38538, {	-- Demonsteel Boots
			["description"] = "Create one Rank 1 of this item.",
			["sourceQuests"] = { 38533 },	-- Tribal Knowledge
			["provider"] = { "n", 92243 },	-- Muirn Ironhorn <Blacksmithing Trainer>
			["coord"] = { 54.6, 84.0, HIGHMOUNTAIN },
			["cost"] = { {"i", 123911, 1 } },	-- 1x Demonsteel Boots
			["g"] = {
				i(123946),	-- Plans: Demonsteel Boots [Rank 2] (RECIPE!)
			},
		}),
		q(38542, {	-- Demonsteel Breastplate
			["description"] = "Create one Rank 1 of this item.",
			["sourceQuests"] = { 38533 },	-- Tribal Knowledge
			["provider"] = { "n", 92243 },	-- Muirn Ironhorn <Blacksmithing Trainer>
			["coord"] = { 54.6, 84.0, HIGHMOUNTAIN },
			["cost"] = { {"i", 123910, 1 } },	-- 1x Demonsteel Breastplate
			["g"] = {
				i(123947),	-- Plans: Demonsteel Breastplate [Rank 2] (RECIPE!)
			},
		}),
		q(38539, {	-- Demonsteel Gauntlets
			["description"] = "Create one Rank 1 of this item.",
			["sourceQuests"] = { 38533 },	-- Tribal Knowledge
			["provider"] = { "n", 92243 },	-- Muirn Ironhorn <Blacksmithing Trainer>
			["coord"] = { 54.6, 84.0, HIGHMOUNTAIN },
			["cost"] = { {"i", 123912, 1 } },	-- 1x Demonsteel Gauntlets
			["g"] = {
				i(123945),	-- Plans: Demonsteel Gauntlets [Rank 2] (RECIPE!)
			},
		}),
		q(38541, {	-- Demonsteel Greaves
			["description"] = "Create one Rank 1 of this item.",
			["sourceQuests"] = { 38533 },	-- Tribal Knowledge
			["provider"] = { "n", 92243 },	-- Muirn Ironhorn <Blacksmithing Trainer>
			["coord"] = { 54.6, 84.0, HIGHMOUNTAIN },
			["cost"] = { {"i", 123914, 1 } },	-- 1x Demonsteel Greaves
			["g"] = {
				i(123943),	-- Plans: Demonsteel Greaves [Rank 2] (RECIPE!)
			},
		}),
		q(38540, {	-- Demonsteel Helm
			["description"] = "Create one Rank 1 of this item.",
			["sourceQuests"] = { 38533 },	-- Tribal Knowledge
			["provider"] = { "n", 92243 },	-- Muirn Ironhorn <Blacksmithing Trainer>
			["coord"] = { 54.6, 84.0, HIGHMOUNTAIN },
			["cost"] = { {"i", 123913, 1 } },	-- 1x Demonsteel Helm
			["g"] = {
				i(123944),	-- Plans: Demonsteel Helm [Rank 2] (RECIPE!)
			},
		}),
		q(38537, {	-- Demonsteel Pauldrons
			["description"] = "Create one Rank 1 of this item.",
			["sourceQuests"] = { 38533 },	-- Tribal Knowledge
			["provider"] = { "n", 92243 },	-- Muirn Ironhorn <Blacksmithing Trainer>
			["coord"] = { 54.6, 84.0, HIGHMOUNTAIN },
			["cost"] = { {"i", 123915, 1 } },	-- 1x Demonsteel Pauldrons
			["g"] = {
				i(123942),	-- Plans: Demonsteel Pauldrons [Rank 2] (RECIPE!)
			},
		}),
		q(38536, {	-- Demonsteel Waistguard
			["description"] = "Create one Rank 1 of this item.",
			["sourceQuests"] = { 38533 },	-- Tribal Knowledge
			["provider"] = { "n", 92243 },	-- Muirn Ironhorn <Blacksmithing Trainer>
			["coord"] = { 54.6, 84.0, HIGHMOUNTAIN },
			["cost"] = { {"i", 123916, 1 } },	-- 1x Demonsteel Waistguard
			["g"] = {
				i(123941),	-- Plans: Demonsteel Waistguard [Rank 2] (RECIPE!)
			},
		}),
		------ Rethu's Incessant Courage Questline ------
		q(46696, bubbleDownSelf({ ["timeline"] = { ADDED_7_2_0 } }, {	-- The Legend of the Four Hammers
			["sourceQuests"] = { 46804 },	-- Fashion History and a Philosophy of Style
			["provider"] = { "n", 120221 },	-- Eliezer Hammerbeard
			["coord"] = { 41.2, 59.4, BROKEN_SHORE },
			["repeatable"] = true,
			["g"] = {
				i(147197),	-- Legends of the Four Hammers (QI!)
			},
		})),
		q(46700, bubbleDownSelf({ ["timeline"] = { ADDED_7_2_0 } }, {	-- Armor of the Ancients
			["sourceQuests"] = { 46696 },	-- The Legend of the Four Hammers
			["provider"] = { "n", 120221 },	-- Eliezer Hammerbeard
			["coord"] = { 41.2, 59.4, BROKEN_SHORE },
			["repeatable"] = true,
			["g"] = {
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
			["g"] = {
				i(146704),	-- Red-Hot Draconic Slag (QI!)
			},
		})),
		q(46697, bubbleDownSelf({ ["timeline"] = { ADDED_7_2_0 } }, {	-- The Godfighter
			["sourceQuests"] = { 46696 },	-- The Legend of the Four Hammers
			["provider"] = { "n", 120221 },	-- Eliezer Hammerbeard
			["coord"] = { 41.2, 59.4, BROKEN_SHORE },
			["maps"] = { 703, 704, 705 },	-- Halls of Valor
			["repeatable"] = true,
			["g"] = {
				i(146702),	-- White Lightningsteel (QI!)
			},
		})),
		q(46699, bubbleDownSelf({ ["timeline"] = { ADDED_7_2_0 } }, {	-- The Hellslayer
			["sourceQuests"] = { 46696 },	-- The Legend of the Four Hammers
			["provider"] = { "n", 120221 },	-- Eliezer Hammerbeard
			["coord"] = { 41.2, 59.4, BROKEN_SHORE },
			["maps"] = { 806, 807, 808 },	-- Trial of Valor
			["repeatable"] = true,
			["g"] = {
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
			["g"] = {
				i(146714),	-- Hammer of Forgotten Heroes
				i(147443),	-- Carrying Case For Hammer of Forgotten Heroes (QI!)
				i(147207),	-- Legendary Blacksmithing Supplies (QI!)
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
			["g"] = {
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
			["g"] = {
				r(247700),	-- Felslate Anchor (RECIPE!)
				i(151871),	-- Crate of Felslate (QI!)
			},
		})),
		q(48054, bubbleDownSelf({ ["timeline"] = { ADDED_7_3_0 } }, {	-- Weigh Anchor [H]
			["sourceQuests"] = { 38499 },	-- Strange New Ores
			["provider"] = { "n", 106655 },	-- Arcanomancer Vridiel
			["coord"] = { 45.0, 29.6, LEGION_DALARAN },
			["races"] = HORDE_ONLY,
			["g"] = {
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
				["races"] = ALLIANCE_ONLY,
				["timeline"] = { ADDED_8_1_0, REMOVED_9_0_1 },	-- Might no be correct removed patch
			}),
			q(54466, {	-- Blacksmithing Plans [H]
				["provider"] = { "n", 127112 },	-- Forgemaster Zak'aal
				["coord"] = { 43.6, 38.3, DAZARALOR },
				["races"] = HORDE_ONLY,
				["timeline"] = { ADDED_8_1_0, REMOVED_9_0_1 },	-- Might no be correct removed patch
			}),
			------ Tools of Trade Questline ------
			q(50123, {	-- A Recipe For the Ages [A]
				["description"] = "Requires 150 Kul Tiran Blacksmithing.",
				["provider"] = { "n", 133536 },	-- Grix "Ironfists" Barlow
				["coord"] = { 73.6, 8.6, BORALUS },
				["races"] = ALLIANCE_ONLY,
				["timeline"] = { ADDED_8_1_5 },
				["g"] = {
					i(156875),	-- Revlis Ore (QI!)
				},
			}),
			q(50276, {	-- A Recipe For the Ages [H]
				["description"] = "Requires 150 Zandalari Blacksmithing.",
				["provider"] = { "n", 127112 },	-- Forgemaster Zak'aal
				["coord"] = { 43.6, 38.3, DAZARALOR },
				["races"] = HORDE_ONLY,
				["timeline"] = { ADDED_8_1_5 },
				["g"] = {
					i(156875),	-- Revlis Ore (QI!)
				},
			}),
			q(50114, {	-- Hammering Out Information [A]
				["sourceQuests"] = { 50123 },	-- A Recipe For the Ages [A]
				["provider"] = { "n", 133536 },	-- Grix "Ironfists" Barlow
				["coord"] = { 73.6, 8.6, BORALUS },
				["races"] = ALLIANCE_ONLY,
				["timeline"] = { ADDED_8_1_5 },
			}),
			q(50277, {	-- Hammering Out Information [H]
				["sourceQuests"] = { 50276 },	-- A Recipe For the Ages [H]
				["provider"] = { "n", 127112 },	-- Forgemaster Zak'aal
				["coord"] = { 43.6, 38.3, DAZARALOR },
				["races"] = HORDE_ONLY,
				["timeline"] = { ADDED_8_1_5 },
			}),
			q(50270, {	-- Deep In the Core [A]
				["sourceQuests"] = { 50114 },	-- Hammering Out Information [A]
				["provider"] = { "n", 133536 },	-- Grix "Ironfists" Barlow
				["coord"] = { 73.6, 8.6, BORALUS },
				["races"] = ALLIANCE_ONLY,
				["timeline"] = { ADDED_8_1_5 },
			}),
			q(50278, {	-- Deep In the Core [H]
				["sourceQuests"] = { 50277 },	-- Hammering Out Information [H]
				["provider"] = { "n", 127112 },	-- Forgemaster Zak'aal
				["coord"] = { 43.6, 38.3, DAZARALOR },
				["races"] = HORDE_ONLY,
				["timeline"] = { ADDED_8_1_5 },
			}),
			q(50271, {	-- Smash and Grab
				["sourceQuests"] = {
					50270,	-- Deep In the Core [A]
					50278,	-- Deep In the Core [H]
				},
				["provider"] = { "n", 133489 },	-- Ormhun Stonehammer
				["coord"] = { 53.9, 50.0, DEEPHOLM },
				["sourceQuestNumRequired"] = 1,
				["timeline"] = { ADDED_8_1_5 },
				["g"] = {
					i(156887),	-- Diaminium (QI!)
				},
			}),
			q(50272, {	-- An Ear to the Ground
				["sourceQuests"] = {
					50270,	-- Deep In the Core [A]
					50278,	-- Deep In the Core [H]
				},
				["provider"] = { "n", 133489 },	-- Ormhun Stonehammer
				["coord"] = { 53.9, 50.0, DEEPHOLM },
				["sourceQuestNumRequired"] = 1,
				["timeline"] = { ADDED_8_1_5 },
				["g"] = {
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
				["g"] = {
					i(167021),	-- Khaz'gorian Anvil (QI!)
				},
			}),
			q(50275, bubbleDownSelf({ ["timeline"] = { ADDED_8_1_5 } }, {	-- Anvil's Away [A]
				["sourceQuests"] = { 50288 },	-- Therazane's Choice
				["provider"] = { "n", 133796 },	-- Therazane
				["coord"] = { 27.5, 50.8, DEEPHOLM },
				["races"] = ALLIANCE_ONLY,
				["g"] = {
					r(253145),	-- Khaz'gorian Smithing Hammer (RECIPE!)
				},
			})),
			q(50279, bubbleDownSelf({ ["timeline"] = { ADDED_8_1_5 } }, {	-- Anvil's Away [H]
				["sourceQuests"] = { 50288 },	-- Therazane's Choice
				["provider"] = { "n", 133796 },	-- Therazane
				["coord"] = { 27.5, 50.8, DEEPHOLM },
				["races"] = HORDE_ONLY,
				["g"] = {
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
				["g"] = {
					i(190456),	-- Artisan's Mettle
				},
			}),
		}),
		n(QUESTS, sharedData({
			["isWeekly"] = true,
			["maxReputation"] = { FACTION_ARTISANS_CONSORTIUM_DRAGON_ISLES_BRANCH, 5 },
			["g"] = {
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
				["g"] = {
					i(193864),	-- Magma Core (QI!)
				},
			}),
			q(72398, {	-- Rock and Stone
				["description"] = "Requires 25 Skill.",
				["provider"] = { "n", 191002 },	-- Dhurrel
				["coord"] = { 36.6, 63.6, VALDRAKKEN },
				["g"] = {
					i(201819),	-- Earthen Sample (QI!)
				},
			}),
			q(66941, {	-- Tremendous Tools
				["description"] = "Requires 25 Skill.",
				["provider"] = { "n", 191002 },	-- Dhurrel
				["coord"] = { 36.6, 63.6, VALDRAKKEN },
				["g"] = {
					i(194435),	-- Large Tool (QI!)
				},
			}),

			------ Requires 45 Skill ------
			q(66517, {	-- A New Source of Weapons
				["description"] = "Requires 45 Skill.",
				["provider"] = { "n", 191002 },	-- Dhurrel
				["coord"] = { 36.8, 63.6, VALDRAKKEN },
				["g"] = {
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
				["g"] = {
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
				["g"] = {
					i(198606),	-- Blacksmith's Writ
					i(209049),	-- Essence of Endless Flame (QI!)
				},
			}),
		})),
		filter(RECIPES, {
			["description"] = "These are learned by specialization.",
			["g"] = sharedData({ ["cost"] = {{ "c", DF_BLACKSMITHING_KNOWLEDGE, 1 }} }, {
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
				["g"] = {
					i(210464),	-- Amirdrassil Defender's Shield
				},
			})),
			o(376657, {	-- Ancient Monument
				["description"] = "Kill NPCs and loot the sword. If you receive no loot, check your mail!",
				["crs"] = { 188648 },	-- Enchanted Bulwark
				["coord"] = { 22.3, 87.7, THE_WAKING_SHORES },
				["questID"] = 70246,
				["g"] = {
					i(201007),	-- Ancient Monument
				},
			}),
			o(380620, {	-- Ancient Spear Shards
				["coord"] = { 81.1, 37.9, OHNAHRAN_PLAINS },
				["questID"] = 70313,
				["g"] = {
					i(201004),	-- Ancient Spear Shards
				},
			}),
			o(402632,	-- Brimstone Rescue Ring
			bubbleDownSelf({ ["timeline"] = { ADDED_10_1_0 } }, {
				["coord"] = { 48.3, 22.0, ZARALEK_CAVERN },
				["questID"] = 76079,
				["g"] = {
					i(205987),	-- Brimstone Rescue Ring
				},
			})),
			o(380619, {	-- Curious Ingots
				["coord"] = { 65.6, 25.7, THE_WAKING_SHORES },
				["questID"] = 70312,
				["g"] = {
					i(201005),	-- Curious Ingots
				},
			}),
			o(380618, {	-- Draconic Flux
				["coord"] = { 52.2, 80.5, THALDRASZUS },
				["questID"] = 70311,
				["g"] = {
					i(201006),	-- Draconic Flux
				},
			}),
			o(411180,	-- Deathstalker Chassis
			bubbleDownSelf({ ["timeline"] = { ADDED_10_2_0 } }, {
				["coord"] = { 36.34, 46.79, EMERALD_DREAM },
				["questID"] = 78418,
				["g"] = {
					i(210465),	-- Deathstalker Chassis
				},
			})),
			o(380709, {	-- Falconer Gauntlet Drawings
				["coord"] = { 50.9, 66.5, OHNAHRAN_PLAINS },
				["questID"] = 70353,
				["g"] = {
					i(201009),	-- Falconer Gauntlet Drawings
				},
			}),
			o(411181,	-- Flamesworn Render
			bubbleDownSelf({ ["timeline"] = { ADDED_10_2_0 } }, {
				["coord"] = { 37.27, 22.94, EMERALD_DREAM },
				["questID"] = 78419,
				["g"] = {
					i(210466),	-- Flamesworn Render
				},
			})),
			o(380516, {	-- Glimmer of Wisdom
				["description"] = "Craft a Primal Molten Alloy or a Frostfire Alloy next to the Dim Forge. A sparkle will appear in the deposit box, which you can click to grab the treasure.",
				["sourceQuests"] = { 70232 },	-- This triggers when crafting the Alloy, which makes the treasure appear.
				["coord"] = { 56.4, 19.5, THE_WAKING_SHORES },
				["questID"] = 70230,
				["g"] = {
					i(198791),	-- Glimmer of Blacksmithing Wisdom
				},
			}),
			o(380598, {	-- Molten Ingot
				["coord"] = { 35.6, 64.5, THE_WAKING_SHORES },
				["questID"] = 70296,
				["g"] = {
					i(201008),	-- Molten Ingot
				},
			}),
			o(380617, {	-- Qalashi Weapon Diagram
				["coord"] = { 34.5, 67.1, THE_WAKING_SHORES },
				["questID"] = 70310,
				["g"] = {
					i(201010),	-- Qalashi Weapon Diagram
				},
			}),
			o(380623, {	-- Spelltouched Tongs
				["description"] = "If you do not have Mining to clear the Rock Wall, try dying. Ghosts can walk through it.",
				["coord"] = { 53.1, 66.1, THE_AZURE_SPAN },
				["questID"] = 70314,
				["g"] = {
					i(201011),	-- Spelltouched Tongs
				},
			}),
			o(402627,	-- Well-Worn Kiln
			bubbleDownSelf({ ["timeline"] = { ADDED_10_1_0 } }, {
				["coord"] = { 57.2, 54.6, ZARALEK_CAVERN },
				["questID"] = 76078,
				["g"] = {
					i(205986),	-- Well-Worn Kiln
				},
			})),
			o(402634,	-- Zaqali Elder Spear
			bubbleDownSelf({ ["timeline"] = { ADDED_10_1_0 } }, {
				["coord"] = { 27.5, 42.9, ZARALEK_CAVERN },
				["questID"] = 76080,
				["g"] = {
					i(205988),	-- Zaqali Elder Spear
				},
			})),
		}),
		n(WEEKLY_PROFESSION_KNOWLEDGE, sharedData({
			["isWeekly"] = true,
			["g"] = {
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
				["crs"] = {
					196168,	-- Springs Heater
					196171,	-- Flame Boiler
				},
				["provider"] = { "i", 198966 },	-- Molten Globule
				["coord"] = { 39.0, 48.8, THALDRASZUS },
			}),
			q(70512, {	-- DF Weekly Blacksmithing Knowledgepoint #4
				["name"] = "DF Blacksmithing Drop #2: Earth Elemental",
				["description"] = "Drops from any Earth Elemental.\nCoordinates link to the spot(s) we found best.",
				["crs"] = {
					194212,	-- Unleashed Rubble
					194517,	-- Crushing Elemental
				},
				["provider"] = { "i", 198965 },		-- Primeval Earth Fragment
				["coords"] = {
					{ 50.6, 57.6, THALDRASZUS },
					{ 48.8, 60.6, THALDRASZUS },
					{ 47.8, 35.6, THE_WAKING_SHORES },
					{ 50.6, 33.2, THE_WAKING_SHORES },
					{ 53.6, 31.0, THE_WAKING_SHORES },
				},
			}),
		})),
	})),
	expansion(EXPANSION.TWW, bubbleDownSelf({ ["timeline"] = { ADDED_11_0_2 } }, {
		n(QUESTS, sharedData({
			["isWeekly"] = true,
			["maxReputation"] = { FACTION_ARTISANS_CONSORTIUM_DRAGON_ISLES_BRANCH, 5 },
			["g"] = {
				i(228774),	-- Algari Blacksmiths's Journal
			},
		},{
			q(84127, {	-- Blacksmithing Services Requested
				["provider"] = { "n", 228177 },	-- Kala Clayhoof
				["coord"] = { 59.2, 55.2, DORNOGAL },
			}),
		})),
		filter(RECIPES, {
			["description"] = "These are learned by specialization.",
			["g"] = sharedData({ ["cost"] = {{ "c", TWW_BLACKSMITHING_KNOWLEDGE, 1 }} }, {
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
				["g"] = {
					i(226276),	-- Ancient Earthen Anvil
				},
			}),
			o(456016, {	-- Dornogal Hammer
				["coord"] = { 47.7, 26.5, DORNOGAL },
				["questID"] = 83849,
				["g"] = {
					i(226277),	-- Dornogal Hammer
				},
			}),
			o(456014, {	-- Earthen Chisels
				["coord"] = { 60.6, 53.8, THE_RINGING_DEEPS },
				["questID"] = 83851,
				["g"] = {
					i(226279),	-- Earthen Chisels
				},
			}),
			o(456013, {	-- Holy Flame Forge
				["coord"] = { 47.6, 61.0, HALLOWFALL },
				["questID"] = 83852,
				["g"] = {
					i(226280),	-- Holy Flame Forge
				},
			}),
			o(456011, {	-- Nerubian Smith's Kit
				["coord"] = { 46.6, 22.7, NERUBAR },
				["questID"] = 83854,
				["g"] = {
					i(226282),	-- Nerubian Smith's Kit
				},
			}),
			o(456012, {	-- Radiant Tongs
				["coord"] = { 44.1, 55.6, HALLOWFALL },
				["questID"] = 83853,
				["g"] = {
					i(226281),	-- Radiant Tongs
				},
			}),
			o(456015, {	-- Ringing Hammer Vise
				["coord"] = { 47.7, 33.2, THE_RINGING_DEEPS },
				["questID"] = 83850,
				["g"] = {
					i(226278),	-- Ringing Hammer Vise
				},
			}),
			o(456010, {	-- Spiderling's Wire Brush
				["coord"] = { 53.0, 51.3, AZJ_KAHET },
				["questID"] = 83855,
				["g"] = {
					i(226283),	-- Spiderling's Wire Brush
				},
			}),
		}),
		n(WEEKLY_PROFESSION_KNOWLEDGE, sharedData({
			["isWeekly"] = true,
			["g"] = {
				currency(TWW_BLACKSMITHING_KNOWLEDGE),
			},
		}, {
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


-- #if ANYCLASSIC
local applytraining = function(g)
	-- #if NOT ANYCLASSIC
	-- TODO: Solve this for classic, until then, only apply the filter to Retail.
	bubbleDown({ ["u"] = TRAINING }, g);	-- Training Recipes / Unlearnable
	-- #endif
	return g;
end
profession(BLACKSMITHING, {
	-- #if AFTER 7.0.1.20740
	applytraining({
		["name"] = "Training",
		["categoryID"] = 424,
		["groups"] = {
			{
				["name"] = "Brimstone-Covered Armguards",
				["recipeID"] = 184405,
			},
			{
				["name"] = "Brimstone-Crusted Armguards",
				["recipeID"] = 184407,
			},
			{
				["name"] = "Dull Hard Leystone Armguards",
				["recipeID"] = 184184,
			},
			{
				["name"] = "Empyrial Back Plate",
				["recipeID"] = 248869,
			},
			{
				["name"] = "Empyrial Breastplate",
				["recipeID"] = 248870,
			},
			{
				["name"] = "Empyrial Chest Plate",
				["recipeID"] = 248867,
			},
			{
				["name"] = "Empyrial Rivets",
				["recipeID"] = 248864,
			},
			{
				["name"] = "Engraved Leystone Armguards",
				["recipeID"] = 184403,
			},
			{
				["name"] = "Handcrafted Leystone Gauntlets",
				["recipeID"] = 183562,
			},
			{
				["name"] = "Handmade Leystone Boots",
				["recipeID"] = 184344,
			},
			{
				["name"] = "Handmade Leystone Helm",
				["recipeID"] = 184345,
			},
			{
				["name"] = "Hard Leystone Armguards",
				["recipeID"] = 184185,
			},
			{
				["name"] = "Hard Leystone Bar",
				["recipeID"] = 184182,
			},
			{
				["name"] = "Hard Leystone Bar",
				["recipeID"] = 184309,
			},
			{
				["name"] = "Hard Leystone Ingots",
				["recipeID"] = 184313,
			},
			{
				["name"] = "Hard Leystone Nail",
				["recipeID"] = 184315,
			},
			{
				["name"] = "Heated Hard Leystone Bar",
				["recipeID"] = 184183,
			},
			{
				["name"] = "Heated Hard Leystone Ingot",
				["recipeID"] = 184314,
			},
			{
				["name"] = "Heated Leystone Bar",
				["recipeID"] = 183280,
			},
			{
				["name"] = "Large Heated Scrap Metal",
				["recipeID"] = 184216,
			},
			{
				["name"] = "Leystone Bar",
				["recipeID"] = 183279,
			},
			{
				["name"] = "Leystone Cuffplate",
				["recipeID"] = 183281,
			},
			{
				["name"] = "Leystone Dome",
				["recipeID"] = 184342,
			},
			{
				["name"] = "Leystone Faceguard",
				["recipeID"] = 184341,
			},
			{
				["name"] = "Leystone Fingerguard",
				["recipeID"] = 183283,
			},
			{
				["name"] = "Leystone Footguard",
				["recipeID"] = 184339,
			},
			{
				["name"] = "Leystone Heelguard",
				["recipeID"] = 184338,
			},
			{
				["name"] = "Leystone Neckplate",
				["recipeID"] = 184343,
			},
			{
				["name"] = "Leystone Shards",
				["recipeID"] = 184310,
			},
			{
				["name"] = "Leystone Shinplate",
				["recipeID"] = 184337,
			},
			{
				["name"] = "Leystone Slag",
				["recipeID"] = 184181,
			},
			{
				["name"] = "Leystone Slag",
				["recipeID"] = 183278,
			},
			{
				["name"] = "Leystone Slag",
				["recipeID"] = 184308,
			},
			{
				["name"] = "Leystone Soleplate",
				["recipeID"] = 184340,
			},
			{
				["name"] = "Lumps of Leystone Slag",
				["recipeID"] = 184312,
			},
			{
				["name"] = "Masterwork Leystone Armguards",
				["recipeID"] = 184408,
			},
			{
				["name"] = "Medium Heated Scrap Metal",
				["recipeID"] = 184215,
			},
			{
				["name"] = "Molten Brimstone",
				["recipeID"] = 184404,
			},
			{
				["name"] = "Red-Hot Leystone Bar",
				["recipeID"] = 184336,
			},
			{
				["name"] = "Scrapmetal Cuffplate",
				["recipeID"] = 184220,
			},
			{
				["name"] = "Scrapmetal Fingerplates",
				["recipeID"] = 184217,
			},
			{
				["name"] = "Scrapmetal Handguard",
				["recipeID"] = 184219,
			},
			{
				["name"] = "Scrapmetal Palmplate",
				["recipeID"] = 184218,
			},
			{
				["name"] = "Small Heated Scrap Metal",
				["recipeID"] = 184214,
			},
		},
	}),
	-- #endif
	expansion(EXPANSION.CLASSIC, {
		-- #if AFTER 9.0.1.36216
		{
			["name"] = "Optional Reagents",
			["categoryID"] = 1488,
			["groups"] = {
				{
					["name"] = "Relic of the Past I",
					["recipeID"] = 330134,
				},
				{
					["name"] = "Relic of the Past II",
					["recipeID"] = 330140,
				},
				{
					["name"] = "Relic of the Past III",
					["recipeID"] = 330141,
				},
				{
					["name"] = "Relic of the Past IV",
					["recipeID"] = 330142,
				},
				{
					["name"] = "Relic of the Past V",
					["recipeID"] = 330143,
				},
			},
		},
		-- #endif
		{
			["name"] = "Materials",
			["categoryID"] = 215,
			["groups"] = {
				{
					["name"] = "Arcanite Rod",
					["timeline"] = { REMOVED_5_0_4 },
					["recipeID"] = 20201,
				},
				{
					["name"] = "Coarse Grinding Stone",
					["recipeID"] = 3326,
				},
				{
					["name"] = "Dense Grinding Stone",
					["recipeID"] = 16639,
				},
				{
					["name"] = "Golden Rod",
					["timeline"] = { REMOVED_5_0_4 },
					["recipeID"] = 14379,
				},
				{
					["name"] = "Heavy Grinding Stone",
					["recipeID"] = 3337,
				},
				{
					["name"] = "Inlaid Mithril Cylinder",
					["recipeID"] = 11454,
				},
				{
					["name"] = "Iron Buckle",
					["recipeID"] = 8768,
				},
				{
					["name"] = "Rough Grinding Stone",
					["recipeID"] = 3320,
				},
				{
					["name"] = "Silver Rod",
					["timeline"] = { REMOVED_5_0_4 },
					["recipeID"] = 7818,
				},
				{
					["name"] = "Solid Grinding Stone",
					["recipeID"] = 9920,
				},
				{
					["name"] = "Truesilver Rod",
					["timeline"] = { REMOVED_5_0_4 },
					["recipeID"] = 14380,
				},
			},
		},
		{
			["name"] = "Weapon Mods",
			["categoryID"] = 216,
			["groups"] = {
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_ONE, {
					["name"] = "Blackfathom Sharpening Stone",
					["recipeID"] = 430397,
				}),
				-- #endif
				{
					["name"] = "Coarse Sharpening Stone",
					["recipeID"] = 2665,
				},
				{
					["name"] = "Coarse Weightstone",
					["recipeID"] = 3116,
				},
				{
					["name"] = "Dense Sharpening Stone",
					["recipeID"] = 16641,
				},
				{
					["name"] = "Dense Weightstone",
					["recipeID"] = 16640,
				},
				{
					["name"] = "Elemental Sharpening Stone",
					["recipeID"] = 22757,
				},
				{
					["name"] = "Heavy Sharpening Stone",
					["recipeID"] = 2674,
				},
				{
					["name"] = "Heavy Weightstone",
					["recipeID"] = 3117,
				},
				{
					["name"] = "Iron Counterweight",
					["recipeID"] = 7222,
				},
				{
					["name"] = "Rough Sharpening Stone",
					["recipeID"] = 2660,
				},
				{
					["name"] = "Rough Weightstone",
					["recipeID"] = 3115,
				},
				{
					["name"] = "Solid Sharpening Stone",
					["recipeID"] = 9918,
				},
				{
					["name"] = "Solid Weightstone",
					["recipeID"] = 9921,
				},
				{
					["name"] = "Steel Weapon Chain",
					["recipeID"] = 7224,
				},
			},
		},
		{
			["name"] = "Armor Mods",
			["categoryID"] = 217,
			["groups"] = {
				{
					["name"] = "Iron Shield Spike",
					["recipeID"] = 7221,
				},
				{
					["name"] = "Mithril Shield Spike",
					["recipeID"] = 9939,
				},
				{
					["name"] = "Mithril Spurs",
					["recipeID"] = 9964,
				},
				{
					["name"] = "Thorium Shield Spike",
					["recipeID"] = 16651,
				},
			},
		},
		{
			["name"] = "Helms",
			["categoryID"] = 218,
			["groups"] = {
				{
					["name"] = "Barbaric Iron Helm",
					["recipeID"] = 9814,
				},
				-- #if AFTER TBC
				applyclassicphase(PHASE_THREE_RECIPES, {
					["name"] = "Dark Iron Helm",
					["recipeID"] = 23636,
				}),
				-- #endif
				applyclassicphase(PHASE_FOUR, {
					["name"] = "Darkrune Helm",
					["recipeID"] = 24913,
				}),
				-- #if AFTER TBC
				applyclassicphase(PHASE_THREE_RECIPES, {
					["name"] = "Enchanted Thorium Helm",
					["timeline"] = { REMOVED_4_0_1 },
					["recipeID"] = 16742,
				}),
				-- #endif
				-- #if SEASON_OF_DISCOVERY
				{
					["name"] = "Golden Scale Coif",
					["timeline"] = { ADDED_1_15_1 },
					["recipeID"] = 439126,
				},
				-- #endif
				{
					["name"] = "Golden Scale Coif",
					-- #if SEASON_OF_DISCOVERY
					["timeline"] = { REMOVED_1_15_1 },
					-- #endif
					["recipeID"] = 3503,
				},
				{
					["name"] = "Green Iron Helm",
					["recipeID"] = 3502,
				},
				{
					["name"] = "Heavy Mithril Helm",
					["recipeID"] = 9970,
				},
				-- #if AFTER TBC
				{
					["name"] = "Helm of the Great Chief",
					["recipeID"] = 16728,
					-- #if SEASON_OF_DISCOVERY
					["timeline"] = { REMOVED_1_15_3 },
					-- #endif
				},
				-- #endif
				{
					["name"] = "Imperial Plate Helm",
					["recipeID"] = 16658,
				},
				-- #if AFTER TBC
				{
					["name"] = "Lionheart Helm",
					["recipeID"] = 16729,
				},
				-- #endif
				{
					["name"] = "Mithril Coif",
					["recipeID"] = 9961,
				},
				{
					["name"] = "Ornate Mithril Helm",
					["timeline"] = { REMOVED_4_0_1 },
					["recipeID"] = 9980,
				},
				{
					["name"] = "Radiant Circlet",
					["recipeID"] = 16659,
				},
				{
					["name"] = "Runic Plate Helm",
					["recipeID"] = 16726,
				},
				{
					["name"] = "Steel Plate Helm",
					["recipeID"] = 9935,
				},
				{
					["name"] = "Thorium Helm",
					["recipeID"] = 16653,
				},
				-- #if AFTER TBC
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_FOUR, {
					["name"] = "Warcrest of the Great Chief",
					["recipeID"] = 461739,
					["requireSkill"] = 9788,
					["timeline"] = { ADDED_1_15_3 },
				}),
				-- #endif
				{
					["name"] = "Whitesoul Helm",
					["recipeID"] = 16724,
				},
				-- #endif
			},
		},
		{
			["name"] = "Shoulders",
			["categoryID"] = 219,
			["groups"] = {
				{
					["name"] = "Barbaric Iron Shoulders",
					["recipeID"] = 9811,
				},
				applyclassicphase(PHASE_FOUR, {
					["name"] = "Bloodsoul Shoulders",
					["timeline"] = { REMOVED_4_0_3, ADDED_10_0_7 },
					["recipeID"] = 24137,
				}),
				{
					["name"] = "Dark Iron Shoulders",
					["recipeID"] = 15295,
				},
				applyclassicphase(PHASE_FOUR, {
					["name"] = "Darksoul Shoulders",
					["timeline"] = { REMOVED_4_0_3, ADDED_10_0_7 },
					["recipeID"] = 24141,
				}),
				-- #if AFTER TBC
				{
					["name"] = "Dawnbringer Shoulders",
					["recipeID"] = 16660,
					["timeline"] = {
						-- #if SEASON_OF_DISCOVERY
						ADDED_1_15_3,
						-- #else
						CREATED_1_12_1, ADDED_2_0_1,
						-- #endif
					},
				},
				{
					["name"] = "Fiery Chain Shoulders",
					["recipeID"] = 20873,
				},
				-- #endif
				-- #if SEASON_OF_DISCOVERY
				{
					["name"] = "Golden Scale Shoulders",
					["timeline"] = { ADDED_1_15_1 },
					["recipeID"] = 439130,
				},
				-- #endif
				{
					["name"] = "Golden Scale Shoulders",
					-- #if SEASON_OF_DISCOVERY
					["timeline"] = { REMOVED_1_15_1 },
					-- #endif
					["recipeID"] = 3505,
				},
				{
					["name"] = "Green Iron Shoulders",
					["recipeID"] = 3504,
				},
				{
					["name"] = "Heavy Mithril Shoulder",
					["recipeID"] = 9926,
				},
				{
					["name"] = "Imperial Plate Shoulders",
					["recipeID"] = 16646,
				},
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_ONE, {
					["name"] = "Mantle of the Second War",
					["recipeID"] = 427061,
				}),
				-- #endif
				{
					["name"] = "Mithril Scale Shoulders",
					["recipeID"] = 9966,
				},
				{
					["name"] = "Ornate Mithril Shoulder",
					["timeline"] = { REMOVED_4_0_1 },
					["recipeID"] = 9952,
				},
				{
					["name"] = "Rough Bronze Shoulders",
					["recipeID"] = 3328,
				},
				{
					["name"] = "Runic Plate Shoulders",
					["recipeID"] = 16664,
				},
				{
					["name"] = "Silvered Bronze Shoulders",
					["recipeID"] = 3330,
				},
			},
		},
		{
			["name"] = "Bracers",
			["categoryID"] = 222,
			["groups"] = {
				{
					["name"] = "Copper Bracers",
					["recipeID"] = 2663,
				},
				-- #if AFTER TBC
				{
					["name"] = "Dark Iron Bracers",
					["recipeID"] = 20874,
				},
				-- #endif
				{
					["name"] = "Golden Scale Bracers",
					["recipeID"] = 7223,
				},
				{
					["name"] = "Green Iron Bracers",
					["recipeID"] = 3501,
				},
				applyclassicphase(PHASE_SIX, {
					["name"] = "Icebane Bracers",
					["timeline"] = { REMOVED_3_0_2 },
					["recipeID"] = 28244,
				}),
				{
					["name"] = "Imperial Plate Bracers",
					["recipeID"] = 16649,
				},
				{
					["name"] = "Mithril Scale Bracers",
					["recipeID"] = 9937,
				},
				{
					["name"] = "Patterned Bronze Bracers",
					["recipeID"] = 2672,
				},
				{
					["name"] = "Rough Bronze Bracers",
					["timeline"] = { CREATED_1_12_1 },	-- Never Implemented
					["recipeID"] = 2671,
				},
				{
					["name"] = "Runed Copper Bracers",
					["recipeID"] = 2664,
				},
				{
					["name"] = "Thorium Bracers",
					["recipeID"] = 16644,
				},
			},
		},
		{
			["name"] = "Gauntlets",
			["categoryID"] = 221,
			["groups"] = {
				{
					["name"] = "Barbaric Iron Gloves",
					["recipeID"] = 9820,
				},
				applyclassicphase(PHASE_FIVE, {
					["name"] = "Black Grasp of the Destroyer",
					["recipeID"] = 27589,
				}),
				applyclassicphase(PHASE_FOUR, {
					["name"] = "Bloodsoul Gauntlets",
					["timeline"] = { REMOVED_4_0_3, ADDED_10_0_7 },
					["recipeID"] = 24138,
				}),
				-- #if AFTER TBC
				applyclassicphase(PHASE_THREE_RECIPES, {
					["name"] = "Dark Iron Gauntlets",
					["recipeID"] = 23637,
				}),
				-- #endif
				applyclassicphase(PHASE_FOUR, {
					["name"] = "Darkrune Gauntlets",
					["recipeID"] = 24912,
				}),
				-- #if AFTER TBC
				{
					["name"] = "Fiery Plate Gauntlets",
					["recipeID"] = 16655,
					["timeline"] = {
						-- #if SEASON_OF_DISCOVERY
						REMOVED_1_15_3,
						-- #else
						REMOVED_4_0_3,
						-- #endif
					},
				},
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_FOUR, {
					["name"] = "Fiery Plate Gauntlets of the Hidden Technique",
					["recipeID"] = 461651,
					["timeline"] = { REMOVED_1_15_3 },
				}),
				-- #endif
				-- #endif
				{
					["name"] = "Gemmed Copper Gauntlets",
					["recipeID"] = 3325,
				},
				applyclassicphase(PHASE_THREE_RECIPES, {
					["name"] = "Gloves of the Dawn",
					["recipeID"] = 23633,
				}),
				-- #if SEASON_OF_DISCOVERY
				{
					["name"] = "Golden Scale Gauntlets",
					["timeline"] = { ADDED_1_15_1 },
					["recipeID"] = 439120,
				},
				-- #endif
				{
					["name"] = "Golden Scale Gauntlets",
					["timeline"] = {
						-- #if SEASON_OF_DISCOVERY
						REMOVED_1_15_1,
						-- #else
						REMOVED_4_0_1,
						-- #endif
					},
					["recipeID"] = 11643,
				},
				{
					["name"] = "Green Iron Gauntlets",
					["recipeID"] = 3336,
				},
				{
					["name"] = "Heavy Mithril Gauntlet",
					["recipeID"] = 9928,
				},
				applyclassicphase(PHASE_SIX, {
					["name"] = "Icebane Gauntlets",
					["timeline"] = { REMOVED_3_0_2 },
					["recipeID"] = 28243,
				}),
				{
					["name"] = "Ironforge Gauntlets",
					["timeline"] = { CREATED_1_12_1 },	-- Never Implemented
					["recipeID"] = 8368,
				},
				applyclassicphase(PHASE_FIVE_CATCH_UP, {
					["name"] = "Ironvine Gloves",
					["recipeID"] = 28462,
				}),
				{
					["name"] = "Mithril Scale Gloves",
					["timeline"] = { CREATED_1_12_1 },	-- Never Implemented
					["recipeID"] = 9942,
				},
				{
					["name"] = "Ornate Mithril Gloves",
					["timeline"] = { REMOVED_4_0_1 },
					["recipeID"] = 9950,
				},
				{
					["name"] = "Radiant Gloves",
					["recipeID"] = 16654,
				},
				{
					["name"] = "Runed Copper Gauntlets",
					["recipeID"] = 3323,
				},
				{
					["name"] = "Silvered Bronze Gauntlets",
					["recipeID"] = 3333,
				},
				-- #if AFTER TBC
				{
					["name"] = "Storm Gauntlets",
					["recipeID"] = 16661,
					-- #if SEASON_OF_DISCOVERY
					["timeline"] = { REMOVED_1_15_3 },
					-- #endif
				},
				{
					["name"] = "Stronghold Gauntlets",
					["recipeID"] = 16741,
				},
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_FOUR, {
					["name"] = "Tempest Gauntlets",
					["recipeID"] = 461737,
					["timeline"] = { ADDED_1_15_3 },
				}),
				-- #endif
				{
					["name"] = "Truesilver Gauntlets",
					["timeline"] = { REMOVED_4_0_1 },
					["recipeID"] = 9954,
				},
				-- #endif
			},
		},
		{
			["name"] = "Chest",
			["categoryID"] = 220,
			["groups"] = {
				{
					["name"] = "Barbaric Iron Breastplate",
					["recipeID"] = 9813,
				},
				{
					["name"] = "Barbaric Iron Hauberk",
					["timeline"] = { ADDED_8_1_0 },
					["recipeID"] = 280671,
				},
				applyclassicphase(PHASE_FOUR, {
					["name"] = "Bloodsoul Breastplate",
					["timeline"] = { REMOVED_4_0_3, ADDED_10_0_7 },
					["recipeID"] = 24136,
				}),
				{
					["name"] = "Copper Chain Vest",
					["recipeID"] = 3321,
				},
				{
					["name"] = "Dark Iron Mail",
					["recipeID"] = 15293,
				},
				-- #if AFTER TBC
				{
					["name"] = "Dark Iron Plate",
					-- #if SEASON_OF_DISCOVERY
					["timeline"] = { REMOVED_1_15_3 },
					-- #endif
					["recipeID"] = 15296,
				},
				-- #endif
				applyclassicphase(PHASE_FOUR, {
					["name"] = "Darkrune Breastplate",
					["recipeID"] = 24914,
				}),
				applyclassicphase(PHASE_FOUR, {
					["name"] = "Darksoul Breastplate",
					["timeline"] = { REMOVED_4_0_3, ADDED_10_0_7 },
					["recipeID"] = 24139,
				}),
				-- #if AFTER TBC
				{
					["name"] = "Demon Forged Breastplate",
					["timeline"] = { REMOVED_4_0_1 },
					["recipeID"] = 16667,
				},
				applyclassicphase(PHASE_THREE_RECIPES, {
					["name"] = "Enchanted Thorium Breastplate",
					["timeline"] = { REMOVED_4_0_1 },
					["recipeID"] = 16745,
				}),
				-- #endif
				-- #if SEASON_OF_DISCOVERY
				{
					["name"] = "Golden Scale Cuirass",
					["timeline"] = { ADDED_1_15_1 },
					["recipeID"] = 439124,
				},
				-- #endif
				{
					["name"] = "Golden Scale Cuirass",
					-- #if SEASON_OF_DISCOVERY
					["timeline"] = { REMOVED_1_15_1 },
					-- #endif
					["recipeID"] = 3511,
				},
				{
					["name"] = "Green Iron Hauberk",
					["recipeID"] = 3508,
				},
				{
					["name"] = "Heavy Mithril Breastplate",
					["recipeID"] = 9959,
				},
				applyclassicphase(PHASE_SIX, {
					["name"] = "Icebane Breastplate",
					["timeline"] = { REMOVED_3_0_2 },
					["recipeID"] = 28242,
				}),
				{
					["name"] = "Imperial Plate Chest",
					["recipeID"] = 16663,
				},
				-- #if AFTER TBC
				{
					["name"] = "Invulnerable Mail",
					["recipeID"] = 16746,
				},
				-- #endif
				{
					["name"] = "Ironforge Breastplate",
					["recipeID"] = 8367,
				},
				{
					["name"] = "Ironforge Chain",
					["timeline"] = { CREATED_1_12_1 },	-- Never Implemented
					["recipeID"] = 8366,
				},
				applyclassicphase(PHASE_FIVE_CATCH_UP, {
					["name"] = "Ironvine Breastplate",
					["recipeID"] = 28461,
				}),
				applyclassicphase(PHASE_FIVE, {
					["name"] = "Obsidian Mail Tunic",
					["recipeID"] = 27590,
				}),
				{
					["name"] = "Ornate Mithril Breastplate",
					["timeline"] = { REMOVED_4_0_1 },
					["recipeID"] = 9972,
				},
				{
					["name"] = "Radiant Breastplate",
					["recipeID"] = 16648,
				},
				{
					["name"] = "Rough Bronze Cuirass",
					["recipeID"] = 2670,
				},
				{
					["name"] = "Rough Copper Vest",
					["recipeID"] = 12260,
				},
				{
					["name"] = "Runed Copper Breastplate",
					["recipeID"] = 2667,
				},
				{
					["name"] = "Runic Breastplate",
					["timeline"] = { REMOVED_4_0_1, ADDED_10_1_7 },
					["recipeID"] = 16731,
				},
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_ONE, {
					["name"] = "Shifting Silver Breastplate",
					["recipeID"] = 429348
				}),
				-- #endif
				{
					["name"] = "Shining Silver Breastplate",
					["recipeID"] = 2675,
				},
				{
					["name"] = "Silvered Bronze Breastplate",
					["recipeID"] = 2673,
				},
				{
					["name"] = "Steel Breastplate",
					["recipeID"] = 9916,
				},
				-- #if AFTER TBC
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_FOUR, {
					["name"] = "Tempered Dark Iron Plate",
					["timeline"] = { ADDED_1_15_3 },
					["recipeID"] = 461667,
				}),
				-- #endif
				-- #endif
				applyclassicphase(PHASE_FIVE, {
					["name"] = "Thick Obsidian Breastplate",
					["recipeID"] = 27587,
				}),
				{
					["name"] = "Thorium Armor",
					["recipeID"] = 16642,
				},
				-- #if AFTER TBC
				{
					["name"] = "Truesilver Breastplate",
					["timeline"] = { REMOVED_4_0_1 },
					["recipeID"] = 9974,
				},
				{
					["name"] = "Wildthorn Mail",
					["recipeID"] = 16650,
				},
				-- #endif
			},
		},
		{
			["name"] = "Belts",
			["categoryID"] = 223,
			["groups"] = {
				{
					["name"] = "Copper Chain Belt",
					["recipeID"] = 2661,
				},
				-- #if AFTER TBC
				{
					["name"] = "Fiery Chain Girdle",
					["recipeID"] = 20872,
				},
				-- #endif
				applyclassicphase(PHASE_THREE_RECIPES, {
					["name"] = "Girdle of the Dawn",
					["recipeID"] = 23632,
				}),
				applyclassicphase(PHASE_FIVE, {
					["name"] = "Heavy Obsidian Belt",
					["recipeID"] = 27585,
				}),
				applyclassicphase(PHASE_THREE_RECIPES, {
					["name"] = "Heavy Timbermaw Belt",
					["recipeID"] = 23628,
				}),
				{
					["name"] = "Imperial Plate Belt",
					["recipeID"] = 16647,
				},
				applyclassicphase(PHASE_FIVE_CATCH_UP, {
					["name"] = "Ironvine Belt",
					["recipeID"] = 28463,
				}),
				applyclassicphase(PHASE_FIVE, {
					["name"] = "Light Obsidian Belt",
					["recipeID"] = 27588,
				}),
				{
					["name"] = "Radiant Belt",
					["recipeID"] = 16645,
				},
				{
					["name"] = "Runed Copper Belt",
					["recipeID"] = 2666,
				},
				{
					["name"] = "Thorium Belt",
					["recipeID"] = 16643,
				},
			},
		},
		{
			["name"] = "Legs",
			["categoryID"] = 224,
			["groups"] = {
				{
					["name"] = "Copper Chain Pants",
					["recipeID"] = 2662,
				},
				-- #if AFTER TBC
				{
					["name"] = "Dark Iron Leggings",
					["recipeID"] = 20876,
				},
				-- #endif
				applyclassicphase(PHASE_FOUR, {
					["name"] = "Darksoul Leggings",
					["timeline"] = { REMOVED_4_0_3, ADDED_10_0_7 },
					["recipeID"] = 24140,
				}),
				-- #if AFTER TBC
				applyclassicphase(PHASE_THREE_RECIPES, {
					["name"] = "Enchanted Thorium Leggings",
					["timeline"] = { REMOVED_4_0_1 },
					["recipeID"] = 16744,
				}),
				-- #endif
				-- #if SEASON_OF_DISCOVERY
				{
					["name"] = "Golden Scale Leggings",
					["timeline"] = { ADDED_1_15_1 },
					["recipeID"] = 439132,
				},
				-- #endif
				{
					["name"] = "Golden Scale Leggings",
					-- #if SEASON_OF_DISCOVERY
					["timeline"] = { REMOVED_1_15_1 },
					-- #endif
					["recipeID"] = 3507,
				},
				{
					["name"] = "Green Iron Leggings",
					["recipeID"] = 3506,
				},
				{
					["name"] = "Heavy Mithril Pants",
					["recipeID"] = 9933,
				},
				{
					["name"] = "Imperial Plate Leggings",
					["recipeID"] = 16730,
				},
				{
					["name"] = "Mithril Scale Pants",
					["recipeID"] = 9931,
				},
				{
					["name"] = "Orcish War Leggings",
					["timeline"] = { REMOVED_4_0_1 },
					["recipeID"] = 9957,
					["races"] = HORDE_ONLY,
				},
				{
					["name"] = "Ornate Mithril Pants",
					["timeline"] = { REMOVED_4_0_1 },
					["recipeID"] = 9945,
				},
				{
					["name"] = "Radiant Leggings",
					["recipeID"] = 16725,
				},
				{
					["name"] = "Rough Bronze Leggings",
					["recipeID"] = 2668,
				},
				{
					["name"] = "Runed Copper Pants",
					["recipeID"] = 3324,
				},
				{
					["name"] = "Runic Plate Leggings",
					["recipeID"] = 16732,
				},
				{
					["name"] = "Silvered Bronze Leggings",
					["recipeID"] = 12259,
				},
				{
					["name"] = "Thorium Leggings",
					["recipeID"] = 16662,
				},
				-- #if AFTER TBC
				applyclassicphase(PHASE_FIVE, {
					["name"] = "Titanic Leggings",
					["recipeID"] = 27829,
				}),
				-- #endif
			},
		},
		{
			["name"] = "Boots",
			["categoryID"] = 225,
			["groups"] = {
				{
					["name"] = "Barbaric Iron Boots",
					["recipeID"] = 9818,
				},
				{
					["name"] = "Copper Chain Boots",
					["recipeID"] = 3319,
				},
				-- #if AFTER TBC
				applyclassicphase(PHASE_FOUR_DARKIRON_RECIPES, {
					["name"] = "Dark Iron Boots",
					["recipeID"] = 24399,
				}),
				-- #endif
				-- #if SEASON_OF_DISCOVERY
				{
					["name"] = "Golden Scale Boots",
					["timeline"] = { ADDED_1_15_1 },
					["recipeID"] = 439122,
				},
				-- #endif
				{
					["name"] = "Golden Scale Boots",
					-- #if SEASON_OF_DISCOVERY
					["timeline"] = { REMOVED_1_15_1 },
					-- #endif
					["recipeID"] = 3515,
				},
				{
					["name"] = "Green Iron Boots",
					["recipeID"] = 3334,
				},
				{
					["name"] = "Heavy Mithril Boots",
					["recipeID"] = 9968,
				},
				applyclassicphase(PHASE_THREE_RECIPES, {
					["name"] = "Heavy Timbermaw Boots",
					["recipeID"] = 23629,
				}),
				{
					["name"] = "Imperial Plate Boots",
					["recipeID"] = 16657,
				},
				{
					["name"] = "Ornate Mithril Boots",
					["timeline"] = { REMOVED_4_0_1 },
					["recipeID"] = 9979,
				},
				{
					["name"] = "Polished Steel Boots",
					["recipeID"] = 3513,
				},
				{
					["name"] = "Radiant Boots",
					["recipeID"] = 16656,
				},
				{
					["name"] = "Rough Bronze Boots",
					["recipeID"] = 7817,
				},
				{
					["name"] = "Runic Plate Boots",
					["recipeID"] = 16665,
				},
				{
					["name"] = "Silvered Bronze Boots",
					["recipeID"] = 3331,
				},
				{
					["name"] = "Thorium Boots",
					["recipeID"] = 16652,
				},
			},
		},
		{
			["name"] = "Shields",
			["categoryID"] = 226,
			["groups"] = {
				applyclassicphase(PHASE_FIVE, {
					["name"] = "Jagged Obsidian Shield",
					["recipeID"] = 27586,
				}),
			},
		},
		{
			["name"] = "Weapons",
			["categoryID"] = 227,
			["groups"] = {
				-- #if AFTER TBC
				{
					["name"] = "Annihilator",
					["recipeID"] = 16991,
					-- #if SEASON_OF_DISCOVERY
					["description"] = "Blizzard stated that Annihilator was an item that forced 1 member of the raid into a role that did not fit their design, so they've decided to not include Annihilator.",
					["timeline"] = { REMOVED_1_15_0 },
					-- #endif
				},
				{
					["name"] = "Arcanite Champion",
					["recipeID"] = 16990,
				},
				{
					["name"] = "Arcanite Reaper",
					["recipeID"] = 16994,
				},
				-- #endif
				{
					["name"] = "Big Black Mace",
					["recipeID"] = 10001,
				},
				{
					["name"] = "Big Bronze Knife",
					["recipeID"] = 3491,
				},
				-- #if AFTER TBC
				applyclassicphase(PHASE_THREE_RECIPES, {
					["name"] = "Black Amnesty",
					["recipeID"] = 23638,
				}),
				applyclassicphase(PHASE_THREE_RECIPES, {
					["name"] = "Blackfury",
					["recipeID"] = 23639,
				}),
				applyclassicphase(PHASE_THREE_RECIPES, {
					["name"] = "Blackguard",
					["recipeID"] = 23652,
				}),
				{
					["name"] = "Blazing Rapier",
					["timeline"] = {
						REMOVED_4_0_1,
						ADDED_7_1_5,
					},
					["recipeID"] = 16978,
				},
				{
					["name"] = "Bleakwood Hew",
					["timeline"] = { CREATED_1_12_1, ADDED_7_1_5 },
					["recipeID"] = 16965,
				},
				{
					["name"] = "Blight",
					["recipeID"] = 10011,
				},
				{
					["name"] = "Blood Talon",
					["timeline"] = { CREATED_1_12_1 },	-- Never Implemented
					["recipeID"] = 16986,
				},
				-- #endif
				{
					["name"] = "Blue Glittering Axe",
					["recipeID"] = 9995,
				},
				{
					["name"] = "Bronze Axe",
					["recipeID"] = 2741,
				},
				{
					["name"] = "Bronze Battle Axe",
					["recipeID"] = 9987,
				},
				{
					["name"] = "Bronze Greatsword",
					["recipeID"] = 9986,
				},
				{
					["name"] = "Bronze Mace",
					["recipeID"] = 2740,
				},
				{
					["name"] = "Bronze Shortsword",
					["recipeID"] = 2742,
				},
				{
					["name"] = "Bronze Warhammer",
					["recipeID"] = 9985,
				},
				{
					["name"] = "Copper Axe",
					["recipeID"] = 2738,
				},
				{
					["name"] = "Copper Battle Axe",
					["recipeID"] = 3293,
				},
				{
					["name"] = "Copper Claymore",
					["recipeID"] = 9983,
				},
				{
					["name"] = "Copper Dagger",
					["recipeID"] = 8880,
				},
				{
					["name"] = "Copper Mace",
					["recipeID"] = 2737,
				},
				{
					["name"] = "Copper Shortsword",
					["recipeID"] = 2739,
				},
				-- #if AFTER TBC
				{
					["name"] = "Corruption",
					["timeline"] = {
						-- #if SEASON_OF_DISCOVERY
						REMOVED_1_15_3,
						-- #else
						REMOVED_2_0_1, ADDED_3_0_2, REMOVED_4_0_3, ADDED_7_1_5,
						-- #endif
					},
					["recipeID"] = 16985,
				},
				{
					["name"] = "Dark Iron Destroyer",
					["recipeID"] = 20897,
				},
				{
					["name"] = "Dark Iron Pulverizer",
					["recipeID"] = 15292,
				},
				{
					["name"] = "Dark Iron Reaver",
					["recipeID"] = 20890,
				},
				{
					["name"] = "Dark Iron Sunderer",
					["recipeID"] = 15294,
				},
				{
					["name"] = "Darkspear",
					["timeline"] = { CREATED_1_12_1, ADDED_7_1_5 },
					["recipeID"] = 16987,
				},
				{
					["name"] = "Dawn's Edge",
					["timeline"] = { REMOVED_4_0_3, ADDED_7_1_5 },
					["recipeID"] = 16970,
				},
				-- #endif
				{
					["name"] = "Dazzling Mithril Rapier",
					["recipeID"] = 10005,
				},
				{
					["name"] = "Deadly Bronze Poniard",
					["recipeID"] = 3295,
				},
				-- #if AFTER TBC
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_FOUR, {
					["name"] = "Deadly Heartseeker",
					["recipeID"] = 461716,
					["timeline"] = { ADDED_1_15_3 },
				}),
				applyclassicphase(SOD_PHASE_FOUR, {
					["name"] = "Desecration",
					["recipeID"] = 461714,
					["timeline"] = { REMOVED_1_15_3 },
				}),
				-- #endif
				applyclassicphase(PHASE_THREE_RECIPES, {
					["name"] = "Ebon Hand",
					["recipeID"] = 23650,
				}),
				-- #endif
				{
					["name"] = "Ebon Shiv",
					["recipeID"] = 10013,
				},
				{
					["name"] = "Edge of Winter",
					["recipeID"] = 21913,
				},
				-- #if AFTER TBC
				{
					["name"] = "Enchanted Battlehammer",
					["timeline"] = {
						-- #if SEASON_OF_DISCOVERY
						REMOVED_1_15_3,
						-- #else
						REMOVED_4_0_3,
						-- #endif
					},
					["recipeID"] = 16973,
				},
				-- #endif
				applyclassicphase(TBC_PHASE_ONE, {
					["recipeID"] = 34982,	-- Enchanted Thorium Blades
					["timeline"] = {
						ADDED_2_0_1,
						DELETED_5_0_4
					},
				}),
				-- #if AFTER TBC
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_FOUR, {
					["name"] = "Finely-Enchanted Battlehammer",
					["recipeID"] = 461733,
					["timeline"] = { ADDED_1_15_3 },
				}),
				-- #endif
				-- #endif
				{
					["name"] = "Frost Tiger Blade",
					["recipeID"] = 3497,
				},
				-- #if AFTER TBC
				{
					["name"] = "Frostguard",
					["recipeID"] = 16992,
				},
				-- #endif
				{
					["name"] = "Glinting Steel Dagger",
					["recipeID"] = 15972,
				},
				{
					["name"] = "Golden Iron Destroyer",
					["recipeID"] = 3495,
				},
				-- #if AFTER TBC
				{
					["name"] = "Hammer of the Titans",
					["recipeID"] = 16988,
				},
				-- #endif
				{
					["name"] = "Hardened Iron Shortsword",
					["recipeID"] = 3492,
				},
				-- #if AFTER TBC
				{
					["name"] = "Heartseeker",
					["recipeID"] = 16995,
					-- #if SEASON_OF_DISCOVERY
					["timeline"] = { REMOVED_1_15_3 },
					-- #endif
				},
				-- #endif
				{
					["name"] = "Heavy Bronze Mace",
					["recipeID"] = 3296,
				},
				{
					["name"] = "Heavy Copper Broadsword",
					["recipeID"] = 3292,
				},
				applyclassicphase(TBC_PHASE_ONE, {
					["name"] = "Heavy Copper Longsword",
					["recipeID"] = 43549,
				}),
				{
					["name"] = "Heavy Copper Maul",
					["recipeID"] = 7408,
				},
				{
					["name"] = "Heavy Mithril Axe",
					["recipeID"] = 9993,
				},
				{
					["name"] = "Huge Thorium Battleaxe",
					["recipeID"] = 16971,
				},
				{
					["name"] = "Inlaid Thorium Hammer",
					["timeline"] = { CREATED_1_12_1 },
					["recipeID"] = 16967,
				},
				{
					["name"] = "Iridescent Hammer",
					["recipeID"] = 6518,
				},
				{
					["name"] = "Jade Serpentblade",
					["recipeID"] = 3493,
				},
				-- #if AFTER 7.1.5
				applyclassicphase(TBC_PHASE_ONE, {
					["name"] = "Light Earthforged Blade",
					["timeline"] = { CREATED_2_0_1, ADDED_7_1_5 },
					["recipeID"] = 36125,
				}),
				-- #endif
				{
					["name"] = "Massive Iron Axe",
					["recipeID"] = 3498,
				},
				-- #if AFTER TBC
				{
					["name"] = "Masterwork Stormhammer",
					["timeline"] = { REMOVED_6_0_2, ADDED_10_1_5 },
					["recipeID"] = 16993,
				},
				-- #endif
				{
					["name"] = "Mighty Iron Hammer",
					["recipeID"] = 3297,
				},
				{
					["name"] = "Moonsteel Broadsword",
					-- #if SEASON_OF_DISCOVERY
					["timeline"] = { REMOVED_1_15_1 },
					-- #endif
					["recipeID"] = 3496,
				},
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_TWO, {
					["name"] = "Moonsteel Broadsword",
					["timeline"] = { ADDED_1_15_1 },
					["recipeID"] = 439128,
				}),
				-- #endif
				-- #if AFTER TBC
				applyclassicphase(PHASE_THREE_RECIPES, {
					["name"] = "Nightfall",
					["recipeID"] = 23653,
					-- #if SEASON_OF_DISCOVERY
					["timeline"] = { REMOVED_1_15_0 },
					-- #endif
				}),
				-- #endif
				{
					["name"] = "Ornate Thorium Handaxe",
					["recipeID"] = 16969,
				},
				{
					["name"] = "Pearl-handled Dagger",
					["recipeID"] = 6517,
				},
				-- #if AFTER TBC
				applyclassicphase(PHASE_FIVE_RECIPES, {
					["name"] = "Persuader",
					["recipeID"] = 27830,
				}),
				{
					["name"] = "Phantom Blade",
					["recipeID"] = 10007,
				},
				-- #endif
				{
					["name"] = "Rune Edge",
					["timeline"] = { CREATED_1_12_1 },	-- Never Implemented
					["recipeID"] = 16980,
				},
				{
					["name"] = "Runed Mithril Hammer",
					["recipeID"] = 10009,
				},
				-- #if AFTER TBC
				applyclassicphase(PHASE_FIVE_RECIPES, {
					["name"] = "Sageblade",
					["recipeID"] = 27832,
				}),
				-- #endif
				{
					["name"] = "Searing Golden Blade",
					["recipeID"] = 15973,
				},
				-- #if AFTER TBC
				{
					["name"] = "Serenity",
					["timeline"] = { REMOVED_2_0_1, ADDED_3_0_2 },
					["recipeID"] = 16983,
				},
				-- #endif
				{
					["name"] = "Shadow Crescent Axe",
					["recipeID"] = 3500,
				},
				-- #if AFTER TBC
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_FOUR, {
					["name"] = "Skyrider's Masterwork Stormhammer",
					["recipeID"] = 461647,
					["timeline"] = { ADDED_1_15_3 },
				}),
				-- #endif
				-- #endif
				{
					["name"] = "Solid Iron Maul",
					["recipeID"] = 3494,
				},
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_FOUR, {
					["name"] = "Sulfuron Hammer",
					["timeline"] = { ADDED_1_15_3 },
					["recipeID"] = 460460,
				}),
				-- #endif
				{
					["name"] = "Sulfuron Hammer",
					-- #if SEASON_OF_DISCOVERY
					["timeline"] = { REMOVED_1_15_3 },
					-- #endif
					["recipeID"] = 21161,
				},
				-- #if AFTER TBC
				{
					["name"] = "The Shatterer",
					["timeline"] = { REMOVED_4_0_3, ADDED_10_1_5 },
					["recipeID"] = 10003,
				},
				-- #endif
				applyclassicphase(TBC_PHASE_ONE, {
					["recipeID"] = 34979,	-- Thick Bronze Darts
					["timeline"] = {
						ADDED_2_0_1,
						DELETED_5_0_4
					},
				}),
				{
					["name"] = "Thick War Axe",
					["recipeID"] = 3294,
				},
				{
					["name"] = "Thorium Greatsword",
					["timeline"] = { CREATED_1_12_1 },	-- Never Implemented
					["recipeID"] = 16960,
				},
				-- #if AFTER TBC
				{
					["name"] = "Truesilver Champion",
					["timeline"] = { REMOVED_4_0_3, ADDED_10_1_5 },
					["recipeID"] = 10015,
				},
				-- #endif
				{
					["name"] = "Volcanic Hammer",
					["timeline"] = { REMOVED_4_0_1, ADDED_10_1_7 },
					["recipeID"] = 16984,
				},
				applyclassicphase(TBC_PHASE_ONE, {
					["recipeID"] = 34981,	-- Whirling Steel Axes
					["timeline"] = {
						ADDED_2_0_1,
						DELETED_5_0_4
					},
				}),
				{
					["name"] = "Wicked Mithril Blade",
					["recipeID"] = 9997,
				},
			},
		},
		{
			["name"] = "Skeleton Keys",
			["categoryID"] = 228,
			["groups"] = {
				{
					["name"] = "Arcanite Skeleton Key",
					["recipeID"] = 19669,
				},
				{
					["name"] = "Golden Skeleton Key",
					["recipeID"] = 19667,
				},
				{
					["name"] = "Silver Skeleton Key",
					["recipeID"] = 19666,
				},
				{
					["name"] = "Truesilver Skeleton Key",
					["recipeID"] = 19668,
				},
			},
		},
	}),
	applyclassicphase(TBC_PHASE_ONE, expansion(EXPANSION.TBC, bubbleDownSelf({ ["timeline"] = { ADDED_2_0_1 } }, {
		-- #if AFTER 9.0.1.36216
		{
			["name"] = "Optional Reagents",
			["categoryID"] = 1489,
			["groups"] = {
				{
					["name"] = "Relic of the Past I",
					["recipeID"] = 330144,
				},
				{
					["name"] = "Relic of the Past II",
					["recipeID"] = 330145,
				},
				{
					["name"] = "Relic of the Past III",
					["recipeID"] = 330146,
				},
				{
					["name"] = "Relic of the Past IV",
					["recipeID"] = 330147,
				},
				{
					["name"] = "Relic of the Past V",
					["recipeID"] = 330148,
				},
			},
		},
		-- #endif
		{
			["name"] = "Materials",
			["categoryID"] = 215,
			["groups"] = {
				{
					["name"] = "Adamantite Rod",
					["timeline"] = { REMOVED_5_0_4 },
					["recipeID"] = 32656,
				},
				{
					["name"] = "Eternium Rod",
					["timeline"] = { REMOVED_5_0_4 },
					["recipeID"] = 32657,
				},
				{
					["name"] = "Fel Iron Rod",
					["timeline"] = { REMOVED_5_0_4 },
					["recipeID"] = 32655,
				},
			},
		},
		{
			["name"] = "Weapon Mods",
			["categoryID"] = 216,
			["groups"] = {
				{
					["name"] = "Adamantite Weapon Chain",
					["recipeID"] = 42688,
				},
				{
					["name"] = "Adamantite Sharpening Stone",
					["recipeID"] = 29656,
				},
				{
					["name"] = "Adamantite Weightstone",
					["recipeID"] = 34608,
				},
				{
					["name"] = "Fel Sharpening Stone",
					["recipeID"] = 29654,
				},
				{
					["name"] = "Fel Weightstone",
					["recipeID"] = 34607,
				},

			},
		},
		{
			["name"] = "Armor Mods",
			["categoryID"] = 217,
			["groups"] = {
				{
					["name"] = "Felsteel Shield Spike",
					["recipeID"] = 29657,
				},
				{
					["name"] = "Greater Rune of Warding",
					["recipeID"] = 32285,
				},
				{
					["name"] = "Greater Ward of Shielding",
					["recipeID"] = 29729,
				},
				{
					["name"] = "Lesser Rune of Warding",
					["recipeID"] = 32284,
				},
				{
					["name"] = "Lesser Ward of Shielding",
					["recipeID"] = 29728,
				},
			},
		},
		{
			["name"] = "Helms",
			["categoryID"] = 218,
			["groups"] = {
				{
					["name"] = "Fel Iron Chain Coif",
					["recipeID"] = 29551,
				},
				{
					["name"] = "Felsteel Helm",
					["recipeID"] = 29621,
				},
				{
					["name"] = "Flamebane Helm",
					["minReputation"] = { FACTION_THE_ALDOR, NEUTRAL },	-- The Aldor, Neutral.
					["recipeID"] = 29615,
				},
				{
					["name"] = "Helm of the Stalwart Defender",
					["recipeID"] = 29664,
				},
				{
					["name"] = "Iceguard Helm",
					["recipeID"] = 38479,
				},
				{
					["name"] = "Oathkeeper's Helm",
					["recipeID"] = 29668,
				},
				{
					["name"] = "Ragesteel Helm",
					["recipeID"] = 29643,
				},
				{
					["name"] = "Storm Helm",
					["recipeID"] = 29663,
				},
				{
					["name"] = "Wildguard Helm",
					["recipeID"] = 38476,
				},
			},
		},
		{
			["name"] = "Shoulders",
			["categoryID"] = 219,
			["groups"] = {
				applyclassicphase(TBC_PHASE_THREE, {
					["name"] = "Dawnsteel Shoulders",
					["recipeID"] = 41135,
				}),
				{
					["name"] = "Ragesteel Shoulders",
					["recipeID"] = 42662,
				},
				applyclassicphase(TBC_PHASE_THREE, {
					["name"] = "Swiftsteel Shoulders",
					["recipeID"] = 41133,
				}),
			},
		},
		{
			["name"] = "Bracers",
			["categoryID"] = 222,
			["groups"] = {
				{
					["name"] = "Adamantite Plate Bracers",
					["recipeID"] = 29603,
				},
				{
					["name"] = "Black Felsteel Bracers",
					["recipeID"] = 29669,
				},
				{
					["name"] = "Blessed Bracers",
					["recipeID"] = 29672,
				},
				{
					["name"] = "Bracers of the Green Fortress",
					["recipeID"] = 29671,
				},
				applyclassicphase(TBC_PHASE_THREE, {
					["name"] = "Dawnsteel Bracers",
					["recipeID"] = 41134,
				}),
				{
					["name"] = "Fel Iron Chain Bracers",
					["recipeID"] = 29553,
				},
				{
					["name"] = "Flamebane Bracers",
					["minReputation"] = { FACTION_THE_ALDOR, NEUTRAL },	-- The Aldor, Neutral.
					["recipeID"] = 29614,
				},
				applyclassicphase(TBC_PHASE_THREE, {
					["name"] = "Shadesteel Bracers",
					["recipeID"] = 40034,
				}),
				applyclassicphase(TBC_PHASE_THREE, {
					["name"] = "Swiftsteel Bracers",
					["recipeID"] = 41132,
				}),
			},
		},
		{
			["name"] = "Gauntlets",
			["categoryID"] = 221,
			["groups"] = {
				{
					["name"] = "Adamantite Plate Gloves",
					["recipeID"] = 29605,
				},
				{
					["name"] = "Fel Iron Chain Gloves",
					["recipeID"] = 29552,
				},
				{
					["name"] = "Fel Iron Plate Gloves",
					["recipeID"] = 29545,
				},
				{
					["name"] = "Felfury Gauntlets",
					["recipeID"] = 29658,
				},
				{
					["name"] = "Felsteel Gloves",
					["recipeID"] = 29619,
				},
				{
					["name"] = "Flamebane Gloves",
					["minReputation"] = { FACTION_THE_ALDOR, NEUTRAL },	-- The Aldor, Neutral.
					["recipeID"] = 29616,
				},
				{
					["name"] = "Gauntlets of the Iron Tower",
					["recipeID"] = 29622,
				},
				applyclassicphase(TBC_PHASE_FIVE, {
					["name"] = "Hard Khorium Battlefists",
					["recipeID"] = 46141,
				}),
				{
					["name"] = "Ragesteel Gloves",
					["recipeID"] = 29642,
				},
				{
					["name"] = "Steelgrip Gauntlets",
					["recipeID"] = 29662,
				},
				applyclassicphase(TBC_PHASE_FIVE, {
					["name"] = "Sunblessed Gauntlets",
					["recipeID"] = 46140,
				}),
				{
					["name"] = "Swiftsteel Gloves",
					["recipeID"] = 29648,
				},
			},
		},
		{
			["name"] = "Chest",
			["categoryID"] = 220,
			["groups"] = {
				{
					["name"] = "Adamantite Breastplate",
					["recipeID"] = 29606,
				},
				{
					["name"] = "Earthpeace Breastplate",
					["recipeID"] = 29649,
				},
				{
					["name"] = "Enchanted Adamantite Breastplate",
					["minReputation"] = { FACTION_THE_SCRYERS, NEUTRAL },	-- The Scryers, Neutral.
					["recipeID"] = 29610,
				},
				{
					["name"] = "Fel Iron Breastplate",
					["recipeID"] = 29550,
				},
				{
					["name"] = "Fel Iron Chain Tunic",
					["recipeID"] = 29556,
				},
				{
					["name"] = "Flamebane Breastplate",
					["minReputation"] = { FACTION_THE_ALDOR, NEUTRAL },	-- The Aldor, Neutral.
					["recipeID"] = 29617,
				},
				applyclassicphase(TBC_PHASE_FIVE, {
					["name"] = "Hard Khorium Battleplate",
					["recipeID"] = 46144,
				}),
				{
					["name"] = "Iceguard Breastplate",
					["recipeID"] = 38477,
				},
				{
					["name"] = "Ragesteel Breastplate",
					["recipeID"] = 29645,
				},
				applyclassicphase(TBC_PHASE_FIVE, {
					["name"] = "Sunblessed Breastplate",
					["recipeID"] = 46142,
				}),
				{
					["name"] = "Wildguard Breastplate",
					["recipeID"] = 38473,
				},
			},
		},
		{
			["name"] = "Belts",
			["categoryID"] = 223,
			["groups"] = {
				applyclassicphase(TBC_PHASE_TWO, {
					["name"] = "Belt of the Guardian",
					["recipeID"] = 36389,
				}),
				{
					["name"] = "Enchanted Adamantite Belt",
					["minReputation"] = { FACTION_THE_SCRYERS, NEUTRAL },	-- The Scryers, Neutral.
					["recipeID"] = 29608,
				},
				{
					["name"] = "Fel Iron Plate Belt",
					["recipeID"] = 29547,
				},
				{
					["name"] = "Khorium Belt",
					["recipeID"] = 29628,
				},
				applyclassicphase(TBC_PHASE_TWO, {
					["name"] = "Red Belt of Battle",
					["recipeID"] = 36390,
				}),
				applyclassicphase(TBC_PHASE_THREE, {
					["name"] = "Shadesteel Girdle",
					["recipeID"] = 40036,
				}),
			},
		},
		{
			["name"] = "Legs",
			["categoryID"] = 224,
			["groups"] = {
				{
					["name"] = "Enchanted Adamantite Leggings",
					["minReputation"] = { FACTION_THE_SCRYERS, NEUTRAL },	-- The Scryers, Neutral.
					["recipeID"] = 29613,
				},
				{
					["name"] = "Fel Iron Plate Pants",
					["recipeID"] = 29549,
				},
				{
					["name"] = "Felsteel Leggings",
					["recipeID"] = 29620,
				},
				{
					["name"] = "Iceguard Leggings",
					["recipeID"] = 38478,
				},
				{
					["name"] = "Khorium Pants",
					["recipeID"] = 29629,
				},
				applyclassicphase(TBC_PHASE_THREE, {
					["name"] = "Shadesteel Greaves",
					["recipeID"] = 40035,
				}),
				{
					["name"] = "Wildguard Leggings",
					["recipeID"] = 38475,
				},
			},
		},
		{
			["name"] = "Boots",
			["categoryID"] = 225,
			["groups"] = {
				applyclassicphase(TBC_PHASE_TWO, {
					["name"] = "Boots of the Protector",
					["recipeID"] = 36391,
				}),
				{
					["name"] = "Enchanted Adamantite Boots",
					["minReputation"] = { FACTION_THE_SCRYERS, NEUTRAL },	-- The Scryers, Neutral.
					["recipeID"] = 29611,
				},
				{
					["name"] = "Fel Iron Plate Boots",
					["recipeID"] = 29548,
				},
				{
					["name"] = "Khorium Boots",
					["recipeID"] = 29630,
				},
				applyclassicphase(TBC_PHASE_TWO, {
					["name"] = "Red Havoc Boots",
					["recipeID"] = 36392,
				}),
				applyclassicphase(TBC_PHASE_THREE, {
					["name"] = "Shadesteel Sabots",
					["recipeID"] = 40033,
				}),
			},
		},
		{
			["name"] = "Weapons",
			["categoryID"] = 227,
			["groups"] = {
				{
					["name"] = "Adamantite Cleaver",
					["recipeID"] = 29568,
				},
				{
					["name"] = "Adamantite Dagger",
					["recipeID"] = 29569,
				},
				{
					["name"] = "Adamantite Maul",
					["recipeID"] = 29566,
				},
				{
					["name"] = "Adamantite Rapier",
					["recipeID"] = 29571,
				},
				{
					["name"] = "Dirge",
					["recipeID"] = 29699,
				},
				{
					["name"] = "Eternium Runed Blade",
					["recipeID"] = 29698,
				},
				{
					["name"] = "Fel Edged Battleaxe",
					["recipeID"] = 29694,
				},
				{
					["name"] = "Fel Hardened Maul",
					["recipeID"] = 29697,
				},
				{
					["name"] = "Fel Iron Greatsword",
					["recipeID"] = 29565,
				},
				{
					["name"] = "Fel Iron Hammer",
					["recipeID"] = 29558,
				},
				{
					["name"] = "Fel Iron Hatchet",
					["recipeID"] = 29557,
				},
				{
					["name"] = "Felsteel Longblade",
					["recipeID"] = 29692,
				},
				{
					["name"] = "Felsteel Reaper",
					["recipeID"] = 29695,
				},
				{
					["name"] = "Felsteel Whisper Knives",
					["timeline"] = { DELETED_5_0_4 },
					["recipeID"] = 34983,
				},
				-- #if AFTER 7.1.5.23360
				applyclassicphase(TBC_PHASE_ONE,{
					["name"] = "Great Earthforged Hammer",
					["recipeID"] = 36137,
					["timeline"] = {
						ADDED_2_0_1,
						REMOVED_4_0_1,
						ADDED_7_1_5,
					},
				}),
				-- #endif
				{
					["name"] = "Hammer of Righteous Might",
					["recipeID"] = 43846,
				},
				{
					["name"] = "Hand of Eternity",
					["recipeID"] = 29700,
				},
				{
					["name"] = "Khorium Champion",
					["recipeID"] = 29693,
				},
				-- #if AFTER 7.1.5.23360
				applyclassicphase(TBC_PHASE_ONE,{
					["name"] = "Lavaforged Warhammer",
					["recipeID"] = 36136,
					["timeline"] = {
						ADDED_2_0_1,
						REMOVED_4_0_1,
						ADDED_7_1_5,
					},
				}),
				-- #endif
				{
					["name"] = "Runic Hammer",
					["recipeID"] = 29696,
				},
				-- #if AFTER 7.1.5.23360
				applyclassicphase(TBC_PHASE_ONE,{
					["name"] = "Skyforged Great Axe",
					["recipeID"] = 36135,
					["timeline"] = {
						ADDED_2_0_1,
						REMOVED_4_0_1,
						ADDED_7_1_5,
					},
				}),
				applyclassicphase(TBC_PHASE_ONE,{
					["name"] = "Stoneforged Claymore",
					["recipeID"] = 36133,
					["timeline"] = {
						ADDED_2_1_0,
						REMOVED_4_0_1,
						ADDED_7_1_5,
					},
				}),
				applyclassicphase(TBC_PHASE_ONE,{
					["name"] = "Stormforged Axe",
					["recipeID"] = 36134,
					["timeline"] = {
						ADDED_2_0_1,
						REMOVED_4_0_1,
						ADDED_7_1_5,
					},
				}),
				applyclassicphase(TBC_PHASE_ONE,{
					["name"] = "Windforged Rapier",
					["recipeID"] = 36131,
					["timeline"] = {
						ADDED_2_0_1,
						REMOVED_4_0_1,
						ADDED_7_1_5,
					},
				}),
				-- #endif
			},
		},
	}))),
	applyclassicphase(WRATH_PHASE_ONE, expansion(EXPANSION.WRATH, bubbleDownSelf({ ["timeline"] = { ADDED_3_0_2 } }, {
		-- #if AFTER 9.0.1.36216
		{
			["name"] = "Optional Reagents",
			["categoryID"] = 1490,
			["groups"] = {
				{
					["name"] = "Relic of the Past I",
					["recipeID"] = 330149,
				},
				{
					["name"] = "Relic of the Past II",
					["recipeID"] = 330150,
				},
				{
					["name"] = "Relic of the Past III",
					["recipeID"] = 330151,
				},
				{
					["name"] = "Relic of the Past IV",
					["recipeID"] = 330152,
				},
				{
					["name"] = "Relic of the Past V",
					["recipeID"] = 330153,
				},
			},
		},
		-- #endif
		{
			["name"] = "Materials",
			["categoryID"] = 215,
			["groups"] = {
				{
					["name"] = "Titanium Rod",
					["timeline"] = { REMOVED_5_0_4 },
					["recipeID"] = 55732,
				},
			},
		},
		{
			["name"] = "Equipment Mods",
			["categoryID"] = 578,
			["groups"] = {
				{
					["name"] = "Eternal Belt Buckle",
					["recipeID"] = 55656,
				},
				{
					["name"] = "Socket Bracer",
					["timeline"] = { DELETED_5_0_4 },
					["recipeID"] = 55628,
				},
				{
					["name"] = "Socket Gloves",
					["timeline"] = { DELETED_5_0_4 },
					["recipeID"] = 55641,
				},
				{
					["name"] = "Titanium Plating",
					["recipeID"] = 62202,
				},
				{
					["name"] = "Titanium Shield Spike",
					["recipeID"] = 56357,
				},
				{
					["name"] = "Titanium Weapon Chain",
					["recipeID"] = 55839,
				},
			},
		},
		{
			["name"] = "Armor",
			["categoryID"] = 579,
			["groups"] = {
				applyclassicphase(WRATH_PHASE_TWO, {
					["name"] = "Battlelord's Plate Boots",
					["recipeID"] = 63188,
				}),
				applyclassicphase(WRATH_PHASE_TWO, {
					["name"] = "Belt of the Titans",
					["recipeID"] = 63187,
				}),
				applyclassicphase(WRATH_PHASE_FOUR, {
					["name"] = "Boots of Kingly Upheaval",
					["recipeID"] = 70568,
				}),
				applyclassicphase(WRATH_PHASE_THREE, {	-- Breastplate of the White Knight [Alliance],
					["recipeID"] = 67091--[[Breastplate of the White Knight]],
					["races"] = ALLIANCE_ONLY,
				}),
				applyclassicphase(WRATH_PHASE_THREE, {	-- Breastplate of the White Knight [Horde],
					["recipeID"] = 67130--[[Breastplate of the White Knight]],
					["races"] = HORDE_ONLY,
				}),
				{
					["name"] = "Brilliant Saronite Belt",
					["recipeID"] = 59436,
				},
				{
					["name"] = "Brilliant Saronite Boots",
					["recipeID"] = 55057,
				},
				{
					["name"] = "Brilliant Saronite Bracers",
					["recipeID"] = 59438,
				},
				{
					["name"] = "Brilliant Saronite Breastplate",
					["recipeID"] = 55058,
				},
				{
					["name"] = "Brilliant Saronite Gauntlets",
					["recipeID"] = 55056,
				},
				{
					["name"] = "Brilliant Saronite Helm",
					["recipeID"] = 59441,
				},
				{
					["name"] = "Brilliant Saronite Legplates",
					["recipeID"] = 55055,
				},
				{
					["name"] = "Brilliant Saronite Pauldrons",
					["recipeID"] = 59440,
				},
				{
					["name"] = "Brilliant Titansteel Helm",
					["recipeID"] = 55374,
				},
				{
					["name"] = "Brilliant Titansteel Treads",
					["recipeID"] = 55377,
				},
				{
					["name"] = "Cobalt Belt",
					["recipeID"] = 52568,
				},
				{
					["name"] = "Cobalt Boots",
					["recipeID"] = 52569,
				},
				{
					["name"] = "Cobalt Bracers",
					["recipeID"] = 55834,
				},
				{
					["name"] = "Cobalt Chestpiece",
					["recipeID"] = 52570,
				},
				{
					["name"] = "Cobalt Gauntlets",
					["recipeID"] = 55835,
				},
				{
					["name"] = "Cobalt Helm",
					["recipeID"] = 52571,
				},
				{
					["name"] = "Cobalt Legplates",
					["recipeID"] = 52567,
				},
				{
					["name"] = "Cobalt Shoulders",
					["recipeID"] = 52572,
				},
				{
					["name"] = "Daunting Handguards",
					["recipeID"] = 55301,
				},
				{
					["name"] = "Daunting Legplates",
					["recipeID"] = 55303,
				},
				applyclassicphase(WRATH_PHASE_FOUR, {
					["name"] = "Hellfrozen Bonegrinders",
					["recipeID"] = 70566,
				}),
				{
					["name"] = "Helm of Command",
					["recipeID"] = 55302,
				},
				{
					["name"] = "Horned Cobalt Helm",
					["recipeID"] = 54949,
				},
				{
					["name"] = "Icebane Chestguard",
					["recipeID"] = 61008,
				},
				{
					["name"] = "Icebane Girdle",
					["recipeID"] = 61009,
				},
				{
					["name"] = "Icebane Treads",
					["recipeID"] = 61010,
				},
				applyclassicphase(WRATH_PHASE_TWO, {
					["name"] = "Indestructible Plate Girdle",
					["recipeID"] = 63191,
				}),
				applyclassicphase(WRATH_PHASE_FOUR, {
					["name"] = "Legplates of Painful Death",
					["recipeID"] = 70565,
				}),
				{
					["name"] = "Ornate Saronite Bracers",
					["recipeID"] = 56549,
				},
				{
					["name"] = "Ornate Saronite Gauntlets",
					["recipeID"] = 56553,
				},
				{
					["name"] = "Ornate Saronite Hauberk",
					["recipeID"] = 56555,
				},
				{
					["name"] = "Ornate Saronite Legplates",
					["recipeID"] = 56554,
				},
				{
					["name"] = "Ornate Saronite Pauldrons",
					["recipeID"] = 56550,
				},
				{
					["name"] = "Ornate Saronite Skullshield",
					["recipeID"] = 56556,
				},
				{
					["name"] = "Ornate Saronite Waistguard",
					["recipeID"] = 56551,
				},
				{
					["name"] = "Ornate Saronite Walkers",
					["recipeID"] = 56552,
				},
				applyclassicphase(WRATH_PHASE_FOUR, {
					["name"] = "Pillars of Might",
					["recipeID"] = 70567,
				}),
				applyclassicphase(WRATH_PHASE_TWO, {
					["name"] = "Plate Girdle of Righteousness",
					["recipeID"] = 63189,
				}),
				applyclassicphase(WRATH_PHASE_FOUR, {
					["name"] = "Protectors of Life",
					["recipeID"] = 70563,
				}),
				applyclassicphase(WRATH_PHASE_FOUR, {
					["name"] = "Puresteel Legplates",
					["recipeID"] = 70562,
				}),
				{
					["name"] = "Reinforced Cobalt Chestpiece",
					["recipeID"] = 54981,
				},
				{
					["name"] = "Reinforced Cobalt Helm",
					["recipeID"] = 54979,
				},
				{
					["name"] = "Reinforced Cobalt Legplates",
					["recipeID"] = 54980,
				},
				{
					["name"] = "Reinforced Cobalt Shoulders",
					["recipeID"] = 54978,
				},
				{
					["name"] = "Righteous Gauntlets",
					["recipeID"] = 55300,
				},
				{
					["name"] = "Righteous Greaves",
					["recipeID"] = 55304,
				},
				applyclassicphase(WRATH_PHASE_THREE, {	-- Saronite Swordbreakers [Alliance],
					["recipeID"] = 67092--[[Saronite Swordbreakers]],
					["races"] = ALLIANCE_ONLY,
				}),
				applyclassicphase(WRATH_PHASE_THREE, {	-- Saronite Swordbreakers [Horde],
					["recipeID"] = 67131--[[Saronite Swordbreakers]],
					["races"] = HORDE_ONLY,
				}),
				{
					["name"] = "Savage Saronite Bracers",
					["recipeID"] = 55305,
				},
				{
					["name"] = "Savage Saronite Gauntlets",
					["recipeID"] = 55309,
				},
				{
					["name"] = "Savage Saronite Hauberk",
					["recipeID"] = 55311,
				},
				{
					["name"] = "Savage Saronite Legplates",
					["recipeID"] = 55310,
				},
				{
					["name"] = "Savage Saronite Pauldrons",
					["recipeID"] = 55306,
				},
				{
					["name"] = "Savage Saronite Skullshield",
					["recipeID"] = 55312,
				},
				{
					["name"] = "Savage Saronite Waistguard",
					["recipeID"] = 55307,
				},
				{
					["name"] = "Savage Saronite Walkers",
					["recipeID"] = 55308,
				},
				{
					["name"] = "Spiked Cobalt Belt",
					["recipeID"] = 54946,
				},
				{
					["name"] = "Spiked Cobalt Boots",
					["recipeID"] = 54918,
				},
				{
					["name"] = "Spiked Cobalt Bracers",
					["recipeID"] = 54948,
				},
				{
					["name"] = "Spiked Cobalt Chestpiece",
					["recipeID"] = 54944,
				},
				{
					["name"] = "Spiked Cobalt Gauntlets",
					["recipeID"] = 54945,
				},
				{
					["name"] = "Spiked Cobalt Helm",
					["recipeID"] = 54917,
				},
				{
					["name"] = "Spiked Cobalt Legplates",
					["recipeID"] = 54947,
				},
				{
					["name"] = "Spiked Cobalt Shoulders",
					["recipeID"] = 54941,
				},
				applyclassicphase(WRATH_PHASE_TWO, {
					["name"] = "Spiked Deathdealers",
					["recipeID"] = 63192,
				}),
				{
					["name"] = "Spiked Titansteel Helm",
					["recipeID"] = 55372,
				},
				{
					["name"] = "Spiked Titansteel Treads",
					["recipeID"] = 55375,
				},
				applyclassicphase(WRATH_PHASE_THREE, {	-- Sunforged Bracers [Alliance],
					["recipeID"] = 67096--[[Sunforged Bracers]],
					["races"] = ALLIANCE_ONLY,
				}),
				applyclassicphase(WRATH_PHASE_THREE, {	-- Sunforged Bracers [Horde],
					["recipeID"] = 67135--[[Sunforged Bracers]],
					["races"] = HORDE_ONLY,
				}),
				applyclassicphase(WRATH_PHASE_THREE, {	-- Sunforged Breastplate [Alliance],
					["recipeID"] = 67095--[[Sunforged Breastplate]],
					["races"] = ALLIANCE_ONLY,
				}),
				applyclassicphase(WRATH_PHASE_THREE, {	-- Sunforged Breastplate [Horde],
					["recipeID"] = 67134--[[Sunforged Breastplate]],
					["races"] = HORDE_ONLY,
				}),
				{
					["name"] = "Tempered Saronite Belt",
					["recipeID"] = 54551,
				},
				{
					["name"] = "Tempered Saronite Boots",
					["recipeID"] = 54552,
				},
				{
					["name"] = "Tempered Saronite Bracers",
					["recipeID"] = 55017,
				},
				{
					["name"] = "Tempered Saronite Breastplate",
					["recipeID"] = 54553,
				},
				{
					["name"] = "Tempered Saronite Gauntlets",
					["recipeID"] = 55015,
				},
				{
					["name"] = "Tempered Saronite Helm",
					["recipeID"] = 54555,
				},
				{
					["name"] = "Tempered Saronite Legplates",
					["recipeID"] = 54554,
				},
				{
					["name"] = "Tempered Saronite Shoulders",
					["recipeID"] = 54556,
				},
				{
					["name"] = "Tempered Titansteel Helm",
					["recipeID"] = 55373,
				},
				{
					["name"] = "Tempered Titansteel Treads",
					["recipeID"] = 55376,
				},
				applyclassicphase(WRATH_PHASE_THREE, {	-- Titanium Razorplate [Alliance],
					["recipeID"] = 67093--[[Titanium Razorplate]],
					["races"] = ALLIANCE_ONLY,
				}),
				applyclassicphase(WRATH_PHASE_THREE, {	-- Titanium Razorplate [Horde],
					["recipeID"] = 67132--[[Titanium Razorplate]],
					["races"] = HORDE_ONLY,
				}),
				applyclassicphase(WRATH_PHASE_THREE, {	-- Titanium Spikeguards [Alliance],
					["recipeID"] = 67094--[[Titanium Spikeguards]],
					["races"] = ALLIANCE_ONLY,
				}),
				applyclassicphase(WRATH_PHASE_THREE, {	-- Titanium Spikeguards [Horde],
					["recipeID"] = 67133--[[Titanium Spikeguards]],
					["races"] = HORDE_ONLY,
				}),
				applyclassicphase(WRATH_PHASE_TWO, {
					["name"] = "Treads of Destiny",
					["recipeID"] = 63190,
				}),
				{
					["name"] = "Vengeance Bindings",
					["recipeID"] = 55298,
				},
			},
		},
		{
			["name"] = "Shields",
			["categoryID"] = 580,
			["groups"] = {
				{
					["name"] = "Cobalt Triangle Shield",
					["recipeID"] = 54550,
				},
				{
					["name"] = "Saronite Bulwark",
					["recipeID"] = 55014,
				},
				{
					["name"] = "Saronite Defender",
					["recipeID"] = 54557,
				},
				{
					["name"] = "Saronite Protector",
					["recipeID"] = 55013,
				},
				{
					["name"] = "Titansteel Shield Wall",
					["recipeID"] = 56400,
				},
			},
		},
		{
			["name"] = "Weapons",
			["categoryID"] = 581,
			["groups"] = {
				{
					["name"] = "Cobalt Tenderizer",
					["recipeID"] = 55201,
				},
				{
					["name"] = "Cudgel of Saronite Justice",
					["recipeID"] = 56280,
				},
				{
					["name"] = "Deadly Saronite Dirk",
					["recipeID"] = 55206,
				},
				{
					["name"] = "Forged Cobalt Claymore",
					["recipeID"] = 55203,
				},
				{
					["name"] = "Furious Saronite Beatstick",
					["recipeID"] = 55182,
				},
				{
					["name"] = "Honed Cobalt Cleaver",
					["recipeID"] = 55174,
				},
				{
					["name"] = "Notched Cobalt War Axe",
					["recipeID"] = 55204,
				},
				{
					["name"] = "Saronite Ambusher",
					["recipeID"] = 55179,
				},
				-- #if AFTER CATA
				{
					["name"] = "Saronite Mindcrusher",
					["recipeID"] = 55185,
				},
				-- #endif
				{
					["name"] = "Saronite Shiv",
					["recipeID"] = 55181,
				},
				{
					["name"] = "Saronite Spellblade",
					["recipeID"] = 59442,
				},
				{
					["name"] = "Savage Cobalt Slicer",
					["recipeID"] = 55177,
				},
				{
					["name"] = "Sturdy Cobalt Quickblade",
					["recipeID"] = 55200,
				},
				{
					["name"] = "Sure-Fire Shuriken",
					["timeline"] = { REMOVED_5_0_4 },
					["recipeID"] = 55202,
				},
				{
					["name"] = "Titansteel Bonecrusher",
					["recipeID"] = 55370,
				},
				{
					["name"] = "Titansteel Destroyer",
					["recipeID"] = 55369,
				},
				{
					["name"] = "Titansteel Guardian",
					["recipeID"] = 55371,
				},
				{
					["name"] = "Titansteel Shanker",
					["recipeID"] = 56234,
				},
				{
					["name"] = "Titansteel Spellblade",
					["recipeID"] = 63182,
				},
			},
		},
		{
			["name"] = "Skeleton Keys",
			["categoryID"] = 582,
			["groups"] = {
				{
					["name"] = "Cobalt Skeleton Key",
					["recipeID"] = 59405,
				},
				{
					["name"] = "Titanium Skeleton Key",
					["recipeID"] = 59406,
				},
			},
		},
	}))),
	applyclassicphase(CATA_PHASE_ONE, expansion(EXPANSION.CATA, bubbleDownSelf({ ["timeline"] = { ADDED_4_0_3 } }, {
		-- #if AFTER 9.0.1.36216
		{
			["name"] = "Optional Reagents",
			["categoryID"] = 1491,
			["groups"] = {
				{
					["name"] = "Relic of the Past I",
					["recipeID"] = 330154,
				},
				{
					["name"] = "Relic of the Past II",
					["recipeID"] = 330155,
				},
				{
					["name"] = "Relic of the Past III",
					["recipeID"] = 330156,
				},
				{
					["name"] = "Relic of the Past IV",
					["recipeID"] = 330157,
				},
				{
					["name"] = "Relic of the Past V",
					["recipeID"] = 330158,
				},
			},
		},
		-- #endif
		{
			["name"] = "Materials",
			["categoryID"] = 572,
			["groups"] = {
				{
					["name"] = "Folded Obsidium",
					["recipeID"] = 76178,
				},
			},
		},
		{
			["name"] = "Equipment Mods",
			["categoryID"] = 574,
			["groups"] = {
				{
					["name"] = "Ebonsteel Belt Buckle",
					["recipeID"] = 76439,
				},
				{
					["name"] = "Elementium Shield Spike",
					["recipeID"] = 76441,
				},
				{
					["name"] = "Pyrium Shield Spike",
					["recipeID"] = 76440,
				},
				{
					["name"] = "Pyrium Weapon Chain",
					["recipeID"] = 76442,
				},
			},
		},
		{
			["name"] = "Armor",
			["categoryID"] = 570,
			["groups"] = {
				-- #if ANYCLASSIC
				applyclassicphase(CATA_PHASE_HOUR_OF_TWILIGHT, {
					["name"] = "Bloodied Pyrium Belt",
					["recipeID"] = 1224226,
					["timeline"] = { ADDED_4_4_2 },
				}),
				applyclassicphase(CATA_PHASE_HOUR_OF_TWILIGHT, {
					["name"] = "Bloodied Pyrium Boots",
					["recipeID"] = 1224227,
					["timeline"] = { ADDED_4_4_2 },
				}),
				applyclassicphase(CATA_PHASE_HOUR_OF_TWILIGHT, {
					["name"] = "Bloodied Pyrium Bracers",
					["recipeID"] = 1224224,
					["timeline"] = { ADDED_4_4_2 },
				}),
				applyclassicphase(CATA_PHASE_HOUR_OF_TWILIGHT, {
					["name"] = "Bloodied Pyrium Breastplate",
					["recipeID"] = 1224231,
					["timeline"] = { ADDED_4_4_2 },
				}),
				applyclassicphase(CATA_PHASE_HOUR_OF_TWILIGHT, {
					["name"] = "Bloodied Pyrium Gauntlets",
					["recipeID"] = 1224225,
					["timeline"] = { ADDED_4_4_2 },
				}),
				applyclassicphase(CATA_PHASE_HOUR_OF_TWILIGHT, {
					["name"] = "Bloodied Pyrium Helm",
					["recipeID"] = 1224230,
					["timeline"] = { ADDED_4_4_2 },
				}),
				applyclassicphase(CATA_PHASE_HOUR_OF_TWILIGHT, {
					["name"] = "Bloodied Pyrium Legguards",
					["recipeID"] = 1224229,
					["timeline"] = { ADDED_4_4_2 },
				}),
				applyclassicphase(CATA_PHASE_HOUR_OF_TWILIGHT, {
					["name"] = "Bloodied Pyrium Shoulders",
					["recipeID"] = 1224228,
					["timeline"] = { ADDED_4_4_2 },
				}),
				{
					["name"] = "Bloodthirsty Ornate Pyrium Belt",
					["recipeID"] = 76467,
				},
				{
					["name"] = "Bloodthirsty Ornate Pyrium Boots",
					["recipeID"] = 76468,
				},
				{
					["name"] = "Bloodthirsty Ornate Pyrium Bracers",
					["recipeID"] = 76465,
				},
				{
					["name"] = "Bloodthirsty Ornate Pyrium Breastplate",
					["recipeID"] = 76472,
				},
				{
					["name"] = "Bloodthirsty Ornate Pyrium Gauntlets",
					["recipeID"] = 76466,
				},
				{
					["name"] = "Bloodthirsty Ornate Pyrium Helm",
					["recipeID"] = 76471,
				},
				{
					["name"] = "Bloodthirsty Ornate Pyrium Legguards",
					["recipeID"] = 76470,
				},
				{
					["name"] = "Bloodthirsty Ornate Pyrium Shoulders",
					["recipeID"] = 76469,
				},
				{
					["name"] = "Bloodthirsty Pyrium Belt",
					["recipeID"] = 76458,
				},
				{
					["name"] = "Bloodthirsty Pyrium Boots",
					["recipeID"] = 76459,
				},
				{
					["name"] = "Bloodthirsty Pyrium Bracers",
					["recipeID"] = 76456,
				},
				{
					["name"] = "Bloodthirsty Pyrium Breastplate",
					["recipeID"] = 76464,
				},
				{
					["name"] = "Bloodthirsty Pyrium Gauntlets",
					["recipeID"] = 76457,
				},
				{
					["name"] = "Bloodthirsty Pyrium Helm",
					["recipeID"] = 76463,
				},
				{
					["name"] = "Bloodthirsty Pyrium Legguards",
					["recipeID"] = 76462,
				},
				{
					["name"] = "Bloodthirsty Pyrium Shoulders",
					["recipeID"] = 76461,
				},
				-- #endif
				applyclassicphase(CATA_PHASE_HOUR_OF_TWILIGHT, {
					["name"] = "Bracers of Destructive Strength",
					["timeline"] = { ADDED_4_3_0 },
					["recipeID"] = 101931,
				}),
				{
					["name"] = "Elementium Deathplate",
					["recipeID"] = 76445,
				},
				{
					["name"] = "Elementium Girdle of Pain",
					["recipeID"] = 76446,
				},
				applyclassicphase(CATA_PHASE_RAGE_OF_THE_FIRELANDS, {
					["name"] = "Emberforged Elementium Boots",
					["timeline"] = { ADDED_4_2_0 },
					["recipeID"] = 99454,
				}),
				applyclassicphase(CATA_PHASE_RAGE_OF_THE_FIRELANDS, {
					["name"] = "Eternal Elementium Handguards",
					["timeline"] = { ADDED_4_2_0 },
					["recipeID"] = 99440,
				}),
				applyclassicphase(CATA_PHASE_RAGE_OF_THE_FIRELANDS, {
					["name"] = "Fists of Fury",
					["timeline"] = { ADDED_4_2_0 },
					["recipeID"] = 99439,
				}),
				applyclassicphase(CATA_PHASE_HOUR_OF_TWILIGHT, {
					["name"] = "Foundations of Courage",
					["timeline"] = { ADDED_4_3_0 },
					["recipeID"] = 101928,
				}),
				{
					["name"] = "Hardened Elementium Girdle",
					["recipeID"] = 76444,
				},
				{
					["name"] = "Hardened Elementium Hauberk",
					["recipeID"] = 76443,
				},
				{
					["name"] = "Hardened Obsidium Belt",
					["recipeID"] = 76181,
				},
				{
					["name"] = "Hardened Obsidium Boots",
					["recipeID"] = 76182,
				},
				{
					["name"] = "Hardened Obsidium Bracers",
					["recipeID"] = 76179,
				},
				{
					["name"] = "Hardened Obsidium Breastplate",
					["recipeID"] = 76261,
				},
				{
					["name"] = "Hardened Obsidium Gauntlets",
					["recipeID"] = 76180,
				},
				{
					["name"] = "Hardened Obsidium Helm",
					["recipeID"] = 76260,
				},
				{
					["name"] = "Hardened Obsidium Legguards",
					["recipeID"] = 76259,
				},
				{
					["name"] = "Hardened Obsidium Shoulders",
					["recipeID"] = 76258,
				},
				applyclassicphase(CATA_PHASE_RAGE_OF_THE_FIRELANDS, {
					["name"] = "Holy Flame Gauntlets",
					["timeline"] = { ADDED_4_2_0 },
					["recipeID"] = 99441,
				}),
				{
					["name"] = "Light Elementium Belt",
					["recipeID"] = 76448,
				},
				{
					["name"] = "Light Elementium Chestguard",
					["recipeID"] = 76447,
				},
				applyclassicphase(CATA_PHASE_RAGE_OF_THE_FIRELANDS, {
					["name"] = "Mirrored Boots",
					["timeline"] = { ADDED_4_2_0 },
					["recipeID"] = 99453,
				}),
				-- #if ANYCLASSIC
				applyclassicphase(CATA_PHASE_HOUR_OF_TWILIGHT, {
					["name"] = "Ornate Pyrium Belt",
					["recipeID"] = 1224234,
					["timeline"] = { ADDED_4_4_2 },
				}),
				applyclassicphase(CATA_PHASE_HOUR_OF_TWILIGHT, {
					["name"] = "Ornate Pyrium Boots",
					["recipeID"] = 1224235,
					["timeline"] = { ADDED_4_4_2 },
				}),
				applyclassicphase(CATA_PHASE_HOUR_OF_TWILIGHT, {
					["name"] = "Ornate Pyrium Bracers",
					["recipeID"] = 1224232,
					["timeline"] = { ADDED_4_4_2 },
				}),
				applyclassicphase(CATA_PHASE_HOUR_OF_TWILIGHT, {
					["name"] = "Ornate Pyrium Breastplate",
					["recipeID"] = 1224239,
					["timeline"] = { ADDED_4_4_2 },
				}),
				applyclassicphase(CATA_PHASE_HOUR_OF_TWILIGHT, {
					["name"] = "Ornate Pyrium Gauntlets",
					["recipeID"] = 1224233,
					["timeline"] = { ADDED_4_4_2 },
				}),
				applyclassicphase(CATA_PHASE_HOUR_OF_TWILIGHT, {
					["name"] = "Ornate Pyrium Helm",
					["recipeID"] = 1224238,
					["timeline"] = { ADDED_4_4_2 },
				}),
				applyclassicphase(CATA_PHASE_HOUR_OF_TWILIGHT, {
					["name"] = "Ornate Pyrium Legguards",
					["recipeID"] = 1224237,
					["timeline"] = { ADDED_4_4_2 },
				}),
				applyclassicphase(CATA_PHASE_HOUR_OF_TWILIGHT, {
					["name"] = "Ornate Pyrium Shoulders",
					["recipeID"] = 1224236,
					["timeline"] = { ADDED_4_4_2 },
				}),
				-- #endif
				applyclassicphase(CATA_PHASE_HOUR_OF_TWILIGHT, {
					["name"] = "Pyrium Legplates of Purified Evil",
					["timeline"] = { ADDED_4_3_0 },
					["recipeID"] = 101924,
				}),
				{
					["name"] = "Redsteel Belt",
					["recipeID"] = 76264,
				},
				{
					["name"] = "Redsteel Boots",
					["recipeID"] = 76265,
				},
				{
					["name"] = "Redsteel Bracers",
					["recipeID"] = 76262,
				},
				{
					["name"] = "Redsteel Breastplate",
					["recipeID"] = 76270,
				},
				{
					["name"] = "Redsteel Gauntlets",
					["recipeID"] = 76263,
				},
				{
					["name"] = "Redsteel Helm",
					["recipeID"] = 76269,
				},
				{
					["name"] = "Redsteel Legguards",
					["recipeID"] = 76267,
				},
				{
					["name"] = "Redsteel Shoulders",
					["recipeID"] = 76266,
				},
				applyclassicphase(CATA_PHASE_HOUR_OF_TWILIGHT, {
					["name"] = "Soul Redeemer Bracers",
					["timeline"] = { ADDED_4_3_0 },
					["recipeID"] = 101929,
				}),
				{
					["name"] = "Stormforged Belt",
					["recipeID"] = 76283,
				},
				{
					["name"] = "Stormforged Boots",
					["recipeID"] = 76285,
				},
				{
					["name"] = "Stormforged Bracers",
					["recipeID"] = 76280,
				},
				{
					["name"] = "Stormforged Breastplate",
					["recipeID"] = 76289,
				},
				{
					["name"] = "Stormforged Gauntlets",
					["recipeID"] = 76281,
				},
				{
					["name"] = "Stormforged Helm",
					["recipeID"] = 76288,
				},
				{
					["name"] = "Stormforged Legguards",
					["recipeID"] = 76287,
				},
				{
					["name"] = "Stormforged Shoulders",
					["recipeID"] = 76286,
				},
				applyclassicphase(CATA_PHASE_HOUR_OF_TWILIGHT, {
					["name"] = "Titanguard Wristplates",
					["timeline"] = { ADDED_4_3_0 },
					["recipeID"] = 101932,
				}),
				applyclassicphase(CATA_PHASE_HOUR_OF_TWILIGHT, {
					["name"] = "Unstoppable Destroyer's Legplates",
					["timeline"] = { ADDED_4_3_0 },
					["recipeID"] = 101925,
				}),
				-- #if ANYCLASSIC
				applyclassicphase(CATA_PHASE_HOUR_OF_TWILIGHT, {
					["name"] = "Vicious Ornate Pyrium Belt",
					["recipeID"] = 1224178,
					["timeline"] = { ADDED_4_4_2 },
				}),
				applyclassicphase(CATA_PHASE_HOUR_OF_TWILIGHT, {
					["name"] = "Vicious Ornate Pyrium Boots",
					["recipeID"] = 1224179,
					["timeline"] = { ADDED_4_4_2 },
				}),
				applyclassicphase(CATA_PHASE_HOUR_OF_TWILIGHT, {
					["name"] = "Vicious Ornate Pyrium Bracers",
					["recipeID"] = 1224180,
					["timeline"] = { ADDED_4_4_2 },
				}),
				applyclassicphase(CATA_PHASE_HOUR_OF_TWILIGHT, {
					["name"] = "Vicious Ornate Pyrium Breastplate",
					["recipeID"] = 1224181,
					["timeline"] = { ADDED_4_4_2 },
				}),
				applyclassicphase(CATA_PHASE_HOUR_OF_TWILIGHT, {
					["name"] = "Vicious Ornate Pyrium Gauntlets",
					["recipeID"] = 1224182,
					["timeline"] = { ADDED_4_4_2 },
				}),
				applyclassicphase(CATA_PHASE_HOUR_OF_TWILIGHT, {
					["name"] = "Vicious Ornate Pyrium Helm",
					["recipeID"] = 1224183,
					["timeline"] = { ADDED_4_4_2 },
				}),
				applyclassicphase(CATA_PHASE_HOUR_OF_TWILIGHT, {
					["name"] = "Vicious Ornate Pyrium Legguards",
					["recipeID"] = 1224184,
					["timeline"] = { ADDED_4_4_2 },
				}),
				applyclassicphase(CATA_PHASE_HOUR_OF_TWILIGHT, {
					["name"] = "Vicious Ornate Pyrium Shoulders",
					["recipeID"] = 1224185,
					["timeline"] = { ADDED_4_4_2 },
				}),
				applyclassicphase(CATA_PHASE_HOUR_OF_TWILIGHT, {
					["name"] = "Vicious Pyrium Belt",
					["recipeID"] = 1224186,
					["timeline"] = { ADDED_4_4_2 },
				}),
				applyclassicphase(CATA_PHASE_HOUR_OF_TWILIGHT, {
					["name"] = "Vicious Pyrium Boots",
					["recipeID"] = 1224187,
					["timeline"] = { ADDED_4_4_2 },
				}),
				applyclassicphase(CATA_PHASE_HOUR_OF_TWILIGHT, {
					["name"] = "Vicious Pyrium Bracers",
					["recipeID"] = 1224188,
					["timeline"] = { ADDED_4_4_2 },
				}),
				applyclassicphase(CATA_PHASE_HOUR_OF_TWILIGHT, {
					["name"] = "Vicious Pyrium Breastplate",
					["recipeID"] = 1224189,
					["timeline"] = { ADDED_4_4_2 },
				}),
				applyclassicphase(CATA_PHASE_HOUR_OF_TWILIGHT, {
					["name"] = "Vicious Pyrium Gauntlets",
					["recipeID"] = 1224190,
					["timeline"] = { ADDED_4_4_2 },
				}),
				applyclassicphase(CATA_PHASE_HOUR_OF_TWILIGHT, {
					["name"] = "Vicious Pyrium Helm",
					["recipeID"] = 1224191,
					["timeline"] = { ADDED_4_4_2 },
				}),
				applyclassicphase(CATA_PHASE_HOUR_OF_TWILIGHT, {
					["name"] = "Vicious Pyrium Legguards",
					["recipeID"] = 1224192,
					["timeline"] = { ADDED_4_4_2 },
				}),
				applyclassicphase(CATA_PHASE_HOUR_OF_TWILIGHT, {
					["name"] = "Vicious Pyrium Shoulders",
					["recipeID"] = 1224193,
					["timeline"] = { ADDED_4_4_2 },
				}),
				-- #else
				{
					["name"] = "Vicious Ornate Pyrium Belt",
					["recipeID"] = 76467,
				},
				{
					["name"] = "Vicious Ornate Pyrium Boots",
					["recipeID"] = 76468,
				},
				{
					["name"] = "Vicious Ornate Pyrium Bracers",
					["recipeID"] = 76465,
				},
				{
					["name"] = "Vicious Ornate Pyrium Breastplate",
					["recipeID"] = 76472,
				},
				{
					["name"] = "Vicious Ornate Pyrium Gauntlets",
					["recipeID"] = 76466,
				},
				{
					["name"] = "Vicious Ornate Pyrium Helm",
					["recipeID"] = 76471,
				},
				{
					["name"] = "Vicious Ornate Pyrium Legguards",
					["recipeID"] = 76470,
				},
				{
					["name"] = "Vicious Ornate Pyrium Shoulders",
					["recipeID"] = 76469,
				},
				{
					["name"] = "Vicious Pyrium Belt",
					["recipeID"] = 76458,
				},
				{
					["name"] = "Vicious Pyrium Boots",
					["recipeID"] = 76459,
				},
				{
					["name"] = "Vicious Pyrium Bracers",
					["recipeID"] = 76456,
				},
				{
					["name"] = "Vicious Pyrium Breastplate",
					["recipeID"] = 76464,
				},
				{
					["name"] = "Vicious Pyrium Gauntlets",
					["recipeID"] = 76457,
				},
				{
					["name"] = "Vicious Pyrium Helm",
					["recipeID"] = 76463,
				},
				{
					["name"] = "Vicious Pyrium Legguards",
					["recipeID"] = 76462,
				},
				{
					["name"] = "Vicious Pyrium Shoulders",
					["recipeID"] = 76461,
				},
				-- #endif
				applyclassicphase(CATA_PHASE_RAGE_OF_THE_FIRELANDS, {
					["name"] = "Warboots of Mighty Lords",
					["timeline"] = { ADDED_4_2_0 },
					["recipeID"] = 99452,
				}),
			},
		},
		{
			["name"] = "Shields",
			["categoryID"] = 573,
			["groups"] = {
				{
					["name"] = "Elementium Earthguard",
					["recipeID"] = 76454,
				},
				{
					["name"] = "Elementium Stormshield",
					["recipeID"] = 76455,
				},
				{
					["name"] = "Hardened Obsidium Shield",
					["recipeID"] = 76291,
				},
				{
					["name"] = "Stormforged Shield",
					["recipeID"] = 76293,
				},
			},
		},
		{
			["name"] = "Weapons",
			["categoryID"] = 571,
			["groups"] = {
				applyclassicphase(CATA_PHASE_MOLTEN_FRONT, {
					["name"] = "Brainsplinter",
					["timeline"] = { ADDED_4_2_0 },
					["recipeID"] = 99652,
				}),
				{
					["name"] = "Cold-Forged Shank",
					["recipeID"] = 76434,
				},
				{
					["name"] = "Decapitator's Razor",
					["recipeID"] = 76433,
				},
				{
					["name"] = "Elementium Bonesplitter",
					["recipeID"] = 76452,
				},
				{
					["name"] = "Elementium Gutslicer",
					["recipeID"] = 94718,
				},
				{
					["name"] = "Elementium Hammer",
					["recipeID"] = 76450,
				},
				{
					["name"] = "Elementium Poleaxe",
					["recipeID"] = 76451,
				},
				{
					["name"] = "Elementium Shank",
					["recipeID"] = 76453,
				},
				{
					["name"] = "Elementium Spellblade",
					["recipeID"] = 76449,
				},
				applyclassicphase(CATA_PHASE_MOLTEN_FRONT, {
					["name"] = "Elementium-Edged Scalper",
					["timeline"] = { ADDED_4_2_0 },
					["recipeID"] = 99655,
				}),
				{
					["name"] = "Fire-Etched Dagger",
					["recipeID"] = 76435,
				},
				{
					["name"] = "Forged Elementium Mindcrusher",
					["recipeID"] = 94732,
				},
				{
					["name"] = "Lifeforce Hammer",
					["recipeID"] = 76436,
				},
				applyclassicphase(CATA_PHASE_MOLTEN_FRONT, {
					["name"] = "Lightforged Elementium Hammer",
					["timeline"] = { ADDED_4_2_0 },
					["recipeID"] = 99654,
				}),
				applyclassicphase(CATA_PHASE_MOLTEN_FRONT, {
					["name"] = "Masterwork Elementium Deathblade",
					["timeline"] = { ADDED_4_2_0 },
					["recipeID"] = 99658,
				}),
				applyclassicphase(CATA_PHASE_MOLTEN_FRONT, {
					["name"] = "Masterwork Elementium Spellblade",
					["timeline"] = { ADDED_4_2_0 },
					["recipeID"] = 99653,
				}),
				{
					["name"] = "Obsidium Bladespear",
					["recipeID"] = 76474,
				},
				{
					["name"] = "Obsidium Executioner",
					["recipeID"] = 76437,
				},
				applyclassicphase(CATA_PHASE_MOLTEN_FRONT, {
					["name"] = "Pyrium Spellward",
					["timeline"] = { ADDED_4_2_0 },
					["recipeID"] = 99656,
				}),
				applyclassicphase(CATA_PHASE_MOLTEN_FRONT, {
					["name"] = "Unbreakable Guardian",
					["timeline"] = { ADDED_4_2_0 },
					["recipeID"] = 99657,
				}),
				applyclassicphase(CATA_PHASE_MOLTEN_FRONT, {
					["name"] = "Witch-Hunter's Harvester",
					["timeline"] = { ADDED_4_2_0 },
					["recipeID"] = 99660,
				}),
			},
		},
		{
			["name"] = "Skeleton Keys",
			["categoryID"] = 575,
			["groups"] = {
				{
					["name"] = "Obsidium Skeleton Key",
					["recipeID"] = 76438,
				},
			},
		},
	}))),
});

-- Blacksmithing Item Database
local itemDB = ItemDBConditional;

-- Recipe Cache (for Validation)
local recipeCache, recipeCacheU = {}, {};
local function cacheRecipes(g)
	if g and type(g) == "table" then
		if g.groups then cacheRecipes(g.groups); end
		if g.g then cacheRecipes(g.g); end
		local spellID = g.spellID or g.recipeID;
		if spellID then
			recipeCache[spellID] = true;
			if g.u then recipeCacheU[spellID] = g.u; end
		end
		for i,o in ipairs(g) do
			cacheRecipes(o);
		end
	end
end
cacheRecipes(_.Professions);

-- Blacksmithing Item Recipe Database
local itemrecipe = function(name, itemID, spellID, phase, timeline)
	local o = { ["itemID"] = itemID, ["spellID"] = spellID };
	if type(phase) == "string" then
		timeline = phase;
		phase = nil;
	end
	if timeline then
		-- Ensure that the timeline is in a table format.
		if type(timeline) == "string" then timeline = { timeline }; end
		if type(timeline) == "table" then o.timeline = timeline; end
	end
	if name then
		-- Ensure that the name is in a string format.
		if type(name) == "table" then
			-- #if AFTER CATA
			name = name[2];
			-- #else
			name = name[1];
			-- #endif
		end
		o.name = name;
	end
	itemDB[itemID] = phase and applyclassicphase(phase, o) or o;

	-- Ensure that this recipe's spellID exists in the profession database.
	if recipeCache and type(timeline) ~= "boolean" then
		if recipeCache[o.spellID] then
			-- Grab the phase from the cache.
			local u = recipeCacheU[o.spellID];
			if u then
				if o.u ~= u then
					print("ITEM RECIPE MISSING U: ", name, o.spellID, u, o.u);
					o.u = u;
				end
			elseif o.u ~= u then
				print("RECIPE MISSING U: ", name, o.spellID, o.u);
			end
		else
			print("MISSING RECIPE", name, o.spellID);
		end
	end
	return o;
end

-- Classic Recipes
itemrecipe("Plans: Runed Copper Breastplate", 2881, 2667);
itemrecipe("Plans: Silvered Bronze Shoulders", 2882, 3330);
itemrecipe("Plans: Deadly Bronze Poniard", 2883, 3295);
itemrecipe("Plans: Mighty Iron Hammer", 3608, 3297);
itemrecipe("Plans: Copper Chain Vest", 3609, 3321);
itemrecipe("Plans: Gemmed Copper Gauntlets", 3610, 3325);
itemrecipe("Plans: Green Iron Boots", 3611, 3334);
itemrecipe("Plans: Green Iron Gauntlets", 3612, 3336);
itemrecipe("Plans: Jade Serpentblade", 3866, 3493);
itemrecipe("Plans: Golden Iron Destroyer", 3867, 3495);
itemrecipe("Plans: Frost Tiger Blade", 3868, 3497);
itemrecipe("Plans: Shadow Crescent Axe", 3869, 3500);
itemrecipe("Plans: Green Iron Shoulders", 3870, 3504);
itemrecipe("Plans: Golden Scale Shoulders", 3871, 3505);
itemrecipe("Plans: Golden Scale Leggings", 3872, 3507);
itemrecipe("Plans: Golden Scale Cuirass", 3873, 3511);
itemrecipe("Plans: Polished Steel Boots", 3874, 3513);
itemrecipe("Plans: Golden Scale Boots", 3875, 3515);
itemrecipe("Plans: Iridescent Hammer", 5543, 6518);
itemrecipe("Plans: Silvered Bronze Breastplate", 5578, 2673);
itemrecipe("Plans: Iron Shield Spike", 6044, 7221);
itemrecipe("Plans: Iron Counterweight", 6045, 7222);
itemrecipe("Plans: Steel Weapon Chain", 6046, 7224);
itemrecipe("Plans: Golden Scale Coif", 6047, 3503);
itemrecipe("Plans: Ironforge Breastplate", 6735, 8367);
itemrecipe("Plans: Heavy Mithril Pants", 7975, 9933);
itemrecipe("Plans: Mithril Shield Spike", 7976, 9939);
itemrecipe("Plans: Barbaric Iron Shoulders", 7978, 9811);
itemrecipe("Plans: Barbaric Iron Breastplate", 7979, 9813);
itemrecipe("Plans: Barbaric Iron Helm", 7980, 9814);
itemrecipe("Plans: Barbaric Iron Boots", 7981, 9818);
itemrecipe("Plans: Barbaric Iron Gloves", 7982, 9820);
itemrecipe("Plans: Ornate Mithril Pants", 7983, 9945);
itemrecipe("Plans: Ornate Mithril Gloves", 7984, 9950);
itemrecipe("Plans: Ornate Mithril Shoulder", 7985, 9952);
itemrecipe("Plans: Mithril Spurs", 7989, 9964);
itemrecipe("Plans: Heavy Mithril Helm", 7990, 9970);
itemrecipe("Plans: Mithril Scale Shoulders", 7991, 9966);
itemrecipe("Plans: Blue Glittering Axe", 7992, 9995);
itemrecipe("Plans: Dazzling Mithril Rapier", 7993, 10005);
itemrecipe("Plans: Mithril Scale Bracers", 7995, 9937);
itemrecipe("Plans: Runed Mithril Hammer", 8028, 10009);
itemrecipe("Plans: Wicked Mithril Blade", 8029, 9997);
itemrecipe("Plans: Ebon Shiv", 8030, 10013);
itemrecipe("Plans: Golden Scale Gauntlets", 9367, 11643);
itemrecipe("Plans: Silvered Bronze Leggings", 10424, 12259);
itemrecipe("Plans: Inlaid Mithril Cylinder", 10713, 11454);
itemrecipe("Plans: Solid Iron Maul", 10858, 3494);
itemrecipe("Plans: Dark Iron Pulverizer", 11610, 15292);
itemrecipe("Plans: Dark Iron Sunderer", 11611, 15294);
itemrecipe("Plans: Dark Iron Plate", 11612, 15296);
itemrecipe("Plans: Dark Iron Mail", 11614, 15293);
itemrecipe("Plans: Dark Iron Shoulders", 11615, 15295);
itemrecipe("Plans: Hardened Iron Shortsword", 12162, 3492);
itemrecipe("Plans: Moonsteel Broadsword", 12163, 3496);
itemrecipe("Plans: Massive Iron Axe", 12164, 3498);
itemrecipe("Plans: Searing Golden Blade", 12261, 15973);
itemrecipe("Plans: Thorium Armor", 12682, 16642);
itemrecipe("Plans: Thorium Belt", 12683, 16643);
itemrecipe("Plans: Thorium Bracers", 12684, 16644);
itemrecipe("Plans: Radiant Belt", 12685, 16645);
itemrecipe("Plans: Imperial Plate Shoulders", 12687, 16646);
itemrecipe("Plans: Imperial Plate Belt", 12688, 16647);
itemrecipe("Plans: Radiant Breastplate", 12689, 16648);
itemrecipe("Plans: Imperial Plate Bracers", 12690, 16649);
itemrecipe("Plans: Wildthorn Mail", 12691, 16650);
itemrecipe("Plans: Thorium Shield Spike", 12692, 16651);
itemrecipe("Plans: Thorium Boots", 12693, 16652);
itemrecipe("Plans: Thorium Helm", 12694, 16653);
itemrecipe("Plans: Radiant Gloves", 12695, 16654);
itemrecipe("Plans: Demon Forged Breastplate", 12696, 16667);
itemrecipe("Plans: Radiant Boots", 12697, 16656);
itemrecipe("Plans: Dawnbringer Shoulders", 12698, 16660);
itemrecipe("Plans: Fiery Plate Gauntlets", 12699, 16655);
itemrecipe("Plans: Imperial Plate Boots", 12700, 16657);
itemrecipe("Plans: Imperial Plate Helm", 12701, 16658);
itemrecipe("Plans: Radiant Circlet", 12702, 16659);
itemrecipe("Plans: Storm Gauntlets", 12703, 16661);
itemrecipe("Plans: Thorium Leggings", 12704, 16662);
itemrecipe("Plans: Imperial Plate Chest", 12705, 16663);
itemrecipe("Plans: Runic Plate Shoulders", 12706, 16664);
itemrecipe("Plans: Runic Plate Boots", 12707, 16665);
itemrecipe("Plans: Whitesoul Helm", 12711, 16724);
itemrecipe("Plans: Radiant Leggings", 12713, 16725);
itemrecipe("Plans: Runic Plate Helm", 12714, 16726);
itemrecipe("Plans: Imperial Plate Leggings", 12715, 16730);
itemrecipe("Plans: Helm of the Great Chief", 12716, 16728);
itemrecipe("Plans: Lionheart Helm", 12717, 16729);
itemrecipe("Plans: Runic Breastplate", 12718, 16731);
itemrecipe("Plans: Runic Plate Leggings", 12719, 16732);
itemrecipe("Plans: Stronghold Gauntlets", 12720, 16741);
itemrecipe("Plans: Invulnerable Mail", 12728, 16746);
itemrecipe("Plans: Ornate Thorium Handaxe", 12819, 16969);
itemrecipe("Plans: Dawn's Edge", 12821, 16970);
itemrecipe("Plans: Huge Thorium Battleaxe", 12823, 16971);
itemrecipe("Plans: Enchanted Battlehammer", 12824, 16973);
itemrecipe("Plans: Blazing Rapier", 12825, 16978);
itemrecipe("Plans: Serenity", 12827, 16983);
itemrecipe("Plans: Volcanic Hammer", 12828, 16984);
itemrecipe("Plans: Corruption", 12830, 16985);
itemrecipe("Plans: Hammer of the Titans", 12833, 16988);
itemrecipe("Plans: Arcanite Champion", 12834, 16990);
itemrecipe("Plans: Annihilator", 12835, 16991);
itemrecipe("Plans: Frostguard", 12836, 16992);
itemrecipe("Plans: Masterwork Stormhammer", 12837, 16993);
itemrecipe("Plans: Arcanite Reaper", 12838, 16994);
itemrecipe("Plans: Heartseeker", 12839, 16995);
itemrecipe("Plans: Fiery Chain Girdle", 17049, 20872);
itemrecipe("Plans: Dark Iron Bracers", 17051, 20874);
itemrecipe("Plans: Dark Iron Leggings", 17052, 20876);
itemrecipe("Plans: Fiery Chain Shoulders", 17053, 20873);
itemrecipe("Plans: Dark Iron Reaver", 17059, 20890);
itemrecipe("Plans: Dark Iron Destroyer", 17060, 20897);
itemrecipe("Plans: Enchanted Thorium Helm", 12725, 16742, PHASE_THREE_RECIPES);
itemrecipe("Plans: Enchanted Thorium Leggings", 12726, 16744, PHASE_THREE_RECIPES);
itemrecipe("Plans: Enchanted Thorium Breastplate", 12727, 16745, PHASE_THREE_RECIPES);
applyevent(EVENTS.FEAST_OF_WINTER_VEIL, itemrecipe("Plans: Edge of Winter", 17706, 21913));
itemrecipe("Plans: Elemental Sharpening Stone", 18264, 22757);
itemrecipe("Plans: Sulfuron Hammer", 18592, 21161);
itemrecipe("Plans: Heavy Timbermaw Belt", 19202, 23628, PHASE_THREE_RECIPES);
itemrecipe("Plans: Girdle of the Dawn", 19203, 23632, PHASE_THREE_RECIPES);
itemrecipe("Plans: Heavy Timbermaw Boots", 19204, 23629, PHASE_THREE_RECIPES);
itemrecipe("Plans: Gloves of the Dawn", 19205, 23633, PHASE_THREE_RECIPES);
itemrecipe("Plans: Dark Iron Helm", 19206, 23636, PHASE_THREE_RECIPES);
itemrecipe("Plans: Dark Iron Gauntlets", 19207, 23637, PHASE_THREE_RECIPES);
itemrecipe("Plans: Black Amnesty", 19208, 23638, PHASE_THREE_RECIPES);
itemrecipe("Plans: Blackfury", 19209, 23639, PHASE_THREE_RECIPES);
itemrecipe("Plans: Ebon Hand", 19210, 23650, PHASE_THREE_RECIPES);
itemrecipe("Plans: Blackguard", 19211, 23652, PHASE_THREE_RECIPES);
itemrecipe("Plans: Nightfall", 19212, 23653, PHASE_THREE_RECIPES);
itemrecipe("Plans: Bloodsoul Breastplate", 19776, 24136, PHASE_FOUR);
itemrecipe("Plans: Bloodsoul Shoulders", 19777, 24137, PHASE_FOUR);
itemrecipe("Plans: Bloodsoul Gauntlets", 19778, 24138, PHASE_FOUR);
itemrecipe("Plans: Darksoul Breastplate", 19779, 24139, PHASE_FOUR);
itemrecipe("Plans: Darksoul Leggings", 19780, 24140, PHASE_FOUR);
itemrecipe("Plans: Darksoul Shoulders", 19781, 24141, PHASE_FOUR);
itemrecipe("Plans: Dark Iron Boots", 20040, 24399, PHASE_FOUR_DARKIRON_RECIPES);
itemrecipe("Plans: Darkrune Gauntlets", 20553, 24912, PHASE_FOUR);
itemrecipe("Plans: Darkrune Breastplate", 20554, 24914, PHASE_FOUR);
itemrecipe("Plans: Darkrune Helm", 20555, 24913, PHASE_FOUR);
itemrecipe("Plans: Heavy Obsidian Belt", 22209, 27585, PHASE_FIVE);
itemrecipe("Plans: Light Obsidian Belt", 22214, 27588, PHASE_FIVE);
itemrecipe("Plans: Jagged Obsidian Shield", 22219, 27586, PHASE_FIVE);
itemrecipe("Plans: Black Grasp of the Destroyer", 22220, 27589, PHASE_FIVE);
itemrecipe("Plans: Obsidian Mail Tunic", 22221, 27590, PHASE_FIVE);
itemrecipe("Plans: Thick Obsidian Breastplate", 22222, 27587, PHASE_FIVE);
itemrecipe("Plans: Titanic Leggings", 22388, 27829, PHASE_FIVE);
itemrecipe("Plans: Sageblade", 22389, 27832, PHASE_FIVE_RECIPES);
itemrecipe("Plans: Persuader", 22390, 27830, PHASE_FIVE_RECIPES);
itemrecipe("Plans: Icebane Breastplate", 22703, 28242, PHASE_SIX);
itemrecipe("Plans: Icebane Gauntlets", 22704, 28243, PHASE_SIX);
itemrecipe("Plans: Icebane Bracers", 22705, 28244, PHASE_SIX);
itemrecipe("Plans: Ironvine Breastplate", 22766, 28461, PHASE_FIVE_CATCH_UP);
itemrecipe("Plans: Ironvine Gloves", 22767, 28462, PHASE_FIVE_CATCH_UP);
itemrecipe("Plans: Ironvine Belt", 22768, 28463, PHASE_FIVE_CATCH_UP);

-- #if AFTER TBC
-- TBC Recipes
itemrecipe("Plans: Heavy Copper Longsword", 33792, 43549, TBC_PHASE_ONE);
itemrecipe("Plans: Adamantite Maul", 23590, 29566, TBC_PHASE_ONE);
itemrecipe("Plans: Adamantite Cleaver", 23591, 29568, TBC_PHASE_ONE);
itemrecipe("Plans: Adamantite Dagger", 23592, 29569, TBC_PHASE_ONE);
itemrecipe("Plans: Adamantite Rapier", 23593, 29571, TBC_PHASE_ONE);
itemrecipe("Plans: Adamantite Plate Bracers", 23594, 29603, TBC_PHASE_ONE);
itemrecipe("Plans: Adamantite Plate Gloves", 23595, 29605, TBC_PHASE_ONE);
itemrecipe("Plans: Adamantite Breastplate", 23596, 29606, TBC_PHASE_ONE);
itemrecipe("Plans: Enchanted Adamantite Belt", 23597, 29608, TBC_PHASE_ONE);
itemrecipe("Plans: Enchanted Adamantite Boots", 23598, 29611, TBC_PHASE_ONE);
itemrecipe("Plans: Enchanted Adamantite Breastplate", 23599, 29610, TBC_PHASE_ONE);
itemrecipe("Plans: Enchanted Adamantite Leggings", 23600, 29610, TBC_PHASE_ONE);
itemrecipe("Plans: Flamebane Bracers", 23601, 29614, TBC_PHASE_ONE);
itemrecipe("Plans: Flamebane Helm", 23602, 29615, TBC_PHASE_ONE);
itemrecipe("Plans: Flamebane Gloves", 23603, 29616, TBC_PHASE_ONE);
itemrecipe("Plans: Flamebane Breastplate", 23604, 29617, TBC_PHASE_ONE);
itemrecipe("Plans: Felsteel Gloves", 23605, 29619, TBC_PHASE_ONE);
itemrecipe("Plans: Felsteel Leggings", 23606, 29620, TBC_PHASE_ONE);
itemrecipe("Plans: Felsteel Helm", 23607, 29621, TBC_PHASE_ONE);
itemrecipe("Plans: Khorium Belt", 23608, 29628, TBC_PHASE_ONE);
itemrecipe("Plans: Khorium Pants", 23609, 29629, TBC_PHASE_ONE);
itemrecipe("Plans: Khorium Boots", 23610, 29630, TBC_PHASE_ONE);
itemrecipe("Plans: Ragesteel Gloves", 23611, 29642, TBC_PHASE_ONE);
itemrecipe("Plans: Ragesteel Helm", 23612, 29643, TBC_PHASE_ONE);
itemrecipe("Plans: Ragesteel Breastplate", 23613, 29645, TBC_PHASE_ONE);
itemrecipe("Plans: Swiftsteel Gloves", 23615, 29648, TBC_PHASE_ONE);
itemrecipe("Plans: Earthpeace Breastplate", 23617, 29649, TBC_PHASE_ONE);
itemrecipe("Plans: Adamantite Sharpening Stone", 23618, 29656, TBC_PHASE_ONE);
itemrecipe("Plans: Felsteel Shield Spike", 23619, 29657, TBC_PHASE_ONE);
itemrecipe("Plans: Lesser Ward of Shielding", 23638, 29728, TBC_PHASE_ONE);
itemrecipe("Plans: Greater Ward of Shielding", 23639, 29729, TBC_PHASE_ONE);
itemrecipe("Plans: Felsteel Shield Spike", 24002, 29657, TBC_PHASE_ONE);
itemrecipe("Plans: Greater Rune of Warding", 25526, 32285, TBC_PHASE_ONE);
itemrecipe("Plans: Adamantite Rod", 25846, 32656, TBC_PHASE_ONE, REMOVED_5_0_4);
itemrecipe("Plans: Eternium Rod", 25847, 32657, TBC_PHASE_ONE, REMOVED_5_0_4);
itemrecipe("Plans: Adamantite Weightstone", 28632, 34608, TBC_PHASE_ONE);
itemrecipe("Plans: Wildguard Breastplate", 31390, 38473, TBC_PHASE_ONE);
itemrecipe("Plans: Wildguard Leggings", 31391, 38475, TBC_PHASE_ONE);
itemrecipe("Plans: Wildguard Helm", 31392, 38476, TBC_PHASE_ONE);
itemrecipe("Plans: Iceguard Breastplate", 31393, 38477, TBC_PHASE_ONE);
itemrecipe("Plans: Iceguard Leggings", 31394, 38478, TBC_PHASE_ONE);
itemrecipe("Plans: Iceguard Helm", 31395, 38479, TBC_PHASE_ONE);
itemrecipe("Plans: Ragesteel Shoulders", 33174, 42662, TBC_PHASE_ONE);

-- World Drops (TBC Phase One)
itemrecipe("Plans: Adamantite Weapon Chain", 33186, 42688, TBC_PHASE_ONE);
itemrecipe("Plans: Black Felsteel Bracers", 23626, 29669, TBC_PHASE_ONE);
itemrecipe("Plans: Blessed Bracers", 23628, 29672, TBC_PHASE_ONE);
itemrecipe("Plans: Bracers of the Green Fortress", 23627, 29671, TBC_PHASE_ONE);
itemrecipe("Plans: Dirge", 23636, 29699, TBC_PHASE_ONE);
itemrecipe("Plans: Eternium Runed Blade", 23635, 29698, TBC_PHASE_ONE);
itemrecipe("Plans: Fel Edged Battleaxe", 23631, 29694, TBC_PHASE_ONE);
itemrecipe("Plans: Fel Hardened Maul", 23634, 29697, TBC_PHASE_ONE);
itemrecipe("Plans: Felfury Gauntlets", 23620, 29658, TBC_PHASE_ONE);
itemrecipe("Plans: Felsteel Longblade", 23629, 29692, TBC_PHASE_ONE);
itemrecipe("Plans: Felsteel Reaper", 23632, 29695, TBC_PHASE_ONE);
itemrecipe("Plans: Gauntlets of the Iron Tower", 23621, 29622, TBC_PHASE_ONE);
itemrecipe("Plans: Hammer of Righteous Might", 33954, 43846, TBC_PHASE_ONE);
itemrecipe("Plans: Hand of Eternity", 23637, 29700, TBC_PHASE_ONE);
itemrecipe("Plans: Helm of the Stalwart Defender", 23624, 29664, TBC_PHASE_ONE);
itemrecipe("Plans: Khorium Champion", 23630, 29693, TBC_PHASE_ONE);
itemrecipe("Plans: Oathkeeper's Helm", 23625, 29668, TBC_PHASE_ONE);
itemrecipe("Plans: Runic Hammer", 23633, 29696, TBC_PHASE_ONE);
itemrecipe("Plans: Steelgrip Gauntlets", 23622, 29662, TBC_PHASE_ONE);
itemrecipe("Plans: Storm Helm", 23623, 29663, TBC_PHASE_ONE);

itemrecipe("Plans: Belt of the Guardian", 30321, 36389, TBC_PHASE_TWO);
itemrecipe("Plans: Red Belt of Battle", 30322, 36390, TBC_PHASE_TWO);
itemrecipe("Plans: Boots of the Protector", 30323, 36391, TBC_PHASE_TWO);
itemrecipe("Plans: Red Havoc Boots", 30324, 36392, TBC_PHASE_TWO);

itemrecipe("Plans: Shadesteel Sabots", 32441, 40033, TBC_PHASE_THREE);
itemrecipe("Plans: Shadesteel Bracers", 32442, 40034, TBC_PHASE_THREE);
itemrecipe("Plans: Shadesteel Greaves", 32443, 40035, TBC_PHASE_THREE);
itemrecipe("Plans: Shadesteel Girdle", 32444, 40036, TBC_PHASE_THREE);
itemrecipe("Plans: Swiftsteel Bracers", 32736, 41132, TBC_PHASE_THREE);
itemrecipe("Plans: Swiftsteel Shoulders", 32737, 41133, TBC_PHASE_THREE);
itemrecipe("Plans: Dawnsteel Bracers", 32738, 41134, TBC_PHASE_THREE);
itemrecipe("Plans: Dawnsteel Shoulders", 32739, 41135, TBC_PHASE_THREE);

itemrecipe("Plans: Sunblessed Gauntlets", 35208, 46140, TBC_PHASE_FIVE);
itemrecipe("Plans: Hard Khorium Battlefists", 35209, 46141, TBC_PHASE_FIVE);
itemrecipe("Plans: Sunblessed Breastplate", 35210, 46142, TBC_PHASE_FIVE);
itemrecipe("Plans: Hard Khorium Battleplate", 35211, 46144, TBC_PHASE_FIVE);
itemrecipe("Plans: Adamantite Weapon Chain", 35296, 42688, TBC_PHASE_FIVE, true);
-- #endif

-- #if AFTER WRATH
itemrecipe("Plans: Battlelord's Plate Boots", 45089, 63188, WRATH_PHASE_TWO);
itemrecipe("Plans: Belt of the Titans", 45088, 63187, WRATH_PHASE_TWO);
itemrecipe("Plans: Boots of Kingly Upheaval", 49974, 70568, WRATH_PHASE_FOUR);
itemrecipe("Plans: Breastplate of the White Knight", 47640, 67130, WRATH_PHASE_THREE);
itemrecipe("Plans: Breastplate of the White Knight", 47622, 67091, WRATH_PHASE_THREE);
itemrecipe("Plans: Hellfrozen Bonegrinders", 49972, 70566, WRATH_PHASE_FOUR);
itemrecipe("Plans: Indestructible Plate Girdle", 45092, 63191, WRATH_PHASE_TWO);
itemrecipe("Plans: Legplates of Painful Death", 49971, 70565, WRATH_PHASE_FOUR);
itemrecipe("Plans: Pillars of Might", 49973, 70567, WRATH_PHASE_FOUR);
itemrecipe("Plans: Plate Girdle of Righteousness", 45090, 63189, WRATH_PHASE_TWO);
itemrecipe("Plans: Protectors of Life", 49970, 70563, WRATH_PHASE_FOUR);
itemrecipe("Plans: Puresteel Legplates", 49969, 70562, WRATH_PHASE_FOUR);
itemrecipe("Plans: Reinforced Cobalt Chestpiece", 41122, 54981, WRATH_PHASE_ONE);
itemrecipe("Plans: Reinforced Cobalt Helm", 41123, 54979, WRATH_PHASE_ONE);
itemrecipe("Plans: Reinforced Cobalt Legplates", 41120, 54980, WRATH_PHASE_ONE);
itemrecipe("Plans: Reinforced Cobalt Shoulders", 41124, 54978, WRATH_PHASE_ONE);
itemrecipe("Plans: Saronite Swordbreakers", 47641, 67131, WRATH_PHASE_THREE);
itemrecipe("Plans: Saronite Swordbreakers", 47623, 67092, WRATH_PHASE_THREE);
itemrecipe("Plans: Spiked Deathdealers", 45093, 63192, WRATH_PHASE_TWO);
itemrecipe("Plans: Sunforged Bracers", 47642, 67135, WRATH_PHASE_THREE);
itemrecipe("Plans: Sunforged Bracers", 47627, 67096, WRATH_PHASE_THREE);
itemrecipe("Plans: Sunforged Breastplate", 47643, 67134, WRATH_PHASE_THREE);
itemrecipe("Plans: Sunforged Breastplate", 47626, 67095, WRATH_PHASE_THREE);
itemrecipe("Plans: Titanium Plating", 44937, 62202, WRATH_PHASE_ONE);
itemrecipe("Plans: Titanium Plating", 44938, 62202, WRATH_PHASE_ONE);
itemrecipe("Plans: Titanium Razorplate", 47644, 67132, WRATH_PHASE_THREE);
itemrecipe("Plans: Titanium Razorplate", 47624, 67093, WRATH_PHASE_THREE);
itemrecipe("Plans: Titanium Spikeguards", 47645, 67133, WRATH_PHASE_THREE);
itemrecipe("Plans: Titanium Spikeguards", 47625, 67094, WRATH_PHASE_THREE);
itemrecipe("Plans: Treads of Destiny", 45091, 63190, WRATH_PHASE_TWO);
-- #endif

-- These items never made it in.
recipeCache = nil;	-- Invalidate the cache.
root(ROOTS.NeverImplemented, {
	filter(RECIPES, {
		itemrecipe("Plans: Bleakwood Hew", 12817, 16965);
		itemrecipe("Plans: Blood Talon", 12831, 16986);
		itemrecipe("Plans: Darkspear", 12832, 16987);
		itemrecipe("Plans: Inlaid Thorium Hammer", 12818, 16967);
		itemrecipe("Plans: Ironforge Chain", 6734, 8366);
		itemrecipe("Plans: Ironforge Gauntlets", 6736, 8368);
		itemrecipe("Plans: Mithril Scale Gloves", 7977, 9942);
		itemrecipe("Plans: Orcish War Leggings", 7994, 9957);	-- learned from quest 2756 (horde) but recipe item is not in game
		itemrecipe("Plans: Ornate Mithril Breastplate", 7986, 9972);
		itemrecipe("Plans: Ornate Mithril Boots", 7988, 9979);	--  learned from quest 2772 but recipe item is not in game
		itemrecipe("Plans: Ornate Mithril Helm", 7987, 9980);
		itemrecipe("Plans: Rough Bronze Bracers", 5577, 2671);
		itemrecipe("Plans: Rune Edge", 12826, 16980);
		itemrecipe("Plans: Thorium Greatsword", 12816, 16960);

		-- #if AFTER TBC
		itemrecipe("Plans: Dawnsteel Bracers", 35529);
		itemrecipe("Plans: Dawnsteel Shoulders", 35530, 41135);
		itemrecipe("Plans: Hard Khorium Battlefists", 35553);
		itemrecipe("Plans: Hard Khorium Battleplate", 35554);
		itemrecipe("Plans: Sunblessed Breastplate", 35555, 46142);
		itemrecipe("Plans: Sunblessed Gauntlets", 35556);
		itemrecipe("Plans: Swiftsteel Bracers", 35531);
		itemrecipe("Plans: Swiftsteel Shoulders", 35532, 41133);
		-- #endif
	}),
});
-- #endif