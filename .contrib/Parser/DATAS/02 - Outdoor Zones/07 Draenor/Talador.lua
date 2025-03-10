---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

local COMMON_TREASURE_SYM = {{"select","itemID",
	-- Weapons
	116542,	-- Auchenai Axe
	116544,	-- Auchenai Bow
	116543,	-- Auchenai Broadaxe
	116545,	-- Auchenai Crossbow
	116546,	-- Auchenai Dagger
	116557,	-- Auchenai Greatsword
	116549,	-- Auchenai Gun
	116552,	-- Auchenai Hammer
	116548,	-- Auchenai Knuckles
	116550,	-- Auchenai Mace
	116553,	-- Auchenai Spear
	116555,	-- Auchenai Staff
	116554,	-- Auchenai Staff
	116556,	-- Auchenai Sword
	116709,	-- Soulkeeper Ledger
	116551,	-- Soulkeeper Scepter
	116547,	-- Soulkeeper Spellblade
	116558,	-- Soulkeeper Wand
	106562,	-- Stonebreaker Shield
	-- Head
	106584,	-- Deathweb Helm
	106573,	-- Gordunni Cowl
	106558,	-- Stonebreaker Helm
	106568,	-- Teroclaw Hood
	-- Shoulders
	106586,	-- Deathweb Spaulders
	106578,	-- Gordunni Shoulderpads
	106560,	-- Stonebreaker Pauldrons
	106570,	-- Teroclaw Shoulders
	-- Back
	116708,	-- Soulkeeper Cloak
	-- Chest
	106587,	-- Deathweb Vest
	106576,	-- Gordunni Robe
	106555,	-- Stonebreaker Breastplate
	106569,	-- Teroclaw Jerkin
	-- Wrist
	106579,	-- Gordunni Wristwraps
	106563,	-- Stonebreaker Vambraces
	106564,	-- Teroclaw Bindings
	-- Hands
	106582,	-- Deathweb Gauntlets
	106574,	-- Gordunni Handwraps
	106556,	-- Stonebreaker Gauntlets
	106567,	-- Teroclaw Gloves
	-- Waist
	106580,	-- Deathweb Belt
	106572,	-- Gordunni Cord
	106557,	-- Stonebreaker Girdle
	106571,	-- Teroclaw Waistband
	-- Legs
	106585,	-- Deathweb Legguards
	106575,	-- Gordunni Leggings
	106559,	-- Stonebreaker Legplates
	106566,	-- Teroclaw Britches
	-- Feet
	106583,	-- Deathweb Greaves
	106577,	-- Gordunni Sandals
	106561,	-- Stonebreaker Sabatons
	106565,	-- Teroclaw Boots
	-- Junkbox
	116920,	-- True Steel Lockbox
}};

root(ROOTS.Zones, {
	m(DRAENOR, {
		m(TALADOR, {
			["lore"] = "Talador is the sanctuary of the draenei people. At its heart rests Shattrath City, the great metropolis, and the spiritual well of Auchindoun, where the souls of departed draenei reside. Bathed in a perpetual autumn hue, its beautiful olemba forests, gardens and settlements are at risk of decimation by the Iron Horde and the Burning Legion.",
			["icon"] = 1060985,
			["maps"] = {
				536,	-- Tomb of Lights
				537,	-- Tomb of Souls
				538,	-- The Breached Ossuary
				594,	-- Shattrath City (The Battle for Shattrath scenario)
			},
			["groups"] = {
				n(ACHIEVEMENTS, {
					ach(9635),		-- Bobbing for Orcs
					ach(9634),		-- Charged Up
					ach(9633, {		-- Cut off the Head (Shattrath City)
						crit(26465),		-- Bombardier Gu'gok
						crit(26466),		-- Gug'tol
						crit(26467),		-- Haakun the All-Consuming
						crit(26468),		-- Felfire Consort
						crit(26469),		-- Avatar of Socrethar
						crit(26470),		-- Sargerei War Council
						crit(26579),		-- Legion Vanguard
						crit(26580),		-- Xothear, the Destroyer
					}),
					ach(8920, {	-- Don't Let the Tala-door Hit You on the Way Out (A) (unlocks ability to buy Talador Treasure Map from Grakis in Stormshield)
						["races"] = ALLIANCE_ONLY,
						["sym"] = {{ "achievement_criteria" }},
					}),
					ach(8919, {	-- Don't Let the Tala-door Hit You on the Way Out (H) (unlocks ability to buy Gorgrond Treasure Map from Srikka in Warspear)
						["races"] = HORDE_ONLY,
						["sym"] = {{ "achievement_criteria" }},
					}),
					explorationAch(8940),		-- Explore Talador
					ach(9486),		-- Goodness Gracious
					ach(9638, {		-- Heralds of the Legion (Shattrath City)
						["sym"] = {{ "achievement_criteria" }},
					}),
					ach(9674, {	-- I Want More Talador
						["sym"] = {{ "achievement_criteria" }},
					}),
					ach(9637),		-- Poor Communication
					ach(9564, {	-- Securing Draenor (A)
						["collectible"] = false,
						["races"] = ALLIANCE_ONLY,
						["g"] = {
							crit(26258),	-- Assault on Shattrath Harbor
						},
					}),
					ach(9562, {	-- Securing Draenor (Horde)
						["collectible"] = false,
						["races"] = HORDE_ONLY,
						["g"] = {
							crit(26242),	-- Assault on Shattrath Harbor
						},
					}),
					ach(9632),		-- The Power Is Yours
					ach(9636),		-- United We Stand
				}),
				petbattle(filter(BATTLE_PETS, {
					["sym"] = {{"select","speciesID",
						427,	-- Ash Spiderling (PET!)
						452,	-- Red-Tailed Chipmunk (PET!)
						1587,	-- Royal Moth (PET!)
						560,	-- Sea Gull (PET!)
						568,	-- Silkbead Snail (PET!)
						1593,	-- Waterfly (PET!)
					}},
					["groups"] = {
						pet(1572),	--  Brilliant Bloodfeather (PET!)
						pet(1589, {	-- Crimsonwing Moth (PET!)
							["description"] = "Only one is up at a time.  Once captured or killed, it immediately respawns.",
							["coords"] = {
								{ 32.4, 63.6, TALADOR },
								{ 37.0, 63.8, TALADOR },
								{ 38.8, 91.2, TALADOR },
								{ 39.0, 78.2, TALADOR },
								{ 41.0, 69.2, TALADOR },
								{ 42.4, 92.4, TALADOR },
								{ 42.6, 58.0, TALADOR },
								{ 46.4, 86.0, TALADOR },
								{ 47.2, 57.0, TALADOR },
								{ 49.4, 85.8, TALADOR },
								{ 51.4, 31.2, TALADOR },
								{ 53.0, 24.2, TALADOR },
								{ 53.2, 34.4, TALADOR },
								{ 53.2, 87.0, TALADOR },
								{ 53.4, 59.2, TALADOR },
								{ 55.8, 17.4, TALADOR },
								{ 56.4, 36.4, TALADOR },
								{ 57.0, 70.0, TALADOR },
								{ 57.2, 46.4, TALADOR },
								{ 57.4, 55.0, TALADOR },
								{ 60.6, 13.4, TALADOR },
								{ 61.4, 56.0, TALADOR },
								{ 63.8, 60.6, TALADOR },
								{ 66.0, 36.0, TALADOR },
								{ 66.2, 51.8, TALADOR },
								{ 66.6, 17.4, TALADOR },
								{ 67.4, 22.6, TALADOR },
								{ 70.0, 39.2, TALADOR },
								{ 70.4, 54.2, TALADOR },
								{ 71.6, 50.6, TALADOR },
								{ 72.0, 36.6, TALADOR },
								{ 72.2, 41.0, TALADOR },
								{ 74.0, 32.2, TALADOR },
								{ 75.0, 17.8, TALADOR },
							},
						}),
						pet(1595),	--  Flat-Tooth Calf (PET!)
						pet(1583, {	--  Kelp Scuttler (PET!)
							["description"] = "Found on the Orunai Coast, Talador; Tideskorn Harbor, Stormheim; and around Nar'Thalas Academy, Azsuna."
						}),
						pet(1441),	--  Mud Jumper (PET!)
						pet(1599, {	--  Shadow Sporebat (PET!)
							["description"] = "Found only in Zangarra.",
						}),
					},
				})),
				explorationHeader({
					exploration(6925),	-- Anchorite's Sojourn
					visit_exploration(6997,{coord={41.7,85.9,TALADOR}}),	-- Ango'rosh Ruins
					visit_exploration(7141,{coord={52.7,37.8,TALADOR}}),	-- Arch of Sha'tar
					exploration(6948),	-- Archenon Siegeyard
					exploration(6924),	-- Aruuna
					exploration(7084),	-- Aruuna's Desolation
					exploration(7200),	-- Auchindoun
					visit_exploration(7419,{coord={35.4,16.0,TALADOR}}),	-- Beacon of Sha'tar
					exploration(7389),	-- Bladefury's Command
					exploration(6916),	-- Court of Souls
					exploration(6918),	-- Deathweb Hollow
					exploration(6927),	-- Duskfall Island
					visit_exploration(7029,{coord={55.6,69.2,TALADOR}}),	-- Exarch's Refuge
					exploration(7097),	-- Fort Wrynn
					exploration(7112),	-- Frostwolf Overlook
					exploration(7176),	-- Gordal Foothills
					exploration(7131),	-- Gordal Fortress
					exploration(6761),	-- Gul'rok
					visit_exploration(6986,{coord={50.1,53.8,TALADOR}}),	-- Jorune Mine
					visit_exploration(7157,{coord={84.7,30.9,TALADOR}}),	-- Khadgar's Tower
					visit_exploration(6917,{coord={45.3,54.7,TALADOR}}),	-- Liadrin's Watch
					exploration(6950),	-- Mor'gran Logworks
					exploration(7251),	-- Orunai Bay
					exploration(6947),	-- Orunai Coast
					visit_exploration(7500,{coord={63.6,4.20,TALADOR}}),	-- Orunai Delta
					visit_exploration(7020,{coord={43.9,75.9,TALADOR}}),	-- Retribution Point
					visit_exploration(7000,{coord={31.8,74.3,TALADOR}}),	-- Seat of Depravity
					visit_exploration(7453,{coord={41.4,46.5,TALADOR}}),	-- Sha'tar Way Station
					visit_exploration(7417,{coord={43.5,14.3,TALADOR}}),	-- Sha'tari Anchorage
					visit_exploration(7422,{coord={45.5,43.4,TALADOR}}),	-- Sha'tari Market District
					visit_exploration(6937,{coord={71.6,18.6,TALADOR}}),	-- Sharptusk Lake
					visit_exploration(7420,{coord={48.4,31.1,TALADOR}}),	-- Shattrath City
					exploration(6762),	-- Shattrath City Center
					exploration(7421),	-- Shattrath Commons
					visit_exploration(7480,{coord={30.8,29.6,TALADOR}}),	-- Shattrath Overlook
					exploration(7418),	-- Shattrath Port Authority
					exploration(7455),	-- Shattrath Residential District
					visit_exploration(7269,{coord={51.7,44.9,TALADOR}}),	-- Spire of Light
					visit_exploration(7001,{coord={60.5,72.2,TALADOR}}),	-- Sunsworn Camp
					visit_exploration(7191,{coord={40.8,77.3,TALADOR}}),	-- Talador
					exploration(6920),	-- Telmor
					visit_exploration(6933,{coord={70.5,56.9,TALADOR}}),	-- Terokkar Refuge
					visit_exploration(7021,{coord={54.4,61.8,TALADOR}}),	-- The Burning Front
					exploration(7391),	-- The Path of Glory
					visit_exploration(7179,{coord={64.5,81.6,TALADOR}}),	-- Throne of the Witch Lord
					visit_exploration(6949,{coord={62.1,41.5,TALADOR}}),	-- Tuurem
					exploration(6926),	-- Veil Shadar
					exploration(7098),	-- Vol'jin's Pride
					exploration(7115),	-- Zangarra
					exploration(7090),	-- Zorkra's Fall
				}),
				n(FLIGHT_PATHS, {
					fp(1451, {	-- Anchorite's Sojourn, Talador
						["coord"] = { 80.0, 56.6, TALADOR },
						["races"] = ALLIANCE_ONLY,
					}),
					fp(1445, {	-- Durotan's Grasp, Talador
						["coord"] = { 55.4, 40.8, TALADOR },
						["races"] = HORDE_ONLY,
					}),
					fp(1453, {	-- Exarch's Refuge, Talador
						["coord"] = { 54.8, 68.8, TALADOR },
						["races"] = ALLIANCE_ONLY,
					}),
					fp(1454, {	-- Exarch's Refuge, Talador
						["coord"] = { 54.6, 67.8, TALADOR },
						["races"] = HORDE_ONLY,
					}),
					fp(1447, {	-- Fort Wrynn (Alliance), Talador
						["coord"] = { 69.8, 21.4, TALADOR },
						["races"] = ALLIANCE_ONLY,
					}),
					fp(1441, {	-- Frostwolf Overlook, Talador
						["coord"] = { 61.4, 10.6, TALADOR },
						["races"] = HORDE_ONLY,
					}),
					fp(1448, {	-- Redemption Rise, Talador
						["coord"] = { 63.2, 25.8, TALADOR },
						["races"] = ALLIANCE_ONLY,
					}),
					fp(1452, {	-- Retribution Point, Talador
						["coord"] = { 42.0, 76.8, TALADOR },
					}),
					fp(1450, {	-- Shattrath City, Talador
						["coord"] = { 51.2, 42.6, TALADOR },
					}),
					fp(1462, {	-- Terokkar Refuge, Talador
						["coord"] = { 70.4, 57.0, TALADOR },
					}),
					fp(1443, {	-- Vol'jin's Pride, Talador
						["coord"] = { 70.8, 29.4, TALADOR },
						["races"] = HORDE_ONLY,
					}),
					fp(1440, {	-- Zangarra, Talador
						["coord"] = { 80.4, 25.4, TALADOR },
					}),
				}),
				petbattles({ ADDED_6_0_2 }, {
					n(87125, {	-- Taralune <Grand Master Pet Tamer>
						["coord"] = { 49.0, 80.4, TALADOR },
					}),
				}),
				n(QUESTS, {
					header(HEADERS.Achievement, 8987, {	-- Arcane Sanctum
						q(34631, {	-- An Audience With The Archmage
							["provider"] = { "n", 79133 },	-- Foreman Eksos
							["coord"] = { 69.8, 20.8, TALADOR },
							["races"] = ALLIANCE_ONLY,
							["sourceQuest"] = 34558,	-- At Your Command
						}),
						q(34632, {	-- An Audience With The Archmage
							["provider"] = { "n", 79176 },	-- Foreman Grobash
							["coord"] = { 71.0, 29.7, TALADOR },
							["races"] = HORDE_ONLY,
							["sourceQuest"] = 34566,	-- At Your Command
						}),
						q(34609, {	-- Creating the Ink
							["provider"] = { "n", 79392 },	-- Magister Serena
							["coord"] = { 84.9, 30.9, TALADOR },
							["races"] = ALLIANCE_ONLY,
							["sourceQuest"] = 34815,	-- Making Acquaintances
						}),
						q(34634, {	-- Creating the Ink
							["provider"] = { "n", 79393 },	-- Magister Krelas
							["coord"] = { 84.1, 30.2, TALADOR },
							["races"] = HORDE_ONLY,
							["sourceQuest"] = 34814,	-- Making Acquaintances
						}),
						q(34913, {	-- Dropping In
							["provider"] = { "n", 80607 },	-- Magister Serena
							["coord"] = { 62.2, 68.2, TALADOR },
							["races"] = ALLIANCE_ONLY,
							["sourceQuest"] = 34908,	-- The Foot of the Fortress
						}),
						q(34879, {	-- Dropping In
							["provider"] = { "n", 80396 },	-- Magister Krelas
							["coord"] = { 62.2, 68.2, TALADOR },
							["races"] = HORDE_ONLY,
							["sourceQuest"] = 34878,	-- The Foot of the Fortress
						}),
						q(34711, {	-- Due Cause to Celebrate (A)
							["provider"] = { "n", 80617 },	-- Kirin Tor Magus (Magister Serena)
							["coord"] = { 64.2, 81.8, TALADOR },
							["races"] = ALLIANCE_ONLY,
							["sourceQuest"] = 34912,	-- The Final Step
						}),
						q(34712, {	-- Due Cause to Celebrate (H)
							["provider"] = { "n", 80389 },	-- Kirin Tor Magus (Magister Krelas)
							["coord"] = { 64.2, 81.7, TALADOR },
							["races"] = HORDE_ONLY,
							["sourceQuest"] = 34890,	-- The Final Step
						}),
						q(34612, {	-- Forming the Scroll
							["provider"] = { "n", 79392 },	-- Magister Serena
							["coord"] = { 84.9, 30.9, TALADOR },
							["races"] = ALLIANCE_ONLY,
							["sourceQuest"] = 34815,	-- Making Acquaintances
						}),
						q(34635, {	-- Forming the Scroll
							["provider"] = { "n", 79393 },	-- Magister Krelas
							["coord"] = { 84.1, 30.2, TALADOR },
							["races"] = HORDE_ONLY,
							["sourceQuest"] = 34814,	-- Making Acquaintances
						}),
						q(34619, {	-- Gathering the Spark
							["provider"] = { "n", 79392 },	-- Magister Serena
							["coord"] = { 84.9, 30.9, TALADOR },
							["races"] = ALLIANCE_ONLY,
							["sourceQuest"] = 34815,	-- Making Acquaintances
						}),
						q(34636, {	-- Gathering the Spark
							["provider"] = { "n", 79393 },	-- Magister Krelas
							["coord"] = { 84.1, 30.2, TALADOR },
							["races"] = HORDE_ONLY,
							["sourceQuest"] = 34814,	-- Making Acquaintances
						}),
						q(34993, {	-- Joining the Ranks
							["provider"] = { "n", 80672 },	-- Magister Serena
							["coord"] = { 69.7, 20.8, TALADOR },
							["races"] = ALLIANCE_ONLY,
							["sourceQuest"] = 34711,	-- Due Cause to Celebrate
							["g"] = {
								follower(154),	-- Magister Serena
							},
						}),
						q(34949, {	-- Joining the Ranks
							["provider"] = { "n", 80553 },	-- Magister Krelas
							["coord"] = { 71.2, 29.9, TALADOR },
							["races"] = HORDE_ONLY,
							["sourceQuest"] = 34712,	-- Due Cause to Celebrate
							["g"] = {
								follower(154),	-- Magister Krelas
							},
						}),
						q(34814, {	-- Making Acquaintances
							["provider"] = { "n", 80142 },	-- Archmage Khadgar
							["coord"] = { 74.9, 31.1, TALADOR },
							["races"] = HORDE_ONLY,
							["sourceQuest"] = 34632,	-- An Audience With The Archmage
						}),
						q(34815, {	-- Making Acquaintances
							["provider"] = { "n", 80142 },	-- Archmage Khadgar
							["coord"] = { 74.9, 31.1, TALADOR },
							["races"] = ALLIANCE_ONLY,
							["sourceQuest"] = 34631,	-- An Audience With The Archmage
						}),
						q(34875, {	-- Next Steps
							["provider"] = { "n", 79392 },	-- Magister Serena
							["coord"] = { 84.9, 30.9, TALADOR },
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = {
								34609,	-- Creating the Ink
								34612,	-- Forming the Scroll
								34619,	-- Gathering the Spark
							},
						}),
						q(34874, {	-- Next Steps
							["provider"] = { "n", 80193 },	-- Kirin Tor Magus (Magister Krelas)
							["coord"] = { 84.1, 30.2, TALADOR },
							["races"] = HORDE_ONLY,
							["sourceQuests"] = {
								34634,	-- Creating the Ink
								34635,	-- Forming the Scroll
								34636,	-- Gathering the Spark
							},
						}),
						q(34911, {	-- Orbs of Power
							["provider"] = { "n", 80608 },	-- Magister Serena
							["coord"] = { 69.9, 69.4, TALADOR },
							["races"] = ALLIANCE_ONLY,
							["sourceQuest"] = 34913,	-- Dropping In
						}),
						q(34889, {	-- Orbs of Power
							["provider"] = { "n", 80390 },	-- Magister Krelas
							["coord"] = { 68.3, 70.3, TALADOR },
							["races"] = HORDE_ONLY,
							["sourceQuest"] = 34879,	-- Dropping In
						}),
						q(34912, {	-- The Final Step
							["provider"] = { "n", 80608 },	-- Magister Serena
							["coord"] = { 68.0, 80.0, TALADOR },
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = {
								34911,	-- Orbs of Power
								34910,	-- Vicious Viziers
								34909,	-- While We're in the Neighborhood
							},
							["g"] = {
								i(112521),	-- Auchenai Keeper Hood
								i(112522),	-- Sha'tari Deadeye Helm
								i(112520),	-- Sha'tari Keeper Helm
								i(112523),	-- Talador Sentinel Helm
							},
						}),
						q(34890, {	-- The Final Step
							["provider"] = { "n", 80389 },	-- Kirin Tor Magus (Magister Krelas)
							["coord"] = { 68.0, 80.0, TALADOR },
							["races"] = HORDE_ONLY,
							["sourceQuests"] = {
								34889,	-- Orbs of Power
								34888,	-- Vicious Viziers
								34887,	-- While We're in the Neighborhood
							},
							["g"] = {
								i(112521),	-- Auchenai Keeper Hood
								i(112522),	-- Sha'tari Deadeye Helm
								i(112520),	-- Sha'tari Keeper Helm
								i(112523),	-- Talador Sentinel Helm
							},
						}),
						q(34908, {	-- The Foot of the Fortress
							["provider"] = { "n", 80966 },	-- Magister Serena
							["coord"] = { 69.5, 21.0, TALADOR },
							["races"] = ALLIANCE_ONLY,
							["sourceQuest"] = 34875,	-- Next Steps
						}),
						q(34878, {	-- The Foot of the Fortress
							["provider"] = { "n", 80965 },	-- Magister Krelas
							["coord"] = { 71.3, 29.5, TALADOR },
							["races"] = HORDE_ONLY,
							["sourceQuest"] = 34874,	-- Next Steps
						}),
						q(34910, {	-- Vicious Viziers
							["provider"] = { "n", 80608 },	-- Magister Serena
							["coord"] = { 69.9, 69.4, TALADOR },
							["races"] = ALLIANCE_ONLY,
							["sourceQuest"] = 34913,	-- Dropping In
						}),
						q(34888, {	-- Vicious Viziers
							["provider"] = { "n", 80390 },	-- Magister Krelas
							["coord"] = { 68.3, 70.3, TALADOR },
							["races"] = HORDE_ONLY,
							["sourceQuest"] = 34879,	-- Dropping In
						}),
						q(34909, {	-- While We're in the Neighborhood
							["provider"] = { "n", 80608 },	-- Magister Serena
							["coord"] = { 69.9, 69.4, TALADOR },
							["races"] = ALLIANCE_ONLY,
							["sourceQuest"] = 34913,	-- Dropping In
						}),
						q(34887, {	-- While We're in the Neighborhood
							["provider"] = { "n", 80390 },	-- Magister Krelas
							["coord"] = { 68.3, 70.3, TALADOR },
							["races"] = HORDE_ONLY,
							["sourceQuest"] = 34879,	-- Dropping In
						}),
						n(BONUS_OBJECTIVES, {
							q(37421, {	-- Kuuro's Claim
								["coord"] = { 75.1, 23.4, TALADOR },
								["sourceQuests"] = {
									34558,	-- At Your Command (A)
									34566,	-- At Your Command (H)
								}
							}),
						}),
					}),
					n(ARTILLERY_TOWER, {
						q(34982, {	-- Armor Up
							["provider"] = { "n", 80968 },	-- Miall
							["coord"] = { 69.8, 20.7, TALADOR },
							["races"] = ALLIANCE_ONLY,
							["sourceQuest"] = 34981,	-- The Only Way to Travel
							["g"] = {
								follower(155),	-- Miall
							},
						}),
						q(34972, {	-- Armor Up
							["provider"] = { "n", 80623 },	-- Morketh Bladehowl
							["coord"] = { 71.2, 29.9, TALADOR },
							["races"] = HORDE_ONLY,
							["sourceQuest"] = 34971,	-- The Only Way to Travel
							["g"] = {
								follower(155),	-- Morketh Bladehowl
							},
						}),
						q(34976, {	-- Dropping Bombs
							["provider"] = { "n", 80627 },	-- Miall
							["coord"] = { 62.5, 67.8, TALADOR },
							["races"] = ALLIANCE_ONLY,
							["sourceQuest"] = 34578,	-- Going to the Gordunni
						}),
						q(34840, {	-- Dropping Bombs
							["provider"] = { "n", 80229 },	-- Morketh Bladehowl
							["coord"] = { 62.1, 69.2, TALADOR },
							["races"] = HORDE_ONLY,
							["sourceQuest"] = 34837,	-- Going to the Gordunni
						}),
						q(34624, {	-- Gas Guzzlers
							["provider"] = { "n", 79329 },	-- Miall
							["coord"] = { 70.1, 20.1, TALADOR },
							["races"] = ALLIANCE_ONLY,
							["sourceQuest"] = 35045,	-- In Ared's Memory
						}),
						q(34579, {	-- Gas Guzzlers
							["provider"] = { "n", 79356 },	-- Morketh Bladehowl
							["coord"] = { 70.8, 30.4, TALADOR },
							["races"] = HORDE_ONLY,
							["sourceQuest"] = 35102,	-- Unleashed Steel
						}),
						q(34578, {	-- Going to the Gordunni
							["provider"] = { "n", 79329 },	-- Miall
							["coord"] = { 70.1, 20.1, TALADOR },
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = {
								34624,	-- Gas Guzzlers
								34573,	-- Iridium Recovery
								34571,	-- Out of Jovite
							},
						}),
						q(34837, {	-- Going to the Gordunni
							["provider"] = { "n", 79356 },	-- Morketh Bladehowl
							["coord"] = { 70.8, 30.4, TALADOR },
							["races"] = HORDE_ONLY,
							["sourceQuests"] = {
								34579,	-- Gas Guzzlers
								34576,	-- Iridium Recovery
								34577,	-- Out of Jovite
							},
						}),
						q(35045, {	-- In Ared's Memory
							["provider"] = { "n", 79159 },	-- Apprentice Miall
							["coord"] = { 69.2, 19.2, TALADOR },
							["races"] = ALLIANCE_ONLY,
							["sourceQuest"] = 34563,	-- The Quarry Quandary
						}),
						q(34573, {	-- Iridium Recovery
							["provider"] = { "n", 79329 },	-- Miall
							["coord"] = { 70.1, 20.1, TALADOR },
							["races"] = ALLIANCE_ONLY,
							["sourceQuest"] = 35045,	-- In Ared's Memory
						}),
						q(34576, {	-- Iridium Recovery
							["provider"] = { "n", 79356 },	-- Morketh Bladehowl
							["coord"] = { 70.8, 30.4, TALADOR },
							["races"] = HORDE_ONLY,
							["sourceQuest"] = 35102,	-- Unleashed Steel
						}),
						q(34571, {	-- Out of Jovite
							["provider"] = { "n", 79329 },	-- Miall
							["coord"] = { 70.1, 20.1, TALADOR },
							["races"] = ALLIANCE_ONLY,
							["sourceQuest"] = 35045,	-- In Ared's Memory
						}),
						q(34577, {	-- Out of Jovite
							["provider"] = { "n", 79356 },	-- Morketh Bladehowl
							["coord"] = { 70.8, 30.4, TALADOR },
							["races"] = HORDE_ONLY,
							["sourceQuest"] = 35102,	-- Unleashed Steel
						}),
						q(34978, {	-- Prized Repossessions
							["provider"] = { "n", 80628 },	-- Miall
							["coord"] = { 69.9, 69.8, TALADOR },
							["races"] = ALLIANCE_ONLY,
							["sourceQuest"] = 34976,	-- Dropping Bombs
						}),
						q(34858, {	-- Prized Repossessions
							["provider"] = { "n", 80341 },	-- Morketh Bladehowl
							["coord"] = { 62.1, 69.2, TALADOR },
							["races"] = HORDE_ONLY,
							["sourceQuest"] = 34840,	-- Dropping Bombs
						}),
						q(34979, {	-- Punching Through
							["provider"] = { "n", 80628 },	-- Miall
							["coord"] = { 69.9, 69.8, TALADOR },
							["races"] = ALLIANCE_ONLY,
							["sourceQuest"] = 34976,	-- Dropping Bombs
						}),
						q(34855, {	-- Punching Through
							["provider"] = { "n", 80341 },	-- Morketh Bladehowl
							["coord"] = { 62.1, 69.2, TALADOR },
							["races"] = HORDE_ONLY,
							["sourceQuest"] = 34840,	-- Dropping Bombs
						}),
						q(34977, {	-- Supply Recovery
							["provider"] = { "n", 80628 },	-- Miall
							["coord"] = { 69.9, 69.8, TALADOR },
							["races"] = ALLIANCE_ONLY,
							["sourceQuest"] = 34976,	-- Dropping Bombs
						}),
						q(34860, {	-- Supply Recovery
							["provider"] = { "n", 80341 },	-- Morketh Bladehowl
							["coord"] = { 62.1, 69.2, TALADOR },
							["races"] = HORDE_ONLY,
							["sourceQuest"] = 34840,	-- Dropping Bombs
						}),
						q(34980, {	-- The Lord of the Gordunni
							["provider"] = { "n", 80632 },	-- Miall
							["coord"] = { 67.9, 80.0, TALADOR },
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = {
								34978,	-- Prized Repossessions
								34979,	-- Punching Through
								34977,	-- Supply Recovery
							},
							["g"] = {
								i(112521),	-- Auchenai Keeper Hood
								i(112522),	-- Sha'tari Deadeye Helm
								i(112520),	-- Sha'tari Keeper Helm
								i(112523),	-- Talador Sentinel Helm
							},
						}),
						q(34870, {	-- The Lord of the Gordunni
							["provider"] = { "n", 80341 },	-- Morketh Bladehowl
							["races"] = HORDE_ONLY,
							["sourceQuests"] = {
								34858,	-- Prized Repossessions
								34855,	-- Punching Through
								34860,	-- Supply Recovery
							},
							["g"] = {
								i(112521),	-- Auchenai Keeper Hood
								i(112522),	-- Sha'tari Deadeye Helm
								i(112520),	-- Sha'tari Keeper Helm
								i(112523),	-- Talador Sentinel Helm
							},
						}),
						q(34981, {	-- The Only Way to Travel
							["provider"] = { "n", 80630 },	-- Miall
							["coord"] = { 64.5, 81.7, TALADOR },
							["races"] = ALLIANCE_ONLY,
							["sourceQuest"] = 34980,	-- The Lord of the Gordunni
						}),
						q(34971, {	-- The Only Way to Travel
							["provider"] = { "n", 80342 },	-- Morketh Bladehowl
							["coord"] = { 64.4, 81.6, TALADOR },
							["races"] = HORDE_ONLY,
							["sourceQuest"] = 34870,	-- The Lord of the Gordunni
						}),
						q(34569, {	-- The Quarry Quandary
							["provider"] = { "n", 79176 },	-- Foreman Grobash
							["coord"] = { 71.0, 29.7, TALADOR },
							["races"] = HORDE_ONLY,
							["sourceQuest"] = 34566,	-- At Your Command
						}),
						q(34563, {	-- The Quarry Quandary
							["provider"] = { "n", 79133 },	-- Foreman Eksos
							["coord"] = { 69.8, 20.8, TALADOR },
							["races"] = ALLIANCE_ONLY,
							["sourceQuest"] = 34558,	-- At Your Command
						}),
						q(35102, {	-- Unleashed Steel
							["provider"] = { "n", 79210 },	-- Morketh Bladehowl
							["coord"] = { 71.8, 29.4, TALADOR },
							["races"] = HORDE_ONLY,
							["sourceQuest"] = 34569,	-- The Quarry Quandary
						}),
						n(BONUS_OBJECTIVES, {
							q(37422, {	-- Zangarra
								["coord"] = { 83.4, 28.6, TALADOR },
								["sourceQuests"] = {
									34558,	-- At Your Command (A)
									34566,	-- At Your Command (H)
								}
							}),
						}),
					}),
					q(34802, {	-- A Pilgrimage Gone Awry
						["provider"] = { "n", 80028 },	-- Nadur
						["coord"] = { 61.3, 54.4, TALADOR },
						["races"] = ALLIANCE_ONLY,
					}),
					q(34801, {	-- A Pilgrimage Gone Awry?
						["provider"] = { "n", 80028 },	-- Nadur
						["coord"] = { 61.3, 54.4, TALADOR },
						["races"] = HORDE_ONLY,
					}),
					q(34096, {	-- An Eye for a Spy
						["provider"] = { "n", 75874 },	-- Thaelin Darkanvil
						["coord"] = { 63.0, 26.1, TALADOR },
						["races"] = ALLIANCE_ONLY,
						["sourceQuests"] = {
							34959,	-- Dreadpiston
							34095,	-- Iron Them Out
							34094,	-- Vol. X Pages ?
						},
					}),
					q(33728, {	-- An Eye for a Spy
						["provider"] = { "n", 75941 },	-- Gazlowe
						["coord"] = { 55.6, 41.1, TALADOR },
						["races"] = HORDE_ONLY,
						["sourceQuests"] = {
							34950,	-- Dread Piston
							33736,	-- Iron Them Out
							33724,	-- Vol. X Pages ?
						},
					}),
					q(34414, {	-- An'dure The Giant
						["provider"] = { "n", 78515 },	-- Manduil Skycaller
						["coord"] = { 51.6, 50.5, TALADOR },
						["races"] = HORDE_ONLY,
						["sourceQuests"] = {
							34401,	-- Arcane Essence
							34404,	-- Crystals of Unusual Power
						},
					}),
					q(34415, {	-- An'dure The Giant
						["provider"] = { "n", 78513 },	-- Archmage Elandra
						["coord"] = { 51.6, 50.5, TALADOR },
						["races"] = ALLIANCE_ONLY,
						["sourceQuests"] = {
							34403,	-- Arcane Essence
							34406,	-- Caught In The Chaos
						},
					}),
					q(33944, {	-- And the Elekk Too?!
						["coord"] = { 30.9, 70.8, TALADOR },
						["icon"] = 656597,
					}),
					q(33967, {	-- Antivenin
						["provider"] = { "n", 78028 },	-- Soulbinder Tuulani
						["coord"] = { 57.2, 76.9, TALADOR },
						["races"] = ALLIANCE_ONLY,
						["sourceQuest"] = 34452,	-- Light's Rest
					}),
					q(33971, {	-- Antivenin
						["provider"] = { "n", 78028 },	-- Soulbinder Tuulani
						["coord"] = { 60.9, 72.5, TALADOR },
						["races"] = HORDE_ONLY,
						["sourceQuest"] = 34451,	-- Sunsworn Camp
					}),
					q(34403, {	-- Arcane Essence
						["provider"] = { "n", 78513 },	-- Archmage Elandra
						["coord"] = { 51.6, 50.5, TALADOR },
						["races"] = ALLIANCE_ONLY,
						["sourceQuest"] = 34399,	-- Trouble In The Mine
					}),
					q(34401, {	-- Arcane Essence
						["provider"] = { "n", 78515 },	-- Manduil Skycaller
						["coord"] = { 51.6, 50.5, TALADOR },
						["races"] = HORDE_ONLY,
						["sourceQuest"] = 34399,	-- Trouble In The Mine
					}),
					q(33874, {	-- Aruumel's Rest
						["provider"] = { "n", 76665 },	-- Seer Malune
						["coord"] = { 65.4, 50.7, TALADOR },
						["sourceQuests"] = {
							33873,	-- Cure of Aruunem
							33872,	-- Dust of the Dead
						},
						["g"] = {
							i(113033),	-- Auchenai Keeper Handwraps
							i(113032),	-- Sha'tari Deadeye Mitts
							i(113034),	-- Sha'tari Keeper Gauntlets
							i(113035),	-- Talador Sentinel Gauntlets
						},
					}),
					q(34685, {	-- As the Smoke Rises
						["provider"] = { "n", 79573 },	-- Kalaam
						["coord"] = { 69.4, 21.4, TALADOR },
						["isBreadcrumb"] = true,
						["sourceQuestNumRequired"] = 1,
						["sourceQuests"] = {
							34711,	-- Due Cause to Celebrate (alliance, arcane sanctum)
							34712,	-- Due Cause to Celebrate (horde, arcane sanctum)
							34981,	-- The Only Way to Travel (alliance, artillery tower)
							34971,	-- The Only Way to Travel (horde, artillery tower)
						},
					}),
					q(34558, {	-- At Your Command
						["provider"] = { "n", 79133 },	-- Foreman Eksos
						["coord"] = { 69.8, 20.8, TALADOR },
						["races"] = ALLIANCE_ONLY,
						["sourceQuests"] = {
							34676,	-- The Critical Path (board)
							37183,	-- The Critical Path (bodrick grey)
							-- #if AFTER 7.3.5
							49565,	-- Hero's Call: Talador!
							-- #endif
							36495,	-- News From Talador
						},
					}),
					q(34566, {	-- At Your Command
						["provider"] = { "n", 79176 },	-- Foreman Grobash
						["coord"] = { 71.0, 29.7, TALADOR },
						["races"] = HORDE_ONLY,
						["sourceQuests"] = {
							34681,	-- It's a Matter of Strategy (rokhan)
							36953,	-- It's a Matter of Strategy (board)
							-- #if AFTER 7.3.5
							49547,	-- Warchief's Command: Talador!
							-- #endif
						},
					}),
					q(33761, {	-- Barum's Notes
						["provider"] = {"o",225778},	-- Barum's Notes
						["icon"] = 442732,
						["coord"] = { 76.2, 42.7, TALADOR },
						["sourceQuests"] = {
							34566,	-- At Your Command
							34624,	-- Gas Guzzlers (alliance, artillery tower)
							34573,	-- Iridium Recovery (alliance, artillery tower)
							34875,	-- Next Steps (alliance, arcane sanctum)
							34571,	-- Out of Jovite (alliance, artillery tower)
						},
					}),
					q(34164, {	-- Book Burning
						["provider"] = { "n", 77629 },	-- Kor'thos Dawnfury
						["coord"] = { 34.0, 73.9, TALADOR },
						["sourceQuests"] = {
							34092,	-- Desperate Measures
							35227,	-- Ogre Diplomacy (Alliance)
							34122,	-- Ogre Diplomacy (Horde)
						},
					}),
					q(34097, {	-- Born to Shred
						["provider"] = { "n", 75874 },	-- Thaelin Darkanvil
						["coord"] = { 63.0, 26.1, TALADOR },
						["races"] = ALLIANCE_ONLY,
						["sourceQuest"] = 34096,	-- An Eye for a Spy
					}),
					q(33729, {	-- Born to Shred
						["provider"] = { "n", 75941 },	-- Gazlowe
						["coord"] = { 55.6, 41.1, TALADOR },
						["races"] = HORDE_ONLY,
						["sourceQuest"] = 33728,	-- An Eye for a Spy
					}),
					q(33740, {	-- Burning Sky
						["provider"] = { "n", 75896 },	-- Crystal-Shaper Barum
						["coord"] = { 73.0, 38.7, TALADOR },
						["sourceQuests"] = {
							34685,	-- As The Smoke Rises (breadcrumb)
							34711,	-- Due Cause to Celebrate(A)
							34712,	-- Due Cause to Celebrate(H)
						},
					}),
					q(34406, {	-- Caught In The Chaos
						["provider"] = { "n", 78513 },	-- Archmage Elandra
						["coord"] = { 51.6, 50.5, TALADOR },
						["races"] = ALLIANCE_ONLY,
						["sourceQuest"] = 34399,	-- Trouble In The Mine
					}),
					q(34326, {	-- Changing the Tide
						["provider"] = { "n", 77082 },	-- Restalaan
						["coord"] = { 44.8, 90.4, TALADOR },
						["sourceQuest"] = 33976,	-- The Final Piece
					}),
					q(34751, {	-- Clear!
						["provider"] = { "n", 79870 },	-- Ziz Fizziks
						["coord"] = { 64.2, 47.7, TALADOR },
						["races"] = HORDE_ONLY,
					}),
					q(34761, {	-- Clear!
						["provider"] = { "n", 79901 },	-- Torben Zapblast
						["coord"] = { 62.8, 50.3, TALADOR },
						["races"] = ALLIANCE_ONLY,
					}),
					q(34707, {	-- Come Together
						["provider"] = { "n", 77581 },	-- Exarch Maladaar
						["coord"] = { 45.6, 74.0, TALADOR },
						["races"] = ALLIANCE_ONLY,
						["sourceQuest"] = 34154,	-- Destination: Unknown
					}),
					q(34706, {	-- Come Together
						["provider"] = { "n", 77580 },	-- Lady Liadrin
						["coord"] = { 45.6, 74.4, TALADOR },
						["races"] = HORDE_ONLY,
						["sourceQuest"] = 34564,	-- Destination: Unknown
					}),
					q(34404, {	-- Crystals of Unusual Power
						["provider"] = { "n", 78515 },	-- Manduil Skycaller
						["coord"] = { 51.6, 50.5, TALADOR },
						["races"] = HORDE_ONLY,
						["sourceQuest"] = 34399,	-- Trouble In The Mine
					}),
					q(33873, {	-- Cure of Aruunem
						["provider"] = { "n", 76665 },	-- Seer Malune
						["coord"] = { 65.4, 50.7, TALADOR },
					}),
					q(34091, {	-- Decommissioned Mission
						["coord"] = { 61.7, 27.5, TALADOR },
						["races"] = ALLIANCE_ONLY,
						["icon"] = 894222,
						["provider"] = {"o",225726},	-- Iron Shredder Decommission Orders
						["sourceQuests"] = {
							34947,	-- Shredder Manual
							34087,	-- Through the Looking Glass
						},
					}),
					q(33720, {	-- Decommissioned Mission
						["coord"] = { 59.9, 16.4, TALADOR },
						["races"] = HORDE_ONLY,
						["icon"] = 894222,
						["provider"] = {"o",225726},	-- Iron Shredder Decommission Orders
						["sourceQuests"] = {
							34948,	-- Shredder Manual
							33754,	-- Through the Looking Glass
						},
					}),
					q(34092, {	-- Desperate Measures
						["provider"] = { "n", 77799 },	-- Restalaan
						["coord"] = { 43.4, 75.9, TALADOR },
						["sourceQuest"] = 34326,	-- TODO: Changing the Tide (verify if "Never Forget" and "Payback" are also needed)
					}),
					q(34154, {	-- Destination: Unknown
						["provider"] = { "n", 77582 },	-- Soulbinder Nyami
						["coord"] = { 31.2, 73.6, TALADOR },
						["races"] = ALLIANCE_ONLY,
						["sourceQuest"] = 34157,	-- Into the Heart of Madness
						["g"] = {
							i(113015),	-- Auchenai Preserver's Loop
							i(119069),	-- Auchenai Protector's Seal
							i(119061),	-- Auchenai Soultender's Ring
							i(113016),	-- Band of the Auchenai Anchorite
							i(113014),	-- Seal of the Auchenai Guardian
						},
					}),
					q(34564, {	-- Destination: Unknown
						["provider"] = { "n", 77582 },	-- Soulbinder Nyami
						["coord"] = { 31.2, 73.6, TALADOR },
						["races"] = HORDE_ONLY,
						["sourceQuest"] = 34157,	-- Into the Heart of Madness
						["g"] = {
							i(113015),	-- Auchenai Preserver's Loop
							i(119069),	-- Auchenai Protector's Seal
							i(119061),	-- Auchenai Soultender's Ring
							i(113016),	-- Band of the Auchenai Anchorite
							i(113014),	-- Seal of the Auchenai Guardian
						},
					}),
					q(33917, {	-- Disrupting the Flow
						["provider"] = { "n", 78482 },	-- Vindicator Nobundo
						["coord"] = { 56.7, 65.8, TALADOR },
						["sourceQuestNumRequired"] = 1,
						["sourceQuests"] = {
							34711,	-- Due Cause to Celebrate (alliance, arcane sanctum)
							34712,	-- Due Cause to Celebrate (horde, arcane sanctum)
							34981,	-- The Only Way to Travel (alliance, artillery tower)
							34971,	-- The Only Way to Travel (horde, artillery tower)
						},
					}),
					q(34959, {	-- Dreadpiston
						["provider"] = { "n", 75803 },	-- Vindicator Maraad
						["coord"] = { 63.0, 25.8, TALADOR },
						["races"] = ALLIANCE_ONLY,
						["sourceQuest"] = 34088,	-- Too Many Irons in the Fire
					}),
					q(34950, {	-- Dreadpiston
						["provider"] = { "n", 75958 },	-- Durotan
						["coord"] = { 58.9, 20.2, TALADOR },
						["races"] = HORDE_ONLY,
						["sourceQuests"] = {
							35226,	-- Old Friends, New Enemies
							33722,	-- Too Many Irons in the Fire
						},
					}),
					q(33872, {	-- Dust of the Dead
						["provider"] = { "n", 76665 },	-- Seer Malune
						["coord"] = { 65.4, 50.7, TALADOR },
						["sourceQuests"] = {
							33871,	-- Seek Out the Seer
							34721,	-- Seek Out the Seer
						},
					}),
					q(33973, {	-- Dying Wish
						["provider"] = { "n", 77031 },	-- Ahm
						["coord"] = { 56.9, 25.9, TALADOR },
					}),
					q(34098, {	-- Engineering Her Demise
						["provider"] = { "n", 75968 },	-- Iron Shredder Prototype
						["coord"] = { 61.0, 38.4, TALADOR },
						["races"] = ALLIANCE_ONLY,
						["sourceQuest"] = 34097,	-- Born to Shred
						["g"] = {
							i(113054),	-- Broken Shredder Blade
							i(113052),	-- Camshaft-Haft Greatcleaver
							i(113051),	-- Iron Shredder Axle
							i(113053),	-- Iron Shredder Doohickey
							i(113050),	-- Ketya's Boomstick
							i(113057),	-- Maintenance Downtime Hatchet
							i(113056),	-- Multi-Purpose Shredder Hydraulic Lever
							i(113055),	-- Serrated Sawblade Axe
						},
					}),
					q(33730, {	-- Engineering Her Demise
						["provider"] = { "n", 75968 },	-- Iron Shredder Prototype
						["coord"] = { 61.0, 38.4, TALADOR },
						["races"] = HORDE_ONLY,
						["sourceQuest"] = 33729,	-- Born to Shred
						["g"] = {
							i(113054),	-- Broken Shredder Blade
							i(113052),	-- Camshaft-Haft Greatcleaver
							i(113051),	-- Iron Shredder Axle
							i(113053),	-- Iron Shredder Doohickey
							i(113050),	-- Ketya's Boomstick
							i(113057),	-- Maintenance Downtime Hatchet
							i(113056),	-- Multi-Purpose Shredder Hydraulic Lever
							i(113055),	-- Serrated Sawblade Axe
						},
					}),
					q(34709, {	-- Every Bit Counts (A)
						["provider"] = { "n", 79689 },	-- Aeun
						["coord"] = { 56.0, 68.3, TALADOR },
						["races"] = ALLIANCE_ONLY,
						["isBreadcrumb"] = true,
					}),
					q(34710, {	-- Every Bit Counts (H)
						["provider"] = { "n", 79696 },	-- Ranger Belonis
						["coord"] = { 55.3, 66.7, TALADOR },
						["races"] = HORDE_ONLY,
						["isBreadcrumb"] = true,
					}),
					q(33581, {	-- Forbidden Knowledge
						["provider"] = { "n", 75323 },	-- Darkscryer Raastok
						["coord"] = { 70.5, 57.3, TALADOR },
						["sourceQuest"] = 33579,	-- What the Draenei Found
					}),
					q(34400, {	-- Frenzied Manafeeders
						["provider"] = { "n", 78534 },	-- Ageilaa
						-- #if AFTER 7.0.3
						["description"] = "High-level players may require |cff0070ddSoft Foam Sword|r to lower creature health to 10%.",
						-- #endif
						["crs"] = { 78390 },	-- Frenzied Manafeeder NPC
						["coord"] = { 49.8, 56.1, TALADOR },
					}),
					q(34777, {	-- Gatekeepers of Auchindoun
						["provider"] = { "n", 79979 },	-- Defender Illona
						["coord"] = { 57.4, 51.1, TALADOR },
						["races"] = ALLIANCE_ONLY,
					}),
					q(34776, {	-- Gatekeepers of Auchindoun
						["provider"] = { "n", 79978 },	-- Aeda Brightdawn
						["coord"] = { 58.0, 53.0, TALADOR },
						["races"] = HORDE_ONLY,
					}),
					q(33721, {	-- Gazlowe's Solution
						["provider"] = { "n", 75873 },	-- Gazlowe
						["coord"] = { 62.0, 10.4, TALADOR },
						["races"] = HORDE_ONLY,
						["g"] = {
							i(113024),	-- "Reliable" Threat Assessor
							i(113025),	-- External Combustion Engine
							i(113023),	-- Foolproof Targeting Mechanism
						},
					}),
					heroscall(q(49565, {	-- Hero's Call: Talador!
						["timeline"] = { ADDED_7_3_5 },
						["DisablePartySync"] = true,
						["isBreadcrumb"] = true,
						["lvl"] = 94,
					})),
					q(34163, {	-- Hiding in the Shadows
						["provider"] = {"o",227737},	-- Shadow Council Communicator
						["coord"] = { 37.2, 79.3, TALADOR },
						["sourceQuests"] = {
							34092,	-- Desperate Measures
							35227,	-- Ogre Diplomacy (Alliance)
							34122,	-- Ogre Diplomacy (Horde)
						},
					}),
					q(34407, {	-- Holding the Line
						["provider"] = { "n", 75119 },	-- Exarch Maladaar
						["coord"] = { 55.6, 67.7, TALADOR },
						["races"] = ALLIANCE_ONLY,
						["sourceQuestNumRequired"] = 1,
						["sourceQuests"] = {
							34711,	-- Due Cause to Celebrate (alliance, arcane sanctum)
							34981,	-- The Only Way to Travel (alliance, artillery tower)
						},
					}),
					q(34418, {	-- Holding the Line
						["provider"] = { "n", 75121 },	-- Lady Liadrin
						["coord"] = { 55.4, 67.6, TALADOR },
						["races"] = HORDE_ONLY,
						["sourceQuests"] = {
							34696,	-- The Lady of Light (breadcrumb)
							34971,	-- The Only Way to Travel
						},
					}),
					q(34089, {	-- In Short Supply
						["provider"] = { "n", 75804 },	-- Yrel
						["coord"] = { 63.0, 25.8, TALADOR },
						["races"] = ALLIANCE_ONLY,
						["sourceQuest"] = 34087,	-- Through the Looking Glass
					}),
					q(33735, {	-- In Short Supply -- missing sourceQuests
						["provider"] = { "n", 75808 },	-- Draka
						["races"] = HORDE_ONLY,
						["coords"] = {
							{ 62.0, 10.9, TALADOR },
							{ 62.0, 10.9, TALADOR },
							{ 55.6, 41.0, TALADOR },
						},
					}),
					q(34157, {	-- Into the Heart of Madness
						["provider"] = { "n", 75392 },	-- Exarch Maladaar
						["coord"] = { 42.9, 76.1, TALADOR },
						["sourceQuests"] = {
							34092,	-- Desperate Measures
							35227,	-- Ogre Diplomacy (Alliance)
							34122,	-- Ogre Diplomacy (Horde)
						},
					}),
					q(33958, {	-- Into the Hollow
						["provider"] = { "n", 75256 },	-- Soulbinder Nyami
						["coord"] = { 57.1, 76.9, TALADOR },
						["races"] = ALLIANCE_ONLY,
						["sourceQuest"] = 34452,	-- Light's Rest
						["g"] = {
							i(112528),	-- Auchenai Keeper Robe
							i(112510),	-- Sha'tari Deadeye Vest
							i(112509),	-- Sha'tari Keeper Chestplate
							i(112511),	-- Talador Sentinel Vest
						},
					}),
					q(33970, {	-- Into the Hollow
						["provider"] = { "n", 75256 },	-- Soulbinder Nyami
						["coord"] = { 60.9, 72.4, TALADOR },
						["races"] = HORDE_ONLY,
						["sourceQuest"] = 34451,	-- Sunsworn Camp
						["g"] = {
							i(112528),	-- Auchenai Keeper Robe
							i(112510),	-- Sha'tari Deadeye Vest
							i(112509),	-- Sha'tari Keeper Chestplate
							i(112511),	-- Talador Sentinel Vest
						},
					}),
					q(33988, {	-- Invasion of the Soul Eaters
						["provider"] = {"o",227069},	-- Hastily Written Note
						["icon"] = 454060,
						["coord"] = { 49.1, 88.0, TALADOR },
						["sourceQuests"] = {
							34240,	-- Scheduled Pickup (Alliance)
							34242,	-- Scheduled Pickup (Horde)
						},
					}),
					q(33736, {	-- Iron Them Out
						["provider"] = { "n", 75808 },	-- Draka
						["races"] = HORDE_ONLY,
						["sourceQuest"] = 33735,	-- In Short Supply
						["coords"] = {
							{ 62.0, 10.9, TALADOR },
							{ 62.0, 10.9, TALADOR },
							{ 55.6, 41.0, TALADOR },
						},
					}),
					q(34095, {	-- Iron Them Out
						["provider"] = { "n", 75804 },	-- Yrel
						["coord"] = { 63.0, 25.8, TALADOR },
						["races"] = ALLIANCE_ONLY,
						["sourceQuest"] = 34089,	-- In Short Supply
					}),
					q(33882, {	-- Just Peachicky
						["provider"] = { "n", 76826 },	-- Caleb
						["coord"] = { 36.1, 65.0, TALADOR },
					}),
					q(34448, {	-- Kaelynara Sunchaser
						["provider"] = { "n", 78513 },	-- Archmage Elandra
						["coord"] = { 51.6, 50.5, TALADOR },
						["races"] = ALLIANCE_ONLY,
						["sourceQuest"] = 34415,	-- An'dure The Giant
						["g"] = {
							i(113012),	-- Kaelynara's Drape
							i(119055),	-- Kaelynara's Manaweave Cloak
							i(119050),	-- Kaelynara's Rugged Cloak
							i(113011),	-- Kaelynara's Scarf
							i(113013),	-- Kaelynara's Traveling Cloak
						},
					}),
					q(34447, {	-- Kaelynara Sunchaser
						["provider"] = { "n", 78515 },	-- Manduil Skycaller
						["coord"] = { 51.6, 50.5, TALADOR },
						["races"] = HORDE_ONLY,
						["sourceQuest"] = 34414,	-- An'dure The Giant
						["g"] = {
							i(113012),	-- Kaelynara's Drape
							i(119055),	-- Kaelynara's Manaweave Cloak
							i(119050),	-- Kaelynara's Rugged Cloak
							i(113011),	-- Kaelynara's Scarf
							i(113013),	-- Kaelynara's Traveling Cloak
						},
					}),
					q(34963, {	-- Khadgar's Plan
						["provider"] = { "n", 75803 },	-- Vindicator Maraad
						["coord"] = { 63.0, 25.8, TALADOR },
						["races"] = ALLIANCE_ONLY,
						["sourceQuest"] = 34098,	-- Engineering Her Demise
					}),
					q(34962, {	-- Khadgar's Plan
						["provider"] = { "n", 75959 },	-- Durotan
						["coord"] = { 55.5, 40.9, TALADOR },
						["races"] = HORDE_ONLY,
						["sourceQuest"] = 33730,	-- Engineering Her Demise
					}),
					q(33582, {	-- Kura's Vengeance
						["provider"] = { "n", 75324 },	-- Kura the Blind
						["coord"] = { 70.7, 56.7, TALADOR },
						["sourceQuest"] = 33579,	-- What the Draenei Found
					}),
					q(34452, {	-- Light's Rest
						["provider"] = { "n", 75119 },	-- Exarch Maladaar
						["coord"] = { 55.6, 67.7, TALADOR },
						["races"] = ALLIANCE_ONLY,
						["sourceQuests"] = { -- TODO: is The Heart of Auchindoun and Holding the Line required here?
							33917,	-- Disrupting the Flow
							33530,	-- Nightmare in the Tomb
							34351,	-- We Must Construct Additional Pylons
						},
					}),
					q(34766, {	-- Logistical Nightmare
						["provider"] = { "n", 79921 },	-- Provisioner Naya
						["coord"] = { 71.1, 29.4, TALADOR },
						["races"] = HORDE_ONLY,
						["sourceQuests"] = {
							34579,	-- Gas Guzzlers (artillery tower)
							34576,	-- Iridium Recovery (artillery tower)
							34577,	-- Out of Jovite (artillery tower)
						},
					}),
					q(34465, {	-- Mystical Hat
						["coord"] = { 45.2, 37.0, TALADOR },
						["icon"] = 133167,
						["provider"] = {"o",229331},	-- A Mystical hat
					}),
					q(34013, {	-- Never Forget
						["provider"] = { "n", 78083 },	-- Defender Artaal
						["coord"] = { 50.5, 87.5, TALADOR },
						["sourceQuests"] = {
							34240,	-- Scheduled Pickup (Alliance)
							34242,	-- Scheduled Pickup (Horde)
						},
					}),
					q(35238, {	-- New Owner
						["provider"] = { "n", 79853 },	-- Pleasure-Bot 8000
						["coord"] = { 64.2, 47.8, TALADOR },
						["races"] = HORDE_ONLY,
						["sourceQuest"] = 34751,	-- Clear!
						["g"] = {
							follower(171),	-- Pleasure-Bot 8000
						},
					}),
					q(35239, {	-- New Owner
						["provider"] = { "n", 79853 },	-- Pleasure-Bot 8000
						["coord"] = { 62.9, 50.5, TALADOR },
						["races"] = ALLIANCE_ONLY,
						["sourceQuest"] = 34761,	-- Clear!
						["g"] = {
							follower(171),	-- Pleasure-Bot 8000
						},
					}),
					q(35537, {	-- News from Spires of Arak
						["isBreadcrumb"] = true,
						["provider"] = { "n", 79627 },	-- Shadow Hunter Kajassa
						["coord"] = { 71.2, 29.9, TALADOR },
						["races"] = HORDE_ONLY,
					}),
					q(35554, {	-- News from Spires of Arak
						["isBreadcrumb"] = true,
						["coord"] = { 69.7, 21.6, TALADOR },
						["races"] = ALLIANCE_ONLY,
						["provider"] = { "n", 79618 },	-- Vindicator Icia
					}),
					q(33530, {	-- Nightmare in the Tomb
						["provider"] = { "n", 76790 },	-- Nightmare in the Tomb
						["coord"] = { 52.1, 38.9, 536 },
						["sourceQuests"] = {
							34458,	-- Powering the Defenses (Alliance)
							35249,	-- Powering the Defenses (Horde)
						},
						["g"] = {
							i(112513),	-- Auchenai Keeper Treads
							i(112514),	-- Sha'tari Deadeye Sabatons
							i(112512),	-- Sha'tari Keeper Warboots
							i(112515),	-- Talador Sentinel Boots
						},
					}),
					q(34804, {	-- Not In Your House
						["provider"] = { "n", 79963 },	-- Quartermaster O'Riley
						["coord"] = { 69.5, 21.5, TALADOR },
						["races"] = ALLIANCE_ONLY,
						["sourceQuest"] = 34773,	-- Why Is The Brew Gone?
						["g"] = {
							i(112525),	-- Auchenai Keeper Leggings
							i(112526),	-- Sha'tari Deadeye Leggings
							i(112524),	-- Sha'tari Keeper Legguards
							i(112527),	-- Talador Sentinel Breeches
						},
					}),
					q(35227, {	-- Ogre Diplomacy
						["provider"] = { "n", 75392 },	-- Exarch Maladaar
						["coord"] = { 42.9, 76.1, TALADOR },
						["races"] = ALLIANCE_ONLY,
						["sourceQuest"] = 34326,	-- Changing the Tide
					}),
					q(34122, {	-- Ogre Diplomacy
						["provider"] = { "n", 75389 },	-- Lady Liadrin
						["coord"] = { 42.9, 76.2, TALADOR },
						["races"] = HORDE_ONLY,
						["sourceQuest"] = 34326,	-- Changing the Tide
					}),
					q(35226, {	-- Old Friends, New Enemies
						["provider"] = { "n", 75806 },	-- Durotan
						["coord"] = { 61.5, 10.9, TALADOR },
						["races"] = HORDE_ONLY,
						["sourceQuest"] = 33754,	-- Through the Looking Glass
					}),
					q(36801, {	-- One Step Ahead (A)
						["provider"] = { "n", 86442 },	-- Sloan McCoy
						["coord"] = { 69.6, 20.7, TALADOR },
						["races"] = ALLIANCE_ONLY,
						["sourceQuestNumRequired"] = 1,
						["sourceQuests"] = {
							34624,	-- Gas Guzzlers (artillery tower)
							34573,	-- Iridium Recovery (artillery tower)
							34875,	-- Next Steps (arcane sanctum)
							34571,	-- Out of Jovite (artillery tower)
						},
					}),
					q(34683, {	-- One Step Ahead
						["provider"] = { "n", 79627 },	-- Shadow Hunter Kajassa
						["coord"] = { 71.2, 29.9, TALADOR },
						["races"] = HORDE_ONLY,
						["sourceQuestNumRequired"] = 1,
						["sourceQuests"] = {
							34579,	-- Gas Guzzlers (artillery tower)
							34576,	-- Iridium Recovery (artillery tower)
							34874,	-- Next Steps (arcane sanctum)
							34577,	-- Out of Jovite (artillery tower)
						},
					}),
					q(34234, {	-- Payback
						["provider"] = { "n", 78082 },	-- Vindicator Kaluud
						["coord"] = { 50.3, 87.3, TALADOR },
						["sourceQuests"] = {
							34240,	-- Scheduled Pickup (Alliance)
							34242,	-- Scheduled Pickup (Horde)
						},
					}),
					q(33734, {	-- Pieces of Us
						["provider"] = { "n", 75896 },	-- Crystal-Shaper Barum
						["coord"] = { 73.0, 38.7, TALADOR },
						["sourceQuests"] = {
							34566,	-- At Your Command (horde)
							34624,	-- Gas Guzzlers (alliance, artillery tower)
							34573,	-- Iridium Recovery (alliance, artillery tower)
							34875,	-- Next Steps (alliance, arcane sanctum)
							34571,	-- Out of Jovite (alliance, artillery tower)
						},
						["g"] = {
							i(112531),	-- Auchenai Keeper Mantle
							i(112532),	-- Sha'tari Deadeye Monnion
							i(112530),	-- Sha'tari Keeper Shoulders
							i(112529),	-- Talador Sentinel Spaulders
						},
					}),
					q(34458, {	-- Powering the Defenses
						["provider"] = { "n", 81789 },	-- Vindicator Kaluud
						["coord"] = { 55.6, 67.7, TALADOR },
						["races"] = ALLIANCE_ONLY,
						["sourceQuestNumRequired"] = 1,
						["sourceQuests"] = {
							34711,	-- Due Cause to Celebrate (alliance, arcane sanctum)
							34981,	-- The Only Way to Travel (alliance, artillery tower)
						},
					}),
					q(35249, {	-- Powering the Defenses
						["provider"] = { "n", 78577 },	-- Mehlar Dawnblade
						["coord"] = { 55.5, 67.0, TALADOR },
						["races"] = HORDE_ONLY,
						["sourceQuest"] = 34971,	-- The Only Way to Travel
					}),
					q(33578, {	-- Pyrophobia
						["provider"] = { "n", 75311 },	-- Raksi
						["coord"] = { 77.7, 43.9, TALADOR },
						["sourceQuests"] = {
							-- need to verify horde criteria. Likely the same as alliance
							34624,	-- Gas Guzzlers (alliance, artillery tower)
							34573,	-- Iridium Recovery (alliance, artillery tower)
							34875,	-- Next Steps (alliance, arcane sanctum)
							34571,	-- Out of Jovite (alliance, artillery tower)
						},
					}),
					q(34508, {	-- Restalaan, Captain of the Guard
						["provider"] = { "n", 77869 },	-- Soulbinder Tuulani
						["coord"] = { 50.4, 87.5, TALADOR },
						["sourceQuests"] = {
							34240,	-- Scheduled Pickup (Alliance)
							34242,	-- Scheduled Pickup (Horde)
						},
					}),
					q(35254, {	-- Retribution for the Light
						["provider"] = { "n", 75392 },	-- Exarch Maladaar
						["coord"] = { 42.9, 76.1, TALADOR },
						["races"] = ALLIANCE_ONLY,
						["sourceQuests"] = {
							34092,	-- Desperate Measures
							35227,	-- Ogre Diplomacy
						},
					}),
					q(34144, {	-- Retribution for the Light
						["provider"] = { "n", 75389 },	-- Lady Liadrin
						["coord"] = { 42.9, 76.2, TALADOR },
						["races"] = HORDE_ONLY,
						["sourceQuests"] = {
							34092,	-- Desperate Measures
							34122,	-- Ogre Diplomacy
						},
					}),
					q(37191, {	-- Sanketsu, The Burning Blade
						["provider"] = { "n", 87764 },	-- Sanketsu
						["coord"] = { 69.5, 5.8, TALADOR },
						["races"] = ALLIANCE_ONLY,
						["sourceQuest"] = 36341,	-- Primal Fury
						["g"] = {
							i(120313),	-- Sanketsu
						},
					}),
					q(37192, {	-- Sanketsu, The Burning Blade
						["provider"] = { "n", 87764 },	-- Sanketsu
						["coord"] = { 69.5, 5.8, TALADOR },
						["races"] = HORDE_ONLY,
						["sourceQuest"] = 36342,	-- Primal Fury
						["g"] = {
							i(120313),	-- Sanketsu
						},
					}),
					q(34240, {	-- Scheduled Pickup
						["provider"] = { "n", 75250 },	-- Exarch Maladaar
						["coord"] = { 57.2, 77.0, TALADOR },
						["races"] = ALLIANCE_ONLY,
						["sourceQuests"] = {
							33967,	-- Antivenin
							33958,	-- Into the Hollow
							33969,	-- Vile Defilers
						},
					}),
					q(34242, {	-- Scheduled Pickup
						["provider"] = { "n", 75246 },	-- Lady Liadrin
						["coord"] = { 61.0, 72.5, TALADOR },
						["races"] = HORDE_ONLY,
						["sourceQuests"] = {
							33971,	-- Antivenin
							33970,	-- Into the Hollow
							33972,	-- Vile Defilers
						},
					}),
					q(34721, {	-- Seek Out the Seer
						["provider"] = { "n", 79724 },	-- Elumm
						["races"] = HORDE_ONLY,
						["description"] = "Travels back and forth on the road.",
						["isBreadcrumb"] = true,
						["coords"] = {
							{ 69.5, 46.9, TALADOR },
							{ 67.6, 44.0, TALADOR },
						},
					}),
					q(33871, {	-- Seek Out the Seer
						["provider"] = { "n", 79724 },	-- Elumm
						["races"] = ALLIANCE_ONLY,
						["description"] = "Travels back and forth on the road.",
						["isBreadcrumb"] = true,
						["coords"] = {
							{ 69.5, 46.9, TALADOR },
							{ 67.6, 44.0, TALADOR },
						},
					}),
					q(34803, {	-- Send Them Running
						["provider"] = { "n", 79921 },	-- Provisioner Naya
						["coord"] = { 71.1, 29.4, TALADOR },
						["races"] = HORDE_ONLY,
						["sourceQuest"] = 34766,	-- Logistical Nightmare
						["g"] = {
							i(112525),	-- Auchenai Keeper Leggings
							i(112526),	-- Sha'tari Deadeye Leggings
							i(112524),	-- Sha'tari Keeper Legguards
							i(112527),	-- Talador Sentinel Breeches
						},
					}),
					q(33884, {	-- Sher'KHAAAAAAANNNN!
						["provider"] = { "n", 76826 },	-- Caleb
						["coord"] = { 36.1, 65.0, TALADOR },
					}),
					q(34947, {	-- Shredder Manual
						["provider"] = { "n", 75874 },	-- Thaelin Darkanvil
						["coord"] = { 63.0, 26.1, TALADOR },
						["races"] = ALLIANCE_ONLY,
						["sourceQuest"] = 34090,	-- Thaelin's Quick Fix
						["isBreadcrumb"] = true,
					}),
					q(34948, {	-- Shredder Manual
						["provider"] = { "n", 75924 },	-- Gazlowe
						["coord"] = { 59.0, 20.6, TALADOR },
						["races"] = HORDE_ONLY,
						["sourceQuest"] = 33721,	-- Gazlowe's Solution
						["isBreadcrumb"] = true,
					}),
					q(34701, {	-- Speaker for the Dead
						["provider"] = { "n", 79618 },	-- Vindicator Icia
						["coord"] = { 69.6, 21.6, TALADOR },
						["races"] = ALLIANCE_ONLY,
						["isBreadcrumb"] = true,
						["sourceQuestNumRequired"] = 1,
						["sourceQuests"] = {
							34711,	-- Due Cause to Celebrate (arcane sanctum)
							34981,	-- The Only Way to Travel (artillery tower)
						},
					}),
					q(34451, {	-- Sunsworn Camp
						["provider"] = { "n", 75121 },	-- Sunsworn Camp
						["coord"] = { 55.4, 67.6, TALADOR },
						["races"] = HORDE_ONLY,
						["sourceQuests"] = {
							33530,	-- Nightmare in the Tomb
							33917,	-- Disrupting the Flow
							33920,	-- The Heart of Auchindoun
							34351,	-- We Must Construct Additional Pylons
							34418,	-- Holding the Line
						},
					}),
					q(34472, {	-- Temporal Juxtaposition
						["provider"] = { "n", 86949 },	-- Zooti Fizzlefury
						["coord"] = { 85.0, 31.0, TALADOR },
						["sourceQuests"] = {
							34464,	-- Mysterious Boots
							34465,	-- Mysterious Hat
							34463,	-- Mysterious Ring
							34466,	-- Mysterious Staff
						},
					}),
					q(34090, {	-- Thaelin's Quick Fix
						["provider"] = { "n", 75874 },	-- Thaelin Darkanvil
						["coord"] = { 63.0, 26.1, TALADOR },
						["races"] = ALLIANCE_ONLY,
						["sourceQuest"] = 34087,	-- Through the Looking Glass
						["g"] = {
							i(113024),	-- "Reliable" Threat Assessor
							i(113025),	-- External Combustion Engine
							i(113023),	-- Foolproof Targeting Mechanism
						},
					}),
					q(34099, {	-- The Battle for Shattrath
						["provider"] = { "n", 75805 },	-- Archmage Khadgar
						["coord"] = { 54.1, 36.4, TALADOR },
						["races"] = ALLIANCE_ONLY,
						["sourceQuest"] = 34963,	-- Khadgar's Plan
						["g"] = {
							i(112518),	-- Auchenai Keeper Gloves
							i(112519),	-- Sha'tari Deadeye Gauntlets
							i(112517),	-- Sha'tari Keeper Handguards
							i(112516),	-- Talador Sentinel Gloves
						},
					}),
					q(33731, {	-- The Battle for Shattrath
						["provider"] = { "n", 75805 },	-- Archmage Khadgar
						["coord"] = { 54.1, 36.4, TALADOR },
						["races"] = HORDE_ONLY,
						["sourceQuest"] = 34962,	-- Khadgar's Plan
						["g"] = {
							i(112518),	-- Auchenai Keeper Gloves
							i(112519),	-- Sha'tari Deadeye Gauntlets
							i(112517),	-- Sha'tari Keeper Handguards
							i(112516),	-- Talador Sentinel Gloves
						},
					}),
					q(33976, {	-- The Final Piece
						["provider"] = { "n", 77082 },	-- Restalaan
						["coord"] = { 44.8, 90.4, TALADOR },
						["sourceQuest"] = 34508,	-- Restalaan, Captain of the Guard
						["g"] = {
							i(113045),	-- Restalaan's Greatsword
							i(113047),	-- Restalaan's Longsword
							i(113042),	-- Talador Sentinel Standard Issue
							i(113043),	-- Telmor Crystal Staff
							i(113044),	-- Telmor Soupriest Staff
							i(113048),	-- Vorpil's Ribcrusher
							i(113049),	-- Vorpil's Ribnicker
							i(113046),	-- Vorpil's Ribsmasher
						},
					}),
					q(33920, {	-- The Heart of Auchindoun
						["provider"] = { "n", 78519 },	-- Soulbinder Nyami
						["coord"] = { 56.5, 67.1, TALADOR },
						["sourceQuestNumRequired"] = 1,
						["sourceQuests"] = {
							34711,	-- Due Cause to Celebrate (alliance, arcane sanctum)
							34712,	-- Due Cause to Celebrate (horde, arcane sanctum)
							34981,	-- The Only Way to Travel (alliance, artillery tower)
							34971,	-- The Only Way to Travel (horde, artillery tower)
						},
						["g"] = {
							i(113031),	-- Eredar Soulchain
							i(119087),	-- Legion Lord's Gorget
							i(119078),	-- Soulcrystal Dust Pendant
							i(113029),	-- Vacant Soul Crystal
							i(113030),	-- Warbeads of the Blackheart
						},
					}),
					q(34696, {	-- The Lady of Light
						["provider"] = { "n", 79612 },	-- Knight-Lord Dranarus
						["coord"] = { 71.8, 29.7, TALADOR },
						["races"] = HORDE_ONLY,
						["sourceQuests"] = {
							34972,	-- Armor Up
							34949,	-- Joining the Ranks
						},
						["sourceQuestNumRequired"] = 1,
						["isBreadcrumb"] = true,
					}),
					q(33580, {	-- The Purge of Veil Shadar
						["provider"] = { "n", 75288 },	-- Shadow-Sage Iskar
						["coord"] = { 70.4, 56.8, TALADOR },
						["sourceQuest"] = 33579,	-- What the Draenei Found
						["g"] = {
							i(113028),	-- Shadar Chain Pendant
							i(119086),	-- Shadar Choker
							i(113027),	-- Shadar Gorget
							i(113026),	-- Shadar Medallion
							i(119077),	-- Shadar Spirit Beads
						},
					}),
					q(38565, {	-- The Sargerei Menace
						["provider"] = { "n", 91751 },	-- Exarch Yrel
						["races"] = ALLIANCE_ONLY,
					}),
					q(38417, {	-- The Sargerei Menace
						["races"] = HORDE_ONLY,
					}),
					q(36027, {	-- The Staff of Archmage Vargoth
						["provider"] = { "n", 77853 },	-- Image of Archmage Vargoth
						["coord"] = { 84.6, 31.6, TALADOR },
						["sourceQuest"] = 34472,	-- Temporal Juxtaposition
						["g"] = {
							follower(190),	-- Image of Archmage Vargoth
						},
					}),
					q(36518, {	-- The True Path
						["provider"] = { "n", 79978 },	-- Aeda Brightdawn
						["coord"] = { 58.1, 53.1, TALADOR },
						["races"] = HORDE_ONLY,
						["sourceQuest"] = 34776,	-- Gatekeepers of Auchindoun
						["g"] = {
							follower(207),	-- Aeda Brightdawn
						},
					}),
					q(36519, {	-- The True Path
						["provider"] = { "n", 79979 },	-- Defender Illona
						["coord"] = { 57.4, 51.1, TALADOR },
						["races"] = ALLIANCE_ONLY,
						["sourceQuest"] = 34777,	-- Gatekeepers of Auchindoun
						["g"] = {
							follower(207),	-- Defender Illona
						},
					}),
					q(36843, {	-- They Came From Above
						["sourceQuests"] = { 34579 },	-- Gas Guzzlers
						["lockCriteria"] = { 1, "questID", 33740 },	-- Burning Sky
						["provider"] = { "n", 86522 },	-- Akhan
						["coord"] = { 67.4, 42.2, TALADOR },
						["isBreadcrumb"] = true,
					}),
					q(34087, {	-- Through the Looking Glass
						["provider"] = { "n", 75803 },	-- Vindicator Maraad
						["coord"] = { 63.0, 25.8, TALADOR },
						["races"] = ALLIANCE_ONLY,
						["sourceQuestNumRequired"] = 2,
						["sourceQuests"] = {
							34701,	-- Speaker for the Dead (breadcrumb)
							34711,	-- Due Cause to Celebrate (arcane sanctum)
							34981,	-- The Only Way to Travel (artillery tower)
							36801,	-- One Step Ahead (A)
						},
					}),
					q(33754, {	-- Through the Looking Glass
						-- TODO: based on the Alliance version, this quest is likely missing some sourceQuest info
						["provider"] = { "n", 75806 },	-- Durotan
						["coord"] = { 61.4, 10.8, TALADOR },
						["races"] = HORDE_ONLY,
						["sourceQuest"] = 34683,	-- One Step Ahead
					}),
					q(36512, {	-- Together We Are Strong
						["provider"] = { "n", 79434 },	-- Soulbinder Tuulani
						["coord"] = { 46.3, 74.1, TALADOR },
						["sourceQuests"] = {
							34154,	-- Destination: Unknown (Alliance)
							34564,	-- Destination: Unknown (Horde)
						},
						["g"] = {
							follower(205),	-- Soulbinder Tuulani
						},
					}),
					q(34088, {	-- Too Many Irons in the Fire
						["provider"] = { "n", 75803 },	-- Vindicator Maraad
						["coord"] = { 63.0, 25.8, TALADOR },
						["races"] = ALLIANCE_ONLY,
						["sourceQuest"] = 34087,	-- Through the Looking Glass
					}),
					q(33722, {	-- Too Many Irons in the Fire
						["provider"] = { "n", 75806 },	-- Durotan
						["coord"] = { 61.5, 10.9, TALADOR },
						["races"] = HORDE_ONLY,
						["sourceQuest"] = 33754,	-- Through the Looking Glass
					}),
					q(34399, {	-- Trouble In The Mine
						["provider"] = { "n", 78534 },	-- Ageilaa
						["coord"] = { 49.8, 56.1, TALADOR },
						["sourceQuests"] = {
							34709,	-- Every Bit Counts (Alliance)
							34710,	-- Every Bit Counts (Horde)
						},
					}),
					q(33969, {	-- Vile Defilers
						["provider"] = { "n", 78102 },	-- Vindicator Namuun
						["coord"] = { 57.5, 76.6, TALADOR },
						["races"] = ALLIANCE_ONLY,
						["sourceQuest"] = 34452,	-- Light's Rest
					}),
					q(33972, {	-- Vile Defilers
						["provider"] = { "n", 75249 },	-- Mehlar Dawnblade
						["coord"] = { 60.5, 72.4, TALADOR },
						["races"] = HORDE_ONLY,
						["sourceQuest"] = 34451,	-- Sunsworn Camp
					}),
					q(34094, {	-- Vol. X Pages ?
						["provider"] = { "n", 75874 },	-- Thaelin Darkanvil
						["coord"] = { 63.0, 26.1, TALADOR },
						["races"] = ALLIANCE_ONLY,
						["sourceQuest"] = 34091,	-- Decomissioned Mission
					}),
					q(33724, {	-- Vol. X Pages ?
						["provider"] = { "n", 75924 },	-- Gazlowe
						["coord"] = { 58.9, 20.7, TALADOR },
						["races"] = HORDE_ONLY,
						["sourceQuests"] = {
							33720,	-- Decommissioned Mission (verify if this is needed)
							33721,	-- Gazlowe's Solution
						},
					}),
					q(34104, {	-- Wanted: Hilaani
						["provider"] = { "n", 80854 },	-- Patrick Messer
						["coord"] = { 69.4, 21.1, TALADOR },
						["races"] = ALLIANCE_ONLY,
						["sourceQuestNumRequired"] = 1,
						["sourceQuests"] = {
							34624,	-- Gas Guzzlers (artillery tower)
							34573,	-- Iridium Recovery (artillery tower)
							34875,	-- Next Steps (arcane sanctum)
							34571,	-- Out of Jovite (artillery tower)
						},
						["g"] = {
							i(112586),	-- Riverbeast Femur
							i(112579),	-- Riverbeast Jawbone
							i(112587),	-- Riverbeast Tusk Shank
							i(112576),	-- Sharpened Riverbeast Tusk
							i(112583),	-- Halaani's Wisdom Tooth
							i(112533),	-- Sha'tari Keeper Girdle
						},
					}),
					q(34107, {	-- Wanted: Hilaani
						["provider"] = { "n", 80833 },	-- Beastmaster Tagh
						["coord"] = { 70.8, 29.6, TALADOR },
						["races"] = HORDE_ONLY,
						["sourceQuestNumRequired"] = 1,
						["sourceQuests"] = {
							34579,	-- Gas Guzzlers (artillery tower)
							34576,	-- Iridium Recovery (artillery tower)
							34874,	-- Next Steps (arcane sanctum)
							34577,	-- Out of Jovite (artillery tower)
						},
						["g"] = {
							i(112586),	-- Riverbeast Femur
							i(112579),	-- Riverbeast Jawbone
							i(112587),	-- Riverbeast Tusk Shank
							i(112576),	-- Sharpened Riverbeast Tusk
							i(112583),	-- Halaani's Wisdom Tooth
							i(112533),	-- Sha'tari Keeper Girdle
						},
					}),
					q(34103, {	-- Wanted: Kil'uun
						["provider"] = { "n", 80854 },	-- Patrick Messer
						["coord"] = { 69.4, 21.1, TALADOR },
						["races"] = ALLIANCE_ONLY,
						["sourceQuestNumRequired"] = 1,
						["sourceQuests"] = {
							34624,	-- Gas Guzzlers (artillery tower)
							34573,	-- Iridium Recovery (artillery tower)
							34875,	-- Next Steps (arcane sanctum)
							34571,	-- Out of Jovite (artillery tower)
						},
						["g"] = {
							i(112578),	-- Talador Hunting Rifle
							i(112624),	-- Talador Spellbarrier
							i(112577),	-- Teroclaw Talon
							i(112582),	-- Teroclaw Nest Branch
							i(112584),	-- Teroclaw Feather Necklace
							i(112534),	-- Auchenai Keeper Cord
						},
					}),
					q(34108, {	-- Wanted: Kil'uun
						["provider"] = { "n", 80833 },	-- Beastmaster Tagh
						["coord"] = { 70.8, 29.6, TALADOR },
						["races"] = HORDE_ONLY,
						["sourceQuests"] = {
							34579,	-- Gas Guzzlers (artillery tower)
							34576,	-- Iridium Recovery (artillery tower)
							34577,	-- Out of Jovite (artillery tower)
						},
						["g"] = {
							i(112578),	-- Talador Hunting Rifle
							i(112624),	-- Talador Spellbarrier
							i(112577),	-- Teroclaw Talon
							i(112582),	-- Teroclaw Nest Branch
							i(112584),	-- Teroclaw Feather Necklace
							i(112534),	-- Auchenai Keeper Cord
						},
					}),
					q(34105, {	-- Wanted: Ra'tok the Hammer
						["provider"] = { "n", 80854 },	-- Patrick Messer
						["coord"] = { 69.4, 21.1, TALADOR },
						["races"] = ALLIANCE_ONLY,
						["sourceQuestNumRequired"] = 1,
						["sourceQuests"] = {
							34624,	-- Gas Guzzlers (artillery tower)
							34573,	-- Iridium Recovery (artillery tower)
							34875,	-- Next Steps (arcane sanctum)
							34571,	-- Out of Jovite (artillery tower)
						},
						["g"] = {
							i(112581),	-- Ra'tok's Buckler
							i(112580),	-- Ra'tok's Painhammer
							i(112585),	-- Ra'tok's Throatguard
							i(112535),	-- Sha'tari Deadeye Belt
							i(112536),	-- Talador Sentinel Belt
						},
					}),
					q(34106, {	-- Wanted: Ra'tok the Hammer
						["provider"] = { "n", 80833 },	-- Beastmaster Tagh
						["coord"] = { 70.8, 29.6, TALADOR },
						["races"] = HORDE_ONLY,
						["sourceQuests"] = {
							34579,	-- Gas Guzzlers (artillery tower)
							34576,	-- Iridium Recovery (artillery tower)
							34577,	-- Out of Jovite (artillery tower)
						},
						["g"] = {
							i(112581),	-- Ra'tok's Buckler
							i(112580),	-- Ra'tok's Painhammer
							i(112585),	-- Ra'tok's Throatguard
							i(112535),	-- Sha'tari Deadeye Belt
							i(112536),	-- Talador Sentinel Belt
						},
					}),
					warchiefscommand(q(49547, {	-- Warchief's Command: Talador!
						["timeline"] = { ADDED_7_3_5 },
						["races"] = HORDE_ONLY,
						["isBreadcrumb"] = true,
						["lvl"] = 94,
					})),
					q(34351, {	-- We Must Construct Additional Pylons
						["provider"] = { "n", 77737 },	-- Soulbinder Tuulani
						["coord"] = { 68.4, 19.3, 536 },
						["sourceQuests"] = {
							34458,	-- Powering the Defenses (Alliance)
							35249,	-- Powering the Defenses (Horde)
						},
					}),
					q(33579, {	-- What the Draenei Found
						["provider"] = { "n", 75311 },	-- Raksi
						["coord"] = { 77.7, 43.9, TALADOR },
						["sourceQuest"] = 33578,	-- Pyrophobia
					}),
					q(34773, {	-- Why Is The Brew Gone?
						["provider"] = { "n", 79963 },	-- Quartermaster O'Riley
						["coord"] = { 69.5, 21.5, TALADOR },
						["races"] = ALLIANCE_ONLY,
						["sourceQuestNumRequired"] = 1,
						["sourceQuests"] = {
							34624,	-- Gas Guzzlers (artillery tower)
							34573,	-- Iridium Recovery (artillery tower)
							34875,	-- Next Steps (arcane sanctum)
							34571,	-- Out of Jovite (artillery tower)
						},
					}),
					n(BONUS_OBJECTIVES, {
						-- TODO: Check SQ
						q(37635, {	-- Assault on Shattrath Harbor (A)
							["coord"] = { 44.0, 23.0, TALADOR },
							["races"] = ALLIANCE_ONLY,
						}),
						q(37636, {	-- Assault on Shattrath Harbor (H)
							["coord"] = { 44.0, 23.0, TALADOR },
							["races"] = HORDE_ONLY,
						}),
						q(36808, {	-- Assault on Shattrath Harbor (A)
							["coord"] = { 44.0, 23.0, TALADOR },
							["races"] = ALLIANCE_ONLY,
							["isRepeatable"] = true,
						}),
						q(36338, {	-- Assault on Shattrath Harbor (H)
							["coord"] = { 44.0, 23.0, TALADOR },
							["races"] = HORDE_ONLY,
							["isRepeatable"] = true,
						}),
						q(36809, {	-- Assault on the Heart of Shattrath (A)
							["coord"] = { 32.0, 36.0, TALADOR },
							["races"] = ALLIANCE_ONLY,
							["isRepeatable"] = true,
						}),
						q(36807, {	-- Assault on the Heart of Shattrath (H)
							["coord"] = { 32.0, 36.0, TALADOR },
							["races"] = HORDE_ONLY,
							["isRepeatable"] = true,
						}),
						q(34639, {	-- Aruuna's Desolation
							["coord"] = { 76.2, 48.9, TALADOR },
						}),
						q(34667, {	-- Court of Souls
							["coord"] = { 42.5, 60.6, TALADOR },
						}),
						q(35237, {	-- Mor'gran Logworks
							["coord"] = { 65.4, 32.0, TALADOR },
							["races"] = HORDE_ONLY,
						}),
						q(35236, {	-- Orunai Coast
							["coord"] = { 56.9, 13.0, TALADOR },
							["races"] = ALLIANCE_ONLY,
						}),
						q(34660, {	-- Zorkra's Fall
							["coord"] = { 54.2, 88.7, TALADOR },
						}),
					}),
				}),
				n(RARES, {
					-- Coords have been confirmed on rares except for Silthide and some noted rares on longer spawn timers.
					n(88043, {	-- Avatar of Socrethar
						["questID"] = 37338,
						["isDaily"] = true,
						["coords"] = {
							{ 44.20, 34.33, TALADOR },
							{ 45.60, 32.40, TALADOR },
							{ 48.00, 36.00, TALADOR },
						},
						["lvl"] = 100,
						["g"] = {
							i(119378),	-- Socrethar's Stone
						},
					}),
					n(87597, {	-- Bombardier Gu'gok
						["questID"] = 37339,
						["isDaily"] = true,
						["coords"] = {
							{ 43.4, 37.0, TALADOR },
							{ 44.6, 40.6, TALADOR },
						},
						["lvl"] = 100,
						["g"] = {
							i(119413),	-- Gu'gok's Rangefinder
						},
					}),
					n(77620, {	-- Cro Fleshrender
						["questID"] = 34165,
						["coord"] = { 37.4, 70.6, TALADOR },
						["g"] = {
							i(116123),	-- Fleshrender's Painbringer
						},
					}),
					n(77561, {	-- Dr. Gloom
						["questID"] = 34142,
						["coord"] = { 68.4, 15.7, TALADOR },
						["g"] = {
							i(112499),	-- Stinky Gloom Bombs
							currency(824),	-- Garrison Resources
						},
					}),
					n(77828, {	-- Echo of Murmur
						["questID"] = 34221,
						["coord"] = { 34.0, 57.2, TALADOR },
						["g"] = {
							i(113670),	-- Mournful Moan of Murmur (TOY!)
						},
					}),
					n(80204, {	-- Felbark
						["questID"] = 35018,
						["coords"] = {
							{ 49.8, 83.4, TALADOR },
							{ 50.2, 85.4, TALADOR },
						},
						["g"] = {
							i(112373),	-- Felbark's Shin
						},
					}),
					n(82992, {	-- Felfire Consort
						["questID"] = 37341,
						["isDaily"] = true,
						["coord"] = { 47.6, 32.9, TALADOR },
						["lvl"] = 100,
						["g"] = {
							i(119386),	-- Consort's Promise Ring
						},
					}),
					n(77614, {	-- Frenzied Golem
						["questID"] = 34145,
						["coord"] = { 46.2, 55.0, TALADOR },
						["g"] = {
							i(113288),	-- Shard of Contempt
							i(113287),	-- Shard of Scorn
						},
					}),
					n(78713, {	-- Galzomar
						["description"] = "Sikthis, Maiden of Slaughter, Kharazos the Triumphant, and Galzomar all share a spawn and drop the toy.",
						["questID"] = 35219,
						["coords"] = {
							{ 56.6, 62.6, TALADOR },
							{ 56.6, 64.0, TALADOR },
							{ 56.4, 65.8, TALADOR },
						},
						["g"] = {
							i(116122),	-- Burning Legion Missive (TOY!)
						},
					}),
					n(80471, {	-- Gennadian
						["questID"] = 34929,
						["coord"] = { 67.4, 80.6, TALADOR },
						["g"] = {
							i(116075),	-- Scales of Gennadian
						},
					}),
					n(77719, {	-- Glimmerwing
						["questID"] = 34189,
						["coords"] = {
							{ 30.4, 64.0, TALADOR },
							{ 33.2, 63.8, TALADOR },
						},
						["g"] = {
							i(116113),	-- Breath of Talador (TOY!)
						},
					}),
					n(85572, {	-- Grrbrrgle
						["provider"] = { "o", 235673 },	-- A Restless Crate
						["description"] = "Click on the Restless Crate.",
						["questID"] = 36919,
						["coord"] = { 22.2, 74.2, TALADOR },
						["g"] = {
							i(120436),	-- Mrglrgirdle
						},
					}),
					n(83019, {	-- Gug'tol
						["questID"] = 37340,
						["isDaily"] = true,
						["coord"] = { 47.6, 39.0, TALADOR },
						["lvl"] = 100,
						["g"] = {
							i(119402),	-- Gurg'tol's Imp Imperator
						},
					}),
					n(83008, {	-- Haakun the All-Consuming
						["questID"] = 37312,
						["isDaily"] = true,
						["coord"] = { 48.1, 25.2, TALADOR },
						["lvl"] = 100,
						["g"] = {
							i(119403),	-- Sargerei Soulbiter
						},
					}),
					n(77715, {	-- Hammertooth
						["description"] = "Swims all around the area.",
						["questID"] = 34185,
						["coords"] = {
							{ 65.2, 43.0, TALADOR },
							{ 61.4, 49.2, TALADOR },
						},
						["g"] = {
							i(116124),	-- Scaled Riverbeast Vest
						},
					}),
					n(77626, {	-- Hen-Mother Hami
						["questID"] = 34167,
						["coords"] = {
							{ 75.8, 50.4, TALADOR },
							{ 77.4, 51.2, TALADOR },
							{ 78.4, 50.8, TALADOR },
						},
						["g"] = {
							i(112369),	-- Hami-Down Cloak
						},
					}),
					n(78710, {	-- Kharazos the Triumphant
						["description"] = "Sikthis, Maiden of Slaughter, Kharazos the Triumphant, and Galzomar all share a spawn and drop the toy.",
						["questID"] = 35219,
						["coords"] = {
							{ 56.6, 62.6, TALADOR },
							{ 56.6, 66.0, TALADOR },
						},
						["g"] = {
							i(116122),	-- Burning Legion Missive (TOY!)
						},
					}),
					n(78872, {	-- Klikixx
						["questID"] = 34498,
						["coords"] = {
							{ 61.1, 83.9, TALADOR },	-- Deathweb Hollow Cave Entrance
							{ 66.8, 85.6, TALADOR },	-- Klikixx
						},
						["g"] = {
							i(116125),	-- Klikixx's Webspinnner (TOY!)
						},
					}),
					n(82988, {	-- Kurlosh Doomfang
						["questID"] = 37348,
						["isDaily"] = true,
						["coord"] = { 37.4, 37.6, TALADOR },
						["lvl"] = 100,
						["g"] = {
							i(119394),	-- Kurlosh's Kidneyslicer
						},
					}),
					n(82942, {	-- Lady Demlash
						["questID"] = 37346,
						["isDaily"] = true,
						["coord"] = { 33.6, 37.8, TALADOR },
						["lvl"] = 100,
						["g"] = {
							i(119352),	-- Demlash's Dashing Robe
						},
					}),
					n(88494, {	-- Legion Vanguard
						["description"] = "Kill about 10 Council Soulspeakers, then kill 3 waves of 3 mobs, and then Legion Vanguard will spawn. Kill him.",
						["questID"] = 37342,
						["isDaily"] = true,
						["coord"] = { 37.96, 20.8, TALADOR },
						["lvl"] = 100,
						["g"] = {
							i(119385),	-- Vanguard's Linebreaking Bracer
						},
					}),
					n(77784, {	-- Lo'marg Jawcrusher
						["questID"] = 34208,
						["coord"] = { 49.2, 92.3, TALADOR },
						["g"] = {
							i(116070),	-- Tezzakel's Terrible Talisman
						},
					}),
					n(82920, {	-- Lord Korinak
						["questID"] = 37345,
						["isDaily"] = true,
						["coord"] = { 31.0, 26.8, TALADOR },
						["lvl"] = 100,
						["g"] = {
							i(119388),	-- Doomlord's Seal of Command
						},
					}),
					n(82998, {	-- Matron of Sin
						["questID"] = 37349,
						["isDaily"] = true,
						["coord"] = { 38.8, 49.8, TALADOR },
						["lvl"] = 100,
						["g"] = {
							i(119353),	-- Matron's Supple Gloves
						},
					}),
					n(79334, {	-- No'losh
						["questID"] = 34859,
						["coords"] = {
							{ 86.4, 30.8, TALADOR },
							{ 86.0, 29.6, TALADOR },
						},
						["g"] = {
							i(116077),	-- Pulsating Brain of No'losh
						},
					}),
					n(87668, {	-- Orumo the Observer
						["description"] = "Requires 5 players standing on the runes in front of Orumo to release him from the Demonic Field and make him attackable.\nUltimately, you can summon him with 5 of your own characters.\nBy placing them in front of the runes and then logging onto each of your 5 characters, you will have just enough time from the first to the last to release him.",
						["questID"] = 37344,
						["isDaily"] = true,
						["coord"] = { 31.4, 47.6, TALADOR },
						["lvl"] = 100,
						["g"] = {
							i(119170),	-- Eye of Observation (PET!)
							i(119375),	-- Chained Orb of Omniscience
						},
					}),
					n(77741, {	-- Ra'kahn
						["questID"] = 34196,
						["coord"] = { 59.48, 59.96, TALADOR },
						["g"] = {
							i(116112),	-- Ra'kahn's Bite
						},
					}),
					n(createHeader({	-- Sargerei War Council
						readable = "Sargerei War Council",
						icon = 136156,
						text = {
							en = "Sargerei War Council",
							es = "Consejo de guerra Sargerei",
							de = "Kriegsrat der Sargerei",
							fr = "Conseil de guerre sargereï",
							it = "Concilio di Guerra Sargerei",
							pt = "Conselho de Guerra Sargerei",
							ru = "Саргерайский военный совет",
							ko = "살게레이 전쟁의회",
							cn = "萨格雷战争议会",
						},
						description = {
							en = "Patrols the area in roughly a circle.",
							es = "Patrulla el área aproximadamente en un círculo.",
							de = "Streift ungefähr im Kreis durch das Gebiet.",
							fr = "Patrouille dans la zone en formant à peu près un cercle.",
							it = "Pattuglia l'area approssimativamente in cerchio.",
							pt = "Patrulha a área aproximadamente em círculo.",
							ru = "Патрулирует территорию примерно по кругу.",
							ko = "대략 원을 그리며 해당 지역을 순찰합니다.",
							cn = "大致绕一圈巡逻。",
						},
					}), {
						["questID"] = 37337,
						["isDaily"] = true,
						["crs"] = {
							88071,	-- Strategist Ankor
							88072,	-- Archmagus Tekar
							88083,	-- Soulbinder Naylana
						},
						["coords"] = {
							{ 43.8, 26.4, TALADOR },
							{ 45.8, 27.8, TALADOR },
							{ 46.8, 31.0, TALADOR },
						},
						["lvl"] = 100,
						["g"] = {
							i(119350),	-- Sargerei Councillor's Drape
						},
					}),
					n(82930, {	-- Shadowflame Terrorwalker
						["questID"] = 37347,
						["isDaily"] = true,
						["coord"] = { 41.0, 42.0, TALADOR },
						["lvl"] = 100,
						["g"] = {
							i(119393),	-- Searing Shadowflame Axe
						},
					}),
					n(79543, {	-- Shirzir
						["questID"] = 34671,
						["coords"] = {
							{ 67.5, 23.4, 537 },	-- Shirzir
							{ 41.4, 60.1, TALADOR },	-- Tomb of Souls Entrance
						},
						["g"] = {
							i(112370),	-- Shirzir's Sticky Slippers
						},
					}),
					n(78715, {	-- Sikthiss, Maiden of Slaughter
						["description"] = "Sikthiss, Maiden of Slaughter, Kharazos the Triumphant, and Galzomar all share a spawn and drop the toy.",
						["questID"] = 35219,
						["coords"] = {
							{ 56.2, 65.4, TALADOR },
							{ 56.6, 62.6, TALADOR },
							{ 56.6, 66.4, TALADOR },
						},
						["g"] = {
							i(116122),	-- Burning Legion Missive (TOY!)
						},
					}),
					n(51015, {	-- Silthide
						["description"] = "Silthide has a respawn timer between 12-28 hours. Mount drop rate is 100% for all participants.",
						["coords"] = {	-- **Coords unconfirmed, relied on wowhead**
							{ 62.0, 33.2, TALADOR },
							{ 62.6, 46.0, TALADOR },
							{ 80.4, 56.0, TALADOR },
							{ 67.4, 59.8, TALADOR },
							{ 54.8, 81.4, TALADOR },
						},
						["g"] = {
							i(116767),	-- Sapphire Riverbeast (MOUNT!)
						},
					}),
					n(86549, {	-- Steeltusk
						["questID"] = 36858,
						["coord"] = { 67.7, 35.8, TALADOR },
						["g"] = {
							i(117562),	-- Steeltusk's Steel Tusk
						},
					}),
					n(77634, {	-- Taladorantula
						["description"] = "Kill small spiders around the egg sacs until you see warnings. The third warning should spawn the Taladorantula.",
						["questID"] = 34171,
						["coord"] = { 59.0, 87.4, TALADOR },
						["g"] = {
							i(116126),	-- Taladorantula Terrofang
						},
					}),
					n(79485, {	-- Talonpriest Zorkra
						["questID"] = 34668,
						["coord"] = { 53.83, 91.35, TALADOR },
						["g"] = {
							i(116110),	-- Zorkra's Hood
						},
					}),
					n(80524, {	-- Underseer Bloodmane
						["questID"] = 34945,
						["coord"] = { 63.6, 20.8, TALADOR },
						["g"] = {
							i(112475),	-- Prize's Horn-Ring
						},
					}),
					n(88436, {	-- Vigilant Paarthos
						["questID"] = 37350,
						["isDaily"] = true,
						["coords"] = {
							{ 36.8, 40.8, TALADOR },
							{ 37.6, 41.0, TALADOR },
							{ 37.6, 43.2, TALADOR },
						},
						["lvl"] = 100,
						["g"] = {
							i(119383),	-- Shoulderplates of the Vigilant
						},
					}),
					n(77564, {	-- Viperlash
						["description"] = "The spear spawns from the corpse of Viperlash.",
						["questID"] = 34148,
						["coord"] = { 37.6, 74.7, TALADOR },
						["g"] = {
							o(227654, {	-- Bonechewer Spear
								i(112371),	-- Warpstalker-Scale Grips
							}),
						},
					}),
					n(77776, {	-- Wandering Vindicator
						["description"] = "After you defeat him, he turns friendly and tells you to loot his sword.",
						["questID"] = 34204,
						["coord"] = { 69.6, 33.6, TALADOR },
						["g"] = {
							o(227859, {	-- Hope
								["questID"] = 34205,
								["coord"] = { 69.7, 33.2, TALADOR },
								["g"] = {
									i(112261),	-- Forgotten Vindicator's Blade
								},
							}),
						},
					}),
					n(82922, {	-- Xothear, the Destroyer
						["questID"] = 37343,
						["isDaily"] = true,
						["coord"] = { 37.6, 14.6, TALADOR },
						["lvl"] = 100,
						["g"] = {
							i(119371),	-- Mantle of the Destroyer
						},
					}),
					n(77529, {	-- Yazheera the Incinerator
						["questID"] = 34135,
						["coord"] = { 53.8, 25.7, TALADOR },
						["g"] = {
							i(112263),	-- Yazheera's Burning Bracers
						},
					}),
				}),
				n(TREASURES, {
					n(77664, {	-- Aarko
						["description"] = "Speak to Aarko.\nAssist him in killing 2 waves of enemies, then Surok Darkstorm.\nLoot the Treasure.",
						["questID"] = 34182,
						["coord"] = { 36.6, 96.0, TALADOR },
						["g"] = {
							o(227793, {	-- Aarko's Family Treasure
								i(117567),	-- Aarko's Antique Crossbow
							}),
						},
					}),
					o(227955, {	-- Amethyl Crystal
						["questID"] = 34236,
						["coord"] = { 62.1, 32.4, TALADOR },
						["g"] = {
							i(116131),	-- Amethyl Crystal
						},
					}),
					o(228024, {	-- Aruuna Mining Cart
						["description"] = "Inside Aruuna Crystal Mine.",
						["questID"] = 34260,
						["coords"] = {
							{ 78.1, 35.6, TALADOR },	-- Aruuna Crystal Mine Entrance
							{ 81.8, 34.9, TALADOR },	-- Aruuna Mining Cart
						},
						["g"] = {
							--i(109118),	-- Blackrock Ore
						},
					}),
					o(228016, {	-- Barrel of Fish
						["questID"] = 34252,
						["coord"] = { 62.4, 48.0, TALADOR },
						["g"] = {
							currency(824),	-- Garrison Resources
						},
					}),
					o(228023, {	-- Bonechewer Remnants
						["questID"] = 34259,
						["coord"] = { 33.3, 76.8, TALADOR },
						["g"] = {
							currency(824),	-- Garrison Resources
						},
					}),
					o(229354, {	-- Bright Coin
						["description"] = "Below the bridge.",
						["questID"] = 34471,
						["coord"] = { 73.5, 51.4, TALADOR },
						["g"] = {
							i(116127),	-- Bright Coin
						},
					}),
					o(236935, {	-- Burning Blade Cache
						["questID"] = 36937,
						["coord"] = { 70.1, 7.1, TALADOR },
						["g"] = {
							i(120945),	-- Primal Spirit
						},
					}),
					o(228012, {	-- Charred Sword
						["questID"] = 34248,
						["coord"] = { 77.0, 50.0, TALADOR },
						["g"] = {
							i(116116),	-- Blazegrease Greatsword
						},
					}),
					o(227996, {	-- Curious Deathweb Egg
						["questID"] = 34239,
						["coords"] = {
							{ 61.1, 83.9, TALADOR },	-- Deathweb Hollow Cave Entrance
							{ 66.5, 86.9, TALADOR },	-- Curious Deathweb Egg
						},
						["g"] = {
							i(117569),	-- Giant Deathweb Egg (TOY!)
						},
					}),
					o(226976, {	-- Deceptia's Smoldering Boots
						["questID"] = 33933,
						["coord"] = { 58.8, 12.1, TALADOR },
						["g"] = {
							i(108743),	-- Deceptia's Smoldering Boots (TOY!)
						},
					}),
					o(228017, {	-- Draenei Weapons
						["questID"] = 34253,
						["coord"] = { 55.2, 66.7, TALADOR },
						["g"] = {
							i(116118),	-- Surplus Auchenai Weaponry
						},
					}),
					o(228013, {	-- Farmer's Bounty
						["questID"] = 34249,
						["coord"] = { 35.4, 96.6, TALADOR },
					}),
					o(227956, {	-- Foreman's Lunchbox
						["questID"] = 34238,
						["coord"] = { 57.4, 28.7, TALADOR },
						["g"] = {
							i(116120),	-- Tasty Talador Lunch (TOY!)
						},
					}),
					o(236483, {	-- Gift of the Ancients
						["description"] = "Turn each statue to face the center.",
						["questID"] = 36829,
						["coords"] = {
							{ 27.8, 75.6, TALADOR },	-- Cave Entrance
							{ 28.4, 74.2, TALADOR },	-- Gift of the Ancients
						},
						["g"] = {
							i(118686),	-- Signet Ring of Gehs'taal
						},
					}),
					o(228015, {	-- Iron Box
						["questID"] = 34251,
						["coord"] = { 64.6, 79.2, TALADOR },
						["g"] = {
							i(117571),	-- Gordunni Skullthumper
						},
					}),
					n(75644, {	-- Iron Scout
						["questID"] = 33649,
						["coord"] = { 75.1, 36.1, TALADOR },
						["g"] = {
							currency(824),	-- Garrison Resources
						},
					}),
					o(239198, {	-- Isaari's Cache
						["description"] = "Rescue 4 citizens from cocoons in Deathweb Hollow.",
						["questID"] = 34134,
						["coord"] = { 57.2, 75.3, TALADOR },
						["races"] = ALLIANCE_ONLY,
						["g"] = {
							i(117563),	-- Deathweb Toxin Vial
						},
					}),
					o(227953, {	-- Jug of Aged Ironwine
						["description"] = "Inside the cave at the base of Orunai Delta. Guarded by Murdor the Drunk.",
						["questID"] = 34233,
						["coords"] = {
							{ 64.8, 9.2,  TALADOR },	-- Cave Entrance
							{ 65.5, 11.4, TALADOR },	-- Jug of Aged Ironwine
						},
						["g"] = {
							i(117568),	-- Jug of Ironwine
						},
					}),
					o(228025, {	-- Keluu's Belongings
						["description"] = "Below the bridge.",
						["questID"] = 34261,
						["coord"] = { 75.7, 41.4, TALADOR },
					}),
					o(228570, {	-- Ketya's Stash
						["modelScale"] = 1.5,
						["questID"] = 34290,
						["coords"] = {
							{ 53.3, 25.7, TALADOR },	-- Cave Entrance
							{ 54.0, 27.6, TALADOR },	-- Ketya's Stash
						},
						["g"] = {
							i(116121),	-- A Steamy Romance Novel: I'm In Love With a Robot
							i(116402),	-- Stonegrinder (PET!)
						},
					}),
					o(228022, {	-- Light of the Sea
						["questID"] = 34258,
						["coord"] = { 38.2, 12.5, TALADOR },
						["g"] = {
							currency(824),	-- Garrison Resources
						},
					}),
					o(227527, {	-- Lightbearer
						["questID"] = 35964,
						["coord"] = { 68.8, 56.2, TALADOR },
						["g"] = {
							i(109192),	-- Lightbearer
						},
					}),
					o(227954, {	-- Luminous Shell
						["questID"] = 34235,
						["coord"] = { 52.6, 29.5, TALADOR },
						["g"] = {
							i(116132),	-- Snail Shell Necklace
						},
					}),
					o(239194, {	-- Norana's Cache
						["description"] = "Rescue 4 citizens from cocoons in Deathweb Hollow.",
						["questID"] = 34128,
						["coord"] = { 61.0, 71.7, TALADOR },
						["races"] = HORDE_ONLY,
						["g"] = {
							i(117563),	-- Death Toxin Vial
						},
					}),
					o(228026, {	-- Pure Crystal Dust
						["questID"] = 34263,
						["coords"] = {
							{ 78.2, 14.7, TALADOR },	-- Treasure
							{ 75.3, 22.3, TALADOR },	-- Cave
						},
						["g"] = {
							i(117572),	-- Iridium Inlaid Band
						},
					}),
					o(228014, {	-- Relic of Aruuna
						["questID"] = 34250,
						["coord"] = { 75.8, 44.7, TALADOR },
						["g"] = {
							i(116128),	-- Tiny Naaru Statue
						},
					}),
					o(228020, {	-- Relic of Telmor
						["questID"] = 34256,
						["coord"] = { 47.0, 91.7, TALADOR },
						["g"] = {
							i(116128),	-- Tiny Naaru Statue
						},
					}),
					o(227951, {	-- Rook's Tacklebox
						["questID"] = 34232,
						["coord"] = { 64.9, 13.3, TALADOR },
						["g"] = {
							i(116117),	-- Rook's Lucky Fishin' Line
						},
					}),
					o(228483, {	-- Rusted Lockbox
						["questID"] = 34276,
						["description"] = "Inside Deathweb Hollow. Swim down to the bottom of the cavern.",
						["coords"] = {
							{ 61.1, 83.9, TALADOR },	-- Deathweb Hollow Cave Entrance
							{ 66.0, 85.1, TALADOR },	-- Rusted Lockbox
						},
						["sym"] = COMMON_TREASURE_SYM,
					}),
					o(228018, {	-- Soulbinder's Reliquary
						["questID"] = 34254,
						["coords"] = {
							{ 41.44, 60.14, TALADOR },	-- Tomb of Souls Entrance
							{ 28.3, 35.0, 537 },	-- Soulbinder's Reliquary
						},
						["g"] = {
							i(117570),	-- Auchenai Soulbinder's Signet
						},
					}),
					o(227868, {	-- Sparkling Pool
						["questID"] = 34207,
						["description"] = "Requires Fishing.",
						["modelScale"] = 2,
						["coord"] = { 39.2, 41.7, TALADOR },
						["g"] = {
							i(112623, {	-- Pack of Fishing Supplies
								i(34834),	-- Recipe: Captain Rumsey's Lager (RECIPE!)
								i(33820),	-- Weather-Beaten Fishing Hat
								i(44983),	-- Strand Crawler (PET!)
								i(45991),	-- Bone Fishing Pole
								i(45992),	-- Jeweled Fishing Pole
							}),
						},
					}),
					o(230643, {	-- Teroclaw Nest
						["description"] = "Can be found at the base of trees near Aruuna, the Tomb of Lights and Vol'jin's Pride guarded by Teroclaw Chicks.\nCan be looted 1 time per character.",
						["questID"] = 35162,
						["modelScale"] = 2,
						["coords"] = {
							{ 72.76, 35.59, TALADOR },
							{ 70.92, 35.61, TALADOR },
							{ 72.33, 37.01, TALADOR },
							{ 73.41, 30.68, TALADOR },
							{ 70.75, 31.96, TALADOR },
						},
						["g"] = {
							i(112699),	-- Teroclaw Hatchling (PET!)
						},
					}),
					o(228021, {	-- Treasure of Ango'rosh
						["questID"] = 34257,
						["coord"] = { 38.3, 84.5, TALADOR },
						["g"] = {
							i(116119),	-- Ango'rosh Sorcerer Stone
						},
					}),
					o(228019, {	-- Webbed Sac
						["questID"] = 34255,
						["coords"] = {
							{ 61.1, 83.9, TALADOR },	-- Deathweb Hollow Cave Entrance
							{ 65.4, 88.6, TALADOR },	-- Webbed Sac
						},
						["g"] = {
							i(116129),	-- Desiccated Orc's Coin Pouch
						},
					}),
					o(227587, {	-- Yuuri's Gift -- verify if this is still exclusive to alliance
						["description"] = "Must complete the \"Nightmare in the Tomb\" quest before this treasure is visible.",
						["questID"] = 34140,
						["coord"] = { 40.6, 89.4, TALADOR },
						["races"] = ALLIANCE_ONLY,
						["g"] = {
							currency(824),	-- Garrison Resources
						},
					}),
				}),
				n(VENDORS, {
					n(84212, {	-- Kazbala
						["description"] = "This vendor is only available until you reach 50(Can be lower). Items are also available from vendors in Stormwind, Orgrimmar, and Dalaran.",
						["coord"] = { 45.2, 38.8, TALADOR },
						["g"] = {
							i(54436, {	-- Blue Clockwork Rocket Bot (PET!)
								["timeline"] = { ADDED_3_3_3 },
							}),
							i(95621, {	-- Warbot (PET!)
								["timeline"] = { ADDED_5_2_0 },
							}),
							i(54343, {	-- Blue Crashin' Thrashin' Racer Controller (TOY!)
								["timeline"] = { ADDED_3_3_3 },
							}),
							i(104324, {	-- Foot Ball (TOY!)
								["timeline"] = { ADDED_5_4_0 },
							}),
							i(137663, {	-- Soft Foam Sword (TOY!)
								["timeline"] = { ADDED_7_0_3 },
							}),
							i(104323, {	-- The Swineskin (TOY!)
								["timeline"] = { ADDED_5_4_0 },
							}),
							i(54438, {	-- Tiny Blue Ragdoll (TOY!)
								["timeline"] = { ADDED_3_3_3 },
							}),
							i(54437, {	-- Tiny Green Ragdoll (TOY!)
								["timeline"] = { ADDED_3_3_3 },
							}),
							i(44606, {	-- Toy Train Set Toy (TOY!)
								["timeline"] = { ADDED_3_0_2 },
							}),
							i(45057, {	-- Wind-Up Train Wrecker Toy (TOY!)
								["timeline"] = { ADDED_3_1_0 },
							}),
						},
					}),
					n(84216, {	-- Talgaiir the Ironrender
						["description"] = "This vendor is only available at lower levels before he becomes phased out. Items are also available from Big Zokk Torquewrench in Area 52. Items require Legionnaire/Knight-Captain or higher to purchase. |r",
						["coord"] = { 45.6, 38.6, TALADOR },
						["g"] = pvp({
							-- Note: don't mark these as unobtainable here because they are obtainable from Big Zokk in Netherstorm.
							a(i(77596)),	-- Replica Grand Marshal's Aegis
							a(i(77563)),	-- Replica Grand Marshal's Battle Hammer
							a(i(77565)),	-- Replica Grand Marshal's Bullseye
							a(i(77560)),	-- Replica Grand Marshal's Claymore
							a(i(77549)),	-- Replica Grand Marshal's Demolisher
							a(i(77551)),	-- Replica Grand Marshal's Dirk
							a(i(77564)),	-- Replica Grand Marshal's Glaive
							a(i(77557)),	-- Replica Grand Marshal's Hand Blade
							a(i(77555)),	-- Replica Grand Marshal's Hand Cannon
							a(i(77562)),	-- Replica Grand Marshal's Handaxe
							a(i(77561)),	-- Replica Grand Marshal's Longsword
							a(i(77552)),	-- Replica Grand Marshal's Mageblade
							a(i(77558)),	-- Replica Grand Marshal's Punisher
							a(i(77566)),	-- Replica Grand Marshal's Repeater
							a(i(77556)),	-- Replica Grand Marshal's Stave
							a(i(77554)),	-- Replica Grand Marshal's Sunderer
							a(i(77550)),	-- Replica Grand Marshal's Swiftblade
							a(i(77595)),	-- Replica Grand Marshal's Tome of Power
							a(i(77594)),	-- Replica Grand Marshal's Tome of Restoration
							a(i(77553)),	-- Replica Grand Marshal's Warhammer
							h(i(77574)),	-- Replica High Warlord's Battle Axe
							h(i(77567)),	-- Replica High Warlord's Battle Mace
							h(i(77582)),	-- Replica High Warlord's Blade
							h(i(77584)),	-- Replica High Warlord's Bludgeon
							h(i(77575)),	-- Replica High Warlord's Claw
							h(i(77580)),	-- Replica High Warlord's Cleaver
							h(i(77585)),	-- Replica High Warlord's Crossbow
							h(i(77571)),	-- Replica High Warlord's Destroyer
							h(i(77577)),	-- Replica High Warlord's Greatsword
							h(i(77572)),	-- Replica High Warlord's Pig Sticker
							h(i(77573)),	-- Replica High Warlord's Pulverizer
							h(i(77569)),	-- Replica High Warlord's Quickblade
							h(i(77576)),	-- Replica High Warlord's Razor
							h(i(77578)),	-- Replica High Warlord's Recurve
							h(i(77597)),	-- Replica High Warlord's Shield Wall
							h(i(77568)),	-- Replica High Warlord's Spellblade
							h(i(77579)),	-- Replica High Warlord's Street Sweeper
							h(i(77593)),	-- Replica High Warlord's Tome of Destruction
							h(i(77592)),	-- Replica High Warlord's Tome of Mending
							h(i(77581)),	-- Replica High Warlord's War Staff
						}),
					}),
					n(80765, {	-- Wixxa the Sapper <Explosives>
						["coord"] = { 71.6, 30.2, TALADOR },
						["races"] = HORDE_ONLY,
						["g"] = {
							i(23799, {	-- Schematic: Adamantite Rifle (RECIPE!)
								["isLimited"] = true,
							}),
							i(23807, {	-- Schematic: Adamantite Scope (RECIPE!)
								["isLimited"] = true,
							}),
							i(23803, {	-- Schematic: Cogspinner Goggles (RECIPE!)
								["isLimited"] = true,
							}),
							i(23816, {	-- Schematic: Fel Iron Toolbox (RECIPE!)
								["isLimited"] = true,
							}),
							i(23805, {	-- Schematic: Ultra-Spectropic Detection Goggles (RECIPE!)
								["isLimited"] = true,
							}),
						},
					}),
					n(86949, {	-- Zooti Fizzlefury
						["coord"] = { 85.0, 31.0, TALADOR },
						["g"] = {
							-- currency(1191, {	-- Valor
							un(REMOVED_FROM_GAME, i(127785)),	-- Crystallized Fel
							-- }),
							un(REMOVED_FROM_GAME, i(118290)),	-- Solium Band of Might
							un(REMOVED_FROM_GAME, i(118291)),	-- Solium Band of Wisdom
							un(REMOVED_FROM_GAME, i(118292)),	-- Solium Band of Dexterity
							un(REMOVED_FROM_GAME, i(118293)),	-- Solium Band of Endurance
							un(REMOVED_FROM_GAME, i(118294)),	-- Solium Band of Mending
							un(REMOVED_FROM_GAME, i(118305)),	-- Spellbound Runic Band of Elemental Power
							un(REMOVED_FROM_GAME, i(118306)),	-- Spellbound Runic Band of the All-Seeing Eye
							un(REMOVED_FROM_GAME, i(118307)),	-- Spellbound Runic Band of Unrelenting Slaughter
							un(REMOVED_FROM_GAME, i(118308)),	-- Spellbound Runic Band of Elemental Invincibility
							un(REMOVED_FROM_GAME, i(118309)),	-- Spellbound Runic Band of Infinite Preservation
							un(REMOVED_FROM_GAME, i(118300)),	-- Spellbound Solium Band of Sorcerous Strength
							un(REMOVED_FROM_GAME, i(118301)),	-- Spellbound Solium Band of the Kirin-Tor
							un(REMOVED_FROM_GAME, i(118302)),	-- Spellbound Solium Band of Fatal Strikes
							un(REMOVED_FROM_GAME, i(118303)),	-- Spellbound Solium Band of Sorcerous Invincibility
							un(REMOVED_FROM_GAME, i(118304)),	-- Spellbound Solium Band of the Immortal Spirit
							un(REMOVED_FROM_GAME, i(118295)),	-- Timeless Solium Band of Brutality
							un(REMOVED_FROM_GAME, i(118296)),	-- Timeless Solium Band of the Archmage
							un(REMOVED_FROM_GAME, i(118297)),	-- Timeless Solium Band of the Assassin
							un(REMOVED_FROM_GAME, i(118298)),	-- Timeless Solium Band of the Bulwark
							un(REMOVED_FROM_GAME, i(118299)),	-- Timeless Solium Band of Lifegiving
							un(REMOVED_FROM_GAME, i(124634)),	-- Thorasus, the Stone Heart of Draenor
							un(REMOVED_FROM_GAME, i(124635)),	-- Nithramus, the All-Seer
							un(REMOVED_FROM_GAME, i(124636)),	-- Maalus, the Blood Drinker
							un(REMOVED_FROM_GAME, i(124637)),	-- Sanctus, Sigil of the Unbroken
							un(REMOVED_FROM_GAME, i(124638)),	-- Etheralus, the Eternal Reward
						},
					}),
				}),
			},
		}),
	}),
});

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.WOD, bubbleDownSelf({ ["timeline"] = { ADDED_6_0_2 } }, {
	m(DRAENOR, {
		m(TALADOR, {
			n(QUESTS, {
				q(34935),	-- After Wall Greeting - triggers during "Dropping In" after taking the portal (questID 34913 & 34879)
				q(34560),	-- Armory
				q(34568),	-- Armory
				q(37301),	-- Armory
				q(37304),	-- Armory
				q(34793),	-- Auchenai Defenders Greeting
				q(35044),	-- Cordana Summon - triggers if you build the Arcane Sanctum and approach Khadgar at the entrance of Zangarra
				q(34920),	-- Destroy Ward - triggers when interacting with the first orb during "Orbs of Power" (questID 34911 & 34889)
				q(33927),	-- Draenei Camp Explosion Tracker - triggers when approaching the area for Deceptia's Smoldering Boots
				q(37300),	-- Drafting Table Interact - triggers when you switch buildings in Talador
				q(34895),	-- Dropping Bombs Tracking
				q(34983),	-- Dropping Bombs Tracking
				q(35047),	-- Dropping Bombs Tracking
				q(34835),	-- Gather Energy - triggers when interacting with an energy orb in Zangarra during "Gathering the Spark" (questID 34619 & 34636)
				q(34834),	-- General Commentary - triggers when you interact with the second ancient during "Forming the Scroll" (questID 34612 & 34635)
				q(33727),	-- Heal Up
				q(34934),	-- Initial Defenders - triggers when approaching the gate at Gordal Fortress
				q(34821),	-- Khadgar Summon - triggers when you take the portal to Khadgar's Tower during "Making Acquaintances" (questID 34815 & 34814)
				q(34906),	-- Krelas Summoned - triggers when Krelas is summoned while approaching the arcane gate during "Dropping In" (questID 34913 & 34879)
				q(34561),	-- Mage Tower
				q(34567),	-- Mage Tower
				q(37302),	-- Mage Tower
				q(37303),	-- Mage Tower
				q(35051),	-- Mage Tower Complete - triggers when obtaining your follower after "Due Cause to Celebrate"
				q(34772),	-- Morkeths Cage
				q(34946),	-- Morkurk Greeting
				q(36905),	-- Ogre Waygate
				q(34904),	-- Portal Vision - triggers when the portal is summoned to get on the wall during "Dropping In" (questID 34913 & 34879)
				q(34833),	-- Prune Ancient - triggers when you interact with the first ancient during "Forming the Scroll" (questID 34612 & 34635)
				q(33732),	-- Sabotage Siege Weapons
				q(35192),	-- See Reinforcements Teleport - triggers when Lord Morkurk is killed during "The Final Step" (questID 34912 & 34890)
				q(34969),	-- Serena Summoned - triggers when approaching Gordal Fortress and Serena ports in
				q(34503),	-- Screaming Telmor Citizen - triggers in Telmor
				q(36942),	-- Soulbinder Aedraa - triggers when approaching Exarch Maladar during "Light's Rest" (questID 34452)
				q(33931),	-- This Is Not a Quest - triggers when you loot Deceptia's Smoldering Boots
				q(34857),	-- Tracking Flag: Orcs Kicked Out of Cave - triggers when going to turn in "Old Friends, New Enemies" (questID 35226)
				q(35491),	-- Tracking Flag - Underseer Bloodmane Vignette - secondary quest trigger for Underseer Bloodmane rare
				q(33645),	-- Tracking Quest - Iskar's Hired Hand
				q(34760),	-- Treasure: Warchest of Kull'krosh - secondary quest trigger for Rusted Lockbox treasure
				q(34562),	-- Trigger Teron'gor Defense Spawns - triggers in a cave with Soulbind Nyami at Gul'Rok
				q(34047),	-- Tuurem Explosion Tracker
				q(34574),	-- Unused - triggeres when choosing the Arcane Sanctum building
				q(34184),	-- Vignette: Aarkos - Killed Boss — first quest that triggers before looting Aarko's Family Treasure in Talador (we have the loot quest attached to the treasure)
				q(34199),	-- Vignette: Anchorite's Sojourn
				q(34101),	-- Vignette: Aruumel's Worn Mace - triggers when looting "Lightbearer"
				q(34220),	-- Vignette: Echo of Murmur - triggers when killed, but not yet looted
				q(34114),	-- Vignette: Four Friends Found - triggers when all 4 citizens are freed from deathweb cocoons, making the Deathweb Toxin Vial treasure lootable (A)
				q(34115),	-- Vignette: Four Friends Found - triggers when all 4 citizens are freed from deathweb cocoons, making the Deathweb Toxin Vial treasure lootable (H)
				q(34110),	-- Vignette: Girl 1 Found - triggers breaking a deathweb cocoon in Deathweb Hollow (A)
				q(34116),	-- Vignette: Girl 1 Found - triggers breaking a deathweb cocoon in Deathweb Hollow (H)
				q(34111),	-- Vignette: Girl 2 Found - triggers breaking a deathweb cocoon in Deathweb Hollow (A)
				q(34117),	-- Vignette: Girl 2 Found - triggers breaking a deathweb cocoon in Deathweb Hollow (H)
				q(34112),	-- Vignette: Guy 1 Found - triggers breaking a deathweb cocoon in Deathweb Hollow (A)
				q(34118),	-- Vignette: Guy 1 Found - triggers breaking a deathweb cocoon in Deathweb Hollow (H)
				q(34113),	-- Vignette: Guy 2 Found - triggers breaking a deathweb cocoon in Deathweb Hollow (A)
				q(34119),	-- Vignette: Guy 2 Found - triggers breaking a deathweb cocoon in Deathweb Hollow (H)
				q(34523),	-- Warlock Speaking to Gul'dan - triggers near Gul'Rok
			}),
		}),
	}),
})));