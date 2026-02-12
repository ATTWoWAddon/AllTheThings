-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

------ Encounter Constants ------
local BELOREN = 2739;
local LURA = 2740;

------ EncounterToCRS ------
local EncounterToCRS = {
	[BELOREN] = { 249637 },	-- Belo'ren <Child of Al'ar>
	[LURA] = { 214650 },	-- L'ura
};

------ EncounterToLoot ------
local EncounterToLoot = {
	[BELOREN] = {
		i(249283),	-- Belo'melorn, the Shattered Talon
		i(249284),	-- Belo'ren's Swift Talon
		i(249377),	-- Darkstrider Treads
		i(249328),	-- Echoing Void Mantle
		i(249307),	-- Emberborn Grasps
		i(249324),	-- Eternal Flame Scaleguards
		i(249322),	-- Radiant Clutchtender's Jerkin
		i(249806),	-- Radiant Plume
		i(249919),	-- Sin'dorei Band of Hope
		i(249921),	-- Thalassian Dawnguard
		i(249807),	-- The Eternal Egg
		i(260235),	-- Umbral Plume
		i(249376),	-- Whisper-Inscribed Sash
	};
	[LURA] = {
		i(249296),	-- Alah'endal, the Dawnsong
		i(250247),	-- Amulet of the Abyssal Hymn
		i(249286),	-- Brazier of the Dissonant Dirge
		i(249915),	-- Extinction Guards
		i(249920),	-- Eye of Midnight
		i(249811),	-- Light of the Cosmic Crescendo
		i(260408),	-- Lightless Lament
		i(249913),	-- Mask of Darkest Intent
		i(249914),	-- Oblivion Guise
		i(249912),	-- Robes of Endless Oblivion
		i(249810),	-- Shadow of the Empyrean Requiem
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
	inst(1308, {	-- March on Quel'Danas
		--["coord"] = { X, Y, MAP.MIDNIGHT.VOIDSTORM },
		--["maps"] = {

		--},
		["isRaid"] = true,
		["groups"] = {
			n(ACHIEVEMENTS, {
				-- Myrhial Check Automation
				ach(61367, {	-- March on Quel'Danas
					crit(109381, {	-- Belo'ren, Child of Al'ar
						["_encounter"] = { BELOREN, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(109382, {	-- Midnight Falls
						["_encounter"] = { LURA, DIFFICULTY.RAID.MULTI.ALL },
					}),
				}),
				ach(61369, {	-- Heroic: March on Quel'Danas
					crit(109094, {	-- Belo'ren, Child of Al'ar
						["_encounter"] = { BELOREN, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
					}),
					crit(109098, {	-- Midnight Falls
						["_encounter"] = { LURA, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
					}),
				}),
				ach(61371),	-- Mythic: March on Quel'Danas (automated)
				-- Multiple Raids this tier... Duplicate Glory and Tier Set Achievements?
				ach(61380, {	-- Glory of the Midnight Raider (automated)
					i(260887),	-- Tenebrous Harrower (MOUNT!)
				}),
				ach(61843),	-- Quel'Dressed
				ach(61609),	-- March on Quel'Danas Guild Run
				ach(61610),	-- Heroic: March on Quel'Danas Guild Run
			}),
			Difficulty(DIFFICULTY.RAID.MULTI.ALL).AddGroups({
				BossOnly(BELOREN, {
					i(256715),	-- Design: Thalassian Phoenix Torque (RECIPE!)
					i(264187),	-- Blessed Phoenix Egg (DECOR!)
				}),
				BossOnly(LURA, {
					--i(258519),	-- Plans: Magister's Valediction (RECIPE!)
					i(264492),	-- Chaotic Void Maw (DECOR!)
				}),
			}),
			Difficulty(DIFFICULTY.RAID.LFR).AddGroupsWithUpgrades({
				--ZoneDrops({}),
				CommonBossDrops({
					currency(VETERAN_DAWNCREST, {
						["timeline"] = { ADDED_12_0_X_SEASONSTART, REMOVED_12_1_0 },
					}),
				}),
				header(HEADERS.LFGDungeon, 3155, {	-- March on Quel'Danas
					Boss(BELOREN),
					Boss(LURA, {
						i(249367, {	-- Chiming Void Curio
							["sym"] = {
								{"sub", "instance_tier",1307,DIFFICULTY.RAID.LFR},
								{"sub", "instance_tier",1314,DIFFICULTY.RAID.LFR},
							},
							["up"] = IGNORED_VALUE,
						}),
					}),
				}),
			}),
			Difficulty(DIFFICULTY.RAID.MULTI.NORMAL_PLUS).AddGroups({
				BossOnly(BELOREN, {
					ach(61381),	-- Eggsistential Crisis
				}),
			}),
			Difficulty(DIFFICULTY.RAID.NORMAL).AddGroupsWithUpgrades({
				CommonBossDrops({
					currency(CHAMPION_DAWNCREST, {
						["timeline"] = { ADDED_12_0_X_SEASONSTART, REMOVED_12_1_0 },
					}),
				}),
				--ZoneDrops({}),
				Boss(BELOREN),
				Boss(LURA, {
					i(249367, {	-- Chiming Void Curio
						["sym"] = {
							{"sub", "instance_tier",1307,DIFFICULTY.RAID.NORMAL},
							{"sub", "instance_tier",1314,DIFFICULTY.RAID.NORMAL},
						},
						["up"] = IGNORED_VALUE,
					}),
				}),
			}),
			Difficulty(DIFFICULTY.RAID.MULTI.HEROIC_PLUS).AddGroups({
				BossOnly(BELOREN),
				BossOnly(LURA, {
					ach(61626, { ["timeline"] = { ADDED_12_0_X_SEASONSTART, REMOVED_12_1_0 } }),	-- Ahead of the Curve: Midnight Falls
				}),
			}),
			Difficulty(DIFFICULTY.RAID.HEROIC).AddGroupsWithUpgrades({
				CommonBossDrops({
					currency(HERO_DAWNCREST, {
						["timeline"] = { ADDED_12_0_X_SEASONSTART, REMOVED_12_1_0 },
					}),
				}),
				--ZoneDrops({}),
				Boss(BELOREN),
				Boss(LURA, {
					i(249367, {	-- Chiming Void Curio
						["sym"] = {
							{"sub", "instance_tier",1307,DIFFICULTY.RAID.HEROIC},
							{"sub", "instance_tier",1314,DIFFICULTY.RAID.HEROIC},
						},
						["up"] = IGNORED_VALUE,
					}),
				}),
			}),
			Difficulty(DIFFICULTY.RAID.MYTHIC).AddGroups({
				CommonBossDrops({
					currency(MYTH_DAWNCREST, {
						["timeline"] = { ADDED_12_0_X_SEASONSTART, REMOVED_12_1_0 },
					}),
				}),
				--ZoneDrops({}),
				Boss(BELOREN, {
					ach(61378),	-- Mythic: Belo'ren, Child of Al'ar
				}),
				Boss(LURA, {
					ach(61379, {	-- Mythic: Midnight Falls
						title(678),	-- Dawnbringer <Name>
					}),
					ach(61627, {["timeline"] = { ADDED_12_0_X_SEASONSTART, REMOVED_12_1_0 }}),	-- Cutting Edge: Midnight Falls
					ach(61623, applyDataSelf({["timeline"] = { ADDED_12_0_X_SEASONSTART, REMOVED_12_1_0 } }, {	-- Hall of Fame: Midnight Falls
						title(677),	-- <Name>, Famed Slayer of the Dark Naaru
					})),
					ach(61611),	-- Mythic: Midnight Falls Guild Run
					i(246590),	-- Ashes of Belo'ren (MOUNT!)
					i(249367, {	-- Chiming Void Curio
						["sym"] = {
							{"sub", "instance_tier",1307,DIFFICULTY.RAID.MYTHIC},
							{"sub", "instance_tier",1314,DIFFICULTY.RAID.MYTHIC},
						},
						["up"] = IGNORED_VALUE,
					}),
				}),
			}),
		},
	}),
})));
--]]
