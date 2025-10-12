---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(MIDNIGHT, {
	m(EVERSONG_WOODS_MID, {
		n(TREASURES, {
			o(555351, {	-- Burbling Paint Pot
				["coord"] = { 48.7, 75.4, EVERSONG_WOODS_MID },
				["questID"] = 91358,
				["groups"] = {
					i(246314),	-- Burbling Blob of Paint
				},
			}),
			o(613267, {	-- Farstrider's Lost Quiver (objectID could be wrong, it is from nearby)
				["coord"] = { 60.7, 67.3, EVERSONG_WOODS_MID },
				["questID"] = 93457,
				["groups"] = {
					--no loot table
				},
			}),
		}),
	}),
}));
