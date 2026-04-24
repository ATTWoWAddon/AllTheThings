---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(MAP.MIDNIGHT.QUELTHALAS, {
	n(ZONE_DROPS, {
		i(258138),	-- Potent Healing Potion
		prof(FISHING, {
			i(267395, {	-- Technique: Homely Wall Shelves (RECIPE!)
				["maps"] = {
					MAP.MIDNIGHT.EVERSONG_WOODS,
					MAP.MIDNIGHT.ZULAMAN,
					MAP.MIDNIGHT.HARANDAR,
					MAP.MIDNIGHT.SILVERMOON_CITY,
				}
			}),
		}),
	}),
}));
