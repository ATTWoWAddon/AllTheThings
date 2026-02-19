-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

------ Encounter Constants ------
local CHIMAERUS = 2795;

------ EncounterToCRS ------
local EncounterToCRS = {
	[CHIMAERUS] = { 256116 },	-- Chimaerus <The Undreamt God>
};

------ EncounterToLoot ------
local EncounterToLoot = {
	[CHIMAERUS] = {
		i(249349, {	-- Alncast Riftbloom
			i(250000),	-- Frenzyward of the Black Talon
			i(249991),	-- Primal Sentry's Scaleplate
			i(249982),	-- Embrace of the Primal Core
		}),
		i(249348, {	-- Alncured Riftbloom
			i(250036),	-- Devouring Reaver's Engine
			i(250027),	-- Trunk of the Luminous Bloom
			i(250018),	-- Battle Garb of Ra-den's Chosen
			i(250009),	-- Fantastic Finery of the Grim Jest
		}),
		i(249350, {	-- Alnforged Riftbloom
			i(249973),	-- Relentless Rider's Cuirass
			i(249964),	-- Luminant Verdict's Divine Warplate
			i(249955),	-- Night Ender's Breastplate
		}),
		i(249347, {	-- Alnwoven Riftbloom
			i(250063),	-- Voidbreaker's Robe
			i(250054),	-- Blind Oath's Raiment
			i(250045),	-- Abyssal Immolator's Dreadrobe
		}),
		i(249278),	-- Alnscorned Spire
		i(249373),	-- Dream-Scorched Striders
		i(249343),	-- Gaze of the Alnseer
		i(249381),	-- Greaves of the Unformed
		i(249374),	-- Scorn-Scarred Shul'ka's Belt
		i(249371),	-- Scornbane Waistguard
		i(249922),	-- Tome of Alnscorned Regret
		i(249805),	-- Undreamt God's Oozing Vestige
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

root(ROOTS.Instances, expansion(EXPANSION.MID, bubbleDownSelf({ ["timeline"] = { ADDED_12_0_X_SEASONSTART } }, {
	inst(1314, {	-- The Dreamrift
		--["coord"] = { X, Y, MAP.MIDNIGHT.HARANDAR },
		--["maps"] = {

		--},
		["isRaid"] = true,
		["groups"] = {
			n(ACHIEVEMENTS, {
				-- Myrhial Check Automation
				-- Multiple Raids this tier... Duplicate Glory and Tier Set Achievements?
				ach(61380, {	-- Glory of the Midnight Raider (automated)
					i(260887),	-- Tenebrous Harrower (MOUNT!)
				}),
				ach(61843),	-- Quel'Dressed
			}),
			Difficulty(DIFFICULTY.RAID.MULTI.ALL).AddGroups({
				BossOnly(CHIMAERUS, {
					ach(61487),	-- Chimaerus, the Undreamt God
					ach(61612),	-- Chimaerus the Undreamt God Guild Run
					i(256750),	-- Formula: Enchant Weapon - Worldsoul Cradle (RECIPE!)
					i(256656),	-- Pattern: World Tender's Barkclasp (RECIPE!)
					i(265950),	-- Dreamrift Vanquisher's Aureate Trophy (DECOR!)
					i(264246),	-- Eerie Iridescent Riftshroom (DECOR!)
				}),
			}),
			Difficulty(DIFFICULTY.RAID.LFR).AddGroupsWithUpgrades({
				--ZoneDrops({}),
				CommonBossDrops({
					currency(VETERAN_DAWNCREST, {
						["timeline"] = { ADDED_12_0_X_SEASONSTART, REMOVED_12_1_0 },
					}),
				}),
				header(HEADERS.LFGDungeon, 3126, {	-- The Dreamrift
					Boss(CHIMAERUS),
				}),
			}),
			Difficulty(DIFFICULTY.RAID.MULTI.NORMAL_PLUS).AddGroups({
				BossOnly(CHIMAERUS, {
					ach(61454),	-- Falling Between The Quacks
				}),
			}),
			Difficulty(DIFFICULTY.RAID.NORMAL).AddGroupsWithUpgrades({
				CommonBossDrops({
					currency(CHAMPION_DAWNCREST, {
						["timeline"] = { ADDED_12_0_X_SEASONSTART, REMOVED_12_1_0 },
					}),
				}),
				--ZoneDrops({}),
				Boss(CHIMAERUS),
			}),
			Difficulty(DIFFICULTY.RAID.MULTI.HEROIC_PLUS).AddGroups({
				BossOnly(CHIMAERUS, {
					ach(61488),	-- Heroic: Chimaerus, the Undreamt God
					ach(61491, { ["timeline"] = { ADDED_12_0_X_SEASONSTART, REMOVED_12_1_0 } }),	-- Ahead of the Curve: Chimaerus, the Undreamt God
					ach(61613),	-- Heroic: Chimaerus the Undreamt God Guild Run
				}),
			}),
			Difficulty(DIFFICULTY.RAID.HEROIC).AddGroupsWithUpgrades({
				CommonBossDrops({
					currency(HERO_DAWNCREST, {
						["timeline"] = { ADDED_12_0_X_SEASONSTART, REMOVED_12_1_0 },
					}),
				}),
				--ZoneDrops({}),
				Boss(CHIMAERUS),
			}),
			Difficulty(DIFFICULTY.RAID.MYTHIC).AddGroups({
				CommonBossDrops({
					currency(MYTH_DAWNCREST, {
						["timeline"] = { ADDED_12_0_X_SEASONSTART, REMOVED_12_1_0 },
					}),
				}),
				--ZoneDrops({}),
				Boss(CHIMAERUS, {
					ach(61489, {	-- Mythic: Chimaerus, the Undreamt God
						title(679),	-- Dream-Eater <Name>
					}),
					ach(61492, {["timeline"] = { ADDED_12_0_X_SEASONSTART, REMOVED_12_1_0 }}),	-- Cutting Edge: Chimaerus, the Undreamt God
					ach(61493, applyDataSelf({["timeline"] = { ADDED_12_0_X_SEASONSTART, REMOVED_12_1_0 } }, {	-- Hall of Fame: Chimaerus, the Undreamt God
						title(668),	-- <Name>, Famed Slayer of the Undreamt
					})),
					ach(61614),	-- Mythic: Chimaerus the Undreamt God Guild Run
				}),
			}),
		},
	}),
})));
