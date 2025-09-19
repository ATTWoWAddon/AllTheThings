---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, {
	m(PANDARIA, {
		m(DREAD_WASTES, {
			["lore"] = "The Dread Wastes are an area of Pandaria, located south of Townlong Steppes and west of the Valley of the Four Winds and Vale of Eternal Blossoms. Separated from the rest of Pandaria by the Serpent's Spine constructed during the rule of Lei Shen, the Dread Wastes are the home of the Mantid. The landscape is dotted with massive Kypari trees that produce the amber which the Mantid utilize in many ways. Klaxxi'vess serves as the main quest hub for the zone, but there are two Pandaren settlements, Soggy's Gamble and Sunset Brewgarden, that provide additional quests and are necessary for unlocking all of the Paragons.",
			["icon"] = 624970,
			["groups"] = {
				n(ACHIEVEMENTS, {
					ach(7312),	-- Amber is the Color of My Energy
					ach(6540),	-- Dread Haste Makes Dread Waste
					ach(6978),	-- Explore Dread Wastes
					ach(7316, {	-- Over Their Heads
						crit(20511, {		-- Garalon
							["crs"] = { 63667 },
							["coords"] = {
								{ 39, 35, DREAD_WASTES },
								{ 41, 39, DREAD_WASTES },
							},
						}),
						crit(20509, {		-- Wind Lord Mel'jarak
							["crs"] = { 63665 },
							["coord"] = { 39, 35, DREAD_WASTES },
						}),
						crit(20508, {		-- Blade Lord Ta'yak
							["crs"] = { 63664 },
							["coord"] = { 39, 35, DREAD_WASTES },
						}),
						crit(20510, {		-- Amber-Shaper Un'sok
							["crs"] = { 63666 },
							["coord"] = { 39, 35, DREAD_WASTES },
						}),
						crit(20507, {		-- Imperial Vizier Zor'lok
							["crs"] = { 63662 },
							["coord"] = { 39, 35, DREAD_WASTES },
						}),
						crit(21001, {		-- Amber Earthshaker
							["crs"] = { 65456 },
							["coord"] = { 51, 48, DREAD_WASTES },
						}),
						crit(20506, {		-- Amber Rocktunneler
							["crs"] = { 63638 },
							["coord"] = { 51, 21, DREAD_WASTES },
						}),
						crit(20505, {		-- Amber Venomlancer
							["crs"] = { 63619 },
							["coord"] = { 56, 13, DREAD_WASTES },
						}),
						crit(21002, {		-- Dread Ambercrusher
							["crs"] = { 65435 },
							["coord"] = { 41, 38, DREAD_WASTES },
						}),
						crit(21003, {		-- Dread Fearbringer
							["crs"] = { 65439 },
							["coord"] = { 39, 42, DREAD_WASTES },
						}),
						crit(21004, {		-- Essence of Dread
							["crs"] = { 65491 },
							["coord"] = { 55, 45, DREAD_WASTES },
						}),
						crit(21005, {		-- Essence of Fear
							["crs"] = { 65487 },
							["coord"] = { 59, 18, DREAD_WASTES },
						}),
						crit(21006, {		-- Essence of Horror
							["crs"] = { 65490 },
							["coord"] = { 45, 41, DREAD_WASTES },
						}),
						crit(21007, {		-- Essence of Panic
							["crs"] = { 65489 },
							["coord"] = { 61, 47, DREAD_WASTES },
						}),
						crit(21008, {		-- Essence of Terror
							["crs"] = { 65488 },
							["coord"] = { 43, 28, DREAD_WASTES },
						}),
					}),
					ach(7321),	-- Spreading the Warmth
					ach(7314),	-- Test Drive
					ach(6545),	-- The Klaxxi
					ach(7313, {	-- Stay Klaxxi
						crit(20951, {	-- Angel of Death
							["provider"] = { "n", 62538 },	-- Kil'ruk the Wind-Reaver
						}),
						crit(20952, {	-- Master of Puppets
							["provider"] = { "n", 63758 },	-- Kaz'tik the Manipulator
						}),
						crit(20953, {	-- Painkiller
							["provider"] = { "n", 62180 },	-- Korven the Prime
						}),
						crit(20954, {	-- Seek and Destroy
							["provider"] = { "n", 63785 },	-- Hisek the Swarmkeeper
						}),
						crit(20955, {	-- Raining Blood
							["provider"] = { "n", 62151 },	-- Xaril the Poisoned Mind
						}),
						crit(20956, {	-- Iron Mantid
							["providers"] = {
								{ "n",  62774 },	-- Malik the Unscathed
								{ "o", 215872 },	-- Halberd of the Unscathed
							},
							["coord"] = { 55.1, 35.4, DREAD_WASTES },
							["description"] = "If for some reason you can't find Malik, you can interact with the Halberd of the Unscathed instead to get the buff.",
						}),
						crit(20957, {	-- Silent Lucidity
							["provider"] = { "n", 65305 },	-- Iyyokuk the Lucid
						}),
						crit(20958, {	-- Speed King
							["provider"] = { "n", 65303 },	-- Ka'roz the Locust
						}),
						crit(20959, {	-- Children of the Grave
							["provider"] = { "n", 63072 },	-- Rik'kal the Dissector
						}),
						crit(20960, {	-- Battle Hymn
							["provider"] = { "n", 63071 },	-- Skeer The Bloodseeker
						}),
					}),
					ach(8023, {		-- Wakener
						title(218),		-- <Name> the Wakener
					}),
				}),
				battlepets({
					pet(732, {	-- Amber Moth (PET!)
						["coords"] = {
							{ 47.4, 16.8, DREAD_WASTES },
							{ 55.6, 33.6, DREAD_WASTES },
						},
					}),
					pet(742),	-- Clouded Hedgehog (PET!)
					pet(745),	-- Crunchy Scorpion (PET!)
					pet(746, {	-- Emperor Crab (PET!)
						["coord"] = { 25.5, 65.6, DREAD_WASTES },
					}),
					pet(743, {	-- Rapana Whelk (PET!)
						["coord"] = { 36.6, 63.4, DREAD_WASTES },
					}),
					pet(744),	-- Resilient Roach (PET!)
					pet(741),	-- Silent Hedgehog (PET!)
				}),
				explorationHeader({
					visit_exploration(6446,{coord={29.6,89.6,DREAD_WASTES}}),	-- Amber Quarry
					exploration(6429),	-- Chittering Coast
					visit_exploration(6441,{coord={53.4,56.6,DREAD_WASTES}}),	-- Duskroot Fen
					exploration(6437),	-- Fear Clutch
					visit_exploration(6425,{coord={67.5,36.9,DREAD_WASTES}}),	-- Forgotten Mire
					exploration(6435),	-- Heart of Fear
					exploration(6315),	-- Klaxxi'vess
					exploration(6329),	-- Kor'vess
					exploration(6440),	-- Kypari Ik
					exploration(6343),	-- Kypari Vor
					exploration(6300),	-- Kypari Zar
					exploration(6293),	-- Lake of Stars
					exploration(6433),	-- Lonesome Cove
					visit_exploration(6448,{coord={51.9,71.8,DREAD_WASTES}}),	-- Mazu's Overlook
					visit_exploration(6346,{coord={47.0,16.8,DREAD_WASTES}}),	-- Morrowchamber
					visit_exploration(6506,{coord={36.9,16.9,DREAD_WASTES}}),	-- Motherseed Pit
					exploration(6404),	-- Muckscale Shallows
					exploration(6439),	-- Panic Clutch
					exploration(6339),	-- Rikkilea
					exploration(6336),	-- Rikkitun Village
					exploration(6368),	-- Soggy's Gamble
					exploration(6306),	-- Terrace of Gurthan
					visit_exploration(6347,{coord={53.6,15.3,DREAD_WASTES}}),	-- The Amber Vault
					exploration(6391),	-- The Briny Muck
					exploration(6442),	-- The Clutches of Shek'zeer
					visit_exploration(6447,{coord={32.8,51.7,DREAD_WASTES}}),	-- The Stinging Trail
					exploration(6334),	-- The Sunset Brewgarden
					visit_exploration(6434,{coord={66.4,23.0,DREAD_WASTES}}),	-- The Thundering Run
					exploration(6418),	-- Venomous Ledge
					exploration(6443),	-- Writhingwood
					exploration(6444),	-- Zan'vess
				}),
				n(FACTIONS, {
					faction(FACTION_THE_KLAXXI, {	-- The Klaxxi
						["icon"] = 646377,
					}),
				}),
				n(FLIGHT_PATHS, {
					fp(1070, {	-- Klaxxi'vess, Dread Wastes
						["cr"] = 63501,	-- Kik'tik <Flight Master>
						["coord"] = { 55.8, 34.8, DREAD_WASTES },
					}),
					fp(1071, {	-- Soggy's Gamble, Dread Wastes
						["cr"] = 63498,	-- Min the Breeze Rider <Flight Master>
						["coord"] = { 56.0, 70.2, DREAD_WASTES },
					}),
					fp(1090, {	-- The Briny Muck, Dread Wastes
						["cr"] = 65511,	-- Infiltrator Ik'thal <Flight Master>
						["coord"] = { 42.6, 55.6, DREAD_WASTES },
					}),
					fp(1072, {	-- The Sunset Brewgarden, Dread Wastes
						["cr"] = 63500,	-- Jin the Flying Keg <Flight Master>
						["coord"] = { 50.2, 12.2, DREAD_WASTES },
					}),
				}),
				petbattles({
					n(68462, {	-- Flowing Pandaren Spirit <Grand Master Pet Tamer>
						["coord"] = { 61.2, 87.6, DREAD_WASTES },
						["timeline"] = { ADDED_5_1_0 },
						["petBattleLvl"] = 25,
						["groups"] = {
							q(32439, {	-- Flowing Pandaren Spirit
								["sourceQuest"] = 32428,	-- Pandaren Spirit Tamer
								["timeline"] = { ADDED_5_1_0 },
								["isDaily"] = true,
								["groups"] = {
									i(93147, {	-- Pandaren Spirit Pet Supplies
										["sym"] = {{"select","itemID",
											89139,	-- Chain Pet Leash
											44820,	-- Red Ribbon Pet Leash
											37460,	-- Rope Pet Leash
										}},
										["groups"] = {
											i(90173),	-- Pandaren Water Spirit (PET!)
										},
									})
								},
							}),
						},
					}),
					n(66739, {	-- Wastewalker Shu <Grand Master Pet Tamer>
						["coord"] = { 55.0, 37.6, DREAD_WASTES },
						["timeline"] = { ADDED_5_0_4 },
						["petBattleLvl"] = 25,
						["groups"] = {
							q(31957, {	-- Grand Master Shu
								["sourceAchievement"] = 6606,	-- Taming Pandaria
								["timeline"] = { ADDED_5_0_4 },
								["isDaily"] = true,
								["groups"] = {
									i(89125),	-- Sack of Pet Supplies
								},
							}),
						},
					}),
				}),
				n(PROFESSIONS, {
					prof(ALCHEMY, {
						n(65186, {	-- Poisoncrafter Kil'zit <Alchemy Trainer>
							["coord"] = { 55.6, 35.2, DREAD_WASTES },
							["groups"] = MOP_ALCHEMY,
						}),
					}),
				}),
				n(QUESTS, {	-- NOTE:: this zone is largely driven by reputation. If verifying any sourceQuest chains, I recommend doing all dailies in Klaxxi'vess as they become available to ensure you don't miss something
					q(31178, {	-- A Bloody Delight
						["sourceQuest"] = 31175,	-- Skeer the Bloodseeker
						["qg"] = 63071,	-- Skeer the Bloodseeker
						["coord"] = { 25.7, 50.2, DREAD_WASTES },
						["groups"] = {
							i(85229),	-- Volatile Blood (QI!)
						},
					}),
					q(31066, {	-- A Cry From Darkness
						["sourceQuests"] = {
							31010,	-- In Her Clutch
							31660,	-- Not Fit to Swarm
							31007,	-- The Dread Clutches
						},
						["qg"] = 64815,	-- Kor'ik
						["coord"] = { 54.7, 34.0, DREAD_WASTES },
						["groups"] = {
							i(84060),	-- Band of Channeled Whispers
							i(84061),	-- Ring of Unspeakable Nightmares
							i(84062),	-- Band of Sudden Dreams
							i(84063),	-- Seal of the Paragon Wakened
							i(84064),	-- Clutch-Keeper Seal
						},
					}),
					q(31268, {	-- A Little Brain Work
						["sourceQuests"] = {
							31092,	-- Feed or Be Eaten
							31359,	-- The Kunchong Whisperer
						},
						["qg"] = 63758,	-- Kaz'tik the Manipulator
						["coord"] = { 54.3, 35.8, DREAD_WASTES },
						["isDaily"] = true,
						["groups"] = {
							i(85885),	-- Amber-Encrusted Brain (QI!)
							i(85884),	-- Sonic Emitter (QI!)
						},
					}),
					q(31730, {	-- A Not So Friendly Request
						["sourceQuest"] = 31398,	-- Falling to Pieces
						["qg"] = 62538,	-- Kil'ruk the Wind-Reaver
						["coord"] = { 55.0, 35.8, DREAD_WASTES },
						["isBreadcrumb"] = true,
					}),
					q(31210, {	-- A Shade of Dread
						["sourceQuest"] = 31018,	-- Beneath the Heart of Fear
						["qg"] = 62151,	-- Xaril the Poisoned Mind
						["coord"] = { 28.6, 42.1, DREAD_WASTES },
						["groups"] = {
							o(213267, {	-- Dreadshade
								i(85573),	-- Dreadshade (QI!)
							}),
						},
					}),
					q(31661, {	-- A Source of Terrifying Power
						["sourceQuest"] = 31006,	-- The Klaxxi Council
						["provider"] = { "o", 214562 },	-- Sha-Haunted Crystal
						["coord"] = { 44.5, 41.3, DREAD_WASTES },
					}),
					q(31176, {	-- A Strange Appetite
						["sourceQuest"] = 31175,	-- Skeer the Bloodseeker
						["qg"] = 63071,	-- Skeer the Bloodseeker
						["coord"] = { 25.7, 50.2, DREAD_WASTES },
						["groups"] = {
							o_repeated({
								i(85211),	-- Starfish Meat (QI!)
								o(212987),	-- Spiny Starfish
								o(212988),	-- Spiny Starfish
							}),
						},
					}),
					q(56617, {	-- A Unified Swarm
						["sourceQuest"] = 56616,	-- Old Faces, New Problems
						["qg"] = 155582,	-- Taoshi
						["coord"] = { 45.3, 16.4, DREAD_WASTES },
						["timeline"] = { ADDED_8_3_0 },
						["lvl"] = 120,
						["groups"] = {
							objective(1, {	-- 0/5 Corrupted Amber Destroyed
								["provider"] = { "o", 330624 },	-- Corrupted Amber
							}),
						},
					}),
					q(31008, {	-- Amber Arms
						["sourceQuest"] = 31006,	-- The Klaxxi Council
						["qg"] = 64599,	-- Ambersmith Zikk
						["coord"] = { 55.0, 35.5, DREAD_WASTES },
						["groups"] = {
							i(83135),	-- Amber Blade (QI!)
							i(88122),	-- Motherseed Shoes
							i(88121),	-- Sapfly Shoes
							i(88120),	-- Withered Wood Shoes
							i(88119),	-- Lucidity Shoes
							i(88118),	-- Dreadspinner Shoes
							i(88117),	-- Ghost Fox Shoes
							i(88116),	-- Wind-Reaver Shoes
							i(88115),	-- Bladesworn Shoes
							i(88114),	-- Coldbite Shoes
						},
					}),
					q(31019, {	-- Amber Is Life
						["sourceQuest"] = 31066,	-- A Cry From Darkness
						["qg"] = 62538,	-- Kil'ruk the Wind-Reaver
						["coord"] = { 55.0, 35.8, DREAD_WASTES },
					}),
					q(56580, {	-- Amber Secrets
						["sourceQuests"] = {
							56577,	-- Crippling the Hive
							56575,	-- Once More Into Kor'vess
						},
						["qg"] = 155582,	-- Taoshi
						["coord"] = { 45.3, 16.4, DREAD_WASTES },
						["timeline"] = { ADDED_8_3_0 },
						["lvl"] = 120,
						["groups"] = {
							i(169866),	-- Corrupted Amber Chunk (QI!)
							objective(1, {	-- 0/8 Corrupted Amber Chunk
								["provider"] = { "i", 169866 },	-- Corrupted Amber Chunk (QI!)
								["crs"] = {
									155542,	-- Zara'thik Ambersinger
									155544,	-- Zara'thik Rootguard
									155545,	-- Zara'thik Havoc
								},
							}),
						},
					}),
					q(31232, {	-- An Ancient Empire
						["sourceQuest"] = 31026,	-- The Root of the Problem
						["qg"] = 62180,	-- Korven the Prime
						["coord"] = { 54.3, 36.0, DREAD_WASTES },
						["isDaily"] = true,
						["groups"] = {
							i(85634),	-- Gurthani Tablet (QI!)
						},
					}),
					q(31676, {	-- Ancient Vengeance
						["sourceQuest"] = 31004,	-- Preserved in Amber
						["qg"] = 62202,	-- Kil'ruk the Wind-Reaver
						["coord"] = { 70.1, 25.6, DREAD_WASTES },
					}),
					q(31271, {	-- Bad Genes
						["sourceQuest"] = 31606,	-- The Dissector Wakens
						["qgs"] = {
							63072,	-- Rik'kal the Dissector
							67091,	-- Rik'kal the Dissector
						},
						["coord"] = { 54.4, 35.9, DREAD_WASTES },
						["isDaily"] = true,
					}),
					q(31018, {	-- Beneath the Heart of Fear
						["qg"] = 62538,	-- Kil'ruk the Wind-Reaver
						["coord"] = { 55.0, 35.8, DREAD_WASTES },
						["minReputation"] = { FACTION_THE_KLAXXI, REVERED },
					}),
					q(31090, {	-- Better With Age
						["description"] = "This version is available if Kor'ik has not been killed yet.",
						["sourceQuest"] = 31087,	-- Extending Our Coverage
						["altQuests"] = { 31681 },	-- Better With Age
						["qg"] = 65365,	-- Kor'ik
						["coord"] = { 48.1, 49.6, DREAD_WASTES },
						["groups"] = {
							i(84635),	-- Amberglow Locket
							i(84636),	-- Amberglow Choker
							i(84637),	-- Amberglow Necklace
							i(84638),	-- Amberglow Pendant
							i(84639),	-- Amberglow Amulet
						},
					}),
					q(31681, {	-- Better With Age
						["description"] = "This version is available if Kor'ik has been killed.",
						["sourceQuest"] = 31679,	-- Extending Our Coverage
						["altQuests"] = { 31090 },	-- Better With Age
						["qg"] = 65975,	-- Zer'ik
						["coord"] = { 48.1, 49.6, DREAD_WASTES },
						["groups"] = {
							o(212923, {	-- Amber Collector
								i(85159),	-- Amber-Filled Jar (QI!)
							}),
							i(84635),	-- Amberglow Locket
							i(84636),	-- Amberglow Choker
							i(84637),	-- Amberglow Necklace
							i(84638),	-- Amberglow Pendant
							i(84639),	-- Amberglow Amulet
						},
					}),
					q(31084, {	-- Bind the Glamour
						["sourceQuests"] = {
							31080,	-- Fiery Wings
							31082,	-- Great Vessel of Salvation
							31081,	-- Incantations Fae and Primal
							31079,	-- The Horror Comes A-Rising
						},
						["qg"] = 62771,	-- Chief Rikkitun
						["coord"] = { 38.6, 17.2, DREAD_WASTES },
					}),
					q(31086, {	-- Blood of Ancients
						["sourceQuest"] = 31084,	-- Bind the Glamour
						["qg"] = 62666,	-- Sapmaster Vu
						["coord"] = { 38.1, 17.1, DREAD_WASTES },
						["groups"] = {
							o(212902, {	-- Solidified Amber
								i(84779),	-- Chunk of Solidified Amber (QI!)
							}),
						},
					}),
					q(31069, {	-- Bound With Shade
						["sourceQuest"] = 31067,	-- The Heavens Hum With War
						["qg"] = 62666,	-- Sapmaster Vu
						["coord"] = { 51.2, 11.3, DREAD_WASTES },
						["groups"] = {
							i(84080),	-- Shadebound Cape
							i(84081),	-- Vu's Drape
							i(84082),	-- Sapmaster's Cloak
							i(84083),	-- Brewgarden Cape
							i(84084),	-- Sunset Cloak
						},
					}),
					q(31073, {	-- Bound With Wood
						["sourceQuests"] = {
							31070,	-- Daggers of the Great Ones
							31069,	-- Bound With Shade
						},
						["qg"] = 62666,	-- Sapmaster Vu
						["coord"] = { 51.2, 11.3, DREAD_WASTES },
						["groups"] = {
							i(84118),	-- Fragrant Corewood (QI!)
						},
					}),
					q(31238, {	-- Brain Food
						["sourceQuests"] = {
							31092,	-- Feed or Be Eaten
							31359,	-- The Kunchong Whisperer
						},
						["qg"] = 63758,	-- Kaz'tik the Manipulator
						["coord"] = { 54.3, 35.8, DREAD_WASTES },
						["isDaily"] = true,
						["groups"] = {
							i(85665),	-- Mushan Tongue (QI!)
						},
					}),
					q(31682, {	-- By the Sea, Nevermore
						["description"] = "This version is only available if Kor'ik has been killed & you did not complete the other version yet. If you did the alt version of this quest, there is no chance you will ever complete this quest on your current character.",
						["sourceQuests"] = {
							31681,	-- Better With Age
							31680,	-- Crime and Punishment
						},
						["altQuests"] = { 31089 },	-- By the Sea, Nevermore
						["qg"] = 65975,	-- Zer'ik
						["coord"] = { 48.1, 49.6, DREAD_WASTES },
						["timeline"] = { ADDED_5_0_4, REMOVED_10_2_7 },
						["DisablePartySync"] = true,
					}),
					q(31089, {	-- By the Sea, Nevermore
						["description"] = "This version is available if Kor'ik has not been killed yet.",
						["sourceQuests"] = {
							31090,	-- Better With Age
							31088,	-- Crime and Punishment
						},
						["altQuests"] = { 31682 },	-- By the Sea, Nevermore
						["qg"] = 65365,	-- Kor'ik
						["coord"] = { 48.1, 49.6, DREAD_WASTES },
						-- #if BEFORE 10.2.7
						-- #endif
						["groups"] = {
							i(84119),	-- Klaxxi Tuning Fork (QI!)
						},
					}),
					q(31107, {	-- Citizens of a New Empire
						["sourceQuests"] = {
							31010,	-- In Her Clutch
							31660,	-- Not Fit to Swarm
							31007,	-- The Dread Clutches
						},
						["qg"] = 62774,	-- Malik the Unscathed
						["coord"] = { 55.0, 35.4, DREAD_WASTES },
						["groups"] = {
							o(214170, {	-- Vorthik Egg
								i(86598),	-- Vor'thik Eggs (QI!)
							}),
						},
					}),
					q(31108, {	-- Concentrated Fear
						["sourceQuest"] = 31661,	-- A Source of Terrifying Power
						["qg"] = 64599,	-- Ambersmith Zikk
						["coord"] = { 55.0, 35.5, DREAD_WASTES },
						["groups"] = {
							i(86616),	-- Dread Amber Focus (QI!)
						},
					}),
					q(31441, {	-- Corruption Runs Deep
						["sourceQuest"] = 31439,	-- Dropping Our Signal
						["qgs"] = {
							64569,	-- Hisek the Swarmkeeper
							64672,	-- Hisek the Swarmkeeper
						},
						["coord"] = { 56.2, 58.2, DREAD_WASTES },
					}),
					q(31680, {	-- Crime and Punishment
						["description"] = "This version is available if Kor'ik has been killed.",
						["sourceQuest"] = 31679,	-- Extending Our Coverage
						["altQuests"] = { 31088 },	-- Crime and Punishment
						["qg"] = 65975,	-- Zer'ik
					}),
					q(31088, {	-- Crime and Punishment
						["description"] = "This version is available if Kor'ik has not been killed yet.",
						["sourceQuest"] = 31087,	-- Extending Our Coverage
						["altQuests"] = { 31680 },	-- Crime and Punishment
						["qg"] = 65365,	-- Kor'ik
					}),
					q(56577, {	-- Crippling the Hive
						["description"] = "Must be on or have completed |cFFFFD700Once More Into Kor'vess|r to get this quest.",
						["sourceQuest"] = 56574,	-- Reflections in Amber
						["qg"] = 155562,	-- Shado-Pan Master (Taoshi follower)
						["coord"] = { 44.8, 19.1, DREAD_WASTES },
						["timeline"] = { ADDED_8_3_0 },
						["lvl"] = 120,
					}),
					q(31109, {	-- Culling the Swarm
						["sourceQuest"] = 31066,	-- A Cry From Darkness
						["qg"] = 62538,	-- Kil'ruk the Wind-Reaver
						["coord"] = { 55.0, 35.8, DREAD_WASTES },
						["isDaily"] = true,
					}),
					q(31070, {	-- Daggers of the Great Ones
						["sourceQuest"] = 31068,	-- Sacred Recipe
						["qg"] = 62668,	-- Olon
						["coord"] = { 51.1, 11.2, DREAD_WASTES },
						["groups"] = {
							i(84107),	-- Large Mushan Tooth (QI!)
						},
					}),
					q(31458, {	-- Damage Control
						["sourceQuest"] = 31441,	-- Corruption Runs Deep
						["qgs"] = {
							64705,	-- Hisek the Swarmkeeper
							65454,	-- Hisek the Swarmkeeper
						},
						["coord"] = { 56.2, 58.2, DREAD_WASTES },
						["groups"] = {
							i(87269),	-- Kypari Ik Resonating Crystal (QI!)
						},
					}),
					q(31216, {	-- Dark Skies
						["sourceQuest"] = 31211,	-- The Poisoned Mind
						["qg"] = 62151,	-- Xaril the Poisoned Mind
						["coord"] = { 54.9, 36.1, DREAD_WASTES },
						["isDaily"] = true,
					}),
					q(31209, {	-- Dark Wings, Dark Things
						["sourceQuest"] = 31018,	-- Beneath the Heart of Fear
						["qg"] = 62151,	-- Xaril the Poisoned Mind
						["coord"] = { 28.6, 42.1, DREAD_WASTES },
						["groups"] = {
							i(85572),	-- Scarab Wing (QI!)
						},
					}),
					q(31009, {	-- Dead Zone
						["sourceQuest"] = 31006,	-- The Klaxxi Council
						["qg"] = 64815,	-- Kor'ik
						["coord"] = { 54.7, 34.0, DREAD_WASTES },
						["groups"] = {
							i(83276),	-- Klaxxi Resonating Crystal (QI!)
						},
					}),
					q(31237, {	-- Debugging the Terrace
						["sourceQuests"] = {
							31458,	-- Damage Control
							31465,	-- Extracting Answers
						},
						["qg"] = 63785,	-- Hisek the Swarmkeeper
						["coord"] = { 54.8, 36.2, DREAD_WASTES },
						["isDaily"] = true,
					}),
					q(31186, {	-- Dog Food
						["sourceQuest"] = 31183,	-- Meet the Cap'n
						["qg"] = 63955,	-- Dog
						["coord"] = { 46.2, 76.8, DREAD_WASTES },
					}),
					q(31000, {	-- Dread Space
						["qg"] = 62667,	-- Lya of Ten Songs
						["coord"] = { 50.7, 11.7, DREAD_WASTES },
						["isBreadcrumb"] = true,
					}),
					q(31886, {	-- Dread Space
						["qg"] = 63498,	-- Min the Breeze Rider
						["coord"] = { 56.0, 70.1, DREAD_WASTES },
						["isBreadcrumb"] = true,
					}),
					q(31231, {	-- Dreadspinner Extermination
						["sourceQuest"] = 31066,	-- A Cry From Darkness
						["qg"] = 62538,	-- Kil'ruk the Wind-Reaver
						["coord"] = { 55.0, 35.8, DREAD_WASTES },
						["isDaily"] = true,
					}),
					q(31439, {	-- Dropping Our Signal
						["sourceQuest"] = 31066,	-- A Cry From Darkness
						["qg"] = 64815,	-- Kor'ik
						["coord"] = { 54.7, 34.0, DREAD_WASTES },
						["minReputation"] = { FACTION_THE_KLAXXI, REVERED },
						["groups"] = {
							i(87202),	-- Klaxxi Tuning Fork (QI!)
						},
					}),
					q(31111, {	-- Eradicating the Zan'thik
						["sourceQuest"] = 31066,	-- A Cry From Darkness
						["qg"] = 62538,	-- Kil'ruk the Wind-Reaver
						["coord"] = { 55.0, 35.8, DREAD_WASTES },
						["isDaily"] = true,
					}),
					q(31077, {	-- Evie Stormstout
						["sourceQuests"] = {
							31076,	-- Fate of the Stormstouts
							31129,	-- Fate of the Stormstouts
						},
						["qg"] = 67138,	-- Chen Stormstout
						["coord"] = { 54.0, 20.4, DREAD_WASTES },
					}),
					q(31087, {	-- Extending Our Coverage
						["description"] = "This version is available if Kor'ik has not been killed yet.",
						["sourceQuest"] = 31066,	-- A Cry From Darkness
						["altQuests"] = { 31679 },	-- Extending Our Coverage
						["qg"] = 64815,	-- Kor'ik
						["coord"] = { 54.7, 34.0, DREAD_WASTES },
						["groups"] = {
							i(86009),	-- Resonating Crystal (QI!)
						},
					}),
					q(31679, {	-- Extending Our Coverage
						["description"] = "This version is available if Kor'ik has been killed.",
						["sourceQuest"] = 31441,	-- Corruption Runs Deep
						["altQuests"] = { 31087 },	-- Extending Our Coverage
						["qg"] = 65975,	-- Zer'ik
						["coord"] = { 48.0, 49.6, DREAD_WASTES },
						["groups"] = {
							i(86009),	-- Resonating Crystal (QI!)
						},
					}),
					q(31465, {	-- Extracting Answers
						["sourceQuest"] = 31441,	-- Corruption Runs Deep
						["qgs"] = {
							64705,	-- Hisek the Swarmkeeper
							65454,	-- Hisek the Swarmkeeper
						},
						["coord"] = { 56.2, 58.2, DREAD_WASTES },
						["groups"] = {
							i(87263),	-- Venom-Coated Mandible (QI!)
							i(88140),	-- Motherseed Wristwraps
							i(88139),	-- Sapfly Wristwraps
							i(88138),	-- Withered Wood Wristwraps
							i(88137),	-- Lucidity Wristwraps
							i(88136),	-- Deadspinner Wristwraps
							i(88135),	-- Ghost Fox Wristwraps
							i(88134),	-- Wind-Reaver Wristwraps
							i(88133),	-- Bladesworn Wristwraps
							i(88132),	-- Coldbite Wristwraps
						},
					}),
					q(31001, {	-- Falling Down
						["sourceQuests"] = {
							-- NOTE: all of these are breadcrumbs from multiple places.. crazy
							31847,	-- Better Dead than Dread
							31895,	-- Better Off Dread
							31000,	-- Dread Space
							31886,	-- Dread Space
							-- #if AFTER 7.3.5
							49561,	-- Hero's Call: Dread Wastes!
							-- #endif
							31390,	-- The Klaxxi (A)
							31391,	-- The Klaxxi (H)
							31656,	-- The Threat in the South
							-- #if AFTER 7.3.5
							49543,	-- Warchief's Command: Dread Wastes!
							-- #endif
						},
						["qg"] = 62112,	-- Bowmistress Li
						["coord"] = { 14.1, 76.9, VALE_OF_ETERNAL_BLOSSOMS },
					}),
					q(31398, {	-- Falling to Pieces
						["sourceQuest"] = 31091,	-- Reunited
						["provider"] = { "o", 214062 },	-- Glowing Amber
						["coord"] = { 41.8, 63.7, DREAD_WASTES },
						["groups"] = {
							i(86533),	-- Glowing Amber (QI!)
							i(84626),	-- Sunset Satin Robe
							i(84627),	-- Sunset Hide Robes
							i(84628),	-- Withered Wood Breastplate
							i(84629),	-- Sunset Burnished Chestguard
							i(84630),	-- Sunset Silk Robe
							i(84631),	-- Sunset Leather Tunic
							i(84632),	-- Wind-Reaver Breastplate
							i(84633),	-- Sunset Heavy Chestpiece
							i(84634),	-- Sunst Armored Chestpiece
						},
					}),
					q(31076, {	-- Fate of the Stormstouts
						["sourceQuest"] = 31068,	-- Sacred Recipe
						["qg"] = 62779,	-- Chen Stormstout
						["coord"] = { 50.4, 12.0, DREAD_WASTES },
					}),
					q(31509, {	-- Fear Takes Root
						["sourceQuest"] = 31606,	-- The Dissector Wakens
						["qgs"] = {
							63072,	-- Rik'kal the Dissector
							67091,	-- Rik'kal the Dissector
						},
						["coord"] = { 54.4, 35.9, DREAD_WASTES },
						["isDaily"] = true,
					}),
					q(31092, {	-- Feed or Be Eaten
						["sourceQuest"] = 31091,	-- Reunited
						["qg"] = 64344,	-- Kaz'tik the Manipulator
						["coord"] = { 41.7, 72.0, DREAD_WASTES },
						["groups"] = {
							i(86489),	-- Succulent Turtle Filet (QI!)
						},
					}),
					q(31020, {	-- Feeding the Beast
						["sourceQuest"] = 31019,	-- Amber is Life
						["qgs"] = {
							62232,	-- Korven the Prime
							63328,	-- Korven the Prime
						},
						["coord"] = { 66.8, 65.3, DREAD_WASTES },
					}),
					q(31080, {	-- Fiery Wings
						["sourceQuest"] = 31075,	-- Sunset Kings
						["qg"] = 62668,	-- Olon
						["coord"] = { 38.1, 17.1, DREAD_WASTES },
						["groups"] = {
							i(84239),	-- Flitterling Dust (QI!)
						},
					}),
					q(31177, {	-- Fine Dining
						["sourceQuest"] = 31175,	-- Skeer the Bloodseeker
						["qg"] = 63071,	-- Skeer the Bloodseeker
						["coord"] = { 25.7, 50.2, DREAD_WASTES },
						["groups"] = {
							i(85212),	-- Clacker Tail (QI!)
						},
					}),
					q(31085, {	-- Fires and Fears of Old
						["sourceQuest"] = 31084,	-- Bind the Glamour
						["qg"] = 62667,	-- Lya of Ten Songs
						["coord"] = { 38.2, 17.1, DREAD_WASTES },
						["groups"] = {
							i(84771),	-- Ruining Fork (QI!)
							i(84019),	-- Motherseed Treads
							i(84020),	-- Sapfly Footguards
							i(84021),	-- Withered Wood Sabatons
							i(84022),	-- Lucidity Greaves
							i(84023),	-- Dreadspinner Treads
							i(84024),	-- Ghost Fox Boots
							i(84025),	-- Wind-Reaver Sabatons
							i(84026),	-- Bladesworn Warboots
							i(84027),	-- Coldbite Warboots
						},
					}),
					q(31494, {	-- Free From Her Clutches
						["sourceQuests"] = {
							31092,	-- Feed or Be Eaten
							31359,	-- The Kunchong Whisperer
						},
						["qg"] = 63758,	-- Kaz'tik the Manipulator
						["coord"] = { 54.2, 35.7, DREAD_WASTES },
						["isDaily"] = true,
					}),
					q(31181, {	-- Fresh Pots
						["sourceQuest"] = 31265,	-- Mazu's Breath
						["qg"] = 63349,	-- Deck Boss Arie
						["coord"] = { 54.7, 72.1, DREAD_WASTES },
						["groups"] = {
							i(85230),	-- Sea Monarch Chunks (QI!)
							i(84001),	-- Motherseed Robe
							i(84002),	-- Sapfly Tunic
							i(84003),	-- Withered Wood Armor
							i(84004),	-- Lucidity Chestguard
							i(84005),	-- Dreadspinner Robe
							i(84006),	-- Ghost Fox Tunic
							i(84007),	-- Wind-Reaver Armor
							i(84008),	-- Bladesworn Chestpiece
							i(84009),	-- Coldbite Chestpiece
						},
					}),
					q(31727, {	-- Gambling Problem
						["description"] = "Gambling Problem showed up at Ambersmith Zikk after completed all Paragons except for |cFF006211Iyyokuk the Lucid and Ka'roz the Locust|r. \nDo not touch any quests at Soggy's Gamble, otherwise you are not eligible for the quest.\n\n By Niixten.",
						["sourceQuest"] = 31398,	-- Falling to Pieces
						["qg"] = 64599,	-- Ambersmith Zikk
						["coord"] = { 55.0, 35.5, DREAD_WASTES },
						["isBreadcrumb"] = true,
					}),
					q(31082, {	-- Great Vessel of Salvation
						["sourceQuest"] = 31075,	-- Sunset Kings
						["qg"] = 62771,	-- Chief Rikkitun
						["coord"] = { 38.6, 17.2, DREAD_WASTES },
						["groups"] = {
							i(84267),	-- Rikkitun Bell (QI!)
						},
					}),
					q(31078, {	-- Han Stormstout
						["sourceQuest"] = 31077,	-- Evie Stormstout
						["qg"] = 67138,	-- Chen Stormstout
						["coord"] = { 50.1, 10.2, DREAD_WASTES },
					}),
					q(56645, {	-- Heart of the Swarm
						["sourceQuest"] = 56617,	-- A Unified Swarm
						["qg"] = 155707,	-- Taoshi
						["coord"] = { 53.2, 39.5, DREAD_WASTES },
						["timeline"] = { ADDED_8_3_0 },
						["lvl"] = 120,
					}),
					heroscall(q(49561, {	-- Hero's Call: Dread Wastes!
						["timeline"] = { ADDED_7_3_5 },
						["races"] = ALLIANCE_ONLY,
						["isBreadcrumb"] = true,
						["lvl"] = 84,
					})),
					q(31071, {	-- I Bring Us Great Shame
						["sourceQuest"] = 31068,	-- Sacred Recipe
						["qg"] = 62859,	-- Thirsty Missho
						["coord"] = { 51.1, 11.1, DREAD_WASTES },
						["groups"] = {
							o(212540, {	-- Lost Keg
								i(83781),	-- Lost Keg (QI!)
							}),
							o(212541, {	-- Lost Mugs
								i(83782),	-- Lost Mugs (QI!)
							}),
							o(212553, {	-- Lost Picnic Supplies
								i(83783),	-- Lost Picnic Supplies (QI!)
							}),
						},
					}),
					q(31010, {	-- In Her Clutch
						["sourceQuest"] = 31009,	-- Dead Zone
						["provider"] = { "o", 213973 },	-- Klaxxi Sonic Relay
						["coord"] = { 40.0, 39.0, DREAD_WASTES },
					}),
					q(31081, {	-- Incantations Fae and Primal
						["sourceQuest"] = 31075,	-- Sunset Kings
						["qg"] = 62667,	-- Lya of Ten Songs
						["coord"] = { 38.2, 17.1, DREAD_WASTES },
					}),
					q(31272, {	-- Infection
						["sourceQuests"] = {
							31458,	-- Damage Control
							31465,	-- Extracting Answers
						},
						["qg"] = 63785,	-- Hisek the Swarmkeeper
						["coord"] = { 54.8, 36.2, DREAD_WASTES },
						["isDaily"] = true,
					}),
					q(31133, {	-- Kor'thik Aggression
						["sourceQuests"] = {
							31070,	-- Daggers of the Great Ones
							31069,	-- Bound With Shade
						},
						["qg"] = 63218,	-- Defender Azzo
						["coord"] = { 50.1, 12.4, DREAD_WASTES },
						["groups"] = {
							i(84617),	-- Sunset Satin Hood
							i(84618),	-- Sunset Hide Helm
							i(84619),	-- Withered Wood Cap
							i(84620),	-- Sunset Burnished Headcover
							i(84621),	-- Sunset Silk Cowl
							i(84622),	-- Sunset Leather Helm
							i(84623),	-- Wind-Reaver Headguard
							i(84624),	-- Sunset Heavy Helm
							i(84625),	-- Sunset Armored Helm
						},
					}),
					q(31024, {	-- Kunchong Treats
						["sourceQuests"] = {
							31092,	-- Feed or Be Eaten
							31359,	-- The Kunchong Whisperer
						},
						["qg"] = 63758,	-- Kaz'tik the Manipulator
						["coord"] = { 54.3, 35.8, DREAD_WASTES },
						["isDaily"] = true,
						["groups"] = {
							i(82869),	-- Meaty Turtle Haunch (QI!)
						},
					}),
					q(31598, {	-- Kypa'rak's Core
						["provider"] = { "i", 87871 },	-- Massive Kyparite Core
						["coord"] = { 31.8, 57.8, DREAD_WASTES },
						["isDaily"] = true,
						["cr"] = 65229,	-- Kypa'rak
					}),
					q(31022, {	-- Kypari Zar
						["sourceQuests"] = {
							31020,	-- Feeding the Beast
							31021,	-- Living Amber
						},
						["qgs"] = {
							62232,	-- Korven the Prime
							63328,	-- Korven the Prime
						},
						["coord"] = { 66.8, 65.3, DREAD_WASTES },
					}),
					q(31021, {	-- Living Amber
						["sourceQuest"] = 31019,	-- Amber is Life
						["qgs"] = {
							62232,	-- Korven the Prime
							63328,	-- Korven the Prime
						},
						["coord"] = { 66.8, 65.3, DREAD_WASTES },
						["groups"] = {
							o(212009, {	-- Amber Fragment
								i(82864),	-- Living Amber (QI!)
							}),
						},
					}),
					q(31354, {	-- Mazu's Bounty
						["sourceQuest"] = 31190,	-- The Mariner's Revenge
						["qg"] = 63349,	-- Deck Boss Arie
						["coord"] = { 56.5, 75.8, DREAD_WASTES },
					}),
					q(31265, {	-- Mazu's Breath
						["sourceQuests"] = {
							31066,	-- A Cry From Darkness
							31727,	-- Gambling Problem
						},
						["qg"] = 63349,	-- Deck Boss Arie
						["coord"] = { 54.7, 72.1, DREAD_WASTES },
						["groups"] = {
							i(85869),	-- Potion of Mazu's Breath (QI!)
						},
					}),
					q(31183, {	-- Meet the Cap'n
						["sourceQuests"] = {
							31181,	-- Fresh Pots
							31182,	-- You Otter Know
						},
						["qg"] = 63349,	-- Deck Boss Arie
						["coord"] = { 54.7, 72.1, DREAD_WASTES },
					}),
					q(31507, {	-- Meltdown
						["sourceQuest"] = 31026,	-- The Root of the Problem
						["qg"] = 62180,	-- Korven the Prime
						["coord"] = { 54.3, 36.0, DREAD_WASTES },
						["isDaily"] = true,
						["groups"]  = {
							i(87841),	-- Korven's Experimental Grenades (QI!)
						},
					}),
					q(31267, {	-- Mistblade Destruction
						["sourceQuest"] = 31066,	-- A Cry From Darkness
						["qg"] = 62538,	-- Kil'ruk the Wind-Reaver
						["coord"] = { 55.0, 35.8, DREAD_WASTES },
						["isDaily"] = true,
					}),
					q(31002, {	-- Nope
						["qg"] = 62112,	-- Bowmistress Li
						["coord"] = { 14.1, 76.9, VALE_OF_ETERNAL_BLOSSOMS },
						["groups"] = {
							i(82807),	-- Shado-Pan Dragon Gun (QI!)
							i(84037),	-- Motherseed Gloves
							i(84038),	-- Sapfly Gloves
							i(84039),	-- Withered Wood Gauntlets
							i(84040),	-- Lucidity Gloves
							i(84041),	-- Dreadspinner Handguards
							i(84042),	-- Ghost Fox Gloves
							i(84043),	-- Wind-Reaver Gauntlets
							i(84044),	-- Bladesown Gauntlets
							i(84045),	-- Coldbite Gauntlets
						},
					}),
					q(31235, {	-- Nope Nope Nope
						["sourceQuest"] = 31066,	-- A Cry From Darkness
						["qg"] = 62538,	-- Kil'ruk the Wind-Reaver
						["coord"] = { 55.0, 35.8, DREAD_WASTES },
						["isDaily"] = true,
					}),
					q(31660, {	-- Not Fit to Swarm
						["sourceQuest"] = 31006,	-- The Klaxxi Council
						["qg"] = 62538,	-- Kil'ruk the Wind-Reaver
						["coord"] = { 54.9, 34.0, DREAD_WASTES },
					}),
					q(31184, {	-- Old Age and Treachery
						["sourceQuest"] = 31183,	-- Meet the Cap'n
						["qg"] = 63317,	-- Captain "Soggy" Su-Dao
						["coord"] = { 55.6, 72.4, DREAD_WASTES },
						["groups"] = {
							o(213454, {	-- Soggy's Footlocker
								i(85886),	-- Sealed Charter Tube (QI!)
							}),
						},
					}),
					q(31187, {	-- On the Crab
						["sourceQuest"] = 31183,	-- Meet the Cap'n
						["qg"] = 63349,	-- Deck Boss Arie
						["coord"] = { 54.7, 72.1, DREAD_WASTES },
						["groups"] = {
							i(85972),	-- Mist-Hopper Emergency Buoy (QI!)
						},
					}),
					q(56616, {	-- Old Faces, New Problems
						["sourceQuests"] = {
							56580,	-- Amber Secrets
							56578,	-- Rotten at the Roots
						},
						["qg"] = 155582,	-- Taoshi
						["coord"] = { 45.3, 16.4, DREAD_WASTES },
						["timeline"] = { ADDED_8_3_0 },
						["lvl"] = 120,
					}),
					q(32030, {	-- Once in a Hundred Lifetimes
						["sourceQuests"] = {
							31398,	-- Falling to Pieces
							31085,	-- Fires and Fears of Old
							31354,	-- Mazu's Bounty
							31026,	-- The Root of the Problem
						},
						["qgs"] = {
							63349,	-- Deck Boss Arie
							62667,	-- Lya of Ten Songs
						},
						["coords"] = {
							{ 54.7, 72.1, DREAD_WASTES },
							{ 50.2, 12.0, DREAD_WASTES },
						},
					}),
					q(31504, {	-- Ordnance Disposal
						["sourceQuests"] = {
							31458,	-- Damage Control
							31465,	-- Extracting Answers
						},
						["qg"] = 63785,	-- Hisek the Swarmkeeper
						["coord"] = { 54.8, 36.2, DREAD_WASTES },
						["isDaily"] = true,
					}),
					q(31782, {	-- Overthrone
						["sourceQuest"] = 32030,	-- Once in a Hundred Lifetimes
						["qg"] = 65395,	-- Klaxxi'va Ik
						["coord"] = { 54.7, 34.7, DREAD_WASTES },
						["groups"] = {
							i(84028),	-- Motherseed Cord
							i(84029),	-- Sapfly Belt
							i(84030),	-- Withered Wood Waistguard
							i(84031),	-- Lucidity Clasp
							i(84032),	-- Dreadspinner Cord
							i(84033),	-- Ghost Fox Belt
							i(84034),	-- Wind-Reaver Waistguard
							i(84035),	-- Bladesworn Girdle
							i(84036),	-- Coldbite Girdle
						},
					}),
					q(31004, {	-- Preserved in Amber
						["sourceQuest"] = 31003,	-- Psycho Mantid
						["qg"] = 62203,	-- Klaxxi'va Tik
						["coord"] = { 73.6, 27.5, DREAD_WASTES },
						["groups"] = {
							i(83062),	-- Klaxxi Tuning Fork (QI!)
						},
					}),
					q(31083, {	-- Promises of Gold
						["qg"] = 62767,	-- Gokk'lok
						["coord"] = { 27.4, 16.2, DREAD_WASTES },
						["groups"] = {
							i(88417),	-- Gokk'lok's Shell (TOY!)
						},
					}),
					q(31003, {	-- Psycho Mantid
						["sourceQuests"] = {
							31001,	-- Falling Down
							31002,	-- Nope
						},
						["qg"] = 62166,	-- Marksman Lann
						["coord"] = { 72.5, 28.6, DREAD_WASTES },
					}),
					q(31234, {	-- Putting An Eye Out
						["sourceQuest"] = 31606,	-- The Dissector Wakens
						["qgs"] = {
							63072,	-- Rik'kal the Dissector
							67091,	-- Rik'kal the Dissector
						},
						["coord"] = { 54.4, 35.9, DREAD_WASTES },
						["isDaily"] = true,
						["groups"] = {
							i(85635),	-- Pristine Mire Beast Eye (QI!)
						},
					}),
					q(31510, {	-- Quiet Now
						["sourceQuests"] = {
							31458,	-- Damage Control
							31465,	-- Extracting Answers
						},
						["qg"] = 63785,	-- Hisek the Swarmkeeper
						["coord"] = { 54.8, 36.2, DREAD_WASTES },
						["isDaily"] = true,
					}),
					q(31808, {	-- Rampage Against the Machine
						["sourceQuests"] = {
							31092,	-- Feed or Be Eaten
							31359,	-- The Kunchong Whisperer
						},
						["qg"] = 63758,	-- Kaz'tik the Manipulator
						["coord"] = { 54.3, 35.8, DREAD_WASTES },
						["isDaily"] = true,
					}),
					q(31189, {	-- Reeltime Strategy
						["sourceQuests"] = {
							31184,	-- Old Age and Treachery
							31187,	-- On the Crab
							31188,	-- Shark Week
						},
						["qg"] = 63349,	-- Deck Boss Arie
						["coord"] = { 54.7, 72.1, DREAD_WASTES },
					}),
					q(31023, {	-- Relics of the Swarm
						["provider"] = { "i", 82870 },	-- Strange Relic
						["coord"] = { 62.9, 57.8, DREAD_WASTES },
						["cr"] = 61970,	-- Mistblade Ripper
						["groups"] = {
							o(212079, {	-- Mantid Relic
								i(82867),	-- Mantid Relic (QI!)
							}),
						},
					}),
					q(31072, {	-- Rending Daggers
						["sourceQuest"] = 31068,	-- Sacred Recipe
						["qg"] = 62667,	-- Lya of Ten Songs
						["coord"] = { 50.7, 11.7, DREAD_WASTES },
						["groups"] = {
							i(84111),	-- Blade of Kz'Kzik (QI!)
							i(84112),	-- Blade of Ilikkax (QI!)
							i(88131),	-- Motherseed Handwraps
							i(88130),	-- Sapfly Handwraps
							i(88129),	-- Withered Wood Handguards
							i(88128),	-- Lucidity Handwraps
							i(88127),	-- Dreadspinner Handwraps
							i(88126),	-- Ghost Fox Handwraps
							i(88125),	-- Wind-Reaver Handwraps
							i(88124),	-- Bladesworn Handwraps
							i(88123),	-- Coldbite Handwraps
						},
					}),
					q(31091, {	-- Reunited
						["sourceQuests"] = {
							31089,	-- By the Sea, Nevermore (Kor'ik version)
							31682,	-- By the Sea, Nevermore (Zer'ik version)
						},
						["qg"] = 63876,	-- Kaz'tik the Manipulator
						["coord"] = { 43.3, 63.4, DREAD_WASTES },
						["groups"] = {
							i(83983),	-- Motherseed Hood
							i(83984),	-- Sapfly Helm
							i(83985),	-- Withered Wood Helm
							i(83986),	-- Lucidity Headcover
							i(83987),	-- Dreadspinner Cowl
							i(83988),	-- Ghost Fox Helm
							i(83989),	-- Wind-Reaver Helm
							i(83990),	-- Bladesworn Helm
							i(83991),	-- Coldbite Helm
						},
					}),
					q(56578, {	-- Rotten at the Roots
						["sourceQuests"] = {
							56577,	-- Crippling the Hive
							56575,	-- Once More Into Kor'vess
						},
						["qg"] = 155562,	-- Shadow-Pan Master (Taoshi follower)
						["coord"] = { 43.1, 13.0, DREAD_WASTES },	-- can really be picked up anywhere
						["timeline"] = { ADDED_8_3_0 },
						["lvl"] = 120,
					}),
					q(31068, {	-- Sacred Recipe
						["description"] = "Must be on or have completed |cFFFFD700The Heavens Hum With War|r.",
						["sourceQuest"] = 31398,	-- Falling to Pieces
						["provider"] = { "o", 212389 },	-- Scroll of Auspice
						["coord"] = { 53.1, 12.4, DREAD_WASTES },
						["groups"] = {
							i(84586),	-- Scroll of Auspice (QI!)
							i(84071),	-- Charm of Ten Songs
							i(84072),	-- Braid of Ten Songs
							i(84073),	-- Knot of Ten Songs
						},
					}),
					q(31496, {	-- Sampling the Empire's Finest
						["sourceQuest"] = 31026,	-- The Root of the Problem
						["qg"] = 62180,	-- Korven the Prime
						["coord"] = { 54.3, 36.0, DREAD_WASTES },
						["isDaily"] = true,
						["groups"] = {
							i(87400),	-- Sap Jar (QI!)
						},
					}),
					q(31233, {	-- Sap Tapping
						["sourceQuest"] = 31026,	-- The Root of the Problem
						["qg"] = 62180,	-- Korven the Prime
						["coord"] = { 54.3, 36.0, DREAD_WASTES },
						["isDaily"] = true,
						["groups"] = {
							i(85664),	-- Amber Sap (QI!)
						},
					}),
					q(31603, {	-- Seeds of Fear
						["sourceQuest"] = 31108,	-- Concentrated Fear
						["qg"] = 64599,	-- Ambersmith Zikk
						["coord"] = { 55.0, 35.6, DREAD_WASTES },
						["repeatable"] = true,
						["groups"] = {
							i(87903),	-- Dread Amber Shards (QI!)
						},
					}),
					q(31506, {	-- Shackles of Manipulation
						["sourceQuests"] = {
							31092,	-- Feed or Be Eaten
							31359,	-- The Kunchong Whisperer
						},
						["qg"] = 63758,	-- Kaz'tik the Manipulator
						["coord"] = { 54.3, 35.8, DREAD_WASTES },
						["isDaily"] = true,
						["groups"] = {
							i(87813),	-- Zan'thik Shackles (QI!)
						},
					}),
					q(31612, {	-- Shadow of the Empire
						["sourceQuest"] = 31609,	-- The Wrath of Shek'zeer
						["qg"] = 62538,	-- Kil'ruk the Wind-Reaver
						["coord"] = { 55.1, 35.9, DREAD_WASTES },
						["minReputation"] = { FACTION_THE_KLAXXI, EXALTED },
						["groups"] = {
							i(90859),	-- Seal of the Lucid
							i(90860),	-- Seal of the Unscathed
							i(90862),	-- Seal of the Bloodseeker
							i(90861),	-- Seal of the Windreaver
							i(90858),	-- Seal of the Prime
						},
					}),
					q(31188, {	-- Shark Week
						["sourceQuest"] = 31183,	-- Meet the Cap'n
						["qgs"] = {
							63349,	-- Deck Boss Arie
							64259,	-- Master Angler Ju Lien
						},
						["coord"] = { 54.7, 72.1, DREAD_WASTES },
						["groups"] = {
							i(85998, {	-- Thresher Jaw (QI!)
								i(85999),	-- Thresher Teeth (QI!)
							}),
						},
					}),
					q(31503, {	-- Shortcut to Ruin
						["sourceQuest"] = 31606,	-- The Dissector Wakens
						["qgs"] = {
							63072,	-- Rik'kal the Dissector
							67091,	-- Rik'kal the Dissector
						},
						["coords"] = {
							{ 31.7, 88.9, DREAD_WASTES },
							{ 54.4, 35.9, DREAD_WASTES },
						},
						["isDaily"] = true,
					}),
					q(31175, {	-- Skeer the Bloodseeker
						["sourceQuest"] = 31066,	-- A Cry From Darkness
						["qg"] = 62538,	-- Kil'ruk the Wind-Reaver
						["coord"] = { 55.0, 35.8, DREAD_WASTES },
						["minReputation"] = { FACTION_THE_KLAXXI, HONORED },
					}),
					q(31487, {	-- Sonic Disruption
						["sourceQuests"] = {
							31092,	-- Feed or Be Eaten
							31359,	-- The Kunchong Whisperer
						},
						["qg"] = 63758,	-- Kaz'tik the Manipulator
						["coord"] = { 54.2, 35.7, DREAD_WASTES },
						["isDaily"] = true,
						["groups"] = {
							i(87394),	-- Sonic Disruption Fork (QI!)
						},
					}),
					q(31508, {	-- Specimen Request
						["sourceQuest"] = 31606,	-- The Dissector Wakens
						["qgs"] = {
							63072,	-- Rik'kal the Dissector
							67091,	-- Rik'kal the Dissector
						},
						["coord"] = { 54.4, 35.9, DREAD_WASTES },
						["isDaily"] = true,
						["groups"] = {
							i(87874),	-- Kyparite Shards (QI!)
						},
					}),
					q(31075, {	-- Sunset Kings
						["sourceQuests"] = {
							31073,	-- Bound With Wood
							31078,	-- Han Stormstout
							31074,	-- Wood and Shade
						},
						["qg"] = 62666,	-- Sapmaster Vu
						["coord"] = { 51.2, 11.3, DREAD_WASTES },
					}),
					q(31606, {	-- The Dissector Wakens
						["sourceQuests"] = {
							31066,	-- A Cry From Darkness
							31605,	-- The Zan'thik Dig (breadcrumb - only invalidates if you complete "The Dissector Wakens" so it's slightly different than normal breadcrumbs)
						},
						["qg"] = 65253,	-- Rik'kal the Dissector
						["coord"] = { 31.8, 88.9, DREAD_WASTES },
						["groups"] = {
							i(84046),	-- Motherseed Cuffs
							i(84047),	-- Sapfly Bindings
							i(84048),	-- Withered Wood Armbands
							i(84049),	-- Lucidity Bracers
							i(84050),	-- Dreadspinner Cuffs
							i(84051),	-- Ghost Fox Armwraps
							i(84052),	-- Wind-Reaver Wristguards
							i(84053),	-- Bladesworn Armplates
							i(84054),	-- Coldbite Bracers
						},
					}),
					q(31007, {	-- The Dread Clutches
						["sourceQuest"] = 31006,	-- The Klaxxi Council
						["qg"] = 62538,	-- Kil'ruk the Wind-Reaver
						["coord"] = { 54.9, 34.0, DREAD_WASTES },
					}),
					q(31689, {	-- The Dreadsworn
						["sourceQuest"] = 31661,	-- A Source of Terrifying Power
						["qg"] = 62774,	-- Malik the Unscathed
						["coord"] = { 55.0, 35.4, DREAD_WASTES },
					}),
					q(31959, {	-- The Empress' Gambit
						["description"] = "Must also have completed the |cFFFFD700Amber is the Color of My Energy|r achievement.",
						["qg"] = 62774,	-- Malik the Unscathed
						["coord"] = { 55.1, 35.5, DREAD_WASTES },
						["minReputation"] = { FACTION_THE_KLAXXI, EXALTED },
					}),
					q(31270, {	-- The Fight Against Fear
						["sourceQuest"] = 31026,	-- The Root of the Problem
						["qg"] = 62180,	-- Korven the Prime
						["coord"] = { 54.3, 36.0, DREAD_WASTES },
						["isDaily"] = true,
					}),
					q(31067, {	-- The Heavens Hum With War
						["sourceQuests"] = {
							31066,	-- A Cry From Darkness
							31730,	-- A Not So Friendly Request
						},
						["qg"] = 62666,	-- Sapmaster Vu
						["coord"] = { 51.2, 11.3, DREAD_WASTES },
					}),
					q(31079, {	-- The Horror Comes A-Rising
						["sourceQuest"] = 31075,	-- Sunset Kings
						["qg"] = 62772,	-- Boggeo
						["coord"] = { 38.1, 17.3, DREAD_WASTES },
						["groups"] = {
							i(84087),	-- Kyparitic Staff
							i(84088),	-- Kyparitic Clawmace
							i(84089),	-- Axe of the Rikkitun
							i(84090),	-- Bow of the Rikkitun
							i(84091),	-- Obelisk of the Rikkitun
							i(84092),	-- Boggeo's Ritual Axe
							i(84093),	-- Spiked Edge of the Rikkitun
							i(84094),	-- Thorns of the Rikkitun
							i(90076),	-- Boggeo's Thorns
							i(90077),	-- Oracle's Blade
						},
					}),
					q(31390, {	-- The Klaxxi [A]
						["qg"] = 64488,	-- Riki the Shifting Shadow
						["coord"] = { 84.4, 61.6, VALE_OF_ETERNAL_BLOSSOMS },
						["races"] = ALLIANCE_ONLY,
						["isBreadcrumb"] = true,
					}),
					q(31391, {	-- The Klaxxi [H]
						["qg"] = 64534,	-- Bowmaster Ku
						["coord"] = { 63.2, 20.8, VALE_OF_ETERNAL_BLOSSOMS },
						["races"] = HORDE_ONLY,
						["isBreadcrumb"] = true,
					}),
					q(31006, {	-- The Klaxxi Council
						["sourceQuests"] = {
							31676,	-- Ancient Vengeance
							31005,	-- Wakening Sickness
						},
						["qg"] = 62202,	-- Kil'ruk the Wind-Reaver
						["coord"] = { 70.1, 25.6, DREAD_WASTES },
						["groups"] = {
							i(84055),	-- Gurthan Locket
							i(84056),	-- Council Choker
							i(84057),	-- Swormborn Necklace
							i(84058),	-- Kil'ruk's Pendant
							i(84059),	-- Sacred Stone Amulet
						},
					}),
					q(31359, {	-- The Kunchong Whisperer
						["sourceQuest"] = 31091,	-- Reunited
						["qg"] = 64344,	-- Kaz'tik the Manipulator
						["coord"] = { 41.7, 72.0, DREAD_WASTES },
					}),
					q(31190, {	-- The Mariner's Revenge
						["sourceQuest"] = 31189,	-- Reeltime Strategy
						["qg"] = 63317,	-- Captain "Soggy" Su-Dao
						["coord"] = { 54.7, 72.1, DREAD_WASTES },
						["groups"] = {
							i(83992),	-- Motherseed Mantle
							i(83993),	-- Sapfly Spaulders
							i(83994),	-- Withered Wood Spaulder
							i(83995),	-- Lucidity Spaulders
							i(83996),	-- Dreadspinner Amice
							i(83997),	-- Ghost Fox Spaulders
							i(83998),	-- Wind-Reaver Spaulder
							i(83999),	-- Bladesworn Shoulders
							i(84000),	-- Coldbite Shoulders
						},
					}),
					q(31599, {	-- The Matriarch's Maw
						["provider"] = { "i", 87878 },	-- Enormous Kunchong Mandibles
						["coords"] = {
							{ 42.0, 35.6, DREAD_WASTES },
							{ 41.6, 34.0, DREAD_WASTES },
							{ 41.6, 29.8, DREAD_WASTES },
						},
						["isDaily"] = true,
						["cr"] = 64724,	-- Karanosh
					}),
					q(31211, {	-- The Poisoned Mind
						["sourceQuests"] = {
							31210,	-- A Shade of Dread
							31209,	-- Dark Wings, Dark Things
							31208,	-- Venomous Intent
						},
						["qg"] = 62151,	-- Xaril the Poisoned Mind
						["coord"] = { 28.6, 42.1, DREAD_WASTES },
						["groups"] = {
							i(84065),	-- Krik'thik Band
							i(84066),	-- Loop of the Poisoned Mind
							i(84067),	-- Xaril's Ring
							i(84068),	-- Battletank Seal
							i(84069),	-- Wingguard Loop
						},
					}),
					q(31026, {	-- The Root of the Problem
						["sourceQuest"] = 31022,	-- Kypari Zar
						["qgs"] = {
							62232,	-- Klaxxi Warrior
							63328,	-- Klaxxi Warrior
						},
						["coord"] = { 59.8, 59.4, DREAD_WASTES },
						["groups"] = {
							i(84075),	-- Relic of Kypari Zar
							i(84076),	-- Sigil of Kypari Zar
							i(84077),	-- Emblem of Kypari Zar
							i(84078),	-- Insignia of Kypari Zar
							i(84079),	-- Badge of Kypari Zar
						},
					}),
					q(31269, {	-- The Scale-Lord
						["sourceQuest"] = 31026,	-- The Root of the Problem
						["qg"] = 62180,	-- Korven the Prime
						["coord"] = { 54.3, 36.0, DREAD_WASTES },
						["isDaily"] = true,
					}),
					q(31179, {	-- The Scent of Blood
						["sourceQuests"] = {
							31178,	-- A Bloody Delight
							31176,	-- A Strange Appetite
							31177,	-- Fine Dining
						},
						["qg"] = 63071,	-- Skeer the Bloodseeker
						["coord"] = { 25.7, 50.6, DREAD_WASTES },
						["groups"] = {
							i(84095),	-- Bloodseeker's Axe
							i(84096),	-- Bloodseeker's Mace
							i(84097),	-- Shield of the Wakener
							i(84098),	-- Eye of the Wakener
							i(84099),	-- Saltscale Dagger
							i(84100),	-- Jaws of the Wakener
							i(90104),	-- Wakener's Light
							i(90105),	-- Chronicle of a Hudnred Wars
						},
					}),
					q(31677, {	-- The Warlord's Ashes
						["description"] = "Requires 2 players. One must |cFFFFD700/sit|r on the red rune while the other must |cFFFFD700/lay|r on the green rune.",
						["provider"] = { "i", 88715 },	-- Ashes of Warlord Gurthan
						["coord"] = { 66.3, 31.7, DREAD_WASTES },
						["isDaily"] = true,
						["cr"] = 65502,	-- Warlord Gurthan
					}),
					q(31609, {	-- The Wrath of Shek'zeer
						["sourceQuest"] = 31959,	-- The Empress' Gambit
						["qg"] = 64599,	-- Ambersmith Zikk
						["coord"] = { 55.0, 35.6, DREAD_WASTES },
						["minReputation"] = { FACTION_THE_KLAXXI, EXALTED },
					}),
					q(31605, {	-- The Zan'thik Dig
						["sourceQuest"] = 31066,	-- A Cry From Darkness
						["qg"] = 64815,	-- Kor'ik
						["coord"] = { 54.7, 34.0, DREAD_WASTES },
						["minReputation"] = { FACTION_THE_KLAXXI, HONORED },
						["isBreadcrumb"] = true,
					}),
					q(31208, {	-- Venomous Intent
						["sourceQuest"] = 31018,	-- Beneath the Heart of Fear
						["qg"] = 62151,	-- Xaril the Poisoned Mind
						["coord"] = { 28.6, 42.1, DREAD_WASTES },
						["groups"] = {
							i(85571),	-- Venomous Stinger (QI!)
						},
					}),
					q(31505, {	-- Vess-Guard Duty
						["sourceQuest"] = 31066,	-- A Cry From Darkness
						["qg"] = 62538,	-- Kil'ruk the Wind-Reaver
						["coord"] = { 55.0, 35.8, DREAD_WASTES },
						["isDaily"] = true,
					}),
					q(31005, {	-- Wakening Sickness
						["sourceQuest"] = 31004,	-- Preserved in Amber
						["qg"] = 62202,	-- Kil'ruk the Wind-Reaver
						["coord"] = { 70.1, 25.6, DREAD_WASTES },
						["groups"] = {
							i(83075),	-- Sapfly Bits (QI!)
						},
					}),
					q(31185, {	-- Walking Dog
						["sourceQuest"] = 31183,	-- Meet the Cap'n
						["qg"] = 63317,	-- Captain "Soggy" Su-Dao
						["coord"] = { 55.6, 72.4, DREAD_WASTES },
						["groups"] = {
							i(85955),	-- Dog's Whistle (QI!)
							i(84010),	-- Motherseed Leggings
							i(84011),	-- Sapfly Legguards
							i(84012),	-- Withered Wood Kilt
							i(84013),	-- Lucidity Legplates
							i(84014),	-- Dreadspinner Trousers
							i(84015),	-- Ghost Fox Legguards
							i(84016),	-- Wind-Reaver Leggings
							i(84017),	-- Bladesworn Legguards
							i(84018),	-- Coldbite Legguards
						},
					}),
					warchiefscommand(q(49543, {	-- Warchief's Command: Dread Wastes!
						["timeline"] = { ADDED_7_3_5 },
						["races"] = HORDE_ONLY,
						["isBreadcrumb"] = true,
					})),
					q(31502, {	-- Wing Clip
						["sourceQuest"] = 31606,	-- The Dissector Wakens
						["qgs"] = {
							63072,	-- Rik'kal the Dissector
							67091,	-- Rik'kal the Dissector
						},
						["coords"] = {
							{ 31.7, 88.9, DREAD_WASTES },
							{ 54.4, 35.9, DREAD_WASTES },
						},
						["isDaily"] = true,
						["groups"] = {
							i(87401),	-- Needler Wings (QI!)
						},
					}),
					q(31074, {	-- Wood and Shade
						["sourceQuest"] = 31072,	-- Rending Daggers
						["qg"] = 62667,	-- Lya of Ten Songs
						["coord"] = { 50.7, 11.7, DREAD_WASTES },
					}),
					q(31182, {	-- You Otter Know
						["sourceQuest"] = 31265,	-- Mazu's Breath
						["qg"] = 63349,	-- Deck Boss Arie
						["coord"] = { 54.7, 72.1, DREAD_WASTES },
						["groups"] = {
							i(85231),	-- Bag of Clams (QI!)
						},
					}),
				}),
				n(RARES, {
					n(COMMON_BOSS_DROPS, {
						["crs"] = {
							50821,	-- Ai-Li Skymirror
							50334,	-- Dak the Breaker
							50739,	-- Gar'lok
							50836,	-- Ik-Ik the Nimble
							50347,	-- Karr the Darkener
							50356,	-- Krol the Blade
							50776,	-- Nalash Verdantis
							50805,	-- Omnis Grinlok
						},
						["groups"] = {
							i(87635),	-- Amber-Starched Robes
							i(87629),	-- Chestplate of Manifest Dread
							i(87630),	-- Chestpiece of Twinkling Stars
							i(87632),	-- Fearsworn Chestpiece
							i(87631),	-- Jiao-Skin Tunic
							i(87627),	-- Kunchong Carapace Chestguard
							i(87634),	-- Mazu's Robe
							i(87633),	-- Sharksin Armor
							i(87628),	-- Spinebreaker Chestpiece
							i(87217),	-- Small Bag of Goods
						},
					}),
					n(50821, {	-- Ai-Li Skymirror
						["coord"] = { 34.8, 23.2, DREAD_WASTES },
						["groups"] = {
							i(86589),	-- Ai-Li's Skymirror (TOY!)
						},
					}),
					n(66935, {	-- Clamstok <Scion of Kril'mandar>
						["coord"] = { 27.0, 69.2, DREAD_WASTES },
						["groups"] = {
							i(90170),	-- Clamstok's Clamshell
						},
					}),
					n(50334, {	-- Dak the Breaker
						["coord"] = { 25.2, 28.6, DREAD_WASTES },
						["groups"] = {
							i(86567),	-- Yaungol Wind Chime
						},
					}),
					n(50739, {	-- Gar'lok
						["coords"] = {
							{ 38.8, 29.6, DREAD_WASTES },
							{ 35.6, 30.8, DREAD_WASTES },
							{ 39.2, 41.8, DREAD_WASTES },
						},
						["groups"] = {
							i(86578),	-- Eternal Warrior's Sigil (TOY!)
						},
					}),
					n(50836, {	-- Ik-Ik the Nimble
						["coord"] = { 54.9, 65.7, DREAD_WASTES },
						["groups"] = {
							i(86593),	-- Hozen Beach Ball (TOY!)
						},
					}),
					n(50347, {	-- Karr the Darkener
						["coord"] = { 71.8, 37.6, DREAD_WASTES },
						["groups"] = {
							i(86564),	-- Grinder (PET!)
						},
					}),
					n(50356, {	-- Krol the Blade
						["coords"] = {
							{ 74.2, 20.4, DREAD_WASTES },
							{ 72.8, 22.2, DREAD_WASTES },
							{ 74.5, 22.9, DREAD_WASTES },
						},
						["groups"] = {
							i(86574),	-- Elixir of Ancient Knowledge
						},
					}),
					n(50776, {	-- Nalash Verdantis
						["coord"] = { 64.2, 58.6, DREAD_WASTES },
						["groups"] = {
							i(86563),	-- Aqua Strider (PET!)
						},
					}),
					n(50805, {	-- Omnis Grinlok
						["coords"] = {
							{ 38.2, 58.0, DREAD_WASTES },
							{ 39.2, 62.4, DREAD_WASTES },
							{ 36.6, 64.2, DREAD_WASTES },
							{ 36.4, 61.2, DREAD_WASTES },
						},
						["groups"] = {
							i(86585),	-- Golden Fleece
						},
					}),
				}),
				n(TREASURES, {
					o(213411, {	-- Amber
						["coord"] = { 52.5, 10.1, DREAD_WASTES },
					}),
					o(213972, {	-- Blade of the Poisoned Mind
						["coord"] = { 28.9, 41.9, DREAD_WASTES },
						["questID"] = 31438,
						["groups"] = {
							i(86527),	-- Blade of the Poisoned Mind
						},
					}),
					o(213967, {	-- Blade of the Prime
						["coords"] = {
							{ 66.3, 66.5, DREAD_WASTES },	-- Blade
							{ 66.7, 63.7, DREAD_WASTES },	-- Cave
						},
						["questID"] = 31433,
						["groups"] = {
							i(86522),	-- Blade of the Prime
						},
					}),
					o(213970, {	-- Bloodsoaked Chitin Fragment
						["coord"] = { 26.0, 50.3, DREAD_WASTES },
						["questID"] = 31436,
						["groups"] = {
							i(86525),	-- Blood Soaked Chiten Fragment
						},
					}),
					o(213409, {	-- Cycle of the Mantid
						["coord"] = { 48.5, 32.8, DREAD_WASTES },
					}),
					o(213969, {	-- Dissector's Staff of Mutation
						["coord"] = { 30.2, 90.8, DREAD_WASTES },
						["questID"] = 31435,
						["groups"] = {
							i(86524),	-- Dissector's Staff of Mutation
						},
					}),
					n(65552, {	-- Glinting Rapana Whelk
						["coord"] = { 42.2, 63.8, DREAD_WASTES },
						["questID"] = 31432,
						["groups"] = {
							i(86529),	-- Manipulator's Talisman
						},
					}),
					o(213966, {	-- Lucid Amulet
						["coord"] = { 33.0, 30.1, DREAD_WASTES },
						["questID"] = 31431,
						["groups"] = {
							i(86521),	-- Lucid Amulet of the Agile Mind
						},
					}),
					o(213964, {	-- Malik's Stalwart Spear
						["coord"] = { 48.8, 30.0, DREAD_WASTES },
						["questID"] = 31430,
						["groups"] = {
							i(86520),	-- Malik's Stalwart Spear
						},
					}),
					o(213410, {	-- Mantid Society
						["coord"] = { 59.9, 55.0, DREAD_WASTES },
					}),
					o(213968, {	-- Swarming Cleaver of Ka'roz
						["coord"] = { 56.7, 77.7, DREAD_WASTES },
						["questID"] = 31434,
						["groups"] = {
							i(86523),	-- Swarming Cleaver of Ka'roz
						},
					}),
					o(213971, {	-- Swarmkeeper's Medallion
						["coord"] = { 54.3, 56.5, DREAD_WASTES },
						["questID"] = 31437,
						["groups"] = {
							i(86526),	-- Swarmkeeper's Medallion
						},
					}),
					o(213329, {	-- The Deserters
						["coord"] = { 67.4, 60.8, DREAD_WASTES },
					}),
					o(213412, {	-- The Empress
						["coord"] = { 29.1, 62.1, DREAD_WASTES },
					}),
					o(213962, {	-- Wind-Reaver's Dagger of Quick Strikes
						["coord"] = { 71.8, 36.1, DREAD_WASTES },
						["questID"] = 31429,
						["groups"] = {
							i(86519),	-- Wind-Reaver's Dagger of Quick Strikes
						},
					}),
				}),
				n(VENDORS, {
					n(64599, {	-- Ambersmith Zikk <Klaxxi Quartermaster>
						["coord"] = { 55.0, 35.5, DREAD_WASTES },
						["groups"] = bubbleDownClassicRep(FACTION_THE_KLAXXI, {
							{		-- Neutral
								i(89671),	-- Chestplate of the Stone Lion
								i(89645),	-- Cruel Mercy Bracers
								i(89650),	-- Emperor's Riding Gloves
								i(89647),	-- Entombed Traitor's Wristguards
								i(89670),	-- Inner Serenity Chestplate
								i(89651),	-- Krompf's Fine-Tuning Gloves
								i(89646),	-- Runoff Wristguards
								i(89644),	-- Sudden Insight Bracers
								-- #if AFTER WOD
								-- Honored (pre-5.4.0)
								i(89064),	-- Bloodseeker's Solitaire
								i(89065),	-- Choker of the Klaxxi'va
								i(89060),	-- Klaxxi Lash of the Borrower
								i(89056),	-- Klaxxi Lash of the Consumer
								i(89057),	-- Klaxxi Lash of the Doubter
								i(89061),	-- Klaxxi Lash of the Harbinger
								i(89062),	-- Klaxxi Lash of the Orator
								i(89059),	-- Klaxxi Lash of the Precursor
								i(89055),	-- Klaxxi Lash of the Rescinder
								i(89063),	-- Klaxxi Lash of the Seeker
								i(89058),	-- Klaxxi Lash of the Winnower
								i(89067),	-- Links of the Lucid
								i(89066),	-- Paragon's Pale Pendant
								i(89068),	-- Wire of the Wakener
								
								-- Revered (pre-5.4.0)
								i(89094),	-- Ambersmith Legplates
								i(89090),	-- Dreadsworn Slayer Legs
								i(89093, {	-- Kovok's Riven Legguards
									["cost"] = 5019100,	-- 501g 91s
								}),
								i(89088),	-- Leggings of the Poisoned Soul
								i(89095),	-- Legguards of the Unscathed
								i(89092, {	-- Locust Swarm Legguards
									["cost"] = 5001400,	-- 500g 14s
								}),
								i(89087),	-- Poisoncrafter's Kilt
								i(89091),	-- Swarmkeeper's Leggings
								i(89089),	-- Wind-Reaver Greaves
								-- #endif
							}, {	-- Friendly
							}, {	-- Honored
								i(83791, {	-- Plans: Breastplate of Ancient Steel (RECIPE!)
									["cost"] = { { "i", 72093, 20 }, },	-- 20x Kyparite
								}),
								i(83792, {	-- Plans: Gauntlets of Ancient Steel (RECIPE!)
									["cost"] = { { "i", 72093, 20 }, },	-- 20x Kyparite
								}),
								i(90531, {	-- Plans: Ghost Iron Shield Spike (RECIPE!)
									["cost"] = { { "i", 72093, 20 }, },	-- 20x Kyparite
								}),
								i(83787, {	-- Plans: Ghost Reaver's Breastplate (RECIPE!)
									["cost"] = { { "i", 72093, 20 }, },	-- 20x Kyparite
								}),
								i(83788, {	-- Plans: Ghost Reaver's Gauntlets (RECIPE!)
									["cost"] = { { "i", 72093, 20 }, },	-- 20x Kyparite
								}),
								i(84196, {	-- Plans: Living Steel Belt Buckle (RECIPE!)
									["cost"] = { { "i", 72093, 20 }, },	-- 20x Kyparite
								}),
								i(83789, {	-- Plans: Living Steel Breastplate (RECIPE!)
									["cost"] = { { "i", 72093, 20 }, },	-- 20x Kyparite
								}),
								i(83790, {	-- Plans: Living Steel Gauntlets (RECIPE!)
									["cost"] = { { "i", 72093, 20 }, },	-- 20x Kyparite
								}),
								i(90532, {	-- Plans: Living Steel Weapon Chain (RECIPE!)
									["cost"] = { { "i", 72093, 20 }, },	-- 20x Kyparite
								}),
								i(84197, {	-- Plans: Masterwork Forgewire Axe (RECIPE!)
									["cost"] = { { "i", 72093, 20 }, },	-- 20x Kyparite
								}),
								i(84198, {	-- Plans: Masterwork Ghost Shard (RECIPE!)
									["cost"] = { { "i", 72093, 20 }, },	-- 20x Kyparite
								}),
								i(84200, {	-- Plans: Masterwork Ghost-Forged Blade (RECIPE!)
									["cost"] = { { "i", 72093, 20 }, },	-- 20x Kyparite
								}),
								i(84217, {	-- Plans: Masterwork Phantasmal Hammer (RECIPE!)
									["cost"] = { { "i", 72093, 20 }, },	-- 20x Kyparite
								}),
								i(84218, {	-- Plans: Masterwork Spiritblade Decimator (RECIPE!)
									["cost"] = { { "i", 72093, 20 }, },	-- 20x Kyparite
								}),
								i(89230),	-- Restorative Amber
								-- #if BEFORE WOD
								-- Honored (pre-5.4.0)
								i(89064),	-- Bloodseeker's Solitaire
								i(89065),	-- Choker of the Klaxxi'va
								i(89060),	-- Klaxxi Lash of the Borrower
								i(89056),	-- Klaxxi Lash of the Consumer
								i(89057),	-- Klaxxi Lash of the Doubter
								i(89061),	-- Klaxxi Lash of the Harbinger
								i(89062),	-- Klaxxi Lash of the Orator
								i(89059),	-- Klaxxi Lash of the Precursor
								i(89055),	-- Klaxxi Lash of the Rescinder
								i(89063),	-- Klaxxi Lash of the Seeker
								i(89058),	-- Klaxxi Lash of the Winnower
								i(89067),	-- Links of the Lucid
								i(89066),	-- Paragon's Pale Pendant
								i(89068),	-- Wire of the Wakener
								-- #endif
							}, {	-- Revered
								i(92522),	-- Grand Commendation of the Klaxxi
								-- #if BEFORE WOD
								-- Revered (pre-5.4.0)
								i(89094),	-- Ambersmith Legplates
								i(89090),	-- Dreadsworn Slayer Legs
								i(89093, {	-- Kovok's Riven Legguards
									["cost"] = 5019100,	-- 501g 91s
								}),
								i(89088),	-- Leggings of the Poisoned Soul
								i(89095),	-- Legguards of the Unscathed
								i(89092, {	-- Locust Swarm Legguards
									["cost"] = 5001400,	-- 500g 14s
								}),
								i(89087),	-- Poisoncrafter's Kilt
								i(89091),	-- Swarmkeeper's Leggings
								i(89089),	-- Wind-Reaver Greaves
								-- #endif
							}, {	-- Exalted
								i(89396),	-- Amber Espada of Klaxxi'vess
								i(89398),	-- Amber Flammard of Klaxxi'vess
								i(89397),	-- Amber Saber of Klaxxi'vess
								i(89395),	-- Amber Scythe of Klaxxi'vess
								i(89400),	-- Amber Sledge of Klaxxi'vess
								i(89393),	-- Amber Slicer of Klaxxi'vess
								i(89394),	-- Amber Spear of Klaxxi'vess
								i(89392),	-- Amber Spine of Klaxxi'vess
								i(89399),	-- Amber Sprayer of Klaxxi'vess
								i(89798),	-- Klaxxi Tabard
								i(85262, {	-- Reins of the Amber Scorpion (MOUNT!)
									["cost"] = 100000000,	-- 10,000g
								}),
							},
						}),
					}),
				}),
				-- #if AFTER 6.0.2
				n(ZONE_DROPS, {
					i(120140, {	-- Tome of Polymorph: Porcupine (CI!)
						["crs"] = { 65118 },	-- Needleback Porcupine
						["timeline"] = { ADDED_6_0_2 },
					}),
				}),
				-- #endif
			},
		}),
	}),
});

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.MOP, bubbleDownSelf({ ["timeline"] = { ADDED_5_0_4 } }, {
	m(PANDARIA, {
		m(DREAD_WASTES, {
			n(QUESTS, {
				q(31115),	-- FLAG - Freed Han
				q(31992),	-- [FLAG] Dread Wastes Buff Bitflag - Enhancement 01 - Angel of Death
				q(31993),	-- [FLAG] Dread Wastes Buff Bitflag - Enhancement 02 - Iron Mantid
				q(31994),	-- [FLAG] Dread Wastes Buff Bitflag - Enhancement 03 - Raining Blood
				q(31995),	-- [FLAG] Dread Wastes Buff Bitflag - Augmentation 01 - Speed King
				q(31996),	-- [FLAG] Dread Wastes Buff Bitflag - Augmentation 02 - Seek and Destroy
				q(31997),	-- [FLAG] Dread Wastes Buff Bitflag - Augmentation 03 - Speed King
				q(31484),	-- Hisek Tracking Quest
				q(31282),	-- Kaz'tik Tracking Quest - triggers after freeing Kaz'tik from amber
				q(31343),	-- Kovok Tracking - triggers after turning in "Reunited" (questID 31091), allows Kovok to follow you
				q(32012),	-- Kovok tracking [GROWING]
			}),
			n(TREASURES, {
				q(31666),	-- FLAG - Wind-Reaver's Dagger - second trigger for Wind-Reaver's Dagger of Quick Strikes treasure
			}),
		}),
	}),
})));
