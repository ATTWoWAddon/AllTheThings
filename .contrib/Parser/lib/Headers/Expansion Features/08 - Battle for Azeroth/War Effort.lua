WAR_EFFORT = createHeader({
	readable = "War Effort",
	constant = "WAR_EFFORT",
	-- #if AFTER BFA
	export = true,
	-- #endif
	icon = 132349,
	text = {
		en = WOWAPI_GetCategoryName(15308),
	},
});