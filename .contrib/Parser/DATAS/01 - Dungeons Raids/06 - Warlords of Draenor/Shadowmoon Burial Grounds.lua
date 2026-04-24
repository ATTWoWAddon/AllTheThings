-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

------ Encounter Constants ------
local SADANA = 1139
local NHALLISH = 1168
local BONEMAW = 1140
local NERZHUL = 1160

------ EncounterToCRS ------
local EncounterToCRS = {
	[SADANA] = { 75509 },	-- Sadana Bloodfury
	[NHALLISH] = { 75829 },	-- Nhallish
	[BONEMAW] = { 75452 },	-- Bonemaw
	[NERZHUL] = { 76407 },	-- Ner'zhul
}

------ EncounterToLoot ------
local EncounterToLoot = {
	[SADANA] = {
		i(110035),	-- Sadana's Grisly Visage
	},
	[NHALLISH] = {
		i(110036),	-- Nhallish's Bloody Polearm
		i(110007),	-- Voidmender's Shadowgem
	},
	[BONEMAW] = {
		i(110037),	-- Bonetooth Longbow
		i(110012),	-- Bonemaw's Big Toe
	},
	[NERZHUL] = {
		i(110039),	-- Portal-Ripper's Staff
		i(110038),	-- Ner'zhul's Ritual Blade
	},
}

------ Zone Drops ----------
local ZoneDropLoot = {
}

------ Common Drop Slots ----------
local CommonDropSlots = {
	[SADANA] = {NECK,BACK},
	[NHALLISH] = {CHEST,WRIST},
	[BONEMAW] = {HANDS,WAIST},
	[NERZHUL] = {HEAD,FEET,FINGER},
}

local InstanceHelper = CreateInstanceHelper(EncounterToCRS, EncounterToLoot, ZoneDropLoot)
local Boss, BossOnly, Difficulty, BossWithHeader =
InstanceHelper.Boss, InstanceHelper.BossOnly, InstanceHelper.Difficulty, InstanceHelper.BossWithHeader

root(ROOTS.Instances, expansion(EXPANSION.WOD, bubbleDown({ ["timeline"] = { ADDED_6_0_3_LAUNCH } }, {
	inst(537, {	-- Shadowmoon Burial Grounds
		["coord"] = { 31.91, 42.55, DRAENOR_SHADOWMOON_VALLEY },
		["maps"] = { 574, 575, 576 },
		["lvl"] = 100,
		["groups"] = {
			Difficulty(DIFFICULTY.DUNGEON.MULTI.NORMAL_PLUS).AddGroups({
				BossOnly(SADANA),
				BossOnly(NHALLISH),
				BossOnly(BONEMAW),
				BossOnly(NERZHUL, {
					ach(9041),	-- Shadowmoon Burial Grounds
					i(138806, {	-- Illusion: Mark of Shadowmoon (ILLUSION!)
						["timeline"] = { ADDED_7_0_3 },
					}),
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.MULTI.NORMAL_MYTHIC).AddGroups({
				Boss(SADANA, {
					["sym"] = SYM_WOD_COMMON_DUNGEON_SLOTS(DIFFICULTY.DUNGEON.NORMAL_MYTHIC, unpack(CommonDropSlots[SADANA])),
				}),
				Boss(NHALLISH, {
					["sym"] = SYM_WOD_COMMON_DUNGEON_SLOTS(DIFFICULTY.DUNGEON.NORMAL_MYTHIC, unpack(CommonDropSlots[NHALLISH])),
				}),
				Boss(BONEMAW, {
					["sym"] = SYM_WOD_COMMON_DUNGEON_SLOTS(DIFFICULTY.DUNGEON.NORMAL_MYTHIC, unpack(CommonDropSlots[BONEMAW])),
				}),
				Boss(NERZHUL, {
					["sym"] = SYM_WOD_COMMON_DUNGEON_SLOTS(DIFFICULTY.DUNGEON.NORMAL_MYTHIC, unpack(CommonDropSlots[NERZHUL])),
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.NORMAL).AddGroups({
				BossWithHeader(SADANA, HEADER_WARFORGED, {
					["sym"] = SYM_WOD_COMMON_DUNGEON_SLOTS(DIFFICULTY.DUNGEON.NORMAL, unpack(CommonDropSlots[SADANA])),
				}),
				BossWithHeader(NHALLISH, HEADER_WARFORGED, {
					["sym"] = SYM_WOD_COMMON_DUNGEON_SLOTS(DIFFICULTY.DUNGEON.NORMAL, unpack(CommonDropSlots[NHALLISH])),
				}),
				BossWithHeader(BONEMAW, HEADER_WARFORGED, {
					["sym"] = SYM_WOD_COMMON_DUNGEON_SLOTS(DIFFICULTY.DUNGEON.NORMAL, unpack(CommonDropSlots[BONEMAW])),
				}),
				BossWithHeader(NERZHUL, HEADER_WARFORGED, {
					["sym"] = SYM_WOD_COMMON_DUNGEON_SLOTS(DIFFICULTY.DUNGEON.NORMAL, unpack(CommonDropSlots[NERZHUL])),
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.MULTI.HEROIC_PLUS).AddGroups({
				BossOnly(SADANA, {
					ach(9018),	-- What's Your Sign?
				}),
				BossOnly(NHALLISH, {
				}),
				BossOnly(BONEMAW, {
					ach(9025, {	-- Icky Ichors
						["crs"] = { 77006 },	-- Corpse Skitterling
					}),
				}),
				BossOnly(NERZHUL, {
					ach(9054),	-- Heroic: Shadowmoon Burial Grounds
					ach(9375),	-- Heroic: Shadowmoon Burial Grounds Guild Run
					ach(9026, {	-- Souls of the Lost
						["crs"] = { 76518 },	-- Ritual of Bones
					}),
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.HEROIC).AddGroups({
				Boss(SADANA, {
					["sym"] = SYM_WOD_COMMON_DUNGEON_SLOTS(DIFFICULTY.DUNGEON.HEROIC, unpack(CommonDropSlots[SADANA])),
				}),
				Boss(NHALLISH, {
					["sym"] = SYM_WOD_COMMON_DUNGEON_SLOTS(DIFFICULTY.DUNGEON.HEROIC, unpack(CommonDropSlots[NHALLISH])),
				}),
				Boss(BONEMAW, {
					["sym"] = SYM_WOD_COMMON_DUNGEON_SLOTS(DIFFICULTY.DUNGEON.HEROIC, unpack(CommonDropSlots[BONEMAW])),
				}),
				Boss(NERZHUL, {
					["sym"] = SYM_WOD_COMMON_DUNGEON_SLOTS(DIFFICULTY.DUNGEON.HEROIC, unpack(CommonDropSlots[NERZHUL])),
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.MYTHIC).AddGroups({
				BossOnly(SADANA),
				BossOnly(NHALLISH),
				BossOnly(BONEMAW),
				BossOnly(NERZHUL, {
					ach(10084),	-- Mythic: Shadowmoon Burial Grounds
				}),
			}),
		},
	}),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.WOD, bubbleDownSelf({ ["timeline"] = { ADDED_6_0_2 } }, {
	inst(537, {
		q(34545),	-- Shadowmoon Burial Grounds Challenge Mode - Bronze Addition (Nth)
		q(34528),	-- Shadowmoon Burial Grounds Challenge Mode - Consolation (Nth)
		q(34547),	-- Shadowmoon Burial Grounds Challenge Mode - Gold Addition (Nth)
		q(34546),	-- Shadowmoon Burial Grounds Challenge Mode - Silver Addition (Nth)
	}),
})));
