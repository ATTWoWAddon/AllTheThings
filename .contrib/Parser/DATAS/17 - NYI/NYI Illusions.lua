---------------------------------------------------------------
--     N E V E R    I M P L E M E N T E D    M O D U L E     --
---------------------------------------------------------------
-- #if AFTER BFA
root(ROOTS.NeverImplemented, filter(ILLUSIONS, {
	expansion(EXPANSION.BFA, {
		-- 8.2.5
		expansion(EXPANSION.BFA, patch(2,5), bubbleDownSelf({ ["timeline"] = { CREATED_8_2_5 } }, {
			ill(6185),	-- Stinging Sands (ILLUSION!)
		})),

		-- 8.3.0
		expansion(EXPANSION.BFA, patch(3,0), bubbleDownSelf({ ["timeline"] = { CREATED_8_3_0 } }, {
			i(174933),	-- Illusion: Voidwrath (ILLUSION!)
		})),
	}),
	expansion(EXPANSION.TWW, {
		-- 11.1.7
		expansion(EXPANSION.TWW, patch(1,7), bubbleDownSelf({ ["timeline"] = { CREATED_11_1_7 } }, {
			i(250776),	-- Illusion: Sha Corruption (ILLUSION!)
		})),
	}),
}));
-- #endif
