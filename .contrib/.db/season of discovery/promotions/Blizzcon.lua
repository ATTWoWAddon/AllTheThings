-----------------------------------------------------
--        P R O M O T I O N S   M O D U L E        --
-----------------------------------------------------

local BLIZZCON = createHeader({
	readable = "BlizzCon",
	icon = [[~_.asset("Promotion_Blizzcon")]],
	eventID = 1181,
	eventSchedule = {
		0,	--
		2026, 09, 12,	-- 12/09/2026
		2026, 09, 13,	-- 13/09/2026
	},
	text = {
		en = "BlizzCon",
		ko = "블리즈컨",
		-- TODO: ru = "",
		cn = "暴雪嘉年华",
		tw = "暴雪嘉年華",
	},
});

root(ROOTS.Promotions, n(BLIZZCON, bubbleDown({ u = REMOVED_FROM_GAME }, {
	i(20371, {	-- Murky (PET!)
		timeline = { ADDED_1_11_1 },
	}),
})));
