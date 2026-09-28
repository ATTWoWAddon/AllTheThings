---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(MAP.MIDNIGHT.QUELTHALAS, {
	m(MAP.MIDNIGHT.EVERSONG_WOODS, {
		filter(BATTLE_PETS, {
			i(193068, {	-- Amber Treeflitter (PET!)
				["crs"] = { 241500 },	-- Amber Treeflitter
				["coords"] = {
					{ 42.6, 38.7, MAP.MIDNIGHT.EVERSONG_WOODS },
				},
			}),
			i(251001, {	-- Vibrant Manaling (PET!)
				["crs"] = { 250572 },	-- Vibrant Manaling
				["coords"] = {
					{ 40.3, 36.7, MAP.MIDNIGHT.EVERSONG_WOODS },
					{ 43.1, 80.6, MAP.MIDNIGHT.EVERSONG_WOODS },
					{ 50.9, 47.7, MAP.MIDNIGHT.EVERSONG_WOODS },
					{ 53.0, 54.2, MAP.MIDNIGHT.EVERSONG_WOODS },
				},
			}),
			i(250138, {	-- Violet Chick (PET!)
				["crs"] = { 249817 },	-- Violet Chick
				["coords"] = {
					{ 45.3, 71.8, MAP.MIDNIGHT.EVERSONG_WOODS },
					{ 52.0, 37.4, MAP.MIDNIGHT.EVERSONG_WOODS },
				},
			}),
		}),
	}),
}));
