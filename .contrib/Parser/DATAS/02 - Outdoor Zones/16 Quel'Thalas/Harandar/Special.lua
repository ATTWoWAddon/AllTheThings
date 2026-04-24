---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(MAP.MIDNIGHT.QUELTHALAS, {
	m(MAP.MIDNIGHT.HARANDAR, {
		n(SPECIAL, {
			n(242358, {	-- Kuri
				["sourceQuests"] = { 90474 },	-- The Legend of Aln'sharan
				["coord"] = { 66.2, 25.5, MAP.MIDNIGHT.HARANDAR },
				["groups"] = {
					i(256424, {	-- Echo of Aln'sharan (MOUNT!)
						["cost"] = {{ "i", 255826, 500 }},	-- 500xMysterious Skyshards
						["groups"] = {
							ach(61706),	-- Herald of the Goddess
						},
					}),
				},
			}),
		}),
	}),
}));
