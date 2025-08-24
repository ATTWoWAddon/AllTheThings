---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(KHAZ_ALGAR, {
	m(ISLE_OF_DORN, {
		n(FLIGHT_PATHS, {
			fp(2931, {	-- Durgaz Cabin, Isle of Dorn
				["coord"] = { 67.5, 43.3, ISLE_OF_DORN },
				["cr"] = 217542,	-- Drelda
			}),
			fp(2929, {	-- Freywold Village, Isle of Dorn
				["coord"] = { 41.1, 73.0, ISLE_OF_DORN },
				["cr"] = 217439,	-- Iridi
			}),
			fp(2932, {	-- Rambleshire, Isle of Dorn
				["coord"] = { 59.2, 28.6, ISLE_OF_DORN },
				["cr"] = 217543,	-- Tordrin
			}),
			fp(2970, {	-- Tranquil Strand, Isle of Dorn
				["sourceQuests"] = { 83539 },	-- Feeling Blue
				["coord"] = { 29.7, 58.3, ISLE_OF_DORN },
				["cr"] = 227029,	-- Flying Carpet
				["timeline"] = { ADDED_11_0_7 },
			}),
		}),
	}),
}));
