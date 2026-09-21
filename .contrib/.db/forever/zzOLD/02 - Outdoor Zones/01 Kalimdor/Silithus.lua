---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

local CENARION_COMBAT_BADGE = i(20802, {	-- Cenarion Combat Badge
});
local CENARION_LOGISTICS_BADGE = i(20800, {	-- Cenarion Logistics Badge
});
local CENARION_TACTICAL_BADGE = i(20801, {	-- Cenarion Tactical Badge
});
local FOLLOWUP_LOGISTICS_ASSIGNMENT_A = i(20805, {	-- Followup Logistics Assignment (A)
});
local FOLLOWUP_LOGISTICS_ASSIGNMENT_H = i(21386, {	-- Followup Logistics Assignment (H)
});
local FOLLOWUP_TACTICAL_ASSIGNMENT = i(21133, {	-- Followup Tactical Assignment
});
local LOGISTICS_ASSIGNMENT_A = i(21132, {	-- Logistics Assignment (A)
});
local LOGISTICS_ASSIGNMENT_H = i(21266, {	-- Logistics Assignment (H)
});
local TACTICAL_ASSIGNMENT = i(20809, {	-- Tactical Assignment
});

root(ROOTS.Zones, m(MAP.KALIMDOR, {
	m(MAP.SILITHUS, {
		["lore"] = "Silithus is a rough desert in the southwest end of Kalimdor. While Silithus today acts as the main working place of the Cenarion Circle, it was once the seat of the Aqiri Empire, known to the world as Ahn'Qiraj. Its gates were sealed off millennia ago by the Night Elves, but the silithid managed to regain some footage over Kalimdor. Today, the Cenarion Circle enlists both the Horde and the Alliance to help with their vigil.",
		["icon"] = 236829,
		["groups"] = {
			n(ACHIEVEMENTS, {
				ach(856),	-- Explore Silithus
			}),
			explorationHeader({
				exploration(3427),	-- Bronzebeard Encampment
				exploration(3425),	-- Cenarion Hold
				exploration(2742),	-- Hive'Ashi
				exploration(2744),	-- Hive'Regal
				exploration(2743),	-- Hive'Zora
				exploration(2738),	-- Southwind Village
				exploration(3426),	-- Staghelm Point
				exploration(2740),	-- The Crystal Vale
				exploration(2741),	-- The Scarab Dais
				exploration(2737),	-- The Scarab Wall
				exploration(3097),	-- The Swarming Pillar
				exploration(2739),	-- Twilight Base Camp
				exploration(3077),	-- Valor's Rest
			}),
			n(FLIGHT_PATHS, {
				fp(73, {	-- Cenarion Hold, Silithus (A)
					["cr"] = 15177,	-- Cloud Skydancer <Hippogryph Master>
					["coord"] = { 50.6, 34.4, MAP.SILITHUS },
					["races"] = ALLIANCE_ONLY,
				}),
				fp(72, {	-- Cenarion Hold, Silithus (H)
					["cr"] = 15178,	-- Runk Windtamer <Wind Rider Master>
					["coord"] = { 48.8, 36.6, MAP.SILITHUS },
					["races"] = HORDE_ONLY,
				}),
			}),
			n(PROFESSIONS, {
				prof(SKINNING, {
					i(20501, {	-- Heavy Silithid Carapace
						["crs"] = {
							11723,	-- Hive'Ashi Sandstalker
							11730,	-- Hive'Regal Ambusher
							11734,	-- Hive'Regal Hive Lord
							15323,	-- Hive'Zara Sandstalker
							11728,	-- Hive'Zora Reaver
						},
					}),
					i(20500, {	-- Light Silithid Carapace
						["crs"] = {
							13136,	-- Hive'Ashi Drone
							11698,	-- Hive'Ashi Stinger
							11724,	-- Hive'Ashi Swarmer
							11732,	-- Hive'Regal Spitfire
							11727,	-- Hive'Zora Wasp
						},
					}),
					i(20498),	-- Silithid Chitin
				}),
			}),
			n(QUESTS, {
				q(9248, {	-- A Humble Offering
					["qg"] = 15282,	-- Aurel Goldleaf
					["coord"] = { 52.0, 38.2, MAP.SILITHUS },
					["minReputation"] = { FACTION_CENARION_CIRCLE, HONORED },	-- Cenarion Circle, Honored.
					["cost"] = { { "i", 20515, 1 } },	-- Abyssal Scepter
					["lvl"] = 58,
					["groups"] = {
						i(22725),	-- Band of Cenarius
					},
				}),
				q(8287, {	-- A Terrible Purpose
					["sourceQuest"] = 8279,	-- The Twilight Lexicon
					["providers"] = {
						{ "n", 15194 },	-- Hermit Ortell
						{ "i", 20405 },	-- Decoded Tablet Transcription
					},
					["coord"] = { 67.0, 69.6, MAP.SILITHUS },
					["lvl"] = 40,
					["groups"] = {
						i(20645, {	-- Nature's Whisper
							["description"] =
								"This is a reward that is mailed to you in about a day after completing the quest A Terrible Purpose. Keep this for your Nature Resist set.",
						}),
					},
				}),
				q(8361, {	-- Abyssal Contacts
					["qg"] = 15306,	-- Bor Wildmane
					["coord"] = { 48.6, 37.8, MAP.SILITHUS },
					["cost"] = { { "i", 20513, 1 } },	-- Abyssal Crest
					["lvl"] = 60,
					["groups"] = {
						i(20603, {	-- Bag of Spoils
							["groups"] = {
								i(20694),	-- Glowing Black Orb
								i(20693),	-- Weighted Cloak
								i(20692),	-- Multicolored Band
							},
						}),
					},
				}),
				q(8362, {	-- Abyssal Crests
					["sourceQuest"] = 8361,	-- Abyssal Contacts
					["qg"] = 15306,	-- Bor Wildmane
					["coord"] = { 48.6, 37.8, MAP.SILITHUS },
					["cost"] = { { "i", 20513, 3 } },	-- Abyssal Crest
					["repeatable"] = true,
					["lvl"] = 60,
					["groups"] = {
						i(20603, {	-- Bag of Spoils
							["groups"] = {
								i(20694),	-- Glowing Black Orb
								i(20693),	-- Weighted Cloak
								i(20692),	-- Multicolored Band
							},
						}),
					},
				}),
				q(8364, {	-- Abyssal Scepters
					["sourceQuest"] = 8352,	-- Scepter of the Council
					["qg"] = 15306,	-- Bor Wildmane
					["coord"] = { 48.6, 37.8, MAP.SILITHUS },
					["minReputation"] = { FACTION_CENARION_CIRCLE, REVERED },	-- Cenarion Circle, Revered.
					["cost"] = { { "i", 20515, 3 } },	-- Abyssal Scepter
					["repeatable"] = true,
					["lvl"] = 54,
					["groups"] = {
						i(20602, {	-- Chest of Spoils
							["groups"] = {
								i(20721),	-- Band of the Cultist
								i(20722),	-- Crystal Slugthrower
								i(20720),	-- Dark Whisper Blade
							},
						}),
					},
				}),
				q(8363, {	-- Abyssal Signets
					["sourceQuest"] = 8348,	-- Signet of the Dukes
					["qg"] = 15306,	-- Bor Wildmane
					["coord"] = { 48.6, 37.8, MAP.SILITHUS },
					["minReputation"] = { FACTION_CENARION_CIRCLE, FRIENDLY },	-- Cenarion Circle, Friendly.
					["cost"] = { { "i", 20514, 3 } },	-- Abyssal Signet
					["repeatable"] = true,
					["lvl"] = 54,
					["groups"] = {
						i(20601, {	-- Sack of Spoils
							["groups"] = {
								i(20695),	-- Abyssal War Beads
								i(20696),	-- Crystal Spiked Maul
								i(20697),	-- Crystalline Threaded Cape
								i(20698),	-- Elemental Attuned Blade
							},
						}),
					},
				}),
				q(9338, {	-- Allegiance to Cenarion Circle
					["qg"] = 15540,	-- Windcaller Kaldon
					["coord"] = { 50.0, 36.4, MAP.SILITHUS },
					["maxReputation"] = { FACTION_CENARION_CIRCLE, EXALTED },	-- Cenarion Circle, Exalted.
					["cost"] = {
						{ "i", 20802, 1 },	-- Cenarion Combat Badge
						{ "i", 20800, 1 },	-- Cenarion Logistics Badge
						{ "i", 20801, 1 },	-- Cenarion Tactical Badge
					},
					["repeatable"] = true,
					["lvl"] = 60,
				}),
				q(8316, {	-- Armaments of War [WARRIOR]
					["sourceQuest"] = 8315,	-- The Calling
					["qg"] = 15183,	-- Geologist Larksbane
					["coord"] = { 49.7, 37.5, MAP.SILITHUS },
					["classes"] = { WARRIOR },
					["lvl"] = 58,
					["groups"] = {
						i(20699),	-- Cenarion Reservist's Legplates
						i(20710),	-- Crystal Encrusted Greaves
					},
				}),
				q(8381, {	-- Armaments of War [MAGE / WARLOCK]
					["sourceQuest"] = 8315,	-- The Calling
					["qg"] = 15183,	-- Geologist Larksbane
					["coord"] = { 49.7, 37.5, MAP.SILITHUS },
					["classes"] = { MAGE, WARLOCK },
					["lvl"] = 58,
					["groups"] = {
						i(20705),	-- Cenarion Reservist's Pants
						i(20716),	-- Sandworm Skin Gloves
					},
				}),
				q(8379, {	-- Armaments of War [PRIEST]
					["sourceQuest"] = 8315,	-- The Calling
					["qg"] = 15183,	-- Geologist Larksbane
					["coord"] = { 49.7, 37.5, MAP.SILITHUS },
					["classes"] = { PRIEST },
					["lvl"] = 58,
					["groups"] = {
						i(20707),	-- Cenarion Reservist's Pants
						i(20717),	-- Desert Bloom Gloves
					},
				}),
				q(8378, {	-- Armaments of War [ROGUE]
					["sourceQuest"] = 8315,	-- The Calling
					["qg"] = 15183,	-- Geologist Larksbane
					["coord"] = { 49.7, 37.5, MAP.SILITHUS },
					["classes"] = { ROGUE },
					["lvl"] = 58,
					["groups"] = {
						i(20703),	-- Cenarion Reservist's Leggings
						i(20715),	-- Dunestalker's Boots
					},
				}),
				q(8382, {	-- Armaments of War [DRUID]
					["sourceQuest"] = 8315,	-- The Calling
					["qg"] = 15183,	-- Geologist Larksbane
					["coord"] = { 49.7, 37.5, MAP.SILITHUS },
					["classes"] = { DRUID },
					["lvl"] = 58,
					["groups"] = {
						i(20704),	-- Cenarion Reservist's Leggings
						i(20714),	-- Sandstorm Boots
					},
				}),
				q(8377, {	-- Armaments of War [HUNTER]
					["sourceQuest"] = 8315,	-- The Calling
					["qg"] = 15183,	-- Geologist Larksbane
					["coord"] = { 49.7, 37.5, MAP.SILITHUS },
					["classes"] = { HUNTER },
					["lvl"] = 58,
					["groups"] = {
						i(20702),	-- Cenarion Reservist's Legguards
						i(20713),	-- Desertstalkers's Gauntlets
					},
				}),
				q(8376, {	-- Armaments of War [PALADIN]
					["sourceQuest"] = 8315,	-- The Calling
					["qg"] = 15183,	-- Geologist Larksbane
					["coord"] = { 49.7, 37.5, MAP.SILITHUS },
					["classes"] = { PALADIN },
					["lvl"] = 58,
					["groups"] = {
						i(20700),	-- Cenarion Reservist's Legplates
						i(20711),	-- Crystal Lined Greaves
					},
				}),
				q(8380, {	-- Armaments of War [SHAMAN]
					["sourceQuest"] = 8315,	-- The Calling
					["qg"] = 15183,	-- Geologist Larksbane
					["coord"] = { 49.7, 37.5, MAP.SILITHUS },
					["classes"] = { SHAMAN },
					["lvl"] = 58,
					["groups"] = {
						i(20701),	-- Cenarion Reservist's Legguards
						i(20712),	-- Wastewalker's Gauntlets
					},
				}),
				q(8780, {	-- Armor Kits for the Field (A)
					["provider"] = { "i", 21263 },	-- Logistics Task Briefing VII (A)
					["cost"] = {
						{ "i", 15564, 8 },	-- Rugged Armor Kit
						{ "i", 4265, 8 },	-- Heavy Armor Kit
					},
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					["lvl"] = 60,
					["groups"] = {
						CENARION_LOGISTICS_BADGE,
						FOLLOWUP_LOGISTICS_ASSIGNMENT_A,
					},
				}),
				q(8787, {	-- Armor Kits for the Field (H)
					["provider"] = { "i", 21264 },	-- Logistics Task Briefing VII (H)
					["cost"] = {
						{ "i", 15564, 8 },	-- Rugged Armor Kit
						{ "i", 4265, 8 },	-- Heavy Armor Kit
					},
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["lvl"] = 60,
					["groups"] = {
						CENARION_LOGISTICS_BADGE,
						FOLLOWUP_LOGISTICS_ASSIGNMENT_H,
					},
				}),
				q(8781, {	-- Arms for the Field (A)
					["provider"] = { "i", 21260 },	-- Logistics Task Briefing VI (A)
					["cost"] = { { "i", 3853, 2 } },	-- Moonsteel Broadsword
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					["lvl"] = 60,
					["groups"] = {
						CENARION_LOGISTICS_BADGE,
						FOLLOWUP_LOGISTICS_ASSIGNMENT_A,
					},
				}),
				q(8786, {	-- Arms for the Field (H)
					["provider"] = { "i", 21261 },	-- Logistics Task Briefing VI (H)
					["cost"] = { { "i", 3855, 3 } },	-- Massive Iron Axe
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["lvl"] = 60,
					["groups"] = {
						CENARION_LOGISTICS_BADGE,
						FOLLOWUP_LOGISTICS_ASSIGNMENT_H,
					},
				}),
				q(8331, {	-- Aurel Goldleaf
					["qg"] = 15270,	-- Huum Wildmane
					["coord"] = { 48.7, 37.9, MAP.SILITHUS },
					["minReputation"] = { FACTION_CENARION_CIRCLE, FRIENDLY },	-- Cenarion Circle, Friendly.
					["isBreadcrumb"] = true,
					["lvl"] = 54,
				}),
				q(8737, {	-- Azure Templar
					["provider"] = { "i", 21245 },	-- Tactical Task Briefing I
					["repeatable"] = true,
					["lvl"] = 60,
					["groups"] = {
						objective(1, {	-- 0/1 Azure Templar slain
							["provider"] = { "n", 15211 },	-- Azure Templar <Abyssal Council>
						}),
						CENARION_TACTICAL_BADGE,
						FOLLOWUP_TACTICAL_ASSIGNMENT,
					},
				}),
				q(8496, {	-- Bandages for the Field (A)
					["provider"] = { "i", 20806 },	-- Logistics Task Briefing X (A)
					["cost"] = {
						{ "i", 14530, 30 },	-- Heavy Runecloth Bandage
						{ "i", 8545, 30 },	-- Heavy Mageweave Bandage
						{ "i", 6451, 30 },	-- Heavy Silk Bandage
					},
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					["lvl"] = 60,
					["groups"] = {
						CENARION_LOGISTICS_BADGE,
						FOLLOWUP_LOGISTICS_ASSIGNMENT_A,
					},
				}),
				q(8810, {	-- Bandages for the Field (H)
					["provider"] = { "i", 21385 },	-- Logistics Task Briefing X (H)
					["cost"] = {
						{ "i", 14530, 30 },	-- Heavy Runecloth Bandage
						{ "i", 8545, 30 },	-- Heavy Mageweave Bandage
						{ "i", 6451, 30 },	-- Heavy Silk Bandage
					},
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["lvl"] = 60,
					["groups"] = {
						CENARION_LOGISTICS_BADGE,
						FOLLOWUP_LOGISTICS_ASSIGNMENT_H,
					},
				}),
				q(8540, {	-- Boots for the Guard (A)
					["provider"] = { "i", 20939 },	-- Logistics Task Briefing II (A)
					["cost"] = { { "i", 7936, 3 } },	-- Ornate Mithril Boots
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					["lvl"] = 60,
					["groups"] = {
						CENARION_LOGISTICS_BADGE,
						LOGISTICS_ASSIGNMENT_A,
					},
				}),
				q(8805, {	-- Boots for the Guard (H)
					["provider"] = { "i", 21379 },	-- Logistics Task Briefing II (H)
					["cost"] = { { "i", 7936, 3 } },	-- Ornate Mithril Boots
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["lvl"] = 60,
					["groups"] = {
						CENARION_LOGISTICS_BADGE,
						LOGISTICS_ASSIGNMENT_H,
					},
				}),
				q(8349, {	-- Bor Wildmane
					["sourceQuest"] = 8332,	-- Dukes of the Council
					["qg"] = 15282,	-- Aurel Goldleaf
					["coord"] = { 52.0, 38.2, MAP.SILITHUS },
					["minReputation"] = { FACTION_CENARION_CIRCLE, FRIENDLY },	-- Cenarion Circle, Friendly.
					["isBreadcrumb"] = true,
					["lvl"] = 54,
				}),
				q(8351, {	-- Bor Wishes to Speak
					["sourceQuest"] = 8341,	-- Lords of the Council
					["qg"] = 15282,	-- Aurel Goldleaf
					["coord"] = { 52.0, 38.2, MAP.SILITHUS },
					["minReputation"] = { FACTION_CENARION_CIRCLE, REVERED },	-- Cenarion Circle, Revered.
					["lvl"] = 54,
				}),
				q(8308, {	-- Brann Bronzebeard's Lost Letter
					["provider"] = { "i", 20461 },	-- Brann Bronzebeard's Lost Letter
					["crs"] = {
						13301,	-- Hive'Ashi Ambusher
						11722,	-- Hive'Ashi Defender
						13136,	-- Hive'Ashi Drone
						11723,	-- Hive'Ashi Sandstalker
						11698,	-- Hive'Ashi Stinger
						11724,	-- Hive'Ashi Swarmer
						11721,	-- Hive'Ashi Worker
						11730,	-- Hive'Regal Ambusher
						11731,	-- Hive'Regal Burrower
						11734,	-- Hive'Regal Hive Lord
						11733,	-- Hive'Regal Slavemaker
						11732,	-- Hive'Regal Spitfire
						11729,	-- Hive'Zora Hive Sister
						11728,	-- Hive'Zora Reaver
						11726,	-- Hive'Zora Tunneler
						11727,	-- Hive'Zora Wasp
						11725,	-- Hive'Zora Waywatcher
					},
					["lvl"] = 58,
					["groups"] = {
						i(20723),	-- Brann's Trusty Pick
					},
				}),
				q(8310, {	-- Breaking the Code
					["sourceQuest"] = 8304,	-- Dearest Natalia
					["qg"] = 15171,	-- Frankal Stonebridge
					["coord"] = { 40.8, 88.6, MAP.SILITHUS },
					["lvl"] = 58,
					["groups"] = {
						objective(1, {	-- 0/1 Hive'Ashi Silithid Brain
							["provider"] = { "i", 20457 },	-- Hive'Ashi Silithid Brain
							["crs"] = {
								13301,	-- Hive'Ashi Ambusher
								11722,	-- Hive'Ashi Defender
								13136,	-- Hive'Ashi Drone
								11723,	-- Hive'Ashi Sandstalker
								11698,	-- Hive'Ashi Stinger
								11724,	-- Hive'Ashi Swarmer
								11721,	-- Hive'Ashi Worker
							},
						}),
						objective(2, {	-- 0/1 Hive'Zora Silithid Brain
							["provider"] = { "i", 20458 },	-- Hive'Zora Silithid Brain
							["crs"] = {
								11729,	-- Hive'Zora Hive Sister
								11728,	-- Hive'Zora Reaver
								11726,	-- Hive'Zora Tunneler
								11727,	-- Hive'Zora Wasp
								11725,	-- Hive'Zora Waywatcher
							},
						}),
						objective(3, {	-- 0/1 Hive'Regal Silithid Brain
							["provider"] = { "i", 20459 },	-- Hive'Regal Silithid Brain
							["crs"] = {
								11730,	-- Hive'Regal Ambusher
								11731,	-- Hive'Regal Burrower
								11734,	-- Hive'Regal Hive Lord
								11733,	-- Hive'Regal Slavemaker
								11732,	-- Hive'Regal Spitfire
							},
						}),
					},
				}),
				q(8800, {	-- Cenarion Battlegear
					["qg"] = 15540,	-- Windcaller Kaldon
					["coord"] = { 50.0, 36.4, MAP.SILITHUS },
					["lvl"] = 60,
				}),
				q(8573, {	-- Champion's Battlegear
					["sourceQuest"] = 8800,	-- Cenarion Battlegear
					["qg"] = 15176,	-- Vargus
					["coord"] = { 51.2, 38.9, MAP.SILITHUS },
					["minReputation"] = { FACTION_CENARION_CIRCLE, EXALTED },	-- Cenarion Circle, Exalted.
					["cost"] = {
						{ "i", 20802, 15 },	-- Cenarion Combat Badge
						{ "i", 20800, 20 },	-- Cenarion Logistics Badge
						{ "i", 20801, 20 },	-- Cenarion Tactical Badge
						{ "i", 21508, 1 },	-- Mark of Cenarius
					},
					["repeatable"] = true,
					["lvl"] = 54,
					["groups"] = {
						i(21188),	-- Fist of Cenarius
						i(21190),	-- Wrath of Cenarius
						i(21180),	-- Earthstrike
					},
				}),
				q(8537, {	-- Crimson Templar
					["provider"] = { "i", 20945 },	-- Tactical Task Briefing II
					["repeatable"] = true,
					["lvl"] = 60,
					["groups"] = {
						objective(1, {	-- 0/1 Crimson Templar slain
							["provider"] = { "n", 15209 },	-- Crimson Templar <Abyssal Council>
						}),
						CENARION_TACTICAL_BADGE,
						TACTICAL_ASSIGNMENT,
					},
				}),
				q(8277, {	-- Deadly Desert Venom
					["qg"] = 15189,	-- Beetix Ficklespragg
					["coord"] = { 51.6, 38.6, MAP.SILITHUS },
					["lvl"] = 54,
					["groups"] = {
						objective(1, {	-- 0/8 Stonelash Scorpid Stinger
							["provider"] = { "i", 20373 },	-- Stonelash Scorpid Stinger
							["cr"] = 11735,	-- Stonelash Scorpid
						}),
						objective(2, {	-- 0/8 Sand Skitterer Fang
							["provider"] = { "i", 20376 },	-- Sand Skitterer Fang
							["cr"] = 11738,	-- Sand Skitterer
						}),
					},
				}),
				q(8304, {	-- Dearest Natalia
					["qg"] = 15181,	-- Commander Mar'alith
					["coord"] = { 49.2, 34.2, MAP.SILITHUS },
					["lvl"] = 58,
					["groups"] = {
						objective(1, {	-- Frankal Questioned
							["provider"] = { "n", 15171 },	-- Frankal Stonebridge
							["coord"] = { 40.8, 88.6, MAP.SILITHUS },
						}),
						objective(2, {	-- Rutgar Questioned
							["provider"] = { "n", 15170 },	-- Rutgar Glyphshaper
							["coord"] = { 41.2, 88.4, MAP.SILITHUS },
						}),
					},
				}),
				q(8307, {	-- Desert Recipe
					["qg"] = 15174,	-- Calandrath <Innkeeper>
					["coord"] = { 51.8, 39.0, MAP.SILITHUS },
					["requireSkill"] = COOKING,
					["learnedAt"] = 285,
					["lvl"] = 54,
				}),
				q(8497, {	-- Desert Survival Kits (A)
					["provider"] = { "i", 20807 },	-- Logistics Task Briefing I (A)
					["cost"] = {
						{ "i", 7079, 4 },	-- Globe of Water
						{ "i", 19440, 4 },	-- Powerful Anti-Venom
						{ "i", 20452, 4 },	-- Smoked Desert Dumplings
					},
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					["lvl"] = 60,
					["groups"] = {
						CENARION_LOGISTICS_BADGE,
						LOGISTICS_ASSIGNMENT_A,
					},
				}),
				q(8804, {	-- Desert Survival Kits (H)
					["provider"] = { "i", 21378 },	-- Logistics Task Briefing I (H)
					["cost"] = {
						{ "i", 7079, 4 },	-- Globe of Water
						{ "i", 19440, 4 },	-- Powerful Anti-Venom
						{ "i", 20452, 4 },	-- Smoked Desert Dumplings
					},
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["lvl"] = 55,
					["groups"] = {
						CENARION_LOGISTICS_BADGE,
						LOGISTICS_ASSIGNMENT_H,
					},
				}),
				q(8856, {	-- Desert Survival Kits (A)
					["provider"] = { "i", 20807 },	-- Logistics Task Briefing I (A)
					["cost"] = {
						{ "i", 7079, 4 },	-- Globe of Water
						{ "i", 19440, 4 },	-- Powerful Anti-Venom
						{ "i", 20452, 4 },	-- Smoked Desert Dumplings
					},
					["repeatable"] = true,
					["lvl"] = 60,
					["groups"] = {
						CENARION_LOGISTICS_BADGE,
						FOLLOWUP_LOGISTICS_ASSIGNMENT_A,
					},
				}),
				q(8332, {	-- Dukes of the Council
					["sourceQuest"] = 8331,	-- Aurel Goldleaf
					["qg"] = 15282,	-- Aurel Goldleaf
					["coord"] = { 52.0, 38.2, MAP.SILITHUS },
					["minReputation"] = { FACTION_CENARION_CIRCLE, FRIENDLY },	-- Cenarion Circle, Friendly.
					["cost"] = {
						{ "i", 14344, 1 },	-- Large Brilliant Shard
						{ "i", 20513, 3 },	-- Abyssal Crest
					},
					["lvl"] = 54,
					["groups"] = {
						i(20422),	-- Twilight Cultist Medallion of Station
					},
				}),
				q(8536, {	-- Earthen Templar
					["provider"] = { "i", 21751 },	-- Tactical Task Briefing III
					["repeatable"] = true,
					["lvl"] = 60,
					["groups"] = {
						objective(1, {	-- 0/1 Earthen Templar slain
							["provider"] = { "n", 15307 },	-- Earthen Templar <Abyssal Council>
						}),
						CENARION_TACTICAL_BADGE,
						FOLLOWUP_TACTICAL_ASSIGNMENT,
					},
				}),
				q(8319, {	-- Encrypted Twilight Texts
					["sourceQuest"] = 8318,	-- Secret Communication
					["qg"] = 15306,	-- Bor Wildmane
					["coord"] = { 48.6, 37.8, MAP.SILITHUS },
					["maxReputation"] = { FACTION_CENARION_CIRCLE, EXALTED },	-- Cenarion Circle, Exalted.
					["cost"] = { { "i", 20404, 10 } },	-- Encrypted Twilight Texts
					["repeatable"] = true,
					["lvl"] = 57,
				}),
				q(8783, {	-- Extraordinary Materials (A)
					["provider"] = { "i", 21265 },	-- Logistics Task Briefing IX (A)
					["cost"] = {
						{ "i", 12655, 2 },	-- Enchanted Thorium Bar
						{ "i", 12810, 2 },	-- Enchanted Leather
					},
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					["lvl"] = 60,
					["groups"] = {
						CENARION_LOGISTICS_BADGE,
						LOGISTICS_ASSIGNMENT_A,
					},
				}),
				q(8809, {	-- Extraordinary Materials (H)
					["provider"] = { "i", 21381 },	-- Logistics Task Briefing IX (H)
					["cost"] = {
						{ "i", 12655, 2 },	-- Enchanted Thorium Bar
						{ "i", 12810, 2 },	-- Enchanted Leather
					},
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["lvl"] = 60,
					["groups"] = {
						CENARION_LOGISTICS_BADGE,
						LOGISTICS_ASSIGNMENT_H,
					},
				}),
				q(8507, {	-- Field Duty (A)
					["qg"] = 15540,	-- Windcaller Kaldon
					["coord"] = { 50.0, 36.4, MAP.SILITHUS },
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					["lvl"] = 60,
					["groups"] = {
						q(8508, {	-- Field Duty Papers (A)
							["qg"] = 15440,	-- Captain Blackanvil <Ironforge Brigade Captain>
							["coord"] = { 33.2, 52.1, MAP.SILITHUS },
							["races"] = ALLIANCE_ONLY,
							["repeatable"] = true,
							["groups"] = {
								objective(1, {	-- 0/1 Signed Field Duty Papers
									["questID"] = 8507,	-- Field Duty (A)
									["providers"] = {
										{ "i", 20810 },	-- Signed Field Duty Papers
										{ "i", 23024 },	-- Prepared Field Duty Papers
										{ "i", 21143 },	-- Unsigned Field Duty Papers
									},
								}),
							},
						}),
						i(20808),	-- Combat Assignment
						LOGISTICS_ASSIGNMENT_A,
						TACTICAL_ASSIGNMENT,
					},
				}),
				q(8731, {	-- Field Duty (H)
					["qg"] = 15540,	-- Windcaller Kaldon
					["coord"] = { 50.0, 36.4, MAP.SILITHUS },
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["lvl"] = 60,
					["groups"] = {
						q(8732, {	-- Field Duty Papers (H)
							["qg"] = 15612,	-- Krug Skullsplit
							["coord"] = { 52.2, 68.4, MAP.SILITHUS },
							["races"] = HORDE_ONLY,
							["repeatable"] = true,
							["lvl"] = 54,
							["groups"] = {
								objective(1, {	-- 0/1 Signed Field Duty Papers
									["questID"] = 8731,	-- Field Duty (H)
									["providers"] = {
										{ "i", 20810 },	-- Signed Field Duty Papers
										{ "i", 23024 },	-- Prepared Field Duty Papers
										{ "i", 21143 },	-- Unsigned Field Duty Papers
									},
								}),
							},
						}),
						i(20808),	-- Combat Assignment
						LOGISTICS_ASSIGNMENT_H,
						TACTICAL_ASSIGNMENT,
					},
				}),
				q(8309, {	-- Glyph Chasing
					["sourceQuest"] = 8304,	-- Dearest Natalia
					["providers"] = {
						{ "n", 15170 },	-- Rutgar Glyphshaper
						{ "i", 20453 },	-- Geologist's Transcription Kit
					},
					["coord"] = { 41.2, 88.4, MAP.SILITHUS },
					["lvl"] = 58,
					["groups"] = {
						objective(1, {	-- 0/1 Hive'Ashi Rubbing
							["providers"] = {
								{ "i", 20455 },	-- Hive'Ashi Rubbing
								{ "o", 180454 },	-- Hive'Ashi Glyphed Crystal
							},
							["coord"] = { 50.0, 26.0, MAP.SILITHUS },
						}),
						objective(2, {	-- 0/1 Hive'Zora Rubbing
							["providers"] = {
								{ "i", 20454 },	-- Hive'Zora Rubbing
								{ "o", 180455 },	-- Hive'Zora Glyphed Crystal
							},
							["coord"] = { 37.0, 62.0, MAP.SILITHUS },
						}),
						objective(3, {	-- 0/1 Hive'Regal Rubbing
							["providers"] = {
								{ "i", 20456 },	-- Hive'Regal Rubbing
								{ "o", 180453 },	-- Hive'Regal Glyphed Crystal
							},
							["coord"] = { 52.0, 99.0, MAP.SILITHUS },
						}),
					},
				}),
				q(8343, {	-- Goldleaf's Discovery
					["qg"] = 15270,	-- Huum Wildmane
					["coord"] = { 48.6, 37.9, MAP.SILITHUS },
					["minReputation"] = { FACTION_CENARION_CIRCLE, REVERED },	-- Cenarion Circle, Revered.
					["isBreadcrumb"] = true,
					["lvl"] = 54,
				}),
				q(8541, {	-- Grinding Stones for the Guard (A)
					["provider"] = { "i", 20940 },	-- Logistics Task Briefing III (A)
					["cost"] = {
						{ "i", 12644, 10 },	-- Dense Grinding Stone
						{ "i", 7966, 10 },	-- Solid Grinding Stone
						{ "i", 3486, 10 },	-- Heavy Grinding Stone
					},
					["repeatable"] = true,
					["lvl"] = 60,
					["groups"] = {
						CENARION_LOGISTICS_BADGE,
						LOGISTICS_ASSIGNMENT_A,
					},
				}),
				q(8806, {	-- Grinding Stones for the Guard (H)
					["provider"] = { "i", 21380 },	-- Logistics Task Briefing III (H)
					["cost"] = {
						{ "i", 12644, 10 },	-- Dense Grinding Stone
						{ "i", 7966, 10 },	-- Solid Grinding Stone
						{ "i", 3486, 10 },	-- Heavy Grinding Stone
					},
					["repeatable"] = true,
					["lvl"] = 60,
					["groups"] = {
						CENARION_LOGISTICS_BADGE,
						LOGISTICS_ASSIGNMENT_H,
					},
				}),
				q(1126, {	-- Hive in the Tower
					["sourceQuest"] = 1125,	-- The Spirits of Southwind
					["qg"] = 13220,	-- Layo Starstrike
					["coord"] = { 81.8, 18.8, MAP.SILITHUS },
					["lvl"] = 54,
					["groups"] = {
						objective(1, {	-- 0/1 Encrusted Silithid Object
							["providers"] = {
								{ "i",  17346 },	-- Encrusted Silithid Object
								{ "i",  17345 },	-- Silithid Goo
								{ "o", 178553 },	-- Hive'Ashi Pod
							},
							["coord"] = { 60.3, 52.6, MAP.SILITHUS },
							["cr"] = 13301,	-- Hive'Ashi Ambusher
						}),
					},
				}),
				q(8739, {	-- Hive'Ashi Scout Report
					["provider"] = { "i", 21167 },	-- Tactical Task Briefing VIII
					["repeatable"] = true,
					["lvl"] = 60,
					["groups"] = {
						objective(1, {	-- 0/1 Hive'Ashi Scout Report
							["provider"] = { "i", 21161 },	-- Hive'Ashi Scout Report
							["coord"] = { 44.0, 14.0, MAP.SILITHUS },
							["cr"] = 15611,	-- Cenarion Scout Jalia
						}),
						CENARION_TACTICAL_BADGE,
						TACTICAL_ASSIGNMENT,
					},
				}),
				q(8738, {	-- Hive'Regal Scout Report
					["provider"] = { "i", 21166 },	-- Tactical Task Briefing VII
					["repeatable"] = true,
					["lvl"] = 60,
					["groups"] = {
						objective(1, {	-- 0/1 Hive'Regal Scout Report
							["provider"] = { "i", 21160 },	-- Hive'Regal Scout Report
							["coord"] = { 53.0, 97.0, MAP.SILITHUS },
							["cr"] = 15609,	-- Cenarion Scout Landion
						}),
						CENARION_TACTICAL_BADGE,
						FOLLOWUP_TACTICAL_ASSIGNMENT,
					},
				}),
				q(8534, {	-- Hive'Zora Scout Report
					["provider"] = { "i", 21165 },	-- Tactical Task Briefing VI
					["repeatable"] = true,
					["lvl"] = 60,
					["groups"] = {
						objective(1, {	-- 0/1 Hive'Zora Scout Report
							["provider"] = { "i", 21158 },	-- Hive'Zora Scout Report
							["coord"] = { 23.6, 62.4, MAP.SILITHUS },
							["cr"] = 15610,	-- Cenarion Scout Azenel
						}),
						CENARION_TACTICAL_BADGE,
						FOLLOWUP_TACTICAL_ASSIGNMENT,
					},
				}),
				q(8535, {	-- Hoary Templar
					["provider"] = { "i", 20947 },	-- Tactical Task Briefing IV
					["repeatable"] = true,
					["lvl"] = 60,
					["groups"] = {
						objective(1, {	-- 0/1 Hoary Templar slain
							["provider"] = { "n", 15212 },	-- Hoary Templar <Abyssal Council>
						}),
						CENARION_TACTICAL_BADGE,
						TACTICAL_ASSIGNMENT,
					},
				}),
				q(8306, {	-- Into The Maw of Madness
					["sourceQuest"] = 8304,	-- Dearest Natalia
					["qg"] = 15181,	-- Commander Mar'alith
					["coord"] = { 49.2, 34.2, MAP.SILITHUS },
					["lvl"] = 58,
					["groups"] = {
						objective(1, {	-- 0/1 The Fate of Mistress Natalia Mar'alith
							["provider"] = { "n", 15215 },	-- Mistress Natalia Mar'alith <High Priestess of C'Thun>
							["coord"] = { 53.6, 98.0, MAP.SILITHUS },
						}),
						i(20724),	-- Corrupted Blackwood Staff
					},
				}),
				q(8317, {	-- Kitchen Assistance
					["sourceQuest"] = 8313,	-- Sharing the Knowledge
					["qg"] = 15174,	-- Calandrath <Innkeeper>
					["coord"] = { 51.8, 39.0, MAP.SILITHUS },
					["cost"] = { { "i", 20452, 10 } },	-- Smoked Desert Dumplings
					["requireSkill"] = COOKING,
					["learnedAt"] = 285,
					["lvl"] = 54,
				}),
				q(8341, {	-- Lords of the Council
					["sourceQuest"] = 8343,	-- Goldleaf's Discovery
					["qg"] = 15282,	-- Aurel Goldleaf
					["coord"] = { 52.0, 38.2, MAP.SILITHUS },
					["minReputation"] = { FACTION_CENARION_CIRCLE, REVERED },	-- Cenarion Circle, Revered.
					["cost"] = {
						{ "i", 14344, 5 },	-- Large Brilliant Shard
						{ "i", 20514, 3 },	-- Abyssal Signet
					},
					["lvl"] = 54,
					["groups"] = {
						i(20451),	-- Twilight Cultist Ring of Lordship
					},
				}),
				q(8333, {	-- Medallion of Station
					["sourceQuest"] = 8332,	-- Dukes of the Council
					["qg"] = 15282,	-- Aurel Goldleaf
					["coord"] = { 52.0, 38.2, MAP.SILITHUS },
					["cost"] = {
						{ "i", 14344, 1 },	-- Large Brilliant Shard
						{ "i", 20513, 3 },	-- Abyssal Crest
					},
					["repeatable"] = true,
					["lvl"] = 54,
					["groups"] = {
						i(20422),	-- Twilight Cultist Medallion of Station
					},
				}),
				q(8278, {	-- Noggle's Last Hope
					["sourceQuest"] = 8277,	-- Deadly Desert Venom
					["qg"] = 15189,	-- Beetix Ficklespragg
					["coord"] = { 51.6, 38.6, MAP.SILITHUS },
					["lvl"] = 54,
					["groups"] = {
						objective(1, {	-- 0/3 Stonelash Flayer Stinger
							["provider"] = { "i", 20375 },	-- Stonelash Flayer Stinger
							["cr"] = 11737,	-- Stonelash Flayer
						}),
						objective(2, {	-- 0/3 Stonelash Pincer Stinger
							["provider"] = { "i", 20374 },	-- Stonelash Pincer Stinger
							["cr"] = 11736,	-- Stonelash Pincer
						}),
						objective(3, {	-- 0/3 Rock Stalker Fang
							["provider"] = { "i", 20377 },	-- Rock Stalker Fang
							["cr"] = 11739,	-- Rock Stalker
						}),
					},
				}),
				q(8282, {	-- Noggle's Lost Satchel
					["sourceQuest"] = 8278,	-- Noggle's Last Hope
					["qg"] = 15190,	-- Noggle Ficklespragg
					["coord"] = { 51.6, 38.5, MAP.SILITHUS },
					["lvl"] = 54,
					["groups"] = {
						objective(1, {	-- 0/1 Noggle's Satchel
							["providers"] = {
								{ "i",  20379 },	-- Noggle's Satchel
								{ "o", 180435 },	-- Noggle's Satchel
							},
							["coord"] = { 44.7, 91.5, MAP.SILITHUS },
						}),
						i(13452),	-- Elixir of the Mongoose
						i(13447),	-- Elixir of the Sages
					},
				}),
				q(9416, {	-- Report to General Kirika
					["qg"] = 17081,	-- Scout Bloodfist
					["coord"] = { 49.0, 36.7, MAP.SILITHUS },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 53,
				}),
				q(9415, {	-- Report to Marshal Bluewall
					["qg"] = 17082,	-- Rifleman Torrig
					["coord"] = { 50.7, 34.7, MAP.SILITHUS },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 53,
				}),
				q(8352, {	-- Scepter of the Council
					["sourceQuest"] = 8351,	-- Bor Wishes to Speak
					["qg"] = 15306,	-- Bor Wildmane
					["coord"] = { 48.6, 37.8, MAP.SILITHUS },
					["minReputation"] = { FACTION_CENARION_CIRCLE, REVERED },	-- Cenarion Circle, Revered.
					["cost"] = { { "i", 20515, 1 } },	-- Abyssal Scepter
					["lvl"] = 54,
					["groups"] = {
						i(20602, {	-- Chest of Spoils
							["groups"] = {
								i(20721),	-- Band of the Cultist
								i(20722),	-- Crystal Slugthrower
								i(20720),	-- Dark Whisper Blade
							},
						}),
					},
				}),
				q(9419, {	-- Scouring the Desert [ALLIANCE]
					["sourceQuest"] = 9415,	-- Report to Marshal Bluewall
					["qg"] = 17080,	-- Marshal Bluewall
					["coord"] = { 33.3, 51.1, MAP.SILITHUS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 53,
					["groups"] = {
						objective(1, {	-- Return Silithyst
							["providers"] = {
								{ "o", 181598 },	-- Silithyst Geyser
								{ "o", 181597 },	-- Silithyst Mound
							},
						}),
						i(13446),	-- Major Healing Potion
						i(13444),	-- Major Mana Potion
					},
				}),
				q(9422, {	-- Scouring the Desert [HORDE]
					["sourceQuest"] = 9416,	-- Report to General Kirika
					["qg"] = 17079,	-- General Kirika
					["coord"] = { 50.8, 69.5, MAP.SILITHUS },
					["races"] = HORDE_ONLY,
					["lvl"] = 53,
					["groups"] = {
						objective(1, {	-- Return Silithyst
							["providers"] = {
								{ "o", 181598 },	-- Silithyst Geyser
								{ "o", 181597 },	-- Silithyst Mound
							},
						}),
						i(13446),	-- Major Healing Potion
						i(13444),	-- Major Mana Potion
					},
				}),
				q(8779, {	-- Scrying Materials (A)
					["provider"] = { "i", 21259 },	-- Logistics Task Briefing V (A)
					["cost"] = {
						{ "i", 12364, 1 },	-- Huge Emerald
						{ "i", 14344, 1 },	-- Large Brilliant Shard
						{ "i", 11178, 1 },	-- Large Radiant Shard
					},
					["repeatable"] = true,
					["lvl"] = 60,
					["groups"] = {
						CENARION_LOGISTICS_BADGE,
						FOLLOWUP_LOGISTICS_ASSIGNMENT_A,
					},
				}),
				q(8807, {	-- Scrying Materials (H)
					["provider"] = { "i", 21382 },	-- Logistics Task Briefing V (H)
					["cost"] = {
						{ "i", 12364, 1 },	-- Huge Emerald
						{ "i", 14344, 1 },	-- Large Brilliant Shard
						{ "i", 11178, 1 },	-- Large Radiant Shard
					},
					["repeatable"] = true,
					["lvl"] = 60,
					["groups"] = {
						CENARION_LOGISTICS_BADGE,
						FOLLOWUP_LOGISTICS_ASSIGNMENT_H,
					},
				}),
				q(8318, {	-- Secret Communication
					["qg"] = 15306,	-- Bor Wildmane
					["coord"] = { 48.6, 37.8, MAP.SILITHUS },
					["cost"] = { { "i", 20404, 10 } },	-- Encrypted Twilight Texts
					["lvl"] = 57,
				}),
				q(8280, {	-- Securing the Supply Lines
					["sourceQuests"] = {
						8275,	-- Taking Back Silithus (A)
						8276,	-- Taking Back Silithus (H)
					},
					["qg"] = 15191,	-- Windcaller Proudhorn
					["coord"] = { 51.2, 38.3, MAP.SILITHUS },
					["lvl"] = 54,
					["groups"] = {
						objective(1, {	-- 0/15 Dredge Striker slain
							["provider"] = { "n", 11740 },	-- Dredge Striker
						}),
					},
				}),
				q(8313, {	-- Sharing the Knowledge
					["sourceQuest"] = 8307,	-- Desert Recipe
					["providers"] = {
						{ "o", 180503 },	-- Sandy Cookbook
						{ "i",  20467 },	-- Torn Recipe Page
					},
					["coord"] = { 37.9, 45.3, MAP.SILITHUS },
					["requireSkill"] = COOKING,
					["learnedAt"] = 285,
					["lvl"] = 54,
					["groups"] = {
						recipe(24801),	-- Smoked Desert Dumplings
					},
				}),
				q(8348, {	-- Signet of the Dukes
					["sourceQuest"] = 8349,	-- Bor Wildmane
					["qg"] = 15306,	-- Bor Wildmane
					["coord"] = { 48.6, 37.8, MAP.SILITHUS },
					["minReputation"] = { FACTION_CENARION_CIRCLE, FRIENDLY },	-- Cenarion Circle, Friendly.
					["cost"] = { { "i", 20514, 1 } },	-- Abyssal Signet
					["lvl"] = 54,
					["groups"] = {
						i(20601, {	-- Sack of Spoils
							["groups"] = {
								i(20695),	-- Abyssal War Beads
								i(20696),	-- Crystal Spiked Maul
								i(20697),	-- Crystalline Threaded Cape
								i(20698),	-- Elemental Attuned Blade
							},
						}),
					},
				}),
				q(8574, {	-- Stalwart's Battlegear
					["sourceQuest"] = 8800,	-- Cenarion Battlegear
					["qg"] = 15176,	-- Vargus
					["coord"] = { 51.2, 38.9, MAP.SILITHUS },
					["minReputation"] = { FACTION_CENARION_CIRCLE, REVERED },	-- Cenarion Circle, Revered.
					["cost"] = {
						{ "i", 20802, 15 },	-- Cenarion Combat Badge
						{ "i", 20800, 20 },	-- Cenarion Logistics Badge
						{ "i", 20801, 17 },	-- Cenarion Tactical Badge
						{ "i", 21515, 1 },	-- Mark of Remulos
					},
					["repeatable"] = true,
					["lvl"] = 54,
					["groups"] = {
						i(21184),	-- Deeprock Bracers
						i(21185),	-- Earthcalm Orb
						i(21186),	-- Rockfury Bracers
						i(21189),	-- Might of Cenarius
					},
				}),
				q(8281, {	-- Stepping Up Security
					["sourceQuest"] = 8280,	-- Securing the Supply Lines
					["qg"] = 15191,	-- Windcaller Proudhorn
					["coord"] = { 51.2, 38.3, MAP.SILITHUS },
					["lvl"] = 54,
					["groups"] = {
						objective(1, {	-- 0/20 Dredge Crusher
							["provider"] = { "n", 11741 },	-- Dredge Crusher
						}),
					},
				}),
				q(8324, {	-- Still Believing
					["sourceQuest"] = 8323,	-- True Believers
					["qg"] = 15194,	-- Hermit Ortell
					["coord"] = { 67.0, 69.6, MAP.SILITHUS },
					["cost"] = { { "i", 20404, 10 } },	-- Encrypted Twilight Text
					["repeatable"] = true,
					["lvl"] = 54,
				}),
				q(8275, {	-- Taking Back Silithus (A)
					["qg"] = 15187,	-- Cenarion Emissary Jademoon
					["coord"] = { 58.5, 47.3, MAP.IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 54,
				}),
				q(8276, {	-- Taking Back Silithus (H)
					["qg"] = 15188,	-- Cenarion Emissary Blackhoof
					["coord"] = { 47.6, 65.8, MAP.ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 54,
				}),
				q(8770, {	-- Target: Hive'Ashi Defenders
					["provider"] = { "i", 21749 },	-- Combat Task Briefing I
					["repeatable"] = true,
					["lvl"] = 60,
					["groups"] = {
						objective(1, {	-- 0/30 Hive'Ashi Defender slain
							["provider"] = { "n", 11722 },	-- Hive'Ashi Defender
						}),
						CENARION_COMBAT_BADGE,
					},
				}),
				q(8771, {	-- Target: Hive'Ashi Sandstalkers
					["provider"] = { "i", 21750 },	-- Combat Task Briefing II
					["repeatable"] = true,
					["lvl"] = 60,
					["groups"] = {
						objective(1, {	-- 0/30 Hive'Ashi Sandstalker slain
							["provider"] = { "n", 11723 },	-- Hive'Ashi Sandstalker
						}),
						CENARION_COMBAT_BADGE,
					},
				}),
				q(8501, {	-- Target: Hive'Ashi Stingers
					["provider"] = { "i", 20941 },	-- Combat Task Briefing XII
					["repeatable"] = true,
					["lvl"] = 60,
					["groups"] = {
						objective(1, {	-- 0/30 Hive'Ashi Stinger slain
							["provider"] = { "n", 11698 },	-- Hive'Ashi Stinger
						}),
						CENARION_COMBAT_BADGE,
					},
				}),
				q(8502, {	-- Target: Hive'Ashi Workers
					["provider"] = { "i", 20942 },	-- Combat Task Briefing III
					["repeatable"] = true,
					["lvl"] = 60,
					["groups"] = {
						objective(1, {	-- 0/30 Hive'Ashi Worker slain
							["provider"] = { "n", 11721 },	-- Hive'Ashi Worker
						}),
						CENARION_COMBAT_BADGE,
					},
				}),
				q(8774, {	-- Target: Hive'Regal Ambushers
					["provider"] = { "i", 21252 },	-- Combat Task Briefing VIII
					["repeatable"] = true,
					["lvl"] = 60,
					["groups"] = {
						objective(1, {	-- 0/30 Hive'Regal Ambusher slain
							["provider"] = { "n", 11730 },	-- Hive'Regal Ambusher
						}),
						CENARION_COMBAT_BADGE,
					},
				}),
				q(8777, {	-- Target: Hive'Regal Burrowers
					["provider"] = { "i", 21256 },	-- Combat Task Briefing XI
					["repeatable"] = true,
					["lvl"] = 60,
					["groups"] = {
						objective(1, {	-- 0/30 Hive'Regal Burrower slain
							["provider"] = { "n", 11731 },	-- Hive'Regal Burrower
						}),
						CENARION_COMBAT_BADGE,
					},
				}),
				q(8776, {	-- Target: Hive'Regal Slavemakers
					["provider"] = { "i", 21255 },	-- Combat Task Briefing X
					["repeatable"] = true,
					["lvl"] = 60,
					["groups"] = {
						objective(1, {	-- 0/30 Hive'Regal Slavemaker slain
							["provider"] = { "n", 11733 },	-- Hive'Regal Slavemaker
						}),
						CENARION_COMBAT_BADGE,
					},
				}),
				q(8775, {	-- Target: Hive'Regal Spitfires
					["provider"] = { "i", 21253 },	-- Combat Task Briefing IX
					["repeatable"] = true,
					["lvl"] = 60,
					["groups"] = {
						objective(1, {	-- 0/30 Hive'Regal Spitfire slain
							["provider"] = { "n", 11732 },	-- Hive'Regal Spitfire
						}),
						CENARION_COMBAT_BADGE,
					},
				}),
				q(8539, {	-- Target: Hive'Zora Hive Sisters
					["provider"] = { "i", 21249 },	-- Combat Task Briefing V
					["repeatable"] = true,
					["lvl"] = 60,
					["groups"] = {
						objective(1, {	-- 0/30 Hive'Zora Hive Sister slain
							["provider"] = { "n", 11729 },	-- Hive'Zora Hive Sister
						}),
						CENARION_COMBAT_BADGE,
					},
				}),
				q(8773, {	-- Target: Hive'Zora Reavers
					["provider"] = { "i", 21248 },	-- Combat Task Briefing IV
					["repeatable"] = true,
					["lvl"] = 60,
					["groups"] = {
						objective(1, {	-- 0/30 Hive'Zora Reaver slain
							["provider"] = { "n", 11728 },	-- Hive'Zora Reaver
						}),
						CENARION_COMBAT_BADGE,
					},
				}),
				q(8687, {	-- Target: Hive'Zora Tunnelers
					["provider"] = { "i", 21251 },	-- Combat Task Briefing VII
					["repeatable"] = true,
					["lvl"] = 60,
					["groups"] = {
						objective(1, {	-- 0/30 Hive'Zora Tunneler slain
							["provider"] = { "n", 11726 },	-- Hive'Zora Tunneler
						}),
						CENARION_COMBAT_BADGE,
					},
				}),
				q(8772, {	-- Target: Hive'Zora Waywatchers
					["provider"] = { "i", 21250 },	-- Combat Task Briefing VI
					["repeatable"] = true,
					["lvl"] = 60,
					["groups"] = {
						objective(1, {	-- 0/30 Hive'Zora Waywatcher slain
							["provider"] = { "n", 11725 },	-- Hive'Zora Waywatcher
						}),
						CENARION_COMBAT_BADGE,
					},
				}),
				q(8315, {	-- The Calling
					["sourceQuest"] = 8314,	-- Unraveling the Mystery
					["qg"] = 15183,	-- Geologist Larksbane
					["coord"] = { 49.7, 37.5, MAP.SILITHUS },
					["lvl"] = 54,
					["groups"] = {
						objective(1, {	-- 0/1 Crystal Unlocking Mechanism
							["providers"] = {
								{ "i", 20465 },	-- Crystal Unlocking Mechanism
								{ "i", 20464 },	-- Glyphs of Calling
							},
							["coord"] = { 48.5, 58.5, MAP.SILITHUS },
							["cr"] = 14862,	-- Emissary Roman'khan
						}),
					},
				}),
				q(8285, {	-- The Deserter
					["sourceQuest"] = 8284,	-- The Twilight Mystery
					["providers"] = {
						{ "n", 15183 },	-- Geologist Larksbane
						{ "i", 20401 },	-- Restored Twilight Tablet
					},
					["coord"] = { 49.7, 37.5, MAP.SILITHUS },
					["lvl"] = 54,
				}),
				q(8538, {	-- The Four Dukes
					["provider"] = { "i", 20948 },	-- Tactical Task Briefing V
					["repeatable"] = true,
					["lvl"] = 60,
					["groups"] = {
						objective(1, {	-- 0/1 The Duke of Cynders slain
							["provider"] = { "n", 15206 },	-- The Duke of Cynders <Abyssal Council>
						}),
						objective(2, {	-- 0/1 The Duke of Fathoms slain
							["provider"] = { "n", 15207 },	-- The Duke of Fathoms <Abyssal Council>
						}),
						objective(3, {	-- 0/1 The Duke of Zephyrs slain
							["provider"] = { "n", 15220 },	-- The Duke of Zephyrs <Abyssal Council>
						}),
						objective(4, {	-- 0/1 The Duke of Shards slain
							["provider"] = { "n", 15208 },	-- The Duke of Shards <Abyssal Council>
						}),
						i(21508),	-- Mark of Cenarius
					},
				}),
				q(8778, {	-- The Ironforge Brigade Needs Explosives!
					["provider"] = { "i", 21257 },	-- Logistics Task Briefing IV (A)
					["cost"] = {
						{ "i", 15992, 10 },	-- Dense Blasting Powder
						{ "i", 9061, 5 },	-- Goblin Rocket Fuel
						{ "i", 8956, 6 },	-- Oil of Immolation
					},
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					["lvl"] = 60,
					["groups"] = {
						CENARION_LOGISTICS_BADGE,
						FOLLOWUP_LOGISTICS_ASSIGNMENT_A,
					},
				}),
				q(8785, {	-- The Orgrimmar Legion Needs Mojo!
					["provider"] = { "i", 21258 },	-- Logistics Task Briefing IV (H)
					["cost"] = {
						{ "i", 8152, 6 },	-- Flask of Big Mojo
						{ "i", 8956, 8 },	-- Oil of Immolation
						{ "i", 12804, 6 },	-- Powerful Mojo
					},
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["lvl"] = 60,
					["groups"] = {
						CENARION_LOGISTICS_BADGE,
						FOLLOWUP_LOGISTICS_ASSIGNMENT_H,
					},
				}),
				q(9023, {	-- The Perfect Poison
					["qg"] = 16091,	-- Dirk Thunderwood
					["coord"] = { 52.1, 39.1, MAP.SILITHUS },
					["maps"] = { MAP.RUINS_OF_AHNQIRAJ, MAP.ZULGURUB },
					["lvl"] = 60,
					["groups"] = {
						objective(1, {	-- 0/1 Venoxis's Venom Sac
							["provider"] = { "i", 22216 },	-- Venoxis's Venom Sac
						}),
						objective(2, {	-- 0/1 Kurinnaxx's Venom Sac
							["provider"] = { "i", 22217 },	-- Kurinnaxx's Venom Sac
						}),
						i(22378),	-- Ravenholdt Slicer
						i(22379),	-- Shivsprocket's Shiv
						i(22377),	-- The Thunderwood Poker
						i(22348),	-- Doomulus Prime
						i(22347),	-- Fahrad's Reloading Repeater
						i(22380),	-- Simone's Cultivating Hammer
					},
				}),
				q(1125, {	-- The Spirits of Southwind
					["sourceQuest"] = 1124,	-- Wasteland
					["qg"] = 13220,	-- Layo Starstrike
					["coord"] = { 81.8, 18.8, MAP.SILITHUS },
					["lvl"] = 54,
					["groups"] = {
						objective(1, {	-- 0/8 Tortured Druid slain
							["provider"] = { "n", 12178 },	-- Tortured Druid
						}),
						objective(2, {	-- 0/8 Tortured Sentinel slain
							["provider"] = { "n", 12179 },	-- Tortured Sentinel
						}),
					},
				}),
				q(8279, {	-- The Twilight Lexicon
					["sourceQuest"] = 8285,	-- The Deserter
					["qg"] = 15194,	-- Hermit Ortell
					["coord"] = { 67.0, 69.6, MAP.SILITHUS },
					["lvl"] = 54,
					["groups"] = {
						objective(1, {	-- 0/1 Twilight Lexicon - Chapter 1
							["provider"] = { "i", 20394 },	-- Twilight Lexicon - Chapter 1
							["coord"] = { 26.3, 36.6, MAP.SILITHUS },
							["cr"] = 15200,	-- Twilight Keeper Mayna <Twilight's Hammer>
						}),
						objective(2, {	-- 0/1 Twilight Lexicon - Chapter 2
							["provider"] = { "i", 20395 },	-- Twilight Lexicon - Chapter 2
							["coord"] = { 16.1, 86.4, MAP.SILITHUS },
							["cr"] = 11803,	-- Twilight Keeper Exeter <Twilight's Hammer>
						}),
						objective(3, {	-- 0/1 Twilight Lexicon - Chapter 3
							["provider"] = { "i", 20396 },	-- Twilight Lexicon - Chapter 3
							["coord"] = { 40.9, 42.2, MAP.SILITHUS },
							["cr"] = 11804,	-- Twilight Keeper Havunth <Twilight's Hammer>
						}),
					},
				}),
				q(8284, {	-- The Twilight Mystery
					["qg"] = 15183,	-- Geologist Larksbane
					["coord"] = { 49.7, 37.5, MAP.SILITHUS },
					["lvl"] = 54,
					["groups"] = {
						objective(1, {	-- 0/8 Twilight Tablet Fragment
							["providers"] = {
								{ "i",  20378 },	-- Twilight Tablet Fragment
								{ "o", 180436 },	-- Twilight Tablet Fragment
								{ "o", 180501 },	-- Twilight Tablet Fragment
							},
							["coord"] = { 23.4, 11.8, MAP.SILITHUS },
						}),
					},
				}),
				q(8829, {	-- The Ultimate Deception
					["provider"] = { "i", 21514 },	-- Logistics Task Briefing XI
					["cost"] = {
						{ "i", 12735, 3 },	-- Frayed Abomination Stitching
						{ "i", 12753, 1 },	-- Skin of Shadow
						{ "i", 20407, 1 },	-- Twilight Cultist Robe
					},
					["repeatable"] = true,
					["lvl"] = 60,
					["groups"] = {
						i(21515),	-- Mark of Remulos
					},
				}),
				q(8323, {	-- True Believers
					["sourceQuest"] = 8279,	-- The Twilight Lexicon
					["qg"] = 15194,	-- Hermit Ortell
					["coord"] = { 67.0, 69.6, MAP.SILITHUS },
					["cost"] = { { "i", 20404, 10 } },	-- Encrypted Twilight Text
					["lvl"] = 54,
				}),
				q(8498, {	-- Twilight Battle Orders
					["provider"] = { "i", 20943 },	-- Tactical Task Briefing X
					["repeatable"] = true,
					["lvl"] = 60,
					["groups"] = {
						objective(1, {	-- 0/1 Twilight Battle Orders
							["provider"] = { "i", 20803 },	-- Twilight Battle Orders
							["cr"] = 15308,	-- Twilight Prophet <Twilight's Hammer>
						}),
						CENARION_TACTICAL_BADGE,
						TACTICAL_ASSIGNMENT,
					},
				}),
				q(8320, {	-- Twilight Geolords
					["qg"] = 15270,	-- Huum Wildmane
					["coord"] = { 48.7, 37.9, MAP.SILITHUS },
					["lvl"] = 60,
					["groups"] = {
						objective(1, {	-- 0/10 Twilight Geolord slain
							["provider"] = { "n", 11881 },	-- Twilight Geolord
						}),
					},
				}),
				q(8740, {	-- Twilight Marauders
					["provider"] = { "i", 20944 },	-- Tactical Task Briefing IX
					["repeatable"] = true,
					["lvl"] = 60,
					["groups"] = {
						objective(1, {	-- 0/1 Twilight Marauder Morna slain
							["provider"] = { "n", 15541 },	-- Twilight Marauder Morna <Twilight's Hammer>
						}),
						objective(2, {	-- 0/5 Twilight Marauder slain
							["provider"] = { "n", 15542 },	-- Twilight Marauder <Twilight's Hammer>
						}),
						CENARION_TACTICAL_BADGE,
						FOLLOWUP_TACTICAL_ASSIGNMENT,
					},
				}),
				q(8342, {	-- Twilight Ring of Lordship
					["sourceQuest"] = 8341,	-- Lords of the Council
					["qg"] = 15282,	-- Aurel Goldleaf
					["coord"] = { 52.0, 38.2, MAP.SILITHUS },
					["minReputation"] = { FACTION_CENARION_CIRCLE, REVERED },	-- Cenarion Circle, Revered.
					["cost"] = {
						{ "i", 14344, 5 },	-- Large Brilliant Shard
						{ "i", 20514, 3 },	-- Abyssal Signet
					},
					["repeatable"] = true,
					["lvl"] = 54,
					["groups"] = {
						i(20451),	-- Twilight Cultist Ring of Lordship
					},
				}),
				q(6844, {	-- Umber, Archivist
					["sourceQuest"] = 1126,	-- Hive in the Tower
					["providers"] = {
						{ "n", 13220 },	-- Layo Starstrike
						{ "i", 17346 },	-- Encrusted Silithid Object
					},
					["coord"] = { 81.8, 18.8, MAP.SILITHUS },
					["maps"] = { MAP.MOONGLADE },
					["lvl"] = 54,
				}),
				q(8782, {	-- Uniform Supplies (A)
					["provider"] = { "i", 21262 },	-- Logistics Task Briefing VIII (A)
					["cost"] = {
						{ "i", 14048, 2 },	-- Bolt of Runecloth
						{ "i", 14227, 1 },	-- Ironweb Spider Silk
						{ "i", 14342, 1 },	-- Mooncloth
					},
					["repeatable"] = true,
					["lvl"] = 60,
					["groups"] = {
						CENARION_LOGISTICS_BADGE,
						LOGISTICS_ASSIGNMENT_A,
					},
				}),
				q(8808, {	-- Uniform Supplies (H)
					["provider"] = { "i", 21384 },	-- Logistics Task Briefing VIII (H)
					["cost"] = {
						{ "i", 14048, 2 },	-- Bolt of Runecloth
						{ "i", 14227, 1 },	-- Ironweb Spider Silk
						{ "i", 14342, 1 },	-- Mooncloth
					},
					["repeatable"] = true,
					["lvl"] = 60,
					["groups"] = {
						CENARION_LOGISTICS_BADGE,
						LOGISTICS_ASSIGNMENT_H,
					},
				}),
				q(8314, {	-- Unraveling the Mystery
					["sourceQuests"] = {
						8310,	-- Breaking the Code
						8309,	-- Glyph Chasing
					},
					["providers"] = {
						{ "n", 15170 },	-- Rutgar Glyphshaper
						{ "i", 20463 },	-- Glyphed Crystal Prism
					},
					["coord"] = { 41.2, 88.4, MAP.SILITHUS },
					["lvl"] = 58,
				}),
				q(8572, {	-- Veteran's Battlegear
					["sourceQuest"] = 8800,	-- Cenarion Battlegear
					["qg"] = 15176,	-- Vargus
					["coord"] = { 51.2, 38.9, MAP.SILITHUS },
					["minReputation"] = { FACTION_CENARION_CIRCLE, HONORED },	-- Cenarion Circle, Honored.
					["cost"] = {
						{ "i", 20802, 7 },	-- Cenarion Combat Badge
						{ "i", 20800, 4 },	-- Cenarion Logistics Badge
						{ "i", 20801, 4 },	-- Cenarion Tactical Badge
					},
					["repeatable"] = true,
					["lvl"] = 54,
					["groups"] = {
						i(21181),	-- Grace of Earth
						i(21182),	-- Band of Earthen Might
						i(21183),	-- Earthpower Vest
					},
				}),
				q(8548, {	-- Volunteer's Battlegear
					["sourceQuest"] = 8800,	-- Cenarion Battlegear
					["qg"] = 15176,	-- Vargus
					["coord"] = { 51.2, 38.9, MAP.SILITHUS },
					["minReputation"] = { FACTION_CENARION_CIRCLE, FRIENDLY },	-- Cenarion Circle, Friendly.
					["cost"] = {
						{ "i", 20802, 5 },	-- Cenarion Combat Badge
						{ "i", 20800, 3 },	-- Cenarion Logistics Badge
						{ "i", 20801, 7 },	-- Cenarion Tactical Badge
					},
					["repeatable"] = true,
					["lvl"] = 54,
					["groups"] = {
						i(21178),	-- Gloves of Earthen Power
						i(21179),	-- Band of Earthen Wrath
						i(21187),	-- Earthweave Cloak
					},
				}),
				q(8321, {	-- Vyral the Vile
					["sourceQuest"] = 8320,	-- Twilight Geolords
					["qg"] = 15270,	-- Huum Wildmane
					["coord"] = { 48.7, 37.9, MAP.SILITHUS },
					["lvl"] = 60,
					["groups"] = {
						objective(1, {	-- 0/1 Vyral's Signet Ring
							["provider"] = { "i", 20466 },	-- Vyral's Signet Ring
							["coord"] = { 72.4, 15.6, MAP.SILITHUS },
							["cr"] = 15202,	-- Vyral the Vile
						}),
						i(20650),	-- Desert Wind Gauntlets
						i(20649),	-- Sunprism Pendant
					},
				}),
				q(8283, {	-- Wanted - Deathclasp, Terror of the Sands
					["provider"] = { "o", 180448 },	-- Wanted Poster: Deathclasp
					["coord"] = { 51.3, 38.3, MAP.SILITHUS },
					["lvl"] = 54,
					["groups"] = {
						objective(1, {	-- 0/1 Deathclasp's Pincer
							["provider"] = { "i", 20385 },	-- Deathclasp's Pincer
							["coord"] = { 45.0, 91.0, MAP.SILITHUS },
							["cr"] = 15196,	-- Deathclasp
						}),
						i(20646),	-- Sandstrider's Mark
						i(20647),	-- Black Crystal Dagger
					},
				}),
			}),
			n(RARES, {
				o(180456, {	-- Lesser Wind Stone
					["description"] =
						"Summons one of 4 Abyssal Templars. The ritual requires a Twilight Trappings set. To guarantee that a specific Templar is summoned, a Crest of Beckoning can be used.",
					["cost"] = {
						{ "i", 20408, 1 },	-- Twilight Cultist Cowl
						{ "i", 20406, 1 },	-- Twilight Cultist Mantle
						{ "i", 20407, 1 },	-- Twilight Cultist Robe
					},
					["coords"] = {
						{ 20.5, 86.2, MAP.SILITHUS },
						{ 18.2, 81.1, MAP.SILITHUS },
						{ 39.0, 42.4, MAP.SILITHUS },
						{ 38.3, 46.5, MAP.SILITHUS },
						{ 27.9, 30.6, MAP.SILITHUS },
						{ 24.4, 36.0, MAP.SILITHUS },
					},
					["groups"] = {
						i(20513, {	-- Abyssal Crest
							["crs"] = {
								15211,	-- Azure Templar <Abyssal Council>
								15209,	-- Crimson Templar <Abyssal Council>
								15307,	-- Earthen Templar <Abyssal Council>
								15212,	-- Hoary Templar <Abyssal Council>
							},
						}),
						n(15211, {	-- Azure Templar <Abyssal Council>
							["cost"] = { { "i", 20420, 1 } },	-- Crest of Beckoning: Water
							["groups"] = {
								i(20654),	-- Amethyst War Staff
								i(20652),	-- Abyssal Cloth Slippers
								i(20653),	-- Abyssal Plate Gauntlets
							},
						}),
						n(15209, {	-- Crimson Templar <Abyssal Council>
							["cost"] = { { "i", 20416, 1 } },	-- Crest of Beckoning: Fire
							["groups"] = {
								i(20657),	-- Crystal Tipped Stiletto
								i(20655),	-- Abyssal Cloth Handwraps
								i(20656),	-- Abyssal Mail Sabatons
							},
						}),
						n(15307, {	-- Earthen Templar <Abyssal Council>
							["cost"] = { { "i", 20419, 1 } },	-- Crest of Beckoning: Stone
							["groups"] = {
								i(20663),	-- Deep Strike Bow
								i(20661),	-- Abyssal Leather Gloves
								i(20662),	-- Abyssal Plate Greaves
							},
						}),
						n(15212, {	-- Hoary Templar <Abyssal Council>
							["cost"] = { { "i", 20418, 1 } },	-- Crest of Beckoning: Thunder
							["groups"] = {
								i(20660),	-- Stonecutting Glaive
								i(20658),	-- Abyssal Leather Boots
								i(20659),	-- Abyssal Mail Handguards
							},
						}),
					},
				}),
				o(180461, {	-- Wind Stone
					["description"] =
						"Summons one of 4 Abyssal Dukes. The ritual requires a Twilight Trappings set and a medallion of station. To guarantee that a specific Duke is summoned, a Signet of Beckoning can be used.",
					["cost"] = {
						{ "i", 20422, 1 },	-- Twilight Cultist Medallion of Station
						{ "i", 20408, 1 },	-- Twilight Cultist Cowl
						{ "i", 20406, 1 },	-- Twilight Cultist Mantle
						{ "i", 20407, 1 },	-- Twilight Cultist Robe
					},
					["coords"] = {
						{ 17.2, 84.8, MAP.SILITHUS },
						{ 37.6, 44.8, MAP.SILITHUS },
						{ 24.7, 32.7, MAP.SILITHUS },
					},
					["groups"] = {
						i(20514, {	-- Abyssal Signet
							["crs"] = {
								15206,	-- The Duke of Cynders <Abyssal Council>
								15207,	-- The Duke of Fathoms <Abyssal Council>
								15208,	-- The Duke of Shards <Abyssal Council>
								15220,	-- The Duke of Zephyrs <Abyssal Council>
							},
						}),
						n(15206, {	-- The Duke of Cynders <Abyssal Council>
							["cost"] = { { "i", 20432, 1 } },	-- Signet of Beckoning: Fire
							["groups"] = {
								i(21989),	-- Cinder of Cynders
								i(20666),	-- Hardened Steel Warhammer
								i(20664),	-- Abyssal Cloth Sash
								i(20665),	-- Abyssal Leather Leggings
							},
						}),
						n(15207, {	-- The Duke of Fathoms <Abyssal Council>
							["cost"] = { { "i", 20436, 1 } },	-- Signet of Beckoning: Water
							["groups"] = {
								i(20669),	-- Darkstone Claymore
								i(20667),	-- Abyssal Leather Belt
								i(20668),	-- Abyssal Mail Legguards
							},
						}),
						n(15208, {	-- The Duke of Shards <Abyssal Council>
							["cost"] = { { "i", 20435, 1 } },	-- Signet of Beckoning: Stone
							["groups"] = {
								i(20672),	-- Sparkling Crystal Wand
								i(20670),	-- Abyssal Mail Clutch
								i(20671),	-- Abyssal Plate Legplates
							},
						}),
						n(15220, {	-- The Duke of Zephyrs <Abyssal Council>
							["cost"] = { { "i", 20433, 1 } },	-- Signet of Beckoning: Thunder
							["groups"] = {
								i(20675),	-- Soulrender
								i(20674),	-- Abyssal Cloth Pants
								i(20673),	-- Abyssal Plate Girdle
							},
						}),
					},
				}),
				o(180466, {	-- Greater Wind Stone
					["description"] =
						"Summons one of 4 Abyssal High Council bosses. The ritual requires a Twilight Trappings set, a medallion of station, and a ring of lordship. To guarantee that a specific High Council is summoned, a Scepter of Beckoning can be used.",
					["cost"] = {
						{ "i", 20451, 1 },	-- Twilight Cultist Ring of Lordship
						{ "i", 20422, 1 },	-- Twilight Cultist Medallion of Station
						{ "i", 20408, 1 },	-- Twilight Cultist Cowl
						{ "i", 20406, 1 },	-- Twilight Cultist Mantle
						{ "i", 20407, 1 },	-- Twilight Cultist Robe
					},
					["coords"] = {
						{ 18.6, 83.5, MAP.SILITHUS },
						{ 39.6, 45.1, MAP.SILITHUS },
						{ 25.6, 34.0, MAP.SILITHUS },
					},
					["groups"] = {
						i(20515, {	-- Abyssal Scepter
							["crs"] = {
								15205,	-- Baron Kazum <Abyssal High Council>
								15204,	-- High Marshal Whirlaxis <Abyssal High Council>
								15305,	-- Lord Skwol <Abyssal High Council>
								15203,	-- Prince Skaldrenox <Abyssal High Council>
							},
						}),
						n(15205, {	-- Baron Kazum <Abyssal High Council>
							["cost"] = { { "i", 20449, 1 } },	-- Scepter of Beckoning: Stone
							["groups"] = {
								i(20688),	-- Earthen Guard
								i(20686),	-- Abyssal Cloth Amice
								i(20687),	-- Abyssal Plate Vambraces
							},
						}),
						n(15204, {	-- High Marshal Whirlaxis <Abyssal High Council>
							["cost"] = { { "i", 20448, 1 } },	-- Scepter of Beckoning: Thunder
							["groups"] = {
								i(20691),	-- Windshear Cape
								i(20690),	-- Abyssal Cloth Wristbands
								i(20689),	-- Abyssal Leather Shoulders
							},
						}),
						n(15305, {	-- Lord Skwol <Abyssal High Council>
							["cost"] = { { "i", 20450, 1 } },	-- Scepter of Beckoning: Water
							["groups"] = {
								i(20685),	-- Wavefront Necklace
								i(20684),	-- Abyssal Mail Armguards
								i(20683),	-- Abyssal Plate Epaulets
							},
						}),
						n(15203, {	-- Prince Skaldrenox <Abyssal High Council>
							["cost"] = { { "i", 20447, 1 } },	-- Scepter of Beckoning: Fire
							["groups"] = {
								i(20682),	-- Elemental Focus Band
								i(20681),	-- Abyssal Leather Bracers
								i(20680),	-- Abyssal Mail Pauldrons
							},
						}),
					},
				}),
				n(14472, {	-- Gretheer
					["coords"] = {
						{ 28.8, 42.2, MAP.SILITHUS },
						{ 39.8, 55.2, MAP.SILITHUS },
						{ 48.8, 62.6, MAP.SILITHUS },
						{ 61.8, 64.4, MAP.SILITHUS },
					},
				}),
				n(14477, {	-- Grubthor
					["coords"] = {
						{ 27.2, 82.0, MAP.SILITHUS },
						{ 36.2, 71.6, MAP.SILITHUS },
						{ 48.6, 67.2, MAP.SILITHUS },
						{ 44.8, 80.2, MAP.SILITHUS },
					},
				}),
				n(14478, {	-- Huricanian
					["coords"] = {
						{ 29.4, 24.4, MAP.SILITHUS },
						{ 29.8, 19.8, MAP.SILITHUS },
						{ 28.2, 16.0, MAP.SILITHUS },
						{ 27.0, 13.8, MAP.SILITHUS },
						{ 24.2, 13.0, MAP.SILITHUS },
						{ 21.4, 17.0, MAP.SILITHUS },
						{ 21.4, 22.6, MAP.SILITHUS },
						{ 22.2, 26.2, MAP.SILITHUS },
						{ 23.0, 28.8, MAP.SILITHUS },
						{ 26.0, 26.8, MAP.SILITHUS },
					},
				}),
				n(14476, {	-- Krellack
					["coords"] = {
						{ 59.8, 19.6, MAP.SILITHUS },
						{ 65.8, 30.0, MAP.SILITHUS },
						{ 62.8, 42.4, MAP.SILITHUS },
						{ 69.6, 41.0, MAP.SILITHUS },
					},
				}),
				n(14473, {	-- Lapress
					["coords"] = {
						{ 54.4, 83.8, MAP.SILITHUS },
						{ 55.2, 89.8, MAP.SILITHUS },
						{ 63.8, 91.6, MAP.SILITHUS },
						{ 61.6, 84.0, MAP.SILITHUS },
						{ 64.2, 83.6, MAP.SILITHUS },
						{ 64.8, 82.4, MAP.SILITHUS },
						{ 64.2, 79.4, MAP.SILITHUS },
					},
				}),
				n(14475, {	-- Rex Ashil
					["coords"] = {
						{ 47.2, 23.8, MAP.SILITHUS },
						{ 47.6, 26.6, MAP.SILITHUS },
						{ 46.0, 28.4, MAP.SILITHUS },
					},
				}),
				n(14471, {	-- Setis
					["coords"] = {
						{ 48.0, 82.6, MAP.SILITHUS },
						{ 22.2, 80.6, MAP.SILITHUS },
						{ 27.8, 86.6, MAP.SILITHUS },
						{ 22.6, 87.2, MAP.SILITHUS },
					},
				}),
				n(14479, {	-- Twilight Lord Everun <Twilight's Hammer>
					["coords"] = {
						{ 25.6, 33.4, MAP.SILITHUS },
						{ 40.2, 44.6, MAP.SILITHUS },
						{ 19.8, 83.8, MAP.SILITHUS },
					},
					["groups"] = {
						i(20451),	-- Twilight Cultist Ring of Lordship
					},
				}),
				n(14474, {	-- Zora
					["coords"] = {
						{ 20.2, 58.2, MAP.SILITHUS },
						{ 23.6, 61.8, MAP.SILITHUS },
						{ 17.6, 65.8, MAP.SILITHUS },
						{ 24.0, 71.2, MAP.SILITHUS },
					},
				}),
			}),
			n(REWARDS, {
				["description"] = "These are rewarded from multiple quests in the zone. Refer to the individual item tooltips for more information.",
				["groups"] = {
					i(20808, {	-- Combat Assignment
						i(22648, {	-- Hive'Ashi Dossier
							i(21749),	-- Combat Task Briefing I
							i(21750),	-- Combat Task Briefing II
							i(20942),	-- Combat Task Briefing III
							i(20941),	-- Combat Task Briefing XII
						}),
						i(22649, {	-- Hive'Regal Dossier
							i(21253),	-- Combat Task Briefing IX
							i(21252),	-- Combat Task Briefing VIII
							i(21255),	-- Combat Task Briefing X
							i(21256),	-- Combat Task Briefing XI
						}),
						i(22650, {	-- Hive'Zora Dossier
							i(21248),	-- Combat Task Briefing IV
							i(21249),	-- Combat Task Briefing V
							i(21250),	-- Combat Task Briefing VI
							i(21251),	-- Combat Task Briefing VII
						}),
					}),
					i(20419, {	-- Crest of Beckoning: Earth
						["cost"] = {
							{ "i", 20527, 1 },	-- Scroll: Create Crest of Beckoning (Earth)
							{ "i", 8170, 1 },	-- Rugged Leather
							{ "i", 12365, 1 },	-- Dense Stone
						},
					}),
					i(20416, {	-- Crest of Beckoning: Fire
						["cost"] = {
							{ "i", 20518, 1 },	-- Scroll: Create Crest of Beckoning (Fire)
							{ "i", 8170, 1 },	-- Rugged Leather
							{ "i", 4625, 1 },	-- Firebloom
						},
					}),
					i(20418, {	-- Crest of Beckoning: Thunder
						["cost"] = {
							{ "i", 20526, 1 },	-- Scroll: Create Crest of Beckoning (Thunder)
							{ "i", 8170, 1 },	-- Rugged Leather
							{ "i", 7069, 1 },	-- Elemental Air
						},
					}),
					i(20420, {	-- Crest of Beckoning: Water
						["cost"] = {
							{ "i", 20528, 1 },	-- Scroll: Create Crest of Beckoning (Water)
							{ "i", 8170, 1 },	-- Rugged Leather
							{ "i", 4791, 1 },	-- Enchanted Water
						},
					}),
					i(20449, {	-- Scepter of Beckoning: Stone
						["cost"] = {
							{ "i", 20543, 1 },	-- Scroll: Create Scepter of Beckoning (Earth)
							{ "i", 11144, 1 },	-- Truesilver Rod
							{ "i", 12365, 20 },	-- Dense Stone
						},
					}),
					i(20447, {	-- Scepter of Beckoning: Fire
						["cost"] = {
							{ "i", 20540, 1 },	-- Scroll: Create Scepter of Beckoning (Fire)
							{ "i", 11144, 1 },	-- Truesilver Rod
							{ "i", 4625, 20 },	-- Firebloom
						},
					}),
					i(20448, {	-- Scepter of Beckoning: Thunder
						["cost"] = {
							{ "i", 20542, 1 },	-- Scroll: Create Scepter of Beckoning (Thunder)
							{ "i", 11144, 1 },	-- Truesilver Rod
							{ "i", 7069, 20 },	-- Elemental Air
						},
					}),
					i(20450, {	-- Scepter of Beckoning: Water
						["cost"] = {
							{ "i", 20544, 1 },	-- Scroll: Create Scepter of Beckoning (Water)
							{ "i", 11144, 1 },	-- Truesilver Rod
							{ "i", 4791, 20 },	-- Enchanted Water
						},
					}),
					i(20435, {	-- Signet of Beckoning: Stone
						["cost"] = {
							{ "i", 20533, 1 },	-- Scroll: Create Signet of Beckoning (Earth)
							{ "i", 20520, 1 },	-- Dark Rune
							{ "i", 12365, 5 },	-- Dense Stone
						},
					}),
					i(20432, {	-- Signet of Beckoning: Fire
						["cost"] = {
							{ "i", 20531, 1 },	-- Scroll: Create Signet of Beckoning (Fire)
							{ "i", 20520, 1 },	-- Dark Rune
							{ "i", 4625, 5 },	-- Firebloom
						},
					}),
					i(20433, {	-- Signet of Beckoning: Thunder
						["cost"] = {
							{ "i", 20532, 1 },	-- Scroll: Create Signet of Beckoning (Thunder)
							{ "i", 20520, 1 },	-- Dark Rune
							{ "i", 7069, 5 },	-- Elemental Air
						},
					}),
					i(20436, {	-- Signet of Beckoning: Water
						["cost"] = {
							{ "i", 20535, 1 },	-- Scroll: Create Signet of Beckoning (Water)
							{ "i", 20520, 1 },	-- Dark Rune
							{ "i", 4791, 5 },	-- Enchanted Water
						},
					}),
					i(20469, {	-- Decoded True Believer Clippings
						["description"] = "This will arrive in your mailbox approximately 12-24 hours if either of the quests are turned in.",
						["sourceQuests"] = {
							8324,	-- Still Believing
							8323,	-- True Believers
						},
						["cost"] = { { "i", 20404, 10 } },	-- Encrypted Twilight Text
						["groups"] = {
							i(20547),	-- Pattern: Runed Stygian Boots (RECIPE!)
							i(20548),	-- Pattern: Runed Stygian Belt (RECIPE!)
							i(20546),	-- Pattern: Runed Stygian Leggings (RECIPE!)
							i(20554),	-- Plans: Darkrune Breastplate (RECIPE!)
							i(20553),	-- Plans: Darkrune Gauntlets (RECIPE!)
							i(20555),	-- Plans: Darkrune Helm (RECIPE!)
							i(20527),	-- Scroll: Create Crest of Beckoning (Earth)
							i(20518),	-- Scroll: Create Crest of Beckoning (Fire)
							i(20526),	-- Scroll: Create Crest of Beckoning (Thunder)
							i(20528),	-- Scroll: Create Crest of Beckoning (Water)
							i(20543),	-- Scroll: Create Scepter of Beckoning (Earth)
							i(20540),	-- Scroll: Create Scepter of Beckoning (Fire)
							i(20542),	-- Scroll: Create Scepter of Beckoning (Thunder)
							i(20544),	-- Scroll: Create Scepter of Beckoning (Water)
							i(20533),	-- Scroll: Create Signet of Beckoning (Earth)
							i(20531),	-- Scroll: Create Signet of Beckoning (Fire)
							i(20532),	-- Scroll: Create Signet of Beckoning (Thunder)
							i(20535),	-- Scroll: Create Signet of Beckoning (Water)
						},
					}),
					i(20805, {	-- Followup Logistics Assignment (A)
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							i(20807),	-- Logistics Task Briefing I (A)
							i(20939),	-- Logistics Task Briefing II (A)
							i(20940),	-- Logistics Task Briefing III (A)
							i(21262),	-- Logistics Task Briefing VIII (A)
							i(21265),	-- Logistics Task Briefing IX (A)
							i(21514),	-- Logistics Task Briefing XI
						},
					}),
					i(21386, {	-- Followup Logistics Assignment (H)
						["races"] = HORDE_ONLY,
						["groups"] = {
							i(21378),	-- Logistics Task Briefing I (H)
							i(21379),	-- Logistics Task Briefing II (H)
							i(21380),	-- Logistics Task Briefing III (H)
							i(21384),	-- Logistics Task Briefing VIII (H)
							i(21381),	-- Logistics Task Briefing IX (H)
							i(21514),	-- Logistics Task Briefing XI
						},
					}),
					i(21133, {	-- Followup Tactical Assignment
						i(21245),	-- Tactical Task Briefing I
						i(20945),	-- Tactical Task Briefing II
						i(20947),	-- Tactical Task Briefing IV
						i(20948),	-- Tactical Task Briefing V
						i(21167),	-- Tactical Task Briefing VIII
						i(20943),	-- Tactical Task Briefing X
					}),
					i(21132, {	-- Logistics Assignment (A)
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							i(21257),	-- Logistics Task Briefing IV (A)
							i(21259),	-- Logistics Task Briefing V (A)
							i(21260),	-- Logistics Task Briefing VI (A)
							i(21263),	-- Logistics Task Briefing VII (A)
							i(20806),	-- Logistics Task Briefing X (A)
						},
					}),
					i(21266, {	-- Logistics Assignment (H)
						["races"] = HORDE_ONLY,
						["groups"] = {
							i(21258),	-- Logistics Task Briefing IV (H)
							i(21382),	-- Logistics Task Briefing V (H)
							i(21261),	-- Logistics Task Briefing VI (H)
							i(21264),	-- Logistics Task Briefing VII (H)
							i(21385),	-- Logistics Task Briefing X (H)
						},
					}),
					i(20809, {	-- Tactical Assignment
						i(21245),	-- Tactical Task Briefing I
						i(21751),	-- Tactical Task Briefing III
						i(20944),	-- Tactical Task Briefing IX
						i(21165),	-- Tactical Task Briefing VI
						i(21166),	-- Tactical Task Briefing VII
					}),
				},
			}),
			n(VENDORS, {
				n(15293, {	-- Aendel Windspear
					["coord"] = { 62.6, 49.8, MAP.SILITHUS },
					["groups"] = bubbleDownClassicRep(FACTION_CENARION_CIRCLE, {
						{		-- Neutral
						}, {	-- Friendly
							i(22769),	-- Pattern: Bramblewood Belt (RECIPE!)
							i(20509),	-- Pattern: Sandstalker Bracers (RECIPE!)
							i(20506),	-- Pattern: Spitfire Bracers (RECIPE!)
						}, {	-- Honored
							i(22770),	-- Pattern: Bramblewood Boots (RECIPE!)
							i(20507),	-- Pattern: Spitfire Gauntlets (RECIPE!)
							i(20510),	-- Pattern: Sandstalker Gauntlets (RECIPE!)
						}, {	-- Revered
							i(22771),	-- Pattern: Bramblewood Helm (RECIPE!)
							i(20511),	-- Pattern: Sandstalker Breastplate (RECIPE!)
							i(20508),	-- Pattern: Spitfire Breastplate (RECIPE!)
						}, {	-- Exalted
							i(20382),	-- Pattern: Dreamscale Breastplate (RECIPE!)
						},
					}),
				}),
				n(15174, {	-- Calandrath <Innkeeper>
					["coord"] = { 51.8, 39.0, MAP.SILITHUS },
				}),
				n(15419, {	-- Kania <Enchanting Supplies>
					["coord"] = { 52.0, 39.7, MAP.SILITHUS },
					["sym"] = {
						{ "select","itemID",
							20753,	-- Formula: Lesser Wizard Oil (RECIPE!)
							20752,	-- Formula: Minor Mana Oil (RECIPE!)
							20758,	-- Formula: Minor Wizard Oil (RECIPE!)
							22307,	-- Pattern: Enchanted Mageweave Pouch (RECIPE!)
							6342,	-- Formula: Enchant Chest - Minor Mana (RECIPE!)
						},
					},
					["groups"] = {
						i(20732),	-- Formula: Enchant Cloak - Greater Fire Resistance (RECIPE!)
						i(20733),	-- Formula: Enchant Cloak - Greater Nature Resistance (RECIPE!)
						i(20754),	-- Formula: Lesser Mana Oil (RECIPE!)
						i(20755),	-- Formula: Wizard Oil (RECIPE!)
						i(22308),	-- Pattern: Enchanted Runecloth Bag (RECIPE!)
					},
				}),
				n(15175, {	-- Khur Hornstriker <Reagent Vendor>
					["coord"] = { 48.8, 37.0, MAP.SILITHUS },
					["groups"] = bubbleDownClassicRep(FACTION_CENARION_CIRCLE, {
						{		-- Neutral
						}, {	-- Friendly
						}, {	-- Honored
						}, {	-- Revered
						}, {	-- Exalted
						},
					}),
				}),
				n(15179, {	-- Mishta <General Trade Goods Vendor>
					["coord"] = { 49.8, 36.4, MAP.SILITHUS },
					["groups"] = bubbleDownClassicRep(FACTION_CENARION_CIRCLE, {
						{		-- Neutral
						}, {	-- Friendly
							i(22310),	-- Pattern: Cenarion Herb Bag (RECIPE!)
							i(22772,	{	-- Pattern: Sylvan Shoulders (RECIPE!)
							}),
						}, {	-- Honored
							i(22773,	{	-- Pattern: Sylvan Crown (RECIPE!)
							}),
						}, {	-- Revered
							i(22683),	-- Pattern: Gaea's Embrace (RECIPE!)
							i(22312),	-- Pattern: Satchel of Cenarius (RECIPE!)
							i(22774,	{	-- Pattern: Sylvan Vest (RECIPE!)
							}),
						}, {	-- Exalted
						},
					}),
				}),
				n(15176, {	-- Vargus <Blacksmith>
					["coord"] = { 51.2, 38.8, MAP.SILITHUS },
					["groups"] = bubbleDownClassicRep(FACTION_CENARION_CIRCLE, {
						{		-- Neutral
						}, {	-- Friendly
							i(22209),			-- Plans: Heavy Obsidian Belt (RECIPE!)
							i(22768),	-- Plans: Ironvine Belt (RECIPE!)
						}, {	-- Honored
							i(22767),	-- Plans: Ironvine Gloves (RECIPE!)
							i(22214),	-- Plans: Light Obsidian Belt (RECIPE!)
						}, {	-- Revered
							i(22766),	-- Plans: Ironvine Breastplate (RECIPE!)
						}, {	-- Exalted
						},
					}),
				}),
				n(12956, {	-- Zannok Hidepiercer <Leatherworking Supplies>
					["coord"] = { 81.8, 17.8, MAP.SILITHUS },
					["groups"] = {
						i(15724, {	-- Pattern: Heavy Scorpid Bracers (RECIPE!)
							["isLimited"] = true,
						}),
						i(15762, {	-- Pattern: Heavy Scorpid Helm (RECIPE!)
							["isLimited"] = true,
						}),
					},
				}),
			}),
			n(ZONE_DROPS, {
				i(20404, {	-- Encrypted Twilight Text
					["crs"] = {
						15308,	-- Twilight Prophet <Twilight's Hammer>
						15541,	-- Twilight Marauder Morna <Twilight's Hammer>
						11880,	-- Twilight Avenger <Twilight's Hammer>
						15201,	-- Twilight Flamereaver
						11881,	-- Twilight Geolord <Twilight's Hammer>
						11804,	-- Twilight Keeper Havunth <Twilight's Hammer>
						14479,	-- Twilight Lord Everun <Twilight's Hammer>
						15542,	-- Twilight Marauder <Twilight's Hammer>
						11883,	-- Twilight Master <Twilight's Hammer>
						15213,	-- Twilight Overlord <Twilight's Hammer>
						11882,	-- Twilight Stonecaller <Twilight's Hammer>
					},
				}),
				i(20424, {	-- Sandworm Meat
					["crs"] = {
						11740,	-- Dredge Striker
						11741,	-- Dredge Crusher
					},
				}),
				i(20384, {	-- Silithid Carapace Fragment
					["provider"] = { "i", 20402 },	-- Agent of Nozdormu
					["crs"] = {
						13301,	-- Hive'Ashi Ambusher
						11722,	-- Hive'Ashi Defender
						13136,	-- Hive'Ashi Drone
						11723,	-- Hive'Ashi Sandstalker
						11698,	-- Hive'Ashi Stinger
						11724,	-- Hive'Ashi Swarmer
						11721,	-- Hive'Ashi Worker
						11730,	-- Hive'Regal Ambusher
						11731,	-- Hive'Regal Burrower
						11734,	-- Hive'Regal Hive Lord
						11733,	-- Hive'Regal Slavemaker
						11732,	-- Hive'Regal Spitfire
						11729,	-- Hive'Zora Hive Sister
						11728,	-- Hive'Zora Reaver
						11726,	-- Hive'Zora Tunneler
						11727,	-- Hive'Zora Wasp
						11725,	-- Hive'Zora Waywatcher
						15759,	-- Supreme Silithid Flayer
					},
				}),
				i(20408, {	-- Twilight Cultist Cowl
					["crs"] = {
						11880,	-- Twilight Avenger
						15201,	-- Twilight Flamereaver
						11881,	-- Twilight Geolord
						14479,	-- Twilight Lord Everun
						15542,	-- Twilight Marauder
						15541,	-- Twilight Marauder Morna
						11883,	-- Twilight Master
						15213,	-- Twilight Overlord
						11882,	-- Twilight Stonecaller
					},
				}),
				i(20406, {	-- Twilight Cultist Mantle
					["crs"] = {
						11880,	-- Twilight Avenger
						15201,	-- Twilight Flamereaver
						11881,	-- Twilight Geolord
						14479,	-- Twilight Lord Everun
						15542,	-- Twilight Marauder
						15541,	-- Twilight Marauder Morna
						11883,	-- Twilight Master
						15213,	-- Twilight Overlord
						11882,	-- Twilight Stonecaller
					},
				}),
				i(20407, {	-- Twilight Cultist Robe
					["crs"] = {
						11880,	-- Twilight Avenger
						15201,	-- Twilight Flamereaver
						11881,	-- Twilight Geolord
						14479,	-- Twilight Lord Everun
						15542,	-- Twilight Marauder
						15541,	-- Twilight Marauder Morna
						11883,	-- Twilight Master
						15213,	-- Twilight Overlord
						11882,	-- Twilight Stonecaller
					},
				}),
			}),
		},
	}),
}));
