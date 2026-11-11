---------------------------------------------------------------
--     N E V E R    I M P L E M E N T E D    M O D U L E     --
---------------------------------------------------------------
root(ROOTS.NeverImplemented, n(PROFESSIONS, {
	prof(ENCHANTING, {
		filter(RECIPES, {
			-- 1.x.x
			n(P1xx, {
				r(7864),	-- Enchant Boots - Minor Stamina
				r(7769),	-- CLASSIC: Imbue Bracers - Minor Wisdom OLD
				r(7855),	-- CLASSIC: Imbue Chest - Absorb
				r(7853),	-- CLASSIC: Imbue Chest - Lesser Spirit
				r(7448),	-- CLASSIC: Imbue Chest - Lesser Absorb
				r(7865),	-- CLASSIC: Imbue Cloak - Lesser Protection
				r(7439),	-- CLASSIC: Imbue Cloak - Minor Resistance
				r(7434),	-- CLASSIC: Imbue Weapon - Beastslayer
				r(22434),	-- Charged Scale of Onyxia
				-- With SpellID attached
				i(6376),	-- Formula: Enchant Boots - Minor Stamina
				i(6343),	-- Formula: Imbue Chest - Minor Spirit
				-- Without SpellID attached
				i(6222),	-- Formula: Imbue Chest - Minor Spirit
				i(6345),	-- Formula: Imbue Cloak - Protection
			}),
		}),
	}),
}));
