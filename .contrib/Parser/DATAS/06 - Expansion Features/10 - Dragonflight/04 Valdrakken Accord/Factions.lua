-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------
root(ROOTS.ExpansionFeatures, expansion(EXPANSION.DF, bubbleDown({ ["timeline"] = { ADDED_10_0_2_LAUNCH } }, {
	n(VALDRAKKEN_ACCORD, {
		n(FACTIONS, {
			faction(FACTION_VALDRAKKEN_ACCORD, {
				ach(16530, {	-- Ally of the Flights
					["minReputation"] = { FACTION_VALDRAKKEN_ACCORD, 30 },	-- Valdrakken Accord Renown 30
					["timeline"] = { REMOVED_11_0_7 },
				}),
				ach(41182, {	-- Ally of the Flights
					["minReputation"] = { FACTION_VALDRAKKEN_ACCORD, 30 },	-- Valdrakken Accord Renown 30
					["timeline"] = { ADDED_11_0_7 },
				}),
				ach(16994, {	-- Friends in the Accord
					["minReputation"] = { FACTION_VALDRAKKEN_ACCORD, 15 },	-- Valdrakken Accord Renown 15
					["timeline"] = { ADDED_10_2_0, REMOVED_11_0_7 },
				}),
				ach(41171, {	-- Friends in the Accord
					["minReputation"] = { FACTION_VALDRAKKEN_ACCORD, 15 },	-- Valdrakken Accord Renown 15
					["timeline"] = { ADDED_11_0_7 },
				}),
			}),
		}),
	}),
})));