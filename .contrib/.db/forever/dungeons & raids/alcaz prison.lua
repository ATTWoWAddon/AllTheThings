-----------------------------------------------------
--  D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
instanceroot(2994, {	-- Alcaz Prison
	-- Blizzard lists it for levels 48-53.
	--lore = "",
	icon = 409547,
	zoneTextAreaID = 16620,	-- Alcaz Prison
	--coord = { 75.6, 17.6, MAP.DUSTWALLOW_MARSH },	-- Alcaz Island; verify the entrance.
	timeline = { TIMELINE.ADDED_1_60_1 },
	lvl = 48,
	groups = {
		n(QUESTS, {
			q(95194, {	-- Our Man in Theramore
				qg = 332,	-- Master Mathias Shaw <Leader of SI:7>
				coord = { 78.4, 70.6, MAP.STORMWIND_CITY },
				races = ALLIANCE_ONLY,
				lvl = 48,
			}),
			q(95263, {	-- Somber News
				sourceQuest = 95262,	-- The Secret Prison
				-- TODO: Wowhead doesn't list where it starts yet (inside the prison, after learning what became of Varian Wrynn). Turned in to Sully McCleary (260271).
				races = ALLIANCE_ONLY,
				lvl = 48,
			}),
			q(96772, {	-- The Dragon's Journal
				qg = 20735,	-- Archmage Lan'dalock
				coord = { 15.4, 73.8, MAP.ALTERAC_MOUNTAINS },
				races = ALLIANCE_ONLY,
				lvl = 46,
				groups = {
					objective(1, {	-- 0/1 Zarla's Journal
						provider = { "i", 276890 },	-- Zarla's Journal
						cr = 255702,	-- Blazeroar
					}),
				},
			}),
			q(96335, {	-- The Man in the Iron Chains
				-- TODO: Wowhead doesn't list the quest giver yet (the prisoner in chains after Blazeroar).
				description = "This quest is not offered if The Questioner is killed before it is picked up.",
				lvl = 48,
				groups = {
					objective(1, {	-- 0/1 Ornate Shackle Key
						provider = { "i", 274029 },	-- Ornate Shackle Key
						cr = 256236,	-- The Questioner
					}),
				},
			}),
			q(95198, {	-- The Return of the King?
				sourceQuest = 95196,	-- Watch Yer Back
				description = "Use the disguise, then talk to the guard standing next to Archmage Tervosh at the top of Jaina's tower and relieve him. Don't get too close to Jaina, she sees through the disguise.",
				qg = 260271,	-- Sully McCleary
				qi = 269000,	-- SI:7 Disguise Kit (PQI!)
				coord = { 63.4, 42.4, MAP.DUSTWALLOW_MARSH },
				races = ALLIANCE_ONLY,
				lvl = 48,
			}),
			q(95262, {	-- The Secret Prison
				sourceQuest = 95198,	-- The Return of the King?
				qg = 260271,	-- Sully McCleary
				coord = { 63.4, 42.4, MAP.DUSTWALLOW_MARSH },
				races = ALLIANCE_ONLY,
				lvl = 48,
			}),
			q(95196, {	-- Watch Yer Back
				sourceQuest = 95194,	-- Our Man in Theramore
				qg = 260146,	-- Sully McCleary
				coord = { 66.2, 45.2, MAP.DUSTWALLOW_MARSH },
				races = ALLIANCE_ONLY,
				lvl = 48,
			}),
		}),
		-- TODO: Overseer Wrex's creatureID isn't on Wowhead yet; encounters without one crash the addon, so it stays commented out.
		--e(3403),	-- Overseer Wrex
		e(3410, {	-- Tidemistress Ca'zass
			creatureID = 255997,	-- Tidemistress Ca'zass
			groups = {
				-- TODO: Ca'zass's Head (273883) is a quest item; find the quest it's for.
				i(276737),	-- Cloak of the Tidemistress
				i(276736),	-- Seascale Bracers
				i(276735),	-- Tidesong Wand
			},
		}),
		e(3418, {	-- Katerina the Cleaner
			creatureID = 257016,	-- Katerina the Cleaner
			groups = {
				i(276739),	-- Cutthroat Chestguard
				i(276738),	-- Katerina's Shanker
				i(276740),	-- Sentimental Locket
			},
		}),
		e(3415, {	-- The Questioner
			creatureID = 256236,	-- The Questioner
			groups = {
				i(276741),	-- Defias Enforcer's Shoulderpads
				i(276743),	-- Fingerbreaker Stamp
				i(276742),	-- Girdle of Extracted Answers
			},
		}),
		e(3409, {	-- Blazeroar
			creatureID = 255702,	-- Blazeroar
			groups = {
				i(276745),	-- Beastbond Robe
				i(276746),	-- Defias Enforcer's Legguards
				i(276744),	-- Zarla's Snack Pouch
			},
		}),
	},
});