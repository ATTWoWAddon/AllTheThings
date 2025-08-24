-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
root(ROOTS.Instances, expansion(EXPANSION.WRATH, applyclassicphase(WRATH_PHASE_ONE, bubbleDownSelf({ ["timeline"] = { ADDED_3_0_2 } }, {
	inst(271, {	-- Ahn'kahet: The Old Kingdom
		["mapID"] = AHNKAHET_THE_OLD_KINGDOM,
		["coord"] = { 28.3, 51.6, DRAGONBLIGHT },
		["lvl"] = lvlsquish(68, 68, 15),
		["groups"] = {
			n(ACHIEVEMENTS, {
				ach(481, {	-- Ahn'kahet: The Old Kingdom
					crit(5439, {	-- Prince Taldaram
						["_encounter"] = { 581, DIFFICULTY.DUNGEON.NORMAL },
					}),
					crit(5440, {	-- Elder Nadox
						["_encounter"] = { 580, DIFFICULTY.DUNGEON.NORMAL },
					}),
					crit(5441, {	-- Jedoga Shadowseeker
						["_encounter"] = { 582, DIFFICULTY.DUNGEON.NORMAL },
					}),
					-- #if ANYCLASSIC
					-- NOTE: This boss has a different criteriaUID in classic for some dumb reason. BLIZZARD.
					crit(5624, {	-- Herald Volazj
						["_encounter"] = { 584, DIFFICULTY.DUNGEON.NORMAL },
					}),
					-- #else
					crit(5442, {	-- Herald Volazj
						["_encounter"] = { 584, DIFFICULTY.DUNGEON.NORMAL },
					}),
					-- #endif
				}),
				-- #if ANYCLASSIC
				applyclassicphase(WRATH_PHASE_TWO, ach(17291, {	-- Defense Protocol Alpha: Ahn'kahet: The Old Kingdom
					crit(57731, {	-- Elder Nadox
						["_encounter"] = { 580, DEFENSE_PROTOCOL_ALPHA },
					}),
					crit(57733, {	-- Prince Taldaram
						["_encounter"] = { 581, DEFENSE_PROTOCOL_ALPHA },
					}),
					crit(57734, {	-- Amanitar
						["_encounter"] = { 583, DEFENSE_PROTOCOL_ALPHA },
					}),
					crit(57732, {	-- Jedoga Shadowseeker
						["_encounter"] = { 582, DEFENSE_PROTOCOL_ALPHA },
					}),
					crit(57730, {	-- Herald Volazj
						["_encounter"] = { 584, DEFENSE_PROTOCOL_ALPHA },
					}),
				})),
				applyclassicphase(WRATH_PHASE_THREE, ach(18593, {	-- Defense Protocol Beta: Ahn'kahet: The Old Kingdom
					crit(60583, {	-- Elder Nadox
						["_encounter"] = { 580, DEFENSE_PROTOCOL_BETA },
					}),
					crit(60586, {	-- Prince Taldaram
						["_encounter"] = { 581, DEFENSE_PROTOCOL_BETA },
					}),
					crit(60585, {	-- Amanitar
						["_encounter"] = { 583, DEFENSE_PROTOCOL_BETA },
					}),
					crit(60584, {	-- Jedoga Shadowseeker
						["_encounter"] = { 582, DEFENSE_PROTOCOL_BETA },
					}),
					crit(60582, {	-- Herald Volazj
						["_encounter"] = { 584, DEFENSE_PROTOCOL_BETA },
					}),
				})),
				applyclassicphase(WRATH_PHASE_FOUR, ach(19430, {	-- Defense Protocol Gamma: Ahn'kahet: The Old Kingdom
					crit(63330, {	-- Elder Nadox
						["_encounter"] = { 580, DEFENSE_PROTOCOL_GAMMA },
					}),
					crit(63332, {	-- Prince Taldaram
						["_encounter"] = { 581, DEFENSE_PROTOCOL_GAMMA },
					}),
					crit(63333, {	-- Amanitar
						["_encounter"] = { 583, DEFENSE_PROTOCOL_GAMMA },
					}),
					crit(63331, {	-- Jedoga Shadowseeker
						["_encounter"] = { 582, DEFENSE_PROTOCOL_GAMMA },
					}),
					crit(63329, {	-- Herald Volazj
						["_encounter"] = { 584, DEFENSE_PROTOCOL_GAMMA },
					}),
				})),
				-- #endif
				ach(492, {	-- Heroic: Ahn'kahet: The Old Kingdom
					crit(6851, {	-- Prince Taldaram
						["_encounter"] = { 581, DIFFICULTY.DUNGEON.HEROIC },
					}),
					crit(6852, {	-- Elder Nadox
						["_encounter"] = { 580, DIFFICULTY.DUNGEON.HEROIC },
					}),
					crit(6853, {	-- Jedoga Shadowseeker
						["_encounter"] = { 582, DIFFICULTY.DUNGEON.HEROIC },
					}),
					crit(5611, {	-- Herald Volazj
						["_encounter"] = { 584, DIFFICULTY.DUNGEON.HEROIC },
					}),
					crit(5054, {	-- Amanitar
						["_encounter"] = { 583, DIFFICULTY.DUNGEON.HEROIC },
					}),
				}),
			}),
			n(QUESTS, {
				q(13190, {	-- All Things in Good Time
					["qg"] = 26653,	-- Kilix the Unraveler
					["coord"] = { 26.2, 50.6, DRAGONBLIGHT },
					["isDaily"] = true,
					["lvl"] = lvlsquish(80, 80, 30),
					["groups"] = {
						objective(1, {	-- Ahn'kahar Watcher Corpse Burned
							["provider"] = { "i", 43494 },	-- Ahn'kahar Watcher's Corpse
							["cr"] = 31104,	-- Ahn'kahar Watcher
						}),
					},
				}),
				q(13204, {	-- Funky Fungi
					["provider"] = { "i", 43512 },	-- Ooze-Covered Fungus
					["timeline"] = { REMOVED_4_3_0 },
					["lvl"] = lvlsquish(73, 73, 15),
					["groups"] = {
						objective(1, {	-- 0/6 Grotesque Fungus
							["provider"] = { "i", 43511 },	-- Grotesque Fungus
						}),
					},
				}),
				q(29825, {	-- Pupil No More
					["qg"] = 55658,	-- Seer Ixit
					["timeline"] = { ADDED_4_3_0 },
					["lvl"] = lvlsquish(71, 71, 15),
					["groups"] = {
						objective(1, {	-- 0/1 Elder Nadox slain
							["provider"] = { "n", 29309 },	-- Elder Nadox
						}),
					},
				}),
				q(29826, {	-- Reclaiming Ahn'Kahet
					["sourceQuest"] = 29825,	-- Pupil No More
					["qg"] = 55658,	-- Seer Ixit
					["timeline"] = { ADDED_4_3_0 },
					["lvl"] = lvlsquish(71, 71, 15),
					["groups"] = {
						objective(1, {	-- 0/3 Eye of Taldaram slain
							["provider"] = { "n", 30285 },	-- Eye of Taldaram
						}),
						objective(2, {	-- 0/1 Bonegrinder slain
							["provider"] = { "n", 30284 },	-- Bonegrinder
						}),
						objective(3, {	-- 0/1 Prince Taldaram slain
							["provider"] = { "n", 29308 },	-- Prince Taldaram
						}),
					},
				}),
				q(13187, {	-- The Faceless Ones
					-- #if AFTER 4.3.0.14732
					["qg"] = 55658,	-- Seer Ixit
					["sourceQuest"] = 29826,	-- Reclaiming Ahn'Kahet
					-- #else
					["provider"] =  {"n", 26653 },	-- Kilix the Unraveler
					["coord"] = { 26.2, 50.6, DRAGONBLIGHT },
					-- #endif
					["lvl"] = lvlsquish(71, 71, 15),
					["groups"] = {
						objective(1, {	-- 0/3 Forgotten One slain
							["provider"] = { "n", 30414 },	-- Forgotten One
						}),
						objective(2, {	-- 0/1 Herald Volazj slain
							["provider"] = { "n", 29311 },	-- Herald Volazj
						}),
						i(44353),	-- Epaulets of the Faceless Ones
						i(44350),	-- Mantle of Thwarted Evil
						i(44351),	-- Shoulderpads of Abhorrence
						i(44352),	-- Shoulderplates of the Abolished
					},
				}),
			}),
			n(ZONE_DROPS, {
				i(43512, {	-- Ooze-Covered Fungus
					["cr"] = 30329,	-- Savage Cave Beast
					["timeline"] = { REMOVED_4_3_0 },
				}),
				-- #if AFTER 7.3.5
				i(35616, {	-- Spored Tendrils Spaulders
					["timeline"] = { CREATED_3_0_2, ADDED_7_3_5 },
				}),
				-- #endif
			}),
			d(DIFFICULTY.DUNGEON.NORMAL, {
				n(ZONE_DROPS, {
					i(35615),	-- Glowworm Cavern Bindings
					-- #if BEFORE 7.3.5
					i(35616),	-- Spored Tendrils Spaulders
					-- #endif
				}),
				e(580, {	-- Elder Nadox
					["creatureID"] = 29309,	-- Elder Nadox
					["groups"] = {
						i(35606),	-- Blade of Nadox
						-- #if AFTER 7.3.5
						i(37592),	-- Brood Plague Helmet (7.3.5 - Used to be only Heroic Mode)
						i(37594),	-- Elder Headpiece (7.3.5 - Used to be only Heroic Mode)
						i(37593),	-- Sprinting Shoulderpads (7.3.5 - Used to be only Heroic Mode)
						-- #endif
						i(35607),	-- Ahn'kahar Handwraps
						i(35608),	-- Crawler-Emblem Belt
						-- #if AFTER 7.3.5
						i(37591),	-- Nerubian Shield Ring (7.3.5 - Used to be only Heroic Mode)
						-- #endif
					},
				}),
				e(581, {	-- Prince Taldaram
					["creatureID"] = 29308,	-- Prince Taldaram
					["groups"] = {
						i(35609),	-- Talisman of Scourge Command
						-- #if AFTER 7.3.5
						i(37595),	-- Necklace of Taldaram (7.3.5 - Used to be only Heroic Mode)
						-- #endif
						i(35610),	-- Slasher's Amulet
						-- #if AFTER 7.3.5
						i(37612),	-- Bonegrinder Breastplate (7.3.5 - Used to be only Heroic Mode)
						i(37613),	-- Flame Sphere Bindings (7.3.5 - Used to be only Heroic Mode)
						i(37614),	-- Gauntlets of the Plundering Geist (7.3.5 - Used to be only Heroic Mode)
						-- #endif
						i(35611),	-- Gloves of the Blood Prince
					},
				}),
				e(582, {	-- Jedoga Shadowseeker
					["creatureID"] = 29310,	-- Jedoga Shadowseeker
					["groups"] = {
						-- #if AFTER 7.3.5
						i(43281),	-- Edge of Oblivion (7.3.5 - Used to be only Heroic Mode)
						i(44191, {	-- Ice-Rimed Chopper (7.3.5 - Used to be only Heroic Mode)
							["timeline"] = { ADDED_6_2_0 },
						}),
						i(43280),	-- Faceguard of the Hammer Clan (7.3.5 - Used to be only Heroic Mode)
						i(43282),	-- Shadowseeker's Pendant (7.3.5 - Used to be only Heroic Mode)
						-- #endif
						i(43278),	-- Cloak of the Darkcaster
						-- #if AFTER 7.3.5
						i(43283),	-- Subterranean Waterfall Shroud (7.3.5 - Used to be only Heroic Mode)
						-- #endif
						i(43279),	-- Battlechest of the Twilight Cult
						i(43277),	-- Jedoga's Greatring
					},
				}),
				e(584, {	-- Herald Volazj
					["creatureID"] = 29311,	-- Herald Volazj
					["groups"] = {
						-- #if AFTER 7.3.5
						i(37617),	-- Staff of Sinister Claws (7.3.5 - Used to be only Heroic Mode)
						i(37615),	-- Titanium Compound Bow (7.3.5 - Used to be only Heroic Mode)
						i(37619),	-- Wand of Ahn'kahet (7.3.5 - Used to be only Heroic Mode)
						-- #endif
						i(35612),	-- Mantle of Echoing Bats
						-- #if AFTER 7.3.5
						i(37620),	-- Bracers of the Herald (7.3.5 - Used to be only Heroic Mode)
						i(37623),	-- Fiery Obelisk Handguards (7.3.5 - Used to be only Heroic Mode)
						-- #endif
						i(35613),	-- Pyramid Embossed Belt
						-- #if AFTER 7.3.5
						i(37616),	-- Kilt of the Forgotten One (7.3.5 - Used to be only Heroic Mode)
						i(37622),	-- Skirt of the Old Kingdom (7.3.5 - Used to be only Heroic Mode)
						i(37618),	-- Greaves of Ancient Evil (7.3.5 - Used to be only Heroic Mode)
						-- #endif
						i(35614),	-- Volazj's Sabatons
					},
				}),
			}),
			d(DIFFICULTY.DUNGEON.HEROIC, {
				["lvl"] = lvlsquish(80, 80, 30),
				["groups"] = {
					n(ZONE_DROPS, {
						i(37624),	-- Stained-Glass Shard Ring
						i(37625),	-- Web Winder Gloves
					}),
					-- #if BEFORE CATA
					n(COMMON_BOSS_DROPS, {
						currency(101, {	-- Emblem of Heroism
							["timeline"] = { ADDED_3_0_2, REMOVED_4_0_1 },
						}),
					}),
					-- #endif
					e(580, {	-- Elder Nadox
						["creatureID"] = 29309,	-- Elder Nadox
						["groups"] = {
							ach(2038),	-- Respect Your Elders
							-- #if AFTER 7.3.5
							i(35606),	-- Blade of Nadox (7.3.5 - Used to be only Normal Mode)
							-- #endif
							i(37592),	-- Brood Plague Helmet
							i(37594),	-- Elder Headpiece
							i(37593),	-- Sprinting Shoulderpads
							-- #if AFTER 7.3.5
							i(35607),	-- Ahn'kahar Handwraps (7.3.5 - Used to be only Normal Mode)
							i(35608),	-- Crawler-Emblem Belt (7.3.5 - Used to be only Normal Mode)
							-- #endif
							i(37591),	-- Nerubian Shield Ring
						},
					}),
					e(581, {	-- Prince Taldaram
						["creatureID"] = 29308,	-- Prince Taldaram
						["groups"] = {
							-- #if AFTER 7.3.5
							i(35609),	-- Talisman of Scourge Command (7.3.5 - Used to be only Normal Mode)
							-- #endif
							i(37595),	-- Necklace of Taldaram
							-- #if AFTER 7.3.5
							i(35610),	-- Slasher's Amulet (7.3.5 - Used to be only Normal Mode)
							-- #endif
							i(37612),	-- Bonegrinder Breastplate
							i(37613),	-- Flame Sphere Bindings
							i(37614),	-- Gauntlets of the Plundering Geist
							-- #if AFTER 7.3.5
							i(35611),	-- Gloves of the Blood Prince (7.3.5 - Used to be only Normal Mode)
							-- #endif
						},
					}),
					e(583, {	-- Amanitar
						["creatureID"] = 30258,	-- Amanitar
						["groups"] = {
							i(43284),	-- Amanitar Skullbow
							i(43285),	-- Amulet of the Spell Flinger
							i(43287),	-- Silken Bridge Handwraps
							i(43286),	-- Legguards of Swarming Attacks
						},
					}),
					e(582, {	-- Jedoga Shadowseeker
						["creatureID"] = 29310,	-- Jedoga Shadowseeker
						["groups"] = {
							ach(2056),	-- Volunteer Work
							i(43281),	-- Edge of Oblivion
							i(44191, {	-- Ice-Rimed Chopper
								["timeline"] = { ADDED_6_2_0 },
							}),
							i(43280),	-- Faceguard of the Hammer Clan
							i(43282),	-- Shadowseeker's Pendant
							-- #if AFTER 7.3.5
							i(43278),	-- Cloak of the Darkcaster (7.3.5 - Used to be only Normal Mode)
							-- #endif
							i(43283),	-- Subterranean Waterfall Shroud
							-- #if AFTER 7.3.5
							i(43279),	-- Battlechest of the Twilight Cult (7.3.5 - Used to be only Normal Mode)
							i(43277),	-- Jedoga's Greatring (7.3.5 - Used to be only Normal Mode)
							-- #endif
						},
					}),
					e(584, {	-- Herald Volazj
						["creatureID"] = 29311,	-- Herald Volazj
						["groups"] = {
							ach(5098, {	-- Heroic: Ahn'kahet: The Old Kingdom Guild Run
								["timeline"] = { ADDED_4_0_3 },
							}),
							ach(1862),	-- Volazj's Quick Demise
							i(41790),	-- Design: Precise Scarlet Ruby
							i(37617),	-- Staff of Sinister Claws
							i(37615),	-- Titanium Compound Bow
							i(37619),	-- Wand of Ahn'kahet
							-- #if AFTER 7.3.5
							i(35612),	-- Mantle of Echoing Bats (7.3.5 - Used to be only Normal Mode)
							-- #endif
							i(37620),	-- Bracers of the Herald
							i(37623),	-- Fiery Obelisk Handguards
							-- #if AFTER 7.3.5
							i(35613),	-- Pyramid Embossed Belt (7.3.5 - Used to be only Normal Mode)
							-- #endif
							i(37616),	-- Kilt of the Forgotten One
							i(37622),	-- Skirt of the Old Kingdom
							i(37618),	-- Greaves of Ancient Evil
							-- #if AFTER 7.3.5
							i(35614),	-- Volazj's Sabatons (7.3.5 - Used to be only Normal Mode)
							-- #endif
							-- #if BEFORE 4.0.1
							i(43821),	-- Faceless One's Withered Brain
							-- #endif
						},
					}),
				},
			}),
			-- #if ANYCLASSIC
			applyclassicphase(WRATH_PHASE_TWO, n(DEFENSE_PROTOCOL_ALPHA, {
				["OnInit"] = FUNCTION_TEMPLATES.OnInit.GenerateShouldExcludeFromTooltipForBuffs(394437, 412470, 424201),
				["lvl"] = lvlsquish(80, 80, 30),
				["groups"] = {
					e(580, {	-- Elder Nadox
						["creatureID"] = 29309,	-- Elder Nadox
						["groups"] = {
							i(39249),	-- Shoulderplates of Bloodshed
							i(39255),	-- Staff of the Plague Beast
							i(39263),	-- Dissevered Leggings
						},
					}),
					e(581, {	-- Prince Taldaram
						["creatureID"] = 29308,	-- Prince Taldaram
						["groups"] = {
							i(39260),	-- Helm of the Corrupted Mind
							i(39247),	-- Cuffs of Dark Shadows
							i(39251),	-- Necrogenic Belt
						},
					}),
					e(583, {	-- Amanitar
						["creatureID"] = 30258,	-- Amanitar
						["groups"] = {
							i(39247),	-- Cuffs of Dark Shadows
							i(39260),	-- Helm of the Corrupted Mind
							i(39251),	-- Necrogenic Belt
						},
					}),
					e(582, {	-- Jedoga Shadowseeker
						["creatureID"] = 29310,	-- Jedoga Shadowseeker
						["groups"] = {
							i(39246),	-- Amulet of Autopsy
							i(39250),	-- Ring of Holy Cleansing
							i(39258),	-- Legplates of Inescapable Death
						},
					}),
					e(584, {	-- Herald Volazj
						["creatureID"] = 29311,	-- Herald Volazj
						["groups"] = {
							i(39417),	-- Death's Bite
							i(40486),	-- Necklace of the Glittering Chamber
							i(43998),	-- Chestguard of Flagrant Prowess
						},
					}),
				},
			})),
			applyclassicphase(WRATH_PHASE_THREE, n(DEFENSE_PROTOCOL_BETA, {
				["OnInit"] = FUNCTION_TEMPLATES.OnInit.GenerateShouldExcludeFromTooltipForBuffs(412470, 424201),
				["lvl"] = lvlsquish(80, 80, 30),
				["groups"] = {
					e(580, {	-- Elder Nadox
						["creatureID"] = 29309,	-- Elder Nadox
						["groups"] = {
							i(45314),	-- Igniter Rod
							i(45310),	-- Gauntlets of the Iron Furnace
						},
					}),
					e(581, {	-- Prince Taldaram
						["creatureID"] = 29308,	-- Prince Taldaram
						["groups"] = {
							i(45321),	-- Pauldrons of Tempered Will
							i(46019),	-- Leggings of the Insatiable
						},
					}),
					e(583, {	-- Amanitar
						["creatureID"] = 30258,	-- Amanitar
						["groups"] = {
							i(45309),	-- Rifle of the Platinum Guard
							i(45317),	-- Shawl of the Caretaker
						},
					}),
					e(582, {	-- Jedoga Shadowseeker
						["creatureID"] = 29310,	-- Jedoga Shadowseeker
						["groups"] = {
							i(45701),	-- Greaves of the Earthbinder
							i(45702),	-- Emerald Signet Ring
						},
					}),
					e(584, {	-- Herald Volazj
						["creatureID"] = 29311,	-- Herald Volazj
						["groups"] = {
							i(45696),	-- Mark of the Unyielding
							i(45699),	-- Pendant of the Piercing Glare
							i(45704),	-- Shawl of the Shattered Giant
						},
					}),
				},
			})),
			applyclassicphase(WRATH_PHASE_FOUR, n(DEFENSE_PROTOCOL_GAMMA, {
				["OnInit"] = FUNCTION_TEMPLATES.OnInit.GenerateShouldExcludeFromTooltipForBuffs(424201),
				["lvl"] = lvlsquish(80, 80, 30),
				["groups"] = {
					e(580, {	-- Elder Nadox
						["creatureID"] = 29309,	-- Elder Nadox
						["groups"] = {

						},
					}),
					e(581, {	-- Prince Taldaram
						["creatureID"] = 29308,	-- Prince Taldaram
						["groups"] = {

						},
					}),
					e(583, {	-- Amanitar
						["creatureID"] = 30258,	-- Amanitar
						["groups"] = {

						},
					}),
					e(582, {	-- Jedoga Shadowseeker
						["creatureID"] = 29310,	-- Jedoga Shadowseeker
						["groups"] = {

						},
					}),
					e(584, {	-- Herald Volazj
						["creatureID"] = 29311,	-- Herald Volazj
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
	inst(271, {
		q(35489),	-- Ahn'kahet: The Old Kingdom Reward Quest - Normal completion
		q(35490),	-- Ahn'kahet: The Old Kingdom Reward Quest - Heroic completion
		q(35493),	-- Ahn'kahet: The Old Kingdom Bonus Reward - kill Amanitar (Heroic only)
	}),
})));
