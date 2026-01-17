-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
local VOIDSCAR_ARENA = 16425;
--[[
------ Encounter Constants ------
local TAZRAH = 2791;
local ATROXUS = 2792;
local CHARONUS = 2793;

------ EncounterToCRS ------
local EncounterToCRS = {
	[bossConstant] = { XXXXX },	--
};

------ Boss Functions ------
local InstanceHelper = CreateInstanceHelper(EncounterToCRS)
local BossOnly, Difficulty =
InstanceHelper.BossOnly, InstanceHelper.Difficulty

root(ROOTS.Instances, expansion(EXPANSION.MID, {
	inst(1313, {	-- Voidscar Arena
		["coord"] = { X, Y, MAP },
		["maps"] = {},
		["groups"] = {
			Difficulty(DIFFICULTY.DUNGEON.MULTI.NORMAL_PLUS).AddGroups({
				BossOnly(TAZRAH, {
				}),
				BossOnly(ATROXUS, {
				}),
				BossOnly(CHARONUS, {
					ach(),	--
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.MULTI.HEROIC_PLUS).AddGroups({
				BossOnly(CHARONUS, {
					ach(),	--
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.MYTHIC).AddGroups({
				BossOnly(CHARONUS, {
					ach(),	--
				}),
			}),
		},
	})
}));
--]]
