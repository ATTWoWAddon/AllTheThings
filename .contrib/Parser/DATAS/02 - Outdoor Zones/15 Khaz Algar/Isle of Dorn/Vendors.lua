---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(KHAZ_ALGAR, {
	m(ISLE_OF_DORN, {
		n(VENDORS, {
			n(226205, {	-- Cendvin <Meadery Requisitions>
				["coord"] = { 74.4, 45.2, ISLE_OF_DORN },
				["groups"] = {
					i(228424, {	-- Recipe: Cinder Nectar (RECIPE!)
						["cost"] = 237500,	-- 23g, 75s
					}),
					i(223153, {	-- Soaring Meaderbee (MOUNT!)
						["cost"] = {{"i", 225557, 900}},	-- 900x Sizzling Cinderpollen
					}),
				},
			}),
		}),
	}),
}));
