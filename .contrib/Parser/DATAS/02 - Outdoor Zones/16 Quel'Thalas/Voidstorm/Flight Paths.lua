---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(MAP.MIDNIGHT.QUELTHALAS, {
	m(MAP.MIDNIGHT.VOIDSTORM, {
		n(FLIGHT_PATHS, {
			fp(3121, {	-- Howling Ridge, Voidstorm
				["sourceQuests"] = { 86510 },	-- Domus Penumbra
				["coord"] = { 51.1, 69.3, MAP.MIDNIGHT.VOIDSTORM },
				["cr"] = 235703,	-- Riftwalker Mallroil
			}),
			fp(3120, {	-- Locus Point, Voidstorm
				["coord"] = { 42.3, 73.7, MAP.MIDNIGHT.VOIDSTORM },
				["cr"] = 244636,	-- Vyana Vespersong
			}),
			fp(3123, {	-- Master's Perch, Voidstorm
				["sourceQuests"] = { 86510 },	-- Domus Penumbra
				["coord"] = { 37.8, 81.6, MAP.MIDNIGHT.SLAYERS_RISE_OUTDOOR },
				["cr"] = 245571,	-- Sador
			}),
			fp(3119, {	-- The Ingress, Voidstorm
				["coord"] = { 36.9, 59.0, MAP.MIDNIGHT.VOIDSTORM },
				["cr"] = 240683,	-- Severenar Stargazer
			}),
		}),
	}),
}));
