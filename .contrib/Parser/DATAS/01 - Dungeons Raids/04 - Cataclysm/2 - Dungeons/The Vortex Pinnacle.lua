-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
root(ROOTS.Instances, expansion(EXPANSION.CATA, bubbleDown({ ["timeline"] = ADDED_4_0_3 }, {
	applyclassicphase(CATA_PHASE_ONE, inst(68, {	-- The Vortex Pinnacle
		["mapID"] = 325,
		["coord"] = { 76.76, 84.44, ULDUM },	-- Vortex Pinnacle
		["groups"] = {
			n(QUESTS, {
				q(28779, {	-- A Long Way from Home
					["sourceQuest"] = 28845,	-- The Vortex Pinnacle
					["qg"] = 49943,	-- Itesh
					["groups"] = {
						i(66898),	-- Cloak of Itesh
						i(66899),	-- Leggings of the Vortex Pinnacle
						i(66900),	-- Band of the Dead End
					},
				}),
				q(28845, {	-- The Vortex Pinnacle
					["sourceQuests"] = {
						27519,	-- Under the Choking Sands
						27520,	-- Minions of Al'Akir
						27706,	-- The Scepter of Orsis
					},
					["qgs"] = {
						45772,	-- General Ammantep
						49943,	-- Itesh
					},
					["coords"] = {
						{ 45.2, 37.7, ULDUM },	-- General Ammantep
					},
					["isBreadcrumb"] = true,
				}),
				q(28760, {	-- Vengeance for Orsis
					["sourceQuest"] = 28845,	-- The Vortex Pinnacle
					["qg"] = 49943,	-- Itesh
					["groups"] = {
						i(66901),	-- Greaves of Orsis
						i(66903),	-- Caliph's Band
						i(66902),	-- Token of Gratitude
					},
				}),
				q(28800, {	-- Whispers of the Djinn
					["provider"] = { "o", 207408 },	-- Magical Brazier
					["requireSkill"] = ARCHAEOLOGY,
					["isRepeatable"] = true,
				}),
			}),
			n(ZONE_DROPS, {
				d(DIFFICULTY.DUNGEON.NORMAL, {
					i(55854, {	-- Rainsong
						["crs"] = {
							45912,	-- Wild Vortex
							45922,	-- Empyrean Assassin
							45917,	-- Cloud Prince
							45919,	-- Young Storm Dragon
							45477,	-- Gust Soldier
							45924,	-- Turbulent Squall
							45915,	-- Armored Mistral
							45935,	-- Temple Adept
							45926,	-- Servant of Asaad
							45928,	-- Executor of the Caliph
							45930,	-- Minister of Air
						},
					}),
				}),
				d(DIFFICULTY.DUNGEON.MULTI.NORMAL_HEROIC, {
					i(55855, {	-- Darksky Treads
						["crs"] = {
							45915,	-- Armored Mistal
							45917,	-- Cloud Prince
							45922,	-- Empyrean Assassin
							45928,	-- Executor of the Caliph
							45477,	-- Gust Soldier
							45930,	-- Minister of Air
							45926,	-- Servant of Asaad
							45935,	-- Temple Adept
							45924,	-- Turbulent Squall
							45912,	-- Wild Vortex
							45919,	-- Young Storm Dragon
						},
					}),
				}),
			}),
			d(DIFFICULTY.DUNGEON.NORMAL, bubbleDownSelf({ ["timeline"] = REMOVED_7_3_5 }, {
				e(114, {	-- Grand Vizier Ertan
					["crs"] = { 43878 },	-- Grand Vizier Ertan
					["groups"] = {
						i(55834),	-- Biting Wind
						i(55832),	-- Fallen Snow Shoulderguards
						i(55831),	-- Headcover of Fog
						i(55833),	-- Red Sky Pendant
						i(55830),	-- Stratosphere Belt
					},
				}),
				e(115, {	-- Altairus
					["crs"] = { 43873 },	-- Altairus
					["groups"] = {
						i(63040),	-- Drake of the North Wind (MOUNT!)
						i(55840),	-- Amulet of Tender Breath
						i(55841),	-- Axe of the Eclipse
						i(55835),	-- Hail-Strung Belt
						i(55838),	-- Mantle of Bestilled Winds
						i(55839),	-- Skyshard Ring
					},
				}),
				e(116, {	-- Asaad, Caliph of Zephyrs
					["crs"] = { 43875 },	-- Asaad, Caliph of Zephyrs
					["groups"] = {
						-- #if BEFORE 7.3.5
						ach(4847),	-- The Vortex Pinnacle
						-- #endif
						i(55847),	-- Billowing Cape
						i(55844),	-- Gloves of Haze
						i(55845),	-- Heart of Thunder
						i(55849),	-- Leggings of Iridescent Clouds
						i(55842),	-- Legguards of Winnowing Wind
						i(55846),	-- Lightningflash
						i(55848),	-- Lunar Halo
						i(55851),	-- Ring of Frozen Rain
						i(55850),	-- Shadow of Perfect Bliss
						i(55853),	-- Thundercall
							-- #if BEFORE MOP
							i(55852, {	-- Captured Lightning
								["timeline"] = { REMOVED_5_0_4 },
							}),
							-- #endif
					},
				}),
			})),
			-- #if BEFORE 7.3.5
			d(DIFFICULTY.DUNGEON.HEROIC, {
				["groups"] = {
					n(ACHIEVEMENTS, {
						ach(5289),	-- Extra Credit Bonus Stage
					}),
					e(114, {	-- Grand Vizier Ertan
						["crs"] = { 43878 },	-- Grand Vizier Ertan
						["groups"] = {
							i(56357),	-- Biting Wind
							i(56359),	-- Fallen Snow Shoulderguards
							i(56358),	-- Headcover of Fog
							i(56360),	-- Red Sky Pendant
							i(56356),	-- Stratosphere Belt
						},
					}),
					e(115, {	-- Altairus
						["crs"] = { 43873 },	-- Altairus
						["groups"] = {
							i(63040),	-- Drake of the North Wind (MOUNT!)
							i(56362),	-- Amulet of Tender Breath
							i(56364),	-- Axe of the Eclipse
							i(56363),	-- Hail-Strung Belt
							i(56361),	-- Mantle of Bestilled Winds
							i(56365),	-- Skyshard Ring
						},
					}),
					e(116, {	-- Asaad, Caliph of Zephyrs
						["crs"] = { 43875 },	-- Asaad, Caliph of Zephyrs
						["groups"] = {
							ach(5064),	-- Heroic: The Vortex Pinnacle
							ach(5137),	-- Heroic: The Vortex Pinnacle Guild Run
							ach(5288),	-- No Static at All
							i(56369),	-- Billowing Cape
							i(56368),	-- Gloves of Haze
							i(56370),	-- Heart of Thunder
							i(56375),	-- Leggings of Iridescent Clouds
							i(56367),	-- Legguards of Winnowing Wind
							i(56366),	-- Lightningflash
							i(56374),	-- Lunar Halo
							i(56373),	-- Ring of Frozen Rain
							i(56371),	-- Shadow of Perfect Bliss
							i(56376),	-- Thundercall
							-- #if BEFORE MOP
							i(56372, {	-- Captured Lightning
								["timeline"] = { REMOVED_5_0_4 },
							}),
							-- #endif
						},
					}),
				},
			}),
			-- #else
			d(DIFFICULTY.DUNGEON.MULTI.NORMAL_HEROIC, {
				["groups"] = {
					n(ACHIEVEMENTS, {
						ach(5289),	-- Extra Credit Bonus Stage
					}),
					e(114, {	-- Grand Vizier Ertan
						["crs"] = { 43878 },	-- Grand Vizier Ertan
						["groups"] = {
							i(56357),	-- Biting Wind
							i(157601, {	-- Choker of Stolen Thunder
								["timeline"] = { ADDED_7_3_5 },
							}),
							i(56359),	-- Fallen Snow Shoulderguards
							i(56358),	-- Headcover of Fog
							i(157602, {	-- Ionized Choker
								["timeline"] = { ADDED_7_3_5 },
							}),
							i(56360),	-- Red Sky Pendant
							i(56356),	-- Stratosphere Belt
							i(157603, {	-- Thundercleaver Axe
								["timeline"] = { ADDED_7_3_5 },
							}),
						},
					}),
					e(115, {	-- Altairus
						["crs"] = { 43873 },	-- Altairus
						["groups"] = {
							i(63040),	-- Drake of the North Wind (MOUNT!)
							i(56362),	-- Amulet of Tender Breath
							i(56364),	-- Axe of the Eclipse
							i(157604, {	-- Billowing Skydrape
								["timeline"] = { ADDED_7_3_5 },
							}),
							i(56363),	-- Hail-Strung Belt
							i(56361),	-- Mantle of Bestilled Winds
							i(157605, {	-- Sandals of the West Wind
								["timeline"] = { ADDED_7_3_5 },
							}),
							i(56365),	-- Skyshard Ring
						},
					}),
					e(116, {	-- Asaad, Caliph of Zephyrs
						["crs"] = { 43875 },	-- Asaad, Caliph of Zephyrs
						["groups"] = {
							ach(4847),	-- The Vortex Pinnacle
							i(56369),	-- Billowing Cape
							i(56368),	-- Gloves of Haze
							i(56370),	-- Heart of Thunder
							i(56375),	-- Leggings of Iridescent Clouds
							i(56367),	-- Legguards of Winnowing Wind
							i(56366),	-- Lightningflash
							i(56374),	-- Lunar Halo
							i(56373),	-- Ring of Frozen Rain
							i(56371),	-- Shadow of Perfect Bliss
							i(56376, {	-- Thundercall
								["timeline"] = { REMOVED_7_3_5 },
							}),
						},
					}),
				},
			}),
			d(DIFFICULTY.DUNGEON.HEROIC, {
				e(116, {	-- Asaad, Caliph of Zephyrs
					["crs"] = { 43875 },	-- Asaad, Caliph of Zephyrs
					["groups"] = {
						ach(5064),	-- Heroic: The Vortex Pinnacle
						ach(5137),	-- Heroic: The Vortex Pinnacle Guild Run
						ach(5288),	-- No Static at All
					},
				}),
			}),
			-- #endif
			-- #if ANYCLASSIC
			applyclassicphase(CATA_PHASE_RAGE_OF_THE_FIRELANDS, n(PROTOCOL_INFERNO, {
				["OnInit"] = FUNCTION_TEMPLATES.OnInit.GenerateShouldExcludeFromTooltipForBuffs(470595),
				["groups"] = {
					e(116, {	-- Asaad, Caliph of Zephyrs
						["crs"] = { 43875 },	-- Asaad, Caliph of Zephyrs
						["groups"] = {
							ach(41142),	-- Protocol Inferno: The Vortex Pinnacle
						},
					}),
				},
			})),
			-- #endif
			n(MYTHIC_PLUS, sharedDataSelf({ ["timeline"] = { ADDED_10_1_0, REMOVED_10_2_0 } }, {
				i(206183),	-- Amulet of Tender Breath
				i(206180),	-- Choker of Stolen Thunder
				i(206181),	-- Ionized Choker
				i(206182),	-- Red Sky Pendant
				i(206185),	-- Ring of Frozen Rain
				i(206184),	-- Skyshard Ring
			})),
		},
	})),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.WOD, bubbleDownSelf({ ["timeline"] = { ADDED_6_0_2 } }, {
	inst(68, {
		q(35401),	-- The Vortex Pinnacle Reward Quest
		q(35403),	-- The Vortex Pinnacle Reward Quest
	}),
})));
