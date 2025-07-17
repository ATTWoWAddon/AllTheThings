-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------
root(ROOTS.ExpansionFeatures, expansion(EXPANSION.DF, bubbleDown({ ["timeline"] = { ADDED_10_0_2_LAUNCH } }, {
	n(MARUUK_CENTAUR, {
		faction(FACTION_MARUUK_CENTAUR),
		n(ACHIEVEMENTS, bubbleDownSelf({ ["timeline"] = { ADDED_10_2_6 } }, {
			ach(19481, {	-- Centaur of Attention
				-- Meta Achievement
				["sym"] = {{"meta_achievement",
					16677,	-- Adventurer of the Ohn'ahran Plains
					16540,	-- Hunt Master
					16541,	-- Longhunter
					16543,	-- Tetrachromancer
					16545,	-- The Best at What I Do
					16542,	-- The Disgruntled Hunter
					16299,	-- Treasures of the Ohn'ahran Plains
					16424,	-- Who's a Good Bakar?
				}},
				["g"] = {
					i(192792),	-- Bestowed Thunderspine Packleader (MOUNT!)
				},
			}),
			ach(17064, {	-- Friends in the Plains
				["minReputation"] = { FACTION_MARUUK_CENTAUR, 15 },	-- Maruuk Centaur Renown 15
				["timeline"] = { ADDED_10_2_0, REMOVED_11_0_7 },
			}),
			ach(41170, {	-- Friends in the Plains
				["minReputation"] = { FACTION_MARUUK_CENTAUR, 15 },	-- Maruuk Centaur Renown 15
				["timeline"] = { ADDED_11_0_7 },
			}),
			ach(16528, {	-- Joining the Khansguard
				["minReputation"] = { FACTION_MARUUK_CENTAUR, 25 },	-- Maruuk Centaur Renown 25
				["timeline"] = { REMOVED_11_0_7 },
			}),
			ach(41180, {	-- Joining the Khansguard
				["minReputation"] = { FACTION_MARUUK_CENTAUR, 25 },	-- Maruuk Centaur Renown 25
				["timeline"] = { ADDED_11_0_7 },
			}),
		})),
	}),
})));