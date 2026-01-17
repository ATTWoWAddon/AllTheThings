---------------------------------------------------------------
--     N E V E R    I M P L E M E N T E D    M O D U L E     --
---------------------------------------------------------------
-- #if AFTER 11.2.7
root(ROOTS.NeverImplemented, n(PROFESSIONS, {
	prof(DYE_CRAFTING, {
		filter(RECIPES, {
			expansion(EXPANSION.TWW, {
				-- 11.2.7
				expansion(EXPANSION.TWW, patch(2,7), bubbleDown({ ["timeline"] = { CREATED_11_2_7 } }, {
					r(1265093),	-- Deep Mageroyal Red Dye
					r(1265092),	-- Gilnean Rose Dye
				})),
			}),
		}),
	}),
}));
-- #endif
