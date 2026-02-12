-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------

root(ROOTS.ExpansionFeatures, applyclassicphase(MOP_PHASE_ONE, expansion(EXPANSION.MOP, bubbleDown({ ["timeline"] = { ADDED_5_0_4 } }, {
	header(HEADERS.Faction, FACTION_ORDER_OF_THE_CLOUD_SERPENT, {
		["description"] = "Gain reputation with this faction by training a cloud serpent hatchling, and eventually you will earn either an Azure, Golden, or Jade Cloud Serpent mount. More rewards are unlocked by reaching Revered and Exalted with the faction, including a toy, more mounts, and Jewelcrafting designs.\n\nThe quest chain begins with |cFFefc400Wild Things|r.\n\n",
		["maps"] = { THE_JADE_FOREST },
		["icon"] = 646324,
		["lvl"] = lvlsquish(90, 90, 10),
		["groups"] = {
			n(ACHIEVEMENTS, {
				ach(6550),	-- Order of the Cloud Serpent
			}),
			battlepets({
				["description"] = "The following pets require Exalted with Order of the Cloud Serpent and can be found around The Arboretum.",
				["minReputation"] = { FACTION_ORDER_OF_THE_CLOUD_SERPENT, EXALTED },	-- Order of the Cloud Serpent, Exalted.
				["groups"] = {
					pet(819),	-- Wild Crimson Hatchling (PET!)
					pet(818),	-- Wild Golden Hatchling (PET!)
					pet(817),	-- Wild Jade Hatchling (PET!)
				},
			}),
			n(FACTIONS, {
				faction(FACTION_ORDER_OF_THE_CLOUD_SERPENT, {	-- Order of the Cloud Serpent
					["icon"] = 646324,
				}),
			}),
			n(QUESTS, sharedData({ ["isDaily"] = true, ["maxReputation"] = { FACTION_ORDER_OF_THE_CLOUD_SERPENT, EXALTED }, }, {	-- Daily Quests
				-- verify if the following dailies exist independent of completion of other dailies:
					-- Pooped (31716), got credit for this + the 31704 version of "Pooped" when completing 30150, "Sweet as Honey" *** MUST STILL HAVE A HATCHLING ***
				q(30149, {	-- A Feast for the Senses
					["sourceQuest"] = 30142,	-- It's A...
					["qg"] = 58413,	-- Jenova Longeye
					["coord"] = { 57.3, 45.1, THE_JADE_FOREST },	-- midpoint of NPC's path
					["minReputation"] = { FACTION_ORDER_OF_THE_CLOUD_SERPENT, HONORED },
					-- ["requireSkill"] = COOKING,	-- CRIEVE NOTE: The Fish Cakes are BOE, doesn't explicitly require Cooking.
					["groups"] = {
						objective(1, {	-- 0/5 Fish Cake
							["provider"] = { "i", 74641 },	-- Fish Cake
						}),
					},
				}),
				q(31707, {	-- A Tangled Web
					["sourceQuest"] = 30142,	-- It's A...
					["qg"] = 58228,	-- Instructor Skythorn
					["coord"] = { 57.5, 45.0, THE_JADE_FOREST },
					["minReputation"] = { FACTION_ORDER_OF_THE_CLOUD_SERPENT, HONORED },
					["groups"] = {
						objective(1, {	-- 0/5 Sri-La Villagers freed
							["provider"] = { "n", 65647 },	-- Freed Sri-La Villager
							["coord"] = { 33.4, 46.2, THE_JADE_FOREST_THE_WIDOWS_WAIL },
						}),
					},
				}),
				q(30151, {	-- Catch!
					["sourceQuest"] = 30142,	-- It's A...
					["qgs"] = {
						65669,	-- Your Hatchling
						65670,	-- Your Hatchling
						65671,	-- Your Hatchling
					},
					["coord"] = { 57.5, 45.3, THE_JADE_FOREST },
					["minReputation"] = { FACTION_ORDER_OF_THE_CLOUD_SERPENT, HONORED },
					["groups"] = {
						objective(1, {	-- 0/8 Balls caught
							["provider"] = { "i", 79043 },	-- Bouncy Ball (QI!)
						}),
						ach(7289),	-- Shadow Hopper
					},
				}),
				q(31701, {	-- Dark Huntress
					["sourceQuest"] = 30142,	-- It's A...
					["qg"] = 56564,	-- Elder Anli
					["coord"] = { 57.8, 44.8, THE_JADE_FOREST },
					["minReputation"] = { FACTION_ORDER_OF_THE_CLOUD_SERPENT, HONORED },
					["groups"] = {
						objective(1, {	-- Windward Huntress slain
							["provider"] = { "n", 63538 },	-- Windward Huntress
							["coord"] = { 64.8, 25.6, THE_JADE_FOREST },
						}),
					},
				}),
				q(30158, {	-- Disarming the Enemy
					["sourceQuest"] = 30142,	-- It's A...
					["qg"] = 58228,	-- Instructor Skythorn
					["coord"] = { 57.5, 45.1, THE_JADE_FOREST },
					["minReputation"] = { FACTION_ORDER_OF_THE_CLOUD_SERPENT, HONORED },
					["groups"] = {
						objective(1, {	-- 0/5 Slitherscale Harpoon
							["providers"] = {
								{ "i",  79025 },	-- Slitherscale Harpoon (QI!)
								{ "o", 210277 },	-- Slitherscale Weapons
							},
							["coord"] = { 68.6, 27.4, THE_JADE_FOREST },
						}),
					},
				}),
				q(30157, {	-- Emptier Nests
					["sourceQuest"] = 30142,	-- It's A...
					["qg"] = 58510,	-- Suchi the Sweet
					["coord"] = { 58.4, 44.6, THE_JADE_FOREST },
					["minReputation"] = { FACTION_ORDER_OF_THE_CLOUD_SERPENT, HONORED },
					["groups"] = {
						objective(1, {	-- 0/6 Windward Hatchlings returned
							["providers"] = {
								{ "i", 78947 },	-- Silken Rope (QI!)
								{ "n", 58220 },	-- Windward Hatchling
								{ "n", 58243 },	-- Windward Hatchling
								{ "n", 58244 },	-- Windward Hatchling
							},
							["coord"] = { 65.2, 32.0, THE_JADE_FOREST },
						}),
					},
				}),
				q(30156, {	-- Feeding Time
					["sourceQuest"] = 30142,	-- It's A...
					["qgs"] = {
						65669,	-- Your Hatchling
						65670,	-- Your Hatchling
						65671,	-- Your Hatchling
						65672,	-- Cloud Serpent
						65673,	-- Cloud Serpent
						65674,	-- Cloud Serpent
						65724,	-- Azure Hatchling
					},
					["coord"] = { 57.4, 45.3, THE_JADE_FOREST },
					["minReputation"] = { FACTION_ORDER_OF_THE_CLOUD_SERPENT, HONORED },
					["groups"] = {
						objective(1, {	-- 0/3 Hatchling fed
							["provider"] = { "i", 79027 },	-- Saltback Meat (QI!)
							["coord"] = { 66.8, 27.6, THE_JADE_FOREST },
							["cost"] = { { "i", 79028, 5 } },	-- 5x Saltback Meat Scrap (QI!)
							["cr"] = 58218,	-- Saltback Turtle
						}),
						i(79028, {	-- Saltback Meat Scrap (QI!)
							["coord"] = { 68.4, 26.4, THE_JADE_FOREST },
							["cr"] = 58219,	-- Saltback Yearling
						}),
					},
				}),
				q(30147, {	-- Fragments of the Past
					["sourceQuest"] = 30142,	-- It's A...
					["qg"] = 58413,	-- Jenova Longeye
					["coord"] = { 57.3, 45.1, THE_JADE_FOREST },	-- midpoint of NPC's path
					["minReputation"] = { FACTION_ORDER_OF_THE_CLOUD_SERPENT, HONORED },
					["requireSkill"] = ARCHAEOLOGY,
					["groups"] = {
						objective(1, {	-- 0/6 Serpentrider Relic
							["provider"] = { "i", 79049 },	-- Serpentrider Relic (QI!)
							["cr"] = 62596,	-- Ancient Haunt
						}),
					},
				}),
				q(30148, {	-- Just a Flesh Wound
					["description"] = "Requires Windwool- or Heavy Windwool Bandages. Any other bandages will not provide progression regardless of how well they heal.",
					["sourceQuest"] = 30142,	-- It's A...
					["qg"] = 58413,	-- Jenova Longeye
					["coord"] = { 57.3, 45.1, THE_JADE_FOREST },	-- midpoint of NPC's path
					["minReputation"] = { FACTION_ORDER_OF_THE_CLOUD_SERPENT, HONORED },
					-- #if BEFORE BFA
					["requireSkill"] = FIRST_AID,
					-- #endif
					["groups"] = {
						objective(1, {	-- 0/8 Injured Hatchlings bandaged
							["providers"] = {
								{ "n", 58416 },	-- Injured Hatchling
								{ "i", 72986 },	-- Heavy Windwool Bandage
								{ "i", 72985 },	-- Windwool Bandage
							},
							["coord"] = { 65.4, 28.2, THE_JADE_FOREST },
						}),
					},
				}),
				q(31709, {	-- Lingering Doubt
					["qg"] = 58508,	-- Big Bao
					["coord"] = { 57.4, 44.0, THE_JADE_FOREST },
					["minReputation"] = { FACTION_ORDER_OF_THE_CLOUD_SERPENT, HONORED },
					["groups"] = {
						objective(1, {	-- Northwestern Sha Disturbance measured
							["provider"] = { "i", 88966 },	-- Sha Attunement Device (QI!)
							["coord"] = { 62.0, 24.0, THE_JADE_FOREST_THE_WIDOWS_WAIL },
						}),
						objective(2, {	-- Northeastern Sha Disturbance measured
							["provider"] = { "i", 88966 },	-- Sha Attunement Device (QI!)
							["coord"] = { 35.0, 32.0, THE_JADE_FOREST_THE_WIDOWS_WAIL },
						}),
						objective(3, {	-- Southern Sha Disturbance measured
							["provider"] = { "i", 88966 },	-- Sha Attunement Device (QI!)
							["coord"] = { 61.0, 72.0, THE_JADE_FOREST_THE_WIDOWS_WAIL },
						}),
					},
				}),
				q(31703, {	-- Madcap Mayhem
					["sourceQuest"] = 30142,	-- It's A...
					["qg"] = 58564,	-- Elder Anli
					["minReputation"] = { FACTION_ORDER_OF_THE_CLOUD_SERPENT, HONORED },
					["groups"] = {
						objective(1, {	-- Shadowfae Madcap slain
							["provider"] = { "n", 65613 },	-- Shadowfae Madcap
							["coord"] = { 62.6, 27.2, THE_JADE_FOREST },
						}),
					},
				}),
				q(31712, {	-- Monkey Mischief
					["sourceQuest"] = 30187,	-- Flight Training: In Due Course
					["qg"] = 58228,	-- Instructor Skythorn <Serpent Master>
					["coord"] = { 57.6, 45.0, THE_JADE_FOREST },
					["minReputation"] = { FACTION_ORDER_OF_THE_CLOUD_SERPENT, REVERED },
					["groups"] = {
						objective(1, {	-- 0/13 Oona Hozen slain
							["providers"] = {
								{ "n", 65621 },	-- Oona Goon
								{ "n", 65623 },	-- Oona Tuna-Catcher
								{ "n", 65624 },	-- Oona Brewchugger
							},
							["coord"] = { 57.6, 27.8, THE_JADE_FOREST_OONA_KAGU },
						}),
					},
				}),
				q(31705, {	-- Needle Me Not
					["sourceQuest"] = 30150,	-- Sweet as Honey
					["qg"] = 58564,	-- Elder Anli
					["minReputation"] = { FACTION_ORDER_OF_THE_CLOUD_SERPENT, HONORED },
					["groups"] = {
						objective(1, {	-- Orchard Needler slain
							["providers"] = {
								{ "n", 65616 },	-- Orchard Needler
								{ "i", 89113 },	-- Golden Honey (QI!)
							},
							["coord"] = { 57.0, 41.6, THE_JADE_FOREST },
						}),
					},
				}),
				q(31702, {	-- On The Prowl
					["sourceQuest"] = 30142,	-- It's A...
					["qg"] = 58564,	-- Elder Anli
					["coord"] = { 57.6, 44.9, THE_JADE_FOREST },
					["minReputation"] = { FACTION_ORDER_OF_THE_CLOUD_SERPENT, HONORED },
					["groups"] = {
						objective(1, {	-- Windward Saber slain
							["provider"] = { "n", 65612 },	-- Windward Saber
							["coord"] = { 63.8, 22.6, THE_JADE_FOREST },
						}),
					},
				}),
				q(31704, {	-- Pooped
					["sourceQuest"] = 30142,	-- It's A...
					["qgs"] = {
						58384,	-- Azure Hatchling
						65669,	-- Your Hatchling
						65670,	-- Your Hatchling
						65671,	-- Your Hatchling
					},
					["coord"] = { 57.4, 45.3, THE_JADE_FOREST },
					["minReputation"] = { FACTION_ORDER_OF_THE_CLOUD_SERPENT, HONORED },
					["groups"] = {
						objective(1, {	-- 0/5 Tiny Bag of Poop
							["providers"] = {
								{ "i",  89052 },	-- Tiny Bag of Poop (QI!)
								{ "o", 214862 },	-- Hatchling Poop
								{ "o", 214863 },	-- Hatchling Poop
							},
							["coord"] = { 55.1, 46.5, THE_JADE_FOREST },
						}),
					},
				}),
				q(31716, {	-- Pooped
					["sourceQuest"] = 30142,	-- It's A...
					["qgs"] = {
						58384,	-- Azure Hatchling
						65669,	-- Your Hatchling
						65670,	-- Your Hatchling
						65671,	-- Your Hatchling
					},
					["coord"] = { 57.4, 45.3, THE_JADE_FOREST },
					["minReputation"] = { FACTION_ORDER_OF_THE_CLOUD_SERPENT, HONORED },
					["groups"] = {
						objective(1, {	-- 0/5 Big Bag of Poop
							["providers"] = {
								{ "i",  89053 },	-- Big Bag of Poop (QI!)
								{ "o", 214862 },	-- Hatchling Poop
								{ "o", 214863 },	-- Hatchling Poop
							},
							["coord"] = { 55.1, 46.5, THE_JADE_FOREST },
						}),
					},
				}),
				q(30159, {	-- Preservation
					["sourceQuest"] = 30142,	-- It's A...
					["qg"] = 58510,	-- Suchi the Sweet
					["coord"] = { 58.4, 44.6, THE_JADE_FOREST },
					["minReputation"] = { FACTION_ORDER_OF_THE_CLOUD_SERPENT, HONORED },
					["groups"] = {
						objective(1, {	-- 0/8 Stolen Egg
							["providers"] = {
								{ "i",  79067 },	-- Stolen Egg (QI!)
								{ "o", 210238 },	-- Serpent Egg
								{ "o", 210239 },	-- Serpent Egg
								{ "o", 210240 },	-- Serpent Egg
							},
							["coord"] = { 69.1, 27.9, THE_JADE_FOREST },
						}),
					},
				}),
				q(30155, {	-- Restoring the Balance
					["sourceQuest"] = 30142,	-- It's A...
					["qg"] = 58228,	-- Instructor Skythorn
					["coord"] = { 57.5, 45.1, THE_JADE_FOREST },
					["minReputation"] = { FACTION_ORDER_OF_THE_CLOUD_SERPENT, HONORED },
					["groups"] = {
						objective(1, {	-- 0/8 Slitherscale saurok slain
							["providers"] = {
								{ "n", 58212 },	-- Slitherscale Ripper
								{ "n", 63532 },	-- Slitherscale Eggdrinker
							},
							["coord"] = { 64.8, 29.4, THE_JADE_FOREST },
						}),
					},
				}),
				q(31714, {	-- Saving the Serpents
					["sourceQuest"] = 30187,	-- Flight Training: In Due Course
					["qg"] = 58511,	-- Qua-Ro Whitebrow
					["coord"] = { 57.2, 43.6, THE_JADE_FOREST },
					["minReputation"] = { FACTION_ORDER_OF_THE_CLOUD_SERPENT, REVERED },
					["groups"] = {
						objective(1, {	-- 0/10 Rescued Serpent
							["providers"] = {
								{ "i", 88894 },	-- Rescued Serpent (QI!)
								{ "n", 65641 },	-- Misguided Serpent
							},
							["coord"] = { 56.4, 27.4, THE_JADE_FOREST },
						}),
					},
				}),
				q(31708, {	-- Serpent's Scale
					["sourceQuest"] = 30142,	-- It's A...
					["qg"] = 58511,	-- Qua-Ro Whitebrow
					["coord"] = { 57.2, 43.5, THE_JADE_FOREST },
					["minReputation"] = { FACTION_ORDER_OF_THE_CLOUD_SERPENT, HONORED },
					["maps"] = { THE_JADE_FOREST_THE_WIDOWS_WAIL },
					["groups"] = {
						objective(1, {	-- 0/25 Serpent's Scale
							["providers"] = {
								{ "i",  88895 },	-- Serpent's Scale (QI!)
								{ "o", 214844 },	-- Serpent's Scale
								{ "o", 214843 },	-- Serpent's Scale
							},
							["coord"] = { 71.3, 21.95, THE_JADE_FOREST_THE_WIDOWS_WAIL },
						}),
					}
				}),
				q(31194, {	-- Slitherscale Suppression
					["sourceQuest"] = 30142,	-- It's A...
					["qg"] = 58564,	-- Elder Anli
					["coord"] = { 57.5, 45.1, THE_JADE_FOREST },
					["minReputation"] = { FACTION_ORDER_OF_THE_CLOUD_SERPENT, HONORED },
					["groups"] = {
						objective(1, {	-- Slitherscale Lizard-Lord slain
							["provider"] = { "n", 63536 },	-- Slitherscale Lizard-Lord
							["coord"] = { 69.6, 31.2, THE_JADE_FOREST },
						}),
					},
				}),
				q(30146, {	-- Snack Time
					["sourceQuest"] = 30142,	-- It's A...
					["qg"] = 58413,	-- Jenova Longeye
					["coord"] = { 57.3, 45.1, THE_JADE_FOREST },	-- midpoint of NPC's path
					["minReputation"] = { FACTION_ORDER_OF_THE_CLOUD_SERPENT, HONORED },
					["requireSkill"] = FISHING,
					["groups"] = {
						objective(1, {	-- 0/10 Sugar Minnow
							["provider"] = { "i", 79046 },	-- Sugar Minnow (QI!)
						}),
					},
				}),
				q(31699, {	-- Sprite Fright
					["sourceQuest"] = 30142,	-- It's A...
					["qg"] = 58509,	-- Ningna Darkwheel
					["coord"] = { 58.2, 45.0, THE_JADE_FOREST },
					["minReputation"] = { FACTION_ORDER_OF_THE_CLOUD_SERPENT, HONORED },
					["groups"] = {
						objective(1, {	-- 0/7 Shadowfae Trickster slain
							["provider"] = { "n", 65635 },	-- Shadowfae Trickster
							["coord"] = { 63.0, 24.6, THE_JADE_FOREST },
						}),
					},
				}),
				q(30150, {	-- Sweet as Honey
					["sourceQuest"] = 30142,	-- It's A...
					["qgs"] = {
						58384,	-- Azure Hatchling
						65669,	-- Your Hatchling
						65670,	-- Your Hatchling
						65671,	-- Your Hatchling
					},
					["coord"] = { 57.4, 45.3, THE_JADE_FOREST },
					["minReputation"] = { FACTION_ORDER_OF_THE_CLOUD_SERPENT, HONORED },
					["groups"] = {
						objective(1, {	-- 0/30 Honeycomb
							["provider"] = { "i", 79030 },	-- Honeycomb (QI!)
							["coord"] = { 55.0, 47.0, THE_JADE_FOREST },
							["cr"] = 58363,	-- Honeykeeper
						}),
					},
				}),
				q(31713, {	-- The Big Brew-haha
					["sourceQuest"] = 30142,	-- It's A...
					["qg"] = 58506,	-- Ace Longpaw
					["minReputation"] = { FACTION_ORDER_OF_THE_CLOUD_SERPENT, HONORED },
					["groups"] = {
						objective(1, {	-- 0/100 Stolen Sri-La Stout
							["providers"] = {
								{ "i",  88855 },	-- Stolen Sri-La Stout
								{ "o", 214845 },	-- Oona Brew Mug
								{ "o", 214986 },	-- Stolen Sri-La Keg
							},
							["coord"] = { 56.3, 26.6, THE_JADE_FOREST_OONA_KAGU },
						}),
					},
				}),
				q(31715, {	-- The Big Kah-Oona
					["sourceQuest"] = 30187,	-- Flight Training: In Due Course
					["qg"] = 58564,	-- Elder Anli
					["coord"] = { 57.5, 44.9, THE_JADE_FOREST },
					["minReputation"] = { FACTION_ORDER_OF_THE_CLOUD_SERPENT, REVERED },
					["groups"] = {
						objective(1, {	-- Lord Oona slain
							["provider"] = { "n", 65628 },	-- Lord Oona <Terror of the Seas>
							["coord"] = { 55.6, 29.0, THE_JADE_FOREST },
						}),
					},
				}),
				q(30154, {	-- The Easiest Way To A Serpent's Heart
					["sourceQuest"] = 30142,	-- It's A...
					["qgs"] = {
						65669,	-- Your Hatchling
						65670,	-- Your Hatchling
						65671,	-- Your Hatchling
						65672,	-- Cloud Serpent
						65673,	-- Cloud Serpent
						65674,	-- Cloud Serpent
						65679,	-- Golden Hatchling
						65723,	-- Jade Hatchling
						65724,	-- Azure Hatchling
					},
					["coord"] = { 57.4, 45.3, THE_JADE_FOREST },
					["minReputation"] = { FACTION_ORDER_OF_THE_CLOUD_SERPENT, HONORED },
					["groups"] = {
						objective(1, {	-- 0/5 Tiger Flank
							["provider"] = { "i", 85282 },	-- Tiger Flank (QI!)
							["coord"] = { 63.4, 26.8, THE_JADE_FOREST },
							["crs"] = {
								65612,	-- Windward Saber
								63538,	-- Windward Huntress
								67085,	-- Windward Alpha
								63537,	-- Windward Tiger
							},
						}),
					},
				}),
				q(31711, {	-- The Seed of Doubt
					["sourceQuest"] = 30142,	-- It's A...
					["qg"] = 58564,	-- Elder Anli
					["coord"] = { 57.6, 44.9, THE_JADE_FOREST },
					["minReputation"] = { FACTION_ORDER_OF_THE_CLOUD_SERPENT, HONORED },
					["maps"] = { THE_JADE_FOREST_THE_WIDOWS_WAIL },
					["groups"] = {
						objective(1, {	-- Seed of Doubt slain
							["provider"] = { "n", 65614 },	-- Seed of Doubt
							["coord"] = { 34.6, 41.8, THE_JADE_FOREST_THE_WIDOWS_WAIL },
						}),
					},
				}),
				q(31700, {	-- The Shoe Is On The Other Foot
					["sourceQuest"] = 30142,	-- It's A...
					["qg"] = 58509,	-- Ningna Darkwheel
					["coord"] = { 58.2, 45.1, THE_JADE_FOREST },
					["minReputation"] = { FACTION_ORDER_OF_THE_CLOUD_SERPENT, HONORED },
					["groups"] = {
						objective(1, {	-- 0/14 Stolen Boots
							["providers"] = {
								{ "i",  89054 },	-- Stolen Boots (QI!)
								{ "o", 214865 },	-- Stolen Boots
								{ "o", 214866 },	-- Stolen Boots
								{ "o", 214867 },	-- Stolen Boots
								{ "o", 214868 },	-- Stolen Boots
							},
							["coord"] = { 63.0, 26.4, THE_JADE_FOREST },
						}),
					},
				}),
				q(30152, {	-- The Sky Race
					["description"] = "This quest is on a rotation thus only occasionally available. There are no other quests in it's place from the quest giver.\nIs also available for players who are Exalted with the faction given prerequisite quests are completed.",
					["sourceQuest"] = 30144,	-- Flight Training: Ring Round-Up
					["qg"] = 58420,	-- Instructor Windblade
					["coord"] = { 58.5, 43.7, THE_JADE_FOREST },
					["minReputation"] = { FACTION_ORDER_OF_THE_CLOUD_SERPENT, REVERED },
					["groups"] = {
						objective(1, {	-- 0/10 Checkpoints passed
							["provider"] = { "n", 58438 },	-- Checkpoint
						}),
						objective(2, {	-- Pass underneath the Finish Line
							["provider"] = { "n", 58530 },	-- Finish Line
						}),
						i(90537, {	-- Winner's Reward
							-- #if AFTER LEGION
							["description"] = "Contains a useless grey item based on how well you place in the race. Sell to vendor before it's duration runs out.",
							-- #else
							["description"] = "Contains a reward of Valor Points based on how well you place in the race.",
							-- #endif
							["groups"] = {
								i(90543),	-- Fifth Place Valorous Commendation
								i(90538),	-- First Place Valorous Commendation
								i(90541),	-- Fourth Place Valorous Commendation
								i(90539),	-- Second Place Valorous Commendation
								i(90544),	-- Sixth Place Valorous Commendation
								i(90540),	-- Third Place Valorous Commendation
							},
						}),
						ach(7290, {	-- How To Strain Your Dragon
							["description"] = "You can do as many attempts as you need, simply dismount the serpent or abandon the quest.\n\nYou can easily get the first place by doing the run on your own fast flying mount. Simply be mounted and activate autorun while interacting with the quest giver.",
						}),
						ach(7291),	-- In a Trail of Smoke
					},
				}),
				q(31717, {	-- The Trainer's Challenge: Ace Longpaw
					["sourceQuest"] = 30144,	-- Flight Training: Ring Round-Up
					["qg"] = 58564,	-- Elder Anli <Serpent Master>
					["coord"] = { 57.6, 44.8, THE_JADE_FOREST },
					["minReputation"] = { FACTION_ORDER_OF_THE_CLOUD_SERPENT, REVERED },
					["groups"] = {
						objective(1, {	-- Ace Longpaw defeated
							["provider"] = { "n", 58506 },	-- Ace Longpaw
							["coord"] = { 58.0, 43.8, THE_JADE_FOREST },
						}),
					},
				}),
				q(31718, {	-- The Trainer's Challenge: Big Bao
					["sourceQuest"] = 30144,	-- Flight Training: Ring Round-Up
					["qg"] = 58564,	-- Elder Anli <Serpent Master>
					["coord"] = { 57.6, 44.8, THE_JADE_FOREST },
					["minReputation"] = { FACTION_ORDER_OF_THE_CLOUD_SERPENT, REVERED },
					["groups"] = {
						objective(1, {	-- Big Bao defeated
							["provider"] = { "n", 58508 },	-- Big Bao
							["coord"] = { 57.4, 44.0, THE_JADE_FOREST },
						}),
					},
				}),
				q(31719, {	-- The Trainer's Challenge: Ningna Darkwheel
					["sourceQuest"] = 30144,	-- Flight Training: Ring Round-Up
					["qg"] = 58564,	-- Elder Anli <Serpent Master>
					["coord"] = { 57.6, 44.8, THE_JADE_FOREST },
					["minReputation"] = { FACTION_ORDER_OF_THE_CLOUD_SERPENT, REVERED },
					["groups"] = {
						objective(1, {	-- Ningna Darkwheel defeated
							["provider"] = { "n", 58509 },	-- Ningna Darkwheel
							["coord"] = { 58.2, 45.0, THE_JADE_FOREST },
						}),
					},
				}),
				q(31721, {	-- The Trainer's Challenge: Qua-Ro Whitebrow
					["sourceQuest"] = 30144,	-- Flight Training: Ring Round-Up
					["qg"] = 58564,	-- Elder Anli <Serpent Master>
					["coord"] = { 57.6, 44.8, THE_JADE_FOREST },
					["minReputation"] = { FACTION_ORDER_OF_THE_CLOUD_SERPENT, REVERED },
					["groups"] = {
						objective(1, {	-- Qua-Ro Whitebrow defeated
							["provider"] = { "n", 58511 },	-- Qua-Ro Whitebrow
							["coord"] = { 57.2, 43.6, THE_JADE_FOREST },
						}),
					},
				}),
				q(31720, {	-- The Trainer's Challenge: Suchi the Sweet
					["sourceQuest"] = 30144,	-- Flight Training: Ring Round-Up
					["qg"] = 58564,	-- Elder Anli <Serpent Master>
					["coord"] = { 57.6, 44.8, THE_JADE_FOREST },
					["minReputation"] = { FACTION_ORDER_OF_THE_CLOUD_SERPENT, REVERED },
					["groups"] = {
						objective(1, {	-- Suchi the Sweet defeated
							["provider"] = { "n", 58510 },	-- Suchi the Sweet
							["coord"] = { 58.4, 44.6, THE_JADE_FOREST },
						}),
					},
				}),
				q(31698, {	-- Thinning The Pack
					["sourceQuest"] = 30142,	-- It's A...
					["qg"] = 58228,	-- Instructor Skythorn
					["coord"] = { 57.5, 45.0, THE_JADE_FOREST },
					["minReputation"] = { FACTION_ORDER_OF_THE_CLOUD_SERPENT, HONORED },
					["groups"] = {
						objective(1, {	-- 0/8 Windward Tiger slain
							["providers"] = {
								{ "n", 65612 },	-- Windward Saber
								{ "n", 63538 },	-- Windward Huntress
								{ "n", 67085 },	-- Windward Alpha
								{ "n", 63537 },	-- Windward Tiger
							},
							["coord"] = { 63.8, 22.6, THE_JADE_FOREST },
						}),
					},
				}),
				q(31710, {	-- Tiny Treats
					["sourceQuest"] = 30142,	-- It's A...
					["qgs"] = {
						65672,	-- Your Cloud Serpent
						65673,	-- Your Cloud Serpent
						65674,	-- Your Cloud Serpent
						65724,	-- Azure Hatchling
					},
					["coord"] = { 57.5, 45.3, THE_JADE_FOREST },
					["minReputation"] = { FACTION_ORDER_OF_THE_CLOUD_SERPENT, HONORED },
					["groups"] = {
						objective(1, {	-- 0/100 Tiny Spider Eye
							["provider"] = { "i", 88907 },	-- Tiny Spider Eye (QI!)
							["coord"] = { 57.2, 33.8, THE_JADE_FOREST },
							["cr"] = 65658,	-- Widowspawn
						}),
					},
				}),
				q(31706, {	-- Weeping Widows
					["sourceQuest"] = 30142,	-- It's A...
					["qg"] = 58228,	-- Instructor Skythorn
					["coord"] = { 57.5, 45.1, THE_JADE_FOREST },
					["minReputation"] = { FACTION_ORDER_OF_THE_CLOUD_SERPENT, HONORED },
					["maps"] = { THE_JADE_FOREST_THE_WIDOWS_WAIL },
					["groups"] = {
						objective(1, {	-- 0/7 Weeping Widow slain
							["providers"] = {
								{ "n", 65622 },	-- Weeping Widow
								{ "n", 65653 },	-- Weeping Widow
							},
							["coord"] = { 56.8, 72.7, THE_JADE_FOREST_THE_WIDOWS_WAIL },
						}),
					},
				}),
			})),
			n(QUESTS, {
				applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, q(33250, {	-- A Time-Lost Treasure
					["qg"] = 58564,	-- Elder Anli
					["coord"] = { 57.6, 44.8, THE_JADE_FOREST },
					["timeline"] = { ADDED_5_4_0 },
					["cost"] = { { "i", 104286, 1 } },	-- 1x Quivering Firestorm Egg
					["repeatable"] = true,
					["OnUpdate"] = FUNCTION_TEMPLATES.GenerateOnUpdateForRepeatableQuestClassicReputationWithCost(1000),
				})),
				q(30135, {	-- Beating the Odds
					["sourceQuest"] = 30134,	-- Wild Things
					["qg"] = 58225,	-- Instructor Tong
					["coord"] = { 65.3, 31.6, THE_JADE_FOREST },
					["groups"] = {
						objective(1, {	-- 0/8 Slitherscale saurok slain
							["providers"] = {
								{ "n", 58212 },	-- Slitherscale Ripper
								{ "n", 63532 },	-- Slitherscale Eggdrinker
							},
							["coord"] = { 64.8, 29.4, THE_JADE_FOREST },
						}),
					},
				}),
				q(30138, {	-- Choosing the One
					["sourceQuests"] = {
						30135,	-- Beating the Odds
						30137,	-- Egg Collection
						30136,	-- Empty Nests
					},
					["qg"] = 58225,	-- Instructor Tong
					["coord"] = { 65.3, 31.6, THE_JADE_FOREST },
					["groups"] = {
						i(78962),	-- Blue Serpent Egg (QI!)
						i(78960),	-- Green Serpent Egg (QI!)
						i(78961),	-- Yellow Serpent Egg (QI!)
					},
				}),
				q(30137, {	-- Egg Collection
					["sourceQuest"] = 30134,	-- Wild Things
					["qg"] = 58225,	-- Instructor Tong
					["coord"] = { 65.3, 31.6, THE_JADE_FOREST },
					["groups"] = {
						objective(1, {	-- 0/8 Serpent Egg
							["providers"] = {
								{ "i",  78959 },	-- Serpent Egg (QI!)
								{ "o", 210238 },	-- Serpent Egg
								{ "o", 210239 },	-- Serpent Egg
								{ "o", 210240 },	-- Serpent Egg
							},
							["coord"] = { 69.1, 27.9, THE_JADE_FOREST },
						}),
					},
				}),
				q(30136, {	-- Empty Nests
					["sourceQuest"] = 30134,	-- Wild Things
					["qg"] = 58225,	-- Instructor Tong
					["coord"] = { 65.3, 31.6, THE_JADE_FOREST },
					["groups"] = {
						objective(1, {	-- 0/6 Windward Hatchlings returned
							["providers"] = {
								{ "i", 78947 },	-- Silken Rope (QI!)
								{ "n", 58220 },	-- Windward Hatchling
								{ "n", 58243 },	-- Windward Hatchling
								{ "n", 58244 },	-- Windward Hatchling
							},
							["coord"] = { 65.2, 32.0, THE_JADE_FOREST },
						}),
					},
				}),
				q(30145, {	-- Flight Training: Full Speed Ahead
					["description"] = "This is a terribly designed escort quest wrapped as a tutorial, where the tutorial part only will be a distraction for unfamiliar players. Your main objective is to keep up with the Instructor, which means cutting corners and going through cloud rings for speed boosts. Read through the monologue in the chat afterwards for the information dump.",
					["sourceQuest"] = 30144,	-- Flight Training: Ring Round-Up
					["qg"] = 58420,	-- Instructor Windblade
					["coord"] = { 58.5, 43.7, THE_JADE_FOREST },
					["minReputation"] = { FACTION_ORDER_OF_THE_CLOUD_SERPENT, REVERED },
				}),
				q(30187, {	-- Flight Training: In Due Course
					["sourceQuest"] = 30145,	-- Flight Training: Full Speed Ahead
					["qg"] = 58420,	-- Instructor Windblade
					["coord"] = { 58.5, 43.7, THE_JADE_FOREST },
					["minReputation"] = { FACTION_ORDER_OF_THE_CLOUD_SERPENT, REVERED },
					["groups"] = {
						objective(1, {	-- 0/10 Checkpoints passed
							["provider"] = { "n", 58438 },	-- Checkpoint
						}),
					},
				}),
				q(30144, {	-- Flight Training: Ring Round-Up
					["sourceQuest"] = 30143,	-- They Grow Like Weeds
					["qg"] = 58420,	-- Instructor Windblade
					["coord"] = { 58.5, 43.7, THE_JADE_FOREST },
					["minReputation"] = { FACTION_ORDER_OF_THE_CLOUD_SERPENT, REVERED },
					["groups"] = {
						objective(1, {	-- 0/6 Cloud Rings flown through
							["provider"] = { "n", 58426 },	-- Cloud Ring
						}),
					},
				}),
				q(30142, {	-- It's A...
					["sourceQuests"] = {
						30139,	-- The Rider's Journey (blue)
						30140,	-- The Rider's Journey (green)
						30141,	-- The Rider's Journey (yellow)
					},
					["qg"] = 58228,	-- Instructor Skythorn
					["coord"] = { 57.5, 45.1, THE_JADE_FOREST },
				}),
				q(31784, {	-- Onyx To Goodness
					["qg"] = 58564,	-- Elder Anli
					["coord"] = { 57.6, 44.8, THE_JADE_FOREST },
					["maxReputation"] = { FACTION_ORDER_OF_THE_CLOUD_SERPENT, EXALTED },
					["cost"] = { { "i", 89155, 1 } },	-- 1x Onyx Egg
					["repeatable"] = true,
					["OnUpdate"] = FUNCTION_TEMPLATES.GenerateOnUpdateForRepeatableQuestClassicReputationWithCost(500),
				}),
				q(80311, {	-- Order of the Cloud Serpent
					["qg"] = 63900,	-- Toortle Wider
					["coord"] = { 49.0, 46.0, THE_JADE_FOREST },
					["timeline"] = { ADDED_MOP_REMIX },
					["isBreadcrumb"] = true,
				}),
				q(31810, {	-- Riding the Skies (Azure)
					["description"] = "You will receive the mount that corresponds to the color of egg you selected. To get the other two mounts, you may purchase them from the vendor or do the questline again on another character.",
					["qg"] = 58564,	-- Elder Anli
					["coord"] = { 57.7, 45.0, THE_JADE_FOREST },
					["minReputation"] = { FACTION_ORDER_OF_THE_CLOUD_SERPENT, EXALTED },
					["groups"] = {
						i(85430),	-- Azure Cloud Serpent (MOUNT!)
					},
				}),
				q(31811, {	-- Riding the Skies (Golden)
					["description"] = "You will receive the mount that corresponds to the color of egg you selected. To get the other two mounts, you may purchase them from the vendor or do the questline again on another character.",
					["qg"] = 58564,	-- Elder Anli
					["coord"] = { 57.7, 45.0, THE_JADE_FOREST },
					["minReputation"] = { FACTION_ORDER_OF_THE_CLOUD_SERPENT, EXALTED },
					["groups"] = {
						i(85429),	-- Golden Cloud Serpent (MOUNT!)
					},
				}),
				q(30188, {	-- Riding the Skies (Jade)
					["description"] = "You will receive the mount that corresponds to the color of egg you selected. To get the other two mounts, you may purchase them from the vendor or do the questline again on another character.",
					["qg"] = 58564,	-- Elder Anli
					["coord"] = { 57.7, 45.0, THE_JADE_FOREST },
					["minReputation"] = { FACTION_ORDER_OF_THE_CLOUD_SERPENT, EXALTED },
					["groups"] = {
						i(79802),	-- Jade Cloud Serpent (MOUNT!)
					},
				}),
				q(32461, {	-- The Order of the Cloud Serpent
					["description"] = "You are offered this quest after looting a Cloud Serpent mount without having completed the introductory quest for the Order of the Cloud Serpent.",
					["timeline"] = { ADDED_5_1_0 },
					["isBreadcrumb"] = true,
				}),
				q(31373, {	-- The Order of the Cloud Serpent
					["qg"] = 64484,	-- Instructor Windspear <Order of the Cloud Serpent>
					["coord"] = { 85.8, 62.2, VALE_OF_ETERNAL_BLOSSOMS },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
				}),
				q(31375, {	-- The Order of the Cloud Serpent
					["qg"] = 64533,	-- Wei Lakebreeze <Order of the Cloud Serpent>
					["coord"] = { 60.6, 21.8, VALE_OF_ETERNAL_BLOSSOMS },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
				}),
				q(30139, {	-- The Rider's Journey (blue egg)
					["sourceQuest"] = 30138,	-- Choosing the One
					["providers"] = {
						{ "i", 78962 },	-- Blue Serpent Egg (QI!)
						{ "n", 58225 },	-- Instructor Tong
					},
					["coord"] = { 65.3, 31.6, THE_JADE_FOREST },
					-- picked the blue and got this one, but some notes indicate all colors now grant this quest.
					-- i picked "wait, i changed my mind about my egg" and switched to green/yellow, and they gave 30140 and 30141, respectively. swapping back to blue switched the quest back to 30139.
					-- completing one version of the quest completes them all, so altQuests is unnecessary here.
				}),
				q(30140, {	-- The Rider's Journey (green egg)
					["sourceQuest"] = 30138,	-- Choosing the One
					["providers"] = {
						{ "i", 78960 },	-- Green Serpent Egg (QI!)
						{ "n", 58225 },	-- Instructor Tong
					},
					["coord"] = { 65.3, 31.6, THE_JADE_FOREST },
				}),
				q(30141, {	-- The Rider's Journey (yellow egg)
					["sourceQuest"] = 30138,	-- Choosing the One
					["providers"] = {
						{ "i", 78961 },	-- Yellow Serpent Egg (QI!)
						{ "n", 58225 },	-- Instructor Tong
					},
					["coord"] = { 65.3, 31.6, THE_JADE_FOREST },
				}),
				q(30143, {	-- They Grow Like Weeds
					["sourceQuest"] = 30142,	-- It's A...
					["qg"] = 58564,	-- Elder Anli
					["coord"] = { 57.6, 44.9, THE_JADE_FOREST },
					["minReputation"] = { FACTION_ORDER_OF_THE_CLOUD_SERPENT, REVERED },
				}),
				q(30134, {	-- Wild Things
					["sourceQuests"] = {
						32461,	-- The Order of the Cloud Serpent
						31373,	-- The Order of the Cloud Serpent
						31375,	-- The Order of the Cloud Serpent
						-- #if AFTER 10.2.7
						80311,	-- Order of the Cloud Serpent (MOP Remix)
						-- #endif
					},
					["qg"] = 58564,	-- Elder Anli
					["coord"] = { 57.7, 45.0, THE_JADE_FOREST },
				}),
			}),
			-- #if BEFORE 6.0.2
			n(REWARDS, {
				recipe(130487, {	-- Cloud Serpent Riding
					["sourceQuests"] = {
						31810,	-- Riding the Skies (Azure)
						31811,	-- Riding the Skies (Golden)
						30188,	-- Riding the Skies (Jade)
					},
					["description"] = "This is learned by completing the Riding the Skies quest chain upon reaching Exalted with the Order of the Cloud Serpents.",
					["minReputation"] = { FACTION_ORDER_OF_THE_CLOUD_SERPENT, EXALTED },
					["timeline"] = { ADDED_5_0_4, REMOVED_6_0_2 },
				}),
			}),
			-- #endif
			n(TREASURES, {
				o(214945, {	-- Onyx Egg
					["description"] = "Collect these until exalted for turn-in reputation with the Order of the Cloud Serpents.",
					["coords"] = {
						{ 62.0, 29.6, THE_JADE_FOREST },
						{ 62.2, 29.3, THE_JADE_FOREST },
						{ 62.2, 31.2, THE_JADE_FOREST },
						{ 62.3, 28.1, THE_JADE_FOREST },
						{ 62.4, 32.4, THE_JADE_FOREST },
						{ 62.4, 32.8, THE_JADE_FOREST },
						{ 62.5, 30.1, THE_JADE_FOREST },
						{ 62.5, 32.4, THE_JADE_FOREST },
						{ 62.8, 28.9, THE_JADE_FOREST },
						{ 63.0, 22.0, THE_JADE_FOREST },
						{ 63.3, 27.4, THE_JADE_FOREST },
						{ 63.7, 21.9, THE_JADE_FOREST },
						{ 64.2, 23.9, THE_JADE_FOREST },
						{ 65.1, 26.2, THE_JADE_FOREST },
						{ 65.2, 24.8, THE_JADE_FOREST },
						{ 65.4, 23.4, THE_JADE_FOREST },
						{ 65.6, 25.1, THE_JADE_FOREST },
						{ 66.0, 30.7, THE_JADE_FOREST },
						{ 66.2, 33.4, THE_JADE_FOREST },
						{ 66.4, 29.4, THE_JADE_FOREST },
						{ 66.6, 31.6, THE_JADE_FOREST },
						{ 67.0, 30.2, THE_JADE_FOREST },
						{ 67.0, 32.7, THE_JADE_FOREST },
						{ 67.1, 25.0, THE_JADE_FOREST },
						{ 67.1, 33.8, THE_JADE_FOREST },
						{ 67.5, 33.4, THE_JADE_FOREST },
						{ 67.5, 33.5, THE_JADE_FOREST },
						{ 69.7, 31.6, THE_JADE_FOREST },
						{ 70.4, 28.6, THE_JADE_FOREST },
						{ 70.5, 29.0, THE_JADE_FOREST },
					},
					["groups"] = {
						i(89155),	-- Onyx Egg
					},
				}),
			}),
			n(VENDORS, {
				n(58414, {	-- San Redscale <Serpent Keeper>
					["coord"] = { 56.7, 44.3, THE_JADE_FOREST },
					["groups"] = bubbleDownClassicRep(FACTION_ORDER_OF_THE_CLOUD_SERPENT, {
						{		-- Neutral
						}, {	-- Friendly
						}, {	-- Honored
							i(83845),	-- Design: Jade Panther (RECIPE!)
							i(83830),	-- Design: Sunstone Panther (RECIPE!)
							i(247732, { ["timeline"] = { ADDED_11_2_7 } }),	-- Lucky Hanging Lantern (DECOR!)
						}, {	-- Revered
							i(89222, {	-- Cloud Ring (TOY!)
								["cost"] = 10000000,	-- 1,000g
							}),
							i(247730, {	-- Red Crane Kite (DECOR!)
								["timeline"] = { ADDED_11_2_7 },
								["cost"] = 8000000,	-- 800g
							}),
							i(83931),	-- Design: Ruby Panther (RECIPE!)
							i(83932),	-- Design: Sapphire Panther (RECIPE!)
							i(89225),	-- Finish Line
							i(89227),	-- Floating Finish Line
							i(89224),	-- Floating Racing Flag
							i(93229),	-- Grand Commendation of the Order of the Cloud Serpent
							i(89223),	-- Racing Flag
						}, {	-- Exalted
							i(83877),	-- Design: Jeweled Onyx Panther (RECIPE!)
							i(183123, {	-- How to School Your Serpent (CI!)
								["description"] = "Purchasable/learnable by any character exalted with Order of the Cloud Serpent.",
								["timeline"] = { ADDED_9_0_1 },
							}),
							-- #if ANYCLASSIC
							i(247497, {	-- Order of the Cloud Serpent Flight Log
								["recipeID"] = 130487,	-- Cloud Serpent Riding
								["timeline"] = { ADDED_5_0_4, REMOVED_6_0_2 },
							}),
							-- #endif
							i(89796),	-- Order of the Cloud Serpent Tabard
							i(85430, {	-- Reins of the Azure Cloud Serpent (MOUNT!)
								["cost"] = 30000000,	-- 3,000g
							}),
							i(85429, {	-- Reins of the Golden Cloud Serpent (MOUNT!)
								["cost"] = 30000000,	-- 3,000g
							}),
							i(79802, {	-- Reins of the Jade Cloud Serpent (MOUNT!)
								["cost"] = 30000000,	-- 3,000g
							}),
						},
					}),
				}),
			}),
		},
	}),
}))));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.MOP, bubbleDownSelf({ ["timeline"] = { ADDED_5_0_4 } }, {
	header(HEADERS.Faction, FACTION_ORDER_OF_THE_CLOUD_SERPENT, {
		n(QUESTS, {
			q(30165),	-- Tracking Event: Picked Blue Serpent - picked the blue serpent egg during "Choosing the One" (questID 30138)
			q(30167),	-- Tracking Event: Picked Gold Serpent - picked the gold serpent egg during "Choosing the One" (questID 30138)
			q(30166),	-- Tracking Event: Picked Green Serpent - picked the green serpent egg during "Choosing the One" (questID 30138)
		}),
	}),
})));
