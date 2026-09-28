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
			n(273760, {	-- Ensorcelled Cryptid
				["description"] = "Interact with to remove stacks of Barrier Integrity while dodging arcane swirls, after 100 removed stacks, interact with J'imothy to get the pet. Despawns and reappears elsewhere after a minute, multiple people can participate.",
				["coords"] = {
					{ 28.8, 46.7, MAP.MIDNIGHT.SILVERMOON_CITY },
					{ 51.3, 53.8, MAP.MIDNIGHT.SILVERMOON_CITY },
					{ 58.3, 41.9, MAP.MIDNIGHT.SILVERMOON_CITY },
				},
				["timeline"] = { ADDED_12_1_0 },
				["groups"] = {
					n(273762, {	--  J'imothy
						i(282417),	-- Stubby Whistle (PET!)
					}),
				},
			}),
		}),
	}),
}));
