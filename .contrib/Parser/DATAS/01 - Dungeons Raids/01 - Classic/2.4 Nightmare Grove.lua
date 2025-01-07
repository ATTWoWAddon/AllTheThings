-- #if SEASON_OF_DISCOVERY
-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
root(ROOTS.Instances, expansion(EXPANSION.CLASSIC, {
	applyclassicphase(SOD_PHASE_SIX, inst(2832, bubbleDownSelf({["timeline"] = { "added 1.15.5" }}, {	-- Nightmare Grove
		["lore"] = "Nightmare Grove can be found near the portals to the Emerald Dream.",
		["coords"] = {
			{ 51.2, 10.9, FERALAS },
			{ 63.3, 27.8, THE_HINTERLANDS },
			{ 45.4, 39.6, DUSKWOOD },
			{ 94.2, 35.7, ASHENVALE },
		},
		["isRaid"] = true,
		["lvl"] = 60,
		["groups"] = {
			n(DRAGONS_OF_NIGHTMARE, bubbleDown({ ["timeline"] = { "added 1.11.1", "removed 1.15.5" } }, {
				["description"] = "The original version of the nightmare dragon loot in Classic Era.",
				["isRaid"] = true,
				["groups"] = {
					n(QUESTS, {
						q(8446, {	-- Shrouded in Nightmare
							["provider"] = { "i", 20644 },
							["lvl"] = 60,
						}),
						q(8447, {	-- Waking Legends
							["qg"] = 11832,	-- Keeper Remulos
							["sourceQuest"] = 8446,	-- Shrouded in Nightmare
							["coord"] = { 36.18, 41.79, MOONGLADE },
							["lvl"] = 60,
							["groups"] = {
								i(20600),	-- Malfurion's Signet Ring
							},
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
						["modelScale"] = 6.0,
						["groups"] = {
							i(20599),	-- Polished Ironwood Crossbow
							i(20623),	-- Circlet of Restless Dreams
							i(20622),	-- Dragonheart Necklace
							i(20621),	-- Boots of the Endless Moor
							i(20624),	-- Ring of the Unliving
						},
					}),
					n(14888, {	-- Lethon
						["modelScale"] = 6.0,
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
						["modelScale"] = 6.0,
						["groups"] = {
							i(20577),	-- Nightmare Blade
							i(20633),	-- Unnatural Leather Spaulders
							i(20634),	-- Boots of Fright
							i(20631),	-- Mendicant's Slippers
							i(20632),	-- Mindtear Band
						},
					}),
					n(14887, {	-- Ysondre
						["modelScale"] = 6.0,
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
			})),
			n(QUESTS, {
				q(86679, {	-- Shrouded in Nightmare
					["provider"] = { "i", 235049 },	-- Nightmare Engulfed Object
					["maps"] = { MOONGLADE },
				}),
				q(86680, {	-- Waking Legends
					["qg"] = 11832,	-- Keeper Remulos
					["sourceQuest"] = 86679,	-- Shrouded in Nightmare
					["coord"] = { 36.2, 41.8, MOONGLADE },
					["groups"] = {
						i(234155),	-- Malfurion's Signet Ring
					},
				}),
			}),
			n(COMMON_BOSS_DROPS, {
				["crs"] = {
					234880,	-- Emeriss
					235180,	-- Lethon
					235197,	-- Taerar
					235232,	-- Ysondre
				},
				["groups"] = {
					i(235049),	-- Nightmare Engulfed Object
					i(234152),	-- Hammer of Bestial Fury
					i(234154),	-- Trance Stone
					i(234153),	-- Staff of Rampant Growth
					i(234151),	-- Green Dragonskin Cloak
					i(234148),	-- Dragonbone Wristguards
					i(234149),	-- Dragonspur Wraps
					i(234150),	-- Gloves of Delusional Power
					i(234147),	-- Ancient Corroded Leggings
					i(234146),	-- Acid Inscribed Greaves
					prof(SKINNING, {
						i(20381),	-- Dreamscale
					}),
				},
			}),
			n(234880, {	-- Emeriss
				-- Unconfirmed Drop:
				i(234159, {	-- Polished Ironwood Crossbow
					["description"] = "If you get this to drop, @crieve on Discord!",
				}),
				
				-- Confirmed Drops:
				i(234157),	-- Circlet of Restless Dreams
				i(234158),	-- Dragonheart Necklace
				i(234156),	-- Boots of the Endless Moor
				i(234160),	-- Ring of the Unliving
			}),
			n(235180, {	-- Lethon
				i(234164),	-- Deviate Growth Cap
				i(234162),	-- Black Bark Wristbands
				i(234165),	-- Gauntlets of the Shining Light
				i(234161),	-- Belt of the Dark Bog
				i(234163),	-- Dark Heart Pants
				i(234166),	-- Malignant Footguards
			}),
			n(235197, {	-- Taerar
				i(234170),	-- Nightmare Blade
				i(234171),	-- Unnatural Leather Spaulders
				i(234167),	-- Boots of Fright
				i(234168),	-- Mendicant's Slippers
				i(234169),	-- Mindtear Band
			}),
			n(235232, {	-- Ysondre
				i(234172),	-- Emerald Dragonfang
				i(234174),	-- Acid Inscribed Pauldrons
				i(234962),	-- Jade Inlaid Vestments
				i(234173),	-- Leggings of the Demented Mind
				i(234963),	-- Strangely Glyphed Legplates
				i(234175),	-- Hibernation Crystal
			}),
		},
	}))),
}));
-- #endif