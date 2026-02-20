-----------------------------------------------
--      P L A Y E R   V S   P L A Y E R      --
-----------------------------------------------

root(ROOTS.PVP, pvp(n(BATTLEGROUNDS, {
	n(TRAINING_GROUNDS, {
		["timeline"] = { ADDED_12_0_0 },
		["groups"] = {
			-- #IF AFTER 12.0.0
			n(ACHIEVEMENTS, bubbleDownSelf({ ["timeline"] = { ADDED_12_0_0 } }, {
				ach(61958, {	-- Focused Target
					["races"] = ALLIANCE_ONLY,
				}),
				ach(61959, {	-- Focused Target
					["races"] = HORDE_ONLY,
				}),
				ach(62107, {	-- Mandatory Training
					["_noautomation"] = true,	-- nests criteria under Battle for Gilneas map on the same level as TRAINING_GROUNDS
				}),
				ach(61953),	-- Putting in the Practice 10 Wins
				ach(61954),	-- Putting in the Practice 25 Wins
				ach(61955),	-- Putting in the Practice 100 Wins
				ach(61956),	-- Putting in the Practice 250 Wins
				ach(62108),	-- Training with Patience
				ach(62109),	-- Training with Patience
			})),
			m(ARATHI_BASIN, {
				["lore"] = "Arathi Basin is a 15v15 battleground located in Arathi Highlands. Players fight over five bases (Stables, Mines, Blacksmith, Lumber Mill, and Farm) which reward teams with resources. The more bases a team controls, the faster they accumulate resources. A team with all five bases captured will gain 30 resources per second.\n\nThe game is won when one team reaches 1600 resources. The most common way of winning is to hold three bases and defend, with the Blacksmith being a key base.",
				["icon"] = 236385,
				["maps"] = {
					1366,	-- Arathi Basin (BG)
				},
				["groups"] = {
					n(ACHIEVEMENTS, {
						ach(1169, {	-- Master of Arathi Basin
							-- Meta Achievement should symlink the contained Achievements from Source
							["sym"] = {{"meta_achievement",
								155,	-- Arathi Basin Veteran
								165,	-- Arathi Basin Perfection
								158,	-- Me and the Cappin' Makin' it Happen
								73,	-- Disgracin' The Basin
								1153,	-- Overly Defensive
								157,	-- To The Rescue!
								161,	-- Resilient Victory
								156,	-- Territorial Dominance
								159,	-- Let's Get This Done
								162,	-- We Had It All Along *cough*
								583,	-- Arathi Basin All-Star
								584,	-- Arathi Basin Assassin
							}},
						}),
						ach(154, {	-- Arathi Basin Victory
							["timeline"] = { ADDED_3_0_2 },
							["rank"] = 1,
						}),
						ach(155, {	-- Arathi Basin Veteran
							["timeline"] = { ADDED_3_0_2 },
							["rank"] = 100,
						}),
						ach(583, {	-- Arathi Basin All-Star
							["timeline"] = { ADDED_3_0_2 },
							["_noautomation"] = true,	-- When Comp Stomp was introduced, Blizzard added new nested criteria but kept the old ones. Just showing the old ones is enough at this time.
							["groups"] = {
								crit(426),	-- Assault 2 bases
								crit(427),	-- Defend 2 bases
							},
						}),
						ach(584, {	-- Arathi Basin Assassin
							["timeline"] = { ADDED_3_0_2 },
							["_noautomation"] = true,	-- When Comp Stomp was introduced, Blizzard added new nested criteria but kept the old ones. Just showing the old ones is enough at this time.
							["groups"] = {
								crit(431),	-- Kill 5 people at the blacksmith
								crit(432),	-- Kill 5 people at the farm
								crit(433),	-- Kill 5 people at the gold mine
								crit(434),	-- Kill 5 people at the lumber mill
								crit(435),	-- Kill 5 people at the stables
							},
						}),
						ach(165, {	-- Arathi Basin Perfection
							["timeline"] = { ADDED_3_0_2 },
							["_noautomation"] = true,	-- Doesn't show any criteria ingame but they exist so we hide them ourselves
						}),
						ach(62111, {	-- Boots on the Ground: Arathi Basin
							["timeline"] = { ADDED_12_0_0 },
						}),
						ach(73, {	-- Disgracin' The Basin
							["timeline"] = { ADDED_3_0_2 },
						}),
						ach(62114, {	-- Learning the Landscape: Arathi Basin
							["timeline"] = { ADDED_12_0_0 },
						}),
						ach(159, {	-- Let's Get This Done
							["timeline"] = { ADDED_3_0_2 },
						}),
						ach(158, {	-- Me and the Cappin' Makin' It Happen
							["timeline"] = { ADDED_3_0_2 },
							["groups"] = {
								i(247757, {	-- Alliance Battlefield Banner (DECOR!)
									["timeline"] = { ADDED_11_2_7 },
								}),
							},
						}),
						ach(1153, {	-- Overly Defensive
							["timeline"] = { ADDED_3_0_2 },
							["groups"] = {
								i(247759, {	-- Horde Battlefield Banner (DECOR!)
									["timeline"] = { ADDED_11_2_7 },
								}),
							},
						}),
						ach(161, {	-- Resilient Victory
							["timeline"] = { ADDED_3_0_2 },
							["_noautomation"] = true,	-- Doesn't show any criteria ingame but they exist so we hide them ourselves
						}),
						ach(156, {	-- Territorial Dominance
							["timeline"] = { ADDED_3_0_2 },
							["_noautomation"] = true,	-- Doesn't show any criteria ingame but they exist so we hide them ourselves
						}),
						ach(157, {	-- To The Rescue!
							["timeline"] = { ADDED_3_0_2 },
						}),
						ach(162, {	-- We Had It All Along *cough*
							["timeline"] = { ADDED_3_0_2 },
							["_noautomation"] = true,	-- Doesn't show any criteria ingame but they exist so we hide them ourselves
						}),
						applyclassicphase(PHASE_TWO, achWithRep(711, FACTION_THE_LEAGUE_OF_ARATHOR, {	-- Knight of Arathor
							["races"] = ALLIANCE_ONLY,
						})),
						applyclassicphase(PHASE_TWO, achWithRep(710, FACTION_THE_DEFILERS, {	-- The Defiler
							["races"] = HORDE_ONLY,
						})),
					}),
					n(FACTIONS, {
						faction(FACTION_THE_DEFILERS, {	-- The Defilers
							["icon"] = 237568,
							["races"] = HORDE_ONLY,
						}),
						faction(FACTION_THE_LEAGUE_OF_ARATHOR, {	-- The League of Arathor
							["icon"] = 132351,
							["races"] = ALLIANCE_ONLY,
						}),
					}),
				},
			}),
			m(275, {	-- Battle for Gilneas
				["icon"] = 462671,
				["timeline"] = { ADDED_4_0_3 },
				["groups"] = {
					n(ACHIEVEMENTS, {
						ach(5258, {	-- Master of the Battle for Gilneas
							-- Meta Achievement should symlink the contained Achievements from Source
							["sym"] = {{"meta_achievement",
								5246,	-- Battle for Gilneas Veteran
								5247,	-- Battle for Gilneas Perfection
								5248,	-- Bustin' Caps to Make It Haps
								5249,	-- One Two Three You Don't Know About Me
								5250,	-- Out of the Fog
								5251,	-- Not Your Average PUG'er
								5252,	-- Don't Get Cocky Kid
								5253,	-- Full Coverage
								5254,	-- Newbs to Plowshares
								5255,	-- Jugger Not
								5256,	-- Battle for Gilneas All-Star
								5257,	-- Battle for Gilneas Assassin
								5262,	-- Double Rainbow
							}},
						}),
						ach(5245, {	-- Battle for Gilneas Victory
							["rank"] = 1,
							["groups"] = {
								i(256896, {	-- Smoke Lamppost (DECOR!)
									["timeline"] = { ADDED_11_2_7 },
								}),
							},
						}),
						ach(5246, {	-- Battle for Gilneas Veteran
							["rank"] = 100,
						}),
						ach(5247),	-- Battle for Gilneas Perfection
						ach(62112, {	-- Boots on the Ground: Battle for Gilneas
							["timeline"] = { ADDED_12_0_0 },
						}),
						ach(5248),	-- Bustin' Caps to Make It Haps
						ach(62115, {	-- Learning the Landscape: Battle for Gilneas
							["timeline"] = { ADDED_12_0_0 },
						}),
						ach(5249),	-- One Two Three You Don't Know About Me
						ach(5250),	-- Out of the Fog
						ach(5251),	-- Not Your Average PUG'er
						ach(5252),	-- Don't Get Cocky Kid
						ach(5253),	-- Full Coverage
						ach(5254),	-- Newbs to Plowshares
						ach(5255),	-- Jugger Not
						ach(5256, {	-- Battle for Gilneas All-Star
							-- #if AFTER MOP
							crit(14946),	-- Assault a base
							crit(14947),	-- Defend a base
							-- #endif
						}),
						ach(5257, {	-- Battle for Gilneas Assassin
							-- #if AFTER MOP
							crit(14948),	-- Kill 10 enemies at the Lighthouse
							crit(14949),	-- Kill 10 enemies at the Mines
							crit(14950),	-- Kill 10 enemies at the Waterworks
							-- #endif
						}),
						ach(5262),	-- Double Rainbow
					}),
				},
			}),
			m(423, {	-- Silvershard Mines
				["icon"] = 622094,
				["timeline"] = { ADDED_5_0_4 },
				["groups"] = {
					n(ACHIEVEMENTS, {
						ach(7106, {	-- Master of Silvershard Mines
							-- Meta Achievement should symlink the contained Achievements from Source
							["sym"] = {{"meta_achievement",
								6883,	-- Silvershard Mines Veteran
								7039,	-- The Long Riders
								7049,	-- Mine Cart Courier
								7057,	-- End of the Line
								7062,	-- Mine Mine Mine!
								7099,	-- Five for Five
								7100,	-- My Diamonds and Your Rust
								7102,	-- Escort Service
								7103,	-- Greed is Good
							}},
						}),
						ach(6739, {	-- Silvershard Mines Victory
							["rank"] = 1,
						}),
						ach(6883, {	-- Silvershard Mines Veteran
							["rank"] = 100,
						}),
						ach(62113, {	-- Boots on the Ground: Silvershard Mines
							["timeline"] = { ADDED_12_0_0 },
						}),
						ach(62116, {	-- Learning the Landscape: Silvershard Mines
							["timeline"] = { ADDED_12_0_0 },
						}),
						ach(7039),	-- The Long Riders
						ach(7049, {	-- Mine Cart Courier
							crit(21009),	-- East to South Track
							crit(21010),	-- East to North Track
							crit(21011),	-- North to West Track
							crit(21012),	-- North to East Track
							crit(21013),	-- South Track
						}),
						ach(7057),	-- End of the Line
						ach(7062),	-- Mine Mine Mine!
						ach(7099),	-- Five for Five
						ach(7100),	-- My Diamonds and Your Rust
						ach(7102),	-- Escort Service
						ach(7103),	-- Greed is Good
					}),
				},
			}),
			-- #endif
		},
	}),
})));
