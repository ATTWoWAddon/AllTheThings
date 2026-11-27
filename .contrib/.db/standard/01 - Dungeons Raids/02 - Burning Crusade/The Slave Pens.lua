-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

------ Encounter Constants ------
local MENNU = 570;
local ROKMAR = 571;
local QUAGMIRRAN = 572;

------ EncounterToCRS ------
local EncounterToCRS = {
	[MENNU] = { 17941 },	-- Mennu the Betrayer
	[ROKMAR] = { 17991 },	-- Rokmar the Crackler
	[QUAGMIRRAN] = { 17942 },	-- Quagmirran
};

------ Boss Functions ------
local InstanceHelper = CreateInstanceHelper(EncounterToCRS)
local BossOnly, Difficulty, CommonBossDrops =
InstanceHelper.BossOnly, InstanceHelper.Difficulty, InstanceHelper.CommonBossDrops

root(ROOTS.Instances, expansion(EXPANSION.TBC, applyclassicphase(TBC_PHASE_ONE, {
	inst(260, {	-- The Slave Pens
		lore = "The Slave Pens is the place where the Naga force their Broken workers to toil for resources in the darkness in order to achieve their goal of draining the marsh completely and claiming control of its water.",
		-- #if BEFORE MOP
		zoneTextAreaID = 3717,	-- The Slave Pens
		-- #endif
		mapID = COILFANG_RESERVOIR_SLAVE_PENS,
		coord = { 48.95, 35.84, ZANGARMARSH },	-- The Slave Pens, Zangarmarsh
		timeline = { ADDED_2_0_3 },
		lvl = lvlsquish(59, 59, 10),
		groups = {
			n(QUESTS, {
				q(29564, {	-- A Brother Betrayed
					qg = 54668,	-- Nahuud
					timeline = { ADDED_4_3_0 },
					lvl = lvlsquish(57, 57, 10),
					groups = {
						objective(1, {	-- Mennu the Betrayer slain
							provider = { "n", 17941 },	-- Mennu the Betrayer
						}),
					},
				}),
				q(29566, {	-- Checking Up
					qg = 17841,	-- Ysiel Windsinger
					coord = { 78.4, 62.0, ZANGARMARSH },
					timeline = { ADDED_4_3_0 },
					lvl = lvlsquish(62, 62, 10),
				}),
				q(9876, {	-- Failed Incursion
					sourceQuest = 9732,	-- Return to the Marsh
					qg = 17841,	-- Ysiel Windsinger
					coord = { 78.4, 62.0, ZANGARMARSH },
					timeline = { REMOVED_4_3_0 },
					isBreadcrumb = true,
					lvl = lvlsquish(62, 62, 10),
				}),
				q(9738, {	-- Lost in Action
					sourceQuest = 9876,	-- Failed Incursion
					qg = 17884,	-- Watcher Jhang
					coord = { 52.3, 36.0, ZANGARMARSH },
					timeline = { REMOVED_4_3_0 },
					maps = { COILFANG_RESERVOIR_UNDERBOG },
					lvl = lvlsquish(62, 62, 10),
					groups = {
						objective(1, {	-- Earthbinder Rayge Discovered
							provider = { "n", 17885 },	-- Earthbinder Rayge
							coord = { 66.7, 22.9, COILFANG_RESERVOIR_UNDERBOG },
						}),
						objective(2, {	-- Naturalist Bite Discovered
							provider = { "n", 17893 },	-- Naturalist Bite
							coord = { 95.0, 65.4, COILFANG_RESERVOIR_SLAVE_PENS },
						}),
						objective(3, {	-- Weeder Greenthumb Discovered
							provider = { "n", 17890 },	-- Weeder Greenthumb
							coord = { 48.8, 83.0, COILFANG_RESERVOIR_SLAVE_PENS },
						}),
						objective(4, {	-- Windcaller Claw Discovered
							provider = { "n", 17894 },	-- Windcaller Claw
							coord = { 40.6, 24.5, COILFANG_RESERVOIR_UNDERBOG },
							cr = 17827,	-- Claw <Swamplord Musel'ek's Pet>
						}),
						i(25541),	-- Cenarion Ring of Casting
						i(28029),	-- Goldenvine Wraps
						i(25540),	-- Dark Cloak of the Marsh
					},
				}),
				q(29563, {	-- Lost in Action
					qg = 54667,	-- Watcher Jhang
					timeline = { ADDED_4_3_0 },
					lvl = lvlsquish(57, 57, 10),
					groups = {
						objective(1, {	-- Naturalist Bite Discovered
							provider = { "n", 17893 },	-- Naturalist Bite
							coord = { 95.0, 65.4, COILFANG_RESERVOIR_SLAVE_PENS },
						}),
						objective(2, {	-- Weeder Greenthumb Discovered
							provider = { "n", 17890 },	-- Weeder Greenthumb
							coord = { 48.8, 83.0, COILFANG_RESERVOIR_SLAVE_PENS },
						}),
					},
				}),
				q(10901, {	-- The Cudgel of Kar'desh
					sourceQuest = 10900,	-- The Mark of Vashj
					qg = 22421,	-- Skar'this the Heretic
					timeline = { REMOVED_3_0_2 },
					maps = {
						KARAZHAN,
						GRUULS_LAIR,
					},
					lvl = lvlsquish(70, 70, 30),
					groups = {
						objective(1, {	-- 0/1 Earthen Signet
							provider = { "i", 31750 },	-- Earthen Signet
						}),
						objective(2, {	-- 0/1 Blazing Signet
							provider = { "i", 31751 },	-- Blazing Signet
						}),
					},
				}),
				-- #if AFTER WRATH
				q(13431, {	-- The Cudgel of Kar'desh
					sourceQuest = 10900,	-- The Mark of Vashj
					altQuests = { 10901 },	-- The Cudgel of Kar'desh
					qg = 22421,	-- Skar'this the Heretic
					timeline = { ADDED_3_0_2 },
					maps = {
						KARAZHAN,
						GRUULS_LAIR,
					},
					-- #if ANYCLASSIC
					lockCriteria = { 1, "lvl", 71 },
					-- #endif
					lvl = lvlsquish(70, 70, 30),
					-- This quest started showing up again after SL level squish
					groups = {
						objective(1, {	-- 0/1 Earthen Signet
							provider = { "i", 31750 },	-- Earthen Signet
						}),
						objective(2, {	-- 0/1 Blazing Signet
							provider = { "i", 31751 },	-- Blazing Signet
						}),
					},
				}),
				-- #endif
				q(29565, {	-- The Heart of the Matter
					qg = 54667,	-- Watcher Jhang
					timeline = { ADDED_4_3_0 },
					groups= {
						objective(1, {	-- 0/1 The Invader's Claw
							provider = { "i", 72118 },	-- The Invader's Claw
						}),
						objective(2, {	-- 0/1 The Slave Master's Eye
							provider = { "i", 72119 },	-- The Slave Master's Eye
						}),
						i(25541),	-- Cenarion Ring of Casting
						i(28029),	-- Goldenvine Wraps
						i(25540),	-- Dark Cloak of the Marsh
					},
				}),
				q(10900, {	-- The Mark of Vashj
					qg = 22421,	-- Skar'this the Heretic
					-- #if ANYCLASSIC
					lockCriteria = { 1, "lvl", 71 },
					-- #endif
					lvl = lvlsquish(70, 70, 10),
					-- This quest started showing up again after SL level squish
				}),
			}),
			-- #if AFTER 7.3.5
			Difficulty(DIFFICULTY.DUNGEON.MULTI.NORMAL_HEROIC).AddGroups({
				n(ZONE_DROPS, {
					i(24368),	-- Coilfang Armaments
				}),
				BossOnly(MENNU, {
					i(27541),	-- Archery Belt of the Broken
					i(27542),	-- Cord of Belief
					i(27545),	-- Mennu's Scaled Leggings
					i(29674, { timeline = { REMOVED_5_0_4 } }),	-- Pattern: Nature Armor Kit (RECIPE!)
					i(24359),	-- Princely Reign Leggings
					i(24361),	-- Spellfire Longsword
					i(27543),	-- Starlight Dagger
					i(24360),	-- Tracker's Belt
					i(27546),	-- Traitor's Noose
					i(24357),	-- Vest of Living Lightning
					i(24356),	-- Wastewalker Shiv
				}),
				BossOnly(ROKMAR, {
					i(72118, { timeline = { ADDED_4_3_0 } }),	-- The Invader's Claw (QI!)
					--
					i(24379),	-- Bogstrok Scale Cloak
					i(24380),	-- Calming Spore Reed
					i(24378),	-- Coilfang Hammer of Renewal
					i(24381),	-- Coilfang Needler
					i(27547),	-- Coldwhisper Cord
					i(27548),	-- Girdle of Many Blessings (NOTE: Timewalking drops from Mennu?)
					i(27550),	-- Ironscale War Cloak
					i(28124),	-- Liar's Cord
					i(24376),	-- Runed Fungalcap
					i(27551),	-- Skeletal Necklace of Battlerage
					i(27549),	-- Wavefury Boots
				}),
				BossOnly(QUAGMIRRAN, {
					i(72119, { timeline = { ADDED_4_3_0 } }),	-- The Slave Master's Eye (QI!)
					--
					ach(649),	-- The Slave Pens
					i(29349),	-- Adamantine Chain of the Unbroken
					i(24364),	-- Azureplate Greaves
					i(27740),	-- Band of Ursol
					i(27741),	-- Bleeding Hollow Warhammer
					i(29242),	-- Boots of Blasphemy
					i(28337),	-- Breastplate of Righteous Fury
					i(24365),	-- Deft Handguards
					i(27800),	-- Earthsoul Britches
					i(27672),	-- Girdle of the Immovable
					i(27742),	-- Mage-Fury Girdle
					i(27796),	-- Mana-Etched Spaulders
					i(30538),	-- Midnight Legguards
					i(27713),	-- Pauldrons of Desolation
					i(32078),	-- Pauldrons of Wild Magic
					i(27673),	-- Phosphorescent Blade
					i(27683),	-- Quagmirran's Eye
					i(24366),	-- Scorpid Sting Mantle
					i(27712),	-- Shackles of Quagmirran
					i(24362),	-- Spore-Soaked Vaneer
					i(27714),	-- Swamplight Lantern (NOTE: This drops from Rokmar in Timewalking)
					i(24363),	-- Unscarred Breastplate
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.NORMAL).AddGroups({
			}),
			Difficulty(DIFFICULTY.DUNGEON.HEROIC, { lvl = lvlsquish(70, 70, 30) }).AddGroups({
				CommonBossDrops({
					i(30604),	-- Resplendent Fire Opal
					i(30603),	-- Royal Tanzanite
					i(30605),	-- Vivid Chrysoprase
				}),
				BossOnly(MENNU, {
					i(27544, { timeline = { REMOVED_5_0_4 } }),	-- Totem of Spontaneous Regrowth
				}),
				BossOnly(ROKMAR),
				BossOnly(QUAGMIRRAN, {
					ach(669),	-- Heroic: The Slave Pens
					ach(5069, { timeline = { ADDED_4_0_3 } }),	-- Heroic: The Slave Pens Guild Run
					applyclassicphase(TBC_PHASE_ONE, i(23572)),	-- Primal Nether
					i(33821),	-- The Heart of Quagmirran
				}),
			}),
			-- #else
			Difficulty(DIFFICULTY.DUNGEON.MULTI.NORMAL_HEROIC).AddGroups({
				n(ZONE_DROPS, {
					i(24368),	-- Coilfang Armaments
				}),
				BossOnly(MENNU, {
					i(29674, { timeline = { REMOVED_5_0_4 } }),	-- Pattern: Nature Armor Kit (RECIPE!)
				}),
				BossOnly(ROKMAR, {
					i(72118, { timeline = { ADDED_4_3_0 } }),	-- The Invader's Claw (QI!)
				}),
				BossOnly(QUAGMIRRAN, {
					i(72119, { timeline = { ADDED_4_3_0 } }),	-- The Slave Master's Eye (QI!)
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.NORMAL).AddGroups({
				BossOnly(MENNU, {
					i(24359),	-- Princely Reign Leggings
					i(24361),	-- Spellfire Longsword
					i(24360),	-- Tracker's Belt
					i(24357),	-- Vest of Living Lightning
					i(24356),	-- Wastewalker Shiv
				}),
				BossOnly(ROKMAR, {
					i(24379),	-- Bogstrok Scale Cloak
					i(24380),	-- Calming Spore Reed
					i(24378),	-- Coilfang Hammer of Renewal
					i(24381),	-- Coilfang Needler
					i(24376),	-- Runed Fungalcap
				}),
				BossOnly(QUAGMIRRAN, {
					ach(649),	-- The Slave Pens
					i(24364),	-- Azureplate Greaves
					i(24365),	-- Deft Handguards
					i(24366),	-- Scorpid Sting Mantle
					i(24362),	-- Spore-Soaked Vaneer
					i(24363),	-- Unscarred Breastplate
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.HEROIC, {
				-- #if BEFORE 4.2.0
				description = "You need to have a key to the instance in order to access this mode.",
				attunement = {
					{ "i", 30623 },	-- Reservoir Key
					-- #if CLASSIC_ANNIVERSARY
					{ "i", 265843 },	-- Communal Reservoir Key
					-- #endif
				},
				-- #endif
				lvl = lvlsquish(70, 70, 30),
			}).AddGroups({
				CommonBossDrops({
					-- #if BEFORE CATA
					applyclassicphase(TBC_PHASE_FOUR, BADGE_OF_JUSTICE(1)),
					-- #endif
					i(30604),	-- Resplendent Fire Opal
					i(30603),	-- Royal Tanzanite
					i(30605),	-- Vivid Chrysoprase
				}),
				BossOnly(MENNU, {
					i(27541),	-- Archery Belt of the Broken
					i(27542),	-- Cord of Belief
					i(27545),	-- Mennu's Scaled Leggings
					i(27543),	-- Starlight Dagger
					i(27544, { timeline = { REMOVED_5_0_4 } }),	-- Totem of Spontaneous Regrowth
					i(27546),	-- Traitor's Noose
				}),
				BossOnly(ROKMAR, {
					i(27547),	-- Coldwhisper Cord
					i(27548),	-- Girdle of Many Blessings (NOTE: Timewalking drops from Mennu?)
					i(27550),	-- Ironscale War Cloak
					i(28124),	-- Liar's Cord
					i(27551),	-- Skeletal Necklace of Battlerage
					i(27549),	-- Wavefury Boots
				}),
				BossOnly(QUAGMIRRAN, {
					ach(669),	-- Heroic: The Slave Pens
					ach(5069, { timeline = { ADDED_4_0_3 } }),	-- Heroic: The Slave Pens Guild Run
					i(29349),	-- Adamantine Chain of the Unbroken
					i(27740),	-- Band of Ursol
					i(27741),	-- Bleeding Hollow Warhammer
					i(29242),	-- Boots of Blasphemy
					i(28337),	-- Breastplate of Righteous Fury
					i(27800),	-- Earthsoul Britches
					i(27672),	-- Girdle of the Immovable
					i(27742),	-- Mage-Fury Girdle
					i(27796),	-- Mana-Etched Spaulders
					i(30538),	-- Midnight Legguards
					i(27713),	-- Pauldrons of Desolation
					i(32078),	-- Pauldrons of Wild Magic
					i(27673),	-- Phosphorescent Blade
					applyclassicphase(TBC_PHASE_ONE, i(23572)),	-- Primal Nether
					i(27683),	-- Quagmirran's Eye
					i(27712),	-- Shackles of Quagmirran
					i(27714),	-- Swamplight Lantern (NOTE: This drops from Rokmar in Timewalking)
					i(33821),	-- The Heart of Quagmirran
				}),
			}),
			-- #endif
		},
	}),
})));

root(ROOTS.HiddenQuestTriggers, {
	expansion(EXPANSION.TBC, {
		inst(260, {
			q(11115),	-- The Mark of Vashj (FLAG ONLY)
		}),
	}),
	expansion(EXPANSION.WOD, {
		inst(260, {
			q(35561),	-- The Slave Pens Reward Quest - Normal completion
			q(35562),	-- The Slave Pens Reward Quest - Heroic completion
		}),
	}),
});
