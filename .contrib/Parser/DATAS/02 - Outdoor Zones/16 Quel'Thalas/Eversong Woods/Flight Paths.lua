---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(MAP.MIDNIGHT.QUELTHALAS, {
	m(MAP.MIDNIGHT.EVERSONG_WOODS, {
		n(FLIGHT_PATHS, {
			fp(3133, {	-- Fairbreeze Village, Eversong Woods
				["coord"] = { 44.7, 45.0, MAP.MIDNIGHT.EVERSONG_WOODS },
				["cr"] = 242913,	-- Vael'thas Dawnsoar
			}),
			fp(3190, {	-- Silverglade Refuge, Eversong Woods
				["coord"] = { 31.0, 90.1, MAP.MIDNIGHT.EVERSONG_WOODS },
				["cr"] = 244537,	-- Galendror Whitewing
				["races"] = ALLIANCE_ONLY,
			}),
			fp(3134, {	-- Tranquillien, Eversong Woods
				["coord"] = { 47.8, 67.1, MAP.MIDNIGHT.EVERSONG_WOODS },
				["cr"] = 238480,	-- Skymaster Sunwing
			}),
		}),
	}),
}));
