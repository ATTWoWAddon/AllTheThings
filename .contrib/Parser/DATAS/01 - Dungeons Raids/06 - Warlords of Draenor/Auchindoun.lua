-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

------ Encounter Constants ------
local VIGILANT = 1185
local SOULBINDER = 1186
local AZZAKEL = 1216
local TERONGOR = 1225

------ EncounterToCRS ------
local EncounterToCRS = {
	[VIGILANT] = { 75839 },	-- Vigilant Kaathar
	[SOULBINDER] = { 76177 },	-- Soulbinder Nyami
	[AZZAKEL] = { 75927 },	-- Azzakel
	[TERONGOR] = { 77734 },	-- Teron'gor
}

------ EncounterToLoot ------
local EncounterToLoot = {
	[VIGILANT] = {
		i(110045),	-- Kamui's Crystalline Staff of Wizardry
	},
	[SOULBINDER] = {
		i(110046),	-- Hammer of the Soulbinder
		i(110047),	-- Soulcutter Mageblade
	},
	[AZZAKEL] = {
		i(110048),	-- Azzakel's Boltslinger
		i(109995),	-- Blood Seal of Azzakel
	},
	[TERONGOR] = {
		i(110049),	-- Bloodblade of Teron'Gor
		i(110050),	-- Dagger of the Sanguine Emeralds
		i(110005),	-- Crystalline Blood Drop
		i(110010),	-- Mote of Corruption
	},
}

------ Zone Drops ----------
local ZoneDropLoot = {
}

local InstanceHelper = CreateInstanceHelper(EncounterToCRS, EncounterToLoot, ZoneDropLoot)
local Boss, BossOnly, Difficulty, BossWithHeader =
InstanceHelper.Boss, InstanceHelper.BossOnly, InstanceHelper.Difficulty, InstanceHelper.BossWithHeader

root(ROOTS.Instances, expansion(EXPANSION.WOD, bubbleDown({ ["timeline"] = { ADDED_6_0_3_LAUNCH } }, {
	inst(547, {	-- Auchindoun
		["lvl"] = 94,
		["mapID"] = 593,
		["coord"] = { 46.27, 73.92, TALADOR },
		["groups"] = {
			Difficulty(DIFFICULTY.DUNGEON.MULTI.NORMAL_PLUS).AddGroups({
				BossOnly(VIGILANT),
				BossOnly(SOULBINDER),
				BossOnly(AZZAKEL),
				BossOnly(TERONGOR, {
					ach(9039),	-- Auchindoun
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.MULTI.NORMAL_MYTHIC).AddGroups({
				Boss(VIGILANT, {
					["sym"] = SYM_WOD_COMMON_DUNGEON_SLOTS(DIFFICULTY.DUNGEON.NORMAL_MYTHIC, WAIST, FINGER),
				}),
				Boss(SOULBINDER, {
					["sym"] = SYM_WOD_COMMON_DUNGEON_SLOTS(DIFFICULTY.DUNGEON.NORMAL_MYTHIC, CHEST, NECK),
				}),
				Boss(AZZAKEL, {
					["sym"] = SYM_WOD_COMMON_DUNGEON_SLOTS(DIFFICULTY.DUNGEON.NORMAL_MYTHIC, WRIST, HANDS),
				}),
				Boss(TERONGOR, {
					["sym"] = SYM_WOD_COMMON_DUNGEON_SLOTS(DIFFICULTY.DUNGEON.NORMAL_MYTHIC, BACK, LEGS, FEET),
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.NORMAL).AddGroups({
				BossWithHeader(VIGILANT, HEADER_WARFORGED, {
					["sym"] = SYM_WOD_COMMON_DUNGEON_SLOTS(DIFFICULTY.DUNGEON.NORMAL, WAIST, FINGER),
				}),
				BossWithHeader(SOULBINDER, HEADER_WARFORGED, {
					["sym"] = SYM_WOD_COMMON_DUNGEON_SLOTS(DIFFICULTY.DUNGEON.NORMAL, CHEST, NECK),
				}),
				BossWithHeader(AZZAKEL, HEADER_WARFORGED, {
					["sym"] = SYM_WOD_COMMON_DUNGEON_SLOTS(DIFFICULTY.DUNGEON.NORMAL, WRIST, HANDS),
				}),
				BossWithHeader(TERONGOR, HEADER_WARFORGED, {
					["sym"] = SYM_WOD_COMMON_DUNGEON_SLOTS(DIFFICULTY.DUNGEON.NORMAL, BACK, LEGS, FEET),
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.MULTI.HEROIC_PLUS).AddGroups({
				BossOnly(VIGILANT),
				BossOnly(SOULBINDER, {
					ach(9023, {	-- ...They All Fall Down
						["crs"] = { 76283 },	-- Malefic Defender
					}),
				}),
				BossOnly(AZZAKEL, {
					ach(9551),	-- Demon's Souls
				}),
				BossOnly(TERONGOR, {
					ach(9049),	-- Heroic: Auchindoun
					ach(9371),	-- Heroic: Auchindoun Guild Run
					ach(9552),	-- No Tag-backs!
					un(REMOVED_FROM_GAME, i(114240)),	-- Corrupted Blood of Teron'gor
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.HEROIC).AddGroups({
				Boss(VIGILANT, {
					["sym"] = SYM_WOD_COMMON_DUNGEON_SLOTS(DIFFICULTY.DUNGEON.HEROIC, WAIST, FINGER),
				}),
				Boss(SOULBINDER, {
					["sym"] = SYM_WOD_COMMON_DUNGEON_SLOTS(DIFFICULTY.DUNGEON.HEROIC, CHEST, NECK),
				}),
				Boss(AZZAKEL, {
					["sym"] = SYM_WOD_COMMON_DUNGEON_SLOTS(DIFFICULTY.DUNGEON.HEROIC, WRIST, HANDS),
				}),
				Boss(TERONGOR, {
					["sym"] = SYM_WOD_COMMON_DUNGEON_SLOTS(DIFFICULTY.DUNGEON.HEROIC, BACK, LEGS, FEET),
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.MYTHIC).AddGroups({
				BossOnly(VIGILANT),
				BossOnly(SOULBINDER),
				BossOnly(AZZAKEL),
				BossOnly(TERONGOR, {
					ach(10080),	-- Mythic: Auchindoun
				}),
			}),
		},
	}),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.WOD, bubbleDownSelf({ ["timeline"] = { ADDED_6_0_2 } }, {
	inst(547, {
		q(35960),	-- Auchindoun Reward Quest
		q(34539),	-- Draenor Challenge Mode - Bronze Addition (Nth)
		q(34527),	-- Draenor Challenge Mode - Consolation (Nth)
		q(34541),	-- Draenor Challenge Mode - Gold Addition (Nth)
		q(34540),	-- Draenor Challenge Mode - Silver Addition (Nth)
	}),
})));
