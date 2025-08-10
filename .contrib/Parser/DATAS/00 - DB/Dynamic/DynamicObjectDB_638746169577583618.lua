local ObjectDB = ObjectDB; for objectID,objectData in pairs({
	[469857] = {
		readable = "Overflowing Dumpster",
		text = {
			en = "Overflowing Dumpster",
			de = "Überquellender Müllcontainer",
			es = "Contenedor rebosante",
			mx = "Contenedor de basura rebosante",
			fr = "Benne débordante",
			it = "Cassonetto Traboccante",
			pt = "Lixeira Transbordante",
			ru = "Переполненный мусорный бак",
			ko = "넘치는 쓰레기통",
			cn = "满溢的垃圾箱",
			tw = "滿出來的垃圾桶",
		},
	},
	[506498] = {
		readable = "Gilded Stash",
		model = 1315888,
		text = {
			en = "Gilded Stash",
			de = "Vergoldeter Schatz",
			es = "Alijo dorado",
			mx = "Alijo dorado",
			fr = "Réserve dorée",
			it = "Scorta Dorata",
			pt = "Baú Dourado",
			ru = "Позолоченный тайник",
			ko = "금빛 보관함",
			cn = "鎏金藏匿物",
			tw = "鍍金儲物箱",
		},
	},
})
do ObjectDB[objectID] = objectData; end
