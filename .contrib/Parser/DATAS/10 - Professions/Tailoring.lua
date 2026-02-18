-----------------------------------------------------
--       P R O F E S S I O N S   M O D U L E       --
-----------------------------------------------------
local EMBROIDERED_DEEP_SEA_SATIN = 158378;
root(ROOTS.Professions, prof(TAILORING, bubbleDownSelf({ ["requireSkill"] = TAILORING }, {
	n(ACHIEVEMENTS, bubbleDownSelf({ ["timeline"] = { ADDED_10_1_7 } }, {
		ach(18888),	-- Quite the Quilt IV
		ach(18887),	-- Quite the Quilt III
		ach(18886),	-- Quite the Quilt II
		ach(18885),	-- Quite the Quilt I
		ach(18903),	-- Ton of Tops (automated)
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
						["coord"] = { 80.0, 65.0, ZANGARMARSH },
						["cost"] = {
							{ "i", 31524, 1 },	-- Square of Imbued Netherweave
							{ "i", 31525, 1 },	-- Vial of Primal Reagents
						},
					}),
					r(MOONCLOTH_TAILORING),
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
					r(SHADOWEAVE_TAILORING),
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
					r(SPELLFIRE_TAILORING),
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
			["timeline"] = { ADDED_7_2_0 },
			["repeatable"] = true,
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
				i(146685),	-- Ancient Imbued Silkweave (QI!)
				i(146684),	-- Ancient Imbued Silkweave Armor (QI!)
			},
		}),
		q(46680, {	-- The Thread of Starlight
			["sourceQuests"] = { 46678 },	-- The Legend of the Threads
			["provider"] = { "n", 120221 },	-- Eliezer Hammerbeard
			["coord"] = { 41.1, 59.3, BROKEN_SHORE },
			["timeline"] = { ADDED_7_2_0 },
			["maps"] = { 761, 762, 763 },	-- Court of Stars
			["repeatable"] = true,
			["groups"] = {
				i(146680),	-- Melandrus' Star-Touched Bracers (QI!)
				i(146681),	-- Starlight Thread (QI!)
			},
		}),
		q(46679, {	-- The Thread of Shadow
			["sourceQuests"] = { 46678 },	-- The Legend of the Threads
			["provider"] = { "n", 120221 },	-- Eliezer Hammerbeard
			["coord"] = { 41.1, 59.3, BROKEN_SHORE },
			["timeline"] = { ADDED_7_2_0 },
			["maps"] = { 749 },	-- The Arcway
			["repeatable"] = true,
			["groups"] = {
				i(146679),	-- Shadow Thread (QI!)
				i(146678),	-- Vandros' Shadoweave Robes (QI!)
			},
		}),
		q(46681, {	-- The Thread of Souls
			["sourceQuest"] = 46678,	-- The Legend of the Threads
			["provider"] = { "n", 120221 },	-- Eliezer Hammerbeard
			["coord"] = { 41.1, 59.3, BROKEN_SHORE },
			["timeline"] = { ADDED_7_2_0 },
			["maps"] = { 764, 765, 766, 767, 768, 769, 770, 771, 772 },	-- The Nighthold
			["repeatable"] = true,
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
			["timeline"] = { ADDED_7_2_0 },
			["repeatable"] = true,
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
			["coords"] = {
				{ 42.8, 61.8, THE_VINDICAAR_EREDATH_LOWER },
			},
			["timeline"] = { ADDED_7_3_0 },
			["groups"] = {
				r(247807),	-- Lightweave Breeches [Rank 1]
				o(272745, {	-- Lightweave Loom
					["coord"] = { 53.8, 23.2, EREDATH },
					["groups"] = { i(151874) },	-- Lightweave Loom (QI!)
				}),
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
				["provider"] = { "n", 191001 },	-- Gnoklin Quirkcoil <Requisitions Officer>
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
					o(398017, {	-- Underlight Moth Cocoon
						i(204817),	-- Underlight Cocoon Fibers (QI!)
					}),
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
			["groups"] = sharedData({ ["cost"] = {{ "c", PROFESSION_KNOWLEDGE.DF.TAILORING, 1 }}, }, {
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
			o(380599, {	-- Catnip Frond
				["coords"] = {
					{ 65.2, 52.2, OHNAHRAN_PLAINS },
					{ 65.7, 53.9, OHNAHRAN_PLAINS },
					{ 65.9, 52.7, OHNAHRAN_PLAINS },
					{ 66.5, 53.4, OHNAHRAN_PLAINS },
				},
				["groups"] = { i(198688) },	-- Catnip Leaf
			}),
			o(380608, {	-- Silky Surprise
				["description"] = "Interact with the Catnip Frond, gather 5 Catnip Leaves and throw them at the Playful Prowler. Then the treasure will appear.",
				["questID"] = 70303,
				["coord"] = { 66.1, 52.9, OHNAHRAN_PLAINS },
				["crs"] = { 194873 },	-- Playful Prowler
				["cost"] = { { "i", 198688, 5 }, },	-- 5x Catnip Leaf
				["groups"] = { i(201020) },	-- Silky Surprise
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
				currency(PROFESSION_KNOWLEDGE.DF.TAILORING),
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
		n(QUESTS, {
			q(84132, {	-- Tailoring Services Requested
				["sourceQuests"] = { 84281 },	-- Crafting Orders: Tailoring
				["provider"] = { "n", 228177 },	-- Kala Clayhoof
				["coord"] = { 59.2, 55.2, DORNOGAL },
				["isWeekly"] = true,
				["groups"] = {
					i(228779),	-- Algari Tailor's Notebook
				},
			}),
		}),
		filter(RECIPES, {
			["description"] = "These are learned by specialization.",
			["groups"] = sharedData({ ["cost"] = {{ "c", PROFESSION_KNOWLEDGE.TWW.TAILORING, 1 }} }, {
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
				currency(PROFESSION_KNOWLEDGE.TWW.TAILORING),
			},
		},{
			i(228779),	-- Algari Tailor's Notebook
			q(83735, {	-- TWW Inscription Order: Tailoring
				["name"] = "TWW Inscription Order: Tailoring",
				["description"] = "Requires a crafting order from Inscription.",
				["provider"] = { "i", 222547 },	-- Algari Treatise on Tailoring
			}),
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
	expansion(EXPANSION.MID, bubbleDownSelf({ ["timeline"] = { ADDED_12_0_X_LAUNCH } }, {
		n(ACHIEVEMENTS, {
			ach(42794, {	-- Tailoring at Midnight
				i(264174),	-- Midnight Tailor's Shop Sign (DECOR!)
			}),
			ach(62238),	-- Tailoring-on-Demand
			ach(62246, {	-- Dedicated to the Craft: Tailoring
				-- Meta Achievement
				["sym"] = {{"meta_achievement",
					42794,	-- Tailoring at Midnight
					62238,	-- Tailoring-on-Demand
				}},
				["groups"] = {
					title(748),	-- Thalassian Tailor <Name>
				},
			}),
		}),
		n(QUESTS, {
			q(93696, {	-- Tailoring Services Requested
				["sourceQuests"] = { 93730 },	-- Crafting Orders: Tailoring
				["provider"] = { "n", 243352 },	-- Galana <Tailoring Trainer>
				["coord"] = { 48.2, 54.0, MAP.MIDNIGHT.SILVERMOON_CITY },
				["isWeekly"] = true,
				["groups"] = {
					i(263460),	-- Thalassian Tailor's Notebook
				},
			}),
		}),
		filter(RECIPES, {
			["description"] = "These are learned by specialization.",
			["groups"] = sharedData({ ["cost"] = {{ "c", PROFESSION_KNOWLEDGE.MID.TAILORING, 1 }} }, {
				r(1228950),	-- Adherent's Silken Shroud
				r(1227926),	-- Arcanoweave Bolt
				r(1228984),	-- Arcanoweave Bracers
				r(1228985),	-- Arcanoweave Cloak
				r(1228986),	-- Arcanoweave Treads
				r(1228945),	-- Martyr's Bindings
				r(1228942),	-- Martyr's Crown
				r(1228943),	-- Martyr's Gloves
				r(1228947),	-- Martyr's Leggings
				r(1228949),	-- Martyr's Mantle
				r(1228948),	-- Martyr's Slippers
				r(1228946),	-- Martyr's Vestments
				r(1228944),	-- Martyr's Waistwrap
				r(1228981),	-- Sunfire Bracers
				r(1228982),	-- Sunfire Cloak
				r(1228060),	-- Sunfire Silk Bolt
				r(1228983),	-- Sunfire Treads
			}),
		}),
		n(TREASURES, {
			o(525905, {	-- A Child's Stuffy
				["coord"] = { 70.5, 50.9, MAP.MIDNIGHT.HARANDAR },
				["questID"] = 89078,
				["groups"] = {
					i(238612),	-- A Child's Stuffy
				},
			}),
			o(525904, {	-- A Really Nice Curtain
				["coord"] = { 35.9, 61.3, MAP.MIDNIGHT.SILVERMOON_CITY },
				["questID"] = 89079,
				["groups"] = {
					i(238613),	-- A Really Nice Curtain
				},
			}),
			o(525898, {	-- Artisan's Cover Comb
				["coord"] = { 40.5, 49.4, MAP.MIDNIGHT.ZULAMAN },
				["questID"] = 89085,
				["groups"] = {
					i(238619),	-- Artisan's Cover Comb
				},
			}),
			o(525901, {	-- Book of Sin'dorei Stitches
				["coord"] = { 62.0, 83.6, MAP.MIDNIGHT.SLAYERS_RISE_OUTDOOR },
				["questID"] = 89082,
				["groups"] = {
					i(238616),	-- Book of Sin'dorei Stitches
				},
			}),
			o(525899, {	-- Particularly Enchanting Tablecloth
				["coord"] = { 31.8, 68.2, MAP.MIDNIGHT.SILVERMOON_CITY },
				["questID"] = 89084,
				["groups"] = {
					i(238618),	-- Particularly Enchanting Tablecloth
				},
			}),
			o(525900, {	-- Satin Throw Pillow
				["coord"] = { 61.6, 85.0, MAP.MIDNIGHT.SLAYERS_RISE_OUTDOOR },
				["questID"] = 89083,
				["groups"] = {
					i(238617),	-- Satin Throw Pillow
				},
			}),
			o(525903, {	-- Sin'dorei Outfitter's Ruler
				["coord"] = { 46.3, 34.8, MAP.MIDNIGHT.EVERSONG_WOODS },
				["questID"] = 89080,
				["groups"] = {
					i(238614),	-- Sin'dorei Outfitter's Ruler
				},
			}),
			o(525902, {	-- Wooden Weaving Sword
				["coord"] = { 69.8, 51.0, MAP.MIDNIGHT.HARANDAR },
				["questID"] = 62655,
				["groups"] = {
					i(238615),	-- Wooden Weaving Sword
				},
			}),
		}),
		n(WEEKLY_PROFESSION_KNOWLEDGE, sharedData({
			["isWeekly"] = true,
			["groups"] = {
				currency(PROFESSION_KNOWLEDGE.MID.TAILORING),
			},
		},{
			i(263460),	-- Thalassian Tailor's Notebook
			q(95137, {	-- MID Inscription Order: Tailoring
				["name"] = "MID Inscription Order: Tailoring",
				["description"] = "Requires a crafting order from Inscription.",
				["provider"] = { "i", 245756 },	-- Thalassian Treatise on Tailoring
			}),
			--[[ Needs QuestIDs
			q(83270, {	-- MID Weekly Tailoring Knowledgepoint #1
				["name"] = "MID Weekly Tailoring Treasure #1",
				["provider"] =  { "i", 259202 },	-- Embroidered Memento
			}),
			q(83269, {	-- MID Weekly Tailoring Knowledgepoint #2
				["name"] = "MID Weekly Tailoring Treasure #2",
				["provider"] =  { "i", 259203 },	-- Finely Woven Lynx Collar
			}),
			--]]
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
