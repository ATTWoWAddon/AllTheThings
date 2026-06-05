-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------

local FIELD_ACCOLADE = 3405;
local DARK_PARTICLE = 267051;

root(ROOTS.ExpansionFeatures, expansion(EXPANSION.MID, {
	["groups"] = sharedData({
		["maps"] = {
			MAP.MIDNIGHT.EVERSONG_WOODS,
			MAP.MIDNIGHT.ZULAMAN,
		},
		["timeline"] = { ADDED_12_0_5 },
	}, {
		header(HEADERS.Achievement, 41052, {	-- Lingering Shadows
			n(RITUAL_SITES, {
				faction(FACTION_RITUAL_SITES),
				m(BROKEN_THRONE, {
					["icon"] = 7578705,
					["cr"] = 260104,	-- Curious Obelisk
					["coord"] = { 29.6, 77.9, MAP.MIDNIGHT.ZULAMAN },
					["groups"] = {
						n(ACHIEVEMENTS, {
							ach(62537),	-- Neighborhood Ritual Team: Broken Throne
							ach(62536),	-- Neighborhood Ritual Watch: Broken Throne
							ach(62521),	-- Ritual Site: Broken Throne
							ach(62524),	-- Ritual Site Challenge: Broken Throne
							ach(62525),	-- Ritual Site Extreme: Broken Throne
							ach(62523),	-- Ritual Site Mastery: Broken Throne
							ach(62534),	-- Ritual Site Rogue: Broken Throne
						}),
						filter(BATTLE_PETS, {
							i(269836, {	-- Chubs (PET!)
								["coord"] = { 55.8, 49.6, BROKEN_THRONE },
								["provider"] = { "n", 263355 },	-- Lost Bear Cub
								["cost"] = { { "i", 242639, 1 } },	-- 1x Practically Pork
							}),
						}),
						n(TREASURES, {
							o(649115, {	-- Chewed Meat
								["description"] = "Summon Pet 'Chubs' at the Meat Piles. Defeat Angry Amani Warbear. Once it turns friendly, feed it.",
								["coord"] = { 55.8, 38.8, BROKEN_THRONE },
								["cost"] = { { "i", 242639, 5 } },	-- 5x Practically Pork
								["groups"] = { i(257225) },	-- Witherbark Warbear Harness (MOUNT!)
							}),
							o(649209, {	-- Misplaced Ritual Candle
								["coord"] = { 51.5, 47.8, BROKEN_THRONE },
								["groups"] = { i(271999) },	-- Misplaced Ritual Candle
							}),
							o(649189, {	-- Ritual Circle
								["description"] = "Find the Misplaced Ritual Candle nearby and place it on the appropriate place. After that, begin the ritual.",
								["coord"] = { 50.6, 47.3, BROKEN_THRONE },
								["cr"] = 263527,	-- Void-Corrupted Hex Eagle
								["cost"] = { { "i", 271999, 1 } },	-- 1x Misplaced Ritual Candle
								["groups"] = { i(269828) },	-- Void-Corrupted Eagle Talon (MOUNT!)
							}),
							o(649412, {	-- Void-Tainted Nest
								["description"] = "You need to be mounted on the 'Void-Corrupted Hex Eagle' in order to see the Updraft at the corner of the pillar in the southern part of the Ritual Site.\nStep into the Updraft to be flown to the nest.",
								["coords"] = {
									{ 49.5, 78.3, BROKEN_THRONE },	-- Updraft that carries you to the nest
									{ 45.8, 64.8, BROKEN_THRONE },	-- Nest
								},
								["groups"] = { i(269829) },	-- Void-Scarred Eaglet (PET!)
							}),
						}),
					},
				}),
				m(DAGGERSPINE_POINT, {
					["icon"] = 3012072,
					["cr"] = 260103,	-- Curious Obelisk
					["coord"] = { 37.6, 65.3, MAP.MIDNIGHT.EVERSONG_WOODS },
					["groups"] = {
						n(ACHIEVEMENTS, {
							ach(62539),	-- Neighborhood Ritual Team: Daggerspine Point
							ach(62538),	-- Neighborhood Ritual Watch: Daggerspine Point
							ach(62522),	-- Ritual Site: Daggerspine Point
							ach(62526),	-- Ritual Site Mastery: Daggerspine Point
							ach(62527),	-- Ritual Site Challenge: Daggerspine Point
							ach(62528),	-- Ritual Site Extreme: Daggerspine Point
							ach(62535),	-- Ritual Site Rogue: Daggerspine Point
						}),
						n(RARES, {
							n(259971, {	-- Mana-Gorged Greatwyrm
								["minReputation"] = { FACTION_RITUAL_SITES, 8 },
								["coords"] = { 55.1, 38.7, DAGGERSPINE_POINT },
								["groups"] = {
									i(269999),	-- Overloaded Manaling (PET!)
								},
							}),
						}),
						n(TREASURES, {
							n(263805, {	-- Egg
								["description"] = "A small, inconspicuous, egg is floating down the river. Catch it.",
								["coords"] = {
									{ 55.8, 45.6, DAGGERSPINE_POINT },
									{ 68.7, 47.7, DAGGERSPINE_POINT },
									{ 71.6, 50.3, DAGGERSPINE_POINT },
								},
								["groups"] = {
									i(270062),	-- Void-Touched Chick (PET!)
								},
							}),
							n(createHeader({	-- Soggy Nest (no objectID known, hopefully temporary solution...)
								readable = "Soggy Nest",
								text = {
									en = "Soggy Nest",
									-- de = "",
									-- es = "",
									-- mx = "",
									-- fr = "",
									-- it = "",
									-- ko = "",
									-- pt = "",
									-- ru = "",
									-- cn = "",
									-- tw = "",
								},
							}), {
								["coord"] = { 30.0, 63.1, DAGGERSPINE_POINT },
								["cost"] = { { "i", 272128, 1 } },	-- Soggy Lynx Toy
								["groups"] = {
									i(270061, {	-- Void-Bathed Snapdragon (PET!)
										["cr"] = 263917,	-- Curious Snapdragon
									}),
								},
							}),
							o(649380, {	-- Washed Up Kelp
								["description"] = "Search through the Kelp for a chance to attract the Void-Touched Snapdragon.",
								["modelScale"] = 3,
								["cr"] = 263617,	-- Void-Touched Snapdragon
								["coords"] = {
									{ 38.0, 63.6, DAGGERSPINE_POINT },	-- Verified
									{ 41.0, 73.0, DAGGERSPINE_POINT },	-- Not verified, WoWhead data
									{ 46.6, 46.0, DAGGERSPINE_POINT },	-- Verified
									{ 47.9, 72.1, DAGGERSPINE_POINT },	-- Verified
									{ 50.1, 55.1, DAGGERSPINE_POINT },	-- Verified
									{ 53.4, 55.4, DAGGERSPINE_POINT },	-- Verified
									{ 62.0, 77.1, DAGGERSPINE_POINT },	-- Verified
									{ 66.0, 74.0, DAGGERSPINE_POINT },	-- Not verified, WoWhead data
								},
								["groups"] = { i(270041) },	-- Void-Touched Snapdragon (MOUNT!)
							}),
						}),
						n(ZONE_DROPS, {
							i(271644),	-- Ember of Power (QS!/QI!)
							i(272128, {	-- Soggy Lynx Toy
								["description"] = "Has a chance to drop from any Naga-type creature within the Ritual Site.",
								["crs"] = {
									257828,	-- Daggerspine Infuser
									257829,	-- Daggerspine Myrmidon
									257827,	-- Deeplurk Shadowblade
								},
							}),
						}),
					},
				}),
				m(NAIGTAL, {
					["icon"] = 775461,
					["timeline"] = { ADDED_12_0_7 },
					["cr"] = 264322,	-- Greater Void Portal
					["coord"] = { 51.4, 71.3, MAP.MIDNIGHT.VOIDSTORM },
					--["maps"] = {
					--},
					["groups"] = {
						n(ACHIEVEMENTS, {
							ach(63385),	-- A Hal'hadar Walks into a Swamp
							ach(62904),	-- Climate Strange: Naigtal
							ach(62919),	-- Heroic Climate Strange: Naigtal
							ach(62883),	-- Showdown Slugger: Naigtal
							ach(62882),	-- Showdown Success: Naigtal
						}),
						n(createHeader({
							readable = "Manaforge Translocators",
							icon = 6654410,
							text = {
								en = "Manaforge Translocators",
								--de = "Manaforge Translocators",
								--es = "Manaforge Translocators",
								--mx = "Manaforge Translocators",
								--fr = "Manaforge Translocators",
								--it = "Manaforge Translocators",
								--ko = "Manaforge Translocators",
								--pt = "Manaforge Translocators",
								--ru = "Manaforge Translocators",
								--cn = "Manaforge Translocators",
								--tw = "Manaforge Translocators",
							},
							description = {
								en = "Manaforge Translocators are teleporters used to instantly move around Naigtal.",
								-- TODO: de = "",
								-- TODO: es = "",
								-- TODO: mx = "",
								-- TODO: fr = "",
								-- TODO: it = "",
								-- TODO: ko = "",
								-- TODO: pt = "",
								-- TODO: ru = "",
								-- TODO: cn = "",
								-- TODO: tw = "",
							},
						}), {
							["groups"] = sharedData({
								["sourceQuest"] = 96809,	-- Exterior Manaforge Translocator
							}, {
								fp(3280, {	-- Extraction Coast
									["coord"] = { 32.3, 46.1, NAIGTAL },
									["cr"] = 266519,	-- Manaforge Translocator
								}),
								fp(3279, {	-- Nexus Port
									["coord"] = { 55.0, 47.0, NAIGTAL },
									["cr"] = 266518,	-- Manaforge Translocator
								}),
								fp(3278, {	-- Sporeforge
									["coord"] = { 77.3, 42.9, NAIGTAL },
									["cr"] = 266517,	-- Manaforge Translocator
								}),
								fp(3277, {	-- Umbral Base Camp
									["coord"] = { 46.7, 82.9, NAIGTAL },
									["cr"] = 266515,	-- Manaforge Translocator
								}),
							}),
						}),
						n(QUESTS, {
							q(96052, {	-- Through the Mana Rift
								["sourceQuest"] = 96708,	-- To the Voidstorm and Beyond!
								["qg"] = 263480,	-- Riftblade Maella
								["coord"] = { 51.6, 71.1, MAP.MIDNIGHT.VOIDSTORM },
							}),
							q(96054, {	-- Surveying the Mana-Bog
								["sourceQuest"] = 96052,	-- Through the Mana Rift
								["qg"] = 264024,	-- Riftblade Maella
								["coord"] = { 48.1, 81.1, NAIGTAL },
							}),
							q(97072, {	-- A Swampy Welcome to Naigtal
								["sourceQuest"] = 96054,	-- Surveying the Mana-Bog
								["qg"] = 264028,	-- Commander Tala'saan
								["coord"] = { 70.8, 62.2, NAIGTAL },
								["groups"] = {
									i(276372),	-- Lightveil Recall Beacon (PQI!)
									--
									i(276371),	-- Lightveil Recall Beacon (TOY!)
								},
							}),
							q(96472, {	-- The Nexus-Captain
								["sourceQuest"] = 96054,	-- Surveying the Mana-Bog
								["qg"] = 264028,	-- Commander Tala'saan
								["coord"] = { 70.8, 62.2, NAIGTAL },
							}),
							q(96534, {	-- Preparing for Threats
								["sourceQuest"] = 96054,	-- Surveying the Mana-Bog
								["qg"] = 265558,	-- Veraan
								["coord"] = { 47.9, 81.4, NAIGTAL },
							}),
							q(96809, {	-- Exterior Manaforge Translocator
								["sourceQuest"] = 96054,	-- Surveying the Mana-Bog
								["qg"] = 265559,	-- Kifaan
								["coord"] = { 47.7, 81.2, NAIGTAL },
							}),
							q(96567, {	-- Data Decryption Disaster
								["sourceQuest"] = 97072,	-- A Swampy Welcome to Naigtal
								["qg"] = 266034,	-- Archmage Y'mera
								["coord"] = { 47.8, 82.0, NAIGTAL },
								["groups"] = {
									i(275391),	-- Lightveil Data Decrypter (PQI!)
									--
									i(275686),	-- Decrypted Intel Sphere (QI!)
									i(275135),	-- Firewall Decryption Key (QI!)
								},
							}),
							q(96568, {	-- Hal'hadon't You Dare!
								["sourceQuest"] = 97072,	-- A Swampy Welcome to Naigtal
								["qg"] = 265950,	-- Commander Tala'saan
								["coord"] = { 47.5, 82.1, NAIGTAL },
							}),
							q(96569, {	-- Conductive Crystals
								["sourceQuest"] = 97072,	-- A Swampy Welcome to Naigtal
								["provider"] = { "o", 654497 },	-- Energized Crystal Conductor
								["coords"] = {
									{ 70.4, 48.5, NAIGTAL },
									{ 72.7, 39.6, NAIGTAL },
									{ 75.1, 44.3, NAIGTAL },
								},
								["groups"] = {
									o(654422, {	-- Energized Crystal Conductor
										i(274936),	-- Energized Crystal Conductor (QI!)
									}),
								},
							}),
							q(96570, {	-- Technological Transference
								["sourceQuests"] = {
									96567,	-- Data Decryption Disaster
									96568,	-- Hal'hadon't You Dare!
									96569,	-- Conductive Crystals
								},
								["qg"] = 266034,	-- Archmage Y'mera
								["coord"] = { 47.8, 82.0, NAIGTAL },
							}),
							q(96571, {	-- The Node Knows
								["sourceQuests"] = {
									96567,	-- Data Decryption Disaster
									96568,	-- Hal'hadon't You Dare!
									96569,	-- Conductive Crystals
								},
								["qg"] = 265950,	-- Commander Tala'saan
								["coord"] = { 47.5, 82.1, NAIGTAL },
								["groups"] = {
									i(274990),	-- Infantry's Data-Node (QI!)
									o(655738, {	-- Nullframe Holoprint
										["coord"] = { 65.8, 74.5, NAIGTAL },
										["groups"] = { i(275477) },	-- Nullframe Holoprint (QI!)
									}),
									o(656141, {	-- Soul Lattice Holoprint
										["coord"] = { 77.1, 77.9, NAIGTAL },
										["groups"] = { i(275687) },	-- Soul Lattice Holoprint (QI!)
									}),
									o(656142, {	-- Glittering Crypt Holoprint
										["coord"] = { 73.2, 75.4, NAIGTAL },
										["groups"] = { i(275689) },	-- Glittering Crypt Holoprint
									}),
								},
							}),
							q(96572, {	-- Malfunctioning Nullframe
								["sourceQuests"] = {
									96567,	-- Data Decryption Disaster
									96568,	-- Hal'hadon't You Dare!
									96569,	-- Conductive Crystals
								},
								["provider"] = { "i", 275520 },	-- Technoseer's Communique (QS!)
								["coord"] = { 74.2, 73.5, NAIGTAL },
							}),
							-- Repeatable
							q(96717, {	-- Showdown on Naigtal
								["sourceQuest"] = 96052,	-- Through the Mana Rift
								["qg"] = 265303,	-- Decimus
								["coords"] = {
									{ 48.2, 81.2, NAIGTAL },
									{ 48.5, 81.9, NAIGTAL },
								},
								["groups"] = { i(275690) },	-- Riftstalker's Cache
								["isWeekly"] = true,
							}),
						}),
						n(RARES, {
							-- Rare at Vennorax Wreckage. It was gone by the time I got there. Coord 29.7, 19.2,	-- Exo
							n(263947, {	-- Interminable Uarn
								["coord"] = { 37.6, 61.8, NAIGTAL },
								["questID"] = 96205,
								["groups"] = { i(274862) },	-- Corrupted Draenei Priest's Kris
							}),
							n(263955, {	-- Lomelith
								["description"] = "Roams around the area.",
								["coord"] = { 67.7, 62.9, NAIGTAL },
								--["questID"] = XXXXX,
							}),
							n(263954, {	-- Swalewing Matriarch
								["description"] = "Roams around the area.",
								["coord"] = { 77.7, 38.0, NAIGTAL },
								["questID"] = 96207,
								["groups"] = { i(275161) },	-- Swamp-Resistant Stompers
							}),
							n(264576, {	-- Slaipaan
								["description"] = "Roams around the area.",
								["coord"] = { 56.1, 61.4, NAIGTAL },
								["questID"] = 96320,
								["groups"] = { i(274871) },	-- Giant Worm Piercer
							}),
							n(267422, {	-- Warbringer Thal'kuur
								["description"] = "Roams around the area.",
								["coord"] = { 56.1, 61.4, NAIGTAL },
								--["questID"] = XXXXX,
							}),
							n(264574, {	-- Warp Agent Xi'grivr
								["coord"] = { 70.3, 76.4, NAIGTAL },
								["questID"] = 96319,
								["groups"] = { i(274821) },	-- Drape of the Hal'hadar Assassin
							}),
						}),
						n(REWARDS, {
							i(276089),	-- Field Accolades (Normal)
							i(276090),	-- Field Accolades (Heroic)
							i(276091),	-- Lost Armaments (Normal)
							i(276092),	-- Lost Armaments (Heroic)
							i(276093),	-- Nexus-Captain Leth'ir (Normal)
							i(276094),	-- Nexus-Captain Leth'ir (Heroic)
						}),
						n(TREASURES, {
							o(655271, {	-- Hal'hadar Pocket-Storage
								["description"] = "Spawns randomly throughout the zone.",
							}),
						}),
						n(WORLD_QUESTS, bubbleDownFiltered({	-- Bonus Objectives in this case behave like (repeatable) World Quests
							["isWorldQuest"] = true,
						},FILTERFUNC_questID,{
							q(96696, {	-- Base Camp Tendril Sling
								["coord"] = { 45.6, 78.9, NAIGTAL },
							}),
							q(96691, {	-- Command Point Tendril Sling
								["coord"] = { 72.5, 80.6, NAIGTAL },
							}),
							q(96557, {	-- Flying Debris
								["coord"] = { 54.9, 33.6, NAIGTAL },
							}),
							q(96548, {	-- High Spore (Bonus Objective)
								["coord"] = { 53.1, 67.0, NAIGTAL },
							}),
							q(96268, {	-- Marsh Mana Spores
								["coord"] = { 63.1, 55.0, NAIGTAL },
							}),
							q(96272, {	-- Mashing Mushroom Mana Machines
								["coord"] = { 29.8, 53.2, NAIGTAL },
							}),
							q(96293, {	-- Mush-Vroom!
								["coord"] = { 34.2, 45.9, NAIGTAL },
							}),
							q(96698, {	-- Naigtal Tendril Sling
								["coord"] = { 58.9, 56.6, NAIGTAL },
							}),
							q(96522, {	-- Oh Captain, Die Captain!
								["coord"] = { 77.0, 75.7, NAIGTAL },
							}),
							q(96432, {	-- Power Overload
								["coord"] = { 70.7, 44.2, NAIGTAL },
								["groups"] = { i(274407) },	-- Hal'Hadar Automaton Fuel Cell (QI!)
							}),
							q(96000, {	-- Skiff Joyride
								["coord"] = { 62.1, 58.5, NAIGTAL },
							}),
							q(96650, {	-- Subdue the Spore Storm (Bonus Objective)
								["coord"] = { 51.6, 58.1, NAIGTAL },
							}),
							q(96651, {	-- Subdue the Spore Storm (Bonus Objective)
								["coord"] = { 32.2, 45.0, NAIGTAL },
							}),
							q(96668, {	-- Subdue the Spore Storm (Bonus Objective)
								["coord"] = { 78.9, 41.0, NAIGTAL },
							}),
							q(96547, {	-- Weaken Their Forces
								["coord"] = { 76.3, 75.9, NAIGTAL },
							}),
						})),
						n(ZONE_DROPS, {
							i(275520, {	-- Technoseer's Communique (QS!)
								["cr"] = 265537,	-- Hal'hadar Forge Grunt
								["coord"] = { 74.2, 73.5, NAIGTAL },
							}),
							i(276300),	-- Vilaldoun Anchorite's Scepter (COSMETIC!)
						}),
					},
				}),
				m(VAL, {
					["icon"] = 429385,
					["timeline"] = { ADDED_12_0_7 },
					["cr"] = 264308,	-- Greater Void Portal
					["coord"] = { 51.4, 71.3, MAP.MIDNIGHT.VOIDSTORM },
					["maps"] = {
						2621,	-- The Forgotten Depths
						2617,	-- Void Acropolis (Upper)
						2618,	-- Void Acropolis (Lower)
						-- There should be more maps here. There are a lot of sub-zones
					},
					["groups"] = {
						n(ACHIEVEMENTS, {
							ach(62842),	-- A Celestial Pain
							ach(62903),	-- Climate Strange: Val
							ach(63386),	-- Frosty Domanaar Politics
							ach(62917),	-- Heroic Climate Strange: Val
							ach(62881),	-- Showdown Slugger: Val
							ach(62880),	-- Showdown Success: Val
							ach(63349),	-- Ultradon Carnage
						}),
						n(QUESTS, {
							q(96048, {	-- The Time to Strike
								["description"] = "Can be accepted from the Adventure Journal.",	-- Or will it pop-up on first log-in when eligible?
								["isBreadcrumb"] = true,	-- ?? You can't accept followup quests without it?
							}),
							q(96049, {	-- Stalkers of the Stars
								["sourceQuest"] = 96048,	-- The Time to Strike
								["qg"] = 263479,	-- Riftblade Maella
								["coord"] = { 47.6, 51.0, MAP.MIDNIGHT.SILVERMOON_CITY },
							}),
							q(96703, {	-- Veterans of the Great Dark
								["sourceQuest"] = 96048,	-- The Time to Strike
								["qg"] = 263479,	-- Riftblade Maella
								["coord"] = { 47.6, 51.0, MAP.MIDNIGHT.SILVERMOON_CITY },
							}),
							q(96708, {	-- To the Voidstorm and Beyond!
								["sourceQuests"] = {
									96049,	-- Stalkers of the Stars
									96703,	-- Veterans of the Great Dark
								},
								["qg"] = 263479,	-- Riftblade Maella
								["coord"] = { 47.6, 51.0, MAP.MIDNIGHT.SILVERMOON_CITY },
							}),
							q(96051, {	-- Through the Cold Rift
								["sourceQuest"] = 96708,	-- To the Voidstorm and Beyond!
								["qg"] = 263480,	-- Riftblade Maella
								["coord"] = { 51.6, 71.1, MAP.MIDNIGHT.VOIDSTORM },
							}),
							q(96053, {	-- Surveying the Frozen Wastes
								["sourceQuest"] = 96051,	-- Through the Cold Rift
								["qg"] = 263482,	-- Riftblade Maella
								["coord"] = { 59.3, 19.5, VAL },
							}),
							q(96473, {	-- Imperator Pertinax
								["sourceQuest"] = 96053,	-- Surveying the Frozen Wastes
								["qg"] = 263987,	-- Belath Dawnblade
								["coord"] = { 41.7, 84.6, VAL },
							}),
							q(96713, {	-- Showdown on Val
								["sourceQuest"] = 96051,	-- Through the Cold Rift
								["qg"] = 263482,	-- Riftblade Maella
								["coords"] = {
									{ 59.3, 19.5, VAL },
									{ 59.5, 22.1, VAL },
								},
								["groups"] = { i(275690) },	-- Riftstalker's Cache
								["isWeekly"] = true,
							}),
						}),
						n(RARES, {
							n(264866, {	-- Krilkan
								["coord"] = { 44.6, 52.8, VAL },
								--["questID"] = XXXXX,
							}),
							n(264865, {	-- Mercilus
								["coord"] = { 49.7, 79.2, VAL },
								--["questID"] = XXXXX,
							}),
							n(261965, {	-- Void Infused Sleet-Rune
								["coord"] = { 55.2, 65.6, VAL },
								--["questID"] = XXXXX,
							}),
							n(264864, {	-- Xirah
								["coord"] = { 29.0, 73.8, VAL },
								--["questID"] = XXXXX,
								["groups"] = {
									i(274820),	-- Cloak of the Voracious Gorger
								},
							}),
						}),
						n(REWARDS, {
							i(276089),	-- Field Accolades (Normal)
							i(276090),	-- Field Accolades (Heroic)
							i(276091),	-- Lost Armaments (Normal)
							i(276092),	-- Lost Armaments (Heroic)
							i(276095),	-- Imperator Pertinax (Normal)
							i(276096),	-- Imperator Pertinax (Heroic)
						}),
						n(TREASURES, {
							o(655270, {	-- Dominaar Storage Vessel
								["description"] = "Spawns randomly throughout the zone.",
							}),
						}),
						n(WORLD_QUESTS, bubbleDownFiltered({
							["isWorldQuest"] = true,
						},FILTERFUNC_questID,{
							q(95403, {	-- A Lingering Echo
								["coord"] = { 27.6, 75.1, VAL },
							}),
							q(96295, {	-- A Pertinent Punishment
								["coord"] = { 40.2, 77.5, 2618 },	-- Void Acropolis (Lower)
							}),
							q(95393, {	-- Caver Saviour
								["coord"] = { 61.6, 78.8, VAL },
							}),
							q(95404, {	-- Freeze Range Eggs
								["coord"] = { 56.0, 49.6, VAL },
							}),
							q(95401, {	-- Junction Dysfunction
								["coord"] = { 35.8, 74.3, VAL },
							}),
							q(95392, {	-- One Friend is Plenty
								["coord"] = { 45.4, 52.3, VAL },
							}),
							q(95399, {	-- Shadowy Strategies
								["coord"] = { 79.4, 70.6, 2618 },	-- Void Acropolis (Lower)
							}),
							q(95400, {	-- Solid Cold
								["coord"] = { 46.8, 47.5, VAL },
							}),
							q(96617, {	-- Storm Mitigation (Bonus Objective)
								["coord"] = { 47.8, 80.4, VAL },
							}),
							q(96618, {	-- Storm Mitigation (Bonus Objective)
								["coord"] = { 50.9, 56.2, VAL },
							}),
							q(95395, {	-- Until it is Done
								["coord"] = { 32.3, 50.1, VAL },
							}),
						})),
					},
				}),
				n(ACHIEVEMENTS, sharedData({	-- Achievements do not reward Mounts and Pets. They unlock the ability for you to buy them from the vendor.
					["maps"] = {
						BROKEN_THRONE,
						DAGGERSPINE_POINT,
					},
				}, {
					ach(63182, { ["timeline"] = { ADDED_12_0_7 } }),	-- Advanced Ritual Site Studies
					ach(62547),	-- Challenge: Embers
					ach(62544),	-- Challenge: Magical Alarm Bells
					ach(62545),	-- Challenge: Malevolent Boons
					ach(62542),	-- Challenge: Manifestations
					ach(62543),	-- Challenge: Patrols!
					ach(62546),	-- Challenge: Reinforced
					ach(62541),	-- Challenge: Tainted Corpses
					ach(62540),	-- Challenge: Tendrils
					ach(62621),	-- Challenging Sites
					ach(62560),	-- Ember Still Burning
					ach(62555),	-- Expert Challenge: Embers
					ach(62552),	-- Expert Challenge: Magical Alarm Bells
					ach(62553),	-- Expert Challenge: Malevolent Boons
					ach(62550),	-- Expert Challenge: Manifestations
					ach(62551),	-- Expert Challenge: Patrols!
					ach(62554),	-- Expert Challenge: Reinforced
					ach(62549),	-- Expert Challenge: Tainted Corpses
					ach(62548),	-- Expert Challenge: Tendrils
					ach(62559),	-- Malevolence Shrugged
					ach(62558),	-- Patrol Ambusher
					ach(62941, { ["timeline"] = { ADDED_12_0_7 } }),	-- Pinnacle Ritual Work
					ach(62556),	-- Quick Reflexes
					ach(62561),	-- Reinforcement Obliteration
					ach(62622),	-- Ritual Renown
					ach(62530),	-- Ritual Site Achiever
					ach(62531),	-- Ritual Site Adept
					ach(62562, {	-- Ritual Site Disruptor
						-- Meta Achievement
						["sym"] = {{"meta_achievement",
							62621,	-- Challenging Sites
							62622,	-- Ritual Renown
							62452,	-- Ritual Sites 320: Ritual Items and Their Uses in Quel'thelas
						}},
					}),
					ach(62532),	-- Ritual Site Handler
					ach(62533),	-- Ritual Site Master
					ach(62529),	-- Ritual Site Starter
					ach(62450),	-- Ritual Sites 101: An Introduction to Basic Magical Rituals
					ach(62451),	-- Ritual Sites 200: Intermediate Ritual Practices
					ach(62452),	-- Ritual Sites 320: Ritual Items and Their Uses in Quel'thelas
					ach(62453),	-- Ritual Sites 415: Applied Ritual Strategies
					ach(62454),	-- Ritual Sites 505: A Seminar in Void Ritual Nuance
					ach(62940, { ["timeline"] = { ADDED_12_0_7 } }),	-- Ritual Sites 612: Practical Ritual Work
				})),
				n(ACHIEVEMENTS, bubbleDown({
					["timeline"] = { ADDED_12_0_7 },
					["maps"] = {
						NAIGTAL,
						VAL,
					},
				}, {
					ach(62873),	-- A Trip Around the Stars
					ach(62874),	-- A Trip Through the Stars
					ach(62899),	-- Absolute Power
					ach(62898),	-- Cradle of Power
					ach(63264),	-- Heroic Showdowns
					ach(63348),	-- Heroic Slugger
					ach(63323),	-- Heroic Tendencies
					ach(62909),	-- Heroic: Pain of Command
					ach(62901),	-- Heroic: Power Creep
					ach(62887),	-- Heroic: Worlds Ahead
					ach(63383),	-- Into the Stars
					ach(62905),	-- Pain of Command
					ach(62900),	-- Power Beyond Measure
					ach(62896),	-- Power Creep
					ach(63384),	-- Prepared for a Showdown
				})),
				n(EMISSARY_QUESTS, {
					------ Paragon ------
					q(95391, {	-- Ritual Site Renowned
						["isRepeatable"] = true,
						["groups"] = { i(269234) },	-- Overflowing Ritual Site Cache
					}),
				}),
				n(EVENT_COMPLETION, {
					["maps"] = {
						DAGGERSPINE_POINT,
						BROKEN_THRONE,
					},
					["groups"] = {
						i(272391),	-- Pattern: Rope Lynx Harness (RECIPE!)
						i(272392, {	-- Broken Lynx Leash
							["description"] = "Can only drop if you are Renown 8.\n\nCan drop on any difficulty level, regardless of active affixes.\n\nUnconfirmed: Higher difficulties, additional affixes, and higher performance scores increase your chances of obtaining it.",
						}),
						i(271787),	-- Field Accolades
						i(271786),	-- Ritual Site Reports
						i(271785),	-- Ritual Spoils (Tier 1)
						i(271973),	-- Ritual Spoils (Tier 2)
						i(271974),	-- Ritual Spoils (Tier 3)
						i(271975),	-- Ritual Spoils (Tier 4)
						i(271976),	-- Ritual Spoils (Tier 5)
						i(273855),	-- Ritual Tablet (1st Ritual of the Week)
						i(273856),	-- Ritual Tablet Fragment (2nd Ritual of the Week)
						i(269817),	-- Ritual Site Challenge Report: Tendrils (QS!)
						currency(3429),	-- Ritual Site Reports
						currency(FIELD_ACCOLADE, {["skipFill"] = 1}),
					},
				}),
				n(QUESTS, {
					q(94382, {	-- Ritual Problems
						["sourceQuest"] = 94383,	-- Ritual Interest
						["qg"] = 257416,	-- Lady Darkglen
						["coord"] = { 47.7, 49.6, MAP.MIDNIGHT.SILVERMOON_CITY },
					}),
					q(95933, {	-- Traces in the Dark
						["sourceAchievement"] = 62569,	-- Traces in the Dark
						["qg"] = 263121,	-- Mayven Ombrewing
						["coord"] = { 47.9, 49.4, MAP.MIDNIGHT.SILVERMOON_CITY },
					}),
					-- These unlock after you have completed at least 1 Ritual Site
					q(95550, {	-- Thin Their Ranks
						--["sourceQuest"] = ???,	-- ???
						["qg"] = 257411,	-- Ranger Captain Lilatha
						["coord"] = { 48.1, 49.7, MAP.MIDNIGHT.SILVERMOON_CITY },
					}),
					q(95552, {	-- Dark Obelisk Investigation
						--["sourceQuest"] = ???,	-- ???
						["qg"] = 257416,	-- Lady Darkglen
						["coord"] = { 47.7, 49.7, MAP.MIDNIGHT.SILVERMOON_CITY },
					}),
					q(95553, {	-- Manifested Density
						--["sourceQuest"] = ???,	-- ???
						["qg"] = 257411,	-- Ranger Captain Lilatha
						["coord"] = { 48.1, 49.7, MAP.MIDNIGHT.SILVERMOON_CITY },
					}),
					q(95549, {	-- Raising Magical Alarms
						--["sourceQuest"] = ???,	-- ???
						["qg"] = 257416,	-- Lady Darkglen
						["coord"] = { 47.7, 49.7, MAP.MIDNIGHT.SILVERMOON_CITY },
						["groups"] = {
							i(271094),	-- Lady Darkglen's Device (QI!)
						},
					}),
					q(95551, {	-- Misappropriated Treasures
						["providers"] = {	-- All of these trigger the Quest and also serve as Quest Items
							{ "i", 271428 },	-- Crystalline Treasure (QS!/QI!)
							{ "i", 271429 },	-- Ethereal Treasure (QS!/QI!)
							{ "i", 271427 },	-- Exquisite Treasure (QS!/QI!)
							{ "i", 271430 },	-- Sculpted Treasure (QS!/QI!)
						},
					}),
					q(95554, {	-- Questionable Power
						["provider"] = { "i", 271644 },	-- Ember of Power (QS!/QI!)
					}),
					q(95547, {	-- Ritual Site Challenge Report: Tendrils
						["provider"] = { "i", 269817 },	-- Ritual Site Challenge Report: Tendrils (QS!)
					}),
					q(95548, {	-- Tainted Sample
						["provider"] = { "i", 270562 },	-- Tainted Sample (QS!/QI!)
					}),
				}),
				n(TREASURES, {	-- Most of these have the chance to spawn randomly throughout both Daggerspine Point and Broken Throne Ritual Sites, unless noted. Listed coords are only a fraction of possible locations.
					o(645182, {	-- Crystalline Treasure
						["coords"] = {
							{ 45.5, 55.5, DAGGERSPINE_POINT },
							{ 46.0, 58.4, DAGGERSPINE_POINT },
							{ 50.6, 53.5, DAGGERSPINE_POINT },
							{ 51.4, 73.3, DAGGERSPINE_POINT },
							{ 62.9, 38.9, DAGGERSPINE_POINT },
						},
						["groups"] = { i(271428) },	-- Crystalline Treasure (QS!/QI!)
					}),
					o(645183, {	-- Ethereal Treasure
						["coords"] = {
							{ 40.9, 56.5, BROKEN_THRONE },
							{ 45.0, 54.4, DAGGERSPINE_POINT },
						},
						["groups"] = { i(271429) },	-- Ethereal Treasure (QS!/QI!)
					}),
					o(645181, {	-- Exquisite Treasure
						["coords"] = {
							{ 57.3, 18.4, DAGGERSPINE_POINT },
							{ 58.8, 49.1, DAGGERSPINE_POINT },
						},
						["groups"] = { i(271427) },	-- Exquisite Treasure (QS!/QI!)
					}),
					header(HEADERS.Item, 270063, {	-- Void-Touched Lynx Kitten
						["description"] = "Found in Tier 3 or higher.\nClick the Rustling Bushes inside the Ritual Site.\n- You will have to click 8-13 rustling bushes before being able to click on the pet.\nOnly 1-2 are available per run.\nThe cat spawns from the bush and needs to be clicked to obtain the pet. It can only be interacted with by ONE player.\n- Once you have the Pet learned or Pet Item in inventory you CANNOT see/click the bushes anymore.",
						["providers"] = {
							{ "o", 649420 },	-- Rustling Bush [Daggerspine Point]
							{ "o", 649437 },	-- Rustling Fern [Broken Throne]
							-- TODO: It spawns an NPC cat but I missed the NPCID... 'Lost Kitten' I couldn't find it on WH...
						},
						["coords"] = {
							-- Copied various coords reported on wowhead, might not be exhaustive
							-- Put confirmed if you confirm them directly
							-- Daggerspine
							{ 35.1, 44.5, DAGGERSPINE_POINT },
							{ 41.8, 49.7, DAGGERSPINE_POINT },
							{ 42.0, 80.0, DAGGERSPINE_POINT },
							{ 43.0, 49.7, DAGGERSPINE_POINT },
							{ 43.3, 58.0, DAGGERSPINE_POINT },
							{ 55.0, 79.3, DAGGERSPINE_POINT },
							{ 63.6, 65.6, DAGGERSPINE_POINT },
							{ 66.4, 52.5, DAGGERSPINE_POINT },
							{ 66.6, 37.1, DAGGERSPINE_POINT },
							{ 68.5, 37.6, DAGGERSPINE_POINT },
							-- Broken Throne
							{ 39.0, 45.0, BROKEN_THRONE },
							{ 40.9, 67.6, BROKEN_THRONE },	-- confirmed
							{ 42.0, 45.0, BROKEN_THRONE },
							{ 43.1, 44.9, BROKEN_THRONE },	-- confirmed
							{ 48.1, 83.1, BROKEN_THRONE },
							{ 48.5, 77.1, BROKEN_THRONE },	-- confirmed
							{ 51.5, 44.9, BROKEN_THRONE },
							{ 51.6, 36.4, BROKEN_THRONE },
							{ 52.9, 83.4, BROKEN_THRONE },
							{ 54.3, 45.0, BROKEN_THRONE },
							{ 54.3, 72.6, BROKEN_THRONE },	-- confirmed
							{ 58.2, 79.4, BROKEN_THRONE },	-- confirmed
							{ 58.5, 49.6, BROKEN_THRONE },
							-- { 60.10, 66.10, BROKEN_THRONE },	-- sus, middle of a path
						},
						["groups"] = { i(270063), },	-- Void-Touched Lynx Kitten (PET!)
					}),
					o(645184, {	-- Sculpted Treasure
						["coords"] = {
							{ 47.7, 66.5, BROKEN_THRONE },
							{ 63.9, 34.5, DAGGERSPINE_POINT },
						},
						["groups"] = { i(271430) },	-- Sculpted Treasure (QS!/QI!)
					}),
					o(644396, {	-- Tainted Bone Pile
						["coords"] = {
							{ 66.6, 63.7, DAGGERSPINE_POINT },	-- The only location
						},
						["groups"] = { i(270562) },	-- Tainted Sample (QS!/QI!)
					}),
				}),
				n(ZONE_DROPS, {
					i(DARK_PARTICLE),
				}),
			}),
		}),
	}),
}));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.MID, {
	n(RITUAL_SITES, {
		["timeline"] = { ADDED_12_0_5 },
		["groups"] = {
			n(QUESTS, {
				-- Daggerspine Point
				q(95823),	-- after looting chest (Lady Selen'vjar Ritual Chest) in the end first time (of day or week)
				q(95824),	-- after looting chest (Lady Selen'vjar Ritual Chest) in the end second time (of day or week)
				q(96146),	-- Dark Obelisk @ 66.3, 38.9, DAGGERSPINE_POINT
				q(96147),	-- Dark Obelisk @ 64.7, 50.0, DAGGERSPINE_POINT
				q(96148),	-- Dark Obelisk @ 61.9, 62.1, DAGGERSPINE_POINT
				q(96149),	-- Dark Obelisk @ 63.8, 70.5, DAGGERSPINE_POINT
				q(96150),	-- Dark Obelisk @ 39.5, 76.2, DAGGERSPINE_POINT
				q(96151),	-- Dark Obelisk @ 35.0, 63.8, DAGGERSPINE_POINT
				q(96152),	-- Dark Obelisk @ 50.4, 42.8, DAGGERSPINE_POINT
				q(96153),	-- Dark Obelisk @ 44.8, 47.4, DAGGERSPINE_POINT
				q(96154),	-- Dark Obelisk @ 42.5, 57.0, DAGGERSPINE_POINT
			}),
		},
	}),
}));
