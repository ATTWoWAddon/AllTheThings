GARRISONS = createHeader({
	readable = "Garrisons",
	constant = "GARRISONS",
	minilist_ignore = true,
	-- #if NOT ANYCLASSIC
	export = true,	-- This is referenced in ignoredHeaders
	-- #endif
	icon = 1041860,
	text = {
		en = "Garrisons",
		de = "Garnisonen",
		es = "Ciudadelas",
		mx = "Fortalezas",
		fr = "Garnisons",
		it = "Guarnigioni",
		ko = "수비대",
		pt = "Guarnições",
		ru = "Гарнизоны",
		cn = "要塞",
		-- TODO: tw = "",
	},
});
