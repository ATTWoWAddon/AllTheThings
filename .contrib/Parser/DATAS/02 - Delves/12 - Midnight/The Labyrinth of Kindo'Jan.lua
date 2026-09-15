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
				-- TODO: Timeline out correctly, 1 Week after 12.1.5 Launch
					title(801),	-- <Name>, Fabled Vanquisher of Kindo'jan
				})),
				ach(63720, {	-- Happy Hexmask Collector
					["providers"] = {
						{ "o", 672624 },	-- Fiery Hexmask
						{ "o", 672785 },	-- Frozen Hexmask
						{ "o", 672788 },	-- Thundering Hexmask
					},
					["coords"] = {	-- Coordinates are always the same, Hexmasks rotate
						{ 18.4, 20.5, LABYRINTH_KINDOJAN },
						{ 50.3, 85.3, LABYRINTH_KINDOJAN },
						{ 88.4, 53.9, LABYRINTH_KINDOJAN },
					},
				}),
				ach(63717, {	-- Kindo'jan's Labyrinth Discoveries
					title(797),	-- Treasure Hound <Name>
				}),
				ach(63724),	-- Knock Knock
				ach(63715, {	-- Let Me Solo Him: Kindo'Jan
					i(283363),	-- Loa-Blessed Wayfarer (MOUNT!)
				}),
				ach(63718, {	-- Lock and Key
					["coords"] = {	-- Coordinates of Locked Doors
						{ 59.3, 26.9, LABYRINTH_KINDOJAN },
					},
					["cost"] = { { "i", 282402, 1 } },	-- 1x Archaic Amani Key
				}),
				ach(63719, {	-- Lock and Key Master
					["coords"] = {	-- Coordinates of Locked Doors
						{ 59.3, 26.9, LABYRINTH_KINDOJAN },
					},
					["cost"] = { { "i", 282402, 20 } },	-- 20x Archaic Amani Key
					["groups"] = { title(798) },	-- Lockpickin' <Name>
				}),
				ach(63723),	-- My Labyrinth
				ach(63716, {	-- The First Hash'ey
					title(796),	-- Loa-Blessed <Name>
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
					title(802),	-- Lone Raider <Name>
				})),
				ach(63727),	-- Treasures Upon Treasures (10 Oddities)
				ach(63728),	-- A Few More Can't Hurt (50 Oddities)
				ach(63722, {	-- Who's Labyrinth?
					title(799),	-- Maze Runner <Name>
				}),
			}),
			n(DELVE_COMPLETION, {
				i(285807),	-- Heroic Soul Fragment
				i(285875),	-- Kindo'jan
			}),
			n(FACTIONS, {
				faction(2836),	-- Kindo'Jan's Labyrinth
			}),
			n(FLIGHT_PATHS, {
				fp(3300, {	-- Chamber of Rites
					["coord"] = { 44.4, 72.1, LABYRINTH_KINDOJAN },
					["cr"] = 273261,	-- Kinduru <Herald of de Loa>
				}),
				fp(3304, {	-- The Reliquary
					["coord"] = { 28.5, 67.4, LABYRINTH_KINDOJAN },
					["cr"] = 273515,	-- Kinduru <Herald of de Loa>
				}),
				fp(3306, {	-- Halazzi's Lair
					["coord"] = { 20.2, 46.8, LABYRINTH_KINDOJAN },
					--["cr"] = XXXXXX,	-- Kinduru <Herald of de Loa>
				}),
				fp(3308, {	-- Central Chamber
					["coord"] = { 44.1, 46.8, LABYRINTH_KINDOJAN },
					["cr"] = 273569,	-- Kinduru <Herald of de Loa>
				}),
				fp(3310, {	-- The Catacombs
					["coord"] = { 60.2, 68.7, LABYRINTH_KINDOJAN },
					["cr"] = 273570,	-- Kinduru <Herald of de Loa>
				}),
				fp(3313, {	-- The Cave Towers
					["coord"] = { 83.2, 93.8, LABYRINTH_KINDOJAN },
					["cr"] = 273575,	-- Kinduru <Herald of de Loa>
				}),
				fp(3315, {	-- Jan'alai's Refuge
					["coord"] = { 25.7, 26.8, LABYRINTH_KINDOJAN },
					["cr"] = 273572,	-- Kinduru <Herald of de Loa>
				}),
				fp(3317, {	-- Akil'zon's Roost
					["coord"] = { 25.7, 26.8, LABYRINTH_KINDOJAN },
					["cr"] = 273572,	-- Kinduru <Herald of de Loa>
				}),
				fp(3319, {	-- Nalorakk's Den
					["coord"] = { 65.2, 32.2, LABYRINTH_KINDOJAN },
					["cr"] = 273574,	-- Kinduru <Herald of de Loa>
				}),
				-- Exo Note: These show up on the Flight Map as places where you can land. They are not actual Flight Path collectibles.
				fp(3301, { ["collectible"] = false } ),	-- Entrance to The Reliquary
				fp(3305, { ["collectible"] = false } ),	-- Entrance to Halazzi's Lair
				fp(3307, { ["collectible"] = false } ),	-- Entrance to The Central Chamber
				fp(3309, { ["collectible"] = false } ),	-- Entrance to The Catacombs
				fp(3311, { ["collectible"] = false } ),	-- Entrance to The Central Chamber
				fp(3312, { ["collectible"] = false } ),	-- Entrance to The Cave Towers
				fp(3314, { ["collectible"] = false } ),	-- Entrance to Jan'alai's Refuge
				fp(3316, { ["collectible"] = false } ),	-- Entrance to Akil'zon's Roost
				fp(3318, { ["collectible"] = false } ),	-- Entrance to Nalorakk's Den
				fp(3329, { ["collectible"] = false } ),	-- Entrance to The Central Chamber
			}),
			--n(QUESTS, {
			--}),
			n(TREASURES, {
				header(HEADERS.Achievement, 63717, {	-- Kindo'jan's Labyrinth Discoveries
					o(659517, {	-- Ancient Chest
						["coord"] = { 46.9, 67.0, LABYRINTH_KINDOJAN },
						["questID"] = 97131,
					}),
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
					o(676639, {	-- Ancient Chest
						["coord"] = { 28.7, 25.8, LABYRINTH_KINDOJAN },
						["questID"] = 98620,
					}),
					o(676640, {	-- Ancient Chest
						["coord"] = { 22.1, 32.2, LABYRINTH_KINDOJAN },
						["questID"] = 98621,
					}),
					o(676645, {	-- Ancient Chest
						["coord"] = { 40.6, 23.0, LABYRINTH_KINDOJAN },
						["questID"] = 98625,
					}),
					o(676648, {	-- Ancient Chest
						["coord"] = { 68.2, 36.7, LABYRINTH_KINDOJAN },
						["questID"] = 98628,
					}),
					o(676649, {	-- Ancient Chest
						["coord"] = { 67.9, 30.3, LABYRINTH_KINDOJAN },
						["questID"] = 98629,
					}),
					o(676653, {	-- Ancient Chest
						["coord"] = { 81.3, 57.7, LABYRINTH_KINDOJAN },
						["questID"] = 98633,
					}),
					o(676657, {	-- Ancient Chest
						["coord"] = { 86.9, 65.9, LABYRINTH_KINDOJAN },
						["questID"] = 98634,
					}),
					o(676661, {	-- Ancient Chest
						["coord"] = { 72.4, 68.6, LABYRINTH_KINDOJAN },
						["questID"] = 98637,
						["groups"] = {
							i(263519),	-- Snake Oil (JUNK!)
						},
					}),
					o(676663, {	-- Ancient Chest
						["coord"] = { 69.2, 73.7, LABYRINTH_KINDOJAN },
						["questID"] = 98638,
					}),
					o(676760, {	-- Ancient Chest
						["coord"] = { 47.7, 42.7, LABYRINTH_KINDOJAN },
						["questID"] = 98649,
					}),
				}),
				o(676583, {	-- Ancient Keyper's Bag
					["description"] = "Spawns next to the corpse of 'Keeper of the Key' after you defeat him.\n He has a chance to spawn anywhere in the Labyrinth.",
					["cr"] = 273788,	-- Keeper of the Key
					["groups"] = { i(282402) },	-- Archaic Amani Key
				}),
				o(676747, {	-- Mislaid Treasure
					["description"] = "Spawns randomly throughout the Labyrinth.",
				}),
				o(677411, {	-- Mislaid Treasure
					["description"] = "Can be found behind the 'Locked Doors' inside the Labyrinth.",
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
