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
		-- TODO: tw = "",
	},
});
explorationHeader = function(g)
	return n(EXPLORATION, g);
end
