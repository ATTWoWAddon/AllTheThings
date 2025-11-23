-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

------ Encounter Constants ------
local CABAL = 2328;
local UUNAT = 2332;

------ EncounterToCRS ------
local EncounterToCRS = {
	[CABAL] = {
		144754,	-- Fa'thuul the Feared
		144755,	-- Zaxasj the Speaker
	},
	[UUNAT] = { 145371 },	-- Uu'nat, Harbinger of the Void
};

------ EncounterToLoot ------
local EncounterToLoot = {
	[CABAL] = {
		i(167841),	-- Abyssal Speaker's Gauntlets
		i(167833),	-- Fathom Dredgers
		i(167842),	-- Fa'thuul's Floodguards
		i(167219),	-- Gloves of the Undying Pact
		i(167837),	-- Insurgent's Scouring Chain
		i(167838),	-- Leggings of the Aberrant Tidesage
		i(167840),	-- Mindthief's Eldritch Clasp
		i(167863),	-- Pillar of the Drowned Cabal
		i(167218),	-- Zaxasj's Deepstriders
	};
	[UUNAT] = {
		i(167839),	-- Grips of Forsaken Sanity
		i(167867),	-- Harbinger's Inscrutable Will
		i(167868),	-- Idol of Indiscriminate Consumption
		i(167217),	-- Legplates of Unbound Anguish
		i(167866),	-- Lurker's Insidious Gift
		i(167835),	-- Malformed Herald's Legwraps
		i(167834),	-- Stormglide Steps
		i(167865),	-- Void Stones
	};
};

------ Boss Functions ------
local InstanceHelper = CreateInstanceHelper(EncounterToCRS, EncounterToLoot)
local Boss, BossOnly, Difficulty, CommonBossDrops =
InstanceHelper.Boss, InstanceHelper.BossOnly, InstanceHelper.Difficulty, InstanceHelper.CommonBossDrops

root(ROOTS.Instances, expansion(EXPANSION.BFA, bubbleDown({ ["timeline"] = { ADDED_8_1_0 } }, {
	inst(1177, {	-- Crucible of Storms
		["coord"] = { 83.8, 47.0, STORMSONG_VALLEY },
		["maps"] = {
			1345,	-- Shrine of Shadows
			1346,	-- Tendril of Corruption
		},
		["isRaid"] = true,
		["lvl"] = { 50 },
		["groups"] = {
			n(ACHIEVEMENTS, {
				ach(13414, {	-- Crucible of Storms
					crit(44051, {	-- The Restless Cabal
						["_encounter"] = { CABAL, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(44052, {	-- Uu'nat, Harbinger of the Void
						["_encounter"] = { UUNAT, DIFFICULTY.RAID.MULTI.ALL },
					}),
				}),
				ach(13420),	-- Crucible of Storms Guild Run
			}),
			Difficulty(DIFFICULTY.RAID.MULTI.ALL).AddGroups({
				CommonBossDrops({
					i(165735),	-- Vantus Rune Technique: Crucible of Storms [Rank 1] (RECIPE!)
					i(165736),	-- Vantus Rune Technique: Crucible of Storms [Rank 2] (RECIPE!)
					i(165737),	-- Vantus Rune Technique: Crucible of Storms [Rank 3] (RECIPE!)
				}),
				BossOnly(CABAL),
				BossOnly(UUNAT, {
					i(167864),	-- Trident of Deep Ocean
				}),
			}),
			Difficulty(DIFFICULTY.RAID.LFR, {	-- Queue NPC
				["crs"] = {
					177193,	-- Kiku
					177208,	-- Eppu
				},
				["coords"] = {
					{ 74.0, 13.4, BORALUS },	-- Kiku
					{ 68.0, 33.6, THE_GREAT_SEAL },	-- Eppu
				},
			}),
			Difficulty(DIFFICULTY.RAID.LFR).AddGroups({
				header(HEADERS.LFGDungeon, 1951, {	-- Crucible of Storms
					Boss(CABAL),
					Boss(UUNAT),
				}),
			}),
			Difficulty(DIFFICULTY.RAID.MULTI.NORMAL_PLUS).AddGroups({
				BossOnly(CABAL, {
					ach(13501),	-- Gotta Bounce
				}),
				BossOnly(UUNAT, {
					ach(13506),	-- A Good Eye-dea
				}),
			}),
			Difficulty(DIFFICULTY.RAID.NORMAL).AddGroups({
				Boss(CABAL),
				Boss(UUNAT),
			}),
			Difficulty(DIFFICULTY.RAID.MULTI.HEROIC_PLUS).AddGroups({
				BossOnly(UUNAT, {
					ach(13418, {	-- Ahead of the Curve: Uu'nat, Harbinger of the Void
						["timeline"] = { ADDED_8_1_0, REMOVED_8_2_0 },
					}),
				}),
			}),
			Difficulty(DIFFICULTY.RAID.HEROIC).AddGroups({
				Boss(CABAL),
				Boss(UUNAT),
			}),
			Difficulty(DIFFICULTY.RAID.MYTHIC).AddGroups({
				Boss(CABAL, {
					ach(13416),	-- Mythic: The Restless Cabal
				}),
				Boss(UUNAT, {
					ach(13417),	-- Mythic: Uu'nat, Harbinger of the Void
					ach(13421),	-- Mythic: Uu'nat, Harbinger of the Void Guild Run
					ach(13419, {	-- Cutting Edge: Uu'nat, Harbinger of the Void
						["timeline"] = { ADDED_8_1_0, REMOVED_8_2_0 },
					}),
					ach(13423, bubbleDownSelf({["timeline"] = { ADDED_8_1_0, REMOVED_8_2_0 } }, {	-- Hall of Fame: Uu'nat, Harbinger of the Void (A)
						["races"] = ALLIANCE_ONLY,
						["groups"] = { title(400) },	-- <Name>, Famed Slayer of the Harbinger
					})),
					ach(13424, bubbleDownSelf({["timeline"] = { ADDED_8_1_0, REMOVED_8_2_0 } }, {	-- Hall of Fame: Uu'nat, Harbinger of the Void (H)
						["races"] = HORDE_ONLY,
						["groups"] = { title(400) },	-- <Name>, Famed Slayer of the Harbinger
					})),
				}),
			}),
		},
	}),
})));
