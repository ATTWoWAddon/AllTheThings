-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

root(ROOTS.Instances, expansion(EXPANSION.TBC, applyclassicphase(TBC_PHASE_ONE, {
	inst(257, bubbleDownSelf({ ["timeline"] = { ADDED_2_0_1 } }, {	-- The Botanica
		["lore"] = "Since Kael'thas and his blood elves seized Tempest Keep from the naaru they have had quite the time to investigate and find a usage for the technology in it. The Botanica appears to be the satellite chosen especially for this purpose. Here, blood elf scientists carry out experiments on the flora in Outland, how naaru technology can be used to create and manipulate living beings, and how all this can grant the blood elves new powers. It seems, however, that the results were not quite as expected, and thus some of the experiments have gotten out of control...",
		-- #if BEFORE MOP
		["zone-text-areaID"] = 3847,	-- The Botanica
		-- #endif
		["mapID"] = TEMPEST_KEEP_BOTANICA,
		["coord"] = { 71.74, 54.95, NETHERSTORM },	-- The Botanica, Netherstorm
		["lvl"] = lvlsquish(65, 65, 20),
		["groups"] = {
			n(QUESTS, {
				q(29669, {	-- A Most Somber Task
					["sourceQuest"] = 29667,	-- Culling the Herd
					["timeline"] = { ADDED_4_3_0 },
					["lvl"] = lvlsquish(67, 67, 20),
					["groups"] = {
						objective(1, {	-- Warp Splinter slain
							["provider"] = { "n", 17977 },	-- Warp Splinter
						}),
					},
				}),
				q(10257, {	-- Capturing the Keystone
					["sourceQuest"] = 10256,	-- Finding the Keymaster
					["qg"] = 19481,	-- Archmage Vargoth
					["coord"] = { 58.3, 86.4, NETHERSTORM },
					["lvl"] = lvlsquish(67, 67, 25),
					["groups"] = {
						objective(1, {	-- 0/1 The Keystone
							["provider"] = { "i", 28769 },	-- The Keystone
						}),
					},
				}),
				q(29667, {	-- Culling the Herd
					["sourceQuest"] = 29660,	-- Saving the Botanica
					["timeline"] = { ADDED_4_3_0 },
					["lvl"] = lvlsquish(67, 67, 20),
					["groups"] = {
						objective(1, {	-- 0/6 Mutate Fleshlasher slain
							["provider"] = { "n", 19598 },	-- Mutate Fleshlasher
						}),
						objective(2, {	-- 0/6 Mutate Fear-Shrieker slain
							["provider"] = { "n", 19513 },	-- Mutate Fear-Shrieker
						}),
						objective(3, {	-- 0/6 Mutate Horror slain
							["provider"] = { "n", 19865 },	-- Mutate Horror
						}),
						objective(4, {	-- 0/1 Rapidly Evolving Frond
							["provider"] = { "i", 72706 },	-- Rapidly Evolving Frond
						}),
					},
				}),
				q(29660, {	-- Saving the Botanica
					["description"] = "Automatically provided upon starting the instance.",
					["timeline"] = { ADDED_4_3_0 },
					["lvl"] = lvlsquish(67, 67, 20),
					["groups"] = {
						objective(1, {	-- Commander Sarannis slain
							["provider"] = { "n", 17976 },	-- Commander Sarannis
						}),
						objective(2, {	-- High Botanist Freywinn slain
							["provider"] = { "n", 17975 },	-- High Botanist Freywinn
						}),
						objective(3, {	-- Thorngrin the Tender slain
							["provider"] = { "n", 17978 },	-- Thorngrin the Tender
						}),
					},
				}),
			}),
			n(ZONE_DROPS, {
				i(32902),	-- Bottled Nethergon Energy
				i(32905),	-- Bottled Nethergon Vapor
				i(24172, {	-- Design: Coronet of Verdant Flame (RECIPE!)
					["cr"] = 18422,	-- Sunseeker Botanist
				}),
			}),
			d(DIFFICULTY.DUNGEON.NORMAL, {
				e(558, {	-- Commander Sarannis
					["creatureID"] = 17976,
					["groups"] = {
						i(28304),	-- Prismatic Mittens of Mending
						i(28311),	-- Revenger
						i(28301),	-- Sarannis' Mystic Sheen
						i(28306),	-- Towering Mantle of the Hunt
						-- #if AFTER 7.3.5
						i(28350),	-- Warhelm of the Bold (7.3.5 - Moved from Warp Splinter)
						i(28347),	-- Warpscale Leggings (7.3.5 - Moved from Warp Splinter)
						-- #endif
						-- #if BEFORE MOP
						i(28296, {	-- Libram of the Lightbringer
							["timeline"] = { REMOVED_5_0_4 },
						}),
						-- #endif
						i(28769),	-- The Keystone
					},
				}),
				e(559, {	-- High Botanist Freywinn
					["creatureID"] = 17975,
					["groups"] = {
						i(28316),	-- Aegis of the Sunbird
						-- #if AFTER 7.3.5
						i(28228),	-- Beast Lord Cuirass (7.3.5 - Moved from Warp Splinter)
						-- #endif
						i(28321),	-- Enchanted Thorium Torque
						i(28317),	-- Energis Armwraps
						-- #if AFTER 7.3.5
						i(28348),	-- Moonglade Cowl (7.3.5 - Moved from Warp Splinter)
						-- #endif
						i(28318),	-- Obsidian Clodstompers
						i(28315),	-- Stormreaver Warblades
						i(23617),	-- Plans: Earthpeace Breastplate (RECIPE!)
					},
				}),
				e(560, {	-- Thorngrin the Tender
					["creatureID"] = 17978,
					["groups"] = {
						i(28327),	-- Arcane Netherband
						i(28325),	-- Dreamer's Dragonstaff
						i(28324),	-- Gauntlets of Cruel Intention
						i(28323),	-- Ring of Umbral Doom
						i(28322),	-- Runed Dagger of Solace
						i(24310),	-- Pattern: Battlecast Pants (RECIPE!)
					},
				}),
				e(561, {	-- Laj
					["creatureID"] = 17980,
					["groups"] = {
						i(28339),	-- Boots of the Shifting Sands
						i(28338),	-- Devil-Stitched Leggings
						i(28340),	-- Mantle of Autumn
						i(28328),	-- Mithril-Bark Cloak
						i(27739),	-- Spaulders of the Righteous
						-- #if AFTER 7.3.5
						i(28349),	-- Tidefury Helm (7.3.5 - Moved from Warp Splinter)
						-- #endif
						i(72706, {	-- Rapidly Evolving Frond
							["timeline"] = { ADDED_4_3_0 },
						}),
					},
				}),
				e(562, {	-- Warp Splinter
					["creatureID"] = 17977,
					["groups"] = {
						ach(659),	-- The Botanica
						i(28370),	-- Bangle of Endless Blessings
						-- #if BEFORE 7.3.5
						i(28228),	-- Beast Lord Cuirass (7.3.5 - Moved to High Botanist Freywinn)
						-- #endif
						-- #if AFTER 7.3.5
						i(29258),	-- Boots of Ethereal Manipulation
						i(29262),	-- Boots of the Endless Hunt
						i(29359),	-- Feral Staff of Lashing
						i(32072),	-- Gauntlets of Dissention
						-- #endif
						i(28367),	-- Greatsword of Forlorn Visions
						i(28229),	-- Incanter's Robe
						i(28343),	-- Jagged Bark Pendant
						-- #if BEFORE 7.3.5
						i(28348),	-- Moonglade Cowl (7.3.5 - Moved to High Botanist Freywinn)
						-- #endif
						i(28371),	-- Netherfury Cape
						-- #if BEFORE 7.3.5
						i(28349),	-- Tidefury Helm (7.3.5 - Moved to Laj)
						i(28350),	-- Warhelm of the Bold (7.3.5 - Moved to Commander Sarannis)
						-- #endif
						i(28342),	-- Warp-Infused Drape
						i(28345),	-- Warp Splinter's Thorn
						-- #if BEFORE 7.3.5
						i(28347),	-- Warpscale Leggings (7.3.5 - Moved to Commander Sarannis)
						-- #endif
						i(28341),	-- Warpstaff of Arcanum
						i(24311),	-- Pattern: Whitemend Hood (RECIPE!)
						i(31085),	-- Top Shard of the Arcatraz Key
					},
				}),
			}),
			d(DIFFICULTY.DUNGEON.HEROIC, {
				-- #if BEFORE 4.2.0
				["description"] = "You need to have a key to the instance in order to access this mode.",
				["cost"] = { { "i", 30634, 1 } },	-- Warpforged Key
				-- #endif
				["lvl"] = lvlsquish(70, 70, 30),
				["groups"] = {
					n(COMMON_BOSS_DROPS, {
						["crs"] = {
							17976,	-- Commander Sarannis
							17975,	-- High Botanist Freywinn
							17978,	-- Thorngrin the Tender
							17980,	-- Laj
							17977,	-- Warp Splinter
						},
						["groups"] = {
							-- #if BEFORE CATA
							BADGE_OF_JUSTICE,
							-- #endif
							i(30574),	-- Brutal Tanzanite
							i(30572),	-- Imperial Tanzanite
							i(30573),	-- Mysterious Fire Opal
						},
					}),
					e(558, {	-- Commander Sarannis
						["creatureID"] = 17976,
						["groups"] = {
							i(28304),	-- Prismatic Mittens of Mending
							i(28311),	-- Revenger
							i(28301),	-- Sarannis' Mystic Sheen
							i(28306),	-- Towering Mantle of the Hunt
							-- #if AFTER 7.3.5
							i(28350),	-- Warhelm of the Bold (7.3.5 - Moved from Warp Splinter)
							i(28347),	-- Warpscale Leggings (7.3.5 - Moved from Warp Splinter)
							-- #endif
							-- #if BEFORE MOP
							i(28296, {	-- Libram of the Lightbringer
								["timeline"] = { REMOVED_5_0_4 },
							}),
							-- #endif
							i(28769),	-- The Keystone
						},
					}),
					e(559, {	-- High Botanist Freywinn
						["creatureID"] = 17975,
						["groups"] = {
							i(28316),	-- Aegis of the Sunbird
							-- #if AFTER 7.3.5
							i(28228),	-- Beast Lord Cuirass (7.3.5 - Moved from Warp Splinter)
							-- #endif
							i(28321),	-- Enchanted Thorium Torque
							i(28317),	-- Energis Armwraps
							-- #if AFTER 7.3.5
							i(28348),	-- Moonglade Cowl (7.3.5 - Moved from Warp Splinter)
							-- #endif
							i(28318),	-- Obsidian Clodstompers
							i(28315),	-- Stormreaver Warblades
							i(23617),	-- Plans: Earthpeace Breastplate (RECIPE!)
						},
					}),
					e(560, {	-- Thorngrin the Tender
						["creatureID"] = 17978,
						["groups"] = {
							i(28327),	-- Arcane Netherband
							i(28325),	-- Dreamer's Dragonstaff
							i(28324),	-- Gauntlets of Cruel Intention
							i(28323),	-- Ring of Umbral Doom
							i(28322),	-- Runed Dagger of Solace
							i(24310),	-- Pattern: Battlecast Pants (RECIPE!)
						},
					}),
					e(561, {	-- Laj
						["creatureID"] = 17980,
						["groups"] = {
							i(28339),	-- Boots of the Shifting Sands
							i(28338),	-- Devil-Stitched Leggings
							i(28340),	-- Mantle of Autumn
							i(28328),	-- Mithril-Bark Cloak
							i(27739),	-- Spaulders of the Righteous
							-- #if AFTER 7.3.5
							i(28349),	-- Tidefury Helm (7.3.5 - Moved from Warp Splinter)
							-- #endif
							i(72706, {	-- Rapidly Evolving Frond
								["timeline"] = { ADDED_4_3_0 },
							}),
						},
					}),
					e(562, {	-- Warp Splinter
						["creatureID"] = 17977,
						["groups"] = {
							ach(680),	-- Heroic: The Botanica
							ach(5080, {	-- Heroic: The Botanica Guild Run
								["timeline"] = { ADDED_4_0_3 },
							}),
							i(28370),	-- Bangle of Endless Blessings
							-- #if BEFORE 7.3.5
							i(28228),	-- Beast Lord Cuirass (7.3.5 - Moved to High Botanist Freywinn)
							-- #endif
							i(29258),	-- Boots of Ethereal Manipulation
							i(29262),	-- Boots of the Endless Hunt
							i(29359),	-- Feral Staff of Lashing
							i(32072),	-- Gauntlets of Dissention
							i(28367),	-- Greatsword of Forlorn Visions
							i(28229),	-- Incanter's Robe
							i(28343),	-- Jagged Bark Pendant
							-- #if BEFORE 7.3.5
							i(28348),	-- Moonglade Cowl (7.3.5 - Moved to High Botanist Freywinn)
							-- #endif
							i(28371),	-- Netherfury Cape
							-- #if BEFORE 7.3.5
							i(28349),	-- Tidefury Helm (7.3.5 - Moved to Laj)
							i(28350),	-- Warhelm of the Bold (7.3.5 - Moved to Commander Sarannis)
							-- #endif
							i(28342),	-- Warp-Infused Drape
							i(28345),	-- Warp Splinter's Thorn
							-- #if BEFORE 7.3.5
							i(28347),	-- Warpscale Leggings (7.3.5 - Moved to Commander Sarannis)
							-- #endif
							i(28341),	-- Warpstaff of Arcanum
							i(24311),	-- Pattern: Whitemend Hood (RECIPE!)
							applyclassicphase(TBC_PHASE_ONE, i(23572)),	-- Primal Nether
							i(31085),	-- Top Shard of the Arcatraz Key
							i(33859),	-- Warp Splinter Clipping
						},
					}),
				},
			}),
		},
	})),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.WOD, bubbleDownSelf({ ["timeline"] = { ADDED_6_0_2 } }, {
	inst(257, {
		q(35525),	-- The Botanica Reward Quest - Normal completion
		q(35526),	-- The Botanica Reward Quest - Heroic completion
	}),
})));
