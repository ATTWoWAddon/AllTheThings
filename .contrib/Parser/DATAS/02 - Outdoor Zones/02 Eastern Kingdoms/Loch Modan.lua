---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(EASTERN_KINGDOMS, {
	m(LOCH_MODAN, {
		["lore"] = "Loch Modan is a large area east of Dun Morogh, situated in eastern Khaz Modan. It is known for its temperate climate, abandoned archaeological dig site and, until the cataclysm, the huge lake from which the region takes its name. The gray and rugged Khaz Modan mountains rise up on all sides around the loch, and the hills are lightly wooded with pine and birch.\n\nLoch Modan is heavily populated by hostile troggs, unearthed from caves below ground by the dwarven digs. They have since settled in the surrounding mountainous area and built crude camps and caves from which to strike at passing travelers. Other dangers include dangerous wildlife, aggressive kobolds, and the powerful ogres of the Mo'grosh Stronghold.",
		["icon"] = 236808,
		["groups"] = {
			n(ACHIEVEMENTS, {
				explorationAch(779),	-- Explore Loch Modan
				ach(4899, {	-- Loch Modan Quests
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					-- #if ANYCLASSIC
					-- #if AFTER MOP
					["groups"] = {
						crit(1, {	-- The Road to Thelsamar
							["sourceQuests"] = {
								26148,	-- A Decisive Strike
								26147,	-- Bigger and Uglier
								25118,	-- Looking for Lurkers
								13648,	-- WANTED: The Dark Iron Spy
								--	two above are definitely required; unclear if these are
								--	26145,	-- The Trogg Threat
								--	26842,	-- Out of Gnoll-where
								--	26860,	-- Thelsamar Blood Sausages
							},
						}),
						crit(2, {	-- The Axis of Awful
							["sourceQuest"] = 26868,	-- Axis of Awful
						}),
						crit(3, {	-- Twilight Threats
							["sourceQuest"] = 27116,	-- The Winds of Loch Modan
						}),
						crit(4, {	-- The Farstrider Lodge
							["sourceQuests"] = {
								27033,	-- Skystrider's Heart
								27037,	-- Vyrin's Revenge (#2)
								27026,	-- Defcon: Bobcat
							--	above definitely required; unclear if these are
							--	27028,	-- Hornet Hunting
							--	27030,	-- Foxtails by the Handful
							},
						}),
					},
					-- #else
					["sourceQuests"] = {
						26148,	-- A Decisive Strike
						26147,	-- Bigger and Uglier
						25118,	-- Looking for Lurkers
						13648,	-- WANTED: The Dark Iron Spy
						--	two above are definitely required; unclear if these are
						--	26145,	-- The Trogg Threat
						--	26842,	-- Out of Gnoll-where
						--	26860,	-- Thelsamar Blood Sausages
						26868,	-- Axis of Awful
						27116,	-- The Winds of Loch Modan
						27033,	-- Skystrider's Heart
						27037,	-- Vyrin's Revenge (#2)
						27026,	-- Defcon: Bobcat
						--	above definitely required; unclear if these are
						--	27028,	-- Hornet Hunting
						--	27030,	-- Foxtails by the Handful
					},
					-- #endif
					-- #endif
				}),
			}),
			battlepets({
				["sym"] = {{"select","speciesID",
					441,	-- Alpine Hare (PET!)
					417,	-- Rat (PET!)
					419,	-- Small Frog (PET!)
					387,	-- Snake (PET!)
					440,	-- Snow Cub (PET!)
					379,	-- Squirrel (PET!)
				}},
				["groups"] = {
					pet(437),	-- Little Black Ram (PET!)
				},
			}),
			explorationHeader({
				exploration(925),	-- Algaz Station
				-- #if AFTER CATA
				exploration(837),	-- Dun Algaz
				-- #endif
				exploration(936),	-- Grizzlepaw Ridge
				exploration(142),	-- Ironband's Excavation Site
				exploration(143),	-- Mo'grosh Stronghold
				exploration(838),	-- North Gate Pass
				exploration(149),	-- Silver Stream Mine
				-- #if AFTER CATA
				exploration(806),	-- South Gate Outpost
				exploration(839),	-- South Gate Pass
				-- #endif
				exploration(923),	-- Stonesplinter Valley
				exploration(146),	-- Stonewrought Dam
				exploration(147),	-- The Farstrider Lodge
				exploration(556),	-- The Loch
				exploration(144),	-- Thelsamar
				exploration(924),	-- Valley of Kings
			}),
			n(FLIGHT_PATHS, {
				fp(555, {	-- Farstrider Lodge, Loch Modan
					["cr"] = 41332,	-- Eeryven Grayer <Gryphon Master>
					["coord"] = { 81.8, 64.2, LOCH_MODAN },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				fp(8, {	-- Thelsamar, Loch Modan
					["cr"] = 1572,	-- Thorgrum Borrelson <Gryphon Master>
					["coord"] = { 33.8, 50.8, LOCH_MODAN },
					["races"] = ALLIANCE_ONLY,
				}),
			}),
			-- #if SEASON_OF_DISCOVERY
			spell(921, {	-- Pickpocketing
				["classes"] = { ROGUE },
				["groups"] = {
					applyclassicphase(SOD_PHASE_ONE, i(208838, {	-- Dark Iron Lockbox
						["coord"] = { 56.6, 14.0, LOCH_MODAN },
						["classes"] = { ROGUE },
						["crs"] = {
							1222,	-- Dark Iron Sapper
							1169,	-- Dark Iron Insurgent
						},
						["groups"] = {
							i(208771, {	-- Rune of Blade Dance
								["classes"] = { ROGUE },
								["groups"] = {
									recipe(400099),	-- Engrave Pants - Blade Dance
								},
							}),
						},
					})),
				},
			}),
			-- #endif
			n(QUESTS, {
				q(250, {	-- A Dark Threat Looms (1/7)
					["qg"] = 1093,	-- Chief Engineer Hinderweir VII
					["coord"] = { 46, 13.6, LOCH_MODAN },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 16,
				}),
				q(199, {	-- A Dark Threat Looms (2/7)
					["providers"] = {
						{ "o", 257 },	-- Suspicious Barrel
						{ "i", 2563 },	-- Strange Smelling Powder
					},
					["sourceQuest"] = 250,	-- A Dark Threat Looms (1/7)
					["coord"] = { 56.1, 13.3, LOCH_MODAN },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 16,
				}),
				q(161, {	-- A Dark Threat Looms (3/7)
					["providers"] = {
						{ "n", 1093 },	-- Chief Engineer Hinderweir VII
						{ "i", 2563 },	-- Strange Smelling Powder
					},
					["sourceQuest"] = 199,	-- A Dark Threat Looms (2/7)
					["coord"] = { 46, 13.6, LOCH_MODAN },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { WETLANDS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 16,
				}),
				q(274, {	-- A Dark Threat Looms (4/7)
					["providers"] = {
						{ "n", 1073 },	-- Ashlan Stonesmirk
						{ "i", 2609 },	-- Disarming Colloid
					},
					["sourceQuest"] = 161,	-- A Dark Threat Looms (3/7)
					["coord"] = { 50, 18.2, WETLANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 16,
				}),
				q(278, {	-- A Dark Threat Looms (5/7)
					["qg"] = 1093,	-- Chief Engineer Hinderweir VII
					["sourceQuest"] = 274,	-- A Dark Threat Looms (4/7)
					["coord"] = { 46, 13.6, LOCH_MODAN },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 16,
					["groups"] = {
						objective(1, {	-- 0/1 Lurker Venom
							["provider"] = { "i", 2606 },	-- Lurker Venom
							["crs"] = {
								1184,	-- Cliff Lurker
								1195,	-- Forest Lurker
								14266,	-- Shanda the Spinner
								1185,	-- Wood Lurker
							},
						}),
						objective(2, {	-- 0/1 Mo'grosh Crystal
							["provider"] = { "i", 2607 },	-- Mo'grosh Crystal
							["crs"] = {
								14267,	-- Emogg the Crusher
								1180,	-- Mo'grosh Brute
								1179,	-- Mo'grosh Enforcer
								1183,	-- Mo'grosh Mystic
								1178,	-- Mo'grosh Ogre
								1181,	-- Mo'grosh Shaman
							},
						}),
						objective(3, {	-- 0/1 Crocolisk Tear
							["provider"] = { "i", 2939 },	-- Crocolisk Tear
							["crs"] = {
								2476,	-- Large Loch Crocolisk
								1693,	-- Loch Crocolisk
							},
						}),
					},
				}),
				q(280, {	-- A Dark Threat Looms (6/7)
					["providers"] = {
						{ "n", 1093 },	-- Chief Engineer Hinderweir VII
						{ "i", 2610 },	-- Disarming Mixture
					},
					["sourceQuest"] = 278,	-- A Dark Threat Looms (5/7)
					["coord"] = { 46, 13.6, LOCH_MODAN },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 16,
				}),
				q(283, {	-- A Dark Threat Looms (7/7)
					["provider"] = { "o", 1585 },	-- Explosive Charge
					["sourceQuest"] = 280,	-- A Dark Threat Looms (6/7)
					["coord"] = { 50.6, 14.4, LOCH_MODAN },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 16,
					["groups"] = {
						i(2907, {	-- Dwarven Tree Chopper
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(2908, {	-- Thornblade
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(26148, {	-- A Decisive Strike
					["qg"] = 1092,	-- Captain Rugelfuss
					["sourceQuest"] = 26146,	-- In Defense of the King's Lands
					["coord"] = { 23.4, 75.0, LOCH_MODAN },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Grawmug slain
							["provider"] = { "n", 42230 },	-- Grawmug
						}),
						i(58989, {	-- Belt of the Valley of Kings
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(58990, {	-- Rugelfuss Bracers
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(58988, {	-- Unbound Leggings
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131492, {	-- Waistguard of the Valley of Kings
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(257, {	-- A Hunter's Boast
					["qg"] = 1187,	-- Daryl the Youngling
					["coord"] = { 83.4, 65.2, LOCH_MODAN },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 11,
					["groups"] = {
						objective(1, {	-- 0/6 Mountain Buzzard slain
							["provider"] = { "n", 1194 },	-- Mountain Buzzard
						}),
						i(59004, {	-- Daryl's Bow
							["timeline"] = { ADDED_4_0_1, REMOVED_4_0_3 },
						}),
						i(2903, {	-- Daryl's Hunting Bow
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(2904, {	-- Daryl's Hunting Rifle
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(59003, {	-- Daryl's Rifle
							["timeline"] = { ADDED_4_0_1, REMOVED_4_0_3 },
						}),
					},
				}),
				q(258, {	-- A Hunter's Challenge
					["qg"] = 1187,	-- Daryl the Youngling
					["sourceQuest"] = 257,	-- A Hunter's Boast
					["coord"] = { 83.4, 65.2, LOCH_MODAN },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 11,
					["groups"] = {
						objective(1, {	-- 0/5 Elder Mountain Boar slain
							["provider"] = { "n", 1192 },	-- Elder Mountain Boar
						}),
						i(59000, {	-- Daryl's Axe
							["timeline"] = { ADDED_4_0_1, REMOVED_4_0_3 },
						}),
						i(3572, {	-- Daryl's Shortsword
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(859, {	-- Fine Cloth Shirt
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(59001, {	-- Ill-Worn Belt
							["timeline"] = { ADDED_4_0_1, REMOVED_4_0_3 },
						}),
						i(59002, {	-- Unabashed Vest
							["timeline"] = { ADDED_4_0_1, REMOVED_4_0_3 },
						}),
					},
				}),
				q(26929, {	-- A Load of Croc
					["qg"] = 44345,	-- Cannary Caskshot
					["sourceQuest"] = 26927,	-- Suddenly, Murlocs!
					["coord"] = { 34.7, 49.1, LOCH_MODAN },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/6 Intact Crocolisk Jaw
							["provider"] = { "i", 57131 },	-- Intact Crocolisk Jaw
							["cr"] = 1693,	-- Loch Crocolisk
						}),
					},
				}),
				q(26846, {	-- A Nasty Exploit
					["qg"] = 44200,	-- Scout Dorli
					["sourceQuest"] = 26844,	-- Kobold and Kobolder
					["coord"] = { 25.5, 17.9, LOCH_MODAN },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/5 Tunnel Rat Geomancer slain
							["provider"] = { "n", 1174 },	-- Tunnel Rat Geomancer
						}),
					},
				}),
				q(26843, {	-- A Tiny, Clever Commander
					["qg"] = 1343,	-- Mountaineer Stormpike
					["sourceQuest"] = 13636,	-- Stormpike's Orders
					["coord"] = { 25.4, 17.9, LOCH_MODAN },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 "Commander" Nazrim slain
							["provider"] = { "n", 44197 },	-- "Commander" Nazrim
						}),
					},
				}),
				q(454, {	-- After the Ambush
					["qg"] = 2057,	-- Huldar
					["sourceQuest"] = 273,	-- Resupplying the Excavation
					["coord"] = { 52.2, 69.2, LOCH_MODAN },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 10,
				}),
				q(704, {	-- Agmond's Fate
					["qg"] = 1344,	-- Prospector Ironband
					["sourceQuest"] = 739,	-- Murdaloc
					["coord"] = { 65.9, 65.6, LOCH_MODAN },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { BADLANDS, ULDAMAN },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
					["groups"] = {
						objective(1, {	-- 0/4 Carved Stone Urn
							["providers"] = {
								{ "i", 4610 },	-- Carved Stone Urn
								{ "o", 2743 },	-- Carved Stone Urn
							},
							["description"] = "Can be found in the outdoor section of Uldaman.",
						}),
						i(4980, {	-- Prospector Gloves
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(27115, {	-- Ando's Call
					["qg"] = 1073,	-- Ashlan Stonesmirk
					["sourceQuest"] = 27078,	-- Gor'kresh
					["coord"] = { 64.1, 26.6, LOCH_MODAN },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(26868, {	-- Axis of Awful
					["qg"] = 44345,	-- Cannary Caskshot
					["sourceQuest"] = 26928,	-- Smells Like a Plan
					["coord"] = { 34.7, 49.1, LOCH_MODAN },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(2500, {	-- Badlands Reagent Run
					["qg"] = 1470,	-- Ghak Healtouch
					["coord"] = { 37.07, 49.38, LOCH_MODAN },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 36,
					["groups"] = {
						objective(1, {	-- 0/5 Buzzard Gizzard
							["provider"] = { "i", 7847 },	-- Buzzard Gizzard
							["crs"] = {
								2830,	-- Buzzard
								2831,	-- Giant Buzzard
								2829,	-- Starving Buzzard
							},
						}),
						objective(2, {	-- 0/10 Crag Coyote Fang
							["provider"] = { "i", 7846 },	-- Crag Coyote Fang
							["crs"] = {
								2727,	-- Crag Coyote
								2729,	-- Elder Crag Coyote
								2728,	-- Feral Crag Coyote
								2730,	-- Rabid Crag Coyote
							},
						}),
						objective(3, {	-- 0/5 Rock Elemental Shard
							["provider"] = { "i", 7848 },	-- Rock Elemental Shard
							["crs"] = {
								2745,	-- Ambassador Infernus
								2791,	-- Enraged Rock Elemental
								2919,	-- Fam'retor Guardian
								2736,	-- Greater Rock Elemental
								2735,	-- Lesser Rock Elemental
								92,		-- Rock Elemental
								2752,	-- Rumbler
								8278,	-- Smoldar
							},
						}),
					},
				}),
				q(2501, {	-- Badlands Reagent Run II
					["qg"] = 1470,	-- Ghak Healtouch
					["sourceQuest"] = 17,	-- Uldaman Reagent Run
					["coord"] = { 37.07, 49.38, LOCH_MODAN },
					["timeline"] = { REMOVED_4_0_3 },
					["requireSkill"] = ALCHEMY,
					["maps"] = { BADLANDS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 40,
					["groups"] = {
						objective(1, {	-- 0/3 Vessel of Dragon's Blood
							["provider"] = { "i", 7867 },	-- Vessel of Dragon's Blood
							["cost"] = { { "i", 7866, 1 } },	-- Empty Thaumaturgy Vessel
							["cr"] = 2726,	-- Scorched Guardian
						}),
						i(7870, {	-- Thaumaturgy Vessel Lockbox
							i(7866),	-- Empty Thaumaturgy Vessel
						}),
						r(11452, {	-- Restorative Potion
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(26147, {	-- Bigger and Uglier
					["qg"] = 1090,	-- Mountaineer Wallbang
					["sourceQuest"] = 26146,	-- In Defense of the King's Lands
					["coord"] = { 23.3, 75.1, LOCH_MODAN },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/8 Stonesplinter Shaman slain
							["provider"] = { "n", 1197 },	-- Stonesplinter Shaman
						}),
						objective(2, {	-- 0/8 Stonesplinter Bonesnapper slain
							["provider"] = { "n", 1164 },	-- Stonesplinter Bonesnapper
						}),
						i(58995, {	-- Bonesnapper Bracers
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131491, {	-- Bonesnapper Cuffs
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(58996, {	-- Mountaineer's Belt
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(58994, {	-- Trogg-Slayer Boots
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(2038, {	-- Bingles' Missing Supplies
					["qg"] = 6577,	-- Bingles Blastenheimer
					["sourceQuest"] = 2039,	-- Find Bingles
					["coord"] = { 63.6, 47.8, LOCH_MODAN },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 12,
					["groups"] = {
						objective(1, {	-- 0/1 Bingles' Wrench
							["providers"] = {
								{ "i",   7343 },	-- Bingles' Wrench
								{ "o", 104564 },	-- Bingles's Toolbucket
							},
							["coord"] = { 48.8, 30.0, LOCH_MODAN },
						}),
						objective(2, {	-- 0/1 Bingles' Screwdriver
							["providers"] = {
								{ "i",   7345 },	-- Bingles' Screwdriver
								{ "o", 104569 },	-- Bingles's Toolbucket
							},
							["coord"] = { 48.5, 20.6, LOCH_MODAN },
						}),
						objective(3, {	-- 0/1 Bingles' Hammer
							["providers"] = {
								{ "i",   7346 },	-- Bingles' Hammer
								{ "o", 104574 },	-- Bingles's Toolbucket
							},
							["coord"] = { 51.8, 24.3, LOCH_MODAN },
						}),
						objective(4, {	-- 0/1 Bingles' Blastencapper
							["providers"] = {
								{ "i",   7376 },	-- Bingles' Blastencapper
								{ "o", 104575 },	-- Bingles's Blastencapper
							},
							["coord"] = { 54.3, 26.5, LOCH_MODAN },
						}),
						i(12522, {	-- Bingles' Flying Gloves
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(58975, {	-- Gnomish All-Purpose Ray Gun
							["timeline"] = { ADDED_4_0_3, REMOVED_4_0_3 },
						}),
						i(58974, {	-- Mechanical Wand
							["timeline"] = { ADDED_4_0_3, REMOVED_4_0_3 },
						}),
						i(58973, {	-- Monte's Scythe
							["timeline"] = { ADDED_4_0_3, REMOVED_4_0_3 },
						}),
					},
				}),
				q(27032, {	-- Bird is the Word
					["qg"] = 6577,	-- Bingles Blastenheimer
					["sourceQuest"] = 27031,	-- Wing Nut
					["coord"] = { 81.6, 64.7, LOCH_MODAN },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(26932, {	-- Buzz Off
					["qg"] = 1340,	-- Mountaineer Kadrell
					["sourceQuest"] = 26927,	-- Suddenly, Murlocs!
					["coord"] = { 35.0, 46.5, LOCH_MODAN },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/8 Loch Buzzard slain
							["provider"] = { "n", 44184 },	-- Loch Buzzard
						}),
					},
				}),
				q(26137, {	-- Checking on the Boys
					["qg"] = 1343,	-- Mountaineer Stormpike
					["coord"] = { 25.4, 17.9, LOCH_MODAN },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
				}),
				q(27077, {	-- Clutching at Chaos
					["qg"] = 1073,	-- Ashlan Stonesmirk
					["sourceQuest"] = 27074,	-- Fight the Hammer
					["coord"] = { 64.1, 26.6, LOCH_MODAN },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/10 Nascent Elementium Spike
							["providers"] = {
								{ "i", 60738 },	-- Nascent Elementium Spike
								{ "o", 205092 },	-- Nascent Elementium
							},
						}),
					},
				}),
				q(385, {	-- Crocolisk Hunting
					["qg"] = 1154,	-- Marek Ironheart
					["coord"] = { 81.8, 61.8, LOCH_MODAN },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 10,
					["groups"] = {
						objective(1, {	-- 0/5 Crocolisk Meat
							["provider"] = { "i", 2924 },	-- Crocolisk Meat
							["crs"] = {
								5053,	-- Deviate Crocolisk
								2476,	-- Large Loch Crocolisk
								1693,	-- Loch Crocolisk
							},
						}),
						objective(2, {	-- 0/6 Crocolisk Skin
							["provider"] = { "i", 2925 },	-- Crocolisk Skin
							["crs"] = {
								2476,	-- Large Loch Crocolisk
								1693,	-- Loch Crocolisk
							},
						}),
						i(3678),	-- Recipe: Crocolisk Steak (RECIPE!)
						i(2240, {	-- Rugged Cape
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(59007, {	-- Croc-Scale Gloves
							["timeline"] = { ADDED_4_0_3, REMOVED_4_0_3 },
						}),
						i(59006, {	-- Croc-Skin Boots
							["timeline"] = { ADDED_4_0_3, REMOVED_4_0_3 },
						}),
						i(59005, {	-- Marek's Dagger
							["timeline"] = { ADDED_4_0_3, REMOVED_4_0_3 },
						}),
					},
				}),
				q(27026, {	-- Defcon: Bobcat
					["qg"] = 44859,	-- Safety Warden Pipsy
					["sourceQuest"] = 27025,	-- Thistle While You Work
					["coord"] = { 82.7, 63.4, LOCH_MODAN },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_TWO, q(79975, {	-- Eagle's Fist
					["provider"] = { "o", 424007 },	-- Carved Figurine
					["sourceQuest"] = 79974,	-- Wet Job
					["coord"] = { 49.5, 12.8, LOCH_MODAN },
					["timeline"] = { ADDED_1_15_1 },
					["maps"] = { ARATHI_HIGHLANDS },
					["lvl"] = 14,
				})),
				-- #endif
				q(298, {	-- Excavation Progress Report
					["providers"] = {
						{ "n", 1344 },	-- Prospector Ironband
						{ "i", 2637 },	-- Ironbrand's Progress Report
					},
					["coord"] = { 65.9, 65.6, LOCH_MODAN },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 10,
				}),
				q(13656, {	-- Explorers' League Document (1 of 6)
					["provider"] = { "o", 194387 },	-- Stolen Explorers' League Document
					["coord"] = { 36.7, 61.1, LOCH_MODAN },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(13655, {	-- Explorers' League Document (2 of 6)
					["provider"] = { "o", 194378 },	-- Stolen Explorers' League Document
					["coord"] = { 41.4, 39.0, LOCH_MODAN },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(13657, {	-- Explorers' League Document (3 of 6)
					["provider"] = { "o", 194388 },	-- Stolen Explorers' League Document
					["coord"] = { 61.7, 73.2, LOCH_MODAN },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(13658, {	-- Explorers' League Document (4 of 6)
					["provider"] = { "o", 194389 },	-- Stolen Explorers' League Document
					["coord"] = { 68.1, 66.1, LOCH_MODAN },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(13660, {	-- Explorers' League Document (5 of 6)
					["provider"] = { "o", 194391 },	-- Stolen Explorers' League Document
					["coord"] = { 53.7, 38.1, LOCH_MODAN },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(13659, {	-- Explorers' League Document (6 of 6)
					["provider"] = { "o", 194390 },	-- Stolen Explorers' League Document
					["coord"] = { 73.2, 35.9, LOCH_MODAN },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(27074, {	-- Fight the Hammer
					["qg"] = 44870,	-- Ando Blastenheimer
					["sourceQuest"] = 27035,	-- Standing Up
					["coord"] = { 58.5, 29.1, LOCH_MODAN },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(307, {	-- Filthy Paws
					["qg"] = 1343,	-- Mountaineer Stormpike
					["coord"] = { 24.7, 18.3, LOCH_MODAN },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 9,
					["groups"] = {
						objective(1, {	-- 0/4 Miners' Gear
							["providers"] = {
								{ "i", 2640 },	-- Miners' Gear
								{ "o", 271 },	-- Miners' League Crates
							},
						}),
						i(3160, {	-- Ironplate Buckler
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(3166, {	-- Ironheart Chain
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(3161, {	-- Robe of the Keeper
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(26863, {	-- Filthy Paws
					["qg"] = 1343,	-- Mountaineer Stormpike
					["sourceQuest"] = 26844,	-- Kobold and Kobolder
					["coord"] = { 25.4, 17.9, LOCH_MODAN },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/6 Miners' Gear
							["providers"] = {
								{ "i", 2640 },	-- Miners' Gear
								{ "o", 271 },	-- Miners' League Crates
							},
						}),
						i(58978, {	-- Filthy Paw
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(58980, {	-- Ironheart Chain Cloak
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(58979, {	-- Silver Stream Shield
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(738, {	-- Find Agmond
					["qg"] = 1344,	-- Prospector Ironband
					["sourceQuest"] = 707,	-- Ironband Wants You!
					["coord"] = { 65.93, 65.62, LOCH_MODAN },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
					["groups"] = {
						i(4982, {	-- Ripped Prospector Belt
							["timeline"] = { REMOVED_4_0_3 },
						}),
						-- #if BEFORE 4.0.3
						i(2776),	-- Gold Ore
						i(1529),	-- Jade
						-- #endif
					},
				}),
				q(27030, {	-- Foxtails By The Handful
					["qg"] = 1154,	-- Marek Ironheart
					["coord"] = { 81.7, 61.6, LOCH_MODAN },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/7 Fluffy Fox Tail
							["provider"] = { "i", 60755 },	-- Fluffy Fox Tail
							["crs"] = {
								44635,	-- Hill Fox
								45380,	-- Ashtail
							},
						}),
					},
				}),
				q(297, {	-- Gathering Idols
					["qg"] = 1345,	-- Magmar Fellhew
					["sourceQuest"] = 436,	-- Ironband's Excavation
					["coord"] = { 64.9, 66.7, LOCH_MODAN },
					["timeline"] = { REMOVED_4_0_3 },
					-- #if AFTER 4.0.3
					["description"] = "This quest gets marked as completed when you complete the quest 'Gathering Idols' (26961).",
					-- #endif
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 13,
					["groups"] = {
						objective(1, {	-- 0/8 Carved Stone Idol
							["provider"] = { "i", 2636 },	-- Carved Stone Idol
							["crs"] = {
								1393,	-- Berserk Trogg
								1167,	-- Stonesplinter Digger
								1165,	-- Stonesplinter Geomancer
							},
						}),
						i(5241, {	-- Dwarven Flamestick
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(6186, {	-- Trogg Slicer
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(3154, {	-- Thelsamar Axe
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(26961, {	-- Gathering Idols
					["qg"] = 1345,	-- Magmar Felhew
					["coord"] = { 64.8, 66.6, LOCH_MODAN },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/8 Carved Stone Idol
							["provider"] = { "i", 2636 },	-- Carved Stone Idol
							["crs"] = {
								1165,	-- Stonesplinter Geomancer
								1167,	-- Stonesplinter Digger
								1393,	-- Berserk Trogg
							},
						}),
						i(58997, {	-- Carved Stone Mace
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(58999, {	-- Thelsamar Breastplate
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(58998, {	-- Trogg Kickers
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131628, {	-- Trogg Stompers
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(27078, {	-- Gor'kresh
					["qg"] = 1073,	-- Ashlan Stonesmirk
					["sourceQuests"] = {
						27077,	-- Clutching at Chaos
						27075,	-- Servants of Cho'gall
					},
					["coord"] = { 64.1, 26.6, LOCH_MODAN },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Gor'kresh slain
							["provider"] = { "n", 44771 },	-- Gor'kresh
						}),
					},
				}),
				q(13661, {	-- Heartfelt Appreciation
					["qg"] = 1153,	-- Torren Squarejaw
					["sourceQuests"] = {
						13656,	-- Explorers' League Document (1 of 6)
						13655,	-- Explorers' League Document (2 of 6)
						13657,	-- Explorers' League Document (3 of 6)
						13658,	-- Explorers' League Document (4 of 6)
						13660,	-- Explorers' League Document (5 of 6)
						13659,	-- Explorers' League Document (6 of 6)
					},
					["coord"] = { 37.3, 47.8, LOCH_MODAN },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(58993, {	-- Old Dwarven Hammer
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(58991, {	-- Star Shooter
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(156932, {	-- Surveyor's Staff
							["timeline"] = { ADDED_7_3_5 },
						}),
						i(58992, {	-- Uncovered Breastplate
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131300, {	-- Uncovered Chestguard
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(27034, {	-- He's That Age
					["qg"] = 6577,	-- Bingles Blastenheimer
					["sourceQuest"] = 27033,	-- Skystrider's Heart
					["coord"] = { 81.6, 64.7, LOCH_MODAN },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				heroscall(q(28567, {	-- Hero's Call: Loch Modan!
					["timeline"] = { ADDED_4_0_3 },
					["maps"] = { IRONFORGE },	-- Only found in Ironforge in Cataclysm.
					["isBreadcrumb"] = true,
					-- #if BEFORE 7.3.5
					-- Cataclysm: Minimum is level 9. (Confirmed by Hurieve, Crieve's Level 9 Hunter.)
					-- Cataclysm: Maximum is level 18 (TODO: Test max level between 16 and 25)
					["lvl"] = { 9, 18 },
					-- #endif
				})),
				-- #if BEFORE 4.0.3
				q(6387, {	-- Honor Students
					["providers"] = {
						{ "n", 1681 },	-- Brock Stoneseeker
						{ "i", 16310 },	-- Brock's List
					},
					["coord"] = { 37, 47.8, LOCH_MODAN },
					["races"] = { DWARF, GNOME },
					["lvl"] = 10,
				}),
				-- #endif
				q(27028, {	-- Hornet Hunting
					["qg"] = 1154,	-- Marek Ironheart
					["coord"] = { 81.7, 61.6, LOCH_MODAN },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/6 Glassy Hornet Wing
							["provider"] = { "i", 60754 },	-- Glassy Hornet Wing
							["crs"] = {
								44620,	-- Marsh Hornet
								45402,	-- Nix
							},
						}),
					},
				}),
				q(224, {	-- In Defense of the King's Lands (1/4)
					["qg"] = 1089,	-- Mountaineer Cobbleflint
					["coord"] = { 22.1, 73.2, LOCH_MODAN },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 10,
					["groups"] = {
						objective(1, {	-- 0/10 Stonesplinter Trogg slain
							["provider"] = { "n", 1161 },	-- Stonesplinter Trogg
						}),
						objective(2, {	-- 0/10 Stonesplinter Scout slain
							["provider"] = { "n", 1162 },	-- Stonesplinter Scout
						}),
					},
				}),
				q(237, {	-- In Defense of the King's Lands (2/4)
					["qg"] = 1091,	-- Mountaineer Gravelgaw
					["sourceQuest"] = 224,	-- In Defense of the King's Lands (1/4)
					["coord"] = { 23.4, 76.2, LOCH_MODAN },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 10,
					["groups"] = {
						objective(1, {	-- 0/10 Stonesplinter Skullthumper slain
							["provider"] = { "n", 1163 },	-- Stonesplinter Skullthumper
						}),
						objective(2, {	-- 0/10 Stonesplinter Seer slain
							["provider"] = { "n", 1166 },	-- Stonesplinter Seer
						}),
					},
				}),
				q(263, {	-- In Defense of the King's Lands (3/4)
					["qg"] = 1090,	-- Mountaineer Wallbang
					["sourceQuest"] = 237,	-- In Defense of the King's Lands (2/4)
					["coord"] = { 23.4, 74.6, LOCH_MODAN },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 10,
					["groups"] = {
						objective(1, {	-- 0/10 Stonesplinter Shaman slain
							["provider"] = { "n", 1197 },	-- Stonesplinter Shaman
						}),
						objective(2, {	-- 0/10 Stonesplinter Bonesnapper slain
							["provider"] = { "n", 1164 },	-- Stonesplinter Bonesnapper
						}),
						i(2863),	-- Coarse Sharpening Stone
					},
				}),
				q(217, {	-- In Defense of the King's Lands (4/4)
					["qg"] = 1092,	-- Captain Rugelfuss
					["sourceQuests"] = {
						263,	-- In Defense of the King's Lands (3/4)
						267,	-- The Trogg Threat
					},
					["coord"] = { 23.2, 73.8, LOCH_MODAN },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 10,
					["groups"] = {
						objective(1, {	-- 0/1 Grawmug slain
							["provider"] = { "n", 1205 },	-- Grawmug
							["coord"] = { 33.2, 91, LOCH_MODAN },
						}),
						objective(2, {	-- 0/1 Gnasher slain
							["provider"] = { "n", 1206 },	-- Gnasher
							["coord"] = { 34.4, 91.4, LOCH_MODAN },
						}),
						objective(3, {	-- 0/1 Brawler slain
							["provider"] = { "n", 1207 },	-- Brawler
							["coord"] = { 34.2, 91.6, LOCH_MODAN },
						}),
						i(1436, {	-- Frontier Britches
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(6187, {	-- Dwarven Defender
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(1832, {	-- Lucky Trousers
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(26146, {	-- In Defense of the King's Lands
					["qg"] = 1092,	-- Captain Rugelfuss
					["coord"] = { 23.4, 75.0, LOCH_MODAN },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/12 Stonesplinter Trogg slain
							["providers"] = {
								{ "n", 1161},	-- Stonesplinter Trogg
								{ "n", 1162},	-- Stonesplinter Scout
							},
						}),
						i(131490, {	-- Greaves of Uncanny Courage
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(58985, {	-- Leggings of Uncanny Courage
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(58986, {	-- Stone Stompers
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(58984, {	-- Stonesplinter Staff
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(436, {	-- Ironband's Excavation
					["qg"] = 1105,	-- Jern Hornhelm
					["coord"] = { 37.2, 47.4, LOCH_MODAN },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 13,
				}),
				q(13647, {	-- Joining the Hunt
					["qg"] = 1345,	-- Magmar Felhew
					["sourceQuests"] = {
						26961,	-- Gathering Idols
						13650,	-- Keep Your Hands Off The Goods!
					},
					["coord"] = { 64.9, 66.5, LOCH_MODAN },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
				}),
				q(13650, {	-- Keep Your Hands Off The Goods!
					["qg"] = 1344,	-- Prospector Ironband
					["sourceQuest"] = 309,	-- Protecting the Shipment
					["coord"] = { 65.2, 66.1, LOCH_MODAN },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(26844, {	-- Kobold and Kobolder
					["qg"] = 1343,	-- Mountaineer Stormpike
					["sourceQuest"] = 26843,	-- A Tiny, Clever Commander
					["coord"] = { 25.4, 17.9, LOCH_MODAN },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/5 Tunnel Rat Surveyor slain
							["provider"] = { "n", 1177 },	-- Tunnel Rat Surveyor
						}),
						objective(2, {	-- 0/5 Tunnel Rat Forager slain
							["provider"] = { "n", 1176 },	-- Tunnel Rat Forager
						}),
					},
				}),
				q(25118, {	-- Looking for Lurkers
					["qg"] = 1777,	-- Dakk Blunderblast
					["coords"] = {
						-- #if AFTER CATA
						{ 35.4, 42.8, LOCH_MODAN },
						-- #else
						{ 36.0, 44.2, LOCH_MODAN },
						-- #endif
					},
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/8 Forest Lurker slain
							["provider"] = { "n", 1195 },	-- Forest Lurker
						}),
					},
				}),
				q(255, {	-- Mercenaries
					["qg"] = 1139,	-- Magistrate Bluntnose
					["coord"] = { 34.6, 44.5, LOCH_MODAN },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 15,
					["groups"] = {
						objective(1, {	-- 0/4 Mo'grosh Ogre slain
							["provider"] = { "n", 1178 },	-- Mo'grosh Ogre
						}),
						objective(2, {	-- 0/4 Mo'grosh Brute slain
							["provider"] = { "n", 1180 },	-- Mo'grosh Brute
						}),
						objective(3, {	-- 0/4 Mo'grosh Enforcer slain
							["provider"] = { "n", 1179 },	-- Mo'grosh Enforcer
						}),
						i(59019, {	-- Light-Burning Ring
							["timeline"] = { ADDED_4_0_3, REMOVED_4_0_3 },
						}),
						i(59018, {	-- Ring of Pride
							["timeline"] = { ADDED_4_0_3, REMOVED_4_0_3 },
						}),
						i(59020, {	-- Stonewrought Band
							["timeline"] = { ADDED_4_0_3, REMOVED_4_0_3 },
						}),
					},
				}),
				q(1339, {	-- Mountaineer Stormpike's Task
					["qg"] = 1340,	-- Mountaineer Kadrell
					["coord"] = { 34.8, 47, LOCH_MODAN },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 9,
				}),
				q(26176, {	-- Onward to Thelsamar
					["qg"] = 1092,	-- Captain Rugelfuss
					["sourceQuest"] = 26148,	-- A Decisive Strike
					["coord"] = { 23.4, 75.0, LOCH_MODAN },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
				}),
				q(26842, {	-- Out of Gnoll-where
					["qg"] = 1340,	-- Mountaineer Kadrell
					["sourceQuest"] = 26176,	-- Onward to Thelsamar
					["coord"] = { 35.1, 46.6, LOCH_MODAN },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/12 Mosshide Ear
							["provider"] = { "i", 60402 },	-- Mosshide Ear
							["crs"] = {
								44161,	-- Mosshide Scout
								44162,	-- Mosshide Basher
								45384,	-- Sagepaw
							},
						}),
					},
				}),
				q(302, {	-- Powder to Ironband
					["qg"] = 1356,	-- Prospector Stormpike
					["sourceQuest"] = 301,	-- Report to Ironforge
					["coord"] = { 74.4, 12, IRONFORGE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 10,
				}),
				q(309, {	-- Protecting the Shipment
					["qgs"] = {
						-- #if AFTER CATA
						2057,	-- Huldar
						-- #else
						1379,	-- Miran
						-- #endif
					},
					["sourceQuests"] = {
						-- #if AFTER CATA
						13639,	-- Resupplying the Excavation
						-- #else
						454,	-- After the Ambush
						-- #endif
					},
					["coords"] = {
						-- #if AFTER CATA
						{ 56.4, 65.8, LOCH_MODAN },
						-- #else
						{ 52.2, 69.4, LOCH_MODAN },
						-- #endif
					},
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 10,
					["groups"] = {
						i(3217, {	-- Foreman Belt
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(6188, {	-- Mud Stompers
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(58981, {	-- Dastardly Bracers
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(58982, {	-- Foreman Gloves
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131204, {	-- Foreman Handguards
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(58983, {	-- Ironband Legguards
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(416, {	-- Rat Catching
					["qg"] = 1340,	-- Mountaineer Kadrell
					["coord"] = { 34.8, 47, LOCH_MODAN },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 10,
					["groups"] = {
						objective(1, {	-- 0/12 Tunnel Rat Ear
							["provider"] = { "i", 3110 },	-- Tunnel Rat Ear
							["crs"] = {
								1175,	-- Tunnel Rat Digger
								1176,	-- Tunnel Rat Forager
								1174,	-- Tunnel Rat Geomancer
								1173,	-- Tunnel Rat Scout
								1177,	-- Tunnel Rat Surveyor
								1172,	-- Tunnel Rat Vermin
							},
						}),
						i(58977, {	-- Algaz Shield
							["timeline"] = { ADDED_4_0_3, REMOVED_4_0_3 },
						}),
						i(58976, {	-- Rat Ear Cloak
							["timeline"] = { ADDED_4_0_3, REMOVED_4_0_3 },
						}),
						i(3158, {	-- Burnt Hide Bracers
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(860, {	-- Cavalier's Boots
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(26131, {	-- Reinforcements for Loch Modan
					["qg"] = 1959,	-- Mountaineer Barleybrew
					["coord"] = { 41.8, 52.2, IRONFORGE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
				}),
				q(301, {	-- Report to Ironforge
					["providers"] = {
						{ "n", 1105 },	-- Jern Hornhelm
						{ "i", 2637 },	-- Ironbrand's Progress Report
					},
					["sourceQuest"] = 298,	-- Excavation Progress Report
					["coord"] = { 37.2, 47.4, LOCH_MODAN },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 10,
				}),
				q(468, {	-- Report to Mountaineer Rockgar
					["qg"] = 1340,	-- Mountaineer Kadrell
					["coord"] = { 34.8, 47, LOCH_MODAN },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 19,
				}),
				q(273, {	-- Resupplying the Excavation
					["qg"] = 1105,	-- Jern Hornhelm
					["sourceQuest"] = 302,	-- Powder to Ironband
					["coord"] = { 37.2, 47.4, LOCH_MODAN },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 10,
				}),
				q(13639, {	-- Resupplying the Excavation
					["qg"] = 1105,	-- Jern Hornhelm
					["sourceQuest"] = 26868,	-- Axis of Awful
					["coord"] = { 37.2, 47.4, LOCH_MODAN },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				-- #if BEFORE 4.0.3
				q(6391, {	-- Ride to Ironforge
					["providers"] = {
						{ "n", 1572 },	-- Thorgrum Borrelson
						{ "i", 16310 },	-- Brock's List
					},
					["sourceQuest"] = 6387,	-- Honor Students
					["coord"] = { 33.9, 50.9, LOCH_MODAN },
					["races"] = { DWARF, GNOME },
					["lvl"] = 10,
				}),
				-- #endif
				q(27075, {	-- Servants of Cho'gall
					["qg"] = 1073,	-- Ashlan Stonesmirk
					["sourceQuest"] = 27074,	-- Fight the Hammer
					["coord"] = { 64.1, 26.6, LOCH_MODAN },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/7 Mo'grosh Ogre slain
							["providers"] = {
								{ "n", 44758},	-- Mo'grosh Darkmauler
								{ "n", 14267},	-- Emogg the Crusher
								{ "n", 44760},	-- Mo'grosh Earthbender
							},
						}),
					},
				}),
				q(27033, {	-- Skystrider's Heart
					["qg"] = 44618,	-- Rusted Skystrider
					["sourceQuest"] = 27032,	-- Bird is the Word
					["coord"] = { 78.5, 76.2, LOCH_MODAN },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(13635, {	-- South Gate Status Report
					["qg"] = 1960,	-- Pilot Hammerfoot
					["sourceQuest"] = 26855,	-- A Pilot's Revenge
					["coord"] = { 14.0, 56.4, LOCH_MODAN },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
				}),
				q(26928, {	-- Smells Like A Plan
					["qg"] = 44345,	-- Cannary Caskshot
					["sourceQuest"] = 26927,	-- Suddenly, Murlocs!
					["coord"] = { 34.7, 49.1, LOCH_MODAN },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/7 Murloc Scent Gland
							["provider"] = { "i", 60511 },	-- Murloc Scent Gland
							["crs"] = {
								44176,	-- Bluegill Wanderer
								44288,	-- Bluegill Copperblade
								44292,	-- Bluegill Mudskipper
								45401,	-- Whitefin
							},
						}),
					},
				}),
				q(27035, {	-- Standing Up
					["qg"] = 44870,	-- Ando Blastenheimer
					["sourceQuest"] = 27034,	-- He's That Age
					["coord"] = { 58.5, 29.1, LOCH_MODAN },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Twilight Landshaper destroyed
							["provider"] = { "n", 44724 },	-- Twilight Landshaper
						}),
					},
				}),
				q(1338, {	-- Stormpike's Order
					["providers"] = {
						{ "n", 1343 },	-- Mountaineer Stormpike
						{ "i", 5998 },	-- Stormpike's Request
					},
					["sourceQuest"] = 1339,	-- Mountaineer Stormpike's Task
					["coord"] = { 24.7, 18.3, LOCH_MODAN },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 9,
				}),
				q(13636, {	-- Stormpike's Orders [TODO: confirm if breadcrumb]
					["qg"] = 1340,	-- Mountaineer Kadrell
					["coord"] = { 35.1, 46.6, LOCH_MODAN },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(26927, {	-- Suddenly, Murlocs!
					["qg"] = 1340,	-- Mountaineer Kadrell
					["sourceQuest"] = 26864,	-- The Bearer of Gnoll-edge
					["coord"] = { 35.0, 46.5, LOCH_MODAN },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(455, {	-- The Algaz Gauntlet
					["qg"] = 1342,	-- Mountaineer Rockgar
					["sourceQuest"] = 468,	-- Report to Mountaineer Rockgar
					["coord"] = { 25.5, 10.5, LOCH_MODAN },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { WETLANDS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 19,
					["groups"] = {
						objective(1, {	-- 0/8 Dragonmaw Scout slain
							["provider"] = { "n", 2103 },	-- Dragonmaw Scout
						}),
						objective(2, {	-- 0/8 Dragonmaw Grunt slain
							["provider"] = { "n", 2102 },	-- Dragonmaw Grunt
						}),
					},
				}),
				q(26864, {	-- The Bearer of Gnoll-edge
					["qg"] = 1343,	-- Mountaineer Stormpike
					["sourceQuest"] = 26845,	-- Who's in Charge Here?
					["coord"] = { 25.4, 17.9, LOCH_MODAN },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(27016, {	-- The Joy of Boar Hunting
					["qg"] = 1187,	-- Daryl the Youngling
					["coord"] = { 83.4, 65.4, LOCH_MODAN },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/10 Mudbelly Boar slain
							["provider"] = { "n", 44627 },	-- Mudbelly Boar
						}),
					},
				}),
				q(26854, {	-- The Lost Pilot
					["qg"] = 1960,	-- Pilot Hammerfoot
					["sourceQuests"] = {
						26131,	-- Reinforcements for Loch Modan
						28567,	-- Hero's Call: Loch Modan!
					},
					["coord"] = { 14.0, 56.6, LOCH_MODAN },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(58970, {	-- Mori's Cloak
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(58971, {	-- Mori's Compass
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(58972, {	-- Mori's Gear Stick
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(156933, {	-- Mori's Pocketknife
							["timeline"] = { ADDED_7_3_5 },
						}),
					},
				}),
				q(267, {	-- The Trogg Threat
					["qg"] = 1092,	-- Captain Rugelfuss
					["coord"] = { 23.3, 73.8, LOCH_MODAN },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 10,
					["groups"] = {
						objective(1, {	-- 0/8 Trogg Stone Tooth
							["provider"] = { "i", 2536 },	-- Trogg Stone Tooth
							["crs"] = {
								1164,	-- Stonesplinter Bonesnapper
								1167,	-- Stonesplinter Digger
								1165,	-- Stonesplinter Geomancer
								1162,	-- Stonesplinter Scout
								1166,	-- Stonesplinter Seer
								1197,	-- Stonesplinter Shaman
								1163,	-- Stonesplinter Skullthumper
								1161,	-- Stonesplinter Trogg
							},
						}),
					},
				}),
				q(26145, {	-- The Trogg Threat
					["qg"] = 1089,	-- Mountaineer Cobbleflint
					["sourceQuest"] = 13635,	-- South Gate Status Report
					["coord"] = { 23.3, 74.9, LOCH_MODAN },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/8 Trogg Stone Tooth
							["provider"] = { "i", 2536 },	-- Trogg Stone Tooth
							["crs"] = {
								1161,	-- Stonesplinter Trogg
								1162,	-- Stonesplinter Scout
								1163,	-- Stonesplinter Skullthumper
								1164,	-- Stonesplinter Bonesnapper
								1165,	-- Stonesplinter Geomancer
								1166,	-- Stonesplinter Seer
								1167,	-- Stonesplinter Digger
								1197,	-- Stonesplinter Shaman
							},
						}),
					},
				}),
				q(27116, {	-- The Winds of Loch Modan
					["qg"] = 44870,	-- Ando Blastenheimer
					["sourceQuest"] = 27115,	-- Ando's Call
					["coord"] = { 58.5, 29.1, LOCH_MODAN },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(418, {	-- Thelsamar Blood Sausages
					["qg"] = 1963,	-- Vidra Hearthstove
					["coord"] = { 34.8, 49.3, LOCH_MODAN },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 3172, 3 },	-- Boar Intestines
						{ "i", 3173, 3 },	-- Bear Meat
						{ "i", 3174, 3 },	-- Spider Ichor
					},
					["lvl"] = 7,
					["groups"] = {
						i(3220),	-- Blood Sausage
						i(3679),	-- Recipe: Blood Sausage (RECIPE!)
					},
				}),
				q(26860, {	-- Thelsamar Blood Sausages
					["qg"] = 1963,	-- Vidra Hearthstove
					["coord"] = { 34.8, 49.2, LOCH_MODAN },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/8 Bear Rump
							["provider"] = { "i", 60497 },	-- Bear Rump
							["cr"] = 1186,	-- Black Bear
						}),
						i(3679),	-- Recipe: Blood Sausage (RECIPE!)
					},
				}),
				q(27025, {	-- Thistle While You Work
					["qg"] = 44859,	-- Safety Warden Pipsy
					["coord"] = { 82.7, 63.4, LOCH_MODAN },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/6 Stabthistle Seed
							["providers"] = {
								{ "i", 60737 },	-- Stabthistle Seed
								{ "o", 205089 },	-- Stabthistle Seed
							},
						}),
					},
				}),
				q(17, {	-- Uldaman Reagent Run
					["qg"] = 1470,	-- Ghak Healtouch
					["sourceQuest"] = 2500,	-- Badlands Reagent Run
					["coord"] = { 37.07, 49.38, LOCH_MODAN },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { BADLANDS, ULDAMAN },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 38,
					["groups"] = {
						objective(1, {	-- 0/12 Magenta Fungus Cap
							["providers"] = {
								{ "i",   8047 },	-- Magenta Fungus Cap
								{ "o", 126049 },	-- Magenta Cap Clusters
							},
						}),
					},
				}),
				q(271, {	-- Vyrin's Revenge (1/2)
					["qg"] = 1156,	-- Vyrin Swiftwind
					["sourceQuest"] = 258,	-- A Hunter's Challenge
					["coord"] = { 81.8, 64.2, LOCH_MODAN },
					["timeline"] = { REMOVED_4_0_3 },
					-- #if AFTER 4.0.3
					["description"] = "This quest gets marked as completed when you complete the quest 'Vyrin's Revenge (1/2)' (27036).",
					-- #endif
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 15,
					["groups"] = {
						objective(1, {	-- 0/1 Ol' Sooty's Head
							["provider"] = { "i", 2713 },	-- Ol' Sooty's Head
							["coord"] = { 37.6, 62.6, LOCH_MODAN },
							["cr"] = 1225,	-- Ol' Sooty
						}),
					},
				}),
				q(531, {	-- Vyrin's Revenge (2/2)
					["providers"] = {
						{ "n", 1187 },	-- Daryl the Youngling
						{ "i", 2713 },	-- Ol' Sooty's Head
					},
					["sourceQuest"] = 271,	-- Vyrin's Revenge (1/2)
					["coord"] = { 83.4, 65.2, LOCH_MODAN },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 15,
					["groups"] = {
						i(3574, {	-- Hunting Ammo Sack
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(3573, {	-- Hunting Quiver
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(27036, {	-- Vyrin's Revenge (1/2)
					["qg"] = 1156,	-- Vyrin Swiftwind
					["sourceQuest"] = 27016,	-- The Joy of Boar Hunting
					["coord"] = { 81.9, 64.6, LOCH_MODAN },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Ol' Sooty's Head
							["provider"] = { "i", 2713 },	-- Ol' Sooty's Head
							["cr"] = 1225,	-- Ol' Sooty
						}),
					},
				}),
				q(27037, {	-- Vyrin's Revenge (2/2)
					["qg"] = 1187,	-- Daryl the Youngling
					["sourceQuest"] = 27036,	-- Vyrin's Revenge (1/2)
					["coord"] = { 83.4, 65.4, LOCH_MODAN },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(59010, {	-- Swiftwind Blade
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59008, {	-- Unsanitary Gloves
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59009, {	-- Vyrin's Belt
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131633, {	-- Vyrin's Waistband
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(256, {	-- WANTED: Chok'sul
					["provider"] = { "o", 256 },	-- WANTED
					["coord"] = { 37.2, 46.4, LOCH_MODAN },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 17,
					["groups"] = {
						objective(1, {	-- 0/1 Chok'sul's Head
							["provider"] = { "i", 2561 },	-- Chok'sul's Head
							["coord"] = { 79.6, 14.2, LOCH_MODAN },
							["cr"] = 1210,	-- Chok'sul
						}),
						i(59028, {	-- Bluntnose's Signet
							["timeline"] = { ADDED_4_0_1, REMOVED_4_0_3 },
						}),
						i(59026, {	-- Bounty Hunter's Bracers
							["timeline"] = { ADDED_4_0_1, REMOVED_4_0_3 },
						}),
						i(6189, {	-- Durable Chain Shoulders
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(6191, {	-- Kimbra Boots
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(1449, {	-- Minor Channeling Ring
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(59027, {	-- Thelsamar Chainmail
							["timeline"] = { ADDED_4_0_1, REMOVED_4_0_3 },
						}),
					},
				}),
				q(13648, {	-- WANTED: The Dark Iron Spy
					["provider"] = { "o", 256 },	-- Wanted!
					["coord"] = { 37.3, 46.5, LOCH_MODAN },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Gorick Guzzledraught slain
							["provider"] = { "n", 33456 },	-- Gorick Guzzledraught
						}),
					},
				}),
				q(26845, {	-- Who's In Charge Here?
					["qg"] = 1343,	-- Mountaineer Stormpike
					["sourceQuest"] = 26844,	-- Kobold and Kobolder
					["coord"] = { 25.4, 17.9, LOCH_MODAN },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Foreman Sharpsneer's Head
							["provider"] = { "i", 60404 },	-- Foreman Sharpsneer's Head
							["cr"] = 44198,	-- Foreman Sharpsneer
						}),
					},
				}),
				q(27031, {	-- Wing Nut
					["qg"] = 6577,	-- Bingles Blastenheimer
					["sourceQuest"] = 2039,	-- Find Bingles
					["coord"] = { 81.6, 64.7, LOCH_MODAN },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/3 Pristine Flight Feather
							["provider"] = { "i", 60792 },	-- Pristine Flight Feather
							["cr"] = 44628,	-- Golden Eagle
						}),
					},
				}),
			}),
			n(RARES, {
				n(45380, {	-- Ashtail
					["coords"] = {
						{ 68.8, 38.2, LOCH_MODAN },
						{ 72.4, 36.2, LOCH_MODAN },
						{ 74.0, 34.0, LOCH_MODAN },
						{ 77.0, 39.0, LOCH_MODAN },
						{ 76.4, 42.4, LOCH_MODAN },
						{ 73.6, 44.0, LOCH_MODAN },
						{ 69.6, 42.0, LOCH_MODAN },
						{ 66.6, 40.0, LOCH_MODAN },
					},
					["timeline"] = { ADDED_4_0_1 },
				}),
				n(1398, {  -- Boss Galgosh <Stonesplinter Chieftain>
					["coords"] = {
						-- #if AFTER CATA
						{ 69.6, 60.0, LOCH_MODAN },
						{ 70.4, 64.6, LOCH_MODAN },
						{ 70.8, 68.0, LOCH_MODAN },
						{ 68.0, 66.0, LOCH_MODAN },
						-- #else
						{ 68.4, 66.0, LOCH_MODAN },
						{ 65.8, 68.0, LOCH_MODAN },
						{ 68.8, 68.6, LOCH_MODAN },
						{ 72.4, 67.6, LOCH_MODAN },
						{ 70.4, 63.8, LOCH_MODAN },
						-- #endif
					},
					["groups"] = {
						i(1938, {	-- Block Mallet
							["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
						}),
						i(1215, {	-- Support Girdle
							["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
						}),
					},
				}),
				n(14267, {  -- Emogg the Crusher
					["coords"] = {
						-- #if AFTER CATA
						{ 68.4, 29.0, LOCH_MODAN },
						{ 67.0, 21.0, LOCH_MODAN },
						{ 73.0, 25.8, LOCH_MODAN },
						{ 72.8, 21.4, LOCH_MODAN },
						{ 70.0, 25.0, LOCH_MODAN },
						-- #else
						{ 65.0, 21.0, LOCH_MODAN },
						{ 68.4, 28.8, LOCH_MODAN },
						{ 64.2, 28.4, LOCH_MODAN },
						{ 71.6, 21.0, LOCH_MODAN },
						-- #endif
					},
					["groups"] = {
						i(2821, {	-- Mo'grosh Masher
							["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
						}),
					},
				}),
				n(45404, {	-- Geoshaper Maren
					["coord"] = { 50.0, 24.0, LOCH_MODAN },
					["timeline"] = { ADDED_4_0_3 },
				}),
				-- #if AFTER 4.0.3
				n(2476, {  -- Gosh-Haldir [CATA+] / Large Loch Crocolisk
					["coords"] = {
						{ 56.4, 51.8, LOCH_MODAN },
						{ 55.6, 55.8, LOCH_MODAN },
						{ 53.0, 56.8, LOCH_MODAN },
					},
					["groups"] = {
						i(6197, {	-- Loch Croc Hide Vest
							["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
						}),
						i(3563, {	-- Seafarer's Pantaloons
							["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
						}),
					},
				}),
				-- #endif
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_ONE, n(209958, {	-- Graix
					["provider"] = { "n", 209954 },	-- Demonic Remains
					["coord"] = { 72.6, 68.8, LOCH_MODAN },
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
				n(45398, {	-- Grizlak <Associate Troggwhacker>
					["coord"] = { 35.6, 15.6, LOCH_MODAN },
					["timeline"] = { ADDED_4_0_3 },
				}),
				n(1425, {  -- Grizlak / Kubb [CATA+]
					["coords"] = {
						-- #if AFTER CATA
						{ 26.0, 27.0, LOCH_MODAN },
						{ 26.2, 31.8, LOCH_MODAN },
						{ 24.8, 30.6, LOCH_MODAN },
						-- #else
						{ 35.4, 27.8, LOCH_MODAN },
						-- #endif
					},
					["groups"] = {
						i(2284, {	-- Rat Cloth Cloak
							["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
						}),
						i(6195, {	-- Wax-polished Armor
							["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
						}),
					},
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_ONE, n(210107, {	-- Kackle
					["coord"] = { 55.0, 55.4, LOCH_MODAN },
					["timeline"] = { REMOVED_2_0_1 },
					["classes"] = { HUNTER },
					["groups"] = {
						i(208777, {	-- Rune of the Sniper
							["classes"] = { HUNTER },
							["groups"] = {
								recipe(416091),	-- Engrave Pants - Sniper Training
							},
						}),
					},
				})),
				-- #endif
				-- #if BEFORE 4.0.3
				n(2476, {  -- Large Loch Crocolisk / Gosh-Haldir [CATA+]
					["coords"] = {
						{ 58.8, 28.2, LOCH_MODAN },
						{ 59.8, 31.8, LOCH_MODAN },
						{ 61.2, 40.6, LOCH_MODAN },
						{ 62.4, 45.6, LOCH_MODAN },
					},
					["groups"] = {
						i(6197, {	-- Loch Croc Hide Vest
							["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
						}),
						i(3563, {	-- Seafarer's Pantaloons
							["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
						}),
					},
				}),
				-- #endif
				n(14268, {  -- Lord Condar
					["coords"] = {
						-- #if AFTER CATA
						{ 67.4, 76.0, LOCH_MODAN },
						{ 73.2, 72.6, LOCH_MODAN },
						{ 75.8, 63.0, LOCH_MODAN },
						{ 79.0, 63.0, LOCH_MODAN },
						{ 78.6, 71.2, LOCH_MODAN },
						{ 78.2, 74.6, LOCH_MODAN },
						-- #else
						{ 62.8, 78.2, LOCH_MODAN },
						{ 74.8, 67.8, LOCH_MODAN },
						{ 78.0, 74.2, LOCH_MODAN },
						-- #endif
					},
				}),
				n(1399, {  -- Magosh <Stonesplinter Tribal Shaman>
					["coords"] = {
						-- #if AFTER CATA
						{ 31.0, 75.6, LOCH_MODAN },
						-- #else
						{ 70.0, 66.2, LOCH_MODAN },
						-- #endif
					},
					["groups"] = {
						i(2241, {	-- Desperado Cape
							["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
						}),
						i(3571, {	-- Trogg Beater
							["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
						}),
					},
				}),
				n(45369, {	-- Morick Darkbrew <Dark Iron Courier>
					["coords"] = {
						{ 37.8, 63.2, LOCH_MODAN },
						{ 40.4, 60.4, LOCH_MODAN },
						{ 40.6, 64.4, LOCH_MODAN },
					},
					["timeline"] = { ADDED_4_0_3 },
				}),
				n(45402, {	-- Nix
					["coords"] = {
						{ 50.8, 37.4, LOCH_MODAN },
						{ 53.0, 33.8, LOCH_MODAN },
						{ 58.4, 38.6, LOCH_MODAN },
						{ 58.8, 41.6, LOCH_MODAN },
						{ 53.8, 43.2, LOCH_MODAN },
					},
					["timeline"] = { ADDED_4_0_3 },
				}),
				n(45399, {	-- Optimo
					["coords"] = {
						{ 71.6, 77.0, LOCH_MODAN },
						{ 74.8, 76.4, LOCH_MODAN },
						{ 77.0, 83.2, LOCH_MODAN },
						{ 78.0, 77.8, LOCH_MODAN },
					},
					["timeline"] = { ADDED_4_0_3 },
				}),
				n(45384, {	-- Sagepaw <Mosshide Chieftain>
					["coord"] = { 25.6, 44.8, LOCH_MODAN },
					["timeline"] = { ADDED_4_0_3 },
				}),
				n(14266, {  -- Shanda the Spinner
					["coords"] = {
						-- #if AFTER CATA
						{ 61.6, 74.6, LOCH_MODAN },
						-- #else
						{ 77.8, 53.6, LOCH_MODAN },
						-- #endif
					},
				}),
				n(45401, {	-- Whitefin
					["coords"] = {
						{ 45.6, 38.6, LOCH_MODAN },
						{ 43.2, 41.6, LOCH_MODAN },
						{ 44.8, 48.6, LOCH_MODAN },
						{ 46.0, 54.8, LOCH_MODAN },
						{ 49.6, 57.0, LOCH_MODAN },
					},
					["timeline"] = { ADDED_4_0_3 },
				}),
			}),
			n(TREASURES, {
				o(207496, {	-- Dark Iron Treasure Chest
					["coords"] = {
						{ 36.6, 61.2, LOCH_MODAN },
						{ 61.9, 75.0, LOCH_MODAN },
						{ 80.3, 51.9, LOCH_MODAN },
					},
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						i(3292),	-- Ancestral Tunic
						i(9775),	-- Bandit Cinch
						i(5212),	-- Blazing Wand
						i(3306),	-- Brackwater Vest
						i(9763),	-- Cadet Leggings
						i(2140),	-- Carving Knife
						i(3314),	-- Ceremonial Leather Gloves
						i(3196),	-- Edged Bastard Sword
						i(15303),	-- Grizzly Pants
						i(15508),	-- Grunt's Cape
						i(7108),	-- Infantry Shield
						i(6380),	-- Inscribed Buckler
						i(4701),	-- Inscribed Cloak
						i(15893),	-- Prospector's Buckler
						i(4561),	-- Scalping Tomahawk
						i(3192),	-- Short Bastard Sword
						i(15933),	-- Simple Branch
						i(6547),	-- Soldier's Gauntlets
						-- Still available in some chests
						i(4596),	-- Discolored Healing Potion
					},
				}),
				o(207497, {	-- Dark Iron Treasure Chest
					["coords"] = {	-- As opposed to 207496, this one spawns exclusively in Loch Modan
						{ 36.6, 61.2, LOCH_MODAN },
						{ 61.9, 75.0, LOCH_MODAN },
						{ 80.3, 51.9, LOCH_MODAN },
					},
					["timeline"] = { ADDED_4_0_3 },
					["sym"] = {{ "select", "objectID", 207496 }, {"pop"}},
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_ONE, i(208689, {	-- Ferocious Idol
					["provider"] = { "o", 408004 },	-- Tangled Blight Pile
					["coord"] = { 71.8, 21.6, LOCH_MODAN },
					["classes"] = { DRUID },
					["groups"] = {
						recipe(410023),	-- Engrave Pants - Savage Roar
					},
				})),
				applyclassicphase(SOD_PHASE_ONE, i(205905, {	-- Memory of a Devout Champion
					["coord"] = { 36.6, 20.8, LOCH_MODAN },
					["cost"] = {{ "i", 208823, 1 }},	-- Offering Coin
					["classes"] = { PRIEST },
					["groups"] = {
						recipe(425215),	-- Engrave Chest - Twisted Faith
					},
				})),
				applyclassicphase(SOD_PHASE_ONE, o(407983, {	-- Pile of Stolen Books
					["coord"] = { 54.2, 27.0, LOCH_MODAN },
					["timeline"] = { REMOVED_2_0_1 },
					["groups"] = {
						i(208754, {	-- Spell Notes: TENGI RONEERA
							["classes"] = { MAGE },
						}),
					},
				})),
				applyclassicphase(SOD_PHASE_ONE, i(205932, {	-- Prophecy of a King's Demise
					["provider"] = { "n", 209908 },	-- Heretic Idol
					["description"] = "/kneel at the statue for the rune.",
					["coord"] = { 71.8, 27.6, LOCH_MODAN },
					["timeline"] = { REMOVED_2_0_1 },
					["classes"] = { PRIEST },
					["groups"] = {
						recipe(402849),	-- Engrave Gloves - Shadow Word - Death
					},
				})),
				applyclassicphase(SOD_PHASE_ONE, i(208860, {	-- Rumi of Gnomeregan: The Collected Works
					["provider"] = { "o", 408014 },	-- Gnomish Tome
					["coord"] = { 35.6, 48.9, LOCH_MODAN },
				})),
				applyclassicphase(SOD_PHASE_ONE, i(208701, {	-- Rune of Beast Mastery
					["provider"] = { "o", 407918 },	-- Empty Trophy Display
					["coord"] = { 83.6, 65.5, LOCH_MODAN },
					["classes"] = { HUNTER },
					["groups"] = {
						recipe(410110),	-- Engrave Gloves - Beast Mastery
					},
				})),
				applyclassicphase(SOD_PHASE_ONE, i(208687, {	-- Rune of Lacerate
					["providers"] = {
						{ "n",   1224 },	-- Young Threshadon
						{ "i", 208855 },	-- Rainbow Fin Albacore Chum
					},
					["description"] = "Use Rainbow Fin Albacore Chum on a young threshadon to receive this rune.",
					["coord"] = { 44.8, 39.2, LOCH_MODAN },
					["classes"] = { DRUID },
					["groups"] = {
						recipe(416049),	-- Engrave Gloves - Lacerate
					},
				})),
				applyclassicphase(SOD_PHASE_ONE, i(208772, {	-- Rune of Saber Slash
					["provider"] = { "o", 407731 },	-- Stonemason's Toolbox
					["coord"] = { 46.5, 12.7, LOCH_MODAN },
					["timeline"] = { REMOVED_2_0_1 },
					["classes"] = { ROGUE },
					["groups"] = {
						recipe(424984),	-- Engrave Gloves - Saber Slash
					},
				})),
				applyclassicphase(SOD_PHASE_ONE, i(209850, {	-- Runes of the Sorcerer-Kings
					["provider"] = { "o", 409731 },	-- Scrolls
					["coord"] = { 77.5, 14.1, LOCH_MODAN },
				})),
				applyclassicphase(SOD_PHASE_ONE, o(407850, {	-- Sunken Reliquary
					["coord"] = { 36.8, 91.4, LOCH_MODAN },
					["timeline"] = { REMOVED_2_0_1 },
					["groups"] = {
						i(208851, {	-- Libram of Justice
							["classes"] = { PALADIN },
							["groups"] = {
								recipe(410001),	-- Engrave Gloves - Hand of Reckoning
							},
						}),
					},
				})),
				-- #endif
			}),
			n(VENDORS, {
				n(1214, {	-- Aldren Cordon <Clothier>
					["coord"] = { 64.8, 66.0, LOCH_MODAN },
					["races"] = ALLIANCE_ONLY,
					["sym"] = {{"select","itemID",
						16059,	-- Common Brown Shirt
						3428,	-- Common Grey Shirt
						16060,	-- Common White Shirt
						837,	-- Heavy Weave Armor
						3589,	-- Heavy Weave Belt
						3590,	-- Heavy Weave Bracers
						839,	-- Heavy Weave Gloves
						838,	-- Heavy Weave Pants
						840,	-- Heavy Weave Shoes
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
				n(1687, {	-- Cliff Hadin <Bowyer>
					["coord"] = { 83.0, 63.0, LOCH_MODAN },
					["races"] = ALLIANCE_ONLY,
					["sym"] = {{"select","itemID",
						2507,	-- Laminated Recurve Bow
						3026,	-- Reinforced Bow
					}},
					["groups"] = {
						i(11304, {	-- Fine Longbow
							["isLimited"] = true,
						}),
					},
				}),
				n(1465, {	-- Drac Roughcut <Tradesman>
					["coord"] = { 35.6, 49.1, LOCH_MODAN },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(6892),	-- Recipe: Smoked Bear Meat (RECIPE!)
					},
				}),
				n(1686, {	-- Irene Sureshot <Gunsmith>
					["coord"] = { 83.2, 63.5, LOCH_MODAN },
					["races"] = ALLIANCE_ONLY,
					["sym"] = {{"select","itemID",
						2511,	-- Hunter's Boomstick
						3023,	-- Large Bore Blunderbuss
					}},
				}),
				n(954, {	-- Kat Sampson <Leather Armor Merchant>
					["coord"] = { 82.6, 64.0, LOCH_MODAN },
					["races"] = ALLIANCE_ONLY,
					["sym"] = {{"select","itemID",
						1843,	-- Tanned Leather Belt
						843,	-- Tanned Leather Boots
						1844,	-- Tanned Leather Bracers
						844,	-- Tanned Leather Gloves
						846,	-- Tanned Leather Jerkin
						845,	-- Tanned Leather Pants
					}},
					["groups"] = {
						i(4788, {	-- Agile Boots
							["isLimited"] = true,
						}),
						i(4789, {	-- Stable Boots
							["isLimited"] = true,
						}),
					},
				}),
				n(1684, {	-- Khara Deepwater <Fishing Supplies>
					["coords"] = {
						-- #if AFTER CATA
						{ 39.5, 39.2, LOCH_MODAN },
						-- #else
						{ 40.4, 39.4, LOCH_MODAN },
						-- #endif
					},
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_ONE, i(208855, {	-- Rainbow Fin Albacore Chum
							["classes"] = { DRUID },
							["cost"] = 526,	-- 5s 26c
						})),
						-- #endif
						i(6325),	-- Recipe: Brilliant Smallfish (RECIPE!)
						i(6329),	-- Recipe: Loch Frenzy Delight (RECIPE!)
						i(6328),	-- Recipe: Longjaw Mud Snapper (RECIPE!)
					},
				}),
				n(1362, {	-- Gothor Brumn <Armorer>
					["coord"] = { 24.1, 18.2, LOCH_MODAN },
					["races"] = ALLIANCE_ONLY,
					["sym"] = {{"select","itemID",
						847,	-- Chainmail Armor
						1845,	-- Chainmail Belt
						849,	-- Chainmail Boots
						1846,	-- Chainmail Bracers
						850,	-- Chainmail Gloves
						848,	-- Chainmail Pants
					}},
				}),
				-- #if SEASON_OF_DISCOVERY
				n(3291, {	-- Greishan Ironstove <Traveling Merchant>
					["coords"] = {
						{ 23.0, 70.4, LOCH_MODAN },
						{ 27.6, 65.8, LOCH_MODAN },
						{ 30.6, 58.0, LOCH_MODAN },
						{ 34.6, 47.2, LOCH_MODAN },
						{ 26.6, 22.6, LOCH_MODAN },
					},
					["groups"] = {
						applyclassicphase(SOD_PHASE_ONE, i(208833, {	-- Malevolent Pie
							["classes"] = { WARLOCK },
							["cost"] = 526,	-- 5s 26c
							["groups"] = {
								i(208750, {	-- Rune of Channeling
									["classes"] = { WARLOCK },
									["groups"] = {
										recipe(403932),	-- Engrave Chest - Master Channeler
									},
								}),
							},
						})),
					},
				}),
				-- #endif
				n(167, {	-- Morhan Coppertongue <Metalsmith>
					["coord"] = { 34.0, 46.6, LOCH_MODAN },
					["races"] = ALLIANCE_ONLY,
					["sym"] = {{"select","itemID",
						847,	-- Chainmail Armor
						1845,	-- Chainmail Belt
						849,	-- Chainmail Boots
						1846,	-- Chainmail Bracers
						850,	-- Chainmail Gloves
						848,	-- Chainmail Pants
					}},
					["groups"] = {
						i(4765, {	-- Enamelled Broadsword
							["isLimited"] = true,
						}),
						i(4766, {	-- Feral Blade
							["isLimited"] = true,
						}),
					},
				}),
				n(222, {	-- Nillen Andemar <Macecrafter>
					["coord"] = { 43.0, 10.0, LOCH_MODAN },
					["races"] = ALLIANCE_ONLY,
					["sym"] = {{"select","itemID",
						2492,	-- Cudgel
						1197,	-- Giant Mace
						852,	-- Mace
						2493,	-- Wooden Mallet
					}},
					["groups"] = {
						i(4778, {	-- Heavy Spiked Mace
							["isLimited"] = true,
						}),
						i(4777, {	-- Ironwood Maul
							["isLimited"] = true,
						}),
					},
				}),
				n(1474, {	-- Rann Flamespinner <Tailoring Supplies>
					["coord"] = { 36.0, 46.0, LOCH_MODAN },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(6275, {	-- Pattern: Greater Adept's Robe (RECIPE!)
							["isLimited"] = true,
						}),
						i(5772, {	-- Pattern: Red Woolen Bag (RECIPE!)
							["isLimited"] = true,
						}),
					},
				}),
				-- #if AFTER CATA
				n(6030, {	-- Thorvald Deepforge
					["coord"] = { 23.7, 74.3, LOCH_MODAN },
					["races"] = ALLIANCE_ONLY,
					["sym"] = {{"select","itemID",
						1198,	-- Claymore
						851,	-- Cutlass
						1197,	-- Giant Mace
						853,	-- Hatchet
						2207,	-- Jambiya
						852,	-- Mace
						854,	-- Quarter Staff
						1196,	-- Tabar
					}},
				}),
				-- #endif
				n(1469, {	-- Vrok Blunderblast <Gunsmith>
					["coord"] = { 25.3, 42.5, LOCH_MODAN },
					["races"] = ALLIANCE_ONLY,
					["sym"] = {{"select","itemID",
						2511,	-- Hunter's Boomstick
						2509,	-- Ornate Blunderbuss
					}},
				}),
				n(1685, {	-- Xandar Goodbeard <General Supplies>
					["coord"] = { 82.6, 63.2, LOCH_MODAN },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(6053, {	-- Recipe: Holy Protection Potion (RECIPE!)
							["isLimited"] = true,
						}),
						i(5640, {	-- Recipe: Rage Potion (RECIPE!)
							["isLimited"] = true,
						}),
					},
				}),
			}),
			n(ZONE_DROPS, {
				i(5319, {	-- Bashing Pauldrons
					["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
					["crs"] = {
						-- #if AFTER 10.1.7
						1186,	-- Black Bear
						-- #else
						2478,	-- Haren Swifthoof <Horde Runner>
						-- #endif
					},
					["coords"] = {
						-- #if AFTER 10.1.7
						{ 40.6, 10.4, LOCH_MODAN },
						{ 24.8, 13.2, LOCH_MODAN },
						{ 30.0, 27.4, LOCH_MODAN },
						{ 40.0, 25.0, LOCH_MODAN },
						{ 29.2, 46.0, LOCH_MODAN },
						{ 37.8, 40.0, LOCH_MODAN },
						{ 41.6, 48.0, LOCH_MODAN },
						{ 41.6, 58.4, LOCH_MODAN },
						{ 47.2, 65.6, LOCH_MODAN },
						-- #else
						{ 55.2, 68.2, LOCH_MODAN },
						{ 66.0, 37.8, LOCH_MODAN },
						-- #endif
					},
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_ONE, i(208843, {	-- Battle Totem
					["timeline"] = { REMOVED_2_0_1 },
					["coords"] = {
						{ 79.6, 16.0, LOCH_MODAN },
						{ 76.6, 16.0, LOCH_MODAN },
					},
					["classes"] = { WARRIOR },
					["crs"] = {
						1180,	-- Mo'grosh Brute
						1179,	-- Mo'grosh Enforcer
						1183,	-- Mo'grosh Mystic
						1178,	-- Mo'grosh Ogre
						1181,	-- Mo'grosh Shaman
					},
				})),
				-- #endif
				-- #if ANYCLASSIC
				i(3173, {	-- Bear Meat
					["coord"] = { 29.2, 53.0, LOCH_MODAN },
					["crs"] = {
						1186,	-- Elder Black Bear
						1189,	-- Black Bear Patriarch
						1188,	-- Grizzled Black Bear
						1225,	-- Ol' Sooty
					},
				}),
				i(3172, {	-- Boar Intestines
					["coord"] = { 37.0, 34.4, LOCH_MODAN },
					["crs"] = {
						1190,	-- Mountain Boar
						1191,	-- Mangy Mountain Boar
						1192,	-- Elder Mountain Boar
					},
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_ONE, i(208854, {	-- Chewed Spell Notes
					["coords"] = {
						{ 29.8, 84.6, LOCH_MODAN },
						{ 36.6, 84.4, LOCH_MODAN },
						{ 49.0, 21.6, LOCH_MODAN },
					},
					["timeline"] = { REMOVED_2_0_1 },
					["classes"] = { MAGE },
					["cr"] = 1166,	-- Stonesplinter Seer
				})),
				-- #endif
				i(769, {	-- Chunk of Boar Meat
					["coord"] = { 37.0, 34.4, LOCH_MODAN },
					["crs"] = {
						1190,	-- Mountain Boar
						1191,	-- Mangy Mountain Boar
						1192,	-- Elder Mountain Boar
					},
				}),
				-- #endif
				i(2823, {	-- Mo'grosh Can Opener
					["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
					["crs"] = {
						-- #if AFTER 10.1.7
						44758,	-- Mo'grosh Darkmauler
						-- #else
						1180,	-- Mo'grosh Brute
						-- #endif
					},
					["coords"] = {
						-- #if AFTER 10.1.7
						{ 71.4, 21.2, LOCH_MODAN },
						{ 68.8, 22.4, LOCH_MODAN },
						{ 68.8, 25.4, LOCH_MODAN },
						{ 74.8, 25.0, LOCH_MODAN },
						{ 76.6, 16.0, LOCH_MODAN },
						-- #else
						{ 79.6, 16.0, LOCH_MODAN },
						{ 76.6, 16.0, LOCH_MODAN },
						-- #endif
					},
				}),
				i(2821, {	-- Mo'grosh Masher
					["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
					["crs"] = {
						-- #if AFTER 10.1.7
						44758, -- Mo'grosh Darkmauler
						-- #else
						14267,	-- Emogg the Crusher
						1179,	-- Mo'grosh Enforcer
						-- #endif
					},
					["coords"] = {
						-- #if AFTER 10.1.7
						{ 70.0, 24.6, LOCH_MODAN },
						-- #else
						{ 74.2, 28.4, LOCH_MODAN },
						{ 69.4, 22.2, LOCH_MODAN },
						{ 64.4, 20.6, LOCH_MODAN },
						-- #endif
					},
				}),
				i(2822, {	-- Mo'grosh Toothpick
					["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
					["crs"] = {
						-- #if AFTER 10.1.7
						44760,	-- Mo'grosh Earthbender
						-- #else
						1178,	-- Mo'grosh Ogre
						-- #endif
					},
					["coords"] = {
						-- #if AFTER 10.1.7
						{ 71.4, 21.2, LOCH_MODAN },
						{ 68.8, 22.4, LOCH_MODAN },
						{ 68.8, 25.4, LOCH_MODAN },
						{ 74.8, 25.0, LOCH_MODAN },
						{ 76.6, 16.0, LOCH_MODAN },
						-- #else
						{ 79.6, 16.0, LOCH_MODAN },
						{ 76.6, 16.0, LOCH_MODAN },
						-- #endif
					},
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_ONE, i(208823, {	-- Offering Coin
					["timeline"] = { REMOVED_2_0_1 },
					["coords"] = {
						{ 35.6, 20.0, LOCH_MODAN },
						{ 35.8, 27.4, LOCH_MODAN },
					},
					["classes"] = { PRIEST },
					["crs"] = {
						1175,	-- Tunnel Rat Digger
						1174,	-- Tunnel Rat Geomancer
						1177,	-- Tunnel Rat Surveyor
					},
				})),
				-- #endif
				i(4949, {	-- Orcish Cleaver
					["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
					["crs"] = {
						-- #if AFTER 10.1.7
						1186,	-- Black Bear
						-- #else
						7170,	-- Thragomm <Horde Runner>
						-- #endif
					},
					["coords"] = {
						-- #if AFTER 10.1.7
						{ 40.6, 10.4, LOCH_MODAN },
						{ 24.8, 13.2, LOCH_MODAN },
						{ 30.0, 27.4, LOCH_MODAN },
						{ 40.0, 25.0, LOCH_MODAN },
						{ 29.2, 46.0, LOCH_MODAN },
						{ 37.8, 40.0, LOCH_MODAN },
						{ 41.6, 48.0, LOCH_MODAN },
						{ 41.6, 58.4, LOCH_MODAN },
						{ 47.2, 65.6, LOCH_MODAN },
						-- #else
						{ 55.2, 68.2, LOCH_MODAN },
						{ 66.0, 37.8, LOCH_MODAN },
						-- #endif
					},
				}),
				i(2283, {	-- Rat Cloth Belt
					["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
					["cr"] = 1177,	-- Tunnel Rat Surveyor
					["coords"] = {
						-- #if AFTER 10.1.7
						{ 36.8, 16.6, LOCH_MODAN },
						{ 32.0, 12.0, LOCH_MODAN },
						{ 29.6, 15.0, LOCH_MODAN },
						-- #else
						{ 35.2, 27.6, LOCH_MODAN },
						{ 35.2, 27.6, LOCH_MODAN },
						-- #endif
					},
				}),
				i(2700, {	-- Recipe: Succulent Pork Ribs (RECIPE!)
					["description"] = "Has a chance to drop from any creature in the zone.",
				}),
				i(2281, {	-- Rodentia Flint Axe
					["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
					["crs"] = {
						1176,	-- Tunnel Rat Forager
						-- #if BEFORE 4.0.3
						1202,	-- Tunnel Rat Kobold
						-- #endif
					},
					["coords"] = {
						{ 38.4, 16.0, LOCH_MODAN },
						{ 32.6, 26.4, LOCH_MODAN },
						{ 32.2, 14.6, LOCH_MODAN },
						-- #if BEFORE 4.0.3
						{ 27.6, 44.8, LOCH_MODAN },
						-- #endif
					},
				}),
				i(2282, {	-- Rodentia Shortsword
					["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
					["crs"] = {
						1173,	-- Tunnel Rat Scout
						1172,	-- Tunnel Rat Vermin
					},
					["coords"] = {
						{ 28.2, 36.0, LOCH_MODAN },
						{ 25.2, 26.2, LOCH_MODAN },
						{ 19.8, 46.8, LOCH_MODAN },
						-- #if BEFORE 4.0.3
						{ 28.6, 45.0, LOCH_MODAN },
						{ 25.0, 32.6, LOCH_MODAN },
						{ 37.4, 16.6, LOCH_MODAN },
						-- #endif
					},
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_ONE, i(208741, {	-- Rune of Endless Rage
					["provider"] = { "i", 208843 },	-- Battle Totem
					["description"] = "You can challenge him to a duel (as to not fight his adds) with a Battle Totem.",
					["coords"] = {
						{ 55.2, 68.2, LOCH_MODAN },
						{ 66.0, 37.8, LOCH_MODAN },
					},
					["timeline"] = { REMOVED_2_0_1 },
					["classes"] = { WARRIOR },
					["races"] = ALLIANCE_ONLY,
					["cr"] = 2478,	-- Haren Swifthoof <Horde Runner>
					["groups"] = {
						recipe(403489),	-- Engrave Gloves - Endless Rage
					},
				})),
				-- #endif
				-- #if BEFORE 10.1.7
				-- Moved to Searing Gorge in 10.1.7
				i(2274, {	-- Sapper's Gloves
					["timeline"] = { REMOVED_4_0_3 },
					["cr"] = 1222,	-- Dark Iron Sapper
				}),
				-- #endif
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_ONE, i(208847, {	-- Skull-Shaped Geode
					["coord"] = { 33.2, 73.8, LOCH_MODAN },
					["timeline"] = { REMOVED_2_0_1 },
					["classes"] = { WARRIOR },
					["races"] = ALLIANCE_ONLY,
					["crs"] = {
						1164,	-- Stonesplinter Bonesnapper
						1162,	-- Stonesplinter Scout
						1161,	-- Stonesplinter Trogg
					},
					["groups"] = {
						i(208778, {	-- Rune of Quick Strike
							["provider"] = { "i", 208848 },	-- Cracked Skull-Shaped Geode
							["description"] = "Use the Skull-Shaped Geode on a Skullthumper to crack it and find this rune within.",
							["classes"] = { WARRIOR },
							["cr"] = 1163,	-- Stonesplinter Skullthumper
							["groups"] = {
								recipe(425443),	-- Engrave Gloves - Quick Strike
							},
						}),
					},
				})),
				-- #endif
				i(2265, {	-- Stonesplinter Axe
					["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
					["crs"] = {
						-- #if AFTER 10.1.7
						1161,	-- Stonesplinter Trogg
						1162,	-- Stonesplinter Scout
						-- #else
						1163,	-- Stonesplinter Skullthumper
						-- #endif
					},
					["coords"] = {
						-- #if AFTER 10.1.7
						{ 31.6, 77.0, LOCH_MODAN },
						{ 31.4, 80.6, LOCH_MODAN },
						{ 29.6, 80.8, LOCH_MODAN },
						-- #else
						{ 51.6, 24.6, LOCH_MODAN },
						{ 48.8, 29.6, LOCH_MODAN },
						{ 36.8, 84.8, LOCH_MODAN },
						{ 29.8, 84.0, LOCH_MODAN },
						-- #endif
					},
				}),
				i(2268, {	-- Stonesplinter Blade
					["crs"] = {
						1162,	-- Stonesplinter Scout
						1161,	-- Stonesplinter Trogg
					},
				}),
				i(2266, {	-- Stonesplinter Dagger
					["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
					["crs"] = {
						-- #if AFTER 10.1.7
						1162,	-- Stonesplinter Scout
						-- #else
						1166,	-- Stonesplinter Seer
						-- #endif
					},
					["coords"] = {
						-- #if AFTER 10.1.7
						{ 40.2, 72.0, LOCH_MODAN },
						{ 32.6, 71.8, LOCH_MODAN },
						{ 29.4, 81.8, LOCH_MODAN },
						-- #else
						{ 36.2, 86.0, LOCH_MODAN },
						{ 30.0, 83.8, LOCH_MODAN },
						{ 51.2, 23.6, LOCH_MODAN },
						-- #endif
					},
				}),
				i(2267, {	-- Stonesplinter Mace
					["cr"] = 1197,	-- Stonesplinter Shaman
					["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
					["coords"] = {
						-- #if AFTER 10.1.7
						{ 35.2, 65.6, LOCH_MODAN },
						{ 35.6, 60.4, LOCH_MODAN },
						-- #else
						{ 54.6, 26.8, LOCH_MODAN },
						{ 37.4, 92.2, LOCH_MODAN },
						-- #endif
					},
				}),
				i(5109, {	-- Stonesplinter Rags
					["crs"] = {
						-- #if BEFORE 4.0.3
						1393,	-- Berserk Trogg
						1398,	-- Boss Galgosh <Stonesplinter Chieftain>
						1207,	-- Brawler
						1206,	-- Gnasher
						1205,	-- Grawmug
						1399,	-- Magosh <Stonesplinter Tribal Shaman>
						1166,	-- Stonesplinter Seer
						1197,	-- Stonesplinter Shaman
						1163,	-- Stonesplinter Skullthumper
						-- #endif
						1164,	-- Stonesplinter Bonesnapper
						1167,	-- Stonesplinter Digger
						1165,	-- Stonesplinter Geomancer
						1162,	-- Stonesplinter Scout
						1161,	-- Stonesplinter Trogg
					},
				}),
			}),
		},
	}),
}));
