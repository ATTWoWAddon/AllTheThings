BONUS_OBJECTIVES = createHeader({
	readable = "Bonus Objectives",
	constant = "BONUS_OBJECTIVES",
	-- #if NOT ANYCLASSIC
	export = true,	-- This is referenced in topHeaders
	-- #endif
	icon = [[~_.asset("Interface_Bonus_objectives")]],
	text = {
		en = [[~TRACKER_HEADER_BONUS_OBJECTIVES]],
	},
});
