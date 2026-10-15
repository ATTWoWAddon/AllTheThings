---------------------------------------------------
--          D E L V E S      M O D U L E         --
---------------------------------------------------

root(ROOTS.Delves, expansion(EXPANSION.MID, {
	m(LABYRINTH_KINDOJAN, {
		["lore"] = "An ancient Amani funeral complex previously sealed for centuries. Once again opened, the complex is combed by looters and Vilebranch for relics while the interred spirits defend it with deadly force.",
		["icon"] = 3601564,
		["coord"] = { 63.0, 72.2, MAP.MIDNIGHT.EVERSONG_WOODS },
		["maps"] = {
			2648,	-- De Empire's Rest
		},
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
				ach(63715, {	-- Let Me Solo Him: Kindo'jan
					i(283363),	-- Loa-Blessed Wayfarer (MOUNT!)
				}),
				ach(63718, {	-- Lock and Key
					["coords"] = {	-- Potential Coordinates of Locked Doors
						{ 50.4, 78.5, LABYRINTH_KINDOJAN },
						{ 59.3, 26.9, LABYRINTH_KINDOJAN },
					},
					["cost"] = { { "i", 282402, 1 } },	-- 1x Archaic Amani Key
				}),
				ach(63719, {	-- Lock and Key Master
					["coords"] = {	-- Potential Coordinates of Locked Doors
						{ 50.4, 78.5, LABYRINTH_KINDOJAN },
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
			n(DELVE_COMPLETION, {	-- UI Elements
				i(285807),	-- Heroic Soul Fragment
				i(285875),	-- Kindo'jan (Tier 8+)
				i(285876),	-- Zah'ran (Tier 6+)
				i(285877),	-- Zah'ran (Tier ??)
			}),
			n(FACTIONS, {
				faction(2836),	-- Kindo'jan's Labyrinth
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
			n(QUESTS, {
				q(99312, {	-- On the Trail of Kindo'jan
					["description"] = "This quest is obtained from Any Delve. In order not to lose Quest Completion, go back to the Labyrinth entrance and pick up the Quest from the Tablet.",
					["provider"] = { "i", 287078 },	-- Ancient Amani Tablet (QS!)
					["isBreadcrumb"] = true,
				}),
				q(99306, {	-- The Labyrinth of Kindo'jan
					["provider"] = { "o", 701639 },	-- Amani Tablet
					["coord"] = { 62.9, 72.0, MAP.MIDNIGHT.EVERSONG_WOODS },
					["isBreadcrumb"] = true,
				}),
				q(98831, {	-- The Labyrinth
					["sourceQuests"] = {	-- There are 2 breadcrumb quests. One from the Labyrinth Entrance, One from the Delves (QS!) Item. Only 1 of them is required but, sourceQuestNumRequired is not used because we want to warn users of both of them.
						99312,	-- On the Trail of Kindo'jan
						99306,	-- The Labyrinth of Kindo'jan
					},
					["qgs"] = {
						265173,	-- Kul'amara the Fierce
						277031,	-- Kul'amara the Fierce
					},
					["coords"] = {
						{ 33.2, 25.5, MAP.MIDNIGHT.ATAL_AMAN_OUTDOOR },
						{ 57.9, 46.7, MAP.MIDNIGHT.THE_COILED_ISLE },
					},
				}),
				q(98832, {	-- Dangers Untold and Hardships Unnumbered
					["sourceQuest"] = 98831,	-- The Labyrinth
					["qg"] = 274915,	-- Valeera Sanguinar
					["coord"] = { 62.8, 72.0, MAP.MIDNIGHT.EVERSONG_WOODS },
					["groups"] = {
						o(693668, {	-- Broken Tablet
							-- Exo Note: This is here so that tooltip from object 294114 does not bleed onto this one.
							["coord"] = { 44.5, 68.8, LABYRINTH_KINDOJAN },
						}),
					},
				}),
				q(98833, {	-- You Remind Me of the Bird
					["sourceQuest"] = 98832,	-- Dangers Untold and Hardships Unnumbered
					["qg"] = 274918,	-- Kinduru
					["coord"] = { 38.3, 64.7, LABYRINTH_KINDOJAN },
				}),
				q(98834, {	-- The Way Forward...
					["sourceQuest"] = 98833,	-- You Remind Me of the Bird
					["qg"] = 248567,	-- Valeera Sanguinar
					["coord"] = { 35.6, 64.8, LABYRINTH_KINDOJAN },
				}),
				q(98836, {	-- ...Is Sometimes the Way Back
					["sourceQuest"] = 98834,	-- The Way Forward...
					["qg"] = 248567,	-- Valeera Sanguinar
					["coord"] = { 44.4, 84.6, LABYRINTH_KINDOJAN },
					["groups"] = { i(286643) },	-- Kinduru's Spiriting Quill (TOY!)
				}),
				q(98951, {	-- Akil'zon's Roost
					["qg"] = 264886,	-- Wah'du <Servant of de Loa>
					["coord"] = { 44.4, 79.4, LABYRINTH_KINDOJAN },
					["groups"] = { i(285065) },	-- Mythical Soul Fragment
				}),
				q(97241, {	-- Voices of Stone
					["providers"] = {
						{ "o", 649924 },	-- Small Loa Figurine
						{ "o", 649937 },	-- Small Loa Figurine
						{ "o", 649938 },	-- Small Loa Figurine
						{ "o", 649939 },	-- Small Loa Figurine
						{ "o", 649940 },	-- Small Loa Figurine
					},
					["coords"] = {
						{ 77.9, 62.7, LABYRINTH_KINDOJAN },
						{ 79.7, 55.2, LABYRINTH_KINDOJAN },
						{ 78.0, 51.4, LABYRINTH_KINDOJAN },
						{ 84.3, 54.1, LABYRINTH_KINDOJAN },
						{ 82.9, 65.6, LABYRINTH_KINDOJAN },
					},
				}),
				filter(MISC, {
					i(271135),	-- Dusty Loa Totem
					i(271156),	-- Stolen Artifact
				}),
			}),
			n(REWARDS, {
				i(285801),	-- Heroic Soul Fragment
			}),
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
					o(676646, {	-- Ancient Chest
						["coord"] = { 30.7, 15.6, LABYRINTH_KINDOJAN },
						["questID"] = 98626,
						["groups"] = { i(280823) },	-- Feathers of Akil'zon (TOY!)
					}),
					o(676632, {	-- Ancient Chest
						["coord"] = { 27.8, 34.6, LABYRINTH_KINDOJAN },
						["questID"] = 98615,
						["groups"] = { i(283996) },	-- Ancient Hash'ey Battle Art: Heat Wave
					}),
					o(676622, {	-- Sturdy Chest
						["description"] = "Becomes available after unlocking Labyrinth Renown LVL3: Akil'zon's Favor.",
						["coord"] = { 38.8, 83.4, LABYRINTH_KINDOJAN },
						["questID"] = 98605,
						["groups"] = { i(282424) },	-- Akil'zon's Swiftness
					}),
					o(676623, {	-- Sturdy Chest
						["description"] = "Becomes available after unlocking Labyrinth Renown LVL3: Akil'zon's Favor.",
						["coord"] = { 38.0, 83.5, LABYRINTH_KINDOJAN },
						["questID"] = 98606,
						["groups"] = { i(284181) },	-- Loa-Touched Spine (COSMETIC!)
					}),
					o(676658, {	-- Sturdy Chest
						["coord"] = { 89.0, 77.7, LABYRINTH_KINDOJAN },
						["groups"] = { i(280563) },	-- Ancient Hash'ey Battle Art: Falco Strikes
					}),
					o(676630, {	-- Sturdy Chest
						["coord"] = { 27.4, 33.1, LABYRINTH_KINDOJAN },
						["questID"] = 98613,
						["groups"] = { i(280825) },	-- Rite of Jan'alai's Flame (TOY!)
					}),
					o(676642, {	-- Sturdy Chest
						["coord"] = { 22.9, 12.0, LABYRINTH_KINDOJAN },
						["groups"] = { i(284180) },	-- Loa-Touched Deltoid (COSMETIC!)
					}),
					o(676641, {	-- Sturdy Chest
						["coord"] = { 22.7, 12.2, LABYRINTH_KINDOJAN },
					}),
					o(676651, {	-- Sturdy Chest
						["coord"] = { 61.2, 44.8, LABYRINTH_KINDOJAN },
						["questID"] = 98631,
					}),
					o(676637, {	-- Sturdy Chest
						["coord"] = { 61.5, 44.7, LABYRINTH_KINDOJAN },
						["questID"] = 98619,
						["groups"] = {
							i(244349),	-- Ruined Amani Ritual Urn (DECOR!)
							i(284357),	-- Ancient Amani Mural (DECOR!)
							i(264486),	-- Brown Amani Tapestry (DECOR!)
						},
					}),
					o(676621, {	-- Sturdy Chest
						["coord"] = { 61.5, 44.7, LABYRINTH_KINDOJAN },
						["questID"] = 98619,
					}),
					-- o(???, {	-- Sturdy Chest (2nd from the left)
					-- 	["coord"] = { 61.5, 43.6, LABYRINTH_KINDOJAN },
					-- 	["questID"] = 98640,
					-- }),
					o(676631, {	-- Sturdy Chest
						["coord"] = { 61.1, 43.5, LABYRINTH_KINDOJAN },
						["questID"] = 98614,
					}),
					o(676647, {	-- Sturdy Chest
						["coord"] = { 30.6, 14.9, LABYRINTH_KINDOJAN },
					}),
				}),
				o(689304, {	-- Ancestral Bounty
				}),
				o(676583, {	-- Ancient Keyper's Bag
					["description"] = "Spawns next to the corpse of 'Keeper of the Key' after you defeat him.\n He has a chance to spawn anywhere in the Labyrinth.",
					["cr"] = 273788,	-- Keeper of the Key
					["groups"] = { i(282402) },	-- Archaic Amani Key
				}),
				o(673143, {	-- Bountiful Heavy Trunk
				}),
				o(673144, {	-- Bountiful Heavy Trunk
				}),
				o(673138, {	-- Gilded Stash
				}),
				o(696116, {	-- Impressive Treasure Chest
					["description"] = "Spawns after finishing 'Dundun' event.",
					["coord"] = { 44.3, 73.3, LABYRINTH_KINDOJAN },	-- TODO: Does this happen only at the start in the Chamber of Rites?
				}),
				o(676747, {	-- Mislaid Treasure
					["description"] = "Spawns randomly throughout the Labyrinth.",
				}),
				o(677411, {	-- Mislaid Treasure
					["description"] = "Can be found behind the 'Locked Doors' inside the Labyrinth.",
				}),
				o(705929, {	-- Mislaid Treasure
				}),
				o(705955, {	-- Mislaid Treasure
					["description"] = "Can be found behind the 'Locked Doors' inside the Labyrinth.",
				}),
			}),
			--n(VENDORS, {
			--}),
			n(ZONE_REWARDS, {
				-- From Ancient Chests, Sturdy Chests, Bountiful Trunks, and Mislaid Treasures, drop chance random
				i(284052),	-- Amani Effigy (COSMETIC!)
				i(252044),	-- Amani Horn Cup (DECOR!)
				i(264484),	-- Blue Amani Tapestry (DECOR!)
				i(284359),	-- Corroded Amani Sconce (DECOR!)
				i(284057),	-- Effigy of Corrosion (COSMETIC!)
				i(263321),	-- Frayed Amani Offering Basket (DECOR!)
				i(284051),	-- Hexbearer's Pauldrons (COSMETIC!)
				i(284054),	-- Hexdrinker's Shoulders (COSMETIC!)
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
