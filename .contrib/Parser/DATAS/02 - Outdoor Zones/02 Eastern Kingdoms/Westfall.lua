---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(EASTERN_KINGDOMS, {
	m(WESTFALL, {
		["lore"] =
			-- #if AFTER CATA
			"Westfall is a low-level Alliance zone. It used to be a tranquil farming area on the coast, but is now taken over by the Defias Brotherhood and crime runs rampant. The Westfall Brigade has created a last-ditch effort at Sentinel Hill to aid the zone, but faces threats from the Brotherhood at Moonbrook.",
			-- #else
			"Westfall borders the Kingdom of Stormwind and is mostly populated by humans not under the Alliance's complete control. The region was stolen right under the Alliance's nose by its own bitter people. This rich land has lain fallow since the Second War, but it is now held by the Defias Brotherhood. Stormwind claims the land as its own, but it has found little time to be concerned with it, with insufficient funds and might to retake the region. A handful of farmers still try to keep their land, and some even attempt a tithe to Stormwind every year, but most only grow enough to feed themselves. The Defias Brotherhood controls much of the region, focused in the southern area of Moonbrook.\n\nOnce a rich agricultural center, much of Westfall now lies fallow and forgotten. The Defias Brotherhood, renegade humans who wield secrecy and technology against Stormwind, control much of the area. Bandits and gnolls raid those farms that remain, and Stormwind's resources are stretched too thin to protect the beleaguered populace. Westfall has the mild temperatures of Elwynn, but winds batter it both from the sea and from Duskwood. The bare farmlands add little to break the wind, which can cut through clothing on a blustery day.",
			-- #endif
		-- #if AFTER CATA
		["maps"] = {
			53,		-- Gold Coast Quarry
			54,		-- Jangolode Mine
			55,		-- The Deadmines
		},
		-- #endif
		["icon"] = 236852,
		["groups"] = {
			n(ACHIEVEMENTS, {
				explorationAch(802),	-- Explore Westfall
				ach(4903, {	-- Westfall Quests
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					-- #if AFTER MOP
					["groups"] = {
						crit(38343, {	-- Crime Scene Investigation
							["sourceQuest"] = 26270,	-- You Have Our Thanks
						}),
						crit(39659, {	-- Investigating the Shadows
							["sourceQuest"] = 26297,	-- The Dawning of a New Day
						}),
						crit(38342, {	-- The Defias Brotherhood Reborn
							["sourceQuest"] = 26370,	-- Return to Sentinel Hill
						}),
					},
					-- #else
					["sourceQuests"] = {
						26270,	-- You Have Our Thanks
						26297,	-- The Dawning of a New Day
						26370,	-- Return to Sentinel Hill
					},
					-- #endif
				}),
			}),
			battlepets({
				["sym"] = {{"select","speciesID",
					385,	-- Mouse (PET!)
					386,	-- Prarie Dog (PET!)
					387,	-- Snake (PET!)
					419,	-- Small Frog (PET!)
					379,	-- Squirrel (PET!)
				}},
				["groups"] = {
					pet(646),	-- Chicken (PET!)
					pet(388),	-- Shore Crab (PET!)
					pet(389),	-- Tiny Harvester (PET!)
				},
			}),
			explorationHeader({
				exploration(219),	-- Alexston Farmstead
				exploration(921),	-- Demont's Place
				exploration(109),	-- Furlbrow's Pumpkin Farm
				exploration(113),	-- Gold Coast Quarry
				exploration(111),	-- Jangolode Mine
				visit_exploration(2,	{coord={58.4,9.4,WESTFALL}}),	-- Longshore
				exploration(20),	-- Moonbrook
				visit_exploration(5289,{coord={69.9,74.0,WESTFALL}}),	-- Mortwake's Tower
				exploration(107),	-- Saldean's Farm
				exploration(108),	-- Sentinel Hill
				exploration(919),	-- Stendel's Pond
				exploration(920),	-- The Dagger Hills
				exploration(917),	-- The Dead Acre
				-- #if AFTER CATA
				exploration(1581),	-- The Deadmines
				-- #endif
				exploration(922),	-- The Dust Plains
				exploration(916),	-- The Jansen Stead
				exploration(918),	-- The Molsen Farm
				visit_exploration(5290,{coord={35.3,45.3,WESTFALL}}),	-- The Raging Chasm
				exploration(115),	-- Westfall Lighthouse
			}),
			-- #if AFTER 4.1.0.13726
			prof(FISHING, {
				i(68795, {	-- Stendel's Bane
					["timeline"] = { ADDED_4_1_0 },
					["groups"] = {
						i(68797, {	-- Stendel's Wedding Band
							["timeline"] = { ADDED_4_1_0 },
						}),
					},
				}),
			}),
			-- #endif
			n(FLIGHT_PATHS, {
				fp(584, {	-- Furlbrow's Pumpkin Farm, Westfall
					["cr"] = 42406,	-- Hoboair <Gryphon Master>
					["coord"] = { 49.8, 18.8, WESTFALL },
					["timeline"] = { ADDED_4_0_1 },
					["races"] = ALLIANCE_ONLY,
				}),
				fp(583, {	-- Moonbrook, Westfall
					["cr"] = 42426,	-- Tina Skyden <Gryphon Master>
					["coord"] = { 42.0, 63.4, WESTFALL },
					["timeline"] = { ADDED_4_0_1 },
					["races"] = ALLIANCE_ONLY,
				}),
				fp(4, {	-- Sentinel Hill, Westfall
					["cr"] = 523,	-- Thor <Gryphon Master>
					["coords"] = {
						-- #if AFTER CATA
						{ 56.6, 49.4, WESTFALL },
						-- #else
						{ 56.6, 52.6, WESTFALL },
						-- #endif
					},
					["races"] = ALLIANCE_ONLY,
				}),
			}),
			-- #if SEASON_OF_DISCOVERY
			spell(921, {	-- Pickpocketing
				["classes"] = { ROGUE },
				["groups"] = {
					applyclassicphase(SOD_PHASE_ONE, i(209031, {	-- Discreet Envelope
						["coord"] = { 48.6, 48.6, WESTFALL },
						["classes"] = { ROGUE },
						["crs"] = {
							590,	-- Defias Looter
							121,	-- Defias Pathstalker
							589,	-- Defias Pillager
							 95,	-- Defias Smuggler
							504,	-- Defias Trapper
						},
						["groups"] = {
							i(209030, {	-- Equipment Stash Key
								["classes"] = { ROGUE },
							}),
							i(209029, {	-- Message from Emily
								["classes"] = { ROGUE },
							}),
						},
					})),
					applyclassicphase(SOD_PHASE_ONE, i(208772, {	-- Rune of Saber Slash
						["coords"] = {
							{ 51.0, 47.0, WESTFALL },
							{ 51.6, 55.6, WESTFALL },
						},
						["timeline"] = { REMOVED_2_0_1 },
						["classes"] = { ROGUE },
						["cr"] = 210549,	-- Defias Scout
						["groups"] = {
							recipe(424984),	-- Engrave Gloves - Saber Slash
						},
					})),
				},
			}),
			-- #endif
			n(QUESTS, {
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_TWO, q(79008, {	-- ...and that note you found (A)
					["providers"] = {
						{ "o", 415107 },	-- Burned-Out Remains
						{ "o", 417072 },	-- Nailed Plank
					},
					["coords"] = {
						{ 37.5, 50.7, WESTFALL },
						{ 46.4, 73.8, THE_BARRENS },
					},
					["timeline"] = { ADDED_1_15_1 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 14,
					["groups"] = {
						i(2459),	-- Swiftness Potion
						i(3388),	-- Strong Troll's Blood Potion
					},
				})),
				-- #endif
				q(6181, {	-- A Swift Message
					["providers"] = {
						{ "n", 491 },	-- Quartermaster Lewis
						{ "i", 15998 },	-- Lewis' Note
					},
					["coord"] = { 56.9, 47.2, WESTFALL },
					["timeline"] = { REMOVED_4_0_3 },
					-- #if AFTER 4.0.3
					["description"] = "This quest gets marked as completed when you complete the quest 'A Swift Message' (26393) in Elwynn Forest.",
					-- #endif
					["races"] = { HUMAN },
					["lvl"] = 10,
				}),
				q(26320, {	-- A Vision of the Past
					["qg"] = 42651,	-- Thoralius the Wise
					["sourceQuest"] = 26319,	-- Secrets Revealed
					["coord"] = { 42.8, 65.1, WESTFALL },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- Vision of the Past uncovered
							["provider"] = { "i", 58147 },	-- Incense Burner
							["coord"] = { 42.56, 71.71, WESTFALL },
						}),
					},
				}),
				q(26291, {	-- Big Trouble in Moonbrook
					["qg"] = 7024,	-- Agent Kearnen
					["sourceQuest"] = 26290,	-- Secrets of the Tower
					["coord"] = { 68.2, 70.4, WESTFALL },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(58926, {	-- Gryan's Boots
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(58924, {	-- Legwork Trousers
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(58925, {	-- Troublesome Gloves
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131504, {	-- Troublesome Grips
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(136, {	-- Captain Sander's Hidden Treasure (1/4)
					["provider"] = { "i", 1357 },	-- Captain Sander's Treasure Map
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 10,
				}),
				q(138, {	-- Captain Sander's Hidden Treasure (2/4)
					["providers"] = {
						{ "o", 35 },	-- Captain's Footlocker
						{ "i", 1358 },	-- A Clue to Sander's Treasure
					},
					["sourceQuest"] = 136,	-- Captain Sander's Hidden Treasure (1/4)
					["coord"] = { 25.9, 47.77, WESTFALL },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 10,
				}),
				q(139, {	-- Captain Sander's Hidden Treasure (3/4)
					["providers"] = {
						{ "o", 36 },	-- Broken Barrel
						{ "i", 1361 },	-- Another Clue to Sander's Treasure
					},
					["sourceQuest"] = 138,	-- Captain Sander's Hidden Treasure (2/4)
					["coord"] = { 40.50, 47.82, WESTFALL },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 10,
				}),
				q(140, {	-- Captain Sander's Hidden Treasure (4/4)
					["providers"] = {
						{ "o", 34 },	-- Old Jug
						{ "i", 1362 },	-- Final Clue to Sander's Treasure
						{ "o", 33 },	-- Locked Chest
					},
					["sourceQuest"] = 139,	-- Captain Sander's Hidden Treasure (3/4)
					["coords"] = {
						{ 40.62, 17.01, WESTFALL },
						{ 25.97, 16.90, WESTFALL },
					},
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 10,
					["groups"] = {
						i(3343),	-- Captain Sander's Booty Bag
						i(3344),	-- Captain Sander's Sash
						i(3342),	-- Captain Sander's Shirt
						i(2842),	-- Silver Bar
					},
				}),
				q(26353, {	-- Captain Sanders' Hidden Treasure (1/4)
					["provider"] = { "i", 1357 },	-- Captain Sanders' Treasure Map
					["coord"] = { 49.2, 9.80, WESTFALL },
					["timeline"] = { ADDED_4_0_3 },
				}),
				q(26354, {	-- Captain Sanders' Hidden Treasure (2/4)
					["providers"] = {
						{ "o", 307330 },	-- Captain's Footlocker
						{ "i", 1358 },	-- A Clue to Sander's Treasure
					},
					["sourceQuest"] = 26353,	-- Captain Sanders' Hidden Treasure (1/4)
					["coord"] = { 25.9, 47.75, WESTFALL },
					["timeline"] = { ADDED_4_0_3 },
				}),
				q(26355, {	-- Captain Sanders' Hidden Treasure (3/4)
					["providers"] = {
						{ "o", 307307 },	-- Broken Barrel
						{ "i", 1361 },	-- Another Clue to Sander's Treasure
					},
					["sourceQuest"] = 26354,	-- Captain Sanders' Hidden Treasure (2/4)
					["coord"] = { 40.6, 47.8, WESTFALL },
					["timeline"] = { ADDED_4_0_3 },
				}),
				q(26356, {	-- Captain Sanders' Hidden Treasure (4/4)
					["providers"] = {
						{ "o", 307277 },	-- Old Jug
						{ "i", 1362 },	-- Final Clue to Sander's Treasure
						{ "o", 307340 },	-- Locked Chest
					},
					["sourceQuest"] = 26355,	-- Captain Sanders' Hidden Treasure (3/4)
					["coord"] = { 40.5, 16.8, WESTFALL },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						i(3343),	-- Captain Sanders' Booty Bag
						i(3344),	-- Captain Sanders' Sash
						i(3342),	-- Captain Sanders' Shirt
					},
				}),
				q(3861, {	-- CLUCK!
					["qg"] = 620,	-- Chicken
					["description"] =
						-- #if AFTER 3.1.0
						"Simply target any Chicken then spam |cFFFFD700/chicken|r at it until it emotes at you. The vendor, Farmer Saldean, sells the Special Chicken Feed you need.",
						-- #else
						"Simply target any Chicken and spam |cFFFFD700/chicken|r at it until it emotes at you. This will take about 100 emotes. (make a macro!)\n\nOnce it does, type /cheer with it targetted.\n\nThe Chicken will never turn friendly for a Horde player, even if they get the emote.",
						-- #endif
					["maps"] = {
						-- #if AFTER TBC
						AZUREMYST_ISLE,
						-- #endif
						DUSKWOOD,
						DUSTWALLOW_MARSH,
						ELWYNN_FOREST,
						HILLSBRAD_FOOTHILLS,
						THE_BARRENS,
						REDRIDGE_MOUNTAINS,
						TIRISFAL_GLADES,
						WESTFALL,
					},
					["cost"] = { { "i", 11109, 1 } },	-- Special Chicken Feed
					["repeatable"] = true,
					-- #if BEFORE 3.1.0
					["races"] = ALLIANCE_ONLY,
					-- #endif
					["groups"] = {
						i(11110, {	-- Westfall Chicken (PET!)
							-- #if BEFORE 3.1.0
							["description"] = "A Horde player can get this pet if they have an Alliance character complete the quest itself and allow the Horde player to loot the egg.",
							-- #endif
						}),
					},
				}),
				q(6281, {	-- Continue to Stormwind
					["providers"] = {
						{ "n", 523 },	-- Thor
						{ "i", 15998 },	-- Lewis' Note
					},
					["sourceQuest"] = 6181,	-- A Swift Message
					["coord"] = { 56.4, 52.6, WESTFALL },
					["timeline"] = { REMOVED_4_0_3 },
					-- #if AFTER 4.0.3
					["description"] = "This quest gets marked as completed when you complete the quest 'Continue to Stormwind' (26394) in Stormwind.",
					-- #endif
					["maps"] = { STORMWIND_CITY },
					["races"] = { HUMAN },
					["lvl"] = 10,
				}),
				q(1076, {	-- Devils in Westfall
					["qg"] = 4078,	-- Collin Mauren
					["sourceQuest"] = 1075,	-- A Scroll from Mauren
					["coord"] = { 43.1, 80.3, STORMWIND_CITY },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 17,
					["groups"] = {
						objective(1, {	-- 0/1 Dust Devil Debris
							["provider"] = { "i", 5669 },	-- Dust Devil Debris
							["coords"] = {
								{ 40.8, 22.0, WESTFALL },
								{ 35.8, 34.4, WESTFALL },
								{ 33.8, 49.4, WESTFALL },
								{ 34.6, 68.6, WESTFALL },
								{ 38.8, 61.4, WESTFALL },
								{ 42.6, 59.2, WESTFALL },
								{ 46.8, 48.6, WESTFALL },
								{ 43.0, 42.2, WESTFALL },
								{ 54.6, 41.0, WESTFALL },
								{ 61.6, 36.0, WESTFALL },
								{ 63.6, 51.4, WESTFALL },
								{ 68.8, 74.0, WESTFALL },
							},
							["cr"] = 832,	-- Dust Devil
						}),
					},
				}),
				q(26296, {	-- Evidence Collection
					["provider"] = { "i", 58117 },	-- Red Bandana
					["sourceQuest"] = 26292,	-- To Moonbrook
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/6 Red Bandana
							["provider"] = { "i", 58118 },	-- Red Bandana
							["cr"] = 42677,	-- Moonbrook Thug
						}),
						i(58921, {	-- Evidence Collection Gloves
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(58923, {	-- Gregorky's Bracers
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131505, {	-- Worn Defias Bindings
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(58922, {	-- Worn Defias Bracers
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(26230, {	-- Feast or Famine
					["qg"] = 42497,	-- Mama Celeste
					["sourceQuest"] = 26215,	-- Meet Two-Shoed Lou
					["coord"] = { 49.4, 19.2, WESTFALL },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/6 Coyote Tail
							["provider"] = { "i", 57787 },	-- Coyote Tail
							["crs"] = {
								834,	-- Coyote
								833,	-- Coyote Packleader
							},
						}),
						objective(2, {	-- 0/5 Fresh Dirt
							["providers"] = {
								{ "i",  57789 },	-- Fresh Dirt
								{ "o", 203972 },	-- Fresh Dirt
							},
						}),
						i(58933),	-- Westfall Mud Pie
					},
				}),
				q(26271, {	-- Feeding the Hungry and the Hopeless
					["qg"] = 42575,	-- Hope Saldean
					["sourceQuest"] = 26266,	-- Hope for the People
					["coord"] = { 56.9, 47.1, WESTFALL },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/20 Westfall Homeless fed
							["providers"] = {
								{ "n", 42617 },	-- Westfall Stew
								{ "i", 57991 },	-- Westfall Stew
							},
							["crs"] = {
								42386,	-- Homeless Stormwind Citizen
								42384,	-- Homeless Stormwind Citizen
							},
						}),
					},
				}),
				q(26289, {	-- Find Agent Kearnen
					["qg"] = 234,	-- Marshal Gryan Stoutmantle
					["sourceQuests"] = {
						26271,	-- Feeding the Hungry and the Hopeless
						26286,	-- In Defense of Westfall
					},
					["coord"] = { 56.3, 47.6, WESTFALL },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(184, {	-- Furlbrow's Deed
					["providers"] = {
						{ "i", 1972 },	-- Westfall Deed
						{ "i", 1971 },	-- Westfall Deed
						-- #if AFTER 4.0.3
						{ "o", 203734 },	-- Westfall Deed
						-- #endif
					},
					-- #if AFTER 4.0.3
					["coord"] = { 24.7, 95.2, ELWYNN_FOREST },
					-- #else
					["maps"] = { ELWYNN_FOREST },
					-- #endif
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 8,
					-- #if BEFORE 4.0.3
					["groups"] = {
						i(5057),	-- Ripe Watermelon
						i(4656),	-- Small Pumpkin
					},
					-- #endif
				}),
				q(22, {		-- Goretusk Liver Pie
					["qg"] = 235,	-- Salma Saldean
					["coord"] = { 56.4, 30.6, WESTFALL },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = { { "i", 723, 8 } },	-- Goretusk Liver
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 9,
					["groups"] = {
						i(724),		-- Goretusk Liver Pie
						i(2697),	-- Recipe: Goretusk Liver Pie (RECIPE!)
					},
				}),
				q(26252, {	-- Heart of the Watcher
					["provider"] = { "i", 57935 },	-- Harvest Watcher Heart
					["sourceQuest"] = 26236,	-- Shakedown at the Saldean's
				--	SQ needs verification.  might only be available when "Times are Tough" is in log, or might have 0 prereqs
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 10,
				}),
				q(26378, {	-- Hero's Call: Westfall! (Elwynn Forest)
					["qgs"] = {
						963,	-- Deputy Rainer
						240,	-- Marshal Dughan
						261,	-- Guard Thomas
						294,	-- Marshal Haggard
						42256,	-- Marshal Patterson
					},
					["coords"] = {
						{ 24.2, 74.6, ELWYNN_FOREST },
						{ 42.2, 65.8, ELWYNN_FOREST },
						{ 73.8, 72.2, ELWYNN_FOREST },
						{ 84.6, 69.4, ELWYNN_FOREST },
						{ 81.8, 66.0, ELWYNN_FOREST },
					},
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 9,
				}),
				heroscall(q(28562, {	-- Hero's Call: Westfall!
					["timeline"] = { ADDED_4_0_3 },
					["maps"] = { STORMWIND_CITY },	-- Only found in Stormwind City in Cataclysm.
					["isBreadcrumb"] = true,
					-- #if BEFORE 7.3.5
					-- Cataclysm: Minimum is level 9. (Confirmed by Hurieve, Crieve's Level 9 Hunter.)
					-- Cataclysm: Maximum is level 18 (TODO: Test max level between 16 and 25)
					["lvl"] = { 9, 18 },
					-- #endif
				})),
				q(26266, {	-- Hope for the People
					["providers"] = {
						{ "n", 235 },	-- Salma Saldean
						{ "i", 57988 },	-- Westfall Stew
					},
					["sourceQuest"] = 26270,	-- You Have Our Thanks
					["coord"] = { 56.3, 30.5, WESTFALL },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(26214, {	-- Hot On the Trail: Murlocs
					["qg"] = 42308,	-- Lieutenant Horatio Laine
					["sourceQuest"] = 26209,	-- Murder Was The Case That They Gave Me
					["coord"] = { 60.1, 19.4, WESTFALL },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Murloc Clue
							["provider"] = { "i", 57756 },	-- Murloc Clue
							["coord"] = { 55.2, 11.0, WESTFALL },
							["crs"] = {
								515,	-- Murloc Raider
								126,	-- Murloc Coastrunner
							},
						}),
					},
				}),
				q(26213, {	-- Hot On the Trail: The Riverpaw Clan
					["qg"] = 42308,	-- Lieutenant Horatio Laine
					["sourceQuest"] = 26209,	-- Murder Was The Case That They Gave Me
					["coord"] = { 60.1, 19.4, WESTFALL },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Riverpaw Gnoll Clue
							["provider"] = { "i", 57755 },	-- Riverpaw Gnoll Clue
							["coord"] = { 57.8, 14.2, WESTFALL },
							["crs"] = {
								500,	-- Riverpaw Scout
								117,	-- Riverpaw Gnoll
							},
						}),
					},
				}),
				q(26286, {	-- In Defense of Westfall
					["qg"] = 234,	-- Marshal Gryan Stoutmantle
					["sourceQuest"] = 26266,	-- Hope for the People
					["coord"] = { 56.3, 47.6, WESTFALL },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Gnoll Attack Orders
							["provider"] = { "i", 58111 },	-- Gnoll Attack Orders
							["coord"] = { 52.6, 53.4, WESTFALL },
							["crs"] = {
								54372,	-- Riverpaw Brute
								124,	-- Riverpaw Brute
								54371,	-- Riverpaw Bandit
								54373,	-- Riverpaw Herbalist
								501,	-- Riverpaw Herbalist
								452,	-- Riverpaw Bandit
							},
						}),
						i(58914, {	-- Sentinel Hill Breastplate
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131502, {	-- Sentinel Hill Hauberk
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(58912, {	-- Sentinel Hill Surcoat
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(58913, {	-- Sentinel Hill Vest
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(26229, {	-- "I TAKE Candle!"
					["qg"] = 42498,	-- Jimb "Candles" McHannigan
					["sourceQuest"] = 26215,	-- Meet Two-Shoed Lou
					["coord"] = { 49.7, 19.5, WESTFALL },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/12 Kobold Digger slain
							["provider"] = { "n", 1236 },	-- Kobold Digger
						}),
						i(58905, {	-- Kobold Basher
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(58903, {	-- Kobold Candle
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(58902, {	-- Kobold Sticker
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(156935, {	-- Kobold Torch
							["timeline"] = { ADDED_7_3_5 },
						}),
						i(58904, {	-- Wax Catcher
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(26257, {	-- It's Alive!
					["qg"] = 233,	-- Farmer Saldean
					["sourceQuest"] = 26252,	-- Heart of the Watcher
					["coord"] = { 55.9, 31.3, WESTFALL },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- Overloaded Harvest Golem enabled
							["providers"] = {
								{ "i", 57954 },	-- Harvest Watcher Heart
								{ "n", 42381 },	-- Overloaded Harvest Golem
								{ "n", 42601 },	-- Overloaded Harvest Golem
							},
						}),
						objective(2, {	-- 0/25 Energized Harvest Reaper
							["provider"] = { "n", 42342 },	-- Energized Harvest Reaper
							["coord"] = { 45.0, 35.4, WESTFALL },
						}),
						i(58916, {	-- Chewed Belt
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131497, {	-- Chewed Chain Cord
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(58915, {	-- Harvester Boots
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(58917, {	-- Saldean's Working Gloves
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(26288, {	-- Jango Spothide
					["qg"] = 821,	-- Captain Danuvin
					["sourceQuest"] = 26287,	-- The Westfall Brigade
					["coord"] = { 56.3, 47.6, WESTFALL },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/5 Riverpaw Mystic slain
							["provider"] = { "n", 453 },	-- Riverpaw Mystic
							["coord"] = { 62.8, 73.4, WESTFALL },
						}),
						objective(2, {	-- 0/5 Riverpaw Taskmaster slain
							["provider"] = { "n", 98 },	-- Riverpaw Taskmaster
							["coord"] = { 60.6, 74.6, WESTFALL },
						}),
						objective(3, {	-- 0/5 Jango Spothide slain
							["provider"] = { "n", 42653 },	-- Jango Spothide
							["coord"] = { 62.2, 76.2, WESTFALL },
						}),
						i(58920, {	-- Dust Plains Greaves
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(58918, {	-- Mystic Riverpaw Wand
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(58919, {	-- Spothide Leggings
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131503, {	-- Spothide Legguards
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(103, {	-- Keeper of the Flame
					["qg"] = 392,	-- Captain Grayson
					["coord"] = { 30, 86, WESTFALL },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = { { "i", 814, 5 } },	-- Flask of Oil
					["lvl"] = 10,
				}),
				q(26347, {	-- Keeper of the Flame
					["qg"] = 392,	-- Captain Grayson
					["coord"] = { 30.5, 85.4, WESTFALL },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/5 Chasm Ooze
							["provider"] = { "i", 58204 },	-- Chasm Ooze
							["coord"] = { 38.8, 44.4, WESTFALL },
							["cr"] = 42669,	-- Chasm Slime
						}),
					},
				}),
				q(2359, {	-- Klaven's Tower
					["providers"] = {
						{ "n", 7024 },	-- Agent Kearnen
						{ "i", 8046 },	-- Kearnen's Journal
					},
					["sourceQuest"] = 2360,	-- Mathias and the Defias
					["coord"] = { 68.5, 70.2, WESTFALL },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { ROGUE },
					["lvl"] = 20,
					["groups"] = {
						objective(1, {	-- 0/1 Klaven Mortwake's Journal
							["provider"] = { "i", 7908 },	-- Klaven Mortwake's Journal
							["coord"] = { 71.0, 74.6, WESTFALL },
							["cr"] = 7053,	-- Klaven Mortwake
						}),
						objective(2, {	-- 0/1 Defias Tower Key
							["provider"] = { "i", 7923 },	-- Defias Tower Key
							["coord"] = { 68.6, 72.2, WESTFALL },
							["cr"] = 7051,	-- Malformed Defias Drone
						}),
						recipe(8681, {	-- Instant Poison
							["timeline"] = { REMOVED_3_0_2 },
						}),
						recipe(2842, {	-- Poisons
							["timeline"] = { REMOVED_3_0_2 },
						}),
						i(7678,	{	-- Recipe: Thistle Tea (RECIPE!)
							["timeline"] = { REMOVED_1_3_0 },
						}),
						i(18160, {	-- Recipe: Thistle Tea (RECIPE!)
							["timeline"] = { ADDED_1_3_0, REMOVED_4_0_3 },
						}),
					},
				}),
				q(26228, {	-- Livin' the Life
					["qg"] = 42405,	-- Two-Shoed Lou
					["sourceQuest"] = 26215,	-- Meet Two-Shoed Lou
					["coord"] = { 49.7, 19.5, WESTFALL },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- Livin' the Life!
							["provider"] = { "i", 57761 },	-- Two-Shoed Lou's Old House
							--["coord"] = { 63.9, 26.2, 54 },	-- Jangolode Mine
							["coord"] = { 46.5, 19.3, WESTFALL },
						}),
					},
				}),
				q(26232, {	-- Lou's Parting Thoughts
					["qg"] = 42405,	-- Two-Shoed Lou
					["sourceQuest"] = 26228,	-- Livin' the Life
					["coord"] = { 49.7, 19.5, WESTFALL },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- Eavesdrop on Thugs.
							["provider"] = { "n", 42387 },	-- Thug
							["coord"] = { 48.2, 19.6, WESTFALL },
						}),
					},
				}),
				q(26215, {	-- Meet Two-Shoed Lou
					["qg"] = 42308,	-- Lieutenant Horatio Laine
					["sourceQuests"] = {
						26214,	-- Hot On the Trail: Murlocs
						26213,	-- Hot On the Trail: The Riverpaw Clan
					},
					["coord"] = { 60.1, 19.4, WESTFALL },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(26209, {	-- Murder Was The Case That They Gave Me
					["qg"] = 42308,	-- Lieutenant Horatio Laine
					["sourceQuests"] = {
						26378,	-- Hero's Call: Westfall! (Elwynn Forest)
						28562,	-- Hero's Call: Westfall!
					},
					["coord"] = { 60.1, 19.4, WESTFALL },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- Clue #1 obtained
							["providers"] = {
								{ "n", 42384 },	-- Homeless Stormwind Citizen
								{ "n", 42386 },	-- Homeless Stormwind Citizen
								{ "n", 42391 },	-- West Plains Drifter
								{ "n", 42383 },	-- Transient
							},
						}),
						objective(2, {	-- Clue #2 obtained
							["providers"] = {
								{ "n", 42384 },	-- Homeless Stormwind Citizen
								{ "n", 42386 },	-- Homeless Stormwind Citizen
								{ "n", 42391 },	-- West Plains Drifter
								{ "n", 42383 },	-- Transient
							},
						}),
						objective(3, {	-- Clue #3 obtained
							["providers"] = {
								{ "n", 42384 },	-- Homeless Stormwind Citizen
								{ "n", 42386 },	-- Homeless Stormwind Citizen
								{ "n", 42391 },	-- West Plains Drifter
								{ "n", 42383 },	-- Transient
							},
						}),
						objective(4, {	-- Clue #4 obtained
							["providers"] = {
								{ "n", 42384 },	-- Homeless Stormwind Citizen
								{ "n", 42386 },	-- Homeless Stormwind Citizen
								{ "n", 42391 },	-- West Plains Drifter
								{ "n", 42383 },	-- Transient
							},
						}),
						i(58907, {	-- Crime Scene Tape
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(58906, {	-- Equicide Cloak
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(58908, {	-- Scene Investigator's Wrap
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(102, {	-- Patrolling Westfall
					["qg"] = 821,	-- Captain Danuvin
					["coord"] = { 56.4, 47.6, WESTFALL },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 8,
					["groups"] = {
						objective(1, {	-- 0/8 Gnoll Paw
							["provider"] = { "i", 725 },	-- Gnoll Paw
							["crs"] = {
								452,	-- Riverpaw Bandit
								124,	-- Riverpaw Brute
								117,	-- Riverpaw Gnoll
								501,	-- Riverpaw Herbalist
								1426,	-- Riverpaw Miner
								123,	-- Riverpaw Mongrel
								453,	-- Riverpaw Mystic
								125,	-- Riverpaw Overseer
								500,	-- Riverpaw Scout
								1065,	-- Riverpaw Shaman
								98,		-- Riverpaw Taskmaster
								506,	-- Sergeant Brashclaw
							},
						}),
						i(1154, {	-- Belt of the People's Militia
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(710, {	-- Bracers of the People's Militia
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(151, {	-- Poor Old Blanchy
					["qg"] = 238,	-- Verna Furlbrow
					["coord"] = { 60.0, 19.4, WESTFALL },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 9,
					["groups"] = {
						objective(1, {	-- 0/8 Handful of Oats
							["providers"] = {
								{ "i", 1528 },	-- Handful of Oats
								{ "o", 2724 },	-- Sack of Oats
							},
						}),
						i(2165, {	-- Old Blanchy's Blanket
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(1537, {	-- Old Blanchy's Feed Pouch
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(26295, {	-- Propaganda
					["qg"] = 42425,	-- Captain Alpert
					["sourceQuest"] = 26292,	-- To Moonbrook!
					["coord"] = { 42.2, 64.0, WESTFALL },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Informational Pamphlet
							["providers"] = {
								{ "i", 58113 },	-- Informational Pamphlet
								{ "o", 204014 },	-- Informational Pamphlet
							},
							["coord"] = { 41.5, 66.5, WESTFALL },
						}),
						objective(2, {	-- 0/1 Issue of the Moonbrook Times
							["providers"] = {
								{ "i", 58114 },	-- Issue of the Moonbrook Times
								{ "o", 204015 },	-- The Moonbrook Times
							},
							["coord"] = { 44.5, 68.3, WESTFALL },
						}),
						objective(3, {	-- 0/1 Secret Journal
							["providers"] = {
								{ "i", 58115 },	-- Secret Journal
								{ "o", 204016 },	-- Secret Journal
							},
							["coord"] = { 43.5, 66.7, WESTFALL },
						}),
						objective(4, {	-- 0/1 Mysterious Propaganda
							["providers"] = {
								{ "i", 58116 },	-- Mysterious Propaganda
								{ "o", 204017 },	-- Mysterious Propaganda
							},
							["coord"] = { 42.5, 71.7, WESTFALL },
						}),
					},
				}),
				q(153, {	-- Red Leather Bandanas
					["qg"] = 878,	-- Scout Galiaan
					["coord"] = { 54.0, 53.0, WESTFALL },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 10,
					["groups"] = {
						objective(1, {	-- 0/15 Red Leather Bandana
							["provider"] = { "i", 829 },	-- Red Leather Bandana
							["crs"] = {
								502,	-- Benny Blaanco
								481,	-- Defias Footpad
								122,	-- Defias Highwayman
								449,	-- Defias Knuckleduster
								590,	-- Defias Looter
								121,	-- Defias Pathstalker
								589,	-- Defias Pillager
								6180,	-- Defias Raider
								450,	-- Defias Renegade Mage
								95,		-- Defias Smuggler
								504,	-- Defias Trapper
								594,	-- Defias Henchman
							},
						}),
						i(3511, {	-- Cloak of the People's Militia
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(5944, {	-- Greaves of the People's Militia
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(12295, {	-- Leggings of the People's Militia
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(109, {	-- Report to Gryan Stoutmantle
					["qgs"] = {
						237,	-- Farmer Furlbrow
						233,	-- Farmer Saldean
						240,	-- Marshal Dughan
						261,	-- Guard Thomas
						294,	-- Marshal Haggard
						963,	-- Deputy Rainer
					},
					["coords"] = {
						{ 60, 19.4, WESTFALL },
						{ 56, 31.2, WESTFALL },
						{ 42.2, 65.8, ELWYNN_FOREST },
						{ 74.0, 72.2, ELWYNN_FOREST },
						{ 84.6, 69.6, ELWYNN_FOREST },
						{ 24.2, 74.6, ELWYNN_FOREST },
					},
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 9,
				}),
				q(26370, {	-- Return to Sentinel Hill
					["qgs"] = {
						-- #if AFTER 8.0.1
						1750,	-- Grand Admiral Jes-Tereth
						-- #elseif AFTER 7.0.3
						107574,	-- Anduin Wrynn
						-- #else
						29611,	-- King Varian Wrynn
						-- #endif
					},
					["sourceQuest"] = 26322,	-- Rise of the Brotherhood
					["coord"] = { 85.6, 32.7, STORMWIND_CITY },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(26322, {	-- Rise of the Brotherhood
					["qg"] = 234,	-- Marshal Gryan Stoutmantle
					["sourceQuest"] = 26320,	-- A Vision of the Past
					["coord"] = { 56.2, 47.6, WESTFALL },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(58931, {	-- House Wrynn Claymore
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(58929, {	-- House Wrynn Crossbow
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(58927, {	-- House Wrynn Dagger
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(156934, {	-- House Wrynn Gavel
							["timeline"] = { ADDED_7_3_5 },
						}),
						i(58928, {	-- House Wrynn Halberd
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(58930, {	-- House Wrynn Staff
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(26290, {	-- Secrets of the Tower
					["qg"] = 7024,	-- Agent Kearnen
					["sourceQuest"] = 26289,	-- Find Agent Kearnen
					["coord"] = { 68.2, 70.4, WESTFALL },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- Helix's Secret Revealed
							["provider"] = { "i", 58112 },	-- Potion of Shrouding
							["coord"] = { 70.4, 74.2, WESTFALL },
							["cr"] = 42753,	-- Helix Gearbreaker
						}),
					},
				}),
				q(26319, {	-- Secrets Revealed
					["qg"] = 42425,	-- Captain Alpert
					["sourceQuest"] = 26297,	-- The Dawning of a New Day
					["coord"] = { 42.2, 64.0, WESTFALL },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(26236, {	-- Shakedown at the Saldean's
					["qg"] = 42558,	-- Lieutenant Horatio Laine
					["sourceQuest"] = 26232,	-- Lou's Parting Thoughts
					["coord"] = { 49.8, 19.5, WESTFALL },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(48, {		-- Sweet Amber (1/5)
					["qg"] = 239,	-- Grimbooze Thunderbrew
					["coord"] = { 44.6, 80.2, WESTFALL },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { STRANGLETHORN_VALE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 40,
					["groups"] = {
						objective(1, {	-- 0/1 Holy Spring Water
							["providers"] = {
								{ "i", 737 },	-- Holy Spring Water
								{ "o", 759 },	-- The Holy Spring
							},
							["coord"] = { 28.9, 62.0, STRANGLETHORN_VALE },
						}),
					},
				}),
				q(49, {		-- Sweet Amber (2/5)
					["qg"] = 239,	-- Grimbooze Thunderbrew
					["sourceQuest"] = 48,	-- Sweet Amber (1/5)
					["coord"] = { 44.6, 80.2, WESTFALL },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { THE_HINTERLANDS, TANARIS, SWAMP_OF_SORROWS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 40,
					["groups"] = {
						objective(1, {	-- 0/1 Sack of Barley
							["providers"] = {
								{ "i", 738 },	-- Sack of Barley
								{ "o", 50936 },	-- Sack of Barley
							},
							["coord"] = { 62.5, 23.3, SWAMP_OF_SORROWS },
						}),
						objective(2, {	-- 0/1 Sack of Corn
							["providers"] = {
								{ "i", 739 },	-- Sack of Corn
								{ "o", 50935 },	-- Sack of Corn
							},
							["coord"] = { 65.8, 36.7, TANARIS },
						}),
						objective(3, {	-- 0/1 Sack of Rye
							["providers"] = {
								{ "i", 740 },	-- Sack of Rye
								{ "o", 50937 },	-- Sack of Rye
							},
							["coord"] = { 39.9, 66.2, THE_HINTERLANDS },
						}),
					},
				}),
				q(50, {		-- Sweet Amber (3/5)
					["qg"] = 239,	-- Grimbooze Thunderbrew
					["sourceQuest"] = 49,	-- Sweet Amber (2/5)
					["coord"] = { 44.6, 80.2, WESTFALL },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = { { "i", 6037, 1 } },	-- Truesilver Bar
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 40,
				}),
				q(51, {		-- Sweet Amber (4/5)
					["qg"] = 239,	-- Grimbooze Thunderbrew
					["sourceQuest"] = 50,	-- Sweet Amber (3/5)
					["coord"] = { 44.6, 80.2, WESTFALL },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { FERALAS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 40,
					["groups"] = {
						objective(1, {	-- 0/1 A Sycamore Branch
							["provider"] = { "i", 742 },	-- A Sycamore Branch
							["coord"] = { 54.8, 70.4, FERALAS },
							["cr"] = 5881,	-- Cursed Sycamore
						}),
					},
				}),
				q(53, {		-- Sweet Amber (5/5)
					["qg"] = 239,	-- Grimbooze Thunderbrew
					["sourceQuest"] = 51,	-- Sweet Amber (4/5)
					["coord"] = { 44.6, 80.2, WESTFALL },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { SEARING_GORGE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 40,
					["groups"] = {
						objective(1, {	-- 0/1 Bundle of Charred Oak
							["providers"] = {
								{ "i", 743 },	-- Bundle of Charred Oak
								{ "o", 50982 },	-- The Charred Oak
							},
							["coord"] = { 54.6, 50.7, SEARING_GORGE },
						}),
						i(744, {	-- Thunderbrew's Boot Flask
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(152, {	-- The Coast Isn't Clear
					["qg"] = 392,	-- Captain Grayson
					["coord"] = { 30, 86, WESTFALL },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 10,
					["groups"] = {
						objective(1, {	-- 0/7 Murloc Coastrunner slain
							["provider"] = { "n", 126 },	-- Murloc Coastrunner
						}),
						objective(2, {	-- 0/7 Murloc Warrior slain
							["provider"] = { "n", 171 },	-- Murloc Warrior
						}),
						objective(3, {	-- 0/7 Murloc Tidehunter slain
							["provider"] = { "n", 127 },	-- Murloc Tidehunter
						}),
						objective(4, {	-- 0/7 Murloc Oracle slain
							["provider"] = { "n", 517 },	-- Murloc Oracle
						}),
					},
				}),
				q(26348, {	-- The Coast Isn't Clear
					["qg"] = 392,	-- Captain Grayson
					["sourceQuest"] = 26371,	-- The Legend of Captain Grayson
					["coord"] = { 30.5, 85.4, WESTFALL },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/7 Murloc Tidehunter slain
							["provider"] = { "n", 127 },	-- Murloc Tidehunter
						}),
						objective(2, {	-- 0/7 Murloc Oracle slain
							["provider"] = { "n", 517 },	-- Murloc Oracle
						}),
					},
				}),
				q(104, {	-- The Coastal Menace
					["qg"] = 392,	-- Captain Grayson
					["coord"] = { 30, 86, WESTFALL },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 15,
					["groups"] = {
						objective(1, {	-- 0/1 Scale of Old Murk-Eye
							["provider"] = { "i", 3636 },	-- Scale of Old Murk-Eye
							["coord"] = { 34.4, 84.6, WESTFALL },
							["cr"] = 391,	-- Old Murk-Eye
						}),
						-- #if BEFORE 4.0.3
						i(1557),	-- Buckler of the Seas
						i(1172),	-- Grayson's Torch
						i(5240),	-- Torchlight Wand
						-- #endif
					},
				}),
				q(26349, {	-- The Coastal Menace
					["qg"] = 392,	-- Captain Grayson
					["coord"] = { 30.5, 85.4, WESTFALL },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Scale of Old Murk-Eye
							["provider"] = { "i", 3636 },	-- Scale of Old Murk-Eye
							["coord"] = { 34.4, 84.6, WESTFALL },
							["cr"] = 391,	-- Old Murk-Eye
						}),
						i(1557),	-- Buckler of the Seas
						i(1172),	-- Grayson's Torch
						i(5240),	-- Torchlight Wand
					},
				}),
				q(26297, {	-- The Dawning of a New Day
					["qg"] = 42425,	-- Captain Alpert
					["sourceQuest"] = 26295,	-- Propaganda
					["coord"] = { 42.2, 64.0, WESTFALL },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(65, {		-- The Defias Brotherhood (1/7)
					["qg"] = 234,	-- Gryan Stoutmantle
					["coord"] = { 56.3, 47.6, WESTFALL },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 14,
				}),
				q(132, {	-- The Defias Brotherhood (2/7)
					["providers"] = {
						{ "n", 266 },	-- Wiley the Black
						{ "i", 1327 },	-- Wiley's Note
					},
					["sourceQuest"] = 65,	-- The Defias Brotherhood (1/7)
					["coord"] = { 26.6, 45.3, REDRIDGE_MOUNTAINS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 14,
				}),
				q(135, {	-- The Defias Brotherhood (3/7)
					["providers"] = {
						{ "n", 234 },	-- Gryan Stoutmantle
						{ "i", 1327 },	-- Wiley's Note
					},
					["sourceQuest"] = 132,	-- The Defias Brotherhood (2/7)
					["coord"] = { 56.3, 47.6, WESTFALL },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 14,
				}),
				q(141, {	-- The Defias Brotherhood (4/7)
					["providers"] = {
						{ "n", 332 },	-- Master Mathias Shaw
						{ "i", 1353 },	-- Shaw's Report
					},
					["sourceQuest"] = 135,	-- The Defias Brotherhood (3/7)
					["coord"] = { 75.8, 59.8, STORMWIND_CITY },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 14,
				}),
				q(142, {	-- The Defias Brotherhood (5/7)
					["qg"] = 234,	-- Gryan Stoutmantle
					["sourceQuest"] = 141,	-- The Defias Brotherhood (4/7)
					["coord"] = { 56.3, 47.6, WESTFALL },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 14,
					["groups"] = {
						objective(1, {
							["provider"] = { "i", 1381 },	-- A Mysterious Message
							["coord"] = { 45.6, 68.6, WESTFALL },
							["cr"] = 550,	-- Defias Messenger
						}),
					},
				}),
				q(155, {	-- The Defias Brotherhood (6/7)
					["qg"] = 467,	-- The Defias Traitor
					["sourceQuest"] = 142,	-- The Defias Brotherhood (5/7)
					["coord"] = { 55.6, 47.5, WESTFALL },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 14,
				}),
				q(64, {		-- The Forgotten Heirloom
					["qg"] = 237,	-- Farmer Furlbrow
					["coord"] = { 60.0, 19.4, WESTFALL },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 9,
					["groups"] = {
						objective(1, {	-- 0/1 Furlbrow's Pocket Watch
							["providers"] = {
								{ "i", 841 },	-- Furlbrow's Pocket Watch
								{ "o", 290 },	-- Furlbrow's Wardrobe
							},
							["coord"] = { 49.3, 19.5, WESTFALL },
						}),
					},
				}),
				q(9, {		-- The Killing Fields
					["qg"] = 233,	-- Farmer Saldean
					["coord"] = { 56.0, 31.2, WESTFALL },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 8,
					["groups"] = {
						objective(1, {	-- 0/20 Harvest Watcher
							["provider"] = { "n", 114 },	-- Harvest Watcher
						}),
						i(3578, {	-- Harvester's Pants
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(1561, {	-- Harvester's Robe
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(26371, {	-- The Legend of Captain Grayson
					["qg"] = 878,	-- Scout Galiaan
					["coord"] = { 56.2, 47.4, WESTFALL },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
				}),
				q(12, {		-- The People's Militia (1/3)
					["qg"] = 234,	-- Gryan Stoutmantle
					["coord"] = { 56.3, 47.6, WESTFALL },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 9,
					["groups"] = {
						objective(1, {	-- 0/15 Defias Trapper
							["provider"] = { "n", 504 },	-- Defias Trapper
						}),
						objective(2, {	-- 0/15 Defias Smuggler
							["provider"] = { "n", 95 },	-- Defias Smuggler
						}),
					},
				}),
				q(13, {		-- The People's Militia (2/3)
					["qg"] = 234,	-- Gryan Stoutmantle
					["sourceQuest"] = 12,	-- The People's Militia (1/3)
					["coord"] = { 56.3, 47.6, WESTFALL },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 9,
					["groups"] = {
						objective(1, {	-- 0/15 Defias Pillager
							["provider"] = { "n", 589 },	-- Defias Pillager
						}),
						objective(2, {	-- 0/15 Defias Looter
							["provider"] = { "n", 590 },	-- Defias Looter
						}),
					},
				}),
				q(14, {		-- The People's Militia (3/3)
					["qg"] = 234,	-- Gryan Stoutmantle
					["sourceQuest"] = 13,	-- The People's Militia (2/3)
					["coord"] = { 56.3, 47.6, WESTFALL },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 9,
					["groups"] = {
						objective(1, {	-- 0/15 Defias Highwayman
							["provider"] = { "n", 122 },	-- Defias Highwayman
						}),
						objective(2, {	-- 0/15 Defias Pathstalker
							["provider"] = { "n", 121 },	-- Defias Pathstalker
						}),
						objective(3, {	-- 0/15 Defias Knuckleduster
							["provider"] = { "n", 449 },	-- Defias Knuckleduster
						}),
						i(1566, {	-- Edge of the People's Militia
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(1480, {	-- Fist of the People's Militia
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(12296, {	-- Spark of the People's Militia
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(26287, {	-- The Westfall Brigade
					["qg"] = 821,	-- Captain Danuvin
					["sourceQuest"] = 26266,	-- Hope for the People
					["coord"] = { 56.3, 47.6, WESTFALL },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/12 Attacking Riverpaw Gnoll slain
							["providers"] = {
								{ "n", 452 },	-- Riverpaw Bandit
								{ "n", 54371 },	-- Riverpaw Bandit
								{ "n", 124 },	-- Riverpaw Brute
								{ "n", 54372 },	-- Riverpaw Brute
								{ "n", 501 },	-- Riverpaw Herbalist
								{ "n", 54373 },	-- Riverpaw Herbalist
							},
						}),
					},
				}),
				q(26761, {	-- Threat to the Kingdom
					["qg"] = 234,	-- Marshal Gryan Stoutmantle
					["sourceQuest"] = 26370,	-- Return to Sentinel Hill
					["coord"] = { 56.3, 49.5, WESTFALL },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					--["isBreadcrumb"] = true,	-- not sure!
				}),
				q(117, {	-- Thunderbrew
					["qg"] = 239,	-- Grimbooze Thunderbrew
					["coord"] = { 44.6, 80.2, WESTFALL },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = { { "i", 1274, 5 } },	-- Hops
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					["groups"] = {
						i(1262, {	-- Keg of Thunderbrew
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(26237, {	-- Times are Tough
					["qg"] = 233,	-- Farmer Saldean
					["sourceQuest"] = 26236,	-- Shakedown at the Saldean's
					["coord"] = { 55.9, 31.3, WESTFALL },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/10 Harvest Watcher slain
							["provider"] = { "n", 114 },	-- Harvest Watcher
							["coord"] = { 54.6, 33.6, WESTFALL },
						}),
					},
				}),
				q(26292, {	-- To Moonbrook!
					["qg"] = 234,	-- Marshal Gryan Stoutmantle
					["sourceQuest"] = 26291,	-- Big Trouble in Moonbrook
					["coord"] = { 56.3, 47.6, WESTFALL },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(36, {		-- Westfall Stew (1/2)
					["providers"] = {
						{ "n", 238 },	-- Verna Furlbrow
						{ "i", 2832 },	-- Verna's Westfall Stew Recipe
					},
					["coord"] = { 60.0, 19.4, WESTFALL },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 9,
				}),
				q(38, {		-- Westfall Stew (2/2)
					["qg"] = 235,	-- Salma Saldean
					["sourceQuest"] = 36,	-- Westfall Stew (1/2)
					["coord"] = { 56.4, 30.6, WESTFALL },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 729, 3 },	-- Stringy Vulture Meat
						{ "i", 730, 3 },	-- Murloc Eye
						{ "i", 731, 3 },	-- Goretusk Snout
						{ "i", 732, 3 },	-- Okra
					},
					["lvl"] = 9,
					["groups"] = {
						i(728),	-- Recipe: Westfall Stew (RECIPE!)
						i(733),	-- Westfall Stew
						i(1479, {	-- Salma's Oven Mitts
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(2225, {	-- Sharp Kitchen Knife
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(26241, {	-- Westfall Stew
					["qg"] = 235,	-- Salma Saldean
					["sourceQuest"] = 26236,	-- Shakedown at the Saldean's
					["coord"] = { 56.3, 30.6, WESTFALL },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/6 Okra
							["providers"] = {
								{ "i",  57911 },	-- Okra
								{ "o", 203982 },	-- Okra
							},
							["coord"] = { 54.6, 33.6, WESTFALL },
						}),
						objective(2, {	-- 0/6 Goretusk Flank
							["provider"] = { "i", 57788 },	-- Goretusk Flank
							["coord"] = { 52.6, 22.2, WESTFALL },
							["crs"] = {
								157,	-- Goretusk
								454,	-- Young Goretusk
								42357,	-- Hulking Goretusk
							},
						}),
						objective(3, {	-- 0/6 Stringy Fleshripper Meat
							["provider"] = { "i", 57786 },	-- Stringy Fleshripper Meat
							["coord"] = { 49.0, 27.4, WESTFALL },
							["crs"] = {
								1109,	-- Fleshripper
								199,	-- Young Fleshripper
								154,	-- Greater Fleshripper
							},
						}),
						i(58910, {	-- Boiled Boots
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131496, {	-- Boiled Chain Footpads
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(58909, {	-- Golden Sunshine Cloak
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(58911, {	-- Tightly Cinched Belt
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(26270, {	-- You Have Our Thanks
					["qg"] = 233,	-- Farmer Saldean
					["sourceQuests"] = {
						26237,	-- Times are Tough
						26241,	-- Westfall Stew
					},
					["coord"] = { 55.9, 31.3, WESTFALL },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
			}),
			n(RARES, {
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_ONE, n(210483, {	-- Aggressive Squashling
					["coords"] = {
						{ 43.8, 33.4, WESTFALL },
						{ 50.4, 19.8, WESTFALL },
					},
					["cost"] = {
						{ "i", 209041, 1 },	-- Magic Pumpkin Seeds
						{ "i", 209043, 1 },	-- Fertile Soil Sample
						{ "i", 209042, 1 },	-- Fishy Bonemeal
					},
					["classes"] = { DRUID },
					["groups"] = {
						i(208687, {	-- Rune of Lacerate
							["classes"] = { DRUID },
							["groups"] = {
								recipe(416049),	-- Engrave Gloves - Lacerate
							},
						}),
					},
				})),
				-- #endif
				n(520, {	-- Brack
					["description"] = "Brack is running up and down the beach.",
					["coords"] = {
						{ 26.2, 65.6, WESTFALL },
						{ 26.6, 56.4, WESTFALL },
						{ 27.2, 45.0, WESTFALL },
						{ 28.8, 72.6, WESTFALL },
						{ 29.0, 34.6, WESTFALL },
						{ 29.0, 79.4, WESTFALL },
						{ 29.6, 39.8, WESTFALL },
						{ 31.0, 26.4, WESTFALL },
						{ 33.6, 83.2, WESTFALL },
						{ 35.0, 20.6, WESTFALL },
						{ 39.0, 15.0, WESTFALL },
						{ 43.0, 10.0, WESTFALL },
						{ 48.6, 10.0, WESTFALL },
						{ 55.2, 13.4, WESTFALL },
					},
					["groups"] = {
						i(2235, {	-- Brackclaw
							["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
						}),
						i(6179, {	-- Privateer's Cape
							["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
						}),
					},
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_ONE, n(210549, {	-- Defias Scout
					["coords"] = {
						{ 51.0, 47.0, WESTFALL },
						{ 51.6, 55.6, WESTFALL },
					},
					["description"] = "Hunters need to use Hunter's Mark.",
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
				n(573, {	-- Foe Reaper 4000
					["coords"] = {
						{ 38.6, 51.6, WESTFALL },
						{ 45.5, 36.0, WESTFALL },
						{ 51.6, 67.4, WESTFALL },
						{ 51.8, 24.6, WESTFALL },
						{ 62.8, 62.2, WESTFALL },
						-- #if AFTER CATA
						{ 54.6, 32.6, WESTFALL },
						-- #endif
					},
					["groups"] = {
						i(933, {	-- Large Rucksack
							["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
						}),
						i(4434, {	-- Scarecrow Trousers
							["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
						}),
					},
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_ONE, n(210501, {	-- Harvest Reaper Prototype
					["provider"] = { "i", 209057 },	-- Prototype Engine
					["coords"] = {
						{ 50.6, 18.8, WESTFALL },
						{ 52.8, 33.8, WESTFALL },
						{ 45.6, 39.0, WESTFALL },
						{ 35.6, 52.2, WESTFALL },
						{ 61.4, 58.8, WESTFALL },
					},
					["classes"] = { MAGE, WARLOCK },
					["groups"] = {
						i(208750, {	-- Rune of Channeling
							["classes"] = { WARLOCK },
							["groups"] = {
								recipe(403932),	-- Engrave Chest - Master Channeler
							},
						}),
						i(208799, {	-- Spell Notes: Living Bomb
							["classes"] = { MAGE },
							["groups"] = {
								recipe(415936),	-- Engrave Gloves - Living Bomb
							},
						}),
					},
				})),
				applyclassicphase(SOD_PHASE_ONE, n(210487, {	-- Horror of the Deep
					["providers"] = {
						{ "o", 408799 },	-- Idol of the Deep
						{ "i", 209045 },	-- Soul of the Sea
					},
					["coord"] = { 26.0, 69.5, WESTFALL },
					["classes"] = { WARRIOR, WARLOCK },
					["groups"] = {
						i(208778, {	-- Rune of Quick Strike
							["classes"] = { WARRIOR },
							["groups"] = {
								recipe(425443),	-- Engrave Gloves - Quick Strike
							},
						}),
						i(208744, {	-- Rune of Shadowbolts
							["classes"] = { WARLOCK },
							["groups"] = {
								recipe(403936),	-- Engrave Gloves - Shadow Bolt Volley
							},
						}),
					},
				})),
				-- #endif
				n(572, {	-- Leprithus
					["description"] =
						-- #if AFTER CATA
						"Spawns once a day at approximately 20:00/8 PM server time.",
						-- #else
						"Spawns at BOTH the northern and west-most southern spawn points at approximately 20:00/8 PM server time. If you are quick, you could probably snag both.",
						-- #endif
					["coords"] = {
						-- #if AFTER CATA
						{ 41.7, 29.3, WESTFALL },
						-- #else
						{ 42.4, 30.8, WESTFALL },
						{ 65.2, 63.2, WESTFALL },
						{ 60.0, 77.6, WESTFALL },
						-- #endif
					},
					["groups"] = {
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_ONE, i(205932, {	-- Prophecy of a King's Demise
							["timeline"] = { REMOVED_2_0_1 },
							["classes"] = { PRIEST },
							["groups"] = {
								recipe(402849),	-- Engrave Gloves - Shadow Word - Death
							},
						})),
						-- #endif
						i(1387, {	-- Ghoulfang
							["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
						}),
						i(1314, {	-- Ghoul Fingers
							["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
						}),
					},
				}),
				n(1424, {	-- Master Digger
					["description"] =
						-- #if AFTER CATA
						"Spawns inside Jangolode Mine, at the end of the cave.",
						-- #else
						"Spawns inside Jangolode Mine.",
						-- #endif
					["coord"] = { 46.2, 18.6, WESTFALL },
					["groups"] = {
						i(6205, {	-- Burrowing Shovel
							["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
						}),
						i(6206, {	-- Rock Chipper
							["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
						}),
					},
				}),
				n(506, {	-- Sergeant Brashclaw
					["coords"] = {
						-- #if AFTER CATA
						{ 60.0, 74.8, WESTFALL },
						{ 64.0, 73.8, WESTFALL },
						-- #else
						{ 37.6, 32.8, WESTFALL },
						-- #endif
					},
					["groups"] = {
						i(2203, {	-- Brashclaw's Chopper
							["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
						}),
						i(2204, {	-- Brashclaw's Skewer
							["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
						}),
					},
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_ONE, n(210533, {	-- Silverspur
					["coord"] = { 32.8, 35.9, WESTFALL },
					["cost"] = {{ "i", 209059, 1 }},	-- Goretusk Haunch
					["classes"] = { HUNTER },
					["groups"] = {
						i(208701, {	-- Rune of Beast Mastery
							["classes"] = { HUNTER },
							["groups"] = {
								recipe(410110),	-- Engrave Gloves - Beast Mastery
							},
						}),
					},
				})),
				-- #endif
				n(519, {	-- Slark
					["description"] = "Slark is running around the beach.",
					["coords"] = {
						{ 26.2, 65.6, WESTFALL },
						{ 26.6, 56.4, WESTFALL },
						{ 27.2, 45.0, WESTFALL },
						{ 28.8, 72.6, WESTFALL },
						{ 29.0, 34.6, WESTFALL },
						{ 29.0, 79.4, WESTFALL },
						{ 29.6, 39.8, WESTFALL },
						{ 31.0, 26.4, WESTFALL },
						{ 33.6, 83.2, WESTFALL },
						{ 35.0, 20.6, WESTFALL },
						{ 39.0, 15.0, WESTFALL },
						{ 43.0, 10.0, WESTFALL },
						{ 48.6, 10.0, WESTFALL },
						{ 49.8, 10.4, WESTFALL },
						{ 55.2, 13.4, WESTFALL },
						{ 56.0, 9.8, WESTFALL },
					},
					["groups"] = {
						i(3188, {	-- Coral Claymore
							["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
						}),
						i(120952, {	-- Slarkhide
							["timeline"] = { ADDED_10_1_7 },
						}),
						i(6180, {	-- Slarkskin
							["timeline"] = { REMOVED_4_0_3, ADDED_10_2_0 },
						}),
					},
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_ONE, n(210537, bubbleDownSelf({ ["timeline"] = { REMOVED_2_0_1 } }, {	-- Undying Laborer
					["coord"] = { 31.8, 43.5, WESTFALL },
					["groups"] = {
						i(208849, {	-- Libram of Blessings
							["classes"] = { PALADIN },
							["groups"] = {
								recipe(425618),	-- Engrave Chest - Horn of Lordaeron
							},
						}),
						i(205905, {	-- Memory of a Devout Champion
							["classes"] = { PRIEST },
							["groups"] = {
								recipe(425215),	-- Engrave Chest - Twisted Faith
							},
						}),
					},
				}))),
				-- #endif
				n(462, {	-- Vultros
					["coords"] = {
						-- #if AFTER CATA
						{ 58.0, 20.2, WESTFALL },
						{ 54.6, 24.6, WESTFALL },
						{ 49.2, 26.8, WESTFALL },
						{ 49.0, 33.6, WESTFALL },
						{ 56.0, 34.4, WESTFALL },
						-- #else
						{ 51.8, 24.6, WESTFALL },
						{ 45.5, 44.6, WESTFALL },
						{ 64.4, 56.0, WESTFALL },
						{ 45.6, 60.2, WESTFALL },
						{ 35.8, 68.4, WESTFALL },
						{ 64.0, 73.8, WESTFALL },
						-- #endif
					},
					["groups"] = {
						i(5971, {	-- Feathered Cape
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(115348, {	-- Feathered Cape
							["timeline"] = { ADDED_6_0_2 },
						}),
						i(4454, {	-- Talon of Vultros
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(115349, {	-- Talon of Vultros
							["timeline"] = { ADDED_6_0_2 },
						}),
					},
				}),
			}),
			-- #if SEASON_OF_DISCOVERY
			n(TREASURES, {
				applyclassicphase(SOD_PHASE_ONE, i(209845, {	-- Bewitchments and Glamours
					["provider"] = { "o", 409562 },	-- Spellbook
					["coord"] = { 45.4, 70.5, WESTFALL },
				})),
				applyclassicphase(SOD_PHASE_ONE, i(208860, {	-- Rumi of Gnomeregan: The Collected Works
					["provider"] = { "o", 408014 },	-- Gnomish Tome
					["coord"] = { 52.7, 53.8, WESTFALL },
				})),
				applyclassicphase(SOD_PHASE_ONE, i(208771, {	-- Rune of Blade Dance
					["providers"] = {
						{ "o", 408718 },	-- Equipment Stash
						{ "i", 209030 },	-- Equipment Stash Key
					},
					["coord"] = { 40.80, 80.24, WESTFALL },
					["classes"] = { ROGUE },
					["groups"] = {
						recipe(400099),	-- Engrave Pants - Blade Dance
					},
				})),
			}),
			-- #endif
			-- #if AFTER 9.0.2
			n(TREASURES, {
				o(357515, sharedDataSelf({ ["timeline"] = { ADDED_9_0_2 } }, {	-- Sack of Oats
					["coords"] = {
						{ 43.1, 37.3, WESTFALL },
						{ 44.9, 35.3, WESTFALL },
						{ 45.8, 39.0, WESTFALL },
						{ 46.4, 36.8, WESTFALL },
						{ 48.8, 20.8, WESTFALL },
						{ 50.3, 18.5, WESTFALL },
						{ 51.2, 21.8, WESTFALL },
						{ 51.2, 39.2, WESTFALL },
						{ 51.5, 31.9, WESTFALL },
						{ 51.8, 19.4, WESTFALL },
						{ 52.2, 30.6, WESTFALL },
						{ 52.2, 33.3, WESTFALL },
						{ 52.6, 34.3, WESTFALL },
						{ 53.3, 29.1, WESTFALL },
						{ 53.5, 35.1, WESTFALL },
						{ 53.9, 36.4, WESTFALL },
						{ 55.8, 30.9, WESTFALL },
						{ 56.4, 33.8, WESTFALL },
						{ 56.6, 18.5, WESTFALL },
						{ 56.8, 20.7, WESTFALL },
						{ 57.5, 17.4, WESTFALL },
						{ 58.5, 15.9, WESTFALL },
						{ 59.2, 18.9, WESTFALL },
					},
					["groups"] = {
						i(182581),	-- Handful of Oats
					},
				})),
			}),
			-- #endif
			n(VENDORS, {
				n(1669, {	-- Defias Profiteer <Free Wheeling Merchant>
					["coord"] = { 43.4, 66.8, WESTFALL },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					-- #if BEFORE 4.0.3
					["groups"] = {
						i(4788, {	-- Agile Boots
							["isLimited"] = true,
						}),
						i(4789, {	-- Stable Boots
							["isLimited"] = true,
						}),
						i(5640, {	-- Recipe: Rage Potion (RECIPE!)
							["isLimited"] = true,
						}),
					},
					-- #endif
				}),
				n(843, {	-- Gina MacGregor <Trade Supplies>
					["coord"] = { 57.6, 53.8, WESTFALL },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(6274, {	-- Pattern: Blue Overalls (RECIPE!)
							["isLimited"] = true,
						}),
						i(5786, {	-- Pattern: Murloc Scale Belt (RECIPE!)
							["isLimited"] = true,
						}),
						i(5787, {	-- Pattern: Murloc Scale Breastplate (RECIPE!)
							["isLimited"] = true,
						}),
						i(5771, {	-- Pattern: Red Linen Bag (RECIPE!)
							["isLimited"] = true,
						}),
					},
				}),
				n(4305, {	-- Kriggon Talsone <Fisherman>
					["coord"] = { 36.2, 90.0, WESTFALL },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(5528),	-- Recipe: Clam Chowder (RECIPE!)
						i(6368),	-- Recipe: Rainbow Fin Albacore (RECIPE!)
						i(6326),	-- Recipe: Slitherskin Mackerel (RECIPE!)
						i(16111),	-- Recipe: Spiced Chili Crab (RECIPE!)
					},
				}),
				n(43948, {	-- Private Jackson <Provisioner>
					["coord"] = { 42.2, 64.8, WESTFALL },
					["races"] = ALLIANCE_ONLY,
					["sym"] = {{"select","itemID",
						1198,	-- Claymore
						851,	-- Cutlass
						922,	-- Dacian Falx
						2024,	-- Espadon
						2207,	-- Jambiya
						2209,	-- Kris
						923,	-- Longsword
						2208,	-- Poniard
						20977,	-- Recruit's Shortsword
						2027,	-- Scimitar
						20982,	-- Sharp Dagger
					}},
				}),
				n(1668, {	-- William MacGregor <Bowyer>
					["coord"] = { 57.7, 53.7, WESTFALL },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(11304, {	-- Fine Longbow
							["isLimited"] = true,
						}),
					},
				}),
			}),
			n(ZONE_DROPS, {
				-- #if ANYCLASSIC
				i(3172, {	-- Boar Intestines
					["coord"] = { 54.2, 42.6, WESTFALL },
					["maps"] = { REDRIDGE_MOUNTAINS },
					["crs"] = {
						454,	-- Young Goretusk
						157,	-- Goretusk
						547,	-- Great Goretusk
					},
				}),
				-- #endif
				i(826, {	-- Brutish Riverpaw Axe
					["cr"] = 124,	-- Riverpaw Brute
					["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
					["coords"] = {
						-- #if BEFORE 4.0.3
						{ 54.2, 62.0, WESTFALL },
						{ 55.8, 68.4, WESTFALL },
						{ 55.4, 69.4, WESTFALL },
						{ 31.4, 70.4, WESTFALL },
						{ 48.8, 62.6, WESTFALL },
						-- #else
						{ 65.4, 72.4, WESTFALL },
						{ 50.8, 42.8, WESTFALL },
						{ 46.8, 53.8, WESTFALL },
						{ 49.4, 63.0, WESTFALL },
						{ 32.4, 71.8, WESTFALL },
						-- #endif
					},
				}),
				i(68724, {	-- Broken Barn Door
					["timeline"] = { ADDED_4_0_3 },
				}),
				i(1357, {	-- Captain Sander's Treasure Map
					["coords"] = {
						-- various common map locations where 'crs' may be found
						{ 28.8, 72.8, WESTFALL },
						{ 33.0, 83.6, WESTFALL },
						{ 34.6, 85.4, WESTFALL },
						{ 44.2, 9.6, WESTFALL },
						{ 50.8, 10.6, WESTFALL },
						{ 53.6, 11.6, WESTFALL },
						{ 55.8, 8.0, WESTFALL },
						{ 56.0, 9.8, WESTFALL },
						{ 56.6, 9.2, WESTFALL },
					},
					["crs"] = {
						126,	-- Murloc Coastrunner
						458,	-- Murloc Hunter
						456,	-- Murloc Minor Oracle
						513,	-- Murloc Netter
						517,	-- Murloc Oracle
						515,	-- Murloc Raider
						127,	-- Murloc Tidehunter
						171,	-- Murloc Warrior
						391,	-- Old Murk-Eye
						519,	-- Slark
					},
				}),
				-- #if ANYCLASSIC
				i(769, {	-- Chunk of Boar Meat
					["coord"] = { 54.2, 42.6, WESTFALL },
					["maps"] = { REDRIDGE_MOUNTAINS },
					["crs"] = {
						157,	-- Goretusk
						547,	-- Great Goretusk
						454,	-- Young Goretusk
					},
				}),
				-- #endif
				-- #if AFTER 4.0.3
				i(1927, {	-- Deadmines Cleaver
					["cr"] = 594,	-- Defias Henchman
				}),
				-- #endif
				i(1394, {	-- Driftwood Club
					["cr"] = 171,	-- Murloc Warrior
					["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
					["coords"] = {
						{ 32.2, 26.6, WESTFALL },
						{ 34.8, 23.6, WESTFALL },
						{ 26.0, 47.8, WESTFALL },
					},
				}),
				i(4290, {	-- Dust Bowl
					["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
					["crs"] = {
						-- #if AFTER 10.1.7
						42669,	-- Chasm Slime
						-- #else
						832,	-- Dust Devil
						-- #endif
					},
					["coords"] = {
						-- #if AFTER 10.1.7
						{ 36.0, 42.2, WESTFALL },
						{ 40.4, 39.8, WESTFALL },
						{ 39.0, 46.2, WESTFALL },
						-- #else
						{ 40.8, 22.0, WESTFALL },
						{ 35.8, 34.4, WESTFALL },
						{ 33.8, 49.4, WESTFALL },
						{ 34.6, 68.6, WESTFALL },
						{ 38.8, 61.4, WESTFALL },
						{ 42.6, 59.2, WESTFALL },
						{ 46.8, 48.6, WESTFALL },
						{ 43.0, 42.2, WESTFALL },
						{ 54.6, 41.0, WESTFALL },
						{ 61.6, 36.0, WESTFALL },
						{ 63.6, 51.4, WESTFALL },
						{ 68.8, 74.0, WESTFALL },
						-- #endif
					},
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_ONE, i(209058, {	-- Elemental Core
					["coords"] = {
						{ 40.8, 22.0, WESTFALL },
						{ 35.8, 34.4, WESTFALL },
						{ 33.8, 49.4, WESTFALL },
						{ 34.6, 68.6, WESTFALL },
						{ 38.8, 61.4, WESTFALL },
						{ 42.6, 59.2, WESTFALL },
						{ 46.8, 48.6, WESTFALL },
						{ 43.0, 42.2, WESTFALL },
						{ 54.6, 41.0, WESTFALL },
						{ 61.6, 36.0, WESTFALL },
						{ 63.6, 51.4, WESTFALL },
						{ 68.8, 74.0, WESTFALL },
					},
					["cr"] = 832,	-- Dust Devil
				})),
				-- #endif
				i(1405, {	-- Foamspittle Staff
					["cr"] = 517,	-- Murloc Oracle
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_ONE, i(208689, {	-- Ferocious Idol
					["classes"] = { DRUID },
					["crs"] = {
						452,	-- Riverpaw Bandit
						124,	-- Riverpaw Brute
						117,	-- Riverpaw Gnoll
						501,	-- Riverpaw Herbalist
						1426,	-- Riverpaw Miner
						123,	-- Riverpaw Mongrel
						453,	-- Riverpaw Mystic
						125,	-- Riverpaw Overseer
						500,	-- Riverpaw Scout
						1065,	-- Riverpaw Shaman
						98,		-- Riverpaw Taskmaster
					},
					["groups"] = {
						recipe(410023),	-- Engrave Pants - Savage Roar
					},
				})),
				applyclassicphase(SOD_PHASE_ONE, i(209043, {	-- Fertile Soil Sample
					["coord"] = { 45.6, 20.4, WESTFALL },
					["classes"] = { DRUID },
					["cr"] = 1236,	-- Kobold Digger
				})),
				applyclassicphase(SOD_PHASE_ONE, i(209042, {	-- Fishy Bonemeal
					["coord"] = { 50.0, 11.8, WESTFALL },
					["classes"] = { DRUID },
					["crs"] = {
						831,	-- Sea Crawler
						830,	-- Sand Crawler
						1216,	-- Shore Crawler
					},
				})),
				applyclassicphase(SOD_PHASE_ONE, i(209420, {	-- Gillsbane
					["description"] = "Supposedly this will not drop if you've completed the Quick Strike rune already.",
					["timeline"] = { REMOVED_2_0_1 },
					["classes"] = { WARRIOR },
					["coords"] = {
						{ 48.6, 21.8, WESTFALL },
						{ 47.6, 39.2, WESTFALL },
						{ 36.6, 74.4, WESTFALL },
						{ 37.6, 55.4, WESTFALL },
						{ 44.6, 67.6, WESTFALL },
						{ 51.6, 75.2, WESTFALL },
					},
					["crs"] = {
						449,	-- Defias Knuckleduster
						590,	-- Defias Looter
						589,	-- Defias Pillager
						121,	-- Defias Pathstalker
						 95,	-- Defias Smuggler
						504,	-- Defias Trapper
					},
				})),
				applyclassicphase(SOD_PHASE_ONE, i(209059, {	-- Goretusk Haunch
					["timeline"] = { REMOVED_2_0_1 },
					["classes"] = { HUNTER },
					["crs"] = {
						157,	-- Goretusk
						454,	-- Young Goretusk
					},
				})),
				-- #endif
				-- #if BEFORE 4.0.3
				i(723, {	-- Goretusk Liver
					["crs"] = {
						157,	-- Goretusk
						454,	-- Young Goretusk
					},
				}),
				i(731, {	-- Goretusk Snout
					["crs"] = {
						157,	-- Goretusk
						454,	-- Young Goretusk
					},
				}),
				i(1401, {	-- Green Tea Leaf / Riverpaw Tea Leaf
					["cr"] = 501,	-- Riverpaw Herbalist
				}),
				-- #endif
				i(2087, {	-- Hard Crawler Carapace
					["cr"] = 830,	-- Sand Crawler
				}),
				i(57935, {	-- Harvest Watcher Heart
					["coord"] = { 54.4, 33.2, WESTFALL },	-- center of area where Harvest Watchers spawn
					["timeline"] = { ADDED_4_0_3 },
					["cr"] = 114,	-- Harvest Watcher
				}),
				-- #if BEFORE 4.0.3
				i(1274, {	-- Hops
					["crs"] = {
						573,	-- Foe Reaper 4000
						 36,	-- Harvest Golem
						115,	-- Harvest Reaper
						114,	-- Harvest Watcher
						480,	-- Rusty Harvest Golem
					},
				}),
				-- #endif
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_ONE, i(208851, {	-- Libram of Justice
					["coord"] = { 69.8, 72.4, WESTFALL },
					["description"] = "While this supposedly can drop from the Drones, don't bother. Go loot the chest in Loch Modan instead!",
					["timeline"] = { REMOVED_2_0_1 },
					["classes"] = { PALADIN },
					["races"] = ALLIANCE_ONLY,
					["cr"] = 7050,	-- Defias Drone
					["groups"] = {
						recipe(410001),	-- Engrave Gloves - Hand of Reckoning
					},
				})),
				-- #endif
				i(2088, {	-- Long Crawler Limb
					["cr"] = 831,	-- Sea Crawler
				}),
				i(2091, {	-- Magic Dust
					["timeline"] = { REMOVED_4_0_3 },
					-- #if BEFORE 4.0.3
					["cr"] = 832,	-- Dust Devil
					["coords"] = {
						{ 40.8, 22.0, WESTFALL },
						{ 35.8, 34.4, WESTFALL },
						{ 33.8, 49.4, WESTFALL },
						{ 34.6, 68.6, WESTFALL },
						{ 38.8, 61.4, WESTFALL },
						{ 42.6, 59.2, WESTFALL },
						{ 46.8, 48.6, WESTFALL },
						{ 43.0, 42.2, WESTFALL },
						{ 54.6, 41.0, WESTFALL },
						{ 61.6, 36.0, WESTFALL },
						{ 63.6, 51.4, WESTFALL },
						{ 68.8, 74.0, WESTFALL },
					},
					-- #endif
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_ONE, i(209041, {	-- Magic Pumpkin Seeds
					["timeline"] = { REMOVED_2_0_1 },
					["classes"] = { DRUID },
					["coords"] = {
						{ 48.6, 21.8, WESTFALL },
						{ 47.6, 39.2, WESTFALL },
						{ 36.6, 74.4, WESTFALL },
						{ 37.6, 55.4, WESTFALL },
						{ 44.6, 67.6, WESTFALL },
						{ 51.6, 75.2, WESTFALL },
					},
					["crs"] = {
						449,	-- Defias Knuckleduster
						590,	-- Defias Looter
						589,	-- Defias Pillager
						121,	-- Defias Pathstalker
						 95,	-- Defias Smuggler
						504,	-- Defias Trapper
					},
				})),
				-- #endif
				i(732, {	-- Okra
					["crs"] = {
						573,	-- Foe Reaper 4000
						36,		-- Harvest Golem
						115,	-- Harvest Reaper
						114,	-- Harvest Watcher
						480,	-- Rusty Harvest Golem
					},
				}),
				i(1190, {	-- Overseer's Cloak
					["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
					["crs"] = {
						-- #if AFTER 10.1.7
						 98,	-- Riverpaw Taskmaster
						-- #else
						125,	-- Riverpaw Overseer
						-- #endif
					},
					["coords"] = {
						{ 63.8, 74.6, WESTFALL },
						{ 58.0, 72.2, WESTFALL },
					},
				}),
				i(1189, {	-- Overseer's Ring
					["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
					["crs"] = {
						-- #if AFTER 10.1.7
						98,	-- Riverpaw Taskmaster
						-- #else
						125,	-- Riverpaw Overseer
						-- #endif
					},
					-- #if BEFORE 4.0.3
					["coords"] = {
						{ 63.8, 78.6, WESTFALL },
						{ 60.2, 76.6, WESTFALL },
						{ 60.2, 70.8, WESTFALL },
						{ 63.6, 72.8, WESTFALL },
					},
					-- #endif
				}),
				i(5771, {	-- Pattern: Red Linen Bag (RECIPE!)
					["cr"] = 590,	-- Defias Looter
				}),
				-- #if BEFORE 4.0.3
				i(5772, {	-- Pattern: Red Woolen Bag (RECIPE!)
					["cr"] = 450,	-- Defias Renegade Mage
				}),
				-- #endif
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_ONE, i(209057, {	-- Prototype Engine
					["cost"] = {
						{ "i", 209056, 1 },	-- Spare Reaper Parts
						{ "i", 209056, 1 },	-- Spare Reaper Parts
					},
				})),
				-- #endif
				-- #if AFTER 4.0.3
				i(2698, {	-- Recipe: Cooked Crab Claw (RECIPE!)
					["description"] = "Can drop from any hostile creature in the zone.\nRecommended farming spot: Murlocs in the north area.",
				}),
				i(728, {	-- Recipe: Westfall Stew (RECIPE!)
					["description"] = "Can drop from any hostile creature in the zone.\nRecommended: farm the Riverpaw Gnolls.",
				}),
				-- #endif
				i(58117, {	-- Red Bandana
					["coord"] = { 42.6, 69.4, WESTFALL },	-- center of area where Moonbrook Thugs spawn
					["timeline"] = { ADDED_4_0_3 },
					["cr"] = 42677,	-- Moonbrook Thug
				}),
				i(821, {	-- Riverpaw Leather Vest
					["cr"] = 123,	-- Riverpaw Mongrel
				}),
				i(1391, {	-- Riverpaw Mystic Staff
					["cr"] = 453,	-- Riverpaw Mystic
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_ONE, i(208741, {	-- Rune of Endless Rage
					["description"] = "This Rune can drop from any of the Rare creatures in the zone.",
					["coord"] = { 34.4, 84.6, WESTFALL },
					["timeline"] = { REMOVED_2_0_1 },
					["classes"] = { WARRIOR },
					["cr"] = 391,	-- Old Murk-Eye
					["groups"] = {
						recipe(403489),	-- Engrave Gloves - Endless Rage
					},
				})),
				-- #endif
				i(832, {	-- Silver Defias Belt
					["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
					["crs"] = {
						-- #if AFTER 10.1.7
						42677,	-- Moonbrook Thug
						-- #else
						121,	-- Defias Pathstalker
						-- #endif
					},
					["coords"] = {
						-- #if AFTER 10.1.7
						{ 44.4, 68.6, WESTFALL },
						{ 42.6, 72.0, WESTFALL },
						-- #else
						{ 51.6, 75.2, WESTFALL },
						{ 37.6, 75.0, WESTFALL },
						-- #endif
					},
				}),
				i(820, {	-- Slicer Blade
					["cr"] = 115,	-- Harvest Reaper
				}),
				i(816, {	-- Small Hand Blade
					["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
					["crs"] = {
						-- #if AFTER 10.1.7
						114,	-- Harvest Watcher
						-- #else
						 36,	-- Harvest Golem
						-- #endif
					},
					["coords"] = {
						-- #if AFTER 10.1.7
						{ 57.0, 34.2, WESTFALL },
						{ 54.6, 32.2, WESTFALL },
						-- #else
						{ 57.6, 36.4, WESTFALL },
						{ 49.6, 33.2, WESTFALL },
						{ 32.8, 35.0, WESTFALL },
						{ 35.8, 46.0, WESTFALL },
						{ 47.6, 67.6, WESTFALL },
						-- #endif
					},
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_ONE, i(209045, {	-- Soul of the Sea
					["provider"] = { "i", 209420 },	-- Gillsbane
					["description"] = "This will only drop if you have Gillsbane equipped and haven't completed your Quick Strike rune yet.",
					["timeline"] = { REMOVED_2_0_1 },
					["classes"] = { WARRIOR },
					["coords"] = {
						-- various common map locations where 'crs' may be found
						{ 28.8, 72.8, WESTFALL },
						{ 33.0, 83.6, WESTFALL },
						{ 34.6, 85.4, WESTFALL },
						{ 44.2, 9.6, WESTFALL },
						{ 50.8, 10.6, WESTFALL },
						{ 53.6, 11.6, WESTFALL },
						{ 55.8, 8.0, WESTFALL },
						{ 56.0, 9.8, WESTFALL },
						{ 56.6, 9.2, WESTFALL },
					},
					["crs"] = {
						126,	-- Murloc Coastrunner
						458,	-- Murloc Hunter
						456,	-- Murloc Minor Oracle
						513,	-- Murloc Netter
						517,	-- Murloc Oracle
						515,	-- Murloc Raider
						127,	-- Murloc Tidehunter
						171,	-- Murloc Warrior
						391,	-- Old Murk-Eye
						519,	-- Slark
					},
				})),
				applyclassicphase(SOD_PHASE_ONE, i(209056, {	-- Spare Reaper Parts
					["coords"] = {
						{ 59.0, 18.2, WESTFALL },
						{ 54.4, 25.6, WESTFALL },
						{ 50.0, 22.6, WESTFALL },
						{ 54.6, 34.6, WESTFALL },
						{ 45.8, 36.0, WESTFALL },
						{ 39.2, 52.0, WESTFALL },
						{ 47.6, 67.6, WESTFALL },
						{ 63.6, 60.2, WESTFALL },
					},
					["crs"] = {
						 36,	-- Harvest Golem
						115,	-- Harvest Reaper
						114,	-- Harvest Watcher
						480,	-- Rusty Harvest Golem
					},
				})),
				applyclassicphase(SOD_PHASE_ONE, i(208754, {	-- Spell Notes: TENGI RONEERA
					["coord"] = { 53.0, 78.8, WESTFALL },
					["timeline"] = { REMOVED_2_0_1 },
					["classes"] = { MAGE },
					["cr"] = 450,	-- Defias Renegade Mage
				})),
				-- #endif
				-- #if BEFORE 10.1.7
				i(1933, {	-- Staff of Conjuring
					-- Moved to Brainwashed Noble in 10.1.7
					["timeline"] = { REMOVED_4_0_3 },
					["cr"] = 619,	-- Defias Conjurer
					["coords"] = {
						{ 44.6, 69.4, WESTFALL },
						{ 42.6, 71.6, WESTFALL },
					},
				}),
				-- #endif
				i(2327, {	-- Sturdy Leather Bracers
					["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
					["crs"] = {
						-- #if AFTER 10.1.7
						452,	-- Riverpaw Bandit
						-- #else
						480,	-- Rusty Harvest Golem
						-- #endif
					},
					["coords"] = {
						-- #if AFTER 10.1.7
						{ 56.6, 70.0, WESTFALL },
						{ 59.6, 75.0, WESTFALL },
						-- #else
						{ 59.6, 18.6, WESTFALL },
						{ 54.6, 26.0, WESTFALL },
						-- #endif
					},
				}),
				i(827, {	-- Wicked Blackjack
					["crs"] = {
						122,	-- Defias Highwayman
						449,	-- Defias Knuckleduster
					},
				}),
			}),
		},
	}),
}));
