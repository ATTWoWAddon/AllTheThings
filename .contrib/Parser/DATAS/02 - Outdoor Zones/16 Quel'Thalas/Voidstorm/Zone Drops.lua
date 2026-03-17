---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(MAP.MIDNIGHT.QUELTHALAS, {
	m(MAP.MIDNIGHT.VOIDSTORM, {
		n(ZONE_DROPS, {
			i(241000, {	-- Cracked Holokey (QS!)
				["sourceQuests"] = { 86536 },	-- Reliable Enemies
				["crs"] = {
					236859,	-- Manaforge Netherdrifter
					236857,	-- Manaforge Siphoner
					237886,	-- Manaforge Warder
				},
			}),
			i(265801),	-- Savory Anomaly
			n(252453, {	-- Awakened Fragment
				i(248680),	-- Unstable Focusing Crystal
			}),
		}),
	}),
}));
