profession(BLACKSMITHING, {
	prof(9788, {	-- Armorsmith
		description = "These items can only be crafted by Blacksmiths who have completed the Art of the Armorsmith quest chain.\n\nNOTE: You may only have one of these specializations active per character. If you wish to finish your collection, you must level several Blacksmiths and complete the opposing specialization(s).",
		sourceQuests = {
			5283,	-- The Art of the Armorsmith [Alliance]
			5301,	-- The Art of the Armorsmith [Horde]
		},
		groups = {
			{
				name = "Helms",
				categoryID = 218,
				groups = {
					applyclassicphase(PHASE_THREE_RECIPES, {
						name = "Dark Iron Helm",
						recipeID = 23636,
						requireSkill = 9788,
					}),
					applyclassicphase(PHASE_THREE_RECIPES, {
						name = "Enchanted Thorium Helm",
						recipeID = 16742,
						requireSkill = 9788,
					}),
					{
						name = "Helm of the Great Chief",
						recipeID = 16728,
						requireSkill = 9788,
						timeline = { REMOVED_1_15_3 },
					},
					{
						name = "Lionheart Helm",
						recipeID = 16729,
						requireSkill = 9788,
					},
					applyclassicphase(SOD_PHASE_FOUR, {
						name = "Warcrest of the Great Chief",
						recipeID = 461739,
						requireSkill = 9788,
						timeline = { ADDED_1_15_3 },
					}),
					{
						name = "Whitesoul Helm",
						recipeID = 16724,
						requireSkill = 9788,
					},

				},
			},
			{
				name = "Shoulders",
				categoryID = 219,
				groups = {
					{
						name = "Dawnbringer Shoulders",
						recipeID = 16660,
						requireSkill = 9788,
						timeline = { ADDED_1_15_3 },
					},
					{
						name = "Fiery Chain Shoulders",
						recipeID = 20873,
						requireSkill = 9788,
					},
				},
			},
			{
				name = "Bracers",
				categoryID = 222,
				groups = {
					{
						name = "Dark Iron Bracers",
						recipeID = 20874,
						requireSkill = 9788,
					},

				},
			},
			{
				name = "Gauntlets",
				categoryID = 221,
				groups = {
					applyclassicphase(PHASE_THREE_RECIPES, {
						name = "Dark Iron Gauntlets",
						recipeID = 23637,
						requireSkill = 9788,
					}),
					{
						name = "Fiery Plate Gauntlets",
						recipeID = 16655,
						requireSkill = 9788,
						timeline = { REMOVED_1_15_3 },
					},
					applyclassicphase(SOD_PHASE_FOUR, {
						name = "Fiery Plate Gauntlets of the Hidden Technique",
						recipeID = 461651,
						requireSkill = 9788,
						timeline = { REMOVED_1_15_3 },
					}),
					{
						name = "Storm Gauntlets",
						recipeID = 16661,
						requireSkill = 9788,
						timeline = { REMOVED_1_15_3 },
					},
					{
						name = "Stronghold Gauntlets",
						recipeID = 16741,
						requireSkill = 9788,
					},
					applyclassicphase(SOD_PHASE_FOUR, {
						name = "Tempest Gauntlets",
						recipeID = 461737,
						requireSkill = 9788,
						timeline = { ADDED_1_15_3 },
					}),
					{
						name = "Truesilver Gauntlets",
						recipeID = 9954,
						requireSkill = 9788,
					},

				},
			},
			{
				name = "Chest",
				categoryID = 220,
				groups = {
					{
						name = "Dark Iron Plate",
						recipeID = 15296,
						requireSkill = 9788,
						timeline = { REMOVED_1_15_3 },
					},
					{
						name = "Demon Forged Breastplate",
						recipeID = 16667,
						requireSkill = 9788,
					},
					applyclassicphase(PHASE_THREE_RECIPES, {
						name = "Enchanted Thorium Breastplate",
						recipeID = 16745,
						requireSkill = 9788,
					}),
					applyclassicphase(SOD_PHASE_FOUR, {
						name = "Invincible Mail",
						recipeID = 461735,
						requireSkill = 9788,
						timeline = { ADDED_1_15_3 },
					}),
					{
						name = "Invulnerable Mail",
						recipeID = 16746,
						requireSkill = 9788,
						-- CRIEVE NOTE: This item still drops apparently, I got this on my paladin.
						-- timeline = { REMOVED_1_15_3 },
					},
					applyclassicphase(SOD_PHASE_FOUR, {
						name = "Tempered Dark Iron Plate",
						recipeID = 461667,
						requireSkill = 9788,
						timeline = { ADDED_1_15_3 },
					}),
					{
						name = "Truesilver Breastplate",
						recipeID = 9974,
						requireSkill = 9788,
					},
					{
						name = "Wildthorn Mail",
						recipeID = 16650,
						requireSkill = 9788,
					},
				},
			},
			{
				name = "Belts",
				categoryID = 223,
				groups = {
					{
						name = "Fiery Chain Girdle",
						recipeID = 20872,
						requireSkill = 9788,
					},
				},
			},
			{
				name = "Legs",
				categoryID = 224,
				groups = {
					{
						name = "Dark Iron Leggings",
						recipeID = 20876,
						requireSkill = 9788,
					},
					applyclassicphase(PHASE_THREE_RECIPES, {
						name = "Enchanted Thorium Leggings",
						recipeID = 16744,
						requireSkill = 9788,
					}),
					applyclassicphase(PHASE_FIVE, {
						name = "Titanic Leggings",
						recipeID = 27829,
						requireSkill = 9788,
					}),
				},
			},
			{
				name = "Boots",
				categoryID = 225,
				groups = {
					applyclassicphase(PHASE_FOUR_DARKIRON_RECIPES, {
						name = "Dark Iron Boots",
						recipeID = 24399,
						requireSkill = 9788,
					}),
				},
			},
		},
	}),
});
