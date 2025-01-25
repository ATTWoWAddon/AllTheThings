-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------
CLIMBING = createHeader({
	readable = "Climbing",
	icon = 4562583,
	text = {
		en = WOWAPI_GetSpellName(365311),
	},
});
root(ROOTS.ExpansionFeatures, expansion(EXPANSION.DF, bubbleDown({ ["timeline"] = { ADDED_10_0_2_LAUNCH } }, {
	n(DRAGONSCALE_EXPEDITION, {
		n(CLIMBING, bubbleDownSelf({ ["minReputation"] = { FACTION_DRAGONSCALE_EXPEDITION, 6 } }, {
			n(ACHIEVEMENTS, {
				ach(16625),	-- Belay On!
				ach(16588),	-- How Did These Get Here?
				ach(16600),	-- Isles Ascender
				ach(16587),	-- Lead Climber
				ach(16591),	-- The Gentleman Elemental
				ach(16623),	-- Toe Tension
			}),
			n(QUESTS, {
				------ RENOWN 6 ------
				q(69855, {	-- A Climber's Calling
					["description"] = "Spawns Anywhere on Dragon Isles.",
					["provider"] = { "n", 196643 },	-- Doc Nanners
					["maps"] = { THE_WAKING_SHORES, OHNAHRAN_PLAINS, THE_AZURE_SPAN, THALDRASZUS, VALDRAKKEN },
				}),
				q(72524, {	-- Basic Climbing Gear
					["sourceQuests"] = { 69855 },	-- A Climber's Calling
					["provider"] = { "n", 187700 },	-- Pathfinder Jab
					["coord"] = { 47.3, 83.4, THE_WAKING_SHORES },
				}),
				q(66351, {	-- Smoke Over the Mountain
					["sourceQuests"] = { 72524 },	-- Basic Climbing Gear
					["provider"] = { "n", 187700 },	-- Pathfinder Jab
					["coord"] = { 47.3, 83.4, THE_WAKING_SHORES },
				}),
				q(65421, {	-- Climb Every Mountain
					["sourceQuests"] = { 66351 },	-- Smoke Over the Mountain
					["provider"] = { "n", 181039 },	-- Rocky Dustbeard
					["coord"] = { 62.4, 50.5, THE_WAKING_SHORES },
					["g"] = {
						ach(16624),	-- Which Knot Was It Again?
						i(191138),	-- Clinging Gustbloom Sample (QI!)
					},
				}),
			}),
			n(WORLD_QUESTS, sharedData({ ["isWorldQuest"] = true }, {
					-- The Waking Shores --
				q(66070, {	-- Brightblade's Bones
					["coord"] = { 22.0, 95.1, THE_WAKING_SHORES },
					["g"] = {
						n(187077, {	-- Cymre Brightblade
							["description"] = "Only available when world quest is active.",
							["coord"] = { 22.8, 95.0, THE_WAKING_SHORES },
							["g"] = {
								i(202085, {	-- Bugbiter Tortoise (PET!)
									["cost"] = {
										{ "i", 202084, 1 },	-- 1xEroded Fossil
										{ "i", 202082, 1 },	-- 1xPetrified Dragon Egg
									},
								}),
							},
						}),
						i(191951),	-- Lost Banana
					},
				}),
				q(64768, {	-- Lightsprocket's Artifact Hunt
					["coord"] = { 48.7, 36.8, THE_WAKING_SHORES },
				}),
				q(70651, {	-- Stolen Luggage
					["coord"] = { 61.6, 49.5, THE_WAKING_SHORES },
				}),

					-- Ohn'ahran Plains --
				q(70655, {	-- Leaves from the Vine
					["coord"] = { 82.9, 31.8, OHNAHRAN_PLAINS },
				}),
				q(70652, {	-- Take One Down, Pass It Around
					["coord"] = { 24.5, 34.7, OHNAHRAN_PLAINS }
				}),

					-- The Azure Span --
				q(70662, {	-- A Bone to Pickaxe
					["coord"] = { 27.7, 44.1, THE_AZURE_SPAN },
				}),
				q(70658, {	-- Artifact or Fiction
					["coord"] = { 71.5, 22.2, THE_AZURE_SPAN },
				}),
				q(70653, {	-- Cold Hard Science
					["coord"] = { 47.9, 39.1, THE_AZURE_SPAN },
				}),

					-- Thaldraszus --
				q(70661, {	-- Supplies on High
					["coord"] = { 44.6, 50.1, THALDRASZUS },
				}),
				q(70654, {	-- Are You Kitten Me?
					["coord"] = { 59, 76.8, THALDRASZUS },
				}),
				q(70656, {	-- Not Mushroom For Error
					["coord"] = { 56.7, 35.3, THALDRASZUS },
				}),
			})),
		})),
	}),
})));
root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.DF, bubbleDown({ ["timeline"] = { ADDED_10_0_2_LAUNCH } }, {
	n(DRAGONSCALE_EXPEDITION, {
		n(CLIMBING, {
			q(72560),	-- Triggered after completing Climb Every Mountain (questID 65421)
			q(71997),	-- looted bonus supplies (Enchanted Compass) while on climbing WQ (66070)
			q(71998),	-- looted bonus supplies (Enchanted Compass) while on climbing WQ (64768)
			q(71999),	-- looted bonus supplies (Enchanted Compass) while on climbing WQ (70652)
			q(72001),	-- looted bonus supplies (Enchanted Compass) while on climbing WQ (70655)
			q(72002),	-- looted bonus supplies (Enchanted Compass) while on climbing WQ (???)
			q(72003),	-- looted bonus supplies (Enchanted Compass) while on climbing WQ (70658)
			q(72005),	-- looted bonus supplies (Enchanted Compass) while on climbing WQ (70654)
			q(72006),	-- looted bonus supplies (Enchanted Compass) while on climbing WQ (70661)
			q(72007),	-- looted bonus supplies (Enchanted Compass) while on climbing WQ (70656)
			q(66478),	-- Rescuing the Marmot (188912) during Brightblade's Bones (66070) (requires Lost Banana 191951) (spellID 371687)
			q(75208),	-- looted lost supplies while on climbing WQ 75060 (A Veritable Dumping Ground)
			q(75207),	-- looted lost supplies while on climbing WQ 75061 (No Mushroom For Ever)
			q(75210),	-- looted lost supplies while on climbing WQ 75062 (Crystalline Conundrum)
			q(75206),	-- looted lost supplies while on climbing WQ 75058 (Spearheading Acquisitio)
			q(77692),	-- looted lost supplies while on climbing WQ 77156 (Botanical Redistribution)
		}),
	}),
})));