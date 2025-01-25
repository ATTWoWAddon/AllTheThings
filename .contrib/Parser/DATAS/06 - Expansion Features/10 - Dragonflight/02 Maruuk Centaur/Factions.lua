-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------
root(ROOTS.ExpansionFeatures, expansion(EXPANSION.DF, bubbleDown({ ["timeline"] = { ADDED_10_0_2_LAUNCH } }, {
	n(MARUUK_CENTAUR, {
		n(FACTIONS, {
			faction(FACTION_MARUUK_CENTAUR, {
				ach(16528, {	-- Joining the Khansguard
					["minReputation"] = { FACTION_MARUUK_CENTAUR, 25 },	-- Maruuk Centaur Renown 25
					["timeline"] = { REMOVED_11_0_7 },
				}),
				ach(41180, {	-- Joining the Khansguard
					["minReputation"] = { FACTION_MARUUK_CENTAUR, 25 },	-- Maruuk Centaur Renown 25
					["timeline"] = { ADDED_11_0_7 },
				}),
				ach(17064, {	-- Friends in the Plains
					["minReputation"] = { FACTION_MARUUK_CENTAUR, 15 },	-- Maruuk Centaur Renown 15
					["timeline"] = { ADDED_10_2_0, REMOVED_11_0_7 },
				}),
				ach(41170, {	-- Friends in the Plains
					["minReputation"] = { FACTION_MARUUK_CENTAUR, 15 },	-- Maruuk Centaur Renown 15
					["timeline"] = { ADDED_11_0_7 },
				}),
			}),
		}),
	}),
})));