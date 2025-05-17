-----------------------------------------------------
--       P R O F E S S I O N S   M O D U L E       --
-----------------------------------------------------
local EMBROIDERED_DEEP_SEA_SATIN = 158378;
local DF_TAILORING_KNOWLEDGE = 2026;
local TWW_TAILORING_KNOWLEDGE = 2795;
root(ROOTS.Professions, prof(TAILORING, bubbleDownSelf({ ["requireSkill"] = TAILORING }, {
	n(ACHIEVEMENTS, bubbleDownSelf({ ["timeline"] = { ADDED_10_1_7 } }, {
		ach(18888),	-- Quite the Quilt IV
		ach(18887),	-- Quite the Quilt III
		ach(18886),	-- Quite the Quilt II
		ach(18885),	-- Quite the Quilt I
		ach(18903, {	-- Ton of Tops
			crit(61714, {	-- Red Linen Shirt
				["provider"] = { "i", 2575 },	-- Red Linen Shirt
			}),
			crit(61715, {	-- White Linen Shirt
				["provider"] = { "i", 2576 },	-- White Linen Shirt
			}),
			crit(61716, {	-- Blue Linen Shirt
				["provider"] = { "i", 2577 },	-- Blue Linen Shirt
			}),
			crit(61717, {	-- Green Linen Shirt
				["provider"] = { "i", 2579 },	-- Green Linen Shirt
			}),
			crit(61718, {	-- Gray Woolen Shirt
				["provider"] = { "i", 2587 },	-- Gray Woolen Shirt
			}),
			crit(61719, {	-- Stylish Red Shirt
				["provider"] = { "i", 4330 },	-- Stylish Red Shirt
			}),
			crit(61720, {	-- Bright Yellow Shirt
				["provider"] = { "i", 4332 },	-- Bright Yellow Shirt
			}),
			crit(61721, {	-- Dark Silk Shirt
				["provider"] = { "i", 4333 },	-- Dark Silk Shirt
			}),
			crit(61722, {	-- Formal White Shirt
				["provider"] = { "i", 4334 },	-- Formal White Shirt
			}),
			crit(61723, {	-- Rich Purple Silk Shirt
				["provider"] = { "i", 4335 },	-- Rich Purple Silk Shirt
			}),
			crit(61724, {	-- Black Swashbuckler's Shirt
				["provider"] = { "i", 4336 },	-- Black Swashbuckler's Shirt
			}),
			crit(61725, {	-- Brown Linen Shirt
				["provider"] = { "i", 4344 },	-- Brown Linen Shirt
			}),
			crit(61726, {	-- Stylish Blue Shirt
				["provider"] = { "i", 6384 },	-- Stylish Blue Shirt
			}),
			crit(61727, {	-- Stylish Green Shirt
				["provider"] = { "i", 6385 },	-- Stylish Green Shirt
			}),
			crit(61728, {	-- White Swashbuckler's Shirt
				["provider"] = { "i", 6795 },	-- White Swashbuckler's Shirt
			}),
			crit(61729, {	-- Red Swashbuckler's Shirt
				["provider"] = { "i", 6796 },	-- Red Swashbuckler's Shirt
			}),
			crit(61730, {	-- Orange Mageweave Shirt
				["provider"] = { "i", 10056 },	-- Orange Mageweave Shirt
			}),
			crit(61731, {	-- Orange Martial Shirt
				["provider"] = { "i", 10052 },	-- Orange Martial Shirt
			}),
			crit(61732, {	-- Lavender Mageweave Shirt
				["provider"] = { "i", 10054 },	-- Lavender Mageweave Shirt
			}),
			crit(61733, {	-- Pink Mageweave Shirt
				["provider"] = { "i", 10055 },	-- Pink Mageweave Shirt
			}),
			crit(61735, {	-- Green Holiday Shirt
				["provider"] = { "i", 17723 },	-- Green Holiday Shirt
			}),
			crit(61736, {	-- Red Lumberjack Shirt
				["provider"] = { "i", 41248 },	-- Red Lumberjack Shirt
			}),
			crit(61737, {	-- Blue Lumberjack Shirt
				["provider"] = { "i", 41249 },	-- Blue Lumberjack Shirt
			}),
			crit(61738, {	-- Yellow Lumberjack Shirt
				["provider"] = { "i", 41251 },	-- Yellow Lumberjack Shirt
			}),
			crit(61739, {	-- Green Lumberjack Shirt
				["provider"] = { "i", 41250 },	-- Green Lumberjack Shirt
			}),
			crit(61740, {	-- Red Workman's Shirt
				["provider"] = { "i", 41252 },	-- Red Workman's Shirt
			}),
			crit(61741, {	-- Blue Workman's Shirt
				["provider"] = { "i", 41253 },	-- Blue Workman's Shirt
			}),
			crit(61742, {	-- Rustic Workman's Shirt
				["provider"] = { "i", 41254 },	-- Rustic Workman's Shirt
			}),
			crit(61743, {	-- Green Workman's Shirt
				["provider"] = { "i", 41255 },	-- Green Workman's Shirt
			}),
			crit(61734, {	-- Tuxedo Shirt
				["provider"] = { "i", 10034 },	-- Tuxedo Shirt
			}),
			crit(61744, {	-- Tuxedo Pants
				["provider"] = { "i", 10035 },	-- Tuxedo Pants
			}),
		}),
	})),
	expansion(EXPANSION.TBC, applyclassicphase(TBC_PHASE_ONE, bubbleDownSelf({ ["timeline"] = { ADDED_2_0_5 } }, {
		n(ACHIEVEMENTS, bubbleDownSelf({ ["timeline"] = { ADDED_10_0_7 } }, {
			ach(17499, {	-- Renowned Tailoring Specialist
				["sourceQuests"] = {
					10831,	-- Becoming a Mooncloth Tailor
					10833,	-- Becoming a Shadoweave Tailor
					10832,	-- Becoming a Spellfire Tailor
				},
				["sourceQuestNumRequired"] = 1,
				["timeline"] = { ADDED_10_0_7, REMOVED_10_0_7 },
			}),
		})),
		n(QUESTS, bubbleDownSelf({ ["timeline"] = { ADDED_2_0_5, REMOVED_4_0_3 } }, {
			q(10831, {	-- Becoming a Mooncloth Tailor
				["qg"] = 22208,	-- Nasmara Moonsong <Mooncloth Specialist>
				["description"] = "Upon finishing this quest, you will become a Mooncloth Tailor.",
				["coord"] = { 66.5, 69.3, SHATTRATH_CITY },
				["maps"] = { ZANGARMARSH },
				["altQuests"] = {
					-- 10831,	-- Becoming a Mooncloth Tailor
					10833,	-- Becoming a Shadoweave Tailor
					10832,	-- Becoming a Spellfire Tailor
				},
				["lvl"] = 60,
				["groups"] = {
					objective(1, {	-- 0/1 Sample of Primal Mooncloth
						["provider"] = { "i", 31530 },	-- Sample of Primal Mooncloth
						["coord"] = { 80, 65, ZANGARMARSH },
						["cost"] = {
							{ "i", 31524, 1 },	-- Square of Imbued Netherweave
							{ "i", 31525, 1 },	-- Vial of Primal Reagents
						},
					}),
					i(31522, {	-- Primal Mooncloth Supplies
						i(31524),	-- Square of Imbued Netherweave
						i(31525),	-- Vial of Primal Reagents
					}),
				},
			}),
			q(10833, {	-- Becoming a Shadoweave Tailor
				["qg"] = 22212,	-- Andrion Darkspinner <Shadoweave Specialist>
				["description"] = "Upon finishing this quest, you will become a Shadoweave Tailor.",
				["coord"] = { 66.6, 68.2, SHATTRATH_CITY },
				["maps"] = { SHADOWMOON_VALLEY },
				["requireSkill"] = TAILORING,
				["altQuests"] = {
					10831,	-- Becoming a Mooncloth Tailor
					-- 10833,	-- Becoming a Shadoweave Tailor
					10832,	-- Becoming a Spellfire Tailor
				},
				["lvl"] = 60,
				["groups"] = {
					objective(1, {	-- Deepen Altar of Shadows Attunement
						["provider"] = { "i", 31736 },	-- Crystal of Deep Shadows
						["coord"] = { 58.0, 71.0, SHADOWMOON_VALLEY },
					}),
				},
			}),
			q(10832, {	-- Becoming a Spellfire Tailor
				["qg"] = 22213,	-- Gidge Spellweaver <Spellfire Specialist>
				["description"] = "Upon finishing this quest, you will become a Spellfire Tailor.",
				["coord"] = { 66.6, 68.4, SHATTRATH_CITY },
				["maps"] = { NETHERSTORM },
				["altQuests"] = {
					10831,	-- Becoming a Mooncloth Tailor
					10833,	-- Becoming a Shadoweave Tailor
					-- 10832,	-- Becoming a Spellfire Tailor
				},
				["lvl"] = 60,
				["groups"] = {
					objective(1, {	-- 0/1 Nether-wraith Essence
						["provider"] = { "i", 31741 },	-- Nether-wraith Essence
						["cr"] = 22408,	-- Furious Nether-wraith
						["cost"] = {
							{ "i", 31742, 1 },	-- Nether-wraith Beacon
						},
					}),
				},
			}),
		})),
	}))),
	expansion(EXPANSION.WRATH, bubbleDownSelf({ ["timeline"] = { ADDED_3_0_3 } }, {
		-- #if AFTER BFA
		ach(137, {	-- Stocking Up
			["provider"] = { "i", 34722 },	-- Heavy Frostweave Bandage
		}),
		ach(141, {	-- Ultimate Triage
			["providers"] = {
				{ "i", 34722 },	-- Heavy Frostweave Bandage
				{ "i", 53049 },	-- Embersilk Bandage
				{ "i", 53051 },	-- Dense Embersilk Bandage
				{ "i", 72985 },	-- Windwool Bandage
				{ "i", 72986 },	-- Heavy Windwool Bandage
			},
		}),
		-- #endif
	})),
	expansion(EXPANSION.CATA, bubbleDownSelf({ ["timeline"] = { ADDED_4_0_3_LAUNCH } }, {
		n(ACHIEVEMENTS, {
			-- #if AFTER BFA
			ach(5480, {	-- Preparing for Disaster
				["provider"] = { "i", 53051 },	-- Dense Embersilk Bandage
			}),
			-- #endif
			ach(18815, bubbleDownSelf({ ["timeline"] = { ADDED_10_1_7 } }, {	-- Speed Dreamin'
				crit(61333),	-- Dream of Skywall
				crit(61334),	-- Dream of Deepholm
				crit(61335),	-- Dream of Hyjal
				crit(61336),	-- Dream of Ragnaros
				crit(61337),	-- Dream of Azshara
			})),
		}),
	})),
	expansion(EXPANSION.WOD, bubbleDownSelf({ ["timeline"] = { ADDED_6_0_2 } }, {
		n(QUESTS, {
			q(36236, {	-- The Cryptic Tome of Tailoring
				["provider"] = { "i", 114972 },	-- Cryptic Tome of Tailoring
				["description"] = "This item can drop from any Draenor mob.",
				["timeline"] = { ADDED_6_0_2 },
				["requireSkill"] = TAILORING,
				["races"] = ALLIANCE_ONLY,
				["maps"] = {
					FROSTFIRE_RIDGE,
					GORGROND,
					DRAENOR_NAGRAND,
					DRAENOR_SHADOWMOON_VALLEY,
					SPIRES_OF_ARAK,
					TALADOR,
				},
			}),
			q(36301, {	-- Trega's Tailoring Kit
				["provider"] = { "i", 114973 },	-- Frostwolf Tailoring Kit
				["description"] = "This item can drop from any Draenor mob.",
				["timeline"] = { ADDED_6_0_2 },
				["requireSkill"] = TAILORING,
				["races"] = HORDE_ONLY,
				["maps"] = {
					FROSTFIRE_RIDGE,
					GORGROND,
					DRAENOR_NAGRAND,
					DRAENOR_SHADOWMOON_VALLEY,
					SPIRES_OF_ARAK,
					TALADOR,
				},
			}),
		}),
	})),
	expansion(EXPANSION.BFA, bubbleDownSelf({ ["timeline"] = { ADDED_8_0_1_LAUNCH } }, {
		n(ACHIEVEMENTS, bubbleDownSelf({ ["timeline"] = { ADDED_10_1_7 } }, {
			ach(18774, {	-- Synchronous Thread
				["provider"] = { "i", 164733 },	-- Synchronous Thread
			}),
			ach(18896, {	-- United as Three
				["providers"] = {
					{ "i", 154706 },	-- Battle Flag: Phalanx Defense
					{ "i", 154705 },	-- Battle Flag: Rallying Swiftness
					{ "i", 154707 },	-- Battle Flag: Spirit of Freedom
				}
			}),
		})),
		n(QUESTS, {
			q(54483, {	-- Tailored Training [A]
				["provider"] = { "n", 136071 },	-- Daniel Brineweaver <Tailoring Trainer>
				["coord"] = { 76.8, 11.2, BORALUS },
				["races"] = ALLIANCE_ONLY,
				["timeline"] = { ADDED_8_1_0, REMOVED_9_0_1 },	-- Might no be correct removed patch
			}),
			q(54484, {	-- Tailored Training [H]
				["provider"] = { "n", 122700 },	-- Pin'jin the Patient <Tailoring Trainer>
				["coord"] = { 44.5, 33.9, DAZARALOR },
				["races"] = HORDE_ONLY,
				["timeline"] = { ADDED_8_1_0, REMOVED_9_0_1 },	-- Might no be correct removed patch
			}),
			------ Tools of Trade Questline ------
			q(53805, {	-- A Friend in Needle [A]
				["provider"] = { "n", 145022 },	-- Timeweaver Delormi
				["coord"] = { 76.6, 11.8, BORALUS },
				["races"] = ALLIANCE_ONLY,
				["timeline"] = { ADDED_8_1_5 },
			}),
			q(53938, {	-- A Friend in Needle [H]
				["provider"] = { "n", 145022 },	-- Timeweaver Delormi
				["coord"] = { 43.5, 34.8, DAZARALOR },
				["races"] = HORDE_ONLY,
				["timeline"] = { ADDED_8_1_5 },
			}),
			q(53807, {	-- A Stitch in Time [A]
				["sourceQuests"] = { 53805 },	-- A Friend in Needle [A]
				["provider"] = { "n", 145022 },	-- Timeweaver Delormi
				["coord"] = { 76.6, 11.8, BORALUS },
				["races"] = ALLIANCE_ONLY,
				["timeline"] = { ADDED_8_1_5 },
				["g"] = {
					i(167231),	-- Delormi's Synchronous Thread (QI!)
				},
			}),
			q(53940, {	-- A Stitch in Time [H]
				["sourceQuests"] = { 53938 },	-- A Friend in Needle [H]
				["provider"] = { "n", 145022 },	-- Timeweaver Delormi
				["coord"] = { 43.5, 34.8, DAZARALOR },
				["races"] = HORDE_ONLY,
				["timeline"] = { ADDED_8_1_5 },
				["g"] = {
					i(167231),	-- Delormi's Synchronous Thread (QI!)
				},
			}),
			q(55177, {	-- Tearing at the Seams [A]
				["sourceQuests"] = { 53807 },	-- A Stitch in Time [A]
				["provider"] = { "n", 145022 },	-- Timeweaver Delormi
				["races"] = ALLIANCE_ONLY,
				["timeline"] = { ADDED_8_1_5 },
			}),
			q(55188, {	-- Tearing at the Seams [H]
				["sourceQuests"] = { 53940 },	-- A Stitch in Time [H]
				["provider"] = { "n", 145022 },	-- Timeweaver Delormi
				["races"] = HORDE_ONLY,
				["timeline"] = { ADDED_8_1_5 },
			}),
			q(53810, {	-- The Severed Thread
				["sourceQuests"] = {
					55177,	-- Tearing at the Seams [A]
					55188,	-- Tearing at the Seams [H]
				},
				["provider"] = { "n", 151134 },	-- Timeweaver Delormi
				["coord"] = { 62.0, 53.9, CAVERNS_OF_TIME },
				["timeline"] = { ADDED_8_1_5 },
			}),
			q(53813, {	-- Rolling Up the Sleeves
				["sourceQuests"] = {
					55177,	-- Tearing at the Seams [A]
					55188,	-- Tearing at the Seams [H]
				},
				["provider"] = { "n", 151134 },	-- Timeweaver Delormi
				["coord"] = { 43.5, 34.8, CAVERNS_OF_TIME },
				["timeline"] = { ADDED_8_1_5 },
			}),
			q(53858, {	-- Step Into Her Shoes
				["sourceQuests"] = {
					53810,	-- The Severed Thread
					53813,	-- Rolling Up the Sleeves
				},
				["provider"] = { "n", 151134 },	-- Timeweaver Delormi
				["coord"] = { 39.1, 63.3, CAVERNS_OF_TIME },
				["timeline"] = { ADDED_8_1_5 },
			}),
			q(53866, {	-- If The Shoe Fits...
				["sourceQuests"] = { 53858 },	-- Step Into Her Shoes
				["provider"] = { "n", 151134 },	-- Timeweaver Delormi
				["coord"] = { 63.8, 68.8, SURAMAR },
				["timeline"] = { ADDED_8_1_5 },
			}),
			q(55214, {	-- Seam Stress
				["sourceQuests"] = { 53866 },	-- If The Shoe Fits...
				["provider"] = { "n", 151134 },	-- Timeweaver Delormi
				["coord"] = { 64.2, 69.5, SURAMAR },
				["timeline"] = { ADDED_8_1_5 },
				["g"] = {
					i(167231),	-- Delormi's Synchronous Thread (QI!)
				},
			}),
			q(53868, {	-- Saving Nine
				["sourceQuests"] = { 55214 },	-- Seam Stress
				["provider"] = { "n", 151134 },	-- Timeweaver Delormi
				["coord"] = { 7.2, 24.5, STORMSONG_VALLEY },
				["timeline"] = { ADDED_8_1_5 },
			}),
			q(53869, {	-- Killing Time
				["sourceQuests"] = { 53868 },	-- Saving Nine
				["provider"] = { "n", 151134 },	-- Timeweaver Delormi
				["coord"] = { 71.6, 39.8, DRAGONBLIGHT },
				["timeline"] = { ADDED_8_1_5 },
			}),
			q(53881, {	-- Cut from the Same Cloth [A]
				["sourceQuests"] = { 53869 },	-- Killing Time
				["provider"] = { "n", 151134 },	-- Timeweaver Delormi
				["coord"] = { 71.6, 39.8, DRAGONBLIGHT },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					r(292946),	-- Recipe: Synchronous Thread (RECIPE!)
				},
			}),
			q(53962, bubbleDownSelf({ ["timeline"] = { ADDED_8_1_5 } }, {	-- Cut from the Same Cloth [H]
				["sourceQuests"] = { 53869 },	-- Killing Time
				["provider"] = { "n", 151134 },	-- Timeweaver Delormi
				["coord"] = { 71.6, 39.8, DRAGONBLIGHT },
				["races"] = HORDE_ONLY,
				["groups"] = {
					r(292946),	-- Recipe: Synchronous Thread (RECIPE!)
				},
			})),
		}),
		n(SPECIAL, {
			n(151903, {	-- Time-Lost Trader
				["description"] = "This Trader has a ~20% chance to spawn from closing a Time Rift via the Synchronous Thread (Battle for Azeroth Tailor Only item).\nBest Zone to farm Time Rifts is Nazjatar.",
				["timeline"] = { ADDED_8_1_5 },
				["coords"] = {
					-- Zuldazar
					{ 45.0, 39.0, ZULDAZAR },	-- Ledge right before entrance to Atal'Dazar
					{ 54.0, 61.0, ZULDAZAR },	-- On the beach below Mugambala
					{ 59.0, 75.0, ZULDAZAR },	-- NW corner of Tuck Isle
					{ 73.0, 67.0, ZULDAZAR },	-- East of Seeker's Outpost
					{ 71.0, 35.0, ZULDAZAR },	-- Behind Savagelands Devilsaur
					-- Nazmir
					{ 38.0, 58.0, NAZMIR },	-- Under arch east side of Terrace of Sorrows
					{ 55.0, 21.0, NAZMIR },
					{ 53.0, 56.0, NAZMIR },	-- NE corner of Heart of Darkness
					{ 43.0, 29.0, NAZMIR },	-- SE corner of Necropolis
					{ 38.0, 89.0, NAZMIR },	-- The Shattered River, in front of broken totem
					{ 29.0, 56.0, NAZMIR },
					{ 26.0, 78.0, NAZMIR },	-- In front of waterfall
					-- Drustvar
					{ 23.0, 43.0, DRUSTVAR },	-- Just above Anyport
					{ 36.0, 72.0, DRUSTVAR },
					{ 33.0, 23.0, DRUSTVAR },
					{ 63.0, 35.0, DRUSTVAR },
					{ 46.0, 38.0, DRUSTVAR },	-- Highroad Pass, SE of Aroms Stand
					-- Voldun
					{ 54.0, 41.0, VOLDUN },	-- Behind a rock E of Darkwood Shoal
					{ 50.0, 64.0, VOLDUN },	-- East side of Atul'aman
					{ 49.0, 84.0, VOLDUN },	-- Redrock Lowlands
					{ 41.0, 64.0, VOLDUN },	-- West of Goldtusk Inn
					{ 37.0, 87.0, VOLDUN },	-- On the ledge, N of island off south coast
					-- Tiragarde Sound
					{ 85.0, 77.0, TIRAGARDE_SOUND },	-- Dock north of Freehold dungeon
					{ 40.0, 24.0, TIRAGARDE_SOUND },
					-- #if AFTER 8.2.0
					{ 26.8, 36.6, NAZJATAR },
					{ 29.4, 45.2, NAZJATAR },
					{ 36.6, 27.8, NAZJATAR },
					{ 37.4, 68.0, NAZJATAR },
					{ 37.8, 19.6, NAZJATAR },
					{ 42.0, 47.0, NAZJATAR },
					{ 43.8, 86.4, NAZJATAR },
					{ 43.8, 86.6, NAZJATAR },
					{ 44.4, 16.4, NAZJATAR },
					{ 47.4, 75.8, NAZJATAR },
					{ 50.4, 31.2, NAZJATAR },
					{ 59.2, 15.0, NAZJATAR },
					{ 62.4, 57.2, NAZJATAR },
					{ 64.6, 46.8, NAZJATAR },
					{ 69.8, 24.4, NAZJATAR },
					{ 77.4, 25.4, NAZJATAR },
					{ 77.6, 25.4, NAZJATAR },
					{ 79.0, 51.8, NAZJATAR },
					-- #endif
				},
				["g"] = {
					i(167889, {	-- Pattern: Azure Silk Cloak
						["cost"] = {{"i", EMBROIDERED_DEEP_SEA_SATIN, 50}}
					}),
					i(167881, {	-- Pattern: Belt of the Archmage
						["cost"] = {{"i", EMBROIDERED_DEEP_SEA_SATIN, 150}}
					}),
					i(167887, {	-- Pattern: Cindercloth Gloves
						["cost"] = {{"i", EMBROIDERED_DEEP_SEA_SATIN, 75}}
					}),
					i(167886, {	-- Pattern: Cindercloth Vest
						["cost"] = {{"i", EMBROIDERED_DEEP_SEA_SATIN, 75}}
					}),
					i(167882, {	-- Pattern: Cloak of Warding
						["cost"] = {{"i", EMBROIDERED_DEEP_SEA_SATIN, 75}}
					}),
					i(167883, {	-- Pattern: Felcloth Gloves
						["cost"] = {{"i", EMBROIDERED_DEEP_SEA_SATIN, 100}}
					}),
					i(167890, {	-- Pattern: Icy Cloak
						["cost"] = {{"i", EMBROIDERED_DEEP_SEA_SATIN, 50}}
					}),
					i(167884, {	-- Pattern: Inferno Gloves
						["cost"] = {{"i", EMBROIDERED_DEEP_SEA_SATIN, 100}}
					}),
					i(167885, {	-- Pattern: Mooncloth Gloves
						["cost"] = {{"i", EMBROIDERED_DEEP_SEA_SATIN, 100}}
					}),
					i(167888, {	-- Pattern: Robe of Winter Night
						["cost"] = {{"i", EMBROIDERED_DEEP_SEA_SATIN, 100}}
					}),
					i(167880, {	-- Pattern: Robes of Arcana
						["cost"] = {{"i", EMBROIDERED_DEEP_SEA_SATIN, 100}}
					}),
				},
			}),
		}),
	})),
	expansion(EXPANSION.DF, bubbleDownSelf({ ["timeline"] = { ADDED_10_0_2_LAUNCH } }, {
		n(ACHIEVEMENTS, bubbleDownSelf({ ["timeline"] = { ADDED_10_1_7 } }, {
			ach(18902, {	-- Uncertified Nurse
				crit(61745, {
					["providers"] = {
						{ "i", 194048 },	-- Wildercloth Bandage Bronze
						{ "i", 194049 },	-- Wildercloth Bandage Silver
						{ "i", 194050 },	-- Wildercloth Bandage Gold
					},
				}),
			}),
		})),
		n(QUESTS, {
			q(72249, {	-- Dragon Isles Tailoring
				["description"] = "This quest can only be picked up PRIOR to learning Dragon Isles Tailoring.",
				["provider"] = { "n", 192565 },	-- Zayn Starmaker <Tailoring Trainer>
				["coord"] = { 75.8, 33.2, THE_WAKING_SHORES },
				["lockCriteria"] = { 1,
					"spellID", 366258,	-- Dragon Isles Tailoring
					"questID", 70366,	-- Dragon Isles Tailoring
				},
			}),
			q(70366, {	-- Dragon Isles Tailoring
				["description"] = "This quest can only be picked up PRIOR to learning Dragon Isles Tailoring.",
				["provider"] = { "n", 191894 },	-- Krillonn
				["coord"] = { 61.3, 70.1, THE_WAKING_SHORES },
				["lockCriteria"] = { 1,
					"spellID", 366258,	-- Dragon Isles Tailoring
					"questID", 72249,	-- Dragon Isles Tailoring
				},
			}),
			q(70027, {	-- Artisan's Supply: Surveyor's Cloth Bands
				["provider"] = { "n", 191894 },	-- Krillonn <Tailoring Trainer>
				["coord"] = { 61.4, 70.0, THE_WAKING_SHORES },
				["cost"] = {{ "i", 193497, 2 }},	-- 2xSurveyor's Cloth Bands
				["_drop"] = { "g" },
			}),
			q(70260, {	-- Hidden Profession Master Tailoring
				["name"] = "Hidden Profession Master: Tailoring",
				["description"] = "Above the Rostrum of Transformation, on a ledge.",
				["provider"] = { "n", 194845 },	-- Elysa Raywinder
				["coord"] = { 27.9,45.6, VALDRAKKEN },
			}),
			q(70194, {	-- Specialized Secrets: Tailoring
				["sourceQuests"] = { 69979 },	-- A Worthy Hunt
				["provider"] = { "n", 193110 },	-- Khadin
				["coord"] = { 51.8, 33.0, OHNAHRAN_PLAINS },
				["cost"] = {{ "i", 191784, 1 }},	-- Dragon Shard of Knowledge
				["isRepeatable"] = true,
				["g"] = {
					i(190456),	-- Artisan's Mettle
				},
			}),
		}),
		n(QUESTS, sharedData({
			["maxReputation"] = { FACTION_ARTISANS_CONSORTIUM_DRAGON_ISLES_BRANCH, 5 },
			["isWeekly"] = true,
			["g"] = {
				i(198609),	-- Tailoring Examples
			},
		},{
			q(66953, {	-- All Things Fluffy
				["description"] = "Requires 25 Skill.",
				["provider"] = { "n", 191000 },	-- Dothenos
				["coord"] = { 36.6, 62.6, VALDRAKKEN },
				["g"] = {
					i(194450),	-- Fluffy Fur (QI!)
				},
			}),
			q(66899, {	-- Fuzzy Legs
				["description"] = "Requires 25 Skill.",
				["provider"] = { "n", 191000 },	-- Dothenos
				["coord"] = { 36.6, 62.6, VALDRAKKEN },
				["g"] = {
					i(193865),	-- Fuzzy Legs (QI!)
				},
			}),
			q(72410, {	-- Pincers and Needles
				["description"] = "Requires 25 Skill.",
				["provider"] = { "n", 191001 },	-- Gnoklin Quirkcoil
				["coord"] = { 36.8, 62.8, VALDRAKKEN },
				["g"] = {
					i(201825),	-- Pointy Pincer (QI!)
				},
			}),
			q(70595, {	-- Tailoring Services Requested
				["description"] = "Requires 25 Skill.",
				["provider"] = { "n", 194026 },	-- Azley
				["coord"] = { 35.6, 58.8, VALDRAKKEN },
			}),
			q(66952, {	-- The Gnoll's Clothes
				["description"] = "Requires 25 Skill.",
				["provider"] = { "n", 191000 },	-- Dothenos
				["coord"] = { 36.6, 62.6, VALDRAKKEN },
				["g"] = {
					i(194328),	-- Gnoll-Worn Cloth (QI!)
				},
			}),

			-- Requires 45 Skill
			q(70587, {	-- A Knapsack Problem
				["description"] = "Requires 45 Skill.",
				["provider"] = { "n", 193649 },	-- Threadfinder Fulafong
				["coord"] = { 31.8, 67.6, VALDRAKKEN },
			}),
			q(70586, {	-- Sew Many Cooks
				["description"] = "Requires 45 Skill.",
				["provider"] = { "n", 193649 },	-- Threadfinder Fulafong
				["coord"] = { 31.8, 67.6, VALDRAKKEN },
			}),
			q(70572, {	-- The Cold Does Bother Them, Actually
				["description"] = "Requires 45 Skill.",
				["provider"] = { "n", 193649 },	-- Threadfinder Fulafong
				["coord"] = { 31.8, 67.6, VALDRAKKEN },
			}),
			q(70582, {	-- Weave Well Enough Alone
				["description"] = "Requires 45 Skill.",
				["provider"] = { "n", 193649 },	-- Threadfinder Fulafong
				["coord"] = { 31.8, 67.6, VALDRAKKEN },
			}),

			-- Requires ?? Skill - Patch 10.1.0.
			q(75407, {	-- Silk Scavenging
				["provider"] = { "n", 203516 },	-- Kayann
				["coord"] = { 36.5, 62.5, VALDRAKKEN },
				["timeline"] = { ADDED_10_1_0 },
				["g"] = {
					i(204817),	-- Underlight Cocoon Fibers (QI!)
				},
			}),
			q(75600, {	-- Silk's Silk
				["provider"] = { "n", 203516 },	-- Kayann
				["coord"] = { 36.5, 62.5, VALDRAKKEN },
				["timeline"] = { ADDED_10_1_0 },
			}),
			-- Patch 10.2.0
			q(77949, {	-- Fashion Feathers
				["provider"] = { "n", 210162 },	-- Magnolia Oaken
				["coord"] = { 36.8, 63.1, VALDRAKKEN },
				["timeline"] = { ADDED_10_2_0 },
				["g"] = {
					i(209021),	-- Shed Great Feathers (QI!)
				},
			}),
			q(77947, {	-- Primalist Fashion
				["provider"] = { "n", 210162 },	-- Magnolia Oaken
				["coord"] = { 36.8, 63.1, VALDRAKKEN },
				["timeline"] = { ADDED_10_2_0 },
				["g"] = {
					i(208956),	-- Intact Primalist Garb (QI!)
				},
			}),
		})),
		filter(RECIPES, {
			["description"] = "These are learned by specialization.",
			["g"] = sharedData({ ["cost"] = {{ "c", DF_TAILORING_KNOWLEDGE, 1 }}, }, {
				r(376556),	-- Azureweave Bolt
				r(376502),	-- Azureweave Mantle
				r(376500),	-- Azureweave Robe
				r(376557),	-- Chronocloth Bolt
				r(376503),	-- Chronocloth Gloves
				r(376504),	-- Chronocloth Leggings
				r(376546),	-- Dragoncloth Tailoring Vestments
				r(376569),	-- Market Tent
				r(376513),	-- Vibrant Wildercloth Handwraps
				r(376512),	-- Vibrant Wildercloth Slippers
				r(376514),	-- Vibrant Wildercloth Headcover
				r(376510),	-- Vibrant Wildercloth Shawl
				r(376511),	-- Vibrant Wildercloth Vestments
				r(376515),	-- Vibrant Wildercloth Slacks
				r(376516),	-- Vibrant Wildercloth Shoulderspikes
				r(376517),	-- Vibrant Wildercloth Girdle
				r(376518),	-- Vibrant Wildercloth Wristwraps
			}),
		}),
		n(TREASURES, {
			o(402868, bubbleDownSelf({ ["timeline"] = { ADDED_10_1_0 } }, {	-- Abandoned Reserve Chute
				["coord"] = { 47.2, 48.6, ZARALEK_CAVERN },
				["questID"] = 76102,
				["g"] = {
					i(206019),	-- Abandoned Reserve Chute
				},
			})),
			o(380763, {	-- Ancient Dragonweave Loom
				["description"] = "Interact with the loom and complete the minigame to be awared this treasure.",
				["questID"] = 70372,
				["coord"] = { 58.6, 45.8, THALDRASZUS },
				["g"] = {
					i(201019),	-- Ancient Dragonweave Bolt
				},
			}),
			o(380597, {	-- Battle Hardened Centaur Carpet
				["questID"] = 70295,
				["coord"] = { 35.3, 40.1, OHNAHRAN_PLAINS },
				["g"] = {
					i(198692),	-- Noteworthy Scrap of Carpet
				},
			}),
			o(380583, {	-- Decaying Brackenhide Blanket
				["questID"] = 70284,
				["coord"] = { 16.2, 38.8, THE_AZURE_SPAN },
				["g"] = {
					i(198680),	-- Decaying Brackenhide Blanket
				},
			}),
			o(411171, bubbleDownSelf({ ["timeline"] = { ADDED_10_2_0 } }, {	-- Exceedingly Soft Wildercloth
				["coord"] = { 53.2, 27.9, EMERALD_DREAM },
				["questID"] = 78414,
				["g"] = {
					i(210461),	-- Exceedingly Soft Wildercloth
				},
			})),
			o(402887, bubbleDownSelf({ ["timeline"] = { ADDED_10_1_0 } }, {	-- Exquisitely Embroidered Banner
				["coord"] = { 44.5, 15.7, ZARALEK_CAVERN },
				["questID"] = 76116,
				["g"] = {
					i(206030),	-- Exquisitely Embroidered Banner
				},
			})),
			o(380549, {	-- Intriguing Bolt of Blue Cloth
				["questID"] = 70267,
				["coord"] = { 40.7, 54.9, THE_AZURE_SPAN },
				["g"] = {
					i(198662),	-- Intriguing Bolt of Blue Cloth
				},
			}),
			o(380607, {	-- Itinerant Singed Fabric
				["questID"] = 70304,
				["coord"] = { 24.9, 69.7, THE_WAKING_SHORES },
				["g"] = {
					i(198702),	-- Itinerant Singed Fabric
				},
			}),
			o(380588, {	-- Miniature Bronze Dragonflight Banner
				["questID"] = 70288,
				["coord"] = { 60.5, 79.7, THALDRASZUS },
				["g"] = {
					i(198684),	-- Miniature Bronze Dragonflight Banner
				},
			}),
			o(380604, {	-- Mysterious Banner
				["questID"] = 70302,
				["coord"] = { 74.7, 37.9, THE_WAKING_SHORES },
				["g"] = {
					i(198699),	-- Mysterious Banner
				},
			}),
			o(411176, bubbleDownSelf({ ["timeline"] = { ADDED_10_2_0 } }, {	-- Plush Pillow
				["coord"] = { 49.8, 61.4, EMERALD_DREAM },
				["questID"] = 78415,
				["g"] = {
					i(210462),	-- Plush Pillow
				},
			})),
			o(380608, {	-- Silky Surprise
				["description"] = "Interact with the Catnip Frond, gather 5 Catnip Leaves and throw them at the Playful Prowler. Then the treasure will appear.",
				["questID"] = 70303,
				["coord"] = { 66.1, 52.9, OHNAHRAN_PLAINS },
				["crs"] = { 194873 },	-- Playful Prowler
				["g"] = {
					i(201020),	-- Silky Surprise
				},
			}),
			o(411177, bubbleDownSelf({ ["timeline"] = { ADDED_10_2_0 } }, {	-- Snuggle Buddy
				["coord"] = { 40.7, 86.1, EMERALD_DREAM },
				["questID"] = 78416,
				["g"] = {
					i(210463),	-- Snuggle Buddy
				},
			})),
			o(402878, bubbleDownSelf({ ["timeline"] = { ADDED_10_1_0 } }, {	-- Used Medical Wrap Kit
				["coord"] = { 59.1, 73.1, ZARALEK_CAVERN },
				["questID"] = 76110,
				["g"] = {
					i(206025),	-- Used Medical Wrap Kit
				},
			})),
		}),
		n(WEEKLY_PROFESSION_KNOWLEDGE, sharedData({
			["isWeekly"] = true,
			["g"] = {
				currency(DF_TAILORING_KNOWLEDGE),
			},
		},{
			i(198609),	-- Tailoring Examples
			q(74115, {	-- DF Inscription Order: Tailoring
				["name"] = "DF Inscription Order: Tailoring",
				["description"] = "Requires a crafting order from Inscription.",
				["provider"] = { "i", 194698 },	-- Draconic Treatise on Tailoring
			}),
			q(66386, {	-- DF Weekly Tailoring Knowledgepoint #1
				["name"] = "DF Tailoring Treasure #1",
				["provider"] = { "i", 193898 },	-- Umbral Bone Needle
			}),
			q(66387, {	-- DF Weekly Tailoring Knowledgepoint #2
				["name"] = "DF Tailoring Treasure #2",
				["provider"] = { "i", 193899 },	-- Primalweave Spindle
			}),
			q(70525, {	-- DF Weekly Tailoring Knowledgepoint #3
				["name"] = "DF Tailoring Drop #1: Beast Humanoid",
				["description"] = "Drops from any beastlike Humanoid.\nCoordinates link to the spot(s) we found best.",
				["crs"] = {
					192500,	-- Fetid Slogger
					192506,	-- Hyena Tender
				},
				["coords"] = {
					{ 56.6, 29.2, THALDRASZUS },
					{ 57.0, 30.6, THALDRASZUS },
				},
				["provider"] = { "i", 198978 },	-- Stupidly Effective Stitchery
			}),
			q(70524, {	-- DF Weekly Tailoring Knowledgepoint #4
				["name"] = "DF Tailoring Drop #2: Ohn'ahran Humanoid",
				["description"] = "Drops from any Ohn'ahran Humanoid.\nCoordinates link to the spot(s) we found best.",
				["crs"] = {
					193840,	-- Nokhud Raider
				},
				["coords"] = {
					{ 87.0, 51.4, OHNAHRAN_PLAINS },
					{ 85.0, 55.8, OHNAHRAN_PLAINS },
				},
				["provider"] = { "i", 198977 },	-- Ohn'arhan Weave
			}),
		})),
	})),
	expansion(EXPANSION.TWW, bubbleDownSelf({ ["timeline"] = { ADDED_11_0_2 } }, {
		n(QUESTS, sharedData({
			["isWeekly"] = true,
			["maxReputation"] = { FACTION_ARTISANS_CONSORTIUM_DRAGON_ISLES_BRANCH, 5 },
			["g"] = {
				i(228779),	-- Algari Tailor's Notebook
			},
		},{
			q(84132, {	-- Tailoring Services Requested
				["provider"] = { "n", 228177 },	-- Kala Clayhoof
				["coord"] = { 59.2, 55.2, DORNOGAL },
			}),
		})),
		filter(RECIPES, {
			["description"] = "These are learned by specialization.",
			["g"] = sharedData({ ["cost"] = {{ "c", TWW_TAILORING_KNOWLEDGE, 1 }} }, {
				r(446940),	-- Consecrated Cloak
				r(446939),	-- Consecrated Cord
				r(446938),	-- Consecrated Cuffs
				r(446945),	-- Consecrated Gloves
				r(446941),	-- Consecrated Hood
				r(446943),	-- Consecrated Leggings
				r(446944),	-- Consecrated Mantle
				r(446942),	-- Consecrated Robe
				r(446937),	-- Consecrated Slippers
				r(446935),	-- Cool Sunset Bracers
				r(446928),	-- Dawnweave Bolt
				r(446977),	-- Dawnweave Reagent Bag
				r(447001),	-- Daybreak Spellthread
				r(446979),	-- Duskweave Bag
				r(446927),	-- Duskweave Bolt
				r(446932),	-- Gloves of the Woven Dusk
				r(446930),	-- Grips of the Woven Dawn
				r(446995),	-- Preserving Embroidery Thread
				r(446933),	-- Slippers of the Woven Dusk
				r(447000),	-- Sunset Spellthread
				r(454431),	-- The Severed Satchel
				r(446931),	-- Treads of the Woven Dawn
				r(446934),	-- Warm Sunrise Bracers
				r(446997),	-- Weavercloth Embroidery Thread
				r(446999),	-- Weavercloth Spellthread
			}),
		}),
		n(TREASURES, {
			o(455941, {	-- Arathi Rotary Cutter
				["coord"] = { 49.2, 62.3, HALLOWFALL },
				["questID"] = 83926,
				["g"] = {
					i(226352),	-- Arathi Rotary Cutter
				},
			}),
			o(455945, {	-- Dornogal Seam Ripper
				["coord"] = { 61.4, 18.6, DORNOGAL },
				["questID"] = 83922,
				["g"] = {
					i(226348),	-- Dornogal Seam Ripper
				},
			}),
			o(455944, {	-- Earthen Tape Measure
				["coord"] = { 56.2, 61.0, ISLE_OF_DORN },
				["questID"] = 83923,
				["g"] = {
					i(226349),	-- Earthen Tape Measure
				},
			}),
			o(455942, {	-- Eathen Sticher's Snips
				["coord"] = { 64.2, 60.2, THE_RINGING_DEEPS },
				["questID"] = 83925,
				["g"] = {
					i(226351),	-- Earthen Stitcher's Snips
				},
			}),
			o(455938, {	-- Nerubian's Pincushion
				["coord"] = { 50.2, 16.7, NERUBAR },
				["questID"] = 83929,
				["g"] = {
					i(226355),	-- Nerubian's Pincushion
				},
			}),
			o(455939, {	-- Nerubian Quilt
				["coord"] = { 53.2, 53.1, AZJ_KAHET },
				["questID"] = 83928,
				["g"] = {
					i(226354),	-- Nerubian Quilt
				},
			}),
			o(455940, {	-- Royal Outfitter's Protractor
				["coord"] = { 40.1, 68.1, HALLOWFALL },
				["questID"] = 83927,
				["g"] = {
					i(226353),	-- Royal Outfitter's Protractor
				},
			}),
			o(455943, {	-- Runed Earthen Pins
				["coord"] = { 48.8, 32.8, THE_RINGING_DEEPS },
				["questID"] = 83924,
				["g"] = {
					i(226350),	-- Runed Earthen Pins
				},
			}),
		}),
		n(WEEKLY_PROFESSION_KNOWLEDGE, sharedData({
			["isWeekly"] = true,
			["g"] = {
				currency(TWW_TAILORING_KNOWLEDGE),
			},
		},{
			q(83270, {	-- TWW Weekly Tailoring Knowledgepoint #1
				["name"] = "TWW Weekly Tailoring Treasure #1",
				["provider"] =  { "i", 225220 },	-- Chitin Needle
			}),
			q(83269, {	-- TWW Weekly Tailoring Knowledgepoint #2
				["name"] = "TWW Weekly Tailoring Treasure #2",
				["provider"] =  { "i", 225221 },	-- Spool of Webweave
			}),
		})),
	})),
})));

root(ROOTS.HiddenQuestTriggers, {
	expansion(EXPANSION.LEGION, bubbleDownSelf({ ["timeline"] = { ADDED_7_0_3_LAUNCH } }, {
		n(PROFESSIONS, {
			prof(TAILORING, {
				q(38976),	-- FLAG: Undying Silkweave Bracers
				q(38977),	-- FLAG: Undying Silkweave Cinch Crafted
				q(38978),	-- FLAG: Undying Silkweave Epaulets Crafted
				q(38979),	-- FLAG: Undying Silkweave Slippers Crafted
				q(38980),	-- FLAG: Undying Silkweave Gloves Crafted
				q(38981),	-- FLAG: Undying Silkweave Hood Crafted
				q(38982),	-- FLAG: Undying Silkweave Pantaloons Crafted
				q(38983),	-- FLAG: Undying Silkweave Robe Crafted
				q(47093),	-- Broken Shore - Choice: Tailoring
			}),
		}),
	})),
	expansion(EXPANSION.BFA, bubbleDownSelf({ ["timeline"] = { ADDED_8_1_5 } }, {
		n(PROFESSIONS, {
			prof(TAILORING, {
				q(55239),	-- During quest objective of Seam Stress (55214)
			}),
		}),
	})),
});

-- #if ANYCLASSIC
local applytraining = function(g)
	-- #if NOT ANYCLASSIC
	-- TODO: Solve this for classic, until then, only apply the filter to Retail.
	bubbleDown({ ["u"] = TRAINING }, g);	-- Training Recipes / Unlearnable
	-- #endif
	return g;
end

-- Bloodied Crafted Gear was added with Cataclysm and then removed from the game after Firelands was released.
-- #if ANYCLASSIC
local BLOODIED_ONUPDATE = [[function(t)
	if _.Settings:GetUnobtainableFilter(]] .. CATA_PHASE_RAGE_OF_THE_FIRELANDS .. [[) then
		t.u = ]] .. REMOVED_FROM_GAME .. [[;
		t.rwp = nil;
	else
		t.u = ]] .. CATA_PHASE_ONE .. [[;
		t.rwp = 40200;
	end
end]];
-- #endif
local function bloodied(t)
	-- #if CATA
	t.timeline = { ADDED_4_0_3_LAUNCH, REMOVED_5_0_4 };
		-- #if ANYCLASSIC
		t.OnUpdate = BLOODIED_ONUPDATE;
		-- #endif
	-- #else
	t.timeline = { ADDED_4_0_3_LAUNCH, REMOVED_4_2_0 };
	-- #endif
	return t;
end

local function firelands(t)
	t.timeline = { ADDED_4_2_0 };
	return applyclassicphase(CATA_PHASE_RAGE_OF_THE_FIRELANDS, t);
end
local function dragonsoul(t)
	t.timeline = { ADDED_4_3_0 };
	return applyclassicphase(CATA_PHASE_HOUR_OF_TWILIGHT, t);
end


profession(TAILORING, {
	-- #if BEFORE 4.0.1.12984
	applyclassicphase(TBC_PHASE_ONE, prof(26798, {	-- Mooncloth Tailoring
		["description"] = "These items can only be crafted by Tailorings that have completed the Becoming a Mooncloth Tailor quest in Shattrath.\n\nNOTE: You may only have one of these specializations active per character.",
		["sourceQuest"] = 10831,	-- Becoming a Mooncloth Tailor
		["groups"] = {
			recipe(26760),	-- Primal Mooncloth Belt
			recipe(26762),	-- Primal Mooncloth Robe
			recipe(26761),	-- Primal Mooncloth Shoulders
		},
	})),
	applyclassicphase(TBC_PHASE_ONE, prof(26801, {	-- Shadoweave Tailoring
		["description"] = "These items can only be crafted by Tailorings that have completed the Becoming a Shadoweave Tailor quest in Shattrath.\n\nNOTE: You may only have one of these specializations active per character.",
		["sourceQuest"] = 10833,	-- Becoming a Shadoweave Tailor
		["groups"] = {
			recipe(26756),	-- Frozen Shadoweave Shoulders
			recipe(26758),	-- Frozen Shadoweave Robe
			recipe(26757),	-- Frozen Shadoweave Boots
		},
	})),
	applyclassicphase(TBC_PHASE_ONE, prof(26797, {	-- Spellfire Tailoring
		["description"] = "These items can only be crafted by Tailorings that have completed the Becoming a Spellfire Tailor quest in Shattrath.\n\nNOTE: You may only have one of these specializations active per character.",
		["sourceQuest"] = 10832,	-- Becoming a Spellfire Tailor
		["groups"] = {
			recipe(26752),	-- Spellfire Belt
			recipe(26753),	-- Spellfire Gloves
			recipe(26754),	-- Spellfire Robe
		},
	})),
	-- #endif
	expansion(EXPANSION.CLASSIC, {
		-- #if AFTER SHADOWLANDS
		{
			["name"] = "Optional Reagents",
			["categoryID"] = 1504,
			["groups"] = {
				{
					["name"] = "Relic of the Past I",
					["recipeID"] = 330222
				},
				{
					["name"] = "Relic of the Past II",
					["recipeID"] = 330223
				},
				{
					["name"] = "Relic of the Past III",
					["recipeID"] = 330224
				},
				{
					["name"] = "Relic of the Past IV",
					["recipeID"] = 330225
				},
				{
					["name"] = "Relic of the Past V",
					["recipeID"] = 330226
				}
			}
		},
		-- #endif
		{
			["name"] = "Materials",
			["categoryID"] = 230,
			["groups"] = {
				{
					["name"] = "Bolt of Linen Cloth",
					["recipeID"] = 2963
				},
				{
					["name"] = "Bolt of Mageweave",
					["recipeID"] = 3865
				},
				{
					["name"] = "Bolt of Runecloth",
					["recipeID"] = 18401
				},
				{
					["name"] = "Bolt of Silk Cloth",
					["recipeID"] = 3839
				},
				{
					["name"] = "Bolt of Woolen Cloth",
					["recipeID"] = 2964
				},
				applyclassicphase(PHASE_ONE_DIREMAUL, {
					["name"] = "Gordok Ogre Suit",
					["timeline"] = { REMOVED_4_0_3, ADDED_10_1_5 },
					["recipeID"] = 22813
				}),
				{
					["name"] = "Mooncloth",
					["recipeID"] = 18560
				}
			}
		},
		{
			["name"] = "Bags",
			["categoryID"] = 233,
			["groups"] = {
				applyclassicphase(PHASE_FIVE_RECIPES, {
					["name"] = "Big Bag of Enchantment",
					["recipeID"] = 27660,
				}),
				{
					["name"] = "Black Silk Pack",
					["recipeID"] = 6695,
					["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
				},
				{
					["name"] = "Bottomless Bag",
					["recipeID"] = 18455
				},
				applyclassicphase(PHASE_FIVE, {
					["name"] = "Cenarion Herb Bag",
					["recipeID"] = 27724,
				}),
				{
					["name"] = "Core Felcloth Bag",
					["recipeID"] = 26087
				},
				{
					["name"] = "Enchanted Mageweave Pouch",
					["recipeID"] = 27658
				},
				applyclassicphase(PHASE_FIVE_RECIPES, {
					["name"] = "Enchanted Runecloth Bag",
					["recipeID"] = 27659,
				}),
				{
					["name"] = "Felcloth Bag",
					["timeline"] = { REMOVED_4_0_1, ADDED_10_1_5 },
					["recipeID"] = 26086,
				},
				{
					["name"] = "Green Silk Pack",
					["recipeID"] = 6693
				},
				{
					["name"] = "Green Woolen Bag",
					["recipeID"] = 3758
				},
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_FOUR, {
					["name"] = "Leather-Reinforced Runecloth Bag",
					["timeline"] = { ADDED_1_15_3 },
					["recipeID"] = 461727
				}),
				-- #endif
				{
					["name"] = "Linen Bag",
					["recipeID"] = 3755
				},
				{
					["name"] = "Mageweave Bag",
					["recipeID"] = 12065
				},
				{
					["name"] = "Mooncloth Bag",
					["recipeID"] = 18445
				},
				{
					["name"] = "Red Linen Bag",
					["recipeID"] = 6686
				},
				{
					["name"] = "Red Mageweave Bag",
					["recipeID"] = 12079
				},
				{
					["name"] = "Red Woolen Bag",
					["recipeID"] = 6688
				},
				{
					["name"] = "Runecloth Bag",
					["recipeID"] = 18405
				},
				applyclassicphase(PHASE_FIVE, {
					["name"] = "Satchel of Cenarius",
					["recipeID"] = 27725,
				}),
				{
					["name"] = "Small Silk Pack",
					["recipeID"] = 3813
				},
				{
					["name"] = "Soul Pouch",
					["recipeID"] = 26085
				},
				{
					["name"] = "Woolen Bag",
					["recipeID"] = 3757
				}
			}
		},
		{
			["name"] = "Hats & Hoods",
			["categoryID"] = 234,
			["groups"] = {
				{
					["name"] = "Admiral's Hat",
					["recipeID"] = 12081
				},
				{
					["name"] = "Azure Silk Hood",
					["recipeID"] = 8760
				},
				{
					["name"] = "Black Mageweave Headband",
					["recipeID"] = 12072
				},
				{
					["name"] = "Dreamweave Circlet",
					["recipeID"] = 12092
				},
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_TWO, {
					["name"] = "Enchanter's Cowl",
					["timeline"] = { ADDED_1_15_1 },
					["recipeID"] = 439102
				}),
				-- #endif
				{
					["name"] = "Enchanter's Cowl",
					-- #if SEASON_OF_DISCOVERY
					["timeline"] = { REMOVED_1_15_1 },
					-- #endif
					["recipeID"] = 3857
				},
				{
					["name"] = "Felcloth Hood",
					["recipeID"] = 18442
				},
				{
					["name"] = "Mooncloth Circlet",
					["recipeID"] = 18452
				},
				{
					["name"] = "Red Mageweave Headband",
					["recipeID"] = 12084
				},
				{
					["name"] = "Runecloth Headband",
					["recipeID"] = 18444
				},
				{
					["name"] = "Shadow Hood",
					["recipeID"] = 3858
				},
				{
					["name"] = "Shadoweave Mask",
					["timeline"] = { REMOVED_4_0_3, ADDED_7_3_0 },
					["recipeID"] = 12086
				},
				{
					["name"] = "Silk Headband",
					["recipeID"] = 8762
				},
				applyclassicphase(PHASE_FIVE_CATCH_UP, {
					["name"] = "Sylvan Crown",
					["recipeID"] = 28481,
				}),
				{
					["name"] = "White Bandit Mask",
					["recipeID"] = 12059
				},
				{
					["name"] = "Wizardweave Turban",
					["recipeID"] = 18450
				}
			}
		},
		{
			["name"] = "Shoulders",
			["categoryID"] = 235,
			["groups"] = {
				applyclassicphase(PHASE_THREE_RECIPES, {
					["name"] = "Argent Shoulders",
					["recipeID"] = 23665,
				}),
				{
					["name"] = "Azure Shoulders",
					["recipeID"] = 8795
				},
				{
					["name"] = "Black Mageweave Shoulders",
					["recipeID"] = 12074
				},
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_TWO, {
					["timeline"] = { ADDED_1_15_1 },
					["name"] = "Crimson Silk Shoulders",
					["recipeID"] = 439093
				}),
				{
					["timeline"] = { REMOVED_1_15_1 },
					["name"] = "Crimson Silk Shoulders",
					["recipeID"] = 8793
				},
				-- #else
				{
					["name"] = "Crimson Silk Shoulders",
					["recipeID"] = 8793
				},
				-- #endif
				{
					["name"] = "Double-stitched Woolen Shoulders",
					["recipeID"] = 3848
				},
				{
					["name"] = "Felcloth Shoulders",
					["recipeID"] = 18453
				},
				{
					["name"] = "Flarecore Mantle",
					["recipeID"] = 20848
				},
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_THREE, recipe(446193, {	-- Fractured Mind Pauldrons
					["timeline"] = { ADDED_1_15_2 },
				})),
				-- #endif
				{
					["name"] = "Green Silken Shoulders",
					["recipeID"] = 8774
				},
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_ONE, {
					["name"] = "Invoker's Mantle",
					["recipeID"] = 435848
				}),
				applyclassicphase(SOD_PHASE_THREE, recipe(446194, {	-- Mantle of Insanity
					["timeline"] = { ADDED_1_15_2 },
				})),
				-- #endif
				applyclassicphase(PHASE_THREE_RECIPES, {
					["name"] = "Mantle of the Timbermaw",
					["recipeID"] = 23663,
				}),
				{
					["name"] = "Mooncloth Shoulders",
					["recipeID"] = 18448
				},
				{
					["name"] = "Red Mageweave Shoulders",
					["recipeID"] = 12078
				},
				{
					["name"] = "Reinforced Woolen Shoulders",
					["recipeID"] = 3849
				},
				{
					["name"] = "Runecloth Shoulders",
					["recipeID"] = 18449
				},
				{
					["name"] = "Shadoweave Shoulders",
					["recipeID"] = 12076
				},
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_THREE, recipe(446195, {	-- Shoulderpads of the Deranged
					["timeline"] = { ADDED_1_15_2 },
				})),
				-- #endif
				applyclassicphase(PHASE_FIVE_CATCH_UP, {
					["name"] = "Sylvan Shoulders",
					["recipeID"] = 28482,
				})
			}
		},
		{
			["name"] = "Robes & Tunics",
			["categoryID"] = 236,
			["groups"] = {
				{
					["name"] = "Azure Silk Vest",
					["recipeID"] = 3859
				},
				{
					["name"] = "Barbaric Linen Vest",
					["recipeID"] = 2395
				},
				{
					["name"] = "Black Mageweave Robe",
					["recipeID"] = 12050
				},
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_TWO, {
					["timeline"] = { ADDED_1_15_1 },
					["name"] = "Black Mageweave Vest",
					["recipeID"] = 439086
				}),
				{	--
					["timeline"] = { REMOVED_1_15_1 },
					["name"] = "Black Mageweave Vest",
					["recipeID"] = 12048
				},
				-- #else
				{
					["name"] = "Black Mageweave Vest",
					["recipeID"] = 12048
				},
				-- #endif
				applyclassicphase(PHASE_FOUR, {
					["name"] = "Bloodvine Vest",
					["timeline"] = { REMOVED_4_0_3, ADDED_10_0_7 },
					["recipeID"] = 24091,
				}),
				{
					["name"] = "Blue Linen Robe",
					["recipeID"] = 7633
				},
				{
					["name"] = "Blue Linen Vest",
					["recipeID"] = 7630
				},
				{
					["name"] = "Blue Overalls",
					["recipeID"] = 7639
				},
				{
					["name"] = "Brightcloth Robe",
					["recipeID"] = 18414
				},
				{
					["name"] = "Brown Linen Robe",
					["recipeID"] = 7623
				},
				{
					["name"] = "Brown Linen Vest",
					["recipeID"] = 2385
				},
				{
					["name"] = "Cindercloth Robe",
					["recipeID"] = 12069
				},
				{
					["name"] = "Cindercloth Vest",
					["recipeID"] = 18408
				},
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_TWO, {
					["timeline"] = { ADDED_1_15_1 },
					["name"] = "Crimson Silk Robe",
					["recipeID"] = 8802
				}),
				{
					["timeline"] = { REMOVED_1_15_1 },
					["name"] = "Crimson Silk Robe",
					["recipeID"] = 8802
				},
				-- #else
				{
					["name"] = "Crimson Silk Robe",
					["recipeID"] = 8802
				},
				-- #endif
				{
					["name"] = "Crimson Silk Vest",
					["recipeID"] = 8791
				},
				{
					["name"] = "Dreamweave Vest",
					["recipeID"] = 12070
				},
				{
					["name"] = "Earthen Vest",
					["recipeID"] = 8764
				},
				{
					["name"] = "Felcloth Robe",
					["recipeID"] = 18451
				},
				applyevent(EVENTS.LUNAR_FESTIVAL, {
					["name"] = "Festival Dress",
					["recipeID"] = 26403,
				}),
				applyevent(EVENTS.LUNAR_FESTIVAL, {
					["name"] = "Festival Suit",
					["recipeID"] = 26407,
				}),
				applyclassicphase(PHASE_THREE_RECIPES, {
					["name"] = "Flarecore Robe",
					["recipeID"] = 23666
				}),
				{
					["name"] = "Frostweave Robe",
					["recipeID"] = 18404
				},
				{
					["name"] = "Frostweave Tunic",
					["recipeID"] = 18403
				},
				{
					["name"] = "Ghostweave Vest",
					["recipeID"] = 18416
				},
				applyclassicphase(PHASE_SIX, {
					["name"] = "Glacial Vest",
					["timeline"] = { REMOVED_3_0_2 },
					["recipeID"] = 28207,
				}),
				{
					["name"] = "Gray Woolen Robe",
					["recipeID"] = 2403
				},
				{
					["name"] = "Greater Adept's Robe",
					["recipeID"] = 7643
				},
				{
					["name"] = "Green Silk Armor",
					["recipeID"] = 8784
				},
				applyevent(EVENTS.FEAST_OF_WINTER_VEIL, {
					["name"] = "Green Winter Clothes",
					["timeline"] = { ADDED_2_3_0 },
					["recipeID"] = 44950,
				}),
				{
					["name"] = "Green Woolen Vest",
					["recipeID"] = 2399
				},
				applyevent(EVENTS.FEAST_OF_WINTER_VEIL, {
					["name"] = "Haliscan Jacket",
					["timeline"] = { ADDED_2_4_2 },
					["recipeID"] = 50644
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_FOUR, {
					["name"] = "Incandescent Mooncloth Robe",
					["recipeID"] = 461708,
					["timeline"] = { ADDED_1_15_3 },
				}),
				-- #endif
				{
					["name"] = "Lesser Wizard's Robe",
					["recipeID"] = 6690
				},
				applyclassicphase(PHASE_ONE_DIREMAUL, {
					["name"] = "Mooncloth Robe",
					["recipeID"] = 22902,
					-- #if SEASON_OF_DISCOVERY
					["timeline"] = { REMOVED_1_15_3 },
					-- #endif
				}),
				{
					["name"] = "Mooncloth Vest",
					["recipeID"] = 18447
				},
				{
					["name"] = "Red Linen Robe",
					["recipeID"] = 2389
				},
				{
					["name"] = "Red Linen Vest",
					["recipeID"] = 7629
				},
				{
					["name"] = "Red Mageweave Vest",
					["recipeID"] = 12056
				},
				applyevent(EVENTS.FEAST_OF_WINTER_VEIL, {
					["name"] = "Red Winter Clothes",
					["timeline"] = { ADDED_2_3_0 },
					["recipeID"] = 44958,
				}),
				{
					["name"] = "Robe of Power",
					["recipeID"] = 8770
				},
				{
					["name"] = "Robe of the Archmage",
					["recipeID"] = 18457
				},
				{
					["name"] = "Robe of the Void",
					["timeline"] = { REMOVED_5_0_4 },
					["recipeID"] = 18458,
					-- #if TBC
					["classes"] = { WARLOCK },
					-- #endif
				},
				{
					["name"] = "Robe of Winter Night",
					["timeline"] = { REMOVED_4_0_3, ADDED_8_1_5 },
					["recipeID"] = 18436
				},
				{
					["name"] = "Robes of Arcana",
					["recipeID"] = 6692
				},
				{
					["name"] = "Runecloth Robe",
					["recipeID"] = 18406
				},
				{
					["name"] = "Runecloth Tunic",
					["recipeID"] = 18407
				},
				{
					["name"] = "Shadoweave Robe",
					["recipeID"] = 12055
				},
				{
					["name"] = "Simple Black Dress",
					["recipeID"] = 12077
				},
				{
					["name"] = "Simple Dress",
					["recipeID"] = 8465
				},
				applyclassicphase(PHASE_FIVE_CATCH_UP, {
					["name"] = "Sylvan Vest",
					["recipeID"] = 28480,
				}),
				{
					["name"] = "Truefaith Vestments",
					["recipeID"] = 18456
				},
				{
					["name"] = "Tuxedo Jacket",
					["recipeID"] = 12093
				},
				{
					["name"] = "White Linen Robe",
					["recipeID"] = 7624
				},
				{
					["name"] = "White Wedding Dress",
					["recipeID"] = 12091
				},
				{
					["name"] = "White Woolen Dress",
					["recipeID"] = 8467
				},
				{
					["name"] = "Wizardweave Robe",
					["recipeID"] = 18446
				}
			}
		},
		{
			["name"] = "Bracers",
			["categoryID"] = 237,
			["groups"] = {
				{
					["name"] = "Flarecore Wraps",
					["recipeID"] = 22759
				},
				applyclassicphase(PHASE_SIX, {
					["name"] = "Glacial Wrists",
					["timeline"] = { REMOVED_3_0_2 },
					["recipeID"] = 28209,
				}),
				{
					["name"] = "Green Linen Bracers",
					["recipeID"] = 3841
				},
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_ONE, {
					["name"] = "Phoenix Bindings",
					["recipeID"] = 428424
				}),
				-- #endif
			}
		},
		{
			["name"] = "Belts",
			["categoryID"] = 238,
			["groups"] = {
				{
					["name"] = "Azure Silk Belt",
					["recipeID"] = 8766
				},
				applyclassicphase(PHASE_ONE_DIREMAUL, {
					["name"] = "Belt of the Archmage",
					["recipeID"] = 22866,
					-- #if SEASON_OF_DISCOVERY
					["timeline"] = { REMOVED_1_15_3 },
					-- #endif
				}),
				{
					["name"] = "Crimson Silk Belt",
					["recipeID"] = 8772
				},
				{
					["name"] = "Earthen Silk Belt",
					["recipeID"] = 8797
				},
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_FOUR, {
					["name"] = "Embroidered Belt of the Archmage",
					["recipeID"] = 462282,
					["timeline"] = { ADDED_1_15_3 },
				}),
				-- #endif
				{
					["name"] = "Ghostweave Belt",
					["recipeID"] = 18410
				},
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_ONE, {
					["name"] = "Invoker's Cord",
					["recipeID"] = 435841
				}),
				-- #endif
				{
					["name"] = "Linen Belt",
					["recipeID"] = 8776
				},
				{
					["name"] = "Runecloth Belt",
					["recipeID"] = 18402
				},
				applyclassicphase(PHASE_THREE_SILITHUS_EXPEDITION_QUESTS, {
					["name"] = "Runed Stygian Belt",
					["recipeID"] = 24902,
				}),
				{
					["name"] = "Spider Belt",
					["recipeID"] = 3863
				},
				{
					["name"] = "Star Belt",
					["recipeID"] = 3864
				},
				applyclassicphase(PHASE_THREE_RECIPES, {
					["name"] = "Wisdom of the Timbermaw",
					["recipeID"] = 23662,
				}),
			}
		},
		{
			["name"] = "Gloves",
			["categoryID"] = 239,
			["groups"] = {
				{
					["name"] = "Azure Silk Gloves",
					["recipeID"] = 3854
				},
				{
					["name"] = "Black Mageweave Gloves",
					["recipeID"] = 12053
				},
				{
					["name"] = "Brightcloth Gloves",
					["recipeID"] = 18415
				},
				{
					["name"] = "Cindercloth Gloves",
					["recipeID"] = 18412
				},
				{
					["name"] = "Crimson Silk Gloves",
					["recipeID"] = 8804
				},
				{
					["name"] = "Dreamweave Gloves",
					["recipeID"] = 12067
				},
				applyclassicphase(PHASE_ONE_DIREMAUL, {
					["name"] = "Felcloth Gloves",
					["recipeID"] = 22867,
				}),
				{
					["name"] = "Flarecore Gloves",
					["recipeID"] = 20849
				},
				{
					["name"] = "Frostweave Gloves",
					["recipeID"] = 18411
				},
				{
					["name"] = "Ghostweave Gloves",
					["recipeID"] = 18413
				},
				applyclassicphase(PHASE_SIX, {
					["name"] = "Glacial Gloves",
					["timeline"] = { REMOVED_3_0_2 },
					["recipeID"] = 28205,
				}),
				{
					["name"] = "Gloves of Meditation",
					["recipeID"] = 3852
				},
				{
					["name"] = "Gloves of Spell Mastery",
					["recipeID"] = 18454
				},
				{
					["name"] = "Hands of Darkness",
					["recipeID"] = 8780
				},
				{
					["name"] = "Heavy Linen Gloves",
					["recipeID"] = 3840
				},
				{
					["name"] = "Heavy Woolen Gloves",
					["recipeID"] = 3843
				},
				applyclassicphase(PHASE_ONE_DIREMAUL, {
					["name"] = "Inferno Gloves",
					["recipeID"] = 22868,
				}),
				applyclassicphase(PHASE_ONE_DIREMAUL, {
					["name"] = "Mooncloth Gloves",
					["recipeID"] = 22869,
				}),
				{
					["name"] = "Phoenix Gloves",
					["recipeID"] = 3868
				},
				{
					["name"] = "Red Mageweave Gloves",
					["recipeID"] = 12066
				},
				{
					["name"] = "Runecloth Gloves",
					["recipeID"] = 18417
				},
				{
					["name"] = "Shadoweave Gloves",
					["recipeID"] = 12071
				},
				{
					["name"] = "Truefaith Gloves",
					["recipeID"] = 8782
				}
			}
		},
		{
			["name"] = "Pants",
			["categoryID"] = 240,
			["groups"] = {
				{
					["name"] = "Azure Silk Pants",
					["recipeID"] = 8758
				},
				{
					["name"] = "Black Mageweave Leggings",
					["recipeID"] = 12049
				},
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_TWO, {
					["timeline"] = { ADDED_1_15_1 },
					["name"] = "Black Mageweave Leggings",
					["recipeID"] = 439088
				}),
				{
					["timeline"] = { REMOVED_1_15_1 },
					["name"] = "Black Mageweave Leggings",
					["recipeID"] = 12049
				},
				-- #else
				{
					["name"] = "Black Mageweave Leggings",
					["recipeID"] = 12049
				},
				-- #endif
				applyclassicphase(PHASE_FOUR, {
					["name"] = "Bloodvine Leggings",
					["timeline"] = { REMOVED_4_0_3, ADDED_10_0_7 },
					["recipeID"] = 24092,
				}),
				{
					["name"] = "Brightcloth Pants",
					["recipeID"] = 18439
				},
				{
					["name"] = "Brown Linen Pants",
					["recipeID"] = 3914
				},
				{
					["name"] = "Cindercloth Pants",
					["recipeID"] = 18434
				},
				{
					["name"] = "Colorful Kilt",
					["recipeID"] = 12047
				},
				{
					["name"] = "Crimson Silk Pantaloons",
					["recipeID"] = 8799
				},
				{
					["name"] = "Felcloth Pants",
					["recipeID"] = 18419
				},
				applyclassicphase(PHASE_THREE_RECIPES, {
					["name"] = "Flarecore Leggings",
					["recipeID"] = 23667
				}),
				{
					["name"] = "Frostweave Pants",
					["recipeID"] = 18424
				},
				{
					["name"] = "Ghostweave Pants",
					["recipeID"] = 18441
				},
				applyclassicphase(TBC_PHASE_ONE, {
					["name"] = "Haliscan Pantaloons",
					["timeline"] = { ADDED_2_4_2 },
					["recipeID"] = 50647
				}),
				{
					["name"] = "Handstitched Linen Britches",
					["recipeID"] = 3842
				},
				{
					["name"] = "Heavy Woolen Pants",
					["recipeID"] = 3850
				},
				{
					["name"] = "Mooncloth Leggings",
					["recipeID"] = 18440
				},
				{
					["name"] = "Phoenix Pants",
					["recipeID"] = 3851
				},
				{
					["name"] = "Red Mageweave Pants",
					["recipeID"] = 12060
				},
				{
					["name"] = "Runecloth Pants",
					["recipeID"] = 18438
				},
				applyclassicphase(PHASE_THREE_SILITHUS_EXPEDITION_QUESTS, {
					["name"] = "Runed Stygian Leggings",
					["recipeID"] = 24901,
				}),
				{
					["name"] = "Shadoweave Pants",
					["recipeID"] = 12052
				},
				{
					["name"] = "Simple Kilt",
					["recipeID"] = 12046
				},
				{
					["name"] = "Simple Linen Pants",
					["recipeID"] = 12044
				},
				{
					["name"] = "Tuxedo Pants",
					["recipeID"] = 12089
				},
				{
					["name"] = "Wizardweave Leggings",
					["recipeID"] = 18421
				}
			}
		},
		{
			["name"] = "Boots",
			["categoryID"] = 241,
			["groups"] = {
				applyclassicphase(PHASE_THREE_RECIPES, {
					["name"] = "Argent Boots",
					["recipeID"] = 23664,
				}),
				{
					["name"] = "Black Mageweave Boots",
					["recipeID"] = 12073
				},
				applyclassicphase(PHASE_FOUR, {
					["name"] = "Bloodvine Boots",
					["timeline"] = { REMOVED_4_0_3, ADDED_10_0_7 },
					["recipeID"] = 24093,
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_TWO, {
					["timeline"] = { ADDED_1_15_1 },
					["name"] = "Boots of the Enchanter",
					["recipeID"] = 439097
				}),
				{
					["timeline"] = { REMOVED_1_15_1 },
					["name"] = "Boots of the Enchanter",
					["recipeID"] = 3860
				},
				-- #else
				{
					["name"] = "Boots of the Enchanter",
					["recipeID"] = 3860
				},
				-- #endif
				{
					["name"] = "Cindercloth Boots",
					["recipeID"] = 12088
				},
				applyclassicphase(TBC_PHASE_ONE, {
					["name"] = "Dress Shoes",
					["timeline"] = { ADDED_2_4_2 },
					["recipeID"] = 49677
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_ONE, {
					["name"] = "Extraplanar Spidersilk Boots",
					["recipeID"] = 429351
				}),
				-- #endif
				{
					["name"] = "Felcloth Boots",
					["recipeID"] = 18437
				},
				{
					["name"] = "Linen Boots",
					["recipeID"] = 2386
				},
				{
					["name"] = "Mooncloth Boots",
					["recipeID"] = 19435
				},
				{
					["name"] = "Red Woolen Boots",
					["recipeID"] = 3847
				},
				{
					["name"] = "Runecloth Boots",
					["recipeID"] = 18423
				},
				applyclassicphase(PHASE_THREE_SILITHUS_EXPEDITION_QUESTS, {
					["name"] = "Runed Stygian Boots",
					["recipeID"] = 24903,
				}),
				{
					["name"] = "Shadoweave Boots",
					["recipeID"] = 12082
				},
				{
					["name"] = "Simple Linen Boots",
					["recipeID"] = 12045
				},
				{
					["name"] = "Soft-soled Linen Boots",
					["recipeID"] = 3845
				},
				{
					["name"] = "Spider Silk Slippers",
					["recipeID"] = 3856
				},
				{
					["name"] = "Spidersilk Boots",
					["recipeID"] = 3855
				},
				{
					["name"] = "Woolen Boots",
					["recipeID"] = 2401
				}
			}
		},
		{
			["name"] = "Cloaks",
			["categoryID"] = 242,
			["groups"] = {
				{
					["name"] = "Azure Silk Cloak",
					["recipeID"] = 8786
				},
				{
					["name"] = "Brightcloth Cloak",
					["recipeID"] = 18420
				},
				{
					["name"] = "Cindercloth Cloak",
					["recipeID"] = 18418
				},
				{
					["name"] = "Cloak of Fire",
					["recipeID"] = 18422
				},
				applyclassicphase(PHASE_ONE_DIREMAUL, {
					["name"] = "Cloak of Warding",
					["recipeID"] = 22870,
				}),
				{
					["name"] = "Crimson Silk Cloak",
					["recipeID"] = 8789
				},
				applyclassicphase(PHASE_FIVE_CATCH_UP, {
					["name"] = "Gaea's Embrace",
					["recipeID"] = 28210,
				}),
				applyclassicphase(PHASE_SIX, {
					["name"] = "Glacial Cloak",
					["timeline"] = { REMOVED_3_0_2 },
					["recipeID"] = 28208,
				}),
				{
					["name"] = "Heavy Woolen Cloak",
					["recipeID"] = 3844
				},
				{
					["name"] = "Icy Cloak",
					["recipeID"] = 3862
				},
				{
					["name"] = "Linen Cloak",
					["recipeID"] = 2387
				},
				{
					["name"] = "Long Silken Cloak",
					["recipeID"] = 3861
				},
				{
					["name"] = "Pearl-clasped Cloak",
					["recipeID"] = 6521
				},
				{
					["name"] = "Reinforced Linen Cape",
					["recipeID"] = 2397
				},
				{
					["name"] = "Runecloth Cloak",
					["recipeID"] = 18409
				},
				applyclassicphase(WRATH_PHASE_ONE, {
					["name"] = "Spidersilk Drape",
					["timeline"] = { ADDED_3_1_0 },
					["recipeID"] = 63742
				}),
				{
					["name"] = "Woolen Cape",
					["recipeID"] = 2402
				}
			}
		},
		{
			["name"] = "Shirts",
			["categoryID"] = 243,
			["groups"] = {
				{
					["name"] = "Black Swashbuckler's Shirt",
					["recipeID"] = 3873
				},
				{
					["name"] = "Blue Linen Shirt",
					["recipeID"] = 2394
				},
				{
					["name"] = "Bright Yellow Shirt",
					["recipeID"] = 3869
				},
				{
					["name"] = "Brown Linen Shirt",
					["recipeID"] = 3915
				},
				{
					["name"] = "Dark Silk Shirt",
					["recipeID"] = 3870
				},
				{
					["name"] = "Formal White Shirt",
					["recipeID"] = 3871
				},
				{
					["name"] = "Gray Woolen Shirt",
					["recipeID"] = 2406
				},
				applyevent(EVENTS.FEAST_OF_WINTER_VEIL, {
					["name"] = "Green Holiday Shirt",
					["recipeID"] = 21945,
				}),
				{
					["name"] = "Green Linen Shirt",
					["recipeID"] = 2396
				},
				{
					["name"] = "Lavender Mageweave Shirt",
					["recipeID"] = 12075
				},
				{
					["name"] = "Orange Mageweave Shirt",
					["recipeID"] = 12061
				},
				{
					["name"] = "Orange Martial Shirt",
					["recipeID"] = 12064
				},
				{
					["name"] = "Pink Mageweave Shirt",
					["recipeID"] = 12080
				},
				{
					["name"] = "Red Linen Shirt",
					["recipeID"] = 2392
				},
				{
					["name"] = "Red Swashbuckler's Shirt",
					["recipeID"] = 8489
				},
				{
					["name"] = "Rich Purple Silk Shirt",
					["recipeID"] = 3872
				},
				{
					["name"] = "Stylish Blue Shirt",
					["recipeID"] = 7892
				},
				{
					["name"] = "Stylish Green Shirt",
					["recipeID"] = 7893
				},
				{
					["name"] = "Stylish Red Shirt",
					["recipeID"] = 3866
				},
				{
					["name"] = "Tuxedo Shirt",
					["recipeID"] = 12085
				},
				{
					["name"] = "White Linen Shirt",
					["recipeID"] = 2393
				},
				{
					["name"] = "White Swashbuckler's Shirt",
					["recipeID"] = 8483
				}
			}
		},
		-- #if AFTER BFA
		{
			["name"] = "Bandages",
			["categoryID"] = 1089,
			["groups"] = {
				{
					["name"] = "Heavy Linen Bandage",
					["recipeID"] = 3276
				},
				{
					["name"] = "Heavy Mageweave Bandage",
					["recipeID"] = 10841
				},
				{
					["name"] = "Heavy Runecloth Bandage",
					["recipeID"] = 18630
				},
				{
					["name"] = "Heavy Silk Bandage",
					["recipeID"] = 7929
				},
				{
					["name"] = "Heavy Wool Bandage",
					["recipeID"] = 3278
				},
				{
					["name"] = "Linen Bandage",
					["recipeID"] = 3275
				},
				{
					["name"] = "Mageweave Bandage",
					["recipeID"] = 10840
				},
				{
					["name"] = "Runecloth Bandage",
					["recipeID"] = 18629
				},
				{
					["name"] = "Silk Bandage",
					["recipeID"] = 7928
				},
				{
					["name"] = "Wool Bandage",
					["recipeID"] = 3277
				}
			}
		},
		-- #endif
	}),
	applyclassicphase(TBC_PHASE_ONE, expansion(EXPANSION.TBC, {
		-- #if AFTER SHADOWLANDS
		{
			["name"] = "Optional Reagents",
			["categoryID"] = 1505,
			["groups"] = {
				{
					["name"] = "Relic of the Past I",
					["recipeID"] = 330227
				},
				{
					["name"] = "Relic of the Past II",
					["recipeID"] = 330228
				},
				{
					["name"] = "Relic of the Past III",
					["recipeID"] = 330229
				},
				{
					["name"] = "Relic of the Past IV",
					["recipeID"] = 330230
				},
				{
					["name"] = "Relic of the Past V",
					["recipeID"] = 330231
				}
			}
		},
		-- #endif
		{
			["name"] = "Materials",
			["categoryID"] = 1000,
			["groups"] = {
				{
					["name"] = "Bolt of Imbued Netherweave",
					["recipeID"] = 26747
				},
				{
					["name"] = "Bolt of Netherweave",
					["recipeID"] = 26745
				},
				{
					["name"] = "Bolt of Soulcloth",
					["recipeID"] = 26750
				},
				{
					["name"] = "Primal Mooncloth",
					["recipeID"] = 26751
				},
				{
					["name"] = "Shadowcloth",
					["recipeID"] = 36686
				},
				{
					["name"] = "Spellcloth",
					["recipeID"] = 31373
				}
			}
		},
		{
			["name"] = "Spellthreads",
			["categoryID"] = 1001,
			["groups"] = {
				{
					["name"] = "Golden Spellthread",
					["minReputation"] = { FACTION_THE_ALDOR, NEUTRAL },	-- The Aldor, Neutral.
					["recipeID"] = 31433
				},
				{
					["name"] = "Mystic Spellthread",
					["minReputation"] = { FACTION_THE_SCRYERS, NEUTRAL },	-- The Scryers, Neutral.
					["recipeID"] = 31430
				},
				{
					["name"] = "Runic Spellthread",
					["minReputation"] = { FACTION_THE_SCRYERS, NEUTRAL },	-- The Scryers, Neutral.
					["recipeID"] = 31432
				},
				{
					["name"] = "Silver Spellthread",
					["minReputation"] = { FACTION_THE_ALDOR, NEUTRAL },	-- The Aldor, Neutral.
					["recipeID"] = 31431
				}
			}
		},
		{
			["name"] = "Bags",
			["categoryID"] = 1002,
			["groups"] = {
				{
					["name"] = "Bag of Jewels",
					["recipeID"] = 31459
				},
				{
					["name"] = "Ebon Shadowbag",
					["recipeID"] = 26759
				},
				{
					["name"] = "Imbued Netherweave Bag",
					["recipeID"] = 26749
				},
				{
					["name"] = "Mycah's Botanical Bag",
					["recipeID"] = 50194
				},
				{
					["name"] = "Netherweave Bag",
					["recipeID"] = 26746
				},
				{
					["name"] = "Primal Mooncloth Bag",
					["recipeID"] = 26763
				},
				{
					["name"] = "Spellfire Bag",
					["recipeID"] = 26755
				}
			}
		},
		{
			["name"] = "Hats & Hoods",
			["categoryID"] = 1003,
			["groups"] = {
				{
					["name"] = "Battlecast Hood",
					["recipeID"] = 31456
				},
				{
					["name"] = "Spellstrike Hood",
					["recipeID"] = 31455
				},
				{
					["name"] = "Whitemend Hood",
					["recipeID"] = 31454
				}
			}
		},
		{
			["name"] = "Shoulders",
			["categoryID"] = 1004,
			["groups"] = {
				-- #if AFTER 4.0.1.12984
				{
					["name"] = "Frozen Shadoweave Shoulders",
					["recipeID"] = 26756
				},
				-- #endif
				applyclassicphase(TBC_PHASE_THREE, {
					["name"] = "Mantle of Nimble Thought",
					["recipeID"] = 41206
				}),
				-- #if AFTER 4.0.1.12984
				{
					["name"] = "Primal Mooncloth Shoulders",
					["recipeID"] = 26761
				},
				-- #endif
				{
					["name"] = "Soulcloth Shoulders",
					["recipeID"] = 26780
				},
				applyclassicphase(TBC_PHASE_THREE, {
					["name"] = "Swiftheal Mantle",
					["recipeID"] = 41208
				}),
			},
		},
		{
			["name"] = "Robes & Tunics",
			["categoryID"] = 1005,
			["groups"] = {
				{
					["name"] = "Arcanoweave Robe",
					["recipeID"] = 26784
				},
				{
					["name"] = "Flameheart Vest",
					["minReputation"] = { FACTION_THE_ALDOR, NEUTRAL },	-- The Aldor, Neutral.
					["recipeID"] = 37884
				},
				-- #if AFTER 4.0.1.12984
				{
					["name"] = "Frozen Shadoweave Robe",
					["recipeID"] = 26758
				},
				-- #endif
				{
					["name"] = "Imbued Netherweave Robe",
					["recipeID"] = 26777
				},
				{
					["name"] = "Imbued Netherweave Tunic",
					["recipeID"] = 26778
				},
				{
					["name"] = "Netherweave Robe",
					["recipeID"] = 26773
				},
				{
					["name"] = "Netherweave Tunic",
					["recipeID"] = 26774
				},
				-- #if AFTER 4.0.1.12984
				{
					["name"] = "Primal Mooncloth Robe",
					["recipeID"] = 26762
				},
				-- #endif
				applyclassicphase(TBC_PHASE_FIVE, {
					["name"] = "Robe of Eternal Light",
					["recipeID"] = 46131
				}),
				{
					["name"] = "Soulcloth Vest",
					["recipeID"] = 26781
				},
				-- #if AFTER 4.0.1.12984
				{
					["name"] = "Spellfire Robe",
					["recipeID"] = 26754
				},
				-- #endif
				applyclassicphase(TBC_PHASE_FIVE, {
					["name"] = "Sunfire Robe",
					["recipeID"] = 46130
				}),
			},
		},
		{
			["name"] = "Bracers",
			["categoryID"] = 1006,
			["groups"] = {
				{
					["name"] = "Arcanoweave Bracers",
					["recipeID"] = 26782
				},
				{
					["name"] = "Blackstrike Bracers",
					["recipeID"] = 31437
				},
				{
					["name"] = "Bracers of Havok",
					["recipeID"] = 31435
				},
				applyclassicphase(TBC_PHASE_THREE, {
					["name"] = "Bracers of Nimble Thought",
					["recipeID"] = 41205
				}),
				{
					["name"] = "Flameheart Bracers",
					["minReputation"] = { FACTION_THE_ALDOR, NEUTRAL },	-- The Aldor, Neutral.
					["recipeID"] = 37882
				},
				{
					["name"] = "Netherweave Bracers",
					["recipeID"] = 26764
				},
				applyclassicphase(TBC_PHASE_THREE, {
					["name"] = "Soulguard Bracers",
					["recipeID"] = 40021
				}),
				applyclassicphase(TBC_PHASE_THREE, {
					["name"] = "Swiftheal Wraps",
					["recipeID"] = 41207
				}),
				{
					["name"] = "Unyielding Bracers",
					["recipeID"] = 31434
				},
			},
		},
		{
			["name"] = "Belts",
			["categoryID"] = 1007,
			["groups"] = {
				applyclassicphase(TBC_PHASE_TWO, {
					["name"] = "Belt of Blasting",
					["recipeID"] = 36315
				}),
				applyclassicphase(TBC_PHASE_TWO, {
					["name"] = "Belt of the Long Road",
					["recipeID"] = 36316
				}),
				{
					["name"] = "Black Belt of Knowledge",
					["recipeID"] = 31444
				},
				{
					["name"] = "Girdle of Ruination",
					["recipeID"] = 31443
				},
				{
					["name"] = "Netherweave Belt",
					["recipeID"] = 26765
				},
				-- #if AFTER 4.0.1.12984
				{
					["name"] = "Primal Mooncloth Belt",
					["recipeID"] = 26760
				},
				-- #endif
				applyclassicphase(TBC_PHASE_THREE, {
					["name"] = "Soulguard Girdle",
					["recipeID"] = 40024
				}),
				-- #if AFTER 4.0.1.12984
				{
					["name"] = "Spellfire Belt",
					["recipeID"] = 26752
				},
				-- #endif
				{
					["name"] = "Unyielding Girdle",
					["recipeID"] = 31442
				},
			},
		},
		{
			["name"] = "Gloves",
			["categoryID"] = 1008,
			["groups"] = {
				{
					["name"] = "Flameheart Gloves",
					["minReputation"] = { FACTION_THE_ALDOR, NEUTRAL },	-- The Aldor, Neutral.
					["recipeID"] = 37883
				},
				applyclassicphase(TBC_PHASE_FIVE, {
					["name"] = "Hands of Eternal Light",
					["recipeID"] = 46129
				}),
				{
					["name"] = "Netherweave Gloves",
					["recipeID"] = 26770
				},
				{
					["name"] = "Soulcloth Gloves",
					["recipeID"] = 26779
				},
				-- #if AFTER 4.0.1.12984
				{
					["name"] = "Spellfire Gloves",
					["recipeID"] = 26753
				},
				-- #endif
				applyclassicphase(TBC_PHASE_FIVE, {
					["name"] = "Sunfire Handwraps",
					["recipeID"] = 46128
				}),
			},
		},
		{
			["name"] = "Pants",
			["categoryID"] = 1009,
			["groups"] = {
				{
					["name"] = "Battlecast Pants",
					["recipeID"] = 31453
				},
				{
					["name"] = "Imbued Netherweave Pants",
					["recipeID"] = 26775
				},
				{
					["name"] = "Netherweave Pants",
					["recipeID"] = 26771
				},
				applyclassicphase(TBC_PHASE_THREE, {
					["name"] = "Soulguard Leggings",
					["recipeID"] = 40023
				}),
				{
					["name"] = "Spellstrike Pants",
					["recipeID"] = 31452
				},
				{
					["name"] = "Whitemend Pants",
					["recipeID"] = 31451
				}
			}
		},
		{
			["name"] = "Boots",
			["categoryID"] = 1010,
			["groups"] = {
				{
					["name"] = "Arcanoweave Boots",
					["recipeID"] = 26783
				},
				applyclassicphase(TBC_PHASE_TWO, {
					["name"] = "Boots of Blasting",
					["recipeID"] = 36317
				}),
				applyclassicphase(TBC_PHASE_TWO, {
					["name"] = "Boots of the Long Road",
					["recipeID"] = 36318
				}),
				-- #if AFTER 4.0.1.12984
				{
					["name"] = "Frozen Shadoweave Boots",
					["recipeID"] = 26757
				},
				-- #endif
				{
					["name"] = "Imbued Netherweave Boots",
					["recipeID"] = 26776
				},
				{
					["name"] = "Netherweave Boots",
					["recipeID"] = 26772
				},
				applyclassicphase(TBC_PHASE_THREE, {
					["name"] = "Soulguard Slippers",
					["recipeID"] = 40020
				}),
			},
		},
		{
			["name"] = "Cloaks",
			["categoryID"] = 1011,
			["groups"] = {
				{
					["name"] = "Cloak of Arcane Evasion",
					["recipeID"] = 37873
				},
				{
					["name"] = "Cloak of Eternity",
					["recipeID"] = 31440
				},
				{
					["name"] = "Cloak of the Black Void",
					["recipeID"] = 31438
				},
				{
					["name"] = "Manaweave Cloak",
					["recipeID"] = 31450
				},
				applyclassicphase(TBC_PHASE_THREE, {
					["name"] = "Night's End",
					["recipeID"] = 40060
				}),
				{
					["name"] = "Resolute Cape",
					["recipeID"] = 31448
				},
				{
					["name"] = "Vengeance Wrap",
					["recipeID"] = 31449
				},
				{
					["name"] = "White Remedy Cape",
					["recipeID"] = 31441
				}
			}
		},
		{
			["name"] = "Nets",
			["categoryID"] = 1012,
			["groups"] = {
				{
					["name"] = "Netherweave Net",
					["recipeID"] = 31460
				}
			}
		},
		-- #if AFTER BFA
		{
			["name"] = "Bandages",
			["categoryID"] = 1090,
			["groups"] = {
				{
					["name"] = "Heavy Netherweave Bandage",
					["recipeID"] = 27033
				},
				{
					["name"] = "Netherweave Bandage",
					["recipeID"] = 27032
				}
			}
		}
		-- #endif
	})),
	applyclassicphase(WRATH_PHASE_ONE, expansion(EXPANSION.WRATH, {
		-- #if AFTER SHADOWLANDS
		{
			["name"] = "Optional Reagents",
			["categoryID"] = 1506,
			["groups"] = {
				{
					["name"] = "Relic of the Past I",
					["recipeID"] = 330232
				},
				{
					["name"] = "Relic of the Past II",
					["recipeID"] = 330233
				},
				{
					["name"] = "Relic of the Past III",
					["recipeID"] = 330234
				},
				{
					["name"] = "Relic of the Past IV",
					["recipeID"] = 330235
				},
				{
					["name"] = "Relic of the Past V",
					["recipeID"] = 330236
				}
			}
		},
		-- #endif
		{
			["name"] = "Mounts",
			["categoryID"] = 998,
			["groups"] = {
				{
					["name"] = "Flying Carpet",
					["recipeID"] = 60969
				},
				applyclassicphase(WRATH_PHASE_FOUR, {
					["name"] = "Frosty Flying Carpet",
					["recipeID"] = 75597
				}),
				{
					["name"] = "Magnificent Flying Carpet",
					["recipeID"] = 60971
				}
			}
		},
		{
			["name"] = "Shirts",
			["categoryID"] = 997,
			["groups"] = {
				{
					["name"] = "Blue Lumberjack Shirt",
					["recipeID"] = 55994
				},
				{
					["name"] = "Blue Workman's Shirt",
					["recipeID"] = 55998
				},
				{
					["name"] = "Green Lumberjack Shirt",
					["recipeID"] = 55996
				},
				{
					["name"] = "Green Workman's Shirt",
					["recipeID"] = 56000
				},
				{
					["name"] = "Red Lumberjack Shirt",
					["recipeID"] = 55993
				},
				{
					["name"] = "Red Workman's Shirt",
					["recipeID"] = 55997
				},
				{
					["name"] = "Rustic Workman's Shirt",
					["recipeID"] = 55999
				},
				{
					["name"] = "Yellow Lumberjack Shirt",
					["recipeID"] = 55995
				}
			}
		},
		{
			["name"] = "Cloaks",
			["categoryID"] = 996,
			["groups"] = {
				{
					["name"] = "Cloak of Crimson Snow",
					["recipeID"] = 64730
				},
				{
					["name"] = "Cloak of Frozen Spirits",
					["recipeID"] = 56015
				},
				{
					["name"] = "Cloak of the Moon",
					["recipeID"] = 56014
				},
				{
					["name"] = "Deathchill Cloak",
					["recipeID"] = 56017
				},
				{
					["name"] = "Frostguard Drape",
					["recipeID"] = 64729
				},
				{
					["name"] = "Wispcloak",
					["recipeID"] = 56016
				}
			}
		},
		{
			["name"] = "Boots",
			["categoryID"] = 995,
			["groups"] = {
				{
					["name"] = "Aurora Slippers",
					["recipeID"] = 56023
				},
				applyclassicphase(WRATH_PHASE_FOUR, {
					["name"] = "Deathfrost Boots",
					["recipeID"] = 70551
				}),
				{
					["name"] = "Duskweave Boots",
					["recipeID"] = 55924
				},
				{
					["name"] = "Frostsavage Boots",
					["recipeID"] = 59585
				},
				{
					["name"] = "Frostwoven Boots",
					["recipeID"] = 55906
				},
				{
					["name"] = "Glacial Slippers",
					["recipeID"] = 60994
				},
				applyclassicphase(WRATH_PHASE_FOUR, {
					["name"] = "Sandals of Consecration",
					["recipeID"] = 70553
				}),
				applyclassicphase(WRATH_PHASE_TWO, {
					["name"] = "Savior's Slippers",
					["recipeID"] = 63206
				}),
				{
					["name"] = "Silky Iceshard Boots",
					["recipeID"] = 56019
				},
				applyclassicphase(WRATH_PHASE_TWO, {
					["name"] = "Spellslinger's Slippers",
					["recipeID"] = 63204
				}),
			}
		},
		{
			["name"] = "Pants",
			["categoryID"] = 994,
			["groups"] = {
				{
					["name"] = "Black Duskweave Leggings",
					["recipeID"] = 55925
				},
				{
					["name"] = "Duskweave Leggings",
					["recipeID"] = 55901
				},
				{
					["name"] = "Frostmoon Pants",
					["recipeID"] = 56021
				},
				{
					["name"] = "Frostsavage Leggings",
					["recipeID"] = 59588
				},
				{
					["name"] = "Frostwoven Leggings",
					["recipeID"] = 56030
				},
				applyclassicphase(WRATH_PHASE_FOUR, {
					["name"] = "Leggings of Woven Death",
					["recipeID"] = 70550
				}),
				applyclassicphase(WRATH_PHASE_FOUR, {
					["name"] = "Lightweave Leggings",
					["recipeID"] = 70552
				}),
			}
		},
		{
			["name"] = "Gloves",
			["categoryID"] = 993,
			["groups"] = {
				{
					["name"] = "Duskweave Gloves",
					["recipeID"] = 55922
				},
				{
					["name"] = "Ebonweave Gloves",
					["recipeID"] = 56027
				},
				{
					["name"] = "Frostsavage Gloves",
					["recipeID"] = 59586
				},
				{
					["name"] = "Frostwoven Gloves",
					["recipeID"] = 55904
				},
				{
					["name"] = "Light Blessed Mittens",
					["recipeID"] = 56022
				},
				{
					["name"] = "Moonshroud Gloves",
					["recipeID"] = 56025
				},
				{
					["name"] = "Spellweave Gloves",
					["recipeID"] = 56029
				}
			}
		},
		{
			["name"] = "Nets",
			["categoryID"] = 999,
			["groups"] = {
				{
					["name"] = "Frostweave Net",
					["recipeID"] = 55898
				}
			}
		},
		{
			["name"] = "Belts",
			["categoryID"] = 992,
			["groups"] = {
				applyclassicphase(WRATH_PHASE_TWO, {
					["name"] = "Cord of the White Dawn",
					["recipeID"] = 63205
				}),
				{
					["name"] = "Deep Frozen Cord",
					["recipeID"] = 56020
				},
				{
					["name"] = "Duskweave Belt",
					["recipeID"] = 55914
				},
				{
					["name"] = "Frostsavage Belt",
					["recipeID"] = 59582
				},
				{
					["name"] = "Frostwoven Belt",
					["recipeID"] = 55908
				},
				{
					["name"] = "Glacial Waistband",
					["recipeID"] = 60990
				},
				applyclassicphase(WRATH_PHASE_TWO, {
					["name"] = "Sash of Ancient Power",
					["recipeID"] = 63203
				}),
			}
		},
		{
			["name"] = "Robes & Tunics",
			["categoryID"] = 990,
			["groups"] = {
				{
					["name"] = "Black Duskweave Robe",
					["recipeID"] = 55941
				},
				{
					["name"] = "Duskweave Robe",
					["recipeID"] = 55921
				},
				{
					["name"] = "Ebonweave Robe",
					["recipeID"] = 56026
				},
				{
					["name"] = "Frostsavage Robe",
					["recipeID"] = 59587
				},
				{
					["name"] = "Frostwoven Robe",
					["recipeID"] = 55903
				},
				{
					["name"] = "Glacial Robe",
					["recipeID"] = 60993
				},
				applyclassicphase(WRATH_PHASE_THREE, {
					["name"] = "Merlin's Robe",
					["recipeID"] = 67066,
					["races"] = ALLIANCE_ONLY,
				}),
				applyclassicphase(WRATH_PHASE_THREE, {
					["name"] = "Merlin's Robe",
					["recipeID"] = 67146,
					["races"] = HORDE_ONLY,
				}),
				{
					["name"] = "Moonshroud Robe",
					["recipeID"] = 56024
				},
				{
					["name"] = "Mystic Frostwoven Robe",
					["recipeID"] = 55911
				},
				applyclassicphase(WRATH_PHASE_THREE, {
					["name"] = "Royal Moonshroud Robe",
					["recipeID"] = 67064,
					["races"] = ALLIANCE_ONLY,
				}),
				applyclassicphase(WRATH_PHASE_THREE, {
					["name"] = "Royal Moonshroud Robe",
					["recipeID"] = 67144,
					["races"] = HORDE_ONLY,
				}),
				{
					["name"] = "Spellweave Robe",
					["recipeID"] = 56028
				}
			}
		},
		{
			["name"] = "Shoulders",
			["categoryID"] = 989,
			["groups"] = {
				{
					["name"] = "Duskweave Shoulders",
					["recipeID"] = 55923
				},
				{
					["name"] = "Frostsavage Shoulders",
					["recipeID"] = 59584
				},
				{
					["name"] = "Frostwoven Shoulders",
					["recipeID"] = 55902
				},
				{
					["name"] = "Mystic Frostwoven Shoulders",
					["recipeID"] = 55910
				}
			}
		},
		{
			["name"] = "Hats & Hoods",
			["categoryID"] = 988,
			["groups"] = {
				{
					["name"] = "Duskweave Cowl",
					["recipeID"] = 55919
				},
				{
					["name"] = "Frostsavage Cowl",
					["recipeID"] = 59589
				},
				{
					["name"] = "Frostwoven Cowl",
					["recipeID"] = 55907
				},
				{
					["name"] = "Hat of Wintry Doom",
					["recipeID"] = 56018
				}
			}
		},
		{
			["name"] = "Bags",
			["categoryID"] = 987,
			["groups"] = {
				{
					["name"] = "Abyssal Bag",
					["recipeID"] = 56004
				},
				{
					["name"] = "Emerald Bag",
					["recipeID"] = 63924
				},
				{
					["name"] = "Frostweave Bag",
					["recipeID"] = 56007
				},
				{
					["name"] = "Glacial Bag",
					["recipeID"] = 56005
				},
				{
					["name"] = "Mysterious Bag",
					["recipeID"] = 56006
				}
			}
		},
		{
			["name"] = "Spellthread",
			["categoryID"] = 986,
			["groups"] = {
				{
					["name"] = "Azure Spellthread",
					["recipeID"] = 56010
				},
				{
					["name"] = "Brilliant Spellthread",
					["recipeID"] = 56009
				},
				{
					["name"] = "Darkglow Embroidery",
					["timeline"] = { REMOVED_6_0_2 },
					["recipeID"] = 55769
				},
				{
					["name"] = "Lightweave Embroidery",
					["timeline"] = { REMOVED_6_0_2 },
					["recipeID"] = 55642
				},
				{
					["name"] = "Master's Spellthread",
					["timeline"] = { REMOVED_6_0_2 },
					["recipeID"] = 56034
				},
				{
					["name"] = "Sanctified Spellthread",
					["timeline"] = { REMOVED_6_0_2 },
					["recipeID"] = 56039
				},
				{
					["name"] = "Sapphire Spellthread",
					["recipeID"] = 56011
				},
				{
					["name"] = "Shining Spellthread",
					["recipeID"] = 56008
				},
				{
					["name"] = "Swordguard Embroidery",
					["timeline"] = { REMOVED_6_0_2 },
					["recipeID"] = 55777
				},
			}
		},
		{
			["name"] = "Materials",
			["categoryID"] = 985,
			["groups"] = {
				-- #IF ANYCLASSIC
				recipe(59390),	-- Northern Cloth Scavenging
				-- #ENDIF
				{
					["name"] = "Bolt of Frostweave",
					["recipeID"] = 55899
				},
				{
					["name"] = "Bolt of Imbued Frostweave",
					["recipeID"] = 55900
				},
				{
					["name"] = "Ebonweave",
					["recipeID"] = 56002
				},
				{
					["name"] = "Moonshroud",
					["recipeID"] = 56001
				},
				{
					["name"] = "Spellweave",
					["recipeID"] = 56003
				}
			}
		},
		{
			["name"] = "Bracers",
			["categoryID"] = 991,
			["groups"] = {
				applyclassicphase(WRATH_PHASE_THREE, {
					["name"] = "Bejeweled Wizard's Bracers",
					["recipeID"] = 67079,
					["races"] = ALLIANCE_ONLY,
				}),
				applyclassicphase(WRATH_PHASE_THREE, {
					["name"] = "Bejeweled Wizard's Bracers",
					["recipeID"] = 67145,
					["races"] = HORDE_ONLY,
				}),
				{
					["name"] = "Black Duskweave Wristwraps",
					["recipeID"] = 55943
				},
				{
					["name"] = "Duskweave Wristwraps",
					["recipeID"] = 55920
				},
				{
					["name"] = "Frostsavage Bracers",
					["recipeID"] = 59583
				},
				{
					["name"] = "Frostwoven Wristwraps",
					["recipeID"] = 56031
				},
				{
					["name"] = "Mystic Frostwoven Wristwraps",
					["recipeID"] = 55913
				},
				applyclassicphase(WRATH_PHASE_THREE, {
					["name"] = "Royal Moonshroud Bracers",
					["recipeID"] = 67065,
					["races"] = ALLIANCE_ONLY,
				}),
				applyclassicphase(WRATH_PHASE_THREE, {
					["name"] = "Royal Moonshroud Bracers",
					["recipeID"] = 67147,
					["races"] = HORDE_ONLY,
				}),
			}
		},
		-- #if AFTER BFA
		{
			["name"] = "Bandages",
			["categoryID"] = 1091,
			["groups"] = {
				{
					["name"] = "Frostweave Bandage",
					["recipeID"] = 45545
				},
				{
					["name"] = "Heavy Frostweave Bandage",
					["recipeID"] = 45546
				}
			}
		},
		-- #endif
	})),
	applyclassicphase(CATA_PHASE_ONE, expansion(EXPANSION.CATA, {
		-- #if AFTER SHADOWLANDS
		{
			["name"] = "Optional Reagents",
			["categoryID"] = 1507,
			["groups"] = {
				{
					["name"] = "Relic of the Past I",
					["recipeID"] = 330237
				},
				{
					["name"] = "Relic of the Past II",
					["recipeID"] = 330238
				},
				{
					["name"] = "Relic of the Past III",
					["recipeID"] = 330239
				},
				{
					["name"] = "Relic of the Past IV",
					["recipeID"] = 330240
				},
				{
					["name"] = "Relic of the Past V",
					["recipeID"] = 330241
				}
			}
		},
		-- #endif
		{
			["name"] = "Materials",
			["categoryID"] = 972,
			["groups"] = {
				{
					["name"] = "Bolt of Embersilk Cloth",
					["recipeID"] = 74964
				},
				{
					["name"] = "Dream of Azshara",
					["recipeID"] = 75146
				},
				{
					["name"] = "Dream of Deepholm",
					["recipeID"] = 75142
				},
				{
					["name"] = "Dream of Destruction",
					["recipeID"] = 94743
				},
				{
					["name"] = "Dream of Hyjal",
					["recipeID"] = 75144
				},
				{
					["name"] = "Dream of Ragnaros",
					["recipeID"] = 75145
				},
				{
					["name"] = "Dream of Skywall",
					["recipeID"] = 75141
				}
			}
		},
		{
			["name"] = "Spellthreads",
			["categoryID"] = 973,
			["groups"] = {
				{
					["name"] = "Enchanted Spellthread",
					["recipeID"] = 75250
				},
				{
					["name"] = "Ghostly Spellthread",
					["recipeID"] = 75255
				},
				{
					["name"] = "Powerful Enchanted Spellthread",
					["recipeID"] = 75309
				},
				{
					["name"] = "Powerful Ghostly Spellthread",
					["recipeID"] = 75310
				}
			}
		},
		{
			["name"] = "Bags",
			["categoryID"] = 974,
			["groups"] = {
				{
					["name"] = "Embersilk Bag",
					["recipeID"] = 75264
				},
				{
					["name"] = "Hyjal Expedition Bag",
					["recipeID"] = 75268
				},
				{
					["name"] = "Illusionary Bag",
					["recipeID"] = 75308
				},
				applyclassicphase(CATA_PHASE_MOLTEN_FRONT, {
					["name"] = "Luxurious Silk Gem Bag",
					["timeline"] = { ADDED_4_2_0 },
					["recipeID"] = 100585
				}),
				{
					["name"] = "Otherworldly Bag",
					["recipeID"] = 75265
				}
			}
		},
		{
			["name"] = "Hats & Hoods",
			["categoryID"] = 975,
			["groups"] = {
				-- #if ANYCLASSIC
				-- CRIEVE NOTE: In Cata Classic, the "Vicious" items were renamed to "Bloodthirsty".
				{
					["name"] = "Bloodthirsty Embersilk Cowl",
					["recipeID"] = 75306
				},
				{
					["name"] = "Bloodthirsty Fireweave Cowl",
					["recipeID"] = 75304
				},
				-- #endif
				{
					["name"] = "Deathsilk Cowl",
					["recipeID"] = 75256
				},
				-- #if ANYCLASSIC
				{
					["name"] = "Emberfire Cowl",
					["recipeID"] = 1224222
				},
				{
					["name"] = "Fireweave Cowl",
					["recipeID"] = 1224220
				},
				-- #endif
				{
					["name"] = "High Society Top Hat",
					["recipeID"] = 75289
				},
				{
					["name"] = "Spiritmend Cowl",
					["recipeID"] = 75266
				},
				-- #if ANYCLASSIC
				{
					["name"] = "Vicious Embersilk Cowl",
					["recipeID"] = 1224157
				},
				{
					["name"] = "Vicious Fireweave Cowl",
					["recipeID"] = 1224165
				},
				-- #else
				-- CRIEVE NOTE: In Cata Classic, these got renamed to Bloodthirsty instead of Vicious.
				{
					["name"] = "Vicious Embersilk Cowl",
					["recipeID"] = 75306
				},
				{
					["name"] = "Vicious Fireweave Cowl",
					["recipeID"] = 75304
				},
				-- #endif
			}
		},
		{
			["name"] = "Shoulders",
			["categoryID"] = 976,
			["groups"] = {
				-- #if ANYCLASSIC
				-- CRIEVE NOTE: In Cata Classic, the "Vicious" items were renamed to "Bloodthirsty".
				{
					["name"] = "Bloodthirsty Embersilk Shoulders",
					["recipeID"] = 75291
				},
				{
					["name"] = "Bloodthirsty Fireweave Shoulders",
					["recipeID"] = 75292
				},
				-- #endif
				{
					["name"] = "Deathsilk Shoulders",
					["recipeID"] = 75251
				},
				-- #if ANYCLASSIC
				{
					["name"] = "Emberfire Shoulders",
					["recipeID"] = 1224211
				},
				{
					["name"] = "Fireweave Shoulders",
					["recipeID"] = 1224212
				},
				-- #endif
				{
					["name"] = "Spiritmend Shoulders",
					["recipeID"] = 75260
				},
				-- #if ANYCLASSIC
				{
					["name"] = "Vicious Embersilk Shoulders",
					["recipeID"] = 1224161
				},
				{
					["name"] = "Vicious Fireweave Shoulders",
					["recipeID"] = 1224169
				},
				-- #else
				-- CRIEVE NOTE: In Cata Classic, these got renamed to Bloodthirsty instead of Vicious.
				{
					["name"] = "Vicious Embersilk Shoulders",
					["recipeID"] = 75291
				},
				{
					["name"] = "Vicious Fireweave Shoulders",
					["recipeID"] = 75292
				},
				-- #endif
			}
		},
		{
			["name"] = "Robes & Tunics",
			["categoryID"] = 977,
			["groups"] = {
				-- #if ANYCLASSIC
				-- CRIEVE NOTE: In Cata Classic, the "Vicious" items were renamed to "Bloodthirsty".
				{
					["name"] = "Bloodthirsty Embersilk Robe",
					["recipeID"] = 75305
				},
				{
					["name"] = "Bloodthirsty Fireweave Robe",
					["recipeID"] = 75303
				},
				-- #endif
				{
					["name"] = "Black Embersilk Gown",
					["recipeID"] = 75288
				},
				{
					["name"] = "Deathsilk Robe",
					["recipeID"] = 75257
				},
				-- #if ANYCLASSIC
				{
					["name"] = "Emberfire Robe",
					["recipeID"] = 1224221
				},
				{
					["name"] = "Fireweave Robe",
					["recipeID"] = 1224219
				},
				-- #endif
				{
					["name"] = "Spiritmend Robe",
					["recipeID"] = 75267
				},
				-- #if ANYCLASSIC
				{
					["name"] = "Vicious Embersilk Robe",
					["recipeID"] = 1224160
				},
				{
					["name"] = "Vicious Fireweave Robe",
					["recipeID"] = 1224168
				},
				-- #else
				-- CRIEVE NOTE: In Cata Classic, these got renamed to Bloodthirsty instead of Vicious.
				{
					["name"] = "Vicious Embersilk Robe",
					["recipeID"] = 75305
				},
				{
					["name"] = "Vicious Fireweave Robe",
					["recipeID"] = 75303
				},
				-- #endif
			}
		},
		{
			["name"] = "Bracers",
			["categoryID"] = 978,
			["groups"] = {
				-- #if ANYCLASSIC
				-- CRIEVE NOTE: In Cata Classic, the "Vicious" items were renamed to "Bloodthirsty".
				{
					["name"] = "Bloodthirsty Embersilk Bracers",
					["recipeID"] = 75270
				},
				{
					["name"] = "Bloodthirsty Fireweave Bracers",
					["recipeID"] = 75290
				},
				-- #endif
				applyclassicphase(CATA_PHASE_HOUR_OF_TWILIGHT, {
					["name"] = "Bracers of Unconquered Power",
					["timeline"] = { ADDED_4_3_0 },
					["recipeID"] = 101923
				}),
				{
					["name"] = "Deathsilk Bracers",
					["recipeID"] = 75249
				},
				applyclassicphase(CATA_PHASE_HOUR_OF_TWILIGHT, {
					["name"] = "Dreamwraps of the Light",
					["timeline"] = { ADDED_4_3_0 },
					["recipeID"] = 101922
				}),
				-- #if ANYCLASSIC
				{
					["name"] = "Emberfire Bracers",
					["recipeID"] = 1224209
				},
				{
					["name"] = "Fireweave Bracers",
					["recipeID"] = 1224210
				},
				-- #endif
				{
					["name"] = "Spiritmend Bracers",
					["recipeID"] = 75259
				},
				-- #if ANYCLASSIC
				{
					["name"] = "Vicious Embersilk Bracers",
					["recipeID"] = 1224156
				},
				{
					["name"] = "Vicious Fireweave Bracers",
					["recipeID"] = 1224164
				},
				-- #else
				-- CRIEVE NOTE: In Cata Classic, these got renamed to Bloodthirsty instead of Vicious.
				{
					["name"] = "Vicious Embersilk Bracers",
					["recipeID"] = 75270
				},
				{
					["name"] = "Vicious Fireweave Bracers",
					["recipeID"] = 75290
				},
				-- #endif
			}
		},
		{
			["name"] = "Belts",
			["categoryID"] = 979,
			["groups"] = {
				-- #if ANYCLASSIC
				-- CRIEVE NOTE: In Cata Classic, the "Vicious" items were renamed to "Bloodthirsty".
				{
					["name"] = "Bloodthirsty Embersilk Belt",
					["recipeID"] = 75293
				},
				{
					["name"] = "Bloodthirsty Fireweave Belt",
					["recipeID"] = 75269
				},
				-- #endif
				{
					["name"] = "Belt of the Depths",
					["recipeID"] = 75298
				},
				{
					["name"] = "Deathsilk Belt",
					["recipeID"] = 75248
				},
				{
					["name"] = "Dreamless Belt",
					["recipeID"] = 75299
				},
				-- #if ANYCLASSIC
				{
					["name"] = "Emberfire Belt",
					["recipeID"] = 1224213
				},
				{
					["name"] = "Fireweave Belt",
					["recipeID"] = 1224208
				},
				-- #endif
				{
					["name"] = "Spiritmend Belt",
					["recipeID"] = 75258
				},
				-- #if ANYCLASSIC
				{
					["name"] = "Vicious Embersilk Belt",
					["recipeID"] = 1224154
				},
				{
					["name"] = "Vicious Fireweave Belt",
					["recipeID"] = 1224162
				},
				-- #else
				-- CRIEVE NOTE: In Cata Classic, these got renamed to Bloodthirsty instead of Vicious.
				{
					["name"] = "Vicious Embersilk Belt",
					["recipeID"] = 75293
				},
				{
					["name"] = "Vicious Fireweave Belt",
					["recipeID"] = 75269
				},
				-- #endif
			}
		},
		{
			["name"] = "Gloves",
			["categoryID"] = 980,
			["groups"] = {
				-- #if ANYCLASSIC
				-- CRIEVE NOTE: In Cata Classic, the "Vicious" items were renamed to "Bloodthirsty".
				{
					["name"] = "Bloodthirsty Embersilk Gloves",
					["recipeID"] = 75295
				},
				{
					["name"] = "Bloodthirsty Fireweave Gloves",
					["recipeID"] = 75296
				},
				-- #endif
				{
					["name"] = "Deathsilk Gloves",
					["recipeID"] = 75253
				},
				applyclassicphase(CATA_PHASE_RAGE_OF_THE_FIRELANDS, {
					["name"] = "Don Tayo's Inferno Mittens",
					["timeline"] = { ADDED_4_2_0 },
					["recipeID"] = 99449
				}),
				-- #if ANYCLASSIC
				{
					["name"] = "Emberfire Gloves",
					["recipeID"] = 1224215
				},
				{
					["name"] = "Fireweave Gloves",
					["recipeID"] = 1224216
				},
				-- #endif
				applyclassicphase(CATA_PHASE_RAGE_OF_THE_FIRELANDS, {
					["name"] = "Grips of Altered Reality",
					["timeline"] = { ADDED_4_2_0 },
					["recipeID"] = 99448
				}),
				{
					["name"] = "Spiritmend Gloves",
					["recipeID"] = 75262
				},
				-- #if ANYCLASSIC
				{
					["name"] = "Vicious Embersilk Gloves",
					["recipeID"] = 1224158
				},
				{
					["name"] = "Vicious Fireweave Gloves",
					["recipeID"] = 1224166
				},
				-- #else
				-- CRIEVE NOTE: In Cata Classic, these got renamed to Bloodthirsty instead of Vicious.
				{
					["name"] = "Vicious Embersilk Gloves",
					["recipeID"] = 75295
				},
				{
					["name"] = "Vicious Fireweave Gloves",
					["recipeID"] = 75296
				},
				-- #endif
			}
		},
		{
			["name"] = "Pants",
			["categoryID"] = 981,
			["groups"] = {
				-- #if ANYCLASSIC
				-- CRIEVE NOTE: In Cata Classic, the "Vicious" items were renamed to "Bloodthirsty".
				{
					["name"] = "Bloodthirsty Embersilk Pants",
					["recipeID"] = 75307
				},
				{
					["name"] = "Bloodthirsty Fireweave Pants",
					["recipeID"] = 75302
				},
				-- #endif
				{
					["name"] = "Breeches of Mended Nightmares",
					["recipeID"] = 75300
				},
				{
					["name"] = "Deathsilk Leggings",
					["recipeID"] = 75254
				},
				-- #if ANYCLASSIC
				{
					["name"] = "Emberfire Pants",
					["recipeID"] = 1224223
				},
				{
					["name"] = "Fireweave Pants",
					["recipeID"] = 1224218
				},
				-- #endif
				{
					["name"] = "Flame-Ascended Pantaloons",
					["recipeID"] = 75301
				},
				applyclassicphase(CATA_PHASE_HOUR_OF_TWILIGHT, {
					["name"] = "Lavaquake Legwraps",
					["timeline"] = { ADDED_4_3_0 },
					["recipeID"] = 101921
				}),
				{
					["name"] = "Spiritmend Leggings",
					["recipeID"] = 75263
				},
				-- #if ANYCLASSIC
				{
					["name"] = "Vicious Embersilk Pants",
					["recipeID"] = 1224159
				},
				{
					["name"] = "Vicious Fireweave Pants",
					["recipeID"] = 1224167
				},
				-- #else
				-- CRIEVE NOTE: In Cata Classic, these got renamed to Bloodthirsty instead of Vicious.
				{
					["name"] = "Vicious Embersilk Pants",
					["recipeID"] = 75307
				},
				{
					["name"] = "Vicious Fireweave Pants",
					["recipeID"] = 75302
				},
				-- #endif
				applyclassicphase(CATA_PHASE_HOUR_OF_TWILIGHT, {
					["name"] = "World Mender's Pants",
					["timeline"] = { ADDED_4_3_0 },
					["recipeID"] = 101920
				}),
			}
		},
		{
			["name"] = "Boots",
			["categoryID"] = 982,
			["groups"] = {
				-- #if ANYCLASSIC
				-- CRIEVE NOTE: In Cata Classic, the "Vicious" items were renamed to "Bloodthirsty".
				{
					["name"] = "Bloodthirsty Embersilk Boots",
					["recipeID"] = 75297
				},
				{
					["name"] = "Bloodthirsty Fireweave Boots",
					["recipeID"] = 75294
				},
				-- #endif
				applyclassicphase(CATA_PHASE_RAGE_OF_THE_FIRELANDS, {
					["name"] = "Boots of the Black Flame",
					["timeline"] = { ADDED_4_2_0 },
					["recipeID"] = 99460
				}),
				{
					["name"] = "Deathsilk Boots",
					["recipeID"] = 75252
				},
				-- #if ANYCLASSIC

				-- #endif
				applyclassicphase(CATA_PHASE_RAGE_OF_THE_FIRELANDS, {
					["name"] = "Endless Dream Walkers",
					["timeline"] = { ADDED_4_2_0 },
					["recipeID"] = 99459
				}),
				-- #if ANYCLASSIC
				{
					["name"] = "Emberfire Boots",
					["recipeID"] = 1224217
				},
				{
					["name"] = "Fireweave Boots",
					["recipeID"] = 1224214
				},
				-- #endif
				{
					["name"] = "Spiritmend Boots",
					["recipeID"] = 75261
				},
				-- #if ANYCLASSIC
				{
					["name"] = "Vicious Embersilk Boots",
					["recipeID"] = 1224155
				},
				{
					["name"] = "Vicious Fireweave Boots",
					["recipeID"] = 1224163
				},
				-- #else
				-- CRIEVE NOTE: In Cata Classic, these got renamed to Bloodthirsty instead of Vicious.
				{
					["name"] = "Vicious Embersilk Boots",
					["recipeID"] = 75297
				},
				{
					["name"] = "Vicious Fireweave Boots",
					["recipeID"] = 75294
				},
				-- #endif
			}
		},
		{
			["name"] = "Cloaks",
			["categoryID"] = 983,
			["groups"] = {
				-- #if ANYCLASSIC
				firelands({
					["name"] = "Bloodthirsty Embersilk Cape",
					["recipeID"] = 1216338
				}),
				--[[
				dragonsoul({
					["name"] = "Vicious Embersilk Cape",
					["recipeID"] = 99537	-- TODO: Get the spellID after Dragon Soul is launched.
				}),
				]]--
				-- #endif
				bloodied({
					["name"] = "Vicious Embersilk Cape",
					["recipeID"] = 99537
				}),
			}
		},
		{
			["name"] = "Nets",
			["categoryID"] = 984,
			["groups"] = {
				{
					["name"] = "Embersilk Net",
					["recipeID"] = 75247
				}
			}
		},
		-- #if AFTER BFA
		{
			["name"] = "Bandages",
			["categoryID"] = 1092,
			["groups"] = {
				{
					["name"] = "Dense Embersilk Bandage",
					["recipeID"] = 88893
				},
				{
					["name"] = "Embersilk Bandage",
					["recipeID"] = 74556
				},
				{
					["name"] = "Field Bandage: Dense Embersilk",
					["recipeID"] = 74558
				},
				{
					["name"] = "Heavy Embersilk Bandage",
					["recipeID"] = 74557
				}
			}
		},
		-- #endif
	})),
	applyclassicphase(MOP_PHASE_LANDFALL, expansion(EXPANSION.MOP, {
		-- #if AFTER SHADOWLANDS
		{
			["name"] = "Optional Reagents",
			["categoryID"] = 1508,
			["groups"] = {
				{
					["name"] = "Relic of the Past I",
					["recipeID"] = 330242
				},
				{
					["name"] = "Relic of the Past II",
					["recipeID"] = 330243
				},
				{
					["name"] = "Relic of the Past III",
					["recipeID"] = 330244
				},
				{
					["name"] = "Relic of the Past IV",
					["recipeID"] = 330245
				},
				{
					["name"] = "Relic of the Past V",
					["recipeID"] = 330246
				}
			}
		},
		-- #endif
		{
			["name"] = "Materials",
			["categoryID"] = 958,
			["groups"] = {
				{
					["name"] = "Accelerated Celestial Cloth",
					["recipeID"] = 146925
				},
				{
					["name"] = "Bolt of Windwool Cloth",
					["recipeID"] = 125551
				},
				{
					["name"] = "Celestial Cloth",
					["recipeID"] = 143011
				},
				{
					["name"] = "Imperial Silk",
					["recipeID"] = 125557
				},
				{
					["name"] = "Song of Harmony",
					["recipeID"] = 130325
				}
			}
		},
		{
			["name"] = "Embroidery",
			["categoryID"] = 959,
			["groups"] = {
				{
					["name"] = "Master's Spellthread",
					["recipeID"] = 125496
				},
				{
					["name"] = "Sanctified Spellthread",
					["recipeID"] = 125497
				}
			}
		},
		{
			["name"] = "Spellthreads",
			["categoryID"] = 960,
			["groups"] = {
				{
					["name"] = "Cerulean Spellthread",
					["recipeID"] = 125553
				},
				{
					["name"] = "Greater Cerulean Spellthread",
					["recipeID"] = 125555
				},
				{
					["name"] = "Greater Pearlescent Spellthread",
					["recipeID"] = 125554
				},
				{
					["name"] = "Pearlescent Spellthread",
					["recipeID"] = 125552
				}
			}
		},
		{
			["name"] = "Bags",
			["categoryID"] = 961,
			["groups"] = {
				{
					["name"] = "Royal Satchel",
					["recipeID"] = 125556
				}
			}
		},
		{
			["name"] = "Hats & Hoods",
			["categoryID"] = 962,
			["groups"] = {
				{
					["name"] = "Contender's Satin Cowl",
					["recipeID"] = 125539
				},
				{
					["name"] = "Contender's Silk Cowl",
					["recipeID"] = 125531
				},
				{
					["name"] = "Crafted Dreadful Gladiator's Felweave Cowl",
					["recipeID"] = 137939
				},
				{
					["name"] = "Crafted Dreadful Gladiator's Mooncloth Helm",
					["recipeID"] = 137927
				},
				{
					["name"] = "Crafted Dreadful Gladiator's Satin Hood",
					["recipeID"] = 137932
				},
				{
					["name"] = "Crafted Dreadful Gladiator's Silk Cowl",
					["recipeID"] = 137922
				},
				{
					["name"] = "Crafted Malevolent Gladiator's Felweave Cowl",
					["recipeID"] = 143085
				},
				{
					["name"] = "Crafted Malevolent Gladiator's Mooncloth Helm",
					["recipeID"] = 143073
				},
				{
					["name"] = "Crafted Malevolent Gladiator's Satin Hood",
					["recipeID"] = 143078
				},
				{
					["name"] = "Crafted Malevolent Gladiator's Silk Cowl",
					["recipeID"] = 143068
				},
				{
					["name"] = "Falling Blossom Cowl",
					["recipeID"] = 138598
				},
				{
					["name"] = "Falling Blossom Hood",
					["recipeID"] = 138600
				},
				{
					["name"] = "Windwool Hood",
					["recipeID"] = 125523
				}
			}
		},
		{
			["name"] = "Shoulders",
			["categoryID"] = 963,
			["groups"] = {
				{
					["name"] = "Contender's Satin Amice",
					["recipeID"] = 125540
				},
				{
					["name"] = "Contender's Silk Amice",
					["recipeID"] = 125532
				},
				{
					["name"] = "Crafted Dreadful Gladiator's Felweave Amice",
					["recipeID"] = 137942
				},
				{
					["name"] = "Crafted Dreadful Gladiator's Mooncloth Mantle",
					["recipeID"] = 137930
				},
				{
					["name"] = "Crafted Dreadful Gladiator's Satin Mantle",
					["recipeID"] = 137935
				},
				{
					["name"] = "Crafted Dreadful Gladiator's Silk Amice",
					["recipeID"] = 137925
				},
				{
					["name"] = "Crafted Malevolent Gladiator's Felweave Amice",
					["recipeID"] = 143088
				},
				{
					["name"] = "Crafted Malevolent Gladiator's Mooncloth Mantle",
					["recipeID"] = 143076
				},
				{
					["name"] = "Crafted Malevolent Gladiator's Satin Mantle",
					["recipeID"] = 143081
				},
				{
					["name"] = "Crafted Malevolent Gladiator's Silk Amice",
					["recipeID"] = 143071
				},
				{
					["name"] = "Windwool Shoulders",
					["recipeID"] = 125524
				}
			}
		},
		{
			["name"] = "Robes & Tunics",
			["categoryID"] = 964,
			["groups"] = {
				{
					["name"] = "Contender's Satin Raiment",
					["recipeID"] = 125541
				},
				{
					["name"] = "Contender's Silk Raiment",
					["recipeID"] = 125533
				},
				{
					["name"] = "Crafted Dreadful Gladiator's Felweave Raiment",
					["recipeID"] = 137941
				},
				{
					["name"] = "Crafted Dreadful Gladiator's Mooncloth Robe",
					["recipeID"] = 137929
				},
				{
					["name"] = "Crafted Dreadful Gladiator's Satin Robe",
					["recipeID"] = 137934
				},
				{
					["name"] = "Crafted Dreadful Gladiator's Silk Robe",
					["recipeID"] = 137924
				},
				{
					["name"] = "Crafted Malevolent Gladiator's Felweave Raiment",
					["recipeID"] = 143087
				},
				{
					["name"] = "Crafted Malevolent Gladiator's Mooncloth Robe",
					["recipeID"] = 143075
				},
				{
					["name"] = "Crafted Malevolent Gladiator's Satin Robe",
					["recipeID"] = 143080
				},
				{
					["name"] = "Crafted Malevolent Gladiator's Silk Robe",
					["recipeID"] = 143070
				},
				{
					["name"] = "Legacy of the Emperor",
					["recipeID"] = 125560
				},
				{
					["name"] = "Robe of Eternal Rule",
					["recipeID"] = 125558
				},
				{
					["name"] = "Robes of Creation",
					["recipeID"] = 125549
				},
				{
					["name"] = "Spelltwister's Grand Robe",
					["recipeID"] = 125547
				},
				{
					["name"] = "Windwool Tunic",
					["recipeID"] = 125525
				}
			}
		},
		{
			["name"] = "Bracers",
			["categoryID"] = 965,
			["groups"] = {
				{
					["name"] = "Contender's Satin Cuffs",
					["recipeID"] = 125544
				},
				{
					["name"] = "Contender's Silk Cuffs",
					["recipeID"] = 125536
				},
				{
					["name"] = "Crafted Dreadful Gladiator's Cuffs of Accuracy",
					["recipeID"] = 137915
				},
				{
					["name"] = "Crafted Dreadful Gladiator's Cuffs of Meditation",
					["recipeID"] = 137917
				},
				{
					["name"] = "Crafted Dreadful Gladiator's Cuffs of Prowess",
					["recipeID"] = 137916
				},
				{
					["name"] = "Crafted Malevolent Gladiator's Cuffs of Accuracy",
					["recipeID"] = 143061
				},
				{
					["name"] = "Crafted Malevolent Gladiator's Cuffs of Meditation",
					["recipeID"] = 143063
				},
				{
					["name"] = "Crafted Malevolent Gladiator's Cuffs of Prowess",
					["recipeID"] = 143062
				},
				{
					["name"] = "Windwool Bracers",
					["recipeID"] = 125528
				}
			}
		},
		{
			["name"] = "Belts",
			["categoryID"] = 966,
			["groups"] = {
				{
					["name"] = "Belt of the Night Sky",
					["recipeID"] = 142964
				},
				{
					["name"] = "Contender's Satin Belt",
					["recipeID"] = 125546
				},
				{
					["name"] = "Contender's Silk Belt",
					["recipeID"] = 125538
				},
				{
					["name"] = "Crafted Dreadful Gladiator's Cord of Accuracy",
					["recipeID"] = 137910
				},
				{
					["name"] = "Crafted Dreadful Gladiator's Cord of Cruelty",
					["recipeID"] = 137909
				},
				{
					["name"] = "Crafted Dreadful Gladiator's Cord of Meditation",
					["recipeID"] = 137911
				},
				{
					["name"] = "Crafted Malevolent Gladiator's Cord of Accuracy",
					["recipeID"] = 143056
				},
				{
					["name"] = "Crafted Malevolent Gladiator's Cord of Cruelty",
					["recipeID"] = 143055
				},
				{
					["name"] = "Crafted Malevolent Gladiator's Cord of Meditation",
					["recipeID"] = 143057
				},
				{
					["name"] = "White Cloud Belt",
					["recipeID"] = 142960
				},
				{
					["name"] = "Windwool Belt",
					["recipeID"] = 125530
				}
			}
		},
		{
			["name"] = "Gloves",
			["categoryID"] = 967,
			["groups"] = {
				{
					["name"] = "Bipsi's Gloves",
					["recipeID"] = 134585
				},
				{
					["name"] = "Contender's Satin Handwraps",
					["recipeID"] = 125542
				},
				{
					["name"] = "Contender's Silk Handwraps",
					["recipeID"] = 125534
				},
				{
					["name"] = "Crafted Dreadful Gladiator's Felweave Handguards",
					["recipeID"] = 137938
				},
				{
					["name"] = "Crafted Dreadful Gladiator's Mooncloth Gloves",
					["recipeID"] = 137926
				},
				{
					["name"] = "Crafted Dreadful Gladiator's Satin Gloves",
					["recipeID"] = 137931
				},
				{
					["name"] = "Crafted Dreadful Gladiator's Silk Handguards",
					["recipeID"] = 137921
				},
				{
					["name"] = "Crafted Malevolent Gladiator's Felweave Handguards",
					["recipeID"] = 143084
				},
				{
					["name"] = "Crafted Malevolent Gladiator's Mooncloth Gloves",
					["recipeID"] = 143072
				},
				{
					["name"] = "Crafted Malevolent Gladiator's Satin Gloves",
					["recipeID"] = 143077
				},
				{
					["name"] = "Crafted Malevolent Gladiator's Silk Handguards",
					["recipeID"] = 143067
				},
				{
					["name"] = "Gloves of Creation",
					["recipeID"] = 125550
				},
				{
					["name"] = "Imperial Silk Gloves",
					["recipeID"] = 125559
				},
				{
					["name"] = "Spelltwister's Gloves",
					["recipeID"] = 125548
				},
				{
					["name"] = "Touch of the Light",
					["recipeID"] = 125561
				},
				{
					["name"] = "Windwool Gloves",
					["recipeID"] = 125526
				}
			}
		},
		{
			["name"] = "Pants",
			["categoryID"] = 968,
			["groups"] = {
				{
					["name"] = "Contender's Satin Pants",
					["recipeID"] = 125543
				},
				{
					["name"] = "Contender's Silk Pants",
					["recipeID"] = 125535
				},
				{
					["name"] = "Crafted Dreadful Gladiator's Felweave Trousers",
					["recipeID"] = 137940
				},
				{
					["name"] = "Crafted Dreadful Gladiator's Mooncloth Leggings",
					["recipeID"] = 137928
				},
				{
					["name"] = "Crafted Dreadful Gladiator's Satin Leggings",
					["recipeID"] = 137933
				},
				{
					["name"] = "Crafted Dreadful Gladiator's Silk Trousers",
					["recipeID"] = 137923
				},
				{
					["name"] = "Crafted Malevolent Gladiator's Felweave Trousers",
					["recipeID"] = 143086
				},
				{
					["name"] = "Crafted Malevolent Gladiator's Mooncloth Leggings",
					["recipeID"] = 143074
				},
				{
					["name"] = "Crafted Malevolent Gladiator's Satin Leggings",
					["recipeID"] = 143079
				},
				{
					["name"] = "Crafted Malevolent Gladiator's Silk Trousers",
					["recipeID"] = 143069
				},
				{
					["name"] = "Leggings of the Night Sky",
					["recipeID"] = 142955
				},
				{
					["name"] = "White Cloud Leggings",
					["recipeID"] = 142951
				},
				{
					["name"] = "Windwool Pants",
					["recipeID"] = 125527
				}
			}
		},
		{
			["name"] = "Boots",
			["categoryID"] = 969,
			["groups"] = {
				{
					["name"] = "Contender's Satin Footwraps",
					["recipeID"] = 125545
				},
				{
					["name"] = "Contender's Silk Footwraps",
					["recipeID"] = 125537
				},
				{
					["name"] = "Crafted Dreadful Gladiator's Treads of Alacrity",
					["recipeID"] = 137913
				},
				{
					["name"] = "Crafted Dreadful Gladiator's Treads of Cruelty",
					["recipeID"] = 137912
				},
				{
					["name"] = "Crafted Dreadful Gladiator's Treads of Meditation",
					["recipeID"] = 137914
				},
				{
					["name"] = "Crafted Malevolent Gladiator's Treads of Alacrity",
					["recipeID"] = 143059
				},
				{
					["name"] = "Crafted Malevolent Gladiator's Treads of Cruelty",
					["recipeID"] = 143058
				},
				{
					["name"] = "Crafted Malevolent Gladiator's Treads of Meditation",
					["recipeID"] = 143060
				},
				{
					["name"] = "Falling Blossom Sandals",
					["recipeID"] = 138599
				},
				{
					["name"] = "Falling Blossom Treads",
					["recipeID"] = 138597
				},
				{
					["name"] = "Windwool Boots",
					["recipeID"] = 125529
				}
			}
		},
		{
			["name"] = "Cloaks",
			["categoryID"] = 970,
			["groups"] = {
				{
					["name"] = "Crafted Dreadful Gladiator's Cape of Cruelty",
					["recipeID"] = 137907
				},
				{
					["name"] = "Crafted Dreadful Gladiator's Cape of Prowess",
					["recipeID"] = 137908
				},
				{
					["name"] = "Crafted Dreadful Gladiator's Cloak of Alacrity",
					["recipeID"] = 137936
				},
				{
					["name"] = "Crafted Dreadful Gladiator's Cloak of Prowess",
					["recipeID"] = 137937
				},
				{
					["name"] = "Crafted Dreadful Gladiator's Drape of Cruelty",
					["recipeID"] = 137918
				},
				{
					["name"] = "Crafted Dreadful Gladiator's Drape of Meditation",
					["recipeID"] = 137920
				},
				{
					["name"] = "Crafted Dreadful Gladiator's Drape of Prowess",
					["recipeID"] = 137919
				},
				{
					["name"] = "Crafted Malevolent Gladiator's Cape of Cruelty",
					["recipeID"] = 143053
				},
				{
					["name"] = "Crafted Malevolent Gladiator's Cape of Prowess",
					["recipeID"] = 143054
				},
				{
					["name"] = "Crafted Malevolent Gladiator's Cloak of Alacrity",
					["recipeID"] = 143082
				},
				{
					["name"] = "Crafted Malevolent Gladiator's Cloak of Prowess",
					["recipeID"] = 143083
				},
				{
					["name"] = "Crafted Malevolent Gladiator's Drape of Cruelty",
					["recipeID"] = 143064
				},
				{
					["name"] = "Crafted Malevolent Gladiator's Drape of Meditation",
					["recipeID"] = 143066
				},
				{
					["name"] = "Crafted Malevolent Gladiator's Drape of Prowess",
					["recipeID"] = 143065
				}
			}
		},
		-- #if AFTER BFA
		{
			["name"] = "Bandages",
			["categoryID"] = 1093,
			["groups"] = {
				{
					["name"] = "Heavy Windwool Bandage",
					["recipeID"] = 102698
				},
				{
					["name"] = "Windwool Bandage",
					["recipeID"] = 102697
				}
			}
		},
		-- #endif
		n(DISCOVERY, {
			spell(143011, {	-- Celestial Cloth
				recipe(142964),	-- Belt of the Night Sky
				recipe(142955),	-- Leggings of the Night Sky
				recipe(142960),	-- White Cloud Belt
				recipe(142951),	-- White Cloud Leggings
				recipe(143053),	-- Crafted Malevolent Gladiator's Cape of Cruelty
				recipe(143054),	-- Crafted Malevolent Gladiator's Cape of Prowess
				recipe(143082),	-- Crafted Malevolent Gladiator's Cloak of Alacrity
				recipe(143083),	-- Crafted Malevolent Gladiator's Cloak of Prowess
				recipe(143056),	-- Crafted Malevolent Gladiator's Cord of Accuracy
				recipe(143055),	-- Crafted Malevolent Gladiator's Cord of Cruelty
				recipe(143057),	-- Crafted Malevolent Gladiator's Cord of Meditation
				recipe(143061),	-- Crafted Malevolent Gladiator's Cuffs of Accuracy
				recipe(143063),	-- Crafted Malevolent Gladiator's Cuffs of Meditation
				recipe(143062),	-- Crafted Malevolent Gladiator's Cuffs of Prowess
				recipe(143064),	-- Crafted Malevolent Gladiator's Drape of Cruelty
				recipe(143066),	-- Crafted Malevolent Gladiator's Drape of Meditation
				recipe(143065),	-- Crafted Malevolent Gladiator's Drape of Prowess
				recipe(143088),	-- Crafted Malevolent Gladiator's Felweave Amice
				recipe(143085),	-- Crafted Malevolent Gladiator's Felweave Cowl
				recipe(143084),	-- Crafted Malevolent Gladiator's Felweave Handguards
				recipe(143087),	-- Crafted Malevolent Gladiator's Felweave Raiment
				recipe(143086),	-- Crafted Malevolent Gladiator's Felweave Trousers
				recipe(143072),	-- Crafted Malevolent Gladiator's Mooncloth Gloves
				recipe(143073),	-- Crafted Malevolent Gladiator's Mooncloth Helm
				recipe(143074),	-- Crafted Malevolent Gladiator's Mooncloth Leggings
				recipe(143076),	-- Crafted Malevolent Gladiator's Mooncloth Mantle
				recipe(143075),	-- Crafted Malevolent Gladiator's Mooncloth Robe
				recipe(143077),	-- Crafted Malevolent Gladiator's Satin Gloves
				recipe(143078),	-- Crafted Malevolent Gladiator's Satin Hood
				recipe(143079),	-- Crafted Malevolent Gladiator's Satin Leggings
				recipe(143081),	-- Crafted Malevolent Gladiator's Satin Mantle
				recipe(143080),	-- Crafted Malevolent Gladiator's Satin Robe
				recipe(143071),	-- Crafted Malevolent Gladiator's Silk Amice
				recipe(143068),	-- Crafted Malevolent Gladiator's Silk Cowl
				recipe(143067),	-- Crafted Malevolent Gladiator's Silk Handguards
				recipe(143070),	-- Crafted Malevolent Gladiator's Silk Robe
				recipe(143069),	-- Crafted Malevolent Gladiator's Silk Trousers
				recipe(143059),	-- Crafted Malevolent Gladiator's Treads of Alacrity
				recipe(143058),	-- Crafted Malevolent Gladiator's Treads of Cruelty
				recipe(143060),	-- Crafted Malevolent Gladiator's Treads of Meditation
			}),
			spell(125557, {	-- Imperial Silk
				recipe(138598),	-- Falling Blossom Cowl
				recipe(138600),	-- Falling Blossom Hood
				recipe(138599),	-- Falling Blossom Sandals
				recipe(138597),	-- Falling Blossom Treads
				recipe(137907),	-- Crafted Dreadful Gladiator's Cape of Cruelty
				recipe(137908),	-- Crafted Dreadful Gladiator's Cape of Prowess
				recipe(137936),	-- Crafted Dreadful Gladiator's Cloak of Alacrity
				recipe(137937),	-- Crafted Dreadful Gladiator's Cloak of Prowess
				recipe(137910),	-- Crafted Dreadful Gladiator's Cord of Accuracy
				recipe(137909),	-- Crafted Dreadful Gladiator's Cord of Cruelty
				recipe(137911),	-- Crafted Dreadful Gladiator's Cord of Meditation
				recipe(137915),	-- Crafted Dreadful Gladiator's Cuffs of Accuracy
				recipe(137917),	-- Crafted Dreadful Gladiator's Cuffs of Meditation
				recipe(137916),	-- Crafted Dreadful Gladiator's Cuffs of Prowess
				recipe(137918),	-- Crafted Dreadful Gladiator's Drape of Cruelty
				recipe(137920),	-- Crafted Dreadful Gladiator's Drape of Meditation
				recipe(137919),	-- Crafted Dreadful Gladiator's Drape of Prowess
				recipe(137942),	-- Crafted Dreadful Gladiator's Felweave Amice
				recipe(137939),	-- Crafted Dreadful Gladiator's Felweave Cowl
				recipe(137938),	-- Crafted Dreadful Gladiator's Felweave Handguards
				recipe(137941),	-- Crafted Dreadful Gladiator's Felweave Raiment
				recipe(137940),	-- Crafted Dreadful Gladiator's Felweave Trousers
				recipe(137926),	-- Crafted Dreadful Gladiator's Mooncloth Gloves
				recipe(137927),	-- Crafted Dreadful Gladiator's Mooncloth Helm
				recipe(137928),	-- Crafted Dreadful Gladiator's Mooncloth Leggings
				recipe(137930),	-- Crafted Dreadful Gladiator's Mooncloth Mantle
				recipe(137929),	-- Crafted Dreadful Gladiator's Mooncloth Robe
				recipe(137931),	-- Crafted Dreadful Gladiator's Satin Gloves
				recipe(137932),	-- Crafted Dreadful Gladiator's Satin Hood
				recipe(137933),	-- Crafted Dreadful Gladiator's Satin Leggings
				recipe(137935),	-- Crafted Dreadful Gladiator's Satin Mantle
				recipe(137934),	-- Crafted Dreadful Gladiator's Satin Robe
				recipe(137925),	-- Crafted Dreadful Gladiator's Silk Amice
				recipe(137922),	-- Crafted Dreadful Gladiator's Silk Cowl
				recipe(137921),	-- Crafted Dreadful Gladiator's Silk Handguards
				recipe(137924),	-- Crafted Dreadful Gladiator's Silk Robe
				recipe(137923),	-- Crafted Dreadful Gladiator's Silk Trousers
				recipe(137913),	-- Crafted Dreadful Gladiator's Treads of Alacrity
				recipe(137912),	-- Crafted Dreadful Gladiator's Treads of Cruelty
				recipe(137914),	-- Crafted Dreadful Gladiator's Treads of Meditation
			}),
		}),
	})),
	applyclassicphase(WOD_PHASE_ONE, expansion(EXPANSION.WOD, {
		n(DROPS, {
		}),
		-- #if AFTER SHADOWLANDS
		{
			["name"] = "Optional Reagents",
			["categoryID"] = 1509,
			["groups"] = {
				{
					["name"] = "Impressive Hexweave Essence",
					["recipeID"] = 397864,
					["timeline"] = { ADDED_10_0_5 },
				},
				{
					["name"] = "Relic of the Past I",
					["recipeID"] = 330247
				},
				{
					["name"] = "Relic of the Past II",
					["recipeID"] = 330248
				},
				{
					["name"] = "Relic of the Past III",
					["recipeID"] = 330249
				},
				{
					["name"] = "Relic of the Past IV",
					["recipeID"] = 330250
				},
				{
					["name"] = "Relic of the Past V",
					["recipeID"] = 330251
				},
				{
					["name"] = "Remarkable Hexweave Essence",
					["recipeID"] = 397865,
					["timeline"] = { ADDED_10_0_5 },
				},
			}
		},
		-- #endif
		{
			["name"] = "Battle Standards",
			["categoryID"] = 400,
			["groups"] = {
				{
					["name"] = "Fearsome Battle Standard",
					["races"] = ALLIANCE_ONLY,
					["recipeID"] = 176314,
					-- #if NOT ANYCLASSIC
					["u"] = TRAINING,
					-- #endif
				},
				{
					["name"] = "Fearsome Battle Standard",
					["races"] = HORDE_ONLY,
					["recipeID"] = 176316,
					-- #if NOT ANYCLASSIC
					["u"] = TRAINING,
					-- #endif
				},
				{
					["name"] = "Inspiring Battle Standard",
					["races"] = HORDE_ONLY,
					["recipeID"] = 176315,
					-- #if NOT ANYCLASSIC
					["u"] = TRAINING,
					-- #endif
				},
				{
					["name"] = "Inspiring Battle Standard",
					["races"] = ALLIANCE_ONLY,
					["recipeID"] = 176313,
					-- #if NOT ANYCLASSIC
					["u"] = TRAINING,
					-- #endif
				},
			},
		},
		{
			["name"] = "Reagents and Research",
			["categoryID"] = 366,
			["groups"] = {
				{
					["name"] = "Hexweave Cloth",
					["recipeID"] = 168835
				},
				{
					["name"] = "Primal Weaving",
					["recipeID"] = 182123
				},
				{
					["name"] = "Secrets of Draenor Tailoring",
					["recipeID"] = 176058
				}
			}
		},
		{
			["name"] = "Dyes and Thread",
			["categoryID"] = 364,
			["groups"] = {
				{
					["name"] = "Hexweave Embroidery",
					["recipeID"] = 168836
				},
				{
					["name"] = "Hexweave Essence",
					["recipeID"] = 168855,
					["timeline"] = { REMOVED_9_0_1 },
				},
				{
					["name"] = "Mighty Hexweave Essence",
					["recipeID"] = 187492,
					["timeline"] = { REMOVED_9_0_1 },
				},
				{
					["name"] = "Savage Hexweave Essence",
					["recipeID"] = 187516,
					["timeline"] = { REMOVED_9_0_1 },
				},
			}
		},
		{
			["name"] = "Armor",
			["categoryID"] = 363,
			["groups"] = {
				{
					["name"] = "Brilliant Hexweave Cloak",
					["recipeID"] = 168847
				},
				{
					["name"] = "Hexweave Belt",
					["recipeID"] = 168844
				},
				{
					["name"] = "Hexweave Bracers",
					["recipeID"] = 168842
				},
				{
					["name"] = "Hexweave Cowl",
					["recipeID"] = 168838
				},
				{
					["name"] = "Hexweave Gloves",
					["recipeID"] = 168840
				},
				{
					["name"] = "Hexweave Leggings",
					["recipeID"] = 168839
				},
				{
					["name"] = "Hexweave Mantle",
					["recipeID"] = 168837
				},
				{
					["name"] = "Hexweave Robe",
					["recipeID"] = 168841
				},
				{
					["name"] = "Hexweave Slippers",
					["recipeID"] = 168843
				},
				{
					["name"] = "Nimble Hexweave Cloak",
					["recipeID"] = 168846
				},
				{
					["name"] = "Powerful Hexweave Cloak",
					["recipeID"] = 168845
				},
				{
					["name"] = "Sumptuous Cowl",
					["recipeID"] = 168852
				},
				{
					["name"] = "Sumptuous Leggings",
					["recipeID"] = 168854
				},
				{
					["name"] = "Sumptuous Robes",
					["recipeID"] = 168853
				}
			}
		},
		{
			["name"] = "Other",
			["categoryID"] = 367,
			["groups"] = {
				{
					["name"] = "Creeping Carpet",
					["recipeID"] = 168850
				},
				{
					["name"] = "Elekk Plushie",
					["recipeID"] = 168849
				},
				{
					["name"] = "Hexweave Bag",
					["recipeID"] = 168848
				},
			}
		},
		-- #if AFTER BFA
		{
			["name"] = "Cures of Draenor",
			["categoryID"] = 1087,
			["groups"] = {
				{
					["name"] = "Antiseptic Bandage",
					["recipeID"] = 172539
				}
			}
		},
		-- #endif
	})),
	applyclassicphase(LEGION_PHASE_ONE, expansion(EXPANSION.LEGION, {
		-- #if AFTER SHADOWLANDS
		{
			["name"] = "Optional Reagents",
			["categoryID"] = 1510,
			["groups"] = {
				{
					["name"] = "Relic of the Past I",
					["recipeID"] = 330252
				},
				{
					["name"] = "Relic of the Past II",
					["recipeID"] = 330253
				},
				{
					["name"] = "Relic of the Past III",
					["recipeID"] = 330254
				},
				{
					["name"] = "Relic of the Past IV",
					["recipeID"] = 330255
				},
				{
					["name"] = "Relic of the Past V",
					["recipeID"] = 330256
				}
			}
		},
		-- #endif
		applytraining({
			["name"] = "Training",
			["categoryID"] = 432,
			["groups"] = {
				{
					["name"] = "Basic Silkweave Robe",
					["recipeID"] = 186799
				},
				{
					["name"] = "Embroidered Silkweave Robe",
					["recipeID"] = 186801
				},
				{
					["name"] = "Handcrafted Silkweave Bag",
					["recipeID"] = 186803
				},
				{
					["name"] = "Handcrafted Silkweave Hood",
					["recipeID"] = 187060
				},
				{
					["name"] = "Handcrafted Silkweave Robe",
					["recipeID"] = 186738
				},
				{
					["name"] = "Masterwork Silkweave Bracers",
					["recipeID"] = 187066
				},
				{
					["name"] = "Rune-Threaded Silkweave Bracers",
					["recipeID"] = 186764
				},
				{
					["name"] = "Rune-Threaded Silkweave Robe",
					["recipeID"] = 186763
				},
				{
					["name"] = "Silkweave Bracer Lining",
					["recipeID"] = 187064
				},
				{
					["name"] = "Silkweave Bracer: Outer Layer",
					["recipeID"] = 187065
				},
				{
					["name"] = "Silkweave Hood Lining",
					["recipeID"] = 187058
				},
				{
					["name"] = "Silkweave Hood: Outer Layer",
					["recipeID"] = 187059
				}
			}
		}),
		{
			["name"] = "Reagents",
			["categoryID"] = 496,
			["groups"] = {
				{
					["name"] = "Imbued Silkweave",
					["recipeID"] = 185962
				}
			}
		},
		{
			["name"] = "Cloth Armor",
			["categoryID"] = 495,
			["groups"] = {
				{
					["name"] = "Celumbra, the Night's Dichotomy",
					["recipeID"] = 239412
				},
				{
					["name"] = "Imbued Silkweave Bracers",
					["nextRecipeID"] = 185946,
					["recipeID"] = 185926
				},
				{
					["name"] = "Imbued Silkweave Bracers",
					["nextRecipeID"] = 185954,
					["previousRecipeID"] = 185926,
					["recipeID"] = 185946
				},
				{
					["name"] = "Imbued Silkweave Bracers",
					["previousRecipeID"] = 185946,
					["recipeID"] = 185954
				},
				{
					["name"] = "Imbued Silkweave Cinch",
					["nextRecipeID"] = 185947,
					["recipeID"] = 185927
				},
				{
					["name"] = "Imbued Silkweave Cinch",
					["nextRecipeID"] = 185955,
					["previousRecipeID"] = 185927,
					["recipeID"] = 185947
				},
				{
					["name"] = "Imbued Silkweave Cinch",
					["previousRecipeID"] = 185947,
					["recipeID"] = 185955
				},
				{
					["name"] = "Imbued Silkweave Epaulets",
					["nextRecipeID"] = 185948,
					["recipeID"] = 185928
				},
				{
					["name"] = "Imbued Silkweave Epaulets",
					["nextRecipeID"] = 185956,
					["previousRecipeID"] = 185928,
					["recipeID"] = 185948
				},
				{
					["name"] = "Imbued Silkweave Epaulets",	-- Rank 3
					["timeline"] = { REMOVED_8_0_1, ADDED_10_0_7 },
					["previousRecipeID"] = 185948,
					["recipeID"] = 185956
				},
				{
					["name"] = "Imbued Silkweave Gloves",
					["nextRecipeID"] = 185951,
					["recipeID"] = 185931
				},
				{
					["name"] = "Imbued Silkweave Gloves",
					["nextRecipeID"] = 185959,
					["previousRecipeID"] = 185931,
					["recipeID"] = 185951
				},
				{
					["name"] = "Imbued Silkweave Gloves",
					["previousRecipeID"] = 185951,
					["recipeID"] = 185959
				},
				{
					["name"] = "Imbued Silkweave Hood",
					["nextRecipeID"] = 185950,
					["recipeID"] = 185930
				},
				{
					["name"] = "Imbued Silkweave Hood",
					["nextRecipeID"] = 185958,
					["previousRecipeID"] = 185930,
					["recipeID"] = 185950
				},
				{
					["name"] = "Imbued Silkweave Hood",
					["previousRecipeID"] = 185950,
					["recipeID"] = 185958
				},
				{
					["name"] = "Imbued Silkweave Pantaloons",
					["nextRecipeID"] = 185949,
					["recipeID"] = 185929
				},
				{
					["name"] = "Imbued Silkweave Pantaloons",
					["nextRecipeID"] = 185957,
					["previousRecipeID"] = 185929,
					["recipeID"] = 185949
				},
				{
					["name"] = "Imbued Silkweave Pantaloons",
					["previousRecipeID"] = 185949,
					["recipeID"] = 185957
				},
				{
					["name"] = "Imbued Silkweave Robe",
					["nextRecipeID"] = 185953,
					["recipeID"] = 185933
				},
				{
					["name"] = "Imbued Silkweave Robe",
					["nextRecipeID"] = 185961,
					["previousRecipeID"] = 185933,
					["recipeID"] = 185953
				},
				{
					["name"] = "Imbued Silkweave Robe",
					["previousRecipeID"] = 185953,
					["recipeID"] = 185961
				},
				{
					["name"] = "Imbued Silkweave Slippers",
					["nextRecipeID"] = 185952,
					["recipeID"] = 185932
				},
				{
					["name"] = "Imbued Silkweave Slippers",
					["nextRecipeID"] = 185960,
					["previousRecipeID"] = 185932,
					["recipeID"] = 185952
				},
				{
					["name"] = "Imbued Silkweave Slippers",
					["previousRecipeID"] = 185952,
					["recipeID"] = 185960
				},
				{
					["name"] = "Lightweave Breeches",
					["nextRecipeID"] = 247808,
					["recipeID"] = 247807
				},
				{
					["name"] = "Lightweave Breeches",
					["nextRecipeID"] = 247809,
					["previousRecipeID"] = 247807,
					["recipeID"] = 247808
				},
				{
					["name"] = "Lightweave Breeches",
					["previousRecipeID"] = 247808,
					["recipeID"] = 247809
				},
				{
					["name"] = "Silkweave Bracers",
					["nextRecipeID"] = 185934,
					["recipeID"] = 185918
				},
				{
					["name"] = "Silkweave Bracers",
					["nextRecipeID"] = 185942,
					["previousRecipeID"] = 185918,
					["recipeID"] = 185934
				},
				{
					["name"] = "Silkweave Bracers",
					["previousRecipeID"] = 185934,
					["recipeID"] = 185942
				},
				{
					["name"] = "Silkweave Cinch",
					["nextRecipeID"] = 185935,
					["recipeID"] = 185919
				},
				{
					["name"] = "Silkweave Cinch",
					["nextRecipeID"] = 185943,
					["previousRecipeID"] = 185919,
					["recipeID"] = 185935
				},
				{
					["name"] = "Silkweave Cinch",
					["previousRecipeID"] = 185935,
					["recipeID"] = 185943
				},
				{
					["name"] = "Silkweave Epaulets",
					["nextRecipeID"] = 185936,
					["recipeID"] = 185920
				},
				{
					["name"] = "Silkweave Epaulets",
					["nextRecipeID"] = 185944,
					["previousRecipeID"] = 185920,
					["recipeID"] = 185936
				},
				{
					["name"] = "Silkweave Epaulets",
					["previousRecipeID"] = 185936,
					["recipeID"] = 185944
				},
				{
					["name"] = "Silkweave Gloves",
					["nextRecipeID"] = 185939,
					["recipeID"] = 185923
				},
				{
					["name"] = "Silkweave Gloves",
					["nextRecipeID"] = 208350,
					["previousRecipeID"] = 185923,
					["recipeID"] = 185939
				},
				{
					["name"] = "Silkweave Gloves",
					["previousRecipeID"] = 185939,
					["recipeID"] = 208350
				},
				{
					["name"] = "Silkweave Hood",
					["nextRecipeID"] = 185938,
					["recipeID"] = 185922
				},
				{
					["name"] = "Silkweave Hood",
					["nextRecipeID"] = 208351,
					["previousRecipeID"] = 185922,
					["recipeID"] = 185938
				},
				{
					["name"] = "Silkweave Hood",
					["previousRecipeID"] = 185938,
					["recipeID"] = 208351
				},
				{
					["name"] = "Silkweave Pantaloons",
					["nextRecipeID"] = 185937,
					["recipeID"] = 185921
				},
				{
					["name"] = "Silkweave Pantaloons",
					["nextRecipeID"] = 208353,
					["previousRecipeID"] = 185921,
					["recipeID"] = 185937
				},
				{
					["name"] = "Silkweave Pantaloons",
					["previousRecipeID"] = 185937,
					["recipeID"] = 208353
				},
				{
					["name"] = "Silkweave Robe",
					["nextRecipeID"] = 185941,
					["recipeID"] = 185925
				},
				{
					["name"] = "Silkweave Robe",
					["nextRecipeID"] = 185945,
					["previousRecipeID"] = 185925,
					["recipeID"] = 185941
				},
				{
					["name"] = "Silkweave Robe",
					["previousRecipeID"] = 185941,
					["recipeID"] = 185945
				},
				{
					["name"] = "Silkweave Slippers",
					["nextRecipeID"] = 185940,
					["recipeID"] = 185924
				},
				{
					["name"] = "Silkweave Slippers",
					["nextRecipeID"] = 208352,
					["previousRecipeID"] = 185924,
					["recipeID"] = 185940
				},
				{
					["name"] = "Silkweave Slippers",
					["previousRecipeID"] = 185940,
					["recipeID"] = 208352
				}
			}
		},
		{
			["name"] = "Cloaks",
			["categoryID"] = 431,
			["groups"] = {
				{
					["name"] = "Imbued Silkweave Cover",
					["nextRecipeID"] = 186113,
					["recipeID"] = 186112
				},
				{
					["name"] = "Imbued Silkweave Cover",
					["nextRecipeID"] = 186114,
					["previousRecipeID"] = 186112,
					["recipeID"] = 186113
				},
				{
					["name"] = "Imbued Silkweave Cover",
					["previousRecipeID"] = 186113,
					["recipeID"] = 186114
				},
				{
					["name"] = "Imbued Silkweave Drape",
					["nextRecipeID"] = 186116,
					["recipeID"] = 186115
				},
				{
					["name"] = "Imbued Silkweave Drape",
					["nextRecipeID"] = 186117,
					["previousRecipeID"] = 186115,
					["recipeID"] = 186116
				},
				{
					["name"] = "Imbued Silkweave Drape",
					["previousRecipeID"] = 186116,
					["recipeID"] = 186117
				},
				{
					["name"] = "Imbued Silkweave Flourish",
					["nextRecipeID"] = 186110,
					["recipeID"] = 186109
				},
				{
					["name"] = "Imbued Silkweave Flourish",
					["nextRecipeID"] = 186111,
					["previousRecipeID"] = 186109,
					["recipeID"] = 186110
				},
				{
					["name"] = "Imbued Silkweave Flourish",
					["previousRecipeID"] = 186110,
					["recipeID"] = 186111
				},
				{
					["name"] = "Imbued Silkweave Shade",
					["nextRecipeID"] = 186107,
					["recipeID"] = 186106
				},
				{
					["name"] = "Imbued Silkweave Shade",
					["nextRecipeID"] = 186108,
					["previousRecipeID"] = 186106,
					["recipeID"] = 186107
				},
				{
					["name"] = "Imbued Silkweave Shade",
					["previousRecipeID"] = 186107,
					["recipeID"] = 186108
				},
				{
					["name"] = "Silkweave Cover",
					["recipeID"] = 186097
				},
				{
					["name"] = "Silkweave Drape",
					["recipeID"] = 186100
				},
				{
					["name"] = "Silkweave Flourish",
					["recipeID"] = 186094
				},
				{
					["name"] = "Silkweave Shade",
					["recipeID"] = 186091
				}
			}
		},
		{
			["name"] = "Other",
			["categoryID"] = 497,
			["groups"] = {
				{
					["name"] = "Bloodtotem Saddle Blanket",
					["recipeID"] = 220511
				},
				{
					["name"] = "Clothes Chest: Dalaran Citizens",
					["recipeID"] = 213035
				},
				{
					["name"] = "Clothes Chest: Karazhan Opera House",
					["recipeID"] = 213036
				},
				{
					["name"] = "Clothes Chest: Molten Core",
					["recipeID"] = 213037
				},
				{
					["name"] = "Imbued Silkweave Bag",
					["nextRecipeID"] = 229043,
					["recipeID"] = 229041
				},
				{
					["name"] = "Imbued Silkweave Bag",
					["nextRecipeID"] = 229045,
					["previousRecipeID"] = 229041,
					["recipeID"] = 229043
				},
				{
					["name"] = "Imbued Silkweave Bag",
					["previousRecipeID"] = 229043,
					["recipeID"] = 229045
				},
				{
					["name"] = "Silkweave Satchel",
					["recipeID"] = 186388
				}
			}
		},
		-- #if AFTER BFA
		{
			["name"] = "Cures of the Broken Isles",
			["categoryID"] = 1088,
			["groups"] = {
				{
					["name"] = "Feathered Luffa",
					["recipeID"] = 230047
				},
				{
					["name"] = "Silkweave Bandage",
					["recipeID"] = 202853
				},
				{
					["name"] = "Silkweave Splint",
					["recipeID"] = 202854
				}
			}
		},
		-- #endif
	})),
	applyclassicphase(BFA_PHASE_ONE, expansion(EXPANSION.BFA, {
		{
			["name"] = "Embroidery",
			["categoryID"] = 1116,
			["groups"] = {
				{
					["name"] = "Discreet Spellthread",
					["recipeID"] = 279183
				},
				{
					["name"] = "Embroidered Deep Sea Satin",
					["recipeID"] = 272440
				},
				{
					["name"] = "Feathery Spellthread",
					["recipeID"] = 279184
				},
				{
					["name"] = "Resilient Spellthread",
					["recipeID"] = 279182
				}
			}
		},
		{
			["name"] = "Optional Reagents",
			["categoryID"] = 1511,
			["groups"] = {
				{
					["name"] = "Relic of the Past I",
					["recipeID"] = 330257
				},
				{
					["name"] = "Relic of the Past II",
					["recipeID"] = 330258
				},
				{
					["name"] = "Relic of the Past III",
					["recipeID"] = 330259
				},
				{
					["name"] = "Relic of the Past IV",
					["recipeID"] = 330260
				},
				{
					["name"] = "Relic of the Past V",
					["recipeID"] = 330261
				}
			}
		},
		{
			["name"] = "Bags",
			["categoryID"] = 943,
			["groups"] = {
				{
					["name"] = "Deep Sea Bag",
					["nextRecipeID"] = 257126,
					["recipeID"] = 257125
				},
				{
					["name"] = "Deep Sea Bag",
					["nextRecipeID"] = 257127,
					["previousRecipeID"] = 257125,
					["recipeID"] = 257126
				},
				{
					["name"] = "Deep Sea Bag",
					["previousRecipeID"] = 257126,
					["recipeID"] = 257127
				},
				{
					["name"] = "Embroidered Deep Sea Bag",
					["nextRecipeID"] = 257129,
					["recipeID"] = 257128
				},
				{
					["name"] = "Embroidered Deep Sea Bag",
					["nextRecipeID"] = 257130,
					["previousRecipeID"] = 257128,
					["recipeID"] = 257129
				},
				{
					["name"] = "Embroidered Deep Sea Bag",
					["previousRecipeID"] = 257129,
					["recipeID"] = 257130
				}
			}
		},
		{
			["name"] = "Armor",
			["categoryID"] = 944,
			["groups"] = {
				{
					["name"] = "Banded Seaweave Breeches",
					["recipeID"] = 299036
				},
				{
					["name"] = "Banded Seaweave Gloves",
					["recipeID"] = 299033
				},
				{
					["name"] = "Eldritch Seaweave Breeches",
					["recipeID"] = 304564
				},
				{
					["name"] = "Eldritch Seaweave Gloves",
					["recipeID"] = 304561
				},
				{
					["name"] = "Emblazoned Deep Sea Breeches",
					["recipeID"] = 257124
				},
				{
					["name"] = "Emblazoned Deep Sea Gloves",
					["recipeID"] = 257121
				},
				{
					["name"] = "Embroidered Deep Sea Breeches",
					["recipeID"] = 257122
				},
				{
					["name"] = "Embroidered Deep Sea Cloak",
					["nextRecipeID"] = 257115,
					["recipeID"] = 257114
				},
				{
					["name"] = "Embroidered Deep Sea Cloak",
					["nextRecipeID"] = 257116,
					["previousRecipeID"] = 257114,
					["recipeID"] = 257115
				},
				{
					["name"] = "Embroidered Deep Sea Cloak",
					["previousRecipeID"] = 257115,
					["recipeID"] = 257116
				},
				{
					["name"] = "Embroidered Deep Sea Gloves",
					["recipeID"] = 257118
				},
				{
					["name"] = "Enhanced Deep Sea Breeches",
					["recipeID"] = 285077
				},
				{
					["name"] = "Enhanced Deep Sea Gloves",
					["recipeID"] = 285078
				},
				{
					["name"] = "Fortified Deep Sea Breeches",
					["recipeID"] = 285085
				},
				{
					["name"] = "Fortified Deep Sea Gloves",
					["recipeID"] = 285086
				},
				{
					["name"] = "Gilded Seaweave Breeches",
					["recipeID"] = 299034
				},
				{
					["name"] = "Gilded Seaweave Gloves",
					["recipeID"] = 299031
				},
				{
					["name"] = "Honorable Combatant's Satin Belt",
					["nextRecipeID"] = 269609,
					["recipeID"] = 269608
				},
				{
					["name"] = "Honorable Combatant's Satin Belt",
					["nextRecipeID"] = 269610,
					["previousRecipeID"] = 269608,
					["recipeID"] = 269609
				},
				{
					["name"] = "Honorable Combatant's Satin Belt",
					["previousRecipeID"] = 269609,
					["recipeID"] = 269610
				},
				{
					["name"] = "Honorable Combatant's Satin Boots",
					["nextRecipeID"] = 269600,
					["recipeID"] = 269599
				},
				{
					["name"] = "Honorable Combatant's Satin Boots",
					["nextRecipeID"] = 269601,
					["previousRecipeID"] = 269599,
					["recipeID"] = 269600
				},
				{
					["name"] = "Honorable Combatant's Satin Boots",
					["previousRecipeID"] = 269600,
					["recipeID"] = 269601
				},
				{
					["name"] = "Honorable Combatant's Satin Bracers",
					["nextRecipeID"] = 269612,
					["recipeID"] = 269611
				},
				{
					["name"] = "Honorable Combatant's Satin Bracers",
					["nextRecipeID"] = 269613,
					["previousRecipeID"] = 269611,
					["recipeID"] = 269612
				},
				{
					["name"] = "Honorable Combatant's Satin Bracers",
					["previousRecipeID"] = 269612,
					["recipeID"] = 269613
				},
				{
					["name"] = "Honorable Combatant's Satin Cloak",
					["nextRecipeID"] = 269597,
					["recipeID"] = 269596
				},
				{
					["name"] = "Honorable Combatant's Satin Cloak",
					["nextRecipeID"] = 269598,
					["previousRecipeID"] = 269596,
					["recipeID"] = 269597
				},
				{
					["name"] = "Honorable Combatant's Satin Cloak",
					["previousRecipeID"] = 269597,
					["recipeID"] = 269598
				},
				{
					["name"] = "Honorable Combatant's Satin Mittens",
					["nextRecipeID"] = 269603,
					["recipeID"] = 269602
				},
				{
					["name"] = "Honorable Combatant's Satin Mittens",
					["nextRecipeID"] = 269604,
					["previousRecipeID"] = 269602,
					["recipeID"] = 269603
				},
				{
					["name"] = "Honorable Combatant's Satin Mittens",
					["previousRecipeID"] = 269603,
					["recipeID"] = 269604
				},
				{
					["name"] = "Honorable Combatant's Satin Pants",
					["nextRecipeID"] = 269606,
					["recipeID"] = 269605
				},
				{
					["name"] = "Honorable Combatant's Satin Pants",
					["nextRecipeID"] = 269607,
					["previousRecipeID"] = 269605,
					["recipeID"] = 269606
				},
				{
					["name"] = "Honorable Combatant's Satin Pants",
					["previousRecipeID"] = 269606,
					["recipeID"] = 269607
				},
				{
					["name"] = "Imbued Deep Sea Breeches",
					["recipeID"] = 257123
				},
				{
					["name"] = "Imbued Deep Sea Gloves",
					["recipeID"] = 257120
				},
				{
					["name"] = "Maddening Seaweave Breeches",
					["recipeID"] = 304563
				},
				{
					["name"] = "Maddening Seaweave Gloves",
					["recipeID"] = 304560
				},
				{
					["name"] = "Notorious Combatant's Satin Belt",
					["nextRecipeID"] = 294842,
					["recipeID"] = 294841
				},
				{
					["name"] = "Notorious Combatant's Satin Belt",
					["nextRecipeID"] = 294843,
					["previousRecipeID"] = 294841,
					["recipeID"] = 294842
				},
				{
					["name"] = "Notorious Combatant's Satin Belt",
					["previousRecipeID"] = 294842,
					["recipeID"] = 294843
				},
				{
					["name"] = "Notorious Combatant's Satin Boots",
					["nextRecipeID"] = 294833,
					["recipeID"] = 294832
				},
				{
					["name"] = "Notorious Combatant's Satin Boots",
					["nextRecipeID"] = 294834,
					["previousRecipeID"] = 294832,
					["recipeID"] = 294833
				},
				{
					["name"] = "Notorious Combatant's Satin Boots",
					["previousRecipeID"] = 294833,
					["recipeID"] = 294834
				},
				{
					["name"] = "Notorious Combatant's Satin Bracers",
					["nextRecipeID"] = 294845,
					["recipeID"] = 294844
				},
				{
					["name"] = "Notorious Combatant's Satin Bracers",
					["nextRecipeID"] = 294846,
					["previousRecipeID"] = 294844,
					["recipeID"] = 294845
				},
				{
					["name"] = "Notorious Combatant's Satin Bracers",
					["previousRecipeID"] = 294845,
					["recipeID"] = 294846
				},
				{
					["name"] = "Notorious Combatant's Satin Cloak",
					["nextRecipeID"] = 294830,
					["recipeID"] = 294829
				},
				{
					["name"] = "Notorious Combatant's Satin Cloak",
					["nextRecipeID"] = 294831,
					["previousRecipeID"] = 294829,
					["recipeID"] = 294830
				},
				{
					["name"] = "Notorious Combatant's Satin Cloak",
					["previousRecipeID"] = 294830,
					["recipeID"] = 294831
				},
				{
					["name"] = "Notorious Combatant's Satin Mittens",
					["nextRecipeID"] = 294836,
					["recipeID"] = 294835
				},
				{
					["name"] = "Notorious Combatant's Satin Mittens",
					["nextRecipeID"] = 294837,
					["previousRecipeID"] = 294835,
					["recipeID"] = 294836
				},
				{
					["name"] = "Notorious Combatant's Satin Mittens",
					["previousRecipeID"] = 294836,
					["recipeID"] = 294837
				},
				{
					["name"] = "Notorious Combatant's Satin Pants",
					["nextRecipeID"] = 294839,
					["recipeID"] = 294838
				},
				{
					["name"] = "Notorious Combatant's Satin Pants",
					["nextRecipeID"] = 294840,
					["previousRecipeID"] = 294838,
					["recipeID"] = 294839
				},
				{
					["name"] = "Notorious Combatant's Satin Pants",
					["previousRecipeID"] = 294839,
					["recipeID"] = 294840
				},
				{
					["name"] = "Reinforced Seaweave Breeches",
					["recipeID"] = 299035
				},
				{
					["name"] = "Reinforced Seaweave Gloves",
					["recipeID"] = 299032
				},
				{
					["name"] = "Sinister Combatant's Satin Belt",
					["nextRecipeID"] = 282169,
					["recipeID"] = 282168
				},
				{
					["name"] = "Sinister Combatant's Satin Belt",
					["nextRecipeID"] = 282170,
					["previousRecipeID"] = 282168,
					["recipeID"] = 282169
				},
				{
					["name"] = "Sinister Combatant's Satin Belt",
					["previousRecipeID"] = 282169,
					["recipeID"] = 282170
				},
				{
					["name"] = "Sinister Combatant's Satin Boots",
					["nextRecipeID"] = 282195,
					["recipeID"] = 282194
				},
				{
					["name"] = "Sinister Combatant's Satin Boots",
					["nextRecipeID"] = 282196,
					["previousRecipeID"] = 282194,
					["recipeID"] = 282195
				},
				{
					["name"] = "Sinister Combatant's Satin Boots",
					["previousRecipeID"] = 282195,
					["recipeID"] = 282196
				},
				{
					["name"] = "Sinister Combatant's Satin Bracers",
					["nextRecipeID"] = 282165,
					["recipeID"] = 282164
				},
				{
					["name"] = "Sinister Combatant's Satin Bracers",
					["nextRecipeID"] = 282166,
					["previousRecipeID"] = 282164,
					["recipeID"] = 282165
				},
				{
					["name"] = "Sinister Combatant's Satin Bracers",
					["previousRecipeID"] = 282165,
					["recipeID"] = 282166
				},
				{
					["name"] = "Sinister Combatant's Satin Cloak",
					["nextRecipeID"] = 282275,
					["recipeID"] = 282204
				},
				{
					["name"] = "Sinister Combatant's Satin Cloak",
					["nextRecipeID"] = 282276,
					["previousRecipeID"] = 282204,
					["recipeID"] = 282275
				},
				{
					["name"] = "Sinister Combatant's Satin Cloak",
					["previousRecipeID"] = 282275,
					["recipeID"] = 282276
				},
				{
					["name"] = "Sinister Combatant's Satin Mittens",
					["nextRecipeID"] = 282192,
					["recipeID"] = 282191
				},
				{
					["name"] = "Sinister Combatant's Satin Mittens",
					["nextRecipeID"] = 282193,
					["previousRecipeID"] = 282191,
					["recipeID"] = 282192
				},
				{
					["name"] = "Sinister Combatant's Satin Mittens",
					["previousRecipeID"] = 282192,
					["recipeID"] = 282193
				},
				{
					["name"] = "Sinister Combatant's Satin Pants",
					["nextRecipeID"] = 282176,
					["recipeID"] = 282175
				},
				{
					["name"] = "Sinister Combatant's Satin Pants",
					["nextRecipeID"] = 282177,
					["previousRecipeID"] = 282175,
					["recipeID"] = 282176
				},
				{
					["name"] = "Sinister Combatant's Satin Pants",
					["previousRecipeID"] = 282176,
					["recipeID"] = 282177
				},
				{
					["name"] = "Tempered Deep Sea Breeches",
					["recipeID"] = 285093
				},
				{
					["name"] = "Tempered Deep Sea Gloves",
					["recipeID"] = 285094
				},
				{
					["name"] = "Tidespray Linen Belt",
					["recipeID"] = 257102
				},
				{
					["name"] = "Tidespray Linen Bracers",
					["recipeID"] = 257103
				},
				{
					["name"] = "Tidespray Linen Cloak",
					["recipeID"] = 257107
				},
				{
					["name"] = "Tidespray Linen Hood",
					["recipeID"] = 257097
				},
				{
					["name"] = "Tidespray Linen Mittens",
					["recipeID"] = 257096
				},
				{
					["name"] = "Tidespray Linen Pants",
					["recipeID"] = 257099
				},
				{
					["name"] = "Tidespray Linen Robe",
					["recipeID"] = 257104
				},
				{
					["name"] = "Tidespray Linen Sandals",
					["recipeID"] = 257095
				},
				{
					["name"] = "Tidespray Linen Spaulders",
					["recipeID"] = 257101
				},
				{
					["name"] = "Uncanny Combatant's Satin Belt",
					["nextRecipeID"] = 304578,
					["recipeID"] = 304577
				},
				{
					["name"] = "Uncanny Combatant's Satin Belt",
					["nextRecipeID"] = 304579,
					["previousRecipeID"] = 304577,
					["recipeID"] = 304578
				},
				{
					["name"] = "Uncanny Combatant's Satin Belt",
					["previousRecipeID"] = 304578,
					["recipeID"] = 304579
				},
				{
					["name"] = "Uncanny Combatant's Satin Boots",
					["nextRecipeID"] = 304569,
					["recipeID"] = 304568
				},
				{
					["name"] = "Uncanny Combatant's Satin Boots",
					["nextRecipeID"] = 304570,
					["previousRecipeID"] = 304568,
					["recipeID"] = 304569
				},
				{
					["name"] = "Uncanny Combatant's Satin Boots",
					["previousRecipeID"] = 304569,
					["recipeID"] = 304570
				},
				{
					["name"] = "Uncanny Combatant's Satin Bracers",
					["nextRecipeID"] = 304581,
					["recipeID"] = 304580
				},
				{
					["name"] = "Uncanny Combatant's Satin Bracers",
					["nextRecipeID"] = 304582,
					["previousRecipeID"] = 304580,
					["recipeID"] = 304581
				},
				{
					["name"] = "Uncanny Combatant's Satin Bracers",
					["previousRecipeID"] = 304581,
					["recipeID"] = 304582
				},
				{
					["name"] = "Uncanny Combatant's Satin Cloak",
					["nextRecipeID"] = 304566,
					["recipeID"] = 304565
				},
				{
					["name"] = "Uncanny Combatant's Satin Cloak",
					["nextRecipeID"] = 304567,
					["previousRecipeID"] = 304565,
					["recipeID"] = 304566
				},
				{
					["name"] = "Uncanny Combatant's Satin Cloak",
					["previousRecipeID"] = 304566,
					["recipeID"] = 304567
				},
				{
					["name"] = "Uncanny Combatant's Satin Mittens",
					["nextRecipeID"] = 304572,
					["recipeID"] = 304571
				},
				{
					["name"] = "Uncanny Combatant's Satin Mittens",
					["nextRecipeID"] = 304573,
					["previousRecipeID"] = 304571,
					["recipeID"] = 304572
				},
				{
					["name"] = "Uncanny Combatant's Satin Mittens",
					["previousRecipeID"] = 304572,
					["recipeID"] = 304573
				},
				{
					["name"] = "Uncanny Combatant's Satin Pants",
					["nextRecipeID"] = 304575,
					["recipeID"] = 304574
				},
				{
					["name"] = "Uncanny Combatant's Satin Pants",
					["nextRecipeID"] = 304576,
					["previousRecipeID"] = 304574,
					["recipeID"] = 304575
				},
				{
					["name"] = "Uncanny Combatant's Satin Pants",
					["previousRecipeID"] = 304575,
					["recipeID"] = 304576
				},
				{
					["name"] = "Unsettling Seaweave Breeches",
					["recipeID"] = 304562
				},
				{
					["name"] = "Unsettling Seaweave Gloves",
					["recipeID"] = 304559
				}
			}
		},
		{
			["name"] = "Battle Flags",
			["categoryID"] = 945,
			["groups"] = {
				{
					["name"] = "Battle Flag: Phalanx Defense",
					["nextRecipeID"] = 257135,
					["recipeID"] = 257134
				},
				{
					["name"] = "Battle Flag: Phalanx Defense",
					["nextRecipeID"] = 257136,
					["previousRecipeID"] = 257134,
					["recipeID"] = 257135
				},
				{
					["name"] = "Battle Flag: Phalanx Defense",
					["previousRecipeID"] = 257135,
					["recipeID"] = 257136
				},
				{
					["name"] = "Battle Flag: Rallying Swiftness",
					["nextRecipeID"] = 257138,
					["recipeID"] = 257137
				},
				{
					["name"] = "Battle Flag: Rallying Swiftness",
					["nextRecipeID"] = 257139,
					["previousRecipeID"] = 257137,
					["recipeID"] = 257138
				},
				{
					["name"] = "Battle Flag: Rallying Swiftness",
					["previousRecipeID"] = 257138,
					["recipeID"] = 257139
				},
				{
					["name"] = "Battle Flag: Spirit of Freedom",
					["nextRecipeID"] = 257132,
					["recipeID"] = 257131
				},
				{
					["name"] = "Battle Flag: Spirit of Freedom",
					["nextRecipeID"] = 257133,
					["previousRecipeID"] = 257131,
					["recipeID"] = 257132
				},
				{
					["name"] = "Battle Flag: Spirit of Freedom",
					["previousRecipeID"] = 257132,
					["recipeID"] = 257133
				}
			}
		},
		{
			["name"] = "Other",
			["categoryID"] = 946,
			["groups"] = {
				{
					["name"] = "Hooked Deep Sea Net",
					["recipeID"] = 268983
				},
				{
					["name"] = "Tidespray Linen Net",
					["recipeID"] = 268982
				}
			}
		},
		{
			["name"] = "Bandages",
			["categoryID"] = 1086,
			["groups"] = {
				{
					["name"] = "Deep Sea Bandage",
					["recipeID"] = 267202
				},
				{
					["name"] = "Tidespray Linen Bandage",
					["recipeID"] = 267201
				}
			}
		},
		{
			["name"] = "Conversions",
			["categoryID"] = 1245,
			["groups"] = {
				{
					["name"] = "Aqueous Alteration",
					["recipeID"] = 287274
				},
				{
					["name"] = "Sanguinated Alteration",
					["recipeID"] = 286654
				}
			}
		},
		{
			["name"] = "Mounts Equipment",
			["categoryID"] = 1289,
			["groups"] = {
				{
					["name"] = "Saddlechute",
					["recipeID"] = 301409
				},
				{
					["name"] = "Seabreeze Saddle Blanket",
					["recipeID"] = 301403
				}
			}
		},
		{
			["name"] = "Focus",
			["categoryID"] = 1309,
			["groups"] = {
				{
					["name"] = "Void Focus",
					["recipeID"] = 307175
				}
			}
		},
		{
			["name"] = "Follower Equipment",
			["categoryID"] = 1230,
			["groups"] = {
				{
					["name"] = "Rough-hooked Tidespray Linen",
					["recipeID"] = 278414
				}
			}
		},
		n(DISCOVERY, {
			{	-- Embroidered Deep Sea Breeches
				["spellID"] = 257122,	-- Embroidered Deep Sea Breeches
				["groups"] = {
					i(162509),	-- Pattern: Imbued Deep Sea Breeches
				},
			},
			{	-- Embroidered Deep Sea Gloves
				["spellID"] = 257118,	-- Embroidered Deep Sea Gloves
				["groups"] = {
					i(162507),	-- Pattern: Imbued Deep Sea Gloves
				},
			},
			{	-- Enhanced Deep Sea Breeches
				["spellID"] = 285077,	-- Enhanced Deep Sea Breeches
				["groups"] = {
					i(165655),	-- Pattern: Fortified Deep Sea Breeches
				},
			},
			{	-- Enhanced Deep Sea Gloves
				["spellID"] = 285078,	-- Enhanced Deep Sea Gloves
				["groups"] = {
					i(165652),	-- Pattern: Fortified Deep Sea Gloves
				},
			},
			{	-- Fortified Deep Sea Breeches
				["spellID"] = 285085,	-- Fortified Deep Sea Breeches
				["groups"] = {
					i(165654),	-- Pattern: Tempered Deep Sea Breeches
				},
			},
			{	-- Fortified Deep Sea Gloves
				["spellID"] = 285086,	-- Fortified Deep Sea Gloves
				["groups"] = {
					i(165653),	-- Pattern: Tempered Deep Sea Gloves
				},
			},
			{	-- Imbued Deep Sea Breeches
				["spellID"] = 257123,	-- Imbued Deep Sea Breeches
				["groups"] = {
					i(162510),	-- Pattern: Emblazoned Deep Sea Breeches
				},
			},
			{	-- Imbued Deep Sea Gloves
				["spellID"] = 257120,	-- Imbued Deep Sea Gloves
				["groups"] = {
					i(162508),	-- Pattern: Emblazoned Deep Sea Gloves
				},
			},
		}),
	})),
	applyclassicphase(SHADOWLANDS_PHASE_ONE, expansion(EXPANSION.SL, {
		applytraining({
			-- All Quest Recipes marked unobtainable(training) because they are only learned temporarily
			-- for world quests then disappear from the spellbook after the quest is completed.
			["name"] = "Quest Recipes",
			["categoryID"] = 1532,
			["groups"] = {
				{
					["name"] = "Ardensilk Cloth",
					["recipeID"] = 338270
				},
				{
					["name"] = "Bleakcloth",
					["recipeID"] = 338277
				},
				{
					["name"] = "Bolt of Ardensilk Cloth",
					["recipeID"] = 338269
				},
				{
					["name"] = "Bolt of Bleakcloth",
					["recipeID"] = 338276
				},
				{
					["name"] = "Bolt of Prideweave",
					["recipeID"] = 338279
				},
				{
					["name"] = "Bolt of Woven Gossamer",
					["recipeID"] = 338272
				},
				{
					["name"] = "Cloak of Camouflage",
					["recipeID"] = 338267
				},
				{
					["name"] = "Gossamer Cloth",
					["recipeID"] = 338273
				},
				{
					["name"] = "Haunting Hood",
					["recipeID"] = 338275
				},
				{
					["name"] = "Looming Tapestry",
					["recipeID"] = 338278
				},
				{
					["name"] = "Prideweave Cloth",
					["recipeID"] = 338280
				},
				{
					["name"] = "Woven Gossamer Tunic",
					["recipeID"] = 338271
				}
			}
		}),
		{
			["name"] = "Optional Reagents",
			["categoryID"] = 1401,
			["groups"] = {
				{
					["name"] = "Crafter's Mark I",
					["recipeID"] = 343204
				},
				{
					["name"] = "Crafter's Mark II",
					["recipeID"] = 343202
				},
				{
					["name"] = "Crafter's Mark IV",
					["recipeID"] = 359661,
					["timeline"] = { ADDED_9_2_0 },
				},
				{
					["name"] = "Crafter's Mark of the First Ones",
					["recipeID"] = 359670,
					["timeline"] = { ADDED_9_2_0 },
				},
				{
					["name"] = "Novice Crafter's Mark",
					["recipeID"] = 343659
				},
				{
					["name"] = "Vestige of the Eternal",
					["recipeID"] = 359703,
					["timeline"] = { ADDED_9_2_0 },
				},
			}
		},
		{
			["name"] = "Bags",
			["categoryID"] = 1538,
			["groups"] = {
				{
					["name"] = "Lightless Silk Pouch",
					["recipeID"] = 345986
				},
				{
					["name"] = "Shrouded Cloth Bag",
					["recipeID"] = 345985
				}
			}
		},
		{
			["name"] = "Specialized Armor",
			["categoryID"] = 1513,
			["groups"] = {
				{
					["name"] = "Grim-Veiled Belt",
					["recipeID"] = 332037
				},
				{
					["name"] = "Grim-Veiled Belt",
					["recipeID"] = 339003
				},
				{
					["name"] = "Grim-Veiled Belt",
					["recipeID"] = 332072
				},
				{
					["name"] = "Grim-Veiled Belt",
					["recipeID"] = 310885
				},
				{
					["name"] = "Grim-Veiled Bracers",
					["recipeID"] = 332073
				},
				{
					["name"] = "Grim-Veiled Bracers",
					["recipeID"] = 310886
				},
				{
					["name"] = "Grim-Veiled Bracers",
					["recipeID"] = 332038
				},
				{
					["name"] = "Grim-Veiled Bracers",
					["recipeID"] = 339004
				},
				{
					["name"] = "Grim-Veiled Cape",
					["recipeID"] = 332067
				},
				{
					["name"] = "Grim-Veiled Cape",
					["recipeID"] = 332032
				},
				{
					["name"] = "Grim-Veiled Cape",
					["recipeID"] = 310880
				},
				{
					["name"] = "Grim-Veiled Cape",
					["recipeID"] = 338995
				},
				{
					["name"] = "Grim-Veiled Hood",
					["recipeID"] = 339000
				},
				{
					["name"] = "Grim-Veiled Hood",
					["recipeID"] = 332034
				},
				{
					["name"] = "Grim-Veiled Hood",
					["recipeID"] = 332069
				},
				{
					["name"] = "Grim-Veiled Hood",
					["recipeID"] = 310882
				},
				{
					["name"] = "Grim-Veiled Mittens",
					["recipeID"] = 332068
				},
				{
					["name"] = "Grim-Veiled Mittens",
					["recipeID"] = 332033
				},
				{
					["name"] = "Grim-Veiled Mittens",
					["recipeID"] = 338998
				},
				{
					["name"] = "Grim-Veiled Mittens",
					["recipeID"] = 310881
				},
				{
					["name"] = "Grim-Veiled Pants",
					["recipeID"] = 339001
				},
				{
					["name"] = "Grim-Veiled Pants",
					["recipeID"] = 332070
				},
				{
					["name"] = "Grim-Veiled Pants",
					["recipeID"] = 310883
				},
				{
					["name"] = "Grim-Veiled Pants",
					["recipeID"] = 332035
				},
				{
					["name"] = "Grim-Veiled Robe",
					["recipeID"] = 338996
				},
				{
					["name"] = "Grim-Veiled Robe",
					["recipeID"] = 332066
				},
				{
					["name"] = "Grim-Veiled Robe",
					["recipeID"] = 332031
				},
				{
					["name"] = "Grim-Veiled Robe",
					["recipeID"] = 310879
				},
				{
					["name"] = "Grim-Veiled Sandals",
					["recipeID"] = 332065
				},
				{
					["name"] = "Grim-Veiled Sandals",
					["recipeID"] = 332030
				},
				{
					["name"] = "Grim-Veiled Sandals",
					["recipeID"] = 338997
				},
				{
					["name"] = "Grim-Veiled Sandals",
					["recipeID"] = 310878
				},
				{
					["name"] = "Grim-Veiled Spaulders",
					["recipeID"] = 310884
				},
				{
					["name"] = "Grim-Veiled Spaulders",
					["recipeID"] = 332036
				},
				{
					["name"] = "Grim-Veiled Spaulders",
					["recipeID"] = 339002
				},
				{
					["name"] = "Grim-Veiled Spaulders",
					["recipeID"] = 332071
				}
			}
		},
		{
			["name"] = "Armor",
			["categoryID"] = 1396,
			["groups"] = {
				{
					["name"] = "Pink Party Hat",
					["recipeID"] = 334499,
				},
				{
					["name"] = "Shadowlace Cloak",
					["recipeID"] = 310898,
				},
				{
					["name"] = "Shadowlace Cord",
					["recipeID"] = 310903
				},
				{
					["name"] = "Shadowlace Cowl",
					["recipeID"] = 310900
				},
				{
					["name"] = "Shadowlace Cuffs",
					["recipeID"] = 310904
				},
				{
					["name"] = "Shadowlace Footwraps",
					["recipeID"] = 310896
				},
				{
					["name"] = "Shadowlace Handwraps",
					["recipeID"] = 310899
				},
				{
					["name"] = "Shadowlace Mantle",
					["recipeID"] = 310902
				},
				{
					["name"] = "Shadowlace Trousers",
					["recipeID"] = 310901
				},
				{
					["name"] = "Shadowlace Tunic",
					["recipeID"] = 310897
				},
				{
					["name"] = "Shrouded Cloth Belt",
					["recipeID"] = 310876
				},
				{
					["name"] = "Shrouded Cloth Bracers",
					["recipeID"] = 310877
				},
				{
					["name"] = "Shrouded Cloth Cape",
					["recipeID"] = 310871
				},
				{
					["name"] = "Shrouded Cloth Hood",
					["recipeID"] = 310873
				},
				{
					["name"] = "Shrouded Cloth Mittens",
					["recipeID"] = 310872
				},
				{
					["name"] = "Shrouded Cloth Pants",
					["recipeID"] = 310874
				},
				{
					["name"] = "Shrouded Cloth Robe",
					["recipeID"] = 310870
				},
				{
					["name"] = "Shrouded Cloth Sandals",
					["recipeID"] = 310869
				},
				{
					["name"] = "Shrouded Cloth Spaulders",
					["recipeID"] = 310875
				}
			}
		},
		{
			["name"] = "Bandages",
			["categoryID"] = 1403,
			["groups"] = {
				{
					["name"] = "Heavy Shrouded Cloth Bandage",
					["recipeID"] = 310923
				},
				{
					["name"] = "Shrouded Cloth Bandage",
					["recipeID"] = 310924
				},
				{
					["name"] = "Shrouded Hand Towel",
					["recipeID"] = 355183,
				}
			}
		},
	})),
});

-- Tailoring Item Database
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

-- Tailoring Item Recipe Database
local itemrecipe = function(name, itemID, spellID, phase, timeline)
	local o = { ["itemID"] = itemID, ["spellID"] = spellID, ["f"] = RECIPES };
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
					--print("TAILORING ITEM RECIPE MISSING U: ", name, o.spellID, u, o.u);
					o.u = u;
				end
			elseif o.u ~= u then
				--print("TAILORING RECIPE MISSING U: ", name, o.spellID, o.u);
			end
		else
			print("MISSING TAILORING RECIPE", name, o.spellID);
		end
	end
	return o;
end

-- Classic Recipes
itemrecipe("Pattern: Red Linen Robe", 2598, 2389);
itemrecipe("Pattern: Gray Woolen Robe", 2601, 2403);
itemrecipe("Pattern: Green Woolen Bag", 4292, 3758);
itemrecipe("Pattern: Red Woolen Boots", 4345, 3847);
itemrecipe("Pattern: Heavy Woolen Cloak", 4346, 3844);
itemrecipe("Pattern: Reinforced Woolen Shoulders", 4347, 3849);
itemrecipe("Pattern: Phoenix Gloves", 4348, 3868);
itemrecipe("Pattern: Phoenix Pants", 4349, 3851);
itemrecipe("Pattern: Spider Silk Slippers", 4350, 3856);
itemrecipe("Pattern: Shadow Hood", 4351, 3858);
itemrecipe("Pattern: Boots of the Enchanter", 4352, 3860);
itemrecipe("Pattern: Spider Belt", 4353, 3863);
itemrecipe("Pattern: Rich Purple Silk Shirt", 4354, 3872);
itemrecipe("Pattern: Icy Cloak", 4355, 3862);
itemrecipe("Pattern: Star Belt", 4356, 3864);
itemrecipe("Pattern: Red Linen Bag", 5771, 6686);
itemrecipe("Pattern: Red Woolen Bag", 5772, 6688);
itemrecipe("Pattern: Robes of Arcana", 5773, 6692);
itemrecipe("Pattern: Green Silk Pack", 5774, 6693);
itemrecipe("Pattern: Black Silk Pack", 5775, 6695);
itemrecipe("Pattern: Blue Linen Vest", 6270, 7630);
itemrecipe("Pattern: Red Linen Vest", 6271, 7629);
itemrecipe("Pattern: Blue Linen Robe", 6272, 7633);
itemrecipe("Pattern: Blue Overalls", 6274, 7639);
itemrecipe("Pattern: Greater Adept's Robe", 6275, 7643);
itemrecipe("Pattern: Stylish Blue Shirt", 6390, 7892);
itemrecipe("Pattern: Stylish Green Shirt", 6391, 7893);
itemrecipe("Pattern: Dark Silk Shirt", 6401, 3870);
itemrecipe("Pattern: Crimson Silk Shoulders", 7084, 8793);
itemrecipe("Pattern: Azure Shoulders", 7085, 8795);
itemrecipe("Pattern: Earthen Silk Belt", 7086, 8797);
itemrecipe("Pattern: Crimson Silk Cloak", 7087, 8789);
itemrecipe("Pattern: Crimson Silk Robe", 7088, 8802);
itemrecipe("Pattern: Azure Silk Cloak", 7089, 8786);
itemrecipe("Pattern: Green Silk Armor", 7090, 8784);
itemrecipe("Pattern: Truefaith Gloves", 7091, 8782);
itemrecipe("Pattern: Hands of Darkness", 7092, 8780);
itemrecipe("Pattern: Azure Silk Gloves", 7114, 3854);
itemrecipe("Pattern: Red Mageweave Vest", 10300, 12056);
itemrecipe("Pattern: White Bandit Mask", 10301, 12059);
itemrecipe("Pattern: Red Mageweave Pants", 10302, 12060);
itemrecipe("Pattern: Orange Martial Shirt", 10311, 12064);
itemrecipe("Pattern: Red Mageweave Gloves", 10312, 12066);
itemrecipe("Pattern: Lavender Mageweave Shirt", 10314, 12075);
itemrecipe("Pattern: Red Mageweave Shoulders", 10315, 12078);
itemrecipe("Pattern: Colorful Kilt", 10316, 12047);
itemrecipe("Pattern: Pink Mageweave Shirt", 10317, 12080);
itemrecipe("Pattern: Admiral's Hat", 10318, 12081);
itemrecipe("Pattern: Red Mageweave Headband", 10320, 12084);
itemrecipe("Pattern: Tuxedo Shirt", 10321, 12085);
itemrecipe("Pattern: Tuxedo Pants", 10323, 12089);
itemrecipe("Pattern: White Wedding Dress", 10325, 12091);
itemrecipe("Pattern: Tuxedo Jacket", 10326, 12093);
itemrecipe("Pattern: Shadoweave Mask", 10463, 12086);
itemrecipe("Pattern: Black Swashbuckler's Shirt", 10728, 3873);
itemrecipe("Pattern: Frostweave Tunic", 14466, 18403);
itemrecipe("Pattern: Frostweave Robe", 14467, 18404);
itemrecipe("Pattern: Runecloth Bag", 14468, 18405);
itemrecipe("Pattern: Runecloth Robe", 14469, 18406);
itemrecipe("Pattern: Runecloth Tunic", 14470, 18407);
itemrecipe("Pattern: Cindercloth Vest", 14471, 18408);
itemrecipe("Pattern: Runecloth Cloak", 14472, 18409);
itemrecipe("Pattern: Ghostweave Belt", 14473, 18410);
itemrecipe("Pattern: Frostweave Gloves", 14474, 18411);
itemrecipe("Pattern: Cindercloth Gloves", 14476, 18412);
itemrecipe("Pattern: Ghostweave Gloves", 14477, 18413);
itemrecipe("Pattern: Brightcloth Robe", 14478, 18414);
itemrecipe("Pattern: Brightcloth Gloves", 14479, 18415);
itemrecipe("Pattern: Ghostweave Vest", 14480, 18416);
itemrecipe("Pattern: Runecloth Gloves", 14481, 18417);
itemrecipe("Pattern: Cindercloth Cloak", 14482, 18418);
itemrecipe("Pattern: Felcloth Pants", 14483, 18419);
itemrecipe("Pattern: Brightcloth Cloak", 14484, 18420);
itemrecipe("Pattern: Wizardweave Leggings", 14485, 18421);
itemrecipe("Pattern: Cloak of Fire", 14486, 18422);
itemrecipe("Pattern: Runecloth Boots", 14488, 18423);
itemrecipe("Pattern: Frostweave Pants", 14489, 18424);
itemrecipe("Pattern: Cindercloth Pants", 14490, 18434);
itemrecipe("Pattern: Runecloth Pants", 14491, 18438);
itemrecipe("Pattern: Felcloth Boots", 14492, 18437);
itemrecipe("Pattern: Robe of Winter Night", 14493, 18436);
itemrecipe("Pattern: Brightcloth Pants", 14494, 18439);
itemrecipe("Pattern: Ghostweave Pants", 14495, 18441);
itemrecipe("Pattern: Felcloth Hood", 14496, 18442);
itemrecipe("Pattern: Mooncloth Leggings", 14497, 18440);
itemrecipe("Pattern: Runecloth Headband", 14498, 18444);
itemrecipe("Pattern: Mooncloth Bag", 14499, 18445);
itemrecipe("Pattern: Wizardweave Robe", 14500, 18446);
itemrecipe("Pattern: Mooncloth Vest", 14501, 18447);
itemrecipe("Pattern: Runecloth Shoulders", 14504, 18449);
itemrecipe("Pattern: Wizardweave Turban", 14505, 18450);
itemrecipe("Pattern: Felcloth Robe", 14506, 18451);
itemrecipe("Pattern: Mooncloth Shoulders", 14507, 18448);
itemrecipe("Pattern: Felcloth Shoulders", 14508, 18453);
itemrecipe("Pattern: Mooncloth Circlet", 14509, 18452);
itemrecipe("Pattern: Bottomless Bag", 14510, 18455);
itemrecipe("Pattern: Gloves of Spell Mastery", 14511, 18454);
itemrecipe("Pattern: Truefaith Vestments", 14512, 18456);
itemrecipe("Pattern: Robe of the Archmage", 14513, 18457);
itemrecipe("Pattern: Robe of the Void", 14514, 18458);
itemrecipe("Pattern: Mooncloth", 14526, 18560);
itemrecipe("Pattern: Bright Yellow Shirt", 14627, 3869);
itemrecipe("Pattern: Enchanter's Cowl", 14630, 3857);
itemrecipe("Pattern: Flarecore Mantle", 17017, 20848);
itemrecipe("Pattern: Flarecore Gloves", 17018, 20849);
itemrecipe("Pattern: Flarecore Wraps", 18265, 22759);
itemrecipe("Pattern: Core Felcloth Bag", 21371, 26087);
itemrecipe("Pattern: Soul Pouch", 21358, 26085);
itemrecipe("Pattern: Enchanted Mageweave Pouch", 22307, 27658);

itemrecipe("Pattern: Belt of the Archmage", 18414, 22866, PHASE_ONE_DIREMAUL);
itemrecipe("Pattern: Felcloth Gloves", 18415, 22867, PHASE_ONE_DIREMAUL);
itemrecipe("Pattern: Inferno Gloves", 18416, 22868, PHASE_ONE_DIREMAUL);
itemrecipe("Pattern: Mooncloth Gloves", 18417, 22869, PHASE_ONE_DIREMAUL);
itemrecipe("Pattern: Cloak of Warding", 18418, 22870, PHASE_ONE_DIREMAUL);
itemrecipe("Pattern: Mooncloth Robe", 18487, 22902, PHASE_ONE_DIREMAUL);

itemrecipe("Pattern: Wisdom of the Timbermaw", 19215, 23662, PHASE_THREE_RECIPES);
itemrecipe("Pattern: Argent Boots", 19216, 23664, PHASE_THREE_RECIPES);
itemrecipe("Pattern: Argent Shoulders", 19217, 23665, PHASE_THREE_RECIPES);
itemrecipe("Pattern: Mantle of the Timbermaw", 19218, 23663, PHASE_THREE_RECIPES);
itemrecipe("Pattern: Flarecore Robe", 19219, 23666, PHASE_THREE_RECIPES);
itemrecipe("Pattern: Flarecore Leggings", 19220, 23667, PHASE_THREE_RECIPES);

itemrecipe("Pattern: Bloodvine Vest", 19764, 24091, PHASE_FOUR);
itemrecipe("Pattern: Bloodvine Leggings", 19765, 24092, PHASE_FOUR);
itemrecipe("Pattern: Bloodvine Boots", 19766, 24093, PHASE_FOUR);
itemrecipe("Pattern: Runed Stygian Leggings", 20546, 24901, PHASE_THREE_SILITHUS_EXPEDITION_QUESTS);
itemrecipe("Pattern: Runed Stygian Boots", 20547, 24903, PHASE_THREE_SILITHUS_EXPEDITION_QUESTS);
itemrecipe("Pattern: Runed Stygian Belt", 20548, 24902, PHASE_THREE_SILITHUS_EXPEDITION_QUESTS);

itemrecipe("Pattern: Enchanted Runecloth Bag", 22308, 27659, PHASE_FIVE_RECIPES);
itemrecipe("Pattern: Big Bag of Enchantment", 22309, 27660, PHASE_FIVE);
itemrecipe("Pattern: Cenarion Herb Bag", 22310, 27724, PHASE_FIVE);
itemrecipe("Pattern: Satchel of Cenarius", 22312, 27725, PHASE_FIVE);

itemrecipe("Pattern: Gaea's Embrace", 22683, 28210, PHASE_FIVE_CATCH_UP);
itemrecipe("Pattern: Sylvan Shoulders", 22772, 28482, PHASE_FIVE_CATCH_UP);
itemrecipe("Pattern: Sylvan Crown", 22773, 28481, PHASE_FIVE_CATCH_UP);
itemrecipe("Pattern: Sylvan Vest", 22774, 28480, PHASE_FIVE_CATCH_UP);

itemrecipe("Pattern: Glacial Gloves", 22684, 28205, PHASE_SIX);
itemrecipe("Pattern: Glacial Cloak", 22685, 28208, PHASE_SIX);
itemrecipe("Pattern: Glacial Vest", 22686, 28207, PHASE_SIX);
itemrecipe("Pattern: Glacial Wrists", 22687, 28209, PHASE_SIX);

applyevent(EVENTS.FEAST_OF_WINTER_VEIL, itemrecipe("Pattern: Green Holiday Shirt", 17724, 21945));
applyevent(EVENTS.LUNAR_FESTIVAL, itemrecipe("Pattern: Festival Dress", 21722, 26403));
applyevent(EVENTS.LUNAR_FESTIVAL, itemrecipe("Pattern: Festival Suit", 21723, 26407));

-- #if AFTER TBC
-- TBC Recipes
applyevent(EVENTS.FEAST_OF_WINTER_VEIL, itemrecipe("Pattern: Green Winter Clothes", 34261, 44950));
applyevent(EVENTS.FEAST_OF_WINTER_VEIL, itemrecipe("Pattern: Red Winter Clothes", 34319, 44958));

itemrecipe("Pattern: Frozen Shadoweave Shoulders", 21912, 26756, TBC_PHASE_ONE);
itemrecipe("Pattern: Frozen Shadoweave Robe", 21913, 26758, TBC_PHASE_ONE);
itemrecipe("Pattern: Frozen Shadoweave Boots", 21914, 26757, TBC_PHASE_ONE);
itemrecipe("Pattern: Primal Mooncloth Belt", 21916, 26760, TBC_PHASE_ONE);
itemrecipe("Pattern: Primal Mooncloth Robe", 21917, 26762, TBC_PHASE_ONE);
itemrecipe("Pattern: Primal Mooncloth Shoulders", 21918, 26761, TBC_PHASE_ONE);
itemrecipe("Pattern: Spellfire Belt", 21908, 26752, TBC_PHASE_ONE);
itemrecipe("Pattern: Spellfire Gloves", 21909, 26753, TBC_PHASE_ONE);
itemrecipe("Pattern: Spellfire Robe", 21910, 26754, TBC_PHASE_ONE);

itemrecipe("Pattern: Bolt of Imbued Netherweave", 21892, 26747, TBC_PHASE_ONE);
itemrecipe("Pattern: Imbued Netherweave Bag", 21893, 26749, TBC_PHASE_ONE);
itemrecipe("Pattern: Bolt of Soulcloth", 21894, 26750, TBC_PHASE_ONE);
itemrecipe("Pattern: Primal Mooncloth", 21895, 26751, TBC_PHASE_ONE);
itemrecipe("Pattern: Netherweave Robe", 21896, 26773, TBC_PHASE_ONE);
itemrecipe("Pattern: Netherweave Tunic", 21897, 26774, TBC_PHASE_ONE);
itemrecipe("Pattern: Imbued Netherweave Pants", 21898, 26775, TBC_PHASE_ONE);
itemrecipe("Pattern: Imbued Netherweave Boots", 21899, 26776, TBC_PHASE_ONE);
itemrecipe("Pattern: Imbued Netherweave Robe", 21900, 26777, TBC_PHASE_ONE);
itemrecipe("Pattern: Imbued Netherweave Tunic", 21901, 26778, TBC_PHASE_ONE);
itemrecipe("Pattern: Soulcloth Gloves", 21902, 26779, TBC_PHASE_ONE);
itemrecipe("Pattern: Soulcloth Shoulders", 21903, 26780, TBC_PHASE_ONE);
itemrecipe("Pattern: Soulcloth Vest", 21904, 26781, TBC_PHASE_ONE);
itemrecipe("Pattern: Arcanoweave Bracers", 21905, 26782, TBC_PHASE_ONE);
itemrecipe("Pattern: Arcanoweave Boots", 21906, 26783, TBC_PHASE_ONE);
itemrecipe("Pattern: Arcanoweave Robe", 21907, 26784, TBC_PHASE_ONE);
itemrecipe("Pattern: Spellfire Bag", 21911, 26755, TBC_PHASE_ONE);
itemrecipe("Pattern: Ebon Shadowbag", 21915, 26759, TBC_PHASE_ONE);
itemrecipe("Pattern: Primal Mooncloth Bag", 21919, 26763, TBC_PHASE_ONE);
itemrecipe("Pattern: Mystic Spellthread", 24292, 31430, TBC_PHASE_ONE);
itemrecipe("Pattern: Silver Spellthread", 24293, 31431, TBC_PHASE_ONE);
itemrecipe("Pattern: Runic Spellthread", 24294, 31432, TBC_PHASE_ONE);
itemrecipe("Pattern: Golden Spellthread", 24295, 31433, TBC_PHASE_ONE);
itemrecipe("Pattern: Unyielding Bracers", 24296, 31434, TBC_PHASE_ONE);
itemrecipe("Pattern: Bracers of Havok", 24297, 31435, TBC_PHASE_ONE);

itemrecipe("Pattern: Blackstrike Bracers", 24298, 31437, TBC_PHASE_ONE);
itemrecipe("Pattern: Cloak of the Black Void", 24299, 31438, TBC_PHASE_ONE);
itemrecipe("Pattern: Cloak of Eternity", 24300, 31440, TBC_PHASE_ONE);
itemrecipe("Pattern: White Remedy Cape", 24301, 31441, TBC_PHASE_ONE);
itemrecipe("Pattern: Unyielding Girdle", 24302, 31442, TBC_PHASE_ONE);
itemrecipe("Pattern: Girdle of Ruination", 24303, 31443, TBC_PHASE_ONE);
itemrecipe("Pattern: Black Belt of Knowledge", 24304, 31444, TBC_PHASE_ONE);
itemrecipe("Pattern: Resolute Cape", 24305, 31448, TBC_PHASE_ONE);
itemrecipe("Pattern: Vengeance Wrap", 24306, 31449, TBC_PHASE_ONE);
itemrecipe("Pattern: Manaweave Cloak", 24307, 31450, TBC_PHASE_ONE);
itemrecipe("Pattern: Whitemend Pants", 24308, 31451, TBC_PHASE_ONE);
itemrecipe("Pattern: Spellstrike Pants", 24309, 31452, TBC_PHASE_ONE);
itemrecipe("Pattern: Battlecast Pants", 24310, 31453, TBC_PHASE_ONE);
itemrecipe("Pattern: Whitemend Hood", 24311, 31454, TBC_PHASE_ONE);
itemrecipe("Pattern: Spellstrike Hood", 24312, 31455, TBC_PHASE_ONE);
itemrecipe("Pattern: Battlecast Hood", 24313, 31456, TBC_PHASE_ONE);
itemrecipe("Pattern: Bag of Jewels", 24314, 31459, TBC_PHASE_ONE);
itemrecipe("Pattern: Spellcloth", 24316, 31373, TBC_PHASE_ONE);
itemrecipe("Pattern: Shadowcloth", 30483, 36686, TBC_PHASE_ONE);
itemrecipe("Pattern: Cloak of Arcane Evasion", 30833, 37873, TBC_PHASE_ONE);
itemrecipe("Pattern: Flameheart Bracers", 30842, 37882, TBC_PHASE_ONE);
itemrecipe("Pattern: Flameheart Gloves", 30843, 37883, TBC_PHASE_ONE);
itemrecipe("Pattern: Flameheart Vest", 30844, 37884, TBC_PHASE_ONE);

itemrecipe("Pattern: Dress Shoes", 37915, 49677, TBC_PHASE_ONE, ADDED_2_4_2);
itemrecipe("Pattern: Mycah's Botanical Bag", 38229, 50194, TBC_PHASE_ONE);
itemrecipe("Pattern: Haliscan Jacket", 38327, 50644, TBC_PHASE_ONE, ADDED_2_4_2);
itemrecipe("Pattern: Haliscan Pantaloons", 38328, 50647, TBC_PHASE_ONE, ADDED_2_4_2);

itemrecipe("Pattern: Belt of Blasting", 30280, 36315, TBC_PHASE_TWO);
itemrecipe("Pattern: Belt of the Long Road", 30281, 36316, TBC_PHASE_TWO);
itemrecipe("Pattern: Boots of Blasting", 30282, 36317, TBC_PHASE_TWO);
itemrecipe("Pattern: Boots of the Long Road", 30283, 36318, TBC_PHASE_TWO);

itemrecipe("Pattern: Soulguard Slippers", 32437, 40020, TBC_PHASE_THREE);
itemrecipe("Pattern: Soulguard Bracers", 32438, 40021, TBC_PHASE_THREE);
itemrecipe("Pattern: Soulguard Leggings", 32439, 40023, TBC_PHASE_THREE);
itemrecipe("Pattern: Soulguard Girdle", 32440, 40024, TBC_PHASE_THREE);
itemrecipe("Pattern: Night's End", 32447, 40060, TBC_PHASE_THREE);
itemrecipe("Pattern: Swiftheal Wraps", 32752, 41207, TBC_PHASE_THREE);
itemrecipe("Pattern: Swiftheal Mantle", 32753, 41208, TBC_PHASE_THREE);
itemrecipe("Pattern: Bracers of Nimble Thought", 32754, 41205, TBC_PHASE_THREE);
itemrecipe("Pattern: Mantle of Nimble Thought", 32755, 41206, TBC_PHASE_THREE);

itemrecipe("Pattern: Sunfire Handwraps", 35204, 46128, TBC_PHASE_FIVE);
itemrecipe("Pattern: Hands of Eternal Light", 35205, 46129, TBC_PHASE_FIVE);
itemrecipe("Pattern: Sunfire Robe", 35206, 46130, TBC_PHASE_FIVE);
itemrecipe("Pattern: Robe of Eternal Light", 35207, 46131, TBC_PHASE_FIVE);
itemrecipe("Pattern: Unyielding Bracers", 35308, 31434, TBC_PHASE_FIVE, true);
itemrecipe("Pattern: Unyielding Girdle", 35309, 31442, TBC_PHASE_FIVE, true);
-- #endif

-- #if AFTER WRATH
-- Wrath Recipes
-- #IF ANYCLASSIC
itemrecipe("A Guide to Northern Cloth Scavenging", 43876, 59390, WRATH_PHASE_ONE);
-- #ENDIF
itemrecipe("Pattern: Abyssal Bag", 42183, 56004, WRATH_PHASE_ONE);
itemrecipe("Pattern: Aurora Slippers", 42196, 56023, WRATH_PHASE_ONE);	-- NYI, taught by trainers
itemrecipe("Pattern: Bejeweled Wizard's Bracers", 47654, 67079, WRATH_PHASE_THREE);
itemrecipe("Pattern: Bejeweled Wizard's Bracers", 47639, 67145, WRATH_PHASE_THREE);
itemrecipe("Pattern: Blue Lumberjack Shirt", 42173, 55994, WRATH_PHASE_ONE);
itemrecipe("Pattern: Blue Workman's Shirt", 42176, 55998, WRATH_PHASE_ONE);
itemrecipe("Pattern: Brilliant Spellthread", 42187, 56009, WRATH_PHASE_ONE);
itemrecipe("Pattern: Cord of the White Dawn", 45104, 63205, WRATH_PHASE_TWO);
itemrecipe("Pattern: Deathchill Cloak", 42190, 56017, WRATH_PHASE_ONE);	-- NYI, taught by trainers
itemrecipe("Pattern: Deathfrost Boots", 49954, 70551, WRATH_PHASE_FOUR);
itemrecipe("Pattern: Ebonweave", 42180, 56002, WRATH_PHASE_ONE);	-- NYI, taught by trainers
itemrecipe("Pattern: Ebonweave Gloves", 42200, 56027, WRATH_PHASE_ONE);	-- NYI, taught by trainers
itemrecipe("Pattern: Ebonweave Robe", 42199, 56026, WRATH_PHASE_ONE);	-- NYI, taught by trainers
itemrecipe("Pattern: Emerald Bag", 45774, 63924, WRATH_PHASE_ONE);
itemrecipe("Pattern: Frostmoon Pants", 42194, 56021, WRATH_PHASE_ONE);	-- NYI, taught by trainers
itemrecipe("Pattern: Frostweave Bag", 42186, 56007, WRATH_PHASE_ONE);	-- NYI, taught by trainers
itemrecipe("Pattern: Frosty Flying Carpet", 54798, 75597, WRATH_PHASE_FOUR);
itemrecipe("Pattern: Glacial Bag", 42184, 56005, WRATH_PHASE_ONE);
itemrecipe("Pattern: Glacial Cord", 42193, 56020, WRATH_PHASE_ONE);	-- NYI, taught by trainers
itemrecipe("Pattern: Green Lumberjack Shirt", 42175, 55996, WRATH_PHASE_ONE);
itemrecipe("Pattern: Green Workman's Shirt", 42179, 56000, WRATH_PHASE_ONE);
itemrecipe("Pattern: Hat of Wintry Doom", 42191, 56018, WRATH_PHASE_ONE);	-- NYI, taught by trainers
itemrecipe("Pattern: Leggings of Woven Death", 49953, 70550, WRATH_PHASE_FOUR);
itemrecipe("Pattern: Light Blessed Mittens", 42195, 56022, WRATH_PHASE_ONE);	-- NYI, taught by trainers
itemrecipe("Pattern: Lightweave Leggings", 49955, 70552, WRATH_PHASE_FOUR);
itemrecipe("Pattern: Merlin's Robe", 47655, 67066, WRATH_PHASE_THREE);
itemrecipe("Pattern: Merlin's Robe", 47638, 67146, WRATH_PHASE_THREE);
itemrecipe("Pattern: Moonshroud", 42181, 56001, WRATH_PHASE_ONE);	-- NYI, taught by trainers
itemrecipe("Pattern: Moonshroud Gloves", 42198, 56025, WRATH_PHASE_ONE);	-- NYI, taught by trainers
itemrecipe("Pattern: Moonshroud Robe", 42197, 56024, WRATH_PHASE_ONE);	-- NYI, taught by trainers
itemrecipe("Pattern: Mysterious Bag", 42185, 56006, WRATH_PHASE_ONE);
itemrecipe("Pattern: Red Lumberjack Shirt", 42172, 55993, WRATH_PHASE_ONE);
itemrecipe("Pattern: Red Workman's Shirt", 42177, 55997, WRATH_PHASE_ONE);
itemrecipe("Pattern: Royal Moonshroud Bracers", 47656, 67065, WRATH_PHASE_THREE);
itemrecipe("Pattern: Royal Moonshroud Bracers", 47637, 67147, WRATH_PHASE_THREE);
itemrecipe("Pattern: Royal Moonshroud Robe", 47636, 67144, WRATH_PHASE_THREE);
itemrecipe("Pattern: Royal Moonshroud Robe", 47657, 67064, WRATH_PHASE_THREE);
itemrecipe("Pattern: Rustic Workman's Shirt", 42178, 55999, WRATH_PHASE_ONE);
itemrecipe("Pattern: Sandals of Consecration", 49956, 70553, WRATH_PHASE_FOUR);
itemrecipe("Pattern: Sapphire Spellthread", 42188, 56011, WRATH_PHASE_ONE);
itemrecipe("Pattern: Sash of Ancient Power", 45102, 63203, WRATH_PHASE_TWO);
itemrecipe("Pattern: Savior's Slippers", 45105, 63206, WRATH_PHASE_TWO);
itemrecipe("Pattern: Silky Iceshard Boots", 42192, 56019, WRATH_PHASE_ONE);	-- NYI, taught by trainers
itemrecipe("Pattern: Spellslinger's Slippers", 45103, 63204, WRATH_PHASE_TWO);
itemrecipe("Pattern: Spellweave", 42182, 56003, WRATH_PHASE_ONE);	-- NYI, taught by trainers
itemrecipe("Pattern: Spellweave Gloves", 42202, 56029, WRATH_PHASE_ONE);	-- NYI, taught by trainers
itemrecipe("Pattern: Spellweave Robe", 42201, 56028, WRATH_PHASE_ONE);	-- NYI, taught by trainers
itemrecipe("Pattern: Wispcloak", 42189, 56016, WRATH_PHASE_ONE);	-- NYI, taught by trainers
itemrecipe("Pattern: Yellow Lumberjack Shirt", 42174, 55995, WRATH_PHASE_ONE);

applyevent(EVENTS.LUNAR_FESTIVAL, itemrecipe("Pattern: Festival Dress", 44916, 26403));
applyevent(EVENTS.LUNAR_FESTIVAL, itemrecipe("Pattern: Festival Suit", 44917, 26407));
-- #endif

-- #if AFTER CATA
itemrecipe("Pattern: Belt of the Depths", 54601, 75298, CATA_PHASE_ONE);
itemrecipe("Pattern: Black Embersilk Gown", 68199, 75288, CATA_PHASE_ONE);
itemrecipe("Pattern: Boots of the Black Flame", 69976, 99460, CATA_PHASE_RAGE_OF_THE_FIRELANDS);
itemrecipe("Pattern: Bracers of Unconquered Power", 72004, 101923, CATA_PHASE_HOUR_OF_TWILIGHT);
itemrecipe("Pattern: Breeches of Mended Nightmares", 54603, 75300, CATA_PHASE_ONE);
itemrecipe("Pattern: Don Tayo's Inferno Mittens", 69966, 99449, CATA_PHASE_RAGE_OF_THE_FIRELANDS);
itemrecipe("Pattern: Dreamless Belt", 54602, 75299, CATA_PHASE_ONE);
itemrecipe("Pattern: Dreamwraps of the Light", 72003, 101922, CATA_PHASE_HOUR_OF_TWILIGHT);
itemrecipe("Pattern: Endless Dream Walkers", 69975, 99459, CATA_PHASE_ONE);
itemrecipe("Pattern: Flame-Ascended Pantaloons", 54604, 75301, CATA_PHASE_ONE);
itemrecipe("Pattern: Grips of Altered Reality", 69965, 99448, CATA_PHASE_RAGE_OF_THE_FIRELANDS);
itemrecipe("Pattern: High Society Top Hat", 67541, 75289, CATA_PHASE_ONE);
itemrecipe("Pattern: Illusionary Bag", 54605, 75308, CATA_PHASE_ONE);
itemrecipe("Pattern: Lavaquake Legwraps", 72002, 101921, CATA_PHASE_HOUR_OF_TWILIGHT);
itemrecipe("Pattern: Luxurious Silk Gem Bag", 70176, 100585, CATA_PHASE_MOLTEN_FRONT);
itemrecipe("Pattern: Powerful Enchanted Spellthread", 54599, 75309, CATA_PHASE_ONE);
itemrecipe("Pattern: Powerful Ghostly Spellthread", 54600, 75310, CATA_PHASE_ONE);
itemrecipe("Pattern: Vicious Embersilk Cowl", 54593, 75306, CATA_PHASE_ONE);
itemrecipe("Pattern: Vicious Embersilk Pants", 54594, 75307, CATA_PHASE_ONE);
itemrecipe("Pattern: Vicious Embersilk Robe", 54595, 75305, CATA_PHASE_ONE);
itemrecipe("Pattern: Vicious Fireweave Cowl", 54596, 75304, CATA_PHASE_ONE);
itemrecipe("Pattern: Vicious Fireweave Pants", 54597, 75302, CATA_PHASE_ONE);
itemrecipe("Pattern: Vicious Fireweave Robe", 54598, 75303, CATA_PHASE_ONE);
itemrecipe("Pattern: World Mender's Pants", 72000, 101920, CATA_PHASE_HOUR_OF_TWILIGHT);
-- #endif

-- Never Implemented Recipe and Crafted Item Database
local nyi_ = root(ROOTS.NeverImplemented, {});
local neverimplemented = function(thing)
	local nyi_g = {};
	table.insert(nyi_, n(PROFESSIONS, { prof(TAILORING, { g = nyi_g }) }));
	neverimplemented = function(thing2)
		table.insert(nyi_g, thing2);
	end;
	neverimplemented(thing);
end
recipeCache = nil;	-- Disable the cache validation.

-- Recipes that were created with the launch of the game, but never implemented. :(
neverimplemented(itemrecipe("Pattern: Boots of Darkness", 7093, 8778));
neverimplemented(recipe(8778));	-- Boots of Darkness
neverimplemented(i(7027));	-- Boots of Darkness
neverimplemented(itemrecipe("Pattern: Green Woolen Robe", 6273, 7636));
neverimplemented(recipe(7636));	-- Green Woolen Robe
neverimplemented(i(6243));	-- Green Woolen Robe
neverimplemented(itemrecipe("Pattern: Stormcloth Boots", 10324, 12090));
neverimplemented(recipe(12090));	-- Stormcloth Boots
neverimplemented(i(10039));	-- Stormcloth Boots
neverimplemented(itemrecipe("Pattern: Stormcloth Gloves", 10304, 12063));
neverimplemented(recipe(12063));	-- Stormcloth Gloves
neverimplemented(i(10011));	-- Stormcloth Gloves
neverimplemented(itemrecipe("Pattern: Stormcloth Headband", 10319, 12083));
neverimplemented(recipe(12083));	-- Stormcloth Headband
neverimplemented(i(10032));	-- Stormcloth Headband
neverimplemented(itemrecipe("Pattern: Stormcloth Pants", 10303, 12062));
neverimplemented(recipe(12062));	-- Stormcloth Pants
neverimplemented(i(10010));	-- Stormcloth Pants
neverimplemented(itemrecipe("Pattern: Stormcloth Shoulders", 10322, 12087));
neverimplemented(recipe(12087));	-- Stormcloth Shoulders
neverimplemented(i(10038));	-- Stormcloth Shoulders
neverimplemented(itemrecipe("Pattern: Stormcloth Vest", 10313, 12068));
neverimplemented(recipe(12068));	-- Stormcloth Vest
neverimplemented(i(10020));	-- Stormcloth Vest
neverimplemented(itemrecipe("Pattern: Felcloth Bag", 21369, 26086));	-- recipe item is not in game; you learn the pattern from Jandice Barov's Journal in Scholo
neverimplemented(itemrecipe("Pattern: Runecloth Robe", 21924));

-- #if AFTER TBC
neverimplemented(itemrecipe("Pattern: Heavy Netherweave Net", 24315));
neverimplemented(itemrecipe("Pattern: Lifeblood Bracers", 30474, 36672));
neverimplemented(recipe(36672));	-- Lifeblood Bracers
neverimplemented(i(30464));	-- Lifeblood Bracers
neverimplemented(itemrecipe("Pattern: Lifeblood Belt", 30473, 36670));
neverimplemented(recipe(36670));	-- Lifeblood Belt
neverimplemented(i(30463));	-- Lifeblood Belt
neverimplemented(itemrecipe("Pattern: Lifeblood Leggings", 30472, 36669));
neverimplemented(recipe(36669));	-- Lifeblood Leggings
neverimplemented(i(30465));	-- Lifeblood Leggings
neverimplemented(itemrecipe("Pattern: Netherflame Belt", 30470, 36667));
neverimplemented(recipe(36667));	-- Netherflame Belt
neverimplemented(i(30460));	-- Netherflame Belt
neverimplemented(itemrecipe("Pattern: Netherflame Boots", 30471, 36668));
neverimplemented(recipe(36668));	-- Netherflame Boots
neverimplemented(i(30461));	-- Netherflame Boots
neverimplemented(itemrecipe("Pattern: Netherflame Robe", 30469, 36665));
neverimplemented(recipe(36665));	-- Netherflame Robe
neverimplemented(i(30459));	-- Netherflame Robe
neverimplemented(itemrecipe("Pattern: Truefaith Vestments", 29120));
neverimplemented(itemrecipe("Pattern: Bracers of Nimble Thought", 35518));
neverimplemented(itemrecipe("Pattern: Mantle of Nimble Thought", 35522));
neverimplemented(itemrecipe("Pattern: Swiftheal Mantle", 35525));
neverimplemented(itemrecipe("Pattern: Swiftheal Wraps", 35526));
neverimplemented(itemrecipe("Pattern: Hands of Eternal Light", 35544));
neverimplemented(itemrecipe("Pattern: Robe of Eternal Light", 35548));
neverimplemented(itemrecipe("Pattern: Sunfire Handwraps", 35551));
neverimplemented(itemrecipe("Pattern: Sunfire Robe", 35552));
-- #endif

-- #if AFTER WRATH
neverimplemented(i(42196));	-- Pattern: Aurora Slippers (pattern never went live, but it's learned at the trainer)
neverimplemented(i(42190));	-- Pattern: Deathchill Cloak (pattern never went live, but it's learned at the trainer)
neverimplemented(i(42180));	-- Pattern: Ebonweave (pattern never went live, but it's learned at the trainer)
neverimplemented(i(42200));	-- Pattern: Ebonweave Gloves (pattern never went live, but it's learned at the trainer)
neverimplemented(i(42199));	-- Pattern: Ebonweave Robe (pattern never went live, but it's learned at the trainer)
neverimplemented(i(42194));	-- Pattern: Frostmoon Pants (pattern never went live, but it's learned at the trainer)
neverimplemented(i(42186));	-- Pattern: Frostweave Bag (pattern never went live, but it's learned at the trainer)
neverimplemented(i(42179));	-- Pattern: Green Workman's Shirt (pattern never went live, but it's learned at the trainer)
neverimplemented(i(42191));	-- Pattern: Hat of Wintry Doom (pattern never went live, but it's learned at the trainer)
neverimplemented(i(42195));	-- Pattern: Light Blessed Mittens (pattern never went live, but it's learned at the trainer)
neverimplemented(i(42181));	-- Pattern: Moonshroud (pattern never went live, but it's learned at the trainer)
neverimplemented(i(42198));	-- Pattern: Moonshroud Gloves (pattern never went live, but it's learned at the trainer)
neverimplemented(i(42197));	-- Pattern: Moonshroud Robe (pattern never went live, but it's learned at the trainer)
neverimplemented(i(42192));	-- Pattern: Silky Iceshard Boots (pattern never went live, but it's learned at the trainer)
neverimplemented(i(42182));	-- Pattern: Spellweave (pattern never went live, but it's learned at the trainer)
neverimplemented(i(42202));	-- Pattern: Spellweave Gloves (pattern never went live, but it's learned at the trainer)
neverimplemented(i(42201));	-- Pattern: Spellweave Robe (pattern never went live, but it's learned at the trainer)
neverimplemented(i(42189));	-- Pattern: Wispcloak (pattern never went live, but it's learned at the trainer)
neverimplemented(i(42174));	-- Pattern: Yellow Lumberjack Shirt (pattern never went live, but it's learned at the trainer)
-- #endif

-- #if AFTER CATA

-- #endif

-- #if AFTER MOP

-- #endif

-- #if AFTER WOD
neverimplemented(recipe(169669));	-- Hexweave Cloth
neverimplemented(recipe(168851));	-- Miniature Flying Carpet
neverimplemented(i(114833));	-- Miniature Flying Carpet
neverimplemented(recipe(173415));	-- Murloc Chew Toy
neverimplemented(i(118052));	-- Murloc Chew Toy
-- #endif

-- #if AFTER LEGION
neverimplemented(i(137981));	-- Pattern: Silkweave Cloak
-- #endif

-- #if AFTER BFA
neverimplemented(i(162424));	-- Pattern: Embroidered Deep Sea Cloak of the Feather (alliance)
neverimplemented(i(162770));	-- Pattern: Embroidered Deep Sea Cloak of the Feather (horde)
neverimplemented(i(162426));	-- Pattern: Embroidered Deep Sea Cloak of Resilience (alliance)
neverimplemented(i(162771));	-- Pattern: Embroidered Deep Sea Cloak of Resilience (horde)
neverimplemented(i(162428));	-- Pattern: Embroidered Deep Sea Gloves (Rank 3)
neverimplemented(i(162430));	-- Pattern: Embroidered Deep Sea Breeches (Rank 3)
-- #endif

-- #if AFTER SHADOWLANDS

-- #endif
-- #endif