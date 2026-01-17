-----------------------------------------------------
--     W O R L D   E V E N T S   M O D U L E       --
-----------------------------------------------------
root(ROOTS.WorldEvents, applyevent(EVENTS.REMIX_LEGION, n(REMIX_LEGION, {
	n(RAIDS, {
		n(ACHIEVEMENTS, {
			ach(42321, {	-- Legion Remix Raids
				-- Meta Achievement
				["sym"] = {{"meta_achievement",
					60875,	-- Antorus, the Burning Throne
					60859,	-- The Emerald Nightmare
					60865,	-- The Nighthold
					60870,	-- Tomb of Sargeras
					60860,	-- Trial of Valor
				}},
				["groups"] = {
					i(250406, {	-- Corruption Pit (DECOR!)
						["timeline"] = { ADDED_11_2_7 },
					}),
				},
			}),
			ach(61075, {	-- Heroic Legion Remix Raider
				-- Meta Achievement
				["sym"] = {{"meta_achievement",
					42664,	-- Heroic: Antorus the Burning Throne
					42531,	-- Heroic: Emerald Nightmare
					42543,	-- Heroic: The Nighthold
					42661,	-- Heroic: Tomb of Sargeras
					42639,	-- Heroic: Trial of Valor
				}},
			}),
			ach(61079, {	-- Heroic Legion Remix Raids
				-- Meta Achievement
				["sym"] = {{"meta_achievement",
					42664,	-- Heroic: Antorus the Burning Throne
					42531,	-- Heroic: Emerald Nightmare
					42543,	-- Heroic: The Nighthold
					42661,	-- Heroic: Tomb of Sargeras
					42639,	-- Heroic: Trial of Valor
				}},
				["groups"] = {
					title(659),	-- <Name> of the Infinite Chaos
				},
			}),
			ach(61078, {	-- Mythic Legion Remix Raids
				-- Meta Achievement
				["sym"] = {{"meta_achievement",
					42583,	-- Mythic: Antorus the Burning Throne
					42651,	-- Mythic: Emerald Nightmare
					42544,	-- Mythic: The Nighthold
					42576,	-- Mythic: Tomb of Sargeras
					42636,	-- Mythic: Trial of Valor
				}},
				["groups"] = { iensemble(257106) },	-- Ensemble: Sargerei Commander's Lightbound Regalia
			}),
		}),
	}),
})));
