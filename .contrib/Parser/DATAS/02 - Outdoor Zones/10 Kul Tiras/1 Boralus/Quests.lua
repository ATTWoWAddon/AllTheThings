---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
local ASPIRANTS_EQUIPMENT_CACHE = i(167744, {	-- Aspirant's Equipment Cache
	["sym"] = {
		{ "sub", "pvp_gear_base", EXPANSION.BFA, SEASON_CORRUPTED, PVP_ASPIRANT },{"merge"},	-- BFA header > Season 4 header > Aspirant gear header
		{ "pop" },	-- discard Aspirant / Combatant Gear header
		{ "pop" },	-- discard item type headers
		{ "modID", 47 },	-- blue.  still the wrong iLvl because i can't also apply 2, but it looks better
	},
})
root(ROOTS.Zones, m(KUL_TIRAS, bubbleDown({ ["timeline"] = { ADDED_8_0_1 } }, {
	m(BORALUS, {
		n(QUESTS, {
			pvp(n(PVP, {
				n(AZERITE_ESSENCES, {
					i(169902, {	-- Finger-Bone Trophy of Battle (Rank 1)
						["description"] = "Requires earning 500 Conquest and opening your weekly chest.\n",
					}),
					i(169901, {	-- Etched Bone Trophy of the Vanquished (Rank 2)
						["description"] = "Requires reaching 1,000 rating in PvP and opening your next weekly chest.\n",
					}),
					i(169900, {	-- Rib-Bone Choker of Dominance (Rank 3)
						["description"] = "The amount of |cff9832dfBurgeoning Battlefield Furor|r you receive from your weekly chest varies depending on your rating.\n\nUnranked - 1\nCombatant - 3\nChallenger - 5\nRival - 6\nDuelist - 8\nElite - 10\n",
						["cost"] = { { "i", 169590, 15 } },	-- 15x Burgeoning Battlefield Furor
					}),
					i(169899, {	-- Polished Skull Trophy (Rank 4)
						["description"] = "Requires reaching Elite rating in PvP and opening your next weekly chest.\n",
						["cost"] = { { "i", 169590, 15 } },	-- 15x Burgeoning Battlefield Furor
						["u"] = REMOVED_FROM_GAME,	-- Removed // Old PvP Elite/Gladiator
					}),
				}),
				q(54978, {	-- Against Overwhelming Odds
					["provider"] = { "n", 135614 },	-- Master Mathias Shaw
					["coord"] = { 70.4, 27.0, BORALUS },
					["races"] = ALLIANCE_ONLY,
					["isWeekly"] = true,
					["g"] = {
						i(167100, {	-- Alliance Champion's Cache
							["modID"] = 53,	-- iLvl 415
							["sym"] = {
								{"select", "headerID", WAR_EFFORT },	-- Find the War Effort Header
								{"find", "mapID", ARATHI_HIGHLANDS },	-- Find Arathi Highlands
								{"find", "headerID", COMMON_BOSS_DROPS},	-- Find the Common Boss Drop Header.
								{"find", "headerID", FACTION_HEADER_ALLIANCE},	-- Select the Faction Header.
								{"extract","sourceID"},	-- Extract Sources
								{"modID", 53},	-- Apply specific modID
							},
						}),
					},
				}),
				q(52944, {	-- Call to Arms: Drustvar
					["provider"] = { "n", 143559 },	-- Grand Marshal Tremblade
					["isWeekly"] = true,
					["coord"] = { 56.4, 26.0, BORALUS },
					["races"] = ALLIANCE_ONLY,
					["g"] = {
						ASPIRANTS_EQUIPMENT_CACHE,
						i(169614),	-- Call to Arms Distinction
					},
				}),
				q(56649, {	-- Call to Arms: Mechagon
					["provider"] = { "n", 143559 },	-- Grand Marshal Tremblade
					["isWeekly"] = true,
					["coord"] = { 56.4, 26.0, BORALUS },
					["races"] = ALLIANCE_ONLY,
					["g"] = {
						ASPIRANTS_EQUIPMENT_CACHE,
						i(169614),	-- Call to Arms Distinction
					},
				}),
				q(56648, {	-- Call to Arms: Nazjatar
					["sourceQuests"] = { 56156 },	-- A Tempered Blade
					["provider"] = { "n", 143559 },	-- Grand Marshal Tremblade
					["isWeekly"] = true,
					["coord"] = { 56.4, 26.0, BORALUS },
					["races"] = ALLIANCE_ONLY,
					["g"] = {
						ASPIRANTS_EQUIPMENT_CACHE,
						i(169614),	-- Call to Arms Distinction
					},
				}),
				q(52949, {	-- Call to Arms: Nazmir
					["provider"] = { "n", 143559 },	-- Grand Marshal Tremblade
					["isWeekly"] = true,
					["coord"] = { 56.4, 26.0, BORALUS },
					["races"] = ALLIANCE_ONLY,
					["g"] = {
						ASPIRANTS_EQUIPMENT_CACHE,
						i(169614),	-- Call to Arms Distinction
					},
				}),
				q(52782, {	-- Call to Arms: Stormsong Valley
					["provider"] = { "n", 143559 },	-- Grand Marshal Tremblade
					["isWeekly"] = true,
					["coord"] = { 56.4, 26.0, BORALUS },
					["races"] = ALLIANCE_ONLY,
					["g"] = {
						ASPIRANTS_EQUIPMENT_CACHE,
						i(169614),	-- Call to Arms Distinction
					},
				}),
				q(52948, {	-- Call to Arms: Tiragarde Sound
					["provider"] = { "n", 143559 },	-- Grand Marshal Tremblade
					["isWeekly"] = true,
					["coord"] = { 56.2, 26.0, BORALUS },
					["races"] = ALLIANCE_ONLY,
					["g"] = {
						ASPIRANTS_EQUIPMENT_CACHE,
						i(169614),	-- Call to Arms Distinction
					},
				}),
				q(59019, {	-- Call to Arms: Uldum
					["provider"] = { "n", 143559 },	-- Grand Marshal Tremblade
					["isWeekly"] = true,
					["coord"] = { 56.4, 26.0, BORALUS },
					["races"] = ALLIANCE_ONLY,
					["g"] = {
						ASPIRANTS_EQUIPMENT_CACHE,
						i(169614),	-- Call to Arms Distinction
					},
				}),
				q(59018, {	-- Call to Arms: Vale of Eternal Blossoms
					["provider"] = { "n", 143559 },	-- Grand Marshal Tremblade
					["isWeekly"] = true,
					["coord"] = { 56.4, 26.0, BORALUS },
					["races"] = ALLIANCE_ONLY,
					["g"] = {
						ASPIRANTS_EQUIPMENT_CACHE,
						i(169614),	-- Call to Arms Distinction
					},
				}),
				q(52950, {	-- Call to Arms: Vol'dun
					["provider"] = { "n", 143559 },	-- Grand Marshal Tremblade
					["isWeekly"] = true,
					["coord"] = { 56.4, 26.0, BORALUS },
					["races"] = ALLIANCE_ONLY,
					["g"] = {
						ASPIRANTS_EQUIPMENT_CACHE,
						i(169614),	-- Call to Arms Distinction
					},
				}),
				q(52951, {	-- Call to Arms: Zuldazar
					["provider"] = { "n", 143559 },	-- Grand Marshal Tremblade
					["isWeekly"] = true,
					["coord"] = { 56.4, 26.0, BORALUS },
					["races"] = ALLIANCE_ONLY,
					["g"] = {
						ASPIRANTS_EQUIPMENT_CACHE,
						i(169614),	-- Call to Arms Distinction
					},
				}),
				q(53295, {	-- Do Your Part
					["provider"] = { "n", 141698 },	--  Kort Ceefer
					["races"] = ALLIANCE_ONLY,
					["coord"] = { 56.4, 25.8, BORALUS },
					["g"] = {
						i(163604, {	-- Net-O-Matic 5000
							["filterID"] = CONSUMABLES,
						}),
					},
				}),
				q(53075, {	-- Dueler's Guild
					["sourceQuests"] = { 53073 },	-- Hook Point Investigation
					["provider"] = { "n", 143559 },	-- Grand Marshal Tremblade
					["coord"] = { 56.3, 26.0, BORALUS },
					["races"] = ALLIANCE_ONLY,
				}),
				q(53073, {	-- Hook Point Investigation
					["provider"] = { "n", 135614 },	-- Master Mathias Shaw
					["coord"] = { 70.4, 26.9, BORALUS },
					["races"] = ALLIANCE_ONLY,
				}),
				q(56499, {	-- Storming the Battlefields!
					["provider"] = { "n", 143560 },	-- Marshal Gabriel
					["races"] = ALLIANCE_ONLY,
					["coord"] = { 56.4, 25.8, BORALUS },
					["g"] = {
						i(168920),	-- Azerite-Encrusted Timequartz (Rank 1)
						i(168442),	-- Roiling Blood of the Vanquished (Rank 1)
						i(168578),	-- Sphere of Suppressed Force (Rank 1)
					},
				}),
			})),
			n(OUTPOSTS, {
				["description"] = "Alliance Outposts allow you to set up additional bases in Zandalar.  You can buy Scouting Reports from Vindicator Jaelaana, the vendor next to Wind's Redemption.  Each one will start a mission on your Mission Command Table.  After you complete the initial questline, you'll be offered additional missions to upgrade your outposts.",
				["g"] = {
					i(165880, {	-- Outpost Upgrade: Arom's Stand
						["races"] = ALLIANCE_ONLY,
						["cost"] = { { "c", 1560, 500 }, },	-- 500x War Resources
						["filterID"] = CONSUMABLES,	-- Might change to Misc later
						["g"] = {
							mi(2111, {	-- Upgrade: Arom's Stand
								["races"] = ALLIANCE_ONLY,
								["g"] = {
									q(54306, {	-- Mission Report: Arom's Stand
										["provider"] = { "n", 138704 },		-- Mission Command Table
										["races"] = ALLIANCE_ONLY,
										["coord"] = { 70.5, 27.2, BORALUS },
									}),
								},
							}),
							q(54307, {	-- Outpost Upgrade: Arom's Stand
								["sourceQuests"] = { 54306 },		-- Mission Report: Arom's Stand
								["provider"] = { "n", 135612 },		-- Halford Wyrmbane
								["races"] = ALLIANCE_ONLY,
								["coord"] = { 69.4, 27.0, BORALUS },
							}),
						},
					}),
					i(165836, {	-- Outpost Upgrade: Brennadam
						["races"] = ALLIANCE_ONLY,
						["cost"] = { { "c", 1560, 500 }, },	-- 500x War Resources
						["filterID"] = CONSUMABLES,	-- Might change to Misc later
						["g"] = {
							mi(2109, {	-- Upgrade: Brennadam
								["races"] = ALLIANCE_ONLY,
								["g"] = {
									q(54262, {	-- Mission Report: Brennadam
										["provider"] = { "n", 138704 },	-- Mission Command Table
										["races"] = ALLIANCE_ONLY,
										["coord"] = { 70.5, 27.2, BORALUS },
									}),
								},
							}),
							q(54263, {	-- Outpost Upgrade: Brennadam
								["sourceQuests"] = { 54262 },	-- Mission Report: Brennadam
								["provider"] = { "n", 135612 },	-- Halford Wyrmbane
								["races"] = ALLIANCE_ONLY,
								["coord"] = { 69.4, 27.0, BORALUS },
							}),
						},
					}),
					i(165873, {	-- Outpost Upgrade: Castaway Point
						["races"] = ALLIANCE_ONLY,
						["cost"] = { { "c", 1560, 500 }, },	-- 500x War Resources
						["filterID"] = CONSUMABLES,	-- Might change to Misc later
						["g"] = {
							mi(2110, {	-- Upgrade: Castaway Point
								["races"] = ALLIANCE_ONLY,
								["g"] = {
									q(54284, {	-- Mission Report: Castaway Point
										["provider"] = { "n", 138704 },	-- Mission Command Table
										["races"] = ALLIANCE_ONLY,
										["coord"] = { 70.5, 27.2, BORALUS },
									}),
								},
							}),
							q(54288, {	-- Outpost Upgrade: Castaway Point
								["sourceQuests"] = { 54284 },	-- Mission Report: Castaway Point
								["provider"] = { "n", 135612 },	-- Halford Wyrmbane
								["races"] = ALLIANCE_ONLY,
								["coord"] = { 69.4, 27.0, BORALUS },
							}),
						},
					}),
					i(163043, {	-- Scouting Report: Grimwatt's Crash
						["races"] = ALLIANCE_ONLY,
						["cost"] = { { "c", 1560, 50 }, },	-- 50x War Resources
						["filterID"] = CONSUMABLES,	-- Might change to Misc later
						["g"] = {
							mi(2090, {	-- Grimwatt's Crash
								["races"] = ALLIANCE_ONLY,
								["g"] = {
									q(53006, {	-- Mission Report: Grimwatt's Crash
										["provider"] = { "n", 138704 },	-- Mission Command Table
										["coord"] = { 70.5, 27.2, BORALUS },
										["races"] = ALLIANCE_ONLY,
										["g"] = {
											i(162977),	-- Mission Report (QI!)
										},
									}),
								},
							}),
							q(53007, {	-- Grimwatt's Crash
								["sourceQuests"] = { 53006 },	-- Mission Report: Grimwatt's Crash
								["provider"] = { "n", 135612 },	-- Halford Wyrmbane
								["coord"] = { 69.4, 27.0, BORALUS },
								["races"] = ALLIANCE_ONLY,
							}),
							mi(2096, {	-- Ambush at Grimwatt's Crash
								["races"] = ALLIANCE_ONLY,
								["g"] = {
									q(53186, {	-- Mission Report: Ambush at Grimwatt's Crash
										["sourceQuests"] = { 53006 },	-- Mission Report: Grimwatt's Crash
										["provider"] = { "n", 138704 },	-- Mission Command Table
										["coord"] = { 70.5, 27.2, BORALUS },
										["races"] = ALLIANCE_ONLY,
									}),
								},
							}),
							q(53187, {	-- An Unexpected Guest
								["sourceQuests"] = { 53186 },	-- Mission Report: Ambush at Grimwatt's Crash
								["provider"] = { "n", 135612 },	-- Halford Wyrmbane
								["coord"] = { 69.4, 27.0, BORALUS },
								["races"] = ALLIANCE_ONLY,
							}),
						},
					}),
					i(163044, {	-- Scouting Report: Mistvine Ledge
						["races"] = ALLIANCE_ONLY,
						["cost"] = { { "c", 1560, 100 }, },	-- 100x War Resources
						["filterID"] = CONSUMABLES,	-- Might change to Misc later
						["g"] = {
							mi(2089, {	-- Mistvine Ledge
								["races"] = ALLIANCE_ONLY,
								["g"] = {
									q(52962, {	-- Mission Report: Mistvine Ledge
										["provider"] = { "n", 138704 },		-- Mission Command Table
										["races"] = ALLIANCE_ONLY,
										["coord"] = { 70.5, 27.2, BORALUS },
										["g"] = {
											i(162646),	-- Mission Report (QI!)
										},
									}),
								},
							}),
							q(52963, {	-- Mistvine Ledge
								["sourceQuests"] = { 52962 },	-- Mission Report: Mistvine Ledge
								["provider"] = { "n", 135612 },	-- Halford Wyrmbane
								["races"] = ALLIANCE_ONLY,
								["coord"] = { 69.4, 27.0, BORALUS },
							}),
							mi(2100, {	-- Jungle Escort
								["sourceQuests"] = { 52963 },	-- Mistvine Ledge
								["races"] = ALLIANCE_ONLY,
								["g"] = {
									q(53306, {	-- Mission Report: Jungle Escort
										["provider"] = { "n", 138704 },		-- Mission Command Table
										["coord"] = { 70.5, 27.2, BORALUS },
										["races"] = ALLIANCE_ONLY,
									}),
								},
							}),
							q(53307, {	-- Jungle Escort
								["sourceQuests"] = { 53306 },	-- Mission Report: Jungle Escort
								["provider"] = { "n", 135612 },	-- Halford Wyrmbane
								["races"] = ALLIANCE_ONLY,
								["coord"] = { 69.4, 27.0, BORALUS },
							}),
						},
					}),
					i(163047, {	-- Scouting Report: Mugamba Overlook
						["races"] = ALLIANCE_ONLY,
						["cost"] = { { "c", 1560, 100 }, },	-- 100x War Resources
						["filterID"] = CONSUMABLES,	-- Might change to Misc later
						["g"] = {
							mi(2069, {	-- Mugamba Overlook
								["races"] = ALLIANCE_ONLY,
								["g"] = {
									q(52851, {	-- Mission Report: Mugamba Overlook
										["provider"] = { "n", 138704 },	-- Mission Command Table
										["races"] = ALLIANCE_ONLY,
										["coord"] = { 70.5, 27.2, BORALUS },
										["g"] = {
											i(162577),	-- Mission Report (QI!)
										},
									}),
								},
							}),
							q(52852, {	-- Mugamba Overlook
								["sourceQuests"] = { 52851 },	-- Mission Report: Mugamba Overlook
								["provider"] = { "n", 135612 },	-- Halford Wyrmbane
								["races"] = ALLIANCE_ONLY,
								["coord"] = { 69.4, 27.0, BORALUS },
							}),
							mi(2099, {	-- Spare Parts
								["sourceQuests"] = { 52852 },	-- Mugamba Overlook
								["races"] = ALLIANCE_ONLY,
								["g"] = {
									q(53275, {	-- Mission Report: Spare Parts
										["provider"] = { "n", 138704 },	-- Mission Command Table
										["races"] = ALLIANCE_ONLY,
										["coord"] = { 70.5, 27.2, BORALUS },
										["g"] = {
											i(163602),	-- Mission Report (QI!)
										},
									}),
								},
							}),
							q(53276, {	-- Spare Parts
								["sourceQuests"] = { 53275 },	-- Mission Report: Spare Parts
								["provider"] = { "n", 135612 },	-- Halford Wyrmbane
								["races"] = ALLIANCE_ONLY,
								["coord"] = { 69.4, 27.0, BORALUS },
							}),
						},
					}),
					i(163048, {	-- Scouting Report: Veiled Grotto
						["races"] = ALLIANCE_ONLY,
						["cost"] = { { "c", 1560, 50 }, },	-- 50x War Resources
						["filterID"] = CONSUMABLES,	-- Might change to Misc later
						["g"] = {
							mi(2068, {	-- Veiled Grotto
								["races"] = ALLIANCE_ONLY,
								["g"] = {
									q(52801, {	-- Mission Report: Veiled Grotto
										["provider"] = { "n", 138704 },		-- Mission Command Table
										["races"] = ALLIANCE_ONLY,
										["coord"] = { 70.5, 27.2, BORALUS },
										["g"] = {
											i(162553),	-- Mission Report (QI!)
										},
									}),
								},
							}),
							q(52802, {	-- Veiled Grotto
								["sourceQuests"] = { 52801 },		-- Mission Report: Veiled Grotto
								["provider"] = { "n", 135612 },		-- Halford Wyrmbane
								["races"] = ALLIANCE_ONLY,
								["coord"] = { 69.4, 27.0, BORALUS },
							}),
						},
					}),
					i(163046, {	-- Scouting Report: Verdant Hollow
						["races"] = ALLIANCE_ONLY,
						["cost"] = { { "c", 1560, 100 }, },	-- 100x War Resources
						["filterID"] = CONSUMABLES,	-- Might change to Misc later
						["g"] = {
							mi(2070, {	-- Verdant Hollow
								["races"] = ALLIANCE_ONLY,
								["g"] = {
									q(52886, {	-- Mission Report: Verdant Hollow
										["provider"] = { "n", 138704 },	-- Mission Command Table
										["races"] = ALLIANCE_ONLY,
										["coord"] = { 70.5, 27.2, BORALUS },
										["g"] = {
											i(162604),	-- Mission Report (QI!)
										},
									}),
								},
							}),
							q(52888, {	-- Verdant Hollow
								["sourceQuests"] = { 52886 },	-- Mission Report: Verdant Hollow
								["provider"] = { "n", 135612 },	-- Halford Wyrmbane
								["races"] = ALLIANCE_ONLY,
								["coord"] = { 69.4, 27.0, BORALUS },
							}),
							mi(2098, {	-- Dino Research
								["sourceQuests"] = { 52888 },	-- Verdant Hollow
								["races"] = ALLIANCE_ONLY,
								["g"] = {
									q(53267, {	-- Mission Report: Dino Research
										["provider"] = { "n", 138704 },	-- Mission Command Table
										["races"] = ALLIANCE_ONLY,
										["coord"] = { 70.5, 27.2, BORALUS },
										["g"] = {
											i(163597),	-- Mission Report (QI!)
										},
									}),
								},
							}),
							q(53268, {	-- Dino Research
								["sourceQuests"] = { 53267 },	-- Mission Report: Dino Research
								["provider"] = { "n", 135612 },	-- Halford Wyrmbane
								["races"] = ALLIANCE_ONLY,
								["coord"] = { 69.4, 27.0, BORALUS },
							}),
						},
					}),
					i(163041, {	-- Scouting Report: Vulture's Nest
						["races"] = ALLIANCE_ONLY,
						["cost"] = { { "c", 1560, 100 }, },	-- 100x War Resources
						["filterID"] = CONSUMABLES,	-- Might change to Misc later
						["g"] = {
							mi(2091, {	-- Vulture's Nest
								["races"] = ALLIANCE_ONLY,
								["g"] = {
									q(53043, {	-- Mission Report: Vulture's Nest
										["provider"] = { "n", 138704 },	-- Mission Command Table
										["races"] = ALLIANCE_ONLY,
										["coord"] = { 70.5, 27.2, BORALUS },
										["g"] = {
											i(163039),	-- Mission Report (QI!)
										},
									}),
								},
							}),
							q(53044, {	-- Vulture's Nest
								["sourceQuests"] = { 53043 },	-- Mission Report: Vulture's Nest
								["provider"] = { "n", 135612 },	-- Halford Wyrmbane
								["races"] = ALLIANCE_ONLY,
								["coord"] = { 69.4, 27.0, BORALUS },
							}),
							mi(2097, {	-- Missing Supplies
								["sourceQuests"] = { 53044 },	-- Vulture's Nest
								["races"] = ALLIANCE_ONLY,
								["g"] = {
									q(53221, {	-- Mission Report: Missing Supplies
										["provider"] = { "n", 138704 },	-- Mission Command Table
										["coord"] = { 70.5, 27.2, BORALUS },
										["races"] = ALLIANCE_ONLY,
										["g"] = {
											i(163572),	-- Mission Report (QI!)
										},
									}),
								},
							}),
							q(53222, {	-- Necessary Supplies
								["sourceQuests"] = { 53221 },	-- Mission Report: Missing Supplies
								["provider"] = { "n", 135612 },	-- Halford Wyrmbane
								["races"] = ALLIANCE_ONLY,
								["coord"] = { 69.4, 27.0, BORALUS },
							}),
						},
					}),
				},
			}),
			q(57126, {	-- ...And Following Seas
				["sourceQuests"] = { 57002 },	-- Old Soldier
				["provider"] = { "n", 150633 },	-- Lady Jaina Proudmoore
				["coord"] = { 69.5, 27.1, BORALUS },
				["races"] = ALLIANCE_ONLY,
			}),
			q(51144, {	-- A Bundle of Furs
				["sourceQuests"] = { 47189 },	-- A Nation Divided
				["provider"] = { "n", 124289 },	-- "Risky" Liz Seminario <Fur Trader>
				["races"] = ALLIANCE_ONLY,
				["coord"] = { 72.2, 16.2, BORALUS },
				["g"] = {
					i(159751),	-- Bundle of Warm Furs (QI!)
				},
			}),
			q(52453, {	-- A Forlorn Hope
				["sourceQuests"] = { 52449 },	-- The Mysterious Island
				["provider"] = { "n", 140495 },
				["coord"] = { 36.4, 62.8, BORALUS },
				["races"] = ALLIANCE_ONLY,
			}),
			q(58674, {	-- A Gathering of Champions
				["sourceQuests"] = {
					58631,	-- Into Dreams
				},
				["provider"] = { "n", 135614 },	-- Master Mathias Shaw
				["coord"] = { 70.4, 27.0, BORALUS },
				["races"] = ALLIANCE_ONLY,
			}),
			q(52462, {	-- A Load of Scrap
				["sourceQuests"] = { 46728 },	-- The Nation of Kul Tiras
				["provider"] = { "n", 141274 },	-- Crenzo Sparkshatter
				["coord"] = { 77.1, 16.4, BORALUS },
				["races"] = ALLIANCE_ONLY,
				["g"] = {
					a(ach(12741)),	-- Giving a Scrap (A)
					i(160266),	-- Scrapped Cloth (QI!)
					i(160267),	-- Tattered Pants (QI!)
				},
			}),
			q(52762, {	-- A Local Guide
				["sourceQuests"] = { 52246 },	-- Lost Shipment
				["provider"] = { "n", 140649 },	-- Genn Greymane
				["coord"] = { 67.0, 36.2, TIRAGARDE_SOUND },
				["races"] = ALLIANCE_ONLY,
			}),
			q(52151, {	-- A Nation United
				["sourceQuests"] = { 52153 },	-- Siege of Boralus: Lady Ashvane's Return
				["provider"] = { "n", 120788 },	-- Genn Greymane
				["coord"] = { 67.9, 22.2, BORALUS },
				["races"] = ALLIANCE_ONLY,
			}),
			q(54947, {	-- A Small Team
				["sourceQuests"] = { 54946 },	-- Report to Gila
				["provider"] = { "n", 151100 },	-- Gila Crosswires
				["coord"] = { 67.3, 15.7, BORALUS },
				["races"] = ALLIANCE_ONLY,
			}),
			q(52252, {	-- An Explosive Entrance
				["sourceQuests"] = { 52762 },	-- A Local Guide
				["provider"] = { "n", 140732 },	-- Flynn Fairwind
				["coord"] = { 67.7, 22.1, BORALUS },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					o_repeated({
						i(161438),	-- Large Azerite Grenade (QI!)
						o(296252),	-- Box of Lare Azerite Grenades
						o(293134),	-- Lare Azerite Grenade
					}),
				},
			}),
			q(51488, {	-- Archived Knowledge
				["sourceQuests"] = { 51487 },	-- Searching for Answers
				["provider"] = { "n", 137871 },	-- Taelia
				["races"] = ALLIANCE_ONLY,
				-- NOTE: This might have to move to a different map. - Crieve
			}),
			q(50789, {	-- Clear the Air
				["sourceQuests"] = { 50787 },	-- Make Our Case
				["provider"] = { "n", 135259 },	-- Taelia
				["coord"] = { 49.9, 87.3, BORALUS },
				["races"] = ALLIANCE_ONLY,
			}),
			q(51341, {	-- Daughter of the Sea
				["sourceQuests"] = { 46728 },	-- The Nation of Kul Tiras
				["provider"] = { "n", 120922 },	-- Lady Jaina Proudmoore
				["coord"] = { 65.7, 50.6, BORALUS },
				["races"] = ALLIANCE_ONLY,
			}),
			q(47961, {	-- Drustvar
				["sourceQuests"] = { 47189 },	-- A Nation Divided
				["isBreadcrumb"] = true,
				["provider"] = { "n", 139522 },	-- Scouting Map
				["races"] = ALLIANCE_ONLY,
			}),
			q(50788, {	-- Enemies Within
				["sourceQuests"] = { 50787 },	-- Make Our Case
				["provider"] = { "n", 135259 },	-- Taelia
				["coord"] = { 49.9, 87.3, BORALUS },
				["races"] = ALLIANCE_ONLY,
			}),
			q(54495, {	-- Expanding Our Influence
				["provider"] = { "n", 135446 },	-- Vindicator Jaelaana
				["coord"] = { 69.0, 24.7, BORALUS },
				["races"] = ALLIANCE_ONLY,
			}),
			q(52128, {	-- Ferry Pass
				["sourceQuests"] = { 46729 },	-- The Old Knight
				["provider"] = { "n", 122370 },	-- Cyrus Crestfall
				["coord"] = { 68.0, 21.9, BORALUS },
				["races"] = ALLIANCE_ONLY,
			}),
			q(50790, {	-- Hot Pursuit
				["sourceQuests"] = {
					50789,	-- Clear the Air
					50788,	-- Enemies Within
				},
				["provider"] = { "n", 135259 },	-- Taelia
				["races"] = ALLIANCE_ONLY,
			}),
			q(52246, {	-- Lost Shipment
				["sourceQuests"] = { 52194 },	-- Lost Shipment
				["provider"] = { "n", 140495 },	-- Katherine Proudmoore
				["coord"] = { 67.0, 36.2, TIRAGARDE_SOUND },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(161437),	-- Shipping Contract (QI!)
				},
			}),
			q(50787, {	-- Make Our Case
				["sourceQuests"] = { 50795 },	-- Prepare for Trouble
				["provider"] = { "n", 135335 },	-- Proudmoore Guard
				["races"] = ALLIANCE_ONLY,
			}),
			q(52481, {	-- Of Myth and Fable
				["sourceQuests"] = { 52513 },	-- Lost in Darkness
				["provider"] = { "n", 140495 },	-- Katherine Proudmoore
				["coord"] = { 36.4, 62.8, BORALUS },
				["races"] = ALLIANCE_ONLY,
			}),
			q(53847, {	-- On Whispered Winds
				["provider"] = { "n", 152000 },	-- Dori'thur
				["coord"] = { 70.7, 26.8, BORALUS },
				["races"] = ALLIANCE_ONLY,
				["g"] = {
					spell(290834),	-- Blessing of the Night Warrior
				},
			}),
			q(50795, {	-- Prepare for Trouble
				["sourceQuests"] = { 50110 },	-- Bearers of Bad News
				["provider"] = { "n", 135259 },	-- Taelia
				["coord"] = { 48.9, 75.5, BORALUS },
				["races"] = ALLIANCE_ONLY,
			}),
			q(50972, {	-- Proudmoore's Parley
				["sourceQuests"] = { 50790 },	-- Hot Pursuit
				["provider"] = { "n", 121144 },	-- Katherine Proudmoore <Lord Admiral of Kul Tiras>
				["coord"] = { 48.2, 80.7, BORALUS },
				["races"] = ALLIANCE_ONLY,
				["g"] = {
					azeriteItem(155034),	-- Freebooter Cowl
					azeriteItem(155022),	-- Freebooter Tunic
					azeriteItem(155039),	-- Navigator's Robes
					azeriteItem(155032),	-- Navigator's Circlet
					azeriteItem(155021),	-- Outrigger Chainmail
					azeriteItem(155033),	-- Outrigger Helm
					azeriteItem(155031),	-- Sea Raider's Greathelm
					azeriteItem(155020),	-- Sea Raider's Breastplate
					azewrongItem(175297),	-- Freebooter Cowl (no azerite version)
					azewrongItem(175356),	-- Freebooter Tunic (no azerite version)
					azewrongItem(175357),	-- Navigator's Robes (no azerite version)
					azewrongItem(175295),	-- Navigator's Circlet (no azerite version)
					azewrongItem(175355),	-- Outrigger Chainmail (no azerite version)
					azewrongItem(175296),	-- Outrigger Helm (no azerite version)
					azewrongItem(175294),	-- Sea Raider's Greathelm (no azerite version)
					azewrongItem(175354),	-- Sea Raider's Breastplate (no azerite version)
				},
			}),
			q(57324, {	-- Sail With the Tide
				--["sourceQuests"] = { 57126 },	-- ...And Following Seas -- maybe this one? but it was back in 8.2.5
				["provider"] = { "n", 150633 },	-- Lady Jaina Proudmoore
				["coord"] = { 69.34, 27.15, BORALUS },
				["races"] = ALLIANCE_ONLY,
			}),
			q(51487, {	-- Searching for Answers
				["sourceQuests"] = { 47952 },	-- The Missing Fleet
				["provider"] = { "n", 137866 },	-- Taelia
				["coord"] = { 65.2, 68.7, BORALUS },
				["races"] = ALLIANCE_ONLY,
			}),
			q(56043, {	-- Send the Fleet -- also triggered 56881
				["sourceQuests"] = { 56031 },	-- The Wolf's Offensive
				["provider"] = { "n", 153932 },	-- Genn Greymane
				["coord"] = { 70.6, 27.2, BORALUS },
				["races"] = ALLIANCE_ONLY,
			}),
			q(52153, {	-- Siege of Boralus: Lady Ashvane's Return
				["sourceQuests"] = { 51445 },	-- Thros, the Blighted Lands
				["provider"] = { "n", 141785 },	-- Katherine Proudmoore
				["coord"] = { 44.7, 62.7, BORALUS },
				["races"] = ALLIANCE_ONLY,
			}),
			q(47962, {	-- Stormsong Valley
				["sourceQuests"] = { 47189 },	-- A Nation Divided
				["isBreadcrumb"] = true,
				["provider"] = { "n", 139522 },	-- Scouting Map
				["races"] = ALLIANCE_ONLY,
			}),
			q(47485, {	-- The Ashvane Trading Company
				["sourceQuests"] = { 47181 },	-- The Smoking Gun
				["provider"] = { "n", 122370 },	-- Cyrus Crestfall
				["coord"] = { 67.9, 22.0, BORALUS },
				["races"] = ALLIANCE_ONLY,
			}),
			q(54088, {	-- The Legend of Mechagon
				["sourceQuests"] = {
					57009,	-- Fame Waits for Gnome One (Nazjatar)
					58708,	-- Fame Waits for Gnome One (Stormwind)
				},
				["provider"] = { "n", 150208 },	-- Tinkmaster Overspark
				["coord"] = { 67.2, 15.6, BORALUS },
				["races"] = ALLIANCE_ONLY,
			}),
			q(49223, {	-- The Long Con
				["sourceQuests"] = { 49523 },	-- A Bad Deal
				["provider"] = { "n", 129940 },	-- Roko <Wandering Merchant>
				["coord"] = { 70.3, 8.4, BORALUS },
				["races"] = ALLIANCE_ONLY,
			}),
			q(52449, {	-- The Mysterious Island
				["sourceQuests"] = { 52445 },	-- Tol Dagor: The Fourth Key
				["provider"] = { "n", 140732 },	-- Flynn Fairwind
				["coord"] = { 68.0, 22.6, BORALUS },
				["races"] = ALLIANCE_ONLY,
			}),
			q(56378, {	-- The Missing Crew
			--	["sourceQuests"] = {  },	-- UNKNOWN
				["provider"] = { "n", 135681 },	-- Grand Admiral Jes-Tereth
				["coord"] = { 67.9, 26.4, BORALUS },
				["races"] = ALLIANCE_ONLY,
				["g"] = {
					follower(1182),	-- Grand Admiral Jes-Tereth
				},
			}),
			q(47952, {	-- The Missing Fleet
				["sourceQuests"] = { 47962 },	-- Stormsong Valley
				["provider"] = { "n", 121235 },	-- Taelia
				["races"] = ALLIANCE_ONLY,
			}),
			q(47181, {	-- The Smoking Gun
				["sourceQuests"] = { 47960 },	-- Tiragarde Sound
				["provider"] = { "n", 121239 },	-- Flynn Fairwind
				["coord"] = { 67.7, 22.0, BORALUS },
				["races"] = ALLIANCE_ONLY,
			}),
			q(54992, {	-- The Start of Something Bigger
				["sourceQuests"] = { 54947 },	-- A Small Team
				["provider"] = { "n", 150145 },	-- Gila Crosswires
				["coord"] = { 43.3, 32.0, BORALUS },
				["races"] = ALLIANCE_ONLY,
			}),
			q(48622, {	-- The Vanishing Lord
				["sourceQuests"] = { 47961 },	-- Drustvar
				["altQuests"] = { 53434 },	-- The Vanishing Lord
				["provider"] = { "n", 121235 },	-- Taelia
				["coord"] = { 68.0, 22.0, BORALUS },
				["races"] = ALLIANCE_ONLY,
			}),
			q(56031, {	-- The Wolf's Offensive
				["description"] = "If not encountered the regular way, this can be obtained via party sync. You need to sync with a character which has just started BFA and gotten the portals unlocked in Boralus, but hasn't proceeded further. You then need to pick up the quest A Dying World and run it again. Continue up to and finish the quest Infusing the Heart. Then this quest should pop up for you.",
				["races"] = ALLIANCE_ONLY,
				["isBreadcrumb"] = true,
			}),
			q(51489, {	-- Time to Leave
				["sourceQuests"] = { 51488 },	-- Archived Knowledge
				["provider"] = { "n", 137871 },	-- Taelia
				["coord"] = { 73.6, 39.5, TIRAGARDE_SOUND },
				["races"] = ALLIANCE_ONLY,
			}),
			q(47960, {	-- Tiragarde Sound
				["sourceQuests"] = { 47189 },	-- A Nation Divided
				["provider"] = { "n", 139522 },	-- Scouting Map
				["coord"] = { 68.3, 22.1, BORALUS },
				["races"] = ALLIANCE_ONLY,
			}),
			q(52800, {	-- Tol Dagor: The Ashvane Overseer
				["sourceQuests"] = { 50972 },	-- Proudmoore's Parley
				["provider"] = { "n", 122370 },	-- Cyrus Crestfall
				["coord"] = { 67.9, 22.0, BORALUS },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 10,
				["g"] = {
					i(163161),	-- Tol Dagor Master Key (QI!)
				}
			}),
			q(49715, {	-- Trouble at Greystone Keep
				-- ["sourceQuests"] = { 50790 },	-- Hot Pursuit	-- TODO maybe earlier? maybe none?
				["isBreadcrumb"] = true,
				["provider"] = { "n", 130377 },	-- Courier Gerald
				["races"] = ALLIANCE_ONLY,
				["coord"] = { 69.2, 11.6, BORALUS },
			}),
			q(52194, {	-- What You May Regret
				["provider"] = { "n", 122370 },	-- Cyrus Crestfall
				["coord"] = { 67.9, 22.0, BORALUS },
				["races"] = ALLIANCE_ONLY,
			}),
			q(53815, {	-- Whatever Happened to Saffy Flivvers?
				["sourceQuests"] = { 55119 },	-- Reporting In!
				["provider"] = { "n", 143851 },	-- Kelsey Steelspark
				["coord"] = { 67.8, 26.2, BORALUS },
				["races"] = ALLIANCE_ONLY,
			}),

			-- Not sorted
			q(75877, {	-- Time to Fly
				["description"] = "Reaching Level 30 will make this quest pop up.",
				["races"] = ALLIANCE_ONLY,
				["timeline"] = { ADDED_10_1_5 },
				["g"] = {
					i(206567),	-- Harbor Gryphon (MOUNT!)
				},
			}),
		}),
	}),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.BFA, bubbleDownSelf({ ["timeline"] = { ADDED_8_0_1 } }, {
	m(KUL_TIRAS, {
		m(BORALUS, {
			n(QUESTS, {
				-- Missions
				q(53746),	-- Verdant Hollow completed
				q(53747),	-- Veiled Grotto completed
				q(53748),	-- Mugamba Overlook completed
				q(53749),	-- Mistvine Ledge completed
				q(53750),	-- Vulture's Nest completed
				q(53751),	-- Grimwatt's Crash completed
				-- Outpost Upgrades
				q(54292),	-- Brennadam completed
				q(54261),	-- Upgrade: Brennadam started
				q(54296),	-- Castaway Point completed
				q(54305),	-- Mission Report: Arom's Stand
				q(54293),	-- Mission Report: Castaway Point
				q(54283),	-- Upgrade: Castaway Point started
				q(54304),	-- Upgrade: Arom's Stand started
				------ Stay awhile and listen ------ (TODO upgrade to proper HQT in Boralus)
				hqt(54870),	-- "Stay a while and listen" type conversation between Jaina and Katherine Proudmoore next to the flight master. Available during the war campaign after Clearing Out the Cache.
				hqt(55464),	-- "Stay a while and listen" type conversation between Jaina and Tandred Proudmoore in Proudmoore Keep at 48, 60. Obtainable after Sail with the Tides completed.
			}),
		}),
	}),
})));