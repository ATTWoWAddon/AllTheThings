-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

------ Encounter Constants ------
local WITHERBARK = 1214
local PROTECTORS = 1207
local XERITAC = 1209
local ARCHMAGE = 1208
local YALNU = 1210

------ EncounterToCRS ------
local EncounterToCRS = {
	[WITHERBARK] = { 81522 },	-- Witherbark
	[PROTECTORS] = {
		83894,	-- Dulhu
		83893,	-- Earthshaper Telu
		83892,	-- Life Warden Gola
	},
	[XERITAC] = {
		84666,	-- Xeri'tac (before pulling)
		84550,	-- Xeri'tac
	},
	[ARCHMAGE] = { 82682 },	-- Archmage Sol
	[YALNU] = { 83846 },	-- Yalnu
}

------ EncounterToLoot ------
local EncounterToLoot = {
	[WITHERBARK] = {
		i(119175),	-- Leafhide Penetrator
		i(109999),	-- Witherbark's Branch
	},
	[PROTECTORS] = {
		i(119176),	-- Interloper's Mossy Skull
		i(110009),	-- Leaf of the Ancient Protectors
	},
	[XERITAC] = {
		i(119173),	-- Dessicated Husk Shield
		i(110019),	-- Xeri'tac's Unhatched Egg Sac
	},
	[ARCHMAGE] = {
		i(119174),	-- Sol's Magestaff
		i(110014),	-- Spores of Alacrity
	},
	[YALNU] = {
		i(119181),	-- Hoof of Yalnu
		i(110004),	-- Coagulated Genesaur Blood
	},
}

------ Zone Drops ----------
local ZoneDropLoot = {
}

------ Common Drop Slots ----------
local CommonDropSlots = {
	[WITHERBARK] = {BACK,HANDS},
	[PROTECTORS] = {WAIST,LEGS},
	[XERITAC] = {CHEST,FEET},
	[ARCHMAGE] = {HEAD,WRIST},
	[YALNU] = {NECK,SHOULDER,FINGER},
}

local InstanceHelper = CreateInstanceHelper(EncounterToCRS, EncounterToLoot, ZoneDropLoot)
local Boss, BossOnly, Difficulty, BossWithHeader =
InstanceHelper.Boss, InstanceHelper.BossOnly, InstanceHelper.Difficulty, InstanceHelper.BossWithHeader

root(ROOTS.Instances, expansion(EXPANSION.WOD, bubbleDown({ ["timeline"] = { ADDED_6_0_3_LAUNCH } }, {
	inst(556, {	-- The Everbloom
		["coord"] = { 59.55, 45.45, GORGROND },
		["maps"] = { 620, 621 },
		["lvl"] = 100,
		["groups"] = {
			Difficulty(DIFFICULTY.DUNGEON.MULTI.NORMAL_PLUS).AddGroups({
				BossOnly(WITHERBARK),
				BossOnly(PROTECTORS),
				BossOnly(XERITAC),
				BossOnly(ARCHMAGE),
				BossOnly(YALNU, {
					ach(9044),	-- The Everbloom
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.MULTI.NORMAL_MYTHIC).AddGroups({
				Boss(WITHERBARK, {
					["sym"] = SYM_WOD_COMMON_DUNGEON_SLOTS(DIFFICULTY.DUNGEON.NORMAL_MYTHIC, unpack(CommonDropSlots[WITHERBARK])),
				}),
				Boss(PROTECTORS, {
					["sym"] = SYM_WOD_COMMON_DUNGEON_SLOTS(DIFFICULTY.DUNGEON.NORMAL_MYTHIC, unpack(CommonDropSlots[PROTECTORS])),
				}),
				Boss(XERITAC, {
					["sym"] = SYM_WOD_COMMON_DUNGEON_SLOTS(DIFFICULTY.DUNGEON.NORMAL_MYTHIC, unpack(CommonDropSlots[XERITAC])),
				}),
				Boss(ARCHMAGE, {
					["sym"] = SYM_WOD_COMMON_DUNGEON_SLOTS(DIFFICULTY.DUNGEON.NORMAL_MYTHIC, unpack(CommonDropSlots[ARCHMAGE])),
				}),
				Boss(YALNU, {
					["sym"] = SYM_WOD_COMMON_DUNGEON_SLOTS(DIFFICULTY.DUNGEON.NORMAL_MYTHIC, unpack(CommonDropSlots[YALNU])),
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.NORMAL).AddGroups({
				BossWithHeader(WITHERBARK, HEADER_WARFORGED, {
					["sym"] = SYM_WOD_COMMON_DUNGEON_SLOTS(DIFFICULTY.DUNGEON.NORMAL, unpack(CommonDropSlots[WITHERBARK])),
				}),
				BossWithHeader(PROTECTORS, HEADER_WARFORGED, {
					["sym"] = SYM_WOD_COMMON_DUNGEON_SLOTS(DIFFICULTY.DUNGEON.NORMAL, unpack(CommonDropSlots[PROTECTORS])),
				}),
				BossWithHeader(XERITAC, HEADER_WARFORGED, {
					["sym"] = SYM_WOD_COMMON_DUNGEON_SLOTS(DIFFICULTY.DUNGEON.NORMAL, unpack(CommonDropSlots[XERITAC])),
				}),
				BossWithHeader(ARCHMAGE, HEADER_WARFORGED, {
					["sym"] = SYM_WOD_COMMON_DUNGEON_SLOTS(DIFFICULTY.DUNGEON.NORMAL, unpack(CommonDropSlots[ARCHMAGE])),
				}),
				BossWithHeader(YALNU, HEADER_WARFORGED, {
					["sym"] = SYM_WOD_COMMON_DUNGEON_SLOTS(DIFFICULTY.DUNGEON.NORMAL, unpack(CommonDropSlots[YALNU])),
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.MULTI.HEROIC_PLUS).AddGroups({
				BossOnly(WITHERBARK, {
					ach(9017),	-- Water Management
				}),
				BossOnly(PROTECTORS, {
				}),
				BossOnly(XERITAC, {
				}),
				BossOnly(ARCHMAGE, {
					ach(9493, {	-- They Burn, Burn, Burn
						["timeline"] = { ADDED_6_0_3_LAUNCH, REMOVED_10_2_0 },
					}),
				}),
				BossOnly(YALNU, {
					ach(9053),	-- Heroic: The Everbloom
					ach(9374),	-- Heroic: The Everbloom Guild Run
					ach(9223, {	-- Weed Whacker
						["crs"] = { 84329 },	-- Kirin Tor Battle-Mage
					}),
					un(REMOVED_FROM_GAME, i(114138)),	-- Core of Life
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.HEROIC).AddGroups({
				Boss(WITHERBARK, {
					["sym"] = SYM_WOD_COMMON_DUNGEON_SLOTS(DIFFICULTY.DUNGEON.HEROIC, unpack(CommonDropSlots[WITHERBARK])),
				}),
				Boss(PROTECTORS, {
					["sym"] = SYM_WOD_COMMON_DUNGEON_SLOTS(DIFFICULTY.DUNGEON.HEROIC, unpack(CommonDropSlots[PROTECTORS])),
				}),
				Boss(XERITAC, {
					["sym"] = SYM_WOD_COMMON_DUNGEON_SLOTS(DIFFICULTY.DUNGEON.HEROIC, unpack(CommonDropSlots[XERITAC])),
				}),
				Boss(ARCHMAGE, {
					["sym"] = SYM_WOD_COMMON_DUNGEON_SLOTS(DIFFICULTY.DUNGEON.HEROIC, unpack(CommonDropSlots[ARCHMAGE])),
				}),
				Boss(YALNU, {
					["sym"] = SYM_WOD_COMMON_DUNGEON_SLOTS(DIFFICULTY.DUNGEON.HEROIC, unpack(CommonDropSlots[YALNU])),
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.MYTHIC).AddGroups({
				BossOnly(WITHERBARK),
				BossOnly(PROTECTORS),
				BossOnly(XERITAC),
				BossOnly(ARCHMAGE),
				BossOnly(YALNU, {
					ach(10083),	-- Mythic: The Everbloom
				}),
			}),
		},
	}),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.WOD, bubbleDownSelf({ ["timeline"] = { ADDED_6_0_2 } }, {
	inst(556, {
		q(34551),	-- Shaper Dungeon [PH] Challenge Mode - Bronze Addition (Nth)
		q(34530),	-- Shaper Dungeon [PH] Challenge Mode - Consolation (Nth)
		q(34553),	-- Shaper Dungeon [PH] Challenge Mode - Gold Addition (Nth)
		q(34552),	-- Shaper Dungeon [PH] Challenge Mode - Silver Addition (Nth)
	}),
})));
