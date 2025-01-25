-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------
root(ROOTS.ExpansionFeatures, expansion(EXPANSION.DF, bubbleDown({ ["timeline"] = { ADDED_10_2_0 } }, {
	n(DREAM_WARDENS, {
		n(FACTIONS, {
			faction(FACTION_DREAM_WARDENS, {
				ach(19230, {	-- Friends in the Dream
					["minReputation"] = { FACTION_DREAM_WARDENS, 15 },	-- Dream Wardens Renown 15
					["timeline"] = { REMOVED_11_0_7 },
				}),
				ach(41176, {	-- Friends in the Dream
					["minReputation"] = { FACTION_DREAM_WARDENS, 15 },	-- Dream Wardens Renown 15
					["timeline"] = { ADDED_11_0_7 },
				}),
				ach(19235, {	-- Warden of the Dream
					["minReputation"] = { FACTION_DREAM_WARDENS, 20 },	-- Dream Wardens Renown 20
					["timeline"] = { REMOVED_11_0_7 },
				}),
				ach(41177, {	-- Warden of the Dream
					["minReputation"] = { FACTION_DREAM_WARDENS, 20 },	-- Dream Wardens Renown 20
					["timeline"] = { ADDED_11_0_7 },
				}),
			}),
		}),
	}),
})));