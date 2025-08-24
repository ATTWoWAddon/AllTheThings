-----------------------------------------------------
--     W O R L D   E V E N T S   M O D U L E       --
-----------------------------------------------------
--[[
root(ROOTS.WorldEvents, applyevent(EVENTS.REMIX_LEGION, n(REMIX_LEGION, bubbleDown({ ["timeline"] = { ADDED_11_2_5, REMOVED_LEGION_REMIX_END } }, {
	n(RAIDS, {
		inst(768, {	-- The Emerald Nightmare
			["isRaid"] = true,
			["coord"] = { 56.3, 36.9, VALSHARAH },
			["maps"] = {
				777,
				778,
				779,
				780,
				781,
				782,
				783,
				784,
				785,
				786,
				787,
				788,
				789,
			},
			["groups"] = {
				n(ACHIEVEMENTS, {
						ach(19946, {	-- Raid Finder: Mogu'shan Vaults
							crit(65677, {	-- The Stone Guard
								["_encounter"] = { 679, DIFFICULTY.LEGACY_RAID.FINDER },
							}),
							crit(65678, {	-- Feng the Accursed
								["_encounter"] = { 689, DIFFICULTY.LEGACY_RAID.FINDER },
							}),
							crit(65679, {	-- Gara'jal the Spiritbinder
								["_encounter"] = { 682, DIFFICULTY.LEGACY_RAID.FINDER },
							}),
							crit(65681, {	-- The Spirit Kings
								["_encounter"] = { 687, DIFFICULTY.LEGACY_RAID.FINDER },
							}),
							crit(65680, {	-- Elegon
								["_encounter"] = { 726, DIFFICULTY.LEGACY_RAID.FINDER },
							}),
							crit(65682, {	-- Will of the Emperor
								["_encounter"] = { 677, DIFFICULTY.LEGACY_RAID.FINDER },
							}),
						}),
						ach(19947, {	-- Mogu'shan Vaults
							crit(65683, {	-- The Stone Guard
								["_encounter"] = { 679, DIFFICULTY.LEGACY_RAID.PLAYER10_NORMAL },
							}),
							crit(65684, {	-- Feng the Accursed
								["_encounter"] = { 689, DIFFICULTY.LEGACY_RAID.PLAYER10_NORMAL },
							}),
							crit(65685, {	-- Gara'jal the Spiritbinder
								["_encounter"] = { 682, DIFFICULTY.LEGACY_RAID.PLAYER10_NORMAL },
							}),
							crit(65686, {	-- The Spirit Kings
								["_encounter"] = { 687, DIFFICULTY.LEGACY_RAID.PLAYER10_NORMAL },
							}),
							crit(65687, {	-- Elegon
								["_encounter"] = { 726, DIFFICULTY.LEGACY_RAID.PLAYER10_NORMAL },
							}),
							crit(65688, {	-- Will of the Emperor
								["_encounter"] = { 677, DIFFICULTY.LEGACY_RAID.PLAYER10_NORMAL },
							}),
						}),
						ach(19948, {	-- Heroic: Mogu'shan Vaults
							crit(65689, {	-- The Stone Guard
								["_encounter"] = { 679, DIFFICULTY.LEGACY_RAID.PLAYER10_HEROIC },
							}),
							crit(65690, {	-- Feng the Accursed
								["_encounter"] = { 689, DIFFICULTY.LEGACY_RAID.PLAYER10_HEROIC },
							}),
							crit(65691, {	-- Gara'jal the Spiritbinder
								["_encounter"] = { 682, DIFFICULTY.LEGACY_RAID.PLAYER10_HEROIC },
							}),
							crit(65692, {	-- The Spirit Kings
								["_encounter"] = { 687, DIFFICULTY.LEGACY_RAID.PLAYER10_HEROIC },
							}),
							crit(65693, {	-- Elegon
								["_encounter"] = { 726, DIFFICULTY.LEGACY_RAID.PLAYER10_HEROIC },
							}),
							crit(65694, {	-- Will of the Emperor
								["_encounter"] = { 677, DIFFICULTY.LEGACY_RAID.PLAYER10_HEROIC },
							}),
						}),
					}),
					d(DIFFICULTY.LEGACY_RAID.FINDER, {
						header(HEADERS.Achievement, 6458, {	-- Guardians of Mogu'shan
							e(679, {	-- The Stone Guard
								["crs"] = {
									60047,	-- Amethyst Guardian
									60051,	-- Cobalt Guardian
									60043,	-- Jade Guardian
									59915,	-- Jasper Guardian
								},
							}),
							e(689, {	-- Feng the Accursed
								["crs"] = { 60009 },	-- Feng the Accursed
							}),
							e(682, {	-- Gara'jal the Spiritbinder
								["crs"] = { 60143 },	-- Gara'jal the Spiritbinder
							}),
						}),
						header(HEADERS.Achievement, 6844, {	-- The Vault of Mysteries
							e(687, {	-- The Spirit Kings
								["crs"] = {
									60708,	-- Meng the Demented
									60709,	-- Qiang the Merciless
									60710,	-- Subetai the Swift
									60701,	-- Zian of the Endless Shadow
								},
							}),
							e(726, {	-- Elegon
								["crs"] = { 60410 },	-- Elegon
							}),
							e(677, {	-- Will of the Emperor
								["crs"] = {
									60400,	-- Jan-xi <Emperor's Open Hand>
									60399,	-- Qin-xi <Emperor's Closed Fist>
								},
							}),
						}),
					}),
					d(DIFFICULTY.LEGACY_RAID.PLAYER10_NORMAL, {
						e(679, {	-- The Stone Guard
							["crs"] = {
								60047,	-- Amethyst Guardian
								60051,	-- Cobalt Guardian
								60043,	-- Jade Guardian
								59915,	-- Jasper Guardian
							},
						}),
						e(689, {	-- Feng the Accursed
							["crs"] = { 60009 },	-- Feng the Accursed
						}),
						e(682, {	-- Gara'jal the Spiritbinder
							["crs"] = { 60143 },	-- Gara'jal the Spiritbinder
						}),
						e(687, {	-- The Spirit Kings
							["crs"] = {
								60708,	-- Meng the Demented
								60709,	-- Qiang the Merciless
								60710,	-- Subetai the Swift
								60701,	-- Zian of the Endless Shadow
							},
						}),
						e(726, {	-- Elegon
							["crs"] = { 60410 },	-- Elegon
						}),
						e(677, {	-- Will of the Emperor
							["crs"] = {
								60400,	-- Jan-xi <Emperor's Open Hand>
								60399,	-- Qin-xi <Emperor's Closed Fist>
							},
						}),
					}),
					d(DIFFICULTY.LEGACY_RAID.PLAYER10_HEROIC, {
						e(679, {	-- The Stone Guard
							["crs"] = {
								60047,	-- Amethyst Guardian
								60051,	-- Cobalt Guardian
								60043,	-- Jade Guardian
								59915,	-- Jasper Guardian
							},
						}),
						e(689, {	-- Feng the Accursed
							["crs"] = { 60009 },	-- Feng the Accursed
						}),
						e(682, {	-- Gara'jal the Spiritbinder
							["crs"] = { 60143 },	-- Gara'jal the Spiritbinder
						}),
						e(687, {	-- The Spirit Kings
							["crs"] = {
								60708,	-- Meng the Demented
								60709,	-- Qiang the Merciless
								60710,	-- Subetai the Swift
								60701,	-- Zian of the Endless Shadow
							},
						}),
						e(726, {	-- Elegon
							["crs"] = { 60410 },	-- Elegon
						}),
						e(677, {	-- Will of the Emperor
							["crs"] = {
								60400,	-- Jan-xi <Emperor's Open Hand>
								60399,	-- Qin-xi <Emperor's Closed Fist>
							},
						}),
					}),
				},
			}),
			inst(330, {	-- Heart of Fear
				["isRaid"] = true,
				["coord"] = { 39.0, 34.9, DREAD_WASTES },	-- Heart of Fear
				["maps"] = {
					474,	-- Oratorium of the Voice
					475,	-- Heart of Fear
				},
				["groups"] = {
					n(ACHIEVEMENTS, {
						ach(19949, {	-- Raid Finder: Heart of Fear
							crit(65696, {	-- Imperial Vizier Zor'lok
								["_encounter"] = { 745, DIFFICULTY.LEGACY_RAID.FINDER },
							}),
							crit(65695, {	-- Blade Lord Ta'yak
								["_encounter"] = { 744, DIFFICULTY.LEGACY_RAID.FINDER },
							}),
							crit(65697, {	-- Garalon
								["_encounter"] = { 713, DIFFICULTY.LEGACY_RAID.FINDER },
							}),
							crit(65698, {	-- Wind Lord Mel'jarak
								["_encounter"] = { 741, DIFFICULTY.LEGACY_RAID.FINDER },
							}),
							crit(65699, {	-- Amber-Shaper Un'sok
								["_encounter"] = { 737, DIFFICULTY.LEGACY_RAID.FINDER },
							}),
							crit(65700, {	-- Grand Empress Shek'zeer
								["_encounter"] = { 743, DIFFICULTY.LEGACY_RAID.FINDER },
							}),
						}),
						ach(19950, {	-- Heart of Fear
							crit(65703, {	-- Imperial Vizier Zor'lok
								["_encounter"] = { 745, DIFFICULTY.LEGACY_RAID.PLAYER10_NORMAL },
							}),
							crit(65706, {	-- Blade Lord Ta'yak
								["_encounter"] = { 744, DIFFICULTY.LEGACY_RAID.PLAYER10_NORMAL },
							}),
							crit(65705, {	-- Garalon
								["_encounter"] = { 713, DIFFICULTY.LEGACY_RAID.PLAYER10_NORMAL },
							}),
							crit(65702, {	-- Wind Lord Mel'jarak
								["_encounter"] = { 741, DIFFICULTY.LEGACY_RAID.PLAYER10_NORMAL },
							}),
							crit(65701, {	-- Amber-Shaper Un'sok
								["_encounter"] = { 737, DIFFICULTY.LEGACY_RAID.PLAYER10_NORMAL },
							}),
							crit(65704, {	-- Grand Empress Shek'zeer
								["_encounter"] = { 743, DIFFICULTY.LEGACY_RAID.PLAYER10_NORMAL },
							}),
						}),
						ach(19951, {	-- Heroic: Heart of Fear
							crit(65707, {	-- Imperial Vizier Zor'lok
								["_encounter"] = { 745, DIFFICULTY.LEGACY_RAID.PLAYER10_HEROIC },
							}),
							crit(65708, {	-- Blade Lord Ta'yak
								["_encounter"] = { 744, DIFFICULTY.LEGACY_RAID.PLAYER10_HEROIC },
							}),
							crit(65709, {	-- Garalon
								["_encounter"] = { 713, DIFFICULTY.LEGACY_RAID.PLAYER10_HEROIC },
							}),
							crit(65710, {	-- Wind Lord Mel'jarak
								["_encounter"] = { 741, DIFFICULTY.LEGACY_RAID.PLAYER10_HEROIC },
							}),
							crit(65711, {	-- Amber-Shaper Un'sok
								["_encounter"] = { 737, DIFFICULTY.LEGACY_RAID.PLAYER10_HEROIC },
							}),
							crit(65712, {	-- Grand Empress Shek'zeer
								["_encounter"] = { 743, DIFFICULTY.LEGACY_RAID.PLAYER10_HEROIC },
							}),
						}),
					}),
					d(DIFFICULTY.LEGACY_RAID.FINDER, {
						header(HEADERS.Achievement, 6718, {	-- The Dread Approach
							e(745, {	-- Imperial Vizier Zor'lok
								["crs"] = { 62980 },	-- Imperial Vizier Zor'lok
							}),
							e(744, {	-- Blade Lord Ta'yak
								["crs"] = { 62543 },	-- Blade Lord Ta'yak
							}),
							e(713, {	-- Garalon
								["crs"] = {
									62164,	-- Garalon	-- Maybe Outside Version
									63191 ,	-- Garalon	-- In Raid Version
								},
							}),
						}),
						header(HEADERS.Achievement, 6845, {	-- Nightmare of Shek'zeer
							e(741, {	-- Wind Lord Mel'jarak
								["crs"] = { 62397 },	-- Wind Lord Mel'jarak
							}),
							e(737, {	-- Amber-Shaper Un'sok
								["crs"] = { 62511 },	-- Amber-Shaper Un'sok
							}),
							e(743, {	-- Grand Empress Shek'zeer
								["crs"] = { 62837 },	-- Grand Empress Shek'zeer
							}),
						}),
					}),
					d(DIFFICULTY.LEGACY_RAID.PLAYER10_NORMAL, {
						e(745, {	-- Imperial Vizier Zor'lok
							["crs"] = { 62980 },	-- Imperial Vizier Zor'lok
						}),
						e(744, {	-- Blade Lord Ta'yak
							["crs"] = { 62543 },	-- Blade Lord Ta'yak
						}),
						e(713, {	-- Garalon
							["crs"] = { 62164 },	-- Garalon
						}),
						e(741, {	-- Wind Lord Mel'jarak
							["crs"] = { 62397 },	-- Wind Lord Mel'jarak
						}),
						e(737, {	-- Amber-Shaper Un'sok
							["crs"] = { 62511 },	-- Amber-Shaper Un'sok
						}),
						e(743, {	-- Grand Empress Shek'zeer
							["crs"] = { 62837 },	-- Grand Empress Shek'zeer
						}),
					}),
					d(DIFFICULTY.LEGACY_RAID.PLAYER10_HEROIC, {
						e(745, {	-- Imperial Vizier Zor'lok
							["crs"] = { 62980 },	-- Imperial Vizier Zor'lok
						}),
						e(744, {	-- Blade Lord Ta'yak
							["crs"] = { 62543 },	-- Blade Lord Ta'yak
						}),
						e(713, {	-- Garalon
							["crs"] = { 62164 },	-- Garalon
						}),
						e(741, {	-- Wind Lord Mel'jarak
							["crs"] = { 62397 },	-- Wind Lord Mel'jarak
						}),
						e(737, {	-- Amber-Shaper Un'sok
							["crs"] = { 62511 },	-- Amber-Shaper Un'sok
						}),
						e(743, {	-- Grand Empress Shek'zeer
							["crs"] = { 62837 },	-- Grand Empress Shek'zeer
						}),
					}),
				},
			}),
			inst(320, {	-- Terrace of Endless Spring
				["isRaid"] = true,
				["coord"] = { 48.4, 61.4, THE_VEILED_STAIR },
				["maps"] = { 456 },	-- Terrace of Endless Spring
				["groups"] = {
					n(ACHIEVEMENTS, {
						ach(19952, {	-- Raid Finder: Terrace of Endless Spring
							crit(65713, {	-- Protectors of the Endless
								["_encounter"] = { 683, DIFFICULTY.LEGACY_RAID.FINDER },
							}),
							crit(65714, {	-- Tsulong
								["_encounter"] = { 742, DIFFICULTY.LEGACY_RAID.FINDER },
							}),
							crit(65715, {	-- Lei Shi
								["_encounter"] = { 729, DIFFICULTY.LEGACY_RAID.FINDER },
							}),
							crit(65716, {	-- Sha of Fear
								["_encounter"] = { 709, DIFFICULTY.LEGACY_RAID.FINDER },
							}),
						}),
						ach(19953, {	-- Terrace of Endless Spring
							crit(65717, {	-- Protectors of the Endless
								["_encounter"] = { 683, DIFFICULTY.LEGACY_RAID.PLAYER10_NORMAL },
							}),
							crit(65718, {	-- Tsulong
								["_encounter"] = { 742, DIFFICULTY.LEGACY_RAID.PLAYER10_NORMAL },
							}),
							crit(65719, {	-- Lei Shi
								["_encounter"] = { 729, DIFFICULTY.LEGACY_RAID.PLAYER10_NORMAL },
							}),
							crit(65720, {	-- Sha of Fear
								["_encounter"] = { 709, DIFFICULTY.LEGACY_RAID.PLAYER10_NORMAL },
							}),
						}),
						ach(19954, {	-- Heroic: Terrace of Endless Spring
							crit(65717, {	-- Protectors of the Endless
								["_encounter"] = { 683, DIFFICULTY.LEGACY_RAID.PLAYER10_HEROIC },
							}),
							crit(65721, {	-- Tsulong
								["_encounter"] = { 742, DIFFICULTY.LEGACY_RAID.PLAYER10_HEROIC },
							}),
							crit(65722, {	-- Lei Shi
								["_encounter"] = { 729, DIFFICULTY.LEGACY_RAID.PLAYER10_HEROIC },
							}),
							crit(65723, {	-- Sha of Fear
								["_encounter"] = { 709, DIFFICULTY.LEGACY_RAID.PLAYER10_HEROIC },
							}),
						}),
					}),
					d(DIFFICULTY.LEGACY_RAID.FINDER, {
						header(HEADERS.Achievement, 6689, {	-- Terrace of Endless Spring
							e(683, {	-- Protectors of the Endless
								["crs"] = {
									60586,	-- Elder Asani
									60585,	-- Elder Regail
									60583,	-- Protector Kaolan
								},
							}),
							e(742, {	-- Tsulong
								["crs"] = { 62442 },	-- Tsulong
							}),
							e(729, {	-- Lei Shi
								["crs"] = { 62983 },	-- Lei Shi
							}),
							e(709, {	-- Sha of Fear
								["crs"] = { 60999 },	-- Sha of Fear
							}),
						}),
					}),
					d(DIFFICULTY.LEGACY_RAID.PLAYER10_NORMAL, {
						e(683, {	-- Protectors of the Endless
							["crs"] = {
								60583,	-- Protector Kaolan
								60586,	-- Elder Asani
								60585,	-- Elder Regail
							},
						}),
						e(742, {	-- Tsulong
							["crs"] = { 62442 },	-- Tsulong
						}),
						e(729, {	-- Lei Shi
							["crs"] = { 62983 },	-- Lei Shi
						}),
						e(709, {	-- Sha of Fear
							["crs"] = { 60999 },	-- Sha of Fear
						}),
					}),
					d(DIFFICULTY.LEGACY_RAID.PLAYER10_HEROIC, {
						e(683, {	-- Protectors of the Endless
							["crs"] = {
								60583,	-- Protector Kaolan
								60586,	-- Elder Asani
								60585,	-- Elder Regail
							},
						}),
						e(742, {	-- Tsulong
							["crs"] = { 62442 },	-- Tsulong
						}),
						e(729, {	-- Lei Shi
							["crs"] = { 62983 },	-- Lei Shi
						}),
						e(709, {	-- Sha of Fear
							["crs"] = { 60999 },	-- Sha of Fear
						}),
					}),
				},
			}),
		}),
	}),
}))));--]]
