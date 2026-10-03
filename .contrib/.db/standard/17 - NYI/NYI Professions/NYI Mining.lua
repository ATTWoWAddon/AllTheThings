---------------------------------------------------------------
--     N E V E R    I M P L E M E N T E D    M O D U L E     --
---------------------------------------------------------------
root(ROOTS.NeverImplemented, n(PROFESSIONS, {
	prof(MINING, {
		filter(PROFESSION_EQUIPMENT, {
			expansion(EXPANSION.DF, {
				-- 10.0.7
				expansion(EXPANSION.DF, patch(0,7), bubbleDownSelf({ ["timeline"] = { CREATED_10_0_7 } }, {
					i(204677),	-- Ogre Mining Pick
				})),
			}),
		}),
		filter(MISC, {
			expansion(EXPANSION.DF, {
				-- 10.0.2
				expansion(EXPANSION.DF, patch(0,2), bubbleDownSelf({ ["timeline"] = { CREATED_10_0_2 } }, {
					i(194063),	-- Glowing Fragment
					i(194064),	-- Intricate Geode
					i(194078),	-- Perfect Draconium Scale
					i(194079),	-- Pure Serevite Nugget
				})),

				-- 10.0.7
				expansion(EXPANSION.DF, patch(0,7), bubbleDownSelf({ ["timeline"] = { CREATED_10_0_7 } }, {
					i(204632),	-- Tectonic Rock Fragment
				})),
			}),
			expansion(EXPANSION.TWW, {
				-- 11.0.0
				expansion(EXPANSION.TWW, patch(0,0,1), bubbleDownSelf({ ["timeline"] = { CREATED_11_0_0 } }, {
					i(210942),	-- Byproduct 01 - Light
					i(210943),	-- Byproduct 02 - Dark
					i(210940),	-- Null Stone
					i(210941),	-- Null Stone
				})),
			}),
		}),
		n(CRAFTABLES, {
		}),
		filter(RECIPES, {
			expansion(EXPANSION.CLASSIC, {
				-- 1.x.x
				n(P1xx, {
					r(8388),	-- Find Minerals [Rank 2]
					r(2577),	-- Mining
					r(2578),	-- Mining
					r(2579),	-- Mining
					r(8296),	-- Mass Smelt Copper OLD
					r(12680),	-- Journeyman Gemology
					r(12681),	-- Gemology - Copper (DND)
					r(12682),	-- Gemology - Tin (DND)
					r(12687),	-- Expert Gemology
					r(12689),	-- Gemology - Iron (DND)
					r(12690),	-- Gemology - Mithril (DND)
					r(12691),	-- Artisan Gemology
				}),
			}),
			expansion(EXPANSION.TBC, {
				-- 2.0.1
				expansion(EXPANSION.TBC, patch(0,1), bubbleDownSelf({ ["timeline"] = { CREATED_2_0_1 } }, {
					r(32606),	-- Mining
				})),
			}),
			expansion(EXPANSION.WRATH, {
				-- 3.0.2
				expansion(EXPANSION.WRATH, patch(0,2), bubbleDownSelf({ ["timeline"] = { CREATED_3_0_2 } }, {
					r(49253),	-- Unkown
					r(49254),	-- Unkown
					r(49255),	-- Unkown
					r(49260),	-- Unkown
					r(53417),	-- Unkown
				})),
			}),
			expansion(EXPANSION.LEGION, {
				-- 7.0.3
				expansion(EXPANSION.LEGION, patch(0,3), bubbleDownSelf({ ["timeline"] = { CREATED_7_0_3 } }, {
					-- Without SpellID attached
					i(124475),	-- Mining Technique: Felslate Deposit
					i(124476),	-- Mining Technique: Felslate Deposit
					i(124477),	-- Mining Technique: Felslate Deposit
					i(124479),	-- Mining Technique: Felslate Seam
					i(124480),	-- Mining Technique: Felslate Seam
					i(124481),	-- Mining Technique: Felslate Seam
					i(124487),	-- Mining Technique: Infernal Brimstone
					i(124488),	-- Mining Technique: Infernal Brimstone
					i(124463),	-- Mining Technique: Leystone Deposit
					i(124464),	-- Mining Technique: Leystone Deposit
					i(124465),	-- Mining Technique: Leystone Deposit
					i(124467),	-- Mining Technique: Leystone Seam
					i(124468),	-- Mining Technique: Leystone Seam
					i(124469),	-- Mining Technique: Leystone Seam
					i(124471),	-- Mining Technique: Living Leystone
					i(124472),	-- Mining Technique: Living Leystone
					i(124473),	-- Mining Technique: Living Leystone
					i(124483),	-- Mining Technique: Living Seam
					i(124484),	-- Mining Technique: Living Seam
					i(124485),	-- Mining Technique: Living Seam
				})),
			}),
			expansion(EXPANSION.SL, {
				-- 9.0.1
				expansion(EXPANSION.SL, patch(0,1), bubbleDownSelf({ ["timeline"] = { CREATED_9_0_1 } }, {
					r(308153),	-- Elethium Ore
					r(308130),	-- Laestrite Ore
					r(308150),	-- Oxxein Ore
					r(308151),	-- Phaedrum Ore
					r(308152),	-- Sinvyr Ore
					r(308131),	-- Solenium Ore
				})),
			}),
			expansion(EXPANSION.DF, {
				-- 10.0.0
				expansion(EXPANSION.DF, patch(0,0,1), bubbleDownSelf({ ["timeline"] = { CREATED_10_0_0 } }, {
					r(382586),	-- Opening
				})),
			}),
			expansion(EXPANSION.TWW, {
				-- 11.0.0
				expansion(EXPANSION.TWW, patch(0,0,1), bubbleDownSelf({ ["timeline"] = { CREATED_11_0_0 } }, {
					r(423882),	-- Overload Test Deposit
				})),
			}),
		}),
	}),
}));
