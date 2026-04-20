local ObjectDB = ObjectDB; for objectID,objectData in pairs({
	
		[200298] = {
			readable = "Heart of Arkkoroc",
			model = 192714,
			text = {
				en = "Heart of Arkkoroc",
				es = "Corazón de Arkkoroc",
				de = "Herz von Arkkoroc",
				fr = "Cœur d'Arkkoroc",
				it = "Cuore di Arkkoroc",
				pt = "Coração de Arkkoroc",
				ru = "Сердце Арккорока",
				ko = "아크코로크의 심장",
				cn = "亚考罗克的精华",
			},
		},
	
		[200301] = {
			readable = "Impaling Spine",
			model = 201076,
			text = {
				en = "Impaling Spine",
				es = "Espinazo empalador",
				de = "Pfählstachel",
				fr = "Epine de perforation",
				it = "Spina Impalante",
				pt = "Espinho Empalador",
				ru = "Пронзающий шип",
				ko = "꿰뚫는 돌기",
			},
		},
})
do ObjectDB[objectID] = objectData; end
