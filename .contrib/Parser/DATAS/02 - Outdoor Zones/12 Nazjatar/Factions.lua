---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(NAZJATAR, bubbleDownSelf({ ["timeline"] = { ADDED_8_2_0 } }, {
	n(FACTIONS, {
		faction(FACTION_THE_UNSHACKLED, {	-- The Unshackled
			["races"] = HORDE_ONLY,
		}),
		faction(FACTION_WAVEBLADE_ANKOAN, {	-- Waveblade Ankoan
			["races"] = ALLIANCE_ONLY,
		}),
		faction(2375, {	-- Hunter Akana
			["races"] = ALLIANCE_ONLY,
		}),
		faction(2376, {	-- Farseer Ori
			["races"] = ALLIANCE_ONLY,
		}),
		faction(2377, {	-- Bladesman Inowari
			["races"] = ALLIANCE_ONLY,
		}),
		faction(2388, {	-- Poen Gillbrack
			["races"] = HORDE_ONLY,
		}),
		faction(2389, {	-- Neri Sharpfin
			["races"] = HORDE_ONLY,
		}),
		faction(2390, {	-- Vim Brineheart
			["races"] = HORDE_ONLY,
		}),
	}),
})));
