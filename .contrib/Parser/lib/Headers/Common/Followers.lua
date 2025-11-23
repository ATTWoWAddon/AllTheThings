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

n_TrainingFollowers = function(t)
	return n(FOLLOWERS, bubbleDown({
		-- ["collectible"] = false,	-- no real reason to explicitly make these uncollectible since they're unlearnable anyway
		["u"] = UNLEARNABLE,	-- Temporary troops
	},t))
end
