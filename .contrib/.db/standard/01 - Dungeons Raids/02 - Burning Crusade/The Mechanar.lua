-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

------ Encounter Constants ------
local CAPACITUS = 563;
local SEPETHREA = 564;
local PATHALEON = 565;

------ EncounterToCRS ------
local EncounterToCRS = {
	[CAPACITUS] = { 19219 },	-- Mechano-Lord Capacitus
	[SEPETHREA] = { 19221 },	-- Nethermancer Sepethrea
	[PATHALEON] = { 19220 },	-- Pathaleon the Calculator
};

------ Boss Functions ------
local InstanceHelper = CreateInstanceHelper(EncounterToCRS)
local BossOnly, Difficulty, CommonBossDrops =
InstanceHelper.BossOnly, InstanceHelper.Difficulty, InstanceHelper.CommonBossDrops

root(ROOTS.Instances, expansion(EXPANSION.TBC, applyclassicphase(TBC_PHASE_ONE, {
	inst(258, {	-- The Mechanar
		lore = "Among the satellites of Tempest Keep, the Mechanar has been chosen by Kael'thas to be a factory to create large amounts of power. Mechano-Lord Capacitus appears to be the one creating it using the naaru-technology found in Tempest Keep, and the power is stored in manacells which piles up into walls and heaps inside the satellite. The large amount of manacells are smuggled by ethereals to the Sunwell where Kael'thas plans to use them to power up the summoning of Kil'jaeden.",
		-- #if BEFORE MOP
		zoneTextAreaID = 3849,	-- The Mechanar
		-- #endif
		coord = { 70.61, 69.75, NETHERSTORM },	-- The Mechanar, Netherstorm
		timeline = { ADDED_2_0_3 },
		maps = {
			TEMPEST_KEEP_MECHANAR,
			268,	-- Calculation Chamber
		},
		lvl = lvlsquish(65, 65, 20),
		groups = {
			n(QUESTS, {
				q(10665, {	-- Fresh from the Mechanar
					sourceQuest = 10664,	-- Additional Materials
					qg = 21465,	-- David Wayne
					coord = { 77.4, 38.6, TEROKKAR_FOREST },
					lvl = lvlsquish(67, 67, 25),
					groups = {
						objective(1, {	-- 0/1 Overcharged Manacell
							provider = { "i", 30824 },	-- Overcharged Manacell
						}),
					},
				}),
				q(29659, {	-- Lost Treasure
					description =
						-- #if AFTER MOP
						"Automatically provided after killing either Gatewatcher. If autocomplete doesn't work, you can turn in at A'dal in Shattrath City.",
						-- #else
						"Blizzard broke the cache of the legion with Cataclysm Classic by removing the keys and not adding the automatic unlock from killing the mini bosses.",
						-- #endif
					qg = 18481,	-- A'dal
					timeline = {
						ADDED_4_3_0,
						REMOVED_4_3_0,
						ADDED_5_0_4,
					},
					-- #if BEFORE MOP
					isBounty = true,
					-- #endif
					lvl = lvlsquish(67, 67, 20),
					groups = {
						objective(1, {	-- 0/1 Blinding Fury
							provider = { "i", 72663 },	-- Blinding Fury
						}),
					},
				}),
				q(29658, {	-- The Calculator
					description = "Automatically provided upon stepping into the final hallway. If autocomplete doesn't work, you can turn in at A'dal in Shattrath City.",
					sourceQuest = 29657,	-- With Great Power, Comes Great Responsibility
					qg = 18481,	-- A'dal
					timeline = { ADDED_4_3_0 },
					lvl = lvlsquish(67, 67, 20),
					groups = {
						objective(1, {	-- Pathaleon the Calculator slain
							provider = { "n", 19220 },	-- Pathaleon the Calculator
						}),
					},
				}),
				q(29657, {	-- With Great Power, Comes Great Responsibility
					description = "Automatically provided upon starting the instance. If autocomplete doesn't work, you can turn in at A'dal in Shattrath City.",
					qg = 18481,	-- A'dal
					timeline = { ADDED_4_3_0 },
					lvl = lvlsquish(67, 67, 20),
					groups = {
						objective(1, {	-- Mechano-Lord Capacitus slain
							provider = { "n", 19219 },	-- Mechano-Lord Capacitus
						}),
					},
				}),
			}),
			o(184465, {	-- Cache of the Legion
				modelScale = 1.6,
				-- #if BEFORE 4.3.0.14942
				cost = { { "i", 30438, 1 } },	-- Cache of the Legion Key
				-- #endif
				-- #if BEFORE MOP
				timeline = { REMOVED_4_0_3, ADDED_5_0_4 },
				isBounty = true,
				-- #if AFTER WRATH
				sharedDescription = "Blizzard broke the cache of the legion with Cataclysm Classic by removing the keys and not adding the automatic unlock from killing the mini bosses.",
				-- #endif
				-- #endif
				groups = {
					i(28252),	-- Bloodfyre Robes of Annihilation
					i(28251),	-- Boots of the Glade-Keeper
					i(28249),	-- Capacitus' Cloak of Calibration
					i(28250),	-- Vestia's Pauldrons of Inner
					-- #if BEFORE MOP
					i(28248, { timeline = { REMOVED_5_0_4 } }),	-- Totem of the Void
					-- #endif
					i(72663, { timeline = { ADDED_4_3_0 } }),	-- Blinding Fury
				},
			}),
			-- #if AFTER 7.3.5
			Difficulty(DIFFICULTY.DUNGEON.MULTI.NORMAL_HEROIC).AddGroups({
				n(ZONE_DROPS, {
					i(32902),	-- Bottled Nethergon Energy
					i(32905),	-- Bottled Nethergon Vapor
					i(21906, {	-- Pattern: Arcanoweave Boots (RECIPE!)
						cr = 19168,	-- Sunseeker Astromage
					}),
					i(22920, {	-- Recipe: Major Fire Protection Potion (RECIPE!)
						crs = {
							19221,	-- Nethermancer Sepethrea
							19168,	-- Sunseeker Astromage
						},
					}),
				}),
				BossOnly(CAPACITUS, {
					i(28257),	-- Hammer of the Penitent
					i(28255),	-- Lunar-Claw Pauldrons
					i(28253),	-- Plasma Rat's Hyper-Scythe
					i(35582, { timeline = { ADDED_2_4_0 } }),	-- Schematic: Rocket Boots Xtreme Lite (RECIPE!)
					i(28256),	-- Thoriumweave Cloak
					i(28254),	-- Warp Engineer's Prismatic Chain
				}),
				BossOnly(SEPETHREA, {
					i(28275),	-- Beast Lord Helm (7.3.5 - Moved from Pathaleon the Calculator)
					i(28259),	-- Cosmic Lifeband
					i(28262),	-- Jade-Skull Breastplate
					i(28260),	-- Manual of the Nethermancer
					i(28202),	-- Moonglade Robe (7.3.5 - Moved from Pathaleon the Calculator)
					i(28258, { timeline = { REMOVED_5_0_4 } }),	-- Nethershrike
					i(28263),	-- Stellaris
				}),
				BossOnly(PATHALEON, {
					ach(658),	-- The Mechanar
					i(28288),	-- Abacus of Violent Odds
					i(28269),	-- Baba's Cloak of Arcanistry
					i(29251),	-- Boots of the Pious
					i(31086),	-- Bottom Shard of the Arcatraz Key
					i(28265),	-- Dath'Remar's Ring of Defense
					i(32076),	-- Handguards of the Steady
					i(28285),	-- Helm of the Righteous
					i(28278),	-- Incanter's Cowl
					i(27899),	-- Mana Wrath
					i(28266),	-- Molten Earth Kilt
					i(21907),	-- Pattern: Arcanoweave Robe (RECIPE!)
					i(28286),	-- Telescopic Sharprifle
					i(29362),	-- The Sun Eater
					i(28204),	-- Tunic of Assassination
					i(30533),	-- Vanquisher's Legplates
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.NORMAL).AddGroups({
				BossOnly(PATHALEON, {
					i(28267),	-- Edge of the Cosmos
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.HEROIC, { lvl = lvlsquish(70, 70, 30) }).AddGroups({
				CommonBossDrops({
					i(30566),	-- Defender's Tanzanite
					i(30565),	-- Jagged Chrysoprase
					i(30564),	-- Veiled Tanzanite
				}),
				BossOnly(CAPACITUS),
				BossOnly(SEPETHREA),
				BossOnly(PATHALEON, {
					ach(679),	-- Heroic: The Mechanar
					ach(5079, { timeline = { ADDED_4_0_3 } }),	-- Heroic: The Mechanar Guild Run
					i(33860),	-- Pathaleon's Projector
					applyclassicphase(TBC_PHASE_ONE, i(23572)),	-- Primal Nether
				}),
			}),
			-- #else
			Difficulty(DIFFICULTY.DUNGEON.MULTI.NORMAL_HEROIC).AddGroups({
				n(ZONE_DROPS, {
					i(32902),	-- Bottled Nethergon Energy
					i(32905),	-- Bottled Nethergon Vapor
					-- #if BEFORE 4.3.0.14942
					i(30438, {	-- Cache of the Legion Key
						cost = {
							{ "i", 30436, 1 },	-- Jagged Blue Crystal
							{ "i", 30437, 1 },	-- Jagged Red Crystal
						},
					}),
					i(30436, {	-- Jagged Blue Crystal
						cr = 19218,	-- Gatewatcher Gyro-Kill
					}),
					i(30437, {	-- Jagged Red Crystal
						cr = 19710,	-- Gatewatcher Iron-Hand
					}),
					-- #endif
					i(21906, {	-- Pattern: Arcanoweave Boots (RECIPE!)
						cr = 19168,	-- Sunseeker Astromage
					}),
					i(22920, {	-- Recipe: Major Fire Protection Potion (RECIPE!)
						crs = {
							19221,	-- Nethermancer Sepethrea
							19168,	-- Sunseeker Astromage
						},
					}),
				}),
				BossOnly(CAPACITUS, {
					i(28257),	-- Hammer of the Penitent
					i(28255),	-- Lunar-Claw Pauldrons
					i(28253),	-- Plasma Rat's Hyper-Scythe
					i(35582, { timeline = { ADDED_2_4_0 } }),	-- Schematic: Rocket Boots Xtreme Lite (RECIPE!)
					i(28256),	-- Thoriumweave Cloak
					i(28254),	-- Warp Engineer's Prismatic Chain
				}),
				BossOnly(SEPETHREA, {
					i(28259),	-- Cosmic Lifeband
					i(28262),	-- Jade-Skull Breastplate
					i(28260),	-- Manual of the Nethermancer
					i(28258, { timeline = { REMOVED_5_0_4 } }),	-- Nethershrike
					i(28263),	-- Stellaris
				}),
				BossOnly(PATHALEON, {
					i(28288),	-- Abacus of Violent Odds
					i(28269),	-- Baba's Cloak of Arcanistry
					i(28275),	-- Beast Lord Helm (7.3.5 - Moved to Nethermancer Sepethrea)
					i(31086),	-- Bottom Shard of the Arcatraz Key
					i(28265),	-- Dath'Remar's Ring of Defense
					i(28267),	-- Edge of the Cosmos
					i(28285),	-- Helm of the Righteous
					i(28278),	-- Incanter's Cowl
					i(27899),	-- Mana Wrath
					i(28266),	-- Molten Earth Kilt
					i(28202),	-- Moonglade Robe (7.3.5 - Moved to Nethermancer Sepethrea)
					i(21907),	-- Pattern: Arcanoweave Robe (RECIPE!)
					i(28286),	-- Telescopic Sharprifle
					i(28204),	-- Tunic of Assassination
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.NORMAL).AddGroups({
				BossOnly(PATHALEON, {
					ach(658),	-- The Mechanar
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.HEROIC, {
				-- #if BEFORE 4.2.0
				description = "You need to have a key to the instance in order to access this mode.",
				attunement = {
					-- #if CLASSIC_ANNIVERSARY
					{ "i", 265847 },	-- Communal Warpforged Key
					-- #endif
					{ "i", 30634 },	-- Warpforged Key
				},
				-- #endif
				lvl = lvlsquish(70, 70, 30),
			}).AddGroups({
				CommonBossDrops({
					-- #if BEFORE CATA
					applyclassicphase(TBC_PHASE_FOUR, BADGE_OF_JUSTICE(1)),
					-- #endif
					i(30566),	-- Defender's Tanzanite
					i(30565),	-- Jagged Chrysoprase
					i(30564),	-- Veiled Tanzanite
				}),
				BossOnly(CAPACITUS),
				BossOnly(SEPETHREA),
				BossOnly(PATHALEON, {
					ach(679),	-- Heroic: The Mechanar
					ach(5079, { timeline = { ADDED_4_0_3 } }),	-- Heroic: The Mechanar Guild Run
					i(29251),	-- Boots of the Pious
					i(32076),	-- Handguards of the Steady
					i(33860),	-- Pathaleon's Projector
					applyclassicphase(TBC_PHASE_ONE, i(23572)),	-- Primal Nether
					i(29362),	-- The Sun Eater
					i(30533),	-- Vanquisher's Legplates
				}),
			}),
			-- #endif
		},
	}),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.WOD, {
	inst(258, {
		q(35528),	-- The Mechanar Reward Quest - Normal completion
		q(35529),	-- The Mechanar Reward Quest - Heroic completion
	}),
}));
