-----------------------------------------------------
--       P R O F E S S I O N S   M O D U L E       --
-----------------------------------------------------
profession(MINING, {
	header(HEADERS.SpellWithRank, 2575, {	-- Mining (Apprentice)
		symselector = SymSelector.MINING_APPRENTICE,
		groups = {
			r(2580, {	-- Find Minerals [Rank 1]
				rank = 1,
			}),
			r(2575, {	-- Mining (Apprentice)
				lvl = 5,
				rank = 1,
			}),
			r(2656),	-- Mining Journal \ Smelting
			r(2657),	-- Smelt Copper
		},
	}),
	header(HEADERS.SpellWithRank, 2576, {	-- Mining (Journeyman)
		symselector = SymSelector.MINING_JOURNEYMAN,
		groups = {
			r(2576, {	-- Mining (Journeyman)
				lvl = 10,
				rank = 2,
			}),
			r(2659),	-- Smelt Bronze
			r(2658),	-- Smelt Silver
			r(3304),	-- Smelt Tin
		},
	}),
	header(HEADERS.SpellWithRank, 3564, {	-- Mining (Expert)
		symselector = SymSelector.MINING_EXPERT,
		groups = {
			r(3564, {	-- Mining (Expert)
				lvl = 20,
				rank = 3,
			}),
			r(3308),	-- Smelt Gold
			r(3307),	-- Smelt Iron
			r(10097),	-- Smelt Mithril
			r(3569),	-- Smelt Steel
		},
	}),
	header(HEADERS.SpellWithRank, 10248, {	-- Mining (Artisan)
		symselector = SymSelector.MINING_ARTISAN,
		groups = {
			r(10248, {	-- Mining (Artisan)
				lvl = 35,
				rank = 4,
			}),
			r(16153),	-- Smelt Thorium
			r(10098),	-- Smelt Truesilver
		},
	}),
});
