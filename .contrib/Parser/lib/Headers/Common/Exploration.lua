EXPLORATION = createHeader({
	readable = "Exploration",
	constant = "EXPLORATION",
	export = true,
	icon = [[~_.asset("Category_Exploration")]],
	text = {
		en = "Exploration",
		es = "Exploración",
		de = "Erkundung",
		mx = "Exploración",
		fr = "Exploration",
		ru = "Исследование",
		cn = "探索",
	},
});
explorationHeader = function(g)
	return n(EXPLORATION, g);
end
