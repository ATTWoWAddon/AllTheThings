-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

------ Encounter Constants ------
local SLADRAN = 592;
local COLOSSUS = 593;
local MOORABI = 594;
local ECK = 595;
local GALDARAH = 596;

------ EncounterToCRS ------
local EncounterToCRS = {
	[SLADRAN] = { 29304 },	-- Slad'ran
	[COLOSSUS] = { 29307 },	-- Drakkari Colossus
	[MOORABI] = { 29305 },	-- Moorabi
	[ECK] = { 29932 },	-- Eck the Ferocious
	[GALDARAH] = { 29306 },	-- Gal'darah
};

------ Boss Functions ------
local InstanceHelper = CreateInstanceHelper(EncounterToCRS)
local BossOnly, Difficulty, CommonBossDrops =
InstanceHelper.BossOnly, InstanceHelper.Difficulty, InstanceHelper.CommonBossDrops

root(ROOTS.Instances, expansion(EXPANSION.WRATH, applyclassicphase(WRATH_PHASE_ONE, bubbleDownSelf({ ["timeline"] = { ADDED_3_0_2 } }, {
	inst(274, {	-- Gundrak
		["mapID"] = GUNDRAK,
		["coord"] = { 76.3, 21.1, ZULDRAK },
		["maps"] = { GUNDRAK_FLOOR2 },
		["lvl"] = lvlsquish(71, 71, 20),
		["groups"] = {
			n(ACHIEVEMENTS, {
				ach(484, {	-- Gundrak
					-- #if AFTER 7.3.5
					crit(5448, {	-- Slad'ran
						["_encounter"] = { SLADRAN, DIFFICULTY.DUNGEON.MULTI.NORMAL_HEROIC },
					}),
					crit(5449, {	-- Moorabi
						["_encounter"] = { MOORABI, DIFFICULTY.DUNGEON.MULTI.NORMAL_HEROIC },
					}),
					crit(5450, {	-- Drakkari Colossus
						["_encounter"] = { COLOSSUS, DIFFICULTY.DUNGEON.MULTI.NORMAL_HEROIC },
					}),
					crit(5451, {	-- Gal'darah
						["_encounter"] = { GALDARAH, DIFFICULTY.DUNGEON.MULTI.NORMAL_HEROIC },
					}),
					-- #else
					crit(5448, {	-- Slad'ran
						["_encounter"] = { SLADRAN, DIFFICULTY.DUNGEON.NORMAL },
					}),
					crit(5449, {	-- Moorabi
						["_encounter"] = { MOORABI, DIFFICULTY.DUNGEON.NORMAL },
					}),
					crit(5450, {	-- Drakkari Colossus
						["_encounter"] = { COLOSSUS, DIFFICULTY.DUNGEON.NORMAL },
					}),
					-- #if ANYCLASSIC
					-- NOTE: This boss has a different criteriaUID in classic for some dumb reason. BLIZZARD.
					crit(5627, {	-- Gal'darah
						["_encounter"] = { GALDARAH, DIFFICULTY.DUNGEON.NORMAL },
					}),
					-- #else
					crit(5451, {	-- Gal'darah
						["_encounter"] = { GALDARAH, DIFFICULTY.DUNGEON.NORMAL },
					}),
					-- #endif
					-- #endif
				}),
				-- #if ANYCLASSIC
				applyclassicphase(WRATH_PHASE_TWO, ach(17295, {	-- Defense Protocol Alpha: Gundrak
					crit(57743, {	-- Slad'ran
						["_encounter"] = { SLADRAN, DEFENSE_PROTOCOL_ALPHA },
					}),
					crit(57746, {	-- Drakkari Colossus
						["_encounter"] = { COLOSSUS, DEFENSE_PROTOCOL_ALPHA },
					}),
					crit(57744, {	-- Moorabi
						["_encounter"] = { MOORABI, DEFENSE_PROTOCOL_ALPHA },
					}),
					crit(57745, {	-- Eck the Ferocious
						["_encounter"] = { ECK, DEFENSE_PROTOCOL_ALPHA },
					}),
					crit(57747, {	-- Gal'darah
						["_encounter"] = { GALDARAH, DEFENSE_PROTOCOL_ALPHA },
					}),
				})),
				applyclassicphase(WRATH_PHASE_THREE, ach(18596, {	-- Defense Protocol Beta: Gundrak
					crit(60592, {	-- Slad'ran
						["_encounter"] = { SLADRAN, DEFENSE_PROTOCOL_BETA },
					}),
					crit(60595, {	-- Drakkari Colossus
						["_encounter"] = { COLOSSUS, DEFENSE_PROTOCOL_BETA },
					}),
					crit(60593, {	-- Moorabi
						["_encounter"] = { MOORABI, DEFENSE_PROTOCOL_BETA },
					}),
					crit(60594, {	-- Eck the Ferocious
						["_encounter"] = { ECK, DEFENSE_PROTOCOL_BETA },
					}),
					crit(60596, {	-- Gal'darah
						["_encounter"] = { GALDARAH, DEFENSE_PROTOCOL_BETA },
					}),
				})),
				applyclassicphase(WRATH_PHASE_FOUR, ach(19433, {	-- Defense Protocol Gamma: Gundrak
					crit(63339, {	-- Slad'ran
						["_encounter"] = { SLADRAN, DEFENSE_PROTOCOL_GAMMA },
					}),
					crit(63342, {	-- Drakkari Colossus
						["_encounter"] = { COLOSSUS, DEFENSE_PROTOCOL_GAMMA },
					}),
					crit(63340, {	-- Moorabi
						["_encounter"] = { MOORABI, DEFENSE_PROTOCOL_GAMMA },
					}),
					crit(63341, {	-- Eck the Ferocious
						["_encounter"] = { ECK, DEFENSE_PROTOCOL_GAMMA },
					}),
					crit(63343, {	-- Gal'darah
						["_encounter"] = { GALDARAH, DEFENSE_PROTOCOL_GAMMA },
					}),
				})),
				-- #endif
				ach(495, {	-- Heroic: Gundrak
					crit(6839, {	-- Slad'ran
						["_encounter"] = { SLADRAN, DIFFICULTY.DUNGEON.HEROIC },
					}),
					crit(6840, {	-- Moorabi
						["_encounter"] = { MOORABI, DIFFICULTY.DUNGEON.HEROIC },
					}),
					crit(6841, {	-- Drakkari Colossus
						["_encounter"] = { COLOSSUS, DIFFICULTY.DUNGEON.HEROIC },
					}),
					crit(5614, {	-- Gal'darah
						["_encounter"] = { GALDARAH, DIFFICULTY.DUNGEON.HEROIC },
					}),
					crit(5053, {	-- Eck the Ferocious
						["_encounter"] = { ECK, DIFFICULTY.DUNGEON.HEROIC },
					}),
				}),
			}),
			n(QUESTS, {
				q(13098, {	-- For Posterity
					["sourceQuest"] = 13099,	-- Just Checkin'
					["qg"] = 30676,	-- Chronicler Bah'Kini
					["coord"] = { 70.0, 21.0, ZULDRAK },
					["timeline"] = { REMOVED_4_3_0 },
					["lvl"] = lvlsquish(74, 74, 20),
					["groups"] = {
						objective(1, {	-- 0/6 Drakkari History Tablet
							["providers"] = {
								{ "i",  43140 },	-- Drakkari History Tablet
								{ "o", 192826 },	-- Drakkari History Tablet
							},
						}),
						i(43180),	-- Lion's Head Ring
						i(43178),	-- Ring of Foul Mojo
						i(43179),	-- Solid Platinum Band
						i(43177),	-- Voodoo Signet
					},
				}),
				q(29840, {	-- For Posterity
					["qg"] = 55737,	-- Chronicler Bah'Kini
					["timeline"] = { ADDED_4_3_0 },
					["lvl"] = lvlsquish(74, 74, 20),
					["groups"] = {
						objective(1, {	-- 0/6 Drakkari History Tablet
							["providers"] = {
								{ "i",  43140 },	-- Drakkari History Tablet
								{ "o", 192826 },	-- Drakkari History Tablet
							},
						}),
						i(43180),	-- Lion's Head Ring
						i(43178),	-- Ring of Foul Mojo
						i(43179),	-- Solid Platinum Band
						i(43177),	-- Voodoo Signet
					},
				}),
				q(29844, {	-- For Posterity
					["qg"] = 55738,	-- Tol'mar
					["timeline"] = { ADDED_4_3_0 },
					["lvl"] = lvlsquish(74, 74, 20),
					["groups"] = {
						objective(1, {	-- 0/6 Drakkari History Tablet
							["providers"] = {
								{ "i",  43140 },	-- Drakkari History Tablet
								{ "o", 192826 },	-- Drakkari History Tablet
							},
						}),
						i(43180),	-- Lion's Head Ring
						i(43178),	-- Ring of Foul Mojo
						i(43179),	-- Solid Platinum Band
						i(43177),	-- Voodoo Signet
					},
				}),
				q(13096, {	-- Gal'darah Must Pay
					["sourceQuest"] = 13097,	-- Unfinished Business
					["qg"] = 30671,	-- Tol'mar
					["coord"] = { 70.0, 22.8, ZULDRAK },
					["timeline"] = { REMOVED_4_3_0 },
					["lvl"] = lvlsquish(74, 74, 20),
					["groups"] = {
						objective(1, {	-- 0/1 Gal'darah slain
							["provider"] = { "n", 29306 },	-- Gal'darah
						}),
						i(43164),	-- Sly Mojo Sash
						i(43165),	-- Strange Voodoo Belt
						i(43167),	-- Ranger's Belt of the Fallen Empire
						i(43168),	-- Clasp of the Fallen Demi-God
					},
				}),
				q(29834, {	-- Gal'darah Must Pay
					["qg"] = 55738,	-- Tol'mar
					["timeline"] = { ADDED_4_3_0 },
					["lvl"] = lvlsquish(74, 74, 20),
					["groups"] = {
						objective(1, {	-- 0/1 Gal'darah slain
							["provider"] = { "n", 29306 },	-- Gal'darah
						}),
						i(43164),	-- Sly Mojo Sash
						i(43165),	-- Strange Voodoo Belt
						i(43167),	-- Ranger's Belt of the Fallen Empire
						i(43168),	-- Clasp of the Fallen Demi-God
					},
				}),
				q(29835, {	-- Gal'darah Must Pay
					["qg"] = 55737,	-- Chronicler Bah'Kini
					["timeline"] = { ADDED_4_3_0 },
					["lvl"] = lvlsquish(74, 74, 20),
					["groups"] = {
						objective(1, {	-- 0/1 Gal'darah slain
							["provider"] = { "n", 29306 },	-- Gal'darah
						}),
						i(43164),	-- Sly Mojo Sash
						i(43165),	-- Strange Voodoo Belt
						i(43167),	-- Ranger's Belt of the Fallen Empire
						i(43168),	-- Clasp of the Fallen Demi-God
					},
				}),
				q(13111, {	-- One of a Kind
					["sourceQuest"] = 13099,	-- Just Checkin'
					["qg"] = 30676,	-- Chronicler Bah'Kini
					["coord"] = { 70.0, 21.0, ZULDRAK },
					["timeline"] = { REMOVED_4_3_0 },
					["lvl"] = lvlsquish(74, 74, 20),
					["groups"] = {
						objective(1, {	-- 0/1 Drakkari Colossus Fragment
							["provider"] = { "i", 43158 },	-- Drakkari Colossus Fragment
							["cr"] = 29573,	-- Drakkari Elemental
						}),
						i(43171),	-- Fur-Lined Moccasins
						i(43172),	-- Rhino Hide Kneeboots
						i(43173),	-- Scaled Boots of Fallen Hope
						i(43176),	-- Slippers of the Mojo Dojo
						i(43174),	-- Trollkickers
					},
				}),
				q(29838, {	-- One of a Kind
					["qg"] = 55737,	-- Chronicler Bah'Kini
					["timeline"] = { ADDED_4_3_0 },
					["lvl"] = lvlsquish(74, 74, 20),
					["groups"] = {
						objective(1, {	-- 0/1 Drakkari Colossus Fragment
							["provider"] = { "i", 43158 },	-- Drakkari Colossus Fragment
							["cr"] = 29573,	-- Drakkari Elemental
						}),
						i(43171),	-- Fur-Lined Moccasins
						i(43172),	-- Rhino Hide Kneeboots
						i(43173),	-- Scaled Boots of Fallen Hope
						i(43176),	-- Slippers of the Mojo Dojo
						i(43174),	-- Trollkickers
					},
				}),
				q(29839, {	-- One of a Kind
					["qg"] = 55738,	-- Tol'mar
					["timeline"] = { ADDED_4_3_0 },
					["lvl"] = lvlsquish(74, 74, 20),
					["groups"] = {
						objective(1, {	-- 0/1 Drakkari Colossus Fragment
							["provider"] = { "i", 43158 },	-- Drakkari Colossus Fragment
							["cr"] = 29573,	-- Drakkari Elemental
						}),
						i(43171),	-- Fur-Lined Moccasins
						i(43172),	-- Rhino Hide Kneeboots
						i(43173),	-- Scaled Boots of Fallen Hope
						i(43176),	-- Slippers of the Mojo Dojo
						i(43174),	-- Trollkickers
					},
				}),
			}),
			-- #if AFTER 7.3.5
			Difficulty(DIFFICULTY.DUNGEON.MULTI.NORMAL_HEROIC).AddGroups({
				n(ZONE_DROPS, {
					i(37648),	-- Belt of Tasseled Lanterns
					i(37646),	-- Burning Skull Pendant
					i(37647),	-- Cloak of Bloodied Waters
					i(35594),	-- Snowmelt Silken Cinch
					i(35593),	-- Steel Bear Trap Bracers
				}),
				BossOnly(SLADRAN, {
					i(157578, { ["timeline"] = { ADDED_7_3_5 } }),	-- Belt of Vile Concoctions
					i(35585),	-- Cannibal's Legguards
					i(35584),	-- Embroidered Gown of Zul'drak
					i(37628),	-- Slad'ran Coiled Cord
					i(37629),	-- Slithering Slippers
					i(37627),	-- Snake Den Spaulders
					i(37626),	-- Wand of Sseratus
					i(35583),	-- Witch Doctor's Wildstaff
				}),
				BossOnly(COLOSSUS, {
					i(37634),	-- Bracers of the Divine Elemental
					i(35590),	-- Drakkari Hunting Bow
					i(35592),	-- Hauberk of Totemic Mastery
					i(37636),	-- Helm of Cheated Fate
					i(37637),	-- Living Mojo Belt
					i(37635),	-- Pauldrons of the Colossus
					i(35591),	-- Shoulderguards of the Ice Troll
				}),
				BossOnly(MOORABI, {
					i(35589),	-- Arcane Focal Signet
					i(157584, { ["timeline"] = { ADDED_7_3_5 } }),	-- Drape of Moorabi
					i(37631),	-- Fist of the Deity
					i(35588),	-- Forlorn Breastplate of War
					i(35587),	-- Frozen Scepter of Necromancy
					i(37633),	-- Ground Tremor Helm
					i(37632),	-- Mojo Frenzy Greaves
					i(37630),	-- Shroud of Moorabi
				}),
				BossOnly(GALDARAH, {
					i(43309),	-- Amulet of the Stampede
					i(37641),	-- Arcane Flame Altar-Garb
					i(37640),	-- Boots of Transformation
					i(43306),	-- Gal'darah's Signet
					i(37644),	-- Gored Hide Legguards
					i(37639),	-- Grips of the Beast God
					i(37642),	-- Hemorrhaging Circle
					i(37645),	-- Horn-Tipped Gauntlets
					i(37638),	-- Offering of Sacrifice
					i(37643),	-- Sash of Blood Removal
					i(43305),	-- Shroud of Akali
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.NORMAL).AddGroups({
			}),
			Difficulty(DIFFICULTY.DUNGEON.HEROIC, { ["lvl"] = lvlsquish(80, 80, 30) }).AddGroups({
				CommonBossDrops({
					currency(101, { ["timeline"] = { ADDED_3_0_2, REMOVED_4_0_1 } }),	-- Emblem of Heroism
				}),
				BossOnly(SLADRAN, {
					ach(2058),	-- Snakes. Why'd It Have To Be Snakes?
				}),
				BossOnly(COLOSSUS),
				BossOnly(MOORABI, {
					ach(2040),	-- Less-rabi
				}),
				BossOnly(ECK, {
					i(43310),	-- Engraved Chestplate of Eck
					i(43312),	-- Gorloc Muddy Footwraps
					i(43311),	-- Helmet of the Shrine
					i(43313),	-- Leggings of the Ruins Dweller
				}),
				BossOnly(GALDARAH, {
					i(43693, { ["timeline"] = { REMOVED_4_0_1 } }),	-- Mojo Remnant of Akali (QI!)
					--
					ach(5101, { ["timeline"] = { ADDED_4_0_3 } }),	-- Heroic: Gundrak Guild Run
					ach(2152),	-- Share The Love
					ach(1864),	-- What the Eck?
				}),
			}),
			-- #else
			Difficulty(DIFFICULTY.DUNGEON.NORMAL).AddGroups({
				n(ZONE_DROPS, {
					i(35594),	-- Snowmelt Silken Cinch
					i(35593),	-- Steel Bear Trap Bracers
				}),
				BossOnly(SLADRAN, {
					i(35585),	-- Cannibal's Legguards
					i(35584),	-- Embroidered Gown of Zul'drak
					i(35583),	-- Witch Doctor's Wildstaff
				}),
				BossOnly(COLOSSUS, {
					i(35590),	-- Drakkari Hunting Bow
					i(35592),	-- Hauberk of Totemic Mastery
					i(35591),	-- Shoulderguards of the Ice Troll
				}),
				BossOnly(MOORABI, {
					i(35589),	-- Arcane Focal Signet
					i(35588),	-- Forlorn Breastplate of War
					i(35587),	-- Frozen Scepter of Necromancy
				}),
				BossOnly(GALDARAH, {
					i(43309),	-- Amulet of the Stampede
					i(43306),	-- Gal'darah's Signet
					i(43305),	-- Shroud of Akali
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.HEROIC, { ["lvl"] = lvlsquish(80, 80, 30) }).AddGroups({
				n(ZONE_DROPS, {
					i(37648),	-- Belt of Tasseled Lanterns
					i(37646),	-- Burning Skull Pendant
					i(37647),	-- Cloak of Bloodied Waters
				}),
				CommonBossDrops({
					currency(101, { ["timeline"] = { ADDED_3_0_2, REMOVED_4_0_1 } }),	-- Emblem of Heroism
				}),
				BossOnly(SLADRAN, {
					ach(2058),	-- Snakes. Why'd It Have To Be Snakes?
					i(37628),	-- Slad'ran Coiled Cord
					i(37629),	-- Slithering Slippers
					i(37627),	-- Snake Den Spaulders
					i(37626),	-- Wand of Sseratus
				}),
				BossOnly(COLOSSUS, {
					i(37634),	-- Bracers of the Divine Elemental
					i(37636),	-- Helm of Cheated Fate
					i(37637),	-- Living Mojo Belt
					i(37635),	-- Pauldrons of the Colossus
				}),
				BossOnly(MOORABI, {
					ach(2040),	-- Less-rabi
					i(37631),	-- Fist of the Deity
					i(37633),	-- Ground Tremor Helm
					i(37632),	-- Mojo Frenzy Greaves
					i(37630),	-- Shroud of Moorabi
				}),
				BossOnly(ECK, {
					i(43310),	-- Engraved Chestplate of Eck
					i(43312),	-- Gorloc Muddy Footwraps
					i(43311),	-- Helmet of the Shrine
					i(43313),	-- Leggings of the Ruins Dweller
				}),
				BossOnly(GALDARAH, {
					i(43693, { ["timeline"] = { REMOVED_4_0_1 } }),	-- Mojo Remnant of Akali (QI!)
					--
					ach(5101, { ["timeline"] = { ADDED_4_0_3 } }),	-- Heroic: Gundrak Guild Run
					ach(2152),	-- Share The Love
					ach(1864),	-- What the Eck?
					i(37641),	-- Arcane Flame Altar-Garb
					i(37640),	-- Boots of Transformation
					i(37644),	-- Gored Hide Legguards
					i(37639),	-- Grips of the Beast God
					i(37642),	-- Hemorrhaging Circle
					i(37645),	-- Horn-Tipped Gauntlets
					i(37638),	-- Offering of Sacrifice
					i(37643),	-- Sash of Blood Removal
				}),
			}),
			-- #endif
			-- #if ANYCLASSIC
			applyclassicphase(WRATH_PHASE_TWO, n(DEFENSE_PROTOCOL_ALPHA, {
				["OnInit"] = FUNCTION_TEMPLATES.OnInit.GenerateShouldExcludeFromTooltipForBuffs(394438, 413169, 424203),
				["lvl"] = lvlsquish(80, 80, 30),
				["groups"] = {
					BossOnly(SLADRAN, {
						i(39229),	-- Embrace of the Spider
						i(39234),	-- Plague-Impervious Boots
						i(39230),	-- Spaulders of the Monstrosity
					}),
					BossOnly(COLOSSUS, {
						i(39233),	-- Aegis of Damnation
						i(39225),	-- Cloak of Armed Strife
						i(39224),	-- Leggings of Discord
					}),
					BossOnly(MOORABI, {
						i(39232),	-- Pendant of Lost Vocations
						i(39228),	-- Web Cocoon Grips
						i(39221),	-- Wraith Spear
					}),
					BossOnly(ECK, {
						i(39217),	-- Avenging Combat Leggings
						i(39226),	-- Maexxna's Femur
						i(39231),	-- Timeworn Silken Band
					}),
					BossOnly(GALDARAH, {
						i(44660),	-- Drakescale Collar
						i(40491),	-- Hailstorm
						i(39283),	-- Putrescent Bands
					}),
				},
			})),
			applyclassicphase(WRATH_PHASE_THREE, n(DEFENSE_PROTOCOL_BETA, {
				["OnInit"] = FUNCTION_TEMPLATES.OnInit.GenerateShouldExcludeFromTooltipForBuffs(413169, 424203),
				["lvl"] = lvlsquish(80, 80, 30),
				["groups"] = {
					BossOnly(SLADRAN, {
						i(45976),	-- Static Charge Handwraps
						i(45973),	-- Stylish Power Cape
					}),
					BossOnly(COLOSSUS, {
						i(45306),	-- Binding of the Dragon Matriarch
						i(45301),	-- Bracers of the Smothering Inferno
					}),
					BossOnly(MOORABI, {
						i(45305),	-- Breastplate of the Afterlife
						i(45299),	-- Dragonsteel Faceplate
					}),
					BossOnly(ECK, {
						i(45308),	-- Eye of the Broodmother
						i(45307),	-- Ironscale Leggings
					}),
					BossOnly(GALDARAH, {
						i(45893),	-- Guise of the Midgard Serpent
						i(45298),	-- Razorscale Talon
						i(45304),	-- Stormtempered Girdle
						i(45973),	-- Stylish Power Cape
					}),
				},
			})),
			applyclassicphase(WRATH_PHASE_FOUR, n(DEFENSE_PROTOCOL_GAMMA, {
				["OnInit"] = FUNCTION_TEMPLATES.OnInit.GenerateShouldExcludeFromTooltipForBuffs(424203),
				["lvl"] = lvlsquish(80, 80, 30),
				["groups"] = {
					BossOnly(SLADRAN),
					BossOnly(COLOSSUS),
					BossOnly(MOORABI),
					BossOnly(ECK),
					BossOnly(GALDARAH),
				},
			})),
			-- #endif
		},
	}),
}))));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.WOD, {
	inst(284, {
		q(35475),	-- Gundrak Reward Quest - Normal completion
		q(35476),	-- Gundrak Reward Quest - Heroic completion
		q(35477),	-- Gundrak Bonus Objective - kill Eck the Ferocious (Heroic only)
	}),
}));
