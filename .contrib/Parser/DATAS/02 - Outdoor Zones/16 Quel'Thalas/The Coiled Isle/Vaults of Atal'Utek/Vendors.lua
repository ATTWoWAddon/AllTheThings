---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(MAP.MIDNIGHT.QUELTHALAS, {
	m(MAP.MIDNIGHT.THE_COILED_ISLE, {
		m(MAP.MIDNIGHT.VAULTS_OF_ATALUTEK, {
			n(VENDORS, {
				n(262880, {	-- Er'inye <Venom Scholar>
					["coord"] = { 51.2, 62.8, MAP.MIDNIGHT.VAULTS_OF_ATALUTEK },
					["groups"] = {
						i(281223, {	-- Satchel of Corrosive Coins
							["cost"] = { { "i", 273000, 1 } },	-- 1x Corrosive Soul
						}),
					},
				}),
			}),
		}),
	}),
}));
