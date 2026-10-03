--------------------------------------------
--     H O L I D A Y S  M O D U L E       --
--------------------------------------------

-- TODO: Add vendors for Tigule's Strawberry Ice Cream (7228)
local WARDEN_OF_THE_GROUPS = {
	i(23007),	-- Mr. Wiggles (PET!)
	i(23015),	-- Whiskers the Rat (PET!)
	i(23002),	-- Speedy (PET!)
	i(23022),	-- Curmudgeon's Payoff
};

root(ROOTS.Holidays, applyevent(EVENTS.CHILDRENS_WEEK, n(createHeader({
	readable = "Cgi.Children's Week",	-- Prefix with "Cgi." to prevent sorting issues.
	constant = "CHILDRENS_WEEK_HEADER",
	icon = [[~_.asset("Holiday_Children")]],
	eventID = EVENTS.CHILDRENS_WEEK,
	eventSchedule = {
		1,	-- Recurring
		5, 1, 0, 0,		-- 5/1 at 12 AM
		5, 7, 23, 59	-- 5/7 at 11:59 PM
	},
	text = {
		en = "Children's Week",
		-- TODO: de = "",
		es = "Semana de los niños",
		mx = "Semana de los niños",
		-- TODO: fr = "",
		-- TODO: it = "",
		-- TODO: ko = "",
		-- TODO: pt = "",
		-- TODO: ru = "",
		cn = "儿童周",
		tw = "兒童週",
	},
}), {
	["timeline"] = { TIMELINE.ADDED_1_60_1 },
	["groups"] = {
		n(QUESTS, {
			q(171, {	-- A Warden of the Alliance [Alliance - Human - FINAL]
				["sourceQuests"] = {
					558,	-- Jaina's Autograph [Alliance - Human] (removed)
					4822,	-- You Scream, I Scream... [Alliance - Human] (removed)
				},
				["providers"] = {
					{ "i", 18598 },	-- Human Orphan Whistle
					{ "n", 14305 },	-- Human Orphan
				},
				["coord"] = { 56.3, 54.0, MAP.STORMWIND_CITY },	-- Orphan Matron Nightingale
				["maxReputation"] = { 469, EXALTED },	-- Alliance, Exalted.
				["races"] = ALLIANCE_ONLY,
				["isYearly"] = true,
				["lvl"] = 10,
				["groups"] = WARDEN_OF_THE_GROUPS,
			}),
			q(5502, {	-- A Warden of the Horde [Horde - Orc - FINAL]
				["sourceQuests"] = {
					925,	-- Cairne's Hoofprint [Horde - Orc] (removed)
					915,	-- You Scream, I Scream... [Horde - Orc] (removed)
				},
				["providers"] = {
					{ "i", 18597 },	-- Orcish Orphan Whistle
					{ "n", 14444 },	-- Orcish Orphan
				},
				["coord"] = { 70.8, 25.6, MAP.ORGRIMMAR },	-- Orphan Matron Battlewail
				["maxReputation"] = { 67, EXALTED },	-- Horde, Exalted.
				["races"] = HORDE_ONLY,
				["isYearly"] = true,
				["lvl"] = 10,
				["groups"] = WARDEN_OF_THE_GROUPS,
			}),
			q(925, {	-- Cairne's Hoofprint [Horde - Orc] (removed)
				["sourceQuests"] = {
					910,	-- Down at the Docks [Horde - Orc] (removed)
					911,	-- Gateway to the Frontier [Horde - Orc] (removed)
					1800,	-- Lordaeron Throne Room [Horde - Orc] (removed)
				},
				["providers"] = {
					{ "i", 18597 },	-- Orcish Orphan Whistle
					{ "n", 14444 },	-- Orcish Orphan
				},
				["maps"] = { MAP.THUNDER_BLUFF },
				["races"] = HORDE_ONLY,
				["isYearly"] = true,
				["lvl"] = 10,
				["groups"] = {
					objective(1, {	-- 0/1 Cairne's Hoofprint
						["provider"] = { "i", 18643 },	-- Cairne's Hoofprint
						["coord"] = { 59.8, 51.6, MAP.THUNDER_BLUFF },
						["cr"] = 3057,	-- Cairne Bloodhoof <High Chieftain>
					}),
				},
			}),
			q(1468, {	-- Children's Week [Alliance - Human - START]
				["qg"] = 14450,	-- Orphan Matron Nightingale
				["coord"] = { 56.3, 54.0, MAP.STORMWIND_CITY },	-- Orphan Matron Nightingale
				["maxReputation"] = { 469, EXALTED },	-- Alliance, Exalted.
				["races"] = ALLIANCE_ONLY,
				["isYearly"] = true,
				["lvl"] = 10,
			}),
			q(172, {	-- Children's Week [Horde - Orc - START]
				["qg"] = 14451,	-- Orphan Matron Battlewall
				["coord"] = { 70.8, 25.6, MAP.ORGRIMMAR },	-- Orphan Matron Battlewail
				["maxReputation"] = { 67, EXALTED },	-- Horde, Exalted.
				["races"] = HORDE_ONLY,
				["isYearly"] = true,
				["lvl"] = 10,
				["groups"] = {
					i(18597),	-- Orcish Orphan Whistle
				},
			}),
			q(910, {	-- Down at the Docks [Horde - Orc] (removed)
				["sourceQuest"] = 172,	-- Children's Week [Horde - Orc]
				["providers"] = {
					{ "i", 18597 },	-- Orcish Orphan Whistle
					{ "n", 14444 },	-- Orcish Orphan
				},
				["maps"] = { MAP.THE_BARRENS },
				["races"] = HORDE_ONLY,
				["isYearly"] = true,
				["lvl"] = 10,
				["groups"] = {
					objective(1, {	-- Go to the docks of Ratchet in the Barrens.
						["provider"] = { "n", 9558 },	-- Grimble <Shipmaster>
						["coord"] = { 63.0, 38.0, MAP.THE_BARRENS },
					}),
				},
			}),
			q(911, {	-- Gateway to the Frontier [Horde - Orc] (removed)
				["sourceQuest"] = 172,	-- Children's Week [Horde - Orc]
				["providers"] = {
					{ "i", 18597 },	-- Orcish Orphan Whistle
					{ "n", 14444 },	-- Orcish Orphan
				},
				["maps"] = { MAP.THE_BARRENS },
				["races"] = HORDE_ONLY,
				["isYearly"] = true,
				["lvl"] = 10,
				["groups"] = {
					objective(1, {	-- Go to the Mor'shan Rampart in the Barrens.
						["coord"] = { 47.0, 5.0, MAP.THE_BARRENS },
					}),
				},
			}),
			q(558, {	-- Jaina's Autograph [Alliance - Human] (removed)
				["sourceQuests"] = {
					1687,	-- Spooky Lighthouse [Alliance - Human] (removed)
					1479,	-- The Bough of the Eternals [Alliance - Human] (removed)
					1558,	-- The Stonewrought Dam [Alliance - Human] (removed)
				},
				["providers"] = {
					{ "i", 18598 },	-- Human Orphan Whistle
					{ "n", 14305 },	-- Human Orphan
				},
				["maps"] = { MAP.DUSTWALLOW_MARSH },
				["races"] = ALLIANCE_ONLY,
				["isYearly"] = true,
				["lvl"] = 10,
				["groups"] = {
					objective(1, {	-- 0/1 Jaina's Autograph
						["provider"] = { "i", 18642 },	-- Jaina's Autograph
						["coord"] = { 66.2, 49.0, MAP.DUSTWALLOW_MARSH },
						["cr"] = 4968,	-- Lady Jaina Proudmoore <Ruler of Theramore>
					}),
				},
			}),
			q(1800, {	-- Lordaeron Throne Room [Horde - Orc] (removed)
				["sourceQuest"] = 172,	-- Children's Week [Horde - Orc]
				["providers"] = {
					{ "i", 18597 },	-- Orcish Orphan Whistle
					{ "n", 14444 },	-- Orcish Orphan
				},
				["maps"] = { MAP.UNDERCITY },
				["races"] = HORDE_ONLY,
				["isYearly"] = true,
				["lvl"] = 10,
				["groups"] = {
					objective(1, {	-- Go to the old Lordaeron Throne Room that lies just before descending into the Undercity.
						["coord"] = { 66.1, 35.2, MAP.UNDERCITY },
					}),
				},
			}),
			q(1687, {	-- Spooky Lighthouse [Alliance - Human] (removed)
				["sourceQuest"] = 1468,	-- Children's Week [Alliance - Human]
				["providers"] = {
					{ "i", 18598 },	-- Human Orphan Whistle
					{ "n", 14305 },	-- Human Orphan
				},
				["maps"] = { MAP.WESTFALL },
				["races"] = ALLIANCE_ONLY,
				["isYearly"] = true,
				["lvl"] = 10,
				["groups"] = {
					objective(1, {	-- Go to the Westfall Lighthouse.
						["provider"] = { "n", 392 },	-- Captain Grayson
						["coord"] = { 29.0, 86.0, MAP.WESTFALL },
					}),
				},
			}),
			q(1479, {	-- The Bough of the Eternals [Alliance - Human] (removed)
				["sourceQuest"] = 1468,	-- Children's Week [Alliance - Human]
				["providers"] = {
					{ "i", 18598 },	-- Human Orphan Whistle
					{ "n", 14305 },	-- Human Orphan
				},
				["maps"] = { MAP.DARNASSUS },
				["races"] = ALLIANCE_ONLY,
				["isYearly"] = true,
				["lvl"] = 10,
				["groups"] = {
					objective(1, {	-- Go to the bank in Darnassus, otherwise known as the Bough of the Eternals.
						["coord"] = { 41.0, 43.0, MAP.DARNASSUS },
					}),
				},
			}),
			q(1558, {	-- The Stonewrought Dam [Alliance - Human] (removed)
				["sourceQuest"] = 1468,	-- Children's Week [Alliance - Human]
				["providers"] = {
					{ "i", 18598 },	-- Human Orphan Whistle
					{ "n", 14305 },	-- Human Orphan
				},
				["maps"] = { MAP.LOCH_MODAN },
				["races"] = ALLIANCE_ONLY,
				["isYearly"] = true,
				["lvl"] = 10,
				["groups"] = {
					objective(1, {	-- Go to the top of the Stonewrought Dam in Loch Modan.
						["coord"] = { 48.0, 12.0, MAP.LOCH_MODAN },
					}),
				},
			}),
			q(4822, {	-- You Scream, I Scream... [Alliance - Human] (removed)
				["sourceQuests"] = {
					1687,	-- Spooky Lighthouse [Alliance - Human] (removed)
					1479,	-- The Bough of the Eternals [Alliance - Human] (removed)
					1558,	-- The Stonewrought Dam [Alliance - Human] (removed)
				},
				["providers"] = {
					{ "i", 18598 },	-- Human Orphan Whistle
					{ "n", 14305 },	-- Human Orphan
				},
				["maps"] = { MAP.STORMWIND_CITY },
				["races"] = ALLIANCE_ONLY,
				["isYearly"] = true,
				["lvl"] = 10,
				["groups"] = {
					objective(1, {	-- 0/1 Tigule's Strawberry Ice Cream
						["provider"] = { "i", 7228 },	-- Tigule's Strawberry Ice Cream
						["coord"] = { 61.8, 75.2, MAP.STORMWIND_CITY },
						["cr"] = 14481,	-- Emmithue Smails <Sweet Treats>
					}),
				},
			}),
			q(915, {	-- You Scream, I Scream... [Horde - Orc] (removed)
				["sourceQuests"] = {
					910,	-- Down at the Docks [Horde - Orc] (removed)
					911,	-- Gateway to the Frontier [Horde - Orc] (removed)
					1800,	-- Lordaeron Throne Room [Horde - Orc] (removed)
				},
				["providers"] = {
					{ "i", 18597 },	-- Orcish Orphan Whistle
					{ "n", 14444 },	-- Orcish Orphan
				},
				["maps"] = { MAP.ORGRIMMAR },
				["races"] = HORDE_ONLY,
				["isYearly"] = true,
				["lvl"] = 10,
				["groups"] = {
					objective(1, {	-- 0/1 Tigule's Strawberry Ice Cream
						["provider"] = { "i", 7228 },	-- Tigule's Strawberry Ice Cream
						["coord"] = { 52.6, 69.6, MAP.ORGRIMMAR },	-- Alowicious Czervik <Sweet Treats>
						["cr"] = 14480,	-- Alowicious Czervik <Sweet Treats>
					}),
				},
			}),
		}),
	},
})));
