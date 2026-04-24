EXPANSION_FEATURES = createHeader({
	readable = "Expansion Features",
	icon = [[~_.asset("Category_ExpansionFeatures")]],
	constant = "EXPANSION_FEATURES",
	text = {
		-- #if AFTER BFA
		-- CRIEVE NOTE: Not actually sure when this was added
		en = [[~GetCategoryInfo(15301)]],
		-- #else
		en = [[~EXPANSION_FILTER_TEXT]],
		-- #endif
	},
	description = {
		en = "This section is for systems introduced during an expansion that involve several zones.\nIf an expansion feature is exclusive to a single zone, then it can be found within that zone in ATT, otherwise for the sake of reducing database duplication and bloat, it can be found below.",
		-- TODO: de = "",
		-- TODO: es = "",
		-- TODO: mx = "",
		-- TODO: fr = "",
		-- TODO: it = "",
		-- TODO: ko = "",
		-- TODO: pt = "",
		-- TODO: ru = "",
		cn = "这个部分是为在一个扩展中引入的系统而设立的，这些系统涉及几个区域。\n如果一个扩展功能仅限于一个区域，那么它可以在ATT中的那个区域找到，否则为了减少数据库重复和膨胀，它可以在下面找到。",
		-- TODO: tw = "",
	},
});