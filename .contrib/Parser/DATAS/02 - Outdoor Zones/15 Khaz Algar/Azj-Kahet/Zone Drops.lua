---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(KHAZ_ALGAR, bubbleDown({ ["timeline"] = { ADDED_11_0_2 } }, {
	m(AZJ_KAHET, {
		n(ZONE_DROPS, {
			n(223116, {	-- Discordant Skittering
				--["coord"] = { 62.5, 80.7, AZJ_KAHET_LOWER },	-- in this area
				["g"] = {
					i(217390),	-- Coagulated Black Blood Clot (QS!)/(QI!)
				},
			}),
			n(218725, {	-- Arachnoid Scrounger
				--["coord"] = { 78.3, 79.0, AZJ_KAHET },	-- in this area
				["g"] = {
					i(217385),	-- Clump of Waxy Excretion (QS!)/(QI!) (require 80 level to start quest?)
				},
			}),
			n(216199, {	-- Siege Spinner (but could be also n: 220294 (Siege Skitterer)?)
				--["coord"] = { 61.1, 76.4, NERUBAR },
				["g"] = {
					i(226164),	-- Invitation: Grand Auction (QS!)/(QI!)
				},
			}),
			currency(3056),	-- Kej
			i(228228),	-- Strange Lump of Wax (QS!/QI!)// World drop or from objectID 419696 (Waxy Lump)

		}),
	}),
})));