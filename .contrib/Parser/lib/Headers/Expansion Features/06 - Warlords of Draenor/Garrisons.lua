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
		es = "Guarniciones",
		de = "Garnisonen",
		fr = "Garnisons",
		it = "Guarnigioni",
		pt = "Guarnições",
		ru = "Гарнизоны",
		ko = "수비대",
		cn = "要塞",
	},
});