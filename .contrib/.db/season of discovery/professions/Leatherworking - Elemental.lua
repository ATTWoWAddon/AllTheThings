profession(LEATHERWORKING, {
	prof(10658, {	-- Elemental Leatherworking
		description = "These items can only be crafted by Leatherworkers who have completed the associated quest.\n\nNOTE: You may only have one of these specializations active per character. If you wish to finish your collection, you must level several Leatherworkers and complete the opposing specialization(s).",
		sourceQuests = {
			5144,	-- Elemental Leatherworking [Alliance]
			5146,	-- Elemental Leatherworking [Horde]
		},
		groups = {
			{
				name = "Helms",
				categoryID = 251,
				groups = {
					{
						name = "Helm of Fire",
						recipeID = 10632,
						requireSkill = 10658,
					},
					{
						name = "Molten Helm",
						recipeID = 20854,
						requireSkill = 10658,
					},
				},
			},
			{
				name = "Shoulders",
				categoryID = 252,
				groups = {
					{
						name = "Living Shoulders",
						recipeID = 19061,
						requireSkill = 10658,
					},
					applyclassicphase(SOD_PHASE_FOUR, {
						name = "Masterwork Volcanic Shoulders",
						recipeID = 461663,
						requireSkill = 10658,
					}),
					{
						name = "Stormshroud Shoulders",
						timeline = { ADDED_1_11_1 },
						recipeID = 19090,
						requireSkill = 10658,
					},
					{
						name = "Volcanic Shoulders",
						recipeID = 19101,
						requireSkill = 10658,
						timeline = { REMOVED_1_15_3 },
					},
				}
			},
			{
				name = "Chest",
				categoryID = 253,
				groups = {
					{
						name = "Living Breastplate",
						recipeID = 19095,
						requireSkill = 10658,
					},
					applyclassicphase(SOD_PHASE_FOUR, {
						name = "Masterwork Volcanic Breastplate",
						timeline = { ADDED_1_15_3 },
						recipeID = 461661,
						requireSkill = 10658,
					}),
					{
						name = "Stormshroud Armor",
						timeline = { ADDED_1_11_1 },
						recipeID = 19079,
						requireSkill = 10658,
					},
					{
						name = "Volcanic Breastplate",
						recipeID = 19076,
						requireSkill = 10658,
						timeline = { REMOVED_1_15_3 },
					},
				}
			},
			{
				name = "Gloves",
				categoryID = 255,
				groups = {
					{
						name = "Gauntlets of the Sea",
						recipeID = 10630,
						requireSkill = 10658,
					},
					{
						name = "Stormshroud Gloves",
						timeline = { ADDED_1_11_1 },
						recipeID = 26279,
						requireSkill = 10658,
					},
				},
			},
			{
				name = "Belts",
				categoryID = 256,
				groups = {
					applyclassicphase(PHASE_THREE_RECIPES, {
						name = "Molten Belt",
						recipeID = 23710,
						requireSkill = 10658,
					}),
				},
			},
			{
				name = "Pants",
				categoryID = 257,
				groups = {
					{
						name = "Living Leggings",
						recipeID = 19078,
						requireSkill = 10658,
					},
					applyclassicphase(SOD_PHASE_FOUR, {
						name = "Masterwork Volcanic Leggings",
						recipeID = 461665,
						requireSkill = 10658,
						timeline = { ADDED_1_15_3 },
					}),
					{
						name = "Stormshroud Pants",
						recipeID = 19067,
						requireSkill = 10658,
					},
					{
						name = "Volcanic Leggings",
						timeline = { REMOVED_1_15_3 },
						recipeID = 19059,
						requireSkill = 10658,
					},
				}
			},
			{
				name = "Cloaks",
				categoryID = 259,
				groups = {
					applyclassicphase(SOD_PHASE_FOUR, {
						name = "Mastercrafted Shifting Cloak",
						timeline = { ADDED_1_15_3 },
						recipeID = 461690,
						requireSkill = 10658,
					}),
					applyclassicphase(PHASE_ONE_DIREMAUL, {
						name = "Shifting Cloak",
						timeline = { REMOVED_1_15_3 },
						recipeID = 22928,
						requireSkill = 10658,
					}),
				}
			},
		},
	}),
});
