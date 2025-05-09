-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
root(ROOTS.Instances, expansion(EXPANSION.WRATH, applyclassicphase(WRATH_PHASE_ONE, {
	inst(279, {	-- The Culling of Stratholme
		["mapID"] = THE_CULLING_OF_STRATHOLME,
		["coord"] = { 56.9, 82.4, CAVERNS_OF_TIME },
		["maps"] = { THE_CULLING_OF_STRATHOLME_FLOOR2 },
		["lvl"] = lvlsquish(75, 75, 25),
		["groups"] = {
			n(ACHIEVEMENTS, {
				ach(479, {	-- The Culling of Stratholme
					crit(5467, {	-- Meathook
						["_encounter"] = { 611, DIFFICULTY.DUNGEON.NORMAL },
					}),
					crit(5468, {	-- Chrono-Lord Epoch
						["_encounter"] = { 613, DIFFICULTY.DUNGEON.NORMAL },
					}),
					crit(5469, {	-- Salramm the Fleshcrafter
						["_encounter"] = { 612, DIFFICULTY.DUNGEON.NORMAL },
					}),
					-- #if ANYCLASSIC
					-- NOTE: This boss has a different criteriaUID in classic for some dumb reason. BLIZZARD.
					crit(6432, {	-- Mal'Ganis
						["_encounter"] = { 614, DIFFICULTY.DUNGEON.NORMAL },
					}),
					-- #else
					crit(6433, {	-- Mal'Ganis
						["_encounter"] = { 614, DIFFICULTY.DUNGEON.NORMAL },
					}),
					-- #endif
				}),
				-- #if ANYCLASSIC
				applyclassicphase(WRATH_PHASE_TWO, ach(17302, {	-- Defense Protocol Alpha: The Culling of Stratholme
					crit(57771, {	-- Meathook
						["_encounter"] = { 611, DEFENSE_PROTOCOL_ALPHA },
					}),
					crit(57773, {	-- Salramm the Fleshcrafter
						["_encounter"] = { 612, DEFENSE_PROTOCOL_ALPHA },
					}),
					crit(57772, {	-- Chrono-Lord Epoch
						["_encounter"] = { 613, DEFENSE_PROTOCOL_ALPHA },
					}),
					crit(57770, {	-- Mal'Ganis
						["_encounter"] = { 614, DEFENSE_PROTOCOL_ALPHA },
					}),
				})),
				applyclassicphase(WRATH_PHASE_THREE, ach(18601, {	-- Defense Protocol Beta: The Culling of Stratholme
					crit(60614, {	-- Meathook
						["_encounter"] = { 611, DEFENSE_PROTOCOL_BETA },
					}),
					crit(60616, {	-- Salramm the Fleshcrafter
						["_encounter"] = { 612, DEFENSE_PROTOCOL_BETA },
					}),
					crit(60615, {	-- Chrono-Lord Epoch
						["_encounter"] = { 613, DEFENSE_PROTOCOL_BETA },
					}),
					crit(60613, {	-- Mal'Ganis
						["_encounter"] = { 614, DEFENSE_PROTOCOL_BETA },
					}),
				})),
				applyclassicphase(WRATH_PHASE_FOUR, ach(19438, {	-- Defense Protocol Gamma: The Culling of Stratholme
					crit(63375, {	-- Meathook
						["_encounter"] = { 611, DEFENSE_PROTOCOL_GAMMA },
					}),
					crit(63377, {	-- Salramm the Fleshcrafter
						["_encounter"] = { 612, DEFENSE_PROTOCOL_GAMMA },
					}),
					crit(63376, {	-- Chrono-Lord Epoch
						["_encounter"] = { 613, DEFENSE_PROTOCOL_GAMMA },
					}),
					crit(63374, {	-- Mal'Ganis
						["_encounter"] = { 614, DEFENSE_PROTOCOL_GAMMA },
					}),
				})),
				-- #endif
				ach(500, {	-- Heroic: The Culling of Stratholme
					crit(6805, {	-- Meathook
						["_encounter"] = { 611, DIFFICULTY.DUNGEON.HEROIC },
					}),
					crit(6806, {	-- Chrono-Lord Epoch
						["_encounter"] = { 613, DIFFICULTY.DUNGEON.HEROIC },
					}),
					crit(6807, {	-- Salramm the Fleshcrafter
						["_encounter"] = { 612, DIFFICULTY.DUNGEON.HEROIC },
					}),
					crit(6434, {	-- Mal'Ganis
						["_encounter"] = { 614, DIFFICULTY.DUNGEON.HEROIC },
					}),
				}),
			}),
			n(QUESTS, {
				q(13151, {	-- A Royal Escort
					["qg"] = 26527,	-- Chromie
					["sourceQuest"] = 13149,	-- Dispelling Illusions
					["lvl"] = lvlsquish(78, 78, 25),
					["groups"] = {
						objective(1, {	-- 0/1 Mal'Ganis Defeated
							["provider"] = { "n", 26533 },	-- Mal'Ganis
						}),
						i(44396),	-- Gloves of the Time Guardian
						i(44397),	-- Handwraps of Preserved History
						i(44398),	-- Grips of Chronological Events
						i(44399),	-- Gauntlets of The Culling
					},
				}),
				q(13149, {	-- Dispelling Illusions
					["qg"] = 26527,	-- Chromie
					["lvl"] = lvlsquish(78, 78, 25),
					["groups"] = {
						objective(1, {	-- Plagued Grain Crates Dispelled
							["provider"] = { "i", 37888 },	-- Arcane Disruptor
						}),
					},
				}),
			}),
			n(VENDORS, {
				n(31021, {	-- Sophie Aaren <Florist>
					["coord"] = { 64.0, 55.2, THE_CULLING_OF_STRATHOLME_FLOOR2 },
					["groups"] = {
						i(43327),	-- Stratholme Lily
					},
				}),
			}),
			n(ZONE_DROPS, {
				i(37115),	-- Crusader's Square Pauldrons
				i(37697, {	-- Trade District Knife
					["timeline"] = { CREATED_3_0_3, ADDED_7_3_5 },
				}),
				i(37116),	-- Epaulets of Market Row
				i(37699, {	-- Festival Lane Girdle
					["timeline"] = { CREATED_3_0_3, ADDED_7_3_5 },
				}),
				i(37117),	-- King's Square Bracers
				i(37698, {	-- Spaulders of Elder's Square
					["timeline"] = { CREATED_3_0_3, ADDED_7_3_5 },
				}),
			}),
			d(DIFFICULTY.DUNGEON.NORMAL, {
				e(611, {	-- Meathook
					["creatureID"] = 26529,	-- Meathook
					["groups"] = {
						i(37081),	-- Meathook's Slicer
						-- #if AFTER 7.3.5
						i(37679),	-- Spaulders of the Abomination (7.3.5 - Used to be only Heroic Mode)
						i(37678),	-- Bile-Cured Gloves (7.3.5 - Used to be only Heroic Mode)
						i(37680),	-- Belt of Unified Souls (7.3.5 - Used to be only Heroic Mode)
						-- #endif
						i(37083),	-- Kilt of Sewn Flesh
						-- #if AFTER 7.3.5
						i(37675),	-- Legplates of Steel Implants (7.3.5 - Used to be only Heroic Mode)
						-- #endif
						i(37082),	-- Slaughterhouse Sabatons
						i(37079),	-- Enchanted Wire Stitching
					},
				}),
				e(612, {	-- Salramm the Fleshcrafter
					["creatureID"] = 26530,	-- Salramm the Fleshcrafter
					["groups"] = {
						-- #if AFTER 7.3.5
						i(37681),	-- Gavel of the Fleshcrafter (7.3.5 - Used to be only Heroic Mode)
						-- #endif
						i(37086),	-- Tome of Salramm
						-- #if AFTER 7.3.5
						i(37684),	-- Forgotten Shadow Hood (7.3.5 - Used to be only Heroic Mode)
						i(37683),	-- Necromancer's Amulet (7.3.5 - Used to be only Heroic Mode)
						-- #endif
						i(37084),	-- Flowing Cloak of Command
						-- #if AFTER 7.3.5
						i(37682),	-- Bindings of Dark Will (7.3.5 - Used to be only Heroic Mode)
						-- #endif
						i(37088),	-- Spiked Metal Cilice
						i(37095),	-- Waistband of the Thuzadin
						i(157563, {	-- Freshly Sewn Leggings
							["timeline"] = { ADDED_7_3_5 },
						}),
					},
				}),
				e(613, {	-- Chrono-Lord Epoch
					["creatureID"] = 26532,	-- Chrono-Lord Epoch
					["groups"] = {
						i(37099),	-- Sempiternal Staff
						i(37096, {	-- Necklace of the Chrono-Lord
							["timeline"] = { REMOVED_11_1_5 },
						}),
						i(238990, {	-- Necklace of the Chrono-Lord
							["timeline"] = { ADDED_11_1_5 },
						}),
						-- #if AFTER 7.3.5
						i(37686, {	-- Cracked Epoch Grasps (7.3.5 - Used to be only Heroic Mode)
							["timeline"] = { REMOVED_11_1_5 },
						}),
						i(37687, {	-- Gloves of Distorted Time (7.3.5 - Used to be only Heroic Mode)
							["timeline"] = { REMOVED_11_1_5 },
						}),
						-- #endif
						i(238993, {	-- Cracked Epoch Grasps
							["timeline"] = { ADDED_11_1_5 },
						}),
						i(238991, {	-- Gloves of Distorted Time
							["timeline"] = { ADDED_11_1_5 },
						}),
						i(37106),	-- Ouroboros Belt
						-- #if AFTER 7.3.5
						i(37688),	-- Legplates of the Infinite Drakonid (7.3.5 - Used to be only Heroic Mode)
						-- #endif
						i(37105),	-- Treads of Altered History
						-- #if AFTER 7.3.5
						i(37685, {	-- Mobius Band (7.3.5 - Used to be only Heroic Mode)
							["timeline"] = { REMOVED_11_1_5 },
						}),
						-- #endif
						i(238992, {	-- Mobius Band
							["timeline"] = { ADDED_11_1_5 },
						}),
					},
				}),
				e(614, {	-- Mal'Ganis
					["creatureID"] = 26533,	-- Mal'Ganis
					["groups"] = {
						i(37108),	-- Dreadlord's Blade
						i(37112),	-- Beguiling Scepter
						-- #if AFTER 7.3.5
						i(37693),	-- Greed (7.3.5 - Used to be only Heroic Mode)
						i(37692),	-- Pierce's Pistol (7.3.5 - Used to be only Heroic Mode)
						-- #endif
						i(37107),	-- Leeka's Shield
						-- #if AFTER 7.3.5
						i(43085),	-- Royal Crest of Lordaeron (7.3.5 - Used to be only Heroic Mode)
						i(37689),	-- Pendant of the Nathrezim (7.3.5 - Used to be only Heroic Mode)
						-- #endif
						i(37109),	-- Discarded Silver Hand Spaulders
						-- #if AFTER 7.3.5
						i(37691),	-- Mantle of Deceit (7.3.5 - Used to be only Heroic Mode)
						i(37690),	-- Pauldrons of Destiny (7.3.5 - Used to be only Heroic Mode)
						-- #endif
						i(37113),	-- Demonic Fabric Bands
						-- #if AFTER 7.3.5
						i(37696),	-- Plague-Infected Bracers (7.3.5 - Used to be only Heroic Mode)
						-- #endif
						i(37110),	-- Gauntlets of Dark Conversion
						i(37114),	-- Gloves of Northern Lordaeron
						-- #if AFTER 7.3.5
						i(37695),	-- Legguards of Nature's Power (7.3.5 - Used to be only Heroic Mode)
						i(37694),	-- Band of Guile (7.3.5 - Used to be only Heroic Mode)
						-- #endif
						i(37111),	-- Soul Preserver
					},
				}),
			}),
			d(DIFFICULTY.DUNGEON.HEROIC, {
				["lvl"] = lvlsquish(80, 80, 30),
				["groups"] = {
					n(ACHIEVEMENTS, {
						ach(1872, {	-- Zombiefest!
							["description"] = "Gather zombies leading up to Meathook, but do not kill them.\n\nKill Meathook and wait for zombies to respawn; then gather and kill more zombies.",
							["cr"] = 27737,	-- Risen Zombie
						}),
					}),
					-- #if BEFORE CATA
					n(COMMON_BOSS_DROPS, {
						currency(101, {	-- Emblem of Heroism
							["timeline"] = { ADDED_3_0_2, REMOVED_4_0_1 },
						}),
					}),
					-- #endif
					e(611, {	-- Meathook
						["creatureID"] = 26529,	-- Meathook
						["groups"] = {
							-- #if AFTER 7.3.5
							i(37081),	-- Meathook's Slicer (7.3.5 - Used to be only Normal Mode)
							-- #endif
							i(37679),	-- Spaulders of the Abomination
							i(37678),	-- Bile-Cured Gloves
							i(37680),	-- Belt of Unified Souls
							-- #if AFTER 7.3.5
							i(37083),	-- Kilt of Sewn Flesh (7.3.5 - Used to be only Normal Mode)
							-- #endif
							i(37675),	-- Legplates of Steel Implants
							-- #if AFTER 7.3.5
							i(37082),	-- Slaughterhouse Sabatons (7.3.5 - Used to be only Normal Mode)
							i(37079),	-- Enchanted Wire Stitching (7.3.5 - Used to be only Normal Mode)
							-- #endif
						},
					}),
					e(612, {	-- Salramm the Fleshcrafter
						["creatureID"] = 26530,	-- Salramm the Fleshcrafter
						["groups"] = {
							i(37681),	-- Gavel of the Fleshcrafter
							-- #if AFTER 7.3.5
							i(37086),	-- Tome of Salramm (7.3.5 - Used to be only Normal Mode)
							-- #endif
							i(37684),	-- Forgotten Shadow Hood
							i(37683),	-- Necromancer's Amulet
							-- #if AFTER 7.3.5
							i(37084),	-- Flowing Cloak of Command (7.3.5 - Used to be only Normal Mode)
							-- #endif
							i(37682),	-- Bindings of Dark Will
							-- #if AFTER 7.3.5
							i(37088),	-- Spiked Metal Cilice (7.3.5 - Used to be only Normal Mode)
							i(37095),	-- Waistband of the Thuzadin (7.3.5 - Used to be only Normal Mode)
							-- #endif
							i(157563, {	-- Freshly Sewn Leggings
								["timeline"] = { ADDED_7_3_5 },
							}),
						},
					}),
					e(613, {	-- Chrono-Lord Epoch
						["creatureID"] = 26532,	-- Chrono-Lord Epoch
						["groups"] = {
							-- #if AFTER 7.3.5
							i(37099),	-- Sempiternal Staff (7.3.5 - Used to be only Normal Mode)
							i(37096),	-- Necklace of the Chrono-Lord (7.3.5 - Used to be only Normal Mode)
							-- #endif
							i(37686, {	-- Cracked Epoch Grasps
								["timeline"] = { REMOVED_11_1_5 },
							}),
							i(238993, {	-- Cracked Epoch Grasps
								["timeline"] = { ADDED_11_1_5 },
							}),
							i(37687, {	-- Gloves of Distorted Time
								["timeline"] = { REMOVED_11_1_5 },
							}),
							i(238991, {	-- Gloves of Distorted Time
								["timeline"] = { ADDED_11_1_5 },
							}),
							-- #if AFTER 7.3.5
							i(37106),	-- Ouroboros Belt (7.3.5 - Used to be only Normal Mode)
							-- #endif
							i(37688),	-- Legplates of the Infinite Drakonid
							-- #if AFTER 7.3.5
							i(37105),	-- Treads of Altered History (7.3.5 - Used to be only Normal Mode)
							-- #endif
							i(37685, {	-- Mobius Band
								["timeline"] = { REMOVED_11_1_5 },
							}),
							i(238992, {	-- Mobius Band
								["timeline"] = { ADDED_11_1_5 },
							}),
						},
					}),
					n(32273, {	-- Infinite Corruptor
						ach(1817),	-- The Culling of Time
						i(43951),	-- Bronze Drake (MOUNT!)
					}),
					e(614, {	-- Mal'Ganis
						["creatureID"] = 26533,	-- Mal'Ganis
						["groups"] = {
							ach(5106, {	-- Heroic: The Culling of Stratholme Guild Run
								["timeline"] = { ADDED_4_0_3 },
							}),
							-- #if AFTER 7.3.5
							i(37108),	-- Dreadlord's Blade (7.3.5 - Used to be only Normal Mode)
							i(37112),	-- Beguiling Scepter (7.3.5 - Used to be only Normal Mode)
							-- #endif
							i(37693),	-- Greed
							i(37692),	-- Pierce's Pistol
							-- #if AFTER 7.3.5
							i(37107),	-- Leeka's Shield (7.3.5 - Used to be only Normal Mode)
							-- #endif
							i(43085),	-- Royal Crest of Lordaeron
							i(37689),	-- Pendant of the Nathrezim
							-- #if AFTER 7.3.5
							i(37109),	-- Discarded Silver Hand Spaulders (7.3.5 - Used to be only Normal Mode)
							-- #endif
							i(37691),	-- Mantle of Deceit
							i(37690),	-- Pauldrons of Destiny
							-- #if AFTER 7.3.5
							i(37113),	-- Demonic Fabric Bands (7.3.5 - Used to be only Normal Mode)
							-- #endif
							i(37696),	-- Plague-Infected Bracers
							-- #if AFTER 7.3.5
							i(37110),	-- Gauntlets of Dark Conversion (7.3.5 - Used to be only Normal Mode)
							i(37114),	-- Gloves of Northern Lordaeron (7.3.5 - Used to be only Normal Mode)
							-- #endif
							i(37695),	-- Legguards of Nature's Power
							i(37694),	-- Band of Guile
							-- #if AFTER 7.3.5
							i(37111),	-- Soul Preserver (7.3.5 - Used to be only Normal Mode)
							-- #endif
							-- #if BEFORE 4.0.1
							i(43697),	-- Artifact from the Nathrezim Homeworld
							-- #endif
						},
					}),
				},
			}),
			-- #if ANYCLASSIC
			applyclassicphase(WRATH_PHASE_TWO, n(DEFENSE_PROTOCOL_ALPHA, {
				["OnInit"] = FUNCTION_TEMPLATES.OnInit.GenerateShouldExcludeFromTooltipForBuffs(394444, 412867, 424210),
				["lvl"] = lvlsquish(80, 80, 30),
				["groups"] = {
					e(611, {	-- Meathook
						["creatureID"] = 26529,	-- Meathook
						["groups"] = {
							i(43992),	-- Volitant Amulet
							i(40429),	-- Crimson Steel
							i(43988),	-- Gale-Proof Cloak
						},
					}),
					e(612, {	-- Salramm the Fleshcrafter
						["creatureID"] = 26530,	-- Salramm the Fleshcrafter
						["groups"] = {
							i(43991),	-- Legguards of Composure
							i(43989),	-- Remembrance Girdle
							i(40428),	-- Titan's Outlook
						},
					}),
					e(613, {	-- Chrono-Lord Epoch
						["creatureID"] = 26532,	-- Chrono-Lord Epoch
						["groups"] = {
							i(43990),	-- Blade-Scarred Tunic
							i(40430),	-- Majestic Dragon Figurine
							i(40427),	-- Circle of Arcane Streams
						},
					}),
					n(32273, {	-- Infinite Corruptor
						i(39427),	-- Omen of Ruin
						i(39468),	-- The Stray
						i(39473),	-- Contortion
						i(39470),	-- Medallion of the Disgraced
						i(39467),	-- Minion Bracers
					}),
					e(614, {	-- Mal'Ganis
						["creatureID"] = 26533,	-- Mal'Ganis
						["groups"] = {
							i(40475),	-- Barricade of Eternity
							i(39235),	-- Bone-Framed Bracers
							i(44658),	-- Chain of the Ancient Wyrm
						},
					}),
				},
			})),
			applyclassicphase(WRATH_PHASE_THREE, n(DEFENSE_PROTOCOL_BETA, {
				["OnInit"] = FUNCTION_TEMPLATES.OnInit.GenerateShouldExcludeFromTooltipForBuffs(412867, 424210),
				["lvl"] = lvlsquish(80, 80, 30),
				["groups"] = {
					e(611, {	-- Meathook
						["creatureID"] = 26529,	-- Meathook
						["groups"] = {
							i(45694),	-- Conductive Cord
							i(46339),	-- Mimiron's Repeater
						},
					}),
					e(612, {	-- Salramm the Fleshcrafter
						["creatureID"] = 26530,	-- Salramm the Fleshcrafter
						["groups"] = {
							i(45695),	-- Spire of Withering Dreams
							i(45679),	-- Gloves of Taut Grip
						},
					}),
					e(613, {	-- Chrono-Lord Epoch
						["creatureID"] = 26532,	-- Chrono-Lord Epoch
						["groups"] = {
							i(45685),	-- Plasma Foil
							i(45675),	-- Power Enhancing Loop
						},
					}),
					n(32273, {	-- Infinite Corruptor
						i(45682),	-- Pulsing Spellshield
						i(45686),	-- Vest of the Glowing Crescent
					}),
					e(614, {	-- Mal'Ganis
						["creatureID"] = 26533,	-- Mal'Ganis
						["groups"] = {
							i(46016),	-- Abaddon
							i(46025),	-- Devotion
							i(46018),	-- Deliverance
						},
					}),
				},
			})),
			applyclassicphase(WRATH_PHASE_FOUR, n(DEFENSE_PROTOCOL_GAMMA, {
				["OnInit"] = FUNCTION_TEMPLATES.OnInit.GenerateShouldExcludeFromTooltipForBuffs(424210),
				["lvl"] = lvlsquish(80, 80, 30),
				["groups"] = {
					e(611, {	-- Meathook
						["creatureID"] = 26529,	-- Meathook
						["groups"] = {

						},
					}),
					e(612, {	-- Salramm the Fleshcrafter
						["creatureID"] = 26530,	-- Salramm the Fleshcrafter
						["groups"] = {

						},
					}),
					e(613, {	-- Chrono-Lord Epoch
						["creatureID"] = 26532,	-- Chrono-Lord Epoch
						["groups"] = {

						},
					}),
					e(614, {	-- Mal'Ganis
						["creatureID"] = 26533,	-- Mal'Ganis
						["groups"] = {

						},
					}),
				},
			})),
			-- #endif
		},
	}),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.WOD, bubbleDownSelf({ ["timeline"] = { ADDED_6_0_2 } }, {
	inst(279, {
		q(35472),	-- Culling of Stratholme Reward Quest - Normal completion
		q(35474),	-- Culling of Stratholme Reward Quest - Heroic completion
		q(35473),	-- Culling of Stratholme - Bonus Objective Reward - kill Infinite Corruptor (Heroic only)
	}),
})));