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
		es = "Esta sección está destinada a sistemas introducidos durante una expansión que involucre varias zonas.\nSi una función de expansión es exclusiva de una sola zona, se puede encontrar dentro de esa zona en ATT; de lo contrario, para reducir la duplicación y el tamaño excesivo de la base de datos, se puede encontrar a continuación.",
		mx = "Esta sección está destinada a sistemas introducidos durante una expansión que involucre varias zonas.\nSi una función de expansión es exclusiva de una sola zona, se puede encontrar dentro de esa zona en ATT; de lo contrario, para reducir la duplicación y el tamaño excesivo de la base de datos, se puede encontrar a continuación.",
		-- TODO: fr = "",
		-- TODO: it = "",
		-- TODO: ko = "",
		-- TODO: pt = "",
		-- TODO: ru = "",
		cn = "这个部分是为在一个扩展中引入的系统而设立的，这些系统涉及几个区域。\n如果一个扩展功能仅限于一个区域，那么它可以在 ATT 中的那个区域找到，否则为了减少数据库重复和膨胀，它可以在下面找到。",
		tw = "本區段介紹於資料片期間推出、影響多個區域的系統。\n若某項資料片功能只適用於單一區域，就會收錄在 ATT 對應區域的資料中；其他功能則列於下方，以減少資料庫重複與膨脹。",
	},
});