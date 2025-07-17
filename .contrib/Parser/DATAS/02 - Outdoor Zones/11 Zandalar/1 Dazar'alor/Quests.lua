---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(ZANDALAR, bubbleDown({ ["timeline"] = { ADDED_8_0_1 } }, {
	m(THE_GREAT_SEAL, {
		n(QUESTS, {
		-- TODO: TO SOLVE:
			-- when does "who seeks the seekers?" become available?  seen as early as "the prophet's ploy," but may be available sooner.
			-- verify SQ for "the blood gate."  it may become available after "ateena's fall."  also, is "halting the empire's fall" (which sends you to baine, who offers this quest) a breadcrumb?  "the blood gate" isn't hidden like quests typically are when you have their breadcrumb in their log, so i'm not sure if "halting" is optional/disappears/becomes unavailable after doing "the blood gate."  also, is it available with *only* having done nazmir, or do you also have to finish the main zuldazar questline as well?
			-- figure out if "The Warchief's Order" and "The Warfront Looms" are breadcrumbs.  they're both auto-popup quests after you hit 120, unlock WQs, and relog.  they both direct you to go to dazar'alor and speak with an NPC to pursue nazjatar and the arathi warfront, respectively.

			n(OUTPOSTS, {
				["description"] = "Horde Outposts allow you to set up additional bases in Kul Tiras.  You can buy Scouting Reports from Ransa, the vendor next to The Banshee's Wail.  Each one will start a mission on your Mission Command Table.  After you complete the initial questline, you'll be offered additional missions to upgrade your outposts.",
				["g"] = {
					i(165728, {	-- Outpost Upgrade: The Great Seal (CI!)
						["races"] = HORDE_ONLY,
						["cost"] = { { "c", 1560, 500 }, },	-- 500x War Resources
						["filterID"] = CONSUMABLES,
						["g"] = {
							mi(2106, {	-- Upgrade: The Great Seal
								["races"] = HORDE_ONLY,
								["g"] = {
									q(54225, {	-- Mission Report: The Great Seal
										["provider"] = { "n", 138706 },	-- Mission Command Table
										["races"] = HORDE_ONLY,
										["coord"] = { 51.5, 99.5, DAZARALOR },	-- The Banshee's Wail Location
									}),
								},
							}),
							q(54231, {	-- Outpost Upgrade: The Great Seal
								["sourceQuests"] = { 54225 },	-- Mission Report: The Great Seal
								["provider"] = { "n", 135691 },	-- Nathanos Blightcaller
								["races"] = HORDE_ONLY,
								["coord"] = { 58.4, 62.6, ZULDAZAR },
							}),
						},
					}),
					i(165804, {	-- Outpost Upgrade: Vulpera Hideaway (CI!)
						["races"] = HORDE_ONLY,
						["cost"] = { { "c", 1560, 500 }, },	-- 500x War Resources
						["filterID"] = CONSUMABLES,	-- Might change to Misc later
						["g"] = {
							mi(2108, {	-- Upgrade: Vulpera Hideaway
								["races"] = HORDE_ONLY,
								["g"] = {
									q(54258, {	-- Mission Report: Vulpera Hideaway
										["provider"] = { "n", 138704 },	-- Mission Command Table
										["races"] = HORDE_ONLY,
										["coord"] = { 51.5, 99.5, DAZARALOR },	-- The Banshee's Wail Location
									}),
								},
							}),
							q(54260, {	-- Outpost Upgrade: Vulpera Hideaway
								["sourceQuests"] = { 54258 },	-- Mission Report: Vulpera Hideaway
								["provider"] = { "n", 135691 },	-- Nathanos Blightcaller
								["races"] = HORDE_ONLY,
								["coord"] = { 58.4, 62.6, ZULDAZAR },
							}),
						},
					}),
					i(165750, {	-- Outpost Upgrade: Zul'jan Ruins (CI!)
						["races"] = HORDE_ONLY,
						["cost"] = { { "c", 1560, 500 }, },	-- 500x War Resources
						["filterID"] = CONSUMABLES,	-- Might change to Misc later
						["g"] = {
							mi(2107, {	-- Upgrade: Zul'jan Ruins
								["races"] = HORDE_ONLY,
								["g"] = {
									q(54239, {	-- Mission Report: Zul'jan Ruins
										["provider"] = { "n", 138704 },		-- Mission Command Table
										["races"] = HORDE_ONLY,
										["coord"] = { 51.5, 99.5, DAZARALOR },	-- The Banshee's Wail Location
									}),
								},
							}),
							q(54240, {	-- Outpost Upgrade: Zul'jan Ruins
								["sourceQuests"] = { 54239 },	-- Mission Report: Zul'jan Ruins
								["provider"] = { "n", 135691 },	-- Nathanos Blightcaller
								["races"] = HORDE_ONLY,
								["coord"] = { 58.4, 62.6, ZULDAZAR },
							}),
						},
					}),
					i(162533, {	-- Scouting Report: Hillcrest Pasture
						["races"] = HORDE_ONLY,
						["cost"] = { { "c", 1560, 100 }, },	-- 100x War Resources
						["filterID"] = CONSUMABLES,	-- Might change to Misc later
						["g"] = {
							mi(1967, {	-- Hillcrest Pasture
								["races"] = HORDE_ONLY,
								["g"] = {
									q(52478, {	-- Mission Report: Hillcrest Pasture
										["provider"] = { "n", 138704 },	-- Mission Command Table
										["coord"] = { 51.5, 99.5, DAZARALOR },	-- The Banshee's Wail Location
										["races"] = HORDE_ONLY,
										["g"] = {
											i(162123),	-- Mission Report (QI!)
										},
									}),
								},
							}),
							q(52479, {	-- Hillcrest Pasture
								["sourceQuests"] = { 52478 },	-- Mission Report: Hillcrest Pasture
								["provider"] = { "n", 135691 },	-- Nathanos Blightcaller
								["coord"] = { 58.4, 62.6, ZULDAZAR },
								["races"] = HORDE_ONLY,
							}),
						},
					}),
					i(162535, {	-- Scouting Report: Mudfisher Cove
						["races"] = HORDE_ONLY,
						["cost"] = { { "c", 1560, 100 }, },	-- 100x War Resources
						["filterID"] = CONSUMABLES,	-- Might change to Misc later
						["g"] = {
							mi(1965, {	-- Mudfisher Cove
								["races"] = HORDE_ONLY,
								["g"] = {
									q(52313, {	-- Mission Report: Mudfisher Cove
										["provider"] = { "n", 138704 },	-- Mission Command Table
										["coord"] = { 51.5, 99.5, DAZARALOR },	-- The Banshee's Wail Location
										["races"] = HORDE_ONLY,
										["g"] = {
											i(161482),	-- Mudfisher Cove
											i(161484),	-- Mission Report (QI!)
										},
									}),
								},
							}),
							q(52314, {	-- Mudfisher Cove
								["sourceQuests"] = { 52313 },	-- Mission Report: Mudfisher Cove
								["provider"] = { "n", 135691 },	-- Nathanos Blightcaller
								["coord"] = { 58.4, 62.6, ZULDAZAR },
								["races"] = HORDE_ONLY,
							}),
							mi(2095, {	-- Wicker Defense
								["sourceQuests"] = { 52314 },	-- Mudfisher Cove
								["races"] = HORDE_ONLY,
								["g"] = {
									q(53125, {	-- Mission Report: Into The Wicker (Per Character)
										["provider"] = { "n", 138704 },	-- Mission Command Table
										["coord"] = { 51.5, 99.5, DAZARALOR },	-- The Banshee's Wail Location
										["races"] = HORDE_ONLY,
										["g"] = {
											i(163334),	-- Outpost Upgrade
											i(163335),	-- Mission Report (QI!)
										},
									}),
								},
							}),
							q(53126, {	-- The Wicker Totem (Per Character)
								["sourceQuests"] = { 53125 },	-- Mission Report: Into The Wicker
								["provider"] = { "n", 135691 },	-- Nathanos Blightcaller
								["coord"] = { 58.4, 62.6, ZULDAZAR },
								["races"] = HORDE_ONLY,
							}),
						},
					}),
					i(162531, {	-- Scouting Report: Stonefist Watch
						["races"] = HORDE_ONLY,
						["cost"] = { { "c", 1560, 100 }, },	-- 100x War Resources
						["filterID"] = CONSUMABLES,	-- Might change to Misc later
						["g"] = {
							mi(1963, {	-- Stonefist Watch
								["races"] = HORDE_ONLY,
								["g"] = {
									q(52221, {	-- Mission Report: Stonefist Watch
										["provider"] = { "n", 138704 },	-- Mission Command Table
										["coord"] = { 51.5, 99.5, DAZARALOR },	-- The Banshee's Wail Location
										["races"] = HORDE_ONLY,
										["g"] = {
											i(161386),	-- Mission Report (QI!)
										},
									}),
								},
							}),
							q(52222, {	-- Stonefist Watch
								["sourceQuests"] = { 52221 },	-- Mission Report: Stonefist Watch
								["provider"] = { "n", 135691 },	-- Nathanos Blightcaller
								["coord"] = { 58.4, 62.6, ZULDAZAR },
								["races"] = HORDE_ONLY,
							}),
							mi(2092, {	-- Spare Parts
								["sourceQuests"] = { 52222 },	-- Stonefist Watch
								["races"] = HORDE_ONLY,
								["g"] = {
									q(53081, {	-- Mission Report: Spare Parts (Per Character)
										["provider"] = { "n", 138704 },	-- Mission Command Table
										["coord"] = { 51.5, 99.5, DAZARALOR },	-- The Banshee's Wail Location
										["races"] = HORDE_ONLY,
										["g"] = {
											i(163184),	-- Outpost Upgrade
											i(163185),	-- Mission Report (QI!)
										},
									}),
								},
							}),
							q(53082, {	-- Spare Parts (Per Character)
								["sourceQuests"] = { 53081 },	-- Mission Report: Spare Parts
								["provider"] = { "n", 135691 },	-- Nathanos Blightcaller
								["coord"] = { 58.4, 62.6, ZULDAZAR },
								["races"] = HORDE_ONLY,
							}),
						},
					}),
					i(162534, {	-- Scouting Report: Stonetusk Watch
						["races"] = HORDE_ONLY,
						["cost"] = { { "c", 1560, 100 }, },	-- 100x War Resources
						["filterID"] = CONSUMABLES,	-- Might change to Misc later
						["g"] = {
							mi(2067, {	-- Stonetusk Watch
								["races"] = HORDE_ONLY,
								["g"] = {
									q(52776, {	-- Mission Report: Stonetusk Watch
										["provider"] = { "n", 138704 },	-- Mission Command Table
										["races"] = HORDE_ONLY,
										["coord"] = { 51.5, 99.5, DAZARALOR },	-- The Banshee's Wail Location
										["g"] = {
											i(162511),	-- Stonetusk Watch
											i(162512),	-- Mission Report (QI!)
										},
									}),
								},
							}),
							q(52777, {	-- Stonetusk Watch
								["sourceQuests"] = { 52776 },	-- Mission Report: Stonetusk Watch
								["provider"] = { "n", 135691 },	-- Nathanos Blightcaller
								["coord"] = { 58.4, 62.6, ZULDAZAR },
								["races"] = HORDE_ONLY,
							}),
							mi(2093, {	-- Giant Slaying
								["sourceQuests"] = { 52777 },	-- Stonetusk Watch
								["races"] = HORDE_ONLY,
								["g"] = {
									q(53100, {	-- Mission Report: Giant Slaying (Per Character)
										["provider"] = { "n", 138704 },	-- Mission Command Table
										["coord"] = { 51.5, 99.5, DAZARALOR },	-- The Banshee's Wail Location
										["races"] = HORDE_ONLY,
										["g"] = {
											i(163190),	-- Outpost Upgrade
											i(163191),	-- Mission Report (QI!)
										},
									}),
								},
							}),
							q(53101, {	-- Nettin' Ettin (Per Character)
								["sourceQuests"] = { 53100 },		-- Mission Report: Giant Slaying
								["provider"] = { "n", 135691 },		-- Nathanos Blightcaller
								["coord"] = { 58.4, 62.6, ZULDAZAR },
								["races"] = HORDE_ONLY,
							}),
						},
					}),
					i(162536, {	-- Scouting Report: Swiftwind Post
						["races"] = HORDE_ONLY,
						["cost"] = { { "c", 1560, 50 }, },	-- 50x War Resources
						["filterID"] = CONSUMABLES,	-- Might change to Misc later
						["g"] = {
							mi(1964, {	-- Swiftwind Post
								["races"] = HORDE_ONLY,
								["g"] = {
									q(52275, {	-- Mission Report: Swiftwind Post
										["provider"] = { "n", 138704 },	-- Mission Command Table
										["races"] = HORDE_ONLY,
										["coord"] = { 51.59, 99.58, DAZARALOR },	-- The Banshee's Wail Location
										["g"] = {
											i(165362),	-- Swiftwind Post
											i(161483),	-- Mission Report (QI!)
										},
									}),
								},
							}),
							q(52276, {	-- Swiftwind Post
								["sourceQuests"] = { 52275 },	-- Mission Report: Swiftwind Post
								["provider"] = { "n", 135691 },	-- Nathanos Blightcaller
								["races"] = HORDE_ONLY,
								["coord"] = { 58.44, 62.67, ZULDAZAR },
							}),
							mi(2094, {	-- Nature Calls
								["sourceQuests"] = { 52276 },	-- Swiftwind Post
								["races"] = HORDE_ONLY,
								["g"] = {
									q(53102, {	-- Mission Report: Nature Calls (Per Character)
										["provider"] = { "n", 138704 },	-- Mission Command Table
										["races"] = HORDE_ONLY,
										["coord"] = { 51.59, 99.58, DAZARALOR },	-- The Banshee's Wail Location
										["g"] = {
											i(163194),	-- Mission Report (QI!)
										},
									}),
								},
							}),
							q(53103, {	-- Wicker Magic (Per Character)
								["sourceQuests"] = { 53102 },	-- Mission Report: Nature Calls
								["provider"] = { "n", 135691 },	-- Nathanos Blightcaller
								["races"] = HORDE_ONLY,
								["coord"] = { 58.44, 62.67, ZULDAZAR },
							}),
						},
					}),
					i(162532, {	-- Scouting Report: Windfall Cavern
						["races"] = HORDE_ONLY,
						["cost"] = { { "c", 1560, 100 }, },	-- 100x War Resources
						["filterID"] = CONSUMABLES,	-- Might change to Misc later
						["g"] = {
							mi(1966, {	-- Windfall Cavern
								["races"] = HORDE_ONLY,
								["g"] = {
									q(52319, {	-- Mission Report: Windfall Cavern
										["provider"] = { "n", 138704 },	-- Mission Command Table
										["coord"] = { 51.5, 99.5, DAZARALOR },	-- The Banshee's Wail Location
										["races"] = HORDE_ONLY,
										["g"] = {
											i(161487),	-- Windfall Cavern
											i(161488),	-- Mission Report (QI!)
										},
									}),
								},
							}),
							q(52320, {	-- Windfall Cavern
								["sourceQuests"] = { 52319 },	-- Mission Report: Windfall Cavern
								["provider"] = { "n", 135691 },	-- Nathanos Blightcaller
								["races"] = HORDE_ONLY,
								["coord"] = { 58.4, 62.6, ZULDAZAR },
							}),
						},
					}),
					i(162530, {	-- Scouting Report: Wolf's Den
						["races"] = HORDE_ONLY,
						["cost"] = { { "c", 1560, 50 }, },	-- 50x War Resources
						["filterID"] = CONSUMABLES,	-- Might change to Misc later
						["g"] = {
						--	initial outpost setup
							mi(1880, {	-- Wolf's Den
								["races"] = HORDE_ONLY,
								["g"] = {
									q(52005, {	-- Mission Report: Wolf's Den
										["provider"] = { "n", 138704 },		-- Mission Command Table
										["coord"] = { 51.5, 99.5, DAZARALOR },	-- The Banshee's Wail Location
										["races"] = HORDE_ONLY,
										["g"] = {
											i(161152),	-- Mission Report (QI!)
										},
									}),
								},
							}),
							q(52127, {	-- Wolf's Den
								["sourceQuests"] = { 52005 },	-- Mission Report: Wolf's Den
								["provider"] = { "n", 135691 },	-- Nathanos Blightcaller
								["coord"] = { 58.4, 62.6, ZULDAZAR },
								["races"] = HORDE_ONLY,
							}),
							mi(1957, {	-- Wolves For The Den
								["sourceQuests"] = { 52127 },	-- Wolf's Den
								["races"] = HORDE_ONLY,
								["cr"] = 138706,	-- Mission Command Table
								["g"] = {
									q(53151, {	-- Mission Report: Wolves For The Den
										["provider"] = { "n", 138704 },	-- Mission Command Table
										["races"] = HORDE_ONLY,
										["coord"] = { 51.5, 99.5, DAZARALOR },	-- The Banshee's Wail Location
										["g"] = {
											i(163519),	-- Mission Report (QI!)
										},
									}),
								},
							}),
							q(53152, {	-- Wolves For The Den
								["sourceQuests"] = { 53151 },	-- Mission Report: Wolves For The Den
								["provider"] = { "n", 135691 },	-- Nathanos Blightcaller
								["coord"] = { 58.4, 62.6, ZULDAZAR },
								["races"] = HORDE_ONLY,
							}),
						},
					}),
				},
			}),
			q(58672, {	-- A Gathering of Champions
				["sourceQuests"] = {
					58631,	-- Into Dreams
				},
				["coord"] = { 55.9, 30.3, THE_GREAT_SEAL },
				["provider"] = { "n", 161458 },	-- Valeera Sanguinar
				["races"] = HORDE_ONLY,
			}),
			q(51465, {	-- A Load of Scrap
				["sourceQuests"] = { 46931 },	-- Speaker of the Horde
				["coord"] = { 44.9, 39.6, DAZARALOR },
				["races"] = HORDE_ONLY,
				["provider"] = { "n", 137818 },	-- Myxle "The Searat" Gutwrench
				["g"] = {
					h(ach(13056)),	-- Giving a Scrap (H)
					i(160266),	-- Scrapped Cloth (QI!)
					i(160267),	-- Tattered Pants (QI!)
				},
			}),
			q(49122, {	-- A Port in Peril
				["sourceQuests"] = {
					50881,	-- Royal Report
					47432,	-- The Bargain is Struck (Paku)
					48897,	-- The Bargain is Struck (Gonk)
					49663,	-- False Prophecies
				},
				["provider"] = { "n", 120740 },	-- King Rastakhan
				["coord"] = { 49.8, 46.4, DAZARALOR },
				["races"] = HORDE_ONLY,
			}),
			q(50240, {	-- A Slip of the Tongue
				["provider"] = { "n", 132989 },	-- Blind Tra'wala
				["coord"] = { 53.6, 9.4, DAZARALOR },
				["races"] = ALLIANCE_ONLY,
				["g"] = {
					i(156839),	-- Pack of Pterrordax Snacks (QI!)
				},
			}),
			q(47437, {	-- Competitive Devotion
				["sourceQuests"] = {
					47434,	-- Restraining Order
					47435,	-- Pterrortorial Dispute
				},
				["coord"] = { 40.8, 11.4, DAZARALOR },
				["races"] = HORDE_ONLY,
				["provider"] = { "n", 126564 },	-- Hexlord Raal
			}),
			q(47442, {	-- Curse of Jani
				["sourceQuests"] = { 47441 },	-- Pests
				["coord"] = { 35.4, 7.7, DAZARALOR },
				["races"] = HORDE_ONLY,
				["provider"] = { "n", 126334 },	-- Jani
			}),
			q(46929, {	-- Deterrent
				["sourceQuests"] = { 46926 },	-- Shakedown
				["coord"] = { 50.0, 84.9, DAZARALOR },
				["races"] = HORDE_ONLY,
				["provider"] = { "n", 135441 },	-- Zolani
				["g"] = {
					i(160107),	-- Amani Head (QI!)
					i(158898),	-- Sandfury Head (QI!)
					i(155305),	-- Golden City Greatcloak
					i(155267),	-- Zanchuli Wristwraps
					i(155268),	-- Rastari Vambraces
					i(155269),	-- Torcalin Bracers
					i(155270),	-- Jambani Armbands
				},
			}),
			q(47422, {	-- Dire Situation
				["sourceQuests"] = { 47437 },	-- Competitive Devotion
				["coord"] = { 46.0, 13.0, DAZARALOR },
				["races"] = HORDE_ONLY,
				["provider"] = { "n", 126560 },	-- Wardruid Loti
				["g"] = {
					i(159102),	-- Raal's Spare Hexxer
					i(159100),	-- Crimson Cultist Scepter
					i(159099),	-- Pa'ku Adherent's Talons
					i(159098),	-- Wardruid's Cutter
					i(159101),	-- Loti's Favorite Longspear
					i(159097),	-- Pa'ku-Blessed Greatbow
					i(159104),	-- Crimson Cultist Pummeler
					i(159103),	-- Dregada's Greatsword
				},
			}),
			q(47313, {	-- Discreet Discussions
				["sourceQuests"] = { 47513 },	-- Vol'dun
				["coord"] = { 40.1, 69.4, HALL_OF_CHRONICLERS },
				["races"] = HORDE_ONLY,
				["provider"] = { "n", 133050 },	-- Princess Talanji
			}),
			q(48454, {	-- Evidence of Evil
				["sourceQuests"] = { 48452 },	-- The Red Market
				["coord"] = { 44.3, 82.1, DAZARALOR },
				["races"] = HORDE_ONLY,
				["provider"] = { "n", 126148 },	-- Witch Doctor Jala
			}),
			q(54494, {	-- Expanding Our Influence
				["sourceQuests"] = {	-- while the SQs are part of the war campaign, the pursuit of upgrades/additional outposts is not, so i'm leaving this here
					51985,	-- Return to Zuldazar (Drustvar foothold)
					51986,	-- Return to Zuldazar (Stormsong Valley foothold)
					51984,	-- Return to Zuldazar (Tiragarde Sound foothold)
				},
				["isBreadcrumb"] = true,	-- can't pick up/complete if you independently pursued upgrades
				["provider"] = { "n", 135447 },	-- Ransa Greyfeather
				["coord"] = { 58.0, 62.6, ZULDAZAR },	-- technically Zuldazar, but on the Dazar'alor docks, so it makes more sense to be here
				["races"] = HORDE_ONLY,
			}),
			q(47423, {	-- Forbidden Practices
				["sourceQuests"] = { 47445 },	-- The Zanchuli Council
				["provider"] = { "n", 126560 },	-- Wardruid Loti
				["coord"] = { 45.0, 23.9, DAZARALOR },
				["races"] = HORDE_ONLY,
				["g"] = {
					i(152627),	-- Loti's Totem (QI!)
				},
			}),
			q(47439, {	-- Gonk, Lord of the Pack
				["sourceQuests"] = { 47438 },	-- Picking a Side
				["altQuests"] = { 47440 },	-- Pa'ku, Master of Winds
				["provider"] = { "n", 126560 },	-- Wardruid Loti
				["coord"] = { 42.4, 9.00, DAZARALOR },
				["races"] = HORDE_ONLY,
				["DisablePartySync"] = true,
			}),
			q(49421, {	-- Hunting Zul
				["sourceQuests"] = {	-- one or the other
					50433,	-- Zanchuli Disbanded
					51111,	-- King or Prey
				},
				["isBreadcrumb"] = true,
				["provider"] = { "n", 141555 },	-- Baine Bloodhoof
				["coord"] = { 41.1, 72.2, HALL_OF_CHRONICLERS },
				["races"] = HORDE_ONLY,
			}),
			q(56249, {	-- I Am the Trashmaster
				--["sourceQuests"] = { },
				["description"] = "You need to get Trashmaster's Mantle from K.U.-J.0. boss in Mechagon for this quest.",
				["coord"] = { 35.3, 7.70, DAZARALOR },
				["races"] = HORDE_ONLY,
				["provider"] = { "n", 126334 },	-- Jani <Loa of Scavengers>
				["cost"] = { { "i", 168970, 1 } },	-- Trashmaster's Mantle
				["g"] = {
					i(169394),	-- Richly Appointed Drape
					title(324),	-- Trashmaster
				},
			}),
			q(47315, {	-- Into the Dunes
				["sourceQuests"] = { 47314 },	-- Rumors of Exile
				["coord"] = { 49.9, 31.6, DAZARALOR },
				["races"] = HORDE_ONLY,
				["provider"] = { "n", 122320 },	-- Bladeguard Kaja
			}),
			q(49917, {	-- Kaja'mite? Kaja'must!
				["isBreadcrumb"] = true,
				["sourceQuests"] = { 49310 },	-- The Prophet's Ploy
				["provider"] = { "n", 130932 },	-- Nok'tal
				["coord"] = { 65.4, 82.6, HALL_OF_CHRONICLERS },
				["races"] = HORDE_ONLY,
			}),
			q(51555, {	-- Keep Them On Task
				["isBreadcrumb"] = true,
				["sourceQuests"] = {	-- 'zanchuli disbanded' and 'king or prey' are breadcrumbs if you don't pick up the quest asap, it unlocked earlier
					47509,	-- Terrace of the Chosen (may actually show up as late as "Mistress of Lies," which is when i noticed it.  but baine gave "Terrace" and after i did it this was available when i next went to town after "Mistress"
					50433,	-- Zanchuli Disbanded
					51111,	-- King or Prey
				},
				["provider"] = { "n", 141555 },	-- Baine Bloodhoof
				["coord"] = { 41.1, 72.2, HALL_OF_CHRONICLERS },
				["races"] = HORDE_ONLY,
			}),
			q(52472, {	-- Make Loh Go
				["sourceQuests"] = { 52131 },	-- We Need Each Other
				["coord"] = { 56.3, 91.5, DAZARALOR },
				["races"] = HORDE_ONLY,
				["provider"] = { "n", 134346 },	-- Toki
			}),
			q(47521, {	-- Midnight in the Garden of the Loa
				["sourceQuests"] = {
					47518,	-- Raal
					47520,	-- Walls Have Ears
				},
				["provider"] = { "n", 133324 },	-- Hexlord Raal
				["coord"] = { 42.5, 9.5, DAZARALOR },
				["races"] = HORDE_ONLY,
			}),
			q(48405, {	-- Mista Nice
				["sourceQuests"] = { 48404 },	-- The Scamps
				["coord"] = { 55.9, 88.8, DAZARALOR },
				["races"] = HORDE_ONLY,
				["provider"] = { "n", 125312 },	-- Scrollsage Rooka
			}),
			q(49768, {	-- Nesingwary's Trek
				["sourceQuests"] = {
					49663,	-- False Prophecies
					-- 47438,	-- Picking a Side [One pre-req back from previous, Discord 2023-8-2]
					-- 47514,	-- Zuldazar [Cross-referenced latest quest from completion sequence, Discord 2023-8-2]
				},
				["isBreadcrumb"] = true,
				["provider"] = { "n", 130785 },	-- Huntmaster Kil'ja
				["coord"] = { 51.9, 41.5, DAZARALOR },
				["races"] = HORDE_ONLY,
			}),
			q(47440, {	-- Pa'ku, Master of Winds
				["sourceQuests"] = { 47438 },	-- Picking a Side
				["coord"] = { 42.5, 9.30, DAZARALOR },
				["races"] = HORDE_ONLY,
				["provider"] = { "n", 126564 },	-- Hexlord Raal
				["altQuests"] = {
					47439,	-- Gonk, Lord of the Pack
				},
			}),
			q(47441, {	-- Pests
				["coord"] = { 40.2, 19.0, DAZARALOR },
				["races"] = HORDE_ONLY,
				["provider"] = { "n", 127665 },	-- Nokano
			}),
			q(47438, {	-- Picking a Side
				["sourceQuests"] = { 47422 },	-- Dire Situation
				["coord"] = { 42.1, 9.00, DAZARALOR },
				["races"] = HORDE_ONLY,
				["provider"] = { "n", 126560 },	-- Wardruid Loti
			}),
			q(47435, {	-- Pterrortorial Dispute
				["sourceQuests"] = { 47433 },	-- Offensively Defensive
				["coord"] = { 46.2, 19.1, DAZARALOR },
				["races"] = HORDE_ONLY,
				["provider"] = { "n", 126560 },	-- Wardruid Loti
			}),
			q(46927, {	-- Punishment of Tal'aman
				["sourceQuests"] = { 46846 },	-- The Word of Zul
				["coord"] = { 50.0, 84.9, DAZARALOR },
				["races"] = HORDE_ONLY,
				["provider"] = { "n", 126684 },	-- Yazma
			}),
			q(46928, {	-- Punishment of Tal'farrak
				["sourceQuests"] = { 46926 },	-- Shakedown
				["coord"] = { 50.0, 84.9, DAZARALOR },
				["races"] = HORDE_ONLY,
				["provider"] = { "n", 126684 },	-- Yazma
				["g"] = {
					i(152184),	-- Tongue of Gahz'ragon (QI!)
				},
			}),
			q(47518, {	-- Raal
				["sourceQuests"] = {
					47915,	-- Rescuing the Taken
					47897,	-- Zanchuli Traitors
				},
				["providers"] = {
					{ "n", 123335 },	-- Wardruid Loti
					{ "n", 133302 },	-- Druid of Gonk (Wardruid Loti)
				},
				["coord"] = { 39.4, 13.8, DAZARALOR },
				["races"] = HORDE_ONLY,
				["g"] = {
					i(158399),	-- Rastari Wargreaves
					i(158400),	-- Zanchuli Leggings
					i(158401),	-- Torcalin Breeches
					i(158402),	-- Jambani Pants
					i(158668),	-- Jambani Cord
					i(158669),	-- Torcalin Waistwrap
					i(158670),	-- Zanchuli Waistwrap
					i(158671),	-- Rastari Belt
				},
			}),
			q(46930, {	-- Rastakhan
				["sourceQuests"] = { 46957 },	-- Welcome to Zuldazar
				["coord"] = { 49.9, 82.5, DAZARALOR },
				["races"] = HORDE_ONLY,
				["provider"] = { "n", 122661 },	-- General Jakra'zet
			}),
			q(47915, {	-- Rescuing the Taken
				["sourceQuests"] = { 47509 },	-- Terrace of the Chosen
				["provider"] = { "n", 124629 },	-- Kaza'jin the Wavebinder
				["coord"] = { 42.6, 21.4, DAZARALOR },
				["races"] = HORDE_ONLY,
				["g"] = {
					i(156923),	-- Fetish of Loti (QI!)
				},
			}),
			q(47434, {	-- Restraining Order
				["sourceQuests"] = { 47433 },	-- Offensively Defensive
				["coord"] = { 46.2, 19.1, DAZARALOR },
				["races"] = HORDE_ONLY,
				["provider"] = { "n", 126560 },	-- Wardruid Loti
			}),
			q(58582, {	-- Return of the Black Prince
				["races"] = HORDE_ONLY,
				["provider"] = { "o", 369894 },	-- Urgent Missive
				["coord"] = { 58.5, 62.6, ZANDALAR },
				["description"] = "Automatically granted.",
			}),
			q(50881, {	-- Royal Report
				["sourceQuests"] = {
					46929,	-- Deterrent
					46927,	-- Punishment of Tal'aman
					46928,	-- Punishment of Tal'farrak
				},
				["coord"] = { 50.0, 85.2, DAZARALOR },
				["races"] = HORDE_ONLY,
				["provider"] = { "n", 135441 },	-- Zolani
			}),
			q(47314, {	-- Rumors of Exile
				["sourceQuests"] = { 47313 },	-- Discreet Discussions
				["coord"] = { 51.5, 31.8, DAZARALOR },
				["races"] = HORDE_ONLY,
				["provider"] = { "n", 122817 },	-- Bladeguard Kaja
				["g"] = {
					i(179384),	-- Chain of Exemption (Added in SL)
				},
			}),
			q(49940, {	-- Sandscar Breach
				["sourceQuests"] = { 49426 },	-- The King's Gambit
				["isBreadcrumb"] = true,
				["provider"] = { "n", 131287 },	-- Natal'hakata
				["coord"] = { 67.3, 71.6, HALL_OF_CHRONICLERS },
				["races"] = HORDE_ONLY,
			}),
			n(QUESTS, sharedData({
				["qgs"] = {
					142063, -- Tezran
					141584,	-- Zurvan
				},
				["coords"] = {
					{ 71.6, 13.7, BORALUS },
					{ 53.9, 88.4, DAZARALOR },
				},
				["isWeekly"] = true,
			}, {
				q(52834),	-- Seal of Wartorn Fate: Gold
				q(52838),	-- Seal of Wartorn Fate: Piles of Gold
				q(52835),	-- Seal of Wartorn Fate: Marks of Honor
				q(52839),	-- Seal of Wartorn Fate: Additional Marks of Honor
				q(52837),	-- Seal of Wartorn Fate: War Resources
				q(52840),	-- Seal of Wartorn Fate: Stashed War Resources
			})),
			q(56044, {	-- Send the Fleet
				["provider"] = { "n", 135691 },	-- Nathanos Blightcaller
				["coord"] = { 58.4, 62.6, ZULDAZAR },
				["races"] = HORDE_ONLY,
				["sourceQuests"] = { 56030 },	-- The Warchief's Order
			}),
			q(49758, {	-- Send the Signal!
				["sourceQuests"] = {
					--,	-- Sending Out an SOS (breadcrumb)
					49310,	-- The Prophet's Ploy (last real quest required)
				},
				["provider"] = { "n", 140590 },	-- Captain Grez'ko
				["coord"] = { 46.1, 94.5, DAZARALOR },
				["races"] = HORDE_ONLY,
			}),
			q(57198, {	-- Sense of Obligation
				["coord"] = { 51.5, 99.4, DAZARALOR },
				["races"] = HORDE_ONLY,
				["provider"] = { "n", 141961 },	-- Lilian Voss
				["sourceQuests"] = {
					57095,	-- Old Soldier (Saurfang loyalist)
					57152,	-- Most Loyal (Sylvanas loyalist)
				},
			}),
			q(46926, {	-- Shakedown
				["sourceQuests"] = { 50835 },	-- The Port of Zandalar
				["coord"] = { 50.0, 85.0, DAZARALOR },
				["races"] = HORDE_ONLY,
				["provider"] = { "n", 135441 },	-- Zolani
			}),
			q(46931, {	-- Speaker of the Horde
				["sourceQuests"] = { 46930 },	-- Rastakhan
				["coord"] = { 49.8, 46.4, DAZARALOR },
				["races"] = HORDE_ONLY,
				["provider"] = { "n", 120740 },	-- King Rastakhan
			}),
			q(49488, {	-- Tal'gurub
				["sourceQuests"] = { 49615 },	-- Trust of a King
				["coord"] = { 49.8, 46.4, DAZARALOR },
				["races"] = HORDE_ONLY,
				["provider"] = { "n", 120740 },	-- King Rastakhan
			}),
			q(47509, {	-- Terrace of the Chosen
				["sourceQuests"] = { 49310 },	-- The Prophet's Ploy
				["provider"] = { "n", 141555 },	-- Baine Bloodhoof
				["coord"] = { 41.1, 72.2, HALL_OF_CHRONICLERS },
				["races"] = HORDE_ONLY,
			}),
			q(47432, {	-- The Bargain is Struck (Paku)
				["sourceQuests"] = { 47440 },	-- Pa'ku, Master of Winds
				["coord"] = { 49.9, 33.5, DAZARALOR },
				["races"] = HORDE_ONLY,
				["provider"] = { "n", 127489 },	-- Hexlord Raal
			}),
			q(48897, {	-- The Bargain is Struck (Gonk)
				["sourceQuests"] = { 47439 },	-- Gonk, Lord of the Pack
				["provider"] = { "n", 127576 },	-- Wardruid Loti
				["coord"] = { 50, 33.6, DAZARALOR },
				["races"] = HORDE_ONLY,
			}),
			q(47199, {	-- The Blood Gate
			--	verify SQ
				["sourceQuests"] = {
					49426,	-- The King's Gambit (became available immediately after completion)
					51244,	-- What Rots Beneath
				},
				["isBreadcrumb"] = true,
				["provider"] = { "n", 141555 },	-- Baine Bloodhoof
				["coord"] = { 41.1, 72.2, HALL_OF_CHRONICLERS },
				["races"] = HORDE_ONLY,
			}),
			q(47257, {	-- The Bones of Xibala (H)
				["sourceQuests"] = { 49426 },	-- The King's Gambit
				["isBreadcrumb"] = true,
				["provider"] = { "n", 120168 },	-- Chronicler To'kini
				["coord"] = { 69.5, 47.5, HALL_OF_CHRONICLERS },
				["races"] = HORDE_ONLY,
			}),
			q(57376, {	-- The Hidden Need
				["sourceQuest"] = 57198,	-- Sense of Obligation
				["coord"] = { 51.5, 99.4, DAZARALOR },
				["races"] = HORDE_ONLY,
				["provider"] = { "n", 141961 },	-- Lilian Voss
			}),
			q(53437, {	-- The MOTHERLODE!!: Raw Deal
				["provider"] = { "n", 136683 },	-- Trade Prince Gallywix
				["coord"] = { 58.4, 62.6, ZULDAZAR },
				["races"] = HORDE_ONLY,
			}),
			q(50835, {	-- The Port of Zandalar
				["sourceQuests"] = { 47514 },	-- Zuldazar
				["isBreadcrumb"] = true,	-- for "Shakedown"
				["coord"] = { 49.8, 46.5, DAZARALOR },
				["races"] = HORDE_ONLY,
				["provider"] = { "n", 122915 },	-- Zolani
			}),
			q(48452, {	-- The Red Market
				["sourceQuests"] = { 49615 },	-- Trust of a King
				["provider"] = { "n", 126148 },	-- Witch Doctor Jala
				["coord"] = { 44.3, 82.1, DAZARALOR },
				["races"] = HORDE_ONLY,
				["g"] = {
					i(152461),	-- Dark Fetishes (QI!)
				},
			}),
			q(48404, {	-- The Scamps
				["sourceQuests"] = { 52472 },	-- Make Loh Go
				["coord"] = { 55.9, 88.8, DAZARALOR },
				["races"] = HORDE_ONLY,
				["provider"] = { "n", 125312 },	-- Scrollsage Rooka
			}),
			q(56030, {	-- The Warchief's Order
				-- ["sourceQuests"] = { 52451 },	-- Uniting Zandalar
				["description"] = "If not encountered the regular way, this can be obtained via party sync. You need to sync with a character has not yet started BFA. You then need to pick up the quest A Dying World and run it again. Continue up to and finish the quest Infusing the Heart. Then this quest should pop up for you.",
				["races"] = HORDE_ONLY,
				["isBreadcrumb"] = true,
			}),
			q(49965, {	-- The Warpack
				["sourceQuests"] = {
					49421,	-- Hunting Zul
					47528,	-- Mistress of Lies
					47741,	-- To Sacrifice a Loa
				},
				["provider"] = { "n", 129491 },	-- King Rastakhan
				["coord"] = { 38.9, 27.2, DAZARALOR },
				["races"] = HORDE_ONLY,
			}),
			q(46846, {	-- The Word of Zul
				["sourceQuests"] = { 47514 },	-- zuldazar
				["coord"] = { 50.0, 84.7, DAZARALOR },
				["races"] = HORDE_ONLY,
				["provider"] = { "n", 126684 },	-- Yazma
				["g"] = {
					i(152101),	-- The Word of Zul (QI!)
				},
			}),
			q(51101, {	-- The Wounded King
				["sourceQuests"] = { 49310 },	-- The Prophet's Ploy
				["provider"] = { "n", 141555 },	-- Baine Bloodhoof
				["coord"] = { 41.1, 72.2, HALL_OF_CHRONICLERS },
				["races"] = HORDE_ONLY,
			}),
			q(47445, {	-- The Zanchuli Council
				["sourceQuests"] = { 47514 },	-- Zuldazar
				["coord"] = { 49.7, 46.5, DAZARALOR },
				["races"] = HORDE_ONLY,
				["provider"] = { "n", 122641 },	-- Yazma
			}),
			q(52139, {	-- To Matters at Hand
				["u"] = REMOVED_FROM_GAME,
				["sourceQuests"] = { 46931 },	-- Speaker of the Horde
				["isBreadcrumb"] = true,	-- for "We Need Each Other"
				["coord"] = { 34.5, 41.5, THE_GREAT_SEAL },
				["races"] = HORDE_ONLY,
				["provider"] = { "n", 120168 },	-- Chronicler To'kini
			}),
			q(54042, {	-- Trouble in Darkshore
				["provider"] = { "n", 149471 },	-- Dark Ranger Velonara
				["coords"] = {
					{ 53.0, 94.3, DAZARALOR },
					{ 59.0, 60.5, ZULDAZAR },
				},
				["races"] = HORDE_ONLY,
			}),
			q(49615, {	-- Trust of a King
				["sourceQuests"] = { 47514 },	-- Zuldazar
				["coord"] = { 40.1, 69.4, HALL_OF_CHRONICLERS },
				["races"] = HORDE_ONLY,
				["provider"] = { "n", 133050 },	-- Princes Talanji
			}),
			q(47513, {	-- Vol'dun
			-- TODO: noting this as I changed the pre-req from 52131 since it flagged an error message; see note on that quest. If anyone can get 52131 to pop, might need to readjust this.
				["coord"] = { 41.8, 69.4, HALL_OF_CHRONICLERS },
				["races"] = HORDE_ONLY,
				["provider"] = { "n", 135775 },	-- Scouting Map
				["sourceQuest"] = 46931,	-- Speaker of the Horde
			}),
			q(47520, {	-- Walls Have Ears
				["sourceQuests"] = {
					47897,	-- Zanchuli Traitors
					47915,	-- Rescuing the Taken
				},
				["providers"] = {
					{ "n", 123335 },	-- Wardruid Loti
					{ "n", 133302 },	-- Druid of Gonk (Wardruid Loti)
				},
				["coord"] = { 39.4, 13.8, DAZARALOR },
				["races"] = HORDE_ONLY,
			}),
			q(46957, {	-- Welcome to Zuldazar
				["provider"] = { "n", 132332 },	-- Princess Talanji
				["coord"] = { 57.9, 62.4, ZULDAZAR },
				["sourceQuest"] = 50769,	-- The Stormwind Extraction
				["races"] = HORDE_ONLY,
			}),
			q(52131, {	-- We Need Each Other
			--	TODO: was doing this questline on April 11, 2021 and this quest didn't pop up after i turned in Speaker of the Horde.  i went straight from 'speaker of the horde' to choosing to quest in zandalar on the map table inside the great seal.  is this a breadcrumb/was it removed/does it require having HoA?  upon solving this mystery anything that has it attached as a SQ may need to be changed as well
				["sourceQuests"] = {
					52139,	-- To Matters at Hand (legacy)
					46931,	-- Speaker of the Horde
				},
				["coord"] = { 41.1, 64.4, HALL_OF_CHRONICLERS },
				["races"] = HORDE_ONLY,
				["provider"] = { "n", 133050 },	-- Princess Talanji
			}),
			q(58583, {	-- Where the Heart Is
				["coord"] = { 55.9, 30.3, THE_GREAT_SEAL },
				["races"] = HORDE_ONLY,
				["provider"] = { "n", 161458 },	-- Valeera Sanguinar
				["sourceQuest"] = 58582,	-- Return of the Black Prince
			}),
			q(49283, {	-- Who Seeks the Seekers?
				["sourceQuests"] = { 49310 },	-- The Prophet's Ploy -- TODO: verify this. It was the earliest i've seen it become available but have additional requirements
				["isBreadcrumb"] = true,
				["provider"] = { "n", 128909 },	-- Shalo
				["coord"] = { 57.8, 92.3, DAZARALOR },
				["races"] = HORDE_ONLY,
			}),
			q(48456, {	-- Witch Doctor Jala
				["sourceQuests"] = { 46926 },	-- Shakedown
				["isBreadcrumb"] = true,
				["provider"] = { "n", 135441 },	-- Zolani
				["coord"] = { 50.0, 84.9, DAZARALOR },
				["races"] = HORDE_ONLY,
				["u"] = REMOVED_FROM_GAME,
			}),
			q(47897, {	-- Zanchuli Traitors
				["sourceQuests"] = { 47509 },	-- Terrace of the Chosen
				["provider"] = { "n", 124629 },	-- Kaza'jin the Wavebinder
				["coord"] = { 42.6, 21.4, DAZARALOR },
				["races"] = HORDE_ONLY,
			}),
			q(47514, {	-- Zuldazar
			--	"we need each other" did not pop up at all during my playthrough on April 11, 2021 -- unsure if it has specific requirements/if it's a breadcrumb/if it was removed
			--	["sourceQuests"] = { 52131 },	-- We Need Each Other
				["sourceQuests"] = { 46931 },	-- Speaker of the Horde
				["provider"] = { "n", 135775 },	-- Scouting Map
				["coord"] = { 40.1, 69.1, HALL_OF_CHRONICLERS },
				["races"] = HORDE_ONLY,
			}),
			q(47103, {	-- Journey to Nazmir
				["coord"] = { 40.1, 69.4, HALL_OF_CHRONICLERS },
				["races"] = HORDE_ONLY,
				["provider"] = { "n", 133050 },
				["sourceQuests"] = { 47512 },	-- Nazmir
			}),
			q(47512, {	-- Nazmir
			--	TODO: not a SQ during my April 2021 playthrough, unsure of requirements
			--	["sourceQuests"] = { 52131 },	-- We Need Each Other
				["provider"] = { "n", 135775 },	-- Scouting Map
				["coord"] = { 41.8, 69.4, HALL_OF_CHRONICLERS },
				["races"] = HORDE_ONLY,
			}),
			q(48535, {	-- Nazmir, the Forbidden Swamp
				["sourceQuests"] = { 47103 },	-- Journey to Nazmir
				["isBreadcrumb"] = true,
				["provider"] = { "n", 126549 },
				["coord"] = { 51.6, 41.2, DAZARALOR },
				["races"] = HORDE_ONLY,
				["g"] = {
					i(179383),	-- Royal Zandalari Pendant
				},
			}),
			q(47433, {	-- Offensively Defensive
				["sourceQuests"] = { 47423 },	-- Forbidden Practices
				["provider"] = { "n", 126564 },	-- Hexlord Raal
				["coord"] = { 51.8, 11.9, DAZARALOR },
				["races"] = HORDE_ONLY,
				["g"] = {
					i(155246),	-- Jambani Grips
					i(155266),	-- Jambani Waistwrap
					i(155247),	-- Rastari Gauntlets
					i(155263),	-- Rastari Waistguard
					i(155265),	-- Torcalin Girdle
					i(155249),	-- Torcalin Gloves
					i(155248),	-- Zanchuli Handwraps
					i(155264),	-- Zanchuli Sash
					--
					a(i(155047)),	-- Freebooter Belt
					a(i(155045)),	-- Navigator's Sash
					a(i(155046)),	-- Outrigger Belt
					a(i(155044)),	-- Sea Raider's Girdle
				},
			}),
			q(55650, {	-- Only the Best Will Do
				["provider"] = { "n", 152505 },	-- Skaggit
				["coord"] = { 42.1, 87.8, DAZARALOR },
				["races"] = HORDE_ONLY,
				["sourceQuest"] = 55649,	-- Machinations for Mechagon
			}),
			q(54166, {	-- Set Sail
				["u"] = REMOVED_FROM_GAME,
				["lvl"] = 110,
				["isWeekly"] = true,
				["races"] = HORDE_ONLY,
			}),
			q(55646, {	-- The Legend of Mechagon
				["provider"] = { "n", 152522 },	-- Gazlowe
				["coord"] = { 53.0, 43.2, DAZARALOR },
				["races"] = HORDE_ONLY,
				["sourceQuest"] = 57024,	-- Rumors of Mechagon
			}),
			q(56379, {	-- The Missing Crew
				["provider"] = { "n", 135690 },	-- Dread-Admiral Tattersail
				["coord"] = { 58.4, 62.9, ZULDAZAR },
				["races"] = HORDE_ONLY,
				["g"] = {
					follower(1182),	-- Dread-Admiral Tattersail
				},
			}),
			q(50538, {	-- The Missing Handler
				["sourceQuests"] = { 50881 },	-- Royal Report
				["isBreadcrumb"] = true,
				["provider"] = { "n", 131287 },	-- Natal'hakata
				["coord"] = { 68.7, 71.8, HALL_OF_CHRONICLERS },
				["races"] = HORDE_ONLY,
			}),
			q(55651, {	-- To Mechagon!
				["provider"] = { "n", 152504 },	-- Gazlowe
				["coord"] = { 42.0, 87.8, DAZARALOR },
				["races"] = HORDE_ONLY,
				["sourceQuest"] = 55650,	-- Only the Best Will Do
			}),
			q(53817, {	-- Whatever Happened to Grizzek Fizzwrench?
				["coord"] = { 58.5, 62.6, THE_GREAT_SEAL },
				["provider"] = { "n", 136683 },	-- Trade Prince Gallywix
				["races"] = HORDE_ONLY,
			}),
			q(75874, {	-- Time to Fly
				["description"] = "Reaching Level 30 will make this quest pop up.",
				["races"] = HORDE_ONLY,
				["timeline"] = { ADDED_10_1_5 },
				["g"] = {
					i(206566),	-- Scarlet Pterrordax (MOUNT!)
				},
			}),
		}),
	}),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.BFA, bubbleDownSelf({ ["timeline"] = { ADDED_8_0_1 } }, {
	m(ZANDALAR, {
		m(THE_GREAT_SEAL, {
			n(QUESTS, {
				-- Missions
				q(53739),	-- Wolf's Den completed
				q(53740),	-- Stonefist Watch completed
				-- q(53741),	-- Windfall Cavern completed
				-- q(53742),	-- Stonetusk Watch completed
				q(53743),	-- Hillcrest Pasture completed
				q(53744),	-- Swiftwind Post completed
				-- q(53745),	-- Mudfisher Cove completed
				-- Outpost Upgrades
				q(54294),	-- Upgrade: The Great Seal completed
				q(54296),	-- Upgrade: Vulpera Hideaway completed
				q(54297),	-- Upgrade: Zul'jan Ruins completed
				-- Misc
				q(54767),	-- Correctly answer 8 riddles from Rid'lah
				q(50931),	-- Spoke to talanji when meeting with Rastakhan for the first time
			}),
		}),
	}),
})));