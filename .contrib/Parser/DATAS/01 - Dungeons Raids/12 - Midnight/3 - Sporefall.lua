-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

------ Encounter Constants ------
local ROTMIRE = 2711;

------ EncounterToCRS ------
local EncounterToCRS = {
	[ROTMIRE] = { 256116 },	-- Rotmire (wrong ID still)
};

------ EncounterToLoot ------
local EncounterToLoot = {
	[ROTMIRE] = {
        i(268283),	-- Festerbloom Crown
        i(268288),	-- Fungarian Folly Faulds
        i(268289),	-- Girdle of Devouring Rot
        i(268287),	-- Grudgefiend Stompers
        i(268282),	-- Luxurious Loamstriders
        i(268284),	-- Mycomancer's Rot Robes
        i(268285),	-- Putrid Tender's Battleplate
        i(268291),	-- Rotmire's Sporeheart
        i(268286),	-- Sash of the Putrid Giant
        i(268290),	-- Sporecaller's Blooming Loop
        i(268292),	-- Sporelord's Mycelial Insignia
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
};

root(ROOTS.Instances, expansion(EXPANSION.MID, bubbleDownSelf({ ["timeline"] = { ADDED_12_0_7 } }, {
	inst(1305, {	-- Sporefall
		["coord"] = { 73.5, 66.4, MAP.MIDNIGHT.HARANDAR },
		["maps"] = {
			2427, -- Sporefall
		},
		["isRaid"] = true,
		["groups"] = {
			n(ACHIEVEMENTS, {
			}),
            n(QUESTS, {
                q(96746, {  -- Sporefall: Rotmire
                    ["qg"] = 266165,    -- Sporomir
                    ["coord"] = { 36.5, 68.4, MAP.MIDNIGHT.SILVERMOON_CITY },
                    ["groups"] = {
                        i(269258),	-- Void-Twisted Sporbit
                    },
                }),
            }),
			Difficulty(DIFFICULTY.RAID.MULTI.ALL).AddGroups({
				n(QUESTS, {
				}),
				BossOnly(ROTMIRE, {
					ach(63237),	-- Rotmire
					ach(63242),	-- Rotmire Guild Run
                    i(247235),	-- Luminous Rotshroom (DECOR!)
                    i(264313),	-- Madcap Redcap (TOY!)
                    i(264367),	-- Mycomancer's Hearthspore (TOY!)
					i(268280),	-- Sporelord's Shroom Cap (COSMETIC!)
				}),
			}),
			Difficulty(DIFFICULTY.RAID.LFR).AddGroupsWithUpgrades({
				--ZoneDrops({}),
				CommonBossDrops({
					currency(VETERAN_DAWNCREST, {
						["timeline"] = { ADDED_12_0_7, REMOVED_12_1_0 },
					}),
				}),
				header(HEADERS.LFGDungeon, 3215, {	-- Sporefall
					Boss(ROTMIRE),
				}),
			}),
			Difficulty(DIFFICULTY.RAID.NORMAL).AddGroupsWithUpgrades({
				CommonBossDrops({
					currency(CHAMPION_DAWNCREST, {
						["timeline"] = { ADDED_12_0_7, REMOVED_12_1_0 },
					}),
				}),
				--ZoneDrops({}),
				Boss(ROTMIRE),
			}),
			Difficulty(DIFFICULTY.RAID.MULTI.HEROIC_PLUS).AddGroups({
				BossOnly(ROTMIRE, {
					ach(63240),	-- Heroic: Rotmire
					ach(63246),	-- Heroic: Rotmire Guild Run
				}),
			}),
			Difficulty(DIFFICULTY.RAID.HEROIC).AddGroupsWithUpgrades({
				CommonBossDrops({
					currency(HERO_DAWNCREST, {
						["timeline"] = { ADDED_12_0_7, REMOVED_12_1_0 },
					}),
				}),
				--ZoneDrops({}),
				Boss(ROTMIRE),
			}),
			Difficulty(DIFFICULTY.RAID.MYTHIC).AddGroups({
				CommonBossDrops({
					currency(MYTH_DAWNCREST, {
						["timeline"] = { ADDED_12_0_7, REMOVED_12_1_0 },
					}),
				}),
				--ZoneDrops({}),
				Boss(ROTMIRE, {
					ach(63241), -- Mythic: Rotmire
					ach(63247),	-- Mythic: Rotmire Guild Run
				}),
			}),
		},
	}),
})));
