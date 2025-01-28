---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
ALCAZ_ISLAND = createHeader({
	readable = "Alcaz Island",
	icon = 132996,
	text = {
		en = "Alcaz Island",
	},
	description = {
		en = "Return to Alcaz Island to get to get to the bottom of Dr. Weavil's insidious plans, and perhaps you will take home a nice souvenir.",
	},
});
root(ROOTS.Zones, m(KALIMDOR, {
	m(DUSTWALLOW_MARSH, {
		["lore"] = "A hot, fetid swampland, underground springs feed Dustwallow Marsh and keep it eternally wet and muddy. Mosquitoes buzz in the air. Trees dip fronds into the waters. The climate is home to a variety of predators, including alligators and murlocs.\n\nBlack dragons dwell in the southern end of the swamp, and the creatures lair in such profusion that the area garners the name \"Wyrmbog.\" Dustwallow Marsh abuts the ocean on its east side, and the mixing of the waters makes a wide swath brackish. Off the coast is a rocky island, on which is perched the Alliance stronghold-city of Theramore.",
		["icon"] = 236758,
		["maps"] = { 416 },	-- Dustwallow Marsh
		["groups"] = {
			n(ALCAZ_ISLAND, bubbleDownSelf({ ["timeline"] = { ADDED_7_1_0 } }, {
				["lvl"] = lvlsquish(110, 45, 45),
				["groups"] = {
					n(15552, {	-- Dr. Weavil
						["coord"] = { 77.6, 17.2, DUSTWALLOW_MARSH },
						["groups"] = {
							i(142265),	-- Big Red Raygun (TOY!)
							i(142262),	-- Electrified Key
						},
					}),
					n(ZONE_DROPS, {
						i(142264),	-- Drudge Fluid
						i(142262),	-- Electrified Key
						i(142266),	-- Handful of Gizmos
						i(142263),	-- Machine Fluid
					}),
				},
			})),
			n(ACHIEVEMENTS, {
				ach(4929, {	-- Dustwallow Marsh Quests (Alliance)
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					-- #if ANYCLASSIC
					-- #if AFTER MOP
					["groups"] = {
						crit(1, {	-- Disgrace the Defectors
							["sourceQuest"] = 27213,	-- The End of the Deserters
						}),
						crit(2, {	-- "Swamp Eye" Story
							["sourceQuests"] = {
								27190,	-- Cleansing Witch Hill
								27247,	-- Captain Vimes (definitely required, this is the quest wowhead has attached to the criteria)
								27191,	-- Hungry as an Ogre! (probably required, picked up and turned in at the same time)
								27186,	-- Jarl Needs a Blade (definitely required, this quest procced the achievement for me)
							},
						}),
						crit(3, {	-- The Terror of Theramore
							["sourceQuest"] = 27222,	-- Take Down Tethyr!
						}),
						crit(4, {	-- Defias in Dustwallow
							["sourceQuest"] = 27241,	-- Return to Jaina
						}),
						crit(5, {	-- Prisoners of the Grimtotem
						--	may also require 27243, "Unleash the Raptors," turned in first but at the same time
							["sourceQuest"] = 27245,	-- Prisoners of the Grimtotems
						}),
						crit(6, {	-- The Hyal Family
							["sourceQuest"] = 27291,	-- Peace at Last
						}),
						crit(7, {	-- The Challenge of the Stonemaul
							["sourceQuest"] = 27411,	-- Challenge to the Black Flight
						}),
					},
					-- #else
					["sourceQuests"] = {
						27213,	-- The End of the Deserters
						27190,	-- Cleansing Witch Hill
						27247,	-- Captain Vimes (definitely required, this is the quest wowhead has attached to the criteria)
						27191,	-- Hungry as an Ogre! (probably required, picked up and turned in at the same time)
						27186,	-- Jarl Needs a Blade (definitely required, this quest procced the achievement for me)
						27222,	-- Take Down Tethyr!
						27241,	-- Return to Jaina
						27245,	-- Prisoners of the Grimtotems
						27291,	-- Peace at Last
						27411,	-- Challenge to the Black Flight
					},
					-- #endif
					-- #endif
				}),
				ach(4978, {	-- Dustwallow Marsh Quests (Horde)
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					-- #if ANYCLASSIC
					-- #if AFTER MOP
					["groups"] = {
						crit(1, {	-- Wild Threats
							["sourceQuests"] = {
								26682,	-- A Shambling Threat
								25051,	-- Darkmist Extermination
								27229,	-- Smash Broodqueen
							},
						}),
						crit(2, {	-- Work Left Undone
							["sourceQuests"] = {
								1202,	-- The Theramore Docks
								9437,	-- Twilight of the Dawn Runner
							},
						}),
						crit(3, {	-- "Swamp Eye" Story
							["sourceQuests"] = {
								27190,	-- Cleansing Witch Hill
								27191,	-- Hungry as an Ogre!
								27186,	-- Jarl Needs a Blade
								27244,	-- The Lost Report
							},
						}),
						crit(4, {	-- Connection to the Grimtotem
							["sourceQuests"] = {
								27297,	-- Justice Dispensed
								27257,	-- The Black Shield (4/5) [H]
								27258,	-- The Black Shield (5/5) [H]
							},
						}),
						crit(5, {	-- Onyxia's Brood
							["sourceQuests"] = {
								27419,	-- Army of the Black Dragon
								27417,	-- The Brood of Onyxia (2/3)
								27415,	-- The Brood of Onyxia (3/3)
							},
						}),
						crit(6, {	-- Challenging the Overlord
							["sourceQuest"] = 27418,	-- Challenge Overlord Mok'Morokk
						}),
						crit(7, {	-- The Challenge of the Stonemaul
							["sourceQuest"] = 27411,	-- Challenge to the Black Dragonflight
						}),
					},
					-- #else
					["sourceQuests"] = {
						26682,	-- A Shambling Threat
						25051,	-- Darkmist Extermination
						27229,	-- Smash Broodqueen
						1202,	-- The Theramore Docks
						9437,	-- Twilight of the Dawn Runner
						27190,	-- Cleansing Witch Hill
						27191,	-- Hungry as an Ogre!
						27186,	-- Jarl Needs a Blade
						27244,	-- The Lost Report
						27297,	-- Justice Dispensed
						27257,	-- The Black Shield (4/5) [H]
						27258,	-- The Black Shield (5/5) [H]
						27419,	-- Army of the Black Dragon
						27417,	-- The Brood of Onyxia (2/3)
						27415,	-- The Brood of Onyxia (3/3)
						27418,	-- Challenge Overlord Mok'Morokk
						27411,	-- Challenge to the Black Dragonflight
					},
					-- #endif
					-- #endif
				}),
				explorationAch(850),	-- Explore Dustwallow Marsh
			}),
			battlepets({
				["sym"] = {{"select","speciesID",
					398,	-- Black Rat (PET!)
					387,	-- Snake (PET!)
					412,	-- Spider (PET!)
					420,	-- Toad (PET!)
				}},
				["groups"] = {
					pet(385),	-- Mouse (PET!)
					pet(489, {	-- Spawn of Onyxia (PET!)
						["description"] = "Can be found in the area around Onyxia's Lair in Dustwallow Marsh.",
					}),
				},
			}),
			explorationHeader({
				exploration(2079),	-- Alcaz Island
				exploration(501, {["timeline"] = { ADDED_4_0_1 }}),	-- Beezil's Wreck
				exploration(512, {["timeline"] = { ADDED_2_0_1 }}),	-- Blackhoof Village
				exploration(498, {["timeline"] = { ADDED_2_0_1 }}),	-- Bloodfen Burrow
				visit_exploration(507,{coord={42.2,23.4,DUSTWALLOW_MARSH}}),	-- Bluefen
				exploration(496),	-- Brackenwall Village
				exploration(499, {["timeline"] = { ADDED_4_0_1 }}),	-- Darkmist Cavern
				exploration(4046, {["timeline"] = { ADDED_4_0_1 }}),	-- Direhorn Post
				exploration(518),	-- Dreadmurk Shore
				exploration(4010, {["timeline"] = { ADDED_4_0_1 }}),	-- Mudsprocket
				exploration(504, {["timeline"] = { ADDED_4_0_1 }}),	-- North Point Tower
				exploration(503, {["timeline"] = { ADDED_4_0_1 }}),	-- Sentry Point
				exploration(403, {["timeline"] = { ADDED_4_0_1 }}),	-- Shady Rest Inn
				exploration(508, {["timeline"] = { ADDED_4_0_1 }}),	-- Stonemaul Ruins
				exploration(497, {["timeline"] = { ADDED_4_0_1 }}),	-- Swamplight Manor
				exploration(509, {	-- The Den of Flame
					-- Runaway note: I don't have this on my Main and based on the current harvested coords (all off the map) I have no idea how
					-- to even find a subzone with matching name to force collect with new logic
					["collectible"] = false,
				}),
				-- #if BEFORE CATA
				exploration(2302),	-- The Quagmire
				-- #endif
				exploration(513),	-- Theramore Isle
				exploration(502),	-- Witch Hill
				exploration(511),	-- Wyrmbog
			}),
			n(FLIGHT_PATHS, {
				fp(55, {	-- Brackenwall Village, Dustwallow Marsh
					["cr"] = 11899,	-- Shardi <Wind Rider Master>
					["coord"] = { 35.6, 31.8, DUSTWALLOW_MARSH },
					["races"] = HORDE_ONLY,
				}),
				fp(179, {	-- Mudsprocket, Dustwallow Marsh
					-- #if AFTER CATA
					["cr"] = 40358,	-- Dyslix Silvergrub <Flight Master>
					-- #else
					["cr"] = 23612,	-- Dyslix Silvergrub <Flight Master>
					-- #endif
					["coord"] = { 42.8, 72.4, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_2_3_0 },
				}),
				fp(32, {	-- Theramore, Dustwallow Marsh
					["cr"] = 4321,	-- Baldruc <Gryphon Master>
					["coord"] = { 67.4, 51.2, DUSTWALLOW_MARSH },
					["races"] = ALLIANCE_ONLY,
				}),
			}),
			n(PROFESSIONS, {
				prof(FIRST_AID, {
					n(12939, {	-- Doctor Gustaf VanHowzen <Trauma Surgeon>
						["coord"] = { 67.6, 48.8, DUSTWALLOW_MARSH },
						["races"] = ALLIANCE_ONLY,
						-- #if BEFORE 3.1.0
						["groups"] = ARTISAN_FIRST_AID,
						-- #endif
					}),
				}),
				prof(FISHING, {
					o(207724),	-- Shipwreck Debris
					o(180685),	-- Waterlogged Wreckage
				}),
			}),
			n(QUESTS, {
				q(1258, {	-- ... and Bugs
					["qg"] = 4794,	-- Morgan Stern
					["sourceQuest"] = 1204,	-- Mudrock Soup and Bugs
					["coord"] = { 66.4, 45.4, DUSTWALLOW_MARSH },
					-- #if BEFORE 4.0.3.13277
					["maps"] = { SWAMP_OF_SORROWS },
					-- #endif
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(33, 33, 15),
					["groups"] = {
						objective(1, {	-- 0/12 Pristine Crawler Leg
							["provider"] = { "i", 5938 },	-- Pristine Crawler Leg
							-- #if AFTER 4.0.3.13277
							["cr"] = 44390,	-- Spiny Rock Crab
							-- #else
							["crs"] = {
								1088,	-- Monstrous Crawler
								922,	-- Silt Crawler
							},
							-- #endif

						}),
						i(57843, {	-- Baroque Shield
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(57844, {	-- Crawling Wand
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(6801, {	-- Baroque Apron
							-- #if ANYCLASSIC
							["description"] = "This gets completely removed. To be safe, keep this in your bank on an alt forever.",
							-- #endif
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(27214, {	-- A Disturbing Development
					["qg"] = 23951,	-- Lieutenant Aden
					-- CRIEVE NOTE: If someone completed the original quest chain pre-Cata, they are unable to pick this quest up.
					["altQuests"] = { 11137 },	-- Defias in Dustwallow?
					["sourceQuest"] = 27213,	-- The End of the Deserters
					["coord"] = { 65.1, 47.1, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
				}),
				q(11136, {	-- A Disturbing Development
					["qg"] = 23951,	-- Lieutenant Aden
					["sourceQuest"] = 11134,	-- The End of the Deserters
					["coord"] = { 65.1, 47.1, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_2_3_0, REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 32,
				}),
				q(27425, {	-- A Grim Connection
					["qg"] = 4944,	-- Captain Garran Vimes
					["sourceQuests"] = {
						27288,	-- The Deserters (2/2)
						27262,	-- Suspicious Hoofprints [A]
						27285,	-- The Black Shield (3/3) [A]
					},
					["coord"] = { 68.1, 48.5, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(11143, {	-- A Grim Connection
					["qg"] = 4944,	-- Captain Garran Vimes
					["sourceQuest"] = 1287,	-- The Deserters (2/2)
					["coord"] = { 68.2, 48.6, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_2_3_0, REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
				}),
				q(26682, {	-- A Shambling Threat
					["qg"] = 4926,	-- Krog
					["sourceQuests"] = {
						26701,	-- Flight to Brackenwall
						28554,	-- Warchief's Command: Dustwallow Marsh!
					},
					["coord"] = { 36.4, 31.8, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/7 Withervine slain
							["providers"] = {
								{ "n", 4382},	-- Withervine Creeper
								{ "n", 4385},	-- Withervine Rager
							},
						}),
					},
				}),
				q(6625, {	-- Alliance Trauma
					["qg"] = 5150,	-- Nissa Firestone
					["coord"] = { 54.8, 58.6, IRONFORGE },
					-- #if AFTER BFA
					["description"] = "Needs a minimum of 225 skill in Tailoring.",
					["requireSkill"] = TAILORING,
					-- #else
					["description"] = "Needs a minimum of 225 skill in First Aid.",
					["requireSkill"] = FIRST_AID,
					-- #endif
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = lvlsquish(35, 35, 10),
				}),
				q(27427, {	-- Arms of the Grimtotems
					["qg"] = 23568,	-- Captain Darill
					["sourceQuest"] = 27425,	-- A Grim Connection
					["coord"] = { 46.6, 24.6, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/7 Blackhoof Armaments
							["providers"] = {
								{ "i", 33071 },	-- Blackhoof Armaments
								{ "o", 186301 },	-- Blackhoof Armaments
							},
						}),
						i(57837, {	-- Biting Greataxe
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(33268, {	-- Bone Dirk
							["timeline"] = { ADDED_2_3_0 },
						}),
						i(33264, {	-- Glowing Tourmaline Ring
							["timeline"] = { ADDED_2_3_0 },
						}),
					},
				}),
				q(11148, {	-- Arms of the Grimtotems
					["qg"] = 23568,	-- Captain Darill
					["sourceQuest"] = 11143,	-- A Grim Connection
					["coord"] = { 46.6, 24.6, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_2_3_0, REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
					["groups"] = {
						objective(1, {	-- 0/7 Blackhoof Armaments
							["providers"] = {
								{ "i",  33071 },	-- Blackhoof Armaments
								{ "o", 186301 },	-- Blackhoof Armaments
							},
						}),
						i(33272, {	-- Biting Axe
							["timeline"] = { ADDED_2_3_0, REMOVED_4_0_3 },
						}),
						i(33268, {	-- Bone Dirk
							["timeline"] = { ADDED_2_3_0 },
						}),
						i(33264, {	-- Glowing Tourmaline Ring
							["timeline"] = { ADDED_2_3_0 },
						}),
					},
				}),
				q(1168, {	-- Army of the Black Dragon
					["qg"] = 4502,	-- Tharg
					["coord"] = { 37.2, 31.4, DUSTWALLOW_MARSH },
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(37, 37, 15),
					["groups"] = {
						objective(1, {	-- 0/15 Firemane Scout slain
							["provider"] = { "n", 4329 },	-- Firemane Scout
						}),
						objective(2, {	-- 0/10 Firemane Ash Tail slain
							["provider"] = { "n", 4331 },	-- Firemane Ash Tail
						}),
						objective(3, {	-- 0/5 Firemane Scalebane slain
							["provider"] = { "n", 4328 },	-- Firemane Scalebane
						}),
						i(9706),	-- Tharg's Disk
						-- #if AFTER CATA
						i(10702),	-- Enormous Ogre Boots
						-- #endif
						i(9705, {	-- Tharg's Shoelace
							["timeline"] = { REMOVED_4_0_1 },
						}),
					},
				}),
				q(27408, {	-- Banner of the Stonemaul
					["qg"] = 23579,	-- Brogg
					["sourceQuest"] = 27407,	-- Bloodfen Feathers
					["coord"] = { 41.8, 73.9, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/1 Stonemaul Banner
							["providers"] = {
								{ "i", 33086 },	-- Stonemaul Banner
								{ "o", 186329 },	-- Stonemaul Clan Banner
							},
						}),
					},
				}),
				q(11160, {	-- Banner of the Stonemaul
					["qg"] = 23579,	-- Brogg <Stonemaul Survivor>
					["sourceQuest"] = 11158,	-- Bloodfen Feathers
					["coord"] = { 41.9, 74.0, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_2_3_0, REMOVED_4_0_3 },
					["lvl"] = 35,
					["groups"] = {
						objective(1, {	-- 0/1 Stonemaul Banner
							["providers"] = {
								{ "i",  33086 },	-- Stonemaul Banner
								{ "o", 186329 },	-- Stonemaul Clan Banner
							},
							["coord"] = { 38.1, 69.4, DUSTWALLOW_MARSH },
						}),
					},
				}),
				q(27407, {	-- Bloodfen Feathers
					["qg"] = 23579,	-- Brogg
					["coord"] = { 41.8, 73.9, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/5 Bloodfen Feather
							["provider"] = { "i", 33085 },	-- Bloodfen Feather
							["crs"] = {
								4356,	-- Bloodfen Razormaw
								4357,	-- Bloodfen Lashtail
								23873,	-- Goreclaw the Ravenous
							},
						}),
					},
				}),
				q(11158, {	-- Bloodfen Feathers
					["qg"] = 23579,	-- Brogg <Stonemaul Survivor>
					["coord"] = { 41.9, 74.0, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_2_3_0, REMOVED_4_0_3 },
					["lvl"] = 35,
					["groups"] = {
						objective(1, {	-- 0/5 Bloodfen Feather
							["provider"] = { "i", 33085 },	-- Bloodfen Feather
							["crs"] = {
								4356,	-- Bloodfen Razormaw
								4357,	-- Bloodfen Lashtail
								23873,	-- Goreclaw the Ravenous
							},
						}),
					},
				}),
				q(27247, {	-- Captain Vimes
					["qg"] = 23951,	-- Lieutenant Aden
					["sourceQuest"] = 27246,	-- The Orc Report
					["coord"] = { 65.0, 47.0, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(1220, {	-- Captain Vimes
					["providers"] = {
						{ "n", 4947 },	-- Theramore Lieutenant
						{ "i", 5917 },	-- Spy's Report
					},
					["sourceQuest"] = 1219,	-- The Orc Report
					["coords"] = {
						{ 68.1, 48.2, DUSTWALLOW_MARSH },
						{ 67.2, 51.0, DUSTWALLOW_MARSH },
						{ 65.1, 47.1, DUSTWALLOW_MARSH },
					},
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
				}),
				q(27413, {	-- Catch a Dragon by the Tail
					["qg"] = 23570,	-- Gizzix Grimegurgle
					["coord"] = { 41.5, 72.9, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/8 Wyrmtail
							["providers"] = {
								{ "i",  33175 },	-- Wyrmtail
								{ "o", 186463 },	-- Wyrmtail
							},
						}),
						i(33235, {	-- Journeyman's Epaulets
							["timeline"] = { ADDED_2_3_0 },
						}),
						i(33241, {	-- Oiled Leather Leggings
							["timeline"] = { ADDED_2_3_0 },
						}),
						i(131672, {	-- Chain Linked Leggings
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(11217, {	-- Catch a Dragon by the Tail
					["qg"] = 23570,	-- Gizzix Grimegurgle
					["coord"] = { 41.6, 73.0, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_2_3_0, REMOVED_4_0_3 },
					["lvl"] = 37,
					["groups"] = {
						objective(1, {	-- 0/8 Wyrmtail
							["providers"] = {
								{ "i",  33175 },	-- Wyrmtail
								{ "o", 186463 },	-- Wyrmtail
							},
						}),
						i(33271, {	-- Battlecaster's Edge
							["timeline"] = { ADDED_2_3_0 },
						}),
						i(33235, {	-- Journeyman's Epaulets
							["timeline"] = { ADDED_2_3_0 },
						}),
						i(33241, {	-- Oiled Leather Leggings
							["timeline"] = { ADDED_2_3_0 },
						}),
					},
				}),
				q(1958, {	-- Celestial Power
					["qg"] = 6546,	-- Tabetha
					["sourceQuest"] = 1957,	-- Mana Surges
					["coord"] = { 46, 57, DUSTWALLOW_MARSH },
					["timeline"] = { REMOVED_4_0_3 },
					["classes"] = { MAGE },
					["lvl"] = 35,
					["groups"] = {
						i(7515, {	-- Celestial Orb
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(9517, {	-- Celestial Stave
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(27418, {	-- Challenge Overlord Mok'Morokk
					["qg"] = 4500,	-- Overlord Mok'Morokk
					["sourceQuest"] = 27415,	-- The Brood of Onyxia (3/3)
					["coord"] = { 36.2, 31.5, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(57846, {	-- Overlord's Trophy Shoulders
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(57847, {	-- Mok'Morokk's Beat Stick
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(57850, {	-- Dustwallow Impaler
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131675, {	-- Overlord's Trophy Pauldrons
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(156999, {	-- Mok'Morokk's Headcracker
							["timeline"] = { ADDED_7_3_5 },
						}),
					},
				}),
				q(1173, {	-- Challenge Overlord Mok'Morokk
					["qg"] = 4500,	-- Overlord Mok'Morokk
					["sourceQuest"] = 1172,	-- The Brood of Onyxia (3/3)
					["coord"] = { 36.2, 31.4, DUSTWALLOW_MARSH },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 38,
					["groups"] = {
						i(10704, {	-- Chillnail Splinter
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(10703, {	-- Fiendish Skiv
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(27411, {	-- Challenge to the Black Dragonflight
					["qg"] = 23579,	-- Brogg
					["sourceQuest"] = 27410,	-- Spirits of Stonemaul Hold
					["coord"] = { 41.8, 73.9, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/1 Stonemaul Clan Avenged
							["provider"] = { "i", 33095 },	-- Stonemaul Banner
							["coord"] = { 52.0, 75.4, DUSTWALLOW_MARSH },
							["cr"] = 23789,	-- Smolderwing
						}),
						i(33231, {	-- Oversized Stonemaul Hood
							["timeline"] = { ADDED_2_3_0 },
						}),
						i(57828, {	-- Brogg's Better Battle Harness
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(33256, {	-- Refitted Bruiser Gauntlets
							["timeline"] = { ADDED_2_3_0 },
						}),
					},
				}),
				q(11162, {	-- Challenge to the Black Flight
					["qg"] = 23579,	-- Brogg <Stonemaul Survivor>
					["sourceQuest"] = 11159,	-- Spirits of Stonemaul Hold
					["coord"] = { 41.9, 74.0, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_2_3_0, REMOVED_4_0_3 },
					["lvl"] = 35,
					["groups"] = {
						objective(1, {	-- Stonemaul Clan Avenged
							["provider"] = { "i", 33095 },	-- Stonemaul Banner
							["coord"] = { 52, 75.8, DUSTWALLOW_MARSH },
							["cr"] = 23789,	-- Smolderwing
						}),
						i(33231, {	-- Oversized Stonemaul Hood
							["timeline"] = { ADDED_2_3_0 },
						}),
						i(33237, {	-- Brogg's Battle Harness
							["timeline"] = { ADDED_2_3_0, REMOVED_4_0_3 },
						}),
						i(33256, {	-- Refitted Bruiser Gauntlets
							["timeline"] = { ADDED_2_3_0 },
						}),
					},
				}),
				q(11213, {	-- Check Up on Tabetha
					["qg"] = 4791,	-- Nazeer Bloodpike
					["coord"] = { 35.2, 30.6, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_2_3_0 },
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(37, 37, 15),
				}),
				q(27190, {	-- Cleansing Witch Hill
					["qg"] = 23843,	-- Mordant Grimsby
					["sourceQuest"] = 27189,	-- The Witch's Bane
					["coord"] = { 55.5, 26.1, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/1 Witch Hill Cleansed
							["provider"] = { "n", 23864 },	-- Zelfrax
						}),
						i(33229, {	-- Mordant's Travel Tunic
							["timeline"] = { ADDED_2_3_0 },
						}),
						i(33257, {	-- Scaled Marshwalkers
							["timeline"] = { ADDED_2_3_0 },
						}),
						i(33245, {	-- Grimsby's Gaudy Girdle
							["timeline"] = { ADDED_2_3_0 },
						}),
						i(131650, {	-- Grimsby's Chain Cinch
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(11183, {	-- Cleansing Witch Hill
					["qg"] = 23843,	-- Mordant Grimsby
					["sourceQuest"] = 11181,	-- The Witch's Bane
					["coord"] = { 55.6, 26.1, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_2_3_0, REMOVED_4_0_3 },
					["lvl"] = 30,
					["groups"] = {
						objective(1, {	-- Witch Hill Cleansed
							["provider"] = { "i", 33113 },	-- Witchbane Torch
							["cr"] = 23864,	-- Zelfrax
						}),
						i(33229, {	-- Mordant's Travel Tunic
							["timeline"] = { ADDED_2_3_0 },
						}),
						i(33257, {	-- Scaled Marshwalkers
							["timeline"] = { ADDED_2_3_0 },
						}),
						i(33245, {	-- Grimsby's Gaudy Girdle
							["timeline"] = { ADDED_2_3_0 },
						}),
					},
				}),
				q(27426, {	-- Confirming the Suspicion
					["qg"] = 23568,	-- Captain Darill
					["sourceQuest"] = 27425,	-- A Grim Connection
					["coord"] = { 46.6, 24.6, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(11144, {	-- Confirming the Suspicion
					["qg"] = 23568,	-- Captain Darill
					["sourceQuest"] = 11143,	-- A Grim Connection
					["coord"] = { 46.6, 24.6, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_2_3_0, REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 33,
					["groups"] = {
						objective(1, {	-- 0/1 Grimtotem Battle Plan
							["provider"] = { "i", 33051 },	-- Grimtotem Battle Plan
							["cost"] = {{ "i", 33050, 4 }},	-- Grimtotem Note
							["cr"] = 23714,	-- Grimtotem Elder
						}),
					},
				}),
				q(27347, {	-- Corrosion Prevention
					["qg"] = 23797,	-- Moxie Steelgrille
					["coord"] = { 53.5, 56.9, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/10 Oozes Dissolved
							["provider"] = { "i", 33108 },	-- Ooze Buster
							["crs"] = {
								4393,	-- Acidic Swamp Ooze
								4394,	-- Bubbling Swamp Ooze
							},
						}),
						i(33233, {	-- Cobalt-threaded Gloves
							["timeline"] = { ADDED_2_3_0 },
						}),
						i(33239, {	-- Marshwarden's Tunic
							["timeline"] = { ADDED_2_3_0 },
						}),
						i(33255, {	-- Rustproof Waistguard
							["timeline"] = { ADDED_2_3_0 },
						}),
						i(57840, {	-- Corroded Helmet
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131666, {	-- Marshwarden's Vest
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(11174, {	-- Corrosion Prevention
					["qg"] = 23797,	-- Moxie Steelgrille
					["sourceQuest"] = 11172,	-- The Zeppelin Crash
					["coord"] = { 53.6, 56.9, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_2_3_0, REMOVED_4_0_3 },
					["lvl"] = 35,
					["groups"] = {
						objective(1, {	-- 0/10 Oozes Dissolved
							["provider"] = { "i", 33108 },	-- Ooze Buster
							["crs"] = {
								4393,	-- Acidic Swamp Ooze
								4394,	-- Bubbling Swamp Ooze
							},
						}),
						i(33233, {	-- Cobalt-threaded Gloves
							["timeline"] = { ADDED_2_3_0 },
						}),
						i(33239, {	-- Marshwarden's Tunic
							["timeline"] = { ADDED_2_3_0 },
						}),
						i(33255, {	-- Rustproof Waistguard
							["timeline"] = { ADDED_2_3_0 },
						}),
					},
				}),
				q(27286, {	-- Daelin's Men
					["qg"] = 4948,	-- Adjutant Tesoran
					["sourceQuest"] = 27264,	-- Lieutenant Paval Reethe (2/2) [A]
					["coord"] = { 67.9, 48.1, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(1285, {	-- Daelin's Men
					["qg"] = 4948,	-- Adjutant Tesoran
					["sourceQuest"] = 1259,	-- Lieutenant Paval Reethe (2/2) [A]
					["coord"] = { 68.0, 48.1, DUSTWALLOW_MARSH },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
				}),
				q(25051, {	-- Darkmist Extermination
					["qg"] = 4926,	-- Krog
					["coord"] = { 36.4, 31.8, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/8 Darkmist Egg
							["provider"] = { "o", 205267 },	-- Darkmist Egg
						}),
					},
				}),
				q(27218, {	-- Dastardly Denizens of the Deep
					["qg"] = 23892,	-- Babs Fizzletorque
					["sourceQuest"] = 27217,	-- Thresher Oil
					["coord"] = { 72.1, 47.1, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(11193, {	-- Dastardly Denizens of the Deep
					["providers"] = {
						{ "n", 23892 },	-- Babs Fizzletorque
						{ "i", 33127 },	-- Dastardly Denizens of the Deep
					},
					["sourceQuest"] = 11192,	-- Thresher Oil
					["coord"] = { 72.1, 47.0, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_2_3_0, REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
				}),
				q(27234, {	-- Defias in Dustwallow?
					["qg"] = 5086,	-- Captain Wymor
					["sourceQuest"] = 27214,	-- A Disturbing Development
					["coord"] = { 59.7, 41.0, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Defias Orders
							["provider"] = { "i", 33037 },	-- Defias Orders
							["cr"] = 23679,	-- Garn Mathers
						}),
					},
				}),
				q(11137, {	-- Defias in Dustwallow?
					["qg"] = 5086,	-- Captain Wymor
					["sourceQuest"] = 11136,	-- A Disturbing Development
					["coord"] = { 59.7, 41.0, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_2_3_0, REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 32,
					["groups"] = {
						objective(1, {	-- 0/1 Defias Orders
							["provider"] = { "i", 33037 },	-- Defias Orders
							["coord"] = { 64.9, 27.3, DUSTWALLOW_MARSH },
							["cr"] = 23679,	-- Garn Mathers
						}),
					},
				}),
				q(11208, {	-- Delivery for Drazzit
					["providers"] = {
						{ "n", 23797 },	-- Moxie Steelgrille
						{ "i", 33163 },	-- Zeppelin Cargo
					},
					-- #if AFTER CATA
					["sourceQuests"] = {
						27347,	-- Corrosion Prevention
						27348,	-- Secure the Cargo!
					},
					-- #else
					["sourceQuest"] = 11207,	-- Secure the Cargo!
					-- #endif
					["coord"] = { 53.6, 56.9, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_2_3_0 },
					["lvl"] = lvlsquish(35, 35, 15),
				}),
				q(27340, {	-- Direhorn Raiders
					["qg"] = 23600,	-- Apprentice Morlann
					["coord"] = { 46.0, 57.4, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/12 Direhorn Grimtotems killed
							["providers"] = {
								{ "n", 23594},	-- Grimtotem Destroyer
								{ "n", 23595},	-- Grimtotem Earthbinder
							},
						}),
						i(33240, {	-- Grimtotem Earthbinder's Tunic
							["timeline"] = { ADDED_2_3_0 },
						}),
						i(131664, {	-- Grimtotem Earthbinder's Vest
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(57831, {	-- Direhorn Cinch
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(33261, {	-- Destroyer's Cloak
							["timeline"] = { ADDED_2_3_0 },
						}),
						i(57827, {	-- Morlann's Other Seal
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(11156, {	-- Direhorn Raiders
					["qg"] = 23600,	-- Apprentice Morlann <Tabetha's Apprentice>
					["coord"] = { 46.1, 57.4, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_2_3_0, REMOVED_4_0_3 },
					["lvl"] = 35,
					["groups"] = {
						objective(1, {	-- 0/12 Direhorn Grimtotems killed
							["providers"] = {
								{ "n", 23594},	-- Grimtotem Destroyer
								{ "n", 23595},	-- Grimtotem Earthbinder
							},
						}),
						i(33240, {	-- Grimtotem Earthbinder's Tunic
							["timeline"] = { ADDED_2_3_0 },
						}),
						i(33261, {	-- Destroyer's Cloak
							["timeline"] = { ADDED_2_3_0 },
						}),
						i(33262, {	-- Morlann's Seal
							["timeline"] = { ADDED_2_3_0, REMOVED_4_0_3 },
						}),
					},
				}),
				q(27212, {	-- Discrediting the Deserters
					["qg"] = 23566,	-- Calia Hastings
					["sourceQuest"] = 27211,	-- Propaganda War
					["coord"] = { 68.3, 51.1, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/6 Leaflets Distributed
							["provider"] = { "n", 4979 },	-- Theramore Guard
						}),
					},
				}),
				q(11133, {	-- Discrediting the Deserters
					["qg"] = 23566,	-- Calia Hastings <SI:7>
					["sourceQuest"] = 11128,	-- Propaganda War
					["coord"] = { 68.3, 51.0, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_2_3_0, REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 32,
					["groups"] = {
						objective(1, {	-- 0/6 Leaflets Distributed
							["providers"] = {
								{ "i", 33015 },	-- Altered Leaflets
								{ "n", 4979 },	-- Theramore Guard
							},
						}),
					},
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_THREE, q(81765, {	-- Elrick, Paladin of the Silver Hand
					["qg"] = 221575,	-- Elrick
					["sourceQuest"] = 81764,	-- The Mysterious Merchant
					["coord"] = { 66.4, 45.4, DUSTWALLOW_MARSH },
					["classes"] = { PALADIN },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 44,
				})),
				-- #endif
				q(1271, {	-- Feast at the Blue Recluse
					["qg"] = 1141,	-- Angus Stern
					["sourceQuests"] = {
						1258,	-- ... and Bugs
						1222,	-- Stinky's Escape
					},
					["description"] = "Don't forget to loot all the food and drinks off the tables.",
					-- #if AFTER WRATH
					["coord"] = { 51.8, 93.7, STORMWIND_CITY },
					-- #else
					["coord"] = { 41.4, 89.2, STORMWIND_CITY },
					-- #endif
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(30, 30, 15),
					["groups"] = {
						i(5951),	-- Moist Towelette
					},
				}),
				-- #if BEFORE TBC
				q(1132, {	-- Fiora Longears
					-- This quest was moved to Darkshore after TBC Prepatch.
					["qg"] = 4455,	-- Red Jack Flint
					["coord"] = { 9.9, 57.9, WETLANDS },
					["timeline"] = { REMOVED_3_3_0 },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 18,
				}),
				-- #endif
				q(11211, {	-- Help for Mudsprocket
					["qg"] = 6546,	-- Tabetha
					["coord"] = { 46, 57, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_2_3_0 },
					["lvl"] = lvlsquish(38, 38, 15),
				}),
				q(11215, {	-- Help Mudsprocket
					["qg"] = 4791,	-- Nazeer Bloodpike
					["coord"] = { 35.2, 30.6, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_2_3_0 },
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(38, 38, 15),
				}),
				heroscall(q(28552, {	-- Hero's Call: Dustwallow Marsh!
					["timeline"] = { ADDED_4_0_3 },
					["maps"] = { DARNASSUS, STORMWIND_CITY, THE_EXODAR },	-- Only found in Darnassus & Stormwind City & The Exodar in Cataclysm.
					["isBreadcrumb"] = true,
					-- #if BEFORE 7.3.5
					-- Cataclysm: Minimum is level 34. (TODO: Confirm this.)
					-- Cataclysm: Maximum is level 38 (TODO: Test max level between 36 and 44)
					["lvl"] = { 34, 38 },
					-- #endif
				})),
				q(1949, {	-- Hidden Secrets
					["qg"] = 6546,	-- Tabetha
					["sourceQuest"] = 1947,	-- Journey to the Marsh
					["coord"] = { 46, 57, DUSTWALLOW_MARSH },
					["timeline"] = { REMOVED_4_0_3 },
					["classes"] = { MAGE },
					["lvl"] = 30,
				}),
				-- #if BEFORE TBC
				q(1135, {	-- Highperch Venom
					-- This quest was moved to Darkshore after TBC Prepatch.
					["qg"] = 4456,	-- Fiora Longears
					["coord"] = { 66.5, 45.2, DUSTWALLOW_MARSH },
					["timeline"] = { REMOVED_2_3_0 },
					["maps"] = { THOUSAND_NEEDLES },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 25,
					["groups"] = {
						objective(1, {	-- 0/10 Highperch Venom Sac
							["provider"] = { "i", 5809 },	-- Highperch Venom Sac
							["crs"] = {
								5934,	-- Heartrazor
								4109,	-- Highperch Consort
								4110,	-- Highperch Patriarch
								4107,	-- Highperch Wyvern
							},
						}),
						i(6719, {	-- Windborne Belt
							["timeline"] = { REMOVED_2_3_0 },
						}),
					},
				}),
				-- #endif
				q(1177, {	-- Hungry!
					["qg"] = 4503,	-- Mudcrush Durtfeet
					["coord"] = { 35.2, 38.3, DUSTWALLOW_MARSH },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 32,
					["groups"] = {
						objective(1, {	-- 0/12 Mirefin Head
							["provider"] = { "i", 5847 },	-- Mirefin Head
							["crs"] = {
								14230,	-- Burgle Eye
								4362,	-- Mirefin Coastrunner
								4361,	-- Mirefin Muckdweller
								4359,	-- Mirefin Murloc
								4363,	-- Mirefin Oracle
								4358,	-- Mirefin Puddlejumper
								4360,	-- Mirefin Warrior
							},
						}),
						i(9518),	-- Mud's Crushers
						i(9519),	-- Durtfeet Stompers
					},
				}),
				q(27191, {	-- Hungry as an Ogre!
					["qg"] = 4792,	-- "Swamp Eye" Jarl
					["sourceQuest"] = 27184,	-- Jarl Needs Eyes
					["coord"] = { 55.4, 26.2, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/8 Mirefin Head
							["provider"] = { "i", 5847 },	-- Mirefin Head
							["crs"] = {
								4358,	-- Mirefin Puddlejumper
								4359,	-- Mirefin Murloc
								4360,	-- Mirefin Warrior
								4361,	-- Mirefin Muckdweller
								4362,	-- Mirefin Coastrunner
								4363,	-- Mirefin Oracle
								14230,	-- Burgle Eye
								23841,	-- Razorspine
							},
						}),
						i(9518),	-- Mud's Crushers
						i(9519),	-- Durtfeet Stompers
						i(131651, {	-- Mud's Chain Boots
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(27414, {	-- Identifying the Brood
					["qg"] = 4501,	-- Draz'Zilb
					["coord"] = { 37.1, 33.0, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/7 Searing Tongue
							["provider"] = { "i", 5840 },	-- Searing Tongue
							["crs"] = {
								4323,	-- Searing Hatchling
								4324,	-- Searing Whelp
							},
						}),
						objective(2, {	-- 0/7 Searing Heart
							["provider"] = { "i", 5841 },	-- Searing Heart
							["crs"] = {
								4323,	-- Searing Hatchling
								4324,	-- Searing Whelp
							},
						}),
						i(57833, {	-- Brooding Mask
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(57838, {	-- Searing Dagger
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(57839, {	-- Whelp Slaying Axe
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131673, {	-- Brooding Collar
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(1169, {	-- Identifying the Brood
					["qg"] = 4501,	-- Draz'Zilb
					["coord"] = { 37, 33, DUSTWALLOW_MARSH },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 38,
					["groups"] = {
						objective(1, {	-- 0/15 Searing Tongue
							["provider"] = { "i", 5840 },	-- Searing Tongue
							["crs"] = {
								4323,	-- Searing Hatchling
								4324,	-- Searing Whelp
							},
						}),
						objective(2, {	-- 0/15 Searing Heart
							["provider"] = { "i", 5841 },	-- Searing Heart
							["crs"] = {
								4323,	-- Searing Hatchling
								4324,	-- Searing Whelp
							},
						}),
						i(9703, {	-- Scorched Cape
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(9704, {	-- Rustler Gloves
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(27249, {	-- Inspecting the Ruins [A]
					["qg"] = 4944,	-- Captain Garran Vimes
					["sourceQuest"] = 27251,	-- The Call Him Smiling Jim
					["coord"] = { 68.1, 48.5, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(11123, {	-- Inspecting the Ruins [A]
					["qg"] = 4944,	-- Captain Garran Vimes
					["sourceQuest"] = 1282,	-- They Call Him Smiling Jim
					["coord"] = { 68.2, 48.6, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_2_3_0, REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
				}),
				q(27253, {	-- Inspecting the Ruins [H]
					["qg"] = 4926,	-- Krog
					["coord"] = { 36.4, 31.8, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				q(11124, {	-- Inspecting the Ruins [H]
					["qg"] = 4926,	-- Krog
					["coord"] = { 36.4, 31.9, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_2_3_0, REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 30,
				}),
				q(27219, {	-- Is it Real?
					["qg"] = 23896,	-- "Dirty" Michael Crowe
					["sourceQuest"] = 27218,	-- Dastardly Denizens of the Deep
					["coord"] = { 69.3, 51.9, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(11194, {	-- Is it Real?
					["qg"] = 23896,	-- "Dirty" Michael Crowe <Fish Merchant>
					["sourceQuest"] = 11193,	-- Dastardly Denizens of the Deep
					["coord"] = { 69.2, 51.9, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_2_3_0, REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
				}),
				q(1948, {	-- Items of Power
					["providers"] = {
						{ "n", 6546 },	-- Tabetha
						{ "i", 7516 },	-- Tabetha's Instructions
					},
					["sourceQuest"] = 1951,	-- Rituals of Power
					["coord"] = { 46, 57, DUSTWALLOW_MARSH },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { ARATHI_HIGHLANDS },
					["cost"] = { { "i", 1529, 1 } },	-- Jade
					["classes"] = { MAGE },
					["lvl"] = 30,
					["groups"] = {
						objective(2, {	-- 0/1 Bolt Charged Bramble
							["provider"] = { "i", 7272 },	-- Bolt Charged Bramble
							["coord"] = { 52, 51, ARATHI_HIGHLANDS },
							["cost"] = { { "i", 7273, 10 } },	-- Witherbark Totem Stick
							["crs"] = {
								2554,	-- Witherbark Axe Thrower
								2558,	-- Witherbark Berserker
								2556,	-- Witherbark Headhunter
								2557,	-- Witherbark Shadow Hunter
								2553,	-- Witherbark Shadowcaster
								2552,	-- Witherbark Troll
								2555,	-- Witherbark Witch Doctor
								2605,	-- Zalas Witherbark <Warband Leader>
							},
						}),
					},
				}),
				q(27238, {	-- Jaina Must Know
					["qg"] = 23569,	-- Renn McGill
					["sourceQuest"] = 27237,	-- Recover the Cargo
					["coord"] = { 63.8, 16.9, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(11141, {	-- Jaina Must Know
					["qg"] = 23569,	-- Renn McGill <SI:7 Salvage Diver>
					["sourceQuest"] = 11140,	-- Recover the Cargo!
					["coord"] = { 63.7, 17.0, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_2_3_0, REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 33,
				}),
				q(1301, {	-- James Hyal (1/2)
					["qg"] = 5081,	-- Connor Rivers
					["coord"] = { 40.4, 91.6, STORMWIND_CITY },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { WETLANDS },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 30,
				}),
				q(1302, {	-- James Hyal (2/2)
					["qg"] = 5082,	-- Vincent Hyal
					["sourceQuest"] = 1301,	-- James Hyal (1/2)
					["altQuests"] = { 1282 },	-- They Call Him Smiling Jim
					["coord"] = { 10.8, 60.4, WETLANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
				}),
				q(27186, {	-- Jarl Needs a Blade
					["qg"] = 4792,	-- "Swamp Eye" Jarl
					["sourceQuest"] = 27184,	-- Jarl Needs Eyes
					["coord"] = { 55.4, 26.2, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/1 Razorspine's Sword
							["provider"] = { "i", 33110 },	-- Razorspine's Sword
							["cr"] = 23841,	-- Razorspine
						}),
						i(57835, {	-- "Swamp Eye" Belt
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131649, {	-- "Swamp Eye" Chain Sash
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(5016),	-- Artisan's Trousers
						i(9622),	-- Reedknot Ring
					},
				}),
				q(1203, {	-- Jarl Needs a Blade
					["qg"] = 4792,	-- "Swamp Eye" Jarl
					["sourceQuest"] = 1206,	-- Jarl Needs Eyes
					["coord"] = { 55.4, 26.2, DUSTWALLOW_MARSH },
					["timeline"] = {
						-- #if SEASON_OF_DISCOVERY
						REMOVED_1_15_0,
						-- #else
						REMOVED_4_0_3,
						-- #endif
					},
					-- #if BEFORE TBC
					["cost"] = {{ "i", 3853, 1 }},	-- Moonsteel Broadsword
					-- #endif
					["lvl"] = 30,
					["groups"] = {
						-- #if AFTER TBC
						objective(1, {	-- Razorspine's Sword
							["provider"] = { "i", 33110 },	-- Razorspine's Sword
							["cr"] = 23841,	-- Razorspine
						}),
						-- #endif
						i(5016),	-- Artisan's Trousers
						i(9622),	-- Reedknot Ring
					},
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_TWO, q(81570, {	-- Jarl Needs a Blade
					["qg"] = 4792,	-- "Swamp Eye" Jarl
					["sourceQuest"] = 1206,	-- Jarl Needs Eyes
					["coord"] = { 55.4, 26.2, DUSTWALLOW_MARSH },
					["cost"] = {{ "i", 217281, 1 }},	-- Moonsteel Broadsword
					["timeline"] = { "added 1.15.1" },
					["lvl"] = 30,
					["groups"] = {
						i(5016),	-- Artisan's Trousers
						i(9622),	-- Reedknot Ring
					},
				})),
				-- #endif
				q(27184, {	-- Jarl Needs Eyes
					["qg"] = 4792,	-- "Swamp Eye" Jarl
					["sourceQuest"] = 27183,	-- Marsh Frog Legs
					["coord"] = { 55.4, 26.2, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/20 Unpopped Darkmist Eye
							["provider"] = { "i", 5884 },	-- Unpopped Darkmist Eye
							["crs"] = {
								4376,	-- Darkmist Spider
								4378,	-- Darkmist Recluse
								4379,	-- Darkmist Silkspinner
								4380,	-- Darkmist Widow
							},
						}),
					},
				}),
				q(1206, {	-- Jarl Needs Eyes
					["qg"] = 4792,	-- "Swamp Eye" Jarl
					["sourceQuest"] = 1218,	-- Marsh Frog Legs (TBC+) / Soothing Spices (Classic)
					["coord"] = { 55.4, 26.2, DUSTWALLOW_MARSH },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 30,
					["groups"] = {
						objective(1, {	-- 0/40 Unpopped Darkmist Eye
							["provider"] = { "i", 5884 },	-- Unpopped Darkmist Eye
							["crs"] = {
								4377,	-- Darkmist Lurker
								4378,	-- Darkmist Recluse
								4379,	-- Darkmist Silkspinner
								4376,	-- Darkmist Spider
								4380,	-- Darkmist Widow
							},
						}),
					},
				}),
				-- #if BEFORE TBC
				q(1133, {	-- Journey to Astranaar
					-- This quest was moved to Darkshore after TBC Prepatch.
					["qg"] = 4456,	-- Fiora Longears
					["sourceQuest"] = 1132,	-- Fiora Longears
					["coord"] = { 66.4, 45.2, DUSTWALLOW_MARSH },
					["timeline"] = { REMOVED_3_3_0 },
					["maps"] = { ASHENVALE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 18,
				}),
				-- #endif
				q(1947, {	-- Journey to the Marsh
					["qgs"] = {
						5885,	-- Deino <Mage Trainer>
						5144,	-- Bink <Mage Trainer>
						5497,	-- Jennea Cannon <Mage Trainer>
						3048,	-- Ursyn Ghull <Mage Trainer>
						4568,	-- Anastasia Hartwell <Mage Trainer>
					},
					["coords"] = {
						{ 38.4, 86, ORGRIMMAR },
						{ 27, 8.2, IRONFORGE },
						{ 38.6, 79.4, STORMWIND_CITY },
						{ 25.8, 14.4, THUNDER_BLUFF },
						{ 85, 10.2, UNDERCITY },
					},
					["timeline"] = { REMOVED_4_0_3 },
					["classes"] = { MAGE },
					["isBreadcrumb"] = true,
					["lvl"] = 30,
				}),
				q(27297, {	-- Justice Dispensed
					["qg"] = 6546,	-- Tabetha
					["sourceQuest"] = 27296,	-- Raze Direhorn Post! [H]
					["coord"] = { 46, 57, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(33271, {	-- Battlecaster's Edge
							["timeline"] = { ADDED_2_3_0 },
						}),
						i(57829, {	-- Steel-Backed Hauberk
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(156976, {	-- Staff of Memory
							["timeline"] = { ADDED_7_3_5 },
						}),
					},
				}),
				q(11206, {	-- Justice Dispensed
					["qg"] = 6546,	-- Tabetha
					["sourceQuest"] = 11205,	-- Raze Direhorn Post! [H]
					["coord"] = { 46, 57, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_2_3_0, REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 35,
					["groups"] = {
						i(33230, {	-- Leggings of the Long Road
							["timeline"] = { ADDED_2_3_0, REMOVED_4_0_3 },
						}),
						i(33243, {	-- Skirmisher's Cover
							["timeline"] = { ADDED_2_3_0, REMOVED_4_0_3 },
						}),
						i(33251, {	-- Steel-banded Hauberk
							["timeline"] = { ADDED_2_3_0, REMOVED_4_0_3 },
						}),
					},
				}),
				q(27430, {	-- Justice for the Hyals
					["qg"] = 6546,	-- Tabetha
					["sourceQuest"] = 27429,	-- Raze Direhorn Post! [A]
					["coord"] = { 45.9, 57.1, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(11151, {	-- Justice for the Hyals
					["qg"] = 6546,	-- Tabetha
					["sourceQuest"] = 11150,	-- Raze Direhorn Post! [A]
					["coord"] = { 46, 57, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_2_3_0, REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 35,
				}),
				q(27263, {	-- Lieutenant Paval Reethe (1/2) [A]
					["provider"] = { "o", 21042 },	-- Theramore Guard Badge
					["sourceQuest"] = 27249,	-- Inspecting the Ruins [A]
					["coord"] = { 29.8, 48.2, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(27264, {	-- Lieutenant Paval Reethe (2/2) [A]
					["qg"] = 4944,	-- Captain Garran Vimes
					["sourceQuest"] = 27263,	-- Lieutenant Paval Reethe (1/2) [A]
					["coord"] = { 68.1, 48.5, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(1252, {	-- Lieutenant Paval Reethe (1/2) [A]
					["providers"] = {
						{ "o", 21042 },	-- Theramore Guard Badge
						{ "i", 5950 },	-- Reethe's Badge
					},
					["coord"] = { 29.8, 48.2, DUSTWALLOW_MARSH },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
				}),
				q(1259, {	-- Lieutenant Paval Reethe (2/2) [A]
					["qg"] = 4944,	-- Captain Garran Vimes
					["sourceQuest"] = 1252,	-- Lieutenant Paval Reethe (1/2) [A]
					["coord"] = { 68.2, 48.6, DUSTWALLOW_MARSH },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
				}),
				q(27260, {	-- Lieutenant Paval Reethe [H]
					["provider"] = { "o", 21042 },	-- Theramore Guard Badge
					["coord"] = { 29.8, 48.2, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				q(1269, {	-- Lieutenant Paval Reethe [H]
					["providers"] = {
						{ "o", 21042 },	-- Theramore Guard Badge
						{ "i", 5950 },	-- Reethe's Badge
					},
					["coord"] = { 29.8, 48.2, DUSTWALLOW_MARSH },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 30,
				}),
				q(1952, {	-- Mage's Wand
					["qg"] = 6546,	-- Tabetha
					["sourceQuest"] = 1948,	-- Items of Power
					["coord"] = { 46.0, 57.0, DUSTWALLOW_MARSH },
					["timeline"] = { REMOVED_4_0_3 },
					["classes"] = { MAGE },
					["lvl"] = 30,
					["groups"] = {
						i(7514, {	-- Icefury Wand
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(11263, {	-- Nether Force Wand
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(7513, {	-- Ragefire Wand
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(1957, {	-- Mana Surges
					["qg"] = 6546,	-- Tabetha
					["sourceQuest"] = 1956,	-- Power in Uldaman
					["coord"] = { 46, 57, DUSTWALLOW_MARSH },
					["timeline"] = { REMOVED_4_0_3 },
					["classes"] = { MAGE },
					["lvl"] = 35,
					["groups"] = {
						objective(1, {	-- 0/12 Mana Surge slain
							["provider"] = { "n", 6550 },	-- Mana Surge
						}),
					},
				}),
				q(1261, {	-- Marg Speaks
					["provider"] = { "o", 2076 },	-- Bubbling Cauldron
					["sourceQuest"] = 1240,	-- The Troll Witchdoctor
					["coord"] = { 32.2, 27.7, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 30,
					["groups"] = {
						objective(1, {	-- 0/1 Jeweled Pendant
							["provider"] = { "i", 5942 },	-- Jeweled Pendant
							["crs"] = {
								14236,	-- Lord Angler
								4401,	-- Muckshell Clacker
								4403,	-- Muckshell Pincer
								4405,	-- Muckshell Razorclaw
								4404,	-- Muckshell Scrabbler
								4402,	-- Muckshell Snapclaw
							},
						}),
					},
				}),
				q(27183, {	-- Marsh Frog Legs
					["qg"] = 4792,	-- "Swamp Eye" Jarl
					["sourceQuests"] = {
						27215,	-- The Hermit of Swamplight Manor
						27182,	-- The Hermit of Witch Hill
					},
					["coord"] = { 55.4, 26.2, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/10 Marsh Frog Leg
							["provider"] = { "i", 33202 },	-- Marsh Frog Leg
							["cr"] = 23979,	-- Giant Marsh Frog
						}),
						i(57834, {	-- Frog Boots
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(57845, {	-- Swamp Splints
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131648, {	-- Frog Stompers
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(6807),	-- Frog Leg Stew
					},
				}),
				-- #if AFTER TBC
				q(1218, {	-- Marsh Frog Legs (TBC+) / Soothing Spices (Classic)
					["qg"] = 4792,	-- "Swamp Eye" Jarl
					["sourceQuests"] = {
						11177,	-- The Hermit of Swamplight Manor
						11225,	-- The Hermit of Witch Hill
					},
					["coord"] = { 55.4, 26.2, DUSTWALLOW_MARSH },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 30,
					["groups"] = {
						objective(1, {	-- 0/10 Marsh Frog Leg
							["provider"] = { "i", 33202 },	-- Marsh Frog Leg
							["cr"] = 23979,	-- Giant Marsh Frog
						}),
						i(6807),	-- Frog Leg Stew
					},
				}),
				-- #endif
				q(27248, {	-- Mission to Mudsprocket
					["qg"] = 23951,	-- Lieutenant Aden
					["coord"] = { 65.0, 47.0, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(11214, {	-- Mission to Mudsprocket
					["qg"] = 23951,	-- Lieutenant Aden
					["coord"] = { 65.1, 47.1, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_2_3_0, REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 39,
				}),
				q(27294, {	-- More than Coincidence
					["qg"] = 4926,	-- Krog
					["sourceQuest"] = 27259,	-- Suspicious Hoofprint
					["coord"] = { 36.4, 31.8, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/7 Blackhoof Armaments
							["providers"] = {
								{ "i", 33071 },	-- Blackhoof Armaments
								{ "o", 186301 },	-- Blackhoof Armaments
							},
						}),
						i(57852, {	-- Grimtotem Cloak
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(11200, {	-- More than Coincidence
					["qg"] = 4926,	-- Krog
					["sourceQuest"] = 11204,	-- Return to Krog
					["coord"] = { 36.4, 31.9, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_2_3_0, REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 33,
					["groups"] = {
						objective(1, {	-- 0/7 Blackhoof Armaments
							["providers"] = {
								{ "i",  33071 },	-- Blackhoof Armaments
								{ "o", 186301 },	-- Blackhoof Armaments
							},
						}),
						i(33272, {	-- Biting Axe
							["timeline"] = { ADDED_2_3_0, REMOVED_4_0_3 },
						}),
						i(33268, {	-- Bone Dirk
							["timeline"] = { ADDED_2_3_0 },
						}),
						i(33264, {	-- Glowing Tourmaline Ring
							["timeline"] = { ADDED_2_3_0 },
						}),
					},
				}),
				q(1260, {	-- Morgan Stern
					["qg"] = 1141,	-- Angus Stern
					-- #if AFTER WRATH
					["coord"] = { 51.8, 93.7, STORMWIND_CITY },
					-- #else
					["coord"] = { 41.4, 89.2, STORMWIND_CITY },
					-- #endif
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 33,
				}),
				q(1204, {	-- Mudrock Soup and Bugs
					["qg"] = 4794,	-- Morgan Stern
					["sourceQuest"] = 1260,	-- Morgan Stern
					-- #if AFTER CATA
					["coord"] = { 68.2, 48.6, DUSTWALLOW_MARSH },
					-- #else
					["coord"] = { 66.4, 45.4, DUSTWALLOW_MARSH },
					-- #endif
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(33, 33, 15),
					["groups"] = {
						objective(1, {	-- 0/8 Forked Mudrock Tongue
							["provider"] = { "i", 5883 },	-- Forked Mudrock Tongue
							["crs"] = {
								4399,	-- Mudrock Borer
								4398,	-- Mudrock Burrower
								4400,	-- Mudrock Snapjaw
								4397,	-- Mudrock Spikeshell
								4396,	-- Mudrock Tortoise
							},
						}),
					},
				}),
				q(27220, {	-- Nat's Bargain
					["qg"] = 12919,	-- Nat Pagle
					["sourceQuest"] = 27219,	-- Is it Real?
					["coord"] = { 58.6, 60.2, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- Fish Paste Tested
							["provider"] = { "i", 33166 },	-- Pagle's Fish Paste, Extra Strength
							["cr"] = 23928, -- Lurking Shark
						}),
					},
				}),
				q(11209, {	-- Nat's Bargain
					["qg"] = 12919,	-- Nat Pagle
					["sourceQuest"] = 11194,	-- Is it Real?
					["coord"] = { 58.8, 60.2, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_2_3_0, REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
					["groups"] = {
						objective(1, {	-- Fish Paste Tested
							["provider"] = { "i", 33166 },	-- Pagle's Fish Paste, Extra Strength
						}),
						i(19221),	-- Darkmoon Special Reserve
					},
				}),
				q(13826, {	-- Nat Pagle, Angler Extreme
					["qg"] = 12919,	-- Nat Pagle
					["coord"] = { 58.6, 60.2, DUSTWALLOW_MARSH },
					["description"] = "If you deleted your fishing pole from the old version of the quest, you can get a new one by completing this quest.",
					["timeline"] = { ADDED_3_1_0 },
					["OnUpdate"] = [[function(t)
						if not t.collected and t.collectible and ]] .. WOWAPI_GetItemCount(45858) .. [[ == 0 then
							t.collectible = false;
						end
					end]],
					["requireSkill"] = FISHING,
					["learnedAt"] = 225,
					["lvl"] = 35,
					["groups"] = {
						i(45858, {	-- Nat's Lucky Fishing Pole
							["timeline"] = { ADDED_3_1_0 },
						}),
					},
				}),
				q(6607, {	-- Nat Pagle, Angler Extreme
					["qg"] = 12919,	-- Nat Pagle
					["sourceQuests"] = {
						6609,	-- I Got Nothin' Left!
						6608,	-- You Too Good.
					},
					-- #if AFTER 3.1.0.9637
					["altQuests"] = { 13826 },	-- Nat Pagle, Angler Extreme
					-- #endif
					["coord"] = { 58.6, 60.0, DUSTWALLOW_MARSH },
					["maps"] = {
						FERALAS,
						SWAMP_OF_SORROWS,
						DESOLACE,
						STRANGLETHORN_VALE,
						-- #if AFTER CATA
						THE_CAPE_OF_STRANGLETHORN,
						-- #endif
					},
					["requireSkill"] = FISHING,
					["learnedAt"] = 225,
					["lvl"] = 35,
					["groups"] = {
						objective(1, {	-- 0/1 Feralas Ahi
							["provider"] = { "i", 16967 },	-- Feralas Ahi
							["coord"] = { 63.5, 53.6, FERALAS },
						}),
						objective(2, {	-- 0/1 Misty Reed Mahi Mahi
							["provider"] = { "i", 16970 },	-- Misty Reed Mahi Mahi
							["coord"] = { 94.1, 39.7, SWAMP_OF_SORROWS },
						}),
						objective(3, {	-- 0/1 Sar'theris Striker
							["provider"] = { "i", 16968 },	-- Sar'theris Striker
							["coords"] = {
								{ 36.2, 32.9, DESOLACE },
								{ 26.0, 80.1, DESOLACE },
							},
						}),
						objective(4, {	-- 0/1 Savage Coast Blue Sailfin
							["provider"] = { "i", 16969 },	-- Savage Coast Blue Sailfin
							["coord"] = { 26.3, 67.8, STRANGLETHORN_VALE },
						}),
						recipe(18248, {	-- Fishing (Artisan)
							["rank"] = 4,
							["timeline"] = { REMOVED_3_1_0 },
						}),
						i(45858, {	-- Nat's Lucky Fishing Pole
							["timeline"] = { ADDED_3_1_0 },
						}),
					},
				}),
				q(27221, {	-- Oh, It's Real
					["qg"] = 12919,	-- Nat Pagle
					["sourceQuest"] = 27220,	-- Nat's Bargain
					["coord"] = { 58.6, 60.2, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(11210, {	-- Oh, It's Real
					["qg"] = 12919,	-- Nat Pagle
					["sourceQuest"] = 11209,	-- Nat's Bargain
					["coord"] = { 58.8, 60.2, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_2_3_0, REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
				}),
				q(27424, {	-- Overlord Mok'Morokk's Concern
					["qg"] = 4500,	-- Overlord Mok'Morokk
					["coord"] = { 36.2, 31.3, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Mok'Morokk's Snuff
							["providers"] = {
								{ "i", 5834 },	-- Mok'Morokk's Snuff
								{ "o", 19904 },	-- Mok'Morokk's Snuff
							},
						}),
						objective(2, {	-- 0/1 Mok'Morokk's Grog
							["providers"] = {
								{ "i", 5835 },	-- Mok'Morokk's Grog
								{ "o", 19905 },	-- Mok'Morokk's Grog
							},
						}),
						objective(3, {	-- 0/1 Mok'Morokk's Strongbox
							["providers"] = {
								{ "i", 5836 },	-- Mok'Morokk's Strongbox
								{ "o", 19906 },	-- Mok'Morokk's Strongbox
							},
						}),
						i(57848, {	-- Mok'Morokk's Grog Bottle
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(57854, {	-- Stonemaul Gloves
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131676, {	-- Stonemaul Gauntlets
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(1166, {	-- Overlord Mok'Morokk's Concern
					["qg"] = 4500,	-- Overlord Mok'Morokk
					["coord"] = { 36.2, 31.4, DUSTWALLOW_MARSH },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 38,
					["groups"] = {
						objective(1, {	-- 0/1 Mok'Morokk's Snuff
							["provider"] = { "i", 5834 },	-- Mok'Morokk's Snuff
							["coord"] = { 44.4, 66, DUSTWALLOW_MARSH },
						}),
						objective(2, {	-- 0/1 Mok'Morokk's Grog
							["provider"] = { "i", 5835 },	-- Mok'Morokk's Grog
							["coord"] = { 38.6, 65.4, DUSTWALLOW_MARSH },
						}),
						objective(3, {	-- 0/1 Mok'Morokk's Strongbox
							["provider"] = { "i", 5836 },	-- Mok'Morokk's Strongbox
							["coord"] = { 36.6, 69.4, DUSTWALLOW_MARSH },
						}),
						i(10702),	-- Enormous Ogre Boots
					},
				}),
				q(27291, {	-- Peace at Last
					["qg"] = 4944,	-- Captain Garran Vimes
					["sourceQuest"] = 27430,	-- Justice for the Hyals
					["coord"] = { 68.2, 48.4, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- Wreath Laid at Hyal Monument
							["providers"] = {
								{ "i",  33082 },	-- Wreath
								{ "o", 186322 },	-- Hyal Family Monument
							},
							["coord"] = { 63.6, 42.8, DUSTWALLOW_MARSH },
							["cr"] = 23768,	-- Lynn Hyal
						}),
						i(33271, {	-- Battlecaster's Edge
							["timeline"] = { ADDED_2_3_0 },
						}),
						i(57829, {	-- Steel-Backed Hauberk
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(156976, {	-- Staff of Memory
							["timeline"] = { ADDED_7_3_5 },
						}),
					},
				}),
				q(11152, {	-- Peace at Last
					["qg"] = 4944,	-- Captain Garran Vimes
					["sourceQuest"] = 11151,	-- Justice for the Hyals
					["coord"] = { 68.2, 48.6, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_2_3_0, REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 35,
					["groups"] = {
						objective(1, {	-- Wreath Laid at Hyal Monument
							["providers"] = {
								{ "i",  33082 },	-- Wreath
								{ "o", 186322 },	-- Hyal Family Monument
							},
							["coord"] = { 63.7, 42.9, DUSTWALLOW_MARSH },
							["cr"] = 23768,	-- Lynn Hyal
						}),
						i(33230, {	-- Leggings of the Long Road
							["timeline"] = { ADDED_2_3_0, REMOVED_4_0_3 },
						}),
						i(33243, {	-- Skirmisher's Cover
							["timeline"] = { ADDED_2_3_0, REMOVED_4_0_3 },
						}),
						i(33251, {	-- Steel-banded Hauberk
							["timeline"] = { ADDED_2_3_0, REMOVED_4_0_3 },
						}),
					},
				}),
				q(27245, {	-- Prisoners of the Grimtotems (awarded "Prisoners of the Grimtotem" criteria)
					["qg"] = 23723,	-- Sergeant Lukas
					["sourceQuest"] = 27242,	-- Raptor Captor
					["coord"] = { 46.5, 22.9, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/5 Theramore Prisoners Freed
							["provider"] = { "n", 23720 },	-- Theramore Prisoner
						}),
					},
				}),
				q(11145, {	-- Prisoners of the Grimtotems
					["qg"] = 23723,	-- Sergeant Lukas
					["sourceQuest"] = 11146,	-- Raptor Captor
					["coord"] = { 46.7, 23.1, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_2_3_0, REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 33,
					["groups"] = {
						objective(1, {	-- 0/5 Theramore Prisoners Freed
							["provider"] = { "n", 23720 },	-- Theramore Prisoner
							["cost"] = { { "i", 33061, 1 } },	-- Grimtotem Key
							["crs"] = {
								23592,	-- Grimtotem Breaker
								23714,	-- Grimtotem Elder
								23593,	-- Grimtotem Spirit-Shifter
							},
						}),
					},
				}),
				q(27240, {	-- Proof of Treachery
					["qg"] = 4968,	-- Lady Jaina Proudmoore
					["sourceQuest"] = 27239,	-- Survey Alcaz Island
					["coord"] = { 66.3, 49.1, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				-- #if AFTER WRATH
				q(11222, {	-- Proof of Treachery [WRATH+] / Warn Bolvar!
					["qg"] = 4968,	-- Lady Jaina Proudmoore <Ruler of Theramore>
					["sourceQuest"] = 11142,	-- Survey Alcaz Island
					["coord"] = { 66.3, 49.0, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_2_3_0, REMOVED_3_0_2 },	-- Originally supposed to be removed in 4.0.3, but Wrath Classic was weird.
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 33,
				}),
				-- #endif
				q(27211, {	-- Propaganda War
					["qg"] = 23566,	-- Calia Hastings
					["sourceQuest"] = 27210,	-- Traitors Among Us
					["coord"] = { 68.3, 51.1, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Deserter Propaganda
							["providers"] = {
								{ "i", 33008 },	-- Deserter Propaganda
								{ "o", 186266 },	-- Deserter Propaganda
							},
						}),
					},
				}),
				q(11128, {	-- Propaganda War
					["qg"] = 23566,	-- Calia Hastings <SI:7>
					["sourceQuest"] = 11126,	-- Traitors Among Us
					["coord"] = { 68.3, 51.0, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_2_3_0, REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 32,
					["groups"] = {
						objective(1, {	-- Deserter Propaganda
							["provider"] = { "i", 33008 },	-- Deserter Propaganda
							["coord"] = { 67.9, 58.7, DUSTWALLOW_MARSH },
						}),
					},
				}),
				q(27261, {	-- Questioning Reethe
					["qg"] = 4983,	-- Ogron
					["sourceQuest"] = 27306,	-- Talk to Ogron
					["coord"] = { 40.9, 36.6, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(6797),	-- Eyepoker
						i(6798),	-- Blasting Hackbut
					},
				}),
				q(1273, {	-- Questioning Reethe
					["qg"] = 4983,	-- Ogron
					["sourceQuest"] = 1269,	-- Lieutenant Paval Reethe
					["coord"] = { 40.8, 36.6, DUSTWALLOW_MARSH },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 30,
					["groups"] = {
						i(6797),	-- Eyepoker
						i(6798),	-- Blasting Hackbut
					},
				}),
				q(27242, {	-- Raptor Captor
					["qg"] = 23723,	-- Sergeant Lukas
					["coord"] = { 46.5, 22.9, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(11146, {	-- Raptor Captor
					["qg"] = 23723,	-- Sergeant Lukas
					["coord"] = { 46.7, 23.1, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_2_3_0, REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 33,
					["groups"] = {
						objective(1, {	-- 0/6 Raptors Captured
							["provider"] = { "i", 33069 },	-- Sturdy Rope
							["crs"] = {
								4351,	-- Bloodfen Raptor
								4352,	-- Bloodfen Screecher
							},
						}),
					},
				}),
				q(27429, {	-- Raze Direhorn Post! [A]
					["qg"] = 6546,	-- Tabetha
					["sourceQuest"] = 27428,	-- Tabetha's Assistance
					["coord"] = { 45.9, 57.1, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(11150, {	-- Raze Direhorn Post! [A]
					["qg"] = 6546,	-- Tabetha
					["sourceQuest"] = 11149,	-- Tabetha's Assistance
					["coord"] = { 46, 57, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_2_3_0, REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 35,
					["groups"] = {
						objective(1, {	-- North Tent Burned
							["provider"] = { "i", 33072 },	-- Tabetha's Torch
							["coord"] = { 46.6, 45.9, DUSTWALLOW_MARSH },
							["cr"] = 23751,	-- North Tent
						}),
						objective(2, {	-- Northeast Tent Burned
							["provider"] = { "i", 33072 },	-- Tabetha's Torch
							["coord"] = { 47.3, 46.5, DUSTWALLOW_MARSH },
							["cr"] = 23752,	-- Northeast Tent
						}),
						objective(3, {	-- East Tent Burned
							["provider"] = { "i", 33072 },	-- Tabetha's Torch
							["coord"] = { 47.5, 47.6, DUSTWALLOW_MARSH },
							["cr"] = 23753,	-- East Tent
						}),
					},
				}),
				q(27296, {	-- Raze Direhorn Post! [H]
					["qg"] = 6546,	-- Tabetha
					["sourceQuest"] = 27295,	-- Seek Out Tabetha
					["coord"] = { 46, 57, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				q(11205, {	-- Raze Direhorn Post! [H]
					["qg"] = 6546,	-- Tabetha
					["sourceQuest"] = 11203,	-- Seek Out Tabetha
					["coord"] = { 46, 57, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_2_3_0, REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 35,
					["groups"] = {
						objective(1, {	-- North Tent Burned
							["provider"] = { "i", 33072 },	-- Tabetha's Torch
							["coord"] = { 46.6, 45.9, DUSTWALLOW_MARSH },
							["cr"] = 23751,	-- North Tent
						}),
						objective(2, {	-- Northeast Tent Burned
							["provider"] = { "i", 33072 },	-- Tabetha's Torch
							["coord"] = { 47.3, 46.5, DUSTWALLOW_MARSH },
							["cr"] = 23752,	-- Northeast Tent
						}),
						objective(3, {	-- East Tent Burned
							["provider"] = { "i", 33072 },	-- Tabetha's Torch
							["coord"] = { 47.5, 47.6, DUSTWALLOW_MARSH },
							["cr"] = 23753,	-- East Tent
						}),
					},
				}),
				q(27237, {	-- Recover the Cargo!
					["qg"] = 23569,	-- Renn McGill
					["sourceQuest"] = 27236,	-- Secondhand Diving Gear
					["coord"] = { 63.8, 16.9, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(33267, {	-- Fleshripper
							["timeline"] = { ADDED_2_3_0 },
						}),
						i(33259, {	-- Crimson Barbut
							["timeline"] = { ADDED_2_3_0 },
						}),
						i(156977, {	-- Serrated Gladius
							["timeline"] = { ADDED_7_3_5 },
						}),
					},
				}),
				q(11140, {	-- Recover the Cargo!
					["qg"] = 23569,	-- Renn McGill <SI:7 Salvage Diver>
					["sourceQuest"] = 11139,	-- Secondhand Diving Gear
					["coord"] = { 63.7, 17.0, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_2_3_0, REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 32,
					["groups"] = {
						objective(1, {	-- 0/6 Salvaged Strongbox
							["providers"] = {
								{ "i", 33041 },	-- Salvaged Strongbox
								{ "o", 186278 },	-- Burning Wreckage
								{ "i", 33045 },	-- Renn's Supplies
								{ "i", 33040 },	-- Repaired Diving Gear
								{ "i", 33044 },	-- Salvage Kit
							},
						}),
						i(33267, {	-- Fleshripper
							["timeline"] = { ADDED_2_3_0 },
						}),
						i(33270, {	-- Mariner's Sword
							["timeline"] = { ADDED_2_3_0, REMOVED_4_0_3 },
						}),
						i(33259, {	-- Crimson Barbut
							["timeline"] = { ADDED_2_3_0 },
						}),
					},
				}),
				q(27235, {	-- Renn McGill
					["qg"] = 5086,	-- Captain Wymor
					["sourceQuest"] = 27234,	-- Defias in Dustwallow?
					["coord"] = { 59.7, 41.0, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(11138, {	-- Renn McGill
					["providers"] = {
						{ "n", 5086 },	-- Captain Wymor
						{ "i", 33037 },	-- Defias Orders
					},
					["sourceQuest"] = 11137,	-- Defias in Dustwallow?
					["coord"] = { 59.7, 41.0, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_2_3_0, REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 32,
				}),
				q(1262, {	-- Report to Zor
					["providers"] = {
						{ "n", 4791 },	-- Nazeer Bloodpike
						{ "i", 5942 },	-- Jeweled Pendant
					},
					["sourceQuest"] = 1261,	-- Marg Speaks
					["coord"] = { 35.2, 30.6, DUSTWALLOW_MARSH },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 30,
				}),
				q(27241, {	-- Return to Jaina
					["qg"] = 1750,	-- Grand Admiral Jes-Tereth
					["sourceQuest"] = 27240,	-- Proof of Treachery
					["coord"] = { 85.6, 32.9, STORMWIND_CITY },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(11223, {	-- Return to Jaina
					["qg"] = 1748,	-- Highlord Bolvar Fordragon
					["sourceQuest"] = 11222,	-- Warn Bolvar! / Proof of Treachery [WRATH+]
					-- #if AFTER WRATH
					["coord"] = { 38.6, 44.8, STORMWIND_CITY },
					-- #else
					["coord"] = { 78.2, 18.1, STORMWIND_CITY },
					-- #endif
					["timeline"] = { ADDED_2_0_1, REMOVED_3_0_2 },	-- Originally supposed to be removed in 4.0.3, but Wrath Classic was weird.
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 33,
					["groups"] = {
						i(33269, {	-- Bejeweled Dagger
							["timeline"] = { ADDED_2_0_1, REMOVED_4_0_3 },	-- Originally supposed to be removed in 4.0.3, but Wrath Classic was weird. Still available for the Horde!
						}),
						i(33252, {	-- Gleaming Scale Breastplate
							["timeline"] = { ADDED_2_0_1, REMOVED_4_0_3 },	-- Originally supposed to be removed in 4.0.3, but Wrath Classic was weird. Still available for the Horde!
						}),
						i(33250, {	-- Archer's Wristguard
							["timeline"] = { ADDED_2_0_1 },	-- Moved to "Survey Alcaz Island" with Cata
						}),
					},
				}),
				q(27292, {	-- Return to Krog
					["qg"] = 4943,    -- Mosarn
					["sourceQuest"] = 27258,    -- The Black Shield (5/5) [H]
					["coord"] = { 54.3, 80.3, THUNDER_BLUFF },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				q(11204, {	-- Return to Krog
					["qg"] = 4943,	-- Mosarn
					["sourceQuest"] = 1276,	-- The Black Shield (5/5) [H]
					["coord"] = { 54.0, 80.8, THUNDER_BLUFF },
					["timeline"] = { ADDED_2_3_0, REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 33,
					["groups"] = {
						i(33267, {	-- Fleshripper
							["timeline"] = { ADDED_2_3_0 },
						}),
						i(33270, {	-- Mariner's Sword
							["timeline"] = { ADDED_2_3_0, REMOVED_4_0_3 },
						}),
						i(33259, {	-- Crimson Barbut
							["timeline"] = { ADDED_2_3_0 },
						}),
					},
				}),
				q(1953, {	-- Return to the Marsh
					["qgs"] = {
						5885,	-- Deino <Mage Trainer>
						5144,	-- Bink <Mage Trainer>
						5497,	-- Jennea Cannon <Mage Trainer>
						3048,	-- Ursyn Ghull <Mage Trainer>
						4568,	-- Anastasia Hartwell <Mage Trainer>
					},
					["coords"] = {
						{ 38.4, 86, ORGRIMMAR },
						{ 27, 8.2, IRONFORGE },
						{ 38.6, 79.4, STORMWIND_CITY },
						{ 25.8, 14.4, THUNDER_BLUFF },
						{ 85, 10.2, UNDERCITY },
					},
					["timeline"] = { REMOVED_4_0_3 },
					["classes"] = { MAGE },
					["isBreadcrumb"] = true,
					["lvl"] = 35,
				}),
				q(27236, {	-- Secondhand Diving Gear
					["qg"] = 23569,	-- Renn McGill
					["sourceQuest"] = 27235,	-- Renn McGill
					["coord"] = { 63.8, 16.9, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Damaged Diving Gear
							["providers"] = {
								{ "i", 33038 },	-- Damaged Diving Gear
								{ "o", 186273 },	-- Damaged Diving Gear
							},
						}),
						objective(2, {	-- 0/1 Tool Kit
							["providers"] = {
								{ "i", 33039 },	-- Tool Kit
								{ "o", 186272 },	-- Tool Kit
							},
						}),
					},
				}),
				q(11139, {	-- Secondhand Diving Gear
					["qg"] = 23569,	-- Renn McGill <SI:7 Salvage Diver>
					["sourceQuest"] = 11138,	-- Renn McGill
					["coord"] = { 63.7, 17.0, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_2_3_0, REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 32,
					["groups"] = {
						objective(1, {	-- 0/1 Damaged Diving Gear
							["provider"] = { "i", 33038 },	-- Damaged Diving Gear
							["coord"] = { 61.68, 18.16, DUSTWALLOW_MARSH },
						}),
						objective(2, {	-- 0/1 Tool Kit
							["provider"] = { "i", 33039 },	-- Tool Kit
							["coord"] = { 62.9, 18.80, DUSTWALLOW_MARSH },
						}),
					},
				}),
				q(27348, {	-- Secure the Cargo!
					["qg"] = 23797,	-- Moxie Steelgrille
					["sourceQuest"] = 27346,	-- The Zeppelin Crash
					["coord"] = { 53.5, 56.9, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/8 Zeppelin Cargo
							["providers"] = {
								{ "i", 33163 },	-- Zeppelin Cargo
								{ "o", 186450 },	-- Zeppelin Cargo
							},
						}),
					},
				}),
				q(11207, {	-- Secure the Cargo!
					["qg"] = 23797,	-- Moxie Steelgrille
					["coord"] = { 53.6, 56.9, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_2_3_0, REMOVED_4_0_3 },
					["lvl"] = 35,
					["groups"] = {
						objective(1, {	-- 0/8 Zeppelin Cargo
							["providers"] = {
								{ "i",  33163 },	-- Zeppelin Cargo
								{ "o", 186450 },	-- Zeppelin Cargo
							},
						}),
					},
				}),
				q(27295, {	-- Seek Out Tabetha
					["qg"] = 4926,	-- Krog
					["sourceQuests"] = {
						27294,	-- More Than Coincidence
						27293,	-- The Grimtotem Plot
					},
					["coord"] = { 36.4, 31.8, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				q(11203, {	-- Seek Out Tabetha
					["qg"] = 4926,	-- Krog
					["sourceQuest"] = 11201,	-- The Grimtotem Plot
					["coord"] = { 36.4, 31.8, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_2_3_0, REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 35,
				}),
				q(7541, {	-- Service to the Horde
					["qg"] = 4047,	-- Zor Lonetree
					["sourceQuest"] = 1262,	-- Report to Zor
					["coord"] = { 39, 38, ORGRIMMAR },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 30,
					["groups"] = {
						i(18585, {	-- Band of Allegiance
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(18586, {	-- Lonetree's Circle
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(11186, {	-- Signs of Treachery?
					["provider"] = { "i", 33115 },	-- Sealed Letter
					["timeline"] = { ADDED_2_3_0, REMOVED_4_0_3 },
					["cr"] = 23881,	-- Apothecary Cylla
					["races"] = HORDE_ONLY,
					["lvl"] = 35,
				}),
				q(27229, {	-- SMASH BROODQUEEN
					["provider"] = { "o", 205332 },	-- Wanted Poster (Broodqueen)
					["coord"] = { 37.4, 31.5, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Broodqueen Pedipalp
							["provider"] = { "i", 60883 },	-- Broodqueen Pedipalp
							["cr"] = 45227,	-- Darkmist Broodqueen
						}),
					},
				}),
				q(27410, {	-- Spirits of Stonemaul Hold
					["qg"] = 23579,	-- Brogg
					["sourceQuests"] = {
						27408,	-- Banner of the Stonemaul
						27409,	-- The Essence of Enmity
					},
					["coord"] = { 41.8, 73.9, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_4_0_3 },
				}),
				q(11159, {	-- Spirits of Stonemaul Hold
					["qg"] = 23579,	-- Brogg <Stonemaul Survivor>
					["sourceQuest"] = 11161,	-- The Essence of Enmity
					["coord"] = { 41.9, 74.0, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_2_3_0, REMOVED_4_0_3 },
					["lvl"] = 35,
					["groups"] = {
						objective(1, {	-- Stonemaul Spirits laid to rest
							["providers"] = {
								{ "i",  33091 },	-- Energized Totem
								{ "o", 186332 },	-- Ogre Remains
							},
							["cr"] = 23786,	-- Stonemaul Spirit
						}),
					},
				}),
				-- #if BEFORE TBC
				q(1218, {	-- Soothing Spices (Classic) / Marsh Frog Legs (TBC+)
					["qg"] = 4792,	-- "Swamp Eye" Jarl
					["coord"] = { 55.4, 26.2, DUSTWALLOW_MARSH },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = {{ "i", 3713, 3 }},	-- Soothing Spices
					["lvl"] = 30,
					["groups"] = {
						i(6807),	-- Frog Leg Stew
					},
				}),
				-- #endif
				{	-- Stinky's Escape
					["allianceQuestData"] = q(1222),	-- Stinky's Escape [A]
					["hordeQuestData"] = q(1270),	-- Stinky's Escape [H]
					["qg"] = 4880,	-- "Stinky" Ignatz
					["coord"] = { 46.9, 17.5, DUSTWALLOW_MARSH },
					["lvl"] = lvlsquish(30, 30, 15),
					["groups"] = {
						i(3825),	-- Elixir of Fortitude
					},
				},
				q(27239, {	-- Survey Alcaz Island
					["qg"] = 4968,	-- Lady Jaina Proudmoore
					["sourceQuest"] = 27238,	-- Jaina Must Know
					["coord"] = { 66.3, 49.0, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(57851, {	-- Swamp Gas Gauntlets
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(33250, {	-- Archer's Wristguard
							["timeline"] = { ADDED_2_0_1 },
						}),
						i(131253, {	-- Archer's Chain Bracer
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(11142, {	-- Survey Alcaz Island
					["qg"] = 4968,	-- Lady Jaina Proudmoore <Ruler of Theramore>
					["sourceQuest"] = 11141,	-- Jaina Must Know
					["coord"] = { 66.3, 49.0, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_2_0_1, REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 33,
				}),
				q(27262, {	-- Suspicious Hoofprints [A]
					["provider"] = { "o", 187273 },	-- Suspicious Hoofprint
					["sourceQuest"] = 27249,	-- Inspecting the Ruins [A]
					["coord"] = { 29.6, 47.6, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(1284, {	-- Suspicious Hoofprints [A]
					["providers"] = {
						{ "o", 21015 },	-- Hoofprints
						{ "o", 21016 },	-- Hoofprints
					},
					["coord"] = { 29.7, 47.7, DUSTWALLOW_MARSH },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
				}),
				q(27259, {	-- Suspicious Hoofprints [H]
					["provider"] = { "o", 187273 },	-- Suspicious Hoofprint
					["coord"] = { 29.6, 47.6, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				q(1268, {	-- Suspicious Hoofprints [H]
					["providers"] = {
						{ "o", 21015 },	-- Hoofprints
						{ "o", 21016 },	-- Hoofprints
					},
					["coord"] = { 29.7, 47.7, DUSTWALLOW_MARSH },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 30,
				}),
				q(27428, {	-- Tabetha's Assistance
					["qg"] = 23568,	-- Captain Darill
					["sourceQuests"] = {
						27427,	-- Arms of the Grimtotems
						27426,	-- Confirming the Suspicion
					},
					["coord"] = { 46.6, 24.6, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(11149, {	-- Tabetha's Assistance
					["qg"] = 23568,	-- Captain Darill
					["sourceQuest"] = 11148,	-- Arms of the Grimtotems
					["coord"] = { 46.6, 24.6, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_2_3_0, REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 35,
				}),
				q(11212, {	-- Tabetha's Farm
					["qg"] = 4921,	-- Guard Byron
					["coord"] = { 66.2, 46.1, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_2_3_0 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(37, 37, 15),
				}),
				q(27222, {	-- Take Down Tethyr!
					["qg"] = 23905,	-- Major Mills
					["sourceQuest"] = 27221,	-- Oh, It's Real
					["coord"] = { 69.6, 51.8, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(57842, {	-- Tower of Theramore
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(33247, {	-- Swift Wind Spaulders
							["timeline"] = { ADDED_2_3_0 },
						}),
						i(131659, {	-- Swift Wind Shoulders
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(57849, {	-- Seamonster Harpoon
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(11198, {	-- Take Down Tethyr!
					["qg"] = 23905,	-- Major Mills
					["sourceQuest"] = 11210,	-- Oh, It's Real
					["coord"] = { 69.7, 51.2, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_2_3_0, REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
					["groups"] = {
						objective(1, {	-- Defend Theramore Docks from Tethyr
							["provider"] = { "n", 23899 },	-- Tethyr
						}),
						i(33228, {	-- Crimson Tunic
							["timeline"] = { ADDED_2_3_0, REMOVED_4_0_3 },
						}),
						i(33253, {	-- Golden Helm
							["timeline"] = { ADDED_2_3_0, REMOVED_4_0_3 },
						}),
						i(33247, {	-- Swift Wind Spaulders
							["timeline"] = { ADDED_2_3_0 },
						}),
					},
				}),
				q(27306, {	-- Talk to Ogron
					["qg"] = 4926,	-- Krog
					["sourceQuest"] = 27260,	-- Lieutenant Paval Reethe [H]
					["coord"] = { 36.4, 31.8, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				q(11185, {	-- The Apothecary's Letter
					["provider"] = { "i", 33114 },	-- Sealed Letter
					["timeline"] = { ADDED_2_3_0, REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["cr"] = 23881,	-- Apothecary Cylla
					["lvl"] = 35,
				}),
				q(27252, {	-- The Black Shield (1/3) [A]
					["provider"] = { "o", 20992 },	-- Black Shield
					["sourceQuest"] = 27249,	-- Inspecting the Ruins [A]
					["coord"] = { 29.6, 48.5, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(27284, {	-- The Black Shield (2/3) [A]
					["qg"] = 4944,	-- Captain Garran Vimes
					["sourceQuest"] = 27252,	-- The Black Shield (1/3) [A]
					["coord"] = { 68.1, 48.5, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(27285, {	-- The Black Shield (3/3) [A]
					["qg"] = 4941,	-- Caz Twosprocket
					["sourceQuest"] = 27284,	-- The Black Shield (2/3) [A]
					["coord"] = { 64.7, 50.3, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(1253, {	-- The Black Shield (1/3) [A]
					["providers"] = {
						{ "o", 20992 },	-- Black Shield
						{ "i", 5919 },	-- Blackened Iron Shield
					},
					["coord"] = { 29.6, 48.5, DUSTWALLOW_MARSH },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
				}),
				q(1319, {	-- The Black Shield (2/3) [A]
					["providers"] = {
						{ "n", 4944 },	-- Captain Garran Vimes
						{ "i", 5919 },	-- Blackened Iron Shield
					},
					["sourceQuest"] = 1253,	-- The Black Shield (1/3) [A]
					["coord"] = { 68.2, 48.6, DUSTWALLOW_MARSH },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
				}),
				q(1320, {	-- The Black Shield (3/3) [A]
					["qg"] = 4941,	-- Caz Twosprocket
					["sourceQuest"] = 1319,	-- The Black Shield (2/3) [A]
					["coord"] = { 64.6, 50.4, DUSTWALLOW_MARSH },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
				}),
				q(27254, {	-- The Black Shield (1/5) [H]
					["provider"] = { "o", 20992 },	-- Black Shield
					["coord"] = { 29.6, 48.5, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				q(27255, {	-- The Black Shield (2/5) [H]
					["qg"] = 4926,	-- Krog
					["sourceQuest"] = 27254,	-- The Black Shield (1/5) [H]
					["coord"] = { 36.4, 31.8, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				q(27256, {	-- The Black Shield (3/5) [H]
					["qg"] = 5087,	-- Do'gol
					["sourceQuest"] = 27255,	-- The Black Shield (2/5) [H]
					["coord"] = { 36.5, 30.8, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/5 Acidic Venom Sac
							["provider"] = { "i", 5959 },	-- Acidic Venom Sac
							["crs"] = {
								4376,	-- Darkmist Spider
								4378,	-- Darkmist Recluse
								4379,	-- Darkmist Silkspinner
								4380,	-- Darkmist Widow
							},
						}),
					},
				}),
				q(27257, {	-- The Black Shield (4/5) [H]
					["qg"] = 5087,	-- Do'gol
					["sourceQuest"] = 27256,	-- The Black Shield (3/5) [H]
					["coord"] = { 36.5, 30.7, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				q(27258, {	-- The Black Shield (5/5) [H]
					["qg"] = 4926,	-- Krog
					["sourceQuest"] = 27261,	-- Questioning Reethe
					["coord"] = { 36.4, 31.8, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				q(1251, {	-- The Black Shield (1/5) [H]
					["providers"] = {
						{ "o", 20992 },	-- Black Shield
						{ "i", 5919 },	-- Blackened Iron Shield
					},
					["coord"] = { 29.6, 48.5, DUSTWALLOW_MARSH },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 30,
				}),
				q(1321, {	-- The Black Shield (2/5) [H]
					["providers"] = {
						{ "n", 4926 },	-- Krog
						{ "i", 5919 },	-- Blackened Iron Shield
					},
					["sourceQuest"] = 1251,	-- The Black Shield (1/5) [H]
					["coord"] = { 36.4, 31.8, DUSTWALLOW_MARSH },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 30,
				}),
				q(1322, {	-- The Black Shield (3/5) [H]
					["qg"] = 5087,	-- Do'gol
					["sourceQuest"] = 1321,	-- The Black Shield (2/5) [H]
					["coord"] = { 36.4, 30.8, DUSTWALLOW_MARSH },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 30,
					["groups"] = {
						objective(1, {	-- 0/6 Acidic Venom Sac
							["provider"] = { "i", 5959 },	-- Acidic Venom Sac
							["crs"] = {
								4412,	-- Darkfang Creeper
								4411,	-- Darkfang Lurker
								4413,	-- Darkfang Spider
								4414,	-- Darkfang Venomspitter
								4415,	-- Giant Darkfang Spider
								4379,	-- Darkmist Silkspinner
								4376,	-- Darkmist Spider
								4378,	-- Darkmist Recluse
								4380,	-- Darkmist Widow
							},
						}),
					},
				}),
				q(1323, {	-- The Black Shield (4/5) [H]
					["qg"] = 5087,	-- Do'gol
					["sourceQuest"] = 1322,	-- The Black Shield (3/5) [H]
					["coord"] = { 36.4, 30.8, DUSTWALLOW_MARSH },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 30,
				}),
				q(1276, {	-- The Black Shield (5/5) [H]
					["providers"] = {
						{ "n", 4926 },	-- Krog
						{ "i", 5919 },	-- Blackened Iron Shield
					},
					["sourceQuest"] = 1323,	-- The Black Shield (4/5) [H]
					["coord"] = { 36.4, 31.8, DUSTWALLOW_MARSH },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 30,
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_THREE, q(81766, {	-- The Bloody Missive
					["providers"] = {
						{ "i", 219930 },	-- Bloody Missive
						{ "i", 219929 },	-- Bloody Missive
						{ "n",   5492 },	-- Katherine the Pure <Paladin Trainer>
					},
					["sourceQuest"] = 81764,	-- The Mysterious Merchant
					["coord"] = { 66.4, 45.4, DUSTWALLOW_MARSH },
					["maps"] = { STORMWIND_CITY },
					["classes"] = { PALADIN },
					["races"] = ALLIANCE_ONLY,
					["cr"] = 221575,	-- Elrick
					["lvl"] = 44,
					["groups"] = {
						recipe(429251),	-- Engrave Helm - Fanaticism
					},
				})),
				-- #endif
				q(27416, {	-- The Brood of Onyxia (1/3)
					["qg"] = 4501,	-- Draz'Zilb
					["sourceQuest"] = 27414,	-- Identifying the Brood
					["coord"] = { 37.1, 33.1, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				q(27417, {	-- The Brood of Onyxia (2/3)
					["qg"] = 4500,	-- Overlord Mok'Morokk
					["sourceQuest"] = 27416,	-- The Brood of Onyxia (1/3)
					["coord"] = { 36.2, 31.4, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				q(27415, {	-- The Brood of Onyxia (3/3)
					["qg"] = 4501,	-- Draz'Zilb
					["sourceQuest"] = 27417,	-- The Brood of Onyxia (2/3)
					["coord"] = { 37.1, 33.0, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/5 Egg of Onyxia destroyed
							["provider"] = { "o", 20359 },	-- Egg of Onyxia
						}),
						i(57836, {	-- Encarmine Spaulders
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(57841, {	-- Wyrmbog Amulet
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131674, {	-- Encarmine Pauldrons
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(1170, {	-- The Brood of Onyxia (1/3)
					["qg"] = 4501,	-- Draz'Zilb
					["sourceQuest"] = 1169,	-- Identifying the Brood
					["coord"] = { 37, 33, DUSTWALLOW_MARSH },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 38,
				}),
				q(1171, {	-- The Brood of Onyxia (2/3)
					["qg"] = 4500,	-- Overlord Mok'Morokk
					["sourceQuest"] = 1170,	-- The Brood of Onyxia (1/3)
					["coord"] = { 36.2, 31.4, DUSTWALLOW_MARSH },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 38,
				}),
				q(1172, {	-- The Brood of Onyxia (3/3)
					["qg"] = 4501,	-- Draz'Zilb
					["sourceQuest"] = 1171,	-- The Brood of Onyxia (2/3)
					["coord"] = { 37, 33, DUSTWALLOW_MARSH },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 38,
					["groups"] = {
						objective(1, {	-- 0/5 Egg of Onyxia destroyed
							["provider"] = { "o", 20359 },	-- Egg of Onyxia
						}),
						i(10700, {	-- Encarmine Boots
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(10701, {	-- Boots of Zua'tec
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(27287, {	-- The Deserters (1/2)
					["qg"] = 4944,	-- Captain Garran Vimes
					["sourceQuest"] = 27286,	-- Daelin's Men
					["coord"] = { 68.1, 48.5, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(27288, {	-- The Deserters (2/2)
					["qg"] = 5089,	-- Balos Jacken
					["sourceQuest"] = 27287,	-- The Deserters (1/2)
					["coord"] = { 36.1, 54.2, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(1286, {	-- The Deserters (1/2)
					["qg"] = 4944,	-- Captain Garran Vimes
					["sourceQuest"] = 1285,	-- Daelin's Men
					["coord"] = { 68.2, 48.6, DUSTWALLOW_MARSH },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
				}),
				q(1287, {	-- The Deserters (2/2)
					["qg"] = 5089,	-- Balos Jacken
					["sourceQuest"] = 1286,	-- The Deserters (1/2)
					["coord"] = { 36, 54.2, DUSTWALLOW_MARSH },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
				}),
				q(27213, {	-- The End of the Deserters
					["qg"] = 23566,	-- Calia Hastings
					["sourceQuest"] = 27212,	-- Discrediting the Deserters
					["coord"] = { 68.3, 51.1, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(57832, {	-- Journeyman's Helm
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131657, {	-- Journeyman's Headguard
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(57853, {	-- Proudmoore Cloak
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(33249, {	-- Boots of the Skirmisher
							["timeline"] = { ADDED_2_3_0 },
						}),
						i(131658, {	-- Treads of the Skirmisher
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(11134, {	-- The End of the Deserters
					["qg"] = 23566,	-- Calia Hastings <SI:7>
					["sourceQuest"] = 11133,	-- Discrediting the Deserters
					["coord"] = { 68.3, 51.0, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_2_3_0, REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 32,
					["groups"] = {
						objective(1, {	-- Gavis Greyshield Captured
							["provider"] = { "n", 23941 },	-- Gavis Greyshield
							["coord"] = { 76.4, 56.8, DUSTWALLOW_MARSH },
						}),
						i(33274, {	-- Mercenary's Crossbow
							["timeline"] = { ADDED_2_3_0, REMOVED_4_0_3 },
						}),
						i(33232, {	-- Journeyman's Cowl
							["timeline"] = { ADDED_2_3_0, REMOVED_4_0_3 },
						}),
						i(33249, {	-- Boots of the Skirmisher
							["timeline"] = { ADDED_2_3_0 },
						}),
					},
				}),
				q(27409, {	-- The Essence of Enmity
					["qg"] = 23579,	-- Brogg
					["sourceQuest"] = 27407,	-- Bloodfen Feathers
					["coord"] = { 41.8, 73.9, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_4_0_3 },
				}),
				q(11161, {	-- The Essence of Enmity
					["qg"] = 23579,	-- Brogg <Stonemaul Survivor>
					["sourceQuest"] = 11158,	-- Bloodfen Feathers
					["coord"] = { 41.9, 74.0, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_2_3_0, REMOVED_4_0_3 },
					["lvl"] = 35,
					["groups"] = {
						objective(1, {	-- 0/10 Black Dragonkin Essence
							["providers"] = {
								{ "i", 33087 },	-- Black Dragonkin Essence
								{ "i", 33088 },	-- Brogg's Totem
							},
							["crs"] = {
								4331,	-- Firemane Ash Tail
								4329,	-- Firemane Scout
								4328,	-- Firemane Scalebane
							},
						}),
					},
				}),
				q(1955, {	-- The Exorcism
					["qg"] = 6546,	-- Tabetha
					["sourceQuest"] = 1954,	-- The Infernal Orb
					["coord"] = { 46, 57, DUSTWALLOW_MARSH },
					["timeline"] = { REMOVED_4_0_3 },
					["classes"] = { MAGE },
					["lvl"] = 35,
					["groups"] = {
						objective(1, {	-- 0/1 Demon of the Orb slain
							["provider"] = { "n", 6549 },	-- Demon of the Orb
						}),
					},
				}),
				q(27293, {	-- The Grimtotem Plot
					["qg"] = 4926,	-- Krog
					["sourceQuest"] = 27292,	-- Return to Krog
					["coord"] = { 36.4, 31.8, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				q(11201, {	-- The Grimtotem Plot
					["qg"] = 4926,	-- Krog
					["sourceQuest"] = 11204,	-- Return to Krog
					["coord"] = { 36.4, 31.8, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_2_3_0, REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 33,
					["groups"] = {
						objective(1, {	-- 0/1 Grimtotem Battle Plan
							["provider"] = { "i", 33051 },	-- Grimtotem Battle Plan
							["cost"] = {{ "i", 33050, 4 }},	-- Grimtotem Note
							["cr"] = 23714,	-- Grimtotem Elder
						}),
					},
				}),
				q(27336, {	-- The Grimtotem Weapon
					["qg"] = 23601,	-- Apprentice Garion
					["coord"] = { 46.0, 57.2, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_4_0_3 },
				}),
				q(11169, {	-- The Grimtotem Weapon
					["qg"] = 23601,	-- Apprentice Garion <Tabetha's Apprentice>
					["coord"] = { 46.0, 57.2, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_2_3_0, REMOVED_4_0_3 },
					["lvl"] = 35,
					["groups"] = {
						objective(1, {	-- Totem Tests Performed (10)
							["provider"] = { "i", 33101 },	-- Captured Totem
							["cr"] = 23811,	-- Captured Totem
						}),
					},
				}),
				q(27215, {	-- The Hermit of Swamplight Manor
					["qg"] = 23835,	-- Sergeant Amelyn
					["sourceQuest"] = 27213,	-- The End of the Deserters
					["coord"] = { 68.3, 51.9, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
				}),
				q(11177, {	-- The Hermit of Swamplight Manor
					["qg"] = 23835,	-- Sergeant Amelyn
					["sourceQuest"] = 11134,	-- The End of the Deserters
					["coord"] = { 68.3, 51.8, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_2_3_0, REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 30,
				}),
				q(27182, {	-- The Hermit of Witch Hill
					["qg"] = 4501,	-- Draz'Zilb
					["coord"] = { 37.1, 33.0, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,	-- for "Marsh Frog Legs"
				}),
				q(11225, {	-- The Hermit of Witch Hill
					["qg"] = 4501,	-- Draz'Zilb
					["coord"] = { 37.1, 33.1, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_2_3_0, REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 30,
				}),
				q(1954, {	-- The Infernal Orb
					["qg"] = 6546,	-- Tabetha
					["sourceQuest"] = 1953,	-- Return to the Marsh
					["coord"] = { 46, 57, DUSTWALLOW_MARSH },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { DESOLACE },
					["classes"] = { MAGE },
					["lvl"] = 35,
					["groups"] = {
						objective(1, {	-- 0/1 Infernal Orb
							["provider"] = { "i", 7291 },	-- Infernal Orb
							["coord"] = { 55.0, 77.8, DESOLACE },
							["cr"] = 4668,	-- Burning Blade Summoner
						}),
					},
				}),
				q(27244, {	-- The Lost Report
					["provider"] = { "o", 20985 },	-- Loose Dirt
					["coord"] = { 55.4, 25.9, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				q(1238, {	-- The Lost Report
					["providers"] = {
						{ "o", 20985 },	-- Loose Dirt
						{ "i", 5917 },	-- Spy's Report
					},
					["coord"] = { 55.4, 26, DUSTWALLOW_MARSH },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 30,
				}),
				q(1265, {	-- The Missing Diplomat (14/17)
					["qg"] = 4964,	-- Commander Samaul
					["sourceQuest"] = 1264,	-- The Missing Diplomat (13/17)
					["coord"] = { 68.0, 48.6, DUSTWALLOW_MARSH },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 28,
				}),
				q(1266, {	-- The Missing Diplomat (15/17)
					["qg"] = 4967,	-- Archmage Tervosh
					["sourceQuest"] = 1265,	-- The Missing Diplomat (14/17)
					["coord"] = { 66.4, 49.3, DUSTWALLOW_MARSH },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 28,
				}),
				q(1324, {	-- The Missing Diplomat (16/17)
					["qg"] = 4966,	-- Private Hendel
					["sourceQuest"] = 1266,	-- The Missing Diplomat (15/17)
					["coord"] = { 45.2, 24.6, DUSTWALLOW_MARSH },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 28,
				}),
				q(1267, {	-- The Missing Diplomat (17/17)
					["qg"] = 4968,	-- Lady Jaina Proudmoore
					["sourceQuest"] = 1324,	-- The Missing Diplomat (16/17)
					["coord"] = { 45.2, 24.2, DUSTWALLOW_MARSH },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 28,
					["groups"] = {
						i(6757, {	-- Jaina's Signet Ring
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_THREE, q(81764, {	-- The Mysterious Merchant
					["qg"] = 5492,	-- Katherine the Pure <Paladin Trainer>
					["sourceQuest"] = 81762,	-- Some Good News
					["coord"] = { 37.8, 31.6, STORMWIND_CITY },
					["classes"] = { PALADIN },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 44,
					["groups"] = {
						objective(1, {	-- Travel to Theramore and find the mysterious merchant.
							["provider"] = { "n", 221575 },	-- Elrick
							["coord"] = { 66.4, 45.4, DUSTWALLOW_MARSH },
						}),
					},
				})),
				-- #endif
				q(27246, {	-- The Orc Report
					["provider"] = { "o", 20985 },	-- Loose Dirt
					["coord"] = { 55.4, 25.9, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(1219, {	-- The Orc Report
					["providers"] = {
						{ "o", 20985 },	-- Loose Dirt
						{ "i", 5917 },	-- Spy's Report
					},
					["coord"] = { 55.4, 26, DUSTWALLOW_MARSH },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
				}),
				q(27339, {	-- The Reagent Thief
					["qg"] = 23601,	-- Apprentice Garion
					["coord"] = { 46.0, 57.2, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/6 Marsh Venom
							["provider"] = { "i", 33103 },	-- Marsh Venom
							["crs"] = {
								4348,	-- Noxious Shredder
								4412,	-- Darkfang Creeper
							},
						}),
						i(33273, {	-- Seasoned Marshwood Bow
							["timeline"] = { ADDED_2_3_0 },
						}),
						i(33260, {	-- Spellbound Cloak
							["timeline"] = { ADDED_2_3_0 },
						}),
						i(33244, {	-- The Wanderer's Cover
							["timeline"] = { ADDED_2_3_0 },
						}),
						i(131663, {	-- The Explorer's Coif
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(11173, {	-- The Reagent Thief
					["qg"] = 23601,	-- Apprentice Garion <Tabetha's Apprentice>
					["coord"] = { 46.0, 57.2, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_2_3_0, REMOVED_4_0_3 },
					["lvl"] = 35,
					["groups"] = {
						objective(1, {	-- 0/6 Marsh Venom
							["provider"] = { "i", 33103 },	-- Marsh Venom
							["crs"] = {
								4412,	-- Darkfang Creeper
								4348,	-- Noxious Shredder
							},
						}),
						i(33273, {	-- Seasoned Marshwood Bow
							["timeline"] = { ADDED_2_3_0 },
						}),
						i(33260, {	-- Spellbound Cloak
							["timeline"] = { ADDED_2_3_0 },
						}),
						i(33244, {	-- The Wanderer's Cover
							["timeline"] = { ADDED_2_3_0 },
						}),
					},
				}),
				q(1239, {	-- The Severed Head
					["providers"] = {
						{ "o", 20985 },	-- Loose Dirt
						{ "i", 5918 },	-- Defiant Orc Head
					},
					["sourceQuest"] = 1238,	-- The Lost Report
					["coord"] = { 55.4, 26, DUSTWALLOW_MARSH },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 30,
				}),
				q(1202, {	-- The Theramore Docks
					["qg"] = 4791,	-- Nazeer Bloodpike
					["sourceQuest"] = 1201,	-- Theramore Spies
					["coord"] = { 35.2, 30.6, DUSTWALLOW_MARSH },
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(30, 30, 15),
					["groups"] = {
						objective(1, {	-- 0/1 Captain's Documents
							["provider"] = { "i", 5882 },	-- Captain's Documents
							["coord"] = { 71.5, 51.1, DUSTWALLOW_MARSH },
						}),
					},
				}),
				q(1240, {	-- The Troll Witchdoctor
					["providers"] = {
						{ "n", 4791 },	-- Nazeer Bloodpike
						{ "i", 5918 },	-- Defiant Orc Head
					},
					["sourceQuest"] = 1239,	-- The Severed Head
					["coord"] = { 35.2, 30.6, DUSTWALLOW_MARSH },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { STRANGLETHORN_VALE },
					["races"] = HORDE_ONLY,
					["lvl"] = 30,
				}),
				q(27189, {	-- The Witch's Bane
					["qg"] = 23843,	-- Mordant Grimsby
					["sourceQuest"] = 27188,	-- What's Haunting Witch Hill?
					["coord"] = { 55.5, 26.1, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/9 Witchbane
							["providers"] = {
								{ "i", 33112 },	-- Witchbane
								{ "o", 186423 },	-- Witchbane
							},
						}),
					},
				}),
				q(11181, {	-- The Witch's Bane
					["qg"] = 23843,	-- Mordant Grimsby
					["sourceQuest"] = 11180,	-- What's Haunting Witch Hill?
					["coord"] = { 55.6, 26.1, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_2_3_0, REMOVED_4_0_3 },
					["lvl"] = 30,
					["groups"] = {
						objective(1, {	-- 0/9 Witchbane
							["providers"] = {
								{ "i",  33112 },	-- Witchbane
								{ "o", 186423 },	-- Witchbane
							},
						}),
					},
				}),
				q(27346, {	-- The Zeppelin Crash
					["qg"] = 23600,	-- Apprentice Morlann
					["coord"] = { 46.0, 57.4, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_4_0_3 },
					["isBreadcrumb"] = true,
				}),
				q(11172, {	-- The Zeppelin Crash
					["qg"] = 23600,	-- Apprentice Morlann <Tabetha's Apprentice>
					["coord"] = { 46.1, 57.4, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_2_3_0, REMOVED_4_0_3 },
					["isBreadcrumb"] = true,
					["lvl"] = 35,
				}),
				q(1201, {	-- Theramore Spies
					["qg"] = 4791,	-- Nazeer Bloodpike
					["coord"] = { 35.2, 30.6, DUSTWALLOW_MARSH },
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(30, 30, 15),
					["groups"] = {
						objective(1, {	-- 0/9 Theramore Infiltrator slain
							["provider"] = { "n", 4834 },	-- Theramore Infiltrator
						}),
					},
				}),
				q(27251, {	-- They Call Him Smiling Jim
					["qg"] = 4921,	-- Guard Byron
					["coord"] = { 66.0, 46.0, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
				}),
				q(1282, {	-- They Call Him Smiling Jim
					["qg"] = 4921,	-- Guard Byron
					["altQuests"] = { 1302 },	-- James Hyal (2/2)
					["coord"] = { 66, 46, DUSTWALLOW_MARSH },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					-- #if AFTER 2.3.0
					["isBreadcrumb"] = true,
					-- #endif
					["lvl"] = 30,
				}),
				q(27216, {	-- This Old Lighthouse
					["qg"] = 23835,	-- Sergeant Amelyn
					["coord"] = { 68.3, 51.9, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(11191, {	-- This Old Lighthouse
					["qg"] = 23835,	-- Sergeant Amelyn
					["coord"] = { 68.3, 51.8, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_2_3_0, REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
				}),
				q(27217, {	-- Thresher Oil
					["qg"] = 23892,	-- Babs Fizzletorque
					["sourceQuest"] = 27216,	-- This Old Lighthouse
					["coord"] = { 72.1, 47.1, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/4 Thresher Oil
							["provider"] = { "i", 33126 },	-- Thresher Oil
							["cr"] = 4388,	-- Young Murk Thresher
						}),
					},
				}),
				q(11192, {	-- Thresher Oil
					["qg"] = 23892,	-- Babs Fizzletorque
					["sourceQuest"] = 11191,	-- This Old Lighthouse
					["coord"] = { 72.1, 47.0, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_2_3_0, REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
					["groups"] = {
						objective(1, {	-- 0/4 Thresher Oil
							["provider"] = { "i", 33126 },	-- Thresher Oil
							["cr"] = 4388,	-- Young Murk Thresher
						}),
					},
				}),
				q(27210, {	-- Traitors Among Us
					["qg"] = 23566,	-- Calia Hastings
					["sourceQuests"] = {
						28552,	-- Hero's Call: Dustwallow Marsh
						26702,	-- Flight to Theramore
					},
					["coord"] = { 68.3, 51.1, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/5 Deserter Agitator Exposed
							["provider"] = { "n", 23602 },	-- Deserter Agitator
						}),
					},
				}),
				q(11126, {	-- Traitors Among Us
					["qg"] = 23566,	-- Calia Hastings <SI:7>
					["coord"] = { 68.3, 51.0, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_2_3_0, REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 32,
					["groups"] = {
						objective(1, {	-- 0/5 Deserter Agitator Exposed
							["provider"] = { "n", 23602 },	-- Deserter Agitator
						}),
					},
				}),
				q(6624, {	-- Triage [A]
					["qg"] = 12939,	-- Doctor Gustaf VanHowzen
					["sourceQuest"] = 6625,	-- Alliance Trauma
					["coord"] = { 67.7, 48.9, DUSTWALLOW_MARSH },
					["races"] = ALLIANCE_ONLY,
					-- #if AFTER BFA
					["description"] = "Needs a minimum of 225 skill in Tailoring.",
					["requireSkill"] = TAILORING,
					-- #else
					["description"] = "Needs a minimum of 225 skill in First Aid.",
					["requireSkill"] = FIRST_AID,
					-- #endif
					["lvl"] = lvlsquish(35, 35, 15),
					["groups"] = {
						objective(1, {	-- 0/15 Patients Saved
							["provider"] = { "i", 16991 },	-- Triage Bandage
							["crs"] = {
								12936,	-- Badly Injured Alliance Soldier
								12937,	-- Critically Injured Alliance Soldier
								12938,	-- Injured Alliance Soldier
							},
						}),
						recipe(10846, {	-- First Aid (Artisan)
							["rank"] = 4,
							["timeline"] = { REMOVED_3_1_0 },
						}),
						i(49193, {	-- Alliance Trauma Certification
							["timeline"] = { ADDED_3_2_0 },
						}),
					},
				}),
				q(9437, {	-- Twilight of the Dawn Runner
					["qg"] = 17095,	-- Balandar Brightstar
					["coord"] = { 35.9, 31.7, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_2_3_0 },
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(33, 33, 15),
					["groups"] = {
						objective(1, {	-- Rescue Ithania from North Point Tower
							["qg"] = 17119,	-- Ithania
							["coord"] = { 46.6, 24.5, DUSTWALLOW_MARSH },
						}),
						objective(2, {	-- 0/1 Dawn Runner Cargo
							["provider"] = { "i", 23657 },	-- Dawn Runner Cargo
							["coord"] = { 46.6, 24.3, DUSTWALLOW_MARSH },
						}),
						i(33269, {	-- Bejeweled Dagger
							["timeline"] = { ADDED_2_3_0, REMOVED_4_0_3 },
						}),
						i(33252, {	-- Gleaming Scale Breastplate
							["timeline"] = { ADDED_2_3_0, REMOVED_4_0_3 },
						}),
						i(33250, {	-- Archer's Wristguard
							["timeline"] = { ADDED_2_3_0 },
						}),
						i(57851, {	-- Swamp Gas Gauntlets
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131253, {	-- Archer's Chain Bracer
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(27243, {	-- Unleash the Raptors
					["qg"] = 23723,	-- Sergeant Lukas
					["sourceQuest"] = 27242,	-- Raptor Captor
					["coord"] = { 46.5, 22.9, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(33266, {	-- Book of the Adept
							["timeline"] = { ADDED_2_3_0 },
						}),
						i(33248, {	-- Crested Shoulderpads
							["timeline"] = { ADDED_2_3_0 },
						}),
						i(33265, {	-- Pendant of Ferocity
							["timeline"] = { ADDED_2_3_0 },
						}),
						i(131662, {	-- Crested Chain Epaulets
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(11147, {	-- Unleash the Raptors
					["qg"] = 23723,	-- Sergeant Lukas
					["sourceQuest"] = 11146,	-- Raptor Captor
					["coord"] = { 46.7, 23.1, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_2_3_0, REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 33,
					["groups"] = {
						objective(1, {	-- Raptors Released
							["provider"] = { "i", 33070 },	-- Raptor Bait
							["coord"] = { 41, 11, DUSTWALLOW_MARSH },
						}),
						i(33266, {	-- Book of the Adept
							["timeline"] = { ADDED_2_3_0 },
						}),
						i(33248, {	-- Crested Shoulderpads
							["timeline"] = { ADDED_2_3_0 },
						}),
						i(33265, {	-- Pendant of Ferocity
							["timeline"] = { ADDED_2_3_0 },
						}),
					},
				}),
				q(27412, {	-- WANTED: Goreclaw the Ravenous
					["provider"] = { "o", 186426 },	-- Wanted Poster
					["coord"] = { 41.7, 73.1, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/1 Goreclaw the Ravenous slain
							["provider"] = { "n", 23873 },	-- Goreclaw the Ravenous
						}),
						i(33258, {	-- Protective Engineer's Leggings
							["timeline"] = { ADDED_2_3_0 },
						}),
						i(131671, {	-- Raptorhide Chain Leggings
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(33242, {	-- Raptorhide Legguards
							["timeline"] = { ADDED_2_3_0 },
						}),
						i(33263, {	-- Raptor Eye Ring
							["timeline"] = { ADDED_2_3_0 },
						}),
					},
				}),
				q(11184, {	-- WANTED: Goreclaw the Ravenous
					["provider"] = { "o", 186426 },	-- Wanted Poster
					["coord"] = { 41.8, 73.1, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_2_3_0, REMOVED_4_0_3 },
					["lvl"] = 35,
					["groups"] = {
						objective(1, {	-- Goreclaw the Ravenous slain
							["provider"] = { "n", 23873 },	-- Goreclaw the Ravenous
							["coord"] = { 32.2, 65.7, DUSTWALLOW_MARSH },
						}),
						i(33258, {	-- Protective Engineer's Leggings
							["timeline"] = { ADDED_2_3_0 },
						}),
						i(33242, {	-- Raptorhide Legguards
							["timeline"] = { ADDED_2_3_0 },
						}),
						i(33263, {	-- Raptor Eye Ring
							["timeline"] = { ADDED_2_3_0 },
						}),
					},
				}),
				warchiefscommand(q(28554, {	-- Warchief's Command: Dustwallow Marsh!
					["timeline"] = { ADDED_4_0_3 },
					["maps"] = { ORGRIMMAR, THUNDER_BLUFF },	-- Only found in Orgrimmar & Thunder Bluff in Cataclysm.
					["isBreadcrumb"] = true,
					-- #if BEFORE 7.3.5
					-- Cataclysm: Minimum is level 34. (TODO: Confirm this.)
					-- Cataclysm: Maximum is level 38. (TODO: Test max level)
					["lvl"] = { 34, 38 },
					-- #endif
				})),
				-- #if BEFORE WRATH
				q(11222, {	-- Warn Bolvar! / Proof of Treachery [WRATH+]
					["qg"] = 4968,	-- Lady Jaina Proudmoore <Ruler of Theramore>
					["sourceQuest"] = 11142,	-- Survey Alcaz Island
					["coord"] = { 66.3, 49.0, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_2_3_0, REMOVED_3_0_2 },	-- Originally supposed to be removed in 4.0.3, but Wrath Classic was weird.
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 33,
				}),
				-- #endif
				q(27188, {	-- What's Haunting Witch Hill?
					["qg"] = 23843,	-- Mordant Grimsby
					["coord"] = { 55.5, 26.1, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/10 Information Gathered
							["provider"] = { "n", 23861 },	-- Restless Apparition
						}),
					},
				}),
				q(11180, {	-- What's Haunting Witch Hill?
					["qg"] = 23843,	-- Mordant Grimsby
					["coord"] = { 55.6, 26.1, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_2_3_0, REMOVED_4_0_3 },
					["lvl"] = 30,
					["groups"] = {
						objective(1, {	-- Information Gathered
							["provider"] = { "n", 23861 },	-- Restless Apparition
						}),
					},
				}),
			}),
			n(RARES, {
				n(50784, {	-- Anith
					["coord"] = { 32.6, 30.8, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_5_2_0 },
				}),
				n(50735, {	-- Blinkeye the Rattler
					["coord"] = { 51.6, 16.6, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_5_1_0 },
				}),
				n(4339, {	-- Brimgore
					-- #if AFTER CATA
					["coord"] = { 50.2, 75.8, DUSTWALLOW_MARSH },
					-- #else
					["coords"] = {
						{ 41.2, 75.2, DUSTWALLOW_MARSH },
						{ 43.6, 77.4, DUSTWALLOW_MARSH },
						{ 45.2, 81.8, DUSTWALLOW_MARSH },
					},
					-- #endif
				}),
				n(14230, {	-- Burgle Eye
					-- #if AFTER CATA
					["coords"] = {
						{ 57.8, 16.2, DUSTWALLOW_MARSH },
						{ 59.0, 8.4, DUSTWALLOW_MARSH },
						{ 62.8, 7.8, DUSTWALLOW_MARSH },
					},
					-- #else
					["coords"] = {
						{ 63.0, 7.2, DUSTWALLOW_MARSH },
						{ 59.6, 10.6, DUSTWALLOW_MARSH },
						{ 57.6, 17.6, DUSTWALLOW_MARSH },
						{ 62.8, 18.4, DUSTWALLOW_MARSH },
						{ 64.4, 28.6, DUSTWALLOW_MARSH },
					},
					-- #endif
				}),
				n(4380, {	-- Darkmist Widow
					-- #if AFTER CATA
					["coord"] = { 33.6, 22.8, DUSTWALLOW_MARSH },
					-- #else
					["coord"] = { 31.0, 20.6, DUSTWALLOW_MARSH },
					-- #endif
				}),
				n(14232, {	-- Dart
					-- #if AFTER CATA
					["coords"] = {
						{ 48.2, 14.2, DUSTWALLOW_MARSH },
						{ 47.4, 16.2, DUSTWALLOW_MARSH },
						{ 46.8, 17.6, DUSTWALLOW_MARSH },
						{ 48.0, 19.6, DUSTWALLOW_MARSH },
						{ 49.0, 18.4, DUSTWALLOW_MARSH },
						{ 49.0, 17.2, DUSTWALLOW_MARSH },
					},
					-- #else
					["coord"] = { 47.6, 18.6, DUSTWALLOW_MARSH },
					-- #endif
				}),
				o(202080, {	-- Dart's Nest
					["coords"] = {
						{ 47.9, 19.0, DUSTWALLOW_MARSH },
						{ 49.1, 17.5, DUSTWALLOW_MARSH },
						{ 48.0, 14.5, DUSTWALLOW_MARSH },
						{ 46.5, 17.2, DUSTWALLOW_MARSH },
					},
					["timeline"] = { ADDED_3_3_0 },
					["groups"] = {
						i(48112, {	-- Darting Hatchling (PET!)
							["timeline"] = { ADDED_3_2_0 },
						}),
					},
				}),
				n(14231, {	-- Drogoth the Roamer
					-- #if AFTER CATA
					["coords"] = {
						{ 39.8, 19.8, DUSTWALLOW_MARSH },
						{ 38.8, 19.8, DUSTWALLOW_MARSH },
						{ 39.6, 19.4, DUSTWALLOW_MARSH },
					},
					-- #else
					["coords"] = {
						{ 36.2, 13.6, DUSTWALLOW_MARSH },
						{ 39.4, 14.4, DUSTWALLOW_MARSH },
						{ 39.6, 21.2, DUSTWALLOW_MARSH },
						{ 42.2, 18.8, DUSTWALLOW_MARSH },
						{ 42.8, 22.0, DUSTWALLOW_MARSH },
					},
					-- #endif
				}),
				n(14234, {	-- Hayoc
					-- #if AFTER CATA
					["coords"] = {
						{ 48.0, 62.6, DUSTWALLOW_MARSH },
						{ 47.6, 61.6, DUSTWALLOW_MARSH },
						{ 48.8, 60.0, DUSTWALLOW_MARSH },
						{ 49.0, 61.6, DUSTWALLOW_MARSH },
					},
					-- #else
					["coords"] = {
						{ 54.8, 60.0, DUSTWALLOW_MARSH },
						{ 52.0, 63.6, DUSTWALLOW_MARSH },
						{ 52.0, 65.4, DUSTWALLOW_MARSH },
						{ 53.6, 66.2, DUSTWALLOW_MARSH },
						{ 55.6, 67.8, DUSTWALLOW_MARSH },
					},
					-- #endif
				}),
				n(50342, {	-- Heronis
					["coords"] = {
						{ 39.4, 28.6, DUSTWALLOW_MARSH },
						{ 40.2, 28.6, DUSTWALLOW_MARSH },
					},
					["timeline"] = { ADDED_5_2_0 },
				}),
				n(50957, {	-- Hugeclaw
					["coord"] = { 54.0, 43.8, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_5_2_0 },
				}),
				n(14236, {	-- Lord Angler
					-- #if AFTER CATA
					["coords"] = {
						{ 56.6, 62.2, DUSTWALLOW_MARSH },
						{ 56.6, 63.6, DUSTWALLOW_MARSH },
						{ 55.4, 63.6, DUSTWALLOW_MARSH },
					},
					-- #else
					["coord"] = { 55.8, 64.6, DUSTWALLOW_MARSH },
					-- #endif
				}),
				n(50875, {	-- Nychus
					["coord"] = { 34.3, 70.6, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_5_1_0 },
				}),
				n(14237, {	-- Oozeworm
					-- #if AFTER CATA
					["coord"] = { 37.0, 62.6, DUSTWALLOW_MARSH },
					-- #else
					["coords"] = {
						{ 39.8, 62.6, DUSTWALLOW_MARSH },
						{ 36.6, 62.6, DUSTWALLOW_MARSH },
						{ 36.0, 68.4, DUSTWALLOW_MARSH },
					},
					-- #endif
				}),
				n(50764, {	-- Paraliss
					["coord"] = { 38.6, 74.6, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_5_1_0 },
				}),
				n(14233, {	-- Ripscale
					-- #if AFTER CATA
					["coords"] = {
						{ 37.8, 50.4, DUSTWALLOW_MARSH },
						{ 43.8, 50.0, DUSTWALLOW_MARSH },
						{ 42.0, 54.8, DUSTWALLOW_MARSH },
						{ 47.6, 55.8, DUSTWALLOW_MARSH },
						{ 49.2, 57.2, DUSTWALLOW_MARSH },
					},
					-- #else
					["coords"] = {
						{ 37.8, 50.4, DUSTWALLOW_MARSH },
						{ 43.8, 50.2, DUSTWALLOW_MARSH },
						{ 42.6, 55.4, DUSTWALLOW_MARSH },
						{ 47.6, 54.8, DUSTWALLOW_MARSH },
						{ 50.0, 57.6, DUSTWALLOW_MARSH },
					},
					-- #endif
				}),
				n(51061, {	-- Roth-Salam
					["coord"] = { 50.2, 84.6, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_5_1_0 },
				}),
				n(51069, {	-- Scintillex
					["coord"] = { 55.8, 85.6, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_5_2_0 },
				}),
				n(50945, {	-- Scruff
					["coords"] = {
						{ 29.4, 43.4, DUSTWALLOW_MARSH },
						{ 29.6, 44.8, DUSTWALLOW_MARSH },
					},
					["timeline"] = { ADDED_5_2_0 },
				}),
				n(50901, {	-- Teromak
					["coords"] = {
						{ 41.8, 43.2, DUSTWALLOW_MARSH },
						{ 42.0, 42.0, DUSTWALLOW_MARSH },
						{ 41.4, 41.8, DUSTWALLOW_MARSH },
					},
					["timeline"] = { ADDED_5_2_0 },
				}),
				n(14235, {	-- The Rot
					-- #if AFTER CATA
					["coords"] = {
						{ 51.6, 59.4, DUSTWALLOW_MARSH },
						{ 51.6, 60.0, DUSTWALLOW_MARSH },
						{ 51.6, 61.0, DUSTWALLOW_MARSH },
					},
					-- #else
					["coords"] = {
						{ 51.2, 50.8, DUSTWALLOW_MARSH },
						{ 52.6, 51.6, DUSTWALLOW_MARSH },
						{ 53.6, 54.2, DUSTWALLOW_MARSH },
						{ 52.2, 57.4, DUSTWALLOW_MARSH },
						{ 52.0, 60.4, DUSTWALLOW_MARSH },
					},
					-- #endif
				}),
			}),
			n(VENDORS, {
				-- #if BEFORE CATA
				n(13476, {	-- Balai Lok'Wein <Potions, Scrolls and Reagents>
					["coord"] = { 36.4, 30.4, DUSTWALLOW_MARSH, },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(16084, {	-- Expert First Aid - Under Wraps (RECIPE!)
							["timeline"] = { REMOVED_3_1_0 },
							-- #if SEASON_OF_DISCOVERY
							["OnUpdate"] = [[function(t)
								if C_Seasons and C_Seasons.GetActiveSeason() == 2 then
									t.u = ]] .. SOD_PHASE_TWO .. [[;
								end
								t.OnUpdate = nil;
							end]],
							-- #endif
							["rank"] = 3,
						}),
						i(16112, {	-- Manual: Heavy Silk Bandage (RECIPE!)
							["timeline"] = { REMOVED_3_1_0 },
						}),
						i(16113, {	-- Manual: Mageweave Bandage (RECIPE!)
							["timeline"] = { REMOVED_3_1_0 },
						}),
					},
				}),
				-- #endif
				-- #if AFTER CATA
				n(4894, {	-- Craig Nollward <Cooking Trainer> [CATA+] / <Cook>
					["coord"] = { 66.8, 45.2, DUSTWALLOW_MARSH },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(21219),	-- Recipe: Sagefish Delight (RECIPE!)
						i(21099),	-- Recipe: Smoked Sagefish (RECIPE!)
					},
				}),
				-- #endif
				n(6567, {	-- Ghok'kah <Tailoring Supplies>
					["coord"] = { 35.2, 30.8, DUSTWALLOW_MARSH, },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(4355, {	-- Pattern: Icy Cloak
							["isLimited"] = true,
						}),
					},
				}),
				n(4885, {	-- Gregor MacVince <Horse Breeder>
					["coord"] = { 65.2, 51.4, DUSTWALLOW_MARSH },

					-- Available to Humans without faction requirements.
					["minReputation"] = { FACTION_STORMWIND, EXALTED },	-- Stormwind, Exalted.
					["OnInit"] = [[function(t)
						if _.RaceIndex == ]] .. HUMAN .. [[ then
							t.minReputation = nil;
						end
						return t;
					end]],
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(5656),	-- Brown Horse (MOUNT!)
						i(5655),	-- Chestnut Mare (MOUNT!)
						i(2414),	-- Pinto (MOUNT!)
						i(18777),	-- Swift Brown Steed (MOUNT!)
						i(18776),	-- Swift Palomino (MOUNT!)
						i(18778),	-- Swift White Steed (MOUNT!)
					},
				}),
				n(4886, {	-- Hans Weston <Armorer & Weaponsmith>
					["coord"] = { 64.6, 50.4, DUSTWALLOW_MARSH },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(12248, {	-- Daring Dirk
							["isLimited"] = true,
						}),
						i(12250, {	-- Midnight Axe
							["isLimited"] = true,
						}),
					},
				}),
				n(4897, {	-- Helenia Olden <Trade Supplies>
					["coord"] = { 66.4, 51.4, DUSTWALLOW_MARSH },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(21941, {	-- Design: Black Pearl Panther
							["timeline"] = { ADDED_2_0_1 },
							["isLimited"] = true,
						}),
						i(21943, {	-- Design: Truesilver Crab
							["timeline"] = { ADDED_2_0_1 },
							["isLimited"] = true,
						}),
						i(5789, {	-- Pattern: Murloc Scale Bracers (RECIPE!)
							["isLimited"] = true,
						}),
						i(12239),	-- Recipe: Dragonbreath Chili (RECIPE!)
						i(12233),	-- Recipe: Mystery Stew (RECIPE!)
						i(12228),	-- Recipe: Roast Raptor (RECIPE!)
					},
				}),
				n(4892, {	-- Jensen Farran <Hunter Trainer & Bowyer> [CATA+] / <Bowyer>
					["coord"] = { 67.8, 49.8, DUSTWALLOW_MARSH },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(11305, {	-- Dense Shortbow
							["isLimited"] = true,
						}),
					},
				}),
				n(53410, {	-- Lissah Spellwick <Enchanting Trainer & Supplies>
					["coord"] = { 66.0, 49.6, DUSTWALLOW_MARSH },
					["timeline"] = { ADDED_4_2_0 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(20753),	-- Formula: Lesser Wizard Oil (RECIPE!)
						i(20752),	-- Formula: Minor Mana Oil (RECIPE!)
						i(20758),	-- Formula: Minor Wizard Oil (RECIPE!)
						i(22307),	-- Pattern: Enchanted Mageweave Pouch
					},
				}),
				-- #if BEFORE CATA
				n(4888, {	-- Marie Holdston <Weaponsmith> / <Blacksmithing Trainer> [CATA+]
					["coord"] = { 64.6, 50.0, DUSTWALLOW_MARSH, },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(12248, {	-- Daring Dirk
							["isLimited"] = true,
						}),
						i(12250, {	-- Midnight Axe
							["isLimited"] = true,
						}),
					},
				}),
				n(12919, {	-- Nat Pagle
					["sourceQuest"] = 8227,	-- Nat's Measuring Tape
					["coord"] = { 58.6, 60.1, DUSTWALLOW_MARSH },
					["description"] = "He will only sell you the Mudskunk Lures once you have turned in Nat's Measuring Tape.",
					["groups"] = {
						i(19974),	-- Mudskunk Lure
					},
				}),
				-- #endif
				n(4879, {	-- Ogg'marr <Butcher>
					["coord"] = { 36.6, 31.0, DUSTWALLOW_MARSH },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(12232),	-- Recipe: Carrion Surprise (RECIPE!)
						i(12239),	-- Recipe: Dragonbreath Chili (RECIPE!)
						i(20075),	-- Recipe: Heavy Crocolisk Stew (RECIPE!)
						i(12228),	-- Recipe: Roast Raptor (RECIPE!)
					},
				}),
				n(4890, {	-- Piter Verance <Weaponsmith & Armorer>
					["coord"] = { 67.4, 47.8, DUSTWALLOW_MARSH },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(4817, {	-- Blessed Claymore
							["isLimited"] = true,
						}),
						i(4824, {	-- Blurred Axe
							["isLimited"] = true,
						}),
						i(4825, {	-- Callous Axe
							["isLimited"] = true,
						}),
						i(4818, {	-- Executioner's Sword
							["isLimited"] = true,
						}),
						i(4826, {	-- Marauder Axe
							["isLimited"] = true,
						}),
						i(4832, {	-- Mystic Sarong
							["isLimited"] = true,
						}),
						i(4830, {	-- Saber Leggings
							["isLimited"] = true,
						}),
						i(4831, {	-- Stalking Pants
							["isLimited"] = true,
						}),
						-- #if BEFORE 4.0.3
						i(4833, {	-- Glorious Shoulders
							["isLimited"] = true,
						}),
						i(4835, {	-- Elite Shoulders
							["isLimited"] = true,
						}),
						-- #endif
					},
				}),
				n(9552, {	-- Zanara <Bowyer>
					["coord"] = { 35.6, 30.2, DUSTWALLOW_MARSH, },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(11305, {	-- Dense Shortbow
							["isLimited"] = true,
						}),
					},
				}),
				n(4884, {	-- Zulrg <Weaponsmith>
					["coord"] = { 36.2, 31.6, DUSTWALLOW_MARSH, },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(12251, {	-- Big Stick
							["isLimited"] = true,
						}),
						i(12250, {	-- Midnight Axe
							["isLimited"] = true,
						}),
					},
				}),
			}),
			n(ZONE_DROPS, {
				i(10822, {	-- Dark Whelpling (PET!)
					["crs"] = {
						-- #if AFTER MOP
						4323,	-- Searing Hatchling
						-- #endif
						4324,	-- Searing Whelp
					},
				}),
				i(4639, {	-- Enchanted Sea Kelp
					["cr"] = 4363,	-- Mirefin Oracle
				}),
				i(5775, {	-- Pattern: Black Silk Pack
					["timeline"] = { REMOVED_4_0_3 },
					["cr"] = 4834,	-- Theramore Infiltrator
				}),
				i(12718, {	-- Plans: Runic Breastplate (RECIPE!)
					["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
					-- #if BEFORE 4.0.3
					["crs"] = {
						4368,	-- Strashaz Myrmidon
						16072,	-- Tidelord Rrurgaz
					},
					-- #elseif AFTER 10.1.7
					["description"] = "This recipe has a very low droprate & is recommend to farm from Spiny Rock Crabs, but can also drop from any other creature in the zone. Warning: This recipe binds to your character when looted.",
					["coords"] = {
						{ 70.2, 50.0, DUSTWALLOW_MARSH },
						{ 69.0, 47.0, DUSTWALLOW_MARSH },
						{ 67.6, 44.4, DUSTWALLOW_MARSH },
						{ 66.4, 43.4, DUSTWALLOW_MARSH },
						{ 65.4, 44.4, DUSTWALLOW_MARSH },
					},
					["crs"] = {
						44390,	-- Spiny Rock Crab
					},
					-- #endif
				}),
				-- #if BEFORE 4.3.0
				i(12714, {	-- Plans: Runic Plate Helm (RECIPE!)
					["cr"] = 4364,	-- Strashaz Warrior
				}),
				i(12706, {	-- Plans: Runic Plate Shoulders (RECIPE!)
					["cr"] = 4366,	-- Strashaz Serpent Guard
				}),
				-- #endif
				i(20766, {	-- Slimy Bag
					["crs"] = {
						4393,	-- Acidic Swamp Ooze
						4392,	-- Corrosive Swamp Ooze
						4391,	-- Swamp Ooze
					},
				}),
			}),
		},
	}),
}));
