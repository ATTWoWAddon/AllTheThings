---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(EASTERN_KINGDOMS, {
	m(SILVERPINE_FOREST, {
		["lore"] = "Silverpine Forest is a vast ancient wood that runs along Lordaeron's rugged western coast. The land ranges from fairly flat to hilly, and is nestled among even taller mountains. The forest is eerily silent save for the occasional unnatural howling echoing among the trees. Mossy overhangs shiver in the cold breeze, and the trees are all sickly or dying. Dilapidated farmsteads and abandoned mines dot the land, home now to the darker denizens of the woods.\n\nThis woodland is haunted and wild, characterized by its tall, silver-barked pines towering over grassy knolls. The Alliance once protected Silverpine Forest when it was verdant and lively. Now the place is shrouded in ghostly mists. Forsaken control the northern forest. What remains of the human population retains control of the southern forest, but they are desperate and their forces thinly stretched. Dalaran sends frequent expeditions into Silverpine to defend these people and study the undead plague and worgen curse — a mysterious affliction that causes its victims to transform into bloodthirsty, lycanthropic worgen when the moon rises.",
		["icon"] = 236830,
		["groups"] = {
			n(ACHIEVEMENTS, {
				ach(769),	-- Explore Silverpine Forest
				ach(4894, {	-- Silverpine Forest Quests
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					-- #if AFTER 7.3.5
					["_doautomation"] = true,
					-- #else
					["sourceQuests"] = {
						27056,	-- Belmont's Report
						27096,	-- Orcs are in Order
						27290,	-- To Forsaken Forward Command
						27438,	-- The Great Escape
						27518,	-- Transdimensional Warfare: Chapter III
						27601,	-- Cities in Dust
					},
					-- #endif
				}),
			}),
			battlepets({
				["sym"] = {{"select","speciesID",
					628,	-- Infected Fawn (PET!)
					627,	-- Infected Squirrel (PET!)
					378,	-- Rabbit (PET!)
					417,	-- Rat (PET!)
					387,	-- Snake (PET!)
					379,	-- Squirrel (PET!)
					420,	-- Toad (PET!)
				}},
				["groups"] = {
					pet(455),	-- Blighted Squirrel (PET!)
				},
			}),
			explorationHeader({
				exploration(233),	-- Ambermill
				exploration(231),	-- Beren's Peril
				exploration(213),	-- Deep Elem Mine
				exploration(172),	-- Fenris Isle
				-- #if AFTER CATA
				exploration(5369),	-- Forsaken High Command
				exploration(5386),	-- Forsaken Rear Guard
				-- #endif
				-- #if BEFORE CATA
				exploration(238),	-- Malden's Orchard
				-- #endif
				-- #if AFTER CATA
				exploration(928),	-- North Tide's Beachhead
				-- #endif
				-- #if BEFORE CATA
				exploration(928),	-- North Tide's Hollow
				-- #endif
				-- #if AFTER CATA
				exploration(305),	-- North Tide's Run
				-- #endif
				exploration(229),	-- Olsen's Farthing
				-- #if AFTER CATA
				exploration(5476),	-- Pyrewood Chapel
				exploration(5478),	-- Pyrewood Town Hall
				-- #endif
				exploration(204),	-- Pyrewood Village
				exploration(236),	-- Shadowfang Keep
				-- #if AFTER CATA
				exploration(5456),	-- The Battlefront
				-- #endif
				exploration(232),	-- The Dawning Isles
				-- #if AFTER CATA
				exploration(237),	-- The Decrepit Fields
				-- #endif
				-- #if BEFORE CATA
				exploration(240),	-- The Dead Field
				exploration(237),	-- The Decrepit Ferry
				-- #endif
				-- #if AFTER CATA
				exploration(5387),	-- The Forsaken Front
				-- #endif
				exploration(230),	-- The Greymane Wall
				exploration(239),	-- The Ivar Patch
				exploration(228),	-- The Sepulcher
				-- #if BEFORE CATA
				exploration(927),	-- The Shining Strand
				-- #endif
				exploration(226),	-- The Skittering Dark
				exploration(227),	-- Valgan's Field
			}),
			n(FLIGHT_PATHS, {
				fp(645, {	-- Forsaken High Command, Silverpine Forest
					["cr"] = 44825,	-- Bat Handler Maggotbreath <Flight Master>
					["coord"] = { 57.8, 8.80, SILVERPINE_FOREST },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				fp(681, {	-- Forsaken Rear Guard, Silverpine Forest
					["cr"] = 50463,	-- Franny Mertz <Bat Handler>
					["coord"] = { 45.8, 21.8, SILVERPINE_FOREST },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				fp(654, {	-- The Forsaken Front, Silverpine Forest
					["cr"] = 46552,	-- Steven Stutzka <Bat Handler>
					["coord"] = { 50.8, 63.6, SILVERPINE_FOREST },
					["timeline"] = { ADDED_4_0_1 },
					["races"] = HORDE_ONLY,
				}),
				fp(10, {	-- The Sepulcher, Silverpine Forest
					["cr"] = 2226,	-- Karos Razok <Bat Handler>
					["coords"] = {
						-- #if AFTER CATA
						{ 45.4, 42.4, SILVERPINE_FOREST },
						-- #else
						{ 45.6, 42.6, SILVERPINE_FOREST },
						-- #endif
					},
					["races"] = HORDE_ONLY,
				}),
			}),
			n(QUESTS, {
				q(27577, {	-- 7th Legion Battle Plans
					["sourceQuests"] = {
						27548,	-- Lessons in Fear
						27547,	-- Of No Consequence
						27550,	-- Pyrewood's Fall
					},
					["qg"] = 45879,	-- Lord Walden
					["coord"] = { 51.8, 65.0, SILVERPINE_FOREST },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 7th Legion Battle Plan
							["provider"] = { "i", 61510 },	-- 7th Legion Battle Plan
							["crs"] = {
								45855,	-- Dwarven Infantry
								45995,	-- General Marstone
							},
						}),
					},
				}),
				q(530, {	-- A Husband's Revenge
					["sourceQuest"] = 441,	-- Raleigh and the Undercity
					["qg"] = 2050,	-- Raleigh Andrean
					["coord"] = { 62, 43, UNDERCITY },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 10,
					["groups"] = {
						objective(1, {
							["provider"] = { "i", 3613 },	-- Valdred's Hands
							["coord"] = { 46.4, 84.6, SILVERPINE_FOREST },
							["cr"] = 2332,	-- Valdred Moray
						}),
						i(3235, {	-- Ring of Scorn
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(447, {	-- A Recipe For Death (1/3)
					["qg"] = 1937,	-- Apothecary Renferrel
					["coord"] = { 43.4, 40.8, SILVERPINE_FOREST },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 9,
					["groups"] = {
						objective(1, {	-- 0/6 Grizzled Bear Heart
							["provider"] = { "i", 3253 },	-- Grizzled Bear Heart
							["crs"] = {
								1778,	-- Ferocious Grizzled Bear
								1797,	-- Giant Grizzled Bear
								12432,	-- Old Vicejaw
							},
						}),
						objective(2, {	-- 0/6 Skittering Blood
							["provider"] = { "i", 3254 },	-- Skittering Blood
							["crs"] = {
								12433,	-- Krethis Shadowspinner
								1781,	-- Mist Creeper
								1780,	-- Moss Stalker
							},
						}),
						-- #if BEFORE 4.0.3
						i(3448),	-- Senggin Root
						-- #endif
					},
				}),
				q(450, {	-- A Recipe For Death (2/3)
					["sourceQuest"] = 447,	-- A Recipe For Death (1/3)
					["qg"] = 2055,	-- Master Apothecary Faranell
					["coord"] = { 48.6, 69.4, UNDERCITY },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 9,
					["groups"] = {
						objective(1, {	-- 0/1 Berard's Journal
							["providers"] = {
								{ "i", 3255 },	-- Berard's Journal
								{ "o", 1594 },	-- Berard's Bookshelf
							},
							["coord"] = { 43.0, 73.3, SILVERPINE_FOREST },
						}),
					},
				}),
				q(451, {	-- A Recipe For Death (3/3)
					["sourceQuest"] = 450,	-- A Recipe For Death (2/3)
					["qg"] = 1937,	-- Apothecary Renferrel
					["coord"] = { 43.4, 40.8, SILVERPINE_FOREST },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 9,
					["groups"] = {
						objective(1, {	-- 0/6 Lake Skulker Moss
							["provider"] = { "i", 3256 },	-- Lake Skulker Moss
							["crs"] = {
								1954,	-- Elder Lake Skulker
								1953,	-- Lake Skulker
							},
						}),
						objective(2, {	-- 0/6 Lake Creeper Moss
							["provider"] = { "i", 3257 },	-- Lake Creeper Moss
							["crs"] = {
								1956,	-- Elder Lake Creeper
								1955,	-- Lake Creeper
							},
						}),
						objective(3, {	-- 0/1 Hardened Tumor
							["provider"] = { "i", 3258 },	-- Hardened Tumor
							["crs"] = {
								1909,	-- Vile Fin Lakestalker
								1908,	-- Vile Fin Oracle
								1957,	-- Vile Fin Shorecreeper
								1767,	-- Vile Fin Shredder
								1958,	-- Vile Fin Tidecaller
								1768,	-- Vile Fin Tidehunter
							},
						}),
						i(3451, {	-- Nightglow Concoction
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(3582, {	-- Acidproof Cloak
							["timeline"] = { REMOVED_4_0_3 },
						}),
						-- #if BEFORE 4.0.3
						i(2458),	-- Elixir of Minor Fortitude
						i(2459),	-- Swiftness Potion
						-- #endif
					},
				}),
				q(27510, {	-- A Wolf in Bear's Clothing
					["sourceQuest"] = 27484,	-- Only One May Enter
					["qg"] = 45631,	-- High Warlord Cromush
					["coord"] = { 52.2, 66.3, SILVERPINE_FOREST },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/10 Inconspicuous Bear slain
							["provider"] = { "n", 45750 },	-- Inconspicuous Bear
						}),
						i(62885, {	-- Unmistakable Gloves
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(62883, {	-- Inconspicuous Pantaloons
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(62884, {	-- "Bear" Hide Boots
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131678, {	-- Inconspicuous Footguards
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(26992, {	-- Agony Abounds
					["sourceQuest"] = 26965,	-- The Warchief Cometh
					["qg"] = 44778,	-- Apothecary Witherbloom
					["coord"] = { 56.7, 9.1, SILVERPINE_FOREST },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/8 Ferocious Doomweed
							["providers"] = {
								{ "i", 60741 },	-- Ferocious Doomweed
								{ "o", 205099 },	-- Ferocious Doomweed
							},
						}),
					},
				}),
				q(479, {	-- Ambermill Investigations
					["sourceQuest"] = 482,	-- Dalaran's Intentions
					["qg"] = 2121,	-- Shadow Priest Allister
					["coord"] = { 44, 41, SILVERPINE_FOREST },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 10,
					["groups"] = {
						objective(1, {	-- 0/8 Dalaran Pendant
							["provider"] = { "i", 3354 },	-- Dalaran Pendant
							["crs"] = {
								1915,	-- Dalaran Conjuror
								1914,	-- Dalaran Mage
								1912,	-- Dalaran Protector
							},
						}),
					},
				}),
				q(422, {	-- Arugal's Folly (1/4)
					["sourceQuest"] = 421,	-- Prove Your Worth
					["qg"] = 1938,	-- Dalar Dawnweaver
					["coord"] = { 44.2, 39.8, SILVERPINE_FOREST },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 9,
					["groups"] = {
						objective(1, {	-- 0/1 Remedy of Arugal
							["providers"] = {
								{ "i", 3155 },	-- Remedy of Arugal
								{ "o", 1571 },	-- Dusty Spellbooks
							},
							["coord"] = { 52.8, 28.4, SILVERPINE_FOREST },
						}),
					},
				}),
				q(423, {	-- Arugal's Folly (2/4)
					["sourceQuest"] = 422,	-- Arugal's Folly (1/4)
					["qg"] = 1938,	-- Dalar Dawnweaver
					["coord"] = { 44.2, 39.8, SILVERPINE_FOREST },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 9,
					["groups"] = {
						objective(1, {	-- 0/6 Glutton Shackle
							["provider"] = { "i", 3156 },	-- Glutton Shackle
							["cr"] = 1779,	-- Moonrage Glutton
						}),
						objective(2, {	-- 0/3 Darksoul Shackle
							["provider"] = { "i", 3157 },	-- Darksoul Shackle
							["cr"] = 1782,	-- Moonrage Darksoul
						}),
					},
				}),
				q(424, {	-- Arugal's Folly (3/4)
					["sourceQuest"] = 423,	-- Arugal's Folly (2/4)
					["qg"] = 1938,	-- Dalar Dawnweaver
					["coord"] = { 44.2, 39.8, SILVERPINE_FOREST },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 9,
					["groups"] = {
						objective(1, {	-- 0/1 Head of Grimson
							["provider"] = { "i", 3634 },	-- Head of Grimson
							["coord"] = { 58.6, 44.8, SILVERPINE_FOREST },
							["cr"] = 1972,	-- Grimson the Pale
						}),
					},
				}),
				q(99, {	-- Arugal's Folly (4/4)
					["sourceQuest"] = 424,	-- Arugal's Folly (3/4)
					["qg"] = 1938,	-- Dalar Dawnweaver
					["coord"] = { 44.2, 39.8, SILVERPINE_FOREST },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 9,
					["groups"] = {
						objective(1, {	-- 0/6 Pyrewood Shackle
							["provider"] = { "i", 3218 },	-- Pyrewood Shackle
							["crs"] = {
								3529,	-- Moonrage Armorer
								1896,	-- Moonrage Elder
								3533,	-- Moonrage Leatherworker
								1893,	-- Moonrage Sentry
								3531,	-- Moonrage Tailor
								1892,	-- Moonrage Watcher
								3528,	-- Pyrewood Armorer
								1895,	-- Pyrewood Elder
								3532,	-- Pyrewood Leatherworker
								1894,	-- Pyrewood Sentry
								3530,	-- Pyrewood Tailor
								1891,	-- Pyrewood Watcher
							},
						}),
						i(3586, {	-- Logsplitter
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(3570, {	-- Bonegrinding Pestle
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(5242, {	-- Cinder Wand
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(442, {	-- Assault on Fenris Isle
					["sourceQuest"] = 448,	-- Report to Hadrec
					["qg"] = 1952,	-- High Executor Hadrec
					["coord"] = { 43.4, 40.8, SILVERPINE_FOREST },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 10,
					["groups"] = {
						objective(1, {	-- 0/1 Thule's Head
							["provider"] = { "i", 3623 },	-- Thule's Head
							["coord"] = { 65.6, 24.6, SILVERPINE_FOREST },
							["cr"] = 1947,	-- Thule Ravenclaw
						}),
						i(3461, {	-- High Robe of the Adjudicator
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(3462, {	-- Talonstrike
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(27056, {	-- Belmont's Report
					["sourceQuest"] = 27045,	-- Waiting to Exsanguinate
					["qg"] = 44789,	-- Deathstalker Commander Belmont
					["coord"] = { 58.0, 8.9, SILVERPINE_FOREST },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				q(516, {	-- Beren's Peril
					["qg"] = 2121,	-- Shadow Priest Allister
					["coord"] = { 44, 41, SILVERPINE_FOREST },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 16,
					["groups"] = {
						objective(1, {	-- 0/6 Ravenclaw Drudger slain
							["provider"] = { "n", 1974 },	-- Ravenclaw Drudger
						}),
						objective(2, {	-- 0/6 Ravenclaw Guardian slain
							["provider"] = { "n", 1973 },	-- Ravenclaw Guardian
						}),
						i(5252, {	-- Wand of Decay
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(477, {	-- Border Crossings
					["providers"] = {
						{ "n", 2121 },	-- Shadow Priest Allister
						{ "o", 1627 },	-- Dalaran Crate
					},
					["coord"] = { 44, 41, SILVERPINE_FOREST },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 10,
				}),
				q(27474, {	-- Breaking the Barrier
					["sourceQuest"] = 27472,	-- Rise, Godfrey
					["qg"] = 45617,	-- Lady Sylvanas Windrunner
					["coord"] = { 51.8, 65.0, SILVERPINE_FOREST },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Ambermill Codex
							["providers"] = {
								{ "i", 61306 },	-- Ambermill Codex
								{ "o", 205534 },	-- Ambermill Codex
							},
						}),
					},
				}),
				q(27601, {	-- Cities in Dust
					["sourceQuest"] = 27594,	-- On Her Majesty's Secret Service
					["qg"] = 45617,	-- Lady Sylvanas Windrunner
					["coord"] = { 51.8, 65.0, SILVERPINE_FOREST },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(62897, {	-- Bracers of the Most Trusted
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131680, {	-- Belt of Absolute Allegiance
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(62896, {	-- Belt of Beginnings
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(62895, {	-- Slippers of Unturned Loyalties
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(27194, {	-- Cornered and Crushed!
					["sourceQuest"] = 27193,	-- Seek and Destroy
					["qg"] = 44365,	-- Lady Sylvanas Windrunner
					["coord"] = { 44.8, 41.6, SILVERPINE_FOREST },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				q(27476, {	-- Dalar Dawnweaver
					["sourceQuests"] = {
						27474,	-- Breaking the Barrier
						27475,	-- Unyielding Servitors
					},
					["qg"] = 45617,	-- Lady Sylvanas Windrunner
					["coord"] = { 51.8, 65.0, SILVERPINE_FOREST },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				q(481, {	-- Dalar's Analysis
					["sourceQuest"] = 478,	-- Maps and Runes
					["providers"] = {
						{ "n", 2121 },	-- Shadow Priest Allister
						{ "i", 3353 },	-- Rune-inscribed Pendant
					},
					["coord"] = { 44, 41, SILVERPINE_FOREST },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 10,
				}),
				q(482, {	-- Dalaran's Intentions
					["sourceQuest"] = 481,	-- Dalar's Analysis
					["qg"] = 1938,	-- Dalar Dawnweaver
					["coord"] = { 44.2, 39.8, SILVERPINE_FOREST },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 10,
				}),
				q(27039, {	-- Dangerous Intentions
					["sourceQuests"] = {
						26998,	-- Iterating Upon Success
						26989,	-- The Gilneas Liberation Front
					},
					["qg"] = 44789,	-- Deathstalker Commander Belmont
					["coord"] = { 58.0, 8.9, SILVERPINE_FOREST },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				q(27094, {	-- Deeper into Darkness
					["sourceQuest"] = 27095,	-- Skitterweb Menace
					["qg"] = 44917,	-- Warlord Torok
					["coord"] = { 44.0, 21.3, SILVERPINE_FOREST },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Skitterweb Matriarch slain
							["provider"] = { "n", 44906 },	-- Skitterweb Matriarch
						}),
						i(62850, {	-- Drunken Style Bracers
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131640, {	-- Rear Guard Bands
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(62851, {	-- Rear Guard Britches
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(62849, {	-- Skitterweb Glovelettes
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(27746, {	-- Empire of Dirt
					["sourceQuest"] = 27601,	-- Cities in Dust
					["qg"] = 46124,	-- Lady Sylvanas Windrunner
					["coord"] = { 45.3, 84.4, SILVERPINE_FOREST },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				q(435, {	-- Escorting Erland
					["qg"] = 1978,	-- Deathstalker Erland
					["coord"] = { 56.2, 9.2, SILVERPINE_FOREST },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 10,
					["groups"] = {
						i(3455, {	-- Deathstalker Shortsword
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(27181, {	-- Excising the Taint
					["sourceQuest"] = 27098,	-- Lordaeron [Shifted back 1 quest... no history in report Discord 2023-07-29]
					["qg"] = 45195,	-- Bloodfang Stalker
					["coord"] = { 46.1, 50.2, SILVERPINE_FOREST },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/10 Bloodfang Stalker slain
							["provider"] = { "n", 45195 },	-- Bloodfang Stalker
						}),
					},
				}),
				q(27575, {	-- From the Belly of the Beast
					["description"] = "Available while Lord Godfrey is at your side. Once you complete |cFFFFD700On Her Majesty's Secret Service|r, this quest becomes unobtainable.",
					["sourceQuest"] = 27574,	-- I Never Forget a Face
					["altQuests"] = { 27594 },	-- On Her Majesty's Secret Service
					["qg"] = 45878,	-- Lord Godfrey
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Dempsey's Torso
							["provider"] = { "i", 61506 },	-- Dempsey's Torso
							["cr"] = 45896,	-- Marsh Crocolisk
						}),
						objective(2, {	-- 0/1 Dempsey's Appendages
							["provider"] = { "i", 61507 },	-- Dempsey's Appendages
							["cr"] = 45896,	-- Marsh Crocolisk
						}),
						objective(3, {	-- 0/1 Dempsey's Giblets
							["provider"] = { "i", 61508 },	-- Dempsey's Giblets
							["cr"] = 45896,	-- Marsh Crocolisk
						}),
						i(131679, {	-- Better, Stronger, Faster Bracers
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(62887, {	-- Bracers of the Million Gold Man
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(62888, {	-- Leg Bone Covers
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(62886, {	-- Vest of Forsaken Necromancy
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(27073, {	-- Give 'em Hell!
					["sourceQuest"] = 27065,	-- The Warchief's Fleet
					["qg"] = 44917,	-- Warlord Torok
					["coord"] = { 43.9, 21.2, SILVERPINE_FOREST },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/10 Bloodfang Scavenger slain
							["providers"] = {
								{ "n", 44547},	-- Bloodfang Scavenger
								{ "n", 44549},	-- Bloodfang Scavenger
							},
						}),
					},
				}),
				q(26995, {	-- Guts and Gore
					["sourceQuest"] = 26965,	-- The Warchief Cometh
					["qg"] = 44784,	-- High Apothecary Shana T'veen
					["coord"] = { 56.2, 8.3, SILVERPINE_FOREST },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/6 "Clean" Beast Guts
							["provider"] = { "i", 60742 },	-- "Clean" Beast Guts
							["crs"] = {
								1765,	-- Worg
								1778,	-- Ferocious Grizzled Bear
							},
						}),
					},
				}),
				q(27226, {	-- Hair of the Dog
					["sourceQuest"] = 27098,	-- Lordaeron
					["qg"] = 44917,	-- Warlord Torok
					["coord"] = { 45.7, 41.9, SILVERPINE_FOREST },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/8 Orc Sea Dog roused
							["provider"] = { "n", 45196 },	-- Orc Sea Dog
						}),
						i(62846, {	-- Ale-Soaked Robes
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131660, {	-- Cord of the Sepulcher
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(62847, {	-- Sea Dog Belt
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(62848, {	-- Treads of the Sepulcher
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(27180, {	-- Honor the Dead
					["sourceQuest"] = 27098,	-- Lordaeron
					["qg"] = 44365,	-- Lady Sylvanas Windrunner
					["coord"] = { 44.9, 41.6, SILVERPINE_FOREST },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = { i(60862) },	-- Forsaken Insignia (QI!)
				}),
				q(27574, {	-- I Never Forget a Face
					["description"] = "Available while Lord Godfrey is at your side. Once you complete |cFFFFD700On Her Majesty's Secret Service|r, this quest becomes unobtainable.|r",
					["altQuests"] = { 27594 },	-- On Her Majesty's Secret Service
					["provider"] = { "i", 61505 },	-- Partially Digested Head
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["cr"] = 45896,	-- Marsh Crocolisk
				}),
				q(26998, {	-- Iterating Upon Success
					["sourceQuests"] = {
						26992,	-- Agony Abounds
						26995,	-- Guts and Gore
					},
					["qg"] = 44784,	-- High Apothecary Shana T'veen
					["coord"] = { 56.2, 8.4, SILVERPINE_FOREST },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Bat requisitioned from Bat Handler Maggotbreath
							["provider"] = { "n", 44825 },	-- Bat Handler Maggotbreath
						}),
						objective(2, {	-- 0/50 Vile Fin Murloc slain
							["providers"] = {
								{ "n", 1908},	-- Vile Fin Oracle
								{ "n", 1768},	-- Vile Fin Tidehunter
								{ "n", 46574},	-- Vile Fin Tidehunter
							},
						}),
						i(131629, {	-- Maggot-Ridden Greaves
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(62835, {	-- Maggot-Ridden Leggings
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(62836, {	-- Muckdweller Spear
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(62834, {	-- T'veen's Cloak
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(27088, {	-- It's Only Poisonous if You Ingest It
					["sourceQuest"] = 27082,	-- Playing Dirty
					["qg"] = 44912,	-- Apothecary Wormcrud
					["coord"] = { 44.7, 20.9, SILVERPINE_FOREST },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Forest Ettin slain
							["provider"] = { "n", 44367 },	-- Forest Ettin
						}),
						i(62843, {	-- Bush Chicken Remote Injector
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(62845, {	-- Chicken Stuffers
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(62844, {	-- Suppository Preventors
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(425, {	-- Ivar the Foul
					["sourceQuest"] = 430,	-- Return to Quinn
					["qg"] = 1950,	-- Rane Yorick
					["coord"] = { 53.4, 13.4, SILVERPINE_FOREST },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 10,
					["groups"] = {
						objective(1, {	-- 0/1 Ivar's Head
							["provider"] = { "i", 3621 },	-- Ivar's Head
							["coord"] = { 51.8, 13.8, SILVERPINE_FOREST },
							["cr"] = 1971,	-- Ivar the Foul
						}),
						i(3453, {	-- Quilted Bracers
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(3583, {	-- Weathered Belt
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(493, {	-- Journey to Hillsbrad Foothills
					["providers"] = {
						{ "n", 1937 },	-- Apothecary Renferrel
						{ "i", 3468 },	-- Renferrel's Findings
					},
					["coord"] = { 43.4, 40.8, SILVERPINE_FOREST },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 19,
				}),
				q(27548, {	-- Lessons in Fear
					["sourceQuest"] = 27542,	-- Taking the Battlefront
					["qg"] = 45879,	-- Lord Walden
					["coord"] = { 51.8, 65.0, SILVERPINE_FOREST },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/12 7th Legion Scout slain
							["provider"] = { "n", 45883 },	-- 7th Legion Scout
						}),
					},
				}),
				q(27098, {	-- Lordaeron
					["sourceQuest"] = 27099,	-- No Escape
					["qg"] = 44365,	-- Lady Sylvanas Windrunner
					["coord"] = { 57.3, 10.1, SILVERPINE_FOREST },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				q(428, {	-- Lost Deathstalkers
					["qg"] = 1952,	-- High Executor Hadrec
					["coord"] = { 43.4, 40.8, SILVERPINE_FOREST },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 10,
				}),
				q(27093, {	-- Lost in the Darkness
					["sourceQuests"] = {
						27073,	-- Give 'em Hell!
						27069,	-- Steel Thunder
					},
					["qg"] = 44916,	-- Admiral Hatchet
					["coord"] = { 44.0, 21.3, SILVERPINE_FOREST },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/6 Orc Sea Dog rescued
							["provider"] = { "n", 44942 },	-- Orc Sea Dog
						}),
					},
				}),
				q(478, {	-- Maps and Runes
					["sourceQuest"] = 477,	-- Border Crossings
					["providers"] = {
						{ "o", 1627 },	-- Dalaran Crate
						{ "i", 3353 },	-- Rune-inscribed Pendant
					},
					["coord"] = { 49.9, 60.4, SILVERPINE_FOREST },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 10,
				}),
				q(27099, {	-- No Escape
					["sourceQuest"] = 27097,	-- Rise, Forsaken
					["qg"] = 44365,	-- Lady Sylvanas Windrunner
					["coord"] = { 65.7, 26.4, SILVERPINE_FOREST },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(62858, {	-- Flesh and Bone
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(62857, {	-- Staff of the Formidable Opponent
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(62859, {	-- Sword of Insurgence
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(27195, {	-- Nowhere to Run
					["sourceQuest"] = 27194,	-- Cornered and Crushed
					["qg"] = 45228,	-- Master Forteski
					["coord"] = { 55.8, 46.3, SILVERPINE_FOREST },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(62855, {	-- Britches of Desperate Measures
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(62854, {	-- Mace of Calculated Loss
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131652, {	-- Trousers of Desperate Measures
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(62856, {	-- Underestimated Crossbow
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(27547, {	-- Of No Consequence
					["sourceQuest"] = 27542,	-- Taking the Battlefront
					["qg"] = 45880,	-- Baron Ashbury
					["coord"] = { 51.8, 65.0, SILVERPINE_FOREST },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/8 Cowering Trooper rescued
							["provider"] = { "n", 45910 },	-- Cowering Trooper
						}),
					},
				}),
				q(27594, {	-- On Her Majesty's Secret Service
					["sourceQuests"] = {
						27577,	-- 7th Legion Battle Plans
						27580,	-- Sowing Discord
					},
					["qg"] = 45878,	-- Lord Godfrey
					["coord"] = { 51.8, 65.0, SILVERPINE_FOREST },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(62894, {	-- Favor of the Dark Lady
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(62893, {	-- Lorna's Signet
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(62892, {	-- Windrunner Band
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(27484, {	-- Only One May Enter
					["sourceQuests"] = {
						27483,	-- Practical Vengeance
						27478,	-- Relios the Relic Keeper
					},
					["qg"] = 1938,	-- Dalar Dawnweaver
					["coord"] = { 47.0, 43.2, SILVERPINE_FOREST },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				q(27096, {	-- Orcs are in Order
					["sourceQuests"] = {
						27094,	-- Deeper into Darkness
						27088,	-- It's Only Poisonous if You Ingest It
						27093,	-- Lost in the Darkness
					},
					["qg"] = 44916,	-- Admiral Hatchet
					["coord"] = { 44.0, 21.3, SILVERPINE_FOREST },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				q(27082, {	-- Playing Dirty
					["sourceQuest"] = 27065,	-- The Warchief's Fleet
					["qg"] = 44912,	-- Apothecary Wormcrud
					["coord"] = { 44.7, 20.9, SILVERPINE_FOREST },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/8 Diseased Organ
							["provider"] = { "i", 60793 },	-- Diseased Organ
							["crs"] = {
								1766,	-- Rabid Worg
								1797,	-- Giant Rabid Bear
							},
						}),
					},
				}),
				q(27483, {	-- Practical Vengeance
					["sourceQuest"] = 27476,	-- Dalar Dawnweaver
					["qg"] = 1938,	-- Dalar Dawnweaver
					["coord"] = { 47.0, 43.2, SILVERPINE_FOREST },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/12 Dalaran Human slain
							["providers"] = {
								{ "n", 2358},	-- Dalaran Summoner
								{ "n", 2271},	-- Dalaran Shield Guard
								{ "n", 2272},	-- Dalaran Theurgist
								{ "n", 2628},	-- Dalaran Worker
								{ "n", 45734},	-- Relios the Relic Keeper
							},
						}),
						i(62880, {	-- Axe of Practical Vengeance
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(62881, {	-- Dawnweaver's Dagger
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(62882, {	-- Edge of Unlifted Burdens
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(62879, {	-- Psychopathic Hatchet
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(421, {	-- Prove Your Worth
					["qg"] = 1938,	-- Dalar Dawnweaver
					["coord"] = { 44.2, 39.8, SILVERPINE_FOREST },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 9,
					["groups"] = {
						objective(1, {	-- 0/5 Moonrage Whitescalp slain
							["provider"] = { "n", 1769 },	-- Moonrage Whitescalp
						}),
					},
				}),
				q(452, {	-- Pyrewood Ambush
					["qg"] = 2058,	-- Deathstalker Faerleia
					["coord"] = { 46.4, 74.2, SILVERPINE_FOREST },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 12,
					["groups"] = {
						i(3450, {	-- Faerleia's Shield
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(2818, {	-- Stretched Leather Trousers
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(3449, {	-- Mystic Shawl
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(27550, {	-- Pyrewood's Fall
					["sourceQuest"] = 27542,	-- Taking the Battlefront
					["qg"] = 45878,	-- Lord Godfrey
					["coord"] = { 51.8, 65.0, SILVERPINE_FOREST },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				q(441, {	-- Raleigh and the Undercity
					["sourceQuest"] = 440,	-- The Engraved Ring
					["providers"] = {
						{ "n", 1499 },	-- Magistrate Sevren
						{ "i", 3234 },	-- Deliah's Ring
					},
					["coord"] = { 61.2, 50.8, TIRISFAL_GLADES },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { UNDERCITY },
					["races"] = HORDE_ONLY,
					["lvl"] = 10,
				}),
				q(27231, {	-- Reinforcements from Fenris
					["sourceQuest"] = 27098,	-- Lordaeron
					["qg"] = 44916,	-- Admiral Hatchet
					["coord"] = { 45.8, 41.9, SILVERPINE_FOREST },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/10 Hillsbrad Worgen slain
							["providers"] = {
								{ "n", 45254},	-- Hillsbrad Worgen
								{ "n", 45255},	-- Hillsbrad Worgen
							},
						}),
					},
				}),
				q(27478, {	-- Relios the Relic Keeper
					["sourceQuest"] = 27476,	-- Dalar Dawnweaver
					["qg"] = 1938,	-- Dalar Dawnweaver
					["coord"] = { 47.0, 43.2, SILVERPINE_FOREST },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Dalaran Archmage's Signet Ring
							["provider"] = { "i", 61312 },	-- Dalaran Archmage's Signet Ring
							["cr"] = 45734,	-- Relios the Relic Keeper
						}),
						i(62875, {	-- Betrayal's Sting
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(62878, {	-- Codex Breaker
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(62877, {	-- Forsaken Ball
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(62876, {	-- Relios's Mace
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(448, {	-- Report to Hadrec
					["sourceQuest"] = 446,	-- Thule Ravenclaw
					["qg"] = 1937,	-- Apothecary Renferrel
					["coord"] = { 43.4, 40.8, SILVERPINE_FOREST },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 10,
					-- #if BEFORE 4.0.3
					["groups"] = {
						i(3240),	-- Coarse Weightstone
						i(2863),	-- Coarse Sharpening Stone
						i(2313),	-- Medium Armor Kit
					},
					-- #endif
				}),
				q(460, {	-- Resting in Pieces
					["providers"] = {
						{ "i", 3317 },	-- A Talking Head
						{ "o", 1599 },	-- Shallow Grave
					},
					["coord"] = { 65.2, 32.8, SILVERPINE_FOREST },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 12,
				}),
				q(430, {	-- Return to Quinn
					["sourceQuest"] = 429,	-- Wild Hearts
					["providers"] = {
						{ "n", 1937 },	-- Apothecary Renferrel
						{ "i", 3165 },	-- Quinn's Potion
					},
					["coord"] = { 43.4, 40.8, SILVERPINE_FOREST },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 10,
				}),
				-- #if BEFORE CATA
				q(6323, {	-- Ride to the Undercity
					["sourceQuest"] = 6321,	-- Supplying the Sepulcher / Supplying Brill [CATA+]
					["providers"] = {
						{ "n", 2226 },	-- Karos Razok
						{ "i", 16209 },	-- Podrig's Order
					},
					["coord"] = { 45.6, 42.4, SILVERPINE_FOREST },
					["races"] = { UNDEAD },
					["lvl"] = 10,
				}),
				-- #endif
				q(27097, {	-- Rise, Forsaken
					["sourceQuest"] = 27096,	-- Orcs are in Order
					["qg"] = 44365,	-- Lady Sylvanas Windrunner
					["coord"] = { 57.3, 10.1, SILVERPINE_FOREST },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				q(27472, {	-- Rise, Godfrey
					["sourceQuest"] = 27438,	-- The Great Escape
					["qg"] = 45525,	-- Lady Sylvanas Windrunner
					["coord"] = { 51.7, 66.0, SILVERPINE_FOREST },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				q(439, {	-- Rot Hide Clues
					["sourceQuest"] = 438,	-- The Decrepit Ferry
					["providers"] = {
						{ "o", 1593 },	-- Corpse Laden Boat
						{ "i", 3234 },	-- Deliah's Ring
					},
					["coord"] = { 58.4, 34.9, SILVERPINE_FOREST },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 10,
				}),
				q(443, {	-- Rot Hide Ichor
					["sourceQuest"] = 439,	-- Rot Hide Clues
					["qg"] = 1952,	-- High Executor Hadrec
					["coord"] = { 43.4, 40.8, SILVERPINE_FOREST },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 10,
					["groups"] = {
						objective(1, {	-- 0/8 Rot Hide Ichor
							["provider"] = { "i", 3236 },	-- Rot Hide Ichor
							["crs"] = {
								1943,	-- Raging Rot Hide
								1944,	-- Rot Hide Bruiser
								1939,	-- Rot Hide Brute
								1940,	-- Rot Hide Plague Weaver
								1942,	-- Rot Hide Savage
							},
						}),
					},
				}),
				q(444, {	-- Rot Hide Origins
					["sourceQuest"] = 443,	-- Rot Hide Ichor
					["providers"] = {
						{ "n", 1937 },	-- Apothecary Renferrel
						{ "i", 3237 },	-- Sample Ichor
					},
					["coord"] = { 43.4, 40.8, SILVERPINE_FOREST },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 10,
				}),
				q(27193, {	-- Seek and Destroy
					["sourceQuest"] = 27181,	-- Excising the Taint
					["qg"] = 44365,	-- Lady Sylvanas Windrunner
					["coord"] = { 44.8, 41.6, SILVERPINE_FOREST },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Smithers' Logbook
							["provider"] = { "i", 60867 },	-- Smithers' Logbook
							["cr"] = 45219,	-- Caretaker Smithers
						}),
					},
				}),
				q(27095, {	-- Skitterweb Menace
					["sourceQuests"] = {
						27073,	-- Give 'em Hell!
						27069,	-- Steel Thunder
					},
					["qg"] = 44917,	-- Warlord Torok
					["coord"] = { 43.9, 21.2, SILVERPINE_FOREST },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/12 Skitterweb Spider slain
							["providers"] = {
								{ "n", 1781},	-- Skitterweb Lurker
								{ "n", 1780},	-- Skitterweb Striker
								{ "n", 46751},	-- Skitterweb Spiderling
							},
						}),
					},
				}),
				q(27580, {	-- Sowing Discord
					["sourceQuests"] = {
						27548,	-- Lessons in Fear
						27547,	-- Of No Consequence
						27550,	-- Pyrewood's Fall
					},
					["qg"] = 45878,	-- Lord Godfrey
					["coord"] = { 51.8, 65.0, SILVERPINE_FOREST },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 General Marstone slain
							["provider"] = { "n", 45995 },	-- General Marstone
						}),
					},
				}),
				q(3221, {	-- Speak with Renferrel
					["sourceQuest"] = 449,	-- The Deathstalkers' Report
					["qg"] = 1952,	-- High Executor Hadrec
					["coord"] = { 43.4, 40.8, SILVERPINE_FOREST },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 10,
				}),
				q(27069, {	-- Steel Thunder
					["sourceQuest"] = 27065,	-- The Warchief's Fleet
					["qg"] = 44916,	-- Admiral Hatcher
					["coord"] = { 44.0, 21.3, SILVERPINE_FOREST },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(62841, {	-- Bloodfang Vest
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(62840, {	-- Sober Pup Wristbands
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(62842, {	-- Steel Thunder Belt
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131636, {	-- Steel Thunder Chestbrace
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				-- #if BEFORE CATA
				q(6321, {	-- Supplying the Sepulcher / Supplying Brill [CATA+]
					["providers"] = {
						{ "n", 6389 },	-- Deathguard Podrig
						{ "i", 16209 },	-- Podrig's Order
					},
					["coord"] = { 43.4, 41.6, SILVERPINE_FOREST },
					["races"] = { UNDEAD },
					["lvl"] = 10,
				}),
				-- #endif
				q(27542, {	-- Taking the Battlefront
					["sourceQuest"] = 27518,	-- Transdimensional Warfare: Chapter III
					["qg"] = 45617,	-- Lady Sylvanas Windrunner
					["coord"] = { 51.8, 65.0, SILVERPINE_FOREST },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				q(437, {	-- The Dead Fields
					["qg"] = 1952,	-- High Executor Hadrec
					["coord"] = { 43.4, 40.8, SILVERPINE_FOREST },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 10,
					["groups"] = {
						objective(1, {	-- 0/1 Essence of Nightlash
							["provider"] = { "i", 3622 },	-- Essence of Nightlash
							["coord"] = { 45.8, 20.4, SILVERPINE_FOREST },
							["cr"] = 1983,	-- Nightlash
						}),
						i(3454, {	-- Reconnaissance Boots
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(449, {	-- The Deathstalkers' Report
					["sourceQuest"] = 435,	-- Escorting Erland
					["providers"] = {
						{ "n", 1950 },	-- Rane Yorick
						{ "i", 3252 },	-- Deathstalker Report
					},
					["coord"] = { 53.4, 13.4, SILVERPINE_FOREST },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 10,
				}),
				q(438, {	-- The Decrepit Ferry
					["sourceQuest"] = 437,	-- The Dead Fields
					["qg"] = 1952,	-- High Executor Hadrec
					["coord"] = { 43.4, 40.8, SILVERPINE_FOREST },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 10,
				}),
				q(440, {	-- The Engraved Ring
					["sourceQuest"] = 439,	-- Rot Hide Clues
					["providers"] = {
						{ "n", 1952 },	-- High Executor Hadrec
						{ "i", 3234 },	-- Deliah's Ring
					},
					["coord"] = { 43.4, 40.8, SILVERPINE_FOREST },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 10,
				}),
				q(26989, {	-- The Gilneas Liberation Front
					["sourceQuest"] = 26965,	-- The Warchief Cometh
					["qg"] = 44615,	-- Grand Executor Mortuus
					["coord"] = { 57.4, 10.1, SILVERPINE_FOREST },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/10 Worgen Renegade slain
							["provider"] = { "n", 44793 },	-- Worgen Renegade
						}),
						i(62839, {	-- Nubly Bracers
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(62837, {	-- Nubish Cloak
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(62838, {	-- Nub's Wand
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(461, {	-- The Hidden Niche
					["sourceQuest"] = 460,	-- Resting in Pieces
					["providers"] = {
						{ "o", 1599 },	-- Shallow Grave
						{ "i", 3318 },	-- Alaric's Remains
					},
					["coord"] = { 67.8, 24.8, SILVERPINE_FOREST },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 12,
				}),
				q(26965, {	-- The Warchief Cometh
					["sourceQuests"] = {
						26964,	-- Warchief's Command: Silverpine Forest!
						28568,	-- Warchief's Command: Silverpine Forest!
					},
					["qg"] = 44615,	-- Grand Executor Mortuus
					["coord"] = { 57.4, 10.1, SILVERPINE_FOREST },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				q(27065, {	-- The Warchief's Fleet
					["sourceQuest"] = 27056,	-- Belmont's Report
					["qg"] = 44365,	-- Lady Sylvanas Windrunner
					["coord"] = { 57.3, 10.1, SILVERPINE_FOREST },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				q(27232, {	-- The Waters Run Red...
					["sourceQuest"] = 27231,	-- Reinforcements from Fenris
					["provider"] = { "o", 205350 },	-- Horde Communication Panel
					["coord"] = { 59.1, 34.2, SILVERPINE_FOREST },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/50 Hillsbrad Worgen slain
							["provider"] = { "n", 45270 },	-- Hillsbrad Worgen
						}),
						i(62853, {	-- Blood Offering Platter
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(62852, {	-- Sabots of Red Waters
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131661, {	-- Treads of Red Waters
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(480, {	-- The Weaver
					["sourceQuest"] = 479,	-- Ambermill Investigations
					["qg"] = 2121,	-- Shadow Priest Allister
					["coord"] = { 44, 41, SILVERPINE_FOREST },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 10,
					["groups"] = {
						-- FIX_ME!!!
						objective(1, {	-- 0/1 Ataeric's Staff
							["provider"] = { "i", 3515 },	-- Ataeric's Staff
							["cr"] = 2120,	-- Archmage Ataeric
						}),
						objective(1, {	-- 0/1 Ataeric's Staff
							["provider"] = { "i", 3515 },	-- Ataeric's Staff
							["coord"] = { 63.6, 64.0, SILVERPINE_FOREST },
							["cr"] = 2120,	-- Archmage Ataeric
						}),
						i(3452, {	-- Ceranium Rod
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(3585, {	-- Camouflaged Tunic
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(446, {	-- Thule Ravenclaw
					["sourceQuest"] = 444,	-- Rot Hide Origins
					["providers"] = {
						{ "n", 1498 },	-- Bethor Iceshard
						{ "i", 3250 },	-- Bethor's Scroll
					},
					["coord"] = { 84.2, 17.4, UNDERCITY },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 10,
					["groups"] = {
						i(3251, {	-- Bethor's Potion
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(27290, {	-- To Forsaken Forward Command
					["sourceQuests"] = {
						27226,	-- Hair of the Dog
						27195,	-- Nowhere to Run
						27231,	-- Reinforcements From Fenris
						27232,	-- The Waters Run Red
					},
					["qg"] = 44365,	-- Lady Sylvanas Windrunner
					["coord"] = { 44.8, 41.6, SILVERPINE_FOREST },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				q(27512, {	-- Transdimensional Warfare: Chapter I
					["sourceQuest"] = 27484,	-- Only One May Enter
					["qg"] = 45617,	-- Lady Sylvanas Windrunner
					["coord"] = { 51.8, 65.0, SILVERPINE_FOREST },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				q(27513, {	-- Transdimensional Warfare: Chapter II
					["sourceQuest"] = 27512,	-- Transdimensional Warfare: Chapter I
					["qg"] = 45752,	-- Ambermill Dimensional Portal
					["coord"] = { 58.0, 69.9, SILVERPINE_FOREST },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/20 Ambermill Mage slain
							["providers"] = {
								{ "n", 45756},	-- Ambermill Mage Proxy
								{ "n", 1888},	-- Ambermill Watcher
								{ "n", 1889},	-- Ambermill Witchalok
								{ "n", 1912},	-- Ambermill Protector
								{ "n", 1913},	-- Ambermill Warder
								{ "n", 1914},	-- Ambermill Magister
								{ "n", 1915},	-- Ambermill Conjuror
								{ "n", 1920},	-- Ambermill Spellscribe
								{ "n", 3577},	-- Ambermill Brewmaster
								{ "n", 3578},	-- Ambermill Miner
							},
						}),
					},
				}),
				q(27518, {	-- Transdimensional Warfare: Chapter III
					["sourceQuest"] = 27513,	-- Transdimensional Warfare: Chapter II
					["qg"] = 45617,	-- Lady Sylvanas Windrunner
					["coord"] = { 51.8, 65.0, SILVERPINE_FOREST },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(62890, {	-- Ataeric's Gloves
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(62889, {	-- Transdimensional Cloak
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(62891, {	-- Vessel of the Dark Lady
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(27475, {	-- Unyielding Servitors
					["sourceQuest"] = 27472,	-- Rise, Godfrey
					["qgs"] = { 45610, 45626 },	-- Daschla
					["coord"] = { 51.8, 64.7, SILVERPINE_FOREST },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/6 Servitor Core
							["provider"] = { "i", 61307 },	-- Servitor Core
							["crs"] = {
								45711,	-- Elemental Servitor
								47009,	-- Aquarius the Unbound
							},
						}),
					},
				}),
				q(27045, {	-- Waiting to Exsanguinate
					["sourceQuest"] = 27039,	-- Dangerous Intentions
					["provider"] = { "o", 205143 },	-- Abandoned Outhouse
					["coord"] = { 53.8, 12.9, SILVERPINE_FOREST },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(62833, {	-- Cloak of Courage
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131634, {	-- Grasps of the Survivor
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(62831, {	-- Treads of the Survivor
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(62832, {	-- Yorick's Bequest
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(491, {	-- Wand to Bethor
					["sourceQuest"] = 461,	-- The Hidden Niche
					["providers"] = {
						{ "o", 112888 },	-- Dusty Shelf
						{ "i", 3425 },	-- Woven Wand
					},
					["coord"] = { 65.3, 24.8, SILVERPINE_FOREST },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { UNDERCITY },
					["races"] = HORDE_ONLY,
					["lvl"] = 12,
					["groups"] = {
						i(3457, {	-- Stamped Trousers
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(3458, {	-- Rugged Mail Gloves
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(3581, {	-- Serrated Knife
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(26964, {	-- Warchief's Command: Silverpine Forest!
					["qg"] = 1515,	-- Executor Zygand
					["coord"] = { 60.5, 51.8, TIRISFAL_GLADES },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 9,
				}),
				warchiefscommand(q(28568, {	-- Warchief's Command: Silverpine Forest!
					["timeline"] = { ADDED_4_0_3 },
					["maps"] = { UNDERCITY },	-- Only found in Undercity in Cataclysm.
					["isBreadcrumb"] = true,
					-- #if BEFORE 7.3.5
					-- Cataclysm: Minimum is level 9. (TODO: Confirm this.)
					-- Cataclysm: Maximum is level 18. (TODO: Test max level)
					["lvl"] = { 9, 18 },
					-- #endif
				})),
				q(429, {	-- Wild Hearts
					["sourceQuest"] = 428,	-- Lost Deathstalkers
					["qg"] = 1950,	-- Rane Yorick
					["coord"] = { 53.4, 13.4, SILVERPINE_FOREST },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = { { "i", 3164, 6 } },	-- Discolored Worg Heart
					["races"] = HORDE_ONLY,
					["lvl"] = 10,
					["groups"] = {
						i(4597, {	-- Recipe: Discolored Healing Potion (RECIPE!)
							["description"] = "This item can be sold on the Neutral Auction House to Alliance Alchemists for a... nominal fee.\n\nOnly naturally accessible to Horde Alchemists.",
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(4596, {	-- Discolored Healing Potion
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(1359, {	-- Zinge's Delivery
					["sourceQuest"] = 3221,	-- Speak with Renferrel
					["providers"] = {
						{ "n", 1937 },	-- Apothecary Renferrel
						{ "i", 6016 },	-- Wolf Heart Sample
					},
					["coord"] = { 43.4, 40.8, SILVERPINE_FOREST },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { UNDERCITY },
					["races"] = HORDE_ONLY,
					["lvl"] = 10,
				}),
			}),
			n(RARES, {
				-- #if AFTER CATA
				n(1920, {	-- Ambermill Spellscribe [CATA+] / Dalaran Spellscribe
					["coord"] = { 63.5, 58.3, SILVERPINE_FOREST },
					["description"] = "Found upstairs at the given coordinates.\n\nHorde players who have started questing in the zone should complete the main storyline to prevent phasing issues.",
					["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },	-- ATT Discord 05.09.2023
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(4437, {	-- Channeler's Staff
							["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },	-- ATT Discord 05.09.2023
						}),
						i(4436, {	-- Jewel-encrusted Sash
							["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },	-- ATT Discord 05.09.2023
						}),
					},
				}),
				-- #endif
				n(47009, {	-- Aquarius the Unbound
					["coords"] = {
						{ 61.8, 67.4, SILVERPINE_FOREST },
						{ 61.6, 63.0, SILVERPINE_FOREST },
						{ 57.4, 62.6, SILVERPINE_FOREST },
						{ 59.2, 66.0, SILVERPINE_FOREST },
					},
					["timeline"] = { ADDED_4_0_3 },
				}),
				n(46992, {	-- Berard the Moon-Crazed
					["coord"] = { 43.6, 50.8, SILVERPINE_FOREST },
					["timeline"] = { ADDED_4_0_3 },
				}),
				n(47003, {	-- Bolgaff <The Mad Hunter>
					["coord"] = { 48.8, 25.4, SILVERPINE_FOREST },
					["timeline"] = { ADDED_4_0_1 },
				}),
				n(50814, {	-- Corpsefeeder
					["coord"] = { 49.2, 68.2, SILVERPINE_FOREST },
					["timeline"] = { ADDED_5_1_0 },
				}),
				-- #if BEFORE CATA
				n(1920, {	-- Dalaran Spellscribe / Ambermill Spellscribe [CATA+]
					["coord"] = { 63.4, 65.2, SILVERPINE_FOREST },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						-- #if BEFORE 4.0.3
						i(8491, {	-- Black Tabby Cat (PET!)
							["timeline"] = { ADDED_1_11_1 },
							["description"] = "This item is only naturally accessible to Horde players due to the allegiance of the mobs that drop this item. If you were to sell this item on the Neutral AH you might be able to fetch a pretty penny to collectors.",
						}),
						-- #endif
						i(4437, {	-- Channeler's Staff
							["description"] = "This item is only naturally accessible to Horde players due to the allegiance of the mobs that drop this item. If you were to sell this item on the Neutral AH you might be able to fetch a pretty penny to collectors.",
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(4436, {	-- Jewel-encrusted Sash
							["description"] = "This item is only naturally accessible to Horde players due to the allegiance of the mobs that drop this item. If you were to sell this item on the Neutral AH you might be able to fetch a pretty penny to collectors.",
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				-- #endif
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_ONE, n(211875, {	-- Decayed Elemental
					["provider"] = { "i", 210253 },	-- Rot Totem
					["coord"] = { 46.0, 22.2, SILVERPINE_FOREST },
					["classes"] = { SHAMAN },
					["groups"] = {
						i(208758, {	-- Earthen Rune
							["timeline"] = { REMOVED_2_0_1 },
							["classes"] = { SHAMAN },
							["groups"] = {
								recipe(410107),	-- Engrave Pants - Way of Earth
							},
						}),
					},
				})),
				-- #endif
				n(47012, {	-- Effritus
					["coord"] = { 47.0, 69.4, SILVERPINE_FOREST },
					["timeline"] = { ADDED_4_0_3 },
				}),
				n(47008, {	-- Fenwick Thatros
					["coord"] = { 49.4, 33.8, SILVERPINE_FOREST },
					["timeline"] = { ADDED_4_0_3 },
				}),
				n(50949, {	-- Finn's Gambit
					["coord"] = { 64.0, 46.6, SILVERPINE_FOREST },
					["timeline"] = { ADDED_5_1_0 },
				}),
				n(51026, {	-- Gnath
					["coord"] = { 49.6, 29.6, SILVERPINE_FOREST },
					["timeline"] = { ADDED_5_2_0 },
				}),
				n(12431, {	-- Gorefang
					["coords"] = {
						-- #if AFTER CATA
						{ 60.2, 9.6, SILVERPINE_FOREST },
						{ 57.8, 16.2, SILVERPINE_FOREST },
						{ 56.6, 24.0, SILVERPINE_FOREST },
						-- #else
						{ 60.2, 10.0, SILVERPINE_FOREST },
						{ 47.6, 17.6, SILVERPINE_FOREST },
						{ 51.8, 19.6, SILVERPINE_FOREST },
						{ 48.0, 25.8, SILVERPINE_FOREST },
						-- #endif
					},
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_ONE, n(211736, {	-- Grizzled Protector
					["description"] = "Kill Ferocious Grizzled Bears until the protector appears.",
					["classes"] = { HUNTER },
					["crs"] = { 1778 },	-- Ferocious Grizzled Bear
					["groups"] = {
						i(208701, {	-- Rune of Beast Mastery
							["classes"] = { HUNTER },
							["groups"] = {
								recipe(410110),	-- Engrave Gloves - Beast Mastery
							},
						}),
					},
				})),
				-- #endif
				n(50330, {	-- Kree
					["coord"] = { 60.8, 6.4, SILVERPINE_FOREST },
					["timeline"] = { ADDED_5_1_0 },
				}),
				n(12433, {	-- Krethis the Shadowspinner
					["coords"] = {
						-- #if AFTER CATA
						{ 38.6, 16.0, SILVERPINE_FOREST },
						{ 37.0, 14.6, SILVERPINE_FOREST },
						{ 34.6, 15.6, SILVERPINE_FOREST },
						{ 35.6, 18.2, SILVERPINE_FOREST },
						-- #else
						{ 35.6, 9.0, SILVERPINE_FOREST },
						{ 37.2, 15.6, SILVERPINE_FOREST },
						-- #endif
					},
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_ONE, n(211146, {	-- Lost Adventurer
					["provider"] = { "n", 210802 },	-- Webbed Victim
					["coord"] = { 34.8, 7.8, SILVERPINE_FOREST },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(208741, {	-- Rune of Endless Rage
							["classes"] = { WARRIOR },
							["groups"] = {
								recipe(403489),	-- Engrave Gloves - Endless Rage
							},
						}),
					},
				})),
				-- #endif
				n(51037, {	-- Lost Gilnean Wardog
					["coord"] = { 59.0, 42.0, SILVERPINE_FOREST },
					["timeline"] = { ADDED_5_2_0 },
				}),
				n(47015, {	-- Lost Son of Arugal
					["coords"] = {
						{ 56.2, 78.6, SILVERPINE_FOREST },
						{ 55.0, 64.0, SILVERPINE_FOREST },
						{ 55.2, 44.4, SILVERPINE_FOREST },
						{ 56.2, 28.8, SILVERPINE_FOREST },
						{ 53.6, 19.2, SILVERPINE_FOREST },
						{ 48.4, 23.0, SILVERPINE_FOREST },
						{ 49.4, 35.2, SILVERPINE_FOREST },
					},
					["timeline"] = { ADDED_4_0_1 },
				}),
				n(46981, {	-- Nightlash
					["coords"] = {
						{ 53.0, 28.0, SILVERPINE_FOREST },
						{ 52.4, 25.2, SILVERPINE_FOREST },
					},
					["timeline"] = { ADDED_4_0_1 },
				}),
				n(12432, {  -- Old Vicejaw
					["coords"] = {
						{ 54.6, 52.0, SILVERPINE_FOREST },
						{ 51.6, 63.8, SILVERPINE_FOREST },
						{ 56.2, 62.4, SILVERPINE_FOREST },
					},
					["timeline"] = { REMOVED_4_0_3 },
				}),
				n(2283, {	-- Ravenclaw Regent
					["coords"] = {
						-- #if AFTER 10.1.7
						{ 57.4, 31.2, SILVERPINE_FOREST },
						-- #else
						{ 57.6, 69.8, SILVERPINE_FOREST },
						-- #endif
					},
					["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },	-- ATT Discord 05.09.2023
					["groups"] = {
						i(6628, {	-- Raven's Claws
							["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },	-- ATT Discord 05.09.2023
						}),
						i(5969, {	-- Regent's Cloak
							["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },	-- ATT Discord 05.09.2023
						}),
					},
				}),
				-- #if BEFORE 10.1.7
				n(1944, {	-- Rot Hide Bruiser
					-- Moved to Tirisfall in 10.1.7
					["coord"] = { 67.6, 24.4, SILVERPINE_FOREST },
					["timeline"] = { REMOVED_4_0_3 },
					["groups"] = {
						i(4439, {	-- Bruiser Club
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(5975, {	-- Ruffian Belt
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				-- #endif
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_ONE, n(212763, {	-- Sadistic Fiend
					["description"] = "Cast Curse of Recklessness on him.",
					["coord"] = { 58.2, 45.2, SILVERPINE_FOREST },
					["groups"] = {
						i(208750, {	-- Rune of Channeling
							["classes"] = { WARLOCK },
							["groups"] = {
								recipe(403932),	-- Engrave Chest - Master Channeler
							},
						}),
					},
				})),
				-- #endif
				n(1948, {	-- Snarlmane
					["coord"] = { 66.2, 25.0, SILVERPINE_FOREST },
					["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },	-- ATT Discord 05.09.2023
					-- #if AFTER 10.1.7
					["description"] = "Found in the basement of Fenris Keep.",
					-- #endif
					["groups"] = {
						i(4445, {	-- Flesh Carver
							["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },	-- ATT Discord 05.09.2023
						}),
					},
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_ONE, n(212753, {	-- Tortured Soul
					["provider"] = { "i", 210713 },	-- Tortured Soul
					["coord"] = { 59.4, 70.8, SILVERPINE_FOREST },
					["timeline"] = { REMOVED_2_0_1 },
					["classes"] = { WARLOCK },
					["groups"] = {
						i(208744, {	-- Rune of Shadowbolts
							["classes"] = { WARLOCK },
							["groups"] = {
								recipe(403936),	-- Engrave Gloves - Shadow Bolt Volley
							},
						}),
					},
				})),
				-- #endif
				n(47023, {	-- Thule Ravenclaw
					["coord"] = { 50.2, 60.0, SILVERPINE_FOREST },
					["timeline"] = { ADDED_4_0_3 },
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_ONE, n(212809, bubbleDownSelf({ ["timeline"] = { REMOVED_2_0_1 } }, {	-- Wailing Spirit
					["coord"] = { 60.2, 74.4, SILVERPINE_FOREST },
					["groups"] = {
						i(205905, {	-- Memory of a Devout Champion
							["classes"] = { PRIEST },
							["groups"] = {
								recipe(425215),	-- Engrave Chest - Twisted Faith
							},
						}),
					},
				}))),
				-- #endif
			}),
			-- #if SEASON_OF_DISCOVERY
			n(TREASURES, {
				applyclassicphase(SOD_PHASE_ONE, i(210177, {	-- Ataeric: On Arcane Curiosities
					["provider"] = { "o", 410299 },	-- Arcane Secrets
					["coord"] = { 43.4, 41.2, SILVERPINE_FOREST },
				})),
				applyclassicphase(SOD_PHASE_ONE, i(205932, {	-- Prophecy of a King's Demise
					["provider"] = { "o", 411674 },	-- Prophecy of a King's Demise
					["coord"] = { 65.8, 23.5, SILVERPINE_FOREST },
					["timeline"] = { REMOVED_2_0_1 },
					["classes"] = { PRIEST },
					["groups"] = {
						recipe(402849),	-- Engrave Gloves - Shadow Word - Death
					},
				})),
				applyclassicphase(SOD_PHASE_ONE, i(208772, {	-- Rune of Saber Slash
					["provider"] = { "o", 409131 },	-- Rusty Chest
					["description"] = "You will need to use Sprint to make the jump to the platform.",
					["coord"] = { 45.2, 67.2, SILVERPINE_FOREST },
					["timeline"] = { REMOVED_2_0_1 },
					["classes"] = { ROGUE },
					["groups"] = {
						recipe(424984),	-- Engrave Gloves - Saber Slash
					},
				})),
				applyclassicphase(SOD_PHASE_ONE, i(209844, {	-- The Dalaran Digest, Vol. 23
					["provider"] = { "o", 409501 },	-- Dalaran Digest
					["coord"] = { 63.5, 63.1, SILVERPINE_FOREST },
				})),
			}),
			-- #endif
			n(VENDORS, {
				n(3552, {	-- Alexandre Lefevre <Leather Armor Merchant>
					["coords"] = {
						-- #if AFTER CATA
						{ 44.6, 39.6, SILVERPINE_FOREST },
						-- #else
						{ 44.6, 39.2, SILVERPINE_FOREST },
						-- #endif
					},
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(4788, {	-- Agile Boots
							["isLimited"] = true,
						}),
						i(4789, {	-- Stable Boots
							["isLimited"] = true,
						}),
					},
				}),
				n(3554, {	-- Andrea Boynton <Clothier>
					["coord"] = { 44.6, 39.2, SILVERPINE_FOREST },
					["races"] = HORDE_ONLY,
					["sym"] = {{"select","itemID",
						16059,	-- Common Brown Shirt
						3428,	-- Common Grey Shirt
						16060,	-- Common White Shirt
					}},
					["groups"] = {
						i(4782, {	-- Solstice Robe
							["isLimited"] = true,
						}),
						i(4781, {	-- Whispering Vest
							["isLimited"] = true,
						}),
						i(4786, {	-- Wise Man's Belt
							["isLimited"] = true,
						}),
					},
				}),
				n(3556, {	-- Andrew Hilbert <Trade Supplies> [CATA+] / Andrew Hilbert <Trade Goods>
					["coord"] = { 43.2, 40.6, SILVERPINE_FOREST },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(6272, {	-- Pattern: Blue Linen Robe (RECIPE!)
							["isLimited"] = true,
						}),
						i(5786, {	-- Pattern: Murloc Scale Belt (RECIPE!)
							["isLimited"] = true,
						}),
						i(5787, {	-- Pattern: Murloc Scale Breastplate (RECIPE!)
							["isLimited"] = true,
						}),
						i(5771, {	-- Pattern: Red Linen Bag (RECIPE!)
							["isLimited"] = true,
						}),
						i(6892),	-- Recipe: Smoked Bear Meat (RECIPE!)
					},
				}),
				n(5748, {	-- Killian Sanatha <Fisherman>
					["coords"] = {
						-- #if AFTER CATA
						{ 59.4, 33.4, SILVERPINE_FOREST },
						-- #else
						{ 33.0, 17.8, SILVERPINE_FOREST },
						-- #endif
					},
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(6328),	-- Recipe: Longjaw Mud Snapper (RECIPE!)
						i(6368),	-- Recipe: Rainbow Fin Albacore (RECIPE!)
					},
				}),
				n(5758, {	-- Leo Sarn <Enchanting Supplies>
					["coords"] = {
						-- #if AFTER CATA
						{ 53.8, 82.2, SILVERPINE_FOREST },
						-- #else
						{ 54.0, 82.2, SILVERPINE_FOREST },
						-- #endif
					},
					["races"] = HORDE_ONLY,
					["sym"] = {
						{ "select","itemID",
							20753,	-- Formula: Lesser Wizard Oil (RECIPE!)
							20752,	-- Formula: Minor Mana Oil (RECIPE!)
							20758,	-- Formula: Minor Wizard Oil (RECIPE!)
							22307,	-- Pattern: Enchanted Mageweave Pouch (RECIPE!)
							-- #if BEFORE CATA
							6342,	-- Formula: Enchant Chest - Minor Mana (RECIPE!)
							-- #endif
						},
					},
					["groups"] = {
						i(6349, {	-- Formula: Enchant 2H Weapon - Lesser Intellect (RECIPE!)
							["isLimited"] = true,
						}),
					},
				}),
				n(5757, {	-- Lilly <Enchanting Supplies>
					["coords"] = {
						-- #if AFTER CATA
						{ 46.8, 40.6, SILVERPINE_FOREST },
						-- #else
						{ 43.0, 50.8, SILVERPINE_FOREST },
						-- #endif
					},
					["races"] = HORDE_ONLY,
					["sym"] = {
						{ "select","itemID",
							20753,	-- Formula: Lesser Wizard Oil (RECIPE!)
							20752,	-- Formula: Minor Mana Oil (RECIPE!)
							20758,	-- Formula: Minor Wizard Oil (RECIPE!)
							22307,	-- Pattern: Enchanted Mageweave Pouch (RECIPE!)
							-- #if BEFORE CATA
							6342,	-- Formula: Enchant Chest - Minor Mana (RECIPE!)
							-- #endif
						},
					},
					["groups"] = {
						i(6346),	-- Formula: Enchant Chest - Lesser Mana (RECIPE!)
					},
				}),
				n(9553, {	-- Nadia Vernon <Bowyer>
					["coords"] = {
						-- #if AFTER CATA
						{ 44.8, 39.8, SILVERPINE_FOREST },
						-- #else
						{ 45.0, 39.4, SILVERPINE_FOREST },
						-- #endif
					},
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(11304, {	-- Fine Longbow
							["isLimited"] = true,
						}),
					},
				}),
				n(3534, {	-- Wallace the Blind <Weaponsmith>
					["coords"] = {
						-- #if AFTER CATA
						{ 33.0, 17.8, SILVERPINE_FOREST },
						-- #else
						{ 46.4, 86.4, SILVERPINE_FOREST },
						-- #endif
					},
					["groups"] = {
						i(4817, {	-- Blessed Claymore
							["isLimited"] = true,
						}),
						i(4818, {	-- Executioner's Sword
							["isLimited"] = true,
						}),
						i(11304, {	-- Fine Longbow
							["isLimited"] = true,
						}),
						i(4778, {	-- Heavy Spiked Mace
							["isLimited"] = true,
						}),
						i(4777, {	-- Ironwood Maul
							["isLimited"] = true,
						}),
					},
				}),
			}),
			n(ZONE_DROPS, {
				i(3317, {	-- A Talking Head
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["crs"] = {
						1943,	-- Raging Rot Hide
						1944,	-- Rot Hide Bruiser
						1939,	-- Rot Hide Brute
						1940,	-- Rot Hide Plague Weaver
						1942,	-- Rot Hide Savage
					},
				}),
				-- #if ANYCLASSIC
				i(3173, {	-- Bear Meat
					["coord"] = { 52.0, 40.4, SILVERPINE_FOREST },
					["crs"] = {
						1797,	-- Giant Grizzled Bear
						1778,	-- Ferocious Grizzled Bear
					},
				}),
				-- #endif
				-- #if BEFORE 10.1.7
				-- This was moved to Hillsbrad Foothills!
				i(4767, {	-- Coppercloth Gloves
					["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },	-- ATT Discord 09.09.2023
					-- #if BEFORE 4.0.3
					["description"] = "This item is only naturally accessible to Horde players due to the allegiance of the mobs that drop this item. If you were to sell this item on the Neutral AH you might be able to fetch a pretty penny to collectors.",
					-- #endif
					["cr"] = 3578,	-- Dalaran Miner
				}),
				-- #endif
				i(5110, {	-- Dalaran Wizard's Robe
					["description"] = "This item is only naturally accessible to Horde players due to the allegiance of the mobs that drop this item.",
					["crs"] = {
						-- #if BEFORE 4.0.3
						2120,	-- Archmage Ataeric
						1867,	-- Dalaran Apprentice
						3577,	-- Dalaran Brewmaster
						1915,	-- Dalaran Conjuror
						1914,	-- Dalaran Mage
						3578,	-- Dalaran Miner
						1912,	-- Dalaran Protector
						1920,	-- Dalaran Spellscribe
						1913,	-- Dalaran Warder
						1888,	-- Dalaran Watcher
						1889,	-- Dalaran Wizard
						-- #else
						45753,	-- Ambermill Portal Guardian
						1913,	-- Ambermill Warder
						3577,	-- Ambermill Brewmaster
						1914,	-- Ambermill Magister
						-- #endif
					},
				}),
				i(3164, {	-- Discolored Worg Heart
					["crs"] = {
						-- #if BEFORE CATA
						1923,	-- Bloodsnout Worg
						-- #endif
						12431,	-- Gorefang
						1766,	-- Mottled Worg
						1765,	-- Worg
					},
				}),
				-- #if BEFORE CATA
				i(5771, {	-- Pattern: Red Linen Bag (RECIPE!)
					["crs"] = {
						3531,	-- Moonrage Tailor
						3530,	-- Pyrewood Tailor
					},
				}),
				-- #endif
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_ONE, i(210696, {	-- Rot Bane
					["description"] = "Supposedly this will not drop if you've completed the Quick Strike rune already.",
					["coord"] = { 66.2, 31.0, SILVERPINE_FOREST },
					["timeline"] = { REMOVED_2_0_1 },
					["classes"] = { WARRIOR },
					["cr"] = 212598,	-- Recke Grinnes
				})),
				applyclassicphase(SOD_PHASE_ONE, i(210253, {	-- Rot Totem
					["coord"] = { 45.6, 22.6, SILVERPINE_FOREST },
					["timeline"] = { REMOVED_2_0_1 },
					["classes"] = { SHAMAN },
					["cr"] = 1773,	-- Rot Hide Mystic
				})),
				applyclassicphase(SOD_PHASE_ONE, i(208778, {	-- Rune of Quick Strike
					["provider"] = { "i", 210696 },	-- Rot Bane
					["coord"] = { 66.2, 31.0, SILVERPINE_FOREST },
					["timeline"] = { REMOVED_2_0_1 },
					["classes"] = { WARRIOR },
					["crs"] = {
						1943,	-- Raging Rot Hide
						1944,	-- Rot Hide Bruiser
						1939,	-- Rot Hide Brute
						1940,	-- Rot Hide Plague Weaver
						1942,	-- Rot Hide Savage
					},
					["groups"] = {
						recipe(425443),	-- Engrave Gloves - Quick Strike
					},
				})),
				applyclassicphase(SOD_PHASE_ONE, i(208754, {	-- Spell Notes: TENGI RONEERA
					["coord"] = { 50.8, 61.6, SILVERPINE_FOREST },
					["timeline"] = { REMOVED_2_0_1 },
					["classes"] = { MAGE },
					["races"] = HORDE_ONLY,
					["cr"] = 1867,	-- Dalaran Apprentice
				})),
				applyclassicphase(SOD_PHASE_ONE, i(206382, {	-- Tempest Icon
					["coord"] = { 58.6, 44.8, SILVERPINE_FOREST },
					["classes"] = { SHAMAN },
					["cr"] = 1972,	-- Grimson the Pale
					["groups"] = {
						recipe(410097),	-- Engrave Gloves - Water Shield
					},
				})),
				applyclassicphase(SOD_PHASE_ONE, i(210713, {	-- Tortured Soul
					["description"] = "Use Life Tap in a safe area to summon the Tortured Soul.",
					["coord"] = { 59.4, 70.8, SILVERPINE_FOREST },
					["timeline"] = { REMOVED_2_0_1 },
					["classes"] = { WARLOCK },
					["crs"] = {
						1974,	-- Ravenclaw Drudger
						1973,	-- Ravenclaw Guardian
					},
				})),
				applyclassicphase(SOD_PHASE_ONE, i(210195, {	-- Unbalanced Idol
					["coord"] = { 52.8, 27.4, SILVERPINE_FOREST },
					["description"] = "Moon: Cast Moonfire a lot.\nEmerald Dream: Cast Healing Touch (Rank 1) a lot.\nWild: Shapeshift a lot.",
					["timeline"] = { REMOVED_2_0_1 },
					["classes"] = { DRUID },
					["crs"] = {
						1769,	-- Moonrage Whitescalp
						1770,	-- Moonrage Darkrunner
					},
					["groups"] = {
						recipe(416049),	-- Engrave Gloves - Lacerate
					},
				})),
				-- #endif
			}),
		},
	}),
}));
