--------------------------------------------
--     H O L I D A Y S  M O D U L E       --
--------------------------------------------
PIRATES_DAY_HEADER = createHeader({
	readable = "Pirates' Day",
	constant = "PIRATES_DAY_HEADER",
	icon = [[~_.asset("Holiday_Pirate")]],
	eventID = EVENTS.PIRATES_DAY,
	-- #if BEFORE WRATH
	eventSchedule = {
		1, -- Recurring
		9, 19, 0, 0,	-- 09/19 at 12:00 AM
		9, 20, 0, 0		-- 09/20 at 12:00 AM
	},
	-- #endif
	text = {
		en = "Pirates' Day",
		es = "Día de los Piratas",
		de = "Piratentag",
		fr = "Jour des pirates",
		it = "Giorno dei Pirati",
		mx = "Día de los Piratas",
		pt = "Dia dos Piratas",
		ru = "День пирата",
		ko = "해적의 날",
		cn = "海盗日",
		tw = "海盜節",
	},
});
root(ROOTS.Holidays, applyevent(EVENTS.PIRATES_DAY, n(PIRATES_DAY_HEADER, {
	["timeline"] = { ADDED_2_4_3 },
	["groups"] = {
		-- #if BEFORE 6.0.2.18816
		n(28048, {	-- Dread Captain DeMeza <Scourge of the South Seas>
			["description"] = "When you speak with her, she gives you a Pirate Costume buff that lasts for 12 hours.",
			["coords"] = {
				-- #if AFTER CATA
				{ 40.0, 72.6, THE_CAPE_OF_STRANGLETHORN },
				-- #else
				{ 26.6, 76.6, STRANGLETHORN_VALE },
				-- #endif
			},
			["groups"] = {
				ach(3457, {	-- The Captain's Booty
					["timeline"] = { ADDED_3_0_2 },
				}),
			},
		}),
		-- #endif
		-- #if AFTER 7.0.3.21570
		n(QUESTS, {
			q(42758, {	-- You're Gonna Need A Bigger Boat!
				["qg"] = 28048,	-- Dread Captain DeMeza <Scourge of the South Seas>
				["coord"] = { 40.0, 72.6, THE_CAPE_OF_STRANGLETHORN },
				["timeline"] = { ADDED_7_0_3 },
				["isYearly"] = true,
				["groups"] = {
					i(138414, {	-- Emergency Pirate Outfit
						["timeline"] = { ADDED_7_0_3 },
					}),
				},
			}),
		}),
		n(RARES, {
			n(108715, {  -- Ol' Eary
				["coord"] = { 37.8, 66.2, THE_CAPE_OF_STRANGLETHORN },
				["timeline"] = { ADDED_7_0_3 },
				["groups"] = {
					i(138415, {	-- Slightly-Chewed Insult Book (TOY!)
						["timeline"] = { ADDED_7_0_3 },
					}),
				},
			}),
		}),
		-- #endif
		-- #if AFTER 6.0.2.18816
		n(VENDORS, {
			n(28048, {	-- Dread Captain DeMeza <Scourge of the South Seas>
				["description"] = "When you speak with her, she gives you a Pirate Costume buff that lasts for 12 hours.",
				["coord"] = { 40.0, 72.6, THE_CAPE_OF_STRANGLETHORN },
				["groups"] = {
					ach(3457, {	-- The Captain's Booty
						["timeline"] = { ADDED_3_0_2 },
					}),
					i(116392, {	-- Big Bag of Booty
						["timeline"] = { ADDED_6_0_2 },
						["filterID"] = CONSUMABLES,	-- Changed from "Toy"
					}),
					i(208858, {	-- Highland Drake: Pirates' Day Armor (MM!)
						["timeline"] = { ADDED_10_1_7 },
						["cost"] = 500000000,	-- 50k
					}),
					i(138400, {	-- Petey
						["timeline"] = { ADDED_7_0_3 },
						["filterID"] = CONSUMABLES,	-- Changed from nothing
					}),
				},
			}),
			n(122396, {	-- Edward Techt <Keeper of the Black>
				["coord"] = { 39.6, 84.2, THE_CAPE_OF_STRANGLETHORN },
				["timeline"] = { ADDED_7_2_5 },
				["groups"] = {
					i(150547, {	-- Jolly Roger (TOY!)
						["description"] = "To purchase this toy, you must have earned the achievement |cFFFFD700Avast Ye, Admiral|r.",
						["timeline"] = { ADDED_7_2_5 },
					}),
				},
			}),
		}),
		-- #endif
	},
})));
