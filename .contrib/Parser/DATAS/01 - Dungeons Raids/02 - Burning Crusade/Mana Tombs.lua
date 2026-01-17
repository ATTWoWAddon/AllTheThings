-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
root(ROOTS.Instances, expansion(EXPANSION.TBC, applyclassicphase(TBC_PHASE_ONE, {
	inst(250, bubbleDownSelf({ ["timeline"] = { ADDED_2_0_1 } }, {	-- Mana Tombs
		["lore"] = "Its inhabitants are mostly ethereals opposing the Consortium. The ethereals of the Consortium cannot enter due to the anti-ethereal wards set by Nexus-Prince Shaffar; they have attempted to breach the gates with little success, but have still tested whether or not their efforts worked - often resulting in the spotaneous combustion (for lack of a better term) of the ethereal tester sent through the gate. According to the Consortium, the ethereals in the Mana-Tombs are robbing it blind and if you wish to do business with them, you'll have to aid in taking out the competition.",
		-- #if BEFORE MOP
		["zone-text-names"] = { [[~DUNGEON_FLOOR_MANATOMBS1]] },	-- Mana Tombs
		-- #endif
		["mapID"] = AUCHINDOUN_MANA_TOMBS,
		["coord"] = { 39.63, 57.67, TEROKKAR_FOREST },	-- Mana-Tombs, Terokkar Forest
		["lvl"] = lvlsquish(61, 61, 15),
		["groups"] = {
			n(QUESTS, {
				q(29583, {	-- Eckert the Mad
					["qg"] = 21400,	-- Eckert
					["coord"] = { 57.6, 53.6, TEROKKAR_FOREST },
					["timeline"] = { ADDED_4_3_0 },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = lvlsquish(64, 64, 15),
				}),
				q(29582, {	-- Grek's Crazy Night
					["qg"] = 19606,	-- Grek
					["coord"] = { 49.8, 45.3, TEROKKAR_FOREST },
					["timeline"] = { ADDED_4_3_0 },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = lvlsquish(64, 64, 15),
				}),
				q(29574, {	-- Intriguing Specimens
					["qg"] = 54694,	-- Mamdy the "Ologist"
					["timeline"] = { ADDED_4_3_0 },
					["lvl"] = lvlsquish(62, 62, 15),
					["groups"] = {
						objective(1, {	-- 0/1 Pandemonius' Essence
							["provider"] = { "i", 72126 },	-- Pandemonius' Essence
						}),
						objective(2, {	-- 0/1 Tavarok's Heart
							["provider"] = { "i", 72127 },	-- Tavarok's Heart
						}),
					},
				}),
				q(10981, {	-- Nexus-Prince Shaffar's Personal Chamber
					["sourceQuest"] = 10977,	-- Stasis Chambers of the Mana-Tombs
					["qg"] = 22919,	-- Image of Commander Ameer
					["coord"] = { 52.8, 15.0, BLADES_EDGE_MOUNTAINS },
					["minReputation"] = { FACTION_THE_CONSORTIUM, REVERED },	-- The Consortium, Revered.
					["maxReputation"] = { FACTION_THE_CONSORTIUM, EXALTED },	-- The Consortium, Exalted.
					["cost"] = {
						{ "i", 31941, 1 },	-- Mark of the Nexus-King
					},
					["repeatable"] = true,
					["lvl"] = lvlsquish(70, 70, 25),
					["groups"] = {
						i(32079),	-- Shaffar's Stasis Chamber Key
					},
				}),
				q(10216, {	-- Safety is Job One
					["providers"] = {
						{ "n",  19670 },	-- Artificer Morphalius
						{ "o", 183877 },	-- Ethereal Transporter Control Panel
					},
					["coord"] = { 39.4, 58.5, TEROKKAR_FOREST },
					["timeline"] = { REMOVED_4_3_0 },
					["lvl"] = lvlsquish(64, 64, 15),
					["groups"] = {
						objective(1, {	-- 0/10 Ethereal Crypt Raider slain
							["provider"] = { "n", 18311 },	-- Ethereal Crypt Raider
						}),
						objective(2, {	-- 0/5 Nexus Stalker slain
							["provider"] = { "n", 18314 },	-- Nexus Stalker
						}),
						objective(3, {	-- 0/5 Ethereal Sorcerer slain
							["provider"] = { "n", 18313 },	-- Ethereal Sorcerer
						}),
						objective(4, {	-- 0/5 Ethereal Spellbinder slain
							["provider"] = { "n", 18312 },	-- Ethereal Spellbinder
						}),
					},
				}),
				q(29573, {	-- Safety is Job One
					["qg"] = 54692,	-- Artificer Morphalius
					["timeline"] = { ADDED_4_3_0 },
					["lvl"] = lvlsquish(62, 62, 15),
					["groups"] = {
						objective(1, {	-- 0/10 Ethereal Crypt Raider slain
							["provider"] = { "n", 18311 },	-- Ethereal Crypt Raider
						}),
						objective(2, {	-- 0/5 Ethereal Sorcerer slain
							["provider"] = { "n", 18313 },	-- Ethereal Sorcerer
						}),
						objective(3, {	-- 0/5 Nexus Stalker slain
							["provider"] = { "n", 18314 },	-- Nexus Stalker
						}),
						objective(4, {	-- 0/5 Ethereal Spellbinder slain
							["provider"] = { "n", 18312 },	-- Ethereal Spellbinder
						}),
					},
				}),
				q(10218, bubbleDown({ ["timeline"] = { REMOVED_4_3_0 } }, {	-- Someone Else's Hard Work Pays Off [Rewards also removed... :(]
					["sourceQuest"] = 10216,	-- Safety Is Job One
					["providers"] = {
						{ "n",  19671 },	-- Cryo-Engineer Sha'heen
						{ "o", 183877 },	-- Ethereal Transporter Control Panel
					},
					["maps"] = { TEROKKAR_FOREST },
					["lvl"] = lvlsquish(64, 64, 15),
					["groups"] = {
						i(29328),	-- Consortium Prince's Wrap
						i(29327),	-- Cryo-mitts
						i(29326),	-- Consortium Mantle of Phasing
						i(29325),	-- Flesh Beast's Metal Greaves
					},
				})),
				q(10977, {	-- Stasis Chambers of the Mana-Tombs
					["sourceQuest"] = 10976,	-- The Mark of the Nexus-King
					["qg"] = 22919,	-- Image of Commander Ameer
					["coord"] = { 52.8, 15.0, BLADES_EDGE_MOUNTAINS },
					["lvl"] = lvlsquish(70, 70, 25),
					["groups"] = {
						objective(1, {	-- Mana-Tombs Stasis Chamber Investigated
							["providers"] = {
								{ "i",  32069 },	-- Mana-Tombs Stasis Chamber Key
								{ "o", 185519 },	-- Mana-Tombs Stasis Chamber
							},
							["description"] = "Stasis Chamber is in the room to the left after the first boss.\n\nThis can only be completed on Heroic difficulty.",
						}),
					},
				}),
				q(10982, {	-- The Eye of Haramad
					["sourceQuest"] = 10977,	-- Stasis Chambers of the Mana-Tombs
					["qg"] = 22919,	-- Image of Commander Ameer
					["coord"] = { 52.8, 15.0, BLADES_EDGE_MOUNTAINS },
					["minReputation"] = { FACTION_THE_CONSORTIUM, EXALTED },	-- The Consortium, Exalted.
					["lvl"] = lvlsquish(70, 70, 25),
					["groups"] = {
						i(32092),	-- The Eye of Haramad
					},
				}),
				q(10165, bubbleDown({ ["timeline"] = { REMOVED_4_3_0 } }, {	-- Undercutting the Competition [Rewards also removed... :(]
					["qg"] = 19674,	-- Nexus-Prince Haramad
					["coord"] = { 39.4, 58.5, TEROKKAR_FOREST },
					["lvl"] = lvlsquish(64, 64, 15),
					["groups"] = {
						objective(1, {	-- 0/1 Shaffar's Wrappings
							["provider"] = { "i", 28490 },	-- Shaffar's Wrappings
						}),
						i(29342),	-- Consortium Plated Legguards
						i(29345),	-- Haramad's Leg Wraps
						i(29343),	-- Haramad's Leggings of the Third Coin
						i(29344),	-- Haramad's Linked Chain Pantaloons
					},
				})),
				q(29575, {	-- Undercutting the Competition
					["qg"] = 54692,	-- Artificer Morphalius
					["timeline"] = { ADDED_4_3_0 },
					["lvl"] = lvlsquish(62, 62, 15),
					["groups"] = {
						objective(1, {	-- 0/1 Shaffar's Wrappings
							["provider"] = { "i", 28490 },	-- Shaffar's Wrappings
						}),
					},
				}),
			}),
			n(COMMON_BOSS_DROPS, {
				i(28558, {	-- Spirit Shard
					["description"] = "Spirit Shards are currency tokens dropped by bosses in the Auchindoun instances. For shards to drop the player's faction must control the five Spirit Towers in the Bone Wastes. Bosses in the Mana-Tombs and Auchenai Crypts drop one shard each; bosses in the Sethekk Halls and Shadow Labyrinth drop two each. These can be used to buy gear from Spirit Sage at Allerian Stronghold (Alliance) / Stonebreaker Hold (Horde).",
					["timeline"] = { REMOVED_8_0_1 },
				}),
				currency(1704, {	-- Spirit Shard
					["timeline"] = { ADDED_8_0_1 },
					["description"] =	-- From 9.1.5 (specific patch uncomfirmed) this currency can be obtained regardless of whom controls the Spirit Towers in the Bone Wastes. This could have been true already from 8.0.1, but no reports seems to confirm it.
						-- #if AFTER 9.1.5
						"Spirit Shards are currency tokens dropped by bosses in the Auchindoun instances. Bosses drop one shard each. These can be used to buy gear from Spirit Sage at Allerian Stronghold (Alliance) / Stonebreaker Hold (Horde).",
						-- #else
						"Spirit Shards are currency tokens dropped by bosses in the Auchindoun instances. For shards to drop the player's faction must control the five Spirit Towers in the Bone Wastes. Bosses drop one shard each. These can be used to buy gear from Spirit Sage at Allerian Stronghold (Alliance) / Stonebreaker Hold (Horde).",
						-- #endif
				}),
			}),
			n(ZONE_DROPS, {
				i(29460),	-- Ethereum Prison Key
				i(22543, {	-- Formula: Enchant Boots - Fortitude (RECIPE!)
					["cr"] = 18317,	-- Ethereal Priest
				}),
				i(23615, {	-- Plans: Swiftsteel Gloves (RECIPE!)
					["cr"] = 18314,	-- Nexus Stalker
				}),
			}),
			d(DIFFICULTY.DUNGEON.NORMAL, {
				e(534, {	-- Pandemonius
					["creatureID"] = 18341,
					["groups"] = {
						i(25943),	-- Creepjacker
						-- #if AFTER 7.3.5
						i(27814),	-- Twinblade of Mastery
						i(27817),	-- Starbolt Longbow
						-- #endif
						i(25939),	-- Voidfire Wand
						i(28166),	-- Shield of the Void
						-- #if AFTER 7.3.5
						i(27816),	-- Mindrage Pauldrons
						i(27818),	-- Starry Robes of the Crescent
						-- #endif
						i(25942),	-- Faith Bearer's Gauntlets
						-- #if AFTER 7.3.5
						i(27813),	-- Boots of the Colossus
						-- #endif
						i(25941),	-- Boots of the Outlander
						-- #if BEFORE MOP
						i(25940, {	-- Idol of the Claw
							["timeline"] = { REMOVED_5_0_4 },
						}),
						-- #endif
						i(72126, {	-- Pandemonius' Essence
							["timeline"] = { ADDED_4_3_0 },
						}),
					},
				}),
				e(535, {	-- Tavarok
					["creatureID"] = 18343,
					["groups"] = {
						i(25944),	-- Shaarde the Greater
						i(25950),	-- Staff of Polarities
						i(25952),	-- Scimitar of the Nexus-Stalkers
						i(25947),	-- Lightning-Rod Pauldrons
						-- #if AFTER 7.3.5
						i(27826),	-- Mantle of the Sea Wolf
						-- #endif
						i(25945),	-- Cloak of Revival
						-- #if AFTER 7.3.5
						i(27824),	-- Robe of the Great Dark Beyond
						i(27823),	-- Shard Encrusted Breastplate
						i(27825),	-- Predatory Gloves
						i(27821),	-- Extravagant Boots of Malice
						-- #endif
						i(25946),	-- Nethershade Boots
						-- #if AFTER 7.3.5
						i(27822),	-- Crystal Band of Valor
						-- #endif
						i(72127, {	-- Tavarok's Heart
							["timeline"] = { ADDED_4_3_0 },
						}),
					},
				}),
				e(537, {	-- Nexus-Prince Shaffar
					["creatureID"] = 18344,
					["groups"] = {
						ach(651),	-- Mana-Tombs
						-- #if AFTER 7.3.5
						i(27829),	-- Axe of the Nexus-Kings
						i(27842),	-- Grand Scepter of the Nexus-Kings
						i(27840),	-- Scepter of Sha'tar
						i(28400),	-- Warp-Storm Warblade
						-- #endif
						i(25953),	-- Ethereal Warp-Bow
						-- #if AFTER 7.3.5
						i(32082),	-- The Fel Barrier
						-- #endif
						i(25955),	-- Mask of the Howling Storm
						i(25954),	-- Sigil of Shaffar
						-- #if AFTER 7.3.5
						i(27831),	-- Mantle of the Unforgiven
						i(27844),	-- Pauldrons of Swift Retribution
						i(29240),	-- Bands of Negation
						i(27827),	-- Lucid Dream Bracers
						-- #endif
						i(25956),	-- Nexus-Bracers of Vigor
						-- #if AFTER 7.3.5
						i(27798),	-- Gauntlets of Vindication
						i(27843),	-- Glyph-Lined Sash
						i(27835),	-- Stillwater Girdle
						i(30535),	-- Forestwalker Kilt
						i(27837),	-- Wastewalker Leggings
						-- #endif
						i(25957),	-- Ethereal Boots of the Skystrider
						-- #if AFTER 7.3.5
						i(29352),	-- Cobalt Band of Tyrigosa
						-- #endif
						i(25962),	-- Longstrider's Loop
						-- #if AFTER 7.3.5
						i(27828),	-- Warp-Scarab Brooch
						-- #endif
						i(28490),	-- Shaffar's Wrappings
						i(22921),	-- Recipe: Major Frost Protection Potion (RECIPE!)
					},
				}),
			}),
			d(DIFFICULTY.DUNGEON.HEROIC, {
				-- #if BEFORE 4.2.0
				["description"] = "You need to have a key to the instance in order to access this mode.",
				["cost"] = {
					{ "i", 30633, 1 },	-- Auchenai Key
				},
				-- #endif
				["lvl"] = lvlsquish(70, 70, 30),
				["groups"] = {
					n(COMMON_BOSS_DROPS, {
						["crs"] = {
							18341,	-- Pandemonius
							18343,	-- Tavarok
							22927,	-- Yor
							18344,	-- Nexus-Prince Shaffar
						},
						["groups"] = {
							-- #if BEFORE CATA
							BADGE_OF_JUSTICE,
							-- #endif
							i(30584),	-- Enscribed Fire Opal
							i(30585),	-- Glistening Fire Opal
							i(30583),	-- Timeless Chrysoprase
						},
					}),
					e(534, {	-- Pandemonius
						["creatureID"] = 18341,
						["groups"] = {
							-- #if AFTER 7.3.5
							i(25943),	-- Creepjacker
							-- #endif
							i(27814),	-- Twinblade of Mastery
							i(27817),	-- Starbolt Longbow
							-- #if AFTER 7.3.5
							i(25939),	-- Voidfire Wand
							i(28166),	-- Shield of the Void
							-- #endif
							i(27816),	-- Mindrage Pauldrons
							i(27818),	-- Starry Robes of the Crescent
							-- #if AFTER 7.3.5
							i(25942),	-- Faith Bearer's Gauntlets
							-- #endif
							i(27813),	-- Boots of the Colossus
							-- #if AFTER 7.3.5
							i(25941),	-- Boots of the Outlander
							-- #endif
							-- #if BEFORE MOP
							i(27815, {	-- Totem of the Astral Winds
								["timeline"] = { REMOVED_5_0_4 },
							}),
							-- #endif
							i(72126, {	-- Pandemonius' Essence
								["timeline"] = { ADDED_4_3_0 },
							}),
						},
					}),
					e(535, {	-- Tavarok
						["creatureID"] = 18343,
						["groups"] = {
							-- #if AFTER 7.3.5
							i(25944),	-- Shaarde the Greater
							i(25950),	-- Staff of Polarities
							i(25952),	-- Scimitar of the Nexus-Stalkers
							i(25947),	-- Lightning-Rod Pauldrons
							-- #endif
							i(27826),	-- Mantle of the Sea Wolf
							-- #if AFTER 7.3.5
							i(25945),	-- Cloak of Revival
							-- #endif
							i(27824),	-- Robe of the Great Dark Beyond
							i(27823),	-- Shard Encrusted Breastplate
							i(27825),	-- Predatory Gloves
							i(27821),	-- Extravagant Boots of Malice
							-- #if AFTER 7.3.5
							i(25946),	-- Nethershade Boots
							-- #endif
							i(27822),	-- Crystal Band of Valor
							i(72127, {	-- Tavarok's Heart
								["timeline"] = { ADDED_4_3_0 },
							}),
						},
					}),
					e(536, {	-- Yor
						["providers"] = {
							{ "o", 185522 },	-- Shaffar's Stasis Chamber
							{ "i", 32092 },	-- The Eye of Haramad
						},
						["description"] = "Requires one of two keys unlocked via a quest chain in Blades Edge to open.\n\nOnly one member of your group needs the key.",
						["cost"] = {
							{ "i", 32079, 1 },	-- Shaffar's Stasis Chamber Key
						},
						["creatureID"] = 22927,
						["groups"] = {
							i(31570),	-- Mistshroud Tunic
							i(31562),	-- Skystalker's Tunic
							i(31554),	-- Slatesteel Breastplate
							i(31578),	-- Windchanneller's Tunic
							i(31923),	-- Band of the Crystalline Void
							i(31919),	-- Nexus-Prince's Ring of Balance
							i(31922),	-- Ring of Conflict Survival
							i(31920),	-- Shaffar's Band of Brutality
							i(31921),	-- Yor's Collapsing Band
							i(31924),	-- Yor's Revenge
						},
					}),
					e(537, {	-- Nexus-Prince Shaffar
						["creatureID"] = 18344,
						["groups"] = {
							ach(671),	-- Heroic: Mana-Tombs
							ach(5071, {	-- Heroic: Mana-Tombs Guild Run
								["timeline"] = { ADDED_4_0_3 },
							}),
							i(27829),	-- Axe of the Nexus-Kings
							i(27842),	-- Grand Scepter of the Nexus-Kings
							i(27840),	-- Scepter of Sha'tar
							i(28400),	-- Warp-Storm Warblade
							-- #if AFTER 7.3.5
							i(25953),	-- Ethereal Warp-Bow
							-- #endif
							i(32082),	-- The Fel Barrier
							-- #if AFTER 7.3.5
							i(25955),	-- Mask of the Howling Storm
							i(25954),	-- Sigil of Shaffar
							-- #endif
							i(27831),	-- Mantle of the Unforgiven
							i(27844),	-- Pauldrons of Swift Retribution
							i(29240),	-- Bands of Negation
							i(27827),	-- Lucid Dream Bracers
							-- #if AFTER 7.3.5
							i(25956),	-- Nexus-Bracers of Vigor
							-- #endif
							i(27798),	-- Gauntlets of Vindication
							i(27843),	-- Glyph-Lined Sash
							i(27835),	-- Stillwater Girdle
							i(30535),	-- Forestwalker Kilt
							i(27837),	-- Wastewalker Leggings
							-- #if AFTER 7.3.5
							i(25957),	-- Ethereal Boots of the Skystrider
							-- #endif
							i(29352),	-- Cobalt Band of Tyrigosa
							-- #if AFTER 7.3.5
							i(25962),	-- Longstrider's Loop
							-- #endif
							i(27828),	-- Warp-Scarab Brooch
							applyclassicphase(TBC_PHASE_ONE, i(23572)),	-- Primal Nether
							i(28490),	-- Shaffar's Wrappings
							i(33835),	-- Shaffar's Wondrous Amulet
							i(22921),	-- Recipe: Major Frost Protection Potion (RECIPE!)
						},
					}),
				},
			}),
		},
	})),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.WOD, bubbleDownSelf({ ["timeline"] = { ADDED_6_0_2 } }, {
	inst(250, {
		q(35546),	-- Mana Tombs Reward Quest - Normal completion
		q(35547),	-- Mana Tombs Reward Quest - Heroic completion
		q(35548),	-- Mana-Tombs Bonus Objective - kill Yor
	}),
})));
