---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(KHAZ_ALGAR, bubbleDown({ ["timeline"] = { ADDED_11_0_7 } }, {
	m(SIREN_ISLE, {
		n(TREASURES, {
			--o(474822, {	-- Runed Storm Cache
			--	repeatable local treasure
			--}),
			o(463539, {	-- Pilfered Earthen Chest
				["coord"] = { 68.4, 94.4, SIREN_ISLE },
				["questID"] = 84527,
			}),
			o(499127, {	-- Runemarked Coffer
				-- TODO: The Forgotten Tomb + storm phase
				-- TODO: I don't make screenshot for this one, so I'm unsure if it something in loot or it is related to treasure chest)
				["coord"] = { 26.6, 23.9, 2375 },
				["questID"] = 85859,
			}),
			o(500407, {	-- Runed Storm Cache
				-- TODO: The Forgotten Tomb + storm phase
				-- TODO: I don't make screenshot for this one, so I'm unsure if it something in loot or it is related to treasure chest)
				["coord"] = { 28.5, 73.5, 2375 },
				["questID"] = 84843,
			}),
		}),
	}),
})));