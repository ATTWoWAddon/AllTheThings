-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------
root(ROOTS.ExpansionFeatures, expansion(EXPANSION.DF, bubbleDown({ ["timeline"] = { ADDED_10_0_2_LAUNCH } }, {
	n(ISKAARA_TUSKARR, {
		faction(FACTION_ISKAARA_TUSKARR),
		n(ACHIEVEMENTS, bubbleDownSelf({ ["timeline"] = { ADDED_10_2_6 } }, {
			ach(19482, {	-- Army of the Fed
				-- Meta Achievement
				["sym"] = {{"meta_achievement",
					16678,	-- Adventurer of The Azure Span
					16444,	-- Leftovers' Revenge
					16580,	-- Lend a Helping Span
					16317,	-- Secret Fishing Spots
					16443,	-- Soupervisor
					16553,	-- Taking From Nature
					16300,	-- Treasures of The Azure Span
					16563,	-- We're Going to Need a Bigger Harpoon
				}},
				["g"] = {
					i(192788),	-- Bestowed Trawling Mammoth (MOUNT!)
				},
			}),
			ach(16944, {	-- Friend of the Family
				["minReputation"] = { FACTION_ISKAARA_TUSKARR, 15 },	-- Iskaara Tuskarr Renown 15
				["timeline"] = { ADDED_10_2_0, REMOVED_11_0_7 },
			}),
			ach(41173, {	-- Friend of the Family
				["minReputation"] = { FACTION_ISKAARA_TUSKARR, 15 },	-- Iskaara Tuskarr Renown 15
				["timeline"] = { ADDED_11_0_7 },
			}),
			ach(16529, {	-- Joining the Community
				["minReputation"] = { FACTION_ISKAARA_TUSKARR, 30 },	-- Iskaara Tuskarr Renown 30
				["timeline"] = { REMOVED_11_0_7 },
			}),
			ach(41181, {	-- Joining the Community
				["minReputation"] = { FACTION_ISKAARA_TUSKARR, 30 },	-- Iskaara Tuskarr Renown 30
				["timeline"] = { ADDED_11_0_7 },
			}),
		})),
	}),
})));