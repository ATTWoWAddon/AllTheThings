-----------------------------------------------------
--       P R O F E S S I O N S   M O D U L E       --
-----------------------------------------------------
profession(SKINNING, {
	header(HEADERS.SpellWithRank, 8613, {	-- Skinning (Apprentice)
		symselector = SymSelector.SKINNING_APPRENTICE,
		groups = {
			r(8613, {	-- Skinning (Apprentice)
				lvl = 5,
				rank = 1,
			}),
		},
	}),
	header(HEADERS.SpellWithRank, 8617, {	-- Skinning (Journeyman)
		symselector = SymSelector.SKINNING_JOURNEYMAN,
		groups = {
			r(8617, {	-- Skinning (Journeyman)
				lvl = 10,
				rank = 2,
			}),
		},
	}),
	header(HEADERS.SpellWithRank, 8618, {	-- Skinning (Expert)
		symselector = SymSelector.SKINNING_EXPERT,
		groups = {
			r(8618, {	-- Skinning (Expert)
				lvl = 20,
				rank = 3,
			}),
		},
	}),
	header(HEADERS.SpellWithRank, 10768, {	-- Skinning (Artisan)
		symselector = SymSelector.SKINNING_ARTISAN,
		groups = {
			r(10768, {	-- Skinning (Artisan)
				lvl = 35,
				rank = 4,
			}),
		},
	}),
});
