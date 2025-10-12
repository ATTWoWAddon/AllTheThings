-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
local NEXUSPOINT_XENAS = 16573;
--[[
------ Encounter Constants ------
local KASRETH = 2813;
local NYSARRA = 2814;
local LOTHRAXION = 2815;

------ EncounterToCRS ------
local EncounterToCRS = {
	[bossConstant] = { XXXXX },	--
};

------ Boss Functions ------
local InstanceHelper = CreateInstanceHelper(EncounterToCRS)
local BossOnly, Difficulty =
InstanceHelper.BossOnly, InstanceHelper.Difficulty

root(ROOTS.Instances, expansion(EXPANSION.MID, {
	inst(1316, {	-- Nexus-Point Xenas
		["coord"] = { X, Y, MAP },
		["timeline"] = { ADDED_12_0_0_LAUNCH },
		["maps"] = {},
		["groups"] = {
			Difficulty(DIFFICULTY.DUNGEON.MULTI.NORMAL_PLUS).AddGroups({
				BossOnly(KASRETH, {
				}),
				BossOnly(NYSARRA, {
				}),
				BossOnly(LOTHRAXION, {
					ach(),	-- 
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.MULTI.HEROIC_PLUS).AddGroups({
				BossOnly(LOTHRAXION, {
					ach(),	-- 
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.MYTHIC).AddGroups({
				BossOnly(LOTHRAXION, {
					ach(),	-- 
				}),
			}),
		},
	})
}));
--]]
