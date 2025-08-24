---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(DRAGON_ISLES, bubbleDown({ ["timeline"] = { ADDED_10_0_2_LAUNCH } }, {
	m(THE_WAKING_SHORES, {
		skyriding(n(DRAGONRIDING_RACING, {
			header(HEADERS.Achievement, 15941, {	-- Dragon Racing Completionist: Gold
				n(ACHIEVEMENTS, {
					ach(15915, {	-- Waking Shores: Bronze
						-- Meta Achievement
						["sym"] = {{"meta_achievement",
							15730,	-- Apex Canopy River Run: Bronze
							15724,	-- Emberflow Flight: Bronze
							15705,	-- Flashfrost Flyover: Bronze
							15696,	-- Ruby Lifeshrine Loop: Bronze
							15736,	-- Uktulut Coaster: Bronze
							15718,	-- Wild Preserve Circuit: Bronze
							15712,	-- Wild Preserve Slalom: Bronze
							15742,	-- Wingrest Roundabout: Bronze
						}},
					}),
					ach(15916, {	-- Waking Shores: Silver
						-- Meta Achievement
						["sym"] = {{"meta_achievement",
							15731,	-- Apex Canopy River Run: Silver
							15725,	-- Emberflow Flight: Silver
							15706,	-- Flashfrost Flyover: Silver
							15697,	-- Ruby Lifeshrine Loop: Silver
							15737,	-- Uktulut Coaster: Silver
							15719,	-- Wild Preserve Circuit: Silver
							15713,	-- Wild Preserve Slalom: Silver
							15743,	-- Wingrest Roundabout: Silver
						}},
						["groups"] = {
							i(197370),	-- Renewed Proto-Drake: Red Hair (MM!)
						},
					}),
					ach(15917, {	-- Waking Shores: Gold
						-- Meta Achievement
						["sym"] = {{"meta_achievement",
							15732,	-- Apex Canopy River Run: Gold
							15726,	-- Emberflow Flight: Gold
							15707,	-- Flashfrost Flyover: Gold
							15698,	-- Ruby Lifeshrine Loop: Gold
							15738,	-- Uktulut Coaster: Gold
							15720,	-- Wild Preserve Circuit: Gold
							15714,	-- Wild Preserve Slalom: Gold
							15744,	-- Wingrest Roundabout: Gold
						}},
					}),
					ach(15927, {	-- Waking Shores Advanced: Bronze
						-- Meta Achievement
						["sym"] = {{"meta_achievement",
							15733,	-- Apex Canopy River Run Advanced: Bronze
							15727,	-- Emberflow Flight Advanced: Bronze
							15709,	-- Flashfrost Flyover Advanced: Bronze
							15702,	-- Ruby Lifeshrine Loop Advanced: Bronze
							15739,	-- Uktulut Coaster Advanced: Bronze
							15721,	-- Wild Preserve Circuit Advanced: Bronze
							15715,	-- Wild Preserve Slalom Advanced: Bronze
							15745,	-- Wingrest Roundabout Advanced: Bronze
						}},
					}),
					ach(15928, {	-- Waking Shores Advanced: Silver
						-- Meta Achievement
						["sym"] = {{"meta_achievement",
							15734,	-- Apex Canopy River Run Advanced: Silver
							15728,	-- Emberflow Flight Advanced: Silver
							15710,	-- Flashfrost Flyover Advanced: Silver
							15703,	-- Ruby Lifeshrine Loop Advanced: Silver
							15740,	-- Uktulut Coaster Advanced: Silver
							15722,	-- Wild Preserve Circuit Advanced: Silver
							15716,	-- Wild Preserve Slalom Advanced: Silver
							15746,	-- Wingrest Roundabout Advanced: Silver
						}},
						["groups"] = {
							i(197351),	-- Renewed Proto-Drake: Gold and Red Armor (MM!)
						},
					}),
					ach(15929, {	-- Waking Shores Advanced: Gold
						-- Meta Achievement
						["sym"] = {{"meta_achievement",
							15735,	-- Apex Canopy River Run Advanced: Gold
							15729,	-- Emberflow Flight Advanced: Gold
							15711,	-- Flashfrost Flyover Advanced: Gold
							15704,	-- Ruby Lifeshrine Loop Advanced: Gold
							15741,	-- Uktulut Coaster Advanced: Gold
							15723,	-- Wild Preserve Circuit Advanced: Gold
							15717,	-- Wild Preserve Slalom Advanced: Gold
							15747,	-- Wingrest Roundabout Advanced: Gold
						}},
					}),
				}),
				n(QUESTS, {
					dragonridingrace(66732, {	-- Apex Canopy River Run
						["provider"] = { "n", 190551 },	-- Bronze Timekeeper
						["coord"] = { 23.3, 84.3, THE_WAKING_SHORES },
						["groups"] = {
							ach(15730),	-- Apex Canopy River Run: Bronze
							ach(15731),	-- Apex Canopy River Run: Silver
							ach(15732),	-- Apex Canopy River Run: Gold
						},
					}),
					dragonridingrace(66733, {	-- Apex Canopy River Run - Advanced
						["provider"] = { "n", 190551 },	-- Bronze Timekeeper
						["coord"] = { 23.3, 84.3, THE_WAKING_SHORES },
						["groups"] = {
							ach(15733),	-- Apex Canopy River Run Advanced: Bronze
							ach(15734),	-- Apex Canopy River Run Advanced: Silver
							ach(15735),	-- Apex Canopy River Run Advanced: Gold
						},
					}),
					dragonridingrace(66727, {	-- Emberflow Flight
						["provider"] = { "n", 190519 },	-- Bronze Timekeeper
						["coord"] = { 41.8, 67.2, THE_WAKING_SHORES },
						["groups"] = {
							ach(15724),	-- Emberflow Flight: Bronze
							ach(15725),	-- Emberflow Flight: Silver
							ach(15726),	-- Emberflow Flight: Gold
						},
					}),
					dragonridingrace(66728, {	-- Emberflow Flight - Advanced
						["provider"] = { "n", 190519 },	-- Bronze Timekeeper
						["coord"] = { 41.8, 67.2, THE_WAKING_SHORES },
						["groups"] = {
							ach(15727),	-- Emberflow Flight Advanced: Bronze
							ach(15728),	-- Emberflow Flight Advanced: Silver
							ach(15729),	-- Emberflow Flight Advanced: Gold
						},
					}),
					dragonridingrace(66710, {	-- Flashfrost Flyover
						["provider"] = { "n", 190326 },	-- Bronze Timekeeper
						["coord"] = { 62.8, 74.0, THE_WAKING_SHORES },
						["groups"] = {
							ach(15705),	-- Flashfrost Flyover: Bronze
							ach(15706),	-- Flashfrost Flyover: Silver
							ach(15707),	-- Flashfrost Flyover: Gold
						},
					}),
					dragonridingrace(66712, {	-- Flashfrost Flyover - Advanced
						["provider"] = { "n", 190326 },	-- Bronze Timekeeper
						["coord"] = { 62.8, 74.0, THE_WAKING_SHORES },
						["groups"] = {
							ach(15709),	-- Flashfrost Flyover Advanced: Bronze
							ach(15710),	-- Flashfrost Flyover Advanced: Silver
							ach(15711),	-- Flashfrost Flyover Advanced: Gold
						},
					}),
					dragonridingrace(66679, {	-- Ruby Lifeshrine Loop
						["provider"] = { "n", 190123 },	-- Bronze Timekeeper
						["coord"] = { 63.3, 70.9, THE_WAKING_SHORES },
						["groups"] = {
							ach(15696),	-- Ruby Lifeshrine Loop: Bronze
							ach(15697),	-- Ruby Lifeshrine Loop: Silver
							ach(15698),	-- Ruby Lifeshrine Loop: Gold
						},
					}),
					dragonridingrace(66692, {	-- Ruby Lifeshrine Loop - Advanced
						["provider"] = { "n", 190123 },	-- Bronze Timekeeper
						["coord"] = { 63.3, 70.9, THE_WAKING_SHORES },
						["groups"] = {
							ach(15702),	-- Ruby Lifeshrine Loop Advanced: Bronze
							ach(15703),	-- Ruby Lifeshrine Loop Advanced: Silver
							ach(15704),	-- Ruby Lifeshrine Loop Advanced: Gold
						},
					}),
					dragonridingrace(66777, {	-- Uktulut Coaster
						["provider"] = { "n", 190667 },	-- Bronze Timekeeper
						["coord"] = { 55.4, 41.1, THE_WAKING_SHORES },
						["groups"] = {
							ach(15736),	-- Uktulut Coaster: Bronze
							ach(15737),	-- Uktulut Coaster: Silver
							ach(15738),	-- Uktulut Coaster: Gold
						},
					}),
					dragonridingrace(66778, {	-- Uktulut Coaster - Advanced
						["provider"] = { "n", 190667 },	-- Bronze Timekeeper
						["coord"] = { 55.4, 41.1, THE_WAKING_SHORES },
						["groups"] = {
							ach(15739),	-- Uktulut Coaster Advanced: Bronze
							ach(15740),	-- Uktulut Coaster Advanced: Silver
							ach(15741),	-- Uktulut Coaster Advanced: Gold
						},
					}),
					dragonridingrace(66725, {	-- Wild Preserve Circuit
						["provider"] = { "n", 190503 },	-- Bronze Timekeeper
						["coord"] = { 42.6, 94.5, THE_WAKING_SHORES },
						["groups"] = {
							ach(15718),	-- Wild Preserve Circuit: Bronze
							ach(15719),	-- Wild Preserve Circuit: Silver
							ach(15720),	-- Wild Preserve Circuit: Gold
						},
					}),
					dragonridingrace(66726, {	-- Wild Preserve Circuit - Advanced
						["provider"] = { "n", 190503 },	-- Bronze Timekeeper
						["coord"] = { 42.6, 94.5, THE_WAKING_SHORES },
						["groups"] = {
							ach(15721),	-- Wild Preserve Circuit Advanced: Bronze
							ach(15722),	-- Wild Preserve Circuit Advanced: Silver
							ach(15723),	-- Wild Preserve Circuit Advanced: Gold
						},
					}),
					dragonridingrace(66721, {	-- Wild Preserve Slalom
						["provider"] = { "n", 190473 },	-- Bronze Timekeeper
						["coord"] = { 47.0, 85.6, THE_WAKING_SHORES },
						["groups"] = {
							ach(15712),	-- Wild Preserve Slalom: Bronze
							ach(15713),	-- Wild Preserve Slalom: Silver
							ach(15714),	-- Wild Preserve Slalom: Gold
						},
					}),
					dragonridingrace(66722, {	-- Wild Preserve Slalom - Advanced
						["provider"] = { "n", 190473 },	-- Bronze Timekeeper
						["coord"] = { 47.0, 85.6, THE_WAKING_SHORES },
						["groups"] = {
							ach(15715),	-- Wild Preserve Slalom Advanced: Bronze
							ach(15716),	-- Wild Preserve Slalom Advanced: Silver
							ach(15717),	-- Wild Preserve Slalom Advanced: Gold
						},
					}),
					dragonridingrace(66786, {	-- Wingrest Roundabout
						["provider"] = { "n", 190753 },	-- Bronze Timekeeper
						["coord"] = { 73.2, 33.9, THE_WAKING_SHORES },
						["groups"] = {
							ach(15742),	-- Wingrest Roundabout: Bronze
							ach(15743),	-- Wingrest Roundabout: Silver
							ach(15744),	-- Wingrest Roundabout: Gold
						},
					}),
					dragonridingrace(66787, {	-- Wingrest Roundabout - Advanced
						["provider"] = { "n", 190753 },	-- Bronze Timekeeper
						["coord"] = { 73.2, 33.9, THE_WAKING_SHORES },
						["groups"] = {
							ach(15745),	-- Wingrest Roundabout Advanced: Bronze
							ach(15746),	-- Wingrest Roundabout Advanced: Silver
							ach(15747),	-- Wingrest Roundabout Advanced: Gold
						},
					}),
				}),
			}),
			header(HEADERS.Achievement, 18792, bubbleDownSelf({ ["timeline"] = ADDED_10_1_7 }, {	-- Dragonriding Challenge: Dragon Isles: Gold
				n(ACHIEVEMENTS, {
					ach(18748, {	-- Waking Shores Challenge: Bronze
						-- Meta Achievement
						["sym"] = {{"meta_achievement",
							17871,	-- Apex Canopy River Run Challenge: Bronze
							17874,	-- Apex Canopy River Run Reverse Challenge: Bronze
							17865,	-- Emberflow Flight Challenge: Bronze
							17868,	-- Emberflow Flight Reverse Challenge: Bronze
							17897,	-- Flashfrost Flyover Challenge: Bronze
							17900,	-- Flashfrost Flyover Reverse Challenge: Bronze
							17853,	-- Ruby Lifeshrine Loop Challenge: Bronze
							17856,	-- Ruby Lifeshrine Loop Reverse Challenge: Bronze
							17884,	-- Uktulut Coaster Challenge: Bronze
							17887,	-- Uktulut Coaster Reverse Challenge: Bronze
							17906,	-- Wild Preserve Circuit Challenge: Bronze
							17909,	-- Wild Preserve Circuit Reverse Challenge: Bronze
							17859,	-- Wild Preserve Slalom Challenge: Bronze
							17862,	-- Wild Preserve Slalom Reverse Challenge: Bronze
							17891,	-- Wingrest Roundabout Challenge: Bronze
							17894,	-- Wingrest Roundabout Reverse Challenge: Bronze
						}},
					}),
					ach(18749, {	-- Waking Shores Challenge: Silver
						-- Meta Achievement
						["sym"] = {{"meta_achievement",
							17872,	-- Apex Canopy River Run Challenge: Silver
							17875,	-- Apex Canopy River Run Reverse Challenge: Silver
							17866,	-- Emberflow Flight Challenge: Silver
							17869,	-- Emberflow Flight Reverse Challenge: Silver
							17898,	-- Flashfrost Flyover Challenge: Silver
							17901,	-- Flashfrost Flyover Reverse Challenge: Silver
							17854,	-- Ruby Lifeshrine Loop Challenge: Silver
							17857,	-- Ruby Lifeshrine Loop Reverse Challenge: Silver
							17885,	-- Uktulut Coaster Challenge: Silver
							17888,	-- Uktulut Coaster Reverse Challenge: Silver
							17907,	-- Wild Preserve Circuit Challenge: Silver
							17910,	-- Wild Preserve Circuit Reverse Challenge: Silver
							17860,	-- Wild Preserve Slalom Challenge: Silver
							17863,	-- Wild Preserve Slalom Reverse Challenge: Silver
							17892,	-- Wingrest Roundabout Challenge: Silver
							17895,	-- Wingrest Roundabout Reverse Challenge: Silver
						}},
					}),
					ach(18750, {	-- Waking Shores Challenge: Gold
						-- Meta Achievement
						["sym"] = {{"meta_achievement",
							17873,	-- Apex Canopy River Run Challenge: Gold
							17876,	-- Apex Canopy River Run Reverse Challenge: Gold
							17867,	-- Emberflow Flight Challenge: Gold
							17870,	-- Emberflow Flight Reverse Challenge: Gold
							17899,	-- Flashfrost Flyover Challenge: Gold
							17902,	-- Flashfrost Flyover Reverse Challenge: Gold
							17855,	-- Ruby Lifeshrine Loop Challenge: Gold
							17858,	-- Ruby Lifeshrine Loop Reverse Challenge: Gold
							17886,	-- Uktulut Coaster Challenge: Gold
							17889,	-- Uktulut Coaster Reverse Challenge: Gold
							17908,	-- Wild Preserve Circuit Challenge: Gold
							17911,	-- Wild Preserve Circuit Reverse Challenge: Gold
							17861,	-- Wild Preserve Slalom Challenge: Gold
							17864,	-- Wild Preserve Slalom Reverse Challenge: Gold
							17893,	-- Wingrest Roundabout Challenge: Gold
							17896,	-- Wingrest Roundabout Reverse Challenge: Gold
						}},
					}),
				}),
				n(QUESTS, {
					dragonridingrace(75782, {	-- Apex Canopy River Run - Challenge
						["provider"] = { "n", 190551 },	-- Bronze Timekeeper
						["coord"] = { 23.3, 84.3, THE_WAKING_SHORES },
						["groups"] = {
							ach(17871),	-- Apex Canopy River Run Challenge: Bronze
							ach(17872),	-- Apex Canopy River Run Challenge: Silver
							ach(17873),	-- Apex Canopy River Run Challenge: Gold
						},
					}),
					dragonridingrace(75783, {	-- Apex Canopy River Run - Reverse Challenge
						["provider"] = { "n", 190551 },	-- Bronze Timekeeper
						["coord"] = { 23.3, 84.3, THE_WAKING_SHORES },
						["groups"] = {
							ach(17874),	-- Apex Canopy River Run Reverse Challenge: Bronze
							ach(17875),	-- Apex Canopy River Run Reverse Challenge: Silver
							ach(17876),	-- Apex Canopy River Run Reverse Challenge: Gold
						},
					}),
					dragonridingrace(75780, {	-- Emberflow Flight - Challenge
						["provider"] = { "n", 190519 },	-- Bronze Timekeeper
						["coord"] = { 41.8, 67.2, THE_WAKING_SHORES },
						["groups"] = {
							ach(17865),	-- Emberflow Flight Challenge: Bronze
							ach(17866),	-- Emberflow Flight Challenge: Silver
							ach(17867),	-- Emberflow Flight Challenge: Gold
						},
					}),
					dragonridingrace(75781, {	-- Emberflow Flight - Reverse Challenge
						["provider"] = { "n", 190519 },	-- Bronze Timekeeper
						["coord"] = { 41.8, 67.2, THE_WAKING_SHORES },
						["groups"] = {
							ach(17868),	-- Emberflow Flight Reverse Challenge: Bronze
							ach(17869),	-- Emberflow Flight Reverse Challenge: Silver
							ach(17870),	-- Emberflow Flight Reverse Challenge: Gold
						},
					}),
					dragonridingrace(75789, {	-- Flashfrost Flyover - Challenge
						["provider"] = { "n", 190326 },	-- Bronze Timekeeper
						["coord"] = { 62.8, 74.0, THE_WAKING_SHORES },
						["groups"] = {
							ach(17897),	-- Flashfrost Flyover Challenge: Bronze
							ach(17898),	-- Flashfrost Flyover Challenge: Silver
							ach(17899),	-- Flashfrost Flyover Challenge: Gold
						},
					}),
					dragonridingrace(75790, {	-- Flashfrost Flyover - Reverse Challenge
						["provider"] = { "n", 190326 },	-- Bronze Timekeeper
						["coord"] = { 62.8, 74.0, THE_WAKING_SHORES },
						["groups"] = {
							ach(17900),	-- Flashfrost Flyover Reverse Challenge: Bronze
							ach(17901),	-- Flashfrost Flyover Reverse Challenge: Silver
							ach(17902),	-- Flashfrost Flyover Reverse Challenge: Gold
						},
					}),
					dragonridingrace(75776, {	-- Ruby Lifeshrine Loop - Challenge
						["provider"] = { "n", 190123 },	-- Bronze Timekeeper
						["coord"] = { 63.3, 70.9, THE_WAKING_SHORES },
						["groups"] = {
							ach(17853),	-- Ruby Lifeshrine Loop Challenge: Bronze
							ach(17854),	-- Ruby Lifeshrine Loop Challenge: Silver
							ach(17855),	-- Ruby Lifeshrine Loop Challenge: Gold
						},
					}),
					dragonridingrace(75777, {	-- Ruby Lifeshrine Loop - Reverse Challenge
						["provider"] = { "n", 190123 },	-- Bronze Timekeeper
						["coord"] = { 63.3, 70.9, THE_WAKING_SHORES },
						["groups"] = {
							ach(17856),	-- Ruby Lifeshrine Loop Reverse Challenge: Bronze
							ach(17857),	-- Ruby Lifeshrine Loop Reverse Challenge: Silver
							ach(17858),	-- Ruby Lifeshrine Loop Reverse Challenge: Gold
						},
					}),
					dragonridingrace(75785, {	-- Uktulut Coaster - Challenge
						["provider"] = { "n", 190667 },	-- Bronze Timekeeper
						["coord"] = { 55.4, 41.1, THE_WAKING_SHORES },
						["groups"] = {
							ach(17884),	-- Uktulut Coaster Challenge: Bronze
							ach(17885),	-- Uktulut Coaster Challenge: Silver
							ach(17886),	-- Uktulut Coaster Challenge: Gold
						},
					}),
					dragonridingrace(75786, {	-- Uktulut Coaster - Reverse Challenge
						["provider"] = { "n", 190667 },	-- Bronze Timekeeper
						["coord"] = { 55.4, 41.1, THE_WAKING_SHORES },
						["groups"] = {
							ach(17887),	-- Uktulut Coaster Reverse Challenge: Bronze
							ach(17888),	-- Uktulut Coaster Reverse Challenge: Silver
							ach(17889),	-- Uktulut Coaster Reverse Challenge: Gold
						},
					}),
					dragonridingrace(75791, {	-- Wild Preserve Circuit - Challenge
						["provider"] = { "n", 190503 },	-- Bronze Timekeeper
						["coord"] = { 42.6, 94.5, THE_WAKING_SHORES },
						["groups"] = {
							ach(17906),	-- Wild Preserve Circuit Challenge: Bronze
							ach(17907),	-- Wild Preserve Circuit Challenge: Silver
							ach(17908),	-- Wild Preserve Circuit Challenge: Gold
						},
					}),
					dragonridingrace(75792, {	-- Wild Preserve Circuit - Reverse Challenge
						["provider"] = { "n", 190503 },	-- Bronze Timekeeper
						["coord"] = { 42.6, 94.5, THE_WAKING_SHORES },
						["groups"] = {
							ach(17909),	-- Wild Preserve Circuit Reverse Challenge: Bronze
							ach(17910),	-- Wild Preserve Circuit Reverse Challenge: Silver
							ach(17911),	-- Wild Preserve Circuit Reverse Challenge: Gold
						},
					}),
					dragonridingrace(75778, {	-- Wild Preserve Slalom - Challenge
						["provider"] = { "n", 190473 },	-- Bronze Timekeeper
						["coord"] = { 47.0, 85.6, THE_WAKING_SHORES },
						["groups"] = {
							ach(17859),	-- Wild Preserve Slalom Challenge: Bronze
							ach(17860),	-- Wild Preserve Slalom Challenge: Silver
							ach(17861),	-- Wild Preserve Slalom Challenge: Gold
						},
					}),
					dragonridingrace(75779, {	-- Wild Preserve Slalom - Reverse Challenge
						["provider"] = { "n", 190473 },	-- Bronze Timekeeper
						["coord"] = { 47.0, 85.6, THE_WAKING_SHORES },
						["groups"] = {
							ach(17862),	-- Wild Preserve Slalom Reverse Challenge: Bronze
							ach(17863),	-- Wild Preserve Slalom Reverse Challenge: Silver
							ach(17864),	-- Wild Preserve Slalom Reverse Challenge: Gold
						},
					}),
					dragonridingrace(75787, {	-- Wingrest Roundabout - Challenge
						["provider"] = { "n", 190753 },	-- Bronze Timekeeper
						["coord"] = { 73.2, 33.9, THE_WAKING_SHORES },
						["groups"] = {
							ach(17891),	-- Wingrest Roundabout Challenge: Bronze
							ach(17892),	-- Wingrest Roundabout Challenge: Silver
							ach(17893),	-- Wingrest Roundabout Challenge: Gold
						},
					}),
					dragonridingrace(75788, {	-- Wingrest Roundabout - Reverse Challenge
						["provider"] = { "n", 190753 },	-- Bronze Timekeeper
						["coord"] = { 73.2, 33.9, THE_WAKING_SHORES },
						["groups"] = {
							ach(17894),	-- Wingrest Roundabout Reverse Challenge: Bronze
							ach(17895),	-- Wingrest Roundabout Reverse Challenge: Silver
							ach(17896),	-- Wingrest Roundabout Reverse Challenge: Gold
						},
					}),
				}),
			})),
			header(HEADERS.Achievement, 17332, bubbleDownSelf({ ["timeline"] = ADDED_10_0_5 }, {	-- Reverse Racer: Gold
				n(ACHIEVEMENTS, {
					ach(17195, {	-- Waking Shores Reverse: Bronze
						-- Meta Achievement
						["sym"] = {{"meta_achievement",
							17129,	-- Apex Canopy River Run Reverse: Bronze
							17126,	-- Emberflow Flight Reverse: Bronze
							17138,	-- Flashfrost Flyover Reverse: Bronze
							17120,	-- Ruby Lifeshrine Loop Reverse: Bronze
							17132,	-- Uktulut Coaster Reverse: Bronze
							17141,	-- Wild Preserve Circuit Reverse: Bronze
							17123,	-- Wild Preserve Slalom Reverse: Bronze
							17135,	-- Wingrest Roundabout Reverse: Bronze
						}},
					}),
					ach(17196, {	-- Waking Shores Reverse: Silver
						-- Meta Achievement
						["sym"] = {{"meta_achievement",
							17130,	-- Apex Canopy River Run Reverse: Silver
							17127,	-- Emberflow Flight Reverse: Silver
							17139,	-- Flashfrost Flyover Reverse: Silver
							17121,	-- Ruby Lifeshrine Loop Reverse: Silver
							17133,	-- Uktulut Coaster Reverse: Silver
							17142,	-- Wild Preserve Circuit Reverse: Silver
							17124,	-- Wild Preserve Slalom Reverse: Silver
							17136,	-- Wingrest Roundabout Reverse: Silver
						}},
					}),
					ach(17197, {	-- Waking Shores Reverse: Gold
						-- Meta Achievement
						["sym"] = {{"meta_achievement",
							17131,	-- Apex Canopy River Run Reverse: Gold
							17128,	-- Emberflow Flight Reverse: Gold
							17140,	-- Flashfrost Flyover Reverse: Gold
							17122,	-- Ruby Lifeshrine Loop Reverse: Gold
							17134,	-- Uktulut Coaster Reverse: Gold
							17143,	-- Wild Preserve Circuit Reverse: Gold
							17125,	-- Wild Preserve Slalom Reverse: Gold
							17137,	-- Wingrest Roundabout Reverse: Gold
						}},
					}),
				}),
				n(QUESTS, {
					dragonridingrace(72734, {	-- Apex Canopy River Run - Reverse
						["provider"] = { "n", 190551 },	-- Bronze Timekeeper
						["coord"] = { 23.3, 84.3, THE_WAKING_SHORES },
						["groups"] = {
							ach(17129),	-- Apex Canopy River Run Reverse: Bronze
							ach(17130),	-- Apex Canopy River Run Reverse: Silver
							ach(17131),	-- Apex Canopy River Run Reverse: Gold
						},
					}),
					dragonridingrace(72707, {	-- Emberflow Flight - Reverse
						["provider"] = { "n", 190519 },	-- Bronze Timekeeper
						["coord"] = { 41.8, 67.2, THE_WAKING_SHORES },
						["groups"] = {
							ach(17126),	-- Emberflow Flight Reverse: Bronze
							ach(17127),	-- Emberflow Flight Reverse: Silver
							ach(17128),	-- Emberflow Flight Reverse: Gold
						},
					}),
					dragonridingrace(72700, {	-- Flashfrost Flyover - Reverse
						["provider"] = { "n", 190326 },	-- Bronze Timekeeper
						["coord"] = { 62.8, 74.0, THE_WAKING_SHORES },
						["groups"] = {
							ach(17138),	-- Flashfrost Flyover Reverse: Bronze
							ach(17139),	-- Flashfrost Flyover Reverse: Silver
							ach(17140),	-- Flashfrost Flyover Reverse: Gold
						},
					}),
					dragonridingrace(72052, {	-- Ruby Lifeshrine Loop - Reverse
						["provider"] = { "n", 190123 },	-- Bronze Timekeeper
						["coord"] = { 63.3, 70.9, THE_WAKING_SHORES },
						["groups"] = {
							ach(17120),	-- Ruby Lifeshrine Loop Reverse: Bronze
							ach(17121),	-- Ruby Lifeshrine Loop Reverse: Silver
							ach(17122),	-- Ruby Lifeshrine Loop Reverse: Gold
						},
					}),
					dragonridingrace(72739, {	-- Uktulut Coaster - Reverse
						["provider"] = { "n", 190667 },	-- Bronze Timekeeper
						["coord"] = { 55.4, 41.1, THE_WAKING_SHORES },
						["groups"] = {
							ach(17132),	-- Uktulut Coaster Reverse: Bronze
							ach(17133),	-- Uktulut Coaster Reverse: Silver
							ach(17134),	-- Uktulut Coaster Reverse: Gold
						},
					}),
					dragonridingrace(72706, {	-- Wild Preserve Circuit - Reverse
						["provider"] = { "n", 190503 },	-- Bronze Timekeeper
						["coord"] = { 42.6, 94.5, THE_WAKING_SHORES },
						["groups"] = {
							ach(17141),	-- Wild Preserve Circuit Reverse: Bronze
							ach(17142),	-- Wild Preserve Circuit Reverse: Silver
							ach(17143),	-- Wild Preserve Circuit Reverse: Gold
						},
					}),
					dragonridingrace(72705, {	-- Wild Preserve Slalom - Reverse
						["provider"] = { "n", 190473 },	-- Bronze Timekeeper
						["coord"] = { 47.0, 85.6, THE_WAKING_SHORES },
						["groups"] = {
							ach(17123),	-- Wild Preserve Slalom Reverse: Bronze
							ach(17124),	-- Wild Preserve Slalom Reverse: Silver
							ach(17125),	-- Wild Preserve Slalom Reverse: Gold
						},
					}),
					dragonridingrace(72740, {	-- Wingrest Roundabout - Reverse
						["provider"] = { "n", 190753 },	-- Bronze Timekeeper
						["coord"] = { 73.2, 33.9, THE_WAKING_SHORES },
						["groups"] = {
							ach(17135),	-- Wingrest Roundabout Reverse: Bronze
							ach(17136),	-- Wingrest Roundabout Reverse: Silver
							ach(17137),	-- Wingrest Roundabout Reverse: Gold
						},
					}),
				}),
			})),
		})),
	}),
})));
