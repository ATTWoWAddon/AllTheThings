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
					i(137225),	-- Thunderfury, Blessed Blade of the Windseeker
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
					r(300280),	-- TK34[DNT]
					r(300281),	-- TK35[DNT]
					r(300282),	-- TK36[DNT]
					r(300283),	-- TK37[DNT]
					r(300284),	-- TK38[DNT]
					r(300285),	-- TK39[DNT]
					r(300286),	-- TK40[DNT]
					r(300287),	-- TK41[DNT]
					r(300288),	-- TK42[DNT]
					r(300289),	-- TK43[DNT]
					r(300290),	-- TK44[DNT]
				})),
			}),
		}),
	}),
}));
-- #endif
