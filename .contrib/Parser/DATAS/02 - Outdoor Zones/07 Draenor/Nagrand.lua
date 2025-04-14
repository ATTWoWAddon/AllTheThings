---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

local COMMON_TREASURE_SYM = {{"select","itemID",
	-- Weapons
	116627,	-- Howling Axe
	116629,	-- Howling Bow
	116628,	-- Howling Broadaxe
	116630,	-- Howling Crossbow
	116631,	-- Howling Dagger
	116642,	-- Howling Greatsword
	116634,	-- Howling Gun
	116637,	-- Howling Hammer
	116633,	-- Howling Knuckles
	116635,	-- Howling Mace
	116638,	-- Howling Spear
	116640,	-- Howling Staff
	116639,	-- Howling Staff
	116641,	-- Howling Sword
	116724,	-- Oshu'gun Basin
	116636,	-- Oshu'gun Scepter
	116632,	-- Oshu'gun Spellblade
	116643,	-- Oshu'gun Wand
	106727,	-- Stonecrag Shield
	-- Head
	106738,	-- Dark Star Cowl
	106733,	-- Meadowstomper Hood
	106749,	-- Packrunner Helm
	106723,	-- Stonecrag Helm
	-- Neck
	116687,	-- Oshu'gun Amulet
	-- Shoulders
	106743,	-- Dark Star Shoulderpads
	106735,	-- Meadowstomper Shoulders
	106751,	-- Packrunner Spaulders
	106725,	-- Stonecrag Pauldrons
	-- Back
	116723,	-- Oshu'gun Cloak
	-- Chest
	106741,	-- Dark Star Robe
	106734,	-- Meadowstomper Jerkin
	106752,	-- Packrunner Vest
	106720,	-- Stonecrag Breastplate
	-- Wrist
	106744,	-- Dark Star Wristwraps
	106729,	-- Meadowstomper Bindings
	106746,	-- Packrunner Bracers
	106728,	-- Stonecrag Vambraces
	-- Hands
	106739,	-- Dark Star Handwraps
	106732,	-- Meadowstomper Gloves
	106747,	-- Packrunner Gauntlets
	106721,	-- Stonecrag Gauntlets
	-- Waist
	106737,	-- Dark Star Cord
	106736,	-- Meadowstomper Waistband
	106745,	-- Packrunner Belt
	106722,	-- Stonecrag Girdle
	-- Legs
	106740,	-- Dark Star Leggings
	106731,	-- Meadowstomper Britches
	106750,	-- Packrunner Legguards
	106724,	-- Stonecrag Legplates
	-- Feet
	106742,	-- Dark Star Sandals
	106730,	-- Meadowstomper Boots
	106748,	-- Packrunner Greaves
	106726,	-- Stonecrag Sabatons
	-- Junkbox
	116920,	-- True Steel Lockbox
}};

root(ROOTS.Zones, {
	m(DRAENOR, {
		m(DRAENOR_NAGRAND, {
			["lore"] = "Nagrand is a zone in western Draenor. It lies west of Talador. It is home to the Burning Blade and Warsong orcish clans, as well as a seat of the ogre empire situated on the continent of Draenor, with Highmaul as its capital.",
			["icon"] = 1032150,
			["maps"] = {
				551,	-- The Master's Cavern
				552,	-- Stonecrag Gorge
				553,	-- The Underpale
			},
			["groups"] = {
				n(ACHIEVEMENTS, {
					ach(9571, {		-- Broke Back Precipice (Broken Precipice)
						["sym"] = {{ "achievement_criteria" }},
					}),
					ach(9548, {		-- Buried Treasures (Mok'gol Watchpost)
						["sym"] = {{ "achievement_criteria" }},
					}),
					explorationAch(8942),	-- Explore Nagrand
					ach(9610, {	-- History of Violence (Broken Precipice)
						["description"] = "In order to get the relics, except the Bust, use Jewel of Transformation in the area and then break boulder piles.",
						["groups"] = {
							crit(26397),	-- Krog the Dominator's Hammer
							crit(26399, {	-- Thak the Conqueror's Bust
								["coord"] = { 41.2, 12.2, DRAENOR_NAGRAND },
							}),
							crit(26400),	-- Thurg the Slave Lord's Necklace
							crit(26404),	-- Gorg the Subjugator's Idol
						},
					}),
					ach(9617, {	-- Making the Cut (Gorian Proving Grounds)
						["description"] = "Spawns in the building behind The Ring of Blood.  Kill 15 mobs that spawn around him in order to attack him.",
						["crs"] = { 88210 },	-- Krud the Eviscerator
					}),
					ach(8927, {	-- Nagrandeur (Alliance)
						["races"] = ALLIANCE_ONLY,
						["sym"] = {{ "achievement_criteria" }},
					}),
					ach(8928, {	-- Nagrandeur (Horde)
						["races"] = HORDE_ONLY,
						["sym"] = {{ "achievement_criteria" }},
					}),
					ach(9564, {	-- Securing Draenor (Alliance)
						["collectible"] = false,	-- We want to hide the achievement after the finished the criteria for the zone since they can't earn anything more here
						["races"] = ALLIANCE_ONLY,
						["g"] = {
							crit(26250),	-- Assault on the Broken Precipice
							crit(26252),	-- Assault on Mok'gol Watchpost
						},
					}),
					ach(9562, {	-- Securing Draenor (Horde)
						["collectible"] = false,	-- We want to hide the achievement after the finished the criteria for the zone since they can't earn anything more here
						["races"] = HORDE_ONLY,
						["g"] = {
							crit(26233),	-- Assault on the Broken Precipice
							crit(26237),	-- Assault on Mok'gol Watchpost
						},
					}),
					ach(9541, {	-- The Song of Silence
						["sym"] = {{ "achievement_criteria" }},
					}),
					ach(9615, {	-- With a Nagrand Cherry On Top
						["sym"] = {{ "achievement_criteria" }},
					}),
				}),
				petbattle(filter(BATTLE_PETS, {
					["sym"] = {{"select","speciesID",
						635,	-- Adder (PET!)
						1441,	-- Mud Jumper (PET!)
						386,	-- Prarie Dog (PET!)
						378,	-- Rabbit (PET!)
						417,	-- Rat (PET!)
						388,	-- Shore Crab (PET!)
						397,	-- Skunk (PET!)
						379,	-- Squirrel (PET!)
					}},
					["groups"] = {
						pet(1435),	-- Leatherhide Runt (PET!)
					},
				})),
				explorationHeader({
					exploration(7072),	-- Ancestral Grounds
					visit_exploration(7156,{coord={81.0,60.3,DRAENOR_NAGRAND}}),	-- Anguish Point
					exploration(7303),	-- Broken Precipice
					exploration(7331),	-- Cerulean Lagoon
					visit_exploration(7461,{coord={51.7,25.9,DRAENOR_NAGRAND}}),	-- Earthshaker Gorge
					visit_exploration(7226,{coord={83.2,35.9,DRAENOR_NAGRAND}}),	-- Eastwind Gulch
					exploration(7139),	-- Elemental Plateau
					exploration(7069),	-- Gates of Grommashar
					exploration(7375),	-- Gorian Proving Grounds
					visit_exploration(7465,{coord={33.9,25.8,DRAENOR_NAGRAND}}),	-- Gorian Strand
					exploration(7188),	-- Gra'ah
					exploration(7068),	-- Grommashar
					exploration(7123),	-- Hallvalor
					exploration(7060),	-- Hemet's Happy Hunting Grounds
					visit_exploration(7469,{coord={49.9,37.0,DRAENOR_NAGRAND}}),	-- Hidden Camp
					exploration(7367),	-- Highmaul
					exploration(7405),	-- Highmaul Harbor
					exploration(7070),	-- Ironfist Harbor
					exploration(7065),	-- Lok-rath
					visit_exploration(7206,{coord={57.3,69.0,DRAENOR_NAGRAND}}),	-- Lonely Falls
					exploration(7067),	-- Mar'gok's Overwatch
					exploration(7296, {	-- Mok'gol Watchpost
						-- CRIEVE NOTE: I was initially able to collect this, but if you collect Highmaul Harbor / Broken Precipe, it gets masked behind it.
						["collectible"] = false,
					}),
					exploration(7150),	-- Oshu'gun
					exploration(7063),	-- Riverside Post
					exploration(7297),	-- Ruins of Na'gwa
					exploration(7052),	-- Sabermaw
					exploration(7172),	-- Shadowfall Canyon
					visit_exploration(7227,{coord={67.7,22.8,DRAENOR_NAGRAND}}),	-- Skysong Lake
					exploration(7071),	-- Snarlpaw Ledge
					exploration(7151),	-- Spirit Woods
					exploration(7386),	-- Spiteleaf Thicket
					exploration(7094),	-- Stonecrag Gorge
					exploration(7074),	-- Telaar
					exploration(7406),	-- The Cliffs of Highmaul
					exploration(7395),	-- The Coliseum
					visit_exploration(7466,{coord={26.2,39.6,DRAENOR_NAGRAND}}),	-- The Imperator's Favor
					exploration(7376),	-- The Ring of Blood
					exploration(7073),	-- The Ring of Trials
					visit_exploration(7436,{coord={39.3,61.0,DRAENOR_NAGRAND}}),	-- The South Sea
					visit_exploration(7064,{coord={66.0,37.4,DRAENOR_NAGRAND}}),	-- The Stones of Prophecy
					visit_exploration(7594,{coord={29.0,32.7,DRAENOR_NAGRAND}}),	-- The Underbelly
					exploration(7280),	-- Throne of the Elements
					visit_exploration(7377,{coord={93.0,32.3,DRAENOR_NAGRAND}}),	-- Time-Lost Glade
					visit_exploration(7056,{coord={88.7,67.3,DRAENOR_NAGRAND}}),	-- Warsong Lookout
					visit_exploration(7408,{coord={44.3,77.7,DRAENOR_NAGRAND}}),	-- Windroc Bay
					exploration(7059),	-- Wor'var
					exploration(7271),	-- Worgskin's Camp
					exploration(7095),	-- Wrecked Caravan
					exploration(7061),	-- Yrel's Watch
					exploration(7385),	-- Zangar Shore
				}),
				n(FACTIONS, {
					faction(FACTION_STEAMWHEEDLE_PRESERVATION_SOCIETY, {	-- Steamwheedle Preservation Society
						["crs"] = { 87394 },	-- Kwilax Fuseshiv <Reputation Vendor>
						["g"] = {
							n(ACHIEVEMENTS, {
								ach(9472, {		-- Steamwheedle Preservation Society
									title(284),		-- "Conservationist" <Name>
								}),
							}),
							n(QUESTS, {
								q(37125, {	-- A Rare Find
									["provider"] = { "n", 87393 },	-- Sallee Silverclamp
									["coord"] = { 50.4, 41.3, DRAENOR_NAGRAND },
									["repeatable"] = true,
									["cost"] = {
										{ "i", 118100, 1 },	-- Highmaul Relic
									},
								}),
								q(37210, {	-- Aogexon's Fang
									["providers"] = {
										{ "n", 87706 },	-- Gazmolf Futzwangler
										{ "i", 118654 },	-- Aogexon's Fang
									},
									["coord"] = { 50.3, 41.1, DRAENOR_NAGRAND },
									["isDaily"] = true,
								}),
								q(37211, {	-- Bergruu's Horn
									["providers"] = {
										{ "n", 87706 },	-- Gazmolf Futzwangler
										{ "i", 118655 },	-- Bergruu's Horn
									},
									["coord"] = { 50.3, 41.1, DRAENOR_NAGRAND },
									["isDaily"] = true,
								}),
								q(37221, {	-- Dekorhan's Tusk
									["providers"] = {
										{ "n", 87706 },	-- Gazmolf Futzwangler
										{ "i", 118656 },	-- Dekorhan's Tusk
									},
									["coord"] = { 50.3, 41.1, DRAENOR_NAGRAND },
									["isDaily"] = true,
								}),
								q(37222, {	-- Direhoof's Hide
									["providers"] = {
										{ "n", 87706 },	-- Gazmolf Futzwangler
										{ "i", 118657 },	-- Direhoof's Hide
									},
									["coord"] = { 50.3, 41.1, DRAENOR_NAGRAND },
									["isDaily"] = true,
								}),
								q(35147, {	-- Fragments of the Past
									["provider"] = { "n", 87393 },	-- Sallee Silverclamp
									["coord"] = { 50.4, 41.3, DRAENOR_NAGRAND },
									["isDaily"] = true,
									["cost"] = {
										{ "i", 118099, 20 },	-- Gorian Artifact Fragment
									},
								}),
								q(37223, {	-- Gagrog's Skull
									["providers"] = {
										{ "n", 87706 },	-- Gazmolf Futzwangler
										{ "i", 118658 },	-- Gagrog's Skull
									},
									["coord"] = { 50.3, 41.1, DRAENOR_NAGRAND },
									["isDaily"] = true,
								}),
								q(37224, {	-- Mu'gra's Head
									["providers"] = {
										{ "n", 87706 },	-- Gazmolf Futzwangler
										{ "i", 118659 },	-- Mu'gra's Head
									},
									["coord"] = { 50.3, 41.1, DRAENOR_NAGRAND },
									["isDaily"] = true,
								}),
								q(37225, {	-- Thek'talon's Talon
									["providers"] = {
										{ "n", 87706 },	-- Gazmolf Futzwangler
										{ "i", 118660 },	-- Thek'talon's Talon
									},
									["coord"] = { 50.3, 41.1, DRAENOR_NAGRAND },
									["isDaily"] = true,
								}),
								q(37520, {	-- Vileclaw's Claw
									["providers"] = {
										{ "n", 87706 },	-- Gazmolf Futzwangler
										{ "i", 120172 },	-- Vileclaw's Claw
									},
									["coord"] = { 50.3, 41.1, DRAENOR_NAGRAND },
									["isDaily"] = true,
								}),
								q(37226, {	-- Xelganak's Stinger
									["providers"] = {
										{ "n", 87706 },	-- Gazmolf Futzwangler
										{ "i", 118661 },	-- Xelganak's Stinger
									},
									["coord"] = { 50.3, 41.1, DRAENOR_NAGRAND },
									["isDaily"] = true,
								}),
							}),
							n(RARES, {
								n(86774, {	-- Aogexon
									["coord"] = { 51.6, 16.1, DRAENOR_NAGRAND },
									["g"] = {
										i(118654),	-- Aogexon's Fang
									}
								}),
								n(86732, {	-- Bergruu
									["coord"] = { 62.3, 13.8, DRAENOR_NAGRAND },
									["g"] = {
										i(118655),	-- Bergruu's Horn
									},
								}),
								n(86743, {	-- Dekorhan's Tusk
									["coord"] = { 64.0, 30.6, DRAENOR_NAGRAND },
									["g"] = {
										i(118656),	-- Dekorhan's Tusk
									},
								}),
								n(86729, {	-- Direhoof
									["coord"] = { 60.2, 38.4, DRAENOR_NAGRAND },
									["g"] = {
										i(118657),	-- Direhoof's Hide
									},
								}),
								n(86771, {	-- Gagrog the Brutal
									["coord"] = { 48.1, 22.1, DRAENOR_NAGRAND },
									["g"] = {
										i(118658),	-- Gagrog's Skull
									},
								}),
								n(87666, {	-- Mu'gra
									["coord"] = { 34.0, 51.6, DRAENOR_NAGRAND },
									["g"] = {
										i(118659),	-- Mu'gra's Head
									},
								}),
								n(86750, {	-- Thek'talon
									["description"] = "Flies in a large path starting north of |cFFFFD700Lok-Rath|r and west of the |cFFFFD700Throne of the Elements|r.",
									["coords"] = {
										{ 64.4, 26.2, DRAENOR_NAGRAND },
										{ 57.4, 31.4, DRAENOR_NAGRAND },
										{ 50.8, 38.0, DRAENOR_NAGRAND },
										{ 59.0, 34.0, DRAENOR_NAGRAND },
									},
									["g"] = {
										i(118660),	-- Thek'talon's Talon
									},
								}),
								n(88951, {	-- Vileclaw
									["coord"] = { 37.2, 39.0, DRAENOR_NAGRAND },
									["g"] = {
										i(120172),	-- Vileclaw's Claw
									},
								}),
								n(86835, {	-- Xelganak
									["coord"] = { 41.6, 45.0, DRAENOR_NAGRAND },
									["g"] = {
										i(118661),	-- Xelganak's Stinger
									},
								}),
							}),
							n(VENDORS, {
								n(87394, {	-- Kwilax Fuseshiv <Reputation Vendor>
									["coord"] = { 50.5, 41.4, DRAENOR_NAGRAND },
									["g"] = bubbleDownClassicRep(FACTION_STEAMWHEEDLE_PRESERVATION_SOCIETY, {
										{		-- Neutral
										}, {	-- Friendly
											i(118667),	-- Steamwheedle Elixir
										}, {	-- Honored
											i(110426),	-- Goblin Hot Potato
											i(118683, {	-- Portable Goon Squad
												["cost"] = 5000000,	-- 500g
											}),
										}, {	-- Revered
											i(119165, {	-- Contract: Professor Felblast
												["cost"] = 50000000,	-- 5,000g
												["g"] = {
													follower(460),	-- Professor Felblast
												},
											}),
											i(119149, {	-- Forest Sproutling (PET!)
												["cost"] = {
													{ "c", 823, 2000 },	-- 2,000x Apexis Crystal
													{ "g", 10000000 },	-- 1,000g
												},
											}),
											i(119148, {	-- Indentured Albino River Calf (PET!)
												["cost"] = {
													{ "c", 823, 2000 },	-- 2,000x Apexis Crystal
													{ "g", 10000000 },	-- 1,000g
												},
											}),
										}, {	-- Exalted
											i(116672, {	-- Domesticated Razorback (MOUNT!)
												["cost"] = {
													{ "c", 823, 5000 },	-- 5,000x Apexis Crystal
													{ "g", 50000000 },	-- 5,000g
												},
											}),
											i(119137),	-- Steamwheedle "Preservation" Society Tabard
										},
									}),
								}),
							}),
						},
					}),
				}),
				n(FLIGHT_PATHS, {
					fp(1574, {	-- Joz's Rylaks, Nagrand
						["coord"] = { 62.2, 32.8, DRAENOR_NAGRAND },
					}),
					fp(1573, {	-- Nivek's Overlook, Nagrand
						["coord"] = { 49.4, 75.8, DRAENOR_NAGRAND },
					}),
					fp(1572, {	-- Rilzit's Holdfast, Nagrand
						["coord"] = { 50.6, 30.6, DRAENOR_NAGRAND },
					}),
					fp(1505, {	-- Riverside Post, Nagrand
						["coord"] = { 49.4, 48.0, DRAENOR_NAGRAND },
						["races"] = HORDE_ONLY,
					}),
					fp(1506, {	-- Telaari Station, Nagrand
						["coord"] = { 63.6, 61.6, DRAENOR_NAGRAND },
						["races"] = ALLIANCE_ONLY,
					}),
					fp(1502, {	-- The Ring of Trials, Nagrand
						["coord"] = { 79.8, 49.6, DRAENOR_NAGRAND },
					}),
					fp(1503, {	-- Throne of the Elements, Nagrand
						["coord"] = { 73.6, 26.6, DRAENOR_NAGRAND },
					}),
					fp(1504, {	-- Wor'var, Nagrand
						["coord"] = { 83.2, 44.6, DRAENOR_NAGRAND },
						["races"] = HORDE_ONLY,
					}),
					fp(1507, {	-- Yrel's Watch, Nagrand
						["coord"] = { 62.6, 40.6, DRAENOR_NAGRAND },
						["races"] = ALLIANCE_ONLY,
					}),
				}),
				petbattles({ ADDED_6_0_2 }, {
					n(87110, {	-- Tarr the Terrible <Grand Master Pet Tamer>
						["coord"] = { 56.2, 9.80, DRAENOR_NAGRAND },
					}),
				}),
				n(QUESTS, {
					q(34719, {	-- ... and My Hammer
						["provider"] = { "n", 79743 },	-- Vindicator Mo'mor
						["coord"] = { 66.7, 68.6, DRAENOR_NAGRAND },
						["races"] = ALLIANCE_ONLY,
						["sourceQuest"] = 34716,	-- Mo'mor Might Know
					}),
					q(34769, {	-- A Choice to Make
						["provider"] = { "n", 79674 },	-- Thaelin Darkanvil
						["coord"] = { 63.0, 61.9, DRAENOR_NAGRAND },
						["races"] = ALLIANCE_ONLY,
						["sourceQuest"] = 34746,	-- Shields Down!
					}),
					q(34899, {	-- A Choice to Make
						["provider"] = { "n", 80140 },	-- A Choice to Make
						["coord"] = { 82.9, 44.1, DRAENOR_NAGRAND },
						["races"] = HORDE_ONLY,
						["sourceQuest"] = 34868,	-- Challenge of the Masters
					}),
					q(36284, {	-- A Fascinating Fungus
						["provider"] = { "n", 84861 },	-- A Fascinating Fungus
						["coord"] = { 86.6, 28.3, DRAENOR_NAGRAND },
						["sourceQuest"] = 35146,	-- The Good Doctor
					}),
					q(35632, {	-- A Lesson in Archaeology
						["provider"] = { "n", 79201 },	-- Gazmolf Futzwangler
						["coord"] = { 71.1, 52.3, DRAENOR_NAGRAND },
						["sourceQuests"] = {
							34809,	-- A Lesson in Mineralogy
							34811,	-- Good Help is Hard to Find
						},
					}),
					q(34809, {	-- A Lesson in Mineralogy
						["provider"] = { "n", 79201 },	-- Gazmolf Futzwangler
						["coord"] = { 71.1, 52.3, DRAENOR_NAGRAND },
						["sourceQuest"] = 34810,	-- Gazmolf Futzwangler and the Highmaul Crusade
					}),
					q(35663, {	-- A Lesson in Teamwork
						["provider"] = { "n", 79201 },	-- Gazmolf Futzwangler
						["coord"] = { 71.1, 52.3, DRAENOR_NAGRAND },
						["sourceQuests"] = {
							34809,	-- A Lesson in Mineralogy
							34811,	-- Good Help is Hard to Find
						},
						["g"] = {
							i(114890),	-- Excavated Highmaul Doohickey
							i(114887),	-- Excavated Highmaul Knicknack
							i(114888),	-- Excavated Highmaul Thingamabob
						},
					}),
					q(34894, {	-- A Rare Bloom
						["provider"] = { "n", 80434 },	-- Gar'rok
						["coord"] = { 75.0, 22.7, DRAENOR_NAGRAND },
						["sourceQuest"] = 34943,	-- An Old Friend
					}),
					q(33928, {	-- A Wrong of Earth and Fire
						["description"] = "Starts dropping during |cFFFFD700Elemental Attunement|r.",
						["provider"] = { "i", 113080 },	-- A Molten Core
						["coord"] = { 68.9, 10.1, DRAENOR_NAGRAND },
						["cr"] = 80586,	-- Magmire
					}),
					q(36711, {	-- Abu'gar
						["provider"] = { "n", 82746 },	-- Abu'gar
						["coords"] = {
							{ 67.2, 56.0, DRAENOR_NAGRAND },	-- Abu'gar
							{ 65.8, 61.1, DRAENOR_NAGRAND },	-- Abu'gar's Vitality
							{ 85.4, 38.7, DRAENOR_NAGRAND },	-- Abu'gar's Missing Reel
							{ 38.4, 49.3, DRAENOR_NAGRAND },	-- Abu'Gar's Favorite Lure
						},
						["g"] = {
							follower(209),	-- Abu'gar
						},
					}),
					q(35059, {	-- Along the Riverside
						["provider"] = { "n", 79576 },	-- Rangari D'kaan
						["coord"] = { 63.5, 61.8, DRAENOR_NAGRAND },
						["races"] = ALLIANCE_ONLY,
						["sourceQuests"] = {
							34596,	-- Reglakk's Research
							34957,	-- Challenge of the Masters
						},
						["isBreadcrumb"] = true,
					}),
					q(35095, {	-- Along the Riverside
						["provider"] = { "n", 80003 },	-- Thrall
						["coord"] = { 82.8, 45.0, DRAENOR_NAGRAND },
						["races"] = HORDE_ONLY,
						["sourceQuests"] = {
							35158,	-- Reglakk's Research
							34918,	-- Shields Down!
							-- 34826,	-- The Friend of My Enemy TODO: not sure if required
						},
						["isBreadcrumb"] = true,
					}),
					q(36193, {	-- An Act of Kindness
						["provider"] = { "n", 84459 },	-- Rangari Saardar
						["coord"] = { 49.4, 16.6, DRAENOR_NAGRAND },
						["races"] = ALLIANCE_ONLY,
						["sourceQuest"] = 36167,	-- The Trial of Heart
						["description"] = "Available during |cFFFFD700The Trial of Heart|r.",
					}),
					q(34943, {	-- An Old Friend
						["provider"] = { "n", 80595 },	-- Kalandrios
						["coord"] = { 72.7, 19.7, DRAENOR_NAGRAND },
						["sourceQuests"] = {
							35331,	-- Called to the Throne (alliance)
							34965,	-- Called to the Throne (horde)
						},
					}),
					q(35169, {	-- And Justice for Thrall
						["provider"] = { "n", 79576 },	-- Rangari D'kaan
						["coord"] = { 63.5, 61.8, DRAENOR_NAGRAND },
						["races"] = ALLIANCE_ONLY,
						["sourceQuests"] = {
							34957,	-- Challenge of the Masters
							35062,	-- Lok-rath is Secured
							34596,	-- Reglakk's Research
						},
						["g"] = {
							i(118156),	-- Coif of Grasping Earth
							i(118154),	-- Grounded Headguard
							i(118157),	-- Thunderbolt Tanned Helmet
							i(118155),	-- Thundercaller's Cowl
						},
					}),
					q(35171, {	-- And Justice for Thrall
						["provider"] = { "n", 80003 },	-- Thrall
						["coord"] = { 82.8, 45.0, DRAENOR_NAGRAND },
						["races"] = HORDE_ONLY,
						["sourceQuests"] = {
							34868,	-- Challenge of the Masters
							35098,	-- Lok-rath is Secured
							35158,	-- Reglakk's Research
						},
						["g"] = {
							i(118156),	-- Coif of Grasping Earth
							i(118154),	-- Grounded Headguard
							i(118157),	-- Thunderbolt Tanned Helmet
							i(118155),	-- Thundercaller's Cowl
						},
					}),
					q(39299, {	-- Black Marketeering
						["provider"] = { "n", 83888 },	-- Mister Knuckles
						["coord"] = { 53.8, 15.0, DRAENOR_NAGRAND },
						["sourceQuest"] = 39278,	-- The Missing Manifest
						["g"] = {
							currency(824),	-- Garrison Resources
						},
					}),
					q(34953, {	-- Blood of the Burning Blade
						["provider"] = { "n", 80161 },	-- Lantresor of the Blade
						["coord"] = { 85.4, 54.6, DRAENOR_NAGRAND },
						["races"] = ALLIANCE_ONLY,
						["altQuests"] = { 34952 },	-- The Friend o' My Enemy
						["sourceQuest"] = 34951,	-- They Call Him Lantresor of the Blade
						["description"] = "Only available if you do not accept |cFFFFD700The Friend o' My Enemy|r from Hansel Heavyhands.",
					}),
					q(35143, {	-- Blood of the Burning Blade
						["provider"] = { "n", 80161 },	-- Lantresor of the Blade
						["coord"] = { 85.4, 54.5, DRAENOR_NAGRAND },
						["races"] = HORDE_ONLY,
						["sourceQuest"] = 34808,	-- More Lazy Peons
						["altQuests"] = { 34826 },	-- The Friend of My Enemy
						["description"] = "Only available if you do not accept |cFFFFD700The Friend of My Enemy|r from Thrall.",
					}),
					q(35921, {	-- Bread and Circuses
						["provider"] = { "n", 83606 },	-- Lucy Brokerblast
						["coord"] = { 63.4, 60.6, DRAENOR_NAGRAND },
						["races"] = ALLIANCE_ONLY,
						["sourceQuest"] = 35062,	-- Lok-rath is Secured
						["isBreadcrumb"] = true,
					}),
					q(35922, {	-- Bread and Circuses
						["provider"] = { "n", 83606 },	-- Lucy Brokerblast
						["coord"] = { 82.8, 46.8, DRAENOR_NAGRAND },
						["races"] = HORDE_ONLY,
						["sourceQuest"] = 35098,	-- Lok-rath is Secured
						["isBreadcrumb"] = true,
					}),
					q(35331, {	-- Called to the Throne
						["provider"] = { "n", 82138 },	-- Vindicator Nobundo
						["coord"] = { 71.7, 19.6, DRAENOR_NAGRAND },
						["races"] = ALLIANCE_ONLY,
						["sourceQuest"] = 35332,	-- Nobundo Sends Word
					}),
					q(34965, {	-- Called to the Throne
						["provider"] = { "n", 80597 },	-- Farseer Drek'Thar
						["coord"] = { 71.7, 19.6, DRAENOR_NAGRAND },
						["races"] = HORDE_ONLY,
						["sourceQuest"] = 34964,	-- The Farseer Awaits
					}),
					q(35141, {	-- Carrier Has Arrived
						["provider"] = { "n", 81412 },	-- Vindicator Yrel
						["races"] = ALLIANCE_ONLY,
						["sourceQuest"] = 35140,	-- THAELIN!
						["coords"] = {
							{ 61.9, 40.5, DRAENOR_NAGRAND },	-- If you haven't picked up finished "And Justice For Thrall"
							{ 66.9, 33.7, DRAENOR_NAGRAND },	-- If you finish "And Justice For Thrall" first
						},
					}),
					q(34957, {	-- Challenge of the Masters
						["provider"] = { "n", 80161 },	-- Lantresor of the Blade
						["coord"] = { 44.8, 19.8, 551 },
						["races"] = ALLIANCE_ONLY,
						["sourceQuest"] = 34956,	-- Meet Me in the Cavern
						["g"] = {
							i(114707),	-- Beastrider Belt
							i(114704),	-- Plainsthunder Girdle
							i(114706),	-- Stormsteppe Belt
							i(114705),	-- Windshaper Cord
						},
					}),
					q(34868, {	-- Challenge of the Masters
						["provider"] = { "n", 80319 },	-- Lantresor of the Blade
						["coord"] = { 44.8, 19.7, 551 },
						["races"] = HORDE_ONLY,
						["sourceQuest"] = 34866,	-- Meet Me in the Cavern
						["g"] = {
							i(114700),	-- Beastrider Spaulders
							i(114701),	-- Plainsthunder Shoulders
							i(114703),	-- Stormsteppe Pauldrons
							i(114702),	-- Windshaper Mantle
						},
					}),
					q(37293, {	-- Clearing the Mist
						["provider"] = { "n", 88240 },	-- Shadow Hunter Mok'e
						["coord"] = { 52.3, 19.1, DRAENOR_NAGRAND },
						["races"] = HORDE_ONLY,
					}),
					q(35170, {	-- Consumed by Vengeance
						["provider"] = { "n", 82688 },	-- Olgra
						["coord"] = { 74.1, 37.5, DRAENOR_NAGRAND },
						["races"] = HORDE_ONLY,
						["sourceQuest"] = 35167,	-- Lost in Nagrand
					}),
					q(35398, {	-- Dark Binding
						["provider"] = { "n", 82179 },	-- Vindicator Nobundo
						["coord"] = { 55.5, 55.9, DRAENOR_NAGRAND },
						["races"] = ALLIANCE_ONLY,
						["sourceQuest"] = 35372,	-- The Call of Oshu'gun
					}),
					q(35144, {	-- Dark Binding
						["provider"] = { "n", 81335 },	-- Farseer Drek'Thar
						["coord"] = { 55.5, 55.9, DRAENOR_NAGRAND },
						["races"] = HORDE_ONLY,
						["sourceQuest"] = 35232,	-- The Call of Oshu'gun
					}),
					q(34512, {	-- Declawing the Competition
						["provider"] = { "n", 79310 },	-- Pyxni Pennypocket
						["coord"] = { 78.5, 48.5, DRAENOR_NAGRAND },
						["sourceQuests"] = {
							34769,	-- A Choice to Make (alliance)
							34899,	-- A Choice to Make (horde)
						},
					}),
					q(36285, {	-- Dirgemire
						["provider"] = { "n", 84861 },	-- A Fascinating Fungus
						["coord"] = { 86.6, 28.3, DRAENOR_NAGRAND },
						["sourceQuests"] = {
							36284,	-- A Fascinating Fungus
							36275,	-- The Search For Research
						},
					}),
					q(35083, {	-- Disrupt the Rituals
						["provider"] = {"o",233263},	-- Shamanstone
						["sourceQuests"] = {
							35372,	-- The Call of Oshu'gun (alliance)
							35232,	-- The Call of Oshu'gun (horde)
						},
						["coords"] = {
							{ 55.4, 55.9, DRAENOR_NAGRAND },
							{ 51.8, 58.8, DRAENOR_NAGRAND },
							{ 46.8, 57.5, DRAENOR_NAGRAND },
							{ 52.0, 68.8, DRAENOR_NAGRAND },
						},
					}),
					q(34881, {	-- Earth, Wind and Fire...and Water
						["provider"] = { "n", 80593 },	-- Incineratus
						["coord"] = { 71.3, 17.8, DRAENOR_NAGRAND },
						["sourceQuests"] = {
							35331,	-- Called to the Throne (alliance)
							34965,	-- Called to the Throne (horde)
						},
						["g"] = {
							i(119066),	-- Seal of Falling Snow
							i(119074),	-- Seal of Rumbling Earth
							i(118153),	-- Seal of Rushing Winds
							i(118151),	-- Seal of the Ancient Flame
							i(118152),	-- Seal of the Rising Tides
						},
					}),
					q(35023, {	-- Echoes of the Past
						["provider"] = { "n", 80866 },	-- Dahaka
						["coord"] = { 40.3, 56.7, DRAENOR_NAGRAND },
						["sourceQuest"] = 35393,	-- Spiritual Matters
					}),
					q(35333, {	-- Elemental Attunement
						["provider"] = { "n", 82138 },	-- Vindicator Nobundo
						["coord"] = { 71.7, 19.6, DRAENOR_NAGRAND },
						["races"] = ALLIANCE_ONLY,
						["sourceQuest"] = 35331,	-- Called to the Throne
					}),
					q(34891, {	-- Elemental Attunement
						["provider"] = { "n", 80597 },	-- Farseer Drek'Thar
						["coord"] = { 71.7, 19.6, DRAENOR_NAGRAND },
						["races"] = HORDE_ONLY,
						["sourceQuest"] = 34965,	-- Called to the Throne
					}),
					q(35596, {	-- Feline Friends Forever
						["provider"] = { "n", 80083 },	-- Goldmane the Skinner
						["crs"] = { 80080 },	-- Bolkar the Cruel
						["coord"] = { 40.4, 76.1, DRAENOR_NAGRAND },
						["description"] = "Kill |cFFFFD700Bolkar the Cruel|r to loot |cFFFFD700Goldmane's Cage Key|r, then use the key on the cage.";
						["g"] = {
							follower(170),	-- Goldmane the Skinner
						},
					}),
					q(34819, {	-- Fruitful Ventures
						["provider"] = { "n", 81955 },	-- Digrem Orebar
						["coord"] = { 79.2, 52.6, DRAENOR_NAGRAND },
						["sourceQuest"] = 34869,	-- Tastes Like Chicken
					}),
					q(34810, {	-- Gazmolf Futzwangler and the Highmaul Crusade
						["provider"] = { "n", 80184 },	-- Gabby Goldsnap
						["coord"] = { 79.8, 48.8, DRAENOR_NAGRAND },
						["sourceQuests"] = {
							34769,	-- A Choice to Make (alliance)
							34899,	-- A Choice to Make (horde)
						},
					}),
					q(34515, {	-- Gobnapped
						["provider"] = { "n", 79312 },	-- Greezlex Fizzpinch
						["coord"] = { 78.9, 58.8, DRAENOR_NAGRAND },
						["sourceQuest"] = 34598,	-- The Missing Caravan
						["g"] = {
							i(114881),	-- Sabermaw Mauler's Gorget
							i(114882),	-- Sabermaw Mystic's Pendant
							i(114880),	-- Sabermaw Scarfang's Choker
						},
					}),
					q(35024, {	-- Golmash Hellscream
						["provider"] = { "n", 80864 },	-- Gar'rok
						["coord"] = { 40.4, 56.7, DRAENOR_NAGRAND },
						["sourceQuests"] = {
							35023,	-- Echoes of the Past
							35022,	-- Lighting The Darkness
						},
						["g"] = {
							i(118158),	-- Weatherbeaten Warsong Chain
							i(118159),	-- Eroded Warsong Pendant
							i(118160),	-- Weatherbeaten Warsong Locket
							i(119082),	-- Ancestral Warsong Talisman
							i(119091),	-- Warsong Wolfrider's Gorget
						},
					}),
					q(34811, {	-- Good Help is Hard to Find
						["provider"] = { "n", 82658 },	-- Trixi Leroux
						["coord"] = { 71.1, 52.4, DRAENOR_NAGRAND },
						["sourceQuest"] = 34810,	-- Gazmolf Futzwangler and the Highmaul Crusade
					}),
					q(34893, {	-- Guardians of the Plateau
						["provider"] = { "n", 80593 },	-- Incineratus
						["coord"] = { 71.3, 17.8, DRAENOR_NAGRAND },
						["sourceQuests"] = {
							35331,	-- Called to the Throne (alliance)
							34965,	-- Called to the Throne (horde)
						},
					}),
					q(34932, {	-- Guise of the Deceiver
						["provider"] = { "n", 80434 },	-- Gar'rok
						["coord"] = { 75.0, 22.7, DRAENOR_NAGRAND },
						["sourceQuest"] = 34894,	-- A Rare Bloom
					}),
					heroscall(q(49567, {	-- Hero's Call: Nagrand! (Draenor)
						["timeline"] = { ADDED_7_3_5 },
						["isBreadcrumb"] = true,
						["lvl"] = 98,
					})),
					q(34915, {	-- I Help Ya Kill Dem
						["provider"] = { "n", 80429 },	-- Shadow Hunter Kajassa
						["coord"] = { 68.5, 64.5, DRAENOR_NAGRAND },
						["races"] = HORDE_ONLY,
						["sourceQuest"] = 34914,	-- Target of Opportunity
					}),
					q(35068, {	-- If They Won't Surrender...
						["provider"] = { "n", 81097 },	-- Lieutenant K. K. Lee
						["coord"] = { 55.4, 42.0, DRAENOR_NAGRAND },
						["races"] = ALLIANCE_ONLY,
						["sourceQuest"] = 35060,	-- Terms of Surrender
						["g"] = {
							i(118150),	-- Beastrider Bracers
							i(118148),	-- Plainsthunder Bracers
							i(118149),	-- Stormsteppe Bracers
							i(118147),	-- Windshaper Bracers
						},
					}),
					q(35100, {	-- If They Won't Surrender...
						["provider"] = { "n", 81194 },	-- Senior Sergeant Igerdes
						["coord"] = { 55.4, 42.0, DRAENOR_NAGRAND },
						["races"] = HORDE_ONLY,
						["sourceQuest"] = 35096,	-- Terms of Surrender
						["g"] = {
							i(118150),	-- Beastrider Bracers
							i(118148),	-- Plainsthunder Bracers
							i(118149),	-- Stormsteppe Bracers
							i(118147),	-- Windshaper Bracers
						},
					}),
					q(35357, {	-- King of the Breezestriders
						["provider"] = { "n", 82094 },	-- Rangari Laara
						["coord"] = { 63.4, 61.4, DRAENOR_NAGRAND },
						["races"] = ALLIANCE_ONLY,
						["sourceQuest"] = 35356,	-- Someone's Missing Arrow
						["g"] = {
							i(114698),	-- Beastrider Breeches
							i(114695),	-- Plainsthunder Legguards
							i(114697),	-- Stormsteppe Leggings
							i(114696),	-- Windshaper Leggings
						},
					}),
					q(35378, {	-- King of the Breezestriders
						["provider"] = { "n", 82080 },	-- Stalker Ogka
						["coord"] = { 82.5, 43.9, DRAENOR_NAGRAND },
						["races"] = HORDE_ONLY,
						["sourceQuest"] = 35377,	-- Someone's Missing Axe
						["g"] = {
							i(114698),	-- Beastrider Breeches
							i(114695),	-- Plainsthunder Legguards
							i(114697),	-- Stormsteppe Leggings
							i(114696),	-- Windshaper Leggings
						},
					}),
					q(35022, {	-- Lighting the Darkness
						["provider"] = { "n", 80864 },	-- Gar'rok
						["coord"] = { 40.4, 56.7, DRAENOR_NAGRAND },
						["sourceQuest"] = 35393,	-- Spiritual Matters
					}),
					q(35062, {	-- Lok'rath is Secured
						["provider"] = { "n", 81039 },	-- Vindicator Yrel
						["coord"] = { 61.9, 40.5, DRAENOR_NAGRAND },
						["races"] = ALLIANCE_ONLY,
						["sourceQuest"] = 35061,	-- The Pride of Lok-rath
					}),
					q(35098, {	-- Lok-rath is Secured
						["provider"] = { "n", 81186 },	-- Durotan
						["coord"] = { 48.5, 48.2, DRAENOR_NAGRAND },
						["races"] = HORDE_ONLY,
						["sourceQuest"] = 35097,	-- The Pride of Lok-rath
					}),
					q(35167, {	-- Lost in Nagrand
						["provider"] = { "n", 72822 },	-- Mankrik
						["coord"] = { 49.2, 47.9, DRAENOR_NAGRAND },
						["races"] = HORDE_ONLY,
					}),
					q(35928, {	-- Meatgut Needs Bones
						["provider"] = { "n", 82727 },	-- Meatgut
						["coord"] = { 78.3, 52.5, DRAENOR_NAGRAND },
						["repeatable"] = true,
						["sourceQuest"] = 34769,	-- A Choice to Make (todo: verify if needed)
					}),
					q(34956, {	-- Meet Me in the Cavern
						["provider"] = { "n", 80161 },	-- Lantresor of the Blade
						["coord"] = { 85.4, 54.6, DRAENOR_NAGRAND },
						["races"] = ALLIANCE_ONLY,
						["sourceQuests"] = {
							34955,	-- Not Without My Honor
							34954,	-- The Blade Itself
						},
					}),
					q(34866, {	-- Meet Me in the Cavern
						["provider"] = { "n", 80161 },
						["coord"] = { 85.4, 54.5, DRAENOR_NAGRAND },
						["races"] = HORDE_ONLY,
						["sourceQuests"] = {
							34850,	-- Not Without My Honor
							34849,	-- The Blade Itself
						},
					}),
					q(34716, {	-- Mo'mor Might Know
						["provider"] = { "n", 79722 },	-- Mo'mor Might Know
						["coord"] = { 65.8, 68.6, DRAENOR_NAGRAND },
						["races"] = ALLIANCE_ONLY,
						["sourceQuest"] = 34682,	-- Operation: Surprise Party
						["g"] = {
							i(114694),	-- Beastrider Helm
							i(114691),	-- Plainsthunder Helm
							i(114693),	-- Stormsteppe Helm
							i(114692),	-- Windshaper Hood
						},
					}),
					q(34808, {	-- More Lazy Peons
						["provider"] = { "n", 80003 },	-- Thrall
						["coord"] = { 82.8, 45.0, DRAENOR_NAGRAND },
						["races"] = HORDE_ONLY,
						["sourceQuest"] = 34795,	-- The Might of the Warsong
					}),
					q(34516, {	-- My Precious!
						["provider"] = { "n", 79899 },	-- Bazwix
						["coord"] = { 76.9, 59.2, DRAENOR_NAGRAND },
						["sourceQuest"] = 34598,	-- The Missing Caravan
					}),
					q(34466, {	-- Mysterious Staff
						["coord"] = { 46.3, 16.0, DRAENOR_NAGRAND },
						["icon"] = 135188,
						["provider"] = {"o",229344},	-- Buried Timewarped Staff
					}),
					q(34900, {	-- New Babies
						["provider"] = { "n", 81955 },	-- Digrem Orebar
						["coord"] = { 79.2, 52.6, DRAENOR_NAGRAND },
						["sourceQuest"] = 34819,	-- Fruitful Ventures
						["g"] = {
							i(114834),	-- Meadowstomper Calf (PET!)
						},
					}),
					q(35332, {	-- Nobundo Sends Word
						["provider"] = { "n", 79576 },	-- Rangari D'kaan
						["coord"] = { 63.5, 61.8, DRAENOR_NAGRAND },
						["races"] = ALLIANCE_ONLY,
						["sourceQuest"] = 34596,	-- Reglakk's Research
						["isBreadcrumb"] = true,
					}),
					q(34955, {	-- Not Without My Honor
						["provider"] = { "n", 80161 },	-- Lantresor of the Blade
						["coord"] = { 85.4, 54.6, DRAENOR_NAGRAND },
						["races"] = ALLIANCE_ONLY,
						["sourceQuest"] = 34951,	-- They Call Him Lantresor of the Blade
						["g"] = {
							i(114687),	-- Beastrider Gloves
							i(114688),	-- Plainsthunder Gauntlets
							i(114690),	-- Stormsteppe Gauntlets
							i(114689),	-- Windshaper Gloves
						},
					}),
					q(34850, {	-- Not Without My Honor
						["provider"] = { "n", 80161 },	-- Lantresor of the Blade
						["coord"] = { 85.4, 54.5, DRAENOR_NAGRAND },
						["races"] = HORDE_ONLY,
						["sourceQuest"] = 34818,	-- They Call Him Lantresor of the Blade
						["g"] = {
							i(114694),	-- Beastrider Helm
							i(114691),	-- Plainsthunder Helm
							i(114693),	-- Stormsteppe Helm
							i(114692),	-- Windshaper Hood
						},
					}),
					q(34572, {	-- Obliterating Ogres
						["provider"] = { "n", 79282 },	-- Rangari Eleena
						["coord"] = { 78.7, 69.2, DRAENOR_NAGRAND },
						["races"] = ALLIANCE_ONLY,
						["sourceQuest"] = 34769,	-- A Choice to Make (alliance)
						["g"] = {
							i(114686),	-- Beastrider Boots
							i(114683),	-- Plainsthunder Warboots
							i(114685),	-- Stormsteppe Sabatons
							i(114684),	-- Windshaper Treads
						},
					}),
					q(35155, {	-- Obliterating Ogres
						["provider"] = { "n", 79281 },	-- Akrosh
						["coord"] = { 83.0, 67.9, DRAENOR_NAGRAND },
						["races"] = HORDE_ONLY,
						["sourceQuest"] = 34899,	-- A Choice to Make (horde)
						["g"] = {
							i(114686),	-- Beastrider Boots
							i(114683),	-- Plainsthunder Warboots
							i(114685),	-- Stormsteppe Sabatons
							i(114684),	-- Windshaper Treads
						},
					}),
					q(34593, {	-- Obtaining Ogre Offensive Orders
						["provider"] = { "n", 79282 },	-- Rangari Eleena
						["coord"] = { 78.7, 69.2, DRAENOR_NAGRAND },
						["races"] = ALLIANCE_ONLY,
						["sourceQuests"] = {
							34769,	-- A Choice to Make (alliance)
							35148,	-- Trouble at the Overwatch
						},
					}),
					q(35157, {	-- Obtaining Ogre Offensive Orders
						["provider"] = { "n", 79281 },	-- Akrosh
						["coord"] = { 83.0, 67.9, DRAENOR_NAGRAND },
						["races"] = HORDE_ONLY,
						["sourceQuests"] = {
							34899,	-- A Choice to Make (horde)
							35150,	-- Trouble at the Overwatch
						},
					}),
					q(34717, {	-- Operation: Just Arrowhead
						["provider"] = { "n", 79722 },	-- Rangari Ogir
						["coord"] = { 65.8, 68.6, DRAENOR_NAGRAND },
						["races"] = ALLIANCE_ONLY,
						["description"] = "This version is offered if you do not leave Rangari Ogir's area after turning in Operation: Surprise Party.",
						["sourceQuest"] = 34682,	-- Operation: Surprise Party
					}),
					q(34720, {	-- Operation: Just Arrowhead
						["provider"] = { "n", 79722 },	-- Rangari Ogir
						["coord"] = { 65.8, 68.6, DRAENOR_NAGRAND },
						["races"] = ALLIANCE_ONLY,
						["description"] = "This version is offered if you left Rangari Ogir's area after turning in Operation: Surprise Party.",
						["sourceQuest"] = 34682,	-- Operation: Surprise Party
					}),
					q(34682, {	-- Operation: Surprise Party
						["provider"] = { "n", 79674 },	-- Thaelin Darkanvil
						["coord"] = { 63.0, 61.9, DRAENOR_NAGRAND },
						["races"] = ALLIANCE_ONLY,
						["sourceQuest"] = 34678,	-- Up and Running
					}),
					q(35350, {	-- Queen of the Clefthoof
						["provider"] = { "n", 82092 },	-- Kia Herman
						["coord"] = { 63.5, 61.4, DRAENOR_NAGRAND },
						["races"] = ALLIANCE_ONLY,
						["sourceQuest"] = 35337,	-- That Pounding Sound
					}),
					q(35375, {	-- Queen of the Clefthoof
						["provider"] = { "n", 82078 },	-- Shadow Hunter Tax
						["coord"] = { 82.5, 43.9, DRAENOR_NAGRAND },
						["races"] = HORDE_ONLY,
						["sourceQuest"] = 35374,	-- That Pounding Sound
					}),
					q(34596, {	-- Reglakk's Research
						["provider"] = { "n", 81144 },	-- Rangari Eleena
						["coord"] = { 84.0, 76.8, DRAENOR_NAGRAND },
						["races"] = ALLIANCE_ONLY,
						["sourceQuest"] = 34593,	-- Obtaining Ogre Offensive Orders
						["g"] = {
							i(114911),	-- Mighty Gorian Cleaver
							i(114912),	-- Mighty Gorian Greatsword
							i(114913),	-- Mighty Gorian Hunting Bow
							i(114914),	-- Mighty Gorian Dagger
							i(114915),	-- Mighty Gorian Shortsword
							i(114916),	-- Mighty Gorian Halberd
							i(114917),	-- Gorian Arcanist Spellstaff
							i(114918),	-- Gorian Arcanist Spiritshaker
							i(120430),	-- Mighty Gorian Headcracker
						},
					}),
					q(35158, {	-- Reglakk's Research
						["provider"] = { "n", 81361 },	-- Dalgorsh
						["coord"] = { 83.7, 76.8, DRAENOR_NAGRAND },
						["races"] = HORDE_ONLY,
						["sourceQuest"] = 35157,	-- Obtaining Ogre Offensive Orders
						["g"] = {
							i(114911),	-- Mighty Gorian Cleaver
							i(114912),	-- Mighty Gorian Greatsword
							i(114913),	-- Mighty Gorian Hunting Bow
							i(114914),	-- Mighty Gorian Dagger
							i(114915),	-- Mighty Gorian Shortsword
							i(114916),	-- Mighty Gorian Halberd
							i(114917),	-- Gorian Arcanist Spellstaff
							i(114918),	-- Gorian Arcanist Spiritshaker
							i(120430),	-- Mighty Gorian Headcracker
						},
					}),
					q(34597, {	-- Removing the Paper Trail
						["coord"] = { 81.3, 70.3, DRAENOR_NAGRAND },
						["icon"] = 454060,
						["races"] = ALLIANCE_ONLY,
						["sourceQuest"] = 34769,	-- A Choice to Make (alliance)
						["provider"] = {"o",231901},	-- Ogre Scrolls
					}),
					q(35156, {	-- Removing the Paper Trail
						["coord"] = { 81.3, 70.3, DRAENOR_NAGRAND },
						["icon"] = 454060,
						["races"] = HORDE_ONLY,
						["sourceQuest"] = 34899,	-- A Choice to Make (horde)
						["provider"] = {"o",231901},	-- Ogre Scrolls
					}),
					q(34877, {	-- Removing the Reinforcements
						["provider"] = { "n", 81144 },	-- Rangari Eleena
						["coord"] = { 84.0, 76.8, DRAENOR_NAGRAND },
						["races"] = ALLIANCE_ONLY,
						["sourceQuests"] = {
							34572,	-- Obliterating Ogres
							34593,	-- Obtaining Ogre Offensive Orders
						},
					}),
					q(35159, {	-- Removing the Reinforcements
						["provider"] = { "n", 81361 },	-- Dalgorsh
						["coord"] = { 83.7, 76.8, DRAENOR_NAGRAND },
						["races"] = HORDE_ONLY,
						["sourceQuest"] = 35157,	-- Obtaining Ogre Offensive Orders
					}),
					q(34665, {	-- Ring of Trials: Captain Boomspark
						["provider"] = { "n", 79188 },	-- Dexyl Deadblade
						["coord"] = { 79.4, 50.2, DRAENOR_NAGRAND },
						["sourceQuest"] = 34664,	-- Ring of Trials: Hol'yelaa
					}),
					q(34662, {	-- Ring of Trials: Crushmaul
						["provider"] = { "n", 79188 },	-- Dexyl Deadblade
						["coord"] = { 79.4, 50.2, DRAENOR_NAGRAND },
						["sourceQuests"] = {
							34769,	-- A Choice to Make (alliance)
							34899,	-- A Choice to Make (horde)
							35921,	-- Bread and Circuses (alliance breadcrumb)
							35922,	-- Bread and Circuses (horde breadcrumb)
						},
					}),
					q(34664, {	-- Ring of Trials: Hol'yelaa
						["provider"] = { "n", 79188 },	-- Dexyl Deadblade
						["coord"] = { 79.4, 50.2, DRAENOR_NAGRAND },
						["sourceQuest"] = 34663,	-- Ring of Trials: Raketalon
					}),
					q(34663, {	-- Ring of Trials: Raketalon
						["provider"] = { "n", 79188 },	-- Dexyl Deadblade
						["coord"] = { 79.4, 50.2, DRAENOR_NAGRAND },
						["sourceQuest"] = 34662,	-- Ring of Trials: Crushmaul
					}),
					q(34666, {	-- Ring of Trials: Roakk the Zealot
						["provider"] = { "n", 79188 },	-- Dexyl Deadblade
						["coord"] = { 79.4, 50.2, DRAENOR_NAGRAND },
						["sourceQuest"] = 34665,	-- Ring of Trials: Captain Boomspark
						["g"] = {
							i(114711),	-- Beastrider Wristwraps
							i(114709),	-- Plainsthunder Wristwraps
							i(114710),	-- Stormsteppe Wristwraps
							i(114708),	-- Windshaper Wristwraps
						},
					}),
					q(34746, {	-- Shields Down!
						["provider"] = { "n", 79743 },	-- Vindicator Mo'mor
						["coord"] = { 66.7, 68.6, DRAENOR_NAGRAND },
						["races"] = ALLIANCE_ONLY,
						["sourceQuests"] = {
							34719,	-- ... and My Hammer
							34718,	-- The Others
						},
						["g"] = {
							i(114700),	-- Beastrider Spaulders
							i(114701),	-- Plainsthunder Shoulders
							i(114703),	-- Stormsteppe Pauldrons
							i(114702),	-- Windshaper Mantle
						},
					}),
					q(34918, {	-- Shields Down!
						["provider"] = { "n", 80429 },	-- Shadow Hunter Kajassa
						["coord"] = { 68.5, 64.5, DRAENOR_NAGRAND },
						["races"] = HORDE_ONLY,
						["sourceQuests"] = {
							34915,	-- I Help Ya Kill Dem
							34917,	-- Shields Up!
							34916,	-- The Blessing of Samedi
						},
						["g"] = {
							i(114707),	-- Beastrider Belt
							i(114704),	-- Plainsthunder Girdle
							i(114706),	-- Stormsteppe Belt
							i(114705),	-- Windshaper Cord
						},
					}),
					q(34917, {	-- Shields Up!
						["provider"] = { "n", 80451 },	-- Rangari Keilnei
						["coord"] = { 68.5, 64.5, DRAENOR_NAGRAND },
						["races"] = HORDE_ONLY,
					}),
					q(35338, {	-- Shooting the Breeze (A)
						["provider"] = { "n", 82094 },	-- Rangari Laara
						["coord"] = { 63.4, 61.4, DRAENOR_NAGRAND },
						["races"] = ALLIANCE_ONLY,
						["sourceQuest"] = 34769,	-- A Choice to Make
					}),
					q(35376, {	-- Shooting the Breeze (H)
						["provider"] = { "n", 82080 },	-- Stalker Ogka
						["coord"] = { 82.5, 43.9, DRAENOR_NAGRAND },
						["races"] = HORDE_ONLY,
						["sourceQuest"] = 34899,	-- A Choice to Make
					}),
					q(35084, {	-- Silence the Call
						["provider"] = {"o",233263},	-- Shamanstone
						["sourceQuests"] = {
							35372,	-- The Call of Oshu'gun (alliance)
							35232,	-- The Call of Oshu'gun (horde)
						},
						["coords"] = {
							{ 55.4, 55.9, DRAENOR_NAGRAND },
							{ 51.8, 58.8, DRAENOR_NAGRAND },
							{ 46.8, 57.5, DRAENOR_NAGRAND },
							{ 52.0, 68.8, DRAENOR_NAGRAND },
						},
						["g"] = {
							i(114889),	-- Kuhlrath's Cursed Totem
							i(114886),	-- Twisted Elemental Focus
							i(114891),	-- Void-Touched Totem
						},
					}),
					q(35067, {	-- Silence the War Machines
						["provider"] = { "n", 81097 },	-- Lieutenant K. K. Lee
						["coord"] = { 55.4, 42.0, DRAENOR_NAGRAND },
						["races"] = ALLIANCE_ONLY,
						["sourceQuest"] = 35060,	-- Terms of Surrender
					}),
					q(35099, {	-- Silence the War Machines
						["provider"] = { "n", 81194 },	-- Senior Sergeant Igerdes
						["coord"] = { 55.4, 42.0, DRAENOR_NAGRAND },
						["races"] = HORDE_ONLY,
						["sourceQuest"] = 35096,	-- Terms of Surrender
					}),
					q(35356, {	-- Someone's Missing Arrow
						["races"] = ALLIANCE_ONLY,
						["provider"] = {"i",113107},	-- Rangari Arrow
					}),
					q(35377, {	-- Someone's Missing Axe
						["races"] = HORDE_ONLY,
						["provider"] = { "i", 113109 },	-- Frostwolf Axe
					}),
					q(35393, {	-- Spiritual Matters
						["provider"] = { "n", 82179 },	-- Vindicator Nobundo
						["coord"] = { 55.5, 55.9, DRAENOR_NAGRAND },
						["races"] = ALLIANCE_ONLY,
						["sourceQuest"] = 35372,	-- The Call of Oshu'gun
					}),
					q(35231, {	-- Spiritual Matters
						["provider"] = { "n", 81335 },	-- Farseer Drek'Thar
						["coord"] = { 55.5, 55.9, DRAENOR_NAGRAND },
						["races"] = HORDE_ONLY,
						["sourceQuest"] = 35232,	-- The Call of Oshu'gun
					}),
					q(34914, {	-- Target of Opportunity: Telaar
						["provider"] = { "n", 81189 },	-- Aggra
						["coord"] = { 82.8, 45.0, DRAENOR_NAGRAND },
						["races"] = HORDE_ONLY,
						["sourceQuest"] = 34899,	-- A Choice to Make
						["isBreadcrumb"] = true,
					}),
					q(34869, {	-- Tastes Like Chicken
						["provider"] = { "n", 81955 },	-- Digrem Orebar
						["coord"] = { 79.2, 52.6, DRAENOR_NAGRAND },
						["sourceQuests"] = {
							34769,	-- A Choice to Make (alliance)
							34899,	-- A Choice to Make (horde)
						},
					}),
					q(35060, {	-- Terms of Surrender
						["provider"] = { "n", 81039 },	-- Vindicator Yrel
						["coord"] = { 61.9, 40.5, DRAENOR_NAGRAND },
						["races"] = ALLIANCE_ONLY,
						["sourceQuests"] = {
							34769,	-- A Choice to Make (alliance)
							35059,	-- Along the Riverside
						},
					}),
					q(35096, {	-- Terms of Surrender
						["provider"] = { "n", 81186 },	-- Durotan
						["coord"] = { 48.5, 48.2, DRAENOR_NAGRAND },
						["races"] = HORDE_ONLY,
						["sourceQuests"] = {
							34899,	-- A Choice to Make (horde)
							35095,	-- Along the Riverside
						},
					}),
					q(35069, {	-- Terror of Nagrand
						["provider"] = { "n", 81134 },	-- Fallen Alliance Solder
						["coord"] = { 56.1, 43.7, DRAENOR_NAGRAND },
						["races"] = ALLIANCE_ONLY,
						["sourceQuest"] = 35060,	-- Terms of Surrender
					}),
					q(35101, {	-- Terror of Nagrand
						["provider"] = { "n", 81195 },	-- Fallen Horde Soldier
						["coord"] = { 56.1, 43.7, DRAENOR_NAGRAND },
						["races"] = HORDE_ONLY,
						["sourceQuest"] = 35096,	-- Terms of Surrender
					}),
					q(35140, {	-- THAELIN!
						["provider"] = { "n", 81039 },	-- Vindicator Yrel
						["coord"] = { 61.9, 40.5, DRAENOR_NAGRAND },
						["races"] = ALLIANCE_ONLY,
						["sourceQuest"] = 35061,	-- The Pride of Lok-rath
					}),
					q(35337, {	-- That Pounding Sound
						["provider"] = { "n", 82092 },	-- Kia Herman
						["coord"] = { 63.5, 61.4, DRAENOR_NAGRAND },
						["races"] = ALLIANCE_ONLY,
						["sourceQuest"] = 34769,	-- A Choice to Make
						["g"] = {
							i(118137),	-- Plainshunter Blackjack
							i(118135),	-- Plainshunter Claws
							i(118136),	-- Plainshunter Dagger
							i(118187),	-- Plainshunter Dowsing Rod
							i(118188),	-- Plainshunter Shademaker
							i(118189),	-- Plainshunter Sunbarrier
						},
					}),
					q(35374, {	-- That Pounding Sound
						["provider"] = { "n", 82078 },	-- Shadow Hunter Taz
						["coord"] = { 82.5, 43.9, DRAENOR_NAGRAND },
						["races"] = HORDE_ONLY,
						["sourceQuest"] = 34899,	-- A Choice to Make
						["g"] = {
							i(118137),	-- Plainshunter Blackjack
							i(118135),	-- Plainshunter Claws
							i(118136),	-- Plainshunter Dagger
							i(118187),	-- Plainshunter Dowsing Rod
							i(118188),	-- Plainshunter Shademaker
							i(118189),	-- Plainshunter Sunbarrier
						},
					}),
					q(34954, {	-- The Blade Itself
						["provider"] = { "n", 80161 },	-- Lantresor of the Blade
						["coord"] = { 85.4, 54.6, DRAENOR_NAGRAND },
						["races"] = ALLIANCE_ONLY,
						["sourceQuest"] = 34951,	-- They Call Him Lantresor of the Blade
					}),
					q(34849, {	-- The Blade Itself
						["provider"] = { "n", 80161 },	-- Lantresor of the Blade
						["coord"] = { 85.4, 54.5, DRAENOR_NAGRAND },
						["races"] = HORDE_ONLY,
						["sourceQuest"] = 34818,	-- They Call Him Lantresor of the Blade
					}),
					q(34916, {	-- The Blessing of Samedi
						["provider"] = { "n", 80429 },	-- Shadow Hunter Kajassa
						["coord"] = { 68.5, 64.5, DRAENOR_NAGRAND },
						["races"] = HORDE_ONLY,
						["g"] = {
							i(114687),	-- Beastrider Gloves
							i(114688),	-- Plainsthunder Gauntlets
							i(114690),	-- Stormsteppe Gauntlets
							i(114689),	-- Windshaper Gloves
						},
					}),
					q(37286, {	-- The Bloodshed Never Ends
						["provider"] = { "n", 87311 },	-- Kharg
						["coord"] = { 33.0, 38.4, DRAENOR_NAGRAND },
						["description"] = "Must have the |cFFFFD700Gladiator's Sanctum|r in your garrison.",
						["isWeekly"] = true,
					}),
					q(35372, {	-- The Call of Oshu'gun
						["provider"] = { "n", 82138 },	-- Vindicator Nobundo
						["coord"] = { 71.7, 19.6, DRAENOR_NAGRAND },
						["races"] = ALLIANCE_ONLY,
						["sourceQuest"] = 35330,	-- The Ritual of Binding
					}),
					q(35232, {	-- The Call of Oshu'gun
						["provider"] = { "n", 80597 },	-- Farseer Drek'Thar
						["coord"] = { 71.7, 19.6, DRAENOR_NAGRAND },
						["races"] = HORDE_ONLY,
						["sourceQuest"] = 35265,	-- The Ritual of Binding
					}),
					q(35396, {	-- The Dark Heart of Oshu'gun
						["provider"] = { "n", 82181 },	-- Vindicator Nobundo
						["coord"] = { 46.0, 32.7, 553 },
						["races"] = ALLIANCE_ONLY,
						["sourceQuests"] = {
							35398,	-- Dark Binding
							35397,	-- The Pale Threat
						},
						["g"] = {
							i(118126),	-- Void-Warped Oshu'gun Crossbow
							i(118127),	-- Void-Warped Oshu'gun Dagger
							i(118125),	-- Void-Warped Oshu'gun Greatmaul
							i(118128),	-- Void-Warped Oshu'gun Mace
							i(118131),	-- Void-Warped Oshu'gun Mallet
							i(118124),	-- Void-Warped Oshu'gun Shortsword
							i(118130),	-- Void-Warped Oshu'gun Spellstaff
							i(118129),	-- Void-Warped Oshu'gun Staff
						},
					}),
					q(35317, {	-- The Dark Heart of Oshu'gun
						["provider"] = { "n", 81953 },	-- Farseer Drek'Thar
						["coord"] = { 46.0, 32.7, DRAENOR_NAGRAND },
						["races"] = HORDE_ONLY,
						["sourceQuests"] = {
							35144,	-- Dark Binding
							35145,	-- The Pale Threat
						},
						["g"] = {
							i(118126),	-- Void-Warped Oshu'gun Crossbow
							i(118127),	-- Void-Warped Oshu'gun Dagger
							i(118125),	-- Void-Warped Oshu'gun Greatmaul
							i(118128),	-- Void-Warped Oshu'gun Mace
							i(118131),	-- Void-Warped Oshu'gun Mallet
							i(118124),	-- Void-Warped Oshu'gun Shortsword
							i(118130),	-- Void-Warped Oshu'gun Spellstaff
							i(118129),	-- Void-Warped Oshu'gun Staff
						},
					}),
					q(37318, {	-- The Dead Do Not Forget...
						["provider"] = { "n", 88500 },	-- Murgok
						["coord"] = { 79.4, 30.2, DRAENOR_NAGRAND },
					}),
					q(34941, {	-- The Debt We Share
						["provider"] = { "n", 80434 },	-- Gar'rok
						["coord"] = { 75.0, 22.7, DRAENOR_NAGRAND },
						["sourceQuest"] = 34932,	-- Guise of the Deceiver
						["g"] = {
							i(114885),	-- Gar'rok's Patchwork Cloak
							i(119052),	-- Gar'rok's Roadworn Cloak
							i(114883),	-- Gar'rok's Sun-Faded Cloak
							i(119057),	-- Gar'rok's Sunshade Cloak
							i(114884),	-- Gar'rok's Weathered Cloak
						},
					}),
					q(34964, {	-- The Farseer Awaits
						["provider"] = { "n", 80003 },	-- Thrall
						["coord"] = { 82.8, 45.0, DRAENOR_NAGRAND },
						["races"] = HORDE_ONLY,
						["sourceQuest"] = 34918,	-- Shields Down!
						["isBreadcrumb"] = true,
					}),
					q(35395, {	-- The Fate of Gordawg
						["provider"] = { "n", 82181 },	-- Vindicator Nobundo
						["coord"] = { 46.0, 32.7, 553 },
						["races"] = ALLIANCE_ONLY,
						["sourceQuests"] = {
							35398,	-- Dark Binding
							35397,	-- The Pale Threat
						},
					}),
					q(34271, {	-- The Fate of Gordawg
						["provider"] = { "n", 81953 },	-- Farseer Drek'Thar
						["coord"] = { 46.0, 32.7, DRAENOR_NAGRAND },
						["races"] = HORDE_ONLY,
						["sourceQuests"] = {
							35144,	-- Dark Binding
							35145,	-- The Pale Threat
						},
					}),
					q(34952, {	-- The Friend o' My Enemy
						["provider"] = { "n", 79954 },	-- Hansel Heavyhands
						["coord"] = { 63.5, 61.8, DRAENOR_NAGRAND },
						["races"] = ALLIANCE_ONLY,
						["description"] = "This quest is only available if you do not accept |cFFFFD700Blood of the Burning Blade|r from Lantresor of the Blade.",
						["sourceQuest"] = 34769,	-- A Choice to Make
						["altQuests"] = { 34953 },	-- Blood of the Burning Blade
					}),
					q(34826, {	-- The Friend of My Enemy
						["provider"] = { "n", 80003 },	-- Thrall
						["coord"] = { 82.8, 45.0, DRAENOR_NAGRAND },
						["races"] = HORDE_ONLY,
						["altQuests"] = { 35143 },	-- Blood of the Burning Blade
						["sourceQuest"] = 34808,	-- More Lazy Peons
						["description"] = "This quest is only available if you do not accept |cFFFFD700Blood of the Burning Blade|r from Lantresor of the Blade.",
					}),
					q(35146, {	-- The Good Doctor
						["provider"] = { "n", 84632 },	-- Marybelle Walsh
						["coord"] = { 77.4, 47.3, DRAENOR_NAGRAND },
					}),
					q(34747, {	-- The Honor of a Blademaster
						["provider"] = { "n", 81790 },	-- Lantresor of the Blade
						["coord"] = { 64.2, 59.6, DRAENOR_NAGRAND },
						["races"] = ALLIANCE_ONLY,
						["sourceQuest"] = 34957,	-- Challenge of the Masters
						["g"] = {
							follower(157),	-- Lantresor of the Blade
						},
					}),
					q(34770, {	-- The Honor of a Blademaster
						["provider"] = { "n", 81790 },	-- Lantresor of the Blade
						["coord"] = { 82.6, 46.7, DRAENOR_NAGRAND },
						["races"] = HORDE_ONLY,
						["sourceQuest"] = 34868,	-- Challenge of the Masters
						["g"] = {
							follower(157),	-- Lantresor of the Blade
						},
					}),
					q(34675, {	-- The Might of the Warsong
						["provider"] = { "n", 79263 },	-- Lieutenant Balfor
						["coord"] = { 86.3, 66.1, DRAENOR_NAGRAND },
						["races"] = ALLIANCE_ONLY,
						["sourceQuests"] = {
							34674,	-- Taking the Fight to Nagrand
							37184,	-- Taking the Fight to Nagrand
							-- #if AFTER 7.3.5
							49567,	-- Hero's Call: Nagrand! (Draenor)
							-- #endif
						},
					}),
					q(34795, {	-- The Might of the Warsong
						["provider"] = { "n", 80001 },	-- Stone Guard Brox
						["coord"] = { 86.3, 66.1, DRAENOR_NAGRAND },
						["races"] = HORDE_ONLY,
						["sourceQuests"] = {
							34794,	-- Taking the Fight to Nagrand
							36952,	-- Taking the Fight to Nagrand
							-- #if AFTER 7.3.5
							49549,	-- Warchief's Command: Nagrand! (Draenor)
							-- #endif
						},
					}),
					q(34598, {	-- The Missing Caravan
						["provider"] = { "n", 79310 },	-- Pyxni Pennypocket
						["coord"] = { 78.5, 48.5, DRAENOR_NAGRAND },
						["sourceQuests"] = {
							34769,	-- A Choice to Make (alliance)
							34899,	-- A Choice to Make (horde)
						},
					}),
					q(35087, {	-- The Nether Approaches
						["provider"] = {"o",233263},	-- Shamanstone
						["coords"] = {
							{ 55.4, 55.9, DRAENOR_NAGRAND },
							{ 51.8, 58.8, DRAENOR_NAGRAND },
							{ 46.8, 57.5, DRAENOR_NAGRAND },
							{ 52.0, 68.8, DRAENOR_NAGRAND },
						},
						["sourceQuest"] = 35085,	-- Through the Nether
					}),
					q(34718, {	-- The Others
						["provider"] = { "n", 79743 },	-- Vindicator Mo'mor
						["coord"] = { 66.7, 68.6, DRAENOR_NAGRAND },
						["races"] = ALLIANCE_ONLY,
						["sourceQuest"] = 34716,	-- Mo'mor Might Know
					}),
					q(35397, {	-- The Pale Threat
						["provider"] = { "n", 82179 },	-- Vindicator Nobundo
						["coord"] = { 55.5, 55.9, DRAENOR_NAGRAND },
						["races"] = ALLIANCE_ONLY,
						["sourceQuest"] = 35372,	-- The Call of Oshu'gun
					}),
					q(35145, {	-- The Pale Threat
						["provider"] = { "n", 81335 },	-- Farseer Drek'Thar
						["coord"] = { 55.5, 55.9, DRAENOR_NAGRAND },
						["races"] = HORDE_ONLY,
						["sourceQuest"] = 35232,	-- The Call of Oshu'gun
					}),
					q(35061, {	-- The Pride of Lok-rath
						["provider"] = { "n", 81086 },	-- Uruk Foecleaver
						["coord"] = { 55.5, 42.0, DRAENOR_NAGRAND },
						["races"] = ALLIANCE_ONLY,
						["sourceQuest"] = 35060,	-- Terms of Surrender
						["g"] = {
							i(118142),	-- Beastrider Belt
							i(118139),	-- Plainsthunder Waistguard
							i(118141),	-- Stormsteppe Chain Belt
							i(118140),	-- Windshaper Waistwrap
						},
					}),
					q(35097, {	-- The Pride of Lok-rath
						["provider"] = { "n", 81086 },	-- Uruk Foecleaver
						["coord"] = { 55.5, 42.0, DRAENOR_NAGRAND },
						["races"] = HORDE_ONLY,
						["sourceQuest"] = 35096,	-- Terms of Surrender
						["g"] = {
							i(118142),	-- Beastrider Belt
							i(118139),	-- Plainsthunder Waistguard
							i(118141),	-- Stormsteppe Chain Belt
							i(118140),	-- Windshaper Waistwrap
						},
					}),
					q(35330, {	-- The Ritual of Binding
						["provider"] = { "n", 82138 },	-- Vindicator Nobundo
						["coord"] = { 71.7, 19.6, DRAENOR_NAGRAND },
						["races"] = ALLIANCE_ONLY,
						["sourceQuests"] = {
							35333,	-- Elemental Attunement
							34881,	-- Earth, Wind and Fire... and Water
							34893,	-- Guardians of the Plateau
							34941,	-- The Debt We Share
						},
						["g"] = {
							i(114682),	-- Beastrider Vest
							i(114680),	-- Plainsthunder Chestplate
							i(114681),	-- Stormsteppe Vest
							i(114699),	-- Windshaper Robe
						},
					}),
					q(35265, {	-- The Ritual of Binding
						["provider"] = { "n", 80597 },	-- Farseer Drek'Thar
						["coord"] = { 71.7, 19.6, DRAENOR_NAGRAND },
						["races"] = HORDE_ONLY,
						["sourceQuests"] = {
							34891,	-- Elemental Attunement
							34881,	-- Earth, Wind and Fire... and Water
							34893,	-- Guardians of the Plateau
							34941,	-- The Debt We Share
						},
						["g"] = {
							i(114682),	-- Beastrider Vest
							i(114680),	-- Plainsthunder Chestplate
							i(114681),	-- Stormsteppe Vest
							i(114699),	-- Windshaper Robe
						},
					}),
					q(36275, {	-- The Search For Research
						["provider"] = { "n", 84861 },	-- A Fascinating Fungus
						["coord"] = { 86.6, 28.3, DRAENOR_NAGRAND },
						["sourceQuest"] = 35146,	-- The Good Doctor
						["g"] = {
							i(116830),	-- Researcher's Ring
							i(119063),	-- Sporebat Glowpod Ring
							i(119071),	-- Sporebat Glowtail Loop
							i(116829),	-- Sporebat Sporepod Ring
							i(116831),	-- Sporebat Tooth Ring
						},
					}),
					q(35088, {	-- The Shadow of the Void
						["provider"] = {"o",233263},	-- Shamanstone
						["coords"] = {
							{ 55.4, 55.9, DRAENOR_NAGRAND },
							{ 51.8, 58.8, DRAENOR_NAGRAND },
							{ 46.8, 57.5, DRAENOR_NAGRAND },
							{ 52.0, 68.8, DRAENOR_NAGRAND },
						},
						["sourceQuests"] = {
							35087,	-- The Nether Approaches
							35086,	-- The Void March
						},
						["g"] = {
							i(118143),	-- Beastrider Gauntlets
							i(118144),	-- Plainsthunder Handguards
							i(118146),	-- Stormsteppe Grips
							i(118145),	-- Windshaper Gauntlets
						},
					}),
					q(35086, {	-- The Void March
						["provider"] = {"o",233263},	-- Shamanstone
						["coords"] = {
							{ 55.4, 55.9, DRAENOR_NAGRAND },
							{ 51.8, 58.8, DRAENOR_NAGRAND },
							{ 46.8, 57.5, DRAENOR_NAGRAND },
							{ 52.0, 68.8, DRAENOR_NAGRAND },
						},
						["sourceQuest"] = 35085,	-- Through the Nether
					}),
					q(35271, {	-- The Warsong Threat
						["coord"] = { 51.8, 62.0, DRAENOR_NAGRAND },
						["races"] = HORDE_ONLY,
						["provider"] = {"o",232024},	-- Warsong Attack Plans
					}),
					q(35386, {	-- The Warsong Threat
						["coord"] = { 51.8, 62.0, DRAENOR_NAGRAND },
						["races"] = ALLIANCE_ONLY,
						["provider"] = {"o",232024},	-- Warsong Attack Plans
					}),
					q(37981, {	-- The World Famous Ring of Blood!
						["description"] = "The item that starts this quest has a chance to drop from any of the daily bounties offered in your garrison (Renzik 'The Shiv' for Alliance and Shadow Hunter Ty'jin for Horde).\n\nThe item isn't looted, but will pop directly into your inventory when the quest mob dies.  If it doesn't drop the first time, you can camp the mob for more chances.  You'll get a total of three invitations, which you can sell or trade.\n",
						["provider"] = { "i", 122190 },	-- Ring of Blood Invitation
					}),
					q(34951, {	-- They Call Him Lantresor of the Blade
						["provider"] = { "n", 80624 },	-- Vindicator Mo'mor
						["coord"] = { 63.4, 61.8, DRAENOR_NAGRAND },
						["races"] = ALLIANCE_ONLY,
						["sourceQuest"] = 34769,	-- A Choice to Make
					}),
					q(34818, {	-- They Call Him Lantresor of the Blade
						["provider"] = { "n", 80140 },	-- Foreman Thazz'ril
						["coord"] = { 82.9, 44.1, DRAENOR_NAGRAND },
						["races"] = HORDE_ONLY,
						["sourceQuest"] = 34808,	-- More Lazy Peons
					}),
					q(34514, {	-- They've Got The Goods!
						["provider"] = { "n", 79312 },	-- Greezlex Fizzpinch
						["coord"] = { 78.9, 58.8, DRAENOR_NAGRAND },
						["sourceQuest"] = 34598,	-- The Missing Caravan
					}),
					q(35085, {	-- Through the Nether
						["provider"] = {"o",233263},	-- Shamanstone
						["coords"] = {
							{ 55.4, 55.9, DRAENOR_NAGRAND },
							{ 51.8, 58.8, DRAENOR_NAGRAND },
							{ 46.8, 57.5, DRAENOR_NAGRAND },
							{ 52.0, 68.8, DRAENOR_NAGRAND },
						},
						["sourceQuests"] = {
							35083,	-- Disrupt the Rituals
							35084,	-- Silence the Call
						},
					}),
					q(35148, {	-- Trouble at the Overwatch
						["provider"] = { "n", 79954 },	-- Hansel Heavyhands
						["coord"] = { 63.5, 61.8, DRAENOR_NAGRAND },
						["races"] = ALLIANCE_ONLY,
						["sourceQuest"] = 34769,	-- A Choice to Make
						["isBreadcrumb"] = true,
					}),
					q(35150, {	-- Trouble at the Overwatch
						["provider"] = { "n", 81319 },	-- Draka
						["coord"] = { 82.8, 45.0, DRAENOR_NAGRAND },
						["races"] = HORDE_ONLY,
						["sourceQuest"] = 34899,	-- A Choice to Make
						["isBreadcrumb"] = true,
					}),
					q(34678, {	-- Up and Running
						["provider"] = { "n", 79576 },	-- Rangari D'kaan
						["coord"] = { 63.5, 61.8, DRAENOR_NAGRAND },
						["races"] = ALLIANCE_ONLY,
						["sourceQuest"] = 34675,	-- The Might of the Warsong
					}),
					q(34513, {	-- WANTED: Razorpaw!
						["coord"] = { 78.9, 58.9, DRAENOR_NAGRAND },
						["sourceQuests"] = {
							34769,	-- A Choice to Make (alliance)
							34899,	-- A Choice to Make (horde)
						},
						["provider"] = {"o",230303},	-- Bounty Board
					}),
					warchiefscommand(q(49549, {	-- Warchief's Command: Nagrand! (Draenor)
						["timeline"] = { ADDED_7_3_5 },
						["races"] = HORDE_ONLY,
						["isBreadcrumb"] = true,
					})),
					q(36273, {	-- Whacking Weeds
						["provider"] = { "n", 84632 },	-- Marybelle Walsh
						["coord"] = { 77.4, 47.3, DRAENOR_NAGRAND },
					}),
					n(BONUS_OBJECTIVES, {
						-- TODO: Check SQ
						q(37629, {	-- Assault on Mok'gol Watchpost (A)
							["coord"] = { 44.0, 36.0, DRAENOR_NAGRAND },
							["races"] = ALLIANCE_ONLY,
						}),
						q(37630, {	-- Assault on Mok'gol Watchpost (H)
							["coord"] = { 44.0, 36.0, DRAENOR_NAGRAND },
							["races"] = HORDE_ONLY,
						}),
						q(36818, {	-- Assault on Mok'gol Watchpost (A)
							["coord"] = { 44.0, 36.0, DRAENOR_NAGRAND },
							["races"] = ALLIANCE_ONLY,
							["isRepeatable"] = true,
						}),
						q(36819, {	-- Assault on Mok'gol Watchpost (H)
							["coord"] = { 44.0, 36.0, DRAENOR_NAGRAND },
							["races"] = HORDE_ONLY,
							["isRepeatable"] = true,
						}),
						q(37627, {	-- Assault on the Broken Precipice (A)
							["coord"] = { 39.0, 18.0, DRAENOR_NAGRAND },
							["races"] = ALLIANCE_ONLY,
						}),
						q(37628, {	-- Assault on the Broken Precipice (H)
							["coord"] = { 39.0, 18.0, DRAENOR_NAGRAND },
							["races"] = HORDE_ONLY,
						}),
						q(36816, {	-- Assault on the Broken Precipice (A)
							["coord"] = { 39.0, 18.0, DRAENOR_NAGRAND },
							["races"] = ALLIANCE_ONLY,
							["isRepeatable"] = true,
						}),
						q(36817, {	-- Assault on the Broken Precipice (H)
							["coord"] = { 39.0, 18.0, DRAENOR_NAGRAND },
							["races"] = HORDE_ONLY,
							["isRepeatable"] = true,
						}),
						q(36820, {	-- Assault on the Gorian Proving Grounds (A)
							["coord"] = { 57.0, 17.0, DRAENOR_NAGRAND },
							["races"] = ALLIANCE_ONLY,
						}),
						q(36821, {	-- Assault on the Gorian Proving Grounds (H)
							["coord"] = { 57.0, 17.0, DRAENOR_NAGRAND },
							["races"] = HORDE_ONLY,
						}),
						q(35379, {	-- Hemet's Happy Hunting Grounds
							["coord"] = { 87.7, 46.8, DRAENOR_NAGRAND },
						}),
						q(34723, {	-- Ironfist Harbor
							["coord"] = { 40.0, 74.4, DRAENOR_NAGRAND },
						}),
						q(37280, {	-- Snarlpaw Ledge
							["coord"] = { 79.1, 29.0, DRAENOR_NAGRAND },
						}),
					}),
				}),
				n(RARES, {
					-- Coords have been confirmed on rares except for Luk'hok, Nakk, and a few noted long spawns.
					n(82899, {	-- Ancient Blademaster
						["questID"] = 35778,
						["coord"] = { 84.6, 53.6, DRAENOR_NAGRAND },
						["g"] = {
							i(116832),	-- Blademaster's Honor
						},
					}),
					n(82826, {	-- Berserk T-300 Series Mark II
						["questID"] = 35735,
						["isDaily"] = true,
						["coord"] = { 76.9, 64.3, DRAENOR_NAGRAND },
						["description"] = "Use the plunger next to the cave.",
						["g"] = {
							i(116823),	-- Katealystic Konverter
						},
					}),
					n(87837, {	-- Bonebreaker
						["questID"] = 37396,
						["isDaily"] = true,
						["coords"] = {
							{ 39.2, 15.8, DRAENOR_NAGRAND },
							{ 39.8, 13.2, DRAENOR_NAGRAND },
						},
						["lvl"] = 100,
						["g"] = {
							i(119370),	-- Rattlekilt
						},
					}),
					n(87234, {	-- Brutag Grimblade
						["questID"] = 37400,
						["isDaily"] = true,
						["coord"] = { 43.2, 36.3, DRAENOR_NAGRAND },
						["lvl"] = 100,
						["g"] = {
							i(119380),	-- Brutag's Iron Toe Boots
						},
					}),
					n(79725, {	-- Captain Ironbeard
						["questID"] = 34727,
						["coord"] = { 34.6, 77.0, DRAENOR_NAGRAND },
						["isDaily"] = true,
						["g"] = {
							i(118244),	-- Iron Buccaneer's Hat (TOY!)
							i(116809),	-- Ironbeard's Blunderbuss
						},
					}),
					n(87788, {	-- Durg Spinecrusher
						["questID"] = 37395,
						["isDaily"] = true,
						["coords"] = {	-- patrols in a circle
							{ 38.8, 23.0, DRAENOR_NAGRAND },
							{ 35.6, 20.6, DRAENOR_NAGRAND },
						},
						["lvl"] = 100,
						["g"] = {
							i(119405),	-- Durg's Heavy Maul
						},
					}),
					n(82486, {	-- Explorer Nozzand
						["questID"] = 35623,
						["coord"] = { 89.0, 41.0, DRAENOR_NAGRAND },
						["g"] = {
							currency(824),	-- Garrison Resources
						},
					}),
					n(82975, {	-- Fangler
						["questID"] = 35836,
						["coord"] = { 75.3, 10.9, DRAENOR_NAGRAND },
						["description"] = "Use the |cFFFFD700Abandoned Fishing Rod|r.",
						["g"] = {
							currency(824),	-- Garrison Resources
						},
					}),
					n(83483, {	-- Flinthide
						["questID"] = 35893,
						["coord"] = { 69.6, 42.0, DRAENOR_NAGRAND },
						["g"] = {
							i(116807),	-- Flinthide's Impenetrable Crest
						},
					}),
					n(82764, {	-- Gar'lua <The Wolfmother>
						["questID"] = 35715,
						["coord"] = { 52.4, 55.7, DRAENOR_NAGRAND },
						["crs"] = {
							82766,	-- Jo'kar
							83548,	-- Thaif
						},
						["g"] = {
							i(118246),	-- Call of the Wolfmother
						},
					}),
					n(80122, {	-- Gaz'orda
						["questID"] = 34725,
						["coord"] = { 42.1, 78.8, DRAENOR_NAGRAND },	-- cave
						["g"] = {
							i(116798),	-- Gaz'orda's Grim Gaze
						},
					}),
					n(82778, {	-- Gnarlhoof the Rabid
						["questID"] = 35717,
						["coord"] = { 66.6, 56.3, DRAENOR_NAGRAND },
						["g"] = {
							i(116824),	-- Rabid Talbuk Horn
						},
					}),
					n(83509, {	-- Gorepetal
						["questID"] = 35898,
						["isDaily"] = true,
						["coord"] = { 93.2, 28.2, DRAENOR_NAGRAND },
						["g"] = {
							i(116916),	-- Gorepetal's Gentle Grasp
						},
					}),
					n(87344, {	-- Gortag Steelgrip
						["description"] = "Kill Mok'gol Pack Leaders to get the Secret Meeting Details, and then blow the Signal Horn at 42.1, 36.84 to summon Gortag and Krahl.",
						["questID"] = 37472,
						["isDaily"] = true,
						["coord"] = { 42.6, 36.2, DRAENOR_NAGRAND },
						["lvl"] = 100,
						["g"] = {
							crit(26143, {	-- Gortag Steelgrip
								["achievementID"] = 9541,	-- The Song of Silence
							}),
						},
					}),
					n(84263, {	-- Graveltooth
						["description"] = "Kill about 15 goren in the area to draw out Graveltooth.  He will yell 3 times before appearing.",
						["questID"] = 36159,
						["coord"] = { 84.0, 36.8, DRAENOR_NAGRAND },
						["g"] = {
							i(118689),	-- Graveltooth's Manacles
						},
					}),
					n(82758, {	-- Greatfeather
						["questID"] = 35714,
						["coord"] = { 66.8, 51.2, DRAENOR_NAGRAND },
						["g"] = {
							i(116795),	-- Greatfeather's Down Robe
						},
					}),
					n(82912, {	-- Grizzlemaw
						["questID"] = 35784,
						["coord"] = { 89.4, 72.6, DRAENOR_NAGRAND },
						["g"] = {
							i(118687),	-- Grizzled Wolfskin Cloak
						},
					}),
					n(98200, bubbleDownSelf({ ["timeline"] = { ADDED_6_2_2 } }, {	-- Guk
						["questID"] = 40074,
						["isDaily"] = true,
						["coord"] = { 23.7, 38.5, DRAENOR_NAGRAND },
						["lvl"] = 100,
						["g"] = {
							i(129218),	-- Empyreal Manafiend (PET!)
						},
					})),
					n(83603, {	-- Hunter Blacktooth
						["questID"] = 35923,
						["coord"] = { 80.6, 30.6, DRAENOR_NAGRAND },
						["g"] = {
							i(118245),	-- Hunter Blacktooth's Ribcruncher
						},
					}),
					n(78161, {	-- Hyperious
						["questID"] = 34862,
						["coord"] = { 87.0, 55.0, DRAENOR_NAGRAND },
						["description"] = "Use the 3 braziers around the pit to summon him.",
						["g"] = {
							i(116799),	-- Smoldering Heart of Hyperious
						},
					}),
					n(86959, {	-- Karosh Blackwind
						["questID"] = 37399,
						["isDaily"] = true,
						["coord"] = { 45.8, 34.8, DRAENOR_NAGRAND },
						["lvl"] = 100,
						["g"] = {
							i(119355),	-- Leggings of Howling Winds
						},
					}),
					n(87239, {	-- Krahl Deadeye
						["description"] = "Kill Mok'gol Pack Leaders to get the Secret Meeting Details, and then blow the Signal Horn at 42.1, 36.8 to summon Gortag and Krahl.",
						["questID"] = 37473,
						["isDaily"] = true,
						["coord"] = { 42.6, 36.2, DRAENOR_NAGRAND },
						["lvl"] = 100,
					}),
					n(88210, {	-- Krud the Eviscerator
						["description"] = "Kill 15 mobs near him to make him attackable.",
						["questID"] = 37398,
						["isDaily"] = true,
						["coord"] = { 58.2, 12.0, DRAENOR_NAGRAND },
						["g"] = {
							i(119384),	-- Krud's Girthy Girdle
						},
					}),
					n(80370, {	-- Lernaea
						["questID"] = 37408,
						["coord"] = { 52.0, 89.8, DRAENOR_NAGRAND },
						["isDaily"] = true,
					}),
					n(50981, {	-- Luk'hok
						["description"] = "Luk'hok has a respawn timer between 12-28 hours. Mount drop rate is 100% for all participants.",
						["coords"] = {	-- **Coords unconfirmed, relied on wowhead**
							{ 84.6, 64.0, DRAENOR_NAGRAND },
							{ 79.6, 56.6, DRAENOR_NAGRAND },
							{ 72.8, 53.4, DRAENOR_NAGRAND },
							{ 67.6, 42.6, DRAENOR_NAGRAND },
							{ 76.0, 30.6, DRAENOR_NAGRAND },
						},
						["g"] = {
							i(116661),		-- Mottled Meadowstomper (MOUNT!)
						},
					}),
					n(83643, {	-- Malroc Stonesunder
						["questID"] = 35932,
						["coord"] = { 81.2, 60.0, DRAENOR_NAGRAND },
						["g"] = {
							i(116796),	-- Malroc's Staff of Command
						},
					}),
					n(84435, {	-- Mr. Pinchy Sr.
						["questID"] = 36229,
						["coord"] = { 45.6, 15.2, DRAENOR_NAGRAND },
						["g"] = {
							i(118690),	-- Empty Crawdad Trap
						},
					}),
					n(50990, {	-- Nakk the Thunderer
						["description"] = "Nakk the Thunderer has a respawn timer between 12-28 hours. Mount drop rate is 100% for all participants.",
						["coords"] = {
							{ 62.8, 15.8, DRAENOR_NAGRAND },
							{ 65.0, 20.2, DRAENOR_NAGRAND },
							{ 60.8, 31.8, DRAENOR_NAGRAND },
							{ 55.8, 35.2, DRAENOR_NAGRAND },
							{ 50.2, 34.8, DRAENOR_NAGRAND },
						},
						["g"] = {
							i(116659),		-- Bloodhoof Bull (MOUNT!)
						},
					}),
					n(83401, {	-- Netherspawn
						["questID"] = 35865,
						["coord"] = { 47.6, 70.39, DRAENOR_NAGRAND },
						["g"] = {
							i(116815),	-- Netherspawn, Spawn of Netherspawn (PET!)
						},
					}),
					n(83409, {	-- Ophiis
						["questID"] = 35875,
						["coords"] = {
							{ 39.0, 50.0, DRAENOR_NAGRAND },
							{ 42.0, 50.2, DRAENOR_NAGRAND },
							{ 45.4, 47.4, DRAENOR_NAGRAND },
						},
						["g"] = {
							i(116765),	-- Positive Pantaloons
						},
					}),
					n(83680, {	-- Outrider Duretha
						["questID"] = 35943,
						["coord"] = { 61.8, 69.0, DRAENOR_NAGRAND },
						["g"] = {
							i(116800),	-- Duretha's Trail Boots
						},
					}),
					n(88208, {	-- Pit Beast
						["questID"] = 37637,
						["isDaily"] = true,
						["coord"] = { 58.2, 18.4, DRAENOR_NAGRAND },	-- **Coords unconfirmed, relied on wowhead**
						["g"] = {
							i(120317),	-- Pristine Hide of the Pit Beast
						},
					}),
					n(87846, {	-- Pit Slayer
						["description"] = "Must be on Assault on the Broken Precipice.  Click on blue crystals to transform into an ogre, and then click on the trophy in the middle of the pit.",
						["questID"] = 37397,
						["isDaily"] = true,
						["coord"] = { 39.6, 14.6, DRAENOR_NAGRAND },	-- **Coords unconfirmed, relied on wowhead**
						["lvl"] = 100,
						["g"] = {
							i(119389),	-- Pit-Slayer's Magmastone
						},
					}),
					n(98199, bubbleDownSelf({ ["timeline"] = { ADDED_6_2_2 } }, {	-- Pugg
						["questID"] = 40073,
						["isDaily"] = true,
						["coord"] = { 28.1, 29.6, DRAENOR_NAGRAND },
						["lvl"] = 100,
						["g"] = {
							i(129217),	-- Empowered Manafiend (PET!)
						},
					})),
					n(82755, {	-- Redclaw the Feral
						["questID"] = 35712,
						["coord"] = { 73.6, 57.8, DRAENOR_NAGRAND },
						["g"] = {
							i(118243),	-- Redclaw's Gutripper
						},
					}),
					n(83526, {	-- Ru'klaa
						["questID"] = 35900,
						["coord"] = { 58.0, 83.9, DRAENOR_NAGRAND },
						["g"] = {
							i(118688),	-- Carapace Shell Shoulders
						},
					}),
					n(98198, bubbleDownSelf({ ["timeline"] = { ADDED_6_2_2 } }, {	-- Rukdug
						["questID"] = 40075,
						["isDaily"] = true,
						["coord"] = { 25.9, 34.7, DRAENOR_NAGRAND },
						["lvl"] = 100,
						["g"] = {
							i(129216),	-- Energized Manafiend (PET!)
						},
					})),
					n(83634, {	-- Scout Pokhar
						["questID"] = 35931,
						["coord"] = { 54.8, 61.2, DRAENOR_NAGRAND },
						["g"] = {
							i(116797),	-- Pokhar's Eighth Axe
						},
					}),
					n(83542, {	-- Sean Whitesea
						["questID"] = 35912,
						["crs"] = { 83559 },	-- Highwayman
						["coord"] = { 60.9, 47.78, DRAENOR_NAGRAND },
						["description"] = "Spawns after abandoned chest is looted.",
						["g"] = {
							i(116834),	-- Whitesea's Waistwrap
						},
					}),
					n(80057, {	-- Soulfang
						["questID"] = 36128,
						["coord"] = { 75.6, 65.2, DRAENOR_NAGRAND },
						["g"] = {
							i(116806),	-- Soul Fang
						},
					}),
					n(83591, {	-- Tura'aka
						["questID"] = 35920,
						["coord"] = { 65.0, 39.2, DRAENOR_NAGRAND },
						["g"] = {
							i(116814),	-- Tura'aka's Clipped Wing
						},
					}),
					n(81330, {	-- Warleader Tome
						["description"] = "Spawns at Anguish Point and wanders the zone, moving clockwise.  Your best bet is to camp his spawnpoint.",
						["questID"] = 37546,
						["isDaily"] = true,
						["coord"] = { 81.3, 60.3, DRAENOR_NAGRAND },
						["g"] = {
							i(120276),	-- Outrider's Bridle Chain (TOY!)
						},
					}),
					n(79024, {	-- Warmaster Blugthol
						["questID"] = 34645,
						["coord"] = { 82.6, 76.2, DRAENOR_NAGRAND },
						["g"] = {
							i(116805),	-- Blug'thol's Bloody Bracers
						},
					}),
					n(83428, {	-- Windcaller Korast
						["questID"] = 35877,
						["coord"] = { 70.6, 29.6, DRAENOR_NAGRAND },
						["g"] = {
							i(116808),	-- Whirlwind's Harvest
						},
					}),
				}),
				n(TREASURES, {
					--[[
					Note: These objects have known flags to mark completion but they never seem to fire.
						The coords have been added to the "Abu'gar" quest instead.
					o(233157, {	-- Abu'gar's Vitality
						["questID"] = 35711,
						["coord"] = { 65.8, 61.1, DRAENOR_NAGRAND },
					}),
					o(233506, {	-- Abu'gar's Missing Reel
						["questID"] = 36089,
						["coord"] = { 85.4, 38.7, DRAENOR_NAGRAND },
					}),
					o(233642, {	-- Abu'Gar's Favorite Lure
						["questID"] = 36072,
						["coord"] = { 38.4, 49.3, DRAENOR_NAGRAND },
						["description"] = "Hidden behind some reeds by the bridge.",
					}),
					]]--
					o(233452, {	-- A Pile of Dirt
						["questID"] = 35951,
						["coord"] = { 73.1, 10.8, DRAENOR_NAGRAND },
						["g"] = {
							currency(824),	-- Garrison Resources
						},
					}),
					o(233206, {	-- Abandoned Cargo
						["questID"] = 35759,
						["coord"] = { 67.6, 59.8, DRAENOR_NAGRAND },
						["sym"] = COMMON_TREASURE_SYM,
					}),
					o(233650, {	-- Adventurer's Mace
						["questID"] = 36077,
						["coord"] = { 75.8, 62.0, DRAENOR_NAGRAND },
						["g"] = {
							i(116635),	-- Howling Mace
							i(116636),	-- Oshu'gun Scepter
						},
					}),
					o(233218, {	-- Adventurer's Pack
						["questID"] = 35765,
						["coord"] = { 82.2, 56.5, DRAENOR_NAGRAND },
						["sym"] = COMMON_TREASURE_SYM,
					}),
					o(233511, {	-- Adventurer's Pack
						["questID"] = 35969,
						["coord"] = { 45.6, 52.0, DRAENOR_NAGRAND },
						["sym"] = COMMON_TREASURE_SYM,
					}),
					o(232406, {	-- Adventurer's Pack
						["questID"] = 35597,
						["coord"] = { 69.9, 52.5, DRAENOR_NAGRAND },
						["description"] = "Hanging in a tree.",
						["sym"] = COMMON_TREASURE_SYM,
					}),
					o(233658, {	-- Adventurer's Pouch
						["description"] = "Follow coords in order, start at cave and follow ramp to reach the pouch.",
						["questID"] = 36088,
						["coords"] = {
							{ 56.4, 61.8, DRAENOR_NAGRAND },	-- Cave Entrance
							{ 64.2, 37.9, 553 },	-- Start of Ramp
							{ 65.8, 57.6, 553 },	-- Pouch
						},
						["sym"] = COMMON_TREASURE_SYM,
					}),
					o(233623, {	-- Adventurer's Pouch
						["questID"] = 36050,
						["coord"] = { 56.6, 72.9, DRAENOR_NAGRAND },
						["sym"] = COMMON_TREASURE_SYM,
					}),
					o(233499, {	-- Adventurer's Sack
						["questID"] = 35955,
						["coord"] = { 73.9, 14.1, DRAENOR_NAGRAND },
						["sym"] = COMMON_TREASURE_SYM,
					}),
					o(233457, {	-- Adventurer's Staff
						["questID"] = 35953,
						["coord"] = { 81.5, 13.0, DRAENOR_NAGRAND },
						["g"] = {
							i(116640),	-- Howling Staff
						},
					}),
					o(233079, {	-- Appropriated Warsong Supplies
						["questID"] = 35673,
						["coord"] = { 73.1, 75.5, DRAENOR_NAGRAND },
						["g"] = {
							currency(824),	-- Garrison Resources
						},
					}),
					o(233773, {	-- Bag of Herbs
						["questID"] = 36116,
						["coord"] = { 62.6, 67.1, DRAENOR_NAGRAND },
					}),
					o(233532, {	-- Bone-Carved Dagger
						["questID"] = 35986,
						["coord"] = { 77.3, 28.1, DRAENOR_NAGRAND },
						["g"] = {
							i(116760),	-- Saberon-Fang Shanker
						},
					}),
					o(233973, {	-- Bounty of the Elements
						["description"] = "Activate the totems in order: Air, Earth, Water, Fire",
						["questID"] = 36174,
						["coord"] = { 77.1, 16.6, DRAENOR_NAGRAND },
						["g"] = {
							currency(824),	-- Garrison Resources
						},
					}),
					o(233048, {	-- Brilliant Dreampetal
						["questID"] = 35661,
						["coord"] = { 81.1, 37.2, DRAENOR_NAGRAND },
						["g"] = {
							i(118262),	-- Brilliant Dreampetal
						},
					}),
					o(233137, {	-- Burning Blade Cache
						["questID"] = 35696,
						["coord"] = { 85.4, 53.46, DRAENOR_NAGRAND },
						["sym"] = COMMON_TREASURE_SYM,
					}),
					o(233492, {	-- Elemental Offering
						["questID"] = 35954,
						["coord"] = { 67.0, 19.5, DRAENOR_NAGRAND },
						["g"] = {
							i(118234),	-- Smoldering Offerings
						},
					}),
					o(233598, {	-- Elemental Shackles
						["questID"] = 36036,
						["coord"] = { 78.9, 15.5, DRAENOR_NAGRAND },
						["g"] = {
							i(118251),	-- Trophy Gemstone of the Elements
						},
					}),
					o(233560, {	-- Fragment of Oshu'gun
						["questID"] = 36020,
						["coord"] = { 45.8, 66.2, DRAENOR_NAGRAND },
						["g"] = {
							i(117981),	-- Fragment of Oshu'gun
						},
					}),
					o(233132, {	-- Freshwater Clam
						["questID"] = 35692,
						["coord"] = { 73.1, 21.6, DRAENOR_NAGRAND },
					}),
					o(233044, {	-- Fungus-Covered Chest
						["questID"] = 35660,
						["coord"] = { 88.9, 18.2, DRAENOR_NAGRAND },
						["g"] = {
							currency(824),	-- Garrison Resources
						},
					}),
					o(233649, {	-- Gambler's Purse
						["questID"] = 36074,
						["coord"] = { 75.4, 47.1, DRAENOR_NAGRAND },
						["g"] = {
							currency(824),	-- Garrison Resources
							i(118236),	-- Counterfeit Coin
						},
					}),
					o(233539, {	-- Genedar Debris
						["questID"] = 35987,
						["coord"] = { 43.2, 57.6, DRAENOR_NAGRAND },
						["g"] = {
							currency(824),	-- Garrison Resources
						},
					}),
					o(233549, {	-- Genedar Debris
						["questID"] = 35999,
						["coord"] = { 48.1, 60.1, DRAENOR_NAGRAND },
						["g"] = {
							currency(824),	-- Garrison Resources
						},
					}),
					o(233551, {	-- Genedar Debris
						["questID"] = 36002,
						["coord"] = { 44.7, 67.6, DRAENOR_NAGRAND },
						["g"] = {
							currency(824),	-- Garrison Resources
						},
					}),
					o(233555, {	-- Genedar Debris
						["questID"] = 36008,
						["coord"] = { 48.6, 72.8, DRAENOR_NAGRAND },
						["g"] = {
							currency(824),	-- Garrison Resources
						},
					}),
					o(233557, {	-- Genedar Debris
						["questID"] = 36011,
						["coord"] = { 55.3, 68.3, DRAENOR_NAGRAND },
						["g"] = {
							currency(824),	-- Garrison Resources
						},
					}),
					n(87528, {	-- Gnarled Bone
						["questID"] = 37136,
						["description"] = "Kill Mok'gol Wolfsong for a Wolf Totem, dig in dirt piles as a spectral wolf at a chance to find this item.",
						["coords"] = {
							{ 43.0, 35.6, DRAENOR_NAGRAND },
							{ 45.7, 37.1, DRAENOR_NAGRAND },
							{ 43.6, 38.8, DRAENOR_NAGRAND },
							{ 44.0, 34.3, DRAENOR_NAGRAND },
							{ 42.7, 37.6, DRAENOR_NAGRAND },
							{ 43.3, 36.6, DRAENOR_NAGRAND },
						},
					}),
					o(232597, {	-- Goblin Pack
						["questID"] = 35590,
						["coord"] = { 73.0, 62.1, DRAENOR_NAGRAND },
						["g"] = {
							currency(824),	-- Garrison Resources
						},
					}),
					o(232571, {	-- Goblin Pack
						["questID"] = 35576,
						["coord"] = { 47.2, 74.3, DRAENOR_NAGRAND },
						["description"] = "Hidden in the tree.",
						["g"] = {
							currency(824),	-- Garrison Resources
						},
					}),
					o(233134, {	-- Golden Kaliri Egg
						["questID"] = 35694,
						["coord"] = { 58.3, 52.5, DRAENOR_NAGRAND },
						["g"] = {
							i(118266),	-- Golden Kaliri Egg
						},
					}),
					o(233715, {	-- Goldtoe's Plunder
						["questID"] = 36109,
						["coord"] = { 38.3, 58.8, DRAENOR_NAGRAND },
					}),
					o(233626, {	-- Grizzlemaw's Bonepile
						["questID"] = 36051,
						["coord"] = { 87.1, 72.9, DRAENOR_NAGRAND },
						["g"] = {
							i(118054),	-- Discarded Bone x10
						},
					}),
					o(232986, {	-- Hidden Stash
						["questID"] = 35622,
						["coord"] = { 87.6, 45.0, DRAENOR_NAGRAND },
						["g"] = {
							currency(824),	-- Garrison Resources
						},
					}),
					o(233611, {	-- Highmaul Sledge
						["questID"] = 36039,
						["coord"] = { 67.3, 49.0, DRAENOR_NAGRAND },
						["g"] = {
							i(118252),	-- Trophy Loop of the Highmaul
						},
					}),
					o(233696, {	-- Important Exploration Supplies
						["questID"] = 36099,
						["coord"] = { 75.2, 65.6, DRAENOR_NAGRAND },
						["g"] = {
							i(61986),	-- Tol Barad Coconut Rum
						},
					}),
					o(233651, {	-- Lost Pendant
						["questID"] = 36082,
						["coord"] = { 61.8, 57.5, DRAENOR_NAGRAND },
						["g"] = {
							i(116687),	-- Oshu'gun Amulet
						},
					}),
					o(233032, {	-- Mountain Climber's Pack
						["questID"] = 35643,
						["coord"] = { 70.5, 13.8, DRAENOR_NAGRAND },
						["g"] = {
							currency(824),	-- Garrison Resources
						},
					}),
					n(87522, {	-- Garrosh's Shackles
						["questID"] = 37130,
						["coord"] = { 41.7, 37.5, DRAENOR_NAGRAND },
					}),
					o(233618, {	-- Ogre Beads
						["questID"] = 36049,
						["coord"] = { 80.9, 79.8, DRAENOR_NAGRAND },
						["g"] = {
							i(118255),	-- Trophy Ring of Gordal
						},
					}),
					o(233768, {	-- Pale Elixir
						["questID"] = 36115,
						["coord"] = { 57.8, 62.1, DRAENOR_NAGRAND },
						["g"] = {
							i(118278),	-- Pale Vision Potion
						},
					}),
					o(233593, {	-- Polished Saberon Skull
						["questID"] = 36035,
						["coord"] = { 72.7, 61.0, DRAENOR_NAGRAND },
						["g"] = {
							i(118254),	-- Trophy Signet of the Sabermaw
						},
					}),
					o(233561, {	-- Pokkar's Thirteenth Axe
						["questID"] = 36021,
						["coord"] = { 58.3, 59.5, DRAENOR_NAGRAND },
						["g"] = {
							i(116688),	-- Pokhar's Thirteenth Axe
						},
					}),
					o(233697, {	-- Saberon Stash
						["questID"] = 36102,
						["coord"] = { 75.2, 64.9, DRAENOR_NAGRAND },
						["sym"] = COMMON_TREASURE_SYM,
					}),
					o(236633, {	-- Smuggler's Cache
						["questID"] = 36857,
						["coord"] = { 89.1, 33.1, DRAENOR_NAGRAND },
						["g"] = {
							currency(824),	-- Garrison Resources
						},
					}),
					o(237946, {	-- Spirit Coffer
						["questID"] = 37435,
						["coord"] = { 40.4, 68.6, DRAENOR_NAGRAND },
						["g"] = {
							currency(824),	-- Garrison Resources
						},
					}),
					o(236610, {	-- Spirit's Gift
						["questID"] = 36846,
						["coord"] = { 35.5, 57.3, DRAENOR_NAGRAND },
						["g"] = {
							currency(824),	-- Garrison Resources
						},
					}),
					o(232985, {	-- Steamwheedle Supplies
						["questID"] = 35616,
						["coord"] = { 88.2, 42.6, DRAENOR_NAGRAND },
					}),
					o(232598, {	-- Steamwheedle Supplies
						["questID"] = 35591,
						["coord"] = { 77.8, 52.0, DRAENOR_NAGRAND },
					}),
					o(233034, {	-- Steamwheedle Supplies
						["questID"] = 35648,
						["coord"] = { 64.6, 17.6, DRAENOR_NAGRAND },
					}),
					o(232584, {	-- Steamwheedle Supplies
						["questID"] = 35577,
						["coord"] = { 50.1, 82.2, DRAENOR_NAGRAND },
					}),
					o(232595, {	-- Steamwheedle Supplies
						["questID"] = 35583,
						["coord"] = { 52.7, 80.1, DRAENOR_NAGRAND },
					}),
					o(233033, {	-- Steamwheedle Supplies
						["questID"] = 35646,
						["coord"] = { 70.6, 18.6, DRAENOR_NAGRAND },
					}),
					o(233052, {	-- Steamwheedle Supplies
						["questID"] = 35662,
						["coord"] = { 87.6, 20.5, DRAENOR_NAGRAND },
					}),
					n(87526, {	-- Stolen Draenei Tome
						["questID"] = 37134,
						["coords"] = {
							{ 45.3, 33.8, DRAENOR_NAGRAND },
							{ 45.1, 38.2, DRAENOR_NAGRAND },
							{ 42.0, 34.0, DRAENOR_NAGRAND },
						},
					}),
					o(233613, {	-- Telaar Defender Shield
						["questID"] = 36046,
						["coord"] = { 64.6, 65.8, DRAENOR_NAGRAND },
						["g"] = {
							i(118253),	-- Trophy Band of Telaar
						},
					}),
					o(243282, {	-- Viking Pepe
						["coord"] = { 80.11, 50.4, DRAENOR_NAGRAND },
						["timeline"] = { ADDED_6_2_0 },
						["g"] = { i(127865) },	-- A Tiny Viking Helmet (Pepe!)
					}),
					o(232590, {	-- Void-Infused Crystal
						["questID"] = 35579,
						["coord"] = { 50.0, 66.5, DRAENOR_NAGRAND },
						["g"] = {
							i(118264),	-- Serrated Void Crystal
						},
					}),
					o(233135, {	-- Warsong Cache
						["questID"] = 35695,
						["coord"] = { 51.7, 60.4, DRAENOR_NAGRAND },
						["g"] = {
							currency(824),	-- Garrison Resources
						},
					}),
					o(233645, {	-- Warsong Helm
						["questID"] = 36073,
						["coord"] = { 52.5, 44.5, DRAENOR_NAGRAND },
						["g"] = {
							i(118250),	-- Riverwashed Warsong Helm
						},
					}),
					o(233103, {	-- Warsong Lockbox
						["questID"] = 35678,
						["coord"] = { 73.1, 70.5, DRAENOR_NAGRAND },
						["g"] = {
							currency(824),	-- Garrison Resources
						},
					}),
					n(87524, {	-- Warsong Relics
						["questID"] = 37132,
						["coord"] = { 45.5, 36.8, DRAENOR_NAGRAND },
					}),
					n(87525, {	-- Warsong Remains
						["questID"] = 37133,
						["description"] = "Kill Mok'gol Wolfsong for a Wolf Totem, dig in dirt piles as a spectral wolf at a chance to find this item.",
						["coords"] = {
							{ 43.0, 35.6, DRAENOR_NAGRAND },
							{ 45.7, 37.1, DRAENOR_NAGRAND },
							{ 43.6, 38.8, DRAENOR_NAGRAND },
							{ 44.0, 34.3, DRAENOR_NAGRAND },
							{ 42.7, 37.6, DRAENOR_NAGRAND },
							{ 43.3, 36.6, DRAENOR_NAGRAND },
						},
					}),
					o(233113, {	-- Warsong Spear
						["questID"] = 35682,
						["coord"] = { 76.1, 69.9, DRAENOR_NAGRAND },
						["g"] = {
							i(118678),	-- Ceremonial Warsong Spear
						},
					}),
					o(232599, {	-- Warsong Spoils
						["questID"] = 35593,
						["coord"] = { 80.6, 60.6, DRAENOR_NAGRAND },
						["g"] = {
							currency(824),	-- Garrison Resources
						},
					}),
					o(233521, {	-- Warsong Supplies
						["questID"] = 35976,
						["coord"] = { 89.4, 65.8, DRAENOR_NAGRAND },
						["g"] = {
							currency(824),	-- Garrison Resources
						},
					}),
					o(235307, {	-- Watertight Bag
						["questID"] = 36071,
						["coord"] = { 64.8, 35.7, DRAENOR_NAGRAND },
						["g"] = {
							i(118235),	-- Ogre Diving Cap
						},
					}),
					n(87527, {	-- Wolf Pup Remains
						["questID"] = 37135,
						["description"] = "Kill Mok'gol Wolfsong for a Wolf Totem, dig in dirt piles as a spectral wolf at a chance to find this item.",
						["coords"] = {
							{ 43.0, 35.6, DRAENOR_NAGRAND },
							{ 45.7, 37.1, DRAENOR_NAGRAND },
							{ 43.6, 38.8, DRAENOR_NAGRAND },
							{ 44.0, 34.3, DRAENOR_NAGRAND },
							{ 42.7, 37.6, DRAENOR_NAGRAND },
							{ 43.3, 36.6, DRAENOR_NAGRAND },
						},
					}),
				}),
				n(VENDORS, {
					n(82754, {	-- Nurse Lizz <First Aid>
						["coord"] = { 78.6, 47.8, DRAENOR_NAGRAND },
						["g"] = {
							i(44694),	-- Antiseptic-Soaked Dressing
							i(44693),	-- Wound Dressing
						},
					}),
				}),
				n(ZONE_DROPS, {
					i(113109, {	-- Frostwolf Axe
						["crs"] = { 78278 },	-- Breezestrider Talbuk
						["sourceQuest"] = 35376,	-- Shooting the Breeze (H)
						["description"] = "Drops while doing |cFFFFD700Shooting the Breeze|r.",
					}),
					i(113107, {	-- Rangari Arrow
						["crs"] = { 78278 },	-- Breezestrider Talbuk
						["sourceQuest"] = 35338,	-- Shooting the Breeze (A)
						["description"] = "Drops while doing |cFFFFD700Shooting the Breeze|r.",
					}),
				}),
			},
		}),
	}),
});

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.WOD, bubbleDownSelf({ ["timeline"] = { ADDED_6_0_2 } }, {
	m(DRAENOR, {
		m(DRAENOR_NAGRAND, {
			n(QUESTS, {
				q(34679),	-- Alliance Stables Tracking Event
				q(34680),	-- Alliance Workshop Tracking Event
				q(37202),	-- Hemet Nesingwary Visitor Tracking Event
				q(34812),	-- Horde Stables Tracking Event
				q(34813),	-- Horde Workshop Tracking Event
				q(34518),	-- Nagrand Corral
				q(36906),	-- Ogre Waygate
				q(37802),	-- Gutrek's Hilt Looted - triggers during "Gutrek's Cleaver: The First Piece" (questID 37797)
				q(37803),	-- Gutrek's Pommel Looted - triggers during "Gutrek's Cleaver: The Second Piece" (questID 37798)
				q(37804),	-- Gutrek's Blade Looted - triggers during "Gutrek's Cleaver: The Final Piece" (questID 37799)
				q(37671),	-- Nagrand 6.0:JP3 - Broken Precipice - Tracking Quest - See Greblin Fastfizzle - triggers during "Garrison Campaign: The Broken Precipice" (questID 35985 & 36117)
				-- TODO: verify
				--q(37805),	-- Goblin Looted - triggers during "Gutrek's Cleaver: The Spirit Forge" (questID 37811 & 37992)
			}),
			-- n(TREASURES, {
			-- 	hqt(37250, name(HEADERS.AchCriteria, 9610.01)),	-- Krog the Dominator's Hammer
			-- 	hqt(37251, name(HEADERS.AchCriteria, 9610.02)),	-- Thak the Conqueror's Bust
			-- 	hqt(37252, name(HEADERS.AchCriteria, 9610.03)),	-- Thurg the Slave Lord's Necklace
			-- 	hqt(37253, name(HEADERS.AchCriteria, 9610.04)),	-- Gorg the Subjugator's Idol
			-- }),
		}),
	}),
})));
