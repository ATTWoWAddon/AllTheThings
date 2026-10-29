-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
root(ROOTS.Instances, n(TIER_ZERO_POINT_FIVE_SETS, {
	n(ACHIEVEMENTS, {
		ach(62054, {	-- Lord Valthalak Laid to Rest
			sourceQuests = {
				8999,	-- Saving the Best for Last [A] (Druid)
				9007,	-- Saving the Best for Last [H] (Druid)
				9000,	-- Saving the Best for Last [A] (Hunter)
				9008,	-- Saving the Best for Last [H] (Hunter)
				9001,	-- Saving the Best for Last [A] (Mage)
				9014,	-- Saving the Best for Last [H] (Mage)
				9002,	-- Saving the Best for Last [A] (Paladin)
				10499,	-- Saving the Best for Last [H] (Paladin) (TODO: verify quest name)
				9003,	-- Saving the Best for Last [A] (Priest)
				9009,	-- Saving the Best for Last [H] (Priest)
				9004,	-- Saving the Best for Last [A] (Rogue)
				9010,	-- Saving the Best for Last [H] (Rogue)
				10498,	-- Saving the Best for Last [A] (Shaman) (TODO: verify quest name)
				9011,	-- Saving the Best for Last [H] (Shaman)
				9005,	-- Saving the Best for Last [A] (Warlock)
				9012,	-- Saving the Best for Last [H] (Warlock)
				9006,	-- Saving the Best for Last [A] (Warrior)
				9013,	-- Saving the Best for Last [H] (Warrior)
			},
			timeline = { TIMELINE.ADDED_1_60_1 },
		}),
	}),
	cl(DRUID, {
		{	-- An Earnest Proposition
			allianceQuestData = q(8905, {	-- An Earnest Proposition [A]
				qg = 16013,	-- Deliana
				coord = { 43.5, 52.6, MAP.IRONFORGE },
				maps = { MAP.WINTERSPRING, MAP.SCHOLOMANCE, MAP.STRATHOLME },
				groups = {
					objective(1, {	-- 0/15 Winterspring Blood Sample
						provider = { "i", 21928 },	-- Winterspring Blood Sample
					}),
				},
			}),
			hordeQuestData = q(8913, {	-- An Earnest Proposition [H]
				qg = 16012,	-- Mokvar
				coord = { 35.0, 38.3, MAP.ORGRIMMAR },
				maps = { MAP.SILITHUS, MAP.SCHOLOMANCE, MAP.STRATHOLME },
				groups = {
					objective(1, {	-- 0/15 Silithus Venom Sample
						provider = { "i", 22381 },	-- Silithus Venom Sample
						crs = {
							11739,	-- Rock Stalker
							11738,	-- Sand Skitterer
							11737,	-- Stonelash Flayer
							11736,	-- Stonelash Pincer
							11735,	-- Stonelash Scorpid
						},
					}),
				},
			}),
			classes = { DRUID },
			cost = {
				{ "i", 16714, 1 },	-- 1x Wildheart Bracers
				{ "g", 200000 },	-- 20g
			},
			lvl = 58,
			groups = { i(22108) },	-- Feralheart Bracers
		},
		{	-- Anthion's Parting Words
			allianceQuestData = q(8951),	-- Anthion's Parting Words [A]
			hordeQuestData = q(9016),	-- Anthion's Parting Words [H]
			qg = 16016,	-- Anthion Harmon
			sourceQuest = 9015,	-- The Challenge
			coord = { 30.9, 16.8, MAP.EASTERN_PLAGUELANDS },
			maps = {
				MAP.STRATHOLME,
				MAP.BLACKROCK_SPIRE,
			},
			classes = { DRUID },
			cost = {
				{ "i", 16715, 1 },	-- 1x Wildheart Boots
				{ "i", 16719, 1 },	-- 1x Wildheart Kilt
				{ "i", 16718, 1 },	-- 1x Wildheart Spaulders
			},
			lvl = 58,
			groups = {
				i(22107),	-- Feralheart Boots
				i(22111),	-- Feralheart Kilt
				i(22112),	-- Feralheart Spaulders
			},
		},
		{	-- Just Compensation
			allianceQuestData = q(8926, {	-- Just Compensation [A]
				sourceQuest = 8977,	-- Return to Deliana
				qg = 16013,	-- Deliana
				coord = { 43.5, 52.6, MAP.IRONFORGE },
			}),
			hordeQuestData = q(8927, {	-- Just Compensation [H]
				sourceQuest = 8978,	-- Return to Mokvar
				qg = 16012,	-- Mokvar
				coord = { 35.0, 38.3, MAP.ORGRIMMAR },
			}),
			maps = {
				MAP.SCHOLOMANCE,
				MAP.STRATHOLME,
				MAP.BLACKROCK_SPIRE,
			},
			classes = { DRUID },
			cost = {
				{ "i", 16716, 1 },	-- 1x Wildheart Belt
				{ "i", 16717, 1 },	-- 1x Wildheart Gloves
			},
			lvl = 58,
			groups = {
				i(22106),	-- Feralheart Belt
				i(22110),	-- Feralheart Gloves
			},
		},
		{	-- Saving the Best for Last
			allianceQuestData = q(8999, {	-- Saving the Best for Last [A]
				sourceQuest = 8997,	-- Back to the Beginning [ALLIANCE]
				qg = 16013,	-- Deliana
				coord = { 43.5, 52.6, MAP.IRONFORGE },
			}),
			hordeQuestData = q(9007, {	-- Saving the Best for Last [H]
				sourceQuest = 8998,	-- Back to the Beginning [HORDE]
				qg = 16012,	-- Mokvar
				coord = { 35.0, 38.3, MAP.ORGRIMMAR },
			}),
			maps = {
				MAP.SCHOLOMANCE,
				MAP.BLACKROCK_SPIRE,
			},
			classes = { DRUID },
			cost = {
				{ "i", 16720, 1 },	-- 1x Wildheart Cowl
				{ "i", 16706, 1 },	-- 1x Wildheart Vest
			},
			lvl = 58,
			groups = {
				i(22109),	-- Feralheart Cowl
				i(22113),	-- Feralheart Vest
			},
		},
	}),
	cl(HUNTER, {
		{	-- An Earnest Proposition
			allianceQuestData = q(8906, {	-- An Earnest Proposition [A]
				qg = 16013,	-- Deliana
				coord = { 43.5, 52.6, MAP.IRONFORGE },
				maps = { MAP.WINTERSPRING, MAP.SCHOLOMANCE, MAP.STRATHOLME },
				groups = {
					objective(1, {	-- 0/15 Winterspring Blood Sample
						provider = { "i", 21928 },	-- Winterspring Blood Sample
					}),
				},
			}),
			hordeQuestData = q(8914, {	-- An Earnest Proposition [H]
				qg = 16012,	-- Mokvar
				coord = { 35.0, 38.3, MAP.ORGRIMMAR },
				maps = { MAP.SILITHUS, MAP.SCHOLOMANCE, MAP.STRATHOLME },
				groups = {
					objective(1, {	-- 0/15 Silithus Venom Sample
						provider = { "i", 22381 },	-- Silithus Venom Sample
						crs = {
							11739,	-- Rock Stalker
							11738,	-- Sand Skitterer
							11737,	-- Stonelash Flayer
							11736,	-- Stonelash Pincer
							11735,	-- Stonelash Scorpid
						},
					}),
				},
			}),
			classes = { HUNTER },
			cost = {
				{ "i", 16681, 1 },	-- 1x Beaststalker's Bindings
				{ "g", 200000 },	-- 20g
			},
			lvl = 58,
			groups = { i(22011) },	-- Beastmaster's Bindings
		},
		{	-- Anthion's Parting Words
			allianceQuestData = q(8952),	-- Anthion's Parting Words [A]
			hordeQuestData = q(9017),	-- Anthion's Parting Words [H]
			qg = 16016,	-- Anthion Harmon
			sourceQuest = 9015,	-- The Challenge
			coord = { 30.9, 16.8, MAP.EASTERN_PLAGUELANDS },
			maps = {
				MAP.STRATHOLME,
				MAP.BLACKROCK_SPIRE,
			},
			classes = { HUNTER },
			cost = {
				{ "i", 16675, 1 },	-- 1x Beaststalker's Boots
				{ "i", 16678, 1 },	-- 1x Beaststalker's Pants
				{ "i", 16679, 1 },	-- 1x Beaststalker's Mantle
			},
			lvl = 58,
			groups = {
				i(22061),	-- Beastmaster's Boots
				i(22017),	-- Beastmaster's Pants
				i(22016),	-- Beastmaster's Mantle
			},
		},
		{	-- Just Compensation
			allianceQuestData = q(8931, {	-- Just Compensation [A]
				sourceQuest = 8977,	-- Return to Deliana
				qg = 16013,	-- Deliana
				coord = { 43.5, 52.6, MAP.IRONFORGE },
			}),
			hordeQuestData = q(8938, {	-- Just Compensation [H]
				sourceQuest = 8978,	-- Return to Mokvar
				qg = 16012,	-- Mokvar
				coord = { 35.0, 38.3, MAP.ORGRIMMAR },
			}),
			maps = {
				MAP.BLACKROCK_SPIRE,
			},
			classes = { HUNTER },
			cost = {
				{ "i", 16680, 1 },	-- 1x Beaststalker's Belt
				{ "i", 16676, 1 },	-- 1x Beaststalker's Gloves
			},
			lvl = 58,
			groups = {
				i(22010),	-- Beastmaster's Belt
				i(22015),	-- Beastmaster's Gloves
			},
		},
		{	-- Saving the Best for Last
			allianceQuestData = q(9000, {	-- Saving the Best for Last [A]
				sourceQuest = 8997,	-- Back to the Beginning [ALLIANCE]
				qg = 16013,	-- Deliana
				coord = { 43.5, 52.6, MAP.IRONFORGE },
			}),
			hordeQuestData = q(9008, {	-- Saving the Best for Last [H]
				sourceQuest = 8998,	-- Back to the Beginning [HORDE]
				qg = 16012,	-- Mokvar
				coord = { 35.0, 38.3, MAP.ORGRIMMAR },
			}),
			maps = {
				MAP.SCHOLOMANCE,
				MAP.BLACKROCK_SPIRE,
			},
			classes = { HUNTER },
			cost = {
				{ "i", 16677, 1 },	-- 1x Beaststalker's Cap
				{ "i", 16674, 1 },	-- 1x Beaststalker's Tunic
			},
			lvl = 58,
			groups = {
				i(22013),	-- Beastmaster's Cap
				i(22060),	-- Beastmaster's Tunic
			},
		},
	}),
	cl(MAGE, {
		{	-- An Earnest Proposition
			allianceQuestData = q(8907, {	-- An Earnest Proposition [A]
				qg = 16013,	-- Deliana
				coord = { 43.5, 52.6, MAP.IRONFORGE },
				maps = { MAP.WINTERSPRING, MAP.SCHOLOMANCE, MAP.STRATHOLME },
				groups = {
					objective(1, {	-- 0/15 Winterspring Blood Sample
						provider = { "i", 21928 },	-- Winterspring Blood Sample
					}),
				},
			}),
			hordeQuestData = q(8915, {	-- An Earnest Proposition [H]
				qg = 16012,	-- Mokvar
				coord = { 35.0, 38.3, MAP.ORGRIMMAR },
				maps = { MAP.SILITHUS, MAP.SCHOLOMANCE, MAP.STRATHOLME },
				groups = {
					objective(1, {	-- 0/15 Silithus Venom Sample
						provider = { "i", 22381 },	-- Silithus Venom Sample
						crs = {
							11739,	-- Rock Stalker
							11738,	-- Sand Skitterer
							11737,	-- Stonelash Flayer
							11736,	-- Stonelash Pincer
							11735,	-- Stonelash Scorpid
						},
					}),
				},
			}),
			classes = { MAGE },
			cost = {
				{ "i", 16683, 1 },	-- 1x Magister's Bindings
				{ "g", 200000 },	-- 20g
			},
			lvl = 58,
			groups = { i(22063) },	-- Sorcerer's Bindings
		},
		{	-- Anthion's Parting Words
			allianceQuestData = q(8953),	-- Anthion's Parting Words [A]
			hordeQuestData = q(9018),	-- Anthion's Parting Words [H]
			qg = 16016,	-- Anthion Harmon
			sourceQuest = 9015,	-- The Challenge
			coord = { 30.9, 16.8, MAP.EASTERN_PLAGUELANDS },
			maps = { MAP.SCHOLOMANCE, MAP.STRATHOLME },
			classes = { MAGE },
			cost = {
				{ "i", 16682, 1 },	-- 1x Magister's Boots
				{ "i", 16687, 1 },	-- 1x Magister's Leggings
				{ "i", 16689, 1 },	-- 1x Magister's Mantle
			},
			lvl = 58,
			groups = {
				i(22064),	-- Sorcerer's Boots
				i(22067),	-- Sorcerer's Leggings
				i(22068),	-- Sorcerer's Mantle
			},
		},
		{	-- Just Compensation
			allianceQuestData = q(8932, {	-- Just Compensation [A]
				sourceQuest = 8977,	-- Return to Deliana
				qg = 16013,	-- Deliana
				coord = { 43.5, 52.6, MAP.IRONFORGE },
			}),
			hordeQuestData = q(8939, {	-- Just Compensation [H]
				sourceQuest = 8978,	-- Return to Mokvar
				qg = 16012,	-- Mokvar
				coord = { 35.0, 38.3, MAP.ORGRIMMAR },
			}),
			maps = {
				MAP.SCHOLOMANCE,
				MAP.STRATHOLME,
				MAP.BLACKROCK_SPIRE,
			},
			classes = { MAGE },
			cost = {
				{ "i", 16685, 1 },	-- 1x Magister's Belt
				{ "i", 16684, 1 },	-- 1x Magister's Gloves
			},
			lvl = 58,
			groups = {
				i(22062),	-- Sorcerer's Belt
				i(22066),	-- Sorcerer's Gloves
			},
		},
		{	-- Saving the Best for Last
			allianceQuestData = q(9001, {	-- Saving the Best for Last [A]
				sourceQuest = 8997,	-- Back to the Beginning [ALLIANCE]
				qg = 16013,	-- Deliana
				coord = { 43.5, 52.6, MAP.IRONFORGE },
			}),
			hordeQuestData = q(9014, {	-- Saving the Best for Last [H]
				sourceQuest = 8998,	-- Back to the Beginning [HORDE]
				qg = 16012,	-- Mokvar
				coord = { 35.0, 38.3, MAP.ORGRIMMAR },
			}),
			maps = {
				MAP.SCHOLOMANCE,
				MAP.BLACKROCK_SPIRE,
			},
			classes = { MAGE },
			cost = {
				{ "i", 16686, 1 },	-- 1x Magister's Crown
				{ "i", 16688, 1 },	-- 1x Magister's Robes
			},
			lvl = 58,
			groups = {
				i(22065),	-- Sorcerer's Crown
				i(22069),	-- Sorcerer's Robes
			},
		},
	}),
	cl(PALADIN, {
		{	-- An Earnest Proposition
			allianceQuestData = q(8908, {	-- An Earnest Proposition [A]
				qg = 16013,	-- Deliana
				coord = { 43.5, 52.6, MAP.IRONFORGE },
				maps = { MAP.WINTERSPRING, MAP.SCHOLOMANCE, MAP.STRATHOLME },
				groups = {
					objective(1, {	-- 0/15 Winterspring Blood Sample
						provider = { "i", 21928 },	-- Winterspring Blood Sample
					}),
				},
			}),
			hordeQuestData = q(10493, {	-- An Earnest Proposition [H] (TODO: verify quest name)
				qg = 16012,	-- Mokvar
				coord = { 35.0, 38.3, MAP.ORGRIMMAR },
				maps = { MAP.SILITHUS, MAP.SCHOLOMANCE, MAP.STRATHOLME },
				groups = {
					objective(1, {	-- 0/15 Silithus Venom Sample
						provider = { "i", 22381 },	-- Silithus Venom Sample
						crs = {
							11739,	-- Rock Stalker
							11738,	-- Sand Skitterer
							11737,	-- Stonelash Flayer
							11736,	-- Stonelash Pincer
							11735,	-- Stonelash Scorpid
						},
					}),
				},
			}),
			classes = { PALADIN },
			cost = {
				{ "i", 16722, 1 },	-- 1x Lightforge Bracers
				{ "g", 200000 },	-- 20g
			},
			lvl = 58,
			groups = { i(22088) },	-- Soulforge Bracers
		},
		{	-- Anthion's Parting Words
			allianceQuestData = q(8954),	-- Anthion's Parting Words [A]
			hordeQuestData = q(10497),	-- Anthion's Parting Words [H] (TODO: verify quest name)
			qg = 16016,	-- Anthion Harmon
			sourceQuest = 9015,	-- The Challenge
			coord = { 30.9, 16.8, MAP.EASTERN_PLAGUELANDS },
			maps = {
				MAP.STRATHOLME,
				MAP.BLACKROCK_SPIRE,
			},
			classes = { PALADIN },
			cost = {
				{ "i", 16725, 1 },	-- 1x Lightforge Boots
				{ "i", 16728, 1 },	-- 1x Lightforge Legplates
				{ "i", 16729, 1 },	-- 1x Lightforge Spaulders
			},
			lvl = 58,
			groups = {
				i(22087),	-- Soulforge Boots
				i(22092),	-- Soulforge Legplates
				i(22093),	-- Soulforge Spaulders
			},
		},
		{	-- Just Compensation
			allianceQuestData = q(8933, {	-- Just Compensation [A]
				sourceQuest = 8977,	-- Return to Deliana
				qg = 16013,	-- Deliana
				coord = { 43.5, 52.6, MAP.IRONFORGE },
			}),
			hordeQuestData = q(10495, {	-- Just Compensation [H] (TODO: verify quest name)
				sourceQuest = 8978,	-- Return to Mokvar
				qg = 16012,	-- Mokvar
				coord = { 35.0, 38.3, MAP.ORGRIMMAR },
			}),
			maps = { MAP.BLACKROCK_DEPTHS, MAP.STRATHOLME },
			classes = { PALADIN },
			cost = {
				{ "i", 16723, 1 },	-- 1x Lightforge Belt
				{ "i", 16724, 1 },	-- 1x Lightforge Gauntlets
			},
			lvl = 58,
			groups = {
				i(22086),	-- Soulforge Belt
				i(22090),	-- Soulforge Gauntlets
			},
		},
		{	-- Saving the Best for Last
			allianceQuestData = q(9002, {	-- Saving the Best for Last [A]
				sourceQuest = 8997,	-- Back to the Beginning [ALLIANCE]
				qg = 16013,	-- Deliana
				coord = { 43.5, 52.6, MAP.IRONFORGE },
			}),
			hordeQuestData = q(10499, {	-- Saving the Best for Last [H] (TODO: verify quest name)
				sourceQuest = 8998,	-- Back to the Beginning [HORDE]
				qg = 16012,	-- Mokvar
				coord = { 35.0, 38.3, MAP.ORGRIMMAR },
			}),
			maps = {
				MAP.SCHOLOMANCE,
				MAP.BLACKROCK_SPIRE,
			},
			classes = { PALADIN },
			cost = {
				{ "i", 16727, 1 },	-- 1x Lightforge Helm
				{ "i", 16726, 1 },	-- 1x Lightforge Breastplate
			},
			lvl = 58,
			groups = {
				i(22091),	-- Soulforge Helm
				i(22089),	-- Soulforge Breastplate
			},
		},
	}),
	cl(PRIEST, {
		{	-- An Earnest Proposition
			allianceQuestData = q(8909, {	-- An Earnest Proposition [A]
				qg = 16013,	-- Deliana
				coord = { 43.5, 52.6, MAP.IRONFORGE },
				maps = { MAP.WINTERSPRING, MAP.SCHOLOMANCE, MAP.STRATHOLME },
				groups = {
					objective(1, {	-- 0/15 Winterspring Blood Sample
						provider = { "i", 21928 },	-- Winterspring Blood Sample
					}),
				},
			}),
			hordeQuestData = q(8916, {	-- An Earnest Proposition [H]
				qg = 16012,	-- Mokvar
				coord = { 35.0, 38.3, MAP.ORGRIMMAR },
				maps = { MAP.SILITHUS, MAP.SCHOLOMANCE, MAP.STRATHOLME },
				groups = {
					objective(1, {	-- 0/15 Silithus Venom Sample
						provider = { "i", 22381 },	-- Silithus Venom Sample
						crs = {
							11739,	-- Rock Stalker
							11738,	-- Sand Skitterer
							11737,	-- Stonelash Flayer
							11736,	-- Stonelash Pincer
							11735,	-- Stonelash Scorpid
						},
					}),
				},
			}),
			classes = { PRIEST },
			cost = {
				{ "i", 16697, 1 },	-- 1x Devout Bracers
				{ "g", 200000 },	-- 20g
			},
			lvl = 58,
			groups = { i(22079) },	-- Virtuous Bracers
		},
		{	-- Anthion's Parting Words
			allianceQuestData = q(8955),	-- Anthion's Parting Words [A]
			hordeQuestData = q(9019),	-- Anthion's Parting Words [H]
			qg = 16016,	-- Anthion Harmon
			sourceQuest = 9015,	-- The Challenge
			coord = { 30.9, 16.8, MAP.EASTERN_PLAGUELANDS },
			maps = {
				MAP.SCHOLOMANCE,
				MAP.STRATHOLME,
				MAP.BLACKROCK_SPIRE,
			},
			classes = { PRIEST },
			cost = {
				{ "i", 16691, 1 },	-- 1x Devout Sandals
				{ "i", 16694, 1 },	-- 1x Devout Skirt
				{ "i", 16695, 1 },	-- 1x Devout Mantle
			},
			lvl = 58,
			groups = {
				i(22084),	-- Virtuous Sandals
				i(22085),	-- Virtuous Skirt
				i(22082),	-- Virtuous Mantle
			},
		},
		{	-- Just Compensation
			allianceQuestData = q(8934, {	-- Just Compensation [A]
				sourceQuest = 8977,	-- Return to Deliana
				qg = 16013,	-- Deliana
				coord = { 43.5, 52.6, MAP.IRONFORGE },
			}),
			hordeQuestData = q(8940, {	-- Just Compensation [H]
				sourceQuest = 8978,	-- Return to Mokvar
				qg = 16012,	-- Mokvar
				coord = { 35.0, 38.3, MAP.ORGRIMMAR },
			}),
			maps = {
				MAP.STRATHOLME,
				MAP.BLACKROCK_SPIRE,
			},
			classes = { PRIEST },
			cost = {
				{ "i", 16696, 1 },	-- 1x Devout Belt
				{ "i", 16692, 1 },	-- 1x Devout Gloves
			},
			lvl = 58,
			groups = {
				i(22078),	-- Virtuous Belt
				i(22081),	-- Virtuous Gloves
			},
		},
		{	-- Saving the Best for Last
			allianceQuestData = q(9003, {	-- Saving the Best for Last [A]
				sourceQuest = 8997,	-- Back to the Beginning [ALLIANCE]
				qg = 16013,	-- Deliana
				coord = { 43.5, 52.6, MAP.IRONFORGE },
			}),
			hordeQuestData = q(9009, {	-- Saving the Best for Last [H]
				sourceQuest = 8998,	-- Back to the Beginning [HORDE]
				qg = 16012,	-- Mokvar
				coord = { 35.0, 38.3, MAP.ORGRIMMAR },
			}),
			maps = {
				MAP.SCHOLOMANCE,
				MAP.BLACKROCK_SPIRE,
			},
			classes = { PRIEST },
			cost = {
				{ "i", 16693, 1 },	-- 1x Devout Crown
				{ "i", 16690, 1 },	-- 1x Devout Robe
			},
			lvl = 58,
			groups = {
				i(22080),	-- Virtuous Crown
				i(22083),	-- Virtuous Robe
			},
		},
	}),
	cl(ROGUE, {
		{	-- An Earnest Proposition
			allianceQuestData = q(8910, {	-- An Earnest Proposition [A]
				qg = 16013,	-- Deliana
				coord = { 43.5, 52.6, MAP.IRONFORGE },
				maps = { MAP.WINTERSPRING, MAP.SCHOLOMANCE, MAP.STRATHOLME },
				groups = {
					objective(1, {	-- 0/15 Winterspring Blood Sample
						provider = { "i", 21928 },	-- Winterspring Blood Sample
					}),
				},
			}),
			hordeQuestData = q(8917, {	-- An Earnest Proposition [H]
				qg = 16012,	-- Mokvar
				coord = { 35.0, 38.3, MAP.ORGRIMMAR },
				maps = { MAP.SILITHUS, MAP.SCHOLOMANCE, MAP.STRATHOLME },
				groups = {
					objective(1, {	-- 0/15 Silithus Venom Sample
						provider = { "i", 22381 },	-- Silithus Venom Sample
						crs = {
							11739,	-- Rock Stalker
							11738,	-- Sand Skitterer
							11737,	-- Stonelash Flayer
							11736,	-- Stonelash Pincer
							11735,	-- Stonelash Scorpid
						},
					}),
				},
			}),
			classes = { ROGUE },
			cost = {
				{ "i", 16710, 1 },	-- 1x Shadowcraft Bracers
				{ "g", 200000 },	-- 20g
			},
			lvl = 58,
			groups = { i(22004) },	-- Darkmantle Bracers
		},
		{	-- Anthion's Parting Words
			allianceQuestData = q(8956),	-- Anthion's Parting Words [A]
			hordeQuestData = q(9020),	-- Anthion's Parting Words [H]
			qg = 16016,	-- Anthion Harmon
			sourceQuest = 9015,	-- The Challenge
			coord = { 30.9, 16.8, MAP.EASTERN_PLAGUELANDS },
			maps = { MAP.SCHOLOMANCE, MAP.STRATHOLME },
			classes = { ROGUE },
			cost = {
				{ "i", 16711, 1 },	-- 1x Shadowcraft Boots
				{ "i", 16709, 1 },	-- 1x Shadowcraft Pants
				{ "i", 16708, 1 },	-- 1x Shadowcraft Spaulders
			},
			lvl = 58,
			groups = {
				i(22003),	-- Darkmantle Boots
				i(22007),	-- Darkmantle Pants
				i(22008),	-- Darkmantle Spaulders
			},
		},
		{	-- Just Compensation
			allianceQuestData = q(8935, {	-- Just Compensation [A]
				sourceQuest = 8977,	-- Return to Deliana
				qg = 16013,	-- Deliana
				coord = { 43.5, 52.6, MAP.IRONFORGE },
			}),
			hordeQuestData = q(8941, {	-- Just Compensation [H]
				sourceQuest = 8978,	-- Return to Mokvar
				qg = 16012,	-- Mokvar
				coord = { 35.0, 38.3, MAP.ORGRIMMAR },
			}),
			maps = {
				MAP.BLACKROCK_SPIRE,
			},
			classes = { ROGUE },
			cost = {
				{ "i", 16713, 1 },	-- 1x Shadowcraft Belt
				{ "i", 16712, 1 },	-- 1x Shadowcraft Gloves
			},
			lvl = 58,
			groups = {
				i(22006),	-- Darkmantle Gloves
				i(22002),	-- Darkmantle Belt
			},
		},
		{	-- Saving the Best for Last
			allianceQuestData = q(9004, {	-- Saving the Best for Last [A]
				sourceQuest = 8997,	-- Back to the Beginning [ALLIANCE]
				qg = 16013,	-- Deliana
				coord = { 43.5, 52.6, MAP.IRONFORGE },
			}),
			hordeQuestData = q(9010, {	-- Saving the Best for Last [H]
				sourceQuest = 8998,	-- Back to the Beginning [HORDE]
				qg = 16012,	-- Mokvar
				coord = { 35.0, 38.3, MAP.ORGRIMMAR },
			}),
			maps = {
				MAP.SCHOLOMANCE,
				MAP.BLACKROCK_SPIRE,
			},
			classes = { ROGUE },
			cost = {
				{ "i", 16707, 1 },	-- 1x Shadowcraft Cap
				{ "i", 16721, 1 },	-- 1x Shadowcraft Tunic
			},
			lvl = 58,
			groups = {
				i(22005),	-- Darkmantle Cap
				i(22009),	-- Darkmantle Tunic
			},
		},
	}),
	cl(SHAMAN, {
		{	-- An Earnest Proposition
			allianceQuestData = q(10492, {	-- An Earnest Proposition [A] (TODO: verify quest name)
				qg = 16013,	-- Deliana
				coord = { 43.5, 52.6, MAP.IRONFORGE },
				maps = { MAP.WINTERSPRING, MAP.SCHOLOMANCE, MAP.STRATHOLME },
				groups = {
					objective(1, {	-- 0/15 Winterspring Blood Sample
						provider = { "i", 21928 },	-- Winterspring Blood Sample
					}),
				},
			}),
			hordeQuestData = q(8918, {	-- An Earnest Proposition [H]
				qg = 16012,	-- Mokvar
				coord = { 35.0, 38.3, MAP.ORGRIMMAR },
				maps = { MAP.SILITHUS, MAP.SCHOLOMANCE, MAP.STRATHOLME },
				groups = {
					objective(1, {	-- 0/15 Silithus Venom Sample
						provider = { "i", 22381 },	-- Silithus Venom Sample
						crs = {
							11739,	-- Rock Stalker
							11738,	-- Sand Skitterer
							11737,	-- Stonelash Flayer
							11736,	-- Stonelash Pincer
							11735,	-- Stonelash Scorpid
						},
					}),
				},
			}),
			classes = { SHAMAN },
			cost = {
				{ "i", 16671, 1 },	-- 1x Bindings of Elements
				{ "g", 200000 },	-- 20g
			},
			lvl = 58,
			groups = { i(22095) },	-- Bindings of The Five Thunders
		},
		{	-- Anthion's Parting Words
			allianceQuestData = q(10496),	-- Anthion's Parting Words [A] (TODO: verify quest name)
			hordeQuestData = q(8957),	-- Anthion's Parting Words [H]
			qg = 16016,	-- Anthion Harmon
			sourceQuest = 9015,	-- The Challenge
			coord = { 30.9, 16.8, MAP.EASTERN_PLAGUELANDS },
			maps = {
				MAP.STRATHOLME,
				MAP.BLACKROCK_SPIRE,
			},
			classes = { SHAMAN },
			cost = {
				{ "i", 16670, 1 },	-- 1x Boots of Elements
				{ "i", 16668, 1 },	-- 1x Kilt of Elements
				{ "i", 16669, 1 },	-- 1x Pauldrons of Elements
			},
			lvl = 58,
			groups = {
				i(22096),	-- Boots of The Five Thunders
				i(22100),	-- Kilt of The Five Thunders
				i(22101),	-- Pauldrons of The Five Thunders
			},
		},
		{	-- Just Compensation
			allianceQuestData = q(10494, {	-- Just Compensation [A] (TODO: verify quest name)
				sourceQuest = 8977,	-- Return to Deliana
				qg = 16013,	-- Deliana
				coord = { 43.5, 52.6, MAP.IRONFORGE },
			}),
			hordeQuestData = q(8942, {	-- Just Compensation [H]
				sourceQuest = 8978,	-- Return to Mokvar
				qg = 16012,	-- Mokvar
				coord = { 35.0, 38.3, MAP.ORGRIMMAR },
			}),
			maps = {
				MAP.BLACKROCK_SPIRE,
			},
			classes = { SHAMAN },
			cost = {
				{ "i", 16673, 1 },	-- 1x Cord of Elements
				{ "i", 16672, 1 },	-- 1x Gauntlets of Elements
			},
			lvl = 58,
			groups = {
				i(22098),	-- Cord of The Five Thunders
				i(22099),	-- Gauntlets of The Five Thunders
			},
		},
		{	-- Saving the Best for Last
			allianceQuestData = q(10498, {	-- Saving the Best for Last [A] (TODO: verify quest name)
				sourceQuest = 8997,	-- Back to the Beginning [ALLIANCE]
				qg = 16013,	-- Deliana
				coord = { 43.5, 52.6, MAP.IRONFORGE },
			}),
			hordeQuestData = q(9011, {	-- Saving the Best for Last [H]
				sourceQuest = 8998,	-- Back to the Beginning [HORDE]
				qg = 16012,	-- Mokvar
				coord = { 35.0, 38.3, MAP.ORGRIMMAR },
			}),
			maps = {
				MAP.SCHOLOMANCE,
				MAP.BLACKROCK_SPIRE,
			},
			classes = { SHAMAN },
			cost = {
				{ "i", 16667, 1 },	-- 1x Coif of Elements
				{ "i", 16666, 1 },	-- 1x Vest of Elements
			},
			lvl = 58,
			groups = {
				i(22097),	-- Coif of The Five Thunders
				i(22102),	-- Vest of The Five Thunders
			},
		},
	}),
	cl(WARLOCK, {
		{	-- An Earnest Proposition
			allianceQuestData = q(8911, {	-- An Earnest Proposition [A]
				qg = 16013,	-- Deliana
				coord = { 43.5, 52.6, MAP.IRONFORGE },
				maps = { MAP.WINTERSPRING, MAP.SCHOLOMANCE, MAP.STRATHOLME },
				groups = {
					objective(1, {	-- 0/15 Winterspring Blood Sample
						provider = { "i", 21928 },	-- Winterspring Blood Sample
					}),
				},
			}),
			hordeQuestData = q(8919, {	-- An Earnest Proposition [H]
				qg = 16012,	-- Mokvar
				coord = { 35.0, 38.3, MAP.ORGRIMMAR },
				maps = { MAP.SILITHUS, MAP.SCHOLOMANCE, MAP.STRATHOLME },
				groups = {
					objective(1, {	-- 0/15 Silithus Venom Sample
						provider = { "i", 22381 },	-- Silithus Venom Sample
						crs = {
							11739,	-- Rock Stalker
							11738,	-- Sand Skitterer
							11737,	-- Stonelash Flayer
							11736,	-- Stonelash Pincer
							11735,	-- Stonelash Scorpid
						},
					}),
				},
			}),
			classes = { WARLOCK },
			cost = {
				{ "i", 16703, 1 },	-- 1x Dreadmist Bracers
				{ "g", 200000 },	-- 20g
			},
			lvl = 58,
			groups = { i(22071) },	-- Deathmist Bracers
		},
		{	-- Anthion's Parting Words
			allianceQuestData = q(8958),	-- Anthion's Parting Words [A]
			hordeQuestData = q(9021),	-- Anthion's Parting Words [H]
			qg = 16016,	-- Anthion Harmon
			sourceQuest = 9015,	-- The Challenge
			coord = { 30.9, 16.8, MAP.EASTERN_PLAGUELANDS },
			maps = { MAP.SCHOLOMANCE, MAP.STRATHOLME },
			classes = { WARLOCK },
			cost = {
				{ "i", 16704, 1 },	-- 1x Dreadmist Sandals
				{ "i", 16699, 1 },	-- 1x Dreadmist Leggings
				{ "i", 16701, 1 },	-- 1x Dreadmist Mantle
			},
			lvl = 58,
			groups = {
				i(22076),	-- Deathmist Sandals
				i(22072),	-- Deathmist Leggings
				i(22073),	-- Deathmist Mantle
			},
		},
		{	-- Just Compensation
			allianceQuestData = q(8936, {	-- Just Compensation [A]
				sourceQuest = 8977,	-- Return to Deliana
				qg = 16013,	-- Deliana
				coord = { 43.5, 52.6, MAP.IRONFORGE },
			}),
			hordeQuestData = q(8943, {	-- Just Compensation [H]
				sourceQuest = 8978,	-- Return to Mokvar
				qg = 16012,	-- Mokvar
				coord = { 35.0, 38.3, MAP.ORGRIMMAR },
			}),
			maps = { MAP.SCHOLOMANCE, MAP.STRATHOLME },
			classes = { WARLOCK },
			cost = {
				{ "i", 16702, 1 },	-- 1x Dreadmist Belt
				{ "i", 16705, 1 },	-- 1x Dreadmist Wraps
			},
			lvl = 58,
			groups = {
				i(22070),	-- Deathmist Belt
				i(22077),	-- Deathmist Wraps
			},
		},
		{	-- Saving the Best for Last
			allianceQuestData = q(9005, {	-- Saving the Best for Last [A]
				sourceQuest = 8997,	-- Back to the Beginning [ALLIANCE]
				qg = 16013,	-- Deliana
				coord = { 43.5, 52.6, MAP.IRONFORGE },
			}),
			hordeQuestData = q(9012, {	-- Saving the Best for Last [H]
				sourceQuest = 8998,	-- Back to the Beginning [HORDE]
				qg = 16012,	-- Mokvar
				coord = { 35.0, 38.3, MAP.ORGRIMMAR },
			}),
			maps = {
				MAP.SCHOLOMANCE,
				MAP.BLACKROCK_SPIRE,
			},
			classes = { WARLOCK },
			cost = {
				{ "i", 16698, 1 },	-- 1x Dreadmist Mask
				{ "i", 16700, 1 },	-- 1x Dreadmist Robe
			},
			lvl = 58,
			groups = {
				i(22074),	-- Deathmist Mask
				i(22075),	-- Deathmist Robe
			},
		},
	}),
	cl(WARRIOR, {
		{	-- An Earnest Proposition
			allianceQuestData = q(8912, {	-- An Earnest Proposition [A]
				qg = 16013,	-- Deliana
				coord = { 43.5, 52.6, MAP.IRONFORGE },
				maps = { MAP.WINTERSPRING, MAP.SCHOLOMANCE, MAP.STRATHOLME },
				groups = {
					objective(1, {	-- 0/15 Winterspring Blood Sample
						provider = { "i", 21928 },	-- Winterspring Blood Sample
					}),
				},
			}),
			hordeQuestData = q(8920, {	-- An Earnest Proposition [H]
				qg = 16012,	-- Mokvar
				coord = { 35.0, 38.3, MAP.ORGRIMMAR },
				maps = { MAP.SILITHUS, MAP.SCHOLOMANCE, MAP.STRATHOLME },
				groups = {
					objective(1, {	-- 0/15 Silithus Venom Sample
						provider = { "i", 22381 },	-- Silithus Venom Sample
						crs = {
							11739,	-- Rock Stalker
							11738,	-- Sand Skitterer
							11737,	-- Stonelash Flayer
							11736,	-- Stonelash Pincer
							11735,	-- Stonelash Scorpid
						},
					}),
				},
			}),
			classes = { WARRIOR },
			cost = {
				{ "i", 16735, 1 },	-- 1x Bracers of Valor
				{ "g", 200000 },	-- 20g
			},
			lvl = 58,
			groups = { i(21996) },	-- Bracers of Heroism
		},
		{	-- Anthion's Parting Words
			allianceQuestData = q(8959),	-- Anthion's Parting Words [A]
			hordeQuestData = q(9022),	-- Anthion's Parting Words [H]
			qg = 16016,	-- Anthion Harmon
			sourceQuest = 9015,	-- The Challenge
			coord = { 30.9, 16.8, MAP.EASTERN_PLAGUELANDS },
			maps = {
				MAP.SCHOLOMANCE,
				MAP.STRATHOLME,
				MAP.BLACKROCK_SPIRE,
			},
			classes = { WARRIOR },
			cost = {
				{ "i", 16734, 1 },	-- 1x Boots of Valor
				{ "i", 16732, 1 },	-- 1x Legplates of Valor
				{ "i", 16733, 1 },	-- 1x Spaulders of Valor
			},
			lvl = 58,
			groups = {
				i(21995),	-- Boots of Heroism
				i(22000),	-- Legplates of Heroism
				i(22001),	-- Spaulders of Heroism
			},
		},
		{	-- Just Compensation
			allianceQuestData = q(8937, {	-- Just Compensation [A]
				sourceQuest = 8977,	-- Return to Deliana
				qg = 16013,	-- Deliana
				coord = { 43.5, 52.6, MAP.IRONFORGE },
			}),
			hordeQuestData = q(8944, {	-- Just Compensation [H]
				sourceQuest = 8978,	-- Return to Mokvar
				qg = 16012,	-- Mokvar
				coord = { 35.0, 38.3, MAP.ORGRIMMAR },
			}),
			maps = {
				MAP.STRATHOLME,
				MAP.BLACKROCK_SPIRE,
			},
			classes = { WARRIOR },
			cost = {
				{ "i", 16736, 1 },	-- 1x Belt of Valor
				{ "i", 16737, 1 },	-- 1x Gauntlets of Valor
			},
			lvl = 58,
			groups = {
				i(21994),	-- Belt of Heroism
				i(21998),	-- Gauntlets of Heroism
			},
		},
		{	-- Saving the Best for Last
			allianceQuestData = q(9006, {	-- Saving the Best for Last [A]
				sourceQuest = 8997,	-- Back to the Beginning [ALLIANCE]
				qg = 16013,	-- Deliana
				coord = { 43.5, 52.6, MAP.IRONFORGE },
			}),
			hordeQuestData = q(9013, {	-- Saving the Best for Last [H]
				sourceQuest = 8998,	-- Back to the Beginning [HORDE]
				qg = 16012,	-- Mokvar
				coord = { 35.0, 38.3, MAP.ORGRIMMAR },
			}),
			maps = {
				MAP.SCHOLOMANCE,
				MAP.BLACKROCK_SPIRE,
			},
			cost = {
				{ "i", 16731, 1 },	-- 1x Helm of Valor
				{ "i", 16730, 1 },	-- 1x Breastplate of Valor
			},
			classes = { WARRIOR },
			lvl = 58,
			groups = {
				i(21999),	-- Helm of Heroism
				i(21997),	-- Breastplate of Heroism
			},
		},
	}),
	n(QUESTS, {
		q(8925, {	-- A Portable Power Source
			sourceQuest = 8924,	-- Hunting for Ectoplasm
			qg = 16014,	-- Mux Manascrambler
			coord = { 52.4, 27.2, MAP.TANARIS },
			maps = { MAP.BURNING_STEPPES },
			lvl = 58,
			groups = {
				objective(1, {	-- 0/1 Magma Core
					provider = { "i", 21938 },	-- Magma Core
					coord = { 36.0, 56.4, MAP.BURNING_STEPPES },
					cr = 16043,	-- Magma Lord Bokk
				}),
			},
		}),
		q(8928, {	-- A Shifty Merchant
			sourceQuest = 8925,	-- A Portable Power Source
			qg = 16014,	-- Mux Manascrambler
			coord = { 52.4, 27.2, MAP.TANARIS },
			maps = { MAP.WINTERSPRING },
			cost = { { "i", 21939, 1 } },	-- 1x Fel Elemental Rod
			lvl = 58,
		}),
		{	-- A Supernatural Device
			allianceQuestData = q(8922, {	-- A Supernatural Device [A]
				sourceQuests = {
					8905,	-- An Earnest Proposition [DRUID]
					8906,	-- An Earnest Proposition [HUNTER]
					8907,	-- An Earnest Proposition [MAGE]
					8908,	-- An Earnest Proposition [PALADIN]
					8909,	-- An Earnest Proposition [PRIEST]
					8910,	-- An Earnest Proposition [ROGUE]
					-- #if AFTER TBC
					10492,	-- An Earnest Proposition [SHAMAN]
					-- #endif
					8911,	-- An Earnest Proposition [WARLOCK]
					8912,	-- An Earnest Proposition [WARRIOR]
				},
				qg = 16013,	-- Deliana
				qi = 21985,	-- Sealed Blood Container
				coord = { 43.5, 52.6, MAP.IRONFORGE },
			}),
			hordeQuestData = q(8923, {	-- A Supernatural Device [H]
				sourceQuests = {
					8913,	-- An Earnest Proposition [DRUID]
					8914,	-- An Earnest Proposition [HUNTER]
					8915,	-- An Earnest Proposition [MAGE]
					-- #if AFTER TBC
					10493,	-- An Earnest Proposition [PALADIN]
					-- #endif
					8916,	-- An Earnest Proposition [PRIEST]
					8917,	-- An Earnest Proposition [ROGUE]
					8918,	-- An Earnest Proposition [SHAMAN]
					8919,	-- An Earnest Proposition [WARLOCK]
					8920,	-- An Earnest Proposition [WARRIOR]
				},
				qg = 16012,	-- Mokvar
				qi = 22382,	-- Sealed Venom Container
				coord = { 35.0, 38.3, MAP.ORGRIMMAR },
			}),
			maps = { MAP.TANARIS },
			lvl = 58,
		},
		q(8948, {	-- Anthion's Old Friend
			sourceQuest = 8947,	-- Anthion's Strange Request
			qg = 16016,	-- Anthion Harmon
			qi = 21983,	-- Incomplete Banner of Provocation
			coord = { 30.9, 16.8, MAP.EASTERN_PLAGUELANDS },
			maps = {
				MAP.DIRE_MAUL,
				235,	-- Gordok Commons
				236,	-- Capital Gardens
				237,	-- Court of the Highborne
				238,	-- Prison of Immol'Thar
			},
			lvl = 58,
		}),
		q(8947, {	-- Anthion's Strange Request
			sourceQuest = 8946,	-- Proof of Life
			qg = 16016,	-- Anthion Harmon
			coord = { 30.9, 16.8, MAP.EASTERN_PLAGUELANDS },
			cost = {
				{ "i", 11371, 3 },	-- 3x Dark Iron Bar
				{ "i", 12810, 20 },	-- 20x Enchanted Leather
				{ "i", 14342, 3 },	-- 3x Mooncloth
				{ "i", 15407, 4 },	-- 4x Cured Rugged Hide
			},
			lvl = 58,
		}),
		{	-- Back to the Beginning
			allianceQuestData = q(8997, {	-- Back to the Beginning [A]
				maps = { MAP.BLACKROCK_MOUNTAIN, MAP.IRONFORGE },
			}),
			hordeQuestData = q(8998, {	-- Back to the Beginning [H]
				maps = { MAP.BLACKROCK_MOUNTAIN, MAP.ORGRIMMAR },
			}),
			qg = 16033,	-- Bodley
			sourceQuest = 8996,	-- Return to Bodley
			lvl = 58,
		},
		{	-- Bodley's Unfortunate Fate
			allianceQuestData = q(8960, {	-- Bodley's Unfortunate Fate [A]
				sourceQuests = {
					8951,	-- Anthion's Parting Words [ALLIANCE]
					8952,	-- Anthion's Parting Words [ALLIANCE]
					8953,	-- Anthion's Parting Words [ALLIANCE]
					8954,	-- Anthion's Parting Words [ALLIANCE]
					8955,	-- Anthion's Parting Words [ALLIANCE]
					8956,	-- Anthion's Parting Words [ALLIANCE]
					8958,	-- Anthion's Parting Words [ALLIANCE]
					8959,	-- Anthion's Parting Words [ALLIANCE]
					-- #if AFTER TBC
					10496,	-- Anthion's Parting Words [ALLIANCE]
					-- #endif
				},
				qg = 16013,	-- Deliana
				coord = { 43.53, 52.64, MAP.IRONFORGE },
			}),
			hordeQuestData = q(9032, {	-- Bodley's Unfortunate Fate [H]
				sourceQuests = {
					9016,	-- Anthion's Parting Words [HORDE]
					9017,	-- Anthion's Parting Words [HORDE]
					9018,	-- Anthion's Parting Words [HORDE]
					9019,	-- Anthion's Parting Words [HORDE]
					9020,	-- Anthion's Parting Words [HORDE]
					8957,	-- Anthion's Parting Words [HORDE]
					9021,	-- Anthion's Parting Words [HORDE]
					9022,	-- Anthion's Parting Words [HORDE]
					-- #if AFTER TBC
					10497,	-- Anthion's Parting Words [HORDE]
					-- #endif
				},
				qg = 16012,	-- Mokvar
				coord = { 34.95, 38.29, MAP.ORGRIMMAR },
			}),
			maps = {
				MAP.BLACKROCK_MOUNTAIN,
				MAP.BLACKROCK_SPIRE,
			},
			description = "Bodley is standing right outside the entrance to Blackrock Spire.",
			cost = { { "i", 22115, 1 } },	-- 1x Extra-Dimensional Ghost Revealer
			lvl = 58,
		},
		q(8962, {	-- Components of Importance [WARRIOR, MAGE]
			sourceQuest = 8961,	-- Three Kings of Flame
			qg = 16033,	-- Bodley
			maps = { MAP.BLACKROCK_MOUNTAIN, MAP.SILITHUS },
			cost = { { "i", 22115, 1 } },	-- 1x Extra-Dimensional Ghost Revealer
			classes = { WARRIOR, MAGE },
			lvl = 58,
			groups = {
				objective(1, {	-- 0/1 Druidical Remains
					provider = { "i", 22226 },	-- Druidical Remains
					crs = {
						11730,	-- Hive'Regal Ambusher
						11731,	-- Hive'Regal Burrower
						11734,	-- Hive'Regal Hive Lord
						11733,	-- Hive'Regal Slavemaker
						11732,	-- Hive'Regal Spitfire
					},
				}),
			},
		}),
		q(8963, {	-- Components of Importance [WARLOCK, DRUID]
			sourceQuest = 8961,	-- Three Kings of Flame
			qg = 16033,	-- Bodley
			maps = { MAP.BLACKROCK_MOUNTAIN, MAP.WINTERSPRING },
			cost = { { "i", 22115, 1 } },	-- 1x Extra-Dimensional Ghost Revealer
			classes = { WARLOCK, DRUID },
			lvl = 58,
			groups = {
				objective(1, {	-- 0/1 Starbreeze Village Relic
					provider = { "i", 22227 },	-- Starbreeze Village Relic
					crs = {
						7428,	-- Frostmaul Giant
						7429,	-- Frostmaul Preserver
					},
				}),
			},
		}),
		q(8964, {	-- Components of Importance [HUNTER, ROGUE]
			sourceQuest = 8961,	-- Three Kings of Flame
			qg = 16033,	-- Bodley
			maps = { MAP.BLACKROCK_MOUNTAIN, MAP.EASTERN_PLAGUELANDS },
			cost = { { "i", 22115, 1 } },	-- 1x Extra-Dimensional Ghost Revealer
			classes = { HUNTER, ROGUE },
			lvl = 58,
			groups = {
				objective(1, {	-- 0/1 Brilliant Sword of Zealotry
					provider = { "i", 22228 },	-- Brilliant Sword of Zealotry
					cr = 9448,	-- Scarlet Praetorian
				}),
			},
		}),
		q(8965, {	-- Components of Importance [PALADIN, PRIEST, SHAMAN]
			sourceQuest = 8961,	-- Three Kings of Flame
			qg = 16033,	-- Bodley
			maps = { MAP.BLACKROCK_MOUNTAIN, MAP.HILLSBRAD_FOOTHILLS },
			cost = { { "i", 22115, 1 } },	-- 1x Extra-Dimensional Ghost Revealer
			classes = { PALADIN, PRIEST, SHAMAN },
			lvl = 58,
			groups = {
				objective(1, {	-- 0/1 Soul Ashes of the Banished
					provider = { "i", 22229 },	-- Soul Ashes of the Banished
				}),
			},
		}),
		q(8945, {	-- Dead Man's Plea
			sourceQuests = {
				8929,	-- In Search of Anthion [ALLIANCE]
				8930,	-- In Search of Anthion [HORDE]
			},
			qg = 16016,	-- Anthion Harmon
			coord = { 30.85, 16.75, MAP.EASTERN_PLAGUELANDS },
			maps = { MAP.STRATHOLME },
			lvl = 58,
			groups = { i(22137) },	-- Ysida's Satchel
		}),
		q(8949, {	-- Falrin's Vendetta
			sourceQuest = 8948,	-- Anthion's Old Friend
			qg = 16032,	-- Falrin Treeshaper
			maps = {
				MAP.DIRE_MAUL,
				235,	-- Gordok Commons
				236,	-- Capital Gardens
				237,	-- Court of the Highborne
				238,	-- Prison of Immol'Thar
				MAP.BLACKROCK_SPIRE,
			},
			lvl = 58,
			groups = {
				objective(1, {	-- 0/25 Ogre Warbeads
					provider = { "i", 21982 },	-- Ogre Warbeads
				}),
				i(22150),	-- Beads of Ogre Might
				i(22149),	-- Beads of Ogre Mojo
			},
		}),
		q(8994, {	-- Final Preparations
			sourceQuests = {
				8990,	-- The Right Piece of Lord Valthalak's Amulet [WARRIOR, ROGUE]
				8989,	-- The Right Piece of Lord Valthalak's Amulet [DRUID, PALADIN, SHAMAN]
				8991,	-- The Right Piece of Lord Valthalak's Amulet [PRIEST, MAGE]
				8992,	-- The Right Piece of Lord Valthalak's Amulet [HUNTER, WARLOCK]
			},
			qg = 16033,	-- Bodley
			maps = {
				MAP.BLACKROCK_MOUNTAIN,
				MAP.BLACKROCK_SPIRE,
			},
			cost = {
				{ "i", 22048, 1 },	-- 1x Lord Valthalak's Amulet
				{ "i", 13512, 1 },	-- 1x Flask of Supreme Power
			},
			lvl = 58,
			groups = {
				objective(1, {	-- 0/40 Blackrock Bracer
					provider = { "i", 22138 },	-- Blackrock Bracer
				}),
			},
		}),
		q(8924, {	-- Hunting for Ectoplasm
			sourceQuest = 8921,	-- The Ectoplasmic Distiller
			qg = 16014,	-- Mux Manascrambler
			coord = { 52.4, 27.2, MAP.TANARIS },
			maps = { MAP.EASTERN_PLAGUELANDS, MAP.SILITHUS, MAP.WINTERSPRING },
			lvl = 58,
			groups = {
				objective(1, {	-- 0/12 Scorched Ectoplasm
					provider = { "i", 21937 },	-- Scorched Ectoplasm
					crs = {
						12178,	-- Tortured Druid
						12179,	-- Tortured Sentinel
					},
					cost = {
						{ "i", 21946, 1 },	-- 1x Ectoplasmic Distiller
						{ "i", 9061, 1 },	-- 1x Goblin Rocket Fuel
					},
				}),
				objective(2, {	-- 0/12 Frozen Ectoplasm
					provider = { "i", 21936 },	-- Frozen Ectoplasm
					crs = {
						7524,	-- Anguished Highborne
						7523,	-- Suffering Highborne
					},
					cost = {
						{ "i", 21946, 1 },	-- 1x Ectoplasmic Distiller
						{ "i", 9061, 1 },	-- 1x Goblin Rocket Fuel
					},
				}),
				objective(3, {	-- 0/12 Stable Ectoplasm
					provider = { "i", 21935 },	-- Stable Ectoplasm
					crs = {
						8542,	-- Death Singer
						8539,	-- Eyeless Watcher
						8541,	-- Hate Shrieker
						8540,	-- Torn Screamer
						8538,	-- Unseen Servant
					},
					cost = {
						{ "i", 21946, 1 },	-- 1x Ectoplasmic Distiller
						{ "i", 9061, 1 },	-- 1x Goblin Rocket Fuel
					},
				}),
			},
		}),
		q(8970, {	-- I See Alcaz Island In Your Future...
			sourceQuests = {
				8966,	-- The Left Piece of Lord Valthalak's Amulet [WARRIOR, MAGE]
				8967,	-- The Left Piece of Lord Valthalak's Amulet [WARLOCK, DRUID]
				8968,	-- The Left Piece of Lord Valthalak's Amulet [HUNTER, ROGUE]
				8969,	-- The Left Piece of Lord Valthalak's Amulet [PALADIN, PRIEST, SHAMAN]
			},
			qg = 16033,	-- Bodley
			maps = { MAP.BLACKROCK_MOUNTAIN, MAP.DUSTWALLOW_MARSH },
			lvl = 58,
			groups = {
				objective(1, {	-- 0/20 Bloodkelp
					providers = {
						{ "i",  22094 },	-- Bloodkelp
						{ "o", 181053 },	-- Basket of Bloodkelp
					},
					crs = {
						4368,	-- Strashaz Myrmidon
						4366,	-- Strashaz Serpent Guard
						4371,	-- Strashaz Siren
						4370,	-- Strashaz Sorceress
						4364,	-- Strashaz Warrior
						16072,	-- Tidelord Rrurgaz
					},
				}),
			},
		}),
		{	-- In Search of Anthion
			allianceQuestData = q(8929, {	-- In Search of Anthion [A]
				sourceQuests = {
					8926,	-- Just Compensation [ALLIANCE]
					8931,	-- Just Compensation [ALLIANCE]
					8932,	-- Just Compensation [ALLIANCE]
					8933,	-- Just Compensation [ALLIANCE]
					8934,	-- Just Compensation [ALLIANCE]
					8935,	-- Just Compensation [ALLIANCE]
					8936,	-- Just Compensation [ALLIANCE]
					8937,	-- Just Compensation [ALLIANCE]
					-- #if AFTER TBC
					10494,	-- Just Compensation [ALLIANCE]
					-- #endif
				},
				qg = 16013,	-- Deliana
				coord = { 43.53, 52.64, MAP.IRONFORGE },
			}),
			hordeQuestData = q(8930, {	-- In Search of Anthion [H]
				sourceQuests = {
					8927,	-- Just Compensation [HORDE]
					8938,	-- Just Compensation [HORDE]
					8939,	-- Just Compensation [HORDE]
					8940,	-- Just Compensation [HORDE]
					8941,	-- Just Compensation [HORDE]
					8942,	-- Just Compensation [HORDE]
					8943,	-- Just Compensation [HORDE]
					8944,	-- Just Compensation [HORDE]
					-- #if AFTER TBC
					10495,	-- Just Compensation [HORDE]
					-- #endif
				},
				qg = 16012,	-- Mokvar
				coord = { 34.95, 38.29, MAP.ORGRIMMAR },
			}),
			maps = { MAP.EASTERN_PLAGUELANDS, MAP.STRATHOLME },
			cost = { { "i", 22115, 1 } },	-- 1x Extra-Dimensional Ghost Revealer
			lvl = 58,
		},
		q(8995, {	-- Mea Culpa, Lord Valthalak
			sourceQuest = 8994,	-- Final Preparations
			qg = 16033,	-- Bodley
			maps = {
				MAP.BLACKROCK_MOUNTAIN,
				MAP.BLACKROCK_SPIRE,
			},
			cost = {
				{ "i", 22048, 1 },	-- 1x Lord Valthalak's Amulet
				{ "i", 22056, 1 },	-- 1x Brazier of Beckoning [Lord Valthalak]
			},
			cr = 16042,	-- Lord Valthalak
			lvl = 58,
		}),
		q(8985, {	-- More Components of Importance [WARRIOR, ROGUE]
			sourceQuest = 8970,	-- I See Alcaz Island In Your Future...
			qg = 16033,	-- Bodley
			maps = { MAP.BLACKROCK_MOUNTAIN, MAP.WINTERSPRING },
			cost = { { "i", 22115, 1 } },	-- 1x Extra-Dimensional Ghost Revealer
			classes = { WARRIOR, ROGUE },
			lvl = 58,
			groups = {
				objective(1, {	-- 0/1 Starbreeze Village Relic
					provider = { "i", 22227 },	-- Starbreeze Village Relic
					crs = {
						7428,	-- Frostmaul Giant
						7429,	-- Frostmaul Preserver
					},
				}),
				i(22192),	-- Bloodkelp Elixir of Dodging
				i(22193),	-- Bloodkelp Elixir of Resistance
			},
		}),
		q(8986, {	-- More Components of Importance [DRUID, PALADIN, SHAMAN]
			sourceQuest = 8970,	-- I See Alcaz Island In Your Future...
			qg = 16033,	-- Bodley
			maps = { MAP.BLACKROCK_MOUNTAIN, MAP.SILITHUS },
			cost = { { "i", 22115, 1 } },	-- 1x Extra-Dimensional Ghost Revealer
			classes = { DRUID, PALADIN, SHAMAN },
			lvl = 58,
			groups = {
				objective(1, {	-- 0/1 Druidical Remains
					provider = { "i", 22226 },	-- Druidical Remains
					crs = {
						11730,	-- Hive'Regal Ambusher
						11731,	-- Hive'Regal Burrower
						11734,	-- Hive'Regal Hive Lord
						11733,	-- Hive'Regal Slavemaker
						11732,	-- Hive'Regal Spitfire
					},
				}),
				i(22192),	-- Bloodkelp Elixir of Dodging
				i(22193),	-- Bloodkelp Elixir of Resistance
			},
		}),
		q(8987, {	-- More Components of Importance [PRIEST, MAGE]
			sourceQuest = 8970,	-- I See Alcaz Island In Your Future...
			qg = 16033,	-- Bodley
			maps = { MAP.BLACKROCK_MOUNTAIN, MAP.EASTERN_PLAGUELANDS },
			cost = { { "i", 22115, 1 } },	-- 1x Extra-Dimensional Ghost Revealer
			classes = { PRIEST, MAGE },
			lvl = 58,
			groups = {
				objective(1, {	-- 0/1 Brilliant Sword of Zealotry
					provider = { "i", 22228 },	-- Brilliant Sword of Zealotry
					cr = 9448,	-- Scarlet Praetorian
				}),
				i(22192),	-- Bloodkelp Elixir of Dodging
				i(22193),	-- Bloodkelp Elixir of Resistance
			},
		}),
		q(8988, {	-- More Components of Importance [HUNTER, WARLOCK]
			sourceQuest = 8970,	-- I See Alcaz Island In Your Future...
			qg = 16033,	-- Bodley
			maps = { MAP.BLACKROCK_MOUNTAIN, MAP.HILLSBRAD_FOOTHILLS },
			cost = { { "i", 22115, 1 } },	-- 1x Extra-Dimensional Ghost Revealer
			classes = { HUNTER, WARLOCK },
			lvl = 58,
			groups = {
				objective(1, {	-- 0/1 Soul Ashes of the Banished
					provider = { "i", 22229 },	-- Soul Ashes of the Banished
					crs = {
						7071,	-- Cursed Paladin
						7072,	-- Cursed Justicar
						7075,	-- Writhing Mage
					},
				}),
				i(22192),	-- Bloodkelp Elixir of Dodging
				i(22193),	-- Bloodkelp Elixir of Resistance
			},
		}),
		q(8946, {	-- Proof of Life
			sourceQuest = 8945,	-- Dead Man's Plea
			qg = 16031,	-- Ysida Harmon
			maps = { MAP.EASTERN_PLAGUELANDS, MAP.STRATHOLME },
			cost = { { "i", 22139, 1 } },	-- 1x Ysida's Locket
			lvl = 58,
		}),
		q(8996, {	-- Return to Bodley
			sourceQuest = 8995,	-- Mea Culpa, Lord Valthalak
			qg = 16073,	-- Spirit of Lord Valthalak
			maps = {
				MAP.BLACKROCK_MOUNTAIN,
				MAP.BLACKROCK_SPIRE,
			},
			cost = { { "i", 22056, 1 } },	-- 1x Brazier of Beckoning [Lord Valthalak]
			lvl = 58,
			groups = {
				i(22057),	-- Brazier of Invocation
				i(22344),	-- Brazier of Invocation: User's Manual
			},
		}),
		{	-- Return to Deliana / Return to Mokvar
			allianceQuestData = q(8977, {	-- Return to Deliana [A]
				maps = { MAP.IRONFORGE },
			}),
			hordeQuestData = q(8978, {	-- Return to Mokvar [H]
				maps = { MAP.ORGRIMMAR },
			}),
			qg = 16014,	-- Mux Manascrambler
			sourceQuest = 8928,	-- A Shifty Merchant
			coord = { 52.4, 27.2, MAP.TANARIS },
			lvl = 58,
			groups = {
				i(22115),	-- Extra-Dimensional Ghost Revealer
			},
		},
		q(9015, {	-- The Challenge
			sourceQuest = 8950,	-- The Instigator's Enchantment
			qg = 16032,	-- Falrin Treeshaper
			maps = {
				MAP.BLACKROCK_DEPTHS,
				MAP.DIRE_MAUL,
				235,	-- Gordok Commons
				236,	-- Capital Gardens
				237,	-- Court of the Highborne
				238,	-- Prison of Immol'Thar
			},
			lvl = 58,
			groups = {
				objective(1, {	-- Theldren's Team Defeated
					provider = { "i", 21986 },	-- Banner of Provocation
				}),
				objective(2, {	-- Top Piece of Lord Valthalak's Amulet
					provider = { "i", 22047 },	-- Top Piece of Lord Valthalak's Amulet
				}),
				{
					itemID = 21986,	-- Banner of Provocation
					description = "Long after Classic is over, you can use this item to summon Unobtainable bosses and earn quite a bit of gold doing so for Transmog and other purposes. Save this item forever.",
				},
			},
		}),
		q(8921, {	-- The Ectoplasmic Distiller
			sourceQuests = {
				8922,	-- A Supernatural Device [ALLIANCE]
				8923,	-- A Supernatural Device [HORDE]
			},
			qg = 16014,	-- Mux Manascrambler
			coord = { 52.4, 27.2, MAP.TANARIS },
			maps = { MAP.BURNING_STEPPES },
			cost = {
				{ "i", 16006, 1 },	-- 1x Delicate Arcanite Converter
				{ "i", 16203, 4 },	-- 4x Greater Eternal Essence
				{ "i", 13423, 10 },	-- 10x Stonescale Oil
				{ "g", 400000 },	-- 40g
			},
			lvl = 58,
			groups = {
				objective(4, {	-- 0/25 Volcanic Ash
					providers = {
						{ "i",  22338 },	-- Volcanic Ash
						{ "o", 181098 },	-- Volcanic Ash
					},
					cr = 10078,	-- Terrorspark
				}),
				i(22320),	-- Mux's Quality Goods
				i(21946),	-- Ectoplasmic Distiller
			},
		}),
		q(8950, {	-- The Instigator's Enchantment
			sourceQuest = 8949,	-- Falrin's Vendetta
			qg = 16032,	-- Falrin Treeshaper
			maps = {
				MAP.DIRE_MAUL,
				235,	-- Gordok Commons
				236,	-- Capital Gardens
				237,	-- Court of the Highborne
				238,	-- Prison of Immol'Thar
			},
			cost = {
				{ "i", 20520, 4 },	-- 4x Dark Rune
				{ "i", 14344, 8 },	-- 8x Large Brilliant Shard
			},
			lvl = 58,
			groups = {
				objective(1, {	-- 0/1 Jeering Spectre's Essence
					provider = { "i", 22224 },	-- Jeering Spectre's Essence
				}),
			},
		}),
		q(8966, {	-- The Left Piece of Lord Valthalak's Amulet [WARRIOR, MAGE]
			sourceQuest = 8962,	-- Components of Importance [WARRIOR, MAGE]
			qg = 16033,	-- Bodley
			maps = {
				MAP.BLACKROCK_MOUNTAIN,
				MAP.BLACKROCK_SPIRE,
			},
			cost = {
				{ "i", 22115, 1 },	-- 1x Extra-Dimensional Ghost Revealer
				{ "i", 22049, 1 },	-- 1x Brazier of Beckoning [Mor Grayhoof]
			},
			classes = { WARRIOR, MAGE },
			lvl = 58,
			groups = {
				objective(1, {	-- 0/1 Mor Grayhoof slain
					provider = { "n", 16080 },	-- Mor Grayhoof
				}),
				objective(2, {	-- 0/1 Left Piece of Lord Valthalak's Amulet
					provider = { "i", 21984 },	-- Left Piece of Lord Valthalak's Amulet
				}),
			},
		}),
		q(8967, {	-- The Left Piece of Lord Valthalak's Amulet [WARLOCK, DRUID]
			sourceQuest = 8963,	-- Components of Importance [WARLOCK, DRUID]
			qg = 16033,	-- Bodley
			maps = {
				MAP.BLACKROCK_MOUNTAIN,
				MAP.DIRE_MAUL,
				239,	-- Warpwood Quarter
			},
			cost = {
				{ "i", 22115, 1 },	-- 1x Extra-Dimensional Ghost Revealer
				{ "i", 22050, 1 },	-- 1x Brazier of Beckoning [Isalien]
			},
			classes = { WARLOCK, DRUID },
			lvl = 58,
			groups = {
				objective(1, {	-- 0/1 Isalien slain
					provider = { "n", 16097 },	-- Isalien
				}),
				objective(2, {	-- 0/1 Left Piece of Lord Valthalak's Amulet
					provider = { "i", 21984 },	-- Left Piece of Lord Valthalak's Amulet
				}),
			},
		}),
		q(8968, {	-- The Left Piece of Lord Valthalak's Amulet [HUNTER, ROGUE]
			sourceQuest = 8964,	-- Components of Importance [HUNTER, ROGUE]
			qg = 16033,	-- Bodley
			maps = { MAP.BLACKROCK_MOUNTAIN, MAP.STRATHOLME },
			cost = {
				{ "i", 22115, 1 },	-- 1x Extra-Dimensional Ghost Revealer
				{ "i", 22051, 1 },	-- 1x Brazier of Beckoning [Jarien and Sothos]
			},
			classes = { HUNTER, ROGUE },
			lvl = 58,
			groups = {
				objective(1, {	-- 0/1 Jarien slain
					provider = { "n", 16101 },	-- Jarien
				}),
				objective(2, {	-- 0/1 Sothos slain
					provider = { "n", 16102 },	-- Sothos
				}),
				objective(3, {	-- 0/1 Left Piece of Lord Valthalak's Amulet
					provider = { "i", 21984 },	-- Left Piece of Lord Valthalak's Amulet
				}),
			},
		}),
		q(8969, {	-- The Left Piece of Lord Valthalak's Amulet [PALADIN, PRIEST, SHAMAN]
			sourceQuest = 8965,	-- Components of Importance [PALADIN, PRIEST, SHAMAN]
			qg = 16033,	-- Bodley
			maps = { MAP.BLACKROCK_MOUNTAIN, MAP.SCHOLOMANCE },
			cost = {
				{ "i", 22115, 1 },	-- 1x Extra-Dimensional Ghost Revealer
				{ "i", 22052, 1 },	-- 1x Brazier of Beckoning [Kormok]
			},
			classes = { PALADIN, PRIEST, SHAMAN },
			lvl = 58,
			groups = {
				objective(1, {	-- 0/1 Kormok slain
					provider = { "n", 16118 },	-- Kormok
				}),
				objective(2, {	-- 0/1 Left Piece of Lord Valthalak's Amulet
					provider = { "i", 21984 },	-- Left Piece of Lord Valthalak's Amulet
				}),
			},
		}),
		q(8990, {	-- The Right Piece of Lord Valthalak's Amulet [WARRIOR, ROGUE]
			sourceQuest = 8985,	-- More Components of Importance [WARRIOR, ROGUE]
			qg = 16033,	-- Bodley
			maps = {
				MAP.BLACKROCK_MOUNTAIN,
				MAP.DIRE_MAUL,
				239,	-- Warpwood Quarter
			},
			cost = {
				{ "i", 22115, 1 },	-- 1x Extra-Dimensional Ghost Revealer
				{ "i", 22050, 1 },	-- 1x Brazier of Beckoning [Isalien]
			},
			classes = { WARRIOR, ROGUE },
			lvl = 58,
			groups = {
				objective(1, {	-- 0/1 Isalien slain
					provider = { "n", 16097 },	-- Isalien
				}),
				objective(2, {	-- 0/1 Lord Valthalak's Amulet
					provider = { "i", 22048 },	-- Lord Valthalak's Amulet
					cost = {
						{ "i", 22047, 1 },	-- 1x Top Piece of Lord Valthalak's Amulet
						{ "i", 22046, 1 },	-- 1x Right Piece of Lord Valthalak's Amulet
						{ "i", 21984, 1 },	-- 1x Left Piece of Lord Valthalak's Amulet
					},
				}),
			},
		}),
		q(8989, {	-- The Right Piece of Lord Valthalak's Amulet [DRUID, PALADIN, SHAMAN]
			sourceQuest = 8986,	-- More Components of Importance [DRUID, PALADIN, SHAMAN]
			qg = 16033,	-- Bodley
			maps = {
				MAP.BLACKROCK_MOUNTAIN,
				MAP.BLACKROCK_SPIRE,
			},
			cost = {
				{ "i", 22115, 1 },	-- 1x Extra-Dimensional Ghost Revealer
				{ "i", 22049, 1 },	-- 1x Brazier of Beckoning [Mor Grayhoof]
			},
			classes = { DRUID, PALADIN, SHAMAN },
			lvl = 58,
			groups = {
				objective(1, {	-- 0/1 Mor Grayhoof slain
					provider = { "n", 16080 },	-- Mor Grayhoof
				}),
				objective(2, {	-- 0/1 Lord Valthalak's Amulet
					provider = { "i", 22048 },	-- Lord Valthalak's Amulet
					cost = {
						{ "i", 22047, 1 },	-- 1x Top Piece of Lord Valthalak's Amulet
						{ "i", 22046, 1 },	-- 1x Right Piece of Lord Valthalak's Amulet
						{ "i", 21984, 1 },	-- 1x Left Piece of Lord Valthalak's Amulet
					},
				}),
			},
		}),
		q(8991, {	-- The Right Piece of Lord Valthalak's Amulet [PRIEST, MAGE]
			sourceQuest = 8987,	-- More Components of Importance [PRIEST, MAGE]
			qg = 16033,	-- Bodley
			maps = { MAP.BLACKROCK_MOUNTAIN, MAP.STRATHOLME },
			cost = {
				{ "i", 22115, 1 },	-- 1x Extra-Dimensional Ghost Revealer
				{ "i", 22051, 1 },	-- 1x Brazier of Beckoning [Jarien & Sothos]
			},
			classes = { PRIEST, MAGE },
			lvl = 58,
			groups = {
				objective(1, {	-- 0/1 Jarien slain
					provider = { "n", 16101 },	-- Jarien
				}),
				objective(2, {	-- 0/1 Sothos slain
					provider = { "n", 16102 },	-- Sothos
				}),
				objective(3, {	-- 0/1 Lord Valthalak's Amulet
					provider = { "i", 22048 },	-- Lord Valthalak's Amulet
					cost = {
						{ "i", 22047, 1 },	-- 1x Top Piece of Lord Valthalak's Amulet
						{ "i", 22046, 1 },	-- 1x Right Piece of Lord Valthalak's Amulet
						{ "i", 21984, 1 },	-- 1x Left Piece of Lord Valthalak's Amulet
					},
				}),
			},
		}),
		q(8992, {	-- The Right Piece of Lord Valthalak's Amulet [HUNTER, WARLOCK]
			sourceQuest = 8988,	-- More Components of Importance [HUNTER, WARLOCK]
			qg = 16033,	-- Bodley
			maps = { MAP.BLACKROCK_MOUNTAIN, MAP.SCHOLOMANCE },
			cost = {
				{ "i", 22115, 1 },	-- 1x Extra-Dimensional Ghost Revealer
				{ "i", 22052, 1 },	-- 1x Brazier of Beckoning [Kormok]
			},
			classes = { HUNTER, WARLOCK },
			lvl = 58,
			groups = {
				objective(1, {	-- 0/1 Kormok slain
					provider = { "n", 16118 },	-- Kormok
				}),
				objective(2, {	-- 0/1 Lord Valthalak's Amulet
					provider = { "i", 22048 },	-- Lord Valthalak's Amulet
					cost = {
						{ "i", 22047, 1 },	-- 1x Top Piece of Lord Valthalak's Amulet
						{ "i", 22046, 1 },	-- 1x Right Piece of Lord Valthalak's Amulet
						{ "i", 21984, 1 },	-- 1x Left Piece of Lord Valthalak's Amulet
					},
				}),
			},
		}),
		q(8961, {	-- Three Kings of Flame
			sourceQuests = {
				8960,	-- Bodley's Unfortunate Fate [ALLIANCE]
				9032,	-- Bodley's Unfortunate Fate [HORDE]
			},
			qg = 16033,	-- Bodley
			maps = {
				MAP.BLACKROCK_MOUNTAIN,
				MAP.BLACKROCK_DEPTHS,
				MAP.BLACKROCK_SPIRE,
				MAP.EASTERN_PLAGUELANDS,
				MAP.SILITHUS,
				MAP.WESTERN_PLAGUELANDS,
				MAP.TIRISFAL_GLADES,
			},
			cost = { { "i", 22115, 1 } },	-- 1x Extra-Dimensional Ghost Revealer
			lvl = 58,
			groups = {
				objective(1, {	-- 0/1 Incendicite of Incendius
					provider = { "i", 21987 },	-- Incendicite of Incendius
				}),
				objective(2, {	-- 0/1 Ember of Emberseer
					provider = { "i", 21988 },	-- Ember of Emberseer
				}),
				objective(3, {	-- 0/1 Cinder of Cynders
					provider = { "i", 21989 },	-- Cinder of Cynders
				}),
				objective(4, {	-- 0/1 Hallowed Brazier
					provider = { "i", 22014 },	-- Hallowed Brazier
				}),
			},
		}),
	}),
}));