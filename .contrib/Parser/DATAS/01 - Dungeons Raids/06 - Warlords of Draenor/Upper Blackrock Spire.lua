-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

------ Encounter Constants ------
local OREBENDER = 1226
local KYRAK = 1227
local THARBECK = 1228
local RAGEWING = 1229
local ZAELA = 1234

------ EncounterToCRS ------
local EncounterToCRS = {
	[OREBENDER] = { 76413 },	-- Orebender Gor'ashan
	[KYRAK] = { 76021 },	-- Kyrak
	[THARBECK] = {
		79912,	-- Commander Tharbek
		80098,	-- Ironbarb Skyreaver
	},
	[RAGEWING] = { 76585 },	-- Ragewing the Untamed
	[ZAELA] = { 77120 },	-- Warlord Zaela
}

------ EncounterToLoot ------
local EncounterToLoot = {
	[OREBENDER] = {
	},
	[KYRAK] = {
	},
	[THARBECK] = {
	},
	[RAGEWING] = {
	},
	[ZAELA] = {
	},
}

------ Zone Drops ----------
local ZoneDropLoot = {
}

------ Common Drop Slots ----------
local CommonDropSlots = {
	[OREBENDER] = {BACK,FEET},
	[KYRAK] = {SHOULDER,FINGER},
	[THARBECK] = {CHEST,HANDS},
	[RAGEWING] = {NECK,LEGS},
	[ZAELA] = {HEAD,WRIST,WAIST},
}

local InstanceHelper = CreateInstanceHelper(EncounterToCRS, EncounterToLoot, ZoneDropLoot)
local Boss, BossOnly, Difficulty, BossWithHeader =
InstanceHelper.Boss, InstanceHelper.BossOnly, InstanceHelper.Difficulty, InstanceHelper.BossWithHeader

root(ROOTS.Instances, expansion(EXPANSION.WOD, bubbleDown({ ["timeline"] = { ADDED_6_0_3_LAUNCH } }, {
	inst(559, {	-- Upper Blackrock Spire
		["coord"] = { 78.94, 33.62, BLACKROCK_MOUNTAIN },
		["maps"] = { UPPER_BLACKROCK_SPIRE_WOD, 617, 618 },
		["lvl"] = 100,
		["groups"] = {
			Difficulty(DIFFICULTY.DUNGEON.MULTI.NORMAL_PLUS).AddGroups({
				BossOnly(OREBENDER, {
					i(118719),	-- Petrified Willow
					i(109998),	-- Gor'ashan's Lodestone Spike
				}),
				BossOnly(KYRAK, {
					i(118724),	-- Pip's Flenser
					i(110018),	-- Kyrak's Vileblood Serum
				}),
				BossOnly(THARBECK, {
					i(118726),	-- Tharbek's Brutal Possessor
					i(118725),	-- Tharbek's Unholy Charge
					i(110008),	-- Tharbek's Lucky Pebble
				}),
				BossOnly(RAGEWING, {
					i(118737),	-- Blackhand Doomcutter
					i(110003),	-- Ragewing's Firefang
				}),
				BossOnly(ZAELA, {
					ach(9042),	-- Upper Blackrock Spire
					i(118740),	-- Bleakblade of Shahram
					i(118738),	-- Felshanker
					i(118739),	-- Draconian Doomshield
					i(110013),	-- Emberscale Talisman
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.MULTI.NORMAL_MYTHIC).AddGroups({
				Boss(OREBENDER, {
					["sym"] = SYM_WOD_COMMON_DUNGEON_SLOTS(DIFFICULTY.DUNGEON.NORMAL_MYTHIC, unpack(CommonDropSlots[OREBENDER])),
				}),
				Boss(KYRAK, {
					["sym"] = SYM_WOD_COMMON_DUNGEON_SLOTS(DIFFICULTY.DUNGEON.NORMAL_MYTHIC, unpack(CommonDropSlots[KYRAK])),
				}),
				Boss(THARBECK, {
					["sym"] = SYM_WOD_COMMON_DUNGEON_SLOTS(DIFFICULTY.DUNGEON.NORMAL_MYTHIC, unpack(CommonDropSlots[THARBECK])),
				}),
				n(77927, {	-- Son of the Beast
					i(120340),	-- Son of the Beast's Bloody Paw
				}),
				Boss(RAGEWING, {
					["sym"] = SYM_WOD_COMMON_DUNGEON_SLOTS(DIFFICULTY.DUNGEON.NORMAL_MYTHIC, unpack(CommonDropSlots[RAGEWING])),
				}),
				Boss(ZAELA, {
					["sym"] = SYM_WOD_COMMON_DUNGEON_SLOTS(DIFFICULTY.DUNGEON.NORMAL_MYTHIC, unpack(CommonDropSlots[ZAELA])),
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.NORMAL).AddGroups({
				BossWithHeader(OREBENDER, HEADER_WARFORGED, {
					["sym"] = SYM_WOD_COMMON_DUNGEON_SLOTS(DIFFICULTY.DUNGEON.NORMAL, unpack(CommonDropSlots[OREBENDER])),
					["groups"] = {
						-- [Only available during pre WoD level 90 version]
						un(REMOVED_FROM_GAME, i(118743)),	-- Band of Desolation
						un(REMOVED_FROM_GAME, i(118742)),	-- Burning Band
						un(REMOVED_FROM_GAME, i(118755)),	-- Dripping Willow
						un(REMOVED_FROM_GAME, i(118745)),	-- Painweaver Seal
						un(REMOVED_FROM_GAME, i(118746)),	-- Rosewine Loop
						un(REMOVED_FROM_GAME, i(118744)),	-- Rune Band of Healing
					},
				}),
				BossWithHeader(KYRAK, HEADER_WARFORGED, {
					["sym"] = SYM_WOD_COMMON_DUNGEON_SLOTS(DIFFICULTY.DUNGEON.NORMAL, unpack(CommonDropSlots[KYRAK])),
					["groups"] = {
						-- [Only available during pre WoD level 90 version]
						un(REMOVED_FROM_GAME, i(118748)),	-- Fallbrush Gauntlets
						un(REMOVED_FROM_GAME, i(118756)),	-- Pip's Shanker
						un(REMOVED_FROM_GAME, i(118747)),	-- Grips of Power
						un(REMOVED_FROM_GAME, i(118750)),	-- Reiver Gauntlets
						un(REMOVED_FROM_GAME, i(118749)),	-- Trueaim Grips
					},
				}),
				BossWithHeader(THARBECK, HEADER_WARFORGED, {
					["sym"] = SYM_WOD_COMMON_DUNGEON_SLOTS(DIFFICULTY.DUNGEON.NORMAL, unpack(CommonDropSlots[THARBECK])),
					["groups"] = {
						-- [Only available during pre WoD level 90 version]
						un(REMOVED_FROM_GAME, i(118752)),	-- Bloodmoon Tunic
						un(REMOVED_FROM_GAME, i(118751)),	-- Nightbrace Chestguard
						un(REMOVED_FROM_GAME, i(118753)),	-- Plate of Shamanic Fury
						un(REMOVED_FROM_GAME, i(118754)),	-- Polychromatic Dreamwrap
						un(REMOVED_FROM_GAME, i(118758)),	-- Tharbek's Horrific Posessor
						un(REMOVED_FROM_GAME, i(118757)),	-- Tharbek's Terrible Charge
					},
				}),
				n(77927, {	-- Son of the Beast
					HEADER_WARFORGED({
						i(120340),	-- Son of the Beast's Bloody Paw
					}),
				}),
				BossWithHeader(RAGEWING, HEADER_WARFORGED, {
					["sym"] = SYM_WOD_COMMON_DUNGEON_SLOTS(DIFFICULTY.DUNGEON.NORMAL, unpack(CommonDropSlots[RAGEWING])),
					["groups"] = {
						-- [Only available during pre WoD level 90 version]
						-- No items?
					},
				}),
				BossWithHeader(ZAELA, HEADER_WARFORGED, {
					["sym"] = SYM_WOD_COMMON_DUNGEON_SLOTS(DIFFICULTY.DUNGEON.NORMAL, unpack(CommonDropSlots[ZAELA])),
					["groups"] = {
						-- [Only available during pre WoD level 90 version]
						-- No items?
					},
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.MULTI.HEROIC_PLUS).AddGroups({
				n(ACHIEVEMENTS, {
					ach(9058, {	-- Leeeeeeeeeeeeeroy...?
						["crs"] = { 77075 },	-- Leeroy Jenkins
						["groups"] = {
							follower(178),	-- Leeroy Jenkins
							title(110, {	-- Jenkins
								["style"] = 2,
							}),
						},
					}),
				}),
				BossOnly(OREBENDER, {
					ach(9045),	-- Magnets, How Do They Work?
				}),
				BossOnly(KYRAK, {
				}),
				n(77081, {	-- The Lanticore
					["description"] = "This rare spawns to the right of Kyrak, the second boss.",
					["groups"] = {
						i(117528),	-- Lanticore Spawnling (PET!)
					},
				}),
				BossOnly(THARBECK, {
				}),
				BossOnly(RAGEWING, {
					ach(9056),	-- Bridge Over Troubled Fire
				}),
				BossOnly(ZAELA, {
					ach(9057, {	-- Dragonmaw? More Like Dragonfall!
						["crs"] = { 82428 },	-- Emberscale Ironflight
					}),
					ach(9055),	-- Heroic: Upper Blackrock Spire
					ach(9376),	-- Heroic: Upper Blackrock Spire Guild Run
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.HEROIC).AddGroups({
				Boss(OREBENDER, {
					["sym"] = SYM_WOD_COMMON_DUNGEON_SLOTS(DIFFICULTY.DUNGEON.HEROIC, unpack(CommonDropSlots[OREBENDER])),
				}),
				Boss(KYRAK, {
					["sym"] = SYM_WOD_COMMON_DUNGEON_SLOTS(DIFFICULTY.DUNGEON.HEROIC, unpack(CommonDropSlots[KYRAK])),
				}),
				Boss(THARBECK, {
					["sym"] = SYM_WOD_COMMON_DUNGEON_SLOTS(DIFFICULTY.DUNGEON.HEROIC, unpack(CommonDropSlots[THARBECK])),
				}),
				n(77927, {	-- Son of the Beast
					i(120340),	-- Son of the Beast's Bloody Paw
				}),
				Boss(RAGEWING, {
					["sym"] = SYM_WOD_COMMON_DUNGEON_SLOTS(DIFFICULTY.DUNGEON.HEROIC, unpack(CommonDropSlots[RAGEWING])),
				}),
				Boss(ZAELA, {
					["sym"] = SYM_WOD_COMMON_DUNGEON_SLOTS(DIFFICULTY.DUNGEON.HEROIC, unpack(CommonDropSlots[ZAELA])),
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.MYTHIC).AddGroups({
				BossOnly(OREBENDER),
				BossOnly(KYRAK),
				BossOnly(THARBECK),
				BossOnly(RAGEWING),
				BossOnly(ZAELA, {
					ach(10085),	-- Mythic: Upper Blackrock Spire
				}),
			}),
		},
	}),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.WOD, bubbleDownSelf({ ["timeline"] = { ADDED_6_0_2 } }, {
	inst(559, {
		q(36865),	-- UBRS Event Dungeon Reward Quest
		q(34554),	-- Upper Blackrock Spire Challenge Mode - Bronze Addition (Nth)
		q(34531),	-- Upper Blackrock Spire Challenge Mode - Consolation (Nth)
		q(34742),	-- Upper Blackrock Spire Challenge Mode - Consolation (Nth)
		q(34556),	-- Upper Blackrock Spire Challenge Mode - Gold Addition (Nth)
		q(34555),	-- Upper Blackrock Spire Challenge Mode - Silver Addition (Nth)
	}),
})));
