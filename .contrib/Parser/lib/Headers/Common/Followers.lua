FOLLOWERS = createHeader({
	readable = "Followers",
	constant = "FOLLOWERS",
	-- #if NOT ANYCLASSIC
	export = true,	-- This is referenced as a Dynamic Category.
	-- #endif
	icon = [[~_.asset("Category_Followers")]],
	text = {
		en = [[~GARRISON_FOLLOWERS]],
	},
});
