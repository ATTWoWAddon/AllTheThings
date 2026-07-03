---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(MAP.MIDNIGHT.QUELTHALAS, {
	m(MAP.MIDNIGHT.THE_COILED_ISLE, {
		header(HEADERS.Faction, FACTION_CAPTAIN_TOKKA, {
			["icon"] = 2065576,
			["groups"] = {
				faction(FACTION_CAPTAIN_TOKKA),
				n(ACHIEVEMENTS, {
					ach(63629, {	-- Angler of The Coiled Isle
						i(278336),	-- Sinful Pearl (CI!)
					}),
					ach(63631),	-- Captain Tokka's Crew
					ach(63635, {	-- Tokka's Terrible Trials
						title(789),	-- Bloodsworn Mariner <Name>
					}),
					ach(63632),	-- Toxic Trophies
					ach(63634, {	-- Where Did You Get That?
						["cost"] = { { "i", 244790, 1 } },	-- The Coiled Huntress [Fishing Tool]
					}),
				}),
			},
		}),
	}),
}));
