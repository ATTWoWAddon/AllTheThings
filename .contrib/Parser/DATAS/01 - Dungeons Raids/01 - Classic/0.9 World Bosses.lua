-- #if NOT SEASON_OF_DISCOVERY
-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

local ESKHANDERS_LEFT_CLAW = i(18202);	-- Eskhandar's Left Claw [Note: For whatever reason, Blizzard moved this weapon to Magmadar after the boss was removed.]
local MATURE_BLUE_DRAGON_SINEW = i(18704, {	-- Mature Blue Dragon Sinew
	["classes"] = { HUNTER },
});
local THE_EYE_OF_SHADOW = i(18665, {	-- The Eye of Shadow
	["classes"] = { PRIEST },
});

root(ROOTS.Instances, expansion(EXPANSION.CLASSIC, {
	n(WORLD_BOSSES, {
		["isRaid"] = true,
		["lvl"] = 60,
		["groups"] = {
			applyclassicphase(PHASE_TWO, bubbleDown({ ["timeline"] = { ADDED_1_3_0, REMOVED_4_0_3 } }, n(6109, {	-- Azuregos
				["coord"] = { 53.3, 80.4, AZSHARA },
				-- #if ANYCLASSIC
				["modelScale"] = 6.0,
				-- #endif
				["isRaid"] = true,
				["lvl"] = 60,
				["groups"] = {
					MATURE_BLUE_DRAGON_SINEW,
					i(19130),	-- Cold Snap
					ESKHANDERS_LEFT_CLAW,
					i(17070),	-- Fang of the Mystics
					i(18542),	-- Typhoon
					i(19132),	-- Crystal Adorned Crown
					i(18208),	-- Drape of Benediction
					i(18541),	-- Puissant Cape
					i(18547),	-- Unmelting Ice Girdle
					i(18545),	-- Leggings of Arcane Supremacy
					i(19131),	-- Snowblind Shoes
				},
			}))),
			applyclassicphase(PHASE_FOUR, bubbleDown({ ["timeline"] = { ADDED_1_8_0, REMOVED_4_0_3 } }, n(DRAGONS_OF_NIGHTMARE, {
				["coords"] = {
					{ 51.2, 10.9, FERALAS },
					{ 63.3, 27.8, THE_HINTERLANDS },
					{ 45.4, 39.6, DUSKWOOD },
					{ 94.2, 35.7, ASHENVALE },
				},
				["isRaid"] = true,
				["lvl"] = 60,
				["groups"] = {
					n(QUESTS, {
						q(8446, {	-- Shrouded in Nightmare
							["provider"] = { "i", 20644 },
							["lvl"] = 60,
						}),
						q(8447, {	-- Waking Legends
							["sourceQuest"] = 8446,	-- Shrouded in Nightmare
							["qg"] = 11832,	-- Keeper Remulos
							["coord"] = { 36.18, 41.79, MOONGLADE },
							["lvl"] = 60,
							["groups"] = { i(20600) },	-- Malfurion's Signet Ring
						}),
					}),
					n(COMMON_BOSS_DROPS, {
						["crs"] = {
							14889,	-- Emeriss
							14888,	-- Lethon
							14890,	-- Taerar
							14887,	-- Ysondre
						},
						["groups"] = {
							i(20644),	-- Nightmare Engulfed Object
							i(20619),	-- Acid Inscribed Greaves
							i(20617),	-- Ancient Corroded Leggings
							i(20616),	-- Dragonbone Wristguards
							i(20615),	-- Dragonspur Wraps
							i(20618),	-- Gloves of Delusional Power
							i(20579),	-- Green Dragonskin Cloak
							i(20580),	-- Hammer of Bestial Fury
							i(20581),	-- Staff of Rampant Growth
							i(20582),	-- Trance Stone
							prof(SKINNING, {
								i(20381),	-- Dreamscale
							}),
						},
					}),
					n(14889, {	-- Emeriss
						-- #if ANYCLASSIC
						["modelScale"] = 6.0,
						-- #endif
						["isRaid"] = true,
						["lvl"] = 60,
						["groups"] = {
							i(20599),	-- Polished Ironwood Crossbow
							i(20623),	-- Circlet of Restless Dreams
							i(20622),	-- Dragonheart Necklace
							i(20621),	-- Boots of the Endless Moor
							i(20624),	-- Ring of the Unliving
						},
					}),
					n(14888, {	-- Lethon
						-- #if ANYCLASSIC
						["modelScale"] = 6.0,
						-- #endif
						["isRaid"] = true,
						["lvl"] = 60,
						["groups"] = {
							i(20628),	-- Deviate Growth Cap
							i(20626),	-- Black Bark Wristbands
							i(20630),	-- Gauntlets of the Shining Light
							i(20625),	-- Belt of the Dark Bog
							i(20627),	-- Dark Heart Pants
							i(20629),	-- Malignant Footguards
						},
					}),
					n(14890, {	-- Taerar
						-- #if ANYCLASSIC
						["modelScale"] = 6.0,
						-- #endif
						["isRaid"] = true,
						["lvl"] = 60,
						["groups"] = {
							i(20577),	-- Nightmare Blade
							i(20633),	-- Unnatural Leather Spaulders
							i(20634),	-- Boots of Fright
							i(20631),	-- Mendicant's Slippers
							i(20632),	-- Mindtear Band
						},
					}),
					n(14887, {	-- Ysondre
						-- #if ANYCLASSIC
						["modelScale"] = 6.0,
						-- #endif
						["isRaid"] = true,
						["lvl"] = 60,
						["groups"] = {
							i(20578),	-- Emerald Dragonfang
							i(20637),	-- Acid Inscribed Pauldrons
							i(20635),	-- Jade Inlaid Vestments
							i(20638),	-- Leggings of the Demented Mind
							i(20639),	-- Strangley Glyphed Legplates
							i(20636),	-- Hibernation Crystal
						},
					}),
				},
			}))),
			applyclassicphase(PHASE_TWO, bubbleDown({ ["timeline"] = {  ADDED_1_3_0, REMOVED_2_0_1 } }, n(12397, {	-- Lord Kazzak / Highlord Kruul
				["coord"] = { 36.6, 75.8, BLASTED_LANDS },
				["modelScale"] = 6.0,
				["isRaid"] = true,
				["crs"] = { 18338 },	-- Highlord Kruul
				["lvl"] = 60,
				["groups"] = {
					THE_EYE_OF_SHADOW,
					i(17113),	-- Amberseal Keeper
					i(17112),	-- Empyrean Demolisher
					i(18546),	-- Infernal Headcage
					i(17111),	-- Blazefury Medallion
					i(18204),	-- Eskhandar's Pelt
					i(19135),	-- Blacklight Bracer
					i(18544),	-- Doomhide Gauntlets
					i(19134),	-- Flayed Doomguard Belt
					i(19133),	-- Fel-Infused Leggings
					i(18543),	-- Ring of Entropy
				},
			}))),
		},
	}),
}));

ESKHANDERS_LEFT_CLAW.u = nil;
ESKHANDERS_LEFT_CLAW.timeline = nil;
THE_EYE_OF_SHADOW.u = nil;
MATURE_BLUE_DRAGON_SINEW.u = nil;
-- #if BEFORE CATA
THE_EYE_OF_SHADOW.timeline = nil;
MATURE_BLUE_DRAGON_SINEW.timeline = nil;
-- #endif
-- #endif
