-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

root(ROOTS.Instances, expansion(EXPANSION.TBC, applyclassicphase(TBC_PHASE_FIVE, {
	inst(249, bubbleDownSelf({ ["timeline"] = { ADDED_2_4_0 } }, {	-- Magisters' Terrace
		["lore"] = "Situated on a ridge in northeastern Quel'Danas, Magisters' Terrace serves as a convenient base for Kael'thas and his underlings as they assist the proceedings in the Sunwell Plateau. Kael'thas stands poised to desecrate the ancient lands of his people with an incomparable evil. Should he succeed, the Legion's darkness will rapidly spread to all corners of Azeroth, extinguishing everything in its path.",
		-- #if BEFORE MOP
		["zone-text-areaID"] = 4095,	-- Magisters' Terrace
		-- #endif
		["coord"] = { 61.23, 30.94, ISLE_OF_QUELDANAS },	-- Magister's Terrace, Isle of Quel'Danas
		["maps"] = {
			MAGISTERS_TERRACE,	-- Grand Magister's Asylum
			349,	-- Observation Grounds
		},
		["lvl"] = lvlsquish(65, 65, 25),
		["groups"] = {
			n(QUESTS, {
				q(29686, {	-- A Radical Notion
					["qg"] = 55007,	-- Exarch Larethor
					["timeline"] = { ADDED_4_3_0 },
					["lvl"] = lvlsquish(68, 68, 25),
					["groups"] = {
						objective(1, {	-- 0/1 Volatile Essence
							["provider"] = { "i", 73084 },	-- Volatile Essence
						}),
					},
				}),
				q(11492, {	-- Hard to Kill
					["sourceQuest"] = 11490,	-- The Scryer's Scryer
					["qg"] = 24848,	-- Kalecgos
					["timeline"] = { REMOVED_4_3_0 },
					["lvl"] = lvlsquish(70, 70, 25),
					["groups"] = {
						objective(1, {	-- 0/1 Head of Kael'thas
							["provider"] = { "i", 34157 },	-- Head of Kael'thas
						}),
						i(35487),	-- Delicate Crimson Spinel
						i(35488),	-- Brilliant Crimson Spinel
					},
				}),
				q(29685, {	-- Hard to Kill
					["sourceQuest"] = 11490,	-- The Scryer's Scryer
					["qg"] = 24848,	-- Kalecgos
					["timeline"] = { ADDED_4_3_0 },
					["lvl"] = lvlsquish(68, 68, 25),
					["groups"] = {
						objective(1, {	-- 0/1 Head of Kael'thas
							["provider"] = { "i", 34157 },	-- Head of Kael'thas
						}),
						i(35487),	-- Delicate Crimson Spinel
						i(35488),	-- Brilliant Crimson Spinel
					},
				}),
				q(11488, {	-- Magisters' Terrace
					["sourceQuests"] = {
						11481,	-- Crisis at the Sunwell
						11482,	-- Duty Calls
					},
					["qg"] = 24813,	-- Exarch Larethor
					["coord"] = { 47.4, 30.7, ISLE_OF_QUELDANAS },
					["timeline"] = { REMOVED_4_3_0 },
					["lvl"] = lvlsquish(70, 70, 25),
				}),
				q(29682, {	-- Magisters' Terrace
					["sourceQuests"] = {
						11481,	-- Crisis at the Sunwell
						11482,	-- Duty Calls
					},
					["qg"] = 24967,	-- Captain Theris Dawnhearth
					["coord"] = { 47.4, 30.4, ISLE_OF_QUELDANAS },
					["timeline"] = { ADDED_4_3_0 },
					["lvl"] = lvlsquish(68, 68, 25),
				}),
				q(29684, {	-- Severed Communications
					["sourceQuest"] = 29682,	-- Magisters' Terrace
					["qg"] = 55007,	-- Exarch Larethor
					["timeline"] = { ADDED_4_3_0 },
					["lvl"] = lvlsquish(68, 68, 25),
				}),
				q(11490, {	-- The Scryer's Scryer
					["sourceQuests"] = {
						-- #if AFTER 4.3.0
						29684,	-- Severed Communications
						-- #else
						11488,	-- Magisters' Terrace
						-- #endif
					},
					["lvl"] =
						-- #if AFTER 4.3.0
						lvlsquish(68, 68, 25),
						-- #else
						lvlsquish(70, 70, 25),
						-- #endif
					["qg"] = 24822,	-- Tyrith
					["groups"] = {
						objective(1, {	-- Scrying Orb Activated
							["provider"] = { "o", 189292 },	-- Scrying Orb
						}),
					},
				}),
				q(29687, {	-- Twisted Associations
					["qg"] = 55007,	-- Exarch Larethor
					["timeline"] = { ADDED_4_3_0 },
					["lvl"] = lvlsquish(68, 68, 25),
					["groups"] = {
						objective(1, {	-- Selin Fireheart slain
							["provider"] = { "n", 24723 },	-- Selin Fireheart
						}),
						objective(2, {	-- Priestess Delrissa slain
							["provider"] = { "n", 24560 },	-- Priestess Delrissa
						}),
					},
				}),
			}),
			filter(RECIPES, {
				["cr"] = 24664,	-- Kael'thas Sunstrider
				["groups"] = {
					-- #if BEFORE CATA
					i(35306, {	-- Design: Bright Living Ruby (RECIPE!) [BoP]
						["timeline"] = { ADDED_2_4_0, REMOVED_4_0_3 },
					}),
					i(35307),	-- Design: Rigid Dawnstone (RECIPE!) [BoP]
					i(35305),	-- Design: Runed Living Ruby (RECIPE!) [BoP]
					i(35304),	-- Design: Solid Star of Elune (RECIPE!) [BoP]
					-- #else
					i(35305),	-- Design: Brilliant Living Ruby (RECIPE!) [BoP]
					i(35306, {	-- Design: Delicate Living Ruby (RECIPE!) [BoP]
						["timeline"] = { ADDED_2_4_0, REMOVED_4_0_3 },
					}),
					i(35307),	-- Design: Rigid Star of Elune (RECIPE!) [BoP]
					i(35304),	-- Design: Solid Star of Elune (RECIPE!) [BoP]
					-- #endif
					i(35297),	-- Formula: Enchant Boots - Boar's Speed (RECIPE!)
					i(35299),	-- Formula: Enchant Boots - Cat's Swiftness (RECIPE!)
					i(35298),	-- Formula: Enchant Boots - Vitality (RECIPE!)
					i(35302),	-- Pattern: Cobrascale Gloves (RECIPE!)
					i(35303),	-- Pattern: Gloves of the Living Touch (RECIPE!)
					i(35301),	-- Pattern: Netherdrake Gloves (RECIPE!)
					i(35308),	-- Pattern: Unyielding Bracers (RECIPE!)
					i(35309),	-- Pattern: Unyielding Girdle (RECIPE!)
					i(35300),	-- Pattern: Windstrike Gloves (RECIPE!)
					i(35296),	-- Plans: Adamantite Weapon Chain (RECIPE!)
					i(35294),	-- Recipe: Elixir of Empowerment (RECIPE!)
					i(35295),	-- Recipe: Haste Potion (BoP Version) (RECIPE!)
					i(35310),	-- Schematic: Healing Potion Injector (RECIPE!) [BoP]
					i(35311),	-- Schematic: Mana Potion Injector (RECIPE!) [BoP]
				},
			}),
			n(ZONE_DROPS, {
				i(35516),	-- Sun Touched Satchel
			}),
			d(DIFFICULTY.DUNGEON.NORMAL, {
				e(530, {	-- Selin Fireheart
					["creatureID"] = 24723,
					["groups"] = {
						-- #if AFTER 7.3.5
						i(34604),	-- Jaded Crystal Dagger
						-- #endif
						i(34699),	-- Sun-Forged Cleaver
						-- #if AFTER 7.3.5
						i(34601),	-- Shoulderplates of Everlasting Pain
						-- #endif
						i(34702),	-- Cloak of Swift Mending
						i(34697),	-- Bindings of Raging Fire
						i(34698),	-- Bracers of the Forest Stalker
						-- #if AFTER 7.3.5
						i(34602),	-- Eversong Bracers
						-- #endif
						i(34700),	-- Gauntlets of Divine Blessings
						i(34701),	-- Leggings of the Betrayed
					},
				}),
				e(531, {	-- Vexallus
					["creatureID"] = 24744,
					["groups"] = {
						-- #if AFTER 7.3.5
						i(34608),	-- Rod of the Blazing Light
						i(34606),	-- Edge of Oppression
						-- #endif
						i(34703),	-- Landro's Dancing Blade
						-- #if AFTER 7.3.5
						i(34607),	-- Fel-Tinged Mantle
						-- #endif
						i(34708),	-- Cloak of the Coming Night
						-- #if AFTER 7.3.5
						i(34605),	-- Breastplate of Fierce Survival
						-- #endif
						i(34705),	-- Bracers of Divine Infusion
						i(34707),	-- Boots of Resuscitation
						i(34704),	-- Band of Arcane Alacrity
						i(34706),	-- Band of Determination
						i(73084, {	-- Volatile Essence
							["timeline"] = { ADDED_4_3_0 },
						}),
					},
				}),
				e(532, {	-- Priestess Delrissa
					["creatureID"] = 24560,
					["groups"] = {
						i(35756),	-- Formula: Enchant Cloak - Greater Dodge / TBC: Formula: Enchant Cloak - Steelweave (RECIPE!)
						i(34790),	-- Battle-Mace of the High Priestess
						i(34788),	-- Duskhallow Mantle
						i(34792),	-- Cloak of the Betrayed
						i(34789),	-- Bracers of Slaughter
						i(34791),	-- Gauntlets of the Tranquil Waves
						-- #if AFTER 7.3.5
						i(34473),	-- Commendation of Kael'thas
						i(34472),	-- Shard of Contempt
						i(34470),	-- Timbal's Focusing Crystal
						i(34471),	-- Vial of the Sunwell
						-- #endif
						-- #if BEFORE MOP
						i(34783, {	-- Nightstrike
							["timeline"] = { REMOVED_5_0_4 },
						}),
						-- #endif
					},
				}),
				e(533, {	-- Kael'thas Sunstrider
					["creatureID"] = 24664,
					["groups"] = {
						ach(661),	-- Magister's Terrace
						i(35504),	-- Phoenix Hatchling (PET!)
						i(34794),	-- Axe of Shattered Dreams
						i(34798),	-- Band of Celerity
						-- #if AFTER 7.3.5
						i(34616),	-- Breeching Comet
						-- #endif
						i(34810),	-- Cloak of Blade Turning
						i(34793),	-- Cord of Reconstruction
						-- #if AFTER 7.3.5
						i(34611),	-- Cudgel of Consecration
						-- #endif
						i(34808),	-- Gloves of Arcane Acuity
						-- #if AFTER 7.3.5
						i(34612),	-- Greaves of the Penitent Knight
						-- #endif
						i(34799),	-- Hauberk of the War Bringer
						i(34795),	-- Helm of Sanctification
						i(34625),	-- Kharmaa's Ring of Fate
						-- #if AFTER 7.3.5
						i(34615),	-- Netherforce Chestplate
						i(34609),	-- Quickening Blade of the Prince
						-- #endif
						i(34796),	-- Robes of the Summer Flame
						-- #if AFTER 7.3.5
						i(34610),	-- Scarlet Sin'dorei Robes
						i(34613),	-- Shoulderpads of the Silvermoon Retainer
						-- #endif
						i(34797),	-- Sun-Infused Focus Staff
						i(34809),	-- Sunrage Treads
						i(34807),	-- Sunstrider Warboots
						-- #if AFTER 7.3.5
						i(34614),	-- Tunic of the Ranger Lord
						-- #endif
						i(34157),	-- Head of Kael'thas
					},
				})
			}),
			d(DIFFICULTY.DUNGEON.HEROIC, {
				-- #if BEFORE 4.2.0
				["description"] = "You must completed the 'Hard to Kill' quest chain on Normal Mode before Heroic Mode becomes available.",
				["sourceQuest"] = 11492,	-- Hard to Kill
				-- #endif
				["lvl"] = lvlsquish(70, 70, 30),
				["groups"] = {
					n(COMMON_BOSS_DROPS, {
						i(35275, {	-- Orb of Sin'dorei (TOY!)
							["crs"] = {
								24723,	-- Selin Fireheart
								24744,	-- Vexallus
								24560,	-- Priestess Delrissa
								24664,	-- Kael'thas Sunstrider
							},
						}),
					}),
					e(530, {	-- Selin Fireheart
						["creatureID"] = 24723,
						["groups"] = {
							i(34604),	-- Jaded Crystal Dagger
							-- #if AFTER 7.3.5
							i(34699),	-- Sun-Forged Cleaver
							-- #endif
							i(34601),	-- Shoulderplates of Everlasting Pain
							-- #if AFTER 7.3.5
							i(34702),	-- Cloak of Swift Mending
							i(34697),	-- Bindings of Raging Fire
							i(34698),	-- Bracers of the Forest Stalker
							-- #endif
							i(34602),	-- Eversong Bracers
							-- #if AFTER 7.3.5
							i(34700),	-- Gauntlets of Divine Blessings
							i(34701),	-- Leggings of the Betrayed
							-- #endif
							-- #if BEFORE MOP
							i(34603, {	-- Distracting Blades
								["timeline"] = { REMOVED_5_0_4 },
							}),
							-- #endif
						},
					}),
					e(531, {	-- Vexallus
						["creatureID"] = 24744,
						["groups"] = {
							i(34608),	-- Rod of the Blazing Light
							i(34606),	-- Edge of Oppression
							-- #if AFTER 7.3.5
							i(34703),	-- Landro's Dancing Blade
							-- #endif
							i(34607),	-- Fel-Tinged Mantle
							-- #if AFTER 7.3.5
							i(34708),	-- Cloak of the Coming Night
							-- #endif
							i(34605),	-- Breastplate of Fierce Survival
							-- #if AFTER 7.3.5
							i(34705),	-- Bracers of Divine Infusion
							i(34707),	-- Boots of Resuscitation
							i(34704),	-- Band of Arcane Alacrity
							i(34706),	-- Band of Determination
							-- #endif
							i(73084, {	-- Volatile Essence
								["timeline"] = { ADDED_4_3_0 },
							}),
						},
					}),
					e(532, {	-- Priestess Delrissa
						["creatureID"] = 24560,
						["groups"] = {
							i(35756),	-- Formula: Enchant Cloak - Greater Dodge / TBC: Formula: Enchant Cloak - Steelweave (RECIPE!)
							-- #if AFTER 7.3.5
							i(34790),	-- Battle-Mace of the High Priestess
							i(34788),	-- Duskhallow Mantle
							i(34792),	-- Cloak of the Betrayed
							i(34789),	-- Bracers of Slaughter
							i(34791),	-- Gauntlets of the Tranquil Waves
							-- #endif
							i(34473),	-- Commendation of Kael'thas
							i(34472),	-- Shard of Contempt
							i(34470),	-- Timbal's Focusing Crystal
							i(34471),	-- Vial of the Sunwell
						},
					}),
					e(533, {	-- Kael'thas Sunstrider
						["creatureID"] = 24664,
						["groups"] = {
							ach(682),	-- Heroic: Magister's Terrace
							ach(5082, {	-- Heroic: Magister's Terrace Guild Run
								["timeline"] = { ADDED_4_0_3 },
							}),
							ach(884, {	-- Swift White Hawkstrider
								["provider"] = { "i", 35513 },	-- Swift White Hawkstrider
								["filterID"] = MOUNTS,
							}),
							i(35513),	-- Swift White Hawkstrider (MOUNT!)
							i(35504),	-- Phoenix Hatchling (PET!)
							-- #if AFTER 7.3.5
							i(34794),	-- Axe of Shattered Dreams
							i(34798),	-- Band of Celerity
							-- #endif
							i(34616),	-- Breeching Comet
							-- #if AFTER 7.3.5
							i(34810),	-- Cloak of Blade Turning
							i(34793),	-- Cord of Reconstruction
							-- #endif
							i(34611),	-- Cudgel of Consecration
							-- #if AFTER 7.3.5
							i(34808),	-- Gloves of Arcane Acuity
							-- #endif
							i(34612),	-- Greaves of the Penitent Knight
							-- #if AFTER 7.3.5
							i(34799),	-- Hauberk of the War Bringer
							i(34795),	-- Helm of Sanctification
							i(34625),	-- Kharmaa's Ring of Fate
							-- #endif
							i(34615),	-- Netherforce Chestplate
							i(34609),	-- Quickening Blade of the Prince
							-- #if AFTER 7.3.5
							i(34796),	-- Robes of the Summer Flame
							-- #endif
							i(34610),	-- Scarlet Sin'dorei Robes
							i(34613),	-- Shoulderpads of the Silvermoon Retainer
							-- #if AFTER 7.3.5
							i(34797),	-- Sun-Infused Focus Staff
							i(34809),	-- Sunrage Treads
							i(34807),	-- Sunstrider Warboots
							-- #endif
							i(34614),	-- Tunic of the Ranger Lord
							i(34157),	-- Head of Kael'thas
							i(34160),	-- The Signet Ring of Prince Kael'thas
						},
					})
				},
			}),
		},
	})),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.WOD, bubbleDownSelf({ ["timeline"] = { ADDED_6_0_2 } }, {
	inst(249, {
		q(35531),	-- Magisters' Terrace Reward Quest - Normal completion
		q(35532),	-- Magisters' Terrace Reward Quest - Heroic completion
	}),
})));
