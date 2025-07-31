---------------------------------------------------------------
--     N E V E R    I M P L E M E N T E D    M O D U L E     --
---------------------------------------------------------------
-- #if AFTER DF
root(ROOTS.NeverImplemented, n(PROFESSIONS, {
	prof(ARCANA_MANIPULATION, {
		filter(RECIPES, {
			expansion(EXPANSION.DF, {
				-- 10.0.0
				expansion(EXPANSION.DF, patch(0,0,1), bubbleDownSelf({ ["timeline"] = { CREATED_10_0_0 } }, {
					r(364624),	-- Arcane-Infused Trinket
					r(364632),	-- Enchanted Staff
				})),
			}),
		}),
	}),
}));
-- #endif
