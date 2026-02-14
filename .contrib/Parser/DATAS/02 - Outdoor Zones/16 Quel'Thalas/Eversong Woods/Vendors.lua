---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(MAP.MIDNIGHT.QUELTHALAS, {
	m(MAP.MIDNIGHT.EVERSONG_WOODS, {
		n(VENDORS, {
			n(259864, {	-- Sathren Azuredawn <Decor Specialist>
				["coord"] = { 43.2, 47.5, MAP.MIDNIGHT.EVERSONG_WOODS },
				["groups"] = sharedData({
					["cost"] = { { "c", VOIDLIGHT_MARL, 750 } },
				}, {
					i(254773),	-- "Eversong Langern" Painting
					i(253488),	-- Diamond Honor Stone
					i(251911),	-- Eversong Dessert Platter (DECOR!)
					i(251909),	-- Eversong Feast Platter
					i(243106),	-- Gemmed Eversong Lantern
					i(263211),	-- Gilded Eversong Cup
					i(251912),	-- Goldenmist Grapes
					i(246458),	-- Grand Aethercharged Crystal
					i(244783, {	-- Majestic Lightwood Table
						["cost"] = { { "c", VOIDLIGHT_MARL, 2500 } },
					}),
					i(245992),	-- Ornate Silvermoon Candelabra
					i(264660),	-- Ren'dorei Spired Tent
					i(263231, {	-- Silvermoon Curio Shelves
						["cost"] = { { "c", VOIDLIGHT_MARL, 2500 } },
					}),
					i(257367),	-- Silvermoon Energy Focus
					i(245282),	-- Silvermoon Library Bookcase
					i(244538),	-- Silvermoon Sundial
					i(253485),	-- Sin'dorei Honor Stone
					i(264248),	-- Sin'dorei Storage Jar
					i(251914),	-- Sumptuous Berry Pie
					i(262610),	-- Swirling Ritual Pedestal
					-- Two more "locked" items with no ID or name with a cost of 2500
					--i(XXXXXX, {	-- XX
					--	["cost"] = { { "c", VOIDLIGHT_MARL, 2500 } },
					--}),
					--i(XXXXXX, {	-- XX
					--	["cost"] = { { "c", VOIDLIGHT_MARL, 2500 } },
					--}),
				}),
			}),
		}),
	}),
}));
