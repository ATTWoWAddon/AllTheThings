---------------------------------------------------------------
--     N E V E R    I M P L E M E N T E D    M O D U L E     --
---------------------------------------------------------------
root(ROOTS.NeverImplemented, n(PROFESSIONS, {
	prof(TAILORING, {
		n(CRAFTABLES, {
			i(7027),	-- Boots of Darkness
			r(7636),	-- Green Woolen Robe
			i(10039),	-- Stormcloth Boots
			i(10011),	-- Stormcloth Gloves
			i(10032),	-- Stormcloth Headband
			i(10010),	-- Stormcloth Pants
			i(10038),	-- Stormcloth Shoulders
			i(10020),	-- Stormcloth Vest

			-- 1.15.3
			expansion(EXPANSION.CLASSIC, patch(15,3), {
			}),
		}),
		filter(RECIPES, {
			-- With SpellID attached
			i(7093),	-- Pattern: Boots of Darkness (RECIPE!)
			i(6273),	-- Pattern: Green Woolen Robe (RECIPE!)
			i(10324),	-- Pattern: Stormcloth Boots (RECIPE!)
			i(10304),	-- Pattern: Stormcloth Gloves (RECIPE!)
			i(10319),	-- Pattern: Stormcloth Headband (RECIPE!)
			i(10303),	-- Pattern: Stormcloth Pants (RECIPE!)
			i(10322),	-- Pattern: Stormcloth Shoulders (RECIPE!)
			i(10313),	-- Pattern: Stormcloth Vest (RECIPE!)
			-- Without SpellID attached
			i(21369),	-- Pattern: Felcloth Bag (RECIPE!)
			i(22685),	-- Pattern: Glacial Cloak (RECIPE!)
			i(22684),	-- Pattern: Glacial Gloves (RECIPE!)
			i(22686),	-- Pattern: Glacial Vest (RECIPE!)
			i(22687),	-- Pattern: Glacial Wrists (RECIPE!)

			-- 1.15.3
			expansion(EXPANSION.CLASSIC, patch(15,3), {
				-- With SpellID attached
			}),

			-- 1.15.6
			expansion(EXPANSION.CLASSIC, patch(15,6), {
				r(1223770),	-- Frosty Gloves (RECIPE!)
				r(1223768),	-- Frosty Vest (RECIPE!)
				r(1223772),	-- Frosty Wrists (RECIPE!)
				r(1223762),	-- Glacial Cloak (RECIPE!)
				r(1223764),	-- Glacial Gloves (RECIPE!)
				r(1223760),	-- Glacial Vest (RECIPE!)
				r(1223766),	-- Glacial Wrists (RECIPE!)
			}),
		}),
	}),
}));
