---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(KHAZ_ALGAR, {
	m(ISLE_OF_DORN, {
		skyriding(n(SKYRIDING, {
			n(ACHIEVEMENTS, {
				ach(40316, {	-- Isle of Dorn: Bronze
					-- Meta Achievement
					["sym"] = {{"meta_achievement",
						20273,	-- Basin Bypass: Bronze
						20255,	-- Dornogal Drift: Bronze
						20300,	-- Orecreg's Doglegs: Bronze
						20264,	-- Storm's Watch Survey: Bronze
						20282,	-- The Wold Ways: Bronze
						20291,	-- Thunderhead Trail: Bronze
					}},
				}),
				ach(40317, {	-- Isle of Dorn: Silver
					-- Meta Achievement
					["sym"] = {{"meta_achievement",
						20274,	-- Basin Bypass: Silver
						20256,	-- Dornogal Drift: Silver
						20301,	-- Orecreg's Doglegs: Silver
						20265,	-- Storm's Watch Survey: Silver
						20283,	-- The Wold Ways: Silver
						20292,	-- Thunderhead Trail: Silver
					}},
				}),
				ach(40318, {	-- Isle of Dorn: Gold
					-- Meta Achievement
					["sym"] = {{"meta_achievement",
						20275,	-- Basin Bypass: Gold
						20257,	-- Dornogal Drift: Gold
						20302,	-- Orecreg's Doglegs: Gold
						20266,	-- Storm's Watch Survey: Gold
						20284,	-- The Wold Ways: Gold
						20293,	-- Thunderhead Trail: Gold
					}},
				}),
				ach(40319, {	-- Isle of Dorn Advanced: Bronze
					-- Meta Achievement
					["sym"] = {{"meta_achievement",
						20276,	-- Basin Bypass Advanced: Bronze
						20258,	-- Dornogal Drift Advanced: Bronze
						20303,	-- Orecreg's Doglegs Advanced: Bronze
						20267,	-- Storm's Watch Survey Advanced: Bronze
						20285,	-- The Wold Ways Advanced: Bronze
						20294,	-- Thunderhead Trail Advanced: Bronze
					}},
				}),
				ach(40320, {	-- Isle of Dorn Advanced: Silver
					-- Meta Achievement
					["sym"] = {{"meta_achievement",
						20277,	-- Basin Bypass Advanced: Silver
						20259,	-- Dornogal Drift Advanced: Silver
						20304,	-- Orecreg's Doglegs Advanced: Silver
						20268,	-- Storm's Watch Survey Advanced: Silver
						20286,	-- The Wold Ways Advanced: Silver
						20295,	-- Thunderhead Trail Advanced: Silver
					}},
				}),
				ach(40321, {	-- Isle of Dorn Advanced: Gold
					-- Meta Achievement
					["sym"] = {{"meta_achievement",
						20278,	-- Basin Bypass Advanced: Gold
						20260,	-- Dornogal Drift Advanced: Gold
						20305,	-- Orecreg's Doglegs Advanced: Gold
						20269,	-- Storm's Watch Survey Advanced: Gold
						20287,	-- The Wold Ways Advanced: Gold
						20296,	-- Thunderhead Trail Advanced: Gold
					}},
				}),
				ach(40322, {	-- Isle of Dorn Reverse: Bronze
					-- Meta Achievement
					["sym"] = {{"meta_achievement",
						20279,	-- Basin Bypass Reverse: Bronze
						20261,	-- Dornogal Drift Reverse: Bronze
						20306,	-- Orecreg's Doglegs Reverse: Bronze
						20270,	-- Storm's Watch Survey Reverse: Bronze
						20288,	-- The Wold Ways Reverse: Bronze
						20297,	-- Thunderhead Trail Reverse: Bronze
					}},
				}),
				ach(40323, {	-- Isle of Dorn Reverse: Silver
					-- Meta Achievement
					["sym"] = {{"meta_achievement",
						20280,	-- Basin Bypass Reverse: Silver
						20262,	-- Dornogal Drift Reverse: Silver
						20307,	-- Orecreg's Doglegs Reverse: Silver
						20271,	-- Storm's Watch Survey Reverse: Silver
						20289,	-- The Wold Ways Reverse: Silver
						20298,	-- Thunderhead Trail Reverse: Silver
					}},
				}),
				ach(40324, {	-- Isle of Dorn Reverse: Gold
					-- Meta Achievement
					["sym"] = {{"meta_achievement",
						20281,	-- Basin Bypass Reverse: Gold
						20263,	-- Dornogal Drift Reverse: Gold
						20308,	-- Orecreg's Doglegs Reverse: Gold
						20272,	-- Storm's Watch Survey Reverse: Gold
						20290,	-- The Wold Ways Reverse: Gold
						20299,	-- Thunderhead Trail Reverse: Gold
					}},
				}),
			}),
			n(QUESTS, {
				skyridingrace(80221, {	-- Basin Bypass
					["provider"] = { "n", 219547 },	-- Bronze Timekeeper
					["coord"] = { 53.5, 64.2, ISLE_OF_DORN },
					["groups"] = {
						ach(20273),	-- Basin Bypass: Bronze
						ach(20274),	-- Basin Bypass: Silver
						ach(20275),	-- Basin Bypass: Gold
					},
				}),
				skyridingrace(80227, {	-- Basin Bypass - Advanced
					["provider"] = { "n", 219547 },	-- Bronze Timekeeper
					["coord"] = { 53.5, 64.2, ISLE_OF_DORN },
					["groups"] = {
						ach(20276),	-- Basin Bypass Advanced: Bronze
						ach(20277),	-- Basin Bypass Advanced: Silver
						ach(20278),	-- Basin Bypass Advanced: Gold
					},
				}),
				skyridingrace(80233, {	-- Basin Bypass - Reverse
					["provider"] = { "n", 219547 },	-- Bronze Timekeeper
					["coord"] = { 53.5, 64.2, ISLE_OF_DORN },
					["groups"] = {
						ach(20279),	-- Basin Bypass Reverse: Bronze
						ach(20280),	-- Basin Bypass Reverse: Silver
						ach(20281),	-- Basin Bypass Reverse: Gold
					},
				}),
				skyridingrace(80219, {	-- Dornogal Drift
					["provider"] = { "n", 219542 },	-- Bronze Timekeeper
					["coord"] = { 43.5, 11.7, DORNOGAL },
					["groups"] = {
						ach(20255),	-- Dornogal Drift: Bronze
						ach(20256),	-- Dornogal Drift: Silver
						ach(20257),	-- Dornogal Drift: Gold
					},
				}),
				skyridingrace(80225, {	-- Dornogal Drift - Advanced
					["provider"] = { "n", 219542 },	-- Bronze Timekeeper
					["coord"] = { 43.5, 11.7, DORNOGAL },
					["groups"] = {
						ach(20258),	-- Dornogal Drift Advanced: Bronze
						ach(20259),	-- Dornogal Drift Advanced: Silver
						ach(20260),	-- Dornogal Drift Advanced: Gold
					},
				}),
				skyridingrace(80231, {	-- Dornogal Drift - Reverse
					["provider"] = { "n", 219542 },	-- Bronze Timekeeper
					["coord"] = { 43.5, 11.7, DORNOGAL },
					["groups"] = {
						ach(20261),	-- Dornogal Drift Reverse: Bronze
						ach(20262),	-- Dornogal Drift Reverse: Silver
						ach(20263),	-- Dornogal Drift Reverse: Gold
					},
				}),
				skyridingrace(80224, {	-- Orecreg's Doglegs
					["provider"] = { "n", 219550 },	-- Bronze Timekeeper
					["coord"] = { 32.9, 74.8, ISLE_OF_DORN },
					["groups"] = {
						ach(20300),	-- Orecreg's Doglegs: Bronze
						ach(20301),	-- Orecreg's Doglegs: Silver
						ach(20302),	-- Orecreg's Doglegs: Gold
					},
				}),
				skyridingrace(80230, {	-- Orecreg's Doglegs - Advanced
					["provider"] = { "n", 219550 },	-- Bronze Timekeeper
					["coord"] = { 32.9, 74.8, ISLE_OF_DORN },
					["groups"] = {
						ach(20303),	-- Orecreg's Doglegs Advanced: Bronze
						ach(20304),	-- Orecreg's Doglegs Advanced: Silver
						ach(20305),	-- Orecreg's Doglegs Advanced: Gold
					},
				}),
				skyridingrace(80236, {	-- Orecreg's Doglegs - Reverse
					["provider"] = { "n", 219550 },	-- Bronze Timekeeper
					["coord"] = { 32.9, 74.8, ISLE_OF_DORN },
					["groups"] = {
						ach(20306),	-- Orecreg's Doglegs Reverse: Bronze
						ach(20307),	-- Orecreg's Doglegs Reverse: Silver
						ach(20308),	-- Orecreg's Doglegs Reverse: Gold
					},
				}),
				skyridingrace(80220, {	-- Storm's Watch Survey
					["provider"] = { "n", 219544 },	-- Bronze Timekeeper
					["coord"] = { 38.6, 43.6, ISLE_OF_DORN },
					["groups"] = {
						ach(20264),	-- Storm's Watch Survey: Bronze
						ach(20265),	-- Storm's Watch Survey: Silver
						ach(20266),	-- Storm's Watch Survey: Gold
					},
				}),
				skyridingrace(80226, {	-- Storm's Watch Survey - Advanced
					["provider"] = { "n", 219544 },	-- Bronze Timekeeper
					["coord"] = { 38.6, 43.6, ISLE_OF_DORN },
					["groups"] = {
						ach(20267),	-- Storm's Watch Survey Advanced: Bronze
						ach(20268),	-- Storm's Watch Survey Advanced: Silver
						ach(20269),	-- Storm's Watch Survey Advanced: Gold
					},
				}),
				skyridingrace(80232, {	-- Storm's Watch Survey - Reverse
					["provider"] = { "n", 219544 },	-- Bronze Timekeeper
					["coord"] = { 38.6, 43.6, ISLE_OF_DORN },
					["groups"] = {
						ach(20270),	-- Storm's Watch Survey Reverse: Bronze
						ach(20271),	-- Storm's Watch Survey Reverse: Silver
						ach(20272),	-- Storm's Watch Survey Reverse: Gold
					},
				}),
				skyridingrace(80222, {	-- The Wold Ways
					["provider"] = { "n", 219548 },	-- Bronze Timekeeper
					["coord"] = { 62.2, 46.0, ISLE_OF_DORN },
					["groups"] = {
						ach(20282),	-- The Wold Ways: Bronze
						ach(20283),	-- The Wold Ways: Silver
						ach(20284),	-- The Wold Ways: Gold
					},
				}),
				skyridingrace(80228, {	-- The Wold Ways - Advanced
					["provider"] = { "n", 219548 },	-- Bronze Timekeeper
					["coord"] = { 62.2, 46.0, ISLE_OF_DORN },
					["groups"] = {
						ach(20285),	-- The Wold Ways Advanced: Bronze
						ach(20286),	-- The Wold Ways Advanced: Silver
						ach(20287),	-- The Wold Ways Advanced: Gold
					},
				}),
				skyridingrace(80234, {	-- The Wold Ways - Reverse
					["provider"] = { "n", 219548 },	-- Bronze Timekeeper
					["coord"] = { 62.2, 46.0, ISLE_OF_DORN },
					["groups"] = {
						ach(20288),	-- The Wold Ways Reverse: Bronze
						ach(20289),	-- The Wold Ways Reverse: Silver
						ach(20290),	-- The Wold Ways Reverse: Gold
					},
				}),
				skyridingrace(80223, {	-- Thunderhead Trail
					["provider"] = { "n", 219549 },	-- Bronze Timekeeper
					["coord"] = { 58.3, 24.8, ISLE_OF_DORN },
					["groups"] = {
						ach(20291),	-- Thunderhead Trail: Bronze
						ach(20292),	-- Thunderhead Trail: Silver
						ach(20293),	-- Thunderhead Trail: Gold
					},
				}),
				skyridingrace(80229, {	-- Thunderhead Trail - Advanced
					["provider"] = { "n", 219549 },	-- Bronze Timekeeper
					["coord"] = { 58.3, 24.8, ISLE_OF_DORN },
					["groups"] = {
						ach(20294),	-- Thunderhead Trail Advanced: Bronze
						ach(20295),	-- Thunderhead Trail Advanced: Silver
						ach(20296),	-- Thunderhead Trail Advanced: Gold
					},
				}),
				skyridingrace(80235, {	-- Thunderhead Trail - Reverse
					["provider"] = { "n", 219549 },	-- Bronze Timekeeper
					["coord"] = { 58.3, 24.8, ISLE_OF_DORN },
					["groups"] = {
						ach(20297),	-- Thunderhead Trail Reverse: Bronze
						ach(20298),	-- Thunderhead Trail Reverse: Silver
						ach(20299),	-- Thunderhead Trail Reverse: Gold
					},
				}),
			}),
		})),
	}),
}));
