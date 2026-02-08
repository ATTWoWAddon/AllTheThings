---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(DRAGON_ISLES, bubbleDown({ ["timeline"] = { ADDED_10_1_0 } }, {
	m(ZARALEK_CAVERN, {
		n(FLIGHT_PATHS, {
			fp(2865, {	-- Dragonscale Camp, Zaralek Cavern
				["coord"] = { 40.3, 67.8, ZARALEK_CAVERN },
				["cr"] = 200300,	-- Sharpbeak
			}),
			fp(2863, {	-- Loamm, Zaralek Cavern
				["coord"] = { 55.6, 54.8, ZARALEK_CAVERN },
				["cr"] = 202467,	-- Avogadro
			}),
			fp(2864, {	-- Obsidian Rest, Zaralek Cavern
				["coord"] = { 51.0, 26.2, ZARALEK_CAVERN },
				["cr"] = 200893,	-- Keskos
			}),
			-- These FlightPaths are not collectible. It's used as a transport between Dragon Isles and Zaralek Caverns.
			fp(2866, { ["collectible"] = false }),	-- Cascades Canyon, Ohn'ahran Plains
			fp(2877, { ["collectible"] = false }),	-- Lookout Breach, Azure Span
			fp(2876, { ["collectible"] = false }),	-- Lookout Breach, Zaralek Cavern
			fp(2874, { ["collectible"] = false }),	-- Old Loamm Road, Ohn'ahran Plains
			fp(2875, { ["collectible"] = false }),	-- Old Loamm Road, Zaralek Cavern
			fp(2867, { ["collectible"] = false }),	-- The Throughway, Zaralek Cavern
		}),
	}),
})));
