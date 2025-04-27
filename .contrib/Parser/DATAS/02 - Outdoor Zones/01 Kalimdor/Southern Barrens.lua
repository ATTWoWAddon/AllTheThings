---------------------------------------------------
--         Z O N E S        M O D U L E         --
---------------------------------------------------
-- #if AFTER 4.0.3
root(ROOTS.Zones, m(KALIMDOR, {
	m(SOUTHERN_BARRENS, {
		["lore"] = "Southern Barrens is a war-torn land after the Shattering. Camp Taurajo has been razed as the Alliance retaliate for the Horde's offensive in Ashenvale, plowing through to link Theramore to their northern bases. Naralex, formerly sleeping in Wailing Caverns, is rescued and has created a wild mutant jungle in this zone as well.",
		["icon"] = 236717,
		["timeline"] = { ADDED_4_0_3 },
		["groups"] = {
			n(ACHIEVEMENTS, {
				explorationAch(4996, {	-- Explore Southern Barrens
					["timeline"] = { ADDED_4_0_3 },
				}),
				ach(4937, {	-- Southern Barrens Quests (A)
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					-- #if ANYCLASSIC
					["sourceQuests"] = {
						25186,	-- Futile Resistance
						24939,	-- Run Out the Guns
						24948,	-- Lifting the Siege
						24956,	-- Silencing Rageroar
						25008,	-- Filthy Animals
						25027,	-- You Flicked a Fine Vine to Leaf Me
						25002,	-- Scavenged
						25000,	-- Teegan's People
						24601,	-- The Nightmare Scar
						24566,	-- Sowing a Solution
						25044,	-- Diplomacy By Another Means
						25057,	-- Clap 'Em In Irons
						25059,	-- The Taurajo Briefs
						25042,	-- Marching On Our Stomachs
						25085,	-- Mangletooth
						24824,	-- The Disturbed Earth
						24653,	-- Echoes of Agamaggan
						25081,	-- Claim the Battlescar
						25080,	-- Batteries Not Yet Included
						25082,	-- Working the Bugs Out
						25175,	-- The Bad News
						25185,	-- The Deed Is Done
					},
					-- #endif
				}),
				ach(4981, {	-- Southern Barrens Quests (H)
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					-- #if ANYCLASSIC
					["sourceQuests"] = {
						24513,	-- Eye for an Eye
						25284,	-- Feeding the Fear
						24505,	-- Holdout at Hunter's Hill
						24517,	-- Put the Fear in Them
						24514,	-- Raptor Scraps
						24519,	-- Stalling the Survey
						24512,	-- Warrior's Redemption
						24542,	-- A Curious Bloom
						24525,	-- Keeping the Dogs at Bay
						24534,	-- Speaking Their Language
						24566,	-- Sowing a Solution
						24601,	-- The Nightmare Scar
						24573,	-- Honoring the Dead
						24552,	-- Lion's Pride (H)
						24572,	-- Taking Back Taurajo
						24631,	-- Flightmare
						24654,	-- Silithissues
						24621,	-- Smarts-is-Smarts
						24637,	-- The Butcher of Taurajo
						24667,	-- Firestone Point
						24633,	-- Mahka's Plea
						24608,	-- Mangletooth
						24824,	-- The Disturbed Earth
						24747,	-- Sabotage!
					},
					-- #endif
				}),
			}),
			battlepets({
				["sym"] = {{"select","speciesID",
					635,	-- Adder (PET!)
					474,	-- Cheetah Cub (PET!)
					631,	-- Emerald Boa (PET!)
					386,	-- Prarie Dog (PET!)
					419,	-- Small Frog (PET!)
				}},
				["groups"] = {
					pet(475, {	-- Giraffe Calf (PET!)
						["description"] = "Can be found with groups of roaming Dusthoof Giraffe.",
					}),
				},
			}),
			explorationHeader({
				-- #if AFTER CATA
				exploration(4856),	-- Bael Modan
				exploration(4855),	-- Battlescar
				exploration(4849),	-- Forward Command
				exploration(4948),	-- Frazzlecraz Motherlode
				exploration(4843),	-- Honor's Stand
				exploration(4844),	-- Hunter's Hill
				exploration(4847),	-- Northwatch Hold
				exploration(1717),	-- Razorfen Kraul
				exploration(5518),	-- Razorfen Kraul Entrance
				exploration(4851),	-- Ruins of Taurajo
				exploration(5385),	-- The Great Divide
				exploration(4845),	-- The Overgrowth
				exploration(4986),	-- Vendetta Point
				-- #else
				exploration(359),	-- Bael Modan
				exploration(1702),	-- Honor's Stand
				exploration(385),	-- Northwatch Hold
				exploration(1717),	-- Razorfen Kraul
				exploration(378),	-- Ruins of Taurajo
				-- #endif
			}),
			n(FLIGHT_PATHS, {
				fp(391, {	-- Desolation Hold, Southern Barrens
					["cr"] = 39330,	-- Crador <Flight Master>
					["coord"] = { 41.2, 70.8, SOUTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				fp(389, {	-- Fort Triumph, Southern Barrens
					["cr"] = 39211,	-- Steve Stevenson <Flight Master>
					["coord"] = { 49.2, 67.8, SOUTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				fp(387, {	-- Honor's Stand, Southern Barrens
					["cr"] = 39210,	-- John Johnson <Flight Master>
					["coord"] = { 38.8, 10.8, SOUTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				fp(390, {	-- Hunter's Hill, Southern Barrens
					["cr"] = 39340,	-- Unega <Flight Master>
					["coord"] = { 39.6, 20.2, SOUTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				fp(388, {	-- Northwatch Hold, Southern Barrens
					["cr"] = 39212,	-- Bill Williamson <Flight Master>
					["coord"] = { 66.4, 47, SOUTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_1 },
					["races"] = ALLIANCE_ONLY,
				}),
				fp(77, {	-- Vendetta Point, Southern Barrens
					["cr"] = 52060,	-- Lognah <Wind Rider Master>
					["coord"] = { 41.6, 47.6, SOUTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_6 },
					["races"] = HORDE_ONLY,
				}),
			}),
			n(QUESTS, {
				q(1153, {	-- A New Ore Sample
					["qg"] = 3433,	-- Tatternack Steelforge
					["sourceQuest"] = 893,	-- Weapons of Choice
					["coord"] = { 45.10, 57.69, THE_BARRENS },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { THOUSAND_NEEDLES },
					["races"] = HORDE_ONLY,
					["lvl"] = 25,
					["groups"] = {
						objective(1, {	-- 0/1 Unrefined Ore Sample
							["provider"] = { "i", 5842 },	-- Unrefined Ore Sample
							["crs"] = {
								4116,	-- Gravelsnout Surveyor
								4113,	-- Gravelsnout Digger
								14427,	-- Gibblesnik
							},
						}),
						i(6741, {	-- Orcish War Sword
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(25183, {	-- ...And Bury the Rest
					["qg"] = 39118,	-- General Twinbraid
					["sourceQuest"] = 25174,	-- Twinbraid Needs to Know
					["coord"] = { 43.5, 78.3, SOUTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/6 Frazzlecraz Explosives Armed
							["provider"] = { "o", 202596 },	-- Frazzlecraz Explosives
						}),
					},
				}),
				q(24542, {	-- A Curious Bloom
					["qg"] = 37515,	-- Lane Tallgrass
					["sourceQuest"] = 24539,	-- When Plants Attack
					["coord"] = { 44.3, 33.2, SOUTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/10 Unusual Flower Bud
							["providers"] = {
								{ "i", 49815 },	-- Unusual Flower Bud
								{ "o", 201737 },	-- Budding Flower
								{ "o", 201738 },	-- Budding Flower
							},
						}),
					},
				}),
				q(25022, {	-- A Failure to Communicate
					["qg"] = 38871,	-- Corporal Teegan
					["coord"] = { 56.1, 42.6, SOUTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Ambassador Gaines Rescued
							["provider"] = { "n", 38872 },	-- Ambassador Gaines
						}),
					},
				}),
				q(24543, {	-- A Family Divided
					["qg"] = 37516,	-- Tawane
					["sourceQuest"] = 24529,	-- Bad to Worse
					["coord"] = { 44.5, 33.5, SOUTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
				}),
				q(25084, {	-- A Growing Threat
					["qg"] = 37835,	-- Dorn Redearth
					["coord"] = { 45.0, 85.2, SOUTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/13 Razormane Quilboar Slain
							["providers"] = {
								{ "n", 37929},	-- Razormane Mankrik Quest Credit
								{ "n", 37560},	-- Razormane Pathfinder
								{ "n", 37660},	-- Razormane Warfrenzy
								{ "n", 37661},	-- Razormane Seer
							},
						}),
					},
				}),
				q(25045, {	-- A Line in the Dirt (A)
					["qg"] = 38323,	-- General Hawthorne
					["coord"] = { 49.8, 49.6, SOUTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(53301, {	-- Taurajo Leggings
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(53291, {	-- Robes of the Bloody Field
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(53275, {	-- Hawthorne's Shield
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131399, {	-- Taurajo Greaves
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(24546, {	-- A Line in the Dirt (H)
					["qg"] = 3418,	-- Kirge Sternhorn
					["sourceQuest"] = 24543,	-- A Family Divided
					["coord"] = { 41.6, 46.5, SOUTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(53254, {	-- Sternhorn's Shield
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(53257, {	-- Taurajo Leggings
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(53251, {	-- Robes of the Bloody Field
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131375, {	-- Taurajo Greaves
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(24684, {	-- A Weezil in the Henhouse
					["qg"] = 3341,	-- Gann Stonespire
					["sourceQuest"] = 24632,	-- Tauren Vengeance
					["coord"] = { 49.2, 82.3, SOUTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/10 Bael'dun Dwarves Slain
							["providers"] = {
								{ "n", 3378},	-- Bael'dun Officer
								{ "n", 3376},	-- Bael'dun Soldier
								{ "n", 3377},	-- Bael'dun Rifleman
							},
						}),
					},
				}),
				q(24570, {	-- Adder Subtraction
					["qg"] = 38314,	-- Muyoh
					["coord"] = { 50.3, 40.4, SOUTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/5 Enervated Adder
							["provider"] = { "i", 49875 },	-- Enervated Adder
							["cr"] = 37738,	-- Enervated Adder
						}),
					},
				}),
				q(5043, {	-- Agamaggan's Agility
					["qg"] = 3430,	-- Mangletooth
					["sourceQuest"] = 5052,	-- Blood Shards of Agamaggan
					["coord"] = { 44.55, 59.26, THE_BARRENS },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = {{ "i", 5075, 4 }},	-- Blood Shard
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["lvl"] = 14,
				}),
				q(5042, {	-- Agamaggan's Strength
					["qg"] = 3430,	-- Mangletooth
					["sourceQuest"] = 5052,	-- Blood Shards of Agamaggan
					["coord"] = { 44.55, 59.26, THE_BARRENS },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = {{ "i", 5075, 4 }},	-- Blood Shard
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["lvl"] = 14,
				}),
				q(24944, {	-- Back in the Fight
					["qg"] = 38804,	-- Tolliver Houndstooth
					["sourceQuest"] = 24941,	-- Langridge Shot
					["coord"] = { 66.9, 46.7, SOUTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/6 Wounded Defenders Bandaged
							["provider"] = { "i", 52014 },	-- Herb-Soaked Bandages
							["cr"] = 38805,	-- Wounded Defender
						}),
					},
				}),
				q(24529, {	-- Bad to Worse
					["qg"] = 11857,	-- Makaba Flathoof
					["coord"] = { 44.1, 33.6, SOUTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/5 Taurajo Refugee Released from Cage
							["provider"] = { "o", 201724 },	-- Bristleback Cage
						}),
						objective(2, {	-- 0/8 Bristleback Quilboar Slain
							["providers"] = {
								{ "n", 37521},	-- Bristleback Quilboar Quest Counter
								{ "n", 3261},	-- Bristleback Thornweaver
								{ "n", 37511},	-- Bristleback Bladewarden
								{ "n", 38884},	-- Deviate Thornweaver
							},
						}),
					},
				}),
				q(25153, {	-- Bael'dun Rescue
					["qg"] = 39218,	-- Bael'dun Survivor
					["sourceQuest"] = 25120,	-- Marley's Final Flight
					["coord"] = { 49.3, 86.9, SOUTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/10 Bael'dun Survivor Rescued
							["provider"] = { "n", 39238 },	-- Burning Debris
						}),
						i(53264, {	-- Bael'dun Plate Leggings
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(53306, {	-- Vest of Bael'dun Keep
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(53300, {	-- Survivor's Blade
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131404, {	-- Chestguard of Bael'dun Keep
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(25080, {	-- Batteries Not Yet Included
					["qg"] = 39084,	-- Mizzy Pistonhammer
					["sourceQuest"] = 25079,	-- Powder Play
					["coord"] = { 49.4, 67.5, SOUTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Humming Electrogizard
							["provider"] = { "i", 52305 },	-- Humming Electrogizard
							["cr"] = 37208,	-- Thunderhead
						}),
						i(53270, {	-- Far-a-Day Mesh
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(53303, {	-- Thunderhead Kid Gloves
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(53281, {	-- Mizzy's Dungarees
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(53285, {	-- Pistonhammer Gun
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131400, {	-- Mizzy's Gauntlets
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(879, {	-- Betrayal from Within (1/2)
					["qg"] = 3430,	-- Mangletooth
					["sourceQuest"] = 5052,	-- Blood Shards of Agamaggan
					["coord"] = { 44.55, 59.26, THE_BARRENS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 17,
					["groups"] = {
						objective(1, {	-- 0/1 Kuz's Skull
							["provider"] = { "i", 5074 },	-- Kuz's Skull
							["coord"] = { 44.6, 79.8, THE_BARRENS },
							["cr"] = 3436,	-- Kuz
						}),
						objective(2, {	-- 0/1 Nak's Skull
							["provider"] = { "i", 5073 },	-- Nak's Skull
							["coord"] = { 43.8, 83.6, THE_BARRENS },
							["cr"] = 3434,	-- Nak
						}),
						objective(3, {	-- 0/1 Lok's Skull
							["provider"] = { "i", 5072 },	-- Lok's Skull
							["coord"] = { 40.2, 80.6, THE_BARRENS },
							["cr"] = 3435,	-- Lok Orcbane
						}),
					},
				}),
				q(906, {	-- Betrayal from Within (2/2)
					["providers"] = {
						{ "n", 3430 },	-- Mangletooth
						{ "i", 5072 },	-- Lok's Skull
					},
					["sourceQuest"] = 879,	-- Betrayal from Within (1/2)
					["coord"] = { 44.55, 59.26, THE_BARRENS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 17,
					["groups"] = {
						i(5316, {	-- Barkshell Tunic
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(5317, {	-- Dry Moss Tunic
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(24565, {	-- Biological Intervention
					["qg"] = 37570,	-- Naralex
					["coord"] = { 50.4, 40.7, SOUTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/5 Deviate Terrortooth slain
							["provider"] = { "n", 37090 },	-- Deviate Terrortooth
						}),
						objective(2, {	-- 0/5 Deviate Plainstrider slain
							["provider"] = { "n", 37091 },	-- Deviate Plainstrider
						}),
					},
				}),
				q(24606, {	-- Blood of the Barrens
					["provider"] = { "i", 49932 },	-- Carved Boar Idol
					["coord"] = { 42.2, 83.4, SOUTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_3 },
					["crs"] = {
						37560,	-- Razormane Pathfinder
						37661,	-- Razormane Seer
						37660,	-- Razormane Warfrenzy
					},
					["groups"] = {
						objective(1, {	-- 0/6 Blood Shard Trinket
							["provider"] = { "i", 49934 },	-- Blood Shard Trinket
							["crs"] = {
								37560,	-- Razormane Pathfinder
								37660,	-- Razormane Warfrenzy
								37661,	-- Razormane Seer
							},
						}),
					},
				}),
				q(5052, {	-- Blood Shards of Agamaggan
					["qg"] = 3430,	-- Mangletooth
					["sourceQuest"] = 878,	-- Tribes at War
					["coord"] = { 44.55, 59.26, THE_BARRENS },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = {{ "i", 5075, 1 }},	-- Blood Shard
					["races"] = HORDE_ONLY,
					["lvl"] = 14,
				}),
				q(24863, {	-- Breaking the Siege
					["qg"] = 38378,	-- Commander Walpole
					["coord"] = { 29.8, 9.00, SOUTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/10 Stonetalon Supplies
							["providers"] = {
								{ "i", 50445 },	-- Stonetalon Supplies
								{ "o", 202136 },	-- Stonetalon Supplies
							},
						}),
					},
				}),
				q(24591, {	-- Changing of the Gar'dul
					["sourceQuest"] = 24577,	-- Desolation Hold Inspection
					["coord"] = { 41.6, 69.8, SOUTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Go to the Top of the Tower
							["description"] = "In case event not starting: 1. Look at window. 2. Stand on middle wooden section on the left corner. 3. Take two steps backwards.",
							["coord"] = { 40.0, 69.0, SOUTHERN_BARRENS },
						}),
						objective(2, {	-- 0/1 Gar'dul "Relieved" of Command
							["provider"] = { "n", 37811 },	-- Warlord Gar'dul
						}),
						i(53235, {	-- Gar'dul's Armor
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(53236, {	-- Gloves of Desolation Hold
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(53242, {	-- Breeches of Authority
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(53243, {	-- Loose Cannon
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131377, {	-- Gauntlets of Desolation Hold
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(24618, {	-- Claim the Battle Scar
					["qg"] = 37837,	-- Warlord Bloodhilt
					["sourceQuest"] = 24591,	-- Changing of the Gar'dul
					["coord"] = { 41.6, 69.8, SOUTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/10 Triumph Vanguard slain
							["provider"] = { "n", 37923 },	-- Triumph Vanguard
						}),
					},
				}),
				q(25081, {	-- Claim the Battlescar
					["qg"] = 39083,	-- Commander Roberts
					["coord"] = { 49.1, 66.9, SOUTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/10 Desolation Raider slain
							["provider"] = { "n", 37922 },	-- Desolation Raider
						}),
					},
				}),
				q(25057, {	-- Clap 'Em In Irons
					["qg"] = 38323,	-- General Hawthorne
					["sourceQuests"] = {
						25045,	-- A Line in the Dirt
						25043,	-- Fields of Blood
					},
					["coord"] = { 49.8, 49.6, SOUTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/5 Taurajo Looters Arrested
							["provider"] = { "i", 52271 },	-- Northwatch Manacles
							["cr"] = 37743,	-- Taurajo Looter
						}),
					},
				}),
				q(24504, {	-- Clear the High Road
					["qg"] = 37135,	-- Nura Pathfinder
					["sourceQuests"] = {
						28549,	-- Warchief's Command: Southern Barrens!
						26069,	-- Nura Pathfinder
					},
					["coord"] = { 31.4, 13.3, SOUTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/3 High Road Scout slain
							["provider"] = { "n", 37159 },	-- High Road Scout
						}),
					},
				}),
				q(24604, {	-- Concern for Mankrik
					["qg"] = 37812,	-- Mahka
					["coord"] = { 45.1, 85.4, SOUTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
				}),
				q(913, {	-- Cry of the Thunderhawk
					["qg"] = 3387,	-- Jorn Skyseer
					["sourceQuest"] = 907,	-- Enraged Thunder Lizards
					["coord"] = { 44.86, 59.13, THE_BARRENS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 10,
					["groups"] = {
						objective(1, {	-- 0/1 Thunderhawk Wings
							["provider"] = { "i", 5164 },	-- Thunderhawk Wings
							["crs"] = {
								3249,	-- Greater Thunderhawk
								3424,	-- Thunderhawk Cloudscraper
								3247,	-- Thunderhawk Hatchling
							},
						}),
						i(5302, {	-- Cobalt Buckler
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(5306, {	-- Wind Rider Staff
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(5299, {	-- Gloves of the Moon
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(24577, {	-- Desolation Hold Inspection
					["qg"] = 37679,	-- Warlord Bloodhilt
					["sourceQuest"] = 24572,	-- Taking Back Taurajo
					["coord"] = { 41.4, 46.8, SOUTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Gar'dul Notified
							["provider"] = { "n", 37811 },	-- Warlord Gar'dul
						}),
					},
				}),
				q(1716, {	-- Devourer of Souls [Stormwind City]
					["qg"] = 6122,	-- Gakin the Darkbinder
					["sourceQuest"] = 1717,	-- Gakin's Summons (Succubus)
					-- #if AFTER WRATH
					["coord"] = { 39.2, 85.2, STORMWIND_CITY },
					-- #else
					["coord"] = { 25.4, 78.4, STORMWIND_CITY },
					-- #endif
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = { HUMAN, GNOME },
					["classes"] = { WARLOCK },
					["isBreadcrumb"] = true,
					["lvl"] = 20,
				}),
				q(862, {	-- Dig Rat Stew
					["qg"] = 3443,	-- Grub
					["coord"] = { 55.31, 31.79, THE_BARRENS },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = { { "i", 5051, 8 } },	-- Dig Rat
					["requireSkill"] = COOKING,
					["races"] = HORDE_ONLY,
					["lvl"] = 15,
					["groups"] = {
						i(10919, {	-- Apothecary Gloves
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(5478),	-- Dig Rat Stew
						i(5487, {	-- Recipe: Dig Rat Stew (RECIPE!)
							["timeline"] = { REMOVED_4_3_0 },
						}),
					},
				}),
				q(25104, {	-- Digsite Status
					["qg"] = 39118,	-- General Twinbraid
					["coord"] = { 43.5, 78.3, SOUTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(25044, {	-- Diplomacy By Another Means
					["qg"] = 38986,	-- Ambassador Gaines
					["sourceQuest"] = 25022,	-- A Failure to Communicate
					["coord"] = { 49.9, 49.5, SOUTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Sabersnout slain
							["provider"] = { "n", 37513 },	-- Sabersnout
						}),
						i(53265, {	-- Boarpocalypse Boots
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(53292, {	-- Sabersnout's Cloak
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131398, {	-- Bristleback Challenge Treads
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(53267, {	-- Bristleback Challenge Ring
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(1515, {	-- Dogran's Captivity
					["providers"] = {
						{ "n", 5911 },	-- Grunt Logmar
						{ "i", 6624 },	-- Ken'zigla's Draught
					},
					["sourceQuest"] = 1511,	-- Ken'zigla's Draught
					["coord"] = { 44.6, 59.2, THE_BARRENS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = { ORC, UNDEAD },
					["classes"] = { WARLOCK },
					["lvl"] = 20,
				}),
				q(24603, {	-- Don't Stop Bereavin'
					["qg"] = 37847,	-- Mankrik
					["sourceQuest"] = 24604,	-- Concern for Mankrik
					["coord"] = { 44.5, 88.0, SOUTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/13 Razormane Quilboar Slain
							["providers"] = {
								{ "n", 37929},	-- Razormane Mankrik Quest Credit
								{ "n", 37560},	-- Razormane Pathfinder
								{ "n", 37660},	-- Razormane Warfrenzy
								{ "n", 37661},	-- Razormane Seer
							},
						}),
					},
				}),
				q(24685, {	-- Dwarf Fortress
					["qg"] = 38140,	-- Weezil Slipshadow
					["sourceQuest"] = 24684,	-- A Weezil in the Henhouse
					["coord"] = { 50.7, 86.8, SOUTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Bael'Dun Fortress Schematics
							["providers"] = {
								{ "i", 50223 },	-- Bael'Dun Fortress Schematics
								{ "o", 201971 },	-- Bael'dun Fortress Schematics
							},
						}),
					},
				}),
				q(24653, {	-- Echoes of Agamaggan
					["qg"] = 37812,	-- Mahka
					["sourceQuest"] = 24606,	-- Blood of the Barrens
					["coord"] = { 45.1, 85.4, SOUTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/3 Polished Boar Skull
							["providers"] = {
								{ "i", 50044 },	-- Polished Boar Skull
								{ "o", 201924 },	-- Boar Skull
							},
						}),
					},
				}),
				q(907, {	-- Enraged Thunder Lizards
					["qg"] = 3387,	-- Jorn Skyseer
					["sourceQuest"] = 882,	-- Ishamuhale
					["coord"] = { 44.86, 59.13, THE_BARRENS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 10,
					["groups"] = {
						objective(1, {	-- 0/3 Thunder Lizard Blood
							["provider"] = { "i", 5143 },	-- Thunder Lizard Blood
							["crs"] = {
								3240,	-- Stormsnout
								3239,	-- Thunderhead
							},
						}),
					},
				}),
				q(24513, {	-- Eye for an Eye
					["qg"] = 37136,	-- Oltarg
					["coord"] = { 37.1, 13.9, SOUTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/2 Captain Peake's Eyeballs
							["provider"] = { "i", 49771 },	-- Captain Peake's Eyeballs
							["cr"] = 37157,	-- Captain Peake
						}),
					},
				}),
				q(25284, {	-- Feeding the Fear
					["qg"] = 37153,	-- Holgom
					["coord"] = { 37.6, 16.6, SOUTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/5 Tower Warden slain
							["provider"] = { "n", 37160 },	-- Tower Warden
						}),
					},
				}),
				q(25108, {	-- Feegly the Exiled
					["qg"] = 39155,	-- Marley Twinbraid
					["sourceQuest"] = 25104,	-- Digsite Status
					["coord"] = { 47.1, 88.5, SOUTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Feegly the Exiled slain
							["provider"] = { "n", 39174 },	-- Feegly the Exiled
						}),
						i(53263, {	-- Bael Modan Monnion
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(53271, {	-- Feegly's Shroud
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(53280, {	-- Misery's End
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131402, {	-- Bael Modan Amice
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(26908, {	-- Feeling Thorny
					["qg"] = 37812,	-- Mahka
					["coord"] = { 45.1, 85.4, SOUTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_3 },
					["lvl"] = 30,
				}),
				q(25043, {	-- Fields of Blood
					["qg"] = 38323,	-- General Hawthorne
					["coord"] = { 49.8, 49.6, SOUTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/10 Desolation Grunt slain
							["provider"] = { "n", 37706 },	-- Desolation Grunt
						}),
					},
				}),
				q(25008, {	-- Filthy Animals
					["qg"] = 38873,	-- Goucho
					["coord"] = { 56.1, 42.4, SOUTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/6 Hecklefang Scavenger slain
							["provider"] = { "n", 37086 },	-- Hecklefang Scavenger
						}),
						i(53276, {	-- Hecklefang Hide Belt
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131395, {	-- Hecklefang Links
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(53293, {	-- Scavenger Ring
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(25086, {	-- Firestone Point (A)
					["qg"] = 39085,	-- Logan Talonstrike
					["sourceQuest"] = 25082,	-- Working the Bugs Out
					["coord"] = { 49.1, 67.8, SOUTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(24667, {	-- Firestone Point (H)
					["qg"] = 37910,	-- Crawgol
					["sourceQuest"] = 24654,	-- Silithissues
					["coord"] = { 41.6, 69.4, SOUTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				q(24631, {	-- Flightmare
					["qg"] = 37909,	-- Tomusa
					["coord"] = { 41.0, 70.9, SOUTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/5 Wildhammer Mercenary slain
							["provider"] = { "n", 37977 },	-- Wildhammer Mercenary
						}),
						i(53259, {	-- Tomusa's Sword
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(53233, {	-- Earthbound Leggings
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(53234, {	-- Flightmare Mantle
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131382, {	-- Earthbound Trousers
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(25186, {	-- Futile Resistance
					["qg"] = 38380,	-- Janice Mattingly
					["sourceQuests"] = {
						24863,	-- Breaking the Siege
						24862,	-- Running the Gauntlet
					},
					["coord"] = { 34.9, 9.50, SOUTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Kona Thunderwalk slain
							["provider"] = { "n", 38384 },	-- Kona Thunderwalk
						}),
						i(53273, {	-- Gloves of Honor's Stand
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(53295, {	-- Singleton Sash
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131407, {	-- Singleton Gauntlets
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(843, {	-- Gann's Reclamation
					["qg"] = 3341,	-- Gann Stonespire
					["coord"] = { 46.08, 76.37, THE_BARRENS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 17,
					["groups"] = {
						objective(1, {	-- 0/15 Bael'dun Excavator slain
							["provider"] = { "n", 3374 },	-- Bael'dun Excavator
						}),
						objective(2, {	-- 0/5 Bael'dun Foreman slain
							["provider"] = { "n", 3375 },	-- Bael'dun Foreman
						}),
						objective(3, {	-- 0/1 Khazgorm's Journal
							["provider"] = { "i", 5006 },	-- Khazgorm's Journal
							["coord"] = { 47.8, 85.6, THE_BARRENS },
							["cr"] = 3392,	-- Prospector Khazgorm <Explorers' League>
						}),
					},
				}),
				q(25106, {	-- Hands Off Me Dig!
					["qg"] = 39155,	-- Marley Twinbraid
					["sourceQuest"] = 25104,	-- Digsite Status
					["coord"] = { 47.1, 88.5, SOUTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/8 Excavation Raider slain
							["provider"] = { "n", 39153 },	-- Excavation Raider
						}),
						objective(2, {	-- 0/5 Bael Modan Artifact
							["providers"] = {
								{ "i", 52360 },	-- Bael Modan Artifact
								{ "o", 202533 },	-- Bael Modan Artifact
							},
						}),
						objective(3, {	-- 0/1 Twinbraid's Tools
							["providers"] = {
								{ "i", 52469 },	-- Twinbraid's Tools
								{ "o", 202542 },	-- Twinbraid's Tools
							},
						}),
					},
				}),
				q(25151, {	-- He Needs Ale!
					["qg"] = 39188,	-- Marley Twinbraid
					["sourceQuest"] = 25120,	-- Marley's Final Flight
					["coord"] = { 49.2, 86.7, SOUTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(24620, {	-- Hearts-is-Hearts
					["qg"] = 37908,	-- Calder Gray
					["sourceQuest"] = 24619,	-- Parts-is-Parts
					["coord"] = { 42.6, 70.2, SOUTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Enormous Kodo Heart
							["provider"] = { "i", 49946 },	-- Enormous Kodo Heart
							["cr"] = 37556,	-- Landquaker Bull
						}),
					},
				}),
				q(1738, {	-- Heartswood
					["qg"] = 6244,	-- Takar the Seer
					["sourceQuest"] = 1716,	-- Devourer of Souls [Stormwind City]
					["coord"] = { 49.2, 57.0, THE_BARRENS },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { ASHENVALE },
					["races"] = { HUMAN, GNOME },
					["classes"] = { WARLOCK },
					["lvl"] = 20,
					["groups"] = {
						objective(1, {	-- 0/1 Heartswood
							["providers"] = {
								{ "i", 6912 },	-- Heartswood
								{ "o", 93192 },	-- Heartswood
							},
							["coord"] = { 31, 31, ASHENVALE },
						}),
					},
				}),
				heroscall(q(28550, {	-- Hero's Call: Southern Barrens!
					-- #if NOT ANYCLASSIC
					["description"] = "This quest can only be accepted from the 'Adventure Guide' by a character in Chromie timeline: Cataclysm.",
					-- #endif
					["maps"] = { DARNASSUS, THE_EXODAR },	-- Only found in Darnassus & The Exodar in Cataclysm.
					["timeline"] = { ADDED_4_0_3 },
					["isBreadcrumb"] = true,
					-- #if BEFORE 7.3.5
					-- Cataclysm: Minimum is level 29. (TODO: Confirm this.)
					-- Cataclysm: Maximum is level 33 (TODO: Test max level between 32 and 39)
					["lvl"] = { 29, 33 },
					-- #endif
				})),
				heroscall(q(28551, {	-- Hero's Call: Southern Barrens!
					["maps"] = { STORMWIND_CITY },	-- Only found in Stormwind City in Cataclysm.
					["timeline"] = { ADDED_4_0_3 },
					["isBreadcrumb"] = true,
					-- #if BEFORE 7.3.5
					-- Cataclysm: Minimum is level 29. (TODO: Confirm this.)
					-- Cataclysm: Maximum is level 33 (TODO: Test max level between 32 and 39)
					["lvl"] = { 29, 33 },
					-- #endif
				})),
				q(24505, {	-- Holdout at Hunter's Hill
					["qg"] = 37137,	-- Tunawa Stillwind
					["sourceQuest"] = 24504,	-- Clear the High Road
					["coord"] = { 37.4, 16.7, SOUTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				q(24573, {	-- Honoring the Dead
					["qg"] = 37717,	-- Winnoa Pineforest
					["sourceQuest"] = 24572,	-- Taking Back Taurajo
					["coord"] = { 41.5, 46.5, SOUTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Krulmoo Eulogized
							["provider"] = { "i", 49880 },	-- Funerary Totem
							["cr"] = 3703,	-- Krulmoo Fullmoon
						}),
						objective(2, {	-- 0/1 Dranh Eulogized
							["provider"] = { "i", 49880 },	-- Funerary Totem
							["cr"] = 6387,	-- Dranh
						}),
						objective(3, {	-- 0/1 Yonada Eulogized
							["provider"] = { "i", 49880 },	-- Funerary Totem
							["cr"] = 5944,	-- Yonada
						}),
						objective(4, {	-- 0/1 Omusa Eulogized
							["provider"] = { "i", 49880 },	-- Funerary Totem
							["cr"] = 10378,	-- Omusa Thunderhorn
						}),
					},
				}),
				q(24634, {	-- Intelligence Warfare
					["qg"] = 37837,	-- Warlord Bloodhilt
					["sourceQuest"] = 24591,	-- Changing of the Gar'dul
					["coord"] = { 41.6, 69.8, SOUTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 SI:7 Briefings
							["provider"] = { "i", 50054 },	-- SI:7 Briefings
							["crs"] = {
								37924,	-- Barrens Operative
								38033,	-- Awkward Gangly Orc
								38034,	-- Revealed Alliance Spy
							},
						}),
					},
				}),
				q(882, {	-- Ishamuhale
					["qg"] = 3387,	-- Jorn Skyseer
					["sourceQuest"] = 3261,	-- Jorn Skyseer
					["coord"] = { 44.86, 59.13, THE_BARRENS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 10,
					["groups"] = {
						objective(1, {	-- 0/1 Ishamuhale's Fang
							["provider"] = { "i", 5101 },	-- Ishamuhale's Fang
							["coord"] = { 59.8, 30.6, THE_BARRENS },
							["cost"] = {{ "i", 10338, 1 }},	-- Fresh Zhevra Carcass
							["cr"] = 3257,	-- Ishamuhale
						}),
						-- #if BEFORE 4.0.3
						i(10338, {	-- Fresh Zhevra Carcass
							["crs"] = {
								3426,	-- Zhevra Charger
								3466,	-- Zhevra Courser
								3242,	-- Zhevra Runner
							},
						}),
						-- #endif
					},
				}),
				q(24525, {	-- Keeping the Dogs at Bay
					["qg"] = 11857,	-- Makaba Flathoof
					["coord"] = { 44.1, 33.6, SOUTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/6 Hecklefang Scavenger slain
							["provider"] = { "n", 37086 },	-- Hecklefang Scavenger
						}),
					},
				}),
				q(25182, {	-- Kill 'em All!
					["qg"] = 39118,	-- General Twinbraid
					["sourceQuest"] = 25174,	-- Twinbraid Needs to Know
					["coord"] = { 43.5, 78.3, SOUTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/10 Frazzlecraz Miner slain
							["provider"] = { "n", 39280 },	-- Frazzlecraz Miner
						}),
					},
				}),
				q(883, {	-- Lakota'mani
					["provider"] = { "i", 5099 },	-- Hoof of Lakota'mani
					["coord"] = { 47.6, 51.6, THE_BARRENS },
					["timeline"] = { REMOVED_4_0_3 },
					["cr"] = 3474,	-- Lakota'mani
					["races"] = HORDE_ONLY,
					["lvl"] = 10,
				}),
				q(24941, {	-- Langridge Shot
					["qg"] = 38620,	-- Thomas Paxton
					["coord"] = { 67.0, 46.6, SOUTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/15 Langridge Shot
							["providers"] = {
								{ "i", 51957 },	-- Langridge Shot
								{ "o", 202320 },	-- Crate of Nails
								{ "o", 202321 },	-- Box of Cutlery
								{ "o", 202322 },	-- Musketballs
								{ "o", 202323 },	-- Cannoneer Whessan's Bowling Trophies
								{ "o", 202324 },	-- Broken Bottles
								{ "o", 202325 },	-- Screws and Gears
							},
						}),
					},
				}),
				q(24571, {	-- Lashvine Seeds
					["qg"] = 38314,	-- Muyoh
					["coord"] = { 50.3, 40.4, SOUTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/4 Writhing Seed
							["provider"] = { "i", 49876 },	-- Writhing Seed
							["cr"] = 37093,	-- Lashvine
						}),
					},
				}),
				q(24948, {	-- Lifting the Siege
					["qg"] = 38620,	-- Thomas Paxton
					["sourceQuest"] = 24943,	-- Re-Take the Courtyard
					["coord"] = { 67.0, 46.5, SOUTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/3 Rageroar Catapults Burned
							["provider"] = { "n", 38818 },	-- Rageroar Catapult
						}),
						objective(2, {	-- 0/1 Rageroar Blade Thrower Burned
							["provider"] = { "n", 38820 },	-- Rageroar Blade Thrower
						}),
					},
				}),
				q(25041, {	-- Lion's Pride (A)
					["qg"] = 39003,	-- Sam Trawley
					["coord"] = { 49.7, 50.4, SOUTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/5 Barrens Lion Slain
							["providers"] = {
								{ "n", 37207},	-- Plains Pridemane
								{ "n", 37206},	-- Plains Prowler
							},
						}),
					},
				}),
				q(24552, {	-- Lion's Pride (H)
					["qg"] = 3387,	-- Jorn Skyseer
					["coord"] = { 41.5, 47.1, SOUTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/5 Barrens Lions Slain
							["providers"] = {
								{ "n", 37207},	-- Plains Pridemane
								{ "n", 37206},	-- Plains Prowler
							},
						}),
					},
				}),
				q(1512, {	-- Love's Gift
					["providers"] = {
						{ "n", 5908 },	-- Grunt Dogran
						{ "i", 6625 },	-- Dirt-caked Pendant
					},
					["sourceQuest"] = 1515,	-- Dogran's Captivity
					["coord"] = { 43.2, 47.8, THE_BARRENS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = { ORC, UNDEAD },
					["classes"] = { WARLOCK },
					["lvl"] = 20,
				}),
				q(24633, {	-- Mahka's Plea
					["qg"] = 37812,	-- Mahka
					["sourceQuest"] = 24653,	-- Echoes of Agamaggan
					["coord"] = { 45.1, 85.4, SOUTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				q(874, {	-- Mahren Skyseer
					["qg"] = 3387,	-- Jorn Skyseer
					["sourceQuest"] = 913,	-- Cry of the Thunderhawk
					["coord"] = { 44.86, 59.13, THE_BARRENS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 9,
				}),
				q(25015, {	-- Make 'em Squeal
					["qg"] = 38871,	-- Corporal Teegan
					["sourceQuest"] = 25036,	-- Teegan's Troubles
					["coord"] = { 56.1, 42.6, SOUTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/8 Bristleback Quilboar Slain
							["providers"] = {
								{ "n", 37521},	-- Bristleback Quilboar Quest Counter
								{ "n", 3261},	-- Bristleback Thornweaver
								{ "n", 37511},	-- Bristleback Bladewarden
								{ "n", 38884},	-- Deviate Thornweaver
							},
						}),
						objective(2, {	-- 0/1 Bramblestaff
							["provider"] = { "i", 52046 },	-- Bramblestaff
							["cr"] = 38884,	-- Deviate Thornweaver
						}),
					},
				}),
				q(25085, {	-- Mangletooth (A)
					["qg"] = 37835,	-- Dorn Redearth
					["sourceQuest"] = 25084,	-- A Growing Threat
					["coord"] = { 45.0, 85.3, SOUTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Mangletooth slain
							["provider"] = { "n", 37940 },	-- Mangletooth
						}),
						i(53269, {	-- Dorn's Amulet
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(53288, {	-- Quilboar Fur Bracers
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(53290, {	-- Redearth Staff
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(53279, {	-- Mangled Tooth
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(24608, {	-- Mangletooth (H)
					["qg"] = 37847,	-- Mankrik
					["sourceQuest"] = 24603,	-- Don't Stop Bereavin'
					["coord"] = { 44.5, 88.1, SOUTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Mangletooth slain
							["provider"] = { "n", 37940 },	-- Mangletooth
						}),
						i(53245, {	-- Mankrik's Amulet
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(53240, {	-- Kraul Bracers
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(53249, {	-- Razormane Staff
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(53244, {	-- Mangled Tooth
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(25042, {	-- Marching On Our Stomachs
					["qg"] = 39003,	-- Sam Trawley
					["sourceQuest"] = 25041,	-- Lion's Pride (A)
					["coord"] = { 49.7, 50.5, SOUTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/4 Fresh Stormsnout Steak
							["provider"] = { "i", 52198 },	-- Fresh Stormsnout Steak
							["cr"] = 3240,	-- Stormsnout
						}),
						i(53304, {	-- Trawley's Gloves
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(53299, {	-- Stormsnout Hide Boots
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(53286, {	-- Pot Stirrer
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(53284, {	-- Pewter Slab
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131397, {	-- Stormsnout Stompers
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(25120, {	-- Marley's Final Flight
					["qg"] = 39155,	-- Marley Twinbraid
					["sourceQuests"] = {
						25108,	-- Feegly the Exiled
						25106,	-- Hands Off Me Dig!
					},
					["coord"] = { 47.1, 88.5, SOUTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Fly with Marley Twinbraid
							["provider"] = { "n", 39155 },	-- Marley Twinbraid
						}),
					},
				}),
				q(25074, {	-- Meet Me at Triumph
					["qg"] = 38323,	-- General Hawthorne
					["sourceQuest"] = 25057,	-- Clap 'em In Irons
					["coord"] = { 49.8, 49.6, SOUTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(24551, {	-- Meet the New Boss
					["qg"] = 3433,	-- Tatternack Steelforge
					["coord"] = { 41.8, 46.7, SOUTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/10 Theramore Merit Badge
							["provider"] = { "i", 49850 },	-- Theramore Merit Badge
							["cr"] = 37585,	-- Northwatch Recon
						}),
					},
				}),
				q(25292, {	-- Next of Kin
					["qg"] = 39697,	-- Nato Raintree
					["sourceQuest"] = 24747,	-- Sabotage!
					["coord"] = { 49.2, 82.1, SOUTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 35,
				}),
				q(25102, {	-- No Bull
					["qg"] = 39154,	-- Hurlston Stonesthrow
					["coord"] = { 43.4, 78.3, SOUTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/4 Landquaker Kodo slain
							["provider"] = { "n", 37555 },	-- Landquaker Kodo
						}),
						objective(2, {	-- 0/1 Landquaker Bull slain
							["provider"] = { "n", 37556 },	-- Landquaker Bull
						}),
						i(53298, {	-- Stonesthrow Sword
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(53278, {	-- Landquaker Leggings
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(53277, {	-- Kodo-Repellant Shoulders
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131401, {	-- Landquaker Trousers
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(884, {	-- Owatanka
					["provider"] = { "i", 5102 },	-- Owatanka's Tailspike
					["coord"] = { 49.6, 59.6, THE_BARRENS },
					["timeline"] = { REMOVED_4_0_3 },
					["cr"] = 3473,	-- Owatanka
					["races"] = HORDE_ONLY,
					["lvl"] = 10,
				}),
				q(24619, {	-- Parts-is-Parts
					["qg"] = 37908,	-- Calder Gray
					["coord"] = { 42.6, 70.2, SOUTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/15 Severed Extremity
							["providers"] = {
								{ "i", 49945 },	-- Severed Extremity
								{ "o", 201904 },	-- Mutilated Remains
							},
						}),
					},
				}),
				q(25075, {	-- Pick-a-Part
					["qg"] = 39084,	-- Mizzy Pistonhammer
					["coord"] = { 49.4, 67.5, SOUTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/8 Siege Engine Scrap
							["providers"] = {
								{ "i", 52285},	-- Siege Engine Scrap
								{ "o", 202477},	-- Siege Engine Scrap
								{ "o", 202478},	-- Siege Engine Scrap
							},
						}),
					},
				}),
				q(25079, {	-- Powder Play
					["qg"] = 39084,	-- Mizzy Pistonhammer
					["sourceQuest"] = 25075,	-- Pick-a-Part
					["coord"] = { 49.4, 67.5, SOUTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Keg of Blast-O Powder
							["provider"] = { "i", 52290 },	-- Keg of Blast-O Powder
							["cr"] = 37925,	-- Sapper Specialist
						}),
					},
				}),
				q(24517, {	-- Put the Fear in Them
					["qg"] = 37154,	-- Kilrok Gorehammer
					["coord"] = { 39.6, 19.8, SOUTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Honor's Stand Officer slain
							["provider"] = { "n", 37216 },	-- Honor's Stand Officer
						}),
						objective(2, {	-- 0/8 Honor's Stand Footman slain
							["provider"] = { "n", 37161 },	-- Honor's Stand Footman
						}),
					},
				}),
				q(24514, {	-- Raptor Scraps
					["qg"] = 37138,	-- Onatay
					["coord"] = { 39.4, 20.3, SOUTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/8 Terrortooth Hide
							["provider"] = { "i", 49772 },	-- Terrortooth Hide
							["crs"] = {
								37083,	-- Terrortooth Runner
								37084,	-- Terrortooth Scytheclaw
							},
						}),
						i(53241, {  -- Steel-Patched Belt
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(53258, {  -- Terrortooth Hide Bracers
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(53248, {  -- Raptor Scrap Cloak
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131371, {  -- Steel-Patched Armbands
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(5046, {	-- Razorhide
					["qg"] = 3430,	-- Mangletooth
					["sourceQuest"] = 5052,	-- Blood Shards of Agamaggan
					["coord"] = { 44.55, 59.26, THE_BARRENS },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = {{ "i", 5075, 4 }},	-- Blood Shard
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["lvl"] = 14,
				}),
				q(26687, {	-- Reinforcements From Theramore
					["qg"] = 39118,	-- General Twinbraid
					["sourceQuest"] = 25182,	-- Kill 'em All!
					["coord"] = { 43.5, 78.3, SOUTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 35,
				}),
				q(24934, {	-- Repel Boarders!
					["qg"] = 38619,	-- Admiral Aubrey
					["sourceQuest"] = 24921,	-- Report to Aubrey
					["coord"] = { 69.2, 49.0, SOUTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/6 Rageroar Sea Dog slain
							["provider"] = { "n", 38661 },	-- Rageroar Sea Dog
						}),
					},
				}),
				q(24921, {	-- Report to Aubrey
					["qg"] = 38623,	-- Dockmaster Lewis
					["sourceQuests"] = {
						28551,	-- Hero's Call: Southern Barrens!
						28550,	-- Hero's Call: Southern Barrens!
					},
					["coord"] = { 71.0, 50.0, SOUTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
				}),
				q(25087, {	-- Report to Twinbraid
					["qg"] = 39083,	-- Commander Roberts
					["sourceQuest"] = 25081,	-- Claim the Battlescar
					["coord"] = { 49.1, 66.9, SOUTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(24943, {	-- Re-Take the Courtyard
					["qg"] = 38620,	-- Thomas Paxton
					["sourceQuest"] = 24941,	-- Langridge Shot
					["coord"] = { 67.0, 46.6, SOUTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/10 Rageroar Grunt slain
							["provider"] = { "n", 38658 },	-- Rageroar Grunt
						}),
						i(53283, {	-- Paxton's Belt
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(53297, {	-- Spoils of the Courtyard
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(53294, {	-- Seized Rangeroar Cloak
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131386, {	-- Seized Rageroar Belt
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(846, {	-- Revenge of Gann (1/2)
					["qg"] = 3341,	-- Gann Stonespire
					["sourceQuest"] = 843,	-- Gann's Reclamation
					["coord"] = { 46.08, 76.37, THE_BARRENS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 17,
					["groups"] = {
						objective(1, {	-- 0/6 Nitroglycerin
							["provider"] = { "i", 5017 },	-- Nitroglycerin
							["crs"] = {
								3378,	-- Bael'dun Officer
								3377,	-- Bael'dun Rifleman
								3376,	-- Bael'dun Soldier
							},
						}),
						objective(2, {	-- 0/6 Wood Pulp
							["provider"] = { "i", 5018 },	-- Wood Pulp
							["crs"] = {
								3378,	-- Bael'dun Officer
								3377,	-- Bael'dun Rifleman
								3376,	-- Bael'dun Soldier
							},
						}),
						objective(3, {	-- 0/6 Sodium Nitrate
							["provider"] = { "i", 5019 },	-- Sodium Nitrate
							["crs"] = {
								3378,	-- Bael'dun Officer
								3377,	-- Bael'dun Rifleman
								3376,	-- Bael'dun Soldier
							},
						}),
					},
				}),
				q(849, {	-- Revenge of Gann (2/2)
					["qg"] = 3341,	-- Gann Stonespire
					["sourceQuest"] = 846,	-- Revenge of Gann (1/2)
					["coord"] = { 46.08, 76.37, THE_BARRENS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 17,
					["groups"] = {
						objective(1, {	-- Bael Modan Flying Machine destroyed
							["providers"] = {
								{ "o", 3644 },	-- Bael Modan Flying Machine
								{ "i", 5021 },	-- Explosive Stick of Gann
							},
							["coord"] = { 46, 85, THE_BARRENS },
						}),
						i(5313, {	-- Totemic Clan Ring
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(5045, {	-- Rising Spirit
					["qg"] = 3430,	-- Mangletooth
					["sourceQuest"] = 5052,	-- Blood Shards of Agamaggan
					["coord"] = { 44.55, 59.26, THE_BARRENS },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = {{ "i", 5075, 4 }},	-- Blood Shard
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["lvl"] = 14,
				}),
				q(24862, {	-- Running the Gauntlet
					["qg"] = 38378,	-- Commander Walpole
					["coord"] = { 29.8, 9.00, SOUTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/8 Hunter Hill Scout slain
							["provider"] = { "n", 37170 },	-- Hunter Hill Scout
						}),
					},
				}),
				q(24939, {	-- Run Out the Guns
					["qg"] = 3454,	-- Cannoneer Smythe
					["sourceQuest"] = 24938,	-- The Guns of Northwatch
					["coord"] = { 68.6, 44.5, SOUTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/10 Rageroar Rowboat Destroyed
							["providers"] = {
								{ "n", 38754 },	-- Northwatch Shore Battery
								{ "n", 38747 },	-- Rageroar Rowboat
							},
						}),
						i(53282, {	-- Northwatch Bracers
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(53268, {	-- Carronader's Belt
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(53296, {	-- Smythe's Ring
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131385, {	-- Carronader's Waistband
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(24747, {	-- Sabotage!
					["qg"] = 38140,	-- Weezil Slipshadow
					["sourceQuest"] = 24685,	-- Dwarf Fortress
					["coord"] = { 50.7, 86.8, SOUTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(53255, {	-- Stonespire Shoulders
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(53253, {	-- Spearhead Helm
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131384, {	-- Spearhead Faceguard
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(53225, {	-- Airburst Amulet
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(25002, {	-- Scavenged
					["qg"] = 38878,	-- Mangled Body
					["coord"] = { 61.8, 42.0, SOUTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/10 Northwatch Supply Crate
							["providers"] = {
								{ "i", 52045 },	-- Northwatch Supply Crate
								{ "o", 202405 },	-- Northwatch Supply Crate
							},
						}),
					},
				}),
				q(24569, {	-- Siegebreaker
					["qg"] = 37679,	-- Warlord Bloodhilt
					["sourceQuests"] = {
						24546,	-- A Line in the Dirt
						24551,	-- Meet the New Boss
					},
					["coord"] = { 41.4, 46.8, SOUTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/4 Siege Engine Destroyed
							["provider"] = { "o", 201792 },	-- Northwatch Siege Engine
						}),
						i(53227, {	-- Bloodhilt Gloves
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(53237, {	-- Grease-Covered Boots
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(53238, {	-- Groady Goblin Wand
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(53247, {	-- Pewter Slab
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131376, {	-- Grease-Covered Footguards
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(24515, {	-- Signals in the Sky
					["qg"] = 37138,	-- Onatay
					["coord"] = { 39.4, 20.3, SOUTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				q(24956, {	-- Silencing Rageroar
					["qg"] = 38804,	-- Tolliver Houndstooth
					["sourceQuest"] = 24944,	-- Back in the Fight
					["coord"] = { 66.9, 46.7, SOUTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/4 Rageroar Lieutenant slain
							["provider"] = { "n", 38659 },	-- Rageroar Lieutenant
						}),
						objective(2, {	-- 0/1 Rageroar's Helm
							["provider"] = { "i", 52036 },	-- Rageroar's Helm
							["cr"] = 38663,	-- Karga Rageroar
						}),
						i(53266, {	-- Boots of the Fallen Brother
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(53289, {	-- Rageroar Trophy
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(24654, {	-- Silithissues
					["qg"] = 37910,	-- Crawgol
					["coord"] = { 41.6, 69.4, SOUTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/10 Silithid Swarmer slain
							["provider"] = { "n", 3252 },	-- Silithid Swarmer
						}),
					},
				}),
				q(24621, {	-- Smarts-is-Smarts
					["qg"] = 37908,	-- Calder Gray
					["sourceQuest"] = 24620,	-- Hearts-is-Hearts
					["coord"] = { 42.6, 70.2, SOUTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Fresh Brain
							["provider"] = { "i", 49947 },	-- Fresh Brain
							["cr"] = 37926,	-- Triumph Captain
						}),
						i(53229, {	-- Brain-Splattered Leggings
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(53260, {	-- Vest of Abomification
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(53246, {	-- Neurosurgeon's Tool
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131381, {	-- Chestguard of Abomification
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(24566, {	-- Sowing a Solution
					["qg"] = 38314,	-- Muyoh
					["sourceQuests"] = {
						24570,	-- Adder Subtraction
						24571,	-- Lashvine Seeds
					},
					["coord"] = { 50.3, 40.3, SOUTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/6 Results Observed
							["provider"] = { "i", 49882 },	-- Soothing Seeds
							["crs"] = {
								37090,	-- Deviate Terrortooth
								37091,	-- Deviate Plainstrider
							},
						}),
					},
				}),
				q(24534, {	-- Speaking Their Language
					["qg"] = 11857,	-- Makaba Flathoof
					["sourceQuest"] = 24529,	-- Bad to Worse
					["coord"] = { 44.2, 33.6, SOUTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Sabersnout slain
							["provider"] = { "n", 37513 },	-- Sabersnout
						}),
						i(53252, {	-- Sabersnout's Cloak
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(53228, {	-- Boarpocalypse Boots
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(53230, {	-- Bristleback Challenge Ring
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131374, {	-- Bristleback Challenge Treads
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(889, {	-- Spirit of the Wind
					["qg"] = 3430,	-- Mangletooth
					["sourceQuest"] = 5052,	-- Blood Shards of Agamaggan
					["coord"] = { 44.55, 59.26, THE_BARRENS },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = {{ "i", 5075, 10 }},	-- Blood Shard
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["lvl"] = 14,
				}),
				q(24519, {	-- Stalling the Survey
					["qg"] = 37154,	-- Kilrok Gorehammer
					["sourceQuest"] = 24518,	-- The Low Road
					["coord"] = { 39.6, 19.8, SOUTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Henry Zykes slain
							["provider"] = { "n", 37165 },	-- Henry Zykes
						}),
						i(53307, {  -- Surveying Gloves
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(53308, {  -- Zykes' Belt
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131372, {  -- Surveying Gauntlets
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(25191, {	-- Survey the Destruction
					["qg"] = 38383,	-- Nibb Spindlegear
					["coord"] = { 39.0, 11.4, SOUTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(24572, {	-- Taking Back Taurajo
					["qg"] = 37679,	-- Warlord Bloodhilt
					["sourceQuest"] = 24569,	-- Siegebreaker
					["coord"] = { 41.4, 46.8, SOUTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/8 Taurajo Looter slain
							["provider"] = { "n", 37743 },	-- Taurajo Looter
						}),
					},
				}),
				q(24632, {	-- Tauren Vengeance
					["qg"] = 37909,	-- Tomusa
					["sourceQuest"] = 24631,	-- Flightmare
					["coord"] = { 41.1, 70.9, SOUTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
				}),
				q(25000, {	-- Teegan's People
					["qg"] = 38621,	-- Jeffrey Long
					["coord"] = { 64.8, 46.0, SOUTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/8 Terrortooth Hide
							["provider"] = { "i", 49772 },	-- Terrortooth Hide
							["crs"] = {
								37083,	-- Terrortooth Runner
								37084,	-- Terrortooth Scytheclaw
							},
						}),
					},
				}),
				q(25036, {	-- Teegan's Troubles
					["qg"] = 38620,	-- Thomas Paxton
					["sourceQuests"] = {
						24948,	-- Lifting the Siege
						24956,	-- Silencing Rageroar
					},
					["coord"] = { 67.0, 46.5, SOUTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
				}),
				q(25197, {	-- The Admiral Won't Back Down
					["qg"] = 39322,	-- Horton Gimbleheart
					["sourceQuest"] = 25191,	-- Survey the Destruction
					["coord"] = { 68.6, 49.0, SOUTHERN_BARRENS },
					["description"] = "The only way to do both this and 'Report to Aubrey' is if you do it before accepting and completing 'Repel Boarders.'",
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
				}),
				q(25175, {	-- The Bad News
					["qg"] = 39188,	-- Marley Twinbraid
					["sourceQuest"] = 25151,	-- He Needs Ale!
					["coord"] = { 49.2, 86.7, SOUTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(24637, {	-- The Butcher of Taurajo
					["qg"] = 37837,	-- Warlord Bloodhilt
					["sourceQuest"] = 24634,	-- Intelligence Warfare
					["coord"] = { 41.6, 69.8, SOUTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 General Hawthorne slain
							["provider"] = { "n", 38018 },	-- General Hawthorne
						}),
						i(53226, {  -- Battlescar Monnion
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(53232, {  -- Cloak of Harvested Fear
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(53256, {  -- Taurajo Butcher's Blade
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131383, {  -- Battlescar Amice
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(25185, {	-- The Deed Is Done
					["provider"] = { "o", 202598 },	-- Big Nasty Plunger
					["sourceQuest"] = 25183,	-- ...And Bury the Rest
					["coord"] = { 40.3, 77.8, SOUTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(53305, {	-- Twinbraid Shoulders
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(53274, {	-- Goblin Miner's Helmet
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(53272, {	-- Frazzlecraz Necklace
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131406, {	-- Goblin Miner's Hardhat
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(24824, {	-- The Disturbed Earth
					["qg"] = 37834,	-- Tauna Skychaser
					["coord"] = { 45.0, 85.3, SOUTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/4 Disturbed Earth Fragment
							["provider"] = { "i", 50385 },	-- Disturbed Earth Fragment
							["cr"] = 37553,	-- Disturbed Earth Elemental
						}),
					},
				}),
				q(24938, {	-- The Guns of Northwatch
					["qg"] = 38619,	-- Admiral Aubrey
					["sourceQuest"] = 24934,	-- Repel Boarders!
					["coord"] = { 69.2, 49.0, SOUTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(897, {	-- The Harvester
					["provider"] = { "i", 5138 },	-- Harvester's Head
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 10,
				}),
				q(24518, {	-- The Low Road
					["provider"] = { "i", 49776 },	-- Roadway Plans
					["crs"] = { 37216 },	-- Honor's Stand Officer
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				q(24601, {	-- The Nightmare Scar
					["qg"] = 37570,	-- Naralex
					["sourceQuest"] = 24574,	-- To Harvest Chaos
					["coord"] = { 50.4, 40.6, SOUTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						i(53161, {	-- Wailing Ring
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(53160, {	-- Vest of the Nightmare Rift
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(53159, {	-- Naralex's Slippers
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131379, {	-- Tunic of the Nightmare Rift
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(156997, {	-- Scepter of Naralex
							["timeline"] = { ADDED_7_3_5 },
						}),
						i(156998, {	-- Cudgel of Naralex
							["timeline"] = { ADDED_7_3_5 },
						}),
					},
				}),
				q(3513, {	-- The Runed Scroll
					["provider"] = { "i", 10621 },	-- Runed Scroll
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 15,
				}),
				q(25059, {	-- The Taurajo Briefs
					["qg"] = 38986,	-- Ambassador Gaines
					["sourceQuests"] = {
						25045,	-- A Line in the Dirt
						25043,	-- Fields of Blood
					},
					["coord"] = { 49.9, 49.5, SOUTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/3 Taurajo Intelligence
							["providers"] = {
								{ "i", 52277},	-- Taurajo Intelligence
								{ "o", 202467},	-- Taurajo Intelligence
							},
						}),
					},

				}),
				q(857, {	-- The Tear of the Moons
					["qg"] = 3421,	-- Feegly the Exiled
					["coord"] = { 48.95, 86.32, THE_BARRENS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 22,
					["groups"] = {
						objective(1, {	-- 0/1 Tear of the Moons
							["providers"] = {
								{ "i", 5038 },	-- Tear of the Moons
								{ "o", 3646 },	-- General Twinbraid's Strongbox
							},
							["coord"] = { 49.1, 84.2, THE_BARRENS },
						}),
					},
				}),
				q(24574, {	-- To Harvest Chaos
					["qg"] = 37570,	-- Naralex
					["sourceQuest"] = 24565,	-- Biological Intervention
					["coord"] = { 50.4, 40.6, SOUTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/5 Outgrowth slain
							["provider"] = { "n", 37092 },	-- Outgrowth
						}),
						objective(2, {	-- 0/1 Squirming Heart
							["provider"] = { "i", 49883 },	-- Squirming Heart
							["cr"] = 37092,	-- Outgrowth
						}),
					},
				}),
				q(25034, {	-- To the Front!
					["qg"] = 38871,	-- Corporal Teegan
					["sourceQuest"] = 25027,	-- You Flicked a Fine Vine to Leaf Me
					["coord"] = { 56.1, 42.6, SOUTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(878, {	-- Tribes at War
					["qg"] = 3430,	-- Mangletooth
					["coord"] = { 44.55, 59.26, THE_BARRENS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 14,
					["groups"] = {
						objective(1, {	-- 0/6 Bristleback Water Seeker slain
							["provider"] = { "n", 3260 },	-- Bristleback Water Seeker
						}),
						objective(2, {	-- 0/12 Bristleback Thornweaver slain
							["provider"] = { "n", 3261 },	-- Bristleback Thornweaver
						}),
						objective(3, {	-- 0/12 Bristleback Geomancer slain
							["provider"] = { "n", 3263 },	-- Bristleback Geomancer
						}),
					},
				}),
				q(25028, {	-- Trouble From the Ground Up
					["qg"] = 38876,	-- Hannah Bridgewater
					["sourceQuests"] = {
						25022,	-- A Failure to Communicate
						25015,	-- Make 'Em Squeal
					},
					["coord"] = { 56.2, 42.6, SOUTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/10 Unusual Flower Bud
							["providers"] = {
								{ "i", 49815 },	-- Unusual Flower Bud
								{ "o", 201737 },	-- Budding Flower
								{ "o", 201738 },	-- Budding Flower
							},
						}),
					},
				}),
				q(25174, {	-- Twinbraid Needs to Know
					["qg"] = 38152,	-- Weezil Slipshadow
					["sourceQuest"] = 25163,	-- Who Did This?
					["coord"] = { 50.2, 87.1, SOUTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				warchiefscommand(q(28549, {	-- Warchief's Command: Southern Barrens!
					["timeline"] = { ADDED_4_0_3 },
					["maps"] = { ORGRIMMAR, THUNDER_BLUFF },	-- Only found in Orgrimmar & Thunder Bluff in Cataclysm.
					["isBreadcrumb"] = true,
					-- #if BEFORE 7.3.5
					-- Cataclysm: Minimum is level 29. (TODO: Confirm this.)
					-- Cataclysm: Maximum is level 33. (TODO: Test max level)
					["lvl"] = { 29, 33 },
					-- #endif
				})),
				q(24512, {	-- Warriors' Redemption
					["qg"] = 37153,	-- Holgom
					["coord"] = { 37.6, 16.6, SOUTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/5 Stonetalon Prisoner Armed
							["providers"] = {
								{ "o", 201701},	-- Confiscated Arms
								{ "i", 49769},	-- Confiscated Arms
								{ "n", 37167},	-- Stonetalon Prisoner
							},
						}),
						i(53239, {	-- Holgom's Bracers
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(53231, {	-- Climbing Straps
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(53250, {	-- Ring of Reclaimed Honor
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131370, {  -- Holgom's Waistcord
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(885, {	-- Washte Pawne
					["provider"] = { "i", 5103 },	-- Washte Pawne's Feather
					["timeline"] = { REMOVED_4_0_3 },
					["cr"] = 3472,	-- Washte Pawne
					["races"] = HORDE_ONLY,
					["lvl"] = 10,
				}),
				q(893, {	-- Weapons of Choice
					["qg"] = 3433,	-- Tatternack Steelforge
					["coord"] = { 45.10, 57.69, THE_BARRENS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 17,
					["groups"] = {
						objective(1, {	-- 0/1 Razormane Backstabber
							["provider"] = { "i", 5093 },	-- Razormane Backstabber
						}),
						objective(2, {	-- 0/1 Charred Razormane Wand
							["provider"] = { "i", 5092 },	-- Charred Razormane Wand
						}),
						objective(3, {	-- 0/1 Razormane War Shield
							["provider"] = { "i", 5094 },	-- Razormane War Shield
						}),
						i(5322, {	-- Demolition Hammer
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(5323, {	-- Everglow Lantern
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(24539, {	-- When Plants Attack
					["qg"] = 37515,	-- Lane Tallgrass
					["coord"] = { 44.4, 33.2, SOUTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/5 Taurajo Refugees Rescued from Overgrowth
							["provider"] = { "n", 37548 },	-- Grasping Overgrowth
						}),
					},
				}),
				q(25163, {	-- Who Did This?
					["qg"] = 39220,	-- Wounded Bael'dun Officer
					["sourceQuest"] = 25120,	-- Marley's Final Flight
					["coord"] = { 49.6, 87.1, SOUTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(24807, {	-- Winnoa Pineforest
					["qg"] = 37570,	-- Naralex
					["sourceQuest"] = 24601,	-- The Nightmare Scar
					["coord"] = { 48.1, 38.6, SOUTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				q(5044, {	-- Wisdom of Agamaggan
					["qg"] = 3430,	-- Mangletooth
					["sourceQuest"] = 5052,	-- Blood Shards of Agamaggan
					["coord"] = { 44.55, 59.26, THE_BARRENS },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = {{ "i", 5075, 4 }},	-- Blood Shard
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["lvl"] = 14,
				}),
				q(25082, {	-- Working the Bugs Out
					["qg"] = 39085,	-- Logan Talonstrike
					["coord"] = { 49.1, 67.8, SOUTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/10 Silithid Swarmer slain
							["provider"] = { "n", 3252 },	-- Silithid Swarmer
						}),
					},
				}),
				q(25027, {	-- You Flicked a Fine Vine to Leaf Me
					["qg"] = 38871,	-- Corporal Teegan
					["sourceQuests"] = {
						25022,	-- A Failure to Communicate
						25015,	-- Make 'Em Squeal
					},
					["coord"] = { 56.1, 42.6, SOUTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Three-Tooth Dealt With
							["provider"] = { "n", 38941 },	-- Three-Tooth
						}),
						objective(2, {	-- 0/2 Deviate Crone slain
							["provider"] = { "n", 38940 },	-- Deviate Crone
						}),
						i(53302, {	-- Three-Tooth Bracers
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(53287, {	-- Quilboar Crone Gloves
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131396, {	-- Three-Tooth Armguards
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
			}),
			n(RARES, {
				n(5797, {	-- Aean Swiftriver <Alliance Outrunner>
					-- #if BEFORE CATA
					["coords"] = {
						{ 45.6, 41.2, THE_BARRENS },
						{ 48.8, 42.6, THE_BARRENS },
						{ 50.4, 43.8, THE_BARRENS },
						{ 50.2, 46.8, THE_BARRENS },
						{ 48.8, 52.4, THE_BARRENS },
						{ 47.6, 55.8, THE_BARRENS },
						{ 45.6, 61.0, THE_BARRENS },
						{ 45.4, 66.8, THE_BARRENS },
						{ 46.6, 72.6, THE_BARRENS },
						{ 48.6, 77.6, THE_BARRENS },
						{ 48.6, 79.6, THE_BARRENS },
						{ 46.4, 81.6, THE_BARRENS },
						{ 46.6, 78.2, THE_BARRENS },
						{ 47.8, 64.2, THE_BARRENS },
						{ 49.4, 61.2, THE_BARRENS },
						{ 46.6, 46.8, THE_BARRENS },
						{ 46.0, 45.6, THE_BARRENS },
					},
					-- #endif
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["crs"] = {
						5799,	-- Hannah Bladeleaf <Alliance Outrunner>
						5800,	-- Marcus Bel <Alliance Outrunner>
						5798,	-- Thora Feathermoon <Alliance Outrunner>
					},
					["groups"] = {
						i(10621, {	-- Runed Scroll
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				n(5834, {	-- Azzere the Skyblade
					["coords"] = {
						-- #if AFTER CATA
						{ 45.8, 55.0, SOUTHERN_BARRENS },
						{ 46.0, 58.6, SOUTHERN_BARRENS },
						{ 44.2, 59.0, SOUTHERN_BARRENS },
						{ 43.6, 57.6, SOUTHERN_BARRENS },
						{ 42.4, 54.8, SOUTHERN_BARRENS },
						{ 42.6, 53.4, SOUTHERN_BARRENS },
						{ 43.8, 55.2, SOUTHERN_BARRENS },
						{ 44.6, 56.2, SOUTHERN_BARRENS },
						-- #else
						{ 44.6, 62.2, THE_BARRENS },
						{ 46.6, 63.0, THE_BARRENS },
						{ 44.8, 64.0, THE_BARRENS },
						-- #endif
					},
				}),
				n(5827, {	-- Brontus
					-- #if BEFORE CATA
					["coords"] = {
						{ 49.6, 58.0, THE_BARRENS },
						{ 49.0, 60.8, THE_BARRENS },
						{ 48.6, 63.0, THE_BARRENS },
						{ 47.6, 58.8, THE_BARRENS },
						{ 47.4, 65.6, THE_BARRENS },
						{ 46.6, 67.4, THE_BARRENS },
						{ 46.6, 71.6, THE_BARRENS },
						{ 46.0, 75.8, THE_BARRENS },
						{ 44.8, 79.4, THE_BARRENS },
						{ 44.4, 75.6, THE_BARRENS },
					},
					-- #endif
					["timeline"] = { REMOVED_4_0_3 },
				}),
				n(5851, {	-- Captain Gerogg Hammertoe <Bael'dun Captain of the Guard>
					-- #if AFTER CATA
					["coord"] = { 49.8, 89.6, SOUTHERN_BARRENS },
					-- #else
					["coord"] = { 49.6, 83.8, THE_BARRENS },
					-- #endif
					["races"] = HORDE_ONLY,
					["description"] = "This rare NPC is friendly to Alliance players.",
				}),
				n(5849, {	-- Digger Flameforge <Excavation Specialist>
					-- #if AFTER CATA
					["coord"] = { 47.8, 88.2, SOUTHERN_BARRENS },
					-- #else
					["coord"] = { 47.6, 85.6, THE_BARRENS },
					-- #endif
					["races"] = HORDE_ONLY,
					["description"] = "This rare NPC is friendly to Alliance players.",
					["groups"] = {
						i(4785, {	-- Brimstone Belt
							-- #if BEFORE 4.0.3
							["description"] = "This item is only naturally accessible to Horde players due to the allegiance of the mobs that drop this item. If you were to sell this item on the Neutral AH you might be able to fetch a pretty penny to collectors.",
							-- #elseif AFTER 10.1.7
							["description"] = "This item is only naturally accessible to Horde players due to the allegiance of the mob that drop this item.",
							-- #endif
							["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },	-- ATT Discord 11.09.2023
						}),
					},
				}),
				n(5863, {	-- Geopriest Gukk'rok
					["coords"] = {
						-- #if AFTER CATA
						{ 42.0, 42.6, SOUTHERN_BARRENS },
						{ 44.2, 42.0, SOUTHERN_BARRENS },
						{ 42.2, 37.6, SOUTHERN_BARRENS },
						-- #else
						{ 41.2, 45.6, THE_BARRENS },
						{ 42.6, 47.2, THE_BARRENS },
						{ 43.8, 48.4, THE_BARRENS },
						{ 43.6, 52.2, THE_BARRENS },
						{ 45.6, 52.4, THE_BARRENS },
						-- #endif
					},
					["groups"] = {
						i(1539, {	-- Gnarled Hermit's Staff
							["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },	-- ATT Discord 07.09.2023
						}),
					},
				}),
				n(5859, {	-- Hagg Taurenbane <Razormane Champion>
					["coords"] = {
						-- #if AFTER CATA
						{ 43.4, 84.6, SOUTHERN_BARRENS },
						{ 41.8, 85.2, SOUTHERN_BARRENS },
						{ 40.4, 83.0, SOUTHERN_BARRENS },
						-- #else
						{ 41.6, 78.8, THE_BARRENS },
						{ 42.0, 81.6, THE_BARRENS },
						{ 43.4, 84.0, THE_BARRENS },
						{ 45.0, 84.6, THE_BARRENS },
						{ 44.8, 79.6, THE_BARRENS },
						-- #endif
					},
				}),
				n(5847, {	-- Heggin Stonewhisker <Bael'dun Chief Engineer>
					-- #if AFTER CATA
					["coord"] = { 47.0, 88.6, SOUTHERN_BARRENS },
					-- #else
					["coord"] = { 47.0, 83.8, THE_BARRENS },
					-- #endif
					["races"] = HORDE_ONLY,
					["description"] = "This rare NPC is friendly to Alliance players.",
					["groups"] = {
						i(2035, {	-- Sword of the Night Sky
							-- #if BEFORE 4.0.3
							["description"] = "This item is only naturally accessible to Horde players due to the allegiance of the mobs that drop this item. If you were to sell this item on the Neutral AH you might be able to fetch a pretty penny to collectors.",
							-- #elseif AFTER 10.1.7
							["description"] = "This item is only naturally accessible to Horde players due to the allegiance of the mob that drop this item.",
							-- #endif
							["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },	-- ATT Discord 07.09.2023
						}),
					},
				}),
				n(5848, {	-- Malgin Barleybrew <Bael'dun Morale Officer>
					-- #if AFTER CATA
					["coord"] = { 47.4, 85.8, SOUTHERN_BARRENS },
					-- #else
					["coord"] = { 49.4, 84.4, THE_BARRENS },
					-- #endif
					["races"] = HORDE_ONLY,
					["description"] = "This rare NPC is friendly to Alliance players and functions as a vendor.",
				}),
				n(3253, {	-- Silithid Harvester
					-- #if AFTER CATA
					["coord"] = { 41.2, 67.0, SOUTHERN_BARRENS },
					-- #else
					["coords"] = {
						{ 42.6, 70.6, THE_BARRENS },
						{ 44.6, 70.0, THE_BARRENS },
						{ 44.4, 74.0, THE_BARRENS },
						{ 47.8, 70.2, THE_BARRENS },
					},
					-- #endif
					["groups"] = {
						i(5138, {	-- Harvester's Head
							["timeline"] = { REMOVED_4_0_3 },
							["races"] = HORDE_ONLY,
						}),
					},
				}),
				n(5829, {	-- Snort the Heckler
					-- #if AFTER CATA
					["coord"] = { 45.6, 43.6, SOUTHERN_BARRENS },
					-- #else
					["coords"] = {
						{ 41.8, 20.4, THE_BARRENS },
						{ 40.8, 23.4, THE_BARRENS },
						{ 41.4, 27.2, THE_BARRENS },
					},
					-- #endif
				}),
				n(5864, {	-- Swinegart Spearhide
					-- #if AFTER CATA
					["coord"] = { 38.6, 33.6, SOUTHERN_BARRENS },
					-- #else
					["coords"] = {
						{ 41.4, 45.6, THE_BARRENS },
						{ 42.2, 48.0, THE_BARRENS },
						{ 45.2, 49.0, THE_BARRENS },
					},
					-- #endif
				}),
				n(5832, {	-- Thunderstomp
					["coords"] = {
						-- #if AFTER CATA
						{ 48.2, 74.6, SOUTHERN_BARRENS },
						{ 49.8, 80.0, SOUTHERN_BARRENS },
						{ 46.4, 78.6, SOUTHERN_BARRENS },
						{ 44.6, 80.0, SOUTHERN_BARRENS },
						{ 44.6, 77.4, SOUTHERN_BARRENS },
						-- #else
						{ 47.0, 77.2, THE_BARRENS },
						{ 46.4, 78.6, THE_BARRENS },
						{ 48.0, 80.8, THE_BARRENS },
						-- #endif
					},
				}),
			}),
			n(VENDORS, {
				n(44283, {	-- Camran <Mail Armor>
					["coord"] = { 67.4, 48.2, SOUTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_1 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(4799, {	-- Antiquated Cloak
							["isLimited"] = true,
						}),
						i(4797, {	-- Fiery Cloak
							["isLimited"] = true,
						}),
						i(4798, {	-- Heavy Runed Cloak
							["isLimited"] = true,
						}),
						i(4816, {	-- Legionnaire's Leggings
							["isLimited"] = true,
						}),
						i(4800, {	-- Mighty Chain Pants
							["isLimited"] = true,
						}),
					},
				}),
				-- #if AFTER 3.1.0.9626
				n(3392, {	-- Prospector Khazgorm <Explorers' League>
					["coord"] = { 47.8, 85.6, THE_BARRENS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(44977, {	-- Recipe: Dig Rat Stew (RECIPE!)
							["timeline"] = { ADDED_3_1_0, DELETED_4_3_0 },
						}),
					},
				}),
				-- #endif
			}),
			n(ZONE_DROPS, {
				i(5075, {	-- Blood Shard
					["crs"] = {
						3261,	-- Bristleback Thornweaver
						3263,	-- Bristleback Geomancer
						3260,	-- Bristleback Water Seeker
						3258,	-- Bristleback Hunter
					},
				}),
				i(5092, {	-- Charred Razormane Wand
					["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },	-- ATT Discord 07.09.2023
					-- #if BEFORE 4.0.3
					["cr"] = 3458,	-- Razormane Seer
					["coords"] = {
						{ 42.6, 79.0, THE_BARRENS },
						{ 43.0, 83.2, THE_BARRENS },
					},
					-- #elseif AFTER 10.1.7
					["cr"] = 37661,	-- Razormane Seer
					["coords"] = {
						{ 41.8, 82.8, SOUTHERN_BARRENS },
						{ 43.2, 84.4, SOUTHERN_BARRENS },
						{ 23.4, 35.4, SOUTHERN_BARRENS },
					},
					-- #endif
				}),
				i(5051, {	-- Dig Rat
					["coord"] = { 49.4, 88.2, SOUTHERN_BARRENS },
					["cr"] = 3444,	-- Dig Rat
				}),
				i(78342, {	-- Plump Dig Rat (RECIPE!)
					["coord"] = { 49.4, 88.2, SOUTHERN_BARRENS },
					["cr"] = 3444,	-- Dig Rat
				}),
				i(5093, {	-- Razormane Backstabber
					["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },	-- ATT Discord 07.09.2023
					-- #if BEFORE 4.0.3
					["crs"] = {
						3457,	-- Razormane Stalker
						3456,	-- Razormane Pathfinder
					},
					["coords"] = {
						{ 41.8, 79.6, THE_BARRENS },
						{ 43.8, 83.2, THE_BARRENS },
					},
					-- #elseif AFTER 10.1.7
					["cr"] = 37560,	-- Razormane Pathfinder
					["coords"] = {
						{ 43.4, 82.0, SOUTHERN_BARRENS },
						{ 41.6, 81.4, SOUTHERN_BARRENS },
						{ 43.6, 86.2, SOUTHERN_BARRENS },
					},
					-- #endif
				}),
				i(5094, {	-- Razormane War Shield
					["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },	-- ATT Discord 07.09.2023
					-- #if BEFORE 4.0.3
					["cr"] = 3459,	-- Razormane Warfrenzy
					["coords"] = {
						{ 41.6, 79.0, THE_BARRENS },
						{ 42.2, 81.6, THE_BARRENS },
					},
					-- #elseif AFTER 10.1.7
					["cr"] = 37660,	-- Razormane Warfrenzy
					["coords"] = {
						{ 38.0, 81.8, SOUTHERN_BARRENS },
						{ 43.6, 82.6, SOUTHERN_BARRENS },
						{ 44.6, 87.8, SOUTHERN_BARRENS },
					},
					-- #endif
				}),
				i(44977, {	-- Recipe: Dig Rat Stew (RECIPE!)
					["timeline"] = { ADDED_3_1_0, DELETED_4_3_0 },
					["crs"] = {
						39153,	-- Excavation Raider
						3376,	-- Bael'dun Soldier
						3378,	-- Bael'dun Officer
						3377,	-- Bael'dun Rifleman
					},
				}),
				i(6663, {	-- Recipe: Elixir of Giant Growth (RECIPE!)
					["description"] = "Can drop from any mob in the Barrens.",
				}),
				i(6661, {	-- Recipe: Savory Deviate Delight (RECIPE!)
					["description"] = "Can drop from any mob in the Barrens.",
				}),
			}),
		},
	}),
}));
-- #endif