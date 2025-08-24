-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
root(ROOTS.Instances, expansion(EXPANSION.TBC, applyclassicphase(TBC_PHASE_ONE, {
	inst(258, bubbleDownSelf({ ["timeline"] = { ADDED_2_0_1 } }, {	-- The Mechanar
		["lore"] = "Among the satellites of Tempest Keep, the Mechanar has been chosen by Kael'thas to be a factory to create large amounts of power. Mechano-Lord Capacitus appears to be the one creating it using the naaru-technology found in Tempest Keep, and the power is stored in manacells which piles up into walls and heaps inside the satellite. The large amount of manacells are smuggled by ethereals to the Sunwell where Kael'thas plans to use them to power up the summoning of Kil'jaeden.",
		-- #if BEFORE MOP
		["zone-text-areaID"] = 3849,	-- The Mechanar
		-- #endif
		["coord"] = { 70.61, 69.75, NETHERSTORM },	-- The Mechanar, Netherstorm
		["maps"] = {
			TEMPEST_KEEP_MECHANAR,
			268,	-- Calculation Chamber
		},
		["lvl"] = lvlsquish(65, 65, 20),
		["groups"] = {
			n(QUESTS, {
				q(10665, {	-- Fresh from the Mechanar
					["sourceQuest"] = 10664,	-- Additional Materials
					["qg"] = 21465,	-- David Wayne
					["coord"] = { 77.4, 38.6, TEROKKAR_FOREST },
					["lvl"] = lvlsquish(67, 67, 25),
					["groups"] = {
						objective(1, {	-- 0/1 Overcharged Manacell
							["provider"] = { "i", 30824 },	-- Overcharged Manacell
						}),
					},
				}),
				q(29659, {	-- Lost Treasure
					-- #if BEFORE MOP
					["description"] = "Blizzard broke the cache of the legion with Cataclysm Classic by removing the keys and not adding the automatic unlock from killing the mini bosses.",
					["isBounty"] = true,
					-- #else
					-- #if AFTER MOP
					["description"] = "Automatically provided after killing either Gatewatcher. If autocomplete doesn't work, you can turn in at A'dal in Shattrath City.",
					-- #else
					["description"] = "Automatically provided after killing either Gatewatcher. This appears to be bugged.",
					-- #endif
					-- #endif
					["qg"] = 18481,	-- A'dal
					["timeline"] = {
						ADDED_4_3_0,
						REMOVED_4_3_0,
						ADDED_5_0_4,
					},
					["lvl"] = lvlsquish(67, 67, 20),
					["groups"] = {
						objective(1, {	-- 0/1 Blinding Fury
							["provider"] = { "i", 72663 },	-- Blinding Fury
						}),
					},
				}),
				q(29658, {	-- The Calculator
					["description"] = "Automatically provided upon stepping into the final hallway. If autocomplete doesn't work, you can turn in at A'dal in Shattrath City.",
					["sourceQuest"] = 29657,	-- With Great Power, Comes Great Responsibility
					["qg"] = 18481,	-- A'dal
					["timeline"] = { ADDED_4_3_0 },
					["lvl"] = lvlsquish(67, 67, 20),
					["groups"] = {
						objective(1, {	-- Pathaleon the Calculator slain
							["provider"] = { "n", 19220 },	-- Pathaleon the Calculator
						}),
					},
				}),
				q(29657, {	-- With Great Power, Comes Great Responsibility
					["description"] = "Automatically provided upon starting the instance. If autocomplete doesn't work, you can turn in at A'dal in Shattrath City.",
					["qg"] = 18481,	-- A'dal
					["timeline"] = { ADDED_4_3_0 },
					["lvl"] = lvlsquish(67, 67, 20),
					["groups"] = {
						objective(1, {	-- Mechano-Lord Capacitus slain
							["provider"] = { "n", 19219 },	-- Mechano-Lord Capacitus
						}),
					},
				}),
			}),
			n(ZONE_DROPS, {
				-- #if BEFORE 4.3.0.14942
				i(30438, {	-- Cache of the Legion Key
					["cost"] = {
						{ "i", 30436, 1 },	-- Jagged Blue Crystal
						{ "i", 30437, 1 },	-- Jagged Red Crystal
					},
				}),
				i(30436, {	-- Jagged Blue Crystal
					["cr"] = 19218,	-- Gatewatcher Gyro-Kill
				}),
				i(30437, {	-- Jagged Red Crystal
					["cr"] = 19710,	-- Gatewatcher Iron-Hand
				}),
				-- #endif
				i(21906, {	-- Pattern: Arcanoweave Boots (RECIPE!)
					["cr"] = 19168,	-- Sunseeker Astromage
				}),
				i(22920, {	-- Recipe: Major Fire Protection Potion (RECIPE!)
					["cr"] = 19168,	-- Sunseeker Astromage
				}),
			}),
			o(184465, bubbleDownSelf({
				-- #if BEFORE MOP
				["timeline"] = { REMOVED_4_0_3, ADDED_5_0_4 },
				["isBounty"] = true,
				-- #endif
			}, {	-- Cache of the Legion
				["modelScale"] = 1.6,
				-- #if BEFORE 4.3.0.14942
				["cost"] = {{ "i", 30438, 1 }},	-- Cache of the Legion Key
				-- #endif
				-- #if BEFORE MOP
				-- #if AFTER WRATH
				["sharedDescription"] = "Blizzard broke the cache of the legion with Cataclysm Classic by removing the keys and not adding the automatic unlock from killing the mini bosses.",
				-- #endif
				-- #endif
				["groups"] = {
					i(28252),	-- Bloodfyre Robes of Annihilation
					i(28251),	-- Boots of the Glade-Keeper
					i(28249),	-- Capacitus' Cloak of Calibration
					i(28250),	-- Vestia's Pauldrons of Inner
					-- #if BEFORE MOP
					i(28248, {	-- Totem of the Void
						["timeline"] = { REMOVED_5_0_4 },
					}),
					-- #endif
					i(72663, {	-- Blinding Fury
						["timeline"] = { ADDED_4_3_0 },
					}),
				},
			})),
			d(DIFFICULTY.DUNGEON.NORMAL, {
				e(563, {	-- Mechano-Lord Capacitus
					["creatureID"] = 19219,
					["groups"] = {
						i(28257),	-- Hammer of the Penitent
						i(28255),	-- Lunar-Claw Pauldrons
						i(28253),	-- Plasma Rat's Hyper-Scythe
						i(28256),	-- Thoriumweave Cloak
						i(28254),	-- Warp Engineer's Prismatic Chain
						i(35582, {	-- Schematic: Rocket Boots Xtreme Lite (RECIPE!)
							["timeline"] = { ADDED_2_4_0 },
						}),
					},
				}),
				e(564, {	-- Nethermancer Sepethrea
					["creatureID"] = 19221,
					["groups"] = {
						-- #if AFTER 7.3.5
						i(28275),	-- Beast Lord Helm (7.3.5 - Moved from Pathaleon the Calculator)
						-- #endif
						i(28259),	-- Cosmic Lifeband
						i(28262),	-- Jade-Skull Breastplate
						i(28260),	-- Manual of the Nethermancer
						-- #if AFTER 7.3.5
						i(28202),	-- Moonglade Robe (7.3.5 - Moved from Pathaleon the Calculator)
						-- #endif
						i(28263),	-- Stellaris
						-- #if BEFORE MOP
						i(28258, {	-- Nethershrike
							["timeline"] = { REMOVED_5_0_4 },
						}),
						-- #endif
						i(22920),	-- Recipe: Major Fire Protection Potion (RECIPE!)
					},
				}),
				e(565, {	-- Pathaleon the Calculator
					["creatureID"] = 19220,
					["groups"] = {
						ach(658),	-- The Mechanar
						i(28288),	-- Abacus of Violent Odds
						i(28269),	-- Baba's Cloak of Arcanistry
						-- #if BEFORE 7.3.5
						i(28275),	-- Beast Lord Helm (7.3.5 - Moved to Nethermancer Sepethrea)
						-- #endif
						-- #if AFTER 7.3.5
						i(29251),	-- Boots of the Pious
						-- #endif
						i(28265),	-- Dath'Remar's Ring of Defense
						i(28267),	-- Edge of the Cosmos
						-- #if AFTER 7.3.5
						i(32076),	-- Handguards of the Steady
						-- #endif
						i(28285),	-- Helm of the Righteous
						i(28278),	-- Incanter's Cowl
						i(27899),	-- Mana Wrath
						i(28266),	-- Molten Earth Kilt
						-- #if BEFORE 7.3.5
						i(28202),	-- Moonglade Robe (7.3.5 - Moved to Nethermancer Sepethrea)
						-- #endif
						i(28286),	-- Telescopic Sharprifle
						-- #if AFTER 7.3.5
						i(29362),	-- The Sun Eater
						-- #endif
						i(28204),	-- Tunic of Assassination
						-- #if AFTER 7.3.5
						i(30533),	-- Vanquisher's Legplates
						-- #endif
						i(21907),	-- Pattern: Arcanoweave Robe (RECIPE!)
						i(31086),	-- Bottom Shard of the Arcatraz Key
					},
				}),
			}),
			d(DIFFICULTY.DUNGEON.HEROIC, {
				-- #if BEFORE 4.2.0
				["description"] = "You need to have a key to the instance in order to access this mode.",
				["cost"] = {
					{ "i", 30634, 1 },	-- Warpforged Key
				},
				-- #endif
				["lvl"] = lvlsquish(70, 70, 30),
				["groups"] = {
					n(COMMON_BOSS_DROPS, {
						["crs"] = {
							19219,	-- Mechano-Lord Capacitus
							19221,	-- Nethermancer Sepethrea
							19220,	-- Pathaleon the Calculator
						},
						["groups"] = {
							-- #if BEFORE CATA
							BADGE_OF_JUSTICE,
							-- #endif
							i(30566),	-- Defender's Tanzanite
							i(30565),	-- Jagged Chrysoprase
							i(30564),	-- Veiled Tanzanite
						},
					}),
					e(563, {	-- Mechano-Lord Capacitus
						["creatureID"] = 19219,
						["groups"] = {
							i(28257),	-- Hammer of the Penitent
							i(28255),	-- Lunar-Claw Pauldrons
							i(28253),	-- Plasma Rat's Hyper-Scythe
							i(28256),	-- Thoriumweave Cloak
							i(28254),	-- Warp Engineer's Prismatic Chain
							i(35582, {	-- Schematic: Rocket Boots Xtreme Lite (RECIPE!)
								["timeline"] = { ADDED_2_4_0 },
							}),
						},
					}),
					e(564, {	-- Nethermancer Sepethrea
						["creatureID"] = 19221,
						["groups"] = {
							-- #if AFTER 7.3.5
							i(28275),	-- Beast Lord Helm (7.3.5 - Moved from Pathaleon the Calculator)
							-- #endif
							i(28259),	-- Cosmic Lifeband
							i(28262),	-- Jade-Skull Breastplate
							i(28260),	-- Manual of the Nethermancer
							-- #if AFTER 7.3.5
							i(28202),	-- Moonglade Robe (7.3.5 - Moved from Pathaleon the Calculator)
							-- #endif
							i(28263),	-- Stellaris
							-- #if BEFORE MOP
							i(28258, {	-- Nethershrike
								["timeline"] = { REMOVED_5_0_4 },
							}),
							-- #endif
							i(22920),	-- Recipe: Major Fire Protection Potion (RECIPE!)
						},
					}),
					e(565, {	-- Pathaleon the Calculator
						["creatureID"] = 19220,
						["groups"] = {
							ach(679),	-- Heroic: The Mechanar
							ach(5079, {	-- Heroic: The Mechanar Guild Run
								["timeline"] = { ADDED_4_0_3 },
							}),
							i(28288),	-- Abacus of Violent Odds
							i(28269),	-- Baba's Cloak of Arcanistry
							-- #if BEFORE 7.3.5
							i(28275),	-- Beast Lord Helm (7.3.5 - Moved to Nethermancer Sepethrea)
							-- #endif
							i(29251),	-- Boots of the Pious
							i(28265),	-- Dath'Remar's Ring of Defense
							-- #if BEFORE 7.3.5
							i(28267),	-- Edge of the Cosmos
							-- #endif
							i(32076),	-- Handguards of the Steady
							i(28285),	-- Helm of the Righteous
							i(28278),	-- Incanter's Cowl
							i(27899),	-- Mana Wrath
							i(28266),	-- Molten Earth Kilt
							-- #if BEFORE 7.3.5
							i(28202),	-- Moonglade Robe (7.3.5 - Moved to Nethermancer Sepethrea)
							-- #endif
							i(28286),	-- Telescopic Sharprifle
							i(29362),	-- The Sun Eater
							i(28204),	-- Tunic of Assassination
							i(30533),	-- Vanquisher's Legplates
							i(21907),	-- Pattern: Arcanoweave Robe (RECIPE!)
							applyclassicphase(TBC_PHASE_ONE, i(23572)),	-- Primal Nether
							i(31086),	-- Bottom Shard of the Arcatraz Key
							i(33860),	-- Pathaleon's Projector
						},
					}),
				},
			}),
		},
	})),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.WOD, bubbleDownSelf({ ["timeline"] = { ADDED_6_0_2 } }, {
	inst(258, {
		q(35528),	-- The Mechanar Reward Quest - Normal completion
		q(35529),	-- The Mechanar Reward Quest - Heroic completion
	}),
})));
