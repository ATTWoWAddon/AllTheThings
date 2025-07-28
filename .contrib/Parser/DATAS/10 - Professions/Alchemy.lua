-----------------------------------------------------
--       P R O F E S S I O N S   M O D U L E       --
-----------------------------------------------------
local DF_ALCHEMY_KNOWLEDGE = 2024;
local TWW_ALCHEMY_KNOWLEDGE = 2785;
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
			["qgs"] = {
				16588,	-- Apothecary Antonivich <Master Alchemy Trainer>
				18802,	-- Alchemist Gribble <Alchemy Trainer>
			},
			["altQuests"] = {
				10905,	-- Master of Potions (1/2)
				10907,	-- Master of Transmutation (1/2)
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
			["qg"] = 19052,	-- Lorokeem <Master Alchemy Trainer>
			["altQuests"] = {
				10897,	-- Master of Potions (2/2)
				10899,	-- Master of Transmutation (2/2)
			},
			["sourceQuest"] = 10906,	-- Master of Elixirs (1/2)
			["coord"] = { 45.8, 20.4, SHATTRATH_CITY },
			["description"] = "Upon finishing this quest, you will become a Elixir Master and be locked out of becoming a Transmutation or Potion Master.",
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
			["qgs"] = {
				16588,	-- Apothecary Antonivich <Master Alchemy Trainer>
				18802,	-- Alchemist Gribble <Alchemy Trainer>
			},
			["altQuests"] = {
				10906,	-- Master of Elixirs (1/2)
				10907,	-- Master of Transmutation (1/2)
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
			["qg"] = 17909,	-- Lauranna Thar'well <Expedition Cataloguer>
			["altQuests"] = {
				10902,	-- Master of Elixirs (2/2)
				10899,	-- Master of Transmutation (2/2)
			},
			["sourceQuest"] = 10905,	-- Master of Potions (1/2)
			["coord"] = { 44.1, 36.6, ZANGARMARSH },
			["description"] = "Upon finishing this quest, you will become a Potion Master and be locked out of becoming a Transmutation or Elixir Master.",
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
			["qgs"] = {
				16588,	-- Apothecary Antonivich <Master Alchemy Trainer>
				18802,	-- Alchemist Gribble <Alchemy Trainer>
			},
			["altQuests"] = {
				10906,	-- Master of Elixirs (1/2)
				10905,	-- Master of Potions (1/2)
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
			["qg"] = 22427,	-- Zarevhi
			["altQuests"] = {
				10902,	-- Master of Elixirs (2/2)
				10897,	-- Master of Potions (2/2)
			},
			["sourceQuest"] = 10907,	-- Master of Transmutation (1/2)
			["coord"] = { 44.1, 36.6, NETHERSTORM },
			["description"] = "Upon finishing this quest, you will become a Transmutation Master and be locked out of becoming a Potion or Elixir Master.",
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
			["provider"] = { "n", 92458 },	-- Deucus Valdera
			["sourceQuests"] = { 39325 },	-- Get Your Mix On
			["coord"] = { 41.6, 32.8, LEGION_DALARAN },
		}),
		q(39566, {	-- The Search for Knowledge
			["provider"] = { "n", 92458 },	-- Deucus Valdera
			["sourceQuests"] = { 39326 },	-- Missing Shipments
			["coord"] = { 41.6, 32.8, LEGION_DALARAN },
			["isBreadcrumb"] = true,
		}),
		q(39390, {	-- A Mysterious Text
			["provider"] = { "o", 243392 },	-- Alchemy Book
			["sourceQuests"] = { 39566 },	-- The Search for Knowledge
			["coord"] = { 44.9, 52.1, AZSUNA },
		}),
		q(39327, {	-- There's a Scribe for That
			["provider"] = { "n", 92458 },	-- Deucus Valdera
			["sourceQuests"] = { 39390 },	-- A Mysterious Text
			["coord"] = { 41.6, 32.8, LEGION_DALARAN },
		}),
		q(39328, {	-- Ancient Knowledge
			["provider"] = { "n", 92458 },	-- Deucus Valdera
			["sourceQuests"] = { 39327 },	-- There's a Scribe for That
			["coord"] = { 41.6, 32.8, LEGION_DALARAN },
		}),
		q(39329, {	-- A Dormant Burner
			["provider"] = { "n", 92458 },	-- Deucus Valdera
			["sourceQuests"] = { 39328 },	-- Ancient Knowledge
			["coord"] = { 41.6, 32.8, LEGION_DALARAN },
		}),
		q(39330, {	-- Ley Hunting
			["provider"] = { "n", 92458 },	-- Deucus Valdera
			["sourceQuests"] = { 39329 },	-- A Dormant Burner
			["coord"] = { 41.6, 32.8, LEGION_DALARAN },
		}),
		q(39331, {	-- Eye of Azshara: Put a Cork in It
			["provider"] = { "n", 92458 },	-- Deucus Valdera
			["sourceQuests"] = { 39330 },	-- Ley Hunting
			["coord"] = { 41.6, 32.8, LEGION_DALARAN },
			["maps"] = { 713 },	-- Eye of Azshara
		}),
		q(39332, {	-- Furbolg Firewater
			["provider"] = { "n", 92458 },	-- Deucus Valdera
			["sourceQuests"] = { 39331 },	-- Eye of Azshara: Put a Cork in it
			["coord"] = { 41.6, 32.8, LEGION_DALARAN },
		}),
		q(39430, {	-- Flasking for a Favor
			["provider"] = { "n", 92458 },	-- Deucus Valdera
			["sourceQuests"] = { 39332 },	-- Furbolg Firewater
			["coord"] = { 41.6, 32.8, LEGION_DALARAN },
		}),
		q(39334, {	-- Thanks for Flasking
			["qgs"] = {
				92242,	-- Barm Stonebreaker
				93974,	-- Leyweaver Erenyi
			},
			["sourceQuests"] = { 39430 },	-- Flasking for a Favor
			["coords"] = {
				{ 55.2, 84.2, HIGHMOUNTAIN },
				{ 70.4, 46.6, VALSHARAH },
			},
		}),
		q(39335, {	-- Neltharion's Lair: Potent Powder
			["provider"] = { "n", 92458 },	-- Deucus Valdera
			["sourceQuests"] = { 39430 },	-- Flasking for a Favor
			["coord"] = { 41.6, 32.8, LEGION_DALARAN },
			["maps"] = { 731 },	-- Neltharion's Lair
		}),
		q(39336, {	-- We Need More Powder!
			["provider"] = { "n", 92458 },	-- Deucus Valdera
			["sourceQuests"] = { 39335 },	-- Neltharion's Lair: Potent Powder
			["coord"] = { 41.6, 32.8, LEGION_DALARAN },
		}),
		q(39337, {	-- Forlorn Filter
			["provider"] = { "n", 92458 },	-- Deucus Valdera
			["sourceQuests"] = { 39336 },	-- We Need More Powder!
			["coord"] = { 41.6, 32.8, LEGION_DALARAN },
		}),
		q(39431, {	-- Mending the Filter
			["provider"] = { "o", 249211 },	-- Torn Shaldorei Silk
			["sourceQuests"] = { 39337 },	-- Forlorn Filter
			["coord"] = { 54.2, 54.7, VALSHARAH },
		}),
		q(44112, {	-- Trading for Dreams
			["provider"] = { "n", 93974 },	-- Leyweaver Erenyi
			["sourceQuests"] = { 39431 },	-- Mending the Filter
			["coord"] = { 70.5, 46.4, VALSHARAH },
		}),
		q(39338, {	-- Return the Filter
			["provider"] = { "n", 93974 },	-- Leyweaver Erenyi
			["sourceQuests"] = { 44112 },	-- Trading for Dreams
			["coord"] = { 70.5, 46.4, VALSHARAH },
		}),
		q(39339, {	-- A Fragile Crucible
			["provider"] = { "n", 92458 },	-- Deucus Valdera
			["sourceQuests"] = { 39338 },	-- Return the Filter
			["coord"] = { 41.6, 32.8, LEGION_DALARAN },
		}),
		q(39340, {	-- Lining the Crucible
			["provider"] = { "n", 92458 },	-- Deucus Valdera
			["sourceQuests"] = { 39338 },	-- Return the Filter
			["coord"] = { 41.6, 32.8, LEGION_DALARAN },
			["cost"] = {
				{ "i", 124124, 1 },	-- 1xBlood of Sargeras
				{ "i", 124116, 1 },	-- 1xFelhide
				{ "i", 124106, 2 },	-- 2xFelwort
				{ "i", 128304, 100 },	-- 100xYseralline Seed
			},
		}),
		q(39341, {	-- Vault of the Wardens: Demon's Bile
			["provider"] = { "n", 92458 },	-- Deucus Valdera
			["sourceQuests"] = {
				39339,	-- A Fragile Crucible
				39340,	-- Lining the Crucible
			},
			["coord"] = { 41.6, 32.8, LEGION_DALARAN },
			["description"] = "Need to bring a Skaggldrynk and drink infront of the boss door, located west section after Inquisitor Tormentorum.",
			["maps"] = { 710, 711, 712, },	-- Vault of the Wardens
			["cost"] = {{ "i", 127840, 1 }},	-- 1xSkaggldrynk
		}),
		q(39343, {	-- Vault of the Wardens: Bendy Glass Tubes
			["provider"] = { "i", 127877 },	-- Bendy Glass Tubes
			["sourceQuests"] = {
				39339,	-- A Fragile Crucible
				39340,	-- Lining the Crucible
			},
			["coord"] = { 40, 50, 678 },	-- Vault of the Wardens
			["maps"] = { 710, 711, 712, },	-- Vault of the Wardens
		}),
		q(39344, {	-- Going Underground
			["provider"] = { "n", 92458 },	-- Deucus Valdera
			["sourceQuests"] = { 39343 },	-- Vault of the Wardens: Bendy Glass Tubes
			["coord"] = { 41.6, 32.8, LEGION_DALARAN },
		}),
		q(39342, {	-- The Price of the Black Market
			["provider"] = { "n", 101492 },	-- Ms. Xiulan
			["sourceQuests"] = { 39344 },	-- Going Underground
			["coord"] = { 70.8, 19.8, LEGION_THE_UNDERBELLY },
			["cost"] = {
				{ "i", 124124, 1 },	-- 1xBlood of Sargeras
				{ "i", 128833, 5 },	-- 5xKaldorei Ginger Wine
				{ "i", 128764, 5 },	-- 5xMoist Azsunian Feta
			},
		}),
		q(39333, {	-- An Imprecise Burette
			["provider"] = { "n", 101492 },	-- Ms. Xiulan
			["sourceQuests"] = { 39342 },	-- The Price of the Black Market
			["coord"] = { 70.8, 19.8, LEGION_THE_UNDERBELLY },
		}),
		q(39645, {	-- Calibration Experts [A]
			["provider"] = { "n", 92458 },	-- Deucus Valdera
			["sourceQuests"] = { 39333 },	-- An Imprecise Burette
			["coord"] = { 41.6, 32.8, LEGION_DALARAN },
			["races"] = ALLIANCE_ONLY,
		}),
		q(39345, {	-- Calibration Experts [H]
			["provider"] = { "n", 92458 },	-- Deucus Valdera
			["sourceQuests"] = { 39333 },	-- An Imprecise Burette
			["coord"] = { 41.6, 32.8, LEGION_DALARAN },
			["races"] = HORDE_ONLY,
		}),
		q(39346, {	-- Testing the Calibration
			["provider"] = { "n", 92458 },	-- Deucus Valdera
			["sourceQuests"] = {
				39645,	-- Calibration Experts (A)
				39345,	-- Calibration Experts (H)
			},
			["coord"] = { 41.6, 32.8, LEGION_DALARAN },
			["cost"] = {
				{ "i", 127846, 10 },	-- 10xLeytorrent Potion
				{ "i", 127843, 10 },	-- 10xPotion of Deadly Grace
				{ "i", 127844, 10 },	-- 10xPotion of the Old War
				{ "i", 127845, 10 },	-- 10xUnbending Potion
			},
		}),
		q(39347, {	-- Channeling Our Efforts
			["provider"] = { "n", 92458 },	-- Deucus Valdera
			["sourceQuests"] = { 39346 },	-- Testing the Calibration
			["coord"] = { 41.6, 32.8, LEGION_DALARAN },
		}),
		q(39349, {	-- Black Rook Hold: Heavy, But Helpful
			["provider"] = { "n", 92183 },	-- Alard Schmied
			["sourceQuests"] = { 39347 },	--- Channeling Our Efforts
			["coord"] = { 45.0, 29.6, LEGION_DALARAN},
			["description"] = "The respective Rank 2 recipe will drop from the dungeon, don't forget to loot it.",
			["maps"] = { 751, 752, 753, 754, 755, 756 },	-- The Black Rook Hold
			["cost"] = {{ "i", 127849, 1 }},	-- 1xFlask of the Countless Armies
		}),
		q(39348, {	-- Halls of Valor: The Prime Ingredient
			["provider"] = { "n", 92183 },	-- Alard Schmied
			["sourceQuests"] = { 39347 },	-- Channeling Our Efforts
			["coord"] = { 45.0, 29.6, LEGION_DALARAN},
			["description"] = "The respective Rank 2 recipe will drop from the dungeon, don't forget to loot it.",
			["maps"] = { 703, 704, 705 },	-- Halls of Valor
			["cost"] = {{ "i", 127850, 1 }},	-- 1xFlask of Ten Thousand Scars
		}),
		q(39350, {	-- Maw of Souls: A Hope in Helheim
			["provider"] = { "n", 92183 },	-- Alard Schmied
			["sourceQuests"] = { 39347 },	--- Channeling Our Efforts
			["coord"] = { 45.0, 29.6, LEGION_DALARAN},
			["description"] = "The respective Rank 2 recipe will drop from the dungeon, don't forget to loot it.",
			["maps"] = { 706, 707, 708 },	-- Maw of Souls
			["cost"] = {{ "i", 127847, 1 }},	-- 1xFlask of the Whispered Pact
		}),
		q(39351, {	-- The Emerald Nightmare: Rage Fire
			["provider"] = { "n", 92183 },	-- Alard Schmied
			["sourceQuests"] = {
				39348,	-- Halls of Valor: The Prime Ingredient
				39349,	-- Black Rook Hold: Heavy, But Helpful
				39350,	-- Maw of Souls: A Hope in Helheim
			},
			["coord"] = { 45.0, 29.6, LEGION_DALARAN},
			["maps"] = { 777, 778, 779, 780, 781, 782, 783, 784, 785, 786, 787, 788, 789, },	-- The Emerald Nightmare
		}),
		q(42081, {	-- In With the New
			["provider"] = { "n", 92183 },	-- Alard Schmied
			["sourceQuests"] = { 39351 },	-- The Emerald Nightmare: Rage Fire
			["coord"] = { 45.0, 29.6, LEGION_DALARAN},
		}),
		------ 7.3.0 ------
		q(48016, bubbleDownSelf({ ["timeline"] = { ADDED_7_3_0 } }, {	-- Ascending Alchemy
			["provider"] = { "n", 125346 },	-- Alchemist Funen
			["coord"] = { 56.2, 66.8, KROKUUN },
			["cost"] = {
				{ "i", 151565, 75 },	-- 75xAstral Glory
				{ "i", 151568, 5 },	-- 5xPrimal Sargerite
				{ "i", 127842, 1 },	-- 1xInfernal Alchemist Stone
			},
			["groups"] = {
				i(164379),	-- Bound Infernal Alchemist Stone (QI!)
				i(151706),	-- Recipe: Astral Alchemist Stone [Rank 1] (RECIPE!)
			},
		})),
		q(48002, bubbleDownSelf({ ["timeline"] = { ADDED_7_3_0 } }, {	-- Limited Supplies
			["provider"] = { "n", 125346 },	-- Alchemist Funen
			["sourceQuest"] = 46816,	-- Rendezvous
			["coord"] = { 56.2, 66.8, KROKUUN },
			["groups"] = {
				i(151657),	-- Recipe: Lightblood Elixir [Rank 1] (RECIPE!)
				i(151845),	-- Used Vial (QI!)
			},
		})),
		q(48013, bubbleDownSelf({ ["timeline"] = { ADDED_7_3_0 } }, {	-- Tracking the Trackers
			["provider"] = { "n", 125346 },	-- Alchemist Funen
			["sourceQuest"] = 46816,	-- Rendezvous
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
				["provider"] = { "n", 132228 },	-- Elric Whalgrene
				["coord"] = { 74.2, 6.5, BORALUS },
				["description"] = "This quest chain requires 150 in Kul Tiran Alchemy.",
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
				["provider"] = { "n", 122703 },	-- Clever Kumali
				["coord"] = { 42.2, 38.0, DAZARALOR },
				["description"] = "This quest chain requires 150 in Zandalari Alchemy.",
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
				["provider"] = { "n", 132228 },	-- Elric Whalgrene
				["sourceQuests"] = { 50121 },	-- Casting the First Stone [A]
				["coord"] = { 74.2, 6.5, BORALUS },
				["timeline"] = { ADDED_8_1_5 },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(156657),	-- Highlands Mauler Eye (QI!)
				},
			}),
			q(50113, {	-- Ocular Extracts [H]
				["provider"] = { "n", 122703 },	-- Clever Kumali
				["sourceQuests"] = { 50112 },	-- Casting the First Stone [H]
				["coord"] = { 42.2, 38.0, DAZARALOR },
				["timeline"] = { ADDED_8_1_5 },
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(156806),	-- Razorwing Eye (QI!)
				},
			}),
			q(50124, {	-- Changing the Scenery [A]
				["provider"] = { "n", 132228 },	-- Elric Whalgrene
				["sourceQuests"] = { 50121 },	-- Casting the First Stone [A]
				["coord"] = { 74.2, 6.5, BORALUS },
				["timeline"] = { ADDED_8_1_5 },
				["races"] = ALLIANCE_ONLY,
			}),
			q(50115, {	-- Changing the Scenery [H]
				["provider"] = { "n", 122703 },	-- Clever Kumali
				["sourceQuests"] = { 50112 },	-- Casting the First Stone [H]
				["coord"] = { 42.2, 38.0, DAZARALOR },
				["timeline"] = { ADDED_8_1_5 },
				["races"] = HORDE_ONLY,
			}),
			q(50125, {	-- A Possible Solution [A]
				["provider"] = { "n", 132228 },	-- Elric Whalgrene
				["sourceQuests"] = {
					50122,	-- Ocular Extracts [A]
					50124,	-- Changing the Scenery [A]
				},
				["coord"] = { 74.2, 6.5, BORALUS },
				["timeline"] = { ADDED_8_1_5 },
				["races"] = ALLIANCE_ONLY,
			}),
			q(50116, {	-- A Possible Solution [H]
				["provider"] = { "n", 122703 },	-- Clever Kumali
				["sourceQuests"] = {
					50115,	-- Changing the Scenery [H]
					50113,	-- Ocular Extracts [H]
				},
				["coord"] = { 42.2, 38.0, DAZARALOR },
				["timeline"] = { ADDED_8_1_5 },
				["races"] = HORDE_ONLY,
			}),
			q(50126, {	-- A Deathly Draught [A]
				["provider"] = { "n", 132347 },	-- Quintin Whalgrene
				["sourceQuests"] = { 50125 },	-- A Possible Solution [A]
				["coord"] = { 30.6, 49.6, DRUSTVAR },
				["timeline"] = { ADDED_8_1_5 },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(156658),	-- Deathshroom (QI!)
				},
			}),
			q(50117, {	-- A Deathly Draught [H]
				["provider"] = { "n", 132680 },	-- Zukashi
				["sourceQuests"] = { 50116 },	-- A Possible Solution [H]
				["coord"] = { 65.2, 36.9, NAZMIR },
				["timeline"] = { ADDED_8_1_5 },
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(156658),	-- Deathshroom (QI!)
				},
			}),
			q(50127, {	-- A Stone's Throw [A]
				["provider"] = { "n", 132347 },	-- Quintin Whalgrene
				["sourceQuests"] = { 50125 },	-- A Possible Solution [A]
				["coord"] = { 30.6, 49.6, DRUSTVAR },
				["timeline"] = { ADDED_8_1_5 },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(156665),	-- Bag of Transmutation Stones (QI!)
					i(156687),	-- Vial of Altered Blood (QI!)
				},
			}),
			q(50118, {	-- A Stone's Throw [H]
				["provider"] = { "n", 132680 },	-- Zukashi
				["sourceQuests"] = { 50116 },	-- A Possible Solution [H]
				["coord"] = { 65.2, 36.9, NAZMIR },
				["timeline"] = { ADDED_8_1_5 },
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(156831),	-- Bag of Transmutation Stones (QI!)
					i(156664),	-- Vial of Altered Blood (QI!)
				},
			}),
			q(50128, {	-- Chemically Compounded [A]
				["provider"] = { "n", 132347 },	-- Quintin Whalgrene
				["sourceQuests"] = {
					50126,	-- A Stone's Throw [A]
					50127,	-- A Deathly Draught [A]
				},
				["coord"] = { 30.6, 49.6, DRUSTVAR },
				["timeline"] = { ADDED_8_1_5 },
				["races"] = ALLIANCE_ONLY,
			}),
			q(50119, {	-- Chemically Compounded [H]
				["provider"] = { "n", 132680 },	-- Zukashi
				["sourceQuests"] = {
					50117,	-- A Deathly Draught [H]
					50118,	-- A Stone's Throw [H]
				},
				["coord"] = { 65.2, 36.9, NAZMIR },
				["timeline"] = { ADDED_8_1_5 },
				["races"] = HORDE_ONLY,
			}),
			q(50129, bubbleDownSelf({ ["timeline"] = { ADDED_8_1_5 } }, {	-- A Recipe for Success [A]
				["provider"] = { "o", 280755 },	-- Quintin's Satchel
				["sourceQuests"] = { 50128 },	-- Chemically Compounded [A]
				["coord"] = { 62.9, 28.9, DRUSTVAR },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					r(260403),	-- Silus' Sphere of Transmutation (RECIPE!)
				},
			})),
			q(50120, bubbleDownSelf({ ["timeline"] = { ADDED_8_1_5 } }, {	-- A Recipe for Success [H]
				["provider"] = { "o", 280957 },	-- Zukashi's Satchel
				["sourceQuests"] = { 50119 },	-- Chemically Compounded [H]
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
				["provider"] = { "n", 191893 },	-- Zherrak
				["coord"] = { 60.3, 72.2, THE_WAKING_SHORES },
				["description"] = "This quest can only be picked up PRIOR to learning Dragon Isles Alchemy.",
				["lockCriteria"] = { 1,
					"spellID", 366261,	-- Dragon Isles Alchemy
					"questID", 72245,	-- Dragon Isles Alchemy
				},
			}),
			q(72245, {	-- Dragon Isles Alchemy
				["provider"] = { "n", 198392 },	-- An'timon
				["coord"] = { 76.2, 35.8, THE_WAKING_SHORES },
				["description"] = "This quest can only be picked up PRIOR to learning Dragon Isles Alchemy.",
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
				["provider"] = { "n", 193110 },	-- Khadin
				["sourceQuests"] = { 69979 },	-- A Worthy Hunt
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
				["provider"] = { "n", 191002 },	-- Dhurrel
				["coord"] = { 36.6, 63.6, VALDRAKKEN },
				["description"] = "Requires 25 Skill.",
				["groups"] = {
					i(201828),	-- Spiked Leaves (QI!)
				},
			}),
			q(66937, {	-- Decaying News
				["provider"] = { "n", 191000 },	-- Dothenos
				["coord"] = { 36.6, 62.6, VALDRAKKEN },
				["description"] = "Requires 25 Skill.",
				["groups"] = {
					i(194103),	-- Rotting Sample (QI!)
				},
			}),
			q(66940, {	-- Elixir Experiment
				["provider"] = { "n", 191002 },	-- Dhurrel
				["coord"] = { 36.6, 63.6, VALDRAKKEN },
				["description"] = "Requires 25 Skill.",
				["groups"] = {
					i(194427),	-- Gorloc Mucus (QI!)
				},
			}),
			q(66938, {	-- Mammoth Marrow
				["provider"] = { "n", 191002 },	-- Dhurrel
				["coord"] = { 36.6, 63.6, VALDRAKKEN },
				["description"] = "Requires 25 Skill.",
				["groups"] = {
					i(194424),	-- Tusk Marrow (QI!)
				},
			}),

			------ Requires 45 Skill ------
			q(70532, {	-- Aiding the Raiding
				["provider"] = { "n", 185545 },	-- Conflago
				["coord"] = { 36.4, 71.4, VALDRAKKEN },
				["description"] = "Requires 45 Skill.",
			}),
			q(70533, {	-- Decaying News
				["provider"] = { "n", 185545 },	-- Conflago
				["coord"] = { 36.4, 71.4, VALDRAKKEN },
				["description"] = "Requires 45 Skill.",
			}),
			q(70530, {	-- Examination Week
				["provider"] = { "n", 185545 },	-- Conflago
				["coord"] = { 36.4, 71.4, VALDRAKKEN },
				["description"] = "Requires 45 Skill.",
			}),
			q(70531, {	-- Mana Markets
				["provider"] = { "n", 185545 },	-- Conflago
				["coord"] = { 36.4, 71.4, VALDRAKKEN },
				["description"] = "Requires 45 Skill.",
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
				["coord"] = { 50.9, 49.7, 2254 },
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
				["provider"] = { "i", 194697 },	-- Draconic Treatise on Alchemy
				["description"] = "Requires a crafting order from Inscription.",
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
				["provider"] = { "i", 198963 },		-- Decaying Phlegm
				["coord"] = { 18.6, 38.4, THE_AZURE_SPAN },
				["description"] = "Drops from any Decayed Mob.\nCoordinates link to the spot(s) we found best.",
				["crs"] = { 186361 },	-- Rotting Treant
			}),
			q(70511, {	-- DF Weekly Alchemy Knowledgepoint #4
				["name"] = "DF Alchemy Drop #2: Elemental",
				["provider"] = { "i", 198964 },		-- Elementious Splinter
				["coord"] = { 80.2, 75.6, OHNAHRAN_PLAINS },
				["description"] = "Drops from any Elemental.\nCoordinates link to the spot(s) we found best.",
				["crs"] = { 191712 },	-- Hissing Springsoul
			}),
		})),
	})),
	expansion(EXPANSION.TWW, bubbleDownSelf({ ["timeline"] = { ADDED_11_0_2 } }, {
		n(ACHIEVEMENTS, {
			ach(19704),	-- Overflowing Algari Flasks (automated)
			ach(19716),	-- Plentiful Algari Potions (automated)
		}),
		n(QUESTS, sharedData({
			["isWeekly"] = true,
			["maxReputation"] = { FACTION_ARTISANS_CONSORTIUM_DRAGON_ISLES_BRANCH, 5 },
			["groups"] = {
				i(228773),	-- Algari Alchemist's Notebook
			},
		},{
			q(84133, {	-- Alchemy Services Requested
				["provider"] = { "n", 228177 },	-- Kala Clayhoof
				["coord"] = { 59.2, 55.2, DORNOGAL },
			}),
		})),
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
				["provider"] = { "i", 225235} ,		-- Deepstone Crucible
			}),
		})),
	})),
})));


-- #if ANYCLASSIC
-- Alchemy - Skill ID 171 / Spell ID 2259
root(ROOTS.Professions, prof(ALCHEMY, {
	expansion(EXPANSION.CLASSIC, {
		{
			["name"] = "Materials",
			["categoryID"] = 644,
			["groups"] = {
				{
					["name"] = "Ghost Dye",
					["recipeID"] = 11473
				},
				{
					["name"] = "Goblin Rocket Fuel",
					["recipeID"] = 11456
				},
				applyclassicphase(PHASE_FOUR, {
					["name"] = "Gurubashi Mojo Madness",
					["timeline"] = { REMOVED_4_0_1 },
					["recipeID"] = 24266
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_TWO, {
					["name"] = "Insulating Gniodine",
					["recipeID"] = 435969,
				}),
				-- #endif
			}
		},
		{
			["name"] = "Potions",
			["categoryID"] = 638,
			["groups"] = {
				{
					["name"] = "Discolored Healing Potion",
					["timeline"] = { REMOVED_4_0_3 },
					["recipeID"] = 4508
				},
				{
					["name"] = "Dreamless Sleep Potion",
					["recipeID"] = 15833
				},
				{
					["name"] = "Fire Protection Potion",
					["recipeID"] = 7257
				},
				{
					["name"] = "Free Action Potion",
					["recipeID"] = 6624
				},
				{
					["name"] = "Frost Protection Potion",
					["recipeID"] = 7258
				},
				{
					["name"] = "Great Rage Potion",
					["recipeID"] = 6618
				},
				{
					["name"] = "Greater Arcane Protection Potion",
					["timeline"] = { ADDED_1_11_1, REMOVED_4_0_3 },
					["recipeID"] = 17577
				},
				applyclassicphase(PHASE_FOUR, {
					["name"] = "Greater Dreamless Sleep Potion",
					["timeline"] = { REMOVED_4_0_3 },
					["recipeID"] = 24366,
				}),
				{
					["name"] = "Greater Fire Protection Potion",
					["recipeID"] = 17574
				},
				{
					["name"] = "Greater Frost Protection Potion",
					["timeline"] = { ADDED_1_11_1, REMOVED_4_0_3, ADDED_10_1_7 },
					["recipeID"] = 17575
				},
				{
					["name"] = "Greater Healing Potion",
					["recipeID"] = 7181
				},
				{
					["name"] = "Greater Holy Protection Potion",
					["timeline"] = { CREATED_1_11_1 },	-- Never Implemented
					["recipeID"] = 17579,
				},
				{
					["name"] = "Greater Mana Potion",
					["recipeID"] = 11448
				},
				{
					["name"] = "Greater Nature Protection Potion",
					["recipeID"] = 17576
				},
				{
					["name"] = "Greater Shadow Protection Potion",
					["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
					["recipeID"] = 17578
				},
				{
					["name"] = "Greater Stoneshield Potion",
					["recipeID"] = 17570
				},
				{
					["name"] = "Healing Potion",
					["recipeID"] = 3447
				},
				{
					["name"] = "Holy Protection Potion",
					["recipeID"] = 7255
				},
				{
					["name"] = "Invisibility Potion",
					["recipeID"] = 11464
				},
				{
					["name"] = "Lesser Healing Potion",
					["recipeID"] = 2337
				},
				{
					["name"] = "Lesser Invisibility Potion",
					["recipeID"] = 3448
				},
				{
					["name"] = "Lesser Mana Potion",
					["recipeID"] = 3173
				},
				{
					["name"] = "Lesser Stoneshield Potion",
					["timeline"] = { REMOVED_4_0_3 },
					["recipeID"] = 4942
				},
				{
					["name"] = "Limited Invulnerability Potion",
					["recipeID"] = 3175
				},
				applyclassicphase(PHASE_FOUR, {
					["name"] = "Living Action Potion",
					["timeline"] = { REMOVED_4_0_3 },
					["recipeID"] = 24367,
				}),
				-- #if BEFORE TBC
				applyclassicphase(PHASE_FOUR, {
					["name"] = "Mageblood Potion",
					["timeline"] = { REMOVED_4_0_3 },
					["recipeID"] = 24365,
				}),
				-- #endif
				{
					["name"] = "Magic Resistance Potion",
					["timeline"] = { DELETED_5_0_4 },
					["recipeID"] = 11453
				},
				{
					["name"] = "Major Healing Potion",
					["recipeID"] = 17556
				},
				{
					["name"] = "Major Mana Potion",
					["recipeID"] = 17580
				},
				{
					["name"] = "Major Rejuvenation Potion",
					["recipeID"] = 22732
				},
				-- #if BEFORE TBC
				applyclassicphase(PHASE_FOUR, {
					["name"] = "Major Troll's Blood Potion",
					["timeline"] = { REMOVED_4_0_3 },
					["recipeID"] = 24368,
				}),
				-- #endif
				{
					["name"] = "Mana Potion",
					["recipeID"] = 3452
				},
				{
					["name"] = "Mighty Rage Potion",
					["recipeID"] = 17552
				},
				-- #if BEFORE TBC
				{
					["name"] = "Mighty Troll's Blood Potion",
					["recipeID"] = 3451
				},
				-- #endif
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_TWO, {
					["name"] = "Mildly Irradiated Rejuvenation Potion",
					["recipeID"] = 435971,
				}),
				-- #endif
				{
					["name"] = "Minor Healing Potion",
					["recipeID"] = 2330
				},
				{
					["name"] = "Minor Mana Potion",
					["recipeID"] = 2331
				},
				{
					["name"] = "Minor Rejuvenation Potion",
					["recipeID"] = 2332
				},
				{
					["name"] = "Minor Magic Resistance Potion",
					["timeline"] = { DELETED_5_0_4 },
					["recipeID"] = 3172
				},
				{
					["name"] = "Nature Protection Potion",
					["recipeID"] = 7259
				},
				-- #if AFTER TBC
				{
					["name"] = "Potion of Curing / Elixir of Poison Resistance",
					["recipeID"] = 3174
				},
				{
					["name"] = "Potion of Petrification / Flask of Petrification",
					["recipeID"] = 17634
				},
				-- #endif
				{
					["name"] = "Purification Potion",
					["recipeID"] = 17572
				},
				{
					["name"] = "Rage Potion",
					["recipeID"] = 6617
				},
				{
					["name"] = "Restorative Potion",
					["timeline"] = { REMOVED_4_0_3 },
					["recipeID"] = 11452,
				},
				{
					["name"] = "Shadow Protection Potion",
					["recipeID"] = 7256
				},
				-- #if BEFORE TBC
				{
					["name"] = "Strong Troll's Blood Potion / Strong Troll's Blood Elixir",
					["recipeID"] = 3176
				},
				-- #endif
				{
					["name"] = "Superior Healing Potion",
					["recipeID"] = 11457
				},
				{
					["name"] = "Superior Mana Potion",
					["recipeID"] = 17553
				},
				{
					["name"] = "Swiftness Potion",
					["recipeID"] = 2335
				},
				{
					["name"] = "Swim Speed Potion",
					["recipeID"] = 7841
				},
				-- #if BEFORE TBC
				{
					["name"] = "Weak Troll's Blood Potion / Weak Troll's Blood Elixir",
					["recipeID"] = 3170
				},
				-- #endif
				{
					["name"] = "Wildvine Potion",
					["recipeID"] = 11458
				}
			}
		},
		{
			["name"] = "Elixirs",
			["categoryID"] = 639,
			["groups"] = {
				{
					["name"] = "Arcane Elixir",
					["recipeID"] = 11461
				},
				{
					["name"] = "Catseye Elixir",
					["recipeID"] = 12609
				},
				{
					["name"] = "Elixir of Agility",
					["recipeID"] = 11449
				},
				{
					["name"] = "Elixir of Brute Force",
					["recipeID"] = 17557
				},
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_ONE, {
					["name"] = "Elixir of Coalesced Regret",
					["recipeID"] = 426607
				}),
				-- #endif
				{
					["name"] = "Elixir of Defense",
					["recipeID"] = 3177
				},
				{
					["name"] = "Elixir of Demonslaying",
					["recipeID"] = 11477
				},
				{
					["name"] = "Elixir of Detect Demon",
					["recipeID"] = 11478
				},
				{
					["name"] = "Elixir of Detect Lesser Invisibility",
					["recipeID"] = 3453
				},
				{
					["name"] = "Elixir of Detect Undead",
					["recipeID"] = 11460
				},
				{
					["name"] = "Elixir of Dream Vision",
					["recipeID"] = 11468
				},
				{
					["name"] = "Elixir of Firepower",
					["recipeID"] = 7845
				},
				{
					["name"] = "Elixir of Fortitude",
					["recipeID"] = 3450
				},
				applyevent(EVENTS.FEAST_OF_WINTER_VEIL, {
					["name"] = "Elixir of Frost Power",
					["recipeID"] = 21923
				}),
				{
					["name"] = "Elixir of Giant Growth",
					["recipeID"] = 8240
				},
				{
					["name"] = "Elixir of Giants",
					["recipeID"] = 11472
				},
				{
					["name"] = "Elixir of Greater Agility",
					["recipeID"] = 11467
				},
				{
					["name"] = "Elixir of Greater Defense",
					["recipeID"] = 11450
				},
				applyclassicphase(PHASE_FIVE_RECIPES, {
					["name"] = "Elixir of Greater Firepower",
					["timeline"] = { REMOVED_4_0_1, ADDED_10_1_7 },
					["recipeID"] = 26277
				}),
				{
					["name"] = "Elixir of Greater Intellect",
					["recipeID"] = 11465
				},
				{
					["name"] = "Elixir of Greater Water Breathing",
					["recipeID"] = 22808
				},
				{
					["name"] = "Elixir of Lesser Agility",
					["recipeID"] = 2333
				},
				{
					["name"] = "Elixir of Lion's Strength",
					["recipeID"] = 2329
				},
				{
					["name"] = "Elixir of Minor Accuracy",
					["timeline"] = { ADDED_3_0_2 },
					["recipeID"] = 63732
				},
				{
					["name"] = "Elixir of Minor Agility",
					["recipeID"] = 3230
				},
				{
					["name"] = "Elixir of Minor Defense",
					["recipeID"] = 7183
				},
				{
					["name"] = "Elixir of Minor Fortitude",
					["recipeID"] = 2334
				},
				{
					["name"] = "Elixir of Ogre's Strength",
					["recipeID"] = 3188
				},
				-- #if BEFORE TBC
				{
					["name"] = "Elixir of Poison Resistance / Potion of Curing",
					["recipeID"] = 3174
				},
				-- #endif
				{
					["name"] = "Elixir of Shadow Power",
					["recipeID"] = 11476
				},
				{
					["name"] = "Elixir of Superior Defense",
					["recipeID"] = 17554
				},
				{
					["name"] = "Elixir of the Mongoose",
					["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
					["recipeID"] = 17571
				},
				{
					["name"] = "Elixir of the Sages",
					["recipeID"] = 17555
				},
				{
					["name"] = "Elixir of Water Breathing",
					["recipeID"] = 7179
				},
				{
					["name"] = "Elixir of Waterwalking",	-- See later in SoD TBC if this is true
					["timeline"] = { ADDED_2_4_0, DELETED_3_0_2 },
					["recipeID"] = 11447,
				},
				{
					["name"] = "Elixir of Water Walking",
					["timeline"] = { ADDED_3_0_2 },
					["recipeID"] = 62410,
				},
				{
					["name"] = "Elixir of Wisdom",
					["recipeID"] = 3171
				},
				{
					["name"] = "Gift of Arthas",
					["recipeID"] = 11466
				},
				{
					["name"] = "Greater Arcane Elixir",
					["recipeID"] = 17573
				},
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_TWO, {
					["name"] = "Lesser Arcane Elixir",
					["recipeID"] = 439960,
				}),
				-- #endif
				-- #if AFTER TBC
				applyclassicphase(PHASE_FOUR, {
					["name"] = "Mageblood Elixir",
					["timeline"] = { REMOVED_4_0_3 },
					["recipeID"] = 24365,
				}),
				{
					["name"] = "Major Troll's Blood Elixir",
					["recipeID"] = 3451
				},
				applyclassicphase(PHASE_FOUR, {
					["name"] = "Mighty Troll's Blood Elixir",
					["timeline"] = { REMOVED_4_0_3 },
					["recipeID"] = 24368,
				}),
				{
					["name"] = "Strong Troll's Blood Elixir / Strong Troll's Blood Potion",
					["recipeID"] = 3176
				},
				{
					["name"] = "Weak Troll's Blood Elixir / Weak Troll's Blood Potion",
					["recipeID"] = 3170
				},
				-- #endif
			}
		},
		{
			["name"] = "Flasks",
			["categoryID"] = 640,
			["groups"] = {
				{
					["name"] = "Alchemist's Flask",
					["timeline"] = { ADDED_5_0_4 },
					["recipeID"] = 114786
				},
				{
					["name"] = "Flask of Chromatic Resistance",
					["timeline"] = { DELETED_5_0_4 },
					["recipeID"] = 17638,
				},
				{
					["name"] = "Flask of Distilled Wisdom",
					["recipeID"] = 17636
				},
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_THREE, {
					["name"] = "Flask of Everlasting Nightmares",
					["timeline"] = { ADDED_1_15_2 },
					["recipeID"] = 446226,
				}),
				applyclassicphase(SOD_PHASE_THREE, {
					["name"] = "Flask of Nightmarish Mojo",
					["timeline"] = { ADDED_1_15_2 },
					["recipeID"] = 446851,
				}),
				-- #endif
				-- #if BEFORE TBC
				{
					["name"] = "Flask of Petrification / Potion of Petrification",
					["recipeID"] = 17634
				},
				-- #endif
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_THREE, {
					["name"] = "Flask of Restless Dreams",
					["timeline"] = { ADDED_1_15_2 },
					["recipeID"] = 448085,
				}),
				-- #endif
				{
					["name"] = "Flask of Supreme Power",
					["recipeID"] = 17637
				},
				{
					["name"] = "Flask of the Titans",
					["recipeID"] = 17635
				},
			}
		},
		{
			["name"] = "Transmutes",
			["categoryID"] = 641,
			["groups"] = {
				{
					["name"] = "Transmute: Air to Fire",
					["recipeID"] = 17559
				},
				{
					["name"] = "Transmute: Arcanite",
					["recipeID"] = 17187
				},
				{
					["name"] = "Transmute: Earth to Life",
					["recipeID"] = 17566
				},
				{
					["name"] = "Transmute: Earth to Water",
					["recipeID"] = 17561
				},
				applyclassicphase(PHASE_FIVE, {
					["name"] = "Transmute: Elemental Fire",
					["recipeID"] = 25146
				}),
				{
					["name"] = "Transmute: Fire to Earth",
					["recipeID"] = 17560
				},
				{
					["name"] = "Transmute: Iron to Gold",
					["recipeID"] = 11479
				},
				{
					["name"] = "Transmute: Life to Earth",
					["recipeID"] = 17565
				},
				{
					["name"] = "Transmute: Mithril to Truesilver",
					["recipeID"] = 11480
				},
				{
					["name"] = "Transmute: Undeath to Water",
					["recipeID"] = 17563
				},
				{
					["name"] = "Transmute: Water to Air",
					["recipeID"] = 17562
				},
				{
					["name"] = "Transmute: Water to Undeath",
					["recipeID"] = 17564
				}
			}
		},
		{
			["name"] = "Trinkets",
			["categoryID"] = 642,
			["groups"] = {
				{
					["name"] = "Philosopher's Stone",
					["recipeID"] = 11459
				}
			}
		},
		{
			["name"] = "Oils",
			["categoryID"] = 643,
			["groups"] = {
				{
					["name"] = "Blackmouth Oil",
					["recipeID"] = 7836
				},
				{
					["name"] = "Fire Oil",
					["recipeID"] = 7837
				},
				{
					["name"] = "Frost Oil",
					["recipeID"] = 3454
				},
				{
					["name"] = "Oil of Immolation",
					["recipeID"] = 11451
				},
				{
					["name"] = "Shadow Oil",
					["recipeID"] = 3449
				},
				{
					["name"] = "Stonescale Oil",
					["recipeID"] = 17551
				}
			}
		},
		-- #if AFTER 8.0.1
		-- Moved from First Aid with BFA.
		{
			["name"] = "Anti-Venoms",
			["categoryID"] = 1124,
			["groups"] = {
				{
					["name"] = "Anti-Venom",
					["recipeID"] = 7934
				},
				{
					["name"] = "Powerful Anti-Venom",
					["recipeID"] = 23787
				},
				{
					["name"] = "Strong Anti-Venom",
					["recipeID"] = 7935
				}
			}
		}
		-- #endif
	});
	applyclassicphase(TBC_PHASE_ONE, expansion(EXPANSION.TBC, {
		n(DISCOVERY, {
			["description"] = "Craft a Major Protection for a chance to Discover the associated Cauldron Recipe.\n\nThe other recipes can be discovered by Transmuting Primals or by crafting Flasks, Elixirs and Potions. The type of discovery generally has a better chance to proc if you craft something of a similar type.",
			["groups"] = {
				recipe(41458),	-- Cauldron of Major Arcane Protection
				recipe(41500),	-- Cauldron of Major Fire Protection
				recipe(41501),	-- Cauldron of Major Frost Protection
				recipe(41502),	-- Cauldron of Major Nature Protection
				recipe(41503),	-- Cauldron of Major Shadow Protection
				recipe(28590),	-- Flask of Blinding Light
				recipe(28587),	-- Flask of Fortification
				recipe(28588),	-- Flask of Mighty Versatility
				recipe(28591),	-- Flask of Pure Death
				recipe(28589),	-- Flask of Relentless Assault
				recipe(28586),	-- Super Rejuvenation Potion
				recipe(28585),	-- Transmute: Primal Earth to Life
				recipe(28583),	-- Transmute: Primal Fire to Mana
				recipe(28584),	-- Transmute: Primal Life to Earth
				recipe(28582),	-- Transmute: Primal Mana to Fire
				recipe(28580),	-- Transmute: Primal Shadow to Water
				recipe(28581),	-- Transmute: Primal Water to Shadow
			},
		}),
		{
			["name"] = "Cauldrons",
			["categoryID"] = 632,
			["groups"] = {
				{
					["name"] = "Cauldron of Major Arcane Protection",
					["recipeID"] = 41458
				},
				{
					["name"] = "Cauldron of Major Fire Protection",
					["recipeID"] = 41500
				},
				{
					["name"] = "Cauldron of Major Frost Protection",
					["recipeID"] = 41501
				},
				{
					["name"] = "Cauldron of Major Nature Protection",
					["recipeID"] = 41502
				},
				{
					["name"] = "Cauldron of Major Shadow Protection",
					["recipeID"] = 41503
				}
			}
		},
		{
			["name"] = "Potions",
			["categoryID"] = 633,
			["groups"] = {
				{
					["name"] = "Destruction Potion",
					["recipeID"] = 28565
				},
				{
					["name"] = "Fel Mana Potion",
					["recipeID"] = 38961
				},
				{
					["name"] = "Fel Regeneration Potion",
					["recipeID"] = 38962
				},
				{
					["name"] = "Haste Potion",
					["recipeID"] = 28564
				},
				{
					["name"] = "Heroic Potion",
					["recipeID"] = 28563
				},
				{
					["name"] = "Insane Strength Potion",
					["recipeID"] = 28550
				},
				{
					["name"] = "Ironshield Potion",
					["recipeID"] = 28579
				},
				{
					["name"] = "Mad Alchemist's Potion",
					["recipeID"] = 45061
				},
				{
					["name"] = "Major Arcane Protection Potion",
					["recipeID"] = 28575
				},
				{
					["name"] = "Major Dreamless Sleep Potion",
					["recipeID"] = 28562
				},
				{
					["name"] = "Major Fire Protection Potion",
					["recipeID"] = 28571
				},
				{
					["name"] = "Major Frost Protection Potion",
					["recipeID"] = 28572
				},
				{
					["name"] = "Major Holy Protection Potion",
					["recipeID"] = 28577
				},
				{
					["name"] = "Major Nature Protection Potion",
					["recipeID"] = 28573
				},
				{
					["name"] = "Major Shadow Protection Potion",
					["recipeID"] = 28576
				},
				{
					["name"] = "Shrouding Potion",
					["recipeID"] = 28554
				},
				{
					["name"] = "Sneaking Potion",
					["recipeID"] = 28546
				},
				{
					["name"] = "Super Healing Potion",
					["recipeID"] = 28551
				},
				{
					["name"] = "Super Mana Potion",
					["recipeID"] = 28555
				},
				{
					["name"] = "Super Rejuvenation Potion",
					["recipeID"] = 28586
				},
				{
					["name"] = "Unstable Mana Potion",
					["recipeID"] = 33733
				},
				{
					["name"] = "Volatile Healing Potion",
					["recipeID"] = 33732
				}
			}
		},
		{
			["name"] = "Elixirs",
			["categoryID"] = 634,
			["groups"] = {
				{
					["name"] = "Adept's Elixir",
					["recipeID"] = 33740
				},
				{
					["name"] = "Earthen Elixir",
					["recipeID"] = 39637
				},
				{
					["name"] = "Elixir of Camouflage",
					["recipeID"] = 28543
				},
				{
					["name"] = "Elixir of Draenic Wisdom",
					["recipeID"] = 39638
				},
				{
					["name"] = "Elixir of Empowerment",
					["recipeID"] = 28578
				},
				{
					["name"] = "Elixir of Healing Power",
					["recipeID"] = 28545
				},
				{
					["name"] = "Elixir of Ironskin",
					["recipeID"] = 39639
				},
				{
					["name"] = "Elixir of Major Agility",
					["recipeID"] = 28553
				},
				{
					["name"] = "Elixir of Major Defense",
					["recipeID"] = 28557
				},
				{
					["name"] = "Elixir of Major Firepower",
					["recipeID"] = 28556
				},
				{
					["name"] = "Elixir of Major Fortitude",
					["recipeID"] = 39636
				},
				{
					["name"] = "Elixir of Major Frost Power",
					["recipeID"] = 28549
				},
				{
					["name"] = "Elixir of Major Mageblood",
					["recipeID"] = 28570
				},
				{
					["name"] = "Elixir of Major Shadow Power",
					["recipeID"] = 28558
				},
				{
					["name"] = "Elixir of Major Strength",
					["recipeID"] = 28544
				},
				{
					["name"] = "Elixir of Mastery",
					["recipeID"] = 33741
				},
				{
					["name"] = "Elixir of the Searching Eye",
					["recipeID"] = 28552
				},
				{
					["name"] = "Fel Strength Elixir",
					["recipeID"] = 38960
				},
				{
					["name"] = "Onslaught Elixir",
					["recipeID"] = 33738
				}
			}
		},
		{
			["name"] = "Flasks",
			["categoryID"] = 635,
			["groups"] = {
				{
					["name"] = "Flask of Blinding Light",
					["recipeID"] = 28590
				},
				applyclassicphase(TBC_PHASE_THREE, {
					["name"] = "Flask of Chromatic Wonder",
					["timeline"] = { DELETED_5_0_4 },
					["recipeID"] = 42736
				}),
				{
					["name"] = "Flask of Fortification",
					["recipeID"] = 28587
				},
				{
					["name"] = "Flask of Mighty Versatility",
					["recipeID"] = 28588
				},
				{
					["name"] = "Flask of Pure Death",
					["recipeID"] = 28591
				},
				{
					["name"] = "Flask of Relentless Assault",
					["recipeID"] = 28589
				}
			}
		},
		{
			["name"] = "Transmutation",
			["categoryID"] = 636,
			["groups"] = {
				{
					["name"] = "Transmute: Earthstorm Diamond",
					["recipeID"] = 32765
				},
				{
					["name"] = "Transmute: Primal Air to Fire",
					["recipeID"] = 28566
				},
				{
					["name"] = "Transmute: Primal Earth to Life",
					["recipeID"] = 28585
				},
				{
					["name"] = "Transmute: Primal Earth to Water",
					["recipeID"] = 28567
				},
				{
					["name"] = "Transmute: Primal Fire to Earth",
					["recipeID"] = 28568
				},
				{
					["name"] = "Transmute: Primal Fire to Mana",
					["recipeID"] = 28583
				},
				{
					["name"] = "Transmute: Primal Life to Earth",
					["recipeID"] = 28584
				},
				{
					["name"] = "Transmute: Primal Mana to Fire",
					["recipeID"] = 28582
				},
				{
					["name"] = "Transmute: Primal Might",
					["recipeID"] = 29688
				},
				{
					["name"] = "Transmute: Primal Shadow to Water",
					["recipeID"] = 28580
				},
				{
					["name"] = "Transmute: Primal Water to Air",
					["recipeID"] = 28569
				},
				{
					["name"] = "Transmute: Primal Water to Shadow",
					["recipeID"] = 28581
				},
				{
					["name"] = "Transmute: Skyfire Diamond",
					["recipeID"] = 32766
				}
			}
		},
		{
			["name"] = "Trinkets",
			["categoryID"] = 637,
			["groups"] = {
				{
					["name"] = "Alchemist Stone",
					["recipeID"] = 17632
				},
				applyclassicphase(TBC_PHASE_FIVE, {
					["name"] = "Assassin's Alchemist Stone",
					["recipeID"] = 47050
				}),
				applyclassicphase(TBC_PHASE_FIVE, {
					["name"] = "Guardian's Alchemist Stone",
					["recipeID"] = 47046
				}),
				applyclassicphase(TBC_PHASE_FIVE, {
					["name"] = "Redeemer's Alchemist Stone",
					["recipeID"] = 47049
				}),
				applyclassicphase(TBC_PHASE_FIVE, {
					["name"] = "Sorcerer's Alchemist Stone",
					["recipeID"] = 47048
				}),
			}
		},
		{
			["name"] = "Materials",
			["categoryID"] = 644,
			["groups"] = {
				{
					["name"] = "Mercurial Stone",
					["recipeID"] = 38070
				},
			}
		},
	})),
	applyclassicphase(WRATH_PHASE_ONE, expansion(EXPANSION.WRATH, {
		n(DISCOVERY, {
			["description"] = "The following recipes can be discovered by Transmuting Eternals.",
			["groups"] = {
				recipe(53777),	-- Transmute: Eternal Air to Earth
				recipe(53776),	-- Transmute: Eternal Air to Water
				recipe(53781),	-- Transmute: Eternal Earth to Air
				recipe(53782),	-- Transmute: Eternal Earth to Shadow
				recipe(53775),	-- Transmute: Eternal Fire to Life
				recipe(53774),	-- Transmute: Eternal Fire to Water
				recipe(53773),	-- Transmute: Eternal Life to Fire
				recipe(53771),	-- Transmute: Eternal Life to Shadow
				recipe(53779),	-- Transmute: Eternal Shadow to Earth
				recipe(53780),	-- Transmute: Eternal Shadow to Life
				recipe(53783),	-- Transmute: Eternal Water to Air
				recipe(53784),	-- Transmute: Eternal Water to Fire
			},
		}),
		{
			["name"] = "Research",
			["categoryID"] = 625,
			["groups"] = {
				recipe(60893, {	-- Northrend Alchemy Research
					["description"] = "These recipes can be discovered by using this skill.",
					["groups"] = {
						recipe(53895),	-- Crazy Alchemist's Potion
						recipe(60354),	-- Elixir of Accuracy
						recipe(60365),	-- Elixir of Armor Piercing
						recipe(60355),	-- Elixir of Deadly Strikes
						recipe(60357),	-- Elixir of Expertise
						recipe(60366),	-- Elixir of Lightning Speed
						recipe(60356),	-- Elixir of Mighty Defense
						recipe(56519),	-- Elixir of Mighty Mageblood
						recipe(54220),	-- Elixir of Protection
						recipe(62410),	-- Elixir of Water Walking
						recipe(54221),	-- Potion of Speed
						recipe(54222),	-- Potion of Wild Magic
						recipe(53904),	-- Powerful Rejuvenation Potion
					},
				}),
			},
		},
		{
			["name"] = "Potions",
			["categoryID"] = 626,
			["groups"] = {
				{
					["name"] = "Crazy Alchemist's Potion",
					["recipeID"] = 53895
				},
				{
					["name"] = "Endless Healing Potion",
					["recipeID"] = 58871
				},
				{
					["name"] = "Endless Mana Potion",
					["recipeID"] = 58868
				},
				{
					["name"] = "Icy Mana Potion",
					["recipeID"] = 53839
				},
				{
					["name"] = "Indestructible Potion",
					["recipeID"] = 53905
				},
				{
					["name"] = "Mighty Arcane Protection Potion",
					["recipeID"] = 53936
				},
				{
					["name"] = "Mighty Fire Protection Potion",
					["recipeID"] = 53939
				},
				{
					["name"] = "Mighty Frost Protection Potion",
					["recipeID"] = 53937
				},
				{
					["name"] = "Mighty Nature Protection Potion",
					["recipeID"] = 53942
				},
				{
					["name"] = "Mighty Shadow Protection Potion",
					["recipeID"] = 53938
				},
				{
					["name"] = "Potion of Nightmares",
					["recipeID"] = 53900
				},
				{
					["name"] = "Potion of Speed",
					["recipeID"] = 54221
				},
				{
					["name"] = "Potion of Wild Magic",
					["recipeID"] = 54222
				},
				{
					["name"] = "Powerful Rejuvenation Potion",
					["recipeID"] = 53904
				},
				{
					["name"] = "Resurgent Healing Potion",
					["recipeID"] = 53838
				},
				{
					["name"] = "Runic Healing Potion",
					["recipeID"] = 53836
				},
				{
					["name"] = "Runic Mana Potion",
					["recipeID"] = 53837
				}
			}
		},
		{
			["name"] = "Elixirs",
			["categoryID"] = 627,
			["groups"] = {
				{
					["name"] = "Elixir of Accuracy",
					["recipeID"] = 60354
				},
				{
					["name"] = "Elixir of Armor Piercing",
					["recipeID"] = 60365
				},
				{
					["name"] = "Elixir of Deadly Strikes",
					["recipeID"] = 60355
				},
				{
					["name"] = "Elixir of Expertise",
					["recipeID"] = 60357
				},
				{
					["name"] = "Elixir of Lightning Speed",
					["recipeID"] = 60366
				},
				{
					["name"] = "Elixir of Mighty Agility",
					["recipeID"] = 53840
				},
				{
					["name"] = "Elixir of Mighty Defense",
					["recipeID"] = 60356
				},
				{
					["name"] = "Elixir of Mighty Fortitude",
					["recipeID"] = 53898
				},
				{
					["name"] = "Elixir of Mighty Mageblood",
					["recipeID"] = 56519
				},
				{
					["name"] = "Elixir of Mighty Strength",
					["recipeID"] = 54218
				},
				{
					["name"] = "Elixir of Mighty Thoughts",
					["recipeID"] = 60367
				},
				{
					["name"] = "Elixir of Protection",
					["recipeID"] = 54220
				},
				{
					["name"] = "Elixir of Spirit",
					["recipeID"] = 53847
				},
				{
					["name"] = "Elixir of Water Walking",
					["recipeID"] = 62410
				},
				{
					["name"] = "Guru's Elixir",
					["recipeID"] = 53848
				},
				{
					["name"] = "Spellpower Elixir",
					["recipeID"] = 53842
				},
				{
					["name"] = "Wrath Elixir",
					["recipeID"] = 53841
				}
			}
		},
		{
			["name"] = "Flasks",
			["categoryID"] = 628,
			["groups"] = {
				{
					["name"] = "Flask of Endless Rage",
					["recipeID"] = 53903
				},
				{
					["name"] = "Flask of Pure Mojo",
					["recipeID"] = 54213
				},
				{
					["name"] = "Flask of Stoneblood",
					["recipeID"] = 53902
				},
				{
					["name"] = "Flask of the Frost Wyrm",
					["recipeID"] = 53901
				},
				{
					["name"] = "Flask of the North",
					["timeline"] = { DELETED_5_0_4 },
					["recipeID"] = 67025
				},
				{
					["name"] = "Lesser Flask of Toughness",
					["recipeID"] = 53899
				},
				{
					["name"] = "Lesser Flask of Resistance",
					["timeline"] = { DELETED_5_0_4 },
					["recipeID"] = 62213
				},
			}
		},
		{
			["name"] = "Transmutation",
			["categoryID"] = 629,
			["groups"] = {
				applyclassicphase(WRATH_PHASE_THREE, {
					["name"] = "Transmute: Ametrine",
					["recipeID"] = 66658
				}),
				applyclassicphase(WRATH_PHASE_THREE, {
					["name"] = "Transmute: Cardinal Ruby",
					["recipeID"] = 66659
				}),
				applyclassicphase(WRATH_PHASE_THREE, {
					["name"] = "Transmute: Dreadstone",
					["recipeID"] = 66662
				}),
				{
					["name"] = "Transmute: Earthsiege Diamond",
					["recipeID"] = 57427
				},
				{
					["name"] = "Transmute: Eternal Air to Earth",
					["recipeID"] = 53777
				},
				{
					["name"] = "Transmute: Eternal Air to Water",
					["recipeID"] = 53776
				},
				{
					["name"] = "Transmute: Eternal Earth to Air",
					["recipeID"] = 53781
				},
				{
					["name"] = "Transmute: Eternal Earth to Shadow",
					["recipeID"] = 53782
				},
				{
					["name"] = "Transmute: Eternal Fire to Life",
					["recipeID"] = 53775
				},
				{
					["name"] = "Transmute: Eternal Fire to Water",
					["recipeID"] = 53774
				},
				{
					["name"] = "Transmute: Eternal Life to Fire",
					["recipeID"] = 53773
				},
				{
					["name"] = "Transmute: Eternal Life to Shadow",
					["recipeID"] = 53771
				},
				{
					["name"] = "Transmute: Eternal Might",
					["timeline"] = { CREATED_3_0_2 },	-- Never Implemented
					["recipeID"] = 54020,
				},
				{
					["name"] = "Transmute: Eternal Shadow to Earth",
					["recipeID"] = 53779
				},
				{
					["name"] = "Transmute: Eternal Shadow to Life",
					["recipeID"] = 53780
				},
				{
					["name"] = "Transmute: Eternal Water to Air",
					["recipeID"] = 53783
				},
				{
					["name"] = "Transmute: Eternal Water to Fire",
					["recipeID"] = 53784
				},
				applyclassicphase(WRATH_PHASE_THREE, {
					["name"] = "Transmute: Eye of Zul",
					["recipeID"] = 66664
				}),
				applyclassicphase(WRATH_PHASE_THREE, {
					["name"] = "Transmute: King's Amber",
					["recipeID"] = 66660
				}),
				applyclassicphase(WRATH_PHASE_THREE, {
					["name"] = "Transmute: Majestic Zircon",
					["recipeID"] = 66663
				}),
				{
					["name"] = "Transmute: Skyflare Diamond",
					["recipeID"] = 57425
				},
				{
					["name"] = "Transmute: Titanium",
					["recipeID"] = 60350
				}
			}
		},
		{
			["name"] = "Trinkets",
			["categoryID"] = 630,
			["groups"] = {
				{
					["name"] = "Indestructible Alchemist Stone",
					["recipeID"] = 60403
				},
				{
					["name"] = "Mercurial Alchemist Stone",
					["recipeID"] = 60396
				},
				{
					["name"] = "Mighty Alchemist Stone",
					["recipeID"] = 60405
				}
			}
		},
		{
			["name"] = "Oils",
			["categoryID"] = 631,
			["groups"] = {
				{
					["name"] = "Ethereal Oil",
					["recipeID"] = 62409
				},
				{
					["name"] = "Pygmy Oil",
					["recipeID"] = 53812
				}
			}
		}
	})),
	applyclassicphase(CATA_PHASE_ONE, expansion(EXPANSION.CATA, {
		{
			["name"] = "Cauldrons",
			["categoryID"] = 617,
			["groups"] = {
				{
					["name"] = "Big Cauldron of Battle",
					["recipeID"] = 92688
				},
				{
					["name"] = "Cauldron of Battle",
					["recipeID"] = 92643
				}
			}
		},
		{
			["name"] = "Potions",
			["categoryID"] = 618,
			["groups"] = {
				{
					["name"] = "Deathblood Venom",
					["recipeID"] = 80479
				},
				{
					["name"] = "Draught of War",
					["recipeID"] = 93935
				},
				{
					["name"] = "Earthen Potion",
					["recipeID"] = 80478
				},
				{
					["name"] = "Golemblood Potion",
					["recipeID"] = 80496
				},
				{
					["name"] = "Mighty Rejuvenation Potion",
					["recipeID"] = 80490
				},
				{
					["name"] = "Mysterious Potion",
					["recipeID"] = 80487
				},
				{
					["name"] = "Mythical Healing Potion",
					["recipeID"] = 80498
				},
				{
					["name"] = "Mythical Mana Potion",
					["recipeID"] = 80494
				},
				{
					["name"] = "Potion of Concentration",
					["recipeID"] = 80482
				},
				{
					["name"] = "Potion of Deepholm",
					["recipeID"] = 80725
				},
				{
					["name"] = "Potion of Illusion",
					["recipeID"] = 80269
				},
				{
					["name"] = "Potion of the Tol'vir",
					["recipeID"] = 80495
				},
				{
					["name"] = "Potion of Treasure Finding",
					["recipeID"] = 80726
				},
				{
					["name"] = "Volcanic Potion",
					["recipeID"] = 80481
				}
			}
		},
		{
			["name"] = "Elixirs",
			["categoryID"] = 619,
			["groups"] = {
				{
					["name"] = "Elixir of Deep Earth",
					["recipeID"] = 80488
				},
				{
					["name"] = "Elixir of Impossible Accuracy",
					["recipeID"] = 80491
				},
				{
					["name"] = "Elixir of Mighty Speed",
					["recipeID"] = 80493
				},
				{
					["name"] = "Elixir of the Cobra",
					["recipeID"] = 80484
				},
				{
					["name"] = "Elixir of the Master",
					["recipeID"] = 80497
				},
				{
					["name"] = "Elixir of the Naga",
					["recipeID"] = 80480
				},
				{
					["name"] = "Ghost Elixir",
					["recipeID"] = 80477
				},
				{
					["name"] = "Prismatic Elixir",
					["recipeID"] = 80492
				}
			}
		},
		{
			["name"] = "Flasks",
			["categoryID"] = 620,
			["groups"] = {
				{
					["name"] = "Flask of Flowing Water",
					["recipeID"] = 94162
				},
				{
					["name"] = "Flask of Steelskin",
					["recipeID"] = 80719
				},
				{
					["name"] = "Flask of the Draconic Mind",
					["recipeID"] = 80720
				},
				{
					["name"] = "Flask of the Winds",
					["recipeID"] = 80721
				},
				{
					["name"] = "Flask of Titanic Strength",
					["recipeID"] = 80723
				}
			}
		},
		{
			["name"] = "Transmutation",
			["categoryID"] = 621,
			["groups"] = {
				{
					["name"] = "Transmute: Amberjewel",
					["recipeID"] = 80247
				},
				{
					["name"] = "Transmute: Demonseye",
					["recipeID"] = 80248
				},
				{
					["name"] = "Transmute: Dream Emerald",
					["recipeID"] = 80251
				},
				{
					["name"] = "Transmute: Ember Topaz",
					["recipeID"] = 80250
				},
				{
					["name"] = "Transmute: Inferno Ruby",
					["recipeID"] = 80245
				},
				{
					["name"] = "Transmute: Living Elements",
					["recipeID"] = 78866
				},
				{
					["name"] = "Transmute: Ocean Sapphire",
					["recipeID"] = 80246
				},
				{
					["name"] = "Transmute: Pyrium Bar",
					["recipeID"] = 80244
				},
				{
					["name"] = "Transmute: Shadowspirit Diamond",
					["recipeID"] = 80237
				},
				{
					["name"] = "Transmute: Truegold",
					["recipeID"] = 80243
				}
			}
		},
		{
			["name"] = "Trinkets",
			["categoryID"] = 622,
			["groups"] = {
				{
					["name"] = "Lifebound Alchemist Stone",
					["recipeID"] = 80508
				},
				{
					["name"] = "Quicksilver Alchemist Stone",
					["recipeID"] = 96253
				},
				{
					["name"] = "Vibrant Alchemist Stone",
					["recipeID"] = 96254
				},
				{
					["name"] = "Volatile Alchemist Stone",
					["recipeID"] = 96252
				}
			}
		},
		{
			["name"] = "Oils",
			["categoryID"] = 623,
			["groups"] = {
				{
					["name"] = "Deepstone Oil",
					["recipeID"] = 80486
				}
			}
		},
		{
			["name"] = "Mounts",
			["categoryID"] = 624,
			["groups"] = {
				{
					["name"] = "Vial of the Sands",
					["recipeID"] = 93328
				}
			}
		}
	})),
}));

-- Alchemy Item Database
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

-- Item Recipe Database
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
				if o.u ~= u and u ~= phase then
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
itemrecipe("Recipe: Elixir of Minor Agility", 2553, 3230);
itemrecipe("Recipe: Swiftness Potion", 2555, 2335);
itemrecipe("Recipe: Minor Magic Resistance Potion", 3393, 3172);
itemrecipe("Recipe: Potion of Curing", 3394, 3174);
itemrecipe("Recipe: Limited Invulnerability Potion", 3395, 3175);
itemrecipe("Recipe: Elixir of Lesser Agility", 3396, 2333);
itemrecipe("Recipe: Elixir of Fortitude", 3830, 3450);
itemrecipe("Recipe: Mighty Troll's Blood Potion", 3831, 3451);
itemrecipe("Recipe: Elixir of Detect Lesser Invisibility", 3832, 3453);
itemrecipe("Recipe: Discolored Healing Potion", 4597, 4508);
itemrecipe("Recipe: Lesser Stoneshield Potion", 4624, 4942);
itemrecipe("Recipe: Rage Potion", 5640, 6617);
itemrecipe("Recipe: Free Action Potion", 5642, 6624);
itemrecipe("Recipe: Great Rage Potion", 5643, 6618);
itemrecipe("Recipe: Holy Protection Potion", 6053, 7255);
itemrecipe("Recipe: Shadow Protection Potion", 6054, 7256);
itemrecipe("Recipe: Fire Protection Potion", 6055, 7257);
itemrecipe("Recipe: Frost Protection Potion", 6056, 7258);
itemrecipe("Recipe: Nature Protection Potion", 6057, 7259);
itemrecipe("Recipe: Shadow Oil", 6068, 3449);
itemrecipe("Recipe: Elixir of Ogre's Strength", 6211, 3188);
itemrecipe("Recipe: Elixir of Giant Growth", 6663, 8240);
itemrecipe("Recipe: Magic Resistance Potion", 9293, 11453);
itemrecipe("Recipe: Wildvine Potion", 9294, 11458);
itemrecipe("Recipe: Invisibility Potion", 9295, 11464);
itemrecipe("Recipe: Gift of Arthas", 9296, 11466);
itemrecipe("Recipe: Elixir of Dream Vision", 9297, 11468);
itemrecipe("Recipe: Elixir of Giants", 9298, 11472);
itemrecipe("Recipe: Elixir of Demonslaying", 9300, 11477);
itemrecipe("Recipe: Elixir of Shadow Power", 9301, 11476);
itemrecipe("Recipe: Ghost Dye", 9302, 11473);
itemrecipe("Recipe: Philosopher's Stone", 9303, 11459);
itemrecipe("Recipe: Transmute Iron to Gold", 9304, 11479);
itemrecipe("Recipe: Transmute Mithril to Truesilver", 9305, 11480);
itemrecipe("Recipe: Goblin Rocket Fuel", 10644, 11456);
itemrecipe("Recipe: Transmute Arcanite", 12958, 17187);
itemrecipe("Recipe: Mighty Rage Potion", 13476, 17552);
itemrecipe("Recipe: Superior Mana Potion", 13477, 17553);
itemrecipe("Recipe: Elixir of Superior Defense", 13478, 17554);
itemrecipe("Recipe: Elixir of the Sages", 13479, 17555);
itemrecipe("Recipe: Major Healing Potion", 13480, 17556);
itemrecipe("Recipe: Elixir of Brute Force", 13481, 17557);
itemrecipe("Recipe: Transmute Air to Fire", 13482, 17559);
itemrecipe("Recipe: Transmute Fire to Earth", 13483, 17560);
itemrecipe("Recipe: Transmute Earth to Water", 13484, 17561);
itemrecipe("Recipe: Transmute Water to Air", 13485, 17562);
itemrecipe("Recipe: Transmute Undeath to Water", 13486, 17563);
itemrecipe("Recipe: Transmute Water to Undeath", 13487, 17564);
itemrecipe("Recipe: Transmute Life to Earth", 13488, 17565);
itemrecipe("Recipe: Transmute Earth to Life", 13489, 17566);
itemrecipe("Recipe: Greater Stoneshield Potion", 13490, 17570);
itemrecipe("Recipe: Elixir of the Mongoose", 13491, 17571);
itemrecipe("Recipe: Purification Potion", 13492, 17572);
itemrecipe("Recipe: Greater Arcane Elixir", 13493, 17573);
itemrecipe("Recipe: Greater Fire Protection Potion", 13494, 17574);
itemrecipe("Recipe: Greater Frost Protection Potion", 13495, 17575);
itemrecipe("Recipe: Greater Nature Protection Potion", 13496, 17576);
itemrecipe("Recipe: Greater Arcane Protection Potion", 13497, 17577);
itemrecipe("Recipe: Greater Shadow Protection Potion", 13499, 17578);
itemrecipe("Recipe: Major Mana Potion", 13501, 17580);
itemrecipe("Recipe: Flask of Petrification", 13518, 17634);
itemrecipe("Recipe: Flask of the Titans", 13519, 17635);
itemrecipe("Recipe: Flask of Distilled Wisdom", 13520, 17636);
itemrecipe("Recipe: Flask of Supreme Power", 13521, 17637);
itemrecipe("Recipe: Flask of Chromatic Resistance", 13522, 17638);
itemrecipe("Recipe: Frost Oil", 14634, 3454);
itemrecipe("Recipe: Major Rejuvenation Potion", 18257, 22732);
applyevent(EVENTS.FEAST_OF_WINTER_VEIL, itemrecipe("Recipe: Elixir of Frost Power", 17709, 21923));
itemrecipe("Recipe: Mageblood Potion", 20011, 24365, PHASE_FOUR);
itemrecipe("Recipe: Greater Dreamless Sleep Potion", 20012, 24366, PHASE_FOUR, REMOVED_4_0_3);
itemrecipe("Recipe: Living Action Potion", 20013, 24367, PHASE_FOUR);
itemrecipe("Recipe: Major Troll's Blood Potion", 20014, 24368, PHASE_FOUR);
itemrecipe("Recipe: Transmute Elemental Fire", 20761, 25146, PHASE_FIVE);
itemrecipe("Recipe: Elixir of Greater Firepower", 21547, 26277, PHASE_FIVE_RECIPES);

-- #if AFTER TBC
-- TBC Recipes
itemrecipe("Recipe: Alchemist's Stone", 13517, 17632, TBC_PHASE_ONE);
itemrecipe("Recipe: Elixir of Camouflage", 22900, 28543, TBC_PHASE_ONE);
itemrecipe("Recipe: Sneaking Potion", 22901, 28546, TBC_PHASE_ONE);
itemrecipe("Recipe: Elixir of Major Frost Power", 22902, 28549, TBC_PHASE_ONE);
itemrecipe("Recipe: Insane Strength Potion", 22903, 28550, TBC_PHASE_ONE);
itemrecipe("Recipe: Elixir of the Searching Eye", 22904, 28552, TBC_PHASE_ONE);
itemrecipe("Recipe: Elixir of Major Agility", 22905, 28553, TBC_PHASE_ONE);
itemrecipe("Recipe: Shrouding Potion", 22906, 28554, TBC_PHASE_ONE);
itemrecipe("Recipe: Super Mana Potion", 22907, 28555, TBC_PHASE_ONE);
itemrecipe("Recipe: Elixir of Major Firepower", 22908, 28556, TBC_PHASE_ONE);
itemrecipe("Recipe: Elixir of Major Defense", 22909, 28557, TBC_PHASE_ONE);
itemrecipe("Recipe: Elixir of Major Shadow Power", 22910, 28558, TBC_PHASE_ONE);
itemrecipe("Recipe: Major Dreamless Sleep Potion", 22911, 28562, TBC_PHASE_ONE);
itemrecipe("Recipe: Heroic Potion", 22912, 28563, TBC_PHASE_ONE);
itemrecipe("Recipe: Haste Potion", 22913, 28564, TBC_PHASE_ONE);
itemrecipe("Recipe: Destruction Potion", 22914, 28565, TBC_PHASE_ONE);
itemrecipe("Recipe: Transmute Primal Air to Fire", 22915, 28566, TBC_PHASE_ONE);
itemrecipe("Recipe: Transmute Primal Earth to Water", 22916, 28567, TBC_PHASE_ONE);
itemrecipe("Recipe: Transmute Primal Fire to Earth", 22917, 28568, TBC_PHASE_ONE);
itemrecipe("Recipe: Transmute Primal Water to Air", 22918, 28569, TBC_PHASE_ONE);
itemrecipe("Recipe: Elixir of Major Mageblood", 22919, 28570, TBC_PHASE_ONE);
itemrecipe("Recipe: Major Fire Protection Potion", 22920, 28571, TBC_PHASE_ONE);
itemrecipe("Recipe: Major Frost Protection Potion", 22921, 28572, TBC_PHASE_ONE);
itemrecipe("Recipe: Major Nature Protection Potion", 22922, 28573, TBC_PHASE_ONE);
itemrecipe("Recipe: Major Arcane Protection Potion", 22923, 28575, TBC_PHASE_ONE);
itemrecipe("Recipe: Major Shadow Protection Potion", 22924, 28576, TBC_PHASE_ONE);
itemrecipe("Recipe: Major Holy Protection Potion", 22925, 28577, TBC_PHASE_ONE);
itemrecipe("Recipe: Elixir of Empowerment", 22926, 28578, TBC_PHASE_ONE);
itemrecipe("Recipe: Ironshield Potion", 22927, 28579, TBC_PHASE_ONE);
itemrecipe("Recipe: Transmute Primal Might", 23574, 29688, TBC_PHASE_ONE);
itemrecipe("Recipe: Elixir of Major Agility", 24001, 28553, TBC_PHASE_ONE);
itemrecipe("Recipe: Transmute Earthstorm Diamond", 25869, 32765, TBC_PHASE_ONE);
itemrecipe("Recipe: Transmute Skyfire Diamond", 25870, 32766, TBC_PHASE_ONE);
itemrecipe("Recipe: Transmute Skyfire Diamond", 29232, 32766, TBC_PHASE_ONE);
itemrecipe("Recipe: Transmute Primal Fire to Earth", 30443, 28568, TBC_PHASE_ONE);
itemrecipe("Recipe: Flask of the Titans", 31354, 17635, TBC_PHASE_ONE, true);
itemrecipe("Recipe: Flask of Supreme Power", 31355, 17637, TBC_PHASE_ONE, true);
itemrecipe("Recipe: Flask of Distilled Wisdom", 31356, 17636, TBC_PHASE_ONE, true);
itemrecipe("Recipe: Flask of Chromatic Resistance", 31357, 17638, TBC_PHASE_ONE, true);
itemrecipe("Recipe: Fel Strength Elixir", 31680, 38960, TBC_PHASE_ONE);
itemrecipe("Recipe: Fel Regeneration Potion", 31681, 38962, TBC_PHASE_ONE);
itemrecipe("Recipe: Fel Mana Potion", 31682, 38961, TBC_PHASE_ONE);
itemrecipe("Recipe: Earthen Elixir", 32070, 39637, TBC_PHASE_ONE);
itemrecipe("Recipe: Elixir of Ironskin", 32071, 39639, TBC_PHASE_ONE);
itemrecipe("Recipe: Flask of Chromatic Wonder", 33209, 42736, TBC_PHASE_THREE, REMOVED_5_0_4);

itemrecipe("Recipe: Elixir of Empowerment", 35294, 28578, TBC_PHASE_FIVE, true);
itemrecipe("Recipe: Haste Potion", 35295, 28564, TBC_PHASE_FIVE, true);
itemrecipe("Recipe: Guardian's Alchemist Stone", 35752, 47046, TBC_PHASE_FIVE);
itemrecipe("Recipe: Sorcerer's Alchemist Stone", 35753, 47048, TBC_PHASE_FIVE);
itemrecipe("Recipe: Redeemer's Alchemist Stone", 35754, 47049, TBC_PHASE_FIVE);
itemrecipe("Recipe: Assassin's Alchemist Stone", 35755, 47050, TBC_PHASE_FIVE);
-- #endif

-- #if AFTER WRATH
-- Wrath Recipes
itemrecipe("Recipe: Flask of the North", 47507, 67025, WRATH_PHASE_ONE);	-- NYI, taught by trainers
itemrecipe("Recipe: Mighty Arcane Protection Potion", 44564, 53936, WRATH_PHASE_ONE);
itemrecipe("Recipe: Mighty Fire Protection Potion", 44565, 53939, WRATH_PHASE_ONE);
itemrecipe("Recipe: Mighty Frost Protection Potion", 44566, 53937, WRATH_PHASE_ONE);
itemrecipe("Recipe: Mighty Nature Protection Potion", 44567, 53942, WRATH_PHASE_ONE);
itemrecipe("Recipe: Mighty Shadow Protection Potion", 44568, 53938, WRATH_PHASE_ONE);
-- #endif

-- These items never made it in.
recipeCache = nil;	-- Invalidate the cache.
root(ROOTS.NeverImplemented, {
	filter(RECIPES, {
		itemrecipe("Recipe: Elixir of Tongues", 2556, 2336);
		itemrecipe("Deprecated Recipe: Elixir of Fortitude", 2554);
		itemrecipe("Recipe: Cowardly Flight Potion", 5641);
		itemrecipe("Recipe: Greater Holy Protection Potion", 13500);
		itemrecipe("Recipe: Mad Alchemist's Potion", 34481);

		-- #if BEFORE TBC
		itemrecipe("Recipe: Alchemist's Stone", 13517, 17632);
		-- #endif
	}),
});
-- #endif