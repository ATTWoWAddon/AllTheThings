---------------------------------------------------------------
--     N E V E R    I M P L E M E N T E D    M O D U L E     --
---------------------------------------------------------------
-- #if AFTER 9.2.0
root(ROOTS.NeverImplemented, n(PROFESSIONS, {
	prof(PROTOFORM_SYNTHESIS, {
		filter(RECIPES, {
			expansion(EXPANSION.SL, {
				-- 9.2.0
				expansion(EXPANSION.SL, patch(2,0), bubbleDownSelf({ ["timeline"] = { CREATED_9_2_0 } }, {
					r(365061),	-- Patient Bufonid
					i(189470),	-- Schematic: Patient Bufonid
				})),
			}),
		}),
	}),
}));
-- #endif
