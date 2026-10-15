-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

------ Encounter Constants ------
local KRIKTHIR = 585;
local HADRONOX = 586;
local ANUBARAK = 587;

------ EncounterToCRS ------
local EncounterToCRS = {
	[KRIKTHIR] = { 28684 },	-- Krik'thir the Gatewatcher
	[HADRONOX] = { 28921 },	-- Hadronox
	[ANUBARAK] = { 29120 },	-- Anub'arak
};

------ Boss Functions ------
local InstanceHelper = CreateInstanceHelper(EncounterToCRS)
local BossOnly, Difficulty, CommonBossDrops =
InstanceHelper.BossOnly, InstanceHelper.Difficulty, InstanceHelper.CommonBossDrops

root(ROOTS.Instances, expansion(EXPANSION.WRATH, applyclassicphase(WRATH_PHASE_ONE, {
	inst(272, {	-- Azjol-Nerub
		["mapID"] = AZJOL_NERUB,
		["coord"] = { 26.0, 50.6, DRAGONBLIGHT },
		["maps"] = { AZJOL_NERUB_FLOOR2, AZJOL_NERUB_FLOOR3 },
		["lvl"] = lvlsquish(67, 67, 15),
		["timeline"] = { ADDED_3_0_2 },
		["groups"] = {
			n(ACHIEVEMENTS, {
				ach(480, {	-- Azjol-Nerub
					-- #if AFTER 7.3.5
					crit(5436, {	-- Krik'thir the Gatewatcher
						["_encounter"] = { KRIKTHIR, DIFFICULTY.DUNGEON.MULTI.NORMAL_HEROIC },
					}),
					crit(5437, {	-- Hadronox
						["_encounter"] = { HADRONOX, DIFFICULTY.DUNGEON.MULTI.NORMAL_HEROIC },
					}),
					crit(5438, {	-- Anub'arak
						["_encounter"] = { ANUBARAK, DIFFICULTY.DUNGEON.MULTI.NORMAL_HEROIC },
					}),
					-- #else
					crit(5436, {	-- Krik'thir the Gatewatcher
						["_encounter"] = { KRIKTHIR, DIFFICULTY.DUNGEON.NORMAL },
					}),
					crit(5437, {	-- Hadronox
						["_encounter"] = { HADRONOX, DIFFICULTY.DUNGEON.NORMAL },
					}),
					-- #if ANYCLASSIC
					-- NOTE: This boss has a different criteriaUID in classic for some dumb reason. BLIZZARD.
					crit(5623, {	-- Anub'arak
						["_encounter"] = { ANUBARAK, DIFFICULTY.DUNGEON.NORMAL },
					}),
					-- #else
					crit(5438, {	-- Anub'arak
						["_encounter"] = { ANUBARAK, DIFFICULTY.DUNGEON.NORMAL },
					}),
					-- #endif
					-- #endif
				}),
				-- #if ANYCLASSIC
				applyclassicphase(WRATH_PHASE_TWO, ach(17285, {	-- Defense Protocol Alpha: Azjol-Nerub
					crit(57699, {	-- Krik'thir the Gatewatcher
						["_encounter"] = { KRIKTHIR, DEFENSE_PROTOCOL_ALPHA },
					}),
					crit(57697, {	-- Hadronox
						["_encounter"] = { HADRONOX, DEFENSE_PROTOCOL_ALPHA },
					}),
					crit(57698, {	-- Anub'arak
						["_encounter"] = { ANUBARAK, DEFENSE_PROTOCOL_ALPHA },
					}),
				})),
				applyclassicphase(WRATH_PHASE_THREE, ach(18592, {	-- Defense Protocol Beta: Azjol-Nerub
					crit(60581, {	-- Krik'thir the Gatewatcher
						["_encounter"] = { KRIKTHIR, DEFENSE_PROTOCOL_BETA },
					}),
					crit(60579, {	-- Hadronox
						["_encounter"] = { HADRONOX, DEFENSE_PROTOCOL_BETA },
					}),
					crit(60580, {	-- Anub'arak
						["_encounter"] = { ANUBARAK, DEFENSE_PROTOCOL_BETA },
					}),
				})),
				applyclassicphase(WRATH_PHASE_FOUR, ach(19429, {	-- Defense Protocol Gamma: Azjol-Nerub
					crit(63328, {	-- Krik'thir the Gatewatcher
						["_encounter"] = { KRIKTHIR, DEFENSE_PROTOCOL_GAMMA },
					}),
					crit(63326, {	-- Hadronox
						["_encounter"] = { HADRONOX, DEFENSE_PROTOCOL_GAMMA },
					}),
					crit(63327, {	-- Anub'arak
						["_encounter"] = { ANUBARAK, DEFENSE_PROTOCOL_GAMMA },
					}),
				})),
				-- #endif
				ach(491, {	-- Heroic: Azjol-Nerub
					crit(6848, {	-- Krik'thir the Gatewatcher
						["_encounter"] = { KRIKTHIR, DIFFICULTY.DUNGEON.HEROIC },
					}),
					crit(6849, {	-- Hadronox
						["_encounter"] = { HADRONOX, DIFFICULTY.DUNGEON.HEROIC },
					}),
					crit(5610, {	-- Anub'arak
						["_encounter"] = { ANUBARAK, DIFFICULTY.DUNGEON.HEROIC },
					}),
				}),
			}),
			n(QUESTS, {
				q(13167, {	-- Death to the Traitor King
					["qg"] = 26653,	-- Kilix the Unraveler
					["coord"] = { 26.2, 50.8, DRAGONBLIGHT },
					["timeline"] = { REMOVED_4_3_0 },
					["lvl"] = lvlsquish(72, 72, 15),
					["groups"] = {
						objective(1, {	-- 0/1 Anub'arak's Broken Husk
							["provider"] = { "i", 43411 },	-- Anub'arak's Broken Husk
							["cr"] = 29120,	-- Anub'arak
						}),
						i(44358),	-- Kilix's Silk Slippers
						i(44359),	-- Don Soto's Boots
						i(44360),	-- Husk Shard Sabatons
						i(44361),	-- Greaves of the Traitor
					},
				}),
				q(29807, {	-- Death to the Traitor King
					["qg"] = 55564,	-- Reclaimer A'zak
					["timeline"] = { ADDED_4_3_0 },
					["lvl"] = lvlsquish(72, 72, 15),
					["groups"] = {
						objective(1, {	-- 0/1 Anub'arak's Broken Husk
							["provider"] = { "i", 43411 },	-- Anub'arak's Broken Husk
							["cr"] = 29120,	-- Anub'arak
						}),
						i(44359),	-- Don Soto's Boots
						i(44361),	-- Greaves of the Traitor
						i(44360),	-- Husk Shard Sabatons
						i(44358),	-- Kilix's Silk Slippers
					},
				}),
				q(13182, {	-- Don't Forget the Eggs!
					["qg"] = 26653,	-- Kilix the Unraveler
					["coord"] = { 26.2, 50.8, DRAGONBLIGHT },
					["timeline"] = { REMOVED_4_3_0 },
					["lvl"] = lvlsquish(72, 72, 15),
					["groups"] = {
						objective(1, {	-- 0/6 Nerubian Scourge Eggs Destroyed
							["provider"] = { "o", 193051 },	-- Nerubian Scourge Egg
						}),
						i(44362),	-- Expelling Gauntlets
						i(44363),	-- Pruging Handguards
						i(44364),	-- Wraps of Quelled Bane
						i(44365),	-- Gloves of Banished Infliction
					},
				}),
				q(29808, {	-- Don't Forget the Eggs!
					["qg"] = 55564,	-- Reclaimer A'zak
					["timeline"] = { ADDED_4_3_0 },
					["lvl"] = lvlsquish(72, 72, 15),
					["groups"] = {
						objective(1, {	-- 0/6 Nerubian Scourge Eggs Destroyed
							["provider"] = { "o", 193051 },	-- Nerubian Scourge Egg
						}),
						i(44362),	-- Expelling Gauntlets
						i(44365),	-- Gloves of Banished Infliction
						i(44363),	-- Purging Handguards
						i(44364),	-- Wraps of Quelled Bane
					},
				}),
				q(29811, {	-- The Gatewatcher's Talisman
					["qg"] = 55564,	-- Reclaimer A'zak
					["timeline"] = { ADDED_4_3_0 },
					["lvl"] = lvlsquish(72, 72, 15),
					["groups"] = {
						objective(1, {	-- 0/1 The Gatewatcher's Talisman
							["provider"] = { "i", 74616 },	-- The Gatewatcher's Talisman
							["cr"] = 28684,	-- Krik'thir the Gatewatcher
						}),
					},
				}),
			}),
			-- #if AFTER 7.3.5
			Difficulty(DIFFICULTY.DUNGEON.MULTI.NORMAL_HEROIC).AddGroups({
				n(ZONE_DROPS, {
					i(37244, {	-- Fungi-Coated Boots
						["timeline"] = { CREATED_3_0_2, ADDED_8_0_1 },
						-- #if AFTER 8.0.1
						["cr"] = 29128,	-- Anub'ar Prime Guard [BLIZZARD BROKE THE REST LOL GOODLUCK]
						-- #endif
					}),
					i(35666, {	-- Mark of the Spider
						-- #if AFTER 8.0.1
						["cr"] = 29128,	-- Anub'ar Prime Guard [BLIZZARD BROKE THE REST LOL GOODLUCK]
						-- #endif
					}),
					i(35665, {	-- Soothing Lichen Wraps
						-- #if AFTER 8.0.1
						["cr"] = 29128,	-- Anub'ar Prime Guard [BLIZZARD BROKE THE REST LOL GOODLUCK]
						-- #endif
					}),
					i(37624, {	-- Stained-Glass Shard Ring
						-- #if AFTER 8.0.1
						["cr"] = 29128,	-- Anub'ar Prime Guard [BLIZZARD BROKE THE REST LOL GOODLUCK]
						-- #endif
					}),
					i(37245, {	-- Tangled Web Bindings
						["timeline"] = { CREATED_3_0_2, ADDED_8_0_1 },
						-- #if AFTER 8.0.1
						["cr"] = 29128,	-- Anub'ar Prime Guard [BLIZZARD BROKE THE REST LOL GOODLUCK]
						-- #endif
					}),
					i(37243, {	-- Treasure Seeker's Belt
						-- #if AFTER 8.0.1
						["cr"] = 29128,	-- Anub'ar Prime Guard [BLIZZARD BROKE THE REST LOL GOODLUCK]
						-- #endif
					}),
					i(35664, {	-- Unknown Archaeologist's Hammer
						-- #if AFTER 8.0.1
						["cr"] = 29128,	-- Anub'ar Prime Guard [BLIZZARD BROKE THE REST LOL GOODLUCK]
						-- #endif
					}),
					i(37625, {	-- Web Winder Gloves
						-- #if AFTER 8.0.1
						["cr"] = 29128,	-- Anub'ar Prime Guard [BLIZZARD BROKE THE REST LOL GOODLUCK]
						-- #endif
					}),
				}),
				BossOnly(KRIKTHIR, {
					i(35656),	-- Aura Focused Gauntlets
					i(35655),	-- Cobweb Machete
					i(37219),	-- Custodian's Chestpiece
					i(35657),	-- Exquisite Spider-Silk Footwraps
					i(37216),	-- Facade Shield of Glyphs
					i(37217),	-- Golden Limb Bands
					i(157582, { ["timeline"] = { ADDED_7_3_5 } }),	-- Nerubian Mantle
					i(37218),	-- Stone-Worn Footwraps
				}),
				BossOnly(HADRONOX, {
					i(37222),	-- Egg Sac Robes
					i(37220),	-- Essence of Gossamer
					i(37230),	-- Grotto Mist Gloves
					i(37221),	-- Hollowed Mandibles Legplates
					i(35658),	-- Life-Staff of the Web Lair
					i(157581, { ["timeline"] = { ADDED_7_3_5 } }),	-- Skittering Gauntlets
					i(35660),	-- Spinneret Epaulets
					i(35659),	-- Treads of Aspiring Heights
				}),
				BossOnly(ANUBARAK, {
					i(37241),	-- Ancient Aligned Girdle
					i(35663),	-- Charmed Silken Cord
					i(37237),	-- Chitin Shell Greathelm
					i(37235),	-- Crypt Lord's Deft Blade
					i(37240),	-- Flamebeard's Bracers
					i(37236),	-- Insect Vestments
					i(37232),	-- Ring of the Traitor King
					i(37238),	-- Rod of the Fallen Monarch
					i(37242),	-- Sash of the Servant
					i(35661),	-- Signet of Arachnathid Command
					i(35662),	-- Wing Cover Girdle
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.NORMAL).AddGroups({
			}),
			Difficulty(DIFFICULTY.DUNGEON.HEROIC, { ["lvl"] = lvlsquish(80, 80, 30) }).AddGroups({
				CommonBossDrops({
					currency(101, { ["timeline"] = { ADDED_3_0_2, REMOVED_4_0_1 } }),	-- Emblem of Heroism
				}),
				BossOnly(KRIKTHIR, {
					ach(1296, {	-- Watch Him Die
						["crs"] = {
							28730,	-- Watcher Gashra
							28729,	-- Watcher Narjil
							28731,	-- Watcher Silthik
						},
					}),
				}),
				BossOnly(HADRONOX, {
					ach(1297),	-- Hadronox Denied
				}),
				BossOnly(ANUBARAK, {
					i(43726, { ["timeline"] = { REMOVED_4_0_1 } }),	-- The Idle Crown of Anub'arak (QI!)
					--
					ach(1860),	-- Gotta Go!
					ach(5097, { ["timeline"] = { ADDED_4_0_3 } }),	-- Heroic: Azjol-Nerub Guild Run
					i(41796, {	-- Design: Glinting Twilight Opal [CATA+] / Design: Infused Twilight Opal [WRATH] (RECIPE!)
						["timeline"] = { ADDED_3_0_3, REMOVED_4_0_3 },
					}),
				}),
			}),
			-- #else
			Difficulty(DIFFICULTY.DUNGEON.NORMAL).AddGroups({
				n(ZONE_DROPS, {
					i(35666),	-- Mark of the Spider
					i(35665),	-- Soothing Lichen Wraps
					i(35664),	-- Unknown Archaeologist's Hammer
				}),
				BossOnly(KRIKTHIR, {
					i(35656),	-- Aura Focused Gauntlets
					i(35655),	-- Cobweb Machete
					i(35657),	-- Exquisite Spider-Silk Footwraps
				}),
				BossOnly(HADRONOX, {
					i(35658),	-- Life-Staff of the Web Lair
					i(35660),	-- Spinneret Epaulets
					i(35659),	-- Treads of Aspiring Heights
				}),
				BossOnly(ANUBARAK, {
					i(35663),	-- Charmed Silken Cord
					i(35661),	-- Signet of Arachnathid Command
					i(35662),	-- Wing Cover Girdle
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.HEROIC, { ["lvl"] = lvlsquish(80, 80, 30) }).AddGroups({
				n(ZONE_DROPS, {
					i(37244, { ["timeline"] = { CREATED_3_0_2, ADDED_8_0_1 } }),	-- Fungi-Coated Boots
					i(37624),	-- Stained-Glass Shard Ring
					i(37245, { ["timeline"] = { CREATED_3_0_2, ADDED_8_0_1 } }),	-- Tangled Web Bindings
					i(37243),	-- Treasure Seeker's Belt
					i(37625),	-- Web Winder Gloves
				}),
				CommonBossDrops({
					currency(101, { ["timeline"] = { ADDED_3_0_2, REMOVED_4_0_1 } }),	-- Emblem of Heroism
				}),
				BossOnly(KRIKTHIR, {
					ach(1296, {	-- Watch Him Die
						["crs"] = {
							28730,	-- Watcher Gashra
							28729,	-- Watcher Narjil
							28731,	-- Watcher Silthik
						},
					}),
					i(37219),	-- Custodian's Chestpiece
					i(37216),	-- Facade Shield of Glyphs
					i(37217),	-- Golden Limb Bands
					i(37218),	-- Stone-Worn Footwraps
				}),
				BossOnly(HADRONOX, {
					ach(1297),	-- Hadronox Denied
					i(37222),	-- Egg Sac Robes
					i(37220),	-- Essence of Gossamer
					i(37230),	-- Grotto Mist Gloves
					i(37221),	-- Hollowed Mandibles Legplates
				}),
				BossOnly(ANUBARAK, {
					i(43726, { ["timeline"] = { REMOVED_4_0_1 } }),	-- The Idle Crown of Anub'arak (QI!)
					--
					ach(1860),	-- Gotta Go!
					ach(5097, { ["timeline"] = { ADDED_4_0_3 } }),	-- Heroic: Azjol-Nerub Guild Run
					i(37241),	-- Ancient Aligned Girdle
					i(37237),	-- Chitin Shell Greathelm
					i(37235),	-- Crypt Lord's Deft Blade
					i(41796, {	-- Design: Glinting Twilight Opal [CATA+] / Design: Infused Twilight Opal [WRATH] (RECIPE!)
						["timeline"] = { ADDED_3_0_3, REMOVED_4_0_3 },
					}),
					i(37240),	-- Flamebeard's Bracers
					i(37236),	-- Insect Vestments
					i(37232),	-- Ring of the Traitor King
					i(37238),	-- Rod of the Fallen Monarch
					i(37242),	-- Sash of the Servant
				}),
			}),
			-- #endif
			-- #if ANYCLASSIC
			applyclassicphase(WRATH_PHASE_TWO, n(DEFENSE_PROTOCOL_ALPHA, {
				["OnInit"] = FUNCTION_TEMPLATES.OnInit.GenerateShouldExcludeFromTooltipForBuffs(394437, 412470, 424201),
				["lvl"] = lvlsquish(80, 80, 30),
				["groups"] = {
					BossOnly(KRIKTHIR, {
						i(39267),	-- Abomination Shoulderblades
						i(39259),	-- Fungi-Stained Coverings
						i(39257),	-- Loatheb's Shadow
					}),
					BossOnly(HADRONOX, {
						i(39262),	-- Gauntlets of Combined Strength
						i(39252),	-- Preceptor's Bindings
						i(39256),	-- Sulfur Stave
						i(39261),	-- Tainted Girdle of Mending
					}),
					BossOnly(ANUBARAK, {
						i(43994),	-- Belabored Legplates
						i(39425),	-- Cloak of the Dying
						i(39419),	-- Nerubian Conqueror
					}),
				},
			})),
			applyclassicphase(WRATH_PHASE_THREE, n(DEFENSE_PROTOCOL_BETA, {
				["OnInit"] = FUNCTION_TEMPLATES.OnInit.GenerateShouldExcludeFromTooltipForBuffs(412470, 424201),
				["lvl"] = lvlsquish(80, 80, 30),
				["groups"] = {
					BossOnly(KRIKTHIR, {
						i(45464),	-- Cowl of Icy Breaths
						i(45874),	-- Signet of Winter
					}),
					BossOnly(HADRONOX, {
						i(45316),	-- Armbraces of the Vibrant Flame
						i(45458),	-- Stormedge
					}),
					BossOnly(ANUBARAK, {
						i(45318),	-- Drape of Fuming Anger
						i(45313),	-- Furnace Stone
						i(45312),	-- Gloves of Smoldering Touch
					}),
				},
			})),
			applyclassicphase(WRATH_PHASE_FOUR, n(DEFENSE_PROTOCOL_GAMMA, {
				["OnInit"] = FUNCTION_TEMPLATES.OnInit.GenerateShouldExcludeFromTooltipForBuffs(424201),
				["lvl"] = lvlsquish(80, 80, 30),
				["groups"] = {
					BossOnly(KRIKTHIR),
					BossOnly(HADRONOX),
					BossOnly(ANUBARAK),
				},
			})),
			-- #endif
		},
	}),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.WOD, bubbleDownSelf({  }, {
	inst(272, {
		["timeline"] = { ADDED_6_0_2 },
		["groups"] = {
			q(35497),	-- Azjol-Nerub Reward Quest - Normal completion
			q(35498),	-- Azjol-Nerub Reward Quest - Heroic completion
		},
	}),
})));
