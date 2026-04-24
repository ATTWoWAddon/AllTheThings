-- #if SEASON_OF_DISCOVERY
-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

root(ROOTS.Instances, expansion(EXPANSION.CLASSIC, {
	applyclassicphase(SOD_PHASE_FOUR, inst(2791, bubbleDownSelf({["timeline"] = { ADDED_1_15_3 }}, {	-- Storm Cliffs
		["lore"] = "The Storm Cliffs is a place in Azshara known for its weather and acts as the home away from home for the blue dragonflight.",
		["zone-text-areaID"] = 15532,	-- Storm Cliffs
		["coord"] = { 43.5, 83.6, AZSHARA },
		["isRaid"] = true,
		["lvl"] = 60,
		["groups"] = {
			n(6109, {	-- Azuregos
				i(18704, {	-- Mature Blue Dragon Sinew
					["classes"] = { HUNTER },
				}),
				i(228381),	-- Cold Snap
				i(228349),	-- Eskhandar's Left Claw
				i(228382),	-- Fang of the Mystics
				i(228347),	-- Typhoon
				i(228385),	-- Crystal Adorned Crown
				i(228389),	-- Drape of Benediction
				i(228383),	-- Puissant Cape
				i(228340),	-- Unmelting Ice Girdle
				i(228345),	-- Leggings of Arcane Supremacy
				i(228384),	-- Snowblind Shoes
				i(228316),	-- Pattern: Incandescent Mooncloth Vest (RECIPE!)
				i(228250),	-- Plans: Stronger-hold Gauntlets
			}),
			n(6109, {	-- Azuregos
				["timeline"] = { REMOVED_1_15_3 },
				["modelScale"] = 6.0,
				["groups"] = {
					i(19130, {	-- Cold Snap
						["timeline"] = { REMOVED_1_15_3 },
					}),
					i(18202, {	-- Eskhandar's Left Claw
						["timeline"] = { REMOVED_1_15_3 },
					}),
					i(17070, {	-- Fang of the Mystics
						["timeline"] = { REMOVED_1_15_3 },
					}),
					i(18542, {	-- Typhoon
						["timeline"] = { REMOVED_1_15_3 },
					}),
					i(19132, {	-- Crystal Adorned Crown
						["timeline"] = { REMOVED_1_15_3 },
					}),
					i(18208, {	-- Drape of Benediction
						["timeline"] = { REMOVED_1_15_3 },
					}),
					i(18541, {	-- Puissant Cape
						["timeline"] = { REMOVED_1_15_3 },
					}),
					i(18547, {	-- Unmelting Ice Girdle
						["timeline"] = { REMOVED_1_15_3 },
					}),
					i(18545, {	-- Leggings of Arcane Supremacy
						["timeline"] = { REMOVED_1_15_3 },
					}),
					i(19131, {	-- Snowblind Shoes
						["timeline"] = { REMOVED_1_15_3 },
					}),
				},
			}),
		},
	}))),
}));
-- #endif
