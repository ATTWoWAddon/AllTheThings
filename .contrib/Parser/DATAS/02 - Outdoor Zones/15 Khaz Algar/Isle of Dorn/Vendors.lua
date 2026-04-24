---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(KHAZ_ALGAR, {
	m(ISLE_OF_DORN, {
		n(VENDORS, {
			n(226205, {	-- Cendvin <Meadery Requisitions>
				["coord"] = { 74.4, 45.2, ISLE_OF_DORN },
				["groups"] = {
					i(246707, {	-- Decorative Cinder Honeypot (DECOR!)
						["timeline"] = { ADDED_11_2_7 },
						["cost"] = { { "i", 225557, 75 } },	-- 100x Sizzling Cinderpollen
					}),
					i(228424),	-- Recipe: Cinder Nectar (RECIPE!)
					i(223153, {	-- Soaring Meaderbee (MOUNT!)
						["cost"] = { { "i", 225557, 900 } },	-- 900x Sizzling Cinderpollen
					}),
				},
			}),
			n(252901, {	-- Cinnabar <Freywold Furniture>
				["coord"] = { 42.0, 73.0, ISLE_OF_DORN },
				["timeline"] = { ADDED_11_2_7 },
				["groups"] = {
					i(253021, {	-- Freywold Bench (DECOR!)
						["cost"] = { { "c", RESONANCE_CRYSTALS, 400 } },
					}),
					i(253166, {	-- Freywold Fountain (DECOR!)
						["cost"] = { { "c", RESONANCE_CRYSTALS, 1100 } },
					}),
					i(253035, {	-- Freywold Seat (DECOR!)
						["cost"] = { { "c", RESONANCE_CRYSTALS, 300 } },
					}),
				},
			}),
		}),
	}),
}));
