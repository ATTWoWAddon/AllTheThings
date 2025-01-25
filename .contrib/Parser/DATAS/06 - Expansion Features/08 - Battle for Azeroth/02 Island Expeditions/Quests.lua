-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------
root(ROOTS.ExpansionFeatures, expansion(EXPANSION.BFA, {
	n(ISLAND_EXPEDITIONS, {
		n(AZERITE_ESSENCES, {
			i(169687, {	-- Fragment of Zem'lan's Lost Treasure Map
				i(169693, {	-- Zem'Lans Lost Treasure Map
					i(168616),	-- Stalwart Worldvein (Rank 2)
				}),
			}),
		}),
		n(QUESTS, {
			-- These quests need to be done once per account to unlock Island Expeditions. After completing, each character will have completed the flag quest 51994.
			q(51903, {	-- Island Expedition (1/2) (A)
				["sourceQuest"] = 53061,	-- The Azerite Advantage
				["races"] = ALLIANCE_ONLY,
				["altQuests"] = { 51994 },	-- Unlock the ability to go on Island Expeditions in search of Azerite
			}),
			q(51904, {	-- Island Expedition (2/2) (A)
				["sourceQuest"] = 51903,	-- Island Expedition
				["races"] = ALLIANCE_ONLY,
				["altQuests"] = { 51994 },	-- Unlock the ability to go on Island Expeditions in search of Azerite
				["maps"] = { 1022 },	-- Uncharted Island
			}),
			q(51870, {	-- Island Expedition (1/2) (H)
				["sourceQuest"] = 53062,	-- The Azerite Advantage
				["races"] = HORDE_ONLY,
				["altQuests"] = { 51994 },	-- Unlock the ability to go on Island Expeditions in search of Azerite
			}),
			q(51888, {	-- Island Expedition (2/2) (H)
				["sourceQuest"] = 51870,	-- Island Expedition
				["races"] = HORDE_ONLY,
				["altQuests"] = { 51994 },	-- Unlock the ability to go on Island Expeditions in search of Azerite
				["maps"] = { 1022 },	-- Uncharted Island
			}),
			q(53061, {	-- The Azerite Advantage (A)
				["races"] = ALLIANCE_ONLY,
				["isBreadcrumb"] = true,
				["DisablePartySync"] = true,
				["altQuests"] = { 51994 },	-- Unlock the ability to go on Island Expeditions in search of Azerite
			}),
			q(53062, {	-- The Azerite Advantage (H)
				["races"] = HORDE_ONLY,
				["isBreadcrumb"] = true,
				["DisablePartySync"] = true,
				["altQuests"] = { 51994 },	-- Unlock the ability to go on Island Expeditions in search of Azerite
			}),
			q(53436, {	-- Azerite for the Alliance
				["isWeekly"] = true,
				["provider"] = { "n", 131290 },	-- Flynn
				["coord"] = { 66.6, 35.5, BORALUS },
				["races"] = ALLIANCE_ONLY,
				["g"] = {
					i(168615),	-- Volatile Worldvein (Rank 1)
					i(166883),	-- Treasure Map (Displayed when hovering over the quest on the map.)
					i(166999),	-- Treasure Map
					i(169764),	-- Worldvein Intelligence Reports
					mi(2158, {	-- Investigating the Rumors
						["questID"] = 56528,	-- procs when completing Investigating the Rumors on Alliance
						["sourceQuest"] = 56533,	-- Worldvein Rumors
						["g"] = {
							i(171985),	-- Captured Documents
						},
					}),
					mi(2161, {	-- Finding a Key
						["questID"] = 56529,	-- procs when completing Finding a Key on Alliance
						["sourceQuest"] = 56528,	-- Investigating the Rumors
						["g"] = {
							i(171986),	-- Resonance Locator
						},
					}),
					mi(2162, {	-- Tracking the Worldvein
						["questID"] = 56530,
						["sourceQuest"] = 56529,	-- Investigating the Rumors
						["g"] = {
							i(168617, {	-- Fluctuating Worldvein (Rank 3)
								["modID"] = 14,
							}),
						},
					}),
					i(170150, {	-- Map to the Last Worldvein
						un(REMOVED_FROM_GAME, i(168618)),	-- Brilliant Worldvein (Rank 4)
					}),
				},
			}),
			q(56533, {	-- Worldvein Rumors
				["provider"] = {"i",169764},	-- Worldvein Intelligence Reports
				["races"] = ALLIANCE_ONLY,
			}),
			q(53435, {	-- Azerite for the Horde
				["isWeekly"] = true,
				["provider"] = { "n", 123000 },	-- Captain Rez'okun
				["races"] = HORDE_ONLY,
				["coord"] = { 44.60, 95.40, THE_GREAT_SEAL },
				["g"] = {
					i(168615),	-- Volatile Worldvein (Rank 1)
					i(166883),	-- Treasure Map (Displayed when hovering over the quest on the map.)
					i(166999),	-- Treasure Map
					i(169765),	-- Worldvein Intelligence Reports
					mi(2159, {	-- Investigating the Rumors
						-- ["questID"] = ,	-- procs when completing Investigating the Rumors on Horde
						["sourceQuest"] = 56534,	-- Worldvein Rumors
						["g"] = {
							i(171985),	-- Captured Documents
						},
					}),
					mi(2161, {	-- Finding a Key
						-- ["questID"] = ,	-- procs when completing Finding a Key on Horde
						-- ["sourceQuest"] = ,	-- Investigating the Rumors
						["g"] = {
							i(171986),	-- Resonance Locator
						},
					}),
					mi(2162, {	-- Tracking the Worldvein
						-- ["questID"] = ,	-- procs when completing Tracking the Worldvein on Horde
						-- ["sourceQuest"] = ,	-- Finding a Key
						["g"] = {
							i(168617, {	-- Fluctuating Worldvein (Rank 3)
								["modID"] = 14,
							}),
						},
					}),
					i(170149, {	-- Map to the Last Worldvein
						un(REMOVED_FROM_GAME, i(168618)),	-- Brilliant Worldvein (Rank 4)
					}),
				},
			}),
			q(56534, {	-- Worldvein Rumors
				["provider"] = {"i",169765},	-- Worldvein Intelligence Reports
				["races"] = HORDE_ONLY,
			}),
		}),
		-- One-Time Item Drop Quests
		n(QUESTS, {
			q(53160, {	-- Ancient Crypt Key
				["coord"] = { 83.2, 29.6, VALE_OF_ETERNAL_BLOSSOMS },
				["providers"] = {
					{ "i", 163470 },	-- Ancient Crypt Key
					{ "n", 61962 },	-- Lorewalker Cho
				},
			}),
			q(53171, {	-- Battered Twilight Scale
				["coord"] = { 20.2, 54.6, TWILIGHT_HIGHLANDS },
				["providers"] = {
					{ "i", 163478 },	-- Battered Twilight Scale
					{ "n", 132888 },	-- Eryna
				},
			}),
			q(53163, {	-- Bloodwake Drinking Horn
				["coord"] = { 68.4, 54.2, STORMHEIM },
				["providers"] = {
					{ "i", 163472 },	-- Bloodwake Drinking Horn
					{ "n", 93231 },	-- Vydhar
				},
			}),
			q(53177, {	-- Broken Compass
				["coord"] = { 42.0, 74.6, THE_CAPE_OF_STRANGLETHORN },
				["providers"] = {
					{ "i", 163482 },	-- Broken Compass
					{ "n", 908 },	-- Flora Silverwind
				},
			}),
			q(53181, {	-- Druidic Fur
				["coord"] = { 52.6, 40.6, MOONGLADE },
				["providers"] = {
					{ "i", 163485 },	-- Druidic Fur
					{ "n", 12042 },	-- Loganaar
				},
			}),
			q(53169, {	-- Elemental Core
				["coord"] = { 92.7, 42.0, AZSHARA },	-- TODO: Verify Coords/npcid
				["providers"] = {
					{ "i", 163476 },	-- Elemental Core
					{ "n", 13278 },	-- Duke Hydraxis
				},
			}),
			q(53176, {	-- Glittering Scarab
				["coord"] = { 58.8, 46.2, ULDUM },
				["providers"] = {
					{ "i", 163481 },	-- Glittering Scarab
					{ "n", 46134 },	-- High Commander Kamses
				},
			}),
			q(53167, {	-- Icetusk Fur Cloak
				["coord"] = { 48.0, 76.0, DRAGONBLIGHT },
				["providers"] = {
					{ "i", 163474 },	-- Icetusk Fur Cloak
					{ "n", 26245 },	-- Tua'kea
				},
			}),
			q(53168, {	-- Magical Spyglass
				["coord"] = { 41.0, 73.0, THE_CAPE_OF_STRANGLETHORN },
				["providers"] = {
					{ "i", 163475 },	-- Magical Spyglass
					{ "n", 2496 },	-- Baron Revilgaz
				},
			}),
			q(53174, {	-- Murloc Eye
				["coords"] = {
					{ 42.6, 10.8, HIGHMOUNTAIN },
					{ 49.6, 15.8, HIGHMOUNTAIN },
				},
				["providers"] = {
					{ "i", 163480 },	-- Murloc Eye
					{ "n", 98067 },	-- King Mrgl-Mrgl
				},
			}),
			q(53155, {	-- Notched Coin
				["coord"] = { 55.2, 19.2, THE_JADE_FOREST },
				["providers"] = {
					{ "i", 163466 },	-- Notched Coin
					{ "n", 64365 },	-- Mili Wanderbrew
				},
			}),
			q(53178, {	-- Razorfin Hunting Spear
				["coord"] = { 29.6, 39.0, KRASARANG_WILDS },
				["providers"] = {
					{ "i", 163483 },	-- Razorfin Hunting Spear
					{ "n", 58278 },	-- Tired Shushen
				},
			}),
			q(53161, {	-- Ring of the Reefs
				["coord"] = { 60.2, 51.2, STORMHEIM },
				["providers"] = {
					{ "i", 163471 },	-- Ring of the Reefs
					{ "n", 106904 },	-- Valdemar Stormseeker
				},
			}),
			q(53164, {	-- Sonic Stone
				["coord"] = { 39.4, 62.0, TOWNLONG_STEPPES },
				["providers"] = {
					{ "i", 163473 },	-- Sonic Stone
					{ "n", 61584 },	-- Sentinel Commander Qipan
				},
			}),
			q(53182, {	-- Strangling Root
				["coord"] = { 36.2, 41.8, MOONGLADE },
				["providers"] = {
					{ "i", 163486 },	-- Strangling Root
					{ "n", 11832 },	-- Keeper Remulos
				},
			}),
			q(53170, {	-- Unscarred Black Scale
				["coord"] = { 47.8, 68.8, BURNING_STEPPES },	-- TODO: Verify map/npc id
				["providers"] = {
					{ "i", 163477 },	-- Unscarred Black Scale
					{ "n", 66306 },	-- Blacktalon Agent
				},
			}),
			q(53172, {	-- Venture Co. Business Plan
				["coords"] = {
					{ 50.2, 59.2, NORTHERN_BARRENS },
					{ 66.8, 72.6, NORTHERN_BARRENS },
				},
				["description"] = "Pats along the road between The Crossroads and Ratchet.",
				["providers"] = {
					{ "i", 163479 },	-- Venture Co. Business Plan
					{ "n", 3658 },	-- Lizzarik
				},
			}),
			q(53180, {	-- Vorus'arak's Carapace
				["coord"] = { 26.2, 50.6, DRAGONBLIGHT },
				["providers"] = {
					{ "i", 163484 },	-- Vorus'arak's Carapace
					{ "n", 26653 },	-- Kilix the Unraveler
				},
			}),
			q(53184, {	-- Weathered Pamphlet
				["coord"] = { 52.0, 30.0, TANARIS },
				["providers"] = {
					{ "i", 163488 },	-- Weathered Pamphlet
					{ "n", 132832 },	-- Jordle Flangebender
				},
			}),
			q(53183, {	-- Wriggling Mass
				["coord"] = { 40.0, 76.6, SILITHUS },
				["providers"] = {
					{ "i", 163487 },	-- Wriggling Mass
					{ "n", 132886 },	-- Twilight Hermit
				},
			}),
		}),
		-- Rep Item Quests
		n(QUESTS, sharedData({
			["repeatable"] = true,
		},{
			q(53112, {	-- Azeroth's Tear
				["coord"] = { 42.2, 44.2, SILITHUS },
				["providers"] = {
					{ "n", 130216 },	-- Magni Bronzebeard
					{ "i", 163217 },	-- Azeroth's Tear
				},
				["g"] = {
					i(174502),	-- Tear of Azeroth
				},
			}),
			q(53118, {	-- Dented Coin (A)
				["coord"] = { 68.0, 22.0, BORALUS },
				["races"] = ALLIANCE_ONLY,
				["providers"] = {
					{ "n", 122370 },	-- Cyrus Crestfall
					{ "i", 163616 },	-- Dented Coin (A)
				},
				["g"] = {
					i(174504),	-- Proudmoore War Copper
				},
			}),
			q(53120, {	-- Exotic Spices (A)
				["coord"] = { 20.6, 45.6, DRUSTVAR },
				["races"] = ALLIANCE_ONLY,
				["providers"] = {
					{ "n", 136269 },	-- Xun Xun Sweetflower
					{ "i", 163614 },	-- Exotic Spices (A)
				},
				["g"] = {
					i(174503),	-- Exotically Spiced Carrot
				},
			}),
			q(53114, {	-- Golden Beetle (H)
				["coord"] = { 75.6, 56.6, NAZMIR },
				["races"] = HORDE_ONLY,
				["providers"] = {
					{ "n", 120551 },	-- Krag'wa the Huge
					{ "i", 163619 },	-- Golden Beetle (H)
				},
				["g"] = {
					i(174506),	-- Golden Insect Wings
				},
			}),
			q(53115, {	-- Island Flotsam (H)
				["coord"] = { 35.4, 7.8, THE_GREAT_SEAL },
				["races"] = HORDE_ONLY,
				["sourceQuests"] = { 51142 },	-- Pests
				["providers"] = {
					{ "n", 126334 },	-- Jani
					{ "i", 163620 },	-- Island Flotsam (H)
				},
				["g"] = {
					i(174518),	-- Jani Figurine
				},
			}),
			q(53119, {	-- Lost Sea Scroll (A)
				["coord"] = { 59.2, 68.6, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
				["providers"] = {
					{ "n", 130576 },	-- Brother Pike
					{ "i", 163615 },	-- Lost Sea Scroll (A)
				},
				["g"] = {
					i(174505),	-- Tide-Speaker's Tome
				},
			}),
			q(53117, {	-- Rusted Alliance Insignia (A)
				["coord"] = { 69.2, 25.0, BORALUS },
				["races"] = ALLIANCE_ONLY,
				["providers"] = {
					{ "n", 135446 },	-- Vindicator Jaelaana
					{ "i", 163617 },	-- Rusted Alliance Insignia
				},
				["g"] = {
					i(174507),	-- Fallen Soldier's Insignia
				},
			}),
			q(53116, {	-- Rusted Horde Insignia (H)
				["coord"] = { 58.0, 62.6, ZULDAZAR },
				["races"] = HORDE_ONLY,
				["providers"] = {
					{ "n", 135447 },	-- Ransa Greyfeather
					{ "i", 163621 },	-- Rusted Horde Insignia (H)
				},
				["g"] = {
					i(174508),	-- Fallen Soldier's Insignia
				},
			}),
			q(53113, {	-- Shimmering Shell (H)
				["coord"] = { 56.7, 49.8, VOLDUN },
				["races"] = HORDE_ONLY,
				["providers"] = {
					{ "n", 135804 },	-- Hoarder Jena
					{ "i", 163618 },	-- Shimmering Shell (H)
				},
				["g"] = {
					i(174501),	-- Ornate Voldunai Jewelry
				},
			}),
			q(54751, {	-- Soggy Page
				["providers"] = {
					{ "n", 135793 },	-- Collector Kojo (A)
					{ "n", 134345 },	-- Collector Kojo (H)
					{ "i", 166501 },	-- Soggy Page
				},
				["g"] = {
					i(174519),	-- Verdant Hills of Chokingvine - Page 17
				},
			}),
		})),
		-- Island 'Help NPC' Quests
		n(QUESTS, sharedData({
			["repeatable"] = true,
		},{
			q(52559),	-- Aerin Needs Help! (no item)
			q(52558),	-- Aerin Needs Help! (Key)
			q(52557),	-- Aerin Needs Help! (Pickaxe)
			q(52555),	-- Aerin Needs Help! (Runestone)
			q(52556),	-- Aerin Needs Help! (Sharpened Knife)
			q(52554),	-- Aerin Needs Help! (Shovel)
			q(52553),	-- Aerin Needs Help! (Torch)
			q(52560),	-- Aerin Needs Help! (Volatile Cure-All)
			q(52575),	-- Arwan Needs Help! (no item)
			q(52574),	-- Arwan Needs Help! (Key)
			q(52573),	-- Arwan Needs Help! (Pickaxe)
			q(52571),	-- Arwan Needs Help! (Runestone)
			q(52572),	-- Arwan Needs Help! (Sharpened Knife)
			q(52570),	-- Arwan Needs Help! (Shovel)
			q(52569),	-- Arwan Needs Help! (Torch)
			q(52576),	-- Arwan Needs Help! (Volatile Cure-All)
			q(52583),	-- Brunold Needs Help! (no item)
			q(52582),	-- Brunold Needs Help! (Key)
			q(52581),	-- Brunold Needs Help! (Pickaxe)
			q(52579),	-- Brunold Needs Help! (Runestone)
			q(52580),	-- Brunold Needs Help! (Sharpened Knife)
			q(52578),	-- Brunold Needs Help! (Shovel)
			q(52577),	-- Brunold Needs Help! (Torch)
			q(52584),	-- Brunold Needs Help! (Volatile Cure-All)
			q(52591),	-- Burgle Needs Help! (no item)
			q(52590),	-- Burgle Needs Help! (Key)
			q(52589),	-- Burgle Needs Help! (Pickaxe)
			q(52587),	-- Burgle Needs Help! (Runestone)
			q(52588),	-- Burgle Needs Help! (Sharpened Knife)
			q(52586),	-- Burgle Needs Help! (Shovel)
			q(52585),	-- Burgle Needs Help! (Torch)
			q(52592),	-- Burgle Needs Help! (Volatile Cure-All)
			q(52736),	-- Deshi Needs Help! (no item)
			q(52735),	-- Deshi Needs Help! (Key)
			q(52734),	-- Deshi Needs Help! (Pickaxe)
			q(52732),	-- Deshi Needs Help! (Runestone)
			q(52733),	-- Deshi Needs Help! (Sharpened Knife)
			q(52731),	-- Deshi Needs Help! (Shovel)
			q(52730),	-- Deshi Needs Help! (Torch)
			q(52737),	-- Deshi Needs Help! (Volatile Cure-All)
			q(52599),	-- Flickerwick Needs Help! (no item)
			q(52598),	-- Flickerwick Needs Help! (Key)
			q(52597),	-- Flickerwick Needs Help! (Pickaxe)
			q(52595),	-- Flickerwick Needs Help! (Runestone)
			q(52596),	-- Flickerwick Needs Help! (Sharpened Knife)
			q(52594),	-- Flickerwick Needs Help! (Shovel)
			q(52593),	-- Flickerwick Needs Help! (Torch)
			q(52600),	-- Flickerwick Needs Help! (Volatile Cure-All)
			q(52615),	-- Frankie Needs Help! (no item)
			q(52614),	-- Frankie Needs Help! (Key)
			q(52613),	-- Frankie Needs Help! (Pickaxe)
			q(52611),	-- Frankie Needs Help! (Runestone)
			q(52612),	-- Frankie Needs Help! (Sharpened Knife)
			q(52610),	-- Frankie Needs Help! (Shovel)
			q(52609),	-- Frankie Needs Help! (Torch)
			q(52616),	-- Frankie Needs Help! (Volatile Cure-All)
			q(52607),	-- Gimzy Needs Help! (no item)
			q(52606),	-- Gimzy Needs Help! (Key)
			q(52605),	-- Gimzy Needs Help! (Pickaxe)
			q(52603),	-- Gimzy Needs Help! (Runestone)
			q(52604),	-- Gimzy Needs Help! (Sharpened Knife)
			q(52602),	-- Gimzy Needs Help! (Shovel)
			q(52601),	-- Gimzy Needs Help! (Torch)
			q(52608),	-- Gimzy Needs Help! (Volatile Cure-All)
			q(52623),	-- Gregg Needs Help! (no item)
			q(52622),	-- Gregg Needs Help! (Key)
			q(52621),	-- Gregg Needs Help! (Pickaxe)
			q(52619),	-- Gregg Needs Help! (Runestone)
			q(52620),	-- Gregg Needs Help! (Sharpened Knife)
			q(52618),	-- Gregg Needs Help! (Shovel)
			q(52617),	-- Gregg Needs Help! (Torch)
			q(52624),	-- Gregg Needs Help! (Volatile Cure-All)
			q(52631),	-- Grubby Needs Help! (no item)
			q(52630),	-- Grubby Needs Help! (Key)
			q(52629),	-- Grubby Needs Help! (Pickaxe)
			q(52627),	-- Grubby Needs Help! (Runestone)
			q(52628),	-- Grubby Needs Help! (Sharpened Knife)
			q(52626),	-- Grubby Needs Help! (Shovel)
			q(52625),	-- Grubby Needs Help! (Torch)
			q(52632),	-- Grubby Needs Help! (Volatile Cure-All)
			q(52567),	-- Karyn Needs Help! (no item)
			q(52566),	-- Karyn Needs Help! (Key)
			q(52565),	-- Karyn Needs Help! (Pickaxe)
			q(52563),	-- Karyn Needs Help! (Runestone)
			q(52564),	-- Karyn Needs Help! (Sharpened Knife)
			q(52562),	-- Karyn Needs Help! (Shovel)
			q(52561),	-- Karyn Needs Help! (Torch)
			q(52568),	-- Karyn Needs Help! (Volatile Cure-All)
			q(52639),	-- Longpaws Needs Help! (no item)
			q(52638),	-- Longpaws Needs Help! (Key)
			q(52637),	-- Longpaws Needs Help! (Pickaxe)
			q(52635),	-- Longpaws Needs Help! (Runestone)
			q(52636),	-- Longpaws Needs Help! (Sharpened Knife)
			q(52634),	-- Longpaws Needs Help! (Shovel)
			q(52633),	-- Longpaws Needs Help! (Torch)
			q(52640),	-- Longpaws Needs Help! (Volatile Cure-All)
			q(52647),	-- Manape Needs Help! (no item)
			q(52646),	-- Manape Needs Help! (Key)
			q(52645),	-- Manape Needs Help! (Pickaxe)
			q(52643),	-- Manape Needs Help! (Runestone)
			q(52644),	-- Manape Needs Help! (Sharpened Knife)
			q(52642),	-- Manape Needs Help! (Shovel)
			q(52641),	-- Manape Needs Help! (Torch)
			q(52648),	-- Manape Needs Help! (Volatile Cure-All)
			q(52656),	-- Nizhoni Needs Help! (no item)
			q(52655),	-- Nizhoni Needs Help! (Key)
			q(52653),	-- Nizhoni Needs Help! (Pickaxe)
			q(52651),	-- Nizhoni Needs Help! (Runestone)
			q(52652),	-- Nizhoni Needs Help! (Sharpened Knife)
			q(52650),	-- Nizhoni Needs Help! (Shovel)
			q(52649),	-- Nizhoni Needs Help! (Torch)
			q(52657),	-- Nizhoni Needs Help! (Volatile Cure-All)
			q(52664),	-- Old Li Needs Help! (no item)
			q(52663),	-- Old Li Needs Help! (Key)
			q(52662),	-- Old Li Needs Help! (Pickaxe)
			q(52660),	-- Old Li Needs Help! (Runestone)
			q(52661),	-- Old Li Needs Help! (Sharpened Knife)
			q(52659),	-- Old Li Needs Help! (Shovel)
			q(52658),	-- Old Li Needs Help! (Torch)
			q(52665),	-- Old Li Needs Help! (Volatile Cure-All)
			q(52545),	-- Royston Needs Help! (no item)
			q(52547),	-- Royston Needs Help! (Key)
			q(52548),	-- Royston Needs Help! (Pickaxe)
			q(52550),	-- Royston Needs Help! (Runestone)
			q(52549),	-- Royston Needs Help! (Sharpened Knife)
			q(52551),	-- Royston Needs Help! (Shovel)
			q(52552),	-- Royston Needs Help! (Torch)
			q(52546),	-- Royston Needs Help! (Volatile Cure-All)
			q(52672),	-- Spooner Needs Help! (no item)
			q(52671),	-- Spooner Needs Help! (Key)
			q(52670),	-- Spooner Needs Help! (Pickaxe)
			q(52668),	-- Spooner Needs Help! (Runestone)
			q(52669),	-- Spooner Needs Help! (Sharpened Knife)
			q(52667),	-- Spooner Needs Help! (Shovel)
			q(52666),	-- Spooner Needs Help! (Torch)
			q(52673),	-- Spooner Needs Help! (Volatile Cure-All)
			q(52680),	-- Sylvester Needs Help! (no item)
			q(52679),	-- Sylvester Needs Help! (Key)
			q(52678),	-- Sylvester Needs Help! (Pickaxe)
			q(52676),	-- Sylvester Needs Help! (Runestone)
			q(52677),	-- Sylvester Needs Help! (Sharpened Knife)
			q(52675),	-- Sylvester Needs Help! (Shovel)
			q(52674),	-- Sylvester Needs Help! (Torch)
			q(52681),	-- Sylvester Needs Help! (Volatile Cure-All)
			q(52688),	-- Taz'anga Needs Help! (no item)
			q(52687),	-- Taz'anga Needs Help! (Key)
			q(52686),	-- Taz'anga Needs Help! (Pickaxe)
			q(52684),	-- Taz'anga Needs Help! (Runestone)
			q(52685),	-- Taz'anga Needs Help! (Sharpened Knife)
			q(52683),	-- Taz'anga Needs Help! (Shovel)
			q(52682),	-- Taz'anga Needs Help! (Torch)
			q(52689),	-- Taz'anga Needs Help! (Volatile Cure-All)
			q(52696),	-- Tinny Needs Help! (no item)
			q(52695),	-- Tinny Needs Help! (Key)
			q(52694),	-- Tinny Needs Help! (Pickaxe)
			q(52692),	-- Tinny Needs Help! (Runestone)
			q(52693),	-- Tinny Needs Help! (Sharpened Knife)
			q(52691),	-- Tinny Needs Help! (Shovel)
			q(52690),	-- Tinny Needs Help! (Torch)
			q(52697),	-- Tinny Needs Help! (Volatile Cure-All)
			q(52704),	-- Tweets Needs Help! (no item)
			q(52703),	-- Tweets Needs Help! (Key)
			q(52702),	-- Tweets Needs Help! (Pickaxe)
			q(52700),	-- Tweets Needs Help! (Runestone)
			q(52701),	-- Tweets Needs Help! (Sharpened Knife)
			q(52699),	-- Tweets Needs Help! (Shovel)
			q(52698),	-- Tweets Needs Help! (Torch)
			q(52705),	-- Tweets Needs Help! (Volatile Cure-All)
			q(52712),	-- Two-Socks Needs Help! (no item)
			q(52711),	-- Two-Socks Needs Help! (Key)
			q(52709),	-- Two-Socks Needs Help! (Knife)
			q(52710),	-- Two-Socks Needs Help! (Pickaxe)
			q(52708),	-- Two-Socks Needs Help! (Runestone)
			q(52707),	-- Two-Socks Needs Help! (Shovel)
			q(52706),	-- Two-Socks Needs Help! (Torch)
			q(52713),	-- Two-Socks Needs Help! (Volatile Cure-All)
			q(52720),	-- Valero Needs Help! (no item)
			q(52719),	-- Valero Needs Help! (Key)
			q(52717),	-- Valero Needs Help! (Knife)
			q(52718),	-- Valero Needs Help! (Pickaxe)
			q(52716),	-- Valero Needs Help! (Runestone)
			q(52715),	-- Valero Needs Help! (Shovel)
			q(52714),	-- Valero Needs Help! (Torch)
			q(52721),	-- Valero Needs Help! (Volatile Cure-All)
			q(52728),	-- Vizio Needs Help! (no item)
			q(52727),	-- Vizio Needs Help! (Key)
			q(52725),	-- Vizio Needs Help! (Knife)
			q(52726),	-- Vizio Needs Help! (Pickaxe)
			q(52724),	-- Vizio Needs Help! (Runestone)
			q(52723),	-- Vizio Needs Help! (Shovel)
			q(52722),	-- Vizio Needs Help! (Torch)
			q(52729),	-- Vizio Needs Help! (Volatile Cure-All)
			q(52744),	-- Yuke Needs Help! (no item)
			q(52743),	-- Yuke Needs Help! (Key)
			q(52741),	-- Yuke Needs Help! (Knife)
			q(52742),	-- Yuke Needs Help! (Pickaxe)
			q(52740),	-- Yuke Needs Help! (Runestone)
			q(52739),	-- Yuke Needs Help! (Shovel)
			q(52738),	-- Yuke Needs Help! (Torch)
			q(52745),	-- Yuke Needs Help! (Volatile Cure-All)
		})),
	}),
}));
root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.BFA, {
	n(ISLAND_EXPEDITIONS, {
		q(55591, {["repeatable"]=true}),	-- Expedition Demolisher
		q(51994),	-- Unlock the ability to go on Island Expeditions in search of Azerite
		q(55687, {["repeatable"]=true}),	-- Expedition GG-118 Micro-Jetpack — assembling a jetpack in Island Expeditions, Alliance
		q(57104, {["repeatable"]=true}),	-- Expedition GG-118 Micro-Jetpack — assembling a jetpack in Island Expeditions, Horde
		q(55713, {["repeatable"]=true}),	-- Expedition A.T.O.M.I.K. Mk. II — rebuilding a robot in Island Expeditions, Alliance
		q(57106, {["repeatable"]=true}),	-- Expedition A.T.O.M.I.K. Mk. II — rebuilding a robot in Island Expeditions, Horde
		q(55686, {["repeatable"]=true}),	-- Upgrade Your Jetpack (Optional) — clicking on box of Azerite-Imbued Powder in Island Expeditions, Alliance
		q(57105, {["repeatable"]=true}),	-- Upgrade Your Jetpack (Optional) — clicking on box of Azerite-Imbued Powder in Island Expeditions, Horde
		q(55712, {["repeatable"]=true}),	-- Upgrade Your A.T.O.M.I.K. Mk. II (Optional) — upgrading robot in Island Expeditions, Alliance
		q(57107, {["repeatable"]=true}),	-- Upgrade Your A.T.O.M.I.K. Mk. II (Optional) — upgrading robot in Island Expeditions, Horde
		q(55619, {["repeatable"]=true}),	-- Upgrade Your Vehicle (Optional), Alliance
		q(57103, {["repeatable"]=true}),	-- Upgrade Your Vehicle (Optional), Horde
		q(55617),	-- Expedition Siege Engine — assembling siege engine in Island Expeditions
		q(56998),	-- triggered when turning in "Azerite for the Alliance," (53436) which also triggered "Azerite for the Horde" (53435).  i also got Rank 1 Volatile Worldvein from the quest, so maybe this is for receiving that?
		q(57063),	-- triggered when using Zem'lan's Lost Treasure Map (created from combining fragments from Island Expeditions)
		q(56520),	-- IE-related mission — not sure if this is the Stalwart Worldvein Rank 2 one or one that awarded Saurok Scale Headgear
		q(57060),	-- IE-related mission — not sure if this is the Stalwart Worldvein Rank 2 one or one that awarded Saurok Scale Headgear
		q(57061),	-- popped when i manually refreshed after fully completing the mission / getting Fluctuating Worldvein in my inventory
		q(57332),	-- using Map to the Last Worldvein to get mission The Last Worldvein (rank 4 Worldvein Resonance)
		q(56910),	-- popped after finishing the mission The Last Worldvein (rank 4 Worldvein Resonance)
		q(57062),	-- popped after finishing the mission The Last Worldvein (rank 4 Worldvein Resonance)
	}),
}));