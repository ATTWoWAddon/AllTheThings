---------------------------------------------------------------
--     N E V E R    I M P L E M E N T E D    M O D U L E     --
---------------------------------------------------------------
root(ROOTS.NeverImplemented, n(PROFESSIONS, {
	prof(FIRST_AID, {
		n(CRAFTABLES, {
			expansion(EXPANSION.CLASSIC, {
				-- 1.x.x
				n(P1xx, {
					i(23684),	-- Crystal Infused Bandage
					i(8546),	-- Powerful Smelling Salts
				}),
			}),
		}),
		filter(RECIPES, {
			expansion(EXPANSION.CLASSIC, {
				-- 1.x.x
				n(P1xx, {
					-- With SpellID attached
					i(8547),	-- Formula: Powerful Smelling Salts (RECIPE!)
					i(23689),	-- Manual: Crystal Infused Bandage (RECIPE!)
					-- Without SpellID attached
					i(16085),	-- Artisan First Aid - Heal Thyself
				}),
			}),
			expansion(EXPANSION.WRATH, {
				-- 3.0.2
				expansion(EXPANSION.WRATH, patch(0,2), bubbleDownSelf({ ["timeline"] = { CREATED_3_0_2 } }, {
					r(51801),	-- Unknown
				})),
			}),
		}),
	}),
}));
