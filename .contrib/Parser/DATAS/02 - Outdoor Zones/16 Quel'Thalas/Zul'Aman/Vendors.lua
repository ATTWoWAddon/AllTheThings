---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(MAP.MIDNIGHT.QUELTHALAS, {
	m(MAP.MIDNIGHT.ZULAMAN, {
		n(VENDORS, {
			n(254944, {	-- Tajaka Sawtusk <Decor Vendor>
				["coord"] = { 46.0, 66.1, MAP.MIDNIGHT.ZULAMAN },
				["groups"] = sharedData({
					["cost"] = { { "c", VOIDLIGHT_MARL, 750 } },
				}, {
					i(256925),	-- Amani Spearhunter's Spit (DECOR!)
					i(264255),	-- Amani Trophy Frame (DECOR!)
					i(264334),	-- Amani War Drum (DECOR!)
					i(256928),	-- Banner of the Amani Tribe (DECOR!)
					i(264335, {	-- Colossal Amani Stone Visage (DECOR!)
						["cost"] = { { "c", VOIDLIGHT_MARL, 2500 } },
					}),
					i(264481),	-- Earthhide Amani Tapestry (DECOR!)
					i(264480),	-- Greenvine Amani Tapestry (DECOR!)
					i(253469),	-- Ritual-Cursed Sarcophagus (DECOR!)
					i(264479),	-- Skyweave Amani Tapestry (DECOR!)
					i(255648, {	-- Zul'Aman Ancestral Fountain (DECOR!)
						["cost"] = { { "c", VOIDLIGHT_MARL, 2500 } },
					}),
					i(264257),	-- Zul'Aman Armament Rest (DECOR!)
					i(264715),	-- Zul'Aman Flame Cradle (DECOR!)
				}),
			}),
		}),
	}),
}));
