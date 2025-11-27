-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------

root(ROOTS.ExpansionFeatures,
	expansion(EXPANSION.WOD, {
		n(QUALITY_LEGENDARY, {
			["title"] = "Darkness Incarnate",
			["icon"] = 1097305,
			["isRaid"] = true,
			["lvl"] = 100,
			["maps"] = {
				LUNARFALL,
				FROSTWALL,
				TALADOR,
				601,	-- Skyreach
				602,	-- Skyreach
				573,	-- Bloodmaul Slag Mines
				606,	-- Grimrail Depot
				607,	-- Grimrail Depot
				608,	-- Grimrail Depot
				609,	-- Grimrail Depot
				620,	-- The Everbloom
				621,	-- The Everbloom
				593,	-- Auchindoun
				DRAENOR_NAGRAND,
				TANAAN_JUNGLE,
				610,	-- Highmaul
				611,	-- Highmaul
				612,	-- Highmaul
				613,	-- Highmaul
				614,	-- Highmaul
				615,	-- Highmaul
				598,	-- Blackrock Foundry
				596,	-- Blackrock Foundry
				597,	-- Blackrock Foundry
				599,	-- Blackrock Foundry
				600,	-- Blackrock Foundry
				DRAENOR_SHADOWMOON_VALLEY,
				FROSTFIRE_RIDGE,
				661,	-- Hellfire Citadel
				662,	-- Hellfire Citadel
				663,	-- Hellfire Citadel
				664,	-- Hellfire Citadel
				665,	-- Hellfire Citadel
				666,	-- Hellfire Citadel
				667,	-- Hellfire Citadel
				668,	-- Hellfire Citadel
				669,	-- Hellfire Citadel
				670,	-- Hellfire Citadel
			},
			["groups"] = {
				-- Pre
				q(35988, {	-- Call of the Archmage
					["qg"] = 83858,	-- Khadgar's Servant
					["coords"] = {
						{ 46.0, 50.6, LUNARFALL },
						{ 52.0, 40.0, FROSTWALL },
					},
					["timeline"] = {
						ADDED_6_0_2,
						REMOVED_7_0_3,
					},
				}),
				q(36157, {	-- Spires of the Betrayer
					["sourceQuest"] = 35988,	-- Call of the Archmage
					["qg"] = 83823,	-- Archmage Khadgar <Sons of Lothar>
					["coord"] = { 85.2, 31.6, TALADOR },
					["timeline"] = {
						ADDED_6_0_2,
						REMOVED_7_0_3,
					},
				}),
				q(35989, {	-- Khadgar's Task
					["sourceQuest"] = 36157,	-- Spires of the Betrayer
					["qg"] = 83823,	-- Archmage Khadgar <Sons of Lothar>
					["coord"] = { 85.2, 31.6, TALADOR },
					["timeline"] = {
						ADDED_6_0_2,
						REMOVED_7_0_3,
					},
					["groups"] = {
						un(REMOVED_FROM_GAME, i(118292)),	-- Solium Band of Dexterity
						un(REMOVED_FROM_GAME, i(118293)),	-- Solium Band of Endurance
						un(REMOVED_FROM_GAME, i(118294)),	-- Solium Band of Mending
						un(REMOVED_FROM_GAME, i(118290)),	-- Solium Band of Might
						un(REMOVED_FROM_GAME, i(118291)),	-- Solium Band of Wisdom
					},
				}),
				-- Part 1
				q(35990, {	-- Core of Flame
					["sourceQuest"] = 35989,	-- Khadgar's Task
					["qg"] = 83823,	-- Archmage Khadgar <Sons of Lothar>
					["coord"] = { 85.2, 31.6, TALADOR },
					["timeline"] = {
						ADDED_6_0_2,
						REMOVED_7_0_3,
					},
				}),
				q(35991, {	-- Core of Iron
					["sourceQuest"] = 35989,	-- Khadgar's Task
					["qg"] = 83823,	-- Archmage Khadgar <Sons of Lothar>
					["coord"] = { 85.2, 31.6, TALADOR },
					["timeline"] = {
						ADDED_6_0_2,
						REMOVED_7_0_3,
					},
				}),
				q(35992, {	-- Core of Life
					["sourceQuest"] = 35989,	-- Khadgar's Task
					["qg"] = 83823,	-- Archmage Khadgar <Sons of Lothar>
					["coord"] = { 85.2, 31.6, TALADOR },
					["timeline"] = {
						ADDED_6_0_2,
						REMOVED_7_0_3,
					},
				}),
				q(36158, {	-- Draenor's Secret Power
					["sourceQuest"] = 35989,	-- Khadgar's Task
					["qg"] = 83823,	-- Archmage Khadgar <Sons of Lothar>
					["coord"] = { 85.2, 31.6, TALADOR },
					["timeline"] = {
						ADDED_6_0_2,
						REMOVED_7_0_3,
					},
					["cost"] = {{ "c", APEXIS_CRYSTAL, 4986 }},
				}),
				q(35993, {	-- Tackling Teron'gor
					["sourceQuests"] = {
						35990,	-- Core of Flame
						35991,	-- Core of Iron
						35992,	-- Core of Life
					},
					["qg"] = 83823,	-- Archmage Khadgar <Sons of Lothar>
					["coord"] = { 85.2, 31.6, TALADOR },
					["timeline"] = {
						ADDED_6_0_2,
						REMOVED_7_0_3,
					},
				}),
				q(35994, {	-- Eyes of the Archmage
					["sourceQuests"] = {
						35993,	-- Tackling Teron'gor
						36158,	-- Draenor's Secret Power
					},
					["qg"] = 83823,	-- Archmage Khadgar <Sons of Lothar>
					["coord"] = { 85.2, 31.6, TALADOR },
					["timeline"] = {
						ADDED_6_0_2,
						REMOVED_7_0_3,
					},
				}),
				q(36000, {	-- Fugitive Dragon
					["sourceQuest"] = 35994,	-- Eyes of the Archmage
					["qg"] = 83823,	-- Archmage Khadgar <Sons of Lothar>
					["coord"] = { 85.2, 31.6, TALADOR },
					["timeline"] = {
						ADDED_6_0_2,
						REMOVED_7_0_3,
					},
				}),
				q(36206, {	-- The Dragon's Tale
					["sourceQuest"] = 35994,	-- Eyes of the Archmage
					["qg"] = 84702,	-- Archmage Khadgar <Sons of Lothar>
					["coord"] = { 77.2, 36.8, DRAENOR_NAGRAND },
					["timeline"] = {
						ADDED_6_0_2,
						REMOVED_7_0_3,
					},
				}),
				q(35995, {	-- Tarnished Bronze
					["sourceQuest"] = 36206,	-- The Dragon's Tale
					["qg"] = 84702,	-- Archmage Khadgar <Sons of Lothar>
					["coord"] = { 92.4, 31.4, DRAENOR_NAGRAND },
					["timeline"] = {
						ADDED_6_0_2,
						REMOVED_7_0_3,
					},
					["groups"] = {
						un(REMOVED_FROM_GAME, ach(9640)),	-- Chapter I: Call of the Archmage
					},
				}),
				q(36004, {	-- Power Unleashed
					["sourceQuest"] = 35995,	-- Tarnished Bronze
					["qg"] = 84702,	-- Archmage Khadgar <Sons of Lothar>
					["coord"] = { 92.4, 31.4, DRAENOR_NAGRAND },
					["timeline"] = {
						ADDED_6_0_2,
						REMOVED_7_0_3,
					},
					["groups"] = {
						un(REMOVED_FROM_GAME, i(118295)),	-- Timeless Solium Band of Brutality
						un(REMOVED_FROM_GAME, i(118299)),	-- Timeless Solium Band of Lifegiving
						un(REMOVED_FROM_GAME, i(118296)),	-- Timeless Solium Band of the Archmage
						un(REMOVED_FROM_GAME, i(118297)),	-- Timeless Solium Band of the Assassin
						un(REMOVED_FROM_GAME, i(118298)),	-- Timeless Solium Band of the Bulwark
					},
				}),
				-- Part 2
				q(35997, {	-- Empire's Fall
					["sourceQuests"] = {
						36004,	-- Power Unleashed
						39022,	-- Call of the Archmage	TODO:Check this
					},
					["qg"] = 83823,	-- Archmage Khadgar <Sons of Lothar>
					["coord"] = { 85.2, 31.6, TALADOR },
					["timeline"] = {
						ADDED_6_0_2,
						REMOVED_7_0_3,
					},
					["groups"] = {
						i(115288, {	-- Felbreaker's Tome (QI!)
							["cr"] = 79015,	-- Ko'ragh <Breaker of Magic>
						}),
						i(115289, {	-- Sigil of the Sorcerer King (QI!)
							["cr"] = 77428,	-- Imperator Mar'gok <Sorcerer King>
						}),
					},
				}),
				q(35998, {	-- Legacy of the Sorcerer Kings
					["sourceQuests"] = {
						36004,	-- Power Unleashed
						39022,	-- Call of the Archmage	TODO:Check this
					},
					["qg"] = 83823,	-- Archmage Khadgar <Sons of Lothar>
					["coord"] = { 85.2, 31.6, TALADOR },
					["timeline"] = {
						ADDED_6_0_2,
						REMOVED_7_0_3,
					},
					["groups"] = {
						i(115280, {	-- Abrogator Stone (QI!)
							["crs"] = {
								78714,	-- Kargath
								77404,	-- The Butcher
								78491,	-- Brackenspore
								78948,	-- Tectus
								78237,	-- Twin Ogron (Phemos)
								78238,	-- Twin Ogron (Pol)
								79015,	-- Ko'ragh
								77428,	-- Imperator Mar'gok
							},
						}),
						i(115981, {	-- Abrogator Stone Cluster (QI!)
							["crs"] = {
								78714,	-- Kargath
								77404,	-- The Butcher
								78491,	-- Brackenspore
								78948,	-- Tectus
								78237,	-- Twin Ogron (Phemos)
								78238,	-- Twin Ogron (Pol)
								79015,	-- Ko'ragh
								77428,	-- Imperator Mar'gok
							},
						}),
					},
				}),
				q(40235, {	-- Abrogator Arbitrator
					["sourceQuest"] = 35998,	-- Legacy of the Sorcerer Kings
					["qg"] = 99180,	-- Kluk'kluk <Highmaul Turncoat>
					["coords"] = {
						{ 57.0, 58.6, TANAAN_JUNGLE },
						{ 59.6, 46.2, TANAAN_JUNGLE },
					},
					["timeline"] = {
						ADDED_6_2_2,
						REMOVED_7_0_3,
					},
					["cost"] = {{ "c", APEXIS_CRYSTAL, 14958 }},
					["isWeekly"] = true,
				}),
				q(36005, {	-- The Scrying Game
					["sourceQuests"] = {
						35997,	-- Empire's Fall
						35998,	-- Legacy of the Sorcerer Kings
					},
					["qg"] = 83823,	-- Archmage Khadgar <Sons of Lothar>
					["coord"] = { 85.2, 31.6, TALADOR },
					["timeline"] = {
						ADDED_6_0_3_LAUNCH,
						REMOVED_7_0_3,
					},
				}),
				q(36006, {	-- Hunter: Hunted
					["sourceQuest"] = 36005,	-- The Scrying Game
					["qg"] = 83929,	-- Cordana Felsong <Warden>
					["coord"] = { 84.8, 31.4, TALADOR },
					["timeline"] = {
						ADDED_6_0_3_LAUNCH,
						REMOVED_7_0_3,
					},
					["groups"] = {
						un(REMOVED_FROM_GAME, ach(9641)),	-- Chapter II: Gul'dan Strikes Back
					},
				}),
				q(36007, {	-- Touch of the Kirin-Tor
					["sourceQuest"] = 36006,	-- Hunter: Hunted
					["qg"] = 83823,	-- Archmage Khadgar <Sons of Lothar>
					["coord"] = { 85.2, 31.6, TALADOR },
					["timeline"] = {
						ADDED_6_0_3_LAUNCH,
						REMOVED_7_0_3,
					},
					["groups"] = {
						un(REMOVED_FROM_GAME, i(118302)),	-- Spellbound Solium Band of Fatal Strikes
						un(REMOVED_FROM_GAME, i(118303)),	-- Spellbound Solium Band of Sorcerous Invincibility
						un(REMOVED_FROM_GAME, i(118300)),	-- Spellbound Solium Band of Sorcerous Strength
						un(REMOVED_FROM_GAME, i(118304)),	-- Spellbound Solium Band of the Immortal Spirit
						un(REMOVED_FROM_GAME, i(118301)),	-- Spellbound Solium Band of the Kirin-Tor
					},
				}),
				-- Part 3
				q(36013, {	-- Might of the Elemental Lords
					["sourceQuest"] = 36007,	-- Touch of the Kirin-Tor
					["qg"] = 83823,	-- Archmage Khadgar <Sons of Lothar>
					["coord"] = { 85.2, 31.6, TALADOR },
					["timeline"] = {
						ADDED_6_0_3_LAUNCH,
						REMOVED_7_0_3,
					},
					["groups"] = {
						un(REMOVED_FROM_GAME, ach(9642, { crit(26488) }) ),	-- Chapter III: The Foundry Falls
					},
				}),
				q(36009, {	-- Heart of the Fury
					["sourceQuest"] = 36007,	-- Touch of the Kirin-Tor
					["qg"] = 83823,	-- Archmage Khadgar <Sons of Lothar>
					["coord"] = { 85.2, 31.6, TALADOR },
					["timeline"] = {
						ADDED_6_0_3_LAUNCH,
						REMOVED_7_0_3,
					},
				}),
				q(36010, {	-- Flamebender's Tome
					["sourceQuest"] = 36007,	-- Touch of the Kirin-Tor
					["qg"] = 83823,	-- Archmage Khadgar <Sons of Lothar>
					["coord"] = { 85.2, 31.6, TALADOR },
					["timeline"] = {
						ADDED_6_0_3_LAUNCH,
						REMOVED_7_0_3,
					},
				}),
				q(36012, {	-- Reverse Piracy
					["sourceQuest"] = 36007,	-- Touch of the Kirin-Tor
					["qg"] = 83823,	-- Archmage Khadgar <Sons of Lothar>
					["coord"] = { 85.2, 31.6, TALADOR },
					["timeline"] = {
						ADDED_6_0_3_LAUNCH,
						REMOVED_7_0_3,
					},
				}),
				q(40237, {	-- Work Work Stoppage
					["sourceQuest"] = 36013,	-- Might of the Elemental Lords
					["qg"] = 99183,	-- Renegade Ironworker <Blackrock Foundry Strike Organizer>
					["coords"] = {
						{ 58.0, 58.6, TANAAN_JUNGLE },
						{ 59.8, 46.2, TANAAN_JUNGLE },
					},
					["timeline"] = {
						ADDED_6_2_2,
						REMOVED_7_0_3,
					},
					["cost"] = {{ "c", APEXIS_CRYSTAL, 20000 }},
					["isWeekly"] = true,
				}),
				q(36014, {	-- Blackhand's Secret
					["sourceQuests"] = {
						36010,	-- Flamebender's Tome
						36009,	-- Heart of the Fury
						36013,	-- Might of the Elemental Lords
						36012,	-- Reverse Piracy
					},
					["qg"] = 83823,	-- Archmage Khadgar <Sons of Lothar>
					["coord"] = { 85.2, 31.6, TALADOR },
					["timeline"] = {
						ADDED_6_1_0,
						REMOVED_7_0_3,
					},
					["groups"] = {
						un(REMOVED_FROM_GAME, ach(9642, { crit(26487) }) ),	-- Chapter III: The Foundry Falls
					},
				}),
				q(36016, {	-- The Unbroken Circle
					["sourceQuests"] = {
						36010,	-- Flamebender's Tome
						36009,	-- Heart of the Fury
						36013,	-- Might of the Elemental Lords
						36012,	-- Reverse Piracy
					},
					["qg"] = 83823,	-- Archmage Khadgar <Sons of Lothar>
					["coord"] = { 85.2, 31.6, TALADOR },
					["timeline"] = {
						ADDED_6_1_0,
						REMOVED_7_0_3,
					},
					["groups"] = {
						un(REMOVED_FROM_GAME, i(118308)),	-- Spellbound Runic Band of Elemental Invincibility
						un(REMOVED_FROM_GAME, i(118305)),	-- Spellbound Runic Band of Elemental Power
						un(REMOVED_FROM_GAME, i(118309)),	-- Spellbound Runic Band of Infinite Preservation
						un(REMOVED_FROM_GAME, i(118306)),	-- Spellbound Runic Band of the All-Seeing Eye
						un(REMOVED_FROM_GAME, i(118307)),	-- Spellbound Runic Band of Unrelenting Slaughter
					},
				}),
				-- Garona
				q(36018, {	-- We're Not Finished...
					["sourceQuests"] = {
						36014,	-- Blackhand's Secret
						36016,	-- The Unbroken Circle
					},
					["qg"] = 83823,	-- Archmage Khadgar <Sons of Lothar>
					["coord"] = { 85.2, 31.6, TALADOR },
					["timeline"] = {
						ADDED_6_0_3_LAUNCH,
						REMOVED_7_0_3,
					},
					["isBreadcrumb"] = true,
				}),
				q(39023, {	-- Call of the Archmage
					["sourceQuests"] = {
						36014,	-- Blackhand's Secret
						36016,	-- The Unbroken Circle
					},
					["timeline"] = {
						ADDED_6_2_0,
						REMOVED_7_0_3,
					},
					["isBreadcrumb"] = true,
					-- Can't find provider
				}),
				q(36017, {	-- Prisoner of the Mind
					["sourceQuests"] = {
						36014,	-- Blackhand's Secret
						36016,	-- The Unbroken Circle
						36018,	-- We're Not Finished...
						39023,	-- Call of the Archmage
					},
					["qg"] = 83823,	-- Archmage Khadgar <Sons of Lothar>
					["coord"] = { 85.2, 31.6, TALADOR },
					["timeline"] = {
						ADDED_6_1_0,
						REMOVED_7_0_3,
					},
				}),
				q(37835, {	-- The Shadow War
					["sourceQuest"] = 36017,	-- Prisoner of the Mind
					["qg"] = 83823,	-- Archmage Khadgar <Sons of Lothar>
					["coord"] = { 85.2, 31.6, TALADOR },
					["timeline"] = {
						ADDED_6_1_0,
						REMOVED_7_0_3,
					},
				}),
				q(37834, {	-- Orb of Dominion
					["sourceQuest"] = 36017,	-- Prisoner of the Mind
					["qg"] = 83823,	-- Archmage Khadgar <Sons of Lothar>
					["coord"] = { 85.2, 31.6, TALADOR },
					["timeline"] = {
						ADDED_6_1_0,
						REMOVED_7_0_3,
					},
				}),
				q(37836, {	-- Breaking Badness
					["sourceQuest"] = 37834,	-- Orb of Dominion
					["qg"] = 83823,	-- Archmage Khadgar <Sons of Lothar>
					["coord"] = { 85.2, 31.6, TALADOR },
					["timeline"] = {
						ADDED_6_1_0,
						REMOVED_7_0_3,
					},
				}),
				q(37964, {	-- To Gul'dan!
					["sourceQuest"] = 37836,	-- Breaking Badness
					["qg"] = 83823,	-- Archmage Khadgar <Sons of Lothar>
					["coord"] = { 85.2, 31.6, TALADOR },
					["timeline"] = {
						ADDED_6_1_0,
						REMOVED_7_0_3,
					},
				}),
				q(37837, {	-- An Inside Job
					["sourceQuest"] = 37964,	-- To Gul'dan!
					["qg"] = 90233,	-- Archmage Khadgar <Sons of Lothar>
					["coord"] = { 67.4, 6.6, TALADOR },
					["timeline"] = {
						ADDED_6_1_0,
						REMOVED_7_0_3,
					},
				}),
				q(37838, {	-- My Garona
					["sourceQuest"] = 37837,	-- An Inside Job
					["qg"] = 90237,	-- Garona Halforcen
					["coord"] = { 67.4, 6.6, TALADOR },
					["timeline"] = {
						ADDED_6_1_0,
						REMOVED_7_0_3,
					},
					["groups"] = {
						un(REMOVED_FROM_GAME, follower(466)),	-- Garona Halforcen
					},
				}),
				q(37841, {	-- The Final Assault
					["sourceQuest"] = 37837,	-- An Inside Job
					["qg"] = 90233,	-- Archmage Khadgar <Sons of Lothar>
					["coord"] = { 67.4, 6.6, TALADOR },
					["timeline"] = {
						ADDED_6_1_0,
						REMOVED_7_0_3,
					},
				}),
				-- Part 4
				q(39024, {	-- Call of the Archmage
					["sourceQuest"] = 37841,	-- The Final Assault
					["timeline"] = {
						ADDED_6_2_0,
						REMOVED_7_0_3,
					},
					["isBreadcrumb"] = true,
					-- Can't find provider
				}),
				q(39057, {	-- Command of the Seas
					["sourceQuests"] = {
						39024,	-- Call of the Archmage
						37841,	-- The Final Assault
					},
					["qg"] = 92213,	-- Archmage Khadgar <Sons of Lothar>
					["coords"] = {
						{ 46.0, 50.6, LUNARFALL },
						{ 52.0, 40.0, FROSTWALL },
					},
					["timeline"] = {
						ADDED_6_2_0,
						REMOVED_7_0_3,
					},
				}),
				q(39697, {	-- Master vs. Commander
					["sourceQuest"] = 39057,	-- Command of the Seas
					["qg"] = 92213,	-- Archmage Khadgar <Sons of Lothar>
					["coords"] = {
						{ 46.0, 50.6, LUNARFALL },
						{ 52.0, 40.0, FROSTWALL },
					},
					["timeline"] = {
						ADDED_6_2_0,
						REMOVED_7_0_3,
					},
					["groups"] = {
						un(REMOVED_FROM_GAME, i(128693)),	-- Draenic Sea Chart
					},
				}),
				q(39000, {	-- We Don't Need No Library Card
					["sourceQuests"] = {
						39024,	-- Call of the Archmage
						37841,	-- The Final Assault
					},
					["qg"] = 92213,	-- Archmage Khadgar <Sons of Lothar>
					["coords"] = {
						{ 46.0, 50.6, LUNARFALL },
						{ 52.0, 40.0, FROSTWALL },
						{ 65.5, 46.5, 661 },
					},
					["timeline"] = {
						ADDED_6_2_0,
						REMOVED_7_0_3,
					},
				}),
				q(39003, {	-- Cooking the Books
					["sourceQuest"] = 39000,	-- We Don't Need No Library Card
					["qg"] = 92213,	-- Archmage Khadgar <Sons of Lothar>
					["coords"] = {
						{ 46.0, 50.6, LUNARFALL },
						{ 52.0, 40.0, FROSTWALL },
					},
					["timeline"] = {
						ADDED_6_2_0,
						REMOVED_7_0_3,
					},
				}),
				q(37839, {	-- Light Be With You
					["sourceQuests"] = {
						39697,	-- Master vs. Commander
						39003,	-- Cooking the Books
					},
					["qg"] = 92213,	-- Archmage Khadgar
					["coord"] = { 46.0, 50.6, LUNARFALL },
					["timeline"] = {
						ADDED_6_2_2,
						REMOVED_7_0_3,
					},
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						un(REMOVED_FROM_GAME, ach(10021)),	-- Chapter IV: Darkness Incarnate
						un(REMOVED_FROM_GAME, i(124638)),	-- Etheralus, the Eternal Reward
						un(REMOVED_FROM_GAME, i(124636)),	-- Maalus, the Blood Drinker
						un(REMOVED_FROM_GAME, i(124635)),	-- Nithramus, the All-Seer
						un(REMOVED_FROM_GAME, i(124637)),	-- Sanctus, Sigil of the Unbroken
						un(REMOVED_FROM_GAME, i(124634)),	-- Thorasus, the Stone Heart of Draenor
					},
				}),
				q(37840, {	-- Draenor's Blessing
					["sourceQuests"] = {
						39697,	-- Master vs. Commander
						39003,	-- Cooking the Books
					},
					["qg"] = 92213,	-- Archmage Khadgar
					["coord"] = { 52.0, 40.0, FROSTWALL },
					["timeline"] = {
						ADDED_6_2_2,
						REMOVED_7_0_3,
					},
					["races"] = HORDE_ONLY,
					["groups"] = {
						un(REMOVED_FROM_GAME, ach(10148)),	-- Chapter IV: Darkness Incarnate
						un(REMOVED_FROM_GAME, i(124638)),	-- Etheralus, the Eternal Reward
						un(REMOVED_FROM_GAME, i(124636)),	-- Maalus, the Blood Drinker
						un(REMOVED_FROM_GAME, i(124635)),	-- Nithramus, the All-Seer
						un(REMOVED_FROM_GAME, i(124637)),	-- Sanctus, Sigil of the Unbroken
						un(REMOVED_FROM_GAME, i(124634)),	-- Thorasus, the Stone Heart of Draenor
					},
				}),
				q(39004, {	-- Darkness Incarnate
					["sourceQuests"] = {
						37839,	-- Light Be With You
						37840,	-- Draenor's Blessing
					},
					["qg"] = 92213,	-- Archmage Khadgar <Sons of Lothar>
					["coords"] = {
						{ 46.0, 50.6, LUNARFALL },
						{ 52.0, 40.0, FROSTWALL },
					},
					["timeline"] = {
						ADDED_6_2_0,
						REMOVED_7_0_3,
					},
				}),
				-- Unknown
				q(39019, {	-- Call of the Archmage
					["u"] = REMOVED_FROM_GAME,
				}),
				q(39018, {	-- Call of the Archmage
					["u"] = REMOVED_FROM_GAME,
				}),
				q(39022, {	-- Call of the Archmage
					["u"] = REMOVED_FROM_GAME,
				}),
			},
		}),
	})
);
