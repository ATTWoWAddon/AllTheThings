---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(EASTERN_KINGDOMS, {
	m(SEARING_GORGE, {
		["lore"] = "Just as Blackrock orcs and their allies dominate Burning Steppes, so Dark Iron dwarves dominate the Searing Gorge. A large population of Dark Iron dwarves, War Golems, and Elementals resides in this dark, mountainous area.\n\nThe climate is very similar to Burning Steppes, as it was the same catastrophe that blackened both: the summoning of Ragnaros. The Searing Gorge is a part of Khaz Modan. Before being shattered by the summoning it was a mountainous region, part of the Redridge Mountains.\n\nLarge mining operations take place in The Cauldron, a giant excavation site forming a huge rift in the middle of the Searing Gorge. The Slag Pit lies within The Cauldron and is an underground mining site rich with multiple types of ore. The mining work is mainly done by slave labor, which consists for the most part of captured enemies.\n\nEver since the Dark Iron dwarves' capital, Thaurissan, was destroyed by the summoning of Ragnaros, they have searched for a landmass to control for their filthy, industrious works. The Searing Gorge was the obvious choice due to a low military presence, scarce population, few settlements, and high vulnerability. The dwarven garrisons were soon overrun by a massive Dark Iron invasion which forced them to retreat to Loch Modan and seal the passage.",
		["icon"] = 236815,
		["groups"] = {
			n(ACHIEVEMENTS, {
				ach(774),	-- Explore Searing Gorge
				ach(4910, {	-- Searing Gorge Quests
					["timeline"] = { ADDED_4_0_1 },
					-- #if AFTER 7.3.5
					["_doautomation"] = true,
					-- #else
					["sourceQuests"] = {
						27964,	-- Dig-Boss Dinwhisker
						27979,	-- Dark Ministry
						28099,	-- Rasha'krak
						28035,	-- The Mountain-Lord's Support
						28064,	-- Welcome to the Brotherhood
					},
					-- #endif
				}),
			}),
			battlepets({
				["sym"] = {{"select","speciesID",
					415,	-- Fire Beetle (PET!)
				}},
				["groups"] = {
					pet(427),	-- Ash Spiderling (PET!)
					pet(423),	-- Lava Crab (PET!)
					pet(428),	-- Molten Hatchling (PET!)
				},
			}),
			-- #if SEASON_OF_DISCOVERY
			applyclassicphase(SOD_PHASE_FOUR, n(createHeader({	-- Blackrock Eruption
				readable = "Blackrock Eruption",
				icon = 237588,
				text = {
					en = "Blackrock Eruption",
					es = "Erupción de Roca Negra",
					mx = "Erupción de Roca Negra",
					de = "Ausbruch des Schwarzfels",
					fr = "Éruption de Blackrock",
					-- it = "",
					pt = "Erupção da Rocha Negra",
					ru = "Извержение Черной горы",
					ko = "검은바위 분출",
					cn = "黑石大爆发",
					tw = "黑石爆發",
				},
				description = {
					en = "This event occurs every 2 hours from Midnight and lasts 60 minutes. While this event is active, Daily Quests will be available in Searing Gorge for the Thorium Brotherhood. Traditionally Thorium Brotherhood can be quite a grind to achieve reputation with so this addition of a Daily Quest Hub will be very welcome.\nWhen the event is active, new NPCs will spawn and some environmental changes will occur to the outside area of Searing Gorge.",
				},
			}),
			bubbleDownSelf({ ["timeline"] = { ADDED_1_15_3 } }, {
				n(QUESTS, sharedData({
						["maxReputation"] = { FACTION_THORIUM_BROTHERHOOD, EXALTED },	-- Thorium Brotherhood, Exalted.
						["isDaily"] = true,
						["lvl"] = 53,
				}, {
					q(84360, {	-- Firefighting
						["qg"] = 14625,	-- Overseer Oilfist <The Thorium Brotherhood>
						["coord"] = { 38.2, 27.0, SEARING_GORGE },
						["groups"] = {
							objective(1, {	-- 0/10 Firelands Invader slain
								["provider"] = { "n", 228718 },	-- Firelands Invader
								["coord"] = { 33.0, 31.0, SEARING_GORGE },
							}),
							i(227801),	-- Firelands Ember
						},
					}),
					q(84350, {	-- Grinding Them Down
						["qg"] = 14628,	-- Evonice Sootsmoker <The Thorium Brotherhood>
						["coord"] = { 38.2, 27.8, SEARING_GORGE },
						["groups"] = {
							objective(1, {	-- 0/10 Obsidian Reaver slain
								["provider"] = { "n", 228723 },	-- Obsidian Reaver
							}),
							i(227801),	-- Firelands Ember
						},
					}),
					q(84372, {	-- Lava Diving
						["qg"] = 14627,	-- Hansel Heavyhands <The Thorium Brotherhood>
						["coord"] = { 38.6, 27.8, SEARING_GORGE },
						["groups"] = {
							objective(1, {	-- 0/1 Shimmering Molten Mineral
								["providers"] = {
									{ "i", 228191 },	-- Shimmering Molten Mineral
									{ "o", 462233 },	-- Shimmering Molten Crag
								},
								["coord"] = { 48.7, 37.5, SEARING_GORGE },
							}),
							i(227801),	-- Firelands Ember
						},
					}),
					q(84355, {	-- More Like Lame-bringers!
						["qg"] = 14626,	-- Taskmaster Scrange <The Thorium Brotherhood>
						["coord"] = { 38.8, 27.6, SEARING_GORGE },
						["groups"] = {
							objective(1, {	-- 0/4 Flamebringer Defender slain
								["provider"] = { "n", 228727 },	-- Flamebringer Defender
							}),
							objective(2, {	-- 0/4 Flamebringer Elementalist slain
								["provider"] = { "n", 228726 },	-- Flamebringer Elementalist
							}),
							i(227801),	-- Firelands Ember
						},
					}),
					q(84356, {	-- Oh, Shiny!
						["qg"] = 14624,	-- Master Smith Burninate <The Thorium Brotherhood>
						["coord"] = { 38.6, 28.6, SEARING_GORGE },
						["groups"] = {
							objective(1, {	-- 0/8 Flamestone Cluster
								["provider"] = { "i", 227767 },	-- Flamestone Cluster
								["crs"] = {
									5844,	-- Dark Iron Slaver
									5843,	-- Slave Worker
									5846,	-- Dark Iron Taskmaster
								},
							}),
							i(227801),	-- Firelands Ember
						},
					}),
					q(84349, {	-- Priority Target: Duke Searbrand
						["qg"] = 14634,	-- Lookout Captain Lolo Longstriker <The Thorium Brotherhood>
						["coord"] = { 37.6, 26.6, SEARING_GORGE },
						["groups"] = {
							objective(1, {	-- 0/1 Duke Searbrand slain
								["provider"] = { "n", 228720 },	-- Duke Searbrand
								["coord"] = { 43.6, 28.6, SEARING_GORGE },
							}),
							i(227801),	-- Firelands Ember
						},
					}),
					q(84348, {	-- Priority Target: Duke Tectonis
						["qg"] = 14627,	-- Hansel Heavyhands <The Thorium Brotherhood>
						["coord"] = { 38.6, 27.8, SEARING_GORGE },
						["groups"] = {
							objective(1, {	-- 0/1 Duke Tectonis slain
								["provider"] = { "n", 228729 },	-- Duke Tectonis
								["coord"] = { 27.8, 80.4, SEARING_GORGE },
							}),
							i(227801),	-- Firelands Ember
						},
					}),
					q(84359, {	-- Sleepless Nights
						["qg"] = 14628,	-- Evonice Sootsmoker <The Thorium Brotherhood>
						["coord"] = { 38.2, 27.8, SEARING_GORGE },
						["groups"] = {
							objective(1, {	-- 0/5 Flamebringer Stalker slain
								["providers"] = {
									{ "n", 228747 },	-- Flamebringer Stalker
									{ "i", 227768 },	-- Dreamjuice
								},
							}),
							i(227801),	-- Firelands Ember
						},
					}),
					q(84351, {	-- Work Smarter, Not Harder
						["qg"] = 14626,	-- Taskmaster Scrange <The Thorium Brotherhood>
						["coord"] = { 38.8, 27.6, SEARING_GORGE },
						["groups"] = {
							objective(1, {	-- 0/6 Obsidian Power Core
								["provider"] = { "i", 227743 },	-- Obsidian Power Core
								["coord"] = { 50.2, 67.6, SEARING_GORGE },
								["cr"] = 228724,	-- Obsidian Surger
							}),
							i(227801),	-- Firelands Ember
						},
					}),
				})),
				n(RARES, {
					n(228970, {	-- Galenges
						["description"] = "This is a rare that may not always be present. Seems to have a high drop rate for world drop epics and recipes. Kill it on sight during the invasion!",
						["coord"] = { 22.6, 77.6, SEARING_GORGE },
						["groups"] = {
							i(14511),	-- Pattern: Gloves of Spell Mastery (RECIPE!)
							i(228317),	-- Pattern: Incandescent Mooncloth Circlet (RECIPE!)
							i(228314),	-- Plans: Warcrest of the Great Chief (RECIPE!)
							i(3475),	-- Cloak of Flames
						},
					}),
					n(228721, {	-- Lieutenant Skarresh
						["description"] = "This is a rare that may not always be present. Seems to have a high drop rate for world drop epics and recipes. Kill it on sight during the invasion!",
						["coord"] = { 43.8, 27.8, SEARING_GORGE },
						["groups"] = {
							i(228993),	-- Pattern: Bottomless Bag (RECIPE!)
							i(14511),	-- Pattern: Gloves of Spell Mastery (RECIPE!)
							i(228317),	-- Pattern: Incandescent Mooncloth Circlet (RECIPE!)
							i(228315),	-- Plans: Sageblade of the Archmagus (RECIPE!)
							i(228250),	-- Plans: Stronger-hold Gauntlets (RECIPE!)
							i(228314),	-- Plans: Warcrest of the Great Chief (RECIPE!)
							i(1728),	-- Teebu's Blazing Longsword
							i(2801),	-- Blade of Hanna
							i(3475),	-- Cloak of Flames
						},
					}),
					n(228969, {	-- Lord Gazzran
						["description"] = "This is a rare that may not always be present. Seems to have a high drop rate for world drop epics and recipes. Kill it on sight during the invasion!",
						["coord"] = { 38.4, 68.2, SEARING_GORGE },
						["groups"] = {
							i(14511),	-- Pattern: Gloves of Spell Mastery (RECIPE!)
							i(228317),	-- Pattern: Incandescent Mooncloth Circlet (RECIPE!)
							i(22390),	-- Plans: Persuader (RECIPE!)
							i(228315),	-- Plans: Sageblade of the Archmagus (RECIPE!)
							i(228314),	-- Plans: Warcrest of the Great Chief (RECIPE!)
							i(1728),	-- Teebu's Blazing Longsword
							i(2801),	-- Blade of Hanna
							i(3475),	-- Cloak of Flames
						},
					}),
				}),
				n(ZONE_DROPS, {
					i(11382, {	-- Blood of the Mountain
						["maps"] = { BURNING_STEPPES },
						["cr"] = 228725,	-- Firesworn <Servant of Garr>
					}),
					i(17010, {	-- Fiery Core
						["maps"] = { BURNING_STEPPES },
						["crs"] = {
							228721,	-- Lieutenant Skarresh
							228970,	-- Galenges
							228969,	-- Lord Gazzran
							228725,	-- Firesworn <Servant of Garr>
						},
					}),
					i(227801, {	-- Firelands Ember
						["maps"] = { BURNING_STEPPES },
						["crs"] = {
							228721,	-- Lieutenant Skarresh
							228970,	-- Galenges
							228969,	-- Lord Gazzran
							228725,	-- Firesworn <Servant of Garr>
							228727,	-- Flamebringer Defender
							228726,	-- Flamebringer Elementalist
							228747,	-- Flamebringer Stalker
							228724,	-- Obsidian Surger
							228718,	-- Firelands Invader
							228719,	-- Firelands Drudge
						},
					}),
					i(17011, {	-- Lava Core
						["maps"] = { BURNING_STEPPES },
						["crs"] = {
							228721,	-- Lieutenant Skarresh
							228970,	-- Galenges
							228969,	-- Lord Gazzran
							228725,	-- Firesworn <Servant of Garr>
						},
					}),
				}),
			}))),
			-- #endif
			explorationHeader({
				exploration(1957),	-- Blackchar Cave
				-- #if AFTER CATA
				exploration(1445),	-- Blackrock Mountain
				-- #endif
				exploration(1959),	-- Dustfire Valley
				exploration(1442),	-- Firewatch Ridge
				exploration(247),	-- Grimesilt Dig Site
				-- #if AFTER CATA
				visit_exploration(5615,{coord={44.4,41.0,SEARING_GORGE}}),	-- Pyrox Flats
				-- #endif
				-- #if BEFORE CATA
				exploration(1958),	-- Tanner Camp
				-- #endif
				exploration(246),	-- The Cauldron
				exploration(1444),	-- The Sea of Cinders
				-- #if AFTER CATA
				exploration(1443),	-- The Slag Pit
				exploration(5629),	-- Thorium Advance
				exploration(1446),	-- Thorium Point
				-- #endif
			}),
			n(FLIGHT_PATHS, {
				fp(673, {	-- Iron Summit, Searing Gorge
					["cr"] = 47927,	-- Doug Deepdown <Flight Master>
					["coord"] = { 41.0, 68.6, SEARING_GORGE },
					["timeline"] = { ADDED_4_0_1 },
				}),
				fp(74, {	-- Thorium Point, Searing Gorge
					["cr"] = 2941,	-- Lanie Reed <Gryphon Master>
					["coord"] = { 37.8, 30.6, SEARING_GORGE },
					["races"] = ALLIANCE_ONLY,
				}),
				fp(75, {	-- Thorium Point, Searing Gorge
					["cr"] = 3305,	-- Grisha <Wind Rider Master>
					["coord"] = { 34.8, 30.6, SEARING_GORGE },
					["races"] = HORDE_ONLY,
				}),
			}),
			petbattles({
				n(66515, {	-- Kortas Darkhammer <Master Pet Tamer>
					["coord"] = { 35.4, 27.8, SEARING_GORGE },
					["description"] = "This pet tamer is Alliance only, though Horde players can battle them once as part of the Horde version of the quest 'Battle Pet Tamers: Eastern Kingdoms'.\n\nKortas' pets are level 15 of the following consecutive pet classes:\n1. Dragonkin - use Humanoid (powerful) or Undead (tanky) pet.\n2. Dragonkin - see above.\n3. Dragonkin - see above.",
					["timeline"] = { ADDED_5_0_4 },
					["petBattleLvl"] = 15,
					["groups"] = {
						q(31912, {	-- Kortas Darkhammer
							["sourceAchievement"] = 6603,	-- Taming Eastern Kingdoms
							["timeline"] = { ADDED_5_0_4 },
							["races"] = ALLIANCE_ONLY,
							["isDaily"] = true,
						}),
					},
				}),
			}),
			n(PROFESSIONS, {
				prof(LEATHERWORKING, {
					n(7868, {	-- Sarah Tanner <Master Elemental Leatherworker>
						["coord"] = { 63.6, 75.8, SEARING_GORGE },
						["races"] = ALLIANCE_ONLY,
						["timeline"] = { REMOVED_4_0_3 },
						["groups"] = CLASSIC_TBC_ELEMENTAL,
					}),
				}),
			}),
			n(QUESTS, {
				q(27962, {	-- A Lumbering Relic
					["sourceQuest"] = 27960,	-- The Fewer, the Better
					["qg"] = 47267,	-- Burrian Coalpart
					["coord"] = { 68.4, 53.2, SEARING_GORGE },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/1 Margol's Gigantic Horn
							["provider"] = { "i", 10005 },	-- Margol's Gigantic Horn
							["coord"] = { 73.2, 81.6, SEARING_GORGE },
							["cr"] = 5833,	-- Margol the Rager
						}),
					},
				}),
				q(27963, {	-- A New Master... But Who?
					["sourceQuests"] = {
						28582,	-- Hero's Call: Searing Gorge
						28512,	-- To the Aid of the Thorium Brotherhood
						28581,	-- Warchief's Command: Searing Gorge!
					},
					["qg"] = 47266,	-- Jack Rockleg
					["coord"] = { 68.5, 53.3, SEARING_GORGE },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/1 Dark Iron Memo
							["provider"] = { "i", 62807 },	-- Dark Iron Memo
							["coord"] = { 63.6, 59.0, SEARING_GORGE },
							["cr"] = 47270,	-- Gravius Grimesilt
						}),
						i(63218, {	-- Rockhead Helm
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(63217, {	-- Oilfist Globe
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(63216, {	-- Jack's Lucky Charm
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(27958, {	-- A Proper Antivenom
					["sourceQuest"] = 27957,	-- Lunk No Kill
					["qg"] = 47268,	-- Prisanne Dustcropper
					["coord"] = { 68.7, 53.3, SEARING_GORGE },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/14 Glassweb Venom
							["provider"] = { "i", 62809 },	-- Glassweb Venom
							["cr"] = 5856,	-- Glassweb Spider
						}),
						i(63211, {	-- Medical Officer Legguards
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(63210, {	-- Snakeoil Helm
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(63209, {	-- Glassweb Robes
							["timeline"] = { ADDED_4_0_3 },
						}),
						-- #if BEFORE MOP
						i(63208, {	-- Glassweb Spider Fangs
							["timeline"] = { ADDED_4_0_3, REMOVED_5_0_4 },
						}),
						-- #endif
					},
				}),
				q(3201, {	-- At Last!
					["sourceQuest"] = 3182,	-- Proof of Deed
					["providers"] = {
						{ "n", 8256 },	-- Curator Thorius
						{ "i", 10022 },	-- Proof of Deed
					},
					["coord"] = { 71.4, 16.2, IRONFORGE },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { LOCH_MODAN },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 40,
					["groups"] = {
						i(5396, {	-- Key to Searing Gorge
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(4449, {	-- Caught!
					["provider"] = { "o", 173265 },	-- Wooden Outhouse
					["coord"] = { 65.5, 62.2, SEARING_GORGE },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = { { "i", 4306, 15 } },	-- Silk Cloth
					["lvl"] = 43,
					["groups"] = {
						objective(1, {	-- 0/8 Dark Iron Geologist
							["provider"] = { "n", 5839 },	-- Dark Iron Geologist
						}),
					},
				}),
				q(7723, {	-- Curse These Fat Fingers
					["qg"] = 14627,	-- Hansel Heavyhands
					["coord"] = { 38.6, 27.8, SEARING_GORGE },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 45,
					["groups"] = {
						objective(1, {	-- 0/20 Heavy War Golem
							["provider"] = { "n", 5854 },	-- Heavy War Golem
						}),
						i(19126, {	-- Slagplate Gauntlets
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(27976, {	-- Curse These Fat Fingers
					["sourceQuest"] = 27965, -- Thorium Point: The Seat of the Brotherhood
					["qg"] = 14627,	-- Hansel Heavyhands
					["coord"] = { 38.4, 27.8, SEARING_GORGE },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/12 Heavy War Golem
							["provider"] = { "n", 5854 },	-- Heavy War Golem
						}),
						i(63226, {	-- Fat Finger Gloves
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(63225, {	-- Pounding Leggings
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(63224, {	-- Heavyhands' Gloves
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(63223, {	-- Gretel's Pendant
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(27979, {	-- Dark Ministry
					["sourceQuests"] = {
						27976,	-- Curse These Fat Fingers
						27977,	-- Recon Essentials
					},
					["qg"] = 14627,	-- Hansel Heavyhands
					["coord"] = { 38.4, 27.8, SEARING_GORGE },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/1 Twilight Tripetricine
							["providers"] = {
								{ "i", 62828 },	-- Twilight Tripetricine
								{ "i", 62824 },	-- Finister's Spherule
								{ "i", 62825 },	-- Kiyuubi's Spherule
								{ "i", 62823 },	-- Letherio's Spherule
							},
						}),
						i(62824, {	-- Finister's Spherule
							["coord"] = { 25.0, 25.8, SEARING_GORGE },
							["cr"] = 47311,	-- Minister Finister
						}),
						i(62825, {	-- Kiyuubi's Spherule
							["coord"] = { 18.0, 42.2, SEARING_GORGE },
							["cr"] = 47309,	-- Minister Kiyuubi
						}),
						i(62823, {	-- Letherio's Spherule
							["coord"] = { 14.6, 37.6, SEARING_GORGE },
							["cr"] = 47310,	-- Minister Letherio
						}),
					},
				}),
				q(28033, {	-- Deceit
					["sourceQuests"] = {
						28028,	-- Siege!
						28029,	-- Set Them Ablaze!
						28030,	-- They Build a Better Bullet
					},
					["qg"] = 47393,	-- Mountain-Lord Rendan
					["coord"] = { 39.4, 67.8, SEARING_GORGE },
					["timeline"] = { ADDED_4_0_3 },
				}),
				q(27964, {	-- Dig-Boss Dinwhisker
					["sourceQuest"] = 27963,	-- A New Master...But Who?
					["qg"] = 47266,	-- Jack Rockleg
					["coord"] = { 68.5, 53.3, SEARING_GORGE },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/1 Dark Ember
							["providers"] = {
								{ "i",  62806 },	-- Dark Ember
								{ "o", 206573 },	-- Dark Ember
							},
							["coord"] = { 56.3, 46.3, SEARING_GORGE },
							["cr"] = 47271,	-- Dig-Boss Dinwhisker
						}),
					},
				}),
				q(3441, {	-- Divine Retribution
					["qg"] = 8479,	-- Kalaran Windblade
					["coord"] = { 39.1, 39.0, SEARING_GORGE },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 40,
					["groups"] = {
						objective(1, {	-- Velarok Story
							["provider"] = { "n", 8479 },	-- Velarok Windblade
							["coord"] = { 39.0, 39.0, SEARING_GORGE },
						}),
					},
				}),
				q(3371, {	-- Dwarven Justice
					["sourceQuest"] = 3368,	-- Suntara Stones (2/2)
					["qg"] = 8256,	-- Curator Thorius
					["coord"] = { 71.4, 16.2, IRONFORGE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 40,
				}),
				q(7724, {	-- Fiery Menace!
					["qg"] = 14627,	-- Hansel Heavyhands
					["coord"] = { 38.6, 27.8, SEARING_GORGE },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 45,
					["groups"] = {
						objective(1, {	-- 0/20 Greater Lava Spider
							["provider"] = { "n", 5858 },	-- Greater Lava Spider
						}),
						i(19125, {	-- Seared Mail Girdle
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(3443, {	-- Forging the Shaft
					["sourceQuest"] = 3442,	-- The Flawless Flame
					["qg"] = 8479,	-- Kalaran Windblade
					["coord"] = { 39.1, 39.0, SEARING_GORGE },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 40,
					["groups"] = {
						objective(1, {	-- 0/8 Thorium Plated Dagger
							["provider"] = { "i", 10551 },	-- Thorium Plated Dagger
							["crs"] = {
								5839,	-- Dark Iron Geologist
								15692,	-- Dark Iron Kidnapper
								8566,	-- Dark Iron Lookout
								8504,	-- Dark Iron Sentry
								5844,	-- Dark Iron Slaver
								5840,	-- Dark Iron Steamsmith
								8337,	-- Dark Iron Steelshifter
								5846,	-- Dark Iron Taskmaster
								8637,	-- Dark Iron Watchman
								5843,	-- Slave Worker
							},
						}),
					},
				}),
				q(28062, {	-- From Whence He Came
					["sourceQuest"] = 28060,	-- Twisted Twilight Ties
					["qg"] = 14625,	-- Overseer Oilfist
					["coord"] = { 50.0, 39.0, SEARING_GORGE },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- Archduke Calcinder banished
							["providers"] = {
								{ "n", 47462 },	-- Archduke Calcinder
								{ "i", 62925 },	-- Consecrated Tripetricine
							},
							["coord"] = { 42.8, 29.4, SEARING_GORGE },
						}),
					},
				}),
				q(13662, {	-- Gaining Acceptance
					["sourceQuests"] = {
						-- #if AFTER CATA
						28064,	-- Welcome to the Brotherhood
						-- #else
						7722,	-- What the Flux?
						-- #endif
					},
					["qg"] = 14624,	-- Master Smith Burninate
					["coord"] = { 38.8, 28.5, SEARING_GORGE },
					["minReputation"] = {
						-- #if AFTER CATA
						FACTION_THORIUM_BROTHERHOOD, REVERED,	-- Thorium Brotherhood, Revered.
						-- #else
						FACTION_THORIUM_BROTHERHOOD, FRIENDLY,	-- Thorium Brotherhood, Friendly.
						-- #endif
					},
					["maxReputation"] = {
						-- #if AFTER CATA
						FACTION_THORIUM_BROTHERHOOD, EXALTED,	-- Thorium Brotherhood, Exalted.
						-- #else
						FACTION_THORIUM_BROTHERHOOD, HONORED,	-- Thorium Brotherhood, Honored.
						-- #endif
					},
					["timeline"] = { ADDED_3_3_0 },
					["cost"] = { { "i", 18945, 4 } },	-- Dark Iron Residue
					["repeatable"] = true,
					["lvl"] = 40,
				}),
				q(7737, {	-- Gaining Acceptance [Classic] / Gaining Even More Acceptance [Wrath+]
					["sourceQuests"] = {
						-- #if AFTER CATA
						28064,	-- Welcome to the Brotherhood
						-- #else
						7722,	-- What the Flux?
						-- #endif
					},
					["qg"] = 14624,	-- Master Smith Burninate
					["coord"] = { 38.8, 28.5, SEARING_GORGE },
					["minReputation"] = {
						-- #if AFTER CATA
						FACTION_THORIUM_BROTHERHOOD, REVERED,	-- Thorium Brotherhood, Revered.
						-- #else
						FACTION_THORIUM_BROTHERHOOD, FRIENDLY,	-- Thorium Brotherhood, Friendly.
						-- #endif
					},
					["maxReputation"] = {
						-- #if AFTER CATA
						FACTION_THORIUM_BROTHERHOOD, EXALTED,	-- Thorium Brotherhood, Exalted.
						-- #else
						FACTION_THORIUM_BROTHERHOOD, HONORED,	-- Thorium Brotherhood, Honored.
						-- #endif
					},
					["cost"] = {
						-- #if AFTER WRATH
						{ "i", 18945, 100 },	-- Dark Iron Residue
						-- #else
						{ "i", 18945, 4 },	-- Dark Iron Residue
						-- #endif
					},
					["repeatable"] = true,
					["lvl"] = lvlsquish(40, 40, 15),
				}),
				q(27981, {	-- Heat That Just Don't Quit
					["sourceQuest"] = 27965, -- Thorium Point: The Seat of the Brotherhood
					["qg"] = 14627,	-- Hansel Heavyhands
					["coord"] = { 38.4, 27.8, SEARING_GORGE },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/10 Filled Furnace Flask
							["providers"] = {
								{ "i", 62827 },	-- Filled Furnace Flask
								{ "i", 62826 },	-- Furnace Flasks
							},
							["crs"] = {
								5852,	-- Inferno Elemental
								5855,	-- Magma Elemental
							},
						}),
					},
				}),
				heroscall(q(28582, {	-- Hero's Call: Searing Gorge!
					["timeline"] = { ADDED_4_0_3 },
					["maps"] = { IRONFORGE, STORMWIND_CITY },	-- Only found in Ironforge & Stormwind City in Cataclysm.
					["isBreadcrumb"] = true,
					-- #if BEFORE 7.3.5
					-- Cataclysm: Minimum is level 47. (TODO: Confirm this.)
					-- Cataclysm: Maximum is level 48. (TODO: Test max level between 49 and 58)
					["lvl"] = { 47, 48 },
					-- #endif
				})),
				q(27986, {	-- In the Hall of the Mountain-Lord
					["sourceQuests"] = {
						27979,	-- Dark Ministry
						28099,	-- Rasha'krak
					},
					["qg"] = 14627,	-- Hansel Heavyhands
					["coord"] = { 38.4, 27.9, SEARING_GORGE },
					["timeline"] = { ADDED_4_0_3 },
				}),
				q(7727, {	-- Incendosaurs? Whateverosaur is More Like It
					["qg"] = 14627,	-- Hansel Heavyhands
					["coord"] = { 38.6, 27.8, SEARING_GORGE },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 45,
					["groups"] = {
						objective(1, {	-- 0/20 Incendosaur
							["provider"] = { "n", 9318 },	-- Incendosaur
						}),
						i(19141, {	-- Luffa
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(7729, {	-- JOB OPPORTUNITY: Culling the Competition
					["provider"] = { "o", 179827 },	-- Wanted/Missing/Lost & Found
					["coord"] = { 37.7, 26.5, SEARING_GORGE },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 45,
					["groups"] = {
						objective(1, {	-- 0/15 Dark Iron Taskmaster
							["provider"] = { "n", 5846 },	-- Dark Iron Taskmaster
						}),
						objective(2, {	-- 0/15 Dark Iron Slaver
							["provider"] = { "n", 5844 },	-- Dark Iron Slaver
						}),
					},
				}),
				q(7702, {	-- Kill 'Em With Sleep Deprivation
					["qg"] = 14628,	-- Evonice Sootsmoker
					["coord"] = { 38.4, 27.7, SEARING_GORGE },
					["timeline"] = { CREATED_1_12_1, ADDED_3_3_0, REMOVED_4_0_3 },
					["lvl"] = 30,
					["groups"] = {
						objective(1, {	-- 0/20 Dark Iron Pillow
							["providers"] = {
								{ "i",  18943 },	-- Dark Iron Pillow
								{ "o", 179828 },	-- Dark Iron Pillow
							},
							["cr"] = 14635,	-- Sleepy Dark Iron Worker
						}),
						i(19129, {	-- Everglowing Robe
							["timeline"] = { CREATED_1_12_1, ADDED_3_3_0, REMOVED_4_0_3 },
						}),
					},
				}),
				q(28057, {	-- Kill 'em With Sleep Deprivation
					["sourceQuests"] = {
						28054,	-- Slavery Is Bad
						28055,	-- Sweet, Horrible Freedom
						28056,	-- Rise, Obsidion
					},
					["qg"] = 14628,	-- Evonice Sootsmoker
					["coord"] = { 43.7, 28.7, SEARING_GORGE },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/16 Dark Iron Pillow
							["providers"] = {
								{ "i",  18943 },	-- Dark Iron Pillow
								{ "o", 179828 },	-- Dark Iron Pillow
							},
							["cr"] = 14635,	-- Sleepy Dark Iron Worker
						}),
						i(63241, {	-- Very Soft Pillow
							["timeline"] = { ADDED_4_0_3, REMOVED_4_0_3 },
						}),
					},
				}),
				q(4450, {	-- Ledger from Tanaris
					["sourceQuest"] = 4449,	-- Caught!
					["provider"] = { "o", 173265 },	-- Wooden Outhouse
					["coord"] = { 65.5, 62.2, SEARING_GORGE },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { DUSTWALLOW_MARSH, SWAMP_OF_SORROWS, TANARIS },
					["lvl"] = 43,
					["groups"] = {
						objective(1, {	-- 0/1 Goodsteel Ledger
							["providers"] = {
								{ "i",  11727 },	-- Goodsteel Ledger
								{ "o", 173266 },	-- Goodsteel Ledger
							},
						}),
						objective(2, {	-- 0/20 Solid Crystal Leg Shaft
							["provider"] = { "i", 11725 },	-- Solid Crystal Leg Shaft
							["cr"] = 5856,	-- Glassweb Spider
						}),
						objective(3, {	-- 0/1 Overdue Package
							["providers"] = {
								{ "i",  11724 },	-- Overdue Package
								{ "o", 174728 },	-- Damaged Crate
							},
							["coord"] = { 54.1, 55.8, DUSTWALLOW_MARSH },
						}),
						objective(4, {	-- 0/1 Goodsteel's Balanced Flameberge
							["provider"] = { "i", 11723 },	-- Goodsteel's Balanced Flameberge
							["cr"] = 9916,	-- Jarquia
							["coords"] = {
								{ 94.4, 51.8, SWAMP_OF_SORROWS },
								{ 92.6, 65.6, SWAMP_OF_SORROWS },
							},
						}),
						i(11860, {	-- Charged Lightning Rod
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(11861, {	-- Girdle of Reprisal
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(7704, {	-- Look at the Size of It!
					["providers"] = {
						{ "i",  18950 },	-- Chambermaid Pillaclencher's Pillow
						{ "o", 179832 },	-- Pillamaster's Ornate Pillow
						{ "n",  14636 },	-- Chambermaid Pillaclencher
					},
					["timeline"] = { CREATED_1_12_1, ADDED_3_3_0, REMOVED_4_0_3 },
					["lvl"] = 45,
					["groups"] = {
						i(18951, {	-- Evonice's Landin' Pilla
							["timeline"] = { CREATED_1_12_1, ADDED_3_3_0 },
						}),
					},
				}),
				q(28058, {	-- Look at the Size of It!
					["description"] = "After looting the first pillow during |cFFFFD700Kill 'em With Sleep Deprivation|r, a timer begins. After ~10 minutes, |cFFFFD700Chambermaid Pillaclencher|r spawns and drops her pillow. If the Pillamaster is already spawned on your shard, you do not need the prior quests to spawn them.",
					["sourceQuests"] = {
						28054,	-- Slavery Is Bad
						28055,	-- Sweet, Horrible Freedom
						28056,	-- Rise, Obsidion
					},
					["providers"] = {
						{ "i",  62933 },	-- Chambermaid Pillaclencher's Pillow
						{ "o", 179832 },	-- Pillaclencher's Ornate Pillow
						{ "n",  14636 },	-- Chambermaid Pillaclencher
					},
					["coord"] = { 46.0, 29.8, SEARING_GORGE },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						i(18951, {	-- Evonice's Landin' Pilla
							["timeline"] = { CREATED_1_12_1, ADDED_3_3_0 },
						}),
					},
				}),
				q(28053, {	-- Lunk Like Your Style
					["sourceQuest"] = 28064,	-- Welcome to the Brotherhood
					["qg"] = 47429,	-- Lunk
					["coord"] = { 38.9, 26.0, SEARING_GORGE },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						i(63245, {	-- Lunk's Special Gear
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(27957, {	-- Lunk No Kill
					["sourceQuest"] = 27956,	-- Lunk's Task
					["qg"] = 47269,	-- Lunk
					["coord"] = { 68.9, 53.2, SEARING_GORGE },
					["timeline"] = { ADDED_4_0_3 },
				}),
				q(27983, {	-- Lunk's Adventure: Cranky Little Dwarfs
					["description"] = "Must be on |cFFFFD700Recon Essentials|r to get this quest. Lunk will appear when you kill a Dark Iron Dwarf.\n\nHigh-level players must unequip their weapons, hit the Dwarf once with auto-attack and stop after 1 hit.",
					["sourceQuest"] = 27965, -- Thorium Point: The Seat of the Brotherhood
					["qg"] = 47332,	-- Lunk
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/7 Dark Iron Steamsmiths put to sleep
							["provider"] = { "n", 5840 },	-- Dark Iron Steamsmith
						}),
					},
				}),
				q(28034, {	-- Lunk's Adventure: Rendan's Weakness
					["sourceQuest"] = 28033,	-- Deceit
					["qg"] = 47429,	-- Lunk
					["coord"] = { 39.8, 67.9, SEARING_GORGE },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- Build up a three-dwarf conga line
							["provider"] = { "n", 47434 },	-- Iron Summit Guard
						}),
					},
				}),
				q(27959, {	-- Lunk's Adventure: Spider Rider
					["description"] =
						-- #if AFTER 7.0.3
						"Must be on |cFFFFD700A Proper Antivenom|r to get this quest. Lunk will appear when you kill a Glassweb Spider.\n\nHigh-level players may require |cff0070ddSoft Foam Sword|r to lower creature health to 10%.",
						-- #else
						"Must be on |cFFFFD700A Proper Antivenom|r to get this quest. Lunk will appear when you kill a Glassweb Spider.\n\nHigh-level players must unequip their weapons, hit the Spider once with auto-attack and stop after 1 hit.",
						-- #endif
					["sourceQuest"] = 27957,	-- Lunk No Kill
					["qg"] = 47280,	-- Lunk
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/7 Spiders riden
							["provider"] = { "n", 5856 },	-- Glassweb Spider
						}),
					},
				}),
				q(27956, {	-- Lunk's Task
					["qg"] = 47269,	-- Lunk
					["coord"] = { 68.9, 53.2, SEARING_GORGE },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/15 Tempered Flywheel
							["provider"] = { "i", 62805 },	-- Tempered Flywheel
							["cr"] = 5853,	-- Tempered War Golem
						}),
					},
				}),
				q(27984, {	-- Lunthistle's Tale
					["sourceQuests"] = {
						27976,	-- Curse These Fat Fingers
						27977,	-- Recon Essentials
					},
					["qg"] = 8436,	-- Zamael Lunthistle
					["coord"] = { 29.6, 26.2, SEARING_GORGE },
					["timeline"] = { ADDED_4_0_3 },
				}),
				q(28061, {	-- Minions of Calcinder
					["sourceQuest"] = 28060,	-- Twisted Twilight Ties
					["qg"] = 14625,	-- Overseer Oilfist
					["coord"] = { 50.0, 39.0, SEARING_GORGE },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/6 Searing Flamewraith slain
							["provider"] = { "n", 47463 },	-- Searing Flamewraith <Minion of Calcinder>
						}),
					},
				}),
				q(28514, {	-- Mouton Flamestar (A)
					["qg"] = 14625,	-- Overseer Oilfist
					["coord"] = { 38.1, 27.0, SEARING_GORGE },
					["timeline"] = { ADDED_4_0_3 },
					["maps"] = { BURNING_STEPPES },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
				}),
				q(28515, {	-- Mouton Flamestar (H)
					["qg"] = 14625,	-- Overseer Oilfist
					["coord"] = { 38.1, 27.0, SEARING_GORGE },
					["timeline"] = { ADDED_4_0_3 },
					["maps"] = { BURNING_STEPPES },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
				}),
				q(28052, {	-- Operation: Stir the Cauldron
					["sourceQuest"] = 28035,	-- The Mountain-Lord's Support
					["qg"] = 14625,	-- Overseer Oilfist
					["coord"] = { 38.1, 27.0, SEARING_GORGE },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- Secure entrance into the Slag Pit
							["provider"] = { "n", 47467 },	-- Brotherhood Flying Machine
						}),
						i(63236, {	-- Mountain-Lord's Legguards
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(63235, {	-- Slag Pit Bracers
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(63234, {	-- Dancer's Belt
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(27961, {	-- Out of Place
					["sourceQuest"] = 27960,	-- The Fewer, the Better
					["qg"] = 47267,	-- Burrian Coalpart
					["coord"] = { 68.4, 53.2, SEARING_GORGE },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/8 Ash Chicken
							["provider"] = { "i", 62934 },	-- Ash Chicken
							["cr"] = 47278,	-- Ash Chicken
						}),
						i(63215, {	-- Coalpart's Bracers
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(63214, {	-- Mercy Killing Helm
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(63213, {	-- Fuzzy Headcover
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(63212, {	-- Ash Feather Cloak
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(3377, {	-- Prayer to Elune (1/2)
					["qg"] = 8436,	-- Zamael Lunthistle
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 40,
				}),
				q(3378, {	-- Prayer to Elune (2/2)
					["sourceQuest"] = 3377,	-- Prayer to Elune (1/2)
					["qg"] = 8436,	-- Zamael Lunthistle
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { DARNASSUS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 40,
					["groups"] = {
						objective(1, {	-- 0/1 Prayer to Elune
							["provider"] = { "i", 10458 },	-- Prayer to Elune
							["crs"] = {
								5860,	-- Twilight Dark Shaman
								5861,	-- Twilight Fire Guard
								5862,	-- Twilight Geomancer
								8419,	-- Twilight Idolater
							},
						}),
						i(10745, {	-- Kaylari Shoulders
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(10746, {	-- Runesteel Vambraces
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(27985, {	-- Prayer to Elune
					["sourceQuest"] = 27984,	-- Lunthistle's Tale
					["qg"] = 8436,	-- Zamael Lunthistle
					["coord"] = { 29.6, 26.2, SEARING_GORGE },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/1 Prayer to Elune
							["provider"] = { "i", 10458 },	-- Prayer to Elune
							["crs"] = {
								5860,	-- Twilight Dark Shaman
								5861,	-- Twilight Fire Guard
								5862,	-- Twilight Geomancer
								8419,	-- Twilight Idolater
							},
						}),
					},
				}),
				q(3182, {	-- Proof of Deed
					["sourceQuest"] = 3181,	-- The Horn of the Beast
					["providers"] = {
						{ "n", 3836 },	-- Mountaineer Pebblebitty
						{ "i", 10005 },	-- Margol's Gigantic Horn
					},
					["coord"] = { 18.2, 84.0, LOCH_MODAN },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 40,
				}),
				q(28099, {	-- Rasha'krak
					["sourceQuest"] = 27965, -- Thorium Point: The Seat of the Brotherhood
					["qg"] = 14625,	-- Overseer Oilfist
					["coord"] = { 38.1, 26.9, SEARING_GORGE },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/1 Rasha'krak's Bracers of Binding
							["provider"] = { "i", 63028 },	-- Rasha'krak's Bracers of Binding
							["cr"] = 47553,	-- Rasha'krak <Minion of Calcinder>
						}),
					},
				}),
				q(27977, {	-- Recon Essentials
					["sourceQuest"] = 27965, -- Thorium Point: The Seat of the Brotherhood
					["qg"] = 14626,	-- Taskmaster Scrange
					["coord"] = { 36.1, 28.2, SEARING_GORGE },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/1 Smithing Tuyere
							["provider"] = { "i", 18959 },	-- Smithing Tuyere
							["cr"] = 5840,	-- Dark Iron Steamsmith
						}),
						objective(2, {	-- 0/1 Lookout's Spyglass
							["provider"] = { "i", 18960 },	-- Lookout's Spyglass
							["cr"] = 8566,	-- Dark Iron Lookout
						}),
						i(63222, {	-- Steamsmith Helm
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(63221, {	-- Taskmaster's Loop
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(63220, {	-- Essential Pantaloons
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(63219, {	-- Mantle of the White Sheep
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(3372, {	-- Release Them
					["sourceQuest"] = 3371,	-- Dwarven Justice
					["providers"] = {
						{ "o", 148498 },	-- Altar of Suntara
						{ "n",   8417 },	-- Dying Archaeologist
					},
					["coord"] = { 41.2, 25.6, SEARING_GORGE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 40,
					["groups"] = {
						objective(1, {	-- 0/1 Mysterious Artifact
							["providers"] = {
								{ "i",  10442 },	-- Mysterious Artifact
								{ "o", 148506 },	-- Twilight Artifact
							},
							["coord"] = { 29.2, 25.9, SEARING_GORGE },
						}),
					},
				}),
				q(8242, {	-- Restoring Fiery Flux Supplies via Heavy Leather
					["sourceQuest"] = 7722,	-- What the Flux?
					["qg"] = 14624,	-- Master Smith Burninate
					["coord"] = { 38.8, 28.5, SEARING_GORGE },
					["minReputation"] = { FACTION_THORIUM_BROTHERHOOD, NEUTRAL },	-- Thorium Brotherhood, Neutral.
					["maxReputation"] = { FACTION_THORIUM_BROTHERHOOD, FRIENDLY },	-- Thorium Brotherhood, Friendly.
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = {
						{ "i", 18944, 2 },	-- Incendosaur Scale
						{ "i", 4234, 10 },	-- Heavy Leather
						{ "i", 3857, 1 },	-- Coal
					},
					["repeatable"] = true,
					["lvl"] = 45,
				}),
				q(8241, {	-- Restoring Fiery Flux Supplies via Iron
					["sourceQuest"] = 7722,	-- What the Flux?
					["qg"] = 14624,	-- Master Smith Burninate
					["coord"] = { 38.8, 28.5, SEARING_GORGE },
					["minReputation"] = { FACTION_THORIUM_BROTHERHOOD, NEUTRAL },	-- Thorium Brotherhood, Neutral.
					["maxReputation"] = { FACTION_THORIUM_BROTHERHOOD, FRIENDLY },	-- Thorium Brotherhood, Friendly.
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = {
						{ "i", 18944, 2 },	-- Incendosaur Scale
						{ "i", 3575, 4 },	-- Iron Bar
						{ "i", 3857, 1 },	-- Coal
					},
					["repeatable"] = true,
					["lvl"] = 45,
				}),
				q(7736, {	-- Restoring Fiery Flux Supplies via Kingsblood
					["sourceQuest"] = 7722,	-- What the Flux?
					["qg"] = 14624,	-- Master Smith Burninate
					["coord"] = { 38.8, 28.5, SEARING_GORGE },
					["minReputation"] = { FACTION_THORIUM_BROTHERHOOD, NEUTRAL },	-- Thorium Brotherhood, Neutral.
					["maxReputation"] = { FACTION_THORIUM_BROTHERHOOD, FRIENDLY },	-- Thorium Brotherhood, Friendly.
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = {
						{ "i", 18944, 2 },	-- Incendosaur Scale
						{ "i", 3356, 4 },	-- Kingsblood
						{ "i", 3857, 1 },	-- Coal
					},
					["repeatable"] = true,
					["lvl"] = 45,
				}),
				q(3566, {	-- Rise, Obsidion!
					["sourceQuest"] = 3372,	-- Release Them
					["qg"] = 8417,	-- Dying Archaeologist
					["coord"] = { 41.2, 25.6, SEARING_GORGE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 40,
					["groups"] = {
						objective(1, {	-- 0/1 Head of Lathoric the Black
							["provider"] = { "i", 10447 },	-- Head of Lathoric the Black
							["coord"] = { 41.6, 26.6, SEARING_GORGE },
							["cr"] = 8391,	-- Lathoric the Black
						}),
						objective(2, {	-- 0/1 Heart of Obsidion
							["provider"] = { "i", 10446 },	-- Heart of Obsidion
							["coord"] = { 42.6, 27.0, SEARING_GORGE },
							["cr"] = 8400,	-- Obsidion
						}),
						i(10740, {	-- Centurion Legplates
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(10741, {	-- Lordrec Helmet
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(10739, {	-- Ring of Fortitude
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(28056, {	-- Rise, Obsidion
					["sourceQuest"] = 28052,	-- Operation: Stir the Cauldron
					["qg"] = 47393,	-- Mountain-Lord Rendan
					["coord"] = { 40.8, 51.6, SEARING_GORGE },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/1 Obsidion slain
							["provider"] = { "n", 8400 },	-- Obsidion
							["coord"] = { 41.4, 24.4, SEARING_GORGE },
						}),
						objective(2, {	-- 0/1 Lathoric the Black slain
							["provider"] = { "n", 8391 },	-- Lathoric the Black
							["coord"] = { 41.2, 25.6, SEARING_GORGE },
						}),
						i(63240, {  -- Dark Iron Axe
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(63239, {  -- Belt of Turning Tides
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(63238, {  -- Suntara Spaulders
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(63237, {  -- Sootsmoke Wand
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(156936, {	-- Dark Iron Pike
							["timeline"] = { ADDED_7_3_5 },
						}),
					},
				}),
				q(3463, {	-- Set Them Ablaze!
					["sourceQuest"] = 3462,	-- Squire Maltrake
					["qg"] = 8509,	-- Squire Maltrake
					["coord"] = { 39.1, 39.1, SEARING_GORGE },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 40,
					["groups"] = {
						objective(1, {	-- Western Tower Ablaze
							["providers"] = {
								{ "i",  10515 },	-- Torch of Retribution
								{ "o", 149025 },	-- Sentry Brazier
							},
							["coord"] = { 33, 60, SEARING_GORGE },
						}),
						objective(2, {	-- Southern Tower Ablaze
							["providers"] = {
								{ "i",  10515 },	-- Torch of Retribution
								{ "o", 149030 },	-- Sentry Brazier
							},
							["coord"] = { 44, 60, SEARING_GORGE },
						}),
						objective(3, {	-- Eastern Tower Ablaze
							["providers"] = {
								{ "i",  10515 },	-- Torch of Retribution
								{ "o", 149031 },	-- Sentry Brazier
							},
							["coord"] = { 50, 55, SEARING_GORGE },
						}),
						objective(4, {	-- Northern Tower Ablaze
							["providers"] = {
								{ "i",  10515 },	-- Torch of Retribution
								{ "o", 149032 },	-- Sentry Brazier
							},
							["coord"] = { 33, 54, SEARING_GORGE },
						}),
						i(10742, {	-- Dragonflight Leggings
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(10743, {	-- Drakefire Headguard
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(10744, {	-- Axe of the Ebon Drake
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(28029, {	-- Set Them Ablaze!
					["sourceQuest"] = 27986,	-- In the Hall of the Mountain-Lord
					["qg"] = 47393,	-- Mountain-Lord Rendan
					["coord"] = { 39.4, 67.8, SEARING_GORGE },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- Western tower ablaze
							["providers"] = {
								{ "i",  10515 },	-- Torch of Retribution
								{ "o", 149032 },	-- Sentry Brazier
							},
							["coord"] = { 33.30, 54.48, SEARING_GORGE },
						}),
						objective(2, {	-- Southwestern tower ablaze
							["providers"] = {
								{ "i",  10515 },	-- Torch of Retribution
								{ "o", 149025 },	-- Sentry Brazier
							},
							["coord"] = { 35.66, 60.68, SEARING_GORGE },
						}),
						objective(3, {	-- Southeastern tower ablaze
							["providers"] = {
								{ "i",  10515 },	-- Torch of Retribution
								{ "o", 149030 },	-- Sentry Brazier
							},
							["coord"] = { 44.03, 60.93, SEARING_GORGE },
						}),
						objective(4, {	-- Eastern tower ablaze
							["providers"] = {
								{ "i",  10515 },	-- Torch of Retribution
								{ "o", 149031 },	-- Sentry Brazier
							},
							["coord"] = { 50.60, 54.90, SEARING_GORGE },
						}),
					},
				}),
				q(3379, {	-- Shadoweaver
					["qg"] = 8439,	-- Nilith Lokrav
					["coord"] = { 41.0, 75.0, SEARING_GORGE },
					["timeline"] = { REMOVED_4_0_3 },
					["requireSkill"] = TAILORING,
					["lvl"] = 40,
					["groups"] = {
						objective(1, {	-- 0/5 Shadowsilk Poacher slain
							["provider"] = { "n", 8442 },	-- Shadowsilk Poacher <The Undermarket>
						}),
						i(10461, {	-- Shadowy Bracers
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(28028, {	-- Siege!
					["sourceQuest"] = 27986,	-- In the Hall of the Mountain-Lord
					["qg"] = 47393,	-- Mountain-Lord Rendan
					["coord"] = { 39.4, 67.8, SEARING_GORGE },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/9 Dark Iron Marksman slain
							["provider"] = { "n", 8338 },	-- Dark Iron Marksman
						}),
					},
				}),
				q(28054, {	-- Slavery is Bad
					["sourceQuest"] = 28052,	-- Operation: Stir the Cauldron
					["qg"] = 47393,	-- Mountain-Lord Rendan
					["coord"] = { 40.8, 51.6, SEARING_GORGE },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/10 Dark Iron Taskmaster or Slaver slain
							["providers"] = {
								{ "n", 5844 },	-- Dark Iron Slaver
								{ "n", 5846 },	-- Dark Iron Taskmaster
								{ "n", 47533 },	-- Dark Iron Digmaster
							},
						}),
					},
				}),
				q(3462, {	-- Squire Maltrake
					["sourceQuest"] = 3454,	-- The Torch of Retribution
					["qg"] = 8479,	-- Kalaran Windblade
					["coord"] = { 39.1, 39.0, SEARING_GORGE },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 40,
				}),
				q(7728, {	-- STOLEN: Smithing Tuyere and Lookout's Spyglass
					["provider"] = { "o", 179827 },	-- Wanted/Missing/Lost & Found
					["coord"] = { 37.7, 26.5, SEARING_GORGE },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 45,
					["groups"] = {
						objective(1, {	-- 0/1 Smithing Tuyere
							["provider"] = { "i", 18959 },	-- Smithing Tuyere
							["cr"] = 5840,	-- Dark Iron Steamsmith
						}),
						objective(2, {	-- 0/1 Lookout's Spyglass
							["provider"] = { "i", 18960 },	-- Lookout's Spyglass
							["cr"] = 8566,	-- Dark Iron Lookout
						}),
						i(19124, {	-- Slagplate Leggings
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(19123, {	-- Everwarm Handwraps
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(3367, {	-- Suntara Stones (1/2)
					["qg"] = 8284,	-- Dorius Stonetender
					["coord"] = { 63.8, 60.8, SEARING_GORGE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 40,
				}),
				q(3368, {	-- Suntara Stones (2/2)
					-- #if BEFORE 4.0.3.13277
					["description"] = "The Singed Letter will be on the ground after you finish escorting Dorius Stonetender.",
					-- #endif
					["sourceQuest"] = 3367,	-- Suntara Stones (1/2)
					["providers"] = {
						{ "i",  10443 },	-- Singed Letter
						{ "o", 175704 },	-- Singed Letter
					},
					["coord"] = { 74.5, 19.3, SEARING_GORGE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 40,
				}),
				q(28055, {	-- Sweet, Horrible Freedom
					["sourceQuest"] = 28052,	-- Operation: Stir the Cauldron
					["qg"] = 47393,	-- Mountain-Lord Rendan
					["coord"] = { 40.8, 51.6, SEARING_GORGE },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/12 Slave Workers freed or killed
							["provider"] = { "n", 5843 },	-- Slave Worker
						}),
					},
				}),
				q(27960, {	-- The Fewer, the Better
					["qg"] = 47267,	-- Burrian Coalpart
					["coord"] = { 68.4, 53.2, SEARING_GORGE },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/10 Dark Iron Geologist or Watchman slain
							["providers"] = {
								{ "n", 5839 },	-- Dark Iron Geologist
								{ "n", 8637 },	-- Dark Iron Watchman
								{ "n", 47275 },	-- Dark Iron Footman
							},
						}),
					},
				}),
				q(3452, {	-- The Flame's Casing
					["sourceQuest"] = 3443,	-- Forging the Shaft
					["qg"] = 8479,	-- Kalaran Windblade
					["coord"] = { 39.1, 39.0, SEARING_GORGE },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 40,
					["groups"] = {
						objective(1, {	-- 0/1 Symbol of Ragnaros
							["provider"] = { "i", 10552 },	-- Symbol of Ragnaros
							["crs"] = {
								5860,	-- Twilight Dark Shaman
								5861,	-- Twilight Fire Guard
								5862,	-- Twilight Geomancer
								8419,	-- Twilight Idolater
							},
						}),
					},
				}),
				q(3442, {	-- The Flawless Flame
					["sourceQuest"] = 3441,	-- Divine Retribution
					["qg"] = 8479,	-- Kalaran Windblade
					["coord"] = { 39.1, 39.0, SEARING_GORGE },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 40,
					["groups"] = {
						objective(1, {	-- 0/4 Heart of Flame
							["provider"] = { "i", 10509 },	-- Heart of Flame
							["crs"] = {
								5850,	-- Blazing Elemental
								5852,	-- Inferno Elemental
								5855,	-- Magma Elemental
								8281,	-- Scald
							},
						}),
						objective(2, {	-- 0/4 Golem Oil
							["provider"] = { "i", 10511 },	-- Golem Oil
							["crs"] = {
								5854,	-- Heavy War Golem
								5855,	-- Magma Elemental
								5853,	-- Tempered War Golem
							},
						}),
					},
				}),
				q(3181, {	-- The Horn of the Beast
					["providers"] = {
						{ "i", 10000 },	-- Margol's Horn
						{ "i", 10005 },	-- Margol's Gigantic Horn
					},
					["coord"] = { 73.0, 77.2, SEARING_GORGE },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { LOCH_MODAN },
					["races"] = ALLIANCE_ONLY,
					["cr"] = 5833,	-- Margol the Rager
					["lvl"] = 40,
				}),
				q(4451, {	-- The Key to Freedom
					["providers"] = {
						{ "i", 11818 },	-- Grimesilt Outhouse Key
						{ "o", 173265 },	-- Wooden Outhouse
					},
					["timeline"] = { REMOVED_4_0_3 },
					["crs"] = {
						15692,	-- Dark Iron Kidnapper
						8566,	-- Dark Iron Lookout
						8504,	-- Dark Iron Sentry
						5844,	-- Dark Iron Slaver
						5840,	-- Dark Iron Steamsmith
						5846,	-- Dark Iron Taskmaster
					},
					["lvl"] = 43,
				}),
				q(28035, {	-- The Mountain-Lord's Support
					["sourceQuest"] = 28034,	-- Lunk's Adventure: Rendan's Weakness
					["qg"] = 47393,	-- Mountain-Lord Rendan
					["coord"] = { 39.4, 67.8, SEARING_GORGE },
					["timeline"] = { ADDED_4_0_3 },
				}),
				q(28032, {	-- The Mysteries of the Fire-Gizzard
					["sourceQuest"] = 27986,	-- In the Hall of the Mountain-Lord
					["qg"] = 47440,	-- Agnes Flimshale
					["coord"] = { 38.8, 68.9, SEARING_GORGE },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/6 Fire-Gizzard
							["provider"] = { "i", 62914 },	-- Fire-Bizzard
							["cr"] = 9318,	-- Incendosaur
						}),
						i(63233, {	-- Iron Summit Belt
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(63232, {	-- Incendosaur Gloves
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(63231, {	-- Lizard Skin Boots
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(63230, {	-- Fire-Gizzard Robes
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(27980, {	-- The Spiders Have to Go
					["qg"] = 14634,	-- Lookout Captain Lolo Longstriker
					["coord"] = { 37.7, 26.5, SEARING_GORGE },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/9 Lava Spider slain
							["providers"] = {
								{ "n", 5857 },	-- Searing Lava Spider
								{ "n", 5858 },	-- Greater Lava Spider
							},
						}),
					},
				}),
				q(3453, {	-- The Torch of Retribution (1/2)
					["sourceQuest"] = 3452,	-- The Flame's Casing
					["qg"] = 8479,	-- Kalaran Windblade
					["coord"] = { 39.1, 39.0, SEARING_GORGE },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 40,
				}),
				q(3454, {	-- The Torch of Retribution (2/2)
					["sourceQuest"] = 3453,	-- The Torch of Retribution (1/2)
					["providers"] = {
						{ "n",   8479 },	-- Velarok Windblade
						{ "o", 149047 },	-- Torch of Retribution
						{ "i",  10515 },	-- Torch of Retribution
					},
					["coord"] = { 39.1, 39.0, SEARING_GORGE },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 40,
				}),
				q(3385, {	-- The Undermarket (1/2)
					["sourceQuest"] = 3379,	-- Shadoweaver
					["qg"] = 8439,	-- Nilith Lokrav
					["coord"] = { 41.0, 75.0, SEARING_GORGE },
					["timeline"] = { REMOVED_4_0_3 },
					["requireSkill"] = TAILORING,
					["lvl"] = 40,
					["groups"] = {
						objective(1, {	-- 0/1 Trade Master Kovic slain
							["provider"] = { "n", 8444 },	-- Trade Master Kovic <The Undermarket>
							["coord"] = { 35.8, 52.6, SEARING_GORGE },
						}),
						objective(2, {	-- 0/1 Clunk slain
							["provider"] = { "n", 8447 },	-- Clunk <The Undermarket>
							["coord"] = { 35.8, 52.6, SEARING_GORGE },
						}),
						objective(3, {	-- 0/1 Trader's Satchel
							["provider"] = { "i", 10467 },	-- Trader's Satchel
							["coord"] = { 35.8, 52.6, SEARING_GORGE },
							["cr"] = 8444,	-- Trade Master Kovic <The Undermarket>
						}),
						i(10479, {	-- Kovic's Trading Satchel
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(10462, {	-- Shadowy Belt
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(3402, {	-- The Undermarket (2/2)
					["sourceQuest"] = 3385,	-- The Undermarket (1/2)
					["qg"] = 8439,	-- Nilith Lokrav
					["coord"] = { 41.0, 75.0, SEARING_GORGE },
					["timeline"] = { REMOVED_4_0_3 },
					["requireSkill"] = TAILORING,
					["lvl"] = 40,
					["groups"] = {
						i(10463, {	-- Pattern: Shadoweave Mask (RECIPE!)
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(28030, {	-- They Build a Better Bullet
					["sourceQuest"] = 27986,	-- In the Hall of the Mountain-Lord
					["qg"] = 47393,	-- Mountain-Lord Rendan
					["coord"] = { 39.4, 67.8, SEARING_GORGE },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/200 Dark Iron Bullet
							["providers"] = {
								{ "i",  62916 },	-- Dark Iron Bullet
								{ "o", 206659 },	-- Dark Iron Bullets
							},
							["crs"] = {
								8338,	-- Dark Iron Marksman
								8566,	-- Dark Iron Lookout
							},
						}),
						i(63229, {  -- K'Vlar Vest
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(63228, {  -- Rendan's Signet
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(63227, {  -- Dark Iron Gun
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(156937, {	-- Dark Iron Blackjack
							["timeline"] = { ADDED_7_3_5 },
						}),
						i(157009, {	-- Dark Iron Shank
							["timeline"] = { ADDED_7_3_5 },
						}),
						i(157010, {	-- Dark Iron Maul
							["timeline"] = { ADDED_7_3_5 },
						}),
					},
				}),
				q(27965, {	-- Thorium Point: The Seat of the Brotherhood
					["sourceQuests"] = {
						27964,	-- Dig-Boss Dinwhisker
						27957,	-- Lunk No Kill
					},
					["qg"] = 47266,	-- Jack Rockleg
					["coord"] = { 68.5, 53.4, SEARING_GORGE },
					["timeline"] = { ADDED_4_0_3 },
				}),
				q(3481, {	-- Trinkets...
					["sourceQuest"] = 3463,	-- Set Them Ablaze!
					["providers"] = {
						{ "o", 149502 },	-- Hoard of the Black Dragonflight
						{ "i",  10569 },	-- Hoard of the Black Dragonflight
					},
					["coord"] = { 39.0, 38.9, SEARING_GORGE },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 40,
					["groups"] = {
						i(10575, {	-- Black Dragonflight Molt
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(27982, {	-- Twilight Collars
					["sourceQuests"] = {
						27976,	-- Curse These Fat Fingers
						27977,	-- Recon Essentials
					},
					["qg"] = 14626,	-- Taskmaster Scrange
					["coord"] = { 36.0, 28.4, SEARING_GORGE },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/20 Twilight Collar
							["provider"] = { "i", 62822 },	-- Twilight Collar
							["crs"] = {
								5860,	-- Twilight Dark Shaman
								5861,	-- Twilight Fire Guard
								5862,	-- Twilight Geomancer
								8419,	-- Twilight Idolater
								47309,	-- Minister Kiyuubi
								47310,	-- Minister Letherio
								47311,	-- Minister Finister
							},
						}),
					},
				}),
				q(28060, {	-- Twisted Twilight Ties
					["sourceQuest"] = 28057,	-- Kill 'em With Sleep Deprivation
					["qg"] = 14626,	-- Taskmaster Scrange
					["coord"] = { 42.3, 34.5, SEARING_GORGE },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/1 Overseer Maltorius slain
							["provider"] = { "n", 14621 },	-- Overseer Maltorius
							["coord"] = { 41.2, 35.6, SEARING_GORGE },
						}),
						objective(2, {	-- 0/1 Twilight-Lord Arkkus slain
							["provider"] = { "n", 47460 },	-- Twilight-Lord Arkkus
							["coord"] = { 41.6, 35.6, SEARING_GORGE },
						}),
					},
				}),
				q(7701, {	-- WANTED: Overseer Maltorius
					["provider"] = { "o", 179827 },	-- Wanted/Missing/Lost & Found
					["coord"] = { 37.7, 26.5, SEARING_GORGE },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 45,
					["groups"] = {
						objective(1, {	-- 0/1 Head of Overseer Maltorius
							["provider"] = { "i", 18946 },	-- Head of Overseer Maltorius
							["coord"] = { 41.8, 35.4, SEARING_GORGE },
							["cr"] = 14621,	-- Overseer Maltorius
						}),
						i(19128, {	-- Seared Mail Vest
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(19127, {	-- Charred Leather Tunic
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				warchiefscommand(q(28581, {	-- Warchief's Command: Searing Gorge!
					["timeline"] = { ADDED_4_0_3 },
					["maps"] = { SILVERMOON_CITY, UNDERCITY },	-- Only found in Silvermoon City & Undercity in Cataclysm.
					["isBreadcrumb"] = true,
					-- #if BEFORE 7.3.5
					-- Cataclysm: Minimum is level 47. (TODO: Confirm this.)
					-- Cataclysm: Maximum is level 48. (TODO: Test max level)
					["lvl"] = { 47, 48 },
					-- #endif
				})),
				q(28064, {	-- Welcome to the Brotherhood
					["sourceQuest"] = 28062,	-- From Whence He Came
					["qg"] = 14625,	-- Overseer Oilfist <The Thorium Brotherhood>
					["coord"] = { 38.2, 27.0, SEARING_GORGE },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						i(63244, {	-- Pauldrons of the Thorium Brotherhood
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(63243, {	-- Hammer of the Thorium Brotherhood
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(63242, {	-- Amulet of the Thorium Brotherhood
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(7722, {	-- What the Flux?
					["qg"] = 14624,	-- Master Smith Burninate
					["coord"] = { 38.8, 28.5, SEARING_GORGE },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 45,
					["groups"] = {
						objective(1, {	-- 0/1 Secret Plans: Fiery Flux
							["providers"] = {
								{ "i",  18922 },	-- Secret Plans: Fiery Flux
								{ "o", 179826 },	-- Secret Plans: Fiery Flux
							},
							["coord"] = { 40.6, 35.7, SEARING_GORGE },
						}),
					},
				}),
			}),
			n(RARES, {
				n(50876, {	-- Avis
					["timeline"] = { ADDED_5_1_0 },
					["coord"] = { 71.6, 19.2, SEARING_GORGE },
				}),
				n(50948, {	-- Crystalback
					["timeline"] = { ADDED_5_2_0 },
					["coords"] = {
						{ 66.0, 47.2, SEARING_GORGE },
						{ 65.2, 45.0, SEARING_GORGE },
						{ 66.8, 43.8, SEARING_GORGE },
					},
				}),
				n(8279, {	-- Faulty War Golem
					["coords"] = {
						-- #if AFTER CATA
						{ 58.0, 56.4, SEARING_GORGE },
						{ 62.2, 59.6, SEARING_GORGE },
						{ 63.0, 63.0, SEARING_GORGE },
						-- #else
						{ 34.0, 47.8, SEARING_GORGE },
						{ 33.2, 63.8, SEARING_GORGE },
						{ 44.2, 42.4, SEARING_GORGE },
						{ 48.6, 67.6, SEARING_GORGE },
						{ 60.0, 57.8, SEARING_GORGE },
						-- #endif
					},
				}),
				n(8282, {	-- Highlord Mastrogonde
					["coords"] = {
						-- #if AFTER CATA
						{ 29.6, 26.0, SEARING_GORGE },
						-- #else
						{ 14.6, 39.4, SEARING_GORGE },
						{ 30.6, 26.8, SEARING_GORGE },
						-- #endif
					},
				}),
				n(50946, {	-- Hogzilla
					["timeline"] = { ADDED_5_2_0 },
					["coord"] = { 21.1, 79.5, SEARING_GORGE },
				}),
				n(8277, {	-- Rekk'tilac
					["coords"] = {
						-- #if AFTER CATA
						{ 29.2, 67.8, SEARING_GORGE },
						{ 31.8, 73.2, SEARING_GORGE },
						-- #else
						{ 35.8, 25.8, SEARING_GORGE },
						{ 30.2, 72.0, SEARING_GORGE },
						{ 58.2, 24.6, SEARING_GORGE },
						{ 52.8, 71.2, SEARING_GORGE },
						{ 62.8, 71.6, SEARING_GORGE },
						{ 70.6, 75.6, SEARING_GORGE },
						-- #endif
					},
				}),
				n(51048, {	-- Rexxus
					["timeline"] = { ADDED_5_2_0 },
					["coords"] = {
						{ 42.8, 47.2, SEARING_GORGE },
						{ 40.4, 50.6, SEARING_GORGE },
						{ 39.4, 50.6, SEARING_GORGE },
					},
				}),
				n(8281, {	-- Scald
					["coords"] = {
						-- #if AFTER CATA
						{ 41.0, 57.6, SEARING_GORGE },
						-- #else
						{ 37.0, 54.2, SEARING_GORGE },
						{ 49.6, 49.6, SEARING_GORGE },
						{ 51.6, 46.4, SEARING_GORGE },
						{ 54.8, 45.6, SEARING_GORGE },
						{ 57.2, 44.6, SEARING_GORGE },
						{ 59.4, 41.4, SEARING_GORGE },
						-- #endif
					},
				}),
				n(51002, {	-- Scorpoxx
					["timeline"] = { ADDED_5_1_0 },
					["coord"] = { 18.4, 38.8, SEARING_GORGE },
				}),
				n(8280, {	-- Shleipnarr
					["coords"] = {
						-- #if AFTER CATA
						{ 57.4, 43.4, SEARING_GORGE },
						{ 56.6, 46.6, SEARING_GORGE },
						-- #else
						{ 66.0, 37.4, SEARING_GORGE },
						{ 67.0, 39.6, SEARING_GORGE },
						{ 63.6, 51.2, SEARING_GORGE },
						{ 58.4, 52.0, SEARING_GORGE },
						{ 55.6, 58.8, SEARING_GORGE },
						{ 50.6, 61.4, SEARING_GORGE },
						-- #endif
					},
				}),
				n(8283, {	-- Slave Master Blackheart
					["coords"] = {
						-- #if AFTER CATA
						{ 38.0, 44.4, SEARING_GORGE },
						-- #else
						{ 41.8, 24.0, SEARING_GORGE },
						{ 46.6, 25.2, SEARING_GORGE },
						{ 41.6, 35.6, SEARING_GORGE },
						{ 45.6, 38.8, SEARING_GORGE },
						{ 41.6, 44.8, SEARING_GORGE },
						-- #endif
					},
				}),
				n(50846, {	-- Slavermaw
					["timeline"] = { ADDED_5_2_0 },
					["coord"] = { 58.7, 22.5, SEARING_GORGE },
				}),
				n(8278, {	-- Smoldar
					["coords"] = {
						-- #if AFTER CATA
						{ 49.1, 37.4, SEARING_GORGE },
						-- #else
						{ 30.0, 50.8, SEARING_GORGE },
						{ 29.2, 60.8, SEARING_GORGE },
						-- #endif
					},
				}),
				n(51010, {	-- Snips
					["timeline"] = { ADDED_5_1_0 },
					["coord"] = { 35.0, 52.0, SEARING_GORGE },
				}),
			}),
			n(TREASURES, {
				o(207500, {	-- Dark Iron Treasure Chest
					["timeline"] = { ADDED_4_0_3 },
					["modelScale"] = 1.5,
					["coords"] = {
						{ 73.6, 82.2, SEARING_GORGE },
						{ 63.6, 60.5, SEARING_GORGE },
						{ 49.0, 55.5, SEARING_GORGE },
						{ 49.4, 39.5, SEARING_GORGE },
						{ 44.0, 33.5, SEARING_GORGE },
						{ 37.9, 37.4, SEARING_GORGE },
						{ 40.4, 50.5, SEARING_GORGE },
						{ 38.9, 66.3, SEARING_GORGE },
						{ 36.9, 60.0, SEARING_GORGE },
						{ 33.2, 54.0, SEARING_GORGE },
						{ 17.8, 38.3, SEARING_GORGE },
						{ 14.5, 37.0, SEARING_GORGE },
					},
					["groups"] = {
						i(1718),	-- Basilisk Hide Pants
						i(13109),	-- Blackflame Cape
						i(13043),	-- Blade of the Titans
						i(13102),	-- Cassandra's Grace
						i(13199),	-- Crushridge Bindings
						i(9434),	-- Elemental Raiment
						i(13125),	-- Elven Chain Boots
						i(13018),	-- Executioner's Cleaver
						i(9433),	-- Forgotten Wraps
						i(13100),	-- Furen's Boots
						i(13074),	-- Golem Shard Leggings
						i(13139),	-- Guttbuster
						i(13026),	-- Heaven's Light
						i(13128),	-- High Bergg Helm
						i(13064),	-- Jaina's Firestarter
						i(13082),	-- Mountainside Buckler
						i(4090),	-- Mug O' Hurt
						i(13068),	-- Obsidian Greaves
						i(13071),	-- Plated Fist of Hakoo
						i(1715),	-- Polished Jazeraint Armor
						i(13115),	-- Sheepshear Mantle
						i(754),	-- Shortsword of Vengeance
						i(13132),	-- Skeletal Shoulders
						i(13039),	-- Skull Splitting Crossbow
						i(13042),	-- Sword of the Magistrate
						i(1720),	-- Tanglewood Staff
						i(13138),	-- The Silencer
						i(13065),	-- Wand of Allistarj
						i(4091),	-- Widowmaker
						i(13112),	-- Winged Helm
						i(13051),	-- Witchfury
					},
				}),
			}),
			-- #if AFTER 7.1.5.23360
			n(TREASURES, {
				o(266289, {	-- Time Lost Chest
					["description"] = "Kill Searing Flamewraiths until you get Lava Oil. Do not use it yet. Go to the metal bridge before the Quarry Gate. The Time Lost Chest is in the lava below in the alcove. Use the Fire Oil, jump down, open the chest, and hearth.",
					["coord"] = { 37.0, 48.9, SEARING_GORGE },
					["timeline"] = { ADDED_7_1_5 },
					["cost"] = { { "i", 142359, 1 } },	-- Lava Oil
					["groups"] = {
						i(142358, {	-- Plans: Blazing Rapier (RECIPE!)
							["timeline"] = { ADDED_7_1_5 },
						}),
					},
				}),
			}),
			-- #endif
			-- #if SEASON_OF_DISCOVERY
			n(TREASURES, {
				applyclassicphase(SOD_PHASE_FOUR, i(226414, {	-- Rune of Fire Specialization
					["provider"] = { "o", 457097 },	-- Elements for Dummies Volume II: Fire
					["timeline"] = { ADDED_1_15_3 },
					["coord"] = { 40.5, 35.5, SEARING_GORGE },
					["classes"] = { HUNTER, SHAMAN, MAGE, WARLOCK },
					["groups"] = {
						recipe(453696, {	-- Engrave Ring - Fire Specialization
							["classes"] = { HUNTER, SHAMAN, MAGE, WARLOCK },
						}),
					},
				})),
			}),
			-- #endif
			n(ZONE_DROPS, {
				i(62916, {	-- Dark Iron Bullet
					["timeline"] = { ADDED_4_0_3 },
					["crs"] = {
						8338,	-- Dark Iron Marksman
						8566,	-- Dark Iron Lookout
					},
					["description"] = "In addition to being looted, this item can also be passively obtained by being attacked by said creatures. Required for the quest 'They Build a Better Bullet', is otherwise safe to discard.",
				}),
				i(18944, {	-- Incendosaur Scale
					["cr"] = 9318,	-- Incendosaur
				}),
				i(142359, {	-- Lava Oil
					["coord"] = { 48.0, 42.3, SEARING_GORGE },
					["timeline"] = { ADDED_7_1_5 },
					["cr"] = 47463,	-- Searing Flamewraith
				}),
				i(14476, {	-- Pattern: Cindercloth Gloves (RECIPE!)
					-- Started dropping again in 8.2. The new version (167887) is also available from Time-Lost Trader
					["timeline"] = { REMOVED_4_0_3, ADDED_8_2_0 },
					["cr"] = 5861,	-- Twilight Fire Guard
					["coords"] = {
						{ 19.4, 36.6, SEARING_GORGE },
						{ 25.4, 25.4, SEARING_GORGE },
					},
				}),
				i(14471, {	-- Pattern: Cindercloth Vest (RECIPE!)
					-- Started dropping again in 8.2. The new version (167886) is also available from Time-Lost Trader
					["timeline"] = { REMOVED_4_0_3, ADDED_8_2_0 },
					["cr"] = 5861,	-- Twilight Fire Guard
					["coords"] = {
						{ 19.4, 36.6, SEARING_GORGE },
						{ 25.4, 25.4, SEARING_GORGE },
					},
				}),
				i(10463, {	-- Pattern: Shadoweave Mask (RECIPE!)
					["description"] = "Required for the |cff3399ffLucid Nightmare|r mount.",
					["timeline"] = { ADDED_7_3_0 },
					["cr"] = 5840,	-- Dark Iron Steamsmith
				}),
				applyclassicphase(PHASE_FIVE_RECIPES, i(21547, {	-- Recipe: Elixir of Greater Firepower (RECIPE!)
					["crs"] = {
						5844,	-- Dark Iron Slaver
						5846,	-- Dark Iron Taskmaster
						8637,	-- Dark Iron Watchman
					},
					["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
					["coords"] = {
						{ 41.6, 42.2, SEARING_GORGE },
						{ 37.0, 42.8, SEARING_GORGE },
						{ 43.6, 27.6, SEARING_GORGE },
						{ 39.0, 50.8, SEARING_GORGE },
						{ 63.6, 59.0, SEARING_GORGE },
						{ 65.4, 65.6, SEARING_GORGE },
					},
				})),
				i(2274, {	-- Sapper's Gloves
					["timeline"] = { ADDED_10_1_7 },
					["cr"] = 5840,	-- Dark Iron Steamsmith
					["coords"] = {
						{ 42.8, 51.6, SEARING_GORGE },
						{ 38.0, 49.8, SEARING_GORGE },
					},
				}),
			}),
		},
	}),
}));
