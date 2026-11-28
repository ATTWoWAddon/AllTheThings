-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

------ Encounter Constants ------
local HUSAM = 117;
local LOCKMAW = 118;
local BARIM = 119;
local SIAMAT = 122;

------ EncounterToCRS ------
local EncounterToCRS = {
	[HUSAM] = { 44577 },	-- General Husam
	[LOCKMAW] = {
		43614,	-- Lockmaw
		49045,	-- Augh
	},
	[BARIM] = { 43612 },	-- High Prophet Barim
	[SIAMAT] = { 44819 },	-- Siamat
};

------ Boss Functions ------
local InstanceHelper = CreateInstanceHelper(EncounterToCRS)
local BossOnly, Difficulty =
InstanceHelper.BossOnly, InstanceHelper.Difficulty

root(ROOTS.Instances, expansion(EXPANSION.CATA, {
	applyclassicphase(CATA_PHASE_ONE, inst(69, {	-- Lost City of the Tol'vir
		mapID = 277,
		coord = { 60.53, 64.29, ULDUM },	-- Lost City of Tol'vir
		timeline = { ADDED_4_0_3 },
		groups = {
			n(QUESTS, {
				q(28870, {	-- Return to the Lost City
					sourceQuest = 28520,	-- The Fall of Neferset City
					qg = 47684,	-- King Phaoris
					coord = { 54.9, 32.7, ULDUM },
					isBreadcrumb = true,
				}),
				q(28781, {	-- Targets of Opportunity
					sourceQuest = 28870,	-- Return to the Lost City
					qg = 50038,	-- Captain Hadan
					groups = {
						i(66905),	-- Clandestine Spaulders
						i(66906),	-- Bracers of the Lost City
						i(66907),	-- Captain Hadan's Pauldrons
					},
				}),
				q(28783, {	-- The Source of Their Power
					sourceQuest = 28870,	-- Return to the Lost City
					qg = 50038,	-- Captain Hadan
					groups = {
						i(66910),	-- Blight-Lifter's Mantle
						i(66908),	-- Treads of the Neferset
						i(66909),	-- Ramkahen Front Boots
					},
				}),
				q(28801, {	-- Tol'vir Hieroglyphics
					provider = { "o", 207409 },	-- Tol'vir Grave
					requireSkill = ARCHAEOLOGY,
					isRepeatable = true,
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.NORMAL, { timeline = { REMOVED_7_3_5 } }).AddGroups({
				BossOnly(HUSAM, {
					i(55856),	-- Greaves of Wu the Elder
					i(55857),	-- Ionic Gloves
					i(55858),	-- Kaleki Cloak
					i(55860),	-- Seliza's Spear
					i(55859),	-- Spirit Creeper Ring
				}),
				BossOnly(LOCKMAW, {
					i(55870),	-- Barim's Main Gauche
					i(55863),	-- Ring of the Darkest Day
					i(55867),	-- Sand Dune Belt
					i(55866),	-- Sand Silk Wristband
					i(55864),	-- Tauntka's Necklace
				}),
				BossOnly(BARIM, {
					i(55861),	-- Balkar's Waders
					i(55862),	-- Greaves of Wu the Younger
					i(55868),	-- Heart of Solace
					i(55865),	-- Resonant Kris
					i(55869),	-- Veneficial Band
				}),
				BossOnly(SIAMAT, {
					-- #if BEFORE 7.3.5
					ach(4848),	-- Lost City of the Tol'vir
					-- #endif
					i(55871),	-- Crafty's Gaiters
					i(55878),	-- Evelyn's Belt
					i(55872),	-- Geordan's Cloak
					i(55875),	-- Hammer of Sparks
					i(55877),	-- Leggings of the Path
					i(55876),	-- Mantle of Master Cho
					i(55873),	-- Ring of Three Lights
					i(55879),	-- Sorrowsong
					i(55874),	-- Tia's Grace
					i(55880),	-- Zora's Ward
				}),
			}),
			-- #if AFTER 7.3.5
			Difficulty(DIFFICULTY.DUNGEON.MULTI.NORMAL_HEROIC).AddGroups({
				n(ZONE_DROPS, {
					i(55881, {	-- Impetuous Query
						crs = {
							45007,	-- Enslaved Bandit
							45001,	-- Enslaved Bandit
							44982,	-- Neferset Darkcaster
							44976,	-- Neferset Plaguebringer
							44980,	-- Neferset Theurgist
							44977,	-- Neferset Torturer
							44922,	-- Oathsworn Axemaster
							45122,	-- Oathsworn Captain
							44924,	-- Oathsworn Myrmidon
							44932,	-- Oathsworn Pathfinder
							45062,	-- Oathsworn Scorpid Keeper
							44981,	-- Oathsworn Skinner
							45097,	-- Oathsworn Tamer
							44926,	-- Oathsworn Wanderer
							44896,	-- Pygmy Brute
							44898,	-- Pygmy Firebreather
							44897,	-- Pygmy Scout
						},
					}),
					i(55884, {	-- Mirage Ring
						crs = {
							45007,	-- Enslaved Bandit
							45001,	-- Enslaved Bandit
							44982,	-- Neferset Darkcaster
							44976,	-- Neferset Plaguebringer
							44980,	-- Neferset Theurgist
							44977,	-- Neferset Torturer
							44922,	-- Oathsworn Axemaster
							45122,	-- Oathsworn Captain
							44924,	-- Oathsworn Myrmidon
							44932,	-- Oathsworn Pathfinder
							45062,	-- Oathsworn Scorpid Keeper
							44981,	-- Oathsworn Skinner
							45097,	-- Oathsworn Tamer
							44926,	-- Oathsworn Wanderer
							44896,	-- Pygmy Brute
							44898,	-- Pygmy Firebreather
							44897,	-- Pygmy Scout
						},
					}),
					i(55882, {	-- Oasis Bracers
						crs = {
							45007,	-- Enslaved Bandit
							45001,	-- Enslaved Bandit
							44982,	-- Neferset Darkcaster
							44976,	-- Neferset Plaguebringer
							44980,	-- Neferset Theurgist
							44977,	-- Neferset Torturer
							44922,	-- Oathsworn Axemaster
							45122,	-- Oathsworn Captain
							44924,	-- Oathsworn Myrmidon
							44932,	-- Oathsworn Pathfinder
							45062,	-- Oathsworn Scorpid Keeper
							44981,	-- Oathsworn Skinner
							45097,	-- Oathsworn Tamer
							44926,	-- Oathsworn Wanderer
							44896,	-- Pygmy Brute
							44898,	-- Pygmy Firebreather
							44897,	-- Pygmy Scout
						},
					}),
				}),
				BossOnly(HUSAM, {
					i(56381),	-- Greaves of Wu the Elder
					i(56383),	-- Ionic Gloves
					i(56379),	-- Kaleki Cloak
					i(157600, { timeline = { ADDED_7_3_5 } }),	-- Necklace of Rumbling Earth
					i(56382),	-- Siliza's Spear
					i(56380),	-- Spirit Creeper Ring
				}),
				BossOnly(LOCKMAW, {
					i(56386),	-- Balkar's Waders
					i(56387),	-- Greaves of Wu the Younger
					i(56384),	-- Resonant Kris
					i(56388),	-- Ring of the Darkest Day
					i(56385),	-- Tauntka's Necklace
				}),
				BossOnly(BARIM, {
					i(56390),	-- Barim's Main Gauche
					i(56393),	-- Heart of Solace
					i(56392),	-- Sand Dune Belt
					i(56389),	-- Sand Silk Wristband
					i(56391),	-- Veneficial Band
				}),
				BossOnly(SIAMAT, {
					ach(4848),	-- Lost City of the Tol'vir
					i(56395),	-- Crafty's Gaiters
					i(56403),	-- Evelyn's Belt
					i(56397),	-- Geordan's Cloak
					i(56396),	-- Hammer of Sparks
					i(56401),	-- Leggings of the Path
					i(56399),	-- Mantle of Master Cho
					i(56398),	-- Ring of Three Lights
					i(157599, { timeline = { ADDED_7_3_5 } }),	-- Sceptre of Swirling Winds
					i(56400),	-- Sorrowsong
					i(56394),	-- Tia's Grace
					i(56402),	-- Zora's Ward
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.HEROIC).AddGroups({
				BossOnly(HUSAM),
				BossOnly(LOCKMAW, {
					ach(5291),	-- Acrocalypse Now
				}),
				BossOnly(BARIM, {
					ach(5290),	-- Kill It With Fire!
				}),
				BossOnly(SIAMAT, {
					ach(5292),	-- Headed South
					ach(5066),	-- Heroic: Lost City of the Tol'vir
					ach(5140),	-- Heroic: Lost City of the Tol'vir Guild Run
				}),
			}),
			-- #else
			Difficulty(DIFFICULTY.DUNGEON.MULTI.NORMAL_HEROIC).AddGroups({
				n(ZONE_DROPS, {
					i(55881, {	-- Impetuous Query
						crs = {
							45007,	-- Enslaved Bandit
							45001,	-- Enslaved Bandit
							44982,	-- Neferset Darkcaster
							44976,	-- Neferset Plaguebringer
							44980,	-- Neferset Theurgist
							44977,	-- Neferset Torturer
							44922,	-- Oathsworn Axemaster
							45122,	-- Oathsworn Captain
							44924,	-- Oathsworn Myrmidon
							44932,	-- Oathsworn Pathfinder
							45062,	-- Oathsworn Scorpid Keeper
							44981,	-- Oathsworn Skinner
							45097,	-- Oathsworn Tamer
							44926,	-- Oathsworn Wanderer
							44896,	-- Pygmy Brute
							44898,	-- Pygmy Firebreather
							44897,	-- Pygmy Scout
						},
					}),
					i(55884, {	-- Mirage Ring
						crs = {
							45007,	-- Enslaved Bandit
							45001,	-- Enslaved Bandit
							44982,	-- Neferset Darkcaster
							44976,	-- Neferset Plaguebringer
							44980,	-- Neferset Theurgist
							44977,	-- Neferset Torturer
							44922,	-- Oathsworn Axemaster
							45122,	-- Oathsworn Captain
							44924,	-- Oathsworn Myrmidon
							44932,	-- Oathsworn Pathfinder
							45062,	-- Oathsworn Scorpid Keeper
							44981,	-- Oathsworn Skinner
							45097,	-- Oathsworn Tamer
							44926,	-- Oathsworn Wanderer
							44896,	-- Pygmy Brute
							44898,	-- Pygmy Firebreather
							44897,	-- Pygmy Scout
						},
					}),
					i(55882, {	-- Oasis Bracers
						crs = {
							45007,	-- Enslaved Bandit
							45001,	-- Enslaved Bandit
							44982,	-- Neferset Darkcaster
							44976,	-- Neferset Plaguebringer
							44980,	-- Neferset Theurgist
							44977,	-- Neferset Torturer
							44922,	-- Oathsworn Axemaster
							45122,	-- Oathsworn Captain
							44924,	-- Oathsworn Myrmidon
							44932,	-- Oathsworn Pathfinder
							45062,	-- Oathsworn Scorpid Keeper
							44981,	-- Oathsworn Skinner
							45097,	-- Oathsworn Tamer
							44926,	-- Oathsworn Wanderer
							44896,	-- Pygmy Brute
							44898,	-- Pygmy Firebreather
							44897,	-- Pygmy Scout
						},
					}),
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.HEROIC).AddGroups({
				BossOnly(HUSAM, {
					i(56381),	-- Greaves of Wu the Elder
					i(56383),	-- Ionic Gloves
					i(56379),	-- Kaleki Cloak
					i(56382),	-- Siliza's Spear
					i(56380),	-- Spirit Creeper Ring
				}),
				BossOnly(LOCKMAW, {
					ach(5291),	-- Acrocalypse Now
					i(56390),	-- Barim's Main Gauche
					i(56388),	-- Ring of the Darkest Day
					i(56392),	-- Sand Dune Belt
					i(56389),	-- Sand Silk Wristband
					i(56385),	-- Tauntka's Necklace
				}),
				BossOnly(BARIM, {
					ach(5290),	-- Kill It With Fire!
					i(56386),	-- Balkar's Waders
					i(56387),	-- Greaves of Wu the Younger
					i(56393),	-- Heart of Solace
					i(56384),	-- Resonant Kris
					i(56391),	-- Veneficial Band
				}),
				BossOnly(SIAMAT, {
					ach(5292),	-- Headed South
					ach(5066),	-- Heroic: Lost City of the Tol'vir
					ach(5140),	-- Heroic: Lost City of the Tol'vir Guild Run
					i(56395),	-- Crafty's Gaiters
					i(56403),	-- Evelyn's Belt
					i(56397),	-- Geordan's Cloak
					i(56396),	-- Hammer of Sparks
					i(56401),	-- Leggings of the Path
					i(56399),	-- Mantle of Master Cho
					i(56398),	-- Ring of Three Lights
					i(56400),	-- Sorrowsong
					i(56394),	-- Tia's Grace
					i(56402),	-- Zora's Ward
				}),
			}),
			-- #endif
			-- #if ANYCLASSIC
			applyclassicphase(CATA_PHASE_RAGE_OF_THE_FIRELANDS, n(PROTOCOL_INFERNO, {
				OnInit = FUNCTION_TEMPLATES.OnInit.GenerateShouldExcludeFromTooltipForBuffs(470595),
				groups = {
					BossOnly(SIAMAT, {
						ach(41145),	-- Protocol Inferno: Lost City of the Tol'vir
					}),
				},
			})),
			-- #endif
		},
	})),
}));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.WOD, {
	inst(69, {
		q(35413),	-- Lost City of the Tol'vir Reward Quest
		q(35414),	-- Lost City of the Tol'vir Reward Quest
	}),
}));
