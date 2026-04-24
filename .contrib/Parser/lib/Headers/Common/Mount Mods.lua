MOUNT_MODS = createHeader({
	readable = "Mount Mods",
	constant = "MOUNT_MODS",
	-- #if NOT ANYCLASSIC
	export = true,	-- NOTE: Currently referenced in Mount Mods (Dynamic)
	-- #endif
	icon = [[~_.asset("Category_MountMods")]],
	text = {
		en = "Mount Mods",
		-- TODO: de = "",
		es = "Modificadores de montura",
		mx = "Personalización de montura",
		-- TODO: fr = "",
		-- TODO: it = "",
		-- TODO: ko = "",
		-- TODO: pt = "",
		-- TODO: ru = "",
		cn = "坐骑定制",
		tw = "坐騎修飾",
	},
});
