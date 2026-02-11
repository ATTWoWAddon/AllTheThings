-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

root(ROOTS.Instances, expansion(EXPANSION.TBC, applyclassicphase(TBC_PHASE_ONE, {
	inst(252, bubbleDownSelf({ ["timeline"] = { ADDED_2_0_1 } }, {	-- Sethekk Halls
		["lore"] = "Sethekk Halls is populated by renegade arakkoa and led by the insane Talon King Ikiss. The Sethekk are renegades who broke away from Skettis at the insistence of Ikiss and Darkweaver Syth, and believe themselves to be the true servants of the mysterious master of all arakkoa. When Auchindoun exploded due to the summoning of Murmur in the Shadow Labyrinth, Ikiss and Syth led their followers to Auchindoun, believing this to be a sign of their master's return. There they remain, still searching for the master in the temple's ruins.",
		-- #if BEFORE MOP
		["zone-text-areaID"] = 3791,	-- Sethekk Halls
		-- #endif
		["coord"] = { 44.93, 65.61, TEROKKAR_FOREST },	-- Sethekk Halls, Terokkar Forest
		["maps"] = {
			AUCHINDOUN_SETHEKK_HALLS,	-- Veil Sethekk
			259,	-- Halls of Mourning
		},
		["lvl"] = lvlsquish(63, 63, 15),
		["groups"] = {
			n(QUESTS, {
				q(10097, {	-- Brother Against Brother
					["sourceQuest"] = 10180,	-- Can't Stay Away
					["qg"] = 18933,	-- Isfar
					["coord"] = { 44.1, 65.0, TEROKKAR_FOREST },
					["timeline"] = { REMOVED_4_3_0 },
					["lvl"] = lvlsquish(65, 65, 15),
					["groups"] = {
						objective(1, {	-- Darkweaver Syth slain
							["provider"] = { "n", 18472 },	-- Darkweaver Syth
						}),
						objective(2, {	-- Free Lakka
							["provider"] = { "n", 18956 },	-- Lakka
						}),
						i(29336),	-- Mark of the Ravenguard
						i(29334),	-- Sethekk Oracle's Focus
						i(29335),	-- Talon Lord's Collar
						i(29333),	-- Torc of the Sethekk Prophet
					},
				}),
				q(29605, {	-- Brother Against Brother
					["sourceQuest"] = 10180,	-- Can't Stay Away
					["qg"] = 54840,	-- Isfar
					["timeline"] = { ADDED_4_3_0 },
					["lvl"] = lvlsquish(65, 65, 15),
					["groups"] = {
						objective(1, {	-- Free Lakka
							["provider"] = { "n", 18956 },	-- Lakka
						}),
						i(29336),	-- Mark of the Ravenguard
						i(29334),	-- Sethekk Oracle's Focus
						i(29335),	-- Talon Lord's Collar
						i(29333),	-- Torc of the Sethekk Prophet
					},
				}),
				q(10180, {	-- Can't Stay Away
					["qg"] = 19045,	-- Oloraak
					["coord"] = { 58.0, 15.2, SHATTRATH_CITY },
					["isBreadcrumb"] = true,
					["lvl"] = lvlsquish(65, 65, 15),
				}),
				applyclassicphase(TBC_PHASE_TWO_SWIFTFLIGHTFORM, q(11011, {	-- Eternal Vigilance
					["sourceQuest"] = 11001,	-- Vanquish the Raven God
					["qg"] = 22832,	-- Morthis Whisperwing <Druid of the Talon>
					["coord"] = { 80.2, 65.2, ZANGARMARSH },
					["timeline"] = { REMOVED_4_0_1 },
					["classes"] = { DRUID },
					["repeatable"] = true,
					["lvl"] = lvlsquish(70, 70, 30),
					["groups"] = {
						i(32449),	-- Essence-Infused Moonstone
					},
				})),
				q(29607, {	-- Eyes of Desire
					["description"] = "Dealer Vijaad appears upon defeating Darkweaver Syth.",
					["qg"] = 54847,	-- Dealer Vijaad
					["timeline"] = { ADDED_4_3_0 },
					["lvl"] = lvlsquish(65, 65, 15),
					["groups"] = {
						objective(1, {	-- 0/3 Cobalt Eye
							["provider"] = { "i", 72480 },	-- Cobalt Eye
							["cr"] = 19428,	-- Cobalt Serpent
						}),
					},
				}),
				q(10098, {	-- Terokk's Legacy
					["sourceQuest"] = 10180,	-- Can't Stay Away
					["qg"] = 18933,	-- Isfar
					["coord"] = { 44.1, 65.0, TEROKKAR_FOREST },
					["timeline"] = { REMOVED_4_3_0 },
					["cost"] = { { "i", 32888, 1 } },	-- The Relics of Terokk
					["groups"] = {
						objective(1, {	-- 0/1 The Saga of Terokk
							["provider"] = { "i", 27634 },	-- The Saga of Terokk
							["description"] = "Found on the floor in the center of the room before Talon King Ikiss.",
							["timeline"] = { REMOVED_4_3_0 },
						}),
						objective(2, {	-- 0/1 Terokk's Mask
							["provider"] = { "i", 27633 },	-- Terokk's Mask
						}),
						objective(3, {	-- 0/1 Terokk's Quill
							["provider"] = { "i", 27632 },	-- Terokk's Quill
						}),
						-- #if BEFORE 4.3.0
						i(29330),	-- The Saga of Terokk
						i(29332),	-- Terokk's Mask
						i(29329),	-- Terokk's Quill
						-- #endif
					},
				}),
				q(29606, {	-- Terokk's Legacy
					["qg"] = 54840,	-- Isfar
					["timeline"] = { ADDED_4_3_0 },
					["lvl"] = lvlsquish(65, 65, 15),
					["groups"] = {
						objective(1, {	-- 0/1 Terokk's Mask
							["provider"] = { "i", 27633 },	-- Terokk's Mask
						}),
						objective(2, {	-- 0/1 Terokk's Quill
							["provider"] = { "i", 27632 },	-- Terokk's Quill
						}),
						i(29330),	-- The Saga of Terokk
						i(29332),	-- Terokk's Mask
						i(29329),	-- Terokk's Quill
					},
				}),
				applyclassicphase(TBC_PHASE_TWO_SWIFTFLIGHTFORM, q(11001, {	-- Vanquish the Raven God
					["sourceQuest"] = 10994,	-- Chasing the Moonstone
					["qg"] = 22832,	-- Morthis Whisperwing <Druid of the Talon>
					["coord"] = { 80.2, 65.2, ZANGARMARSH },
					["timeline"] = { REMOVED_4_0_1 },
					["classes"] = { DRUID },
					["lvl"] = lvlsquish(70, 70, 30),
					["groups"] = {
						objective(1, {	-- 0/1 Anzu slain
							["provider"] = { "i", 32449 },	-- Essence-Infused Moonstone
							["cr"] = 23035,	-- Anzu
						}),
						ach(2359, {	-- Swift Flight Form
							["sourceQuest"] = 11001,	-- Vanquish the Raven God
							["timeline"] = { REMOVED_4_0_1 },
							["classes"] = { DRUID },
							["filterID"] = MOUNTS,
						}),
						-- #if BEFORE 4.0.1
						recipe(40120),	-- Swift Flight Form
						-- #endif
						i(32387, {	-- Idol of the Raven Goddess
							["timeline"] = { REMOVED_4_0_1 },
						}),
						i(32462, {	-- Morthis' Materials
							i(32454),	-- Arthorn's Research
							i(32449),	-- Essence-Infused Moonstone
						}),
					},
				})),
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
				i(29669, {	-- Pattern: Shadow Armor Kit (RECIPE!)
					["timeline"] = { REMOVED_5_0_4 },
					["cr"] = 18320,	-- Time-Lost Shadowmage
				}),
				i(25731, {	-- Pattern: Stylin' Crimson Hat (RECIPE!)
					["cr"] = 18322,	-- Sethekk Ravenguard
				}),
			}),
			d(DIFFICULTY.DUNGEON.NORMAL, {
				e(541, {	-- Darkweaver Syth
					["creatureID"] = 18472,
					["groups"] = {
						i(24160),	-- Design: Khorium Inferno Band (RECIPE!)
						i(27918),	-- Bands of Syth
						i(27919),	-- Light-Woven Slippers
						i(27914),	-- Moonstrider Boots
						i(27915),	-- Sky-Hunter Swift Boots
						-- #if BEFORE MOP
						i(27916, {	-- Sethekk Feather-Darts
							["timeline"] = { REMOVED_5_0_4 },
						}),
						i(27917, {	-- Libram of the Eternal Rest
							["timeline"] = { REMOVED_5_0_4 },
						}),
						-- #endif
						i(27633),	-- Terokk's Mask
					},
				}),
				e(543, {	-- Talon King Ikiss
					["creatureID"] = 18473,
					["groups"] = {
						ach(653),	-- Sethekk Halls
						i(27986),	-- Crow Wing Reaper
						-- #if AFTER 7.3.5
						i(29355),	-- Terokk's Shadowstaff (7.3.5 - Used to be only Heroic Mode)
						-- #endif
						i(27980),	-- Terokk's Nightmace
						i(27776),	-- Shoulderpads of Assassination
						-- #if AFTER 7.3.5
						i(32073),	-- Spaulders of Dementia (7.3.5 - Used to be only Heroic Mode)
						-- #endif
						i(27946),	-- Avian Cloak of Feathers
						i(27981),	-- Sethekk Oracle Cloak
						-- #if AFTER 7.3.5
						i(29249),	-- Bands of the Benevolent (7.3.5 - Used to be only Heroic Mode)
						i(29259),	-- Bracers of the Hunt (7.3.5 - Used to be only Heroic Mode)
						-- #endif
						i(27985),	-- Deathforge Girdle
						i(27875),	-- Hallowed Trousers
						i(27838),	-- Incanter's Trousers
						i(27948),	-- Trousers of Oblivion
						i(27925),	-- Ravenclaw Band
						i(27936),	-- Greaves of Desolation (7.3.5 - Added to Anzu on Heroic Mode)
						i(27632),	-- Terokk's Quill
						i(27991, {	-- Shadow Labyrinth Key
							["description"] = "You can loot this from the Talon King's Coffer after Patch 2.3.0, before that (and perhaps in TBC Classic), you would loot it from his corpse.",
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
			}),
			d(DIFFICULTY.DUNGEON.HEROIC, {
				-- #if BEFORE 4.2.0
				["description"] = "You need to have a key to the instance in order to access this mode.",
				["cost"] = { { "i", 30633, 1 } },	-- Auchenai Key
				-- #endif
				["lvl"] = lvlsquish(70, 70, 30),
				["groups"] = {
					n(COMMON_BOSS_DROPS, {
						["crs"] = {
							18472,	-- Darkweaver Syth
							23035,	-- Anzu
							18473,	-- Talon King Ikiss
						},
						["groups"] = {
							-- #if BEFORE CATA
							BADGE_OF_JUSTICE,
							-- #endif
							i(30552),	-- Timeless Tanzanite
							i(30553),	-- Glinting Tanzanite
							i(30554),	-- Stalwart Fire Opal
						},
					}),
					e(541, {	-- Darkweaver Syth
						["creatureID"] = 18472,
						["groups"] = {
							i(24160),	-- Design: Khorium Inferno Band (RECIPE!)
							i(27918),	-- Bands of Syth
							i(27919),	-- Light-Woven Slippers
							i(27914),	-- Moonstrider Boots
							i(27915),	-- Sky-Hunter Swift Boots
							-- #if BEFORE MOP
							i(27916, {	-- Sethekk Feather-Darts
								["timeline"] = { REMOVED_5_0_4 },
							}),
							i(27917, {	-- Libram of the Eternal Rest
								["timeline"] = { REMOVED_5_0_4 },
							}),
							-- #endif
							i(25461, {	-- Book of Forgotten Names
								["timeline"] = { REMOVED_7_1_0 },
							}),
							i(27633),	-- Terokk's Mask
						},
					}),
					applyclassicphase(TBC_PHASE_TWO_SWIFTFLIGHTFORM, e(542, {	-- Anzu
						-- #if BEFORE 4.0.1
						["description"] = "This special encounter can be started by a Druid that has completed the 'Vanquish the Raven God' quest chain. It's the same quest chain that grants them Swift Flight Form, so if you see a speedy flappy boi out in the world and they join your dungeon group, you're pretty much guaranteed to have a shot at this... unless they forget the quest item (in the keyring) used to summon him. :)\n\nDruids: You can right click this boss to see the quest chain you need to finish.",
						["sourceQuest"] = 11001,	-- Vanquish the Raven God
						["cost"] = { { "i", 32449, 1 } },	-- Essence-Infused Moonstone
						-- #endif
						["creatureID"] = 23035,
						["groups"] = {
							ach(883, {	-- Reins of the Raven Lord
								["provider"] = { "i", 32768 },	-- Reins of the Raven Lord
								["filterID"] = MOUNTS,
							}),
							i(32768),	-- Raven Lord (MOUNT!)
							i(32781),	-- Talon of Anzu
							i(32780),	-- The Boomstick
							i(32769),	-- Belt of the Raven Lord
							-- #if AFTER 7.3.5
							i(27936),	-- Greaves of Desolation  (7.3.5 - Used to be only Normal Mode from Talon King Ikiss)
							-- #endif
							i(32778),	-- Boots of Righteous Fortitude
							i(32779),	-- Band of Frigid Elements
						},
					})),
					e(543, {	-- Talon King Ikiss
						["creatureID"] = 18473,
						["groups"] = {
							ach(674),	-- Heroic: Sethekk Halls
							ach(5074, {	-- Heroic: Sethekk Halls Guild Run
								["timeline"] = { ADDED_4_0_3 },
							}),
							i(27986),	-- Crow Wing Reaper
							i(29355),	-- Terokk's Shadowstaff
							i(27980),	-- Terokk's Nightmace
							i(27776),	-- Shoulderpads of Assassination
							i(32073),	-- Spaulders of Dementia
							i(27946),	-- Avian Cloak of Feathers
							i(27981),	-- Sethekk Oracle Cloak
							i(29249),	-- Bands of the Benevolent
							i(29259),	-- Bracers of the Hunt
							i(27985),	-- Deathforge Girdle
							i(27936),	-- Greaves of Desolation (7.3.5 - Added to Anzu, but also still drops on Heroic)
							i(27875),	-- Hallowed Trousers
							i(27838),	-- Incanter's Trousers
							i(27948),	-- Trousers of Oblivion
							i(27925),	-- Ravenclaw Band
							applyclassicphase(TBC_PHASE_ONE, i(23572)),	-- Primal Nether
							i(27632),	-- Terokk's Quill
							i(33834),	-- The Headfeathers of Ikiss
							i(27991, {	-- Shadow Labyrinth Key
								["description"] = "You can loot this from the Talon King's Coffer after Patch 2.3.0, before that (and perhaps in TBC Classic), you would loot it from his corpse.",
								["timeline"] = { REMOVED_4_0_3 },
							}),
						},
					}),
				},
			}),
		},
	})),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.WOD, bubbleDownSelf({ ["timeline"] = { ADDED_6_0_2 } }, {
	inst(252, {
		q(35541),	-- Sethekk Halls Bonus Objective
		q(35539),	-- Sethekk Halls Reward Quest - Normal completion
		q(35540),	-- Sethekk Halls Reward Quest - Heroic completion
	}),
})));
