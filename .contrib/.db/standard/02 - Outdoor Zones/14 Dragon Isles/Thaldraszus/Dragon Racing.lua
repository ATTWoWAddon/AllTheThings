---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(DRAGON_ISLES, bubbleDown({ ["timeline"] = { ADDED_10_0_2_LAUNCH } }, {
	m(THALDRASZUS, {
		skyriding(n(DRAGONRIDING_RACING, {
			header(HEADERS.Achievement, 15941, {	-- Dragon Racing Completionist: Gold
				n(ACHIEVEMENTS, {
					ach(15924, {	-- Thaldraszus: Bronze
						-- Meta Achievement
						["sym"] = {{"meta_achievement",
							15897,	-- Academy Ascent: Bronze
							15909,	-- Caverns Criss-Cross: Bronze
							15891,	-- Cliffside Circuit: Bronze
							15827,	-- The Flowing Forest Flight: Bronze
							15903,	-- Garden Gallivant: Bronze
							15855,	-- Tyrhold Trial: Bronze
						}},
					}),
					ach(15925, {	-- Thaldraszus: Silver
						-- Meta Achievement
						["sym"] = {{"meta_achievement",
							15898,	-- Academy Ascent: Silver
							15910,	-- Caverns Criss-Cross: Silver
							15892,	-- Cliffside Circuit: Silver
							15828,	-- The Flowing Forest Flight: Silver
							15904,	-- Garden Gallivant: Silver
							15856,	-- Tyrhold Trial: Silver
						}},
						["groups"] = {
							i(196987),	-- Cliffside Wylderdrake: Blonde Hair (MM!)
						},
					}),
					ach(15926, {	-- Thaldraszus: Gold
						-- Meta Achievement
						["sym"] = {{"meta_achievement",
							15899,	-- Academy Ascent: Gold
							15911,	-- Caverns Criss-Cross: Gold
							15893,	-- Cliffside Circuit: Gold
							15829,	-- The Flowing Forest Flight: Gold
							15905,	-- Garden Gallivant: Gold
							15857,	-- Tyrhold Trial: Gold
						}},
					}),
					ach(15936, {	-- Thaldraszus Advanced: Bronze
						-- Meta Achievement
						["sym"] = {{"meta_achievement",
							15900,	-- Academy Ascent Advanced: Bronze
							15912,	-- Caverns Criss-Cross Advanced: Bronze
							15894,	-- Cliffside Circuit Advanced: Bronze
							15830,	-- The Flowing Forest Flight Advanced: Bronze
							15906,	-- Garden Gallivant Advanced: Bronze
							15858,	-- Tyrhold Trial Advanced: Bronze
						}},
					}),
					ach(15937, {	-- Thaldraszus Advanced: Silver
						-- Meta Achievement
						["sym"] = {{"meta_achievement",
							15901,	-- Academy Ascent Advanced: Silver
							15913,	-- Caverns Criss-Cross Advanced: Silver
							15895,	-- Cliffside Circuit Advanced: Silver
							15831,	-- The Flowing Forest Flight Advanced: Silver
							15907,	-- Garden Gallivant Advanced: Silver
							15859,	-- Tyrhold Trial Advanced: Silver
						}},
						["groups"] = {
							i(196966),	-- Cliffside Wylderdrake: Gold and Orange Armor (MM!)
						},
					}),
					ach(15938, {	-- Thaldraszus Advanced: Gold
						-- Meta Achievement
						["sym"] = {{"meta_achievement",
							15902,	-- Academy Ascent Advanced: Gold
							15914,	-- Caverns Criss-Cross Advanced: Gold
							15896,	-- Cliffside Circuit Advanced: Gold
							15832,	-- The Flowing Forest Flight Advanced: Gold
							15908,	-- Garden Gallivant Advanced: Gold
							15860,	-- Tyrhold Trial Advanced: Gold
						}},
					}),
				}),
				n(QUESTS, {
					dragonridingrace(70059, {	-- Academy Ascent
						["provider"] = { "n", 193951 },	-- Bronze Timekeeper
						["coord"] = { 60.3, 41.6, THALDRASZUS },
						["groups"] = {
							ach(15897),	-- Academy Ascent: Bronze
							ach(15898),	-- Academy Ascent: Silver
							ach(15899),	-- Academy Ascent: Gold
						},
					}),
					dragonridingrace(70060, {	-- Academy Ascent - Advanced
						["provider"] = { "n", 193951 },	-- Bronze Timekeeper
						["coord"] = { 60.3, 41.6, THALDRASZUS },
						["groups"] = {
							ach(15900),	-- Academy Ascent Advanced: Bronze
							ach(15901),	-- Academy Ascent Advanced: Silver
							ach(15902),	-- Academy Ascent Advanced: Gold
						},
					}),
					dragonridingrace(70161, {	-- Caverns Criss-Cross
						["provider"] = { "n", 194372 },	-- Bronze Timekeeper
						["coord"] = { 58.1, 33.6, THALDRASZUS },
						["groups"] = {
							ach(15909),	-- Caverns Criss-Cross: Bronze
							ach(15910),	-- Caverns Criss-Cross: Silver
							ach(15911),	-- Caverns Criss-Cross: Gold
						},
					}),
					dragonridingrace(70163, {	-- Caverns Criss-Cross - Advanced
						["provider"] = { "n", 194372 },	-- Bronze Timekeeper
						["coord"] = { 58.1, 33.6, THALDRASZUS },
						["groups"] = {
							ach(15912),	-- Caverns Criss-Cross Advanced: Bronze
							ach(15913),	-- Caverns Criss-Cross Advanced: Silver
							ach(15914),	-- Caverns Criss-Cross Advanced: Gold
						},
					}),
					dragonridingrace(70051, {	-- Cliffside Circuit
						["provider"] = { "n", 193911 },	-- Bronze Timekeeper
						["coord"] = { 37.7, 48.9, THALDRASZUS },
						["groups"] = {
							ach(15891),	-- Cliffside Circuit: Bronze
							ach(15892),	-- Cliffside Circuit: Silver
							ach(15893),	-- Cliffside Circuit: Gold
						},
					}),
					dragonridingrace(70052, {	-- Cliffside Circuit - Advanced
						["provider"] = { "n", 193911 },	-- Bronze Timekeeper
						["coord"] = { 37.7, 48.9, THALDRASZUS },
						["groups"] = {
							ach(15894),	-- Cliffside Circuit Advanced: Bronze
							ach(15895),	-- Cliffside Circuit Advanced: Silver
							ach(15896),	-- Cliffside Circuit Advanced: Gold
						},
					}),
					dragonridingrace(67095, {	-- Flowing Forest Flight
						["provider"] = { "n", 192555 },	-- Bronze Timekeeper
						["coord"] = { 57.8, 75.0, THALDRASZUS },
						["groups"] = {
							ach(15827),	-- The Flowing Forest Flight: Bronze
							ach(15828),	-- The Flowing Forest Flight: Silver
							ach(15829),	-- The Flowing Forest Flight: Gold
						},
					}),
					dragonridingrace(67096, {	-- Flowing Forest Flight - Advanced
						["provider"] = { "n", 192555 },	-- Bronze Timekeeper
						["coord"] = { 57.8, 75.0, THALDRASZUS },
						["groups"] = {
							ach(15830),	-- The Flowing Forest Flight Advanced: Bronze
							ach(15831),	-- The Flowing Forest Flight Advanced: Silver
							ach(15832),	-- The Flowing Forest Flight Advanced: Gold
						},
					}),
					dragonridingrace(70157, {	-- Garden Gallivant
						["provider"] = { "n", 194348 },	-- Bronze Timekeeper
						["coord"] = { 39.5, 76.2, THALDRASZUS },
						["groups"] = {
							ach(15903),	-- Garden Gallivant: Bronze
							ach(15904),	-- Garden Gallivant: Silver
							ach(15905),	-- Garden Gallivant: Gold
						},
					}),
					dragonridingrace(70158, {	-- Garden Gallivant - Advanced
						["provider"] = { "n", 194348 },	-- Bronze Timekeeper
						["coord"] = { 39.5, 76.2, THALDRASZUS },
						["groups"] = {
							ach(15906),	-- Garden Gallivant Advanced: Bronze
							ach(15907),	-- Garden Gallivant Advanced: Silver
							ach(15908),	-- Garden Gallivant Advanced: Gold
						},
					}),
					dragonridingrace(69957, {	-- Tyrhold Trial
						["provider"] = { "n", 193651 },	-- Bronze Timekeeper
						["coord"] = { 57.2, 66.9, THALDRASZUS },
						["groups"] = {
							ach(15855),	-- Tyrhold Trial: Bronze
							ach(15856),	-- Tyrhold Trial: Silver
							ach(15857),	-- Tyrhold Trial: Gold
						},
					}),
					dragonridingrace(69958, {	-- Tyrhold Trial - Advanced
						["provider"] = { "n", 193651 },	-- Bronze Timekeeper
						["coord"] = { 57.2, 66.9, THALDRASZUS },
						["groups"] = {
							ach(15858),	-- Tyrhold Trial Advanced: Bronze
							ach(15859),	-- Tyrhold Trial Advanced: Silver
							ach(15860),	-- Tyrhold Trial Advanced: Gold
						},
					}),
				}),
			}),
			header(HEADERS.Achievement, 18792, bubbleDownSelf({ ["timeline"] = ADDED_10_1_7 }, {	-- Dragonriding Challenge: Dragon Isles: Gold
				n(ACHIEVEMENTS, {
					ach(18760, {	-- Thaldraszus Challenge: Bronze
						-- Meta Achievement
						["sym"] = {{"meta_achievement",
							18009,	-- Academy Ascent Challenge: Bronze
							18012,	-- Academy Ascent Reverse Challenge: Bronze
							18021,	-- Caverns Criss-Cross Challenge: Bronze
							18024,	-- Caverns Criss-Cross Reverse Challenge: Bronze
							18003,	-- Cliffside Circuit Challenge: Bronze
							18006,	-- Cliffside Circuit Reverse Challenge: Bronze
							18015,	-- Garden Gallivant Challenge: Bronze
							18018,	-- Garden Gallivant Reverse Challenge: Bronze
							17991,	-- The Flowing Forest Flight Challenge: Bronze
							17994,	-- The Flowing Forest Flight Reverse Challenge: Bronze
							17997,	-- Tyrhold Trial Challenge: Bronze
							18000,	-- Tyrhold Trial Reverse Challenge: Bronze
						}},
					}),
					ach(18761, {	-- Thaldraszus Challenge: Silver
						-- Meta Achievement
						["sym"] = {{"meta_achievement",
							18010,	-- Academy Ascent Challenge: Silver
							18013,	-- Academy Ascent Reverse Challenge: Silver
							18022,	-- Caverns Criss-Cross Challenge: Silver
							18025,	-- Caverns Criss-Cross Reverse Challenge: Silver
							18004,	-- Cliffside Circuit Challenge: Silver
							18007,	-- Cliffside Circuit Reverse Challenge: Silver
							18016,	-- Garden Gallivant Challenge: Silver
							18019,	-- Garden Gallivant Reverse Challenge: Silver
							17992,	-- The Flowing Forest Flight Challenge: Silver
							17995,	-- The Flowing Forest Flight Reverse Challenge: Silver
							17998,	-- Tyrhold Trial Challenge: Silver
							18001,	-- Tyrhold Trial Reverse Challenge: Silver
						}},
					}),
					ach(18762, {	-- Thaldraszus Challenge: Gold
						-- Meta Achievement
						["sym"] = {{"meta_achievement",
							18011,	-- Academy Ascent Challenge: Gold
							18014,	-- Academy Ascent Reverse Challenge: Gold
							18023,	-- Caverns Criss-Cross Challenge: Gold
							18026,	-- Caverns Criss-Cross Reverse Challenge: Gold
							18005,	-- Cliffside Circuit Challenge: Gold
							18008,	-- Cliffside Circuit Reverse Challenge: Gold
							18017,	-- Garden Gallivant Challenge: Gold
							18020,	-- Garden Gallivant Reverse Challenge: Gold
							17993,	-- The Flowing Forest Flight Challenge: Gold
							17996,	-- The Flowing Forest Flight Reverse Challenge: Gold
							17999,	-- Tyrhold Trial Challenge: Gold
							18002,	-- Tyrhold Trial Reverse Challenge: Gold
						}},
					}),
				}),
				n(QUESTS, {
					dragonridingrace(75826, {	-- Academy Ascent Challenge
						["provider"] = { "n", 193951 },	-- Bronze Timekeeper
						["coord"] = { 60.3, 41.6, THALDRASZUS },
						["groups"] = {
							ach(18009),	-- Academy Ascent Challenge: Bronze
							ach(18010),	-- Academy Ascent Challenge: Silver
							ach(18011),	-- Academy Ascent Challenge: Gold
						},
					}),
					dragonridingrace(75827, {	-- Academy Ascent - Reverse Challenge
						["provider"] = { "n", 193951 },	-- Bronze Timekeeper
						["coord"] = { 60.3, 41.6, THALDRASZUS },
						["groups"] = {
							ach(18012),	-- Academy Ascent Reverse Challenge: Bronze
							ach(18013),	-- Academy Ascent Reverse Challenge: Silver
							ach(18014),	-- Academy Ascent Reverse Challenge: Gold
						},
					}),
					dragonridingrace(75829, {	-- Caverns Criss-Cross Challenge
						["provider"] = { "n", 194372 },	-- Bronze Timekeeper
						["coord"] = { 58.1, 33.6, THALDRASZUS },
						["groups"] = {
							ach(18021),	-- Caverns Criss-Cross Challenge: Bronze
							ach(18022),	-- Caverns Criss-Cross Challenge: Silver
							ach(18023),	-- Caverns Criss-Cross Challenge: Gold
						},
					}),
					dragonridingrace(75830, {	-- Caverns Criss-Cross - Reverse Challenge
						["provider"] = { "n", 194372 },	-- Bronze Timekeeper
						["coord"] = { 58.1, 33.6, THALDRASZUS },
						["groups"] = {
							ach(18024),	-- Caverns Criss-Cross Reverse Challenge: Bronze
							ach(18025),	-- Caverns Criss-Cross Reverse Challenge: Silver
							ach(18026),	-- Caverns Criss-Cross Reverse Challenge: Gold
						},
					}),
					dragonridingrace(75824, {	-- Cliffside Circuit Challenge
						["provider"] = { "n", 193911 },	-- Bronze Timekeeper
						["coord"] = { 37.7, 48.9, THALDRASZUS },
						["groups"] = {
							ach(18003),	-- Cliffside Circuit Challenge: Bronze
							ach(18004),	-- Cliffside Circuit Challenge: Silver
							ach(18005),	-- Cliffside Circuit Challenge: Gold
						},
					}),
					dragonridingrace(75825, {	-- Cliffside Circuit - Reverse Challenge
						["provider"] = { "n", 193911 },	-- Bronze Timekeeper
						["coord"] = { 37.7, 48.9, THALDRASZUS },
						["groups"] = {
							ach(18006),	-- Cliffside Circuit Reverse Challenge: Bronze
							ach(18007),	-- Cliffside Circuit Reverse Challenge: Silver
							ach(18008),	-- Cliffside Circuit Reverse Challenge: Gold
						},
					}),
					dragonridingrace(75784, {	-- Garden Gallivant Challenge
						["provider"] = { "n", 194348 },	-- Bronze Timekeeper
						["coord"] = { 39.5, 76.2, THALDRASZUS },
						["groups"] = {
							ach(18015),	-- Garden Gallivant Challenge: Bronze
							ach(18016),	-- Garden Gallivant Challenge: Silver
							ach(18017),	-- Garden Gallivant Challenge: Gold
						},
					}),
					dragonridingrace(75828, {	-- Garden Gallivant - Revese Challenge
						["provider"] = { "n", 194348 },	-- Bronze Timekeeper
						["coord"] = { 39.5, 76.2, THALDRASZUS },
						["groups"] = {
							ach(18018),	-- Garden Gallivant Reverse Challenge: Bronze
							ach(18019),	-- Garden Gallivant Reverse Challenge: Silver
							ach(18020),	-- Garden Gallivant Reverse Challenge: Gold
						},
					}),
					dragonridingrace(75820, {	-- Flowing Forest Flight Challenge
						["provider"] = { "n", 192555 },	-- Bronze Timekeeper
						["coord"] = { 57.8, 75.0, THALDRASZUS },
						["groups"] = {
							ach(17991),	-- The Flowing Forest Flight Challenge: Bronze
							ach(17992),	-- The Flowing Forest Flight Challenge: Silver
							ach(17993),	-- The Flowing Forest Flight Challenge: Gold
						},
					}),
					dragonridingrace(75821, {	-- Flowing Forest Flight - Reverse Challenge
						["provider"] = { "n", 192555 },	-- Bronze Timekeeper
						["coord"] = { 57.8, 75.0, THALDRASZUS },
						["groups"] = {
							ach(17994),	-- The Flowing Forest Flight Reverse Challenge: Bronze
							ach(17995),	-- The Flowing Forest Flight Reverse Challenge: Silver
							ach(17996),	-- The Flowing Forest Flight Reverse Challenge: Gold
						},
					}),
					dragonridingrace(75822, {	-- Tyrhold Trial Challenge
						["provider"] = { "n", 193651 },	-- Bronze Timekeeper
						["coord"] = { 57.2, 66.9, THALDRASZUS },
						["groups"] = {
							ach(17997),	-- Tyrhold Trial Challenge: Bronze
							ach(17998),	-- Tyrhold Trial Challenge: Silver
							ach(17999),	-- Tyrhold Trial Challenge: Gold
						},
					}),
					dragonridingrace(75823, {	-- Tyrhold Trial - Reverse Challenge
						["provider"] = { "n", 193651 },	-- Bronze Timekeeper
						["coord"] = { 57.2, 66.9, THALDRASZUS },
						["groups"] = {
							ach(18000),	-- Tyrhold Trial Reverse Challenge: Bronze
							ach(18001),	-- Tyrhold Trial Reverse Challenge: Silver
							ach(18002),	-- Tyrhold Trial Reverse Challenge: Gold
						},
					}),
				}),
			})),
			header(HEADERS.Achievement, 17332, bubbleDownSelf({ ["timeline"] = ADDED_10_0_5 }, {	-- Reverse Racer: Gold
				n(ACHIEVEMENTS, {
					ach(17204, {	-- Thaldraszus Reverse: Bronze
						-- Meta Achievement
						["sym"] = {{"meta_achievement",
							15909,	-- Academy Ascent Reverse: Bronze
							17192,	-- Caverns Criss-Cross Reverse: Bronze
							17183,	-- Cliffside Circuit Reverse: Bronze
							17189,	-- Garden Gallivant Reverse: Bronze
							17177,	-- The Flowing Forest Flight Reverse: Bronze
							17180,	-- Tyrhold Trial Reverse: Bronze
						}},
					}),
					ach(17205, {	-- Thaldraszus Reverse: Silver
						-- Meta Achievement
						["sym"] = {{"meta_achievement",
							17187,	-- Academy Ascent Reverse: Silver
							17193,	-- Caverns Criss-Cross Reverse: Silver
							17184,	-- Cliffside Circuit Reverse: Silver
							17190,	-- Garden Gallivant Reverse: Silver
							17178,	-- The Flowing Forest Flight Reverse: Silver
							17181,	-- Tyrhold Trial Reverse: Silver
						}},
					}),
					ach(17206, {	-- Thaldraszus Reverse: Gold
						-- Meta Achievement
						["sym"] = {{"meta_achievement",
							17188,	-- Academy Ascent Reverse: Gold
							17194,	-- Caverns Criss-Cross Reverse: Gold
							17185,	-- Cliffside Circuit Reverse: Gold
							17191,	-- Garden Gallivant Reverse: Gold
							17179,	-- The Flowing Forest Flight Reverse: Gold
							17182,	-- Tyrhold Trial Reverse: Gold
						}},
					}),
				}),
				n(QUESTS, {
					dragonridingrace(72754, {	-- Academy Ascent - Reverse
						["provider"] = { "n", 193951 },	-- Bronze Timekeeper
						["coord"] = { 60.3, 41.6, THALDRASZUS },
						["groups"] = {
							ach(17186),	-- Academy Ascent Reverse: Bronze
							ach(17187),	-- Academy Ascent Reverse: Silver
							ach(17188),	-- Academy Ascent Reverse: Gold
						},
					}),
					dragonridingrace(72750, {	-- Caverns Criss-Cross - Reverse
						["provider"] = { "n", 194372 },	-- Bronze Timekeeper
						["coord"] = { 58.1, 33.6, THALDRASZUS },
						["groups"] = {
							ach(17192),	-- Caverns Criss-Cross Reverse: Bronze
							ach(17193),	-- Caverns Criss-Cross Reverse: Silver
							ach(17194),	-- Caverns Criss-Cross Reverse: Gold
						},
					}),
					dragonridingrace(72760, {	-- Cliffside Circuit - Reverse
						["provider"] = { "n", 193911 },	-- Bronze Timekeeper
						["coord"] = { 37.7, 48.9, THALDRASZUS },
						["groups"] = {
							ach(17183),	-- Cliffside Circuit Reverse: Bronze
							ach(17184),	-- Cliffside Circuit Reverse: Silver
							ach(17185),	-- Cliffside Circuit Reverse: Gold
						},
					}),
					dragonridingrace(72793, {	-- Flowing Forest Flight - Reverse
						["provider"] = { "n", 192555 },	-- Bronze Timekeeper
						["coord"] = { 57.8, 75.0, THALDRASZUS },
						["groups"] = {
							ach(17177),	-- The Flowing Forest Flight Reverse: Bronze
							ach(17178),	-- The Flowing Forest Flight Reverse: Silver
							ach(17179),	-- The Flowing Forest Flight Reverse: Gold
						},
					}),
					dragonridingrace(72769, {	-- Garden Gallivant - Reverse
						["provider"] = { "n", 194348 },	-- Bronze Timekeeper
						["coord"] = { 39.5, 76.2, THALDRASZUS },
						["groups"] = {
							ach(17189),	-- Garden Gallivant Reverse: Bronze
							ach(17190),	-- Garden Gallivant Reverse: Silver
							ach(17191),	-- Garden Gallivant Reverse: Gold
						},
					}),
					dragonridingrace(72792, {	-- Tyrhold Trial - Reverse
						["provider"] = { "n", 193651 },	-- Bronze Timekeeper
						["coord"] = { 57.2, 66.9, THALDRASZUS },
						["groups"] = {
							ach(17180),	-- Tyrhold Trial Reverse: Bronze
							ach(17181),	-- Tyrhold Trial Reverse: Silver
							ach(17182),	-- Tyrhold Trial Reverse: Gold
						},
					}),
				}),
			})),
		})),
	}),
})));
