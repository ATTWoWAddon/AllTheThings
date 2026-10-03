---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(BROKEN_ISLES, {
	m(LEGION_DALARAN, {
		n(WEEKLY_HOLIDAYS, {
			n(REWARDS, {
				i(153504, {	-- Cache of Antoran Treasures (N)
					["timeline"] = { ADDED_7_3_2, REMOVED_8_0_1 },
					["sym"] = {
						{"select", "instanceID", 946},			-- Antorus
						{"pop"},								-- Discard the Instance Headers and acquire all of their children.
						{"where", "difficultyID", 14},			-- Select only the Normal Difficulty Headers.
						{"pop"},								-- Discard the Difficulty Headers and acquire all of their children.
						{"is","encounterID"},					-- Only Encounter Headers
						{"pop"},								-- Discard the Encounter Headers and acquire all of their children.
						{"contains", "f", 1, 2, 3, 4, 5, 6, 7, 8, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 31, 32, 33, 34, 35, 51, 52, 53, 54 },
					},
				}),
				i(153501, {	-- Cache of Antoran Treasures (HC)
					["timeline"] = { ADDED_7_3_2, REMOVED_8_0_1 },
					["sym"] = {
						{"select", "instanceID", 946},			-- Antorus
						{"pop"},								-- Discard the Instance Headers and acquire all of their children.
						{"where", "difficultyID", 15},			-- Select only the Heroic Difficulty Headers.
						{"pop"},								-- Discard the Difficulty Headers and acquire all of their children.
						{"is","encounterID"},					-- Only Encounter Headers
						{"pop"},								-- Discard the Encounter Headers and acquire all of their children.
						{"contains", "f", 1, 2, 3, 4, 5, 6, 7, 8, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 31, 32, 33, 34, 35, 51, 52, 53, 54 },
					},
				}),
			}),
			n(QUESTS, sharedData({
				["provider"] = { "n", 111246 },	-- Archmage Timear
				["coord"] = { 63.6, 55.6, LEGION_DALARAN },
				["isWeekly"] = true,
				["u"] = REMOVED_FROM_GAME,
				["_drop"] = { "g" },	-- Drop Trash
			}, {
				q(44164),					-- A Burning Path Through Time
				pvp(q(44173)),				-- A Call to Battle
				q(44166),					-- A Frozen Path Through Time
				q(44167),					-- A Shattered Path Through Time
				q(45799),					-- A Shrouded Path Through Time
				q(44171),					-- Emissary of War
				-- #IF AFTER LEGION
				-- #IF BEFORE BFA
				pvp(q(47148)),				-- Something Different
				-- #ENDIF
				-- #ENDIF
				pvp(q(44172)),				-- The Arena Calls
				pvp(petbattle(q(44174))),	-- The Very Best
				q(44175),					-- The World Awaits
			})),
		}),
	}),
}));
