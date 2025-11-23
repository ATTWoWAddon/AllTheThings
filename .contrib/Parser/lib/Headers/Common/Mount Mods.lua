MOUNT_MODS = createHeader({
	readable = "Mount Mods",
	constant = "MOUNT_MODS",
	-- #if NOT ANYCLASSIC
	export = true,	-- NOTE: Currently referenced in Mount Mods (Dynamic)
	-- #endif
	icon = [[~_.asset("Category_MountMods")]],
	text = {
		en = "Mount Mods",
		es = "Modificadores de montura",
		-- de = "",
		-- fr = "",
		-- it = "",
		mx = "Personalización de montura",
		-- pt = "",
		-- ru = "",
		-- ko = "",
		cn = "坐骑定制",
		tw = "坐騎修飾",
	},
});
