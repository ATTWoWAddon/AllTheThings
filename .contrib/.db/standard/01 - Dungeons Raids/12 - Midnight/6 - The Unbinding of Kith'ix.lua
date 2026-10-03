-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

------ Encounter Constants ------
local KITHIX = 2896;

------ EncounterToCRS ------
local EncounterToCRS = {
	[KITHIX] = { 267861 },	-- Kith'ix
};

------ EncounterToLoot ------
local EncounterToLoot = {
	[KITHIX] = {
		i(281238),	-- Aberrant Commander's Gauntlets
		i(281029),	-- Band of the Swarmcaller
		i(281239),	-- Corroded Hulk's Skullcap
		i(281236),	-- Leggings of Palpable Terror
		i(280617),	-- Lightbearer's Shield Fragment
        i(280799),	-- Lu'selama, Light's Justice
		i(281056),	-- Sanctified Knight's Phoenixblade
		i(280835),	-- Sigil of the Impending Eclipse
		i(281215),	-- Twisted Horror's Tendril
		i(281235),	-- Voidweaver's Vestments
	};
};

------ Zone Drops ----------
local ZoneDropLoot = {
};

------ Boss Functions ------
local InstanceHelper = CreateInstanceHelper(EncounterToCRS, EncounterToLoot, ZoneDropLoot)
local Boss, BossOnly, Difficulty, CommonBossDrops, ZoneDrops =
InstanceHelper.Boss, InstanceHelper.BossOnly, InstanceHelper.Difficulty, InstanceHelper.CommonBossDrops, InstanceHelper.ZoneDrops

InstanceHelper.UpgradeMapping = {
	[DIFFICULTY.RAID.LFR] = 3,
	[DIFFICULTY.RAID.NORMAL] = 5,
	[DIFFICULTY.RAID.HEROIC] = 6,
}

root(ROOTS.Instances, expansion(EXPANSION.MID, {
	inst(1324, {	-- The Unbinding of Kith'ix
		["coord"] = { 73.3, 8.6, MAP.MIDNIGHT.VAULTS_UNDERBELLY },
		["maps"] = {
			2669,	-- The Unbinding of Kith'ix
		},
		["isRaid"] = true,
		["timeline"] = { ADDED_12_1_5 },
		["groups"] = {
			Difficulty(DIFFICULTY.RAID.MULTI.ALL).AddGroups({
				BossOnly(KITHIX, {
					ach(63692),	-- Kith'ix
					i(281213),	-- Kith'ix's Seal (DECOR!)
					i(281615),	-- Shadeweaver's Hearthstone (TOY!)
				}),
			}),
			Difficulty(DIFFICULTY.RAID.LFR).AddGroupsWithUpgrades({
				Boss(KITHIX),
			}),
			Difficulty(DIFFICULTY.RAID.MULTI.NORMAL_PLUS).AddGroups({
				BossOnly(KITHIX, {
					ach(64167),	-- Kith'ix Guild Run
				}),
			}),
			Difficulty(DIFFICULTY.RAID.NORMAL).AddGroups({
				Boss(KITHIX),
			}),
			Difficulty(DIFFICULTY.RAID.MULTI.HEROIC_PLUS).AddGroups({
				BossOnly(KITHIX, {
					ach(64168),	-- Heroic: Kith'ix Guild Run
				}),
			}),
			Difficulty(DIFFICULTY.RAID.HEROIC).AddGroupsWithUpgrades({
				Boss(KITHIX, {
					ach(63693),	-- Heroic: Kith'ix
				}),
			}),
			Difficulty(DIFFICULTY.RAID.MYTHIC).AddGroups({
				Boss(KITHIX, {
					ach(63694),	-- Mythic: Kith'ix
					ach(64169),	-- Mythic: Kith'ix Guild Run
					i(284159, {	-- Libram of the Matriarch (TOY!)
						i(284160, { ["classes"] = { PALADIN } }),	-- Glyph of the Matriarch's Wings
					}),
				}),
			}),
		},
	}),
}))

--root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.MID, {
--	inst(1324, {	-- The Unbinding of Kith'ix
--		["timeline"] = { ADDED_12_1_5 },
--		["groups"] = {
--		},
--	}),
--}))
