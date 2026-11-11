---------------------------------------------------------------
--     N E V E R    I M P L E M E N T E D    M O D U L E     --
---------------------------------------------------------------
root(ROOTS.NeverImplemented, n(PROFESSIONS, {
	prof(BLACKSMITHING, {
		n(CRAFTABLES, {
			-- 1.x.x
			n(P1xx, {
				i(12795),	-- Blood Talon
				i(12772),	-- Inlaid Thorium Hammer
				i(6730),	-- Ironforge Chain
				i(6733),	-- Ironforge Gauntlets
				i(7925),	-- Mithril Scale Gloves
				i(2867),	-- Rough Bronze Bracers
				i(12779),	-- Rune Edge
				i(12764),	-- Thorium Greatsword
				i(5517),	-- Tiny Bronze Key
				i(5518),	-- Tiny Iron Key
			}),
		}),
		filter(RECIPES, {
			-- 1.x.x
			n(P1xx, {
				r(6470),	-- Tiny Bronze Key
				r(6471),	-- Tiny Iron Key
				-- With SpellID attached
				i(12831),	-- Plans: Blood Talon
				i(12818),	-- Plans: Inlaid Thorium Hammer
				i(6734),	-- Plans: Ironforge Chain
				i(6736),	-- Plans: Ironforge Gauntlets
				i(7977),	-- Plans: Mithril Scale Gloves
				i(5577),	-- Plans: Rough Bronze Bracers
				i(12826),	-- Plans: Rune Edge
				i(12816),	-- Plans: Thorium Greatsword
				-- Without SpellID attached
				i(12817),	-- Plans: Bleakwood Hew
				i(12832),	-- Plans: Darkspear
				i(22705),	-- Plans: Icebane Bracers
				i(22703),	-- Plans: Icebane Breastplate
				i(22704),	-- Plans: Icebane Gauntlets
				i(7994),	-- Plans: Orcish War Leggings
				i(7988),	-- Plans: Ornate Mithril Boots
				i(7986),	-- Plans: Ornate Mithril Breastplate
				i(7987),	-- Plans: Ornate Mithril Helm
			}),
		}),
	}),
}));
