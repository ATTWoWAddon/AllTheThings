---------------------------------------------------------------
--     N E V E R    I M P L E M E N T E D    M O D U L E     --
---------------------------------------------------------------
-- #if AFTER 11.1.0
root(ROOTS.NeverImplemented, n(CAMPSITES, {
	expansion(EXPANSION.TWW, {
		-- 11.2.0
		expansion(EXPANSION.TWW, patch(2,0), bubbleDownSelf({ ["timeline"] = { CREATED_11_2_0 } }, {
			campsite(99),	-- Adventurer's Rest
			campsite(110),	-- Test Example from Scratch
			campsite(111),	-- Adventurer's Rest (Test)
		})),
	}),
}));
-- #endif
