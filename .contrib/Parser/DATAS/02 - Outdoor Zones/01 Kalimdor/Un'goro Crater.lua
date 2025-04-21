---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(KALIMDOR, {
	m(UNGORO_CRATER, {
		["lore"] = "Un'Goro Crater is a lush jungle in southern Kalimdor, isolated from the source as it shares borders with the deserts of Feralas and Silithus. Although its borders make Un'Goro Crater a rather isolated area, many challenges await players here as they explore the wide range of exotic fauna, from aggressive plant mobs to the mighty devilsaurs.\n\nMarshal's Refuge, the main questing hub in Un'Goro, is also a cradle of references to TV Show Land of the Lost: The last names of the main characters were Marshal, Williden Marshal and Hol'anyee Marshal are clear references to main characters Will and Holly Marshal, and Un'Goro's plot revolves around massive pylons scattered across the zone, also a central part of the plot in Land of the Lost.",
		["icon"] = 236850,
		["maps"] = { 79 },	-- The Slithering Scar
		["groups"] = {
			n(ACHIEVEMENTS, {
				explorationAch(854),	-- Explore Un'Goro Crater
				ach(4939, {	-- Un'Goro Crater Quests
					["timeline"] = { ADDED_4_0_3 },
					-- #if ANYCLASSIC
					-- #if AFTER MOP
					["groups"] = {
						crit(1, {	-- The Pylons of Un'Goro
							["sourceQuests"] = {
								24720,	-- Crystals of Power
								24721,	-- The Eastern Pylon
								24722,	-- The Northern Pylon
								24723,	-- The Western Pylon
							},
						}),
						crit(2, {	-- Observe the World
							["sourceQuest"] = 24695,	-- Ever Watching From Above
						}),
						crit(3, {	-- The Ballad of Maximillian
							["sourceQuest"] = 24707,	-- The Ballad of Maximillian
						}),
					},
					-- #else
					["sourceQuests"] = {
						24720,	-- Crystals of Power
						24721,	-- The Eastern Pylon
						24722,	-- The Northern Pylon
						24723,	-- The Western Pylon
						24695,	-- Ever Watching From Above
						24707,	-- The Ballad of Maximillian
					},
					-- #endif
					-- #endif
				}),
			}),
			battlepets({
				["sym"] = {{"select","speciesID",
					406,	-- Beetle (PET!)
					393,	-- Cockroach (PET!)
					415,	-- Fire Beetle (PET!)
					404,	-- Long-tailed Mole (PET!)
					503,	-- Silky Moth (PET!)
					405,	-- Tree Python (PET!)
				}},
				["groups"] = {
					pet(632, {	-- Ash Lizard (PET!)
						["description"] = "Found around Fire Plum Ridge in Un'goro Crater and around fiery and dry areas in lower Mount Hyjal.",
						["coords"] = {
							{ 50.0, 49.0, UNGORO_CRATER },	-- Fire Plum Ridge
							{ 60.0, 70.0, MOUNT_HYJAL },	-- Fiery Mount Hyjal
						},
					}),
					pet(504, {	-- Diemetradon Hatchling (PET!)
						["description"] = "Can be found around Golakka Hot Springs, near Elder Diemetradons.",
					}),
					pet(631),	-- Emerald Boa (PET!)
					pet(403),	-- Parrot (PET!)
					pet(502, {	-- Spotted Bell Frog (PET!)
						["description"] = "Only found around water in Un'goro.",
					}),
				},
			}),
			explorationHeader({
				exploration(537),	-- Fire Plume Ridge
				-- #if AFTER CATA
				exploration(542),	-- Fungal Rock
				-- #endif
				exploration(543),	-- Golakka Hot Springs
				exploration(1943),	-- Ironstone Plateau
				exploration(538),	-- Lakkari Tar Pits
				-- #if AFTER CATA
				exploration(541),	-- Marshal's Refuge
				-- #endif
				exploration(539),	-- Terror Run
				exploration(1942),	-- The Marshlands
				-- #if AFTER CATA
				exploration(4885),	-- The Roiling Gardens
				exploration(4884),	-- The Screaming Reaches
				exploration(4382),	-- The Shaper's Terrace
				-- #endif
				exploration(540),	-- The Slithering Scar
			}),
			n(FLIGHT_PATHS, {
				fp(79, {	-- Marshal's Refuge, Un'Goro Crater / Marshal's Stand, Un'Goro Crater [CATA+]
					["cr"] = 10583,	-- Gryfe <Flight Master>
					["coords"] = {
						-- #if AFTER CATA
						{ 56, 64, UNGORO_CRATER },
						-- #else
						{ 45.2, 5.8, UNGORO_CRATER },
						-- #endif
					},
				}),
				fp(386, {	-- Mossy Pile, Un'Goro Crater
					["cr"] = 39175,	-- Flizzy Coilspanner <Flight Master>
					["coord"] = { 44, 40.2, UNGORO_CRATER },
					["timeline"] = { ADDED_4_0_3 },
				}),
			}),
			n(QUESTS, {
				q(3941, {	-- A Gnome's Assistance
					["qg"] = 8737,	-- Linken
					["sourceQuest"] = 3914,	-- Linken's Sword
					["coord"] = { 44.6, 8.2, UNGORO_CRATER },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 47,
				}),
				q(3913, {	-- A Grave Situation
					["providers"] = {
						{ "n", 9299 },	-- Gaeriyan
						{ "i", 11136 },	-- Linken's Tempered Sword
					},
					["sourceQuest"] = 3912,	-- Meet at the Grave
					["coord"] = { 54.0, 23.4, TANARIS },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 47,
				}),
				q(24735, {	-- A Little Help From My Friends
					["qg"] = 9999,	-- Ringo
					["sourceQuest"] = 24734,	-- Lost!
					["coord"] = { 51.9, 49.8, UNGORO_CRATER },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						i(53566, {	-- Woodland Leggings
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(53567, {	-- Clayridge Headpiece
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(53568, {	-- Jeweled Legguards
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(4491, {	-- A Little Help From My Friends
					["qg"] = 9999,	-- Ringo
					["sourceQuest"] = 4492,	-- Lost!
					["coord"] = { 52, 50, UNGORO_CRATER },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 50,
					["groups"] = {
						i(11910, {	-- Bejeweled Legguards
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(11911, {	-- Treetop Leggings
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(11913, {	-- Clayridge Helm
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(24709, {	-- A Tale of Two Shovels
					["qg"] = 9272,	-- Spark Nilminer
					["sourceQuest"] = 24708,	-- The Fossil-Finder 3000
					["coord"] = { 31.8, 50.2, UNGORO_CRATER },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/1 Durrin's Archaeological Findings
							["provider"] = { "i", 50410 },	-- Durrin's Archaeological Findings
							["cr"] = 38329,	-- Durrin Direshovel
						}),
						i(53600, {	-- Careful Coverings
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(53601, {	-- Nilminer's Notes
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(53602, {	-- Excavated Bracers
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(45055, {	-- A Taste of Their Own Medicine
					["qg"] = 115923,	-- Ko'Zan
					["sourceQuest"] = 45051,	-- Reverse Blacksmithing
					["coord"] = { 43.6, 41.4, UNGORO_CRATER },
					["timeline"] = { ADDED_7_2_0 },
					["requireSkill"] = BLACKSMITHING,
				}),
				q(4142, {	-- A Visit to Gregan
					["providers"] = {
						{ "n", 9119 },	-- Muigin
						{ "i", 11316 },	-- Bloodpetal
					},
					["sourceQuest"] = 4141,	-- Muigin and Larion
					["coord"] = { 42.9, 9.6, UNGORO_CRATER },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { FERALAS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 47,
				}),
				q(24855, {	-- Aberrant Flora
					["qg"] = 38263,	-- Ithis Moonwarden
					["sourceQuest"] = 24687,	-- Bouquets of Death
					["coord"] = { 76.4, 48.3, UNGORO_CRATER },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/11 Bloodpetal slain
							["providers"] = {
								{ "n", 38358},	-- Bloodpetal
								{ "n", 6509},	-- Bloodpetal Lasher
								{ "n", 6510},	-- Bloodpetal Flayer
								{ "n", 6511},	-- Bloodpetal Thresher
								{ "n", 6512},	-- Bloodpetal Trapper
								{ "n", 38506},	-- Illusory Bloodpetal
							},
						}),
						i(53569, {	-- Confiscated Poacher's Gun
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(53570, {	-- Bloodpetal Cloak
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(24698, {	-- Adventures in Archaeology
					["qg"] = 38270,	-- Nolen Tacker
					["sourceQuest"] = 24693,	-- Mossy Pile
					["coord"] = { 55.0, 60.5, UNGORO_CRATER },
					["timeline"] = { ADDED_4_0_3 },
					["isBreadcrumb"] = true,
				}),
				q(3883, {	-- Alien Ecology
					["qg"] = 9271,	-- Hol'anyee Marshal
					["coord"] = { 43.8, 7.2, UNGORO_CRATER },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 48,
					["groups"] = {
						objective(1, {	-- 0/1 Hive Wall Sample
							["providers"] = {
								{ "i",  11131 },	-- Hive Wall Sample
								{ "o", 174793 },	-- Gorishi Hive Hatchery
								{ "i",  11132 },	-- Unused Scraping Vial
							},
							["coord"] = { 48, 85, UNGORO_CRATER },
						}),
					},
				}),
				q(24866, {	-- An Abandoned Research Camp
					["provider"] = { "o", 161521 },	-- Research Equipment
					["coord"] = { 38.4, 66.1, UNGORO_CRATER },
					["timeline"] = { ADDED_4_0_3 },
				}),
				q(24703, {	-- An Important Lesson
					["qg"] = 38237,	-- Maximillian of Northshire
					["coord"] = { 30.6, 51.1, UNGORO_CRATER },
					["timeline"] = { ADDED_4_0_3 },
				}),
				q(4501, {	-- Beware of Pterrordax
					["provider"] = { "o", 174682 },	-- Beware of Pterrordax
					["coord"] = { 43.6, 8.4, UNGORO_CRATER },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 49,
					["groups"] = {
						-- #if AFTER WRATH
						objective(1, {	-- 0/10 Frenzied Pterrordax slain
							["provider"] = { "n", 9167 },	-- Frenzied Pterrordax
						}),
						-- #else
						objective(1, {	-- 0/10 Pterrordax slain
							["provider"] = { "n", 9166 },	-- Pterrordax
						}),
						objective(2, {	-- 0/15 Frenzied Pterrordax slain
							["provider"] = { "n", 9167 },	-- Frenzied Pterrordax
						}),
						-- #endif
						i(11918, {	-- Grotslab Gloves
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(11919, {	-- Cragplate Greaves
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(24690, {	-- Blazerunner
					["qg"] = 9270,	-- Williden Marshal
					["sourceQuest"] = 24740,	-- Volcanic Activity
					["coord"] = { 55.0, 62.2, UNGORO_CRATER },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/1 Blazerunner slain
							["provider"] = { "n", 9376 },	-- Blazerunner
						}),
						i(53574, {	-- Blazerunner Leggings
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(53575, {	-- Marshal Bracers
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(53576, {	-- Fire Plume Breastplate
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				applyclassicphase(PHASE_FOUR_SUNKEN_TEMPLE_CLASS_QUESTS, q(9052, {	-- Bloodpetal Poison
					["qg"] = 9619,	-- Torwa Pathfinder
					["sourceQuest"] = 9063,	-- Torwa Pathfinder
					["coord"] = { 71.6, 76.0, UNGORO_CRATER },
					["timeline"] = { REMOVED_4_0_3 },
					["classes"] = { DRUID },
					["lvl"] = 50,
					["groups"] = {
						objective(1, {	-- 0/8 Gorishi Sting
							["provider"] = { "i", 22435 },	-- Gorishi Sting
							["crs"] = {
								6551,	-- Gorishi Wasp
								6554,	-- Gorishi Stinger
								6552,	-- Gorishi Worker
								6553,	-- Gorishi Reaver
							},
						}),
						objective(2, {	-- 0/8 Bloodcap
							["providers"] = {
								{ "i",  22434 },	-- Bloodcap
								{ "o", 164958 },	-- Bloodpetal Sprout
							},
						}),
					},
				})),
				q(4144, {	-- Bloodpetal Sprouts
					["qg"] = 9119,	-- Muigin
					["sourceQuest"] = 4143,	-- Haze of Evil
					["coord"] = { 42.9, 9.6, UNGORO_CRATER },
					["timeline"] = {
						-- #if SEASON_OF_DISCOVERY
						REMOVED_1_15_2,
						-- #else
						REMOVED_4_0_3,
						-- #endif
					},
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 47,
					["groups"] = {
						objective(1, {	-- 0/3 Bloodpetal Sprout
							["providers"] = {
								{ "i",  11315 },	-- Bloodpetal Sprout
								{ "o", 164958 },	-- Bloodpetal Sprout
							},
						}),
					},
				}),
				q(4148, {	-- Bloodpetal Zapper
					["providers"] = {
						{ "n",   9118 },	-- Larion
						{ "i",  11315 },	-- Bloodpetal Sprout
						{ "o", 164958 },	-- Bloodpetal Sprout
					},
					["sourceQuest"] = 4146,	-- Zapper Fuel
					["coord"] = { 45.6, 8.6, UNGORO_CRATER },
					["timeline"] = {
						-- #if SEASON_OF_DISCOVERY
						REMOVED_1_15_2,
						-- #else
						REMOVED_4_0_3,
						-- #endif
					},
					["races"] = HORDE_ONLY,
					["lvl"] = 47,
					["groups"] = {
						i(11320, {	-- Bloodpetal Zapper
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(24687, {	-- Bouquets of Death
					["qg"] = 38263,	-- Ithis Moonwarden
					["sourceQuest"] = 24689,	-- Flowing to the North
					["coord"] = { 76.4, 48.3, UNGORO_CRATER },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/6 Pack of Juvenile Bloodpetals slain
							["provider"] = { "n", 38214 },	-- Pack of Juvenile Bloodpetals
						}),
					},
				}),
				q(24686, {	-- Carried on the Waves
					["qg"] = 38274,	-- Garl Stormclaw
					["sourceQuest"] = 24719,	-- Claws of White
					["coord"] = { 70.8, 76.6, UNGORO_CRATER },
					["timeline"] = { ADDED_4_0_3 },
				}),
				q(24714, {	-- Chasing A-Me 01
					["qg"] = 9618,	-- Karna Remtravel
					["sourceQuest"] = 24701,	-- Marshal's Refusew
					["coord"] = { 43.4, 40.9, UNGORO_CRATER },
					["timeline"] = { ADDED_4_0_3 },
				}),
				q(4243, {	-- Chasing A-Me 01 (1/3)
					["qg"] = 9618,	-- Karna Remtravel
					["coord"] = { 46.4, 13.5, UNGORO_CRATER },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 48,
				}),
				q(4244, {	-- Chasing A-Me 01 (2/3)
					["qg"] = 9623,	-- A-Me 01
					["sourceQuest"] = 4243,	-- Chasing A-Me 01 (1/3)
					["coord"] = { 67.6, 16.8, UNGORO_CRATER },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = {{ "i", 10561, 1 }},	-- Mithril Casing
					["lvl"] = 48,
				}),
				q(4245, {	-- Chasing A-Me 01 (3/3)
					["qg"] = 9623,	-- A-Me 01
					["sourceQuest"] = 4244,	-- Chasing A-Me 01 (2/3)
					["coord"] = { 67.6, 16.8, UNGORO_CRATER },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 48,
				}),
				q(24719, {	-- Claws of White
					["qg"] = 38274,	-- Garl Stormclaw
					["sourceQuest"] = 24854,	-- Finding Stormclaw
					["coord"] = { 70.8, 76.6, UNGORO_CRATER },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/5 White Ravasaur Claw
							["provider"] = { "i", 11477 },	-- White Ravasaur Claw
							["crs"] = {
								6505,	-- Ravasaur
								6506,	-- Ravasaur Runner
								6507,	-- Ravasaur Hunter
								6508,	-- Venomhide Ravasaur
								6581,	-- Ravasaur Matriarch
								9683,	-- Lar'korwi Mate
								9684,	-- Lar'korwi
							},
						}),
						i(53557, {	-- White Bone Pummeler
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(53558, {	-- White Bone Circle
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(53559, {	-- White Bone Rod
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(24725, {	-- Crystal Charge
					["provider"] = { "o", 164955 },	-- Northern Crystal Pylon
					["sourceQuests"] = {
						24721,	-- The Eastern Pylon
						24722,	-- The Northern Pylon
						24723,	-- The Western Pylon
					},
					["coord"] = { 56.5, 12.4, UNGORO_CRATER },
					["timeline"] = { ADDED_4_0_3 },
					["cost"] = {
						{ "i", 11186, 6 },	-- Red Power Crystal
						{ "i", 11188, 8 },	-- Yellow Power Crystal
					},
					["repeatable"] = true,
					["groups"] = {
						i(11566),	-- Crystal Charge
					},
				}),
				q(4385, {	-- Crystal Charge
					["provider"] = { "o", 164955 },	-- Northern Crystal Pylon
					["sourceQuest"] = 4321,	-- Making Sense of It
					["coord"] = { 56.6, 12.5, UNGORO_CRATER },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = {
						{ "i", 11186, 10 },	-- Red Power Crystal
						{ "i", 11188, 10 },	-- Yellow Power Crystal
					},
					["repeatable"] = true,
					["lvl"] = 47,
					["groups"] = {
						i(11566),	-- Crystal Charge
					},
				}),
				q(24726, {	-- Crystal Force
					["provider"] = { "o", 164957 },	-- Eastern Crystal Pylon
					["sourceQuests"] = {
						24721,	-- The Eastern Pylon
						24722,	-- The Northern Pylon
						24723,	-- The Western Pylon
					},
					["coord"] = { 77.2, 50.0, UNGORO_CRATER },
					["timeline"] = { ADDED_4_0_3 },
					["cost"] = {
						{ "i", 11185, 6 },	-- Green Power Crystal
						{ "i", 11184, 8 },	-- Blue Power Crystal
					},
					["repeatable"] = true,
					["groups"] = {
						i(11563),	-- Crystal Force
					},
				}),
				q(4382, {	-- Crystal Force
					["provider"] = { "o", 164957 },	-- Eastern Crystal Pylon
					["sourceQuest"] = 4321,	-- Making Sense of It
					["coord"] = { 77.3, 50.0, UNGORO_CRATER },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = {
						{ "i", 11185, 10 },	-- Green Power Crystal
						{ "i", 11184, 10 },	-- Blue Power Crystal
					},
					["repeatable"] = true,
					["lvl"] = 47,
					["groups"] = {
						i(11563),	-- Crystal Force
					},
				}),
				q(24724, {	-- Crystal Restore
					["provider"] = { "o", 164955 },	-- Northern Crystal Pylon
					["sourceQuests"] = {
						24721,	-- The Eastern Pylon
						24722,	-- The Northern Pylon
						24723,	-- The Western Pylon
					},
					["coord"] = { 56.5, 12.4, UNGORO_CRATER },
					["timeline"] = { ADDED_4_0_3 },
					["cost"] = {
						{ "i", 11188, 8 },	-- Yellow Power Crystal
						{ "i", 11185, 6 },	-- Green Power Crystal
					},
					["repeatable"] = true,
					["groups"] = {
						i(11562),	-- Crystal Restore
					},
				}),
				q(4381, {	-- Crystal Restore
					["provider"] = { "o", 164955 },	-- Northern Crystal Pylon
					["sourceQuest"] = 4321,	-- Making Sense of It
					["coord"] = { 56.6, 12.5, UNGORO_CRATER },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = {
						{ "i", 11188, 10 },	-- Yellow Power Crystal
						{ "i", 11185, 10 },	-- Green Power Crystal
					},
					["repeatable"] = true,
					["lvl"] = 47,
					["groups"] = {
						i(11562),	-- Crystal Restore
					},
				}),
				q(24727, {	-- Crystal Spire
					["provider"] = { "o", 164957 },	-- Eastern Crystal Pylon
					["sourceQuests"] = {
						24721,	-- The Eastern Pylon
						24722,	-- The Northern Pylon
						24723,	-- The Western Pylon
					},
					["coord"] = { 77.2, 50.0, UNGORO_CRATER },
					["timeline"] = { ADDED_4_0_3 },
					["cost"] = {
						{ "i", 11184, 8 },	-- Blue Power Crystal
						{ "i", 11188, 6 },	-- Yellow Power Crystal
					},
					["repeatable"] = true,
					["groups"] = {
						i(11567),	-- Crystal Spire
					},
				}),
				q(4386, {	-- Crystal Spire
					["provider"] = { "o", 164957 },	--  Eastern Crystal Pylon
					["sourceQuest"] = 4321,	-- Making Sense of It
					["coord"] = { 77.3, 50.0, UNGORO_CRATER },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = {
						{ "i", 11184, 10 },	-- Blue Power Crystal
						{ "i", 11188, 10 },	-- Yellow Power Crystal
					},
					["repeatable"] = true,
					["lvl"] = 47,
					["groups"] = {
						i(11567),	-- Crystal Spire
					},
				}),
				q(24728, {	-- Crystal Ward
					["provider"] = { "o", 164956 },	-- Western Crystal Pylon
					["sourceQuests"] = {
						24721,	-- The Eastern Pylon
						24722,	-- The Northern Pylon
						24723,	-- The Western Pylon
					},
					["coord"] = { 23.8, 59.1, UNGORO_CRATER },
					["timeline"] = { ADDED_4_0_3 },
					["cost"] = {
						{ "i", 11186, 8 },	-- Red Power Crystal
						{ "i", 11185, 6 },	-- Green Power Crystal
					},
					["repeatable"] = true,
					["groups"] = {
						i(11564),	-- Crystal Ward
					},
				}),
				q(4383, {	-- Crystal Ward
					["provider"] = { "o", 164956 },	-- Western Crystal Pylon
					["sourceQuest"] = 4321,	-- Making Sense of It
					["coord"] = { 23.8, 59.1, UNGORO_CRATER },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = {
						{ "i", 11186, 10 },	-- Red Power Crystal
						{ "i", 11185, 10 },	-- Green Power Crystal
					},
					["repeatable"] = true,
					["lvl"] = 47,
					["groups"] = {
						i(11564),	-- Crystal Ward
					},
				}),
				q(24729, {	-- Crystal Yield
					["provider"] = { "o", 164956 },	-- Western Crystal Pylon
					["sourceQuests"] = {
						24721,	-- The Eastern Pylon
						24722,	-- The Northern Pylon
						24723,	-- The Western Pylon
					},
					["coord"] = { 23.8, 59.1, UNGORO_CRATER },
					["timeline"] = { ADDED_4_0_3 },
					["cost"] = {
						{ "i", 11186, 8 },	-- Red Power Crystal
						{ "i", 11184, 6 },	-- Blue Power Crystal
					},
					["repeatable"] = true,
					["groups"] = {
						i(11565),	-- Crystal Yield
					},
				}),
				q(4384, {	-- Crystal Yield
					["provider"] = { "o", 164956 },	-- Western Crystal Pylon
					["sourceQuest"] = 4321,	-- Making Sense of It
					["coord"] = { 23.8, 59.1, UNGORO_CRATER },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = {
						{ "i", 11186, 10 },	-- Red Power Crystal
						{ "i", 11184, 10 },	-- Blue Power Crystal
					},
					["repeatable"] = true,
					["lvl"] = 47,
					["groups"] = {
						i(11565),	-- Crystal Yield
					},
				}),
				q(24720, {	-- Crystals of Power
					["qg"] = 9117,	-- J.D. Collie
					["coord"] = { 54.1, 62.5, UNGORO_CRATER },
					["timeline"] = { ADDED_4_0_3 },
					["cost"] = {
						{ "i", 11184, 7 },	-- Blue Power Crystal
						{ "i", 11185, 7 },	-- Green Power Crystal
						{ "i", 11186, 7 },	-- Red Power Crystal
						{ "i", 11188, 7 },	-- Yellow Power Crystal
					},
				}),
				q(4284, {	-- Crystals of Power
					["qg"] = 9117,	-- J.D. Collie
					["coord"] = { 41.8, 2.6, UNGORO_CRATER },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = {
						{ "i", 11184, 7 },	-- Blue Power Crystal
						{ "i", 11185, 7 },	-- Green Power Crystal
						{ "i", 11186, 7 },	-- Red Power Crystal
						{ "i", 11188, 7 },	-- Yellow Power Crystal
					},
					["lvl"] = 47,
				}),
				q(5150, {	-- Dadanga is Hungry!
					["providers"] = {
						{ "n", 9274 },	-- Dadanga
						{ "i", 15699 },	-- Small Brown-wrapped Package
					},
					["coord"] = { 43.6, 7.2, UNGORO_CRATER },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = {{ "i", 11315, 15 }},	-- Bloodpetal Sprout
					["repeatable"] = true,
					["lvl"] = 47,
					["groups"] = {
						i(13481, {	-- Recipe: Elixir of Brute Force (RECIPE!)
							["timeline"] = { REMOVED_4_0_3 },	-- Moved to Trainers
						}),
					},
				}),
				q(3881, {	-- Expedition Salvation
					["qg"] = 9270,	-- Williden Marshal
					["coord"] = { 43.9, 7.1, UNGORO_CRATER },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 48,
					["groups"] = {
						objective(1, {	-- 0/1 Crate of Foodstuffs
							["providers"] = {
								{ "i",  11113 },	-- Crate of Foodstuffs
								{ "o", 161526 },	-- Crate of Foodstuffs
							},
							["coord"] = { 68.4, 36.4, UNGORO_CRATER },
						}),
						objective(2, {	-- 0/1 Research Equipment
							["providers"] = {
								{ "i",  11112 },	-- Research Equipment
								{ "o", 161521 },	-- Research Equipment
							},
							["coord"] = { 38.5, 66.0, UNGORO_CRATER },
						}),
					},
				}),
				q(24695, {	-- Ever Watching From Above
					["qg"] = 38502,	-- Nablya
					["sourceQuest"] = 24694,	-- The Shaper's Terrace
					["coord"] = { 83.5, 46.0, UNGORO_CRATER },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/1 Bloodpetal Observation
							["provider"] = { "o", 202187 },	-- Bloodpetal Observation Lever
						}),
						objective(2, {	-- 0/1 Diemetradon Observation
							["provider"] = { "o", 202197 },	-- Diemetradon Observation Lever
						}),
						objective(3, {	-- 0/1 Gorilla Observation
							["provider"] = { "o", 202196 },	-- Gorilla Observation Lever
						}),
						objective(4, {	-- 0/1 Pterrordax Observation
							["provider"] = { "o", 202195 },	-- Pterrordax Observation Lever
						}),
						i(53594, {	-- Amulet of Newfound Knowledge
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(53595, {	-- Cloak of Repose
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(53596, {	-- Un'Goro Mantle
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(24854, {	-- Finding Stormclaw
					["qg"] = 38269,	-- Zen'Aliri
					["coord"] = { 55.7, 60.5, UNGORO_CRATER },
					["timeline"] = { ADDED_4_0_3 },
					["isBreadcrumb"] = true,
				}),
				q(24742, {	-- Finding the Source
					["qg"] = 10302,	-- Krakle
					["coord"] = { 55.3, 62.4, UNGORO_CRATER },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- Find the hottest area of Fire Plume Ridge
							["providers"] = {
								{ "i",  12472 },	-- Krackle's Thermometer
								{ "o", 148503 },	-- Fire Plume Ridge Hot Spot
							},
							["coord"] = { 48.4, 43.3, UNGORO_CRATER },
						}),
					},
				}),
				q(974, {	-- Finding the Source
					["qg"] = 10302,	-- Krakle
					["coord"] = { 30.8, 50.4, UNGORO_CRATER },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 51,
					["groups"] = {
						objective(1, {	-- Find the hottest area of Fire Plume Ridge
							["providers"] = {
								{ "i",  12472 },	-- Krackle's Thermometer
								{ "o", 148503 },	-- Fire Plume Ridge Hot Spot
							},
							["coord"] = { 49, 45, UNGORO_CRATER },
						}),
					},
				}),
				q(24689, {	-- Flowing to the North
					["qg"] = 38274,	-- Garl Stormclaw
					["sourceQuest"] = 24686,	-- Carried on the Waves
					["coord"] = { 70.8, 76.6, UNGORO_CRATER },
					["timeline"] = { ADDED_4_0_3 },
				}),
				q(13903, {	-- Gorishi Grub
					["providers"] = {
						{ "n", 34320 },	-- Venomhide Hatchling
						{ "i", 46362 },	-- Venomhide Hatchling
					},
					["altQuests"] = { 13917 },	-- Gorishi Grub (Undead, Troll, Tauren version until MOP)
					["timeline"] = { ADDED_3_2_0 },
					["races"] = HORDE_ONLY,
					["isDaily"] = true,
					["lvl"] = lvlsquish(48, 48, 15),
					["groups"] = {
						objective(1, {	-- 0/10 Silithid Meat fed to Venomhide Hatchling
							["provider"] = { "i", 46380 },	-- Silithid Meat
							["crs"] = {
								6551,	-- Gorishi Wasp
								6552,	-- Gorishi Worker
								6553,	-- Gorishi Reaver
								6554,	-- Gorishi Stinger
								6555,	-- Gorishi Tunneler
							},
						}),
						i(47196, {	-- Venomhide Baby Tooth
							["timeline"] = { ADDED_3_2_0 },
						}),
					},
				}),
				-- #if NOT ANYCLASSIC
				q(13917, {	-- Gorishi Grub
					["providers"] = {
						{ "n", 34320 },	-- Venomhide Hatchling
						{ "i", 46362 },	-- Venomhide Hatchling
					},
					["timeline"] = { ADDED_3_2_0, REMOVED_5_0_4 },
					["races"] = { UNDEAD, TROLL, TAUREN },
					["isDaily"] = true,
					["lvl"] = lvlsquish(48, 48, 15),
					["groups"] = {
						objective(1, {	-- 0/10 Silithid Meat fed to Venomhide Hatchling
							["provider"] = { "i", 46380 },	-- Silithid Meat
							["crs"] = {
								6551,	-- Gorishi Wasp
								6552,	-- Gorishi Worker
								6553,	-- Gorishi Reaver
								6554,	-- Gorishi Stinger
								6555,	-- Gorishi Tunneler
							},
						}),
						i(47196, {	-- Venomhide Baby Tooth
							["timeline"] = { ADDED_3_2_0 },
						}),
					},
				}),
				-- #endif
				q(24699, {	-- Gormashh the Glutinous
					["qg"] = 38276,	-- Tara
					["sourceQuest"] = 24737,	-- Super Sticky
					["coord"] = { 43.1, 40.9, UNGORO_CRATER },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						i(53592, {	-- Tarred Robe
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(53593, {	-- Sticky Bracers
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(24700, {	-- Hard to Harvest
					["qg"] = 38276,	-- Tara
					["sourceQuest"] = 24693,	-- Mossy Pile
					["coord"] = { 43.2, 40.8, UNGORO_CRATER },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/4 Tarblossom Blossom
							["providers"] = {
								{ "i", 50258 },	-- Tarblossom Blossom
								{ "o", 201975 },	-- Tarblossom
							},
						}),
					},
				}),
				q(24702, {	-- Here Lies Dadanga
					["provider"] = { "o", 202135 },	-- Dadanga's Grave
					["coord"] = { 45.5, 7.8, UNGORO_CRATER },
					["timeline"] = { ADDED_4_0_3 },
					["cost"] = {{ "i", 11315, 10 }},	-- Bloodpetal Sprout
					["repeatable"] = true,
				}),
				heroscall(q(28525, {	-- Hero's Call: Un'Goro Crater! (breadcrumb quest for 24740, not available if 24911 is completed) (max level 53)
					["timeline"] = { ADDED_4_0_3 },
					["maps"] = { DARNASSUS, THE_EXODAR },	-- Only found in Darnassus & The Exodar in Cataclysm.
					["isBreadcrumb"] = true,
					-- #if BEFORE 7.3.5
					-- Cataclysm: Minimum is level 49. (TODO: Confirm this.)
					-- Cataclysm: Maximum is level 53 (TODO: Test max level between 53 and 60)
					["lvl"] = { 49, 53 },
					-- #endif
				})),
				q(24697, {	-- How to Make Meat Fresh Again
					["qg"] = 38270,	-- Nolen Tacker
					["coord"] = { 55.0, 60.5, UNGORO_CRATER },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/4 Dinosaurs Baited
							["provider"] = { "i", 50430 },	-- Scraps of Rotting Meat
							["crs"] = {
								6501,	-- Stegodon
								6502,	-- Plated Stegodon
								6503,	-- Spiked Stegodon
								6504,	-- Thunderstomp Stegodon
								9162,	-- Young Diemetradon
								9163,	-- Diemetradon
								9164,	-- Elder Diemetradon
							},
						}),
						i(53563, {	-- Stegodon Tusk Mace
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(53564, {	-- Osteoderm Belt
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(53565, {
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(156996, {	-- Tailspike Pike
							["timeline"] = { ADDED_7_3_5 },
						}),
					},
				}),
				q(13889, {	-- Hungry, Hungry Hatchling
					["providers"] = {
						{ "n", 34320 },	-- Venomhide Hatchling
						{ "i", 46362 },	-- Venomhide Hatchling
					},
					["altQuests"] = { 13915 },	-- Hungry, Hungry Hatchling (Undead, Troll, Tauren version until MOP)
					["timeline"] = { ADDED_3_2_0 },
					["races"] = HORDE_ONLY,
					["isDaily"] = true,
					["lvl"] = lvlsquish(48, 48, 15),
					["groups"] = {
						objective(1, {	-- 0/10 Fresh Dinosaur Meat fed to Venomhide Hatchling
							["provider"] = { "i", 46367 },	-- Fresh Dinosaur Meat
							["crs"] = {
								6501,	-- Stegodon
								6502,	-- Plated Stegodon
								6503,	-- Spiked Stegodon
								6504,	-- Thunderstomp Stegodon
								9163,	-- Diemetradon
								9164,	-- Elder Diemetradon
								9167,	-- Frenzied Pterrordax
							},
						}),
						i(47196, {	-- Venomhide Baby Tooth
							["timeline"] = { ADDED_3_2_0 },
						}),
					},
				}),
				-- #if NOT ANYCLASSIC
				q(13915, {	-- Hungry, Hungry Hatchling
					["providers"] = {
						{ "n", 34320 },	-- Venomhide Hatchling
						{ "i", 46362 },	-- Venomhide Hatchling
					},
					["timeline"] = { ADDED_3_2_0, REMOVED_5_0_4 },
					["races"] = { UNDEAD, TROLL, TAUREN },
					["isDaily"] = true,
					["lvl"] = lvlsquish(48, 48, 15),
					["groups"] = {
						objective(1, {	-- 0/10 Fresh Dinosaur Meat fed to Venomhide Hatchling
							["provider"] = { "i", 46367 },	-- Fresh Dinosaur Meat
							["crs"] = {
								6501,	-- Stegodon
								6502,	-- Plated Stegodon
								6503,	-- Spiked Stegodon
								6504,	-- Thunderstomp Stegodon
								9163,	-- Diemetradon
								9164,	-- Elder Diemetradon
								9167,	-- Frenzied Pterrordax
							},
						}),
						i(47196, {	-- Venomhide Baby Tooth
							["timeline"] = { ADDED_3_2_0 },
						}),
					},
				}),
				-- #endif
				q(24865, {	-- Is This Stuff Still Good?
					["provider"] = { "o", 161526 },	-- Crate of Foodstuffs
					["coord"] = { 68.5, 36.5, UNGORO_CRATER },
					["timeline"] = { ADDED_4_0_3 },
				}),
				q(3844, {	-- It's a Secret to Everybody (1/3)
					["provider"] = { "o", 161505 },	-- A Wrecked Raft
					["coord"] = { 63.1, 68.5, UNGORO_CRATER },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 47,
				}),
				q(3845, {	-- It's a Secret to Everybody (2/3)
					["providers"] = {
						{ "i",  11107 },	-- A Small Pack
						{ "o", 161504 },	-- A Small Pack
					},
					["sourceQuest"] = 3844,	-- It's a Secret to Everybody (1/3)
					["coord"] = { 63.1, 68.5, UNGORO_CRATER },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 47,
					["groups"] = {
						objective(1, {	-- 0/1 Large Compass
							["provider"] = { "i", 11104 },	-- Large Compass
						}),
						objective(2, {	-- 0/1 Curled Map Parchment
							["provider"] = { "i", 11105 },	-- Curled Map Parchment
						}),
						objective(3, {	-- 0/1 Lion-headed Key
							["provider"] = { "i", 11106 },	-- Lion-headed Key
						}),
						i(11108),	-- Faded Photograph
						i(3108),	-- Heavy Throwing Dagger
					},
				}),
				q(3908, {	-- It's a Secret to Everybody (3/3)
					["providers"] = {
						{ "n", 8737 },	-- Linken
						{ "i", 11133 },	-- Linken's Training Sword
					},
					["sourceQuest"] = 3845,	-- It's a Secret to Everybody (2/3)
					["coord"] = { 44.6, 8.2, UNGORO_CRATER },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { WINTERSPRING },
					["lvl"] = 47,
				}),
				q(3962, {	-- It's Dangerous to Go Alone
					["qg"] = 8737,	-- Linken
					["sourceQuest"] = 3961,	-- Linken's Adventure
					["coord"] = { 44.6, 8.2, UNGORO_CRATER },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 47,
					["groups"] = {
						objective(1, {	-- 0/1 Blazerunner slain
							["providers"] = {
								{ "n", 9376 },	-- Blazerunner
								{ "i", 11522 },	-- Silver Totem of Aquementas
							},
							["coord"] = { 49.6, 49.6, UNGORO_CRATER },
							["description"] = "Use the Silter Totem of Aquementas on Blazerunner to remove his protective barrier.",
						}),
						objective(2, {	-- 0/1 Golden Flame
							["providers"] = {
								{ "i",  11179 },	-- Golden Flame
								{ "o", 164910 },	-- Ornate Chest
							},
							["coord"] = { 50.2, 50, UNGORO_CRATER },
						}),
						i(11905, {	-- Linken's Boomerang
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(11902, {	-- Linken's Sword of Mastery
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(11904, {	-- Spirit of Aquementas
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(4145, {	-- Larion and Muigin
					["qg"] = 9118,	-- Larion
					["coord"] = { 45.6, 8.6, UNGORO_CRATER },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 47,
					["groups"] = {
						objective(1, {	-- 0/5 Bloodpetal Lasher slain
							["provider"] = { "n", 6509 },	-- Bloodpetal Lasher
						}),
						objective(2, {	-- 0/5 Bloodpetal Trapper slain
							["provider"] = { "n", 6512 },	-- Bloodpetal Trapper
						}),
						objective(3, {	-- 0/5 Bloodpetal Flayer slain
							["provider"] = { "n", 6510 },	-- Bloodpetal Flayer
						}),
						objective(4, {	-- 0/5 Bloodpetal Thresher slain
							["provider"] = { "n", 6511 },	-- Bloodpetal Thresher
						}),
					},
				}),
				q(3961, {	-- Linken's Adventure
					["providers"] = {
						{ "n", 9117 },	-- J.D. Collie
						{ "i", 11522 },	-- Silver Totem of Aquementas
					},
					["sourceQuest"] = 4005,	-- Aquementas
					["coord"] = { 41.8, 2.6, UNGORO_CRATER },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 47,
				}),
				q(3942, {	-- Linken's Memory
					["qg"] = 9117,	-- J.D. Collie
					["sourceQuest"] = 3941,	-- A Gnome's Assistance
					["coord"] = { 41.8, 2.6, UNGORO_CRATER },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { FELWOOD },
					["lvl"] = 47,
				}),
				q(24734, {	-- Lost!
					["qg"] = 9997,	-- Spraggle Frock
					["sourceQuests"] = {
						24742,	-- Finding the Source
						24794,	-- Speak with Spraggle
					},
					["coord"] = { 54.9, 62.6, UNGORO_CRATER },
					["timeline"] = { ADDED_4_0_3 },
				}),
				q(4492, {	-- Lost!
					["providers"] = {
						{ "n", 9997 },	-- Spraggle Frock
						{ "i", 15722 },	-- Spraggle's Canteen
					},
					["coord"] = { 43.6, 8.5, UNGORO_CRATER },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 50,
				}),
				q(4321, {	-- Making Sense of It
					["qg"] = 9117,	-- J.D. Collie
					["sourceQuests"] = {
						4287,	-- The Eastern Pylon
						4285,	-- The Northern Pylon
						4288,	-- The Western Pylon
					},
					["coord"] = { 41.8, 2.6, UNGORO_CRATER },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 47,
					["groups"] = {
						i(11482),	-- Crystal Pylon User's Manual
					},
				}),
				q(24701, {	-- Marshal's Refuse
					["qg"] = 38277,	-- Doreen
					["sourceQuest"] = 24693,	-- Mossy Pile
					["coord"] = { 43.2, 40.9, UNGORO_CRATER },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/10 Discarded Supplies
							["providers"] = {
								{ "i", 50443 },	-- Discarded Supplies
								{ "o", 202158 },	-- Discarded Supplies
								{ "o", 202159 },	-- Discarded Supplies
								{ "o", 202160 },	-- Discarded Supplies
							},
						}),
						i(53580, {	-- Doreen's Wand
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(53581, {	-- Abandoned Leggings
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(53582, {	-- Discarded Bracers
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(4147, {	-- Marvon's Workshop
					["qg"] = 9118,	-- Larion
					["sourceQuest"] = 4145,	-- Larion and Muigin
					["coord"] = { 45.6, 8.6, UNGORO_CRATER },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 47,
				}),
				q(3912, {	-- Meet at the Grave
					["providers"] = {
						{ "n", 9298 },	-- Donova Snowden
						{ "i", 11136 },	-- Linken's Tempered Sword
					},
					["sourceQuest"] = 3909,	-- The Videre Elixir
					["coord"] = { 31.2, 45.2, WINTERSPRING },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = {{ "i", 11243, 1 }},	-- Videre Elixir
					["lvl"] = 47,
				}),
				q(24693, {	-- Mossy Pile
					["qg"] = 10977,	-- Quixxil
					["sourceQuest"] = 24691,	-- Peculiar Delicacies
					["coord"] = { 54.8, 63.8, UNGORO_CRATER },
					["description"] = "After completing this quest you won't be able to pick up |cFFFFD700Speak With Spraggle|r breadcrumb.",
					["timeline"] = { ADDED_4_0_3 },
				}),
				q(4141, {	-- Muigin and Larion
					["qg"] = 9119,	-- Muigin
					["coord"] = { 42.9, 9.6, UNGORO_CRATER },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 47,
					["groups"] = {
						objective(1, {	-- 0/15 Bloodpetal
							["provider"] = { "i", 11316 },	-- Bloodpetal
							["crs"] = {
								6510,	-- Bloodpetal Flayer
								6511,	-- Bloodpetal Thresher
								6509,	-- Bloodpetal Lasher
								6512,	-- Bloodpetal Trapper
							},
						}),
					},
				}),
				q(24691, {	-- Peculiar Delicacies
					["qg"] = 10977,	-- Quixxil
					["sourceQuest"] = 24690,	-- Blazerunner
					["coord"] = { 54.8, 63.8, UNGORO_CRATER },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/96 Silithid Leg
							["provider"] = { "i", 50371 },	-- Silithid Leg
							["crs"] = {
								6551,	-- Gorishi Wasp
								6552,	-- Gorishi Worker
								6553,	-- Gorishi Reaver
								6554,	-- Gorishi Stinger
								6555,	-- Gorishi Tunneler
								6582,	-- Clutchmother Zavas
								38305,	-- Gorishi Fledgling Colossus
							},
						}),
					},
				}),
				q(13904, {	-- Poached, Scrambled, Or Raw?
					["providers"] = {
						{ "n", 34320 },	-- Venomhide Hatchling
						{ "i", 46362 },	-- Venomhide Hatchling
					},
					["altQuests"] = { 13916 },	-- Poached, Scrambled, Or Raw? (Undead, Troll, Tauren version until MOP)
					["timeline"] = { ADDED_3_2_0 },
					["races"] = HORDE_ONLY,
					["isDaily"] = true,
					["lvl"] = lvlsquish(48, 48, 15),
					["groups"] = {
						objective(1, {	-- 0/12 Silithid Egg fed to Venomhide Hatchling
							["providers"] = {
								{ "i",  46382 },	-- Silithid Egg
								{ "o", 195037 },	-- Silithid Egg
							},
						}),
						i(47196, {	-- Venomhide Baby Tooth
							["timeline"] = { ADDED_3_2_0 },
						}),
					},
				}),
				-- #if NOT ANYCLASSIC
				q(13916, {	-- Poached, Scrambled, Or Raw?
					["providers"] = {
						{ "n", 34320 },	-- Venomhide Hatchling
						{ "i", 46362 },	-- Venomhide Hatchling
					},
					["timeline"] = { ADDED_3_2_0, REMOVED_5_0_4 },
					["races"] = { UNDEAD, TROLL, TAUREN },
					["isDaily"] = true,
					["lvl"] = lvlsquish(48, 48, 15),
					["groups"] = {
						objective(1, {	-- 0/12 Silithid Egg fed to Venomhide Hatchling
							["providers"] = {
								{ "i",  46382 },	-- Silithid Egg
								{ "o", 195037 },	-- Silithid Egg
							},
						}),
						i(47196, {	-- Venomhide Baby Tooth
							["timeline"] = { ADDED_3_2_0 },
						}),
					},
				}),
				-- #endif
				q(24715, {	-- Repairing A-Me 01
					["qg"] = 9623,	-- A-Me 01
					["sourceQuest"] = 24714,	-- Chasing A-Me 01
					["coord"] = { 63.8, 19.7, UNGORO_CRATER },
					["timeline"] = { ADDED_4_0_3 },
				}),
				q(45051, {	-- Reverse Blacksmithing
					["qg"] = 115923,	-- Ko'Zan
					["sourceQuest"] = 45044,	-- Weapon No More
					["coord"] = { 43.6, 41.4, UNGORO_CRATER },
					["timeline"] = { ADDED_7_2_0 },
					["requireSkill"] = BLACKSMITHING,
				}),
				q(24730, {	-- Roll the Bones
					["qg"] = 9272,	-- Spark Nilminer
					["sourceQuest"] = 24698,	-- Adventures in Archaeology
					["coord"] = { 31.8, 50.2, UNGORO_CRATER },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/8 Dinosaur Bone
							["provider"] = { "i", 11114 },	-- Dinosaur Bone
							["crs"] = {
								6501,	-- Stegodon
								6502,	-- Plated Stegodon
								6503,	-- Spiked Stegodon
								6504,	-- Thunderstomp Stegodon
								9162,	-- Young Diemetradon
								9163,	-- Diemetradon
								9164,	-- Elder Diemetradon
							},
						}),
						i(53585, {	-- Archaeologist's Utility Boots
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(53586, {	-- Excavator's Quarry Belt
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(3882, {	-- Roll the Bones
					["qg"] = 9272,	-- Spark Nilminer
					["coord"] = { 43.6, 7.4, UNGORO_CRATER },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 49,
					["groups"] = {
						objective(1, {	-- 0/8 Dinosaur Bone
							["providers"] = {
								{ "i",  11114 },	-- Dinosaur Bone
								{ "o", 161527 },	-- Dinosaur Bone
							},
							["crs"] = {
								9162,	-- Young Diemetradon
								9163,	-- Diemetradon
								9164,	-- Elder Diemetradon
								6502,	-- Plated Stegodon
								6501,	-- Stegodon
								6504,	-- Thunderstomp Stegodon
							},
						}),
						i(11908, {	-- Archaeologist's Quarry Boots
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(11909, {	-- Excavator's Utility Belt
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(45057, {	-- Saving My Head
					["qg"] = 115923,	-- Ko'Zan
					["sourceQuest"] = 45055,	-- A Taste of Their Own Medicine
					["coord"] = { 43.6, 41.4, UNGORO_CRATER },
					["timeline"] = { ADDED_7_2_0 },
					["requireSkill"] = BLACKSMITHING,
					["groups"] = {
						i(142383, {	-- Plans: Darkspear (RECIPE!)
							["timeline"] = { ADDED_7_1_5 },
						}),
					},
				}),
				q(13905, {	-- Searing Roc Feathers
					["providers"] = {
						{ "n", 34320 },	-- Venomhide Hatchling
						{ "i", 46362 },	-- Venomhide Hatchling
					},
					["altQuests"] = { 13914 },	-- Searing Roc Feathers (Undead, Troll, Tauren version until MOP)
					["timeline"] = { ADDED_3_2_0 },
					["maps"] = { TANARIS },
					["races"] = HORDE_ONLY,
					["isDaily"] = true,
					["lvl"] = lvlsquish(48, 48, 15),
					["groups"] = {
						objective(1, {	-- 0/5 Searing Roc Plumage
							["provider"] = { "i", 46381 },	-- Searing Roc Plumage
							["cr"] = 5430,	-- Searing Roc
						}),
						i(47196, {	-- Venomhide Baby Tooth
							["timeline"] = { ADDED_3_2_0 },
						}),
					},
				}),
				-- #if NOT ANYCLASSIC
				q(13914, {	-- Searing Roc Feathers
					["providers"] = {
						{ "n", 34320 },	-- Venomhide Hatchling
						{ "i", 46362 },	-- Venomhide Hatchling
					},
					["timeline"] = { ADDED_3_2_0, REMOVED_5_0_4 },
					["maps"] = { TANARIS },
					["races"] = { UNDEAD, TROLL, TAUREN },
					["isDaily"] = true,
					["lvl"] = lvlsquish(48, 48, 15),
					["groups"] = {
						objective(1, {	-- 0/5 Searing Roc Plumage
							["provider"] = { "i", 46381 },	-- Searing Roc Plumage
							["cr"] = 5430,	-- Searing Roc
						}),
						i(47196, {	-- Venomhide Baby Tooth
							["timeline"] = { ADDED_3_2_0 },
						}),
					},
				}),
				-- #endif
				q(24926, {	-- Serving A-Me 01
					["qg"] = 9623,	-- A-Me 01
					["sourceQuest"] = 24715,	-- Repairing A-Me 01
					["coord"] = { 63.8, 19.7, UNGORO_CRATER },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						i(53571, {	-- Karna's Poncho
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(53572, {	-- Remtravel Thinking Cap
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(53573, {	-- Artificial Gorilla Chest
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(24736, {	-- Shizzle's Flyer
					["qg"] = 9998,	-- Shizzle
					["coord"] = { 43.4, 41.3, UNGORO_CRATER },
					["description"] = "Picking up or completing this quest will make |cFFFFD700Speak with Spraggle|r unavailable, making its quest chain and rewards unobtainable.",
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/35 Webbed Pterrordax Scale
							["provider"] = { "i", 11831 },	-- Webbed Pterrordax Scale
							["crs"] = {
								9165,	-- Fledgling Pterrordax
								9166,	-- Pterrordax
								9167,	-- Frenzied Pterrordax
							},
						}),
						i(53589, {	-- Shizzle's Nozzle Cleaner
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(53590, {	-- Shizzle's Muzzle Cover
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(53591, {	-- Shizzle's Drizzle Stopper
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(4503, {	-- Shizzle's Flyer
					["qg"] = 9998,	-- Shizzle
					["coord"] = { 44.2, 11.6, UNGORO_CRATER },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 49,
					["groups"] = {
						objective(1, {	-- 0/8 Webbed Diemetradon Scale
							["provider"] = { "i", 11830 },	-- Webbed Diemetradon Scale
							["crs"] = {
								9162,	-- Young Diemetradon
								9163,	-- Diemetradon
								9164,	-- Elder Diemetradon
							},
						}),
						objective(2, {	-- 0/8 Webbed Pterrordax Scale
							["provider"] = { "i", 11831 },	-- Webbed Pterrordax Scale
							["crs"] = {
								9165,	-- Fledgling Pterrordax
								9166,	-- Pterrordax
								9167,	-- Frenzied Pterrordax
							},
						}),
						i(11915, {	-- Shizzle's Drizzle Blocker
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(11916, {	-- Shizzle's Muzzle
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(11917, {	-- Shizzle's Nozzle Wiper
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(24794, {	-- Speak With Spraggle
					["qg"] = 10302,	-- Krakle
					["sourceQuest"] = 24742,	-- Finding the Source
					["coord"] = { 55.3, 62.4, UNGORO_CRATER },
					["description"] = "This quest won't be available if you complete |cFFFFD700Shizzle's Flyer|r first.",
					["timeline"] = { ADDED_4_0_3 },
					["isBreadcrumb"] = true,
				}),
				q(24737, {	-- Super Sticky
					["qg"] = 38276,	-- Tara
					["sourceQuest"] = 24693,	-- Mossy Pile
					["coord"] = { 43.2, 40.8, UNGORO_CRATER },
					["timeline"] = { ADDED_4_0_3 },
				}),
				q(24717, {	-- The Apes of Un'Goro
					["qg"] = 38275,	-- Gremix
					["sourceQuest"] = 24701,	-- Marshal's Refuse
					["coord"] = { 43.2, 41.0, UNGORO_CRATER },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/2 Un'Goro Gorilla Pelt
							["provider"] = { "i", 11478 },	-- Un'Goro Gorilla Pelt
							["cr"] = 6514,	-- Un'Goro Gorilla
						}),
						objective(2, {	-- 0/2 Un'Goro Stomper Pelt
							["provider"] = { "i", 11479 },	-- Un'Goro Stomper Pelt
							["cr"] = 6513,	-- Un'Goro Stomper
						}),
						objective(3, {	-- 0/2 Un'Goro Thunderer Pelt
							["provider"] = { "i", 11480 },	-- Un'Goro Thunderer Pelt
							["cr"] = 6516,	-- Un'Goro Thunderer
						}),
					},
				}),
				q(4289, {	-- The Apes of Un'Goro
					["qg"] = 9619,	-- Torwa Pathfinder
					["coord"] = { 71.6, 76.0, UNGORO_CRATER },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 47,
					["groups"] = {
						objective(1, {	-- 0/2 Un'Goro Gorilla Pelt
							["provider"] = { "i", 11478 },	-- Un'Goro Gorilla Pelt
							["cr"] = 6514,	-- Un'Goro Gorilla
						}),
						objective(2, {	-- 0/2 Un'Goro Stomper Pelt
							["provider"] = { "i", 11479 },	-- Un'Goro Stomper Pelt
							["cr"] = 6513,	-- Un'Goro Stomper
						}),
						objective(3, {	-- 0/2 Un'Goro Thunderer Pelt
							["provider"] = { "i", 11480 },	-- Un'Goro Thunderer Pelt
							["cr"] = 6516,	-- Un'Goro Thunderer
						}),
					},
				}),
				q(24733, {	-- The Bait for Lar'korwi
					["qg"] = 9619,	-- Torwa Pathfinder
					["sourceQuest"] = 24732,	-- The Scent of Lar'korwi
					["coord"] = { 71.2, 76.5, UNGORO_CRATER },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/1 Lar'korwi's Head
							["provider"] = { "i", 11510 },	-- Lar'korwi's Head
							["cr"] = 9684,	-- Lar'korwi
						}),
						i(53587, {	-- Plainstalker Vest
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(53588, {	-- Outrider Chainmail
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(4292, {	-- The Bait for Lar'korwi
					["providers"] = {
						{ "n", 9619 },	-- Torwa Pathfinder
						{ "i", 11568 },	-- Torwa's Pouch
					},
					["sourceQuest"] = 4291,	-- The Scent of Lar'korwi
					["coord"] = { 71.6, 76.0, UNGORO_CRATER },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 48,
					["groups"] = {
						objective(1, {	-- 0/1 Lar'korwi's Head
							["providers"] = {
								{ "i", 11510 },	-- Lar'korwi's Head
								{ "i", 11570 },	-- Preserved Pheromone Mixture
								{ "i", 11569 },	-- Preserved Threshadon Meat
							},
							["coord"] = { 79.9, 49.9, UNGORO_CRATER },
							["cr"] = 9684,	-- Lar'korwi
						}),
						i(11876, {	-- Plainstalker Tunic
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(11882, {	-- Outrider Leggings
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(24707, {	-- The Ballad of Maximillian
					["qgs"] = {
						38237,	-- Maximillian of Northshire
						38343,	-- Maximillian of Northshire
					},
					["sourceQuest"] = 24706,	-- The Spirits of Golakka Hot Springs
					["coord"] = { 30.6, 51.1, UNGORO_CRATER },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/1 Un'Goro's Broodmother slain
							["provider"] = { "n", 38708 },	-- Devilsaur Queen
						}),
						i(53597, {	-- Toy Windmill
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(53598, {	-- Maximillian's Shield
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(53599, {	-- Sword of Northshire
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(24721, {	-- The Eastern Pylon
					["qg"] = 38263,	-- Ithis Moonwarden
					["sourceQuest"] = 24855,	-- Aberrant Flora
					["coord"] = { 76.4, 48.3, UNGORO_CRATER },
					["timeline"] = { ADDED_4_0_3 },
				}),
				q(4287, {	-- The Eastern Pylon
					["qg"] = 9117,	-- J.D. Collie
					["sourceQuest"] = 4284,	-- Crystals of Power
					["coord"] = { 41.8, 2.6, UNGORO_CRATER },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 47,
					["groups"] = {
						objective(1, {	-- Discover and examine the Eastern Crystal Pylon
							["provider"] = { "o", 164957 },	-- Eastern Crystal Pylon
							["coord"] = { 77.2, 50.0, UNGORO_CRATER },
						}),
					},
				}),
				q(24704, {	-- The Evil Dragons of Un'Goro Crater
					["providers"] = {
						{ "n", 38237 },	-- Maximillian of Northshire
						{ "n", 38255 },	-- Maximillian of Northshire
					},
					["sourceQuest"] = 24703,	-- An Important Lesson
					["coord"] = { 30.6, 51.1, UNGORO_CRATER },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/15 "Dragon" slain
							["providers"] = {
								{ "n", 38252},	-- "Dragon"
								{ "n", 6498},	-- Devilsaur
								{ "n", 6499},	-- Ironhide Devilsaur
								{ "n", 6500},	-- Tyrant Devilsaur
								{ "n", 6501},	-- Stegodon
								{ "n", 6502},	-- Plated Stegodon
								{ "n", 6503},	-- Spiked Stegodon
								{ "n", 6504},	-- Thunderstomp Stegodon
								{ "n", 6505},	-- Ravasaur
								{ "n", 6506},	-- Ravasaur Runner
								{ "n", 6507},	-- Ravasaur Hunter
								{ "n", 6508},	-- Venomhide Ravasaur
								{ "n", 6581},	-- Ravasaur Matriarch
								{ "n", 6583},	-- Gruff
								{ "n", 6584},	-- King Mosh
								{ "n", 9162},	-- Young Diemetradon
								{ "n", 9163},	-- Diemetradon
								{ "n", 9164},	-- Elder Diemetradon
								{ "n", 9165},	-- Fledgling Pterrordax
								{ "n", 9166},	-- Pterrordax
								{ "n", 9167},	-- Frenzied Pterrordax
								{ "n", 9683},	-- Lar'korwi Mate
								{ "n", 9684},	-- Lar'korwi
								{ "n", 38509},	-- Illusory Pterrordax
								{ "n", 46291},	-- And a Dinosaur
								{ "n", 46691},	-- And a Dinosaur - Hologram
							},
						}),
					},
				}),
				q(24731, {	-- The Fare of Lar'korwi
					["qg"] = 9619,	-- Torwa Pathfinder
					["coord"] = { 71.2, 76.5, UNGORO_CRATER },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/1 Piece of Threshadon Carcass
							["providers"] = {
								{ "i", 11504 },	-- Piece of Threshadon Carcass
								{ "o", 166863 },	-- Fresh Threshadon Carcass
							},
						}),
					},
				}),
				q(4290, {	-- The Fare of Lar'korwi
					["qg"] = 9619,	-- Torwa Pathfinder
					["coord"] = { 71.6, 76.0, UNGORO_CRATER },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 48,
					["groups"] = {
						objective(1, {	-- 0/1 Piece of Threshadon Carcass
							["providers"] = {
								{ "i",  11504 },	-- Piece of Threshadon Carcass
								{ "o", 166863 },	-- Fresh Threshadon Carcass
							},
							["coord"] = { 68.7, 56.7, UNGORO_CRATER },
						}),
					},
				}),
				q(24692, {	-- The Fledgling Colossus
					["qg"] = 9271,	-- Hol'anyee Marshal
					["sourceQuest"] = 24690,	-- Blazerunner
					["coord"] = { 55.0, 62.2, UNGORO_CRATER },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/1 Gorishi Fledgling Colossus slain
							["provider"] = { "n", 38305 },	-- Gorishi Fledgling Colossus
						}),
						i(53577, {	-- Bud-Nipping Bracers
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(53578, {	-- Colossal Treads
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(53579, {	-- Silithid Scale Gloves
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(24708, {	-- The Fossil-Finder 3000
					["qg"] = 9272,	-- Spark Nilminer
					["sourceQuest"] = 24730,	-- Roll the Bones
					["coord"] = { 31.8, 50.2, UNGORO_CRATER },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/1 Enormous Dinosaur Talon
							["providers"] = {
								{ "i", 50407 },	-- Enormous Dinosaur Talon
								{ "o", 202165 },	-- Suspicious Mound of Dirt
							},
						}),
					},
				}),
				q(24718, {	-- The Mighty U'cha
					["qg"] = 38275,	-- Gremix <Treasure Hunter>
					["sourceQuest"] = 24701,	-- Marshal's Refuse
					["description"] = "This quest should pop up when you enter the Fungal Rock cave during The Apes of Un'Goro.",
					["coord"] = { 43.2, 41.6, UNGORO_CRATER },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/1 U'cha's Pelt
							["provider"] = { "i", 11476 },	-- U'cha's Pelt
							["cr"] = 9622,	-- U'cha
						}),
						i(53583, {	-- Beast Clobberer
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(53584, {	-- Beastkiller
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(156995, {	-- Beastflayer
							["timeline"] = { ADDED_7_3_5 },
						}),
					},
				}),
				q(4301, {	-- The Mighty U'cha
					["qg"] = 9619,	-- Torwa Pathfinder
					["sourceQuest"] = 4289,	-- The Apes of Un'Goro
					["coord"] = { 71.6, 76.0, UNGORO_CRATER },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 50,
					["groups"] = {
						objective(1, {	-- 0/1 U'cha's Pelt
							["provider"] = { "i", 11476 },	-- U'cha's Pelt
							["coord"] = { 68.6, 14.6, UNGORO_CRATER },
							["cr"] = 9622,	-- U'cha
						}),
						i(11906, {	-- Beastsmasher
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(11907, {	-- Beastslayer
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(980, {	-- The New Springs
					["qg"] = 10302,	-- Krakle
					["sourceQuest"] = 974,	-- Finding the Source
					["coord"] = { 30.8, 50.4, UNGORO_CRATER },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { WINTERSPRING },
					["lvl"] = 51,
				}),
				q(24722, {	-- The Northern Pylon
					["qg"] = 38275,	-- Gremix
					["sourceQuest"] = 24717,	-- The Apes of Un'Goro
					["coord"] = { 43.2, 41.1, UNGORO_CRATER },
					["timeline"] = { ADDED_4_0_3 },
				}),
				q(4285, {	-- The Northern Pylon
					["qg"] = 9117,	-- J.D. Collie
					["sourceQuest"] = 4284,	-- Crystals of Power
					["coord"] = { 41.8, 2.6, UNGORO_CRATER },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 47,
					["groups"] = {
						objective(1, {	-- Discover and examine the Northern Crystal Pylon
							["provider"] = { "o", 164955 },	-- Northern Crystal Pylon
							["coord"] = { 56.6, 12.5, UNGORO_CRATER },
						}),
					},
				}),
				q(24732, {	-- The Scent of Lar'korwi
					["qg"] = 9619,	-- Torwa Pathfinder
					["sourceQuest"] = 24731,	-- The Fare of Lar'korwi
					["coord"] = { 71.2, 76.5, UNGORO_CRATER },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/2 Ravasaur Pheromone Gland
							["provider"] = { "i", 11509 },	-- Ravasaur Pheromone Gland
							["cr"] = 9683,	-- Lar'korwi Mate
						}),
					},
				}),
				q(4291, {	-- The Scent of Lar'korwi
					["qg"] = 9619,	-- Torwa Pathfinder
					["sourceQuest"] = 4290,	-- The Fare of Lar'korwi
					["coord"] = { 71.6, 76.0, UNGORO_CRATER },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 48,
					["groups"] = {
						objective(1, {	-- 0/2 Ravasaur Pheromone Gland
							["provider"] = { "i", 11509  },	-- Ravasaur Pheromone Gland
							["cr"] = 9683,	-- Lar'korwi Mate
						}),
					},
				}),
				q(24694, {	-- The Shaper's Terrace
					["qg"] = 38504,	-- Un'Goro Examinant
					["sourceQuests"] = {
						24720,	-- Crystals of Power (Reported on Discord 16-Feb-2024)
						24721,	-- The Eastern Pylon
						24722,	-- The Northern Pylon
						24723,	-- The Western Pylon
					},
					["coord"] = { 53.8, 62.5, UNGORO_CRATER },
					["timeline"] = { ADDED_4_0_3 },
				}),
				q(24706, {	-- The Spirits of Golakka Hot Springs
					["qgs"] = {
						38255,	-- Maximillian of Northshire
						38237,	-- Maximillian of Northshire
					},
					["sourceQuests"] = {
						24705,	-- Town Dwellers Were Made to be Saved
						24704,	-- The Evil Dragons of Un'Goro Crater
					},
					["timeline"] = { ADDED_4_0_3 },
					["description"] = "Engage, but do not kill Steaming Fury until Maximillian finished his prayer.",
					["groups"] = {
						objective(1, {	-- 0/2 Prayers
							["provider"] = { "n", 38254 },	-- Steaming Fury
						}),
					},
				}),
				q(3909, {	-- The Videre Elixir
					["qg"] = 9298,	-- Donova Snowden
					["sourceQuest"] = 3908,	-- It's a Secret to Everybody
					["coord"] = { 31.2, 45.2, WINTERSPRING },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { FERALAS },
					["lvl"] = 47,
					["groups"] = {
						q(4041, {	-- The Videre Elixir
							["providers"] = {
								{ "n", 7775 },	-- Gregan Brewspewer
								{ "i",  11242 },	-- Evoroot
								{ "o", 164798 },	-- Evoroot
							},
							["coords"] = {
								{ 45.1, 25.6, FERALAS },
								{ 44, 11, FERALAS },
							},
							["timeline"] = { REMOVED_4_0_3 },
							["repeatable"] = true,
							["groups"] = {
								objective(1, {	-- 0/1 Videre Elixir
									["questID"] = 3909,	-- The Videre Elixir
									["provider"] = { "i", 11243 },	-- Videre Elixir
								}),
							},
						}),
					},
				}),
				q(24723, {	-- The Western Pylon
					["qg"] = 9272,	-- Spark Nilminer
					["sourceQuest"] = 24709,	-- A Tale of Two Shovels
					["coord"] = { 31.8, 50.2, UNGORO_CRATER },
					["timeline"] = { ADDED_4_0_3 },
				}),
				q(4288, {	-- The Western Pylon
					["qg"] = 9117,	-- J.D. Collie
					["sourceQuest"] = 4284,	-- Crystals of Power
					["coord"] = { 41.8, 2.6, UNGORO_CRATER },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 47,
					["groups"] = {
						objective(1, {	-- Discover and examine the Western Crystal Pylon
							["provider"] = { "o", 164956 },	-- Western Crystal Pylon
							["coord"] = { 23.8, 59.1, UNGORO_CRATER },
						}),
					},
				}),
				q(13906, {	-- They Grow Up So Fast
					["qg"] = 11701,	-- Mor'vek <Ravasaur Trainers>
					["sourceQuest"] = 13887,	-- Venomhide Eggs
					["coord"] = { 71.4, 73.8, UNGORO_CRATER },
					["timeline"] = { ADDED_3_2_0 },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 47196, 20 },	-- Venomhide Baby Tooth
						{ "i", 14047, 20 },	-- Runecloth
						{ "i", 8170, 20 },	-- Rugged Leather
						{ "g", 800000 },	-- 80g
					},
					["lvl"] = lvlsquish(48, 48, 15),
					["groups"] = {
						ach(3357, {	-- Venomhide Ravasaur
							["provider"] = { "i", 46102 },	-- Whistle of the Venomhide Ravasaur
							["timeline"] = { ADDED_3_2_0 },
							["races"] = HORDE_ONLY,
							["f"] = MOUNTS,
						}),
						i(46102, {	-- Venomhide Ravasaur (MOUNT!)
							["timeline"] = { ADDED_3_2_0 },
							["races"] = HORDE_ONLY,
						}),
					},
				}),
				applyclassicphase(PHASE_FOUR_SUNKEN_TEMPLE_CLASS_QUESTS, q(9063, {	-- Torwa Pathfinder
					["qgs"] = {
						4218,	-- Denatharion <Druid Trainer>
						12042,	-- Loganaar <Druid Trainer>
						3033,	-- Turak Runetotem <Druid Trainer>
					},
					["coords"] = {
						{ 34.8, 8.6, DARNASSUS },
						{ 52.4, 40.6, MOONGLADE },
						{ 76.6, 27.6, THUNDER_BLUFF },
					},
					["timeline"] = { REMOVED_4_0_3 },
					["classes"] = { DRUID },
					["lvl"] = 50,
				})),
				applyclassicphase(PHASE_FOUR_SUNKEN_TEMPLE_CLASS_QUESTS, q(9051, {	-- Toxic Test
					["qg"] = 9619,	-- Torwa Pathfinder
					["sourceQuest"] = 9052,	-- Bloodpetal Poison
					["coord"] = { 71.6, 76.0, UNGORO_CRATER },
					["timeline"] = { REMOVED_4_0_3 },
					["classes"] = { DRUID },
					["lvl"] = 50,
					["groups"] = {
						objective(1, {	-- Devilsaur stabbed with barb
							["provider"] = { "i", 22432 },	-- Devilsaur Barb
							["cr"] = 6498,	-- Devilsaur
						}),
					},
				})),
				q(13850, {	-- Toxic Tolerance
					["qg"] = 11701,	-- Mor'vek
					["coord"] = { 71.5, 73.9, UNGORO_CRATER },
					["timeline"] = { ADDED_3_2_0 },
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(48, 48, 15),
					["groups"] = {
						objective(1, {	-- 0/20 Splashed with Venomhide blood
							["provider"] = { "n", 6508 },	-- Venomhide Ravasaur
						}),
					},
				}),
				q(24705, {	-- Town Dwellers Were Made to be Saved
					["providers"] = {
						{ "n", 38255 },	-- Maximillian of Northshire
						{ "n", 38237 },	-- Maximillian of Northshire
					},
					["sourceQuest"] = 24703,	-- An Important Lesson
					["coord"] = { 30.6, 51.1, UNGORO_CRATER },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/1 Damsel by the Shore saved
							["provider"] = { "n", 38238 },	-- Damsel by the Shore
						}),
						objective(2, {	-- 0/1 Damsel in the Cliffs saved
							["provider"] = { "n", 38239 },	-- Damsel in the Cliffs
						}),
						objective(3, {	-- 0/1 Damsel of the North saved
							["provider"] = { "n", 38240 },	-- Damsel of the North
						}),
					},
				}),
				q(24911, {	-- Tropical Paradise Beckons
					["providers"] = {
						{ "n", 38578 },	-- Flinn
						{ "n", 44374 },	-- Sherm
					},
					["coords"] = {
						{ 33.2, 76.8, TANARIS },
						{ 40.3, 77.2, TANARIS },
					},
					["timeline"] = { ADDED_4_0_3 },
					["isBreadcrumb"] = true,
				}),
				q(13887, {	-- Venomhide Eggs
					["qg"] = 11701,	-- Mor'vek
					["sourceQuest"] = 13850,	-- Toxic Tolerance
					["coord"] = { 71.5, 73.9, UNGORO_CRATER },
					["timeline"] = { ADDED_3_2_0 },
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(48, 48, 15),
					["groups"] = {
						objective(1, {	-- 0/4 Venomhide Ravasaur Egg
							["providers"] = {
								{ "i",  46364 },	-- Venomhide Ravasaur Egg
								{ "o", 195022 },	-- Venomhide Egg
							},
							["coord"] = { 67.0, 62.5, UNGORO_CRATER },
						}),
					},
				}),
				q(24740, {	-- Volcanic Activity
					["qg"] = 9270,	-- Williden Marshal
					["sourceQuests"] = {
						28525,	-- Hero's Call: Un'Goro Crater!
						28526,	-- Warchief's Command: Un'Goro Crater!
						24911,	-- Tropical Paradise Beckons
					},
					["coord"] = { 55.0, 62.2, UNGORO_CRATER },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/9 Un'Goro Ash
							["provider"] = { "i", 11829 },	-- Un'Goro Ash
							["crs"] = {
								6520,	-- Scorching Elemental
								6521,	-- Living Blaze
								9376,	-- Blazerunner
								14460,	-- Blazing Invader
								14461,	-- Baron Charr
							},
						}),
					},
				}),
				q(4502, {	-- Volcanic Activity
					["qg"] = 8496,	-- Liv Rizzlefix
					["coord"] = { 62.4, 38.6, THE_BARRENS },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 49,
					["groups"] = {
						objective(1, {	-- 0/9 Un'Goro Ash
							["provider"] = { "i", 11829 },	-- Un'Goro Ash
							["crs"] = {
								6520,	-- Scorching Elemental
								6521,	-- Living Blaze
								14460,	-- Blazing Invader
							},
						}),
					},
				}),
				warchiefscommand(q(28526, {	-- Warchief's Command: Un'Goro Crater!
					["timeline"] = { ADDED_4_0_3 },
					["maps"] = { ORGRIMMAR, THUNDER_BLUFF },	-- Only found in Orgrimmar & Thunder Bluff in Cataclysm.
					["isBreadcrumb"] = true,
					-- #if BEFORE 7.3.5
					-- Cataclysm: Minimum is level 49. (TODO: Confirm this.)
					-- Cataclysm: Maximum is level 53. (TODO: Test max level)
					["lvl"] = { 49, 53 },
					-- #endif
				})),
				q(45044, {	-- Weapon No More
					["provider"] = { "i", 142377 },	-- Badly Broken Dark Spear
					["timeline"] = { ADDED_7_2_0 },
					["requireSkill"] = BLACKSMITHING,
				}),
				q(3884, {	-- Williden's Journal
					["provider"] = { "i", 11116 },	-- A Mangled Journal
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 48,
				}),
			}),
			n(RARES, {
				n(14461, {	-- Baron Charr
					-- TODO: Move this to an Elemental Invasion World Event file.
					["description"] = "This is only available during an Elemental Invasion.",
					["coords"] = {
						{ 44.6, 46.0, UNGORO_CRATER },
						{ 48.2, 41.2, UNGORO_CRATER },
						{ 53.2, 41.8, UNGORO_CRATER },
						{ 56.6, 42.8, UNGORO_CRATER },
						{ 56.6, 48.2, UNGORO_CRATER },
						{ 55.6, 57.4, UNGORO_CRATER },
						{ 51.6, 57.6, UNGORO_CRATER },
						{ 45.4, 54.8, UNGORO_CRATER },
					},
					["timeline"] = { REMOVED_4_0_3 },
					["groups"] = {
						i(18671, {	-- Baron Charr's Sceptre
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(18672, {	-- Elemental Ember
							["timeline"] = { REMOVED_4_0_3 },
						}),
						-- #if BEFORE 4.0.3
						applyclassicphase(PHASE_THREE_DMF_CARDS, i(19268)),	-- Ace of Elementals
						-- #endif
					},
				}),
				n(6582, {	-- Clutchmother Zavas
					["coords"] = {
						-- #if AFTER CATA
						{ 48.8, 85.0, UNGORO_CRATER },
						-- #else
						{ 44.6, 81.6, UNGORO_CRATER },
						{ 46.8, 86.0, UNGORO_CRATER },
						{ 49.2, 85.6, UNGORO_CRATER },
						{ 49.6, 83.6, UNGORO_CRATER },
						-- #endif
					},
				}),
				n(6583, {	-- Gruff
					["coords"] = {
						-- #if AFTER CATA
						{ 32.0, 78.6, UNGORO_CRATER },
						{ 33.0, 79.4, UNGORO_CRATER },
						-- #else
						{ 36.6, 66.6, UNGORO_CRATER },
						{ 37.8, 75.0, UNGORO_CRATER },
						{ 31.8, 72.2, UNGORO_CRATER },
						{ 31.6, 79.6, UNGORO_CRATER },
						-- #endif
					},
					["groups"] = {
						i(45052, {	-- Gruffscale Leggings
							["timeline"] = { ADDED_3_1_0, REMOVED_4_0_3, ADDED_8_0_1 },
						}),
					},
				}),
				n(6584, {	-- King Mosh
					["coords"] = {
						-- #if AFTER CATA
						{ 29.6, 45.8, UNGORO_CRATER },
						{ 29.0, 36.8, UNGORO_CRATER },
						{ 30.0, 35.6, UNGORO_CRATER },
						{ 32.6, 36.6, UNGORO_CRATER },
						{ 34.4, 38.0, UNGORO_CRATER },
						{ 35.6, 35.8, UNGORO_CRATER },
						{ 37.0, 33.8, UNGORO_CRATER },
						{ 37.0, 31.4, UNGORO_CRATER },
						{ 32.0, 31.0, UNGORO_CRATER },
						{ 30.8, 31.8, UNGORO_CRATER },
						{ 33.4, 29.4, UNGORO_CRATER },
						-- #else
						{ 27.8, 45.0, UNGORO_CRATER },
						{ 30.8, 47.6, UNGORO_CRATER },
						{ 28.8, 34.4, UNGORO_CRATER },
						{ 29.8, 31.6, UNGORO_CRATER },
						{ 35.3, 36.0, UNGORO_CRATER },
						{ 35.1, 30.3, UNGORO_CRATER },
						{ 37.9, 43.5, UNGORO_CRATER },
						-- #endif
					},
				}),
				n(6581, {	-- Ravasaur Matriarch
					-- #if AFTER CATA
					["coords"] = {
						{ 60.8, 72.8, UNGORO_CRATER },
						{ 66.4, 67.0, UNGORO_CRATER },
					},
					-- #else
					["coord"] = { 62.4, 66.0, UNGORO_CRATER },
					-- #endif
				}),
				o(202082, {	-- Ravasaur Matriarch's Nest
					["coords"] = {
						{ 68.9, 61.2, UNGORO_CRATER },
						{ 68.9, 66.9, UNGORO_CRATER },
						{ 63.0, 63.2, UNGORO_CRATER },
						{ 62.2, 65.3, UNGORO_CRATER },
						{ 62.0, 73.6, UNGORO_CRATER },
					},
					["timeline"] = { ADDED_3_2_0 },
					["groups"] = {
						i(48122, {	-- Ravasaur Hatchling (PET!)
							["timeline"] = { ADDED_3_2_0 },
						}),
					},
				}),
				n(6585, {	-- Uhk'loc
					["coords"] = {
						-- #if AFTER CATA
						{ 63.0, 18.6, UNGORO_CRATER },
						-- #else
						{ 68.5, 12.7, UNGORO_CRATER },
						-- #endif
					},
				}),
			}),
			prof(SKINNING, {
				["crs"] = {
					6498,	-- Devilsaur
					6499,	-- Ironhide Devilsaur
					6584,	-- King Mosh
					6500,	-- Tyrant Devilsaur
				},
				["groups"] = {
					i(15417),	-- Devilsaur Leather
				},
			}),
			n(VENDORS, {
				n(38561, {	-- Dramm Riverhorn <Light Armor Merchant>
					["coord"] = { 43.4, 41.6, UNGORO_CRATER },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						i(12707),	-- Plans: Runic Plate Boots (RECIPE!)
						i(12714),	-- Plans: Runic Plate Helm (RECIPE!)
						i(12719),	-- Plans: Runic Plate Leggings (RECIPE!)
						i(12706),	-- Plans: Runic Plate Shoulders (RECIPE!)
					},
				}),
				n(115923, {	-- Ko'Zan <Courier>
					["sourceQuest"] = 45057,	-- Saving My Head
					["coord"] = { 43.6, 41.4, UNGORO_CRATER },
					["description"] = "Vendor only sells plans to those who have completed the quest 'Saving My Head'.",
					["timeline"] = { ADDED_7_2_0 },
					["groups"] = {
						i(142383, {	-- Plans: Darkspear (RECIPE!)
							["timeline"] = { ADDED_7_1_5 },
						}),
					},
				}),
				n(12959, {	-- Nergal <General Goods Vendor> / <General Goods> [CATA+]
					["coords"] = {
						-- #if AFTER CATA
						{ 54.8, 62.6, UNGORO_CRATER },
						-- #else
						{ 43.2, 7.8, UNGORO_CRATER },
						-- #endif
					},
					["groups"] = {
						i(15758, {	-- Pattern: Devilsaur Gauntlets (RECIPE!)
							["isLimited"] = true,
						}),
						-- #if AFTER CATA
						i(15772, {	-- Pattern: Devilsaur Leggings (RECIPE!)
							["isLimited"] = true,
						}),
						-- #endif
					},
				}),
			}),
			n(ZONE_DROPS, {
				i(142377, {	-- Badly Broken Dark Spear
					["timeline"] = { ADDED_7_2_0 },
					["requireSkill"] = BLACKSMITHING,
					["crs"] = {
						9376,	-- Blazerunner
						6510,	-- Bloodpetal Flayer
						38346,	-- Devilsaur Queen
						9163,	-- Diemetradon
						38329,	-- Durrin Direshovel
						9164,	-- Elder Diemetradon
						9167,	-- Frenzied Pterrordax
						6553,	-- Gorishi Reaver
						6554,	-- Gorishi Stinger
						6555,	-- Gorishi Tunneler
					},
				}),
				i(11315, {	-- Bloodpetal Sprout
					["provider"] = { "o", 164958 },	-- Bloodpetal Sprout
				}),
				i(11184, {	-- Blue Power Crystal
					["provider"] = { "o", 164778 },	-- Blue Power Crystal
				}),
				i(11185, {	-- Green Power Crystal
					["provider"] = { "o", 164659 },	-- Green Power Crystal
				}),
				i(12809, {	-- Guardian Stone
					["cr"] = 6560,	-- Stone Guardian
				}),
				i(199092, {	-- Inert Phoenix Ash
					["timeline"] = { ADDED_10_0_7 },
					["crs"] = {
						6521,	-- Living Blaze
						6520,	-- Scorching Elemental
					},
					["coords"] = {
						{ 52.8, 42.4, UNGORO_CRATER },
						{ 46.0, 46.6, UNGORO_CRATER },
						{ 47.6, 53.2, UNGORO_CRATER },
						{ 51.0, 47.2, UNGORO_CRATER },
						{ 55.6, 58.0, UNGORO_CRATER },
					},
				}),
				i(20768, {	-- Oozing Bag
					["crs"] = {
						9477,	-- Cloned Ooze
						6559,	-- Glutinous Ooze
						6557,	-- Primal Ooze
					},
					["sym"] = {{"select","itemID", 20769}},	-- Disgusting Oozeling (PET!)
				}),
				-- #if BEFORE 4.0.3
				i(15772, {	-- Pattern: Devilsaur Leggings (RECIPE!)
					["crs"] = {
						9477,	-- Cloned Ooze
						6559,	-- Glutinous Ooze
						6556,	-- Muculent Ooze
						6557,	-- Primal Ooze
					},
				}),
				-- #endif
				i(11186, {	-- Red Power Crystal
					["provider"] = { "o", 164780 },	-- Red Power Crystal
				}),
				i(11018, {	-- Un'Goro Soil
					["provider"] = { "o", 157936 },	-- Un'Goro Dirt Pile
					["timeline"] = { REMOVED_4_0_3 },
				}),
				i(11188, {	-- Yellow Power Crystal
					["provider"] = { "o", 164661 },	-- Yellow Power Crystal
				}),
			}),
		},
	}),
}));