-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------
root(ROOTS.ExpansionFeatures, expansion(EXPANSION.DF, bubbleDown({ ["timeline"] = { ADDED_10_0_2_LAUNCH } }, {
	n(VALDRAKKEN_ACCORD, {
		n(RENOWN, {
			n(QUESTS, bubbleDownRep(FACTION_VALDRAKKEN_ACCORD, {
				{		-- RENOWN 1 --
					q(72406, {	-- Orientation: Valdrakken
						["provider"] = { "n", 193015 },	-- Unatos
						["coord"] = { 58.1, 35.2, VALDRAKKEN },
					}),
				}, {	-- RENOWN 2 --
					q(70839, {	-- The Search for Titan Relics
						["provider"] = { "n", 195768 },	-- Sorotis
						["coord"] = { 26, 40, VALDRAKKEN },
						["g"] = {
							sp(388303),	-- Titan Relics
						},
					}),
					q(72282, {	-- Renown Supplies
						["provider"] = { "n", 193015 },	-- Unatos
						["coord"] = { 58.1, 35.2, VALDRAKKEN },
						["timeline"] = { REMOVED_11_0_0 },
						["g"] = {
							i(198868),	-- Small Valdrakken Accord Supply Pack
						},
					}),
					------ BoP Titan Relic ------
					q(70840, {	-- A Titan Relic
						["provider"] = { "n", 195768 },	-- Sorotis
						["coord"] = { 26, 40, VALDRAKKEN },
						["maxReputation"] = { FACTION_VALDRAKKEN_ACCORD, 30 },
						["cost"] = { { "i", 199906, 1 }, },	-- 1x Titan Relic
						["repeatable"] = true,
					}),
					q(70841, {	-- More Titan Relics
						["provider"] = { "n", 195768 },	-- Sorotis
						["coord"] = { 26, 40, VALDRAKKEN },
						["maxReputation"] = { FACTION_VALDRAKKEN_ACCORD, 30 },
						["cost"] = { { "i", 199906, 5 }, },	-- 5x Titan Relic
						["repeatable"] = true,
					}),
					------ BoA Titan Relic ------
					q(71042, {	-- A Titan Relic
						["provider"] = { "n", 195768 },	-- Sorotis
						["coord"] = { 26, 40, VALDRAKKEN },
						["maxReputation"] = { FACTION_VALDRAKKEN_ACCORD, 30 },
						["cost"] = { { "i", 200450, 1 }, },	-- 1x Titan Relic
						["repeatable"] = true,
					}),
					q(71043, {	-- More Titan Relics
						["provider"] = { "n", 195768 },	-- Sorotis
						["coord"] = { 26, 40, VALDRAKKEN },
						["maxReputation"] = { FACTION_VALDRAKKEN_ACCORD, 30 },
						["cost"] = { { "i", 200450, 5 }, },	-- 5x Titan Relic
						["repeatable"] = true,
					}),
				}, {	-- RENOWN 3 --
					q(70880, {	-- To Cook With Finery
						["provider"] = { "n", 185556 },	-- Erugosa
						["coord"] = { 46.5, 46.2, VALDRAKKEN },
						["g"] = {
							i(199648),	-- Dragon Dinner Fork
							i(200750),	-- Dragon Dinner Knife
							i(199649),	-- Dragon Tea Set (TOY!)
							i(200753),	-- Simple Gold Dragon Goblet
							i(200751),	-- Simple Silver Dragon Goblet
						},
					}),
					q(72669, {	-- Renown Supplies
						["provider"] = { "n", 193015 },	-- Unatos
						["coord"] = { 58.1, 35.2, VALDRAKKEN },
						["timeline"] = { REMOVED_11_0_0 },
						["g"] = {
							i(198868),	-- Small Valdrakken Accord Supply Pack
						},
					}),
				}, {	-- RENOWN 4 --
					q(70882, {	-- Renown Supplies
						["provider"] = { "n", 193015 },	-- Unatos
						["coord"] = { 58.1, 35.2, VALDRAKKEN },
						--["timeline"] = { REMOVED_11_0_0 },	-- This one was not removed probably
						["g"] = {
							i(198868, {	-- Small Valdrakken Accord Supply Pack
								["timeline"] = { ADDED_10_0_2_LAUNCH, REMOVED_11_0_0 },
							}),
							i(215359, {	-- Very Large Valdrakken Accord Supply Pack
								["timeline"] = { ADDED_11_0_0 },
							}),
						},
					}),
				}, {	-- RENOWN 5 --
					q(71210, {	-- To Dragonbane Keep!
						["description"] = "Spawns Anywhere on Dragon Isles.",
						["provider"] = { "n", 197478 },	-- Herald Flaps
						["maps"] = { THE_WAKING_SHORES, OHNAHRAN_PLAINS, THE_AZURE_SPAN, THALDRASZUS, VALDRAKKEN },
					}),
					q(72671, {	-- Renown Supplies
						["provider"] = { "n", 193015 },	-- Unatos
						["coord"] = { 58.1, 35.2, VALDRAKKEN },
						["timeline"] = { REMOVED_11_0_0 },
						["g"] = {
							i(198868),	-- Small Valdrakken Accord Supply Pack
						},
					}),
				}, {	-- RENOWN 6 --
					q(70883, {	-- A Hand In Cultivation
						["provider"] = { "n", 193015 },	-- Unatos
						["coord"] = { 58.1, 35.2, VALDRAKKEN },
						["lockCriteria"] = {5,
							"sourceID", 182169,	-- Dragon Garden Fork
							"sourceID", 182173,	-- Dragon Garden Hand Shovel
							"sourceID", 182171,	-- Dragon Garden Hoe
							"sourceID", 182172,	-- Dragon Garden Rake
							"sourceID", 182174,	-- Dragon Garden Shovel
						},
						["g"] = {
							i(199647),	-- Dragon Garden Fork
							i(199653),	-- Dragon Garden Hand Shovel
							i(199651),	-- Dragon Garden Hoe
							i(199652),	-- Dragon Garden Rake
							i(199654),	-- Dragon Garden Shovel
						},
					}),
					q(72672, {	-- Renown Supplies
						["provider"] = { "n", 193015 },	-- Unatos
						["coord"] = { 58.1, 35.2, VALDRAKKEN },
						["timeline"] = { REMOVED_11_0_0 },
						["g"] = {
							i(198868),	-- Small Valdrakken Accord Supply Pack
						},
					}),
				}, {	-- RENOWN 7 --
					q(71227, {	-- Aerial Challenges
						["description"] = "Spawns Anywhere on Dragon Isles.",
						["provider"] = { "n", 197478 },	-- Herald Flaps
						["maps"] = { THE_WAKING_SHORES, OHNAHRAN_PLAINS, THE_AZURE_SPAN, THALDRASZUS, VALDRAKKEN },
					}),
					q(72673, {	-- Renown Supplies
						["provider"] = { "n", 193015 },	-- Unatos
						["coord"] = { 58.1, 35.2, VALDRAKKEN },
						["timeline"] = { REMOVED_11_0_0 },
						["g"] = {
							i(198868),	-- Small Valdrakken Accord Supply Pack
						},
					}),
				}, {	-- RENOWN 8 --
					q(70885, {	-- Renown Supplies
						["provider"] = { "n", 193015 },	-- Unatos
						["coord"] = { 58.1, 35.2, VALDRAKKEN },
						--["timeline"] = { REMOVED_11_0_0 },	-- This one was not removed probably
						["g"] = {
							i(198868, {	-- Small Valdrakken Accord Supply Pack
								["timeline"] = { ADDED_10_0_2_LAUNCH, REMOVED_11_0_0 },
							}),
							i(215359, {	-- Very Large Valdrakken Accord Supply Pack
								["timeline"] = { ADDED_11_0_0 },
							}),
						},
					}),
				}, {	-- RENOWN 9 --
					q(70887, {	-- Feeling Freedom
						["provider"] = { "n", 185561 },	-- Kaestrasz
						["coord"] = { 46.8, 78.8, VALDRAKKEN },
						["lockCriteria"] = {4,
							"questID", 69215,	-- Cliffside Wylderdrake: Dark Skin Variation (MM!)
							"questID", 69203,	-- Cliffside Wylderdrake: Plated Brow (MM!)
							"questID", 69172,	-- Cliffside Wylderdrake: Spiked Cheek (MM!)
							"questID", 69177,	-- Cliffside Wylderdrake: Split Head Horns (MM!)
						},
						["g"] = {
							i(197015, {	-- Cliffside Wylderdrake: Dark Skin Variation (MM!)
								["timeline"] = { ADDED_10_0_7 },
							}),
							i(196972),	-- Cliffside Wylderdrake: Plated Brow (MM!)
							i(197003),	-- Cliffside Wylderdrake: Spiked Cheek (MM!)
							i(196977),	-- Cliffside Wylderdrake: Split Head Horns (MM!)
						},
					}),
					q(72682, {	-- Renown Supplies
						["provider"] = { "n", 193015 },	-- Unatos
						["coord"] = { 58.1, 35.2, VALDRAKKEN },
						["timeline"] = { REMOVED_11_0_0 },
						["g"] = {
							i(198868),	-- Small Valdrakken Accord Supply Pack
						},
					}),
				}, {	-- RENOWN 10 --
					q(70888, {	-- Rubbing Shoulders With The Best
						["provider"] = { "n", 195770 },	-- Armorsmith Terisk
						["coord"] = { 36.0, 49.7, VALDRAKKEN },
						["g"] = {
							i(199655),	-- Black Dragonspawn Shoulderpads
							i(199656),	-- Blue Dragonspawn Shoulderpads
							i(199657),	-- Bronze Dragonspawn Shoulderpads
							i(199658),	-- Green Dragonspawn Shoulderpads
							i(199659),	-- Red Dragonspawn Shoulderpads
						},
					}),
					q(72685, {	-- Renown Supplies
						["provider"] = { "n", 193015 },	-- Unatos
						["coord"] = { 58.1, 35.2, VALDRAKKEN },
						["timeline"] = { REMOVED_11_0_0 },
						["g"] = {
							i(198868),	-- Small Valdrakken Accord Supply Pack
						},
					}),
				}, {	-- RENOWN 11 --
					q(72687, {	-- Renown Supplies
						["provider"] = { "n", 193015 },	-- Unatos
						["coord"] = { 58.1, 35.2, VALDRAKKEN },
						["DisablePartySync"] = true,
						-- technically not accurate, but no other way to lock this properly for first character
						["lockCriteria"] = { 1, "questID", 72688 },	-- Renown Supplies [Renown 12]
						["timeline"] = { REMOVED_11_0_0 },
						["g"] = {
							i(198868),	-- Small Valdrakken Accord Supply Pack
						},
					}),
				}, {	-- RENOWN 12 --
					q(68794, {	-- Ally of Dragons
						["description"] = "Spawns Anywhere on Dragon Isles.",
						["provider"] = { "n", 197478 },	-- Herald Flaps
						["maps"] = { THE_WAKING_SHORES, OHNAHRAN_PLAINS, THE_AZURE_SPAN, THALDRASZUS, VALDRAKKEN },
					}),
					header(HEADERS.Quest, 67074, {	-- The Gift of Silver
						["icon"] = 134319,
						["g"] = {
							q(67074, {	-- The Gift of Silver
								["sourceQuests"] = { 68794 },	-- Ally of Dragons
								["provider"] = { "n", 187678 },	-- Alexstrasza the Life-Binder
								["coord"] = { 58.5, 35.7, VALDRAKKEN },
								["g"] = {
									i(197845),	-- Silver Scale (QI!)
								},
							}),
							q(70703, {	-- The Legacy of Tyrhold
								["sourceQuests"] = { 67074 },	-- The Gift of Silver
								["provider"] = { "n", 187678 },	-- Alexstrasza the Life-Binder
								["coord"] = { 58.5, 35.7, VALDRAKKEN },
								["g"] = {
									i(197845),	-- Silver Scale (QI!)
								},
							}),
							q(67075, {	-- The Magic Within
								["sourceQuests"] = { 70703 },	-- The Legacy of Tyrhold
								["provider"] = { "n", 192480 },	-- Watcher Koranos
								["coord"] = { 58.2, 58.8, THALDRASZUS },
								["g"] = {
									i(198355),	-- Tyrhold Conduit
								}
							}),
							q(67076, {	-- A Spark of Discovery
								["sourceQuests"] = { 67075 },	-- The Magic Within
								["provider"] = { "n", 192480 },	-- Watcher Koranos
								["coord"] = { 58.2, 58.8, THALDRASZUS },
							}),
							q(67077, {	-- Memories of the Past
								["sourceQuests"] = { 67076 },	-- A Spark of Discovery
								["provider"] = { "n", 192573 },	-- Alexstrasza the Life-Binder
								["coord"] = { 62.1, 59.3, THALDRASZUS },
							}),
							q(67078, {	-- Parting Instructions
								["sourceQuests"] = { 67077 },	-- Memories of the Past
								["provider"] = { "n", 192496 },	-- Keeper Tyr
								["coord"] = { 62.2, 59.2, THALDRASZUS },
							}),
							q(67079, {	-- Hard Lock Life
								["sourceQuests"] = { 67078 },	-- Parting Instructions
								["provider"] = { "n", 192480 },	-- Watcher Karanos
								["coord"] = { 60.4, 58.9, THALDRASZUS },
								["g"] = {
									i(197862),	-- Primary Security Disc (QI!)
									i(197863),	-- Secondary Security Disc (QI!)
									i(198355),	-- Tyrhold Conduit (QI!)
								}
							}),
							q(67081, {	-- Halls of Infusion: An Infusion of Materials
								["sourceQuests"] = { 67079 },	-- Hard Lock Life
								["provider"] = { "n", 192496 },	-- Keeper Tyr
								["coord"] = { 60.5, 58.6, THALDRASZUS },
								["maps"] = { 2082, 2083 },	-- Halls of Infusion
								["g"] = {
									i(198038),	-- Ancient Titansteel Ingot (QI!)
								},
							}),
							q(67084, {	-- The Silver Purpose
								["sourceQuests"] = { 67081 },	-- An Infusion of Materials
								["provider"] = { "n", 192496 },	-- Keeper Tyr
								["coord"] = { 60.5, 58.6, THALDRASZUS },
								["g"] = {
									i(201781),	-- Memory of Tyr
								},
							}),
						},
					}),
					header(HEADERS.Quest, 72440, bubbleDownSelf({ ["timeline"] = { ADDED_10_1_0 } }, {	-- Silver Mettle
						["icon"] = 4638415,
						["g"] = {
							q(72440, {	-- Silver Mettle
								["sourceQuests"] = { 67084 },	-- The Silver Purpose
								["provider"] = { "n", 198941 },	-- Nozdormu
								["coord"] = { 60.4, 58.8, THALDRASZUS },
							}),
							q(72441, {	-- Breaching the Tomb
								["sourceQuests"] = { 72440 },	-- Silver Mettle
								["provider"] = { "n", 198947 },	-- Travard
								["coord"] = { 39.2, 41.2, 20 },	-- Keeper's Rest
							}),
							q(72442, {	-- The Remains of Tyr
								["sourceQuests"] = { 72441 },	-- Breaching the Tomb
								["provider"] = { "n", 199114 },	-- Watcher Koranos
								["coord"] = { 38.0, 54.9, 20 },	-- Keeper's Rest
							}),
							q(72526, {	-- Keeper's Rest
								["sourceQuests"] = { 72442 },	-- The Remains of Tyr
								["provider"] = { "n", 199114 },	-- Watcher Koranos
								["coord"] = { 38.0, 54.9, 20 },	-- Keeper's Rest
							}),
							q(72443, {	-- Tyr's Fall
								["sourceQuests"] = { 72526 },	-- Keeper's Rest
								["provider"] = { "n", 200078 },	-- Watcher Koranos
								["coord"] = { 42.1, 85.7, 20 },	-- Keeper's Rest
								["maps"] = 2146,	-- The Eastern Glades
								["g"] = {
									i(204474),	-- Silver Scale (QI!)
								},
							}),
							q(72444, {	-- A Sliver of Silver
								["sourceQuests"] = { 72443 },	-- Tyr's Fall
								["provider"] = { "n", 200078 },	-- Watcher Koranos
								["coord"] = { 42.1, 85.7, 20 },	-- Keeper's Rest
								["g"] = {
									i(204686),	-- Titan Containment Device (TOY!)
								},
							}),
						},
					})),
					header(HEADERS.Quest, 75632, bubbleDownSelf({ ["timeline"] = { ADDED_10_1_7 } }, {	-- A Dislocated Disc
						["icon"] = 5172995,
						["g"] = {
							q(75632, {	-- A Dislocated Disc
								["sourceQuests"] = { 72444 },	-- A Sliver of Silver
								["provider"] = { "n", 187669 },	-- Nozdormu
								["coord"] = { 61.4, 39.1, VALDRAKKEN },
							}),
							q(75633, {	-- We Have the Technology
								["sourceQuests"] = { 75632 },	-- A Dislocated Disc
								["provider"] = { "n", 204574 },	-- Etenrus
								["coord"] = { 60.4, 58.9, THALDRASZUS },
							}),
							q(75634, {	-- Reforging the Tyr`s Guard
								["sourceQuests"] = { 75633 },	-- We Have the Technology
								["provider"] = { "n", 204577 },	-- Travard
								["coord"] = { 60.4, 58.9, THALDRASZUS },
							}),
							q(76171, {	-- Walking the Path of Tyr
								["sourceQuests"] = { 75634 },	-- Reforging the Tyr`s Guard
								["provider"] = { "n", 206221 },	-- Travard
								["coord"] = { 17.5, 31.5, THE_AZURE_SPAN },
								["g"] = {
									i(208198),	-- Tyr's Guard Bulwark
									i(206476),	-- Tyr's Guard Equipment (QI!)
								},
							}),
							q(75950, {	-- An Exemplar of Order: Hadwin
								["sourceQuests"] = { 76171 },	-- Walking the Path of Tyr
								["provider"] = { "n", 204590 },	-- Hadwin
								["coord"] = { 17.6, 31.4, THE_AZURE_SPAN },
							}),
							q(75952, {	-- An Exemplar of Order: Nolaki
								["sourceQuests"] = { 76171 },	-- Walking the Path of Tyr
								["provider"] = { "n", 204592 },	-- Nolaki
								["coord"] = { 17.5, 31.4, THE_AZURE_SPAN },
							}),
							q(75951, {	-- An Exemplar of Order: Talthis
								["sourceQuests"] = { 76171 },	-- Walking the Path of Tyr
								["provider"] = { "n", 204593 },	-- Talthis
								["coord"] = { 17.5, 31.4, THE_AZURE_SPAN },
								["g"] = {
									i(206204),	-- Recovered Tuskarr Relic (QI!)
								},
							}),
							q(75953, {	-- An Exemplar of Order: Valunei
								["sourceQuests"] = { 76171 },	-- Walking the Path of Tyr
								["provider"] = { "n", 204591 },	-- Valunei
								["coord"] = { 17.6, 31.3, THE_AZURE_SPAN },
							}),
							q(75635, {	-- For Tyr!
								["sourceQuests"] = {
									75950,	-- An Exemplar of Order: Hadwin
									75952,	-- An Exemplar of Order: Nolaki
									75951,	-- An Exemplar of Order: Talthis
									75953,	-- An Exemplar of Order: Valunei
								},
								["provider"] = { "n", 206221 },	-- Travard
								["coord"] = { 17.6, 31.5, THE_AZURE_SPAN },
							}),
							q(76176, {	-- First Steps
								["sourceQuests"] = { 75635 },	-- For Tyr!
								["provider"] = { "n", 208968 },	-- Travard
								["coord"] = { 59.9, 58.7, THALDRASZUS },
							}),
							q(75636, {	-- Tyrangulation
								["sourceQuests"] = { 76176 },	-- First Steps
								["provider"] = { "n", 204667 },	-- Etenrus
								["coord"] = { 60.3, 58.8, THALDRASZUS },
								["maps"] = { THE_STORM_PEAKS },
							}),
							q(75637, {	-- The Final Beacon
								["sourceQuests"] = { 75636 },	-- Tyrangulation
								["provider"] = { "n", 206682 },	-- Travard
								["coord"] = { 60.3, 58.7, THALDRASZUS },
								["maps"] = { 2228 },	-- The Black Empire
							}),
							q(75638, {	-- Dislocated Disc Located
								["sourceQuests"] = { 75637 },	-- The Final Beacon
								["provider"] = { "n", 204605 },	-- Travard
								["coord"] = { 60.4, 58.9, THALDRASZUS },
								["g"] = {
									i(208200),	-- Dragon Isles Drakes: Gilded Armor (MM!)
								},
							}),
						},
					})),
					header(HEADERS.Quest, 77339, bubbleDownSelf({ ["timeline"] = { ADDED_10_2_0 } }, {	-- Data Recovery
						["icon"] = 5245774,
						["groups"] = {
							q(77339, {	-- Data Recovery
								["sourceQuests"] = { 75638 },	-- Dislocated Disc Located
								["provider"] = { "n", 208703 },	-- Valunei
								["coord"] = { 53.8, 61, VALDRAKKEN },
							}),
							q(77377, {	-- To Tyrhold! For Tyr!
								["sourceQuests"] = { 77339 },	-- Data Recovery
								["provider"] = { "n", 208701 },	-- Travard
								["coord"] = { 60.6, 63.6, THALDRASZUS },
							}),
							q(77340, {	-- Infiltrating the Nighthold
								["sourceQuests"] = { 77377 },	-- To Tyrhold! For Tyr!
								["provider"] = { "n", 208832 },	-- Eternus
								["coord"] = { 60.4, 59, THALDRASZUS },
								["maps"] = {
										2221,	-- The Nighthold (Scenario)
										2220,	-- The Nighthold (Scenario)
									},
								["groups"] = {
									o(410786, {	-- Alydrus' Research Notes
										["questID"] = 78395,
										["lockCriteria"] = {1,"questID",77340},	-- Infiltrating the Nighthold
										["groups"] = {
											i(210255),	-- Alydrus' Research Notes
										},
									}),
								},
							}),
							q(77342, {	-- Disc Delivery
								["sourceQuests"] = { 77340 },	-- Infiltrating the Nighthold'
								["provider"] = { "n", 208834 },	-- Nozdormu
								["coord"] = { 60.4, 58.7, THALDRASZUS },
								["groups"] = {
									i(208798),	-- Recorded Memories of Tyr's Guard (TOY!)
								},
							}),
							q(77343, {	-- A Tyrful Reunion
								["sourceQuests"] = { 77342 },	-- Disc Delivery
								["provider"] = { "n", 208833 },	-- Alexstrasza the Life-Binder
								["coord"] = { 60.4, 58.6, THALDRASZUS },
							}),
							q(77344, {	-- Time to Process
								["sourceQuests"] = { 77343 },	-- A Tyrful Reunion
								["provider"] = { "n", 208800 },	-- Travard
								["coord"] = { 60.4, 58.7, THALDRASZUS },
								["groups"] = {
									i(208550),	-- Dragon Isles Drakes: White Scales (MM!)
									ach(18958, {	-- Of the Tyr's Guard
										title(516),	-- <Name> Of the Tyr's Guard
									}),
									n(MAILBOX, {
										i(208826),	-- Letter from Valunei (QI!)
									}),
								},
							}),
							q(77341, {	-- Logotyrapy
								["sourceQuests"] = { 77344 }, -- Time to Process
								["provider"] = { "i", 208826 },	-- Letter from Valunei (QI!)
								["maps"] = { THALDRASZUS },
								["groups"] = {
									i(208199),	-- Tabard of the Tyr's Guard
								},
							}),
						},
					})),
					q(72688, {	-- Renown Supplies
						["provider"] = { "n", 193015 },	-- Unatos
						["coord"] = { 58.1, 35.2, VALDRAKKEN },
						--["timeline"] = { REMOVED_11_0_0 },	-- This one was not removed probably
						["g"] = {
							i(198868),	-- Small Valdrakken Accord Supply Pack
						},
					}),
				}, {	-- RENOWN 13 --
					q(70903, {	-- Wielding Titanic Might
						["provider"] = { "n", 195768 },	-- Sorotis
						["coord"] = { 26.1, 40.0, VALDRAKKEN },
						["g"] = {
							i(199774),	-- Ancient Titan Blunderbus
							i(199772),	-- Titan Gatekeeper's Shield
							i(199776),	-- Titan Watcher's Broadsword
							i(199775),	-- Titan Watcher's Gladius
							i(199773),	-- Titan Watcher's Scepter
						},
					}),
					q(72694, {	-- Renown Supplies
						["provider"] = { "n", 193015 },	-- Unatos
						["coord"] = { 58.1, 35.2, VALDRAKKEN },
						["timeline"] = { REMOVED_11_0_0 },
						["g"] = {
							i(198869),	-- Large Valdrakken Accord Supply Pack
						},
					}),
				}, {	-- RENOWN 14 --
					q(70892, {	-- Crafting Your Start
						["provider"] = { "n", 191000 },	-- Dothenos
						["coord"] = { 36.4, 62.9, VALDRAKKEN },
						["requireSkill"] = ALCHEMY,
						["g"] = {
							i(201706),	-- Notebook of Crafting Knowledge
						},
					}),
					q(72329, {	-- Crafting Your Start
						["provider"] = { "n", 191000 },	-- Dothenos
						["coord"] = { 36.4, 62.9, VALDRAKKEN },
						["requireSkill"] = BLACKSMITHING,
						["g"] = {
							i(201708),	-- Notebook of Crafting Knowledge
						},
					}),
					q(72330, {	-- Crafting Your Start
						["provider"] = { "n", 191000 },	-- Dothenos
						["coord"] = { 36.4, 62.9, VALDRAKKEN },
						["requireSkill"] = ENGINEERING,
						["g"] = {
							i(201710),	-- Notebook of Crafting Knowledge
						},
					}),
					q(72331, {	-- Crafting Your Start
						["provider"] = { "n", 191000 },	-- Dothenos
						["coord"] = { 36.4, 62.9, VALDRAKKEN },
						["requireSkill"] = INSCRIPTION,
						["g"] = {
							i(201711),	-- Notebook of Crafting Knowledge
						},
					}),
					q(72332, {	-- Crafting Your Start
						["provider"] = { "n", 191000 },	-- Dothenos
						["coord"] = { 36.4, 62.9, VALDRAKKEN },
						["requireSkill"] = MINING,
						["g"] = {
							i(201700),	-- Notebook of Crafting Knowledge
						},
					}),
					q(72333, {	-- Crafting Your Start
						["provider"] = { "n", 191000 },	-- Dothenos
						["coord"] = { 36.4, 62.9, VALDRAKKEN },
						["requireSkill"] = TAILORING,
						["g"] = {
							i(201715),	-- Notebook of Crafting Knowledge
						},
					}),
					q(72690, {	-- Renown Supplies
						["provider"] = { "n", 193015 },	-- Unatos
						["coord"] = { 58.1, 35.2, VALDRAKKEN },
						--["timeline"] = { REMOVED_11_0_0 },	-- This one was not removed probably
						["g"] = {
							i(198868, {	-- Small Valdrakken Accord Supply Pack
								["timeline"] = { ADDED_10_0_2_LAUNCH, REMOVED_11_0_0 },
							}),
							i(215359, {	-- Very Large Valdrakken Accord Supply Pack
								["timeline"] = { ADDED_11_0_0 },
							}),
						},
					}),
				}, {	-- RENOWN 15 --
					q(70895, {	-- Soaring in Style
						["provider"] = { "n", 185561 },	-- Kaestrasz
						["coord"] = { 46.8, 78.8, VALDRAKKEN },
						["g"] = {
							i(196974, {	-- Cliffside Wylderdrake: Four-Horned Chin (MM!)
								["timeline"] = { ADDED_10_0_7 },
							}),
							i(196998),	-- Cliffside Wylderdrake: Hook Horns (MM!)
							i(197009),	-- Cliffside Wylderdrake: Scaled Pattern (MM!)
							i(197020),	-- Cliffside Wylderdrake: Spear Tail (MM!)
							i(197004, {	-- Cliffside Wylderdrake: Spiked Legs (MM!)
								["timeline"] = { ADDED_10_0_7 },
							}),
							i(196989),	-- Cliffside Wylderdrake: White Hair (MM!)
						},
					}),
					q(72283, {	-- Renown Supplies
						["provider"] = { "n", 193015 },	-- Unatos
						["coord"] = { 58.1, 35.2, VALDRAKKEN },
						["timeline"] = { REMOVED_11_0_0 },
						["g"] = {
							i(198869),	-- Large Valdrakken Accord Supply Pack
						},
					}),
				}, {	-- RENOWN 16 --
					q(70896, {	-- Waist Not, Want Not
						["provider"] = { "n", 193659 },	-- Provisioner Thom
						["coord"] = { 36.5, 50.6, VALDRAKKEN },
					}),
				}, {	-- RENOWN 17 --
					q(70897, {	-- A Coming of Age
						["provider"] = { "n", 195770 },	-- Armorsmith Terisk
						["coord"] = { 36.0, 49.7, VALDRAKKEN },
						["g"] = {
							i(199682),	-- Bronze Drakonid Helmet
							i(199681),	-- Cobalt Drakonid Helmet
							i(199684),	-- Crimson Drakonid Helmet
							i(199680),	-- Obsidian Drakonid Helmet
							i(199683),	-- Verdant Drakonid Helmet
						},
					}),
					q(72691, {	-- Renown Supplies
						["provider"] = { "n", 193015 },	-- Unatos
						["coord"] = { 58.1, 35.2, VALDRAKKEN },
						["timeline"] = { REMOVED_11_0_0 },
						["g"] = {
							i(198869),	-- Large Valdrakken Accord Supply Pack
						},
					}),
				}, {	-- RENOWN 18 --
					q(70901, {	-- A Collection of Creatures
						["provider"] = { "n", 189197 },	-- Groundskeeper Kama
						["coord"] = { 74.6, 63.2, VALDRAKKEN },
						["g"] = {
							i(199758),	-- Crimson Proto-Whelp (PET!)
							i(199757),	-- Magic Nibbler (PET!)
						},
					}),
					q(72692, {	-- Renown Supplies
						["provider"] = { "n", 193015 },	-- Unatos
						["coord"] = { 58.1, 35.2, VALDRAKKEN },
						["timeline"] = { REMOVED_11_0_0 },
						["g"] = {
							i(198869),	-- Large Valdrakken Accord Supply Pack
						},
					}),
				}, {	-- RENOWN 19 --
					q(66620, {	-- Emerald Summons
						["description"] = "Spawns Anywhere on Dragon Isles.",
						["provider"] = { "n", 197478 },	-- Herald Flaps
						["maps"] = { THE_WAKING_SHORES, OHNAHRAN_PLAINS, THE_AZURE_SPAN, THALDRASZUS, VALDRAKKEN },
					}),
					q(66178, {	-- A Day in the Groves
						["sourceQuests"] = { 66620 },	-- Emerald Summons
						["provider"] = { "n", 186955 },	-- Merithra
						["coord"] = { 29.7, 60.0, OHNAHRAN_PLAINS },
					}),
					q(66179, {	-- Seeds for the Future
						["sourceQuests"] = { 66178 },	-- A Day in the Groves
						["provider"] = { "n", 187525 },	-- Merithra
						["coord"] = { 33.2, 51.7, OHNAHRAN_PLAINS },
						["g"] = {
							i(192547),	-- Garden Seed (QI!)
						},
					}),
					q(66180, {	-- Wake the Ancients
						["sourceQuests"] = { 66178 },	-- A Day in the Groves
						["provider"] = { "n", 187525 },	-- Merithra
						["coord"] = { 33.2, 51.7, OHNAHRAN_PLAINS },
						["g"] = {
							i(192555),	-- Borrowed Breath
						},
					}),
					q(66182, {	-- Gerithus's Reseach
						["sourceQuests"] = {
							66179,	-- Seeds for the Future
							66180,	-- Wake the Ancients
						},
						["provider"] = { "n", 187525 },	-- Merithra
						["coord"] = { 33.2, 51.7, OHNAHRAN_PLAINS },
					}),
					q(66183, {	-- Emerald Tears
						["sourceQuests"] = { 66182 },	-- Gerithus's Reseach
						["provider"] = { "n", 189849 },	-- Gerithus
						["coord"] = { 28.4, 48.6, OHNAHRAN_PLAINS },
						["groups"] = {
							objective(1, {	-- 0/8 Emerald Tear's
								["provider"] = { "i", 192558 },	-- Emerald Tear (QI!)
							}),
						},
					}),
					q(66181, {	-- A Frenzied Defender
						["sourceQuests"] = { 66182 },	-- Gerithus's Reseach
						["provider"] = { "n", 189850 },	-- Rymek
						["coord"] = { 28.4, 48.7, OHNAHRAN_PLAINS },
					}),
					q(66184, {	-- Anchors to Life
						["sourceQuests"] = {
							66183,	-- Emerald Tears
							66181,	-- A Frenzied Defender
						},
						["provider"] = { "n", 189849 },	-- Gerithus
						["coord"] = { 28.3, 48.6, OHNAHRAN_PLAINS },
					}),
					q(66393, {	-- To Somnikus
						["sourceQuests"] = { 66184 },	-- Anchors to Life
						["provider"] = { "n", 187509 },	-- Merithra
						["coord"] = { 28.3, 48.6, OHNAHRAN_PLAINS },
					}),
					q(66395, {	-- The Chittering Rocks
						["sourceQuests"] = { 66393 },	-- To Somnikus
						["provider"] = { "n", 186469 },	-- Somnikus
						["coord"] = { 21.9, 50.9, OHNAHRAN_PLAINS },
					}),
					q(66396, {	-- Guarded Appreciation
						["sourceQuests"] = { 66393 },	-- To Somnikus
						["provider"] = { "n", 189857 },	-- Rymek
						["coord"] = { 22.0, 50.8, OHNAHRAN_PLAINS },
						["g"] = {
							i(192744),	-- Rymek's Gift
						},
					}),
					q(66190, {	-- So Close
						["sourceQuests"] = {
							66395,	-- The Chittering Rocks
							66396,	-- Guarded Appreciation
						},
						["provider"] = { "n", 189857 },	-- Rymek
						["coord"] = { 22.0, 50.8, OHNAHRAN_PLAINS },
					}),
					q(66191, {	-- And Yet So Far
						["sourceQuests"] = { 66190 },	-- So Close
						["provider"] = { "n", 187561 },	-- Merithra
						["coord"] = { 22.0, 49.1, OHNAHRAN_PLAINS },
					}),
					q(66392, {	-- Rallying Nature's Allies
						["sourceQuests"] = { 66191 },	-- And Yet So Far
						["provider"] = { "n", 187561 },	-- Merithra
						["coord"] = { 22.0, 49.2, OHNAHRAN_PLAINS },
					}),
					q(66185, {	-- Across the Weald
						["sourceQuests"] = { 66392 },	-- Rallying Nature's Allies
						["provider"] = { "n", 187594 },	-- Somnikus
						["coord"] = { 28.4, 57.9, OHNAHRAN_PLAINS },
					}),
					q(66186, {	-- The Price
						["sourceQuests"] = { 66185 },	-- Across the Weald
						["provider"] = { "n", 187634 },	-- Ysera
						["coord"] = { 45.8, 60.9, ARDENWEALD },
					}),
					q(66188, {	-- Storm's Rest
						["sourceQuests"] = { 66186 },	-- The Price
						["provider"] = { "n", 187636 },	-- Malfurion Stormrage
						["coord"] = { 45.8, 60.8, ARDENWEALD },
					}),
					q(66189, {	-- Step Into the Life
						["sourceQuests"] = { 66188 },	-- Storm's Rest
						["provider"] = { "n", 188348 },	-- Ysera
						["coord"] = { 45.2, 63.6, ARDENWEALD },
						["maps"] = { 2084 },	-- The Emerald Dreamway
					}),
					q(66394, {	-- Thin the Veil
						["sourceQuests"] = { 66189 },	-- Step Into the Life
						["provider"] = { "n", 187646 },	-- Ysera
						["coord"] = { 18.7, 51.8, OHNAHRAN_PLAINS },
					}),
					q(66397, {	-- Our Full Strength
						["sourceQuests"] = { 66189 },	-- Step Into the Life
						["provider"] = { "n", 187646 },	-- Ysera
						["coord"] = { 18.7, 51.8, OHNAHRAN_PLAINS },
						["g"] = {
							i(193221),	-- Volatile Frostfire (QI!)
						},
					}),
					q(66635, {	-- Reunited, Once Again
						["sourceQuests"] = {
							66394,	-- Thin the Veil
							66397,	-- Our Full Strength
						},
						["provider"] = { "n", 187646 },	-- Ysera
						["coord"] = { 18.7, 51.9, OHNAHRAN_PLAINS },
					}),
					q(66398, {	-- The Emerald Dragonflight
						["sourceQuests"] = { 66635 },	-- Reunited, Once Again
						["provider"] = { "n", 187660 },	-- Merithra
						["coord"] = { 18.8, 51.1, OHNAHRAN_PLAINS },
					}),
					q(66399, {	-- We'll Cross the Bridge
						["sourceQuests"] = { 66398 },	-- The Emerald Dragonflight
						["provider"] = { "n", 188787 },	-- Gerithus
						["coord"] = { 21.9, 76.0, OHNAHRAN_PLAINS },
					}),
					q(66400, {	-- Winter's Fall
						["sourceQuests"] = { 66399 },	-- We'll Cross the Bridge
						["provider"] = { "n", 188840 },	-- Somnikus
						["coord"] = { 20.8, 79.7, OHNAHRAN_PLAINS },
					}),
					q(66401, {	-- The Dreamer
						["sourceQuests"] = { 66400 },	-- Winter's Fall
						["provider"] = { "n", 188847 },	-- Merithra
						["coord"] = { 19.7, 81.6, OHNAHRAN_PLAINS },
					}),
					q(66402, {	-- Like Mother, Like Daughter
						["sourceQuests"] = { 66401 },	-- The Dreamer
						["provider"] = { "n", 188850 },	-- Ysera
						["coord"] = { 19.8, 81.6, OHNAHRAN_PLAINS },
						["g"] = {
							i(201779),	-- Merithra's Blessing
						},
					}),
					q(72693, {	-- Renown Supplies
						["provider"] = { "n", 193015 },	-- Unatos
						["coord"] = { 58.1, 35.2, VALDRAKKEN },
						--["timeline"] = { REMOVED_11_0_0 },	-- This one was not removed probably
						["g"] = {
							i(198869),	-- Large Valdrakken Accord Supply Pack
						},
					}),
				}, {	-- RENOWN 20 --
					q(70891, {	-- Fitting In
						["provider"] = { "n", 195782 },	-- Giera
						["coord"] = { 31.6, 69.3, VALDRAKKEN },
						["g"] = {
							iensemble(199754),	-- Ensemble: Azure Valdrakken Clothing
							iensemble(199753),	-- Ensemble: Black Valdrakken Clothing
							iensemble(199756),	-- Ensemble: Bronze Valdrakken Clothing
							iensemble(199752),	-- Ensemble: Crimson Valdrakken Clothing
							iensemble(199755),	-- Ensemble: Green Valdrakken Clothing
						},
					}),
					q(72689, {	-- Renown Supplies
						["provider"] = { "n", 193015 },	-- Unatos
						["coord"] = { 58.1, 35.2, VALDRAKKEN },
						["timeline"] = { REMOVED_11_0_0 },
						["g"] = {
							i(198869),	-- Large Valdrakken Accord Supply Pack
						},
					}),
				}, {	-- RENOWN 21 --
					q(70904, {	-- Variety is the Spice of Life
						["provider"] = { "n", 185561 },	-- Kaestrasz
						["coord"] = { 46.8, 78.8, VALDRAKKEN },
						["g"] = {
							i(197145),	-- Highland Drake: Bronze Scales (MM!)
							i(197391),	-- Renewed Proto-Drake: Bronze Scales (MM!)
							i(197613),	-- Windborne Velocidrake: Bronze Scales (MM!)
							i(203351, {	-- Winding Slitherdrake: Bronze Scales (MM!)
								["timeline"] = { ADDED_10_1_0 },
							}),
						},
					}),
					q(72695, {	-- Renown Supplies
						["provider"] = { "n", 193015 },	-- Unatos
						["coord"] = { 58.1, 35.2, VALDRAKKEN },
						["timeline"] = { REMOVED_11_0_0 },
						["g"] = {
							i(198869),	-- Large Valdrakken Accord Supply Pack
						},
					}),
				}, {	-- RENOWN 22 --
					q(70915, {	-- Crowning Achievement
						["provider"] = { "n", 193659 },	-- Provisioner Thom
						["coord"] = { 36.6, 50.6, VALDRAKKEN },
					}),
				}, {	-- RENOWN 23 --
					q(70905, {	-- Flying with Our Colors
						["provider"] = { "n", 193015 },	-- Unatos
						["coord"] = { 58.2, 35.6, VALDRAKKEN },
						["g"] = {
							i(198732),	-- Valdrakken Accord Tabard
						},
					}),
					q(72372, {	-- Taming the Dragon...kin
						["provider"] = { "n", 185561 },	-- Kaestrasz
						["coord"] = { 46.8, 78.8, VALDRAKKEN },
						["classes"] = { HUNTER },
						["g"] = {
							i(201791),	-- How to Train a Dragonkin (CI!)
						},
					}),
					q(72696, {	-- Renown Supplies
						["provider"] = { "n", 193015 },	-- Unatos
						["coord"] = { 58.1, 35.2, VALDRAKKEN },
						["timeline"] = { REMOVED_11_0_0 },
						["g"] = {
							i(198869),	-- Large Valdrakken Accord Supply Pack
						},
					}),
				}, {	-- RENOWN 24 --
					q(70889, {	-- Crafting for Expertise
						["provider"] = { "n", 191000 },	-- Dothenos
						["coord"] = { 36.4, 62.9, VALDRAKKEN },
						["requireSkill"] = ALCHEMY,
						["g"] = {
							i(201706),	-- Notebook of Crafting Knowledge
						},
					}),
					q(70902, {	-- Crafting for Expertise
						["provider"] = { "n", 191000 },	-- Dothenos
						["coord"] = { 36.4, 62.9, VALDRAKKEN },
						["requireSkill"] = ENGINEERING,
						["g"] = {
							i(201710),	-- Notebook of Crafting Knowledge
						},
					}),
					q(70909, {	-- Crafting for Expertise
						["provider"] = { "n", 191000 },	-- Dothenos
						["coord"] = { 36.4, 62.9, VALDRAKKEN },
						["requireSkill"] = BLACKSMITHING,
						["g"] = {
							i(201708),	-- Notebook of Crafting Knowledge
						},
					}),
					q(72334, {	-- Crafting for Expertise
						["provider"] = { "n", 191000 },	-- Dothenos
						["coord"] = { 36.4, 62.9, VALDRAKKEN },
						["requireSkill"] = INSCRIPTION,
						["g"] = {
							i(201711),	-- Notebook of Crafting Knowledge
						},
					}),
					q(72335, {	-- Crafting for Expertise
						["provider"] = { "n", 191000 },	-- Dothenos
						["coord"] = { 36.4, 62.9, VALDRAKKEN },
						["requireSkill"] = MINING,
						["g"] = {
							i(201716),	-- Notebook of Crafting Knowledge
						},
					}),
					q(72336, {	-- Crafting for Expertise
						["provider"] = { "n", 191000 },	-- Dothenos
						["coord"] = { 36.4, 62.9, VALDRAKKEN },
						["requireSkill"] = TAILORING,
						["g"] = {
							i(201715),	-- Notebook of Crafting Knowledge
						},
					}),
					q(72697, {	-- Renown Supplies
						["provider"] = { "n", 193015 },	-- Unatos
						["coord"] = { 58.1, 35.2, VALDRAKKEN },
						-- technically not accurate, but no other way to lock this properly for first character
						["lockCriteria"] = { 1, "questID", 72698 },	-- Renown Supplies [Renown 25]
						["DisablePartySync"] = true,
						["timeline"] = { REMOVED_11_0_0 },
						["g"] = {
							i(198869),	-- Large Valdrakken Accord Supply Pack
						},
					}),
				}, {	-- RENOWN 25 --
					q(70910, {	-- Mysteries in Paper and Glass
						["provider"] = { "n", 195782 },	-- Giera
						["coord"] = { 31.6, 68.8, VALDRAKKEN },
						["g"] = {
							i(199742),	-- A Mender's Mentality
							i(199744),	-- Academy Student's Journal
							i(199741),	-- Compendium of Advanced Spells
							i(199745),	-- Everflame Night Touch
							i(194320),	-- Reinforced Lavender Bottle
							i(199743),	-- Runic Symbols and their Meaning
							i(198388),	-- Swirling Draconian Concoction
							i(198389),	-- Weighted Potion Cylinder
						},
					}),
					q(72698, {	-- Renown Supplies
						["provider"] = { "n", 193015 },	-- Unatos
						["coord"] = { 58.1, 35.2, VALDRAKKEN },
						["timeline"] = { REMOVED_11_0_0 },
						["g"] = {
							i(198869),	-- Large Valdrakken Accord Supply Pack
						},
					}),
				}, {	-- RENOWN 26 --
					q(70911, {	-- Armored and ready
						["provider"] = { "n", 185561 },	-- Kaestrasz
						["coord"] = { 46.8, 78.8, VALDRAKKEN },
						["g"] = {
							i(196962),	-- Cliffside Wylderdrake: Silver and Purple Armor (MM!)
							i(197093),	-- Highland Drake: Silver and Purple Armor (MM!)
							i(197350),	-- Renewned Proto-Drake: Silver and Purple Armor (MM!)
							i(197581),	-- Windborne Velocidrake: Silver and Purple Armor (MM!)

							-- auto learns these Mount Mods
							i(196961),	-- Cliffside Wylderdrake: Armor (MM!)
							i(210471, {	-- Flourishing Whimsydrake: Body Armor (MM!)
								["timeline"] = { ADDED_10_2_7 },	-- maybe since 10.2.0?
							}),
							i(207760, {	-- Grotto Netherwing Drake: Armor (MM!)
								["timeline"] = { ADDED_10_2_7 },	-- maybe since 10.2.0?
							}),
							i(197099),	-- Highland Drake: Armor (MM!)
							i(197357),	-- Renewed Proto-Drake: Armor (MM!)
							i(197588),	-- Windborne Velocidrake: Armor (MM!)
							i(203305, {	-- Winding Slitherdrake: Armor (MM!)
								["timeline"] = { ADDED_10_1_0 },
							}),
						},
					}),
					q(72284, {	-- Renown Supplies
						["provider"] = { "n", 193015 },	-- Unatos
						["coord"] = { 58.1, 35.2, VALDRAKKEN },
						["timeline"] = { REMOVED_11_0_0 },
						["g"] = {
							i(199475),	-- Overflowing Valdrakken Accord Supply Pack
						},
					}),
				}, {	-- RENOWN 27 --
					q(70912, {	-- The Accord's High Standards
						["provider"] = { "n", 193015 },	-- Unatos
						["coord"] = { 58.1, 35.2, VALDRAKKEN },
						["g"] = {
							i(199768),	-- Black Dragon Banner (TOY!)
							i(199769),	-- Blue Dragon Banner (TOY!)
							i(199770),	-- Bronze Dragon Banner (TOY!)
							i(199771),	-- Green Dragon Banner (TOY!)
							i(199767),	-- Red Dragon Banner (TOY!)
						},
					}),
					q(72701, {	-- Renown Supplies
						["provider"] = { "n", 193015 },	-- Unatos
						["coord"] = { 58.1, 35.2, VALDRAKKEN },
						["timeline"] = { REMOVED_11_0_0 },
						["g"] = {
							i(199475),	-- Overflowing Valdrakken Accord Supply Pack
						},
					}),
				}, {	-- RENOWN 28 --
					q(70913, {	-- To Bear Our Mantle
						["provider"] = { "n", 195770 },	-- Armorsmith Terisk
						["coord"] = { 36.0, 49.7, VALDRAKKEN },
						["lockCriteria"] = { 5,
							"sourceID", 182182,	-- Amber Jeweled Shoulderpads
							"sourceID", 182181,	-- Azure Jeweled Shoulderpads
							"sourceID", 182183,	-- Emerald Jeweled Shoulderpads
							"sourceID", 182180,	-- Obsidian Jeweled Shoulderpads
							"sourceID", 182184,	-- Ruby Jeweled Shoulderpads
						},
						["g"] = {
							i(199662),	-- Amber Jeweled Shoulderpads
							i(199661),	-- Azure Jeweled Shoulderpads
							i(199663),	-- Emerald Jeweled Shoulderpads
							i(199660),	-- Obsidian Jeweled Shoulderpads
							i(199664),	-- Ruby Jeweled Shoulderpads
						},
					}),
					q(72702, {	-- Renown Supplies
						["provider"] = { "n", 193015 },	-- Unatos
						["coord"] = { 58.1, 35.2, VALDRAKKEN },
						["timeline"] = { REMOVED_11_0_0 },
						["g"] = {
							i(199475),	-- Overflowing Valdrakken Accord Supply Pack
						},
					}),
				}, {	-- RENOWN 29 --
					q(70914, {	-- The Breadth of Dragon Weaponry
						["provider"] = { "n", 195769 },	-- Weaponsmith Koref
						["coord"] = { 36.4, 51.7, VALDRAKKEN },
						["g"] = {
							i(200456),	-- Valdrakken Armor Opener
							i(199825),	-- Valdrakken Belt Knife
							i(199700),	-- Valdrakken Bladewing Decapitator
							i(199730),	-- Valdrakken Bladewing Staff
							i(199806),	-- Valdrakken Drakeclaw Barrier
							i(201796),	-- Valdrakken Drakonid's Claw
							i(199823),	-- Valdrakken Gatekeeper's Polearm
							i(199702),	-- Valdrakken Guard's Barrier
							i(201795),	-- Valdrakken Guard's Claw
							i(199734),	-- Valdrakken Guard's Cutlass
							i(199820),	-- Valdrakken Guard's Skullsplitter
							i(199705),	-- Valdrakken Guard's Spear
							i(199821),	-- Valdrakken Serrated Shortsword
							i(199726),	-- Valdrakken Spellweaver's Scepter
							i(199728),	-- Valdrakken Spellweaver's Stave
							i(199732),	-- Valdrakken Wing Glaive
							i(199707),	-- Valdrakken Wingguard Polearm
						},
					}),
					q(72703, {	-- Renown Supplies
						["provider"] = { "n", 193015 },	-- Unatos
						["coord"] = { 58.1, 35.2, VALDRAKKEN },
						["timeline"] = { REMOVED_11_0_0 },
						["g"] = {
							i(199475),	-- Overflowing Valdrakken Accord Supply Pack
						},
					}),
				}, {	-- RENOWN 30 --
					q(70916, {	-- Beknownst and Glorious
						["provider"] = { "n", 193015 },	-- Unatos
						["coord"] = { 58.2, 35.8, VALDRAKKEN },
						["g"] = {
							i(197921),		-- Primal Infusion
							spell(388978),	-- Ally of Dragons
							title(474),		-- <Name>, Ally of Dragons (TITLE!)
						},
					}),
					q(72704, {	-- Renown Supplies
						["provider"] = { "n", 193015 },	-- Unatos
						["coord"] = { 58.1, 35.2, VALDRAKKEN },
						["timeline"] = { REMOVED_11_0_0 },
						["g"] = {
							i(199475),	-- Overflowing Valdrakken Accord Supply Pack
						},
					}),
					------ PARAGON ------
					q(71023, {	-- Renowned with the Valdrakken Accord
						["repeatable"] = true,
						["g"] = {
							i(199475, {	-- Overflowing Valdrakken Accord Supply Pack
								["timeline"] = { ADDED_10_0_2_LAUNCH, REMOVED_10_0_7 },
							}),
							i(204381, {	-- Brimming Valdrakken Accord Supply Pack
								["timeline"] = { ADDED_10_0_7 },
							}),
						},
					}),
				},
			})),
		}),
		i(199906),	-- Titan Relic [BoP]
		i(200450),	-- Titan Relic [BoA]
	}),
})));
root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.DF, bubbleDown({ ["timeline"] = { ADDED_10_0_2_LAUNCH } }, {
	n(VALDRAKKEN_ACCORD, {
		n(QUESTS, {
			q(72403),	-- triggered when reaching renown 12 with Valdrakken Accord
			q(72404),	-- triggered when reaching renown 19 with Valdrakken Accord
			q(72776),	-- triggered with 'Ally of Dragons' (questID 68794) (spellID 396628)
			q(70974),	-- triggers right after 'Hard Lock Life' (questID 67079)
			q(72757),	-- triggered with 'The Silver Purpose' (questID 67084) (spellID 397082)
			q(72777),	-- triggered with 'Emerald Summons' (questID 66620) (spellID 396638)
			q(72759),	-- triggered with 'And Yet So Far' (questID 66191) (spellID 397080)
			q(72758),	-- triggered with 'Like Mother, Like Daughter' (questID 66402) (spellID 397081)
			q(72439, {	-- triggered when you accept 'Silver Mettle' (questID 72440) (spellID 412509)
				["timeline"] = { ADDED_10_1_0 },
				["repeatable"] = true,
			}),
			q(76177, {["timeline"] = {ADDED_10_1_7}}),	-- RP after finishing `Dislocated Disc Located`(questID 75638)
			q(78141, {["timeline"] = {ADDED_10_1_7}}),	-- RP after finishing `Dislocated Disc Located`(questID 75638) (for whatever reason this one pop now?)
			q(77819, {["timeline"] = {ADDED_10_2_0}}),	-- After questID 77344 Receiving Achievement?
			q(77820, {["timeline"] = {ADDED_10_2_0}}),	-- After questID 77344 Receiving Title 516?
		}),
	}),
})));