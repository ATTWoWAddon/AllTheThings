---------------------------------------------------
--          Z O N E S       M O D U L E          --
---------------------------------------------------

root(ROOTS.Zones, m(EASTERN_KINGDOMS, {
	m(1186, {	-- Blackrock Depths: Shadowforge City
		["lore"] = "Known for their fiery tempers and fierce determination, Dark Iron dwarves have a turbulent history with the other clans. A failed coup in Ironforge ignited the War of the Three Hammers, and many of the Dark Iron once fought in the service of Ragnaros the Firelord. Though one faction of the dwarves is pledged to Queen-Regent Moira Thaurissan, others refuse to stand alongside their kin. The Alliance seeks a united Dark Iron clan to harness the power of azerite and aid their struggle against the Horde",
		["icon"] = 1786406,
		["timeline"] = { ADDED_8_0_1 },
		["races"] = { DARKIRON },
		["isRaid"] = true,
		["groups"] = {
			n(VENDORS, {
				n(144129, {	-- Plugger Spazzring
					["coord"] = { 49.9, 32.5, 1186 },
					["groups"] = {
						i(245291, {	-- Replica Dark Iron Mole Machine (DECOR!)
							["cost"] = 25000000,	-- 2500g
							["timeline"] = { ADDED_11_2_7 },
						}),
					},
				}),
			}),
		},
	}),
}))
