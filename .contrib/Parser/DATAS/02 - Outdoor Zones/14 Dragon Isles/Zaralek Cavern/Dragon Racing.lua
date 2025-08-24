---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(DRAGON_ISLES, bubbleDown({ ["timeline"] = { ADDED_10_1_0 } }, {
	m(ZARALEK_CAVERN, {
		skyriding(n(DRAGONRIDING_RACING, {
			header(HEADERS.Achievement, 17494, {	-- Zaralek Cavern Racing Completionist: Gold
				n(ACHIEVEMENTS, {
					ach(17483, {	-- Zaralek Cavern: Bronze
						-- Meta Achievement
						["sym"] = {{"meta_achievement",
							17447,	-- Brimstone Scramble: Bronze
							17438,	-- Caldera Cruise: Bronze
							17429,	-- Crystal Circuit: Bronze
							17465,	-- Loamm Roamm: Bronze
							17456,	-- Shimmering Slalom: Bronze
							17474,	-- Sulfur Sprint: Bronze
						}},
					}),
					ach(17484, {	-- Zaralek Cavern: Silver
						-- Meta Achievement
						["sym"] = {{"meta_achievement",
							17448,	-- Brimstone Scramble: Silver
							17439,	-- Caldera Cruise: Silver
							17430,	-- Crystal Circuit: Silver
							17466,	-- Loamm Roamm: Silver
							17457,	-- Shimmering Slalom: Silver
							17475,	-- Sulfur Sprint: Silver
						}},
						["groups"] = {
							i(203325),	-- Winding Slitherdrake: Red Hair (MM!)
						},
					}),
					ach(17485, {	-- Zaralek Cavern: Gold
						-- Meta Achievement
						["sym"] = {{"meta_achievement",
							17449,	-- Brimstone Scramble: Gold
							17440,	-- Caldera Cruise: Gold
							17431,	-- Crystal Circuit: Gold
							17467,	-- Loamm Roamm: Gold
							17458,	-- Shimmering Slalom: Gold
							17476,	-- Sulfur Sprint: Gold
						}},
					}),
					ach(17486, {	-- Zaralek Cavern Advanced: Bronze
						-- Meta Achievement
						["sym"] = {{"meta_achievement",
							17450,	-- Brimstone Scramble Advanced: Bronze
							17441,	-- Caldera Cruise Advanced: Bronze
							17432,	-- Crystal Circuit Advanced: Bronze
							17468,	-- Loamm Roamm Advanced: Bronze
							17459,	-- Shimmering Slalom Advanced: Bronze
							17477,	-- Sulfur Sprint Advanced: Bronze
						}},
					}),
					ach(17487, {	-- Zaralek Cavern Advanced: Silver
						-- Meta Achievement
						["sym"] = {{"meta_achievement",
							17451,	-- Brimstone Scramble Advanced: Silver
							17442,	-- Caldera Cruise Advanced: Silver
							17433,	-- Crystal Circuit Advanced: Silver
							17469,	-- Loamm Roamm Advanced: Silver
							17460,	-- Shimmering Slalom Advanced: Silver
							17478,	-- Sulfur Sprint Advanced: Silver
						}},
						["groups"] = {
							i(203303),	-- Winding Slitherdrake: Red and Gold Armor (MM!)
						},
					}),
					ach(17488, {	-- Zaralek Cavern Advanced: Gold
						-- Meta Achievement
						["sym"] = {{"meta_achievement",
							17452,	-- Brimstone Scramble Advanced: Gold
							17443,	-- Caldera Cruise Advanced: Gold
							17434,	-- Crystal Circuit Advanced: Gold
							17470,	-- Loamm Roamm Advanced: Gold
							17461,	-- Shimmering Slalom Advanced: Gold
							17479,	-- Sulfur Sprint Advanced: Gold
						}},
					}),
					ach(17489, {	-- Zaralek Cavern Reverse: Bronze
						-- Meta Achievement
						["sym"] = {{"meta_achievement",
							17453,	-- Brimstone Scramble Reverse: Bronze
							17444,	-- Caldera Cruise Reverse: Bronze
							17435,	-- Crystal Circuit Reverse: Bronze
							17471,	-- Loamm Roamm Reverse: Bronze
							17462,	-- Shimmering Slalom Reverse: Bronze
							17480,	-- Sulfur Sprint Reverse: Bronze
						}},
					}),
					ach(17490, {	-- Zaralek Cavern Reverse: Silver
						-- Meta Achievement
						["sym"] = {{"meta_achievement",
							17454,	-- Brimstone Scramble Reverse: Silver
							17445,	-- Caldera Cruise Reverse: Silver
							17436,	-- Crystal Circuit Reverse: Silver
							17472,	-- Loamm Roamm Reverse: Silver
							17463,	-- Shimmering Slalom Reverse: Silver
							17481,	-- Sulfur Sprint Reverse: Silver
						}},
					}),
					ach(17491, {	-- Zaralek Cavern Reverse: Gold
						-- Meta Achievement
						["sym"] = {{"meta_achievement",
							17455,	-- Brimstone Scramble Reverse: Gold
							17446,	-- Caldera Cruise Reverse: Gold
							17437,	-- Crystal Circuit Reverse: Gold
							17473,	-- Loamm Roamm Reverse: Gold
							17464,	-- Shimmering Slalom Reverse: Gold
							17482,	-- Sulfur Sprint Reverse: Gold
						}},
					}),
					ach(17492, {	-- Zaralek Cavern Racing Completionist
						-- Meta Achievement
						["sym"] = {{"meta_achievement",
							17483,	-- Zaralek Cavern: Bronze
							17486,	-- Zaralek Cavern Advanced: Bronze
							17489,	-- Zaralek Cavern Reverse: Bronze
						}},
					}),
					ach(17493, {	-- Zaralek Cavern Racing Completionist: Silver
						-- Meta Achievement
						["sym"] = {{"meta_achievement",
							17484,	-- Zaralek Cavern: Silver
							17487,	-- Zaralek Cavern Advanced: Silver
							17490,	-- Zaralek Cavern Reverse: Silver
						}},
					}),
					ach(17494, {	-- Zaralek Cavern Racing Completionist: Gold
						-- Meta Achievement
						["sym"] = {{"meta_achievement",
							17485,	-- Zaralek Cavern: Gold
							17488,	-- Zaralek Cavern Advanced: Gold
							17491,	-- Zaralek Cavern Reverse: Gold
						}},
						["groups"] = {
							title(509),	-- Zaralek Cavern Racer <Name>
						},
					}),
				}),
				n(QUESTS, {
					dragonridingrace(74939, {	-- Brimstone Scramble
						["provider"] = { "n", 202749 },	-- Bronze Timekeeper
						["coord"] = { 54.4, 23.7, ZARALEK_CAVERN },
						["groups"] = {
							ach(17447),	-- Brimstone Scramble: Bronze
							ach(17448),	-- Brimstone Scramble: Silver
							ach(17449),	-- Brimstone Scramble: Gold
						},
					}),
					dragonridingrace(74943, {	-- Brimstone Scramble - Advanced
						["provider"] = { "n", 202749 },	-- Bronze Timekeeper
						["coord"] = { 54.4, 23.7, ZARALEK_CAVERN },
						["groups"] = {
							ach(17450),	-- Brimstone Scramble Advanced: Bronze
							ach(17451),	-- Brimstone Scramble Advanced: Silver
							ach(17452),	-- Brimstone Scramble Advanced: Gold
						},
					}),
					dragonridingrace(74944, {	-- Brimstone Scramble - Reverse
						["provider"] = { "n", 202749 },	-- Bronze Timekeeper
						["coord"] = { 54.4, 23.7, ZARALEK_CAVERN },
						["groups"] = {
							ach(17453),	-- Brimstone Scramble Reverse: Bronze
							ach(17454),	-- Brimstone Scramble Reverse: Silver
							ach(17455),	-- Brimstone Scramble Reverse: Gold
						},
					}),
					dragonridingrace(74889, {	-- Caldera Cruise
						["provider"] = { "n", 202676 },	-- Bronze Timekeeper
						["coord"] = { 39.0, 49.8, ZARALEK_CAVERN },
						["groups"] = {
							ach(17438),	-- Caldera Cruise: Bronze
							ach(17439),	-- Caldera Cruise: Silver
							ach(17440),	-- Caldera Cruise: Gold
						},
					}),
					dragonridingrace(74899, {	-- Caldera Cruise - Advanced
						["provider"] = { "n", 202676 },	-- Bronze Timekeeper
						["coord"] = { 39.0, 49.8, ZARALEK_CAVERN },
						["groups"] = {
							ach(17441),	-- Caldera Cruise Advanced: Bronze
							ach(17442),	-- Caldera Cruise Advanced: Silver
							ach(17443),	-- Caldera Cruise Advanced: Gold
						},
					}),
					dragonridingrace(74925, {	-- Caldera Cruise - Reverse
						["provider"] = { "n", 202676 },	-- Bronze Timekeeper
						["coord"] = { 39.0, 49.8, ZARALEK_CAVERN },
						["groups"] = {
							ach(17444),	-- Caldera Cruise Reverse: Bronze
							ach(17445),	-- Caldera Cruise Reverse: Silver
							ach(17446),	-- Caldera Cruise Reverse: Gold
						},
					}),
					dragonridingrace(74839, {	-- Crystal Circuit
						["provider"] = { "n", 202524 },	-- Bronze Timekeeper
						["coord"] = { 38.6, 60.6, ZARALEK_CAVERN },
						["groups"] = {
							ach(17429),	-- Crystal Circuit: Bronze
							ach(17430),	-- Crystal Circuit: Silver
							ach(17431),	-- Crystal Circuit: Gold
						},
					}),
					dragonridingrace(74842, {	-- Crystal Circuit - Advanced
						["provider"] = { "n", 202524 },	-- Bronze Timekeeper
						["coord"] = { 38.6, 60.6, ZARALEK_CAVERN },
						["groups"] = {
							ach(17432),	-- Crystal Circuit Advanced: Bronze
							ach(17433),	-- Crystal Circuit Advanced: Silver
							ach(17434),	-- Crystal Circuit Advanced: Gold
						},
					}),
					dragonridingrace(74882, {	-- Crystal Circuit - Reverse
						["provider"] = { "n", 202524 },	-- Bronze Timekeeper
						["coord"] = { 38.6, 60.6, ZARALEK_CAVERN },
						["groups"] = {
							ach(17435),	-- Crystal Circuit Reverse: Bronze
							ach(17436),	-- Crystal Circuit Reverse: Silver
							ach(17437),	-- Crystal Circuit Reverse: Gold
						},
					}),
					dragonridingrace(74951, {	-- Shimmering Slalom
						["provider"] = { "n", 202772 },	-- Bronze Timekeeper
						["coord"] = { 58.7, 45.1, ZARALEK_CAVERN },
						["groups"] = {
							ach(17456),	-- Shimmering Slalom: Bronze
							ach(17457),	-- Shimmering Slalom: Silver
							ach(17458),	-- Shimmering Slalom: Gold
						},
					}),
					dragonridingrace(74954, {	-- Shimmering Slalom - Advanced
						["provider"] = { "n", 202772 },	-- Bronze Timekeeper
						["coord"] = { 58.7, 45.1, ZARALEK_CAVERN },
						["groups"] = {
							ach(17459),	-- Shimmering Slalom Advanced: Bronze
							ach(17460),	-- Shimmering Slalom Advanced: Silver
							ach(17461),	-- Shimmering Slalom Advanced: Gold
						},
					}),
					dragonridingrace(74956, {	-- Shimmering Slalom - Reverse
						["provider"] = { "n", 202772 },	-- Bronze Timekeeper
						["coord"] = { 58.7, 45.1, ZARALEK_CAVERN },
						["groups"] = {
							ach(17462),	-- Shimmering Slalom Reverse: Bronze
							ach(17463),	-- Shimmering Slalom Reverse: Silver
							ach(17464),	-- Shimmering Slalom Reverse: Gold
						},
					}),
					dragonridingrace(75035, {	-- Sulfur Sprint
						["provider"] = { "n", 202973 },	-- Bronze Timekeeper
						["coord"] = { 51.2, 46.6, ZARALEK_CAVERN },
						["groups"] = {
							ach(17474),	-- Sulfur Sprint: Bronze
							ach(17475),	-- Sulfur Sprint: Silver
							ach(17476),	-- Sulfur Sprint: Gold
						},
					}),
					dragonridingrace(75042, {	-- Sulfur Sprint - Advanced
						["provider"] = { "n", 202973 },	-- Bronze Timekeeper
						["coord"] = { 51.2, 46.6, ZARALEK_CAVERN },
						["groups"] = {
							ach(17477),	-- Sulfur Sprint Advanced: Bronze
							ach(17478),	-- Sulfur Sprint Advanced: Silver
							ach(17479),	-- Sulfur Sprint Advanced: Gold
						},
					}),
					dragonridingrace(75043, {	-- Sulfur Sprint - Reverse
						["provider"] = { "n", 202973 },	-- Bronze Timekeeper
						["coord"] = { 51.2, 46.6, ZARALEK_CAVERN },
						["groups"] = {
							ach(17480),	-- Sulfur Sprint Reverse: Bronze
							ach(17481),	-- Sulfur Sprint Reverse: Silver
							ach(17482),	-- Sulfur Sprint Reverse: Gold
						},
					}),
					dragonridingrace(74972, {	-- Loamm Roamm
						["provider"] = { "n", 202795 },	-- Bronze Timekeeper
						["coord"] = { 58.0, 57.6, ZARALEK_CAVERN },
						["groups"] = {
							ach(17465),	-- Loamm Roamm: Bronze
							ach(17466),	-- Loamm Roamm: Silver
							ach(17467),	-- Loamm Roamm: Gold
						},
					}),
					dragonridingrace(74975, {	-- Loamm Roamm - Advanced
						["provider"] = { "n", 202795 },	-- Bronze Timekeeper
						["coord"] = { 58.0, 57.6, ZARALEK_CAVERN },
						["groups"] = {
							ach(17468),	-- Loamm Roamm Advanced: Bronze
							ach(17469),	-- Loamm Roamm Advanced: Silver
							ach(17470),	-- Loamm Roamm Advanced: Gold
						},
					}),
					dragonridingrace(74977, {	-- Loamm Roamm - Reverse
						["provider"] = { "n", 202795 },	-- Bronze Timekeeper
						["coord"] = { 58.0, 57.6, ZARALEK_CAVERN },
						["groups"] = {
							ach(17471),	-- Loamm Roamm Reverse: Bronze
							ach(17472),	-- Loamm Roamm Reverse: Silver
							ach(17473),	-- Loamm Roamm Reverse: Gold
						},
					}),
				}),
			}),
			header(HEADERS.Achievement, 18792, bubbleDownSelf({ ["timeline"] = ADDED_10_1_7 }, {	-- Dragonriding Challenge: Dragon Isles: Gold
				n(ACHIEVEMENTS, {
					ach(18786, {	-- Zaralek Cavern Challenge: Bronze
						-- Meta Achievement
						["sym"] = {{"meta_achievement",
							18076,	-- Brimstone Scramble Challenge: Bronze
							18079,	-- Brimstone Scramble Reverse Challenge: Bronze
							18070,	-- Caldera Cruise Challenge: Bronze
							18073,	-- Caldera Cruise Reverse Challenge: Bronze
							18064,	-- Crystal Circuit Challenge: Bronze
							18067,	-- Crystal Circuit Reverse Challenge: Bronze
							18088,	-- Loamm Roamm Challenge: Bronze
							18091,	-- Loamm Roamm Reverse Challenge: Bronze
							18082,	-- Shimmering Slalom Challenge: Bronze
							18085,	-- Shimmering Slalom Reverse Challenge: Bronze
							18094,	-- Sulfur Sprint Challenge: Bronze
							18097,	-- Sulfur Sprint Reverse Challenge: Bronze
						}},
					}),
					ach(18787, {	-- Zaralek Cavern Challenge: Silver
						-- Meta Achievement
						["sym"] = {{"meta_achievement",
							18077,	-- Brimstone Scramble Challenge: Silver
							18080,	-- Brimstone Scramble Reverse Challenge: Silver
							18071,	-- Caldera Cruise Challenge: Silver
							18074,	-- Caldera Cruise Reverse Challenge: Silver
							18065,	-- Crystal Circuit Challenge: Silver
							18068,	-- Crystal Circuit Reverse Challenge: Silver
							18089,	-- Loamm Roamm Challenge: Silver
							18092,	-- Loamm Roamm Reverse Challenge: Silver
							18083,	-- Shimmering Slalom Challenge: Silver
							18086,	-- Shimmering Slalom Reverse Challenge: Silver
							18095,	-- Sulfur Sprint Challenge: Silver
							18098,	-- Sulfur Sprint Reverse Challenge: Silver
						}},
					}),
					ach(18788, {	-- Zaralek Cavern Challenge: Gold
						-- Meta Achievement
						["sym"] = {{"meta_achievement",
							18078,	-- Brimstone Scramble Challenge: Gold
							18081,	-- Brimstone Scramble Reverse Challenge: Gold
							18072,	-- Caldera Cruise Challenge: Gold
							18075,	-- Caldera Cruise Reverse Challenge: Gold
							18066,	-- Crystal Circuit Challenge: Gold
							18069,	-- Crystal Circuit Reverse Challenge: Gold
							18090,	-- Loamm Roamm Challenge: Gold
							18093,	-- Loamm Roamm Reverse Challenge: Gold
							18084,	-- Shimmering Slalom Challenge: Gold
							18087,	-- Shimmering Slalom Reverse Challenge: Gold
							18096,	-- Sulfur Sprint Challenge: Gold
							18099,	-- Sulfur Sprint Reverse Challenge: Gold
						}},
					}),
				}),
				n(QUESTS, {
					dragonridingrace(75976, {	-- Brimstone Scramble - Challenge
						["provider"] = { "n", 202749 },	-- Bronze Timekeeper
						["coord"] = { 54.4, 23.7, ZARALEK_CAVERN },
						["groups"] = {
							ach(18076),	-- Brimstone Scramble Challenge: Bronze
							ach(18077),	-- Brimstone Scramble Challenge: Silver
							ach(18078),	-- Brimstone Scramble Challenge: Gold
						},
					}),
					dragonridingrace(75977, {	-- Brimstone Scramble - Reverse Challenge
						["provider"] = { "n", 202749 },	-- Bronze Timekeeper
						["coord"] = { 54.4, 23.7, ZARALEK_CAVERN },
						["groups"] = {
							ach(18079),	-- Brimstone Scramble Reverse Challenge: Bronze
							ach(18080),	-- Brimstone Scramble Reverse Challenge: Silver
							ach(18081),	-- Brimstone Scramble Reverse Challenge: Gold
						},
					}),
					dragonridingrace(75974, {	-- Caldera Cruise - Challenge
						["provider"] = { "n", 202676 },	-- Bronze Timekeeper
						["coord"] = { 39.0, 49.8, ZARALEK_CAVERN },
						["groups"] = {
							ach(18070),	-- Caldera Cruise Challenge: Bronze
							ach(18071),	-- Caldera Cruise Challenge: Silver
							ach(18072),	-- Caldera Cruise Challenge: Gold
						},
					}),
					dragonridingrace(75975, {	-- Caldera Cruise - Reverse Challenge
						["provider"] = { "n", 202676 },	-- Bronze Timekeeper
						["coord"] = { 39.0, 49.8, ZARALEK_CAVERN },
						["groups"] = {
							ach(18073),	-- Caldera Cruise Reverse Challenge: Bronze
							ach(18074),	-- Caldera Cruise Reverse Challenge: Silver
							ach(18075),	-- Caldera Cruise Reverse Challenge: Gold
						},
					}),
					dragonridingrace(75972, {	-- Crystal Circuit - Challenge
						["provider"] = { "n", 202524 },	-- Bronze Timekeeper
						["coord"] = { 38.6, 60.6, ZARALEK_CAVERN },
						["groups"] = {
							ach(18064),	-- Crystal Circuit Challenge: Bronze
							ach(18065),	-- Crystal Circuit Challenge: Silver
							ach(18066),	-- Crystal Circuit Challenge: Gold
						},
					}),
					dragonridingrace(75973, {	-- Crystal Circuit - Reverse Challenge
						["provider"] = { "n", 202524 },	-- Bronze Timekeeper
						["coord"] = { 38.6, 60.6, ZARALEK_CAVERN },
						["groups"] = {
							ach(18067),	-- Crystal Circuit Reverse Challenge: Bronze
							ach(18068),	-- Crystal Circuit Reverse Challenge: Silver
							ach(18069),	-- Crystal Circuit Reverse Challenge: Gold
						},
					}),
					dragonridingrace(75980, {	-- Loamm Roamm - Challenge
						["provider"] = { "n", 202795 },	-- Bronze Timekeeper
						["coord"] = { 58.0, 57.6, ZARALEK_CAVERN },
						["groups"] = {
							ach(18088),	-- Loamm Roamm Challenge: Bronze
							ach(18089),	-- Loamm Roamm Challenge: Silver
							ach(18090),	-- Loamm Roamm Challenge: Gold
						},
					}),
					dragonridingrace(75981, {	-- Loamm Roamm - Reverse Challenge
						["provider"] = { "n", 202795 },	-- Bronze Timekeeper
						["coord"] = { 58.0, 57.6, ZARALEK_CAVERN },
						["groups"] = {
							ach(18091),	-- Loamm Roamm Reverse Challenge: Bronze
							ach(18092),	-- Loamm Roamm Reverse Challenge: Silver
							ach(18093),	-- Loamm Roamm Reverse Challenge: Gold
						},
					}),
					dragonridingrace(75978, {	-- Shimmering Slalom - Challenge
						["provider"] = { "n", 202772 },	-- Bronze Timekeeper
						["coord"] = { 58.7, 45.1, ZARALEK_CAVERN },
						["groups"] = {
							ach(18082),	-- Shimmering Slalom Challenge: Bronze
							ach(18083),	-- Shimmering Slalom Challenge: Silver
							ach(18084),	-- Shimmering Slalom Challenge: Gold
						},
					}),
					dragonridingrace(75979, {	-- Shimmering Slalom - Reverse Challenge
						["provider"] = { "n", 202772 },	-- Bronze Timekeeper
						["coord"] = { 58.7, 45.1, ZARALEK_CAVERN },
						["groups"] = {
							ach(18085),	-- Shimmering Slalom Reverse Challenge: Bronze
							ach(18086),	-- Shimmering Slalom Reverse Challenge: Silver
							ach(18087),	-- Shimmering Slalom Reverse Challenge: Gold
						},
					}),
					dragonridingrace(75982, {	-- Sulfur Sprint - Challenge
						["provider"] = { "n", 202973 },	-- Bronze Timekeeper
						["coord"] = { 51.2, 46.6, ZARALEK_CAVERN },
						["groups"] = {
							ach(18094),	-- Sulfur Sprint Challenge: Bronze
							ach(18095),	-- Sulfur Sprint Challenge: Silver
							ach(18096),	-- Sulfur Sprint Challenge: Gold
						},
					}),
					dragonridingrace(75983, {	-- Sulfur Sprint - Reverse Challenge
						["provider"] = { "n", 202973 },	-- Bronze Timekeeper
						["coord"] = { 51.2, 46.6, ZARALEK_CAVERN },
						["groups"] = {
							ach(18097),	-- Sulfur Sprint Reverse Challenge: Bronze
							ach(18098),	-- Sulfur Sprint Reverse Challenge: Silver
							ach(18099),	-- Sulfur Sprint Reverse Challenge: Gold
						},
					}),
				}),
			})),
			n(WORLD_QUESTS, {
				i(205226,	-- Cavern Racer's Purse
					bubbleDownSelf({ ["timeline"] = { ADDED_10_1_0 } }, {
					i(196978),	-- Cliffside Wylderdrake: Small Head Spikes (MM!)
					i(196997),	-- Cliffside Wylderdrake: Split Horns (MM!)
					i(197104),	-- Highland Drake: Tapered Chin (MM!)
					i(202280),	-- Renewed Proto-Drake: Pronged Tail (MM!)
					i(203361),	-- Winding Slitherdrake: Finned Tip Tail (MM!)
					i(203348),	-- Winding Slitherdrake: Pointed Nose (MM!)
					i(203317),	-- Winding Slitherdrake: Small Finned Crest (MM!)
					i(203342),	-- Winding Slitherdrake: Triple Jaw Horns (MM!)
				})),
			}),
			n(WORLD_QUESTS, sharedData({
				["sourceQuests"] = {
					71232,	-- Renown of the Dragon Isles
					DF_ACCOUNT_CAMPAIGN_QUEST,
				},
				["sourceQuestNumRequired"] = 1,
				["maxReputation"] = { FACTION_VALDRAKKEN_ACCORD, 30 },
				["isWorldQuest"] = true,
				["timeline"] = { ADDED_10_1_0 },
				["sym"] = {{"select","itemID",205226}},	-- Cavern Racer's Purse
			}, {
				------ Zaralek Cavern ------
				q(75121, {	-- Dragonrider Racing - Brimstone Scramble
					["coord"] = { 54.3, 24.0, ZARALEK_CAVERN },
					["timeline"] = { ADDED_10_1_0 },
				}),
				q(75120, {	-- Dragonrider Racing - Caldera Cruise
					["coord"] = { 39.0, 49.8, ZARALEK_CAVERN },
					["timeline"] = { ADDED_10_1_0 },
				}),
				q(75119, {	-- Dragonrider Racing - Crystal Circuit
					["coord"] = { 38.8, 60.6, ZARALEK_CAVERN },
					["timeline"] = { ADDED_10_1_0 },
				}),
				q(75123, {	-- Dragonrider Racing - Loamm Roamm
					["coord"] = { 58.1, 57.6, ZARALEK_CAVERN },
					["timeline"] = { ADDED_10_1_0 },
				}),
				q(75122, {	-- Dragonrider Racing - Shimmering Slalom
					["coord"] = { 58.6, 45.0, ZARALEK_CAVERN },
					["timeline"] = { ADDED_10_1_0 },
				}),
				q(75124, {	-- Dragonrider Racing - Sulfur Sprint
					["coord"] = { 51.3, 46.6, ZARALEK_CAVERN },
					["timeline"] = { ADDED_10_1_0 },
				}),
			})),
		})),
	}),
})));
