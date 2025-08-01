-- #if ANYCLASSIC
profession(LEATHERWORKING, {
	expansion(EXPANSION.CLASSIC, {
		prof(10658, {	-- Elemental Leatherworking
			["description"] = "These items can only be crafted by Leatherworkers who have completed the associated quest.\n\nNOTE: You may only have one of these specializations active per character. If you wish to finish your collection, you must level several Leatherworkers and complete the opposing specialization(s).",
			["sourceQuests"] = {
				5144,	-- Elemental Leatherworking [Alliance]
				5146,	-- Elemental Leatherworking [Horde]
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
							["name"] = "Primalstorm Breastplate",
							["timeline"] = { REMOVED_4_0_1 },
							["recipeID"] = 36077,
							["requireSkill"] = 10658,
						}),
						-- #endif
						applyclassicphase(TBC_PHASE_ONE, {
							["name"] = "Primalstrike Vest",
							["timeline"] = { REMOVED_4_0_1 },
							["recipeID"] = 35589,
							["requireSkill"] = 10658,
						}),
					}
				},
				{
					["name"] = "Bracers",
					["categoryID"] = 933,
					["groups"] = {
						applyclassicphase(TBC_PHASE_ONE, {
							["name"] = "Primalstrike Bracers",
							["timeline"] = { REMOVED_4_0_1 },
							["recipeID"] = 35591,
							["requireSkill"] = 10658,
						}),
					}
				},
				{
					["name"] = "Belts",
					["categoryID"] = 935,
					["groups"] = {
						applyclassicphase(TBC_PHASE_ONE, {
							["name"] = "Primalstrike Belt",
							["timeline"] = { REMOVED_4_0_1 },
							["recipeID"] = 35590,
							["requireSkill"] = 10658,
						}),
					}
				},
				-- #if BEFORE CATA
				{
					["name"] = "Pants",
					["categoryID"] = 936,
					["groups"] = {
						applyclassicphase(TBC_PHASE_ONE, {
							["name"] = "Blackstorm Leggings",
							["recipeID"] = 36074,
							["requireSkill"] = 10658,
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
							["name"] = "Helm of Fire",
							["recipeID"] = 10632,
							["requireSkill"] = 10658,
						},
						{
							["name"] = "Molten Helm",
							["recipeID"] = 20854,
							["requireSkill"] = 10658,
						},
					},
				},
				{
					["name"] = "Shoulders",
					["categoryID"] = 252,
					["groups"] = {
						{
							["name"] = "Living Shoulders",
							["recipeID"] = 19061,
							["requireSkill"] = 10658,
						},
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_FOUR, {
							["name"] = "Masterwork Volcanic Shoulders",
							["recipeID"] = 461663,
							["requireSkill"] = 10658,
						}),
						-- #endif
						{
							["name"] = "Stormshroud Shoulders",
							["timeline"] = { ADDED_1_11_1, REMOVED_4_0_3 },
							["recipeID"] = 19090,
							["requireSkill"] = 10658,
						},
						{
							["name"] = "Volcanic Shoulders",
							["recipeID"] = 19101,
							["requireSkill"] = 10658,
							-- #if SEASON_OF_DISCOVERY
							["timeline"] = { REMOVED_1_15_3 },
							-- #endif
						},
					}
				},
				{
					["name"] = "Chest",
					["categoryID"] = 253,
					["groups"] = {
						{
							["name"] = "Living Breastplate",
							["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
							["recipeID"] = 19095,
							["requireSkill"] = 10658,
						},
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_FOUR, {
							["name"] = "Masterwork Volcanic Breastplate",
							["timeline"] = { ADDED_1_15_3 },
							["recipeID"] = 461661,
							["requireSkill"] = 10658,
						}),
						-- #endif
						{
							["name"] = "Stormshroud Armor",
							["timeline"] = { ADDED_1_11_1, REMOVED_4_0_3 },
							["recipeID"] = 19079,
							["requireSkill"] = 10658,
						},
						{
							["name"] = "Volcanic Breastplate",
							["recipeID"] = 19076,
							["requireSkill"] = 10658,
							-- #if SEASON_OF_DISCOVERY
							["timeline"] = { REMOVED_1_15_3 },
							-- #endif
						},
					}
				},
				{
					["name"] = "Gloves",
					["categoryID"] = 255,
					["groups"] = {
						{
							["name"] = "Gauntlets of the Sea",
							["recipeID"] = 10630,
							["requireSkill"] = 10658,
						},
						{
							["name"] = "Stormshroud Gloves",
							["timeline"] = { ADDED_1_11_1, REMOVED_4_0_3 },
							["recipeID"] = 26279,
							["requireSkill"] = 10658,
						},
					},
				},
				{
					["name"] = "Belts",
					["categoryID"] = 256,
					["groups"] = {
						applyclassicphase(PHASE_THREE_RECIPES, {
							["name"] = "Molten Belt",
							["recipeID"] = 23710,
							["requireSkill"] = 10658,
						}),
					},
				},
				{
					["name"] = "Pants",
					["categoryID"] = 257,
					["groups"] = {
						{
							["name"] = "Living Leggings",
							["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
							["recipeID"] = 19078,
							["requireSkill"] = 10658,
						},
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_FOUR, {
							["name"] = "Masterwork Volcanic Leggings",
							["recipeID"] = 461665,
							["requireSkill"] = 10658,
							["timeline"] = { ADDED_1_15_3 },
						}),
						-- #endif
						{
							["name"] = "Stormshroud Pants",
							["recipeID"] = 19067,
							["requireSkill"] = 10658,
						},
						{
							["name"] = "Volcanic Leggings",
							["timeline"] = {
								-- #if SEASON_OF_DISCOVERY
								REMOVED_1_15_3,
								-- #else
								REMOVED_4_0_3, ADDED_10_1_7,
								-- #endif
							},
							["recipeID"] = 19059,
							["requireSkill"] = 10658,
						},
					}
				},
				{
					["name"] = "Cloaks",
					["categoryID"] = 259,
					["groups"] = {
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_FOUR, {
							["name"] = "Mastercrafted Shifting Cloak",
							["timeline"] = { ADDED_1_15_3 },
							["recipeID"] = 461690,
							["requireSkill"] = 10658,
						}),
						-- #endif
						applyclassicphase(PHASE_ONE_DIREMAUL, {
							["name"] = "Shifting Cloak",
							["timeline"] = {
								-- #if SEASON_OF_DISCOVERY
								REMOVED_1_15_3,
								-- #else
								REMOVED_4_0_3, ADDED_10_1_5,
								-- #endif
							},
							["recipeID"] = 22928,
							["requireSkill"] = 10658,
						}),
					}
				},
				-- #endif
			},
		}),
	}),
});
-- #endif
