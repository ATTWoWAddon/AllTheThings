---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, {
	m(BROKEN_ISLES, {
		m(HIGHMOUNTAIN, {
			n(FACTIONS, {
				faction(FACTION_HIGHMOUNTAIN_TRIBE),	-- Highmountain Tribe
				faction(FACTION_TALONS_VENGENCE, {	-- Talon's Vengence
					["timeline"] = { ADDED_7_1_0 },
				}),
			}),
		}),
	}),
});
