-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

root(ROOTS.Instances, expansion(EXPANSION.CLASSIC, {
	inst(238, {	-- The Stockade
		-- #if BEFORE MOP
		["lore"] = "The Stockade is a high-security prison complex, hidden beneath the canal district of Stormwind city. Presided over by Warden Thelwater, the Stockade is home to petty crooks, political insurgents, murderers and a score of the most dangerous criminals in the land. Recently, a prisoner-led revolt has resulted in a state of pandemonium within the stockade - where the guards have been driven out and the convicts roam free. Warden Thelwater has managed to escape the holding area and is currently enlisting brave thrill-seekers to venture into the prison and kill the uprising's mastermind - the cunning felon, Bazil Thredd.",
		-- #endif
		-- #if BEFORE WRATH
		["zone-text-areaID"] = 717,	-- The Stockade
		-- #endif
		["mapID"] = THE_STOCKADE,
		["coords"] = {
			-- #if AFTER CATA
			{ 50.5, 66.5, STORMWIND_CITY },
			-- #elseif AFTER WRATH
			{ 51.6, 69.4, STORMWIND_CITY },
			-- #else
			{ 41.2, 58.0, STORMWIND_CITY },
			-- #endif
		},
		["lvl"] = 15,
		["groups"] = {
			n(QUESTS, {
				q(389, {	-- Bazil Thredd
					["sourceQuest"] = 373,	-- The Unsent Letter
					["qg"] = 1646,	-- Baros Alexston
					["coords"] = {
						-- #if AFTER WRATH
						{ 57.7, 47.9, STORMWIND_CITY },
						-- #else
						{ 49.0, 30.2, STORMWIND_CITY },
						-- #endif
					},
					["timeline"] = { REMOVED_4_0_1 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 16,
				}),
				q(27737, {	-- By Fire Be Saved!
					["qg"] = 46410,	-- Nurse Lillian
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(20, 20, 10),
					["groups"] = {
						objective(1, {	-- 0/1 Lord Overheat's Fiery Core
							["provider"] = { "i", 62305 },	-- Lord Overheat's Fiery Core
						}),
					},
				}),
				q(377, {	-- Crime and Punishment
					["qg"] = 270,	-- Councilman Millstipe
					["coord"] = { 72.0, 46.8, DUSKWOOD },
					["timeline"] = { REMOVED_4_0_1 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 24,
					["groups"] = {
						objective(1, {	-- 0/1 Hand of Dextren Ward
							["provider"] = { "i", 3628 },	-- Hand of Dextren Ward
						}),
						i(2906, {	-- Darkshire Mail Leggings
							["timeline"] = { REMOVED_4_0_1 },
						}),
						i(2033, {	-- Ambassador's Boots
							["timeline"] = { REMOVED_4_0_1 },
						}),
					},
				}),
				q(50335, {	-- Grant Me Revenge
					["qg"] = 46409,	-- Warden Thelwater
					["timeline"] = { ADDED_7_3_5 },
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(10, 10, 10),
					["groups"] = {
						objective(1, {	-- 0/1 Lord Overheat slain
							["provider"] = { "n", 46264 },	-- Lord Overheat
						}),
						objective(2, {	-- 0/1 Randolph Moloch slain
							["provider"] = { "n", 46383 },	-- Randolph Moloch
						}),
						objective(3, {	-- 0/1 Hogger slain
							["provider"] = { "n", 46254 },	-- Hogger
						}),
						i(65989),	-- Hogger's Shiny
						i(65915),	-- Rifle Commander's Eyepatch
						i(65941),	-- Riot Stick
						i(65965),	-- Shield of the Stockades
						i(131683, {	-- Thelwater's Steelwoven Eyepatch
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(387, {	-- Quell The Uprising
					["qg"] = 1719,	-- Warden Thelwater
					["coords"] = {
						-- #if AFTER WRATH
						{ 51.6, 69.4, STORMWIND_CITY },
						-- #else
						{ 41.2, 58.0, STORMWIND_CITY },
						-- #endif
					},
					["timeline"] = { REMOVED_4_0_1 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 22,
				}),
				q(388, {	-- The Color of Blood
					["qg"] = 1721,	-- Nikova Raskol
					["coords"] = {
						-- #if AFTER WRATH
						{ 76.6, 60.4, STORMWIND_CITY },
						-- #else
						{ 73.6, 47.7, STORMWIND_CITY },
						-- #endif
					},
					["timeline"] = { REMOVED_4_0_1 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 22,
					["groups"] = {
						objective(1, {	-- 0/10 Red Wool Bandana
							["provider"] = { "i", 2909 },	-- Red Wool Bandana
							["crs"] = {
								1716,	-- Bazil Thredd
								1720,	-- Bruegal Ironknuckle
								1707,	-- Defias Captive
								1711,	-- Defias Convict
								1708,	-- Defias Inmate
								1715,	-- Defias Insurgent
								1706,	-- Defias Prisoner
								1663,	-- Dextren Ward
							},
						}),
					},
				}),
				q(378, {	-- The Fury Runs Deep
					["sourceQuest"] = 303,	-- The Dark Iron War
					["qg"] = 1074,	-- Motley Garmason
					["coord"] = { 49.8, 18.2, WETLANDS },
					["timeline"] = { REMOVED_4_0_1 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 25,
					["groups"] = {
						objective(1, {	-- 0/1 Head of Deepfury
							["provider"] = { "i", 3640 },	-- Head of Deepfury
						}),
						i(1264, {	-- Headbasher
							["timeline"] = { REMOVED_4_0_1 },
						}),
						i(3562, {	-- Belt of Vindication
							["timeline"] = { REMOVED_4_0_1 },
						}),
					},
				}),
				q(27739, {	-- The Gnoll King
					["qg"] = 46409,	-- Warden Thelwater
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(20, 20, 10),
					["groups"] = {
						objective(1, {	-- 0/1 Hogger slain
							["provider"] = { "n", 46254 },	-- Hogger
						}),
						i(65989),	-- Hogger's Shiny
						i(65915),	-- Rifle Commander's Eyepatch
						i(65941),	-- Riot Stick
						i(65965),	-- Shield of the Stockades
						i(131683, {	-- Thelwater's Steelwoven Eyepatch
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(27733, {	-- The Good Ol' Switcheroo
					["qg"] = 46417,	-- Rifle Commander Coe
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(20, 20, 10),
					["groups"] = {
						objective(1, {	-- 0/1 Randolph Moloch slain
							["provider"] = { "n", 46383 },	-- Randolph Moloch
						}),
					},
				}),
				q(391, {	-- The Stockade Riots
					["sourceQuest"] = 389,	-- Bazil Thredd
					["qg"] = 1719,	-- Warden Thelwater
					["coords"] = {
						-- #if AFTER WRATH
						{ 51.6, 69.4, STORMWIND_CITY },
						-- #else
						{ 41.2, 58.0, STORMWIND_CITY },
						-- #endif
					},
					["timeline"] = { REMOVED_4_0_1 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 16,
					["groups"] = {
						objective(1, {	-- 0/1 Head of Bazil Thredd
							["provider"] = { "i", 2926 },	-- Head of Bazil Thredd
						}),
					},
				}),
				q(386, {	-- What Comes Around...
					["qg"] = 859,	-- Guard Berton
					["coord"] = { 26.0, 43.0, REDRIDGE_MOUNTAINS },
					["timeline"] = { REMOVED_4_0_1 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 22,
					["groups"] = {
						objective(1, {	-- 0/1 Head of Targorr
							["provider"] = { "i", 3630 },	-- Head of Targorr
						}),
						i(1317, {	-- Hardened Root Staff
							["timeline"] = { REMOVED_4_0_1 },
						}),
						i(3400, {	-- Lucine Longsword
							["timeline"] = { REMOVED_4_0_1 },
						}),
					},
				}),
			}),
			n(ZONE_DROPS, {
				i(1076, {	-- Defias Renegade Ring
					["timeline"] = { REMOVED_4_0_1 },
				}),
			}),
			n(1720, {	-- Bruegal Ironknuckle
				["description"] = "This is a rare that was not always present.",
				["timeline"] = { REMOVED_4_0_1 },
				["groups"] = {
					i(2942, {	-- Iron Knuckles
						["timeline"] = { REMOVED_4_0_1 },
					}),
					i(3228, {	-- Jimmied Handcuffs
						["timeline"] = { REMOVED_4_0_1 },
					}),
					i(2941, {	-- Prison Shank
						["timeline"] = { REMOVED_4_0_1 },
					}),
				},
			}),
			n(1666, {	-- Kam Deepfury
				["timeline"] = { REMOVED_4_0_1 },
				["groups"] = {
					i(3640, {	-- Head of Deepfury
						["timeline"] = { REMOVED_4_0_1 },
					}),
					i(2280, {	-- Kam's Walking Stick
						["timeline"] = { REMOVED_4_0_1 },
					}),
				},
			}),
			n(1663, {	-- Dextren Ward
				["timeline"] = { REMOVED_4_0_1 },
				["groups"] = {
					i(3628, {	-- Hand of Dextren Ward
						["timeline"] = { REMOVED_4_0_1 },
					}),
				},
			}),
			n(1717, {	-- Hamhock
				["timeline"] = { REMOVED_4_0_1 },
			}),
			n(1696, {	-- Targorr the Dread
				["timeline"] = { REMOVED_4_0_1 },
				["groups"] = {
					i(3630, {	-- Head of Targorr
						["timeline"] = { REMOVED_4_0_1 },
					}),
				},
			}),
			n(1716, {	-- Bazil Thredd
				["timeline"] = { REMOVED_4_0_1 },
				["groups"] = {
					-- #if BEFORE 4.0.1
					ach(633, {	-- Stormwind Stockade
						-- #if BEFORE WRATH
						["races"] = ALLIANCE_ONLY,
						-- #endif
					}),
					-- #endif
					i(2926, {	-- Head of Bazil Thredd
						["timeline"] = { REMOVED_4_0_1 },
					}),
				},
			}),
			e(466, {	-- Randolph Moloch
				["creatureID"] = 46383,
				["timeline"] = { ADDED_4_0_1 },
				["groups"] = {
					i(63346, {	-- Wicked Dagger
						["timeline"] = { ADDED_4_0_1 },
					}),
					i(63345, {	-- Noble's Robe
						["timeline"] = { ADDED_4_0_1 },
					}),
					i(151077, {	-- Cast Iron Waistplate
						["timeline"] = { ADDED_7_3_0 },
					}),
					i(63344, {	-- Standard Issue Prisoner Shoes
						["timeline"] = { ADDED_4_0_1 },
					}),
					i(132570, {	-- Stolen Guard's Chain Boots
						["timeline"] = { ADDED_7_0_3 },
					}),
				},
			}),
			e(465, {	-- Lord Overheat
				["creatureID"] = 46264,
				["timeline"] = { ADDED_4_0_1 },
				["groups"] = {
					i(62305),	-- Lord Overheat's Fiery Core
					i(151075, {	-- Cinderstitch Tunic
						["timeline"] = { ADDED_7_3_0 },
					}),
					i(151076, {	-- Fire-Hardened Shackles
						["timeline"] = { ADDED_7_3_0 },
					}),
					-- NOTE: The following items were previously Zone Drops inside of the Deadmines entry-way in Westfall and can still be found there.
					i(4676),	-- Skeletal Gauntlets
					i(5967),	-- Girdle of Nobility
					i(1929),	-- Silk-Threaded Trousers
				},
			}),
			e(464, {	-- Hogger
				["creatureID"] = 46254,
				["timeline"] = { ADDED_4_0_1 },
				["groups"] = {
					ach(633),	-- Stormwind Stockade
					ach(5042, {	-- Stormwind Stockade Guild Run
						["timeline"] = { ADDED_4_0_3 },
					}),
					i(1959),	-- Cold Iron Pick
					i(151074, {	-- Turnkey's Pauldrons
						["timeline"] = { ADDED_7_3_0 },
					}),
					i(1934),	-- Stonemason Trousers [Classic] / Hogger's Trousers [CATA+]
					i(132569, {	-- Stolen Jailer's Greaves
						["timeline"] = { ADDED_7_0_3 },
					}),
					i(2168),	-- Foreman's Boots [Classic] / Corpse Rompers [CATA+]
				},
			}),
		},
	}),
}));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.WOD, bubbleDownSelf({ ["timeline"] = { ADDED_6_0_2 } }, {
	inst(238, {
		q(35288),	-- Stockade Reward Quest - Normal completion
	}),
})));
