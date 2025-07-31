-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
root(ROOTS.Instances, expansion(EXPANSION.WRATH, applyclassicphase(WRATH_PHASE_ONE, bubbleDownSelf({ ["timeline"] = { ADDED_3_0_2 } }, {
	inst(274, {	-- Gundrak
		["mapID"] = GUNDRAK,
		["coord"] = { 76.3, 21.1, ZULDRAK },
		["maps"] = { GUNDRAK_FLOOR2 },
		["lvl"] = lvlsquish(71, 71, 20),
		["groups"] = {
			n(ACHIEVEMENTS, {
				ach(484, {	-- Gundrak
					crit(5448, {	-- Slad'ran
						["_encounter"] = { 592, DIFFICULTY.DUNGEON.NORMAL },
					}),
					crit(5449, {	-- Moorabi
						["_encounter"] = { 594, DIFFICULTY.DUNGEON.NORMAL },
					}),
					crit(5450, {	-- Drakkari Colossus
						["_encounter"] = { 593, DIFFICULTY.DUNGEON.NORMAL },
					}),
					-- #if ANYCLASSIC
					-- NOTE: This boss has a different criteriaUID in classic for some dumb reason. BLIZZARD.
					crit(5627, {	-- Gal'darah
						["_encounter"] = { 596, DIFFICULTY.DUNGEON.NORMAL },
					}),
					-- #else
					crit(5451, {	-- Gal'darah
						["_encounter"] = { 596, DIFFICULTY.DUNGEON.NORMAL },
					}),
					-- #endif
				}),
				-- #if ANYCLASSIC
				applyclassicphase(WRATH_PHASE_TWO, ach(17295, {	-- Defense Protocol Alpha: Gundrak
					crit(57743, {	-- Slad'ran
						["_encounter"] = { 592, DEFENSE_PROTOCOL_ALPHA },
					}),
					crit(57746, {	-- Drakkari Colossus
						["_encounter"] = { 593, DEFENSE_PROTOCOL_ALPHA },
					}),
					crit(57744, {	-- Moorabi
						["_encounter"] = { 594, DEFENSE_PROTOCOL_ALPHA },
					}),
					crit(57745, {	-- Eck the Ferocious
						["_encounter"] = { 595, DEFENSE_PROTOCOL_ALPHA },
					}),
					crit(57747, {	-- Gal'darah
						["_encounter"] = { 596, DEFENSE_PROTOCOL_ALPHA },
					}),
				})),
				applyclassicphase(WRATH_PHASE_THREE, ach(18596, {	-- Defense Protocol Beta: Gundrak
					crit(60592, {	-- Slad'ran
						["_encounter"] = { 592, DEFENSE_PROTOCOL_BETA },
					}),
					crit(60595, {	-- Drakkari Colossus
						["_encounter"] = { 593, DEFENSE_PROTOCOL_BETA },
					}),
					crit(60593, {	-- Moorabi
						["_encounter"] = { 594, DEFENSE_PROTOCOL_BETA },
					}),
					crit(60594, {	-- Eck the Ferocious
						["_encounter"] = { 595, DEFENSE_PROTOCOL_BETA },
					}),
					crit(60596, {	-- Gal'darah
						["_encounter"] = { 596, DEFENSE_PROTOCOL_BETA },
					}),
				})),
				applyclassicphase(WRATH_PHASE_FOUR, ach(19433, {	-- Defense Protocol Gamma: Gundrak
					crit(63339, {	-- Slad'ran
						["_encounter"] = { 592, DEFENSE_PROTOCOL_GAMMA },
					}),
					crit(63342, {	-- Drakkari Colossus
						["_encounter"] = { 593, DEFENSE_PROTOCOL_GAMMA },
					}),
					crit(63340, {	-- Moorabi
						["_encounter"] = { 594, DEFENSE_PROTOCOL_GAMMA },
					}),
					crit(63341, {	-- Eck the Ferocious
						["_encounter"] = { 595, DEFENSE_PROTOCOL_GAMMA },
					}),
					crit(63343, {	-- Gal'darah
						["_encounter"] = { 596, DEFENSE_PROTOCOL_GAMMA },
					}),
				})),
				-- #endif
				ach(495, {	-- Heroic: Gundrak
					crit(6839, {	-- Slad'ran
						["_encounter"] = { 592, DIFFICULTY.DUNGEON.HEROIC },
					}),
					crit(6840, {	-- Moorabi
						["_encounter"] = { 594, DIFFICULTY.DUNGEON.HEROIC },
					}),
					crit(6841, {	-- Drakkari Colossus
						["_encounter"] = { 593, DIFFICULTY.DUNGEON.HEROIC },
					}),
					crit(5614, {	-- Gal'darah
						["_encounter"] = { 596, DIFFICULTY.DUNGEON.HEROIC },
					}),
					crit(5053, {	-- Eck the Ferocious
						["_encounter"] = { 595, DIFFICULTY.DUNGEON.HEROIC },
					}),
				}),
			}),
			n(QUESTS, {
				q(13098, {	-- For Posterity
					["sourceQuest"] = 13099,	-- Just Checkin'
					["qg"] = 30676,	-- Chronicler Bah'Kini
					["coord"] = { 70, 21, ZULDRAK },
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
						i(43167),	-- Ranger's Beelt of the Fallen Empire
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
						i(43167),	-- Ranger's Beelt of the Fallen Empire
						i(43168),	-- Clasp of the Fallen Demi-God
					},
				}),
				q(13111, {	-- One of a Kind
					["sourceQuest"] = 13099,	-- Just Checkin'
					["qg"] = 30676,	-- Chronicler Bah'Kini
					["coord"] = { 70, 21, ZULDRAK },
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
			d(DIFFICULTY.DUNGEON.NORMAL, {
				n(ZONE_DROPS, {
					i(35593),	-- Steel Bear Trap Bracers
					i(35594),	-- Snowmelt Silken Cinch
				}),
				e(592, {	-- Slad'ran
					["creatureID"] = 29304,	-- Slad'ran
					["groups"] = {
						i(35583),	-- Witch Doctor's Wildstaff
						-- #if AFTER 7.3.5
						i(37626),	-- Wand of Sseratus (7.3.5 - Used to be only Heroic Mode)
						i(37627),	-- Snake Den Spaulders (7.3.5 - Used to be only Heroic Mode)
						-- #endif
						i(35584),	-- Embroidered Gown of Zul'drak
						i(157578, {	-- Belt of Vile Concoctions
							["timeline"] = { ADDED_7_3_5 },
						}),
						-- #if AFTER 7.3.5
						i(37628),	-- Slad'ran Coiled Cord (7.3.5 - Used to be only Heroic Mode)
						-- #endif
						i(35585),	-- Cannibal's Legguards
						-- #if AFTER 7.3.5
						i(37629),	-- Slithering Slippers (7.3.5 - Used to be only Heroic Mode)
						-- #endif
					},
				}),
				e(593, {	-- Drakkari Colossus
					["creatureID"] = 29307,	-- Drakkari Colossus
					["groups"] = {
						i(35590),	-- Drakkari Hunting Bow
						-- #if AFTER 7.3.5
						i(37636),	-- Helm of Cheated Fate (7.3.5 - Used to be only Heroic Mode)
						i(37635),	-- Pauldrons of the Colossus (7.3.5 - Used to be only Heroic Mode)
						-- #endif
						i(35591),	-- Shoulderguards of the Ice Troll
						i(35592),	-- Hauberk of Totemic Mastery
						-- #if AFTER 7.3.5
						i(37634),	-- Bracers of the Divine Elemental (7.3.5 - Used to be only Heroic Mode)
						i(37637),	-- Living Mojo Belt (7.3.5 - Used to be only Heroic Mode)
						-- #endif
					},
				}),
				e(594, {	-- Moorabi
					["creatureID"] = 29305,	-- Moorabi
					["groups"] = {
						-- #if AFTER 7.3.5
						i(37631),	-- Fist of the Deity (7.3.5 - Used to be only Heroic Mode)
						-- #endif
						i(35587),	-- Frozen Scepter of Necromancy
						-- #if AFTER 7.3.5
						i(37633),	-- Ground Tremor Helm (7.3.5 - Used to be only Heroic Mode)
						i(157584, {	-- Drape of Moorabi
							["timeline"] = { ADDED_7_3_5 },
						}),
						i(37630),	-- Shroud of Moorabi (7.3.5 - Used to be only Heroic Mode)
						-- #endif
						i(35588),	-- Forlorn Breastplate of War
						-- #if AFTER 7.3.5
						i(37632),	-- Mojo Frenzy Greaves (7.3.5 - Used to be only Heroic Mode)
						-- #endif
						i(35589),	-- Arcane Focal Signet
					},
				}),
				e(596, {	-- Gal'darah
					["creatureID"] = 29306,	-- Gal'darah
					["groups"] = {
						i(43309),	-- Amulet of the Stampede
						i(43305),	-- Shroud of Akali
						-- #if AFTER 7.3.5
						i(37641),	-- Arcane Flame Altar-Garb (7.3.5 - Used to be only Heroic Mode)
						i(37639),	-- Grips of the Beast God (7.3.5 - Used to be only Heroic Mode)
						i(37645),	-- Horn-Tipped Gauntlets (7.3.5 - Used to be only Heroic Mode)
						i(37643),	-- Sash of Blood Removal (7.3.5 - Used to be only Heroic Mode)
						i(37644),	-- Gored Hide Legguards (7.3.5 - Used to be only Heroic Mode)
						i(37640),	-- Boots of Transformation (7.3.5 - Used to be only Heroic Mode)
						-- #endif
						i(43306),	-- Gal'darah's Signet
						-- #if AFTER 7.3.5
						i(37642),	-- Hemorrhaging Circle (7.3.5 - Used to be only Heroic Mode)
						i(37638),	-- Offering of Sacrifice (7.3.5 - Used to be only Heroic Mode)
						-- #endif
					},
				}),
			}),
			d(DIFFICULTY.DUNGEON.HEROIC, {
				["lvl"] = lvlsquish(80, 80, 30),
				["groups"] = {
					n(ZONE_DROPS, {
						i(37646),	-- Burning Skull Pendant
						i(37647),	-- Cloak of Bloodied Waters
						i(37648),	-- Belt of Tasseled Lanterns
					}),
					-- #if BEFORE CATA
					n(COMMON_BOSS_DROPS, {
						currency(101, {	-- Emblem of Heroism
							["timeline"] = { ADDED_3_0_2, REMOVED_4_0_1 },
						}),
					}),
					-- #endif
					e(592, {	-- Slad'ran
						["creatureID"] = 29304,	-- Slad'ran
						["groups"] = {
							ach(2058),	-- Snakes. Why'd It Have To Be Snakes?
							-- #if AFTER 7.3.5
							i(35583),	-- Witch Doctor's Wildstaff (7.3.5 - Used to be only Normal Mode)
							-- #endif
							i(37626),	-- Wand of Sseratus
							i(37627),	-- Snake Den Spaulders
							-- #if AFTER 7.3.5
							i(35584),	-- Embroidered Gown of Zul'drak (7.3.5 - Used to be only Normal Mode)
							i(157578, {	-- Belt of Vile Concoctions
								["timeline"] = { ADDED_7_3_5 },
							}),
							-- #endif
							i(37628),	-- Slad'ran Coiled Cord
							-- #if AFTER 7.3.5
							i(35585),	-- Cannibal's Legguards (7.3.5 - Used to be only Normal Mode)
							-- #endif
							i(37629),	-- Slithering Slippers
						},
					}),
					e(593, {	-- Drakkari Colossus
						["creatureID"] = 29307,	-- Drakkari Colossus
						["groups"] = {
							-- #if AFTER 7.3.5
							i(35590),	-- Drakkari Hunting Bow (7.3.5 - Used to be only Normal Mode)
							-- #endif
							i(37636),	-- Helm of Cheated Fate
							i(37635),	-- Pauldrons of the Colossus
							-- #if AFTER 7.3.5
							i(35591),	-- Shoulderguards of the Ice Troll (7.3.5 - Used to be only Normal Mode)
							i(35592),	-- Hauberk of Totemic Mastery (7.3.5 - Used to be only Normal Mode)
							-- #endif
							i(37634),	-- Bracers of the Divine Elemental
							i(37637),	-- Living Mojo Belt
						},
					}),
					e(594, {	-- Moorabi
						["creatureID"] = 29305,	-- Moorabi
						["groups"] = {
							ach(2040),	-- Less-rabi
							i(37631),	-- Fist of the Deity
							-- #if AFTER 7.3.5
							i(35587),	-- Frozen Scepter of Necromancy (7.3.5 - Used to be only Normal Mode)
							-- #endif
							i(37633),	-- Ground Tremor Helm
							i(157584, {	-- Drape of Moorabi
								["timeline"] = { ADDED_7_3_5 },
							}),
							i(37630),	-- Shroud of Moorabi
							-- #if AFTER 7.3.5
							i(35588),	-- Forlorn Breastplate of War (7.3.5 - Used to be only Normal Mode)
							-- #endif
							i(37632),	-- Mojo Frenzy Greaves
							-- #if AFTER 7.3.5
							i(35589),	-- Arcane Focal Signet (7.3.5 - Used to be only Normal Mode)
							-- #endif
						},
					}),
					e(595, {	-- Eck the Ferocious
						["creatureID"] = 29932,	-- Eck the Ferocious
						["groups"] = {
							i(43311),	-- Helmet of the Shrine
							i(43310),	-- Engraved Chestplate of Eck
							i(43313),	-- Leggings of the Ruins Dweller
							i(43312),	-- Gorloc Muddy Footwraps
						},
					}),
					e(596, {	-- Gal'darah
						["creatureID"] = 29306,	-- Gal'darah
						["groups"] = {
							ach(5101, {	-- Heroic: Gundrak Guild Run
								["timeline"] = { ADDED_4_0_3 },
							}),
							ach(2152),	-- Share The Love
							ach(1864),	-- What the Eck?
							-- #if AFTER 7.3.5
							i(43309),	-- Amulet of the Stampede (7.3.5 - Used to be only Normal Mode)
							i(43305),	-- Shroud of Akali (7.3.5 - Used to be only Normal Mode)
							-- #endif
							i(37641),	-- Arcane Flame Altar-Garb
							i(37639),	-- Grips of the Beast God
							i(37645),	-- Horn-Tipped Gauntlets
							i(37643),	-- Sash of Blood Removal
							i(37644),	-- Gored Hide Legguards
							i(37640),	-- Boots of Transformation
							-- #if AFTER 7.3.5
							i(43306),	-- Gal'darah's Signet (7.3.5 - Used to be only Normal Mode)
							-- #endif
							i(37642),	-- Hemorrhaging Circle
							i(37638),	-- Offering of Sacrifice
							-- #if BEFORE 4.0.1
							i(43693),	-- Mojo Remnant of Akali
							-- #endif
						},
					}),
				},
			}),
			-- #if ANYCLASSIC
			applyclassicphase(WRATH_PHASE_TWO, n(DEFENSE_PROTOCOL_ALPHA, {
				["OnInit"] = FUNCTION_TEMPLATES.OnInit.GenerateShouldExcludeFromTooltipForBuffs(394438, 413169, 424203),
				["lvl"] = lvlsquish(80, 80, 30),
				["groups"] = {
					e(592, {	-- Slad'ran
						["creatureID"] = 29304,	-- Slad'ran
						["groups"] = {
							i(39229),	-- Embrace of the Spider
							i(39234),	-- Plague-Impervious Boots
							i(39230),	-- Spaulders of the Monstrosity
						},
					}),
					e(593, {	-- Drakkari Colossus
						["creatureID"] = 29307,	-- Drakkari Colossus
						["groups"] = {
							i(39233),	-- Aegis of Damnation
							i(39225),	-- Cloak of Armed Strife
							i(39224),	-- Leggings of Discord
						},
					}),
					e(594, {	-- Moorabi
						["creatureID"] = 29305,	-- Moorabi
						["groups"] = {
							i(39232),	-- Pendant of Lost Vocations
							i(39228),	-- Web Cocoon Grips
							i(39221),	-- Wraith Spear
						},
					}),
					e(595, {	-- Eck the Ferocious
						["creatureID"] = 29932,	-- Eck the Ferocious
						["groups"] = {
							i(39217),	-- Avenging Combat Leggings
							i(39231),	-- Timeworn Silken Band
							i(39226),	-- Maexxna's Femur
						},
					}),
					e(596, {	-- Gal'darah
						["creatureID"] = 29306,	-- Gal'darah
						["groups"] = {
							i(40491),	-- Hailstorm
							i(39283),	-- Putrescent Bands
							i(44660),	-- Drakescale Collar
						},
					}),
				},
			})),
			applyclassicphase(WRATH_PHASE_THREE, n(DEFENSE_PROTOCOL_BETA, {
				["OnInit"] = FUNCTION_TEMPLATES.OnInit.GenerateShouldExcludeFromTooltipForBuffs(413169, 424203),
				["lvl"] = lvlsquish(80, 80, 30),
				["groups"] = {
					e(592, {	-- Slad'ran
						["creatureID"] = 29304,	-- Slad'ran
						["groups"] = {
							i(45973),	-- Stylish Power Cape
							i(45976),	-- Static Charge Handwraps
						},
					}),
					e(593, {	-- Drakkari Colossus
						["creatureID"] = 29307,	-- Drakkari Colossus
						["groups"] = {
							i(45306),	-- Binding of the Dragon Matriarch
							i(45301),	-- Bracers of the Smothering Inferno
						},
					}),
					e(594, {	-- Moorabi
						["creatureID"] = 29305,	-- Moorabi
						["groups"] = {
							i(45305),	-- Breastplate of the Afterlife
							i(45299),	-- Dragonsteel Faceplate
						},
					}),
					e(595, {	-- Eck the Ferocious
						["creatureID"] = 29932,	-- Eck the Ferocious
						["groups"] = {
							i(45308),	-- Eye of the Broodmother
							i(45307),	-- Ironscale Leggings
						},
					}),
					e(596, {	-- Gal'darah
						["creatureID"] = 29306,	-- Gal'darah
						["groups"] = {
							i(45298),	-- Razorscale Talon
							i(45893),	-- Guise of the Midgard Serpent
							i(45973),	-- Stylish Power Cape
							i(45304),	-- Stormtempered Girdle
						},
					}),
				},
			})),
			applyclassicphase(WRATH_PHASE_FOUR, n(DEFENSE_PROTOCOL_GAMMA, {
				["OnInit"] = FUNCTION_TEMPLATES.OnInit.GenerateShouldExcludeFromTooltipForBuffs(424203),
				["lvl"] = lvlsquish(80, 80, 30),
				["groups"] = {
					e(592, {	-- Slad'ran
						["creatureID"] = 29304,	-- Slad'ran
						["groups"] = {

						},
					}),
					e(593, {	-- Drakkari Colossus
						["creatureID"] = 29307,	-- Drakkari Colossus
						["groups"] = {

						},
					}),
					e(594, {	-- Moorabi
						["creatureID"] = 29305,	-- Moorabi
						["groups"] = {

						},
					}),
					e(595, {	-- Eck the Ferocious
						["creatureID"] = 29932,	-- Eck the Ferocious
						["groups"] = {

						},
					}),
					e(596, {	-- Gal'darah
						["creatureID"] = 29306,	-- Gal'darah
						["groups"] = {

						},
					}),
				},
			})),
			-- #endif
		},
	}),
}))));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.WOD, bubbleDownSelf({ ["timeline"] = { ADDED_6_0_2 } }, {
	inst(284, {
		q(35475),	-- Gundrak Reward Quest - Normal completion
		q(35476),	-- Gundrak Reward Quest - Heroic completion
		q(35477),	-- Gundrak Bonus Objective - kill Eck the Ferocious (Heroic only)
	}),
})));
