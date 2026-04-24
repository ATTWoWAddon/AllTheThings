---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(MAP.MIDNIGHT.QUELTHALAS, {
	m(MAP.MIDNIGHT.HARANDAR, {
		n(FLIGHT_PATHS, {
			fp(3195, {	-- Har'alnor, Harandar
				["coord"] = { 31.7, 67.4, MAP.MIDNIGHT.HARANDAR },
				["cr"] = 254936,	-- Ka'mura
			}),
			fp(3192, {	-- Har'athir, Harandar
				["coord"] = { 69.4, 52.6, MAP.MIDNIGHT.HARANDAR },
				["cr"] = 248036,	-- Nae'thali
			}),
			fp(3194, {	-- Har'kual, Harandar
				["coord"] = { 64.6, 23.2, MAP.MIDNIGHT.HARANDAR },
				["cr"] = 254935,	-- Lo'miko
			}),
			fp(3196, {	-- Har'mara, Harandar
				["coord"] = { 35.5, 23.8, MAP.MIDNIGHT.HARANDAR },
				["cr"] = 247997,	-- Sa'neya
			}),
			fp(3193, {	-- The Den, Harandar
				["coord"] = { 54.1, 53.2, MAP.MIDNIGHT.HARANDAR },
				["cr"] = 255056,	-- Doecha
			}),
		}),
	}),
}));
