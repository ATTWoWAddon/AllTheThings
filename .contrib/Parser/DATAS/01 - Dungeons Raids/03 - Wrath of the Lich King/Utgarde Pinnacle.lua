-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
root(ROOTS.Instances, expansion(EXPANSION.WRATH, applyclassicphase(WRATH_PHASE_ONE, bubbleDownSelf({ ["timeline"] = { ADDED_3_0_2 } }, {
	inst(286, {	-- Utgarde Pinnacle
		["mapID"] = UTGARDE_PINNACLE,
		["coord"] = { 57, 47, HOWLING_FJORD },
		["maps"] = { UTGARDE_PINNACLE_FLOOR2 },
		["lvl"] = lvlsquish(75, 75, 20),
		["groups"] = {
			n(ACHIEVEMENTS, {
				ach(488, {	-- Utgarde Pinnacle
					crit(5463, {	-- Skadi the Ruthless
						["_encounter"] = { 643, DIFFICULTY.DUNGEON.NORMAL },
					}),
					crit(5465, {	-- Svala Sorrowgrave
						["_encounter"] = { 641, DIFFICULTY.DUNGEON.NORMAL },
					}),
					crit(5466, {	-- Gortok Palehoof
						["_encounter"] = { 642, DIFFICULTY.DUNGEON.NORMAL },
					}),
					-- #if ANYCLASSIC
					-- NOTE: This boss has a different criteriaUID in classic for some dumb reason. BLIZZARD.
					crit(5631, {	-- King Ymiron
						["_encounter"] = { 644, DIFFICULTY.DUNGEON.NORMAL },
					}),
					-- #else
					crit(5464, {	-- King Ymiron
						["_encounter"] = { 644, DIFFICULTY.DUNGEON.NORMAL },
					}),
					-- #endif
				}),
				-- #if ANYCLASSIC
				applyclassicphase(WRATH_PHASE_TWO, ach(17301, {	-- Defense Protocol Alpha: Utgarde Pinnacle
					crit(57767, {	-- Svala Sorrowgrave
						["_encounter"] = { 641, DEFENSE_PROTOCOL_ALPHA },
					}),
					crit(57769, {	-- Gortok Palehoof
						["_encounter"] = { 642, DEFENSE_PROTOCOL_ALPHA },
					}),
					crit(57768, {	-- Skadi the Ruthless
						["_encounter"] = { 643, DEFENSE_PROTOCOL_ALPHA },
					}),
					crit(57766, {	-- King Ymiron
						["_encounter"] = { 644, DEFENSE_PROTOCOL_ALPHA },
					}),
				})),
				applyclassicphase(WRATH_PHASE_THREE, ach(18600, {	-- Defense Protocol Beta: Utgarde Pinnacle
					crit(60610, {	-- Svala Sorrowgrave
						["_encounter"] = { 641, DEFENSE_PROTOCOL_BETA },
					}),
					crit(60612, {	-- Gortok Palehoof
						["_encounter"] = { 642, DEFENSE_PROTOCOL_BETA },
					}),
					crit(60611, {	-- Skadi the Ruthless
						["_encounter"] = { 643, DEFENSE_PROTOCOL_BETA },
					}),
					crit(60609, {	-- King Ymiron
						["_encounter"] = { 644, DEFENSE_PROTOCOL_BETA },
					}),
				})),
				applyclassicphase(WRATH_PHASE_FOUR, ach(19437, {	-- Defense Protocol Gamma: Utgarde Pinnacle
					crit(63367, {	-- Svala Sorrowgrave
						["_encounter"] = { 641, DEFENSE_PROTOCOL_GAMMA },
					}),
					crit(63371, {	-- Gortok Palehoof
						["_encounter"] = { 642, DEFENSE_PROTOCOL_GAMMA },
					}),
					crit(63369, {	-- Skadi the Ruthless
						["_encounter"] = { 643, DEFENSE_PROTOCOL_GAMMA },
					}),
					crit(63366, {	-- King Ymiron
						["_encounter"] = { 644, DEFENSE_PROTOCOL_GAMMA },
					}),
				})),
				-- #endif
				ach(499, {	-- Heroic: Utgarde Pinnacle
					crit(6864, {	-- Svala Sorrowgrave
						["_encounter"] = { 641, DIFFICULTY.DUNGEON.HEROIC },
					}),
					crit(6865, {	-- Gortok Palehoof
						["_encounter"] = { 642, DIFFICULTY.DUNGEON.HEROIC },
					}),
					crit(6863, {	-- Skadi the Ruthless
						["_encounter"] = { 643, DIFFICULTY.DUNGEON.HEROIC },
					}),
					crit(5618, {	-- King Ymiron
						["_encounter"] = { 644, DIFFICULTY.DUNGEON.HEROIC },
					}),
				}),
			}),
			n(QUESTS, {
				q(13131, {	-- Junk in My Trunk
					["qg"] = 30871,	-- Brigg Smallshanks
					["lvl"] = lvlsquish(78, 78, 20),
					["groups"] = {
						objective(1, {	-- 0/5 Untarnished Silver Bar
							["providers"] = {
								{ "i",  43238 },	-- Untarnished Silver Bar
								{ "o", 192941 },	-- Untarnished Silver Bar
							},
						}),
						objective(2, {	-- 0/3 Shiny Bauble
							["providers"] = {
								{ "i",  43239 },	-- Shiny Bauble
								{ "o", 192942 },	-- Shiny Bauble
								{ "o", 192943 },	-- Shiny Bauble
							},
						}),
						objective(3, {	-- 0/2 Golden Goblet
							["providers"] = {
								{ "i",  43240 },	-- Golden Goblet
								{ "o", 192944 },	-- Golden Goblet
							},
						}),
						objective(4, {	-- 0/1 Jade Statue
							["providers"] = {
								{ "i",  43241 },	-- Jade Statue
								{ "o", 192945 },	-- Jade Statue
							},
						}),
						i(44404),	-- Bauble-Woven Gown
						i(44405),	-- Exotic Leather Tunic
						i(44406),	-- Gilded Ringmail Hauberk
						i(44407),	-- Silver-Plated Battlechest
					},
				}),
				q(13132, {	-- Vengeance Be Mine!
					["qg"] = 30871,	-- Brigg Smallshanks
					["lvl"] = lvlsquish(78, 78, 20),
					["groups"] = {
						objective(1, {	-- 0/1 King Ymiron slain
							["provider"] = { "n", 26861 },	-- King Ymiron
						}),
						i(44408),	-- Cowl of the Vindictive Captain
						i(44412),	-- Faceguard of Punishment
						i(44409),	-- Headguard of Retaliation
						i(44410),	-- Helmet of Just Retribution
						i(44411),	-- Platehelm of Irate Revenge
					},
				}),
				q(29864, {	-- Working at the Source, No actual awards.
					["qg"] = 56072,	-- Image of Argent Confessor Paletress
					["timeline"] = { ADDED_4_3_0 },
					["lvl"] = lvlsquish(78, 78, 20),
				}),
			}),
			n(ZONE_DROPS, {
				-- #if AFTER 7.3.5
				i(37590),	-- Bands of Fading Light
				i(37068),	-- Berserker's Sabatons
				i(37069),	-- Dragonflayer Seer's Bindings
				i(37070),	-- Tundra Wolf Boots
				i(37587),	-- Ymirjar Physician's Robe
				-- #endif
				i(37372, {	-- Harpoon
					["description"] = "Gather 3 of these harpoons and then bring him down in one go by clicking each of the launchers.",
					["cr"] = 26692,	-- Ymirjar Harpooner
				}),
			}),
			d(DIFFICULTY.DUNGEON.NORMAL, {
				-- #if BEFORE 7.3.5
				n(ZONE_DROPS, {
					i(37068),	-- Berserker's Sabatons
					i(37069),	-- Dragonflayer Seer's Bindings
					i(37070),	-- Tundra Wolf Boots
				}),
				-- #endif
				e(641, {	-- Svala Sorrowgrave
					["crs"] = {
						26668,	-- Svala Sorrowgrave
						29281,	-- Svala Sorrowgrave useless form
					},
					["groups"] = {
						i(37037),	-- Ritualistic Arthame
						i(37038),	-- Brazier Igniter
						-- #if AFTER 7.3.5
						i(37368),	-- Silent Spectator Shoulderpads (7.3.5 - Used to be only Heroic Mode)
						i(37370),	-- Cuffs of the Trussed Hall (7.3.5 - Used to be only Heroic Mode)
						-- #endif
						i(37040),	-- Svala's Bloodied Shackles
						i(37043),	-- Tear-Linked Gauntlets
						-- #if AFTER 7.3.5
						i(37369),	-- Sorrowgrave's Breeches (7.3.5 - Used to be only Heroic Mode)
						i(37367),	-- Echoing Stompers (7.3.5 - Used to be only Heroic Mode)
						-- #endif
					},
				}),
				e(642, {	-- Gortok Palehoof
					["creatureID"] = 26687,	-- Gortok Palehoof
					["groups"] = {
						i(37050),	-- Trophy Gatherer
						i(37051),	-- Seal of Valgarde
						-- #if AFTER 7.3.5
						i(37376),	-- Ferocious Pauldrons of the Rhino (7.3.5 - Used to be only Heroic Mode)
						i(37373),	-- Massive Spaulders of the Jormungar (7.3.5 - Used to be only Heroic Mode)
						-- #endif
						i(37048),	-- Shroud of Resurrection
						i(37052),	-- Reanimated Armor
						-- #if AFTER 7.3.5
						i(37374),	-- Ravenous Leggings of the Furbolg (7.3.5 - Used to be only Heroic Mode)
						i(37371),	-- Ring of the Frenzied Wolvar (7.3.5 - Used to be only Heroic Mode)
						-- #endif
					},
				}),
				e(643, {	-- Skadi the Ruthless
					["creatureID"] = 26693,	-- Skadi the Ruthless
					["groups"] = {
						-- #if AFTER 7.3.5
						i(37384),	-- Staff of Wayward Principles (7.3.5 - Used to be only Heroic Mode)
						i(37377),	-- Netherbreath Spellblade (7.3.5 - Used to be only Heroic Mode)
						-- #endif
						i(37053),	-- Amulet of Deflected Blows
						i(37055),	-- Silken Amice of the Ymijar
						i(37057),	-- Dark Rider's Tunic
						-- #if AFTER 7.3.5
						i(37379),	-- Skadi's Iron Belt (7.3.5 - Used to be only Heroic Mode)
						i(37389),	-- Crenelation Leggings (7.3.5 - Used to be only Heroic Mode)
						-- #endif
						i(37056),	-- Harpooner's Striders
						i(157560, {	-- Skadi's Scaled Boots
							["timeline"] = { ADDED_7_3_5 },
						}),
					},
				}),
				e(644, {	-- King Ymiron
					["creatureID"] = 26861,	-- King Ymiron
					["groups"] = {
						i(41797),	-- Design: Austere Earthsiege Diamond
						i(37060),	-- Jeweled Coronation Sword
						-- #if AFTER 7.3.5
						i(37401),	-- Red Sword of Courage (7.3.5 - Used to be only Heroic Mode)
						-- #endif
						i(37065),	-- Ymiron's Blade
						i(37061),	-- Tor's Crest
						i(37062),	-- Crown of the Forgotten Kings
						-- #if AFTER 7.3.5
						i(37397),	-- Gold Amulet of Kings (7.3.5 - Used to be only Heroic Mode)
						-- #endif
						i(37067),	-- Ceremonial Pyre Mantle
						-- #if AFTER 7.3.5
						i(37398),	-- Mantle of Discarded Ways (7.3.5 - Used to be only Heroic Mode)
						i(37395),	-- Ornamented Plate Regalia (7.3.5 - Used to be only Heroic Mode)
						i(37409),	-- Gilt-Edged Leather Gauntlets (7.3.5 - Used to be only Heroic Mode)
						i(37408),	-- Girdle of Bane (7.3.5 - Used to be only Heroic Mode)
						i(37407),	-- Sovereign's Belt (7.3.5 - Used to be only Heroic Mode)
						-- #endif
						i(37066),	-- Ancient Royal Legguards
						i(37058),	-- Signet of Ranulf
						-- #if AFTER 7.3.5
						i(37390),	-- Meteorite Whetstone (7.3.5 - Used to be only Heroic Mode)
						-- #endif
						i(37064),	-- Vestige of Haldor
					},
				}),
			}),
			d(DIFFICULTY.DUNGEON.HEROIC, {
				["lvl"] = lvlsquish(80, 80, 30),
				["groups"] = {
					-- #if BEFORE 7.3.5
					n(ZONE_DROPS, {
						i(37590),	-- Bands of Fading Light
						i(37410, {	-- Tracker's Balanced Knives
							["timeline"] = { REMOVED_5_0_4 },
						}),
						i(37587),	-- Ymirjar Physician's Robe
					}),
					-- #endif
					-- #if BEFORE CATA
					n(COMMON_BOSS_DROPS, {
						currency(101, {	-- Emblem of Heroism
							["timeline"] = { ADDED_3_0_2, REMOVED_4_0_1 },
						}),
					}),
					-- #endif
					e(641, {	-- Svala Sorrowgrave
						["creatureID"] = 26668,	-- Svala Sorrowgrave
						["groups"] = {
							ach(2043),	-- The Incredible Hulk
							-- #if AFTER 7.3.5
							i(37037),	-- Ritualistic Arthame (7.3.5 - Used to be only Normal Mode)
							i(37038),	-- Brazier Igniter (7.3.5 - Used to be only Normal Mode)
							-- #endif
							i(37368),	-- Silent Spectator Shoulderpads
							i(37370),	-- Cuffs of the Trussed Hall
							-- #if AFTER 7.3.5
							i(37040),	-- Svala's Bloodied Shackles (7.3.5 - Used to be only Normal Mode)
							i(37043),	-- Tear-Linked Gauntlets (7.3.5 - Used to be only Normal Mode)
							-- #endif
							i(37369),	-- Sorrowgrave's Breeches
							i(37367),	-- Echoing Stompers
						},
					}),
					e(642, {	-- Gortok Palehoof
						["creatureID"] = 26687,	-- Gortok Palehoof
						["groups"] = {
							-- #if AFTER 7.3.5
							i(37050),	-- Trophy Gatherer (7.3.5 - Used to be only Normal Mode)
							i(37051),	-- Seal of Valgarde (7.3.5 - Used to be only Normal Mode)
							-- #endif
							i(37376),	-- Ferocious Pauldrons of the Rhino
							i(37373),	-- Massive Spaulders of the Jormungar
							-- #if AFTER 7.3.5
							i(37048),	-- Shroud of Resurrection (7.3.5 - Used to be only Normal Mode)
							i(37052),	-- Reanimated Armor (7.3.5 - Used to be only Normal Mode)
							-- #endif
							i(37374),	-- Ravenous Leggings of the Furbolg
							i(37371),	-- Ring of the Frenzied Wolvar
						},
					}),
					e(643, {	-- Skadi the Ruthless
						["creatureID"] = 26693,	-- Skadi the Ruthless
						["groups"] = {
							ach(1873),	-- Lodi Dodi We Loves the Skadi
							ach(2156),	-- My Girl Loves to Skadi All the Time
							i(44151),	-- Blue Proto-Drake (MOUNT!)
							i(37384),	-- Staff of Wayward Principles
							i(37377),	-- Netherbreath Spellblade
							-- #if AFTER 7.3.5
							i(37053),	-- Amulet of Deflected Blows (7.3.5 - Used to be only Normal Mode)
							i(37055),	-- Silken Amice of the Ymijar (7.3.5 - Used to be only Normal Mode)
							i(37057),	-- Dark Rider's Tunic (7.3.5 - Used to be only Normal Mode)
							-- #endif
							i(37379),	-- Skadi's Iron Belt
							i(37389),	-- Crenelation Leggings
							-- #if AFTER 7.3.5
							i(37056),	-- Harpooner's Striders (7.3.5 - Used to be only Normal Mode)
							-- #endif
							i(157560, {	-- Skadi's Scaled Boots
								["timeline"] = { ADDED_7_3_5 },
							}),
						},
					}),
					e(644, {	-- King Ymiron
						["creatureID"] = 26861,	-- King Ymiron
						["groups"] = {
							ach(5105, {	-- Heroic: Utgarde Pinnacle Guild Run
								["timeline"] = { ADDED_4_0_3 },
							}),
							ach(2157),	-- King's Bane
							i(41797),	-- Design: Austere Earthsiege Diamond (7.3.5 - Used to be only Normal Mode)
							-- #if AFTER 7.3.5
							i(37060),	-- Jeweled Coronation Sword (7.3.5 - Used to be only Normal Mode)
							-- #endif
							i(37401),	-- Red Sword of Courage
							-- #if AFTER 7.3.5
							i(37065),	-- Ymiron's Blade (7.3.5 - Used to be only Normal Mode)
							i(37061),	-- Tor's Crest (7.3.5 - Used to be only Normal Mode)
							i(37062),	-- Crown of the Forgotten Kings (7.3.5 - Used to be only Normal Mode)
							-- #endif
							i(37397),	-- Gold Amulet of Kings
							-- #if AFTER 7.3.5
							i(37067),	-- Ceremonial Pyre Mantle (7.3.5 - Used to be only Normal Mode)
							-- #endif
							i(37398),	-- Mantle of Discarded Ways
							i(37395),	-- Ornamented Plate Regalia
							i(37409),	-- Gilt-Edged Leather Gauntlets
							i(37408),	-- Girdle of Bane
							i(37407),	-- Sovereign's Belt
							-- #if AFTER 7.3.5
							i(37066),	-- Ancient Royal Legguards (7.3.5 - Used to be only Normal Mode)
							i(37058),	-- Signet of Ranulf (7.3.5 - Used to be only Normal Mode)
							-- #endif
							i(37390),	-- Meteorite Whetstone
							-- #if AFTER 7.3.5
							i(37064),	-- Vestige of Haldor (7.3.5 - Used to be only Normal Mode)
							-- #endif
							-- #if BEFORE 4.0.1
							i(43669),	-- Locket of the Deceased Queen
							-- #endif
						},
					}),
				},
			}),
			-- #if ANYCLASSIC
			applyclassicphase(WRATH_PHASE_TWO, n(DEFENSE_PROTOCOL_ALPHA, {
				["OnInit"] = FUNCTION_TEMPLATES.OnInit.GenerateShouldExcludeFromTooltipForBuffs(392430, 412770, 424194),
				["lvl"] = lvlsquish(80, 80, 30),
				["groups"] = {
					e(641, {	-- Svala Sorrowgrave
						["creatureID"] = 26668,	-- Svala Sorrowgrave
						["groups"] = {
							i(39296),	-- Accursed Bow of the Elite
							i(39308),	-- Girdle of Lenience
							i(39299),	-- Rapid Attack Gloves
						},
					}),
					e(642, {	-- Gortok Palehoof
						["creatureID"] = 26687,	-- Gortok Palehoof
						["groups"] = {
							i(39284),	-- Miasma Mantle
							i(39298),	-- Waistguard of the Tutor
							i(39295),	-- Cowl of Sheet Lightning
						},
					}),
					e(643, {	-- Skadi the Ruthless
						["creatureID"] = 26693,	-- Skadi the Ruthless
						["groups"] = {
							i(39294),	-- Arc-Scorched Helmet
							i(39297),	-- Cloak of Darkening
							i(39472),	-- Chain of Latent Energies
						},
					}),
					e(644, {	-- King Ymiron
						["creatureID"] = 26861,	-- King Ymiron
						["groups"] = {
							i(39421),	-- Gem of Imprisoned Vassals
							i(39423),	-- Hammer of the Astral Plane
							i(39194),	-- Rusted-Link Spiked Gauntlets
						},
					}),
				},
			})),
			applyclassicphase(WRATH_PHASE_THREE, n(DEFENSE_PROTOCOL_BETA, {
				["OnInit"] = FUNCTION_TEMPLATES.OnInit.GenerateShouldExcludeFromTooltipForBuffs(412770, 424194),
				["lvl"] = lvlsquish(80, 80, 30),
				["groups"] = {
					e(641, {	-- Svala Sorrowgrave
						["creatureID"] = 26668,	-- Svala Sorrowgrave
						["groups"] = {
							i(45331),	-- Rune-Etched Nightblade
							i(45423),	-- Runetouch Wristwraps
						},
					}),
					e(642, {	-- Gortok Palehoof
						["creatureID"] = 26687,	-- Gortok Palehoof
						["groups"] = {
							i(45332),	-- Stormtip
							i(45708),	-- Archaedas' Lost Legplates
						},
					}),
					e(643, {	-- Skadi the Ruthless
						["creatureID"] = 26693,	-- Skadi the Ruthless
						["groups"] = {
							i(45864),	-- Cover of the Keepers
							i(45712),	-- Chestplate of Titanic Fury
						},
					}),
					e(644, {	-- King Ymiron
						["creatureID"] = 26861,	-- King Ymiron
						["groups"] = {
							i(45711),	-- Ironaya's Discarded Mantle
							i(45866),	-- Elemental Focus Stone
							i(45709),	-- Nimble Climber's Belt
						},
					}),
				},
			})),
			applyclassicphase(WRATH_PHASE_FOUR, n(DEFENSE_PROTOCOL_GAMMA, {
				["OnInit"] = FUNCTION_TEMPLATES.OnInit.GenerateShouldExcludeFromTooltipForBuffs(424194),
				["lvl"] = lvlsquish(80, 80, 30),
				["groups"] = {
					e(641, {	-- Svala Sorrowgrave
						["creatureID"] = 26668,	-- Svala Sorrowgrave
						["groups"] = {

						},
					}),
					e(642, {	-- Gortok Palehoof
						["creatureID"] = 26687,	-- Gortok Palehoof
						["groups"] = {

						},
					}),
					e(643, {	-- Skadi the Ruthless
						["creatureID"] = 26693,	-- Skadi the Ruthless
						["groups"] = {

						},
					}),
					e(644, {	-- King Ymiron
						["creatureID"] = 26861,	-- King Ymiron
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
	inst(286, {
		q(35452),	-- Utgarde Pinnacle - Bonus Objective Reward
		q(35454),	-- Utgarde Pinnacle - Bonus Objective Reward
		q(35449),	-- Utgarde Pinnacle Reward Quest - Normal completion
		q(35453),	-- Utgarde Pinnacle Reward Quest - Heroic completion
	}),
})));
