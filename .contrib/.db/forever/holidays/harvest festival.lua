--------------------------------------------
--     H O L I D A Y S  M O D U L E       --
--------------------------------------------

root(ROOTS.Holidays, applyevent(EVENTS.HARVEST_FESTIVAL, n(createHeader({
	readable = "Harvest Festival",
	constant = "HARVEST_FESTIVAL_HEADER",
	icon = [[~_.asset("Holiday_Harvestfest")]],
	eventID = EVENTS.HARVEST_FESTIVAL,
	eventSchedule = {
		1,	-- Recurring
		9, 6, 10, 0,	-- 09/06 at 10:00 AM
		9, 13, 10, 0	-- 09/13 at 10:00 AM
	},
	text = {
		en = "Harvest Festival",
		-- TODO: de = "",
		es = "Festival de la cosecha",
		mx = "Festival de la cosecha",
		-- TODO: fr = "",
		-- TODO: it = "",
		-- TODO: ko = "",
		-- TODO: pt = "",
		ru = "Неделя урожая",
		cn = "收获节",
		tw = "收穫節",
	},
}), {
	n(MAILBOX, {
		i(19697),	-- Bounty of the Harvest
	}),
	n(QUESTS, {
		q(8149, {	-- Honoring a Hero (A)
			["qg"] = 15011,	-- Wagner Hammerstrike
			["coord"] = { 52.6, 36.0, MAP.DUN_MOROGH },
			["maxReputation"] = { 469, EXALTED },	-- Alliance, Exalted.
			["maps"] = { MAP.WESTERN_PLAGUELANDS },
			["races"] = ALLIANCE_ONLY,
			["isYearly"] = true,
			["lvl"] = 30,
			["groups"] = {
				objective(1, {	-- Uther's Tribute
					["provider"] = { "i", 19850 },	-- Uther's Tribute
					["coord"] = { 51.0, 82.0, MAP.WESTERN_PLAGUELANDS },
				}),
				i(20009),	-- For the Light!
			},
		}),
		q(8150, {	-- Honoring a Hero (H)
			["qg"] = 15012,	-- Javnir Nashak
			["coord"] = { 46.0, 13.6, MAP.DUROTAR },
			["maxReputation"] = { 67, EXALTED },	-- Horde, Exalted.
			["maps"] = { MAP.ASHENVALE },
			["races"] = HORDE_ONLY,
			["isYearly"] = true,
			["lvl"] = 30,
			["groups"] = {
				objective(1, {	-- Grom's Tribute
					["provider"] = { "i", 19851 },	-- Grom's Tribute
					["coord"] = { 83.0, 79.0, MAP.ASHENVALE },
				}),
				i(20010),	-- The Horde's Hellscream
			},
		}),
	}),
	n(REWARDS, {
		["description"] = "This is some of the best food and water you can get for leveling! It does disappear 15 minutes after log out though, so pick this up at the start of your session and game until you run out.",
		["groups"] = {
			i(19995),	-- Harvest Boar
			i(19696),	-- Harvest Bread
			i(19996),	-- Harvest Fish
			i(19994),	-- Harvest Fruit
			i(19997),	-- Harvest Nectar
		},
	}),
	n(VENDORS, {
		["crs"] = {
			15012,	-- Javnir Nashak
			15011,	-- Wagner Hammerstrike
		},
		["groups"] = {
			i(9312),	-- Blue Firework
			i(9313);	-- Green Firework
			i(9318);	-- Red Firework
			i(9314),	-- Red Streaks Firework
			i(9315),	-- Yellow Rose Firework
		},
	}),
})));
