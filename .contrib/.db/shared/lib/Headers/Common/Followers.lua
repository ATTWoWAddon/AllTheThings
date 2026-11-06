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

--- Wraps follower content and marks it unlearnable.
---@param t ATTObject|ATTObjectArray # Follower object fields or child groups.
---@return ATTObject|nil # Follower header, or nil if its ID is unavailable.
---@return ATTObject|nil ... # additional # Additional unpacked values from the legacy nil-header-ID path.
n_TrainingFollowers = function(t)
	return n(FOLLOWERS, bubbleDown({
		-- collectible = false,	-- no real reason to explicitly make these uncollectible since they're unlearnable anyway
		u = UNLEARNABLE,	-- Temporary troops
	},t))
end
