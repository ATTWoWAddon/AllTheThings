---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(EASTERN_KINGDOMS, {
	m(SWAMP_OF_SORROWS, {
		["lore"] = "The Swamp of Sorrows is a marshland in southern Eastern Kingdoms filled with green dragons serving Ysera. When the Dark Portal imploded during the Second War, The Black Morass was split in half--the northern part became the Swamp, while the southern half became the barren Blasted Lands.",
		["icon"] = 236845,
		["groups"] = {
			n(ACHIEVEMENTS, {
				explorationAch(782),	-- Explore Swamp of Sorrows
				ach(4904, {	-- Swamp of Sorrows Quests
					["timeline"] = { ADDED_4_0_3 },
					-- #if ANYCLASSIC
					["sourceQuests"] = {
						27600,	-- In With a Bang
						27849,	-- Assault on Stonard
						27851,	-- Cutting Supply
						27857,	-- We're Under Attack!
						24913,	-- Remember the Light
						27911,	-- With Dying Breath
						27914,	-- Blessing of the Green Dragonflight
					},
					-- #endif
				}),
			}),
			battlepets({
				["sym"] = {{"select","speciesID",
					403,	-- Parrot (PET!)
					401,	-- Strand Crab (PET!)
					420,	-- Toad (PET!)
					418,	-- Water Snake (PET!)
				}},
				["groups"] = {
					pet(648),	-- Huge Toad (PET!)
					pet(422),	-- Moccasin (PET!)
					pet(402),	-- Swamp Moth (PET!)
				},
			}),
			explorationHeader({
				-- #if AFTER CATA
				exploration(5458),	-- Bogpaddle
				-- #endif
				-- #if BEFORE CATA
				exploration(76),	-- Fallow Sanctuary
				exploration(1777),	-- Itharius's Cave
				-- #endif
				-- #if AFTER CATA
				exploration(5459),	-- Marshtide Watch
				-- #endif
				exploration(1978),	-- Misty Reed Post
				exploration(300),	-- Misty Reed Strand
				exploration(116),	-- Misty Valley
				exploration(74),	-- Pool of Tears
				-- #if AFTER CATA
				exploration(1777),	-- Purespring Cavern
				-- #endif
				exploration(1778),	-- Sorrowmurk
				exploration(1780),	-- Splinterspear Junction
				exploration(1797),	-- Stagalbog
				exploration(75),	-- Stonard
				-- #if AFTER CATA
				exploration(5460),	-- The Bloodmire
				-- #endif
				exploration(657),	-- The Harborage
				exploration(1798),	-- The Shifting Mire
			}),
			n(FLIGHT_PATHS, {
				fp(599, {	-- Bogpaddle, Swamp of Sorrows
					["cr"] = 43086,	-- Skeezie <Gryphon Master>
					["coord"] = { 72.0, 12.0, SWAMP_OF_SORROWS },
					["timeline"] = { ADDED_4_0_3 },
				}),
				fp(598, {	-- Marshtide Watch, Swamp of Sorrows
					["cr"] = 43087,	-- Paola Baldwin <Gryphon Master>
					["coord"] = { 70.0, 38.4, SWAMP_OF_SORROWS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				fp(56, {	-- Stonard, Swamp of Sorrows
					["cr"] = 6026,	-- Breyk <Wind Rider Master>
					["coords"] = {
						-- #if AFTER CATA
						{ 47.6, 55.0, SWAMP_OF_SORROWS },
						-- #else
						{ 46.0, 54.6, SWAMP_OF_SORROWS },
						-- #endif
					},
					["races"] = HORDE_ONLY,
				}),
				fp(600, {	-- The Harborage, Swamp of Sorrows
					["cr"] = 43088,	-- Yedrin <Flight Master>
					["coord"] = { 30.6, 34.6, SWAMP_OF_SORROWS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
			}),
			n(PROFESSIONS, {
				prof(ALCHEMY, {
					n(1386, {	-- Rogvar <Alchemy Trainer>
						["coord"] = { 49.8, 56.0, SWAMP_OF_SORROWS },
						["races"] = HORDE_ONLY,
						-- #if BEFORE 2.1.0
						["g"] = EXPERT_ARTISAN_ALCHEMY,
						-- #endif
					}),
				}),
				prof(FISHING, {
					-- #if AFTER CATA
					o(180751),	-- Floating Wreckage
					-- #endif
					o(180712, {	-- Stonescale Eel Swarm
						["maps"] ={
							SWAMP_OF_SORROWS,
							TANARIS,
							BLASTED_LANDS,
							THOUSAND_NEEDLES,
						},
					}),
				}),
				-- #if BEFORE CATA
				prof(SKINNING, {
					i(7392, {	-- Green Whelp Scale
						["crs"] = {
							740,	-- Adolescent Whelp
							741,	-- Dreaming Whelp
						},
					}),
				}),
				-- #endif
			}),
			n(QUESTS, {
				q(2801, {	-- A Tale of Sorrow
					["qg"] = 7572,	-- Fallen Hero of the Horde
					["allianceQuestData"] = {
						["sourceQuest"] = 2783,	-- Petty Squabbles (A)
					},
					["hordeQuestData"] = {
						["sourceQuest"] = 2623,	-- The Swamp Talker (H)
					},
					["coord"] = { 34.3, 66.2, SWAMP_OF_SORROWS },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 45,
				}),
				applyclassicphase(PHASE_FOUR_SUNKEN_TEMPLE_CLASS_QUESTS, q(8417, {	-- A Troubled Spirit
					["allianceQuestData"] = {
						["qgs"] = {
							7315,	-- Darnath Bladesinger <Warrior Trainer> (Darnassus)
							5113,	-- Kelv Sternhammer <Warrior Trainer> (Ironforge)
							5479,	-- Wu Shen <Warrior Trainer> (Stormwind City)
							-- #if AFTER TBC
							17120,	-- Behomat <Warrior Trainer> (The Exodar)
							-- #endif
						},
						["coords"] = {
							{ 58.6, 35.6, DARNASSUS },
							{ 70.6, 90.6, IRONFORGE },
							{ 78.8, 45.6, STORMWIND_CITY },
							-- #if AFTER TBC
							{ 55.6, 82.3, THE_EXODAR },
							-- #endif
						},
					},
					["hordeQuestData"] = {
						["qgs"] = {
							3354,	-- Sorek <Warrior Trainer> (Orgrimmar)
							3041,	-- Torm Ragetotem <Warrior Trainer> (Thunder Bluff)
							4593,	-- Christoph Walker <Warrior Trainer> (Undercity)
						},
						["coords"] = {
							{ 80.2, 32.4, ORGRIMMAR },
							{ 57.6, 87.2, THUNDER_BLUFF },
							{ 47.8, 14.8, UNDERCITY },
						},
					},
					["timeline"] = { REMOVED_4_0_3 },
					["classes"] = { WARRIOR },
					["isBreadcrumb"] = true,
					["lvl"] = 50,
				})),
				q(27849, {	-- Assault on Stonard
					["qg"] = 46676,	-- Joanna Blueheart
					["sourceQuests"] = {
						27845,	-- Marking the Fallen (A)
						27843,	-- Reinforcements Denied (A)
						27795,	-- Tides of Darkness (A)
					},
					["coord"] = { 68.2, 36.1, SWAMP_OF_SORROWS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/6 Stonard Defender slain
							["provider"] = { "n", 46870 },	-- Stonard Defender
						}),
						i(64623, {	-- Surgical Striker
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(64595, {	-- Robes of the Honorable
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(64605, {	-- Leggings of the Final Assault
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(64614, {	-- Chestguard of Bravery
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(64621, {	-- Blueheart's Helm
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(27740, {	-- Baba Bogbrew
					["qg"] = 45948,	-- Crazy Larry
					["sourceQuest"] = 27600,	-- In With a Bang
					["coord"] = { 84.0, 40.1, SWAMP_OF_SORROWS },
					["timeline"] = { ADDED_4_0_3 },
				}),
				q(27914, {	-- Blessing of the Green Dragonflight
					["qg"] = 46071,	-- Lord Itharius
					["sourceQuest"] = 27773,	-- Step Three: Prophet
					["coord"] = { 69.4, 54.5, SWAMP_OF_SORROWS },
					["timeline"] = { ADDED_4_0_3 },
					["maps"] = { TEMPLE_OF_ATALHAKKAR },
					["groups"] = {
						i(64596, {	-- Dream Pendant
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(64606, {	-- Dream Amulet
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(64615, {	-- Dream Medallion
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(27904, {	-- Breath of Mist
					["qg"] = 17127,	-- Anchorite Avuun
					["sourceQuests"] = {
						27875,	-- Prayerblossom (A)
						27876,	-- Secrets of the Mire (A)
					},
					["coord"] = { 26.8, 33.5, SWAMP_OF_SORROWS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/5 Smoky Crystal
							["provider"] = { "i", 62749 },	-- Smoky Crystal
							["cr"] = 46950,	-- Misty Grell
						}),
					},
				}),
				q(27599, {	-- Can't Take It With Them
					["qg"] = 45948,	-- Crazy Larry
					["sourceQuest"] = 27597,	-- Crazy Larry
					["coord"] = { 84.0, 40.1, SWAMP_OF_SORROWS },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/6 Steamwheedle Ditty Bag
							["provider"] = { "i", 61923 },	-- Steamwheedle Ditty Bag
							["cr"] = 46014,	-- Deceased Bogpaddle Privateer
						}),
						i(64590, {	-- Crazy Cap
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(64600, {	-- Looter's Shoulderguards
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(64609, {	-- Tragic Legguards
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(64617, {	-- Larry's Boots
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(1428, {	-- Continued Threat
					["qg"] = 5593,	-- Katar
					["sourceQuest"] = 1427,	-- Threat From the Sea
					["coord"] = { 83.8, 80.4, SWAMP_OF_SORROWS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 35,
					["groups"] = {
						objective(1, {	-- 0/10 Marsh Inkspewer
							["provider"] = { "n", 750 },	-- Marsh Inkspewer
						}),
						objective(2, {	-- 0/10 Marsh Flesheater
							["provider"] = { "n", 751 },	-- Marsh Flesheater
						}),
						objective(3, {	-- 0/10 Marsh Oracle
							["provider"] = { "n", 752 },	-- Marsh Oracle
						}),
					},
				}),
				q(27597, {	-- Crazy Larry
					["qg"] = 45786,	-- Trade Baron Silversnap
					["sourceQuests"] = {
						27536,	-- Mostly Harmless
						27656,	-- Croc-Out
					},
					["coord"] = { 73.1, 14.9, SWAMP_OF_SORROWS },
					["timeline"] = { ADDED_4_0_3 },
				}),
				q(27656, {	-- Croc-Out
					["qg"] = 45786,	-- Trade Baron Silversnap
					["sourceQuest"] = 27587,	-- Maliciously Delicious
					["coord"] = { 73.1, 14.9, SWAMP_OF_SORROWS },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/8 Sawtooth Crocolisk slain
							["provider"] = { "n", 45807 },	-- Sawtooth Crocolisk
						}),
					},
				}),
				q(27851, {	-- Cutting Supply
					["qg"] = 46676,	-- Joanna Blueheart
					["sourceQuests"] = {
						27845,	-- Marking the Fallen (A)
						27843,	-- Reinforcements Denied (A)
						27795,	-- Tides of Darkness (A)
					},
					["coord"] = { 68.2, 36.1, SWAMP_OF_SORROWS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/5 Stonard Supplies
							["providers"] = {
								{ "i",  62516 },	-- Stonard Supplies
								{ "o", 206391 },	-- Stonard Supplies
							},
							["coord"] = { 48.5, 55.6, SWAMP_OF_SORROWS },
						}),
					},
				}),
				q(1425, {	-- Deliver the Shipment
					["providers"] = {
						{ "n", 5476 },	-- Watcher Biggs
						{ "i", 6178 },	-- Shipment to Nethergarde
					},
					["sourceQuest"] = 1398,	-- Driftwood
					["coord"] = { 26.8, 59.8, SWAMP_OF_SORROWS },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { BLASTED_LANDS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
				}),
				q(1389, {	-- Draenethyst Crystals
					["qg"] = 1776,	-- Magtoor
					["coord"] = { 26.0, 31.4, SWAMP_OF_SORROWS },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 30,
					["groups"] = {
						objective(1, {	-- 0/6 Draenethyst Crystal
							["providers"] = {
								{ "i", 6071 },	-- Draenethyst Crystal
								{ "o", 22550 },	-- Draenethyst Crystals
							},
							["coord"] = { 62.2, 23.5, SWAMP_OF_SORROWS },
						}),
					},
				}),
				q(27840, {	-- Draenethyst Crystals
					["qg"] = 18221,	-- Holaaru
					["coord"] = { 69.8, 36.5, SWAMP_OF_SORROWS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/5 Draenethyst Crystal
							["providers"] = {
								{ "i", 6071 },	-- Draenethyst Crystal
								{ "o", 22550 },	-- Draenethyst Crystals
							},
							["coord"] = { 60.6, 25.7, SWAMP_OF_SORROWS },
						}),
					},
				}),
				q(1398, {	-- Driftwood
					["qg"] = 5476,	-- Watcher Biggs
					["sourceQuest"] = 1421,	-- The Lost Caravan
					["coord"] = { 26.8, 59.8, SWAMP_OF_SORROWS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
					["groups"] = {
						objective(1, {	-- 0/8 Sundried Driftwood
							["providers"] = {
								{ "i", 6146 },	-- Sundried Driftwood
								{ "o", 24798 },	-- Sundried Driftwood
							},
							["coord"] = { 93.4, 66.1, SWAMP_OF_SORROWS },
						}),
					},
				}),
				q(27592, {	-- Drinks on the Rocks
					["qg"] = 46010,	-- Brono Goodgroove
					["coord"] = { 73.6, 9.1, SWAMP_OF_SORROWS },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/10 Stolen Silversnap Ice
							["provider"] = { "i", 61356 },	-- Stolen Silversnap Ice
							["cr"] = 922,	-- Silt Crawler
						}),
						i(64622, {	-- Silversnap Bottle Opener
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(64588, {	-- Beach Party Thong
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(64598, {	-- Promotional Cap
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(64607, {	-- Groovey Legguards
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(64616, {	-- Brand-Name Breastplate
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(157012, {	-- Broken Silversnap Bottle
							["timeline"] = { ADDED_7_3_5 },
						}),
					},
				}),
				q(1396, {	-- Encroaching Wildlife
					["qg"] = 5476,	-- Watcher Biggs
					-- #if AFTER TBC
					["sourceQuest"] = 9609,	-- Help Watcher Biggs
					-- #endif
					["coord"] = { 26.8, 59.8, SWAMP_OF_SORROWS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
					["groups"] = {
						objective(1, {	-- 0/8 Young Sawtooth Crocolisk
							["provider"] = { "n", 1084 },	-- Young Sawtooth Crocolisk
						}),
						objective(2, {	-- 0/10 Sorrow Spinner
							["provider"] = { "n", 858 },	-- Sorrow Spinner
						}),
						objective(3, {	-- 0/10 Swamp Jaguar
							["provider"] = { "n", 767 },	-- Swamp Jaguar
						}),
					},
				}),
				q(2784, {	-- Fall From Grace
					["qg"] = 7572,	-- Fallen Hero of the Horde
					["coord"] = { 34.3, 66.2, SWAMP_OF_SORROWS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 45,
				}),
				q(1430, {	-- Fresh Meat
					["qg"] = 5591,	-- Dar
					["coord"] = { 44.8, 57.2, SWAMP_OF_SORROWS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 35,
					["groups"] = {
						objective(1, {	-- 0/10 Monstrous Crawler Leg
							["provider"] = { "i", 6184 },	-- Monstrous Crawler Leg
							["cr"] = 1088,	-- Monstrous Crawler
						}),
						i(9681, {	-- Grilled King Crawler Legs
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(9682, {	-- Leather Chef's Belt
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(1393, {	-- Galen's Escape
					["providers"] = {
						{ "n", 5391 },	-- Galen Goodward
						{ "o", 32569 },	-- Galen's Strongbox
					},
					["coords"] = {
						{ 65.4, 18.1, SWAMP_OF_SORROWS },
						{ 47.9, 39.8, SWAMP_OF_SORROWS },
					},
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 30,
					["groups"] = {
						i(6828, {	-- Visionary Buckler
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(9609, {	-- Help Watcher Biggs
					["qg"] = 17127,	-- Anchorite Avuun
					["coord"] = { 25.8, 31.8, SWAMP_OF_SORROWS },
					["timeline"] = { ADDED_2_0_1, REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 30,
				}),
				heroscall(q(28675, {	-- Hero's Call: Swamp of Sorrows!
					["timeline"] = { ADDED_4_0_3 },
					["maps"] = { IRONFORGE, STORMWIND_CITY },	-- Only found in Ironforge & Stormwind City in Cataclysm.
					["isBreadcrumb"] = true,
					-- #if BEFORE 7.3.5
					-- Cataclysm: Minimum is level 51. (TODO: Confirm this.)
					-- Cataclysm: Maximum is level 52. (TODO: Test max level between 51 and 60)
					["lvl"] = { 51, 52 },
					-- #endif
				})),
				q(2702, {	-- Heroes of Old (1/2)
					["qg"] = 7572,	-- Fallen Hero of the Horde
					["sourceQuest"] = 2681,	-- The Stones That Bind Us
					["coord"] = { 34.3, 66.2, SWAMP_OF_SORROWS },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 45,
				}),
				q(2701, {	-- Heroes of Old (2/2)
					["providers"] = {
						{ "n",   7750 },	-- Corporal Thund Splithoof
						{ "o", 141980 },	-- Spectral Lockbox
					},
					["sourceQuest"] = 2702,	-- Heroes of Old (1/2)
					["coord"] = { 33.5, 66.0, SWAMP_OF_SORROWS },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 45,
					["groups"] = {
						i(10659, {	-- Shard of the Splithooves  / Shard of Afrasa [Original]
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(27600, {	-- In With a Bang
					["qg"] = 45948,	-- Crazy Larry
					["sourceQuests"] = {
						27598,	-- Kill Gil
						27599,	-- Can't Take It With Them
					},
					["coord"] = { 84.0, 40.1, SWAMP_OF_SORROWS },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/1 Thousand-Thread-Count Fuse
							["providers"] = {
								{ "i",  61921 },	-- Thousand-Thread-Count Fuse
								{ "o", 205826 },	-- Thousand-Thread-Count Fuse
							},
							["coord"] = { 55.7, 77.8, SWAMP_OF_SORROWS },
						}),
						objective(2, {	-- 0/1 Extra-Pure Blasting Powder
							["providers"] = {
								{ "i",  61922 },	-- Extra-Pure Blasting Powder
								{ "o", 205827 },	-- Extra-Pure Blasting Powder
							},
							["coord"] = { 55.8, 78.0, SWAMP_OF_SORROWS },
						}),
						objective(3, {	-- 0/1 Stack of Questionable Publications
							["providers"] = {
								{ "i",  61373 },	-- Stack of Questionable Publications
								{ "o", 205828 },	-- Stack of Questionable Publications
							},
							["coord"] = { 55.8, 78.0, SWAMP_OF_SORROWS },
						}),
						i(64591, {	-- Almost New Shoulderpads
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(64601, {	-- Expensive Tunic
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(64610, {	-- Imported Helmet
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(64618, {	-- High-Grade Greaves
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(27598, {	-- Kill Gil
					["qg"] = 45948,	-- Crazy Larry
					["sourceQuest"] = 27597,	-- Crazy Larry
					["coord"] = { 84.0, 40.1, SWAMP_OF_SORROWS },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/7 Gilblin Stalker slain
							["provider"] = { "n", 45701 },	-- Gilblin Stalker
						}),
					},
				}),
				q(2721, {	-- Kirith
					["qg"] = 7572,	-- Fallen Hero of the Horde
					["sourceQuest"] = 2701,	-- Heroes of Old (2/2)
					["coord"] = { 34.3, 66.2, SWAMP_OF_SORROWS },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { BLASTED_LANDS },
					["lvl"] = 45,
				}),
				q(698, {	-- Lack of Surplus (1/2)
					["qg"] = 5591,	-- Dar
					["coord"] = { 44.8, 57.2, SWAMP_OF_SORROWS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 35,
					["groups"] = {
						objective(1, {	-- 0/8 Unprepared Sawtooth Flank
							["provider"] = { "i", 6169 },	-- Unprepared Sawtooth Flank
							["crs"] = {
								1082,	-- Sawtooth Crocolisk
								1087,	-- Sawtooth Snapper
							},
						}),
					},
				}),
				q(699, {	-- Lack of Surplus (2/2)
					["qg"] = 5592,	-- Tok'Kar
					["sourceQuest"] = 698,	-- Lack of Surplus (1/2)
					["coord"] = { 81.4, 80.8, SWAMP_OF_SORROWS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 35,
					["groups"] = {
						objective(1, {	-- 0/6 Sawtooth Snapper Claw
							["provider"] = { "i", 6168 },	-- Sawtooth Snapper Claw
							["cr"] = 1087,	-- Sawtooth Snapper
						}),
					},
				}),
				q(27910, {	-- Last Regrets
					["qg"] = 47041,	-- Neeka Bloodscar
					["sourceQuests"] = {
						27907,	-- Prayerblossom (H)
						27908,	-- Secrets of the Mire (H)
					},
					["coord"] = { 21.2, 51.7, SWAMP_OF_SORROWS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Duskfang's Hide
							["provider"] = { "i", 62714 },	-- Duskfang's Hide
							["cr"] = 47053,	-- Duskfang
						}),
					},
				}),
				q(27704, {	-- Legends of the Sunken Temple
					["qg"] = 46071,	-- Lord Itharius
					["sourceQuest"] = 27694,	-- Pool of Tears
					["coord"] = { 69.4, 54.5, SWAMP_OF_SORROWS },
					["timeline"] = { ADDED_4_0_3 },
					["maps"] = { TEMPLE_OF_ATALHAKKAR },
				}),
				q(9440, {	-- Little Morsels
					["qg"] = 17109,	-- Cersei Dusksinger
					["coord"] = { 47.8, 54.9, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_2_0_1, REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 35,
					["groups"] = {
						objective(1, {	-- Captured Crocolisk Fed
							["provider"] = { "i", 23659 },	-- Fel-Tainted Morsels
							["coord"] = { 60.6, 22.4, DUSTWALLOW_MARSH },
							["cr"] = 17113,	-- Captured Crocolisk
						}),
						objective(2, {	-- Captured Jaguar Fed
							["provider"] = { "i", 23659 },	-- Fel-Tainted Morsels
							["coord"] = { 65.4, 23, DUSTWALLOW_MARSH },
							["cr"] = 17111,	-- Captured Jaguar
						}),
						objective(3, {	-- Captured Tarantula Fed
							["provider"] = { "i", 23659 },	-- Fel-Tainted Morsels
							["coord"] = { 62.4, 23.4, DUSTWALLOW_MARSH },
							["cr"] = 17112,	-- Captured Tarantula
						}),
					},
				}),
				q(27822, {	-- Lumbering Oafs (A)
					["qg"] = 46676,	-- Joanna Blueheart
					["coord"] = { 68.2, 36.1, SWAMP_OF_SORROWS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/5 Stonard Peon slain
							["provider"] = { "n", 46486 },	-- Stonard Peon
						}),
						i(64593, {	-- Helm of the Gatherer
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(64603, {	-- Merciless Breastplate
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(64612, {	-- Balanced Pauldrons
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(27853, {	-- Lumbering Oafs (H)
					["qg"] = 7623,	-- Dispatch Commander Ruag
					["coord"] = { 49.3, 55.3, SWAMP_OF_SORROWS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/5 Marshtide Peasant slain
							["provider"] = { "n", 46487 },	-- Marshtide Peasant
						}),
						i(64624, {	-- Helm of the Gatherer
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(64628, {	-- Merciliess Breastplate
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(64631, {	-- Balanced Pauldrons
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(27587, {	-- Maliciously Delicious
					["providers"] = {
						{ "n", 45786 },	-- Trade Baron Silversnap
						{ "i", 62795 },	-- Silversnap Swim Tonic
					},
					["sourceQuests"] = {
						28569,	-- The Bogpaddle Bullet (A)
						28570,	-- The Bogpaddle Bullet (H)
						28675,	-- Hero's Call: Swamp of Sorrows!
						28677,	-- Warchief's Command: Swamp of Sorrows!
					},
					["coord"] = { 73.1, 14.9, SWAMP_OF_SORROWS },
					["timeline"] = { ADDED_4_0_1 },
					["groups"] = {
						objective(1, {	-- 0/6 Intact Swampshore Tail
							["provider"] = { "i", 61633 },	-- Intact Swampshore Tail
							["cr"] = 45809,	-- Swampshore Makrura
						}),
					},
				}),
				q(27845, {	-- Marking the Fallen (A)
					["qg"] = 46676,	-- Joanna Blueheart
					["sourceQuests"] = {
						27821,	-- Orcs and Humans (A)
						27822,	-- Lumbering Oafs (A)
					},
					["coord"] = { 68.1, 36.1, SWAMP_OF_SORROWS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/7 Footman Marked
							["providers"] = {
								{ "n", 46881 },	-- Fallen Marshtide Footman
								{ "i", 62517 },	-- Banner of the Fallen
							},
						}),
					},
				}),
				q(27856, {	-- Marking the Fallen (H)
					["qg"] = 7623,	-- Dispatch Commander Ruag
					["sourceQuests"] = {
						27853,	-- Lumbering Oafs (H)
						27852,	-- Orcs and Humans (H)
					},
					["coord"] = { 49.3, 55.3, SWAMP_OF_SORROWS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/7 Fallen Stonard Warrior marked
							["providers"] = {
								{ "n", 46882 },	-- Fallen Stonard Warrior
								{ "i", 62548 },	-- Banner of the Fallen
							},
						}),
					},
				}),
				q(27691, {	-- Marshfin Madness
					["qg"] = 46172,	-- Baba Bogbrew
					["coord"] = { 69.0, 76.5, SWAMP_OF_SORROWS },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/12 Marshfin Murkdweller slain
							["provider"] = { "n", 45967 },	-- Marshfin Murkdweller
						}),
					},
				}),
				q(9448, {	-- Mercy for the Cursed
					["qg"] = 17127,	-- Anchorite Avuun
					["coord"] = { 25.8, 31.8, SWAMP_OF_SORROWS },
					["timeline"] = { ADDED_2_0_1, REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 35,
					["groups"] = {
						objective(1, {	-- 0/3 Cursed Lost Ones
							["provider"] = { "n", 17115 },	-- Cursed Lost One
						}),
					},
				}),
				q(27536, {	-- Mostly Harmless
					["qg"] = 45786,	-- Trade Baron Silversnap
					["sourceQuest"] = 27587,	-- Maliciously Delicious
					["coord"] = { 73.1, 14.9, SWAMP_OF_SORROWS },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/8 Disarmed Land Mine
							["providers"] = {
								{ "i",  61349 },	-- Disarmed Land Mine
								{ "o", 205545 },	-- Stray Land Mine
							},
							["coord"] = { 78.6, 22.5, SWAMP_OF_SORROWS },
						}),
						i(64589, {	-- Bogpaddle Leggings
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(64599, {	-- Sloppy Spaulders
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(64608, {	-- Armed Gauntlets
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(1418, {	-- Neeka Bloodscar
					["qg"] = 1442,	-- Helgrum the Swift
					["coord"] = { 47.7, 55.2, DUSTWALLOW_MARSH },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 30,
				}),
				q(27906, {	-- Neeka Bloodscar
					["qg"] = 7623,	-- Dispatch Commander Ruag
					["sourceQuest"] = 27857,	-- We're Under Attack!
					["coord"] = { 49.3, 55.3, SWAMP_OF_SORROWS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
				}),
				q(1392, {	-- Noboru the Cudgel
					["provider"] = { "i", 6196 },	-- Noboru's Cudgel
					["timeline"] = { REMOVED_4_0_3 },
					["cr"] = 5477,	-- Noboru the Cudgel
					["lvl"] = 29,
				}),
				q(28553, {	-- Okrilla and the Blasted Lands
					["qg"] = 7623,	-- Dispatch Commander Ruag
					["sourceQuest"] = 27916,	-- Ruag's Report
					["altQuests"] = { 28671 },	-- Warchief's Command: Blasted Lands!
					["coord"] = { 49.3, 55.3, SWAMP_OF_SORROWS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
				}),
				q(27919, {	-- Onward to the Blasted Lands
					["qg"] = 17127,	-- Anchorite Avuun
					--["sourceQuest"] = 24913,	-- Remember the Light
					["coord"] = { 26.9, 33.6, SWAMP_OF_SORROWS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
				}),
				q(27821, {	-- Orcs and Humans (A)
					["qg"] = 46676,	-- Joanna Blueheart
					["sourceQuest"] = 27870,	-- To Marshtide Watch
					["coord"] = { 68.2, 36.1, SWAMP_OF_SORROWS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/8 Stonard Warrior slain
							["provider"] = { "n", 46166 },	-- Stonard Warrior
						}),
					},
				}),
				q(27852, {	-- Orcs and Humans (H)
					["qg"] = 7623,	-- Dispatch Commander Ruag
					["sourceQuest"] = 27871,	-- To Stonard
					["coord"] = { 49.3, 55.3, SWAMP_OF_SORROWS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/10 Marshtide Footman slain
							["provider"] = { "n", 46164 },	-- Marshtide Footman
						}),
					},
				}),
				-- #if AFTER TBC
				{	-- Pool of Tears
					["allianceQuestData"] = q(9610, {	-- Pool of Tears (A)
						["qg"] = 18221,	-- Holaaru
						["coord"] = { 25.9, 32.4, SWAMP_OF_SORROWS },
						["timeline"] = { ADDED_2_0_1, REMOVED_4_0_3 },
					}),
					["hordeQuestData"] = q(1424, {	-- Pool of Tears (H)
						["qg"] = 1443,	-- Fel'zerul
						["coord"] = { 64.2, 20.8, SWAMP_OF_SORROWS },
						["timeline"] = { REMOVED_4_0_3 },
					}),
					["lvl"] = 38,
					["groups"] = {
						objective(1, {	-- 0/ (10 [TBC] / 5 [WRATH]) Atal'ai Artifact
							["providers"] = {
								{ "i", 6175 },	-- Atal'ai Artifact
								{ "o", 30854 },	-- Atal'ai Artifact
								{ "o", 30855 },	-- Atal'ai Artifact
								{ "o", 30856 },	-- Atal'ai Artifact
							},
							["coord"] = { 65.5, 55.5, SWAMP_OF_SORROWS },
						}),
					},
				},
				-- #else
				q(1424, {	-- Pool of Tears (H)
					["qg"] = 1443,	-- Fel'zerul
					["coord"] = { 64.2, 20.8, SWAMP_OF_SORROWS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 38,
					["groups"] = {
						objective(1, {	-- 0/10 Atal'ai Artifact
							["providers"] = {
								{ "i", 6175 },	-- Atal'ai Artifact
								{ "o", 30854 },	-- Atal'ai Artifact
								{ "o", 30855 },	-- Atal'ai Artifact
								{ "o", 30856 },	-- Atal'ai Artifact
							},
							["coord"] = { 65.5, 55.5, SWAMP_OF_SORROWS },
						}),
					},
				}),
				-- #endif
				q(27694, {	-- Pool of Tears
					["qg"] = 46071,	-- Lord Itharius
					["sourceQuest"] = 27869,	-- The Dragon and the Temple
					["coord"] = { 69.4, 54.5, SWAMP_OF_SORROWS },
					["timeline"] = { ADDED_4_0_3 },
					["maps"] = { TEMPLE_OF_ATALHAKKAR },
					["groups"] = {
						objective(1, {	-- 0/ (10 [TBC] / 5 [WRATH]) Atal'ai Artifact
							["providers"] = {
								{ "i", 6175 },	-- Atal'ai Artifact
								{ "o", 30854 },	-- Atal'ai Artifact
								{ "o", 30855 },	-- Atal'ai Artifact
								{ "o", 30856 },	-- Atal'ai Artifact
							},
							["coord"] = { 65.5, 55.5, SWAMP_OF_SORROWS },
						}),
					},
				}),
				{	-- Prayerblossom
					["allianceQuestData"] = q(27875, {	-- Prayerblossom (A)
						["qg"] = 17127,	-- Anchorite Avuun
						["coord"] = { 26.8, 33.5, SWAMP_OF_SORROWS },
					}),
					["hordeQuestData"] = q(27907, {	-- Prayerblossom (H)
						["qg"] = 47041,	-- Neeka Bloodscar
						["sourceQuest"] = 27906,	-- Neeka Bloodscar
						["coord"] = { 21.2, 51.7, SWAMP_OF_SORROWS },
					}),
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/10 Prayerblossom
							["providers"] = {
								{ "i",  62550 },	-- Prayerblossom
								{ "o", 206503 },	-- Prayerbloom
							},
							["coord"] = { 33.5, 44.5, SWAMP_OF_SORROWS },
						}),
					},
				},
				q(27843, {	-- Reinforcements Denied (A)
					["qg"] = 46676,	-- Joanna Blueheart
					["sourceQuests"] = {
						27821,	-- Orcs and Humans (A)
						27822,	-- Lumbering Oafs (A)
					},
					["coord"] = { 68.1, 36.1, SWAMP_OF_SORROWS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/3 Stonard Warlock slain
							["provider"] = { "n", 46770 },	-- Stonard Warlock
						}),
					},
				}),
				q(27855, {	-- Reinforcements Denied (H)
					["qg"] = 7623,	-- Dispatch Commander Ruag
					["sourceQuests"] = {
						27853,	-- Lumbering Oafs (H)
						27852,	-- Orcs and Humans (H)
					},
					["coord"] = { 49.3, 55.3, SWAMP_OF_SORROWS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/3 Marshtide Mage slain
							["provider"] = { "n", 46775 },	-- Marshtide Mage
						}),
					},
				}),
				q(24913, {	-- Remember the Light
					["qg"] = 17127,	-- Anchorite Avuun
					["sourceQuests"] = {
						27902,	-- The Purespring (A)
						27904,	-- Breath of Mist
					},
					["coord"] = { 26.8, 33.5, SWAMP_OF_SORROWS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(64597, {	-- Light's Embrace
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(1444, {	-- Return to Fel'Zerul
					["qg"] = 5598,	-- Atal'ai Exile
					["sourceQuest"] = 1429,	-- The Atal'ai Exile
					["coord"] = { 33.6, 75.2, THE_HINTERLANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 38,
				}),
				q(27916, {	-- Ruag's Report
					["providers"] = {
						{ "n", 47041 },	-- Neeka Bloodscar
						{ "i", 62748 },	-- Splinterspear Report
					},
					["sourceQuest"] = 27911,	-- With Dying Breath
					["coord"] = { 21.2, 51.7, SWAMP_OF_SORROWS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
				}),
				{	-- Secrets of the Mire
					["allianceQuestData"] = q(27876, {	-- Secrets of the Mire (A)
						["qg"] = 17127,	-- Anchorite Avuun
						["coord"] = { 26.8, 33.5, SWAMP_OF_SORROWS },
					}),
					["hordeQuestData"] = q(27908, {	-- Secrets of the Mire (H)
						["qg"] = 47041,	-- Neeka Bloodscar
						["sourceQuest"] = 27906,	-- Neeka Bloodscar
						["coord"] = { 21.2, 51.7, SWAMP_OF_SORROWS },
					}),
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/10 Invigorated Silt
							["provider"] = { "i", 62593 },	-- Invigorated Silt
							["cr"] = 46997,	-- Shifting Mireglob
						}),
					},
				},
				q(27818, {	-- Slithering Signs
					["qg"] = 46172,	-- Baba Bogbrew
					["sourceQuest"] = 27757,	-- The Darkest Depths
					["coord"] = { 69.0, 76.5, SWAMP_OF_SORROWS },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/5 Intact Stagalbog Serpent Heart
							["provider"] = { "i", 62551 },	-- Intact Stagalbog Serpent Heart
							["cr"] = 46146,	-- Stagalbog Serpent
						}),
					},
				}),
				q(27705, {	-- Step One: The Priestess
					["qg"] = 46071,	-- Lord Itharius
					["sourceQuest"] = 27704,	-- Legends of the Sunken Temple
					["coord"] = { 69.4, 54.5, SWAMP_OF_SORROWS },
					["timeline"] = { ADDED_4_0_3 },
					["maps"] = { TEMPLE_OF_ATALHAKKAR },
					["groups"] = {
						objective(1, {	-- 0/1 Priestess Udum'bra slain
							["provider"] = { "n", 46424 },	-- Priestess Udum'bra
							["coord"] = { 54.3, 79.3, SWAMP_OF_SORROWS },
						}),
					},
				}),
				q(27773, {	-- Step Three: Prophet
					["qg"] = 46071,	-- Lord Itharius
					["sourceQuest"] = 27768,	-- Step Two: The Bloodletter
					["coord"] = { 69.4, 54.5, SWAMP_OF_SORROWS },
					["timeline"] = { ADDED_4_0_3 },
					["maps"] = { TEMPLE_OF_ATALHAKKAR },
					["groups"] = {
						objective(1, {	-- 0/1 Jammal'an the Prophet slain
							["provider"] = { "n", 46656 },	-- Jammal'an the Prophet
							["coord"] = { 54.43, 78.85, SWAMP_OF_SORROWS },
						}),
					},
				}),
				q(27768, {	-- Step Two: The Bloodletter
					["qg"] = 46071,	-- Lord Itharius
					["sourceQuest"] = 27705,	-- Step One: The Priestess
					["coord"] = { 69.4, 54.5, SWAMP_OF_SORROWS },
					["timeline"] = { ADDED_4_0_3 },
					["maps"] = { TEMPLE_OF_ATALHAKKAR },
					["groups"] = {
						objective(1, {	-- 0/1 Gomora the Bloodletter slain
							["provider"] = { "n", 46623 },	-- Gomora the Bloodletter
							["coord"] = { 54.5, 79.13, SWAMP_OF_SORROWS },
						}),
					},
				}),
				q(27663, {	-- Tastes Like Strider
					["qg"] = 46182,	-- Pierre Fishflay
					["sourceQuest"] = 27587,	-- Maliciously Delicious
					["coord"] = { 74.2, 12.1, SWAMP_OF_SORROWS },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/9 Jumbo Swampstrider Drumstick
							["provider"] = { "i", 62043 },	-- Jumbo Swampstrider Drumstick
							["cr"] = 45825,	-- Swampstrider
						}),
					},
				}),
				q(1429, {	-- The Atal'ai Exile
					["providers"] = {
						{ "n", 1443 },	-- Fel'zerul
						{ "i", 6193 },	-- Bundle of Atal'ai Artifacts
					},
					["sourceQuest"] = 1424,	-- Pool of Tears [Horde]
					["coord"] = { 64.2, 20.8, SWAMP_OF_SORROWS },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { THE_HINTERLANDS },
					["races"] = HORDE_ONLY,
					["lvl"] = 38,
				}),
				q(28569, {	-- The Bogpaddle Bullet (A)
					["qg"] = 9177,	-- Oralius
					["coord"] = { 71.8, 68.0, BURNING_STEPPES },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = lvlsquish(40, 40, 15),
				}),
				q(28570, {	-- The Bogpaddle Bullet (H)
					["qg"] = 10260,	-- Kibler
					["coord"] = { 54.9, 22.6, BURNING_STEPPES },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = lvlsquish(40, 40, 15),
				}),
				q(27757, {	-- The Darkest Depths
					["qg"] = 46172,	-- Baba Bogbrew
					["sourceQuest"] = 27691,	-- Marshfin Madness
					["coord"] = { 69.0, 76.5, SWAMP_OF_SORROWS },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/1 Hr'nglth the Lost slain
							["provider"] = { "n", 46371 },	-- Hr'nglth the Lost
							["coord"] = { 63.2, 86.8, SWAMP_OF_SORROWS },
						}),
						i(64592, {	-- Baba's Leg Warmers
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(64602, {	-- Frenzy Call Vest
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(64611, {	-- Swamp Skull Cap
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(64619, {	-- Sinister Belt
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(2744, {	-- The Demon Hunter
					["qg"] = 7572,	-- Fallen Hero of the Horde
					["sourceQuest"] = 2743,	-- The Cover of Darkness
					["coord"] = { 34.3, 66.2, SWAMP_OF_SORROWS },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { AZSHARA },
					["lvl"] = 45,
				}),
				q(2621, {	-- The Disgraced One
					["qg"] = 7572,	-- Fallen Hero of the Horde
					["sourceQuest"] = 2784,	-- Fall From Grace
					["coord"] = { 34.3, 66.2, SWAMP_OF_SORROWS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 45,
				}),
				q(27869, {	-- The Dragon and the Temple
					["qg"] = 46172,	-- Baba Bogbrew
					["sourceQuest"] = 27818,	-- Slithering Signs
					["coord"] = { 69.0, 76.5, SWAMP_OF_SORROWS },
					["timeline"] = { ADDED_4_0_3 },
					["isBreadcrumb"] = true,
				}),
				q(27918, {	-- The Harborage
					["providers"] = {
						{ "n", 18221 },	-- Holaaru
						{ "i", 62750 },	-- Draenethyst Crystals
					},
					["sourceQuests"] = {
						27840,	-- Draenethyst Crystals
						27860,	-- The Lost Ones
					},
					["coord"] = { 69.9, 36.5, SWAMP_OF_SORROWS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(27915, {	-- The Heart of the Temple
					["qg"] = 46071,	-- Lord Itharius
					["sourceQuest"] = 27914,	-- Blessing of the Green Dragonflight
					["coord"] = { 69.4, 54.5, SWAMP_OF_SORROWS },
					["timeline"] = { ADDED_4_0_3 },
					["maps"] = { TEMPLE_OF_ATALHAKKAR },
					["isBreadcrumb"] = true,
				}),
				q(1421, {	-- The Lost Caravan
					["qg"] = 5476,	-- Watcher Biggs
					["sourceQuest"] = 1396,	-- Encroaching Wildlife
					["coord"] = { 26.8, 59.8, SWAMP_OF_SORROWS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
					["groups"] = {
						objective(1, {	-- 0/1 Wizards' Reagents
							["providers"] = {
								{ "i", 6170 },	-- Wizards' Reagents
								{ "o", 28024 },	-- Caravan Chest
							},
							["coord"] = { 64.6, 18.4, SWAMP_OF_SORROWS },
						}),
					},
				}),
				q(27860, {	-- The Lost Ones
					["qg"] = 18221,	-- Holaaru
					["coord"] = { 69.8, 36.5, SWAMP_OF_SORROWS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/12 Lost One slain
							["providers"] = {
								{ "n", 759 },	-- Lost One Hunter
								{ "n", 760 },	-- Lost One Muckdweller
								{ "n", 761 },	-- Lost One Seer
							},
						}),
					},
				}),
				q(1423, {	-- The Lost Supplies
					["providers"] = {
						{ "i", 6172 },	-- Lost Supplies
						{ "o", 28604 },	-- Scattered Crate
					},
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					["lvl"] = 30,
					["groups"] = {
						i(6827, {	-- Box of Supplies
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(2622, {	-- The Missing Orders
					["qg"] = 7623,	-- Dispatch Commander Ruag
					["sourceQuest"] = 2621,	-- The Disgraced One
					["coord"] = { 47.8, 55, SWAMP_OF_SORROWS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 45,
				}),
				{	-- The Purespring
					["allianceQuestData"] = q(27902, {	-- The Purespring (A)
						["qg"] = 17127,	-- Anchorite Avuun
						["sourceQuests"] = {
							27875,	-- Prayerblossom (A)
							27876,	-- Secrets of the Mire (A)
						},
						["coord"] = { 26.8, 33.5, SWAMP_OF_SORROWS },
					}),
					["hordeQuestData"] = q(27909, {	-- The Purespring (H)
						["qg"] = 47041,	-- Neeka Bloodscar
						["sourceQuests"] = {
							27907,	-- Prayerblossom (H)
							27908,	-- Secrets of the Mire (H)
						},
						["coord"] = { 21.2, 51.7, SWAMP_OF_SORROWS },
					}),
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/6|8 Purespring Mote
							["provider"] = { "i", 62609 },	-- Purespring Mote
							["cr"] = 46953,	-- Purespring Elemental
						}),
					},
				},
				q(2681, {	-- The Stones That Bind Us
					["qg"] = 7572,	-- Fallen Hero of the Horde
					["sourceQuest"] = 2801,	-- A Tale of Sorrow
					["coord"] = { 34.3, 66.2, SWAMP_OF_SORROWS },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { BLASTED_LANDS },
					["lvl"] = 45,
					["groups"] = {
						objective(1, {	-- 0/9 Servant of Razelikh slain
							["providers"] = {
								{ "n",   7668 },	-- Servant of Razelikh
								{ "o", 141812 },	-- Stone of Binding
							},
							["coords"] = {
								{ 51.8, 56.8, BLASTED_LANDS },
								{ 58.0, 49.8, BLASTED_LANDS },
								{ 63.8, 55.8, BLASTED_LANDS },
							},
						}),
						objective(2, {	-- 0/3 Servant of Grol slain
							["providers"] = {
								{ "n",   7669 },	-- Servant of Grol
								{ "o", 141857 },	-- Stone of Binding
							},
							["coords"] = {
								{ 41.6, 14.2, BLASTED_LANDS },
								{ 49.8, 43.8, BLASTED_LANDS },
							},
						}),
						objective(3, {	-- 0/3 Servant of Allistarj slain
							["providers"] = {
								{ "n",   7670 },	-- Servant of Allistarj
								{ "o", 141858 },	-- Stone of Binding
							},
							["coords"] = {
								{ 64.8, 34.6, BLASTED_LANDS },
								{ 64.0, 40.6, BLASTED_LANDS },
								{ 64.6, 46.6, BLASTED_LANDS },
							},
						}),
						objective(4, {	-- 0/3 Servant of Sevine slain
							["providers"] = {
								{ "n",   7671 },	-- Servant of Sevine
								{ "o", 141859 },	-- Stone of Binding
							},
							["coords"] = {
								{ 38.6, 34.0, BLASTED_LANDS },
								{ 42.8, 41.4, BLASTED_LANDS },
							},
						}),
					},
				}),
				q(2623, {	-- The Swamp Talker
					["qg"] = 7643,	-- Bengor
					["sourceQuest"] = 2622,	-- The Missing Orders
					["coord"] = { 45, 57.2, SWAMP_OF_SORROWS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 45,
					["groups"] = {
						objective(1, {	-- 0/1 Warchief's Orders
							["provider"] = { "i", 8463, },	-- Warchief's Orders
							["coord"] = { 63.8, 83.6, SWAMP_OF_SORROWS },
							["cr"] = 950,	-- Swamp Talker
						}),
					},
				}),
				q(1422, {	-- Threat From the Sea (1/3)
					["qg"] = 5592,	-- Tok'Kar
					["sourceQuest"] = 699,	-- Lack of Surplus (2/2)
					["coord"] = { 81.3, 81.0, SWAMP_OF_SORROWS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 35,
				}),
				q(1426, {	-- Threat From the Sea (2/3)
					["qg"] = 5593,	-- Katar
					["sourceQuest"] = 1422,	-- Threat From the Sea (1/3)
					["coord"] = { 83.8, 80.4, SWAMP_OF_SORROWS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 35,
					["groups"] = {
						objective(1, {	-- 0/10 Marsh Murloc slain
							["provider"] = { "n", 747 },	-- Marsh Murloc
						}),
						objective(2, {	-- 0/10 Marsh Inkspewer slain
							["provider"] = { "n", 750 },	-- Marsh Inkspewer
						}),
						objective(3, {	-- 0/10 Marsh Flesheater slain
							["provider"] = { "n", 751 },	-- Marsh Flesheater
						}),
					},
				}),
				q(1427, {	-- Threat From the Sea (3/3)
					["qg"] = 5593,	-- Katar
					["sourceQuest"] = 1426,	-- Threat From the Sea (2/3)
					["coord"] = { 83.8, 80.4, SWAMP_OF_SORROWS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 35,
					["groups"] = {
						i(9680, {	-- Tok'kar's Murloc Shanker
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(9678, {	-- Tok'kar's Murloc Basher
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(9679, {	-- Tok'kar's Murloc Chopper
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(27795, {	-- Tides of Darkness (A)
					["qg"] = 46676,	-- Joanna Blueheart
					["sourceQuests"] = {
						27821,	-- Orcs and Humans (A)
						27822,	-- Lumbering Oafs (A)
					},
					["coord"] = { 68.1, 36.1, SWAMP_OF_SORROWS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/6 Stonard Ogre slain
							["provider"] = { "n", 46765 },	-- Stonard Ogre
						}),
						i(64594, {	-- Ogre Trapper
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(64620, {	-- Bloodmire Crossbow
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(64613, {	-- Ogre Mage Staff
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(64604, {	-- Sword of Marshtide Watch
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(157013, {	-- Ogre Mage Club
							["timeline"] = { ADDED_7_3_5 },
						}),
					},
				}),
				q(27854, {	-- Tides of Darkness (H)
					["qg"] = 7623,	-- Dispatch Commander Ruag
					["sourceQuests"] = {
						27853,	-- Lumbering Oafs (H)
						27852,	-- Orcs and Humans (H)
					},
					["coord"] = { 49.3, 55.3, SWAMP_OF_SORROWS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/6 Marshtide Knight slain
							["provider"] = { "n", 46414 },	-- Marshtide Knight
						}),
						i(64625, {	-- Knight Tapper
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(64634, {	-- Bloodmire Crossbow
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(64632, {	-- Ogre Mage Staff
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(64629, {	-- Greataxe of Stonard
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(157013, {	-- Ogre Mage Club
							["timeline"] = { ADDED_7_3_5 },
						}),
					},
				}),
				q(27870, {	-- To Marshtide Watch
					["qg"] = 46071,	-- Lord Itharius
					["sourceQuest"] = 27914,	-- Blessing of the Green Dragonflight
					["coord"] = { 69.4, 54.5, SWAMP_OF_SORROWS },
					["timeline"] = { ADDED_4_0_3 },
					["maps"] = { TEMPLE_OF_ATALHAKKAR },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
				}),
				q(27871, {	-- To Stonard
					["qg"] = 46071,	-- Lord Itharius
					["sourceQuest"] = 27914,	-- Blessing of the Green Dragonflight
					["coord"] = { 69.4, 54.5, SWAMP_OF_SORROWS },
					["timeline"] = { ADDED_4_0_3 },
					["maps"] = { TEMPLE_OF_ATALHAKKAR },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
				}),
				q(3627, {	-- Uniting the Shattered Amulet
					["qg"] = 7572,	-- Fallen Hero of the Horde
					["sourceQuest"] = 3626,	-- Return to the Blasted Lands
					["coord"] = { 34.3, 66.2, SWAMP_OF_SORROWS },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { BLASTED_LANDS },
					["lvl"] = 45,
					["groups"] = {
						objective(1, {	-- 0/1 Amulet of Allistarj
							["provider"] = { "i", 10755 },	-- Amulet of Allistarj
							["coord"] = { 66.8, 29.6, BLASTED_LANDS },
							["cr"] = 7666,	-- Archmage Allistarj
						}),
						objective(2, {	-- 0/1 Amulet of Grol
							["provider"] = { "i", 10753 },	-- Amulet of Grol
							["coord"] = { 43.0, 12.8, BLASTED_LANDS },
							["cr"] = 7665,	-- Grol the Destroyer
						}),
						objective(3, {	-- 0/1 Amulet of Sevine
							["provider"] = { "i", 10754 },	-- Amulet of Sevine
							["coord"] = { 40.6, 30.2, BLASTED_LANDS },
							["cr"] = 7667,	-- Lady Sevine
						}),
					},
				}),
				applyclassicphase(PHASE_FOUR_SUNKEN_TEMPLE_CLASS_QUESTS, q(8424, {	-- War on the Shadowsworn
					["qg"] = 7572,	-- Fallen Hero of the Horde
					["sourceQuest"] = 8423,	-- Warrior Kinship
					["coord"] = { 34.3, 66.2, SWAMP_OF_SORROWS },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { BLASTED_LANDS },
					["classes"] = { WARRIOR },
					["lvl"] = 50,
					["groups"] = {
						objective(1, {	-- 0/20 Shadowsworn Adept slain
							["provider"] = { "n", 6006 },	-- Shadowsworn Adept
						}),
						objective(2, {	-- 0/10 Shadowsworn Cultist slain
							["provider"] = { "n", 6004 },	-- Shadowsworn Cultist
						}),
						objective(3, {	-- 0/20 Shadowsworn Thug slain
							["provider"] = { "n", 6005 },	-- Shadowsworn Thug
						}),
					},
				})),
				warchiefscommand(q(28677, {	-- Warchief's Command: Swamp of Sorrows!
					["timeline"] = { ADDED_4_0_3 },
					["maps"] = { SILVERMOON_CITY, UNDERCITY },	-- Only found in Silvermoon City & Undercity in Cataclysm.
					["isBreadcrumb"] = true,
					-- #if BEFORE 7.3.5
					-- Cataclysm: Minimum is level 51. (TODO: Confirm this.)
					-- Cataclysm: Maximum is level 53. (TODO: Test max level)
					["lvl"] = { 51, 53 },
					-- #endif
				})),
				applyclassicphase(PHASE_FOUR_SUNKEN_TEMPLE_CLASS_QUESTS, q(8423, {	-- Warrior Kinship
					["qg"] = 7572,	-- Fallen Hero of the Horde
					["sourceQuest"] = 8417,	-- A Troubled Spirit
					["coord"] = { 34.3, 66.2, SWAMP_OF_SORROWS },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { BLASTED_LANDS },
					["classes"] = { WARRIOR },
					["lvl"] = 50,
					["groups"] = {
						objective(1, {	-- 0/7 Helboar slain
							["provider"] = { "n", 5993 },	-- Helboar
						}),
					},
				})),
				q(27857, {	-- We're Under Attack!
					["qg"] = 7623,	-- Dispatch Commander Ruag
					["sourceQuests"] = {
						27856,	-- Marking the Fallen (H)
						27855,	-- Reinforcements Denied (H)
						27854,	-- Tides of Darkness (H)
					},
					["coord"] = { 49.3, 55.3, SWAMP_OF_SORROWS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/12 Marshtide Invader slain
							["provider"] = { "n", 46869 },	-- Marshtide Invader
						}),
						i(64636, {	-- Defender's Thrust
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(64626, {	-- Robes of the Honorable
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(64630, {	-- Leggings of the Final Stand
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(64633, {	-- Chestguard of Bravery
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(64635, {	-- Ruag's Helm
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(27911, {	-- With Dying Breath
					["qg"] = 47041,	-- Neeka Bloodscar
					["sourceQuests"] = {
						27910,	-- Last Regrets
						27909,	-- The Purespring (H)
					},
					["coord"] = { 21.2, 51.7, SWAMP_OF_SORROWS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(64627, {	-- Dying Breath
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
			}),
			n(RARES, {
				n(50882, {	-- Chupacabros
					["coord"] = { 27.8, 62.0, SWAMP_OF_SORROWS },
					["timeline"] = { ADDED_5_1_0 },
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_TWO, n(218931, {	-- Dark Rider
					["provider"] = { "i", 216941 },	-- Ariden's Sigil
					["coord"] = { 69, 28, SWAMP_OF_SORROWS },
					["groups"] = {
						i(216948),	-- Odd Dalaran Relic
					},
				})),
				-- #endif
				n(5348, {	-- Dreamwatcher Forktongue <Victim of the Nightmare> [CATA+]
					["coord"] = { 18.0, 69.8, SWAMP_OF_SORROWS },
					["timeline"] = { ADDED_4_0_3 },
				}),
				n(14446, {	-- Fingat
					["coords"] = {
						-- #if AFTER CATA
						{ 77.2, 82.0, SWAMP_OF_SORROWS },
						{ 78.0, 85.6, SWAMP_OF_SORROWS },
						-- #else
						{ 66.0, 83.2, SWAMP_OF_SORROWS },
						{ 66.6, 84.2, SWAMP_OF_SORROWS },
						{ 64.2, 91.4, SWAMP_OF_SORROWS },
						{ 61.0, 85.6, SWAMP_OF_SORROWS },
						{ 64.4, 82.6, SWAMP_OF_SORROWS },
						-- #endif
					},
				}),
				n(51052, {	-- Gib the Banana-Hoarder
					["coord"] = { 16.71, 47.30, SWAMP_OF_SORROWS },
					["timeline"] = { ADDED_5_2_0 },
				}),
				n(14447, {	-- Gilmorian
					["coords"] = {
						-- #if AFTER CATA
						{ 90.2, 67.6, SWAMP_OF_SORROWS },
						-- #else
						{ 78.0, 5.6, SWAMP_OF_SORROWS },
						{ 90.6, 24.0, SWAMP_OF_SORROWS },
						{ 93.6, 39.6, SWAMP_OF_SORROWS },
						{ 95.2, 51.2, SWAMP_OF_SORROWS },
						{ 93.6, 59.6, SWAMP_OF_SORROWS },
						{ 90.6, 73.2, SWAMP_OF_SORROWS },
						{ 87.0, 80.4, SWAMP_OF_SORROWS },
						{ 85.4, 87.0, SWAMP_OF_SORROWS },
						{ 83.4, 93.6, SWAMP_OF_SORROWS },
						-- #endif
					},
				}),
				n(50790, {	-- Ionis
					["coord"] = { 40.0, 35.6, SWAMP_OF_SORROWS },
					["timeline"] = { ADDED_5_1_0 },
				}),
				n(1063, {	-- Jade <Victim of the Nightmare>
					-- #if AFTER CATA
					["coord"] = { 30.53, 47.19, SWAMP_OF_SORROWS },
					-- #else
					["description"] = "Spawns outside of the entrance to the Sunken Temple.",
					-- #endif
				}),
				n(50837, {	-- Kash
					["coords"] = {
						{ 79.4, 26.8, SWAMP_OF_SORROWS },
						{ 78.4, 28.8, SWAMP_OF_SORROWS },
						{ 79.4, 30.8, SWAMP_OF_SORROWS },
						{ 80.6, 28.6, SWAMP_OF_SORROWS },
					},
					["timeline"] = { ADDED_5_1_0 },
				}),
				n(14445, {	-- Lord Captain Wyrmak / Captain Wyrmak <Victim of the Nightmare> [CATA+]
					["coords"] = {
						-- #if AFTER CATA
						{ 75.0, 45.4, SWAMP_OF_SORROWS },	-- Inside the temple
						-- #else
						{ 63.2, 40.6, SWAMP_OF_SORROWS },
						{ 69.8, 36.0, SWAMP_OF_SORROWS },
						{ 76.8, 39.2, SWAMP_OF_SORROWS },
						{ 79.8, 48.2, SWAMP_OF_SORROWS },
						{ 81.0, 57.8, SWAMP_OF_SORROWS },
						{ 77.2, 65.8, SWAMP_OF_SORROWS },
						-- #endif
					},
				}),
				n(763, {	-- Lost One Chieftain
					["coords"] = {
						-- #if AFTER CATA
						{ 59.6, 26.4, SWAMP_OF_SORROWS },
						{ 61.8, 25.6, SWAMP_OF_SORROWS },
						{ 63.8, 23.6, SWAMP_OF_SORROWS },
						{ 65.2, 22.4, SWAMP_OF_SORROWS },
						-- #else
						{ 64.6, 15.8, SWAMP_OF_SORROWS },
						{ 62.6, 21.8, SWAMP_OF_SORROWS },
						{ 63.2, 25.2, SWAMP_OF_SORROWS },
						{ 60.0, 20.2, SWAMP_OF_SORROWS },
						-- #endif
					},
				}),
				n(1106, {	-- Lost One Cook
					["coords"] = {
						-- #if AFTER CATA
						{ 63.0, 24.4, SWAMP_OF_SORROWS },
						{ 63.0, 26.6, SWAMP_OF_SORROWS },
						{ 63.0, 27.6, SWAMP_OF_SORROWS },
						-- #else
						{ 62.6, 21.6, SWAMP_OF_SORROWS },
						{ 63.0, 26.8, SWAMP_OF_SORROWS },
						{ 67.4, 23.6, SWAMP_OF_SORROWS },
						{ 66.4, 20.4, SWAMP_OF_SORROWS },
						-- #endif
					},
				}),
				n(14448, {	-- Molt Thorn
					["coords"] = {
						-- #if AFTER CATA
						{ 48.2, 40.8, SWAMP_OF_SORROWS },
						{ 50.2, 41.6, SWAMP_OF_SORROWS },
						-- #else
						{ 42.0, 33.6, SWAMP_OF_SORROWS },
						{ 32.4, 32.4, SWAMP_OF_SORROWS },
						{ 22.8, 46.0, SWAMP_OF_SORROWS },
						{ 26.2, 51.6, SWAMP_OF_SORROWS },
						{ 30.8, 49.6, SWAMP_OF_SORROWS },
						{ 35.4, 44.0, SWAMP_OF_SORROWS },
						-- #endif
					},
					-- #if AFTER CATA
					["groups"] = {
						i(5608, {	-- Living Cowl
							["timeline"] = { REMOVED_4_0_3, ADDED_8_0_1 },
						}),
					},
					-- #endif
				}),
				n(50903, {	-- Orlix the Swamplord
					["coords"] = {
						{ 17.12, 36.45, SWAMP_OF_SORROWS },
						{ 17.48, 37.50, SWAMP_OF_SORROWS },
						{ 16.53, 38.26, SWAMP_OF_SORROWS },
						{ 15.78, 37.18, SWAMP_OF_SORROWS },
					},
					["timeline"] = { ADDED_5_2_0 },
				}),
				n(50886, {	-- Seawing
					["coords"] = {	-- pats up and down the beach, coords not exhaustive
						{ 80.2, 16.2, SWAMP_OF_SORROWS },
						{ 83.4, 19.0, SWAMP_OF_SORROWS },
						{ 86.0, 23.8, SWAMP_OF_SORROWS },
						{ 88.6, 26.6, SWAMP_OF_SORROWS },
						{ 89.0, 31.8, SWAMP_OF_SORROWS },
						{ 89.8, 35.2, SWAMP_OF_SORROWS },
						{ 90.6, 40.0, SWAMP_OF_SORROWS },
					},
					["timeline"] = { ADDED_5_1_0 },
				}),
				n(50738, {	-- Shimmerscale
					["coords"] = {	-- pats and/or multiple spawnpoints, coords not exhaustive
						{ 57.0, 51.6, SWAMP_OF_SORROWS },
						{ 56.8, 54.2, SWAMP_OF_SORROWS },
						{ 55.6, 54.0, SWAMP_OF_SORROWS },
						{ 54.0, 54.2, SWAMP_OF_SORROWS },
					},
					["timeline"] = { ADDED_5_2_0 },
				}),
				n(50797, {	-- Yukiko
					["coords"] = {
						{ 69.0, 65.2, SWAMP_OF_SORROWS },
						{ 70.6, 66.2, SWAMP_OF_SORROWS },
						{ 69.8, 67.6, SWAMP_OF_SORROWS },
					},
					["timeline"] = { ADDED_5_2_0 },
				}),
			}),
			n(VENDORS, {
				n(989, {	-- Banalash <Trade Supplies>
					["coords"] = {
						-- #if AFTER CATA
						{ 46.6, 57.0, SWAMP_OF_SORROWS },
						-- #else
						{ 44.6, 56.8, SWAMP_OF_SORROWS },
						-- #endif
					},
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(21941, {	-- Design: Black Pearl Panther (RECIPE!)
							["timeline"] = { ADDED_2_0_1 },
							["isLimited"] = true,
						}),
						i(11223, {	-- Formula: Enchant Bracer - Dodge (RECIPE!) / Formula: Enchant Bracer - Deflection (RECIPE!)
							["isLimited"] = true,
						}),
						i(12232),	-- Recipe: Carrion Surprise (RECIPE!)
						i(16111),	-- Recipe: Spiced Chili Crab (RECIPE!)
					},
				}),
				n(8176, {	-- Gharash <Blacksmithing Supplies>
					["coords"] = {
						-- #if AFTER CATA
						{ 47.2, 52.2, SWAMP_OF_SORROWS },
						-- #else
						{ 45.6, 51.6, SWAMP_OF_SORROWS },
						-- #endif
					},
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(7995, {	-- Plans: Mithril Scale Bracers (RECIPE!)
							["isLimited"] = true,
						}),
					},
				}),
				n(11874, {	-- Masat T'andr <Superior Leatherworker>
					["coords"] = {
						-- #if AFTER CATA
						{ 29.6, 33.6, SWAMP_OF_SORROWS },
						-- #else
						{ 26.5, 31.4, SWAMP_OF_SORROWS },
						-- #endif
					},
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(15726, {	-- Pattern: Green Dragonscale Breastplate (RECIPE!)
							-- The new version (78346) drops in the Sunken Temple
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(12253, {	-- Brilliant Red Cloak
							["isLimited"] = true,
						}),
						i(12254, {	-- Well Oiled Cloak
							["isLimited"] = true,
						}),
					},
				}),
				n(8177, {	-- Rartar <Alchemy Supplies>
					["coords"] = {
						-- #if AFTER CATA
						{ 47.2, 57.2, SWAMP_OF_SORROWS },
						-- #else
						{ 45.4, 57.0, SWAMP_OF_SORROWS },
						-- #endif
					},
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(9300, {	-- Recipe: Elixir of Demonslaying (RECIPE!)
							["isLimited"] = true,
						}),
					},
				}),
				n(984, {	-- Thralosh <Cloth & Leather Armor Merchant>
					["coords"] = {
						-- #if AFTER CATA
						{ 46.8, 52.6, SWAMP_OF_SORROWS },
						-- #else
						{ 45.0, 51.6, SWAMP_OF_SORROWS },
						-- #endif
					},
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(12256, {	-- Cindercloth Leggings
							["isLimited"] = true,
						}),
						i(12255, {	-- Pale Leggings
							["isLimited"] = true,
						}),
					},
				}),
			}),
			n(ZONE_DROPS, {
				i(11205, {	-- Formula: Enchant Gloves - Advanced Herbalism (RECIPE!)
					["timeline"] = { REMOVED_4_0_3 },
					["crs"] = {
						1081,	-- Mire Lord
						14448,	-- Molt Thorn
						764,	-- Swampwalker
						765,	-- Swampwalker Elder
						766,	-- Tangled Horror
					},
				}),
				-- #if BEFORE CATA
				i(5608, {	-- Living Cowl
					["crs"] = {
						14448,	-- Molt Thorn
						766,	-- Tangled Horror
					},
				}),
				-- #endif
				i(6172, {	-- Lost Supplies
					["timeline"] = { REMOVED_4_0_3 },
				}),
				i(6196, {	-- Noboru's Cudgel
					["timeline"] = { REMOVED_4_0_3 },
					["cr"] = 5477,	-- Noboru the Cudgel
				}),
				-- #if BEFORE CATA
				i(8498, {	-- Emerald Whelpling (PET!)
					["crs"] = {
						-- #if AFTER 3.1.0
						740,	-- Adolescent Whelp
						-- #endif
						741,	-- Dreaming Whelp
					},
				}),
				-- #endif
			}),
		},
	}),
}));
