-----------------------------------------------------
--       P R O F E S S I O N S   M O D U L E       --
-----------------------------------------------------
profession(HERBALISM, {
	header(HEADERS.SpellWithRank, 2366, {	-- Herb Gathering (Apprentice)
		symselector = SymSelector.HERBALISM_APPRENTICE,
		groups = {
			r(2383, {	-- Find Herbs [Rank 1]
				rank = 1,
			}),
			r(2366, {	-- Herb Gathering (Apprentice)
				lvl = 5,
				rank = 1,
			}),
		},
	}),
	header(HEADERS.SpellWithRank, 2368, {	-- Herb Gathering (Journeyman)
		symselector = SymSelector.HERBALISM_JOURNEYMAN,
		groups = {
			r(2368, {	-- Herb Gathering (Journeyman)
				lvl = 10,
				rank = 2,
			}),
		},
	}),
	header(HEADERS.SpellWithRank, 3570, {	-- Herb Gathering (Expert)
		symselector = SymSelector.HERBALISM_EXPERT,
		groups = {
			r(3570, {	-- Herb Gathering (Expert)
				lvl = 20,
				rank = 3,
			}),
		},
	}),
	header(HEADERS.SpellWithRank, 11993, {	-- Herb Gathering (Artisan)
		symselector = SymSelector.HERBALISM_ARTISAN,
		groups = {
			r(11993, {	-- Herb Gathering (Artisan)
				lvl = 35,
				rank = 4,
			}),
		},
	}),
});
