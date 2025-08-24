-------------------------------------------------------------------
--	  E X P A N S I O N   F E A T U R E S	M O D U L E	   --
-------------------------------------------------------------------
root(ROOTS.ExpansionFeatures, expansion(EXPANSION.TWW, bubbleDownSelf({ ["timeline"] = { ADDED_11_0_2 } }, {
	n(REWARDS, {
		-- Season 1 TWW
		currency(WEATHERED_HARBINGER_CREST, {
			["timeline"] = { ADDED_11_0_2, REMOVED_11_1_0 },
		}),
		currency(CARVED_HARBINGER_CREST, {
			["timeline"] = { ADDED_11_0_2, REMOVED_11_1_0 },
		}),
		currency(RUNED_HARBINGER_CREST, {
			["timeline"] = { ADDED_11_0_2, REMOVED_11_1_0 },
		}),
		currency(GILDED_HARBINGER_CREST, {
			["timeline"] = { ADDED_11_0_2, REMOVED_11_1_0 },
		}),
		i(211297, {	-- Fractured Spark of Omens
			["timeline"] = { ADDED_11_0_2, REMOVED_11_2_0}
		}),

		-- Season 2 TWW
		currency(WEATHERED_UNDERMINE_CREST, {
			["timeline"] = { ADDED_11_1_0, REMOVED_11_2_0 },
		}),
		currency(CARVED_UNDERMINE_CREST, {
			["timeline"] = { ADDED_11_1_0, REMOVED_11_2_0 },
		}),
		currency(RUNED_UNDERMINE_CREST, {
			["timeline"] = { ADDED_11_1_0_SEASONSTART, REMOVED_11_2_0 },
		}),
		currency(GILDED_UNDERMINE_CREST, {
			["timeline"] = { ADDED_11_1_0_SEASONSTART, REMOVED_11_2_0 },
		}),
		i(230905, {	-- Fractured Spark of Fortunes
			["timeline"] = { ADDED_11_1_0, REMOVED_11_2_0}
		}),

		-- Season 3 TWW
		currency(WEATHERED_ETHEREAL_CREST, {
			["timeline"] = { ADDED_11_2_0, REMOVED_12_0_0 },
		}),
		currency(CARVED_ETHEREAL_CREST, {
			["timeline"] = { ADDED_11_2_0, REMOVED_12_0_0 },
		}),
		currency(RUNED_ETHEREAL_CREST, {
			["timeline"] = { ADDED_11_2_0_SEASONSTART, REMOVED_12_0_0 },
		}),
		currency(GILDED_ETHEREAL_CREST, {
			["timeline"] = { ADDED_11_2_0_SEASONSTART, REMOVED_12_0_0 },
		}),
		i(231757, {	-- Fractured Spark of Starlight
			["timeline"] = { ADDED_11_2_0 },
		}),
	}),
})));
