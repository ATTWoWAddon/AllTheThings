-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

------ Encounter Constants ------
local NOKGAR = 1235
local ENFORCERS = 1236
local OSHIR = 1237
local SKULLOC = 1238

------ EncounterToCRS ------
local EncounterToCRS = {
	[NOKGAR] = {
		81297,	-- Dreadfang
		81305,	-- Fleshrender Nok'gar
	},
	[ENFORCERS] = {
		80816,	-- Ahri'ok Dugru
		80805,	-- Makogg Emberblade
		80808,	-- Neesa Nox
	},
	[OSHIR] = { 79852 },	-- Oshir
	[SKULLOC] = {
		83613,	-- Koramar
		83612,	-- Skulloc
		83616,	-- Zoggosh
	},
}

------ EncounterToLoot ------
local EncounterToLoot = {
	[NOKGAR] = {
		i(110055),	-- Gutwrench Goreaxe
		i(110002),	-- Fleshrender's Meathook
	},
	[ENFORCERS] = {
		i(110056),	-- Black Iron Sniper Rifle
		i(110017),	-- Enforcer's Stun Grenade
	},
	[OSHIR] = {
		i(110057),	-- Mindbreaker Scepter
		i(109997),	-- Kihra's Adrenaline Injector
	},
	[SKULLOC] = {
		i(110059),	-- Chasmwrench Docking Hook
		i(110058),	-- Bloodied Hand of Woe
		i(110060),	-- Painbringer's Crystal
	},
}

------ Zone Drops ----------
local ZoneDropLoot = {
}

------ Common Drop Slots ----------
local CommonDropSlots = {
	[NOKGAR] = {CHEST,FINGER},
	[ENFORCERS] = {HEAD,NECK},
	[OSHIR] = {WAIST,WRIST},
	[SKULLOC] = {SHOULDER,HANDS,LEGS},
}

local InstanceHelper = CreateInstanceHelper(EncounterToCRS, EncounterToLoot, ZoneDropLoot)
local Boss, BossOnly, Difficulty, BossWithHeader =
InstanceHelper.Boss, InstanceHelper.BossOnly, InstanceHelper.Difficulty, InstanceHelper.BossWithHeader

root(ROOTS.Instances, expansion(EXPANSION.WOD, bubbleDown({ ["timeline"] = { ADDED_6_0_3_LAUNCH } }, {
	inst(558, {	-- Iron Docks
		["mapID"] = 595,
		["coord"] = { 45.36, 13.52, GORGROND },
		["lvl"] = 92,
		["groups"] = {
			Difficulty(DIFFICULTY.DUNGEON.MULTI.NORMAL_PLUS).AddGroups({
				BossOnly(NOKGAR),
				BossOnly(ENFORCERS),
				BossOnly(OSHIR),
				BossOnly(SKULLOC, {
					ach(9038),	-- Iron Docks
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.MULTI.NORMAL_MYTHIC).AddGroups({
				Boss(NOKGAR, {
					["sym"] = SYM_WOD_COMMON_DUNGEON_SLOTS(DIFFICULTY.DUNGEON.NORMAL_MYTHIC, unpack(CommonDropSlots[NOKGAR])),
				}),
				Boss(ENFORCERS, {
					["sym"] = SYM_WOD_COMMON_DUNGEON_SLOTS(DIFFICULTY.DUNGEON.NORMAL_MYTHIC, unpack(CommonDropSlots[ENFORCERS])),
				}),
				Boss(OSHIR, {
					["sym"] = SYM_WOD_COMMON_DUNGEON_SLOTS(DIFFICULTY.DUNGEON.NORMAL_MYTHIC, unpack(CommonDropSlots[OSHIR])),
				}),
				Boss(SKULLOC, {
					["sym"] = SYM_WOD_COMMON_DUNGEON_SLOTS(DIFFICULTY.DUNGEON.NORMAL_MYTHIC, unpack(CommonDropSlots[SKULLOC])),
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.NORMAL).AddGroups({
				BossWithHeader(NOKGAR, HEADER_WARFORGED, {
					["sym"] = SYM_WOD_COMMON_DUNGEON_SLOTS(DIFFICULTY.DUNGEON.NORMAL, unpack(CommonDropSlots[NOKGAR])),
				}),
				BossWithHeader(ENFORCERS, HEADER_WARFORGED, {
					["sym"] = SYM_WOD_COMMON_DUNGEON_SLOTS(DIFFICULTY.DUNGEON.NORMAL, unpack(CommonDropSlots[ENFORCERS])),
				}),
				BossWithHeader(OSHIR, HEADER_WARFORGED, {
					["sym"] = SYM_WOD_COMMON_DUNGEON_SLOTS(DIFFICULTY.DUNGEON.NORMAL, unpack(CommonDropSlots[OSHIR])),
				}),
				BossWithHeader(SKULLOC, HEADER_WARFORGED, {
					["sym"] = SYM_WOD_COMMON_DUNGEON_SLOTS(DIFFICULTY.DUNGEON.NORMAL, unpack(CommonDropSlots[SKULLOC])),
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.MULTI.HEROIC_PLUS).AddGroups({
				n(ACHIEVEMENTS, {
					ach(9081),	-- Expert Timing
				}),
				BossOnly(NOKGAR, {
					ach(9083, {	-- Militaristic, Expansionist
						["crs"] = {
							83026,	-- Siegemaster Olugar
							84520,	-- Pitwarden Gwarnok
							81603,	-- Champion Druna
						},
					}),
				}),
				BossOnly(ENFORCERS, {
				}),
				BossOnly(OSHIR, {
				}),
				BossOnly(SKULLOC, {
					ach(9047),	-- Heroic: Iron Docks
					ach(9370),	-- Heroic: Iron Docks Guild Run
					ach(9082),	-- Take Cover!
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.HEROIC).AddGroups({
				Boss(NOKGAR, {
					["sym"] = SYM_WOD_COMMON_DUNGEON_SLOTS(DIFFICULTY.DUNGEON.HEROIC, unpack(CommonDropSlots[NOKGAR])),
				}),
				Boss(ENFORCERS, {
					["sym"] = SYM_WOD_COMMON_DUNGEON_SLOTS(DIFFICULTY.DUNGEON.HEROIC, unpack(CommonDropSlots[ENFORCERS])),
				}),
				Boss(OSHIR, {
					["sym"] = SYM_WOD_COMMON_DUNGEON_SLOTS(DIFFICULTY.DUNGEON.HEROIC, unpack(CommonDropSlots[OSHIR])),
				}),
				Boss(SKULLOC, {
					["sym"] = SYM_WOD_COMMON_DUNGEON_SLOTS(DIFFICULTY.DUNGEON.HEROIC, unpack(CommonDropSlots[SKULLOC])),
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.MYTHIC).AddGroups({
				BossOnly(NOKGAR),
				BossOnly(ENFORCERS),
				BossOnly(OSHIR),
				BossOnly(SKULLOC, {
					ach(10079),	-- Mythic: Iron Docks
				}),
			}),
		},
	}),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.WOD, bubbleDownSelf({ ["timeline"] = { ADDED_6_0_2 } }, {
	inst(558, {
		q(34536),	-- Iron Docks Challenge Mode - Bronze Addition (Nth)
		q(34526),	-- Iron Docks Challenge Mode - Consolation (Nth)
		q(34538),	-- Iron Docks Challenge Mode - Gold Addition (Nth)
		q(34537),	-- Iron Docks Challenge Mode - Silver Addition (Nth)
		q(35958),	-- Iron Docks Reward Quest
	}),
})));
