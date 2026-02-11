-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

root(ROOTS.Instances, expansion(EXPANSION.TBC, applyclassicphase(TBC_PHASE_ONE, {
	inst(256, bubbleDownSelf({ ["timeline"] = { ADDED_2_0_1 } }, {	-- The Blood Furnace
		["lore"] = "The Blood Furnace is the second wing of the Hellfire Citadel. The instance takes place above Hellfire Ramparts, inside of the tower that overlooks the ramparts itself. The pit lord Magtheridon is entrapped by the fel orcs' sorcery at the base of the tower and they're using his blood to manufacture a new Fel Horde, infused with his demonic energy.",
		-- #if BEFORE MOP
		["zone-text-areaID"] = 3713,	-- The Blood Furnace
		-- #endif
		["mapID"] = HELLFIRE_CITADEL_BLOOD_FURNACE,
		["coord"] = { 46.06, 51.74, HELLFIRE_PENINSULA },	-- The Blood Furnace, Hellfire Peninsula
		["lvl"] = lvlsquish(58, 58, 10),
		["groups"] = {
			n(QUESTS, {
				q(9607, {	-- Heart of Rage [Alliance]
					["qg"] = 17479,	-- Gunny
					["coord"] = { 56.4, 66.7, HELLFIRE_PENINSULA },
					["timeline"] = { REMOVED_4_3_0 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(59, 59, 10),
					-- #if BEFORE 4.3.0.14732
					["groups"] = {
						i(25714),	-- Crimson Pendant of Clarity
						i(25713),	-- Holy Healing Band
						i(25712),	-- Perfectly Balanced Cape
					},
					-- #endif
				}),
				q(9608, {	-- Heart of Rage [Horde]
					["qg"] = 17558,	-- Caza'rez
					["coord"] = { 54.9, 36.0, HELLFIRE_PENINSULA },
					["timeline"] = { REMOVED_4_3_0 },
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(59, 59, 10),
					-- #if BEFORE 4.3.0.14732
					["groups"] = {
						i(25714),	-- Crimson Pendant of Clarity
						i(25713),	-- Holy Healing Band
						i(25712),	-- Perfectly Balanced Cape
					},
					-- #endif
				}),
				q(29539, {	-- Heart of Rage [Alliance]
					["qg"] = 54629,	-- Gunny
					["timeline"] = { ADDED_4_3_0 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(59, 59, 10),
					["groups"] = {
						i(25714),	-- Crimson Pendant of Clarity
						i(25713),	-- Holy Healing Band
						i(25712),	-- Perfectly Balanced Cape
					},
				}),
				q(29536, {	-- Heart of Rage [Horde]
					["qg"] = 54636,	-- Caza'rez
					["timeline"] = { ADDED_4_3_0 },
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(59, 59, 10),
					["groups"] = {
						i(25714),	-- Crimson Pendant of Clarity
						i(25713),	-- Holy Healing Band
						i(25712),	-- Perfectly Balanced Cape
					},
				}),
				q(29538, {	-- Make Them Bleed [Alliance]
					["qg"] = 54629,	-- Gunny
					["timeline"] = { ADDED_4_3_0 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(59, 59, 10),
					["groups"] = {
						objective(1, {	-- 0/10 Fel Orc Blood Vial
							["provider"] = { "i", 23894 },	-- Fel Orc Blood Vial
						}),
						objective(2, {	-- 0/1 Fel Infusion Rod
							["provider"] = { "i", 73200 },	-- Fel Infusion Rod
						}),
					},
				}),
				q(29535, {	-- Make Them Bleed [Horde]
					["qg"] = 54636,	-- Caza'rez
					["timeline"] = { ADDED_4_3_0 },
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(59, 59, 10),
					["groups"] = {
						objective(1, {	-- 0/10 Fel Orc Blood Vial
							["provider"] = { "i", 23894 },	-- Fel Orc Blood Vial
						}),
						objective(2, {	-- 0/1 Fel Infusion Rod
							["provider"] = { "i", 73200 },	-- Fel Infusion Rod
						}),
					},
				}),
				q(29537, {	-- Mind the Gap
					["qg"] = 54636,	-- Caza'rez
					["timeline"] = { ADDED_4_3_0 },
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(59, 59, 10),
					["groups"] = {
						objective(1, {	-- Keli'dan the Breaker slain
							["provider"] = { "n", 17377 },	-- Keli'dan the Breaker
						}),
						i(25701),	-- Breastplate of Retribution
						i(25711),	-- Deadly Borer Leggings
						i(25710),	-- Moonkin Headdress
						i(25702),	-- Scaled Legs of Ruination
					},
				}),
				q(9589, {	-- The Blood is Life [Alliance]
					["sourceQuest"] = 9587,	-- Dark Tidings [Alliance]
					["qg"] = 17479,	-- Gunny
					["coord"] = { 56.4, 66.7, HELLFIRE_PENINSULA },
					["timeline"] = { REMOVED_4_3_0 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(59, 59, 10),
					["groups"] = {
						objective(1, {	-- 0/10 Fel Orc Blood Vial
							["provider"] = { "i", 23894 },	-- Fel Orc Blood Vial
						}),
						-- #if BEFORE 4.3.0.14732
						i(25701),	-- Breastplate of Retribution
						i(25711),	-- Deadly Borer Leggings
						i(25710),	-- Moonkin Headdress
						i(25702),	-- Scaled Legs of Ruination
						-- #endif
					},
				}),
				q(9590, {	-- The Blood is Life [Horde]
					["sourceQuest"] = 9588,	-- Dark Tidings [Horde]
					["qg"] = 17558,	-- Caza'rez
					["coord"] = { 54.9, 36.0, HELLFIRE_PENINSULA },
					["timeline"] = { REMOVED_4_3_0 },
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(59, 59, 10),
					["groups"] = {
						objective(1, {	-- 0/10 Fel Orc Blood Vial
							["provider"] = { "i", 23894 },	-- Fel Orc Blood Vial
						}),
						-- #if BEFORE 4.3.0.14732
						i(25701),	-- Breastplate of Retribution
						i(25711),	-- Deadly Borer Leggings
						i(25710),	-- Moonkin Headdress
						i(25702),	-- Scaled Legs of Ruination
						-- #endif
					},
				}),
				q(29540, {	-- The Breaker
					["qg"] = 54629,	-- Gunny
					["timeline"] = { ADDED_4_3_0 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(59, 59, 10),
					["groups"] = {
						objective(1, {	-- Keli'dan the Breaker slain
							["provider"] = { "n", 17377 },	-- Keli'dan the Breaker
						}),
						i(25701),	-- Breastplate of Retribution
						i(25711),	-- Deadly Borer Leggings
						i(25710),	-- Moonkin Headdress
						i(25702),	-- Scaled Legs of Ruination
					},
				}),
			}),
			n(ZONE_DROPS, {
				i(23894),	-- Fel Orc Blood Vial
			}),
			d(DIFFICULTY.DUNGEON.NORMAL, {
				e(555, {	-- The Maker
					["creatureID"] = 17381,
					["groups"] = {
						i(24384),	-- Diamond-Core Sledgemace
						-- #if AFTER 7.3.5
						i(27488),	-- Mage-Collar of the Firestorm
						-- #endif
						i(24385),	-- Pendant of Battle-Lust
						-- #if AFTER 7.3.5
						i(27485),	-- Embroidered Cape of Mysteries
						i(27483),	-- Moon-Touched Bands
						-- #endif
						i(24387),	-- Ironblade Gauntlets
						i(24388),	-- Girdle of the Gale Storm
						-- #if AFTER 7.3.5
						i(27487),	-- Bloodlord Legplates
						-- #endif
						-- #if BEFORE MOP
						i(24386, {	-- Libram of Saints Departed
							["timeline"] = { REMOVED_5_0_4 },
						}),
						-- #endif
						i(73200, {	-- Fel Infusion Rod
							["timeline"] = { ADDED_4_3_0 },
						}),
					},
				}),
				e(556, {	-- Broggok
					["creatureID"] = 17380,
					["groups"] = {
						i(141063,{	-- Technique: Grimoire of the Observer (RECIPE!)
							["timeline"] = { ADDED_7_0_3_LAUNCH, REMOVED_10_1_5 },
						}),
						-- #if AFTER 7.3.5
						i(27490),	-- Firebrand Battleaxe
						-- #endif
						i(24389),	-- Legion Blunderbuss
						i(24392),	-- Arcing Bracers
						-- #if AFTER 7.3.5
						i(27494),	-- Emerald Eye Bracer (7.3.5 - Moved from Keli'dan the Breaker)
						i(27489),	-- Virtue Bearer's Vambraces
						-- #endif
						i(24393),	-- Bloody Surgeon's Mitts
						i(24391),	-- Kilt of the Night Strider
						-- #if AFTER 7.3.5
						i(27492),	-- Moonchild Leggings
						i(27848),	-- Embroidered Spellpyre Boots
						i(27491),	-- Signet of Repose
						-- #endif
						i(24390),	-- Auslese's Light Channeler
					},
				}),
				e(557, {	-- Keli'dan the Breaker
					["creatureID"] = 17377,
					["groups"] = {
						ach(648),	-- The Blood Furnace
						i(24394),	-- Warsong Howling Axe
						-- #if AFTER 7.3.5
						i(27512),	-- The Willbreaker
						i(27507),	-- Adamantine Repeater
						i(27505),	-- Ruby Helm of the Just
						i(27495),	-- Soldier's Dog Tags
						i(29347),	-- Talisman of the Breaker
						i(32080),	-- Mantle of Shadowy Embrace
						-- #endif
						i(24398),	-- Mantle of the Dusk-Dweller
						i(24397),	-- Raiments of Divine Authority
						-- #if AFTER 7.3.5
						i(27506),	-- Robe of Effervescent Light
						-- #endif
						i(24396),	-- Vest of Vengeance
						-- #if AFTER 7.3.5
						i(28264),	-- Wastewalker Tunic
						i(27497),	-- Doomplate Gauntlets
						-- #endif
						i(24395),	-- Mindfire Waistband
						-- #if AFTER 7.3.5
						i(27514),	-- Leggings of the Unrepentant
						i(27788),	-- Bloodsworn Warboots
						i(29239),	-- Eaglecrest Warboots
						i(29245),	-- Wave-Crest Striders
						i(28121),	-- Icon of Unyielding Courage
						-- #endif
					},
				})
			}),
			d(DIFFICULTY.DUNGEON.HEROIC, {
				-- #if BEFORE 4.2.0
				["description"] = "You need to have a key to the instance in order to access this mode.",
				["cost"] = {
					{ "i", 30622, 1 },	-- Flamewrought Key [A]
					{ "i", 30637, 1 },	-- Flamewrought Key [H]
				},
				-- #endif
				["lvl"] = lvlsquish(70, 70, 30),
				["groups"] = {
					n(COMMON_BOSS_DROPS, {
						["crs"] = {
							17381,	-- The Maker
							17380,	-- Broggok
							17377,	-- Keli'dan the Breaker
						},
						["groups"] = {
							-- #if BEFORE CATA
							BADGE_OF_JUSTICE,
							-- #endif
							i(30601),	-- Beaming Fire Opal
							i(30600),	-- Fluorescent Tanzanite
							i(30602),	-- Jagged Chrysoprase
						},
					}),
					e(555, {	-- The Maker
						["creatureID"] = 17381,
						["groups"] = {
							-- #if AFTER 7.3.5
							i(24384),	-- Diamond-Core Sledgemace
							-- #endif
							i(27488),	-- Mage-Collar of the Firestorm
							-- #if AFTER 7.3.5
							i(24385),	-- Pendant of Battle-Lust
							-- #endif
							i(27485),	-- Embroidered Cape of Mysteries
							i(27483),	-- Moon-Touched Bands
							-- #if AFTER 7.3.5
							i(24387),	-- Ironblade Gauntlets
							i(24388),	-- Girdle of the Gale Storm
							-- #endif
							i(27487),	-- Bloodlord Legplates
							-- #if BEFORE MOP
							i(27484, {	-- Libram of Avengement
								["timeline"] = { REMOVED_5_0_4 },
							}),
							-- #endif
							i(73200, {	-- Fel Infusion Rod
								["timeline"] = { ADDED_4_3_0 },
							}),
						},
					}),
					e(556, {	-- Broggok
						["creatureID"] = 17380,
						["groups"] = {
							i(141063,{	-- Technique: Grimoire of the Observer (RECIPE!)
								["timeline"] = { ADDED_7_0_3_LAUNCH, REMOVED_10_1_5 },
							}),
							i(27490),	-- Firebrand Battleaxe
							-- #if AFTER 7.3.5
							i(24389),	-- Legion Blunderbuss
							i(24392),	-- Arcing Bracers
							-- #endif
							-- #if AFTER 7.3.5
							i(27494),	-- Emerald Eye Bracer (7.3.5 - Moved from Keli'dan the Breaker)
							-- #endif
							i(27489),	-- Virtue Bearer's Vambraces
							-- #if AFTER 7.3.5
							i(24393),	-- Bloody Surgeon's Mitts
							i(24391),	-- Kilt of the Night Strider
							-- #endif
							i(27492),	-- Moonchild Leggings
							i(27848),	-- Embroidered Spellpyre Boots
							i(27491),	-- Signet of Repose
							-- #if AFTER 7.3.5
							i(24390),	-- Auslese's Light Channeler
							-- #endif
						},
					}),
					e(557, {	-- Keli'dan the Breaker
						["creatureID"] = 17377,
						["groups"] = {
							ach(668),	-- Heroic: The Blood Furnace
							ach(5068, {	-- Heroic: The Blood Furnace Guild Run
								["timeline"] = { ADDED_4_0_3 },
							}),
							-- #if AFTER 7.3.5
							i(24394),	-- Warsong Howling Axe
							-- #endif
							i(27512),	-- The Willbreaker
							i(27507),	-- Adamantine Repeater
							i(27505),	-- Ruby Helm of the Just
							i(27495),	-- Soldier's Dog Tags
							i(29347),	-- Talisman of the Breaker
							i(32080),	-- Mantle of Shadowy Embrace
							-- #if AFTER 7.3.5
							i(24398),	-- Mantle of the Dusk-Dweller
							i(24397),	-- Raiments of Divine Authority
							-- #endif
							i(27506),	-- Robe of Effervescent Light
							-- #if AFTER 7.3.5
							i(24396),	-- Vest of Vengeance
							-- #endif
							i(28264),	-- Wastewalker Tunic
							i(27497),	-- Doomplate Gauntlets
							-- #if AFTER 7.3.5
							i(24395),	-- Mindfire Waistband
							-- #endif
							i(27514),	-- Leggings of the Unrepentant
							i(27788),	-- Bloodsworn Warboots
							i(29239),	-- Eaglecrest Warboots
							i(29245),	-- Wave-Crest Striders
							i(28121),	-- Icon of Unyielding Courage
							-- #if BEFORE 7.3.5
							i(27522),	-- World's End Bracers (7.3.5 - Moved to Warbringer O'mrogg in Shattered Halls!)
							i(27494),	-- Emerald Eye Bracer (7.3.5 - Moved to Broggok)
							-- #endif
							applyclassicphase(TBC_PHASE_ONE, i(23572)),	-- Primal Nether
							i(33814),	-- Keli'dan's Feathered Stave
						},
					}),
				},
			}),
		},
	})),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.WOD, bubbleDownSelf({ ["timeline"] = { ADDED_6_0_2 } }, {
	inst(256, {
		q(35565),	-- The Blood Furnace Reward Quest - Normal completion
		q(35566),	-- The Blood Furnace Reward Quest - Heroic completion
	}),
})));
