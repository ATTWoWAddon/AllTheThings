---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, {
	m(DRAENOR, {
		m(TANAAN_JUNGLE, {
			["lore"] = "Tanaan Jungle is a zone in eastern Draenor. It is seat of the Iron Horde's dominion over Draenor and home to the Bleeding Hollow clan, as well as the recently constructed Dark Portal that serves as a time-space gateway between Draenor and Azeroth. The Azerothian expedition mounts a counter-offensive against Iron Horde's operations in their homeworld in a desperate bid to shut down the gateway, with heavy losses that force the remnants to escape elsewhere in order to find allies.",
			["icon"] = 1048305,
			["groups"] = {
				n(ACHIEVEMENTS, {
					a(ach(10068, {	-- Draenor's Last Stand (Tanaan Jungle) [A]
						["sym"] = {{ "achievement_criteria" }},
					})),
					h(ach(10075, {	-- Draenor's Last Stand (Tanaan Jungle) [H]
						["sym"] = {{ "achievement_criteria" }},
					})),
					explorationAch(10260),	-- Explore Tanaan Jungle
					ach(10061, {	-- Hellbane
						["sym"] = {{ "achievement_criteria" }},
					}),
					ach(10069),		-- I Came, I Clawed, I Conquered
					ach(10070, {	-- Jungle Stalker
						["sym"] = {{ "achievement_criteria" }},
						["groups"] = {
							ach(10259),		-- Jungle Hunter
						},
					}),
					ach(10262, {	-- Jungle Treasure Master
						ach(10261),		-- Jungle Treasure Hunter
					}),
					ach(10334, {	-- Predator
						title(59),	-- Predator
					}),
					ach(10072, {	-- Rumble in the Jungle (A)
						["sym"] = {{"meta_achievement",
							10068,	-- Draenor's Last Stand (A)
							10061,	-- Hellbane
							10067,	-- In Pursuit of Gul'dan (Garrison) [A]
							10070,	-- Jungle Stalker
							10262,	-- Jungle Treasure Master
							10260,	-- Explore Tanaan Jungle
							10069,	-- I Came, I Clawed, I Conquered
							10071,	-- The Legion Will NOT Conquer All
						}},
						["races"] = ALLIANCE_ONLY,
						["g"] = {
							title(318),	-- of the Jungle
						},
					}),
					ach(10265, {	-- Rumble in the Jungle (H)
						["sym"] = {{"meta_achievement",
							10075,	-- Draenor's Last Stand (H)
							10061,	-- Hellbane
							10074,	-- In Pursuit of Gul'dan (Garrison) [H]
							10070,	-- Jungle Stalker
							10262,	-- Jungle Treasure Master
							10260,	-- Explore Tanaan Jungle
							10069,	-- I Came, I Clawed, I Conquered
							10071,	-- The Legion Will NOT Conquer All
						}},
						["races"] = HORDE_ONLY,
						["groups"] = {
							title(318),	-- of the Jungle
						},
					}),
					ach(10350, {	-- Tanaan Diplomat (Alliance)
						["races"] = ALLIANCE_ONLY,
						["g"] = {
							crit(28981),	-- Hand of the Prophet
							crit(28980),	-- Order of the Awakened
							crit(28979),	-- The Saberstalkers
						},
					}),
					ach(10349, {	-- Tanaan Diplomat (Horde)
						["races"] = HORDE_ONLY,
						["g"] = {
							crit(28980),	-- Order of the Awakened
							crit(28979),	-- The Saberstalkers
							crit(28978),	-- Vol'jin's Headhunters
						},
					}),
				}),
				petbattle(filter(BATTLE_PETS, {
					["sym"] = {{"select","speciesID",
						519,	-- Fel Flame (PET!)
						483,	-- Horny Toad (PET!)
						417,	-- Rat (PET!)
						405,	-- Tree Python (PET!)
						1593,	-- Waterfly (PET!)
					}},
					["groups"] = {
						ach(10052, {	-- Tiny Terrors in Tanaan
							n(94601, {	-- Felsworn Sentry
								["questID"] = 39157,
								["isDaily"] = true,
								["coord"] = { 26.0, 31.6, TANAAN_JUNGLE },
								["g"] = {
									i(127751, {	-- Fel-Touched Pet Supplies
										["sym"] = { { "fill" } },
									}),
								},
							}),
							n(94637, {	-- Corrupted Thundertail
								["questID"] = 39160,
								["isDaily"] = true,
								["coord"] = { 53.0, 65.2, TANAAN_JUNGLE },
								["g"] = {
									i(127751, {	-- Fel-Touched Pet Supplies
										["sym"] = { { "fill" } },
									}),
								},
							}),
							n(94638, {	-- Chaos Pup
								["questID"] = 39161,
								["isDaily"] = true,
								["coord"] = { 25.0, 76.2, TANAAN_JUNGLE },
								["g"] = {
									i(127751, {	-- Fel-Touched Pet Supplies
										["sym"] = { { "fill" } },
									}),
								},
							}),
							n(94639, {	-- Cursed Spirit
								["questID"] = 39162,
								["isDaily"] = true,
								["coord"] = { 31.4, 38.0, TANAAN_JUNGLE },
								["g"] = {
									i(127751, {	-- Fel-Touched Pet Supplies
										["sym"] = { { "fill" } },
									}),
								},
							}),
							n(94640, {	-- Felfly
								["questID"] = 39163,
								["isDaily"] = true,
								["coord"] = { 55.8, 80.8, TANAAN_JUNGLE },
								["g"] = {
									i(127751, {	-- Fel-Touched Pet Supplies
										["sym"] = { { "fill" } },
									}),
								},
							}),
							n(94641, {	-- Tainted Maulclaw
								["questID"] = 39164,
								["isDaily"] = true,
								["coord"] = { 43.4, 84.6, TANAAN_JUNGLE },
								["g"] = {
									i(127751, {	-- Fel-Touched Pet Supplies
										["sym"] = { { "fill" } },
									}),
								},
							}),
							n(94642, {	-- Direflame
								["questID"] = 39165,
								["isDaily"] = true,
								["coord"] = { 57.8, 37.2, TANAAN_JUNGLE },
								["g"] = {
									i(127751, {	-- Fel-Touched Pet Supplies
										["sym"] = { { "fill" } },
									}),
								},
							}),
							n(94643, {	-- Mirecroak
								["questID"] = 39166,
								["isDaily"] = true,
								["coord"] = { 42.2, 71.6, TANAAN_JUNGLE },
								["g"] = {
									i(127751, {	-- Fel-Touched Pet Supplies
										["sym"] = { { "fill" } },
									}),
								},
							}),
							n(94644, {	-- Dark Gazer
								["questID"] = 39167,
								["isDaily"] = true,
								["coord"] = { 54.0, 29.8, TANAAN_JUNGLE },
								["g"] = {
									i(127751, {	-- Fel-Touched Pet Supplies
										["sym"] = { { "fill" } },
									}),
								},
							}),
							n(94645, {	-- Bleakclaw
								["questID"] = 39168,
								["isDaily"] = true,
								["coord"] = { 15.8, 44.6, TANAAN_JUNGLE },
								["g"] = {
									i(127751, {	-- Fel-Touched Pet Supplies
										["sym"] = { { "fill" } },
									}),
								},
							}),
							n(94646, {	-- Vile Blood of Draenor
								["questID"] = 39169,
								["isDaily"] = true,
								["coord"] = { 44.0, 45.8, TANAAN_JUNGLE },
								["g"] = {
									i(127751, {	-- Fel-Touched Pet Supplies
										["sym"] = { { "fill" } },
									}),
								},
							}),
							n(94647, {	-- Dreadwalker
								["questID"] = 39170,
								["isDaily"] = true,
								["coord"] = { 47.2, 52.6, TANAAN_JUNGLE },
								["g"] = {
									i(127751, {	-- Fel-Touched Pet Supplies
										["sym"] = { { "fill" } },
									}),
								},
							}),
							n(94648, {	-- Netherfist
								["questID"] = 39171,
								["isDaily"] = true,
								["coord"] = { 48.4, 35.6, TANAAN_JUNGLE },
								["g"] = {
									i(127751, {	-- Fel-Touched Pet Supplies
										["sym"] = { { "fill" } },
									}),
								},
							}),
							n(94649, {	-- Skrillix
								["questID"] = 39172,
								["isDaily"] = true,
								["coord"] = { 48.4, 31.2, TANAAN_JUNGLE },
								["g"] = {
									i(127751, {	-- Fel-Touched Pet Supplies
										["sym"] = { { "fill" } },
									}),
								},
							}),
							n(94650, {	-- Defiled Earth
								["questID"] = 39173,
								["isDaily"] = true,
								["coord"] = { 75.4, 37.4, TANAAN_JUNGLE },
								["g"] = {
									i(127751, {	-- Fel-Touched Pet Supplies
										["sym"] = { { "fill" } },
									}),
								},
							}),
						}),
						i(127751, {	-- Fel-Touched Pet Supplies
							["description"] = "Fel-Touched Pet Supplies is the reward for defeating any of the Tiny Terrors in Tanaan. You can defeat each Tiny Terror once per character per day.|r",
							["g"] = {
								i(127753),	-- Nightmare Bell (PET!)
								i(127754),	-- Periwinkle Calf (PET!)
								i(118105),	-- Seaborne Spore (PET!)
								i(118101),	-- Zangar Spore (PET!)
							},
						}),
						pet(1468),	--  Bloodbeak (PET!)
						pet(1586),	--  Cerulean Moth (PET!)
						pet(1581, {	--  Fen Crab (PET!)
							["description"] = "Found along the southern coast below Fang'rila.",
						}),
						pet(1591),	--  Violet Firefly (PET!)
					},
				})),
				explorationHeader({
					exploration(7536),	-- Aktar's Post
					exploration(7717),	-- Bleeding Hollow Hunting Grounds
					exploration(7641),	-- Fang'rila
					exploration(7525),	-- Farlight Terrace
					exploration(7716),	-- Hellfire Citadel
					exploration(7723),	-- Ironhold Approach
					exploration(7515),	-- Ironhold Harbor
					visit_exploration(7632,{coord={38.4,44.3,TANAAN_JUNGLE}}),	-- Ironmonger's Hold
					exploration(7522),	-- Lion's Watch
					exploration(7655),	-- Rangari Refuge
					exploration(7524),	-- Ruins of Kra'nak
					exploration(7718),	-- Scuttler's Coast
					visit_exploration(7654,{coord={44.8,77.7,TANAAN_JUNGLE}}),	-- Stygana Cavern
					visit_exploration(7265,{coord={29.3,91.9,TANAAN_JUNGLE}}),	-- Tanaan Channel
					visit_exploration(7025,{coord={61.1,46.1,TANAAN_JUNGLE}}),	-- Tanaan Jungle
					visit_exploration(6682,{coord={62.4,32.6,TANAAN_JUNGLE}}),	-- Tanaan Jungle
					exploration(7526),	-- Temple of Sha'naar
					exploration(7722),	-- The Broken Rampart
					exploration(7615),	-- The Fel Forge
					exploration(7719),	-- The Felblight
					exploration(7527),	-- The Iron Front
					visit_exploration(7639,{coord={56.2,67.0,TANAAN_JUNGLE}}),	-- Thornmire
					exploration(7538),	-- Throne of Kil'jaeden
					exploration(7721),	-- Thundertail Wallow
					exploration(7523),	-- Vol'mar
					exploration(7720),	-- Warcamp Gromdar
					exploration(7539),	-- Zeth'Gol
					exploration(7514),	-- Zeth'Kur
					exploration(7604),	-- Zorammarsh
				}),
				n(FACTIONS, {
					faction(FACTION_HAND_OF_THE_PROPHET, {["races"] = ALLIANCE_ONLY}),	-- Hand of The Prophet
					faction(FACTION_ORDER_OF_THE_AWAKENED),	-- Order of the Awakened
					faction(FACTION_THE_SABERSTALKERS),	-- The Saberstalkers
					faction(FACTION_VOLJINS_HEADHUNTERS, {["races"] = HORDE_ONLY}),	-- Vol'jin's Headhunters
				}),
				n(FLIGHT_PATHS, {
					fp(1643, {	-- Aktar's Post, Tanaan Jungle
						["coord"] = { 26.0, 38.8, TANAAN_JUNGLE },
					}),
					fp(1620, {	-- Lion's Watch, Tanaan Jungle
						["coord"] = { 57.4, 58.8, TANAAN_JUNGLE },
						["races"] = ALLIANCE_ONLY,
					}),
					fp(1647, {	-- Malo's Lookout, Tanaan Jungle
						["coord"] = { 43.4, 42.2, TANAAN_JUNGLE },
					}),
					fp(1648, {	-- Sha'naari Refuge, Tanaan Jungle
						["coord"] = { 29.6, 63.0, TANAAN_JUNGLE },
					}),
					fp(1644, {	-- The Iron Front, Tanaan Jungle
						["coord"] = { 9.20, 55.8, TANAAN_JUNGLE },
						["races"] = HORDE_ONLY,
					}),
					fp(1645, {	-- The Iron Front, Tanaan Jungle
						["coord"] = { 10.0, 53.0, TANAAN_JUNGLE },
						["races"] = ALLIANCE_ONLY,
					}),
					fp(1646, {	-- Vault of the Earth, Tanaan Jungle
						["coord"] = { 47.0, 70.2, TANAAN_JUNGLE },
					}),
					fp(1621, {	-- Vol'mar, Tanaan Jungle
						["coord"] = { 60.4, 46.4, TANAAN_JUNGLE },
						["creatureID"] = 90550,	-- Gargash the Diver
						["races"] = HORDE_ONLY,
					}),
				}),
				n(PROFESSIONS, {
					n(94605, {	-- Apexis Gemcutter
						["description"] = "In order to learn these recipes, you have to take the appropriate gemcutter module to this NPC and then right-click to learn how to craft it.",
						["coord"] = { 25.8, 39.7, TANAAN_JUNGLE },
						["requireSkill"] = JEWELCRAFTING,
						["g"] = sharedData({
							-- These Recipes should only cached when learned and not disabled via NPC interact
							["isEnableTypeRecipe"] = true,
						},{
							recipe(187634, {	-- Immaculate Critical Strike Taladite
								["cost"] = { { "i", 127771, 1 } },	-- Gemcutter Module: Critical Strike
							}),
							recipe(187635, {	-- Immaculate Haste Taladite
								["cost"] = { { "i", 127772, 1 } },	-- Gemcutter Module: Haste
							}),
							recipe(187636, {	-- Immaculate Mastery Taladite
								["cost"] = { { "i", 127773, 1 } },	-- Gemcutter Module: Mastery
								["u"] = REMOVED_FROM_GAME,	-- Brawlers Guild removed thus this item is no longer available to buy
							}),
							recipe(187640, {	-- Immaculate Stamina Taladite
								["cost"] = { { "i", 127775, 1 } },	-- Gemcutter Module: Stamina
							}),
						}),
					}),
				}),
				n(QUESTS, {
					q(39568, {	-- A Little Wetwork [A]
						["provider"] = { "n", 90974 },	-- Vindicator Krethos
						["coord"] = { 58.4, 60.4, TANAAN_JUNGLE },
						["races"] = ALLIANCE_ONLY,
						["isDaily"] = true,
					}),
					q(39510, {	-- A Little Wetwork [H]
						["provider"] = { "n", 96014 },	-- Shadow Hunter Denjai
						["coord"] = { 61.6, 45.7, TANAAN_JUNGLE },
						["races"] = HORDE_ONLY,
						["isDaily"] = true,
					}),
					q(38578, {	-- A Message of Terrible Import -- aa
						["provider"] = { "n", 90584 },	-- Goi'orsh
						["coord"] = { 44.2, 41.5, TANAAN_JUNGLE },
					}),
					q(39511, {	-- Blood of Fallen Brothers
						["provider"] = { "n", 96014 },	-- Shadow Hunter Denjai
						["coord"] = { 61.6, 45.7, TANAAN_JUNGLE },
						["races"] = HORDE_ONLY,
						["isDaily"] = true,
					}),
					q(39567, {	-- Bloodied Blades of Zeth'Gol [A]
						["provider"] = { "n", 90974 },	-- Vindicator Krethos
						["coord"] = { 58.4, 60.4, TANAAN_JUNGLE },
						["races"] = ALLIANCE_ONLY,
						["isDaily"] = true,
					}),
					q(39509, {	-- Bloodied Blades of Zeth'Gol [H]
						["provider"] = { "n", 96014 },	-- Shadow Hunter Denjai
						["coord"] = { 61.6, 45.7, TANAAN_JUNGLE },
						["races"] = HORDE_ONLY,
						["isDaily"] = true,
					}),
					q(39313, {	-- Bring the Reinforcements [A]
						["provider"] = { "n", 90963 },	-- Angar Steelbellow
						["coord"] = { 58.1, 58.6, TANAAN_JUNGLE },
						["races"] = ALLIANCE_ONLY,
						["sourceQuest"] = 38445,	-- The Assault Base
					}),
					q(39315, {	-- Bring the Reinforcements [H]
						["provider"] = { "n", 90993 },	-- Fraggs
						["coord"] = { 59.9, 47.5, TANAAN_JUNGLE },
						["races"] = HORDE_ONLY,
						["sourceQuest"] = 37935,	-- The Assault Base
					}),
					q(39569, {	-- Breaking Their Fel Bonds
						["provider"] = { "n", 90974 },	-- Vindicator Krethos
						["coord"] = { 58.4, 60.4, TANAAN_JUNGLE },
						["races"] = ALLIANCE_ONLY,
						["isDaily"] = true,
					}),
					q(39586, {	-- Bringing Down the Iron Horde [A]
						["provider"] = { "n", 96147 },	-- Parvink
						["coord"] = { 57.8, 59.8, TANAAN_JUNGLE },
						["races"] = ALLIANCE_ONLY,
						["isDaily"] = true,
					}),
					q(39532, {	-- Bringing Down the Iron Horde [H]
						["provider"] = { "n", 93396 },	-- Nimi Brightcastle
						["coord"] = { 59.6, 45.9, TANAAN_JUNGLE },
						["races"] = HORDE_ONLY,
						["isDaily"] = true,
					}),
					q(38446, {	-- Commander in the Field! [A]
						["provider"] = { "n", 91935 },	-- Exarch Maladaar
						["coord"] = { 9.8, 53.5, TANAAN_JUNGLE },
						["races"] = ALLIANCE_ONLY,
						["sourceQuest"] = 38581,	-- The Battle for the West
					}),
					q(38001, {	-- Commander in the Field! [H]
						["provider"] = { "n", 90553 },	-- Durotan
						["coord"] = { 9.6, 56.2, TANAAN_JUNGLE },
						["races"] = HORDE_ONLY,
						["sourceQuest"] = 38577,	-- The Battle for the West
					}),
					q(39581, {	-- Demonslayer of Tanaan [A]
						["provider"] = { "n", 96147 },	-- Parvink
						["coord"] = { 57.8, 59.8, TANAAN_JUNGLE },
						["races"] = ALLIANCE_ONLY,
						["isDaily"] = true,
					}),
					q(39519, {	-- Demonslayer of Tanaan [H]
						["provider"] = { "n", 93396 },	-- Nimi Brightcastle
						["coord"] = { 59.6, 45.9, TANAAN_JUNGLE },
						["races"] = HORDE_ONLY,
						["isDaily"] = true,
					}),
					q(39571, {	-- Disarming Sha'naar [A]
						["provider"] = { "n", 90974 },	-- Vindicator Krethos
						["coord"] = { 58.4, 60.4, TANAAN_JUNGLE },
						["races"] = ALLIANCE_ONLY,
						["isDaily"] = true,
					}),
					q(39513, {	-- Disarming Sha'naar [H]
						["provider"] = { "n", 96014 },	-- Shadow Hunter Denjai
						["coord"] = { 61.6, 45.7, TANAAN_JUNGLE },
						["races"] = HORDE_ONLY,
						["isDaily"] = true,
					}),
					q(39573, {	-- Harnessing Their Power [A]
						["provider"] = { "n", 90974 },	-- Vindicator Krethos
						["coord"] = { 58.4, 60.4, TANAAN_JUNGLE },
						["races"] = ALLIANCE_ONLY,
						["isDaily"] = true,
					}),
					q(39514, {	-- Harnessing Their Power [H]
						["provider"] = { "n", 96014 },	-- Shadow Hunter Denjai
						["coord"] = { 61.6, 45.7, TANAAN_JUNGLE },
						["races"] = HORDE_ONLY,
						["isDaily"] = true,
					}),
					q(38444, {	-- In, Through, and Beyond! [A]
						["provider"] = { "n", 91923 },	-- Exarch Naielle
						["coord"] = { 69.4, 52.9, TANAAN_JUNGLE },
						["races"] = ALLIANCE_ONLY,
						["sourceQuest"] = 38436,	-- Obstacle Course
					}),
					q(37934, {	-- In, Through, and Beyond! [H]
						["provider"] = { "n", 90238 },	-- Shadow Hunter Mutumba
						["coord"] = { 69.5, 54.2, TANAAN_JUNGLE },
						["races"] = HORDE_ONLY,
						["sourceQuest"] = 37890,	-- Obstacle Course
					}),
					q(38599, {	-- Infrastructure Improvements
						["provider"] = { "n", 90991 },	-- Lil' Trix
						["coord"] = { 59.8, 47.5, TANAAN_JUNGLE },
						["races"] = HORDE_ONLY,
					}),
					q(39176, {	-- Mastery Of Taladite
						["requireSkill"] = JEWELCRAFTING,
						["provider"] = { "n", 94686 },	-- Sun-Sage Chakkis
						["coord"] = { 25.8, 39.8, TANAAN_JUNGLE },
					}),
					q(38436, {	-- Obstacle Course [A]
						["provider"] = { "n", 91913 },	-- Exarch Yrel
						["coord"] = { 73.4, 71.1, TANAAN_JUNGLE },
						["races"] = ALLIANCE_ONLY,
						["sourceQuest"] = 38435,	-- The Invasion of Tanaan
					}),
					q(37890, {	-- Obstacle Course [H]
						["provider"] = { "n", 89822 },	-- Draka
						["coord"] = { 73.4, 71.2, TANAAN_JUNGLE },
						["races"] = HORDE_ONLY,
						["sourceQuest"] = 37889,	-- The Invasion of Tanaan
					}),
					q(39395, {	-- Oronok's Offer
						["provider"] = { "n", 92338 },	-- Oronok Torn-heart
						["coord"] = { 62.8, 27.8, TANAAN_JUNGLE },
						["sourceQuests"] = {
							39394,	-- The Cipher of Damnation (A)
							38463,	-- The Cipher of Damnation (H)
						},
						["g"] = {
							follower(468),	-- Oronok Torn-heart
						},
					}),
					q(39574, {	-- Pressing the Attack [A]
						["provider"] = { "n", 90974 },	-- Vindicator Krethos
						["coord"] = { 58.4, 60.4, TANAAN_JUNGLE },
						["races"] = ALLIANCE_ONLY,
						["isDaily"] = true,
					}),
					q(39526, {	-- Pressing the Attack [H]
						["provider"] = { "n", 96014 },	-- Shadow Hunter Denjai
						["coord"] = { 61.6, 45.7, TANAAN_JUNGLE },
						["races"] = HORDE_ONLY,
						["isDaily"] = true,
					}),
					q(39177, {	-- Ruined Construct
						["requireSkill"] = JEWELCRAFTING,
						["provider"] = { "n", 94605 },	-- Apexis Gemcutter
						["coord"] = { 17.5, 45.1, TANAAN_JUNGLE },
						["sourceQuest"] = 39176,	-- Mastery of Taladite
						["g"] = {
							recipe(187639, {	-- Immaculate Versatility Taladite
								["isEnableTypeRecipe"] = true,
							}),
						},
					}),
					q(39565, {	-- Rumble in the Jungle
						["provider"] = { "n", 92805 },	-- Z'tenga the Walker
						["coord"] = { 55.2, 74.7, TANAAN_JUNGLE },
						["isWeekly"] = true,
					}),
					q(39570, {	-- Secrets of the Shadow Council [A]
						["provider"] = { "n", 90974 },	-- Vindicator Krethos
						["coord"] = { 58.4, 60.4, TANAAN_JUNGLE },
						["races"] = ALLIANCE_ONLY,
						["isDaily"] = true,
					}),
					q(39512, {	-- Secrets of the Shadow Council [H]
						["provider"] = { "n", 96014 },	-- Shadow Hunter Denjai
						["coord"] = { 61.6, 45.7, TANAAN_JUNGLE },
						["races"] = HORDE_ONLY,
						["isDaily"] = true,
					}),
					q(38603, {	-- Setting the Signal
						["provider"] = { "n", 92545 },	-- Norman Powerspark
						["coord"] = { 58.1, 58.5, TANAAN_JUNGLE },
						["races"] = ALLIANCE_ONLY,
						["sourceQuest"] = 38445,	-- The Assault Base
					}),
					q(39422, {	-- Shipyard Report [A]
						["provider"] = { "n", 90309 },	-- Exarch Yrel
						["coord"] = { 58.4, 60.3, TANAAN_JUNGLE },
						["races"] = ALLIANCE_ONLY,
						["sourceQuest"] = 38445,	-- The Assault Base
						["isBreadcrumb"] = true,
						["DisablePartySync"] = true,
					}),
					q(39423, {	-- Shipyard Report [H]
						["provider"] = { "n", 90481 },	-- Draka
						["coord"] = { 61.5, 45.9, TANAAN_JUNGLE },
						["races"] = HORDE_ONLY,
						["sourceQuest"] = 37935,	-- The Assault Base
						["isBreadcrumb"] = true,
						["DisablePartySync"] = true,
					}),
					q(38445, {	-- The Assault Base [A]
						["provider"] = { "n", 91923 },	-- Exarch Naielle
						["coord"] = { 62.4, 54.2, TANAAN_JUNGLE },
						["races"] = ALLIANCE_ONLY,
						["sourceQuest"] = 38444,	-- In, Through, and Beyond!
					}),
					q(37935, {	-- The Assault Base [H]
						["provider"] = { "n", 90238 },	-- Shadow Hunter Mutumba
						["coord"] = { 62.6, 50.9, TANAAN_JUNGLE },
						["races"] = HORDE_ONLY,
						["sourceQuest"] = 37934,	-- In, Through, and Beyond!
					}),
					q(38581, {	-- The Battle for the West [A]
						["provider"] = { "n", 90309 },	-- Exarch Yrel
						["coord"] = { 58.4, 60.3, TANAAN_JUNGLE },
						["races"] = ALLIANCE_ONLY,
						["sourceQuest"] = 38445,	-- The Assault Base
					}),
					q(38577, {	-- The Battle for the West [H]
						["provider"] = { "n", 90481 },	-- Draka
						["coord"] = { 61.5, 45.9, TANAAN_JUNGLE },
						["races"] = HORDE_ONLY,
						["sourceQuest"] = 37935,	-- The Assault Base
					}),
					q(39582, {	-- Tooth and Claw [A]
						["provider"] = { "n", 96147 },	-- Parvink
						["coord"] = { 57.8, 59.8, TANAAN_JUNGLE },
						["races"] = ALLIANCE_ONLY,
						["isDaily"] = true,
					}),
					q(39529, {	-- Tooth and Claw [H]
						["provider"] = { "n", 93396 },	-- Nimi Brightcastle
						["coord"] = { 59.6, 45.9, TANAAN_JUNGLE },
						["races"] = HORDE_ONLY,
						["isDaily"] = true,
					}),
					q(39432, {	-- Unknowable Power
						["provider"] = { "n", 95424 },	-- Dawn-Seeker Krisek
						["allianceQuestData"] = {
							["sourceQuest"] = 38445,	-- The Assault Base
							["coord"] = { 57.9, 59.3, TANAAN_JUNGLE },
						},
						["hordeQuestData"] = {
							["sourceQuest"] = 37935,	-- The Assault Base
							["coord"] = { 60.4, 46.7, TANAAN_JUNGLE },
						},
					}),
					q(39433, {	-- Unseen Influence
						["provider"] = { "n", 95424 },	-- Dawn-Seeker Krisek
						["allianceQuestData"] = {
							["coord"] = { 57.9, 59.3, TANAAN_JUNGLE },
						},
						["hordeQuestData"] = {
							["coord"] = { 60.4, 46.6, TANAAN_JUNGLE },
						},
						["isDaily"] = true,
						["sourceQuest"] = 39432,	-- Unknowable Power
					}),
					q(38996, {	-- Your Orders, General? (A)
						-- Alliance version is repeatable, Horde version is not
						["isDaily"] = true,
						["races"] = ALLIANCE_ONLY,
						["u"] = REMOVED_FROM_GAME,
					}),
					q(38989, {	-- Your Orders, General? (H)
						-- Alliance version is repeatable, Horde version is not
						["races"] = HORDE_ONLY,
						["u"] = REMOVED_FROM_GAME,
					}),
					n(BONUS_OBJECTIVES, {
						-- TODO: Check SQ
						q(37891, {	-- Assault on Ironhold Harbor (A)
							["coord"] = { 58.4, 60.2, TANAAN_JUNGLE },
							["races"] = ALLIANCE_ONLY,
							["isDaily"] = true,
						}),
						q(37940, {	-- Assault on Ironhold Harbor (H)
							["coord"] = { 61.4, 45.8, TANAAN_JUNGLE },
							["races"] = HORDE_ONLY,
							["isDaily"] = true,
						}),
						q(37866, {	-- Assault on Ironhold Harbor (A)
							["coord"] = { 39.0, 38.0, TANAAN_JUNGLE },
							["races"] = ALLIANCE_ONLY,
							["isDaily"] = true,
						}),
						q(37865, {	-- Assault on Ironhold Harbor (H)
							["coord"] = { 39.0, 38.0, TANAAN_JUNGLE },
							["races"] = HORDE_ONLY,
							["isDaily"] = true,
						}),
						q(39451, {	-- Assault on Ironhold Harbor (A)
							["coord"] = { 39.0, 38.0, TANAAN_JUNGLE },
							["races"] = ALLIANCE_ONLY,
							["isDaily"] = true,
						}),
						q(39452, {	-- Assault on Ironhold Harbor (H)
							["coord"] = { 39.0, 38.0, TANAAN_JUNGLE },
							["races"] = HORDE_ONLY,
							["isDaily"] = true,
						}),
						q(38877, {	-- Assault on the Fel Forge (A)
							["coord"] = { 50.0, 44.0, TANAAN_JUNGLE },
							["races"] = ALLIANCE_ONLY,
						}),
						q(38876, {	-- Assault on the Fel Forge (H)
							["coord"] = { 50.0, 44.0, TANAAN_JUNGLE },
							["races"] = HORDE_ONLY,
						}),
						q(38439, {	-- Assault on the Fel Forge (A)
							["coord"] = { 50.0, 44.0, TANAAN_JUNGLE },
							["races"] = ALLIANCE_ONLY,
							["isDaily"] = true,
						}),
						q(37970, {	-- Assault on the Fel Forge (H)
							["coord"] = { 50.0, 44.0, TANAAN_JUNGLE },
							["races"] = HORDE_ONLY,
							["isDaily"] = true,
						}),
						q(38440, {	-- Assault on the Fel Forge (A)
							["coord"] = { 58.4, 60.2, TANAAN_JUNGLE },
							["races"] = ALLIANCE_ONLY,
							["isDaily"] = true,
						}),
						q(38441, {	-- Assault on the Fel Forge (H)
							["coord"] = { 61.4, 45.8, TANAAN_JUNGLE },
							["races"] = HORDE_ONLY,
							["isDaily"] = true,
						}),
						q(39445, {	-- Assault on the Fel Forge (A)
							["coord"] = { 50.0, 44.0, TANAAN_JUNGLE },
							["races"] = ALLIANCE_ONLY,
							["isDaily"] = true,
						}),
						q(39446, {	-- Assault on the Fel Forge (H)
							["coord"] = { 50.0, 44.0, TANAAN_JUNGLE },
							["races"] = HORDE_ONLY,
							["isDaily"] = true,
						}),
						q(38868, {	-- Assault on the Ruins of Kra'nak (A)
							["coord"] = { 23.0, 37.0, TANAAN_JUNGLE },
							["races"] = ALLIANCE_ONLY,
						}),
						q(38869, {	-- Assault on the Ruins of Kra'nak (H)
							["coord"] = { 23.0, 37.0, TANAAN_JUNGLE },
							["races"] = HORDE_ONLY,
						}),
						q(38250, {	-- Assault on the Ruins of Kra'nak (A)
							["coord"] = { 58.4, 60.2, TANAAN_JUNGLE },
							["races"] = ALLIANCE_ONLY,
							["isDaily"] = true,
						}),
						q(38252, {	-- Assault on the Ruins of Kra'nak (H)
							["coord"] = { 61.4, 45.8, TANAAN_JUNGLE },
							["races"] = HORDE_ONLY,
							["isDaily"] = true,
						}),
						q(37938, {	-- Assault on the Ruins of Kra'nak (A)
							["coord"] = { 23.0, 37.0, TANAAN_JUNGLE },
							["races"] = ALLIANCE_ONLY,
							["isDaily"] = true,
						}),
						q(38009, {	-- Assault on the Ruins of Kra'nak (H)
							["coord"] = { 23.0, 37.0, TANAAN_JUNGLE },
							["races"] = HORDE_ONLY,
							["isDaily"] = true,
						}),
						q(39447, {	-- Assault on the Ruins of Kra'nak (A)
							["coord"] = { 23.0, 37.0, TANAAN_JUNGLE },
							["races"] = ALLIANCE_ONLY,
							["isDaily"] = true,
						}),
						q(39448, {	-- Assault on the Ruins of Kra'nak (H)
							["coord"] = { 23.0, 37.0, TANAAN_JUNGLE },
							["races"] = HORDE_ONLY,
							["isDaily"] = true,
						}),
						q(37968, {	-- Assault on the Temple of Sha'naar (A)
							["coord"] = { 58.4, 60.2, TANAAN_JUNGLE },
							["races"] = ALLIANCE_ONLY,
							["isDaily"] = true,
						}),
						q(38449, {	-- Assault on the Temple of Sha'naar (H)
							["coord"] = { 61.4, 45.8, TANAAN_JUNGLE },
							["races"] = HORDE_ONLY,
							["isDaily"] = true,
						}),
						q(37966, {	-- Assault on the Temple of Sha'naar (A)
							["coord"] = { 30.0, 71.0, TANAAN_JUNGLE },
							["races"] = ALLIANCE_ONLY,
							["isDaily"] = true,
						}),
						q(38020, {	-- Assault on the Temple of Sha'naar (H)
							["coord"] = { 30.0, 71.0, TANAAN_JUNGLE },
							["races"] = HORDE_ONLY,
							["isDaily"] = true,
						}),
						q(39449, {	-- Assault on the Temple of Sha'naar (A)
							["coord"] = { 30.0, 71.0, TANAAN_JUNGLE },
							["races"] = ALLIANCE_ONLY,
							["isDaily"] = true,
						}),
						q(39450, {	-- Assault on the Temple of Sha'naar (H)
							["coord"] = { 30.0, 71.0, TANAAN_JUNGLE },
							["races"] = HORDE_ONLY,
							["isDaily"] = true,
						}),
						q(38585, {	-- Assault on the Throne of Kil'jaeden (A)
							["coord"] = { 58.4, 60.2, TANAAN_JUNGLE },
							["races"] = ALLIANCE_ONLY,
							["isDaily"] = true,
						}),
						q(38586, {	-- Assault on the Throne of Kil'jaeden (H)
							["coord"] = { 61.4, 45.8, TANAAN_JUNGLE },
							["races"] = HORDE_ONLY,
							["isDaily"] = true,
						}),
						q(38587, {	-- Assault on the Throne of Kil'jaeden (A)
							["coord"] = { 54.0, 25.0, TANAAN_JUNGLE },
							["races"] = ALLIANCE_ONLY,
							["isDaily"] = true,
						}),
						q(38588, {	-- Assault on the Throne of Kil'jaeden (H)
							["coord"] = { 54.0, 25.0, TANAAN_JUNGLE },
							["races"] = HORDE_ONLY,
							["isDaily"] = true,
						}),
						q(39453, {	-- Assault on the Throne of Kil'jaeden (A)
							["coord"] = { 54.0, 25.0, TANAAN_JUNGLE },
							["races"] = ALLIANCE_ONLY,
							["isDaily"] = true,
						}),
						q(39454, {	-- Assault on the Throne of Kil'jaeden (H)
							["coord"] = { 54.0, 25.0, TANAAN_JUNGLE },
							["races"] = HORDE_ONLY,
							["isDaily"] = true,
						}),
						q(38866, {	-- Battle At The Iron Front (A)
							["coord"] = { 14.0, 57.0, TANAAN_JUNGLE },
							["races"] = ALLIANCE_ONLY,
							--["sourceQuest"] = 38445,	-- The Assault Base (A)
						}),
						q(38865, {	-- Battle At The Iron Front (H)
							["coord"] = { 14.0, 57.0, TANAAN_JUNGLE },
							["races"] = HORDE_ONLY,
							--["sourceQuest"] = 37935,	-- The Assault Base (H)
						}),
						q(38046, {	-- Battle At The Iron Front (A)
							["coord"] = { 58.4, 60.2, TANAAN_JUNGLE },
							["races"] = ALLIANCE_ONLY,
							["isDaily"] = true,
						}),
						q(38047, {	-- Battle At The Iron Front (H)
							["coord"] = { 61.4, 45.8, TANAAN_JUNGLE },
							["races"] = HORDE_ONLY,
							["isDaily"] = true,
						}),
						q(38051, {	-- Battle At The Iron Front (A)
							["coord"] = { 14.0, 57.0, TANAAN_JUNGLE },
							["races"] = ALLIANCE_ONLY,
							["isDaily"] = true,
						}),
						q(38054, {	-- Battle At The Iron Front (H)
							["coord"] = { 14.0, 57.0, TANAAN_JUNGLE },
							["races"] = HORDE_ONLY,
							["isDaily"] = true,
						}),
						q(39443, {	-- Battle At The Iron Front (A)
							["coord"] = { 14.0, 57.0, TANAAN_JUNGLE },
							["races"] = ALLIANCE_ONLY,
							["isDaily"] = true,
							--["sourceQuest"] = 38445,	-- The Assault Base (A)
						}),
						q(39444, {	-- Battle At The Iron Front (H)
							["coord"] = { 14.0, 57.0, TANAAN_JUNGLE },
							["races"] = HORDE_ONLY,
							["isDaily"] = true,
							--["sourceQuest"] = 37935,	-- The Assault Base (H)
						}),
						q(38870, {	-- Bleeding the Bleeding Hollow (A)
							["coord"] = { 22.0, 50.0, TANAAN_JUNGLE },
							["races"] = ALLIANCE_ONLY,
							-- ["sourceQuest"] = 38560,	-- Garrison Campaign: The Bane of the Bleeding Hollow
						}),
						q(38871, {	-- Bleeding the Bleeding Hollow (H)
							["coord"] = { 22.0, 50.0, TANAAN_JUNGLE },
							["races"] = HORDE_ONLY,
							-- ["sourceQuest"] = 38453,	-- Garrison Campaign: The Bane of the Bleeding Hollow
						}),
						q(38045, {	-- Bleeding the Bleeding Hollow (A)
							["coord"] = { 58.4, 60.2, TANAAN_JUNGLE },
							["races"] = ALLIANCE_ONLY,
							["isDaily"] = true,
						}),
						q(38044, {	-- Bleeding the Bleeding Hollow (H)
							["coord"] = { 61.4, 45.8, TANAAN_JUNGLE },
							["races"] = HORDE_ONLY,
							["isDaily"] = true,
						}),
						q(38043, {	-- Bleeding the Bleeding Hollow (A)
							["coord"] = { 22.0, 50.0, TANAAN_JUNGLE },
							["races"] = ALLIANCE_ONLY,
							["isDaily"] = true,
						}),
						q(38040, {	-- Bleeding the Bleeding Hollow (H)
							["coord"] = { 22.0, 50.0, TANAAN_JUNGLE },
							["races"] = HORDE_ONLY,
							["isDaily"] = true,
						}),
						q(39441, {	-- Bleeding the Bleeding Hollow (A)
							["coord"] = { 22.0, 50.0, TANAAN_JUNGLE },
							["races"] = ALLIANCE_ONLY,
							["isDaily"] = true,
							--["sourceQuest"] = 38560,	-- Garrison Campaign: The Bane of the Bleeding Hollow
						}),
						q(39442, {	-- Bleeding the Bleeding Hollow (H)
							["coord"] = { 22.0, 50.0, TANAAN_JUNGLE },
							["races"] = HORDE_ONLY,
							["isDaily"] = true,
							--["sourceQuest"] = 38453,	-- Garrison Campaign: The Bane of the Bleeding Hollow
						}),
					}),
				}),
				n(RARES, {
					-- Coords have been confirmed on rares except for some noted rares on longer spawn timers.
					n(92766, {	-- Akrrilo <Shadowhunter of the Blackfang>
						["description"] = "\nPurchase a Minor Blackfang Challenge Totem from Z'tenga the Walker at |cFFFFFFFF55.2, 74.8|r.  Use the totem in the arena at |cFFFFFFFF54.2, 80.8|r to summon Akrrilo.\n\n",
						["questID"] = 39399,
						["isDaily"] = true,
						["coord"] = { 54.2, 80.8, TANAAN_JUNGLE },
					}),
					n(91871, {	-- Argosh the Destroyer
						["questID"] = 38430,
						["isDaily"] = true,
						["coord"] = { 52.6, 40.6, TANAAN_JUNGLE },	-- **Coords unconfirmed, relied on wowhead**
						["g"] = {
							i(127326),	-- Fel Destroyer Crossbow
						},
					}),
					n(92552, {	-- Belgork
						["questID"] = 38609,
						["isDaily"] = true,
						["coord"] = { 35.6, 46.8, TANAAN_JUNGLE },
						["g"] = {
							i(127650),	-- Belgork's Bastion
							i(126950, {	-- Equipment Blueprint: Bilge Pump
								["questID"] = 38932,	-- Equipment Blueprint: Bilge Pump
							}),
						},
					}),
					n(90884, {	-- Bilkor the Thrower
						["questID"] = 38262,
						["isDaily"] = true,
						["coord"] = { 23.6, 52.0, TANAAN_JUNGLE },	-- **Coords unconfirmed, relied on wowhead**
						["g"] = {
							i(127307),	-- Battle-Scuffed Spaulders
						},
					}),
					n(92657, {	-- Bleeding Hollow Horror
						["questID"] = 38696,
						["isDaily"] = true,
						["coords"] = {
							{ 50.8, 74.2, TANAAN_JUNGLE },	-- Bleeding Hollow Horror
							{ 44.6, 77.5, TANAAN_JUNGLE },	-- Cave Entrance
						},
						["g"] = {
							i(127654),	-- Burning Agony
						},
					}),
					n(90936, {	-- Bloodhunter Zulk
						["questID"] = 38266,
						["isDaily"] = true,
						["coords"] = {	-- **Coords unconfirmed, relied on wowhead**
							{ 24.6, 50.0, TANAAN_JUNGLE },
							{ 21.0, 53.0, TANAAN_JUNGLE },
						},
						["g"] = {
							i(127303),	-- Zulk's Sneaky Slippers
						},
					}),
					n(91093, {	-- Bramblefell
						["questID"] = 38209,
						["isDaily"] = true,
						["coords"] = {	-- **Coords unconfirmed, relied on wowhead**
							{ 41.0, 68.6, TANAAN_JUNGLE },
							{ 39.2, 68.8, TANAAN_JUNGLE },
						},
						["g"] = {
							i(127652),	-- Felflame Campfire (TOY!)
						},
					}),
					n(92429, {	-- Broodlord Ixkor
						["questID"] = 38589,
						["isDaily"] = true,
						["coord"] = { 57.6, 67.2, TANAAN_JUNGLE },	-- **Coords unconfirmed, relied on wowhead**
						["g"] = {
							i(127349),	-- Silver Chitin Ring
						},
					}),
					n(93264, {	-- Captain Grok'mar
						["questID"] = 38820,
						["isDaily"] = true,
						["coord"] = { 48.6, 57.4, TANAAN_JUNGLE },
						["g"] = {
							i(127664),	-- Grokmar's Greaves of Fortification
						},
					}),
					n(93076, {	-- Captain Ironbeard <The True Scourge of the Iron Seas>
						["questID"] = 38756,
						["isDaily"] = true,
						["coord"] = { 36.6, 79.8, TANAAN_JUNGLE },	-- **Coords unconfirmed, relied on wowhead**
						["g"] = {
							i(127659),	-- Ghostly Iron Buccaneer's Hat (TOY!)
							i(128257, {	-- Equipment Blueprint: Ghostly Spyglass
								["questID"] = 39365,	-- Equipment Blueprint: Ghostly Spyglass
							}),
						},
					}),
					n(90434, {	-- Ceraxas
						["description"] = "Killing Ceraxas will summon the Abandoned Fel Pup, which offers the quest that rewards the pet.",
						["questID"] = 38031,
						["isDaily"] = true,
						["coord"] = { 31.6, 68.0, TANAAN_JUNGLE },	-- **Coords unconfirmed, relied on wowhead**
						["g"] = {
							q(38428,{	-- A Fel Puppy Of My Own
								["qgs"] = { 90426 },	-- Abandoned Fel Pup
								["coord"] = { 31.7, 67.1, TANAAN_JUNGLE },
								["g"] = {
									i(129205),	-- Fel Pup (PET!)
								},
							}),
						},
					}),
					n(90519, {	-- Cindral the Wildfire
						["questID"] = 37990,
						["isDaily"] = true,
						["coord"] = { 44.6, 37.6, TANAAN_JUNGLE },
						["g"] = {
							i(127660),	-- Contained Flame
							i(128255, {	-- Equipment Blueprint: Ice Cutter
								["questID"] = 39363,	-- Equipment Blueprint: Ice Cutter
							}),
						},
					}),
					n(91232, {	-- Commander Krag'goth
						["questID"] = 38746,
						["isDaily"] = true,
						["coord"] = { 15.0, 53.9, TANAAN_JUNGLE },
						["g"] = {
							i(127319),	-- Krag'goth's Iron Gauntlets
						},
					}),
					n(89675, {	-- Commander Org'mok
						["questID"] = 38749,
						["isDaily"] = true,
						["coords"] = {	-- **Coords unconfirmed, relied on wowhead**
							{ 51.2, 46.6, TANAAN_JUNGLE },
							{ 48.0, 44.8, TANAAN_JUNGLE },
						},
						["g"] = {
							i(127313),	-- Org'mok's Riding Chaps
						},
					}),
					n(95053, {	-- Deathtalon <Avatar of Iskar>
						["questID"] = 39287,
						["isDaily"] = true,
						["coord"] = { 22.8, 40.0, TANAAN_JUNGLE },	-- **Coords unconfirmed, relied on wowhead**
						["g"] = {
							i(128025, {	-- Rattling Iron Cage
								i(116669),	-- Armored Razorback (MOUNT!)
								i(116658),	-- Tundra Icehoof (MOUNT!)
								i(116780),	-- Warsong Direfang (MOUNT!)
							}),
							i(128315),	-- Medallion of thee Legion
						},
					}),
					n(95056, {	-- Doomroller <Mar'tak's Creation>
						["questID"] = 39289,
						["isDaily"] = true,
						["coord"] = { 47.0, 52.6, TANAAN_JUNGLE },	-- **Coords unconfirmed, relied on wowhead**
						["g"] = {
							i(128025, {	-- Rattling Iron Cage
								i(116669),	-- Armored Razorback (MOUNT!)
								i(116658),	-- Tundra Icehoof (MOUNT!)
								i(116780),	-- Warsong Direfang (MOUNT!)
							}),
							i(128315),	-- Medallion of thee Legion
						},
					}),
					n(90887, {	-- Dorg the Bloody
						["questID"] = 38265,
						["coords"] = {	-- **Coords unconfirmed, relied on wowhead**
							{ 24.8, 46.4, TANAAN_JUNGLE },
							{ 24.2, 46.4, TANAAN_JUNGLE },
							{ 22.8, 48.8, TANAAN_JUNGLE },
						},
						["isDaily"] = true,
						["g"] = {
							i(127301),	-- Bloody Aberration Strap
						},
					}),
					n(98283, {	-- Drakum
						["questID"] = 40105,
						["isDaily"] = true,
						["coord"] = { 83.4, 43.6, TANAAN_JUNGLE },
						["g"] = {
							i(108631),	-- Crashin' Thrashin' Roller Controller (TOY!)
						},
					}),
					n(93028, {	-- Driss Vile
						["questID"] = 38736,
						["isDaily"] = true,
						["coord"] = { 20.2, 53.4, TANAAN_JUNGLE },	-- **Coords unconfirmed, relied on wowhead**
						["g"] = {
							i(127331),	-- Double-Scoped Long Rifle
						},
					}),
					n(90888, {	-- Drivnul
						["questID"] = 38264,
						["isDaily"] = true,
						["coord"] = { 25.7, 46.1, TANAAN_JUNGLE },
						["g"] = {
							i(127298),	-- Blood-Infused Leggings
						},
					}),
					n(91727, {	-- Executor Riloth
						["questID"] = 38411,
						["isDaily"] = true,
						["coord"] = { 49.8, 36.2, TANAAN_JUNGLE },	-- **Coords unconfirmed, relied on wowhead**
						["g"] = {
							i(127323),	-- Bracers of Endless Suffering
						},
					}),
					n(92819, {	-- Eyepiercer <Crazed Blackfang Warmonger>
						["description"] = "\nPurchase a Prime Blackfang Challenge Totem from Z'tenga the Walker at |cFFFFFFFF55.2, 74.8|r.  Use the totem in the arena at |cFFFFFFFF54.2, 80.8|r to summon Eyepiercer.\n\n",
						["questID"] = 39379,
						["isDaily"] = true,
						["coord"] = { 54.2, 80.8, TANAAN_JUNGLE },
					}),
					n(98408, {	-- Fel Overseer Mudlump
						["questID"] = 40107,
						["isDaily"] = true,
						["coord"] = { 41.0, 56.3, TANAAN_JUNGLE },
						["g"] = {
							i(129295),	-- Spike-Toed Booterang
						},
					}),
					n(93168, {	-- Felbore
						["questID"] = 38775,
						["isDaily"] = true,
						["description"] = "At the back of an underground cave.",
						["coords"] = {
							{ 31.1, 53.3, TANAAN_JUNGLE },	-- cave entrance
							{ 28.6, 50.8, TANAAN_JUNGLE },	-- felbore
						},
						["g"] = {
							i(127350),	-- Fel Imbued Band
						},
					}),
					n(92647, {	-- Felsmith Damorka
						["questID"] = 38634,
						["isDaily"] = true,
						["coord"] = { 45.8, 47.0, TANAAN_JUNGLE },	-- **Coords unconfirmed, relied on wowhead**
						["g"] = {
							i(127302),	-- Chemical Resistant Apron
							i(128258, {	-- Equipment Blueprint: Felsmoke Launchers
								["questID"] = 39366,	-- Equipment Blueprint: Felsmoke Launchers
							}),
						},
					}),
					n(91098, {	-- Felspark
						["questID"] = 38211,
						["isDaily"] = true,
						["coords"] = {	-- **Coords unconfirmed, relied on wowhead**
							{ 53.0, 25.6, TANAAN_JUNGLE },
							{ 53.0, 27.2, TANAAN_JUNGLE },
							{ 52.2, 27.4, TANAAN_JUNGLE },
						},
						["g"] = {
							i(127656),	-- Fel Singed Wraps
						},
					}),
					n(92508, {	-- Gloomtalon
						["questID"] = 38604,
						["isDaily"] = true,
						["coord"] = { 63.6, 81.2, TANAAN_JUNGLE },	-- **Coords unconfirmed, relied on wowhead**
						["g"] = {
							i(127306),	-- Gloomtalon's Spare Kilt
						},
					}),
					n(93125, {	-- Glub'glok
						["questID"] = 38764,
						["isDaily"] = true,
						["coord"] = { 34.6, 78.0, TANAAN_JUNGLE },	-- **Coords unconfirmed, relied on wowhead**
						["g"] = {
							i(127317),	-- Murktide's Coveted Chestplate
						},
					}),
					n(98284, {	-- Gondar
						["questID"] = 40106,
						["isDaily"] = true,
						["coord"] = { 80.6, 56.4, TANAAN_JUNGLE },	-- **Coords unconfirmed, relied on wowhead**
						["g"] = {
							i(108633),	-- Crashin' Thrashin' Cannon Controller (TOY!)
						},
					}),
					n(92941, {	-- Gorabosh
						["questID"] = 38709,
						["isDaily"] = true,
						["coord"] = { 33.3, 35.8, TANAAN_JUNGLE },
						["g"] = {
							i(127304),	-- Cave Keeper Wraps
						},
					}),
					n(91695, {	-- Grand Warlock Nethekurse
						["questID"] = 38400,
						["isDaily"] = true,
						["coords"] = {	-- **Coords unconfirmed, relied on wowhead**
							{ 47.4, 40.6, TANAAN_JUNGLE },
							{ 46.2, 42.8, TANAAN_JUNGLE },
						},
						["g"] = {
							i(127299),	-- Nehtekurse's Robe of Contempt
						},
					}),
					n(93057, {	-- Grannok
						["questID"] = 38750,
						["isDaily"] = true,
						["coord"] = { 16.0, 59.2, TANAAN_JUNGLE },	-- **Coords unconfirmed, relied on wowhead**
						["g"] = {
							i(127649),	-- Trophy-Skull Choker
						},
					}),
					n(90094, {	-- Harbormaster Korak
						["questID"] = 39046,
						["isDaily"] = true,
						["coord"] = { 39.6, 32.6, TANAAN_JUNGLE },
						["g"] = {
							i(127309),	-- Korak's Reinforced Iron Tunic
						},
					}),
					n(90777, {	-- High Priest Ikzan
						["questID"] = 38028,
						["isDaily"] = true,
						["coords"] = {	-- **Coords unconfirmed, relied on wowhead**
							{ 21.0, 37.4, TANAAN_JUNGLE },
							{ 20.4, 41.6, TANAAN_JUNGLE },
						},
						["g"] = {
							i(122117),	-- Cursed Feather of Ikzan (TOY!)
						},
					}),
					n(90429, {	-- Imp-Master Valessa
						["questID"] = 38026,
						["isDaily"] = true,
						["coords"] = {	-- **Coords unconfirmed, relied on wowhead**
							{ 31.6, 72.6, TANAAN_JUNGLE },
							{ 31.0, 71.4, TANAAN_JUNGLE },
						},
						["g"] = {
							i(127655),	-- Sassy Imp (TOY!)
						},
					}),
					n(90437, {	-- Jax'zor
						["questID"] = 38030,
						["isDaily"] = true,
						["coord"] = { 26.6, 75.0, TANAAN_JUNGLE },	-- **Coords unconfirmed, relied on wowhead**
						["g"] = {
							i(127322),	-- Fel Burnished Waistguard
						},
					}),
					n(80398, {	-- Keravnos
						["questID"] = 37407,
						["isDaily"] = true,
						["coord"] = { 39.8, 82.0, TANAAN_JUNGLE },	-- **Coords unconfirmed, relied on wowhead**
					}),
					n(92517, {	-- Krell the Serene
						["questID"] = 38605,
						["isDaily"] = true,
						["coord"] = { 52.0, 83.9, TANAAN_JUNGLE },
						["g"] = {
							i(127418),	-- Soothing Incense Brazier
						},
					}),
					n(93279, {	-- Kris'kar the Unredeemed
						["questID"] = 38825,
						["isDaily"] = true,
						["coords"] = {
							{ 39.5, 68.1, TANAAN_JUNGLE },	-- Kris'kar the Unredeemed
							{ 42.4, 68.7, TANAAN_JUNGLE },	-- Cave Entrance
						},
						["g"] = {
							i(127653),	-- Wingblade of Reckoning
						},
					}),
					n(90438, {	-- Lady Oran
						["questID"] = 38029,
						["isDaily"] = true,
						["coord"] = { 25.6, 76.6, TANAAN_JUNGLE },	-- **Coords unconfirmed, relied on wowhead**
						["g"] = {
							i(127316),	-- Oran's Cuffs of Malice
						},
					}),
					n(96240, {	-- Lok'goron Hashslinger
						["coord"] = { 40.4, 45.8, TANAAN_JUNGLE },
						["g"] = {
							i(128501),	-- Recipe: Fel Eggs and Ham (RECIPE!)
						},
					}),
					n(93002, {	-- Magwia
						["questID"] = 38726,
						["isDaily"] = true,
						["coord"] = { 52.1, 65.1, TANAAN_JUNGLE },
						["g"] = {
							i(127332),	-- Riverbeast Molar Club
						},
					}),
					n(90442, {	-- Mistress Thavra
						["questID"] = 38032,
						["isDaily"] = true,
						["coord"] = { 26.0, 79.4, TANAAN_JUNGLE },	-- **Coords unconfirmed, relied on wowhead**
						["g"] = {
							i(127300),	-- Shivan Shoulders of Scorn
						},
					}),
					n(92411, {	-- Overlord Ma'gruth
						["questID"] = 38580,
						["isDaily"] = true,
						["coord"] = { 53.0, 19.6, TANAAN_JUNGLE },	-- **Coords unconfirmed, relied on wowhead**
						["g"] = {
							i(127320),	-- Mo'gruth's Discarded Parade Helm
						},
					}),
					n(92274, {	-- Painmistress Selora
						["questID"] = 38557,
						["isDaily"] = true,
						["coord"] = { 53.6, 21.6, TANAAN_JUNGLE },	-- **Coords unconfirmed, relied on wowhead**
						["g"] = {
							i(127297),	-- Selora's Crown of Thorns
						},
					}),
					n(91374, {	-- Podlord Wakkawam
						["questID"] = 38282,
						["isDaily"] = true,
						["coords"] = {
							{ 16.8, 48.4, TANAAN_JUNGLE },
							{ 16.8, 49.6, TANAAN_JUNGLE },
						},
						["g"] = {
							i(127336),	-- Rod of the One True Podlord
						},
					}),
					n(91009, {	-- Putre'thar
						["questID"] = 38457,
						["isDaily"] = true,
						["coords"] = {	-- **Coords unconfirmed, relied on wowhead**
							{ 57.0, 23.0, TANAAN_JUNGLE },
							{ 57.6, 23.2, TANAAN_JUNGLE },
						},
						["g"] = {
							i(127657),	-- Encroaching Void
						},
					}),
					n(90782, {	-- Rasthe
						["questID"] = 38034,
						["isDaily"] = true,
						["coord"] = { 17.4, 42.7, TANAAN_JUNGLE },
						["g"] = {
							i(127661),	-- Fang of Rasthe
						},
					}),
					n(92197, {	-- Relgor
						["questID"] = 38496,
						["isDaily"] = true,
						["coord"] = { 26.3, 54.3, TANAAN_JUNGLE },
						["g"] = {
							i(127335),	-- Relgor's Master Glaive
						},
					}),
					n(91227, {	-- Remnant of the Blood Moon
						["questID"] = 39159,
						["isDaily"] = true,
						["description"] = "Drain the Blood Moon to 0% health with Drained Blood Crystals to spawn Remnant of the Blood Moon.",
						["coord"] = { 22.2, 50.6, TANAAN_JUNGLE },
						["g"] = {
							i(127666),	-- Vial of Red Goo (TOY!)
						},
					}),
					n(92817, {	-- Rendarr <Warshaman of the Blackfang>
						["description"] = "\nPurchase a Major Blackfang Challenge Totem from Z'tenga the Walker at |cFFFFFFFF55.2, 74.8|r.  Use the totem in the arena at |cFFFFFFFF54.2, 80.8|r to summon Rendarr.\n\n",
						["questID"] = 39400,
						["isDaily"] = true,
						["coord"] = { 54.2, 80.8, TANAAN_JUNGLE },
					}),
					n(92627, {	-- Rendrak
						["description"] = "Collect 10x Smelly Musk Gland from the Direwing Predators (Bats) in Zorammarsh. Once you have all 10, combine them to lure Rendrak. If you leave Zorammarsh, the Smelly Musk Glands will vanish from your bags.",
						["questID"] = 38631,
						["isDaily"] = true,
						["coords"] = {
							{ 37.2, 68.6, TANAAN_JUNGLE },
							{ 42.4, 77.6, TANAAN_JUNGLE },
						},
						["g"] = {
							i(127356),	-- Musky Bat Fur Cloak
						},
					}),
					n(90885, {	-- Rogond the Tracker
						["questID"] = 38263,
						["isDaily"] = true,
						["coord"] = { 20.4, 49.5, TANAAN_JUNGLE },
						["g"] = {
							i(127314),	-- Rogond's Tracking Shoulderguards
						},
					}),
					n(94472, {	-- Savage Whale Shark
						["questID"] = 36153,
						["isDaily"] = true,
						["coord"] = { 38.0, 30.0, TANAAN_JUNGLE },
						["g"] = {
							i(128231, {	-- Equipment Blueprint: Trained Shark Tank
								["questID"] = 39355,	-- Equipment Blueprint: Trained Shark Tank
							}),
						},
					}),
					n(90024, {	-- Sergeant Mor'grak
						["questID"] = 37953,
						["isDaily"] = true,
						["coords"] = {	-- **Coords unconfirmed, relied on wowhead**
							{ 41.6, 37.6, TANAAN_JUNGLE },
							{ 42.8, 36.6, TANAAN_JUNGLE },
						},
						["g"] = {
							i(127318),	-- Iron Cleated Warboots
						},
					}),
					n(93236, {	-- Shadowthrash
						["questID"] = 38812,
						["isDaily"] = true,
						["coord"] = { 49.8, 61.3, TANAAN_JUNGLE },
						["g"] = {
							i(127665),	-- Warpscaled Wristwraps
						},
					}),
					n(98285, {	-- Smashum Grabb
						["questID"] = 40104,
						["isDaily"] = true,
						["coord"] = { 88.2, 55.4, TANAAN_JUNGLE },	-- **Coords unconfirmed, relied on wowhead**
						["g"] = {
							i(108634),	-- Crashin' Thrashin' Mortar Controller (TOY!)
						},
					}),
					n(92495, {	-- Soulslicer
						["questID"] = 38600,
						["isDaily"] = true,
						["coord"] = { 62.6, 72.2, TANAAN_JUNGLE },	-- **Coords unconfirmed, relied on wowhead**
						["g"] = {
							i(127315),	-- Glowing Felskull Belt
						},
					}),
					n(92887, {	-- Steelsnout
						["questID"] = 38700,
						["isDaily"] = true,
						["coord"] = { 65.6, 36.7, TANAAN_JUNGLE },
						["g"] = {
							i(127357),	-- Steelsnout's Steely Hide
						},
					}),
					n(92606, {	-- Sylissa
						["questID"] = 38628,
						["isDaily"] = true,
						["coord"] = { 41.0, 78.7, TANAAN_JUNGLE },
						["g"] = {
							i(127311),	--  Serpentine Gloves
						},
					}),
					n(93001, {	-- Szirek the Twisted
						["description"] = "Capture Strongpoint (East) to make him spawn.",
						["questID"] = 38752,
						["isDaily"] = true,
						["coord"] = { 16.2, 56.3, TANAAN_JUNGLE },
						["g"] = {
							i(127296),	-- Twisted Taboo Handwraps
						},
					}),
					n(95044, {	-- Terrorfist <Son of Kormrok>
						["questID"] = 39288,
						["isDaily"] = true,
						["coords"] = {	-- **Coords unconfirmed, relied on wowhead**
							{ 13.8, 60.2, TANAAN_JUNGLE },
							{ 15.6, 63.4, TANAAN_JUNGLE },
						},
						["g"] = {
							i(128025, {	-- Rattling Iron Cage
								i(116669),	-- Armored Razorback (MOUNT!)
								i(116658),	-- Tundra Icehoof (MOUNT!)
								i(116780),	-- Warsong Direfang (MOUNT!)
							}),
							i(128315),	-- Medallion of thee Legion
						},
					}),
					n(92465, {	-- The Blackfang
						["questID"] = 38597,
						["isDaily"] = true,
						["coord"] = { 49.6, 74.0, TANAAN_JUNGLE },	-- **Coords unconfirmed, relied on wowhead**
						["g"] = {
							i(127330),	-- The Black Fang
						},
					}),
					n(92694, {	-- The Goreclaw
						["questID"] = 38654,
						["isDaily"] = true,
						["coord"] = { 34.6, 72.6, TANAAN_JUNGLE },	-- **Coords unconfirmed, relied on wowhead**
						["g"] = {
							i(127305),	-- Frayed Hunting Cowl
						},
					}),
					n(92977, {	-- The Iron Houndmaster
						["description"] = "Capture Strongpoint (West) to make him spawn.",
						["crs"] = { 92969 },	-- Strongpoint
						["questID"] = 38751,
						["isDaily"] = true,
						["coord"] = { 13.1, 57.0, TANAAN_JUNGLE },
						["g"] = {
							i(127321),	-- Iron Houndmaster's Pauldrons
						},
					}),
					n(92636, {	-- The Night Haunter
						["description"] = "Gain 10 stacks of Marked by the Night Haunter by either finding The Night Haunter or clicking Mutilated Corpses.",
						["questID"] = 38632,
						["isDaily"] = true,
						["coords"] = {	-- **Some coords unconfirmed, probably more spawn points than listed as well**
							{ 42.4, 77.5, TANAAN_JUNGLE },	-- Confirmed
							{ 40.5, 72.9, TANAAN_JUNGLE },	-- Confirmed
							{ 38.2, 72.1, TANAAN_JUNGLE },	-- Confirmed
							{ 37.5, 67.5, TANAAN_JUNGLE },	-- Confirmed
							{ 38.8, 75.1, TANAAN_JUNGLE },	-- Confirmed
							{ 42.8, 74.6, TANAAN_JUNGLE },	-- Confirmed
							{ 41.2, 68.9, TANAAN_JUNGLE },	-- Confirmed
							{ 44.0, 67.6, TANAAN_JUNGLE },
							{ 38.0, 79.0, TANAAN_JUNGLE },
							{ 44.0, 78.2, TANAAN_JUNGLE },
						},
						["g"] = {
							i(127355),	-- Haunter's Kurzed Cloak
						},
					}),
					n(91243, {	-- Tho'gar Gorefist
						["questID"] = 38747,
						["isDaily"] = true,
						["coord"] = { 13.6, 56.8, TANAAN_JUNGLE },	-- **Coords unconfirmed, relied on wowhead**
						["g"] = {
							i(127310),	-- Sabatons of Radiating Ire
						},
					}),
					n(92574, {	-- Thromma the Gutslicer
						["questID"] = 38620,
						["isDaily"] = true,
						["coord"] = { 34.0, 44.7, TANAAN_JUNGLE },
						["g"] = {
							i(127327),	-- Thromma's Gutslicer
						},
					}),
					n(92451, {	-- Varyx the Damned
						["questID"] = 37937,
						["isDaily"] = true,
						["coord"] = { 27.6, 32.7, TANAAN_JUNGLE },
						["g"] = {
							i(127351),	-- Varyx's Dark Oath Band
						},
					}),
					n(95054, {	-- Vengeance <Avatar of Velhari>
						["questID"] = 39290,
						["isDaily"] = true,
						["coord"] = { 32.6, 74.0, TANAAN_JUNGLE },	-- **Coords unconfirmed, relied on wowhead**
						["g"] = {
							i(128025, {	-- Rattling Iron Cage
								i(116669),	-- Armored Razorback (MOUNT!)
								i(116658),	-- Tundra Icehoof (MOUNT!)
								i(116780),	-- Warsong Direfang (MOUNT!)
							}),
							i(128315),	-- Medallion of thee Legion
						},
					}),
					n(92408, {	-- Xanzith the Everlasting
						["questID"] = 38579,
						["isDaily"] = true,
						["coord"] = { 60.2, 21.6, TANAAN_JUNGLE },	-- **Coords unconfirmed, relied on wowhead**
						["g"] = {
							i(127658),	-- Eye of the Beholder
							i(128232, {	-- Equipment Blueprint: High Intensity Fog Lights
								["questID"] = 39356,	-- Equipment Blueprint: High Intensity Fog Lights
							}),
						},
					}),
					n(96235, {	-- Xemirkol
						["achievementID"] = 10334,
						["description"] = "Attempt to teleport to him by using Master Hunter's Seeking Crystal. Do not get knocked off of his platform.",
						["coord"] = { 69.6, 38.2, TANAAN_JUNGLE },	-- **Coords unconfirmed, relied on wowhead**
						["g"] = {
							title(59),	-- Predator
						},
					}),
					n(91087, {	-- Zeter'el
						["questID"] = 38207,
						["isDaily"] = true,
						["coord"] = { 48.4, 28.6, TANAAN_JUNGLE },
						["g"] = {
							i(127340),	-- Felfire Lit Greatsword
						},
					}),
					n(90122, {	-- Zoug the Heavy
						["questID"] = 39045,
						["isDaily"] = true,
						["coord"] = { 37.0, 32.84, TANAAN_JUNGLE },
						["g"] = {
							i(127308),	-- Zoug's Lifting Belt
							i(128252, {	-- Equipment Blueprint: True Iron Rudder
								["questID"] = 39360,	-- Equipment Blueprint: True Iron Rudder
							}),
						},
					}),
				}),
				n(TREASURES, {
					o(241692, {	-- Axe of the Weeping Wolf
						["questID"] = 38754,
						["coord"] = { 14.9, 54.4, TANAAN_JUNGLE },
						["g"] = {
							i(127325),	-- Axe of the Weepiong Wolf
						},
					}),
					o(243690, {	-- Bejeweled Egg
						["questID"] = 39469,
						["coord"] = { 65.9, 85.0, TANAAN_JUNGLE },
					}),
					o(241449, {	-- Blackfang Island Cache
						["questID"] = 38601,
						["coord"] = { 61.1, 75.8, TANAAN_JUNGLE },
						["g"] = {
							currency(824),	-- Garrison Resources
						},
					}),
					o(241835, {	-- Bleeding Hollow Mushroom Stash
						["questID"] = 38809,
						["coords"] = {
							{ 49.9, 76.7, TANAAN_JUNGLE },	-- Treasure Location
							{ 44.6, 77.5, TANAAN_JUNGLE },	-- Cave Entrance
						},
						["g"] = {
							i(128223),	-- Bottomless Stygana Mushroom Brew (TOY!)
						},
					}),
					o(241560, {	-- Bleeding Hollow Warchest
						["questID"] = 38678,
						["coord"] = { 22.0, 47.9, TANAAN_JUNGLE },
						["g"] = {
							currency(824),	-- Garrison Resources
						},
					}),
					o(241742, {	-- Book of Zyzzix
						["questID"] = 38771,
						["coord"] = { 46.8, 36.6, TANAAN_JUNGLE },
						["g"] = {
							i(127347),	-- Resonating Tome of Zyzzix
						},
					}),
					o(241664, {	-- "Borrowed" Enchanted Spyglass
						["questID"] = 38735,
						["coord"] = { 25.3, 50.3, TANAAN_JUNGLE },
						["description"] = "At the top of the watchtower.",
						["g"] = {
							i(128222),	-- Smokeglass Lens Spyglass
						},
					}),
					o(241775, {	-- Brazier of Awakening
						["questID"] = 38788,
						["coord"] = { 37.8, 80.8, TANAAN_JUNGLE },
						["g"] = {
							i(127770),	-- Brazier of Awakening
						},
					}),
					o(241563, {	-- Censer of Torment
						["questID"] = 38682,
						["coord"] = { 62.6, 20.6, TANAAN_JUNGLE },
						["g"] = {
							i(127401),	-- Tormented Skull
						},
					}),
					o(241605, {	-- Crystalized Essence of Elements
						["questID"] = 38705,
						["coord"] = { 47.9, 70.4, TANAAN_JUNGLE },
						["g"] = {
							i(127329),	-- Element-Infused Knuckles
						},
					}),
					o(241450, {	-- Crystallized Fel Spike
						["questID"] = 38602,
						["coord"] = { 62.0, 70.8, TANAAN_JUNGLE },
						["g"] = {
							i(128217),	-- Fel Shard
						},
					}),
					o(241848, {	-- Dazzling Rod
						["questID"] = 38822,
						["coord"] = { 42.8, 35.3, TANAAN_JUNGLE },
						["g"] = {
							i(127859),	-- Dazzling Rod (TOY!)
						},
					}),
					o(243693, {	-- Dead Man's Chest
						["questID"] = 39470,
						["coord"] = { 55.0, 90.4, TANAAN_JUNGLE },
						["g"] = {
							currency(824),	-- Garrison Resources
						},
					}),
					o(241600, {	-- Discarded Helm
						["questID"] = 38702,
						["coords"] = {
							{ 49.9, 81.2, TANAAN_JUNGLE },
							{ 51.3, 79.5, TANAAN_JUNGLE },	-- Cave Entrance
						},
						["g"] = {
							i(127312),	-- Fallen Adventurer's Helm
						},
					}),
					o(241745, {	-- Fel-Drenched Satchel
						["questID"] = 38773,
						["coord"] = { 46.9, 44.3, TANAAN_JUNGLE },
						["g"] = {
							i(128218),	-- Fel-Proof Goggles
						},
					}),
					o(242649, {	-- Fel-Tainted Apexis Formation
						["questID"] = 39075,
						["coord"] = { 51.6, 32.6, TANAAN_JUNGLE },
						["g"] = {
							currency(823),	-- Apexis Crystal x500
						},
					}),
					o(241533, {	-- Forgotten Champion's Blade
						["questID"] = 38657,
						["coord"] = { 41.5, 73.2, TANAAN_JUNGLE },
						["g"] = {
							i(127339),	-- Forgotten Champion's Blade
						},
					}),
					o(241602, {	-- Forgotten Iron Horde Supplies
						["questID"] = 38704,
						["coord"] = { 69.8, 55.9, TANAAN_JUNGLE },
						["g"] = {
							currency(824),	-- Garrison Resources
						},
					}),
					o(241433, {	-- Forgotten Sack
						["questID"] = 38591,
						["coord"] = { 56.9, 65.1, TANAAN_JUNGLE },
						["g"] = {
							i(127408),	-- Adventuring Journal
						},
					}),
					o(241671, {	-- Forgotten Shard of the Cipher
						["questID"] = 38740,
						["coord"] = { 63.3, 28.0, TANAAN_JUNGLE },	-- **Coords unconfirmed, relied on wowhead**
						["sourceQuests"] = {
							39394,	-- The Cipher of Damnation [A]
							38463,	-- The Cipher of Damnation [H]
						},
						["g"] = {
							i(128309),	-- Shard of Cyrukh (PET!)
						},
					}),
					o(241712, {	-- Ironbeard's Treasure
						["questID"] = 38758,
						["coord"] = { 35.9, 78.6, TANAAN_JUNGLE },
						["g"] = {
							currency(824),	-- Garrison Resources
						},
					}),
					o(240580, {	-- Jewel of Hellfire
						["questID"] = 38334,
						["coord"] = { 28.7, 23.5, TANAAN_JUNGLE },
						["g"] = {
							i(127668),	-- Jewel of Hellfire (TOY!)
						},
					}),
					o(241561, {	-- Jewel of the Fallen Star
						["questID"] = 38679,
						["coord"] = { 58.5, 25.3, TANAAN_JUNGLE },
					}),
					o(241657, {	-- Jeweled Arakkoa Effigy
						["questID"] = 38732,
						["coord"] = { 31.4, 31.1, TANAAN_JUNGLE },
						["g"] = {
							i(127413, {	-- Jeweled Arakkoa Effigy
								["g"] = {
									i(127415),	-- Eye of Anzu
									i(127414),	-- Eye of Rukhmar
									i(127416),	-- Eye of Sethe
								},
							}),
						},
					}),
					o(241434, {	-- Lodged Hunting Spear
						["questID"] = 38593,
						["coord"] = { 54.8, 69.31, TANAAN_JUNGLE },
						["g"] = {
							i(127334),	-- Ravager Hunting Spear
						},
					}),
					o(241565, {	-- Looted Bleeding Hollow Treasure
						["questID"] = 38683,
						["coord"] = { 26.7, 44.3, TANAAN_JUNGLE },	-- **Coords unconfirmed, relied on wowhead**
						["sourceQuests"] = {
							38560,	-- Garrison Campaign: The Bane of the Bleeding Hollow [A]
							38453,	-- Garrison Campaign: The Bane of the Bleeding Hollow [H]
						},
						["g"] = {
							i(127709),	-- Throbbing Blood Orb (TOY!)
						},
					}),
					o(241673, {	-- Looted Bleeding Hollow Treasure
						["questID"] = 38741,
						["coord"] = { 26.5, 63.0, TANAAN_JUNGLE },
						["g"] = {
							currency(823),	-- Apexis Crystal x209
						},
					}),
					o(241841, {	-- Looted Mystical Staff
						["questID"] = 38814,
						["coords"] = {
							{ 48.5, 75.2, TANAAN_JUNGLE },	-- Looted Mystical Staff
							{ 44.6, 77.5, TANAAN_JUNGLE },	-- Cave Entrance
						},
						["g"] = {
							i(127337),	-- Emanating Staff of Shadow
						},
					}),
					o(241666, {	-- Mysterious Corrupted Obelisk
						["questID"] = 38739,
						["coord"] = { 46.3, 72.8, TANAAN_JUNGLE },
						["g"] = {
							i(128320),	-- Corrupted Primal Obelisk
						},
					}),
					o(241656, {	-- Overgrown Relic
						["questID"] = 38731,
						["coord"] = { 50.8, 64.9, TANAAN_JUNGLE },
						["g"] = {
							i(127412),	-- Luminous Relic Ring
						}
					}),
					o(241524, {	-- Pale Removal Equipment
						["questID"] = 38640,
						["coord"] = { 37.1, 46.2, TANAAN_JUNGLE },
						["g"] = {
							currency(824),	-- Garrison Resources
						},
					}),
					o(242249, {	-- Partially Mined Apexis Crystal
						["questID"] = 38863,
						["coord"] = { 28.9, 34.6, TANAAN_JUNGLE },
						["g"] = {
							currency(823),	-- Apexis Crystal x150
						},
					}),
					o(241504, {	-- Polished Crystal
						["questID"] = 38629,
						["coord"] = { 30.5, 71.9, TANAAN_JUNGLE },
						["g"] = {
							i(127389),	-- Polished Crystal
							i(127390, {	-- Polished Crystal
								["requireSkill"] = JEWELCRAFTING,
							}),
						},
					}),
					o(241566, {	-- Rune Etched Femur
						["questID"] = 38686,
						["coord"] = { 51.7, 24.3, TANAAN_JUNGLE },
						["g"] = {
							i(127341),	-- Rune-Etched Femur
						},
					}),
					o(241760, {	-- Sacrificial Blade
						["questID"] = 38776,
						["coord"] = { 46.8, 42.1, TANAAN_JUNGLE },
						["g"] = {
							i(127328),	-- Feltwisted Sacrificial Blade
						},
					}),
					o(241601, {	-- Scout's Belongings
						["questID"] = 38703,
						["coord"] = { 49.9, 79.6, TANAAN_JUNGLE },
						["g"] = {
							i(127354),	-- Scout's Spy Cloak
						},
					}),
					o(241674, {	-- Skull of the Mad Chief
						["questID"] = 38742,
						["coord"] = { 34.6, 34.6, TANAAN_JUNGLE },
						["g"] = {
							i(127669),	-- Skull of the Mad Chief (TOY!)
						},
					}),
					o(241521, {	-- Snake Charmer's Flute
						["questID"] = 38638,
						["coord"] = { 40.6, 79.8, TANAAN_JUNGLE },
						["g"] = {
							i(127333),	-- Ogra'mal Snake Charming Flute
						},
					}),
					o(241699, {	-- Spoils of War
						["questID"] = 38755,
						["coord"] = { 17.4, 57.0, TANAAN_JUNGLE },
						["g"] = {
							currency(824),	-- Garrison Resources
						},
					}),
					o(241764, {	-- Stashed Bleeding Hollow Loot
						["questID"] = 38779,
						["coord"] = { 73.6, 43.3, TANAAN_JUNGLE },
					}),
					o(241714, {	-- Stashed Iron Sea Booty
						["questID"] = 38760,
						["coord"] = { 33.9, 78.1, TANAAN_JUNGLE },
						["g"] = {
							currency(824),	-- Garrison Resources
						},
					}),
					o(241715, {	-- Stashed Iron Sea Booty
						["questID"] = 38761,
						["coord"] = { 35.0, 77.5, TANAAN_JUNGLE },
						["g"] = {
							currency(824),	-- Garrison Resources
						},
					}),
					o(241716, {	-- Stashed Iron Sea Booty
						["questID"] = 38762,
						["coord"] = { 34.5, 78.3, TANAAN_JUNGLE },
						["g"] = {
							currency(824),	-- Garrison Resources
						},
					}),
					o(240543, {	-- Stolen Captain's Chest
						["questID"] = 38283,
						["coord"] = { 17.0, 52.9, TANAAN_JUNGLE },
						["g"] = {
							i(128219),	-- Fel-Smoked Ham
						},
					}),
					o(241599, {	-- Strange Fruit
						["questID"] = 38701,
						["description"] = "Click on Loose Soil and throw it into the tree to grab the strange fruit.",
						["coord"] = { 64.7, 42.8, TANAAN_JUNGLE },
						["g"] = {
							i(127396,{	-- Strange Green Fruit
								["description"] = "After 14 days, the fruit will ripen into the toy.",
								["g"] = {
									i(127395, {	-- Ripened Strange Fruit
										i(127394),	-- Podling Camouflage (TOY!)
									}),
								},
							}),
						},
					}),
					o(240003, {	-- Strange Sapphire
						["questID"] = 37956,
						["coord"] = { 36.4, 43.5, TANAAN_JUNGLE },
						["g"] = {
							i(127397),	-- Splendid Skettis Sapphire
						},
					}),
					o(240577, {	-- The Blade of Kra'nak
						["questID"] = 38320,
						["coord"] = { 19.2, 40.9, TANAAN_JUNGLE },
						["g"] = {
							i(127338),	-- Guardian Swiftblade of Kra'nak
						},
					}),
					o(241847, {	-- The Commander's Shield
						["questID"] = 38821,
						["coord"] = { 43.1, 38.3, TANAAN_JUNGLE },
						["g"] = {
							i(127348),	-- Commander's Citadel Shield
						},
					}),
					o(241713, {	-- The Eye of Grannok
						["questID"] = 38757,
						["coord"] = { 16.0, 59.4, TANAAN_JUNGLE },
						["g"] = {
							i(128220),	-- Grannok's Lidless Eye
						},
					}),
					o(241522, {	-- The Perfect Blossom
						["questID"] = 38639,
						["coord"] = { 40.8, 75.6, TANAAN_JUNGLE },
						["description"] = "Eat |cFFFFD700Mysterious Fruit|r until you get the |cFFFFD700Pollen Protection|r buff.",
						["g"] = {
							i(127766),	-- The Perfect Blossom (TOY!)
						},
					}),
					o(240855, {	-- Tome of Secrets
						["questID"] = 38426,
						["coord"] = { 32.4, 70.4, TANAAN_JUNGLE },
						["g"] = {
							i(127670),	-- Accursed Tome of the Sargerei (TOY!)
						},
					}),
					o(240289, {	-- Weathered Axe
						["questID"] = 38208,
						["coord"] = { 15.9, 49.7, TANAAN_JUNGLE },
						["g"] = {
							i(127324),	-- Weathered Memento Axe
						},
					}),
				}),
				n(VENDORS, {
					n(95424, {	-- Dawn-Seeker Krisek <Order of the Awakened>
						["coords"] = {
							{ 60.4, 46.6, TANAAN_JUNGLE },	-- Horde accessible
							{ 57.8, 59.4, TANAAN_JUNGLE },	-- Alliance accessible
						},
						["g"] = bubbleDownClassicRep(FACTION_ORDER_OF_THE_AWAKENED, {
							{		-- Neutral
								-- currency(1191, {	-- Valor
								un(REMOVED_FROM_GAME, i(127785)),	-- Crystallized Fel
								-- }),
							}, {	-- Friendly
								i(123974, {	-- Reins of the Corrupted Dreadwing (MOUNT!)
									["cost"] = { { "c", 823, 150000 }, },	-- 150,000x Apexis Crystal
								}),
							}, {	-- Honored
								i(128441, {	-- Contract: Solar Priest Vayx
									["cost"] = { { "c", 823, 1000 }, },	-- 1,000x Apexis Crystal
									["g"] = {
										follower(582),	-- Solar Priest Vayx
									},
								}),
								i(128502, {	-- Hunter's Seeking Crystal
									["cost"] = 10000000,	-- 1,000g
								}),
							}, {	-- Revered
								i(128503, {	-- Master Hunter's Seeking Crystal
									["cost"] = {
										{ "g", 50000000 },	-- 5,000g
										{ "i", 128502, 1 },	-- Hunter's Seeking Crystal
									},
								}),
								i(122283, {	-- Rukhmar's Sacred Memory (TOY!)
									["cost"] = { { "c", 823, 50000 }, },	-- 50,000x Apexis Crystal
								}),
							}, {	-- Exalted
								i(128478, {	-- Blazing Firehawk (PET!)
									["cost"] = { { "c", 823, 2000 }, },	-- 2,000x Apexis Crystal
								}),
								i(128450),	-- Order of the Awakened Tabard
								i(128487, {	-- Ship: The Awakener
									["races"] = ALLIANCE_ONLY,
								}),
								i(128488, {	-- Ship: The Awakener
									["races"] = HORDE_ONLY,
								}),
							},
						}),
					}),
					n(96130, {	-- Ravenspeaker Thelnaas <Order of the Awakened>
						["coords"] = {
							{ 60.4, 46.6, TANAAN_JUNGLE },	-- Horde accessible
							{ 57.8, 59.4, TANAAN_JUNGLE },	-- Alliance accessible
						},
						["g"] = {
							i(124562, {	-- Baleful Armament
								["cost"] = { { "c", 823, 10000 }, },	-- 10,000x Apexis Crystal
								["sym"] = { { "fill" } },
							}),
							i(124550, {	-- Baleful Bracers
								["cost"] = { { "c", 823, 5000 }, },		-- 5,000x Apexis Crystal
								["sym"] = { { "fill" } },
							}),
							i(124559, {	-- Baleful Choker
								["cost"] = { { "c", 823, 5000 }, },		-- 5,000x Apexis Crystal
								["sym"] = { { "fill" } },
							}),
							i(124560, {	-- Baleful Cloak
								["cost"] = { { "c", 823, 5000 }, },		-- 5,000x Apexis Crystal
								["sym"] = { { "fill" } },
							}),
							i(124553, {	-- Baleful Gauntlets
								["cost"] = { { "c", 823, 5000 }, },		-- 5,000x Apexis Crystal
								["sym"] = { { "fill" } },
							}),
							i(124557, {	-- Baleful Girdle
								["cost"] = { { "c", 823, 5000 }, },		-- 5,000x Apexis Crystal
								["sym"] = { { "fill" } },
							}),
							i(124554, {	-- Baleful Hood
								["cost"] = { { "c", 823, 5000 }, },		-- 5,000x Apexis Crystal
								["sym"] = { { "fill" } },
							}),
							i(124555, {	-- Baleful Leggings
								["cost"] = { { "c", 823, 5000 }, },		-- 5,000x Apexis Crystal
								["sym"] = { { "fill" } },
							}),
							i(124558, {	-- Baleful Ring
								["cost"] = { { "c", 823, 5000 }, },		-- 5,000x Apexis Crystal
								["sym"] = { { "fill" } },
							}),
							i(124556, {	-- Baleful Spaulders
								["cost"] = { { "c", 823, 5000 }, },		-- 5,000x Apexis Crystal
								["sym"] = { { "fill" } },
							}),
							i(124552, {	-- Baleful Treads
								["cost"] = { { "c", 823, 5000 }, },		-- 5,000x Apexis Crystal
								["sym"] = { { "fill" } },
							}),
							i(124561, {	-- Baleful Trinket
								["cost"] = { { "c", 823, 5000 }, },		-- 5,000x Apexis Crystal
								["sym"] = { { "fill" } },
							}),
							i(124551, {	-- Baleful Tunic
								["cost"] = { { "c", 823, 5000 }, },		-- 5,000x Apexis Crystal
								["sym"] = { { "fill" } },
							}),
							i(128225, {	-- Empowered Apexis Fragment
								["cost"] = { { "c", 823, 20000 }, },	-- 20,000x Apexis Crystal
							}),
						},
					}),
					n(96014, {	-- Shadow Hunter Denjai <Vol'jin's Headhunters>
						["coord"] = { 61.6, 45.6, TANAAN_JUNGLE },
						["races"] = HORDE_ONLY,
						["g"] = bubbleDownClassicRep(FACTION_VOLJINS_HEADHUNTERS, {
							{		-- Neutral
							}, {	-- Friendly
								i(127269, {	-- Ship Blueprint: Battleship
									["cost"] = 5500000,	-- 550g
									["sourceQuest"] = 39604,	-- I Sunk Your Battleship
								}),
								i(128451),	-- Vol'jin's Headhunters Battle Standard
							}, {	-- Honored
								i(128440, {	-- Contract: Dowser Bigspark
									["cost"] = 6000000,	-- 600g
									["g"] = {
										follower(581),	-- Dowser Goodwell
									},
								}),
								i(128251, {	-- Equipment Blueprint: Tuskarr Fishing Net
									["questID"] = 39359,	-- Equipment Blueprint: Tuskarr Fishing Net
								}),
								i(113212, {	-- Treasure Map: Tanaan Jungle
									["questID"] = 39463,
									["cost"] = 6000000,	-- 600g
								}),
							}, {	-- Revered
								i(128490, {	-- Blueprint: Oil Rig
									["questID"] = 39561,
									["cost"] = 12000000,	-- 1,200g
								}),
								iensemble(128472, {	-- Ensemble: Battlegear of the Frostwolves
									["classes"] = LEATHER_CLASSES,
									["cost"] = 5000000,	-- 500g
								}),
								i(128489, {	-- Equipment Blueprint: Unsinkable
									["questID"] = 39358,	-- Equipment Blueprint: Unsinkable
									["cost"] = 9000000,	-- 900g
								}),
								i(128471),	-- Frostwolf Grunt's Battlegear (TOY!)
								i(128294, {	-- Trade Agreement: Arakkoa Outcasts
									["questID"] = 37485,
									["cost"] = 25000000,	-- 2,500g
								}),
							}, {	-- Exalted
								i(128526, {	-- Deathtusk Felboar (H) (MOUNT!)
									["cost"] = 25000000,	-- 2,500g
								}),
								i(128475, {	-- Empowered Augment Rune
									["cost"] = 60000000,	-- 6,000g
								}),
							},
						}),
					}),
					n(95650, {	-- Skoller
						["description"] = "Talk to him and you will receive the toy.",
						["coord"] = { 55.2, 75.0, TANAAN_JUNGLE },
						["g"] = {
							i(128328),	-- Skoller's Bag of Squirrel Treats (TOY!)
						},
					}),
					n(90974, {	-- Vindicator Krethos <Hand of the Prophet>
						["coord"] = { 58.4, 60.4, TANAAN_JUNGLE },
						["races"] = ALLIANCE_ONLY,
						["g"] = bubbleDownClassicRep(FACTION_HAND_OF_THE_PROPHET, {
							{		-- Neutral
							}, {	-- Friendly
								i(128452),	-- Hand of the Prophet Battle Standard
								i(128492, {	-- Ship Blueprint: Battleship
									["cost"] = 5500000,	-- 550g
									["sourceQuest"] = 39601,	-- I Sunk Your Battleship
								}),
							}, {	-- Honored
								i(128445, {	-- Contract: Dowser Bigspark
									["cost"] = 6000000,	-- 600g
									["g"] = {
										follower(581),	-- Dowser Bigspark
									},
								}),
								i(128491, {	-- Equipment Blueprint: Tuskarr Fishing Net
									["questID"] = 39359,	-- Equipment Blueprint: Tuskarr Fishing Net
								}),
								i(128474, {	-- Treasure Map: Tanaan Jungle
									["questID"] = 39463,
									["cost"] = 6000000,	-- 600g
								}),
							}, {	-- Revered
								i(128444, {	-- Blueprint: Oil Rig
									["questID"] = 39561,
									["cost"] = 12000000,	-- 1,200g
								}),
								iensemble(128473, {	-- Ensemble: Ceremonial Karabor Finery
									["classes"] = CLOTH_CLASSES,
									["cost"] = 5000000,	-- 500g
								}),
								i(128250, {	-- Equipment Blueprint: Unsinkable
									["questID"] = 39358,	-- Equipment Blueprint: Unsinkable
									["cost"] = 9000000,	-- 900g
								}),
								i(128462),	-- Karabor Councilor's Attire (TOY!)
								i(128294, {	-- Trade Agreement: Arakkoa Outcasts
									["questID"] = 37485,
									["cost"] = 25000000,	-- 2,500g
								}),
							}, {	-- Exalted
								i(128527, {	-- Deathtusk Felboar (A) (MOUNT!)
									["cost"] = 25000000,	-- 2,500g
								}),
								i(128482, {	-- Empowered Augment Rune
									["cost"] = 60000000,	-- 6,000g
								}),
							},
						}),
					}),
					n(92805, {	-- Z'tenga the Walker <Saberstalker Quartermaster>
						["coord"] = { 55.2, 74.8, TANAAN_JUNGLE },
						["g"] = bubbleDownClassicRep(FACTION_THE_SABERSTALKERS, {
							{		-- Neutral
								i(124094, {	-- Major Blackfang Challenge Totem
									["description"] = "\nUsed to summon Rendarr.\n\n",
								}),
								i(124093, {	-- Minor Blackfang Challenge Totem
									["description"] = "\nUsed to summon Akrrilo.\n\n",
								}),
								i(124095, {	-- Prime Blackfang Challenge Totem
									["description"] = "\nUsed to summon Eyepiercer.\n\n",
								}),
							}, {	-- Friendly
								i(128453),	-- Saberstalkers Battle Standard
							}, {	-- Honored
								i(128439, {	-- Contract: Pallas
									["cost"] = { { "i", 124099, 100 }, },	-- 100x Blackfang Claw
									["g"] = {
										follower(580),	-- Pallas
									},
								}),
								i(116671, {	-- Wild Goretusk (MOUNT!)
									["cost"] = { { "i", 124099, 1000 }, },	-- 1,000x Blackfang Claw
								}),
							}, {	-- Revered
								i(128446),	-- Saberstalker Teachings: Trailblazer
								i(128477, {	-- Savage Cub (PET!)
									["cost"] = { { "i", 124099, 1500 }, },	-- 1,500x Blackfang Claw
								}),
							}, {	-- Exalted
								i(128481, {	-- Bristling Hellboar (MOUNT!)
									["cost"] = { { "i", 124099, 5000 }, },	-- 5,000x Blackfang Claw
								}),
								i(128449),	-- Saberstalkers Tabard
							},
						}),
					}),
				}),
				n(ZONE_DROPS, {
					["sym"] = {{"select","itemID",
						128258,	-- Equipment Blueprint: Felsmoke Launchers
						128256,	-- Equipment Blueprint: Gyroscopic Internal Stabilizer
						128255,	-- Equipment Blueprint: Ice Cutter
						128252,	-- Equipment Blueprint: True Iron Rudder
						128232,	-- Equipment Blueprint: High Intensity Fog Lights
						128231,	-- Equipment Blueprint: Trained Shark Tank
						126950,	-- Equipment Blueprint: Bilge Pump
					}},
					["g"] = {
						i(128225),	-- Empowered Apexis Fragment
						i(124562, {	-- Baleful Armament
							i(124627),	-- Baleful Dagger - Rogue
							i(124628),	-- Baleful Greataxe - Rogue, Shaman, Monk, Demon Hunter
							i(124625),	-- Baleful Greatsword - Paladin, Warrior, Death Knight
							i(124629),	-- Baleful Polearm - Druid, Hunter, Monk
							i(124626),	-- Baleful Rifle - Hunter
							i(124631),	-- Baleful Scepter - Paladin, Druid, Priest, Shaman, Monk
							i(124630),	-- Baleful Spire - Mage, Druid, Priest, Shaman, Warlock, Monk
							i(124624),	-- Baleful Sword - Paladin, Warrior, Death Knight
						}),
						i(124554, {	-- Baleful Hood
							i(124579),	-- Felcast Hood
							i(124580),	-- Bladefang Hood
							i(124581),	-- Axeclaw Helm
							i(124582),	-- Felbane Greathelm
						}),
						i(124559, {	-- Baleful Choker
							i(124612),	-- Discordant Amulet
							i(124611),	-- Discordant Collar
							i(124609),	-- Embittered Locket
							i(124610),	-- Vexed Chain
							i(124607),	-- Vexed Necklace
							i(124608),	-- Vexed Pendant
						}),
						i(124556, {	-- Baleful Spaulders (normal kill)
							i(124587),	-- Felcast Mantle
							i(124588),	-- Bladefang Spaulders
							i(124589),	-- Axeclaw Spaulders
							i(124590),	-- Felbane Shoulderguard
						}),
						i(128348, {	-- Baleful Spaulders (first kill)
							["description"] = "|cfffd1818This token drops from your first Tanaan rare killed on any character.  If you played during WoD and discarded the item before the introduction of the wardrobe, or if you recently sold the token itself without opening it, you will need to collect the appearance on a different character.\n\nYou CANNOT get these items from opening Baleful tokens purchased from the vendor.|r\n",
							["g"] = {
								i(128349),	-- Felcast Mantle (Warforged)
								i(128350),	-- Bladefang Spaulders (Warforged)
								i(128351),	-- Axeclaw Spaulders (Warforged)
								i(128352),	-- Felbane Shoulderguard (Warforged)
							},
						}),
						i(124560, {	-- Baleful Cloak
							i(124613),	-- Marshwater Cloak
							i(124616),	-- Marshwater Cloak
							i(124614),	-- Marshwater Mantle
							i(124615),	-- Shadowthrash Cloak
							i(124618),	-- Unfailing Cloak
							i(124617),	-- Unfailing Mantle
						}),
						i(124551, {	-- Baleful Tunic
							i(124570),	-- Felcast Robes
							i(124567),	-- Bladefang Chestguard
							i(124568),	-- Axeclaw Chestguard
							i(124569),	-- Felbane Breastplate
						}),
						i(124550, {	-- Baleful Bracers
							i(124563),	-- Felcast Bracers
							i(124564),	-- Bladefang Bracers
							i(124565),	-- Axeclaw Bracers
							i(124566),	-- Felbane Bracers
						}),
						i(124553, {	-- Baleful Gauntlets
							i(124575),	-- Felcast Gloves
							i(124576),	-- Bladefang Gauntlets
							i(124577),	-- Axeclaw Gauntlets
							i(124578),	-- Felbane Gauntlets
						}),
						i(124557, {	-- Baleful Girdle
							i(124591),	-- Felcast Cord
							i(124592),	-- Bladefang Belt
							i(124593),	-- Axeclaw Belt
							i(124594),	-- Felbane Girdle
						}),
						i(124555, {	-- Baleful Leggings
							i(124583),	-- Felcast Trousers
							i(124584),	-- Bladefang Legguards
							i(124585),	-- Axeclaw Legguards
							i(124586),	-- Felbane Legplates
						}),
						i(124552, {	-- Baleful Treads
							i(124571),	-- Felcast Sandles
							i(124572),	-- Bladefang Boots
							i(124573),	-- Axeclaw Boots
							i(124574),	-- Felbane Greaves
						}),
						i(124558, {	-- Baleful Ring
							i(124598),	-- Arduous Band
							i(124604),	-- Arduous Circle
							i(124596),	-- Arduous Hoop
							i(124601),	-- Arduous Ring
							i(124602),	-- Arduous Seal
							i(124595),	-- Arduous Signet
						}),
						i(124561, {	-- Baleful Trinket
							i(124621),	-- Ardent Seal
							i(124619),	-- Saberblade Emblem
							i(124622),	-- Saberblade Insignia
							i(124620),	-- Saberblade Talisman
							i(124623),	-- Spineshard Crest
						}),
					},
				}),
			},
		}),
	}),
});

root(ROOTS.HiddenQuestTriggers, {
	expansion(EXPANSION.WOD, bubbleDownSelf({ ["timeline"] = { ADDED_6_2_0 } }, {
		m(DRAENOR, {
			m(TANAAN_JUNGLE, {
				n(QUESTS, {
					q(38836),	-- Aktar's Post - Aktar's Post visited
					q(39306),	-- Call to Arms - chosen during "Bring the Reinforcements"
					-- q(39183),	-- FLAG - Immaculate Critical Strike Taladite - learning Immaculate Critical Strike Taladite at an Apexis Gemcutter
					-- q(39184),	-- FLAG - Immaculate Haste Taladite - learning Immaculate Haste Taladite at an Apexis Gemcutter
					-- q(39185),	-- FLAG - Immaculate Mastery Taladite - learning Immaculate Mastery Taladite at an Apexis Gemcutter
					q(39186),	-- FLAG - Immaculate Multistrike Taladite - learning Immaculate Multistrike Taladite at an Apexis Gemcutter
					-- q(39187),	-- FLAG - Immaculate Stamina Taladite - learning Immaculate Stamina Taladite at an Apexis Gemcutter
					q(37886),	-- Max-level Choice Tracker: Tanaan 6.2 - Ironhold (A)
					q(37946),	-- Max-level Choice Tracker: Tanaan 6.2 - Ironhold (H)
					q(38583),	-- Max-Level Choice Tracker: Tanaan 6.2 - Group - Throne of Kil'jaeden (A)
					q(38584),	-- Max-level Choice Tracker: Tanaan 6.2 - Group - Throne of Kil'jaeden (H)
					q(37939),	-- Max-level Choice Tracker: Tanaan 6.2 - Ruins of Kra'nak (A)
					q(38010),	-- Max-level Choice Tracker: Tanaan 6.2 - Ruins of Kra'nak (H)
					q(37967),	-- Max-level Choice Tracker: Tanaan 6.2 - Temple of Sha'naar (A)
					q(38021),	-- Max-level Choice Tracker: Tanaan 6.2 - Temple of Sha'naar (H)
					q(38438),	-- Max-level Choice Tracker: Tanaan 6.2 - The Fel Forge (A)
					q(38437),	-- Max-level Choice Tracker: Tanaan 6.2 - The Fel Forge (H)
					q(38039),	-- Max-level CHoice Tracker: Tanaan 6.2 - The Iron Front (A)
					q(38038),	-- Max-level Choice Tracker: Tanaan 6.2 - The Iron Front (H)
					q(38042),	-- Max-level Choice Tracker: Tanaan 6.2 - Zeth'Gol (A)
					q(38041),	-- Max-level Choice Tracker: Tanaan 6.2 - Zeth'Gol (H)
					q(39375, {["isDaily"]=true}),	-- Short-Supply Reward - Daily Rare/Treasure #1
					q(39376, {["isDaily"]=true}),	-- Short-Supply Reward - Daily Rare/Treasure #2
					q(39377, {["isDaily"]=true}),	-- Short-Supply Reward - Daily Rare/Treasure #3
					q(39378, {["isDaily"]=true}),	-- Short-Supply Reward - Daily Rare/Treasure #4
					q(39434),	-- Short-Supply Reward - triggers on the first rare kill (Baleful Spaulders itemID 128348)
					q(39416),	-- Skoller's Bag o' Squirrel Treats - triggers after talking to Skoller and getting his toy (Skoller's Bag of Squirrel Treats)
					q(37887),	-- Tanaan Garrison Max-level Choice Tracker: ANY CHOICE MADE (A)
					q(37892),	-- Tanaan Garrison Max-level Choice Tracker: ANY CHOICE MADE (H)
					q(37969),	-- Tanaan Jungle - Tracking Quest - Vol'mar Built - JMC
					q(38433),	-- Tanaan Jungle - Tracking Quest - Lion's Watch Built - JMC
					q(38234),	-- Tracking Event: Inscribed Ruin Found - triggers during quest "Get a Clue" (questID 38213), clue #3
					q(38236),	-- Tracking Event: Note Found - triggers during quest "Get a Clue" (questID 38213), clue #1
					q(38231),	-- Tracking Event: Shrine Found - triggers during quest "Get a Clue" (questID 38213), clue #2
					-- q(39564),	-- Vignette: Murktide Alpha - learning Saberstalker's Teachings: Trailblazer (automated)
				}),
			}),
		}),
	})),
	expansion(EXPANSION.LEGION, bubbleDownSelf({ ["timeline"] = { ADDED_7_0_3 } }, {
		m(DRAENOR, {
			m(TANAAN_JUNGLE, {
				n(QUESTS, {
					q(47285),	-- Triggers together with obtaining Equipment Blueprint: Tuskarr Fishing Net
				}),
			}),
		}),
	})),
});