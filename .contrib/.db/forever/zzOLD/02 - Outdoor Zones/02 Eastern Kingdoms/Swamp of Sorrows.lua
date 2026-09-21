---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(MAP.EASTERN_KINGDOMS, {
	m(MAP.SWAMP_OF_SORROWS, {
		["lore"] = "The Swamp of Sorrows is a marshland in southern Eastern Kingdoms filled with green dragons serving Ysera. When the Dark Portal imploded during the Second War, The Black Morass was split in half--the northern part became the Swamp, while the southern half became the barren Blasted Lands.",
		["icon"] = 236845,
		["groups"] = {
			n(ACHIEVEMENTS, {
				ach(782),	-- Explore Swamp of Sorrows
			}),
			explorationHeader({
				exploration(76),	-- Fallow Sanctuary
				exploration(1777),	-- Itharius's Cave
				exploration(1978),	-- Misty Reed Post
				exploration(300),	-- Misty Reed Strand
				exploration(116),	-- Misty Valley
				exploration(74),	-- Pool of Tears
				exploration(1778),	-- Sorrowmurk
				exploration(1780),	-- Splinterspear Junction
				exploration(1797),	-- Stagalbog
				exploration(75),	-- Stonard
				exploration(657),	-- The Harborage
				exploration(1798),	-- The Shifting Mire
			}),
			n(FLIGHT_PATHS, {
				fp(56, {	-- Stonard, Swamp of Sorrows
					["cr"] = 6026,	-- Breyk <Wind Rider Master>
					["coord"] = { 46.0, 54.6, MAP.SWAMP_OF_SORROWS },
					["races"] = HORDE_ONLY,
				}),
			}),
			lockpicking({
				o(179493, {	-- Mossy Footlocker
					["coords"] = {
						{ 69.1, 44.6, MAP.SWAMP_OF_SORROWS },
						{ 65.2, 55.8, MAP.SWAMP_OF_SORROWS },
						{ 74.0, 60.4, MAP.SWAMP_OF_SORROWS },
					},
					["requireSkill"] = LOCKPICKING,
					["learnedAt"] = 175,
				}),
			}),
			n(PROFESSIONS, {
				prof(ALCHEMY, {
					n(1386, {	-- Rogvar <Alchemy Trainer>
						["coord"] = { 49.8, 56.0, MAP.SWAMP_OF_SORROWS },
						["races"] = HORDE_ONLY,
						["groups"] = EXPERT_ARTISAN_ALCHEMY,
					}),
				}),
				prof(SKINNING, {
					i(7392, {	-- Green Whelp Scale
						["coord"] = { 15.0, 59.0, MAP.SWAMP_OF_SORROWS },
						["crs"] = {
							740,	-- Adolescent Whelp
							741,	-- Dreaming Whelp
						},
					}),
				}),
			}),
			n(QUESTS, {
				q(2801, {	-- A Tale of Sorrow
					["allianceQuestData"] = {
						["sourceQuest"] = 2783,	-- Petty Squabbles (A)
					},
					["hordeQuestData"] = {
						["sourceQuest"] = 2623,	-- The Swamp Talker (H)
					},
					["qg"] = 7572,	-- Fallen Hero of the Horde
					["coord"] = { 34.3, 66.2, MAP.SWAMP_OF_SORROWS },
					["lvl"] = 45,
				}),
				q(8417, {	-- A Troubled Spirit
					["allianceQuestData"] = {
						["qgs"] = {
							7315,	-- Darnath Bladesinger <Warrior Trainer> (Darnassus)
							5113,	-- Kelv Sternhammer <Warrior Trainer> (Ironforge)
							5479,	-- Wu Shen <Warrior Trainer> (Stormwind City)
						},
						["coords"] = {
							{ 58.6, 35.6, MAP.DARNASSUS },
							{ 70.6, 90.6, MAP.IRONFORGE },
							{ 78.8, 45.6, MAP.STORMWIND_CITY },
						},
					},
					["hordeQuestData"] = {
						["qgs"] = {
							3354,	-- Sorek <Warrior Trainer> (Orgrimmar)
							3041,	-- Torm Ragetotem <Warrior Trainer> (Thunder Bluff)
							4593,	-- Christoph Walker <Warrior Trainer> (Undercity)
						},
						["coords"] = {
							{ 80.2, 32.4, MAP.ORGRIMMAR },
							{ 57.6, 87.2, MAP.THUNDER_BLUFF },
							{ 47.8, 14.8, MAP.UNDERCITY },
						},
					},
					["classes"] = { WARRIOR },
					["isBreadcrumb"] = true,
					["lvl"] = 50,
				}),
				q(1428, {	-- Continued Threat
					["sourceQuest"] = 1427,	-- Threat From the Sea
					["qg"] = 5593,	-- Katar
					["coord"] = { 83.8, 80.4, MAP.SWAMP_OF_SORROWS },
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
				q(1425, {	-- Deliver the Shipment
					["sourceQuest"] = 1398,	-- Driftwood
					["providers"] = {
						{ "n", 5476 },	-- Watcher Biggs
						{ "i", 6178 },	-- Shipment to Nethergarde
					},
					["coord"] = { 26.8, 59.8, MAP.SWAMP_OF_SORROWS },
					["maps"] = { MAP.BLASTED_LANDS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
				}),
				q(1389, {	-- Draenethyst Crystals
					["qg"] = 1776,	-- Magtoor
					["coord"] = { 26.0, 31.4, MAP.SWAMP_OF_SORROWS },
					["lvl"] = 30,
					["groups"] = {
						objective(1, {	-- 0/6 Draenethyst Crystal
							["providers"] = {
								{ "i", 6071 },	-- Draenethyst Crystal
								{ "o", 22550 },	-- Draenethyst Crystals
							},
							["coord"] = { 62.2, 23.5, MAP.SWAMP_OF_SORROWS },
						}),
					},
				}),
				q(1398, {	-- Driftwood
					["sourceQuest"] = 1421,	-- The Lost Caravan
					["qg"] = 5476,	-- Watcher Biggs
					["coord"] = { 26.8, 59.8, MAP.SWAMP_OF_SORROWS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
					["groups"] = {
						objective(1, {	-- 0/8 Sundried Driftwood
							["providers"] = {
								{ "i", 6146 },	-- Sundried Driftwood
								{ "o", 24798 },	-- Sundried Driftwood
							},
							["coord"] = { 93.4, 66.1, MAP.SWAMP_OF_SORROWS },
						}),
					},
				}),
				q(1396, {	-- Encroaching Wildlife
					["qg"] = 5476,	-- Watcher Biggs
					["coord"] = { 26.8, 59.8, MAP.SWAMP_OF_SORROWS },
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
					["coord"] = { 34.3, 66.2, MAP.SWAMP_OF_SORROWS },
					["races"] = HORDE_ONLY,
					["lvl"] = 45,
				}),
				q(1430, {	-- Fresh Meat
					["qg"] = 5591,	-- Dar
					["coord"] = { 44.8, 57.2, MAP.SWAMP_OF_SORROWS },
					["races"] = HORDE_ONLY,
					["lvl"] = 35,
					["groups"] = {
						objective(1, {	-- 0/10 Monstrous Crawler Leg
							["provider"] = { "i", 6184 },	-- Monstrous Crawler Leg
							["cr"] = 1088,	-- Monstrous Crawler
						}),
						i(9681),	-- Grilled King Crawler Legs
						i(9682),	-- Leather Chef's Belt
					},
				}),
				q(1393, {	-- Galen's Escape
					["providers"] = {
						{ "n", 5391 },	-- Galen Goodward
						{ "o", 32569 },	-- Galen's Strongbox
					},
					["coords"] = {
						{ 65.4, 18.1, MAP.SWAMP_OF_SORROWS },
						{ 47.9, 39.8, MAP.SWAMP_OF_SORROWS },
					},
					["lvl"] = 30,
					["groups"] = {
						i(6828),	-- Visionary Buckler
					},
				}),
				q(9609, {	-- Help Watcher Biggs
					["qg"] = 17127,	-- Anchorite Avuun
					["coord"] = { 25.8, 31.8, MAP.SWAMP_OF_SORROWS },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 30,
				}),
				q(2702, {	-- Heroes of Old (1/2)
					["sourceQuest"] = 2681,	-- The Stones That Bind Us
					["qg"] = 7572,	-- Fallen Hero of the Horde
					["coord"] = { 34.3, 66.2, MAP.SWAMP_OF_SORROWS },
					["lvl"] = 45,
				}),
				q(2701, {	-- Heroes of Old (2/2)
					["sourceQuest"] = 2702,	-- Heroes of Old (1/2)
					["providers"] = {
						{ "n",   7750 },	-- Corporal Thund Splithoof
						{ "o", 141980 },	-- Spectral Lockbox
					},
					["coord"] = { 33.5, 66.0, MAP.SWAMP_OF_SORROWS },
					["lvl"] = 45,
					["groups"] = {
						i(10659),	-- Shard of the Splithooves  / Shard of Afrasa [Original]
					},
				}),
				q(2721, {	-- Kirith
					["sourceQuest"] = 2701,	-- Heroes of Old (2/2)
					["qg"] = 7572,	-- Fallen Hero of the Horde
					["coord"] = { 34.3, 66.2, MAP.SWAMP_OF_SORROWS },
					["maps"] = { MAP.BLASTED_LANDS },
					["lvl"] = 45,
				}),
				q(698, {	-- Lack of Surplus (1/2)
					["qg"] = 5591,	-- Dar
					["coord"] = { 44.8, 57.2, MAP.SWAMP_OF_SORROWS },
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
					["sourceQuest"] = 698,	-- Lack of Surplus (1/2)
					["qg"] = 5592,	-- Tok'Kar
					["coord"] = { 81.4, 80.8, MAP.SWAMP_OF_SORROWS },
					["races"] = HORDE_ONLY,
					["lvl"] = 35,
					["groups"] = {
						objective(1, {	-- 0/6 Sawtooth Snapper Claw
							["provider"] = { "i", 6168 },	-- Sawtooth Snapper Claw
							["cr"] = 1087,	-- Sawtooth Snapper
						}),
					},
				}),
				q(9440, {	-- Little Morsels
					["qg"] = 17109,	-- Cersei Dusksinger
					["coord"] = { 47.8, 54.9, MAP.DUSTWALLOW_MARSH },
					["races"] = HORDE_ONLY,
					["lvl"] = 35,
					["groups"] = {
						objective(1, {	-- Captured Crocolisk Fed
							["provider"] = { "i", 23659 },	-- Fel-Tainted Morsels
							["coord"] = { 60.6, 22.4, MAP.DUSTWALLOW_MARSH },
							["cr"] = 17113,	-- Captured Crocolisk
						}),
						objective(2, {	-- Captured Jaguar Fed
							["provider"] = { "i", 23659 },	-- Fel-Tainted Morsels
							["coord"] = { 65.4, 23.0, MAP.DUSTWALLOW_MARSH },
							["cr"] = 17111,	-- Captured Jaguar
						}),
						objective(3, {	-- Captured Tarantula Fed
							["provider"] = { "i", 23659 },	-- Fel-Tainted Morsels
							["coord"] = { 62.4, 23.4, MAP.DUSTWALLOW_MARSH },
							["cr"] = 17112,	-- Captured Tarantula
						}),
					},
				}),
				q(9448, {	-- Mercy for the Cursed
					["qg"] = 17127,	-- Anchorite Avuun
					["coord"] = { 25.8, 31.8, MAP.SWAMP_OF_SORROWS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 35,
					["groups"] = {
						objective(1, {	-- 0/3 Cursed Lost Ones
							["provider"] = { "n", 17115 },	-- Cursed Lost One
						}),
					},
				}),
				q(1418, {	-- Neeka Bloodscar
					["qg"] = 1442,	-- Helgrum the Swift
					["coord"] = { 47.7, 55.2, MAP.DUSTWALLOW_MARSH },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 30,
				}),
				q(1392, {	-- Noboru the Cudgel
					["provider"] = { "i", 6196 },	-- Noboru's Cudgel
					["cr"] = 5477,	-- Noboru the Cudgel
					["lvl"] = 29,
				}),
				q(1424, {	-- Pool of Tears (H)
					["qg"] = 1443,	-- Fel'zerul
					["coord"] = { 64.2, 20.8, MAP.SWAMP_OF_SORROWS },
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
							["coord"] = { 65.5, 55.5, MAP.SWAMP_OF_SORROWS },
						}),
					},
				}),
				q(1444, {	-- Return to Fel'Zerul
					["sourceQuest"] = 1429,	-- The Atal'ai Exile
					["qg"] = 5598,	-- Atal'ai Exile
					["coord"] = { 33.6, 75.2, MAP.THE_HINTERLANDS },
					["races"] = HORDE_ONLY,
					["lvl"] = 38,
				}),
				q(1429, {	-- The Atal'ai Exile
					["sourceQuest"] = 1424,	-- Pool of Tears [Horde]
					["providers"] = {
						{ "n", 1443 },	-- Fel'zerul
						{ "i", 6193 },	-- Bundle of Atal'ai Artifacts
					},
					["coord"] = { 64.2, 20.8, MAP.SWAMP_OF_SORROWS },
					["maps"] = { MAP.THE_HINTERLANDS },
					["races"] = HORDE_ONLY,
					["lvl"] = 38,
				}),
				q(2744, {	-- The Demon Hunter
					["sourceQuest"] = 2743,	-- The Cover of Darkness
					["qg"] = 7572,	-- Fallen Hero of the Horde
					["coord"] = { 34.3, 66.2, MAP.SWAMP_OF_SORROWS },
					["maps"] = { MAP.AZSHARA },
					["lvl"] = 45,
				}),
				q(2621, {	-- The Disgraced One
					["sourceQuest"] = 2784,	-- Fall From Grace
					["qg"] = 7572,	-- Fallen Hero of the Horde
					["coord"] = { 34.3, 66.2, MAP.SWAMP_OF_SORROWS },
					["races"] = HORDE_ONLY,
					["lvl"] = 45,
				}),
				q(1421, {	-- The Lost Caravan
					["sourceQuest"] = 1396,	-- Encroaching Wildlife
					["qg"] = 5476,	-- Watcher Biggs
					["coord"] = { 26.8, 59.8, MAP.SWAMP_OF_SORROWS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
					["groups"] = {
						objective(1, {	-- 0/1 Wizards' Reagents
							["providers"] = {
								{ "i", 6170 },	-- Wizards' Reagents
								{ "o", 28024 },	-- Caravan Chest
							},
							["coord"] = { 64.6, 18.4, MAP.SWAMP_OF_SORROWS },
						}),
					},
				}),
				q(1423, {	-- The Lost Supplies
					["providers"] = {
						{ "i", 6172 },	-- Lost Supplies
						{ "o", 28604 },	-- Scattered Crate
					},
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					["lvl"] = 30,
					["groups"] = {
						i(6827),	-- Box of Supplies
					},
				}),
				q(2622, {	-- The Missing Orders
					["sourceQuest"] = 2621,	-- The Disgraced One
					["qg"] = 7623,	-- Dispatch Commander Ruag
					["coord"] = { 47.8, 55.0, MAP.SWAMP_OF_SORROWS },
					["races"] = HORDE_ONLY,
					["lvl"] = 45,
				}),
				q(2681, {	-- The Stones That Bind Us
					["sourceQuest"] = 2801,	-- A Tale of Sorrow
					["qg"] = 7572,	-- Fallen Hero of the Horde
					["coord"] = { 34.3, 66.2, MAP.SWAMP_OF_SORROWS },
					["maps"] = { MAP.BLASTED_LANDS },
					["lvl"] = 45,
					["groups"] = {
						objective(1, {	-- 0/9 Servant of Razelikh slain
							["providers"] = {
								{ "n",   7668 },	-- Servant of Razelikh
								{ "o", 141812 },	-- Stone of Binding
							},
							["coords"] = {
								{ 51.8, 56.8, MAP.BLASTED_LANDS },
								{ 58.0, 49.8, MAP.BLASTED_LANDS },
								{ 63.8, 55.8, MAP.BLASTED_LANDS },
							},
						}),
						objective(2, {	-- 0/3 Servant of Grol slain
							["providers"] = {
								{ "n",   7669 },	-- Servant of Grol
								{ "o", 141857 },	-- Stone of Binding
							},
							["coords"] = {
								{ 41.6, 14.2, MAP.BLASTED_LANDS },
								{ 49.8, 43.8, MAP.BLASTED_LANDS },
							},
						}),
						objective(3, {	-- 0/3 Servant of Allistarj slain
							["providers"] = {
								{ "n",   7670 },	-- Servant of Allistarj
								{ "o", 141858 },	-- Stone of Binding
							},
							["coords"] = {
								{ 64.8, 34.6, MAP.BLASTED_LANDS },
								{ 64.0, 40.6, MAP.BLASTED_LANDS },
								{ 64.6, 46.6, MAP.BLASTED_LANDS },
							},
						}),
						objective(4, {	-- 0/3 Servant of Sevine slain
							["providers"] = {
								{ "n",   7671 },	-- Servant of Sevine
								{ "o", 141859 },	-- Stone of Binding
							},
							["coords"] = {
								{ 38.6, 34.0, MAP.BLASTED_LANDS },
								{ 42.8, 41.4, MAP.BLASTED_LANDS },
							},
						}),
					},
				}),
				q(2623, {	-- The Swamp Talker
					["sourceQuest"] = 2622,	-- The Missing Orders
					["qg"] = 7643,	-- Bengor
					["coord"] = { 45.0, 57.2, MAP.SWAMP_OF_SORROWS },
					["races"] = HORDE_ONLY,
					["lvl"] = 45,
					["groups"] = {
						objective(1, {	-- 0/1 Warchief's Orders
							["provider"] = { "i", 8463, },	-- Warchief's Orders
							["coord"] = { 63.8, 83.6, MAP.SWAMP_OF_SORROWS },
							["cr"] = 950,	-- Swamp Talker
						}),
					},
				}),
				q(1422, {	-- Threat From the Sea (1/3)
					["sourceQuest"] = 699,	-- Lack of Surplus (2/2)
					["qg"] = 5592,	-- Tok'Kar
					["coord"] = { 81.3, 81.0, MAP.SWAMP_OF_SORROWS },
					["races"] = HORDE_ONLY,
					["lvl"] = 35,
				}),
				q(1426, {	-- Threat From the Sea (2/3)
					["sourceQuest"] = 1422,	-- Threat From the Sea (1/3)
					["qg"] = 5593,	-- Katar
					["coord"] = { 83.8, 80.4, MAP.SWAMP_OF_SORROWS },
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
					["sourceQuest"] = 1426,	-- Threat From the Sea (2/3)
					["qg"] = 5593,	-- Katar
					["coord"] = { 83.8, 80.4, MAP.SWAMP_OF_SORROWS },
					["races"] = HORDE_ONLY,
					["lvl"] = 35,
					["groups"] = {
						i(9680),	-- Tok'kar's Murloc Shanker
						i(9678),	-- Tok'kar's Murloc Basher
						i(9679),	-- Tok'kar's Murloc Chopper
					},
				}),
				q(3627, {	-- Uniting the Shattered Amulet
					["sourceQuest"] = 3626,	-- Return to the Blasted Lands
					["qg"] = 7572,	-- Fallen Hero of the Horde
					["coord"] = { 34.3, 66.2, MAP.SWAMP_OF_SORROWS },
					["maps"] = { MAP.BLASTED_LANDS },
					["lvl"] = 45,
					["groups"] = {
						objective(1, {	-- 0/1 Amulet of Allistarj
							["provider"] = { "i", 10755 },	-- Amulet of Allistarj
							["coord"] = { 66.8, 29.6, MAP.BLASTED_LANDS },
							["cr"] = 7666,	-- Archmage Allistarj
						}),
						objective(2, {	-- 0/1 Amulet of Grol
							["provider"] = { "i", 10753 },	-- Amulet of Grol
							["coord"] = { 43.0, 12.8, MAP.BLASTED_LANDS },
							["cr"] = 7665,	-- Grol the Destroyer
						}),
						objective(3, {	-- 0/1 Amulet of Sevine
							["provider"] = { "i", 10754 },	-- Amulet of Sevine
							["coord"] = { 40.6, 30.2, MAP.BLASTED_LANDS },
							["cr"] = 7667,	-- Lady Sevine
						}),
					},
				}),
				q(8424, {	-- War on the Shadowsworn
					["sourceQuest"] = 8423,	-- Warrior Kinship
					["qg"] = 7572,	-- Fallen Hero of the Horde
					["coord"] = { 34.3, 66.2, MAP.SWAMP_OF_SORROWS },
					["maps"] = { MAP.BLASTED_LANDS },
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
				}),
				q(8423, {	-- Warrior Kinship
					["sourceQuest"] = 8417,	-- A Troubled Spirit
					["qg"] = 7572,	-- Fallen Hero of the Horde
					["coord"] = { 34.3, 66.2, MAP.SWAMP_OF_SORROWS },
					["maps"] = { MAP.BLASTED_LANDS },
					["classes"] = { WARRIOR },
					["lvl"] = 50,
					["groups"] = {
						objective(1, {	-- 0/7 Helboar slain
							["provider"] = { "n", 5993 },	-- Helboar
						}),
					},
				}),
			}),
			n(RARES, {
				n(14446, {	-- Fingat
					["coords"] = {
						{ 66.0, 83.2, MAP.SWAMP_OF_SORROWS },
						{ 66.6, 84.2, MAP.SWAMP_OF_SORROWS },
						{ 64.2, 91.4, MAP.SWAMP_OF_SORROWS },
						{ 61.0, 85.6, MAP.SWAMP_OF_SORROWS },
						{ 64.4, 82.6, MAP.SWAMP_OF_SORROWS },
					},
				}),
				n(14447, {	-- Gilmorian
					["coords"] = {
						{ 78.0, 5.6, MAP.SWAMP_OF_SORROWS },
						{ 90.6, 24.0, MAP.SWAMP_OF_SORROWS },
						{ 93.6, 39.6, MAP.SWAMP_OF_SORROWS },
						{ 95.2, 51.2, MAP.SWAMP_OF_SORROWS },
						{ 93.6, 59.6, MAP.SWAMP_OF_SORROWS },
						{ 90.6, 73.2, MAP.SWAMP_OF_SORROWS },
						{ 87.0, 80.4, MAP.SWAMP_OF_SORROWS },
						{ 85.4, 87.0, MAP.SWAMP_OF_SORROWS },
						{ 83.4, 93.6, MAP.SWAMP_OF_SORROWS },
					},
				}),
				n(1063, {	-- Jade <Victim of the Nightmare>
					["description"] = "Spawns outside of the entrance to the Sunken Temple.",
				}),
				n(14445, {	-- Lord Captain Wyrmak / Captain Wyrmak <Victim of the Nightmare> [CATA+]
					["coords"] = {
						{ 63.2, 40.6, MAP.SWAMP_OF_SORROWS },
						{ 69.8, 36.0, MAP.SWAMP_OF_SORROWS },
						{ 76.8, 39.2, MAP.SWAMP_OF_SORROWS },
						{ 79.8, 48.2, MAP.SWAMP_OF_SORROWS },
						{ 81.0, 57.8, MAP.SWAMP_OF_SORROWS },
						{ 77.2, 65.8, MAP.SWAMP_OF_SORROWS },
					},
				}),
				n(763, {	-- Lost One Chieftain
					["coords"] = {
						{ 64.6, 15.8, MAP.SWAMP_OF_SORROWS },
						{ 62.6, 21.8, MAP.SWAMP_OF_SORROWS },
						{ 63.2, 25.2, MAP.SWAMP_OF_SORROWS },
						{ 60.0, 20.2, MAP.SWAMP_OF_SORROWS },
					},
				}),
				n(1106, {	-- Lost One Cook
					["coords"] = {
						{ 62.6, 21.6, MAP.SWAMP_OF_SORROWS },
						{ 63.0, 26.8, MAP.SWAMP_OF_SORROWS },
						{ 67.4, 23.6, MAP.SWAMP_OF_SORROWS },
						{ 66.4, 20.4, MAP.SWAMP_OF_SORROWS },
					},
				}),
				n(14448, {	-- Molt Thorn
					["coords"] = {
						{ 42.0, 33.6, MAP.SWAMP_OF_SORROWS },
						{ 32.4, 32.4, MAP.SWAMP_OF_SORROWS },
						{ 22.8, 46.0, MAP.SWAMP_OF_SORROWS },
						{ 26.2, 51.6, MAP.SWAMP_OF_SORROWS },
						{ 30.8, 49.6, MAP.SWAMP_OF_SORROWS },
						{ 35.4, 44.0, MAP.SWAMP_OF_SORROWS },
					},
				}),
			}),
			n(VENDORS, {
				n(989, {	-- Banalash <Trade Supplies>
					["coord"] = { 44.6, 56.8, MAP.SWAMP_OF_SORROWS },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(11223, {	-- Formula: Enchant Bracer - Dodge (RECIPE!) / Formula: Enchant Bracer - Deflection (RECIPE!)
							["isLimited"] = true,
						}),
						i(12232),	-- Recipe: Carrion Surprise (RECIPE!)
						i(16111),	-- Recipe: Spiced Chili Crab (RECIPE!)
					},
				}),
				n(8176, {	-- Gharash <Blacksmithing Supplies>
					["coord"] = { 45.6, 51.6, MAP.SWAMP_OF_SORROWS },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(7995, {	-- Plans: Mithril Scale Bracers (RECIPE!)
							["isLimited"] = true,
						}),
					},
				}),
				n(11874, {	-- Masat T'andr <Superior Leatherworker>
					["coord"] = { 26.5, 31.4, MAP.SWAMP_OF_SORROWS },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(15726, {	-- Pattern: Green Dragonscale Breastplate (RECIPE!)
							-- The new version (78346) drops in the Sunken Temple
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
					["coord"] = { 45.4, 57.0, MAP.SWAMP_OF_SORROWS },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(9300, {	-- Recipe: Elixir of Demonslaying (RECIPE!)
							["isLimited"] = true,
						}),
					},
				}),
				n(984, {	-- Thralosh <Cloth & Leather Armor Merchant>
					["coord"] = { 45.0, 51.6, MAP.SWAMP_OF_SORROWS },
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
					["crs"] = {
						1081,	-- Mire Lord
						14448,	-- Molt Thorn
						764,	-- Swampwalker
						765,	-- Swampwalker Elder
						766,	-- Tangled Horror
					},
				}),
				i(5608, {	-- Living Cowl
					["crs"] = {
						14448,	-- Molt Thorn
						766,	-- Tangled Horror
					},
				}),
				i(6172),	-- Lost Supplies
				i(6196, {	-- Noboru's Cudgel
					["cr"] = 5477,	-- Noboru the Cudgel
				}),
				i(8498, {	-- Emerald Whelpling (PET!)
					["crs"] = {
						741,	-- Dreaming Whelp
					},
				}),
			}),
		},
	}),
}));
