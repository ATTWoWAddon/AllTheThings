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
			n(FACTIONS, {
				faction(2836),	-- Kindo'Jan's Labyrinth
			}),
			n(FLIGHT_PATHS, {
				fp(3300, {	-- Chamber of Rites
					["coord"] = { 44.4, 72.1, LABYRINTH_KINDOJAN },
					--["cr"] = XXXXXX,	-- Kinduru <Herald of de Loa>
				}),
				fp(3301, {	-- Entrance to The Reliquary
					["coord"] = { 35.6, 67.4, LABYRINTH_KINDOJAN },
				}),
				fp(3304, {	-- The Reliquary
					["coord"] = { 28.5, 67.4, LABYRINTH_KINDOJAN },
					--["cr"] = XXXXXX,	-- Kinduru <Herald of de Loa>
				}),
				fp(3305, {	-- Entrance to Halazzi's Lair
					["coord"] = { 26.0, 55.9, LABYRINTH_KINDOJAN },
				}),
				fp(3306, {	-- Halazzi's Lair
					["coord"] = { 20.2, 46.8, LABYRINTH_KINDOJAN },
					--["cr"] = XXXXXX,	-- Kinduru <Herald of de Loa>
				}),
				fp(3307, {	-- Entrance to The Central Chamber
					["coord"] = { 33.0, 54.9, LABYRINTH_KINDOJAN },
				}),
			}),
			--n(QUESTS, {
			--}),
			n(TREASURES, {
				o(676585, {	-- Ancient Chest
					["coord"] = { 36.9, 72.5, LABYRINTH_KINDOJAN },
					["questID"] = 98602,
				}),
				o(676624, {	-- Ancient Chest
					["coord"] = { 21.7, 71.3, LABYRINTH_KINDOJAN },
					["questID"] = 98607,
					["groups"] = {
						i(263517),	-- Ancient Text (JUNK!)
					},
				}),
				o(676625, {	-- Ancient Chest
					["coord"] = { 29.9, 77.4, LABYRINTH_KINDOJAN },
					["questID"] = 98608,
				}),
				o(676628, {	-- Ancient Chest
					["coord"] = { 13.9, 37.8, LABYRINTH_KINDOJAN },
					["questID"] = 98611,
				}),
				o(676629, {	-- Ancient Chest
					["coord"] = { 26.5, 43.0, LABYRINTH_KINDOJAN },
					["questID"] = 98612,
				}),
				o(676747, {	-- Mislaid Treasure
					["description"] = "Spawns randomly throughout the Labyrinth.",
				}),
			}),
			--n(VENDORS, {
			--}),
			n(ZONE_REWARDS, {
				-- From Ancient Chests AND Mislaid Treasures, drop chance random
				i(252044),	-- Amani Horn Cup (DECOR!)
				i(264484),	-- Blue Amani Tapestry (DECOR!)
				i(263321),	-- Frayed Amani Offering Basket (DECOR!)
				i(264256),	-- Wall-Mounted Amani Animal Trophy (DECOR!)
			}),
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
