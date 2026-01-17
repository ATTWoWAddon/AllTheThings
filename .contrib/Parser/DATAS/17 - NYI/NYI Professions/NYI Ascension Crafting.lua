---------------------------------------------------------------
--     N E V E R    I M P L E M E N T E D    M O D U L E     --
---------------------------------------------------------------
-- #if AFTER SL
root(ROOTS.NeverImplemented, n(PROFESSIONS, {
	prof(ASCENSION_CRAFTING, {
		n(CRAFTABLES, {
			expansion(EXPANSION.SL, {
				-- 9.0.1
				expansion(EXPANSION.SL, patch(0,1), bubbleDownSelf({ ["timeline"] = { CREATED_9_0_1 } }, {
					i(181281),	-- Boss 10 Lure
					i(181140),	-- Charm of Alacrity
					i(181159),	-- Charm of Energizing
				})),
			}),
		}),
		filter(RECIPES, {
			expansion(EXPANSION.SL, {
				-- 9.0.1
				expansion(EXPANSION.SL, patch(0,1), bubbleDownSelf({ ["timeline"] = { CREATED_9_0_1 } }, {
					r(335596),	-- Charm of Alacrity
					r(335849),	-- Charm of Energizing
					r(333550),	-- Lure 10
				})),
			}),
		}),
	}),
}));
-- #endif
