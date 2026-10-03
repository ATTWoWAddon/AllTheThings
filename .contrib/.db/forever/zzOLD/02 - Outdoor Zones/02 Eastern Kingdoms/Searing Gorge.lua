---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(MAP.EASTERN_KINGDOMS, {
	m(MAP.SEARING_GORGE, {
		["lore"] = "Just as Blackrock orcs and their allies dominate Burning Steppes, so Dark Iron dwarves dominate the Searing Gorge. A large population of Dark Iron dwarves, War Golems, and Elementals resides in this dark, mountainous area.\n\nThe climate is very similar to Burning Steppes, as it was the same catastrophe that blackened both: the summoning of Ragnaros. The Searing Gorge is a part of Khaz Modan. Before being shattered by the summoning it was a mountainous region, part of the Redridge Mountains.\n\nLarge mining operations take place in The Cauldron, a giant excavation site forming a huge rift in the middle of the Searing Gorge. The Slag Pit lies within The Cauldron and is an underground mining site rich with multiple types of ore. The mining work is mainly done by slave labor, which consists for the most part of captured enemies.\n\nEver since the Dark Iron dwarves' capital, Thaurissan, was destroyed by the summoning of Ragnaros, they have searched for a landmass to control for their filthy, industrious works. The Searing Gorge was the obvious choice due to a low military presence, scarce population, few settlements, and high vulnerability. The dwarven garrisons were soon overrun by a massive Dark Iron invasion which forced them to retreat to Loch Modan and seal the passage.",
		["icon"] = 236815,
		["groups"] = {
			n(ACHIEVEMENTS, {
				ach(774),	-- Explore Searing Gorge
			}),
			explorationHeader({
				exploration(1957),	-- Blackchar Cave
				exploration(1959),	-- Dustfire Valley
				exploration(1442),	-- Firewatch Ridge
				exploration(247),	-- Grimesilt Dig Site
				exploration(1958),	-- Tanner Camp
				exploration(246),	-- The Cauldron
				exploration(1444),	-- The Sea of Cinders
			}),
			n(FLIGHT_PATHS, {
				fp(74, {	-- Thorium Point, Searing Gorge
					["cr"] = 2941,	-- Lanie Reed <Gryphon Master>
					["coord"] = { 37.8, 30.6, MAP.SEARING_GORGE },
					["races"] = ALLIANCE_ONLY,
				}),
				fp(75, {	-- Thorium Point, Searing Gorge
					["cr"] = 3305,	-- Grisha <Wind Rider Master>
					["coord"] = { 34.8, 30.6, MAP.SEARING_GORGE },
					["races"] = HORDE_ONLY,
				}),
			}),
			lockpicking({
				o(179494, {	-- Dented Footlocker
					["coords"] = {
						{ 45.9, 28.3, MAP.SEARING_GORGE },
						{ 37.0, 39.8, MAP.SEARING_GORGE },
						{ 48.5, 43.1, MAP.SEARING_GORGE },
					},
					["requireSkill"] = LOCKPICKING,
					["learnedAt"] = 200,
				}),
			}),
			n(PROFESSIONS, {
				prof(LEATHERWORKING, {
					n(7868, {	-- Sarah Tanner <Master Elemental Leatherworker>
						["coord"] = { 63.6, 75.8, MAP.SEARING_GORGE },
						["races"] = ALLIANCE_ONLY,
						["groups"] = CLASSIC_TBC_ELEMENTAL,
					}),
				}),
			}),
			n(QUESTS, {
				q(3201, {	-- At Last!
					["sourceQuest"] = 3182,	-- Proof of Deed
					["providers"] = {
						{ "n", 8256 },	-- Curator Thorius
						{ "i", 10022 },	-- Proof of Deed
					},
					["coord"] = { 71.4, 16.2, MAP.IRONFORGE },
					["maps"] = { MAP.LOCH_MODAN },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 40,
					["groups"] = {
						i(5396),	-- Key to Searing Gorge
					},
				}),
				q(4449, {	-- Caught!
					["provider"] = { "o", 173265 },	-- Wooden Outhouse
					["coord"] = { 65.5, 62.2, MAP.SEARING_GORGE },
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
					["coord"] = { 38.6, 27.8, MAP.SEARING_GORGE },
					["lvl"] = 45,
					["groups"] = {
						objective(1, {	-- 0/20 Heavy War Golem
							["provider"] = { "n", 5854 },	-- Heavy War Golem
						}),
						i(19126),	-- Slagplate Gauntlets
					},
				}),
				q(3441, {	-- Divine Retribution
					["qg"] = 8479,	-- Kalaran Windblade
					["coord"] = { 39.1, 39.0, MAP.SEARING_GORGE },
					["lvl"] = 40,
					["groups"] = {
						objective(1, {	-- Velarok Story
							["provider"] = { "n", 8479 },	-- Velarok Windblade
							["coord"] = { 39.0, 39.0, MAP.SEARING_GORGE },
						}),
					},
				}),
				q(3371, {	-- Dwarven Justice
					["sourceQuest"] = 3368,	-- Suntara Stones (2/2)
					["qg"] = 8256,	-- Curator Thorius
					["coord"] = { 71.4, 16.2, MAP.IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 40,
				}),
				q(7724, {	-- Fiery Menace!
					["qg"] = 14627,	-- Hansel Heavyhands
					["coord"] = { 38.6, 27.8, MAP.SEARING_GORGE },
					["lvl"] = 45,
					["groups"] = {
						objective(1, {	-- 0/20 Greater Lava Spider
							["provider"] = { "n", 5858 },	-- Greater Lava Spider
						}),
						i(19125),	-- Seared Mail Girdle
					},
				}),
				q(3443, {	-- Forging the Shaft
					["sourceQuest"] = 3442,	-- The Flawless Flame
					["qg"] = 8479,	-- Kalaran Windblade
					["coord"] = { 39.1, 39.0, MAP.SEARING_GORGE },
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
				q(7737, {	-- Gaining Acceptance [Classic] / Gaining Even More Acceptance [Wrath+]
					["sourceQuests"] = {
						7722,	-- What the Flux?
					},
					["qg"] = 14624,	-- Master Smith Burninate
					["coord"] = { 38.8, 28.5, MAP.SEARING_GORGE },
					["minReputation"] = {
						FACTION_THORIUM_BROTHERHOOD, FRIENDLY,	-- Thorium Brotherhood, Friendly.
					},
					["maxReputation"] = {
						FACTION_THORIUM_BROTHERHOOD, HONORED,	-- Thorium Brotherhood, Honored.
					},
					["cost"] = {
						{ "i", 18945, 4 },	-- Dark Iron Residue
					},
					["repeatable"] = true,
					["lvl"] = 40,
				}),
				q(7727, {	-- Incendosaurs? Whateverosaur is More Like It
					["qg"] = 14627,	-- Hansel Heavyhands
					["coord"] = { 38.6, 27.8, MAP.SEARING_GORGE },
					["lvl"] = 45,
					["groups"] = {
						objective(1, {	-- 0/20 Incendosaur
							["provider"] = { "n", 9318 },	-- Incendosaur
						}),
						i(19141),	-- Luffa
					},
				}),
				q(7729, {	-- JOB OPPORTUNITY: Culling the Competition
					["provider"] = { "o", 179827 },	-- Wanted/Missing/Lost & Found
					["coord"] = { 37.7, 26.5, MAP.SEARING_GORGE },
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
				q(4450, {	-- Ledger from Tanaris
					["sourceQuest"] = 4449,	-- Caught!
					["provider"] = { "o", 173265 },	-- Wooden Outhouse
					["coord"] = { 65.5, 62.2, MAP.SEARING_GORGE },
					["maps"] = { MAP.DUSTWALLOW_MARSH, MAP.SWAMP_OF_SORROWS, MAP.TANARIS },
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
							["coord"] = { 54.1, 55.8, MAP.DUSTWALLOW_MARSH },
						}),
						objective(4, {	-- 0/1 Goodsteel's Balanced Flameberge
							["provider"] = { "i", 11723 },	-- Goodsteel's Balanced Flameberge
							["cr"] = 9916,	-- Jarquia
							["coords"] = {
								{ 94.4, 51.8, MAP.SWAMP_OF_SORROWS },
								{ 92.6, 65.6, MAP.SWAMP_OF_SORROWS },
							},
						}),
						i(11860),	-- Charged Lightning Rod
						i(11861),	-- Girdle of Reprisal
					},
				}),
				q(3377, {	-- Prayer to Elune (1/2)
					["qg"] = 8436,	-- Zamael Lunthistle
					["coord"] = { 29.6, 26.6, MAP.SEARING_GORGE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 40,
				}),
				q(3378, {	-- Prayer to Elune (2/2)
					["sourceQuest"] = 3377,	-- Prayer to Elune (1/2)
					["qg"] = 8436,	-- Zamael Lunthistle
					["coord"] = { 29.6, 26.6, MAP.SEARING_GORGE },
					["maps"] = { MAP.DARNASSUS },
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
						i(10745),	-- Kaylari Shoulders
						i(10746),	-- Runesteel Vambraces
					},
				}),
				q(3182, {	-- Proof of Deed
					["sourceQuest"] = 3181,	-- The Horn of the Beast
					["providers"] = {
						{ "n", 3836 },	-- Mountaineer Pebblebitty
						{ "i", 10005 },	-- Margol's Gigantic Horn
					},
					["coord"] = { 18.2, 84.0, MAP.LOCH_MODAN },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 40,
				}),
				q(3372, {	-- Release Them
					["sourceQuest"] = 3371,	-- Dwarven Justice
					["providers"] = {
						{ "o", 148498 },	-- Altar of Suntara
						{ "n",   8417 },	-- Dying Archaeologist
					},
					["coord"] = { 41.2, 25.6, MAP.SEARING_GORGE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 40,
					["groups"] = {
						objective(1, {	-- 0/1 Mysterious Artifact
							["providers"] = {
								{ "i",  10442 },	-- Mysterious Artifact
								{ "o", 148506 },	-- Twilight Artifact
							},
							["coord"] = { 29.2, 25.9, MAP.SEARING_GORGE },
						}),
					},
				}),
				q(8242, {	-- Restoring Fiery Flux Supplies via Heavy Leather
					["sourceQuest"] = 7722,	-- What the Flux?
					["qg"] = 14624,	-- Master Smith Burninate
					["coord"] = { 38.8, 28.5, MAP.SEARING_GORGE },
					["minReputation"] = { FACTION_THORIUM_BROTHERHOOD, NEUTRAL },	-- Thorium Brotherhood, Neutral.
					["maxReputation"] = { FACTION_THORIUM_BROTHERHOOD, FRIENDLY },	-- Thorium Brotherhood, Friendly.
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
					["coord"] = { 38.8, 28.5, MAP.SEARING_GORGE },
					["minReputation"] = { FACTION_THORIUM_BROTHERHOOD, NEUTRAL },	-- Thorium Brotherhood, Neutral.
					["maxReputation"] = { FACTION_THORIUM_BROTHERHOOD, FRIENDLY },	-- Thorium Brotherhood, Friendly.
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
					["coord"] = { 38.8, 28.5, MAP.SEARING_GORGE },
					["minReputation"] = { FACTION_THORIUM_BROTHERHOOD, NEUTRAL },	-- Thorium Brotherhood, Neutral.
					["maxReputation"] = { FACTION_THORIUM_BROTHERHOOD, FRIENDLY },	-- Thorium Brotherhood, Friendly.
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
					["coord"] = { 41.2, 25.6, MAP.SEARING_GORGE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 40,
					["groups"] = {
						objective(1, {	-- 0/1 Head of Lathoric the Black
							["provider"] = { "i", 10447 },	-- Head of Lathoric the Black
							["coord"] = { 41.6, 26.6, MAP.SEARING_GORGE },
							["cr"] = 8391,	-- Lathoric the Black
						}),
						objective(2, {	-- 0/1 Heart of Obsidion
							["provider"] = { "i", 10446 },	-- Heart of Obsidion
							["coord"] = { 42.6, 27.0, MAP.SEARING_GORGE },
							["cr"] = 8400,	-- Obsidion
						}),
						i(10740),	-- Centurion Legplates
						i(10741),	-- Lordrec Helmet
						i(10739),	-- Ring of Fortitude
					},
				}),
				q(3463, {	-- Set Them Ablaze!
					["sourceQuest"] = 3462,	-- Squire Maltrake
					["qg"] = 8509,	-- Squire Maltrake
					["coord"] = { 39.1, 39.1, MAP.SEARING_GORGE },
					["lvl"] = 40,
					["groups"] = {
						objective(1, {	-- Western Tower Ablaze
							["providers"] = {
								{ "i",  10515 },	-- Torch of Retribution
								{ "o", 149025 },	-- Sentry Brazier
							},
							["coord"] = { 33.0, 60.0, MAP.SEARING_GORGE },
						}),
						objective(2, {	-- Southern Tower Ablaze
							["providers"] = {
								{ "i",  10515 },	-- Torch of Retribution
								{ "o", 149030 },	-- Sentry Brazier
							},
							["coord"] = { 44.0, 60.0, MAP.SEARING_GORGE },
						}),
						objective(3, {	-- Eastern Tower Ablaze
							["providers"] = {
								{ "i",  10515 },	-- Torch of Retribution
								{ "o", 149031 },	-- Sentry Brazier
							},
							["coord"] = { 50.0, 55.0, MAP.SEARING_GORGE },
						}),
						objective(4, {	-- Northern Tower Ablaze
							["providers"] = {
								{ "i",  10515 },	-- Torch of Retribution
								{ "o", 149032 },	-- Sentry Brazier
							},
							["coord"] = { 33.0, 54.0, MAP.SEARING_GORGE },
						}),
						i(10742),	-- Dragonflight Leggings
						i(10743),	-- Drakefire Headguard
						i(10744),	-- Axe of the Ebon Drake
					},
				}),
				q(3379, {	-- Shadoweaver
					["qg"] = 8439,	-- Nilith Lokrav
					["coord"] = { 41.0, 75.0, MAP.SEARING_GORGE },
					["requireSkill"] = TAILORING,
					["lvl"] = 40,
					["groups"] = {
						objective(1, {	-- 0/5 Shadowsilk Poacher slain
							["provider"] = { "n", 8442 },	-- Shadowsilk Poacher <The Undermarket>
						}),
						i(10461),	-- Shadowy Bracers
					},
				}),
				q(3462, {	-- Squire Maltrake
					["sourceQuest"] = 3454,	-- The Torch of Retribution
					["qg"] = 8479,	-- Kalaran Windblade
					["coord"] = { 39.1, 39.0, MAP.SEARING_GORGE },
					["lvl"] = 40,
				}),
				q(7728, {	-- STOLEN: Smithing Tuyere and Lookout's Spyglass
					["provider"] = { "o", 179827 },	-- Wanted/Missing/Lost & Found
					["coord"] = { 37.7, 26.5, MAP.SEARING_GORGE },
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
						i(19124),	-- Slagplate Leggings
						i(19123),	-- Everwarm Handwraps
					},
				}),
				q(3367, {	-- Suntara Stones (1/2)
					["qg"] = 8284,	-- Dorius Stonetender
					["coord"] = { 63.8, 60.8, MAP.SEARING_GORGE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 40,
				}),
				q(3368, {	-- Suntara Stones (2/2)
					["description"] = "The Singed Letter will be on the ground after you finish escorting Dorius Stonetender.",
					["sourceQuest"] = 3367,	-- Suntara Stones (1/2)
					["providers"] = {
						{ "i",  10443 },	-- Singed Letter
						{ "o", 175704 },	-- Singed Letter
					},
					["coord"] = { 74.5, 19.3, MAP.SEARING_GORGE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 40,
				}),
				q(3452, {	-- The Flame's Casing
					["sourceQuest"] = 3443,	-- Forging the Shaft
					["qg"] = 8479,	-- Kalaran Windblade
					["coord"] = { 39.1, 39.0, MAP.SEARING_GORGE },
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
					["coord"] = { 39.1, 39.0, MAP.SEARING_GORGE },
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
					["coord"] = { 73.0, 77.2, MAP.SEARING_GORGE },
					["maps"] = { MAP.LOCH_MODAN },
					["races"] = ALLIANCE_ONLY,
					["cr"] = 5833,	-- Margol the Rager
					["lvl"] = 40,
				}),
				q(4451, {	-- The Key to Freedom
					["providers"] = {
						{ "i", 11818 },	-- Grimesilt Outhouse Key
						{ "o", 173265 },	-- Wooden Outhouse
					},
					["coord"] = { 65.6, 62.5, MAP.SEARING_GORGE },
					["lvl"] = 43,
				}),
				q(3453, {	-- The Torch of Retribution (1/2)
					["sourceQuest"] = 3452,	-- The Flame's Casing
					["qg"] = 8479,	-- Kalaran Windblade
					["coord"] = { 39.1, 39.0, MAP.SEARING_GORGE },
					["lvl"] = 40,
				}),
				q(3454, {	-- The Torch of Retribution (2/2)
					["sourceQuest"] = 3453,	-- The Torch of Retribution (1/2)
					["providers"] = {
						{ "n",   8479 },	-- Velarok Windblade
						{ "o", 149047 },	-- Torch of Retribution
						{ "i",  10515 },	-- Torch of Retribution
					},
					["coord"] = { 39.1, 39.0, MAP.SEARING_GORGE },
					["lvl"] = 40,
				}),
				q(3385, {	-- The Undermarket (1/2)
					["sourceQuest"] = 3379,	-- Shadoweaver
					["qg"] = 8439,	-- Nilith Lokrav
					["coord"] = { 41.0, 75.0, MAP.SEARING_GORGE },
					["requireSkill"] = TAILORING,
					["lvl"] = 40,
					["groups"] = {
						objective(1, {	-- 0/1 Trade Master Kovic slain
							["provider"] = { "n", 8444 },	-- Trade Master Kovic <The Undermarket>
							["coord"] = { 35.8, 52.6, MAP.SEARING_GORGE },
						}),
						objective(2, {	-- 0/1 Clunk slain
							["provider"] = { "n", 8447 },	-- Clunk <The Undermarket>
							["coord"] = { 35.8, 52.6, MAP.SEARING_GORGE },
						}),
						objective(3, {	-- 0/1 Trader's Satchel
							["provider"] = { "i", 10467 },	-- Trader's Satchel
							["coord"] = { 35.8, 52.6, MAP.SEARING_GORGE },
							["cr"] = 8444,	-- Trade Master Kovic <The Undermarket>
						}),
						i(10479),	-- Kovic's Trading Satchel
						i(10462),	-- Shadowy Belt
					},
				}),
				q(3402, {	-- The Undermarket (2/2)
					["sourceQuest"] = 3385,	-- The Undermarket (1/2)
					["qg"] = 8439,	-- Nilith Lokrav
					["coord"] = { 41.0, 75.0, MAP.SEARING_GORGE },
					["requireSkill"] = TAILORING,
					["lvl"] = 40,
					["groups"] = {
						i(10463),	-- Pattern: Shadoweave Mask (RECIPE!)
					},
				}),
				q(3481, {	-- Trinkets...
					["sourceQuest"] = 3463,	-- Set Them Ablaze!
					["providers"] = {
						{ "o", 149502 },	-- Hoard of the Black Dragonflight
						{ "i",  10569 },	-- Hoard of the Black Dragonflight
					},
					["coord"] = { 39.0, 38.9, MAP.SEARING_GORGE },
					["lvl"] = 40,
					["groups"] = {
						i(10575),	-- Black Dragonflight Molt
					},
				}),
				q(7701, {	-- WANTED: Overseer Maltorius
					["provider"] = { "o", 179827 },	-- Wanted/Missing/Lost & Found
					["coord"] = { 37.7, 26.5, MAP.SEARING_GORGE },
					["lvl"] = 45,
					["groups"] = {
						objective(1, {	-- 0/1 Head of Overseer Maltorius
							["provider"] = { "i", 18946 },	-- Head of Overseer Maltorius
							["coord"] = { 41.8, 35.4, MAP.SEARING_GORGE },
							["cr"] = 14621,	-- Overseer Maltorius
						}),
						i(19128),	-- Seared Mail Vest
						i(19127),	-- Charred Leather Tunic
					},
				}),
				q(7722, {	-- What the Flux?
					["qg"] = 14624,	-- Master Smith Burninate
					["coord"] = { 38.8, 28.5, MAP.SEARING_GORGE },
					["lvl"] = 45,
					["groups"] = {
						objective(1, {	-- 0/1 Secret Plans: Fiery Flux
							["providers"] = {
								{ "i",  18922 },	-- Secret Plans: Fiery Flux
								{ "o", 179826 },	-- Secret Plans: Fiery Flux
							},
							["coord"] = { 40.6, 35.7, MAP.SEARING_GORGE },
						}),
					},
				}),
			}),
			n(RARES, {
				n(8279, {	-- Faulty War Golem
					["coords"] = {
						{ 34.0, 47.8, MAP.SEARING_GORGE },
						{ 33.2, 63.8, MAP.SEARING_GORGE },
						{ 44.2, 42.4, MAP.SEARING_GORGE },
						{ 48.6, 67.6, MAP.SEARING_GORGE },
						{ 60.0, 57.8, MAP.SEARING_GORGE },
					},
				}),
				n(8282, {	-- Highlord Mastrogonde
					["coords"] = {
						{ 14.6, 39.4, MAP.SEARING_GORGE },
						{ 30.6, 26.8, MAP.SEARING_GORGE },
					},
				}),
				n(8277, {	-- Rekk'tilac
					["coords"] = {
						{ 35.8, 25.8, MAP.SEARING_GORGE },
						{ 30.2, 72.0, MAP.SEARING_GORGE },
						{ 58.2, 24.6, MAP.SEARING_GORGE },
						{ 52.8, 71.2, MAP.SEARING_GORGE },
						{ 62.8, 71.6, MAP.SEARING_GORGE },
						{ 70.6, 75.6, MAP.SEARING_GORGE },
					},
				}),
				n(8281, {	-- Scald
					["coords"] = {
						{ 37.0, 54.2, MAP.SEARING_GORGE },
						{ 49.6, 49.6, MAP.SEARING_GORGE },
						{ 51.6, 46.4, MAP.SEARING_GORGE },
						{ 54.8, 45.6, MAP.SEARING_GORGE },
						{ 57.2, 44.6, MAP.SEARING_GORGE },
						{ 59.4, 41.4, MAP.SEARING_GORGE },
					},
				}),
				n(8280, {	-- Shleipnarr
					["coords"] = {
						{ 66.0, 37.4, MAP.SEARING_GORGE },
						{ 67.0, 39.6, MAP.SEARING_GORGE },
						{ 63.6, 51.2, MAP.SEARING_GORGE },
						{ 58.4, 52.0, MAP.SEARING_GORGE },
						{ 55.6, 58.8, MAP.SEARING_GORGE },
						{ 50.6, 61.4, MAP.SEARING_GORGE },
					},
				}),
				n(8283, {	-- Slave Master Blackheart
					["coords"] = {
						{ 41.8, 24.0, MAP.SEARING_GORGE },
						{ 46.6, 25.2, MAP.SEARING_GORGE },
						{ 41.6, 35.6, MAP.SEARING_GORGE },
						{ 45.6, 38.8, MAP.SEARING_GORGE },
						{ 41.6, 44.8, MAP.SEARING_GORGE },
					},
				}),
				n(8278, {	-- Smoldar
					["coords"] = {
						{ 30.0, 50.8, MAP.SEARING_GORGE },
						{ 29.2, 60.8, MAP.SEARING_GORGE },
					},
				}),
			}),
			n(VENDORS, {
				n(14624, {	-- Master Smith Burninate <The Thorium Brotherhood>
					["coord"] = { 38.8, 28.5, MAP.SEARING_GORGE },
				}),
			}),
			n(ZONE_DROPS, {
				i(18944, {	-- Incendosaur Scale
					["cr"] = 9318,	-- Incendosaur
				}),
				i(11818, {	-- Grimesilt Outhouse Key
					["crs"] = {
						15692,	-- Dark Iron Kidnapper
						8566,	-- Dark Iron Lookout
						8504,	-- Dark Iron Sentry
						5844,	-- Dark Iron Slaver
						5840,	-- Dark Iron Steamsmith
						5846,	-- Dark Iron Taskmaster
					},
				}),
				i(14476, {	-- Pattern: Cindercloth Gloves (RECIPE!)
					["coords"] = {
						{ 19.4, 36.6, MAP.SEARING_GORGE },
						{ 25.4, 25.4, MAP.SEARING_GORGE },
					},
					["timeline"] = { ADDED_1_11_1 },
					["cr"] = 5861,	-- Twilight Fire Guard
				}),
				i(14471, {	-- Pattern: Cindercloth Vest (RECIPE!)
					["coords"] = {
						{ 19.4, 36.6, MAP.SEARING_GORGE },
						{ 25.4, 25.4, MAP.SEARING_GORGE },
					},
					["timeline"] = { ADDED_1_11_1 },
					["cr"] = 5861,	-- Twilight Fire Guard
				}),
				i(21547, {	-- Recipe: Elixir of Holy Power (RECIPE!)
					["coords"] = {
						{ 41.6, 42.2, MAP.SEARING_GORGE },
						{ 37.0, 42.8, MAP.SEARING_GORGE },
						{ 43.6, 27.6, MAP.SEARING_GORGE },
						{ 39.0, 50.8, MAP.SEARING_GORGE },
						{ 63.6, 59.0, MAP.SEARING_GORGE },
						{ 65.4, 65.6, MAP.SEARING_GORGE },
					},
					["timeline"] = { ADDED_1_11_1 },
					["crs"] = {
						5844,	-- Dark Iron Slaver
						5846,	-- Dark Iron Taskmaster
						8637,	-- Dark Iron Watchman
					},
				}),
			}),
		},
	}),
}));
