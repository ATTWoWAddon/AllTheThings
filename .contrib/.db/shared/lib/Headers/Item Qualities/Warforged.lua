WARFORGED = createHeader({
	readable = "Warforged",
	icon = 450907,
	text = {
		en = "Warforged",
		de = "Kriegsgeschmiedet",
		es = "Forjado por la guerra",
		mx = "Forjas de la guerra",
		fr = "De guerre",
		it = "Guerraforgiato",
		ko = "전쟁벼림 상급",
		pt = "Forjado para a Guerra",
		ru = "Предмет закален в бою",
		cn = "战火",
		tw = "戰鑄",
	},
});

--- Wraps groups after propagating the Warforged bonus ID.
---@param t ATTObject|ATTObjectArray # Fields or groups to mark.
HEADER_WARFORGED = function(t)
	return n(WARFORGED, bubbleDown({bonusID = 4746 }, t))
end
