-----------------------------------------------------
--       P R O F E S S I O N S   M O D U L E       --
-----------------------------------------------------
profession(FISHING, {
	header(HEADERS.SpellWithRank, 7620, {	-- Fishing (Apprentice)
		symselector = SymSelector.FISHING_APPRENTICE,
		groups = {
			r(7620, {	-- Fishing (Apprentice)
				lvl = 5,
				rank = 1,
			}),
			r(7738),	-- Fishing Poles
		},
	}),
	header(HEADERS.SpellWithRank, 7731, {	-- Fishing (Journeyman)
		symselector = SymSelector.FISHING_JOURNEYMAN,
		groups = {
			r(7731, {	-- Fishing (Journeyman)
				lvl = 10,
				rank = 2,
			}),
		},
	}),
});
