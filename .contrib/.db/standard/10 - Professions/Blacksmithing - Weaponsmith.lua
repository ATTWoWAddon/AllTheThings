-- #if ANYCLASSIC
profession(BLACKSMITHING, {
	prof(9787, {	-- Weaponsmith
		description = "These items can only be crafted by Blacksmiths who have completed the Way of the Weaponsmith quest chain.\n\nNOTE: You may only have one of these specializations active per character. If you wish to finish your collection, you must level several Blacksmiths and complete the opposing specialization(s).",
		sourceQuests = {
			5284,	-- The Way of the Weaponsmith [Alliance]
			5302,	-- The Way of the Weaponsmith [Horde]
		},
		timeline = { REMOVED_4_0_1 },
		groups = {
			prof(17041, {	-- Master Axesmith
				sourceQuest = 5306,	-- Snakestone of the Shadow Huntress [Master Axesmith]
				description = "These items can only be crafted by Master Axesmith specialized Weaponsmiths.",
				groups = {
					-- #if BEFORE TBC
					{
						name = "Annihilator",
						recipeID = 16991,
						requireSkill = 17041,
					},
					{
						name = "Arcanite Reaper",
						recipeID = 16994,
						requireSkill = 17041,
					},
					{
						name = "Dark Iron Destroyer",
						recipeID = 20897,
						requireSkill = 17041,
					},
					{
						name = "Dawn's Edge",
						timeline = { REMOVED_4_0_3, ADDED_7_1_5 },
						recipeID = 16970,
						requireSkill = 17041,
					},
					applyclassicphase(PHASE_THREE_RECIPES, {
						name = "Nightfall",
						recipeID = 23653,
						requireSkill = 17041,
					}),
					-- #endif
					applyclassicphase(TBC_PHASE_ONE,{
						name = "Black Planar Edge",
						recipeID = 34542,
						requireSkill = 17041,
						timeline = {
							ADDED_2_0_3,
							REMOVED_4_0_1,
						},
					}),
					applyclassicphase(TBC_PHASE_ONE,{
						name = "Bloodmoon",
						recipeID = 36261,
						requireSkill = 17041,
						timeline = {
							ADDED_2_0_3,
							REMOVED_4_0_1,
						},
					}),
					applyclassicphase(TBC_PHASE_ONE,{
						name = "Lunar Crescent",
						recipeID = 34543,
						requireSkill = 17041,
						timeline = {
							ADDED_2_0_3,
							REMOVED_4_0_1,
						},
					}),
					applyclassicphase(TBC_PHASE_ONE,{
						name = "Mooncleaver",
						recipeID = 34544,
						requireSkill = 17041,
						timeline = {
							ADDED_2_0_3,
							REMOVED_4_0_1,
						},
					}),
					-- #if BEFORE 7.1.5.23360
					applyclassicphase(TBC_PHASE_ONE,{
						name = "Skyforged Great Axe",
						recipeID = 36135,
						requireSkill = 17041,
						timeline = {
							ADDED_2_0_3,
							REMOVED_4_0_1,
							ADDED_7_1_5,
						},
					}),
					applyclassicphase(TBC_PHASE_ONE,{
						name = "Stormforged Axe",
						recipeID = 36134,
						requireSkill = 17041,
						timeline = {
							ADDED_2_0_3,
							REMOVED_4_0_1,
							ADDED_7_1_5,
						},
					}),
					-- #endif
					applyclassicphase(TBC_PHASE_ONE,{
						name = "The Planar Edge",
						recipeID = 34541,
						requireSkill = 17041,
						timeline = {
							ADDED_2_0_3,
							REMOVED_4_0_1,
						},
					}),
					applyclassicphase(TBC_PHASE_ONE,{
						name = "Wicked Edge of the Planes",
						recipeID = 36260,
						requireSkill = 17041,
						timeline = {
							ADDED_2_0_3,
							REMOVED_4_0_1,
						},
					}),
				},
			}),
			prof(17040, {	-- Master Hammersmith
				sourceQuests = {
					5305,	-- Sweet Serenity [Master Hammersmith]
				},
				description = "These items can only be crafted by Master Hammersmith specialized Weaponsmiths.",
				groups = {
					-- #if BEFORE TBC
					applyclassicphase(PHASE_THREE_RECIPES, {
						name = "Ebon Hand",
						recipeID = 23650,
						requireSkill = 17040,
					}),
					{
						name = "Enchanted Battlehammer",
						timeline = { REMOVED_4_0_3 },
						recipeID = 16973,
						requireSkill = 17040,
					},
					{
						name = "Hammer of the Titans",
						recipeID = 16988,
						requireSkill = 17040,
					},
					{
						name = "Masterwork Stormhammer",
						timeline = { REMOVED_6_0_2 },
						recipeID = 16993,
						requireSkill = 17040,
					},
					applyclassicphase(PHASE_FIVE_RECIPES, {
						name = "Persuader",
						recipeID = 27830,
						requireSkill = 17040,
					}),
					{
						name = "Serenity",
						timeline = {
							REMOVED_2_0_1, ADDED_3_0_2,
						},
						recipeID = 16983,
						requireSkill = 17040,
					},
					-- #endif
					applyclassicphase(TBC_PHASE_ONE,{
						name = "Deep Thunder",
						recipeID = 34548,
						requireSkill = 17040,
						timeline = {
							ADDED_2_0_3,
							REMOVED_4_0_1,
						},
					}),
					applyclassicphase(TBC_PHASE_ONE,{
						name = "Dragonmaw",
						recipeID = 34546,
						requireSkill = 17040,
						timeline = {
							ADDED_2_0_3,
							REMOVED_4_0_1,
						},
					}),
					applyclassicphase(TBC_PHASE_ONE,{
						name = "Dragonstrike",
						recipeID = 36262,
						requireSkill = 17040,
						timeline = {
							ADDED_2_0_3,
							REMOVED_4_0_1,
						},
					}),
					applyclassicphase(TBC_PHASE_ONE,{
						name = "Drakefist Hammer",
						recipeID = 34545,
						requireSkill = 17040,
						timeline = {
							ADDED_2_0_3,
							REMOVED_4_0_1,
						},
					}),
					-- #if BEFORE 7.1.5.23360
					applyclassicphase(TBC_PHASE_ONE,{
						name = "Great Earthforged Hammer",
						recipeID = 36137,
						requireSkill = 17040,
						timeline = {
							ADDED_2_0_3,
							REMOVED_4_0_1,
							ADDED_7_1_5,
						},
					}),
					applyclassicphase(TBC_PHASE_ONE,{
						name = "Lavaforged Warhammer",
						recipeID = 36136,
						requireSkill = 17040,
						timeline = {
							ADDED_2_0_3,
							REMOVED_4_0_1,
							ADDED_7_1_5,
						},
					}),
					-- #endif
					applyclassicphase(TBC_PHASE_ONE,{
						name = "Stormherald",
						recipeID = 36263,
						requireSkill = 17040,
						timeline = {
							ADDED_2_0_3,
							REMOVED_4_0_1,
						},
					}),
					applyclassicphase(TBC_PHASE_ONE,{
						name = "Thunder",
						recipeID = 34547,
						requireSkill = 17040,
						timeline = {
							ADDED_2_0_3,
							REMOVED_4_0_1,
						},
					}),
				},
			}),
			prof(17039, {	-- Master Swordsmith
				sourceQuest = 5307,	-- Corruption [Master Swordsmith]
				description = "These items can only be crafted by Master Swordsmith specialized Weaponsmiths.",
				groups = {
					-- #if BEFORE TBC
					{
						name = "Arcanite Champion",
						recipeID = 16990,
						requireSkill = 17039,
					},
					applyclassicphase(PHASE_THREE_RECIPES, {
						name = "Blackguard",
						recipeID = 23652,
						requireSkill = 17039,
					}),
					{
						name = "Blazing Rapier",
						recipeID = 16978,
						requireSkill = 17039,
						timeline = {
							REMOVED_4_0_1,
							ADDED_7_1_5,
						},
					},
					{
						name = "Corruption",
						timeline = {
							REMOVED_2_0_1, ADDED_3_0_2, REMOVED_4_0_3, ADDED_7_1_5,
						},
						recipeID = 16985,
						requireSkill = 17039,
					},
					{
						name = "Dark Iron Reaver",
						recipeID = 20890,
						requireSkill = 17039,
					},
					{
						name = "Frostguard",
						recipeID = 16992,
						requireSkill = 17039,
					},
					applyclassicphase(PHASE_FIVE_RECIPES, {
						name = "Sageblade",
						recipeID = 27832,
						requireSkill = 17039,
					}),
					-- #endif
					applyclassicphase(TBC_PHASE_ONE,{
						name = "Blazefury",
						recipeID = 36258,
						requireSkill = 17039,
						timeline = {
							ADDED_2_0_3,
							REMOVED_4_0_1,
						},
					}),
					applyclassicphase(TBC_PHASE_ONE,{
						name = "Blazeguard",
						recipeID = 34537,
						requireSkill = 17039,
						timeline = {
							ADDED_2_0_3,
							REMOVED_4_0_1,
						},
					}),
					applyclassicphase(TBC_PHASE_ONE,{
						name = "Fireguard",
						recipeID = 34535,
						requireSkill = 17039,
						timeline = {
							ADDED_2_0_3,
							REMOVED_4_0_1,
						},
					}),
					applyclassicphase(TBC_PHASE_ONE,{
						name = "Lionheart Blade",
						recipeID = 34538,
						requireSkill = 17039,
						timeline = {
							ADDED_2_0_3,
							REMOVED_4_0_1,
						},
					}),
					applyclassicphase(TBC_PHASE_ONE,{
						name = "Lionheart Champion",
						recipeID = 34540,
						requireSkill = 17039,
						timeline = {
							ADDED_2_0_3,
							REMOVED_4_0_1,
						},
					}),
					applyclassicphase(TBC_PHASE_ONE,{
						name = "Lionheart Executioner",
						recipeID = 36259,
						requireSkill = 17039,
						timeline = {
							ADDED_2_0_3,
							REMOVED_4_0_1,
						},
					}),
					-- #if BEFORE 7.1.5.23360
					applyclassicphase(TBC_PHASE_ONE,{
						name = "Stoneforged Claymore",
						recipeID = 36133,
						requireSkill = 17039,
						timeline = {
							ADDED_2_1_0,
							REMOVED_4_0_1,
							ADDED_7_1_5,
						},
					}),
					applyclassicphase(TBC_PHASE_ONE,{
						name = "Windforged Rapier",
						recipeID = 36131,
						requireSkill = 17039,
						timeline = {
							ADDED_2_0_3,
							REMOVED_4_0_1,
							ADDED_7_1_5,
						},
					}),
					-- #endif
				},
			}),
			{
				name = "Weapons",
				description = "These can be crafted by any Weaponsmith.",
				categoryID = 227,
				groups = {
					-- #if BEFORE TBC
					applyclassicphase(PHASE_THREE_RECIPES, {
						name = "Black Amnesty",
						recipeID = 23638,
						requireSkill = 9787,
					}),
					applyclassicphase(PHASE_THREE_RECIPES, {
						name = "Blackfury",
						recipeID = 23639,
						requireSkill = 9787,
					}),
					{
						name = "Bleakwood Hew",
						timeline = { CREATED_1_12_1, ADDED_7_1_5 },
						recipeID = 16965,
						requireSkill = 9787,
					},
					{
						name = "Blight",
						recipeID = 10011,
						requireSkill = 9787,
					},
					{
						name = "Blood Talon",
						timeline = { CREATED_1_12_1 },	-- Never Implemented
						recipeID = 16986,
						requireSkill = 9787,
					},
					{
						name = "Dark Iron Pulverizer",
						recipeID = 15292,
						requireSkill = 9787,
					},
					{
						name = "Dark Iron Sunderer",
						recipeID = 15294,
						requireSkill = 9787,
					},
					{
						name = "Darkspear",
						timeline = { CREATED_1_12_1, ADDED_7_1_5 },
						recipeID = 16987,
						requireSkill = 9787,
					},
					{
						name = "Heartseeker",
						recipeID = 16995,
						requireSkill = 9787,
					},
					-- #endif
					applyclassicphase(WRATH_PHASE_ONE, {
						name = "Corroded Saronite Edge",
						timeline = { REMOVED_4_0_1 },
						recipeID = 55183,
					}),
					applyclassicphase(WRATH_PHASE_ONE, {
						name = "Corroded Saronite Woundbringer",
						timeline = { REMOVED_4_0_1 },
						recipeID = 55184,
					}),
					-- #if BEFORE 7.1.5
					applyclassicphase(TBC_PHASE_ONE, {
						name = "Light Earthforged Blade",
						timeline = { CREATED_2_0_1, ADDED_7_1_5 },
						recipeID = 36125,
						requireSkill = 9787,
					}),
					-- #endif
					applyclassicphase(TBC_PHASE_ONE, {
						name = "Light Emberforged Hammer",
						timeline = { REMOVED_4_0_1 },
						recipeID = 36128,
						requireSkill = 9787,
					}),
					applyclassicphase(TBC_PHASE_ONE, {
						name = "Light Skyforged Axe",
						timeline = { REMOVED_4_0_1 },
						recipeID = 36126,
						requireSkill = 9787,
					}),
					-- #if BEFORE TBC
					{
						name = "Phantom Blade",
						recipeID = 10007,
						requireSkill = 9787,
					},
					-- #endif
					-- #if BEFORE CATA
					applyclassicphase(WRATH_PHASE_ONE, {
						name = "Saronite Mindcrusher",
						timeline = { ADDED_3_0_2 },
						recipeID = 55185,
					}),
					-- #endif
					-- #if BEFORE TBC
					{
						name = "The Shatterer",
						timeline = { REMOVED_4_0_1 },
						recipeID = 10003,
						requireSkill = 9787,
					},
					{
						name = "Truesilver Champion",
						timeline = { REMOVED_4_0_1 },
						recipeID = 10015,
						requireSkill = 9787,
					},
					-- #endif
				}
			},
		},
	}),
});
-- #endif
