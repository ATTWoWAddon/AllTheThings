-- #if ANYCLASSIC
profession(LEATHERWORKING, {
	expansion(EXPANSION.CLASSIC, {
		prof(10656, {	-- Dragonscale Leatherworking
			["description"] = "These items can only be crafted by Leatherworkers who have completed the associated quest.\n\nNOTE: You may only have one of these specializations active per character. If you wish to finish your collection, you must level several Leatherworkers and complete the opposing specialization(s).",
			["sourceQuests"] = {
				5141,	-- Dragonscale Leatherworking [Alliance]
				5145,	-- Dragonscale Leatherworking [Horde]
			},
			["timeline"] = { REMOVED_4_0_1 },
			["groups"] = {
				-- #if AFTER TBC
				{
					["name"] = "Chest",
					["categoryID"] = 932,
					["groups"] = {
						applyclassicphase(TBC_PHASE_ONE, {
							["name"] = "Ebon Netherscale Breastplate",
							["timeline"] = { REMOVED_4_0_1 },
							["recipeID"] = 35575,
							["requireSkill"] = 10656,
						}),
						-- #if BEFORE CATA
						applyclassicphase(TBC_PHASE_ONE, {
							["name"] = "Golden Dragonstrike Breastplate",
							["recipeID"] = 36079,
							["requireSkill"] = 10656,
						}),
						-- #endif
						applyclassicphase(TBC_PHASE_ONE, {
							["name"] = "Netherstrike Breastplate",
							["timeline"] = { REMOVED_4_0_1 },
							["recipeID"] = 35580,
							["requireSkill"] = 10656,
						}),
					}
				},
				{
					["name"] = "Bracers",
					["categoryID"] = 933,
					["groups"] = {
						applyclassicphase(TBC_PHASE_ONE, {
							["name"] = "Ebon Netherscale Bracers",
							["timeline"] = { REMOVED_4_0_1 },
							["recipeID"] = 35577,
							["requireSkill"] = 10656,
						}),
						applyclassicphase(TBC_PHASE_ONE, {
							["name"] = "Netherstrike Bracers",
							["timeline"] = { REMOVED_4_0_1 },
							["recipeID"] = 35584,
							["requireSkill"] = 10656,
						}),
					}
				},
				{
					["name"] = "Belts",
					["categoryID"] = 935,
					["groups"] = {
						applyclassicphase(TBC_PHASE_ONE, {
							["name"] = "Ebon Netherscale Belt",
							["timeline"] = { REMOVED_4_0_1 },
							["recipeID"] = 35576,
							["requireSkill"] = 10656,
						}),
						applyclassicphase(TBC_PHASE_ONE, {
							["name"] = "Netherstrike Belt",
							["timeline"] = { REMOVED_4_0_1 },
							["recipeID"] = 35582,
							["requireSkill"] = 10656,
						}),
					}
				},
				-- #if BEFORE CATA
				{
					["name"] = "Pants",
					["categoryID"] = 936,
					["groups"] = {
						applyclassicphase(TBC_PHASE_ONE, {
							["name"] = "Dragonstrike Leggings",
							["recipeID"] = 36076,
							["requireSkill"] = 10656,
						}),
					},
				},
				-- #endif
				-- #else
				{
					["name"] = "Shoulders",
					["categoryID"] = 252,
					["groups"] = {
						{
							["name"] = "Black Dragonscale Shoulders",
							["recipeID"] = 19094,
							["requireSkill"] = 10656,
							-- #if SEASON_OF_DISCOVERY
							["timeline"] = { REMOVED_1_15_3 },
							-- #endif
						},
						{
							["name"] = "Blue Dragonscale Shoulders",
							["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
							["recipeID"] = 19089,
							["requireSkill"] = 10656,
						},
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_FOUR, {
							["name"] = "Hardened Black Dragonscale Shoulders",
							["recipeID"] = 461659,
							["requireSkill"] = 10656,
							["timeline"] = { ADDED_1_15_3 },
						}),
						-- #endif
					}
				},
				{
					["name"] = "Chest",
					["categoryID"] = 253,
					["groups"] = {
						{
							["name"] = "Black Dragonscale Breastplate",
							["recipeID"] = 19085,
							["requireSkill"] = 10656,
							-- #if SEASON_OF_DISCOVERY
							["timeline"] = { REMOVED_1_15_3 },
							-- #endif
						},
						{
							["name"] = "Blue Dragonscale Breastplate",
							["timeline"] = { REMOVED_4_0_3 },
							["recipeID"] = 19077,
							["requireSkill"] = 10656,
						},
						{
							["name"] = "Dragonscale Breastplate",
							["recipeID"] = 10650,
							["requireSkill"] = 10656,
						},
						applyclassicphase(PHASE_FOUR, {
							["name"] = "Dreamscale Breastplate",
							["recipeID"] = 24703,
							["requireSkill"] = 10656,
						}),
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_FOUR, {
							["name"] = "Hardened Black Dragonscale Breastplate",
							["recipeID"] = 461655,
							["requireSkill"] = 10656,
							["timeline"] = { ADDED_1_15_3 },
						}),
						-- #endif
						{
							["name"] = "Green Dragonscale Breastplate",
							["recipeID"] = 19050,
							["requireSkill"] = 10656,
						},
						{
							["name"] = "Red Dragonscale Breastplate",
							["timeline"] = { REMOVED_6_0_2 },
							["recipeID"] = 19054,
							["requireSkill"] = 10656,
						},
					}
				},
				{
					["name"] = "Gloves",
					["categoryID"] = 255,
					["groups"] = {
						applyclassicphase(PHASE_THREE_RECIPES, {
							["name"] = "Chromatic Gauntlets",
							["recipeID"] = 23708,
							["requireSkill"] = 10656,
						}),
						{
							["name"] = "Dragonscale Gauntlets",
							["timeline"] = { REMOVED_4_0_3 },
							["recipeID"] = 10619,
							["requireSkill"] = 10656,
						},
						{
							["name"] = "Green Dragonscale Gauntlets",
							["recipeID"] = 24655,
							["requireSkill"] = 10656,
						},
					}
				},
				{
					["name"] = "Pants",
					["categoryID"] = 257,
					["groups"] = {
						{
							["name"] = "Black Dragonscale Leggings",
							["recipeID"] = 19107,
							["requireSkill"] = 10656,
							-- #if SEASON_OF_DISCOVERY
							["timeline"] = { REMOVED_1_15_3 },
							-- #endif
						},
						{
							["name"] = "Blue Dragonscale Leggings",
							["recipeID"] = 24654,
							["requireSkill"] = 10656,
						},
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_FOUR, {
							["name"] = "Hardened Black Dragonscale Leggings",
							["recipeID"] = 461657,
							["requireSkill"] = 10656,
							["timeline"] = { ADDED_1_15_3 },
						}),
						-- #endif
						{
							["name"] = "Green Dragonscale Leggings",
							["recipeID"] = 19060,
							["requireSkill"] = 10656,
						},
					}
				},
				{
					["name"] = "Boots",
					["categoryID"] = 258,
					["groups"] = {
						{
							["name"] = "Black Dragonscale Boots",
							["recipeID"] = 20855,
							["requireSkill"] = 10656,
						},
					}
				},
				{
					["name"] = "Cloaks",
					["categoryID"] = 259,
					["groups"] = {
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_FOUR, {
							["name"] = "Brilliant Chromatic Cloak",
							["recipeID"] = 461653,
							["requireSkill"] = 10656,
							["timeline"] = { ADDED_1_15_3 },
						}),
						-- #endif
						applyclassicphase(PHASE_ONE_DIREMAUL, {
							["name"] = "Chromatic Cloak",
							["recipeID"] = 22926,
							["requireSkill"] = 10656,
							["timeline"] = {
								-- #if SEASON_OF_DISCOVERY
								REMOVED_1_15_3,
								-- #else
								REMOVED_4_0_3,
								ADDED_10_1_5,
								-- #endif
							},
						}),
					},
				},
				-- #endif
			},
		}),
	})
});
-- #endif
