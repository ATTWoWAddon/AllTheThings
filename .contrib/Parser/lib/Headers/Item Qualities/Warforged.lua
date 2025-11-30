WARFORGED = createHeader({
	readable = "Warforged",
	icon = 450907,
	text = {
		en = "Warforged",
		-- TODO: de = "",
		es = "Forjado por la guerra",
		mx = "Forjas de la guerra",
		-- TODO: fr = "",
		-- TODO: it = "",
		-- TODO: ko = "",
		-- TODO: pt = "",
		-- TODO: ru = "",
		cn = "战火",
		-- TODO: tw = "",
	},
});

HEADER_WARFORGED = function(t)
	return n(WARFORGED, bubbleDown({["bonusID"] = 4746 }, t))
end
