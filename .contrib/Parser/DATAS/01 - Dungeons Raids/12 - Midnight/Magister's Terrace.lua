-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
------ Encounter Constants ------
local CUSTOS = 2659;
local SERANEL = 2661;
local GEMELIUS = 2660;
local DEGENTRIUS = 2662;

------ EncounterToCRS ------
local EncounterToCRS = {
	[CUSTOS] = { 231861 },	-- Arcanotron Custos
	[SERANEL] = { 231863 },	-- Seranel Sunlash
	[GEMELIUS] = { 231864 },	-- Gemellus
	[DEGENTRIUS] = { 231865 },	-- Degentrius
};

------ Boss Functions ------
local InstanceHelper = CreateInstanceHelper(EncounterToCRS)
local BossOnly, Difficulty =
InstanceHelper.BossOnly, InstanceHelper.Difficulty

root(ROOTS.Instances, expansion(EXPANSION.MID, bubbleDownSelf({ ["timeline"] = { ADDED_12_0_X_LAUNCH } }, {
	inst(1300, {	-- Magister's Terrace
		["coord"] = { 63.0, 15.1, MAP.MIDNIGHT.ISLE_OF_QUELDANAS },
		["maps"] = {
			2511,	-- Magisters' Terrace
			2515,	-- Arcane Atheneum
			2516,	-- Grand Magister Asylum
			2517,	-- Tower of Theory
			2518,	-- Central Tower
			2519,	-- Upper Tower
			2520,	-- Celestial Orrery
		},
		["groups"] = {
			Difficulty(DIFFICULTY.DUNGEON.MULTI.NORMAL_PLUS).AddGroups({
				BossOnly(CUSTOS, {
					i(251101),	-- Arcane Guardian's Shell
					i(251102),	-- Clasp of Compliance
					i(251103),	-- Custodial Cuffs
					i(251104),	-- Leggings of Orderly Conduct
					i(251100),	-- Malfeasance Mallet
					i(250246),	-- Refueling Orb
				}),
				BossOnly(SERANEL, {
					i(260312),	-- Defiant Defender's Drape
					i(251107),	-- Oathsworn Stompers
					i(251106),	-- Resolute Runeglaive
					i(251109),	-- Spellsnap Shadowmask
					i(251110),	-- Sunlash's Sunsash
					i(251105),	-- Ward of the Spellbreaker
					i(251108),	-- Wraps of Watchful Wrath
				}),
				BossOnly(GEMELIUS, {
					i(251115),	-- Bifurcation Band
					i(251113),	-- Gloves of Viscous Goo
					i(250242),	-- Jelly Replicator
					i(251112),	-- Shadowsplit Girdle
					i(251111),	-- Splitshroud Stinger
					i(251114),	-- Voidwarped Oozemail
				}),
				BossOnly(DEGENTRIUS, {
					ach(61212),	-- Magisters' Terrace
					i(256755),	-- Formula: Enchant Chest - Mark of the Magister (RECIPE!)
					i(256759),	-- Formula: Enchant Weapon - Flames of the Sin'dorei (RECIPE!)
					i(258033),	-- Pattern: Arcanoweave Lining (RECIPE!)
					i(263230),	-- Magister's Bookshelf (DECOR!)
					i(251121),	-- Domanaar's Dire Treads
					i(250257),	-- Eye of the Drowning Void
					i(251118),	-- Legplates of Lingering Dusk
					i(251122),	-- Shadowslash Slicer
					i(251119),	-- Vortex Visage
					i(251117),	-- Whirling Voidcleaver
					i(251120),	-- Wraps of Umbral Descent
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.MULTI.HEROIC_PLUS).AddGroups({
				BossOnly(DEGENTRIUS, {
					ach(61213),	-- Heroic: Magisters' Terrace
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.MYTHIC).AddGroups({
				BossOnly(DEGENTRIUS, {
					ach(61214),	-- Mythic: Magisters' Terrace
					ach(61615),	-- Mythic: Magisters' Terrace Guild Run
				}),
			}),
		},
	})
})));
