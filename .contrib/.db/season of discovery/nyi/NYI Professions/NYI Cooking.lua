---------------------------------------------------------------
--     N E V E R    I M P L E M E N T E D    M O D U L E     --
---------------------------------------------------------------
root(ROOTS.NeverImplemented, n(PROFESSIONS, {
	prof(COOKING, {
		n(CRAFTABLES, {
			-- 1.x.x
			n(P1xx, {
				i(23683),	-- Crystal Flake Throat Lozenge
			}),
		}),
		filter(RECIPES, {
			-- 1.x.x
			n(P1xx, {
				-- With SpellID attached
				i(23690),	-- Recipe: Crystal Flake Throat Lozenge / Crystal Throat Lozenge
				-- Without SpellID attached
				i(16073),	-- Artisan Cookbook
				i(6891),	-- Recipe: Herb Baked Egg
			}),
		}),
	}),
}));
