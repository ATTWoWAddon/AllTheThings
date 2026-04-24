---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(MAP.MIDNIGHT.QUELTHALAS, {
	m(MAP.MIDNIGHT.SILVERMOON_CITY, {
		filter(BATTLE_PETS, {
			i(258660, {	-- Silvermoon Broom (PET!)
				["crs"] = { 254885 },	-- Silvermoon Broom
				["coords"] = {	-- Do not separate currently added coords. These are per spotted pet that wanders between these. If you find a new one, just add below.
					-- Falconwing Square, swipes the floor between these 4 points around the structure
					{ 28.7, 75.6, MAP.MIDNIGHT.SILVERMOON_CITY },
					{ 29.0, 81.4, MAP.MIDNIGHT.SILVERMOON_CITY },
					{ 31.8, 81.2, MAP.MIDNIGHT.SILVERMOON_CITY },
					{ 32.4, 75.4, MAP.MIDNIGHT.SILVERMOON_CITY },
					--
				},
			}),
		}),
	}),
}));
