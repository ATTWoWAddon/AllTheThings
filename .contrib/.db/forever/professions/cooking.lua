-----------------------------------------------------
--       P R O F E S S I O N S   M O D U L E       --
-----------------------------------------------------
profession(COOKING, {
	header(HEADERS.SpellWithRank, 2550, {	-- Cooking (Apprentice)
		symselector = SymSelector.COOKING_APPRENTICE,
		groups = {
			r(2550, {	-- Cooking (Apprentice)
				lvl = 5,
				rank = 1,
			}),
			r(1229737),	-- Basic Campfire Kit
			r(2538),	-- Charred Wolf Meat
			r(8604),	-- Herb Baked Egg
			r(2540),	-- Roasted Boar Meat
			r(2539),	-- Spiced Wolf Meat
		},
	}),
	header(HEADERS.SpellWithRank, 3102, {	-- Cooking (Journeyman)
		symselector = SymSelector.COOKING_JOURNEYMAN,
		groups = {
			r(3102, {	-- Cooking (Journeyman)
				lvl = 10,
				rank = 2,
			}),
			r(6499),	-- Boiled Clams
			r(2541),	-- Coyote Steak
			r(2544),	-- Crab Cake
			r(2546),	-- Dry Pork Ribs
		},
	}),
	header(HEADERS.SpellWithRank, 3413, {	-- Cooking (Expert)
		symselector = SymSelector.COOKING_EXPERT,
		groups = {
			r(6500),	-- Goblin Deviled Clams
		},
	}),
	header(HEADERS.SpellWithRank, 18260, {	-- Cooking (Artisan)
		symselector = SymSelector.COOKING_ARTISAN,
		groups = {
			r(21175),	-- Spider Sausage
		},
	}),
});
