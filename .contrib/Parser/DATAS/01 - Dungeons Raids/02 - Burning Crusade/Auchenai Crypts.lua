-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

root(ROOTS.Instances, expansion(EXPANSION.TBC, applyclassicphase(TBC_PHASE_ONE, {
	inst(247, bubbleDownSelf({ ["timeline"] = { ADDED_2_0_1 } }, {	-- Auchenai Crypts
		["lore"] = "Auchenai Crypts is the main seat of power for the Auchenai - a renegade religious sect of draenei led by the Exarch Maladaar. The crypts are populated by these draenei and the unliving creatures they have summoned. The most important remains interred within the crypt are those of D'ore, one of the naaru. D'ore perished in the collision that brought Oshu'gun (and the draenei) to Draenor. In death, D'ore entered its void stage. The dark energies exuded by this phenomenon resulted, directly or indirectly, in the evils that have since befallen the crypts.",
		-- #if BEFORE MOP
		["zone-text-areaID"] = 3790,	-- Auchenai Crypts
		-- #endif
		["coord"] = { 34.34, 65.61, TEROKKAR_FOREST },	-- Auchenai Crypts, Terokkar Forest
		["maps"] = {
			AUCHINDOUN_AUCHENAI_CRYPTS,	-- Halls of Hereafter
			257,	-- Bridge of Souls
		},
		["lvl"] = lvlsquish(62, 62, 15),
		["groups"] = {
			n(QUESTS, {
				q(10167, {	-- Auchindoun...
					["sourceQuest"] = 10102,	-- A Secret Revealed
					["qg"] = 18481,	-- A'dal
					["coord"] = { 53.9, 44.8, SHATTRATH_CITY },
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(66, 66, 15),
					["groups"] = {
						objective(1, {	-- Exarch Maladaar slain
							["provider"] = { "n", 18373 },	-- Exarch Maladaar
						}),
					},
				}),
				q(10164, {	-- Everything Will Be Alright
					["sourceQuest"] = 10253,	-- Levixus the Soul Caller
					["qg"] = 19698,	-- Greatfather Aldrimus
					["coord"] = { 35.1, 65.2, TEROKKAR_FOREST },
					["timeline"] = { REMOVED_4_3_0 },
					["lvl"] = lvlsquish(64, 64, 15),
					["groups"] = {
						objective(1, {	-- Exarch Maladaar slain
							["provider"] = { "n", 18373 },	-- Exarch Maladaar
						}),
						i(29341),	-- Auchenai Anchorite's Robe
						i(29340),	-- Auchenai Monk's Tunic
						i(29339),	-- Auchenai Tracker's Hauberk
						i(29337),	-- The Exarch's Protector
					},
				}),
				q(29595, {	-- Everything Will Be Alright
					["sourceQuest"] = 10253,	-- Levixus the Soul Caller
					["qg"] = 19698,	-- Greatfather Aldrimus
					["coord"] = { 35.0, 65.2, TEROKKAR_FOREST },
					["timeline"] = { ADDED_4_3_0 },
					["isBreadcrumb"] = true,
					["lvl"] = lvlsquish(64, 64, 15),
				}),
				q(29591, {	-- Raging Spirits
					["qg"] = 54698,	-- Tormented Soulpriest
					["timeline"] = { ADDED_4_3_0 },
					["lvl"] = lvlsquish(63, 63, 15),
					["groups"] = {
						objective(1, {	-- 0/5 Angered Skeleton slain
							["provider"] = { "n", 18524 },	-- Angered Skeleton
						}),
						objective(2, {	-- 0/5 Raging Skeleton slain
							["provider"] = { "n", 18521 },	-- Raging Skeleton
						}),
						objective(3, {	-- 0/3 Auchenai Necromancer slain
							["provider"] = { "n", 18702 },	-- Auchenai Necromancer
						}),
					},
				}),
				q(29590, {	-- The Dead Watcher
					["qg"] = 54725,	-- Draenei Spirit
					["timeline"] = { ADDED_4_3_0 },
					["lvl"] = lvlsquish(63, 63, 15),
					["groups"] = {
						objective(1, {	-- Shirrak the Dead Watcher slain
							["provider"] = { "n", 18371 },	-- Shirrak the Dead Watcher
						}),
					},
				}),
				q(29596, {	-- The End of the Exarch
					["sourceQuest"] = 29595,	-- Everything Will Be Alright
					["qg"] = 54725,	-- Draenei Spirit
					["timeline"] = { ADDED_4_3_0 },
					["lvl"] = lvlsquish(63, 63, 15),
					["groups"] = {
						objective(1, {	-- Exarch Maladaar slain
							["provider"] = { "n", 18373 },	-- Exarch Maladaar
						}),
						i(29341),	-- Auchenai Anchorite's Robe
						i(29340),	-- Auchenai Monk's Tunic
						i(29339),	-- Auchenai Tracker's Hauberk
						i(29337),	-- The Exarch's Protector
					},
				}),
				q(10168, {	-- What the Soul Sees
					["sourceQuest"] = 10167,	-- Auchindoun...
					["qg"] = 19412,	-- D'ore
					["coord"] = { 73.8, 57.0, 257 },
					["maps"] = { NAGRAND },
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(66, 66, 15),
					["groups"] = {
						objective(1, {	-- Darkened Spirit slain
							["provider"] = { "i", 28283 },	-- Soul Mirror
							["crs"] = {
								18688,	-- Ancient Orc Ancestor
								19480,	-- Darkened Spirit
							},
						}),
						objective(2, {	-- 0/1 Soul Mirror
							["provider"] = { "i", 28283 },	-- Soul Mirror
							["description"] = "The soul mirror is located in the same chamber you pick up the quest from D'ore in Auchenai Crypts.\n\nDO NOT LEAVE WITHOUT IT.",
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
				i(22544, {	-- Formula: Enchant Boots - Dexterity (RECIPE!)
					["cr"] = 18521,	-- Raging Skeleton
				}),
				i(23605, {	-- Plans: Felsteel Gloves
					["cr"] = 18497,	-- Auchenai Monk
				}),
			}),
			d(DIFFICULTY.DUNGEON.NORMAL, {
				e(523, {	-- Shirrak the Dead Watcher
					["creatureID"] = 18371,
					["groups"] = {
						-- #if AFTER 7.3.5
						i(27846),	-- Claw of the Watcher
						-- #endif
						i(25964),	-- Shaarde the Lesser
						i(27410),	-- Collar of Command
						i(27408),	-- Hope Bearer Helm
						i(27409),	-- Raven-Heart Headdress
						-- #if AFTER 7.3.5
						i(27866),	-- Scintillating Headdress of Second Sight
						i(27847),	-- Fanblade Pauldrons
						i(27865),	-- Bracers of Shirrak
						i(27493),	-- Gloves of the Deadwatcher
						i(27845),	-- Magma Plume Boots
						-- #endif
						i(26055),	-- Oculus of the Hidden Eye
					},
				}),
				e(524, {	-- Exarch Maladaar
					["creatureID"] = 18373,
					["groups"] = {
						ach(666),	-- Auchenai Crypts
						i(27412),	-- Ironstaff of Regeneration
						-- #if AFTER 7.3.5
						i(27872),	-- The Harvester of Souls
						-- #endif
						i(27415),	-- Darkguard Face Mask
						i(27414),	-- Mok'Nathal Beast-Mask
						-- #if AFTER 7.3.5
						i(27871),	-- Maladaar's Blessed Chaplet
						i(29354),	-- Light-Touched Stole of Altruism
						i(29257),	-- Sash of Arcane Visions
						i(29244),	-- Wave-Song Girdle
						i(27870),	-- Doomplate Legguards
						i(27867),	-- Boots of the Unjust
						-- #endif
						i(27411),	-- Slippers of Serenity
						-- #if AFTER 7.3.5
						i(27523),	-- Exarch's Diamond Band
						-- #endif
						i(27413),	-- Ring of the Exarchs
						-- #if AFTER 7.3.5
						i(27869),	-- Soulpriest's Ring of Resolve
						-- #endif
						i(27416),	-- Fetish of the Fallen
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
							18371,	-- Shirrak the Dead Watcher
							18373,	-- Exarch Maladaar
						},
						["groups"] = {
							-- #if BEFORE CATA
							BADGE_OF_JUSTICE,
							-- #endif
							i(30587),	-- Champion's Fire Opal
							i(30588),	-- Potent Fire Opal
							i(30586),	-- Purified Tanzanite
						},
					}),
					e(523, {	-- Shirrak the Dead Watcher
						["creatureID"] = 18371,
						["groups"] = {
							i(27846),	-- Claw of the Watcher
							-- #if AFTER 7.3.5
							i(25964),	-- Shaarde the Lesser
							i(27410),	-- Collar of Command
							i(27408),	-- Hope Bearer Helm
							i(27409),	-- Raven-Heart Headdress
							-- #endif
							i(27866),	-- Scintillating Headdress of Second Sight
							i(27847),	-- Fanblade Pauldrons
							i(27865),	-- Bracers of Shirrak
							i(27493),	-- Gloves of the Deadwatcher
							i(27845),	-- Magma Plume Boots
							-- #if AFTER 7.3.5
							i(26055),	-- Oculus of the Hidden Eye
							-- #endif
						},
					}),
					e(524, {	-- Exarch Maladaar
						["creatureID"] = 18373,
						["groups"] = {
							ach(672),	-- Heroic: Auchenai Crypts
							ach(5072, {	-- Heroic: Auchenai Crypts Guild Run
								["timeline"] = { ADDED_4_0_3 },
							}),
							-- #if AFTER 7.3.5
							i(27412),	-- Ironstaff of Regeneration
							-- #endif
							i(27872),	-- The Harvester of Souls
							-- #if AFTER 7.3.5
							i(27415),	-- Darkguard Face Mask
							i(27414),	-- Mok'Nathal Beast-Mask
							-- #endif
							i(27871),	-- Maladaar's Blessed Chaplet
							i(29354),	-- Light-Touched Stole of Altruism
							i(29257),	-- Sash of Arcane Visions
							i(29244),	-- Wave-Song Girdle
							i(27870),	-- Doomplate Legguards
							i(27867),	-- Boots of the Unjust
							-- #if AFTER 7.3.5
							i(27411),	-- Slippers of Serenity
							-- #endif
							i(27523),	-- Exarch's Diamond Band
							-- #if AFTER 7.3.5
							i(27413),	-- Ring of the Exarchs
							-- #endif
							i(27869),	-- Soulpriest's Ring of Resolve
							-- #if AFTER 7.3.5
							i(27416),	-- Fetish of the Fallen
							-- #endif
							applyclassicphase(TBC_PHASE_ONE, i(23572)),	-- Primal Nether
							i(33836),	-- The Exarch's Soul Gem
							n(18478, {	-- Avatar of the Fallen
								["description"] = "This mob will spawn once the Exarch reaches 25%. If you want the extra loot, the Exarch must stay alive until he spawns.",
								["groups"] = {
									i(27876),	-- Will of the Fallen Exarch
									i(27877),	-- Draenic Wildstaff
									i(27878),	-- Auchenai Death Shroud
									i(28268),	-- Natural Mender's Wraps
									i(27937),	-- Sky Breakeer
									i(27797),	-- Wastewalker Shoulderpads
								},
							}),
						},
					}),
				},
			}),
		},
	})),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.WOD, bubbleDownSelf({ ["timeline"] = { ADDED_6_0_2 } }, {
	inst(247, {
		q(35544),	-- Auchinai Crypts Reward Quest - Normal completion
		q(35545),	-- Auchinai Crypts Reward Quest - Heroic completion
	}),
})));
