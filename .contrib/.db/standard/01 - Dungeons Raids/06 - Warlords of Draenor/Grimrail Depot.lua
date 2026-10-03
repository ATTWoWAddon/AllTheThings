-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

------ Encounter Constants ------
local ROCKET_BORKA = 1138
local NITROGG = 1163
local TOVRA = 1133

------ EncounterToCRS ------
local EncounterToCRS = {
	[ROCKET_BORKA] = {
		77816,	-- Borka the Brute
		77803,	-- Railmaster Rocketspark
	},
	[NITROGG] = {
		79545,	-- Nitrogg Thundertower
		79548,	-- Assault Cannon
	},
	[TOVRA] = { 80005 },	-- Skylord Tovra
}

------ EncounterToLoot ------
local EncounterToLoot = {
	[ROCKET_BORKA] = {
		i(110051),	-- Overseer's Final Word
	},
	[NITROGG] = {
		i(110052),	-- Scepter of Brutality
		i(109996),	-- Thundertower's Targeting Reticle
	},
	[TOVRA] = {
		i(110054),	-- Thunderlord Flamestaff
		i(110053),	-- Arrowbreaker Greatshield
		i(110001),	-- Tovra's Lightning Repository
	},
}

------ Zone Drops ----------
local ZoneDropLoot = {
}

local InstanceHelper = CreateInstanceHelper(EncounterToCRS, EncounterToLoot, ZoneDropLoot)
local Boss, BossOnly, Difficulty, BossWithHeader =
InstanceHelper.Boss, InstanceHelper.BossOnly, InstanceHelper.Difficulty, InstanceHelper.BossWithHeader

root(ROOTS.Instances, expansion(EXPANSION.WOD, bubbleDown({ ["timeline"] = { ADDED_6_0_3_LAUNCH } }, {
	inst(536, {	-- Grimrail Depot
		["coord"] = { 55.0, 31.3, GORGROND },
		["maps"] = { 606, 607, 608, 609 },
		["lvl"] = 100,
		["groups"] = {
			Difficulty(DIFFICULTY.DUNGEON.MULTI.NORMAL_PLUS).AddGroups({
				BossOnly(ROCKET_BORKA),
				BossOnly(NITROGG),
				BossOnly(TOVRA, {
					ach(9043),	-- Grimrail Depot
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.MULTI.NORMAL_MYTHIC).AddGroups({
				Boss(ROCKET_BORKA, {
					["sym"] = SYM_WOD_COMMON_DUNGEON_SLOTS(DIFFICULTY.DUNGEON.NORMAL_MYTHIC, WAIST, FINGER),
				}),
				Boss(NITROGG, {
					["sym"] = SYM_WOD_COMMON_DUNGEON_SLOTS(DIFFICULTY.DUNGEON.NORMAL_MYTHIC, CHEST, NECK),
				}),
				Boss(TOVRA, {
					["sym"] = SYM_WOD_COMMON_DUNGEON_SLOTS(DIFFICULTY.DUNGEON.NORMAL_MYTHIC, WRIST, HANDS, LEGS),
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.NORMAL).AddGroups({
				BossWithHeader(ROCKET_BORKA, HEADER_WARFORGED, {
					["sym"] = SYM_WOD_COMMON_DUNGEON_SLOTS(DIFFICULTY.DUNGEON.NORMAL, WAIST, FINGER),
				}),
				BossWithHeader(NITROGG, HEADER_WARFORGED, {
					["sym"] = SYM_WOD_COMMON_DUNGEON_SLOTS(DIFFICULTY.DUNGEON.NORMAL, CHEST, NECK),
				}),
				BossWithHeader(TOVRA, HEADER_WARFORGED, {
					["sym"] = SYM_WOD_COMMON_DUNGEON_SLOTS(DIFFICULTY.DUNGEON.NORMAL, WRIST, HANDS, LEGS),
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.MULTI.HEROIC_PLUS).AddGroups({
				BossOnly(ROCKET_BORKA, {
					ach(9024, {	-- This Is Why We Can't Have Nice Things
						["crs"] = { 81834 },	-- Priceless Paraphernalia
					}),
				}),
				BossOnly(NITROGG, {
					ach(9007, {	-- No Ticket
						["crs"] = { 80936 },	-- Grom'kar Grenadier
					}),
				}),
				BossOnly(TOVRA, {
					ach(9052),	-- Heroic: Grimrail Depot
					ach(9373),	-- Heroic: Grimrail Depot Guild Run
					un(REMOVED_FROM_GAME, i(114107)),	-- Core of Iron
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.HEROIC).AddGroups({
				Boss(ROCKET_BORKA, {
					["sym"] = SYM_WOD_COMMON_DUNGEON_SLOTS(DIFFICULTY.DUNGEON.HEROIC, WAIST, FINGER),
				}),
				Boss(NITROGG, {
					["sym"] = SYM_WOD_COMMON_DUNGEON_SLOTS(DIFFICULTY.DUNGEON.HEROIC, CHEST, NECK),
				}),
				Boss(TOVRA, {
					["sym"] = SYM_WOD_COMMON_DUNGEON_SLOTS(DIFFICULTY.DUNGEON.HEROIC, WRIST, HANDS, LEGS),
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.MYTHIC).AddGroups({
				BossOnly(ROCKET_BORKA),
				BossOnly(NITROGG),
				BossOnly(TOVRA, {
					ach(10082),	-- Mythic: Grimrail Depot
				}),
			}),
		},
	}),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.WOD, bubbleDownSelf({ ["timeline"] = { ADDED_6_0_2 } }, {
	inst(536, {
		q(34548),	-- Iron Depot Challenge Mode - Bronze Addition (Nth)
		q(34529),	-- Iron Depot Challenge Mode - Consolation (Nth)
		q(34550),	-- Iron Depot Challenge Mode - Gold Addition (Nth)
		q(34549),	-- Iron Depot Challenge Mode - Silver Addition (Nth)
	}),
})));
