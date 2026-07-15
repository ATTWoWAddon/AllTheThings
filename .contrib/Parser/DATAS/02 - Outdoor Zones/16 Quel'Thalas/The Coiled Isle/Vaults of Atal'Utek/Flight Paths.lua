---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(MAP.MIDNIGHT.QUELTHALAS, {
	m(MAP.MIDNIGHT.THE_COILED_ISLE, {
		m(MAP.MIDNIGHT.VAULTS_OF_ATALUTEK, {
			n(FLIGHT_PATHS, {
				fp(3288, {	-- Amani Foothold, Vaults of Atal'Utek
					["coord"] = { 44.4, 62.2, MAP.MIDNIGHT.VAULTS_OF_ATALUTEK },
					["cr"] = 270762,	-- Eagletender Mal'Tiki
				}),
				-- Exo Note: Following are not the traditional Flight Paths.
				-- You talk to the NPC and select "Fly me to the Amani Foothold, Northern Amani Bulwark, or Eastern Amani Outpost
				fp(3285, {	-- Amani Foothold
					["coord"] = { 49.9, 61.9, MAP.MIDNIGHT.VAULTS_OF_ATALUTEK },
					["cr"] = 272197,	-- Amani Windcaller
					["collectible"] = false,
				}),
				fp(3286, {	-- Eastern Amani Outpost
					["coord"] = { 54.3, 39.3, MAP.MIDNIGHT.VAULTS_OF_ATALUTEK },
					["cr"] = 272197,	-- Amani Windcaller
					["collectible"] = false,
				}),
			}),
		}),
	}),
}));
