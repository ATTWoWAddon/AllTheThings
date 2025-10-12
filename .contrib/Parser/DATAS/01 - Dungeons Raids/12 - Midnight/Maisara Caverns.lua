-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
local MAISARA_CAVERNS = 2501;
--[[
------ Encounter Constants ------
local MUROJIN = 2810;
local VORDAZA = 2811;
local RAKTUL = 2812;

------ EncounterToCRS ------
local EncounterToCRS = {
	[bossConstant] = { XXXXX },	--
};

------ Boss Functions ------
local InstanceHelper = CreateInstanceHelper(EncounterToCRS)
local BossOnly, Difficulty =
InstanceHelper.BossOnly, InstanceHelper.Difficulty

root(ROOTS.Instances, expansion(EXPANSION.MID, {
	inst(1315, {	-- Maisara Caverns
		["coord"] = { X, Y, MAP },
		["timeline"] = { ADDED_12_0_0_LAUNCH },
		["maps"] = { MAISARA_CAVERNS },
		["groups"] = {
			Difficulty(DIFFICULTY.DUNGEON.MULTI.NORMAL_PLUS).AddGroups({
				BossOnly(MUROJIN, {
				}),
				BossOnly(VORDAZA, {
				}),
				BossOnly(RAKTUL, {
					ach(),	-- 
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.MULTI.HEROIC_PLUS).AddGroups({
				BossOnly(RAKTUL, {
					ach(),	-- 
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.MYTHIC).AddGroups({
				BossOnly(RAKTUL, {
					ach(),	-- 
				}),
			}),
		},
	})
}));
--]]
