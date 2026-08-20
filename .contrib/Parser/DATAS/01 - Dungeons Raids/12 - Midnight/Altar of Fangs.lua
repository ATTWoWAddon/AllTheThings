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

local InRetailSeason
-- #IF AFTER 12.1
InRetailSeason = {	-- MID S2
	DIFFICULTY.DUNGEON.MULTI.NORMAL_PLUS,
	DIFFICULTY.DUNGEON.MULTI.HEROIC_PLUS,
	DIFFICULTY.DUNGEON.MYTHIC,
}
-- #ENDIF

root(ROOTS.Instances, expansion(EXPANSION.MID, bubbleDownSelf({ ["timeline"] = { ADDED_12_1_0 } }, {
	inst(1322, {	-- Altar of Fangs
		InRetailSeason=InRetailSeason,
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
				n(ACHIEVEMENTS, {
					ach(63679, {	-- In Case Of Emergency
						["description"] = "Requires 5 Players.\n\nThe Reversal Charms and Ritual Reagent spawn in the 4 poison waterfalls in the 1st boss arena.\nThey are very hard to see, and a Reversal Charm can stack right next to the Ritual Reagent.\nIf you grab the wrong item, click off your buff and pick up the correct one.\nYou need 4 players with Reversal Charms and 1 player with the Ritual Reagent.\n\nClear the room with the Ascendant Serpent mob after the 2nd boss, but do not touch the totems.\nThe 4 Charm holders stand at the totems, and the Reagent holder stands on the mob.\nEveryone targets the serpent and waits for their Extra Action Button.\nThe Reagent holder casts first.\nAfter the Reagent cast completes, all 4 Charm holders cast theirs to finish the transformation.\nThere is no timer after the Reagent finishes, but once the first Charm holder starts their 13-second cast, the other 3 must start before it finishes.\n\nInteract with the new NPC to get your pet and Feat of Strength.",
						["groups"] = { i(279197) },	-- Slitherfang (PET!)
					}),
				}),
				BossOnly(ZULJAN, {
					ach(62284),	-- Mythic: Altar of Fangs
					i(276804),	-- The Writhing Brood (MOUNT!)
				}),
			}),
		},
	}),
})));
