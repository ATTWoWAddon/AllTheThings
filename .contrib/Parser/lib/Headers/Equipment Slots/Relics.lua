RELICS = createHeader({
	readable = "Relics",
	-- #if AFTER LEGION
	icon = 1109960,
	-- #else
	icon = 134916,
	-- #endif
	text = {
		-- #if AFTER LEGION
		en = WOWAPI_GetItemSubClassInfo(3,11),
		-- #else
		en = "Relics",
		-- TODO: de = "",
		es = "Reliquias",
		mx = "Reliquias",
		-- TODO: fr = "",
		-- TODO: it = "",
		-- TODO: ko = "",
		-- TODO: pt = "",
		-- TODO: ru = "",
		-- TODO: cn = "",
		-- TODO: tw = "",
		-- #endif
	},
});
