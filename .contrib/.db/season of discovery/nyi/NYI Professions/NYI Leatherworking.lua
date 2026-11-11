---------------------------------------------------------------
--     N E V E R    I M P L E M E N T E D    M O D U L E     --
---------------------------------------------------------------
root(ROOTS.NeverImplemented, n(PROFESSIONS, {
	prof(LEATHERWORKING, {
		n(CRAFTABLES, {
			-- 1.x.x
			n(P1xx, {
				i(8195),	-- Nightscape Cloak
				i(15141),	-- Onyxia Scale Breastplate
			}),
		}),
		filter(RECIPES, {
			-- 1.x.x
			n(P1xx, {
				-- With SpellID attached
				i(8388),	-- Pattern: Nightscape Cloak
				i(15780),	-- Pattern: Onyxia Scale Breastplate
				-- Without SpellID attached
				i(22698),	-- Pattern: Icy Scale Bracers
				i(22696),	-- Pattern: Icy Scale Breastplate
				i(22697),	-- Pattern: Icy Scale Gauntlets
				i(4997),	-- Deprecated Recipe: Kodo Skin Bag
				i(22695),	-- Pattern: Polar Bracers
				i(22694),	-- Pattern: Polar Gloves
				i(22692),	-- Pattern: Polar Tunic
			}),
		}),
	}),
}));
