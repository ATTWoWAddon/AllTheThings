---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(MAP.MIDNIGHT.QUELTHALAS, {
	m(MAP.MIDNIGHT.VOIDSTORM, {
		filter(BATTLE_PETS, {
			i(250148, {	-- Blistercreepling (PET!)
				["crs"] = { 249819 },	-- Blistercreepling
				["coords"] = {
					{ 31.1, 44.2, MAP.MIDNIGHT.VOIDSTORM },
				},
			}),
			i(238793, {	-- Devouring Runt (PET!)
				["crs"] = { 240014 },	-- Devouring Runt
				["coords"] = {
					{ 39.5, 38.2, MAP.MIDNIGHT.VOIDSTORM },
					{ 41.0, 38.5, MAP.MIDNIGHT.VOIDSTORM },
				},
			}),
			i(251005, {	-- Riftblade Familiar (PET!)
				["crs"] = { 250680 },	-- Riftblade Familiar
				["coords"] = {
					{ 64.8, 74.2, MAP.MIDNIGHT.VOIDSTORM },
				},
			}),
			i(239101, {	-- Voidcrawler (PET!)
				["crs"] = { 241439 },	-- Voidcrawler
				["coords"] = {
					{ 28.3, 52.9, MAP.MIDNIGHT.VOIDSTORM },
					{ 30.5, 66.2, MAP.MIDNIGHT.VOIDSTORM },
				},
			}),
		}),
	}),
}));
