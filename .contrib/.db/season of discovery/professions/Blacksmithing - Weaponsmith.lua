profession(BLACKSMITHING, {
	prof(9787, {	-- Weaponsmith
		description = "These items can only be crafted by Blacksmiths who have completed the Way of the Weaponsmith quest chain.\n\nNOTE: You may only have one of these specializations active per character. If you wish to finish your collection, you must level several Blacksmiths and complete the opposing specialization(s).",
		sourceQuests = {
			82662,	-- The Way of the Weaponsmith [Alliance]
			82665,	-- The Way of the Weaponsmith [Horde]
		},
		groups = {
			prof(17041, {	-- Master Axesmith
				sourceQuest = 5306,	-- Snakestone of the Shadow Huntress [Master Axesmith]
				description = "These items can only be crafted by Master Axesmith specialized Weaponsmiths.",
				groups = {
					{
						name = "Annihilator",
						recipeID = 16991,
						requireSkill = 17041,
						description = "Blizzard stated that Annihilator was an item that forced 1 member of the raid into a role that did not fit their design, so they've decided to not include Annihilator.",
						timeline = { REMOVED_1_15_0 },
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
						recipeID = 16970,
						requireSkill = 17041,
					},
					applyclassicphase(PHASE_THREE_RECIPES, {
						name = "Nightfall",
						recipeID = 23653,
						requireSkill = 17041,
						timeline = { REMOVED_1_15_0 },
					}),
				},
			}),
			prof(17040, {	-- Master Hammersmith
				sourceQuests = {
					84496,	-- Sweet Serenity [Master Hammersmith]
				},
				description = "These items can only be crafted by Master Hammersmith specialized Weaponsmiths.",
				groups = {
					applyclassicphase(PHASE_THREE_RECIPES, {
						name = "Ebon Hand",
						recipeID = 23650,
						requireSkill = 17040,
					}),
					{
						name = "Enchanted Battlehammer",
						timeline = { REMOVED_1_15_3 },
						recipeID = 16973,
						requireSkill = 17040,
					},
					applyclassicphase(SOD_PHASE_FOUR, {
						name = "Finely-Enchanted Battlehammer",
						recipeID = 461733,
						requireSkill = 17040,
						timeline = { ADDED_1_15_3 },
					}),
					{
						name = "Hammer of the Titans",
						recipeID = 16988,
						requireSkill = 17040,
					},
					{
						name = "Masterwork Stormhammer",
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
						timeline = { REMOVED_1_15_3 },
						recipeID = 16983,
						requireSkill = 17040,
					},
					applyclassicphase(SOD_PHASE_FOUR, {
						name = "Skyrider's Masterwork Stormhammer",
						recipeID = 461647,
						requireSkill = 17040,
						timeline = { ADDED_1_15_3 },
					}),
					applyclassicphase(SOD_PHASE_FOUR, {
						name = "Tranquility",
						recipeID = 461718,
						requireSkill = 17040,
						timeline = { ADDED_1_15_3 },
					}),
				},
			}),
			prof(17039, {	-- Master Swordsmith
				sourceQuest = 5307,	-- Corruption [Master Swordsmith]
				description = "These items can only be crafted by Master Swordsmith specialized Weaponsmiths.",
				groups = {
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
					},
					{
						name = "Corruption",
						timeline = { REMOVED_1_15_3 },
						recipeID = 16985,
						requireSkill = 17039,
					},
					{
						name = "Dark Iron Reaver",
						recipeID = 20890,
						requireSkill = 17039,
					},
					applyclassicphase(SOD_PHASE_FOUR, {
						name = "Desecration",
						recipeID = 461714,
						requireSkill = 17039,
						timeline = { REMOVED_1_15_3 },
					}),
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
				},
			}),
			{
				name = "Weapons",
				description = "These can be crafted by any Weaponsmith.",
				categoryID = 227,
				groups = {
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
						timeline = { CREATED_1_12_1 },
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
						timeline = { CREATED_1_12_1 },
						recipeID = 16987,
						requireSkill = 9787,
					},
					applyclassicphase(SOD_PHASE_FOUR, {
						name = "Deadly Heartseeker",
						recipeID = 461716,
						requireSkill = 9787,
						timeline = { ADDED_1_15_3 },
					}),
					{
						name = "Heartseeker",
						recipeID = 16995,
						requireSkill = 9787,
						timeline = { REMOVED_1_15_3 },
					},
					{
						name = "Phantom Blade",
						recipeID = 10007,
						requireSkill = 9787,
					},
					{
						name = "The Shatterer",
						recipeID = 10003,
						requireSkill = 9787,
					},
					{
						name = "Truesilver Champion",
						recipeID = 10015,
						requireSkill = 9787,
					},
				}
			},
		},
	}),
});
