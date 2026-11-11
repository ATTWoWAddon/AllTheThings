--------------------------------------------
--     H O L I D A Y S  M O D U L E       --
--------------------------------------------

NOBLEGARDEN_HEADER = createHeader({
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
});

local function BrightlyColoredEgg(groups)
	local egg
	-- Classic uses either a raw item with an object provider, or pre-wotlk a direct object
	if true then
		egg = {
			objectID = 113768,	-- Brightly Colored Egg
			groups = groups,
		}
	end

	egg.description = "These eggs can be found spread out in all of the starting zones."
	egg.maps = {
		DUROTAR,
		MULGORE,
		TIRISFAL_GLADES,
		DUN_MOROGH,
		ELWYNN_FOREST,
		TELDRASSIL,
	}
	egg.timeline = { ADDED_3_1_0 }
	return egg
end


root(ROOTS.Holidays, applyevent(EVENTS.NOBLEGARDEN, n(NOBLEGARDEN_HEADER, {
	BrightlyColoredEgg({
		i(19028, {	-- Elegant Dress
			timeline = { ADDED_1_3_0 },
		}),
		i(6835, {	-- Black Tuxedo Pants
			timeline = { ADDED_1_3_0 },
		}),
		i(6833, {	-- White Tuxedo Shirt
			timeline = { ADDED_1_3_0 },
		}),
		i(7807, {	-- Candy Bar
			timeline = { ADDED_1_3_0 },
		}),
		i(7808, {	-- Chocolate Square
			timeline = { ADDED_1_3_0 },
		}),
		i(7806, {	-- Lollipop
			timeline = { ADDED_1_3_0 },
		}),
	}),
})));
