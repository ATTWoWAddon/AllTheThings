-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

------ Encounter Constants ------
local HOARDMONGER = 2776;
local SENTINEL = 2777;
local NALORAKK = 2778;

------ EncounterToCRS ------
local EncounterToCRS = {
	[HOARDMONGER] = { 241812 },	-- The Hoardmonger
	[SENTINEL] = { 244100 },	-- Sentinel of Winter
	[NALORAKK] = { 246404 },	-- Nalorakk
};

------ Boss Functions ------
local InstanceHelper = CreateInstanceHelper(EncounterToCRS)
local BossOnly, Difficulty =
InstanceHelper.BossOnly, InstanceHelper.Difficulty

root(ROOTS.Instances, expansion(EXPANSION.MID, bubbleDownSelf({ ["timeline"] = { ADDED_12_0_X_LAUNCH } }, {
	inst(1311, {	-- Den of Nalorakk
		["coord"] = { 30.0, 84.5, MAP.MIDNIGHT.ZULAMAN },
		["maps"] = {
			2514,	-- Dreamer's Passage
			2513,	-- The Heart of Rage
		},
		["groups"] = {
			Difficulty(DIFFICULTY.DUNGEON.MULTI.NORMAL_PLUS).AddGroups({
				BossOnly(HOARDMONGER, {
					i(251144),	-- Autumn's Boon Belt
					i(251145),	-- Forgotten Tribe Footguards
					i(251143),	-- Grim Harvest Gloves
					i(251147),	-- Hoarded Harvest Wrap
					i(250248),	-- Mycolic Medicine
					i(251148),	-- Pilfered Precious Band
					i(251146),	-- Scavenger's Spaulders
				}),
				BossOnly(SENTINEL, {
					i(251153),	-- Arctic Explorer's Legwraps
					i(250244),	-- Permafrost Essence
					i(251152),	-- Season's Turn Gauntlets
					i(251151),	-- Sentinel Challenger's Prize
					i(251150),	-- Tempest's Shelter
					i(251155),	-- Tribal Defender's Cord
					i(251149),	-- Victor's Flashfrozen Blade
					i(251154),	-- Winter's Embrace Bracers
				}),
				BossOnly(NALORAKK, {
					ach(61638),	-- Den of Nalorakk
					i(256737),	-- Formula: Enchant Chest - Mark of Nalorakk (RECIPE!)
					i(264332),	-- Amani Ritual Altar (DECOR!)
					i(251214),	-- Bonds of the Hash'ura
					i(251156),	-- Fallen Speaker's Staff
					i(251160),	-- Forest Dream Leg-guards
					i(250229),	-- Idol of the War Loa
					i(251158),	-- Nalorakk's Nightmare
					i(251159),	-- War Trial Vestments
					i(251173),	-- Yoke of the Charging Bear
				}),
				filter(MISC, {
					i(245573),	-- Salmon
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.MULTI.HEROIC_PLUS).AddGroups({
				BossOnly(NALORAKK, {
					ach(61642),	-- Heroic: Den of Nalorakk
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.MYTHIC).AddGroups({
				BossOnly(NALORAKK, {
					ach(61643),	-- Mythic: Den of Nalorakk
					ach(61605),	-- Mythic: Den of Nalorakk Guild Run
				}),
			}),
		},
	})
})));
