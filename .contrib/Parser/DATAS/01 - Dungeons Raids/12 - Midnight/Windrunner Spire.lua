-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
------ Encounter Constants ------
local EMBERDAWN = 2655;
local DUO = 2656;
local KROLUK = 2657;
local HEART = 2658;

------ EncounterToCRS ------
local EncounterToCRS = {
	[EMBERDAWN] = { 231606 },	-- Emberdawn
	[DUO] = {
		231626,	-- Kalis
		231629,	-- Latch
	},
	[KROLUK] = { 231631 },	-- Commander Kroluk <Old Horde>
	[HEART] = { 231636 },	-- Restless Heart
};

------ Boss Functions ------
local InstanceHelper = CreateInstanceHelper(EncounterToCRS)
local BossOnly, Difficulty =
InstanceHelper.BossOnly, InstanceHelper.Difficulty

root(ROOTS.Instances, expansion(EXPANSION.MID, bubbleDownSelf({ ["timeline"] = { ADDED_12_0_X_LAUNCH } }, {
	inst(1299, {	-- Windrunner Spire
		["coord"] = { 35.5, 78.8, MAP.MIDNIGHT.EVERSONG_WOODS },
		["maps"] = {
			2492,	-- The Promenade
			2493,	-- Veressa's Repose - Upper
			2494,	-- Veressa's Repose - Lower
			--xx,	-- Sylvanas's Quarters - Upper
			2497,	-- Sylvanas's Quarters - Lower
			2498,	-- Windrunner Vault
			2499,	-- The Pinnacle
		},
		["groups"] = {
			Difficulty(DIFFICULTY.DUNGEON.MULTI.NORMAL_PLUS).AddGroups({
				BossOnly(EMBERDAWN, {
					i(251079),	-- Amberfrond Bracers
					i(251080),	-- Brambledawn Halo
					i(251078),	-- Emberdawn Defender
					i(251081),	-- Embergrove Grasps
					i(250144),	-- Emberwing Feather
					i(251077),	-- Roostwarden's Bough
					i(251082),	-- Snapvine Cinch
				}),
				BossOnly(DUO, {
					i(251083),	-- Excavating Cudgel
					i(250226),	-- Latch's Crooked Hook
					i(251087),	-- Legwraps of Lingering Legacies
					i(251085),	-- Mantle of Dark Devotion
					i(251086),	-- Riphook Defender
					i(251084),	-- Whipcoil Sabatons
				}),
				BossOnly(KROLUK, {
					i(251090),	-- Commander's Faded Breeches
					i(251092),	-- Fallen Grunt's Mantle
					i(251089),	-- Grips of Forgotten Honor
					i(250227),	-- Kroluk's Warbanner
					i(251091),	-- Sabatons of Furious Revenge
					i(251088),	-- Warworn Cleaver
				}),
				BossOnly(HEART, {	-- The Restless Heart
					ach(41287),	-- Windrunner Spire
					i(256683),	-- Silvermoon Training Dummy (DECOR!)
					i(251098),	-- Fletcher's Faded Faceplate
					i(250256),	-- Heart of Wind
					i(251095),	-- Hurricane's Heart
					i(251096),	-- Pendant of Aching Grief
					i(251094),	-- Sigil of the Restless Heart
					i(251097),	-- Spaulders of Arrow's Flight
					i(251099),	-- Vest of the Howling Gale
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.MULTI.HEROIC_PLUS).AddGroups({
				BossOnly(HEART, {	-- The Restless Heart
					ach(41288),	-- Heroic: Windrunner Spire
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.MYTHIC).AddGroups({
				BossOnly(HEART, {	-- The Restless Heart
					ach(41291),	-- Mythic: Windrunner Spire
					i(256653),	-- Pattern: Ranger-General's Grips (RECIPE!)
					i(258125),	-- Pattern: Sunfire Sash (RECIPE!)
				}),
			}),
		},
	})
})));
