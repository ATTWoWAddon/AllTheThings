---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(MAP.MIDNIGHT.QUELTHALAS, {
	m(MAP.MIDNIGHT.THE_COILED_ISLE, {
		n(VENDORS, {
			n(270399, {	-- Firetender Zab'ni <Decor Specialist>
				["coord"] = { 58.6, 45.9, MAP.MIDNIGHT.THE_COILED_ISLE },
				["groups"] = {
					i(279508, {	-- "The Hunger Awakens" Mural (DECOR!)
						["cost"] = { { "c", VOIDLIGHT_MARL, 500 } },
					}),
					i(263873, {	-- Amani Forge (DECOR!)
						["cost"] = { { "c", VOIDLIGHT_MARL, 500 } },
					}),
					i(279452, {	-- Forgotten Amani Mural (DECOR!)
						["cost"] = { { "c", VOIDLIGHT_MARL, 500 } },
					}),
					i(279285, {	-- Lost Tortollan Scroll (DECOR!)
						["cost"] = { { "c", VOIDLIGHT_MARL, 150 } },
					}),
					i(271851, {	-- Oozing Vilescar Barricade (DECOR!)
						["cost"] = { { "c", VOIDLIGHT_MARL, 250 } },
					}),
					i(280218, {	-- Tortollan Scholar Satchel (DECOR!)
						["cost"] = { { "c", VOIDLIGHT_MARL, 150 } },
					}),
					i(279292, {	-- Zul'Aman Pine Tree (DECOR!)
						["cost"] = { { "c", VOIDLIGHT_MARL, 250 } },
					}),
				},
			}),
			n(256686, {	-- Mab'jul <Spectral Drinks Vendor>
				["coord"] = { 69.3, 52.2, MAP.MIDNIGHT.THE_COILED_ISLE },
				["groups"] = {
					i(266435, {	-- Ki'clak Snack
						["cost"] = { { "i", 267085, 10 } },	-- Swirling Ectoplasm
					}),
				},
			}),
		}),
	}),
}));
