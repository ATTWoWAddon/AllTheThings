---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(DRAGON_ISLES, bubbleDown({ ["timeline"] = { ADDED_10_0_2_LAUNCH } }, {
	m(OHNAHRAN_PLAINS, {
		skyriding(n(DRAGONRIDING_RACING, {
			header(HEADERS.Achievement, 15941, {	-- Dragon Racing Completionist: Gold
				n(ACHIEVEMENTS, {
					ach(15918, {	-- Ohn'ahran Plains: Bronze
						-- Meta Achievement
						["sym"] = {{"meta_achievement",
							15775,	-- Emerald Garden Ascent: Bronze
							15763,	-- Fen Flythrough: Bronze
							15782,	-- Maruukai Dash: Bronze
							15785,	-- Mirror of the Sky Dash: Bronze
							15769,	-- Ravine River Run: Bronze
							16302,	-- River Rapids Route: Bronze
							15757,	-- Sundapple Copse Circuit: Bronze
						}},
					}),
					ach(15919, {	-- Ohn'ahran Plains: Silver
						-- Meta Achievement
						["sym"] = {{"meta_achievement",
							15776,	-- Emerald Garden Ascent: Silver
							15764,	-- Fen Flythrough: Silver
							15783,	-- Maruukai Dash: Silver
							15786,	-- Mirror of the Sky Dash: Silver
							15770,	-- Ravine River Run: Silver
							16303,	-- River Rapids Route: Silver
							15758,	-- Sundapple Copse Circuit: Silver
						}},
						["groups"] = {
							i(197599),	-- Windborne Velocidrake: Red Hair (MM!)
						},
					}),
					ach(15920, {	-- Ohn'ahran Plains: Gold
						-- Meta Achievement
						["sym"] = {{"meta_achievement",
							15777,	-- Emerald Garden Ascent: Gold
							15765,	-- Fen Flythrough: Gold
							15784,	-- Maruukai Dash: Gold
							15787,	-- Mirror of the Sky Dash: Gold
							15771,	-- Ravine River Run: Gold
							16304,	-- River Rapids Route: Gold
							15759,	-- Sundapple Copse Circuit: Gold
						}},
					}),
					ach(15930, {	-- Ohn'ahran Plains Advanced: Bronze
						-- Meta Achievement
						["sym"] = {{"meta_achievement",
							15778,	-- Emerald Garden Ascent Advanced: Bronze
							15766,	-- Fen Flythrough Advanced: Bronze
							15772,	-- Ravine River Run Advanced: Bronze
							16305,	-- River Rapids Route Advanced: Bronze
							15760,	-- Sundapple Copse Circuit Advanced: Bronze
						}},
					}),
					ach(15931, {	-- Ohn'ahran Plains Advanced: Silver
						-- Meta Achievement
						["sym"] = {{"meta_achievement",
							15779,	-- Emerald Garden Ascent Advanced: Silver
							15767,	-- Fen Flythrough Advanced: Silver
							15773,	-- Ravine River Run Advanced: Silver
							16306,	-- River Rapids Route Advanced: Silver
							15761,	-- Sundapple Copse Circuit Advanced: Silver
						}},
						["groups"] = {
							i(197580),	-- Windborne Velocidrake: Gold and Red Armor (MM!)
						},
					}),
					ach(15932, {	-- Ohn'ahran Plains Advanced: Gold
						-- Meta Achievement
						["sym"] = {{"meta_achievement",
							15780,	-- Emerald Garden Ascent Advanced: Gold
							15768,	-- Fen Flythrough Advanced: Gold
							15774,	-- Ravine River Run Advanced: Gold
							16307,	-- River Rapids Route Advanced: Gold
							15762,	-- Sundapple Copse Circuit Advanced: Gold
						}},
					}),
				}),
				n(QUESTS, {
					dragonridingrace(66885, {	-- Emerald Garden Ascent
						["provider"] = { "n", 191247 },	-- Bronze Timekeeper
						["coord"] = { 25.7, 55.1, OHNAHRAN_PLAINS },
						["groups"] = {
							ach(15775),	-- Emerald Garden Ascent: Bronze
							ach(15776),	-- Emerald Garden Ascent: Silver
							ach(15777),	-- Emerald Garden Ascent: Gold
						},
					}),
					dragonridingrace(66886, {	-- Emerald Garden Ascent - Advanced
						["provider"] = { "n", 191247 },	-- Bronze Timekeeper
						["coord"] = { 25.7, 55.1, OHNAHRAN_PLAINS },
						["groups"] = {
							ach(15778),	-- Emerald Garden Ascent Advanced: Bronze
							ach(15779),	-- Emerald Garden Ascent Advanced: Silver
							ach(15780),	-- Emerald Garden Ascent Advanced: Gold
						},
					}),
					dragonridingrace(66877, {	-- Fen Flythrough
						["provider"] = { "n", 191121 },	-- Bronze Timekeeper
						["coord"] = { 86.3, 35.8, OHNAHRAN_PLAINS },
						["groups"] = {
							ach(15763),	-- Fen Flythrough: Bronze
							ach(15764),	-- Fen Flythrough: Silver
							ach(15765),	-- Fen Flythrough: Gold
						},
					}),
					dragonridingrace(66878, {	-- Fen Flythrough - Advanced
						["provider"] = { "n", 191121 },	-- Bronze Timekeeper
						["coord"] = { 86.3, 35.8, OHNAHRAN_PLAINS },
						["groups"] = {
							ach(15766),	-- Fen Flythrough Advanced: Bronze
							ach(15767),	-- Fen Flythrough Advanced: Silver
							ach(15768),	-- Fen Flythrough Advanced: Gold
						},
					}),
					dragonridingrace(66921, {	-- Maruukai Dash
						["provider"] = { "n", 191422 },	-- Bronze Timekeeper
						["coord"] = { 59.9, 35.6, OHNAHRAN_PLAINS },
						["groups"] = {
							ach(15782),	-- Maruukai Dash: Bronze
							ach(15783),	-- Maruukai Dash: Silver
							ach(15784),	-- Maruukai Dash: Gold
						},
					}),
					dragonridingrace(66933, {	-- Mirror of Sky Dash
						["provider"] = { "n", 191511 },	-- Bronze Timekeeper
						["coord"] = { 47.5, 70.6, OHNAHRAN_PLAINS },
						["groups"] = {
							ach(15785),	-- Mirror of the Sky Dash: Bronze
							ach(15786),	-- Mirror of the Sky Dash: Silver
							ach(15787),	-- Mirror of the Sky Dash: Gold
						},
					}),
					dragonridingrace(66880, {	-- Ravine River Run
						["provider"] = { "n", 191165 },	-- Bronze Timekeeper
						["coord"] = { 80.9, 72.2, OHNAHRAN_PLAINS },
						["groups"] = {
							ach(15769),	-- Ravine River Run: Bronze
							ach(15770),	-- Ravine River Run: Silver
							ach(15771),	-- Ravine River Run: Gold
						},
					}),
					dragonridingrace(66881, {	-- Ravine River Run - Advanced
						["provider"] = { "n", 191165 },	-- Bronze Timekeeper
						["coord"] = { 80.9, 72.2, OHNAHRAN_PLAINS },
						["groups"] = {
							ach(15772),	-- Ravine River Run Advanced: Bronze
							ach(15773),	-- Ravine River Run Advanced: Silver
							ach(15774),	-- Ravine River Run Advanced: Gold
						},
					}),
					dragonridingrace(70710, {	-- River Rapids Route
						["provider"] = { "n", 196092 },	-- Bronze Timekeeper
						["coord"] = { 43.8, 66.8, OHNAHRAN_PLAINS },
						["groups"] = {
							ach(16302),	-- River Rapids Route: Bronze
							ach(16303),	-- River Rapids Route: Silver
							ach(16304),	-- River Rapids Route: Gold
						},
					}),
					dragonridingrace(70711, {	-- River Rapids Route - Advanced
						["provider"] = { "n", 196092 },	-- Bronze Timekeeper
						["coord"] = { 43.8, 66.8, OHNAHRAN_PLAINS },
						["groups"] = {
							ach(16305),	-- River Rapids Route Advanced: Bronze
							ach(16306),	-- River Rapids Route Advanced: Silver
							ach(16307),	-- River Rapids Route Advanced: Gold
						},
					}),
					dragonridingrace(66835, {	-- Sundapple Copse Circuit
						["provider"] = { "n", 190928 },	-- Bronze Timekeeper
						["coord"] = { 63.7, 30.5, OHNAHRAN_PLAINS },
						["groups"] = {
							ach(15757),	-- Sundapple Copse Circuit: Bronze
							ach(15758),	-- Sundapple Copse Circuit: Silver
							ach(15759),	-- Sundapple Copse Circuit: Gold
						},
					}),
					dragonridingrace(66836, {	-- Sundapple Copse Circuit - Advanced
						["provider"] = { "n", 190928 },	-- Bronze Timekeeper
						["coord"] = { 63.7, 30.5, OHNAHRAN_PLAINS },
						["groups"] = {
							ach(15760),	-- Sundapple Copse Circuit Advanced: Bronze
							ach(15761),	-- Sundapple Copse Circuit Advanced: Silver
							ach(15762),	-- Sundapple Copse Circuit Advanced: Gold
						},
					}),
				}),
			}),
			header(HEADERS.Achievement, 18792, bubbleDownSelf({ ["timeline"] = ADDED_10_1_7 }, {	-- Dragonriding Challenge: Dragon Isles: Gold
				n(ACHIEVEMENTS, {
					ach(18754, {	-- Ohn'ahran Plains Challenge: Bronze
						-- Meta Achievement
						["sym"] = {{"meta_achievement",
							17935,	-- Emerald Garden Ascent Challenge: Bronze
							17938,	-- Emerald Garden Ascent Reverse Challenge: Bronze
							17922,	-- Fen Flythrough Challenge: Bronze
							17925,	-- Fen Flythrough Reverse Challenge: Bronze
							17947,	-- Maruukai Dash Challenge: Bronze
							17950,	-- Mirror of the Sky Dash Challenge: Bronze
							17928,	-- Ravine River Run Challenge: Bronze
							17931,	-- Ravine River Run Reverse Challenge: Bronze
							17941,	-- River Rapids Route Challenge: Bronze
							17944,	-- River Rapids Route Reverse Challenge: Bronze
							17912,	-- Sundapple Copse Circuit Challenge: Bronze
							17919,	-- Sundapple Copse Circuit Reverse Challenge: Bronze
						}},
					}),
					ach(18755, {	-- Ohn'ahran Plains Challenge: Silver
						-- Meta Achievement
						["sym"] = {{"meta_achievement",
							17936,	-- Emerald Garden Ascent Challenge: Silver
							17939,	-- Emerald Garden Ascent Reverse Challenge: Silver
							17923,	-- Fen Flythrough Challenge: Silver
							17926,	-- Fen Flythrough Reverse Challenge: Silver
							17948,	-- Maruukai Dash Challenge: Silver
							17951,	-- Mirror of the Sky Dash Challenge: Silver
							17929,	-- Ravine River Run Challenge: Silver
							17932,	-- Ravine River Run Reverse Challenge: Silver
							17942,	-- River Rapids Route Challenge: Silver
							17945,	-- River Rapids Route Reverse Challenge: Silver
							17913,	-- Sundapple Copse Circuit Challenge: Silver
							17920,	-- Sundapple Copse Circuit Reverse Challenge: Silver
						}},
					}),
					ach(18756, {	-- Ohn'ahran Plains Challenge: Gold
						-- Meta Achievement
						["sym"] = {{"meta_achievement",
							17937,	-- Emerald Garden Ascent Challenge: Gold
							17940,	-- Emerald Garden Ascent Reverse Challenge: Gold
							17924,	-- Fen Flythrough Challenge: Gold
							17927,	-- Fen Flythrough Reverse Challenge: Gold
							17949,	-- Maruukai Dash Challenge: Gold
							17952,	-- Mirror of the Sky Dash Challenge: Gold
							17930,	-- Ravine River Run Challenge: Gold
							17933,	-- Ravine River Run Reverse Challenge: Gold
							17943,	-- River Rapids Route Challenge: Gold
							17946,	-- River Rapids Route Reverse Challenge: Gold
							17914,	-- Sundapple Copse Circuit Challenge: Gold
							17921,	-- Sundapple Copse Circuit Reverse Challenge: Gold
						}},
					}),
				}),
				n(QUESTS, {
					dragonridingrace(75799, {	-- Emerald Garden Ascent - Challenge
						["provider"] = { "n", 191247 },	-- Bronze Timekeeper
						["coord"] = { 25.7, 55.1, OHNAHRAN_PLAINS },
						["groups"] = {
							ach(17935),	-- Emerald Garden Ascent Challenge: Bronze
							ach(17936),	-- Emerald Garden Ascent Challenge: Silver
							ach(17937),	-- Emerald Garden Ascent Challenge: Gold
						},
					}),
					dragonridingrace(75800, {	-- Emerald Garden Ascent - Reverse Challenge
						["provider"] = { "n", 191247 },	-- Bronze Timekeeper
						["coord"] = { 25.7, 55.1, OHNAHRAN_PLAINS },
						["groups"] = {
							ach(17938),	-- Emerald Garden Ascent Reverse Challenge: Bronze
							ach(17939),	-- Emerald Garden Ascent Reverse Challenge: Silver
							ach(17940),	-- Emerald Garden Ascent Reverse Challenge: Gold
						},
					}),
					dragonridingrace(75795, {	-- Fen Flythrough - Challenge
						["provider"] = { "n", 191121 },	-- Bronze Timekeeper
						["coord"] = { 86.3, 35.8, OHNAHRAN_PLAINS },
						["groups"] = {
							ach(17922),	-- Fen Flythrough Challenge: Bronze
							ach(17923),	-- Fen Flythrough Challenge: Silver
							ach(17924),	-- Fen Flythrough Challenge: Gold
						},
					}),
					dragonridingrace(75796, {	-- Fen Flythrough - Reverse Challenge
						["provider"] = { "n", 191121 },	-- Bronze Timekeeper
						["coord"] = { 86.3, 35.8, OHNAHRAN_PLAINS },
						["groups"] = {
							ach(17925),	-- Fen Flythrough Reverse Challenge: Bronze
							ach(17926),	-- Fen Flythrough Reverse Challenge: Silver
							ach(17927),	-- Fen Flythrough Reverse Challenge: Gold
						},
					}),
					dragonridingrace(75801, {	-- Maruukai Dash - Challenge
						["provider"] = { "n", 191422 },	-- Bronze Timekeeper
						["coord"] = { 59.9, 35.6, OHNAHRAN_PLAINS },
						["groups"] = {
							ach(17947),	-- Maruukai Dash Challenge: Bronze
							ach(17948),	-- Maruukai Dash Challenge: Silver
							ach(17949),	-- Maruukai Dash Challenge: Gold
						},
					}),
					dragonridingrace(75802, {	-- Mirror of the Sky Dash - Challenge
						["provider"] = { "n", 191511 },	-- Bronze Timekeeper
						["coord"] = { 47.5, 70.6, OHNAHRAN_PLAINS },
						["groups"] = {
							ach(17950),	-- Mirror of the Sky Dash Challenge: Bronze
							ach(17951),	-- Mirror of the Sky Dash Challenge: Silver
							ach(17952),	-- Mirror of the Sky Dash Challenge: Gold
						},
					}),
					dragonridingrace(75797, {	-- Ravine River Run - Challenge
						["provider"] = { "n", 191165 },	-- Bronze Timekeeper
						["coord"] = { 80.9, 72.2, OHNAHRAN_PLAINS },
						["groups"] = {
							ach(17928),	-- Ravine River Run Challenge: Bronze
							ach(17929),	-- Ravine River Run Challenge: Silver
							ach(17930),	-- Ravine River Run Challenge: Gold
						},
					}),
					dragonridingrace(75798, {	-- Ravine River Run - Reverse Challenge
						["provider"] = { "n", 191165 },	-- Bronze Timekeeper
						["coord"] = { 80.9, 72.2, OHNAHRAN_PLAINS },
						["groups"] = {
							ach(17931),	-- Ravine River Run Reverse Challenge: Bronze
							ach(17932),	-- Ravine River Run Reverse Challenge: Silver
							ach(17933),	-- Ravine River Run Reverse Challenge: Gold
						},
					}),
					dragonridingrace(75803, {	-- River Rapids Route - Challenge
						["provider"] = { "n", 196092 },	-- Bronze Timekeeper
						["coord"] = { 43.8, 66.8, OHNAHRAN_PLAINS },
						["groups"] = {
							ach(17941),	-- River Rapids Route Challenge: Bronze
							ach(17942),	-- River Rapids Route Challenge: Silver
							ach(17943),	-- River Rapids Route Challenge: Gold
						},
					}),
					dragonridingrace(75804, {	-- River Rapids Route - Reverse Challenge
						["provider"] = { "n", 196092 },	-- Bronze Timekeeper
						["coord"] = { 43.8, 66.8, OHNAHRAN_PLAINS },
						["groups"] = {
							ach(17944),	-- River Rapids Route Reverse Challenge: Bronze
							ach(17945),	-- River Rapids Route Reverse Challenge: Silver
							ach(17946),	-- River Rapids Route Reverse Challenge: Gold
						},
					}),
					dragonridingrace(75793, {	-- Sundapple Copse - Circuit Challenge
						["provider"] = { "n", 190928 },	-- Bronze Timekeeper
						["coord"] = { 63.7, 30.5, OHNAHRAN_PLAINS },
						["groups"] = {
							ach(17912),	-- Sundapple Copse Circuit Challenge: Bronze
							ach(17913),	-- Sundapple Copse Circuit Challenge: Silver
							ach(17914),	-- Sundapple Copse Circuit Challenge: Gold
						},
					}),
					dragonridingrace(75794, {	-- Sundapple Copse - Circuit Reverse Challenge
						["provider"] = { "n", 190928 },	-- Bronze Timekeeper
						["coord"] = { 63.7, 30.5, OHNAHRAN_PLAINS },
						["groups"] = {
							ach(17919),	-- Sundapple Copse Circuit Reverse Challenge: Bronze
							ach(17920),	-- Sundapple Copse Circuit Reverse Challenge: Silver
							ach(17921),	-- Sundapple Copse Circuit Reverse Challenge: Gold
						},
					}),
				}),
			})),
			header(HEADERS.Achievement, 17332, bubbleDownSelf({ ["timeline"] = ADDED_10_0_5 }, {	-- Reverse Racer: Gold
				n(ACHIEVEMENTS, {
					ach(17198, {	-- Ohn'ahran Plains Reverse: Bronze
						-- Meta Achievement
						["sym"] = {{"meta_achievement",
							17153,	-- Emerald Garden Ascent Reverse: Bronze
							17147,	-- Fen Flythrough Reverse: Bronze
							17150,	-- Ravine River Run Reverse: Bronze
							17156,	-- River Rapids Route Reverse: Bronze
							17144,	-- Sundapple Copse Circuit Reverse: Bronze
						}},
					}),
					ach(17199, {	-- Ohn'ahran Plains Reverse: Silver
						-- Meta Achievement
						["sym"] = {{"meta_achievement",
							17154,	-- Emerald Garden Ascent Reverse: Silver
							17148,	-- Fen Flythrough Reverse: Silver
							17151,	-- Ravine River Run Reverse: Silver
							17157,	-- River Rapids Route Reverse: Silver
							17145,	-- Sundapple Copse Circuit Reverse: Silver
						}},
					}),
					ach(17200, {	-- Ohn'ahran Plains Reverse: Gold
						-- Meta Achievement
						["sym"] = {{"meta_achievement",
							17155,	-- Emerald Garden Ascent Reverse: Gold
							17149,	-- Fen Flythrough Reverse: Gold
							17152,	-- Ravine River Run Reverse: Gold
							17158,	-- River Rapids Route Reverse: Gold
							17146,	-- Sundapple Copse Circuit Reverse: Gold
						}},
					}),
				}),
				n(QUESTS, {
					dragonridingrace(72805, {	-- Emerald Garden Ascent - Reverse
						["provider"] = { "n", 191247 },	-- Bronze Timekeeper
						["coord"] = { 25.7, 55.1, OHNAHRAN_PLAINS },
						["groups"] = {
							ach(17153),	-- Emerald Garden Ascent Reverse: Bronze
							ach(17154),	-- Emerald Garden Ascent Reverse: Silver
							ach(17155),	-- Emerald Garden Ascent Reverse: Gold
						},
					}),
					dragonridingrace(72802, {	-- Fen Flythrough - Reverse
						["provider"] = { "n", 191121 },	-- Bronze Timekeeper
						["coord"] = { 86.3, 35.8, OHNAHRAN_PLAINS },
						["groups"] = {
							ach(17147),	-- Fen Flythrough Reverse: Gold
							ach(17148),	-- Fen Flythrough Reverse: Silver
							ach(17149),	-- Fen Flythrough Reverse: Gold
						},
					}),
					dragonridingrace(72803, {	-- Ravine River Run - Reverse
						["provider"] = { "n", 191165 },	-- Bronze Timekeeper
						["coord"] = { 80.9, 72.2, OHNAHRAN_PLAINS },
						["groups"] = {
							ach(17150),	-- Ravine River Run Reverse: Bronze
							ach(17151),	-- Ravine River Run Reverse: Silver
							ach(17152),	-- Ravine River Run Reverse: Gold
						},
					}),
					dragonridingrace(72807, {	-- River Rapids Route - Reverse
						["provider"] = { "n", 196092 },	-- Bronze Timekeeper
						["coord"] = { 43.8, 66.8, OHNAHRAN_PLAINS },
						["groups"] = {
							ach(17156),	-- River Rapids Route Reverse: Bronze
							ach(17157),	-- River Rapids Route Reverse: Silver
							ach(17158),	-- River Rapids Route Reverse: Gold
						},
					}),
					dragonridingrace(72801, {	-- Sundapple Copse Circuit - Reverse
						["provider"] = { "n", 190928 },	-- Bronze Timekeeper
						["coord"] = { 63.7, 30.5, OHNAHRAN_PLAINS },
						["groups"] = {
							ach(17144),	-- Sundapple Copse Circuit Reverse: Bronze
							ach(17145),	-- Sundapple Copse Circuit Reverse: Silver
							ach(17146),	-- Sundapple Copse Circuit Reverse: Gold
						},
					}),
				}),
			})),
		})),
	}),
})));
