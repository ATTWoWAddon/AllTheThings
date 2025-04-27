-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
------ Encounter Constants ------
local PUMMELER = 2109
local AZEROKK = 2114
local RIXXA = 2115
local MOGUL = 2116
------ EncounterToCRS ------
local EncounterToCRS = {
	[PUMMELER] = { 129214 },	-- Coin-Operated Crowd Pummeler
	[AZEROKK] = { 129227 },	-- Azerokk
	[RIXXA] = { 129231 },	-- Rixxa Fluxflame
	[MOGUL] = { 129232, 132713 },	-- Stix Bunkjunker
}
------ EncounterToLoot ------
local EncounterToLoot = {
	[PUMMELER] = {
		i(159638),	-- Electro-Arm Bludgeoner
		i(159663),	-- G0-4W4Y Crowd Repeller
		i(158353),	-- Servo-Arm Bindings
		i(159357),	-- Linked Pummeler Grips
		i(155864),	-- Power-Assisted Vicegrips
		i(158350),	-- Rowdy Reveler's Legwraps
		i(159462),	-- Footbomb Championship Ring
	},
	[AZEROKK] = {
		i(158357),	-- Bindings of Enraged Earth
		i(158359),	-- Stonefury Vambraces
		i(159231),	-- Mine Rat's Handwarmers
		i(159226),	-- Excavator's Safety Belt
		i(159361),	-- Shalebiter Interlinked Chain
		i(159725),	-- Unscrupulous Geologist's Belt
		i(159336),	-- Mercenary Miner's Boots
		i(159679),	-- Sabatons of Rampaging Elements
		i(159612),	-- Azerokk's Resonating Heart
	},
	[RIXXA] = {
		i(159639),	-- P.A.C.I.F.I.S.T.  Mk7
		i(159287),	-- Cloak of Questionable Intent
		i(159240),	-- Rixxa's Sweat-Wicking Cuffs
		i(159305),	-- Corrosive Handler's Gloves
		i(158341),	-- Chemical Blaster's Legguards
		i(159451),	-- Leadplate Leegguards
		i(159235),	-- Deranged Alchemist's Slippers
	},
	[MOGUL] = {
		i(159641),	-- G3T-00t
		i(159611),	-- Razdunk's Big Red Button
	},
}
--- Azerite Pieces ---
local AzeriteLoot = {
	[MOGUL] = {
		azeriteItem(158364),	-- High Altitude Turban
		azeriteItem(159360),	-- Crashguard Spaulders
		azeriteItem(159232),	-- Exquisitely Aerodynamic Shoulderpads
		azeriteItem(159415),	-- Skyscorcher Pauldrons
		azeriteItem(158349),	-- Petticoat of the Self-Stylized Azerite Baron
		azeriteItem(158307),	-- Shrapnel-Dampening Chestguard
		azeriteItem(159298),	-- Venture Co. Plenipotentiary Vest
	},
}
--- Azewrong Pieces ---
local AzewrongLoot = {
	[MOGUL] = {
		azewrongItem(235416),	-- Crashguard Spaulders
		azewrongItem(235418),	-- Exquisitely Aerodynamic Shoulderpads
		azewrongItem(235419),	-- High Altitude Turban
		azewrongItem(235420),	-- Petticoat of the Self-Stylized Azerite Baron
		azewrongItem(235460),	-- Shrapnel-Dampening Chestguard
		azewrongItem(235415),	-- Skyscorcher Pauldrons
		azewrongItem(235417),	-- Venture Co. Plenipotentiary Vest
	},
}
------ Zone Drops ----------
local ZoneDropLoot = {
	i(168144, {	-- Extremely Precise Vial
		["crs"] = {
			133432,	-- Venture Co. Alchemist
			133430,	-- Venture Co. Mastermind
			140902,	-- Vog'rish, the Ascended
		},
	}),
};

------ Boss Functions ------
local InstanceHelper = CreateInstanceHelper(EncounterToCRS, EncounterToLoot, ZoneDropLoot)
local Boss, BossOnly, Difficulty, CommonBossDrops, ZoneDrops =
InstanceHelper.Boss, InstanceHelper.BossOnly, InstanceHelper.Difficulty, InstanceHelper.CommonBossDrops, InstanceHelper.ZoneDrops

InstanceHelper.UpgradeMapping = setmetatable({}, { __index = function() return 0 end})

local CombineSeasonalLoot

for e,loot in pairs(AzeriteLoot) do
	sharedData({timeline = {ADDED_8_0_1_LAUNCH,REMOVED_11_1_0_SEASONSTART,ADDED_11_2_0_SEASONSTART}},loot)
end
for e,loot in pairs(AzewrongLoot) do
	sharedData({timeline = {ADDED_11_1_0_SEASONSTART}},loot)
end
-- TODO: revise in TWW S3 for what happens to this dungeon!
-- #IF AFTER 11.1
-- #IF BEFORE 11.2
-- Heroic acts as the HERO track upgrade appearances
InstanceHelper.UpgradeMapping[DIFFICULTY.DUNGEON.SEASONAL.TWWS2_HEROTRACK] = DifficultyDB[DIFFICULTY.DUNGEON.SEASONAL.TWWS2_MYTHTRACK].modID
-- Normal/Heroic/Mythic all shared
CombineSeasonalLoot = true
-- During the season, Azewrong gear is available regardless of HOA status for the character
for e,loot in pairs(AzewrongLoot) do
	for _,item in ipairs(loot) do
		item.customCollect = nil
	end
end
-- #ENDIF
-- #ENDIF

-- Combine all the Seasonal Difficulties into one difficulty group since they are all shared
local SeasonDifficultyGroups
if CombineSeasonalLoot then
	SeasonDifficultyGroups = {
		-- N/H/M0-5 all share appearance (non-Season Normal)
		Difficulty(DIFFICULTY.DUNGEON.MULTI.NORMAL_PLUS).AddGroups({
			Boss(PUMMELER),
			Boss(AZEROKK),
			Boss(RIXXA),
			Boss(MOGUL),
			BossOnly(MOGUL, clone(AzewrongLoot[MOGUL])),
		}),
		-- M6+ have Heroic Appearance (non-Season Heroic) -> Upgrades to Mythic appearance
		Difficulty(DIFFICULTY.DUNGEON.SEASONAL.TWWS2_HEROTRACK).AddGroupsWithUpgrades(
		bubbleDown({timeline = { ADDED_11_1_0_SEASONSTART, REMOVED_11_2_0_SEASONSTART } }, {
			-- Hero Tracks
			Boss(PUMMELER),
			Boss(AZEROKK),
			Boss(RIXXA),
			Boss(MOGUL),
			BossOnly(MOGUL, clone(AzewrongLoot[MOGUL])),
		})),
		-- Myth Track Appearances (non-Season Mythic)
		Difficulty(DIFFICULTY.DUNGEON.SEASONAL.TWWS2_HEROTRACK).AddGroups(
		bubbleDown({timeline = { ADDED_11_1_0_SEASONSTART, REMOVED_11_2_0_SEASONSTART } }, {
			n(UPGRADE, bubbleDownFiltered({
				modID = DifficultyDB[DIFFICULTY.DUNGEON.SEASONAL.TWWS2_MYTHTRACK].modID
			},FILTERFUNC_itemID,{
				Boss(PUMMELER),
				Boss(AZEROKK),
				Boss(RIXXA),
				Boss(MOGUL),
				BossOnly(MOGUL, clone(AzewrongLoot[MOGUL])),
			})),
		})),
	}
else
	SeasonDifficultyGroups = {
		Difficulty(DIFFICULTY.DUNGEON.NORMAL).AddGroups({
			Boss(PUMMELER),
			Boss(AZEROKK),
			Boss(RIXXA),
			Boss(MOGUL),
			BossOnly(MOGUL, clone(AzewrongLoot[MOGUL])),
		}),
		Difficulty(DIFFICULTY.DUNGEON.HEROIC).AddGroups({
			Boss(PUMMELER),
			Boss(AZEROKK),
			Boss(RIXXA),
			Boss(MOGUL),
			BossOnly(MOGUL, clone(AzewrongLoot[MOGUL])),
		}),
		Difficulty(DIFFICULTY.DUNGEON.MYTHIC).AddGroups({
			Boss(PUMMELER),
			Boss(AZEROKK),
			Boss(RIXXA),
			Boss(MOGUL),
			BossOnly(MOGUL, clone(AzewrongLoot[MOGUL])),
		}),
	}
end

appendAllGroups(SeasonDifficultyGroups, {
	Difficulty(DIFFICULTY.DUNGEON.NORMAL).AddGroups({
		BossOnly(MOGUL, clone(AzeriteLoot[MOGUL])),
	}),
	Difficulty(DIFFICULTY.DUNGEON.HEROIC).AddGroups({
		BossOnly(MOGUL, clone(AzeriteLoot[MOGUL])),
	}),
	Difficulty(DIFFICULTY.DUNGEON.MYTHIC).AddGroups({
		BossOnly(MOGUL, clone(AzeriteLoot[MOGUL])),
	}),
})

local INSTANCE_GROUPS = {
	n(VENDORS, {
		n(140319, {	-- Hobart Grapplehammer
			["description"] = "In the building directly at the end of the first road after entering the dungeon.",
			["g"] = {
				i(161131, {	-- Barely Stable Azerite Reactor
					["cost"] = { { "g", 300000000 } },	-- 30k gold
				}),
			},
		}),
	}),
	n(WORLD_QUESTS, {
		q(52295, {	-- The MOTHERLODE!!: Elementals on the Payroll
			["isWorldQuest"] = true,
		}),
		q(52302, {	-- The MOTHERLODE!!: He's Got Really Big Bombs
			["isWorldQuest"] = true,
		}),
		q(52298, {	-- The MOTHERLODE!!: The Smarts Are In His Horn!
			["isWorldQuest"] = true,
		}),
	}),
	ZoneDrops(),
	Difficulty(DIFFICULTY.DUNGEON.MULTI.NORMAL_PLUS).AddGroups({
		BossOnly(PUMMELER, {
			ig(168153),	-- Coin Return Flipper
		}),
		BossOnly(AZEROKK),
		BossOnly(RIXXA),
		BossOnly(MOGUL, {
			ach(12844),	-- The MOTHERLODE!!
			ig(163708),	-- Ironfoe (Dark Iron Dwarf Quest Item)
			ig(161136, {	-- Azerite Forged Protection Plating
				["description"] = "Seems to require at least 175 BFA Engineering Skill to drop.",
			}),
			ig(161137, {	-- Blast-Fired Electric Servomotor
				["description"] = "Seems to require at least 225 BFA Engineering Skill to drop.",
			}),
			ig(161132, {	-- Crush Resistant Stabilizer
				["description"] = "Seems to require at least 200 BFA Engineering Skill to drop.",
			}),
			ig(161129, {	-- Mecha-Mogul Mk1 Remote Activation Device
				["description"] = "Seems to require at least 250 BFA Engineering Skill to drop.",
				["requireSkill"] = ENGINEERING,
				["cost"] = { { "i", 161138, 1 } },	-- Azerite Inspir-A-Geneering Elixir
			}),
		}),
	}),
	Difficulty(DIFFICULTY.DUNGEON.NORMAL).AddGroups({
		BossOnly(PUMMELER),
		BossOnly(AZEROKK),
		BossOnly(RIXXA),
		BossOnly(MOGUL),
	}),
	Difficulty(DIFFICULTY.DUNGEON.HEROIC).AddGroups({
		BossOnly(PUMMELER),
		BossOnly(AZEROKK),
		BossOnly(RIXXA),
		BossOnly(MOGUL, {
			ach(12845),	-- Heroic: The MOTHERLODE!!
		}),
	}),
	Difficulty(DIFFICULTY.DUNGEON.MYTHIC).AddGroups({
		n(ZONE_DROPS, {
			ig(161138, {	-- Azerite Inspir-A-Geneering Elixir
				["description"] = "Seems to require at least 225 BFA Engineering Skill to drop.",
				["requireSkill"] = ENGINEERING,
				["crs"] = {
					133430,	-- Venture Co. Mastermind
					140902,	-- Vog'rish, the Ascended
				},
			}),
		}),
		n(ZONE_DROPS, sharedData({
			["crs"] = {
				136643,	-- Azerite Extractor
				129214,	-- Coin-Operated Crowd Pummeler
				130485,	-- Mechanized Peacekeeper
				136139,	-- Mechanized Peacekeeper
				133463,	-- Venture Co. War Machine
			},
			["requireSkill"] = ENGINEERING,
		},{
			ig(161136, {	-- Azerite Forged Protection Plating
				["description"] = "Seems to require at least 175 BFA Engineering Skill to drop.",
			}),
			ig(161137, {	-- Blast-Fired Electric Servomotor
				["description"] = "Seems to require at least 225 BFA Engineering Skill to drop.",
			}),
			ig(161132, {	-- Crush Resistant Stabilizer
				["description"] = "Seems to require at least 200 BFA Engineering Skill to drop.",
			}),
		})),
		BossOnly(PUMMELER, {
			ach(12855),	-- Pitch Invasion
		}),
		BossOnly(AZEROKK, {
			ig(168133),	-- Unrefined Azerite Geode
			ig(168136),	-- Azerokk's Fist
		}),
		BossOnly(RIXXA),
		BossOnly(MOGUL, {
			ach(12846),	-- Mythic: The MOTHERELODE!!
			ach(13006),	-- Mythic: The MOTHERLODE!! Guild Run
			ach(12854),	-- Ready for Raiding VI
			i(161135),	-- Schematic: Mecha-Mogul Mk2 (RECIPE!)
		}),
	}),
}

appendAllGroups(INSTANCE_GROUPS, SeasonDifficultyGroups)

root(ROOTS.Instances, expansion(EXPANSION.BFA, bubbleDown({ ["timeline"] = { ADDED_8_0_1_LAUNCH } }, {
	inst(1012, {	-- The MOTHERLODE!!
		["coords"] = {
			{ 39.2, 71.5, ZULDAZAR },	-- Alliance
			{ 44.3, 92.6, DAZARALOR },	-- Horde
		},
		["maps"] = { 1010 },	-- The Motherlode
		["lvl"] = 110,
		["g"] = INSTANCE_GROUPS
	}),
})));