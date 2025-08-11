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
	-- #if SEASON_OF_DISCOVERY
	expansion(EXPANSION.CLASSIC, applyclassicphase(SOD_PHASE_EIGHT, bubbleDownSelf({ ["timeline"] = { ADDED_1_15_7 } }, {
		q(90116, {	-- Holy Threads
			["provider"] = { "n", 240631 },	-- Taylor Stitchings <Tailoring Supplies>
			["coord"] = { 94.6, 83.6, EASTERN_PLAGUELANDS },
			["groups"] = {
				i(239149),	-- Pattern: Crusader's Knapsack (RECIPE!)
			},
		}),
		q(90120, {	-- Red is Not Dead
			["provider"] = { "n", 240631 },	-- Taylor Stitchings <Tailoring Supplies>
			["coord"] = { 94.6, 83.6, EASTERN_PLAGUELANDS },
			["groups"] = {
				i(239150),	-- Pattern: Crimson Dawnwoven Bag (RECIPE!)
			},
		}),
	}))),
	-- #endif
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
				["description"] = "Upon finishing this quest, you will become a Mooncloth Tailor.",
				["altQuests"] = {
					-- 10831,	-- Becoming a Mooncloth Tailor
					10833,	-- Becoming a Shadoweave Tailor
					10832,	-- Becoming a Spellfire Tailor
				},
				["qg"] = 22208,	-- Nasmara Moonsong <Mooncloth Specialist>
				["coord"] = { 66.5, 69.3, SHATTRATH_CITY },
				["maps"] = { ZANGARMARSH },
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
					r(26798),	-- Mooncloth Tailoring
					i(31522, {	-- Primal Mooncloth Supplies
						i(31524),	-- Square of Imbued Netherweave
						i(31525),	-- Vial of Primal Reagents
					}),
				},
			}),
			q(10833, {	-- Becoming a Shadoweave Tailor
				["description"] = "Upon finishing this quest, you will become a Shadoweave Tailor.",
				["altQuests"] = {
					10831,	-- Becoming a Mooncloth Tailor
					-- 10833,	-- Becoming a Shadoweave Tailor
					10832,	-- Becoming a Spellfire Tailor
				},
				["qg"] = 22212,	-- Andrion Darkspinner <Shadoweave Specialist>
				["coord"] = { 66.6, 68.2, SHATTRATH_CITY },
				["maps"] = { SHADOWMOON_VALLEY },
				["requireSkill"] = TAILORING,
				["lvl"] = 60,
				["groups"] = {
					objective(1, {	-- Deepen Altar of Shadows Attunement
						["provider"] = { "i", 31736 },	-- Crystal of Deep Shadows
						["coord"] = { 58.0, 71.0, SHADOWMOON_VALLEY },
					}),
					r(26801),	-- Shadoweave Tailoring
				},
			}),
			q(10832, {	-- Becoming a Spellfire Tailor
				["description"] = "Upon finishing this quest, you will become a Spellfire Tailor.",
				["altQuests"] = {
					10831,	-- Becoming a Mooncloth Tailor
					10833,	-- Becoming a Shadoweave Tailor
					-- 10832,	-- Becoming a Spellfire Tailor
				},
				["qg"] = 22213,	-- Gidge Spellweaver <Spellfire Specialist>
				["coord"] = { 66.6, 68.4, SHATTRATH_CITY },
				["maps"] = { NETHERSTORM },
				["lvl"] = 60,
				["groups"] = {
					objective(1, {	-- 0/1 Nether-wraith Essence
						["provider"] = { "i", 31741 },	-- Nether-wraith Essence
						["cr"] = 22408,	-- Furious Nether-wraith
						["cost"] = {
							{ "i", 31742, 1 },	-- Nether-wraith Beacon
						},
					}),
					r(26797),	-- Spellfire Tailoring
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
				["description"] = "This item can drop from any Draenor mob.",
				["provider"] = { "i", 114972 },	-- Cryptic Tome of Tailoring
				["timeline"] = { ADDED_6_0_2 },
				["maps"] = {
					FROSTFIRE_RIDGE,
					GORGROND,
					DRAENOR_NAGRAND,
					DRAENOR_SHADOWMOON_VALLEY,
					SPIRES_OF_ARAK,
					TALADOR,
				},
				["requireSkill"] = TAILORING,
				["races"] = ALLIANCE_ONLY,
			}),
			q(36301, {	-- Trega's Tailoring Kit
				["description"] = "This item can drop from any Draenor mob.",
				["provider"] = { "i", 114973 },	-- Frostwolf Tailoring Kit
				["timeline"] = { ADDED_6_0_2 },
				["maps"] = {
					FROSTFIRE_RIDGE,
					GORGROND,
					DRAENOR_NAGRAND,
					DRAENOR_SHADOWMOON_VALLEY,
					SPIRES_OF_ARAK,
					TALADOR,
				},
				["requireSkill"] = TAILORING,
				["races"] = HORDE_ONLY,
			}),
		}),
	})),
	expansion(EXPANSION.LEGION, sharedDataSelf({ ["timeline"] = { ADDED_7_0_3_LAUNCH } }, {
		q(38944, {	-- Sew It Begins
			["provider"] = { "n", 93542 },	-- Tanithria
			["coord"] = { 35.2, 34.2, LEGION_DALARAN },
			["cost"] = {{ "i", 124437, 10 }},	-- 10x Shal'dorei Silk
			["groups"] = {
				r(195126, {	-- Tailoring (Legion Master)
					["timeline"] = { ADDED_7_0_3_LAUNCH, REMOVED_8_0_1 },
					["collectible"] = false,
				}),
				applyclassicphase(BFA_PHASE_ONE, r(264628, {["timeline"] = {ADDED_8_0_1}})),	-- Legion Tailoring
				r(330252, {["timeline"] = {ADDED_9_0_1}}),	-- Relic of the Past I [Legion]
				r(330253, {["timeline"] = {ADDED_9_0_1}}),	-- Relic of the Past II [Legion]
				r(330254, {["timeline"] = {ADDED_9_0_1}}),	-- Relic of the Past III [Legion]
				r(330255, {["timeline"] = {ADDED_9_0_1}}),	-- Relic of the Past IV [Legion]
				r(330256, {["timeline"] = {ADDED_9_0_1}}),	-- Relic of the Past V [Legion]
			},
		}),
		q(38945, {	-- This Should Be Simple... Right?
			["sourceQuests"] = { 38944 },	-- Sew It Begins
			["provider"] = { "n", 93542 },	-- Tanithria
			["coord"] = { 35.2, 34.2, LEGION_DALARAN },
			["groups"] = {
				r(185920),	-- Silkweave Epaulets [Rank 1] (RECIPE!)
				r(185919),	-- Silkweave Cinch [Rank 1] (RECIPE!)
				--
				i(127294),	-- Handcrafted Silkweave Robe (QI!)
				r(186738, {["u"]=TRAINING}),	-- Handcrafted Silkweave Robe
				o(242636, {	-- Tanithria's Purple Dye
					["coord"] = { 35.5, 34.5, LEGION_DALARAN },
					["groups"] = { i(127289) },	-- Tanithria's Purple Dye (QI!)
				}),
				o(242638, {	-- Tanithria's Red Dye
					["coord"] = { 35.5, 34.5, LEGION_DALARAN },
					["groups"] = { i(127291) },	-- Tanithria's Red Dye (QI!)
				}),
				o(242633, {	-- Tanithria's Silkweave
					["coord"] = { 35.5, 34.0, LEGION_DALARAN },
					["groups"] = { i(127286) },	-- Tanithria's Silkweave (QI!)
				}),
				o(242634, {	-- Tanithria's Thread
					["coord"] = { 35.5, 34.5, LEGION_DALARAN },
					["groups"] = { i(127287) },	-- Tanithria's Thread (QI!)
				}),
			},
		}),
		q(38946, {	-- Consult the Locals
			["sourceQuests"] = { 38945 },	-- This Should Be Simple... Right?
			["provider"] = { "n", 93542 },	-- Tanithria
			["coord"] = { 35.2, 34.2, LEGION_DALARAN },
		}),
		q(38947, {	-- Runic Catgut
			["sourceQuests"] = { 38946 },	-- Consult the Locals
			["provider"] = { "n", 93967 },	-- Lyndras
			["coord"] = { 60.0, 34.6, AZSUNA },
			["cost"] = {{ "i", 127037, 3 }},	-- 3x Runic Catgut
		}),
		q(38948, {	-- Hard Times
			["sourceQuests"] = { 38946 },	-- Consult the Locals
			["provider"] = { "n", 93967 },	-- Lyndras
			["coord"] = { 60.0, 34.6, AZSUNA },
			["groups"] = {
				i(127039),	-- Hatecoil Wristwraps (QI!)
				i(127038),	-- Stained Silken Robe (QI!)
			},
		}),
		q(38949, {	-- So You Think You Can Sew
			["sourceQuests"] = {
				38947,	-- Runic Catgut
				38948,	-- Hard Times
			},
			["provider"] = { "n", 93967 },	-- Lyndras
			["coord"] = { 60.0, 34.6, AZSUNA },
			["groups"] = {
				r(185918),	-- Silkweave Bracers [Rank 1] (RECIPE!)
				r(185925),	-- Silkweave Robe [Rank 1] (RECIPE!)
				--
				r(186763, {["u"]=TRAINING}),	-- Rune-Threaded Silkweave Robe
				r(186764, {["u"]=TRAINING}),	-- Rune-Threaded Silkweave Bracers
				i(127343),	-- Lyndras' Runic Catgut (QI!)
				i(127345),	-- Rune-Threaded Silkweave Bracers (QI!)
				i(127344),	-- Rune-Threaded Silkweave Robe (QI!)
			},
		}),
		q(38950, {	-- The Wayward Tailor
			["sourceQuests"] = { 38949 },	-- So You Think You Can Sew
			["provider"] = { "n", 93967 },	-- Lyndras
			["coord"] = { 60.0, 34.6, AZSUNA },
		}),
		q(38951, {	-- A Needle Need
			["sourceQuests"] = { 38950 },	-- The Wayward Tailor
			["provider"] = { "n", 93967 },	-- Lyndras
			["coord"] = { 35.2, 34.2, LEGION_DALARAN },
			["groups"] = {
				i(127042),	-- Spritethorn (QI!)
			},
		}),
		q(38952, {	-- Meticulous Precision
			["sourceQuests"] = { 38951 },	-- A Needle Need
			["provider"] = { "n", 93542 },	-- Tanithria
			["coord"] = { 35.2, 34.2, LEGION_DALARAN },
			["groups"] = {
				i(127043),	-- Sharpened Spritethorn (QI!)
			},
		}),
		q(38953, {	-- Advanced Needlework
			["sourceQuests"] = { 38952 },	-- Meticulous Precision
			["provider"] = { "n", 93967 },	-- Lyndras
			["coord"] = { 35.2, 34.2, LEGION_DALARAN },
			["groups"] = {
				r(185935),	-- Silkweave Cinch [Rank 2] (RECIPE!)
				--
				r(186799, {["u"]=TRAINING}),	-- Basic Slikweave Robe
				r(186801, {["u"]=TRAINING}),	-- Embroidered Slikweave Robe
				i(127359),	-- Basic Silkweave Robe (QI!)
				i(127360),	-- Embroidered Silkweave Robe (QI!)
				i(127290),	-- Tanithria's Blue Dye (QI!)
				i(127292),	-- Tanithria's Green Dye (QI!)
				i(127382),	-- Tanithria's Sharpened Spritethorn (QI!)
			},
		}),
		q(38954, {	-- Where's Lyndras?
			["sourceQuests"] = { 38953 },	-- Advanced Needlework
			["provider"] = { "n", 93542 },	-- Tanithria
			["coord"] = { 35.2, 34.2, LEGION_DALARAN },
		}),
		q(38955, {	-- Sew Far, Sew Good
			["sourceQuests"] = { 38954 },	-- Where's Lyndras?
			["provider"] = { "n", 93967 },	-- Lyndras
			["coord"] = { 35.2, 34.2, LEGION_DALARAN },
			["groups"] = {
				r(186388),	-- Silkweave Satchel (RECIPE!)
				--
				r(186803, {["u"]=TRAINING}),	-- Handcrafted Silkweave Bag
				i(127290),	-- Tanithria's Blue Dye (QI!)
			},
		}),
		q(38956, {	-- Where's Lyndras Again?
			["sourceQuests"] = { 38955 },	-- Sew Far, Sew Good
			["provider"] = { "n", 93542 },	-- Tanithria
			["coord"] = { 35.2, 34.2, LEGION_DALARAN },
		}),
		q(38957, {	-- Taking Inspiration
			["sourceQuests"] = { 38956 },	-- Where's Lyndras Again?
			["provider"] = { "n", 93967 },	-- Lyndras
			["coord"] = { 35.2, 34.2, LEGION_DALARAN },
			["groups"] = {
				r(185921),	-- Silkweave Pantaloons [Rank 1] (RECIPE!)
				i(127044),	-- Runed Breeches (QI!)
			},
		}),
		q(38958, {	-- The Right Color
			["sourceQuests"] = { 38956 },	-- Where's Lyndras Again?
			["provider"] = { "n", 93525 },	-- Ainderu Summerleaf
			["coord"] = { 35.2, 34.2, LEGION_DALARAN },
			["groups"] = {
				r(185924),	-- Silkweave Slippers [Rank 1] (RECIPE!)
				i(127046),	-- Helsquid Ink (QI!)
			},
		}),
		q(38959, {	-- Left Behind
			["sourceQuests"] = {
				38958,	-- The Right Color
				38958,	-- Taking Inspiration
			},
			["provider"] = { "n", 93967 },	-- Lyndras
			["coord"] = { 35.2, 34.2, LEGION_DALARAN },
			["groups"] = {
				i(135526),	-- Box of Measuring Tools (QI!)
				i(135525),	-- Lyndras' Pinking Shears (QI!)
				i(135527),	-- Lyndras' Threading Needles (QI!)
			},
		}),
		q(38960, {	-- Lining Them Up
			["sourceQuests"] = {
				38958,	-- The Right Color
				38958,	-- Taking Inspiration
			},
			["provider"] = { "n", 93967 },	-- Lyndras
			["coord"] = { 35.2, 34.2, LEGION_DALARAN },
			["groups"] = {
				i(127047),	-- Bear Fur (QI!)
			},
		}),
		q(38963, {	-- The Final Lesson?
			["sourceQuests"] = {
				38959,	-- Left Behind
				38960,	-- Lining Them Up
			},
			["provider"] = { "n", 93967 },	-- Lyndras
			["coord"] = { 35.2, 34.2, LEGION_DALARAN },
			["groups"] = {
				r(185922),	-- Silkweave Hood [Rank 1] (RECIPE!)
				--
				r(187060, {["u"]=TRAINING}),	-- Handcrafted Slikweave Hood
				r(187058, {["u"]=TRAINING}),	-- Slikweave Hood Lining
				r(187059, {["u"]=TRAINING}),	-- Slikweave Hood: Outer Layer
				i(135538),	-- Bear Fur (QI!)
				i(127367),	-- Handcrafted Silkweave Hood (QI!)
				i(127363),	-- Silkweave Hood: Outer Layer (QI!)
				i(127364),	-- Silkweave Hood Lining (QI!)
				i(127290),	-- Tanithria's Blue Dye (QI!)
			},
		}),
		q(38961, {	-- Eye of Azshara: The Depraved Nightfallen
			["sourceQuests"] = { 38963 },	-- The Final Lesson?
			["provider"] = { "n", 93967 },	-- Lyndras
			["coord"] = { 35.2, 34.2, LEGION_DALARAN },
			["maps"] = { 713 },	-- Eye of Azshara
			["groups"] = {
				r(185923),	-- Silkweave Gloves [Rank 1] (RECIPE!)
				i(127048),	-- Heart of the Storm (QI!)
			},
		}),
		q(38964, {	-- Where's Lyndras Now?
			["sourceQuests"] = { 38961 },	-- Eye of Azshara: The Depraved Nightfallen
			["provider"] = { "n", 93542 },	-- Tanithria
			["coord"] = { 35.2, 34.2, LEGION_DALARAN },
		}),
		q(39602, {	-- Where's Lyndras: Sewer Sleuthing
			["sourceQuests"] = { 38964 },	-- Where's Lyndras Now?
			["provider"] = { "n", 93542 },	-- Tanithria
			["coord"] = { 35.2, 34.2, LEGION_DALARAN },
		}),
		q(39605, {	-- Where's Lyndras: Downward Spiral
			["sourceQuests"] = {
				38964,	-- Where's Lyndras Now?
				39602,	-- Where's Lyndras: Sewer Sleuthing
			},
			["provider"] = { "o", 243899 },	-- Broken Ley Flame Burner
			["coord"] = { 56.2, 68.4, LEGION_DALARAN },
		}),
		q(39667, {	-- Where's Lyndras: Leyflame Larceny
			["sourceQuests"] = { 39605 },	-- Where's Lyndras: Downward Spiral
			["provider"] = { "o", 243899 },	-- Broken Ley Flame Burner
			["coord"] = { 56.2, 68.4, LEGION_DALARAN },
		}),
		q(38965, {	-- Assault on Violet Hold: Into the Hold
			["sourceQuests"] = { 39667 },	-- Where's Lyndras: Leyflame Larceny
			["provider"] = { "n", 96444 },	-- Violet Hold Guard
			["coord"] = { 65.2, 67.4, LEGION_DALARAN },
			["maps"] = { 732 },	-- Assault of Violet Hold (Legion)
			["groups"] = {
				i(135556),	-- Violet Hold Prison Key (QI!)
			},
		}),
		q(38966, {	-- Secret Silkweaving Methods
			["sourceQuests"] = { 38965 },	-- Assault on Violet Hod: Into the Hold
			["provider"] = { "n", 93542 },	-- Tanithria
			["coord"] = { 35.2, 34.2, LEGION_DALARAN },
			["groups"] = {
				r(185937),	-- Silkweave Pantaloons [Rank 2] (RECIPE!)
				r(185938),	-- Silkweave Hood [Rank 2] (RECIPE!)
				r(185939),	-- Silkweave Gloves [Rank 2] (RECIPE!)
				r(185940),	-- Silkweave Slippers [Rank 2] (RECIPE!)
				--
				r(187066, {["u"]=TRAINING}),	-- Masterwork Silkweave Bracers
				r(187064, {["u"]=TRAINING}),	-- Silkweave Bracer Lining
				r(187065, {["u"]=TRAINING}),	-- Silkweave Bracer: Outer Layer
				i(127368),	-- Bolt of Brimstone-Soaked Silkweave (QI!)
				i(127373),	-- Masterwork Silkweave Bracers (QI!)
				i(127372),	-- Silkweave Bracer Lining (QI!)
				i(127370),	-- Silkweave Bracer: Outer Layer (QI!)
				i(127382),	-- Tanithria's Sharpened Spritethorn (QI!)
			},
		}),
		q(38962, {	-- The Path to Suramar City
			["sourceQuests"] = { 38966 },	-- Secret Silkweaving Methods
			["provider"] = { "n", 93542 },	-- Tanithria
			["coord"] = { 35.2, 34.2, LEGION_DALARAN },
		}),
		q(38967, {	-- The Nightborne Connection
			["sourceQuests"] = { 38962 },	-- The Path to Suramar City
			["provider"] = { "n", 93542 },	-- Tanithria
			["coord"] = { 35.2, 34.2, LEGION_DALARAN },
		}),
		q(38968, {	-- Proof of Loyalty
			["sourceQuests"] = { 38967 },	-- The Nightborne Connection
			["provider"] = { "n", 93969 },	-- Leyweaver Tytallo
			["coord"] = { 40.4, 69.4, SURAMAR },
		}),
		q(38969, {	-- Master of Silkweave
			["sourceQuests"] = { 38962 },	-- The Path to Suramar City
			["provider"] = { "n", 93971 },	-- Leyweaver Inondra
			["coord"] = { 40.4, 69.4, SURAMAR },
			["cost"] = {
				{ "i", 126994, 1 },	-- 1x Silkweave Bracers
				{ "i", 126993, 1 },	-- 1x Silkweave Cinch
				{ "i", 126992, 1 },	-- 1x Silkweave Epaulets
				{ "i", 126989, 1 },	-- 1x Silkweave Gloves
				{ "i", 126990, 1 },	-- 1x Silkweave Hood
				{ "i", 126991, 1 },	-- 1x Silkweave Pantaloons
				{ "i", 126987, 1 },	-- 1x Silkweave Robe
				{ "i", 126988, 1 },	-- 1x Silkweave Slippers
			},
			["groups"] = {
				i(127266),	-- Shal'dorei Mannequin (QI!)
				i(127265),	-- Silkweave Set (QI!)
			},
		}),
		q(38970, {	-- The Queen's Grace Loom
			["sourceQuests"] = {
				38969,	-- Proof of Loyalty
				38969,	-- Master of Silkweave
			},
			["provider"] = { "n", 93969 },	-- Leyweaver Tytallo
			["coord"] = { 40.4, 69.4, SURAMAR },
			["groups"] = {
				r(185962),	-- Imbued Silkweave (RECIPE!)
				r(185926),	-- Imbued Silkweave Bracers [Rank 1] (RECIPE!)
			},
		}),
		q(38971, {	-- Exotic Textiles
			["sourceQuests"] = { 38970 },	-- The Queen's Grace Loom
			["provider"] = { "n", 93978 },	-- Leyweaver Athystro
			["coord"] = { 26.6, 71.4, SURAMAR },
			["groups"] = {
				r(185931),	-- Imbued Silkweave Gloves [Rank 1] (RECIPE!)
				i(127281),	-- Fel Inscribed Shroud (QI!)
			},
		}),
		q(38974, {	-- Halls of Valor: The Right Question
			["sourceQuests"] = { 38971 },	-- Exotic Textiles
			["provider"] = { "n", 93977 },	-- Leyweaver Tellumi
			["coord"] = { 65.6, 56.2, STORMHEIM },
			["maps"] = { 703, 704, 705 },	-- Halls of Valor
			["groups"] = {
				r(185929),	-- Imbued Silkweave Pantaloons [Rank 1] (RECIPE!)
				i(135575),	-- Hymdall's Loincloth (QI!)
			},
		}),
		q(38975, {	-- Inspire Me!
			["sourceQuests"] = { 38970 },	-- The Queen's Grace Loom
			["provider"] = { "n", 93976 },	-- Leyweaver Mithrogane
			["coord"] = { 40.2, 69.6, SURAMAR },
			["cost"] = {
				{ "i", 6238, 1 },	-- 1x Brown Linen Robe
				{ "i", 41515, 1 },	-- 1x Frostwoven Robe
				{ "i", 10053, 1 },	-- 1x Simple Black Dress
				{ "i", 54486, 1 },	-- 1x Spiritmend Robe
				{ "i", 6787, 1 },	-- 1x White Woolen Dress
			},
			["groups"] = {
				r(185933),	-- Imbued Silkwave Robes [Rank 1] (RECIPE!)
			},
		}),
		------ 7.1.0 ------
		q(44741, {	-- Return to Karazhan: The Big Bag Theory
			["provider"] = { "n", 93969 },	-- Leyweaver Tytallo
			["coord"] = { 40.4, 69.4, SURAMAR },
			["timeline"] = { ADDED_7_1_0 },
			["groups"] = {
				i(142076),	-- Imbued Silkweave Bag [Rank 1] (RECIPE!)
			},
		}),
		------ Celumbra, the Night's Dichotomy Questline ------
		q(46678, {	-- The Legend of the Threads
			["sourceQuests"] = { 46804 },	-- Fashion History and a Philosophy of Style
			["provider"] = { "n", 120221 },	-- Eliezer Hammerbeard
			["coord"] = { 41.2, 59.4, BROKEN_SHORE },
			["repeatable"] = true,
			["timeline"] = { ADDED_7_2_0 },
			["groups"] = {
				i(147281),	-- Nights with the Nightborne (QI!)
			},
		}),
		q(46682, {	-- Drapings of the Ancients
			["sourceQuests"] = { 46678},	-- The Legend of the Threads
			["provider"] = { "n", 120221 },	-- Eliezer Hammerbeard
			["coord"] = { 41.1, 59.3, BROKEN_SHORE },
			["repeatable"] = true,
			["groups"] = {
				i(146685), -- Ancient Imbued Silkweave (QI!)
				i(146684), -- Ancient Imbued Silkweave Armor (QI!)
			},
		}),
		q(46680, {	-- The Thread of Starlight
			["sourceQuests"] = { 46678 },	-- The Legend of the Threads
			["provider"] = { "n", 120221 },	-- Eliezer Hammerbeard
			["coord"] = { 41.1, 59.3, BROKEN_SHORE },
			["maps"] = { 761, 762, 763 },	-- Court of Stars
			["repeatable"] = true,
			["timeline"] = { ADDED_7_2_0 },
			["groups"] = {
				i(146680),	-- Melandrus' Star-Touched Bracers (QI!)
				i(146681),	-- Starlight Thread (QI!)
			},
		}),
		q(46679, {	-- The Thread of Shadow
			["sourceQuests"] = { 46678 },	-- The Legend of the Threads
			["provider"] = { "n", 120221 },	-- Eliezer Hammerbeard
			["coord"] = { 41.1, 59.3, BROKEN_SHORE },
			["maps"] = { 749 },	-- The Arcway
			["repeatable"] = true,
			["timeline"] = { ADDED_7_2_0 },
			["groups"] = {
				i(146679),	-- Shadow Thread (QI!)
				i(146678),	-- Vandros' Shadoweave Robes (QI!)
			},
		}),
		q(46681, {	-- The Thread of Souls
			["sourceQuest"] = 46678,	-- The Legend of the Threads
			["provider"] = { "n", 120221 },	-- Eliezer Hammerbeard
			["coord"] = { 41.1, 59.3, BROKEN_SHORE },
			["maps"] = { 764, 765, 766, 767, 768, 769, 770, 771, 772 },	-- The Nighthold
			["repeatable"] = true,
			["timeline"] = { ADDED_7_2_0 },
			["groups"] = {
				i(146683),	-- Soul Thread (QI!)
				i(146682),	-- Suramari Soul-Wraps (QI!)
			},
		}),
		q(46683, {	-- Starweave and Shadowcloth
			["sourceQuests"] = {
				46682,	-- Drapings of the Ancients
				46680,	-- The Thread of Starlight
				46679,	-- The Thread of Shadow
				46681,	-- The Thread of Souls
			},
			["provider"] = { "n", 120221 },	-- Eliezer Hammerbeard
			["coord"] = { 41.1, 59.3, BROKEN_SHORE },
			["repeatable"] = true,
			["timeline"] = { ADDED_7_2_0 },
			["groups"] = {
				i(146952),	-- Legendary Tailor's Materials (QI!)
				i(147437),	-- Satchel of Starweave and Shadowcloth (QI!)
				i(146710),	-- Bolt of Shadowcloth
				i(146711),	-- Bolt of Starweave
			},
		}),
		------ 7.3.0 ------
		q(48074, {	-- Looming Over Me
			["sourceQuests"] = { 46941 },	-- The Path Forward
			["timeline"] = { ADDED_7_3_0 },
			["groups"] = {
				r(247807),	-- Lightweave Breeches [Rank 1]
				i(151874),	-- Lightweave Loom (QI!)
			},
		}),
	})),
	expansion(EXPANSION.BFA, bubbleDownSelf({ ["timeline"] = { ADDED_8_0_1_LAUNCH } }, {
		n(ACHIEVEMENTS, bubbleDownSelf({ ["timeline"] = { ADDED_10_1_7 } }, {
			ach(18774),	-- Synchronous Thread (automated)
			ach(18896, {	-- United as Three
				["providers"] = {
					{ "i", 154706 },	-- Battle Flag: Phalanx Defense
					{ "i", 154705 },	-- Battle Flag: Rallying Swiftness
					{ "i", 154707 },	-- Battle Flag: Spirit of Freedom
				}
			}),
		})),
		n(QUESTS, bubbleDown({ ["timeline"] = { ADDED_8_1_5 } }, {
			q(54483, {	-- Tailored Training [A]
				["provider"] = { "n", 136071 },	-- Daniel Brineweaver <Tailoring Trainer>
				["coord"] = { 76.8, 11.2, BORALUS },
				["timeline"] = { ADDED_8_1_0, REMOVED_9_0_1 },	-- Might no be correct removed patch
				["races"] = ALLIANCE_ONLY,
			}),
			q(54484, {	-- Tailored Training [H]
				["provider"] = { "n", 122700 },	-- Pin'jin the Patient <Tailoring Trainer>
				["coord"] = { 44.5, 33.9, DAZARALOR },
				["timeline"] = { ADDED_8_1_0, REMOVED_9_0_1 },	-- Might no be correct removed patch
				["races"] = HORDE_ONLY,
			}),
			------ Tools of Trade Questline ------
			q(53805, {	-- A Friend in Needle [A]
				["provider"] = { "n", 145022 },	-- Timeweaver Delormi
				["coord"] = { 76.6, 11.8, BORALUS },
				["races"] = ALLIANCE_ONLY,
			}),
			q(53938, {	-- A Friend in Needle [H]
				["provider"] = { "n", 145022 },	-- Timeweaver Delormi
				["coord"] = { 43.5, 34.8, DAZARALOR },
				["races"] = HORDE_ONLY,
			}),
			q(53807, {	-- A Stitch in Time [A]
				["sourceQuests"] = { 53805 },	-- A Friend in Needle [A]
				["provider"] = { "n", 145022 },	-- Timeweaver Delormi
				["coord"] = { 76.6, 11.8, BORALUS },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(167231),	-- Delormi's Synchronous Thread (QI!)
				},
			}),
			q(53940, {	-- A Stitch in Time [H]
				["sourceQuests"] = { 53938 },	-- A Friend in Needle [H]
				["provider"] = { "n", 145022 },	-- Timeweaver Delormi
				["coord"] = { 43.5, 34.8, DAZARALOR },
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(167231),	-- Delormi's Synchronous Thread (QI!)
				},
			}),
			q(55177, {	-- Tearing at the Seams [A]
				["sourceQuests"] = { 53807 },	-- A Stitch in Time [A]
				["provider"] = { "n", 145022 },	-- Timeweaver Delormi
				["races"] = ALLIANCE_ONLY,
			}),
			q(55188, {	-- Tearing at the Seams [H]
				["sourceQuests"] = { 53940 },	-- A Stitch in Time [H]
				["provider"] = { "n", 145022 },	-- Timeweaver Delormi
				["races"] = HORDE_ONLY,
			}),
			q(53810, {	-- The Severed Thread
				["sourceQuests"] = {
					55177,	-- Tearing at the Seams [A]
					55188,	-- Tearing at the Seams [H]
				},
				["provider"] = { "n", 151134 },	-- Timeweaver Delormi
				["coord"] = { 62.0, 53.9, CAVERNS_OF_TIME },
			}),
			q(53813, {	-- Rolling Up the Sleeves
				["sourceQuests"] = {
					55177,	-- Tearing at the Seams [A]
					55188,	-- Tearing at the Seams [H]
				},
				["provider"] = { "n", 151134 },	-- Timeweaver Delormi
				["coord"] = { 43.5, 34.8, CAVERNS_OF_TIME },
			}),
			q(53858, {	-- Step Into Her Shoes
				["sourceQuests"] = {
					53810,	-- The Severed Thread
					53813,	-- Rolling Up the Sleeves
				},
				["provider"] = { "n", 151134 },	-- Timeweaver Delormi
				["coord"] = { 39.1, 63.3, CAVERNS_OF_TIME },
			}),
			q(53866, {	-- If The Shoe Fits...
				["sourceQuests"] = { 53858 },	-- Step Into Her Shoes
				["provider"] = { "n", 151134 },	-- Timeweaver Delormi
				["coord"] = { 63.8, 68.8, SURAMAR },
			}),
			q(55214, {	-- Seam Stress
				["sourceQuests"] = { 53866 },	-- If The Shoe Fits...
				["provider"] = { "n", 151134 },	-- Timeweaver Delormi
				["coord"] = { 64.2, 69.5, SURAMAR },
				["groups"] = {
					i(167231),	-- Delormi's Synchronous Thread (QI!)
				},
			}),
			q(53868, {	-- Saving Nine
				["sourceQuests"] = { 55214 },	-- Seam Stress
				["provider"] = { "n", 151134 },	-- Timeweaver Delormi
				["coord"] = { 7.2, 24.5, STORMSONG_VALLEY },
			}),
			q(53869, {	-- Killing Time
				["sourceQuests"] = { 53868 },	-- Saving Nine
				["provider"] = { "n", 151134 },	-- Timeweaver Delormi
				["coord"] = { 71.6, 39.8, DRAGONBLIGHT },
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
			q(53962, {	-- Cut from the Same Cloth [H]
				["sourceQuests"] = { 53869 },	-- Killing Time
				["provider"] = { "n", 151134 },	-- Timeweaver Delormi
				["coord"] = { 71.6, 39.8, DRAGONBLIGHT },
				["races"] = HORDE_ONLY,
				["groups"] = {
					r(292946),	-- Recipe: Synchronous Thread (RECIPE!)
				},
			}),
		})),
		header(HEADERS.Item, 164733, {	-- Synchronous Thread
			["description"] = "This Trader has a ~20% chance to spawn from closing a Time Rift via the Synchronous Thread (Battle for Azeroth Tailor Only item).\nBest Zone to farm Time Rifts is Nazjatar.",
			["providers"] = {
				{ "i", 164733 },	-- Synchronous Thread
				{ "n", 151903 },	-- Time-Lost Trader
			},
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
			["groups"] = {
				i(167889, {	-- Pattern: Azure Silk Cloak (RECIPE!)
					["cost"] = {{"i", EMBROIDERED_DEEP_SEA_SATIN, 50}}
				}),
				i(167881, {	-- Pattern: Belt of the Archmage (RECIPE!)
					["cost"] = {{"i", EMBROIDERED_DEEP_SEA_SATIN, 150}}
				}),
				i(167887, {	-- Pattern: Cindercloth Gloves (RECIPE!)
					["cost"] = {{"i", EMBROIDERED_DEEP_SEA_SATIN, 75}}
				}),
				i(167886, {	-- Pattern: Cindercloth Vest (RECIPE!)
					["cost"] = {{"i", EMBROIDERED_DEEP_SEA_SATIN, 75}}
				}),
				i(167882, {	-- Pattern: Cloak of Warding (RECIPE!)
					["cost"] = {{"i", EMBROIDERED_DEEP_SEA_SATIN, 75}}
				}),
				i(167883, {	-- Pattern: Felcloth Gloves (RECIPE!)
					["cost"] = {{"i", EMBROIDERED_DEEP_SEA_SATIN, 100}}
				}),
				i(167890, {	-- Pattern: Icy Cloak (RECIPE!)
					["cost"] = {{"i", EMBROIDERED_DEEP_SEA_SATIN, 50}}
				}),
				i(167884, {	-- Pattern: Inferno Gloves (RECIPE!)
					["cost"] = {{"i", EMBROIDERED_DEEP_SEA_SATIN, 100}}
				}),
				i(167885, {	-- Pattern: Mooncloth Gloves (RECIPE!)
					["cost"] = {{"i", EMBROIDERED_DEEP_SEA_SATIN, 100}}
				}),
				i(167888, {	-- Pattern: Robe of Winter Night (RECIPE!)
					["cost"] = {{"i", EMBROIDERED_DEEP_SEA_SATIN, 100}}
				}),
				i(167880, {	-- Pattern: Robes of Arcana (RECIPE!)
					["cost"] = {{"i", EMBROIDERED_DEEP_SEA_SATIN, 100}}
				}),
			},
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
				["groups"] = {
					i(190456),	-- Artisan's Mettle
				},
			}),
		}),
		n(QUESTS, sharedData({
			["maxReputation"] = { FACTION_ARTISANS_CONSORTIUM_DRAGON_ISLES_BRANCH, 5 },
			["isWeekly"] = true,
			["groups"] = {
				i(198609),	-- Tailoring Examples
			},
		},{
			q(66953, {	-- All Things Fluffy
				["description"] = "Requires 25 Skill.",
				["provider"] = { "n", 191000 },	-- Dothenos
				["coord"] = { 36.6, 62.6, VALDRAKKEN },
				["groups"] = {
					i(194450),	-- Fluffy Fur (QI!)
				},
			}),
			q(66899, {	-- Fuzzy Legs
				["description"] = "Requires 25 Skill.",
				["provider"] = { "n", 191000 },	-- Dothenos
				["coord"] = { 36.6, 62.6, VALDRAKKEN },
				["groups"] = {
					i(193865),	-- Fuzzy Legs (QI!)
				},
			}),
			q(72410, {	-- Pincers and Needles
				["description"] = "Requires 25 Skill.",
				["provider"] = { "n", 191001 },	-- Gnoklin Quirkcoil
				["coord"] = { 36.8, 62.8, VALDRAKKEN },
				["groups"] = {
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
				["groups"] = {
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
				["groups"] = {
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
				["groups"] = {
					i(209021),	-- Shed Great Feathers (QI!)
				},
			}),
			q(77947, {	-- Primalist Fashion
				["provider"] = { "n", 210162 },	-- Magnolia Oaken
				["coord"] = { 36.8, 63.1, VALDRAKKEN },
				["timeline"] = { ADDED_10_2_0 },
				["groups"] = {
					i(208956),	-- Intact Primalist Garb (QI!)
				},
			}),
		})),
		filter(RECIPES, {
			["description"] = "These are learned by specialization.",
			["groups"] = sharedData({ ["cost"] = {{ "c", DF_TAILORING_KNOWLEDGE, 1 }}, }, {
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
				["groups"] = {
					i(206019),	-- Abandoned Reserve Chute
				},
			})),
			o(380763, {	-- Ancient Dragonweave Loom
				["description"] = "Interact with the loom and complete the minigame to be awared this treasure.",
				["questID"] = 70372,
				["coord"] = { 58.6, 45.8, THALDRASZUS },
				["groups"] = {
					i(201019),	-- Ancient Dragonweave Bolt
				},
			}),
			o(380597, {	-- Battle Hardened Centaur Carpet
				["questID"] = 70295,
				["coord"] = { 35.3, 40.1, OHNAHRAN_PLAINS },
				["groups"] = {
					i(198692),	-- Noteworthy Scrap of Carpet
				},
			}),
			o(380583, {	-- Decaying Brackenhide Blanket
				["questID"] = 70284,
				["coord"] = { 16.2, 38.8, THE_AZURE_SPAN },
				["groups"] = {
					i(198680),	-- Decaying Brackenhide Blanket
				},
			}),
			o(411171, bubbleDownSelf({ ["timeline"] = { ADDED_10_2_0 } }, {	-- Exceedingly Soft Wildercloth
				["coord"] = { 53.2, 27.9, EMERALD_DREAM },
				["questID"] = 78414,
				["groups"] = {
					i(210461),	-- Exceedingly Soft Wildercloth
				},
			})),
			o(402887, bubbleDownSelf({ ["timeline"] = { ADDED_10_1_0 } }, {	-- Exquisitely Embroidered Banner
				["coord"] = { 44.5, 15.7, ZARALEK_CAVERN },
				["questID"] = 76116,
				["groups"] = {
					i(206030),	-- Exquisitely Embroidered Banner
				},
			})),
			o(380549, {	-- Intriguing Bolt of Blue Cloth
				["questID"] = 70267,
				["coord"] = { 40.7, 54.9, THE_AZURE_SPAN },
				["groups"] = {
					i(198662),	-- Intriguing Bolt of Blue Cloth
				},
			}),
			o(380607, {	-- Itinerant Singed Fabric
				["questID"] = 70304,
				["coord"] = { 24.9, 69.7, THE_WAKING_SHORES },
				["groups"] = {
					i(198702),	-- Itinerant Singed Fabric
				},
			}),
			o(380588, {	-- Miniature Bronze Dragonflight Banner
				["questID"] = 70288,
				["coord"] = { 60.5, 79.7, THALDRASZUS },
				["groups"] = {
					i(198684),	-- Miniature Bronze Dragonflight Banner
				},
			}),
			o(380604, {	-- Mysterious Banner
				["questID"] = 70302,
				["coord"] = { 74.7, 37.9, THE_WAKING_SHORES },
				["groups"] = {
					i(198699),	-- Mysterious Banner
				},
			}),
			o(411176, bubbleDownSelf({ ["timeline"] = { ADDED_10_2_0 } }, {	-- Plush Pillow
				["coord"] = { 49.8, 61.4, EMERALD_DREAM },
				["questID"] = 78415,
				["groups"] = {
					i(210462),	-- Plush Pillow
				},
			})),
			o(380608, {	-- Silky Surprise
				["description"] = "Interact with the Catnip Frond, gather 5 Catnip Leaves and throw them at the Playful Prowler. Then the treasure will appear.",
				["questID"] = 70303,
				["coord"] = { 66.1, 52.9, OHNAHRAN_PLAINS },
				["crs"] = { 194873 },	-- Playful Prowler
				["groups"] = {
					i(201020),	-- Silky Surprise
				},
			}),
			o(411177, bubbleDownSelf({ ["timeline"] = { ADDED_10_2_0 } }, {	-- Snuggle Buddy
				["coord"] = { 40.7, 86.1, EMERALD_DREAM },
				["questID"] = 78416,
				["groups"] = {
					i(210463),	-- Snuggle Buddy
				},
			})),
			o(402878, bubbleDownSelf({ ["timeline"] = { ADDED_10_1_0 } }, {	-- Used Medical Wrap Kit
				["coord"] = { 59.1, 73.1, ZARALEK_CAVERN },
				["questID"] = 76110,
				["groups"] = {
					i(206025),	-- Used Medical Wrap Kit
				},
			})),
		}),
		n(WEEKLY_PROFESSION_KNOWLEDGE, sharedData({
			["isWeekly"] = true,
			["groups"] = {
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
				["provider"] = { "i", 198978 },	-- Stupidly Effective Stitchery
				["coords"] = {
					{ 56.6, 29.2, THALDRASZUS },
					{ 57.0, 30.6, THALDRASZUS },
				},
				["crs"] = {
					192500,	-- Fetid Slogger
					192506,	-- Hyena Tender
				},
			}),
			q(70524, {	-- DF Weekly Tailoring Knowledgepoint #4
				["name"] = "DF Tailoring Drop #2: Ohn'ahran Humanoid",
				["description"] = "Drops from any Ohn'ahran Humanoid.\nCoordinates link to the spot(s) we found best.",
				["provider"] = { "i", 198977 },	-- Ohn'arhan Weave
				["coords"] = {
					{ 87.0, 51.4, OHNAHRAN_PLAINS },
					{ 85.0, 55.8, OHNAHRAN_PLAINS },
				},
				["crs"] = {
					193840,	-- Nokhud Raider
				},
			}),
		})),
	})),
	expansion(EXPANSION.TWW, bubbleDownSelf({ ["timeline"] = { ADDED_11_0_2 } }, {
		n(QUESTS, sharedData({
			["isWeekly"] = true,
			["maxReputation"] = { FACTION_ARTISANS_CONSORTIUM_DRAGON_ISLES_BRANCH, 5 },
			["groups"] = {
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
			["groups"] = sharedData({ ["cost"] = {{ "c", TWW_TAILORING_KNOWLEDGE, 1 }} }, {
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
				["groups"] = {
					i(226352),	-- Arathi Rotary Cutter
				},
			}),
			o(455945, {	-- Dornogal Seam Ripper
				["coord"] = { 61.4, 18.6, DORNOGAL },
				["questID"] = 83922,
				["groups"] = {
					i(226348),	-- Dornogal Seam Ripper
				},
			}),
			o(455944, {	-- Earthen Tape Measure
				["coord"] = { 56.2, 61.0, ISLE_OF_DORN },
				["questID"] = 83923,
				["groups"] = {
					i(226349),	-- Earthen Tape Measure
				},
			}),
			o(455942, {	-- Eathen Sticher's Snips
				["coord"] = { 64.2, 60.2, THE_RINGING_DEEPS },
				["questID"] = 83925,
				["groups"] = {
					i(226351),	-- Earthen Stitcher's Snips
				},
			}),
			o(455938, {	-- Nerubian's Pincushion
				["coord"] = { 50.2, 16.7, NERUBAR },
				["questID"] = 83929,
				["groups"] = {
					i(226355),	-- Nerubian's Pincushion
				},
			}),
			o(455939, {	-- Nerubian Quilt
				["coord"] = { 53.2, 53.1, AZJ_KAHET },
				["questID"] = 83928,
				["groups"] = {
					i(226354),	-- Nerubian Quilt
				},
			}),
			o(455940, {	-- Royal Outfitter's Protractor
				["coord"] = { 40.1, 68.1, HALLOWFALL },
				["questID"] = 83927,
				["groups"] = {
					i(226353),	-- Royal Outfitter's Protractor
				},
			}),
			o(455943, {	-- Runed Earthen Pins
				["coord"] = { 48.8, 32.8, THE_RINGING_DEEPS },
				["questID"] = 83924,
				["groups"] = {
					i(226350),	-- Runed Earthen Pins
				},
			}),
		}),
		n(WEEKLY_PROFESSION_KNOWLEDGE, sharedData({
			["isWeekly"] = true,
			["groups"] = {
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

profession(TAILORING, {
	-- #if BEFORE 4.0.1.12984
	applyclassicphase(TBC_PHASE_ONE, prof(26798, {	-- Mooncloth Tailoring
		["description"] = "These items can only be crafted by Tailors that have completed the Becoming a Mooncloth Tailor quest in Shattrath.\n\nNOTE: You may only have one of these specializations active per character.",
		["sourceQuest"] = 10831,	-- Becoming a Mooncloth Tailor
		["groups"] = {
			recipe(26760),	-- Primal Mooncloth Belt
			recipe(26762),	-- Primal Mooncloth Robe
			recipe(26761),	-- Primal Mooncloth Shoulders
		},
	})),
	applyclassicphase(TBC_PHASE_ONE, prof(26801, {	-- Shadoweave Tailoring
		["description"] = "These items can only be crafted by Tailors that have completed the Becoming a Shadoweave Tailor quest in Shattrath.\n\nNOTE: You may only have one of these specializations active per character.",
		["sourceQuest"] = 10833,	-- Becoming a Shadoweave Tailor
		["groups"] = {
			recipe(26756),	-- Frozen Shadoweave Shoulders
			recipe(26758),	-- Frozen Shadoweave Robe
			recipe(26757),	-- Frozen Shadoweave Boots
		},
	})),
	applyclassicphase(TBC_PHASE_ONE, prof(26797, {	-- Spellfire Tailoring
		["description"] = "These items can only be crafted by Tailors that have completed the Becoming a Spellfire Tailor quest in Shattrath.\n\nNOTE: You may only have one of these specializations active per character.",
		["sourceQuest"] = 10832,	-- Becoming a Spellfire Tailor
		["groups"] = {
			recipe(26752),	-- Spellfire Belt
			recipe(26753),	-- Spellfire Gloves
			recipe(26754),	-- Spellfire Robe
		},
	})),
	-- #endif
	applyclassicphase(WOD_PHASE_ONE, expansion(EXPANSION.WOD, {
		n(DROPS, {
		}),
		-- #if AFTER SL
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
		-- #if AFTER SL
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
					i(162510),	-- Pattern: Emblazoned Deep Sea Breeches (RECIPE!)
				},
			},
			{	-- Imbued Deep Sea Gloves
				["spellID"] = 257120,	-- Imbued Deep Sea Gloves
				["groups"] = {
					i(162508),	-- Pattern: Emblazoned Deep Sea Gloves (RECIPE!)
				},
			},
		}),
	})),
	applyclassicphase(SL_PHASE_ONE, expansion(EXPANSION.SL, {
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

-- #if AFTER SL

-- #endif
-- #endif
