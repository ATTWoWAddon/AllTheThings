---------------------------------------------------------------
--     N E V E R    I M P L E M E N T E D    M O D U L E     --
---------------------------------------------------------------
root(ROOTS.NeverImplemented, n(PROFESSIONS, {
	prof(HERBALISM, {
		filter(MISC, {
			expansion(EXPANSION.DF, {
				-- 10.0.2
				expansion(EXPANSION.DF, patch(0,2), bubbleDownSelf({ ["timeline"] = { CREATED_10_0_2 } }, {
					i(194041),	-- Driftbloom Sprout
					i(194054),	-- Dredged Seedling
					i(194081),	-- Mutated Root
					i(194080),	-- Peculiar Bud
					i(194055),	-- Primordial Soil
					i(194061),	-- Suffocating Spores
				})),
			}),
		}),
		n(CRAFTABLES, {
			expansion(EXPANSION.WOD, {
				-- 6.0.2
				expansion(EXPANSION.WOD, patch(0,2), bubbleDownSelf({ ["timeline"] = { CREATED_6_0_2 } }, {
					i(108334),	-- Arthas' Tears Petal
				})),
			}),

			expansion(EXPANSION.TWW, {
				-- 11.0.0
				expansion(EXPANSION.TWW, patch(0,0,1), bubbleDownSelf({ ["timeline"] = { CREATED_11_0_0 } }, {
					i(217105),	-- Refine Khaz Algar Herbs
				})),
			}),
		}),
		filter(RECIPES, {
			expansion(EXPANSION.CLASSIC, {
				-- 1.x.x
				n(P1xx, {
					r(8387),	-- Find Herbs [Rank 2]
					r(2369),	-- Herb Gathering
					r(2371),	-- Herb Gathering
				}),
			}),
			expansion(EXPANSION.TBC, {
				-- 2.0.1
				expansion(EXPANSION.TBC, patch(0,1), bubbleDownSelf({ ["timeline"] = { CREATED_2_0_1 } }, {
					r(32605),	-- Herb Gathering
				})),
			}),
			expansion(EXPANSION.DF, {
				-- 10.0.0
				expansion(EXPANSION.DF, patch(0,0,1), bubbleDownSelf({ ["timeline"] = { CREATED_10_0_0 } }, {
					r(382582),	-- Opening
				})),
			}),
		}),
	}),
}));
