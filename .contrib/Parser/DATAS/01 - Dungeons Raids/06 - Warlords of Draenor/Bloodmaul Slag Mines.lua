-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

------ Encounter Constants ------
local CRUSHTO = 888
local MAGMOLATUS = 893
local ROLTALL = 887
local GUGROKK = 889

------ EncounterToCRS ------
local EncounterToCRS = {
	[CRUSHTO] = { 74787 },	-- Slave Watcher Crushto
	[MAGMOLATUS] = {
		74366,	-- Forgemaster Gog'duh
		74475,	-- Magmolatus
	},
	[ROLTALL] = { 75786 },	-- Roltall
	[GUGROKK] = { 74790 },	-- Gug'rokk
}

------ EncounterToLoot ------
local EncounterToLoot = {
	[CRUSHTO] = {
		i(110040),	-- Crushto's Neck Separator
		i(110000),	-- Crushto's Runic Alarm
	},
	[MAGMOLATUS] = {
	},
	[ROLTALL] = {
		i(110041),	-- Roltall's Brutal Crescent
		i(110015),	-- Toria's Unseeing Eye
	},
	[GUGROKK] = {
		i(110042),	-- Gug'rokk's Smasher
		i(110044),	-- Ogre Dinner Plate
		i(110043),	-- Gug'rokk's Grandmother
	},
}

------ Zone Drops ----------
local ZoneDropLoot = {
}

local InstanceHelper = CreateInstanceHelper(EncounterToCRS, EncounterToLoot, ZoneDropLoot)
local Boss, BossOnly, Difficulty, BossWithHeader =
InstanceHelper.Boss, InstanceHelper.BossOnly, InstanceHelper.Difficulty, InstanceHelper.BossWithHeader

root(ROOTS.Instances, expansion(EXPANSION.WOD, bubbleDown({ ["timeline"] = { ADDED_6_0_3_LAUNCH } }, {
	inst(385, {	-- Bloodmaul Slag Mines
		["lvl"] = 90,
		["mapID"] = 573,
		["coord"] = { 49.93, 24.8, FROSTFIRE_RIDGE },
		["groups"] = {
			Difficulty(DIFFICULTY.DUNGEON.MULTI.NORMAL_PLUS).AddGroups({
				BossOnly(CRUSHTO),
				BossOnly(MAGMOLATUS),
				BossOnly(ROLTALL),
				BossOnly(GUGROKK, {
					ach(9037),	-- Bloodmaul Slag Mines
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.MULTI.NORMAL_MYTHIC).AddGroups({
				Boss(CRUSHTO, {
					["sym"] = SYM_WOD_COMMON_DUNGEON_SLOTS(DIFFICULTY.DUNGEON.NORMAL_MYTHIC, WRIST, LEGS),
				}),
				Boss(MAGMOLATUS, {
					["sym"] = SYM_WOD_COMMON_DUNGEON_SLOTS(DIFFICULTY.DUNGEON.NORMAL_MYTHIC, CHEST, HANDS),
				}),
				Boss(ROLTALL, {
					["sym"] = SYM_WOD_COMMON_DUNGEON_SLOTS(DIFFICULTY.DUNGEON.NORMAL_MYTHIC, BACK, FEET),
				}),
				Boss(GUGROKK, {
					["sym"] = SYM_WOD_COMMON_DUNGEON_SLOTS(DIFFICULTY.DUNGEON.NORMAL_MYTHIC, HEAD, SHOULDER, FINGER),
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.NORMAL).AddGroups({
				BossWithHeader(CRUSHTO, HEADER_WARFORGED, {
					["sym"] = SYM_WOD_COMMON_DUNGEON_SLOTS(DIFFICULTY.DUNGEON.NORMAL, WRIST, LEGS),
				}),
				BossWithHeader(MAGMOLATUS, HEADER_WARFORGED, {
					["sym"] = SYM_WOD_COMMON_DUNGEON_SLOTS(DIFFICULTY.DUNGEON.NORMAL, CHEST, HANDS),
				}),
				BossWithHeader(ROLTALL, HEADER_WARFORGED, {
					["sym"] = SYM_WOD_COMMON_DUNGEON_SLOTS(DIFFICULTY.DUNGEON.NORMAL, BACK, FEET),
				}),
				BossWithHeader(GUGROKK, HEADER_WARFORGED, {
					["sym"] = SYM_WOD_COMMON_DUNGEON_SLOTS(DIFFICULTY.DUNGEON.NORMAL, HEAD, SHOULDER, FINGER),
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.MULTI.HEROIC_PLUS).AddGroups({
				BossOnly(CRUSHTO),
				n(75242, {	-- Croman (The Barbarian)
					["description"] = "Click on this manly dude and have him follow you to Magmolatus and allow him to retrieve his weapon. (He has to hit the boss at least one time.)\n\nAfter he has reclaimed his weapon, bring him to the final boss and allow him to hit that boss as well before killing the boss. Croman must still be alive at the end of the dungeon.",
					["groups"] = {
						ach(9005, {	-- Come With Me If You Want to Live
							follower(177),	-- Croman
						}),
					},
				}),
				BossOnly(MAGMOLATUS, {
					ach(8993, {	-- A Gift of Earth and Fire
						["crs"] = {
							74571,	-- Calamity <Servant of the Flame>
							74570,	-- Ruination <Servant of the Earth>
						},
					}),
				}),
				BossOnly(ROLTALL),
				BossOnly(GUGROKK, {
					ach(9046),	-- Heroic: Bloodmaul Slag Mines
					ach(9369),	-- Heroic: Bloodmaul Slag Mines Guild Run
					ach(9008, {	-- Is Draenor on Fire?
						["crs"] = { 74927 },	-- Unstable Slag
					}),
					un(REMOVED_FROM_GAME, i(113682)),	-- Core of Flame
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.HEROIC).AddGroups({
				Boss(CRUSHTO, {
					["sym"] = SYM_WOD_COMMON_DUNGEON_SLOTS(DIFFICULTY.DUNGEON.HEROIC, WRIST, LEGS),
				}),
				Boss(MAGMOLATUS, {
					["sym"] = SYM_WOD_COMMON_DUNGEON_SLOTS(DIFFICULTY.DUNGEON.HEROIC, CHEST, HANDS),
				}),
				Boss(ROLTALL, {
					["sym"] = SYM_WOD_COMMON_DUNGEON_SLOTS(DIFFICULTY.DUNGEON.HEROIC, BACK, FEET),
				}),
				Boss(GUGROKK, {
					["sym"] = SYM_WOD_COMMON_DUNGEON_SLOTS(DIFFICULTY.DUNGEON.HEROIC, HEAD, SHOULDER, FINGER),
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.MYTHIC).AddGroups({
				BossOnly(CRUSHTO),
				BossOnly(MAGMOLATUS),
				BossOnly(ROLTALL),
				BossOnly(GUGROKK, {
					ach(10076),	-- Mythic: Bloodmaul Slag Mines
				}),
			}),
		},
	}),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.WOD, bubbleDownSelf({ ["timeline"] = { ADDED_6_0_2 } }, {
	inst(385, {
		q(34533),	-- Bloodmaul Slag Mines Challenge Mode - Bronze Addition (Nth)
		q(34525),	-- Bloodmaul Slag Mines Challenge Mode - Consolation (Nth)
		q(34535),	-- Bloodmaul Slag Mines Challenge Mode - Gold Addition (Nth)
		q(34534),	-- Bloodmaul Slag Mines Challenge Mode - Silver Addition (Nth)
		q(35957),	-- Bloodmaul Slag Mines Reward Quest
	}),
})));
