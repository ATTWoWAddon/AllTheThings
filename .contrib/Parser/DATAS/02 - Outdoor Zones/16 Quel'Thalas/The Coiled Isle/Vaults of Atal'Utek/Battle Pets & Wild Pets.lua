---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(MAP.MIDNIGHT.QUELTHALAS, {
	m(MAP.MIDNIGHT.THE_COILED_ISLE, {
		m(MAP.MIDNIGHT.VAULTS_OF_ATALUTEK, {
			filter(BATTLE_PETS, {
				i(270254, {	-- Caustic Writhling (PET!)
					["crs"] = { 262247 },	-- Caustic Writhling
					["coords"] = {
						{ 38.1, 30.7, MAP.MIDNIGHT.VAULTS_OF_ATALUTEK },
					},
				}),
			}),
		}),
	}),
}));
