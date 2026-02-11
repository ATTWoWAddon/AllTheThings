-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

root(ROOTS.Instances, expansion(EXPANSION.WRATH, applyclassicphase(WRATH_PHASE_ONE, bubbleDownSelf({ ["timeline"] = { ADDED_3_0_2 } }, {
	inst(283, {	-- The Violet Hold (Wrath)
		["mapID"] = THE_VIOLET_HOLD_WRATH,
		["coord"] = { 66.6, 67.9, NORTHREND_DALARAN },
		["lvl"] = lvlsquish(75, 75, 15),
		["groups"] = {
			n(ACHIEVEMENTS, {
				ach(1865, {	-- Lockdown!
					crit(7137, {	-- Xevozz
						["_encounter"] = { 629, DIFFICULTY.DUNGEON.HEROIC },
					}),
					crit(7138, {	-- Levanthor
						["_encounter"] = { 630, DIFFICULTY.DUNGEON.HEROIC },
					}),
					crit(7139, {	-- Ichoron
						["_encounter"] = { 628, DIFFICULTY.DUNGEON.HEROIC },
					}),
					crit(7140, {	-- Zuramat the Obliterator
						["_encounter"] = { 631, DIFFICULTY.DUNGEON.HEROIC },
					}),
					crit(7141, {	-- Erekem
						["_encounter"] = { 626, DIFFICULTY.DUNGEON.HEROIC },
					}),
					crit(7142, {	-- Moragg
						["_encounter"] = { 627, DIFFICULTY.DUNGEON.HEROIC },
					}),
				}),
			}),
			n(QUESTS, {
				q(13159, {	-- Containment
					["sourceQuest"] = 13158,	-- Discretion is Key
					["qg"] = 31080,	-- Warden Alturas
					["coord"] = { 61.2, 63.2, NORTHREND_DALARAN },
					["timeline"] = { REMOVED_4_3_0 },
					["lvl"] = lvlsquish(75, 75, 15),
					["groups"] = {
						objective(1, {	-- 0/1 Cyanigosa slain
							["provider"] = { "n", 31134 },	-- Cyanigosa
						}),
						-- #if BEFORE 4.0.3
						i(42482, {	-- The Violet Hold Key
							["timeline"] = { REMOVED_4_0_3 },
						}),
						-- #endif
						i(44343),	-- Conferred Pantaloons
						i(44345),	-- Dalaran Warden's Legplates
						i(44344),	-- Labyrinthine Legguards
						i(44342),	-- Tattooed Deerskin Leggings
					},
				}),
				q(29830, {	-- Containment
					["sourceQuest"] = 29829,	-- Discretion is Key
					["qg"] = 30658,	-- Lieutenant Sinclari
					["timeline"] = { ADDED_4_3_0 },
					["lvl"] = lvlsquish(75, 75, 15),
					["groups"] = {
						i(44343),	-- Conferred Pantaloons
						i(44345),	-- Dalaran Warden's Legplates
						i(44344),	-- Labyrinthine Legguards
						i(44342),	-- Tattooed Deerskin Leggings
					},
				}),
				q(13158, {	-- Discretion is Key
					["qg"] = 16128,	-- Rhonin
					["coord"] = { 30.6, 48.6, NORTHREND_DALARAN },
					["timeline"] = { REMOVED_4_3_0 },
					["isBreadcrumb"] = true,
					["lvl"] = lvlsquish(75, 75, 15),
				}),
				q(29829, {	-- Discretion is Key
					["qg"] = 16128,	-- Rhonin
					["coord"] = { 30.6, 48.6, NORTHREND_DALARAN },
					["timeline"] = { ADDED_4_3_0 },
					["isBreadcrumb"] = true,
					["lvl"] = lvlsquish(75, 75, 15),
				}),
			}),
			d(DIFFICULTY.DUNGEON.NORMAL, {
				n(ZONE_DROPS, {
					i(35654),	-- Bindings of the Bastille
					i(35653),	-- Girdle of the Mystical Prison
					i(35652),	-- Incessant Torch
				}),
				e(626, {	-- Erekem
					["creatureID"] = 29315,	-- Erekem
					["groups"] = {
						-- #if AFTER 7.3.5
						i(43407),	-- Stormstrike Mace (7.3.5 - Used to be only Heroic Mode)
						i(157583, {	-- Protector's Buckler
							["timeline"] = { ADDED_7_3_5 },
						}),
						i(43406),	-- Cloak of the Gushing Wound (7.3.5 - Used to be only Heroic Mode)
						-- #endif
						i(43363),	-- Screeching Cape
						i(43375),	-- Trousers of the Arrakoa
						-- #if AFTER 7.3.5
						i(157567, {	-- Bodyguard's Treads
							["timeline"] = { ADDED_7_3_5 },
						}),
						i(43405),	-- Sabatons of Erekem (7.3.5 - Used to be only Heroic Mode)
						-- #endif
					},
				}),
				e(627, {	-- Moragg
					["creatureID"] = 29316,	-- Moragg
					["groups"] = {
						-- #if AFTER 7.3.5
						i(43409),	-- Saliva Corroded Pike (7.3.5 - Used to be only Heroic Mode)
						-- #endif
						i(43387),	-- Shoulderplates of the Beholder
						-- #if AFTER 7.3.5
						i(43410),	-- Moragg's Chestguard (7.3.5 - Used to be only Heroic Mode)
						i(157566, {	-- Vest of the Observant
							["timeline"] = { ADDED_7_3_5 },
						}),
						-- #endif
						i(43382),	-- Band of Eyes
						-- #if AFTER 7.3.5
						i(43408),	-- Solitaire of Reflecting Doom (7.3.5 - Used to be only Heroic Mode)
						-- #endif
					},
				}),
				e(628, {	-- Ichoron
					["creatureID"] = 29313,	-- Ichoron
					["groups"] = {
						i(35643),	-- Spaulders of Ichoron
						-- #if AFTER 7.3.5
						i(43401),	-- Water-Drenched Robe (7.3.5 - Used to be only Heroic Mode)
						i(37862),	-- Gauntlets of the Water Revenant (7.3.5 - Used to be only Heroic Mode)
						-- #endif
						i(35647),	-- Handguards of Rapid Pursuit
						-- #if AFTER 7.3.5
						i(157569, {	-- Chain Leggings of the Tide
							["timeline"] = { ADDED_7_3_5 },
						}),
						i(37869),	-- Globule Signet (7.3.5 - Used to be only Heroic Mode)
						-- #endif
					},
				}),
				e(629, {	-- Xevozz
					["creatureID"] = 29266,	-- Xevozz
					["groups"] = {
						i(35642),	-- Riot Shield
						-- #if AFTER 7.3.5
						i(157575, {	-- Crystal of Ensnared Power
							["timeline"] = { ADDED_7_3_5 },
						}),
						i(37861),	-- Necklace of Arcane Spheres (7.3.5 - Used to be only Heroic Mode)
						i(157571, {	-- Gauntlets of Stuttering Reality
							["timeline"] = { ADDED_7_3_5 },
						}),
						i(37868),	-- Girdle of the Ethereal (7.3.5 - Used to be only Heroic Mode)
						-- #endif
						i(35644),	-- Xevozz's Belt
						-- #if AFTER 7.3.5
						i(37867),	-- Footwraps of Teleportation (7.3.5 - Used to be only Heroic Mode)
						-- #endif
					},
				}),
				e(630, {	-- Levanthor
					["creatureID"] = 29312,	-- Levanthor
					["groups"] = {
						-- #if AFTER 7.3.5
						i(37871),	-- The Key (7.3.5 - Used to be only Heroic Mode)
						-- #endif
						i(35645),	-- Poison Warden's Shotgun
						i(157570, {	-- Helm of Cauterization
							["timeline"] = { ADDED_7_3_5 },
						}),
						i(157572, {	-- Pauldrons of the Great Tide
							["timeline"] = { ADDED_7_3_5 },
						}),
						i(35646),	-- Lava Burn Gloves
						-- #if AFTER 7.3.5
						i(37870),	-- Twin-Headed Boots (7.3.5 - Used to be only Heroic Mode)
						i(37872),	-- Levanthor's Talisman (7.3.5 - Used to be only Heroic Mode)
						-- #endif
					},
				}),
				e(631, {	-- Zuramat the Obliterator
					["creatureID"] = 29314,	-- Zuramat the Obliterator
					["groups"] = {
						-- #if AFTER 7.3.5
						i(157568, {	-- Helm of Dire Vision
							["timeline"] = { ADDED_7_3_5 },
						}),
						i(43403),	-- Shroud of Darkness (7.3.5 - Used to be only Heroic Mode)
						-- #endif
						i(43358),	-- Pendant of Shadow Beams
						-- #if AFTER 7.3.5
						i(43404),	-- Zuramat's Necklace (7.3.5 - Used to be only Heroic Mode)
						-- #endif
						i(43353),	-- Void Sentry Legplates
						-- #if AFTER 7.3.5
						i(43402),	-- The Obliterator Greaves (7.3.5 - Used to be only Heroic Mode)
						-- #endif
					},
				}),
				e(632, {	-- Cyanigosa
					["creatureID"] = 31134,	-- Cyanigosa
					["groups"] = {
						ach(483),	-- The Violet Hold
						i(35649),	-- Jailer's Baton
						-- #if AFTER 7.3.5
						i(37883),	-- Staff of Trickery (7.3.5 - Used to be only Heroic Mode)
						i(37875),	-- Spaulders of the Violet Hold (7.3.5 - Used to be only Heroic Mode)
						i(37884),	-- Azure Cloth Bindings (7.3.5 - Used to be only Heroic Mode)
						i(150845, {	-- Bracers of Ley-Line Eradication
							["timeline"] = { ADDED_7_3_5 },
						}),
						i(37874),	-- Gauntlets of Capture (7.3.5 - Used to be only Heroic Mode)
						i(37886),	-- Handgrips of the Savage Emmisary (7.3.5 - Used to be only Heroic Mode)
						-- #endif
						i(35651),	-- Plate Claws of the Dragon
						-- #if AFTER 7.3.5
						i(43500),	-- Bolstered Legplates (7.3.5 - Used to be only Heroic Mode)
						i(37876),	-- Cyanigosa's Leggings (7.3.5 - Used to be only Heroic Mode)
						-- #endif
						i(35650),	-- Boots of the Portal Guardian
						-- #if AFTER 7.3.5
						i(37873),	-- Mark of the War Prisoner (7.3.5 - Used to be only Heroic Mode)
						-- #endif
					},
				}),
			}),
			d(DIFFICULTY.DUNGEON.HEROIC, {
				["lvl"] = lvlsquish(80, 80, 30),
				["groups"] = {
					n(ZONE_DROPS, {
						-- #if AFTER 7.3.5
						i(35654),	-- Bindings of the Bastille (7.3.5 - Used to be only Normal Mode)
						-- #endif
						i(37891),	-- Cast Iron Shackles
						i(37890),	-- Chain Gang Legguards
						-- #if AFTER 7.3.5
						i(35653),	-- Girdle of the Mystical Prison (7.3.5 - Used to be only Heroic Mode)
						i(35652),	-- Incessant Torch (7.3.5 - Used to be only Heroic Mode)
						-- #endif
						i(37889),	-- Prison Manifest
					}),
					e(626, {	-- Erekem
						["creatureID"] = 29315,	-- Erekem
						["groups"] = {
							i(43407),	-- Stormstrike Mace
							i(157583, {	-- Protector's Buckler
								["timeline"] = { ADDED_7_3_5 },
							}),
							i(43406),	-- Cloak of the Gushing Wound
							-- #if AFTER 7.3.5
							i(43363),	-- Screeching Cape (7.3.5 - Used to be only Normal Mode)
							i(43375),	-- Trousers of the Arrakoa (7.3.5 - Used to be only Normal Mode)
							-- #endif
							i(157567, {	-- Bodyguard's Treads
								["timeline"] = { ADDED_7_3_5 },
							}),
							i(43405),	-- Sabatons of Erekem
						},
					}),
					e(627, {	-- Moragg
						["creatureID"] = 29316,	-- Moragg
						["groups"] = {
							i(43409),	-- Saliva Corroded Pike
							-- #if AFTER 7.3.5
							i(43387),	-- Shoulderplates of the Beholder (7.3.5 - Used to be only Normal Mode)
							-- #endif
							i(43410),	-- Moragg's Chestguard
							i(157566, {	-- Vest of the Observant
								["timeline"] = { ADDED_7_3_5 },
							}),
							-- #if AFTER 7.3.5
							i(43382),	-- Band of Eyes (7.3.5 - Used to be only Normal Mode)
							-- #endif
							i(43408),	-- Solitaire of Reflecting Doom
						},
					}),
					e(628, {	-- Ichoron
						["creatureID"] = 29313,	-- Ichoron
						["groups"] = {
							ach(2041),	-- Dehydration
							-- #if AFTER 7.3.5
							i(35643),	-- Spaulders of Ichoron (7.3.5 - Used to be only Normal Mode)
							-- #endif
							i(43401),	-- Water-Drenched Robe
							i(37862),	-- Gauntlets of the Water Revenant
							-- #if AFTER 7.3.5
							i(35647),	-- Handguards of Rapid Pursuit (7.3.5 - Used to be only Normal Mode)
							-- #endif
							i(157569, {	-- Chain Leggings of the Tide
								["timeline"] = { ADDED_7_3_5 },
							}),
							i(37869),	-- Globule Signet
						},
					}),
					e(629, {	-- Xevozz
						["creatureID"] = 29266,	-- Xevozz
						["groups"] = {
							-- #if AFTER 7.3.5
							i(35642),	-- Riot Shield (7.3.5 - Used to be only Normal Mode)
							-- #endif
							i(157575, {	-- Crystal of Ensnared Power
								["timeline"] = { ADDED_7_3_5 },
							}),
							i(37861),	-- Necklace of Arcane Spheres
							i(157571, {	-- Gauntlets of Stuttering Reality
								["timeline"] = { ADDED_7_3_5 },
							}),
							i(37868),	-- Girdle of the Ethereal
							-- #if AFTER 7.3.5
							i(35644),	-- Xevozz's Belt (7.3.5 - Used to be only Normal Mode)
							-- #endif
							i(37867),	-- Footwraps of Teleportation
						},
					}),
					e(630, {	-- Levanthor
						["creatureID"] = 29312,	-- Levanthor
						["groups"] = {
							i(37871),	-- The Key
							-- #if AFTER 7.3.5
							i(35645),	-- Poison Warden's Shotgun (7.3.5 - Used to be only Normal Mode)
							-- #endif
							i(157570, {	-- Helm of Cauterization
								["timeline"] = { ADDED_7_3_5 },
							}),
							i(157572, {	-- Pauldrons of the Great Tide
								["timeline"] = { ADDED_7_3_5 },
							}),
							-- #if AFTER 7.3.5
							i(35646),	-- Lava Burn Gloves (7.3.5 - Used to be only Normal Mode)
							-- #endif
							i(37870),	-- Twin-Headed Boots
							i(37872),	-- Levanthor's Talisman
						},
					}),
					e(631, {	-- Zuramat the Obliterator
						["creatureID"] = 29314,	-- Zuramat the Obliterator
						["groups"] = {
							ach(2153),	-- A Void Dance
							i(157568, {	-- Helm of Dire Vision
								["timeline"] = { ADDED_7_3_5 },
							}),
							i(43403),	-- Shroud of Darkness
							-- #if AFTER 7.3.5
							i(43358),	-- Pendant of Shadow Beams (7.3.5 - Used to be only Normal Mode)
							-- #endif
							i(43404),	-- Zuramat's Necklace
							-- #if AFTER 7.3.5
							i(43353),	-- Void Sentry Legplates (7.3.5 - Used to be only Normal Mode)
							-- #endif
							i(43402),	-- The Obliterator Greaves
						},
					}),
					e(632, {	-- Cyanigosa
						["creatureID"] = 31134,	-- Cyanigosa
						["groups"] = {
							ach(494),	-- Heroic: The Violet Hold
							ach(5100, {	-- Heroic: The Violet Hold Guild Run
								["timeline"] = { ADDED_4_0_3 },
							}),
							ach(1816),	-- Defenseless
							i(41791, {	-- Design: Subtle Autumn's Glow [CATA+] / Design: Thick Autumn's Glow [WRATH]
								["timeline"] = { ADDED_3_0_3, REMOVED_4_0_3 },
							}),
							-- #if AFTER 7.3.5
							i(35649),	-- Jailer's Baton (7.3.5 - Used to be only Normal Mode)
							-- #endif
							i(37883),	-- Staff of Trickery
							i(37875),	-- Spaulders of the Violet Hold
							i(37884),	-- Azure Cloth Bindings
							i(150845, {	-- Bracers of Ley-Line Eradication
								["timeline"] = { ADDED_7_3_5 },
							}),
							i(37874),	-- Gauntlets of Capture
							i(37886),	-- Handgrips of the Savage Emmisary
							-- #if AFTER 7.3.5
							i(35651),	-- Plate Claws of the Dragon (7.3.5 - Used to be only Normal Mode)
							-- #endif
							i(43500),	-- Bolstered Legplates
							i(37876),	-- Cyanigosa's Leggings
							-- #if AFTER 7.3.5
							i(35650),	-- Boots of the Portal Guardian (7.3.5 - Used to be only Normal Mode)
							-- #endif
							i(37873),	-- Mark of the War Prisoner
							-- #if BEFORE 4.0.1
							i(43823),	-- Head of Cyanigosa
							-- #endif
						},
					}),
				},
			}),
			-- #if ANYCLASSIC
			applyclassicphase(WRATH_PHASE_TWO, n(DEFENSE_PROTOCOL_ALPHA, {
				["OnInit"] = FUNCTION_TEMPLATES.OnInit.GenerateShouldExcludeFromTooltipForBuffs(394435, 412991, 424196),
				["lvl"] = lvlsquish(80, 80, 30),
				["groups"] = {
					e(626, {	-- Erekem
						["creatureID"] = 29315,	-- Erekem
						["groups"] = {
							i(39275),	-- Contagion Gloves
							i(39293),	-- Blackened Legplates of Feugen
							i(39281),	-- Infection Repulser
						},
					}),
					e(627, {	-- Moragg
						["creatureID"] = 29316,	-- Moragg
						["groups"] = {
							i(39292),	-- Repelling Charge
							i(39280),	-- Leggings of Innumerable Barbs
							i(39274),	-- Retcher's Shoulderpads
						},
					}),
					e(628, {	-- Ichoron
						["creatureID"] = 29313,	-- Ichoron
						["groups"] = {
							i(39273),	-- Sullen Cloth Boots
							i(39279),	-- Blistered Belt of Decay
							i(39291),	-- Torment of the Banished
						},
					}),
					e(629, {	-- Xevozz
						["creatureID"] = 29266,	-- Xevozz
						["groups"] = {
							i(39278),	-- Bands of Anxiety
							i(39285),	-- Handgrips of Turmoil
							i(39272),	-- Drape of Surgery
						},
					}),
					e(630, {	-- Levanthor
						["creatureID"] = 29312,	-- Levanthor
						["groups"] = {
							i(39277),	-- Sealing Ring of Grobbulus
							i(39271),	-- Blade of Dormant Memories
							i(39307),	-- Iron Rings of Endurance
						},
					}),
					e(631, {	-- Zuramat the Obliterator
						["creatureID"] = 29314,	-- Zuramat the Obliterator
						["groups"] = {
							i(39270),	-- Hatestrike
							i(39276),	-- The Skull of Ruin
							i(39282),	-- Bone-Linked Amulet
						},
					}),
					e(632, {	-- Cyanigosa
						["creatureID"] = 31134,	-- Cyanigosa
						["groups"] = {
							ach(17293),	-- Defense Protocol Alpha: The Violet Hold
							i(39420),	-- Anarchy
							i(40511),	-- Focusing Energy Epaulets
							i(39426),	-- Wand of the Archlich
						},
					}),
				},
			})),
			applyclassicphase(WRATH_PHASE_THREE, n(DEFENSE_PROTOCOL_BETA, {
				["OnInit"] = FUNCTION_TEMPLATES.OnInit.GenerateShouldExcludeFromTooltipForBuffs(412991, 424196),
				["lvl"] = lvlsquish(80, 80, 30),
				["groups"] = {
					n(COMMON_BOSS_DROPS, {
						["crs"] = {
							29315,	-- Erekem
							29316,	-- Moragg
							29313,	-- Ichoron
							29266,	-- Xevozz
							29312,	-- Levanthor
							29314,	-- Zuramat the Obliterator
						},
						["groups"] = {
							i(45284),	-- Kinetic Ripper
							i(45934),	-- Unraveling Reach
							i(45935),	-- Ironbark Faceguard
							i(45289),	-- Lifespark Visage
							i(45941),	-- Chestguard of the Lasher
							i(45285),	-- Might of the Leviathan
							i(45940),	-- Tunic of the Limber Stalker
							i(45936),	-- Legplates of Fluorishing Resolve
						},
					}),
					e(626, {	-- Erekem
						["creatureID"] = 29315,	-- Erekem
						["groups"] = {

						},
					}),
					e(627, {	-- Moragg
						["creatureID"] = 29316,	-- Moragg
						["groups"] = {

						},
					}),
					e(628, {	-- Ichoron
						["creatureID"] = 29313,	-- Ichoron
						["groups"] = {

						},
					}),
					e(629, {	-- Xevozz
						["creatureID"] = 29266,	-- Xevozz
						["groups"] = {

						},
					}),
					e(630, {	-- Levanthor
						["creatureID"] = 29312,	-- Levanthor
						["groups"] = {

						},
					}),
					e(631, {	-- Zuramat the Obliterator
						["creatureID"] = 29314,	-- Zuramat the Obliterator
						["groups"] = {

						},
					}),
					e(632, {	-- Cyanigosa
						["creatureID"] = 31134,	-- Cyanigosa
						["groups"] = {
							ach(18595),	-- Defense Protocol Beta: The Violet Hold
							i(46009),	-- Bindings of the Depths
							i(46008),	-- Choker of the Abyss
							i(46010),	-- Darkstone Ring
						},
					}),
				},
			})),
			applyclassicphase(WRATH_PHASE_FOUR, n(DEFENSE_PROTOCOL_GAMMA, {
				["OnInit"] = FUNCTION_TEMPLATES.OnInit.GenerateShouldExcludeFromTooltipForBuffs(424196),
				["lvl"] = lvlsquish(80, 80, 30),
				["groups"] = {
					e(632, {	-- Cyanigosa
						["creatureID"] = 31134,	-- Cyanigosa
						["groups"] = {
							ach(19432),	-- Defense Protocol Gamma: The Violet Hold
						},
					}),
				},
			})),
			-- #endif
		},
	}),
}))));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.WOD, bubbleDownSelf({ ["timeline"] = { ADDED_6_0_2 } }, {
	inst(283, {
		q(35478),	-- The Violet Hold Reward Quest - Normal completion
		q(35480),	-- The Violet Hold Reward Quest - Heroic completion
	}),
})));
