-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------

local FIELD_ACCOLADE = 3405;
local DARK_PARTICLE = 267051;

root(ROOTS.ExpansionFeatures, expansion(EXPANSION.MID, {
	["groups"] = sharedData({
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
					ach(62941, {	-- Pinnacle Ritual Work
						["timeline"] = { ADDED_12_0_7 },
						["groups"] = { title(771) },	-- Ritual Breaker <Name>
					}),
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
						i(271977, { ["timeline"] = { ADDED_12_0_7 } }),	-- Ritual Spoils (Tier 6)
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
					q(96728, {	-- Ritual Site Studies: Week 1 of 3
						["qgs"] = {
							257416, -- Lady Darkglen
							267813, -- Image of Lady Darkglen
						},
						["timeline"] = { ADDED_12_0_7 },
						["coords"] = {
							{ 29.5, 77.9, MAP.MIDNIGHT.ZULAMAN },
							{ 37.5, 65.1, MAP.MIDNIGHT.EVERSONG_WOODS },
							{ 47.7, 49.6, MAP.MIDNIGHT.SILVERMOON_CITY },
						},
					}),
					q(96729, {	-- Ritual Site Studies: Week 2 of 3
						["sourceQuest"] = 96728,	-- Ritual Site Studies: Week 1 of 3
						["qgs"] = {
							257416, -- Lady Darkglen
							267813, -- Image of Lady Darkglen
						},
						["timeline"] = { ADDED_12_0_7 },
						["coords"] = {
							{ 29.5, 77.9, MAP.MIDNIGHT.ZULAMAN },
							{ 37.5, 65.1, MAP.MIDNIGHT.EVERSONG_WOODS },
							{ 47.7, 49.6, MAP.MIDNIGHT.SILVERMOON_CITY },
						},
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
