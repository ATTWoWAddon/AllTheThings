--------------------------------------------
--     H O L I D A Y S  M O D U L E       --
--------------------------------------------
DRAGONRIDING_CUP_ROOT = createHeader({
	readable = "Dragonriding Cup",
	constant = "DRAGONRIDING_CUP_HEADER",
	icon = [[~_.asset("Holiday_RaceCup")]],
	eventID = EVENTS.DRAGONRIDING_CUP,
	text = {
		-- #if BEFORE TWW 
		en = "Dragonriding Cup",
		es = "Copa de Jinete de dragones",
		mx = "Copa de Dracoequitación",
		ru = "Кубок полётов на драконе",
		cn = "驭龙术杯赛",
		tw = "飛龍騎術競速",
		-- #ENDIF
		en = "Skyriding Cup",
		es = "Copa de Surcacielos",
		mx = "Copa de Cielonáutica",
		ru = "Кубок полётов на Высший пилотаж",
		--cn = TODO,
		--tw = TODO,
		
	},
});
BROKEN_ISLES_CUP_HEADER = createHeader({
	readable = "Broken Isles Cup",
	constant = "BROKEN_ISLES_HEADER",
	icon = [[~_.asset("Holiday_BrokenCup")]],
	eventID = EVENTS.BROKEN_ISLES_CUP,
	text = {
		en = "Broken Isles Cup",
		es = "Copa Islas abruptas",
		mx = "Copa Islas quebradas",
		ru = "Кубок Расколотых островов",
		cn = "破碎群岛杯",
		tw = "破碎群島杯",
	},
});
EASTERN_KINGDOMS_CUP_HEADER = createHeader({
	readable = "Eastern Kingdoms Cup",
	constant = "EASTERN_KINGDOMS_CUP_HEADER",
	icon = [[~_.asset("Holiday_EastCup")]],
	eventID = EVENTS.EASTERN_KINGDOMS_CUP,
	text = {
		en = "Eastern Kingdoms Cup",
		es = "Copa Reinos del este",
		mx = "Copa Reinos del este",
		de = "Der Pokal der Östlichen Königreiche",
		ru = "Кубок Восточных королевств",
		cn = "东部王国杯",
		tw = "東部王國杯",
	},
});
KALIMDOR_CUP_HEADER = createHeader({
	readable = "Kalimdor Cup",
	constant = "KALIMDOR_CUP_HEADER",
	icon = [[~_.asset("Holiday_KalCup")]],
	eventID = EVENTS.KALIMDOR_CUP,
	text = {
		en = "Kalimdor Cup",
		es = "Copa Kalimdor",
		mx = "Copa Kalimdor",
		de = "Kalimdorpokal",
		ru = "Кубок Калимдора",
		cn = "卡利姆多杯",
		tw = "卡林多杯",
	},
});
NORTHREND_CUP_HEADER = createHeader({
	readable = "Northrend Cup",
	constant = "NORTHREND_CUP_HEADER",
	icon = [[~_.asset("Holiday_NorthCup")]],
	eventID = EVENTS.NORTHREND_CUP,
	text = {
		en = "Northrend Cup",
		es = "Copa Rasganorte",
		mx = "Copa Rasganorte",
		ru = "Кубок Нордскола",
		cn = "诺森德杯",
		tw = "北裂境杯",
	},
});
OUTLAND_CUP_HEADER = createHeader({
	readable = "Outland Cup",
	constant = "OUTLAND_CUP_HEADER",
	icon = [[~_.asset("Holiday_OutCup")]],
	eventID = EVENTS.OUTLAND_CUP,
	text = {
		en = "Outland Cup",
		es = "Copa Terrallende",
		mx = "Copa Terrallende",
		ru = "Кубок Запределья",
		cn = "外域杯",
		tw = "外域杯",
	},
});
PANDARIA_CUP_HEADER = createHeader({
	readable = "Pandaria Cup",
	constant = "PANDARIA_CUP_HEADER",
	icon = [[~_.asset("Holiday_PandaCup")]],
	eventID = EVENTS.PANDARIA_CUP,
	text = {
		en = "Pandaria Cup",
		es = "Copa Pandaria",
		mx = "Copa Pandaria",
		ru = "Кубок Пандарии",
		cn = "潘达利亚杯",
		tw = "潘達利亞杯",
	},
});
-- These actually don't require any DF content
local dragonridingrace = function(id, data)
	local t = dragonridingrace(id, data);
	t.sourceQuests = nil;
	t.sourceQuestNumRequired = nil;
	t.repeatable = true;
	return t;
end
local RIDERS_OF_AZEROTH_BADGE = 2588;

root(ROOTS.Holidays, skyriding(applyevent(EVENTS.DRAGONRIDING_CUP, n(DRAGONRIDING_CUP_ROOT, {
	["timeline"] = { ADDED_10_1_5 },
	["groups"] = {
		applyevent(EVENTS.EASTERN_KINGDOMS_CUP, n(EASTERN_KINGDOMS_CUP_HEADER, bubbleDownSelf({ ["timeline"] = { ADDED_10_1_7 } }, {	-- Eastern Kingdom Cup
			n(ACHIEVEMENTS, {
				ach(18566, {	-- Eastern Kingdoms: Bronze
				-- Meta Achievement
					["sym"] = {{"meta_achievement",
						18474,	-- Blasted Lands Bolt: Bronze
						18498,	-- Booty Bay Blast: Bronze
						18435,	-- Deadwind Derby: Bronze
						18444,	-- Elwynn Forest Flash: Bronze
						18510,	-- Fuselight Night Flight: Bronze
						18399,	-- Gilneas Gambit: Bronze
						18453,	-- Gurubashi Gala: Bronze
						18462,	-- Ironforge Interceptor: Bronze
						18519,	-- Krazzworks Klash: Bronze
						18408,	-- Loch Modan Loop: Bronze
						18483,	-- Plaguelands Plunge: Bronze
						18528,	-- Redridge Rally: Bronze
						18417,	-- Searing Slalom: Bronze
						18426,	-- Twilight Terror: Bronze
					}},
				}),
				ach(18567, {	-- Eastern Kingdoms: Silver
					-- Meta Achievement
					["sym"] = {{"meta_achievement",
						18475,	-- Blasted Lands Bolt: Silver
						18499,	-- Booty Bay Blast: Silver
						18436,	-- Deadwind Derby: Silver
						18445,	-- Elwynn Forest Flash: Silver
						18511,	-- Fuselight Night Flight: Silver
						18400,	-- Gilneas Gambit: Silver
						18454,	-- Gurubashi Gala: Silver
						18463,	-- Ironforge Interceptor: Silver
						18520,	-- Krazzworks Klash: Silver
						18409,	-- Loch Modan Loop: Silver
						18484,	-- Plaguelands Plunge: Silver
						18529,	-- Redridge Rally: Silver
						18418,	-- Searing Slalom: Silver
						18427,	-- Twilight Terror: Silver
					}},
				}),
				ach(18568, {	-- Eastern Kingdoms: Gold
					-- Meta Achievement
					["sym"] = {{"meta_achievement",
						18476,	-- Blasted Lands Bolt: Gold
						18500,	-- Booty Bay Blast: Gold
						18437,	-- Deadwind Derby: Gold
						18446,	-- Elwynn Forest Flash: Gold
						18512,	-- Fuselight Night Flight: Gold
						18401,	-- Gilneas Gambit: Gold
						18455,	-- Gurubashi Gala: Gold
						18464,	-- Ironforge Interceptor: Gold
						18521,	-- Krazzworks Klash: Gold
						18410,	-- Loch Modan Loop: Gold
						18485,	-- Plaguelands Plunge: Gold
						18530,	-- Redridge Rally: Gold
						18419,	-- Searing Slalom: Gold
						18428,	-- Twilight Terror: Gold
					}},
				}),
				ach(18569, {	-- Eastern Kingdoms Advanced: Bronze
					-- Meta Achievement
					["sym"] = {{"meta_achievement",
						18477,	-- Blasted Lands Bolt Advanced: Bronze
						18501,	-- Booty Bay Blast Advanced: Bronze
						18438,	-- Deadwind Derby Advanced: Bronze
						18447,	-- Elwynn Forest Flash Advanced: Bronze
						18513,	-- Fuselight Night Flight Advanced: Bronze
						18402,	-- Gilneas Gambit Advanced: Bronze
						18456,	-- Gurubashi Gala Advanced: Bronze
						18465,	-- Ironforge Interceptor Advanced: Bronze
						18522,	-- Krazzworks Klash Advanced: Bronze
						18411,	-- Loch Modan Loop Advanced: Bronze
						18486,	-- Plaguelands Plunge Advanced: Bronze
						18531,	-- Redridge Rally Advanced: Bronze
						18420,	-- Searing Slalom Advanced: Bronze
						18429,	-- Twilight Terror Advanced: Bronze
					}},
				}),
				ach(18570, {	-- Eastern Kingdoms Advanced: Silver
					-- Meta Achievement
					["sym"] = {{"meta_achievement",
						18478,	-- Blasted Lands Bolt Advanced: Silver
						18502,	-- Booty Bay Blast Advanced: Silver
						18439,	-- Deadwind Derby Advanced: Silver
						18448,	-- Elwynn Forest Flash Advanced: Silver
						18514,	-- Fuselight Night Flight Advanced: Silver
						18403,	-- Gilneas Gambit Advanced: Silver
						18457,	-- Gurubashi Gala Advanced: Silver
						18466,	-- Ironforge Interceptor Advanced: Silver
						18523,	-- Krazzworks Klash Advanced: Silver
						18412,	-- Loch Modan Loop Advanced: Silver
						18487,	-- Plaguelands Plunge Advanced: Silver
						18532,	-- Redridge Rally Advanced: Silver
						18421,	-- Searing Slalom Advanced: Silver
						18430,	-- Twilight Terror Advanced: Silver
					}},
				}),
				ach(18571, {	-- Eastern Kingdoms Advanced: Gold
					-- Meta Achievement
					["sym"] = {{"meta_achievement",
						18479,	-- Blasted Lands Bolt Advanced: Gold
						18503,	-- Booty Bay Blast Advanced: Gold
						18440,	-- Deadwind Derby Advanced: Gold
						18449,	-- Elwynn Forest Flash Advanced: Gold
						18515,	-- Fuselight Night Flight Advanced: Gold
						18404,	-- Gilneas Gambit Advanced: Gold
						18458,	-- Gurubashi Gala Advanced: Gold
						18467,	-- Ironforge Interceptor Advanced: Gold
						18524,	-- Krazzworks Klash Advanced: Gold
						18413,	-- Loch Modan Loop Advanced: Gold
						18488,	-- Plaguelands Plunge Advanced: Gold
						18533,	-- Redridge Rally Advanced: Gold
						18422,	-- Searing Slalom Advanced: Gold
						18431,	-- Twilight Terror Advanced: Gold
					}},
				}),
				ach(18572, {	-- Eastern Kingdoms Reverse: Bronze
					-- Meta Achievement
					["sym"] = {{"meta_achievement",
						18480,	-- Blasted Lands Bolt Reverse: Bronze
						18504,	-- Booty Bay Blast Reverse: Bronze
						18441,	-- Deadwind Derby Reverse: Bronze
						18450,	-- Elwynn Forest Flash Reverse: Bronze
						18516,	-- Fuselight Night Flight Reverse: Bronze
						18405,	-- Gilneas Gambit Reverse: Bronze
						18459,	-- Gurubashi Gala Reverse: Bronze
						18468,	-- Ironforge Interceptor Reverse: Bronze
						18525,	-- Krazzworks Klash Reverse: Bronze
						18414,	-- Loch Modan Loop Reverse: Bronze
						18489,	-- Plaguelands Plunge Reverse: Bronze
						18534,	-- Redridge Rally Reverse: Bronze
						18423,	-- Searing Slalom Reverse: Bronze
						18432,	-- Twilight Terror Reverse: Bronze
					}},
				}),
				ach(18573, {	-- Eastern Kingdoms Reverse: Silver
					-- Meta Achievement
					["sym"] = {{"meta_achievement",
						18481,	-- Blasted Lands Bolt Reverse: Silver
						18505,	-- Booty Bay Blast Reverse: Silver
						18442,	-- Deadwind Derby Reverse: Silver
						18451,	-- Elwynn Forest Flash Reverse: Silver
						18517,	-- Fuselight Night Flight Reverse: Silver
						18406,	-- Gilneas Gambit Reverse: Silver
						18460,	-- Gurubashi Gala Reverse: Silver
						18469,	-- Ironforge Interceptor Reverse: Silver
						18526,	-- Krazzworks Klash Reverse: Silver
						18415,	-- Loch Modan Loop Reverse: Silver
						18490,	-- Plaguelands Plunge Reverse: Silver
						18535,	-- Redridge Rally Reverse: Silver
						18424,	-- Searing Slalom Reverse: Silver
						18433,	-- Twilight Terror Reverse: Silver
					}},
				}),
				ach(18574, {	-- Eastern Kingdoms Reverse: Gold
					-- Meta Achievement
					["sym"] = {{"meta_achievement",
						18482,	-- Blasted Lands Bolt Reverse: Gold
						18506,	-- Booty Bay Blast Reverse: Gold
						18443,	-- Deadwind Derby Reverse: Gold
						18452,	-- Elwynn Forest Flash Reverse: Gold
						18518,	-- Fuselight Night Flight Reverse: Gold
						18407,	-- Gilneas Gambit Reverse: Gold
						18461,	-- Gurubashi Gala Reverse: Gold
						18470,	-- Ironforge Interceptor Reverse: Gold
						18527,	-- Krazzworks Klash Reverse: Gold
						18416,	-- Loch Modan Loop Reverse: Gold
						18491,	-- Plaguelands Plunge Reverse: Gold
						18536,	-- Redridge Rally Reverse: Gold
						18425,	-- Searing Slalom Reverse: Gold
						18434,	-- Twilight Terror Reverse: Gold
					}},
				}),
				ach(18939, {	-- Eastern Kingdoms Racing Completionist
					-- Meta Achievement
					["sym"] = {{"meta_achievement",
						18566,	-- Eastern Kingdoms: Bronze
						18569,	-- Eastern Kingdoms Advanced: Bronze
						18572,	-- Eastern Kingdoms Reverse: Bronze
					}},
				}),
				ach(18940, {	-- Eastern Kingdoms Racing Completionist: Silver
					-- Meta Achievement
					["sym"] = {{"meta_achievement",
						18567,	-- Eastern Kingdoms: Silver
						18570,	-- Eastern Kingdoms Advanced: Silver
						18573,	-- Eastern Kingdoms Reverse: Silver
					}},
				}),
				ach(18942, {	-- Eastern Kingdoms Racing Completionist: Gold
					-- Meta Achievement
					["sym"] = {{"meta_achievement",
						18568,	-- Eastern Kingdoms: Gold
						18571,	-- Eastern Kingdoms Advanced: Gold
						18574,	-- Eastern Kingdoms Reverse: Gold
					}},
					["groups"] = {
						title(515),	-- Eastern Kingdoms Racer <Name>
					},
				}),
			}),
			n(QUESTS, {
				q(77840, {	-- The Eastern Kingdoms Cup Begins
					["provider"] = { "n", 199261 },	-- Holiday Enthusiast
					["coord"] = { 55.0, 37.7, VALDRAKKEN },
					["isBreadcrumb"] = true,
					["repeatable"] = true,
				}),
				q(78880, {	-- The Eastern Kingdoms Cup Begins
					["provider"] = { "n", 214031 },	-- Holiday Enthusiast
					["coord"] = { 62.3, 74.4, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["repeatable"] = true,
				}),
				q(78881, {	-- The Eastern Kingdoms Cup Begins
					["provider"] = { "n", 213769 },	-- Holiday Enthusiast
					["coord"] = { 52.7, 79.4, ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
					["repeatable"] = true,
				}),
				q(77839, {	-- The Eastern Kingdoms Cup Introduction
					["sourceQuests"] = {
						77840,	-- The Eastern Kingdoms Cup Begins
						78880,	-- The Eastern Kingdoms Cup Begins
						78881,	-- The Eastern Kingdoms Cup Begins
					},
					["sourceQuestNumRequired"] = 1,
					["provider"] = { "n", 206737 },	-- Lord Andestrasz
					["coord"] = { 27.1, 47.1, VALDRAKKEN },
					["repeatable"] = true,
					["groups"] = {
						currency(RIDERS_OF_AZEROTH_BADGE),
					},
				}),
				dragonridingrace(76469, {	-- Blasted Lands Bolt
					["provider"] = { "n", 207357 },	-- Bronze Timekeeper
					["coord"] = { 62.7, 26.2, BLASTED_LANDS },
					["groups"] = {
						ach(18474),	-- Blasted Lands Bolt: Bronze
						ach(18475),	-- Blasted Lands Bolt: Silver
						ach(18476),	-- Blasted Lands Bolt: Gold
					},
				}),
				dragonridingrace(76470, {	-- Blasted Lands Bolt - Advanced
					["provider"] = { "n", 207357 },	-- Bronze Timekeeper
					["coord"] = { 62.7, 26.2, BLASTED_LANDS },
					["groups"] = {
						ach(18477),	-- Blasted Lands Bolt Advanced: Bronze
						ach(18478),	-- Blasted Lands Bolt Advanced: Silver
						ach(18479),	-- Blasted Lands Bolt Advanced: Gold
					},
				}),
				dragonridingrace(76471, {	-- Blasted Lands Bolt - Reverse
					["provider"] = { "n", 207357 },	-- Bronze Timekeeper
					["coord"] = { 62.7, 26.2, BLASTED_LANDS },
					["groups"] = {
						ach(18480),	-- Blasted Lands Bolt Reverse: Bronze
						ach(18481),	-- Blasted Lands Bolt Reverse: Silver
						ach(18482),	-- Blasted Lands Bolt Reverse: Gold
					},
				}),
				dragonridingrace(76515, {	-- Booty Bay Blast
					["provider"] = { "n", 207455 },	-- Bronze Timekeeper
					["coord"] = { 40.4, 77.8, THE_CAPE_OF_STRANGLETHORN },
					["groups"] = {
						ach(18498),	-- Booty Bay Blast: Bronze
						ach(18499),	-- Booty Bay Blast: Silver
						ach(18500),	-- Booty Bay Blast: Gold
					},
				}),
				dragonridingrace(76516, {	-- Booty Bay Blast - Advanced
					["provider"] = { "n", 207455 },	-- Bronze Timekeeper
					["coord"] = { 40.4, 77.8, THE_CAPE_OF_STRANGLETHORN },
					["groups"] = {
						ach(18501),	-- Booty Bay Blast Advanced: Bronze
						ach(18502),	-- Booty Bay Blast Advanced: Silver
						ach(18503),	-- Booty Bay Blast Advanced: Gold
					},
				}),
				dragonridingrace(76517, {	-- Booty Bay Blast - Reverse
					["provider"] = { "n", 207455 },	-- Bronze Timekeeper
					["coord"] = { 40.4, 77.8, THE_CAPE_OF_STRANGLETHORN },
					["groups"] = {
						ach(18504),	-- Booty Bay Blast Reverse: Bronze
						ach(18505),	-- Booty Bay Blast Reverse: Silver
						ach(18506),	-- Booty Bay Blast Reverse: Gold
					},
				}),
				dragonridingrace(76380, {	-- Deadwind Derby
					["provider"] = { "n", 206823 },	-- Bronze Timekeeper
					["coord"] = { 46.2, 72.2, DEADWIND_PASS },
					["groups"] = {
						ach(18435),	-- Deadwind Derby: Bronze
						ach(18436),	-- Deadwind Derby: Silver
						ach(18437),	-- Deadwind Derby: Gold
					},
				}),
				dragonridingrace(76381, {	-- Deadwind Derby - Advanced
					["provider"] = { "n", 206823 },	-- Bronze Timekeeper
					["coord"] = { 46.2, 72.2, DEADWIND_PASS },
					["groups"] = {
						ach(18438),	-- Deadwind Derby Advanced: Bronze
						ach(18439),	-- Deadwind Derby Advanced: Silver
						ach(18440),	-- Deadwind Derby Advanced: Gold
					},
				}),
				dragonridingrace(76382, {	-- Deadwind Derby - Reverse
					["provider"] = { "n", 206823 },	-- Bronze Timekeeper
					["coord"] = { 46.2, 72.2, DEADWIND_PASS },
					["groups"] = {
						ach(18441),	-- Deadwind Derby Reverse: Bronze
						ach(18442),	-- Deadwind Derby Reverse: Silver
						ach(18443),	-- Deadwind Derby Reverse: Gold
					},
				}),
				dragonridingrace(76397, {	-- Elwynn Forest Flash
					["provider"] = { "n", 206893 },	-- Bronze Timekeeper
					["coord"] = { 64.7, 48.8, ELWYNN_FOREST },
					["groups"] = {
						ach(18444),	-- Elwynn Forest Flash: Bronze
						ach(18445),	-- Elwynn Forest Flash: Silver
						ach(18446),	-- Elwynn Forest Flash: Gold
					},
				}),
				dragonridingrace(76399, {	-- Elwynn Forest Flash - Advanced
					["provider"] = { "n", 206893 },	-- Bronze Timekeeper
					["coord"] = { 64.7, 48.8, ELWYNN_FOREST },
					["groups"] = {
						ach(18447),	-- Elwynn Forest Flash Advanced: Bronze
						ach(18448),	-- Elwynn Forest Flash Advanced: Silver
						ach(18449),	-- Elwynn Forest Flash Advanced: Gold
					},
				}),
				dragonridingrace(76400, {	-- Elwynn Forest Flash - Reverse
					["provider"] = { "n", 206893 },	-- Bronze Timekeeper
					["coord"] = { 64.7, 48.8, ELWYNN_FOREST },
					["groups"] = {
						ach(18450),	-- Elwynn Forest Flash Reverse: Bronze
						ach(18451),	-- Elwynn Forest Flash Reverse: Silver
						ach(18452),	-- Elwynn Forest Flash Reverse: Gold
					},
				}),
				dragonridingrace(76523, {	-- Fuselight Night Flight
					["provider"] = { "n", 207467 },	-- Bronze Timekeeper
					["coord"] = { 67.1, 36.7, BADLANDS },
					["groups"] = {
						ach(18510),	-- Fuselight Night Flight: Bronze
						ach(18511),	-- Fuselight Night Flight: Silver
						ach(18512),	-- Fuselight Night Flight: Gold
					},
				}),
				dragonridingrace(76524, {	-- Fuselight Night Flight - Advanced
					["provider"] = { "n", 207467 },	-- Bronze Timekeeper
					["coord"] = { 67.1, 36.7, BADLANDS },
					["groups"] = {
						ach(18513),	-- Fuselight Night Flight Advanced: Bronze
						ach(18514),	-- Fuselight Night Flight Advanced: Silver
						ach(18515),	-- Fuselight Night Flight Advanced: Gold
					},
				}),
				dragonridingrace(76525, {	-- Fuselight Night Flight - Reverse
					["provider"] = { "n", 207467 },	-- Bronze Timekeeper
					["coord"] = { 67.1, 36.7, BADLANDS },
					["groups"] = {
						ach(18516),	-- Fuselight Night Flight Reverse: Bronze
						ach(18517),	-- Fuselight Night Flight Reverse: Silver
						ach(18518),	-- Fuselight Night Flight Reverse: Gold
					},
				}),
				dragonridingrace(76309, {	-- Gilneas Gambit
					["provider"] = { "n", 206246 },	-- Bronze Timekeeper
					["coord"] = { 58.6, 11.6, 217 },
					["groups"] = {
						ach(18399),	-- Gilneas Gambit: Bronze
						ach(18400),	-- Gilneas Gambit: Silver
						ach(18401),	-- Gilneas Gambit: Gold
					},
				}),
				dragonridingrace(76310, {	-- Gilneas Gambit - Advanced
					["provider"] = { "n", 206246 },	-- Bronze Timekeeper
					["coord"] = { 58.6, 11.6, 217 },
					["groups"] = {
						ach(18402),	-- Gilneas Gambit Advanced: Bronze
						ach(18403),	-- Gilneas Gambite Advanced: Silver
						ach(18404),	-- Gilneas Gambit Advanced: Gold
					},
				}),
				dragonridingrace(76311, {	-- Gilneas Gambit - Reverse
					["provider"] = { "n", 206246 },	-- Bronze Timekeeper
					["coord"] = { 58.6, 11.6, 217 },
					["groups"] = {
						ach(18405),	-- Gilneas Gambit Reverse: Bronze
						ach(18406),	-- Gilneas Gambit Reverse: Silver
						ach(18407),	-- Gilneas Gambit Reverse: Gold
					},
				}),
				dragonridingrace(76438, {	-- Gurubashi Gala
					["provider"] = { "n", 207163 },	-- Bronze Timekeeper
					["coord"] = { 70.1, 26.6, NORTHERN_STRANGLETHORN },
					["groups"] = {
						ach(18453),	-- Gurubashi Gala: Bronze
						ach(18454),	-- Gurubashi Gala: Silver
						ach(18455),	-- Gurubashi Gala: Gold
					},
				}),
				dragonridingrace(76439, {	-- Gurubashi Gala - Advanced
					["provider"] = { "n", 207163 },	-- Bronze Timekeeper
					["coord"] = { 70.1, 26.6, NORTHERN_STRANGLETHORN },
					["groups"] = {
						ach(18456),	-- Gurubashi Gala Advanced: Bronze
						ach(18457),	-- Gurubashi Gala Advanced: Silver
						ach(18458),	-- Gurubashi Gala Advanced: Gold
					},
				}),
				dragonridingrace(76440, {	-- Gurubashi Gala - Reverse
					["provider"] = { "n", 207163 },	-- Bronze Timekeeper
					["coord"] = { 70.1, 26.6, NORTHERN_STRANGLETHORN },
					["groups"] = {
						ach(18459),	-- Gurubashi Gala Reverse: Bronze
						ach(18460),	-- Gurubashi Gala Reverse: Silver
						ach(18461),	-- Gurubashi Gala Reverse: Gold
					},
				}),
				dragonridingrace(76445, {	-- Ironforge Interceptor
					["provider"] = { "n", 207173 },	-- Bronze Timekeeper
					["coord"] = { 74.1, 34.0, DUN_MOROGH },
					["groups"] = {
						ach(18462),	-- Ironforge Interceptor: Bronze
						ach(18463),	-- Ironforge Interceptor: Silver
						ach(18464),	-- Ironforge Interceptor: Gold
					},
				}),
				dragonridingrace(76446, {	-- Ironforge Interceptor - Advanced
					["provider"] = { "n", 207173 },	-- Bronze Timekeeper
					["coord"] = { 74.1, 34.0, DUN_MOROGH },
					["groups"] = {
						ach(18465),	-- Ironforge Interceptor Advanced: Bronze
						ach(18466),	-- Ironforge Interceptor Advanced: Silver
						ach(18467),	-- Ironforge Interceptor Advanced: Gold
					},
				}),
				dragonridingrace(76447, {	-- Ironforge Interceptor - Reverse
					["provider"] = { "n", 207173 },	-- Bronze Timekeeper
					["coord"] = { 74.1, 34.0, DUN_MOROGH },
					["groups"] = {
						ach(18468),	-- Ironforge Interceptor Reverse: Bronze
						ach(18469),	-- Ironforge Interceptor Reverse: Silver
						ach(18470),	-- Ironforge Interceptor Reverse: Gold
					},
				}),
				dragonridingrace(76527, {	-- Krazzworks Klash
					["provider"] = { "n", 207485 },	-- Bronze Timekeeper
					["coord"] = { 72.9, 27.9, TWILIGHT_HIGHLANDS },
					["groups"] = {
						ach(18519),	-- Krazzworks Klash: Bronze
						ach(18520),	-- Krazzworks Klash: Silver
						ach(18521),	-- Krazzworks Klash: Gold
					},
				}),
				dragonridingrace(76528, {	-- Krazzworks Klash - Advanced
					["provider"] = { "n", 207485 },	-- Bronze Timekeeper
					["coord"] = { 72.9, 27.9, TWILIGHT_HIGHLANDS },
					["groups"] = {
						ach(18522),	-- Krazzworks Klash Advanced: Bronze
						ach(18523),	-- Krazzworks Klash Advanced: Silver
						ach(18524),	-- Krazzworks Klash Advanced: Gold
					},
				}),
				dragonridingrace(76529, {	-- Krazzworks Klash - Reverse
					["provider"] = { "n", 207485 },	-- Bronze Timekeeper
					["coord"] = { 72.9, 27.9, TWILIGHT_HIGHLANDS },
					["groups"] = {
						ach(18525),	-- Krazzworks Klash Reverse: Bronze
						ach(18526),	-- Krazzworks Klash Reverse: Silver
						ach(18527),	-- Krazzworks Klash Reverse: Gold
					},
				}),
				dragonridingrace(76339, {	-- Loch Modan Loop
					["provider"] = { "n", 206461 },	-- Bronze Timekeeper
					["coord"] = { 47.0, 14.0, LOCH_MODAN },
					["groups"] = {
						ach(18408),	-- Loch Modan Loop: Bronze
						ach(18409),	-- Loch Modan Loop: Silver
						ach(18410),	-- Loch Modan Loop: Gold
					},
				}),
				dragonridingrace(76340, {	-- Loch Modan Loop - Advanced
					["provider"] = { "n", 206461 },	-- Bronze Timekeeper
					["coord"] = { 47.0, 14.0, LOCH_MODAN },
					["groups"] = {
						ach(18411),	-- Loch Modan Loop Advanced: Bronze
						ach(18412),	-- Loch Modan Loop Advanced: Silver
						ach(18413),	-- Loch Modan Loop Advanced: Gold
					},
				}),
				dragonridingrace(76341, {	-- Loch Modan Loop - Reverse
					["provider"] = { "n", 206461 },	-- Bronze Timekeeper
					["coord"] = { 47.0, 14.0, LOCH_MODAN },
					["groups"] = {
						ach(18414),	-- Loch Modan Loop Reverse: Bronze
						ach(18415),	-- Loch Modan Loop Reverse: Silver
						ach(18416),	-- Loch Modan Loop Reverse: Gold
					},
				}),
				dragonridingrace(76510, {	-- Plaguelands Plunge
					["provider"] = { "n", 207448 },	-- Bronze Timekeeper
					["coord"] = { 34.8, 37.9, EASTERN_PLAGUELANDS },
					["groups"] = {
						ach(18483),	-- Plaguelands Plunge: Bronze
						ach(18484),	-- Plaguelands Plunge: Silver
						ach(18485),	-- Plaguelands Plunge: Gold
					},
				}),
				dragonridingrace(76512, {	-- Plaguelands Plunge - Advanced
					["provider"] = { "n", 207448 },	-- Bronze Timekeeper
					["coord"] = { 34.8, 37.9, EASTERN_PLAGUELANDS },
					["groups"] = {
						ach(18486),	-- Plaguelands Plunge Advanced: Bronze
						ach(18487),	-- Plaguelands Plunge Advanced: Silver
						ach(18488),	-- Plaguelands Plunge Advanced: Gold
					},
				}),
				dragonridingrace(76513, {	-- Plaguelands Plunge - Reverse
					["provider"] = { "n", 207448 },	-- Bronze Timekeeper
					["coord"] = { 34.8, 37.9, EASTERN_PLAGUELANDS },
					["groups"] = {
						ach(18489),	-- Plaguelands Plunge Reverse: Bronze
						ach(18490),	-- Plaguelands Plunge Reverse: Silver
						ach(18491),	-- Plaguelands Plunge Reverse: Gold
					},
				}),
				dragonridingrace(76536, {	-- Redridge Rally Thread
					["provider"] = { "n", 207524 },	-- Bronze Timekeeper
					["coord"] = { 40.8, 25.0, REDRIDGE_MOUNTAINS },
					["groups"] = {
						ach(18528),	-- Redridge Rally Thread: Bronze
						ach(18529),	-- Redridge Rally Thread: Silver
						ach(18530),	-- Redridge Rally Thread: Gold
					},
				}),
				dragonridingrace(76537, {	-- Redridge Rally Thread - Advanced
					["provider"] = { "n", 207524 },	-- Bronze Timekeeper
					["coord"] = { 40.8, 25.0, REDRIDGE_MOUNTAINS },
					["groups"] = {
						ach(18531),	-- Redridge Rally Thread Advanced: Bronze
						ach(18532),	-- Redridge Rally Thread Advanced: Silver
						ach(18533),	-- Redridge Rally Thread Advanced: Gold
					},
				}),
				dragonridingrace(76538, {	-- Redridge Rally Thread - Reverse
					["provider"] = { "n", 207524 },	-- Bronze Timekeeper
					["coord"] = { 40.8, 25.0, REDRIDGE_MOUNTAINS },
					["groups"] = {
						ach(18534),	-- Redridge Rally Thread Reverse: Bronze
						ach(18535),	-- Redridge Rally Thread Reverse: Silver
						ach(18536),	-- Redridge Rally Thread Reverse: Gold
					},
				}),
				dragonridingrace(76357, {	-- Searing Slalom
					["provider"] = { "n", 206618 },	-- Bronze Timekeeper
					["coord"] = { 73.3, 42.4, SEARING_GORGE },
					["groups"] = {
						ach(18417),	-- Searing Slalom: Bronze
						ach(18418),	-- Searing Slalom: Silver
						ach(18419),	-- Searing Slalom: Gold
					},
				}),
				dragonridingrace(76358, {	-- Searing Slalom - Advanced
					["provider"] = { "n", 206618 },	-- Bronze Timekeeper
					["coord"] = { 73.3, 42.4, SEARING_GORGE },
					["groups"] = {
						ach(18420),	-- Searing Slalom Advanced: Bronze
						ach(18421),	-- Searing Slalom Advanced: Silver
						ach(18422),	-- Searing Slalom Advanced: Gold
					},
				}),
				dragonridingrace(76359, {	-- Searing Slalom - Reverse
					["provider"] = { "n", 206618 },	-- Bronze Timekeeper
					["coord"] = { 73.3, 42.4, SEARING_GORGE },
					["groups"] = {
						ach(18423),	-- Searing Slalom Reverse: Bronze
						ach(18424),	-- Searing Slalom Reverse: Silver
						ach(18425),	-- Searing Slalom Reverse: Gold
					},
				}),
				dragonridingrace(76364, {	-- Twilight Terror
					["provider"] = { "n", 206764 },	-- Bronze Timekeeper
					["coord"] = { 34.8, 77.9, TWILIGHT_HIGHLANDS },
					["groups"] = {
						ach(18426),	-- Twilight Terror: Bronze
						ach(18427),	-- Twilight Terror: Silver
						ach(18428),	-- Twilight Terror: Gold
					},
				}),
				dragonridingrace(76365, {	-- Twilight Terror - Advanced
					["provider"] = { "n", 206764 },	-- Bronze Timekeeper
					["coord"] = { 34.8, 77.9, TWILIGHT_HIGHLANDS },
					["groups"] = {
						ach(18429),	-- Twilight Terror Advanced: Bronze
						ach(18430),	-- Twilight Terror Advanced: Silver
						ach(18431),	-- Twilight Terror Advanced: Gold
					},
				}),
				dragonridingrace(76366, {	-- Twilight Terror - Reverse
					["provider"] = { "n", 206764 },	-- Bronze Timekeeper
					["coord"] = { 34.8, 77.9, TWILIGHT_HIGHLANDS },
					["groups"] = {
						ach(18432),	-- Twilight Terror Reverse: Bronze
						ach(18433),	-- Twilight Terror Reverse: Silver
						ach(18434),	-- Twilight Terror Reverse: Gold
					},
				}),
			}),
			n(VENDORS, {
				n(206744, {	-- Maztha <Riders of Azeroth>
					["coord"] = { 27.2, 47.2, VALDRAKKEN },
					["groups"] = {
						-- Repeated rewards from Kalimdor Cup
						i(203322, {	-- Winding Slitherdrake: Blonde Hair (MM!)
							["cost"] = { { "c", RIDERS_OF_AZEROTH_BADGE, 25 } },
						}),
						i(203349, {	-- Winding Slitherdrake: Curved Nose Horn (MM!)
							["cost"] = { { "c", RIDERS_OF_AZEROTH_BADGE, 25 } },
						}),
						i(197615, {	-- Windborne Velocidrake: Teal Scales (MM!)
							["cost"] = { { "c", RIDERS_OF_AZEROTH_BADGE, 50 } },
						}),
						-- Previous Racing World Quest Drops
						i(196979, {	-- Cliffside Wylderdrake: Curled Head Horns (MM!)
							["cost"] = { { "c", RIDERS_OF_AZEROTH_BADGE, 25 } },
						}),
						i(197128, {	-- Highland Drake: Curled Back Horns (MM!)
							["cost"] = { { "c", RIDERS_OF_AZEROTH_BADGE, 25 } },
						}),
						i(202280, {	-- Renewed Proto-Drake: Pronged Tail (MM!)
							["cost"] = { { "c", RIDERS_OF_AZEROTH_BADGE, 25 } },
						}),
						i(197619, {	-- Windborne Velocidrake: Hooked Snout (MM!)
							["cost"] = { { "c", RIDERS_OF_AZEROTH_BADGE, 25 } },
						}),
						-- New for Eastern Kingdoms Cup
						i(203306, {	-- Winding Slitherdrake: Horned Brow (MM!)
							["cost"] = { { "c", RIDERS_OF_AZEROTH_BADGE, 25 } },
						}),
						i(203336, {	-- Winding Slitherdrake: Paired Horns (MM!)
							["cost"] = { { "c", RIDERS_OF_AZEROTH_BADGE, 25 } },
						}),
						i(203355, {	-- Winding Slitherdrake: Yellow Scales (MM!)
							["cost"] = { { "c", RIDERS_OF_AZEROTH_BADGE, 50 } },
						}),
						i(203359, {	-- Winding Slitherdrake: Shark Finned Tail (MM!)
							["cost"] = { { "c", RIDERS_OF_AZEROTH_BADGE, 25 } },
						}),
						-- Transmogs
						i(206592, {	-- Drake Racer's Belt
							["cost"] = { { "c", RIDERS_OF_AZEROTH_BADGE, 20 } },
						}),
						i(206594, {	-- Drake Racer's Boots
							["cost"] = { { "c", RIDERS_OF_AZEROTH_BADGE, 20 } },
						}),
						i(206591, {	-- Drake Racer's Handwraps
							["cost"] = { { "c", RIDERS_OF_AZEROTH_BADGE, 20 } },
						}),
						i(206588, {	-- Drake Racer's Helmet
							["cost"] = { { "c", RIDERS_OF_AZEROTH_BADGE, 20 } },
						}),
						i(206590, {	-- Drake Racer's Jersey
							["cost"] = { { "c", RIDERS_OF_AZEROTH_BADGE, 20 } },
						}),
						i(206593, {	-- Drake Racer's Leggings
							["cost"] = { { "c", RIDERS_OF_AZEROTH_BADGE, 20 } },
						}),
						i(206589, {	-- Drake Racer's Shoulderpads
							["cost"] = { { "c", RIDERS_OF_AZEROTH_BADGE, 20 } },
						}),
					},
				}),
			}),
		}))),
		applyevent(EVENTS.KALIMDOR_CUP, n(KALIMDOR_CUP_HEADER, bubbleDownSelf({ ["timeline"] = { ADDED_10_1_5 } }, {					-- Kalimdor Cup
			n(ACHIEVEMENTS, {
				ach(17712, {	-- Kalimdor: Bronze
					-- Meta Achievement
					["sym"] = {{"meta_achievement",
						17685,	-- Ahn'Qiraj Circuit: Bronze
						17613,	-- Ashenvale Ambit: Bronze
						17640,	-- Desolace Drift: Bronze
						17622,	-- Durotar Tour: Bronze
						17568,	-- Felwood Flyover: Bronze
						17676,	-- Feralas Ruins Ramble: Bronze
						17649,	-- Great Divide Dive: Bronze
						17595,	-- Hyjal Hotfoot: Bronze
						17586,	-- Nordrassil Spiral: Bronze
						17658,	-- Razorfen Roundabout: Bronze
						17604,	-- Rocketway Ride: Bronze
						17667,	-- Thousand Needles Thread: Bronze
						17694,	-- Uldum Tour: Bronze
						17703,	-- Un'Goro Crater Circuit: Bronze
						17631,	-- Webwinder Weave: Bronze
						17577,	-- Winter Wander: Bronze
					}},
				}),
				ach(17713, {	-- Kalimdor: Silver
					-- Meta Achievement
					["sym"] = {{"meta_achievement",
						17686,	-- Ahn'Qiraj Circuit: Silver
						17614,	-- Ashenvale Ambit: Silver
						17641,	-- Desolace Drift: Silver
						17623,	-- Durotar Tour: Silver
						17569,	-- Felwood Flyover: Silver
						17677,	-- Feralas Ruins Ramble: Silver
						17650,	-- Great Divide Dive: Silver
						17596,	-- Hyjal Hotfoot: Silver
						17587,	-- Nordrassil Spiral: Silver
						17659,	-- Razorfen Roundabout: Silver
						17605,	-- Rocketway Ride: Silver
						17668,	-- Thousand Needles Thread: Silver
						17695,	-- Uldum Tour: Silver
						17704,	-- Un'Goro Crater Circuit: Silver
						17632,	-- Webwinder Weave: Silver
						17578,	-- Winter Wander: Silver
					}},
				}),
				ach(17714, {	-- Kalimdor: Gold
					-- Meta Achievement
					["sym"] = {{"meta_achievement",
						17687,	-- Ahn'Qiraj Circuit: Gold
						17615,	-- Ashenvale Ambit: Gold
						17642,	-- Desolace Drift: Gold
						17624,	-- Durotar Tour: Gold
						17570,	-- Felwood Flyover: Gold
						17678,	-- Feralas Ruins Ramble: Gold
						17651,	-- Great Divide Dive: Gold
						17597,	-- Hyjal Hotfoot: Gold
						17588,	-- Nordrassil Spiral: Gold
						17660,	-- Razorfen Roundabout: Gold
						17606,	-- Rocketway Ride: Gold
						17669,	-- Thousand Needles Thread: Gold
						17696,	-- Uldum Tour: Gold
						17705,	-- Un'Goro Crater Circuit: Gold
						17633,	-- Webwinder Weave: Gold
						17579,	-- Winter Wander: Gold
					}},
				}),
				ach(17715, {	-- Kalimdor Advanced: Bronze
					-- Meta Achievement
					["sym"] = {{"meta_achievement",
						17688,	-- Ahn'Qiraj Circuit Advanced: Bronze
						17616,	-- Ashenvale Ambit Advanced: Bronze
						17643,	-- Desolace Drift Advanced: Bronze
						17625,	-- Durotar Tour Advanced: Bronze
						17571,	-- Felwood Flyover Advanced: Bronze
						17679,	-- Feralas Ruins Ramble Advanced: Bronze
						17652,	-- Great Divide Dive Advanced: Bronze
						17598,	-- Hyjal Hotfoot Advanced: Bronze
						17589,	-- Nordrassil Spiral Advanced: Bronze
						17661,	-- Razorfen Roundabout Advanced: Bronze
						17607,	-- Rocketway Ride Advanced: Bronze
						17670,	-- Thousand Needles Thread Advanced: Bronze
						17697,	-- Uldum Tour Advanced: Bronze
						17706,	-- Un'Goro Crater Circuit Advanced: Bronze
						17634,	-- Webwinder Weave Advanced: Bronze
						17580,	-- Winter Wander Advanced: Bronze
					}},
				}),
				ach(17716, {	-- Kalimdor Advanced: Silver
					-- Meta Achievement
					["sym"] = {{"meta_achievement",
						17689,	-- Ahn'Qiraj Circuit Advanced: Silver
						17617,	-- Ashenvale Ambit Advanced: Silver
						17644,	-- Desolace Drift Advanced: Silver
						17626,	-- Durotar Tour Advanced: Silver
						17572,	-- Felwood Flyover Advanced: Silver
						17680,	-- Feralas Ruins Ramble Advanced: Silver
						17653,	-- Great Divide Dive Advanced: Silver
						17599,	-- Hyjal Hotfoot Advanced: Silver
						17590,	-- Nordrassil Spiral Advanced: Silver
						17662,	-- Razorfen Roundabout Advanced: Silver
						17608,	-- Rocketway Ride Advanced: Silver
						17671,	-- Thousand Needles Thread Advanced: Silver
						17698,	-- Uldum Tour Advanced: Silver
						17707,	-- Un'Goro Crater Circuit Advanced: Silver
						17635,	-- Webwinder Weave Advanced: Silver
						17581,	-- Winter Wander Advanced: Silver
					}},
				}),
				ach(17717, {	-- Kalimdor Advanced: Gold
					-- Meta Achievement
					["sym"] = {{"meta_achievement",
						17690,	-- Ahn'Qiraj Circuit Advanced: Gold
						17618,	-- Ashenvale Ambit Advanced: Gold
						17645,	-- Desolace Drift Advanced: Gold
						17627,	-- Durotar Tour Advanced: Gold
						17573,	-- Felwood Flyover Advanced: Gold
						17681,	-- Feralas Ruins Ramble Advanced: Gold
						17654,	-- Great Divide Dive Advanced: Gold
						17600,	-- Hyjal Hotfoot Advanced: Gold
						17591,	-- Nordrassil Spiral Advanced: Gold
						17663,	-- Razorfen Roundabout Advanced: Gold
						17609,	-- Rocketway Ride Advanced: Gold
						17672,	-- Thousand Needles Thread Advanced: Gold
						17699,	-- Uldum Tour Advanced: Gold
						17708,	-- Un'Goro Crater Circuit Advanced: Gold
						17636,	-- Webwinder Weave Advanced: Gold
						17582,	-- Winter Wander Advanced: Gold
					}},
				}),
				ach(17718, {	-- Kalimdor Reverse: Bronze
					-- Meta Achievement
					["sym"] = {{"meta_achievement",
						17691,	-- Ahn'Qiraj Circuit Reverse: Bronze
						17619,	-- Ashenvale Ambit Reverse: Bronze
						17646,	-- Desolace Drift Reverse: Bronze
						17628,	-- Durotar Tour Reverse: Bronze
						17574,	-- Felwood Flyover Reverse: Bronze
						17682,	-- Feralas Ruins Ramble Reverse: Bronze
						17655,	-- Great Divide Dive Reverse: Bronze
						17601,	-- Hyjal Hotfoot Reverse: Bronze
						17592,	-- Nordrassil Spiral Reverse: Bronze
						17664,	-- Razorfen Roundabout Reverse: Bronze
						17610,	-- Rocketway Ride Reverse: Bronze
						17673,	-- Thousand Needles Thread Reverse: Bronze
						17700,	-- Uldum Tour Reverse: Bronze
						17709,	-- Un'Goro Crater Circuit Reverse: Bronze
						17637,	-- Webwinder Weave Reverse: Bronze
						17583,	-- Winter Wander Reverse: Bronze
					}},
				}),
				ach(17719, {	-- Kalimdor Reverse: Silver
					-- Meta Achievement
					["sym"] = {{"meta_achievement",
						17692,	-- Ahn'Qiraj Circuit Reverse: Silver
						17620,	-- Ashenvale Ambit Reverse: Silver
						17647,	-- Desolace Drift Reverse: Silver
						17629,	-- Durotar Tour Reverse: Silver
						17575,	-- Felwood Flyover Reverse: Silver
						17683,	-- Feralas Ruins Ramble Reverse: Silver
						17656,	-- Great Divide Dive Reverse: Silver
						17602,	-- Hyjal Hotfoot Reverse: Silver
						17593,	-- Nordrassil Spiral Reverse: Silver
						17665,	-- Razorfen Roundabout Reverse: Silver
						17611,	-- Rocketway Ride Reverse: Silver
						17674,	-- Thousand Needles Thread Reverse: Silver
						17701,	-- Uldum Tour Reverse: Silver
						17710,	-- Un'Goro Crater Circuit Reverse: Silver
						17638,	-- Webwinder Weave Reverse: Silver
						17584,	-- Winter Wander Reverse: Silver
					}},
				}),
				ach(17720, {	-- Kalimdor Reverse: Gold
					-- Meta Achievement
					["sym"] = {{"meta_achievement",
						17693,	-- Ahn'Qiraj Circuit Reverse: Gold
						17621,	-- Ashenvale Ambit Reverse: Gold
						17648,	-- Desolace Drift Reverse: Gold
						17630,	-- Durotar Tour Reverse: Gold
						17576,	-- Felwood Flyover Reverse: Gold
						17684,	-- Feralas Ruins Ramble Reverse: Gold
						17657,	-- Great Divide Dive Reverse: Gold
						17603,	-- Hyjal Hotfoot Reverse: Gold
						17594,	-- Nordrassil Spiral Reverse: Gold
						17666,	-- Razorfen Roundabout Reverse: Gold
						17612,	-- Rocketway Ride Reverse: Gold
						17675,	-- Thousand Needles Thread Reverse: Gold
						17702,	-- Uldum Tour Reverse: Gold
						17711,	-- Un'Goro Crater Circuit Reverse: Gold
						17639,	-- Webwinder Weave Reverse: Gold
						17585,	-- Winter Wander Reverse: Gold
					}},
				}),
				ach(17721, {	-- Kalimdor Racing Completionist
					-- Meta Achievement
					["sym"] = {{"meta_achievement",
						17712,	-- Kalimdor: Bronze
						17715,	-- Kalimdor Advanced: Bronze
						17718,	-- Kalimdor Reverse: Bronze
					}},
				}),
				ach(17722, {	-- Kalimdor Racing Completionist: Silver
					-- Meta Achievement
					["sym"] = {{"meta_achievement",
						17713,	-- Kalimdor: Silver
						17716,	-- Kalimdor Advanced: Silver
						17719,	-- Kalimdor Reverse: Silver
					}},
				}),
				ach(17723, {	-- Kalimdor Racing Completionist: Gold
					-- Meta Achievement
					["sym"] = {{"meta_achievement",
						17714,	-- Kalimdor: Gold
						17717,	-- Kalimdor Advanced: Gold
						17720,	-- Kalimdor Reverse: Gold
					}},
					["groups"] = {
						title(496),	-- Kalimdor Racer <Name>
					},
				}),
			}),
			n(QUESTS, {
				q(76429, {	-- The Kalimdor Cup Begins
					["provider"] = { "n", 199261 },	-- Holiday Enthusiast
					["coord"] = { 55.0, 37.7, VALDRAKKEN },
					["isBreadcrumb"] = true,
					["repeatable"] = true,
				}),
				q(79125, {	-- The Kalimdor Cup Begins
					["qgs"] = {
						214031,	-- Racing Enthusiast
						-- #if AFTER 11.1.0
						220307, -- Holiday Enthusiast
						-- #endif
					},
					["coords"] = {
						{ 61.8, 75.1, STORMWIND_CITY },
						-- #if AFTER 11.1.0
						{ 46.1, 55.0, DORNOGAL },
						-- #endif
					},
					["timeline"] = { ADDED_10_2_5 },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["repeatable"] = true,
				}),
				q(79126, {	-- The Kalimdor Cup Begins
					["provider"] = { "n", 213769 },	-- Racing Enthusiast
					["coord"] = { 52.8, 79.5, ORGRIMMAR },
					["timeline"] = { ADDED_10_2_5 },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
					["repeatable"] = true,
				}),
				q(76426, {	-- The Kalimdor Cup Circuit
					["sourceQuests"] = {
						-- #if BEFORE 10.2.5
						76429,	-- The Kalimdor Cup Begins
						-- #else
						76429, 79125, 79126	-- The Kalimdor Cup Begins
						-- #endif
					},
					["qgs"] = {
						206737,	-- Lord Andestrasz
						-- #if AFTER 11.1.0
						214111, -- Lord Andestrasz
						-- #endif
					},
					["coords"] = {
						{ 27.1, 47.1, VALDRAKKEN },
						-- #if AFTER 11.1.0
						{ 60.1, 66.2, STORMWIND_CITY },
						-- #endif
					},
					["repeatable"] = true,
					["groups"] = {
						currency(RIDERS_OF_AZEROTH_BADGE),
					},
				}),
				dragonridingrace(75472, {	-- Ahn'Qiraj Circuit
					["provider"] = { "n", 204092 },	-- Bronze Timekeeper
					["coord"] = { 39.6, 84.2, SILITHUS },
					["groups"] = {
						ach(17685),	-- Ahn'Qiraj Circuit: Bronze
						ach(17686),	-- Ahn'Qiraj Circuit: Silver
						ach(17687),	-- Ahn'Qiraj Circuit: Gold
					},
				}),
				dragonridingrace(75473, {	-- Ahn'Qiraj Circuit - Advanced
					["provider"] = { "n", 204092 },	-- Bronze Timekeeper
					["coord"] = { 39.6, 84.2, SILITHUS },
					["groups"] = {
						ach(17688),	-- Ahn'Qiraj Circuit Advanced: Bronze
						ach(17689),	-- Ahn'Qiraj Circuit Advanced: Silver
						ach(17690),	-- Ahn'Qiraj Circuit Advanced: Gold
					},
				}),
				dragonridingrace(75474, {	-- Ahn'Qiraj Circuit - Reverse
					["provider"] = { "n", 204092 },	-- Bronze Timekeeper
					["coord"] = { 39.6, 84.2, SILITHUS },
					["groups"] = {
						ach(17691),	-- Ahn'Qiraj Circuit Reverse: Bronze
						ach(17692),	-- Ahn'Qiraj Circuit Reverse: Silver
						ach(17693),	-- Ahn'Qiraj Circuit Reverse: Gold
					},
				}),
				dragonridingrace(75378, {	-- Ashenvale Ambit
					["provider"] = { "n", 203712 },	-- Bronze Timekeeper
					["coord"] = { 37.0, 30.6, ASHENVALE },
					["groups"] = {
						ach(17613),	-- Ashenvale Ambit: Bronze
						ach(17614),	-- Ashenvale Ambit: Silver
						ach(17615),	-- Ashenvale Ambit: Gold
					},
				}),
				dragonridingrace(75379, {	-- Ashenvale Ambit - Advanced
					["provider"] = { "n", 203712 },	-- Bronze Timekeeper
					["coord"] = { 37.0, 30.6, ASHENVALE },
					["groups"] = {
						ach(17616),	-- Ashenvale Ambit Advanced: Bronze
						ach(17617),	-- Ashenvale Ambit Advanced: Silver
						ach(17618),	-- Ashenvale Ambit Advanced: Gold
					},
				}),
				dragonridingrace(75380, {	-- Ashenvale Ambit - Reverse
					["provider"] = { "n", 203712 },	-- Bronze Timekeeper
					["coord"] = { 37.0, 30.6, ASHENVALE },
					["groups"] = {
						ach(17619),	-- Ashenvale Ambit Reverse: Bronze
						ach(17620),	-- Ashenvale Ambit Reverse: Silver
						ach(17621),	-- Ashenvale Ambit Reverse: Gold
					},
				}),
				dragonridingrace(75409, {	-- Desolace Drift
					["provider"] = { "n", 203788 },	-- Bronze Timekeeper
					["coord"] = { 28.1, 63.3, DESOLACE },
					["groups"] = {
						ach(17640),	-- Desolace Drift: Bronze
						ach(17641),	-- Desolace Drift: Silver
						ach(17642),	-- Desolace Drift: Gold
					},
				}),
				dragonridingrace(75410, {	-- Desolace Drift - Advanced
					["provider"] = { "n", 203788 },	-- Bronze Timekeeper
					["coord"] = { 28.1, 63.3, DESOLACE },
					["groups"] = {
						ach(17643),	-- Desolace Drift Advanced: Bronze
						ach(17644),	-- Desolace Drift Advanced: Silver
						ach(17645),	-- Desolace Drift Advanced: Gold
					},
				}),
				dragonridingrace(75411, {	-- Desolace Drift - Reverse
					["provider"] = { "n", 203788 },	-- Bronze Timekeeper
					["coord"] = { 28.1, 63.3, DESOLACE },
					["groups"] = {
						ach(17646),	-- Desolace Drift Reverse: Bronze
						ach(17647),	-- Desolace Drift Reverse: Silver
						ach(17648),	-- Desolace Drift Reverse: Gold
					},
				}),
				dragonridingrace(75385, {	-- Durotar Tour
					["provider"] = { "n", 203722 },	-- Bronze Timekeeper
					["coord"] = { 56.9, 62.9, DUROTAR },
					["groups"] = {
						ach(17622),	-- Durotar Tour: Bronze
						ach(17623),	-- Durotar Tour: Silver
						ach(17624),	-- Durotar Tour: Gold
					},
				}),
				dragonridingrace(75386, {	-- Durotar Tour - Advanced
					["provider"] = { "n", 203722 },	-- Bronze Timekeeper
					["coord"] = { 56.9, 62.9, DUROTAR },
					["groups"] = {
						ach(17625),	-- Durotar Tour Advanced: Bronze
						ach(17626),	-- Durotar Tour Advanced: Silver
						ach(17627),	-- Durotar Tour Advanced: Gold
					},
				}),
				dragonridingrace(75387, {	-- Durotar Tour - Reverse
					["provider"] = { "n", 203722 },	-- Bronze Timekeeper
					["coord"] = { 56.9, 62.9, DUROTAR },
					["groups"] = {
						ach(17628),	-- Durotar Tour Reverse: Bronze
						ach(17629),	-- Durotar Tour Reverse: Silver
						ach(17630),	-- Durotar Tour Reverse: Gold
					},
				}),
				dragonridingrace(75277, {	-- Felwood Flyover
					["provider"] = { "n", 203479 },	-- Bronze Timekeeper
					["coord"] = { 58.2, 10.8, FELWOOD },
					["groups"] = {
						ach(17568),	-- Felwood Flyover: Bronze
						ach(17569),	-- Felwood Flyover: Silver
						ach(17570),	-- Felwood Flyover: Gold
					},
				}),
				dragonridingrace(75293, {	-- Felwood Flyover - Advanced
					["provider"] = { "n", 203479 },	-- Bronze Timekeeper
					["coord"] = { 58.2, 10.8, FELWOOD },
					["groups"] = {
						ach(17571),	-- Felwood Flyover Advanced: Bronze
						ach(17572),	-- Felwood Flyover Advanced: Silver
						ach(17573),	-- Felwood Flyover Advanced: Gold
					},
				}),
				dragonridingrace(75294, {	-- Felwood Flyover - Reverse
					["provider"] = { "n", 203479 },	-- Bronze Timekeeper
					["coord"] = { 58.2, 10.8, FELWOOD },
					["groups"] = {
						ach(17574),	-- Felwood Flyover Reverse: Bronze
						ach(17575),	-- Felwood Flyover Reverse: Silver
						ach(17576),	-- Felwood Flyover Reverse: Gold
					},
				}),
				dragonridingrace(75468, {	-- Feralas Ruins Ramble
					["provider"] = { "n", 204080 },	-- Bronze Timekeeper
					["coord"] = { 64.1, 54.4, FERALAS },
					["groups"] = {
						ach(17676),	-- Feralas Ruins Ramble: Bronze
						ach(17677),	-- Feralas Ruins Ramble: Silver
						ach(17678),	-- Feralas Ruins Ramble: Gold
					},
				}),
				dragonridingrace(75469, {	-- Feralas Ruins Ramble - Advanced
					["provider"] = { "n", 204080 },	-- Bronze Timekeeper
					["coord"] = { 64.1, 54.4, FERALAS },
					["groups"] = {
						ach(17679),	-- Feralas Ruins Ramble Advanced: Bronze
						ach(17680),	-- Feralas Ruins Ramble Advanced: Silver
						ach(17681),	-- Feralas Ruins Ramble Advanced: Gold
					},
				}),
				dragonridingrace(75470, {	-- Feralas Ruins Ramble - Reverse
					["provider"] = { "n", 204080 },	-- Bronze Timekeeper
					["coord"] = { 64.1, 54.4, FERALAS },
					["groups"] = {
						ach(17682),	-- Feralas Ruins Ramble Reverse: Bronze
						ach(17683),	-- Feralas Ruins Ramble Reverse: Silver
						ach(17684),	-- Feralas Ruins Ramble Reverse: Gold
					},
				}),
				dragonridingrace(75412, {	-- Great Divide Dive
					["provider"] = { "n", 203793 },	-- Bronze Timekeeper
					["coord"] = { 41.4, 13.0, SOUTHERN_BARRENS },
					["groups"] = {
						ach(17649),	-- Great Divide Dive: Bronze
						ach(17650),	-- Great Divide Dive: Silver
						ach(17651),	-- Great Divide Dive: Gold
					},
				}),
				dragonridingrace(75413, {	-- Great Divide Dive - Advanced
					["provider"] = { "n", 203793 },	-- Bronze Timekeeper
					["coord"] = { 41.4, 13.0, SOUTHERN_BARRENS },
					["groups"] = {
						ach(17652),	-- Great Divide Dive Advanced: Bronze
						ach(17653),	-- Great Divide Dive Advanced: Silver
						ach(17654),	-- Great Divide Dive Advanced: Gold
					},
				}),
				dragonridingrace(75414, {	-- Great Divide Dive - Reverse
					["provider"] = { "n", 203793 },	-- Bronze Timekeeper
					["coord"] = { 41.4, 13.0, SOUTHERN_BARRENS },
					["groups"] = {
						ach(17655),	-- Great Divide Dive Reverse: Bronze
						ach(17656),	-- Great Divide Dive Reverse: Silver
						ach(17657),	-- Great Divide Dive Reverse: Gold
					},
				}),
				dragonridingrace(75330, {	-- Hyjal Hotfoot
					["provider"] = { "n", 203626 },	-- Bronze Timekeeper
					["coord"] = { 22.0, 54.3, MOUNT_HYJAL },
					["groups"] = {
						ach(17595),	-- Hyjal Hotfoot: Bronze
						ach(17596),	-- Hyjal Hotfoot: Silver
						ach(17597),	-- Hyjal Hotfoot: Gold
					},
				}),
				dragonridingrace(75331, {	-- Hyjal Hotfoot - Advanced
					["provider"] = { "n", 203626 },	-- Bronze Timekeeper
					["coord"] = { 22.0, 54.3, MOUNT_HYJAL },
					["groups"] = {
						ach(17598),	-- Hyjal Hotfoot Advanced: Bronze
						ach(17599),	-- Hyjal Hotfoot Advanced: Silver
						ach(17600),	-- Hyjal Hotfoot Advanced: Gold
					},
				}),
				dragonridingrace(75332, {	-- Hyjal Hotfoot - Reverse
					["provider"] = { "n", 203626 },	-- Bronze Timekeeper
					["coord"] = { 22.0, 54.3, MOUNT_HYJAL },
					["groups"] = {
						ach(17601),	-- Hyjal Hotfoot Reverse: Bronze
						ach(17602),	-- Hyjal Hotfoot Reverse: Silver
						ach(17603),	-- Hyjal Hotfoot Reverse: Gold
					},
				}),
				dragonridingrace(75317, {	-- Nordrassil Spiral
					["provider"] = { "n", 203617 },	-- Bronze Timekeeper
					["coord"] = { 56.7, 28.0, MOUNT_HYJAL },
					["groups"] = {
						ach(17586),	-- Nordrassil Spiral: Bronze
						ach(17587),	-- Nordrassil Spiral: Silver
						ach(17588),	-- Nordrassil Spiral: Gold
					},
				}),
				dragonridingrace(75318, {	-- Nordrassil Spiral - Advanced
					["provider"] = { "n", 203617 },	-- Bronze Timekeeper
					["coord"] = { 56.7, 28.0, MOUNT_HYJAL },
					["groups"] = {
						ach(17589),	-- Nordrassil Spiral Advanced: Bronze
						ach(17590),	-- Nordrassil Spiral Advanced: Silver
						ach(17591),	-- Nordrassil Spiral Advanced: Gold
					},
				}),
				dragonridingrace(75319, {	-- Nordrassil Spiral - Reverse
					["provider"] = { "n", 203617 },	-- Bronze Timekeeper
					["coord"] = { 56.7, 28.0, MOUNT_HYJAL },
					["groups"] = {
						ach(17592),	-- Nordrassil Spiral Reverse: Bronze
						ach(17593),	-- Nordrassil Spiral Reverse: Silver
						ach(17594),	-- Nordrassil Spiral Reverse: Gold
					},
				}),
				dragonridingrace(75437, {	-- Razorfen Roundabout
					["provider"] = { "n", 203908 },	-- Bronze Timekeeper
					["coord"] = { 42.8, 93.1, SOUTHERN_BARRENS },
					["groups"] = {
						ach(17658),	-- Razorfen Roundabout: Bronze
						ach(17659),	-- Razorfen Roundabout: Silver
						ach(17660),	-- Razorfen Roundabout: Gold
					},
				}),
				dragonridingrace(75438, {	-- Razorfen Roundabout - Advanced
					["provider"] = { "n", 203908 },	-- Bronze Timekeeper
					["coord"] = { 42.8, 93.1, SOUTHERN_BARRENS },
					["groups"] = {
						ach(17661),	-- Razorfen Roundabout Advanced: Bronze
						ach(17662),	-- Razorfen Roundabout Advanced: Silver
						ach(17663),	-- Razorfen Roundabout Advanced: Gold
					},
				}),
				dragonridingrace(75439, {	-- Razorfen Roundabout - Reverse
					["provider"] = { "n", 203908 },	-- Bronze Timekeeper
					["coord"] = { 42.8, 93.1, SOUTHERN_BARRENS },
					["groups"] = {
						ach(17664),	-- Razorfen Roundabout Reverse: Bronze
						ach(17665),	-- Razorfen Roundabout Reverse: Silver
						ach(17666),	-- Razorfen Roundabout Reverse: Gold
					},
				}),
				dragonridingrace(75347, {	-- Rocketway Ride
					["provider"] = { "n", 203657 },	-- Bronze Timekeeper
					["coord"] = { 67.2, 26.2, AZSHARA },
					["groups"] = {
						ach(17604),	-- Rocketway Ride: Bronze
						ach(17605),	-- Rocketway Ride: Silver
						ach(17606),	-- Rocketway Ride: Gold
					},
				}),
				dragonridingrace(75355, {	-- Rocketway Ride - Advanced
					["provider"] = { "n", 203657 },	-- Bronze Timekeeper
					["coord"] = { 67.2, 26.2, AZSHARA },
					["groups"] = {
						ach(17607),	-- Rocketway Ride Advanced: Bronze
						ach(17608),	-- Rocketway Ride Advanced: Silver
						ach(17609),	-- Rocketway Ride Advanced: Gold
					},
				}),
				dragonridingrace(75356, {	-- Rocketway Ride - Reverse
					["provider"] = { "n", 203657 },	-- Bronze Timekeeper
					["coord"] = { 67.2, 26.2, AZSHARA },
					["groups"] = {
						ach(17610),	-- Rocketway Ride Reverse: Bronze
						ach(17611),	-- Rocketway Ride Reverse: Silver
						ach(17612),	-- Rocketway Ride Reverse: Gold
					},
				}),
				dragonridingrace(75463, {	-- Thousand Needles Thread
					["provider"] = { "n", 204043 },	-- Bronze Timekeeper
					["coord"] = { 9.7, 17.3, THOUSAND_NEEDLES },
					["groups"] = {
						ach(17667),	-- Thousand Needles Thread: Bronze
						ach(17668),	-- Thousand Needles Thread: Silver
						ach(17669),	-- Thousand Needles Thread: Gold
					},
				}),
				dragonridingrace(75464, {	-- Thousand Needles Thread - Advanced
					["provider"] = { "n", 204043 },	-- Bronze Timekeeper
					["coord"] = { 9.7, 17.3, THOUSAND_NEEDLES },
					["groups"] = {
						ach(17670),	-- Thousand Needles Thread Advanced: Bronze
						ach(17671),	-- Thousand Needles Thread Advanced: Silver
						ach(17672),	-- Thousand Needles Thread Advanced: Gold
					},
				}),
				dragonridingrace(75465, {	-- Thousand Needles Thread - Reverse
					["provider"] = { "n", 204043 },	-- Bronze Timekeeper
					["coord"] = { 9.7, 17.3, THOUSAND_NEEDLES },
					["groups"] = {
						ach(17673),	-- Thousand Needles Thread Reverse: Bronze
						ach(17674),	-- Thousand Needles Thread Reverse: Silver
						ach(17675),	-- Thousand Needles Thread Reverse: Gold
					},
				}),
				dragonridingrace(75481, {	-- Uldum Tour
					["provider"] = { "n", 204128 },	-- Bronze Timekeeper
					["coord"] = { 55.8, 42.2, ULDUM },
					["groups"] = {
						ach(17694),	-- Uldum Tour: Bronze
						ach(17695),	-- Uldum Tour: Silver
						ach(17696),	-- Uldum Tour: Gold
					},
				}),
				dragonridingrace(75482, {	-- Uldum Tour - Advanced
					["provider"] = { "n", 204128 },	-- Bronze Timekeeper
					["coord"] = { 55.8, 42.2, ULDUM },
					["groups"] = {
						ach(17697),	-- Uldum Tour Advanced: Bronze
						ach(17698),	-- Uldum Tour Advanced: Silver
						ach(17699),	-- Uldum Tour Advanced: Gold
					},
				}),
				dragonridingrace(75483, {	-- Uldum Tour - Reverse
					["provider"] = { "n", 204128 },	-- Bronze Timekeeper
					["coord"] = { 55.8, 42.2, ULDUM },
					["groups"] = {
						ach(17700),	-- Uldum Tour Reverse: Bronze
						ach(17701),	-- Uldum Tour Reverse: Silver
						ach(17702),	-- Uldum Tour Reverse: Gold
					},
				}),
				dragonridingrace(75485, {	-- Un'Goro Crater Circuit
					["provider"] = { "n", 204146 },	-- Bronze Timekeeper
					["coord"] = { 53.4, 93.0, UNGORO_CRATER },
					["groups"] = {
						ach(17703),	-- Un'Goro Crater Circuit: Bronze
						ach(17704),	-- Un'Goro Crater Circuit: Silver
						ach(17705),	-- Un'Goro Crater Circuit: Gold
					},
				}),
				dragonridingrace(75486, {	-- Un'Goro Crater Circuit - Advanced
					["provider"] = { "n", 204146 },	-- Bronze Timekeeper
					["coord"] = { 53.4, 93.0, UNGORO_CRATER },
					["groups"] = {
						ach(17706),	-- Un'Goro Crater Circuit Advanced: Bronze
						ach(17707),	-- Un'Goro Crater Circuit Advanced: Silver
						ach(17708),	-- Un'Goro Crater Circuit Advanced: Gold
					},
				}),
				dragonridingrace(75487, {	-- Un'Goro Crater Circuit - Reverse
					["provider"] = { "n", 204146 },	-- Bronze Timekeeper
					["coord"] = { 53.4, 93.0, UNGORO_CRATER },
					["groups"] = {
						ach(17709),	-- Un'Goro Crater Circuit Reverse: Bronze
						ach(17710),	-- Un'Goro Crater Circuit Reverse: Silver
						ach(17711),	-- Un'Goro Crater Circuit Reverse: Gold
					},
				}),
				dragonridingrace(75394, {	-- Webwinder Weave
					["provider"] = { "n", 203735 },	-- Bronze Timekeeper
					["coord"] = { 66.8, 86.8, STONETALON_MOUNTAINS },
					["groups"] = {
						ach(17631),	-- Webwinder Weave: Bronze
						ach(17632),	-- Webwinder Weave: Silver
						ach(17633),	-- Webwinder Weave: Gold
					},
				}),
				dragonridingrace(75395, {	-- Webwinder Weave - Advanced
					["provider"] = { "n", 203735 },	-- Bronze Timekeeper
					["coord"] = { 66.8, 86.8, STONETALON_MOUNTAINS },
					["groups"] = {
						ach(17634),	-- Webwinder Weave Advanced: Bronze
						ach(17635),	-- Webwinder Weave Advanced: Silver
						ach(17636),	-- Webwinder Weave Advanced: Gold
					},
				}),
				dragonridingrace(75396, {	-- Webwinder Weave - Reverse
					["provider"] = { "n", 203735 },	-- Bronze Timekeeper
					["coord"] = { 66.8, 86.8, STONETALON_MOUNTAINS },
					["groups"] = {
						ach(17637),	-- Webwinder Weave Reverse: Bronze
						ach(17638),	-- Webwinder Weave Reverse: Silver
						ach(17639),	-- Webwinder Weave Reverse: Gold
					},
				}),
				dragonridingrace(75310, {	-- Winter Wander
					["provider"] = { "n", 203605 },	-- Bronze Timekeeper
					["coord"] = { 68.8, 68.0, WINTERSPRING },
					["groups"] = {
						ach(17577),	-- Winter Wander: Bronze
						ach(17578),	-- Winter Wander: Silver
						ach(17579),	-- Winter Wander: Gold
					},
				}),
				dragonridingrace(75311, {	-- Winter Wander - Advanced
					["provider"] = { "n", 203605 },	-- Bronze Timekeeper
					["coord"] = { 68.8, 68.0, WINTERSPRING },
					["groups"] = {
						ach(17580),	-- Winter Wander Advanced: Bronze
						ach(17581),	-- Winter Wander Advanced: Silver
						ach(17582),	-- Winter Wander Advanced: Gold
					},
				}),
				dragonridingrace(75312, {	-- Winter Wander - Reverse
					["provider"] = { "n", 203605 },	-- Bronze Timekeeper
					["coord"] = { 68.8, 68.0, WINTERSPRING },
					["groups"] = {
						ach(17583),	-- Winter Wander Reverse: Bronze
						ach(17584),	-- Winter Wander Reverse: Silver
						ach(17585),	-- Winter Wander Reverse: Gold
					},
				}),
			}),
			n(QUESTS, bubbleDown({ ["timeline"] = { CREATED_10_2_5 }, }, {	-- Timeline me when the time is right
				dragonridingrace(76061, {	-- Ahn'Qiraj Circuit - Challenge
					["provider"] = { "n", 204092 },	-- Bronze Timekeeper
					["coord"] = { 39.6, 84.2, SILITHUS },
					["groups"] = {
						ach(18339),	-- Ahn'Qiraj Circuit Challenge: Bronze
						ach(18340),	-- Ahn'Qiraj Circuit Challenge: Silver
						ach(18341),	-- Ahn'Qiraj Circuit Challenge: Gold
					},
				}),
				dragonridingrace(76062, {	-- Ahn'Qiraj Circuit - Reverse Challenge
					["provider"] = { "n", 204092 },	-- Bronze Timekeeper
					["coord"] = { 39.6, 84.2, SILITHUS },
					["groups"] = {
						ach(18342),	-- Ahn'Qiraj Circuit Reverse Challenge: Bronze
						ach(18343),	-- Ahn'Qiraj Circuit Reverse Challenge: Silver
						ach(18344),	-- Ahn'Qiraj Circuit Reverse Challenge: Gold
					},
				}),
				dragonridingrace(76045, {	-- Ashenvale Ambit - Challenge
					["provider"] = { "n", 203712 },	-- Bronze Timekeeper
					["coord"] = { 37.0, 30.6, ASHENVALE },
					["groups"] = {
						ach(18291),	-- Ashenvale Ambit Challenge: Bronze
						ach(18292),	-- Ashenvale Ambit Challenge: Silver
						ach(18293),	-- Ashenvale Ambit Challenge: Gold
					},
				}),
				dragonridingrace(76046, {	-- Ashenvale Ambit - Reverse Challenge
					["provider"] = { "n", 203712 },	-- Bronze Timekeeper
					["coord"] = { 37.0, 30.6, ASHENVALE },
					["groups"] = {
						ach(18294),	-- Ashenvale Ambit Reverse Challenge: Bronze
						ach(18295),	-- Ashenvale Ambit Reverse Challenge: Silver
						ach(18296),	-- Ashenvale Ambit Reverse Challenge: Gold
					},
				}),
				dragonridingrace(76051, {	-- Desolace Drift - Challenge
					["provider"] = { "n", 203788 },	-- Bronze Timekeeper
					["coord"] = { 28.1, 63.3, DESOLACE },
					["groups"] = {
						ach(18309),	-- Desolace Drift Challenge: Bronze
						ach(18310),	-- Desolace Drift Challenge: Silver
						ach(18311),	-- Desolace Drift Challenge: Gold
					},
				}),
				dragonridingrace(76052, {	-- Desolace Drift - Reverse Challenge
					["provider"] = { "n", 203788 },	-- Bronze Timekeeper
					["coord"] = { 28.1, 63.3, DESOLACE },
					["groups"] = {
						ach(18312),	-- Desolace Drift Reverse Challenge: Bronze
						ach(18313),	-- Desolace Drift Reverse Challenge: Silver
						ach(18314),	-- Desolace Drift Reverse Challenge: Gold
					},
				}),
				dragonridingrace(76047, {	-- Durotar Tour - Challenge
					["provider"] = { "n", 203722 },	-- Bronze Timekeeper
					["coord"] = { 56.9, 62.9, DUROTAR },
					["groups"] = {
						ach(18297),	-- Durotar Tour Challenge: Bronze
						ach(18298),	-- Durotar Tour Challenge: Silver
						ach(18299),	-- Durotar Tour Challenge: Gold
					},
				}),
				dragonridingrace(76048, {	-- Durotar Tour - Reverse Challenge
					["provider"] = { "n", 203722 },	-- Bronze Timekeeper
					["coord"] = { 56.9, 62.9, DUROTAR },
					["groups"] = {
						ach(18300),	-- Durotar Tour Reverse Challenge: Bronze
						ach(18301),	-- Durotar Tour Reverse Challenge: Silver
						ach(18302),	-- Durotar Tour Reverse Challenge: Gold
					},
				}),
				dragonridingrace(76033, {	-- Felwood Flyover - Challenge
					["provider"] = { "n", 203479 },	-- Bronze Timekeeper
					["coord"] = { 58.2, 10.8, FELWOOD },
					["groups"] = {
						ach(18259),	-- Felwood Flyover Challenge: Bronze
						ach(18260),	-- Felwood Flyover Challenge: Silver
						ach(18261),	-- Felwood Flyover Challenge: Gold
					},
				}),
				dragonridingrace(76034, {	-- Felwood Flyover - Reverse Challenge
					["provider"] = { "n", 203479 },	-- Bronze Timekeeper
					["coord"] = { 58.2, 10.8, FELWOOD },
					["groups"] = {
						ach(18262),	-- Felwood Flyover Reverse Challenge: Bronze
						ach(18263),	-- Felwood Flyover Reverse Challenge: Silver
						ach(18264),	-- Felwood Flyover Reverse Challenge: Gold
					},
				}),
				dragonridingrace(76059, {	-- Feralas Ruins Ramble - Challenge
					["provider"] = { "n", 204080 },	-- Bronze Timekeeper
					["coord"] = { 64.1, 54.4, FERALAS },
					["groups"] = {
						ach(18333),	-- Feralas Ruins Ramble Challenge: Bronze
						ach(18334),	-- Feralas Ruins Ramble Challenge: Silver
						ach(18335),	-- Feralas Ruins Ramble Challenge: Gold
					},
				}),
				dragonridingrace(76060, {	-- Feralas Ruins Ramble - Reverse Challenge
					["provider"] = { "n", 204080 },	-- Bronze Timekeeper
					["coord"] = { 64.1, 54.4, FERALAS },
					["groups"] = {
						ach(18336),	-- Feralas Ruins Ramble Reverse Challenge: Bronze
						ach(18337),	-- Feralas Ruins Ramble Reverse Challenge: Silver
						ach(18338),	-- Feralas Ruins Ramble Reverse Challenge: Gold
					},
				}),
				dragonridingrace(76053, {	-- Great Divide Dive - Challenge
					["provider"] = { "n", 203793 },	-- Bronze Timekeeper
					["coord"] = { 41.4, 13.0, SOUTHERN_BARRENS },
					["groups"] = {
						ach(18315),	-- Great Divide Dive Challenge: Bronze
						ach(18316),	-- Great Divide Dive Challenge: Silver
						ach(18317),	-- Great Divide Dive Challenge: Gold
					},
				}),
				dragonridingrace(76054, {	-- Great Divide Dive - Reverse Challenge
					["provider"] = { "n", 203793 },	-- Bronze Timekeeper
					["coord"] = { 41.4, 13.0, SOUTHERN_BARRENS },
					["groups"] = {
						ach(18318),	-- Great Divide Dive Reverse Challenge: Bronze
						ach(18319),	-- Great Divide Dive Reverse Challenge: Silver
						ach(18320),	-- Great Divide Dive Reverse Challenge: Gold
					},
				}),
				dragonridingrace(76041, {	-- Hyjal Hotfoot - Challenge
					["provider"] = { "n", 203626 },	-- Bronze Timekeeper
					["coord"] = { 22.0, 54.3, MOUNT_HYJAL },
					["groups"] = {
						ach(18278),	-- Hyjal Hotfoot Challenge: Bronze
						ach(18279),	-- Hyjal Hotfoot Challenge: Silver
						ach(18280),	-- Hyjal Hotfoot Challenge: Gold
					},
				}),
				dragonridingrace(76042, {	-- Hyjal Hotfoot - Reverse Challenge
					["provider"] = { "n", 203626 },	-- Bronze Timekeeper
					["coord"] = { 22.0, 54.3, MOUNT_HYJAL },
					["groups"] = {
						ach(18281),	-- Hyjal Hotfoot Reverse Challenge: Bronze
						ach(18282),	-- Hyjal Hotfoot Reverse Challenge: Silver
						ach(18283),	-- Hyjal Hotfoot Reverse Challenge: Gold
					},
				}),
				dragonridingrace(76037, {	-- Nordrassil Spiral - Challenge
					["provider"] = { "n", 203617 },	-- Bronze Timekeeper
					["coord"] = { 56.7, 28.0, MOUNT_HYJAL },
					["groups"] = {
						ach(18272),	-- Nordrassil Spiral Challenge: Bronze
						ach(18273),	-- Nordrassil Spiral Challenge: Silver
						ach(18274),	-- Nordrassil Spiral Challenge: Gold
					},
				}),
				dragonridingrace(76040, {	-- Nordrassil Spiral - Reverse Challenge
					["provider"] = { "n", 203617 },	-- Bronze Timekeeper
					["coord"] = { 56.7, 28.0, MOUNT_HYJAL },
					["groups"] = {
						ach(18275),	-- Nordrassil Spiral Reverse Challenge: Bronze
						ach(18276),	-- Nordrassil Spiral Reverse Challenge: Silver
						ach(18277),	-- Nordrassil Spiral Reverse Challenge: Gold
					},
				}),
				dragonridingrace(76055, {	-- Razorfen Roundabout - Challenge
					["provider"] = { "n", 203908 },	-- Bronze Timekeeper
					["coord"] = { 42.8, 93.1, SOUTHERN_BARRENS },
					["groups"] = {
						ach(18321),	-- Razorfen Roundabout Challenge: Bronze
						ach(18322),	-- Razorfen Roundabout Challenge: Silver
						ach(18323),	-- Razorfen Roundabout Challenge: Gold
					},
				}),
				dragonridingrace(76056, {	-- Razorfen Roundabout - Reverse Challenge
					["provider"] = { "n", 203908 },	-- Bronze Timekeeper
					["coord"] = { 42.8, 93.1, SOUTHERN_BARRENS },
					["groups"] = {
						ach(18324),	-- Razorfen Roundabout Reverse Challenge: Bronze
						ach(18325),	-- Razorfen Roundabout Reverse Challenge: Silver
						ach(18326),	-- Razorfen Roundabout Reverse Challenge: Gold
					},
				}),
				dragonridingrace(76043, {	-- Rocketway Ride - Challenge
					["provider"] = { "n", 203657 },	-- Bronze Timekeeper
					["coord"] = { 67.2, 26.2, AZSHARA },
					["groups"] = {
						ach(18285),	-- Rocketway Ride Challenge: Bronze
						ach(18286),	-- Rocketway Ride Challenge: Silver
						ach(18287),	-- Rocketway Ride Challenge: Gold
					},
				}),
				dragonridingrace(76044, {	-- Rocketway Ride - Reverse Challenge
					["provider"] = { "n", 203657 },	-- Bronze Timekeeper
					["coord"] = { 67.2, 26.2, AZSHARA },
					["groups"] = {
						ach(18288),	-- Rocketway Ride Reverse Challenge: Bronze
						ach(18289),	-- Rocketway Ride Reverse Challenge: Silver
						ach(18290),	-- Rocketway Ride Reverse Challenge: Gold
					},
				}),
				dragonridingrace(76057, {	-- Thousand Needles Thread - Challenge
					["provider"] = { "n", 204043 },	-- Bronze Timekeeper
					["coord"] = { 9.7, 17.3, THOUSAND_NEEDLES },
					["groups"] = {
						ach(18327),	-- Thousand Needles Thread Challenge: Bronze
						ach(18328),	-- Thousand Needles Thread Challenge: Silver
						ach(18329),	-- Thousand Needles Thread Challenge: Gold
					},
				}),
				dragonridingrace(76058, {	-- Thousand Needles Thread - Reverse Challenge
					["provider"] = { "n", 204043 },	-- Bronze Timekeeper
					["coord"] = { 9.7, 17.3, THOUSAND_NEEDLES },
					["groups"] = {
						ach(18330),	-- Thousand Needles Thread Reverse Challenge: Bronze
						ach(18331),	-- Thousand Needles Thread Reverse Challenge: Silver
						ach(18332),	-- Thousand Needles Thread Reverse Challenge: Gold
					},
				}),
				dragonridingrace(76063, {	-- Uldum Tour - Challenge
					["provider"] = { "n", 204128 },	-- Bronze Timekeeper
					["coord"] = { 55.8, 42.2, ULDUM },
					["groups"] = {
						ach(18345),	-- Uldum Tour Challenge: Bronze
						ach(18346),	-- Uldum Tour Challenge: Silver
						ach(18347),	-- Uldum Tour Challenge: Gold
					},
				}),
				dragonridingrace(76064, {	-- Uldum Tour - Reverse Challenge
					["provider"] = { "n", 204128 },	-- Bronze Timekeeper
					["coord"] = { 55.8, 42.2, ULDUM },
					["groups"] = {
						ach(18348),	-- Uldum Tour Reverse Challenge: Bronze
						ach(18349),	-- Uldum Tour Reverse Challenge: Silver
						ach(18350),	-- Uldum Tour Reverse Challenge: Gold
					},
				}),
				dragonridingrace(76065, {	-- Un'Goro Crater Circuit - Challenge
					["provider"] = { "n", 204146 },	-- Bronze Timekeeper
					["coord"] = { 53.4, 93.0, UNGORO_CRATER },
					["groups"] = {
						ach(18351),	-- Un'Goro Crater Circuit Challenge: Bronze
						ach(18352),	-- Un'Goro Crater Circuit Challenge: Silver
						ach(18353),	-- Un'Goro Crater Circuit Challenge: Gold
					},
				}),
				dragonridingrace(76066, {	-- Un'Goro Crater Circuit - Reverse Challenge
					["provider"] = { "n", 204146 },	-- Bronze Timekeeper
					["coord"] = { 53.4, 93.0, UNGORO_CRATER },
					["groups"] = {
						ach(18354),	-- Un'Goro Crater Circuit Reverse Challenge: Bronze
						ach(18355),	-- Un'Goro Crater Circuit Reverse Challenge: Silver
						ach(18356),	-- Un'Goro Crater Circuit Reverse Challenge: Gold
					},
				}),
				dragonridingrace(76049, {	-- Webwinder Weave - Challenge
					["provider"] = { "n", 203735 },	-- Bronze Timekeeper
					["coord"] = { 66.8, 86.8, STONETALON_MOUNTAINS },
					["groups"] = {
						ach(18303),	-- Webwinder Weave Challenge: Bronze
						ach(18304),	-- Webwinder Weave Challenge: Silver
						ach(18305),	-- Webwinder Weave Challenge: Gold
					},
				}),
				dragonridingrace(76050, {	-- Webwinder Weave - Reverse Challenge
					["provider"] = { "n", 203735 },	-- Bronze Timekeeper
					["coord"] = { 66.8, 86.8, STONETALON_MOUNTAINS },
					["groups"] = {
						ach(18306),	-- Webwinder Weave Reverse Challenge: Bronze
						ach(18307),	-- Webwinder Weave Reverse Challenge: Silver
						ach(18308),	-- Webwinder Weave Reverse Challenge: Gold
					},
				}),
				dragonridingrace(76035, {	-- Winter Wander - Challenge
					["provider"] = { "n", 203605 },	-- Bronze Timekeeper
					["coord"] = { 68.8, 68.0, WINTERSPRING },
					["groups"] = {
						ach(18265),	-- Winter Wander Challenge: Bronze
						ach(18266),	-- Winter Wander Challenge: Silver
						ach(18267),	-- Winter Wander Challenge: Gold
					},
				}),
				dragonridingrace(76036, {	-- Winter Wander - Reverse Challenge
					["provider"] = { "n", 203605 },	-- Bronze Timekeeper
					["coord"] = { 68.8, 68.0, WINTERSPRING },
					["groups"] = {
						ach(18268),	-- Winter Wander Reverse Challenge: Bronze
						ach(18269),	-- Winter Wander Reverse Challenge: Silver
						ach(18270),	-- Winter Wander Reverse Challenge: Gold
					},
				}),
			})),
			n(VENDORS, {
				n(206744, {	-- Maztha <Riders of Azeroth>
					["coord"] = { 27.2, 47.2, VALDRAKKEN },
					["groups"] = {
						-- Manuscripts
						i(203322, {	-- Winding Slitherdrake: Blonde Hair (MM!)
							["cost"] = { { "c", RIDERS_OF_AZEROTH_BADGE, 25 } },
						}),
						i(203349, {	-- Winding Slitherdrake: Curved Nose Horn (MM!)
							["cost"] = { { "c", RIDERS_OF_AZEROTH_BADGE, 25 } },
						}),
						i(197615, {	-- Windborne Velocidrake: Teal Scales (MM!)
							["cost"] = { { "c", RIDERS_OF_AZEROTH_BADGE, 50 } },
						}),
						-- Transmogs
						i(206592, {	-- Drake Racer's Belt
							["cost"] = { { "c", RIDERS_OF_AZEROTH_BADGE, 20 } },
						}),
						i(206594, {	-- Drake Racer's Boots
							["cost"] = { { "c", RIDERS_OF_AZEROTH_BADGE, 20 } },
						}),
						i(206591, {	-- Drake Racer's Handwraps
							["cost"] = { { "c", RIDERS_OF_AZEROTH_BADGE, 20 } },
						}),
						i(206588, {	-- Drake Racer's Helmet
							["cost"] = { { "c", RIDERS_OF_AZEROTH_BADGE, 20 } },
						}),
						i(206590, {	-- Drake Racer's Jersey
							["cost"] = { { "c", RIDERS_OF_AZEROTH_BADGE, 20 } },
						}),
						i(206593, {	-- Drake Racer's Leggings
							["cost"] = { { "c", RIDERS_OF_AZEROTH_BADGE, 20 } },
						}),
						i(206589, {	-- Drake Racer's Shoulderpads
							["cost"] = { { "c", RIDERS_OF_AZEROTH_BADGE, 20 } },
						}),
					},
				}),
			}),
		}))),
		applyevent(EVENTS.OUTLAND_CUP, n(OUTLAND_CUP_HEADER, bubbleDownSelf({ ["timeline"] = { ADDED_10_2_5 } }, {						-- Outland Cup
			n(ACHIEVEMENTS, {
				ach(19092, {	-- Outland: Bronze
					-- Meta Achievement
					["sym"] = {{"meta_achievement",
						18658,	-- Auchindoun Coaster: Bronze
						18617,	-- Blade's Edge Brawl: Bronze
						18603,	-- Coilfang Caper: Bronze
						18707,	-- Eco-Dome Excursion: Bronze
						18842,	-- Fel Pit Fracas: Bronze
						18580,	-- Hellfire Hustle: Bronze
						18649,	-- Razorthorn Rise Rush: Bronze
						18692,	-- Shadowmoon Slam: Bronze
						18679,	-- Shattrath City Sashay: Bronze
						18794,	-- Skettis Scramble: Bronze
						18626,	-- Telaar Tear: Bronze
						18667,	-- Tempest Keep Sweep: Bronze
						18739,	-- Warmaul Wingding: Bronze
					}},
				}),
				ach(19097, {	-- Outland: Silver
					-- Meta Achievement
					["sym"] = {{"meta_achievement",
						18659,	-- Auchindoun Coaster: Silver
						18618,	-- Blade's Edge Brawl: Silver
						18604,	-- Coilfang Caper: Silver
						18708,	-- Eco-Dome Excursion: Silver
						18843,	-- Fel Pit Fracas: Silver
						18581,	-- Hellfire Hustle: Silver
						18650,	-- Razorthorn Rise Rush: Silver
						18693,	-- Shadowmoon Slam: Silver
						18680,	-- Shattrath City Sashay: Silver
						18795,	-- Skettis Scramble: Silver
						18627,	-- Telaar Tear: Silver
						18668,	-- Tempest Keep Sweep: Silver
						18740,	-- Warmaul Wingding: Silver
					}},
				}),
				ach(19098, {	-- Outland: Gold
					-- Meta Achievement
					["sym"] = {{"meta_achievement",
						18660,	-- Auchindoun Coaster: Gold
						18619,	-- Blade's Edge Brawl: Gold
						18605,	-- Coilfang Caper: Gold
						18709,	-- Eco-Dome Excursion: Gold
						18844,	-- Fel Pit Fracas: Gold
						18582,	-- Hellfire Hustle: Gold
						18651,	-- Razorthorn Rise Rush: Gold
						18694,	-- Shadowmoon Slam: Gold
						18681,	-- Shattrath City Sashay: Gold
						18796,	-- Skettis Scramble: Gold
						18628,	-- Telaar Tear: Gold
						18669,	-- Tempest Keep Sweep: Gold
						18741,	-- Warmaul Wingding: Gold
					}},
				}),
				ach(19099, {	-- Outland Advanced: Bronze
					-- Meta Achievement
					["sym"] = {{"meta_achievement",
						18661,	-- Auchindoun Coaster Advanced: Bronze
						18620,	-- Blade's Edge Brawl Advanced: Bronze
						18606,	-- Coilfang Caper Advanced: Bronze
						18710,	-- Eco-Dome Excursion Advanced: Bronze
						18845,	-- Fel Pit Fracas Advanced: Bronze
						18583,	-- Hellfire Hustle Advanced: Bronze
						18652,	-- Razorthorn Rise Rush Advanced: Bronze
						18695,	-- Shadowmoon Slam Advanced: Bronze
						18682,	-- Shattrath City Sashay Advanced: Bronze
						18797,	-- Skettis Scramble Advanced: Bronze
						18629,	-- Telaar Tear Advanced: Bronze
						18670,	-- Tempest Keep Sweep Advanced: Bronze
						18742,	-- Warmaul Wingding Advanced: Bronze
					}},
				}),
				ach(19100, {	-- Outland Advanced: Silver
					-- Meta Achievement
					["sym"] = {{"meta_achievement",
						18662,	-- Auchindoun Coaster Advanced: Silver
						18621,	-- Blade's Edge Brawl Advanced: Silver
						18607,	-- Coilfang Caper Advanced: Silver
						18711,	-- Eco-Dome Excursion Advanced: Silver
						18846,	-- Fel Pit Fracas Advanced: Silver
						18584,	-- Hellfire Hustle Advanced: Silver
						18653,	-- Razorthorn Rise Rush Advanced: Silver
						18696,	-- Shadowmoon Slam Advanced: Silver
						18683,	-- Shattrath City Sashay Advanced: Silver
						18798,	-- Skettis Scramble Advanced: Silver
						18630,	-- Telaar Tear Advanced: Silver
						18671,	-- Tempest Keep Sweep Advanced: Silver
						18743,	-- Warmaul Wingding Advanced: Silver
					}},
				}),
				ach(19101, {	-- Outland Advanced: Gold
					-- Meta Achievement
					["sym"] = {{"meta_achievement",
						18663,	-- Auchindoun Coaster Advanced: Gold
						18622,	-- Blade's Edge Brawl Advanced: Gold
						18608,	-- Coilfang Caper Advanced: Gold
						18712,	-- Eco-Dome Excursion Advanced: Gold
						18847,	-- Fel Pit Fracas Advanced: Gold
						18585,	-- Hellfire Hustle Advanced: Gold
						18654,	-- Razorthorn Rise Rush Advanced: Gold
						18697,	-- Shadowmoon Slam Advanced: Gold
						18684,	-- Shattrath City Sashay Advanced: Gold
						18799,	-- Skettis Scramble Advanced: Gold
						18631,	-- Telaar Tear Advanced: Gold
						18672,	-- Tempest Keep Sweep Advanced: Gold
						18744,	-- Warmaul Wingding Advanced: Gold
					}},
				}),
				ach(19102, {	-- Outland Reverse: Bronze
					-- Meta Achievement
					["sym"] = {{"meta_achievement",
						18664,	-- Auchindoun Coaster Reverse: Bronze
						18623,	-- Blade's Edge Brawl Reverse: Bronze
						18609,	-- Coilfang Caper Reverse: Bronze
						18713,	-- Eco-Dome Excursion Reverse: Bronze
						18848,	-- Fel Pit Fracas Reverse: Bronze
						18586,	-- Hellfire Hustle Reverse: Bronze
						18655,	-- Razorthorn Rise Rush Reverse: Bronze
						18698,	-- Shadowmoon Slam Reverse: Bronze
						18685,	-- Shattrath City Sashay Reverse: Bronze
						18800,	-- Skettis Scramble Reverse: Bronze
						18632,	-- Telaar Tear Reverse: Bronze
						18673,	-- Tempest Keep Sweep Reverse: Bronze
						18745,	-- Warmaul Wingding Reverse: Bronze
					}},
				}),
				ach(19103, {	-- Outland Reverse: Silver
					-- Meta Achievement
					["sym"] = {{"meta_achievement",
						18665,	-- Auchindoun Coaster Reverse: Silver
						18624,	-- Blade's Edge Brawl Reverse: Silver
						18610,	-- Coilfang Caper Reverse: Silver
						18714,	-- Eco-Dome Excursion Reverse: Silver
						18849,	-- Fel Pit Fracas Reverse: Silver
						18587,	-- Hellfire Hustle Reverse: Silver
						18656,	-- Razorthorn Rise Rush Reverse: Silver
						18699,	-- Shadowmoon Slam Reverse: Silver
						18686,	-- Shattrath City Sashay Reverse: Silver
						18801,	-- Skettis Scramble Reverse: Silver
						18633,	-- Telaar Tear Reverse: Silver
						18674,	-- Tempest Keep Sweep Reverse: Silver
						18746,	-- Warmaul Wingding Reverse: Silver
					}},
				}),
				ach(19104, {	-- Outland Reverse: Gold
					-- Meta Achievement
					["sym"] = {{"meta_achievement",
						18666,	-- Auchindoun Coaster Reverse: Gold
						18625,	-- Blade's Edge Brawl Reverse: Gold
						18611,	-- Coilfang Caper Reverse: Gold
						18715,	-- Eco-Dome Excursion Reverse: Gold
						18850,	-- Fel Pit Fracas Reverse: Gold
						18588,	-- Hellfire Hustle Reverse: Gold
						18657,	-- Razorthorn Rise Rush Reverse: Gold
						18700,	-- Shadowmoon Slam Reverse: Gold
						18687,	-- Shattrath City Sashay Reverse: Gold
						18802,	-- Skettis Scramble Reverse: Gold
						18634,	-- Telaar Tear Reverse: Gold
						18675,	-- Tempest Keep Sweep Reverse: Gold
						18747,	-- Warmaul Wingding Reverse: Gold
					}},
				}),
				ach(19105, {	-- Outland Racing Completionist
					-- Meta Achievement
					["sym"] = {{"meta_achievement",
						19092,	-- Outland: Bronze
						19099,	-- Outland Advanced: Bronze
						19102,	-- Outland Reverse: Bronze
					}},
				}),
				ach(19106, {	-- Outland Racing Completionist: Silver
					-- Meta Achievement
					["sym"] = {{"meta_achievement",
						19097,	-- Outland: Silver
						19100,	-- Outland Advanced: Silver
						19103,	-- Outland Reverse: Silver
					}},
				}),
				ach(19107, {	-- Outland Racing Completionist: Gold
					-- Meta Achievement
					["sym"] = {{"meta_achievement",
						19098,	-- Outland: Gold
						19101,	-- Outland Advanced: Gold
						19104,	-- Outland Reverse: Gold
					}},
					["groups"] = {
						title(521),	-- Outland Racer <Name>
						i(211928),	-- Ruby Riders of Azeroth Tabard
					},
				}),
			}),
			n(QUESTS, {
				q(78040, {	-- The Outland Cup Begins
					["provider"] = { "n", 199261 },	-- Holiday Enthusiast
					["coord"] = { 31.5, 67.1, VALDRAKKEN },
					["isBreadcrumb"] = true,
					["repeatable"] = true,
				}),
				q(79127, {	-- The Outland Cup Begins
					["provider"] = { "n", 214031 },	-- Racing Enthusiast
					["coord"] = {61.8, 75.1, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["repeatable"] = true,
				}),
				q(79128, {	-- The Outland Cup Begins
					["provider"] = { "n", 213769 },	-- Racing Enthusiast
					["coord"] = { 52.8, 79.5, ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
					["repeatable"] = true,
				}),
				q(78047, {	-- The Outland Cup Circuit
					["sourceQuests"] = { 78040, 79127, 79128 },	-- The Outland Cup Begins
					["provider"] = { "n", 206737 },	-- Lord Andestrasz
					["coord"] = { 26.9, 47.4, VALDRAKKEN },
					["repeatable"] = true,
					["groups"] = {
						currency(RIDERS_OF_AZEROTH_BADGE),
					},
				}),
				dragonridingrace(77264, {	-- Auchindoun Coaster
					["provider"] = { "n", 208596 },	-- Bronze Timekeeper
					["coord"] = { 42.2, 67.9, TEROKKAR_FOREST },
					["groups"] = {
						ach(18658),	-- Auchindoun Coaster: Bronze
						ach(18659),	-- Auchindoun Coaster: Silver
						ach(18660),	-- Auchindoun Coaster: Gold
					},
				}),
				dragonridingrace(77265, {	-- Auchindoun Coaster - Advanced
					["provider"] = { "n", 208596 },	-- Bronze Timekeeper
					["coord"] = { 42.2, 67.9, TEROKKAR_FOREST },
					["groups"] = {
						ach(18661),	-- Auchindoun Coaster Advanced: Bronze
						ach(18662),	-- Auchindoun Coaster Advanced: Silver
						ach(18663),	-- Auchindoun Coaster Advanced: Gold
					},
				}),
				dragonridingrace(77266, {	-- Auchindoun Coaster - Reverse
					["provider"] = { "n", 208596 },	-- Bronze Timekeeper
					["coord"] = { 42.2, 67.9, TEROKKAR_FOREST },
					["groups"] = {
						ach(18664),	-- Auchindoun Coaster Reverse: Bronze
						ach(18665),	-- Auchindoun Coaster Reverse: Silver
						ach(18666),	-- Auchindoun Coaster Reverse: Gold
					},
				}),
				dragonridingrace(77205, {	-- Blade's Edge Brawl
					["provider"] = { "n", 208488 },	-- Bronze Timekeeper
					["coord"] = { 61.0, 27.6, BLADES_EDGE_MOUNTAINS },
					["groups"] = {
						ach(18617),	-- Blade's Edge Brawl: Bronze
						ach(18618),	-- Blade's Edge Brawl: Silver
						ach(18619),	-- Blade's Edge Brawl: Gold
					},
				}),
				dragonridingrace(77206, {	-- Blade's Edge Brawl - Advanced
					["provider"] = { "n", 208488 },	-- Bronze Timekeeper
					["coord"] = { 61.0, 27.6, BLADES_EDGE_MOUNTAINS },
					["groups"] = {
						ach(18620),	-- Blade's Edge Brawl Advanced: Bronze
						ach(18621),	-- Blade's Edge Brawl Advanced: Silver
						ach(18622),	-- Blade's Edge Brawl Advanced: Gold
					},
				}),
				dragonridingrace(77207, {	-- Blade's Edge Brawl - Reverse
					["provider"] = { "n", 208488 },	-- Bronze Timekeeper
					["coord"] = { 61.0, 27.6, BLADES_EDGE_MOUNTAINS },
					["groups"] = {
						ach(18623),	-- Blade's Edge Brawl Reverse: Bronze
						ach(18624),	-- Blade's Edge Brawl Reverse: Silver
						ach(18625),	-- Blade's Edge Brawl Reverse: Gold
					},
				}),
				dragonridingrace(77169, {	-- Coilfang Caper
					["provider"] = { "n", 208318 },	-- Bronze Timekeeper
					["coord"] = { 37.0, 37.2, ZANGARMARSH },
					["groups"] = {
						ach(18603),	-- Coilfang Caper: Bronze
						ach(18604),	-- Coilfang Caper: Silver
						ach(18605),	-- Coilfang Caper: Gold
					},
				}),
				dragonridingrace(77170, {	-- Coilfang Caper - Advanced
					["provider"] = { "n", 208318 },	-- Bronze Timekeeper
					["coord"] = { 37.0, 37.2, ZANGARMARSH },
					["groups"] = {
						ach(18606),	-- Coilfang Caper Advanced: Bronze
						ach(18607),	-- Coilfang Caper Advanced: Silver
						ach(18608),	-- Coilfang Caper Advanced: Gold
					},
				}),
				dragonridingrace(77171, {	-- Coilfang Caper - Reverse
					["provider"] = { "n", 208318 },	-- Bronze Timekeeper
					["coord"] = { 37.0, 37.2, ZANGARMARSH },
					["groups"] = {
						ach(18609),	-- Coilfang Caper Reverse: Bronze
						ach(18610),	-- Coilfang Caper Reverse: Silver
						ach(18611),	-- Coilfang Caper Reverse: Gold
					},
				}),
				dragonridingrace(77398, {	-- Eco-Dome Excursion
					["provider"] = { "n", 208803 },	-- Bronze Timekeeper
					["coord"] = { 50.9, 41.7, NETHERSTORM },
					["groups"] = {
						ach(18707),	-- Eco-Dome Excursion: Bronze
						ach(18708),	-- Eco-Dome Excursion: Silver
						ach(18709),	-- Eco-Dome Excursion: Gold
					},
				}),
				dragonridingrace(77399, {	-- Eco-Dome Excursion - Advanced
					["provider"] = { "n", 208803 },	-- Bronze Timekeeper
					["coord"] = { 50.9, 41.7, NETHERSTORM },
					["groups"] = {
						ach(18710),	-- Eco-Dome Excursion Advanced: Bronze
						ach(18711),	-- Eco-Dome Excursion Advanced: Silver
						ach(18712),	-- Eco-Dome Excursion Advanced: Gold
					},
				}),
				dragonridingrace(77400, {	-- Eco-Dome Excursion - Reverse
					["provider"] = { "n", 208803 },	-- Bronze Timekeeper
					["coord"] = { 50.9, 41.7, NETHERSTORM },
					["groups"] = {
						ach(18713),	-- Eco-Dome Excursion Reverse: Bronze
						ach(18714),	-- Eco-Dome Excursion Reverse: Silver
						ach(18715),	-- Eco-Dome Excursion Reverse: Gold
					},
				}),
				dragonridingrace(77684, {	-- Fel Pit Fracas
					["provider"] = { "n", 209424 },	-- Bronze Timekeeper
					["coord"] = { 51.0, 40.1, SHADOWMOON_VALLEY },
					["groups"] = {
						ach(18842),	-- Fel Pit Fracas: Bronze
						ach(18843),	-- Fel Pit Fracas: Silver
						ach(18844),	-- Fel Pit Fracas: Gold
					},
				}),
				dragonridingrace(77685, {	-- Fel Pit Fracas - Advanced
					["provider"] = { "n", 209424 },	-- Bronze Timekeeper
					["coord"] = { 51.0, 40.1, SHADOWMOON_VALLEY },
					["groups"] = {
						ach(18845),	-- Fel Pit Fracas Advanced: Bronze
						ach(18846),	-- Fel Pit Fracas Advanced: Silver
						ach(18847),	-- Fel Pit Fracas Advanced: Gold
					},
				}),
				dragonridingrace(77686, {	-- Fel Pit Fracas - Reverse
					["provider"] = { "n", 209424 },	-- Bronze Timekeeper
					["coord"] = { 51.0, 40.1, SHADOWMOON_VALLEY },
					["groups"] = {
						ach(18848),	-- Fel Pit Fracas Reverse: Bronze
						ach(18849),	-- Fel Pit Fracas Reverse: Silver
						ach(18850),	-- Fel Pit Fracas Reverse: Gold
					},
				}),
				dragonridingrace(77102, {	-- Hellfire Hustle
					["provider"] = { "n", 208246 },	-- Bronze Timekeeper
					["coord"] = { 75.4, 44.3, HELLFIRE_PENINSULA },
					["groups"] = {
						ach(18580),	-- Hellfire Hustle: Bronze
						ach(18581),	-- Hellfire Hustle: Silver
						ach(18582),	-- Hellfire Hustle: Gold
					},
				}),
				dragonridingrace(77103, {	-- Hellfire Hustle - Advanced
					["provider"] = { "n", 208246 },	-- Bronze Timekeeper
					["coord"] = { 75.4, 44.3, HELLFIRE_PENINSULA },
					["groups"] = {
						ach(18583),	-- Hellfire Hustle Advanced: Bronze
						ach(18584),	-- Hellfire Hustle Advanced: Silver
						ach(18585),	-- Hellfire Hustle Advanced: Gold
					},
				}),
				dragonridingrace(77104, {	-- Hellfire Hustle - Reverse
					["provider"] = { "n", 208246 },	-- Bronze Timekeeper
					["coord"] = { 75.4, 44.3, HELLFIRE_PENINSULA },
					["groups"] = {
						ach(18586),	-- Hellfire Hustle Reverse: Bronze
						ach(18587),	-- Hellfire Hustle Reverse: Silver
						ach(18588),	-- Hellfire Hustle Reverse: Gold
					},
				}),
				dragonridingrace(77260, {	-- Razorthorn Rise Rush
					["provider"] = { "n", 208576 },	-- Bronze Timekeeper
					["coord"] = { 59.9, 4.9, TEROKKAR_FOREST },
					["groups"] = {
						ach(18649),	-- Razorthorn Rise Rush: Bronze
						ach(18650),	-- Razorthorn Rise Rush: Silver
						ach(18651),	-- Razorthorn Rise Rush: Gold
					},
				}),
				dragonridingrace(77261, {	-- Razorthorn Rise Rush - Advanced
					["provider"] = { "n", 208576 },	-- Bronze Timekeeper
					["coord"] = { 59.9, 4.9, TEROKKAR_FOREST },
					["groups"] = {
						ach(18652),	-- Razorthorn Rise Rush Advanced: Bronze
						ach(18653),	-- Razorthorn Rise Rush Advanced: Silver
						ach(18654),	-- Razorthorn Rise Rush Advanced: Gold
					},
				}),
				dragonridingrace(77262, {	-- Razorthorn Rise Rush - Reverse
					["provider"] = { "n", 208576 },	-- Bronze Timekeeper
					["coord"] = { 59.9, 4.9, TEROKKAR_FOREST },
					["groups"] = {
						ach(18655),	-- Razorthorn Rise Rush Reverse: Bronze
						ach(18656),	-- Razorthorn Rise Rush Reverse: Silver
						ach(18657),	-- Razorthorn Rise Rush Reverse: Gold
					},
				}),
				dragonridingrace(77346, {	-- Shadowmoon Slam
					["provider"] = { "n", 208748 },	-- Bronze Timekeeper
					["coord"] = { 61.8, 48.2, SHADOWMOON_VALLEY},
					["groups"] = {
						ach(18692),	-- Shadowmoon Slam: Bronze
						ach(18693),	-- Shadowmoon Slam: Silver
						ach(18694),	-- Shadowmoon Slam: Gold
					},
				}),
				dragonridingrace(77347, {	-- Shadowmoon Slam - Advanced
					["provider"] = { "n", 208748 },	-- Bronze Timekeeper
					["coord"] = { 61.8, 48.2, SHADOWMOON_VALLEY},
					["groups"] = {
						ach(18695),	-- Shadowmoon Slam Advanced: Bronze
						ach(18696),	-- Shadowmoon Slam Advanced: Silver
						ach(18697),	-- Shadowmoon Slam Advanced: Gold
					},
				}),
				dragonridingrace(77348, {	-- Shadowmoon Slam - Reverse
					["provider"] = { "n", 208748 },	-- Bronze Timekeeper
					["coord"] = { 61.8, 48.2, SHADOWMOON_VALLEY},
					["groups"] = {
						ach(18698),	-- Shadowmoon Slam Reverse: Bronze
						ach(18699),	-- Shadowmoon Slam Reverse: Silver
						ach(18700),	-- Shadowmoon Slam Reverse: Gold
					},
				}),
				dragonridingrace(77322, {	-- Shattrath City Sashay
					["provider"] = { "n", 208673 },	-- Bronze Timekeeper
					["coord"] = { 71.6, 70.1, SHATTRATH_CITY },
					["groups"] = {
						ach(18679),	-- Shattrath City Sashay: Bronze
						ach(18680),	-- Shattrath City Sashay: Silver
						ach(18681),	-- Shattrath City Sashay: Gold
					},
				}),
				dragonridingrace(77323, {	-- Shattrath City Sashay - Advanced
					["provider"] = { "n", 208673 },	-- Bronze Timekeeper
					["coord"] = { 71.6, 70.1, SHATTRATH_CITY },
					["groups"] = {
						ach(18682),	-- Shattrath City Sashay Advanced: Bronze
						ach(18683),	-- Shattrath City Sashay Advanced: Silver
						ach(18684),	-- Shattrath City Sashay Advanced: Gold
					},
				}),
				dragonridingrace(77324, {	-- Shattrath City Sashay - Reverse
					["provider"] = { "n", 208673 },	-- Bronze Timekeeper
					["coord"] = { 71.6, 70.1, SHATTRATH_CITY },
					["groups"] = {
						ach(18685),	-- Shattrath City Sashay Reverse: Bronze
						ach(18686),	-- Shattrath City Sashay Reverse: Silver
						ach(18687),	-- Shattrath City Sashay Reverse: Gold
					},
				}),
				dragonridingrace(77645, {	-- Skettis Scramble
					["provider"] = { "n", 209234 },	-- Bronze Timekeeper
					["coord"] = { 67.1, 65.9, TEROKKAR_FOREST },
					["groups"] = {
						ach(18794),	-- Skettis Scramble: Bronze
						ach(18795),	-- Skettis Scramble: Silver
						ach(18796),	-- Skettis Scramble: Gold
					},
				}),
				dragonridingrace(77646, {	-- Skettis Scramble - Advanced
					["provider"] = { "n", 209234 },	-- Bronze Timekeeper
					["coord"] = { 67.1, 65.9, TEROKKAR_FOREST },
					["groups"] = {
						ach(18797),	-- Skettis Scramble Advanced: Bronze
						ach(18798),	-- Skettis Scramble Advanced: Silver
						ach(18799),	-- Skettis Scramble Advanced: Gold
					},
				}),
				dragonridingrace(77647, {	-- Skettis Scramble - Reverse
					["provider"] = { "n", 209234 },	-- Bronze Timekeeper
					["coord"] = { 67.1, 65.9, TEROKKAR_FOREST },
					["groups"] = {
						ach(18800),	-- Skettis Scramble Reverse: Bronze
						ach(18801),	-- Skettis Scramble Reverse: Silver
						ach(18802),	-- Skettis Scramble Reverse: Gold
					},
				}),
				dragonridingrace(77238, {	-- Telaar Tear
					["provider"] = { "n", 208540 },	-- Bronze Timekeeper
					["coord"] = { 58.3, 75.8, NAGRAND },
					["groups"] = {
						ach(18626),	-- Telaar Tear: Bronze
						ach(18627),	-- Telaar Tear: Silver
						ach(18628),	-- Telaar Tear: Gold
					},
				}),
				dragonridingrace(77239, {	-- Telaar Tear - Advanced
					["provider"] = { "n", 208540 },	-- Bronze Timekeeper
					["coord"] = { 58.3, 75.8, NAGRAND },
					["groups"] = {
						ach(18629),	-- Telaar Tear Advanced: Bronze
						ach(18630),	-- Telaar Tear Advanced: Silver
						ach(18631),	-- Telaar Tear Advanced: Gold
					},
				}),
				dragonridingrace(77240, {	-- Telaar Tear - Reverse
					["provider"] = { "n", 208540 },	-- Bronze Timekeeper
					["coord"] = { 58.3, 75.8, NAGRAND },
					["groups"] = {
						ach(18632),	-- Telaar Tear Reverse: Bronze
						ach(18633),	-- Telaar Tear Reverse: Silver
						ach(18634),	-- Telaar Tear Reverse: Gold
					},
				}),
				dragonridingrace(77278, {	-- Tempest Keep Sweep
					["provider"] = { "n", 208625 },	-- Bronze Timekeeper
					["coord"] = { 68.9, 47.7, NETHERSTORM },
					["groups"] = {
						ach(18667),	-- Tempest Keep Sweep: Bronze
						ach(18668),	-- Tempest Keep Sweep: Silver
						ach(18669),	-- Tempest Keep Sweep: Gold
					},
				}),
				dragonridingrace(77279, {	-- Tempest Keep Sweep - Advanced
					["provider"] = { "n", 208625 },	-- Bronze Timekeeper
					["coord"] = { 68.9, 47.7, NETHERSTORM },
					["groups"] = {
						ach(18670),	-- Tempest Keep Sweep Advanced: Bronze
						ach(18671),	-- Tempest Keep Sweep Advanced: Silver
						ach(18672),	-- Tempest Keep Sweep Advanced: Gold
					},
				}),
				dragonridingrace(77280, {	-- Tempest Keep Sweep - Reverse
					["provider"] = { "n", 208625 },	-- Bronze Timekeeper
					["coord"] = { 68.9, 47.7, NETHERSTORM },
					["groups"] = {
						ach(18673),	-- Tempest Keep Sweep Reverse: Bronze
						ach(18674),	-- Tempest Keep Sweep Reverse: Silver
						ach(18675),	-- Tempest Keep Sweep Reverse: Gold
					},
				}),
				dragonridingrace(77589, {	-- Warmaul Wingding
					["provider"] = { "n", 209150 },	-- Bronze Timekeeper
					["coord"] = { 29.5, 24.9, NAGRAND },
					["groups"] = {
						ach(18739),	-- Warmaul Wingding: Bronze
						ach(18740),	-- Warmaul Wingding: Silver
						ach(18741),	-- Warmaul Wingding: Gold
					},
				}),
				dragonridingrace(77591, {	-- Warmaul Wingding - Advanced
					["provider"] = { "n", 209150 },	-- Bronze Timekeeper
					["coord"] = { 29.5, 24.9, NAGRAND },
					["groups"] = {
						ach(18742),	-- Warmaul Wingding Advanced: Bronze
						ach(18743),	-- Warmaul Wingding Advanced: Silver
						ach(18744),	-- Warmaul Wingding Advanced: Gold
					},
				}),
				dragonridingrace(77593, {	-- Warmaul Wingding - Reverse
					["provider"] = { "n", 209150 },	-- Bronze Timekeeper
					["coord"] = { 29.5, 24.9, NAGRAND },
					["groups"] = {
						ach(18745),	-- Warmaul Wingding Reverse: Bronze
						ach(18746),	-- Warmaul Wingding Reverse: Silver
						ach(18747),	-- Warmaul Wingding Reverse: Gold
					},
				}),
			}),
			n(VENDORS, {
				n(206744, bubbleDown({ ["timeline"] = { ADDED_10_2_5 } }, {	-- Maztha <Riders of Azeroth>
					["coord"] = { 27.2, 47.2, VALDRAKKEN },
					["groups"] = {
						-- Manuscripts
						i(197017, {	-- Cliffside Wylderdrake: Large Tail Spikes (MM!)
							["cost"] = { { "c", RIDERS_OF_AZEROTH_BADGE, 25 } },
						}),
						i(197113, {	-- Highland Drake: Swept Spiked Head (MM!)
							["cost"] = { { "c", RIDERS_OF_AZEROTH_BADGE, 25 } },
						}),
						i(197366, {	-- Renewed Proto-Drake: Dual Horned Crest (MM!)
							["cost"] = { { "c", RIDERS_OF_AZEROTH_BADGE, 25 } },
						}),
						i(197605, {	-- Windborne Velocidrake: Curled Horns (MM!)
							["cost"] = { { "c", RIDERS_OF_AZEROTH_BADGE, 25 } },
						}),
						-- Toy
						i(212518, {	-- Vial of Endless Daconic Scales (TOY!)
							["cost"] = { { "c", RIDERS_OF_AZEROTH_BADGE, 50 } },
						}),
						-- Transmogs
						i(211877, {	-- Drake Racer's Scarf
							["cost"] = { { "c", RIDERS_OF_AZEROTH_BADGE, 5 } },
						}),
						i(211885, {	-- Outlandish Drake Racer's Belt
							["cost"] = { { "c", RIDERS_OF_AZEROTH_BADGE, 15 } },
						}),
						i(211887, {	-- Outlandish Drake Racer's Boots
							["cost"] = { { "c", RIDERS_OF_AZEROTH_BADGE, 15 } },
						}),
						i(211884, {	-- Outlandish Drake Racer's Handwraps
							["cost"] = { { "c", RIDERS_OF_AZEROTH_BADGE, 15 } },
						}),
						i(211881, {	-- Outlandish Drake Racer's Helmet
							["cost"] = { { "c", RIDERS_OF_AZEROTH_BADGE, 15 } },
						}),
						i(211883, {	-- Outlandish Drake Racer's Jersey
							["cost"] = { { "c", RIDERS_OF_AZEROTH_BADGE, 15 } },
						}),
						i(211886, {	-- Outlandish Drake Racer's Leggings
							["cost"] = { { "c", RIDERS_OF_AZEROTH_BADGE, 15 } },
						}),
						i(211888, {	-- Outlandish  Drake Racer's Scarf
							["cost"] = { { "c", RIDERS_OF_AZEROTH_BADGE, 5 } },
						}),
						i(211882, {	-- Outlandish Drake Racer's Shoulderpads
							["cost"] = { { "c", RIDERS_OF_AZEROTH_BADGE, 15 } },
						}),
					},
				})),
			}),
		}))),
		applyevent(EVENTS.NORTHREND_CUP, n(NORTHREND_CUP_HEADER, bubbleDownSelf({ ["timeline"] = { ADDED_10_2_6 } }, {					-- Northrend Cup
			n(ACHIEVEMENTS, {
				ach(19674, {	-- Northrend: Bronze
					-- Meta Achievement
					["sym"] = {{"meta_achievement",
						19582,	-- Blackriver Burble: Bronze
						19627,	-- Citadel Sortie: Bronze
						19665,	-- Coldarra Climb: Bronze
						19609,	-- Crystalsong Crisis: Bronze
						19277,	-- Daggercap Dart: Bronze
						19618,	-- Dragonblight Dragon Flight: Bronze
						19647,	-- Geothermal Jaunt: Bronze
						19656,	-- Gundrak Fast Track: Bronze
						19600,	-- Makers Marathon: Bronze
						19199, -- Scalawag Slither: Bronze
						19636,	-- Sholazar Spree: Bronze
						19591,	-- Zul'Drak Zephyr: Bronze
					}},
				}),
				ach(19675, {	-- Northrend: Silver
					-- Meta Achievement
					["sym"] = {{"meta_achievement",
						19583,	-- Blackriver Burble: Silver
						19628,	-- Citadel Sortie: Silver
						19666,	-- Coldarra Climb: Silver
						19610,	-- Crystalsong Crisis: Silver
						19278,	-- Daggercap Dart: Silver
						19619,	-- Dragonblight Dragon Flight: Silver
						19648,	-- Geothermal Jaunt: Silver
						19657,	-- Gundrak Fast Track: Silver
						19601,	-- Makers Marathon: Silver
						19200,	-- Scalawag Slither: Silver
						19637,	-- Sholazar Spree: Silver
						19592,	-- Zul'Drak Zephyr: Silver
					}},
				}),
				ach(19676, {	-- Northrend: Gold
					-- Meta Achievement
					["sym"] = {{"meta_achievement",
						19584,	-- Blackriver Burble: Gold
						19629,	-- Citadel Sortie: Gold
						19667,	-- Coldarra Climb: Gold
						19611,	-- Crystalsong Crisis: Gold
						19279,	-- Daggercap Dart: Gold
						19620,	-- Dragonblight Dragon Flight: Gold
						19649,	-- Geothermal Jaunt: Gold
						19658,	-- Gundrak Fast Track: Gold
						19602,	-- Makers Marathon: Gold
						19201,	-- Scalawag Slither: Gold
						19638,	-- Sholazar Spree: Gold
						19593,	-- Zul'Drak Zephyr: Gold
					}},
				}),
				ach(19677, {	-- Northrend Advanced: Bronze
					-- Meta Achievement
					["sym"] = {{"meta_achievement",
						19585,	-- Blackriver Burble Advanced: Bronze
						19630,	-- Citadel Sortie Advanced: Bronze
						19668,	-- Coldarra Climb Advanced: Bronze
						19612,	-- Crystalsong Crisis Advanced: Bronze
						19280,	-- Daggercap Dart Advanced: Bronze
						19621,	-- Dragonblight Dragon Flight Advanced: Bronze
						19650,	-- Geothermal Jaunt Advanced: Bronze
						19659,	-- Gundrak Fast Track Advanced: Bronze
						19603,	-- Makers Marathon Advanced: Bronze
						19202,	-- Scalawag Slither Advanced: Bronze
						19639,	-- Sholazar Spree Advanced: Bronze
						19594,	-- Zul'Drak Zephyr Advanced: Bronze
					}},
				}),
				ach(19679, {	-- Northrend Advanced: Silver
					-- Meta Achievement
					["sym"] = {{"meta_achievement",
						19586,	-- Blackriver Burble Advanced: Silver
						19631,	-- Citadel Sortie Advanced: Silver
						19669,	-- Coldarra Climb Advanced: Silver
						19613,	-- Crystalsong Crisis Advanced: Silver
						19281,	-- Daggercap Dart Advanced: Silver
						19622,	-- Dragonblight Dragon Flight Advanced: Silver
						19651,	-- Geothermal Jaunt Advanced: Silver
						19660,	-- Gundrak Fast Track Advanced: Silver
						19604,	-- Makers Marathon Advanced: Silver
						19203,	-- Scalawag Slither Advanced: Silver
						19640,	-- Sholazar Spree Advanced: Silver
						19595,	-- Zul'Drak Zephyr Advanced: Silver
					}},
				}),
				ach(19681, {	-- Northrend Advanced: Gold
					-- Meta Achievement
					["sym"] = {{"meta_achievement",
						19587,	-- Blackriver Burble Advanced: Gold
						19632,	-- Citadel Sortie Advanced: Gold
						19670,	-- Coldarra Climb Advanced: Gold
						19614,	-- Crystalsong Crisis Advanced: Gold
						19282,	-- Daggercap Dart Advanced: Gold
						19623,	-- Dragonblight Dragon Flight Advanced: Gold
						19652,	-- Geothermal Jaunt Advanced: Gold
						19661,	-- Gundrak Fast Track Advanced: Gold
						19605,	-- Makers Marathon Advanced: Gold
						19204,	-- Scalawag Slither Advanced: Gold
						19641,	-- Sholazar Spree Advanced: Gold
						19596,	-- Zul'Drak Zephyr Advanced: Gold
					}},
				}),
				ach(19682, {	-- Northrend Reverse: Bronze
					-- Meta Achievement
					["sym"] = {{"meta_achievement",
						19588,	-- Blackriver Burble Reverse: Bronze
						19633,	-- Citadel Sortie Reverse: Bronze
						19671,	-- Coldarra Climb Reverse: Bronze
						19615,	-- Crystalsong Crisis Reverse: Bronze
						19283,	-- Daggercap Dart Reverse: Bronze
						19624,	-- Dragonblight Dragon Flight Reverse: Bronze
						19653,	-- Geothermal Jaunt Reverse: Bronze
						19662,	-- Gundrak Fast Track Reverse: Bronze
						19606,	-- Makers Marathon Reverse: Bronze
						19205,	-- Scalawag Slither Reverse: Bronze
						19642,	-- Sholazar Spree Reverse: Bronze
						19597,	-- Zul'Drak Zephyr Reverse: Bronze
					}},
				}),
				ach(19683, {	-- Northrend Reverse: Silver
					-- Meta Achievement
					["sym"] = {{"meta_achievement",
						19589,	-- Blackriver Burble Reverse: Silver
						19634,	-- Citadel Sortie Reverse: Silver
						19672,	-- Coldarra Climb Reverse: Silver
						19616,	-- Crystalsong Crisis Reverse: Silver
						19284,	-- Daggercap Dart Reverse: Silver
						19625,	-- Dragonblight Dragon Flight Reverse: Silver
						19654,	-- Geothermal Jaunt Reverse: Silver
						19663,	-- Gundrak Fast Track Reverse: Silver
						19607,	-- Makers Marathon Reverse: Silver
						19206,	-- Scalawag Slither Reverse: Silver
						19643,	-- Sholazar Spree Reverse: Silver
						19598,	-- Zul'Drak Zephyr Reverse: Silver
					}},
				}),
				ach(19684, {	-- Northrend Reverse: Gold
					-- Meta Achievement
					["sym"] = {{"meta_achievement",
						19590,	-- Blackriver Burble Reverse: Gold
						19635,	-- Citadel Sortie Reverse: Gold
						19673,	-- Coldarra Climb Reverse: Gold
						19617,	-- Crystalsong Crisis Reverse: Gold
						19285,	-- Daggercap Dart Reverse: Gold
						19626,	-- Dragonblight Dragon Flight Reverse: Gold
						19655,	-- Geothermal Jaunt Reverse: Gold
						19664,	-- Gundrak Fast Track Reverse: Gold
						19608,	-- Makers Marathon Reverse: Gold
						19207,	-- Scalawag Slither Reverse: Gold
						19644,	-- Sholazar Spree Reverse: Gold
						19599,	-- Zul'Drak Zephyr Reverse: Gold
					}},
				}),
				ach(19721, {	-- Northrend Racing Completionist
					-- Meta Achievement
					["sym"] = {{"meta_achievement",
						19674,	-- Northrend: Bronze
						19677,	-- Northrend Advanced: Bronze
						19682,	-- Northrend Reverse: Bronze
					}},
				}),
				ach(19722, {	-- Northrend Racing Completionist: Silver
					-- Meta Achievement
					["sym"] = {{"meta_achievement",
						19675,	-- Northrend: Silver
						19679,	-- Northrend Advanced: Silver
						19683,	-- Northrend Reverse: Silver
					}},
				}),
				ach(19723, {	-- Northrend Racing Completionist: Gold
					-- Meta Achievement
					["sym"] = {{"meta_achievement",
						19676,	-- Northrend: Gold
						19681,	-- Northrend Advanced: Gold
						19684,	-- Northrend Reverse: Gold
					}},
					["groups"] = {
						title(540),	-- Northrend Racer <Name>
						i(213593),	-- Frosted Riders of Azeroth Tabard
					},
				}),
			}),
			n(QUESTS, {
				q(79131, {	-- The Northrend Cup Begins
					["provider"] = { "n", 199261 },	-- Holiday Enthusiast
					["coord"] = { 31.5, 67.1, VALDRAKKEN },
					["isBreadcrumb"] = true,
					["repeatable"] = true,
				}),
				q(79132, {	-- The Northrend Cup Begins
					["provider"] = { "n", 214031 },	-- Racing Enthusiast
					["coord"] = { 61.8, 75.1, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["repeatable"] = true,
				}),
				q(79133, {	-- The Northrend Cup Begins
					["provider"] = { "n", 213769 },	-- Racing Enthusiast
					["coord"] = { 52.8, 79.5, ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
					["repeatable"] = true,
				}),
				q(79130, {	-- The Northrend Cup Circuit
					["sourceQuests"] = { 79131, 79132, 79133 },	-- The Outland Cup Begins
					["provider"] = { "n", 206737 },	-- Lord Andestrasz
					["coord"] = { 26.9, 47.4, VALDRAKKEN },
					["repeatable"] = true,
					["groups"] = {
						currency(RIDERS_OF_AZEROTH_BADGE),
					},
				}),
				dragonridingrace(78334, {	-- Blackriver Burble
					["provider"] = { "n", 211940 },	-- Bronze Timekeeper
					["coord"] = { 44.6, 43.3, GRIZZLY_HILLS },
					["groups"] = {
						ach(19582),	-- Blackriver Burble: Bronze
						ach(19583),	-- Blackriver Burble: Silver
						ach(19584),	-- Blackriver Burble: Gold
					},
				}),
				dragonridingrace(78335, {	-- Blackriver Burble - Advanced
					["provider"] = { "n", 211940 },	-- Bronze Timekeeper
					["coord"] = { 44.6, 43.3, GRIZZLY_HILLS },
					["groups"] = {
						ach(19585),	-- Blackriver Burble Advanced: Bronze
						ach(19586),	-- Blackriver Burble Advanced: Silver
						ach(19587),	-- Blackriver Burble Advanced: Gold
					},
				}),
				dragonridingrace(78336, {	-- Blackriver Burble - Reverse
					["provider"] = { "n", 211940 },	-- Bronze Timekeeper
					["coord"] = { 44.6, 43.3, GRIZZLY_HILLS },
					["groups"] = {
						ach(19588),	-- Blackriver Burble Reverse: Bronze
						ach(19589),	-- Blackriver Burble Reverse: Silver
						ach(19590),	-- Blackriver Burble Reverse: Gold
					},
				}),
				dragonridingrace(78499, {	-- Citadel Sortie
					["provider"] = { "n", 212418 },	-- Bronze Timekeeper
					["coord"] = { 51.7, 91.0, ICECROWN },
					["groups"] = {
						ach(19627),	-- Citadel Sortie: Bronze
						ach(19628),	-- Citadel Sortie: Silver
						ach(19629),	-- Citadel Sortie: Gold
					},
				}),
				dragonridingrace(78500, {	-- Citadel Sortie - Advanced
					["provider"] = { "n", 212418 },	-- Bronze Timekeeper
					["coord"] = { 51.7, 91.0, ICECROWN },
					["groups"] = {
						ach(19630),	-- Citadel Sortie Advanced: Bronze
						ach(19631),	-- Citadel Sortie Advanced: Silver
						ach(19632),	-- Citadel Sortie Advanced: Gold
					},
				}),
				dragonridingrace(78501, {	-- Citadel Sortie - Reverse
					["provider"] = { "n", 212418 },	-- Bronze Timekeeper
					["coord"] = { 51.7, 91.0, ICECROWN },
					["groups"] = {
						ach(19633),	-- Citadel Sortie Reverse: Bronze
						ach(19634),	-- Citadel Sortie Reverse: Silver
						ach(19635),	-- Citadel Sortie Reverse: Gold
					},
				}),
				dragonridingrace(79272, {	-- Coldarra Climb
					["provider"] = { "n", 215825 },	-- Bronze Timekeeper
					["coord"] = { 32.2, 24.0, BOREAN_TUNDRA },
					["groups"] = {
						ach(19665),	-- Coldarra Climb: Bronze
						ach(19666),	-- Coldarra Climb: Silver
						ach(19667),	-- Coldarra Climb: Gold
					},
				}),
				dragonridingrace(79273, {	-- Coldarra Climb - Advanced
					["provider"] = { "n", 215825 },	-- Bronze Timekeeper
					["coord"] = { 32.2, 24.0, BOREAN_TUNDRA },
					["groups"] = {
						ach(19668),	-- Coldarra Climb Advanced: Bronze
						ach(19669),	-- Coldarra Climb Advanced: Silver
						ach(19670),	-- Coldarra Climb Advanced: Gold
					},
				}),
				dragonridingrace(79274, {	-- Coldarra Climb - Reverse
					["provider"] = { "n", 215825 },	-- Bronze Timekeeper
					["coord"] = { 32.2, 24.0, BOREAN_TUNDRA },
					["groups"] = {
						ach(19671),	-- Coldarra Climb Reverse: Bronze
						ach(19672),	-- Coldarra Climb Reverse: Silver
						ach(19673),	-- Coldarra Climb Reverse: Gold
					},
				}),
				dragonridingrace(78441, {	-- Crystalsong Crisis
					["provider"] = { "n", 212193 },	-- Bronze Timekeeper
					["coord"] = { 91.4, 70.6, CRYSTALSONG_FOREST },
					["groups"] = {
						ach(19609),	-- Crystalsong Crisis: Bronze
						ach(19610),	-- Crystalsong Crisis: Silver
						ach(19611),	-- Crystalsong Crisis: Gold
					},
				}),
				dragonridingrace(78442, {	-- Crystalsong Crisis - Advanced
					["provider"] = { "n", 212193 },	-- Bronze Timekeeper
					["coord"] = { 91.4, 70.6, CRYSTALSONG_FOREST },
					["groups"] = {
						ach(19612),	-- Crystalsong Crisis Advanced: Bronze
						ach(19613),	-- Crystalsong Crisis Advanced: Silver
						ach(19614),	-- Crystalsong Crisis Advanced: Gold
					},
				}),
				dragonridingrace(78443, {	-- Crystalsong Crisis - Reverse
					["provider"] = { "n", 212193 },	-- Bronze Timekeeper
					["coord"] = { 91.4, 70.6, CRYSTALSONG_FOREST },
					["groups"] = {
						ach(19615),	-- Crystalsong Crisis Reverse: Bronze
						ach(19616),	-- Crystalsong Crisis Reverse: Silver
						ach(19617),	-- Crystalsong Crisis Reverse: Gold
					},
				}),
				dragonridingrace(78325, {	-- Daggercap Dart
					["provider"] = { "n", 211886 },	-- Bronze Timekeeper
					["coord"] = { 57.8, 49.2, HOWLING_FJORD },
					["groups"] = {
						ach(19277),	-- Daggercap Dart: Bronze
						ach(19278),	-- Daggercap Dart: Silver
						ach(19279),	-- Daggercap Dart: Gold
					},
				}),
				dragonridingrace(78326, {	-- Daggercap Dart - Advanced
					["provider"] = { "n", 211886 },	-- Bronze Timekeeper
					["coord"] = { 57.8, 49.2, HOWLING_FJORD },
					["groups"] = {
						ach(19280),	-- Daggercap Dart Advanced: Bronze
						ach(19281),	-- Daggercap Dart Advanced: Silver
						ach(19282),	-- Daggercap Dart Advanced: Gold
					},
				}),
				dragonridingrace(78327, {	-- Daggercap Dart - Reverse
					["provider"] = { "n", 211886 },	-- Bronze Timekeeper
					["coord"] = { 57.8, 49.2, HOWLING_FJORD },
					["groups"] = {
						ach(19283),	-- Daggercap Dart Reverse: Bronze
						ach(19284),	-- Daggercap Dart Reverse: Silver
						ach(19285),	-- Daggercap Dart Reverse: Gold
					},
				}),
				dragonridingrace(78454, {	-- Dragonblight Dragon Flight
					["provider"] = { "n", 212250 },	-- Bronze Timekeeper
					["coord"] = { 62.3, 11.8, DRAGONBLIGHT },
					["groups"] = {
						ach(19618),	-- Dragonblight Dragon Flight: Bronze
						ach(19619),	-- Dragonblight Dragon Flight: Silver
						ach(19620),	-- Dragonblight Dragon Flight: Gold
					},
				}),
				dragonridingrace(78455, {	-- Dragonblight Dragon Flight - Advanced
					["provider"] = { "n", 212250 },	-- Bronze Timekeeper
					["coord"] = { 62.3, 11.8, DRAGONBLIGHT },
					["groups"] = {
						ach(19621),	-- Dragonblight Dragon Flight Advanced: Bronze
						ach(19622),	-- Dragonblight Dragon Flight Advanced: Silver
						ach(19623),	-- Dragonblight Dragon Flight Advanced: Gold
					},
				}),
				dragonridingrace(78456, {	-- Dragonblight Dragon Flight - Reverse
					["provider"] = { "n", 212250 },	-- Bronze Timekeeper
					["coord"] = { 62.3, 11.8, DRAGONBLIGHT },
					["groups"] = {
						ach(19624),	-- Dragonblight Dragon Flight Reverse: Bronze
						ach(19625),	-- Dragonblight Dragon Flight Reverse: Silver
						ach(19626),	-- Dragonblight Dragon Flight Reverse: Gold
					},
				}),
				dragonridingrace(78608, {	-- Geothermal Jaunt
					["provider"] = { "n", 213086 },	-- Bronze Timekeeper
					["coord"] = { 54.1, 15.4, BOREAN_TUNDRA },
					["groups"] = {
						ach(19647),	-- Geothermal Jaunt: Bronze
						ach(19648),	-- Geothermal Jaunt: Silver
						ach(19649),	-- Geothermal Jaunt: Gold
					},
				}),
				dragonridingrace(78609, {	-- Geothermal Jaunt - Advanced
					["provider"] = { "n", 213086 },	-- Bronze Timekeeper
					["coord"] = { 54.1, 15.4, BOREAN_TUNDRA },
					["groups"] = {
						ach(19650),	-- Geothermal Jaunt Advanced: Bronze
						ach(19651),	-- Geothermal Jaunt Advanced: Silver
						ach(19652),	-- Geothermal Jaunt Advanced: Gold
					},
				}),
				dragonridingrace(78610, {	-- Geothermal Jaunt - Reverse
					["provider"] = { "n", 213086 },	-- Bronze Timekeeper
					["coord"] = { 54.1, 15.4, BOREAN_TUNDRA },
					["groups"] = {
						ach(19653),	-- Geothermal Jaunt Reverse: Bronze
						ach(19654),	-- Geothermal Jaunt Reverse: Silver
						ach(19655),	-- Geothermal Jaunt Reverse: Gold
					},
				}),
				dragonridingrace(79268, {	-- Gundrak Fast Track
					["provider"] = { "n", 215795 },	-- Bronze Timekeeper
					["coord"] = { 83.6, 17.3, ZULDRAK },
					["groups"] = {
						ach(19656),	-- Gundrak Fast Track: Bronze
						ach(19657),	-- Gundrak Fast Track: Silver
						ach(19658),	-- Gundrak Fast Track: Gold
					},
				}),
				dragonridingrace(79269, {	-- Gundrak Fast Track - Advanced
					["provider"] = { "n", 215795 },	-- Bronze Timekeeper
					["coord"] = { 83.6, 17.3, ZULDRAK },
					["groups"] = {
						ach(19659),	-- Gundrak Fast Track Advanced: Bronze
						ach(19660),	-- Gundrak Fast Track Advanced: Silver
						ach(19661),	-- Gundrak Fast Track Advanced: Gold
					},
				}),
				dragonridingrace(79270, {	-- Gundrak Fast Track - Reverse
					["provider"] = { "n", 215795 },	-- Bronze Timekeeper
					["coord"] = { 83.6, 17.3, ZULDRAK },
					["groups"] = {
						ach(19662),	-- Gundrak Fast Track Reverse: Bronze
						ach(19663),	-- Gundrak Fast Track Reverse: Silver
						ach(19664),	-- Gundrak Fast Track Reverse: Gold
					},
				}),
				dragonridingrace(78389, {	-- Makers Marathon
					["provider"] = { "n", 212118 },	-- Bronze Timekeeper
					["coord"] = { 46.9, 21.9, THE_STORM_PEAKS },
					["groups"] = {
						ach(19600),	-- Makers Marathon: Bronze
						ach(19601),	-- Makers Marathon: Silver
						ach(19602),	-- Makers Marathon: Gold
					},
				}),
				dragonridingrace(78390, {	-- Makers Marathon - Advanced
					["provider"] = { "n", 212118 },	-- Bronze Timekeeper
					["coord"] = { 46.9, 21.9, THE_STORM_PEAKS },
					["groups"] = {
						ach(19603),	-- Makers Marathon Advanced: Bronze
						ach(19604),	-- Makers Marathon Advanced: Silver
						ach(19605),	-- Makers Marathon Advanced: Gold
					},
				}),
				dragonridingrace(78391, {	-- Makers Marathon - Reverse
					["provider"] = { "n", 212118 },	-- Bronze Timekeeper
					["coord"] = { 46.9, 21.9, THE_STORM_PEAKS },
					["groups"] = {
						ach(19606),	-- Makers Marathon Reverse: Bronze
						ach(19607),	-- Makers Marathon Reverse: Silver
						ach(19608),	-- Makers Marathon Reverse: Gold
					},
				}),
				dragonridingrace(78301, {	-- Scalawag Slither
					["provider"] = { "n", 211762 },	-- Bronze Timekeeper
					["coord"] = { 41.9, 67.9, HOWLING_FJORD },
					["groups"] = {
						ach(19199),	-- Scalawag Slither: Bronze
						ach(19200),	-- Scalawag Slither: Silver
						ach(19201),	-- Scalawag Slither: Gold
					},
				}),
				dragonridingrace(78302, {	-- Scalawag Slither - Advanced
					["provider"] = { "n", 211762 },	-- Bronze Timekeeper
					["coord"] = { 41.9, 67.9, HOWLING_FJORD },
					["groups"] = {
						ach(19202),	-- Scalawag Slither Advanced: Bronze
						ach(19203),	-- Scalawag Slither Advanced: Silver
						ach(19204),	-- Scalawag Slither Advanced: Gold
					},
				}),
				dragonridingrace(78303, {	-- Scalawag Slither - Reverse
					["provider"] = { "n", 211762 },	-- Bronze Timekeeper
					["coord"] = { 41.9, 67.9, HOWLING_FJORD },
					["groups"] = {
						ach(19205),	-- Scalawag Slither Reverse: Bronze
						ach(19206),	-- Scalawag Slither Reverse: Silver
						ach(19207),	-- Scalawag Slither Reverse: Gold
					},
				}),
				dragonridingrace(78558, {	-- Sholazar Spree
					["provider"] = { "n", 212666 },	-- Bronze Timekeeper
					["coord"] = { 79.4, 54.5, SHOLAZAR_BASIN },
					["groups"] = {
						ach(19636),	-- Sholazar Spree: Bronze
						ach(19637),	-- Sholazar Spree: Silver
						ach(19638),	-- Sholazar Spree: Gold
					},
				}),
				dragonridingrace(78559, {	-- Sholazar Spree - Advanced
					["provider"] = { "n", 212666 },	-- Bronze Timekeeper
					["coord"] = { 79.4, 54.5, SHOLAZAR_BASIN },
					["groups"] = {
						ach(19639),	-- Sholazar Spree Advanced: Bronze
						ach(19640),	-- Sholazar Spree Advanced: Silver
						ach(19641),	-- Sholazar Spree Advanced: Gold
					},
				}),
				dragonridingrace(78560, {	-- Sholazar Spree - Reverse
					["provider"] = { "n", 212666 },	-- Bronze Timekeeper
					["coord"] = { 79.4, 54.5, SHOLAZAR_BASIN },
					["groups"] = {
						ach(19642),	-- Sholazar Spree Reverse: Bronze
						ach(19643),	-- Sholazar Spree Reverse: Silver
						ach(19644),	-- Sholazar Spree Reverse: Gold
					},
				}),
				dragonridingrace(78346, {	-- Zul'Drak Zephyr
					["provider"] = { "n", 212003 },	-- Bronze Timekeeper
					["coord"] = { 40.1, 39.5, ZULDRAK },
					["groups"] = {
						ach(19591),	-- Zul'Drak Zephyr: Bronze
						ach(19592),	-- Zul'Drak Zephyr: Silver
						ach(19593),	-- Zul'Drak Zephyr: Gold
					},
				}),
				dragonridingrace(78347, {	-- Zul'Drak Zephyr - Advanced
					["provider"] = { "n", 212003 },	-- Bronze Timekeeper
					["coord"] = { 40.1, 39.5, ZULDRAK },
					["groups"] = {
						ach(19594),	-- Zul'Drak Zephyr Advanced: Bronze
						ach(19595),	-- Zul'Drak Zephyr Advanced: Silver
						ach(19596),	-- Zul'Drak Zephyr Advanced: Gold
					},
				}),
				dragonridingrace(78349, {	-- Zul'Drak Zephyr - Reverse
					["provider"] = { "n", 212003 },	-- Bronze Timekeeper
					["coord"] = { 40.1, 39.5, ZULDRAK },
					["groups"] = {
						ach(19597),	-- Zul'Drak Zephyr Reverse: Bronze
						ach(19598),	-- Zul'Drak Zephyr Reverse: Silver
						ach(19599),	-- Zul'Drak Zephyr Reverse: Gold
					},
				}),
			}),
			n(VENDORS, {
				n(206744, bubbleDown({ ["timeline"] = { ADDED_10_2_6 } }, {	-- Maztha <Riders of Azeroth>
					["coord"] = { 27.2, 47.2, VALDRAKKEN },
					["groups"] = {
						-- Manuscripts (repeated from Outland Cup)
						i(197017, {	-- Cliffside Wylderdrake: Large Tail Spikes (MM!)
							["cost"] = { { "c", RIDERS_OF_AZEROTH_BADGE, 25 } },
						}),
						i(197113, {	-- Highland Drake: Swept Spiked Head (MM!)
							["cost"] = { { "c", RIDERS_OF_AZEROTH_BADGE, 25 } },
						}),
						i(197366, {	-- Renewed Proto-Drake: Dual Horned Crest (MM!)
							["cost"] = { { "c", RIDERS_OF_AZEROTH_BADGE, 25 } },
						}),
						i(197605, {	-- Windborne Velocidrake: Curled Horns (MM!)
							["cost"] = { { "c", RIDERS_OF_AZEROTH_BADGE, 25 } },
						}),
						-- Toy (repeated from Outland Cup)
						i(212518, {	-- Vial of Endless Daconic Scales (TOY!)
							["cost"] = { { "c", RIDERS_OF_AZEROTH_BADGE, 50 } },
						}),
						-- Transmogs
						i(213635, {	-- Checkered Pennant
							["cost"] = { { "c", RIDERS_OF_AZEROTH_BADGE, 25 } },
						}),
						i(213585, {	-- Icy Drake Racer's Scarf
							["cost"] = { { "c", RIDERS_OF_AZEROTH_BADGE, 5 } },
						}),
						i(213586, {	-- Icy Drake Racer's Boots
							["cost"] = { { "c", RIDERS_OF_AZEROTH_BADGE, 15 } },
						}),
						i(213587, {	-- Icy Drake Racer's Leggings
							["cost"] = { { "c", RIDERS_OF_AZEROTH_BADGE, 15 } },
						}),
						i(213588, {	-- Icy Drake Racer's Belt
							["cost"] = { { "c", RIDERS_OF_AZEROTH_BADGE, 15 } },
						}),
						i(213589, {	-- Icy Drake Racer's Handwraps
							["cost"] = { { "c", RIDERS_OF_AZEROTH_BADGE, 15 } },
						}),
						i(213590, {	-- Icy Drake Racer's Jersey
							["cost"] = { { "c", RIDERS_OF_AZEROTH_BADGE, 15 } },
						}),
						i(213591, {	-- Icy Drake Racer's Shoulderpads
							["cost"] = { { "c", RIDERS_OF_AZEROTH_BADGE, 15 } },
						}),
						i(213592, {	-- Icy Drake Racer's Helmet
							["cost"] = { { "c", RIDERS_OF_AZEROTH_BADGE, 15 } },
						}),
						-- These were never mentioned in the Blizzard articles but also exist on the vendor (Zaralek Cavern, Forbidden Reach and Emerald Dream pouch rewards)
						i(197002, {	-- Cliffside Wylderdrake: Flared Cheek (MM!)
							["cost"] = { { "c", RIDERS_OF_AZEROTH_BADGE, 25 } },
						}),
						i(207768, {	-- Grotto Netherwing Drake: Volatile Pattern (MM!)
							["cost"] = { { "c", RIDERS_OF_AZEROTH_BADGE, 25 } },
						}),
						i(197124, {	-- Highland Drake: Swept Horns (MM!)
							["cost"] = { { "c", RIDERS_OF_AZEROTH_BADGE, 25 } },
						}),
						i(202274, {	-- Renewed Proto-Drake: Plated Brow (MM!)
							["cost"] = { { "c", RIDERS_OF_AZEROTH_BADGE, 25 } },
						}),
						i(197594, {	-- Windborne Velocidrake: Small Ears (MM!)
							["cost"] = { { "c", RIDERS_OF_AZEROTH_BADGE, 25 } },
						}),
						i(203348, {	-- Winding Slitherdrake: Pointed Nose (MM!)
							["cost"] = { { "c", RIDERS_OF_AZEROTH_BADGE, 25 } },
						}),
					},
				})),
			}),
		}))),
		n(ACHIEVEMENTS, {
			currency(RIDERS_OF_AZEROTH_BADGE, {
				["description"] = "For each achievement in the Dragonriding Cup players earn one badge, with up to 9 badges available per race track by obtaining gold in all three courses.",
			}),
		}),
		n(VENDORS, {
			n(212027, {	-- Dathendrash  <Riders of Azeroth>
				["coords"] = {
					{ 59.8, 66.2, STORMWIND_CITY },
					{ 52.0, 60.0, ORGRIMMAR },
				},
				["timeline"] = { ADDED_10_2_5 },
				["groups"] = {
					i(196979, {	-- Cliffside Wylderdrake: Curled Head Horns (MM!)
						["cost"] = { { "c", RIDERS_OF_AZEROTH_BADGE, 25 } },
					}),
					i(197017, {	-- Cliffside Wylderdrake: Large Tail Spikes (MM!)
						["cost"] = { { "c", RIDERS_OF_AZEROTH_BADGE, 25 } },
					}),
					i(197002, {	-- Cliffside Wylderdrake: Flared Cheek (MM!)
						["cost"] = { { "c", RIDERS_OF_AZEROTH_BADGE, 25 } },
					}),
					i(207768, {	-- Grotto Netherwing Drake: Volatile Pattern (MM!)
						["cost"] = { { "c", RIDERS_OF_AZEROTH_BADGE, 25 } },
					}),
					i(197128, {	-- Highland Drake: Curled Back Horns (MM!)
						["cost"] = { { "c", RIDERS_OF_AZEROTH_BADGE, 25 } },
					}),
					i(197124, {	-- Highland Drake: Swept Horns (MM!)
						["cost"] = { { "c", RIDERS_OF_AZEROTH_BADGE, 25 } },
					}),
					i(197113, {	-- Highland Drake: Swept Spiked Head (MM!)
						["cost"] = { { "c", RIDERS_OF_AZEROTH_BADGE, 25 } },
					}),
					i(197366, {	-- Renewed Proto-Drake: Dual Horned Crest (MM!)
						["cost"] = { { "c", RIDERS_OF_AZEROTH_BADGE, 25 } },
					}),
					i(202274, {	-- Renewed Proto-Drake: Plated Brow (MM!)
						["cost"] = { { "c", RIDERS_OF_AZEROTH_BADGE, 25 } },
					}),
					i(202280, {	-- Renewed Proto-Drake: Pronged Tail (MM!)
						["cost"] = { { "c", RIDERS_OF_AZEROTH_BADGE, 25 } },
					}),
					i(197605, {	-- Windborne Velocidrake: Curled Horns (MM!)
						["cost"] = { { "c", RIDERS_OF_AZEROTH_BADGE, 25 } },
					}),
					i(197619, {	-- Windborne Velocidrake: Hooked Snout (MM!)
						["cost"] = { { "c", RIDERS_OF_AZEROTH_BADGE, 25 } },
					}),
					i(197615, {	-- Windborne Velocidrake: Teal Scales (MM!)
						["cost"] = { { "c", RIDERS_OF_AZEROTH_BADGE, 50 } },
					}),
					i(197594, {	-- Windborne Velocidrake: Small Ears (MM!)
						["cost"] = { { "c", RIDERS_OF_AZEROTH_BADGE, 25 } },
					}),
					i(203322, {	-- Winding Slitherdrake: Blonde Hair (MM!)
						["cost"] = { { "c", RIDERS_OF_AZEROTH_BADGE, 25 } },
					}),
					i(203349, {	-- Winding Slitherdrake: Curved Nose Horn (MM!)
						["cost"] = { { "c", RIDERS_OF_AZEROTH_BADGE, 25 } },
					}),
					i(203306, {	-- Winding Slitherdrake: Horned Brow (MM!)
						["cost"] = { { "c", RIDERS_OF_AZEROTH_BADGE, 25 } },
					}),
					i(203348, {	-- Winding Slitherdrake: Pointed Nose (MM!)
						["cost"] = { { "c", RIDERS_OF_AZEROTH_BADGE, 25 } },
					}),
					i(203336, {	-- Winding Slitherdrake: Paired Horns (MM!)
						["cost"] = { { "c", RIDERS_OF_AZEROTH_BADGE, 25 } },
					}),
					i(203355, {	-- Winding Slitherdrake: Yellow Scales (MM!)
						["cost"] = { { "c", RIDERS_OF_AZEROTH_BADGE, 50 } },
					}),
					i(203359, {	-- Winding Slitherdrake: Shark Finned Tail (MM!)
						["cost"] = { { "c", RIDERS_OF_AZEROTH_BADGE, 25 } },
					}),
					-- Toy
					i(212518, {	-- Vial of Endless Daconic Scales (TOY!)
						["cost"] = { { "c", RIDERS_OF_AZEROTH_BADGE, 50 } },
					}),
					-- Transmogs
					i(213635, {	-- Checkered Pennant
						["cost"] = { { "c", RIDERS_OF_AZEROTH_BADGE, 25 } },
					}),
					i(206592, {	-- Drake Racer's Belt
						["cost"] = { { "c", RIDERS_OF_AZEROTH_BADGE, 20 } },
					}),
					i(206594, {	-- Drake Racer's Boots
						["cost"] = { { "c", RIDERS_OF_AZEROTH_BADGE, 20 } },
					}),
					i(206591, {	-- Drake Racer's Handwraps
						["cost"] = { { "c", RIDERS_OF_AZEROTH_BADGE, 20 } },
					}),
					i(206588, {	-- Drake Racer's Helmet
						["cost"] = { { "c", RIDERS_OF_AZEROTH_BADGE, 20 } },
					}),
					i(206590, {	-- Drake Racer's Jersey
						["cost"] = { { "c", RIDERS_OF_AZEROTH_BADGE, 20 } },
					}),
					i(206593, {	-- Drake Racer's Leggings
						["cost"] = { { "c", RIDERS_OF_AZEROTH_BADGE, 20 } },
					}),
					i(206589, {	-- Drake Racer's Shoulderpads
						["cost"] = { { "c", RIDERS_OF_AZEROTH_BADGE, 20 } },
					}),
					i(211877, {	-- Drake Racer's Scarf
						["cost"] = { { "c", RIDERS_OF_AZEROTH_BADGE, 5 } },
					}),
					i(213585, {	-- Icy Drake Racer's Scarf
						["cost"] = { { "c", RIDERS_OF_AZEROTH_BADGE, 5 } },
					}),
					i(213586, {	-- Icy Drake Racer's Boots
						["cost"] = { { "c", RIDERS_OF_AZEROTH_BADGE, 15 } },
					}),
					i(213587, {	-- Icy Drake Racer's Leggings
						["cost"] = { { "c", RIDERS_OF_AZEROTH_BADGE, 15 } },
					}),
					i(213588, {	-- Icy Drake Racer's Belt
						["cost"] = { { "c", RIDERS_OF_AZEROTH_BADGE, 15 } },
					}),
					i(213589, {	-- Icy Drake Racer's Handwraps
						["cost"] = { { "c", RIDERS_OF_AZEROTH_BADGE, 15 } },
					}),
					i(213590, {	-- Icy Drake Racer's Jersey
						["cost"] = { { "c", RIDERS_OF_AZEROTH_BADGE, 15 } },
					}),
					i(213591, {	-- Icy Drake Racer's Shoulderpads
						["cost"] = { { "c", RIDERS_OF_AZEROTH_BADGE, 15 } },
					}),
					i(213592, {	-- Icy Drake Racer's Helmet
						["cost"] = { { "c", RIDERS_OF_AZEROTH_BADGE, 15 } },
					}),
					i(211885, {	-- Outlandish Drake Racer's Belt
						["cost"] = { { "c", RIDERS_OF_AZEROTH_BADGE, 15 } },
					}),
					i(211887, {	-- Outlandish Drake Racer's Boots
						["cost"] = { { "c", RIDERS_OF_AZEROTH_BADGE, 15 } },
					}),
					i(211884, {	-- Outlandish Drake Racer's Handwraps
						["cost"] = { { "c", RIDERS_OF_AZEROTH_BADGE, 15 } },
					}),
					i(211881, {	-- Outlandish Drake Racer's Helmet
						["cost"] = { { "c", RIDERS_OF_AZEROTH_BADGE, 15 } },
					}),
					i(211883, {	-- Outlandish Drake Racer's Jersey
						["cost"] = { { "c", RIDERS_OF_AZEROTH_BADGE, 15 } },
					}),
					i(211886, {	-- Outlandish Drake Racer's Leggings
						["cost"] = { { "c", RIDERS_OF_AZEROTH_BADGE, 15 } },
					}),
					i(211888, {	-- Outlandish  Drake Racer's Scarf
						["cost"] = { { "c", RIDERS_OF_AZEROTH_BADGE, 5 } },
					}),
					i(211882, {	-- Outlandish Drake Racer's Shoulderpads
						["cost"] = { { "c", RIDERS_OF_AZEROTH_BADGE, 15 } },
					}),
				},
			}),
		}),
	},
}))));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.DF, bubbleDownSelf({ ["timeline"] = { ADDED_10_2_5 } }, {
	applyevent(EVENTS.DRAGONRIDING_CUP, n(DRAGONRIDING_CUP_ROOT, {
		q(79142),	-- Triggers with 'Outland Racing Completionist: Gold' (achievementID 19107)
		q(80201),	-- Triggers with when using 'Endless Possibility'
		q(79142),	-- Ensemble: Ruby Riders of Azeroth Tabard
		q(79702),	-- Ensemble: Frosted Riders of Azeroth Tabard
	})),
})));
