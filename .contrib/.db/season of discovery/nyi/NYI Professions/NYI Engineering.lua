---------------------------------------------------------------
--     N E V E R    I M P L E M E N T E D    M O D U L E     --
---------------------------------------------------------------
root(ROOTS.NeverImplemented, n(PROFESSIONS, {
	prof(ENGINEERING, {
		n(CRAFTABLES, {
			-- 1.x.x
			n(P1xx, {
				i(10579),	-- Explosive Arrow
				i(10723),	-- Gnomish Ham Radio
				i(10580),	-- Goblin "Boom" Box
				i(10585),	-- Goblin Radio
				i(10719),	-- Mobile Alarm
			}),
		}),
		filter(RECIPES, {
			-- 1.x.x
			n(P1xx, {
				r(12719),	-- Explosive Arrow
				r(6441),	-- Explosive Shells
				r(12904),	-- Gnomish Ham Radio
				r(12720),	-- Goblin "Boom" Box
				r(12722),	-- Goblin Radio
				r(12900),	-- Mobile Alarm
			}),
		}),
	}),
}));
