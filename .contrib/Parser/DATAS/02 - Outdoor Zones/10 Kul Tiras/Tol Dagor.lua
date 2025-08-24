---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(KUL_TIRAS, bubbleDown({ ["timeline"] = { ADDED_8_0_1 } }, {
	m(TOL_DAGOR, {
		["lore"] = "A prison located on an island east of Tiragarde Sound. Before the Ashvane Trading Company bought it, Tol Dagor used to be a real prison — now it is Priscilla Ashvane's own fortress, with scumbags on both sides of the bar.",
		["icon"] = 1380368,
		["groups"] = {
			n(FLIGHT_PATHS, {
				fp(2096, {	-- Tol Dagor, Tiragarde Sound [Alliance]
					["coord"] = { 37.8, 92.4, TOL_DAGOR },
					["races"] = ALLIANCE_ONLY,
				}),
				fp(2276, {	-- Tol Dagor, Tiragarde Sound [Horde]
					["coord"] = { 23.4, 48.2, TOL_DAGOR },
					["races"] = HORDE_ONLY,
				}),
			}),
			n(QUESTS, {
				q(47098, {	-- Out Like Flynn
					["sourceQuests"] = { 51341 },	-- Tol Dagor
					["provider"] = { "n", 121239 },	-- Flynn Fairwind
					["coord"] = { 47.3, 46.2, TOL_DAGOR },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(160326),	-- Glittering Gunpowder (QI!)
					},
				}),
			}),
		},
	}),
})));
