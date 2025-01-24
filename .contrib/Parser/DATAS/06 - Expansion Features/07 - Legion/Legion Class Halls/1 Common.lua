-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------
root(ROOTS.ExpansionFeatures, expansion(EXPANSION.LEGION, {
	n(CLASS_HALL, {
		["icon"] = 1408997,
	}),
	n(CLASS_HALL, sharedData({
		["maps"] = CLASS_HALL_MAPS,
	},{
		n(ACHIEVEMENTS, {
			ach(11298, {	-- A Classy Outfit
				crit(5212, {	-- Class Hall Helm Earned
					["description"] = "Rewarded by a quest in your class's Order Hall campaign.",
					["sourceQuests"] = {
						44217,	-- Armor Fit For A Deathlord (Death Knight)
						44213,	-- You Will Be Prepared! (Demon Hunter)
						44232,	-- The Grove Provides (Druid)
						44233,	-- Walk This Way (Hunter)
						44240,	-- Orange is the New Purple (Mage)
						44249,	-- Inner Sanctuary (Monk)
						44250,	-- Champion of the Light (Paladin)
						44251,	-- Power Word: Armor (Priest)
						44252,	-- A Sheath For Every Blade (Rogue)
						44253,	-- A Vision of Triumph (Shaman)
						44254,	-- Gazing Into Oblivion (Warlock)
						44255,	-- Axe and You Shall Receive (Warrior)
					},
				}),
				-- #IF ANYCLASSIC
				crit(2, {	-- Class Hall Bracers Earned
					["description"] = "Recruit 6 Champions for your class's Order Hall.",
					["sourceQuests"] = {
						44246,	-- Champion: Rottgut (Death Knight)
						42776,	-- Two Worthies (Demon Hunter)
						42046,	-- A New Beginning (Druid)
						42414,	-- Champion: Addie Fizzlebog (Hunter)
						42520,	-- A Terrible Loss (Mage)
						41854,	-- Brick By Brick (Monk)
						43541,	-- United As One (Paladin)
						43381,	-- Champion: Mariella Ward (Priest)
						42680,	-- Deciphering the Letter (Rogue)
						41900,	-- A Promise of Earth (Shaman)
						41784,	-- Borrowed Time (Warlock)
						43090,	-- Ulduar's Oath (Warrior)
					},
				}),
				crit(30499, {	-- Class Hall Gloves Earned
					["description"] = "Reach Honored reputation with the Nightfallen.",
					["minReputation"] = { FACTION_THE_NIGHTFALLEN, HONORED },
				}),
				crit(4, {	-- Class Hall Leggings Earned
					["description"] = "Complete 8 Legion dungeons on any difficulty.",
				}),
				crit(5, {	-- Class Hall Chestpiece Earned
					["description"] = "Complete your class's Order Hall campaign.",
					["sourceQuests"] = {
						43686,	-- The Fourth Horseman (Death Knight)
						43186,	-- I Am the Slayer! (Demon Hunter)
						42055,	-- The Demi-God's Return (Druid)
						42659,	-- In Defense of Dalaran (Hunter)
						42734,	-- Into the Oculus (Mage)
						41087,	-- Storm Brew (Monk)
						43697,	-- Warriors of Light (Paladin)
						43402,	-- High Priest of Netherlight (Priest)
						37689,	-- The Imposter (Rogue)
						41888,	-- Allegiance of Flame (Shaman)
						41796,	-- Selecting a Sixth (Warlock)
						42974,	-- The Fate of Hodir (Warrior)
					},
				}),
				crit(6, {	-- Class Hall Boots Earned
					["description"] = "Reach Revered reputation with any 2 Broken Isles factions.",
				}),
				crit(44848, {	-- Class Hall Belt Earned
					["description"] = "Complete the Arsenal of Power achievement.",
				}),
				crit(8, {	-- Class Hall Shoulders Earned
					["description"] = "Reach Exalted reputation with the Nightfallen.",
					["minReputation"] = { FACTION_THE_NIGHTFALLEN, EXALTED },
				}),
				-- #ENDIF
			}),
			un(REMOVED_FROM_GAME, ach(10852)),		-- Artifact or Artifiction
			ach(11137, {	-- A Legendary Campaign
				["sym"] = {{ "achievement_criteria" }},
				["groups"] = {
					ach(11136),	-- An Epic Campaign
					ach(11135),	-- A Heroic Campaign
					ach(10994),	-- A Glorious Campaign
				},
			}),
			ach(11171),	-- Arsenal of Power
			ach(11222, {	-- Champions of Power
				ach(11221),	-- Champions Rise
				ach(11220),	-- Roster of Champions
			}),
			ach(11846, {	-- Champions of Legionfall (Broken Shore)
				crit(36604, {		-- Complete 'Champions of Legionfall'
					["_quests"] = { 47137 },
				}),
			}),
			ach(10461),	-- Fighting with Style: Classic (automated)
			ach(10750, {	-- Fighting with Style: Hidden
				["_noautomation"] = true,
				["groups"] = {
					ach(11152, {	-- Hidden Tracking - Appearance Unlock - Hidden - Color 2
						["description"] = "Progress indicates number of Legion Dungeons completed",
					}),
					ach(11153, {	-- Hidden Tracking - Appearance Unlock - Hidden - Color 3
						["description"] = "Progress indicates number of Legion World Quests completed",
					}),
					ach(11154, {	-- Hidden Tracking - Appearance Unlock - Hidden - Color 4
						["description"] = "Progress indicates number of players defeated in PvP",
						["pvp"] = true,
					}),
				},
			}),
			ach(10747, {	-- Fighting with Style: Upgraded
				ach(10746, {	-- Forged for Battle
					["sourceQuests"] = {
						43407,	-- A Hero's Weapon (Death Knight)
						43412,	-- A Hero's Weapon (Demon Hunter)
						43409,	-- A Hero's Weapon (Druid)
						43423,	-- A Hero's Weapon (Hunter)
						43415,	-- A Hero's Weapon (Mage)
						43359,	-- A Hero's Weapon (Monk)
						43424,	-- A Hero's Weapon (Paladin)
						43420,	-- A Hero's Weapon (Priest)
						43422,	-- A Hero's Weapon (Rogue)
						43418,	-- A Hero's Weapon (Shaman)
						43414,	-- A Hero's Weapon (Warlock)
						43425,	-- A Hero's Weapon (Warrior)
					},
				}),
				ach(11144),	-- Power Realized
				ach(10853),	-- Part of History
			}),
			ach(10748, {	-- Fighting with Style: Valorous
				["sym"] = {{"meta_achievement",
						10459,	-- Improving on History
						11160,	-- Unleashed Monstrosities
						11162,	-- Keystone Master
						11163,	-- Glory of the Legion Hero
					},
				},
			}),
			ach(10749, {	-- Fighting with Style: War-torn (A)
				["races"] = ALLIANCE_ONLY,
				["g"] = {
					crit(32105),	-- Honor Level 10
					crit(32152),	-- Honor Level 30
					crit(32150),	-- Honor Level 50
					crit(32155),	-- Honor Level 80
				},
			}),
			ach(11173, {	-- Fighting with Style: War-torn (H)
				["races"] = HORDE_ONLY,
				["g"] = {
					crit(32105),	-- Honor Level 10
					crit(32152),	-- Honor Level 30
					crit(32150),	-- Honor Level 50
					crit(32155),	-- Honor Level 80
				},
			}),
			ach(10460),	-- Hidden Potential
			ach(10459),	-- Improving on History
			ach(11213, {	-- Lead a Legion (100)
				ach(11212),	-- Raise an Army (20)
				ach(10706),	-- Training the Troops (5)
			}),
			ach(11223),	-- Legendary Research
			ach(11217, {	-- Many Many Missions, Handle It! (500)
				ach(11216),	-- So Many Missions (100)
				ach(11215),	-- Quite a Few Missions (50)
				ach(11214),	-- Many Missions (10)
			}),
			ach(11219),	-- Need Backup
			un(REMOVED_FROM_GAME, ach(11772, {		-- Power Ascended
				un(REMOVED_FROM_GAME, ach(11144)),		-- Power Realized
			})),
			ach(11610, {	-- Power Unleashed
				ach(11609),	-- Power Unbound
			}),
		}),
		n(FOLLOWERS, bubbleDownSelf({
			["collectible"] = false,
			["u"] = UNLEARNABLE,	-- Temporary troops
		}, {
			-- Dinner Guests (Moroes Mission reward)
			follower(983),	-- Baroness Dorothea Millstipe
			follower(984),	-- Baron Rafe Dreuger
			follower(985),	-- Lord Crispin Ference
		})),
		n(QUESTS, {
			q(46940, {	-- Using Lost Knowledge
				["timeline"] = { ADDED_7_2_0, REMOVED_7_3_0 },	-- estimated removal
			}),
		}),
		n(93787, {	-- Scouting Map
			["crs"] = CLASS_HALL_MISSION_TABLES,
			["g"] = {
				n(ACHIEVEMENTS, {
					ach(11218, {	-- There's a Boss In There
						["timeline"] = { ADDED_7_0_3_LAUNCH, REMOVED_7_3_5 },
					}),
				}),
				n(MISSIONS, {
					mission(1505, {	-- A Good Dust Up
						q(45172, {	-- To Battle!
							-- This is not removed from game; confirmed again in 9.0.5. You get it on the mission table one time per character after gearing up your followers a bit (its an 850 mission).
							["provider"] = { "i", 143328 },	-- Battle Report
							["g"] = {
								i(143606, {	-- Satchel of Battlefield Spoils
									i(140413),	-- Grisly Souvenir
									i(140414),	-- Fel-Loaded Dice
									i(140417),	-- Battle-Tempered Hilt
									i(140418),	-- "Borrowed" Soul Essence
									i(140419),	-- Blindside Approach
									i(140423),	-- Exhaustive Research
								}),
							},
						}),
					}),
					mission(1704, {	-- Antorus, the Burning Throne (Antoran High Command)
						["groups"] = {
							i(152313),	-- Azeroth Invasion Plans [Raid Finder]
							q(48288, {	-- Antoran High Command [Raid Finder]
								["repeatable"] = true,
								["provider"] = { "i", 152313 },	-- Azeroth Invasion Plans [Raid Finder]
								["g"] = {
									i(153502),	-- Cache of Antoran Treasures [Raid Finder]
								},
							}),
							i(152314),	-- Azeroth Invasion Plans (Normal)
							q(48295, {	-- Antoran High Command (Normal)
								["repeatable"] = true,
								["provider"] = { "i", 152314 },	-- Azeroth Invasion Plans [Normal]
								["g"] = {
									i(153504),	-- Cache of Antoran Treasures (Normal)
								},
							}),
							i(152315),	-- Azeroth Invasion Plans (Heroic)
							q(48299, {	-- Antoran High Command (Heroic)
								["repeatable"] = true,
								["provider"] = { "i", 152315 },	-- Azeroth Invasion Plans [Heroic]
								["g"] = {
									i(153501),	-- Cache of Antoran Treasures (Heroic)
								},
							}),
							i(152316),	-- Azeroth Invasion Plans (Mythic)
							q(48303, {	-- Antoran High Command (Mythic)
								["repeatable"] = true,
								["provider"] = { "i", 152316 },	-- Azeroth Invasion Plans [Mythic]
								["g"] = {
									i(153503),	-- Cache of Antoran Treasures (Mythic)
								},
							}),
							-- Every Mission can return any Cache, but they all return the same name ingame, so its cleaner to list them under the mission. Description also clarifies how the boxes work
							i(153502, {	-- Cache of Antoran Treasures [Looking For Raid]
								["description"] = "This cache appears every 2 weeks as a class hall mission reward. The reward of the cache scales with how many bosses you've killed in a difficulty. Killing 13 Normal Bosses upgrades the cache quality to Normal the next time the mission appears, same with Heroic & Mythic.",
								["skipFill"] = true,
								["sym"] = {
									{"select", "instanceID", 946},	-- Select Antorus, the Burning Throne
									{"pop"},	-- Discard the Instance Header and acquire the children.
									{"where", "difficultyID", 17 },	-- Select the Looking For Raid difficulty.
									{"pop"},	-- Discard the Difficulty Header and acquire the children.
									{"pop"},	-- Discard the Achievement Headers and acquire the children.
									{"is","encounterID"},	-- Select only Encounter Headers
									{"pop"},	-- Discard the Encounter Headers and acquire the children.
									{"isnt", "c"},	-- Exclude Tier Set Pieces
									{"contains", "f", 1, 2, 3, 4, 5, 6, 7, 8, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 31, 32, 33, 34, 35, 51, 52, 53, 54 },
									{"exclude", "itemID",
										152094,	-- Taeshalach
										153115,	-- Scythe of the Unmaker
									},
								},
							}),
						},
					}),
					mission(1708, {	-- Antorus, the Burning Throne (Imonar)
						["groups"] = {
							i(152317),	-- Discharged Shock Lance [Raid Finder]
							q(48292, {	-- The Soulhunter [Raid Finder]
								["repeatable"] = true,
								["provider"] = { "i", 152317 },	-- Discharged Shock Lance [Raid Finder]
								["g"] = {
									i(153502),	-- Cache of Antoran Treasures [Raid Finder]
								},
							}),
							i(152318),	-- Discharged Shock Lance (Normal)
							q(48296, {	-- The Soulhunter (Normal)
								["repeatable"] = true,
								["provider"] = { "i", 152318 },	-- Discharged Shock Lance [Raid Finder]
								["g"] = {
									i(153504),	-- Cache of Antoran Treasures (Normal)
								},
							}),
							i(152319),	-- Discharged Shock Lance (Heroic)
							q(48300, {	-- The Soulhunter (Heroic)
								["repeatable"] = true,
								["provider"] = { "i", 152319 },	-- Discharged Shock Lance [Raid Finder]
								["g"] = {
									i(153501),	-- Cache of Antoran Treasures (Heroic)
								},
							}),
							i(152320),	-- Discharged Shock Lance (Mythic)
							q(48304, {	-- The Soulhunter (Mythic)
								["repeatable"] = true,
								["provider"] = { "i", 152320 },	-- Discharged Shock Lance [Raid Finder]
								["g"] = {
									i(153503),	-- Cache of Antoran Treasures (Mythic)
								},
							}),
							-- Every Mission can return any Cache, but they all return the same name ingame, so its cleaner to list them under the mission. Description also clarifies how the boxes work
							i(153504, {	-- Cache of Antoran Treasures (Normal)
								["description"] = "This cache appears every 2 weeks as a class hall mission reward. The reward of the cache scales with how many bosses you've killed in a difficulty. Killing 13 Normal Bosses upgrades the cache quality to Normal the next time the mission appears, same with Heroic & Mythic.",
								["skipFill"] = true,
								["sym"] = {
									{"select", "instanceID", 946},	-- Select Antorus, the Burning Throne
									{"pop"},	-- Discard the Instance Header and acquire the children.
									{"where", "difficultyID", 14 },	-- Select the Normal difficulty.
									{"pop"},	-- Discard the Difficulty Header and acquire the children.
									{"is","encounterID"},	-- Select only Encounter Headers
									{"pop"},	-- Discard the Encounter Headers and acquire the children.
									{"isnt", "c"},	-- Exclude Tier Set Pieces
									{"contains", "f", 1, 2, 3, 4, 5, 6, 7, 8, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 31, 32, 33, 34, 35, 51, 52, 53, 54 },
									{"exclude", "itemID",
										152094, 153115,	-- Exclude Taeshalach, Scythe of the Unmaker
										154172, 154173, 154174, 154175, 154176, 154177,		-- All Argus Trinkets
										155831,	-- Pantheon's Blessing
									},
								},
							}),
						},
					}),
					mission(1709, {	-- Antorus, the Burning Throne (Coven)
						["groups"] = {
							i(152321),	-- Sargerei Manifesto [Raid Finder]
							q(48293, {	-- The Burning Coven [Raid Finder]
								["repeatable"] = true,
								["provider"] = { "i", 152321 },	-- Sargerei Manifesto [Raid Finder]
								["g"] = {
									i(153502),	-- Cache of Antoran Treasures [Raid Finder]
								},
							}),
							i(152322),	-- Sargerei Manifesto (Normal)
							q(48297, {	-- The Burning Coven (Normal)
								["repeatable"] = true,
								["provider"] = { "i", 152322 },	-- Sargerei Manifesto [Raid Finder]
								["g"] = {
									i(153504),	-- Cache of Antoran Treasures (Normal)
								},
							}),
							i(152323),	-- Sargerei Manifesto (Heroic)
							q(48301, {	-- The Burning Coven (Heroic)
								["repeatable"] = true,
								["provider"] = { "i", 152323 },	-- Sargerei Manifesto [Raid Finder]
								["g"] = {
									i(153501),	-- Cache of Antoran Treasures (Heroic)
								},
							}),
							i(152324),	-- Sargerei Manifesto (Mythic)
							q(48305, {	-- The Burning Coven (Mythic)
								["repeatable"] = true,
								["provider"] = { "i", 152324 },	-- Sargerei Manifesto [Raid Finder]
								["g"] = {
									i(153503),	-- Cache of Antoran Treasures (Mythic)
								},
							}),
							-- Every Mission can return any Cache, but they all return the same name ingame, so its cleaner to list them under the mission. Description also clarifies how the boxes work
							i(153501, {	-- Cache of Antoran Treasures (Heroic)
								["description"] = "This cache appears every 2 weeks as a class hall mission reward. The reward of the cache scales with how many bosses you've killed in a difficulty. Killing 13 Normal Bosses upgrades the cache quality to Normal the next time the mission appears, same with Heroic & Mythic.",
								["skipFill"] = true,
								["sym"] = {
									{"select", "instanceID", 946},	-- Select Antorus, the Burning Throne
									{"pop"},	-- Discard the Instance Header and acquire the children.
									{"where", "difficultyID", 15 },	-- Select the Heroic difficulty.
									{"pop"},	-- Discard the Difficulty Header and acquire the children.
									{"is","encounterID"},	-- Select only Encounter Headers
									{"pop"},	-- Discard the Encounter Headers and acquire the children.
									{"isnt", "c"},	-- Exclude Tier Set Pieces
									{"contains", "f", 1, 2, 3, 4, 5, 6, 7, 8, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 31, 32, 33, 34, 35, 51, 52, 53, 54 },
									{"exclude", "itemID",
										152094, 153115,	-- Exclude Taeshalach, Scythe of the Unmaker
										154172, 154173, 154174, 154175, 154176, 154177,		-- All Argus Trinkets
										155831,	-- Pantheon's Blessing
									},
								},
							}),
						},
					}),
					mission(1710, {	-- Antorus, the Burning Throne (Argus)
						["groups"] = {
							i(152325),	-- Sanguine Argunite [Raid Finder]
							q(48294, {	-- The Unmaker [Raid Finder]
								["repeatable"] = true,
								["provider"] = { "i", 152325 },	-- Sanguine Argunite [Raid Finder]
								["g"] = {
									i(153502),	-- Cache of Antoran Treasures [Raid Finder]
								},
							}),
							i(152326),	-- Sanguine Argunite (Normal)
							q(48298, {	-- The Unmaker (Normal)
								["provider"] = { "i", 152326 },	-- Sanguine Argunite [Normal]
								["repeatable"] = true,
								["g"] = {
									i(153504),	-- Cache of Antoran Treasures (Normal)
								},
							}),
							i(152327),	-- Sanguine Argunite (Heroic)
							q(48302, {	-- The Unmaker (Heroic)
								["provider"] = { "i", 152327 },	-- Sanguine Argunite [Heroic]
								["repeatable"] = true,
								["g"] = {
									i(153501),	-- Cache of Antoran Treasures (Heroic)
								},
							}),
							i(152328),	-- Sanguine Argunite (Mythic)
							q(48306, {	-- The Unmaker (Mythic)
								["provider"] = { "i", 152328 },	-- Sanguine Argunite [Mythic]
								["repeatable"] = true,
								["g"] = {
									i(153503),	-- Cache of Antoran Treasures (Mythic)
								},
							}),
							-- Every Mission can return any Cache, but they all return the same name ingame, so its cleaner to list them under the mission. Description also clarifies how the boxes work
							i(153503, {	-- Cache of Antoran Treasures (Mythic)
								["description"] = "This cache appears every 2 weeks as a class hall mission reward. The reward of the cache scales with how many bosses you've killed in a difficulty. Killing 13 Normal Bosses upgrades the cache quality to Normal the next time the mission appears, same with Heroic & Mythic.",
								["skipFill"] = true,
								["sym"] = {
									{"select", "instanceID", 946},	-- Select Antorus, the Burning Throne
									{"pop"},	-- Discard the Instance Header and acquire the children.
									{"where", "difficultyID", 16 },	-- Select the Mythic difficulty.
									{"pop"},	-- Discard the Difficulty Header and acquire the children.
									{"is","encounterID"},	-- Select only Encounter Headers
									{"pop"},	-- Discard the Encounter Headers and acquire the children.
									{"isnt", "c"},	-- Exclude Tier Set Pieces
									{"contains", "f", 1, 2, 3, 4, 5, 6, 7, 8, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 31, 32, 33, 34, 35, 51, 52, 53, 54 },
									{"exclude", "itemID",
										152094, 153115, 155880,	-- Exclude Taeshalach, Scythe of the Unmaker (Both)
										154172, 154173, 154174, 154175, 154176, 154177,		-- All Argus Trinkets
										155831,	-- Pantheon's Blessing
									},
								},
							}),
						},
					}),
					mission(1785, {	-- Assault on Felfire Armory
						q(48601, {	-- Felfire Shattering
							["g"] = {
								i(153130),	-- Man'ari Training Amulet
							},
						}),
					}),
					mission(1503, {	-- Council of War
						q(45162, {	-- We Brought the Hammer
							["u"] = REMOVED_FROM_GAME,	-- until Brawler's Guild comes back someday
							["provider"] = { "i", 142553 },	-- Tuft of Dwarvish Beard
						}),
					}),
					mission(1387, {	-- Friends, Not Food
						i(140316),	-- Firebat Pup (PET!)
					}),
					mission(1381, {	-- Glittering Treasure
						i(129165),	-- Barnacle-Encrusted Gem (TOY!)
					}),
					mission(1513, {	-- I've Got A Strange Feeling About This
						q(45312, {	-- You Beat the Ball of Meat
							["u"] = REMOVED_FROM_GAME,	-- until Brawler's Guild comes back someday
							["provider"] = { "i", 143590 },	-- Hunk of Meatball
							["g"] = {
								follower(986),	-- Meatball
							},
						}),
					}),
					mission(1504, {	-- It's Clean Up Time
						q(45163, {	-- Clearing Up
							["u"] = REMOVED_FROM_GAME,	-- until Brawler's Guild comes back someday
							["provider"] = { "i", 142554 },	-- Broken Handle
						}),
					}),
					mission(1386, {	-- It's so FLUFFY!
						i(140320),	-- Corgnelius (PET!)
					}),
					mission(1512, {	-- Master of Shadows
						q(45304, {	-- Attacking the Darkness
							["u"] = REMOVED_FROM_GAME,	-- until Brawler's Guild comes back someday
							["provider"] = { "i", 143561 },	-- Exhausted Shadow Candle
						}),
					}),
					mission(1506, {	-- Once More Into the Fray
						q(45173, {	-- Desperate Times
							["provider"] = { "i", 143329 },	-- Dire Summons
							["g"] = {
								un(REMOVED_FROM_GAME, i(143607)),	-- Solider's Footlocker
							},
							["u"] = REMOVED_FROM_GAME,
						}),
					}),
					mission(931, {	-- Scouting Reports
						i(140465),	-- Duskpelt Hide
					}),
					mission(1507, {	-- The Greatest Stage of All
						q(45179, {	-- Win the Crowed
							["provider"] = { "i", 143478 },	-- Arena Invitation
							["g"] = {
								un(REMOVED_FROM_GAME, i(143607, {	-- Solider's Footlocker
									un(REMOVED_FROM_GAME, i(140415)),	--	Blaze of Glory
									i(140423),	-- Exhaustive Research
								})),
							},
							["u"] = REMOVED_FROM_GAME,
						}),
					}),
					mission(1511, {	-- The Perils of Ashran
						q(45180, {	-- An Island of War
							["provider"] = { "i", 143479 },	-- Frayed Banner
							["g"] = {
								un(REMOVED_FROM_GAME, i(143607)),	-- Solider's Footlocker
							},
							["u"] = REMOVED_FROM_GAME,
						}),
					}),
					mission(1502, {	-- There is no Brawlers Guild
						q(45111, {	-- Everyone Loves a Good Fight
							["u"] = REMOVED_FROM_GAME,	-- until Brawler's Guild comes back someday
							["provider"] = { "i", 142522 },	-- Rude Letter
						}),
					}),
					mission(1296, {	-- The Emerald Nightfare: Facing Our Fears
						-- Every Mission can return any Cache, but they all return the same name ingame, so its cleaner to list them under the mission. Description also clarifies how the boxes work
						i(139484, {	-- Cache of Nightmarish Treasures [Raid Finder]
							["u"] = REMOVED_FROM_GAME,
							["skipFill"] = true,
							["sym"] = {{"select", "instanceID", 768}, {"pop"}, {"where", "difficultyID", 17 }, {"pop"}, {"pop"}, {"is","encounterID"}, {"pop"}, {"contains", "f", 1, 2, 3, 4, 5, 6, 7, 8, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 31, 32, 33, 34, 35, 51, 52, 53, 54 }},
						}),
					}),
					mission(1298, {	-- The Emerald Nightmare: Il'gynoth
						["groups"] = {
							i(139480),	-- Corrupted Egg Fragment [Raid Finder]
							q(43546, {	-- Il'gynoth [Raid Finder]
								["repeatable"] = true,
								["provider"] = { "i", 139480 },	-- Corrupted Egg Fragment [Raid Finder]
								["u"] = REMOVED_FROM_GAME,
								["g"] = {
									un(REMOVED_FROM_GAME, i(139484)),	-- Cache of Nightmarish Treasures [Raid Finder]
								},
							}),
							i(139481),	-- Corrupted Egg Fragment (Normal)
							q(43547, {	-- Il'gynoth (Normal)
								["repeatable"] = true,
								["provider"] = { "i", 139481 },	-- Corrupted Egg Fragment (Normal)
								["u"] = REMOVED_FROM_GAME,
								["g"] = {
									un(REMOVED_FROM_GAME, i(139486)),	-- Cache of Nightmarish Treasures (Normal)
								},
							}),
							i(139482),	-- Corrupted Egg Fragment (Heroic)
							q(43548, {	-- Il'gynoth (Heroic)
								["repeatable"] = true,
								["provider"] = { "i", 139482 },	-- Corrupted Egg Fragment (Heroic)
								["u"] = REMOVED_FROM_GAME,
								["g"] = {
									un(REMOVED_FROM_GAME, i(139487)),	-- Cache of Nightmarish Treasures (Heroic)
								},
							}),
							i(139483),	-- Corrupted Egg Fragment (Mythic)
							q(43549, {	-- Il'gynoth (Mythic)
								["repeatable"] = true,
								["provider"] = { "i", 139483 },	-- Corrupted Egg Fragment (Mythic)
								["u"] = REMOVED_FROM_GAME,
								["g"] = {
									un(REMOVED_FROM_GAME, i(139488)),	-- Cache of Nightmarish Treasures (Mythic)
								},
							}),
							-- Every Mission can return any Cache, but they all return the same name ingame, so its cleaner to list them under the mission. Description also clarifies how the boxes work
							i(139486, {	-- Cache of Nightmarish Treasures [Normal]
								["u"] = REMOVED_FROM_GAME,
								["skipFill"] = true,
								["sym"] = {{"select", "instanceID", 768}, {"pop"}, {"where", "difficultyID", 14 }, {"pop"}, {"is","encounterID"}, {"pop"}, {"contains", "f", 1, 2, 3, 4, 5, 6, 7, 8, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 31, 32, 33, 34, 35, 51, 52, 53, 54 }},
							}),
						},
					}),
					mission(1300, {	-- The Emerald Nightmare: Fall of Cenarius
						["groups"] = {
							i(140163),	-- Tainted Moonglade Leaf [Raid Finder]
							q(43902, {	-- Fall of Cenarius [Raid Finder]
								["repeatable"] = true,
								["provider"] = { "i", 140163 },	-- Tainted Moonglade Leaf [Raid Finder]
								["u"] = REMOVED_FROM_GAME,
								["g"] = {
									un(REMOVED_FROM_GAME, i(139484)),	-- Cache of Nightmarish Treasures [Raid Finder]
								},
							}),
							i(140165),	-- Tainted Moonglade Leaf (Normal)
							q(43904, {	-- Fall of Cenarius (Normal)
								["repeatable"] = true,
								["provider"] = { "i", 140165 },	-- Tainted Moonglade Leaf (Normal)
								["u"] = REMOVED_FROM_GAME,
								["g"] = {
									un(REMOVED_FROM_GAME, i(139486)),	-- Cache of Nightmarish Treasures (Normal)
								},
							}),
							i(140167),	-- Tainted Moonglade Leaf (Heroic)
							q(43906, {	-- Fall of Cenarius (Heroic)
								["repeatable"] = true,
								["provider"] = { "i", 140167 },	-- Tainted Moonglade Leaf (Heroic)
								["u"] = REMOVED_FROM_GAME,
								["g"] = {
									un(REMOVED_FROM_GAME, i(139487)),	-- Cache of Nightmarish Treasures (Heroic)
								},
							}),
							i(140169),	-- Tainted Moonglade Leaf (Mythic)
							q(43908, {	-- Fall of Cenarius (Mythic)
								["repeatable"] = true,
								["provider"] = { "i", 140169 },	-- Tainted Moonglade Leaf (Mythic)
								["u"] = REMOVED_FROM_GAME,
								["g"] = {
									un(REMOVED_FROM_GAME, i(139488)),	-- Cache of Nightmarish Treasures (Mythic)
								},
							}),
							-- Every Mission can return any Cache, but they all return the same name ingame, so its cleaner to list them under the mission. Description also clarifies how the boxes work
							i(139487, {	-- Cache of Nightmarish Treasures [Heroic]
								["u"] = REMOVED_FROM_GAME,
								["skipFill"] = true,
								["sym"] = {{"select", "instanceID", 768}, {"pop"}, {"where", "difficultyID", 15 }, {"pop"}, {"is","encounterID"}, {"pop"}, {"contains", "f", 1, 2, 3, 4, 5, 6, 7, 8, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 31, 32, 33, 34, 35, 51, 52, 53, 54 }},
							}),
						},
					}),
					mission(1302, {	-- The Emerald Nightmare: Xavius
						["groups"] = {
							i(140164),	-- Vial of Swirling Shadow [Raid Finder]
							q(43903, {	-- Xavius [Raid Finder]
								["repeatable"] = true,
								["provider"] = { "i", 140164 },	-- Vial of Swirling Shadow [Raid Finder]
								["u"] = REMOVED_FROM_GAME,
								["g"] = {
									un(REMOVED_FROM_GAME, i(139484)),	-- Cache of Nightmarish Treasures [Raid Finder]
								},
							}),
							i(140166),	-- Vial of Swirling Shadow (Normal)
							q(43905, {	-- Xavius (Normal)
								["repeatable"] = true,
								["provider"] = { "i", 140166 },	-- Vial of Swirling Shadow (Normal)
								["u"] = REMOVED_FROM_GAME,
								["g"] = {
									un(REMOVED_FROM_GAME, i(139486)),	-- Cache of Nightmarish Treasures (Normal)
								},
							}),
							i(140168),	-- Vial of Swirling Shadow (Heroic)
							q(43907, {	-- Xavius (Heroic)
								["repeatable"] = true,
								["provider"] = { "i", 140168 },	-- Vial of Swirling Shadow (Heroic)
								["u"] = REMOVED_FROM_GAME,
								["g"] = {
									un(REMOVED_FROM_GAME, i(139487)),	-- Cache of Nightmarish Treasures (Heroic)
								},
							}),
							i(140170),	-- Vial of Swirling Shadow (Mythic)
							q(43909, {	-- Xavius (Mythic)
								["repeatable"] = true,
								["provider"] = { "i", 140170 },	-- Vial of Swirling Shadow (Mythic)
								["u"] = REMOVED_FROM_GAME,
								["g"] = {
									un(REMOVED_FROM_GAME, i(139488)),	-- Cache of Nightmarish Treasures (Mythic)
								},
							}),
							-- Every Mission can return any Cache, but they all return the same name ingame, so its cleaner to list them under the mission. Description also clarifies how the boxes work
							i(139488, {	-- Cache of Nightmarish Treasures [Mythic]
								["u"] = REMOVED_FROM_GAME,
								["skipFill"] = true,
								["sym"] = {{"select", "instanceID", 768}, {"pop"}, {"where", "difficultyID", 16 }, {"pop"}, {"is","encounterID"}, {"pop"}, {"contains", "f", 1, 2, 3, 4, 5, 6, 7, 8, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 31, 32, 33, 34, 35, 51, 52, 53, 54 }},
							}),
						},
					}),
					mission(1303, {	-- The Nighthold: Vaults
						["groups"] = {
							i(140147),	-- Pulsauron Bindings [Raid Finder]
							q(43882, {	-- Vaults [Raid Finder]
								["repeatable"] = true,
								["provider"] = { "i", 140147 },	-- Pulsauron Bindings [Raid Finder]
								["u"] = REMOVED_FROM_GAME,
								["g"] = {
									un(REMOVED_FROM_GAME, i(140148)),	-- Cache of Nightborne Treasures [Raid Finder]
								},
							}),
							i(140149),	-- Pulsauron Bindings (Normal)
							q(43889, {	-- Vaults (Normal)
								["repeatable"] = true,
								["provider"] = { "i", 140149 },	-- Pulsauron Bindings (Normal)
								["u"] = REMOVED_FROM_GAME,
								["g"] = {
									un(REMOVED_FROM_GAME, i(140150)),	-- Cache of Nightborne Treasures (Normal)
								},
							}),
							i(140151),	-- Pulsauron Bindings (Heroic)
							q(43890, {	-- Vaults (Heroic)
								["repeatable"] = true,
								["provider"] = { "i", 140151 },	-- Pulsauron Bindings (Heroic)
								["u"] = REMOVED_FROM_GAME,
								["g"] = {
									un(REMOVED_FROM_GAME, i(140152)),	-- Cache of Nightborne Treasures (Heroic)
								},
							}),
							i(140153),	-- Pulsauron Bindings (Mythic)
							q(43891, {	-- Vaults (Mythic)
								["repeatable"] = true,
								["provider"] = { "i", 140153 },	-- Pulsauron Bindings (Mythic)
								["u"] = REMOVED_FROM_GAME,
								["g"] = {
									un(REMOVED_FROM_GAME, i(140154)),	-- Cache of Nightborne Treasures (Mythic)
								},
							}),
							-- Every Mission can return any Cache, but they all return the same name ingame, so its cleaner to list them under the mission. Description also clarifies how the boxes work
							i(140148, {	-- Cache of Nightborne Treasures [Raid Finder]
								["u"] = REMOVED_FROM_GAME,
								["skipFill"] = true,
								["sym"] = {{"select", "instanceID", 786}, {"pop"}, {"where", "difficultyID", 17 }, {"pop"}, {"pop"}, {"is","encounterID"}, {"pop"}, {"isnt", "c"}, {"contains", "f", 1, 2, 3, 4, 5, 6, 7, 8, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 31, 32, 33, 34, 35, 51, 52, 53, 54 }},
							}),
						},
					}),
					mission(1304, {	-- The Nighthold: High Botanist Tel'arn
						["groups"] = {
							i(140171),	-- Glowing Lily [Raid Finder]
							q(43910, {	-- High Botanist Tel'arn [Raid Finder]
								["repeatable"] = true,
								["provider"] = { "i", 140171 },	-- Glowing Lily [Raid Finder]
								["u"] = REMOVED_FROM_GAME,
								["g"] = {
									un(REMOVED_FROM_GAME, i(140148)),	-- Cache of Nightborne Treasures [Raid Finder]
								},
							}),
							i(140174),	-- Glowing Lily (Normal)
							q(43913, {	-- High Botanist Tel'arn (Normal)
								["repeatable"] = true,
								["provider"] = { "i", 140174 },	-- Glowing Lily (Normal)
								["u"] = REMOVED_FROM_GAME,
								["g"] = {
									un(REMOVED_FROM_GAME, i(140150)),	-- Cache of Nightborne Treasures (Normal)
								},
							}),
							i(140178),	-- Glowing Lily (Heroic)
							q(43916, {	-- High Botanist Tel'arn (Heroic)
								["repeatable"] = true,
								["provider"] = { "i", 140178 },	-- Glowing Lily (Heroic)
								["u"] = REMOVED_FROM_GAME,
								["g"] = {
									un(REMOVED_FROM_GAME, i(140152)),	-- Cache of Nightborne Treasures (Heroic)
								},
							}),
							i(140182),	-- Glowing Lily (Mythic)
							q(43920, {	-- High Botanist Tel'arn (Mythic)
								["repeatable"] = true,
								["provider"] = { "i", 140182 },	-- Glowing Lily (Mythic)
								["u"] = REMOVED_FROM_GAME,
								["g"] = {
									un(REMOVED_FROM_GAME, i(140154)),	-- Cache of Nightborne Treasures (Mythic)
								},
							}),
							-- Every Mission can return any Cache, but they all return the same name ingame, so its cleaner to list them under the mission. Description also clarifies how the boxes work
							i(140150, {	-- Cache of Nightborne Treasures (Normal)
								["u"] = REMOVED_FROM_GAME,
								["skipFill"] = true,
								["sym"] = {{"select", "instanceID", 786}, {"pop"}, {"where", "difficultyID", 14 }, {"pop"}, {"is","encounterID"}, {"pop"}, {"contains", "f", 1, 2, 3, 4, 5, 6, 7, 8, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 31, 32, 33, 34, 35, 51, 52, 53, 54 }},
							}),
						},
					}),
					mission(1305, {	-- The Nighthold: Elisande
						["groups"] = {
							i(140172),	-- Ancient Nightborne Tome [Raid Finder]
							q(43911, {	-- Elisande [Raid Finder]
								["repeatable"] = true,
								["provider"] = { "i", 140172 },	-- Ancient Nightborne Tome [Raid Finder]
								["u"] = REMOVED_FROM_GAME,
								["g"] = {
									un(REMOVED_FROM_GAME, i(140148)),	-- Cache of Nightborne Treasures [Raid Finder]
								},
							}),
							i(140175),	-- Ancient Nightborne Tome (Normal)
							q(43914, {	-- Elisande (Normal)
								["repeatable"] = true,
								["provider"] = { "i", 140175 },	-- Ancient Nightborne Tome (Normal)
								["u"] = REMOVED_FROM_GAME,
								["g"] = {
									un(REMOVED_FROM_GAME, i(140150)),	-- Cache of Nightborne Treasures (Normal)
								},
							}),
							i(140472),	-- Ancient Nightborne Tome (Heroic)
							q(43917, {	-- Elisande (Heroic)
								["repeatable"] = true,
								["provider"] = { "i", 140472 },	-- Ancient Nightborne Tome (Heroic)
								["u"] = REMOVED_FROM_GAME,
								["g"] = {
									un(REMOVED_FROM_GAME, i(140152)),	-- Cache of Nightborne Treasures (Heroic)
								},
							}),
							i(140182),	-- Ancient Nightborne Tome (Mythic)
							q(43920, {	-- Elisande (Mythic)
								["repeatable"] = true,
								["provider"] = { "i", 140182 },	-- Ancient Nightborne Tome (Mythic)
								["u"] = REMOVED_FROM_GAME,
								["g"] = {
									un(REMOVED_FROM_GAME, i(140154)),	-- Cache of Nightborne Treasures (Mythic)
								},
							}),
							-- Every Mission can return any Cache, but they all return the same name ingame, so its cleaner to list them under the mission. Description also clarifies how the boxes work
							i(140152, {	-- Cache of Nightborne Treasures (Heroic)
								["u"] = REMOVED_FROM_GAME,
								["skipFill"] = true,
								["sym"] = {{"select", "instanceID", 786}, {"pop"}, {"where", "difficultyID", 15 }, {"pop"}, {"is","encounterID"}, {"pop"}, {"contains", "f", 1, 2, 3, 4, 5, 6, 7, 8, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 31, 32, 33, 34, 35, 51, 52, 53, 54 }},
							}),
						},
					}),
					mission(1306, {	-- The Nighthold: Gul'dan
						["groups"] = {
							i(140173),	-- Shred of Tattered Robe [Raid Finder]
							q(43912, {	-- Gul'dan [Raid Finder]
								["repeatable"] = true,
								["provider"] = { "i", 140173 },	-- Shred of Tattered Robe [Raid Finder]
								["u"] = REMOVED_FROM_GAME,
								["g"] = {
									un(REMOVED_FROM_GAME, i(140148)),	-- Cache of Nightborne Treasures [Raid Finder]
								},
							}),
							i(140177),	-- Shred of Tattered Robe (Normal)
							q(43915, {	-- Gul'dan (Normal)
								["repeatable"] = true,
								["provider"] = { "i", 140177 },	-- Shred of Tattered Robe (Normal)
								["u"] = REMOVED_FROM_GAME,
								["g"] = {
									un(REMOVED_FROM_GAME, i(140150)),	-- Cache of Nightborne Treasures (Normal)
								},
							}),
							i(140180),	-- Shred of Tattered Robe (Heroic)
							q(43918, {	-- Gul'dan (Heroic)
								["repeatable"] = true,
								["provider"] = { "i", 140180 },	-- Shred of Tattered Robe (Heroic)
								["u"] = REMOVED_FROM_GAME,
								["g"] = {
									un(REMOVED_FROM_GAME, i(140152)),	-- Cache of Nightborne Treasures (Heroic)
								},
							}),
							i(140183),	-- Shred of Tattered Robe (Mythic)
							q(43921, {	-- Gul'dan (Mythic)
								["repeatable"] = true,
								["provider"] = { "i", 140183 },	-- Shred of Tattered Robe (Mythic)
								["u"] = REMOVED_FROM_GAME,
								["g"] = {
									un(REMOVED_FROM_GAME, i(140154)),	-- Cache of Nightborne Treasures (Mythic)
								},
							}),
							-- Every Mission can return any Cache, but they all return the same name ingame, so its cleaner to list them under the mission. Description also clarifies how the boxes work
							i(140154, {	-- Cache of Nightborne Treasures (Mythic)
								["u"] = REMOVED_FROM_GAME,
								["skipFill"] = true,
								["sym"] = {{"select", "instanceID", 786}, {"pop"}, {"where", "difficultyID", 16 }, {"pop"}, {"is","encounterID"}, {"pop"}, {"contains", "f", 1, 2, 3, 4, 5, 6, 7, 8, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 31, 32, 33, 34, 35, 51, 52, 53, 54 }},
							}),
						},
					}),
					mission(1680, {	-- Tomb of Sargeras: The Tomb's Mistress [Mistress]
						["groups"] = {
							i(147497),	-- Encrusted Naga Scale [Raid Finder]
							q(47114, {	-- The Tomb's Mistress [Raid Finder]
								["repeatable"] = true,
								["provider"] = { "i", 147497 },	-- Encrusted Naga Scale [Raid Finder]
								["g"] = {
									i(147518),	-- Cache of Fel Treasures [Raid Finder]
								},
							}),
							i(147498),	-- Encrusted Naga Scale (Normal)
							q(47115, {	-- The Tomb's Mistress (Normal)
								["repeatable"] = true,
								["provider"] = { "i", 147498 },	-- Encrusted Naga Scale (Normal)
								["g"] = {
									i(147519),	-- Cache of Fel Treasures (Normal)
								},
							}),
							i(147499),	-- Encrusted Naga Scale (Heroic)
							q(47116, {	-- The Tomb's Mistress (Heroic)
								["repeatable"] = true,
								["provider"] = { "i", 147499 },	-- Encrusted Naga Scale (Heroic)
								["g"] = {
									i(147520),	-- Cache of Fel Treasures (Heroic)
								},
							}),
							i(147500),	-- Encrusted Naga Scale (Mythic)
							q(47117, {	-- The Tomb's Mistress (Mythic)
								["repeatable"] = true,
								["provider"] = { "i", 147500 },	-- Encrusted Naga Scale (Mythic)
								["g"] = {
									i(147521),	-- Cache of Fel Treasures (Mythic)
								},
							}),
							-- Every Mission can return any Cache, but they all return the same name ingame, so its cleaner to list them under the mission. Description also clarifies how the boxes work
							i(147518, {	-- Cache of Fel Treasures (Raid Finder)
								["description"] = "This cache appears every 2 weeks as a class hall mission reward. The reward of the cache scales with how many bosses you've killed in a difficulty. Killing 13 Normal Bosses upgrades the cache quality to Normal the next time the mission appears, same with Heroic & Mythic.",
								["skipFill"] = true,
								["sym"] = {{"select", "instanceID", 875}, {"pop"}, {"where", "difficultyID", 17 }, {"pop"}, {"pop"}, {"is","encounterID"}, {"pop"}, {"isnt", "c"}, {"contains", "f", 1, 2, 3, 4, 5, 6, 7, 8, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 31, 32, 33, 34, 35, 51, 52, 53, 54 }},
							}),
						},
					}),
					mission(1681, {	-- Tomb of Sargeras: Free The Tormented [Desolate Host]
						["groups"] = {
							i(147501),	-- Worshipper's Scrawlings [Raid Finder]
							q(47118, {	-- Free The Tormented [Raid Finder]
								["repeatable"] = true,
								["provider"] = { "i", 147501 },	-- Worshipper's Scrawlings [Raid Finder]
								["g"] = {
									i(147518),	-- Cache of Fel Treasures [Raid Finder]
								},
							}),
							i(147502),	-- Worshipper's Scrawlings (Normal)
							q(47119, {	-- Free The Tormented (Normal)
								["repeatable"] = true,
								["provider"] = { "i", 147502 },	-- Worshipper's Scrawlings (Normal)
								["g"] = {
									i(147519),	-- Cache of Fel Treasures (Normal)
								},
							}),
							i(147503),	-- Worshipper's Scrawlings (Heroic)
							q(47120, {	-- Free The Tormented (Heroic)
								["repeatable"] = true,
								["provider"] = { "i", 147503 },	-- Worshipper's Scrawlings (Heroic)
								["g"] = {
									i(147520),	-- Cache of Fel Treasures (Heroic)
								},
							}),
							i(147504),	-- Worshipper's Scrawlings (Mythic)
							q(47121, {	-- Free The Tormented (Mythic)
								["repeatable"] = true,
								["provider"] = { "i", 147504 },	-- Worshipper's Scrawlings (Mythic)
								["g"] = {
									i(147521),	-- Cache of Fel Treasures (Mythic)
								},
							}),
							-- Every Mission can return any Cache, but they all return the same name ingame, so its cleaner to list them under the mission. Description also clarifies how the boxes work
							i(147519, {	-- Cache of Fel Treasures (Normal)
								["description"] = "This cache appears every 2 weeks as a class hall mission reward. The reward of the cache scales with how many bosses you've killed in a difficulty. Killing 13 Raid Finder Bosses upgrades the cache quality to Normal the next time the mission appears, same with Heroic & Mythic.",
								["skipFill"] = true,
								["sym"] = {{"select", "instanceID", 875}, {"pop"}, {"where", "difficultyID", 14 }, {"pop"}, {"is","encounterID"}, {"pop"}, {"isnt", "c"}, {"contains", "f", 1, 2, 3, 4, 5, 6, 7, 8, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 31, 32, 33, 34, 35, 51, 52, 53, 54 }},
							}),
						},
					}),
					mission(1682, {	-- Tomb of Sargeras: The Fallen Avatar
						["groups"] = {
							i(147505),	-- Wailing Soul [Raid Finder]
							q(47122, {	-- The Fallen Avatar [Raid Finder]
								["repeatable"] = true,
								["provider"] = { "i", 147505 },	-- Wailing Soul [Raid Finder]
								["g"] = {
									i(147518),	-- Cache of Fel Treasures [Raid Finder]
								},
							}),
							i(147506),	-- Wailing Soul (Normal)
							q(47123, {	-- The Fallen Avatar (Normal)
								["repeatable"] = true,
								["provider"] = { "i", 147506 },	-- Wailing Soul (Normal)
								["g"] = {
									i(147519),	-- Cache of Fel Treasures (Normal)
								},
							}),
							i(147507),	-- Wailing Soul (Heroic)
							q(47124, {	-- The Fallen Avatar (Heroic)
								["repeatable"] = true,
								["provider"] = { "i", 147507 },	-- Wailing Soul (Heroic)
								["g"] = {
									i(147520),	-- Cache of Fel Treasures (Heroic)
								},
							}),
							i(147508),	-- Wailing Soul (Mythic)
							q(47125, {	-- The Fallen Avatar (Mythic)
								["repeatable"] = true,
								["provider"] = { "i", 147508 },	-- Wailing Soul (Mythic)
								["g"] = {
									i(147521),	-- Cache of Fel Treasures (Mythic)
								},
							}),
							-- Every Mission can return any Cache, but they all return the same name ingame, so its cleaner to list them under the mission. Description also clarifies how the boxes work
							i(147520, {	-- Cache of Fel Treasures (Heroic)
								["description"] = "This cache appears every 2 weeks as a class hall mission reward. The reward of the cache scales with how many bosses you've killed in a difficulty. Killing 13 Raid Finder Bosses upgrades the cache quality to Normal the next time the mission appears, same with Heroic & Mythic.",
								["skipFill"] = true,
								["sym"] = {{"select", "instanceID", 875}, {"pop"}, {"where", "difficultyID", 15 }, {"pop"}, {"is","encounterID"}, {"pop"}, {"isnt", "c"}, {"contains", "f", 1, 2, 3, 4, 5, 6, 7, 8, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 31, 32, 33, 34, 35, 51, 52, 53, 54 }},
							}),
						},
					}),
					mission(1683, {	-- Tomb of Sargeras: The Deceiver
						["groups"] = {
							i(147509),	-- Seal of the Deceiver [Raid Finder]
							q(47126, {	-- The Deceiver [Raid Finder]
								["repeatable"] = true,
								["provider"] = { "i", 147509 },	-- Seal of the Deceiver [Raid Finder]
								["g"] = {
									i(147518),	-- Cache of Fel Treasures [Raid Finder]
								},
							}),
							i(147510),	-- Seal of the Deceiver (Normal)
							q(47127, {	-- The Deceiver (Normal)
								["repeatable"] = true,
								["provider"] = { "i", 147510 },	-- Seal of the Deceiver (Normal)
								["g"] = {
									i(147519),	-- Cache of Fel Treasures (Normal)
								},
							}),
							i(147511),	-- Seal of the Deceiver (Heroic)
							q(47128, {	-- The Deceiver (Heroic)
								["repeatable"] = true,
								["provider"] = { "i", 147511 },	-- Seal of the Deceiver (Heroic)
								["g"] = {
									i(147520),	-- Cache of Fel Treasures (Heroic)
								},
							}),
							i(147512),	-- Seal of the Deceiver (Mythic)
							q(47129, {	-- The Deceiver (Mythic)
								["repeatable"] = true,
								["provider"] = { "i", 147512 },	-- Seal of the Deceiver (Mythic)
								["g"] = {
									i(147521),	-- Cache of Fel Treasures (Mythic)
								},
							}),
							-- Every Mission can return any Cache, but they all return the same name ingame, so its cleaner to list them under the mission. Description also clarifies how the boxes work
							i(147521, {	-- Cache of Fel Treasures (Mythic)
								["description"] = "This cache appears every 2 weeks as a class hall mission reward. The reward of the cache scales with how many bosses you've killed in a difficulty. Killing 13 Raid Finder Bosses upgrades the cache quality to Normal the next time the mission appears, same with Heroic & Mythic.",
								["skipFill"] = true,
								["sym"] = {{"select", "instanceID", 875}, {"pop"}, {"where", "difficultyID", 16 }, {"pop"}, {"is","encounterID"}, {"pop"}, {"isnt", "c"}, {"contains", "f", 1, 2, 3, 4, 5, 6, 7, 8, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 31, 32, 33, 34, 35, 51, 52, 53, 54 }},
							}),
						},
					}),
					mission(1382, {	-- Win the Crowd
						i(130169),	-- Tournament Favor (TOY!)
					}),
					-- Rep Insignias
					i(152960),	-- Argussian Reach Insignia
					i(152959),	-- Argussian Reach Insignia
					i(152957),	-- Army of the Light Insignia
					i(141340),	-- Court of Farondis Insignia
					i(146943),	-- Court of Farondis Insignia
					i(141339),	-- Dreamweaver Insignia
					i(146942),	-- Dreamweaver Insignia
					i(152954),	-- Greater Argussian Reach Insignia
					i(152955),	-- Greater Army of the Light Insignia
					i(150927),	-- Greater Court of Farondis Insignia
					i(150926),	-- Greater Dreamweaver Insignia
					i(150928),	-- Greater Highmountain Tribe Insignia
					i(152464),	-- Greater Legionfall Insignia
					i(150930),	-- Greater Nightfallen Insignia
					i(150925),	-- Greater Valarjar Insignia
					i(150929),	-- Greater Wardens Insignia
					i(141341),	-- Highmountain Tribe Insignia
					i(146944),	-- Highmountain Tribe Insignia
					i(146950),	-- Legionfall Insignia [BOA]
					i(146949),	-- Legionfall Insignia [BOP]
					i(141343),	-- Nightfallen Insignia
					i(146946),	-- Nightfallen Insignia
					i(141338),	-- Valarjar Insignia
					i(146941),	-- Valarjar Insignia
					i(141342),	-- Wardens Insignia
					i(146945),	-- Wardens Insignia
					-- Misc
					un(REMOVED_FROM_GAME, i(143478)),	-- Arena Invitation
					i(143328),	-- Battle Report
					i(140587),	-- Defiled Augment Rune
					un(REMOVED_FROM_GAME, i(143329)),	-- Dire Summons
					i(140362),	-- Dust from the Shadowlands
					un(REMOVED_FROM_GAME, i(143479)),	-- Frayed Banner
					un(REMOVED_FROM_GAME, i(142522)),	-- Rude Letter (removed until Brawler's Guild comes back someday)
					i(116415, { ["timeline"] = { REMOVED_10_2_5 } }),	-- Shiny Pet Charm
					-- Dungeons
					un(REMOVED_FROM_GAME, i(139471)),	-- Black Rook Missive -> Black Rook Hold: The Lord of Black Rook Hold -> Black Rook Hold
					un(REMOVED_FROM_GAME, i(139476)),	-- Broken Dragon Scale -> Neltharion's Lair: Into Neltharion's Lair -> Neltharion's Lair
					un(REMOVED_FROM_GAME, i(139479)),	-- Broken Portal Shard -> Assault on Violet Hold: Into the Violet Hold -> Violet Hold
					un(REMOVED_FROM_GAME, i(139478)),	-- Broken Warden Helm -> Vault of the Wardens: Into the Vault of the Wardens -> Vault of the Wardens
					un(REMOVED_FROM_GAME, i(139474)),	-- Carved Shell -> Eye of Azshara: Into the Eye of Azshara -> Eye of Azshara
					un(REMOVED_FROM_GAME, i(139477)),	-- Drained Mana Orb -> The Arcway: Into the Arcway -> The Arcway
					un(REMOVED_FROM_GAME, i(139472)),	-- Glamorous Party Invitation -> Court of Stars: Into the Court of Stars -> Court of Stars
					un(REMOVED_FROM_GAME, i(142340)),	-- Head of Thar'zul -> Return to Karazhan: The Tower of Power -> Karazhan
					un(REMOVED_FROM_GAME, i(139457)),	-- Odyn's Challenge -> Halls of Valor: Odyn's Challenge -> Halls of Valor
					un(REMOVED_FROM_GAME, i(139473)),	-- Vial of Poisoned Blood -> Darkheart Thicket: Into Darkheart Thicket -> Darkheart Thicket
					un(REMOVED_FROM_GAME, i(139475)),	-- Waterlogged Letter -> Maw of Souls: Into the Maw of Souls -> Maw of Souls
					-- Follower Equipments
					i(139802),	-- Auspicious Fetish
					i(139873),	-- Bottled Sanity
					i(140582),	-- Bottomless Flask
					i(139814),	-- Carrot on a Stick
					i(139808),	-- Cuiro of Abundant Happiness
					i(139877),	-- Death's Touch
					i(139795),	-- Draught of Courage
					i(139809),	-- Elixir of Plenty
					i(152444),	-- Exalted Xenedar Hammer
					i(139792),	-- Fruitful Bauble
					i(139419),	-- Golden Banana
					i(147554),	-- Harpy Feather
					i(152447),	-- Lightburst Charge
					i(139801),	-- Lucky Doodad
					i(139811),	-- Necklace of Endless Memories
					i(139799),	-- Pathfinder's Saddle
					i(139812),	-- Potion of Triton
					i(147558),	-- Pouch of Wonder
					i(152929),	-- Pronged Ridgestalker Spear
					i(139878),	-- Relic of the Ebon Blade
					i(139876),	-- Rune of Reckoning
					i(152441),	-- Satchel of Lucidity
					i(139670),	-- Scream of the Dead
					i(152933),	-- Shadowguard Void Effusion
					i(147553),	-- Shard of Twisting Nether
					i(147572),	-- Sigil of Ebon Frost
					i(140581),	-- Sturdy Hiking Boots
					i(143850),	-- Summon Grimtotem Warrior (maybe put in Shaman class hall only)
					i(139813),	-- Swift Boots
					i(139841),	-- Totem of the Earth
					i(139875),	-- Undead Token
					i(139851),	-- Valarjar's Might
					i(140583),	-- Vial of Timeless Breath
					i(152935),	-- Wakener's Bauble
					i(147559),	-- Ward of Infinite Fury
					i(139816),	-- Well-Worn Stone
					i(152446),	-- Writ of Holy Orders
					i(151844),	-- Xenedar Armor Set
					i(152931),	-- Xenic Tincture
				}),
				n(QUESTS, {
					q(44057, {	-- A "Noble" Event
						["provider"] = { "i", 140495 },	-- Torn Invitation
						["cost"] = {
							{ "i", 140562, 1 },	-- First Half of the Map
							{ "i", 140496, 1 },	-- Fox Hunt Invitation
							{ "i", 140561, 1 },	-- List of Invited Nobles
							{ "i", 140563, 1 },	-- Second Half of the Map
						},
					}),
					un(REMOVED_FROM_GAME, q(43557, {	-- Assault on Violet Hold: Into the Violet Hold(Normal)
						un(REMOVED_FROM_GAME, i(141164)),	-- Violet Hold Contraband Locker (Normal)
					})),
					un(REMOVED_FROM_GAME, q(44258, {	-- Assault on Violet Hold: Into the Violet Hold (Heroic)
						un(REMOVED_FROM_GAME, i(141174)),	-- Violet Hold Contraband Locker (Heroic)
					})),
					un(REMOVED_FROM_GAME, q(44259, {	-- Assault on Violet Hold: Into the Violet Hold (Mythic)
						un(REMOVED_FROM_GAME, i(141184)),	-- Violet Hold Contraband Locker (Mythic)
					})),
					un(REMOVED_FROM_GAME, q(43545, {	-- Black Rook Hold: The Lord of Black Rook Hold (Normal)
						un(REMOVED_FROM_GAME, i(141156)),	-- Haunted Ravencrest Keepsake (Normal)
					})),
					un(REMOVED_FROM_GAME, q(44276, {	-- Black Rook Hold: The Lord of Black Rook Hold (Heroic)
						un(REMOVED_FROM_GAME, i(141166)),	-- Haunted Ravencrest Keepsake (Heroic)
					})),
					un(REMOVED_FROM_GAME, q(44277, {	-- Black Rook Hold: The Lord of Black Rook Hold (Mythic)
						un(REMOVED_FROM_GAME, i(141176)),	-- Haunted Ravencrest Keepsake (Mythic)
					})),
					q(44865, {	-- Butler to the Great
						["sourceQuest"] = 44803,	-- Return to Karazhan: Master of the House
						["lvl"] = 110,
						["provider"] = { "n", 115551 },	-- Phantom Valet
						["maps"] = { DEADWIND_PASS },
						["g"] = {
							follower(733),	-- Moroes
						},
					}),
					un(REMOVED_FROM_GAME, q(43550, {	-- Court of Stars: Into the Court of Stars (Normal)
						un(REMOVED_FROM_GAME, i(141157)),	-- Nightborne Rucksack (Normal)
					})),
					un(REMOVED_FROM_GAME, q(44274, {	-- Court of Stars: Into the Court of Stars (Heroic)
						un(REMOVED_FROM_GAME, i(141167)),	-- Nightborne Rucksack (Heroic)
					})),
					un(REMOVED_FROM_GAME, q(44275, {	-- Court of Stars: Into the Court of Stars (Mythic)
						un(REMOVED_FROM_GAME, i(141177)),	-- Nightborne Rucksack (Mythic)
					})),
					un(REMOVED_FROM_GAME, q(43551, {	-- Darkheart Thicket: Into Darkheart Thicket (Normal)
						un(REMOVED_FROM_GAME, i(141158)),	-- Despoiled Keeper's Cache (Normal)
					})),
					un(REMOVED_FROM_GAME, q(44272, {	-- Darkheart Thicket: Into Darkheart Thicket (Heroic)
						un(REMOVED_FROM_GAME, i(141168)),	-- Despoiled Keeper's Cache (Heroic)
					})),
					un(REMOVED_FROM_GAME, q(44273, {	-- Darkheart Thicket: Into Darkheart Thicket (Mythic)
						un(REMOVED_FROM_GAME, i(141178)),	-- Despoiled Keeper's Cache (Mythic)
					})),
					un(REMOVED_FROM_GAME, q(43552, {	-- Eye of Azshara: Into the Eye of Azshara (Normal)
						un(REMOVED_FROM_GAME, i(141159)),	-- Watertight Salvage Bag (Normal)
					})),
					un(REMOVED_FROM_GAME, q(44270, {	-- Eye of Azshara: Into the Eye of Azshara (Heroic)
						un(REMOVED_FROM_GAME, i(141169)),	-- Watertight Salvage Bag (Heroic)
					})),
					un(REMOVED_FROM_GAME, q(44271, {	-- Eye of Azshara: Into the Eye of Azshara (Mythic)
						un(REMOVED_FROM_GAME, i(141179)),	-- Watertight Salvage Bag (Mythic)
					})),
					q(44555, {	-- Khadgar's Discovery
						["lvl"] = 110,
						["isBreadcrumb"] = true,
					}),
					un(REMOVED_FROM_GAME, q(43553, {	-- Maw of Souls: Into the Maw of Souls (Normal)
						un(REMOVED_FROM_GAME, i(141160)),	-- Seaweed-Encrusted Satchel (Normal)
					})),
					un(REMOVED_FROM_GAME, q(44266, {	-- Maw of Souls: Into the Maw of Souls (Heroic)
						un(REMOVED_FROM_GAME, i(141170)),	-- Seaweed-Encrusted Satchel (Heroic)
					})),
					un(REMOVED_FROM_GAME, q(44267, {	-- Maw of Souls: Into the Maw of Souls (Mythic)
						un(REMOVED_FROM_GAME, i(141180)),	-- Seaweed-Encrusted Satchel (Mythic)
					})),
					un(REMOVED_FROM_GAME, q(43554, {	-- Neltharion's Lair: Into Neltharion's Lair (Normal)
						un(REMOVED_FROM_GAME, i(141161)),	-- Cache of the Black Dragon (Normal)
					})),
					un(REMOVED_FROM_GAME, q(44264, {	-- Neltharion's Lair: Into Neltharion's Lair (Heroic)
						un(REMOVED_FROM_GAME, i(141171)),	-- Cache of the Black Dragon (Heroic)
					})),
					un(REMOVED_FROM_GAME, q(44265, {	-- Neltharion's Lair: Into Neltharion's Lair (Mythic)
						["provider"] = { "i", 141192 },	-- Broken Dragon Scale
						["g"] = {
							un(REMOVED_FROM_GAME, i(141181)),	-- Cache of the Black Dragon (Mythic)
						},
					})),
					un(REMOVED_FROM_GAME, q(43509, {	-- Odyn's Challenge (Normal)
						un(REMOVED_FROM_GAME, i(141155)),	-- Challenger's Spoils (Normal)
					})),
					un(REMOVED_FROM_GAME, q(44268, {	-- Odyn's Challenge (Heroic)
						un(REMOVED_FROM_GAME, i(141165)),	-- Challenger's Spoils (Heroic)
					})),
					un(REMOVED_FROM_GAME, q(44269, {	-- Odyn's Challenge (Mythic)
						un(REMOVED_FROM_GAME, i(141175)),	-- Challenger's Spoils (Mythic)
					})),
					q(39718, {	-- Paradise Lost
						["provider"] = { "n", 98613 },	-- Scouting Map
						["isBreadcrumb"] = true,
					}),
					un(REMOVED_FROM_GAME, q(44917, {	-- Return to Karazhan: The Tower of Power (No Tag but Mythic)
						un(REMOVED_FROM_GAME, i(142342)),	-- Glittering Pack (No Tag but Mythic)
					})),
					q(39735, {	-- Stormheim (A)
						["races"] = ALLIANCE_ONLY,
						["altQuests"] = { 44700 },	-- Stormheim (A) from Archmage Landon in Stormheim
					}),
					q(39864, {	-- Stormheim (H)
						["races"] = HORDE_ONLY,
						["altQuests"] = { 44701 },	-- Stormheim (H) from Archmage Landon in Stormheim
					}),
					un(REMOVED_FROM_GAME, q(43555, {	-- The Arcway: Into the Arcway (Normal)
						un(REMOVED_FROM_GAME, i(141162)),	-- Unmarked Suramar Vault Crate (Normal)
					})),
					un(REMOVED_FROM_GAME, q(44262, {	-- The Arcway: Into the Arcway (Heroic)
						un(REMOVED_FROM_GAME, i(141172)),	-- Unmarked Suramar Vault Crate (Heroic)
					})),
					un(REMOVED_FROM_GAME, q(44263, {	-- The Arcway: Into the Arcway (Mythic)
						un(REMOVED_FROM_GAME, i(141182)),	-- Unmarked Suramar Vault Crate (Mythic)
					})),
					un(REMOVED_FROM_GAME, q(43556, {	-- Vault of the Wardens: Into the Vault of the Wardens (Normal)
						un(REMOVED_FROM_GAME, i(141163)),	-- Bag of Confiscated Materials (Normal)
					})),
					un(REMOVED_FROM_GAME, q(44260, {	-- Vault of the Wardens: Into the Vault of the Wardens (Heroic)
						un(REMOVED_FROM_GAME, i(141173)),	-- Bag of Confiscated Materials (Heroic)
					})),
					un(REMOVED_FROM_GAME, q(44261, {	-- Vault of the Wardens: Into the Vault of the Wardens (Mythic)
						un(REMOVED_FROM_GAME, i(141183)),	-- Bag of Confiscated Materials (Mythic)
					})),
					q(44058, {  -- Volpin the Elusive
						["qgs"] = {
							96746,	-- Advisor Sevel <The Earthen Ring>
							110564,	-- Alonsus Faol <Bishop of Secrets>
							108515,	-- Archmage Melis <Mistress of Flame>
							106199,	-- Gakin the Darkbinder <Mission Strategist>
							90250,	-- Lord Grayson Shadowbreaker <Mission Specialist>
							98092,	-- Nikki the Gossip <Tales of Adventure and Profit>
							93568,	-- Siouxsie the Banshee <Mission Specialist>
							98002,	-- Skylord Omnuron <Mission Specialist>
							100635,	-- Skyseer Ghrent
							103023,	-- Tactician Tinderfell <Unseen Path>
							103732,	-- Tylos Darksight <Illidari Helmsman>
						},
						["sourceQuest"] = 44057,	-- A "Noble" Event
						["coord"] = { 17.4, 31.4, SURAMAR },
						["g"] = {
							i(137573),	-- Llothien Prowler (MOUNT!)
						},
					}),
					--[[q(45312, {	-- You Beat the Ball of Meat
						["provider"] = { "i", 143590 },	-- Hunk of Meatball
						["g"] = {
							follower(986),	-- Meatball
						},
					}),--]] -- Linked with the Mission
				}),
			},
		}),
		n(VENDORS, {
			i(143727, {	-- Champion's Salute (TOY!)
				["cost"] = { { "c", 1220, 1000 }, },	-- 1,000x Order Resources
				["timeline"] = { ADDED_7_2_0 },
			}),
		}),
	})),
}));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.LEGION, bubbleDownSelf({ ["timeline"] = { ADDED_7_0_3 } }, {
	n(CLASS_HALL, {
		q(38894),	-- Founded Garrison - founded the order hall
		q(43837),	-- Tracking Quest: Tutorial - Combat Ally Unlocked
		q(44296),	-- Tracking Quest: Finished Rise, Champions - triggers after recruiting your first follower(s)
		q(43900),	-- Tracking Quest: All - Troop A Enabled - completed first tutorial mission
		q(43901),	-- Tracking Quest: All - Troop B Enabled - completed second tutorial mission
		q(43433),	-- Tracking Quest: Tutorial - Troops Built
		q(42115),	-- Tracking Quest: Chapter 1 completed - triggers when you complete the quest that gets your first order hall upgrade
		q(42116),	-- Tracking Quest: Chapter 2 Completed - triggers after completing your first order hall campaign effort
		q(42117),	-- Tracking Quest: Chapter 3 Completed - triggers after completing the first dungeon quest from your order hall leader - order hall bracers unlock
		q(42118),	-- Tracking Quest: Chapter 4 Completed - triggers after completing order hall campaign
		q(43510),	-- Seal of Fate: Class Hall - weekly quest, various sources
		q(48308),	-- Tracking Quest - triggered after obtaining "Azeroth Invasion Plans" (itemID 152316)
		q(48309),	-- Tracking Quest - triggered after obtaining "Discharged Shock Lance" (itemID 152320)
		q(48310),	-- Tracking Quest - triggered after obtaining "Sargerei Manifesto"  (itemID 152324)
		q(48311),	-- Tracking Quest - triggered after obtaining "Sanguine Argunite"  (itemID 152328)
		q(44703),	-- Tracking Quest - 7.0 Special - iLevel 750 - 750 - Fox Mount 1 (44057 - A "Noble" Event)
		q(44704),	-- Tracking Quest - 7.0 Special - iLevel 750 - 750 - Fox Mount 2 (44057 - A "Noble" Event)
		q(44705),	-- Tracking Quest - 7.0 Special - iLevel 750 - 750 - Fox Mount 3 (44057 - A "Noble" Event)
		q(44706),	-- Tracking Quest - 7.0 Special - iLevel 750 - 750 - Fox Mount 4 (44057 - A "Noble" Event)
	}),
})));