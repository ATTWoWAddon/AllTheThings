WARFORGED = createHeader({
	readable = "Warforged",
	icon = 450907,
	text = {
		en = "Warforged",
		es = "Forjado por la guerra",
		mx = "Forjas de la guerra",
	},
});

HEADER_WARFORGED = function(t)
	return n(WARFORGED, bubbleDown({["bonusID"] = 4746 }, t))
end
