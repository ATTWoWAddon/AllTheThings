-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

local InRetailSeason
-- #IF AFTER 12.1
-- #IF BEFORE 12.2
InRetailSeason = {	-- MID S2
	DIFFICULTY.DUNGEON.MULTI.NORMAL_PLUS,
	DIFFICULTY.DUNGEON.MULTI.HEROIC_PLUS,
	DIFFICULTY.DUNGEON.KEYSTONE,
}
-- #ENDIF
-- #ENDIF

------ Encounter Constants ------
local Encounters = {
	ADDERIS_ASPIX = 2142,
	MEREKTHA = 2143,
	GALVAZZT = 2144,
	AVATAR = 2145,
}
------ EncounterToCRS ------
local EncounterToCRS = {
	[Encounters.ADDERIS_ASPIX] = {
		133379,	-- Adderis
		133944,	-- Aspix
	},
	[Encounters.MEREKTHA] = { 133384 },
	[Encounters.GALVAZZT] = { 133389 },
	[Encounters.AVATAR] = { 133392 },
}
------ EncounterToLoot ------
local EncounterToLoot = {
	[Encounters.ADDERIS_ASPIX] = {
		i(159636),	-- Staff of the Lightning Serpent
		i(158370),	-- Twin-Strike Polearm
		i(159380),	-- Arc-Glass Bindings
		i(159263),	-- Bindings of the Slithering Current
		i(159425),	-- Shard-Tipped Vambraces
		i(159317),	-- Whirling Dervish Sash
		i(159329),	-- Leggings of the Galeforce Viper
		i(159435),	-- Legplates of Charged Duality
		i(159388),	-- Sabatons of Coruscating Energy
		i(159259),	-- Sandswept Sandals
	},
	[Encounters.MEREKTHA] = {
		i(158714),	-- Swarm's Eedge
		i(159637),	-- Snakeebite Recurvee
		i(159437),	-- Fangproof Gauntlets
		i(159255),	-- Ouroborial Sash
		i(159375),	-- Legguards of the Awakening Brood
		i(159327),	-- Sand-Shined Snakeskin Sandals
		i(162544),	-- Jad Phidian Band
		i(158367),	-- Merektha's Fang
	},
	[Encounters.GALVAZZT] = {
		i(158369),	-- Galvanized Stormcrusher
		i(159664),	-- Bulwark of Brimming Potential
		i(159247),	-- Handwraps of Oscillating Polarity
		i(159442),	-- Sand-Scoured Greatbelt
		i(158366),	-- Charged Sandstone Band
		i(158374),	-- Tiny Eelectromental in a Jar
	},
	[Encounters.AVATAR] = {
		i(158373),	-- Resonating Crystal Scimitar
		i(159337),	-- Grips of Electrified Defense
		i(158368),	-- Sethraliss' Defiled Relic
	},
}
------ Zone Drops ----------
local ZoneDropLoot = {
}
--- Azerite Pieces ---
local AzeriteLoot = {
	[Encounters.AVATAR] = {
		azeriteItem(159318),	-- Hood of the Slithering Loa
		azeriteItem(159374),	-- Sethraliss' Fanged Helm
		azeriteItem(159254),	-- Brood Cleanser's Amice
		azeriteItem(159439),	-- C'thraxxi Binders Pauldrons
		azeriteItem(159370),	-- Corrupted Hexxer's Vestments
		azeriteItem(159424),	-- Desert Guardian's Breastplate
		azeriteItem(159257),	-- Robes of the Reborn Serpent
	},
}
--- Azewrong Pieces ---
local AzewrongLoot = {
	[Encounters.AVATAR] = {
		i(239033),	-- Hood of the Slithering Loa
		i(239035),	-- Sethraliss' Fanged Helm
		i(239031),	-- Brood Cleanser's Amice
		i(239037),	-- C'thraxxi Binders Pauldrons
		i(239034),	-- Corrupted Hexxer's Vestments
		i(239036),	-- Desert Guardian's Breastplate
		i(239032),	-- Robes of the Reborn Serpent
	},
}
-- need customCollect removed from MERGE_FROM_OBJECT_FIELDS.itemID to have same itemID with different values
-- local AzewrongLoot_NoCC = clone(AzewrongLoot)
-- for e,loot in pairs(AzewrongLoot_NoCC) do
-- 	for _,item in ipairs(loot) do
-- 		item.customCollect = IGNORED_VALUE
-- 	end
-- end
------ Boss Functions ------
local InstanceHelper = CreateInstanceHelper(EncounterToCRS, EncounterToLoot, ZoneDropLoot)
local Boss, BossOnly, Difficulty, ZoneDrops =
InstanceHelper.Boss, InstanceHelper.BossOnly, InstanceHelper.Difficulty, InstanceHelper.ZoneDrops

-- Not sure it's worth also showing upgrades in the dungeon during the season. People are pretty accustomed to knowing that 6/6 track gives
-- the next track's appearances, so seeing Upgrade: Myth should indicate they could get the item on Hero and upgrade it
-- InstanceHelper.UpgradeMapping = setmetatable({
-- 	[DIFFICULTY.DUNGEON.SEASONAL.MIDS2_CHAMPIONTRACK] = DifficultyDB[DIFFICULTY.DUNGEON.SEASONAL.MIDS2_HEROTRACK].modID,
-- 	[DIFFICULTY.DUNGEON.SEASONAL.MIDS2_HEROTRACK] = DifficultyDB[DIFFICULTY.DUNGEON.SEASONAL.MIDS2_MYTHTRACK].modID,
-- }, { __index = function(t, diffID) print("WARN: Missing UpgradeMapping for ",diffID) return 0 end})

InstanceHelper.BossObjects = {
	[Encounters.AVATAR] = { 288640 },	-- Sethraliss Treasure
}

local GROUPS = {
	-- BFA 8.0 groups
	NORMAL_8_0 =
	Difficulty(DIFFICULTY.DUNGEON.NORMAL).AddGroups({
		Boss(Encounters.ADDERIS_ASPIX),
		Boss(Encounters.MEREKTHA),
		Boss(Encounters.GALVAZZT),
		Boss(Encounters.AVATAR, appendAllGroups(clone(AzeriteLoot[Encounters.AVATAR]), clone(AzewrongLoot[Encounters.AVATAR]))),
	}),
	HEROIC_8_0 =
	Difficulty(DIFFICULTY.DUNGEON.HEROIC).AddGroups({
		Boss(Encounters.ADDERIS_ASPIX),
		Boss(Encounters.MEREKTHA),
		Boss(Encounters.GALVAZZT),
		Boss(Encounters.AVATAR, clone(AzeriteLoot[Encounters.AVATAR])),
	}),
	MYTHIC_8_0 =
	Difficulty(DIFFICULTY.DUNGEON.MYTHIC, {
		["difficulties"] = { DIFFICULTY.DUNGEON.KEYSTONE, DIFFICULTY.DUNGEON.MYTHIC },
	}).AddGroups({
		ach(12503, {	-- Snake Eyes
			["timeline"] = { REMOVED_12_1_0 },
		}),
		Boss(Encounters.ADDERIS_ASPIX),
		Boss(Encounters.MEREKTHA, {
			ach(12507, {	-- Snake Eater
				["timeline"] = { REMOVED_12_1_0 },
			}),
			i(160832, {	-- Viable Cobra Egg
				i(160831, {	-- Cracking Cobra Egg
					i(160702),	-- Spawn of Merektha (PET!)
				}),
			}),
		}),
		Boss(Encounters.GALVAZZT),
		Boss(Encounters.AVATAR, appendAllGroups({
			ach(12508, {	-- Good Night, Sweet Prince
				["timeline"] = { REMOVED_12_1_0 },
			}),
			ach(12506),	-- Mythic: The Temple of Sethraliss
			ach(13004),	-- Mythic: The Temple of Sethraliss Guild Run
			i(278982, {	["timeline"] = { ADDED_12_1_0 } }),	-- Hatchery of Hissing Eggs (DECOR!)
		}, clone(AzeriteLoot[Encounters.AVATAR]))),
	}),
	NORMAL_PLUS_8_0 =
	Difficulty(DIFFICULTY.DUNGEON.MULTI.NORMAL_PLUS).AddGroups({
		BossOnly(Encounters.ADDERIS_ASPIX),
		BossOnly(Encounters.MEREKTHA),
		BossOnly(Encounters.GALVAZZT, {
			i(168154),	-- Static Induction Matrix
		}),
		BossOnly(Encounters.AVATAR, {
			ach(12504),	-- The Temple of Sethraliss
			i(168131),	-- Essence of the Sands
			i(278982, {	["timeline"] = { ADDED_12_1_0 } }),	-- Hatchery of Hissing Eggs (DECOR!)
		}),
	}),
	HEROIC_PLUS_8_0 =
	Difficulty(DIFFICULTY.DUNGEON.MULTI.HEROIC_PLUS).AddGroups({
		-- BossOnly(Encounters.ADDERIS_ASPIX),
		-- BossOnly(Encounters.MEREKTHA),
		-- BossOnly(Encounters.GALVAZZT),
		BossOnly(Encounters.AVATAR, {
			ach(12505),	-- Heroic: The Temple of Sethraliss
		}),
	}),

	-- 12.1 MID S2 groups
	NORMAL_PLUS_12_1 =
	Difficulty(DIFFICULTY.DUNGEON.MULTI.NORMAL_PLUS).AddGroups({
		Boss(Encounters.ADDERIS_ASPIX),
		Boss(Encounters.MEREKTHA),
		Boss(Encounters.GALVAZZT),
		Boss(Encounters.AVATAR, {
			i(278982, {	["timeline"] = { ADDED_12_1_0 } }),	-- Hatchery of Hissing Eggs (DECOR!)
		}),
	}),
	NORMAL_AZERITE_12_1 =
	Difficulty(DIFFICULTY.DUNGEON.NORMAL).AddGroups({
		-- Boss(Encounters.ADDERIS_ASPIX),
		-- Boss(Encounters.MEREKTHA),
		-- Boss(Encounters.GALVAZZT),
		BossOnly(Encounters.AVATAR, appendAllGroups(clone(AzeriteLoot[Encounters.AVATAR]), clone(AzewrongLoot[Encounters.AVATAR]))),
	}),
	HEROIC_AZERITE_12_1 =
	Difficulty(DIFFICULTY.DUNGEON.HEROIC).AddGroups({
		-- Boss(Encounters.ADDERIS_ASPIX),
		-- Boss(Encounters.MEREKTHA),
		-- Boss(Encounters.GALVAZZT),
		BossOnly(Encounters.AVATAR, clone(AzeriteLoot[Encounters.AVATAR])),
	}),
	MYTHIC_AZERITE_12_1 =
	Difficulty(DIFFICULTY.DUNGEON.MYTHIC).AddGroups({
		-- Boss(Encounters.ADDERIS_ASPIX),
		-- Boss(Encounters.MEREKTHA),
		-- Boss(Encounters.GALVAZZT),
		BossOnly(Encounters.AVATAR, clone(AzeriteLoot[Encounters.AVATAR])),
	}),
	MYTHIC_12_1 =
	Difficulty(DIFFICULTY.DUNGEON.MYTHIC).AddGroups({
		ach(12503, {	-- Snake Eyes
			["timeline"] = { REMOVED_12_1_0 },
		}),
		BossOnly(Encounters.ADDERIS_ASPIX),
		BossOnly(Encounters.MEREKTHA, {
			ach(12507, {	-- Snake Eater
				["timeline"] = { REMOVED_12_1_0 },
			}),
			i(160832, {	-- Viable Cobra Egg
				i(160831, {	-- Cracking Cobra Egg
					i(160702),	-- Spawn of Merektha (PET!)
				}),
			}),
		}),
		BossOnly(Encounters.GALVAZZT),
		BossOnly(Encounters.AVATAR, {
			ach(12508, {	-- Good Night, Sweet Prince
				["timeline"] = { REMOVED_12_1_0 },
			}),
			ach(12506),	-- Mythic: The Temple of Sethraliss
			ach(13004),	-- Mythic: The Temple of Sethraliss Guild Run
		}),
	}),
	HERO_TRACK_12_1 =
		n(UPGRADE_HERO, {
			Boss(Encounters.ADDERIS_ASPIX),
			Boss(Encounters.MEREKTHA),
			Boss(Encounters.GALVAZZT),
			Boss(Encounters.AVATAR),
		}),
	HERO_TRACK_AZEWRONG_12_1 =
		n(UPGRADE_HERO, {
			-- Boss(Encounters.ADDERIS_ASPIX),
			-- Boss(Encounters.MEREKTHA),
			-- Boss(Encounters.GALVAZZT),
			BossOnly(Encounters.AVATAR, clone(AzewrongLoot[Encounters.AVATAR])),
		}),
	MYTH_TRACK_12_1 =
		n(UPGRADE_MYTH, {
			Boss(Encounters.ADDERIS_ASPIX),
			Boss(Encounters.MEREKTHA),
			Boss(Encounters.GALVAZZT),
			Boss(Encounters.AVATAR),
		}),
	MYTH_TRACK_AZEWRONG_12_1 =
		n(UPGRADE_MYTH, {
			-- Boss(Encounters.ADDERIS_ASPIX),
			-- Boss(Encounters.MEREKTHA),
			-- Boss(Encounters.GALVAZZT),
			BossOnly(Encounters.AVATAR, clone(AzewrongLoot[Encounters.AVATAR])),
		}),
}

local InstanceGroups = {
	n(WORLD_QUESTS, {
		q(51378, {	-- Temple of Sethraliss: A Bazaar Menagerie
			["isWorldQuest"] = true,
			["lvl"] = 120,
		}),
		q(51377, {	-- Temple of Sethraliss: Ecological Research
			["isWorldQuest"] = true,
			["lvl"] = 120,
		}),
		q(51379, {	-- Temple of Sethraliss: Navigating Currents
			["isWorldQuest"] = true,
			["lvl"] = 120,
		}),
	}),
}
-- Seasonal Fixes
local timeline_inseason = { ADDED_12_1_0, REMOVED_12_2_0 }
local timeline_noseason = { ADDED_8_0_1_LAUNCH, REMOVED_12_1_0, ADDED_12_2_0 }
-- BFA Heroic = modID 35 / ItemAppearanceModifierID = 1
-- BFA Mythic = modID 14 / ItemAppearanceModifierID = 3
-- MID Champion = modID 33 / ItemAppearanceModifierID = 0
-- MID Hero = modID 35 / ItemAppearanceModifierID = 1
-- MID Myth = modID 14 / ItemAppearanceModifierID = 3
if InRetailSeason then
	bubbleDownFiltered({modID=35,ItemAppearanceModifierID=1,timeline=timeline_noseason},FILTERFUNC_itemID,GROUPS.HEROIC_AZERITE_12_1)
	bubbleDownFiltered({modID=14,ItemAppearanceModifierID=3},FILTERFUNC_itemID,GROUPS.MYTHIC_12_1)
	bubbleDownFiltered({modID=14,ItemAppearanceModifierID=3,timeline=timeline_noseason},FILTERFUNC_itemID,GROUPS.MYTHIC_AZERITE_12_1)
	bubbleDownFiltered({modID=35,ItemAppearanceModifierID=1},FILTERFUNC_itemID,GROUPS.HERO_TRACK_12_1)
	bubbleDownFiltered({modID=35,ItemAppearanceModifierID=1,timeline=timeline_inseason},FILTERFUNC_itemID,GROUPS.HERO_TRACK_AZEWRONG_12_1)
	bubbleDownFiltered({modID=14,ItemAppearanceModifierID=3},FILTERFUNC_itemID,GROUPS.MYTH_TRACK_12_1)
	bubbleDownFiltered({modID=14,ItemAppearanceModifierID=3,timeline=timeline_inseason},FILTERFUNC_itemID,GROUPS.MYTH_TRACK_AZEWRONG_12_1)

	appendAllGroups(InstanceGroups,
	{
		GROUPS.NORMAL_PLUS_8_0,		-- Non-Appearances
		GROUPS.NORMAL_PLUS_12_1,	-- All NORMAL_8_0 appearances + Azewrong
		GROUPS.HEROIC_PLUS_8_0,		-- Non-Appearances
		GROUPS.NORMAL_AZERITE_12_1,	-- Only Removed Azerite
		GROUPS.HEROIC_AZERITE_12_1,	-- Only Removed Azerite
		GROUPS.MYTHIC_12_1,			-- Non-Appearances
		GROUPS.MYTHIC_AZERITE_12_1,	-- Only Removed Azerite
		d(DIFFICULTY.DUNGEON.KEYSTONE, {
			GROUPS.HERO_TRACK_12_1,	-- Old HEROIC_8_0 appearances
			GROUPS.HERO_TRACK_AZEWRONG_12_1,	-- New HEROIC_12_1 Azewrong
			GROUPS.MYTH_TRACK_12_1,	-- Old MYTHIC_8_0 appearances
			GROUPS.MYTH_TRACK_AZEWRONG_12_1,	-- New MYTHIC_12_1 Azewrong
		}),
	})
else	-- Outside of Season
	bubbleDownFiltered({modID=35,ItemAppearanceModifierID=1,timeline=timeline_inseason},FILTERFUNC_itemID,GROUPS.HERO_TRACK_AZEWRONG_12_1)
	bubbleDownFiltered({modID=14,ItemAppearanceModifierID=3,timeline=timeline_inseason},FILTERFUNC_itemID,GROUPS.MYTH_TRACK_AZEWRONG_12_1)

	appendAllGroups(InstanceGroups,
	{
		GROUPS.NORMAL_PLUS_8_0,
		GROUPS.NORMAL_8_0,
		GROUPS.HEROIC_PLUS_8_0,
		GROUPS.HEROIC_8_0,
		GROUPS.MYTHIC_8_0,
		d(DIFFICULTY.DUNGEON.KEYSTONE, { -- TODO 12.2 confirm if available from Heroic/Mythic on non-HOA character
			GROUPS.HERO_TRACK_AZEWRONG_12_1,	-- New HEROIC_12_1 Azewrong
			GROUPS.MYTH_TRACK_AZEWRONG_12_1,	-- New MYTHIC_12_1 Azewrong
		}),
	})
end

root(ROOTS.Instances, expansion(EXPANSION.BFA, {
	inst(1030, {	-- Temple of Sethraliss
		InRetailSeason=InRetailSeason,
		["coord"] = { 51.9, 25.4, VOLDUN },
		["maps"] = {
			1038,	-- Temple of Sethraliss
			1043,	-- Atrium of Sethraliss
		},
		["lvl"] = 110,
		["timeline"] = { ADDED_8_0_1_LAUNCH },
		["groups"] = InstanceGroups,
	}),
}))
