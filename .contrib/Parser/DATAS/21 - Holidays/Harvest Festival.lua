--------------------------------------------
--     H O L I D A Y S  M O D U L E       --
--------------------------------------------

HARVEST_FESTIVAL_HEADER = createHeader({
	readable = "Harvest Festival",
	constant = "HARVEST_FESTIVAL_HEADER",
	icon = [[~_.asset("Holiday_Harvestfest")]],
	eventID = EVENTS.HARVEST_FESTIVAL,
	-- #if BEFORE WRATH
	eventSchedule = {
		1,	-- Recurring
		9, 6, 10, 0,	-- 09/06 at 10:00 AM
		9, 13, 10, 0	-- 09/13 at 10:00 AM
	},
	-- #endif
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
});

local BLUE_FIREWORK = i(9312);	-- Blue Firework
local GREEN_FIREWORK = i(9313);	-- Green Firework
local RED_FIREWORK = i(9318);	-- Red Firework

root(ROOTS.Holidays, applyevent(EVENTS.HARVEST_FESTIVAL, n(HARVEST_FESTIVAL_HEADER, {
	n(MAILBOX, {
		i(19697),	-- Bounty of the Harvest
	}),
	n(QUESTS, {
		q(8149, {	-- Honoring a Hero (A)
			["qg"] = 15011,	-- Wagner Hammerstrike
			["coords"] = {
				-- #if AFTER CATA
				{ 59.8, 34.2, DUN_MOROGH },
				-- #else
				{ 52.6, 36.0, DUN_MOROGH },
				-- #endif
			},
			["maps"] = { WESTERN_PLAGUELANDS },
			["races"] = ALLIANCE_ONLY,
			["isYearly"] = true,
			["lvl"] = lvlsquish(30, 30, 1),
			["groups"] = {
				objective(1, {	-- Uther's Tribute
					["provider"] = { "i", 19850 },	-- Uther's Tribute
					["coord"] = { 51.0, 82.0, WESTERN_PLAGUELANDS },
				}),
				i(20009),	-- For the Light!
			},
		}),
		q(8150, {	-- Honoring a Hero (H)
			["qg"] = 15012,	-- Javnir Nashak
			["coords"] = {
				-- #if AFTER CATA
				{ 46.2, 15.0, DUROTAR },
				-- #else
				{ 46.0, 13.6, DUROTAR },
				-- #endif
			},
			["maps"] = { ASHENVALE },
			["races"] = HORDE_ONLY,
			["isYearly"] = true,
			["lvl"] = lvlsquish(30, 30, 1),
			["groups"] = {
				objective(1, {	-- Grom's Tribute
					["provider"] = { "i", 19851 },	-- Grom's Tribute
					["coord"] = { 83.0, 79.0, ASHENVALE },
				}),
				i(20010),	-- The Horde's Hellscream
			},
		}),
		q(54996, {	-- Remembrance
			["qg"] = 149084,	-- Spiritwalker Ussoh
			["coord"] = { 46.8, 15.4, DUROTAR },
			["timeline"] = { ADDED_8_2_0 },
			["races"] = { TAUREN },
			["isYearly"] = true,
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
			BLUE_FIREWORK,
			GREEN_FIREWORK,
			RED_FIREWORK,
			i(9314),	-- Red Streaks Firework
			i(9315),	-- Yellow Rose Firework
		},
	}),
})));

-- Unmark as holiday.
BLUE_FIREWORK.u = nil;
GREEN_FIREWORK.u = nil;
RED_FIREWORK.u = nil;
