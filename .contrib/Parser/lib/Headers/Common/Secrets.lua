SECRETS = createHeader({
	readable = "Secrets",
	constant = "SECRETS",
	-- #if NOT ANYCLASSIC
	export = true,	-- These are referenced in GetDataCache, but not used in Classic.
	-- #endif
	icon = [[~_.asset("Category_Secrets")]],
	text = {
		en = "Secrets",
		de = "Rätsel",
		es = "Secretos",
		mx = "Secretos",
		-- TODO: fr = "",
		-- TODO: it = "",
		-- TODO: ko = "",
		-- TODO: pt = "",
		ru = "Секреты",
		cn = "解密",
		-- TODO: tw = "",
	},
	description = {
		en = "Naughty secrets...",
		-- TODO: de = "",
		es = "Secretitos traviesos...",
		mx = "Secretitos traviesos...",
		fr = "Vilains secrets...",
		-- TODO: it = "",
		-- TODO: ko = "",
		-- TODO: pt = "",
		ru = "Секретики...",
		cn = "淘气的解密……",
		-- TODO: tw = "",
	},
});
