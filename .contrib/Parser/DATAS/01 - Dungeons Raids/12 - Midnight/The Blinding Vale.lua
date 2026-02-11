-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

------ Encounter Constants ------
local TRINITY = 2769;
local IKUZZ = 2770;
local RUIA = 2771;
local ZIEKKET = 2772;

------ EncounterToCRS ------
local EncounterToCRS = {
	[TRINITY] = {
		243029,	-- Kezkitt
		243028,	-- Meittik
		243030,	-- Lekshi
	},
	[IKUZZ] = { 244887 },	-- Ikuzz the Light Hunter
	[RUIA] = { 245912 },	-- Lightwarden Ruia
	[ZIEKKET] = { 247676 },	-- Ziekket
};

------ Boss Functions ------
local InstanceHelper = CreateInstanceHelper(EncounterToCRS)
local BossOnly, Difficulty =
InstanceHelper.BossOnly, InstanceHelper.Difficulty

root(ROOTS.Instances, expansion(EXPANSION.MID, bubbleDownSelf({ ["timeline"] = { ADDED_12_0_X_LAUNCH } }, {
	inst(1309, {	-- The Blinding Vale
		["coord"] = { 27.2, 78.0, MAP.MIDNIGHT.HARANDAR },
		["maps"] = { 2500 },
		["groups"] = {
			Difficulty(DIFFICULTY.DUNGEON.MULTI.NORMAL_PLUS).AddGroups({
				BossOnly(TRINITY, {
					i(251182),	-- Bedrock Breeches
					i(251184),	-- Ironroot Collar
					i(251185),	-- Lightblossom Cinch
					i(251181),	-- Pruning Lance
					i(251183),	-- Rootwarden Wraps
					i(250254),	-- Seed of Radiant Hope
					i(251180),	-- Thornblade
				}),
				BossOnly(IKUZZ, {
					i(251187),	-- Amirdrassil's Reach
					i(251190),	-- Bloodthorn Burnous
					i(251188),	-- Doompetal
					i(251189),	-- Rootwalker Harness
					i(250238),	-- Seed of the Devouring Wild
					i(251186),	-- Thorntalon Edge
				}),
				BossOnly(RUIA, {
					i(251192),	-- Branch of Pride
					i(250214),	-- Lightspire Core
					i(251194),	-- Lightwarden's Bind
					i(251191),	-- Luminescent Sprout
					i(251165),	-- Pulverizing Pads
					i(251193),	-- Taproot Ribs
				}),
				BossOnly(ZIEKKET, {
					ach(61641),	-- The Blinding Vale
					i(256642),	-- Pattern: Primal Spore Binding (RECIPE!)
					i(256652),	-- Pattern: World Tender's Trunkplate (RECIPE!)
					i(253451),	-- Veilroot Fountain (DECOR!)
					i(251198),	-- Lightspore Leggings
					i(250259),	-- Sapling of the Dawnroot
					i(251200),	-- Saptorbane Guards
					i(251196),	-- Teldrassil's Sacrifice
					i(251195),	-- Thorned Reply
					i(251197),	-- Thornspike Gauntlets
					i(251199),	-- Worldroot Canopy
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.MULTI.HEROIC_PLUS).AddGroups({
				BossOnly(ZIEKKET, {
					ach(61648),	-- Heroic: The Blinding Vale
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.MYTHIC).AddGroups({
				BossOnly(ZIEKKET, {
					ach(61649),	-- Mythic: The Blinding Vale
					ach(61619),	-- Mythic: The Blinding Vale Guild Run
				}),
			}),
		},
	})
})));
