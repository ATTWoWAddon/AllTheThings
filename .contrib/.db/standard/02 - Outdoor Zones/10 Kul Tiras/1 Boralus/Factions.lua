---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(KUL_TIRAS, bubbleDown({ ["timeline"] = { ADDED_8_0_1 } }, {
	m(BORALUS, {
		n(FACTIONS, {
			faction(FACTION_7TH_LEGION, {	-- 7th Legion
				["races"] = ALLIANCE_ONLY,
			}),
			faction(FACTION_PROUDMOORE_ADMIRALTY, {	-- Proudmoore Admiralty
				["races"] = ALLIANCE_ONLY,
			}),
		}),
	}),
})));
