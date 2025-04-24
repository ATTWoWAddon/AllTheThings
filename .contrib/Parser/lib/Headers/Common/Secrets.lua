SECRETS = createHeader({
	readable = "Secrets",
	constant = "SECRETS",
	-- #if NOT ANYCLASSIC
	export = true,	-- These are referenced in GetDataCache, but not used in Classic.
	-- #endif
	icon = [[~_.asset("Category_Secrets")]],
	text = {
		en = "Secrets",
		es = "Secretos",
		de = "Rätsel",
		ru = "Секреты",
		cn = "解密",
	},
	description = {
		en = "Naughty secrets...",
		es = "Secretitos traviesos...",
		fr = "Vilains secrets...",
		ru = "Секретики...",
		cn = "淘气的解密……",
	},
});