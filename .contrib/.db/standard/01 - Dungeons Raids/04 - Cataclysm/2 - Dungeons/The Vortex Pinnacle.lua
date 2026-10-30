-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

------ Encounter Constants ------
local ERTAN = 114;
local ALTAIRUS = 115;
local ASAAD = 116;

------ EncounterToCRS ------
local EncounterToCRS = {
	[ERTAN] = { 43878 },	-- Grand Vizier Ertan
	[ALTAIRUS] = { 43873 },	-- Altairus
	[ASAAD] = { 43875 },	-- Asaad, Caliph of Zephyrs
};

------ Boss Functions ------
local InstanceHelper = CreateInstanceHelper(EncounterToCRS)
local BossOnly, Difficulty =
InstanceHelper.BossOnly, InstanceHelper.Difficulty

root(ROOTS.Instances, expansion(EXPANSION.CATA, {
	applyclassicphase(CATA_PHASE_ONE, inst(68, {	-- The Vortex Pinnacle
		mapID = 325,
		coord = { 76.76, 84.44, ULDUM },	-- Vortex Pinnacle
		timeline = { ADDED_4_0_3 },
		groups = {
			n(QUESTS, {
				q(28779, {	-- A Long Way from Home
					sourceQuest = 28845,	-- The Vortex Pinnacle
					qg = 49943,	-- Itesh
					groups = {
						i(66898),	-- Cloak of Itesh
						i(66899),	-- Leggings of the Vortex Pinnacle
						i(66900),	-- Band of the Dead End
					},
				}),
				q(28845, {	-- The Vortex Pinnacle
					sourceQuests = {
						27519,	-- Under the Choking Sands
						27520,	-- Minions of Al'Akir
						27706,	-- The Scepter of Orsis
					},
					qgs = {
						45772,	-- General Ammantep
						49943,	-- Itesh
					},
					coord = { 45.2, 37.7, ULDUM },	-- General Ammantep
					isBreadcrumb = true,
				}),
				q(28760, {	-- Vengeance for Orsis
					sourceQuest = 28845,	-- The Vortex Pinnacle
					qg = 49943,	-- Itesh
					groups = {
						i(66901),	-- Greaves of Orsis
						i(66903),	-- Caliph's Band
						i(66902),	-- Token of Gratitude
					},
				}),
				q(28800, {	-- Whispers of the Djinn
					provider = { "o", 207408 },	-- Magical Brazier
					requireSkill = ARCHAEOLOGY,
					isRepeatable = true,
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.NORMAL, { timeline = { REMOVED_7_3_5 } }).AddGroups({
				n(ZONE_DROPS, {
					i(55854, {	-- Rainsong
						crs = {
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
				BossOnly(ERTAN, {
					i(55834),	-- Biting Wind
					i(55832),	-- Fallen Snow Shoulderguards
					i(55831),	-- Headcover of Fog
					i(55833),	-- Red Sky Pendant
					i(55830),	-- Stratosphere Belt
				}),
				BossOnly(ALTAIRUS, {
					i(55840),	-- Amulet of Tender Breath
					i(55841),	-- Axe of the Eclipse
					i(63040),	-- Drake of the North Wind (MOUNT!)
					i(55835),	-- Hail-Strung Belt
					i(55838),	-- Mantle of Bestilled Winds
					i(55839),	-- Skyshard Ring
				}),
				BossOnly(ASAAD, {
					-- #if BEFORE 7.3.5
					ach(4847),	-- The Vortex Pinnacle
					-- #endif
					i(55847),	-- Billowing Cape
					i(55852, { timeline = { REMOVED_5_0_4 } }),	-- Captured Lightning
					i(55844),	-- Gloves of Haze
					i(55845),	-- Heart of Thunder
					i(55849),	-- Leggings of Iridescent Clouds
					i(55842),	-- Legguards of Winnowing Wind
					i(55846),	-- Lightningflash
					i(55848),	-- Lunar Halo
					i(55851),	-- Ring of Frozen Rain
					i(55850),	-- Shadow of Perfect Bliss
					i(55853),	-- Thundercall
				}),
			}),
			-- #if AFTER 7.3.5
			Difficulty(DIFFICULTY.DUNGEON.MULTI.NORMAL_HEROIC).AddGroups({
				n(ZONE_DROPS, {
					i(55855, {	-- Darksky Treads
						crs = {
							45915,	-- Armored Mistral
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
					i(55854, {	-- Rainsong
						crs = {
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
				n(ACHIEVEMENTS, {
					ach(5289),	-- Extra Credit Bonus Stage
				}),
				BossOnly(ERTAN, {
					i(56357),	-- Biting Wind
					i(157601, { timeline = { ADDED_7_3_5 } }),	-- Choker of Stolen Thunder
					i(56359),	-- Fallen Snow Shoulderguards
					i(56358),	-- Headcover of Fog
					i(157602, { timeline = { ADDED_7_3_5 } }),	-- Ionized Choker
					i(56360),	-- Red Sky Pendant
					i(56356),	-- Stratosphere Belt
					i(157603, { timeline = { ADDED_7_3_5 } }),	-- Thundercleaver Axe
				}),
				BossOnly(ALTAIRUS, {
					i(56362),	-- Amulet of Tender Breath
					i(56364),	-- Axe of the Eclipse
					i(157604, { timeline = { ADDED_7_3_5 } }),	-- Billowing Skydrape
					i(63040),	-- Drake of the North Wind (MOUNT!)
					i(56363),	-- Hail-Strung Belt
					i(56361),	-- Mantle of Bestilled Winds
					i(157605, { timeline = { ADDED_7_3_5 } }),	-- Sandals of the West Wind
					i(56365),	-- Skyshard Ring
				}),
				BossOnly(ASAAD, {
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
					i(56376, { timeline = { REMOVED_7_3_5 } }),	-- Thundercall
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.HEROIC).AddGroups({
				BossOnly(ERTAN),
				BossOnly(ALTAIRUS),
				BossOnly(ASAAD, {
					ach(5064),	-- Heroic: The Vortex Pinnacle
					ach(5137),	-- Heroic: The Vortex Pinnacle Guild Run
					ach(5288),	-- No Static at All
					i(56372, { timeline = { REMOVED_5_0_4 } }),	-- Captured Lightning
				}),
			}),
			-- #else
			Difficulty(DIFFICULTY.DUNGEON.MULTI.NORMAL_HEROIC).AddGroups({
				n(ZONE_DROPS, {
					i(55855, {	-- Darksky Treads
						crs = {
							45915,	-- Armored Mistral
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
			Difficulty(DIFFICULTY.DUNGEON.HEROIC).AddGroups({
				n(ACHIEVEMENTS, {
					ach(5289),	-- Extra Credit Bonus Stage
				}),
				BossOnly(ERTAN, {
					i(56357),	-- Biting Wind
					i(56359),	-- Fallen Snow Shoulderguards
					i(56358),	-- Headcover of Fog
					i(56360),	-- Red Sky Pendant
					i(56356),	-- Stratosphere Belt
				}),
				BossOnly(ALTAIRUS, {
					i(56362),	-- Amulet of Tender Breath
					i(56364),	-- Axe of the Eclipse
					i(63040),	-- Drake of the North Wind (MOUNT!)
					i(56363),	-- Hail-Strung Belt
					i(56361),	-- Mantle of Bestilled Winds
					i(56365),	-- Skyshard Ring
				}),
				BossOnly(ASAAD, {
					ach(5064),	-- Heroic: The Vortex Pinnacle
					ach(5137),	-- Heroic: The Vortex Pinnacle Guild Run
					ach(5288),	-- No Static at All
					i(56369),	-- Billowing Cape
					i(56372, { timeline = { REMOVED_5_0_4 } }),	-- Captured Lightning
					i(56368),	-- Gloves of Haze
					i(56370),	-- Heart of Thunder
					i(56375),	-- Leggings of Iridescent Clouds
					i(56367),	-- Legguards of Winnowing Wind
					i(56366),	-- Lightningflash
					i(56374),	-- Lunar Halo
					i(56373),	-- Ring of Frozen Rain
					i(56371),	-- Shadow of Perfect Bliss
					i(56376),	-- Thundercall
				}),
			}),
			-- #endif
			-- #if ANYCLASSIC
			applyclassicphase(CATA_PHASE_RAGE_OF_THE_FIRELANDS, n(PROTOCOL_INFERNO, {
				OnInit = FUNCTION_TEMPLATES.OnInit.GenerateShouldExcludeFromTooltipForBuffs(470595),
				groups = {
					BossOnly(ASAAD, {
						ach(41142),	-- Protocol Inferno: The Vortex Pinnacle
					}),
				},
			})),
			-- #endif
			n(MYTHIC_PLUS, sharedDataSelf({ timeline = { ADDED_10_1_0, REMOVED_10_2_0 } }, {
				i(206183),	-- Amulet of Tender Breath
				i(206180),	-- Choker of Stolen Thunder
				i(206181),	-- Ionized Choker
				i(206182),	-- Red Sky Pendant
				i(206185),	-- Ring of Frozen Rain
				i(206184),	-- Skyshard Ring
			})),
		},
	})),
}));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.WOD, {
	inst(68, {
		q(35401),	-- The Vortex Pinnacle Reward Quest
		q(35403),	-- The Vortex Pinnacle Reward Quest
	}),
}));
