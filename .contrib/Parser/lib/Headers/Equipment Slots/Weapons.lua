WEAPONS = createHeader({
	readable = "Weapons",
	constant = "WEAPONS",
	-- #if NOT ANYCLASSIC
	export = true,	-- This is referenced in the pvp_weapons symlink
	-- #endif
	icon = [[~_.asset("Weapon_Type_Epic")]],
	text = {
		en = [[~AUCTION_CATEGORY_WEAPONS]],
	},
});
