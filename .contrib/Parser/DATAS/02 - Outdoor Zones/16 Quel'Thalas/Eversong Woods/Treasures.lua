---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(MAP.MIDNIGHT.QUELTHALAS, {
	m(MAP.MIDNIGHT.EVERSONG_WOODS, {
		n(TREASURES, {
			o(613242, {	-- Antique Nobleman's Signet Ring
				["coord"] = { 52.3, 45.4, MAP.MIDNIGHT.EVERSONG_WOODS },
				["questID"] = 93455,
				["groups"] = {
					i(265814),	-- Noble's Signet Ring
				},
			}),
			o(555351, {	-- Burbling Paint Pot
				["coord"] = { 48.7, 75.4, MAP.MIDNIGHT.EVERSONG_WOODS },
				["questID"] = 91358,
				["groups"] = {
					i(246314),	-- Burbling Blob of Paint
				},
			}),
			o(613267, {	-- Farstrider's Lost Quiver (objectID could be wrong, it is from nearby)
				["coord"] = { 60.7, 67.3, MAP.MIDNIGHT.EVERSONG_WOODS },
				["questID"] = 93457,
				["groups"] = {
					--no loot table
				},
			}),
			o(613697, {	-- Gift of the Phoenix
				["coord"] = { 41.0, 19.5, MAP.MIDNIGHT.EVERSONG_WOODS },
				["questID"] = 93544,
				["groups"] = {
					o(613708, {	-- Sunstrider Vessel (Alex TODO: it could switch to 613729 on placement, idk, which actually fire questID but then use 613708 as just provider field?)
						["description"] = "Pick this Vessel up and catch embers 5 times than place it back where you pick it up",
						["questID"] = 93545,
					}),
					--no loot
				},
			}),
			o(617534, {	-- Gilded Arnillary Sphere
				["coord"] = { 44.6, 45.6, MAP.MIDNIGHT.EVERSONG_WOODS },
				["questID"] = 94740,
				["groups"] = {
					i(262453),	-- Heathlight Armillary (DECOR!)
				},
			}),
			--lore
			o(613850, {	-- Hawkstrider Husbandry: Unabridged Edition
				["coord"] = { 57.8, 50.9, MAP.MIDNIGHT.EVERSONG_WOODS },
				["questID"] = 93562,
			}),
			o(526903, {	-- Memorial Plaque
				["coord"] = { 48.0, 88.2, MAP.MIDNIGHT.EVERSONG_WOODS },
				["questID"] = 91841,
			}),
			o(613847, {	-- Mirveda's Notes
				["coord"] = { 50.5, 43.5, MAP.MIDNIGHT.EVERSONG_WOODS },
				["questID"] = 93564,
			}),
			o(507966, {	-- Profane Research
				["coord"] = { 36.0, 72.5, MAP.MIDNIGHT.EVERSONG_WOODS },
				["questID"] = 93565,
			}),
			o(613861, {	-- Shrine of Dath'Remar
				["coord"] = { 37.6, 13.8, MAP.MIDNIGHT.EVERSONG_WOODS },
				["questID"] = 93563,
			}),
			--Vista Point Flag (who from Blizzard ever remember about this system?)
			--I would be very surprised if they gonna make it live
			o(619650, {	-- Vista Point Flag
				["coord"] = { 50.3, 84.2, MAP.MIDNIGHT.EVERSONG_WOODS },
				["questID"] = 94540,
			}),
			o(619649, {	-- Vista Point Flag
				["coord"] = { 79.3, 60.8, MAP.MIDNIGHT.EVERSONG_WOODS },
				["questID"] = 94539,
			}),
			o(619621, {	-- Vista Point Flag
				["coord"] = { 20.2, 79.6, MAP.MIDNIGHT.EVERSONG_WOODS },
				["questID"] = 94536,
			}),
			o(619647, {	-- Vista Point Flag
				["coord"] = { 40.4, 10.1, MAP.MIDNIGHT.EVERSONG_WOODS },
				["questID"] = 94537,
			}),
		}),
	}),
}));
