---------------------------------------------------------------
--     N E V E R    I M P L E M E N T E D    M O D U L E     --
---------------------------------------------------------------
root(ROOTS.NeverImplemented, n(PROFESSIONS, {
	prof(SKINNING, {
		filter(MISC, {
			expansion(EXPANSION.DF, {
				-- 10.0.2
				expansion(EXPANSION.DF, patch(0,2), bubbleDownSelf({ ["timeline"] = { CREATED_10_0_2 } }, {
					i(194076),	-- Exotic Resilient Leather
					i(194067),	-- Festering Carcass
					i(194066),	-- Frigid Frostfur Pelt
					i(194077),	-- Pristine Adamant Scales
					i(194068),	-- Progenitor Scales
					i(194040),	-- Slateskin Hide
				})),
			}),
		}),
		n(CRAFTABLES, {
			expansion(EXPANSION.SL, {
				-- 9.0.1
				expansion(EXPANSION.SL, patch(0,1), bubbleDownSelf({ ["timeline"] = { CREATED_9_0_1 } }, {
					i(177279),	-- Gaunt Sinew
				})),
			}),
		}),
		filter(RECIPES, {
			expansion(EXPANSION.WRATH, {
				-- 3.0.1
				expansion(EXPANSION.WRATH, patch(0,1), bubbleDownSelf({ ["timeline"] = { CREATED_3_0_2 } }, {
					r(47429),	--
				})),
			}),
			expansion(EXPANSION.LEGION, {
				-- 7.0.3
				expansion(EXPANSION.LEGION, patch(0,3), bubbleDownSelf({ ["timeline"] = { CREATED_7_0_3 } }, {
					r(205243),	-- Skinning
				})),
			}),
			expansion(EXPANSION.DF, {
				-- 10.0.0
				expansion(EXPANSION.DF, patch(0,0,1), bubbleDownSelf({ ["timeline"] = { CREATED_10_0_0 } }, {
					r(382587),	-- Opening
				})),
			}),
		}),
	}),
}));
