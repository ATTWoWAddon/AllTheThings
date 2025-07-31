---------------------------------------------------------------
--     N E V E R    I M P L E M E N T E D    M O D U L E     --
---------------------------------------------------------------
root(ROOTS.NeverImplemented, n(PROFESSIONS, {
	prof(POISONS, {
		n(CRAFTABLES, {
			expansion(EXPANSION.CLASSIC, {
				-- 1.x.x
				n(P1xx, {
					i(5172),	-- Death Capsule
					i(5654),	-- Instant Toxin
				}),
			}),
		}),
		filter(RECIPES, {
			expansion(EXPANSION.CLASSIC, {
				-- 1.x.x
				n(P1xx, {
					r(5395),	-- Death Capsule
					-- With SpellID attached
					i(5657),	-- Recipe: Instant Toxin (RECIPE!)
				}),
			}),
		}),
	}),
}));
