---------------------------------------------------------------
--     N E V E R    I M P L E M E N T E D    M O D U L E     --
---------------------------------------------------------------
root(ROOTS.NeverImplemented, n(PROFESSIONS, {
	prof(ENCHANTING, {
		n(CRAFTABLES, {
			expansion(EXPANSION.WRATH, {
				-- 3.0.2
				expansion(EXPANSION.WRATH, patch(0,2), bubbleDownSelf({ ["timeline"] = { CREATED_3_0_2 } }, {
					i(34139, {	-- Enchanted Crimson Wand
						["sourceID"] = 15755,
					}),
					i(34139, {	-- Enchanted Crimson Wand
						["sourceID"] = 170101,
					}),
					i(34138, {	-- Enchanted White Wand
						["sourceID"] = 15754,
					}),
					i(34138, {	-- Enchanted White Wand
						["sourceID"] = 170100,
					}),
					i(44451),	-- Runed Cobalt Rod
				})),
			}),
			expansion(EXPANSION.CATA, {
				-- 4.3.0
				expansion(EXPANSION.CATA, patch(3,0), bubbleDownSelf({ ["timeline"] = { CREATED_4_3_0 } }, {
					i(72070),	-- Enchant Gloves - Assault
				})),
			}),
			expansion(EXPANSION.MOP, {
				-- 5.0.4
				expansion(EXPANSION.MOP, patch(0,4), bubbleDownSelf({ ["timeline"] = { CREATED_5_0_4 } }, {
					i(74251),	-- Greater Mysterious Essence
				})),
			}),
			expansion(EXPANSION.SL, {
				-- 9.0.1
				expansion(EXPANSION.SL, patch(0,1), bubbleDownSelf({ ["timeline"] = { CREATED_9_0_1 } }, {
					i(172429),	-- [DNT] REUSE ME \\ Flamesteel Rod \\ Enchanting - Modified Crafting Reagent 01
					i(172430),	-- Enchanting - Modified Crafting Reagent 02
					i(172431),	-- Enchanting - Modified Crafting Reagent 03
					i(172432),	-- Enchanting - Modified Crafting Reagent 04
					i(172440),	-- Enchanting Reagent 04
					i(172441),	-- Enchanting Reagent 05
					i(172442),	-- Enchanting Reagent 06
					i(172443),	-- Enchanting Reagent 07
					i(172444),	-- Enchanting Reagent 08
					i(172433),	-- [DNT] REUSE ME \\ Enchanting - Modified Crafting Reagent 05
					i(172434),	-- [DNT] REUSE ME \\ Enchanting - Modified Crafting Reagent 06
					i(172435),	-- [DNT] REUSE ME \\ Enchanting - Modified Crafting Reagent 07
					i(172436),	-- [DNT] REUSE ME \\ Enchanting - Modified Crafting Reagent 08
				})),
			}),
			expansion(EXPANSION.DF, {
				-- 10.0.0
				expansion(EXPANSION.DF, patch(0,01), bubbleDownSelf({ ["timeline"] = { CREATED_10_0_0 } }, {
					i(191422),	-- Crystal Magical Lockpick
					i(198483),	-- jrz 10.0 enchanting test [DNT]
					i(198677),	-- jrz test vellum quality 1 [DNT]
					i(198678),	-- jrz test vellum quality 2 [DNT]
					i(198679),	-- jrz test vellum quality 3 [DNT]
				})),
			}),
			expansion(EXPANSION.TWW, {
				-- 11.1.0
				expansion(EXPANSION.TWW, patch(1,0), bubbleDownSelf({ ["timeline"] = { CREATED_11_1_0 } }, {
					i(230985),	-- Nascent Runed Undermine Crest
					i(230986),	-- Nascent Gilded Undermine Crest
					i(230987),	-- Nascent Weathered Undermine Crest
				})),

				-- 11.1.5
				expansion(EXPANSION.TWW, patch(1,5), bubbleDownSelf({ ["timeline"] = { CREATED_11_1_5 } }, {
					i(238679),	-- Enchant Weapon - Echoing Void
					i(239085),	-- Enchant Weapon - Gushing Wound
					i(239079),	-- Enchant Weapon - Infinite Stars
					i(238404),	-- Enchant Weapon - Twilight Devastation
					i(239089),	-- Enchant Weapon - Twisted Appendage
					i(239094),	-- Enchant Weapon - Void Ritual
				})),
			}),
		}),
		filter(RECIPES, {
			expansion(EXPANSION.CLASSIC, {
				-- 1.x.x
				n(P1xx, {
					r(7864),	-- Enchant Boots - Minor Stamina
					r(7769),	-- CLASSIC: Imbue Bracers - Minor Wisdom OLD
					r(7855),	-- CLASSIC: Imbue Chest - Absorb
					r(7853),	-- CLASSIC: Imbue Chest - Lesser Spirit
					r(7448),	-- CLASSIC: Imbue Chest - Lesser Absorb
					r(7865),	-- CLASSIC: Imbue Cloak - Lesser Protection
					r(7439),	-- CLASSIC: Imbue Cloak - Minor Resistance
					r(7434),	-- CLASSIC: Imbue Weapon - Beastslayer
					r(22434),	-- Charged Scale of Onyxia
					-- With SpellID attached
					i(6376),	-- Formula: Enchant Boots - Minor Stamina
					i(6343),	-- Formula: Imbue Chest - Minor Spirit
					-- Without SpellID attached
					i(6222),	-- Formula: Imbue Chest - Minor Spirit
					i(6345),	-- Formula: Imbue Cloak - Protection
				}),
			}),
			expansion(EXPANSION.TBC, {
				-- 2.0.1
				expansion(EXPANSION.TBC, patch(0,1), bubbleDownSelf({ ["timeline"] = { CREATED_2_0_1 } }, {
					-- With SpellID attached
					i(22564),	-- Formula: Arcane Dust
					-- Without SpellID attached
					i(22546),	-- Formula: Enchant Chest - Exceptional Mana
				})),
			}),
			expansion(EXPANSION.WRATH, {
				-- 3.0.2
				expansion(EXPANSION.WRATH, patch(0,2), bubbleDownSelf({ ["timeline"] = { CREATED_3_0_2 } }, {
					r(44612),	-- Greater Blasting
					r(60618),	-- Runed Cobalt Rod
					r(44497),	-- Unknown
					r(44496),	-- Unknown
					r(44516),	-- Unknown
					r(44515),	-- Unknown
					r(44558),	-- Unknown
					r(44597),	-- Unknown
					r(44613),	-- Unknown
					r(44632),	-- Unknown
					r(44634),	-- Unknown
					r(44638),	-- Unknown
					r(44637),	-- Unknown
					r(47903),	-- Unknown
					r(47908),	-- Unknown
					-- Without SpellID attached
					i(36837),	-- Formula: 02 Enchanting Recipe Template (Good)
					i(36840),	-- Formula: 01 Enchanting Recipe Template (Standard)
					i(36838),	-- Formula: 03 Enchanting Recipe Template (Superior)
					i(36839),	-- Formula: 04 Enchanting Recipe Template (Epic)
					i(37326),	-- Formula: Enchant Bracer - Major Versatility
					i(37342),	-- Formula: Enchant Gloves - Greater Blasting
				})),

				-- 3.1.0
				expansion(EXPANSION.WRATH, patch(1,0), bubbleDownSelf({ ["timeline"] = { CREATED_3_1_0 } }, {
					r(62257),	-- Titanguard
				})),

				-- 3.2.0
				expansion(EXPANSION.WRATH, patch(2,0), bubbleDownSelf({ ["timeline"] = { CREATED_3_2_0 } }, {
					i(37335),	-- Formula: Enchant Cloak - Superior Agility
				})),

				-- 3.2.2
				expansion(EXPANSION.WRATH, patch(2,2), bubbleDownSelf({ ["timeline"] = { CREATED_3_2_2 } }, {
					-- Without SpellID attached
					i(37348),	-- Formula: Enchant Cloak - Haste
				})),

				-- 3.3.3
				expansion(EXPANSION.WRATH, patch(3,3), bubbleDownSelf({ ["timeline"] = { CREATED_3_3_3 } }, {
					-- Without SpellID attached
					i(37346),	-- Formula: Enchant Bracer - Expertise
					i(37343),	-- Formula: Enchant Weapon - Exceptional Agility
					i(37329),	-- Formula: Enchant Weapon - Exceptional Versatility
				})),

				-- 3.3.5
				expansion(EXPANSION.WRATH, patch(3,5), bubbleDownSelf({ ["timeline"] = { CREATED_3_3_5 } }, {
					-- Without SpellID attached
					i(37341),	-- Formula: Enchant Boots - Superior Agility
					i(37337),	-- Formula: Enchant Bracer - Greater Stats
					i(37336),	-- Formula: Enchant Chest - Greater Dodge
				})),
			}),
			expansion(EXPANSION.MOP, {
				-- 5.0.4
				expansion(EXPANSION.MOP, patch(0,4), bubbleDownSelf({ ["timeline"] = { CREATED_5_0_4 } }, {
					-- Without SpellID attached
					i(84582),	-- Formula: Enchant Weapon - Windsong
				})),
			}),
			expansion(EXPANSION.WOD, {
				-- 6.0.2
				expansion(EXPANSION.WOD, patch(0,2), bubbleDownSelf({ ["timeline"] = { CREATED_6_0_2 } }, {
					r(178241),		-- Temporal Crystal
					r(158144),		-- Unknown
					r(158882),		-- Unknown
					r(158890),		-- Unknown
					r(158891),		-- Unknown
					r(158897),		-- Unknown
					r(158904),		-- Unknown
					r(158905),		-- Unknown
					r(158912),		-- Unknown
					r(158919),		-- Unknown
				})),

				-- 6.1.0
				expansion(EXPANSION.WOD, patch(1,0), bubbleDownSelf({ ["timeline"] = { CREATED_6_1_0 } }, {
					r(181870),		-- Illusion: Holy Infusion
				})),
			}),
			expansion(EXPANSION.LEGION, {
				-- 7.0.3
				expansion(EXPANSION.LEGION, patch(0,3), bubbleDownSelf({ ["timeline"] = { CREATED_7_0_3 } }, {
					-- Without SpellID attached
					i(128566),		-- Formula: Binding of Critical Strike [Rank 1]
					i(128567),		-- Formula: Binding of Haste [Rank 1]
					i(128568),		-- Formula: Binding of Mastery [Rank 1]
					i(128569),		-- Formula: Binding of Versatility [Rank 1]
					i(128623),		-- Formula: Enchanted Pen
					i(141913),		-- Formula: Mark of the Ancient Priestess [Rank 1]
					i(128576),		-- Formula: Mark of the Claw [Rank 1]
					i(128577),		-- Formula: Mark of the Distant Army [Rank 1]
					i(141911),		-- Formula: Mark of the Heavy Hide [Rank 1]
					i(128578),		-- Formula: Mark of the Hidden Satyr [Rank 1]
					i(141912),		-- Formula: Mark of the Trained Soldier [Rank 1]
					i(128571),		-- Formula: Word of Agility [Rank 1]
					i(128562),		-- Formula: Word of Critical Strike [Rank 1]
					i(128563),		-- Formula: Word of Haste [Rank 1]
					i(128572),		-- Formula: Word of Intellect [Rank 1]
					i(128564),		-- Formula: Word of Mastery [Rank 1]
					i(128570),		-- Formula: Word of Strength [Rank 1]
					i(128565),		-- Formula: Word of Versatility [Rank 1]
				})),
			}),
			expansion(EXPANSION.BFA, {
				-- 8.0.1
				expansion(EXPANSION.BFA, patch(0,1), bubbleDownSelf({ ["timeline"] = { CREATED_8_0_1 } }, {
					r(269720),	-- Honorable Combatant's Salutary Scepter [Rank 1]
					r(269721),	-- Honorable Combatant's Salutary Scepter [Rank 2]
					r(269722),	-- Honorable Combatant's Salutary Scepter [Rank 3]
					r(265107),	-- Talanji's Salutary Scepter [Rank 1]
					r(265108),	-- Talanji's Salutary Scepter [Rank 2]
					r(265109),	-- Talanji's Salutary Scepter [Rank 2]
				})),

				-- 8.1.0
				expansion(EXPANSION.BFA, patch(1,0), bubbleDownSelf({ ["timeline"] = { CREATED_8_1_0 } }, {
					r(286666),	-- Breath to Expulsom
				})),

				-- 8.2.0
				expansion(EXPANSION.BFA, patch(2,0), bubbleDownSelf({ ["timeline"] = { CREATED_8_2_0 } }, {
					-- Without SpellID attached
					i(168450),	-- Formula: Enchant Ring - Accord of Critical Strike
					i(168451),	-- Formula: Enchant Ring - Accord of Haste
					i(168452),	-- Formula: Enchant Ring - Accord of Mastery
					i(168453),	-- Formula: Enchant Ring - Accord of Versatility
					i(168584),	-- Formula: REUSE ME [MTMM]
					i(168585),	-- Formula: REUSE ME [MTMM]
					i(168587),	-- Formula: REUSE ME [MTMM]
					i(168588),	-- Formula: REUSE ME [MTMM]
					i(168590),	-- Formula: REUSE ME [MTMM]
					i(169537),	-- Formula: REUSE ME [MTMM] (DNT)
				})),

				-- 8.3.0
				expansion(EXPANSION.BFA, patch(3,0), bubbleDownSelf({ ["timeline"] = { CREATED_8_3_0 } }, {
					-- Without SpellID attached
					i(177964),	-- Formula: Enchant Weapon - Force Multiplier
				})),
			}),
			expansion(EXPANSION.SL, {
				-- 9.0.1
				expansion(EXPANSION.SL, patch(0,1), bubbleDownSelf({ ["timeline"] = { CREATED_9_0_1 } }, {
					r(309628),	--	9.0 Enchanting - Modified Crafting Reagent 01
					r(309629),	--	9.0 Enchanting - Modified Crafting Reagent 02
					r(309630),	--	9.0 Enchanting - Modified Crafting Reagent 03
					r(309631),	--	9.0 Enchanting - Modified Crafting Reagent 04
					r(309632),	--	9.0 Enchanting - Modified Crafting Reagent 05
					r(309633),	--	9.0 Enchanting - Modified Crafting Reagent 06
					r(309634),	--	9.0 Enchanting - Modified Crafting Reagent 07
					r(309635),	--	9.0 Enchanting - Modified Crafting Reagent 08
					r(343682),	--	Crafter's Mark III
					r(343681),	--	Crafter's Mark IV
					-- Without SpellID attached
					i(182666),	--	Formula: Enchanted Elethium Bar
					i(183866),	--	Formula: Crafter's Mark III
				})),
			}),
			expansion(EXPANSION.DF, {
				-- 10.0.0
				expansion(EXPANSION.DF, patch(0,01), bubbleDownSelf({ ["timeline"] = { CREATED_10_0_0 } }, {
					r(382580),	-- Opening
					r(391200),	-- Wisp of Tyr
					r(383736),	-- Unknown
					-- With SpellID attached
					i(198779),	-- Formula: Crystal Magical Lockpick (RECIPE!)
				})),

				-- 10.2.6
				expansion(EXPANSION.DF, patch(2,6), bubbleDownSelf({ ["timeline"] = { CREATED_10_2_6 } }, {
					-- Without SpellID attached
					i(211525),	-- Formula: Enchanted Aspect's Awakened Crest
					i(211526),	-- Formula: Enchanted Whelpling's Awakened Crest
					i(211524),	-- Formula: Enchanted Wyrm's Awakened Crest
				})),
			}),
			expansion(EXPANSION.TWW, {
				-- 11.0.2
				expansion(EXPANSION.TWW, patch(0,2), bubbleDownSelf({ ["timeline"] = { CREATED_11_0_2 } }, {
					r(455488),	-- Glimmering Haste
				})),

				-- 11.1.0
				expansion(EXPANSION.TWW, patch(1,0), bubbleDownSelf({ ["timeline"] = { CREATED_11_1_0 } }, {
					-- Without SpellID attached
					i(230931),	-- Formula: Enchanted Weathered Undermine Crest
					i(230932),	-- Formula: Enchanted Runed Undermine Crest
					i(230933),	-- Formula: Enchanted Gilded Undermine Crest
				})),

				-- 11.1.5
				expansion(EXPANSION.TWW, patch(1,5), bubbleDownSelf({ ["timeline"] = { CREATED_11_1_5 } }, {
					r(1227288),	-- Greater Rune of Gushing Wound
					r(1227206),	-- Greater Rune of Infinite Stars
					r(1225873),	-- Greater Rune of the Echoing Void
					r(1227294),	-- Greater Rune of the Twisted Appendage
					r(1227311),	-- Greater Rune of the Void Ritual
					r(1225074),	-- Lesser Rune of Twilight Devastation
					-- Without SpellID attached
					i(238683),	-- Formula: Enchant Weapon - Echoing Void
					i(239087),	-- Formula: Enchant Weapon - Gushing Wound
					i(239081),	-- Formula: Enchant Weapon - Infinite Stars
					i(238406),	-- Formula: Enchant Weapon - Twilight Devastation
					i(239091),	-- Formula: Enchant Weapon - Twisted Appendage
					i(239096),	-- Formula: Enchant Weapon - Void Ritual
				})),
			}),
		}),
	}),
}));