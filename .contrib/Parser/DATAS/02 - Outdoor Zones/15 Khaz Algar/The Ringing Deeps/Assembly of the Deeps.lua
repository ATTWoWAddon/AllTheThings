---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

local FIRELIGHT_RUBY = 224642;

AWAKENING_THE_MACHINE = createHeader({
	readable = "Awakening The Machine",
	icon = 5768149,
	text = {
		en = "Awakening The Machine",
		de = "Erweckung der Maschine",
		es = "Despertar la máquina",
		mx = "Despertar de la Máquina",
		fr = "L’éveil de la machine",
		it = "Risveglio della Macchina",
		ko = "기계의 각성",
		pt = "Despertando a Máquina",
		ru = "Пробуждение Машины",
		cn = "主机觉醒",
		tw = "甦醒機械",
	},
});
SNUFFLING = createHeader({
	readable = "Snuffling",
	icon = 648644,
	text = {
		en = "Snuffling",
		de = "Schnüffeln",
		es = "Olfatear",
		mx = "Husmeo",
		fr = "Flair",
		it = "Fiuta e Scruta",
		ko = "냄새맡기",
		pt = "Fuçar",
		ru = "Разнюхивание",
		cn = "嗅探",
		tw = "嗅聞",
	},
});

root(ROOTS.Zones, m(KHAZ_ALGAR, {
	m(THE_RINGING_DEEPS, {
		header(HEADERS.Faction, FACTION_THE_ASSEMBLY_OF_THE_DEEPS, {
			["icon"] = 5891367,
			["groups"] = {
				faction(FACTION_THE_ASSEMBLY_OF_THE_DEEPS),
				title(564, {	-- Machine Whisperer
					["minReputation"] = { FACTION_THE_ASSEMBLY_OF_THE_DEEPS, 25 },
				}),
				n(ACHIEVEMENTS, {
					ach(40836, {	-- Forging Deep Friendships
						["minReputation"] = { FACTION_THE_ASSEMBLY_OF_THE_DEEPS, 15 },
						["timeline"] = { ADDED_11_0_2, REMOVED_11_0_7 },
					}),
					ach(41165, {	-- Assembly of the Deeps
						["minReputation"] = { FACTION_THE_ASSEMBLY_OF_THE_DEEPS, 15 },
						["timeline"] = { ADDED_11_0_7 },
					}),
					ach(40905, {	-- From Many, One
						["minReputation"] = { FACTION_THE_ASSEMBLY_OF_THE_DEEPS, 25 },
						["timeline"] = { ADDED_11_0_2, REMOVED_11_0_7 },
					}),
					ach(41166, {	-- From Many, One
						["minReputation"] = { FACTION_THE_ASSEMBLY_OF_THE_DEEPS, 25 },
						["timeline"] = { ADDED_11_0_7 },
					}),
				}),
				n(AWAKENING_THE_MACHINE, {
					["crs"] = { 217128 },	-- Speaker Kuldas <Awakening the Machine>
					["coord"] = { 47.5, 31.9, THE_RINGING_DEEPS },
					["groups"] = {
						n(ACHIEVEMENTS, {
							ach(40662, {	-- It's Not Much, But It's Honest Work
								title(568),	-- <Name>, Machine-Warden
							}),
						}),
						n(QUESTS, {
							q(83333, {	-- Gearing Up for Trouble
								["providers"] = {
									-- #if BEFORE 11.0.5
									{ "n", 216164 },	-- Gnawbles
									-- #else
									{ "n", 217128 },	-- Speaker Kuldas
									-- #endif
								},
								["coords"] = {
									-- #if BEFORE 11.0.5
									{ 47.7, 35.3, THE_RINGING_DEEPS },
									-- #else
									{ 47.5, 32.0, THE_RINGING_DEEPS },
									-- #endif
								},
								["isWeekly"] = true,
								["groups"] = {
									container(226273, {	-- Awakened Mechanical Cache
										["providers"] = {
											-- future season versions
											-- #if AFTER 11.1
											{ "i", 239121 },	-- S2
											-- #endif
											-- #if AFTER 11.2
											{ "i", 250765 },	-- S3
											-- #endif
										},
										["groups"] = {
											i(223128),	-- Formula: Enchant Chest - Oathsworn's Strength (RECIPE!)
											i(224426),	-- Pattern: Ignition Satchel (RECIPE!)
											i(223040),	-- Plans: Charged Crusher (RECIPE!)
										},
									}),
									i(226273, {	-- Awakened Mechanical Cache (S1)
										["sym"] = {{"select","itemID",228361},{"pop"}},	-- Seasoned Adventurer's Cache [Khaz Algar Zone Rewards content]
										["timeline"] = { ADDED_11_0_2, REMOVED_11_1_0_SEASONSTART },
									}),
									i(239121, {	-- Awakened Mechanical Cache (S2)
										["sym"] = {{"select","itemID",228361},{"pop"}},	-- Seasoned Adventurer's Cache [Khaz Algar Zone Rewards content]
										["timeline"] = { ADDED_11_1_0_SEASONSTART, REMOVED_11_2_0_SEASONSTART },
									}),
									i(250765, {	-- Awakened Mechanical Cache (S3)
										["sym"] = {{"select","itemID",228361},{"pop"}},	-- Seasoned Adventurer's Cache [Khaz Algar Zone Rewards content]
										["timeline"] = { ADDED_11_2_0_SEASONSTART },
									}),
								},
							}),
						}),
						n(TREASURES, {
							o_repeated({
								-- Loot
								i(223269),	-- Machine Defense Unit 1-11 (MOUNT!)
								i(226218),	-- Machine-Warden's Cloak
								i(229000),	-- Machine-Warden's Cog
								i(226221),	-- Machine-Warden's Pauldrons
								i(226220),	-- Machine-Warden's Tabard

								-- Treasures
								o(465243, {	-- Awakened Cache
									["coord"] = { 47.4, 31.9, THE_RINGING_DEEPS },
									["questID"] = 84642,
									["isWeekly"] = true,
								}),
								o(465242, {	-- Awakened Cache
									["coord"] = { 47.5, 32.0, THE_RINGING_DEEPS },
									["questID"] = 84644,
									["isWeekly"] = true,
								}),
								o(465241, {	-- Awakened Cache
									["coord"] = { 47.5, 31.9, THE_RINGING_DEEPS },
									["questID"] = 84646,
									["isWeekly"] = true,
								}),
								o(464938, {	-- Awakened Cache
									["coord"] = { 47.5, 31.9, THE_RINGING_DEEPS },
									["questID"] = 84647,
									["isWeekly"] = true,
								}),
							}),
						}),
						n(VENDORS, {
							n(225189, {	-- R-K-MEDES <Awakening The Machine>
								["coord"] = { 47.5, 32.0, THE_RINGING_DEEPS },
								["groups"] = bubbleDownRep(FACTION_THE_ASSEMBLY_OF_THE_DEEPS, {
									{		-- RENOWN 1 --
									}, {	-- RENOWN 2 --
									}, {	-- RENOWN 3 --
									}, {	-- RENOWN 4 --
									}, {	-- RENOWN 5 --
									}, {	-- RENOWN 6 --
									}, {	-- RENOWN 7 --
										i(225778, {	-- Awakening Power: Edict of Alacrity
											["cost"] = { { "c", RESONANCE_CRYSTALS, 325 } },
										}),
										i(225779, {	-- Awakening Power: Edict of Haste
											["cost"] = { { "c", RESONANCE_CRYSTALS, 325 } },
										}),
										i(225782, {	-- Awakening Power: Edict of Rage
											["cost"] = { { "c", RESONANCE_CRYSTALS, 325 } },
										}),
										i(225780, {	-- Awakening Power: Edict of Regeneration
											["cost"] = { { "c", RESONANCE_CRYSTALS, 325 } },
										}),
										i(225781, {	-- Awakening Power: Edict of Stamina
											["cost"] = { { "c", RESONANCE_CRYSTALS, 325 } },
										}),
									}, {	-- RENOWN 8 --
									}, {	-- RENOWN 9 --
									}, {	-- RENOWN 10 --
									}, {	-- RENOWN 11 --
									}, {	-- RENOWN 12 --
									}, {	-- RENOWN 13 --
									}, {	-- RENOWN 14 --
									}, {	-- RENOWN 15 --
										i(225773, {	-- Awakening Power: Grace of the Machine
											["cost"] = { { "c", RESONANCE_CRYSTALS, 650 } },
										}),
										i(225774, {	-- Awakening Power: Inner Forge
											["cost"] = { { "c", RESONANCE_CRYSTALS, 650 } },
										}),
										i(225775, {	-- Awakening Power: Steam Vent
											["cost"] = { { "c", RESONANCE_CRYSTALS, 650 } },
										}),
										i(225769, {	-- Awakening Power: Urgent Repairs
											["cost"] = { { "c", RESONANCE_CRYSTALS, 650 } },
										}),
									}, {	-- RENOWN 16 --
									}, {	-- RENOWN 17 --
									}, {	-- RENOWN 18 --
									}, {	-- RENOWN 19 --
									}, {	-- RENOWN 20 --
									}, {	-- RENOWN 21 --
									}, {	-- RENOWN 22 --
										i(225777, {	-- Awakening Power: Cogwalker Support
											["cost"] = { { "c", RESONANCE_CRYSTALS, 975 } },
										}),
										i(225776, {	-- Awakening Power: Ironstrider Support
											["cost"] = { { "c", RESONANCE_CRYSTALS, 975 } },
										}),
									}, {	-- RENOWN 23 --
									}, {	-- RENOWN 24 --
									}, {	-- RENOWN 25 --
									},
								}),
							}),
						}),
					},
				}),
				n(QUESTS, sharedData({
					["qgs"] = {
						221390,	-- Waxmonger Squick <Quatermaster>
						223726,	-- Waxmonger Quiwik <Keeper of Renown>
					},
					["coords"] = {
						{ 47.5, 32.8, THE_RINGING_DEEPS },
						{ 39.2, 24.0, DORNOGAL },
					},
				}, bubbleDownRep(FACTION_THE_ASSEMBLY_OF_THE_DEEPS, {
					{		-- RENOWN 1 --
					}, {	-- RENOWN 2 --
					}, {	-- RENOWN 3 --
					}, {	-- RENOWN 4 --
						q(82367, {	-- Earth-Encrusted Gem
							i(223951),	-- Earth-Encrusted Gem
						}),
					}, {	-- RENOWN 5 --
					}, {	-- RENOWN 6 --
						q(82369, {	-- A Shining Bundle of Goods
							i(226148),	-- Wax-sealed Weathered Crests
						}),
						q(85538, {	-- Shinies
								currency(RESONANCE_CRYSTALS),
						}),
					}, {	-- RENOWN 7 --
						q(84914),	-- Valorstones
					}, {	-- RENOWN 8 --
						q(82371, {	-- A Flickering Candle
							i(226146),	-- Handful of Humming Shinies
						}),
					}, {	-- RENOWN 9 --
						q(82370),	-- Crests
						q(85539),	-- Take Candle!
					}, {	-- RENOWN 10 --
						q(82372, {	-- Deeps Unifier
							i(218343),	-- Tabard of the Assembly (COSMETIC!)
							i(226146),	-- Handful of Humming Shinies
						}),
					}, {	-- RENOWN 11 --
						q(82373, {	-- Crests and Rocks
							i(226147),	-- Bunch of Brave Rocks
						}),
					}, {	-- RENOWN 12 --
						q(82374, {	-- A Shining Candle
							i(226149),	-- Pile of Humming Shinies
						}),
					}, {	-- RENOWN 13 --
						q(85540, {	-- Take Big Candle!
							i(226155),	-- Big Candle
						}),
						q(82375),	-- Take Key!
					}, {	-- RENOWN 14 --
						q(82376),	-- A Large Bundle of Goods
					}, {	-- RENOWN 15 --
						q(82377),	-- Crests
						q(85541, {	-- Here's a Shiny!
							i(226150),	-- Gem-Studded Candelabra
						}),
					}, {	-- RENOWN 16 --
						q(82378),	-- Valorstones
					}, {	-- RENOWN 17 --
						q(83043),	-- Carved Crests
					}, {	-- RENOWN 18 --
						q(82379, {	-- An Overflowing Bundle of Shinies
							currency(RESONANCE_CRYSTALS),
							i(226151),	-- Wax-Coated Coffer Unlocker
						}),
					}, {	-- RENOWN 19 --
					}, {	-- RENOWN 20 --
						q(82381, {	-- A Scintillating Candle
							i(226150),	-- Gem-Studded Candelabra
						}),
					}, {	-- RENOWN 21 --
						q(82382),	-- Crests
						q(85542, {	-- Take Really Big Candle!
							i(226156),	-- Really Big Candle
						}),
					}, {	-- RENOWN 22 --
						q(82383, {	-- Brave Rocks
							i(226147),	-- Bunch of Brave Rocks
						}),
						q(85543),	-- More Shinies!
					}, {	-- RENOWN 23 --
						q(83046),	-- Carved Crests
					}, {	-- RENOWN 24 --
						q(82384, {	-- A Big, Big Shiny!
							i(224072),	-- Enchanted Runed Harbinger Crest
						}),
						q(85544, {	-- Many Little Shinies!
							i(226153),	-- Big Pile of Humming Shinies
						}),
					}, {	-- RENOWN 25 --
						q(82385, {	-- For What Glimmers in Candlelight
							i(226147),	-- Bunch of Rocks
						}),
						------ Paragon ------
						q(79220, {	-- Renowned with the Assembly of the Deeps
							["provider"] = { "n", 221390 },	-- Waxmonger Squick <Quatermaster>
							["coord"] = { 47.5, 32.8, THE_RINGING_DEEPS },
							["isRepeatable"] = true,
							["groups"] = { i(225245) },	-- Overflowing Trove of the Deeps
						}),
					},
				}))),
				n(SNUFFLING, {
					n(QUESTS, {
						q(80378, {	-- A Light of the Dark
							["description"] = "Quest Item drops from Nerubian enemies in the area.\nYou may need to get a few stacks of Unseeming Shift by standing in Blood Pools.",
							["provider"] = { "i", 217390 },	-- Coagulated Black Blood Clot
							["coord"] = { 64.8, 80.8, AZJ_KAHET },
							["groups"] = {
								i(217391),	-- Coagulated Black Blood (QI!)
								i(220161),	-- Coagulated Sticks of Blood
							},
						}),
						q(79555, {	-- Deep Wax Galactic
							["description"] = "Quest Item drops from Nerubian enemies in the area.",
							["provider"] = { "i", 217385 },	-- Clump of Waxy Excretion
							["coord"] = { 79.4, 76.5, AZJ_KAHET },
							["groups"] = {
								i(212980),	-- Waxy Excretion (QI!)
							},
						}),
						q(82957, {	-- Thanks for the Wax
							["repeatable"] = true,
							["groups"] = {
								i(224642),	-- Firelight Ruby
							},
						}),
					}),
					n(REWARDS, {
						i(228210),	-- Firelight Ruby Chip -- this might not belong here idk
					}),
					n(TREASURES, {
						i(223133),	-- Formula: Illusory Adornment: Crystal (RECIPE!)
						-- Alex: was looted from mobs during WQ 82580 (Courier Mission: Ore Recovery)
						-- could be just zone drop or mob specific type? e.g. deepflayers?
					}),
					n(VENDORS, {
						n(216164, {	-- Gnawbles
							["coord"] = { 47.7, 35.3, THE_RINGING_DEEPS },
							["groups"] = {
								i(224726, {	-- Waxy Box of Rocks
									["cost"] = { { "i", FIRELIGHT_RUBY, 1 } },
								}),
								i(224724, {	-- Waxy Bundle of Dust
									["cost"] = { { "i", FIRELIGHT_RUBY, 1 } },
								}),
								i(224725, {	-- Waxy Bundle of Herbs
									["cost"] = { { "i", FIRELIGHT_RUBY, 1 } },
								}),
								i(224723, {	-- Waxy Bundle of Leather
									["cost"] = { { "i", FIRELIGHT_RUBY, 1 } },
								}),
								i(224722, {	-- Waxy Bundle of Resonant Crystals
									["cost"] = { { "i", FIRELIGHT_RUBY, 1 } },
								}),
								i(224646, {	-- Coppers (PET!)
									["cost"] = { { "i", FIRELIGHT_RUBY, 1 } },
								}),
								i(224643, {	-- Pet-Sized Candle (TOY!)
									["cost"] = { { "i", FIRELIGHT_RUBY, 1 } },
								}),
								i(224761, {	-- Quickwick Candle Kit
									["cost"] = { { "i", FIRELIGHT_RUBY, 1 } },
								}),
								i(224649, {	-- Wax Arsenal
									["cost"] = { { "i", FIRELIGHT_RUBY, 1 } },
								}),
								i(224721, {	-- Wax-Sealed Box
									["cost"] = { { "i", FIRELIGHT_RUBY, 1 } },
								}),
								i(224760, {	-- Wobbles (PET!)
									["cost"] = { { "i", FIRELIGHT_RUBY, 1 } },
								}),
								i(228220, {	-- Waxy Bundle
									["cost"] = { { "i", 228210, 1 } },	-- Firelight Ruby Chip
								}),
							},
						}),
					}),
				}),
				n(VENDORS, {
					n(221390, {	-- Waxmonger Squick <Quatermaster>
						["coord"] = { 47.3, 32.9, THE_RINGING_DEEPS },
						["groups"] = bubbleDownRep(FACTION_THE_ASSEMBLY_OF_THE_DEEPS, {
							{		-- RENOWN 1 --
								i(253162, {	-- Earthen Chain Wall Shelf (DECOR!)
									["timeline"] = { ADDED_11_2_7 },
									["cost"] = { { "c", RESONANCE_CRYSTALS, 600  } },
									-- Exo Note: Unknown which Renown rank
								}),
								i(228418, {	-- Noncandescent Smithing Choker
									["cost"] = { { "c", RESONANCE_CRYSTALS, 250 } },
								}),
							}, {	-- RENOWN 2 --
								i(223063, {	-- Technique: Contract: Assembly of the Deeps (RECIPE!)
									["cost"] = { { "i", ARTISANS_ACUITY, 150 } },
								}),
							}, {	-- RENOWN 3 --
								i(225995, {	-- Pattern: Hideseeker's Tote (RECIPE!)
									["cost"] = { { "i", ARTISANS_ACUITY, 150 } },
								}),
								i(218342, {	-- Shawl of the Assembly
									["cost"] = { { "c", RESONANCE_CRYSTALS, 1625 } },
								}),
							}, {	-- RENOWN 4 --
								i(224418, {	-- Recipe: Everything Stew (RECIPE!)
									["cost"] = { { "c", RESONANCE_CRYSTALS, 1000 } },
								}),
							}, {	-- RENOWN 5 --
							}, {	-- RENOWN 6 --
							}, {	-- RENOWN 7 --
							}, {	-- RENOWN 8 --
								i(212107, {	-- Inflammable Forging Goggles
									["cost"] = { { "c", RESONANCE_CRYSTALS, 3900 } },
								}),
								i(223294, {	-- Noncandescent Smithing Hood
									["cost"] = { { "c", RESONANCE_CRYSTALS, 3900 } },
								}),
								i(223295, {	-- Slag-Accruing Mask
									["cost"] = { { "c", RESONANCE_CRYSTALS, 3900 } },
								}),
								i(223293, {	-- Unmelting Ironworker Helmet
									["cost"] = { { "c", RESONANCE_CRYSTALS, 3900 } },
								}),
							}, {	-- RENOWN 9 --
							}, {	-- RENOWN 10 --
								i(224172, {	-- Restored Coffer Key
									["cost"] = { { "c", RESONANCE_CRYSTALS, 650 } },
								}),
							}, {	-- RENOWN 11 --
							}, {	-- RENOWN 12 --
								i(224653, {	-- Machine-Learned Engineering Notes (CI!)
									["cost"] = { { "i", ARTISANS_ACUITY, 50 } },
									["requireSkill"] = ENGINEERING,
								}),
								i(224654, {	-- Machine-Learned Inscription Notes (CI!)
									["cost"] = { { "i", ARTISANS_ACUITY, 50 } },
									["requireSkill"] = INSCRIPTION,
								}),
								i(224651, {	-- Machine-Learned Mining Notes (CI!)
									["cost"] = { { "i", ARTISANS_ACUITY, 50 } },
									["requireSkill"] = MINING,
								}),
							}, {	-- RENOWN 13 --
							}, {	-- RENOWN 14 --
								i(218341, {	-- Shoulderguards of the Assembly
									["cost"] = { { "c", RESONANCE_CRYSTALS, 3250 } },
								}),
							}, {	-- RENOWN 15 --
							}, {	-- RENOWN 16 --
							}, {	-- RENOWN 17 --
								i(223623, {	-- Guacamole (PET!)
									["cost"] = { { "c", RESONANCE_CRYSTALS, 6500 } },
								}),
							}, {	-- RENOWN 18 --
								i(228698, {	-- Candleflexer's Dumbbell (TOY!)
									["cost"] = { { "c", RESONANCE_CRYSTALS, 5000 } },
								}),
								i(223306, {	-- Inflammable Forging Cinch
									["cost"] = { { "c", RESONANCE_CRYSTALS, 2600 } },
								}),
								i(223305, {	-- Noncandescent Smithing Cord
									["cost"] = { { "c", RESONANCE_CRYSTALS, 2600 } },
								}),
								i(223304, {	-- Slag-Accruing Waistguard
									["cost"] = { { "c", RESONANCE_CRYSTALS, 2600 } },
								}),
								i(223307, {	-- Unmelting Ironworker Clasp
									["cost"] = { { "c", RESONANCE_CRYSTALS, 2600 } },
								}),
							}, {	-- RENOWN 19 --
								i(223505, {	-- Crimson Mudnose (MOUNT!)
									["cost"] = { { "c", RESONANCE_CRYSTALS, 8125 } },
								}),
							}, {	-- RENOWN 20 --
							}, {	-- RENOWN 21 --
							}, {	-- RENOWN 22 --
							}, {	-- RENOWN 23 --
								i(222989, {	-- Cyan Glowmite (MOUNT!)
									["cost"] = { { "c", RESONANCE_CRYSTALS, 11375 } },
								}),
							}, {	-- RENOWN 24 --
							}, {	-- RENOWN 25 --
							},
						}),
					}),
				}),
			},
		}),
	}),
}));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.TWW, {
	header(HEADERS.Faction, FACTION_THE_ASSEMBLY_OF_THE_DEEPS, {
		n(AWAKENING_THE_MACHINE, {
			q(84631, {	-- Wave 5
				["name"] = "Awakening The Machine: Wave 5 Completed.",
			}),
			q(84632, {	-- Wave 10
				["name"] = "Awakening The Machine: Wave 10 Completed.",
			}),
			q(84633, {	-- Wave 15
				["name"] = "Awakening The Machine: Wave 15 Completed.",
			}),
			q(84634, {	-- Wave 20
				["name"] = "Awakening The Machine: Wave 20 Completed. Congratulations.",
			}),
		}),
		n(QUESTS, {
			q(84622),	-- Renown 4
			q(84623),	-- Renown 4
		}),
		n(SNUFFLING, {
			q(84433),	-- Show wax to Gnawbles for 79343 'Everyday I'm Snufflin'
			-- q(84434),	-- Buy 'Waxy Bundle' from Gnawbles during 79343 'Everyday I'm Snufflin' (automated)
			q(84543),	-- "Disturbed Dirt" in Golgrin's Reach, Isle of Dorn. The mob "Waxen Bones" spawned. Quest trigger when clicking the dirt, not when killing the mob. // Discord   // I'm clicked on Earthen Console, spawned Wandering Scuttleshell that drop Odd Glob of Wax // Discord // Another Dirt pile but hallowfall this time..
		}),
	}),
}));
