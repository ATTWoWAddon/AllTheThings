---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(ZANDALAR, bubbleDown({ ["timeline"] = { ADDED_8_0_1 } }, {
	m(THE_GREAT_SEAL, {
		n(WEEKLY_HOLIDAYS, {
			n(REWARDS, {
				i(164579, {	-- Cache of Uldir Treasures (N)
					["timeline"] = { ADDED_8_0_1, REMOVED_8_1_0 },
					["sym"] = {
						{"select", "instanceID", 1031},			-- Uldir
						{"pop"},								-- Discard the Instance Headers and acquire all of their children.
						{"where", "difficultyID", 14},			-- Select only the Normal Difficulty Headers.
						{"pop"},								-- Discard the Difficulty Headers and acquire all of their children.
						{"is","encounterID"},					-- Only Encounter Headers
						{"pop"},								-- Discard the Encounter Headers and acquire all of their children.
						{"contains", "f", 1, 2, 3, 4, 5, 6, 7, 8, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 31, 32, 33, 34, 35, 51, 52, 53, 54 },
					},
				}),
				i(164257, {	-- Cache of Uldir Treasures (HC)
					["timeline"] = { ADDED_8_0_1, REMOVED_8_1_0 },
					["sym"] = {
						{"select", "instanceID", 1031},			-- Uldir
						{"pop"},								-- Discard the Instance Headers and acquire all of their children.
						{"where", "difficultyID", 15},			-- Select only the Heroic Difficulty Headers.
						{"pop"},								-- Discard the Difficulty Headers and acquire all of their children.
						{"is","encounterID"},					-- Only Encounter Headers
						{"pop"},								-- Discard the Encounter Headers and acquire all of their children.
						{"contains", "f", 1, 2, 3, 4, 5, 6, 7, 8, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 31, 32, 33, 34, 35, 51, 52, 53, 54 },
					},
				}),
				i(165724, {	-- Cache of Dazar'alor Treasures (N)
					["timeline"] = { ADDED_8_1_0, REMOVED_8_2_0 },
					["sym"] = {
						{"select", "instanceID", 1176},			-- Battle of Dazar'alor
						{"pop"},								-- Discard the Instance Headers and acquire all of their children.
						{"where", "difficultyID", 14},			-- Select only the Normal Difficulty Headers.
						{"pop"},								-- Discard the Difficulty Headers and acquire all of their children.
						{"is","encounterID"},					-- Only Encounter Headers
						{"pop"},								-- Discard the Encounter Headers and acquire all of their children.
						{"contains", "f", 1, 2, 3, 4, 5, 6, 7, 8, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 31, 32, 33, 34, 35, 51, 52, 53, 54 },
					},
				}),
				i(165729, {	-- Cache of Dazar'alor Treasures (HC)
					["timeline"] = { ADDED_8_1_0, REMOVED_8_2_0 },
					["sym"] = {
						{"select", "instanceID", 1176},			-- Battle of Dazar'alor
						{"pop"},								-- Discard the Instance Headers and acquire all of their children.
						{"where", "difficultyID", 15},			-- Select only the Heroic Difficulty Headers.
						{"pop"},								-- Discard the Difficulty Headers and acquire all of their children.
						{"is","encounterID"},					-- Only Encounter Headers
						{"pop"},								-- Discard the Encounter Headers and acquire all of their children.
						{"contains", "f", 1, 2, 3, 4, 5, 6, 7, 8, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 31, 32, 33, 34, 35, 51, 52, 53, 54 },
					},
				}),
				i(168269, {	-- Cache of Palace Treasures (N)
					["timeline"] = { ADDED_8_2_0, REMOVED_8_3_0 },
					["sym"] = {
						{"select", "instanceID", 1179},			-- The Eternal Palace
						{"pop"},								-- Discard the Instance Headers and acquire all of their children.
						{"where", "difficultyID", 14},			-- Select only the Normal Difficulty Headers.
						{"pop"},								-- Discard the Difficulty Headers and acquire all of their children.
						{"is","encounterID"},					-- Only Encounter Headers
						{"pop"},								-- Discard the Encounter Headers and acquire all of their children.
						{"contains", "f", 1, 2, 3, 4, 5, 6, 7, 8, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 31, 32, 33, 34, 35, 51, 52, 53, 54 },
					},
				}),
				i(170144, {	-- Cache of Palace Treasures (HC)
					["timeline"] = { ADDED_8_2_0, REMOVED_8_3_0 },
					["sym"] = {
						{"select", "instanceID", 1179},			-- The Eternal Palace
						{"pop"},								-- Discard the Instance Headers and acquire all of their children.
						{"where", "difficultyID", 15},			-- Select only the Heroic Difficulty Headers.
						{"pop"},								-- Discard the Difficulty Headers and acquire all of their children.
						{"is","encounterID"},					-- Only Encounter Headers
						{"pop"},								-- Discard the Encounter Headers and acquire all of their children.
						{"contains", "f", 1, 2, 3, 4, 5, 6, 7, 8, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 31, 32, 33, 34, 35, 51, 52, 53, 54 },
					},
				}),
				i(175021, {	-- Cache of Ny'alothan Treasures (N)
					["timeline"] = { ADDED_8_3_0, REMOVED_9_0_1 },
					["sym"] = {
						{"select", "instanceID", 1180},			-- Ny'alothan, the Waking City
						{"pop"},								-- Discard the Instance Headers and acquire all of their children.
						{"where", "difficultyID", 14},			-- Select only the Normal Difficulty Headers.
						{"pop"},								-- Discard the Difficulty Headers and acquire all of their children.
						{"is","encounterID"},					-- Only Encounter Headers
						{"pop"},								-- Discard the Encounter Headers and acquire all of their children.
						{"contains", "f", 1, 2, 3, 4, 5, 6, 7, 8, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 31, 32, 33, 34, 35, 51, 52, 53, 54 },
					},
				}),
				i(175024, {	-- Cache of Ny'alothan Treasures (HC)
					["timeline"] = { ADDED_8_3_0, REMOVED_9_0_1 },
					["sym"] = {
						{"select", "instanceID", 1180},			-- Ny'alothan, the Waking City
						{"pop"},								-- Discard the Instance Headers and acquire all of their children.
						{"where", "difficultyID", 15},			-- Select only the Heroic Difficulty Headers.
						{"pop"},								-- Discard the Difficulty Headers and acquire all of their children.
						{"is","encounterID"},					-- Only Encounter Headers
						{"pop"},								-- Discard the Encounter Headers and acquire all of their children.
						{"contains", "f", 1, 2, 3, 4, 5, 6, 7, 8, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 31, 32, 33, 34, 35, 51, 52, 53, 54 },
					},
				}),
				pvp(i(154992, {	-- Brawler's Footlocker
					["u"] = REMOVED_FROM_GAME,
					["sym"] = {
						{"select", "headerID", SEASON_CORRUPTED},	-- BFA Season 4
						{"find", "headerID", PVP_GLADIATOR},	-- Gladiator Gear
						{"pop"},	-- Discard the header and acquire the children.
					},
				})),
				pvp(i(164262,{	-- Steel Strongbox
					["u"] = REMOVED_FROM_GAME,
				})),
				pvp(i(167744, {	-- Aspirant's Equipment Cache
					["timeline"] = { ADDED_8_1_0, REMOVED_9_0_1 },
					["sym"] = {
						{ "sub", "pvp_gear_base", EXPANSION.BFA, SEASON_CORRUPTED, PVP_ASPIRANT },{"merge"},	-- BFA header > Season 4 header > Aspirant gear header
						{ "pop" },	-- discard Aspirant / Combatant Gear header
						{ "pop" },	-- discard item type headers
						{ "modID", 47 },	-- blue. still the wrong iLvl because i can't also apply 2, but it looks better
					},
				})),
			}),
			n(QUESTS, sharedData({
				["provider"] = { "n", 144384 },	-- Chronicler Shoopa
				["coord"] = { 56.63, 88.61, DAZARALOR },
				["isWeekly"] = true,
				["u"] = REMOVED_FROM_GAME,
				["_drop"] = { "g" },	-- Drop Trash
			}, {
				q(53032),					-- A Burning Path Through Time
				pvp(q(53036)),				-- A Call to Battle
				q(53033),					-- A Frozen Path Through Time
				q(53034),					-- A Shattered Path Through Time
				q(53035),					-- A Shrouded Path Through Time
				q(54995),					-- A Savage Path Through Time
				q(53037),					-- Emissary of War
				-- #IF AFTER BFA
				-- #if BEFORE SL
				pvp(q(47148)),				-- Something Different
				-- #ENDIF
				-- #ENDIF
				pvp(q(53039)),				-- The Arena Calls
				pvp(petbattle(q(53038))),	-- The Very Best
				q(53030),					-- The World Awaits
			})),
		}),
	}),
})));
