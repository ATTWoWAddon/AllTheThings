---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(MAP.MIDNIGHT.QUELTHALAS, {
	m(MAP.MIDNIGHT.SILVERMOON_CITY, {
		filter(BATTLE_PETS, {
			["groups"] = {
				pet(4912, {	-- Silvermoon Broom
					["coords"] = {
					},
				}),
			},
		}),
	}),
}));
