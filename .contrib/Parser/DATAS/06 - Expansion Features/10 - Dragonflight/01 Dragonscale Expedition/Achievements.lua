-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------
root(ROOTS.ExpansionFeatures, expansion(EXPANSION.DF, bubbleDown({ ["timeline"] = { ADDED_10_0_2_LAUNCH } }, {
	n(DRAGONSCALE_EXPEDITION, {
		n(ACHIEVEMENTS, bubbleDownSelf({ ["timeline"] = { ADDED_10_2_6 } }, {
			ach(19479, {	-- Wake Me Up
				-- Meta Achievement
				["sym"] = {{"meta_achievement",
					16570,	-- A Legendary Album
					16676,	-- Adventurer of The Waking Shores
					15890,	-- Dragonscale Expedition: The Highest Peaks
					16568,	-- Great Shots Galore!
					16588,	-- How Did These Get Here?
					16587,	-- Lead Climber
					16297,	-- Treasures of The Waking Shores
					16571,	-- Well Supplied
				}},
				["g"] = {
					i(198822),	-- Bestowed Ohuna Spotter (MOUNT!)
				},
			}),
		})),
	}),
})));