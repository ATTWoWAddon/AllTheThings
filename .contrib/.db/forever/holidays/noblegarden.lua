--------------------------------------------
--     H O L I D A Y S  M O D U L E       --
--------------------------------------------

root(ROOTS.Holidays, applyevent(EVENTS.NOBLEGARDEN, n(createHeader({
	readable = "Noblegarden",
	constant = "NOBLEGARDEN_HEADER",
	icon = [[~_.asset("Holiday_noblegarden")]],
	eventID = EVENTS.NOBLEGARDEN,
	eventSchedule = {
		1,	-- Recurring
		4, 17, 0, 0,	-- 04/17 at 12:00 AM
		4, 18, 0, 0		-- 04/18 at 12:00 AM
	},
	text = {
		en = "Noblegarden",
		de = "Nobelgartenfest",
		es = "Jardín noble",
		mx = "Jardín noble",
		fr = "Le Jardin des nobles",
		it = "Festa di Nobiluova",
		ko = "귀족의 정원",
		pt = "Jardinova",
		ru = "Сад чудес",
		cn = "复活节",
		tw = "貴族花園",
	},
}), {
	["timeline"] = { TIMELINE.ADDED_1_60_1 },
	["groups"] = {
		o_repeated({	-- Brightly Colored Egg
			["description"] = "These eggs can be found spread out in all of the starting zones.",
			["maps"] = {
				MAP.DUROTAR,
				MAP.MULGORE,
				MAP.TIRISFAL_GLADES,
				MAP.DUN_MOROGH,
				MAP.ELWYNN_FOREST,
				MAP.TELDRASSIL,
			},
			["groups"] = {
				-- Objects
				o(113768),
				o(113769),
				o(113770),
				o(113771),

				-- Items
				i(19028),	-- Elegant Dress
				i(6835),	-- Black Tuxedo Pants
				i(6833),	-- White Tuxedo Shirt
				i(7807),	-- Candy Bar
				i(7808),	-- Chocolate Square
				i(7806),	-- Lollipop
			},
		}),
	},
})));
