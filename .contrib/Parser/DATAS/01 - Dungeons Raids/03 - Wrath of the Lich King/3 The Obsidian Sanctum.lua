-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

TWILIGHT_ASSIST = createHeader({
	readable = "Twilight Assist",
	icon = 236469,
	text = {
		en = "Twilight Assist",
		de = "Zwielicht-Assistent",
		es = "Ayuda Crepuscular",
		mx = "Ayuda Crepuscular",
		fr = "Aide Crépusculaire",
		it = "Assist Crepuscolare",
		ko = "황혼의 지원",
		pt = "Assistente do Crepúsculo",
		ru = "Сумеречные помощники",
		cn = "暮光帮凶",
		tw = "暮光協助",
	},
	description = {
		en = "Engage Sartharion with at least 1 of the 3 drakes alive and then defeat Sartharion.",
	},
});
TWILIGHT_DUO = createHeader({
	readable = "Twilight Duo",
	icon = 236473,
	text = {
		en = "Twilight Duo",
		de = "Zwielicht-Duo",
		es = "Dúo Crepuscular",
		mx = "Dúo Crepuscular",
		fr = "Duo Crépusculaire",
		it = "Doppietta Crepuscolare",
		ko = "황혼의 2인조",
		pt = "Dupla do Crepúsculo",
		ru = "Сумеречный дуэт",
		cn = "暮光二重奏",
		tw = "暮光雙人組",
	},
	description = {
		en = "Engage Sartharion with at least 2 of the 3 drakes alive and then defeat Sartharion.",
	},
});
TWILIGHT_ZONE = createHeader({
	readable = "Twilight Zone",
	icon = 236471,
	text = {
		en = "Twilight Zone",
		de = "Zwielichtzone",
		es = "Dimensión Desconocida",
		mx = "Dimensión Desconocida",
		fr = "Chroniques des Crépusculaires",
		it = "Zona del Crepuscolo",
		ko = "황혼 지대",
		pt = "Além da Imaginação",
		ru = "Зона сумерек",
		cn = "暮光领域",
		tw = "暮光地帶",
	},
	description = {
		en = "Engage Sartharion with all 3 drakes alive and then defeat Sartharion.",
	},
});

-- 10 Man Exclusive Content
local SARTH_10MAN_METADATA_AND_ACHIEVEMENTS = d(DIFFICULTY.LEGACY_RAID.PLAYER10_NORMAL, {
	n(ACHIEVEMENTS, {
		ach(624, {	-- Less Is More [10 player]
			crit(522, {	-- Sartharion
				["provider"] = { "n", 28860 },	-- Sartharion
			}),
			crit(7191, {	-- Shadron
				["provider"] = { "n", 30451 },	-- Shadron
			}),
			crit(7190, {	-- Tenebron
				["provider"] = { "n", 30452 },	-- Tenebron
			}),
			crit(7189, {	-- Vesperon
				["provider"] = { "n", 30449 },	-- Vesperon
			}),
		}),
	}),
	e(1616, {	-- Sartharion
		["creatureID"] = 28860,	-- Sartharion
		["groups"] = {
			ach(1876),	-- Besting the Black Dragonflight [10 player]
			ach(2047),	-- Gonna Go When the Volcano Blows [10 player]
			n(TWILIGHT_ZONE, {
				ach(2051, {	-- The Twilight Zone [10 player]
					title(107),	-- of the Nightfall
					i(43986)	-- Black Drake (MOUNT!)
				}),
				ach(5017, {	-- The Twilight Zone - Guild Edition
					["timeline"] = { ADDED_4_0_3 },
				}),
			}),
			n(TWILIGHT_DUO, {
				ach(2050),	-- Twilight Duo [10 player]
			}),
			n(TWILIGHT_ASSIST, {
				ach(2049),	-- Twilight Assist [10 player]
			}),
		},
	}),
});
-- #if NOT NAXX_10MAN_DROPS_25MAN_LOOT
local SARTH_10MAN_LOOT = d(DIFFICULTY.LEGACY_RAID.PLAYER10_NORMAL, {
	e(1616, {	-- Sartharion
		["creatureID"] = 28860,	-- Sartharion
		["groups"] = {
			n(TWILIGHT_DUO, {
				i(43995),	-- Enamored Cowl
				i(43998),	-- Chestguard of Flagrant Prowess
				i(43994),	-- Belabored Legplates
				i(43996),	-- Sabatons of Firmament
				i(43993),	-- Greatring of Collision
			}),
			n(TWILIGHT_ASSIST, {
				i(43992),	-- Volitant Amulet
				i(43988),	-- Gale-Proof Cloak
				i(43990),	-- Blade-Scarred Tunic
				i(43989),	-- Remembrance Girdle
				i(43991),	-- Legguards of Composure
			}),
			i(40613),	-- Gloves of the Lost Conqueror
			i(40614),	-- Gloves of the Lost Protector
			i(40615),	-- Gloves of the Lost Vanquisher
			i(40429),	-- Crimson Steel
			i(40428),	-- Titan's Outlook
			i(40427),	-- Circle of Arcane Streams
			i(40426),	-- Signet of the Accord
			i(40430),	-- Majestic Dragon Figurine
			i(43345),	-- Dragon Hide Bag
			i(43347, {	-- Satchel of Spoils
				["description"] = "Contains gold.",
			}),
		},
	}),
});
-- #endif

-- 25 Man Exclusive Content
local SARTH_25MAN_METADATA_AND_ACHIEVEMENTS = d(DIFFICULTY.LEGACY_RAID.PLAYER25_NORMAL, {
	n(ACHIEVEMENTS, {
		ach(1877, {	-- Less Is More [25 player]
			crit(7186, {	-- Sartharion
				["provider"] = { "n", 28860 },	-- Sartharion
			}),
			crit(7187, {	-- Shadron
				["provider"] = { "n", 30451 },	-- Shadron
			}),
			crit(7188, {	-- Tenebron
				["provider"] = { "n", 30452 },	-- Tenebron
			}),
			crit(7185, {	-- Vesperon
				["provider"] = { "n", 30449 },	-- Vesperon
			}),
		}),
		ach(456, {	-- Realm First! Obsidian Slayer
			["timeline"] = { ADDED_3_0_2, REMOVED_3_0_8 },
			["groups"] = {
				title(106, {	-- Obsidian Slayer <Name>
					["timeline"] = { ADDED_3_0_2, REMOVED_3_0_8 },
				}),
			},
		}),
	}),
	e(1616, {	-- Sartharion
		["creatureID"] = 28860,	-- Sartharion
		["groups"] = {
			ach(625),	-- Besting the Black Dragonflight [25 player]
			ach(2048),	-- Gonna Go When the Volcano Blows [25 player]
			n(TWILIGHT_ZONE, {
				ach(2054, {	-- The Twilight Zone [25 player]
					title(89),	-- Twilight Vanquisher
					i(43954)	-- Twilight Drake (MOUNT!)
				}),
				ach(5017, {	-- The Twilight Zone - Guild Edition
					["timeline"] = { ADDED_4_0_3 },
				}),
			}),
			n(TWILIGHT_DUO, {
				ach(2053),	-- Twilight Duo [25 player]
			}),
			n(TWILIGHT_ASSIST, {
				ach(2052),	-- Twilight Assist [25 player]
			}),
		},
	}),
});
local SARTH_25MAN_DIFFICULTY_ID = DIFFICULTY.LEGACY_RAID.PLAYER25_NORMAL;
-- #if NAXX_10MAN_DROPS_25MAN_LOOT
-- In Wrath Classic, Blizzard decided it would be a good idea to make 25 man loot drop in 10 man after Ulduar was released. Really stupid idea, but here we are.
SARTH_25MAN_DIFFICULTY_ID = DIFFICULTY.LEGACY_RAID.MULTI.NORMAL;
-- #endif
local SARTH_25MAN_LOOT = d(SARTH_25MAN_DIFFICULTY_ID, {
	e(1616, {	-- Sartharion
		["creatureID"] = 28860,	-- Sartharion
		["groups"] = {
			n(TWILIGHT_DUO, {
				i(44007),	-- Headpiece of Reconciliation
				i(44006),	-- Obsidian Greathelm
				i(44005),	-- Pennant Cloak
				i(44008),	-- Unsullied Cuffs
				i(44011),	-- Leggings of the Honored
			}),
			n(TWILIGHT_ASSIST, {
				i(44003),	-- Upstanding Spaulders
				i(44000),	-- Dragonstorm Breastplate
				i(44002),	-- The Sanctum's Flowing Vestments
				i(44004),	-- Bountiful Gauntlets
			}),
			i(40628),	-- Gauntlets of the Lost Conqueror
			i(40629),	-- Gauntlets of the Lost Protector
			i(40630),	-- Gauntlets of the Lost Vanquisher
			i(40455),	-- Staff of Restraint
			i(40451),	-- Hyaline Helm of the Sniper
			i(40437),	-- Concealment Shoulderpads
			i(40438),	-- Council Chamber Epaulets
			i(40439),	-- Mantle of the Eternal Sentinel
			i(40453),	-- Chestplate of the Great Aspects
			i(40446),	-- Dragon Brood Legguards
			i(40433),	-- Wyrmrest Band
			i(43999),	-- Ring of the Empty Horizon
			i(40431),	-- Fury of the Five Flights
			i(40432),	-- Illustration of the Dragon Soul
			i(43345),	-- Dragon Hide Bag
			i(43346, {	-- Large Satchel of Spoils
				["description"] = "Contains gold.",
			}),
		},
	}),
});

root(ROOTS.Instances, expansion(EXPANSION.WRATH, applyclassicphase(WRATH_PHASE_ONE, bubbleDownSelf({ ["timeline"] = { ADDED_3_0_2 } }, {
	inst(755, {	-- The Obsidian Sanctum
		["mapID"] = THE_OBSIDIAN_SANCTUM,
		["coord"] = { 60.0, 56.7, DRAGONBLIGHT },
		-- #if AFTER WOD
		["sharedLockout"] = 1,
		-- #endif
		["isRaid"] = true,
		["lvl"] = 80,
		["groups"] = {
			SARTH_10MAN_METADATA_AND_ACHIEVEMENTS,
			-- #if NOT NAXX_10MAN_DROPS_25MAN_LOOT
			SARTH_10MAN_LOOT,
			-- #endif
			SARTH_25MAN_METADATA_AND_ACHIEVEMENTS,
			SARTH_25MAN_LOOT,
		},
	}),
}))));
