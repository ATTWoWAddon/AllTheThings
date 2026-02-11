-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

------ Encounter Constants ------
local TAZRAH = 2791;
local ATROXUS = 2792;
local CHARONUS = 2793;

------ EncounterToCRS ------
local EncounterToCRS = {
	[TAZRAH] = { 238887 },	-- Taz'Rah
	[ATROXUS] = { 239008 },	-- Atroxus
	[CHARONUS] = { 248015 },	-- Charonus
};

------ Boss Functions ------
local InstanceHelper = CreateInstanceHelper(EncounterToCRS)
local BossOnly, Difficulty =
InstanceHelper.BossOnly, InstanceHelper.Difficulty

root(ROOTS.Instances, expansion(EXPANSION.MID, bubbleDownSelf({ ["timeline"] = { ADDED_12_0_X_LAUNCH } }, {
	inst(1313, {	-- Voidscar Arena
		["coord"] = { 53.7, 34.8, MAP.MIDNIGHT.VOIDSTORM },
		["maps"] = {
			2572,	-- Voidscar Arena
			2573,	-- Domanaar's Ascent
			2574,	-- Halls of Spite
		},
		["groups"] = {
			Difficulty(DIFFICULTY.DUNGEON.MULTI.NORMAL_PLUS).AddGroups({
				BossOnly(TAZRAH, {
					i(251221),	-- Despondent's Gauntlets
					i(251222),	-- Ethereal Netherwrap
					i(251219),	-- Riftworn Stompers
					i(251223),	-- Somber Spaulders
					i(251223),	-- Somber Spaulders
					i(251218),	-- Taz'Rah's Cosmic Edge
					i(250225),	-- Void Execution Mandate
					i(251220),	-- Voidscarred Crown
				}),
				BossOnly(ATROXUS, {
					i(251228),	-- Behemoth Waistband
					i(251225),	-- Fang of Contagion
					i(251226),	-- Hide of Pestilence
					i(251224),	-- Hulking Handaxe
					i(251227),	-- Poisoner's Pauldrons
					i(252258),	-- Sickening Signet of Atroxus
					i(250245),	-- Tumor of the Swarm
					i(251229),	-- Visor of the Predator
				}),
				BossOnly(CHARONUS, {
					ach(61508),	-- Voidscar Arena
					i(256721),	-- Design: Voidstone Shielding Array (RECIPE!)
					i(264336),	-- Voidlight Brazier (DECOR!)
					i(251230),	-- Charonic Crescent
					i(251234),	-- Graft of the Domanaar
					i(251235),	-- Gravitic Girdle
					i(251233),	-- Manipulator's Vest
					i(250224),	-- Mindpiercer's Sigil
					i(251232),	-- Overseer's Diadem
					i(251231),	-- Singularity Slicer
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.MULTI.HEROIC_PLUS).AddGroups({
				BossOnly(CHARONUS, {
					ach(61509),	-- Heroic: Voidscar Arena
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.MYTHIC).AddGroups({
				BossOnly(CHARONUS, {
					ach(61510),	-- Mythic: Voidscar Arena
					ach(61620),	-- Mythic: Voidscar Arena Guild Run
				}),
			}),
		},
	})
})));
