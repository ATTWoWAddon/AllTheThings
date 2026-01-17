-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
root(ROOTS.Instances, expansion(EXPANSION.TBC, applyclassicphase(TBC_PHASE_ONE, {
	inst(260, bubbleDownSelf({ ["timeline"] = { ADDED_2_0_1 } }, {	-- The Slave Pens
		["lore"] = "The Slave Pens is the place where the Naga force their Broken workers to toil for resources in the darkness in order to achieve their goal of draining the marsh completely and claiming control of its water.",
		-- #if BEFORE MOP
		["zone-text-areaID"] = 3717,	-- The Slave Pens
		-- #endif
		["mapID"] = COILFANG_RESERVOIR_SLAVE_PENS,
		["coord"] = { 48.95, 35.84, ZANGARMARSH },	-- The Slave Pens, Zangarmarsh
		["lvl"] = lvlsquish(59, 59, 10),
		["groups"] = {
			n(QUESTS, {
				q(29564, {	-- A Brother Betrayed
					["qg"] = 54668,	-- Nahuud
					["timeline"] = { ADDED_4_3_0 },
					["lvl"] = lvlsquish(57, 57, 10),
					["groups"] = {
						objective(1, {	-- Mennu the Betrayer slain
							["provider"] = { "n", 17941 },	-- Mennu the Betrayer
						}),
					},
				}),
				q(29566, {	-- Checking Up
					["qg"] = 17841,	-- Ysiel Windsinger
					["coord"] = { 78.4, 62.0, ZANGARMARSH },
					["timeline"] = { ADDED_4_3_0 },
					["lvl"] = lvlsquish(62, 62, 10),
				}),
				q(9876, {	-- Failed Incursion
					["sourceQuest"] = 9732,	-- Return to the Marsh
					["qg"] = 17841,	-- Ysiel Windsinger
					["coord"] = { 78.4, 62.0, ZANGARMARSH },
					["timeline"] = { REMOVED_4_3_0 },
					["isBreadcrumb"] = true,
					["lvl"] = lvlsquish(62, 62, 10),
				}),
				q(9738, {	-- Lost in Action
					["sourceQuest"] = 9876,	-- Failed Incursion
					["qg"] = 17884,	-- Watcher Jhang
					["coord"] = { 52.3, 36.0, ZANGARMARSH },
					["timeline"] = { REMOVED_4_3_0 },
					["maps"] = { COILFANG_RESERVOIR_UNDERBOG },
					["lvl"] = lvlsquish(62, 62, 10),
					-- #if BEFORE 4.3.0.14732
					["groups"] = {
						objective(1, {	-- Earthbinder Rayge Discovered
							["provider"] = { "n", 17885 },	-- Earthbinder Rayge
							["coord"] = { 66.7, 22.9, COILFANG_RESERVOIR_UNDERBOG },
						}),
						objective(2, {	-- Naturalist Bite Discovered
							["provider"] = { "n", 17893 },	-- Naturalist Bite
							["coord"] = { 95.0, 65.4, COILFANG_RESERVOIR_SLAVE_PENS },
						}),
						objective(3, {	-- Weeder Greenthumb Discovered
							["provider"] = { "n", 17890 },	-- Weeder Greenthumb
							["coord"] = { 48.8, 83.0, COILFANG_RESERVOIR_SLAVE_PENS },
						}),
						objective(4, {	-- Windcaller Claw Discovered
							["provider"] = { "n", 17894 },	-- Windcaller Claw
							["coord"] = { 40.6, 24.5, COILFANG_RESERVOIR_UNDERBOG },
							["cr"] = 17827,	-- Claw <Swamplord Musel'ek's Pet>
						}),
						i(25541),	-- Cenarion Ring of Casting
						i(28029),	-- Goldenvine Wraps
						i(25540),	-- Dark Cloak of the Marsh
					},
					-- #endif
				}),
				q(29563, {	-- Lost in Action
					["qg"] = 54667,	-- Watcher Jhang
					["timeline"] = { ADDED_4_3_0 },
					["lvl"] = lvlsquish(57, 57, 10),
					["groups"] = {
						objective(1, {	-- Naturalist Bite Discovered
							["provider"] = { "n", 17893 },	-- Naturalist Bite
							["coord"] = { 95.0, 65.4, COILFANG_RESERVOIR_SLAVE_PENS },
						}),
						objective(2, {	-- Weeder Greenthumb Discovered
							["provider"] = { "n", 17890 },	-- Weeder Greenthumb
							["coord"] = { 48.8, 83.0, COILFANG_RESERVOIR_SLAVE_PENS },
						}),
					},
				}),
				q(10901, {	-- The Cudgel of Kar'desh
					["sourceQuest"] = 10900,	-- The Mark of Vashj
					["qg"] = 22421,	-- Skar'this the Heretic
					["timeline"] = { REMOVED_3_0_2 },
					["maps"] = {
						KARAZHAN,
						GRUULS_LAIR,
					},
					["lvl"] = lvlsquish(70, 70, 30),
					["groups"] = {
						objective(1, {	-- 0/1 Earthen Signet
							["provider"] = { "i", 31750 },	-- Earthen Signet
						}),
						objective(2, {	-- 0/1 Blazing Signet
							["provider"] = { "i", 31751 },	-- Blazing Signet
						}),
					},
				}),
				-- #if AFTER WRATH
				q(13431, {	-- The Cudgel of Kar'desh
					["sourceQuest"] = 10900,	-- The Mark of Vashj
					["altQuests"] = { 10901 },	-- The Cudgel of Kar'desh
					["qg"] = 22421,	-- Skar'this the Heretic
					["timeline"] = { ADDED_3_0_2 },
					["maps"] = {
						KARAZHAN,
						GRUULS_LAIR,
					},
					-- #if ANYCLASSIC
					["lockCriteria"] = { 1, "lvl", 70 },
					-- #endif
					["lvl"] = lvlsquish(70, 70, 30),
					-- This quest started showing up again after SL level squish
					["groups"] = {
						objective(1, {	-- 0/1 Earthen Signet
							["provider"] = { "i", 31750 },	-- Earthen Signet
						}),
						objective(2, {	-- 0/1 Blazing Signet
							["provider"] = { "i", 31751 },	-- Blazing Signet
						}),
					},
				}),
				-- #endif
				q(29565, {	-- The Heart of the Matter
					["qg"] = 54667,	-- Watcher Jhang
					["timeline"] = { ADDED_4_3_0 },
					["groups"]= {
						objective(1, {	-- 0/1 The Invader's Claw
							["provider"] = { "i", 72118 },	-- The Invader's Claw
						}),
						objective(2, {	-- 0/1 The Slave Master's Eye
							["provider"] = { "i", 72119 },	-- The Slave Master's Eye
						}),
						i(25541),	-- Cenarion Ring of Casting
						i(28029),	-- Goldenvine Wraps
						i(25540),	-- Dark Cloak of the Marsh
					},
				}),
				q(10900, {	-- The Mark of Vashj
					["qg"] = 22421,	-- Skar'this the Heretic
					-- #if ANYCLASSIC
					["lockCriteria"] = { 1, "lvl", 70 },
					-- #endif
					["lvl"] = lvlsquish(70, 70, 10),
					-- This quest started showing up again after SL level squish
				}),
			}),
			n(ZONE_DROPS, {
				i(24368),	-- Coilfang Armaments
			}),
			d(DIFFICULTY.DUNGEON.NORMAL, {
				e(570, {	-- Mennu the Betrayer
					["creatureID"] = 17941,
					["groups"] = {
						i(24361),	-- Spellfire Longsword
						-- #if AFTER 7.3.5
						i(27543),	-- Starlight Dagger
						-- #endif
						i(24356),	-- Wastewalker Shiv
						-- #if AFTER 7.3.5
						i(27546),	-- Traitor's Noose
						-- #endif
						i(24357),	-- Vest of Living Lightning
						-- #if AFTER 7.3.5
						i(27541),	-- Archery Belt of the Broken
						i(27542),	-- Cord of Belief
						-- #endif
						i(24360),	-- Tracker's Belt
						-- #if AFTER 7.3.5
						i(27545),	-- Mennu's Scaled Leggings
						-- #endif
						i(24359),	-- Princely Reign Leggings
						i(29674, {	-- Pattern: Nature Armor Kit (RECIPE!)
							["timeline"] = { REMOVED_5_0_4 },
						}),
					},
				}),
				e(571, {	-- Rokmar the Crackler
					["creatureID"] = 17991,
					["groups"] = {
						i(24378),	-- Coilfang Hammer of Renewal
						i(24380),	-- Calming Spore Reed
						i(24381),	-- Coilfang Needler
						-- #if AFTER 7.3.5
						i(27551),	-- Skeletal Necklace of Battlerage
						-- #endif
						i(24379),	-- Bogstrok Scale Cloak
						-- #if AFTER 7.3.5
						i(27550),	-- Ironscale War Cloak
						i(27547),	-- Coldwhisper Cord
						i(27548),	-- Girdle of Many Blessings (NOTE: Timewalking drops from Mennu?)
						i(28124),	-- Liar's Cord
						i(27549),	-- Wavefury Boots
						-- #endif
						i(24376),	-- Runed Fungalcap
						i(72118, {	-- The Invader's Claw
							["timeline"] = { ADDED_4_3_0 },
						}),
					},
				}),
				e(572, {	-- Quagmirran
					["creatureID"] = 17942,
					["groups"] = {
						ach(649),	-- The Slave Pens
						-- #if AFTER 7.3.5
						i(27741),	-- Bleeding Hollow Warhammer
						i(27673),	-- Phosphorescent Blade
						i(27714),	-- Swamplight Lantern (NOTE: This drops from Rokmar in Timewalking)
						i(29349),	-- Adamantine Chain of the Unbroken
						i(27796),	-- Mana-Etched Spaulders
						i(27713),	-- Pauldrons of Desolation
						i(32078),	-- Pauldrons of Wild Magic
						-- #endif
						i(24366),	-- Scorpid Sting Mantle
						i(24362),	-- Spore-Soaked Vaneer
						-- #if AFTER 7.3.5
						i(28337),	-- Breastplate of Righteous Fury
						-- #endif
						i(24363),	-- Unscarred Breastplate
						-- #if AFTER 7.3.5
						i(27712),	-- Shackles of Quagmirran
						-- #endif
						i(24365),	-- Deft Handguards
						-- #if AFTER 7.3.5
						i(27672),	-- Girdle of the Immovable
						i(27742),	-- Mage-Fury Girdle
						-- #endif
						i(24364),	-- Azureplate Greaves
						-- #if AFTER 7.3.5
						i(27800),	-- Earthsoul Britches
						i(30538),	-- Midnight Legguards
						i(29242),	-- Boots of Blasphemy
						i(27740),	-- Band of Ursol
						i(27683),	-- Quagmirran's Eye
						-- #endif
						i(72119, {	-- The Slave Master's Eye
							["timeline"] = { ADDED_4_3_0 },
						}),
					},
				}),
			}),
			d(DIFFICULTY.DUNGEON.HEROIC, {
				-- #if BEFORE 4.2.0
				["description"] = "You need to have a key to the instance in order to access this mode.",
				["cost"] = {
					{ "i", 30623, 1 },	-- Reservoir Key
				},
				-- #endif
				["lvl"] = lvlsquish(70, 70, 30),
				["groups"] = {
					n(COMMON_BOSS_DROPS, {
						["crs"] = {
							17941,	-- Mennu the Betrayer
							17991,	-- Rokmar the Crackler
							17942,	-- Quagmirran
						},
						["groups"] = {
							-- #if BEFORE CATA
							BADGE_OF_JUSTICE,
							-- #endif
							i(30603),	-- Royal Tanzanite
							i(30604),	-- Resplendent Fire Opal
							i(30605),	-- Vivid Chrysoprase
						},
					}),
					e(570, {	-- Mennu the Betrayer
						["creatureID"] = 17941,
						["groups"] = {
							-- #if AFTER 7.3.5
							i(24361),	-- Spellfire Longsword
							-- #endif
							i(27543),	-- Starlight Dagger
							-- #if AFTER 7.3.5
							i(24356),	-- Wastewalker Shiv
							-- #endif
							i(27546),	-- Traitor's Noose
							-- #if AFTER 7.3.5
							i(24357),	-- Vest of Living Lightning
							-- #endif
							i(27541),	-- Archery Belt of the Broken
							i(27542),	-- Cord of Belief
							-- #if AFTER 7.3.5
							i(24360),	-- Tracker's Belt
							-- #endif
							i(27545),	-- Mennu's Scaled Leggings
							-- #if AFTER 7.3.5
							i(24359),	-- Princely Reign Leggings
							-- #endif
							-- #if BEFORE MOP
							i(27544, {	-- Totem of Spontaneous Regrowth
								["timeline"] = { REMOVED_5_0_4 },
							}),
							-- #endif
							i(29674, {	-- Pattern: Nature Armor Kit (RECIPE!)
								["timeline"] = { REMOVED_5_0_4 },
							}),
						},
					}),
					e(571, {	-- Rokmar the Crackler
						["creatureID"] = 17991,
						["groups"] = {
							-- #if AFTER 7.3.5
							i(24378),	-- Coilfang Hammer of Renewal
							i(24380),	-- Calming Spore Reed
							i(24381),	-- Coilfang Needler
							-- #endif
							i(27551),	-- Skeletal Necklace of Battlerage
							-- #if AFTER 7.3.5
							i(24379),	-- Bogstrok Scale Cloak
							-- #endif
							i(27550),	-- Ironscale War Cloak
							i(27547),	-- Coldwhisper Cord
							i(27548),	-- Girdle of Many Blessings (NOTE: Timewalking drops from Mennu?)
							i(28124),	-- Liar's Cord
							i(27549),	-- Wavefury Boots
							-- #if AFTER 7.3.5
							i(24376),	-- Runed Fungalcap
							-- #endif
							i(72118, {	-- The Invader's Claw
								["timeline"] = { ADDED_4_3_0 },
							}),
						},
					}),
					e(572, {	-- Quagmirran
						["creatureID"] = 17942,
						["groups"] = {
							ach(669),	-- Heroic: The Slave Pens
							ach(5069, {	-- Heroic: The Slave Pens Guild Run
								["timeline"] = { ADDED_4_0_3 },
							}),
							i(27741),	-- Bleeding Hollow Warhammer
							i(27673),	-- Phosphorescent Blade
							i(27714),	-- Swamplight Lantern (NOTE: This drops from Rokmar in Timewalking)
							i(29349),	-- Adamantine Chain of the Unbroken
							i(27796),	-- Mana-Etched Spaulders
							i(27713),	-- Pauldrons of Desolation
							i(32078),	-- Pauldrons of Wild Magic
							-- #if AFTER 7.3.5
							i(24366),	-- Scorpid Sting Mantle
							i(24362),	-- Spore-Soaked Vaneer
							-- #endif
							i(28337),	-- Breastplate of Righteous Fury
							-- #if AFTER 7.3.5
							i(24363),	-- Unscarred Breastplate
							-- #endif
							i(27712),	-- Shackles of Quagmirran
							-- #if AFTER 7.3.5
							i(24365),	-- Deft Handguards
							-- #endif
							i(27672),	-- Girdle of the Immovable
							i(27742),	-- Mage-Fury Girdle
							-- #if AFTER 7.3.5
							i(24364),	-- Azureplate Greaves
							-- #endif
							i(27800),	-- Earthsoul Britches
							i(30538),	-- Midnight Legguards
							i(29242),	-- Boots of Blasphemy
							i(27740),	-- Band of Ursol
							i(27683),	-- Quagmirran's Eye
							applyclassicphase(TBC_PHASE_ONE, i(23572)),	-- Primal Nether
							i(33821),	-- The Heart of Quagmirran
							i(72119, {	-- The Slave Master's Eye
								["timeline"] = { ADDED_4_3_0 },
							}),
						},
					}),
				},
			}),
		},
	})),
})));

root(ROOTS.HiddenQuestTriggers, {
	expansion(EXPANSION.TBC, bubbleDownSelf({ ["timeline"] = { ADDED_2_0_1 } }, {
		inst(260, {
			q(11115),	-- The Mark of Vashj (FLAG ONLY)
		}),
	})),
	expansion(EXPANSION.WOD, bubbleDownSelf({ ["timeline"] = { ADDED_6_0_2 } }, {
		inst(260, {
			q(35561),	-- The Slave Pens Reward Quest - Normal completion
			q(35562),	-- The Slave Pens Reward Quest - Heroic completion
		}),
	})),
});
