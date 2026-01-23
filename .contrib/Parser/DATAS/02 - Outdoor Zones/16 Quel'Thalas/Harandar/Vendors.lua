---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(MAP.MIDNIGHT.QUELTHALAS, {
	m(MAP.MIDNIGHT.HARANDAR, {
		n(VENDORS, {
			n(251259, {	-- Mothkeeper Wew'tam
				["coord"] = { 49.3, 54.3, MAP.MIDNIGHT.HARANDAR },
				["groups"] = sharedData({
					["cost"] = { { "c", 3385, 10 } },	-- Luminous Dust
				}, {
					i(222988),	-- Elder Glowmite (MOUNT!)
					i(265943),	-- Firm Haranir Pillow (DECOR!)
					i(257159),	-- Groovewarden's Buckler (COSMETIC!)
					i(263283),	-- Groovewarden's Dagger (COSMETIC!)
					i(263285),	-- Groovewarden's Greatsword (COSMETIC!)
					i(257161),	-- Groovewarden's Halberd (COSMETIC!)
					i(257155),	-- Groovewarden's Kris (COSMETIC!)
					i(257158),	-- Groovewarden's Rapier (COSMETIC!)
					i(263284),	-- Groovewarden's Staff (COSMETIC!)
					i(265946),	-- Haranir Reclined Bed (DECOR!)
					i(263580),	-- Vivid Chloroceros (MOUNT!)
					i(265945),	-- Warm Haranir Blanket (DECOR!)
				}),
			}),
		}),
	}),
}));
