---------------------------------------------------------------
--     N E V E R    I M P L E M E N T E D    M O D U L E     --
---------------------------------------------------------------
-- #if AFTER SL
root(ROOTS.NeverImplemented, n(PROFESSIONS, {
	prof(ABOMINABLE_STITCHING, {
		n(CRAFTABLES, {
			expansion(EXPANSION.SL, {
				-- 9.0.1
				expansion(EXPANSION.SL, patch(0,1), bubbleDown({ ["timeline"] = { CREATED_9_0_1 } }, {
					i(183413),	-- Ensemble: Stitched Alacrity of Maldraxxus
					i(183411),	-- Ensemble: Stitched Authority of Maldraxxus
					i(183414),	-- Ensemble: Stitched Guile of Maldraxxus
					i(183415),	-- Ensemble: Stitched Rationale of Maldraxxus
				})),
			}),
		}),
		filter(RECIPES, {
			expansion(EXPANSION.SL, {
				-- 9.0.1
				expansion(EXPANSION.SL, patch(0,1), bubbleDown({ ["timeline"] = { CREATED_9_0_1 } }, {
					r(341500),	-- Construct Ensemble: Stitched Alacrity of Maldraxxus
					r(341498),	-- Construct Ensemble: Stitched Authority of Maldraxxus
					r(341502),	-- Construct Ensemble: Stitched Guile of Maldraxxus
					r(341504),	-- Construct Ensemble: Stitched Rationale of Maldraxxus
					r(342895),	-- Intellectuals Monocle
				})),

				-- 9.0.2
				expansion(EXPANSION.SL, patch(0,2), bubbleDown({ ["timeline"] = { CREATED_9_0_2 } }, {
					r(344765),	-- Pumpkin Head
				})),
			}),
		}),
	}),
}));
-- #endif
