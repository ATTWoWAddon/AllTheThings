---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(KHAZ_ALGAR, {
	m(AZJ_KAHET, {
		n(ZONE_DROPS, {
			i(217390, {	-- Coagulated Black Blood Clot (QS!)/(QI!)
				["coord"] = { 62.5, 80.7, AZJ_KAHET_LOWER },	-- in this area
				["cr"] = 223116, -- Discordant Skittering
			}),
			i(217385, {	-- Clump of Waxy Excretion (QS!)/(QI!)
				["coord"] = { 78.3, 79.0, AZJ_KAHET },	-- in this area
				["cr"] = 218725, -- Arachnoid Scrounger
			}),
			i(226164, {	-- Invitation: Grand Auction (QS!)/(QI!)
				["coord"] = { 61.1, 76.4, NERUBAR },	-- in this area
				["cr"] = 216199, -- Siege Spinner
			}),
			currency(KEJ),
		}),
	}),
}));
