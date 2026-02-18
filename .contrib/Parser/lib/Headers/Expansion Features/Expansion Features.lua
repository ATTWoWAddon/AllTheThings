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
		-- TODO: cn = "",
		-- TODO: tw = "",
	},
});