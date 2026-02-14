-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

------ Encounter Constants ------
local RANJIT = 965
local ARAKNATH = 966
local RUKHRAN = 967
local VIRYX = 968

------ EncounterToCRS ------
local EncounterToCRS = {
	[RANJIT] = { 75964 },	-- Ranjit
	[ARAKNATH] = { 76141 },	-- Araknath
	[RUKHRAN] = { 76143 },	-- Rukhran
	[VIRYX] = { 76266 },	-- High Sage Viryx
}

------ EncounterToLoot ------
local EncounterToLoot = {
	[RANJIT] = {
		i(110030),	-- Chakram-Breaker Greatsword
	},
	[ARAKNATH] = {
		i(110031),	-- Spire of the Furious Construct
		i(110016),	-- Solar Containment Unit
	},
	[RUKHRAN] = {
		i(110032),	-- Beakbreaker Scimitar
		i(110006),	-- Rukhran's Quill
	},
	[VIRYX] = {
		i(110033),	-- Arcanic of the High Sage
		i(110034),	-- Viryx's Indomitable Bulwark
		i(110011),	-- Fires of the Sun
	},
}

------ Zone Drops ----------
local ZoneDropLoot = {
}

------ Common Drop Slots ----------
local CommonDropSlots = {
	[RANJIT] = {HEAD,WAIST},
	[ARAKNATH] = {NECK,FEET},
	[RUKHRAN] = {WRIST,HANDS},
	[VIRYX] = {SHOULDER,LEGS,FINGER},
}

local InstanceHelper = CreateInstanceHelper(EncounterToCRS, EncounterToLoot, ZoneDropLoot)
local Boss, BossOnly, Difficulty, BossWithHeader =
InstanceHelper.Boss, InstanceHelper.BossOnly, InstanceHelper.Difficulty, InstanceHelper.BossWithHeader

root(ROOTS.Instances, expansion(EXPANSION.WOD, bubbleDown({ ["timeline"] = { ADDED_6_0_3_LAUNCH } }, {
	inst(476, {	-- Skyreach
		["coord"] = { 35.5, 33.6, SPIRES_OF_ARAK },
		["maps"] = { 601, 602 },
		["lvl"] = 96,
		["groups"] = {
			Difficulty(DIFFICULTY.DUNGEON.MULTI.NORMAL_PLUS).AddGroups({
				BossOnly(RANJIT),
				BossOnly(ARAKNATH),
				BossOnly(RUKHRAN),
				BossOnly(VIRYX, {
					ach(8843),	-- Skyreach
					un(REMOVED_FROM_GAME, i(114780)),	-- Pure Solium Band
					i(258744, {["timeline"] = { ADDED_12_0_0 }}),	-- Skyreach Circular Table (DECOR!)
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.MULTI.NORMAL_MYTHIC).AddGroups({
				Boss(RANJIT, {
					["sym"] = SYM_WOD_COMMON_DUNGEON_SLOTS(DIFFICULTY.DUNGEON.NORMAL_MYTHIC, unpack(CommonDropSlots[RANJIT])),
				}),
				Boss(ARAKNATH, {
					["sym"] = SYM_WOD_COMMON_DUNGEON_SLOTS(DIFFICULTY.DUNGEON.NORMAL_MYTHIC, unpack(CommonDropSlots[ARAKNATH])),
				}),
				Boss(RUKHRAN, {
					["sym"] = SYM_WOD_COMMON_DUNGEON_SLOTS(DIFFICULTY.DUNGEON.NORMAL_MYTHIC, unpack(CommonDropSlots[RUKHRAN])),
				}),
				Boss(VIRYX, {
					["sym"] = SYM_WOD_COMMON_DUNGEON_SLOTS(DIFFICULTY.DUNGEON.NORMAL_MYTHIC, unpack(CommonDropSlots[VIRYX])),
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.NORMAL).AddGroups({
				BossWithHeader(RANJIT, HEADER_WARFORGED, {
					["sym"] = SYM_WOD_COMMON_DUNGEON_SLOTS(DIFFICULTY.DUNGEON.NORMAL, unpack(CommonDropSlots[RANJIT])),
				}),
				BossWithHeader(ARAKNATH, HEADER_WARFORGED, {
					["sym"] = SYM_WOD_COMMON_DUNGEON_SLOTS(DIFFICULTY.DUNGEON.NORMAL, unpack(CommonDropSlots[ARAKNATH])),
				}),
				BossWithHeader(RUKHRAN, HEADER_WARFORGED, {
					["sym"] = SYM_WOD_COMMON_DUNGEON_SLOTS(DIFFICULTY.DUNGEON.NORMAL, unpack(CommonDropSlots[RUKHRAN])),
				}),
				BossWithHeader(VIRYX, HEADER_WARFORGED, {
					["sym"] = SYM_WOD_COMMON_DUNGEON_SLOTS(DIFFICULTY.DUNGEON.NORMAL, unpack(CommonDropSlots[VIRYX])),
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.MULTI.HEROIC_PLUS).AddGroups({
				BossOnly(RANJIT, {
					ach(9033),	-- Ready for Raiding IV
				}),
				BossOnly(ARAKNATH, {
				}),
				BossOnly(RUKHRAN, {
					ach(9035, {	-- I Saw Solis
						["crs"] = { 76227 },	-- Solar Flare
					}),
				}),
				BossOnly(VIRYX, {
					ach(8844),	-- Heroic: Skyreach
					ach(9372),	-- Heroic: Skyreach Guild Run
					ach(9034, {	-- Magnify... Enhance
						["crs"] = { 86919 },	-- Empowered Construct
					}),
					ach(9036, {	-- Monomania
						["crs"] = { 76292 },	-- Skyreach Shield Construct
					}),
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.HEROIC).AddGroups({
				Boss(RANJIT, {
					["sym"] = SYM_WOD_COMMON_DUNGEON_SLOTS(DIFFICULTY.DUNGEON.HEROIC, unpack(CommonDropSlots[RANJIT])),
				}),
				Boss(ARAKNATH, {
					["sym"] = SYM_WOD_COMMON_DUNGEON_SLOTS(DIFFICULTY.DUNGEON.HEROIC, unpack(CommonDropSlots[ARAKNATH])),
				}),
				Boss(RUKHRAN, {
					["sym"] = SYM_WOD_COMMON_DUNGEON_SLOTS(DIFFICULTY.DUNGEON.HEROIC, unpack(CommonDropSlots[RUKHRAN])),
				}),
				Boss(VIRYX, {
					["sym"] = SYM_WOD_COMMON_DUNGEON_SLOTS(DIFFICULTY.DUNGEON.HEROIC, unpack(CommonDropSlots[VIRYX])),
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.MYTHIC).AddGroups({
				BossOnly(RANJIT),
				BossOnly(ARAKNATH),
				BossOnly(RUKHRAN),
				BossOnly(VIRYX, {
					ach(10081),	-- Mythic: Skyreach
					ig(127772, {	-- Gemcutter Module: Haste
						["requireSkill"] = JEWELCRAFTING,
						["description"] = "Take this recipe to the \"Apexis Gemcutter\" in Tanaan Jungle to learn. If you have this recipe already you will need to revisit the vendor to cache the recipe.",
					})
				}),
			}),

			-- 12.0.0 revamp during Midnight Season 1
			-- TODO: @ImUnicke (Runawaynow) I don't understand a single line in helpers.
			-- Please figure out timelines/preprocessors for this file, thanks -Darkal
			Difficulty(DIFFICULTY.DUNGEON.HEROIC).AddGroups({
				BossOnly(RANJIT, {
					i(258046),	-- Chakram-Breaker Greatsword
					i(258574),	-- Legwraps of Swirling Light
					i(258575),	-- Rigid Scale Greatcloak
					i(258218),	-- Skybreaker's Blade
					i(258412),	-- Stormshaper's Crossbow
				}),
				Boss(ARAKNATH, {
					i(258577),	-- Boots of Burning Focus
					i(258436),	-- Edge of the Burning Sun
					i(258579),	-- Gutcrusher Greathelm
					i(258578),	-- Lightbinder Shoulderguards
					i(258576),	-- Sharpeye Chestguard
					i(252418),	-- Solar Core Igniter
					i(258047),	-- Spire of the Furious Construct
				}),
				Boss(RUKHRAN, {
					i(258048),	-- Beakbreaker Scimitar
					i(258438),	-- Blazing Sunclaws
					i(258581),	-- Bloodfeather Mantle
					i(258580),	-- Bracers of Blazing Light
					i(258583),	-- Incarnadine Gauntlets
					i(252411),	-- Radiant Sunstone
					i(258582),	-- Rigid Scale Boots
					i(258472),	-- Rukhran's Solar Reliquary
				}),
				Boss(VIRYX, {
					i(258050),	-- Arcanic of the High Sage
					i(258586),	-- Bloodfeather Chestguard
					i(258584),	-- Lightbinder Treads
					i(258585),	-- Sharpeye Gleam
					i(252420),	-- Solarflare Prism
					i(258587),	-- Spaulders of Scorching Ray
					i(258484),	-- Sunlance of Viryx
					i(258049),	-- Viryx's Indomitable Bulwark
				}),
			}),
			Difficulty(DIFFICULTY.RAID.MYTHIC, {["ItemAppearanceModifierID"] = 0}).AddGroups({
				BossOnly(RANJIT, {
					i(258046),	-- Chakram-Breaker Greatsword
					i(258574),	-- Legwraps of Swirling Light
					i(258575),	-- Rigid Scale Greatcloak
					i(258218),	-- Skybreaker's Blade
					i(258412),	-- Stormshaper's Crossbow
				}),
				Boss(ARAKNATH, {
					i(258577),	-- Boots of Burning Focus
					i(258436),	-- Edge of the Burning Sun
					i(258579),	-- Gutcrusher Greathelm
					i(258578),	-- Lightbinder Shoulderguards
					i(258576),	-- Sharpeye Chestguard
					i(252418),	-- Solar Core Igniter
					i(258047),	-- Spire of the Furious Construct
				}),
				Boss(RUKHRAN, {
					i(258048),	-- Beakbreaker Scimitar
					i(258438),	-- Blazing Sunclaws
					i(258581),	-- Bloodfeather Mantle
					i(258580),	-- Bracers of Blazing Light
					i(258583),	-- Incarnadine Gauntlets
					i(252411),	-- Radiant Sunstone
					i(258582),	-- Rigid Scale Boots
					i(258472),	-- Rukhran's Solar Reliquary
				}),
				Boss(VIRYX, {
					ach(10081),	-- Mythic: Skyreach
					ig(127772, {	-- Gemcutter Module: Haste
						["requireSkill"] = JEWELCRAFTING,
						["description"] = "Take this recipe to the \"Apexis Gemcutter\" in Tanaan Jungle to learn. If you have this recipe already you will need to revisit the vendor to cache the recipe.",
					}),
					i(258050),	-- Arcanic of the High Sage
					i(258586),	-- Bloodfeather Chestguard
					i(258584),	-- Lightbinder Treads
					i(258585),	-- Sharpeye Gleam
					i(252420),	-- Solarflare Prism
					i(258587),	-- Spaulders of Scorching Ray
					i(258484),	-- Sunlance of Viryx
					i(258049),	-- Viryx's Indomitable Bulwark
				})
			}),
		},
	}),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.WOD, bubbleDownSelf({ ["timeline"] = { ADDED_6_0_2 } }, {
	inst(476, {
		q(35961),	-- Skyreach Reward Quest
		q(34542),	-- Spires of Arak Challenge Mode - Bronze Addition (Nth)
		q(34524),	-- Spires of Arak Challenge Mode - Consolation (Nth)
		q(34544),	-- Spires of Arak Challenge Mode - Gold Addition (Nth)
		q(34543),	-- Spires of Arak Challenge Mode - Silver Addition (Nth)
	}),
})));
