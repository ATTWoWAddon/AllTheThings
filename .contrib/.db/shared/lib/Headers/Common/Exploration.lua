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
		tw = "探索",
	},
});
--- Wraps exploration groups under the exploration header.
---@param g? ATTObject|ATTObjectArray # Fields or groups for the header.
explorationHeader = function(g)
	return n(EXPLORATION, g);
end
