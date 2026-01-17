-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
local BLINDING_VALE = 2500;
--[[
------ Encounter Constants ------
local TRINITY = 2769;
local IKUZZ = 2770;
local RUIA = 2771;
local ZIEKKET = 2772;

------ EncounterToCRS ------
local EncounterToCRS = {
	[TRINITY] = {
		243029,	-- Kezkitt
		243028,	-- Meittik
		243030,	-- Lekshi
	},
	[IKUZZ] = { 244887 },	-- Ikuzz the Light Hunter
	[RUIA] = { 245912 },	-- Lightwarden Ruia
	[ZIEKKET] = { 247676 },	-- Ziekket
};

------ Boss Functions ------
local InstanceHelper = CreateInstanceHelper(EncounterToCRS)
local BossOnly, Difficulty =
InstanceHelper.BossOnly, InstanceHelper.Difficulty

root(ROOTS.Instances, expansion(EXPANSION.MID, {
	inst(1309, {	-- The Blinding Vale
		["coord"] = { 27.2, 78.0, HARANDAR },
		["maps"] = { BLINDING_VALE },
		["groups"] = {
			Difficulty(DIFFICULTY.DUNGEON.MULTI.NORMAL_PLUS).AddGroups({
				BossOnly(TRINITY, {
				}),
				BossOnly(IKUZZ, {
				}),
				BossOnly(RUIA, {
				}),
				BossOnly(ZIEKKET, {
					ach(),	--
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.MULTI.HEROIC_PLUS).AddGroups({
				BossOnly(ZIEKKET, {
					ach(),	--
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.MYTHIC).AddGroups({
				BossOnly(ZIEKKET, {
					ach(),	--
				}),
			}),
		},
	})
}));
--]]
