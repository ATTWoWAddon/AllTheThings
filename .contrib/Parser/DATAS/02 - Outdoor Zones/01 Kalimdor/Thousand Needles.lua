---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(KALIMDOR, {
	m(THOUSAND_NEEDLES, {
		["lore"] =
			-- #if AFTER CATA
			"Thousand Needles is a flooded zone post-Shattering, dotted with mesa islands. The Shimmering Flats, formerly a racetrack, is completely flooded--the NPCs have made the best of a bad situation and opened up Fizzle and Pozzik's Speedbarge. The Southsea Pirates and Twilight Cultists have also settled this zone.",
			-- #else
			"This canyon desert gets its name from the innumerable sandstone spires that thrust up from the salt flats. Engineers have constructed bridges across the peaks of these towers, allowing travelers to cross the region without having to set foot on the ground below. The Thousand Needles is a dry and hot desert of salt. At its center is a stagnant lake ten times saltier than the ocean.\n\nResourceful goblins have discovered oil in the Scorched Basin, but they, a few scorpions, and the occasional centaur warband are the only signs of life in this parched land.",
			-- #endif
		["icon"] = 236848,
		["groups"] = {
			n(ACHIEVEMENTS, {
				explorationAch(846),	-- Explore Thousand Needles
				ach(4938, {	-- Thousand Needles Quests
					["timeline"] = { ADDED_4_0_3 },
					-- #if ANYCLASSIC
					["sourceQuests"] = {
						25627,	-- Two-Tusk Takedown [A]
						25628,	-- Two-Tusk Takedown [H]
						28048,	-- That Smart One's Gotta Go
						27327,	-- Grimtotem Chiefs: The Chief of Chiefs [A]
						27328,	-- Grimtotem Chiefs: The Chief of Chiefs [H]
						28098,	-- The Twilight Skymaster
						28160,	-- Spread the Word [A]
						28161,	-- Spread the Word [H]
					},
					-- #endif
				}),
			}),
			battlepets({
				["sym"] = {{"select","speciesID",
					398,	-- Black Rat (PET!)
					424,	-- Roach (PET!)
					414,	-- Scorpid (PET!)
				}},
				["groups"] = {
					pet(505, {	-- Twilight Iguana (PET!)
						["description"] = "Can be found in areas where the Twilight Hammer have set up camp, Twilight Bulwark and Twilight Withering.",
						["coords"] = {
							{ 55.8, 61.6, THOUSAND_NEEDLES },
							{ 33.8, 58.4, THOUSAND_NEEDLES },
						},
					}),
				},
			}),
			explorationHeader({
				-- #if AFTER CATA
				exploration(2097),	-- Darkcloud Pinnacle
				exploration(5041),	-- Fizzle & Pozzik's Speedbarge
				exploration(484),	-- Freewind Post
				exploration(482),	-- Highperch
				visit_exploration(5046,{coord={96.5,61.4,THOUSAND_NEEDLES}}),	-- Mirage Abyss
				exploration(5092),	-- Razorfen Downs
				exploration(5028),	-- Southsea Holdfast
				exploration(5027),	-- Splithoof Heights
				exploration(5591),	-- Sunken Dig Site
				exploration(485),	-- The Great Lift
				exploration(5025),	-- The Shimmering Deep
				exploration(5589),	-- The Twilight Withering
				exploration(5590),	-- Twilight Bulwark
				exploration(5011),	-- Westreach Summit
				-- #else
				exploration(480),	-- Camp E'thok
				exploration(2097),	-- Darkcloud Pinnacle
				exploration(484),	-- Freewind Post
				exploration(482),	-- Highperch
				exploration(481),	-- Splithoof Crag
				exploration(485),	-- The Great Lift
				exploration(483),	-- The Screeching Canyon
				exploration(439),	-- The Shimmering Flats
				exploration(2237),	-- Whitereach Post
				exploration(2303),	-- Windbreak Canyon
				-- #endif
			}),
			n(FLIGHT_PATHS, {
				fp(513, {	-- Fizzle & Pozzik's Speedbarge, Thousand Needles
					["crs"] = {
						40768,	-- Tilly Topspin <Flight Master> [A]
						40769,	-- Zazzix Boomride <Flight Master> [H]
					},
					["coord"] = { 79.2, 71.8, THOUSAND_NEEDLES },
					["timeline"] = { ADDED_4_0_3 },
				}),
				fp(30, {	-- Westreach Summit, Thousand Needles [CATA+] / Freewind Post, Thousand Needles
					["crs"] = {
						-- #if AFTER CATA
						44399,	-- Nah'te <Wind Rider Master>
						-- #else
						4317,	-- Nyse <Wind Rider Master>
						-- #endif
					},
					["coords"] = {
						-- #if AFTER CATA
						{ 11.2, 11.6, THOUSAND_NEEDLES },
						-- #else
						{ 45.0, 49.2, THOUSAND_NEEDLES },
						-- #endif
					},
					["races"] = HORDE_ONLY,
				}),
			}),
			-- #if AFTER CATA
			n(PROFESSIONS, {
				prof(FISHING, {
					o(180751),	-- Floating Wreckage
				}),
			}),
			-- #endif
			n(QUESTS, {
				q(1175, {	-- A Bump in the Road
					["qg"] = 4629,	-- Trackmaster Zherin
					["coord"] = { 81.6, 77.9, THOUSAND_NEEDLES },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 28,
					["groups"] = {
						objective(1, {	-- 0/10 Saltstone Basilisk slain
							["provider"] = { "n", 4147 },	-- Saltstone Basilisk
						}),
						objective(2, {	-- 0/10 Saltstone Crystalhide slain
							["provider"] = { "n", 4151 },	-- Saltstone Crystalhide
						}),
						objective(3, {	-- 0/6 Saltstone Gazer slain
							["provider"] = { "n", 4150 },	-- Saltstone Gazer
						}),
					},
				}),
				q(9431, {	-- A Different Approach
					["qg"] = 17093,	-- Magistrix Elosai
					["coord"] = { 46.0, 50.4, THOUSAND_NEEDLES },
					["timeline"] = { ADDED_2_0_1, REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 24,
					["groups"] = {
						objective(1, {	-- 0/2 Purifying Earth
							["provider"] = { "i", 23643 },	-- Purifying Earth
							["cr"] = 4120,	-- Thundering Boulderkin
						}),
					},
				}),
				q(9433, {	-- A Dip in the Moonwell
					["qg"] = 10941,	-- Wizlo Bearingshiner
					["sourceQuest"] = 9431,	-- A Different Approach
					["coord"] = { 21.4, 32.4, THOUSAND_NEEDLES },
					["timeline"] = { ADDED_2_0_1, REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 24,
					["groups"] = {
						objective(1, {	-- 0/1 Thalanaar Moonwell Water
							["provider"] = { "i", 23670 },	-- Thalanaar Moonwell Water
							["cost"] = {{ "i", 23675, 1 }},	-- Robotron Control Unit
							["coord"] = { 9.45, 18.71, THOUSAND_NEEDLES },
						}),
					},
				}),
				q(25588, {	-- A Little Payback [A]
					["qg"] = 40591,	-- Drag Master Miglen
					["sourceQuest"] = 25542,	-- Circle the Wagons... er, Boats [A]
					["coord"] = { 78.1, 73.1, THOUSAND_NEEDLES },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/15 Southsea pirates slain
							["providers"] = {
								{ "n", 40092},	-- Southsea Sailor
								{ "n", 40432},	-- Southsea Parrot Handler
							},
						}),
						i(63574, {	-- Paper Roll Bracers
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(63575, {	-- Drag Master's Boots
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(63576, {	-- Outhouse Boots
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(63577, {	-- Payback Band
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(25589, {	-- A Little Payback [H]
					["qg"] = 40595,	-- Rugfizzle
					["sourceQuest"] = 25543,	-- Circle the Wagons... er, Boats [H]
					["coord"] = { 78.2, 73.6, THOUSAND_NEEDLES },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/15 Southsea pirates slain
							["providers"] = {
								{ "n", 40092},	-- Southsea Sailor
								{ "n", 40432},	-- Southsea Parrot Handler
							},
						}),
						i(63578, {	-- Paper Roll Bracers
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(63579, {	-- Rugfizzle's Boots
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(63580, {	-- Outhouse Boots
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(63581, {	-- Payback Band
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(3842, {	-- A Short Incubation
					["qg"] = 9238,	-- Quentin
					["sourceQuest"] = 3841,	-- An Orphan Looking For a Home
					["coord"] = { 78.4, 74.7, THOUSAND_NEEDLES },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = { { "i", 3825, 2 } },	-- Elixir of Fortitude
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 38,
				}),
				q(4821, {	-- Alien Egg
					["qg"] = 10539,	-- Hagar Lightninghoof
					["coord"] = { 44.64, 50.29, THOUSAND_NEEDLES },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 24,
					["groups"] = {
						objective(1, {	-- 0/1 Alien Egg
							["providers"] = {
								{ "i", 12467 },	-- Alien Egg
								{ "o", 175565 },	-- Alien Egg
							},
							["coords"] = {
								{ 37.7, 56.1, THOUSAND_NEEDLES },
								{ 52.4, 55.2, THOUSAND_NEEDLES },
								{ 56.3, 50.4, THOUSAND_NEEDLES },
							},
						}),
					},
				}),
				q(5088, {	-- Arikara
					["qg"] = 4046,	-- Magatha Grimtotem
					["sourceQuest"] = 5062,	-- Sacred Fire
					["coord"] = { 69.85, 30.90, THUNDER_BLUFF },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 24,
					["groups"] = {
						objective(1, {	-- 0/1 Arikara Serpent Skin
							["providers"] = {
								{ "i",  12925 },	-- Arikara Serpent Skin
								{ "o", 175944 },	-- Sacred Fire of Life
								{ "i",  12785 },	-- Incendia Powder
							},
							["coord"] = { 37.7, 56.1, THOUSAND_NEEDLES },
							["cr"] = 10882,	-- Arikara <Vengeance>
						}),
						i(15464, {	-- Brute Hammer
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(15465, {	-- Stingshot Wand
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(15466, {	-- Clink Shield
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(4881, {	-- Assassination Plot
					["provider"] = { "i", 12564 },	-- Assassination Note
					["description"] = "The item that starts this quest is dropped by Galak Messengers.",
					["coord"] = { 21.2, 32, THOUSAND_NEEDLES },
					["timeline"] = { REMOVED_4_0_3 },
					["cr"] = 10617,	-- Galak Messenger
					["races"] = HORDE_ONLY,
					["lvl"] = 23,
				}),
				q(1118, {	-- Back to Booty Bay
					["providers"] = {
						{ "n", 4452 },	-- Kravel Koalbeard
						{ "i", 5826 },	-- Kravel's Scheme
					},
					["sourceQuest"] = 1117,	-- Rumors for Kravel
					["coord"] = { 78.8, 77.3, THOUSAND_NEEDLES },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { STRANGLETHORN_VALE },
					["lvl"] = 35,
				}),
				q(25790, {	-- Back to Crazzle
					["qg"] = 41204,	-- Khan Ablinh
					["sourceQuest"] = 25778,	-- Fake Gold for Black Gold [A]
					["coord"] = { 91.3, 53.8, THOUSAND_NEEDLES },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(63566, {	-- Suspicious Slippers
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(63567, {	-- Swindler's Vest
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(63568, {	-- Belt of the Unfooled
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(63569, {	-- Uncompromising Helm
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(25791, {	-- Back to Riznek
					["qg"] = 41205,	-- Khan Blizh
					["sourceQuest"] = 25779,	-- Fake Gold for Black Gold [H]
					["coord"] = { 86.7, 51.5, THOUSAND_NEEDLES },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(63570, {	-- Suspicious Slippers
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(63571, {	-- Swindler's Vest
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(63572, {	-- Belt of the Unfooled
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(63573, {	-- Uncompromising Helm
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(25517, {	-- Bar Fight! [A]
					["qg"] = 40554,	-- Rizzle Brassbolts
					["sourceQuest"] = 25488,	-- Two if By Boat
					["coord"] = { 78.0, 73.3, THOUSAND_NEEDLES },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(25518, {	-- Bar Fight! [H]
					["qg"] = 40556,	-- Zamek
					["sourceQuest"] = 25489,	-- Two if By Boat
					["coord"] = { 78.1, 73.7, THOUSAND_NEEDLES },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				q(28136, {	-- Behind You!
					["qg"] = 47580,	-- Lakota Windsong
					["sourceQuests"] = {
						28127,	-- Break Them Out
						28125,	-- Something to Wear
					},
					["coord"] = { 30.5, 49.3, THOUSAND_NEEDLES },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/1 Codemaster Deethuk assassinated
							["provider"] = { "n", 47602 },	-- Codemaster Deethuk
						}),
						objective(2, {	-- 0/1 Commander Fastfuse assassinated
							["provider"] = { "n", 47620 },	-- Commander Fastfuse
						}),
						objective(3, {	-- 0/1 Elementalist Starion assassinated
							["provider"] = { "n", 47619 },	-- Elementalist Starion
						}),
						i(63659, {	-- Starion's Slippers
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(63660, {	-- Codemaster's Cuffs
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(63661, {	-- Fastfuse Gloves
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(63662, {	-- Bulwark of Leaders
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(28127, {	-- Break Them Out
					["qg"] = 47580,	-- Lakota Windsong
					["sourceQuest"] = 28124,	-- On to the Bulwark
					["coord"] = { 30.5, 49.3, THOUSAND_NEEDLES },
					["timeline"] = { ADDED_4_0_3 },
				}),
				q(1531, {	-- Call of Air [Orgrimmar]
					["qg"] = 5892,	-- Searn Firewarder
					["coord"] = { 37.8, 37.4, ORGRIMMAR },
					["timeline"] = { REMOVED_4_0_3 },
					["classes"] = { SHAMAN },
					["races"] = HORDE_ONLY,
					["lvl"] = 30,
					["groups"] = {
						i(5178, {	-- Air Totem
							["description"] = "You must keep this in your bags forever.",
						}),
					},
				}),
				q(1532, {	-- Call of Air [Thunder Bluff]
					["qg"] = 5906,	-- Xanis Flameweaver
					["coord"] = { 25.2, 21, THUNDER_BLUFF },
					["timeline"] = { REMOVED_4_0_3 },
					["classes"] = { SHAMAN },
					["races"] = HORDE_ONLY,
					["lvl"] = 30,
					["groups"] = {
						i(5178, {	-- Air Totem
							["description"] = "You must keep this in your bags forever.",
						}),
					},
				}),
				q(25672, {	-- Carcass Collection
					["qg"] = 41060,	-- Ajamon Ghostcaller
					["sourceQuest"] = 25661,	-- With a Little Help...
					["coord"] = { 96.8, 72.5, THOUSAND_NEEDLES },
					["timeline"] = { ADDED_4_0_3 },
				}),
				q(25542, {	-- Circle the Wagons... er, Boats [A]
					["qg"] = 40475,	-- Jinky Twizzlefixxit
					["altQuests"] = { 25561 },	-- Circle the Wagons... er, Boats [A]
					["sourceQuest"] = 25532,	-- Pirate Accuracy Increasing [A]
					["coord"] = { 76.5, 73.6, THOUSAND_NEEDLES },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(63550, {	-- Speedbarge Leggings
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(63551, {	-- Smooching Gloves
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(63552, {	-- Pirate Sinker's Bracers
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(63553, {	-- Dignified Pauldrons
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131434, {	-- Lovely Gloves
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				-- #IF NOT ANYCLASSIC
				q(25561, {	-- Circle the Wagons... er, Boats [A]
					["qg"] = 40475,	-- Jinky Twizzlefixxit
					["altQuests"] = { 25542 },	-- Circle the Wagons... er, Boats [A]
					["sourceQuest"] = 25532,	-- Pirate Accuracy Increasing [A]
					["coord"] = { 76.5, 73.6, THOUSAND_NEEDLES },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["sym"] = {{"select","questID",25542},{"pop"}},
				}),
				-- #ENDIF
				q(25543, {	-- Circle the Wagons... er, Boats [H]
					["qg"] = 40487,	-- Razzeric
					["altQuests"] = { 25562 },	-- Circle the Wagons... er, Boats [H]
					["sourceQuest"] = 25533,	-- Pirate Accuracy Increasing [H]
					["coord"] = { 77, 74.4, THOUSAND_NEEDLES },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(63554, {	-- Speedbarge Leggings
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(63555, {	-- Pirate Sinker's Gloves
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(63556, {	-- Bear Hug Bracers
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(63557, {	-- Manly Pauldrons
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131435, {	-- Pirate Sinker's Gauntlets
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				-- #IF NOT ANYCLASSIC
				q(25562, {	-- Circle the Wagons... er, Boats [H]
					["qg"] = 40487,	-- Razzeric
					["altQuests"] = { 25543 },	-- Circle the Wagons... er, Boats [H]
					["sourceQuest"] = 25533,	-- Pirate Accuracy Increasing [H]
					["coord"] = { 77, 74.4, THOUSAND_NEEDLES },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["sym"] = {{"select","questID",25543},{"pop"}},
				}),
				-- #ENDIF
				q(28139, {	-- Codemaster's Code
					["qg"] = 47580,	-- Lakota Windsong
					["sourceQuests"] = {
						28127,	-- Break Them Out
						28125,	-- Something to Wear
					},
					["coord"] = { 30.5, 49.3, THOUSAND_NEEDLES },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/1 Codemaster's Code
							["providers"] = {
								{ "i", 63053 },	-- Codemaster's Code
								{ "o", 206758 },	-- Codemaster's Code Device
							},
							["coord"] = { 31.2, 59.8, THOUSAND_NEEDLES },
						}),
					},
				}),
				q(27312, {	-- Darkcloud Grimtotem [A]
					["qg"] = 45277,	-- Feralas Sentinel (mobileNPC)
					["sourceQuest"] = 27275,	-- Together Again
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/20 Grimtotem on Darkcloud Pinnacle slain
							["providers"] = {
								{ "n", 45381},	-- Grimtotem Geomancer
								{ "n", 45383},	-- Grimtotem Stomper
								{ "n", 45385},	-- Grimtotem Reaver
							},
						}),
						i(63595, {	-- Amulet of Spilling Blood
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(63592, {	-- Blood Waders
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(63593, {	-- Goddess-Blessed Wristlets
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(63594, {	-- Grimtotem Spaulders
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(27313, {	-- Darkcloud Grimtotem [H]
					["qg"] = 45278,	-- Freewind Brave
					["sourceQuest"] = 27276,	-- Together Again
					["coord"] = { 42.2, 48.0, THOUSAND_NEEDLES },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/20 Grimtotem on Darkcloud Pinnacle slain
							["providers"] = {
								{ "n", 45381},	-- Grimtotem Geomancer
								{ "n", 45383},	-- Grimtotem Stomper
								{ "n", 45385},	-- Grimtotem Reaver
							},
						}),
						i(63599, {	-- Reaper's Amulet
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(63596, {	-- Blood Waders
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(63597, {	-- Bracers of Reluctant Violence
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(63598, {	-- Pauldrons of the Teachings
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(28087, {	-- Death to all Trappers!
					["qg"] = 47471,	-- Pao'ka Swiftmountain
					["sourceQuest"] = 28085,	-- Trouble at Highperch
					["coord"] = { 12.8, 34.0, THOUSAND_NEEDLES },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/8 Trapper Net
							["provider"] = { "i", 62924 },	-- Trapper Net
							["cr"] = 47479,	-- Twilight Trapper
						}),
						i(63648, {	-- Swift Mountain Boots
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(63649, {	-- Trapper's Helm
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(63650, {	-- Pao'ka's Belt
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(63651, {	-- Trapper Punchers
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(25798, {	-- Defend the Drill [A]
					["qg"] = 41190,	-- Crazzle Sprysprocket
					["sourceQuest"] = 25790,	-- Back to Crazzle
					["coord"] = { 91.4, 57.8, THOUSAND_NEEDLES },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(25799, {	-- Defend the Drill [H]
					["qg"] = 41184,	-- Riznek
					["sourceQuest"] = 25791,	-- Back to Riznek
					["coord"] = { 88.5, 54.8, THOUSAND_NEEDLES },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				q(25825, {	-- Deliver the Goods [A]
					["qg"] = 41190,	-- Crazzle Sprysprocket
					["sourceQuest"] = 25813,	-- Go Blow that Horn [A]
					["coord"] = { 91.4, 57.8, THOUSAND_NEEDLES },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(63611, {	-- Send-Off Belt
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(63612, {	-- Speedbarge Bailer
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(63613, {	-- Fizzle's Vest
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(25826, {	-- Deliver the Goods [H]
					["qg"] = 41184,	-- Riznek
					["sourceQuest"] = 25814,	-- Go Blow that Horn [H]
					["coord"] = { 88.5, 54.8, THOUSAND_NEEDLES },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(63614, {	-- Send-Off Belt
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(63615, {	-- Speedbarge Bailer
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(63616, {	-- Pozzik's Vest
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(1114, {	-- Delivery to the Gnomes
					["qg"] = 4452,	-- Kravel Koalbeard
					["providers"] = {
						{ "n", 4452 },	-- Kravel Koalbeard
						{ "i", 5802 },	-- Delicate Car Parts
					},
					["sourceQuest"] = 1112,	-- Parts for Kravel
					["coord"] = { 78.8, 77.3, THOUSAND_NEEDLES },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 30,
				}),
				q(25504, {	-- Do Me a Favor? [A]
					["qg"] = 40027,	-- Fizzle Brassbolts
					["sourceQuest"] = 25488,	-- Two if By Boat
					["coord"] = { 75.9, 74.6, THOUSAND_NEEDLES },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(25505, {	-- Do Me a Favor? [H]
					["qg"] = 40028,	-- Pozzik
					["sourceQuest"] = 25489,	-- Two if By Boat
					["coord"] = { 75.9, 74.7, THOUSAND_NEEDLES },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				q(25515, {	-- Down in the Deeps [A]
					["qg"] = 40475,	-- Jinky Twizzlefixxit
					["sourceQuest"] = 25504,	-- Do Me a Favor? [A]
					["coord"] = { 76.5, 73.6, THOUSAND_NEEDLES },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/10 Rocket Car Parts
							["providers"] = {
								{ "i", 54809 },	-- Rocket Car Parts
								{ "o", 202956 },	-- Rocket Car Parts
								{ "o", 202957 },	-- Rocket Car Parts
								{ "o", 202958 },	-- Rocket Car Parts
								{ "o", 202959 },	-- Rocket Car Parts
								{ "o", 202960 },	-- Rocket Car Parts
								{ "o", 202961 },	-- Rocket Car Parts
							},
						}),
						i(63542, {	-- Twizzlefixxit's Vest
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(63543, {	-- Driver's Armbands
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(63544, {	-- Wet Suit Leggings
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(63545, {	-- Raceway Boots
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131432, {	-- Driver's Chain Bracers
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(25516, {	-- Down in the Deeps [H]
					["qg"] = 40487,	-- Razzeric
					["sourceQuest"] = 25505,	-- Do Me a Favor? [H]
					["coord"] = { 77.1, 74.4, THOUSAND_NEEDLES },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/10 Rocket Car Parts
							["providers"] = {
								{ "i", 54809 },	-- Rocket Car Parts
								{ "o", 202956 },	-- Rocket Car Parts
								{ "o", 202957 },	-- Rocket Car Parts
								{ "o", 202958 },	-- Rocket Car Parts
								{ "o", 202959 },	-- Rocket Car Parts
								{ "o", 202960 },	-- Rocket Car Parts
								{ "o", 202961 },	-- Rocket Car Parts
							},
						}),
						i(63546, {	-- Razzeric's Vest
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(63547, {	-- Driver's Armbands
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(63548, {	-- Wet Suit Leggings
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(63549, {	-- Raceway Boots
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131433, {	-- Driver's Chain Bracers
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(25796, {	-- Eminent Domain [A]
					["qg"] = 41190,	-- Crazzle Sprysprocket
					["sourceQuest"] = 25790,	-- Back to Crazzle
					["coord"] = { 91.4, 57.8, THOUSAND_NEEDLES },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/15 Splithoof Heights centaurs slain
							["providers"] = {
								{ "n", 40062},	-- Galak Mauler
								{ "n", 40061},	-- Galak Stormer
								{ "n", 40063},	-- Galak Wrangler
								{ "n", 41302},	-- Galak Mauler
								{ "n", 41305},	-- Galak Stormer
								{ "n", 41306},	-- Galak Wrangler
							},
						}),
					},
				}),
				q(25797, {	-- Eminent Domain [H]
					["qg"] = 41184,	-- Riznek
					["sourceQuest"] = 25791,	-- Back to Riznek
					["coord"] = { 88.5, 54.8, THOUSAND_NEEDLES },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/15 Splithoof Heights centaurs slain
							["providers"] = {
								{ "n", 40062},	-- Galak Mauler
								{ "n", 40061},	-- Galak Stormer
								{ "n", 40063},	-- Galak Wrangler
								{ "n", 41302},	-- Galak Mauler
								{ "n", 41305},	-- Galak Stormer
								{ "n", 41306},	-- Galak Wrangler
							},
						}),
					},
				}),
				q(1107, {	-- Encrusted Tail Fins
					["qg"] = 4453,	-- Wizzle Brassbolts
					["sourceQuest"] = 1105,	-- Hardened Shells
					["coord"] = { 78.1, 77.1, THOUSAND_NEEDLES },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { STRANGLETHORN_VALE },
					["lvl"] = 28,
					["groups"] = {
						objective(1, {	-- 0/10 Encrusted Tail Fin
							["provider"] = { "i", 5796 },	-- Encrusted Tail Fin
							["crs"] = {
								877,	-- Saltscale Forager
								879,	-- Saltscale Hunter
								873,	-- Saltscale Oracle
								875,	-- Saltscale Tide Lord
								871,	-- Saltscale Warrior
							},
						}),
					},
				}),
				q(25778, {	-- Fake Gold for Black Gold [A]
					["qg"] = 41190,	-- Crazzle Sprysprocket
					["sourceQuest"] = 25774,	-- Fool's Gold [A]
					["coord"] = { 91.4, 57.8, THOUSAND_NEEDLES },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(25779, {	-- Fake Gold for Black Gold [H]
					["qg"] = 41184,	-- Riznek
					["sourceQuest"] = 25775,	-- Fool's Gold [H]
					["coord"] = { 88.5, 54.8, THOUSAND_NEEDLES },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				q(5361, {	-- Family Tree
					["providers"] = {
						{ "n", 10537 },	-- Cliffwatcher Longhorn
						{ "i", 13507 },	-- Cliffwatcher Longhorn Report
					},
					["coord"] = { 45.65, 50.80, THOUSAND_NEEDLES },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { DESOLACE },
					["races"] = HORDE_ONLY,
					["lvl"] = 32,
				}),
				q(1394, {	-- Final Passage
					["qg"] = 4488,	-- Parqual Fintallas
					["sourceQuest"] = 6628,	-- Test of Lore (6/6)
					["coord"] = { 57.75, 65.39, UNDERCITY },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 25,
					["groups"] = {
						i(6804, {	-- Windstorm Hammer
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(6806, {	-- Dancing Flame
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(25774, {	-- Fool's Gold [A]
					["qg"] = 41190,	-- Crazzle Sprysprocket
					["sourceQuest"] = 25756,	-- Get Zherin!
					["coord"] = { 91.4, 57.8, THOUSAND_NEEDLES },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/8 Needles Pyrite Ore Chunk
							["providers"] = {
								{ "i", 56002 },	-- Needles Pyrite Ore Chunk
								{ "o", 203228 },	-- Needles Iron Pyrite
							},
						}),
					},
				}),
				q(25775, {	-- Fool's Gold [H]
					["qg"] = 41184,	-- Riznek
					["sourceQuest"] = 25757,	-- Get Koalbeard!
					["coord"] = { 88.5, 54.8, THOUSAND_NEEDLES },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/8 Needles Pyrite Ore Chunk
							["providers"] = {
								{ "i", 56002 },	-- Needles Pyrite Ore Chunk
								{ "o", 203228 },	-- Needles Iron Pyrite
							},
						}),
					},
				}),
				q(28157, {	-- Four Twilight Elements
					["qg"] = 47745,	-- Magatha Grimtotem
					["sourceQuest"] = 28142,	-- To the Withering
					["coord"] = { 50.2, 62.6, THOUSAND_NEEDLES },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/1 Twilight Element of Air
							["providers"] = {
								{ "i", 63097 },	-- Twilight Element of Air
								{ "o", 206832 },	-- Twilight Element of Air
							},
							["coord"] = { 57.5, 59.6, THOUSAND_NEEDLES },
						}),
						objective(2, {	-- 0/1 Twilight Element of Earth
							["providers"] = {
								{ "i", 63099 },	-- Twilight Element of Earth
								{ "o", 206833 },	-- Twilight Element of Earth
							},
							["coord"] = { 53.3, 63.7, THOUSAND_NEEDLES },
						}),
						objective(3, {	-- 0/1 Twilight Element of Fire
							["providers"] = {
								{ "i", 63098 },	-- Twilight Element of Fire
								{ "o", 206834 },	-- Twilight Element of Fire
							},
							["coord"] = { 60.5, 64.5, THOUSAND_NEEDLES },
						}),
						objective(4, {	-- 0/1 Twilight Element of Water
							["providers"] = {
								{ "i", 63100 },	-- Twilight Element of Water
								{ "o", 206835 },	-- Twilight Element of Water
							},
							["coord"] = { 52.8, 58.6, THOUSAND_NEEDLES },
						}),
					},
				}),
				q(4904, {	-- Free at Last
					["qg"] = 10646,	-- Lakota Windsong
					["coord"] = { 38, 26.6, THOUSAND_NEEDLES },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 25,
					["groups"] = {
						i(15469, {	-- Windsong Cinch
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(15468, {	-- Windsong Drape
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(25835, {	-- Free Freewind Post [A]
					["qg"] = 40027,	-- Fizzle Brassbolts
					["sourceQuests"] = {
						25825,	-- Deliver the Goods [A]
						25704,	-- The Mad Magus
					},
					["coord"] = { 75.9, 74.6, THOUSAND_NEEDLES },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(25836, {	-- Free Freewind Post [H]
					["qg"] = 40028,	-- Pozzik
					["sourceQuests"] = {
						25826,	-- Deliver the Goods [H]
						25704,	-- The Mad Magus
					},
					["coord"] = { 75.9, 74.7, THOUSAND_NEEDLES },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				q(28086, {	-- Free the Pridelings
					["qg"] = 47471,	-- Pao'ka Swiftmountain
					["sourceQuest"] = 28085,	-- Trouble at Highperch
					["coord"] = { 12.8, 34.0, THOUSAND_NEEDLES },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/12 Pridelings freed
							["provider"] = { "n", 47481 },	-- Highperch Prideling
						}),
					},
				}),
				q(28047, {	-- Freezing the Pipes
					["qg"] = 47383,	-- Brivelthwerp
					["sourceQuests"] = {
						28045,	-- The Greatest Flavor in the World!
						28051,	-- We All Scream for Ice Cream... and then Die!
					},
					["coord"] = { 69.9, 85.2, THOUSAND_NEEDLES },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/1 First pipe frozen
							["provider"] = { "o", 206638 },	-- Refrigeration Pipe
						}),
						objective(2, {	-- 0/1 Second pipe frozen
							["provider"] = { "o", 206639 },	-- Refrigeration Pipe
						}),
						objective(3, {	-- 0/1 Third pipe frozen
							["provider"] = { "o", 206640 },	-- Refrigeration Pipe
						}),
						objective(4, {	-- 0/1 Fourth pipe frozen
							["provider"] = { "o", 206641 },	-- Refrigeration Pipe
						}),
					},
				}),
				q(25757, {	-- Get Koalbeard!
					["qg"] = 41184,	-- Riznek
					["sourceQuest"] = 25745,	-- Negotiations [H]
					["coord"] = { 88.5, 54.8, THOUSAND_NEEDLES },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				q(1120, {	-- Get the Gnomes Drunk
					["providers"] = {
						{ "n", 4452 },	-- Kravel Koalbeard
						{ "i", 5806 },	-- Fool's Stout
					},
					["altQuests"] = { 1121 },	-- Get the Goblins Drunk
					["sourceQuest"] = 1119,	-- Zanzil's Mixture and a Fool's Stout
					["coord"] = { 78.8, 77.3, THOUSAND_NEEDLES },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 35,
				}),
				q(1121, {	-- Get the Goblins Drunk
					["providers"] = {
						{ "n", 4452 },	-- Kravel Koalbeard
						{ "i", 5806 },	-- Fool's Stout
					},
					["altQuests"] = { 1120 },	-- Get the Gnomes Drunk
					["sourceQuest"] = 1119,	-- Zanzil's Mixture and a Fool's Stout
					["coord"] = { 78.8, 77.3, THOUSAND_NEEDLES },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 35,
				}),
				q(1950, {	-- Get the Scoop
					["qg"] = 6548,	-- Magus Tirth
					["sourceQuest"] = 1949,	-- Hidden Secrets
					["coord"] = { 78.2, 75.8, THOUSAND_NEEDLES },
					["timeline"] = { REMOVED_4_0_3 },
					["classes"] = { MAGE },
					["lvl"] = 30,
					["groups"] = {
						objective(1, {	-- Secret phrase found
							["provider"] = { "n", 6626 },	-- "Plucky" Johnson
							["description"] = "Target Plucky and then use /beckon at him.",
							["coord"] = { 79.6, 75.6, THOUSAND_NEEDLES },
						}),
					},
				}),
				q(25756, {	-- Get Zherin!
					["qg"] = 41190,	-- Crazzle Sprysprocket
					["sourceQuest"] = 25744,	-- Negotiations [A]
					["coord"] = { 91.4, 57.8, THOUSAND_NEEDLES },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(25813, {	-- Go Blow that Horn [A]
					["qg"] = 41190,	-- Crazzle Sprysprocket
					["sourceQuests"] = {
						25798,	-- Defend the Drill [A]
						25796,	-- Eminent Domain [A]
					},
					["coord"] = { 91.4, 57.8, THOUSAND_NEEDLES },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Blow the horn
							["provider"] = { "o", 203248 },	-- Horn Mouthpiece
							["coord"] = { 89.5, 47.0, THOUSAND_NEEDLES },
						}),
						objective(2, {	-- 0/1 Whrrrl slain
							["provider"] = { "n", 41334 },	-- Whrrrl
						}),
					},
				}),
				q(25814, {	-- Go Blow that Horn [H]
					["qg"] = 41184,	-- Riznek
					["sourceQuests"] = {
						25799,	-- Defend the Drill [H]
						25797,	-- Eminent Domain [H]
					},
					["coord"] = { 88.5, 54.8, THOUSAND_NEEDLES },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Blow the horn
							["provider"] = { "o", 203248 },	-- Horn Mouthpiece
						}),
						objective(2, {	-- 0/1 Whrrrl slain
							["provider"] = { "n", 41334 },	-- Whrrrl
						}),
					},
				}),
				q(1178, {	-- Goblin Sponsorship (1/5)
					["qg"] = 4630,	-- Pozzik
					["sourceQuest"] = 1176,	-- Load Lightening
					["coord"] = { 80.2, 75.9, THOUSAND_NEEDLES },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { THE_BARRENS },
					["lvl"] = 29,
				}),
				q(1180, {	-- Goblin Sponsorship (2/5)
					["qg"] = 3391,	-- Gazlowe
					["sourceQuest"] = 1178,	-- Goblin Sponsorship (1/5)
					["coord"] = { 62.68, 36.24, THE_BARRENS },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { STRANGLETHORN_VALE },
					["lvl"] = 29,
				}),
				q(1181, {	-- Goblin Sponsorship (3/5)
					["qg"] = 4631,	-- Wharfmaster Lozgil
					["sourceQuest"] = 1180,	-- Goblin Sponsorship (2/5)
					["coord"] = { 26.3, 73.6, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 29,
				}),
				q(1182, {	-- Goblin Sponsorship (4/5)
					["qg"] = 2496,	-- Baron Revilgaz
					["sourceQuest"] = 1181,	-- Goblin Sponsorship (3/5)
					["coord"] = { 27.2, 76.9, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 29,
					["groups"] = {
						objective(1, {	-- 0/1 Fuel Regulator Blueprints
							["providers"] = {
								{ "i", 5852 },	-- Fuel Regulator Blueprints
								{ "o", 20691 },	-- Cozzle's Footlocker
							},
							["coord"] = { 43.33, 20.33, STRANGLETHORN_VALE },
							["cost"] = {{ "i", 5851, 1 }},	-- Cozzle's Key
						}),
						-- #if BEFORE 4.0.3
						i(5851, {	-- Cozzle's Key
							["coord"] = { 42.6, 18.6, STRANGLETHORN_VALE },
							["cr"] = 4723,	-- Foreman Cozzle
						}),
						-- #endif
					},
				}),
				q(1183, {	-- Goblin Sponsorship (5/5)
					["providers"] = {
						{ "n", 2496 },	-- Baron Revilgaz
						{ "i", 5852 },	-- Fuel Regulator Blueprints
					},
					["sourceQuest"] = 1182,	-- Goblin Sponsorship (4/5)
					["coord"] = { 27.2, 76.9, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 29,
				}),
				q(27318, {	-- Grimtotem Chiefs: Elder Stormhoof [A]
					["qg"] = 45277,	-- Feralas Sentinel (mobileNPC)
					["sourceQuest"] = 27314,	-- Grimtotem Chiefs: Isha Gloomaxe [A]
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Elder Stormhoof slain
							["provider"] = { "n", 45410 },	-- Elder Stormhoof
						}),
						i(63600, {	-- Hands of the Chosen
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(63601, {	-- Darkcloud Mask
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(63602, {	-- Spaulders of the Disciple
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(63603, {	-- Legguards of the Pinnacle
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(27319, {	-- Grimtotem Chiefs: Elder Stormhoof [H]
					["qg"] = 45278,	-- Freewind Brave
					["sourceQuest"] = 27315,	-- Grimtotem Chiefs: Isha Gloomaxe [H]
					["coord"] = { 43.7, 43.7, THOUSAND_NEEDLES },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Elder Stormhoof slain
							["provider"] = { "n", 45410 },	-- Elder Stormhoof
						}),
						i(63604, {	-- Hands of the Chosen
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(63605, {	-- Darkcloud Mask
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(63606, {	-- Freewind Spaulders
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(63607, {	-- Legguards of the Pinnacle
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(27323, {	-- Grimtotem Chiefs: Grundig Darkcloud [A]
					["qg"] = 45277,	-- Feralas Sentinel (mobileNPC)
					["sourceQuest"] = 27318,	-- Grimtotem Chiefs: Elder Stormhoof [A]
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Grundig Darkcloud slain
							["provider"] = { "n", 45418 },	-- Grundig Darkcloud
						}),
					},
				}),
				q(27324, {	-- Grimtotem Chiefs: Grundig Darkcloud [H]
					["qg"] = 45278,	-- Freewind Brave
					["sourceQuest"] = 27319,	-- Grimtotem Chiefs: Elder Stormhoof [H]
					["timeline"] = { ADDED_4_0_3 },
					["coord"] = { 39.0, 41.1, THOUSAND_NEEDLES },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Grundig Darkcloud slain
							["provider"] = { "n", 45418 },	-- Grundig Darkcloud
						}),
					},
				}),
				q(27314, {	-- Grimtotem Chiefs: Isha Gloomaxe [A]
					["qg"] = 45277,	-- Feralas Sentinel (mobileNPC)
					["sourceQuest"] = 27275,	-- Together Again
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Isha Gloomaxe slain
							["provider"] = { "n", 45387 },	-- Isha Gloomaxe
						}),
					},
				}),
				q(27315, {	-- Grimtotem Chiefs: Isha Gloomaxe [H]
					["qg"] = 45278,	-- Freewind Brave
					["sourceQuest"] = 27276,	-- Together Again
					["coord"] = { 42.2, 48.0, THOUSAND_NEEDLES },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Isha Gloomaxe slain
							["provider"] = { "n", 45387 },	-- Isha Gloomaxe
						}),
					},
				}),
				q(27327, {	-- Grimtotem Chiefs: The Chief of Chiefs [A]
					["qg"] = 45277,	-- Feralas Sentinel (mobileNPC)
					["sourceQuest"] = 27323,	-- Grimtotem Chiefs: Grundig Darkcloud [A]
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Arnak Grimtotem slain
							["provider"] = { "n", 45438 },	-- Arnak Grimtotem
						}),
						i(63634, {	-- Lasting Peace
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(63635, {	-- Hood of Disgrace
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(63636, {	-- Legguards of Disfavor
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(27328, {	-- Grimtotem Chiefs: The Chief of Chiefs [H]
					["qg"] = 45278,	-- Freewind Brave
					["sourceQuest"] = 27324,	-- Grimtotem Chiefs: Grundig Darkcloud [H]
					["coord"] = { 34.0, 40.0, THOUSAND_NEEDLES },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Arnak Grimtotem slain
							["provider"] = { "n", 45438 },	-- Arnak Grimtotem
						}),
						i(63637, {	-- Lasting Peace
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(63638, {	-- Hood of Disgrace
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(63639, {	-- Legguards of Disfavor
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(25869, {	-- Grimtotem in the Post [A]
					["qg"] = 41392,	-- Quentin
					["sourceQuest"] = 25835,	-- Free Freewind Post [A]
					["coord"] = { 46.4, 57.9, THOUSAND_NEEDLES },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/10 Grimtotem Invader slain
							["provider"] = { "n", 41431 },	-- Grimtotem Invader
						}),
					},
				}),
				q(25870, {	-- Grimtotem in the Post [H]
					["qg"] = 41446,	-- Thalia Amberhide
					["sourceQuest"] = 25836,	-- Free Freewind Post [H]
					["coord"] = { 46.3, 57.8, THOUSAND_NEEDLES },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/10 Grimtotem Invader slain
							["provider"] = { "n", 41431 },	-- Grimtotem Invader
						}),
					},
				}),
				q(5064, {	-- Grimtotem Spying
					["qg"] = 10537,	-- Cliffwatcher Longhorn
					["sourceQuest"] = 4841,	-- Pacify the Centaur
					["coord"] = { 45.65, 50.80, THOUSAND_NEEDLES },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 24,
					["groups"] = {
						objective(1, {	-- 0/1 Secret Note #1
							["providers"] = {
								{ "i",  12765 },	-- Secret Note #1
								{ "o", 176344 },	-- Document Chest #1
							},
							["coord"] = { 32, 33, THOUSAND_NEEDLES },
						}),
						objective(2, {	-- 0/1 Secret Note #2
							["providers"] = {
								{ "i",  12766 },	-- Secret Note #2
								{ "o", 190483 },	-- Document Chest #2
							},
							["coord"] = { 34, 39, THOUSAND_NEEDLES },
						}),
						objective(3, {	-- 0/1 Secret Note #3
							["providers"] = {
								{ "i",  12768 },	-- Secret Note #3
								{ "o", 190484 },	-- Document Chest #3
							},
							["coord"] = { 39, 41, THOUSAND_NEEDLES },
						}),
						i(15457, {	-- Desert Shoulders
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(15458, {	-- Tundra Boots
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(15459, {	-- Grimtoll Wristguards
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(1105, {	-- Hardened Shells
					["qg"] = 4453,	-- Wizzle Brassbolts
					["coord"] = { 78.1, 77.1, THOUSAND_NEEDLES },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 28,
					["groups"] = {
						objective(1, {	-- 0/9 Hardened Tortoise Shell
							["provider"] = { "i", 5795 },	-- Hardened Tortoise Shell
							["crs"] = {
								4142,	-- Sparkleshell Tortoise
								4144,	-- Sparkleshell Borer
								4143,	-- Sparkleshell Snapper
							},
						}),
					},
				}),
				q(25660, {	-- Haunted
					["qg"] = 41058,	-- Spirit of Tony Two-Tusk (mobileNPC)
					["description"] = "The Spirit of Tony Two-Tusk will appear and start haunting you shortly after you complete quest |cFFFFD700Two-Tusk Takedown|r.",
					["sourceQuests"] = {
						25627,	-- Two-Tusk Takedown [A]
						25628,	-- Two-Tusk Takedown [H]
					},
					["coord"] = { 91.7, 78.9, THOUSAND_NEEDLES },	-- can be picked up anywhere in the Southsea Holdfast, but this is where it first shows up
					["timeline"] = { ADDED_4_0_3 },
				}),
				q(5762, {	-- Hemet Nesingwary
					["providers"] = {
						{ "n", 4452 },	-- Kravel Koalbeard
						{ "i", 14542 },	-- Kravel's Crate
					},
					["coord"] = { 78.8, 77.3, THOUSAND_NEEDLES },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { STRANGLETHORN_VALE },
					["lvl"] = 28,
				}),
				heroscall(q(28503, {	-- Hero's Call: Thousand Needles!
					["altQuests"] = {
						-- 28503,	-- Hero's Call: Thousand Needles!
						25479,	-- To New Thalanaar [Dustwallow Marsh]
						25481,	-- To New Thalanaar [Feralas]
					},
					["timeline"] = { ADDED_4_0_3 },
					["maps"] = { DARNASSUS, THE_EXODAR },	-- Only found in Darnassus & The Exodar in Cataclysm.
					["isBreadcrumb"] = true,
					-- #if BEFORE 7.3.5
					-- Cataclysm: Minimum is level 39. (TODO: Confirm this.)
					-- Cataclysm: Maximum is level 43. (TODO: Test max level between 42 and 50)
					["lvl"] = { 39, 43 },
					-- #endif
				})),
				q(4770, {	-- Homeward Bound
					["qg"] = 10427,	-- Pao'ka Swiftmountain
					["coord"] = { 17.8, 40.6, THOUSAND_NEEDLES },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 25,
				}),
				q(25873, {	-- Horn of the Traitor [A]
					["qg"] = 45271,	-- Montarr
					["sourceQuest"] = 25835,	-- Free Freewind Post [A]
					["coord"] = { 44.6, 50.0, THOUSAND_NEEDLES },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Longhorn's Horn
							["provider"] = { "i", 56139 },	-- Longhorn's Horn
							["cr"] = 41458,	-- Cliffwatcher Longhorn
						}),
						i(63632, {	-- Horn of the Traitor
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(25874, {	-- Horn of the Traitor [H]
					["qg"] = 45271,	-- Montarr
					["sourceQuest"] = 25836,	-- Free Freewind Post [H]
					["coord"] = { 44.6, 49.9, THOUSAND_NEEDLES },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Longhorn's Horn
							["provider"] = { "i", 56139 },	-- Longhorn's Horn
							["cr"] = 41458,	-- Cliffwatcher Longhorn
						}),
						i(63633, {	-- Horn of the Traitor
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(5151, {	-- Hypercapacitor Gizmo
					["qg"] = 10941,	-- Wizlo Bearingshiner
					["coord"] = { 21.44, 32.55, THOUSAND_NEEDLES },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 24,
					["groups"] = {
						objective(1, {	-- 0/1 Hypercapacitor Gizmo
							["provider"] = { "i", 12946 },	-- Hypercapacitor Gizmo
							["coord"] = { 22.8, 24.4, THOUSAND_NEEDLES },
							["cr"] = 10992,	-- Enraged Panther
						}),
						i(15467, {	-- Inventor's League Ring
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(25524, {	-- In the Outhouse [A]
					["provider"] = { "o", 202975 },	-- Submerged Outhouse
					["sourceQuest"] = 25504,	-- Do Me a Favor? [A]
					["coord"] = { 79.5, 75.1, THOUSAND_NEEDLES },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Use the crowbar on the outhouse
							["providers"] = {
								{ "i", 54821},	-- Pirate's Crowbar
								{ "o", 202975},	-- Submerged Outhouse
							},
							["cr"] = 40449,	-- Southsea Treasure Hunter
						}),
					},
				}),
				q(25526, {	-- In the Outhouse [H]
					["provider"] = { "o", 202975 },	-- Submerged Outhouse
					["sourceQuest"] = 25505,	-- Do Me a Favor? [H]
					["coord"] = { 79.5, 75.1, THOUSAND_NEEDLES },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Use the crowbar on the outhouse
							["providers"] = {
								{ "i", 54821},	-- Pirate's Crowbar
								{ "o", 202975},	-- Submerged Outhouse
							},
							["cr"] = 40449,	-- Southsea Treasure Hunter
						}),
					},
				}),
				q(1192, {	-- Indurium Ore
					["qg"] = 4630,	-- Pozzik
					["sourceQuest"] = 1194,	-- Rizzle's Schematics
					["coord"] = { 80, 75.8, THOUSAND_NEEDLES },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = {{ "i", 5833, 4 }},	-- Indurium Ore
					["repeatable"] = true,
					["lvl"] = 29,
				}),
				q(27329, {	-- Invoking the Serpent [A]
					["qg"] = 45442,	-- Lakota Windsong
					["sourceQuest"] = 27357,	-- The Captive Bride [A]
					["coord"] = { 39.2, 25.8, THOUSAND_NEEDLES },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Arikara defeated
							["provider"] = { "n", 45447 },	-- Arikara
						}),
						i(63640, {	-- Windsong Rifle
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(63641, {	-- Mantle of Invocation
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(63642, {	-- Wind Serpent Bracers
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(157025, {	-- Windserpent Fang
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(63643, {	-- Ring of the Subduer
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(27330, {	-- Invoking the Serpent [H]
					["qg"] = 45442,	-- Lakota Windsong
					["sourceQuest"] = 27358,	-- The Captive Bride [H]
					["coord"] = { 39.2, 25.8, THOUSAND_NEEDLES },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Arikara defeated
							["provider"] = { "n", 45447 },	-- Arikara
						}),
						i(63644, {	-- Windsong Rifle
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(63645, {	-- Mantle of Invocation
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(63646, {	-- Wind Serpent Bracers
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(63647, {	-- Ring of the Subduer
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(1190, {	-- Keeping Pace
					["qg"] = 4630,	-- Pozzik
					["sourceQuest"] = 1137,	-- News for Frizzle
					["coord"] = { 80.2, 75.9, THOUSAND_NEEDLES },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 29,
				}),
				q(1176, {	-- Load Lightening
					["qg"] = 4630,	-- Pozzik
					["coord"] = { 80.2, 75.9, THOUSAND_NEEDLES },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 29,
					["groups"] = {
						objective(1, {	-- 0/10 Hollow Vulture Bone
							["provider"] = { "i", 5848 },	-- Hollow Vulture Bone
							["crs"] = {
								4154,	-- Salt Flats Scavenger
								4158,	-- Salt Flats Vulture
							},
						}),
					},
				}),
				q(1106, {	-- Martek the Exiled
					["providers"] = {
						{ "n", 4454 },	-- Fizzle Brassbolts
						{ "i", 5827 },	-- Fizzle Brassbolts' Letter
					},
					["sourceQuests"] = {
						1105,	-- Hardened Shells
						1104,	-- Salt Flat Venom
					},
					["coord"] = { 78.1, 77.1, THOUSAND_NEEDLES },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { BADLANDS },
					["lvl"] = 26,
				}),
				q(4542, {	-- Message to Freewind Post
					["providers"] = {
						{ "n", 10079 },	-- Brave Moonhorn
						{ "i", 11886 },	-- Urgent Message
					},
					["coord"] = { 32.23, 22.17, THOUSAND_NEEDLES },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 23,
				}),
				q(25744, {	-- Negotiations [A]
					["qg"] = 40027,	-- Fizzle Brassbolts
					["sourceQuest"] = 25542,	-- Circle the Wagons... er, Boats [A]
					["coord"] = { 75.9, 74.6, THOUSAND_NEEDLES },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(25745, {	-- Negotiations [H]
					["qg"] = 40028,	-- Pozzik
					["sourceQuest"] = 25543,	-- Circle the Wagons... er, Boats [H]
					["coord"] = { 75.9, 74.7, THOUSAND_NEEDLES },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				q(27310, {	-- No Weapons For You! [A]
					["qg"] = 45277,	-- Feralas Sentinel (mobileNPC)
					["sourceQuest"] = 27275,	-- Together Again
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/8 Weapon racks burned
							["provider"] = { "o", 205368 },	-- Grimtotem Weapon Rack
						}),
					},
				}),
				q(27311, {	-- No Weapons For You! [H]
					["qg"] = 45278,	-- Freewind Brave
					["sourceQuest"] = 27276,	-- Together Again
					["coord"] = { 42.2, 48.0, THOUSAND_NEEDLES },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/8 Weapon racks burned
							["provider"] = { "o", 205368 },	-- Grimtotem Weapon Rack
						}),
					},
				}),
				q(28124, {	-- On to the Bulwark
					["qg"] = 47471,	-- Pao'ka Swiftmountain
					["sourceQuest"] = 28098,	-- The Twilight Skymaster
					["coord"] = { 12.8, 34.0, THOUSAND_NEEDLES },
					["timeline"] = { ADDED_4_0_3 },
				}),
				q(4841, {	-- Pacify the Centaur
					["qg"] = 10537,	-- Cliffwatcher Longhorn
					["sourceQuest"] = 4542,	-- Message to Freewind Post
					["coord"] = { 45.65, 50.80, THOUSAND_NEEDLES },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 23,
					["groups"] = {
						objective(1, {	-- 0/12 Galak Scout slain
							["provider"] = { "n", 4094 },	-- Galak Scout
						}),
						objective(2, {	-- 0/10 Galak Wrangler slain
							["provider"] = { "n", 4093 },	-- Galak Wrangler
						}),
						objective(3, {	-- 0/6 Galak Windchaser slain
							["provider"] = { "n", 4096 },	-- Galak Windchaser
						}),
					},
				}),
				q(1112, {	-- Parts for Kravel
					["providers"] = {
						{ "n", 3453 },	-- Wharfmaster Dizzywig
						{ "i", 5800 },	-- Kravel's Parts
					},
					["sourceQuest"] = 1111,	-- Wharfmaster Dizzywig
					["coord"] = { 63.35, 38.45, THE_BARRENS },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 30,
				}),
				q(1148, {	-- Parts of the Swarm (1/2)
					["provider"] = { "i", 5877 },	-- Cracked Silithid Carapace
					["coord"] = { 70.2, 87, THOUSAND_NEEDLES },
					["timeline"] = { REMOVED_4_0_3 },
					["crs"] = {
						4133,	-- Silithid Hive Drone
						4130,	-- Silithid Searcher
						4131,	-- Silithid Invader
						4132,	-- Silithid Ravager
					},
					["races"] = HORDE_ONLY,
					["lvl"] = 28,
					["groups"] = {
						objective(1, {	-- 0/1 Silithid Heart
							["provider"] = { "i", 5855 },	-- Silithid Heart
						}),
						objective(2, {	-- 0/5 Silithid Talon
							["provider"] = { "i", 5854 },	-- Silithid Talon
						}),
						objective(3, {	-- 0/3 Intact Silithid Carapace
							["provider"] = { "i", 5853 },	-- Intact Silithid Carapace
						}),
					},
				}),
				q(1184, {	-- Parts of the Swarm (2/2)
					["qg"] = 3428,	-- Korran
					["sourceQuest"] = 1148,	-- Parts of the Swarm (1/2)
					["coord"] = { 51, 29.6, THE_BARRENS },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["lvl"] = 28,
					["groups"] = {
						i(6737, {	-- Dryleaf Pants
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(6738, {	-- Bleeding Crescent
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(25532, {	-- Pirate Accuracy Increasing [A]
					["qg"] = 40475,	-- Jinky Twizzlefixxit
					["sourceQuests"] = {
						25515,	-- Down in the Deeps [A]
						25517,	-- Bar Fight
						25524,	-- In the Outhouse [A]
					},
					["coord"] = { 76.5, 73.6, THOUSAND_NEEDLES },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(25533, {	-- Pirate Accuracy Increasing [H]
					["qg"] = 40487,	-- Razzeric
					["sourceQuests"] = {
						25518,	-- Bar Fight! [H]
						25516,	-- Down in the Deeps [H]
						25526,	-- In the Outhouse [H]
					},
					["coord"] = { 77.1, 74.4, THOUSAND_NEEDLES },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				q(4966, {	-- Protect Kanati Greycloud
					["qg"] = 10638,	-- Kanati Greycloud
					["sourceQuest"] = 4881,	-- Assassination Plot
					["coord"] = { 21.27, 32.03, THOUSAND_NEEDLES },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 23,
					["groups"] = {
						i(15461, {	-- Lightheel Boots
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(15462, {	-- Loamflake Bracers
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(15463, {	-- Palestrider Gloves
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(25585, {	-- Quiet the Cannons [A]
					["qg"] = 40475,	-- Jinky Twizzlefixxit
					["sourceQuest"] = 25542,	-- Circle the Wagons... er, Boats [A]
					["coord"] = { 76.5, 73.6, THOUSAND_NEEDLES },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/8 Holdfast Cannons destroyed
							["provider"] = { "n", 40869 },	-- Holdfast Cannon
						}),
					},
				}),
				q(25586, {	-- Quiet the Cannons [H]
					["qg"] = 40487,	-- Razzeric
					["sourceQuest"] = 25543,	-- Circle the Wagons... er, Boats [H]
					["coord"] = { 77.1, 74.4, THOUSAND_NEEDLES },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/8 Holdfast Cannons destroyed
							["provider"] = { "n", 40869 },	-- Holdfast Cannon
						}),
					},
				}),
				q(1187, {	-- Razzeric's Tweaking
					["qg"] = 4706,	-- Razzeric
					["sourceQuest"] = 1186,	-- The Eighteenth Pilot
					["coord"] = { 80.3, 76.1, THOUSAND_NEEDLES },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { DUSTWALLOW_MARSH },
					["lvl"] = 29,
					["groups"] = {
						objective(1, {	-- 0/1 Seaforium Booster
							["providers"] = {
								{ "i", 5862 },	-- Seaforium Booster
								{ "o", 20727 },	-- Gizmorium Shipping Crate
							},
							["coord"] = { 54.1, 56.5, DUSTWALLOW_MARSH },
						}),
					},
				}),
				q(28088, {	-- Release Heartrazor
					["qg"] = 47471,	-- Pao'ka Swiftmountain
					["sourceQuests"] = {
						28087,	-- Death to All Trappers!
						28086,	-- Free the Pridelings
					},
					["coord"] = { 12.8, 34.0, THOUSAND_NEEDLES },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/1 Heartrazor released
							["provider"] = { "n", 47487 },	-- Twilight Subduer
						}),
					},
				}),
				q(1122, {	-- Report Back to Fizzlebub
					["providers"] = {
						{ "n", 4452 },	-- Kravel Koalbeard
						{ "i", 5807 },	-- Fool's Stout Report
					},
					["sourceQuests"] = {
						1120,	-- Get the Gnomes Drunk
						1121,	-- Get the Goblins Drunk
					},
					["coord"] = { 78.8, 77.3, THOUSAND_NEEDLES },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { STRANGLETHORN_VALE },
					["lvl"] = 35,
				}),
				q(1194, {	-- Rizzle's Schematics
					["providers"] = {
						{ "o", 20805 },	-- Rizzle's Unguarded Plans
						{ "i", 5866 },	-- Sample of Indurium Ore
					},
					["sourceQuest"] = 1190,	-- Keeping Pace
					["coord"] = { 77.22, 77.39, THOUSAND_NEEDLES },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 29,
				}),
				q(1110, {	-- Rocket Car Parts
					["qg"] = 4452,	-- Kravel Koalbeard
					["coord"] = { 78.8, 77.3, THOUSAND_NEEDLES },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 28,
					["groups"] = {
						objective(1, {	-- 0/30 Rocket Car Parts
							["providers"] = {
								{ "i", 5798 },	-- Rocket Car Parts
								{ "o", 19869 },	-- Rocket Car Rubble
							},
						}),
					},
				}),
				q(1117, {	-- Rumors for Kravel
					["providers"] = {
						{ "n", 773 },	-- Krazek
						{ "i", 5804 },	-- Goblin Rumors
					},
					["sourceQuest"] = 1116,	-- Dream Dust in the Swamp
					["coord"] = { 27, 77.2, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 30,
				}),
				q(5062, {	-- Sacred Fire
					["qg"] = 10428,	-- Motega Firemane
					["sourceQuest"] = 4865,	-- Serpent Wild
					["coord"] = { 21.55, 32.34, THOUSAND_NEEDLES },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 24,
					["groups"] = {
						objective(1, {	-- 0/10 Incendia Agave
							["providers"] = {
								{ "i", 12732 },	-- Incendia Agave
								{ "o", 175928 },	-- Incendia Agave
							},
						}),
					},
				}),
				q(1188, {	-- Safety First (1/2)
					["providers"] = {
						{ "n", 4706 },	-- Razzeric
						{ "i", 5862 },	-- Seaforium Booster
					},
					["sourceQuest"] = 1187,	-- Razzeric's Tweaking
					["coord"] = { 80.3, 76.1, THOUSAND_NEEDLES },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { TANARIS },
					["lvl"] = 29,
				}),
				q(1189, {	-- Safety First (2/2)
					["providers"] = {
						{ "n", 4708 },	-- Shreev
						{ "i", 5865 },	-- Modified Seaforium Booster
					},
					["sourceQuest"] = 1188,	-- Safety First (1/2)
					["coord"] = { 50.9, 27.0, TANARIS },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 29,
					["groups"] = {
						i(6726, {	-- Razzeric's Customized Seatbelt
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(6727, {	-- Razzeric's Racing Grips
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(1104, {	-- Salt Flat Venom
					["qg"] = 4454,	-- Fizzle Brassbolts
					["coord"] = { 78.1, 77.1, THOUSAND_NEEDLES },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 28,
					["groups"] = {
						objective(1, {	-- 0/6 Salty Scorpid Venom
							["provider"] = { "i", 5794 },	-- Salty Scorpid Venom
							["crs"] = {
								4140,	-- Scorpid Reaver
								4139,	-- Scorpid Terror
								5937,	-- Vile Sting
							},
						}),
					},
				}),
				q(25871, {	-- Save the Sentinel
					["qg"] = 41444,	-- Brienna Starglow
					["sourceQuest"] = 25835,	-- Free Freewind Post [A]
					["coord"] = { 46.8, 56.1, THOUSAND_NEEDLES },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Captured Feralas Sentinel freed
							["provider"] = { "n", 41463 },	-- Captured Feralas Sentinel
						}),
					},
				}),
				q(4865, {	-- Serpent Wild
					["qg"] = 10539,	-- Hagar Lightninghoof
					["sourceQuest"] = 4821,	-- Alien Egg
					["coord"] = { 44.64, 50.29, THOUSAND_NEEDLES },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 24,
				}),
				q(28125, {	-- Something to Wear
					["qg"] = 47580,	-- Lakota Windsong
					["sourceQuest"] = 28124,	-- On to the Bulwark
					["coord"] = { 30.5, 49.3, THOUSAND_NEEDLES },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/10 Twilight's Hammer Armor
							["provider"] = { "i", 63035 },	-- Twilight's Hammer Armor
							["crs"] = {
								47583,	-- Bulwark Defender
								47585,	-- Twilight Magus
								47630,	-- Twilight Jailer
							},
						}),
						i(63656, {	-- Lakota's Mace
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(63657, {	-- Well Hammered Shield
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(63658, {	-- Bloodstained Twilight Belt
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(157019, {	-- Lakota's Gavel
							["timeline"] = { ADDED_7_3_5 },
						}),
					},
				}),
				q(28031, {	-- Special Delivery for Brivelthwerp [A]
					["qg"] = 40726,	-- Mazzer Stripscrew
					["sourceQuest"] = 25542,	-- Circle the Wagons... er, Boats [A]
					["coord"] = { 78.1, 73.1, THOUSAND_NEEDLES },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(28042, {	-- Special Delivery for Brivelthwerp [H]
					["qg"] = 40727,	-- Griznak
					["sourceQuest"] = 25543,	-- Circle the Wagons... er, Boats [H]
					["coord"] = { 78.2, 73.6, THOUSAND_NEEDLES },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				q(28160, {	-- Spread the Word [A]
					["qg"] = 47745,	-- Magatha Grimtotem
					["sourceQuest"] = 28159,	-- The Doomstone
					["coord"] = { 50.2, 62.6, THOUSAND_NEEDLES },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(63667, {	-- Robe of the Thousand Needles
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(63668, {	-- Leggings of the Thousand Needles
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(63669, {	-- Vest of the Thousand Needles
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(63670, {	-- Chestguard of the Thousand Needles
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(63671, {	-- Pauldrons of the Thousand Needles
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(63672, {	-- Helm of the Thousand Needles
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(28161, {	-- Spread the Word [H]
					["qg"] = 47745,	-- Magatha Grimtotem
					["sourceQuest"] = 28159,	-- The Doomstone
					["coord"] = { 50.2, 62.6, THOUSAND_NEEDLES },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(63673, {	-- Robe of the Thousand Needles
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(63674, {	-- Leggings of the Thousand Needles
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(63675, {	-- Vest of the Thousand Needles
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(63676, {	-- Chestguard of the Thousand Needles
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(63677, {	-- Pauldrons of the Thousand Needles
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(63678, {	-- Helm of the Thousand Needles
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(25609, {	-- Sunken Treasure [A]
					["qg"] = 40885,	-- Wizzle Brassbolts
					["sourceQuest"] = 25590,	-- Where's Wizzle?
					["coord"] = { 91.6, 78.6, THOUSAND_NEEDLES },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/8 Sunken Treasure Chest
							["providers"] = {
								{ "i", 55138 },	-- Sunken Treasure Chest
								{ "o", 203090 },	-- Sunken Treasure Chest
							},
						}),
					},
				}),
				q(25610, {	-- Sunken Treasure [H]
					["qg"] = 40888,	-- Synge
					["sourceQuest"] = 25596,	-- Where's Synge?
					["coord"] = { 91.7, 79.3, THOUSAND_NEEDLES },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/8 Sunken Treasure Chest
							["providers"] = {
								{ "i", 55138 },	-- Sunken Treasure Chest
								{ "o", 203090 },	-- Sunken Treasure Chest
							},
						}),
					},
				}),
				q(1150, {	-- Test of Endurance
					["qg"] = 2986,	-- Dorn Plainstalker
					["sourceQuest"] = 1149,	-- Test of Faith
					["coord"] = { 53.94, 41.49, THOUSAND_NEEDLES },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 25,
					["groups"] = {
						objective(1, {	-- 0/1 Grenka's Claw
							["providers"] = {
								{ "i", 5843 },	-- Grenka's Claw
								{ "o", 20447 },	-- Harpy Foodstuffs
								{ "i", 5845 },	-- Flank of Meat
							},
							["coord"] = { 26, 55.4, THOUSAND_NEEDLES },
							["cr"] = 4490,	-- Grenka Bloodscreech
						}),
					},
				}),
				q(1149, {	-- Test of Faith
					["qg"] = 2986,	-- Dorn Plainstalker
					["coord"] = { 53.94, 41.49, THOUSAND_NEEDLES },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 25,
				}),
				q(1152, {	-- Test of Lore (1/6)
					["qg"] = 2986,	-- Dorn Plainstalker
					["sourceQuest"] = 1151,	-- Test of Strength
					["coord"] = { 53.94, 41.49, THOUSAND_NEEDLES },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { STONETALON_MOUNTAINS },
					["races"] = HORDE_ONLY,
					["lvl"] = 25,
				}),
				q(1154, {	-- Test of Lore (2/6)
					["qg"] = 4489,	-- Braug Dimspirit
					["sourceQuest"] = 1152,	-- Test of Lore (1/6)
					["coord"] = { 78.80, 45.68, STONETALON_MOUNTAINS },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { ASHENVALE },
					["races"] = HORDE_ONLY,
					["lvl"] = 25,
					["groups"] = {
						objective(1, {	-- 0/1 Legacy of the Aspects
							["providers"] = {
								{ "i", 5860 },	-- Legacy of the Aspects
								{ "o", 20725 },	-- The Legacy of the Aspects
							},
							["coord"] = { 75.5, 74.4, ASHENVALE },
						}),
					},
				}),
				q(6627, {	-- Test of Lore (3/6)
					["qg"] = 4489,	-- Braug Dimspirit
					["sourceQuest"] = 1154,	-- Test of Lore (2/6)
					["coord"] = { 78.80, 45.68, STONETALON_MOUNTAINS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 25,
					["groups"] = {
						objective(1, {	-- Answer Braug Dimspirit's question correctly
							["description"] = "The answer is Neltharion.",
						}),
					},
				}),
				q(1159, {	-- Test of Lore (4/6)
					["qg"] = 4489,	-- Braug Dimspirit
					["sourceQuest"] = 6627,	-- Test of Lore (3/6)
					["coord"] = { 78.80, 45.68, STONETALON_MOUNTAINS },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { UNDERCITY },
					["races"] = HORDE_ONLY,
					["lvl"] = 25,
				}),
				q(6628, {	-- Test of Lore (6/6)
					["qg"] = 4488,	-- Parqual Fintallas
					["sourceQuest"] = 1160,	-- Test of Lore (5/6)
					["coord"] = { 57.75, 65.39, UNDERCITY },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 25,
					["groups"] = {
						objective(1, {	-- Answer Parqual Fintallas' question correctly
							["description"] = "The answer is Nerzhul.",
						}),
					},
				}),
				q(1151, {	-- Test of Strength
					["qg"] = 2986,	-- Dorn Plainstalker
					["sourceQuest"] = 1150,	-- Test of Endurance
					["coord"] = { 53.94, 41.49, THOUSAND_NEEDLES },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 25,
					["groups"] = {
						objective(1, {	-- 0/1 Fragments of Rok'Alim
							["provider"] = { "i", 5844 },	-- Fragments of Rok'Alim
							["cr"] = 4499,	-- Rok'Alim the Pounder
						}),
					},
				}),
				q(9434, {	-- Testing the Tonic
					["providers"] = {
						{ "n", 10941 },	-- Wizlo Bearingshiner
						{ "i", 23644 },	-- Crate of Reagents
					},
					["sourceQuest"] = 9433,	-- A Dip in the Moonwell
					["coord"] = { 21.4, 32.4, THOUSAND_NEEDLES },
					["timeline"] = { ADDED_2_0_1, REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 24,
				}),
				q(28048, {	-- That Smart One's Gotta Go
					["qg"] = 47383,	-- Brivelthwerp
					["sourceQuests"] = {
						28045,	-- The Greatest Flavor in the World!
						28051,	-- We All Scream for Ice Cream... and then Die!
					},
					["coord"] = { 69.9, 85.2, THOUSAND_NEEDLES },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/1 Hive Controller slain
							["provider"] = { "n", 47389 },	-- Hive Controller
						}),
						i(63621, {	-- Ice Cream Churner
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(63622, {	-- Hive Controller Mantle
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(63623, {	-- Really Cold Bracers
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(25762, {	-- The Ancient Brazier
					["qg"] = 40082,	-- Skycaller Vrakthris
					["sourceQuests"] = {
						25744,	-- Negotiations [A]
						25745,	-- Negotiations [H]
					},
					["coord"] = { 90.1, 53.0, THOUSAND_NEEDLES },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/1 The Ancient Brazier reignited
							["providers"] = {
								{ "i", 55986 },	-- Splithoof Brand
								{ "o", 203221 },	-- The Ancient Brazier
							},
							["coord"] = { 42.0, 31.5, THOUSAND_NEEDLES },
						}),
						objective(2, {	-- 0/1 The Sacred Flame
							["provider"] = { "i", 55979 },	-- The Sacred Flame
							["cr"] = 41236,	-- Aquarian
						}),
						i(63608, {	-- Shroud of Contempt
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(63609, {	-- Belt of False Promises
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(63610, {	-- Greaves of the Sacred Flame
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(1179, {	-- The Brassbolts Brothers
					["providers"] = {
						{ "n", 2092 },	-- Pilot Longbeard
						{ "i", 5849 },	-- Crate of Crash Helmets
					},
					["coord"] = { 72.4, 93.6, IRONFORGE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 28,
				}),
				q(25872, {	-- The Brave and the Bold
					["qg"] = 41421,	-- Rau Cliffrunner
					["sourceQuest"] = 25836,	-- Free Freewind Post [H]
					["coord"] = { 46.7, 56.0, THOUSAND_NEEDLES },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Captured Freewind Brave freed
							["provider"] = { "n", 41460 },	-- Captured Freewind Brave
						}),
					},
				}),
				q(27357, {	-- The Captive Bride [A]
					["qg"] = 45277,	-- Feralas Sentinel (mobileNPC)
					["sourceQuests"] = {
						27327,	-- Grimtotem Chiefs: The Chief of Chiefs [A]
						27320,	-- The Writ of History [A]
						27325,	-- The Drums of War [A]
					},
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(27358, {	-- The Captive Bride [H]
					["qg"] = 45278,	-- Freewind Brave
					["sourceQuests"] = {
						27328,	-- Grimtotem Chiefs: The Chief of Chiefs [H]
						27326,	-- The Drums of War [H]
						27321,	-- The Writ of History [H]
					},
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,	-- missing source quests
				}),
				q(28159, {	-- The Doomstone
					["qg"] = 47745,	-- Magatha Grimtotem
					["sourceQuests"] = {
						28157,	-- Four Twilight Elements
						28158,	-- Unbound
					},
					["coord"] = { 50.2, 62.6, THOUSAND_NEEDLES },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/1 The Doomstone
							["provider"] = { "i", 63096 },	-- The Doomstone
							["cr"] = 47777,	-- Animus
						}),
						i(63663, {	-- Bracers of Safe Keeping
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(63664, {	-- Withering Mask
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(63665, {	-- Dirty Work Greaves
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(63666, {	-- Dupe's Bracers
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(27325, {	-- The Drums of War [A]
					["qg"] = 45277,	-- Feralas Sentinel (mobileNPC)
					["sourceQuest"] = 27316,	-- The Rattle of Bones [A]
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 The Drums of War
							["providers"] = {
								{ "i", 60980 },	-- The Drums of War
								{ "o", 205421 },	-- The Drums of War
							},
							["coord"] = { 34.0, 37.2, THOUSAND_NEEDLES },
						}),
					},
				}),
				q(27326, {	-- The Drums of War [H]
					["qg"] = 45278,	-- Freewind Brave
					["sourceQuest"] = 27317,	-- The Rattle of Bones [A]
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 The Drums of War
							["providers"] = {
								{ "i", 60980 },	-- The Drums of War
								{ "o", 205421 },	-- The Drums of War
							},
							["coord"] = { 34.0, 37.2, THOUSAND_NEEDLES },
						}),
					},
				}),
				q(1186, {	-- The Eighteenth Pilot
					["qg"] = 4630,	-- Pozzik
					["sourceQuest"] = 1183,	-- Goblin Sponsorship (5/5)
					["coord"] = { 80.2, 75.9, THOUSAND_NEEDLES },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 29,
				}),
				q(28140, {	-- The Elder Crone
					["qg"] = 47580,	-- Lakota Windsong
					["sourceQuests"] = {
						28136,	-- Behind You!
						28139,	-- Codemaster's Code
					},
					["coord"] = { 30.5, 49.3, THOUSAND_NEEDLES },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/1 Controller disabled
							["provider"] = { "o", 206767 },	-- Magatha's Bonds Controller
							["coord"] = { 35.9, 60.7, THOUSAND_NEEDLES },
						}),
					},
				}),
				q(28045, {	-- The Greatest Flavor in the World!
					["qg"] = 47383,	-- Brivelthwerp
					["sourceQuests"] = {
						28031,	-- Special Delivery for Brivelthwerp [A]
						28042,	-- Special Delivery for Brivelthwerp [H]
					},
					["coord"] = { 69.9, 85.2, THOUSAND_NEEDLES },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/8 Scoop of Silithid Goo
							["provider"] = { "i", 62911 },	-- Scoop of Silithid Goo
							["crs"] = {
								47388,	-- Silithid Ravager
								48177,	-- Silithid Ravager
								48178,	-- Silithid Ravager
							},
						}),
					},
				}),
				q(25486, {	-- The Grimtotem are Coming [A]
					["qg"] = 39946,	-- Caryssia Moonhunter
					["sourceQuests"] = {
						28503,	-- Hero's Call: Thousand Needles!
						25479,	-- To New Thalanaar [Dustwallow Marsh]
						25481,	-- To New Thalanaar [Feralas]
					},
					["coord"] = { 86.1, 45.3, FERALAS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/7 Grimtotem Marauder slain
							["provider"] = { "n", 39949 },	-- Grimtotem Marauder
						}),
					},
				}),
				q(25487, {	-- The Grimtotem are Coming [H]
					["qg"] = 39895,	-- Kanati Greycloud
					["sourceQuests"] = {
						25356,	-- To the Summit (Feralas)
						25478,	-- To the Summit (Dustwallow Marsh)
					},
					["coord"] = { 11.1, 11.2, THOUSAND_NEEDLES },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/7 Grimtotem Pillager slain
							["provider"] = { "n", 39947 },	-- Grimtotem Pillager
						}),
					},
				}),
				q(25704, {	-- The Mad Magus
					["qg"] = 41060,	-- Ajamon Ghostcaller
					["sourceQuest"] = 25672,	-- Carcass Collection
					["coord"] = { 96.8, 72.5, THOUSAND_NEEDLES },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/1 Mad Magus Tirth's soul extracted
							["provider"] = { "n", 41130 },	-- The Mad Magus Kill Credit
						}),
						i(63588, {	-- Magus Tirth's Robe
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(63589, {	-- Holdfast Belt
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(63590, {	-- Ghostcaller's Leggings
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(63591, {	-- Alimony
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(63587, {	-- Discarded Wedding Band
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(3843, {	-- The Newest Member of the Family
					["providers"] = {
						{ "n", 9238 },	-- Quentin
						{ "i", 11471 },	-- Fragile Sprite Darter Egg
					},
					["sourceQuest"] = 3842,	-- A Short Incubation
					["coord"] = { 78.4, 74.7, THOUSAND_NEEDLES },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { THE_HINTERLANDS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 38,
				}),
				q(27316, {	-- The Rattle of Bones [A]
					["qg"] = 48208,	-- The Rattle of Bones
					["sourceQuests"] = {
						27275,	-- Together Again [A]
						28283,	-- What's that Rattle? [A]
					},
					["coord"] = { 43.3, 43.4, THOUSAND_NEEDLES },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(27317, {	-- The Rattle of Bones [H]
					["qg"] = 48208,	-- The Rattle of Bones
					["sourceQuests"] = {
						27276,	-- Together Again [H]
						28284,	-- What's that Rattle? [H]
					},
					["coord"] = { 43.4, 43.4, THOUSAND_NEEDLES },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				q(1115, {	-- The Rumormonger
					["qg"] = 4452,	-- Kravel Koalbeard
					["coord"] = { 78.8, 77.3, THOUSAND_NEEDLES },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { STRANGLETHORN_VALE },
					["lvl"] = 30,
				}),
				q(1145, {	-- The Swarm Grows (1/3)
					["providers"] = {
						{ "n", 3428 },	-- Korran
						{ "i", 5846 },	-- Korran's Sealed Note
					},
					["coord"] = { 51.07, 29.62, THE_BARRENS },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["lvl"] = 29,
				}),
				q(1146, {	-- The Swarm Grows (2/3)
					["providers"] = {
						{ "n", 4485 },	-- Belgrom Rockmaul
						{ "i", 5850 },	-- Belgrom's Sealed Note
					},
					["sourceQuest"] = 1145,	-- The Swarm Grows (1/3)
					["coord"] = { 75, 34.2, ORGRIMMAR },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 29,
				}),
				q(1147, {	-- The Swarm Grows (3/3)
					["qg"] = 4483,	-- Moktar Krin
					["sourceQuest"] = 1146,	-- The Swarm Grows (2/3)
					["coord"] = { 67.60, 63.93, THOUSAND_NEEDLES },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 29,
					["groups"] = {
						objective(1, {	-- 0/5 Silithid Searcher slain
							["provider"] = { "n", 4130 },	-- Silithid Searcher
						}),
						objective(2, {	-- 0/5 Silithid Hive Drone slain
							["provider"] = { "n", 4133 },	-- Silithid Hive Drone
						}),
						objective(3, {	-- 0/5 Silithid Invader slain
							["provider"] = { "n", 4131 },	-- Silithid Invader
						}),
					},
				}),
				q(28098, {	-- The Twilight Skymaster
					["qg"] = 47471,	-- Pao'ka Swiftmountain
					["sourceQuest"] = 28088,	-- Release Heartrazor
					["coord"] = { 12.8, 34.0, THOUSAND_NEEDLES },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						i(63652, {	-- Prideling Down Leggings
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(63653, {-- Heartrazor's Gift
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(63654, {	-- Skymaster's Pants
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(63655, {	-- Pridekeeper's Breastplate
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(27320, {	-- The Writ of History [A]
					["qg"] = 45277,	-- Feralas Sentinel (mobileNPC)
					["sourceQuest"] = 27316,	-- The Rattle of Bones [A]
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 The Writ of History
							["providers"] = {
								{ "i", 60976 },	-- The Writ of History
								{ "o", 205416 },	-- The Writ of History
							},
							["coord"] = { 38.7, 41.8, THOUSAND_NEEDLES },
						}),
					},
				}),
				q(27321, {	-- The Writ of History [H]
					["qg"] = 45278,	-- Freewind Brave
					["sourceQuest"] = 27317,	-- The Rattle of Bones [H]
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 The Writ of History
							["providers"] = {
								{ "i", 60976 },	-- The Writ of History
								{ "o", 205416 },	-- The Writ of History
							},
							["coord"] = { 38.7, 41.8, THOUSAND_NEEDLES },
						}),
					},
				}),
				q(25479, {	-- To New Thalanaar [Dustwallow Marsh]
					["qg"] = 40345,	-- Thyssiana
					["altQuests"] = {
						28503,	-- Hero's Call: Thousand Needles!
						-- 25479,	-- To New Thalanaar [Dustwallow Marsh]
						25481,	-- To New Thalanaar [Feralas]
					},
					["coord"] = { 41.8, 73.8, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_4_0_3 },
					["maps"] = { FERALAS },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
				}),
				q(25481, {	-- To New Thalanaar [Feralas]
					["qg"] = 40369,	-- Falfindel Waywarder
					["altQuests"] = {
						28503,	-- Hero's Call: Thousand Needles!
						25479,	-- To New Thalanaar [Dustwallow Marsh]
						-- 25481,	-- To New Thalanaar [Feralas]
					},
					["coord"] = { 77.2, 56.5, FERALAS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
				}),
				q(25478, {	-- To the Summit [Dustwallow Marsh]
					["qg"] = 40344,	-- Nyse
					["sourceQuest"] = 28504,	-- Warchief's Command: Thousand Needles!
					["coord"] = { 41.8, 73.8, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,	-- for "The Grimtotem are Coming"
				}),
				q(25356, {	-- To the Summit [Feralas]
					["qg"] = 39893,	-- Jawn Highmesa
					["sourceQuest"] = 28504,	-- Warchief's Command: Thousand Needles!
					["coord"] = { 74.6, 42.8, FERALAS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
				}),
				q(28143, {	-- To the Withering
					-- This quest gets marked as completed when you complete 28142
					["qg"] = 47580,	-- Lakota Windsong
					["description"] = "This quest is offered as a replacement to |cFFFFD700To the Withering|r (28142) if you happen to abandon it.",
					["sourceQuest"] = 28140,	-- The Elder Crone
					["coord"] = { 30.5, 49.3, THOUSAND_NEEDLES },
					["timeline"] = { ADDED_4_0_3 },
				}),
				q(28142, {	-- To the Withering
					-- This quest gets marked as completed when you complete 28143
					["description"] = "This quest pops-up and gets Auto-Accepted when you complete the quest |cFFFFD700The Elder Crone|r (28140).\nIf you happen to abandon this quest, you can get its replacement, |cFFFFD700To the Withering|r (28143), from Lakota Windsong.",
					["sourceQuest"] = 28140,	-- The Elder Crone
					["coord"] = { 35.9, 60.7, THOUSAND_NEEDLES },
					["timeline"] = { ADDED_4_0_3 },
				}),
				q(27275, {	-- Together Again [A]
					["qg"] = 41444,	-- Brienna Starglow
					["sourceQuest"] = 25871,	-- Save the Sentinel
					["coord"] = { 46.8, 56.1, THOUSAND_NEEDLES },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(27276, {	-- Together Again [H]
					["qg"] = 41421,	-- Rau Cliffrunner
					["sourceQuest"] = 25872,	-- The Brave and the Bold
					["coord"] = { 46.7, 55.9, THOUSAND_NEEDLES },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				q(28085, {	-- Trouble at Highperch
					["qg"] = 45442,	-- Lakota Windsong
					["sourceQuests"] = {
						27329,	-- Invoking the Serpent [A]
						27330,	-- Invoking the Serpent [H]
					},
					["coord"] = { 39.2, 25.8, THOUSAND_NEEDLES },
					["timeline"] = { ADDED_4_0_3 },
				}),
				q(25488, {	-- Two If By Boat [A]
					["qg"] = 39992,	-- Rendow
					["sourceQuest"] = 25486,	-- The Grimtotem Are Coming
					["coord"] = { 88.5, 44.4, FERALAS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(63558, {	-- Mirage Amulet
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(63561, {	-- Bracers of Desperate Need
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(63560, {	-- Floating Belt
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(63559, {	-- Maloof's Spare Boots
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131430, {	-- Maloof's Spare Treads
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(25489, {	-- Two If By Boat [H]
					["qg"] = 39963,	-- Motega Firemane
					["sourceQuest"] = 25487,	-- The Grimtotem are Coming
					["coord"] = { 10.5, 8.5, THOUSAND_NEEDLES },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(63562, {	-- Mirage Amulet
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(63563, {	-- Maloof's Spare Boots
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(63564, {	-- Floating Belt
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(63565, {	-- Bracers of Desperate Need
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131431, {	-- Maloof's Spare Treads
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(25627, {	-- Two-Tusk Takedown [A]
					["qg"] = 40885,	-- Wizzle Brassbolts
					["sourceQuest"] = 25609,	-- Sunken Treasure [A]
					["coord"] = { 91.6, 78.6, THOUSAND_NEEDLES },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Rusted Cage Key
							["provider"] = { "i", 55160 },	-- Rusted Cage Key
							["cr"] = 40958,	-- Tony Two-Tusk
						}),
						i(63624, {	-- Buoyant Shoulderpads
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(63625, {	-- Wizzle's Wristbands
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(63626, {	-- Den Whomper Boots
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(63627, {	-- Drinker's Bracers
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(25628, {	-- Two-Tusk Takedown [H]
					["qg"] = 40888,	-- Synge
					["sourceQuest"] = 25610,	-- Sunken Treasure [H]
					["coord"] = { 91.7, 79.3, THOUSAND_NEEDLES },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Rusted Cage Key
							["provider"] = { "i", 55160 },	-- Rusted Cage Key
							["cr"] = 40958,	-- Tony Two-Tusk
						}),
						i(63628, {	-- Buoyant Shoulderpads
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(63629, {	-- Synge's Wristbands
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(63630, {	-- Den Whomper Boots
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(63631, {	-- Drinker's Bracers
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(28158, {	-- Unbound
					["qg"] = 47745,	-- Magatha Grimtotem
					["sourceQuest"] = 28142,	-- To the Withering
					["coord"] = { 50.2, 62.6, THOUSAND_NEEDLES },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/1 Bound Fury unbound
							["provider"] = { "n", 47763 },	-- Bound Fury
						}),
						objective(2, {	-- 0/1 Bound Vortex unbound
							["provider"] = { "n", 47766 },	-- Bound Vortex
						}),
					},
				}),
				q(5147, {	-- Wanted - Arnak Grimtotem
					["provider"] = { "o", 176115 },	-- Wanted Poster - Arnak Grimtotem
					["coord"] = { 46.01, 50.86, THOUSAND_NEEDLES },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 25,
					["groups"] = {
						objective(1, {	-- 0/1 Arnak's Hoof
							["provider"] = { "i", 12884 },	-- Arnak's Hoof
							["coord"] = { 38.2, 27, THOUSAND_NEEDLES },
							["cr"] = 10896,	-- Arnak Grimtotem
						}),
						i(15471, {	-- Brawnhide Armor
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(15470, {	-- Plainsguard Leggings
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				warchiefscommand(q(28504, {	-- Warchief's Command: Thousand Needles!
					["timeline"] = { ADDED_4_0_3 },
					["maps"] = { ORGRIMMAR, THUNDER_BLUFF },	-- Only found in Orgrimmar & Thunder Bluff in Cataclysm.
					["isBreadcrumb"] = true,
					-- #if BEFORE 7.3.5
					-- Cataclysm: Minimum is level . (TODO: Confirm this.)
					-- Cataclysm: Maximum is level . (TODO: Test max level)
					["lvl"] = { 39, 43 },
					-- #endif
				})),
				q(28051, {	-- We All Scream for Ice Cream... and then Die!
					["qg"] = 47383,	-- Brivelthwerp
					["sourceQuests"] = {
						28031,	-- Special Delivery for Brivelthwerp [A]
						28042,	-- Special Delivery for Brivelthwerp [H]
					},
					["coord"] = { 69.9, 85.2, THOUSAND_NEEDLES },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/10 Dead Employees hooked
							["provider"] = { "n", 47446 },	-- Dead Employee
						}),
						i(63582, {	-- Brivelthwerp's Signet
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(63583, {	-- Belt of Feigned Joy
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(63584, {	-- Ice Cream Mitts
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(63585, {	-- Breastplate of Contained Sorrow
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(63586, {	-- Cryocannon
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(157017, {	-- Deep-Sea Retrieval Hook
							["timeline"] = { ADDED_7_3_5 },
						}),
						i(157018, {	-- Oversized Mixing Agitator
							["timeline"] = { ADDED_7_3_5 },
						}),
					},
				}),
				q(1111, {	-- Wharfmaster Dizzywig
					["providers"] = {
						{ "n", 4452 },	-- Kravel Koalbeard
						{ "i", 5799 },	-- Kravel's Parts Order
					},
					["coord"] = { 78.8, 77.3, THOUSAND_NEEDLES },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 30,
				}),
				q(28283, {	-- What's that Rattle? [A]
					["qg"] = 45277,	-- Feralas Sentinel (mobileNPC)
					["sourceQuest"] = 27314,	-- Grimtotem Chiefs: Isha Gloomaxe (only pops up if you complete "Grimtotem Chiefs: Isha Gloomaxe" and haven't picked up "The Rattle of Bones")
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
				}),
				q(28284, {	-- What's that Rattle? [H]
					["qg"] = 45278,	-- Freewind Brave
					["sourceQuest"] = 27315,	-- Grimtotem Chiefs: Isha Gloomaxe (only pops up if you complete "Grimtotem Chiefs: Isha Gloomaxe" and haven't picked up "The Rattle of Bones")
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
				}),
				q(25596, {	-- Where's Synge?
					["qg"] = 40556,	-- Zamek
					["sourceQuest"] = 25543,	-- Circle the Wagons... er, Boats [H]
					["coord"] = { 78.1, 73.7, THOUSAND_NEEDLES },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				q(25590, {	-- Where's Wizzle?
					["qg"] = 40554,	-- Rizzle Brassbolts
					["sourceQuest"] = 25542,	-- Circle the Wagons... er, Boats [A]
					["coord"] = { 78.0, 73.3, THOUSAND_NEEDLES },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(4767, {	-- Wind Rider
					["qg"] = 10377,	-- Elu
					["coord"] = { 44.84, 48.97, THOUSAND_NEEDLES },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 25,
					["groups"] = {
						objective(1, {	-- 0/10 Highperch Wyvern Egg
							["providers"] = {
								{ "i", 12356 },	-- Highperch Wyvern Egg
								{ "o", 175384 },	-- Highperch Wyvern Egg
							},
							["coord"] = { 11.7, 35.8, THOUSAND_NEEDLES },
						}),
						-- #if BEFORE 4.0.3
						i(4265),	-- Heavy Armor Kit
						-- #endif
					},
				}),
				q(25661, {	-- With a Little Help...
					["qg"] = 41060,	-- Ajamon Ghostcaller
					["sourceQuest"] = 25660,	-- Haunted
					["coord"] = { 96.8, 72.5, THOUSAND_NEEDLES },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/1 Evil Dolly's Heart
							["provider"] = { "i", 55196 },	-- Evil Dolly's Heart
							["cr"] = 41076,	-- Evil Dolly
						}),
						objective(2, {	-- 0/1 Seadog Fajardo's Lungs
							["provider"] = { "i", 55197 },	-- Seadog Fajardo's Lungs
							["cr"] = 41081,	-- Seadog Fajardo
						}),
						objective(3, {	-- 0/1 Lilly Landlubber's Liver
							["provider"] = { "i", 55199 },	-- Lilly Landlubber's Liver
							["cr"] = 41082,	-- Lilly Landlubber
						}),
						i(63617, {	-- Evil Dolly's Cuffs
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(63618, {	-- Lilly's Bandana
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(63619, {	-- Fajardo's Bracers
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(63620, {	-- Hard Headed Helm
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(1191, {	-- Zamek's Distraction
					["qg"] = 4709,	-- Zamek
					["altQuests"] = { 1190 },	-- Keeping Pace
					["coord"] = { 79.8, 77.0, THOUSAND_NEEDLES },
					["description"] = "This quest is repeatable, but can only be completed while you have the quest \"Keeping Pace\" in your quest log.",
					["timeline"] = { REMOVED_4_0_3 },
					["repeatable"] = true,
					["lvl"] = 29,
				}),
				q(1119, {	-- Zanzil's Mixture and a Fool's Stout
					["providers"] = {
						{ "n", 2498 },	-- Crank Fizzlebub
						{ "i", 5806 },	-- Fool's Stout
					},
					["sourceQuest"] = 1118,	-- Back to Booty Bay
					["coord"] = { 27.1, 77.2, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 35,
				}),
			}),
			n(RARES, {
				n(5933, {	-- Achellios the Banished
					["coords"] = {
						-- #if AFTER CATA
						{ 70.0, 49.2, THOUSAND_NEEDLES },
						{ 72.0, 49.4, THOUSAND_NEEDLES },
						{ 72.0, 50.6, THOUSAND_NEEDLES },
						{ 71.0, 50.6, THOUSAND_NEEDLES },
						-- #else
						{ 21.6, 33.4, THOUSAND_NEEDLES },
						{ 21.4, 37.2, THOUSAND_NEEDLES },
						{ 20.0, 39.4, THOUSAND_NEEDLES },
						{ 17.8, 36.8, THOUSAND_NEEDLES },
						{ 21.2, 41.6, THOUSAND_NEEDLES },
						{ 24.0, 43.6, THOUSAND_NEEDLES },
						{ 25.6, 41.4, THOUSAND_NEEDLES },
						{ 26.0, 39.6, THOUSAND_NEEDLES },
						{ 25.2, 36.8, THOUSAND_NEEDLES },
						-- #endif
					},
				}),
				n(50952, {	-- Barnacle Jim
					["coord"] = { 41.2, 36.4, THOUSAND_NEEDLES },
					["timeline"] = { ADDED_5_2_0 },
				}),
				n(50892, {	-- Cyn
					["coord"] = { 55.2, 40.6, THOUSAND_NEEDLES },
					["timeline"] = { ADDED_5_2_0 },
				}),
				n(14427, {	-- Gibblesnik
					["coords"] = {
						-- #if AFTER CATA
						{ 40.0, 32.4, THOUSAND_NEEDLES },
						-- #else
						{ 51.8, 43.6, THOUSAND_NEEDLES },
						{ 55.6, 49.6, THOUSAND_NEEDLES },
						{ 59.6, 47.6, THOUSAND_NEEDLES },
						{ 60.6, 58.6, THOUSAND_NEEDLES },
						-- #endif
					},
				}),
				n(14426, {	-- Harb Foulmountain
					["coords"] = {
						-- #if AFTER CATA
						{ 38.6, 26.8, THOUSAND_NEEDLES },
						-- #else
						{ 33.0, 27.6, THOUSAND_NEEDLES },
						{ 34.8, 31.6, THOUSAND_NEEDLES },
						{ 36.6, 31.6, THOUSAND_NEEDLES },
						-- #endif
					},
				}),
				-- #if BEFORE 4.0.3
				n(5934, {	-- Heartrazor
					["coords"] = {
						{ 17.8, 40.6, THOUSAND_NEEDLES },
						{ 18.0, 42.6, THOUSAND_NEEDLES },
						{ 15.8, 41.2, THOUSAND_NEEDLES },
					},
				}),
				-- #endif
				n(5935, {	-- Ironeye the Invincible
					["coords"] = {
						-- #if AFTER CATA
						{ 61.1, 67.7, THOUSAND_NEEDLES },
						-- #else
						{ 76.4, 60.2, THOUSAND_NEEDLES },
						{ 82.0, 58.0, THOUSAND_NEEDLES },
						{ 86.6, 70.2, THOUSAND_NEEDLES },
						{ 88.6, 73.4, THOUSAND_NEEDLES },
						{ 88.6, 78.8, THOUSAND_NEEDLES },
						{ 86.0, 80.6, THOUSAND_NEEDLES },
						{ 86.6, 76.8, THOUSAND_NEEDLES },
						{ 84.2, 72.8, THOUSAND_NEEDLES },
						-- #endif
					},
					["groups"] = {
						i(8223, {	-- Blade of the Basilisk
							["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
						}),
					},
				}),
				n(50741, {	-- Kaxx
					["coord"] = { 37.6, 56.0, THOUSAND_NEEDLES },
					["timeline"] = { ADDED_5_2_0 },
				}),
				-- #if AFTER CATA
				n(4132, {	-- Krkk'kx [CATA+] / Silithid Ravager
					-- #if AFTER CATA
					["coord"] = { 70.0, 85.4, THOUSAND_NEEDLES },
					-- #else
					["coords"] = {
						{ 68.8, 83.0, THOUSAND_NEEDLES },
						{ 72.6, 84.6, THOUSAND_NEEDLES },
						{ 69.4, 88.6, THOUSAND_NEEDLES },
						{ 65.6, 85.6, THOUSAND_NEEDLES },
					},
					-- #endif
					["groups"] = {
						i(8224, {	-- Silithid Ripper
							["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },	-- ATT Discord 07.09.2023
						}),
					},
				}),
				-- #endif
				n(50748, {	-- Nyaj
					["coord"] = { 44.6, 40.4, THOUSAND_NEEDLES },
					["timeline"] = { ADDED_5_1_0 },
				}),
				n(50329, {	-- Rrakk
					["coords"] = {
						{ 90.8, 38.2, THOUSAND_NEEDLES },
						{ 90.8, 40.6, THOUSAND_NEEDLES },
					},
					["timeline"] = { ADDED_5_2_0 },
				}),
				-- #if BEFORE CATA
				n(4132, {	-- Silithid Ravager / Krkk'kx [CATA+]
					-- #if AFTER CATA
					["coord"] = { 70.0, 85.4, THOUSAND_NEEDLES },
					-- #else
					["coords"] = {
						{ 68.8, 83.0, THOUSAND_NEEDLES },
						{ 72.6, 84.6, THOUSAND_NEEDLES },
						{ 69.4, 88.6, THOUSAND_NEEDLES },
						{ 65.6, 85.6, THOUSAND_NEEDLES },
					},
					-- #endif
					["groups"] = {
						i(8224, {	-- Silithid Ripper
							["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },	-- ATT Discord 07.09.2023
						}),
					},
				}),
				-- #endif
				n(50785, {	-- Skyshadow
					["coords"] = {
						{ 93.8, 57.4, THOUSAND_NEEDLES },
						{ 94.2, 58.6, THOUSAND_NEEDLES },
					},
					["timeline"] = { ADDED_5_1_0 },
				}),
				n(50727, {	-- Strix the Barbed
					["coords"] = {
						{ 94.0, 82.2, THOUSAND_NEEDLES },
						{ 94.6, 81.6, THOUSAND_NEEDLES },
					},
					["timeline"] = { ADDED_5_2_0 },
				}),
				n(51008, {	-- The Barbed Horror
					["coords"] = {
						{ 70.8, 94.4, THOUSAND_NEEDLES },
						{ 71.6, 95.0, THOUSAND_NEEDLES },
					},
					["timeline"] = { ADDED_5_1_0 },
				}),
				n(51001, {	-- Venomclaw
					["coord"] = { 81.8, 96.0, THOUSAND_NEEDLES },
					["timeline"] = { ADDED_5_1_0 },
				}),
				n(5937, {	-- Vile Sting
					["coords"] = {
						-- #if AFTER CATA
						{ 6.0, 42.0, THOUSAND_NEEDLES },
						-- #else
						{ 69.8, 64.6, THOUSAND_NEEDLES },
						{ 71.6, 64.4, THOUSAND_NEEDLES },
						{ 73.0, 67.8, THOUSAND_NEEDLES },
						{ 72.8, 72.0, THOUSAND_NEEDLES },
						{ 71.8, 72.4, THOUSAND_NEEDLES },
						{ 74.2, 76.8, THOUSAND_NEEDLES },
						-- #endif
					},
				}),
			}),
			n(VENDORS, {
				n(4877, {	-- Jandia <Trade Supplies>
					["coord"] = { 46.0, 51.6, THOUSAND_NEEDLES },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(20970, {	-- Design: Pendant of the Agate Shield (RECIPE!)
							["timeline"] = { ADDED_2_0_1, REMOVED_4_1_0 },	-- Now taught by trainer, recipe removed from the game.
							["isLimited"] = true,
						}),
						i(5973, {	-- Pattern: Barbaric Leggings (RECIPE!)
							["isLimited"] = true,
						}),
					},
				}),
				n(6730, {	-- Jinky Twizzlefixxit <Engineering Supplies>
					-- NOTE: There is still a Jinky Twizzlefixxit, but she doesn't sell things anymore. New ID and everything.
					["coord"] = { 77.7, 77.8, THOUSAND_NEEDLES },
					["timeline"] = { REMOVED_4_0_3 },
					["groups"] = {
						-- #if BEFORE 4.0.3
						i(7560, {	-- Schematic: Gnomish Universal Remote (RECIPE!)
							["timeline"] = { REMOVED_4_0_3 },
							["isLimited"] = true,
						}),
						-- #endif
						i(13309, {	-- Schematic: Lovingly Crafted Boomstick (RECIPE!)
							["timeline"] = { REMOVED_4_0_3 },
							["isLimited"] = true,
						}),
					},
				}),
				n(6548, {	-- Magus Tirth
					["coord"] = { 78.30, 75.70, THOUSAND_NEEDLES },
					["timeline"] = { REMOVED_4_0_3 },
					-- #if BEFORE 4.0.3
					["groups"] = {
						i(11023),	-- Ancona Chicken (PET!)
					},
					-- #endif
				}),
				n(4878, {   -- Montarr <Lorekeeper>
					["coord"] = { 45.2, 50.6, THOUSAND_NEEDLES },
					["timeline"] = { REMOVED_4_0_3 },
					["groups"] = {
						i(6068, {  -- Recipe: Shadow Oil (RECIPE!)
							["timeline"] = { REMOVED_4_0_3 },	-- Now taught by trainer, recipe removed from the game.
						}),
					},
				}),
				n(41135, {	-- "Plucky" Johnson
					["coord"] = { 85.6, 91.6, THOUSAND_NEEDLES },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						i(11023),	-- Ancona Chicken (PET!)
					},
				}),
				n(41452, {	-- Starn <Gunsmith & Bowyer>
					["coord"] = { 46.2, 57.6, THOUSAND_NEEDLES },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						i(11305, {	-- Dense Shortbow
							["isLimited"] = true,
						}),
						i(11304, {	-- Fine Longbow
							["isLimited"] = true,
						}),
					},
				}),
				n(9551, {	-- Starn <Gunsmith & Bowyer>
					["coord"] = { 45.0, 50.6, THOUSAND_NEEDLES },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					-- #if BEFORE 4.0.3
					["groups"] = {
						i(11305, {	-- Dense Shortbow
							["isLimited"] = true,
						}),
						i(11304, {	-- Fine Longbow
							["isLimited"] = true,
						}),
					},
					-- #endif
				}),
			}),
			n(ZONE_DROPS, {
				i(1493, {	-- Heavy Marauder Scimitar
					["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
					["crs"] = {
						-- #if AFTER 10.1.7
						40062,	-- Galak Mauler
						-- #else
						4099,	-- Galak Marauder
						-- #endif
					},
					["coords"] = {
						-- #if AFTER 10.1.7
						{ 88.6, 46.8, THOUSAND_NEEDLES },
						{ 90.2, 54.4, THOUSAND_NEEDLES },
						{ 87.6, 52.0, THOUSAND_NEEDLES },
						{ 86.4, 49.0, THOUSAND_NEEDLES },
						-- #else
						{ 44.6, 33.6, THOUSAND_NEEDLES },
						{ 20.6, 22.2, THOUSAND_NEEDLES },
						-- #endif
					},
				}),
				-- #if AFTER TBC
				i(5773, {	-- Pattern: Robes of Arcana (RECIPE!)
					["timeline"] = { REMOVED_4_0_3 },
					["cr"] = 10760,	-- Grimtotem Geomancer
				}),
				-- #endif
			}),
		},
	}),
}));
