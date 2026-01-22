-----------------------------------------------------
--       P R O F E S S I O N S   M O D U L E       --
-----------------------------------------------------
local DF_ALCHEMY_KNOWLEDGE = 2024;
local TWW_ALCHEMY_KNOWLEDGE = 2785;
local MID_ALCHEMY_KNOWLEDGE = 3150;
root(ROOTS.Professions, prof(ALCHEMY, bubbleDownSelf({ ["requireSkill"] = ALCHEMY }, {
	n(ACHIEVEMENTS, bubbleDownSelf({ ["timeline"] = { ADDED_10_1_7 } }, {
		ach(18733),	-- A Cure for All Ails IV
		ach(18732),	-- A Cure for All Ails III
		ach(18731),	-- A Cure for All Ails II
		ach(18726),	-- A Cure for All Ails I
		ach(18963, {	-- Burst Damage
			["providers"] = {
				{ "i", 152560 },	-- Potion of Bursting Blood
				{ "i", 186697 },	-- Blossom Burst
				{ "i", 186701 },	-- Glory Burst
				{ "i", 186700 },	-- Marrow Burst
				{ "i", 186698 },	-- Torch Burst
				{ "i", 186699 },	-- Widow Burst
			},
		}),
		ach(18934),	-- Excessive Experimentation
		ach(18904),	-- Iron to Vendor Gold
		ach(18737),	-- Powerful Concoctions IV
		ach(18736),	-- Powerful Concoctions III
		ach(18735),	-- Powerful Concoctions II
		ach(18734),	-- Powerful Concoctions I
	})),
	expansion(EXPANSION.CLASSIC, {
		n(ACHIEVEMENTS, bubbleDownSelf({ ["timeline"] = { ADDED_10_1_7 } }, {
			ach(18723, {	-- Look, You're Specialized!
				["sourceQuests"] = {
					29481,	-- Elixir Master
					29067,	-- Potion Master
					29482,	-- Transmutation Master
				},
				["sourceQuestNumRequired"] = 1,
			}),
		})),
		n(QUESTS, sharedData({
			["sharedDescription"] = "Requires 300 Classic Alchemy.",
			["qgs"] = {
				4160,	-- Ainethil
				3347,	-- Yelmak
				3009,	-- Bena Winterhoof
				5177,	-- Tally Berryfizz
				5499,	-- Lilyssia Nightbreeze
				4611,	-- Doctor Herbert Halsey
			},
			["coords"] = {
				{ 54.0, 38.6, DARNASSUS },	-- Ainethil
				{ 55.6, 45.8, ORGRIMMAR },	-- Yelmak
				{ 46.8, 33.6, THUNDER_BLUFF },	-- Bena Winterhoof
				{ 66.6, 55.0, IRONFORGE },	-- Tally Berryfizz
				{ 55.6, 85.8, STORMWIND_CITY },	-- Lilyssia Nightbreeze
				{ 47.6, 72.8, UNDERCITY },	-- Doctor Herbert Halsey
			},
			["timeline"] = { ADDED_4_3_0 },
			["repeatable"] = true,
		}, {
			q(29481, {	-- Elixir Master
				["groups"] = {
					r(28677, {	-- Elixir Master
						-- #if NOT ANYCLASSIC
						["collectible"] = false,
						-- #else
						["requireSkill"] = 28677,	-- Elixir Master
						-- #endif
					}),
				},
			}),
			q(29067, {	-- Potion Master
				["groups"] = {
					r(28675, {	-- Potion Master
						-- #if NOT ANYCLASSIC
						["collectible"] = false,
						-- #else
						["requireSkill"] = 28675,	-- Potion Master
						-- #endif
					}),
				},
			}),
			q(29482, {	-- Transmutation Master
				["groups"] = {
					r(28672, {	-- Transmutation Master
						-- #if NOT ANYCLASSIC
						["collectible"] = false,
						-- #else
						["requireSkill"] = 28672,	-- Transmutation Master
						-- #endif
					}),
				},
			}),
		})),
		-- #if SEASON_OF_DISCOVERY
		applyclassicphase(SOD_PHASE_EIGHT, n(QUESTS, bubbleDown({ ["timeline"] = { ADDED_1_15_7 }}, {
			q(90560, {	-- Familiar Foulness
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(241651),	-- Recipe: Major Discolored Healing Potion (RECIPE!)
				},
			}),
			q(90567, {	-- Unfamiliar Foulness
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(241651),	-- Recipe: Major Discolored Healing Potion (RECIPE!)
				},
			}),
		}))),
		-- #endif
	}),
	expansion(EXPANSION.TBC, bubbleDownSelf({ ["timeline"] = { ADDED_2_0_5 } }, {
		q(10906, {	-- Master of Elixirs (1/2)
			["altQuests"] = {
				10905,	-- Master of Potions (1/2)
				10907,	-- Master of Transmutation (1/2)
			},
			["qgs"] = {
				16588,	-- Apothecary Antonivich <Master Alchemy Trainer>
				18802,	-- Alchemist Gribble <Alchemy Trainer>
			},
			["coords"] = {
				{ 52.2, 36.4, HELLFIRE_PENINSULA },	-- Apothecary Antonivich <Master Alchemy Trainer>
				{ 53.8, 65.8, HELLFIRE_PENINSULA },	-- Alchemist Gribble <Alchemy Trainer>
			},
			["timeline"] = { ADDED_2_0_5, REMOVED_4_3_0 },
			["isBreadcrumb"] = true,
			["lvl"] = 68,
		}),
		q(10902, {	-- Master of Elixirs (2/2)
			["description"] = "Upon finishing this quest, you will become a Elixir Master and be locked out of becoming a Transmutation or Potion Master.",
			["sourceQuest"] = 10906,	-- Master of Elixirs (1/2)
			["altQuests"] = {
				10897,	-- Master of Potions (2/2)
				10899,	-- Master of Transmutation (2/2)
			},
			["qg"] = 19052,	-- Lorokeem <Master Alchemy Trainer>
			["coord"] = { 45.8, 20.4, SHATTRATH_CITY },
			["timeline"] = { ADDED_2_0_5, REMOVED_4_3_0 },
			["maps"] = { CAVERNS_OF_TIME_BLACK_MORASS },
			["cost"] = {
				{ "i", 31753, 10 },	-- Essence of Infinity
				{ "i", 22834, 5 },	-- Elixir of Major Defense
				{ "i", 28104, 5 },	-- Elixir of Mastery
				{ "i", 22831, 5 },	-- Elixir of Major Agility
			},
			["lvl"] = 68,
			["groups"] = {
				r(28677, {	-- Elixir Master
					-- #if NOT ANYCLASSIC
					["collectible"] = false,
					-- #else
					["requireSkill"] = 28677,	-- Elixir Master
					-- #endif
				}),
			},
		}),
		q(10905, {	-- Master of Potions (1/2)
			["altQuests"] = {
				10906,	-- Master of Elixirs (1/2)
				10907,	-- Master of Transmutation (1/2)
			},
			["qgs"] = {
				16588,	-- Apothecary Antonivich <Master Alchemy Trainer>
				18802,	-- Alchemist Gribble <Alchemy Trainer>
			},
			["coords"] = {
				{ 52.2, 36.4, HELLFIRE_PENINSULA },	-- Apothecary Antonivich <Master Alchemy Trainer>
				{ 53.8, 65.8, HELLFIRE_PENINSULA },	-- Alchemist Gribble <Alchemy Trainer>
			},
			["timeline"] = { ADDED_2_0_5, REMOVED_4_3_0 },
			["isBreadcrumb"] = true,
			["lvl"] = 68,
		}),
		q(10897, {	-- Master of Potions (2/2)
			["description"] = "Upon finishing this quest, you will become a Potion Master and be locked out of becoming a Transmutation or Elixir Master.",
			["sourceQuest"] = 10905,	-- Master of Potions (1/2)
			["altQuests"] = {
				10902,	-- Master of Elixirs (2/2)
				10899,	-- Master of Transmutation (2/2)
			},
			["qg"] = 17909,	-- Lauranna Thar'well <Expedition Cataloguer>
			["coord"] = { 44.1, 36.6, ZANGARMARSH },
			["timeline"] = { ADDED_2_0_5, REMOVED_4_3_0 },
			["maps"] = { TEMPEST_KEEP_BOTANICA },
			["cost"] = {
				{ "i", 22829, 5 },	-- Super Healing Potion
				{ "i", 22832, 5 },	-- Super Mana Potion
				{ "i", 22836, 5 },	-- Major Dreamless Sleep Potion
			},
			["lvl"] = 68,
			["groups"] = {
				objective(1, {	-- 0/1 Botanist's Field Guide
					["provider"] = { "i", 31744 },	-- Botanist's Field Guide
					["cr"] = 17975,	-- High Botanist Freywinn
				}),
				r(28675, {	-- Potion Master
					-- #if NOT ANYCLASSIC
					["collectible"] = false,
					-- #else
					["requireSkill"] = 28675,	-- Potion Master
					-- #endif
				}),
			},
		}),
		q(10907, {	-- Master of Transmutation (1/2)
			["altQuests"] = {
				10906,	-- Master of Elixirs (1/2)
				10905,	-- Master of Potions (1/2)
			},
			["qgs"] = {
				16588,	-- Apothecary Antonivich <Master Alchemy Trainer>
				18802,	-- Alchemist Gribble <Alchemy Trainer>
			},
			["coords"] = {
				{ 52.2, 36.4, HELLFIRE_PENINSULA },	-- Apothecary Antonivich <Master Alchemy Trainer>
				{ 53.8, 65.8, HELLFIRE_PENINSULA },	-- Alchemist Gribble <Alchemy Trainer>
			},
			["timeline"] = { ADDED_2_0_5, REMOVED_4_3_0 },
			["requireSkill"] = ALCHEMY,
			["isBreadcrumb"] = true,
			["lvl"] = 68,
		}),
		q(10899, {	-- Master of Transmutation (2/2)
			["description"] = "Upon finishing this quest, you will become a Transmutation Master and be locked out of becoming a Potion or Elixir Master.",
			["sourceQuest"] = 10907,	-- Master of Transmutation (1/2)
			["altQuests"] = {
				10902,	-- Master of Elixirs (2/2)
				10897,	-- Master of Potions (2/2)
			},
			["qg"] = 22427,	-- Zarevhi
			["coord"] = { 44.1, 36.6, NETHERSTORM },
			["timeline"] = { ADDED_2_0_5, REMOVED_4_3_0 },
			["cost"] = {
				{ "i", 23571, 4 },	-- Primal Might
			},
			["lvl"] = 68,
			["groups"] = {
				r(28672, {	-- Transmutation Master
					-- #if NOT ANYCLASSIC
					["collectible"] = false,
					-- #else
					["requireSkill"] = 28672,	-- Transmutation Master
					-- #endif
				}),
			},
		}),
	})),
	expansion(EXPANSION.WRATH, bubbleDownSelf({ ["timeline"] = { ADDED_3_2_0 } }, {
		applyclassicphase(WRATH_PHASE_THREE, q(14151, {	-- Cardinal Ruby
			["qg"] = 28703,	-- Linzy Blackbolt <Alchemy Trainer>
			["coord"] = { 42.4, 32.0, NORTHREND_DALARAN },
			["repeatable"] = true,
			["groups"] = {
				r(66659),	-- Transmute: Cardinal Ruby (RECIPE!)
			},
		})),
	})),
	expansion(EXPANSION.MOP, bubbleDownSelf({ ["timeline"] = { ADDED_5_0_4, REMOVED_5_2_0 } }, {
		q(30597, {	-- Strange Spherical Stone
			["provider"] = { "i", 80240 },	-- Strange Spherical Stone
			["maps"] = { PANDARIA },
			["cost"] = {{ "i", 72238, 3 }},	-- 3x Golden Lotus
			["groups"] = {
				i(80240),	-- Strange Spherical Stone (QI!)
				i(75274),	-- Zen Alchemist Stone
			},
		}),
	})),
	expansion(EXPANSION.LEGION, bubbleDownSelf({ ["timeline"] = { ADDED_7_0_3_LAUNCH } }, {
		q(39325, {	-- Get Your Mix On
			["provider"] = { "n", 92458 },	-- Deucus Valdera
			["coord"] = { 41.6, 32.8, LEGION_DALARAN },
			["groups"] = {
				r(195095, {	-- Blacksmithing (Legion Master)
					["timeline"] = { ADDED_7_0_3_LAUNCH, REMOVED_8_0_1 },
					["collectible"] = false,
				}),
				applyclassicphase(BFA_PHASE_ONE, r(264250, {["timeline"] = {ADDED_8_0_1}})),	-- Legion Alchemy
			},
		}),
		q(39326, {	-- Missing Shipments
			["sourceQuests"] = { 39325 },	-- Get Your Mix On
			["provider"] = { "n", 92458 },	-- Deucus Valdera
			["coord"] = { 41.6, 32.8, LEGION_DALARAN },
			["groups"] = {
				i(128356),	-- Barrel of Fish Oil (QI!)
				i(128357),	-- Basket of Dried Herbs (QI!)
				i(128355),	-- Crate of Khadgar's Whiskers (QI!)
			},
		}),
		q(39566, {	-- The Search for Knowledge
			["sourceQuests"] = { 39326 },	-- Missing Shipments
			["provider"] = { "n", 92458 },	-- Deucus Valdera
			["coord"] = { 41.6, 32.8, LEGION_DALARAN },
			["isBreadcrumb"] = true,
		}),
		q(39390, {	-- A Mysterious Text
			["sourceQuests"] = { 39566 },	-- The Search for Knowledge
			["provider"] = { "o", 243392 },	-- Alchemy Book
			["coord"] = { 44.9, 52.1, AZSUNA },
		}),
		q(39327, {	-- There's a Scribe for That
			["sourceQuests"] = { 39390 },	-- A Mysterious Text
			["provider"] = { "n", 92458 },	-- Deucus Valdera
			["coord"] = { 41.6, 32.8, LEGION_DALARAN },
		}),
		q(39328, {	-- Ancient Knowledge
			["sourceQuests"] = { 39327 },	-- There's a Scribe for That
			["provider"] = { "n", 92458 },	-- Deucus Valdera
			["coord"] = { 41.6, 32.8, LEGION_DALARAN },
		}),
		q(39329, {	-- A Dormant Burner
			["sourceQuests"] = { 39328 },	-- Ancient Knowledge
			["provider"] = { "n", 92458 },	-- Deucus Valdera
			["coord"] = { 41.6, 32.8, LEGION_DALARAN },
		}),
		q(39330, {	-- Ley Hunting
			["sourceQuests"] = { 39329 },	-- A Dormant Burner
			["provider"] = { "n", 92458 },	-- Deucus Valdera
			["coord"] = { 41.6, 32.8, LEGION_DALARAN },
		}),
		q(39331, {	-- Eye of Azshara: Put a Cork in It
			["sourceQuests"] = { 39330 },	-- Ley Hunting
			["provider"] = { "n", 92458 },	-- Deucus Valdera
			["coord"] = { 41.6, 32.8, LEGION_DALARAN },
			["maps"] = { 713 },	-- Eye of Azshara
			["groups"] = {
				i(127873),	-- Advanced Corks (QI!)
			},
		}),
		q(39332, {	-- Furbolg Firewater
			["sourceQuests"] = { 39331 },	-- Eye of Azshara: Put a Cork in it
			["provider"] = { "n", 92458 },	-- Deucus Valdera
			["coord"] = { 41.6, 32.8, LEGION_DALARAN },
		}),
		q(39430, {	-- Flasking for a Favor
			["sourceQuests"] = { 39332 },	-- Furbolg Firewater
			["provider"] = { "n", 92458 },	-- Deucus Valdera
			["coord"] = { 41.6, 32.8, LEGION_DALARAN },
			["groups"] = {
				i(136675),	-- Barm's Mortar and Pestle (QI!)
				i(128515),	-- Cracked Dual-Chambered Mixing Flask (QI!)
				i(136674),	-- Ripe Pumpkin Juice (QI!)
				i(136673),	-- Rivermane Remedy (QI!)
			},
		}),
		q(39334, {	-- Thanks for Flasking
			["sourceQuests"] = { 39430 },	-- Flasking for a Favor
			["qgs"] = {
				92242,	-- Barm Stonebreaker
				93974,	-- Leyweaver Erenyi
			},
			["coords"] = {
				{ 55.2, 84.2, HIGHMOUNTAIN },
				{ 70.4, 46.6, VALSHARAH },
			},
		}),
		q(39335, {	-- Neltharion's Lair: Potent Powder
			["sourceQuests"] = { 39430 },	-- Flasking for a Favor
			["provider"] = { "n", 92458 },	-- Deucus Valdera
			["coord"] = { 41.6, 32.8, LEGION_DALARAN },
			["maps"] = { 731 },	-- Neltharion's Lair
		}),
		q(39336, {	-- We Need More Powder!
			["sourceQuests"] = { 39335 },	-- Neltharion's Lair: Potent Powder
			["provider"] = { "n", 92458 },	-- Deucus Valdera
			["coord"] = { 41.6, 32.8, LEGION_DALARAN },
		}),
		q(39337, {	-- Forlorn Filter
			["sourceQuests"] = { 39336 },	-- We Need More Powder!
			["provider"] = { "n", 92458 },	-- Deucus Valdera
			["coord"] = { 41.6, 32.8, LEGION_DALARAN },
		}),
		q(39431, {	-- Mending the Filter
			["sourceQuests"] = { 39337 },	-- Forlorn Filter
			["provider"] = { "o", 249211 },	-- Torn Shaldorei Silk
			["coord"] = { 54.2, 54.7, VALSHARAH },
		}),
		q(44112, {	-- Trading for Dreams
			["sourceQuests"] = { 39431 },	-- Mending the Filter
			["provider"] = { "n", 93974 },	-- Leyweaver Erenyi
			["coord"] = { 70.5, 46.4, VALSHARAH },
		}),
		q(39338, {	-- Return the Filter
			["sourceQuests"] = { 44112 },	-- Trading for Dreams
			["provider"] = { "n", 93974 },	-- Leyweaver Erenyi
			["coord"] = { 70.5, 46.4, VALSHARAH },
		}),
		q(39339, {	-- A Fragile Crucible
			["sourceQuests"] = { 39338 },	-- Return the Filter
			["provider"] = { "n", 92458 },	-- Deucus Valdera
			["coord"] = { 41.6, 32.8, LEGION_DALARAN },
		}),
		q(39340, {	-- Lining the Crucible
			["sourceQuests"] = { 39338 },	-- Return the Filter
			["provider"] = { "n", 92458 },	-- Deucus Valdera
			["coord"] = { 41.6, 32.8, LEGION_DALARAN },
			["cost"] = {
				{ "i", 124124, 1 },	-- 1xBlood of Sargeras
				{ "i", 124116, 1 },	-- 1xFelhide
				{ "i", 124106, 2 },	-- 2xFelwort
				{ "i", 128304, 100 },	-- 100xYseralline Seed
			},
		}),
		q(39341, {	-- Vault of the Wardens: Demon's Bile
			["description"] = "Need to bring a Skaggldrynk and drink infront of the boss door, located west section after Inquisitor Tormentorum.",
			["sourceQuests"] = {
				39339,	-- A Fragile Crucible
				39340,	-- Lining the Crucible
			},
			["provider"] = { "n", 92458 },	-- Deucus Valdera
			["coord"] = { 41.6, 32.8, LEGION_DALARAN },
			["maps"] = { 710, 711, 712, },	-- Vault of the Wardens
			["cost"] = {{ "i", 127840, 1 }},	-- 1xSkaggldrynk
		}),
		q(39343, {	-- Vault of the Wardens: Bendy Glass Tubes
			["sourceQuests"] = {
				39339,	-- A Fragile Crucible
				39340,	-- Lining the Crucible
			},
			["provider"] = { "i", 127877 },	-- Bendy Glass Tubes
			["coord"] = { 40.0, 50.0, 678 },	-- Vault of the Wardens
			["maps"] = { 710, 711, 712, },	-- Vault of the Wardens
		}),
		q(39344, {	-- Going Underground
			["sourceQuests"] = { 39343 },	-- Vault of the Wardens: Bendy Glass Tubes
			["provider"] = { "n", 92458 },	-- Deucus Valdera
			["coord"] = { 41.6, 32.8, LEGION_DALARAN },
		}),
		q(39342, {	-- The Price of the Black Market
			["sourceQuests"] = { 39344 },	-- Going Underground
			["provider"] = { "n", 101492 },	-- Ms. Xiulan
			["coord"] = { 70.8, 19.8, LEGION_THE_UNDERBELLY },
			["cost"] = {
				{ "i", 124124, 1 },	-- 1xBlood of Sargeras
				{ "i", 128833, 5 },	-- 5xKaldorei Ginger Wine
				{ "i", 128764, 5 },	-- 5xMoist Azsunian Feta
			},
		}),
		q(39333, {	-- An Imprecise Burette
			["sourceQuests"] = { 39342 },	-- The Price of the Black Market
			["provider"] = { "n", 101492 },	-- Ms. Xiulan
			["coord"] = { 70.8, 19.8, LEGION_THE_UNDERBELLY },
		}),
		q(39645, {	-- Calibration Experts [A]
			["sourceQuests"] = { 39333 },	-- An Imprecise Burette
			["provider"] = { "n", 92458 },	-- Deucus Valdera
			["coord"] = { 41.6, 32.8, LEGION_DALARAN },
			["races"] = ALLIANCE_ONLY,
		}),
		q(39345, {	-- Calibration Experts [H]
			["sourceQuests"] = { 39333 },	-- An Imprecise Burette
			["provider"] = { "n", 92458 },	-- Deucus Valdera
			["coord"] = { 41.6, 32.8, LEGION_DALARAN },
			["races"] = HORDE_ONLY,
		}),
		q(39346, {	-- Testing the Calibration
			["sourceQuests"] = {
				39645,	-- Calibration Experts (A)
				39345,	-- Calibration Experts (H)
			},
			["provider"] = { "n", 92458 },	-- Deucus Valdera
			["coord"] = { 41.6, 32.8, LEGION_DALARAN },
			["cost"] = {
				{ "i", 127846, 10 },	-- 10xLeytorrent Potion
				{ "i", 127843, 10 },	-- 10xPotion of Deadly Grace
				{ "i", 127844, 10 },	-- 10xPotion of the Old War
				{ "i", 127845, 10 },	-- 10xUnbending Potion
			},
		}),
		q(39347, {	-- Channeling Our Efforts
			["sourceQuests"] = { 39346 },	-- Testing the Calibration
			["provider"] = { "n", 92458 },	-- Deucus Valdera
			["coord"] = { 41.6, 32.8, LEGION_DALARAN },
		}),
		q(39349, {	-- Black Rook Hold: Heavy, But Helpful
			["description"] = "The respective Rank 2 recipe will drop from the dungeon, don't forget to loot it.",
			["sourceQuests"] = { 39347 },	-- Channeling Our Efforts
			["provider"] = { "n", 92183 },	-- Alard Schmied
			["coord"] = { 45.0, 29.6, LEGION_DALARAN},
			["maps"] = { 751, 752, 753, 754, 755, 756 },	-- The Black Rook Hold
			["cost"] = {{ "i", 127849, 1 }},	-- 1x Flask of the Countless Armies
		}),
		q(39348, {	-- Halls of Valor: The Prime Ingredient
			["description"] = "The respective Rank 2 recipe will drop from the dungeon, don't forget to loot it.",
			["sourceQuests"] = { 39347 },	-- Channeling Our Efforts
			["provider"] = { "n", 92183 },	-- Alard Schmied
			["coord"] = { 45.0, 29.6, LEGION_DALARAN},
			["maps"] = { 703, 704, 705 },	-- Halls of Valor
			["cost"] = {{ "i", 127850, 1 }},	-- 1x Flask of Ten Thousand Scars
		}),
		q(39350, {	-- Maw of Souls: A Hope in Helheim
			["description"] = "The respective Rank 2 recipe will drop from the dungeon, don't forget to loot it.",
			["sourceQuests"] = { 39347 },	-- Channeling Our Efforts
			["provider"] = { "n", 92183 },	-- Alard Schmied
			["coord"] = { 45.0, 29.6, LEGION_DALARAN},
			["maps"] = { 706, 707, 708 },	-- Maw of Souls
			["cost"] = {{ "i", 127847, 1 }},	-- 1x Flask of the Whispered Pact
			["groups"] = {
				o(249462, {	-- Crate of Dragur Dust
					i(136819),	-- Dragur Dust (QI!)
				}),
			},
		}),
		q(39351, {	-- The Emerald Nightmare: Rage Fire
			["sourceQuests"] = {
				39348,	-- Halls of Valor: The Prime Ingredient
				39349,	-- Black Rook Hold: Heavy, But Helpful
				39350,	-- Maw of Souls: A Hope in Helheim
			},
			["provider"] = { "n", 92183 },	-- Alard Schmied
			["coord"] = { 45.0, 29.6, LEGION_DALARAN},
			["maps"] = { 777, 778, 779, 780, 781, 782, 783, 784, 785, 786, 787, 788, 789, },	-- The Emerald Nightmare
			["groups"] = { i(136820) },	-- Nythendra's Heart (QI!)
		}),
		q(42081, {	-- In With the New
			["sourceQuests"] = { 39351 },	-- The Emerald Nightmare: Rage Fire
			["provider"] = { "n", 92183 },	-- Alard Schmied
			["coord"] = { 45.0, 29.6, LEGION_DALARAN},
		}),
		------ 7.3.0 ------
		q(48016, bubbleDownSelf({ ["timeline"] = { ADDED_7_3_0 } }, {	-- Ascending Alchemy
			["provider"] = { "n", 125346 },	-- Alchemist Funen
			["coord"] = { 56.2, 66.8, KROKUUN },
			["cost"] = {
				{ "i", 151565, 75 },	-- 75x Astral Glory
				{ "i", 151568, 5 },	-- 5x Primal Sargerite
				{ "i", 127842, 1 },	-- 1x Infernal Alchemist Stone
			},
			["groups"] = {
				i(164380),	-- Binding Stone (QI!)
				i(164379),	-- Bound Infernal Alchemist Stone (QI!)
				i(151706),	-- Recipe: Astral Alchemist Stone [Rank 1] (RECIPE!)
			},
		})),
		q(48002, bubbleDownSelf({ ["timeline"] = { ADDED_7_3_0 } }, {	-- Limited Supplies
			["sourceQuest"] = 46816,	-- Rendezvous
			["provider"] = { "n", 125346 },	-- Alchemist Funen
			["coord"] = { 56.2, 66.8, KROKUUN },
			["groups"] = {
				i(151657),	-- Recipe: Lightblood Elixir [Rank 1] (RECIPE!)
				i(151845),	-- Used Vial (QI!)
			},
		})),
		q(48013, bubbleDownSelf({ ["timeline"] = { ADDED_7_3_0 } }, {	-- Tracking the Trackers
			["sourceQuest"] = 46816,	-- Rendezvous
			["provider"] = { "n", 125346 },	-- Alchemist Funen
			["coord"] = { 56.2, 66.8, KROKUUN },
			["groups"] = {
				i(151703),	-- Recipe: Tears of the Naaru [Rank 1] (RECIPE!)
			},
		})),
	})),
	expansion(EXPANSION.BFA, bubbleDownSelf({ ["timeline"] = { ADDED_8_0_1_LAUNCH } }, {
		n(ACHIEVEMENTS, bubbleDownSelf({ ["timeline"] = { ADDED_10_1_7 } }, {
			ach(18770, {	-- Silas' Sphere of Transmutation
				["provider"] = { "i", 156631 },	-- Silas' Sphere of Transmutation
			}),
		})),
		n(QUESTS, {
			q(54463, {	-- Alchemical Equations [A]
				["provider"] = { "n", 132228 },	-- Elric Whalgrene
				["coord"] = { 74.2, 6.60, BORALUS },
				["timeline"] = { ADDED_8_1_0, REMOVED_9_0_1 },	-- Might no be correct removed patch
				["races"] = ALLIANCE_ONLY,
			}),
			q(54464, {	-- Alchemical Equations [H]
				["provider"] = { "n", 122703 },	-- Clever Kumali
				["coord"] = { 42.2, 38.0, DAZARALOR },
				["timeline"] = { ADDED_8_1_0, REMOVED_9_0_1 },	-- Might no be correct removed patch
				["races"] = HORDE_ONLY,
			}),
			------ Tools of Trade Questline ------
			q(50121, bubbleDownSelf({ ["timeline"] = { ADDED_8_1_5 } }, {	-- Casting the First Stone [A]
				["description"] = "This quest chain requires 150 in Kul Tiran Alchemy.",
				["provider"] = { "n", 132228 },	-- Elric Whalgrene
				["coord"] = { 74.2, 6.5, BORALUS },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					r(288182, {["u"]=TRAINING}),	-- Potion of Durability
					r(288176, {["u"]=TRAINING}),	-- Potion of Shifting States (QI!)
					i(166371),	-- Dried Star Moss Leaves (QI!)
					i(156653),	-- Potion of Durability (QI!)
					i(156654),	-- Potion of Shifting States (QI!)
					i(166372),	-- Sand Shifter Scales (QI!)
					i(166373),	-- Storm Silver Shards (QI!)
					i(166374),	-- Test Vial (QI!)
				},
			})),
			q(50112, bubbleDownSelf({ ["timeline"] = { ADDED_8_1_5 } }, {	-- Casting the First Stone [H]
				["description"] = "This quest chain requires 150 in Zandalari Alchemy.",
				["provider"] = { "n", 122703 },	-- Clever Kumali
				["coord"] = { 42.2, 38.0, DAZARALOR },
				["races"] = HORDE_ONLY,
				["groups"] = {
					r(288182, {["u"]=TRAINING}),	-- Potion of Durability
					r(288176, {["u"]=TRAINING}),	-- Potion of Shifting States (QI!)
					i(166371),	-- Dried Star Moss Leaves (QI!)
					i(156653),	-- Potion of Durability (QI!)
					i(156654),	-- Potion of Shifting States (QI!)
					i(166372),	-- Sand Shifter Scales (QI!)
					i(166373),	-- Storm Silver Shards (QI!)
					i(166374),	-- Test Vial (QI!)
				},
			})),
			q(50122, {	-- Ocular Extracts [A]
				["sourceQuests"] = { 50121 },	-- Casting the First Stone [A]
				["provider"] = { "n", 132228 },	-- Elric Whalgrene
				["coord"] = { 74.2, 6.5, BORALUS },
				["timeline"] = { ADDED_8_1_5 },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(156657),	-- Highlands Mauler Eye (QI!)
				},
			}),
			q(50113, {	-- Ocular Extracts [H]
				["sourceQuests"] = { 50112 },	-- Casting the First Stone [H]
				["provider"] = { "n", 122703 },	-- Clever Kumali
				["coord"] = { 42.2, 38.0, DAZARALOR },
				["timeline"] = { ADDED_8_1_5 },
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(156806),	-- Razorwing Eye (QI!)
				},
			}),
			q(50124, {	-- Changing the Scenery [A]
				["sourceQuests"] = { 50121 },	-- Casting the First Stone [A]
				["provider"] = { "n", 132228 },	-- Elric Whalgrene
				["coord"] = { 74.2, 6.5, BORALUS },
				["timeline"] = { ADDED_8_1_5 },
				["races"] = ALLIANCE_ONLY,
			}),
			q(50115, {	-- Changing the Scenery [H]
				["sourceQuests"] = { 50112 },	-- Casting the First Stone [H]
				["provider"] = { "n", 122703 },	-- Clever Kumali
				["coord"] = { 42.2, 38.0, DAZARALOR },
				["timeline"] = { ADDED_8_1_5 },
				["races"] = HORDE_ONLY,
			}),
			q(50125, {	-- A Possible Solution [A]
				["sourceQuests"] = {
					50122,	-- Ocular Extracts [A]
					50124,	-- Changing the Scenery [A]
				},
				["provider"] = { "n", 132228 },	-- Elric Whalgrene
				["coord"] = { 74.2, 6.5, BORALUS },
				["timeline"] = { ADDED_8_1_5 },
				["races"] = ALLIANCE_ONLY,
			}),
			q(50116, {	-- A Possible Solution [H]
				["sourceQuests"] = {
					50115,	-- Changing the Scenery [H]
					50113,	-- Ocular Extracts [H]
				},
				["provider"] = { "n", 122703 },	-- Clever Kumali
				["coord"] = { 42.2, 38.0, DAZARALOR },
				["timeline"] = { ADDED_8_1_5 },
				["races"] = HORDE_ONLY,
			}),
			q(50126, {	-- A Deathly Draught [A]
				["sourceQuests"] = { 50125 },	-- A Possible Solution [A]
				["provider"] = { "n", 132347 },	-- Quintin Whalgrene
				["coord"] = { 30.6, 49.6, DRUSTVAR },
				["timeline"] = { ADDED_8_1_5 },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(156658),	-- Deathshroom (QI!)
				},
			}),
			q(50117, {	-- A Deathly Draught [H]
				["sourceQuests"] = { 50116 },	-- A Possible Solution [H]
				["provider"] = { "n", 132680 },	-- Zukashi
				["coord"] = { 65.2, 36.9, NAZMIR },
				["timeline"] = { ADDED_8_1_5 },
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(156658),	-- Deathshroom (QI!)
				},
			}),
			q(50127, {	-- A Stone's Throw [A]
				["sourceQuests"] = { 50125 },	-- A Possible Solution [A]
				["provider"] = { "n", 132347 },	-- Quintin Whalgrene
				["coord"] = { 30.6, 49.6, DRUSTVAR },
				["timeline"] = { ADDED_8_1_5 },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(156665),	-- Bag of Transmutation Stones (QI!)
					i(156687),	-- Vial of Altered Blood (QI!)
				},
			}),
			q(50118, {	-- A Stone's Throw [H]
				["sourceQuests"] = { 50116 },	-- A Possible Solution [H]
				["provider"] = { "n", 132680 },	-- Zukashi
				["coord"] = { 65.2, 36.9, NAZMIR },
				["timeline"] = { ADDED_8_1_5 },
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(156831),	-- Bag of Transmutation Stones (QI!)
					i(156664),	-- Vial of Altered Blood (QI!)
				},
			}),
			q(50128, {	-- Chemically Compounded [A]
				["sourceQuests"] = {
					50126,	-- A Stone's Throw [A]
					50127,	-- A Deathly Draught [A]
				},
				["provider"] = { "n", 132347 },	-- Quintin Whalgrene
				["coord"] = { 30.6, 49.6, DRUSTVAR },
				["timeline"] = { ADDED_8_1_5 },
				["races"] = ALLIANCE_ONLY,
			}),
			q(50119, {	-- Chemically Compounded [H]
				["sourceQuests"] = {
					50117,	-- A Deathly Draught [H]
					50118,	-- A Stone's Throw [H]
				},
				["provider"] = { "n", 132680 },	-- Zukashi
				["coord"] = { 65.2, 36.9, NAZMIR },
				["timeline"] = { ADDED_8_1_5 },
				["races"] = HORDE_ONLY,
			}),
			q(50129, bubbleDownSelf({ ["timeline"] = { ADDED_8_1_5 } }, {	-- A Recipe for Success [A]
				["sourceQuests"] = { 50128 },	-- Chemically Compounded [A]
				["provider"] = { "o", 280755 },	-- Quintin's Satchel
				["coord"] = { 62.9, 28.9, DRUSTVAR },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					r(260403),	-- Silus' Sphere of Transmutation (RECIPE!)
				},
			})),
			q(50120, bubbleDownSelf({ ["timeline"] = { ADDED_8_1_5 } }, {	-- A Recipe for Success [H]
				["sourceQuests"] = { 50119 },	-- Chemically Compounded [H]
				["provider"] = { "o", 280957 },	-- Zukashi's Satchel
				["coord"] = { 62.9, 28.9, NAZMIR },
				["races"] = HORDE_ONLY,
				["groups"] = {
					r(260403),	-- Silus' Sphere of Transmutation (RECIPE!)
				},
			})),
		}),
	})),
	expansion(EXPANSION.DF, bubbleDownSelf({ ["timeline"] = { ADDED_10_0_2_LAUNCH } }, {
		n(ACHIEVEMENTS, bubbleDownSelf({ ["timeline"] = { ADDED_10_1_7 } }, {
			ach(18805, {	-- Draconic Phial Cabinet
				crit(61271),	-- Phial of Tepid Versatility
				crit(61272),	-- Phial of Charged Isolation
				crit(61273),	-- Phial of the Eye in the Storm
				crit(61274),	-- Phial of Static Empowerment
				crit(61275),	-- Phial of Still Air
				crit(61276),	-- Phial of Glacial Fury
				crit(61277),	-- Phial of Icy Preservation
				crit(61278),	-- Phial of Elemental Chaos
				crit(61279),	-- Iced Phial of Corrupting Rage
				crit(61280),	-- Charged Phial of Alacrity
			}),
		})),
		n(QUESTS, {
			q(70355, {	-- Dragon Isles Alchemy
				["description"] = "This quest can only be picked up PRIOR to learning Dragon Isles Alchemy.",
				["provider"] = { "n", 191893 },	-- Zherrak
				["coord"] = { 60.3, 72.2, THE_WAKING_SHORES },
				["lockCriteria"] = { 1,
					"spellID", 366261,	-- Dragon Isles Alchemy
					"questID", 72245,	-- Dragon Isles Alchemy
				},
			}),
			q(72245, {	-- Dragon Isles Alchemy
				["description"] = "This quest can only be picked up PRIOR to learning Dragon Isles Alchemy.",
				["provider"] = { "n", 198392 },	-- An'timon
				["coord"] = { 76.2, 35.8, THE_WAKING_SHORES },
				["lockCriteria"] = { 1,
					"spellID", 366261,	-- Dragon Isles Alchemy
					"questID", 70355,	-- Dragon Isles Alchemy
				},
			}),
			q(67080, {	-- Artisan's Supply: Dragon's Alchemical Solution
				["provider"] = { "n", 191893 },	-- Zherrak
				["coord"] = { 60.3, 72.2, THE_WAKING_SHORES },
				["cost"] = {{ "i", 191570, 2 }},	-- 2x Dragon's Alchemical Solution
				["_drop"] = { "g" },
			}),
			q(70247, {	-- Hidden Profession Master Alchemy
				["name"] = "Hidden Profession Master: Alchemy",
				["provider"] = { "n", 194829 },	-- Grigori Vialtry
				["coord"] = { 60.9, 75.8, THE_WAKING_SHORES },
			}),
			q(70183, {	-- Specialized Secrets: Alchemy
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
				i(198608),	-- Alchemy Notes
			},
		},{
			------ Requires 25 Skill ------
			q(72427, {	-- Animated Infusion
				["description"] = "Requires 25 Skill.",
				["provider"] = { "n", 191002 },	-- Dhurrel
				["coord"] = { 36.6, 63.6, VALDRAKKEN },
				["groups"] = {
					i(201828),	-- Spiked Leaves (QI!)
				},
			}),
			q(66937, {	-- Decaying News
				["description"] = "Requires 25 Skill.",
				["provider"] = { "n", 191000 },	-- Dothenos
				["coord"] = { 36.6, 62.6, VALDRAKKEN },
				["groups"] = {
					i(194103),	-- Rotting Sample (QI!)
				},
			}),
			q(66940, {	-- Elixir Experiment
				["description"] = "Requires 25 Skill.",
				["provider"] = { "n", 191002 },	-- Dhurrel
				["coord"] = { 36.6, 63.6, VALDRAKKEN },
				["groups"] = {
					i(194427),	-- Gorloc Mucus (QI!)
				},
			}),
			q(66938, {	-- Mammoth Marrow
				["description"] = "Requires 25 Skill.",
				["provider"] = { "n", 191002 },	-- Dhurrel
				["coord"] = { 36.6, 63.6, VALDRAKKEN },
				["groups"] = {
					i(194424),	-- Tusk Marrow (QI!)
				},
			}),

			------ Requires 45 Skill ------
			q(70532, {	-- Aiding the Raiding
				["description"] = "Requires 45 Skill.",
				["provider"] = { "n", 185545 },	-- Conflago
				["coord"] = { 36.4, 71.4, VALDRAKKEN },
			}),
			q(70533, {	-- Decaying News
				["description"] = "Requires 45 Skill.",
				["provider"] = { "n", 185545 },	-- Conflago
				["coord"] = { 36.4, 71.4, VALDRAKKEN },
			}),
			q(70530, {	-- Examination Week
				["description"] = "Requires 45 Skill.",
				["provider"] = { "n", 185545 },	-- Conflago
				["coord"] = { 36.4, 71.4, VALDRAKKEN },
			}),
			q(70531, {	-- Mana Markets
				["description"] = "Requires 45 Skill.",
				["provider"] = { "n", 185545 },	-- Conflago
				["coord"] = { 36.4, 71.4, VALDRAKKEN },
			}),

			------ Requires ?? Skill - Patch 10.1.0. ------
			q(75363, {	-- Deepflayer Dust
				["provider"] = { "n", 203516 },	-- Kayann
				["coord"] = { 36.5, 62.5, VALDRAKKEN },
				["timeline"] = { ADDED_10_1_0 },
				["groups"] = {
					i(198608),	-- Alchemy Notes
					i(204796),	-- Deepflayer Dust (QI!)
				},
			}),
			q(75371, {	-- Fascinating Fungi
				["provider"] = { "n", 203516 },	-- Kayann
				["coord"] = { 36.5, 62.5, VALDRAKKEN },
				["timeline"] = { ADDED_10_1_0 },
				["groups"] = {
					i(204801),	-- Gelcap Spores (QI!)
				},
			}),
			-- Patch 10.2.0
			q(77933, {	-- Bubbling Discoveries
				["provider"] = { "n", 210162 },	-- Magnolia Oaken
				["coord"] = { 36.8, 63.1, VALDRAKKEN },
				["timeline"] = { ADDED_10_2_0 },
				["groups"] = {
					i(198608),	-- Alchemy Notes
				},
			}),
			q(77932, {	-- Warmth of Life
				["provider"] = { "n", 210162 },	-- Magnolia Oaken
				["coord"] = { 36.8, 63.1, VALDRAKKEN },
				["timeline"] = { ADDED_10_2_0 },
				["groups"] = {
					i(198608),	-- Alchemy Notes
					i(208938),	-- Metamorphic Soot (QI!)
				},
			}),
		})),
		filter(RECIPES, {
			["description"] = "These are learned by specialization.",
			["groups"] = sharedData({ ["cost"] = {{ "c", DF_ALCHEMY_KNOWLEDGE, 1 }} }, {
				r(370747),	-- Advanced Phial Experimentation
				r(370745),	-- Advanced Potion Experimentation
				r(370730),	-- Brood Salt
				r(370735),	-- Illustrious Insight
				r(370668),	-- Potion Cauldron of Power
				r(370715),	-- Transmute: Order to Elements
				r(370714),	-- Transmute: Decay to Elements
			}),
		}),
		n(TREASURES, {
			o(380611, {	-- Canteen of Suspicious Water
				["description"] = "Inside cave.",
				["coord"] = { 79.2, 83.8, OHNAHRAN_PLAINS },
				["questID"] = 70305,
				["groups"] = {
					i(198710),	-- Canteen of Suspicious Water
				},
			}),
			o(380605, {	-- Contraband Concoction
				["description"] = "Hidden in some bushes, hard to see.",
				["coord"] = { 59.5, 38.4, THALDRASZUS },
				["questID"] = 70301,
				["groups"] = {
					i(198697),	-- Contraband Concoction
				},
			}),
			o(380457, {	-- Experimental Decay Cauldron
				["coord"] = { 16.4, 38.5, THE_AZURE_SPAN },
				["questID"] = 70208,
				["groups"] = {
					i(198599),	-- Experimental Decay Sample
				},
			}),
			o(380559, {	-- Frostforged Potion
				["coord"] = { 55.0, 81.0, THE_WAKING_SHORES },
				["questID"] = 70274,
				["groups"] = {
					i(198663),	-- Frostforged Potion
				},
			}),
			o(410426,	-- Half-Filled Dreamless Sleep Potion
			bubbleDownSelf({ ["timeline"] = { ADDED_10_2_0 } }, {
				["coord"] = { 54.0, 32.6, EMERALD_DREAM },
				["questID"] = 78264,
				["groups"] = {
					i(210184),	-- Half-Filled Dreamless Sleep Potion
				},
			})),
			o(380586, {	-- Mysterious Cauldrons
				["description"] = "Grab and drop a Discarded Toy in each of these, then you can collect the treasure.",
				["coord"] = { 55.2, 30.5, THALDRASZUS },
				["questID"] = 70278,
				["groups"] = {
					i(201003, {["timeline"] = {ADDED_10_0_2_LAUNCH, REMOVED_10_0_5}}),	-- Furry Gloop
					i(203471, {["timeline"] = {ADDED_10_0_5}}),	-- Tasty Candy
				},
			}),
			o(401236,	-- Malnourished Specimen/Nutrient Diluted Protofluid
			bubbleDownSelf({ ["timeline"] = { ADDED_10_1_0 } }, {
				["coord"] = { 52.6, 18.3, ZARALEK_CAVERN },
				["questID"] = 75646,
				["groups"] = {
					i(205211),	-- Nutrient Diluted Protofluid
				},
			})),
			o(401238,	-- Marrow-Ripened Slime
			bubbleDownSelf({ ["timeline"] = { ADDED_10_1_0 } }, {
				["coord"] = { 62.1, 41.1, ZARALEK_CAVERN },
				["questID"] = 75649,
				["groups"] = {
					i(205212),	-- Marrow-Ripened Slime
				},
			})),
			o(410442,	-- Root of the Problem
			bubbleDownSelf({ ["timeline"] = { ADDED_10_2_0 } }, {
				["coord"] = { 36.2, 46.6, EMERALD_DREAM },
				["questID"] = 78275,
				["groups"] = {
					i(210190),	-- Blazeroot
				},
			})),
			o(380616, {	-- Small Basket of Firewater Powder
				["coord"] = { 67.0, 13.2, THE_AZURE_SPAN },
				["questID"] = 70309,
				["groups"] = {
					i(198712),	-- Firewater Powder Sample
				},
			}),
			o(401240,	-- Suspicious Mold
			bubbleDownSelf({ ["timeline"] = { ADDED_10_1_0 } }, {
				["coord"] = { 40.4, 59.2, ZARALEK_CAVERN },
				["questID"] = 75651,
				["groups"] = {
					i(205213),	-- Suspicious Mold
				},
			})),
			o(410434,	-- Splash Potion of Narcolepsy
			bubbleDownSelf({ ["timeline"] = { ADDED_10_2_0 } }, {
				["description"] = "In cavern.",
				["coord"] = { 51.6, 48.5, 2254 },
				["questID"] = 78269,
				["groups"] = {
					i(210185),	-- Splash Potion of Narcolepsy
				},
			})),
			o(380590, {	-- Well-Insulated Mug
				["coord"] = { 25.1, 73.3, THE_WAKING_SHORES },
				["questID"] = 70289,
				["groups"] = {
					i(198685),	-- Well-Insulated Mug
				},
			}),
		}),
		n(WEEKLY_PROFESSION_KNOWLEDGE, sharedData({
			["isWeekly"] = true,
			["groups"] = {
				currency(DF_ALCHEMY_KNOWLEDGE),
			},
		}, {
			i(198608),	-- Alchemy Notes
			q(74108, {	-- DF Inscription Order: Alchemy
				["name"] = "DF Inscription Order: Alchemy",
				["description"] = "Requires a crafting order from Inscription.",
				["provider"] = { "i", 194697 },	-- Draconic Treatise on Alchemy
			}),
			q(66373, {	-- DF Weekly Alchemy Knowledgepoint #1
				["name"] = "DF Alchemy Treasure #1",
				["provider"] = { "i", 193891 },		-- Experimental Substance
			}),
			q(66374, {	-- DF Weekly Alchemy Knowledgepoint #2
				["name"] = "DF Alchemy Treasure #2",
				["provider"] = { "i", 193897 },		-- Reawakened Catalyst
			}),
			q(70504, {	-- DF Weekly Alchemy Knowledgepoint #3
				["name"] = "DF Alchemy Drop #1: Decayed",
				["description"] = "Drops from any Decayed Mob.\nCoordinates link to the spot(s) we found best.",
				["provider"] = { "i", 198963 },		-- Decaying Phlegm
				["coord"] = { 18.6, 38.4, THE_AZURE_SPAN },
				["crs"] = { 186361 },	-- Rotting Treant
			}),
			q(70511, {	-- DF Weekly Alchemy Knowledgepoint #4
				["name"] = "DF Alchemy Drop #2: Elemental",
				["description"] = "Drops from any Elemental.\nCoordinates link to the spot(s) we found best.",
				["provider"] = { "i", 198964 },		-- Elementious Splinter
				["coord"] = { 80.2, 75.6, OHNAHRAN_PLAINS },
				["crs"] = { 191712 },	-- Hissing Springsoul
			}),
		})),
	})),
	expansion(EXPANSION.TWW, bubbleDownSelf({ ["timeline"] = { ADDED_11_0_2 } }, {
		n(ACHIEVEMENTS, {
			ach(19704),	-- Overflowing Algari Flasks (automated)
			ach(19716),	-- Plentiful Algari Potions (automated)
		}),
		n(QUESTS, {
			q(84133, {	-- Alchemy Services Requested
				["provider"] = { "n", 228177 },	-- Kala Clayhoof
				["coord"] = { 59.2, 55.2, DORNOGAL },
				["isWeekly"] = true,
				["groups"] = {
					i(228773),	-- Algari Alchemist's Notebook
				},
			}),
		}),
		filter(RECIPES, {
			["description"] = "These are learned by specialization.",
			["groups"] = sharedData({ ["cost"] = {{ "c", TWW_ALCHEMY_KNOWLEDGE, 1 }} }, {
				r(432962),	-- Algari Flask Cauldron
				r(432963),	-- Algari Potion Cauldron
				r(433087),	-- Formulated Courage
				r(449938),	-- Gleaming Chaos
				r(430624),	-- Gleaming Glory
				r(432204),	-- Harmonious Horticulture
				r(449573),	-- Mercurial Coalescence
				r(449574),	-- Ominous Coalescence
				r(430315),	-- Thaumaturgy
				r(449575),	-- Volatile Coalescence
			}),
		}),
		n(TREASURES, {
			o(456021, {	-- Chemist's Purified Water
				["coord"] = { 42.7, 55.1, HALLOWFALL },
				["questID"] = 83844,
				["groups"] = {
					i(226269),	-- Chemist's Purified Water
				},
			}),
			o(456018, {	-- Dark Apothecary's Vial
				["coord"] = { 42.9, 57.3, AZJ_KAHET },
				["questID"] = 83847,
				["groups"] = {
					i(226272),	-- Dark Apothecary's Vial
				},
			}),
			o(456025, {	-- Earthen Iron Powder
				["coord"] = { 32.5, 60.3, DORNOGAL },
				["questID"] = 83840,
				["groups"] = {
					i(226265),	-- Earthen Iron Powder
				},
			}),
			o(456022, {	-- Engraved Stirring Rod
				["coord"] = { 64.9, 61.8, THE_RINGING_DEEPS },
				["questID"] = 83843,
				["groups"] = {
					i(226268),	-- Engraved Stirring Rod
				},
			}),
			o(456024, {	-- Metal Dornogal Frame
				["coord"] = { 57.7, 61.8, ISLE_OF_DORN },
				["questID"] = 83841,
				["groups"] = {
					i(226266),	-- Metal Dornogal Frame
				},
			}),
			o(456019, {	-- Nerubian Mixing Salts
				["coord"] = { 45.4, 13.2, NERUBAR },
				["questID"] = 83846,
				["groups"] = {
					i(226271),	-- Nerubian Mixing Salts
				},
			}),
			o(456023, {	-- Reinforced Beaker
				["coord"] = { 42.2, 24.1, THE_RINGING_DEEPS },
				["questID"] = 83842,
				["groups"] = {
					i(226267),	-- Reinforced Beaker
				},
			}),
			o(456020, {	-- Sanctified Mortar and Pestle
				["coord"] = { 41.7, 55.8, HALLOWFALL },
				["questID"] = 83845,
				["groups"] = {
					i(226270),	-- Sanctified Mortar and Pestle
				},
			}),
		}),
		n(WEEKLY_PROFESSION_KNOWLEDGE, sharedData({
			["isWeekly"] = true,
			["groups"] = {
				currency(TWW_ALCHEMY_KNOWLEDGE),
			},
		}, {
			i(228773),	-- Algari Alchemist's Notebook
			q(83253, {	-- TWW Weekly Alchemy Knowledgepoint #1
				["name"] = "TWW Weekly Alchemy Treasure #1",
				["provider"] =  { "i", 225234 },	-- Alchemical Sediment
			}),
			q(83255, {	-- TWW Weekly Alchemy Knowledgepoint #2
				["name"] = "TWW Weekly Alchemy Treasure #2",
				["provider"] = { "i", 225235 },		-- Deepstone Crucible
			}),
		})),
	})),
	expansion(EXPANSION.MID, bubbleDownSelf({ ["timeline"] = { ADDED_12_0_X_LAUNCH } }, {
		n(ACHIEVEMENTS, {
			ach(42788, {	-- Alchemy at Midnight
				["timeline"] = { ADDED_12_0_X_LAUNCH },
				["groups"] = {
				},
			}),
		}),
		n(QUESTS, {
			-- No Quest on Beta
		}),
		filter(RECIPES, {
			["description"] = "These are learned by specialization.",
			["groups"] = sharedData({ ["cost"] = {{ "c", MID_ALCHEMY_KNOWLEDGE, 1 }} }, {
				r(1230891),	-- Box of Rocks
				r(1230870),	-- Haranir Phial of Finesse
				r(1230858),	-- Light's Preservation
				r(1230885),	-- Midnight Alchemist Stone
				r(1230874),	-- Cauldron of Sin'dorei Flasks
				r(1230857),	-- Voidlight Potion Cauldron
				r(1230875),	-- Flask of Thalassian Resistance
				r(1230867),	-- Void-Shrouded Tincture
				r(1230856),	-- Wondrous Synergist
			}),
		}),
		--[[
		n(TREASURES, {

		}),
		n(WEEKLY_PROFESSION_KNOWLEDGE, sharedData({
			["isWeekly"] = true,
			["groups"] = {
				currency(MID_ALCHEMY_KNOWLEDGE),
			},
		}, {
			i(228773),	-- Algari Alchemist's Notebook
			q(83253, {	-- TWW Weekly Alchemy Knowledgepoint #1
				["name"] = "TWW Weekly Alchemy Treasure #1",
				["provider"] =  { "i", 225234 },	-- Alchemical Sediment
			}),
			q(83255, {	-- TWW Weekly Alchemy Knowledgepoint #2
				["name"] = "TWW Weekly Alchemy Treasure #2",
				["provider"] = { "i", 225235} ,		-- Deepstone Crucible
			}),
		})),
		--]]
	})),
})));
