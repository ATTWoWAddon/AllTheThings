-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

------ Encounter Constants ------
local NYMRISSA = 2849;

------ EncounterToCRS ------
local EncounterToCRS = {
	[NYMRISSA] = { 252959 },	-- Nymrissa Wavecaller
};

------ EncounterToLoot ------
local EncounterToLoot = {
	[NYMRISSA] = {
        i(268266),	-- Alluring Bubbleband
        i(268247),	-- Breakwater Boots
        i(268262),	-- Bubblefin Splash Guard
        i(268232),	-- Cincture of the Abyssal Grotto
        i(268244),	-- Forgotten Grotto Girdle
        i(268263),	-- Frostscale's Mystic Frond
        i(268238),	-- Grips of Swirling Fury
        i(268217),	-- Rising Tide Wristguards
        i(268226),	-- Swelling Sea Spaulders
        i(268221),	-- Tidebound Sorcereress's Robes
        i(268199),	-- Tidepiercer's Bubble Popper
		i(270167),	-- Wavecaller's Seastone
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
	-- #IF AFTER 12.2
	[DIFFICULTY.RAID.WORLD] = 0,
	[DIFFICULTY.RAID.NORMAL] = 0,
	[DIFFICULTY.RAID.HEROIC] = 0,
	-- #ELSE
	[DIFFICULTY.RAID.WORLD] = 3,
	[DIFFICULTY.RAID.NORMAL] = 5,
	[DIFFICULTY.RAID.HEROIC] = 6,
	-- #ENDIF
}

root(ROOTS.Instances, expansion(EXPANSION.MID, {
	inst(1317, {	-- The Tidebound Grotto
		["coord"] = { 59.5, 66.2, MAP.MIDNIGHT.THE_COILED_ISLE },
		["maps"] = {
			2632, -- The Tidebound Grotto
		},
		["isRaid"] = true,
		["timeline"] = { ADDED_12_1_0 },
		["groups"] = {
			n(ACHIEVEMENTS, {
			}),
            n(QUESTS, {
            }),
			Difficulty(DIFFICULTY.RAID.MULTI.MID_WORLD_BOSS_RAID).AddGroups({
				n(WORLD_QUESTS, {
					q(97128, {	-- Lair: Nymrissa Wavecaller
						["isWeekly"] = true;
					}),
				}),
				BossOnly(NYMRISSA, {
					ach(63683),	-- Nymrissa Wavecaller
					i(274708),	-- Nebulous Voidcache: Nymrissa Wavecaller
                    i(279112),	-- Clumped Asteroidea (DECOR!)
				}),
			}),
			Difficulty(DIFFICULTY.RAID.WORLD).AddGroupsWithUpgrades({
				Boss(NYMRISSA),
			}),
			Difficulty(DIFFICULTY.RAID.NORMAL).AddGroupsWithUpgrades({
				Boss(NYMRISSA, {
					ach(63686),	-- Nymrissa Wavecaller Guild Run
				}),
			}),
			Difficulty(DIFFICULTY.RAID.MULTI.HEROIC_PLUS).AddGroups({
				BossOnly(NYMRISSA, {
					ach(63681),	-- Heroic: Nymrissa Wavecaller
					ach(63687),	-- Heroic: Nymrissa Wavecaller Guild Run
				}),
			}),
			Difficulty(DIFFICULTY.RAID.HEROIC).AddGroupsWithUpgrades({
				Boss(NYMRISSA),
			}),
			Difficulty(DIFFICULTY.RAID.MYTHIC).AddGroups({
				Boss(NYMRISSA, {
					ach(63682),	-- Mythic: Nymrissa Wavecaller
					ach(63688),	-- Mythic: Nymrissa Wavecaller Guild Run
				}),
			}),
		},
	}),
}))

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.MID, {
	inst(1317, {	-- The Tidebound Grotto
		["timeline"] = { ADDED_12_1_0 },
		["groups"] = {
			q(97771),	-- Triggered after defeating Nymrissa Wavecaller (world tier)
		},
	}),
}))
