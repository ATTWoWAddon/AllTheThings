WEEKLY_HOLIDAYS = createHeader({
	readable = "Weekly Holidays",
	constant = "WEEKLY_HOLIDAYS",
	-- #if NOT ANYCLASSIC
	export = true,	-- This is referenced in topHeaders
	-- #endif
	-- #if AFTER 9.0.1
	icon = 3753381,	-- Item_bastion_paragonchest_03
	-- #else
	icon = [[~_.asset("Category_Holidays")]],
	-- #endif
	text = {
		en = [[~CALENDAR_FILTER_WEEKLY_HOLIDAYS]],
	},
});
