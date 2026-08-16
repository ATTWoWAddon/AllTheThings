---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(MAP.MIDNIGHT.QUELTHALAS, {
	m(MAP.MIDNIGHT.THE_COILED_ISLE, {
		m(MAP.MIDNIGHT.VAULTS_OF_ATALUTEK, {
			n(ZONE_DROPS, {
				i(280005, {	-- Dispelling Charm
					["cr"] = 263253,	-- Spirit of Jin'tal
					["coord"] = { 74.9, 72.6, 2636 },	-- Vault of Restless Bones
				}),
				i(275048, {	-- Decrepit Key
					["description"] = "Can be obtained from creatures with 'Corrosive' Aura after unlocking 'Slithering Secrets' trait at |cFFFFD700Altar of Corrosion|r.",
				}),
			}),
		}),
	}),
}));
