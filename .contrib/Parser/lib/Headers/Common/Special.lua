SPECIAL = createHeader({
	readable = "Special",
	constant = "SPECIAL",
	-- #if NOT ANYCLASSIC
	export = true,	-- This is referenced in topHeaders
	-- #endif
	-- #if AFTER LEGION
	icon = [[~_.asset("Interface_Special")]],
	-- #else
	icon = 135350,
	-- #endif
	text = {
		en = [[~SPECIAL]],
	},
});
