-- #if ANYCLASSIC
profession(LEATHERWORKING, {
	expansion(EXPANSION.CLASSIC, {
		prof(10660, {	-- Tribal Leatherworking
			["description"] = "These items can only be crafted by Leatherworkers who have completed the associated quest.\n\nNOTE: You may only have one of these specializations active per character. If you wish to finish your collection, you must level several Leatherworkers and complete the opposing specialization(s).",
			["sourceQuests"] = {
				5143,	-- Tribal Leatherworking [Alliance]
				5148,	-- Tribal Leatherworking [Horde]
			},
			["timeline"] = { REMOVED_4_0_1 },
			["groups"] = {
				-- #if AFTER TBC
				{
					["name"] = "Chest",
					["categoryID"] = 932,
					["groups"] = {
						-- #if BEFORE CATA
						applyclassicphase(TBC_PHASE_ONE, {
							["name"] = "Living Crystal Breastplate",
							["recipeID"] = 36078,
							["requireSkill"] = 10660,
						}),
						-- #endif
						applyclassicphase(TBC_PHASE_ONE, {
							["name"] = "Windhawk Hauberk",
							["timeline"] = { REMOVED_4_0_1 },
							["recipeID"] = 35585,
							["requireSkill"] = 10660,
						}),
					}
				},
				{
					["name"] = "Bracers",
					["categoryID"] = 933,
					["groups"] = {
						applyclassicphase(TBC_PHASE_ONE, {
							["name"] = "Windhawk Bracers",
							["timeline"] = { REMOVED_4_0_1 },
							["recipeID"] = 35588,
							["requireSkill"] = 10660,
						}),
					}
				},
				{
					["name"] = "Belts",
					["categoryID"] = 935,
					["groups"] = {
						applyclassicphase(TBC_PHASE_ONE, {
							["name"] = "Windhawk Belt",
							["timeline"] = { REMOVED_4_0_1 },
							["recipeID"] = 35587
						}),
					},
				},
				-- #if BEFORE CATA
				{
					["name"] = "Pants",
					["categoryID"] = 936,
					["groups"] = {
						applyclassicphase(TBC_PHASE_ONE, {
							["name"] = "Wildfeather Leggings",
							["recipeID"] = 36075,
							["requireSkill"] = 10660,
						}),
					},
				},
				-- #endif
				-- #else
				{
					["name"] = "Helms",
					["categoryID"] = 251,
					["groups"] = {
						{
							["name"] = "Wolfshead Helm",
							["timeline"] = { REMOVED_4_0_3 },
							["recipeID"] = 10621,
							["requireSkill"] = 10660,
						}
					}
				},
				{
					["name"] = "Shoulders",
					["categoryID"] = 252,
					["groups"] = {
						{
							["name"] = "Ironfeather Shoulders",
							["recipeID"] = 19062,
							["requireSkill"] = 10660,
						},
					},
				},
				{
					["name"] = "Chest",
					["categoryID"] = 253,
					["groups"] = {
						{
							["name"] = "Chimeric Vest",
							["recipeID"] = 19081,
							["requireSkill"] = 10660,
						},
						{
							["name"] = "Feathered Breastplate",
							["recipeID"] = 10647,
							["requireSkill"] = 10660,
						},
						{
							["name"] = "Frostsaber Tunic",
							["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
							["recipeID"] = 19104,
							["requireSkill"] = 10660,
						},
						{
							["name"] = "Ironfeather Breastplate",
							["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
							["recipeID"] = 19086,
							["requireSkill"] = 10660,
						},
						{
							["name"] = "Warbear Harness",
							["recipeID"] = 19068,
							["requireSkill"] = 10660,
						},
					},
				},
				{
					["name"] = "Gloves",
					["categoryID"] = 255,
					["groups"] = {
						{
							["name"] = "Chimeric Gloves",
							["timeline"] = { REMOVED_4_0_3 },
							["recipeID"] = 19053,
							["requireSkill"] = 10660,
						},
						{
							["name"] = "Devilsaur Gauntlets",
							["recipeID"] = 19084,
							["requireSkill"] = 10660,
						},
						{
							["name"] = "Frostsaber Gloves",
							["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
							["recipeID"] = 19087,
							["requireSkill"] = 10660,
						},
					}
				},
				{
					["name"] = "Belts",
					["categoryID"] = 256,
					["groups"] = {
						applyclassicphase(PHASE_THREE_RECIPES, {
							["name"] = "Corehound Belt",
							["recipeID"] = 23709,
							["requireSkill"] = 10660,
						}),
					}
				},
				{
					["name"] = "Pants",
					["categoryID"] = 257,
					["groups"] = {
						{
							["name"] = "Chimeric Leggings",
							["recipeID"] = 19073,
							["requireSkill"] = 10660,
						},
						{
							["name"] = "Devilsaur Leggings",
							["recipeID"] = 19097,
							["requireSkill"] = 10660,
						},
						{
							["name"] = "Frostsaber Leggings",
							["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
							["recipeID"] = 19074,
							["requireSkill"] = 10660,
						},
						{
							["name"] = "Warbear Woolies",
							["recipeID"] = 19080,
							["requireSkill"] = 10660,
						},
					}
				},
				{
					["name"] = "Boots",
					["categoryID"] = 258,
					["groups"] = {
						{
							["name"] = "Chimeric Boots",
							["recipeID"] = 19063,
							["requireSkill"] = 10660,
						},
						{
							["name"] = "Corehound Boots",
							["recipeID"] = 20853,
							["requireSkill"] = 10660,
						},
						{
							["name"] = "Frostsaber Boots",
							["recipeID"] = 19066,
							["requireSkill"] = 10660,
						},
					}
				},
				{
					["name"] = "Cloaks",
					["categoryID"] = 259,
					["groups"] = {
						applyclassicphase(PHASE_ONE_DIREMAUL, {
							["name"] = "Hide of the Wild",
							["timeline"] = { REMOVED_4_0_3 },
							["recipeID"] = 22927,
							["requireSkill"] = 10660,
						}),
					}
				},
				-- #endif
			},
		}),
	}),
});
-- #endif
