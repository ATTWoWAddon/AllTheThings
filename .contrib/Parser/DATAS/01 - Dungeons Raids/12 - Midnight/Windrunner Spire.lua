-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
--[[
------ Encounter Constants ------
local EMBERDAWN = 2655;
local DUO = 2656;
local KROLUK = 2657;
local HEART = 2658;

------ EncounterToCRS ------
local EncounterToCRS = {
	[EMBERDAWN] = { 231606 },	-- Emberdawn
};

------ Boss Functions ------
local InstanceHelper = CreateInstanceHelper(EncounterToCRS)
local BossOnly, Difficulty =
InstanceHelper.BossOnly, InstanceHelper.Difficulty

root(ROOTS.Instances, expansion(EXPANSION.MID, {
	inst(1299, {	-- Windrunner Spire
		["coord"] = { 35.5, 78.8, EVERSONG_WOODS_MID },
		["timeline"] = { ADDED_12_0_0_LAUNCH },
		["maps"] = {
			2492,	-- The Promenade
			2493,	-- Veressa's Repose - Upper
			2494,	-- Veressa's Repose - Lower
			xx,	-- Sylvanas's Quarters - Upper
			2497,	-- Sylvanas's Quarters - Lower
			2498,	-- Windrunner Vault
			2499,	-- The Pinnacle
		},
		["groups"] = {
			Difficulty(DIFFICULTY.DUNGEON.MULTI.NORMAL_PLUS).AddGroups({
				BossOnly(EMBERDAWN, {
				}),
				BossOnly(DUO, {
				}),
				BossOnly(KROLUK, {
				}),
				BossOnly(HEART, {	-- The Restless Heart
					ach(41287),	-- Windrunner Spire
				}),
			}),
			d(DIFFICULTY.DUNGEON.MULTI.HEROIC_PLUS).AddGroups({
				BossOnly(HEART, {	-- The Restless Heart
					ach(41288),	-- Heroic: Windrunner Spire
				}),
			}),
			d(DIFFICULTY.DUNGEON.MYTHIC).AddGroups({
				BossOnly(HEART, {	-- The Restless Heart
					ach(41291),	-- Mythic: Windrunner Spire
				}),
			}),
		},
	})
}));
--]]
