---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, {
	m(BROKEN_ISLES, {
		m(BROKEN_SHORE, {
			["icon"] = 1408999,
			["lore"] = "The Broken Shore was introduced to the campaign in Patch 7.2 with World Quests, Armies of Legionfall reputation, Nethershards, and a new dungeon and raid.",
			["timeline"] = { ADDED_7_0_3_LAUNCH },
			["maps"] = { 676 },	-- Broken Shore (Opening Warrior OH map)
			["groups"] = bubbleDown({ ["timeline"] = { ADDED_7_2_0 } }, {
				n(ACHIEVEMENTS, {
					ach(11731),	-- A Magic Contribution
					ach(11732),	-- A Magnificent Contribution
					ach(11796),	-- Armies of Legionfall
					ach(11736),	-- Assume Command
					ach(11546, {	-- Breaching the Tomb
						crit(36598, {	-- Armies of Legionfall
							["sourceQuests"] = { 46730 },	-- Armies of Legionfall
						}),
						crit(36599, {	-- Assault on Broken Shore
							["sourceQuests"] = { 46734 },	-- Assault on Broken Shore
						}),
						crit(36600, {	-- Begin Construction
							["sourceQuests"] = { 46245 },	-- Begin Construction
						}),
						crit(36601, {	-- Aalgen Point
							["sourceQuests"] = { 46832 },	-- Aalgen Point
						}),
						crit(36602, {	-- Vengeance Point
							["sourceQuests"] = { 46845 },	-- Vengeance Point
						}),
						crit(36603, {	-- Defending Broken Isles
							["sourceQuests"] = { 46247 },	-- Defending Broken Isles
						}),
						crit(36604, {	-- Champions of Legionfall
							["sourceQuests"] = { 47137 },	-- Champions of Legionfall
						}),
						crit(36605, {	-- Shard Times
							["sourceQuests"] = { 46251 },	-- Shard Times
						}),
						crit(36606, {	-- Mark of the Sentinax
							["sourceQuests"] = { 47139 },	-- Mark of the Sentinax
						}),
						crit(36607, {	-- Self-Fulfilling Prophecy
							["sourceQuests"] = { 46248 },	-- Self-Fulfilling Prophecy
						}),
						crit(36608, {	-- Intolerable Infestation
							["sourceQuests"] = { 46252 },	-- Intolerable Infestation
						}),
						crit(36609, {	-- Relieved of Thier Valuables
							["sourceQuests"] = { 46769 },	-- Relieved of Their Valuables
						}),
						crit(36610, {	-- Take Out the Head...
							["sourceQuests"] = { 46250 },	-- Take Out the Head...
						}),
						crit(36611, {	-- Championing Our Cause
							["sourceQuests"] = { 46249 },	-- Championing Our Cause
						}),
						crit(36597, {	-- Strike Them Down
							["sourceQuests"] = { 46246 },	-- Strike Them Down
						}),
					}),
					ach(11802, {	-- Bringing Home the Beacon
						crit(36652),	-- Shadow Fracture
						crit(36661),	-- Soul Ruin
						crit(36662),	-- Dark Stockades
						crit(36663),	-- Coast of Anguish
						crit(36664),	-- Garrison of the Fel
						crit(36665),	-- Felfire Pass
						crit(36666),	-- Felrage Strand
						crit(36667),	-- Crescent Ruins
						crit(36668),	-- The Creeping Grotto
					}),
					ach(11737),	-- Disrupting the Nether
					ach(11543),	-- Explore Broken Shore
					ach(11738),	-- It'll Nether Happen
					ach(11545),	-- Legionfall Commander
					ach(11841),	-- Naxt Victim
					ach(11735),	-- Take Command
				}),
				n(EMISSARY_QUESTS, {
					q(48641, {	-- Armies of Legionfall
						["qg"] = 120414,	-- Captain Ruysantos
						["coord"] = { 42.2, 58.8, BROKEN_SHORE },
						["minReputation"] = { FACTION_ARMIES_OF_LEGIONFALL, EXALTED },
						["timeline"] = { ADDED_7_3_0 },
						["isWorldQuest"] = true,
						["groups"] = {
							i(157830, {	-- Legionfall Spoils
								["timeline"] = { ADDED_7_3_5 },
								["sym"] = {{"select","itemID",
									147216,	-- Dauntless Hood
									147221,	-- Dauntless Choker
									147218,	-- Dauntless Spaulders
									147222,	-- Dauntless Cloak
									147213,	-- Dauntless Tunic
									147212,	-- Dauntless Bracers
									147215,	-- Dauntless Gauntlets
									147219,	-- Dauntless Girdle
									147217,	-- Dauntless Leggings
									147214,	-- Dauntless Treads
									147220,	-- Dauntless Ring
									147223,	-- Dauntless Trinket
								}},
							}),
							i(154910, {	-- Legionfall Spoils
								["timeline"] = { ADDED_7_3_2, REMOVED_7_3_5 },
								["sym"] = {
									-- #if AFTER 7.3.5
									{"select","itemID", 157830 },	-- Legionfall Spoils
									-- #else
									{"select","itemID",
										147216,	-- Dauntless Hood
										147221,	-- Dauntless Choker
										147218,	-- Dauntless Spaulders
										147222,	-- Dauntless Cloak
										147213,	-- Dauntless Tunic
										147212,	-- Dauntless Bracers
										147215,	-- Dauntless Gauntlets
										147219,	-- Dauntless Girdle
										147217,	-- Dauntless Leggings
										147214,	-- Dauntless Treads
										147220,	-- Dauntless Ring
										147223,	-- Dauntless Trinket
									},
									-- #endif
								},
							}),
							i(152649, {	-- Legionfall Spoils
								["timeline"] = { ADDED_7_3_0, REMOVED_7_3_2 },
								["sym"] = {
									-- #if AFTER 7.3.2
									{"select","itemID", 157830 },	-- Legionfall Spoils
									-- #elseif AFTER 7.3.2
									{"select","itemID", 154910 },	-- Legionfall Spoils
									-- #else
									{"select","itemID",
										147216,	-- Dauntless Hood
										147221,	-- Dauntless Choker
										147218,	-- Dauntless Spaulders
										147222,	-- Dauntless Cloak
										147213,	-- Dauntless Tunic
										147212,	-- Dauntless Bracers
										147215,	-- Dauntless Gauntlets
										147219,	-- Dauntless Girdle
										147217,	-- Dauntless Leggings
										147214,	-- Dauntless Treads
										147220,	-- Dauntless Ring
										147223,	-- Dauntless Trinket
									},
									-- #endif
								},
							}),
						},
					}),
					q(46777, {	-- The Bounties of Legionfall
						["qg"] = 120414,	-- Captain Ruysantos
						["coord"] = { 42.2, 58.8, BROKEN_SHORE },
						["minReputation"] = { FACTION_ARMIES_OF_LEGIONFALL, EXALTED },
						["repeatable"] = true,
						["groups"] = {
							i(152108, {	-- Legionfall Chest
								["timeline"] = { ADDED_7_2_5 },
								["groups"] = {
									i(147841),	-- Orphaned Felbat (PET!)
								},
							}),
							i(147361, {	-- Legionfall Chest
								["timeline"] = { ADDED_7_2_0, REMOVED_7_2_5 },
								-- #if AFTER 7.2.5
								["sym"] = {{"select", "itemID", 152108},{"pop"}},	-- Legionfall Chest
								-- #else
								["groups"] = {
									i(147841),	-- Orphaned Felbat (PET!)
								},
								-- #endif
							}),
						},
					}),
				}),
				explorationHeader({
					visit_exploration(8715,{coord={39.6,30.1,BROKEN_SHORE}}),	-- Blood Nest
					exploration(8552),	-- Broken Valley
					exploration(8577),	-- Cinder Run
					visit_exploration(8547,{coord={54.5,64.7,BROKEN_SHORE}}),	-- Coast of Anguish
					exploration(8519),	-- Crescent Ruins
					exploration(8602),	-- Dark Stockades
					visit_exploration(8143,{coord={31.6,32.7,BROKEN_SHORE}}),	-- Darkstone Isle
					exploration(8587),	-- Deadwood Landing
					exploration(8554),	-- Deliverance Point
					visit_exploration(8516,{coord={55.6,26.8,BROKEN_SHORE}}),	-- Felbreach Hollow
					visit_exploration(8558,{coord={58.4,54.5,BROKEN_SHORE}}),	-- Feldust Cavern
					exploration(8506),	-- Felfire Pass
					exploration(8548),	-- Felrage Strand
					visit_exploration(8592,{coord={66.5,34.1,BROKEN_SHORE}}),	-- Felsworn Vault
					exploration(8571),	-- Forlorn Depths
					visit_exploration(8557,{coord={61.6,56.8,BROKEN_SHORE}}),	-- Foulshore Strip
					exploration(8551),	-- Garrison of the Fel
					exploration(7798, {	-- Hope's End
						-- NOTE: This is exclusive to the scenario when you attempt to rescue Tirion.
						-- TODO: Determine if you can collect it in there.
						["collectible"] = false,
					}),
					exploration(8530),	-- Impsorrow Approach
					exploration(8576),	-- Jagged Cove
					visit_exploration(8572,{coord={55.1,63.1,BROKEN_SHORE}}),	-- Maw of Corruption
					visit_exploration(8542,{coord={73.2,36.8,BROKEN_SHORE}}),	-- Moonlight Ascent
					exploration(8643),	-- Path of Suffering
					exploration(8580),	-- Scavenger's Edge
					exploration(8555),	-- Screaming Cliffs
					visit_exploration(8593,{coord={43.0,37.3,BROKEN_SHORE}}),	-- Shadow Fracture
					exploration(8590),	-- Soldier's Torment
					exploration(8584),	-- Soul Ruin
					visit_exploration(8603,{coord={38.8,58.8,BROKEN_SHORE}}),	-- Stonefin Shoals
					visit_exploration(8707,{coord={87.7,29.3,BROKEN_SHORE}}),	-- Strand's End
					exploration(8545),	-- The Creeping Grotto
					visit_exploration(8550,{coord={49.7,54.7,BROKEN_SHORE}}),	-- The Hijacked Portal
					visit_exploration(8588,{coord={45.5,66.9,BROKEN_SHORE}}),	-- The Pit of Agony
					exploration(7797, {	-- The Shattered Edge
						-- NOTE: This is exclusive to the scenario when you attempt to rescue Tirion.
						-- TODO: Determine if you can collect it in there.
						["collectible"] = false,
					}),
					exploration(8336),	-- The Tomb of Sargeras
					visit_exploration(8515,{coord={55.3,36.5,BROKEN_SHORE}}),	-- The Twisted Grounds
					exploration(8543),	-- The Weeping Terrace
					exploration(8560),	-- Vengeance Point
					exploration(8553),	-- Wrynnfall
				}),
				n(FACTIONS, {
					faction(FACTION_ARMIES_OF_LEGIONFALL),	-- Armies of Legionfall
				}),
				n(FLIGHT_PATHS, {
					fp(1942, {	-- Aalgen Point, Broken Shore
						["cr"] = 120118,	-- Heidirk the Scalekeeper <Flight Master>
						["coord"] = { 70.6, 47.6, BROKEN_SHORE },
					}),
					fp(1862, {	-- Acherus: The Ebon Hold
						["cr"] = 93465,	-- Grimwing <Flight Master>
						["classes"] = { DEATHKNIGHT },
						["coord"] = { 97.4, 56.0, BROKEN_SHORE },
					}),
					fp(1941, {	-- Deliverance Point, Broken Shore
						["cr"] = 120272,	-- Illidari Calia <Flight Master>
						["coord"] = { 45.2, 64.0, BROKEN_SHORE },
					}),
					fp(1856, {	-- Vengeance Point, Broken Shore
						["cr"] = 111323,	-- Izal Whitemoon <Illidari Flight Master>
						["coord"] = { 49.6, 21.0, BROKEN_SHORE },
					}),
				}),
				n(createHeader({	-- Nether Disruptor
					readable = "Nether Disruptor",
					icon = 1604164,
					text = {
						en = [[~BROKENSHORE_BUILDING_NETHERDISRUPTOR]],
					},
				}), {
					n(QUESTS, {
						q(46736, {	-- Contribute to Nether Disruptor
							["repeatable"] = true,
							["groups"] = {
								currency(1226),	-- 75x Nethershard
							},
						}),
						q(46804, {	-- Fashion History and a Philosophy of Style
							["description"] = "Available for Blacksmithing, Leatherworking, and Tailoring Professions.\n\nYou must turn in the Commendation before this quest becomes available.",
							["sourceQuest"] = 46774,	-- The Nether Disruptor
							["provider"] = { "n", 120221 },	-- Eliezer Hammerbeard
							["coord"] = { 41.1, 59.3, BROKEN_SHORE },
							["cost"] = { { "i", 147451, 1 } },	-- Armorcrafter's Commendation
							["repeatable"] = true,
						}),
					}),
					n(120751, {	-- Unstable Nether Portal
						["questID"] = 47700,	-- triggers after killing your 50 elites for the day
						["description"] = "Use a Nether Portal Disruptor to spawn a rare elite mob while the Nether Disruptor is up. You can summon and kill up to 50 rares this way per day.",
						["coords"] = {
							{ 68.5, 26.0, BROKEN_SHORE },
							{ 36.0, 23.5, BROKEN_SHORE },
							{ 56.5, 35.3, BROKEN_SHORE },
							{ 55.4, 26.3, BROKEN_SHORE },
							{ 54.1, 41.4, BROKEN_SHORE },
							{ 38.2, 45.4, BROKEN_SHORE },
							{ 62.3, 41.2, BROKEN_SHORE },
							{ 55.0, 46.0, BROKEN_SHORE },
							{ 52.2, 10.2, BROKEN_SHORE },
							{ 41.5, 49.2, BROKEN_SHORE },
							{ 36.2, 57.5, BROKEN_SHORE },
							{ 57.3, 56.5, BROKEN_SHORE },
							{ 63.2, 26.2, BROKEN_SHORE },
							{ 66.1, 42.5, BROKEN_SHORE },
							{ 74.5, 34.4, BROKEN_SHORE },
							{ 44.0, 42.4, BROKEN_SHORE },
							{ 47.0, 67.0, BROKEN_SHORE },
							{ 42.2, 18.2, BROKEN_SHORE },
							{ 44.5, 77.0, BROKEN_SHORE },
							{ 54.2, 68.9, BROKEN_SHORE },
							{ 84.0, 54.0, BROKEN_SHORE },
							{ 62.0, 57.0, BROKEN_SHORE },
							{ 86.0, 27.0, BROKEN_SHORE },
							{ 66.0, 32.5, BROKEN_SHORE },
							{ 74.0, 30.6, BROKEN_SHORE },
						},
						["cost"] = { { "i", 147775, 1 } },		-- 1x Nether Portal Disruptor
						["crs"] = {
							121092,	-- Anomalous Observer
							121049,	-- Baleful Knight-Captain
							121090,	-- Demented Shivarra
							121073,	-- Deranged Succubus
							121077,	-- Lambent Felhunter
							121056,	-- Malformed Terrorguard
							121108,	-- Ruinous Overfiend
							121051,	-- Unstable Abyssal
							121068,	-- Volatile Imp
							121088,	-- Warped Voidlord
						},
						["isDaily"] = true,
						["groups"] = {
							i(146912, { ["_drop"] = { "spellID" }, }),	-- Sentinax Beacon of Greater Carnage
							i(146910, { ["_drop"] = { "spellID" }, }),	-- Sentinax Beacon of Greater Domination
							i(146914, { ["_drop"] = { "spellID" }, }),	-- Sentinax Beacon of Greater Engineering
							i(146915, { ["_drop"] = { "spellID" }, }),	-- Sentinax Beacon of Greater Torment
							i(146913, { ["_drop"] = { "spellID" }, }),	-- Sentinax Beacon of Greater Warbeasts
							i(146911, { ["_drop"] = { "spellID" }, }),	-- Sentinax Beacon of the Greater Firestorm
						},
					}),
				}),
				n(createHeader({	-- Nether Portal
					readable = "Nether Portal",
					icon = 607513,
					text = {
						en = "Nether Portal",
						es = "Portal abisal",
						mx = "Portal abisal",
						de = "Netherportal",
						fr = "Portail de Néant",
						it = "Portale Fatuo",
						pt = "Portal Etéreo",
						ru = "Врата Пустоты",
						ko = "황천의 차원문",
						cn = "虚空传送门",
						tw = "虛空傳送門",
					},
					description = {
						en = "After completing The Shadow of the Sentinax quest, uncommon Sentinax Beacons can drop from mobs underneath the Sentinax. You can then use these beacons to summon portals while the Sentinax remains in the area.\n\nEach Sentinax Beacon summons mobs that can drop rare quality Sentinax Beacons of that color that can be used to empower the portals to sometimes have those portals spawn Rares that ultimately can drop the associated Portal Stone (boss).\n\nKeep using all the Rare Sentinax Beacons you get to extend the duration of the Sentinax Beacon. Rare quality Sentinax Beacons can also be acquired by interacting with Unstable Nether Portals when the Nether Disruptor is up. (Not available in Legion Remix!)",
					},
				}), {
					["provider"] = { "o", createCustomObject({	-- Sentinax Portal [Couldn't find the proper objectID, so I faked it.]
						readable = "Sentinax Portal",
						icon = 607513,
						text = {
							en = "Sentinax Portal",
							-- TODO: Find the proper translation so it appears on the tooltip.
							-- es = "",
							-- mx = "",
							-- de = "",
							-- fr = "",
							-- it = "",
							-- pt = "",
							-- ru = "",
							-- ko = "",
							cn = "森提纳克斯号传送门",
							-- tw = "",
						},
					}) },
					["sourceQuest"] = 46935,	-- The Shadow of the Sentinax
					["groups"] = {
						n(RARES, {
							["description"] = "Use an uncommon beacon and then empower the portal using a rare beacon to occasionally spawn a rare mob specific to the type of beacon you used.",
							["groups"] = {
								n(COMMON_BOSS_DROPS, {
									["crs"] = {
										120669,	-- Dark Felshrieker
										120582,	-- Debilitating Eye
										120662,	-- Doombringer
										120663,	-- Doomguard Firecaller
										120581,	-- Draining Eye
										120631,	-- Helfire Infernal
										120679,	-- Mo'arg Bonecrusher
										120680,	-- Mo'arg Brute
										120674,	-- Rotwing Ripper
										120685,	-- Sentinax Warden
										120640,	-- Vile Mother
									},
									["groups"] = {
										i(146922),	-- Sentinax Beacon of Fel Growth
										i(146923),	-- Sentinax Beacon of Petrification
										i(147355),	-- Sentinax Beacon of the Bloodstrike
									},
								}),
								spell(240303, {	-- Greater Carnage Portal (Red)
									["icon"] = 133250,
									["cost"] = {
										{ "i", 146906, 1 },	-- Sentinax Beacon of Carnage
										{ "i", 146912, 1 },	-- Sentinax Beacon of Greater Carnage
									},
									["groups"] = {
										i(146918, {	-- Portal-Stone: Force-Commander Xillious
											["crs"] = {
												120662,	-- Doombringer
												120663,	-- Doomguard Firecaller
											},
										}),
									},
								}),
								spell(240297, {	-- Greater Domination Portal (Blue)
									["icon"] = 133267,
									["cost"] = {
										{ "i", 146903, 1 },	-- Sentinax Beacon of Domination
										{ "i", 146910, 1 },	-- Sentinax Beacon of Greater Domination
									},
									["groups"] = {
										i(146916, {	-- Portal-Stone: Than'otalion
											["crs"] = {
												120582,	-- Debilitating Eye
												120581,	-- Draining Eye
											},
										}),
									},
								}),
								spell(240309, {	-- Greater Engineering Portal (Orange)
									["icon"] = 133257,
									["cost"] = {
										{ "i", 146908, 1 },	-- Sentinax Beacon of Engineering
										{ "i", 146914, 1 },	-- Sentinax Beacon of Greater Engineering
									},
									["groups"] = {
										i(146920, {	-- Portal-Stone: Fel Obliterator
											["crs"] = {
												120679,	-- Mo'arg Bonecrusher
												120680,	-- Mo'arg Brute
											},
										}),
									},
								}),
								spell(240300, {	-- Greater Firestorm Portal (Green)
									["icon"] = 133270,
									["cost"] = {
										{ "i", 146905, 1 },	-- Sentinax Beacon of the Firestorm
										{ "i", 146911, 1 },	-- Sentinax Beacon of the Greater Firestorm
									},
									["groups"] = {
										i(146917, {	-- Portal-Stone: Skulguloth
											["crs"] = {
												120631,	-- Helfire Infernal
												120640,	-- Vile Mother
											},
										}),
									},
								}),
								spell(240312, {	-- Greater Torment Portal (Purple)
									["icon"] = 133254,
									["cost"] = {
										{ "i", 146909, 1 },	-- Sentinax Beacon of Torment
										{ "i", 146915, 1 },	-- Sentinax Beacon of Greater Torment
									},
									["groups"] = {
										i(146921, {	-- Portal-Stone: Illisthyndria
											["cr"] = 120685,	-- Sentinax Warden
										}),
									},
								}),
								spell(240306, {	-- Greater Warbeast Portal (Yellow)
									["icon"] = 133249,
									["cost"] = {
										{ "i", 146907, 1 },	-- Sentinax Beacon of Warbeasts
										{ "i", 146913, 1 },	-- Sentinax Beacon of Greater Warbeasts
									},
									["groups"] = {
										i(146919, {	-- Portal-Stone: An'thyna
											["crs"] = {
												120669,	-- Dark Felshrieker
												120674,	-- Rotwing Ripper
											},
										}),
									},
								}),
							},
						}),
						n(ZONE_DROPS, {
							["description"] = "While under the Sentinax, kill mobs to have them sometimes drop uncommon beacons. Once a portal is open, the mobs summoned can additionally very rarely drop rare quality beacons used to empower the portal.",
							["groups"] = {
								i(146906, { ["_drop"] = { "spellID" }, }),	-- Sentinax Beacon of Carnage
								i(146903, { ["_drop"] = { "spellID" }, }),	-- Sentinax Beacon of Domination
								i(146908, { ["_drop"] = { "spellID" }, }),	-- Sentinax Beacon of Engineering
								i(146909, { ["_drop"] = { "spellID" }, }),	-- Sentinax Beacon of Torment
								i(146907, { ["_drop"] = { "spellID" }, }),	-- Sentinax Beacon of Warbeasts
								i(146905, { ["_drop"] = { "spellID" }, }),	-- Sentinax Beacon of the Firestorm
								spell(240302, {	-- Carnage Portal (Red)
									["icon"] = 133250,
									["cost"] = { { "i", 146906, 1 } },	-- Sentinax Beacon of Carnage
									["groups"] = {
										i(146912, {	-- Sentinax Beacon of Greater Carnage
											["crs"] = {
												120658,	-- Felguard Invader
												120660,	-- Felblade Sentry
												120661,	-- Wrathguard
												120659,	-- Legion Vanguard
											},
											["_drop"] = { "spellID" },
										}),
									},
								}),
								spell(240123, {	-- Domination Portal (Blue)
									["icon"] = 133267,
									["cost"] = { { "i", 146903, 1 } },	-- Sentinax Beacon of Domination
									["groups"] = {
										i(146910, {	-- Sentinax Beacon of Greater Domination
											["crs"] = {
												120577,	-- Darkfiend Devourer
												120578,	-- Battlesworn Nether-Mage
												120580,	-- Dark Ritualist
												120576,	-- Infectious Stalker
												120575,	-- Hungering Stalker
												120579,	-- Felsworn Chaos Mage
											},
											["_drop"] = { "spellID" },
										}),
									},
								}),
								spell(240308, {	-- Engineering Portal (Orange)
									["icon"] = 133257,
									["cost"] = { { "i", 146908, 1 } },	-- Sentinax Beacon of Engineering
									["groups"] = {
										i(146914, {	-- Sentinax Beacon of Greater Engineering
											["crs"] = {
												120676,	-- Putrid Alchemist
												120677,	-- Cursed Pillager
												120678,	-- Gan'arg Engineer
											},
											["_drop"] = { "spellID" },
										}),
									},
								}),
								spell(240299, {	-- Firestorm Portal (Green)
									["icon"] = 133270,
									["cost"] = { { "i", 146905, 1 } },	-- Sentinax Beacon of the Firestorm
									["groups"] = {
										i(146911, {	-- Sentinax Beacon of the Greater Firestorm
											["crs"] = {
												120629,	-- Darkfire Fiend
												120627,	-- Blazing Imp
												120628,	-- Virulent Imp
											},
											["_drop"] = { "spellID" },
										}),
									},
								}),
								spell(240311, {	-- Torment Portal (Purple)
									["icon"] = 133254,
									["cost"] = { { "i", 146909, 1 } },	-- Sentinax Beacon of Torment
									["groups"] = {
										i(146915, {	-- Sentinax Beacon of Greater Torment
											["crs"] = {
												120682,	-- Legion Painmaiden
												120683,	-- Sentinax Interrogator
												120684,	-- Sentinax Observer
											},
											["_drop"] = { "spellID" },
										}),
									},
								}),
								spell(240305, {	-- Warbeast Portal (Yellow)
									["icon"] = 133249,
									["cost"] = { { "i", 146907, 1 } },	-- Sentinax Beacon of Warbeasts
									["groups"] = {
										i(146913, {	-- Sentinax Beacon of Greater Warbeasts
											["crs"] = {
												120666,	-- Legion Webspewer
												120667,	-- Legion Venomretcher
												120668,	-- Spellstalker
											},
											["_drop"] = { "spellID" },
										}),
									},
								}),
							},
						}),
					},
				}),
				n(PROFESSIONS, {
					prof(FISHING, {
						faction(FACTION_IMPUS, {	-- Impus
							["creatureID"] = 120460,
							["coord"] = { 33.9, 49.8, BROKEN_SHORE },
							["description"] = "This Fisherfriend NPC is located at: |cFFFFFFFF33.9, 49.8|r on Deadwood Landing.\n\nThe Fisherfriend NPC's will not always be up and only one is up at any given time. You will have to either travel to the zone, ask a friend or check group finder to see if they are up.\n\nWhen fishing for the item for this particular fisherfriend make sure that you are close enough so that you receive the buff |cFFFFD700Something's Fishy|r, otherwise you won't be able to receive the turn-in items or the boss that is summoned.\n\nIt is recommended to be in a group in order to be able to reach Best Friend the quickest.",
							["requireSkill"] = FISHING,
							["groups"] = {
								i(146963, {	-- Desecrated Seaweed
									-- extra info for the item can go here
								}),
								i(147312, {	-- Crate of Bobbers: Demon Noggin (TOY!)
									["cost"] = { { "i", 146963, 100 } },	-- 100x Desecrated Seaweed
								}),
								i(152554, {	-- Desecrated Seaweed Shirt
									["cost"] = { { "i", 146963, 50 } },	-- 50x Desecrated Seaweed
								}),
								i(133721, {	-- Message in a Bottle
									["cost"] = { { "i", 146963, 25 } },	-- 25x Desecrated Seaweed
									["sym"] = {{"fill"}},
								}),
								i(133723, {	-- Stunned, Angry Shark
									["cost"] = { { "i", 146963, 25 } },	-- 25x Desecrated Seaweed
									["sym"] = {{"fill"}},
								}),
								i(133724, {	-- Decayed Whale Blubber
									["cost"] = { { "i", 146963, 25 } },	-- 25x Desecrated Seaweed
									["sym"] = {{"fill"}},
								}),
								i(124112, {	-- Black Barracuda
									["cost"] = { { "i", 146963, 10 } },	-- 10x Desecrated Seaweed
								}),
							},
						}),
					}),
				}),
				n(QUESTS, {
					q(46268, {	-- A Found Memento
						["provider"] = { "o", 268478 },	-- Battered Trinket
						["coord"] = { 53.5, 80.5, BROKEN_SHORE },
						["timeline"] = { ADDED_7_2_0 },
						["races"] = ALLIANCE_ONLY,
						["groups"] = { i(146408) },	-- Battered Trinket (QI!)
					}),
					q(47097, {	-- A Walk to Remember
						["sourceQuests"] = { 47202 },	-- A Personal Message
						["provider"] = { "n", 121224 },	-- Anduin Wrynn
						["coord"] = { 41.4, 59.4, BROKEN_SHORE },
						["timeline"] = { ADDED_7_2_0 },
						["races"] = ALLIANCE_ONLY,
					}),
					q(46832, {	-- Aalgen Point
						["sourceQuests"] = { 46734 },	-- Assault on Broken Shore
						["provider"] = { "n", 120183 },	-- Commander Chambers
						["coord"] = { 44.4, 63.0, BROKEN_SHORE },
					}),
					q(46245, {	-- Begin Construction
						["sourceQuests"] = { 46286 },	-- Legionfall Supplies
						["provider"] = { "n", 120183 },	-- Commander Chambers
						["coord"] = { 44.4, 63.0, BROKEN_SHORE },
					}),
					q(46904, {	-- Boon of the Command Center (Heavily Augmented)
						["sourceQuests"] = { 46773 },	-- The Command Center
						["provider"] = { "n", 120183 },	-- Commander Chambers
						["coord"] = { 44.4, 63.1, BROKEN_SHORE },
						["repeatable"] = true,	-- technically isOccasional, lol
					}),
					q(46998, {	-- Boon of the Command Center (War Effort)
						["sourceQuests"] = { 46773 },	-- The Command Center
						["provider"] = { "n", 120183 },	-- Commander Chambers
						["coord"] = { 44.4, 63.1, BROKEN_SHORE },
						["repeatable"] = true,	-- technically isOccasional, lol
					}),
					q(46999, {	-- Boon of the Command Center (Well Prepared)
						["sourceQuests"] = { 46773 },	-- The Command Center
						["provider"] = { "n", 120183 },	-- Commander Chambers
						["coord"] = { 44.4, 63.1, BROKEN_SHORE },
						["repeatable"] = true,	-- technically isOccasional, lol
					}),
					q(46997, {	-- Boon of the Command Center (Worthy Champions)
						["sourceQuests"] = { 46773 },	-- The Command Center
						["provider"] = { "n", 120183 },	-- Commander Chambers
						["coord"] = { 44.4, 63.1, BROKEN_SHORE },
						["repeatable"] = true,	-- technically isOccasional, lol
					}),
					q(47007, {	-- Boon of the Mage Tower
						["sourceQuest"] = 46772,	-- The Mage Tower
						["provider"] = { "n", 120183 },	-- Commander Chambers
						["coord"] = { 44.6, 63.2, BROKEN_SHORE },
						["repeatable"] = true,
					}),
					q(47008, {	-- Boon of the Mage Tower
						["sourceQuest"] = 46772,	-- The Mage Tower
						["provider"] = { "n", 120183 },	-- Commander Chambers
						["coord"] = { 44.6, 63.2, BROKEN_SHORE },
						["repeatable"] = true,
					}),
					q(47009, {	-- Boon of the Mage Tower
						["sourceQuest"] = 46772,	-- The Mage Tower
						["provider"] = { "n", 120183 },	-- Commander Chambers
						["coord"] = { 44.6, 63.2, BROKEN_SHORE },
						["repeatable"] = true,
					}),
					q(47010, {	-- Boon of the Mage Tower
						["sourceQuest"] = 46772,	-- The Mage Tower
						["provider"] = { "n", 120183 },	-- Commander Chambers
						["coord"] = { 44.6, 63.2, BROKEN_SHORE },
						["repeatable"] = true,
					}),
					q(47012, {	-- Boon of the Nether Disruptor
						["sourceQuest"] = 46774,	-- The Nether Disruptor
						["provider"] = { "n", 120183 },	-- Commander Chambers
						["coord"] = { 44.6, 63.2, BROKEN_SHORE },
						["repeatable"] = true,
					}),
					q(47014, {	-- Boon of the Nether Disruptor
						["sourceQuest"] = 46774,	-- The Nether Disruptor
						["provider"] = { "n", 120183 },	-- Commander Chambers
						["coord"] = { 44.6, 63.2, BROKEN_SHORE },
						["repeatable"] = true,
					}),
					q(47015, {	-- Boon of the Nether Disruptor
						["sourceQuest"] = 46774,	-- The Nether Disruptor
						["provider"] = { "n", 120183 },	-- Commander Chambers
						["coord"] = { 44.6, 63.2, BROKEN_SHORE },
						["repeatable"] = true,
					}),
					q(47016, {	-- Boon of the Nether Disruptor
						["sourceQuest"] = 46774,	-- The Nether Disruptor
						["provider"] = { "n", 120183 },	-- Commander Chambers
						["coord"] = { 44.6, 63.2, BROKEN_SHORE },
						["repeatable"] = true,
					}),
					q(46244, {	-- Cathedral of Eternal Night: Altar of the Aegis
						["sourceQuests"] = { 46286 },	-- Legionfall Supplies
						["provider"] = { "n", 116302 },	-- Archmage Khadgar
						["coord"] = { 44.6, 63.2, BROKEN_SHORE },
						["groups"] = {
							i(146932),	-- Condensed Storm's Fury
							i(146926),	-- Fel Command Beacon
							i(146928),	-- Heat Absorbing Prism
							i(146933),	-- Highborne Martyr's Blood
							i(146927),	-- Inferno Oil
							i(146925),	-- Mature Morrowsprout
							i(146931),	-- Mephistroth's Rib
							i(146929),	-- Moonstone Figurine
							i(146930),	-- Pure Arcane Powder
							i(146934),	-- Untouched Holy Candle
						},
					}),
					q(46249, {	-- Championing Our Cause
						["sourceQuests"] = { 46250 },	-- Take Out the Head
						["provider"] = { "n", 116302 },	-- Archmage Khadgar
						["coord"] = { 44.6, 63.2, BROKEN_SHORE },
					}),
					q(47137, {	-- Champions of Legionfall
						["description"] = "In addition to the prerequisite quests listed, you must complete your class's Order Hall Campaign to pick up this quest.",
						["sourceQuests"] = {
							-- #IF AFTER 9.1.5
							46734,	-- Assault on Broken Shore
							-- #ELSE
							46247,	-- Defending Broken Isles
							-- #ENDIF
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
						["sourceQuestNumRequired"] = 2,
						["provider"] = { "n", 116576 },	-- Maiev Shadowsong
						["coord"] = { 44.4, 63.4, BROKEN_SHORE },
					}),
					q(46247, {	-- Defending Broken Isles
						["sourceQuests"] = { 46286 },	-- Legionfall Supplies
						["provider"] = { "n", 116576 },	-- Maiev Shadowsong
						["coord"] = { 44.4, 63.4, BROKEN_SHORE },
					}),
					q(46809, {	-- Delivering Lost Knowledge
						["provider"] = { "n", 116302 },	-- Archmage Khadgar
						["coord"] = { 44.7, 63.2, BROKEN_SHORE },
						["classes"] = { DEATHKNIGHT },
						["u"] = REMOVED_FROM_GAME,
					}),
					q(47069, {	-- Delivering Lost Knowledge
						["provider"] = { "n", 116302 },	-- Archmage Khadgar
						["coord"] = { 44.7, 63.2, BROKEN_SHORE },
						["classes"] = { MONK },
						["u"] = REMOVED_FROM_GAME,
					}),
					q(47070, {	-- Delivering Lost Knowledge
						["provider"] = { "n", 116302 },	-- Archmage Khadgar
						["coord"] = { 44.7, 63.2, BROKEN_SHORE },
						["classes"] = { MAGE },
						["u"] = REMOVED_FROM_GAME,
					}),
					q(47071, {	-- Delivering Lost Knowledge
						["provider"] = { "n", 116302 },	-- Archmage Khadgar
						["coord"] = { 44.7, 63.2, BROKEN_SHORE },
						["classes"] = { PALADIN },
						["u"] = REMOVED_FROM_GAME,
					}),
					q(47072, {	-- Delivering Lost Knowledge
						["provider"] = { "n", 116302 },	-- Archmage Khadgar
						["coord"] = { 44.7, 63.2, BROKEN_SHORE },
						["classes"] = { WARRIOR },
						["u"] = REMOVED_FROM_GAME,
					}),
					q(47073, {	-- Delivering Lost Knowledge
						["provider"] = { "n", 116302 },	-- Archmage Khadgar
						["coord"] = { 44.7, 63.2, BROKEN_SHORE },
						["classes"] = { HUNTER },
						["u"] = REMOVED_FROM_GAME,
					}),
					q(47074, {	-- Delivering Lost Knowledge
						["provider"] = { "n", 116302 },	-- Archmage Khadgar
						["coord"] = { 44.7, 63.2, BROKEN_SHORE },
						["classes"] = { SHAMAN },
						["u"] = REMOVED_FROM_GAME,
					}),
					q(47075, {	-- Delivering Lost Knowledge
						["provider"] = { "n", 116302 },	-- Archmage Khadgar
						["coord"] = { 44.7, 63.2, BROKEN_SHORE },
						["classes"] = { DRUID },
						["u"] = REMOVED_FROM_GAME,
					}),
					q(47076, {	-- Delivering Lost Knowledge
						["provider"] = { "n", 116302 },	-- Archmage Khadgar
						["coord"] = { 44.7, 63.2, BROKEN_SHORE },
						["classes"] = { WARLOCK },
						["u"] = REMOVED_FROM_GAME,
					}),
					q(47077, {	-- Delivering Lost Knowledge
						["provider"] = { "n", 116302 },	-- Archmage Khadgar
						["coord"] = { 44.7, 63.2, BROKEN_SHORE },
						["classes"] = { PRIEST },
						["u"] = REMOVED_FROM_GAME,
					}),
					q(47078, {	-- Delivering Lost Knowledge
						["provider"] = { "n", 116302 },	-- Archmage Khadgar
						["coord"] = { 44.7, 63.2, BROKEN_SHORE },
						["classes"] = { DEMONHUNTER },
						["u"] = REMOVED_FROM_GAME,
					}),
					q(47079, {	-- Delivering Lost Knowledge
						["provider"] = { "n", 116302 },	-- Archmage Khadgar
						["coord"] = { 44.7, 63.2, BROKEN_SHORE },
						["classes"] = { ROGUE },
						["u"] = REMOVED_FROM_GAME,
					}),
					q(47040, {	-- Fate Sealed
						["sourceQuest"] = 46774,	-- The Nether Disruptor
						["provider"] = { "n", 121137 },	-- Maggie "Slither" Masterson
						["coord"] = { 41.2, 64.4, BROKEN_SHORE },
						["repeatable"] = true,
					}),
					q(47045, {	-- Further Progress
						["sourceQuest"] = 46774,	-- The Nether Disruptor
						["provider"] = { "n", 121137 },	-- Maggie "Slither" Masterson
						["coord"] = { 41.2, 64.4, BROKEN_SHORE },
						["repeatable"] = true,
					}),
					q(46501, {	-- Grave Robbin'
						["sourceQuests"] = { 46499 },	-- Spiders, Huh?
						["provider"] = { "n", 119886 },	-- Excavator Karla
						["coord"] = { 39.6, 71.7, BROKEN_SHORE },
						["groups"] = {
							o(268510, {	-- Dusty Treasure Chest
								["coords"] = { 49.8, 46.7, BROKEN_SHORE },
								["groups"] = { i(146956) },	-- Promising Treasure Key (QI!)
							}),
							i(146664),	-- Finely-Jeweled Key
						},
					}),
					q(46252, {	-- Intolerable Infestation
						["sourceQuests"] = { 46248 },	-- Self-Fulfilling Prophecy
						["provider"] = { "n", 116576 },	-- Maiev Shadowsong
						["coord"] = { 44.4, 63.4, BROKEN_SHORE },
					}),
					q(46286, {	-- Legionfall Supplies
						["sourceQuests"] = { 46734 },	-- Assault on Broken Shore
						["provider"] = { "n", 120183 },	-- Commander Chambers
						["coord"] = { 44.4, 63.0, BROKEN_SHORE },
					}),
					q(47032, {	-- Legion Threat: Azshara
						["provider"] = { "n", 116302 },	-- Archmage Khadgar
						["coord"] = { 44.6, 63.2, BROKEN_SHORE },
						["classes"] = {
							DEATHKNIGHT,	-- Frost
							DEMONHUNTER,	-- Havoc
							HUNTER,			-- Survival
							ROGUE,			-- Subtlety
							WARRIOR,		-- Arms
						},
						["isBreadcrumb"] = true,
						["DisablePartySync"] = true,
					}),
					q(47030, {	-- Legion Threat: Dalaran Infiltration
						["sourceQuests"] = { 44821 },	-- In Dire Need
						["provider"] = { "n", 116302 },	-- Archmage Khadgar
						["coord"] = { 44.6, 63.2, BROKEN_SHORE },
						["classes"] = {
							DEATHKNIGHT,	-- Blood
							DEMONHUNTER,	-- Vengeance
							DRUID,			-- Guardian
							MONK,			-- Brewmaster
							PALADIN,		-- Protection
							WARRIOR,		-- Protection
						},
						["isBreadcrumb"] = true,
						["DisablePartySync"] = true,
					}),
					q(47031, {	-- Legion Threat: Highmountain
						["sourceQuests"] = { 44821 },	-- In Dire Need
						["provider"] = { "n", 116302 },	-- Archmage Khadgar
						["coord"] = { 44.6, 63.2, BROKEN_SHORE },
						["classes"] = {
							HUNTER,		-- Beast Mastery
							MONK,		-- Windwalker
							PRIEST,		-- Discipline
							WARLOCK,	-- Destruction
						},
						["isBreadcrumb"] = true,
						["DisablePartySync"] = true,
					}),
					q(47033, {	-- Legion Threat: Suramar
						["sourceQuest"] = 44821,	-- In Dire Need
						["provider"] = { "n", 116302 },	-- Archmage Khadgar
						["coord"] = { 44.7, 63.2, BROKEN_SHORE },
						["classes"] = {
							MAGE,		-- Arcane
							PALADIN,	-- Retribution
							ROGUE,		-- Assassination
							SHAMAN,		-- Enhancement
							WARLOCK,	-- Demonology
						},
						["isBreadcrumb"] = true,
						["DisablePartySync"] = true,
					}),
					q(47035, {	-- Legion Threat: The Missing Mage
						["sourceQuest"] = 44821,	-- In Dire Need
						["provider"] = { "n", 116302 },	-- Archmage Khadgar
						["coord"] = { 44.7, 63.2, BROKEN_SHORE },
						["classes"] = {
							DEATHKNIGHT,	-- Unholy
							DRUID,			-- Feral
							MAGE,			-- Fire
							ROGUE,			-- Outlaw
							SHAMAN,			-- Elemental
							WARRIOR,		-- Fury
						},
						["isBreadcrumb"] = true,
						["DisablePartySync"] = true,
					}),
					q(47034, {	-- Legion Threat: The Necromancer
						["sourceQuest"] = 44821,	-- In Dire Need
						["provider"] = { "n", 116302 },	-- Archmage Khadgar
						["coord"] = { 44.7, 63.2, BROKEN_SHORE },
						["classes"] = {
							DRUID,		-- Balance
							HUNTER,		-- Marksmanship
							MAGE,		-- Frost
							PRIEST,		-- Shadow
							WARLOCK,	-- Affliction
						},
						["isBreadcrumb"] = true,
						["DisablePartySync"] = true,
					}),
					q(47027, {	-- Legion Threat: Val'sharah
						["sourceQuest"] = 44821,	-- In Dire Need
						["provider"] = { "n", 116302 },	-- Archmage Khadgar
						["coord"] = { 44.6, 63.2, BROKEN_SHORE },
						["classes"] = {
							DRUID,		-- Restoration
							MONK,		-- Mistweaver
							PALADIN,	-- Holy
							PRIEST,		-- Holy
							SHAMAN,		-- Restoration
						},
						["isBreadcrumb"] = true,
						["DisablePartySync"] = true,
					}),
					q(47112, {	-- Lost Souls
						["sourceQuests"] = { 47097 },	-- A Walk to Remember
						["provider"] = { "n", 121226 },	-- Anduin Wrynn
						["coord"] = { 52.5, 48.4, BROKEN_SHORE },
						["timeline"] = { ADDED_7_2_0 },
						["races"] = ALLIANCE_ONLY,
					}),
					q(47139, {	-- Mark of the Sentinax
						["sourceQuests"] = { 46251 },	-- Shard Times
						["provider"] = { "n", 117873 },	-- Illidan Stormrage
						["coord"] = { 44.6, 63.1, BROKEN_SHORE },
						["groups"] = { i(147582) },	-- Mark of the Sentinax (QI!)
					}),
					q(45193, {	-- One Step Behind
						["sourceQuests"] = { 45192 },	-- Runes of Rending
						["provider"] = { "n", 116175 },	-- Karam Magespear
						["coords"] = {
							{ 59.8, 27.4, BROKEN_SHORE },
							{ 49.6, 39.4, LEGION_DALARAN },
						},
						["classes"] = {
							DRUID,		-- Balance
							HUNTER,		-- Marksmanship
							MAGE,		-- Frost
							PRIEST,		-- Shadow
							WARLOCK,	-- Affliction
						},
					}),
					q(47017, {	-- Only the Best
						["provider"] = { "n", 121081 },	-- Merris Townsend
						["coord"] = { 43.6, 64.0, BROKEN_SHORE },
						["groups"] = {
							i(147432),	-- Champion Equipment
						},
					}),
					q(46253, {	-- Pillars of Creation
						["sourceQuests"] = { 46734 },	-- Assault on Broken Shore
						["qgs"] = {
							116302,	-- Archmage Khadgar
							122799,	-- Archmage Khadgar
						},
						["coord"] = { 44.6, 63.1, BROKEN_SHORE },
					}),
					q(46769, {	-- Relieved of Their Valuables
						["sourceQuests"] = { 46252 },	-- Intolerable Infestation
						["provider"] = { "n", 116302 },	-- Archmage Khadgar
						["coord"] = { 44.6, 63.1, BROKEN_SHORE },
					}),
					q(45192, {	-- Runes of Rending
						["sourceQuests"] = { 45190 },	-- Where it's Thinnest
						["provider"] = { "n", 116175 },	-- Karam Magespear
						["coord"] = { 56.4, 27.2, BROKEN_SHORE },
						["classes"] = {
							DRUID,		-- Balance
							HUNTER,		-- Marksmanship
							MAGE,		-- Frost
							PRIEST,		-- Shadow
							WARLOCK,	-- Affliction
						},
					}),
					q(47067, {	-- Seeking Lost Knowledge
						["provider"] = { "n", 116302 },	-- Archmage Khadgar
						["coord"] = { 44.6, 63.2, BROKEN_SHORE },
						["u"] = REMOVED_FROM_GAME,
					}),
					q(46248, {	-- Self-Fulfilling Prophecy
						["sourceQuests"] = { 47139 },	-- Mark of the Sentinax
						["provider"] = { "n", 120372 },	-- Prophet Velen
						["coord"] = { 44.4, 63.3, BROKEN_SHORE },
					}),
					q(46251, {	-- Shard Times
						["sourceQuests"] = { 47137 },	-- Champions of Legionfall
						["provider"] = { "n", 116302 },	-- Archmage Khadgar
						["coord"] = { 44.6, 63.2, BROKEN_SHORE },
					-- TODO: could theoretically attach each class's champion recruitment to this, which would possibly make more sense?  DH's is 45391
					}),
					q(46510, {	-- Ship Graveyard
						["sourceQuests"] = { 46509 },	-- Tomb Raidering
						["provider"] = { "n", 119886 },	-- Excavator Karla
						["coord"] = { 39.6, 71.7, BROKEN_SHORE },
						["groups"] = {
							o(268512, {	-- Sunken Treasure Chest
								["coord"] = { 54.7, 77.8, BROKEN_SHORE },
								["groups"] = { i(146958) },	-- Wonderfully-Adorned Cloth (QI!)
							}),
							i(146663),	-- Soggy Tapestry
						},
					}),
					q(46499, {	-- Spiders, Huh?
						["sourceQuests"] = { 46734 },	-- Assault on Brokeen Shore
						["provider"] = { "n", 119886 },	-- Excavator Karla
						["coord"] = { 39.6, 71.7, BROKEN_SHORE },
						["groups"] = {
							o(268472, {	-- Spider-Covered Treasure Chest
								["coords"] = { 43.4, 31.2, BROKEN_SHORE },
								["groups"] = { i(146955) },	-- Potentially Precious Gem (QI!)
							}),
						},
					}),
					q(46246, {	-- Strike Them Down
						["sourceQuests"] = { 46249 },	-- Championing Our Cause
						["provider"] = { "n", 116576 },	-- Maiev Shadowsong
						["coord"] = { 44.4, 63.4, BROKEN_SHORE },
					}),
					q(46272, {	-- Summons to the Keep
						["sourceQuests"] = { 46268 },	-- A Found Memento
						["provider"] = { "n", 120281 },	-- Captain Shwayder
						["coord"] = { 41.6, 59.6, BROKEN_SHORE },
						["timeline"] = { ADDED_7_2_0 },
						["races"] = ALLIANCE_ONLY,
					}),
					q(46250, {	-- Take Out the Head...
						["sourceQuests"] = { 46769 },	-- Relieved of Their Valuables
						["provider"] = { "n", 116576 },	-- Maiev Shadowsong
						["coord"] = { 44.4, 63.5, BROKEN_SHORE },
					}),
					q(46765, {	-- The Broken Shore: Investigating the Legion
						["sourceQuests"] = { 46734 },	-- Assault on Broken Shore
						["provider"] = { "n", 116302 },	-- Archmage Khadgar
						["coord"] = { 44.6, 63.2, BROKEN_SHORE },
						["groups"] = {
							i(147430),	-- Mysterious Runebound Scroll (QI!)
						},
					}),
					q(46773, {	-- The Command Center
						["sourceQuest"] = 46245,	-- Begin Construction
						["provider"] = { "n", 120183 },	-- Commander Chambers
						["coord"] = { 44.4, 63.1, BROKEN_SHORE },
					}),
					q(47000, {	-- The Council's Call
						["sourceQuest"] = 46765,	-- The Broken Shore: Investigating the Legion
						["provider"] = { "n", 116302 },	-- Archmage Khadgar
						["coord"] = { 44.6, 63.2, BROKEN_SHORE },
					}),
					q(46805, {	-- The Deceiver's Downfall
						["sourceQuests"] = { 46734 },	-- Assault on Broken Shore
						["qgs"] = {
							120372,	-- Prophet Velen
							122800,	-- Prophet Velen
						},
						["coord"] = { 44.6, 63.2, BROKEN_SHORE },
					}),
					q(46282, {	-- The King's Path
						["sourceQuests"] = { 47112 },	-- Lost Souls
						["provider"] = { "n", 121237 },	-- Anduin Wrynn
						["coord"] = { 58.2, 26.6, BROKEN_SHORE },
						["timeline"] = { ADDED_7_2_0 },
						["races"] = ALLIANCE_ONLY,
					}),
					q(46772, {	-- The Mage Tower
						["sourceQuest"] = 46245,	-- Begin Construction
						["provider"] = { "n", 120183 },	-- Commander Chambers
						["coord"] = { 44.4, 63.1, BROKEN_SHORE },
					}),
					q(46774, {	-- The Nether Disruptor
						["sourceQuest"] = 46245,	-- Begin Construction
						["provider"] = { "n", 120183 },	-- Commander Chambers
						["groups"] = {
							i(147451),	-- Armorcrafter's Commendation
						},
					}),
					q(46666, {	-- The Motherlode
						["sourceQuests"] = { 46511 },	-- We're Treasure Hunters
						["provider"] = { "n", 119886 },	-- Excavator Karla
						["coord"] = { 39.6, 71.7, BROKEN_SHORE },
						["groups"] = {
							i(143559),	-- Wyrmtongue's Cache Key
						},
					}),
					q(46935, {	-- The Shadow of the Sentinax
						["sourceQuests"] = { 46734 },	-- Assault on Broken Shore
						["provider"] = { "i", 147356 },	-- Broken Sentinax Beacon
					}),
					q(54120, {	-- To Orgrimmar
						["sourceQuests"] = { 53778 },	-- Where He Fell
						["qgs"] = {
							145965,	-- Spirit of Vol'jin
							145981,	-- Restless Spirit
						},
						["coord"] = { 62.3, 30.4, BROKEN_SHORE },
						["races"] = HORDE_ONLY,
						["lvl"] = 50,
						["groups"] = { i(165371) },	-- The Glaive of Vol'jin (QI!)
					}),
					q(46509, {	-- Tomb Raidering
						["sourceQuests"] = { 46501 },	-- Grave Robbin'
						["provider"] = { "n", 119886 },	-- Excavator Karla
						["coord"] = { 39.6, 71.7, BROKEN_SHORE },
						["groups"] = {
							o(268511, {	-- Grandiose  Treasure Chest
								["coord"] = { 67.7, 16.5, BROKEN_SHORE },
								["groups"] = { i(146957) },	-- Mysterious Potion (QI!)
							}),
						},
					}),
					q(47054, {	-- Touched By Fate
						["sourceQuest"] = 46774,	-- The Nether Disruptor
						["provider"] = { "n", 121137 },	-- Maggie "Slither" Masterson
						["coord"] = { 41.2, 64.4, BROKEN_SHORE },
						["repeatable"] = true,
					}),
					q(46845, {	-- Vengeance Point
						["sourceQuests"] = { 46832 },	-- Aalgen Point
						["provider"] = { "n", 120118 },	-- Heidirk the Scalekeeper
						["coord"] = { 70.6, 47.5, BROKEN_SHORE },
					}),
					q(46511, {	-- We're Treasure Hunters
						["sourceQuests"] = { 46510 },	-- Ship Graveyard
						["provider"] = { "n", 119886 },	-- Excavator Karla
						["coord"] = { 39.6, 71.7, BROKEN_SHORE },
						["groups"] = {
							o(268513, {	-- Sandy Treasure Chest
								["coord"] = { 75.9, 21.4, BROKEN_SHORE },
								["groups"] = { i(146653) },	-- Ancient Shard of Binding (QI!)
							}),
						},
					}),
					q(53778, {	-- Where He Fell
						["sourceQuests"] = { 53776 },	-- To the Broken Shore
						["provider"] = { "n", 145965 },	-- Spirit of Vol'jin
						["coord"] = { 63.2, 33.3, BROKEN_SHORE },
						["races"] = HORDE_ONLY,
						["lvl"] = 120,
					}),
				}),
				n(RARES, {
					header(HEADERS.Achievement, 11841, {	-- Naxt Victim
						["description"] = "Use the associated Portal-Stone to summon each of these rare elites.",
						["groups"] = {
							n(COMMON_BOSS_DROPS, {
								["crs"] = {
									120675,	-- An'thyna <Venom Queen>
									120681,	-- Fel Obliterator
									120665,	-- Force-Commander Xillious
									120686,	-- Illisthyndria <Keeper of Knives>
									120641,	-- Skulguloth
									120583,	-- Than'otalion
								},
								["groups"] = {
									i(147894),	-- Attack Beacon: Dalaran Underbelly
									i(147889),	-- Attack Beacon: Illidari Stand
									i(147891),	-- Attack Beacon: Starsong Refuge
									i(147893),	-- Attack Beacon: Stormtorn Foothills
									i(147892),	-- Attack Beacon: Skyhorn
									i(146922),	-- Sentinax Beacon of Fel Growth
									i(146923),	-- Sentinax Beacon of Petrification
									i(147355),	-- Sentinax Beacon of the Bloodstrike
								},
							}),
							n(120675, {	-- An'thyna <Venom Queen>
								["provider"] = { "i", 146919 },	-- Portal-Stone: An'thyna
							}),
							n(120681, {	-- Fel Obliterator
								["provider"] = { "i", 146920 },	-- Portal-Stone: Fel Obliterator
							}),
							n(120665, {	-- Force-Commander Xillious
								["provider"] = { "i", 146918 },	-- Portal-Stone: Force-Commander Xillious
							}),
							n(120686, {	-- Illisthyndria <Keeper of Knives>
								["provider"] = { "i", 146921 },	-- Portal-Stone: Illisthyndria
							}),
							n(120641, {	-- Skulguloth
								["provider"] = { "i", 146917 },	-- Portal-Stone: Skulguloth
							}),
							n(120583, {	-- Than'otalion
								["provider"] = { "i", 146916},	-- Portal-Stone: Than'otalion
							}),
						},
					}),
					n(121016, {	-- Aqueux
						["questID"] = 46953,	-- Rare Elite 18
						["isDaily"] = true,
						["coord"] = { 51.9, 78.2, BROKEN_SHORE },
					}),
					n(121029, {	-- Brood Mother Nix
						["questID"] = 46965,	-- Rare Elite 19
						["isDaily"] = true,
						["coord"] = { 39.6, 28.9, BROKEN_SHORE },
					}),
					n(121046, {	-- Brother Badatin
						["questID"] = 47001,	-- Rare Elite 21
						["isDaily"] = true,
						["coord"] = { 78.0, 39.0, BROKEN_SHORE },
					}),
					n(116953, {	-- Corrupted Bonebreaker
						["questID"] = 46101,	-- Rare Elite 12
						["isDaily"] = true,
						["coord"] = { 60.0, 53.0, BROKEN_SHORE },
					}),
					n(117136, {	-- Doombringer Zar'thoz
						["questID"] = 46097,	-- Rare Elite 08
						["isDaily"] = true,
						["coord"] = { 49.0, 38.0, BROKEN_SHORE },
					}),
					n(117095, {	-- Dreadblade Annihilator
						["questID"] = 46098,	-- Rare Elite 09
						["isDaily"] = true,
						["coord"] = { 57.8, 30.1, BROKEN_SHORE },
					}),
					n(118993, {	-- Dreadeye
						["questID"] = 46202,	-- Rare Elite 14
						["isDaily"] = true,
						["coord"] = { 41.0, 79.0, BROKEN_SHORE },
					}),
					n(121134, {	-- Duke Sithizi
						["questID"] = 47036,	-- Rare Elite 24
						["isDaily"] = true,
						["coord"] = { 78.1, 27.9, BROKEN_SHORE },
					}),
					n(117086, {	-- Emberfire
						["questID"] = 46093,	-- Rare Elite 04
						["isDaily"] = true,
						["coord"] = { 51.0, 45.0, BROKEN_SHORE },
					}),
					n(116166, {	-- Eye of Gurgh
						["questID"] = 47068,	-- Rare Elite 25
						["isDaily"] = true,
						["coord"] = { 67.0, 35.0, BROKEN_SHORE },
					}),
					n(117093, {	-- Felbringer Xar'thok
						["questID"] = 46099,	-- Rare Elite 10
						["isDaily"] = true,
						["coord"] = { 58.3, 49.6, BROKEN_SHORE },
					}),
					n(117103, {	-- Felcaller Zelthae
						["questID"] = 46102,	-- Rare Elite 13
						["isDaily"] = true,
						["coord"] = { 88.3, 29.8, BROKEN_SHORE },
					}),
					n(117091, {	-- Felmaw Emberfiend
						["questID"] = 46095,	-- Rare Elite 06
						["isDaily"] = true,
						["coord"] = { 39.0, 42.0, BROKEN_SHORE },
					}),
					n(120998, {	-- Flllurlokkr
						["questID"] = 46951,	-- Rare Elite 17
						["isDaily"] = true,
						["coord"] = { 39.5, 60.0, BROKEN_SHORE },
					}),
					n(121037, {	-- Grossir
						["questID"] = 46995,	-- Rare Elite 20
						["isDaily"] = true,
						["coord"] = { 77.8, 23.9, BROKEN_SHORE },
					}),
					n(119718, {	-- Imp Mother Bruva
						["questID"] = 46313,	-- Rare Elite 16
						["isDaily"] = true,
						["coord"] = { 61.0, 44.0, BROKEN_SHORE },
					}),
					n(117089, {	-- Inquisitor Chillbane
						["questID"] = 46096,	-- Rare Elite 07
						["isDaily"] = true,
						["coord"] = { 61.1, 39.5, BROKEN_SHORE },
					}),
					n(121107, {	-- Lady Eldrathe
						["questID"] = 47026,	-- Rare Elite 22
						["isDaily"] = true,
						["coord"] = { 41.0, 16.0, BROKEN_SHORE },
					}),
					n(119629, {	-- Lord Hel'Nurath
						["questID"] = 46304,	-- Rare Elite 15
						["isDaily"] = true,
						["coord"] = { 45.0, 51.3, BROKEN_SHORE },
						["groups"] = {
							i(142233, {	-- Netherlord's Accursed Wrathsteed (MOUNT!)
								["description"] = "This mount is only available to warlocks who have completed |cFFFFD700The Wrathsteed of Xoroth|r quest from the class mount campaign. \nOnce completed you can kill Lord Hel'Nurath for a 100% chance at getting the mount skin.",
								["sourceQuests"] = { 46243 },	-- The Wrathsteed of Xoroth
								["classes"] = { WARLOCK },
							}),
						},
					}),
					n(117141, {	-- Malgrazoth
						["questID"] = 46090,	-- Rare Elite 01
						["isDaily"] = true,
						["coord"] = { 56.0, 27.3, BROKEN_SHORE },
					}),
					n(117094, {	-- Malorus the Soulkeeper
						["questID"] = 46092,	-- Rare Elite 03
						["isDaily"] = true,
						["coord"] = { 42.0, 42.0, BROKEN_SHORE },
					}),
					n(117096, {	-- Potionmaster Gloop
						["questID"] = 46094,	-- Rare Elite 05
						["isDaily"] = true,
						["coord"] = { 55.3, 56.7, BROKEN_SHORE },
					}),
					n(117140, {	-- Salethan the Broodwalker
						["questID"] = 46091,	-- Rare Elite 02
						["isDaily"] = true,
						["coord"] = { 65.0, 30.0, BROKEN_SHORE },
					}),
					n(121112, {	-- Somber Dawn
						["questID"] = 47028,	-- Rare Elite 23
						["isDaily"] = true,
						["coord"] = { 32.0, 60.0, BROKEN_SHORE },
					}),
					n(117090, {	-- Xorogun the Flamecarver
						["questID"] = 46100,	-- Rare Elite 11
						["isDaily"] = true,
						["coord"] = { 49.2, 48.4, BROKEN_SHORE },
					}),
				}),
				n(TREASURES, {
					o(268551, {	-- Curious Wyrmtongue Cache [Used first one out of many]
						["cost"] = { { "i", 143559, 1 } },	-- Wyrmtongue's Cache Key
						["groups"] = {
							i(147867),	-- Pilfered Sweeper (TOY!)
							i(146953),	-- Scraps (PET!)
						},
					}),
				}),
				n(VENDORS, {
					n(118403, {	-- Syaith <Loaner Demon>
						["description"] = "/kiss her during the Where There is a Whip... WQ.",
						["coord"] = { 49.0, 55.8, BROKEN_SHORE },
						["groups"] = {
							i(147120, {	-- Technique: Grimoire of the Shadow Succubus (RECIPE!)
								["timeline"] = { ADDED_7_2_0 },
							}),
						},
					}),
					n(121589, {	-- Thaumaturge Vashreen <Purveyor of Exquisite Furnishings>
						["timeline"] = { ADDED_7_2_0, REMOVED_7_3_0 },
						["groups"] = {
							i(147796, {	-- Relinquished Hood
								i(146786),	-- Cloth
								i(146772),	-- Leather
								i(146781),	-- Mail
								i(146761),	-- Plate
							}),
							i(147800, {	-- Relinquished Spaulders
								i(146791),	-- Cloth
								i(146774),	-- Leather
								i(146783),	-- Mail
								i(146763),	-- Plate
							}),
							i(147794, {	-- Relinquished Cloak
								i(146766),	-- Cloak
							}),
							i(147793, {	-- Relinquished Chestguard
								i(146789),	-- Cloth
								i(146773),	-- Leather
								i(146784),	-- Mail
								i(146758),	-- Plate
							}),
							i(147786, {	-- Relinquished Bracers
								i(146792),	-- Cloth
								i(146768),	-- Leather
								i(146778),	-- Mail
								i(146765),	-- Plate
							}),
							i(147795, {	-- Relinquished Gauntlets
								i(146787),	-- Cloth
								i(146771),	-- Leather
								i(146779),	-- Mail
								i(146759),	-- Plate
							}),
							i(147791, {	-- Relinquished Girdle
								i(146785),	-- Cloth
								i(146775),	-- Leather
								i(146777),	-- Mail
								i(146760),	-- Plate
							}),
							i(147797, {	-- Relinquished Leggings
								i(146788),	-- Cloth
								i(146770),	-- Leather
								i(146782),	-- Mail
								i(146762),	-- Plate
							}),
							i(147792, {	-- Relinquished Treads
								i(146790),	-- Cloth
								i(146769),	-- Leather
								i(146780),	-- Mail
								i(146764),	-- Plate
							}),
							i(147837, {	-- Relinquished Relics
								i(140086),	-- Intact Infernal Palm (Fel)
							}),
						},
					}),
					n(120076, {	-- Treasure Master Iks'reeged
						["sourceQuests"] = { 46666 },	-- The Motherlode!
						["coord"] = { 47.8, 67.4, BROKEN_SHORE },
						["groups"] = {
							i(142452, {	-- Lingering Wyrmtongue Essence (TOY!)
								["cost"] = { { "c", 1226, 50000 } },	-- 50,000x Nethershard
							}),
							i(143559, {	-- Wyrmtongue's Cache Key
								["cost"] = { { "c", 1226, 2000 } },	-- 2,000x Nethershard
							}),
						},
					}),
					n(120898, {	-- Warmage Kath'leen <Legionfall Artificer>
						["coord"] = { 44.4, 62.2, BROKEN_SHORE },
						["groups"] = bubbleDownClassicRep(FACTION_ARMIES_OF_LEGIONFALL, {
							{		-- Neutral
								i(147451, {	-- Armorcrafter's Commendation
									["cost"] = { { "c", 1226, 1000 } },	-- 1,000x Nethershard
								}),
								iensemble(141372, {	-- Arsenal: Armaments of the Ebon Blade
									["cost"] = { { "c", 1226, 2000 } },	-- 2,000x Nethershard
								}),
								iensemble(141371, {	-- Arsenal: Armaments of the Silver Hand
									["cost"] = { { "c", 1226, 1000 } },	-- 1,000x Nethershard
								}),
								i(139879, {	-- Crate of Champion Equipment
									["cost"] = { { "c", 1226, 250 } },		-- 250x Nethershard
								}),
								i(147212, {	-- Dauntless Bracers
									["cost"] = { { "c", 1226, 400 } },	-- 400x Nethershard
									["groups"] = {
										i(147226),	-- Fel-Treated Bracers
										i(147227),	-- Galvanized Stormscale Bracers
										i(147225),	-- Ley-Touched Bracers
										i(147228),	-- Storm-Tempered Bracers
									},
								}),
								i(147221, {	-- Dauntless Choker
									["cost"] = { { "c", 1226, 400 } },	-- 400x Nethershard
									["groups"] = {
										i(147263),	-- Animus Pendant
									},
								}),
								i(147222, {	-- Dauntless Cloak
									["cost"] = { { "c", 1226, 400 } },	-- 400x Nethershard
									["groups"] = {
										i(147269) -- Unifying Drape
									},
								}),
								i(147215, {	-- Dauntless Gauntlets
									["cost"] = { { "c", 1226, 400 } },	-- 400x Nethershard
									["groups"] = {
										i(147238),	-- Fel-Treated Gauntlets
										i(147239),	-- Galvanized Stormscale Gauntlets
										i(147237),	-- Ley-Touched Gloves
										i(147240),	-- Storm-Tempered Gauntlets
									},
								}),
								i(147219, {	-- Dauntless Girdle
									["cost"] = { { "c", 1226, 400 } },	-- 400x Nethershard
									["groups"] = {
										i(147254),	-- Fel-Treated Belt
										i(147255),	-- Galvanized Stormscale Belt
										i(147253),	-- Ley-Touched Cord
										i(147256),	-- Storm-Tempered Girdle
									},
								}),
								i(147216, {	-- Dauntless Hood
									["cost"] = { { "c", 1226, 400 } },	-- 400x Nethershard
									["groups"] = {
										i(147242),	-- Fel-Treated Hood
										i(147243),	-- Galvanized Stormscale Helm
										i(147241),	-- Ley-Touched Hood
										i(147244),	-- Storm-Tempered Greathelm
									},
								}),
								i(147217, {	-- Dauntless Leggings
									["cost"] = { { "c", 1226, 400 } },	-- 400x Nethershard
									["groups"] = {
										i(147246),	-- Fel-Treated Legguards
										i(147247),	-- Galvanized Stormscale Legguards
										i(147245),	-- Ley-Touched Trousers
										i(147248),	-- Storm-Tempered Legplates
									},
								}),
								i(147220, {	-- Dauntless Ring
									["cost"] = { { "c", 1226, 400 } },	-- 400x Nethershard
									["groups"] = {
										i(147257),	-- Avenging Band
									},
								}),
								i(147218, {	-- Dauntless Spaulders
									["cost"] = { { "c", 1226, 400 } },	-- 400x Nethershard
									["groups"] = {
										i(147250),	-- Fel-Treated Spaulders
										i(147251),	-- Galvanized Stormscale Spaulders
										i(147249),	-- Ley-Touched Mantle
										i(147252),	-- Storm-Tempered Shoulderguard
									},
								}),
								i(147214, {	-- Dauntless Treads
									["cost"] = { { "c", 1226, 400 } },	-- 400x Nethershard
									["groups"] = {
										i(147234),	-- Fel-Treated Boots
										i(147235),	-- Galvanized Stormscale Boots
										i(147233),	-- Ley-Touched Sandals
										i(147236),	-- Storm-Tempered Greaves
									},
								}),
								i(147223, {	-- Dauntless Trinket
									["cost"] = { { "c", 1226, 400 } },	-- 400x Nethershard
									["groups"] = {
										i(147275),	-- Beguiler's Talisman
										i(147276),	-- Spellbinder's Seal
										i(147278),	-- Stalwart Crest
									},
								}),
								i(147213, {	-- Dauntless Tunic
									["cost"] = { { "c", 1226, 400 } },	-- 400x Nethershard
									["groups"] = {
										i(147229),	-- Fel-Treated Chestguard
										i(147230),	-- Galvanized Stormscale Chestguard
										i(147232),	-- Ley-Touched Robes
										i(147231),	-- Storm-Tempered Breastplate
									},
								}),
								i(153006, {	-- Grimoire of Lost Knowledge
									["cost"] = { { "c", 1226, 2500 } },	-- 2,500x Nethershard
								}),
								i(147775, {	-- Nether Portal Disruptor
									["description"] = "Can be used to summon rare elite mobs from Unstable Nether Portals while the Nether Disruptor is up. You can only kill 50 elites per day. It is consumed on use.\n\nCan be bought or sold on the Auction House.",
									["cost"] = { { "c", 1226, 250 } },		-- 250x Nethershard
								}),
								i(146659, {	-- Nethershard Essence
									["cost"] = { { "c", 1226, 8000 } },	-- 8,000x Nethershard
								}),
								i(156630, {	-- Relinquished Armor Set
									["cost"] = { { "c", 1226, 400 } },		-- 1,000x Nethershard
								}),
								i(151541, {	-- Technique: Glyph of Floating Shards (RECIPE!)
									["timeline"] = { ADDED_7_2_5 },
									["cost"] = { { "c", 1226, 2500 } },	-- 2,500x Nethershard
								}),
								i(141067, {	-- Technique: Grimoire of the Wrathguard (RECIPE!)
									["timeline"] = { ADDED_7_2_0 },
									["cost"] = { { "c", 1226, 2500 } },	-- 2,500x Nethershard
								}),
							}, {	-- Friendly
							}, {	-- Honored
								i(147698, {	-- Cauterizing Void Shard
									["cost"] = { { "c", 1226, 5000 } },	-- 5,000x Nethershard
								}),
								i(147864, {	-- Legionfall Banner
									["cost"] = { { "c", 1226, 4000 } },	-- 4,000x Nethershard
								}),
							}, {	-- Revered
								i(130199, {	-- Legion Pocket Portal (TOY!)
									["cost"] = { { "c", 1226, 7500 } },	-- 7,500x Nethershard
								}),
								i(147707, {	-- Repurposed Fel Focuser
									["cost"] = { { "c", 1226, 7500 } },	-- 7,500x Nethershard
								}),
							}, {	-- Exalted
								i(147708, {	-- Legion Invasion Simulator (TOY!)
									["cost"] = { { "c", 1226, 25000 } },	-- 25,000x Nethershard
								}),
								i(147205, {	-- Legionfall Tabard
									["cost"] = { { "c", 1226, 10000 } },	-- 10,000x Nethershard
								}),
							},
						}),
					}),
				}),
				n(WORLD_QUESTS, sharedData({
					["isWorldQuest"] = true,
					-- #if BEFORE DF
					["lvl"] = lvlsquish(110, 110, 45),
					-- #endif
				}, {
					q(46209, {	-- A Flare In The Dark
						["classes"] = { HUNTER },
					}),
					q(45473, {	-- A Giant Problem
						o(267575, {	-- Sunken Cache
							i(146947),	-- Sunken Cargo (QI!)
						}),
					}),
					q(46932),	-- A Tad More Corruption
					q(45988, {	-- Ancient Bones
						o(267642, {	-- Ancient Bones
							["coords"] = {
								{ 50.9, 12.5, BROKEN_SHORE },
								{ 51.8, 12.3, BROKEN_SHORE },
								{ 52.8, 18.8, BROKEN_SHORE },
								{ 53.0, 12.1, BROKEN_SHORE },
								{ 53.1, 13.0, BROKEN_SHORE },
								{ 53.4, 18.1, BROKEN_SHORE },
								{ 53.4, 19.9, BROKEN_SHORE },
								{ 53.8, 17.0, BROKEN_SHORE },
								{ 54.2, 12.8, BROKEN_SHORE },
								{ 54.2, 19.4, BROKEN_SHORE },
								{ 54.4, 17.6, BROKEN_SHORE },
								{ 54.5, 15.3, BROKEN_SHORE },
								{ 55.4, 15.7, BROKEN_SHORE },
								{ 55.5, 16.4, BROKEN_SHORE },
							},
							["groups"] = { i(144238) },	-- Ancient Bones (QI!)
						}),
					}),
					q(46105, {	-- Arachnid Superiority
						i(147206),	-- Potent Venom Sac (QI!)
					}),
					q(46104),	-- Arachnid Toxicity
					q(45694, {	-- Arachnicide
						i(143856),	-- Bolt of Felsilk (QI!)
					}),
					q(46750, {	-- Battery Backup
						i(146892),	-- Battleship Power Core (QI!)
					}),
					q(45559),	-- Behind Enemy Portals
					q(45542, {	-- Behind Enemy Portals
						ach(11681),	-- Crate Expectations
						-- NOTE: There are 3 versions of this world quest but only this one can be used for the achievement!
					}),
					q(45520),	-- Behind Enemy Portals
					q(46073),	-- Break Their Garrison
					q(46761, {	-- Brew Bandits
						["groups"] = {
							i(146896),	-- Hozen Vaulting Staff (QI!)
						},
					}),
					q(46068),	-- Brute Wrangling
					q(46201),	-- By Water Be Purged
					q(46814),	-- Call of the Frostwyrm
					q(44846, {	-- Clearing the Path
						["classes"] = exclude(PALADIN, ALL_CLASSES),
					}),
					q(45178),	-- Contagion Containment
					q(45358),	-- Contagion Containment
					q(45531),	-- Creeping Fel
					q(45837),	-- Creeping Fel
					q(46821),	-- Creepy Crawlies
					q(45969, {	-- Defense of the Ancient
						["classes"] = { DRUID },
					}),
					q(45970),	-- Duty's End
					q(46829, {	-- Elemental Abuse
						["groups"] = {
							i(147283),	-- Air Power Core (QI!)
							i(147284),	-- Earth Power Core (QI!)
							i(147286),	-- Fire Power Core (QI!)
							i(147285),	-- Water Power Core (QI!)
						},
					}),
					q(46288),	-- Everyone to the Front
					q(45878),	-- Exterminating with Impunity
					q(45744),	-- Fall of the Felskorn
					q(47132),	-- Fel Fire and Ice
					q(46126),	-- Fel-Corrupted Feathers
					q(46077, {	-- Felbound Spirits
						["classes"] = { PALADIN },
					}),
					q(46933),	-- Felrglrglrglrgl
					q(45934),	-- Fowl Play
					q(46072),	-- Full Fel
					q(46198, {	-- Gems of Destruction
						i(144362),	-- Pulsating Gem (QI!)
					}),
					q(46212),	-- Get Them Up
					q(40390, {	-- Hallowed Ground
						["classes"] = { PALADIN },
					}),
					q(45985, {	-- Hellish Scavengers
						o(267655, {	-- Ravaged Supplies
							["coords"] = {
								{ 52.4, 55.4, BROKEN_SHORE },
								{ 53.9, 58.6, BROKEN_SHORE },
								{ 54.3, 56.7, BROKEN_SHORE },
								{ 54.4, 58.0, BROKEN_SHORE },
								{ 55.0, 56.7, BROKEN_SHORE },
								{ 56.7, 55.4, BROKEN_SHORE },
								{ 56.7, 56.8, BROKEN_SHORE },
							},
							["groups"] = { i(144240) },	-- Ravaged Supplies (QI!)
						}),
					}),
					q(45541),	-- How Do YOU Like It?!
					q(46066),	-- I Fel Bat For You
					petbattle(q(46112)),	-- Illidari Masters: Madam Viciosa
					petbattle(q(46113)),	-- Illidari Masters: Nameless Mystic
					petbattle(q(46111)),	-- Illidari Masters: Sissix
					q(46817),	-- Infernal Downfall
					q(45743),	-- Judgment of Odyn
					q(45776, {	-- Keys are a Crutch
						["classes"] = { ROGUE },
					}),
					q(45653, {	-- Kill it with Fire!
						["classes"] = { MAGE },
					}),
					q(45472),	-- Kraken Eggs
					q(46308),	-- Leave a Trail
					q(46046, {	-- Life's a Lich
						["classes"] = { DEATHKNIGHT },
						["groups"] = {
							i(144241),	-- Fel-Infused Remains (QI!)
						},
					}),
					q(46754, {	-- Magical Beasts
						["classes"] = { MAGE },
					}),
					q(46707),	-- Minion! Kill That One Too!
					q(46755, {	-- Mission: Felraging
						-- ["classes"] = { ? },
					}),
					q(46756),	-- Mission: Felrage Destruction
					q(46825, {	-- Mud Mucking
						o(268765, {	-- Disturbed Mud
							i(147211),	-- Sparkling Kirin Tor Coin (QI!)
						}),
					}),
					q(46822),	-- Natural Selection
					q(46833),	-- Nature Unshackled
					q(44751),	-- No Soldier Left Behind
					q(45792),	-- Occultist Onslaught
					q(45793, {	-- Occultist Onslaught
						["classes"] = { WARLOCK },
					}),
					q(46752, {	-- On Borrowed Wings
						i(146892),	-- Battleship Power Core (QI!)
					}),
					q(45797),	-- Playing with Green Fire
					q(46180),	-- Power of Our Enemy
					q(45929),	-- Purging the Flames
					q(46075, {	-- Relic Hunting
						o_repeated({	-- Unearthed Antiquities
							o(267768),	-- Precious Antiquity
							o(267769),	-- Precious Antiquity
							o(267770),	-- Precious Antiquity
							i(143851),	-- Precious Antiquity (QI!)
						}),
					}),
					q(46076),	-- Restless Spirits
					q(46175, {	-- Rolling Thunder
						ach(11607),	-- They See Me Rolling
					}),
					q(46001),	-- Rules of the Hunt
					q(45550),	-- Salving the Corruption
					q(45549, {	-- Salving the Corruption
						["classes"] = { HUNTER },
					}),
					q(45626),	-- Set You Up the Bomb!
					q(46360),	-- Simply Stunning
					q(46109),	-- Stand!
					q(46236),	-- Stonebound Soldiers
					q(46762, {	-- Storm Brew Hustle
						["groups"] = {
							i(146896),	-- Hozen Vaulting Staff (QI!)
						},
					}),
					q(46811, {	-- The Broodmother's Wrath
						["classes"] = { DEATHKNIGHT },
					}),
					q(45805, {	-- The Burning Keys
						["groups"] = {
							i(143924),	-- Burning Key (QI!)
						},
					}),
					q(45035),	-- The Call of Battle
					q(46942),	-- The Cost of Power
					q(46160),	-- The Shackled Void
					q(46032),	-- The Tormented Return
					q(46325),	-- The United Front
					q(46063),	-- The Wailing Dead
					q(46866),	-- Torture Chamber
					q(45379),	-- Treasure Master Iks'reeged
					q(45973, {	-- Unchecked Power
						["groups"] = {
							o(268715, {	-- Abjurist's Satchel
								i(146951),	-- Abjurist's Scroll of Knowledge (QI!)
							}),
						},
					}),
					q(45791, {	-- War Materiel
						["groups"] = {
							o(267278, {	-- Fel Crucible
								["coords"] = {
									{ 77.2, 39.7, BROKEN_SHORE },
									{ 78.1, 39.6, BROKEN_SHORE },
									{ 79.0, 38.4, BROKEN_SHORE },
									{ 79.0, 41.1, BROKEN_SHORE },
								},
								["groups"] = { i(143888) },	-- Felslag (QI!)
							}),
							o(267277, {	-- Felslag
								["coords"] = {
									{ 77.2, 40.2, BROKEN_SHORE },
									{ 77.4, 39.0, BROKEN_SHORE },
									{ 77.5, 38.9, BROKEN_SHORE },
									{ 78.3, 41.4, BROKEN_SHORE },
									{ 78.5, 41.1, BROKEN_SHORE },
									{ 78.8, 37.9, BROKEN_SHORE },
									{ 79.2, 42.1, BROKEN_SHORE },
									{ 79.3, 38.7, BROKEN_SHORE },
									{ 79.3, 40.0, BROKEN_SHORE },
									{ 79.4, 42.5, BROKEN_SHORE },
									{ 80.4, 42.6, BROKEN_SHORE },
									{ 80.6, 44.5, BROKEN_SHORE },
									{ 80.9, 43.1, BROKEN_SHORE },
								},
								["groups"] = { i(143888) },	-- Felslag (QI!)
							}),
						},
					}),
					q(45930),	-- We Didn't Start the Fire
					q(45977, {	-- Where There is a Whip...
						["sym"] = {{"select","npcID",118403}},	-- Syaith (special NPC for Inscription Recipe)
					}),
					q(44748, {	-- Winged Terrors
						["groups"] = {
							o_repeated({	-- Shipwrecked Supplies
								["coords"] = {
									{ 45.7, 73.4, BROKEN_SHORE },
									{ 47.0, 70.8, BROKEN_SHORE },
									{ 48.4, 70.9, BROKEN_SHORE },
									{ 48.5, 69.1, BROKEN_SHORE },
									{ 48.5, 73.5, BROKEN_SHORE },
									{ 48.9, 67.4, BROKEN_SHORE },
									{ 48.9, 72.6, BROKEN_SHORE },
									{ 49.0, 70.4, BROKEN_SHORE },
									{ 49.8, 68.3, BROKEN_SHORE },
									{ 49.9, 71.8, BROKEN_SHORE },
									{ 49.9, 72.4, BROKEN_SHORE },
									{ 50.1, 70.9, BROKEN_SHORE },
									{ 50.4, 69.4, BROKEN_SHORE },
								},
								["groups"] = {
									i(142079),	-- Shipwrecked Supplies (QI!)
									o(265551),	-- Shipwrecked Supplies
									o(265552),	-- Shipwrecked Supplies
									o(265554),	-- Shipwrecked Supplies
								},
							}),
						},
					}),
				})),
				n(ZONE_REWARDS, {
					i(146886),	-- Felknight Greatcloak
					i(146857),	-- Mo'arg Overseer's Cloak
					i(134365),	-- Netherwracked Greatcloak
					i(146885),	-- Soulbreaker's Drape
					i(146884),	-- Wyrmtongue Scavenger's Shawl
					i(134392),	-- Netherwhisper Hood
					i(134397),	-- Netherwhisper Mantle
					i(134395),	-- Netherwhisper Robes
					i(134398),	-- Netherwhisper Wristguard
					i(134393),	-- Netherwhisper Gloves
					i(134391),	-- Netherwhisper Cinch
					i(134394),	-- Netherwhisper Leggings
					i(134396),	-- Netherwhisper Slippers
					i(146877),	-- Riven Priesthood Cap
					i(146882),	-- Riven Priesthood Amice
					i(146880),	-- Riven Priesthood Robes
					i(146883),	-- Riven Priesthood Cuffs
					i(146878),	-- Riven Priesthood Mitts
					i(146876),	-- Riven Priesthood Sash
					i(146879),	-- Riven Priesthood Leggings
					i(146881),	-- Riven Priesthood Slippers
					i(134372),	-- Felbat Leather Headguard
					i(134374),	-- Felbat Leather Pauldrons
					i(134373),	-- Felbat Leather Vest
					i(134368),	-- Felbat Leather Wristwraps
					i(134371),	-- Felbat Leather Gloves
					i(134375),	-- Felbat Leather Cinch
					i(134370),	-- Felbat Leather Leggings
					i(134369),	-- Felbat Leather Boots
					i(146863),	-- Lunarblight Headgear
					i(146865),	-- Lunarblight Mantle
					i(146864),	-- Lunarblight Chestpiece
					i(146859),	-- Lunarblight Armbands
					i(146862),	-- Lunarblight Grips
					i(146866),	-- Lunarblight Belt
					i(146861),	-- Lunarblight Trousers
					i(146860),	-- Lunarblight Treads
					i(134387),	-- Mardum Chain Helm
					i(134389),	-- Mardum Chain Pauldrons
					i(134390),	-- Mardum Chain Vest
					i(134384),	-- Mardum Chain Wristclamp
					i(134385),	-- Mardum Chain Gloves
					i(134383),	-- Mardum Chain Waistguard
					i(134388),	-- Mardum Chain Leggings
					i(134386),	-- Mardum Chain Boots
					i(146872),	-- Shrinebreaker Coif
					i(146874),	-- Shrinebreaker Spaulders
					i(146875),	-- Shrinebreaker Chestguard
					i(146869),	-- Shrinebreaker Bracers
					i(146870),	-- Shrinebreaker Gloves
					i(146868),	-- Shrinebreaker Girdle
					i(146873),	-- Shrinebreaker Legguards
					i(146871),	-- Shrinebreaker Boots
					i(146852),	-- Moonshatter Helmet
					i(146854),	-- Moonshatter Pauldrons
					i(146849),	-- Moonshatter Breastplate
					i(146856),	-- Moonshatter Vambraces
					i(146850),	-- Moonshatter Gauntlets
					i(146851),	-- Moonshatter Waistplate
					i(146853),	-- Moonshatter Greaves
					i(146855),	-- Moonshatter Sabatons
					i(134358),	-- Portalguard Helm
					i(134360),	-- Portalguard Shoulders
					i(134355),	-- Portalguard Chestplate
					i(134362),	-- Portalguard Wristguard
					i(134356),	-- Portalguard Gauntlets
					i(134357),	-- Portalguard Waistplate
					i(134359),	-- Portalguard Legplates
					i(134361),	-- Portalguard Warboots
					i(134376),	-- Netherstone Choker
					i(146867),	-- Wrathguard Choker
					-- Misc.
					i(147729, {	-- Netherchunk
						currency(1226),	-- Nethershard
						-- can drop from pretty much any demon-related creature in Legion, but is mainly available on the Broken Shore
					}),
				}),
			}),
		}),
	}),
});


root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.LEGION, bubbleDownSelf({ ["timeline"] = { ADDED_7_2_0 } }, {
	m(BROKEN_ISLES, {
		m(BROKEN_SHORE, {
			n(EMISSARY_QUESTS, {
				q(46802),	-- Paragon of the Legionfall Armies
			}),
			n(QUESTS, {
				q(47038),	-- 7.2 Broken Shore - Buildings - Activation Buff - Nether Disruptor - Seal Your Fate - Day 1 - Tracking
				q(47044),	-- 7.2 Broken Shore - Buildings - Activation Buff - Nether Disruptor - Seal Your Fate - Day 2 - Tracking
				q(47053),	-- 7.2 Broken Shore - Buildings - Activation Buff - Nether Disruptor - Seal Your Fate - Day 3 - Tracking
				q(46870),	-- 7.2 Broken Shore - Buildings - Command Center - Buff Activation - Tracking Quest
				-- q(47021),	-- 7.2 Broken Shore - Buildings - Command Center - Buff - Follower Token - Tracking
				q(46283),	-- 7.2 Broken Shore - Buildings - Mage Tower - Personal Reward Received
				q(46793),	-- 7.2 Broken Shore - Buildings - Mage Tower - Buff Activation - Tracking Quest
				q(46871),	-- 7.2 Broken Shore - Buildings - Nether Disruptor - Buff Activiation - Tracking Quest
				q(46775),	-- Campaign Cooldown - triggers after turning in "Champions of Legionfall" (questID 47137) during the Legionfall Campaign
				q(46735),	-- Contribute to Command Center - during "Begin Construction" quest, not sure if that matters
				q(46277),	-- Contribute to Mage Tower
				q(46709),	-- Ready for Crafted Legendary flag
				q(47590),	-- Tier 3 Mob Daily Bonus (DNT) - Daily kill
				q(46665),	-- Tracking Quest - triggers with "Spiders, Huh?"
				q(46751),	-- Tracking Quest - triggers when turning in "A Found Memento" (#46268)
				q(47092),	-- Working on Crafted Legendary
			}),
		}),
	}),
})));
