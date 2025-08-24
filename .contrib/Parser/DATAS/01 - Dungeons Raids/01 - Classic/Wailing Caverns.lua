-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
root(ROOTS.Instances, expansion(EXPANSION.CLASSIC, {
	inst(240, {	-- Wailing Caverns
		-- #if BEFORE MOP
		["lore"] = "Recently, a night elf druid named Naralex discovered a network of underground caverns within the heart of the Barrens. Dubbed the 'Wailing Caverns', these natural caves were filled with steam fissures which produced long, mournful wails as they vented. Naralex believed he could use the caverns' underground springs to restore lushness and fertility to the Barrens - but to do so would require siphoning the energies of the fabled Emerald Dream.\n\nOnce connected to the Dream, however, the druid's vision somehow became a nightmare. Soon the Wailing Caverns began to change - the waters turned foul and the once-docile creatures inside metamorphosed into vicious, deadly predators. It is said that Naralex himself still resides somewhere inside the heart of the labyrinth, trapped beyond the edges of the Emerald Dream. Even his former acolytes have been corrupted by their master's waking nightmare - transformed into the wicked Druids of the Fang.",
		-- #endif
		-- #if BEFORE WRATH
		["zone-text-areaID"] = 718,	-- Wailing Caverns
		-- #endif
		["mapID"] = WAILING_CAVERNS,
		["coords"] = {
			-- #if AFTER CATA
			{ 55.2, 66.1, 11 },	-- Wailing Caverns, Northern Barrens
			-- #else
			{ 45.9, 35.7, THE_BARRENS },
			-- #endif
		},
		["lvl"] = lvlsquish(10, 12, 8),
		["groups"] = {
			n(QUESTS, {
				-- #if BEFORE CATA
				["description"] = "To get to the quest giver hub outside the instance:\n\nWhen facing the mouth of the cave, you should see that the entrance looks like a skull. The questgivers are in the left eye. To get there, climb up the mountain, drop onto the head, drop onto the brow, drop onto the nose, face the instance, and go into the eye on the left",
				-- #endif
				["groups"] = {
					q(26870, {	-- Cleansing the Caverns
						["qg"] = 5768,	-- Ebru
						["timeline"] = { ADDED_4_0_3 },
						["lvl"] = lvlsquish(15, 15, 8),
						["groups"] = {
							objective(1, {	-- 0/1 Lord Cobrahn slain
								["provider"] = { "n", 3669 },	-- Lord Cobrahn <Fanglord>
							}),
							objective(2, {	-- 0/1 Lady Anacondra slain
								["provider"] = { "n", 3671 },	-- Lady Anacondra <Fanglord>
							}),
							objective(3, {	-- 0/1 Lord Pythas slain
								["provider"] = { "n", 3670 },	-- Lord Pythas <Fanglord>
							}),
							objective(4, {	-- 0/1 Lord Serpentis slain
								["provider"] = { "n", 3673 },	-- Lord Serpentis <Fanglord>
							}),
							i(65911),	-- Anacondra's Robe
							i(65985),	-- Cleansed Pauldrons
							i(65961),	-- Cobrahn's Boots
							i(131615, {	-- Cobrahn's Scale Gloves
								["timeline"] = { ADDED_7_0_3 },
							}),
							i(131616, {	-- Pytha's Chain Boots
								["timeline"] = { ADDED_7_0_3 },
							}),
							i(66003),	-- Pytha's Vest
							i(65937),	-- Serpentis' Gloves
						},
					}),
					q(1487, {	-- Deviate Eradication
						["qg"] = 5768,	-- Ebru <Disciple of Naralex>
						["coord"] = { 46.0, 35.7, THE_BARRENS },
						["timeline"] = { REMOVED_4_0_3 },
						["lvl"] = 15,
						["groups"] = {
							objective(1, {	-- 0/7 Deviate Ravager slain
								["provider"] = { "n", 3636 },	-- Deviate Ravager
							}),
							objective(2, {	-- 0/7 Deviate Viper slain
								["provider"] = { "n", 5755 },	-- Deviate Viper
							}),
							objective(3, {	-- 0/7 Deviate Shambler slain
								["provider"] = { "n", 5761 },	-- Deviate Shambler
							}),
							objective(4, {	-- 0/7 Deviate Dreadfang slain
								["provider"] = { "n", 5056 },	-- Deviate Dreadfang
							}),
							i(6476, {	-- Pattern: Deviate Scale Belt (RECIPE!)
								["timeline"] = { REMOVED_4_0_3 },
							}),
							i(8071, {	-- Sizzle Stick
								["timeline"] = { REMOVED_4_0_3 },
							}),
							i(6481, {	-- Dagmire Gauntlets
								["timeline"] = { REMOVED_4_0_3 },
							}),
						},
					}),
					q(1486, {	-- Deviate Hides
						["qg"] = 5767,	-- Nalpak <Disciple of Naralex>
						["coord"] = { 46.0, 35.7, THE_BARRENS },
						["timeline"] = { REMOVED_4_0_3 },
						["lvl"] = 13,
						["groups"] = {
							objective(1, {	-- 0/20 Deviate Hide
								["provider"] = { "i", 6443 },	-- Deviate Hide
							}),
							i(6480, {	-- Slick Deviate Leggings
								["timeline"] = { REMOVED_4_0_3 },
							}),
							i(918, {	-- Deviate Hide Pack
								["timeline"] = { REMOVED_4_0_3 },
							}),
						},
					}),
					q(26872, {	-- Deviate Hides
						["qg"] = 5767,	-- Nalpak
						["timeline"] = { ADDED_4_0_3 },
						["lvl"] = lvlsquish(15, 15, 8),
						["groups"] = {
							objective(1, {	-- 0/10 Deviate Hide
								["provider"] = { "i", 6443 },	-- Deviate Hide
							}),
						},
					}),
					q(1489, {	-- Hamuul Runetotem
						["sourceQuest"] = 880,	-- Altered Beings
						["providers"] = {
							{ "n", 3448 },	-- Tonga Runetotem
							{ "i", 10414 },	-- Sample Snapjaw Shell
						},
						["coord"] = { 52.3, 31.9, THE_BARRENS },
						["timeline"] = { REMOVED_4_0_3 },
						["races"] = HORDE_ONLY,
						["lvl"] = 10,
					}),
					q(3370, {	-- In Nightmares [A]
						["description"] = "She lives in a house on top of the mountain.",
						["sourceQuest"] = 6981,	-- The Glowing Shard
						["qg"] = 8418,	-- Falla Sagewind
						["coord"] = { 48.2, 32.8, THE_BARRENS },
						["timeline"] = { REMOVED_4_0_3 },
						["races"] = ALLIANCE_ONLY,
						["lvl"] = 15,
						["groups"] = {
							objective(1, {
								["provider"] = { "i", 10649 },	-- Nightmare Shard
							}),
							i(10657, {	-- Talbar Mantle
								["timeline"] = { REMOVED_4_0_3 },
							}),
							i(10658, {	-- Quagmire Galoshes
								["timeline"] = { REMOVED_4_0_3 },
							}),
						},
					}),
					q(3369, {	-- In Nightmares [H]
						["description"] = "She lives in a house on top of the mountain.",
						["sourceQuest"] = 6981,	-- The Glowing Shard
						["qg"] = 8418,	-- Falla Sagewind
						["coord"] = { 48.2, 32.8, THE_BARRENS },
						["timeline"] = { REMOVED_4_0_3 },
						["races"] = HORDE_ONLY,
						["lvl"] = 15,
						["groups"] = {
							objective(1, {
								["provider"] = { "i", 10649 },	-- Nightmare Shard
							}),
							i(10657, {	-- Talbar Mantle
								["timeline"] = { REMOVED_4_0_3 },
							}),
							i(10658, {	-- Quagmire Galoshes
								["timeline"] = { REMOVED_4_0_3 },
							}),
						},
					}),
					q(914, {	-- Leaders of the Fang
						["sourceQuest"] = 1490,	-- Nara Wildmane
						["qg"] = 5770,	-- Nara Wildmane
						["coord"] = { 75.6, 31.2, THUNDER_BLUFF },
						["timeline"] = { REMOVED_4_0_3 },
						["races"] = HORDE_ONLY,
						["lvl"] = 10,
						["groups"] = {
							objective(1, {	-- 0/1 Gem of Cobrahn
								["provider"] = { "i", 9738 },	-- Gem of Cobrahn
							}),
							objective(2, {	-- 0/1 Gem of Anacondra
								["provider"] = { "i", 9739 },	-- Gem of Anacondra
							}),
							objective(3, {	-- 0/1 Gem of Pythas
								["provider"] = { "i", 9740 },	-- Gem of Pythas
							}),
							objective(4, {	-- 0/1 Gem of Serpentis
								["provider"] = { "i", 9741 },	-- Gem of Serpentis
							}),
							i(6505, {	-- Crescent Staff
								["timeline"] = { REMOVED_4_0_3 },
							}),
							i(6504, {	-- Wingblade
								["timeline"] = { REMOVED_4_0_3 },
							}),
						},
					}),
					q(1490, {	-- Nara Wildmane
						["sourceQuest"] = 1489,	-- Hamuul Runetotem
						["qg"] = 5769,	-- Arch Druid Hamuul Runetotem
						["coord"] = { 74.7, 30.2, THUNDER_BLUFF },
						["timeline"] = { REMOVED_4_0_3 },
						["races"] = HORDE_ONLY,
						["lvl"] = 10,
					}),
					q(26873, {	-- Preemptive Methods
						["qg"] = 5767,	-- Nalpak
						["timeline"] = { ADDED_4_0_3 },
						["lvl"] = lvlsquish(15, 15, 8),
						["groups"] = {
							objective(1, {	-- 0/5 Serpentbloom
								["providers"] = {
									{ "i", 5339 },	-- Serpentbloom
									{ "o", 13891 },	-- Serpentbloom
								},
							}),
						},
					}),
					q(962, {	-- Serpentbloom
						["qg"] = 3419,	-- Apothecary Zamah <Royal Apothecary Society>
						["coord"] = { 23.6, 21.4, THUNDER_BLUFF },
						["timeline"] = { REMOVED_4_0_3 },
						["races"] = HORDE_ONLY,
						["lvl"] = 14,
						["groups"] = {
							objective(1, {	-- 0/10 Serpentbloom
								["providers"] = {
									{ "i", 5339 },	-- Serpentbloom
									{ "o", 13891 },	-- Serpentbloom
								},
							}),
							i(10919, {	-- Apothecary Gloves
								["timeline"] = { REMOVED_4_0_3 },
							}),
						},
					}),
					q(1491, {	-- Smart Drinks
						["sourceQuest"] = 865,	-- Raptor Horns
						["qg"] = 3446,	-- Mebok Mizzyrix
						["coord"] = { 62.4, 37.6, THE_BARRENS },
						["timeline"] = { REMOVED_4_0_3 },
						["lvl"] = 13,
						["groups"] = {
							objective(1, {	-- 0/6 Wailing Essence
								["provider"] = { "i", 6464 },	-- Wailing Essence
								["crs"] = {
									3638,	-- Devouring Ectoplasm
									3640,	-- Evolving Ectoplasm
									5763,	-- Nightmare Ectoplasm
								},
							}),
						},
					}),
					q(6981, {	-- The Glowing Shard
						["provider"] = { "i", 10441 },	-- Glowing Shard
						["qg"] = 3442,	-- Sputtervalve <Tinkers' Union>
						["coord"] = { 63.0, 37.2, THE_BARRENS },
						["timeline"] = { REMOVED_4_0_3 },
					}),
				},
			}),
			-- #if SEASON_OF_DISCOVERY
			n(TREASURES, {
				applyclassicphase(SOD_PHASE_ONE, i(209846, {	-- Secrets of the Dreamers
					["provider"] = { "o", 409692 },	-- Scrolls
					["coord"] = { 52.83, 54.70, THE_BARRENS },
				})),
			}),
			-- #endif
			n(VENDORS, {
				n(5783, {	-- Kalldan Felmoon <Specialist Leatherworking Supplies>
					["coord"] = { 45.9, 35.7, THE_BARRENS },
					["timeline"] = { REMOVED_4_0_3 },
					["groups"] = {
						i(6474, {	-- Pattern: Deviate Scale Cloak (RECIPE!)
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(6475, {	-- Pattern: Deviate Scale Gloves (RECIPE!)
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
			}),
			n(ZONE_DROPS, {
				i(48114, {	-- Deviate Hatchling (PET!)
					["timeline"] = { ADDED_3_2_0 },
					["crs"] = {
						3637,	-- Deviate Guardian
						3636,	-- Deviate Ravager
					},
				}),
				i(6443, {	-- Deviate Hide
					["description"] = "Drops from Deviate creatures in the Wailing Caverns.",
				}),
				n(3840, {	-- Druid of the Fang
					i(10413),	-- Gloves of the Fang
					i(132743, {	-- Slither-Scale Gauntlets
						["timeline"] = { ADDED_7_0_3 },
					}),
					i(208015, bubbleDown({ ["timeline"] = { ADDED_10_1_5 } }, {	-- Stuffed Deviate Scale Pouch
						i(208016),	-- Deviate Scale Pouch
						i(208020),	-- Dagmire Gloves
						i(208018),	-- Fangblade
						i(6476),	-- Pattern: Deviate Scale Belt (RECIPE!)
						i(6474),	-- Pattern: Deviate Scale Cloak (RECIPE!)
						i(6475),	-- Pattern: Deviate Scale Gloves (RECIPE!)
						i(208019),	-- Quagmire Trudgers
						i(208021),	-- Sizzling Stick
					})),
				}),
			}),
			prof(SKINNING, {
				i(6470, {	-- Deviate Scale
					["description"] = "Can drop-, as well as be skinned from all deviates within the Wailing Caverns.",
				}),
				i(6471, {	-- Perfect Deviate Scale
					["description"] = "Can drop-, as well as be skinned from all deviates within the Wailing Caverns, although the droprate is low.",
				}),
			}),
			e(474, {	-- Lady Anacondra
				["creatureID"] = 3671,
				["groups"] = {
					i(9739),	-- Gem of Anacondra
					i(151427, {	-- Snake-Charmer's Casque
						["timeline"] = { ADDED_7_3_0 },
					}),
					i(132737, {	-- Cavern Slitherer Pauldrons
						["timeline"] = { ADDED_7_0_3 },
					}),
					i(5404),	-- Serpent's Shoulders
					i(151426, {	-- Lady Anacondra's Satin Cuffs
						["timeline"] = { ADDED_7_3_0 },
					}),
					i(10412),	-- Belt of the Fang
					i(132740, {	-- Slither-Scale Cord
						["timeline"] = { ADDED_7_0_3 },
					}),
					i(6446),	-- Snakeskin Bag
				},
			}),
			e(477, {	-- Kresh
				["creatureID"] = 3653,
				["groups"] = {
					i(13245),	-- Kresh's Back
					i(6447),	-- Worn Turtle Shell Shield
					i(151430, {	-- Hematite Tortoise Pendant
						["timeline"] = { ADDED_7_3_0 },
					}),
				},
			}),
			e(476, {	-- Lord Pythas
				["creatureID"] = 3670,
				["groups"] = {
					i(9740),	-- Gem of Pythas
					i(6472),	-- Stinging Viper
					i(151429, {	-- Lord Pythas' Pauldrons
						["timeline"] = { ADDED_7_3_0 },
					}),
					i(6473),	-- Armor of the Fang
					i(132739, {	-- Slither-Scale Hauberk
						["timeline"] = { ADDED_7_0_3 },
					}),
					i(151428, {	-- Slumbersilk Waistcord
						["timeline"] = { ADDED_7_3_0 },
					}),
				},
			}),
			e(475, {	-- Lord Cobrahn
				["creatureID"] = 3669,
				["groups"] = {
					i(9738),	-- Gem of Cobrahn
					i(6465),	-- Robe of the Moccasin
					i(6460),	-- Cobrahn's Grasp
					i(10410),	-- Leggings of the Fang
					i(132742, {	-- Slither-Scale Britches
						["timeline"] = { ADDED_7_0_3 },
					}),
				},
			}),
			e(478, {	-- Skum
				["creatureID"] = 3674,
				["groups"] = {
					i(6448),	-- Tail Spike
					i(6449),	-- Glowing Lizardscale Cloak
				},
			}),
			n(5912, {	-- Deviate Faerie Dragon
				["description"] = "This is a Rare Creature and, as such, is not always present.",
				["groups"] = {
					i(5243),	-- Firebelcher
					i(6632),	-- Feyscale Cloak
				},
			}),
			e(479, {	-- Lord Serpentis
				["creatureID"] = 3673,
				["groups"] = {
					i(9741),	-- Gem of Serpentis
					i(6469),	-- Venomstrike
					i(5970),	-- Serpent Gloves
					i(10411),	-- Footpads of the Fang
					i(6459),	-- Savage Trodders
					i(132741, {	-- Slither-Scale Boots
						["timeline"] = { ADDED_7_0_3 },
					}),
				},
			}),
			e(480, {	-- Verdan the Everliving
				["creatureID"] = 5775,
				["groups"] = {
					i(6631),	-- Living Root
					i(6630),	-- Seedcloud Buckler
					i(6629),	-- Sporid Cape
				},
			}),
			e(481, {	-- Mutanus the Devourer
				["creatureID"] = 3654,
				["groups"] = {
					ach(630),	-- Wailing Caverns
					ach(5039, {	-- Wailing Caverns Guild Run
						["timeline"] = { ADDED_4_0_3 },
					}),
					-- #if SEASON_OF_DISCOVERY
					applyclassicphase(SOD_PHASE_ONE, i(209838, {	-- Hypnotic Crystal
						["timeline"] = { REMOVED_2_0_1 },
						["classes"] = { HUNTER },
					})),
					-- #endif
					i(10441),	-- Glowing Shard
					i(6461),	-- Slime-Encrusted Pads
					i(6627),	-- Mutant Breastplate
					i(6463),	-- Deep Fathom Ring
				},
			}),
		},
	}),
}));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.WOD, bubbleDownSelf({ ["timeline"] = { ADDED_6_0_2 } }, {
	inst(240, {
		q(35303),	-- Wailing Caverns Reward Quest — Normal completion
		q(35307),	-- Wailing Caverns Bonus Objective
	}),
})));
