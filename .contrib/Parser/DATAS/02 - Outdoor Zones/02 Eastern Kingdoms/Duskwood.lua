---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(EASTERN_KINGDOMS, {
	m(DUSKWOOD, {
		["lore"] = "Duskwood is a zone in Southern Eastern Kingdoms, warped and cursed due to the Scythe of Elune. Beneath the eternal blanket of darkness which gave Duskwood its current name, the Scythe's effects have transformed what was once a beautiful part of Elwynn Forest into a land covered in gnarled trees and inhabited by the hideous undead and extradimensional Worgen, brought along with the black fog hanging over the woods. Ogres moving in from Deadwind Pass have brought up even more problems.",
		["icon"] = 236757,
		["groups"] = {
			n(ACHIEVEMENTS, {
				explorationAch(778),	-- Explore Duskwood
				ach(4907, {	-- Duskwood Quests
					["timeline"] = { ADDED_4_0_3, REMOVED_5_0_4 },
					["races"] = ALLIANCE_ONLY,
					-- #if ANYCLASSIC
					["sourceQuests"] = {
						26674,	-- Mistmantle's Revenge
						26754,	-- Morbent's Bane
						26727,	-- The Embalmer's Revenge
						26797,	-- A Daughter's Love
						26686,	-- Bones That Walk
						26623,	-- Dusky Crab Cakes
						26620,	-- Seasoned Wolf Kabobs
						26691,	-- Worgen in the Woods
					},
					-- #endif
				}),
				ach(12430, {	-- Duskwood Quests
					["timeline"] = { ADDED_7_3_5 },
					["races"] = ALLIANCE_ONLY,
					-- #if ANYCLASSIC
					["sourceQuests"] = {
						26674,	-- Mistmantle's Revenge
						26754,	-- Morbent's Bane
						26727,	-- The Embalmer's Revenge
						26797,	-- A Daughter's Love
						26686,	-- Bones That Walk
						26623,	-- Dusky Crab Cakes
						26620,	-- Seasoned Wolf Kabobs
						26691,	-- Worgen in the Woods
					},
					-- #endif
				}),
			}),
			battlepets({
				["sym"] = {{"select","speciesID",
					646,	-- Chicken (PET!)
					385,	-- Mouse (PET!)
					378,	-- Rabbit (PET!)
					424,	-- Roach (PET!)
					419,	-- Small Frog (PET!)
					379,	-- Squirrel (PET!)
				}},
				["groups"] = {
					pet(398),	-- Black Rat (PET!)
					pet(396, {	-- Dusk Spiderling (PET!)
						["description"] = "Found commonly in the area around the given coordinate.",
						["coord"] = { 32.6, 51.6, DUSKWOOD },
					}),
					pet(399),	-- Rat Snake (PET!)
					pet(397),	-- Skunk (PET!)
					pet(400, {	-- Widow Spiderling (PET!)
						["description"] =
							-- #if BEFORE 5.1.0
							"Spawns during the night between 6:30pm to 6:30am realm time, but can be found as a secondary pet all day long.",
							-- #else
							"Spawns during the night between 6:30pm to 6:30am PST(US)/CEST(EU)/AEST(OCE), but can be found as a secondary pet all day long.",
							-- #endif
					}),
				},
			}),
			explorationHeader({
				exploration(536),	-- Addle's Stead
				exploration(576),	-- Beggar's Haunt
				exploration(242),	-- Brightwood Grove
				exploration(42),	-- Darkshire
				exploration(243),	-- Forlorn Rowe
				exploration(1098),	-- Manor Mistmantle
				exploration(94),	-- Raven Hill
				exploration(492),	-- Raven Hill Cemetery
				exploration(799),	-- The Darkened Bank
				exploration(1097),	-- The Hushed Bank
				exploration(241),	-- The Rotting Orchard
				exploration(245),	-- The Yorgen Farmstead
				exploration(121),	-- Tranquil Gardens Cemetery
				exploration(856),	-- Twilight Grove
				exploration(93),	-- Vul'Gol Ogre Mound
			}),
			n(FLIGHT_PATHS, {
				fp(12, {	-- Darkshire, Duskwood
					["cr"] = 2409,	-- Felicia Maline <Gryphon Master>
					["coord"] = { 77.6, 44.4, DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
				}),
				fp(622, {	-- Raven Hill, Duskwood
					["cr"] = 43697,	-- John Shelby <Gryphon Master>
					["coord"] = { 21.0, 56.6, DUSKWOOD },
					["timeline"] = { ADDED_4_0_1 },
					["races"] = ALLIANCE_ONLY,
				}),
			}),
			-- #if SEASON_OF_DISCOVERY
			spell(921, {	-- Pickpocketing
				["classes"] = { ROGUE },
				["groups"] = {
					applyclassicphase(SOD_PHASE_ONE, i(210250, {	-- Engraved Gold Ring
						["coord"] = { 23.3, 72.8, DUSKWOOD },
						["timeline"] = { REMOVED_2_0_1 },
						["classes"] = { ROGUE },
						["crs"] = {
							215,	-- Defias Night Runner
							909,	-- Defias Night Blade
						},
					})),
				},
			}),
			-- #endif
			n(QUESTS, {
				q(26720, {	-- A Curse We Cannot Lift
					["qg"] = 43730,	-- Oliver Harris
					["sourceQuest"] = 26719,	-- Delivery to Master Harris
					-- #if AFTER 7.0.3
					["description"] = "High-level players may require |cff0070ddSoft Foam Sword|r to lower creature health to 10%.",
					-- #endif
					["coord"] = { 18.3, 57.6, DUSKWOOD },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- Lurking Worgen captured
							["providers"] = {
								{ "n", 43814 },	-- Lurking Worgen
								{ "i", 60206 },	-- Harris's Ampule
							},
							["coord"] = { 21.6, 73.2, DUSKWOOD },
						}),
					},
				}),
				q(231, {	-- A Daughter's Love
					["providers"] = {
						{ "n", 576 },	-- Watcher Ladimore
						{ "i", 2162 },	-- Sarah's Ring
						{ "o", 61 },	-- A Weathered Grave
					},
					["sourceQuest"] = 229,	-- The Daughter Who Lived
					["coord"] = { 73.6, 46.8, DUSKWOOD },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 28,
					["groups"] = {
						i(2000, {	-- Archeus
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(26797, {	-- A Daughter's Love
					["providers"] = {
						{ "n", 576 },	-- Watcher Ladimore
						{ "i", 2162 },	-- Sarah's Ring
						{ "o", 61 },	-- A Weathered Grave
					},
					["sourceQuest"] = 26796,	-- The Daughter Who Lived
					["coord"] = { 73.6, 46.8, DUSKWOOD },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(156955, {	-- Reconditioned Archeus
							["timeline"] = { ADDED_7_3_5 },
						}),
						i(156954, {	-- Refurbished Archeus
							["timeline"] = { ADDED_7_3_5 },
						}),
						i(60937, {	-- Restored Archeus
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(26707, {	-- A Deadly Vine
					["qg"] = 43738,	-- Apprentice Fess
					["coord"] = { 44.9, 67.4, DUSKWOOD },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/5 Corpseweed
							["provider"] = { "i", 60204 },	-- Corpseweed
							["crs"] = {
								43732,	-- Corpseweed
								45785,	-- Carved One
							},
						}),
						i(60927, {	-- Cloak of Sanity
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(157003, {	-- Corpseweed Hewer
							["timeline"] = { ADDED_7_3_5 },
						}),
						i(60924, {	-- Corpseweed Sickle
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131587, {	-- Fess' Chain Apron
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(60925, {	-- Festering Bracers
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(60926, {	-- Potioner's Vest
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(337, {	-- An Old History Book
					["provider"] = { "i", 2794 },	-- An Old History Book
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
				}),
				q(1044, {	-- Answered Questions
					["qg"] = 661,	-- Jonathan Carevin
					["sourceQuest"] = 1043,	-- The Scythe of Elune
					["coord"] = { 75.3, 49.2, DUSKWOOD },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { DARNASSUS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 25,
					["groups"] = {
						i(5817, {	-- Lunaris Bow
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(5818, {	-- Moonbeam Wand
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(325, {	-- Armed and Ready
					["providers"] = {
						{ "n", 1416 },	-- Grimand Elmore
						{ "i", 7297 },	-- Morbent's Bane
					},
					["sourceQuest"] = 322,	-- Blessed Arm
					["coord"] = { 51.8, 12.1, STORMWIND_CITY },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
					["groups"] = {
						i(7297, {	-- Morbent's Bane
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(26787, {	-- Bear In Mind
					["qg"] = 288,	-- Jitters
					["sourceQuest"] = 26721,	-- The Jitters-Bugs
					["coord"] = { 18.6, 58.3, DUSKWOOD },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/8 Black Bear Brain
							["provider"] = { "i", 60334 },	-- Black Bear Brain
							["cr"] = 44016,	-- Coalpelt Bear
						}),
						i(60936, {	-- Jittering Band
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(60934, {	-- John's Stylish Robe
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131604, {	-- Raven Hill Boots
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(60935, {	-- Raven Hill Sands
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(322, {	-- Blessed Arm
					["providers"] = {
						{ "n", 1217 },	-- Glorin Steelbrow
						{ "i", 2712 },	-- Crate of Lightforge Ingots
					},
					["sourceQuests"] = {
						526,	-- Lightforge Ingots
						324,	-- The Lost Ingots
					},
					["coord"] = { 10.6, 60.5, WETLANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
				}),
				q(26686, {	-- Bones That Walk
					["qg"] = 264,	-- Commander Althea Ebonlocke
					["sourceQuest"] = 26645,	-- The Night Watch
					["coord"] = { 73.5, 46.9, DUSKWOOD },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/5 Skeletal Warrior slain
							["provider"] = { "n", 48 },	-- Skeletal Warrior
						}),
						objective(2, {	-- 0/5 Skeletal Mage slain
							["provider"] = { "n", 203 },	-- Skeletal Mage
						}),
						i(131581, {	-- Night Watcher's Mail
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(60941, {	-- Shoulderwraps of Honor
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(60943, {	-- Signet of the Night Watch
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(60942, {	-- Watch Master's Breastplate
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(253, {	-- Bride of the Embalmer
					["qg"] = 263,	-- Lord Ello Ebonlocke
					["sourceQuest"] = 252,	-- Translation to Ello
					["coord"] = { 71.9, 46.5, DUSKWOOD },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
					["groups"] = {
						q(254, {	-- Digging Through the Dirt
							["provider"] = { "o", 51708 },	-- Eliza's Grave Dirt
							["coord"] = { 28.8, 30.8, DUSKWOOD },
							["timeline"] = { REMOVED_4_0_3 },
							["repeatable"] = true,
							["groups"] = {
								objective(1, {	-- 0/1 The Embalmer's Heart
									["questID"] = 253,	-- Bride of the Embalmer
									["provider"] = { "i", 2382 },	-- The Embalmer's Heart
									["cr"] = 314,	-- Eliza <Bride of the Embalmer>
								}),
							},
						}),
						i(3560, {	-- Mantle of Honor
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(6223, {	-- Crest of Darkshire
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(26722, {	-- Buried Below
					["providers"] = {
						{ "o", 204824 },	-- Lightforged Arch
						{ "o", 204825 },	-- Lightforged Crest
					},
					["sourceQuest"] = 26753,	-- The Halls of the Dead
					["coord"] = { 20.3, 27.4, DUSKWOOD },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(26685, {	-- Classy Glass
					["qg"] = 276,	-- Viktori Prism'Antras
					["sourceQuest"] = 26684,	-- The Insane Ghoul
					["coord"] = { 79.5, 47.4, DUSKWOOD },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- Ogre's Monocle
							["provider"] = { "i", 1968 },	-- Ogre's Monocle
							["coord"] = { 37.6, 84.2, DUSKWOOD },
							["cr"] = 300,	-- Zzarc' Vul
						}),
						i(60909, {	-- Astronomer's Handwraps
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131580, {	-- Cosmologist's Grips
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(60908, {	-- Stargazer's Pantaloons
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(60910, {	-- Starry Band
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(26672, {	-- Clawing at the Truth
					["providers"] = {
						{ "n", 43453 },	-- Tobias Mistmantle
						{ "i", 3629 },	-- Mistmantle Family Ring
					},
					["sourceQuest"] = 26671,	-- The Fate of Stalvan Mistmantle
					["coord"] = { 79.0, 44.1, DUSKWOOD },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(26760, {	-- Cry For The Moon
					["qg"] = 43730,	-- Oliver Harris
					["sourceQuest"] = 26720,	-- A Curse We Cannot Lift
					["coord"] = { 18.3, 57.6, DUSKWOOD },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- Worgen cured
							["provider"] = { "n", 43950 },	-- Lurking Worgen
							["coord"] = { 18.6, 57.6, DUSKWOOD },
						}),
						i(60928, {	-- Consecrated Scepter
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131597, {	-- Curse Breaker's Bindings
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(60929, {	-- Moon Shriek Bracers
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(60930, {	-- Shield of Darkshire
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(157, {	-- Deliver the Thread
					["providers"] = {
						{ "n", 265 },	-- Madame Eva
						{ "i", 1596 },	-- Ghost Hair Thread
					},
					["sourceQuest"] = 154,	-- Return the Comb
					["coord"] = { 75.8, 45.3, DUSKWOOD },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
				}),
				q(26655, {	-- Deliver the Thread
					["providers"] = {
						{ "n", 265 },	-- Madame Eva
						{ "i", 1596 },	-- Ghost Hair Thread
					},
					["sourceQuest"] = 26654,	-- Return the Comb
					["coord"] = { 75.7, 45.2, DUSKWOOD },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(60900, {	-- Beggar's Belt
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(60901, {	-- Dirty Rotten Gloves
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(60899, {	-- Doublet of Deception
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131574, {	-- Drifter's Cinch
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(60898, {	-- Ghost Hair Band
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(164, {	-- Deliveries to Sven
					["providers"] = {
						{ "n", 633 },	-- Elaine Carevin
						{ "i", 1922 },	-- Supplies for Sven
					},
					["coord"] = { 75.3, 48.7, DUSKWOOD },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 17,
				}),
				q(26719, {	-- Delivery to Master Harris
					["providers"] = {
						{ "n", 43738 },	-- Apprentice Fess
						{ "i", 60205 },	-- Bundle of Corpseweed
					},
					["sourceQuest"] = 26717,	-- The Yorgen Worgen
					["coord"] = { 44.9, 67.4, DUSKWOOD },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(93, {	-- Dusky Crab Cakes
					["qg"] = 272,	-- Chef Grual
					["sourceQuest"] = 5,	-- Jitters' Growling Gut
					["coord"] = { 73.8, 43.5, DUSKWOOD },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = { { "i", 2251, 6 } },	-- Gooey Spider Leg
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 17,
					["groups"] = {
						i(3683),	-- Recipe: Gooey Spider Cake (RECIPE!)
					},
				}),
				q(26623, {	-- Dusky Crab Cakes
					["qg"] = 272,	-- Chef Grual
					["coord"] = { 73.7, 43.4, DUSKWOOD },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/6 Dusky Lump
							["provider"] = { "i", 60988 },	-- Dusky Lump
							["cr"] = 217,	-- Venom Web Spider
						}),
						i(3683),	-- Recipe: Gooey Spider Cake (RECIPE!)
					},
				}),
				q(245, {	-- Eight-Legged Menaces
					["qg"] = 888,	-- Watcher Dodds
					["coord"] = { 45.1, 67.0, DUSKWOOD },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 17,
					["groups"] = {
						i(3559, {	-- Night Watch Gauntlets
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(453, {	-- Finding the Shadowy Figure
					["providers"] = {
						{ "n", 273 },	-- Tavernkeep Smitts
						{ "i", 2161 },	-- Book from Sven's Farm
					},
					["sourceQuest"] = 266,	-- Inquire at the Inn
					["coord"] = { 73.8, 44.4, DUSKWOOD },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
				}),
				q(156, {	-- Gather Rot Blossoms
					["qg"] = 273,	-- Tavernkeep Smitts
					["sourceQuest"] = 158,	-- Zombie Juice
					["coord"] = { 73.8, 44.4, DUSKWOOD },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
					["groups"] = {
						objective(1, {	-- 0/8 Rot Blossom
							["provider"] = { "i", 1598 },	-- Rot Blossom
							["crs"] = {
								531,	-- Skeletal Fiend
								202,	-- Skeletal Horror
							},
						}),
					},
				}),
				q(26661, {	-- Gather Rot Blossoms
					["qg"] = 273,	-- Tavernkeep Smitts
					["sourceQuest"] = 26660,	-- Zombie Juice
					["coord"] = { 73.7, 44.4, DUSKWOOD },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/8 Rot Blossom
							["providers"] = {
								{ "i",  59345 },	-- Rot Blossom
								{ "o", 204457 },	-- Rot Blossom
							},
							["coord"] = { 79.6, 73.5, DUSKWOOD },
						}),
					},
				}),
				q(149, {	-- Ghost Hair Thread
					["providers"] = {
						{ "n", 265 },	-- Madame Eva
						{ "i", 1453 },	-- Spectral Comb
					},
					["sourceQuest"] = 148,	-- Supplies from Darkshire
					["coord"] = { 75.8, 45.3, DUSKWOOD },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
				}),
				q(26652, {	-- Ghost Hair Thread
					["providers"] = {
						{ "n", 265 },	-- Madame Eva
						{ "i", 1453 },	-- Spectral Comb
					},
					["sourceQuest"] = 26653,	-- Supplies from Darkshire
					["coord"] = { 75.8, 45.2, DUSKWOOD },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(133, {	-- Ghoulish Effigy
					["qg"] = 289,	-- Abercrombie
					["sourceQuest"] = 159,	-- Juice Delivery
					["coord"] = { 28.0, 31.5, DUSKWOOD },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
					["groups"] = {
						objective(1, {	-- 0/7 Ghoul Rib
							["provider"] = { "i", 884 },	-- Ghoul Rib
							["crs"] = {
								210,	-- Bone Chewer
								570,	-- Brain Eater
								3,		-- Flesh Eater
								604,	-- Plague Spreader
								948,	-- Rotted One
							},
						}),
					},
				}),
				q(26677, {	-- Ghoulish Effigy
					["qg"] = 289,	-- Abercrombie
					["sourceQuest"] = 26680,	-- Ogre Thieves
					["coord"] = { 87.4, 35.2, DUSKWOOD },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/7 Ghoul Rib
							["provider"] = { "i", 884 },	-- Ghoul Rib
							["cr"] = 1270,	-- Ghoul Rib
						}),
					},
				}),
				q(26725, {	-- Guided by the Light
					["qg"] = 43731,	-- Sister Elsington
					["sourceQuest"] = 26724,	-- The Lurking Lich
					["coord"] = { 20.0, 57.8, DUSKWOOD },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				heroscall(q(28564, {	-- Hero's Call: Duskwood!
					["timeline"] = { ADDED_4_0_3 },
					["maps"] = { STORMWIND_CITY },	-- Only found in Stormwind City in Cataclysm.
					["isBreadcrumb"] = true,
					-- #if BEFORE 7.3.5
					-- Cataclysm: Minimum is level 19. (TODO: Confirm this.)
					-- Cataclysm: Maximum is level 23. (TODO: Test max level between 22 and 32)
					["lvl"] = { 19, 23 },
					-- #endif
				})),
				q(26728, {	-- Hero's Call: Duskwood!
					["qg"] = 900,	-- Bailiff Conacher
					["coord"] = { 28.7, 40.9, REDRIDGE_MOUNTAINS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 19,
				}),
				q(26669, {	-- In A Dark Corner
					["qg"] = 267,	-- Clerk Daltry
					["sourceQuest"] = 26667,	-- The Stolen Letters
					["coord"] = { 72.4, 46.9, DUSKWOOD },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 A Torn Journal
							["providers"] = {
								{ "i",  59361 },	-- A Torn Journal
								{ "o", 204464 },	-- Pile of Scraps
							},
							["coord"] = { 66.5, 76.5, DUSKWOOD },
						}),
					},
				}),
				q(266, {	-- Inquire at the Inn
					["providers"] = {
						{ "n", 267 },	-- Clerk Daltry
						{ "i", 2161 },	-- Book from Sven's Farm
					},
					["sourceQuest"] = 265,	-- The Shadowy Search Continues
					["coord"] = { 72.6, 46.9, DUSKWOOD },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
				}),
				q(5, {	-- Jitters' Growling Gut
					["qg"] = 288,	-- Jitters
					["sourceQuest"] = 163,	-- Raven Hill
					["coord"] = { 18.2, 56.3, DUSKWOOD },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 17,
				}),
				q(159, {	-- Juice Delivery
					["providers"] = {
						{ "n", 273 },	-- Tavernkeep Smitts
						{ "i", 1451 },	-- Bottle of Zombie Juice
					},
					["sourceQuest"] = 156,	-- Gather Rot Blossoms
					["coord"] = { 73.8, 44.4, DUSKWOOD },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
				}),
				q(26676, {	-- Juice Delivery
					["providers"] = {
						{ "n", 273 },	-- Tavernkeep Smitts
						{ "i", 1451 },	-- Bottle of Zombie Juice
					},
					["sourceQuest"] = 26661,	-- Gather Rot Blossoms
					["coord"] = { 73.7, 44.4, DUSKWOOD },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(60902, {	-- Abercrombie's Gloves
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(60903, {	-- Old Man's Legwarmers
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131579, {	-- Retired Linked Pants
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(60904, {	-- Ring of the Fool
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(174, {	-- Look To The Stars (1/4)
					["qg"] = 276,	-- Viktori Prism'Antras
					["coord"] = { 79.8, 48.0, DUSKWOOD },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = { { "i", 4371, 1 } },	-- Bronze Tube
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
				}),
				q(175, {	-- Look To The Stars (2/4)
					["qg"] = 276,	-- Viktori Prism'Antras
					["sourceQuest"] = 174,	-- Look To The Stars (1/4)
					["coord"] = { 79.8, 48.0, DUSKWOOD },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
				}),
				q(177, {	-- Look To The Stars (3/4)
					["qg"] = 302,	-- Blind Mary
					["sourceQuest"] = 175,	-- Look To The Stars (2/4)
					["coord"] = { 81.9, 59.1, DUSKWOOD },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
					["groups"] = {
						objective(1, {	-- 0/1 Mary's Looking Glass
							["provider"] = { "i", 1946 },	-- Mary's Looking Glass
							["coord"] = { 80.8, 71.6, DUSKWOOD },
							["cr"] = 511,	-- Insane Ghoul
						}),
					},
				}),
				q(181, {	-- Look To The Stars (4/4)
					["qg"] = 276,	-- Viktori Prism'Antras
					["sourceQuest"] = 177,	-- Look To The Stars (3/4)
					["coord"] = { 79.8, 48.0, DUSKWOOD },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
					["groups"] = {
						objective(1, {	-- 0/1 Ogre's Monocle
							["provider"] = { "i", 1968 },	-- Ogre's Monocle
							["coord"] = { 37.0, 82.4, DUSKWOOD },
							["cr"] = 300,	-- Zzarc' Vul
						}),
						i(7107, {	-- Belt of the Stars
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(7106, {	-- Zodiac Gloves
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(26683, {	-- Look To The Stars
					["qg"] = 276,	-- Viktori Prism'Antras
					["sourceQuest"] = 26618,	-- Wolves at Our Heels
					["coord"] = { 79.5, 47.4, DUSKWOOD },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(26674, {	-- Mistmantle's Revenge
					["qg"] = 265,	-- Madame Eva
					["sourceQuest"] = 26672,	-- Clawing at the Truth
					["coord"] = { 75.8, 45.2, DUSKWOOD },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Stalvan Mistmantle slain
							["providers"] = {
								{ "n", 315 },	-- Stalvan Mistmantle
								{ "i", 59363 },	-- Mistmantle Family Ring
							},
							["coord"] = { 77.4, 36.2, DUSKWOOD },
						}),
						i(60919, {	-- Bracers of Forlorn Spirits
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(60920, {	-- Burden of Shame
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131578, {	-- Despondent Spirit Bindings
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(60918, {	-- Slippers of the Crescent Moon
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(60917, {	-- Stalvan's Cloak
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(228, {	-- Mor'Ladim
					["qg"] = 264,	-- Commander Althea Ebonlocke
					["sourceQuest"] = 227,	-- Morgan Ladimore
					["coord"] = { 73.6, 46.9, DUSKWOOD },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 28,
					["groups"] = {
						objective(1, {	-- 0/1 Mor'Ladim's Skull
							["provider"] = { "i", 3514 },	-- Mor'Ladim's Skull
							["coord"] = { 19.4, 34.6, DUSKWOOD },
							["cr"] = 522,	-- Mor'Ladim
						}),
					},
				}),
				q(26795, {	-- Mor'Ladim
					["qg"] = 264,	-- Commander Althea Ebonlocke
					["sourceQuest"] = 26794,	-- Morgan Ladimore
					["coord"] = { 73.5, 46.9, DUSKWOOD },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Mor'Ladim's Skull
							["provider"] = { "i", 3514 },	-- Mor'Ladim's Skull
							["coord"] = { 17.6, 36.8, DUSKWOOD },
							["cr"] = 522,	-- Mor'Ladim
						}),
					},
				}),
				q(55, {	-- Morbent Fel
					["qg"] = 311,	-- Sven Yorgen
					["sourceQuest"] = 325,	-- Armed and Ready
					["coord"] = { 7.8, 34.0, DUSKWOOD },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
					["groups"] = {
						objective(1, {	-- 0/1 Morbent's Bane
							["provider"] = { "i", 7297 },	-- Morbent's Bane
							["coord"] = { 17.4, 33.6, DUSKWOOD },
							["cr"] = 1200,	-- Morbent Fel
						}),
						i(2954, {	-- Night Watch Pantaloons
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(1282, {	-- Sparkmetal Coif
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(7344, {	-- Torch of Holy Flame
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(2953, {	-- Watch Master's Cloak
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(26754, {	-- Morbent's Bane
					["provider"] = { "o", 204825 },	-- Lightforged Crest
					["sourceQuest"] = 26722,	-- Buried Below
					["coord"] = { 18.0, 25.3, DUSKWOOD },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- Morbent Fel slain
							["providers"] = {
								{ "n", 43761 },	-- Morbent Fel
								{ "n", 43762 },	-- Weakened Morbent Fel
								{ "i", 60212 },	-- Morbent's Bane
							},
						}),
						i(60939, {	-- Ashen Gloves
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(60940, {	-- Felbane Belt
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(60938, {	-- Yorgen's Boon
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131596, {	-- Yorgen's Mitts
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(227, {	-- Morgan Ladimore
					["qg"] = 268,	-- Sirra Von'Indi
					["sourceQuest"] = 225,	-- The Weathered Grave
					["coord"] = { 72.6, 47.7, DUSKWOOD },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 28,
					["groups"] = {
						i(2154),	-- The Story of Morgan Ladimore
					},
				}),
				q(26794, {	-- Morgan Ladimore
					["qg"] = 268,	-- Sirra Von'Indi
					["sourceQuest"] = 26793,	-- The Weathered Grave
					["coord"] = { 72.6, 47.7, DUSKWOOD },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(2154),	-- The Story of Morgan Ladimore
					},
				}),
				q(160, {	-- Note to the Mayor
					["providers"] = {
						{ "n", 289 },	-- Abercrombie
						{ "i", 1637 },	-- Letter to Ello
					},
					["sourceQuest"] = 134,	-- Ogre Thieves
					["coord"] = { 28.0, 31.5, DUSKWOOD },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
				}),
				q(26681, {	-- Note to the Mayor
					["providers"] = {
						{ "n", 289 },	-- Abercrombie
						{ "i", 1637 },	-- Letter to Ello
					},
					["sourceQuest"] = 26677,	-- Ghoulish Effigy
					["coord"] = { 87.4, 35.2, DUSKWOOD },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(1372, {	-- Nothing But The Truth (1/4)
					["qg"] = 5418,	-- Deathstalker Zraedus
					["coord"] = { 87.6, 35.6, DUSKWOOD },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 37,
				}),
				q(1383, {	-- Nothing But The Truth (2/4)
					["qg"] = 5414,	-- Apothecary Faustin <Royal Apothecary Society>
					["sourceQuest"] = 1372,	-- Nothing But The Truth (1/4)
					["coord"] = { 87.4, 35.4, DUSKWOOD },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { DESOLACE, SWAMP_OF_SORROWS },
					["races"] = HORDE_ONLY,
					["lvl"] = 37,
					["groups"] = {
						objective(1, {	-- 0/5 Shadow Panther Heart
							["provider"] = { "i", 6080 },	-- Shadow Panther Heart
							["cr"] = 768,	-- Shadow Panther
						}),
						objective(2, {	-- 0/1 Mire Lord Fungus
							["provider"] = { "i", 6081 },	-- Mire Lord Fungus
							["cr"] = 1081,	-- Mire Lord
						}),
						objective(3, {	-- 0/1 Deepstrider Tumor
							["provider"] = { "i", 6082 },	-- Deepstrider Tumor
							["crs"] = {
								4686,	-- Deepstrider Giant
								4687,	-- Deepstrider Searcher
							},
						}),
						i(6832, {	-- Cloak of Blight
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(11265, {	-- Cragwood Maul
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(1388, {	-- Nothing But The Truth (3/4)
					["providers"] = {
						{ "n", 5414 },	-- Apothecary Faustin <Royal Apothecary Society>
						{ "i", 6086 },	-- Faustin's Truth Serum
					},
					["sourceQuest"] = 1383,	-- Nothing But The Truth (2/4)
					["coord"] = { 87.4, 35.4, DUSKWOOD },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 37,
				}),
				q(1391, {	-- Nothing But The Truth (4/4)
					["providers"] = {
						{ "n", 5418 },	-- Deathstalker Zraedus
						{ "i", 6089 },	-- Zraedus's Brew
					},
					["sourceQuest"] = 1388,	-- Nothing But The Truth (3/4)
					["coord"] = { 87.6, 35.6, DUSKWOOD },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 37,
				}),
				q(134, {	-- Ogre Thieves
					["qg"] = 289,	-- Abercrombie
					["sourceQuest"] = 133,	-- Ghoulish Effigy
					["coord"] = { 28.0, 31.5, DUSKWOOD },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
					["groups"] = {
						objective(1, {	-- 0/1 Abercrombie's Crate
							["providers"] = {
								{ "i", 1349 },	-- Abercrombie's Crate
								{ "o",  119 },	-- Abercrombie's Crate
							},
							["coord"] = { 33.5, 76.5, DUSKWOOD },
						}),
					},
				}),
				q(26680, {	-- Ogre Thieves
					["qg"] = 289,	-- Abercrombie
					["sourceQuest"] = 26676,	-- Juice Delivery
					["coord"] = { 87.4, 35.2, DUSKWOOD },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Abercrombie's Crate
							["providers"] = {
								{ "i", 1349 },	-- Abercrombie's Crate
								{ "o",  119 },	-- Abercrombie's Crate
							},
							["coord"] = { 33.4, 75.3, DUSKWOOD },
						}),
					},
				}),
				q(26785, {	-- Part of the Pack
					["qg"] = 43453,	-- Tobias Mistmantle
					["sourceQuest"] = 26674,	-- Mistmantle's Revenge
					["coord"] = { 79.0, 44.1, DUSKWOOD },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
				}),
				q(323, {	-- Proving Your Worth
					["qg"] = 311,	-- Sven Yorgen
					["sourceQuest"] = 268,	-- Return to Sven
					["coord"] = { 7.8, 34.0, DUSKWOOD },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
					["groups"] = {
						objective(1, {	-- 0/15 Skeletal Raider slain
							["provider"] = { "n", 1110 },	-- Skeletal Raider
						}),
						objective(2, {	-- 0/3 Skeletal Healer slain
							["provider"] = { "n", 787 },	-- Skeletal Healer
						}),
						objective(3, {	-- 0/3 Skeletal Warder slain
							["provider"] = { "n", 785 },	-- Skeletal Warder
						}),
					},
				}),
				q(163, {	-- Raven Hill
					["qg"] = 633,	-- Elaine Carevin
					["coord"] = { 75.3, 48.7, DUSKWOOD },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 17,
				}),
				q(154, {	-- Return the Comb
					["providers"] = {
						{ "n", 302 },	-- Blind Mary
						{ "i", 1518 },	-- Ghost Hair Comb
					},
					["sourceQuest"] = 149,	-- Ghost Hair Thread
					["coord"] = { 81.9, 59.1, DUSKWOOD },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
				}),
				q(26654, {	-- Return the Comb
					["providers"] = {
						{ "n", 302 },	-- Blind Mary
						{ "i", 1518 },	-- Ghost Hair Comb
					},
					["sourceQuest"] = 26652,	-- Ghost Hair Thread
					["coord"] = { 82.0, 59.3, DUSKWOOD },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(240, {	-- Return to Jitters
					["providers"] = {
						{ "n", 272 },	-- Chef Grual
						{ "i", 2250 },	-- Dusky Crab Cakes
					},
					["sourceQuest"] = 93,	-- Dusky Crab Cakes
					["coord"] = { 73.8, 43.5, DUSKWOOD },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 17,
				}),
				q(268, {	-- Return to Sven
					["providers"] = {
						{ "n", 288 },	-- Jitters
						{ "i", 2560 },	-- Jitters' Completed Journal
					},
					["sourceQuest"] = 453,	-- Finding the Shadowy Figure
					["coord"] = { 18.2, 56.3, DUSKWOOD },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
				}),
				q(26670, {	-- Roland's Doom
					["qg"] = 267,	-- Clerk Daltry
					["sourceQuest"] = 26669,	-- In A Dark Corner
					["coord"] = { 72.4, 46.9, DUSKWOOD },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Muddy Journal Pages
							["providers"] = {
								{ "i",    938 },	-- Muddy Journal Pages
								{ "o", 204591 },	-- Muddy Journal Page
							},
							["coord"] = { 73.7, 79.1, DUSKWOOD },
						}),
						i(60915, {	-- Daltry's Belt
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(156975, {	-- Exorcist's Dagger
							["timeline"] = { ADDED_7_3_5 },
						}),
						i(157002, {	-- Exorcist's Crossbow
							["timeline"] = { ADDED_7_3_5 },
						}),
						i(60914, {	-- Exorcist's Wand
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(60916, {	-- Roland's Legguards
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131577, {	-- The Clerk's Chain
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(90, {	-- Seasoned Wolf Kabobs
					["qg"] = 272,	-- Chef Grual
					["coord"] = { 73.8, 43.5, DUSKWOOD },
					-- #if BEFORE 4.0.3
					["description"] = "Buy the Stormwind Seasoning Herbs from Felicia Gump in Stormwind at 64.3, 60.5.",
					-- #endif
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = {
						{ "i", 1015, 10 },	-- Lean Wolf Flank
						{ "i", 2665, 1 },	-- Stormwind Seasoning Herbs
					},
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 18,
					["groups"] = {
						i(1017),	-- Seasoned Wolf Kabob
						i(2701),	-- Recipe: Seasoned Wolf Kabob (RECIPE!)
					},
				}),
				q(26620, {	-- Seasoned Wolf Kabobs
					["qg"] = 272,	-- Chef Grual
					["coord"] = { 73.7, 43.4, DUSKWOOD },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/5 Wolf Skirt Steak
							["provider"] = { "i", 60989 },	-- Wolf Skirt Steak
							["cr"] = 43704,	-- Dire Wolf
						}),
						i(2701),	-- Recipe: Seasoned Wolf Kabob (RECIPE!)
					},
				}),
				q(269, {	-- Seeking Wisdom
					["providers"] = {
						{ "n", 311 },	-- Sven Yorgen
						{ "i", 2560 },	-- Jitters' Completed Journal
					},
					["sourceQuest"] = 323,	-- Proving Your Worth
					["coord"] = { 7.8, 34.0, DUSKWOOD },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
				}),
				q(26777, {	-- Soothing Spirits
					["qg"] = 43731,	-- Sister Elsington
					["coord"] = { 20.0, 57.8, DUSKWOOD },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/5 Forlorn Spirit cleansed
							["providers"] = {
								{ "n", 43923 },	-- Forlorn Spirit
								{ "i", 60225 },	-- Holy Censer
							},
						}),
					},
				}),
				q(1395, {	-- Supplies for Nethergarde
					["providers"] = {
						{ "n", 5464 },	-- Watchmaster Sorigal
						{ "i", 6091 },	-- Crate of Power Stones
					},
					["sourceQuest"] = 1477,	-- Vital Supplies
					["coord"] = { 75.8, 46.2, DUSKWOOD },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { BLASTED_LANDS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 40,
				}),
				q(148, {	-- Supplies from Darkshire
					["qg"] = 289,	-- Abercrombie
					["sourceQuest"] = 165,	-- The Hermit
					["coord"] = { 28.0, 31.5, DUSKWOOD },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
				}),
				q(26653, {	-- Supplies from Darkshire
					["qg"] = 289,	-- Abercrombie
					["sourceQuest"] = 26627,	-- The Hermit
					["coord"] = { 87.4, 35.2, DUSKWOOD },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(230, {	-- Sven's Camp
					["providers"] = {
						{ "o", 59 },	-- Mound of loose dirt
						{ "i", 2161 },	-- Book from Sven's Farm
					},
					["sourceQuest"] = 95,	-- Sven's Revenge
					["coord"] = { 49.9, 77.7, DUSKWOOD },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
				}),
				q(95, {	-- Sven's Revenge
					["qg"] = 311,	-- Sven Yorgen
					["sourceQuest"] = 164,	-- Deliveries to Sven
					["coord"] = { 7.8, 34.0, DUSKWOOD },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
				}),
				q(1042, {	-- The Carevin Family
					["qg"] = 267,	-- Clerk Daltry
					["sourceQuest"] = 1041,	-- The Caravan Road
					["coord"] = { 72.6, 46.9, DUSKWOOD },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 25,
				}),
				q(26778, {	-- The Cries of the Dead
					["qg"] = 43731,	-- Sister Elsington
					["sourceQuest"] = 26760,	-- Cry For The Moon
					["coord"] = { 20.0, 57.8, DUSKWOOD },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/20 Ghoul slain
							["providers"] = {
								{ "n",  3 },	-- Flesh Eater
								{ "n", 210 },	-- Bone Chewer
								{ "n", 570 },	-- Brain Eater
								{ "n", 604 },	-- Plague Spreader
								{ "n", 948 },	-- Rotted One
							},
						}),
						i(60922, {	-- Aegis of Faith
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(60923, {	-- Ghoul-Hunter Leggings
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131600, {	-- Ghoul-Slayer Greaves
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(60921, {	-- Sister Elsington's Belt
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(229, {	-- The Daughter Who Lived
					["qg"] = 264,	-- Commander Althea Ebonlocke
					["sourceQuest"] = 228,	-- Mor'Ladim
					["coord"] = { 73.6, 46.9, DUSKWOOD },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 28,
				}),
				q(26796, {	-- The Daughter Who Lived
					["qg"] = 264,	-- Commander Althea Ebonlocke
					["sourceQuest"] = 26795,	-- Mor'Ladim
					["coord"] = { 73.5, 46.9, DUSKWOOD },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(270, {	-- The Doomed Fleet
					["qg"] = 1212,	-- Bishop Farthing
					["sourceQuest"] = 269,	-- Seeking Wisdom
					["coord"] = { 39.3, 27.9, STORMWIND_CITY },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
				}),
				q(26727, {	-- The Embalmer's Revenge
					["qg"] = 263,	-- Lord Ello Ebonlocke
					["sourceQuest"] = 26681,	-- Note to the Mayor
					["coord"] = { 71.9, 46.4, DUSKWOOD },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Stitches slain
							["provider"] = { "n", 43862 },	-- Stitches <Gift from the Embalmer>
						}),
						i(60905, {	-- Ello's Band
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(60907, {	-- Sparkmetal Bracers
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(3360, {	-- Stitches' Femur
							["timeline"] = { ADDED_10_1_7 },
						}),
						i(60906, {	-- Stitches' Stitchings
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(26723, {	-- The Fate of Morbent Fel
					["qg"] = 43861,	-- Sven Yorgen
					["sourceQuest"] = 26760,	-- Cry For The Moon
					["coord"] = { 18.3, 58.0, DUSKWOOD },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- Remains of Morbent Fel
							["provider"] = { "o", 204816 },	-- Bloodsoaked Hat
							["coord"] = { 17.0, 33.4, DUSKWOOD },
						}),
					},
				}),
				q(26671, {	-- The Fate of Stalvan Mistmantle
					["providers"] = {
						{ "n", 267 },	-- Clerk Daltry
						{ "i", 59362 },	-- The Legend of Stalvan
					},
					["sourceQuest"] = 26670,	-- Roland's Doom
					["coord"] = { 72.4, 46.9, DUSKWOOD },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(26753, {	-- The Halls of the Dead
					["providers"] = {
						{ "o", 204817 },	-- Lightforged Rod
						{ "o", 204824 },	-- Lightforged Arch
					},
					["sourceQuest"] = 26725,	-- Guided by the Light
					["coord"] = { 23.4, 35.4, DUSKWOOD },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(165, {	-- The Hermit
					["qg"] = 633,	-- Elaine Carevin
					["coord"] = { 75.3, 48.7, DUSKWOOD },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 17,
				}),
				q(26627, {	-- The Hermit
					["qg"] = 264,	-- Commander Althea Ebonlocke
					["sourceQuest"] = 26618,	-- Wolves at Our Heels
					["coord"] = { 73.5, 46.9, DUSKWOOD },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
				}),
				q(26684, {	-- The Insane Ghoul
					["qg"] = 302,	-- Blind Mary
					["sourceQuest"] = 26683,	-- Look To The Stars
					["coord"] = { 82.0, 59.3, DUSKWOOD },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Mary's Looking Glass
							["provider"] = { "i", 1946 },	-- Mary's Looking Glass
							["coord"] = { 80.4, 71.2, DUSKWOOD },
							["cr"] = 511,	-- Insane Ghoul
						}),
					},
				}),
				q(26721, {	-- The Jitters-Bugs
					["qg"] = 288,	-- Jitters
					["coord"] = { 18.6, 58.3, DUSKWOOD },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/8 Widow Venom Sac
							["provider"] = { "i", 60207 },	-- Widow Venom Sac
							["crs"] = {
								45582,	-- Black Widow
								930,	-- Black Widow Hatchling
							},
						}),
					},
				}),
				q(66, {	-- The Legend of Stalvan (1/13)
					["qg"] = 265,	-- Madame Eva
					["coord"] = { 75.8, 45.3, DUSKWOOD },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 22,
				}),
				q(67, {	-- The Legend of Stalvan (2/13)
					["qg"] = 267,	-- Clerk Daltry
					["sourceQuest"] = 66,	-- The Legend of Stalvan (1/13)
					["coord"] = { 72.6, 46.9, DUSKWOOD },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 22,
				}),
				q(68, {	-- The Legend of Stalvan (3/13)
					["providers"] = {
						{ "o", 3643 },	-- Old Footlocker
						{ "i", 889 },	-- A Dusty Unsent Letter
					},
					["sourceQuest"] = 67,	-- The Legend of Stalvan (2/13)
					["coord"] = { 41.5, 66.7, WESTFALL },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 22,
				}),
				q(69, {	-- The Legend of Stalvan (4/13)
					["qg"] = 267,	-- Clerk Daltry
					["sourceQuest"] = 68,	-- The Legend of Stalvan (3/13)
					["coord"] = { 72.6, 46.9, DUSKWOOD },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { ELWYNN_FOREST },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 22,
				}),
				q(70, {	-- The Legend of Stalvan (5/13)
					["qg"] = 295,	-- Innkeeper Farley
					["sourceQuest"] = 69,	-- The Legend of Stalvan (4/13)
					["coord"] = { 43.8, 65.9, ELWYNN_FOREST },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 22,
					["groups"] = {
						objective(1, {	-- 0/1 An Undelivered Letter
							["providers"] = {
								{ "i", 910 },	-- An Undelivered Letter
								{ "o", 1560 },	-- Storage Chest
							},
							["coord"] = { 44.2, 65.8, ELWYNN_FOREST },
						}),
					},
				}),
				q(72, {	-- The Legend of Stalvan (6/13)
					["qg"] = 297,	-- Caretaker Folsom
					["sourceQuest"] = 70,	-- The Legend of Stalvan (5/13)
					["coord"] = { 29.6, 61.9, STORMWIND_CITY },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 22,
				}),
				q(74, {	-- The Legend of Stalvan (7/13)
					["providers"] = {
						{ "o", 1561 },	-- Sealed Crate
						{ "i", 916 },	-- A Torn Journal Page
					},
					["sourceQuest"] = 72,	-- The Legend of Stalvan (6/13)
					["coord"] = { 29.6, 61.9, STORMWIND_CITY },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { ELWYNN_FOREST },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 22,
				}),
				q(75, {	-- The Legend of Stalvan (8/13)
					["qg"] = 294,	-- Marshal Haggard
					["sourceQuest"] = 74,	-- The Legend of Stalvan (7/13)
					["coord"] = { 84.6, 69.3, ELWYNN_FOREST },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 22,
					["groups"] = {
						objective(1, {	-- 0/1 A Faded Journal Page
							["providers"] = {
								{ "i", 921 },	-- A Faded Journal Page
								{ "o", 1562 },	-- Marshal Haggard's Chest
							},
							["coord"] = { 85.6, 69.6, ELWYNN_FOREST },
						}),
					},
				}),
				q(78, {	-- The Legend of Stalvan (9/13)
					["providers"] = {
						{ "n", 294 },	-- Marshal Haggard
						{ "i", 921 },	-- A Faded Journal Page
					},
					["sourceQuest"] = 75,	-- The Legend of Stalvan (8/13)
					["coord"] = { 84.6, 69.3, ELWYNN_FOREST },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 22,
				}),
				q(79, {	-- The Legend of Stalvan (10/13)
					["providers"] = {
						{ "n", 273 },	-- Tavernkeep Smitts
						{ "i", 938 },	-- Muddy Journal Pages
					},
					["sourceQuest"] = 78,	-- The Legend of Stalvan (9/13)
					["coord"] = { 73.8, 44.4, DUSKWOOD },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 22,
				}),
				q(80, {	-- The Legend of Stalvan (11/13)
					["providers"] = {
						{ "n", 264 },	-- Commander Althea Ebonlocke
						{ "i", 939 },	-- A Bloodstained Journal Page
					},
					["sourceQuest"] = 79,	-- The Legend of Stalvan (10/13)
					["coord"] = { 73.6, 46.9, DUSKWOOD },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 22,
				}),
				q(97, {	-- The Legend of Stalvan (12/13)
					["qg"] = 267,	-- Clerk Daltry
					["sourceQuest"] = 80,	-- The Legend of Stalvan (11/13)
					["coord"] = { 72.6, 46.9, DUSKWOOD },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 22,
				}),
				q(98, {	-- The Legend of Stalvan (13/13)
					["qg"] = 264,	-- Commander Althea Ebonlocke
					["sourceQuest"] = 97,	-- The Legend of Stalvan (12/13)
					["coord"] = { 73.6, 46.9, DUSKWOOD },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 22,
					["groups"] = {
						objective(1, {	-- 0/1 Mistmantle Family Ring
							["provider"] = { "i", 3629 },	-- Mistmantle Family Ring
							["coord"] = { 77.6, 34.8, DUSKWOOD },
							["cr"] = 315,	-- Stalvan Mistmantle
						}),
						i(2044, {	-- Crescent of Forlorn Spirits
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(2043, {	-- Ring of Forlorn Spirits
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(26666, {	-- The Legend of Stalvan
					["qg"] = 43453,	-- Tobias Mistmantle
					["coord"] = { 79.0, 44.1, DUSKWOOD },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(26724, {	-- The Lurking Lich
					["qg"] = 43861,	-- Sven Yorgen
					["sourceQuest"] = 26723,	-- The Fate of Morbent Fel
					["coord"] = { 18.3, 58.0, DUSKWOOD },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(56, {	-- The Night Watch (1/3)
					["qg"] = 264,	-- Commander Althea Ebonlocke
					["coord"] = { 73.6, 46.9, DUSKWOOD },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 18,
					["groups"] = {
						objective(1, {	-- 0/8 Skeletal Warrior slain
							["provider"] = { "n", 48 },	-- Skeletal Warrior
						}),
						objective(2, {	-- 0/6 Skeletal Mage slain
							["provider"] = { "n", 203 },	-- Skeletal Mage
						}),
					},
				}),
				q(57, {	-- The Night Watch (2/3)
					["qg"] = 264,	-- Commander Althea Ebonlocke
					["sourceQuest"] = 56,	-- The Night Watch (1/3)
					["coord"] = { 73.6, 46.9, DUSKWOOD },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 18,
					["groups"] = {
						objective(1, {	-- 0/15 Skeletal Fiend slain
							["provider"] = { "n", 531 },	-- Skeletal Fiend
						}),
						objective(2, {	-- 0/15 Skeletal Horror slain
							["provider"] = { "n", 202 },	-- Skeletal Horror
						}),
					},
				}),
				q(58, {	-- The Night Watch (3/3)
					["qg"] = 264,	-- Commander Althea Ebonlocke
					["sourceQuest"] = 57,	-- The Night Watch (2/3)
					["coord"] = { 73.6, 46.9, DUSKWOOD },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 18,
					["groups"] = {
						objective(1, {	-- 0/20 Plague Spreader slain
							["provider"] = { "n", 604 },	-- Plague Spreader
						}),
						i(3604, {	-- Bandolier of the Night Watch
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(1729, {	-- Gunnysack of the Night Watch
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(3605, {	-- Quiver of the Night Watch
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(26645, {	-- The Night Watch
					["qg"] = 264,	-- Commander Althea Ebonlocke
					["sourceQuest"] = 26618,	-- Wolves at Our Heels
					["coord"] = { 73.5, 46.9, DUSKWOOD },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/8 Rotting Horror slain
							["provider"] = { "n", 202 },	-- Rotting Horror
						}),
					},
				}),
				q(26689, {	-- The Rotting Orchard
					["qg"] = 663,	-- Calor
					["sourceQuest"] = 26688,	-- Worgen in the Woods
					["coord"] = { 75.3, 48.0, DUSKWOOD },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/10 Nightbane Shadow Weaver slain
							["provider"] = { "n", 533 },	-- Nightbane Shadow Weaver
						}),
					},
				}),
				q(1043, {	-- The Scythe of Elune
					["qg"] = 661,	-- Jonathan Carevin
					["sourceQuest"] = 1042,	-- The Carevin Family
					["coord"] = { 75.3, 49.2, DUSKWOOD },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 25,
					["groups"] = {
						objective(1, {	-- Find evidence of the Scythe of Elune
							["provider"] = { "o", 19030 },	-- Mound of Dirt
							["coord"] = { 73.7, 79.0, DUSKWOOD },
						}),
					},
				}),
				q(262, {	-- The Shadowy Figure
					["providers"] = {
						{ "n", 311 },	-- Sven Yorgen
						{ "i", 2161 },	-- Book from Sven's Farm
					},
					["sourceQuest"] = 230,	-- Sven's Camp
					["coord"] = { 7.8, 34.0, DUSKWOOD },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
				}),
				q(265, {	-- The Shadowy Search Continues
					["providers"] = {
						{ "n", 265 },	-- Madame Eva
						{ "i", 2161 },	-- Book from Sven's Farm
					},
					["sourceQuest"] = 262,	-- The Shadowy Figure
					["coord"] = { 75.8, 45.3, DUSKWOOD },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
				}),
				q(26667, {	-- The Stolen Letters
					["qg"] = 267,	-- Clerk Daltry
					["sourceQuest"] = 26666,	-- The Legend of Stalvan
					["coord"] = { 72.4, 46.9, DUSKWOOD },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 A Slashed Bundle of Letters
							["providers"] = {
								{ "i",  59357 },	-- A Slashed Bundle of Letters
								{ "o", 204462 },	-- Pile of Scraps
							},
							["coord"] = { 61.22, 40.51, DUSKWOOD },
						}),
						i(60911, {	-- Archivist's Lighter
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(156973, {	-- Archivist's Staff
							["timeline"] = { ADDED_7_3_5 },
						}),
						i(156974, {	-- Archivist's Walking Stick
							["timeline"] = { ADDED_7_3_5 },
						}),
						i(131575, {	-- Brightwood Gauntlets
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(60912, {	-- Cragwood Clutches
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(60913, {	-- Librarian's Cloak
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(101, {	-- The Totem of Infliction
					["qg"] = 265,	-- Madame Eva
					["coord"] = { 75.8, 45.3, DUSKWOOD },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 18,
					["groups"] = {
						objective(1, {	-- 0/10 Ghoul Fang
							["provider"] = { "i", 1129 },	-- Ghoul Fang
							["crs"] = {
								210,	-- Bone Chewer
								570,	-- Brain Eater
								1270,	-- Fetid Corpse
								3,		-- Flesh Eater
								604,	-- Plague Spreader
								948,	-- Rotted One
							},
						}),
						objective(2, {	-- 0/5 Vial of Spider Venom
							["provider"] = { "i", 1130 },	-- Vial of Spider Venom
							["crs"] = {
								930,	-- Black Widow Hatchling
								949,	-- Carrion Recluse
								569,	-- Green Recluse
								574,	-- Naraxis
								539,	-- Pygmy Venom Web Spider
								217,	-- Venom Web Spider
							},
						}),
						objective(3, {	-- 0/10 Skeleton Finger
							["provider"] = { "i", 2378 },	-- Skeleton Finger
							["crs"] = {
								531,	-- Skeletal Fiend
								787,	-- Skeletal Healer
								202,	-- Skeletal Horror
								203,	-- Skeletal Mage
								1110,	-- Skeletal Raider
								785,	-- Skeletal Warder
								48,		-- Skeletal Warrior
							},
						}),
						i(1131, {	-- Totem of Infliction
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(225, {	-- The Weathered Grave
					["provider"] = { "o", 61 },	-- A Weathered Grave
					["coord"] = { 17.7, 29.2, DUSKWOOD },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 28,
				}),
				q(26793, {	-- The Weathered Grave
					["provider"] = { "o", 61 },	-- A Weathered Grave
					["coord"] = { 17.7, 29.1, DUSKWOOD },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(26717, {	-- The Yorgen Worgen
					["qg"] = 43738,	-- Apprentice Fess
					["sourceQuest"] = 26785,	-- Part of the Pack
					["coord"] = { 44.9, 67.4, DUSKWOOD },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- Mound of Loose Dirt
							["providers"] = {
								{ "o", 204777 },	-- Mound of Loose Dirt
								{ "n",  43799 },	-- Lurking Worgen
							},
							["coord"] = { 49.8, 77.7, DUSKWOOD },
						}),
					},
				}),
				q(251, {	-- Translate Abercrombie's Note
					["providers"] = {
						{ "n", 263 },	-- Lord Ello Ebonlocke
						{ "i", 1637 },	-- Letter to Ello
					},
					["sourceQuest"] = 160,	-- Note to the Mayor
					["coord"] = { 71.9, 46.5, DUSKWOOD },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
				}),
				q(252, {	-- Translation to Ello
					["providers"] = {
						{ "n", 268 },	-- Sirra Von'Indi
						{ "i", 1656 },	-- Translated Letter
					},
					["sourceQuest"] = 401,	-- Wait for Sirra to Finish
					["coord"] = { 72.6, 47.7, DUSKWOOD },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
					["groups"] = {
						i(3248),	-- Translated Letter from The Embalmer
					},
				}),
				q(9429, {	-- Travel to Darkshire
					["qg"] = 17103,	-- Emissary Taluun
					["coord"] = { 78.2, 18.2, STORMWIND_CITY },
					["timeline"] = { ADDED_2_0_1, REMOVED_4_0_3 },
					["races"] = { DRAENEI },
					["lvl"] = 18,
				}),
				q(26690, {	-- Vile and Tainted
					["qg"] = 663,	-- Calor
					["sourceQuest"] = 26689,	-- The Rotting Orchard
					["coord"] = { 75.3, 48.0, DUSKWOOD },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/8 Nightbane Vile Fang slain
							["provider"] = { "n", 206 },	-- Nightbane Vile Fang
						}),
						objective(2, {	-- 0/8 Nightbane Tainted One slain
							["provider"] = { "n", 920 },	-- Nightbane Tainted One
						}),
					},
				}),
				q(1477,	{	-- Vital Supplies
					["qg"] = 5694,	-- High Sorcerer Andromath
					["coord"] = { 37.6, 81.6, STORMWIND_CITY },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 40,
				}),
				q(25235, {	-- Vulgar Vul'Gol
					["qg"] = 888,	-- Watcher Dodds
					["coord"] = { 45.1, 67.0, DUSKWOOD },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/15 Splinter Fist Ogre slain
							["providers"] = {
								{ "n", 212 },	-- Splinter Fist Warrior
								{ "n", 891 },	-- Splinter Fist Fire Weaver
								{ "n", 1251 },	-- Splinter Fist Firemonger
								{ "n", 889 },	-- Splinter Fist Ogre
								{ "n", 892 },	-- Splinter Fist Taskmaster
							},
						}),
					},
				}),
				q(401, {	-- Wait for Sirra to Finish
					["qg"] = 268,	-- Sirra Von'Indi
					["sourceQuest"] = 251,	-- Translate Abercrombie's Note
					["coord"] = { 72.6, 47.7, DUSKWOOD },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
				}),
				q(226, {	-- Wolves at Our Heels
					["qg"] = 893,	-- Lars
					["coord"] = { 7.7, 33.4, DUSKWOOD },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 19,
					["groups"] = {
						objective(1, {	-- 0/12 Starving Dire Wolf slain
							["provider"] = { "n", 213 },	-- Starving Dire Wolf
						}),
						objective(2, {	-- 0/8 Rabid Dire Wolf slain
							["provider"] = { "n", 565 },	-- Rabid Dire Wolf
						}),
						i(1127),	-- Flash Bundle
					},
				}),
				q(26618, {	-- Wolves at Our Heels
					["qg"] = 264,	-- Commander Althea Ebonlocke
					["coord"] = { 73.5, 46.9, DUSKWOOD },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["sourceQuests"] = {
						28564,	-- Hero's Call: Duskwood!
						26728,	-- Hero's Call: Duskwood!
					},
					["groups"] = {
						objective(1, {	-- 0/12 Dire Wolf slain
							["provider"] = { "n", 43704 },	-- Dire Wolf
						}),
						i(60895, {	-- Ebonlocke Band
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(60896, {	-- Night Watch Vest
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(60897, {	-- Night Watch Boots
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131564, {	-- Night Watch Hauberk
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(1127),	-- Flash Bundle
					},
				}),
				q(173, {	-- Worgen in the Woods (1/4)
					["qg"] = 663,	-- Calor
					["coord"] = { 75.3, 48.0, DUSKWOOD },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 23,
					["groups"] = {
						objective(1, {	-- 0/6 Nightbane Shadow Weaver
							["provider"] = { "n", 533 },	-- Nightbane Shadow Weaver
						}),
					},
				}),
				q(221, {	-- Worgen in the Woods (2/4)
					["qg"] = 663,	-- Calor
					["sourceQuest"] = 173,	-- Worgen in the Woods (1/4)
					["coord"] = { 75.3, 48.0, DUSKWOOD },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 23,
					["groups"] = {
						objective(1, {	-- 0/12 Nightbane Dark Runner
							["provider"] = { "n", 205 },	-- Nightbane Dark Runner
						}),
					},
				}),
				q(222, {	-- Worgen in the Woods (3/4)
					["qg"] = 663,	-- Calor
					["sourceQuest"] = 221,	-- Worgen in the Woods (2/4)
					["coord"] = { 75.3, 48.0, DUSKWOOD },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 23,
					["groups"] = {
						objective(1, {	-- 0/8 Nightbane Vile Fang
							["provider"] = { "n", 206 },	-- Nightbane Vile Fang
						}),
						objective(2, {	-- 0/8 Nightbane Tainted One
							["provider"] = { "n", 920 },	-- Nightbane Tainted One
						}),
					},
				}),
				q(223, {	-- Worgen in the Woods (4/4)
					["providers"] = {
						{ "n", 663 },	-- Calor
						{ "i", 2113 },	-- Calor's Note
					},
					["sourceQuest"] = 222,	-- Worgen in the Woods (3/4)
					["coord"] = { 75.3, 48.0, DUSKWOOD },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 23,
					["groups"] = {
						i(2902, {	-- Cloak of the Faith
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(1547, {	-- Shield of the Faith
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(5244, {	-- Consecrated Wand
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(26688, {	-- Worgen in the Woods (1/2)
					["qg"] = 663,	-- Calor
					["coord"] = { 75.3, 48.0, DUSKWOOD },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/7 Nightbane Worgen
							["provider"] = { "n", 898 },	-- Nightbane Worgen
						}),
					},
				}),
				q(26691, {	-- Worgen in the Woods (2/2)
					["providers"] = {
						{ "n", 663 },	-- Calor
						{ "i", 2113 },	-- Calor's Note
					},
					["sourceQuest"] = 26690,	-- Vile and Tainted
					["coord"] = { 75.3, 48.0, DUSKWOOD },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(60931, {	-- Vigilante's Gloves
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(60932, {	-- Cold Boots
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(60933, {	-- Carevin's Breastplate
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131582, {	-- Callous Greaves
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(158, {	-- Zombie Juice
					["qg"] = 289,	-- Abercrombie
					["sourceQuest"] = 157,	-- Deliver the Thread
					["coord"] = { 28.0, 31.5, DUSKWOOD },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
				}),
				q(26660, {	-- Zombie Juice
					["qg"] = 289,	-- Abercrombie
					["sourceQuest"] = 26655,	-- Deliver the Thread
					["coord"] = { 87.4, 35.2, DUSKWOOD },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
			}),
			n(RARES, {
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_ONE, n(212261, {	-- Awakened Lich
					["providers"] = {
						{ "i", 210568 },	-- Decrepit Phylactery
						{ "o", 411328 },	-- Slumbering Bones
					},
					["coord"] = { 18.0, 38.6, DUSKWOOD },
					["groups"] = {
						i(210569, {	-- Rune of Flagellation
							["classes"] = { WARRIOR },
							["groups"] = {
								recipe(403480),	-- Engrave Chest - Flagellation
							},
						}),
						i(211514, {	-- Spell Notes: Mass Regeneration
							["classes"] = { MAGE },
							["groups"] = {
								recipe(415939),	-- Engrave Pants - Mass Regeneration
							},
						}),
					},
				})),
				-- #endif
				n(45785, {	-- Carved One
					["coords"] = {	-- pats in a circle, coords not exhaustive
						{ 48.4, 70.4, DUSKWOOD },
						{ 47.6, 73.0, DUSKWOOD },
						{ 50.6, 72.8, DUSKWOOD },
						{ 49.4, 75.6, DUSKWOOD },
					},
					["timeline"] = { ADDED_4_0_3 },
				}),
				n(771, {  -- Commander Felstrom
					["description"] =
						-- #if AFTER 10.1.7
						"Wanders the Raven Hill Cemetary, spawns at the given coordinate.",
						-- #else
						"Spawns in the Dawning Wood Catacombs.",
						-- #endif
					["coords"] = {
						-- #if AFTER 10.1.7
						{ 21.8, 34.0, DUSKWOOD },
						-- #else
						{ 18.0, 38.0, DUSKWOOD },
						-- #endif
					},
					["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
					["groups"] = {
						i(4465, {	-- Bonefist Gauntlets [Classic] / Felstrom's Gauntlets [Wrath+]
							["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
						}),
						i(4464, {	-- Trouncing Boots
							["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
						}),
					},
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_TWO, n(218931, {	-- Dark Rider
					["provider"] = { "i", 216941 },	-- Ariden's Sigil
					["coord"] = { 23, 47, DUSKWOOD },
					["groups"] = {
						i(216946),	-- Glittering Dalaran Relic
					},
				})),
				-- #endif
				n(45801, {	-- Eliza <Bride of the Embalmer>
					["coord"] = { 27.6, 31.6, DUSKWOOD },
					["timeline"] = { ADDED_4_0_3 },
				}),
				n(507, {	-- Fenros
					["description"] =
						-- #if BEFORE 4.0.3
						"Patrols between the coordinates.",
						-- #else
						"Spawns in one of multiple locations in Brightwood Grove, and can either be stationary or patrolling.",
						-- #endif
					["coords"] = {
						-- #if BEFORE 4.0.3
						{ 59.8, 26.8, DUSKWOOD },
						{ 63.8, 51.6, DUSKWOOD },
						-- #else
						{ 58.4, 29.8, DUSKWOOD },
						{ 62.0, 37.2, DUSKWOOD },
						{ 60.6, 40.5, DUSKWOOD },
						{ 61.8, 41.0, DUSKWOOD },
						{ 63.0, 43.2, DUSKWOOD },
						{ 61.2, 45.2, DUSKWOOD },
						{ 64.4, 47.8, DUSKWOOD },
						{ 64.0, 51.2, DUSKWOOD },
						-- #endif
					},
					["groups"] = {
						i(4474, {	-- Ravenwood Bow
							["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
						}),
						i(6204, {	-- Tribal Worg Helm
							["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
						}),
					},
				}),
				n(91592, {	-- Forlorn Composer
					["description"] = "Travel to the northeast corner of Raven Hill Cemetery. Getting this music roll requires speaking to Forlorn Composer while you are dead. The easiest way to do this is to fly up very high and dismount (removing armor first will avoid repair charges).",
					["coord"] = { 23.7, 36.3, DUSKWOOD },
					["timeline"] = { ADDED_6_1_0 },
					["groups"] = {
						i(122223, {	-- Music Roll: Ghost
							["timeline"] = { ADDED_6_1_0 },
						}),
					},
				}),
				n(503, {  -- Lord Malathrom
					["description"] =
						-- #if AFTER 10.1.7
						"Spawns in one of multiple locations in the Dawning Wood Catacombs.",
						-- #else
						"Spawns in the Dawning Wood Catacombs.",
						-- #endif
					["coords"] = {
						-- #if AFTER 10.1.7
						{ 24.2, 34.5, DUSKWOOD },
						{ 25.6, 30.2, DUSKWOOD },
						{ 20.3, 26.8, DUSKWOOD },
						-- #else
						{ 25.6, 30.2, DUSKWOOD },
						-- #endif
					},
					["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
					["groups"] = {
						i(4462, {	-- Cloak of Rot
							["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
						}),
						i(1187, {	-- Spiked Collar
							["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
						}),
					},
				}),
				n(521, {  -- Lupos
					["description"] =
						-- #if AFTER 4.0.3
						"Spawns in one of multiple locations at the eastern end of the Darkened Bank.",
						-- #else
						"Spawns randomly in the north-east area of the zone.",
						-- #endif
					["coords"] = {
						-- #if AFTER 4.0.3
						{ 60.8, 20.6, DUSKWOOD },
						{ 65.6, 19.6, DUSKWOOD },
						{ 70.2, 24.4, DUSKWOOD },
						-- #else
						{ 20.0, 25.4, DUSKWOOD },
						{ 38.4, 26.2, DUSKWOOD },
						{ 60.2, 24.4, DUSKWOOD },
						{ 71.0, 24.4, DUSKWOOD },
						-- #endif
					},
					["groups"] = {
						i(3018, {	-- Hide of Lupos
							["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
						}),
						i(3227, {	-- Nightbane Staff
							["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
						}),
					},
				}),
				n(45811, {	-- Marina DeSirrus
					["coord"] = { 7.80, 34.2, DUSKWOOD },
					["timeline"] = { ADDED_4_0_3 },
					-- #if AFTER 10.1.7
					["groups"] = {
						i(920, {	-- Wicked Spiked Mace
							["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
						}),
					},
					-- #endif
				}),
				n(45771, {	-- Marus
					["coords"] = {
						{ 65.2, 68.0, DUSKWOOD },
						{ 63.2, 70.6, DUSKWOOD },
						{ 61.8, 73.4, DUSKWOOD },
						{ 61.0, 74.6, DUSKWOOD },
						{ 60.8, 81.4, DUSKWOOD },
					},
					["timeline"] = { ADDED_4_0_3 },
				}),
				n(574, {  -- Naraxis
					["coords"] = {
						-- #if AFTER 4.0.3
						{ 86.4, 47.3, DUSKWOOD },
						-- #else
						{ 86.6, 49.6, DUSKWOOD },
						-- #endif
					},
					["groups"] = {
						i(4448, {	-- Husk of Naraxis
							["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
						}),
						i(4449, {	-- Naraxis' Fang
							["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
						}),
					},
				}),
				n(534, {  -- Nefaru
					-- #if BEFORE 4.0.3
					["description"] = "Spawns randomly in the south and south-eastern part of the zone.",
					-- #endif
					["coords"] = {
						-- #if AFTER 4.0.3
						{ 74.0, 78.6, DUSKWOOD },
						-- #else
						{ 63.6, 82.4, DUSKWOOD },
						-- #endif
					},
					["groups"] = {
						i(4476, {	-- Beastwalker Robe
							["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
						}),
						i(4477, {	-- Nefarious Buckler
							["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
						}),
					},
				}),
				n(45739, {	-- The Unknown Soldier
					["coord"] = { 90.6, 30.6, DUSKWOOD },
					["timeline"] = { ADDED_4_0_3 },
				}),
				n(45740, {	-- Watcher Eva
					["coords"] = {
						{ 81.4, 59.0, DUSKWOOD },
						{ 80.8, 62.4, DUSKWOOD },
						{ 80.8, 65.4, DUSKWOOD },
						{ 80.8, 68.2, DUSKWOOD },
						{ 79.8, 70.6, DUSKWOOD },
					},
					["timeline"] = { ADDED_4_0_3 },
				}),
			}),
			-- #if SEASON_OF_DISCOVERY
			n(TREASURES, {
				applyclassicphase(SOD_PHASE_ONE, i(209849, {	-- Crimes Against Anatomy
					["provider"] = { "o", 409735 },	-- Spellbook
					["coord"] = { 16.7, 28.5, DUSKWOOD },
				})),
				applyclassicphase(SOD_PHASE_ONE, i(210568, {	-- Decrepit Phylactery
					["provider"] = { "o", 411348 },	-- Dusty Coffer
					["description"] = "Go into the northeastern crypt (23.6, 35.0), head down, and take a left into the first big room (approximately 26.0, 30.9).",
					["coord"] = { 26.0, 31.0, DUSKWOOD },
				})),
				applyclassicphase(SOD_PHASE_ONE, i(210251, {	-- Engraved Silver Ring
					["provider"] = { "o", 410779 },	-- Offering Box
					["coord"] = { 81.0, 71.0, DUSKWOOD },
					["timeline"] = { REMOVED_2_0_1 },
					["classes"] = { ROGUE },
				})),
				applyclassicphase(SOD_PHASE_ONE, i(210252, {	-- Rune of Shiving
					["providers"] = {
						--{ "o",  },	-- TODO: Find ObjectID
						{ "i", 210250 },	-- Engraved Gold Ring
						{ "i", 210251 },	-- Engraved Silver Ring
					},
					["description"] = "With both rings, /kneel in front of the statue in the middle of Raven Hill Cemetary.",
					["coord"] = { 19.9, 45.5, DUSKWOOD },
					["timeline"] = { REMOVED_2_0_1 },
					["classes"] = { ROGUE },
					["groups"] = {
						recipe(424988),	-- Engrave Gloves - Shiv
					},
				})),
			}),
			-- #endif
			n(VENDORS, {
				n(228, {	-- Avette Fellwood <Bowyer>
					["coord"] = { 73.2, 44.8, DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["sym"] = {{"select","itemID",
						3027,	-- Heavy Recurve Bow
						3026,	-- Reinforced Bow
					}},
					["groups"] = {
						i(11304, {	-- Fine Longbow
							["isLimited"] = true,
						}),
					},
				}),
				-- #if BEFORE CATA
				n(274, {	-- Barkeep Hann <Bartender>
					["coord"] = { 73.8, 44.2, DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(1942),	-- Bottle of Moonshine
					},
				}),
				-- #endif
				n(2481, {	-- Bliztik <Alchemy Supplies>
					["coord"] = { 18.0, 54.4, DUSKWOOD },
					["timeline"] = { REMOVED_4_0_3 },
					["groups"] = {
						i(6068, {	-- Recipe: Shadow Oil (RECIPE!)
							["timeline"] = { REMOVED_4_0_3 },	-- Now taught by trainer, recipe removed from the game.
						}),
					},
				}),
				n(2668, {	-- Danielle Zipstitch <Tailoring Supplies>
					["coord"] = { 75.8, 45.4, DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(14627, {	-- Pattern: Bright Yellow Shirt (RECIPE!)
							["isLimited"] = true,
						}),
					},
				}),
				n(225, {	-- Gavin Gnarltree <Weaponsmith>
					["coord"] = { 73.6, 49.8, DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["sym"] = {{"select","itemID",
						929,	-- Battle Axe
						2025,	-- Bearded Axe
						2029,	-- Cleaver
						922,	-- Dacian Falx
						927,	-- Double Axe
						2024,	-- Espadon
						925,	-- Flail
						2030,	-- Gnarled Staff
						2028,	-- Hammer
						2209,	-- Kris
						928,	-- Long Staff
						923,	-- Longsword
						924,	-- Maul
						2208,	-- Poniard
						2026,	-- Rock Hammer
						2027,	-- Scimitar
					}},
					["groups"] = {
						i(12247, {	-- Broad Bladed Knife
							["isLimited"] = true,
						}),
						i(12249, {	-- Merciless Axe
							["isLimited"] = true,
						}),
					},
				}),
				n(3134, {	-- Kzixx <Rare Goods>
					["coord"] = { 81.8, 19.8, DUSKWOOD },
					["groups"] = {
						i(4829, {	-- Dreamer's Belt
							["isLimited"] = true,
						}),
						i(4836, {	-- Fireproof Orb
							["isLimited"] = true,
						}),
						i(4828, {	-- Nightwind Belt
							["isLimited"] = true,
						}),
						i(4838, {	-- Orb of Power
							["isLimited"] = true,
						}),
						i(4837, {	-- Strength of Will
							["isLimited"] = true,
						}),
						i(4827, {	-- Wizard's Belt
							["isLimited"] = true,
						}),
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_ONE, i(210709, {	-- Recipe: Elixir of Coelesced Regret (RECIPE!)
							["isLimited"] = true,
						})),
						-- #endif
						i(6053, {	-- Recipe: Holy Protection Potion (RECIPE!)
							["isLimited"] = true,
						}),
						i(7561, {	-- Schematic: Goblin Jumper Cables (RECIPE!)
							["isLimited"] = true,
						}),
					},
				}),
				n(226, {	-- Morg Gnarltree <Armorer>
					["coord"] = { 73.8, 48.6, DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["sym"] = {{"select","itemID",
						2446,	-- Kite Shield
						2148,	-- Polished Scale Belt
						2149,	-- Polished Scale Boots
						2150,	-- Polished Scale Bracers
						2151,	-- Polished Scale Gloves
						2152,	-- Polished Scale Leggings
						2153,	-- Polished Scale Vest
						17192,	-- Reinforced Targe
					}},
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
				n(2669, {	-- Sheri Zipstitch <Tailoring Supplies>
					["coord"] = { 75.6, 45.4, DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(6401, {	-- Pattern: Dark Silk Shirt (RECIPE!)
							["isLimited"] = true,
						}),
						i(6275, {	-- Pattern: Greater Adept's Robe (RECIPE!)
							["isLimited"] = true,
						}),
					},
				}),
			}),
			n(ZONE_DROPS, {
				i(2794, {	-- An Old History Book
					-- #if AFTER 4.0.3
					["description"] = "Quest obtained from the book has been made obsolete at the release of Cataclysm expansion. Book is safe to be destroyed but, you will loot another one eventually.\n\nIf you are questing in Duskwood and come upon it, keep it in your inventory until you finish to avoid having to destroy it every time you loot another copy.",
					-- #endif
				}),
				i(885, {	-- Black Metal Axe
					["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
					["cr"] = 3,	-- Flesh Eater
					["coords"] = {
						{ 18.6, 33.0, DUSKWOOD },
						{ 19.8, 45.2, DUSKWOOD },
					},
				}),
				i(2014, {	-- Black Metal Greatsword
					["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
					["cr"] = 1270,	-- Fetid Corpse
					["coords"] = {
						{ 74.8, 32.8, DUSKWOOD },
						{ 75.2, 37.6, DUSKWOOD },
						{ 76.6, 36.6, DUSKWOOD },
						{ 76.8, 31.0, DUSKWOOD },
						{ 78.4, 36.0, DUSKWOOD },
						{ 79.8, 32.8, DUSKWOOD },
						{ 81.6, 32.2, DUSKWOOD },
						{ 81.6, 33.6, DUSKWOOD },
					},
				}),
				i(886, {	-- Black Metal Shortsword
					["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
					["cr"] = 210,	-- Bone Chewer
					["coords"] = {
						{ 15.8, 35.0, DUSKWOOD },
						{ 17.0, 31.2, DUSKWOOD },
						{ 23.4, 35.4, DUSKWOOD },
						{ 24.4, 37.4, DUSKWOOD },
						{ 25.6, 32.4, DUSKWOOD },
					},
				}),
				i(2015, {	-- Black Metal War Axe
					["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
					["crs"] = {
						-- #if AFTER 10.1.7
						604,	-- Plague Spreader
						-- #else
						570,	-- Brain Eater
						-- #endif
					},
					["coords"] = {
						{ 25.4, 35.4, DUSKWOOD },
						{ 17.8, 33.4, DUSKWOOD },
						{ 19.8, 46.8, DUSKWOOD },
						{ 23.4, 35.4, DUSKWOOD },
					},
				}),
				i(2013, {	-- Cryptbone Staff
					["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
					["crs"] = {
						-- #if AFTER 10.1.7
						203,	-- Skeletal Mage
						-- #else
						787,	-- Skeletal Healer
						-- #endif
					},
					["coords"] = {
						-- #if AFTER 10.1.7
						{ 79.2, 66.6, DUSKWOOD },
						{ 79.6, 70.6, DUSKWOOD },
						{ 79.6, 74.2, DUSKWOOD },
						-- #else
						{ 16.6, 31.6, DUSKWOOD },
						{ 17.0, 38.8, DUSKWOOD },
						-- #endif
					},
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_ONE, i(211528, {	-- Dark Insight
					["coords"] = {
						{ 22.8, 68.0, DUSKWOOD },
						{ 50.8, 75.0, DUSKWOOD },
					},
					["classes"] = { PRIEST },
					["crs"] = {
						910,	-- Defias Enchanter
						909,	-- Defias Night Blade
						215,	-- Defias Night Runner
					},
					["groups"] = {
						i(211490, {	-- Prophecy of a Thousand Lights
							["coord"] = { 90, 30, DUSKWOOD },
							["classes"] = { PRIEST },
							["groups"] = {
								recipe(402859),	-- Engrave Gloves - Circle of Healing
							},
						}),
					},
				})),
				-- #endif
				i(2232, {	-- Dark Runner Boots
					["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
					["cr"] = 205,	-- Nightbane Dark Runner
					["coords"] = {
						-- #if AFTER 10.1.7
						{ 66.4, 33.0, DUSKWOOD },
						{ 61.8, 38.0, DUSKWOOD },
						{ 65.6, 49.0, DUSKWOOD },
						-- #else
						{ 62.4, 42.6, DUSKWOOD },
						{ 64.0, 49.6, DUSKWOOD },
						{ 64.2, 74.0, DUSKWOOD },
						-- #endif
					},
				}),
				i(1077, {	-- Defias Mage Ring
					["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
					["crs"] = {
						-- #if AFTER 10.1.7
						218,	-- Grave Robber
						-- #else
						910,	-- Defias Enchanter
						-- #endif
					},
					["coords"] = {
						-- #if AFTER 10.1.7
						{ 7.6, 34.6, DUSKWOOD },
						-- #else
						{ 23.6, 71.4, DUSKWOOD },
						{ 50.6, 77.6, DUSKWOOD },
						-- #endif
					},
				}),
				i(2021, {	-- Green Carapace Shield
					["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
					["crs"] = {
						-- #if AFTER 10.1.7
						949,	-- Carrion Recluse
						-- #else
						569,	-- Green Recluse
						-- #endif
					},
					["coords"] = {
						-- #if AFTER 10.1.7
						{ 23.6, 36.6, DUSKWOOD },
						{ 23.6, 36.6, DUSKWOOD },
						{ 17.0, 38.8, DUSKWOOD },
						-- #else
						{ 72.8, 21.6, DUSKWOOD },
						{ 56.6, 20.0, DUSKWOOD },
						{ 17.0, 70.6, DUSKWOOD },
						{ 12.6, 51.8, DUSKWOOD },
						-- #endif
					},
				}),
				i(2017, {	-- Glowing Leather Bracers
					["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
					["crs"] = {
						-- #if AFTER 10.1.7
						531,	-- Skeletal Fiend
						-- #else
						785,	-- Skeletal Warder
						-- #endif
					},
					["coords"] = {
						-- #if AFTER 10.1.7
						{ 24.0, 44.6, DUSKWOOD },
						{ 18.0, 47.6, DUSKWOOD },
						{ 16.6, 43.0, DUSKWOOD },
						-- #else
						{ 16.0, 37.6, DUSKWOOD },
						{ 17.0, 31.0, DUSKWOOD },
						-- #endif
					},
				}),
				i(2227, {	-- Heavy Ogre War Axe
					["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
					["crs"] = {
						-- #if AFTER 10.1.7
						212,	-- Splinter Fist Warrior
						-- #else
						892,	-- Splinter Fist Taskmaster
						-- #endif
					},
					["coords"] = {
						-- #if AFTER 10.1.7
						{ 40.2, 72.0, DUSKWOOD },
						{ 35.4, 71.4, DUSKWOOD },
						{ 35.6, 81.0, DUSKWOOD },
						-- #else
						{ 40.6, 74.8, DUSKWOOD },
						{ 37.2, 69.8, DUSKWOOD },
						-- #endif
					},
				}),
				i(2020, {	-- Hollowfang Blade
					["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
					["crs"] = {
						-- #if AFTER 10.1.7
						45582,	-- Black Widow
						-- #else
						539,	-- Pygmy Venom Web Spider
						-- #endif
					},
					["coords"] = {
						-- #if AFTER 10.1.7
						{ 34.6, 55.0, DUSKWOOD },
						{ 27.8, 41.6, DUSKWOOD },
						{ 35.6, 29.8, DUSKWOOD },
						-- #else
						{ 12.2, 69.8, DUSKWOOD },
						{ 9.8, 49.6, DUSKWOOD },
						{ 19.6, 26.4, DUSKWOOD },
						{ 46.8, 16.8, DUSKWOOD },
						-- #endif
					},
				}),
				i(911, {	-- Ironwood Treebranch
					["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
					["cr"] = 889,	-- Splinter Fist Ogre
					["coords"] = {
						{ 38.4, 72.2, DUSKWOOD },
						{ 35.2, 71.4, DUSKWOOD },
						{ 36.6, 79.6, DUSKWOOD },
					},
				}),
				i(914, {	-- Large Ogre Chain Armor
					["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
					["crs"] = {
						-- #if AFTER 10.1.7
						889,	-- Splinter Fist Ogre
						-- #else
						1487,	-- Splinter Fist Enslaver
						-- #endif
					},
					["coords"] = {
						-- #if AFTER 10.1.7
						{ 39.0, 72.2, DUSKWOOD },
						{ 36.8, 78.6, DUSKWOOD },
						{ 33.8, 70.8, DUSKWOOD },
						-- #else
						{ 38.0, 80.6, DUSKWOOD },
						{ 37.4, 84.6, DUSKWOOD },
						-- #endif
					},
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_ONE, i(211472, {	-- Libram of Banishment
					["coords"] = {
						{ 22.8, 68.0, DUSKWOOD },
						{ 50.8, 75.0, DUSKWOOD },
					},
					["classes"] = { PALADIN },
					["cr"] = 215,	-- Defias Night Runner
					["groups"] = {
						recipe(416037),	-- Engrave Pants - Exorcist
					},
				})),
				-- #endif
				i(897, {	-- Madwolf Bracers
					["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
					["cr"] = 206,	-- Nightbane Vile Fang
					["coords"] = {
						-- #if AFTER 10.1.7
						{ 72.2, 74.6, DUSKWOOD },
						{ 74.2, 71.0, DUSKWOOD },
						-- #else
						{ 62.4, 80.4, DUSKWOOD },
						{ 73.6, 72.0, DUSKWOOD },
						-- #endif
					},
				}),
				i(2234, {	-- Nightwalker Armor
					["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
					["cr"] = 920,	-- Nightbane Tainted One
					["coords"] = {
						-- #if AFTER 10.1.7
						{ 73.6, 73.0, DUSKWOOD },
						{ 73.8, 78.8, DUSKWOOD },
						-- #else
						{ 74.0, 74.2, DUSKWOOD },
						{ 62.8, 80.2, DUSKWOOD },
						-- #endif
					},
				}),
				i(2226, {	-- Ogremage Staff
					["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
					["crs"] = {
						1251,	-- Splinter Fist Firemonger
						-- #if BEFORE 4.0.3
						891,	-- Splinter Fist Fire Weaver
						-- #endif
					},
					["coords"] = {
						{ 35.4, 71.4, DUSKWOOD },
						{ 35.6, 81.0, DUSKWOOD },
						{ 37.2, 69.8, DUSKWOOD },
						{ 40.2, 72.0, DUSKWOOD },
						{ 40.6, 74.8, DUSKWOOD },
					},
				}),
				i(5773, {	-- Pattern: Robes of Arcana (RECIPE!)
					["timeline"] = { REMOVED_4_0_3 },
					["cr"] = 910,	-- Defias Enchanter
					-- Added in 8.1.5 to BFA Time-Lost Trader
				}),
				-- #if BEFORE CATA
				i(6211, {	-- Recipe: Elixir of Ogre's Strength (RECIPE!)
					["crs"] = {
						1251,	-- Splinter Fist Firemonger
						891,	-- Splinter Fist Fire Weaver
					},
				}),
				-- #endif
				i(2233, {	-- Shadow Weaver Leggings
					["cr"] = 533,	-- Nightbane Shadow Weaver
					["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
					["coords"] = {
						-- #if AFTER 10.1.7
						{ 65.6, 69.4, DUSKWOOD },
						{ 64.0, 75.8, DUSKWOOD },
						-- #else
						{ 67.2, 75.4, DUSKWOOD },
						{ 63.6, 70.6, DUSKWOOD },
						{ 64.8, 46.2, DUSKWOOD },
						-- #endif
					},
				}),
				i(2018, {	-- Skeletal Longsword
					["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
					["crs"] = {
						-- #if AFTER 10.1.7
						 48,	-- Skeletal Warrior
						-- #else
						1110,	-- Skeletal Raider
						-- #endif
					},
					["coords"] = {
						-- #if AFTER 10.1.7
						{ 80.8, 69.2, DUSKWOOD },
						{ 81.8, 70.0, DUSKWOOD },
						{ 78.2, 70.4, DUSKWOOD },
						-- #else
						{ 17.6, 33.6, DUSKWOOD },
						{ 16.8, 37.2, DUSKWOOD },
						-- #endif
					},
				}),
				i(880, {	-- Staff of Horrors
					["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
					["cr"] = 202,	-- Skeletal Horror / Rotting Horror
					["coords"] = {
						{ 80.6, 59.6, DUSKWOOD },
						{ 20.8, 46.8, DUSKWOOD },
					},
				}),
				-- #if BEFORE 10.1.7
				-- Now a quest reward.
				i(3360, {	-- Stitches' Femur
					["timeline"] = { REMOVED_4_0_3 },
					["cr"] = 412,	-- Stitches <Gift from the Embalmer>
				}),
				-- #endif
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_ONE, i(210043, {	-- Symbol of the Second Owl
					["coord"] = { 65.2, 27.8, DUSKWOOD },
					["timeline"] = { REMOVED_2_0_1 },
					["classes"] = { DRUID },
					["cr"] = 211200,	-- Agon
				})),
				-- #endif
				i(899, {	-- Venom Web Fang
					["cr"] = 217,	-- Venom Web Spider
					["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
					["coords"] = {
						-- #if AFTER 10.1.7
						{ 43.0, 20.4, DUSKWOOD },
						{ 58.6, 20.6, DUSKWOOD },
						{ 67.6, 48.0, DUSKWOOD },
						{ 72.6, 24.6, DUSKWOOD },
						{ 79.0, 21.8, DUSKWOOD },
						-- #else
						{ 28.8, 29.6, DUSKWOOD },
						{ 18.8, 27.8, DUSKWOOD },
						-- #endif
					},
				}),
				i(920, {	-- Wicked Spiked Mace
					["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
					["crs"] = {
						-- #if AFTER 10.1.7
						45811,	-- Marina DeSirrus
						-- #else
						909,	-- Defias Night Blade
						215,	-- Defias Night Runner
						-- #endif
					},
					["coords"] = {
						-- #if AFTER 10.1.7
						{ 7.8, 33.8, DUSKWOOD },
						-- #else
						{ 23.6, 71.6, DUSKWOOD },
						{ 49.8, 77.8, DUSKWOOD },
						-- #endif
					},
				}),
			}),
		},
	}),
}));

root(ROOTS.HiddenQuestTriggers, {
	expansion(EXPANSION.CATA, bubbleDownSelf({ ["timeline"] = { ADDED_4_0_3 } }, {
		m(EASTERN_KINGDOMS, {
			m(DUSKWOOD, {
				n(QUESTS, {
					q(26673),	-- REUSE - BREADCRUMB (completed when turning in "Roland's Doom" (26670))
				}),
			}),
		}),
	})),
	expansion(EXPANSION.LEGION, bubbleDownSelf({ ["timeline"] = { ADDED_7_0_3 } }, {
		q(40937),	-- Tracking: Revil Defeated
		q(41153),	-- Revil Defeated
	})),
});