---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(MAP.MIDNIGHT.QUELTHALAS, {
	m(MAP.MIDNIGHT.ISLE_OF_QUELDANAS, {
		filter(BATTLE_PETS, {
			i(251002, {	-- Nether Familiar (PET!)
				["crs"] = { 250571 },	-- Nether Familiar
				["coords"] = {
					{ 34.6, 15.5, MAP.MIDNIGHT.ISLE_OF_QUELDANAS },
					{ 42.5, 32.5, MAP.MIDNIGHT.ISLE_OF_QUELDANAS },
					{ 43.0, 21.9, MAP.MIDNIGHT.ISLE_OF_QUELDANAS },
					{ 49.5, 29.4, MAP.MIDNIGHT.ISLE_OF_QUELDANAS },
				},
			}),
			i(251003, {	-- Wrathful Wyrm (PET!)
				["crs"] = { 250573 },	-- Wrathful Wyrm
				["coords"] = {
					{ 42.7, 30.7, MAP.MIDNIGHT.ISLE_OF_QUELDANAS },
				},
			}),
		}),
	}),
}));
