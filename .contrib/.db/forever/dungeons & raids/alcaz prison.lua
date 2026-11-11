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
				-- TODO: Ornate Shackle Key (274029) is a quest item; find the quest it's for.
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