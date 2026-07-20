---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(MAP.MIDNIGHT.QUELTHALAS, {
	m(MAP.MIDNIGHT.THE_COILED_ISLE, {
		filter(BATTLE_PETS, {
			i(270248, {	-- Autumn Snapling (PET!)
				["crs"] = { 262248 },	-- Autumn Snapling
				["coords"] = {
					{ 67.9, 81.5, MAP.MIDNIGHT.THE_COILED_ISLE },
				},
			}),
			i(270253, {	-- Jaundiced Slitherer (PET!)
				["crs"] = { 262246 },	-- Jaundiced Slitherer
				["coords"] = {
					{ 49.9, 55.8, MAP.MIDNIGHT.THE_COILED_ISLE },
					{ 53.8, 34.1, MAP.MIDNIGHT.THE_COILED_ISLE },
				},
			}),
			i(270252, {	-- Nightfur Kapara (PET!)
				["crs"] = { 262245 },	-- Nightfur Kapara
				["coords"] = {
					{ 62.0, 81.9, MAP.MIDNIGHT.THE_COILED_ISLE },	-- Walks around this general area
				},
			}),
			i(270214, {	-- Poisoned Parasite (PET!)
				["crs"] = { 262222 },	-- Poisoned Parasite
				["coords"] = {
					{ 58.2, 38.6, MAP.MIDNIGHT.THE_COILED_ISLE },
					{ 67.9, 42.1, MAP.MIDNIGHT.THE_COILED_ISLE },
				},
			}),
			i(270250, {	-- Steady Croakfrog (PET!)
				["crs"] = { 262243 },	-- Steady Croakfrog
				["coords"] = {
					{ 66.1, 56.1, MAP.MIDNIGHT.THE_COILED_ISLE },
					{ 67.0, 58.5, MAP.MIDNIGHT.THE_COILED_ISLE },
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
