-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
--[[
------ Encounter Constants ------
local KYSTIA = 2679;
local ZAEN = 2680;
local XATHUUX = 2681;
local LITHIEL = 2682;

------ EncounterToCRS ------
local EncounterToCRS = {
	[bossConstant] = { XXXXX },	--
};

------ Boss Functions ------
local InstanceHelper = CreateInstanceHelper(EncounterToCRS)
local BossOnly, Difficulty =
InstanceHelper.BossOnly, InstanceHelper.Difficulty

root(ROOTS.Instances, expansion(EXPANSION.MID, {
	inst(1304, {	-- Murder Row
		["coord"] = { 56.8, 61.1, SILVERMOON_CITY_MID },
		["timeline"] = { ADDED_12_0_0_LAUNCH },
		["maps"] = {
			2433,	-- Murder Row
			2434,	-- Augurs' Terrace
			2435,	-- The Illicit Rain
		},
		["groups"] = {
			Difficulty(DIFFICULTY.DUNGEON.MULTI.NORMAL_PLUS).AddGroups({
				BossOnly(KYSTIA, {
				}),
				BossOnly(ZAEN, {
				}),
				BossOnly(XATHUUX, {
				}),
				BossOnly(LITHIEL, {
					ach(41960),	-- Murder Row
				}),
				n(MISC, {
					i(236381),	-- Sargle's Fortune #12
					-- Vednor consumable buff, one per player. Not sure if worth sourcing per npc
					i(237765),	-- Hearthstop Blade
					i(237763),	-- Felstone
					i(235644),	-- Concealed Pistol
					i(236332),	-- Suntouched Special Reserve
					i(237764),	-- Exquisite Painting
					i(253622),	-- Strangely Pleasant Painting (TODO: incase it will be decor in future builds, but trash atm)
					i(253623),	-- Abstract Painting (TODO: incase it will be decor in future builds, but trash atm)
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.MULTI.HEROIC_PLUS).AddGroups({
				BossOnly(LITHIEL, {
					ach(41961),	-- Heroic: Murder Row
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.MYTHIC).AddGroups({
				BossOnly(LITHIEL, {
					ach(41962),	-- Mythic: Murder Row
				}),
			}),
		},
	})
}));
--]]
