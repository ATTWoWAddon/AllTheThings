EXPLORATION = createHeader({
	readable = "Exploration",
	constant = "EXPLORATION",
	export = true,
	icon = [[~_.asset("Category_Exploration")]],
	text = {
		en = "Exploration",
		de = "Erkundung",
		es = "Exploración",
		mx = "Exploración",
		fr = "Exploration",
		-- TODO: it = "",
		-- TODO: ko = "",
		-- TODO: pt = "",
		ru = "Исследование",
		cn = "探索",
		-- tw = "探索",
	},
});
--- Wraps exploration content in the exploration header.
---@param g? ATTObject|ATTObjectArray # Optional header fields or child groups.
---@return ATTObject|nil # Exploration header, or nil if its ID is unavailable.
---@return ATTObject|nil ... additional # Additional unpacked values from the legacy nil-header-ID path.
explorationHeader = function(g)
	return n(EXPLORATION, g);
end
