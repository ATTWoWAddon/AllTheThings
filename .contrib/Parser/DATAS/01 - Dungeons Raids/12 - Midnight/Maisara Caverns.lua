-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

------ Encounter Constants ------
local MUROJIN = 2810;
local VORDAZA = 2811;
local RAKTUL = 2812;

------ EncounterToCRS ------
local EncounterToCRS = {
	[MUROJIN] = {
		247570,	-- Muro'jin
		247572,	-- Nekraxx
	},
	[VORDAZA] = { 248595 },	-- Vordaza
	[RAKTUL] = { 248605 },	-- Rak'tul
};

------ Boss Functions ------
local InstanceHelper = CreateInstanceHelper(EncounterToCRS)
local BossOnly, Difficulty =
InstanceHelper.BossOnly, InstanceHelper.Difficulty

root(ROOTS.Instances, expansion(EXPANSION.MID, bubbleDownSelf({ ["timeline"] = { ADDED_12_0_X_LAUNCH } }, {
	inst(1315, {	-- Maisara Caverns
		["coord"] = { 44.0, 39.6, MAP.MIDNIGHT.ZULAMAN },
		["maps"] = { 2501 },	-- Maisara Caverns
		["groups"] = {
			Difficulty(DIFFICULTY.DUNGEON.MULTI.NORMAL_PLUS).AddGroups({
				BossOnly(MUROJIN, {
					i(251174),	-- Deciever's Rotbow
					i(251166),	-- Falconer's Cinch
					i(251167),	-- Nightprey Stalkers
					i(251176),	-- Reanimator's Weight
					i(251162),	-- Traitor's Talon
					i(263193),	-- Trollhunter's Bands
				}),
				BossOnly(VORDAZA, {
					i(251178),	-- Ceremonial Hexblade
					i(251171),	-- Enthralled Bonespines
					i(251169),	-- Footwraps of Ill-Fate
					i(250223),	-- Soulcatcher's Charm
					i(251161),	-- Soulhunter's Mask
					i(251172),	-- Vilehex Bonds
					i(251170),	-- Wickedweave Trousers
				}),
				BossOnly(RAKTUL, {
					ach(61639),	-- Maisara Caverns
					i(251164),	-- Amalgamation's Harness
					i(251163),	-- Berserker's Hexclaws
					i(251179),	-- Decaying Cuirass
					i(251177),	-- Fetid Vilecrown
					i(251168),	-- Liferipper's Cutlass
					i(251175),	-- Soulblight Cleaver
					i(250258),	-- Vessel of Tortured Souls
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.MULTI.HEROIC_PLUS).AddGroups({
				BossOnly(RAKTUL, {
					ach(61644),	-- Heroic: Maisara Caverns
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.MYTHIC).AddGroups({
				BossOnly(RAKTUL, {
					ach(61645),	-- Mythic: Maisara Caverns
					ach(61616),	-- Mythic: Maisara Caverns Guild Run
					i(256625),	-- Pattern: Hexwoven Strand (RECIPE!)
				}),
			}),
		},
	})
})));
