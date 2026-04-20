local ObjectDB = ObjectDB; for objectID,objectData in pairs({
	
		[50935] = {
			readable = "Sack of Corn",
			model = 190015,
			text = {
				en = "Sack of Corn",
				es = "Saco de maíz",
				de = "Sack Korn",
				fr = "Sac de maïs",
				pt = "Saco de Milho",
				ru = "Мешок кукурузы",
				ko = "옥수수 부대",
				cn = "一袋玉米",
			},
		},
	
		[50936] = {
			readable = "Sack of Barley",
			model = 197608,
			text = {
				en = "Sack of Barley",
				es = "Saco de cebada",
				de = "Sack Gerste",
				fr = "Sac d'orge",
				pt = "Saco de Cevada",
				ru = "Мешок ячменя",
				ko = "보리 부대",
				cn = "一袋大麦",
			},
		},
	
		[50937] = {
			readable = "Sack of Rye",
			model = 190015,
			text = {
				en = "Sack of Rye",
				es = "Saco de centeno",
				de = "Sack Roggen",
				fr = "Sac de seigle",
				pt = "Saco de Centeio",
				ru = "Мешок ржи",
				ko = "호밀 부대",
				cn = "一袋黑麦",
			},
		},
	
		[50961] = {
			readable = "Malem Chest",
			model = 200961,
			text = {
				en = "Malem Chest",
				es = "Cofre de Malem",
				de = "Malems Truhe",
				fr = "Coffre de Malem",
				pt = "Baú de Malem",
				ru = "Сундук Малема",
				ko = "말렘의 궤짝",
				cn = "玛雷姆的箱子",
			},
		},
	
		[50982] = {
			readable = "The Charred Oak",
			model = 189260,
			text = {
				en = "The Charred Oak",
				es = "El Roble Carbonizado",
				de = "Die verbrannte Eiche",
				fr = "Le chêne carbonisé",
				pt = "O Carvalho Calcinado",
				ru = "Опаленный дуб",
				ko = "참나무 숯",
				cn = "烧焦的橡木",
			},
		},
	
		[51708] = {
			readable = "Eliza's Grave Dirt",
			model = 201030,
			text = {
				en = "Eliza's Grave Dirt",
				es = "Tierra de la tumba de Eliza",
				de = "Elizas Graberde",
				fr = "Boue du tombeau d'Eliza",
				pt = "Terra da Cova de Eliza",
				ru = "Земля с могилы Элизы",
				ko = "엘리자의 무덤",
				cn = "伊莉莎的坟墓",
			},
		},
	
		[58369] = {
			readable = "Stolen Iron Chest",
			icon = 133233,
			model = 196976,
			text = {
				en = "Stolen Iron Chest",
				es = "Cofre de hierro robado",
				de = "Gestohlene Eisentruhe",
				fr = "Coffre en fer dérobé",
				it = "Cassa di Ferro Rubata",
				pt = "Baú de Ferro Roubado",
				ru = "Краденый железный сундук",
				ko = "훔친 철제 궤짝",
				cn = "被偷走的铁箱",
			},
		},
	
		[58595] = {
			readable = "Burning Blade Stash",
			model = 196976,
			text = {
				en = "Burning Blade Stash",
				es = "Alijo del Filo Ardiente",
				de = "Geheimlager der Brennenden Klinge",
				fr = "Planque de la Lame ardente",
				pt = "Tesouro da Lâmina Ardente",
				ru = "Тайник клана Пылающего Клинка",
				ko = "불타는 칼날단 은신처",
				cn = "火刃营地",
			},
		},
})
do ObjectDB[objectID] = objectData; end
