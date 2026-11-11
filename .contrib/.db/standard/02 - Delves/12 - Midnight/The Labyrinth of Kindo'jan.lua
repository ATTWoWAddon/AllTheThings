---------------------------------------------------
--          D E L V E S      M O D U L E         --
---------------------------------------------------

root(ROOTS.Delves, expansion(EXPANSION.MID, {
	m(LABYRINTH_KINDOJAN, {
		lore = "An ancient Amani funeral complex previously sealed for centuries. Once again opened, the complex is combed by looters and Vilebranch for relics while the interred spirits defend it with deadly force.",
		icon = 3601564,
		coord = { 63.0, 72.2, MAP.MIDNIGHT.EVERSONG_WOODS },
		maps = {
			2648,	-- De Empire's Rest
		},
		cr = 275658,	-- Enter Labyrinth of Kindo'jan
		timeline = { ADDED_12_1_5 },
		groups = {
			n(ACHIEVEMENTS, {
				ach(64039, {	-- Fabled Let Me Solo Him: Kindo'jan
				timeline = { "removed 12.1.5.70575" },
				groups = { title(801) },	-- <Name>, Fabled Vanquisher of Kindo'jan
				}),
				ach(63720, {	-- Happy Hexmask Collector
					description = "Each run randomly selects three out of five special rooms as spawn points for Hexmasks and one for the special 'Locked Room'. The final room will be empty.",
					providers = {
						{ "o", 672624 },	-- Fiery Hexmask
						{ "o", 672785 },	-- Frozen Hexmask
						{ "o", 672788 },	-- Thundering Hexmask
					},
					coords = {
						{ 56.8, 17.8, LABYRINTH_KINDOJAN },	-- Akil'zon's Roost
						{ 50.3, 82.6, LABYRINTH_KINDOJAN },	-- Chamber of Rites
						{ 18.8, 18.2, LABYRINTH_KINDOJAN },	-- Jan'alai's Refuge
						{ 58.5, 21.7, LABYRINTH_KINDOJAN },	-- Nalorakk's Rest
						{ 88.5, 51.5, LABYRINTH_KINDOJAN },	-- The Cave Towers
					},
				}),
				ach(63717, {	-- Kindo'jan's Labyrinth Discoveries
					title(797),	-- Treasure Hound <Name>
				}),
				ach(63724),	-- Knock Knock
				ach(63715, {	-- Let Me Solo Him: Kindo'jan
					timeline = { "removed 12.1.5.99999" },
					groups = {
						i(283363),	-- Loa-Blessed Wayfarer (MOUNT!)
					},
				}),
				ach(63718, {	-- Lock and Key
					description = "Each run randomly selects one out of five special rooms to be a 'Locked Room' and three of them as spawn points for Hexmasks. The final room will be empty.",
					coords = {
						{ 56.8, 17.8, LABYRINTH_KINDOJAN },	-- Akil'zon's Roost
						{ 50.3, 82.6, LABYRINTH_KINDOJAN },	-- Chamber of Rites
						{ 18.8, 18.2, LABYRINTH_KINDOJAN },	-- Jan'alai's Refuge
						{ 58.5, 21.7, LABYRINTH_KINDOJAN },	-- Nalorakk's Rest
						{ 88.5, 51.5, LABYRINTH_KINDOJAN },	-- The Cave Towers
					},
					cost = { { "i", 282402, 1 } },	-- 1x Archaic Amani Key
				}),
				ach(63719, {	-- Lock and Key Master
					description = "Each run randomly selects one out of five special rooms to be a 'Locked Room' and three of them as spawn points for Hexmasks. The final room will be empty.",
					coords = {
						{ 56.8, 17.8, LABYRINTH_KINDOJAN },	-- Akil'zon's Roost
						{ 50.3, 82.6, LABYRINTH_KINDOJAN },	-- Chamber of Rites
						{ 18.8, 18.2, LABYRINTH_KINDOJAN },	-- Jan'alai's Refuge
						{ 58.5, 21.7, LABYRINTH_KINDOJAN },	-- Nalorakk's Rest
						{ 88.5, 51.5, LABYRINTH_KINDOJAN },	-- The Cave Towers
					},
					cost = { { "i", 282402, 20 } },	-- 20x Archaic Amani Key
					groups = { title(798) },	-- Lockpickin' <Name>
				}),
				ach(63723),	-- My Labyrinth
				ach(63716, {	-- The First Hash'ey
					title(796),	-- Loa-Blessed <Name>
				}),
				ach(63721),	-- The Labyrinth of Kindo'jan
				ach(64118, {	-- The Labyrinth of Kindo'jan: One-Champion Army
					timeline = { REMOVED_12_1_7 },
					groups = {
						title(802),	-- Lone Raider <Name>
					},
				}),
				ach(63727),	-- Treasures Upon Treasures (10 Oddities)
				ach(63728),	-- A Few More Can't Hurt (50 Oddities)
				ach(63722, {	-- Who's Labyrinth?
					title(799),	-- Maze Runner <Name>
				}),
			}),
			n(266500,{	-- Kindo'jan
				questID = 98967,	-- TODO: verify if repeatable etc. or maybe this indicates something else
			}),
			n(DELVE_COMPLETION, {	-- UI Elements
				i(285807),	-- Heroic Soul Fragment
				i(285875),	-- Kindo'jan (Tier 8+)
				i(285876),	-- Zah'ran (Tier 6+)
				i(285877),	-- Zah'ran (Tier ??)
			}),
			n(FACTIONS, {
				faction(2836),	-- Kindo'jan's Labyrinth
				title(803, {	-- <Name> of the Labyrinth
					minReputation = { 2836, 9 },	-- Kindo'jan's Labyrinth, Rank 9
				}),
			}),
			n(FLIGHT_PATHS, sharedData({
				minReputation = { 2836, 4 },	-- Kindo'jan's Labyrinth, Rank 4
			}, {
				fp(3300, {	-- Chamber of Rites
					coord = { 44.4, 72.1, LABYRINTH_KINDOJAN },
					cr = 273261,	-- Kinduru <Herald of de Loa>
				}),
				fp(3304, {	-- The Reliquary
					coord = { 28.5, 67.4, LABYRINTH_KINDOJAN },
					cr = 273515,	-- Kinduru <Herald of de Loa>
				}),
				fp(3306, {	-- Halazzi's Lair
					coord = { 20.2, 46.8, LABYRINTH_KINDOJAN },
					cr = 273571,	-- Kinduru <Herald of de Loa>
				}),
				-- TODO: is this bugged, i cannot unlock it. no connected FPs kek
				fp(3308, {	-- Central Chamber
					coord = { 44.1, 46.8, LABYRINTH_KINDOJAN },
					cr = 273569,	-- Kinduru <Herald of de Loa>
				}),
				fp(3310, {	-- The Catacombs
					coord = { 60.2, 68.7, LABYRINTH_KINDOJAN },
					cr = 273570,	-- Kinduru <Herald of de Loa>
				}),
				fp(3313, {	-- The Cave Towers
					coord = { 83.2, 93.8, LABYRINTH_KINDOJAN },
					cr = 273575,	-- Kinduru <Herald of de Loa>
				}),
				fp(3315, {	-- Jan'alai's Refuge
					coord = { 25.7, 26.8, LABYRINTH_KINDOJAN },
					cr = 273572,	-- Kinduru <Herald of de Loa>
				}),
				fp(3317, {	-- Akil'zon's Roost
					coord = { 25.7, 26.8, LABYRINTH_KINDOJAN },
					cr = 273572,	-- Kinduru <Herald of de Loa>
				}),
				fp(3319, {	-- Nalorakk's Den
					coord = { 65.2, 32.2, LABYRINTH_KINDOJAN },
					cr = 273574,	-- Kinduru <Herald of de Loa>
				}),
			})),
			n(FLIGHT_PATHS, sharedData({
				-- Exo Note: These show up on the Flight Map as places where you can land. They are not actual Flight Path collectibles.
				collectible = false,
			}, {
				fp(3301),	-- Entrance to The Reliquary
				fp(3305),	-- Entrance to Halazzi's Lair
				fp(3307),	-- Entrance to The Central Chamber
				fp(3309),	-- Entrance to The Catacombs
				fp(3311),	-- Entrance to The Central Chamber
				fp(3312),	-- Entrance to The Cave Towers
				fp(3314),	-- Entrance to Jan'alai's Refuge
				fp(3316),	-- Entrance to Akil'zon's Roost
				fp(3318),	-- Entrance to Nalorakk's Den
				fp(3329),	-- Entrance to The Central Chamber
			})),
			n(QUESTS, {
				q(99312, {	-- On the Trail of Kindo'jan
					description = "This quest is obtained from Any Delve. In order not to lose Quest Completion, go back to the Labyrinth entrance and pick up the Quest from the Tablet.",
					provider = { "i", 287078 },	-- Ancient Amani Tablet (QS!)
					isBreadcrumb = true,
				}),
				q(99306, {	-- The Labyrinth of Kindo'jan
					provider = { "o", 701639 },	-- Amani Tablet
					coord = { 62.9, 72.0, MAP.MIDNIGHT.EVERSONG_WOODS },
					isBreadcrumb = true,
				}),
				q(98831, {	-- The Labyrinth
					sourceQuests = {	-- There are 2 breadcrumb quests. One from the Labyrinth Entrance, One from the Delves (QS!) Item. Only 1 of them is required but, sourceQuestNumRequired is not used because we want to warn users of both of them.
						99312,	-- On the Trail of Kindo'jan
						99306,	-- The Labyrinth of Kindo'jan
					},
					qgs = {
						265173,	-- Kul'amara the Fierce
						276329,	-- Kul'amara the Fierce
						277031,	-- Kul'amara the Fierce
					},
					coords = {
						{ 33.2, 25.5, MAP.MIDNIGHT.ATAL_AMAN_OUTDOOR },
						{ 34.5, 17.0, MAP.MIDNIGHT.ZULAMAN },
						{ 57.9, 46.7, MAP.MIDNIGHT.THE_COILED_ISLE },
					},
				}),
				q(98832, {	-- Dangers Untold and Hardships Unnumbered
					sourceQuest = 98831,	-- The Labyrinth
					qg = 274915,	-- Valeera Sanguinar
					coord = { 62.8, 72.0, MAP.MIDNIGHT.EVERSONG_WOODS },
					groups = {
						o(693668, {	-- Broken Tablet
							-- Exo Note: This is here so that tooltip from object 294114 does not bleed onto this one.
							coord = { 44.5, 68.8, LABYRINTH_KINDOJAN },
						}),
					},
				}),
				q(98833, {	-- You Remind Me of the Bird
					sourceQuest = 98832,	-- Dangers Untold and Hardships Unnumbered
					qg = 274918,	-- Kinduru
					coord = { 38.3, 64.7, LABYRINTH_KINDOJAN },
				}),
				q(98834, {	-- The Way Forward...
					sourceQuest = 98833,	-- You Remind Me of the Bird
					qg = 248567,	-- Valeera Sanguinar
					coord = { 35.6, 64.8, LABYRINTH_KINDOJAN },
				}),
				q(98836, {	-- ...Is Sometimes the Way Back
					sourceQuest = 98834,	-- The Way Forward...
					qg = 248567,	-- Valeera Sanguinar
					coord = { 44.4, 84.6, LABYRINTH_KINDOJAN },
					groups = { i(286643) },	-- Kinduru's Spiriting Quill (TOY!)
				}),
				q(98951, {	-- Akil'zon's Roost
					qg = 264886,	-- Wah'du <Servant of de Loa>
					coord = { 44.4, 79.4, LABYRINTH_KINDOJAN },
					groups = { i(285065) },	-- Mythical Soul Fragment
				}),
				q(98963, {	-- Halazzi's Lair
					sourceQuest = 98951,	-- Akil'zon's Roost
					qg = 264886,	-- Wah'du <Servant of de Loa>
					coord = { 44.4, 79.4, LABYRINTH_KINDOJAN },
					groups = { i(285065) },	-- Mythical Soul Fragment
				}),
				q(98962, {	-- The Cave Towers
					sourceQuest = 98963,	-- Halazzi's Lair
					qg = 264886,	-- Wah'du <Servant of de Loa>
					coord = { 44.4, 79.4, LABYRINTH_KINDOJAN },
					groups = { i(285065) },	-- Mythical Soul Fragment
				}),
				q(98961, {	-- Jan'alai's Refuge
					sourceQuest = 98962,	-- The Cave Towers
					qg = 264886,	-- Wah'du <Servant of de Loa>
					coord = { 44.4, 79.4, LABYRINTH_KINDOJAN },
					groups = { i(285065) },	-- Mythical Soul Fragment
				}),
				q(97241, {	-- Voices of Stone
					providers = {
						{ "o", 649924 },	-- Small Loa Figurine
						{ "o", 649937 },	-- Small Loa Figurine
						{ "o", 649938 },	-- Small Loa Figurine
						{ "o", 649939 },	-- Small Loa Figurine
						{ "o", 649940 },	-- Small Loa Figurine
					},
					coords = {
						{ 77.9, 62.7, LABYRINTH_KINDOJAN },
						{ 79.7, 55.2, LABYRINTH_KINDOJAN },
						{ 78.0, 51.4, LABYRINTH_KINDOJAN },
						{ 84.3, 54.1, LABYRINTH_KINDOJAN },
						{ 82.9, 65.6, LABYRINTH_KINDOJAN },
					},
				}),
				filter(MISC, {
					i(271156),	-- Stolen Artifact
				}),
			}),
			n(REWARDS, {
				i(285801),	-- Heroic Soul Fragment
			}),
			n(TREASURES, {
				header(HEADERS.Achievement, 63717, {	-- Kindo'jan's Labyrinth Discoveries
					o(659517, {	-- Sturdy Chest
						coord = { 46.9, 67.0, LABYRINTH_KINDOJAN },
						questID = 97131,
					}),
					o(676585, {	-- Sturdy Chest
						coord = { 36.9, 69.9, LABYRINTH_KINDOJAN },
						questID = 98602,
					}),
					o(676586, {	-- Sturdy Chest
						coord = { 21.4, 36.7, LABYRINTH_KINDOJAN },
						questID = 98603,
					}),
					o(676621, {	-- Sturdy Chest
						description = "This Chest is hidden behind an Ice Wall, accessible through a secret underwater passage.",
						coords = {
							{ 56.7, 44.1, LABYRINTH_KINDOJAN },	-- Secret Passage Entrance
							{ 61.7, 44.2, LABYRINTH_KINDOJAN },	-- Sturdy Chest
						},
						questID = 98604,
					}),
					o(676622, {	-- Sturdy Chest
						description = "Becomes available after unlocking Labyrinth Renown LVL3: Akil'zon's Favor.",
						coord = { 38.8, 83.5, LABYRINTH_KINDOJAN },
						questID = 98605,
						groups = { i(282424) },	-- Akil'zon's Swiftness
					}),
					o(676623, {	-- Sturdy Chest
						description = "Becomes available after unlocking Labyrinth Renown LVL3: Akil'zon's Favor.",
						coord = { 38.0, 83.5, LABYRINTH_KINDOJAN },
						questID = 98606,
						groups = { i(284181) },	-- Loa-Touched Spine (COSMETIC!)
					}),
					o(676624, {	-- Sturdy Chest
						coord = { 21.7, 68.6, LABYRINTH_KINDOJAN },
						questID = 98607,
					}),
					o(676625, {	-- Sturdy Chest
						coord = { 29.9, 74.7, LABYRINTH_KINDOJAN },
						questID = 98608,
					}),
					o(676626, {	-- Sturdy Chest
						coord = { 27.3, 80.9, LABYRINTH_KINDOJAN },
						questID = 98609,
					}),
					o(676627, {	-- Sturdy Chest
						coord = { 26.9, 80.9, LABYRINTH_KINDOJAN },
						questID = 98610,
						groups = { i(280822) },	-- Nalorakk's Strength Charm (TOY!)
					}),
					o(676628, {	-- Sturdy Chest
						coord = { 13.9, 37.8, LABYRINTH_KINDOJAN },
						questID = 98611,
					}),
					o(676629, {	-- Sturdy Chest
						coord = { 26.4, 40.3, LABYRINTH_KINDOJAN },
						questID = 98612,
					}),
					o(676630, {	-- Sturdy Chest
						coord = { 27.4, 33.1, LABYRINTH_KINDOJAN },
						questID = 98613,
						groups = { i(280825) },	-- Rite of Jan'alai's Flame (TOY!)
					}),
					o(676631, {	-- Sturdy Chest
						description = "This Chest is hidden behind an Ice Wall, accessible through a secret underwater passage.",
						coords = {
							{ 56.7, 44.1, LABYRINTH_KINDOJAN },	-- Secret Passage Entrance
							{ 61.1, 43.5, LABYRINTH_KINDOJAN },	-- Sturdy Chest
						},
						questID = 98614,
					}),
					o(676632, {	-- Sturdy Chest
						coord = { 27.8, 34.6, LABYRINTH_KINDOJAN },
						questID = 98615,
						groups = { i(283996) },	-- Ancient Hash'ey Battle Art: Heat Wave
					}),
					o(676633, {	-- Sturdy Chest
						coord = { 11.4, 54.3, LABYRINTH_KINDOJAN },
						questID = 98616,
						groups = { i(282718) },	-- Halazzi's Shroud
					}),
					o(676635, {	-- Sturdy Chest
						coord = { 9.6, 54.8, LABYRINTH_KINDOJAN },
						questID = 98618,
					}),
					o(676636, {	-- Sturdy Chest
						coord = { 10.5, 55.0, LABYRINTH_KINDOJAN },
						questID = 98617,
						groups = { i(284182) },	-- Loa-Touched Visage (COSMETIC!)
					}),
					o(676637, {	-- Sturdy Chest
						description = "This Chest is hidden behind an Ice Wall, accessible through a secret underwater passage.",
						coords = {
							{ 56.7, 44.1, LABYRINTH_KINDOJAN },	-- Secret Passage Entrance
							{ 61.5, 44.7, LABYRINTH_KINDOJAN },	-- Sturdy Chest
						},
						questID = 98619,
						groups = {	-- Exo: Loot confirmed. All 3 decor pieces.
							i(284357),	-- Ancient Amani Mural (DECOR!)
							i(264486),	-- Brown Amani Tapestry (DECOR!)
							i(244349),	-- Ruined Amani Ritual Urn (DECOR!)
						},
					}),
					o(676639, {	-- Sturdy Chest
						coord = { 28.7, 23.1, LABYRINTH_KINDOJAN },
						questID = 98620,
					}),
					o(676640, {	-- Sturdy Chest
						coord = { 22.1, 29.6, LABYRINTH_KINDOJAN },
						questID = 98621,
					}),
					o(676641, {	-- Sturdy Chest
						coord = { 22.7, 12.2, LABYRINTH_KINDOJAN },
						questID = 98622,
					}),
					o(676642, {	-- Sturdy Chest
						coord = { 22.9, 12.0, LABYRINTH_KINDOJAN },
						questID = 98623,
						groups = { i(284180) },	-- Loa-Touched Deltoid (COSMETIC!)
					}),
					o(676643, {	-- Sturdy Chest
						coord = { 46.3, 11.8, LABYRINTH_KINDOJAN },
						questID = 98624,
					}),
					o(676645, {	-- Sturdy Chest
						coord = { 40.6, 20.3, LABYRINTH_KINDOJAN },
						questID = 98625,
					}),
					o(676646, {	-- Sturdy Chest
						description = "Becomes available after unlocking Labyrinth Renown LVL3: Akil'zon's Favor.",
						coord = { 30.6, 15.6, LABYRINTH_KINDOJAN },
						questID = 98626,
						groups = { i(280823) },	-- Feathers of Akil'zon (TOY!)
					}),
					o(676647, {	-- Sturdy Chest
						description = "Becomes available after unlocking Labyrinth Renown LVL3: Akil'zon's Favor.",
						coord = { 30.6, 15.1, LABYRINTH_KINDOJAN },
						questID = 98627,
					}),
					o(676648, {	-- Sturdy Chest
						coord = { 68.2, 34.1, LABYRINTH_KINDOJAN },
						questID = 98628,
					}),
					o(676649, {	-- Sturdy Chest
						coord = { 67.9, 27.7, LABYRINTH_KINDOJAN },
						questID = 98629,
					}),
					o(676650, {	-- Sturdy Chest
						coord = { 65.4, 42.5, LABYRINTH_KINDOJAN },
						questID = 98630,
						groups = { i(282427) },	-- Nalorakk's Ferocity
					}),
					o(676651, {	-- Sturdy Chest
						description = "This Chest is hidden behind an Ice Wall, accessible through a secret underwater passage.",
						coords = {
							{ 56.7, 44.1, LABYRINTH_KINDOJAN },	-- Secret Passage Entrance
							{ 61.2, 44.8, LABYRINTH_KINDOJAN },	-- Sturdy Chest
						},
						questID = 98631,
					}),
					o(676652, {	-- Sturdy Chest
						coord = { 64.7, 42.9, LABYRINTH_KINDOJAN },
						questID = 98632,
						groups = { i(283997) },	-- Ancient Hash'ey Battle Art: Ursine's Ironhide
					}),
					o(676653, {	-- Sturdy Chest
						coord = { 81.3, 55.0, LABYRINTH_KINDOJAN },
						questID = 98633,
					}),
					o(676657, {	-- Sturdy Chest
						coord = { 86.9, 63.3, LABYRINTH_KINDOJAN },
						questID = 98634,
					}),
					o(676658, {	-- Sturdy Chest
						description = "Becomes available after unlocking Labyrinth Renown LVL3: Akil'zon's Favor.",
						coord = { 89.0, 78.0, LABYRINTH_KINDOJAN },
						questID = 98635,
						groups = { i(280563) },	-- Ancient Hash'ey Battle Art: Falco Strikes
					}),
					o(676660, {	-- Sturdy Chest
						description = "Becomes available after unlocking Labyrinth Renown LVL3: Akil'zon's Favor.",
						coord = { 88.5, 77.3, LABYRINTH_KINDOJAN },
						questID = 98636,
					}),
					o(676661, {	-- Sturdy Chest
						coord = { 72.4, 65.9, LABYRINTH_KINDOJAN },
						questID = 98637,
					}),
					o(676663, {	-- Sturdy Chest
						coord = { 69.2, 71.0, LABYRINTH_KINDOJAN },
						questID = 98638,
					}),
					o(676664, {	-- Sturdy Chest
						coord = { 66.6, 51.5, LABYRINTH_KINDOJAN },
						questID = 98639,
						groups = { i(280821) },	-- Trail of Halazzi (TOY!)
					}),
					o(676666, {	-- Sturdy Chest
						description = "This Chest is hidden behind an Ice Wall, accessible through a secret underwater passage.",
						coords = {
							{ 56.7, 44.1, LABYRINTH_KINDOJAN },	-- Secret Passage Entrance
							{ 61.5, 43.6, LABYRINTH_KINDOJAN },	-- Sturdy Chest
						},
						questID = 98640,
					}),
					o(676668, {	-- Sturdy Chest
						coord = { 67.2, 51.5, LABYRINTH_KINDOJAN },
						questID = 98641,
						groups = { i(283998) },	-- Ancient Hash'ey Battle Art: Eye of the Lynx
					}),
					o(676759, {	-- Sturdy Chest
						description = "Below the pathway.",
						coord = { 40.6, 45.4, LABYRINTH_KINDOJAN },
						questID = 98648,
					}),
					o(676760, {	-- Sturdy Chest
						coord = { 47.7, 40.0, LABYRINTH_KINDOJAN },
						questID = 98649,
					}),
					o(676761, {	-- Sturdy Chest
						coord = { 46.0, 48.3, LABYRINTH_KINDOJAN },
						questID = 98650,
					}),
				}),
				o(689304, {	-- Ancestral Bounty
					questID = 98758,
					isWeekly = true,	-- assumed
					sym = {{"select","itemID",
						-- uncommented are confirmed 'special' drops
						-- 264971,	-- Annihilation Rod (COSMETIC!)
						264970,	-- Oblivion's Edge (COSMETIC!)
						-- 265368,	-- Twilight Destroyer (COSMETIC!)
						265366,	-- Twilight Executioner (COSMETIC!)
						-- 265367,	-- Twilight Fang (COSMETIC!)
					}},
					groups = { i(280820) },	-- Loa-Blessed Victory (TOY!)
				}),
				o(676583, {	-- Ancient Keyper's Bag
					description = "Spawns next to the corpse of 'Keeper of the Key' after you defeat him.\n He has a chance to spawn anywhere in the Labyrinth.",
					coords = {
						{ 28.7, 72.3, LABYRINTH_KINDOJAN },
						{ 87.5, 68.7, LABYRINTH_KINDOJAN },
					},
					cr = 273788,	-- Keeper of the Key
					groups = { i(282402) },	-- Archaic Amani Key
				}),
				o(673143, {	-- Bountiful Heavy Trunk
				}),
				o(673144, {	-- Bountiful Heavy Trunk
				}),
				o(673137, {	-- Gilded Stash
				}),
				o(673138, {	-- Gilded Stash
				}),
				o(696116, {	-- Impressive Treasure Chest
					description = "Spawns after finishing 'Dundun' event.",
					coord = { 44.3, 73.3, LABYRINTH_KINDOJAN },	-- TODO: Does this happen only at the start in the Chamber of Rites?
				}),
				o(654950, {	-- Impressive Treasure Trove
					description = "Spawns after finishing 'Jan'alai's' event.",
					coord = { 24.8, 22.5, LABYRINTH_KINDOJAN },
				}),
				o(654948, {	-- Massive Treasure Trove
				}),
				o(677414, {	-- Mislaid Curiosity
					description = "Can be found behind the 'Locked Doors' inside the Labyrinth.",
				}),
				o(677416, {	-- Mislaid Curiosity
					description = "Can be found behind the 'Locked Doors' inside the Labyrinth.",
				}),
				o(677417, {	-- Mislaid Curiosity
				}),
				o(677418, {	-- Mislaid Curiosity
					description = "Can be found behind the 'Locked Doors' inside the Labyrinth.",
				}),
				o(676747, {	-- Mislaid Treasure
					description = "Spawns randomly throughout the Labyrinth.",
				}),
				o(677411, {	-- Mislaid Treasure
					description = "Can be found behind the 'Locked Doors' inside the Labyrinth.",
				}),
				o(705929, {	-- Mislaid Treasure
				}),
				o(705955, {	-- Mislaid Treasure
					description = "Can be found behind the 'Locked Doors' inside the Labyrinth.",
				}),
				o(705956, {	-- Mislaid Treasure
				}),
				o(705957, {	-- Mislaid Treasure
					description = "Can be found behind the 'Locked Doors' inside the Labyrinth.",
				}),
				o(705958, {	-- Mislaid Treasure
				}),
				o(705959, {	-- Mislaid Treasure
					description = "Can be found behind the 'Locked Doors' inside the Labyrinth.",
				}),
			}),
			--n(VENDORS, {
			--}),
			n(ZONE_REWARDS, {
				providers = {
					{ "o", 705929 },	-- Mislaid Treasure
				},
				groups = {
					-- From Sturdy Chests, Bountiful Trunks, and Mislaid Treasures, drop chance random
					i(284052),	-- Amani Effigy (COSMETIC!)
					i(252044),	-- Amani Horn Cup (DECOR!)
					i(264484),	-- Blue Amani Tapestry (DECOR!)
					i(284359),	-- Corroded Amani Sconce (DECOR!)
					i(284057),	-- Effigy of Corrosion (COSMETIC!)
					i(263321),	-- Frayed Amani Offering Basket (DECOR!)
					i(284051),	-- Hexbearer's Pauldrons (COSMETIC!)
					i(284054),	-- Hexdrinker's Shoulders (COSMETIC!)
					i(244350),	-- Shattered Amani Ritual Urn (DECOR!)
					i(264256),	-- Wall-Mounted Amani Animal Trophy (DECOR!)
				},
			}),
		},
	}),
}))

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.MID, {
	n(DELVES, {
		m(LABYRINTH_KINDOJAN, {
			timeline = { ADDED_12_1_5 },
			groups = {
				q(98842),	-- completion of 9 chambers in one run
				q(99585),	-- Treasure Chest event
			},
		}),
	}),
}))
