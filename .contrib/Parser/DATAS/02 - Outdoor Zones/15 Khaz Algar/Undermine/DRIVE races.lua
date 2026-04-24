---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(KHAZ_ALGAR, {
	m(UNDERMINE, {
		skyriding(n(DRIVE_RACING, {
			n(ACHIEVEMENTS, {
				ach(41081, {	-- Undermine Breaknecking: Bronze
					-- Meta Achievement
					["sym"] = {{"meta_achievement",
						41057,	-- Breakneck Bolt: Bronze
						41060,	-- Breakneck Bolt Reverse: Bronze
						41069,	-- Casino Cruise: Bronze
						41072,	-- Casino Cruise Reverse: Bronze
						41063,	-- Junkyard Jaunt: Bronze
						41066,	-- Junkyard Jaunt Reverse: Bronze
						41075,	-- Sandy Scuttle: Bronze
						41078,	-- Sandy Scuttle Reverse: Bronze
					}},
					["groups"] = {
						i(232982),	-- The Pozzik Standard
					},
				}),
				ach(41083, {	-- Undermine Breaknecking: Silver
					-- Meta Achievement
					["sym"] = {{"meta_achievement",
						41058,	-- Breakneck Bolt: Silver
						41061,	-- Breakneck Bolt Reverse: Silver
						41070,	-- Casino Cruise: Silver
						41073,	-- Casino Cruise Reverse: Silver
						41064,	-- Junkyard Jaunt: Silver
						41067,	-- Junkyard Jaunt Reverse: Silver
						41076,	-- Sandy Scuttle: Silver
						41079,	-- Sandy Scuttle Reverse: Silver
					}},
				}),
				ach(41084, {	-- Undermine Breaknecking: Gold
					-- Meta Achievement
					["sym"] = {{"meta_achievement",
						41059,	-- Breakneck Bolt: Gold
						41062,	-- Breakneck Bolt Reverse: Gold
						41071,	-- Casino Cruise: Gold
						41074,	-- Casino Cruise Reverse: Gold
						41065,	-- Junkyard Jaunt: Gold
						41068,	-- Junkyard Jaunt Reverse: Gold
						41077,	-- Sandy Scuttle: Gold
						41080,	-- Sandy Scuttle Reverse: Gold
					}},
					["groups"] = {
						title(597),	-- Breaknecker <Name>
					},
				}),
				ach(40936, {	-- Undermine Skyrocketing: Bronze
					-- Meta Achievement
					["sym"] = {{"meta_achievement",
						40930,	-- Rags to Riches Rush: Bronze
						40933,	-- Rags to Riches Rush Reverse: Bronze
						40924,	-- Scrapshop Shot: Bronze
						40927,	-- Scrapshop Shot Reverse: Bronze
						40912,	-- Skyrocketing Sprint: Bronze
						40915,	-- Skyrocketing Sprint Reverse: Bronze
						40918,	-- The Heaps Leap: Bronze
						40921,	-- The Heaps Leap Reverse: Bronze
					}},
				}),
				ach(40937, {	-- Undermine Skyrocketing: Silver
					-- Meta Achievement
					["sym"] = {{"meta_achievement",
						40931,	-- Rags to Riches Rush: Silver
						40934,	-- Rags to Riches Rush Reverse: Silver
						40925,	-- Scrapshop Shot: Silver
						40928,	-- Scrapshop Shot Reverse: Silver
						40913,	-- Skyrocketing Sprint: Silver
						40916,	-- Skyrocketing Sprint Reverse: Silver
						40919,	-- The Heaps Leap: Silver
						40922,	-- The Heaps Leap Reverse: Silver
					}},
				}),
				ach(40938, {	-- Undermine Skyrocketing: Gold
					-- Meta Achievement
					["sym"] = {{"meta_achievement",
						40932,	-- Rags to Riches Rush: Gold
						40935,	-- Rags to Riches Rush Reverse: Gold
						40926,	-- Scrapshop Shot: Gold
						40929,	-- Scrapshop Shot Reverse: Gold
						40914,	-- Skyrocketing Sprint: Gold
						40917,	-- Skyrocketing Sprint Reverse: Gold
						40920,	-- The Heaps Leap: Gold
						40923,	-- The Heaps Leap Reverse: Gold
					}},
					["groups"] = {
						title(580),	-- Skyrocketer <Name>
					},
				}),
			}),
			n(QUESTS, {
				driverace(85900, {	-- Breakneck Bolt
					["provider"] = { "n", 233917 },	-- Grimy Timekeeper
					["coord"] = { 26.2, 53.0, UNDERMINE },
					["groups"] = {
						ach(41057),	-- Breakneck Bolt: Bronze
						ach(41058),	-- Breakneck Bolt: Silver
						ach(41059),	-- Breakneck Bolt: Gold
					},
				}),
				driverace(85901, {	-- Breakneck Bolt - Reverse
					["provider"] = { "n", 233917 },	-- Grimy Timekeeper
					["coord"] = { 26.2, 53.0, UNDERMINE },
					["groups"] = {
						ach(41060),	-- Breakneck Bolt Reverse: Bronze
						ach(41061),	-- Breakneck Bolt Reverse: Silver
						ach(41062),	-- Breakneck Bolt Reverse: Gold
					},
				}),
				driverace(85904, {	-- Casino Cruise
					["provider"] = { "n", 233919 },	-- Grimy Timekeeper
					["coord"] = { 39.5, 53.9, UNDERMINE },
					["groups"] = {
						ach(41069),	-- Casino Cruise: Bronze
						ach(41070),	-- Casino Cruise: Silver
						ach(41071),	-- Casino Cruise: Gold
					},
				}),
				driverace(85905, {	-- Casino Cruise - Reverse
					["provider"] = { "n", 233919 },	-- Grimy Timekeeper
					["coord"] = { 39.5, 53.9, UNDERMINE },
					["groups"] = {
						ach(41072),	-- Casino Cruise Reverse: Bronze
						ach(41073),	-- Casino Cruise Reverse: Silver
						ach(41074),	-- Casino Cruise Reverse: Gold
					},
				}),
				driverace(85902, {	-- Junkyard Jaunt
					["provider"] = { "n", 233918 },	-- Grimy Timekeeper
					["coord"] = { 43.4, 78.1, UNDERMINE },
					["groups"] = {
						ach(41063),	-- Junkyard Jaunt: Bronze
						ach(41064),	-- Junkyard Jaunt: Silver
						ach(41065),	-- Junkyard Jaunt: Gold
					},
				}),
				driverace(85903, {	-- Junkyard Jaunt - Reverse
					["provider"] = { "n", 233918 },	-- Grimy Timekeeper
					["coord"] = { 43.4, 78.1, UNDERMINE },
					["groups"] = {
						ach(41066),	-- Junkyard Jaunt Reverse: Bronze
						ach(41067),	-- Junkyard Jaunt Reverse: Silver
						ach(41068),	-- Junkyard Jaunt Reverse: Gold
					},
				}),
				driverace(85101, {	-- Rags to Riches Rush
					["provider"] = { "n", 231900 },	-- Grimy Timekeeper
					["coord"] = { 25.5, 42.1, UNDERMINE },
					["groups"] = {
						ach(40930),	-- Rags to Riches Rush: Bronze
						ach(40931),	-- Rags to Riches Rush: Silver
						ach(40932),	-- Rags to Riches Rush: Gold
					},
				}),
				driverace(85102, {	-- Rags to Riches Rush - Reverse
					["provider"] = { "n", 231900 },	-- Grimy Timekeeper
					["coord"] = { 25.5, 42.1, UNDERMINE },
					["groups"] = {
						ach(40933),	-- Rags to Riches Rush Reverse: Bronze
						ach(40934),	-- Rags to Riches Rush Reverse: Silver
						ach(40935),	-- Rags to Riches Rush Reverse: Gold
					},
				}),
				driverace(85906, {	-- Sandy Scuttle
					["provider"] = { "n", 233920 },	-- Grimy Timekeeper
					["coord"] = { 47.6, 43.9, UNDERMINE },
					["groups"] = {
						ach(41075),	-- Sandy Scuttle: Bronze
						ach(41076),	-- Sandy Scuttle: Silver
						ach(41077),	-- Sandy Scuttle: Gold
					},
				}),
				driverace(85907, {	-- Sandy Scuttle - Reverse
					["provider"] = { "n", 233920 },	-- Grimy Timekeeper
					["coord"] = { 47.6, 43.9, UNDERMINE },
					["groups"] = {
						ach(41078),	-- Sandy Scuttle Reverse: Bronze
						ach(41079),	-- Sandy Scuttle Reverse: Silver
						ach(41080),	-- Sandy Scuttle Reverse: Gold
					},
				}),
				driverace(85099, {	-- Scrapshop Shot
					["provider"] = { "n", 231893 },	-- Grimy Timekeeper
					["coord"] = { 39.2, 11.4, UNDERMINE },
					["groups"] = {
						ach(40924),	-- Scrapshop Shot: Bronze
						ach(40925),	-- Scrapshop Shot: Silver
						ach(40926),	-- Scrapshop Shot: Gold
					},
				}),
				driverace(85100, {	-- Scrapshop Shot - Reverse
					["provider"] = { "n", 231893 },	-- Grimy Timekeeper
					["coord"] = { 39.2, 11.4, UNDERMINE },
					["groups"] = {
						ach(40927),	-- Scrapshop Shot Reverse: Bronze
						ach(40928),	-- Scrapshop Shot Reverse: Silver
						ach(40929),	-- Scrapshop Shot Reverse: Gold
					},
				}),
				driverace(85071, {	-- Skyrocketing Sprint
					["provider"] = { "n", 231793 },	-- Grimy Timekeeper
					["coord"] = { 39.0, 28.7, UNDERMINE },
					["groups"] = {
						ach(40912),	-- Skyrocketing Sprint: Bronze
						ach(40913),	-- Skyrocketing Sprint: Silver
						ach(40914),	-- Skyrocketing Sprint: Gold
					},
				}),
				driverace(85096, {	-- Skyrocketing Sprint - Reverse
					-- TODO: missing in-game/ptr, re-check questID in future
					["provider"] = { "n", 231793 },	-- Grimy Timekeeper
					["coord"] = { 39.0, 28.7, UNDERMINE },
					["groups"] = {
						ach(40915),	-- Skyrocketing Sprint Reverse: Bronze
						ach(40916),	-- Skyrocketing Sprint Reverse: Silver
						ach(40917),	-- Skyrocketing Sprint Reverse: Gold
					},
				}),
				driverace(85097, {	-- The Heaps Leap
					["provider"] = { "n", 231879 },	-- Grimy Timekeeper
					["coord"] = { 33.8, 76.2, UNDERMINE },
					["groups"] = {
						ach(40918),	-- The Heaps Leap: Bronze
						ach(40919),	-- The Heaps Leap: Silver
						ach(40920),	-- The Heaps Leap: Gold
					},
				}),
				driverace(85098, {	-- The Heaps Leap - Reverse
					["provider"] = { "n", 231879 },	-- Grimy Timekeeper
					["coord"] = { 33.8, 76.2, UNDERMINE },
					["groups"] = {
						ach(40921),	-- The Heaps Leap Reverse: Bronze
						ach(40922),	-- The Heaps Leap Reverse: Silver
						ach(40923),	-- The Heaps Leap Reverse: Gold
					},
				}),
			}),
		})),
	}),
}));
