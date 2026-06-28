---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(MAP.MIDNIGHT.QUELTHALAS, {
	m(MAP.MIDNIGHT.THE_COILED_ISLE, {
		filter(BATTLE_PETS, {
			i(270214, {	-- Poisoned Parasite (PET!)
				["crs"] = { 262222 },	-- Poisoned Parasite
				["coords"] = {
					{ 58.2, 38.6, MAP.MIDNIGHT.THE_COILED_ISLE },
				},
			}),
			i(270251, {	-- Sleek Snakebiter (PET!)
				["crs"] = { 262244 },	-- Sleek Snakebiter
				["coords"] = {
					{ 60.7, 77.9, MAP.MIDNIGHT.THE_COILED_ISLE },
				},
			}),
		}),
	}),
}));
