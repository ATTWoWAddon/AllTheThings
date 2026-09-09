---------------------------------------------------
--          D E L V E S      M O D U L E         --
---------------------------------------------------

root(ROOTS.Delves, expansion(EXPANSION.MID, {
	m(LABYRINTH_KINDOJAN, {
		["lore"] = "An ancient Amani funeral complex previously sealed for centuries. Once again opened, the complex is combed by looters and Vilebranch for relics while the interred spirits defend it with deadly force.",
		["icon"] = 3601564,
		["coord"] = { 63.0, 72.2, MAP.MIDNIGHT.EVERSONG_WOODS },
		--["maps"] = {  },
		["timeline"] = { ADDED_12_1_5 },
		["groups"] = {
			n(ACHIEVEMENTS, {
				ach(64039, bubbleDownSelf({ ["timeline"] = { "removed 12.1.5.99999" } }, {	-- Fabled Let Me Solo Him: Kindo'jan
				-- TODO: Timeline out correctly
					--title(XXX),	-- <Name>, Fabled Vanquisher of Kindo'jan
				})),
				ach(63720),	-- Happy Hexmask Collector
				ach(63717, {	-- Kindo'jan's Labyrinth Discoveries
					--title(XXX),	-- Treasure Hound <Name>
				}),
				ach(63724),	-- Knock Knock
				ach(63715, {	-- Let Me Solo Him: Kindo'Jan
					i(283363),	-- Loa-Blessed Wayfarer (MOUNT!)
				}),
				ach(63718),	-- Lock and Key
				ach(63719, {	-- Lock and Key Master
					--title(XXX),	-- Lockpickin' <Name>
				}),
				ach(63723),	-- My Labyrinth
				ach(63716, {	-- The First Hash'ey
					--title(XXX),	-- Loa-Blessed <Name>
				}),
				ach(63721),	-- The Labyrinth of Kindo'jan
				ach(63863),	-- The Labyrinth of Kindo'jan: Tier 1
				ach(63864),	-- The Labyrinth of Kindo'jan: Tier 2
				ach(63865),	-- The Labyrinth of Kindo'jan: Tier 3
				ach(63846),	-- The Labyrinth of Kindo'jan: Tier 4
				ach(63847),	-- The Labyrinth of Kindo'jan: Tier 5
				ach(63848),	-- The Labyrinth of Kindo'jan: Tier 6
				ach(63849),	-- The Labyrinth of Kindo'jan: Tier 7
				ach(63850),	-- The Labyrinth of Kindo'jan: Tier 8
				ach(63851),	-- The Labyrinth of Kindo'jan: Tier 9
				ach(63852),	-- The Labyrinth of Kindo'jan: Tier 10
				ach(63853),	-- The Labyrinth of Kindo'jan: Tier 11
				ach(64118, bubbleDownSelf({ ["timeline"] = { REMOVED_12_1_7 } }, {	-- The Labyrinth of Kindo'jan: One-Champion Army
					--title(XXX),	-- Lone Raider <Name>
				})),
				ach(63727),	-- Treasures Upon Treasures (10 Oddities)
				ach(63728),	-- A Few More Can't Hurt (50 Oddities)
				ach(63722, {	-- Who's Labyrinth?
					--title(XXX),	-- Maze Runner <Name>
				}),
			}),
			--n(CURIO, {
			--}),
			--n(FACTIONS, {
			--}),
			--n(QUESTS, {
			--}),
			--n(TREASURES, {
			--}),
			--n(VENDORS, {
			--}),
		},
	}),
}))

--[[root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.MID, {
	n(DELVES, {
		m(LABYRINTH_KINDOJAN, {
			["timeline"] = { ADDED_12_1_5 },
			["groups"] = {
			},
		}),
	}),
}))--]]
