-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
root(ROOTS.Instances, expansion(EXPANSION.TBC, applyclassicphase(TBC_PHASE_ONE, {
	inst(255, {	-- The Black Morass
		["lore"] = "The Black Morass (also known as Opening of the Dark Portal) is one of the timeways accessible in the Caverns of Time. In this wing, a group of players must defend the last Guardian Medivh, in a swamp known as The Black Morass. The Guardian Medivh, possessed by Sargeras, attempts to open the Dark Portal to Draenor, while wave upon wave of dragonkin of the Infinite Dragonflight attempt to defeat Medivh in order to alter time and halt the invasion of Azeroth from Draenor.",
		-- #if BEFORE MOP
		["zone-text-areaID"] = 2366,	-- The Black Morass
		-- #endif
		["coord"] = { 37.2, 83.3, CAVERNS_OF_TIME },
		["mapID"] = CAVERNS_OF_TIME_BLACK_MORASS,
		["lvl"] = lvlsquish(65, 65, 25),
		["groups"] = {
			n(QUESTS, {
				q(10298, {	-- Hero of the Brood
					["qg"] = 20201,	-- Sa'at
					["sourceQuest"] = 10297,	-- The Opening of the Dark Portal
					["timeline"] = { REMOVED_4_3_0 },
					["lvl"] = lvlsquish(66, 66, 25),
					-- #if BEFORE 4.3.0.14732
					["groups"] = {
						i(29320),	-- Band of the Guardian
						i(29322),	-- Keeper's Ring of Piety
						i(29321),	-- Time-Bending Gem
						i(29323),	-- Andormu's Tear
					},
					-- #endif
				}),
				q(9837, {	-- Return to Khadgar
					["qg"] = 15608,	-- Medivh
					["sourceQuest"] = 9836,	-- The Master's Touch
					["coord"] = { 48.8, 71.8, CAVERNS_OF_TIME_BLACK_MORASS },
					["timeline"] = { REMOVED_7_1_0 },
					["maps"] = { SHATTRATH_CITY },
					["lvl"] = lvlsquish(69, 69, 30),
					["groups"] = {
						i(24490, {	-- The Master's Key
							["timeline"] = { ADDED_2_0_1, DELETED_4_2_0 },
						}),
					},
				}),
				q(10296, {	-- The Black Morass
					["qg"] = 20130,	-- Andormu
					-- #if BEFORE 4.3.0.14732
					["sourceQuest"] = 10285,	-- Return to Andormu
					-- #endif
					["coord"] = { 41.6, 38.5, CAVERNS_OF_TIME },
					["lvl"] = lvlsquish(66, 66, 25),
				}),
				q(9836, {	-- The Master's Touch
					["providers"] = {
						{ "n", 18166 },	-- Khadgar <Sons of Lothar>
						{ "i", 24489 },	-- Restored Apprentice's Key
					},
					["sourceQuest"] = 9832,	-- The Second and Third Fragments
					["coord"] = { 54.8, 44.3, SHATTRATH_CITY },
					["timeline"] = { REMOVED_7_1_0 },
					["lvl"] = lvlsquish(69, 69, 30),
				}),
				q(10297, {	-- The Opening of the Dark Portal
					["qg"] = 20201,	-- Sa'at
					-- TODO Confirm if required in classic
					-- #if ANYCLASSIC
					["sourceQuest"] = 10296,	-- The Black Morass
					-- #endif
					["lvl"] = lvlsquish(66, 66, 25),
					["groups"] = {
						objective(1, {	-- The Dark Portal Opened
							["provider"] = { "i", 24289 },	-- Chrono-beacon
						}),
						i(29320, {	-- Band of the Guardian
							["timeline"] = { ADDED_4_3_0 },
						}),
						i(29322, {	-- Keeper's Ring of Piety
							["timeline"] = { ADDED_4_3_0 },
						}),
						i(29321, {	-- Time-Bending Gem
							["timeline"] = { ADDED_4_3_0 },
						}),
						i(29323, {	-- Andormu's Tear
							["timeline"] = { ADDED_4_3_0 },
						}),
					},
				}),
			}),
			n(ZONE_DROPS, {
				i(31753, {	-- Essence of Infinity
					["crs"] = {
						21104,	-- Rift Keeper
						17839,	-- Rift Lord
					},
				}),
				i(25730, {	-- Pattern: Stylin' Jungle Hat (RECIPE!)
					["crs"] = {
						21104,	-- Rift Keeper
						17839,	-- Rift Lord
					},
				}),
			}),
			d(DIFFICULTY.DUNGEON.NORMAL, {
				e(552, {	-- Chrono Lord Deja
					["creatureID"] = 17879,
					["groups"] = {
						i(27987),	-- Melmorta's Twilight Longbow
						i(27993),	-- Mask of Inner Fire
						i(27994),	-- Mantle of Three Terrors
						i(27995),	-- Sun-Gilded Shouldercaps
						i(27988),	-- Burnoose of Shifting Ages
						-- #if AFTER 7.3.5
						i(27977),	-- Legplates of the Bold (7.3.5 - Moved from Aeonus)
						i(27873),	-- Moonglade Pants (7.3.5 -- Moved from Aeonus)
						-- #endif
						i(27996),	-- Ring of Spiritual Precision
						i(29675, {	-- Pattern: Arcane Armor Kit (RECIPE!)
							["timeline"] = { REMOVED_5_0_4 },
						}),
					},
				}),
				e(553, {	-- Temporus
					["creatureID"] = 17880,
					["groups"] = {
						i(28033),	-- Epoch-Mender
						i(28184),	-- Millennium Blade
						-- #if AFTER 7.3.5
						i(29356),	-- Quantum Blade (7.3.5 - Moved from Aeonus)
						-- #endif
						i(28187),	-- Star-Heart Lamp
						i(28186),	-- Laughing Skull Battle-Harness
						-- #if AFTER 7.3.5
						i(27509),	-- Handgrips of Assassination (7.3.5 - Moved from Aeonus)
						-- #endif
						i(28185),	-- Khadgar's Kilt of Abjuration
						i(28034),	-- Hourglass of the Unraveller
					},
				}),
				e(554, {	-- Aeonus
					["creatureID"] = 17881,
					["groups"] = {
						ach(655, {	-- Opening of the Dark Portal
							-- #if BEFORE WRATH
							["sourceQuests"] = {
								9836,	-- The Master's Touch
								10297,	-- The Opening of the Dark Portal
							},
							-- #endif
						}),
						i(28188),	-- Bloodfire Greatstaff
						i(28189),	-- Latro's Shifting Sword
						i(28206),	-- Cowl of the Guiltless
						i(28192),	-- Helm of Desolation
						i(28193),	-- Mana-Etched Crown
						i(28207),	-- Pauldrons of the Crimson Flight
						-- #if BEFORE 7.3.5
						i(27509),	-- Handgrips of Assassination (7.3.5 - Moved to Temporus)
						-- #endif
						i(28194),	-- Primal Surge Bracers
						-- #if AFTER 7.3.5
						i(29247),	-- Girdle of the Deathdealer
						i(29253),	-- Girdle of Valorous Deeds
						i(30531),	-- Breeches of the Occultist
						-- #endif
						-- #if BEFORE 7.3.5
						i(27977),	-- Legplates of the Bold (7.3.5 - Moved to Chrono Lord Deja)
						-- #endif
						i(27839),	-- Legplates of the Righteous
						-- #if BEFORE 7.3.5
						i(27873),	-- Moonglade Pants (7.3.5 - Moved to Chrono Lord Deja)
						-- #endif
						i(28190),	-- Scarab of the Infinite Cycle
					},
				})
			}),
			d(DIFFICULTY.DUNGEON.HEROIC, {
				-- #if BEFORE 4.2.0
				["description"] = "You need to have a key to the instance in order to access this mode.",
				["cost"] = {
					{ "i", 30635, 1 },	-- Key of Time
				},
				-- #endif
				["lvl"] = lvlsquish(70, 70, 30),
				["groups"] = {
					n(COMMON_BOSS_DROPS, {
						["crs"] = {
							17879,	-- Chrono Lord Deja
							17880,	-- Temporus
							17881,	-- Aeonus
						},
						["groups"] = {
							-- #if BEFORE CATA
							BADGE_OF_JUSTICE,
							-- #endif
							i(30558),	-- Glimmering Fire Opal
							i(30556),	-- Glinting Fire Opal
							i(30555),	-- Glowing Tanzanite
						},
					}),
					e(552, {	-- Chrono Lord Deja
						["creatureID"] = 17879,
						["groups"] = {
							i(27987),	-- Melmorta's Twilight Longbow
							i(27993),	-- Mask of Inner Fire
							i(27994),	-- Mantle of Three Terrors
							i(27995),	-- Sun-Gilded Shouldercaps
							i(27988),	-- Burnoose of Shifting Ages
							-- #if AFTER 7.3.5
							i(27977),	-- Legplates of the Bold (7.3.5 - Moved from Aeonus)
							i(27873),	-- Moonglade Pants (7.3.5 -- Moved from Aeonus)
							-- #endif
							i(27996),	-- Ring of Spiritual Precision
							i(29675, {	-- Pattern: Arcane Armor Kit (RECIPE!)
								["timeline"] = { REMOVED_5_0_4 },
							}),
						},
					}),
					e(553, {	-- Temporus
						["creatureID"] = 17880,
						["groups"] = {
							i(28033),	-- Epoch-Mender
							i(28184),	-- Millennium Blade
							-- #if AFTER 7.3.5
							i(29356),	-- Quantum Blade (7.3.5 - Moved from Aeonus)
							-- #endif
							i(28187),	-- Star-Heart Lamp
							i(28186),	-- Laughing Skull Battle-Harness
							-- #if AFTER 7.3.5
							i(27509),	-- Handgrips of Assassination (7.3.5 - Moved from Aeonus)
							-- #endif
							i(28185),	-- Khadgar's Kilt of Abjuration
							i(28034),	-- Hourglass of the Unraveller
						},
					}),
					e(554, {	-- Aeonus
						["creatureID"] = 17881,
						["groups"] = {
							ach(676, {	-- Heroic: Opening of the Dark Portal
								["timeline"] = { ADDED_3_0_2 },
							}),
							ach(5076, {	-- Heroic: Opening of the Dark Portal Guild Run
								["timeline"] = { ADDED_4_0_3 },
							}),
							i(28188),	-- Bloodfire Greatstaff
							i(28189),	-- Latro's Shifting Sword
							-- #if BEFORE 7.3.5
							i(29356),	-- Quantum Blade (7.3.5 - Moved to Temporus)
							-- #endif
							i(28206),	-- Cowl of the Guiltless
							i(28192),	-- Helm of Desolation
							i(28193),	-- Mana-Etched Crown
							i(28207),	-- Pauldrons of the Crimson Flight
							-- #if BEFORE 7.3.5
							i(27509),	-- Handgrips of Assassination (7.3.5 - Moved to Temporus)
							-- #endif
							i(28194),	-- Primal Surge Bracers
							i(29247),	-- Girdle of the Deathdealer
							i(29253),	-- Girdle of Valorous Deeds
							i(30531),	-- Breeches of the Occultist
							-- #if BEFORE 7.3.5
							i(27977),	-- Legplates of the Bold (7.3.5 - Moved to Chrono Lord Deja)
							-- #endif
							i(27839),	-- Legplates of the Righteous
							-- #if BEFORE 7.3.5
							i(27873),	-- Moonglade Pants (7.3.5 - Moved to Chrono Lord Deja)
							-- #endif
							i(28190),	-- Scarab of the Infinite Cycle
							applyclassicphase(TBC_PHASE_ONE, i(23572)),	-- Primal Nether
							i(33858),	-- Aeonus' Hourglass
						},
					})
				}
			}),
		},
	}),
})));

root(ROOTS.HiddenQuestTriggers, {
	expansion(EXPANSION.TBC, bubbleDownSelf({ ["timeline"] = { ADDED_2_0_1 } }, {
		inst(255, {
			q(10737),	-- The Master's Touch Quest Completion Credit?
		}),
	})),
	expansion(EXPANSION.WOD, bubbleDownSelf({ ["timeline"] = { ADDED_6_0_2 } }, {
		inst(255, {
			q(35521),	-- The Black Morass Reward Quest - Normal completion
			q(35522),	-- The Black Morass Reward Quest - Heroic completion
		}),
	})),
});