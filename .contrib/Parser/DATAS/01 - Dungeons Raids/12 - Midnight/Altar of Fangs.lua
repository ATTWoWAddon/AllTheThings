-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

------ Encounter Constants ------
local RAVI = 2878;
local WRITHING = 2879;
local ZULJAN = 2880;

------ EncounterToCRS ------
local EncounterToCRS = {
	[RAVI] = { 259445 },	-- Rav'i
	[WRITHING] = { 259446 },	-- The Writhing Coil
	[ZULJAN] = { 259447 },	-- Zul'jan
};

------ Boss Functions ------
local InstanceHelper = CreateInstanceHelper(EncounterToCRS)
local BossOnly, Difficulty =
InstanceHelper.BossOnly, InstanceHelper.Difficulty

root(ROOTS.Instances, expansion(EXPANSION.MID, bubbleDownSelf({ ["timeline"] = { ADDED_12_1_0 } }, {
	inst(1322, {	-- Altar of Fangs
		["coord"] = { 47.2, 68.5, MAP.MIDNIGHT.VAULTS_OF_ATALUTEK },
		["maps"] = {
			2588,	-- Sacrificial Approach / The Carnage Pit
			2589,	-- Ancient Burrow
			2590,	-- Mutation Chambers / Altar of Fangs
		},
		["groups"] = {
			Difficulty(DIFFICULTY.DUNGEON.MULTI.NORMAL_PLUS).AddGroups({
				BossOnly(RAVI, {
					i(273795),	-- Coiled Fangstone
					i(273775),	-- Hydra Scale Wristguards
					i(273793),	-- Hydraspine Twinblade
					i(273777),	-- Poison-Proof Stompers
					i(273785),	-- Primordial Robe of Rites
					i(273780),	-- Venom-Etched Crescent
					i(273796),	-- Vile Vial of Volatile Venom
				}),
				BossOnly(WRITHING, {
					i(273787),	-- Aged Interwoven Scaleplate
					i(273794),	-- Knot of Writhing Serpents
					i(273786),	-- Leggings of Entwined Serpents
					i(273779),	-- Nocuous Focal Fang
					i(273774),	-- Snakeskin Spaulders
					i(273781),	-- Strand of Warding Fangs
					i(273783),	-- Toxin-Coated Warstaff
					i(273782),	-- Vile Writhefang Glaive
				}),
				BossOnly(ZULJAN, {
					ach(62282),	-- Altar of Fangs
					i(270900),	-- Pattern: Snakeskin Lining (RECIPE!)
					i(279211),	-- Pillar of the Fanged Altar (DECOR!)
					i(276804),	-- The Writhing Brood (MOUNT!)
					i(273784),	-- Ancestral Amani Recurve
					i(273776),	-- Ancient General's Obsidian Pillars
					i(273792),	-- Band of the Amani Warlord
					i(273789),	-- Chestguard of Corroded Scales
					i(273773),	-- Handwraps of Blasphemous Rites
					i(273778),	-- Polished Lightwood Channeler
					i(275070),	-- Sharpened Lightwood Slasher
					i(273791),	-- Spare Speaker's Hood
					i(273797),	-- Tattered Amani War Banner
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.MULTI.HEROIC_PLUS).AddGroups({
				BossOnly(ZULJAN, {
					ach(62283),	-- Heroic: Altar of Fangs
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.MYTHIC).AddGroups({
				BossOnly(ZULJAN, {
					ach(62284),	-- Mythic: Altar of Fangs
				}),
			}),
		},
	}),
})));
