-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
--[[
------ Encounter Constants ------
local HOARDMONGER = 2776;
local SENTINEL = 2777;
local NALORAKK = 2778;

------ EncounterToCRS ------
local EncounterToCRS = {
	[bossConstant] = { XXXXX },	--
};

------ Boss Functions ------
local InstanceHelper = CreateInstanceHelper(EncounterToCRS)
local BossOnly, Difficulty =
InstanceHelper.BossOnly, InstanceHelper.Difficulty

root(ROOTS.Instances, expansion(EXPANSION.MID, {
	inst(1311, {	-- Den of Nalorakk
		["coord"] = { X, Y, MAP },
		["timeline"] = { ADDED_12_0_0_LAUNCH },
		["maps"] = {
			2514,	-- 
			2513,	-- 
		},
		["groups"] = {
			Difficulty(DIFFICULTY.DUNGEON.MULTI.NORMAL_PLUS).AddGroups({
				BossOnly(HOARDMONGER, {
				}),
				BossOnly(SENTINEL, {
				}),
				BossOnly(NALORAKK, {
					ach(),	-- 
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.MULTI.HEROIC_PLUS).AddGroups({
				BossOnly(NALORAKK, {
					ach(),	-- 
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.MYTHIC).AddGroups({
				BossOnly(NALORAKK, {
					ach(),	-- 
				}),
			}),
		},
	})
}));
--]]
