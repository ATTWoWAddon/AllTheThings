---------------------------------------------------------------
--     N E V E R    I M P L E M E N T E D    M O D U L E     --
---------------------------------------------------------------
root(ROOTS.NeverImplemented, n(PROFESSIONS, {
	prof(ALCHEMY, {
		n(CRAFTABLES, {
			-- 1.x.x
			n(P1xx, {
				i(5632),	-- Cowardly Flight Potion
				i(17967),	-- Refined Scale of Onyxia
			}),
		}),
		filter(RECIPES, {
			-- 1.x.x
			n(P1xx, {
				r(11447),	-- Elixir of Waterwalking
				r(22430),	-- Refined Scale of Onyxia
				-- With SpellID attached
				i(5641),	-- Recipe: Cowardly Flight Potion
				i(2556),	-- Recipe: Elixir of Tongues
				i(13500),	-- Recipe: Greater Holy Protection Potion
			}),
		}),
	}),
}));
