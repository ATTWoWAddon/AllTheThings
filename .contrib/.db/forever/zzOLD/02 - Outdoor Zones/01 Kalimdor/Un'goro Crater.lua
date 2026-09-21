---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(MAP.KALIMDOR, {
	m(MAP.UNGORO_CRATER, {
		["lore"] = "Un'Goro Crater is a lush jungle in southern Kalimdor, isolated from the source as it shares borders with the deserts of Feralas and Silithus. Although its borders make Un'Goro Crater a rather isolated area, many challenges await players here as they explore the wide range of exotic fauna, from aggressive plant mobs to the mighty devilsaurs.\n\nMarshal's Refuge, the main questing hub in Un'Goro, is also a cradle of references to TV Show Land of the Lost: The last names of the main characters were Marshal, Williden Marshal and Hol'anyee Marshal are clear references to main characters Will and Holly Marshal, and Un'Goro's plot revolves around massive pylons scattered across the zone, also a central part of the plot in Land of the Lost.",
		["icon"] = 236850,
		["groups"] = {
			n(ACHIEVEMENTS, {
				ach(854),	-- Explore Un'Goro Crater
			}),
			explorationHeader({
				exploration(537),	-- Fire Plume Ridge
				exploration(543),	-- Golakka Hot Springs
				exploration(1943),	-- Ironstone Plateau
				exploration(538),	-- Lakkari Tar Pits
				exploration(539),	-- Terror Run
				exploration(1942),	-- The Marshlands
				exploration(540),	-- The Slithering Scar
			}),
			n(FLIGHT_PATHS, {
				fp(79, {	-- Marshal's Refuge, Un'Goro Crater
					["cr"] = 10583,	-- Gryfe <Flight Master>
					["coord"] = { 45.2, 5.8, MAP.UNGORO_CRATER },
				}),
			}),
			n(PROFESSIONS, {
				prof(SKINNING, {
					i(15417, {	-- Devilsaur Leather
						["crs"] = {
							6498,	-- Devilsaur
							6499,	-- Ironhide Devilsaur
							6584,	-- King Mosh
							6500,	-- Tyrant Devilsaur
						},
					}),
				}),
			}),
			n(QUESTS, {
				q(3941, {	-- A Gnome's Assistance
					["sourceQuest"] = 3914,	-- Linken's Sword
					["qg"] = 8737,	-- Linken
					["coord"] = { 44.6, 8.2, MAP.UNGORO_CRATER },
					["lvl"] = 47,
				}),
				q(3913, {	-- A Grave Situation
					["sourceQuest"] = 3912,	-- Meet at the Grave
					["providers"] = {
						{ "n", 9299 },	-- Gaeriyan
						{ "i", 11136 },	-- Linken's Tempered Sword
					},
					["coord"] = { 54.0, 23.4, MAP.TANARIS },
					["lvl"] = 47,
				}),
				q(4491, {	-- A Little Help From My Friends
					["sourceQuest"] = 4492,	-- Lost!
					["qg"] = 9999,	-- Ringo
					["coord"] = { 52.0, 50.0, MAP.UNGORO_CRATER },
					["lvl"] = 50,
					["groups"] = {
						i(11910),	-- Bejeweled Legguards
						i(11911),	-- Treetop Leggings
						i(11913),	-- Clayridge Helm
					},
				}),
				q(4142, {	-- A Visit to Gregan
					["sourceQuest"] = 4141,	-- Muigin and Larion
					["providers"] = {
						{ "n", 9119 },	-- Muigin
						{ "i", 11316 },	-- Bloodpetal
					},
					["coord"] = { 42.9, 9.6, MAP.UNGORO_CRATER },
					["maps"] = { MAP.FERALAS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 47,
				}),
				q(3883, {	-- Alien Ecology
					["qg"] = 9271,	-- Hol'anyee Marshal
					["coord"] = { 43.8, 7.2, MAP.UNGORO_CRATER },
					["lvl"] = 48,
					["groups"] = {
						objective(1, {	-- 0/1 Hive Wall Sample
							["providers"] = {
								{ "i",  11131 },	-- Hive Wall Sample
								{ "o", 174793 },	-- Gorishi Hive Hatchery
								{ "i",  11132 },	-- Unused Scraping Vial
							},
							["coord"] = { 48.0, 85.0, MAP.UNGORO_CRATER },
						}),
					},
				}),
				q(4501, {	-- Beware of Pterrordax
					["provider"] = { "o", 174682 },	-- Beware of Pterrordax
					["coord"] = { 43.6, 8.4, MAP.UNGORO_CRATER },
					["lvl"] = 49,
					["groups"] = {
						objective(1, {	-- 0/10 Pterrordax slain
							["provider"] = { "n", 9166 },	-- Pterrordax
						}),
						objective(2, {	-- 0/15 Frenzied Pterrordax slain
							["provider"] = { "n", 9167 },	-- Frenzied Pterrordax
						}),
						i(11918),	-- Grotslab Gloves
						i(11919),	-- Cragplate Greaves
					},
				}),
				q(9052, {	-- Bloodpetal Poison
					["sourceQuest"] = 9063,	-- Torwa Pathfinder
					["qg"] = 9619,	-- Torwa Pathfinder
					["coord"] = { 71.6, 76.0, MAP.UNGORO_CRATER },
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
				}),
				q(4144, {	-- Bloodpetal Sprouts
					["sourceQuest"] = 4143,	-- Haze of Evil
					["qg"] = 9119,	-- Muigin
					["coord"] = { 42.9, 9.6, MAP.UNGORO_CRATER },
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
					["sourceQuest"] = 4146,	-- Zapper Fuel
					["providers"] = {
						{ "n",   9118 },	-- Larion
						{ "i",  11315 },	-- Bloodpetal Sprout
						{ "o", 164958 },	-- Bloodpetal Sprout
					},
					["coord"] = { 45.6, 8.6, MAP.UNGORO_CRATER },
					["races"] = HORDE_ONLY,
					["lvl"] = 47,
					["groups"] = {
						i(11320),	-- Bloodpetal Zapper
					},
				}),
				q(4243, {	-- Chasing A-Me 01 (1/3)
					["qg"] = 9618,	-- Karna Remtravel
					["coord"] = { 46.4, 13.5, MAP.UNGORO_CRATER },
					["lvl"] = 48,
				}),
				q(4244, {	-- Chasing A-Me 01 (2/3)
					["sourceQuest"] = 4243,	-- Chasing A-Me 01 (1/3)
					["qg"] = 9623,	-- A-Me 01
					["coord"] = { 67.6, 16.8, MAP.UNGORO_CRATER },
					["cost"] = { { "i", 10561, 1 } },	-- Mithril Casing
					["lvl"] = 48,
				}),
				q(4245, {	-- Chasing A-Me 01 (3/3)
					["sourceQuest"] = 4244,	-- Chasing A-Me 01 (2/3)
					["qg"] = 9623,	-- A-Me 01
					["coord"] = { 67.6, 16.8, MAP.UNGORO_CRATER },
					["lvl"] = 48,
				}),
				q(4385, {	-- Crystal Charge
					["sourceQuest"] = 4321,	-- Making Sense of It
					["provider"] = { "o", 164955 },	-- Northern Crystal Pylon
					["coord"] = { 56.6, 12.5, MAP.UNGORO_CRATER },
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
				q(4382, {	-- Crystal Force
					["sourceQuest"] = 4321,	-- Making Sense of It
					["provider"] = { "o", 164957 },	-- Eastern Crystal Pylon
					["coord"] = { 77.3, 50.0, MAP.UNGORO_CRATER },
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
				q(4381, {	-- Crystal Restore
					["sourceQuest"] = 4321,	-- Making Sense of It
					["provider"] = { "o", 164955 },	-- Northern Crystal Pylon
					["coord"] = { 56.6, 12.5, MAP.UNGORO_CRATER },
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
				q(4386, {	-- Crystal Spire
					["sourceQuest"] = 4321,	-- Making Sense of It
					["provider"] = { "o", 164957 },	-- Eastern Crystal Pylon
					["coord"] = { 77.3, 50.0, MAP.UNGORO_CRATER },
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
				q(4383, {	-- Crystal Ward
					["sourceQuest"] = 4321,	-- Making Sense of It
					["provider"] = { "o", 164956 },	-- Western Crystal Pylon
					["coord"] = { 23.5, 50.0, MAP.UNGORO_CRATER },
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
				q(4384, {	-- Crystal Yield
					["sourceQuest"] = 4321,	-- Making Sense of It
					["provider"] = { "o", 164956 },	-- Western Crystal Pylon
					["coord"] = { 23.5, 50.0, MAP.UNGORO_CRATER },
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
				q(4284, {	-- Crystals of Power
					["qg"] = 9117,	-- J.D. Collie
					["coord"] = { 41.8, 2.6, MAP.UNGORO_CRATER },
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
					["coord"] = { 43.6, 7.2, MAP.UNGORO_CRATER },
					["cost"] = { { "i", 11315, 15 } },	-- Bloodpetal Sprout
					["repeatable"] = true,
					["lvl"] = 47,
					["groups"] = {
						i(13481),	-- Recipe: Elixir of Brute Force (RECIPE!)
					},
				}),
				q(3881, {	-- Expedition Salvation
					["qg"] = 9270,	-- Williden Marshal
					["coord"] = { 43.9, 7.1, MAP.UNGORO_CRATER },
					["lvl"] = 48,
					["groups"] = {
						objective(1, {	-- 0/1 Crate of Foodstuffs
							["providers"] = {
								{ "i",  11113 },	-- Crate of Foodstuffs
								{ "o", 161526 },	-- Crate of Foodstuffs
							},
							["coord"] = { 68.4, 36.4, MAP.UNGORO_CRATER },
						}),
						objective(2, {	-- 0/1 Research Equipment
							["providers"] = {
								{ "i",  11112 },	-- Research Equipment
								{ "o", 161521 },	-- Research Equipment
							},
							["coord"] = { 38.5, 66.0, MAP.UNGORO_CRATER },
						}),
					},
				}),
				q(974, {	-- Finding the Source
					["qg"] = 10302,	-- Krakle
					["coord"] = { 30.8, 50.4, MAP.UNGORO_CRATER },
					["lvl"] = 51,
					["groups"] = {
						objective(1, {	-- Find the hottest area of Fire Plume Ridge
							["providers"] = {
								{ "i",  12472 },	-- Krackle's Thermometer
								{ "o", 148503 },	-- Fire Plume Ridge Hot Spot
							},
							["coord"] = { 49.0, 45.0, MAP.UNGORO_CRATER },
						}),
					},
				}),
				q(3844, {	-- It's a Secret to Everybody (1/3)
					["provider"] = { "o", 161505 },	-- A Wrecked Raft
					["coord"] = { 63.1, 68.5, MAP.UNGORO_CRATER },
					["lvl"] = 47,
				}),
				q(3845, {	-- It's a Secret to Everybody (2/3)
					["sourceQuest"] = 3844,	-- It's a Secret to Everybody (1/3)
					["providers"] = {
						{ "i",  11107 },	-- A Small Pack
						{ "o", 161504 },	-- A Small Pack
					},
					["coord"] = { 63.1, 68.5, MAP.UNGORO_CRATER },
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
					["sourceQuest"] = 3845,	-- It's a Secret to Everybody (2/3)
					["providers"] = {
						{ "n", 8737 },	-- Linken
						{ "i", 11133 },	-- Linken's Training Sword
					},
					["coord"] = { 44.6, 8.2, MAP.UNGORO_CRATER },
					["maps"] = { MAP.WINTERSPRING },
					["lvl"] = 47,
				}),
				q(3962, {	-- It's Dangerous to Go Alone
					["sourceQuest"] = 3961,	-- Linken's Adventure
					["qg"] = 8737,	-- Linken
					["coord"] = { 44.6, 8.2, MAP.UNGORO_CRATER },
					["lvl"] = 47,
					["groups"] = {
						objective(1, {	-- 0/1 Blazerunner slain
							["providers"] = {
								{ "n", 9376 },	-- Blazerunner
								{ "i", 11522 },	-- Silver Totem of Aquementas
							},
							["coord"] = { 49.6, 49.6, MAP.UNGORO_CRATER },
							["description"] = "Use the Silter Totem of Aquementas on Blazerunner to remove his protective barrier.",
						}),
						objective(2, {	-- 0/1 Golden Flame
							["providers"] = {
								{ "i",  11179 },	-- Golden Flame
								{ "o", 164910 },	-- Ornate Chest
							},
							["coord"] = { 50.2, 50.0, MAP.UNGORO_CRATER },
						}),
						i(11905),	-- Linken's Boomerang
						i(11902),	-- Linken's Sword of Mastery
						i(11904),	-- Spirit of Aquementas
					},
				}),
				q(4145, {	-- Larion and Muigin
					["qg"] = 9118,	-- Larion
					["coord"] = { 45.6, 8.6, MAP.UNGORO_CRATER },
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
					["sourceQuest"] = 4005,	-- Aquementas
					["providers"] = {
						{ "n", 9117 },	-- J.D. Collie
						{ "i", 11522 },	-- Silver Totem of Aquementas
					},
					["coord"] = { 41.8, 2.6, MAP.UNGORO_CRATER },
					["lvl"] = 47,
				}),
				q(3942, {	-- Linken's Memory
					["sourceQuest"] = 3941,	-- A Gnome's Assistance
					["qg"] = 9117,	-- J.D. Collie
					["coord"] = { 41.8, 2.6, MAP.UNGORO_CRATER },
					["maps"] = { MAP.FELWOOD },
					["lvl"] = 47,
				}),
				q(4492, {	-- Lost!
					["providers"] = {
						{ "n", 9997 },	-- Spraggle Frock
						{ "i", 15722 },	-- Spraggle's Canteen
					},
					["coord"] = { 43.6, 8.5, MAP.UNGORO_CRATER },
					["lvl"] = 50,
				}),
				q(4321, {	-- Making Sense of It
					["sourceQuests"] = {
						4287,	-- The Eastern Pylon
						4285,	-- The Northern Pylon
						4288,	-- The Western Pylon
					},
					["qg"] = 9117,	-- J.D. Collie
					["coord"] = { 41.8, 2.6, MAP.UNGORO_CRATER },
					["lvl"] = 47,
					["groups"] = {
						i(11482),	-- Crystal Pylon User's Manual
					},
				}),
				q(4147, {	-- Marvon's Workshop
					["sourceQuest"] = 4145,	-- Larion and Muigin
					["qg"] = 9118,	-- Larion
					["coord"] = { 45.6, 8.6, MAP.UNGORO_CRATER },
					["maps"] = { MAP.THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 47,
				}),
				q(3912, {	-- Meet at the Grave
					["sourceQuest"] = 3909,	-- The Videre Elixir
					["providers"] = {
						{ "n", 9298 },	-- Donova Snowden
						{ "i", 11136 },	-- Linken's Tempered Sword
					},
					["coord"] = { 31.2, 45.2, MAP.WINTERSPRING },
					["cost"] = { { "i", 11243, 1 } },	-- Videre Elixir
					["lvl"] = 47,
				}),
				q(4141, {	-- Muigin and Larion
					["qg"] = 9119,	-- Muigin
					["coord"] = { 42.9, 9.6, MAP.UNGORO_CRATER },
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
				q(3882, {	-- Roll the Bones
					["qg"] = 9272,	-- Spark Nilminer
					["coord"] = { 43.6, 7.4, MAP.UNGORO_CRATER },
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
						i(11908),	-- Archaeologist's Quarry Boots
						i(11909),	-- Excavator's Utility Belt
					},
				}),
				q(4503, {	-- Shizzle's Flyer
					["qg"] = 9998,	-- Shizzle
					["coord"] = { 44.2, 11.6, MAP.UNGORO_CRATER },
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
						i(11915),	-- Shizzle's Drizzle Blocker
						i(11916),	-- Shizzle's Muzzle
						i(11917),	-- Shizzle's Nozzle Wiper
					},
				}),
				q(4289, {	-- The Apes of Un'Goro
					["qg"] = 9619,	-- Torwa Pathfinder
					["coord"] = { 71.6, 76.0, MAP.UNGORO_CRATER },
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
				q(4292, {	-- The Bait for Lar'korwi
					["sourceQuest"] = 4291,	-- The Scent of Lar'korwi
					["providers"] = {
						{ "n", 9619 },	-- Torwa Pathfinder
						{ "i", 11568 },	-- Torwa's Pouch
					},
					["coord"] = { 71.6, 76.0, MAP.UNGORO_CRATER },
					["lvl"] = 48,
					["groups"] = {
						objective(1, {	-- 0/1 Lar'korwi's Head
							["providers"] = {
								{ "i", 11510 },	-- Lar'korwi's Head
								{ "i", 11570 },	-- Preserved Pheromone Mixture
								{ "i", 11569 },	-- Preserved Threshadon Meat
							},
							["coord"] = { 79.9, 49.9, MAP.UNGORO_CRATER },
							["cr"] = 9684,	-- Lar'korwi
						}),
						i(11876),	-- Plainstalker Tunic
						i(11882),	-- Outrider Leggings
					},
				}),
				q(4287, {	-- The Eastern Pylon
					["sourceQuest"] = 4284,	-- Crystals of Power
					["qg"] = 9117,	-- J.D. Collie
					["coord"] = { 41.8, 2.6, MAP.UNGORO_CRATER },
					["lvl"] = 47,
					["groups"] = {
						objective(1, {	-- Discover and examine the Eastern Crystal Pylon
							["provider"] = { "o", 164957 },	-- Eastern Crystal Pylon
							["coord"] = { 77.2, 50.0, MAP.UNGORO_CRATER },
						}),
					},
				}),
				q(4290, {	-- The Fare of Lar'korwi
					["qg"] = 9619,	-- Torwa Pathfinder
					["coord"] = { 71.6, 76.0, MAP.UNGORO_CRATER },
					["lvl"] = 48,
					["groups"] = {
						objective(1, {	-- 0/1 Piece of Threshadon Carcass
							["providers"] = {
								{ "i",  11504 },	-- Piece of Threshadon Carcass
								{ "o", 166863 },	-- Fresh Threshadon Carcass
							},
							["coord"] = { 68.7, 56.7, MAP.UNGORO_CRATER },
						}),
					},
				}),
				q(4301, {	-- The Mighty U'cha
					["sourceQuest"] = 4289,	-- The Apes of Un'Goro
					["qg"] = 9619,	-- Torwa Pathfinder
					["coord"] = { 71.6, 76.0, MAP.UNGORO_CRATER },
					["lvl"] = 50,
					["groups"] = {
						objective(1, {	-- 0/1 U'cha's Pelt
							["provider"] = { "i", 11476 },	-- U'cha's Pelt
							["coord"] = { 68.6, 14.6, MAP.UNGORO_CRATER },
							["cr"] = 9622,	-- U'cha
						}),
						i(11906),	-- Beastsmasher
						i(11907),	-- Beastslayer
					},
				}),
				q(980, {	-- The New Springs
					["sourceQuest"] = 974,	-- Finding the Source
					["qg"] = 10302,	-- Krakle
					["coord"] = { 30.8, 50.4, MAP.UNGORO_CRATER },
					["maps"] = { MAP.WINTERSPRING },
					["lvl"] = 51,
				}),
				q(4285, {	-- The Northern Pylon
					["sourceQuest"] = 4284,	-- Crystals of Power
					["qg"] = 9117,	-- J.D. Collie
					["coord"] = { 41.8, 2.6, MAP.UNGORO_CRATER },
					["lvl"] = 47,
					["groups"] = {
						objective(1, {	-- Discover and examine the Northern Crystal Pylon
							["provider"] = { "o", 164955 },	-- Northern Crystal Pylon
							["coord"] = { 56.6, 12.5, MAP.UNGORO_CRATER },
						}),
					},
				}),
				q(4291, {	-- The Scent of Lar'korwi
					["sourceQuest"] = 4290,	-- The Fare of Lar'korwi
					["qg"] = 9619,	-- Torwa Pathfinder
					["coord"] = { 71.6, 76.0, MAP.UNGORO_CRATER },
					["lvl"] = 48,
					["groups"] = {
						objective(1, {	-- 0/2 Ravasaur Pheromone Gland
							["provider"] = { "i", 11509  },	-- Ravasaur Pheromone Gland
							["cr"] = 9683,	-- Lar'korwi Mate
						}),
					},
				}),
				q(3909, {	-- The Videre Elixir
					["sourceQuest"] = 3908,	-- It's a Secret to Everybody
					["qg"] = 9298,	-- Donova Snowden
					["coord"] = { 31.2, 45.2, MAP.WINTERSPRING },
					["maps"] = { MAP.FERALAS },
					["lvl"] = 47,
					["groups"] = {
						q(4041, {	-- The Videre Elixir
							["providers"] = {
								{ "n",   7775 },	-- Gregan Brewspewer
								{ "i",  11242 },	-- Evoroot
								{ "o", 164798 },	-- Evoroot
							},
							["coords"] = {
								{ 45.1, 25.6, MAP.FERALAS },
								{ 44.0, 11.0, MAP.FERALAS },
							},
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
				q(4288, {	-- The Western Pylon
					["sourceQuest"] = 4284,	-- Crystals of Power
					["qg"] = 9117,	-- J.D. Collie
					["coord"] = { 41.8, 2.6, MAP.UNGORO_CRATER },
					["lvl"] = 47,
					["groups"] = {
						objective(1, {	-- Discover and examine the Western Crystal Pylon
							["provider"] = { "o", 164956 },	-- Western Crystal Pylon
							["coord"] = { 23.5, 50.0, MAP.UNGORO_CRATER },
						}),
					},
				}),
				q(9063, {	-- Torwa Pathfinder
					["qgs"] = {
						4218,	-- Denatharion <Druid Trainer>
						12042,	-- Loganaar <Druid Trainer>
						3033,	-- Turak Runetotem <Druid Trainer>
					},
					["coords"] = {
						{ 34.8, 8.6, MAP.DARNASSUS },
						{ 52.4, 40.6, MAP.MOONGLADE },
						{ 76.6, 27.6, MAP.THUNDER_BLUFF },
					},
					["classes"] = { DRUID },
					["lvl"] = 50,
				}),
				q(9051, {	-- Toxic Test
					["sourceQuest"] = 9052,	-- Bloodpetal Poison
					["qg"] = 9619,	-- Torwa Pathfinder
					["coord"] = { 71.6, 76.0, MAP.UNGORO_CRATER },
					["classes"] = { DRUID },
					["lvl"] = 50,
					["groups"] = {
						objective(1, {	-- Devilsaur stabbed with barb
							["provider"] = { "i", 22432 },	-- Devilsaur Barb
							["cr"] = 6498,	-- Devilsaur
						}),
					},
				}),
				q(4502, {	-- Volcanic Activity
					["qg"] = 8496,	-- Liv Rizzlefix
					["coord"] = { 62.4, 38.6, MAP.THE_BARRENS },
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
				q(3884, {	-- Williden's Journal
					["provider"] = { "i", 11116 },	-- A Mangled Journal
					["lvl"] = 48,
				}),
			}),
			n(RARES, {
				n(6582, {	-- Clutchmother Zavas
					["coords"] = {
						{ 44.6, 81.6, MAP.UNGORO_CRATER },
						{ 46.8, 86.0, MAP.UNGORO_CRATER },
						{ 49.2, 85.6, MAP.UNGORO_CRATER },
						{ 49.6, 83.6, MAP.UNGORO_CRATER },
					},
				}),
				n(6583, {	-- Gruff
					["coords"] = {
						{ 36.6, 66.6, MAP.UNGORO_CRATER },
						{ 37.8, 75.0, MAP.UNGORO_CRATER },
						{ 31.8, 72.2, MAP.UNGORO_CRATER },
						{ 31.6, 79.6, MAP.UNGORO_CRATER },
					},
				}),
				n(6584, {	-- King Mosh
					["coords"] = {
						{ 27.8, 45.0, MAP.UNGORO_CRATER },
						{ 30.8, 47.6, MAP.UNGORO_CRATER },
						{ 28.8, 34.4, MAP.UNGORO_CRATER },
						{ 29.8, 31.6, MAP.UNGORO_CRATER },
						{ 35.3, 36.0, MAP.UNGORO_CRATER },
						{ 35.1, 30.3, MAP.UNGORO_CRATER },
						{ 37.9, 43.5, MAP.UNGORO_CRATER },
					},
				}),
				n(6581, {	-- Ravasaur Matriarch
					["coord"] = { 62.4, 66.0, MAP.UNGORO_CRATER },
				}),
				n(6585, {	-- Uhk'loc
					["coord"] = { 68.5, 12.7, MAP.UNGORO_CRATER },
				}),
			}),
			n(TREASURES, {
				i(11315, {	-- Bloodpetal Sprout
					["provider"] = { "o", 164958 },	-- Bloodpetal Sprout
				}),
				i(11184, {	-- Blue Power Crystal
					["providers"] = {
						{ "o", 164658 },	-- Blue Power Crystal
						{ "o", 164778 },	-- Blue Power Crystal
					},
				}),
				i(11185, {	-- Green Power Crystal
					["providers"] = {
						{ "o", 164659 },	-- Green Power Crystal
						{ "o", 164779 },	-- Green Power Crystal
					},
				}),
				i(11186, {	-- Red Power Crystal
					["providers"] = {
						{ "o", 164660 },	-- Red Power Crystal
						{ "o", 164780 },	-- Red Power Crystal
					},
				}),
				i(11018, {	-- Un'Goro Soil
					["provider"] = { "o", 157936 },	-- Un'Goro Dirt Pile
				}),
				i(11188, {	-- Yellow Power Crystal
					["providers"] = {
						{ "o", 164661 },	-- Yellow Power Crystal
						{ "o", 164781 },	-- Yellow Power Crystal
					},
				}),
			}),
			n(VENDORS, {
				n(12959, {	-- Nergal <General Goods Vendor>
					["coord"] = { 43.2, 7.8, MAP.UNGORO_CRATER },
					["groups"] = {
						i(15758, {	-- Pattern: Devilsaur Gauntlets (RECIPE!)
							["isLimited"] = true,
						}),
					},
				}),
			}),
			n(ZONE_DROPS, {
				i(11116),	-- A Mangled Journal
				i(12809, {	-- Guardian Stone
					["cr"] = 6560,	-- Stone Guardian
				}),
				i(20768, {	-- Oozing Bag
					["crs"] = {
						9477,	-- Cloned Ooze
						6559,	-- Glutinous Ooze
						6557,	-- Primal Ooze
					},
					["sym"] = {{"select","itemID", 20769}},	-- Disgusting Oozeling (PET!)
				}),
				i(15772, {	-- Pattern: Devilsaur Leggings (RECIPE!)
					["crs"] = {
						9477,	-- Cloned Ooze
						6559,	-- Glutinous Ooze
						6556,	-- Muculent Ooze
						6557,	-- Primal Ooze
					},
				}),
			}),
		},
	}),
}));
