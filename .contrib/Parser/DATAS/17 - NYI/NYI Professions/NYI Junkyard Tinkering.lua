---------------------------------------------------------------
--     N E V E R    I M P L E M E N T E D    M O D U L E     --
---------------------------------------------------------------
-- #if AFTER 8.2.0
root(ROOTS.NeverImplemented, n(PROFESSIONS, {
	prof(JUNKYARD_TINKERING, {
		n(CRAFTABLES, {
			expansion(EXPANSION.BFA, {
				-- 8.2.0
				expansion(EXPANSION.BFA, patch(2,0), bubbleDownSelf({ ["timeline"] = { CREATED_8_2_0 } }, {
					i(168221),	-- Encrypted Radio Receiver
					i(137225),	-- Thunderfury, Blessed Blade of the Windseeker [Weird...]
				})),
			}),
		}),
		filter(RECIPES, {
			expansion(EXPANSION.BFA, {
				-- 8.2.0
				expansion(EXPANSION.BFA, patch(2,0), bubbleDownSelf({ ["timeline"] = { CREATED_8_2_0 } }, {
					r(296386),	-- Encrypted Radio Receiver
					r(296388),	-- Disposable Radio
					r(300465),	-- Pocket-Sized Computation Device
					r(300280),	-- TK34[DNT] \\ TK34
					r(300281),	-- TK35[DNT] \\ TK35
					r(300282),	-- TK36[DNT] \\ TK36
					r(300283),	-- TK37[DNT] \\ TK37
					r(300284),	-- TK38[DNT] \\ TK38
					r(300285),	-- TK39[DNT] \\ TK39
					r(300286),	-- TK40[DNT] \\ TK40
					r(300287),	-- TK41[DNT] \\ TK41
					r(300288),	-- TK42[DNT] \\ TK42
					r(300289),	-- TK43[DNT] \\ TK43
					r(300290),	-- TK44[DNT] \\ TK44
				})),
			}),
		}),
	}),
}));
-- #endif
