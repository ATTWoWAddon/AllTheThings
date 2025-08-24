---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(KHAZ_ALGAR, {
	m(UNDERMINE, {
		n(ZONE_DROPS, {
			currency(3226, {	-- Market Research
				["description"] = "Drops from S.C.R.A.P. treasures, and as a zone drop.",
				["sourceQuest"] = 86961,	-- Diversified Investments
			}),
			i(236668, {	-- C.H.E.T.T. Card
				["description"] = "Drops very often in Sidestreet Sluice, commonly from enemies in Undermine.\n\nWill |cffff0000NOT|r drop if you have an active C.H.E.T.T. List in your bags.",
				["crs"] = {
					234905,	-- Aggressively Lost Hobgoblin <Underpin's Fan>
					231925,	-- Drill Sergeant
					234900,	-- Underpin's Adoring Fan
					234904,	-- Underpin's Bodyguard's Intern
					234902,	-- Underpin's Explosive Ally
					234901,	-- Underpin's Well-Connected Friend
				},
				["minReputation"] = { FACTION_CARTELS_OF_UNDERMINE, 13 },
			}),
			i(232984, {	-- Handcrank (MM!)
				-- Included in ReagentDB
				-- ["cost"] = {
				-- 	{ "i", 234415, 1 },	-- Handcrank Casing
				-- 	{ "i", 234386, 1 },	-- Handcrank Fuel Injector
				-- 	{ "i", 234381, 1 },	-- Handcrank Fuel Tank
				-- 	{ "i", 234417, 1 },	-- Handcrank Gears
				-- 	{ "i", 234420, 1 },	-- Handcrank Mounting System
				-- },
			}),
			i(232983, {	-- Steamboil (MM!)
				-- Included in ReagentDB
				-- ["cost"] = {
				-- 	{ "i", 234416, 1 },	-- Steamboil Casing
				-- 	{ "i", 234387, 1 },	-- Steamboil Fuel Injector
				-- 	{ "i", 234380, 1 },	-- Steamboil Fuel Tank
				-- 	{ "i", 234418, 1 },	-- Steamboil Gears
				-- 	{ "i", 234419, 1 },	-- Steamboil Mounting System
				-- },
			}),
		}),
	}),
}));
