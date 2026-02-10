-----------------------------------------------
--      P L A Y E R   V S   P L A Y E R      --
-----------------------------------------------
root(ROOTS.PVP, pvp(n(BATTLEGROUNDS, {
	m(1478, {	-- Ashran
		["description"] = "Ashran is a 40v40 epic battleground found in eastern Draenor.",
		["icon"] = 1031537,
		["timeline"] = { ADDED_6_0_2 },
		["maps"] = { 588, 589 },	-- Ashran & Ashran Mine
		["lvl"] = { 25 },
		["groups"] = {
			n(ACHIEVEMENTS, {
				ach(9102),	-- Ashran Victory
				ach(9104, {	-- Bounty Hunter (A)
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						crit(25209, {	-- Blood Elf Ear
							["provider"] = { "i", 112128 },	-- Blood Elf Ear
						}),
						crit(25204, {	-- Forsaken Brains
							["provider"] = { "i", 112015 },	-- Forsaken Brains
						}),
						crit(25208, {	-- Goblin Nose
							["provider"] = { "i", 112125 },	-- Goblin Nose
						}),
						crit(25206, {	-- Orc Tooth
							["provider"] = { "i", 112122 },	-- Orc Tooth
						}),
						crit(25202, {	-- Pandaren Hide
							["provider"] = { "i", 112113 },	-- Pandaren Hide
						}),
						crit(25207, {	-- Tauren Hoof
							["provider"] = { "i", 112123 },	-- Tauren Hoof
						}),
						crit(25205, {	-- Troll Feet
							["provider"] = { "i", 112120 },	-- Troll Feet
						}),
					},
				}),
				ach(9103, {	-- Bounty Hunter (H)
					["races"] = HORDE_ONLY,
					["groups"] = {
						crit(25203, {	-- Draenei Tail
							["provider"] = { "i", 112121 },	-- Draenei Tail
						}),
						crit(25199, {	-- Dwarf Spine
							["provider"] = { "i", 112126 },	-- Dwarf Spine
						}),
						crit(25197, {	-- Human Bone Chip
							["provider"] = { "i", 112131 },	-- Human Bone Chip
						}),
						crit(25202, {	-- Pandaren Hide
							["provider"] = { "i", 112113 },	-- Pandaren Hide
						}),
						crit(25200, {	-- Severed Night Elf Head
							["provider"] = { "i", 112124 },	-- Severed Night Elf Head
						}),
						crit(25198, {	-- Tuft of Gnome Hair
							["provider"] = { "i", 112127 },	-- Tuft of Gnome Hair
						}),
						crit(25201, {	-- Worgen Snout
							["provider"] = { "i", 112119 },	-- Worgen Snout
						}),
					},
				}),
				ach(9222),	-- Divide and Conquer
				ach(9228, {	-- Down Goes Van Rook (A)
					["races"] = ALLIANCE_ONLY,
				}),
				ach(9218),	-- Grand Theft, 1st Degree
				ach(9219),	-- Grand Theft, 2nd Degree
				ach(9220),	-- Grand Theft, 3rd Degree
				ach(9216, {	-- High-value Targets
					crit(25843, {	-- Elder Darkweaver Kath
						["cr"] = 85771,	-- Elder Darkweaver Kath
					}),
					crit(25844, {	-- Goregore
						["cr"] = 84893,	-- Goregore
					}),
					crit(25845, {	-- Ancient Inferno
						["cr"] = 84875,	-- Ancient Inferno
					}),
					crit(25846, {	-- Panthora
						["cr"] = 83691,	-- Panthora
					}),
					crit(25847, {	-- Mandragoraster
						["cr"] = 83683,	-- Mandragoraster
					}),
					crit(25848, {	-- Titarus
						["cr"] = 83713,	-- Titarus
					}),
					crit(25849, {	-- Brickhouse
						["cr"] = 83819,	-- Brickhouse
					}),
					crit(25850, {	-- Korthall Soulgorger
						["cr"] = 84110,	-- Korthall Soulgorger
					}),
					crit(25851, {	-- Oraggro
						["cr"] = 84904,	-- Oraggro
					}),
				}),
				ach(9106),	-- Just for Me
				ach(9408, {	-- Operation Counterattack (A)
					["races"] = ALLIANCE_ONLY,
				}),
				ach(9217, {	-- Operation Counterattack (H)
					["races"] = HORDE_ONLY,
				}),
				ach(9256, {	-- Rescue Operation (A)
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						crit(25410, {	-- Commander Jobby Shortsight
							["cr"] = 85670,	-- Commander Jobby Shortsight
						}),
						crit(25416, {	-- Field Marshal Kerwin
							["cr"] = 85668,	-- Field Marshal Kerwin
						}),
						crit(25417, {	-- Marshal Andrea DeSousa
							["cr"] = 85669,	-- Marshal Andrea DeSousa
						}),
					},
				}),
				ach(9257, {	-- Rescue Operation (H)
					["races"] = HORDE_ONLY,
					["groups"] = {
						crit(25448, {	-- General Lizzie Heartbane
							["cr"] = 85673,	-- General Lizzie Heartbane
						}),
						crit(25449, {	-- Marshal Lyrdrea Daybreaker
							["cr"] = 85671,	-- Marshal Lyrdrea Daybreaker
						}),
						crit(25447, {	-- Warlord Jugan
							["cr"] = 85672,	-- Warlord Jugan
						}),
					},
				}),
				ach(9225, {	-- Take Them Out (A)
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						crit(26303, {	-- Captain Hoodrych
							["cr"] = 79900,	-- Captain Hoodrych
						}),
						crit(26304, {	-- Elementalist Novo
							["cr"] = 80491,	-- Elementalist Novo
						}),
						crit(25350, {	-- Elliott Van Rook
							["cr"] = 80493,	-- Elliott Van Rook
						}),
						crit(26305, {	-- Jared V. Hellstrike
							["cr"] = 85131,	-- Jared V. Hellstrike
						}),
						crit(26306, {	-- Kaz Endsky
							["cr"] = 87690,	-- Kaz Endsky
						}),
						crit(26307, {	-- Lord Mes
							["cr"] = 80497,	-- Lord Mes
						}),
						crit(26308, {	-- Mindbender Talbadar
							["cr"] = 80490,	-- Mindbender Talbadar
						}),
						crit(26309, {	-- Mor'riz, The Ultimate Troll
							["cr"] = 85133,	-- Mor'riz
						}),
						crit(26310, {	-- Necrolord Azael
							["cr"] = 80486,	-- Necrolord Azael
						}),
						crit(26311, {	-- Soulbrewer Nadagast
							["cr"] = 80489,	-- Soulbrewer Nadagast
						}),
						crit(26312, {	-- Razor Guerra
							["cr"] = 85138,	-- Razor Guerra
						}),
						crit(26313, {	-- Rifthunter Yoske
							["cr"] = 80496,	-- Rifthunter Yoske
						}),
						crit(26314, {	-- Vanguard Samuelle
							["cr"] = 80492,	-- Vanguard Samuelle
						}),
					},
				}),
				ach(9224, {	-- Take Them Out (H)
					["races"] = HORDE_ONLY,
					["groups"] = {
						crit(26289, {	-- Alune Windmane
							["cr"] = 80488,	-- Alune Windmane
						}),
						crit(26290, {	-- Anne Otther
							["cr"] = 85140,	-- Anne Otther
						}),
						crit(26291, {	-- Avenger Turley
							["cr"] = 80499,	-- Avenger Turley
						}),
						crit(26293, {	-- Chani Malflame
							["cr"] = 85129,	-- Chani Malflame
						}),
						crit(26294, {	-- Hildie Hackerguard
							["cr"] = 80495,	-- Hildie Hackerguard
						}),
						crit(26295, {	-- Jackson Bajheera
							["cr"] = 80484,	-- Jackson Bajheera
						}),
						-- #if BEFORE 8.0.1
						-- This doesn't appear be in the game anymore?
						-- BFA Hotfix (2020-06-22): Removed John Swifty. Ahhhhh.
						crit(26296, {	-- John Swifty
							["cr"] = 79902,	-- John Swifty
						}),
						-- #endif
						crit(26297, {	-- Malda Brewbelly
							["cr"] = 85122,	-- Malda Brewbelly
						}),
						crit(26298, {	-- Mathias Zunn
							["cr"] = 85137,	-- Mathias Zunn
						}),
						crit(26299, {	-- Shani Freezewind
							["cr"] = 80485,	-- Shani Freezewind
						}),
						crit(26300, {	-- Taylor Dewland
							["cr"] = 80500,	-- Taylor Dewland
						}),
						crit(26301, {	-- Tosan Galaxyfist
							["cr"] = 80494,	-- Tosan Galaxyfist
						}),
					},
				}),
				ach(9714, {	-- Thy Kingdom Come (A)
					["races"] = ALLIANCE_ONLY,
				}),
				ach(9715, {	-- Thy Kingdom Come (H)
					["races"] = HORDE_ONLY,
				}),
				ach(9105, {	-- Tour of Duty
					crit(25215),	-- Brute's Rise
					crit(25789),	-- Molten Quarry
					crit(25790),	-- Ashmaul Burial Grounds
					crit(25791),	-- Amphitheater of Annihilation
				}),
			}),
			n(FACTIONS, {
				h(header(HEADERS.Faction, FACTION_VOLJINS_SPEAR, {	-- Vol'jin's Spear
					faction(FACTION_VOLJINS_SPEAR),
					ach(9473, {	-- Vol'jin's Spear
						un(REMOVED_FROM_GAME, title(285)),	-- <Name>, Spear of Vol'jin
					}),
				})),
				a(header(HEADERS.Faction, FACTION_WRYNNS_VANGUARD, {	-- Wyrnn's Vanguard
					faction(FACTION_WRYNNS_VANGUARD),
					ach(9474, {	-- Wrynn's Vanguard
						un(REMOVED_FROM_GAME, title(286)),	-- <Name>, Sword of Wrynn
					}),
				})),
			}),
			n(QUESTS, {
				q(35264, {	-- A Bunch of Artifact Fragments (A)
					["provider"] = { "n", 81870 },	-- Anenga
					["coord"] = { 45.8, 76.2, 1478 },
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
				}),
				q(35872, {	-- A Bunch of Artifact Fragments (A)
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
				}),
				q(35690, {	-- A Bunch of Artifact Fragments (A)
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
				}),
				q(35868, {	-- A Bunch of Artifact Fragments (A)
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
				}),
				q(36031, {	-- A Bunch of Artifact Fragments (H)
					["provider"] = { "n", 82204 },	-- Atomik
					["coord"] = { 49.6, 24.6, 1478 },
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
				}),
				q(36064, {	-- A Bunch of Artifact Fragments (H)
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
				}),
				q(36067, {	-- A Bunch of Artifact Fragments (H)
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
				}),
				q(36026, {	-- A Bunch of Artifact Fragments (H)
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
				}),
				q(35638, {	-- A Few Artifact Fragments (A)
					["provider"] = { "n", 81870 },	-- Anenga
					["coord"] = { 45.8, 76.2, 1478 },
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
				}),
				q(35867, {	-- A Few Artifact Fragments (A)
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
				}),
				q(35871, {	-- A Few Artifact Fragments (A)
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
				}),
				q(35689, {	-- A Few Artifact Fragments (A)
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
				}),
				q(36030, {	-- A Few Artifact Fragments (H)
					["provider"] = { "n", 82204 },	-- Atomik
					["coord"] = { 49.6, 24.6, 1478 },
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
				}),
				q(36063, {	-- A Few Artifact Fragments (H)
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
				}),
				q(36024, {	-- A Few Artifact Fragments (H)
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
				}),
				q(36066, {	-- A Few Artifact Fragments (H)
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
				}),
				q(35639, {	-- A TON of Artifact Fragments (A)
					["provider"] = { "n", 81870 },	-- Anenga
					["coord"] = { 45.8, 76.2, 1478 },
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
				}),
				q(35873, {	-- A TON of Artifact Fragments (A)
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
				}),
				q(35691, {	-- A TON of Artifact Fragments (A)
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
				}),
				q(35869, {	-- A TON of Artifact Fragments (A)
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
				}),
				q(36032, {	-- A TON of Artifact Fragments (H)
					["provider"] = { "n", 82204 },	-- Atomik
					["coord"] = { 49.6, 24.6, 1478 },
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
				}),
				q(36025, {	-- A TON of Artifact Fragments (H)
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
				}),
				q(36068, {	-- A TON of Artifact Fragments (H)
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
				}),
				q(36065, {	-- A TON of Artifact Fragments (H)
					["provider"] = { "n", 83995 },	-- Fura
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
				}),
				q(38925, {	-- Ashran Dominance (A)
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					["u"] = REMOVED_FROM_GAME,
					["groups"] = {
						i(135546),	-- Fel-Touched Crate of Battlefield Goods
					},
				}),
				q(38923, {	-- Ashran Dominance (H)
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["u"] = REMOVED_FROM_GAME,
					["groups"] = {
						i(135546),	-- Fel-Touched Crate of Battlefield Goods
					},
				}),
				q(37483, {	-- Captian's Whistle (A)
					["provider"] = { "n", 84173 },	-- Commander Anne Dunworthy
					["coord"] = { 44.6, 74.0, 1478 },
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					["u"] = REMOVED_FROM_GAME,
				}),
				q(37484, {	-- Captian's Whistle (H)
					["provider"] = { "n", 84473 },	-- General Ushet Wolfbarger
					["coord"] = { 45.0, 27.8, 1478 },
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["u"] = REMOVED_FROM_GAME,
				}),
				q(39217, {	-- Don't Hate, Excavate! (A)
					["provider"] = { "n", 84223 },	-- Harrison Jones
					["coord"] = { 42.8, 76.8, 1478 },
					["races"] = ALLIANCE_ONLY,
					["u"] = REMOVED_FROM_GAME,
				}),
				q(39233, {	-- Don't Hate, Excavate! (H)
					["provider"] = { "n", 88448 },	-- Belloc Brightblade
					["coord"] = { 45.8, 29.0, 1478 },
					["races"] = HORDE_ONLY,
					["u"] = REMOVED_FROM_GAME,
				}),
				q(36123, {	-- Into The Wilderness (A)
					["provider"] = { "n", 82909 },	-- Chris Clarkie
					["coord"] = { 43.4, 76.8, 1478 },
					["races"] = ALLIANCE_ONLY,
					["u"] = REMOVED_FROM_GAME,
				}),
				q(36228, {	-- Into The Wilderness (H)
					["provider"] = { "n", 83869 },	-- Angry Zurge
					["coord"] = { 45.8, 28.8, 1478 },
					["races"] = HORDE_ONLY,
					["u"] = REMOVED_FROM_GAME,
				}),
				q(36791, {	-- Phantom Potion (A)
					["provider"] = { "n", 85749 },	-- Gimlet Ginfizz
					["coord"] = { 44.2, 74.2, 1478 },
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					["u"] = REMOVED_FROM_GAME,
					["groups"] = { i(114124) },	-- Phantom Potion
				}),
				q(36935, {	-- Phantom Potion (H)
					["provider"] = { "n", 86366 },	-- Tyra Silverblood
					["coord"] = { 45.6, 28.6, 1478 },
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["u"] = REMOVED_FROM_GAME,
					["groups"] = { i(114124) },	-- Phantom Potion
				}),
				q(39096, {	-- Slay Them All! (A)
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					["u"] = REMOVED_FROM_GAME,
					["groups"] = {
						i(135546),	-- Fel-Touched Crate of Battlefield Goods
					},
				}),
				q(39090, {	-- Slay Them All! (H)
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["u"] = REMOVED_FROM_GAME,
					["groups"] = {
						i(135546),	-- Fel-Touched Crate of Battlefield Goods
					},
				}),
				q(36133, {	-- Uncovering the Artifact Fragments (A)
					["provider"] = { "n", 88682 },	-- Misirin Stouttoe
					["coord"] = { 43.2, 77.0, 1478 },
					["races"] = ALLIANCE_ONLY,
					["u"] = REMOVED_FROM_GAME,
				}),
				q(36198, {	-- Uncovering the Artifact Fragments (H)
					["provider"] = { "n", 94864 },	-- Cymre Brightblade
					["coord"] = { 45.8, 29.0, 1478 },
					["races"] = HORDE_ONLY,
					["u"] = REMOVED_FROM_GAME,
				}),
				q(56336, {	-- Uncovering the Artifact Fragments (A)
					["provider"] = { "n", 155283 },	-- Ecilam
					["coord"] = { 44.6, 74.4, 1478 },
					["races"] = ALLIANCE_ONLY,
					["isWeekly"] = true,
				}),
				q(56337, {	-- Uncovering the Artifact Fragments (H)
					["provider"] = { "n", 155286 },	-- Fura
					["coord"] = { 45.4, 27.1, 1478 },
					["races"] = HORDE_ONLY,
					["isWeekly"] = true,
				}),
				q(36130, {	-- Reporting For Duty (A)
					["provider"] = { "n", 84173 },	-- Commander Anne Dunworthy
					["coord"] = { 44.6, 74.0, 1478 },
					["races"] = ALLIANCE_ONLY,
					["u"] = REMOVED_FROM_GAME,
				}),
				q(36197, {	-- Reporting For Duty (H)
					["provider"] = { "n", 84473 },	-- General Ushet Wolfbarger
					["coord"] = { 45.0, 27.8, 1478 },
					["races"] = HORDE_ONLY,
					["u"] = REMOVED_FROM_GAME,
				}),
				q(36127, {	-- Survey Ashran (A)
					["provider"] = { "n", 82901 },	-- Farseer Kylanda
					["coord"] = { 44.8, 75.0, 1478 },
					["races"] = ALLIANCE_ONLY,
					["u"] = REMOVED_FROM_GAME,
				}),
				q(36226, {	-- Survey Ashran (H)
					["provider"] = { "n", 84660 },	-- Mare Wildrunner
					["coord"] = { 47.0, 26.8, 1478 },
					["races"] = HORDE_ONLY,
					["u"] = REMOVED_FROM_GAME,
				}),
				q(36125, {	-- The Road of Glory (A)
					["provider"] = { "n", 82909 },	-- Chris Clarkie
					["coord"] = { 43.4, 76.8, 1478 },
					["races"] = ALLIANCE_ONLY,
					["u"] = REMOVED_FROM_GAME,
				}),
				q(36227, {	-- The Road of Glory (H)
					["provider"] = { "n", 83869 },	-- Angry Zurge
					["coord"] = { 45.8, 28.8, 1478 },
					["races"] = HORDE_ONLY,
					["u"] = REMOVED_FROM_GAME,
				}),
				q(36741, {	-- Vintage Free Action Potion (A)
					["provider"] = { "n", 85749 },	-- Gimlet Ginfizz
					["coord"] = { 44.2, 74.2, 1478 },
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					["u"] = REMOVED_FROM_GAME,
					["groups"] = { i(116925) },	-- Vintage Free Action Potion
				}),
				q(36742, {	-- Vintage Free Action Potion (H)
					["provider"] = { "n", 86366 },	-- Tyra Silverblood
					["coord"] = { 45.6, 28.6, 1478 },
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["u"] = REMOVED_FROM_GAME,
					["groups"] = { i(116925) },	-- Vintage Free Action Potion
				}),
				q(36119, {	-- Welcome to Ashran (A)
					["races"] = ALLIANCE_ONLY,
					["u"] = REMOVED_FROM_GAME,
				}),
				q(36196, {	-- Welcome to Ashran (H)
					["races"] = HORDE_ONLY,
					["u"] = REMOVED_FROM_GAME,
				}),
				q(56338, {	-- Volrath Must Die
					["provider"] = { "n", 84173 },	-- Commander Anne Dunworthy
					["coord"] = { 44.6, 74.0, 1478 },
					["races"] = ALLIANCE_ONLY,
					["isWeekly"] = true,
				}),
				q(56339, {	-- Tremblade Must Die
					["provider"] = { "n", 84473 },	-- General Ushet Wolfbarger
					["coord"] = { 45.0, 28.7, 1478 },
					["races"] = HORDE_ONLY,
					["isWeekly"] = true,
				}),
				q(35937, {	-- Blood Elf Ear
					["qgs"] = {
						-- #if AFTER DF
						199583,	-- Hudson Davor
						-- #else
						82909,	-- Chris Clarkie <SI:7 Operative>
						-- #endif
					},
					["cost"] = { { "i", 112128, 1 } },	-- Blood Elf Ear
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					["groups"] = {
						i(170073),	-- Dented Ashmaul Strongbox
						i(128216, {	-- Dented Ashmaul Strongbox
							["races"] = ALLIANCE_ONLY,
							["sym"] = { {"sub", "pvp_gear_faction_base", EXPANSION.WOD, SEASON_WARMONGERING, FACTION_HEADER_ALLIANCE, PVP_COMBATANT }, },
							["u"] = REMOVED_FROM_GAME,
						}),
					},
				}),
				q(36041, {	-- Draenei Tail
					["qg"] = 83869,	-- Angry Zurge
					["cost"] = { { "i", 112121, 1 } },	-- Draenei Tail
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["groups"] = {
						i(128215, {	-- Dented Ashmaul Strongbox
							["races"] = HORDE_ONLY,
							["sym"] = { {"sub", "pvp_gear_faction_base", EXPANSION.WOD, SEASON_WARMONGERING, FACTION_HEADER_HORDE, PVP_COMBATANT }, },
							["u"] = REMOVED_FROM_GAME,
						}),
					},
				}),
				q(36034, {	-- Dwarf Spine
					["qg"] = 83869,	-- Angry Zurge
					["cost"] = { { "i", 112126, 1 } },	-- Dwarf Spine
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["groups"] = {
						i(128215, {	-- Dented Ashmaul Strongbox
							["races"] = HORDE_ONLY,
							["sym"] = { {"sub", "pvp_gear_faction_base", EXPANSION.WOD, SEASON_WARMONGERING, FACTION_HEADER_HORDE, PVP_COMBATANT }, },
							["u"] = REMOVED_FROM_GAME,
						}),
					},
				}),
				q(35927, {	-- Forsaken Brains
					["qgs"] = {
						-- #if AFTER DF
						199583,	-- Hudson Davor
						-- #else
						82909,	-- Chris Clarkie <SI:7 Operative>
						-- #endif
					},
					["cost"] = { { "i", 112015, 1 } },	-- Forsaken Brains
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					["groups"] = {
						i(170073),	-- Dented Ashmaul Strongbox
						i(128216, {	-- Dented Ashmaul Strongbox
							["races"] = ALLIANCE_ONLY,
							["sym"] = { {"sub", "pvp_gear_faction_base", EXPANSION.WOD, SEASON_WARMONGERING, FACTION_HEADER_ALLIANCE, PVP_COMBATANT }, },
							["u"] = REMOVED_FROM_GAME,
						}),
					},
				}),
				q(35938, {	-- Goblin Nose
					["qgs"] = {
						-- #if AFTER DF
						199583,	-- Hudson Davor
						-- #else
						82909,	-- Chris Clarkie <SI:7 Operative>
						-- #endif
					},
					["cost"] = { { "i", 112125, 1 } },	-- Goblin Nose
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					["groups"] = {
						i(170073),	-- Dented Ashmaul Strongbox
						i(128216, {	-- Dented Ashmaul Strongbox
							["races"] = ALLIANCE_ONLY,
							["sym"] = { {"sub", "pvp_gear_faction_base", EXPANSION.WOD, SEASON_WARMONGERING, FACTION_HEADER_ALLIANCE, PVP_COMBATANT }, },
							["u"] = REMOVED_FROM_GAME,
						}),
					},
				}),
				q(36042, {	-- Human Bone Chip
					["qg"] = 83869,	-- Angry Zurge
					["cost"] = { { "i", 112131, 1 } },	-- Human Bone Chip
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["groups"] = {
						i(128215, {	-- Dented Ashmaul Strongbox
							["races"] = HORDE_ONLY,
							["sym"] = { {"sub", "pvp_gear_faction_base", EXPANSION.WOD, SEASON_WARMONGERING, FACTION_HEADER_HORDE, PVP_COMBATANT }, },
							["u"] = REMOVED_FROM_GAME,
						}),
					},
				}),
				q(35940, {	-- Orc Tooth
					["qgs"] = {
						-- #if AFTER DF
						199583,	-- Hudson Davor
						-- #else
						82909,	-- Chris Clarkie <SI:7 Operative>
						-- #endif
					},
					["cost"] = { { "i", 112122, 1 } },	-- Orc Tooth
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					["groups"] = {
						i(170073),	-- Dented Ashmaul Strongbox
						i(128216, {	-- Dented Ashmaul Strongbox
							["races"] = ALLIANCE_ONLY,
							["sym"] = { {"sub", "pvp_gear_faction_base", EXPANSION.WOD, SEASON_WARMONGERING, FACTION_HEADER_ALLIANCE, PVP_COMBATANT }, },
							["u"] = REMOVED_FROM_GAME,
						}),
					},
				}),
				q(35942, {	-- Pandaren Hide [A]
					["qgs"] = {
						-- #if AFTER DF
						199583,	-- Hudson Davor
						-- #else
						82909,	-- Chris Clarkie <SI:7 Operative>
						-- #endif
					},
					["cost"] = { { "i", 112113, 1 } },	-- Pandaren Hide
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					["groups"] = {
						i(170073),	-- Dented Ashmaul Strongbox
						i(128216, {	-- Dented Ashmaul Strongbox
							["races"] = ALLIANCE_ONLY,
							["sym"] = { {"sub", "pvp_gear_faction_base", EXPANSION.WOD, SEASON_WARMONGERING, FACTION_HEADER_ALLIANCE, PVP_COMBATANT }, },
							["u"] = REMOVED_FROM_GAME,
						}),
					},
				}),
				q(36038, {	-- Pandaren Hide [H]
					["qg"] = 83869,	-- Angry Zurge
					["cost"] = { { "i", 112113, 1 } },	-- Pandaren Hide
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["groups"] = {
						i(170073),	-- Dented Ashmaul Strongbox
						i(128215, {	-- Dented Ashmaul Strongbox
							["races"] = HORDE_ONLY,
							["sym"] = { {"sub", "pvp_gear_faction_base", EXPANSION.WOD, SEASON_WARMONGERING, FACTION_HEADER_HORDE, PVP_COMBATANT }, },
							["u"] = REMOVED_FROM_GAME,
						}),
					},
				}),
				q(36033, {	-- Severed Night Elf Head
					["qg"] = 83869,	-- Angry Zurge
					["cost"] = { { "i", 112124, 1 } },	-- Severed Night Elf Head
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["groups"] = {
						i(128215, {	-- Dented Ashmaul Strongbox
							["races"] = HORDE_ONLY,
							["sym"] = { {"sub", "pvp_gear_faction_base", EXPANSION.WOD, SEASON_WARMONGERING, FACTION_HEADER_HORDE, PVP_COMBATANT }, },
							["u"] = REMOVED_FROM_GAME,
						}),
					},
				}),
				q(35939, {	-- Tauren Hoof
					["qgs"] = {
						-- #if AFTER DF
						199583,	-- Hudson Davor
						-- #else
						82909,	-- Chris Clarkie <SI:7 Operative>
						-- #endif
					},
					["cost"] = { { "i", 112123, 1 } },	-- Tauren Hoof
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					["groups"] = {
						i(170073),	-- Dented Ashmaul Strongbox
						i(128216, {	-- Dented Ashmaul Strongbox
							["races"] = ALLIANCE_ONLY,
							["sym"] = { {"sub", "pvp_gear_faction_base", EXPANSION.WOD, SEASON_WARMONGERING, FACTION_HEADER_ALLIANCE, PVP_COMBATANT }, },
							["u"] = REMOVED_FROM_GAME,
						}),
					},
				}),
				q(35941, {	-- Troll Feet
					["qgs"] = {
						-- #if AFTER DF
						199583,	-- Hudson Davor
						-- #else
						82909,	-- Chris Clarkie <SI:7 Operative>
						-- #endif
					},
					["cost"] = { { "i", 112120, 1 } },	-- Troll Feet
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					["groups"] = {
						i(170073),	-- Dented Ashmaul Strongbox
						i(128216, {	-- Dented Ashmaul Strongbox
							["races"] = ALLIANCE_ONLY,
							["sym"] = { {"sub", "pvp_gear_faction_base", EXPANSION.WOD, SEASON_WARMONGERING, FACTION_HEADER_ALLIANCE, PVP_COMBATANT }, },
							["u"] = REMOVED_FROM_GAME,
						}),
					},
				}),
				q(36040, {	-- Tuft of Gnome Hair
					["qg"] = 83869,	-- Angry Zurge
					["cost"] = { { "i", 112127, 1 } },	-- Tuft of Gnome Hair
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["groups"] = {
						i(128215, {	-- Dented Ashmaul Strongbox
							["races"] = HORDE_ONLY,
							["sym"] = { {"sub", "pvp_gear_faction_base", EXPANSION.WOD, SEASON_WARMONGERING, FACTION_HEADER_HORDE, PVP_COMBATANT }, },
							["u"] = REMOVED_FROM_GAME,
						}),
					},
				}),
				q(36884, {	-- Worgen Snout
					["qg"] = 83869,	-- Angry Zurge
					["cost"] = { { "i", 112119, 1 } },	-- Worgen Snout
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["groups"] = {
						i(128215, {	-- Dented Ashmaul Strongbox
							["races"] = HORDE_ONLY,
							["sym"] = { {"sub", "pvp_gear_faction_base", EXPANSION.WOD, SEASON_WARMONGERING, FACTION_HEADER_HORDE, PVP_COMBATANT }, },
							["u"] = REMOVED_FROM_GAME,
						}),
					},
				}),
			}),
			n(BONUS_OBJECTIVES, {
				q(37479, {	-- Bonus Objective: Kill Alliance Leaders
					["races"] = ALLIANCE_ONLY,
					["isRepeatable"] = true,
				}),
				q(37480, {	-- Bonus Objective: Kill Alliance Leaders
					["races"] = ALLIANCE_ONLY,
					["isRepeatable"] = true,
				}),
				q(37481, {	-- Bonus Objective: Kill Horde Leaders
					["races"] = HORDE_ONLY,
					["isRepeatable"] = true,
				}),
				q(37482, {	-- Bonus Objective: Kill Horde Leaders
					["races"] = HORDE_ONLY,
					["isRepeatable"] = true,
				}),
			}),
			filter(MISC, {
				i(115345),	-- Alliance Supply Chest Key
				i(115346),	-- Horde Supply Chest Key
				i(114982),	-- Song Flower
				i(111842),	-- Star Root Tuber
			}),
			n(VENDORS, {
				n(80882, {	-- Tomas Riogain <Stormshield Quartermaster>
					["coord"] = { 44.2, 74.0, 1478 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						moh(100, i(116776, {	-- Pale Thorngrazer (MOUNT!)
							["cost"] = {{ "g", 45000000 }},		-- 4500g
						})),
						moh(10, i(115501)),	-- Kowalski's Music Box (TOY!)
						moh(10, i(116396)),	-- LeBlanc's Recorder (A) (TOY!)
						i(114126),	-- Disposable Pocket Flying Machine
						moh(1, i(114125)),	-- Preserved Discombobulator Ray
						moh(1, i(115511)),	-- Bizmo's Big Bang Boom Bomb
						moh(10, i(115513)),	-- Wrynn's Vanguard Battle Standard
						i(115517),	-- Wrynn's Vanguard Tabard
					},
				}),
				n(85115, {	-- Dazzerian <Warspear Quartermaster>
					["coord"] = { 48.4, 23.8, 1478 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						moh(100, i(116775, {	-- Breezestrider Stallion (MOUNT!)
							["cost"] = {{ "g", 45000000 }},		-- 4500g
						})),
						moh(10, i(115501)),	-- Kowalski's Music Box (TOY!)
						moh(10, i(115505)),	-- LeBlanc's Recorder (H) (TOY!)
						i(115500),	-- Disposable Pocket Flying Machine
						moh(1, i(114125)),	-- Preserved Discombobulator Ray
						moh(1, i(115512)),	-- Gazlowe's Gargantuan Grenade
						moh(10, i(115514)),	-- Vol'jin's Spear Battle Standard
						i(115518),	-- Vol'jin's Spear Tabard
					},
				}),
				n(82876, {	-- Grand Marshal Tremblade Elite S1-S2-S3
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						elitepvp(i(120286, {	-- Enchanter's Illusion - Glorious Tyranny (ILLUSION!)
							["timeline"] = { ADDED_7_0_3 },
						})),
						elitepvp(i(120287, {	-- Enchanter's Illusion - Primal Victory (ILLUSION!)
							["timeline"] = { ADDED_7_0_3 },
						})),
						un(REMOVED_FROM_GAME, i(115979)),	-- Primal Gladiator's Greatcloak
						un(REMOVED_FROM_GAME, i(115972)),	-- Primal Gladiator's Tabard
						un(REMOVED_FROM_GAME, i(127377)),	-- Warmongering Gladiator's Greatcloak
						un(REMOVED_FROM_GAME, i(127369)),	-- Warmongering Gladiator's Tabard
						un(REMOVED_FROM_GAME, i(127375)),	-- Wild Gladiator's Greatcloak
						un(REMOVED_FROM_GAME, i(127366)),	-- Wild Gladiator's Tabard
						-- Fist Weapons
						un(REMOVED_FROM_GAME, i(115948)),	-- Primal Gladiator's Ripper
						un(REMOVED_FROM_GAME, i(115949)),	-- Primal  Gladiator's Render
						un(REMOVED_FROM_GAME, i(125762)),	-- Wild Gladiator's Ripper
						un(REMOVED_FROM_GAME, i(125763)),	-- Wild Gladiator's Render
						un(REMOVED_FROM_GAME, i(126876)),	-- Warmongering Gladiator's Ripper
						un(REMOVED_FROM_GAME, i(126877)),	-- Warmongering Gladiator's Render
						-- 2 Hand Mace
						un(REMOVED_FROM_GAME, i(115818)),	-- Primal  Gladiator's Bonegrinder
						un(REMOVED_FROM_GAME, i(125632)),	-- Wild Gladiator's Bonegrinder
						un(REMOVED_FROM_GAME, i(126746)),	-- Warmongering  Gladiator's Bonegrinder
						-- Crossbow
						un(REMOVED_FROM_GAME, i(115836)),	-- Primal Gladiator's Heavy Crossbow
						un(REMOVED_FROM_GAME, i(125650)),	-- Wild Gladiator's  Heavy Crossbow
						un(REMOVED_FROM_GAME, i(126764)),	-- Warmongering Gladiator's  Heavy Crossbow
						-- 2 Hand Axes
						un(REMOVED_FROM_GAME, i(115817)),	-- Primal Gladiator's Decapitator
						un(REMOVED_FROM_GAME, i(125631)),	-- Wild Gladiator's  Decapi
						un(REMOVED_FROM_GAME, i(126745)),	-- Warmongering Gladiator's  Decapi
						-- 2 Hand Swords
						un(REMOVED_FROM_GAME, i(115819)),	-- Primal Gladiator's  Greatsword
						un(REMOVED_FROM_GAME, i(125633)),	-- Wild Gladiator's  Greatsword
						un(REMOVED_FROM_GAME, i(126747)),	-- Warmongering Gladiator's  Greatsword
						-- 1 Hand Axes
						un(REMOVED_FROM_GAME, i(115820)),	-- Primal Gladiator's Cleaver
						un(REMOVED_FROM_GAME, i(115952)),	-- Primal Gladiator's Hacker
						un(REMOVED_FROM_GAME, i(125634)),	-- Wild Gladiator's Cleaver
						un(REMOVED_FROM_GAME, i(125766)),	-- Wild Gladiator's Hacker
						un(REMOVED_FROM_GAME, i(129936)),	-- Wild Gladiator's Runeaxe
						un(REMOVED_FROM_GAME, i(126748)),	-- Warmongering Gladiator's Cleaver
						un(REMOVED_FROM_GAME, i(126880)),	-- Warmongering Gladiator's Hacker
						un(REMOVED_FROM_GAME, i(133584)),	-- Warmongering Gladiator's Runeaxe
						-- Bows
						un(REMOVED_FROM_GAME, i(115823)),	-- Primal Gladiator's Longbow
						un(REMOVED_FROM_GAME, i(125637)),	-- Wild Gladiator's Longbow
						un(REMOVED_FROM_GAME, i(126751)),	-- Warmongering Gladiator's Longbow
						-- Polearm
						un(REMOVED_FROM_GAME, i(115910)),	-- Primal Gladiator's Pike
						un(REMOVED_FROM_GAME, i(125724)),	-- Wild Gladiator's Pike
						un(REMOVED_FROM_GAME, i(126838)),	-- Warmongering Gladiator's Pike
						-- Guns
						un(REMOVED_FROM_GAME, i(115862)),	-- Primal Gladiator's Rifle
						un(REMOVED_FROM_GAME, i(125676)),	-- Wild Gladiator's Rifle
						un(REMOVED_FROM_GAME, i(126790)),	-- Warmongering Gladiator's Rifle
						-- Daggers
						un(REMOVED_FROM_GAME, i(115832)),	-- Primal Gladiator's Spellblade
						un(REMOVED_FROM_GAME, i(115947)),	-- Primal Gladiator's Shanker
						un(REMOVED_FROM_GAME, i(125646)),	-- Wild Gladiator's Spellblade
						un(REMOVED_FROM_GAME, i(125761)),	-- Wild Gladiator's Shanker
						un(REMOVED_FROM_GAME, i(126760)),	-- Warmongering Gladiator's Spellblade
						un(REMOVED_FROM_GAME, i(126875)),	-- Warmongering Gladiator's SHanker
						-- Offhand
						un(REMOVED_FROM_GAME, i(115830)),	-- Primal Gladiator's Endgame
						un(REMOVED_FROM_GAME, i(115834)),	-- Primal Gladiator's Reprieve
						un(REMOVED_FROM_GAME, i(125644)),	-- Wild Gladiator's Endgame
						un(REMOVED_FROM_GAME, i(125648)),	-- Wild Gladiator's Reprieve
						un(REMOVED_FROM_GAME, i(126758)),	-- Warmongering Gladiator's Endgame
						un(REMOVED_FROM_GAME, i(126762)),	-- Warmonger Gladiator's Reprieve
						-- 1 Hand Sword
						un(REMOVED_FROM_GAME, i(115822)),	-- Primal Gladiator's Quickblade
						un(REMOVED_FROM_GAME, i(115950)),	-- Primal Gladiator's Mageblade
						un(REMOVED_FROM_GAME, i(115954)),	-- Primal Gladiator's Slicer
						un(REMOVED_FROM_GAME, i(125636)),	-- Wild Gladiator's Quickblade
						un(REMOVED_FROM_GAME, i(125764)),	-- Wild Gladiator's Mageblade
						un(REMOVED_FROM_GAME, i(125768)),	-- Wild Gladiator's Slicer
						un(REMOVED_FROM_GAME, i(126750)),	-- Warmongering Gladiator's Quickblade
						un(REMOVED_FROM_GAME, i(126878)),	-- Warmongering Gladiator's Mageblade
						un(REMOVED_FROM_GAME, i(126882)),	-- Warmongering Gladiator's Slicer
						-- Staff
						un(REMOVED_FROM_GAME, i(115833)),	-- Primal Gladiator's Battle Staff
						un(REMOVED_FROM_GAME, i(115865)),	-- Primal Gladiator's Energy Staff
						un(REMOVED_FROM_GAME, i(125647)),	-- Wild Gladiator's Battle Staff
						un(REMOVED_FROM_GAME, i(125668)),	-- Wild Gladiator's Staff
						un(REMOVED_FROM_GAME, i(125679)),	-- Wild Gladiator's Energy Staff
						un(REMOVED_FROM_GAME, i(126761)),	-- Warmongering Gladiator's Battle Staff
						un(REMOVED_FROM_GAME, i(126782)),	-- Warmongering Gladiator's Staff
						un(REMOVED_FROM_GAME, i(126793)),	-- Warmongering Gladiator's Energy Staff
						-- 1 Hand Mace
						un(REMOVED_FROM_GAME, i(115821)),	-- Primal Gladiator's Pummeler
						un(REMOVED_FROM_GAME, i(115863)),	-- Primal Gladiator's Gavel
						un(REMOVED_FROM_GAME, i(115953)),	-- Primal Gladiator's Bonecracker
						un(REMOVED_FROM_GAME, i(125635)),	-- Wild Gladiator's Pummeler
						un(REMOVED_FROM_GAME, i(125677)),	-- Wild Gladiator's Gavel
						un(REMOVED_FROM_GAME, i(125767)),	-- Wild Gladiator's Bonecracker
						un(REMOVED_FROM_GAME, i(126749)),	-- Warmongering Gladiator's Pummeler
						un(REMOVED_FROM_GAME, i(126791)),	-- Warmongering Gladiator's Gavel
						un(REMOVED_FROM_GAME, i(126881)),	-- Warmongering Gladiator's Bonecracker
						-- Shield
						un(REMOVED_FROM_GAME, i(115831)),	-- Primal Gladiator's Barrier
						un(REMOVED_FROM_GAME, i(115864)),	-- Primal Gladiator's Redoubt
						un(REMOVED_FROM_GAME, i(115955)),	-- Primal Gladiator's Shield Wall
						un(REMOVED_FROM_GAME, i(125645)),	-- Wild Gladiator's Barrier
						un(REMOVED_FROM_GAME, i(125678)),	-- Wild Gladiator's Redoubt
						un(REMOVED_FROM_GAME, i(125769)),	-- Wild Gladiator's Shield Wall
						un(REMOVED_FROM_GAME, i(126759)),	-- Warmongering Gladiator's Barrier
						un(REMOVED_FROM_GAME, i(126792)),	-- Warmongering Gladiator's Redoubt
						un(REMOVED_FROM_GAME, i(126883)),	-- Warmongering Gladiator's Shield Wall
						-- Wands
						un(REMOVED_FROM_GAME, i(115835)),	-- Primal Gladiator's Touch of Defeat
						un(REMOVED_FROM_GAME, i(115951)),	-- Primal Gladiator's Baton of Light
						un(REMOVED_FROM_GAME, i(125649)),	-- Wild Gladiator's Touch of Defeat
						un(REMOVED_FROM_GAME, i(125765)),	-- Wild Gladiator's Baton of Light
						un(REMOVED_FROM_GAME, i(126763)),	-- Warmongering Gladiator's Touch of Defeat
						un(REMOVED_FROM_GAME, i(126879)),	-- Warmongering Gladiator's Baton of Light
						n(SEASON_PRIMAL, {
							cl(DEATHKNIGHT, {
								un(REMOVED_FROM_GAME, i(115837)),	-- Primal Gladiator's Dreadplate Chestpiece
								un(REMOVED_FROM_GAME, i(115838)),	-- Primal Gladiator's Dreadplate Gauntlets
								un(REMOVED_FROM_GAME, i(115906)),	-- Primal Gladiator's Dreadplate Girdle
								un(REMOVED_FROM_GAME, i(115839)),	-- Primal Gladiator's Dreadplate Helm
								un(REMOVED_FROM_GAME, i(115840)),	-- Primal Gladiator's Dreadplate Legguards
								un(REMOVED_FROM_GAME, i(115841)),	-- Primal Gladiator's Dreadplate Shoulders
								un(REMOVED_FROM_GAME, i(115909)),	-- Primal Gladiator's Dreadplate Warboots
							}),
							cl(DRUID, {
								un(REMOVED_FROM_GAME, i(115971)),	-- Primal Gladiator's Dragonhide Belt
								un(REMOVED_FROM_GAME, i(115970)),	-- Primal Gladiator's Dragonhide Footguards
								un(REMOVED_FROM_GAME, i(115842)),	-- Primal Gladiator's Dragonhide Gloves
								un(REMOVED_FROM_GAME, i(115843)),	-- Primal Gladiator's Dragonhide Helm
								un(REMOVED_FROM_GAME, i(115844)),	-- Primal Gladiator's Dragonhide Legguards
								un(REMOVED_FROM_GAME, i(115845)),	-- Primal Gladiator's Dragonhide Robes
								un(REMOVED_FROM_GAME, i(115846)),	-- Primal Gladiator's Dragonhide Spaulders
								un(REMOVED_FROM_GAME, i(115847)),	-- Primal Gladiator's Kodohide Belt
								un(REMOVED_FROM_GAME, i(115848)),	-- Primal Gladiator's Kodohide Footguards
								un(REMOVED_FROM_GAME, i(115849)),	-- Primal Gladiator's Kodohide Gloves
								un(REMOVED_FROM_GAME, i(115850)),	-- Primal Gladiator's Kodohide Helm
								un(REMOVED_FROM_GAME, i(115851)),	-- Primal Gladiator's Kodohide Legguards
								un(REMOVED_FROM_GAME, i(115852)),	-- Primal Gladiator's Kodohide Robes
								un(REMOVED_FROM_GAME, i(115853)),	-- Primal Gladiator's Kodohide Spaulders
								un(REMOVED_FROM_GAME, i(115855)),	-- Primal Gladiator's Wyrmhide Belt
								un(REMOVED_FROM_GAME, i(115856)),	-- Primal Gladiator's Wyrmhide Footguards
								un(REMOVED_FROM_GAME, i(115857)),	-- Primal Gladiator's Wyrmhide Gloves
								un(REMOVED_FROM_GAME, i(115858)),	-- Primal Gladiator's Wyrmhide Helm
								un(REMOVED_FROM_GAME, i(115859)),	-- Primal Gladiator's Wyrmhide Legguards
								un(REMOVED_FROM_GAME, i(115860)),	-- Primal Gladiator's Wyrmhide Robes
								un(REMOVED_FROM_GAME, i(115861)),	-- Primal Gladiator's Wyrmhide Spaulders
							}),
							cl(HUNTER, {
								un(REMOVED_FROM_GAME, i(115870)),	-- Primal Gladiator's Chain Armor
								un(REMOVED_FROM_GAME, i(115871)),	-- Primal Gladiator's Chain Gauntlets
								un(REMOVED_FROM_GAME, i(115872)),	-- Primal Gladiator's Chain Helm
								un(REMOVED_FROM_GAME, i(115873)),	-- Primal Gladiator's Chain Leggings
								un(REMOVED_FROM_GAME, i(115866)),	-- Primal Gladiator's Chain Links
								un(REMOVED_FROM_GAME, i(115868)),	-- Primal Gladiator's Chain Sabatons
								un(REMOVED_FROM_GAME, i(115874)),	-- Primal Gladiator's Chain Spaulders
							}),
							cl(MAGE, {
								un(REMOVED_FROM_GAME, i(115879)),	-- Primal Gladiator's Silk Amice
								un(REMOVED_FROM_GAME, i(115824)),	-- Primal Gladiator's Silk Cord
								un(REMOVED_FROM_GAME, i(115876)),	-- Primal Gladiator's Silk Cowl
								un(REMOVED_FROM_GAME, i(115875)),	-- Primal Gladiator's Silk Handguards
								un(REMOVED_FROM_GAME, i(115878)),	-- Primal Gladiator's Silk Robe
								un(REMOVED_FROM_GAME, i(115827)),	-- Primal Gladiator's Silk Treads
								un(REMOVED_FROM_GAME, i(115877)),	-- Primal Gladiator's Silk Trousers
							}),
							cl(MONK, {
								un(REMOVED_FROM_GAME, i(115966)),	-- Primal Gladiator's Copperskin Boots
								un(REMOVED_FROM_GAME, i(115887)),	-- Primal Gladiator's Copperskin Gloves
								un(REMOVED_FROM_GAME, i(115888)),	-- Primal Gladiator's Copperskin Helm
								un(REMOVED_FROM_GAME, i(115889)),	-- Primal Gladiator's Copperskin Legguards
								un(REMOVED_FROM_GAME, i(115890)),	-- Primal Gladiator's Copperskin Spaulders
								un(REMOVED_FROM_GAME, i(115891)),	-- Primal Gladiator's Copperskin Tunic
								un(REMOVED_FROM_GAME, i(115967)),	-- Primal Gladiator's Copperskin Waistband
								un(REMOVED_FROM_GAME, i(115881)),	-- Primal Gladiator's Ironskin boosts
								un(REMOVED_FROM_GAME, i(115882)),	-- Primal Gladiator's Ironskin Gloves
								un(REMOVED_FROM_GAME, i(115883)),	-- Primal Gladiator's Ironskin Helm
								un(REMOVED_FROM_GAME, i(115884)),	-- Primal Gladiator's Ironskin Legguards
								un(REMOVED_FROM_GAME, i(115885)),	-- Primal Gladiator's Ironskin Spaulders
								un(REMOVED_FROM_GAME, i(115886)),	-- Primal Gladiator's Ironskin Tunic
								un(REMOVED_FROM_GAME, i(115880)),	-- Primal Gladiator's Ironskin Waistband
							}),
							cl(PALADIN, {
								un(REMOVED_FROM_GAME, i(115901)),	-- Primal Gladiator's Ornamented Chestguard
								un(REMOVED_FROM_GAME, i(115898)),	-- Primal Gladiator's Ornamented Clasp
								un(REMOVED_FROM_GAME, i(115902)),	-- Primal Gladiator's Ornamented Gloves
								un(REMOVED_FROM_GAME, i(115899)),	-- Primal Gladiator's Ornamented Greaves
								un(REMOVED_FROM_GAME, i(115903)),	-- Primal Gladiator's Ornamented headcover
								un(REMOVED_FROM_GAME, i(115904)),	-- Primal Gladiator's Ornamented legPlates
								un(REMOVED_FROM_GAME, i(115905)),	-- Primal Gladiator's Ornamented Spaulders
								un(REMOVED_FROM_GAME, i(115892)),	-- Primal Gladiator's Scaled Chestpiece
								un(REMOVED_FROM_GAME, i(115897)),	-- Primal Gladiator's Scaled Clasp
								un(REMOVED_FROM_GAME, i(115893)),	-- Primal Gladiator's Scaled Gauntlets
								un(REMOVED_FROM_GAME, i(115900)),	-- Primal Gladiator's Scaled Greaves
								un(REMOVED_FROM_GAME, i(115894)),	-- Primal Gladiator's Scaled Helm
								un(REMOVED_FROM_GAME, i(115895)),	-- Primal Gladiator's Scaled Legguards
								un(REMOVED_FROM_GAME, i(115896)),	-- Primal Gladiator's Scaled Shoulders
							}),
							cl(PRIEST, {
								un(REMOVED_FROM_GAME, i(115826)),	-- Primal Gladiator's Mooncloth Cord
								un(REMOVED_FROM_GAME, i(115911)),	-- Primal Gladiator's Mooncloth Gloves
								un(REMOVED_FROM_GAME, i(115912)),	-- Primal Gladiator's Mooncloth Hood
								un(REMOVED_FROM_GAME, i(115913)),	-- Primal Gladiator's Mooncloth Leggings
								un(REMOVED_FROM_GAME, i(115915)),	-- Primal Gladiator's Mooncloth manthle
								un(REMOVED_FROM_GAME, i(115914)),	-- Primal Gladiator's Mooncloth Robe
								un(REMOVED_FROM_GAME, i(115829)),	-- Primal Gladiator's Mooncloth trads
								un(REMOVED_FROM_GAME, i(115969)),	-- Primal Gladiator's Satin Cord
								un(REMOVED_FROM_GAME, i(115916)),	-- Primal Gladiator's Satin Gloves
								un(REMOVED_FROM_GAME, i(115917)),	-- Primal Gladiator's Satin Hood
								un(REMOVED_FROM_GAME, i(115918)),	-- Primal Gladiator's Satin Leggings
								un(REMOVED_FROM_GAME, i(115920)),	-- Primal Gladiator's Satin Mantle
								un(REMOVED_FROM_GAME, i(115919)),	-- Primal Gladiator's Satin Robe
								un(REMOVED_FROM_GAME, i(115968)),	-- Primal Gladiator's Satin Treads
							}),
							cl(ROGUE, {
								un(REMOVED_FROM_GAME, i(115922)),	-- Primal Gladiator's Leather boosts
								un(REMOVED_FROM_GAME, i(115924)),	-- Primal Gladiator's Leather Gloves
								un(REMOVED_FROM_GAME, i(115925)),	-- Primal Gladiator's Leather Helm
								un(REMOVED_FROM_GAME, i(115926)),	-- Primal Gladiator's Leather Legguards
								un(REMOVED_FROM_GAME, i(115927)),	-- Primal Gladiator's Leather Spaulders
								un(REMOVED_FROM_GAME, i(115923)),	-- Primal Gladiator's Leather Tunic
								un(REMOVED_FROM_GAME, i(115921)),	-- Primal Gladiator's Leather Waistband
							}),
							cl(SHAMAN, {
								un(REMOVED_FROM_GAME, i(115942)),	-- Primal Gladiator's Mail Armor
								un(REMOVED_FROM_GAME, i(115930)),	-- Primal Gladiator's Mail Footguards
								un(REMOVED_FROM_GAME, i(115943)),	-- Primal Gladiator's Mail Gauntlets
								un(REMOVED_FROM_GAME, i(115944)),	-- Primal Gladiator's Mail Helm
								un(REMOVED_FROM_GAME, i(115945)),	-- Primal Gladiator's Mail Leggings
								un(REMOVED_FROM_GAME, i(115946)),	-- Primal Gladiator's Mail Spaulders
								un(REMOVED_FROM_GAME, i(115941)),	-- Primal Gladiator's Mail Waistguard
								un(REMOVED_FROM_GAME, i(115936)),	-- Primal Gladiator's Linked Armor
								un(REMOVED_FROM_GAME, i(115937)),	-- Primal Gladiator's Linked Gauntlets
								un(REMOVED_FROM_GAME, i(115938)),	-- Primal Gladiator's Linked Helm
								un(REMOVED_FROM_GAME, i(115939)),	-- Primal Gladiator's Linked Leggings
								un(REMOVED_FROM_GAME, i(115869)),	-- Primal Gladiator's Linked Sabatons
								un(REMOVED_FROM_GAME, i(115940)),	-- Primal Gladiator's Linked Spaulders
								un(REMOVED_FROM_GAME, i(115867)),	-- Primal Gladiator's Linked Waistband
								un(REMOVED_FROM_GAME, i(115931)),	-- Primal Gladiator's Ringmail Armor
								un(REMOVED_FROM_GAME, i(115929)),	-- Primal Gladiator's Ringmail Foodguards
								un(REMOVED_FROM_GAME, i(115932)),	-- Primal Gladiator's Ringmail Gauntlets
								un(REMOVED_FROM_GAME, i(115933)),	-- Primal Gladiator's Ringmail Helm
								un(REMOVED_FROM_GAME, i(115934)),	-- Primal Gladiator's Ringmail Leggings
								un(REMOVED_FROM_GAME, i(115935)),	-- Primal Gladiator's Ringmail Spaulders
								un(REMOVED_FROM_GAME, i(115928)),	-- Primal Gladiator's Ringmail Waistguard
							}),
							cl(WARLOCK, {
								un(REMOVED_FROM_GAME, i(115960)),	-- Primal Gladiator's Felweave Amice
								un(REMOVED_FROM_GAME, i(115825)),	-- Primal Gladiator's Felweave Cord
								un(REMOVED_FROM_GAME, i(115957)),	-- Primal Gladiator's Felweave Cowl
								un(REMOVED_FROM_GAME, i(115956)),	-- Primal Gladiator's Felweave Handguards
								un(REMOVED_FROM_GAME, i(115959)),	-- Primal Gladiator's Felweave Rainment
								un(REMOVED_FROM_GAME, i(115828)),	-- Primal Gladiator's Felweave Treads
								un(REMOVED_FROM_GAME, i(115958)),	-- Primal Gladiator's Felweave Trousers
							}),
							cl(WARRIOR, {
								un(REMOVED_FROM_GAME, i(115961)),	-- Primal Gladiator's Plate Chestpiece
								un(REMOVED_FROM_GAME, i(115962)),	-- Primal Gladiator's Plate Gauntlets
								un(REMOVED_FROM_GAME, i(115907)),	-- Primal Gladiator's Plate Girdle
								un(REMOVED_FROM_GAME, i(115963)),	-- Primal Gladiator's Plate Helm
								un(REMOVED_FROM_GAME, i(115964)),	-- Primal Gladiator's Plate Legguards
								un(REMOVED_FROM_GAME, i(115965)),	-- Primal Gladiator's Plate Shoulders
								un(REMOVED_FROM_GAME, i(115908)),	-- Primal Gladiator's Plate Warboots
							}),
						}),
						n(SEASON_WILD, {
							cl(DEATHKNIGHT, {
								un(REMOVED_FROM_GAME, i(125651)),	-- Wild Gladiator's Dreadplate Chestpiece
								un(REMOVED_FROM_GAME, i(125652)),	-- Wild Gladiator's Dreadplate Gauntlets
								un(REMOVED_FROM_GAME, i(125653)),	-- Wild Gladiator's Dreadplate Helm
								un(REMOVED_FROM_GAME, i(125654)),	-- Wild Gladiator's Dreadplate Legguards
								un(REMOVED_FROM_GAME, i(125655)),	-- Wild Gladiator's Dreadplate Shoulders
								un(REMOVED_FROM_GAME, i(125720)),	-- Wild Gladiator's Dreadplate Girdle
								un(REMOVED_FROM_GAME, i(125723)),	-- Wild Gladiator's Dreadplate Warboots
							}),
							cl(DRUID, {
								un(REMOVED_FROM_GAME, i(125656)),	-- Wild Gladiator's Dragonhide Gloves
								un(REMOVED_FROM_GAME, i(125657)),	-- Wild Gladiator's Dragonhide Helm
								un(REMOVED_FROM_GAME, i(125658)),	-- Wild Gladiator's Dragonhide Legguards
								un(REMOVED_FROM_GAME, i(125659)),	-- Wild Gladiator's Dragonhide Robes
								un(REMOVED_FROM_GAME, i(125660)),	-- Wild Gladiator's Dragonhide Spaulders
								un(REMOVED_FROM_GAME, i(125784)),	-- Wild Gladiator's Dragonhide Footguards
								un(REMOVED_FROM_GAME, i(125785)),	-- Wild Gladiator's Dragonhide Belt
								un(REMOVED_FROM_GAME, i(125661)),	-- Wild Gladiator's Kodohide Belt
								un(REMOVED_FROM_GAME, i(125662)),	-- Wild Gladiator's Kodohide Footguards
								un(REMOVED_FROM_GAME, i(125663)),	-- Wild Gladiator's Kodohide Gloves
								un(REMOVED_FROM_GAME, i(125664)),	-- Wild Gladiator's Kodohide Helm
								un(REMOVED_FROM_GAME, i(125665)),	-- Wild Gladiator's Kodohide Legguards
								un(REMOVED_FROM_GAME, i(125666)),	-- Wild Gladiator's Kodohide Robes
								un(REMOVED_FROM_GAME, i(125667)),	-- Wild Gladiator's Kodohide Spaulders
								un(REMOVED_FROM_GAME, i(125669)),	-- Wild Gladiator's Wyrmhide Belt
								un(REMOVED_FROM_GAME, i(125670)),	-- Wild Gladiator's Wyrmhide Footguards
								un(REMOVED_FROM_GAME, i(125671)),	-- Wild Gladiator's Wyrmhide Gloves
								un(REMOVED_FROM_GAME, i(125672)),	-- Wild Gladiator's Wyrmhide Helm
								un(REMOVED_FROM_GAME, i(125673)),	-- Wild Gladiator's Wyrmhide Legguards
								un(REMOVED_FROM_GAME, i(125674)),	-- Wild Gladiator's Wyrmhide Robes
								un(REMOVED_FROM_GAME, i(125675)),	-- Wild Gladiator's Wyrmhide Spaulders
							}),
							cl(HUNTER, {
								un(REMOVED_FROM_GAME, i(125684)),	-- Wild Gladiator's Chain Armor
								un(REMOVED_FROM_GAME, i(125685)),	-- Wild Gladiator's Chain Gauntlets
								un(REMOVED_FROM_GAME, i(125686)),	-- Wild Gladiator's Chain Helm
								un(REMOVED_FROM_GAME, i(125687)),	-- Wild Gladiator's Chain Leggings
								un(REMOVED_FROM_GAME, i(125688)),	-- Wild Gladiator's Chain Spaulders
							}),
							cl(MAGE, {
								un(REMOVED_FROM_GAME, i(125693)),	-- Wild Gladiator's Silk Amice
								un(REMOVED_FROM_GAME, i(125638)),	-- Wild Gladiator's Silk Cord
								un(REMOVED_FROM_GAME, i(125690)),	-- Wild Gladiator's Silk Cowl
								un(REMOVED_FROM_GAME, i(125689)),	-- Wild Gladiator's Silk Handguards
								un(REMOVED_FROM_GAME, i(125692)),	-- Wild Gladiator's Silk Robe
								un(REMOVED_FROM_GAME, i(125641)),	-- Wild Gladiator's Silk Treads
								un(REMOVED_FROM_GAME, i(125691)),	-- Wild Gladiator's Silk Trousers
							}),
							cl(MONK, {
								un(REMOVED_FROM_GAME, i(125694)),	-- Wild Gladiator's Ironskin Waistband
								un(REMOVED_FROM_GAME, i(125695)),	-- Wild Gladiator's Ironskin boosts
								un(REMOVED_FROM_GAME, i(125696)),	-- Wild Gladiator's Ironskin Gloves
								un(REMOVED_FROM_GAME, i(125697)),	-- Wild Gladiator's Ironskin Helm
								un(REMOVED_FROM_GAME, i(125698)),	-- Wild Gladiator's Ironskin Legguards
								un(REMOVED_FROM_GAME, i(125699)),	-- Wild Gladiator's Ironskin Spaulders
								un(REMOVED_FROM_GAME, i(125700)),	-- Wild Gladiator's Ironskin Tunic
								un(REMOVED_FROM_GAME, i(125701)),	-- Wild Gladiator's Copperskin Gloves
								un(REMOVED_FROM_GAME, i(125702)),	-- Wild Gladiator's Copperskin Helm
								un(REMOVED_FROM_GAME, i(125703)),	-- Wild Gladiator's Copperskin Legguards
								un(REMOVED_FROM_GAME, i(125704)),	-- Wild Gladiator's Copperskin Spaulders
								un(REMOVED_FROM_GAME, i(125705)),	-- Wild Gladiator's Copperskin Tunic
								un(REMOVED_FROM_GAME, i(125780)),	-- Wild Gladiator's Copperskin Boots
								un(REMOVED_FROM_GAME, i(125781)),	-- Wild Gladiator's Copperskin Waistband
							}),
							cl(PALADIN, {
								un(REMOVED_FROM_GAME, i(125706)),	-- Wild Gladiator's Scaled Chestpiece
								un(REMOVED_FROM_GAME, i(125707)),	-- Wild Gladiator's Scaled Gauntlets
								un(REMOVED_FROM_GAME, i(125708)),	-- Wild Gladiator's Scaled Helm
								un(REMOVED_FROM_GAME, i(125709)),	-- Wild Gladiator's Scaled Legguards
								un(REMOVED_FROM_GAME, i(125710)),	-- Wild Gladiator's Scaled Shoulders
								un(REMOVED_FROM_GAME, i(125711)),	-- Wild Gladiator's Scaled Clasp
								un(REMOVED_FROM_GAME, i(125714)),	-- Wild Gladiator's Scaled Greaves
								un(REMOVED_FROM_GAME, i(125712)),	-- Wild Gladiator's Ornamented Clasp
								un(REMOVED_FROM_GAME, i(125713)),	-- Wild Gladiator's Ornamented Greaves
								un(REMOVED_FROM_GAME, i(125715)),	-- Wild Gladiator's Ornamented Chestguard
								un(REMOVED_FROM_GAME, i(125716)),	-- Wild Gladiator's Ornamented Gloves
								un(REMOVED_FROM_GAME, i(125717)),	-- Wild Gladiator's Ornamented Headcover
								un(REMOVED_FROM_GAME, i(125718)),	-- Wild Gladiator's Ornamented LegPlates
								un(REMOVED_FROM_GAME, i(125719)),	-- Wild Gladiator's Ornamented Spaulders
							}),
							cl(PRIEST, {
								un(REMOVED_FROM_GAME, i(125640)),	-- Wild Gladiator's Mooncloth Cord
								un(REMOVED_FROM_GAME, i(125725)),	-- Wild Gladiator's Mooncloth Gloves
								un(REMOVED_FROM_GAME, i(125726)),	-- Wild Gladiator's Mooncloth Hood
								un(REMOVED_FROM_GAME, i(125727)),	-- Wild Gladiator's Mooncloth Leggings
								un(REMOVED_FROM_GAME, i(125729)),	-- Wild Gladiator's Mooncloth manthle
								un(REMOVED_FROM_GAME, i(125728)),	-- Wild Gladiator's Mooncloth Robe
								un(REMOVED_FROM_GAME, i(125643)),	-- Wild Gladiator's Mooncloth trads
								un(REMOVED_FROM_GAME, i(125783)),	-- Wild Gladiator's Satin Cord
								un(REMOVED_FROM_GAME, i(125730)),	-- Wild Gladiator's Satin Gloves
								un(REMOVED_FROM_GAME, i(125731)),	-- Wild Gladiator's Satin Hood
								un(REMOVED_FROM_GAME, i(125732)),	-- Wild Gladiator's Satin Leggings
								un(REMOVED_FROM_GAME, i(125734)),	-- Wild Gladiator's Satin Mantle
								un(REMOVED_FROM_GAME, i(125733)),	-- Wild Gladiator's Satin Robe
								un(REMOVED_FROM_GAME, i(125782)),	-- Wild Gladiator's Satin Treads
							}),
							cl(ROGUE, {
								un(REMOVED_FROM_GAME, i(125735)),	-- Wild Gladiator's Leather Waistband
								un(REMOVED_FROM_GAME, i(125736)),	-- Wild Gladiator's Leather boosts
								un(REMOVED_FROM_GAME, i(125737)),	-- Wild Gladiator's Leather Tunic
								un(REMOVED_FROM_GAME, i(125738)),	-- Wild Gladiator's Leather Gloves
								un(REMOVED_FROM_GAME, i(125739)),	-- Wild Gladiator's Leather Helm
								un(REMOVED_FROM_GAME, i(125740)),	-- Wild Gladiator's Leather Legguards
								un(REMOVED_FROM_GAME, i(125741)),	-- Wild Gladiator's Leather Spaulders
							}),
							cl(SHAMAN, {
								un(REMOVED_FROM_GAME, i(125750)),	-- Wild Gladiator's Linked Armor
								un(REMOVED_FROM_GAME, i(125751)),	-- Wild Gladiator's Linked Gauntlets
								un(REMOVED_FROM_GAME, i(125752)),	-- Wild Gladiator's Linked Helm
								un(REMOVED_FROM_GAME, i(125753)),	-- Wild Gladiator's Linked Leggings
								un(REMOVED_FROM_GAME, i(125683)),	-- Wild Gladiator's Linked Sabatons
								un(REMOVED_FROM_GAME, i(125754)),	-- Wild Gladiator's Linked Spaulders
								un(REMOVED_FROM_GAME, i(125756)),	-- Wild Gladiator's Mail Armor
								un(REMOVED_FROM_GAME, i(125744)),	-- Wild Gladiator's Mail Footguards
								un(REMOVED_FROM_GAME, i(125757)),	-- Wild Gladiator's Mail Gauntlets
								un(REMOVED_FROM_GAME, i(125758)),	-- Wild Gladiator's Mail Helm
								un(REMOVED_FROM_GAME, i(125759)),	-- Wild Gladiator's Mail Leggings
								un(REMOVED_FROM_GAME, i(125760)),	-- Wild Gladiator's Mail Spaulders
								un(REMOVED_FROM_GAME, i(125755)),	-- Wild Gladiator's Mail Waistguard
								un(REMOVED_FROM_GAME, i(125745)),	-- Wild Gladiator's Ringmail Armor
								un(REMOVED_FROM_GAME, i(125743)),	-- Wild Gladiator's Ringmail Footguards
								un(REMOVED_FROM_GAME, i(125746)),	-- Wild Gladiator's Ringmail Gauntlets
								un(REMOVED_FROM_GAME, i(125747)),	-- Wild Gladiator's Ringmail Helm
								un(REMOVED_FROM_GAME, i(125748)),	-- Wild Gladiator's Ringmail Leggings
								un(REMOVED_FROM_GAME, i(125749)),	-- Wild Gladiator's Ringmail Spaulders
								un(REMOVED_FROM_GAME, i(125742)),	-- Wild Gladiator's Ringmail Waistguard
							}),
							cl(WARLOCK, {
								un(REMOVED_FROM_GAME, i(125774)),	-- Wild Gladiator's Felweave Amice
								un(REMOVED_FROM_GAME, i(125639)),	-- Wild Gladiator's Felweave Cord
								un(REMOVED_FROM_GAME, i(125771)),	-- Wild Gladiator's Felweave Cowl
								un(REMOVED_FROM_GAME, i(125770)),	-- Wild Gladiator's Felweave Handguards
								un(REMOVED_FROM_GAME, i(125773)),	-- Wild Gladiator's Felweave Rainment
								un(REMOVED_FROM_GAME, i(125642)),	-- Wild Gladiator's Felweave Treads
								un(REMOVED_FROM_GAME, i(125772)),	-- Wild Gladiator's Felweave Trousers
							}),
							cl(WARRIOR, {
								un(REMOVED_FROM_GAME, i(125721)),	-- Wild Gladiator's Plate Girdle
								un(REMOVED_FROM_GAME, i(125722)),	-- Wild Gladiator's Plate Warboots
								un(REMOVED_FROM_GAME, i(125775)),	-- Wild Gladiator's Plate Chestpiece
								un(REMOVED_FROM_GAME, i(125776)),	-- Wild Gladiator's Plate Gauntlets
								un(REMOVED_FROM_GAME, i(125777)),	-- Wild Gladiator's Plate Helm
								un(REMOVED_FROM_GAME, i(125778)),	-- Wild Gladiator's Plate Legguards
								un(REMOVED_FROM_GAME, i(125779)),	-- Wild Gladiator's Plate Shoulders
							}),
						}),
						n(SEASON_WARMONGERING, {
							cl(DEATHKNIGHT, {
								un(REMOVED_FROM_GAME, i(126765)),	-- Warmongering Gladiator's Dreadplate Chestpiece
								un(REMOVED_FROM_GAME, i(126766)),	-- Warmongering Gladiator's Dreadplate Gauntlets
								un(REMOVED_FROM_GAME, i(126767)),	-- Warmongering Gladiator's Dreadplate Helm
								un(REMOVED_FROM_GAME, i(126768)),	-- Warmongering Gladiator's Dreadplate Legguards
								un(REMOVED_FROM_GAME, i(126769)),	-- Warmongering Gladiator's Dreadplate Shoulders
								un(REMOVED_FROM_GAME, i(126834)),	-- Warmongering Gladiator's Dreadplate Girdle
								un(REMOVED_FROM_GAME, i(126837)),	-- Warmongering Gladiator's Dreadplate Warboots
							}),
							cl(DRUID, {
								un(REMOVED_FROM_GAME, i(126899)),	-- Warmongering Gladiator's Dragonhide Belt
								un(REMOVED_FROM_GAME, i(126898)),	-- Warmongering Gladiator's Dragonhide Footguards
								un(REMOVED_FROM_GAME, i(126770)),	-- Warmongering Gladiator's Dragonhide Gloves
								un(REMOVED_FROM_GAME, i(126771)),	-- Warmongering Gladiator's Dragonhide Helm
								un(REMOVED_FROM_GAME, i(126772)),	-- Warmongering Gladiator's Dragonhide Legguards
								un(REMOVED_FROM_GAME, i(126773)),	-- Warmongering Gladiator's Dragonhide Robes
								un(REMOVED_FROM_GAME, i(126774)),	-- Warmongering Gladiator's Dragonhide Spaulders
								un(REMOVED_FROM_GAME, i(126775)),	-- Warmongering Gladiator's Kodohide Belt
								un(REMOVED_FROM_GAME, i(126776)),	-- Warmongering Gladiator's Kodohide Footguards
								un(REMOVED_FROM_GAME, i(126777)),	-- Warmongering Gladiator's Kodohide Gloves
								un(REMOVED_FROM_GAME, i(126778)),	-- Warmongering Gladiator's Kodohide Helm
								un(REMOVED_FROM_GAME, i(126779)),	-- Warmongering Gladiator's Kodohide Legguards
								un(REMOVED_FROM_GAME, i(126780)),	-- Warmongering Gladiator's Kodohide Robes
								un(REMOVED_FROM_GAME, i(126781)),	-- Warmongering Gladiator's Kodohide Spaulders
								un(REMOVED_FROM_GAME, i(126783)),	-- Warmongering Gladiator's Wyrmhide Belt
								un(REMOVED_FROM_GAME, i(126784)),	-- Warmongering Gladiator's Wyrmhide Footguards
								un(REMOVED_FROM_GAME, i(126785)),	-- Warmongering Gladiator's Wyrmhide Gloves
								un(REMOVED_FROM_GAME, i(126786)),	-- Warmongering Gladiator's Wyrmhide Helm
								un(REMOVED_FROM_GAME, i(126787)),	-- Warmongering Gladiator's Wyrmhide Legguards
								un(REMOVED_FROM_GAME, i(126788)),	-- Warmongering Gladiator's Wyrmhide Robes
								un(REMOVED_FROM_GAME, i(126789)),	-- Warmongering Gladiator's Wyrmhide Spaulders
							}),
							cl(HUNTER, {
								un(REMOVED_FROM_GAME, i(126798)),	-- Warmongering Gladiator's Chain Armor
								un(REMOVED_FROM_GAME, i(126799)),	-- Warmongering Gladiator's Chain Gauntlets
								un(REMOVED_FROM_GAME, i(126800)),	-- Warmongering Gladiator's Chain Helm
								un(REMOVED_FROM_GAME, i(126801)),	-- Warmongering Gladiator's Chain Leggings
								un(REMOVED_FROM_GAME, i(126794)),	-- Warmongering Gladiator's Chain Links
								un(REMOVED_FROM_GAME, i(126796)),	-- Warmongering Gladiator's Chain Sabatons
								un(REMOVED_FROM_GAME, i(126802)),	-- Warmongering Gladiator's Chain Spaulders
							}),
							cl(MAGE, {
								un(REMOVED_FROM_GAME, i(126807)),	-- Warmongering Gladiator's Silk Amice
								un(REMOVED_FROM_GAME, i(126752)),	-- Warmongering Gladiator's Silk Cord
								un(REMOVED_FROM_GAME, i(126804)),	-- Warmongering Gladiator's Silk Cowl
								un(REMOVED_FROM_GAME, i(126803)),	-- Warmongering Gladiator's Silk Handguards
								un(REMOVED_FROM_GAME, i(126806)),	-- Warmongering Gladiator's Silk Robe
								un(REMOVED_FROM_GAME, i(126755)),	-- Warmongering Gladiator's Silk Treads
								un(REMOVED_FROM_GAME, i(126805)),	-- Warmongering Gladiator's Silk Trousers
							}),
							cl(MONK, {
								un(REMOVED_FROM_GAME, i(126809)),	-- Warmongering Gladiator's Ironskin boosts
								un(REMOVED_FROM_GAME, i(126810)),	-- Warmongering Gladiator's Ironskin Gloves
								un(REMOVED_FROM_GAME, i(126811)),	-- Warmongering Gladiator's Ironskin Helm
								un(REMOVED_FROM_GAME, i(126812)),	-- Warmongering Gladiator's Ironskin Legguards
								un(REMOVED_FROM_GAME, i(126813)),	-- Warmongering Gladiator's Ironskin Spaulders
								un(REMOVED_FROM_GAME, i(126814)),	-- Warmongering Gladiator's Ironskin Tunic
								un(REMOVED_FROM_GAME, i(126808)),	-- Warmongering Gladiator's Ironskin Waistband
								un(REMOVED_FROM_GAME, i(126894)),	-- Warmongering Gladiator's Copperskin Boots
								un(REMOVED_FROM_GAME, i(126815)),	-- Warmongering Gladiator's Copperskin Gloves
								un(REMOVED_FROM_GAME, i(126816)),	-- Warmongering Gladiator's Copperskin Helm
								un(REMOVED_FROM_GAME, i(126817)),	-- Warmongering Gladiator's Copperskin Legguards
								un(REMOVED_FROM_GAME, i(126818)),	-- Warmongering Gladiator's Copperskin Spaulders
								un(REMOVED_FROM_GAME, i(126819)),	-- Warmongering Gladiator's Copperskin Tunic
								un(REMOVED_FROM_GAME, i(126895)),	-- Warmongering Gladiator's Copperskin Waistband
							}),
							cl(PALADIN, {
								un(REMOVED_FROM_GAME, i(126826)),	-- Warmongering Gladiator's Ornamented Clasp
								un(REMOVED_FROM_GAME, i(126827)),	-- Warmongering Gladiator's Ornamented Greaves
								un(REMOVED_FROM_GAME, i(126829)),	-- Warmongering Gladiator's Ornamented Chestguard
								un(REMOVED_FROM_GAME, i(126830)),	-- Warmongering Gladiator's Ornamented Gloves
								un(REMOVED_FROM_GAME, i(126831)),	-- Warmongering Gladiator's Ornamented Headcover
								un(REMOVED_FROM_GAME, i(126832)),	-- Warmongering Gladiator's Ornamented LegPlates
								un(REMOVED_FROM_GAME, i(126833)),	-- Warmongering Gladiator's Ornamented Spaulders
								un(REMOVED_FROM_GAME, i(126820)),	-- Warmongering Gladiator's Scaled Chestpiece
								un(REMOVED_FROM_GAME, i(126821)),	-- Warmongering Gladiator's Scaled Gauntlets
								un(REMOVED_FROM_GAME, i(126822)),	-- Warmongering Gladiator's Scaled Helm
								un(REMOVED_FROM_GAME, i(126823)),	-- Warmongering Gladiator's Scaled Legguards
								un(REMOVED_FROM_GAME, i(126824)),	-- Warmongering Gladiator's Scaled Shoulders
								un(REMOVED_FROM_GAME, i(126825)),	-- Warmongering Gladiator's Scaled Clasp
								un(REMOVED_FROM_GAME, i(126828)),	-- Warmongering Gladiator's Scaled Greaves
							}),
							cl(PRIEST, {
								un(REMOVED_FROM_GAME, i(126754)),	-- Warmongering Gladiator's Mooncloth Cord
								un(REMOVED_FROM_GAME, i(126839)),	-- Warmongering Gladiator's Mooncloth Gloves
								un(REMOVED_FROM_GAME, i(126840)),	-- Warmongering Gladiator's Mooncloth Hood
								un(REMOVED_FROM_GAME, i(126841)),	-- Warmongering Gladiator's Mooncloth Leggings
								un(REMOVED_FROM_GAME, i(126843)),	-- Warmongering Gladiator's Mooncloth manthle
								un(REMOVED_FROM_GAME, i(126842)),	-- Warmongering Gladiator's Mooncloth Robe
								un(REMOVED_FROM_GAME, i(126757)),	-- Warmongering Gladiator's Mooncloth Treads
								un(REMOVED_FROM_GAME, i(126897)),	-- Warmongering Gladiator's Satin Cord
								un(REMOVED_FROM_GAME, i(126844)),	-- Warmongering Gladiator's Satin Gloves
								un(REMOVED_FROM_GAME, i(126845)),	-- Warmongering Gladiator's Satin Hood
								un(REMOVED_FROM_GAME, i(126846)),	-- Warmongering Gladiator's Satin Leggings
								un(REMOVED_FROM_GAME, i(126848)),	-- Warmongering Gladiator's Satin Mantle
								un(REMOVED_FROM_GAME, i(126847)),	-- Warmongering Gladiator's Satin Robe
								un(REMOVED_FROM_GAME, i(126896)),	-- Warmongering Gladiator's Satin Treads
							}),
							cl(ROGUE, {
								un(REMOVED_FROM_GAME, i(126850)),	-- Warmongering Gladiator's Leather boosts
								un(REMOVED_FROM_GAME, i(126852)),	-- Warmongering Gladiator's Leather Gloves
								un(REMOVED_FROM_GAME, i(126853)),	-- Warmongering Gladiator's Leather Helm
								un(REMOVED_FROM_GAME, i(126854)),	-- Warmongering Gladiator's Leather Legguards
								un(REMOVED_FROM_GAME, i(126855)),	-- Warmongering Gladiator's Leather Spaulders
								un(REMOVED_FROM_GAME, i(126851)),	-- Warmongering Gladiator's Leather Tunic
								un(REMOVED_FROM_GAME, i(126849)),	-- Warmongering Gladiator's Leather Waistband
							}),
							cl(SHAMAN, {
								un(REMOVED_FROM_GAME, i(126864)),	-- Warmongering Gladiator's Linked Armor
								un(REMOVED_FROM_GAME, i(126865)),	-- Warmongering Gladiator's Linked Gauntlets
								un(REMOVED_FROM_GAME, i(126866)),	-- Warmongering Gladiator's Linked Helm
								un(REMOVED_FROM_GAME, i(126867)),	-- Warmongering Gladiator's Linked Leggings
								un(REMOVED_FROM_GAME, i(126797)),	-- Warmongering Gladiator's Linked Sabatons
								un(REMOVED_FROM_GAME, i(126868)),	-- Warmongering Gladiator's Linked Spaulders
								un(REMOVED_FROM_GAME, i(126795)),	-- Warmongering Gladiator's Linked Waistband
								un(REMOVED_FROM_GAME, i(126870)),	-- Warmongering Gladiator's Mail Armor
								un(REMOVED_FROM_GAME, i(126858)),	-- Warmongering Gladiator's Mail Footguards
								un(REMOVED_FROM_GAME, i(126871)),	-- Warmongering Gladiator's Mail Gauntlets
								un(REMOVED_FROM_GAME, i(126872)),	-- Warmongering Gladiator's Mail Helm
								un(REMOVED_FROM_GAME, i(126873)),	-- Warmongering Gladiator's Mail Leggings
								un(REMOVED_FROM_GAME, i(126874)),	-- Warmongering Gladiator's Mail Spaulders
								un(REMOVED_FROM_GAME, i(126869)),	-- Warmongering Gladiator's Mail Waistguard
								un(REMOVED_FROM_GAME, i(126859)),	-- Warmongering Gladiator's Ringmail Armor
								un(REMOVED_FROM_GAME, i(126857)),	-- Warmongering Gladiator's Ringmail Footguards
								un(REMOVED_FROM_GAME, i(126860)),	-- Warmongering Gladiator's Ringmail Gauntlets
								un(REMOVED_FROM_GAME, i(126861)),	-- Warmongering Gladiator's Ringmail Helm
								un(REMOVED_FROM_GAME, i(126862)),	-- Warmongering Gladiator's Ringmail Leggings
								un(REMOVED_FROM_GAME, i(126863)),	-- Warmongering Gladiator's Ringmail Spaulders
								un(REMOVED_FROM_GAME, i(126856)),	-- Warmongering Gladiator's Ringmail Waistguard
							}),
							cl(WARLOCK, {
								un(REMOVED_FROM_GAME, i(126888)),	-- Warmongering Gladiator's Felweave Amice
								un(REMOVED_FROM_GAME, i(126753)),	-- Warmongering Gladiator's Felweave Cord
								un(REMOVED_FROM_GAME, i(126885)),	-- Warmongering Gladiator's Felweave Cowl
								un(REMOVED_FROM_GAME, i(126884)),	-- Warmongering Gladiator's Felweave Handguards
								un(REMOVED_FROM_GAME, i(126887)),	-- Warmongering Gladiator's Felweave Rainment
								un(REMOVED_FROM_GAME, i(126756)),	-- Warmongering Gladiator's Felweave Treads
								un(REMOVED_FROM_GAME, i(126886)),	-- Warmongering Gladiator's Felweave Trousers
							}),
							cl(WARRIOR, {
								un(REMOVED_FROM_GAME, i(126835)),	-- Warmongering Gladiator's Plate Girdle
								un(REMOVED_FROM_GAME, i(126836)),	-- Warmongering Gladiator's Plate Warboots
								un(REMOVED_FROM_GAME, i(126889)),	-- Warmongering Gladiator's Plate Chestpiece
								un(REMOVED_FROM_GAME, i(126890)),	-- Warmongering Gladiator's Plate Gauntlets
								un(REMOVED_FROM_GAME, i(126891)),	-- Warmongering Gladiator's Plate Helm
								un(REMOVED_FROM_GAME, i(126892)),	-- Warmongering Gladiator's Plate Legguards
								un(REMOVED_FROM_GAME, i(126893)),	-- Warmongering Gladiator's Plate Shoulders
							}),
						}),
					},
				}),
				n(82877, {	-- High Warlord Volrath Elite Season 1/S1 - Season 2/S2 - Season 3/S3 -
					["races"] = HORDE_ONLY,
					-- ["u"] = REMOVED_FROM_GAME,	-- Vendor doesn't sell anything in 7.0+
					["groups"] = {
						elitepvp(i(120286, {	-- Enchanter's Illusion - Glorious Tyranny (ILLUSION!)
							["timeline"] = { ADDED_7_0_3 },
						})),
						elitepvp(i(120287, {	-- Enchanter's Illusion - Primal Victory (ILLUSION!)
							["timeline"] = { ADDED_7_0_3 },
						})),
						un(REMOVED_FROM_GAME, i(115979)),	-- Primal Gladiator's Greatcloak
						un(REMOVED_FROM_GAME, i(115972)),	-- Primal Gladiator's Tabard
						un(REMOVED_FROM_GAME, i(127376)),	-- Warmongering Gladiator's Greatcloak
						un(REMOVED_FROM_GAME, i(127371)),	-- Warmongering Gladiator's Tabard
						un(REMOVED_FROM_GAME, i(127374)),	-- Wild Gladiator's Greatcloak
						un(REMOVED_FROM_GAME, i(127365)),	-- Wild Gladiator's Tabard
						-- Fist Weapons
						un(REMOVED_FROM_GAME, i(115948)),	-- Primal Gladiator's Ripper
						un(REMOVED_FROM_GAME, i(115949)),	-- Primal  Gladiator's Render
						un(REMOVED_FROM_GAME, i(125762)),	-- Wild Gladiator's Ripper
						un(REMOVED_FROM_GAME, i(125763)),	-- Wild Gladiator's Render
						un(REMOVED_FROM_GAME, i(126876)),	-- Warmongering Gladiator's Ripper
						un(REMOVED_FROM_GAME, i(126877)),	-- Warmongering Gladiator's Render
						-- 2 Hand Mace
						un(REMOVED_FROM_GAME, i(115818)),	-- Primal  Gladiator's Bonegrinder
						un(REMOVED_FROM_GAME, i(125632)),	-- Wild Gladiator's Bonegrinder
						un(REMOVED_FROM_GAME, i(126746)),	-- Warmongering  Gladiator's Bonegrinder
						-- Crossbow
						un(REMOVED_FROM_GAME, i(115836)),	-- Primal Gladiator's Heavy Crossbow
						un(REMOVED_FROM_GAME, i(125650)),	-- Wild Gladiator's  Heavy Crossbow
						un(REMOVED_FROM_GAME, i(126764)),	-- Warmongering Gladiator's  Heavy Crossbow
						-- 2 Hand Axes
						un(REMOVED_FROM_GAME, i(115817)),	-- Primal Gladiator's Decapitator
						un(REMOVED_FROM_GAME, i(125631)),	-- Wild Gladiator's  Decapi
						un(REMOVED_FROM_GAME, i(126745)),	-- Warmongering Gladiator's  Decapi
						-- 2 Hand Swords
						un(REMOVED_FROM_GAME, i(115819)),	-- Primal Gladiator's  Greatsword
						un(REMOVED_FROM_GAME, i(125633)),	-- Wild Gladiator's  Greatsword
						un(REMOVED_FROM_GAME, i(126747)),	-- Warmongering Gladiator's  Greatsword
						-- 1 Hand Axes
						un(REMOVED_FROM_GAME, i(115820)),	-- Primal Gladiator's Cleaver
						un(REMOVED_FROM_GAME, i(115952)),	-- Primal Gladiator's Hacker
						un(REMOVED_FROM_GAME, i(125634)),	-- Wild Gladiator's Cleaver
						un(REMOVED_FROM_GAME, i(125766)),	-- Wild Gladiator's Hacker
						un(REMOVED_FROM_GAME, i(129936)),	-- Wild Gladiator's Runeaxe
						un(REMOVED_FROM_GAME, i(126748)),	-- Warmongering Gladiator's Cleaver
						un(REMOVED_FROM_GAME, i(126880)),	-- Warmongering Gladiator's Hacker
						un(REMOVED_FROM_GAME, i(133584)),	-- Warmongering Gladiator's Runeaxe
						-- Bows
						un(REMOVED_FROM_GAME, i(115823)),	-- Primal Gladiator's Longbow
						un(REMOVED_FROM_GAME, i(125637)),	-- Wild Gladiator's Longbow
						un(REMOVED_FROM_GAME, i(126751)),	-- Warmongering Gladiator's Longbow
						-- Polearm
						un(REMOVED_FROM_GAME, i(115910)),	-- Primal Gladiator's Pike
						un(REMOVED_FROM_GAME, i(125724)),	-- Wild Gladiator's Pike
						un(REMOVED_FROM_GAME, i(126838)),	-- Warmongering Gladiator's Pike
						-- Guns
						un(REMOVED_FROM_GAME, i(115862)),	-- Primal Gladiator's Rifle
						un(REMOVED_FROM_GAME, i(125676)),	-- Wild Gladiator's Rifle
						un(REMOVED_FROM_GAME, i(126790)),	-- Warmongering Gladiator's Rifle
						-- Daggers
						un(REMOVED_FROM_GAME, i(115832)),	-- Primal Gladiator's Spellblade
						un(REMOVED_FROM_GAME, i(115947)),	-- Primal Gladiator's Shanker
						un(REMOVED_FROM_GAME, i(125646)),	-- Wild Gladiator's Spellblade
						un(REMOVED_FROM_GAME, i(125761)),	-- Wild Gladiator's Shanker
						un(REMOVED_FROM_GAME, i(126760)),	-- Warmongering Gladiator's Spellblade
						un(REMOVED_FROM_GAME, i(126875)),	-- Warmongering Gladiator's SHanker
						-- Offhand
						un(REMOVED_FROM_GAME, i(115830)),	-- Primal Gladiator's Endgame
						un(REMOVED_FROM_GAME, i(115834)),	-- Primal Gladiator's Reprieve
						un(REMOVED_FROM_GAME, i(125644)),	-- Wild Gladiator's Endgame
						un(REMOVED_FROM_GAME, i(125648)),	-- Wild Gladiator's Reprieve
						un(REMOVED_FROM_GAME, i(126758)),	-- Warmongering Gladiator's Endgame
						un(REMOVED_FROM_GAME, i(126762)),	-- Warmonger Gladiator's Reprieve
						-- 1 Hand Sword
						un(REMOVED_FROM_GAME, i(115822)),	-- Primal Gladiator's Quickblade
						un(REMOVED_FROM_GAME, i(115950)),	-- Primal Gladiator's Mageblade
						un(REMOVED_FROM_GAME, i(115954)),	-- Primal Gladiator's Slicer
						un(REMOVED_FROM_GAME, i(125636)),	-- Wild Gladiator's Quickblade
						un(REMOVED_FROM_GAME, i(125764)),	-- Wild Gladiator's Mageblade
						un(REMOVED_FROM_GAME, i(125768)),	-- Wild Gladiator's Slicer
						un(REMOVED_FROM_GAME, i(126750)),	-- Warmongering Gladiator's Quickblade
						un(REMOVED_FROM_GAME, i(126878)),	-- Warmongering Gladiator's Mageblade
						un(REMOVED_FROM_GAME, i(126882)),	-- Warmongering Gladiator's Slicer
						-- Staff
						un(REMOVED_FROM_GAME, i(115833)),	-- Primal Gladiator's Battle Staff
						un(REMOVED_FROM_GAME, i(115865)),	-- Primal Gladiator's Energy Staff
						un(REMOVED_FROM_GAME, i(125647)),	-- Wild Gladiator's Battle Staff
						un(REMOVED_FROM_GAME, i(125668)),	-- Wild Gladiator's Staff
						un(REMOVED_FROM_GAME, i(125679)),	-- Wild Gladiator's Energy Staff
						un(REMOVED_FROM_GAME, i(126761)),	-- Warmongering Gladiator's Battle Staff
						un(REMOVED_FROM_GAME, i(126782)),	-- Warmongering Gladiator's Staff
						un(REMOVED_FROM_GAME, i(126793)),	-- Warmongering Gladiator's Energy Staff
						-- 1 Hand Mace
						un(REMOVED_FROM_GAME, i(115821)),	-- Primal Gladiator's Pummeler
						un(REMOVED_FROM_GAME, i(115863)),	-- Primal Gladiator's Gavel
						un(REMOVED_FROM_GAME, i(115953)),	-- Primal Gladiator's Bonecracker
						un(REMOVED_FROM_GAME, i(125635)),	-- Wild Gladiator's Pummeler
						un(REMOVED_FROM_GAME, i(125677)),	-- Wild Gladiator's Gavel
						un(REMOVED_FROM_GAME, i(125767)),	-- Wild Gladiator's Bonecracker
						un(REMOVED_FROM_GAME, i(126749)),	-- Warmongering Gladiator's Pummeler
						un(REMOVED_FROM_GAME, i(126791)),	-- Warmongering Gladiator's Gavel
						un(REMOVED_FROM_GAME, i(126881)),	-- Warmongering Gladiator's Bonecracker
						-- Shield
						un(REMOVED_FROM_GAME, i(115831)),	-- Primal Gladiator's Barrier
						un(REMOVED_FROM_GAME, i(115864)),	-- Primal Gladiator's Redoubt
						un(REMOVED_FROM_GAME, i(115955)),	-- Primal Gladiator's Shield Wall
						un(REMOVED_FROM_GAME, i(125645)),	-- Wild Gladiator's Barrier
						un(REMOVED_FROM_GAME, i(125678)),	-- Wild Gladiator's Redoubt
						un(REMOVED_FROM_GAME, i(125769)),	-- Wild Gladiator's Shield Wall
						un(REMOVED_FROM_GAME, i(126759)),	-- Warmongering Gladiator's Barrier
						un(REMOVED_FROM_GAME, i(126792)),	-- Warmongering Gladiator's Redoubt
						un(REMOVED_FROM_GAME, i(126883)),	-- Warmongering Gladiator's Shield Wall
						-- Wands
						un(REMOVED_FROM_GAME, i(115835)),	-- Primal Gladiator's Touch of Defeat
						un(REMOVED_FROM_GAME, i(115951)),	-- Primal Gladiator's Baton of Light
						un(REMOVED_FROM_GAME, i(125649)),	-- Wild Gladiator's Touch of Defeat
						un(REMOVED_FROM_GAME, i(125765)),	-- Wild Gladiator's Baton of Light
						un(REMOVED_FROM_GAME, i(126763)),	-- Warmongering Gladiator's Touch of Defeat
						un(REMOVED_FROM_GAME, i(126879)),	-- Warmongering Gladiator's Baton of Light
						n(SEASON_PRIMAL, {
							cl(DEATHKNIGHT, {
								un(REMOVED_FROM_GAME, i(115837)),	-- Primal Gladiator's Dreadplate Chestpiece
								un(REMOVED_FROM_GAME, i(115838)),	-- Primal Gladiator's Dreadplate Gauntlets
								un(REMOVED_FROM_GAME, i(115906)),	-- Primal Gladiator's Dreadplate Girdle
								un(REMOVED_FROM_GAME, i(115839)),	-- Primal Gladiator's Dreadplate Helm
								un(REMOVED_FROM_GAME, i(115840)),	-- Primal Gladiator's Dreadplate Legguards
								un(REMOVED_FROM_GAME, i(115841)),	-- Primal Gladiator's Dreadplate Shoulders
								un(REMOVED_FROM_GAME, i(115909)),	-- Primal Gladiator's Dreadplate Warboots
							}),
							cl(DRUID, {
								un(REMOVED_FROM_GAME, i(115971)),	-- Primal Gladiator's Dragonhide Belt
								un(REMOVED_FROM_GAME, i(115970)),	-- Primal Gladiator's Dragonhide Footguards
								un(REMOVED_FROM_GAME, i(115842)),	-- Primal Gladiator's Dragonhide Gloves
								un(REMOVED_FROM_GAME, i(115843)),	-- Primal Gladiator's Dragonhide Helm
								un(REMOVED_FROM_GAME, i(115844)),	-- Primal Gladiator's Dragonhide Legguards
								un(REMOVED_FROM_GAME, i(115845)),	-- Primal Gladiator's Dragonhide Robes
								un(REMOVED_FROM_GAME, i(115846)),	-- Primal Gladiator's Dragonhide Spaulders
								un(REMOVED_FROM_GAME, i(115847)),	-- Primal Gladiator's Kodohide Belt
								un(REMOVED_FROM_GAME, i(115848)),	-- Primal Gladiator's Kodohide Footguards
								un(REMOVED_FROM_GAME, i(115849)),	-- Primal Gladiator's Kodohide Gloves
								un(REMOVED_FROM_GAME, i(115850)),	-- Primal Gladiator's Kodohide Helm
								un(REMOVED_FROM_GAME, i(115851)),	-- Primal Gladiator's Kodohide Legguards
								un(REMOVED_FROM_GAME, i(115852)),	-- Primal Gladiator's Kodohide Robes
								un(REMOVED_FROM_GAME, i(115853)),	-- Primal Gladiator's Kodohide Spaulders
								un(REMOVED_FROM_GAME, i(115855)),	-- Primal Gladiator's Wyrmhide Belt
								un(REMOVED_FROM_GAME, i(115856)),	-- Primal Gladiator's Wyrmhide Footguards
								un(REMOVED_FROM_GAME, i(115857)),	-- Primal Gladiator's Wyrmhide Gloves
								un(REMOVED_FROM_GAME, i(115858)),	-- Primal Gladiator's Wyrmhide Helm
								un(REMOVED_FROM_GAME, i(115859)),	-- Primal Gladiator's Wyrmhide Legguards
								un(REMOVED_FROM_GAME, i(115860)),	-- Primal Gladiator's Wyrmhide Robes
								un(REMOVED_FROM_GAME, i(115861)),	-- Primal Gladiator's Wyrmhide Spaulders
							}),
							cl(HUNTER, {
								un(REMOVED_FROM_GAME, i(115870)),	-- Primal Gladiator's Chain Armor
								un(REMOVED_FROM_GAME, i(115871)),	-- Primal Gladiator's Chain Gauntlets
								un(REMOVED_FROM_GAME, i(115872)),	-- Primal Gladiator's Chain Helm
								un(REMOVED_FROM_GAME, i(115873)),	-- Primal Gladiator's Chain Leggings
								un(REMOVED_FROM_GAME, i(115866)),	-- Primal Gladiator's Chain links
								un(REMOVED_FROM_GAME, i(115868)),	-- Primal Gladiator's Chain Sabatons
								un(REMOVED_FROM_GAME, i(115874)),	-- Primal Gladiator's Chain Spaulders
							}),
							cl(MAGE, {
								un(REMOVED_FROM_GAME, i(115879)),	-- Primal Gladiator's Silk Amice
								un(REMOVED_FROM_GAME, i(115824)),	-- Primal Gladiator's Silk Cord
								un(REMOVED_FROM_GAME, i(115876)),	-- Primal Gladiator's Silk Cowl
								un(REMOVED_FROM_GAME, i(115875)),	-- Primal Gladiator's Silk Handguards
								un(REMOVED_FROM_GAME, i(115878)),	-- Primal Gladiator's Silk Robe
								un(REMOVED_FROM_GAME, i(115827)),	-- Primal Gladiator's Silk Treads
								un(REMOVED_FROM_GAME, i(115877)),	-- Primal Gladiator's Silk Trousers
							}),
							cl(MONK, {
								un(REMOVED_FROM_GAME, i(115966)),	-- Primal Gladiator's Copperskin Boots
								un(REMOVED_FROM_GAME, i(115887)),	-- Primal Gladiator's Copperskin Gloves
								un(REMOVED_FROM_GAME, i(115888)),	-- Primal Gladiator's Copperskin Helm
								un(REMOVED_FROM_GAME, i(115889)),	-- Primal Gladiator's Copperskin Legguards
								un(REMOVED_FROM_GAME, i(115890)),	-- Primal Gladiator's Copperskin Spaulders
								un(REMOVED_FROM_GAME, i(115891)),	-- Primal Gladiator's Copperskin Tunic
								un(REMOVED_FROM_GAME, i(115967)),	-- Primal Gladiator's Copperskin Waistband
								un(REMOVED_FROM_GAME, i(115881)),	-- Primal Gladiator's Ironskin boosts
								un(REMOVED_FROM_GAME, i(115882)),	-- Primal Gladiator's Ironskin Gloves
								un(REMOVED_FROM_GAME, i(115883)),	-- Primal Gladiator's Ironskin Helm
								un(REMOVED_FROM_GAME, i(115884)),	-- Primal Gladiator's Ironskin Legguards
								un(REMOVED_FROM_GAME, i(115885)),	-- Primal Gladiator's Ironskin Spaulders
								un(REMOVED_FROM_GAME, i(115886)),	-- Primal Gladiator's Ironskin Tunic
								un(REMOVED_FROM_GAME, i(115880)),	-- Primal Gladiator's Ironskin Waistband
							}),
							cl(PALADIN, {
								un(REMOVED_FROM_GAME, i(115901)),	-- Primal Gladiator's Ornamented Chestguard
								un(REMOVED_FROM_GAME, i(115898)),	-- Primal Gladiator's Ornamented Clasp
								un(REMOVED_FROM_GAME, i(115902)),	-- Primal Gladiator's Ornamented Gloves
								un(REMOVED_FROM_GAME, i(115899)),	-- Primal Gladiator's Ornamented Greaves
								un(REMOVED_FROM_GAME, i(115903)),	-- Primal Gladiator's Ornamented headcover
								un(REMOVED_FROM_GAME, i(115904)),	-- Primal Gladiator's Ornamented legPlates
								un(REMOVED_FROM_GAME, i(115905)),	-- Primal Gladiator's Ornamented Spaulders
								un(REMOVED_FROM_GAME, i(115892)),	-- Primal Gladiator's Scaled Chestpiece
								un(REMOVED_FROM_GAME, i(115897)),	-- Primal Gladiator's Scaled Clasp
								un(REMOVED_FROM_GAME, i(115893)),	-- Primal Gladiator's Scaled Gauntlets
								un(REMOVED_FROM_GAME, i(115900)),	-- Primal Gladiator's Scaled Greaves
								un(REMOVED_FROM_GAME, i(115894)),	-- Primal Gladiator's Scaled Helm
								un(REMOVED_FROM_GAME, i(115895)),	-- Primal Gladiator's Scaled Legguards
								un(REMOVED_FROM_GAME, i(115896)),	-- Primal Gladiator's Scaled Shoulders
							}),
							cl(PRIEST, {
								un(REMOVED_FROM_GAME, i(115826)),	-- Primal Gladiator's Mooncloth Cord
								un(REMOVED_FROM_GAME, i(115911)),	-- Primal Gladiator's Mooncloth Gloves
								un(REMOVED_FROM_GAME, i(115912)),	-- Primal Gladiator's Mooncloth Hood
								un(REMOVED_FROM_GAME, i(115913)),	-- Primal Gladiator's Mooncloth Leggings
								un(REMOVED_FROM_GAME, i(115915)),	-- Primal Gladiator's Mooncloth manthle
								un(REMOVED_FROM_GAME, i(115914)),	-- Primal Gladiator's Mooncloth Robe
								un(REMOVED_FROM_GAME, i(115829)),	-- Primal Gladiator's Mooncloth trads
								un(REMOVED_FROM_GAME, i(115969)),	-- Primal Gladiator's Satin Cord
								un(REMOVED_FROM_GAME, i(115916)),	-- Primal Gladiator's Satin Gloves
								un(REMOVED_FROM_GAME, i(115917)),	-- Primal Gladiator's Satin Hood
								un(REMOVED_FROM_GAME, i(115918)),	-- Primal Gladiator's Satin Leggings
								un(REMOVED_FROM_GAME, i(115920)),	-- Primal Gladiator's Satin Mantle
								un(REMOVED_FROM_GAME, i(115919)),	-- Primal Gladiator's Satin Robe
								un(REMOVED_FROM_GAME, i(115968)),	-- Primal Gladiator's Satin Treads
							}),
							cl(ROGUE, {
								un(REMOVED_FROM_GAME, i(115922)),	-- Primal Gladiator's Leather boosts
								un(REMOVED_FROM_GAME, i(115924)),	-- Primal Gladiator's Leather Gloves
								un(REMOVED_FROM_GAME, i(115925)),	-- Primal Gladiator's Leather Helm
								un(REMOVED_FROM_GAME, i(115926)),	-- Primal Gladiator's Leather Legguards
								un(REMOVED_FROM_GAME, i(115927)),	-- Primal Gladiator's Leather Spaulders
								un(REMOVED_FROM_GAME, i(115923)),	-- Primal Gladiator's Leather Tunic
								un(REMOVED_FROM_GAME, i(115921)),	-- Primal Gladiator's Leather Waistband
							}),
							cl(SHAMAN, {
								un(REMOVED_FROM_GAME, i(115942)),	-- Primal Gladiator's Mail Armor
								un(REMOVED_FROM_GAME, i(115930)),	-- Primal Gladiator's Mail Footguards
								un(REMOVED_FROM_GAME, i(115943)),	-- Primal Gladiator's Mail Gauntlets
								un(REMOVED_FROM_GAME, i(115944)),	-- Primal Gladiator's Mail Helm
								un(REMOVED_FROM_GAME, i(115945)),	-- Primal Gladiator's Mail Leggings
								un(REMOVED_FROM_GAME, i(115946)),	-- Primal Gladiator's Mail Spaulders
								un(REMOVED_FROM_GAME, i(115941)),	-- Primal Gladiator's Mail Waistguard
								un(REMOVED_FROM_GAME, i(115936)),	-- Primal Gladiator's Linked Armor
								un(REMOVED_FROM_GAME, i(115937)),	-- Primal Gladiator's Linked Gauntlets
								un(REMOVED_FROM_GAME, i(115938)),	-- Primal Gladiator's Linked Helm
								un(REMOVED_FROM_GAME, i(115939)),	-- Primal Gladiator's Linked Leggings
								un(REMOVED_FROM_GAME, i(115869)),	-- Primal Gladiator's Linked Sabatons
								un(REMOVED_FROM_GAME, i(115940)),	-- Primal Gladiator's Linked Spaulders
								un(REMOVED_FROM_GAME, i(115867)),	-- Primal Gladiator's Linked Waistband
								un(REMOVED_FROM_GAME, i(115931)),	-- Primal Gladiator's Ringmail Armor
								un(REMOVED_FROM_GAME, i(115929)),	-- Primal Gladiator's Ringmail Foodguards
								un(REMOVED_FROM_GAME, i(115932)),	-- Primal Gladiator's Ringmail Gauntlets
								un(REMOVED_FROM_GAME, i(115933)),	-- Primal Gladiator's Ringmail Helm
								un(REMOVED_FROM_GAME, i(115934)),	-- Primal Gladiator's Ringmail Leggings
								un(REMOVED_FROM_GAME, i(115935)),	-- Primal Gladiator's Ringmail Spaulders
								un(REMOVED_FROM_GAME, i(115928)),	-- Primal Gladiator's Ringmail Waistguard
							}),
							cl(WARLOCK, {
								un(REMOVED_FROM_GAME, i(115960)),	-- Primal Gladiator's Felweave Amice
								un(REMOVED_FROM_GAME, i(115825)),	-- Primal Gladiator's Felweave Cord
								un(REMOVED_FROM_GAME, i(115957)),	-- Primal Gladiator's Felweave Cowl
								un(REMOVED_FROM_GAME, i(115956)),	-- Primal Gladiator's Felweave Handguards
								un(REMOVED_FROM_GAME, i(115959)),	-- Primal Gladiator's Felweave Rainment
								un(REMOVED_FROM_GAME, i(115828)),	-- Primal Gladiator's Felweave Treads
								un(REMOVED_FROM_GAME, i(115958)),	-- Primal Gladiator's Felweave Trousers
							}),
							cl(WARRIOR, {
								un(REMOVED_FROM_GAME, i(115961)),	-- Primal Gladiator's Plate Chestpiece
								un(REMOVED_FROM_GAME, i(115962)),	-- Primal Gladiator's Plate Gauntlets
								un(REMOVED_FROM_GAME, i(115907)),	-- Primal Gladiator's Plate Girdle
								un(REMOVED_FROM_GAME, i(115963)),	-- Primal Gladiator's Plate Helm
								un(REMOVED_FROM_GAME, i(115964)),	-- Primal Gladiator's Plate Legguards
								un(REMOVED_FROM_GAME, i(115965)),	-- Primal Gladiator's Plate Shoulders
								un(REMOVED_FROM_GAME, i(115908)),	-- Primal Gladiator's Plate Warboots
							}),
						}),
						n(SEASON_WILD, {
							cl(DEATHKNIGHT, {
								un(REMOVED_FROM_GAME, i(125651)),	-- Wild Gladiator's Dreadplate Chestpiece
								un(REMOVED_FROM_GAME, i(125652)),	-- Wild Gladiator's Dreadplate Gauntlets
								un(REMOVED_FROM_GAME, i(125653)),	-- Wild Gladiator's Dreadplate Helm
								un(REMOVED_FROM_GAME, i(125654)),	-- Wild Gladiator's Dreadplate Legguards
								un(REMOVED_FROM_GAME, i(125655)),	-- Wild Gladiator's Dreadplate Shoulders
								un(REMOVED_FROM_GAME, i(125720)),	-- Wild Gladiator's Dreadplate Girdle
								un(REMOVED_FROM_GAME, i(125723)),	-- Wild Gladiator's Dreadplate Warboots
							}),
							cl(DRUID, {
								un(REMOVED_FROM_GAME, i(125656)),	-- Wild Gladiator's Dragonhide Gloves
								un(REMOVED_FROM_GAME, i(125657)),	-- Wild Gladiator's Dragonhide Helm
								un(REMOVED_FROM_GAME, i(125658)),	-- Wild Gladiator's Dragonhide Legguards
								un(REMOVED_FROM_GAME, i(125659)),	-- Wild Gladiator's Dragonhide Robes
								un(REMOVED_FROM_GAME, i(125660)),	-- Wild Gladiator's Dragonhide Spaulders
								un(REMOVED_FROM_GAME, i(125784)),	-- Wild Gladiator's Dragonhide Footguards
								un(REMOVED_FROM_GAME, i(125785)),	-- Wild Gladiator's Dragonhide Belt
								un(REMOVED_FROM_GAME, i(125661)),	-- Wild Gladiator's Kodohide Belt
								un(REMOVED_FROM_GAME, i(125662)),	-- Wild Gladiator's Kodohide Footguards
								un(REMOVED_FROM_GAME, i(125663)),	-- Wild Gladiator's Kodohide Gloves
								un(REMOVED_FROM_GAME, i(125664)),	-- Wild Gladiator's Kodohide Helm
								un(REMOVED_FROM_GAME, i(125665)),	-- Wild Gladiator's Kodohide Legguards
								un(REMOVED_FROM_GAME, i(125666)),	-- Wild Gladiator's Kodohide Robes
								un(REMOVED_FROM_GAME, i(125667)),	-- Wild Gladiator's Kodohide Spaulders
								un(REMOVED_FROM_GAME, i(125669)),	-- Wild Gladiator's Wyrmhide Belt
								un(REMOVED_FROM_GAME, i(125670)),	-- Wild Gladiator's Wyrmhide Footguards
								un(REMOVED_FROM_GAME, i(125671)),	-- Wild Gladiator's Wyrmhide Gloves
								un(REMOVED_FROM_GAME, i(125672)),	-- Wild Gladiator's Wyrmhide Helm
								un(REMOVED_FROM_GAME, i(125673)),	-- Wild Gladiator's Wyrmhide Legguards
								un(REMOVED_FROM_GAME, i(125674)),	-- Wild Gladiator's Wyrmhide Robes
								un(REMOVED_FROM_GAME, i(125675)),	-- Wild Gladiator's Wyrmhide Spaulders
							}),
							cl(HUNTER, {
								un(REMOVED_FROM_GAME, i(125684)),	-- Wild Gladiator's Chain Armor
								un(REMOVED_FROM_GAME, i(125685)),	-- Wild Gladiator's Chain Gauntlets
								un(REMOVED_FROM_GAME, i(125686)),	-- Wild Gladiator's Chain Helm
								un(REMOVED_FROM_GAME, i(125687)),	-- Wild Gladiator's Chain Leggings
								un(REMOVED_FROM_GAME, i(125688)),	-- Wild Gladiator's Chain Spaulders
							}),
							cl(MAGE, {
								un(REMOVED_FROM_GAME, i(125693)),	-- Wild Gladiator's Silk Amice
								un(REMOVED_FROM_GAME, i(125638)),	-- Wild Gladiator's Silk Cord
								un(REMOVED_FROM_GAME, i(125690)),	-- Wild Gladiator's Silk Cowl
								un(REMOVED_FROM_GAME, i(125689)),	-- Wild Gladiator's Silk Handguards
								un(REMOVED_FROM_GAME, i(125692)),	-- Wild Gladiator's Silk Robe
								un(REMOVED_FROM_GAME, i(125641)),	-- Wild Gladiator's Silk Treads
								un(REMOVED_FROM_GAME, i(125691)),	-- Wild Gladiator's Silk Trousers
							}),
							cl(MONK, {
								un(REMOVED_FROM_GAME, i(125694)),	-- Wild Gladiator's Ironskin Waistband
								un(REMOVED_FROM_GAME, i(125695)),	-- Wild Gladiator's Ironskin boosts
								un(REMOVED_FROM_GAME, i(125696)),	-- Wild Gladiator's Ironskin Gloves
								un(REMOVED_FROM_GAME, i(125697)),	-- Wild Gladiator's Ironskin Helm
								un(REMOVED_FROM_GAME, i(125698)),	-- Wild Gladiator's Ironskin Legguards
								un(REMOVED_FROM_GAME, i(125699)),	-- Wild Gladiator's Ironskin Spaulders
								un(REMOVED_FROM_GAME, i(125700)),	-- Wild Gladiator's Ironskin Tunic
								un(REMOVED_FROM_GAME, i(125701)),	-- Wild Gladiator's Copperskin Gloves
								un(REMOVED_FROM_GAME, i(125702)),	-- Wild Gladiator's Copperskin Helm
								un(REMOVED_FROM_GAME, i(125703)),	-- Wild Gladiator's Copperskin Legguards
								un(REMOVED_FROM_GAME, i(125704)),	-- Wild Gladiator's Copperskin Spaulders
								un(REMOVED_FROM_GAME, i(125705)),	-- Wild Gladiator's Copperskin Tunic
								un(REMOVED_FROM_GAME, i(125780)),	-- Wild Gladiator's Copperskin Boots
								un(REMOVED_FROM_GAME, i(125781)),	-- Wild Gladiator's Copperskin Waistband
							}),
							cl(PALADIN, {
								un(REMOVED_FROM_GAME, i(125706)),	-- Wild Gladiator's Scaled Chestpiece
								un(REMOVED_FROM_GAME, i(125707)),	-- Wild Gladiator's Scaled Gauntlets
								un(REMOVED_FROM_GAME, i(125708)),	-- Wild Gladiator's Scaled Helm
								un(REMOVED_FROM_GAME, i(125709)),	-- Wild Gladiator's Scaled Legguards
								un(REMOVED_FROM_GAME, i(125710)),	-- Wild Gladiator's Scaled Shoulders
								un(REMOVED_FROM_GAME, i(125711)),	-- Wild Gladiator's Scaled Clasp
								un(REMOVED_FROM_GAME, i(125714)),	-- Wild Gladiator's Scaled Greaves
								un(REMOVED_FROM_GAME, i(125712)),	-- Wild Gladiator's Ornamented Clasp
								un(REMOVED_FROM_GAME, i(125713)),	-- Wild Gladiator's Ornamented Greaves
								un(REMOVED_FROM_GAME, i(125715)),	-- Wild Gladiator's Ornamented Chestguard
								un(REMOVED_FROM_GAME, i(125716)),	-- Wild Gladiator's Ornamented Gloves
								un(REMOVED_FROM_GAME, i(125717)),	-- Wild Gladiator's Ornamented Headcover
								un(REMOVED_FROM_GAME, i(125718)),	-- Wild Gladiator's Ornamented LegPlates
								un(REMOVED_FROM_GAME, i(125719)),	-- Wild Gladiator's Ornamented Spaulders
							}),
							cl(PRIEST, {
								un(REMOVED_FROM_GAME, i(125640)),	-- Wild Gladiator's Mooncloth Cord
								un(REMOVED_FROM_GAME, i(125725)),	-- Wild Gladiator's Mooncloth Gloves
								un(REMOVED_FROM_GAME, i(125726)),	-- Wild Gladiator's Mooncloth Hood
								un(REMOVED_FROM_GAME, i(125727)),	-- Wild Gladiator's Mooncloth Leggings
								un(REMOVED_FROM_GAME, i(125729)),	-- Wild Gladiator's Mooncloth manthle
								un(REMOVED_FROM_GAME, i(125728)),	-- Wild Gladiator's Mooncloth Robe
								un(REMOVED_FROM_GAME, i(125643)),	-- Wild Gladiator's Mooncloth trads
								un(REMOVED_FROM_GAME, i(125783)),	-- Wild Gladiator's Satin Cord
								un(REMOVED_FROM_GAME, i(125730)),	-- Wild Gladiator's Satin Gloves
								un(REMOVED_FROM_GAME, i(125731)),	-- Wild Gladiator's Satin Hood
								un(REMOVED_FROM_GAME, i(125732)),	-- Wild Gladiator's Satin Leggings
								un(REMOVED_FROM_GAME, i(125734)),	-- Wild Gladiator's Satin Mantle
								un(REMOVED_FROM_GAME, i(125733)),	-- Wild Gladiator's Satin Robe
								un(REMOVED_FROM_GAME, i(125782)),	-- Wild Gladiator's Satin Treads
							}),
							cl(ROGUE, {
								un(REMOVED_FROM_GAME, i(125735)),	-- Wild Gladiator's Leather Waistband
								un(REMOVED_FROM_GAME, i(125736)),	-- Wild Gladiator's Leather boosts
								un(REMOVED_FROM_GAME, i(125737)),	-- Wild Gladiator's Leather Tunic
								un(REMOVED_FROM_GAME, i(125738)),	-- Wild Gladiator's Leather Gloves
								un(REMOVED_FROM_GAME, i(125739)),	-- Wild Gladiator's Leather Helm
								un(REMOVED_FROM_GAME, i(125740)),	-- Wild Gladiator's Leather Legguards
								un(REMOVED_FROM_GAME, i(125741)),	-- Wild Gladiator's Leather Spaulders
							}),
							cl(SHAMAN, {
								un(REMOVED_FROM_GAME, i(125750)),	-- Wild Gladiator's Linked Armor
								un(REMOVED_FROM_GAME, i(125751)),	-- Wild Gladiator's Linked Gauntlets
								un(REMOVED_FROM_GAME, i(125752)),	-- Wild Gladiator's Linked Helm
								un(REMOVED_FROM_GAME, i(125753)),	-- Wild Gladiator's Linked Leggings
								un(REMOVED_FROM_GAME, i(125683)),	-- Wild Gladiator's Linked Sabatons
								un(REMOVED_FROM_GAME, i(125754)),	-- Wild Gladiator's Linked Spaulders
								un(REMOVED_FROM_GAME, i(125756)),	-- Wild Gladiator's Mail Armor
								un(REMOVED_FROM_GAME, i(125744)),	-- Wild Gladiator's Mail Footguards
								un(REMOVED_FROM_GAME, i(125757)),	-- Wild Gladiator's Mail Gauntlets
								un(REMOVED_FROM_GAME, i(125758)),	-- Wild Gladiator's Mail Helm
								un(REMOVED_FROM_GAME, i(125759)),	-- Wild Gladiator's Mail Leggings
								un(REMOVED_FROM_GAME, i(125760)),	-- Wild Gladiator's Mail Spaulders
								un(REMOVED_FROM_GAME, i(125755)),	-- Wild Gladiator's Mail Waistguard
								un(REMOVED_FROM_GAME, i(125745)),	-- Wild Gladiator's Ringmail Armor
								un(REMOVED_FROM_GAME, i(125743)),	-- Wild Gladiator's Ringmail Footguards
								un(REMOVED_FROM_GAME, i(125746)),	-- Wild Gladiator's Ringmail Gauntlets
								un(REMOVED_FROM_GAME, i(125747)),	-- Wild Gladiator's Ringmail Helm
								un(REMOVED_FROM_GAME, i(125748)),	-- Wild Gladiator's Ringmail Leggings
								un(REMOVED_FROM_GAME, i(125749)),	-- Wild Gladiator's Ringmail Spaulders
								un(REMOVED_FROM_GAME, i(125742)),	-- Wild Gladiator's Ringmail Waistguard
							}),
							cl(WARLOCK, {
								un(REMOVED_FROM_GAME, i(125774)),	-- Wild Gladiator's Felweave Amice
								un(REMOVED_FROM_GAME, i(125639)),	-- Wild Gladiator's Felweave Cord
								un(REMOVED_FROM_GAME, i(125771)),	-- Wild Gladiator's Felweave Cowl
								un(REMOVED_FROM_GAME, i(125770)),	-- Wild Gladiator's Felweave Handguards
								un(REMOVED_FROM_GAME, i(125773)),	-- Wild Gladiator's Felweave Rainment
								un(REMOVED_FROM_GAME, i(125642)),	-- Wild Gladiator's Felweave Treads
								un(REMOVED_FROM_GAME, i(125772)),	-- Wild Gladiator's Felweave Trousers
							}),
							cl(WARRIOR, {
								un(REMOVED_FROM_GAME, i(125721)),	-- Wild Gladiator's Plate Girdle
								un(REMOVED_FROM_GAME, i(125722)),	-- Wild Gladiator's Plate Warboots
								un(REMOVED_FROM_GAME, i(125775)),	-- Wild Gladiator's Plate Chestpiece
								un(REMOVED_FROM_GAME, i(125776)),	-- Wild Gladiator's Plate Gauntlets
								un(REMOVED_FROM_GAME, i(125777)),	-- Wild Gladiator's Plate Helm
								un(REMOVED_FROM_GAME, i(125778)),	-- Wild Gladiator's Plate Legguards
								un(REMOVED_FROM_GAME, i(125779)),	-- Wild Gladiator's Plate Shoulders
							}),
						}),
						n(SEASON_WARMONGERING, {
							cl(DEATHKNIGHT, {
								un(REMOVED_FROM_GAME, i(126765)),	-- Warmongering Gladiator's Dreadplate Chestpiece
								un(REMOVED_FROM_GAME, i(126766)),	-- Warmongering Gladiator's Dreadplate Gauntlets
								un(REMOVED_FROM_GAME, i(126767)),	-- Warmongering Gladiator's Dreadplate Helm
								un(REMOVED_FROM_GAME, i(126768)),	-- Warmongering Gladiator's Dreadplate Legguards
								un(REMOVED_FROM_GAME, i(126769)),	-- Warmongering Gladiator's Dreadplate Shoulders
								un(REMOVED_FROM_GAME, i(126834)),	-- Warmongering Gladiator's Dreadplate Girdle
								un(REMOVED_FROM_GAME, i(126837)),	-- Warmongering Gladiator's Dreadplate Warboots
							}),
							cl(DRUID, {
								un(REMOVED_FROM_GAME, i(126899)),	-- Warmongering Gladiator's Dragonhide Belt
								un(REMOVED_FROM_GAME, i(126898)),	-- Warmongering Gladiator's Dragonhide Footguards
								un(REMOVED_FROM_GAME, i(126770)),	-- Warmongering Gladiator's Dragonhide Gloves
								un(REMOVED_FROM_GAME, i(126771)),	-- Warmongering Gladiator's Dragonhide Helm
								un(REMOVED_FROM_GAME, i(126772)),	-- Warmongering Gladiator's Dragonhide Legguards
								un(REMOVED_FROM_GAME, i(126773)),	-- Warmongering Gladiator's Dragonhide Robes
								un(REMOVED_FROM_GAME, i(126774)),	-- Warmongering Gladiator's Dragonhide Spaulders
								un(REMOVED_FROM_GAME, i(126775)),	-- Warmongering Gladiator's Kodohide Belt
								un(REMOVED_FROM_GAME, i(126776)),	-- Warmongering Gladiator's Kodohide Footguards
								un(REMOVED_FROM_GAME, i(126777)),	-- Warmongering Gladiator's Kodohide Gloves
								un(REMOVED_FROM_GAME, i(126778)),	-- Warmongering Gladiator's Kodohide Helm
								un(REMOVED_FROM_GAME, i(126779)),	-- Warmongering Gladiator's Kodohide Legguards
								un(REMOVED_FROM_GAME, i(126780)),	-- Warmongering Gladiator's Kodohide Robes
								un(REMOVED_FROM_GAME, i(126781)),	-- Warmongering Gladiator's Kodohide Spaulders
								un(REMOVED_FROM_GAME, i(126783)),	-- Warmongering Gladiator's Wyrmhide Belt
								un(REMOVED_FROM_GAME, i(126784)),	-- Warmongering Gladiator's Wyrmhide Footguards
								un(REMOVED_FROM_GAME, i(126785)),	-- Warmongering Gladiator's Wyrmhide Gloves
								un(REMOVED_FROM_GAME, i(126786)),	-- Warmongering Gladiator's Wyrmhide Helm
								un(REMOVED_FROM_GAME, i(126787)),	-- Warmongering Gladiator's Wyrmhide Legguards
								un(REMOVED_FROM_GAME, i(126788)),	-- Warmongering Gladiator's Wyrmhide Robes
								un(REMOVED_FROM_GAME, i(126789)),	-- Warmongering Gladiator's Wyrmhide Spaulders
							}),
							cl(HUNTER, {
								un(REMOVED_FROM_GAME, i(126798)),	-- Warmongering Gladiator's Chain Armor
								un(REMOVED_FROM_GAME, i(126799)),	-- Warmongering Gladiator's Chain Gauntlets
								un(REMOVED_FROM_GAME, i(126800)),	-- Warmongering Gladiator's Chain Helm
								un(REMOVED_FROM_GAME, i(126801)),	-- Warmongering Gladiator's Chain Leggings
								un(REMOVED_FROM_GAME, i(126794)),	-- Warmongering Gladiator's Chain Links
								un(REMOVED_FROM_GAME, i(126796)),	-- Warmongering Gladiator's Chain Sabatons
								un(REMOVED_FROM_GAME, i(126802)),	-- Warmongering Gladiator's Chain Spaulders
							}),
							cl(MAGE, {
								un(REMOVED_FROM_GAME, i(126807)),	-- Warmongering Gladiator's Silk Amice
								un(REMOVED_FROM_GAME, i(126752)),	-- Warmongering Gladiator's Silk Cord
								un(REMOVED_FROM_GAME, i(126804)),	-- Warmongering Gladiator's Silk Cowl
								un(REMOVED_FROM_GAME, i(126803)),	-- Warmongering Gladiator's Silk Handguards
								un(REMOVED_FROM_GAME, i(126806)),	-- Warmongering Gladiator's Silk Robe
								un(REMOVED_FROM_GAME, i(126755)),	-- Warmongering Gladiator's Silk Treads
								un(REMOVED_FROM_GAME, i(126805)),	-- Warmongering Gladiator's Silk Trousers
							}),
							cl(MONK, {
								un(REMOVED_FROM_GAME, i(126809)),	-- Warmongering Gladiator's Ironskin boosts
								un(REMOVED_FROM_GAME, i(126810)),	-- Warmongering Gladiator's Ironskin Gloves
								un(REMOVED_FROM_GAME, i(126811)),	-- Warmongering Gladiator's Ironskin Helm
								un(REMOVED_FROM_GAME, i(126812)),	-- Warmongering Gladiator's Ironskin Legguards
								un(REMOVED_FROM_GAME, i(126813)),	-- Warmongering Gladiator's Ironskin Spaulders
								un(REMOVED_FROM_GAME, i(126814)),	-- Warmongering Gladiator's Ironskin Tunic
								un(REMOVED_FROM_GAME, i(126808)),	-- Warmongering Gladiator's Ironskin Waistband
								un(REMOVED_FROM_GAME, i(126894)),	-- Warmongering Gladiator's Copperskin Boots
								un(REMOVED_FROM_GAME, i(126815)),	-- Warmongering Gladiator's Copperskin Gloves
								un(REMOVED_FROM_GAME, i(126816)),	-- Warmongering Gladiator's Copperskin Helm
								un(REMOVED_FROM_GAME, i(126817)),	-- Warmongering Gladiator's Copperskin Legguards
								un(REMOVED_FROM_GAME, i(126818)),	-- Warmongering Gladiator's Copperskin Spaulders
								un(REMOVED_FROM_GAME, i(126819)),	-- Warmongering Gladiator's Copperskin Tunic
								un(REMOVED_FROM_GAME, i(126895)),	-- Warmongering Gladiator's Copperskin Waistband
							}),
							cl(PALADIN, {
								un(REMOVED_FROM_GAME, i(126826)),	-- Warmongering Gladiator's Ornamented Clasp
								un(REMOVED_FROM_GAME, i(126827)),	-- Warmongering Gladiator's Ornamented Greaves
								un(REMOVED_FROM_GAME, i(126829)),	-- Warmongering Gladiator's Ornamented Chestguard
								un(REMOVED_FROM_GAME, i(126830)),	-- Warmongering Gladiator's Ornamented Gloves
								un(REMOVED_FROM_GAME, i(126831)),	-- Warmongering Gladiator's Ornamented Headcover
								un(REMOVED_FROM_GAME, i(126832)),	-- Warmongering Gladiator's Ornamented LegPlates
								un(REMOVED_FROM_GAME, i(126833)),	-- Warmongering Gladiator's Ornamented Spaulders
								un(REMOVED_FROM_GAME, i(126820)),	-- Warmongering Gladiator's Scaled Chestpiece
								un(REMOVED_FROM_GAME, i(126821)),	-- Warmongering Gladiator's Scaled Gauntlets
								un(REMOVED_FROM_GAME, i(126822)),	-- Warmongering Gladiator's Scaled Helm
								un(REMOVED_FROM_GAME, i(126823)),	-- Warmongering Gladiator's Scaled Legguards
								un(REMOVED_FROM_GAME, i(126824)),	-- Warmongering Gladiator's Scaled Shoulders
								un(REMOVED_FROM_GAME, i(126825)),	-- Warmongering Gladiator's Scaled Clasp
								un(REMOVED_FROM_GAME, i(126828)),	-- Warmongering Gladiator's Scaled Greaves
							}),
							cl(PRIEST, {
								un(REMOVED_FROM_GAME, i(126754)),	-- Warmongering Gladiator's Mooncloth Cord
								un(REMOVED_FROM_GAME, i(126839)),	-- Warmongering Gladiator's Mooncloth Gloves
								un(REMOVED_FROM_GAME, i(126840)),	-- Warmongering Gladiator's Mooncloth Hood
								un(REMOVED_FROM_GAME, i(126841)),	-- Warmongering Gladiator's Mooncloth Leggings
								un(REMOVED_FROM_GAME, i(126843)),	-- Warmongering Gladiator's Mooncloth manthle
								un(REMOVED_FROM_GAME, i(126842)),	-- Warmongering Gladiator's Mooncloth Robe
								un(REMOVED_FROM_GAME, i(126757)),	-- Warmongering Gladiator's Mooncloth Treads
								un(REMOVED_FROM_GAME, i(126897)),	-- Warmongering Gladiator's Satin Cord
								un(REMOVED_FROM_GAME, i(126844)),	-- Warmongering Gladiator's Satin Gloves
								un(REMOVED_FROM_GAME, i(126845)),	-- Warmongering Gladiator's Satin Hood
								un(REMOVED_FROM_GAME, i(126846)),	-- Warmongering Gladiator's Satin Leggings
								un(REMOVED_FROM_GAME, i(126848)),	-- Warmongering Gladiator's Satin Mantle
								un(REMOVED_FROM_GAME, i(126847)),	-- Warmongering Gladiator's Satin Robe
								un(REMOVED_FROM_GAME, i(126896)),	-- Warmongering Gladiator's Satin Treads
							}),
							cl(ROGUE, {
								un(REMOVED_FROM_GAME, i(126850)),	-- Warmongering Gladiator's Leather boosts
								un(REMOVED_FROM_GAME, i(126852)),	-- Warmongering Gladiator's Leather Gloves
								un(REMOVED_FROM_GAME, i(126853)),	-- Warmongering Gladiator's Leather Helm
								un(REMOVED_FROM_GAME, i(126854)),	-- Warmongering Gladiator's Leather Legguards
								un(REMOVED_FROM_GAME, i(126855)),	-- Warmongering Gladiator's Leather Spaulders
								un(REMOVED_FROM_GAME, i(126851)),	-- Warmongering Gladiator's Leather Tunic
								un(REMOVED_FROM_GAME, i(126849)),	-- Warmongering Gladiator's Leather Waistband
							}),
							cl(SHAMAN, {
								un(REMOVED_FROM_GAME, i(126864)),	-- Warmongering Gladiator's Linked Armor
								un(REMOVED_FROM_GAME, i(126865)),	-- Warmongering Gladiator's Linked Gauntlets
								un(REMOVED_FROM_GAME, i(126866)),	-- Warmongering Gladiator's Linked Helm
								un(REMOVED_FROM_GAME, i(126867)),	-- Warmongering Gladiator's Linked Leggings
								un(REMOVED_FROM_GAME, i(126797)),	-- Warmongering Gladiator's Linked Sabatons
								un(REMOVED_FROM_GAME, i(126868)),	-- Warmongering Gladiator's Linked Spaulders
								un(REMOVED_FROM_GAME, i(126795)),	-- Warmongering Gladiator's Linked Waistband
								un(REMOVED_FROM_GAME, i(126870)),	-- Warmongering Gladiator's Mail Armor
								un(REMOVED_FROM_GAME, i(126858)),	-- Warmongering Gladiator's Mail Footguards
								un(REMOVED_FROM_GAME, i(126871)),	-- Warmongering Gladiator's Mail Gauntlets
								un(REMOVED_FROM_GAME, i(126872)),	-- Warmongering Gladiator's Mail Helm
								un(REMOVED_FROM_GAME, i(126873)),	-- Warmongering Gladiator's Mail Leggings
								un(REMOVED_FROM_GAME, i(126874)),	-- Warmongering Gladiator's Mail Spaulders
								un(REMOVED_FROM_GAME, i(126869)),	-- Warmongering Gladiator's Mail Waistguard
								un(REMOVED_FROM_GAME, i(126859)),	-- Warmongering Gladiator's Ringmail Armor
								un(REMOVED_FROM_GAME, i(126857)),	-- Warmongering Gladiator's Ringmail Footguards
								un(REMOVED_FROM_GAME, i(126860)),	-- Warmongering Gladiator's Ringmail Gauntlets
								un(REMOVED_FROM_GAME, i(126861)),	-- Warmongering Gladiator's Ringmail Helm
								un(REMOVED_FROM_GAME, i(126862)),	-- Warmongering Gladiator's Ringmail Leggings
								un(REMOVED_FROM_GAME, i(126863)),	-- Warmongering Gladiator's Ringmail Spaulders
								un(REMOVED_FROM_GAME, i(126856)),	-- Warmongering Gladiator's Ringmail Waistguard
							}),
							cl(WARLOCK, {
								un(REMOVED_FROM_GAME, i(126888)),	-- Warmongering Gladiator's Felweave Amice
								un(REMOVED_FROM_GAME, i(126753)),	-- Warmongering Gladiator's Felweave Cord
								un(REMOVED_FROM_GAME, i(126885)),	-- Warmongering Gladiator's Felweave Cowl
								un(REMOVED_FROM_GAME, i(126884)),	-- Warmongering Gladiator's Felweave Handguards
								un(REMOVED_FROM_GAME, i(126887)),	-- Warmongering Gladiator's Felweave Rainment
								un(REMOVED_FROM_GAME, i(126756)),	-- Warmongering Gladiator's Felweave Treads
								un(REMOVED_FROM_GAME, i(126886)),	-- Warmongering Gladiator's Felweave Trousers
							}),
							cl(WARRIOR, {
								un(REMOVED_FROM_GAME, i(126835)),	-- Warmongering Gladiator's Plate Girdle
								un(REMOVED_FROM_GAME, i(126836)),	-- Warmongering Gladiator's Plate Warboots
								un(REMOVED_FROM_GAME, i(126889)),	-- Warmongering Gladiator's Plate Chestpiece
								un(REMOVED_FROM_GAME, i(126890)),	-- Warmongering Gladiator's Plate Gauntlets
								un(REMOVED_FROM_GAME, i(126891)),	-- Warmongering Gladiator's Plate Helm
								un(REMOVED_FROM_GAME, i(126892)),	-- Warmongering Gladiator's Plate Legguards
								un(REMOVED_FROM_GAME, i(126893)),	-- Warmongering Gladiator's Plate Shoulders
							}),
						}),
					},
				}),
			}),
			n(ZONE_DROPS, {
				i(112128, {	-- Blood Elf Ear
					["description"] = "Can be looted from enemy Blood Elf players.",
					["races"] = ALLIANCE_ONLY,
				}),
				i(112121, {	-- Draenei Tail
					["description"] = "Can be looted from enemy Draenei players.",
					["races"] = HORDE_ONLY,
				}),
				i(112126, {	-- Dwarf Spine
					["description"] = "Can be looted from enemy Dwarf players.",
					["races"] = HORDE_ONLY,
				}),
				i(112015, {	-- Forsaken Brains
					["description"] = "Can be looted from enemy Forsaken players.",
					["races"] = ALLIANCE_ONLY,
				}),
				i(112125, {	-- Goblin Nose
					["description"] = "Can be looted from enemy Goblin players.",
					["races"] = ALLIANCE_ONLY,
				}),
				i(112131, {	-- Human Bone Chip
					["description"] = "Can be looted from enemy Human players.",
					["races"] = HORDE_ONLY,
				}),
				i(184042, {	-- Nightborne Liver
					["description"] = "Can be looted from enemy Nightborne players... although interestingly enough Horde players can loot this from Void Elves. (Albeit they can't turn it in anywhere.)",
					["timeline"] = { ADDED_9_0_1 },
					["races"] = ALLIANCE_ONLY,
				}),
				i(112122, {	-- Orc Tooth
					["description"] = "Can be looted from enemy Orc players.",
					["races"] = ALLIANCE_ONLY,
				}),
				i(112113, {	-- Pandaren Hide
					["description"] = "Can be looted from enemy Pandaren players.",
				}),
				i(112124, {	-- Severed Night Elf Head
					["description"] = "Can be looted from enemy Night Elf players.",
					["races"] = HORDE_ONLY,
				}),
				i(112123, {	-- Tauren Hoof
					["description"] = "Can be looted from enemy Tauren players.",
					["races"] = ALLIANCE_ONLY,
				}),
				i(112120, {	-- Troll Feet
					["description"] = "Can be looted from enemy Troll players.",
					["races"] = ALLIANCE_ONLY,
				}),
				i(112127, {	-- Tuft of Gnome Hair
					["description"] = "Can be looted from enemy Gnome players.",
					["races"] = HORDE_ONLY,
				}),
				i(112119, {	-- Worgen Snout
					["description"] = "Can be looted from enemy Worgen players.",
					["races"] = HORDE_ONLY,
				}),
				i(114842),	-- Book of Flight Form [Druid]
				i(111926),	-- Codex of Ascension [Priest]
				i(168326, { ["timeline"] = { ADDED_8_2_0 } }),	-- Eye of Theras [Demon Hunter]
				i(116984),	-- Frost Wyrm Egg
				i(114848),	-- Grimoire Of Convert Demon [Warlock]
				i(112154),	-- Guide: Disengage [Hunter]
				i(120327),	-- Guide: Sharpshooting [Hunter]
				i(114843),	-- Handbook: Pick Pocket [Rogue]
				i(114849),	-- Manual Of Heroic Leap [Warrior]
				i(118425),	-- Nesingwary's Lost Horn
				i(118426),	-- Scroll of Invoke Yu'Lon, the Jade Serpent
				i(116411),	-- Scroll of Protection
				i(119183),	-- Scroll of Risky Recall
				i(116410),	-- Scroll of Speed
				i(114844),	-- Scroll of Touch of Fatality [Monk]
				i(114846),	-- Sigil of Death Grip [Death Knight]
				i(116140),	-- Stormshield Prison Key
				i(114847),	-- Tablet of Ghost Wolf [Shaman]
				i(112005),	-- The Jailer's Libram [Paladin]
				i(114845),	-- Tome of Blink [Mage]
				i(118333),	-- Universal Language Compensator [Part 1 of 3]
				i(118334),	-- Universal Language Filter [Part 2 of 3]
				i(118335),	-- Universal Language Repository [Part 3 of 3]
				i(117016),	-- Wand of Arcane Imprisonment
				i(117013),	-- Wand of Lightning Shield
				i(116141),	-- Warspear Prison Key
			}),
			i(118093),	-- Dented Ashmaul Strongbox A
			i(118094),	-- Dented Ashmaul Strongbox H
			i(118066),	-- Ashmaul Strongbox S1
			i(118065),	-- Gleaming Ashmaul Strongbox S1
			i(120184),	-- Ashmaul Strongbox S2-S3
			i(120151),	-- Gleaming Ashmaul Strongbox S2-S3
			i(128213),	-- Dented Ashmaul Strongbox A S2
			i(128214),	-- Dented Ashmaul Strongbox H S2
			i(128215, {	-- Dented Ashmaul Strongbox H S3
				["u"] = REMOVED_FROM_GAME,
				["groups"] = {
					i(134705),	-- Surging Chain Leggings
				},
			}),
			i(128216, {	-- Dented Ashmaul Strongbox A S3
				["u"] = REMOVED_FROM_GAME,
			}),
		},
	}),
})));
