-----------------------------------------------------
--     W O R L D   E V E N T S   M O D U L E       --
-----------------------------------------------------

------ Encounter Constants ------
local SKORPYRON = 1706;
local CHRONOMATIC = 1725;
local TRILLIAX = 1731;
local ALURIEL = 1751;
local TICHONDRIUS = 1762;
local KROSUS = 1713;
local TELARN = 1761;
local ETRAEUS = 1732;
local ELISANDE = 1743;
local GULDAN = 1737;

------ EncounterToCRS ------
local EncounterToCRS = {
	[SKORPYRON] = { 102263 },	-- Skorpyron
	[CHRONOMATIC] = { 104415 },	-- Chronomatic Anomaly
	[TRILLIAX] = { 104288 },	-- Trilliax
	[ALURIEL] = { 104881 },	-- Spellblade Aluriel
	[TICHONDRIUS] = { 103685 },	-- Tichondrius
	[KROSUS] = { 101002 },	-- Krosus
	[TELARN] = {	-- Tel'arn
		109040,	-- Arcanist Tel'arn
		104528,	-- High Botanist Tel'arn
		109041,	-- Naturalist Tel'arn
		109038,	-- Solarist Tel'arn
	},
	[ETRAEUS] = { 103758 },	-- Star Augur Etraeus
	[ELISANDE] = { 106643 },	-- Grand Magistrix Elisande
	[GULDAN] = {	-- Gul'dan
		104154,	-- Gul'dan
		111022,	-- The Demon Within
	},
};

local COMMONLOOT = {
};

------ Boss Functions ------
local InstanceHelper = CreateInstanceHelper(EncounterToCRS)
local BossOnly, Difficulty, CommonBossDrops =
InstanceHelper.BossOnly, InstanceHelper.Difficulty, InstanceHelper.CommonBossDrops

root(ROOTS.WorldEvents, applyevent(EVENTS.REMIX_LEGION, n(REMIX_LEGION, {
	n(RAIDS, {
		inst(786, {	-- The Nighthold
			["coords"] = {
				{ 43.3, 62.3, SURAMAR },	-- entrance that leads underground
				{ 44.1, 59.7, SURAMAR },	-- actual raid entrance
			},
			["maps"] = { 764, 765, 766, 767, 768, 769, 770, 771, 772 },
			["isRaid"] = true,
			["groups"] = {
				n(ACHIEVEMENTS, {
					ach(42553, {	-- Raid Finder: The Nighthold
						crit(108560, {	-- Skorpyron
							["_encounter"] = { SKORPYRON, DIFFICULTY.RAID.MULTI.ALL },
						}),
						crit(108558, {	-- Chronomatic Anomaly
							["_encounter"] = { CHRONOMATIC, DIFFICULTY.RAID.MULTI.ALL },
						}),
						crit(108559, {	-- Trilliax
							["_encounter"] = { TRILLIAX, DIFFICULTY.RAID.MULTI.ALL },
						}),
						crit(108557, {	-- Spellblade Aluriel
							["_encounter"] = { ALURIEL, DIFFICULTY.RAID.MULTI.ALL },
						}),
						crit(108556, {	-- Star Augur Etraeus
							["_encounter"] = { ETRAEUS, DIFFICULTY.RAID.MULTI.ALL },
						}),
						crit(108555, {	-- High Botanist Tel'arn
							["_encounter"] = { TELARN, DIFFICULTY.RAID.MULTI.ALL },
						}),
						crit(108553, {	-- Tichondrius
							["_encounter"] = { TICHONDRIUS, DIFFICULTY.RAID.MULTI.ALL },
						}),
						crit(108554, {	-- Krosus
							["_encounter"] = { KROSUS, DIFFICULTY.RAID.MULTI.ALL },
						}),
						crit(108552, {	-- Grand Magistrix Elisande
							["_encounter"] = { ELISANDE, DIFFICULTY.RAID.MULTI.ALL },
						}),
					}),
					ach(60865, {	-- The Nighthold
						-- Meta Achievement
						["sym"] = {{"meta_achievement",
							60861,	-- Arcing Aqueducts
							60862,	-- Royal Athenaeum
							60863,	-- Nightspire
							60864,	-- Betrayer's Rise
						}},
					}),
					ach(60861, {	-- Arcing Aqueducts
						crit(107157, {	-- Skorpyron
							["_encounter"] = { SKORPYRON, DIFFICULTY.RAID.MULTI.ALL },
						}),
						crit(107159, {	-- Chronomatic Anomaly
							["_encounter"] = { CHRONOMATIC, DIFFICULTY.RAID.MULTI.ALL },
						}),
						crit(107158, {	-- Trilliax
							["_encounter"] = { TRILLIAX, DIFFICULTY.RAID.MULTI.ALL },
						}),
					}),
					ach(60862, {	-- Royal Athenaeum
						crit(107160, {	-- Spellblade Aluriel
							["_encounter"] = { ALURIEL, DIFFICULTY.RAID.MULTI.ALL },
						}),
						crit(107161, {	-- Star Augur Etraeus
							["_encounter"] = { ETRAEUS, DIFFICULTY.RAID.MULTI.ALL },
						}),
						crit(107162, {	-- High Botanist Tel'arn
							["_encounter"] = { TELARN, DIFFICULTY.RAID.MULTI.ALL },
						}),
					}),
					ach(60863, {	-- Nightspire
						crit(107164, {	-- Tichondrius
							["_encounter"] = { TICHONDRIUS, DIFFICULTY.RAID.MULTI.ALL },
						}),
						crit(107163, {	-- Krosus
							["_encounter"] = { KROSUS, DIFFICULTY.RAID.MULTI.ALL },
						}),
						crit(107165, {	-- Grand Magistrix Elisande
							["_encounter"] = { ELISANDE, DIFFICULTY.RAID.MULTI.ALL },
						}),
					}),
					ach(60864, {	-- Betrayer's Rise
						["_encounter"] = { GULDAN, DIFFICULTY.RAID.MULTI.ALL },
						["provider"] = { "n", 104154 },	-- Gul'dan
					}),
					ach(42543, {	-- Heroic: The Nighthold
						crit(108486, {	-- Skorpyron
							["_encounter"] = { SKORPYRON, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
						}),
						crit(108484, {	-- Chronomatic Anomaly
							["_encounter"] = { CHRONOMATIC, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
						}),
						crit(108485, {	-- Trilliax
							["_encounter"] = { TRILLIAX, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
						}),
						crit(108483, {	-- Spellblade Aluriel
							["_encounter"] = { ALURIEL, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
						}),
						crit(108482, {	-- Star Augur Etraeus
							["_encounter"] = { ETRAEUS, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
						}),
						crit(108481, {	-- High Botanist Tel'arn
							["_encounter"] = { TELARN, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
						}),
						crit(108479, {	-- Tichondrius
							["_encounter"] = { TICHONDRIUS, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
						}),
						crit(108480, {	-- Krosus
							["_encounter"] = { KROSUS, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
						}),
						crit(108478, {	-- Grand Magistrix Elisande
							["_encounter"] = { ELISANDE, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
						}),
					}),
					ach(42544, {	-- Mythic: The Nighthold
						crit(108523, {	-- Skorpyron
							["_encounter"] = { SKORPYRON, DIFFICULTY.RAID.MYTHIC },
						}),
						crit(108521, {	-- Chronomatic Anomaly
							["_encounter"] = { CHRONOMATIC, DIFFICULTY.RAID.MYTHIC },
						}),
						crit(108522, {	-- Trilliax
							["_encounter"] = { TRILLIAX, DIFFICULTY.RAID.MYTHIC },
						}),
						crit(108520, {	-- Spellblade Aluriel
							["_encounter"] = { ALURIEL, DIFFICULTY.RAID.MYTHIC },
						}),
						crit(108519, {	-- Star Augur Etraeus
							["_encounter"] = { ETRAEUS, DIFFICULTY.RAID.MYTHIC },
						}),
						crit(108518, {	-- High Botanist Tel'arn
							["_encounter"] = { TELARN, DIFFICULTY.RAID.MYTHIC },
						}),
						crit(108516, {	-- Tichondrius
							["_encounter"] = { TICHONDRIUS, DIFFICULTY.RAID.MYTHIC },
						}),
						crit(108517, {	-- Krosus
							["_encounter"] = { KROSUS, DIFFICULTY.RAID.MYTHIC },
						}),
						crit(108515, {	-- Grand Magistrix Elisande
							["_encounter"] = { ELISANDE, DIFFICULTY.RAID.MYTHIC },
						}),
					}),
				}),
				Difficulty(DIFFICULTY.RAID.MULTI.ALL).AddGroups({
					header(HEADERS.Achievement, 60861, {	-- Arcing Aqueducts
						BossOnly(SKORPYRON),
						BossOnly(CHRONOMATIC),
						BossOnly(TRILLIAX),
					}),
					header(HEADERS.Achievement, 60862, {	-- Royal Athenaeum
						BossOnly(ALURIEL),
						BossOnly(ETRAEUS),
						BossOnly(TELARN),
					}),
					header(HEADERS.Achievement, 60863, {	-- Nightspire
						BossOnly(TICHONDRIUS),
						BossOnly(KROSUS),
						BossOnly(ELISANDE),
					}),
					header(HEADERS.Achievement, 60864, {	-- Betrayer's Rise
						BossOnly(GULDAN),
					}),
				}),
				Difficulty(DIFFICULTY.RAID.MULTI.NORMAL_PLUS).AddGroups({
					BossOnly(SKORPYRON),
					BossOnly(CHRONOMATIC),
					BossOnly(TRILLIAX),
					BossOnly(ALURIEL),
					BossOnly(ETRAEUS),
					BossOnly(TELARN),
					BossOnly(TICHONDRIUS),
					BossOnly(KROSUS),
					BossOnly(ELISANDE),
					BossOnly(GULDAN),
				}),
				Difficulty(DIFFICULTY.RAID.NORMAL).AddGroups({
					CommonBossDrops(clone(COMMONLOOT)),
				}),
				Difficulty(DIFFICULTY.RAID.MULTI.HEROIC_PLUS).AddGroups({
					BossOnly(SKORPYRON),
					BossOnly(CHRONOMATIC),
					BossOnly(TRILLIAX),
					BossOnly(ALURIEL),
					BossOnly(ETRAEUS),
					BossOnly(TELARN),
					BossOnly(TICHONDRIUS),
					BossOnly(KROSUS),
					BossOnly(ELISANDE),
					BossOnly(GULDAN),
				}),
				Difficulty(DIFFICULTY.RAID.HEROIC).AddGroups({
					CommonBossDrops(clone(COMMONLOOT)),
				}),
				Difficulty(DIFFICULTY.RAID.MYTHIC).AddGroups({
					CommonBossDrops(clone(COMMONLOOT)),
					BossOnly(SKORPYRON),
					BossOnly(CHRONOMATIC),
					BossOnly(TRILLIAX),
					BossOnly(ALURIEL),
					BossOnly(ETRAEUS),
					BossOnly(TELARN),
					BossOnly(TICHONDRIUS),
					BossOnly(KROSUS),
					BossOnly(ELISANDE),
					BossOnly(GULDAN),
				}),
			},
		}),
	}),
})));
