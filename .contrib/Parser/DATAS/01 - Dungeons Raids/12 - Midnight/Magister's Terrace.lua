-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
local MAGISTERS_TERRACE = 15829;
--[[
------ Encounter Constants ------
local CUSTOS = 2659;
local GEMELIUS = 2660;
local SERANEL = 2661;
local DEGENTRIUS = 2662;

------ EncounterToCRS ------
local EncounterToCRS = {
	[bossConstant] = { XXXXX },	--
};

------ Boss Functions ------
local InstanceHelper = CreateInstanceHelper(EncounterToCRS)
local BossOnly, Difficulty =
InstanceHelper.BossOnly, InstanceHelper.Difficulty

root(ROOTS.Instances, expansion(EXPANSION.MID, bubbleDownSelf({ ["timeline"] = { ADDED_12_0_X_LAUNCH } }, {
	inst(1300, {	-- Magister's Terrace
		["coord"] = { 63.0, 15.1, MAP.MIDNIGHT.ISLE_OF_QUELDANAS },
		["maps"] = {},
		["groups"] = {
			Difficulty(DIFFICULTY.DUNGEON.MULTI.NORMAL_PLUS).AddGroups({
				BossOnly(CUSTOS, {
				}),
				BossOnly(GEMELIUS, {
				}),
				BossOnly(SERANEL, {
				}),
				BossOnly(DEGENTRIUS, {
					ach(61212),	-- Magisters' Terrace
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.MULTI.HEROIC_PLUS).AddGroups({
				BossOnly(DEGENTRIUS, {
					ach(61213),	-- Heroic: Magisters' Terrace
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.MYTHIC).AddGroups({
				BossOnly(DEGENTRIUS, {
					ach(61214),	-- Mythic: Magisters' Terrace
				}),
			}),
		},
	})
})));
--]]
