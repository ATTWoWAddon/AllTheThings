-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
------ Encounter Constants ------
local KASRETH = 2813;
local NYSARRA = 2814;
local LOTHRAXION = 2815;

------ EncounterToCRS ------
local EncounterToCRS = {
	[KASRETH] = { 241539 },	-- Kasreth <Chief Corewright>
	[NYSARRA] = { 254227 },	-- Corewarden Nysarra
	[LOTHRAXION] = { 241546 },	-- Lothraxion <High Commander>
};

------ Boss Functions ------
local InstanceHelper = CreateInstanceHelper(EncounterToCRS)
local BossOnly, Difficulty =
InstanceHelper.BossOnly, InstanceHelper.Difficulty

root(ROOTS.Instances, expansion(EXPANSION.MID, bubbleDownSelf({ ["timeline"] = { ADDED_12_0_X_LAUNCH } }, {
	inst(1316, {	-- Nexus-Point Xenas
		["coord"] = { 64.4, 61.8, MAP.MIDNIGHT.VOIDSTORM },
		["maps"] = { 2556 },	-- Nexus-Point Xenas
		["groups"] = {
			Difficulty(DIFFICULTY.DUNGEON.MULTI.NORMAL_PLUS).AddGroups({
				BossOnly(KASRETH, {
					i(251201),	-- Corespark Multitool
					i(251202),	-- Reflux Reflector
					i(251206),	-- Fluxweave Cloak
					i(251203),	-- Kasreth's Bindings
					i(251204),	-- Corewright's Zappers
					i(251205),	-- Leyline Leggings
				}),
				BossOnly(NYSARRA, {
					i(251209),	-- Corewarden Cuffs
					i(251207),	-- Dreadflail Bludgeon
					i(251210),	-- Eclipse Espadrilles
					i(251208),	-- Lightscarred Cuisses
					i(251213),	-- Nysarra's Mantle
					i(251093),	-- Omission of Light
					i(250253),	-- Whisper of the Duskwraith
				}),
				BossOnly(LOTHRAXION, {
					ach(61640),	-- Nexus-Point Xenas
					i(256716),	-- Design: Prismatic Focusing Iris (RECIPE!)
					i(264338),	-- Domanaar Control Console (DECOR!)
					i(251211),	-- Fractured Fingerguards
					i(251215),	-- Greaves of the Divine Guile
					i(251216),	-- Maledict Vest
					i(250241),	-- Mark of Light
					i(251217),	-- Occulsion of Void
					i(251212),	-- Radiant Slicer
					i(251157),	-- Searing Spaulders
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.MULTI.HEROIC_PLUS).AddGroups({
				BossOnly(LOTHRAXION, {
					ach(61646),	-- Heroic: Nexus-Point Xenas
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.MYTHIC).AddGroups({
				BossOnly(LOTHRAXION, {
					ach(61647),	-- Mythic: Nexus-Point Xenas
					ach(61618),	-- Mythic: Nexus-Point Xenas Guild Run
				}),
			}),
		},
	})
})));
