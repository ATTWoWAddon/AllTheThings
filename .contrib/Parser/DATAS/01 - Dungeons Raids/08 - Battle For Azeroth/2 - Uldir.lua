-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

root(ROOTS.Instances, expansion(EXPANSION.BFA, bubbleDown({ ["timeline"] = { ADDED_8_0_1 } }, {
	inst(1031, {	-- Uldir
		["isRaid"] = true,
		["lvl"] = { 50 },
		["maps"] = {
			1148,	-- Ruin's Descent
			1149,	-- Hall of Sanitation
			1150,	-- Ring of Containment
			1151,	-- Archives of Eternity
			1152,	-- Plague Vault
			1153,	-- Gallery of Failures
			1154,	-- The Oblivion Door
			1155,	-- The Festering Core
		},
		["groups"] = {
			n(ACHIEVEMENTS, {
				ach(12537),	-- Uldir Guild Run
				ach(12991),	-- New Mog, G'huun This?
				ach(12806, {	-- Glory of the Uldir Raider
					["sym"] = {{"meta_achievement",
						12551,	-- Double Dribble
						12937,	-- Elevator Music
						12938,	-- Parental Controls
						12823,	-- Thrash Mouth - All Stars
						12828,	-- What's in the Box?
						12772,	-- Now We Got Bad Blood
						12830,	-- Edgelords
						12836,	-- Existential Crisis
					}},
					["groups"] = {
						i(163216),	-- Bloodgorged Crawg (MOUNT!)
					},
				}),
				ach(12521, {	-- Halls of Containment
                    crit(40246, {	-- Taloc
                        ["_encounter"] = { 2168, DIFFICULTY.RAID.LFR },
                    }),
                    crit(40247, {	-- MOTHER
                        ["_encounter"] = { 2167, DIFFICULTY.RAID.LFR },
                    }),
                    crit(40223, {	-- Zek'voz, Herald of N'zoth
                        ["_encounter"] = { 2169, DIFFICULTY.RAID.LFR },
                    }),
                }),
				ach(12522, {	-- Crimson Descent
                    crit(40248, {	-- Vectis
                        ["_encounter"] = { 2166, DIFFICULTY.RAID.LFR },
                    }),
					crit(40222, {	-- Fetid Devourer
						["_encounter"] = { 2146, DIFFICULTY.RAID.LFR },
					}),
                    crit(40224, {	-- Zul, Reborn
                        ["_encounter"] = { 2195, DIFFICULTY.RAID.LFR },
                    }),
                }),
				ach(12523, {	-- Heart of Corruption
                    crit(40220, {	-- Mythrax the Unraveler
                        ["_encounter"] = { 2194, DIFFICULTY.RAID.LFR },
                    }),
                    crit(40221, {	-- G'huun
                        ["_encounter"] = { 2147, DIFFICULTY.RAID.LFR },
                    }),
                }),
				ach(40960, {	-- Uldir
					["timeline"] = { ADDED_11_0_7 },
					-- Meta Achievement
					["sym"] = {{"meta_achievement",
						12522,	-- Crimson Descent
						12521,	-- Halls of Containment
						12523,	-- Heart of Corruption
					}},
				}),
			}),
			n(COMMON_BOSS_DROPS, {
				["crs"] = {
					137119,	-- Taloc
					135452,	-- MOTHER
					136429,	-- Chamber 01 (MOTHER)
					137022,	-- Chamber 02 (MOTHER)
					137023,	-- Chamber 03 (MOTHER)
					134445,	-- Zek'voz <Herald of N'zoth>
					134442,	-- Vectis
					133298,	-- Fetid Devourer
					138967,	-- Zul
					134546,	-- Mythrax the Unraveler
					132998,	-- G'huun
				},
				["groups"] = {
					i(162521),	-- Recipe: Mystical Cauldron [Rank 3] (RECIPE!)
					i(162461),	-- Sanguicell
					i(162121),	-- Vantus Rune Technique: Uldir [Rank 1] (RECIPE!)
					i(162124),	-- Vantus Rune Technique: Uldir [Rank 2] (RECIPE!)
					i(162125),	-- Vantus Rune Technique: Uldir [Rank 3] (RECIPE!)
				},
			}),
			n(QUESTS, {
				spell(281237, {	-- Reorigination Array
					["description"] = "As mentioned above, Reorigination Array can stack up to 10 times, and the tooltip reveals how this system works. Every week, there is a hidden mini-quest to defeat 3 bosses in Uldir, this objective can be completed in any difficulty. You do not need to have any Azerite Armor from Uldir to progress in these quests. Completing this quest will reward you with one stack of Reorigination Array while in Uldir permanently.\n\nThe track of the complete upgrade system is achieved by a dozen different flag quests, listed below. Note, however, that these quests don't have database entries as they only serve as flags, but can be actually queried in-game for their completion. The first part of the system controls how many bosses have been killed in Uldir for that week:",
					["groups"] = {
						q(53568, {	-- Kill Credit 1
							["name"] = "Kill Credit 1",
							["icon"] = 1392920,
							["isWeekly"] = true,
						}),
						q(53569, {	-- Kill Credit 2
							["name"] = "Kill Credit 2",
							["icon"] = 1392921,
							["isWeekly"] = true,
						}),
						q(53570, {	-- Kill Credit 3
							["name"] = "Kill Credit 3",
							["icon"] = 1392922,
							["isWeekly"] = true,
						}),
						q(53571, {	-- Power Increased to Level 1
							["name"] = "Power Increased to Level 1",
							["icon"] = 2000859,
						}),
						q(53572, {	-- Power Increased to Level 2
							["name"] = "Power Increased to Level 2",
							["icon"] = 2000859,
							["sourceQuests"] = { 53571 },	-- Power Increased to Level 1
						}),
						q(53573, {	-- Power Increased to Level 3
							["name"] = "Power Increased to Level 3",
							["icon"] = 2000859,
							["sourceQuests"] = { 53572 },	-- Power Increased to Level 2
						}),
						q(53574, {	-- Power Increased to Level 4
							["name"] = "Power Increased to Level 4",
							["icon"] = 2000859,
							["sourceQuests"] = { 53573 },	-- Power Increased to Level 3
						}),
						q(53575, {	-- Power Increased to Level 5
							["name"] = "Power Increased to Level 5",
							["icon"] = 2000859,
							["sourceQuests"] = { 53574 },	-- Power Increased to Level 4
						}),
						q(53576, {	-- Power Increased to Level 6
							["name"] = "Power Increased to Level 6",
							["icon"] = 2000859,
							["sourceQuests"] = { 53575 },	-- Power Increased to Level 5
						}),
						q(53577, {	-- Power Increased to Level 7
							["name"] = "Power Increased to Level 7",
							["icon"] = 2000859,
							["sourceQuests"] = { 53576 },	-- Power Increased to Level 6
						}),
						q(53578, {	-- Power Increased to Level 8
							["name"] = "Power Increased to Level 8",
							["icon"] = 2000859,
							["sourceQuests"] = { 53577 },	-- Power Increased to Level 7
						}),
						q(53579, {	-- Power Increased to Level 9
							["name"] = "Power Increased to Level 9",
							["icon"] = 2000859,
							["sourceQuests"] = { 53578 },	-- Power Increased to Level 8
						}),
						q(53580, {	-- Power Increased to Level 10
							["name"] = "Power Increased to Level 10",
							["icon"] = 2000859,
							["sourceQuests"] = { 53579 },	-- Power Increased to Level 9
						}),
					},
				}),
			}),
			d(DIFFICULTY.RAID.LFR, {	-- Queue NPC
				["crs"] = {
					177193,	-- Kiku
					177208,	-- Eppu
				},
				["coords"] = {
					{ 74.0, 13.4, BORALUS },	-- Kiku
					{ 68.0, 33.6, THE_GREAT_SEAL },	-- Eppu
				},
			}),
			d(DIFFICULTY.RAID.LFR, {
				n(ZONE_DROPS, {
					i(161071),	-- Bloody Experimenter's Wraps
					i(160612),	-- Spellbound Specimen Handlers
					i(161075),	-- Antiseptic Specimen Handlers
					i(161072),	-- Splatterguards
					i(161076),	-- Iron-Grip Specimen Handlers
					i(161073),	-- Reinforced Test Subject Shackles
					i(161074),	-- Crushproof Vambraces
					i(161077),	-- Fluid-Resistant Specimen Handlers
				}),
				header(HEADERS.Achievement, 12521, {	-- Halls of Containment
					e(2168, {	-- Taloc
						["crs"] = {
							137119,	-- Taloc
							138959,	-- Coalesced Blood
							138530,	-- Volatile Droplet
						},
						["groups"] = {
							crit(40246, {	-- Taloc
								["achievementID"] = 12521,	-- Halls of Containment
							}),
							i(163119),	-- Khor, Hammer of the Guardian (transmog item)
							i(160679),	-- Khor, Hammer of the Corrupted
							i(160680),	-- Titanspark Animator
							i(160637),	-- Crimson Colossus Armguards
							i(160629),	-- Rubywrought Sparkguards
							i(160618),	-- Gloves of Descending Madness
							i(160622),	-- Bloodstorm Buckle
							i(160639),	-- Greaves of Unending Vigil
							i(160631),	-- Legguards of Coalescing Plasma
							i(160714),	-- Volatile Walkers
							i(160652),	-- Construct Overcharger
							i(160651),	-- Vigilant's Bloodshaper
						},
					}),
					e(2167, {	-- MOTHER
						["crs"] = {
							135452,	-- MOTHER
							136429,	-- Chamber 01 (MOTHER)
							137022,	-- Chamber 02 (MOTHER)
							137023,	-- Chamber 03 (MOTHER)
						},
						["groups"] = {
							crit(40247, {	-- MOTHER
								["achievementID"] = 12521,	-- Halls of Containment
							}),
							i(160681),	-- Glaive of the Keepers
							i(160683),	-- Latticework Scalpel
							i(160682),	-- Mother's Twin Gaze
							i(160695),	-- Uldir Subject Manifest
							i(160634),	-- Gridrunner Galea
							i(160632),	-- Flame-Sterilized Spaulders
							i(160626),	-- Gloves of Involuntary Amputation
							i(160638),	-- Decontaminator's Greatbelt
							i(160615),	-- Leggings of Lingering Infestation
							i(160625),	-- Pathogenic Legwraps
							i(160645),	-- Rot-Scour Ring
						},
					}),
					e(2169, {	-- Zek'voz, Herald of N'zoth
						["crs"] = {
							134445,	-- Zek'voz <Herald of N'zoth>
							135824,	-- Nerubian Voidweaver
							134503,	-- Silithid Warrior
						},
						["groups"] = {
							crit(40223, {	-- Zek'voz, Herald of N'zoth
								["achievementID"] = 12521,	-- Halls of Containment
							}),
							i(160688),	-- Void-Binder
							i(160687),	-- Containment Analysis Baton
							i(160613),	-- Mantle of Contained Corruption
							i(160627),	-- Chainvest of Assured Quality
							i(160617),	-- Void-Lashed Wristband
							i(160717),	-- Replicated Chitin Cord
							i(160633),	-- Titanspark Energy Girdle
							i(160718),	-- Greaves of Creeping Darkness
							i(160624),	-- Quarantine Protocol Treads
							i(160640),	-- Warboots of Absolute Eradication
							i(160647),	-- Ring of the Infinite Void
							i(160650),	-- Disc of Systematic Regression
						},
					}),
				}),
				header(HEADERS.Achievement, 12522, {	-- Crimson Descent
					e(2146, {	-- Fetid Devourer
						["crs"] = {
							133298,	-- Fetid Devourer
							133492,	-- Corruption Corpuscle
						},
						["groups"] = {
							crit(40222, {	-- Fetid Devourer
								["achievementID"] = 12522,	-- Crimson Descent
							}),
							i(160689),	-- Regurgitated Purifier's Flamestaff
							i(160685),	-- Biomelding Cleaver
							i(160616),	-- Horrific Amalgam's Hood
							i(160643),	-- Fetid Horror's Tanglecloak
							i(160619),	-- Jerkin of the Aberrant Chimera
							i(160635),	-- Waste Disposal Crushers
							i(160628),	-- Fused Monstrosity Stompers
							i(160648),	-- Frenetic Corpuscle
						},
					}),
					e(2166, {	-- Vectis
						["crs"] = { 134442 },	-- Vectis
						["groups"] = {
							crit(40248, {	-- Vectis
								["achievementID"] = 12522,	-- Crimson Descent
							}),
							i(160678),	-- Bow of Virulent Infection
							i(160698),	-- Vector Deflector
							i(160623),	-- Hood of Pestilent Ichor
							i(160644),	-- Plasma-Spattered Greatcloak
							i(160636),	-- Chestguard of Virulent Mutagens
							i(160621),	-- Wristwraps of Coursing Miasma
							i(160715),	-- Mutagenic Protofluid Handwraps
							i(160734),	-- Cord of Animated Contagion
							i(160716),	-- Blighted Anima Greaves
							i(160649),	-- Inoculating Extract
							i(160655),	-- Syringe of Bloodborne Infirmity
						},
					}),
					e(2195, {	-- Zul, Reborn
						["crs"] = { 138967 },	-- Zul
						["groups"] = {
							crit(40224, {	-- Zul, Reborn
								["achievementID"] = 12522,	-- Crimson Descent
							}),
							i(162422),	-- Pattern: Embroidered Deep Sea Bag [Rank 3] (RECIPE!)
							i(160684),	-- Pursax, the Backborer
							i(160691),	-- Tusk of the Reborn Prophet
							i(160630),	-- Crest of the Undying Visionary
							i(160719),	-- Visage of the Ascended Prophet
							i(160620),	-- Usurper's Bloodcaked Spaulders
							i(160642),	-- Cloak of Rippling Whispers
							i(160722),	-- Chestplate of Apocalyptic Machinations
							i(160720),	-- Armbands of Sacrosanct Acts
							i(160723),	-- Imperious Vambraces
							i(160724),	-- Cincture of Profane Deeds
						},
					}),
				}),
				header(HEADERS.Achievement, 12523, {	-- Heart of Corruption
					e(2194, {	-- Mythrax the Unraveler
						["crs"] = { 134546 },	-- Mythrax the Unraveler
						["groups"] = {
							crit(40220, {	-- Mythrax the Unraveler
								["achievementID"] = 12523,	-- Heart of Corruption
							}),
							i(160686),	-- Voror, Gleaming Blade of the Stalwart
							i(160692),	-- Luminous Edge of Virtue
							i(160696),	-- Codex of Imminent Ruin
							i(163596),	-- Cowl of Dark Portents
							i(160641),	-- Chitinspine Pauldrons
							i(160725),	-- C'thraxxi General's Hauberk
							i(160614),	-- Robes of the Unraveler
							i(160721),	-- Oblivion Crushers
							i(160646),	-- Band of Certain Annihilation
							i(160656),	-- Twitching Tentacle of Xalzaix
							i(160653),	-- Xalzaix's Veiled Eye
						},
					}),
					e(2147, {	-- G'huun
						["crs"] = {
							132998,	-- G'huun
							138529,	-- Dark Young
						},
						["groups"] = {
							crit(40221, {	-- G'huun
								["achievementID"] = 12523,	-- Heart of Corruption
							}),
							i(160690),	-- Heptavium, Staff of Torturous Knowledge
							i(160693),	-- Lancet of the Deft Hand
							i(160694),	-- Re-Origination Pulse Rifle
							i(160699),	-- Bararicade of Purifying Resolve
							i(160732),	-- Helm of the Defiled Laboratorium
							i(160726),	-- Amice of Corrupting Horror
							i(160731),	-- Spaulders of Coagulated Viscera
							i(160728),	-- Tunic of the Sanguine Deity
							i(160727),	-- Cord of Septic Envelopment
							i(160733),	-- Hematocyst Stompers
							i(160729),	-- Striders of the Putrescent Path
							i(160654),	-- Vanquisheed Tendril of G'huun
						},
					}),
				}),
			}),
			d(DIFFICULTY.RAID.MULTI.NORMAL_PLUS, {
				e(2168, {	-- Taloc
					["crs"] = {
						137119,	-- Taloc
						138959,	-- Coalesced Blood
						138530,	-- Volatile Droplet
					},
					["groups"] = {
						ach(12937),	-- Elevator Music
						i(163119),	-- Khor, Hammer of the Guardian (transmog item)
					},
				}),
				e(2167, {	-- MOTHER
					["crs"] = {
						135452,	-- MOTHER
						136429,	-- Chamber 01 (MOTHER)
						137022,	-- Chamber 02 (MOTHER)
						137023,	-- Chamber 03 (MOTHER)
					},
					["groups"] = {
						ach(12938),	-- Parental Controls
					},
				}),
				e(2146, {	-- Fetid Devourer
					["crs"] = {
						133298,	-- Fetid Devourer
						133492,	-- Corruption Corpuscle
					},
					["groups"] = {
						ach(12823),	-- Thrash Mouth - All Stars
					},
				}),
				e(2169, {	-- Zek'voz, Herald of N'zoth
					["crs"] = {
						134445,	-- Zek'voz <Herald of N'zoth>
						135824,	-- Nerubian Voidweaver
						134503,	-- Silithid Warrior
					},
					["groups"] = {
						ach(12828),	-- What's in the Box?
					},
				}),
				e(2166, {	-- Vectis
					["crs"] = { 134442 },	-- Vectis
					["groups"] = {
						ach(12772),	--  Now We Got Bad Blood
					},
				}),
				e(2195, {	-- Zul, Reborn
					["crs"] = { 138967 },	-- Zul
					["groups"] = {
						ach(12830),	-- Edgelords
						i(162422),	-- Pattern: Embroidered Deep Sea Bag [Rank 3] (RECIPE!)
						i(166502),	-- Blood-Soaked Tome of Dark Whispers (CI!)
					},
				}),
				e(2194, {	-- Mythrax the Unraveler
					["crs"] = { 134546 },	-- Mythrax the Unraveler
					["groups"] = {
						ach(12836),	-- Existential Crisis
					},
				}),
				e(2147, {	-- G'huun
					["crs"] = {
						132998,	-- G'huun
						138529,	-- Dark Young
					},
					["groups"] = {
						ach(12551),	-- Double Dribble
					},
				}),
			}),
			d(DIFFICULTY.RAID.NORMAL, {
				n(ZONE_DROPS, {
					i(161071),	-- Bloody Experimenter's Wraps
					i(160612),	-- Spellbound Specimen Handlers
					i(161075),	-- Antiseptic Specimen Handlers
					i(161072),	-- Splatterguards
					i(161076),	-- Iron-Grip Specimen Handlers
					i(161073),	-- Reinforced Test Subject Shackles
					i(161074),	-- Crushproof Vambraces
					i(161077),	-- Fluid-Resistant Specimen Handlers
				}),
				e(2168, {	-- Taloc
					["crs"] = {
						137119,	-- Taloc
						138959,	-- Coalesced Blood
						138530,	-- Volatile Droplet
					},
					["groups"] = {
						i(160679),	-- Khor, Hammer of the Corrupted
						i(160680),	-- Titanspark Animator
						i(160637),	-- Crimson Colossus Armguards
						i(160629),	-- Rubywrought Sparkguards
						i(160618),	-- Gloves of Descending Madness
						i(160622),	-- Bloodstorm Buckle
						i(160639),	-- Greaves of Unending Vigil
						i(160631),	-- Legguards of Coalescing Plasma
						i(160714),	-- Volatile Walkers
						i(160652),	-- Construct Overcharger
						i(160651),	-- Vigilant's Bloodshaper
					},
				}),
				e(2167, {	-- MOTHER
					["crs"] = {
						135452,	-- MOTHER
						136429,	-- Chamber 01 (MOTHER)
						137022,	-- Chamber 02 (MOTHER)
						137023,	-- Chamber 03 (MOTHER)
					},
					["groups"] = {
						i(160681),	-- Glaive of the Keepers
						i(160683),	-- Latticework Scalpel
						i(160682),	-- Mother's Twin Gaze
						i(160695),	-- Uldir Subject Manifest
						i(160634),	-- Gridrunner Galea
						i(160632),	-- Flame-Sterilized Spaulders
						i(160626),	-- Gloves of Involuntary Amputation
						i(160638),	-- Decontaminator's Greatbelt
						i(160615),	-- Leggings of Lingering Infestation
						i(160625),	-- Pathogenic Legwraps
						i(160645),	-- Rot-Scour Ring
					},
				}),
				e(2146, {	-- Fetid Devourer
					["crs"] = {
						133298,	-- Fetid Devourer
						133492,	-- Corruption Corpuscle
					},
					["groups"] = {
						i(160689),	-- Regurgitated Purifier's Flamestaff
						i(160685),	-- Biomelding Cleaver
						i(160616),	-- Horrific Amalgam's Hood
						i(160643),	-- Fetid Horror's Tanglecloak
						i(160619),	-- Jerkin of the Aberrant Chimera
						i(160635),	-- Waste Disposal Crushers
						i(160628),	-- Fused Monstrosity Stompers
						i(160648),	-- Frenetic Corpuscle
					},
				}),
				e(2169, {	-- Zek'voz, Herald of N'zoth
					["crs"] = {
						134445,	-- Zek'voz <Herald of N'zoth>
						135824,	-- Nerubian Voidweaver
						134503,	-- Silithid Warrior
					},
					["groups"] = {
						i(160688),	-- Void-Binder
						i(160687),	-- Containment Analysis Baton
						i(160613),	-- Mantle of Contained Corruption
						i(160627),	-- Chainvest of Assured Quality
						i(160617),	-- Void-Lashed Wristband
						i(160717),	-- Replicated Chitin Cord
						i(160633),	-- Titanspark Energy Girdle
						i(160718),	-- Greaves of Creeping Darkness
						i(160624),	-- Quarantine Protocol Treads
						i(160640),	-- Warboots of Absolute Eradication
						i(160647),	-- Ring of the Infinite Void
						i(160650),	-- Disc of Systematic Regression
					},
				}),
				e(2166, {	-- Vectis
					["crs"] = { 134442 },	-- Vectis
					["groups"] = {
						i(160678),	-- Bow of Virulent Infection
						i(160698),	-- Vector Deflector
						i(160623),	-- Hood of Pestilent Ichor
						i(160644),	-- Plasma-Spattered Greatcloak
						i(160636),	-- Chestguard of Virulent Mutagens
						i(160621),	-- Wristwraps of Coursing Miasma
						i(160715),	-- Mutagenic Protofluid Handwraps
						i(160734),	-- Cord of Animated Contagion
						i(160716),	-- Blighted Anima Greaves
						i(160649),	-- Inoculating Extract
						i(160655),	-- Syringe of Bloodborne Infirmity
					},
				}),
				e(2195, {	-- Zul, Reborn
					["crs"] = { 138967 },	-- Zul
					["groups"] = {
						i(160684),	-- Pursax, the Backborer
						i(160691),	-- Tusk of the Reborn Prophet
						i(160630),	-- Crest of the Undying Visionary
						i(160719),	-- Visage of the Ascended Prophet
						i(160620),	-- Usurper's Bloodcaked Spaulders
						i(160642),	-- Cloak of Rippling Whispers
						i(160722),	-- Chestplate of Apocalyptic Machinations
						i(160720),	-- Armbands of Sacrosanct Acts
						i(160723),	-- Imperious Vambraces
						i(160724),	-- Cincture of Profane Deeds
					},
				}),
				e(2194, {	-- Mythrax the Unraveler
					["crs"] = { 134546 },	-- Mythrax the Unraveler
					["groups"] = {
						i(160686),	-- Voror, Gleaming Blade of the Stalwart
						i(160692),	-- Luminous Edge of Virtue
						i(160696),	-- Codex of Imminent Ruin
						i(163596),	-- Cowl of Dark Portents
						i(160641),	-- Chitinspine Pauldrons
						i(160725),	-- C'thraxxi General's Hauberk
						i(160614),	-- Robes of the Unraveler
						i(160721),	-- Oblivion Crushers
						i(160646),	-- Band of Certain Annihilation
						i(160656),	-- Twitching Tentacle of Xalzaix
						i(160653),	-- Xalzaix's Veiled Eye
					},
				}),
				e(2147, {	-- G'huun
					["crs"] = {
						132998,	-- G'huun
						138529,	-- Dark Young
					},
					["groups"] = {
						i(160690),	-- Heptavium, Staff of Torturous Knowledge
						i(160693),	-- Lancet of the Deft Hand
						i(160694),	-- Re-Origination Pulse Rifle
						i(160699),	-- Bararicade of Purifying Resolve
						i(160732),	-- Helm of the Defiled Laboratorium
						i(160726),	-- Amice of Corrupting Horror
						i(160731),	-- Spaulders of Coagulated Viscera
						i(160728),	-- Tunic of the Sanguine Deity
						i(160727),	-- Cord of Septic Envelopment
						i(160733),	-- Hematocyst Stompers
						i(160729),	-- Striders of the Putrescent Path
						i(160654),	-- Vanquisheed Tendril of G'huun
					},
				}),
			}),
			d(DIFFICULTY.RAID.HEROIC, {
				n(ZONE_DROPS, {
					i(161071),	-- Bloody Experimenter's Wraps
					i(160612),	-- Spellbound Specimen Handlers
					i(161075),	-- Antiseptic Specimen Handlers
					i(161072),	-- Splatterguards
					i(161076),	-- Iron-Grip Specimen Handlers
					i(161073),	-- Reinforced Test Subject Shackles
					i(161074),	-- Crushproof Vambraces
					i(161077),	-- Fluid-Resistant Specimen Handlers
				}),
				e(2168, {	-- Taloc
					["crs"] = {
						137119,	-- Taloc
						138959,	-- Coalesced Blood
						138530,	-- Volatile Droplet
					},
					["groups"] = {
						i(160679),	-- Khor, Hammer of the Corrupted
						i(160680),	-- Titanspark Animator
						i(160637),	-- Crimson Colossus Armguards
						i(160629),	-- Rubywrought Sparkguards
						i(160618),	-- Gloves of Descending Madness
						i(160622),	-- Bloodstorm Buckle
						i(160639),	-- Greaves of Unending Vigil
						i(160631),	-- Legguards of Coalescing Plasma
						i(160714),	-- Volatile Walkers
						i(160652),	-- Construct Overcharger
						i(160651),	-- Vigilant's Bloodshaper
					},
				}),
				e(2167, {	-- MOTHER
					["crs"] = {
						135452,	-- MOTHER
						136429,	-- Chamber 01 (MOTHER)
						137022,	-- Chamber 02 (MOTHER)
						137023,	-- Chamber 03 (MOTHER)
					},
					["groups"] = {
						i(160681),	-- Glaive of the Keepers
						i(160683),	-- Latticework Scalpel
						i(160682),	-- Mother's Twin Gaze
						i(160695),	-- Uldir Subject Manifest
						i(160634),	-- Gridrunner Galea
						i(160632),	-- Flame-Sterilized Spaulders
						i(160626),	-- Gloves of Involuntary Amputation
						i(160638),	-- Decontaminator's Greatbelt
						i(160615),	-- Leggings of Lingering Infestation
						i(160625),	-- Pathogenic Legwraps
						i(160645),	-- Rot-Scour Ring
					},
				}),
				e(2146, {	-- Fetid Devourer
					["crs"] = {
						133298,	-- Fetid Devourer
						133492,	-- Corruption Corpuscle
					},
					["groups"] = {
						i(160689),	-- Regurgitated Purifier's Flamestaff
						i(160685),	-- Biomelding Cleaver
						i(160616),	-- Horrific Amalgam's Hood
						i(160643),	-- Fetid Horror's Tanglecloak
						i(160619),	-- Jerkin of the Aberrant Chimera
						i(160635),	-- Waste Disposal Crushers
						i(160628),	-- Fused Monstrosity Stompers
						i(160648),	-- Frenetic Corpuscle
					},
				}),
				e(2169, {	-- Zek'voz, Herald of N'zoth
					["crs"] = {
						134445,	-- Zek'voz <Herald of N'zoth>
						135824,	-- Nerubian Voidweaver
						134503,	-- Silithid Warrior
					},
					["groups"] = {
						i(160688),	-- Void-Binder
						i(160687),	-- Containment Analysis Baton
						i(160613),	-- Mantle of Contained Corruption
						i(160627),	-- Chainvest of Assured Quality
						i(160617),	-- Void-Lashed Wristband
						i(160717),	-- Replicated Chitin Cord
						i(160633),	-- Titanspark Energy Girdle
						i(160718),	-- Greaves of Creeping Darkness
						i(160624),	-- Quarantine Protocol Treads
						i(160640),	-- Warboots of Absolute Eradication
						i(160647),	-- Ring of the Infinite Void
						i(160650),	-- Disc of Systematic Regression
					},
				}),
				e(2166, {	-- Vectis
					["crs"] = { 134442 },	-- Vectis
					["groups"] = {
						i(160678),	-- Bow of Virulent Infection
						i(160698),	-- Vector Deflector
						i(160623),	-- Hood of Pestilent Ichor
						i(160644),	-- Plasma-Spattered Greatcloak
						i(160636),	-- Chestguard of Virulent Mutagens
						i(160621),	-- Wristwraps of Coursing Miasma
						i(160715),	-- Mutagenic Protofluid Handwraps
						i(160734),	-- Cord of Animated Contagion
						i(160716),	-- Blighted Anima Greaves
						i(160649),	-- Inoculating Extract
						i(160655),	-- Syringe of Bloodborne Infirmity
					},
				}),
				e(2195, {	-- Zul, Reborn
					["crs"] = { 138967 },	-- Zul
					["groups"] = {
						i(160684),	-- Pursax, the Backborer
						i(160691),	-- Tusk of the Reborn Prophet
						i(160630),	-- Crest of the Undying Visionary
						i(160719),	-- Visage of the Ascended Prophet
						i(160620),	-- Usurper's Bloodcaked Spaulders
						i(160642),	-- Cloak of Rippling Whispers
						i(160722),	-- Chestplate of Apocalyptic Machinations
						i(160720),	-- Armbands of Sacrosanct Acts
						i(160723),	-- Imperious Vambraces
						i(160724),	-- Cincture of Profane Deeds
					},
				}),
				e(2194, {	-- Mythrax the Unraveler
					["crs"] = { 134546 },	-- Mythrax the Unraveler
					["groups"] = {
						i(160686),	-- Voror, Gleaming Blade of the Stalwart
						i(160692),	-- Luminous Edge of Virtue
						i(160696),	-- Codex of Imminent Ruin
						i(163596),	-- Cowl of Dark Portents
						i(160641),	-- Chitinspine Pauldrons
						i(160725),	-- C'thraxxi General's Hauberk
						i(160614),	-- Robes of the Unraveler
						i(160721),	-- Oblivion Crushers
						i(160646),	-- Band of Certain Annihilation
						i(160656),	-- Twitching Tentacle of Xalzaix
						i(160653),	-- Xalzaix's Veiled Eye
					},
				}),
				e(2147, {	-- G'huun
					["crs"] = {
						132998,	-- G'huun
						134590,	-- Blightspreader Tendril
						138531,	-- Cyclopean Terror
						138529,	-- Dark Young
					},
					["groups"] = {
						ach(12536, {	-- Ahead of the Curve: G'huun
							["timeline"] = { ADDED_8_0_1, REMOVED_8_1_0 },
						}),
						i(160690),	-- Heptavium, Staff of Torturous Knowledge
						i(160693),	-- Lancet of the Deft Hand
						i(160694),	-- Re-Origination Pulse Rifle
						i(160699),	-- Bararicade of Purifying Resolve
						i(160732),	-- Helm of the Defiled Laboratorium
						i(160726),	-- Amice of Corrupting Horror
						i(160731),	-- Spaulders of Coagulated Viscera
						i(160728),	-- Tunic of the Sanguine Deity
						i(160727),	-- Cord of Septic Envelopment
						i(160733),	-- Hematocyst Stompers
						i(160729),	-- Striders of the Putrescent Path
						i(160654),	-- Vanquisheed Tendril of G'huun
					},
				}),
			}),
			d(DIFFICULTY.RAID.MYTHIC, {
				n(ZONE_DROPS, {
					["groups"] = {
						i(161071),	-- Bloody Experimenter's Wraps
						i(160612),	-- Spellbound Specimen Handlers
						i(161075),	-- Antiseptic Specimen Handlers
						i(161072),	-- Splatterguards
						i(161076),	-- Iron-Grip Specimen Handlers
						i(161073),	-- Reinforced Test Subject Shackles
						i(161074),	-- Crushproof Vambraces
						i(161077),	-- Fluid-Resistant Specimen Handlers
					},
				}),
				e(2168, {	-- Taloc
					["crs"] = {
						137119,	-- Taloc
						138959,	-- Coalesced Blood
						138530,	-- Volatile Droplet
					},
					["groups"] = {
						ach(12524),	-- Mythic: Taloc
						i(160679),	-- Khor, Hammer of the Corrupted
						i(160680),	-- Titanspark Animator
						i(160637),	-- Crimson Colossus Armguards
						i(160629),	-- Rubywrought Sparkguards
						i(160618),	-- Gloves of Descending Madness
						i(160622),	-- Bloodstorm Buckle
						i(160639),	-- Greaves of Unending Vigil
						i(160631),	-- Legguards of Coalescing Plasma
						i(160714),	-- Volatile Walkers
						i(160652),	-- Construct Overcharger
						i(160651),	-- Vigilant's Bloodshaper
					},
				}),
				e(2167, {	-- MOTHER
					["crs"] = {
						135452,	-- MOTHER
						136429,	-- Chamber 01 (MOTHER)
						137022,	-- Chamber 02 (MOTHER)
						137023,	-- Chamber 03 (MOTHER)
					},
					["groups"] = {
						ach(12526),	-- Mythic: MOTHER
						i(160681),	-- Glaive of the Keepers
						i(160683),	-- Latticework Scalpel
						i(160682),	-- Mother's Twin Gaze
						i(160695),	-- Uldir Subject Manifest
						i(160634),	-- Gridrunner Galea
						i(160632),	-- Flame-Sterilized Spaulders
						i(160626),	-- Gloves of Involuntary Amputation
						i(160638),	-- Decontaminator's Greatbelt
						i(160615),	-- Leggings of Lingering Infestation
						i(160625),	-- Pathogenic Legwraps
						i(160645),	-- Rot-Scour Ring
					},
				}),
				e(2146, {	-- Fetid Devourer
					["crs"] = {
						133298,	-- Fetid Devourer
						133492,	-- Corruption Corpuscle
					},
					["groups"] = {
						ach(12530),	-- Mythic: Fetid Devourer
						i(160689),	-- Regurgitated Purifier's Flamestaff
						i(160685),	-- Biomelding Cleaver
						i(160616),	-- Horrific Amalgam's Hood
						i(160643),	-- Fetid Horror's Tanglecloak
						i(160619),	-- Jerkin of the Aberrant Chimera
						i(160635),	-- Waste Disposal Crushers
						i(160628),	-- Fused Monstrosity Stompers
						i(160648),	-- Frenetic Corpuscle
					},
				}),
				e(2169, {	-- Zek'voz, Herald of N'zoth
					["crs"] = {
						134445,	-- Zek'voz <Herald of N'zoth>
						135824,	-- Nerubian Voidweaver
						134503,	-- Silithid Warrior
					},
					["groups"] = {
						ach(12527),	-- Mythic: Zek'voz, Herald of N'zoth
						i(160688),	-- Void-Binder
						i(160687),	-- Containment Analysis Baton
						i(160613),	-- Mantle of Contained Corruption
						i(160627),	-- Chainvest of Assured Quality
						i(160617),	-- Void-Lashed Wristband
						i(160717),	-- Replicated Chitin Cord
						i(160633),	-- Titanspark Energy Girdle
						i(160718),	-- Greaves of Creeping Darkness
						i(160624),	-- Quarantine Protocol Treads
						i(160640),	-- Warboots of Absolute Eradication
						i(160647),	-- Ring of the Infinite Void
						i(160650),	-- Disc of Systematic Regression
					},
				}),
				e(2166, {	-- Vectis
					["crs"] = { 134442 },	-- Vectis
					["groups"] = {
						ach(12529),	-- Mythic: Vectis
						i(160678),	-- Bow of Virulent Infection
						i(160698),	-- Vector Deflector
						i(160623),	-- Hood of Pestilent Ichor
						i(160644),	-- Plasma-Spattered Greatcloak
						i(160636),	-- Chestguard of Virulent Mutagens
						i(160621),	-- Wristwraps of Coursing Miasma
						i(160715),	-- Mutagenic Protofluid Handwraps
						i(160734),	-- Cord of Animated Contagion
						i(160716),	-- Blighted Anima Greaves
						i(160649),	-- Inoculating Extract
						i(160655),	-- Syringe of Bloodborne Infirmity
					},
				}),
				e(2195, {	-- Zul, Reborn
					["crs"] = { 138967 },	-- Zul
					["groups"] = {
						ach(12531),	-- Mythic: Zul, Reborn
						i(160684),	-- Pursax, the Backborer
						i(160691),	-- Tusk of the Reborn Prophet
						i(160630),	-- Crest of the Undying Visionary
						i(160719),	-- Visage of the Ascended Prophet
						i(160620),	-- Usurper's Bloodcaked Spaulders
						i(160642),	-- Cloak of Rippling Whispers
						i(160722),	-- Chestplate of Apocalyptic Machinations
						i(160720),	-- Armbands of Sacrosanct Acts
						i(160723),	-- Imperious Vambraces
						i(160724),	-- Cincture of Profane Deeds
					},
				}),
				e(2194, {	-- Mythrax the Unraveler
					["crs"] = { 134546 },	-- Mythrax the Unraveler
					["groups"] = {
						ach(12532),	-- Mythic: Mythrax the Unraveler
						i(160686),	-- Voror, Gleaming Blade of the Stalwart
						i(160692),	-- Luminous Edge of Virtue
						i(160696),	-- Codex of Imminent Ruin
						i(163596),	-- Cowl of Dark Portents
						i(160641),	-- Chitinspine Pauldrons
						i(160725),	-- C'thraxxi General's Hauberk
						i(160614),	-- Robes of the Unraveler
						i(160721),	-- Oblivion Crushers
						i(160646),	-- Band of Certain Annihilation
						i(160656),	-- Twitching Tentacle of Xalzaix
						i(160653),	-- Xalzaix's Veiled Eye
					},
				}),
				e(2147, {	-- G'huun
					["crs"] = {
						132998,	-- G'huun
						138529,	-- Dark Young
					},
					["groups"] = {
						ach(12535, {	-- Cutting Edge: G'huun
							["timeline"] = { ADDED_8_0_1, REMOVED_8_1_0 },
						}),
						ach(12533, {	-- Mythic: G'huun
							title(381),	-- <Name> the Purifier
						}),
						ach(13010),	-- Mythic: G'huun Guild Run
						ach(12542, bubbleDownSelf({["timeline"] = { ADDED_8_0_1, REMOVED_8_1_0 } }, {	-- Hall of Fame: G'huun (Alliance)
							["races"] = ALLIANCE_ONLY,
							["groups"] = {
								title(374),	-- <Name>, Famed Slayer of G'huun
							},
						})),
						ach(12543, bubbleDownSelf({["timeline"] = { ADDED_8_0_1, REMOVED_8_1_0 } }, {	-- Hall of Fame: G'huun (Horde)
							["races"] = HORDE_ONLY,
							["groups"] = {
								title(374),	-- <Name>, Famed Slayer of G'huun
							},
						})),
						ach(12551),	-- Double Dribble
						i(160690),	-- Heptavium, Staff of Torturous Knowledge
						i(160693),	-- Lancet of the Deft Hand
						i(160694),	-- Re-Origination Pulse Rifle
						i(160699),	-- Bararicade of Purifying Resolve
						i(160732),	-- Helm of the Defiled Laboratorium
						i(160726),	-- Amice of Corrupting Horror
						i(160731),	-- Spaulders of Coagulated Viscera
						i(160728),	-- Tunic of the Sanguine Deity
						i(160727),	-- Cord of Septic Envelopment
						i(160733),	-- Hematocyst Stompers
						i(160729),	-- Striders of the Putrescent Path
						i(160654),	-- Vanquisheed Tendril of G'huun
					},
				}),
			}),
		},
	}),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.BFA, bubbleDownSelf({ ["timeline"] = { ADDED_8_0_1 } }, {
	inst(1031, {	-- Uldir
		q(53269),	-- killed Taloc the Corrupted in LFR
		q(51736),	-- killed Taloc on Mythic
		q(51735),	-- killed MOTHER on Mythic
		q(51734),	-- killed Vectis on Mythic / Heroic
		q(51733),	-- killed Fetid Devourer on Mythic
		q(51730),	-- killed Mythrax the Unraveler on Mythic
		q(51732),	-- reported as triggering after doing "What's in the Box?" achievement, perhaps a kill quest
		q(51731),	-- reported as triggering after doing "Edgelords" achievement, perhaps a kill quest
		q(51729),	-- reported as triggering after doing "Double Dribble" achievement, perhaps a kill quest
	}),
})));
