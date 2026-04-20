local ObjectDB = ObjectDB; for objectID,objectData in pairs({
	
		[9999908] = {
			readable = "|cFFFFFFFFStep 1:|r Gather Consumables.",
			icon = 237381,
			text = {
				en = "|cFFFFFFFFStep 1:|r Gather Consumables.",
				de = "|cFFFFFFFFSchritt 1:|r Gather Consumables.",
				fr = "|cFFFFFFFFÉtape 1:|r Rassemblez les consommables.",
				ru = "|cFFFFFFFFШаг 1:|r Соберите Расходники.",
				cn = "|cFFFFFFFF第1步:|r 收集消耗品",
			},
		},
	
		[9999909] = {
			readable = "|cFFFFFFFFStep 2:|r Caverns of Consumption",
			icon = 236854,
			text = {
				en = "|cFFFFFFFFStep 2:|r Caverns of Consumption",
				de = "|cFFFFFFFFSchritt 2:|r Caverns of Consumption",
				fr = "|cFFFFFFFFÉtape 2:|r Caverns of Consumption",
				ru = "|cFFFFFFFFШаг 2:|r Пещера Увядания",
				cn = "|cFFFFFFFF第2步:|r 吞噬洞穴",
			},
		},
	
		[9999910] = {
			readable = "|cFFFFFFFFStep 3:|r Fire Barrier",
			icon = 134748,
			text = {
				en = "|cFFFFFFFFStep 3:|r Fire Barrier",
				de = "|cFFFFFFFFSchritt 3:|r Fire Barrier",
				fr = "|cFFFFFFFFÉtape 3:|r Barrière de feu",
				ru = "|cFFFFFFFFШаг 3:|r Огненный Барьер",
				cn = "|cFFFFFFFF第3步:|r 火焰屏障",
			},
		},
	
		[9999911] = {
			readable = "|cFFFFFFFFStep 4:|r Prismatic Barrier",
			icon = 134753,
			text = {
				en = "|cFFFFFFFFStep 4:|r Prismatic Barrier",
				de = "|cFFFFFFFFSchritt 4:|r Prismatic Barrier",
				fr = "|cFFFFFFFFÉtape 4:|r Barrière prismatique",
				ru = "|cFFFFFFFFШаг 4:|r Барьер Скверны",
				cn = "|cFFFFFFFF第4步:|r 棱光屏障",
			},
		},
	
		[9999912] = {
			readable = "|cFFFFFFFFStep 5:|r Diligent Watcher",
			icon = 134863,
			text = {
				en = "|cFFFFFFFFStep 5:|r Diligent Watcher",
				es = "|cFFFFFFFFStep 5:|r Vigía diligente",
				de = "|cFFFFFFFFSchritt 5:|r Gewissenhafte Beobachterin",
				fr = "|cFFFFFFFFÉtape 5:|r Guetteuse consciencieuse",
				it = "|cFFFFFFFFStep 5:|r Guardiano Diligente",
				pt = "|cFFFFFFFFStep 5:|r Vigia Diligente",
				ru = "|cFFFFFFFFШаг 5:|r Верный долгу дозорный",
				ko = "|cFFFFFFFFStep 5:|r 성실한 감시자",
				cn = "|cFFFFFFFF第5步:|r 怒鳞防御者",
			},
		},
	
		[9999913] = {
			readable = "|cFFFFFFFFStep 6:|r Vine Barrier",
			icon = 237281,
			text = {
				en = "|cFFFFFFFFStep 6:|r Vine Barrier",
				de = "|cFFFFFFFFSchritt 6:|r Vine Barrier",
				fr = "|cFFFFFFFFÉtape 6:|r Barrière de vigne",
				ru = "|cFFFFFFFFШаг 6:|r Барьер Зарослей",
				cn = "|cFFFFFFFF第6步:|r 藤蔓屏障",
			},
		},
	
		[9999914] = {
			readable = "|cFFFFFFFFStep 7:|r Water Barrier",
			icon = 132844,
			text = {
				en = "|cFFFFFFFFStep 7:|r Water Barrier",
				de = "|cFFFFFFFFSchritt 7:|r Water Barrier",
				fr = "|cFFFFFFFFÉtape 7:|r Barrière d'eau",
				ru = "|cFFFFFFFFШаг 7:|r Водный Барьер",
				cn = "|cFFFFFFFF第7步:|r 水幕屏障",
			},
		},
	
		[9999915] = {
			readable = "|cFFFFFFFFStep 8:|r Stone Watcher",
			icon = 132790,
			text = {
				en = "|cFFFFFFFFStep 8:|r Stone Watcher",
				es = "|cFFFFFFFFStep 8:|r Vigía de piedra",
				de = "|cFFFFFFFFSchritt 8:|r Steinbehüter",
				fr = "|cFFFFFFFFÉtape 8:|r Guetteur de pierre",
				it = "|cFFFFFFFFStep 8:|r Guardia di Pietra",
				pt = "|cFFFFFFFFStep 8:|r Observador de Pedra",
				ru = "|cFFFFFFFFШаг 8:|r Каменный страж",
				ko = "|cFFFFFFFFStep 8:|r 바위 감시병",
				cn = "|cFFFFFFFF第8步:|r 岩石监视者",
			},
		},
	
		[9999916] = {
			readable = "|cFFFFFFFFStep 9:|r Ethereal Barrier",
			icon = 132798,
			text = {
				en = "|cFFFFFFFFStep 9:|r Ethereal Barrier",
				de = "|cFFFFFFFFSchritt 9:|r Ethereal Barrier",
				fr = "|cFFFFFFFFÉtape 9:|r Barrière éthérienne",
				ru = "|cFFFFFFFFШаг 9:|r Призрачный Барьер",
				cn = "|cFFFFFFFF第9步:|r 虚灵屏障",
			},
		},
	
		[9999917] = {
			readable = "|cFFFFFFFFStep 10:|r Strange Stone",
			icon = 252272,
			text = {
				en = "|cFFFFFFFFStep 10:|r Strange Stone",
				es = "|cFFFFFFFFStep 10:|r Piedra extraña",
				de = "|cFFFFFFFFSchritt 10:|r Merkwürdiger Stein",
				fr = "|cFFFFFFFFÉtape 10:|r Pierre étrange",
				it = "|cFFFFFFFFStep 10:|r Strana Pietra",
				pt = "|cFFFFFFFFStep 10:|r Pedra Estranha",
				ru = "|cFFFFFFFFШаг 10:|r Странный Камень",
				ko = "|cFFFFFFFFStep 10:|r 이상한 돌",
				cn = "|cFFFFFFFF第10步:|r 奇怪的石头",
			},
		},
	
		[9999918] = {
			readable = "|cFFFFFFFFStep 11:|r Metal Gate",
			icon = 134718,
			text = {
				en = "|cFFFFFFFFStep 11:|r Metal Gate",
				de = "|cFFFFFFFFSchritt 11:|r Metal Gate",
				fr = "|cFFFFFFFFÉtape 11:|r Porte en métal",
				ru = "|cFFFFFFFFШаг 11:|r Металлические Ворота",
				cn = "|cFFFFFFFF第11步:|r 金属门",
			},
		},
	
		[9999919] = {
			readable = "|cFFFFFFFFStep 12:|r Wisdom Cube",
			icon = 252270,
			text = {
				en = "|cFFFFFFFFStep 12:|r Wisdom Cube",
				es = "|cFFFFFFFFStep 12:|r Cubo de la Sabiduría",
				de = "|cFFFFFFFFSchritt 12:|r Würfel der Weisheit",
				fr = "|cFFFFFFFFÉtape 12:|r Cube de sagesse",
				it = "|cFFFFFFFFStep 12:|r Cubo della Saggezza",
				pt = "|cFFFFFFFFStep 12:|r Cubo da Sabedoria",
				ru = "|cFFFFFFFFШаг 12:|r Куб мудрости",
				ko = "|cFFFFFFFFStep 12:|r 지혜의 큐브",
				cn = "|cFFFFFFFF第12步:|r 智慧魔方",
			},
		},
	
		[9999920] = {
			readable = "|cFFFFFFFFStep 13:|r Tarnished Plaque",
			icon = 134937,
			text = {
				en = "|cFFFFFFFFStep 13:|r Tarnished Plaque",
				es = "|cFFFFFFFFStep 13:|r Placa deslustrada",
				de = "|cFFFFFFFFSchritt 13:|r Stumpfe Tafel",
				fr = "|cFFFFFFFFÉtape 13:|r Plaque ternie",
				it = "|cFFFFFFFFStep 13:|r Placca Annerita",
				pt = "|cFFFFFFFFStep 13:|r Placa Manchada",
				ru = "|cFFFFFFFFШаг 13:|r Потускневшая табличка",
				cn = "|cFFFFFFFF第13步:|r 生锈的铭牌",
			},
		},
	
		[9999921] = {
			readable = "Placement",
			text = {
				en = "Placement",
				ru = "Расположение",
				cn = "放置",
			},
		},
	
		[9999946] = {
			readable = "Summon Baa'l",
			icon = 631719,
			text = {
				en = "Summon Baa'l",
				fr = "Invoquer Baa'l",
				ru = "Призовите Бее'ла",
				cn = "召唤巴尔",
			},
		},
	
		[9999972] = {
			readable = "Treasure Chest",
			text = {
				en = "Treasure Chest",
			},
		},
	
		[9999973] = {
			readable = "Treasure Chest",
			icon = 1001980,
			text = {
				en = "Treasure Chest",
			},
		},
	
		[9999974] = {
			readable = "Treasure Chest",
			icon = 1001980,
			text = {
				en = "Treasure Chest",
			},
		},
	
		[9999978] = {
			readable = "Treasure Chest",
			text = {
				en = "Treasure Chest",
			},
		},
	
		[9999979] = {
			readable = "Treasure Chest",
			icon = 1001980,
			text = {
				en = "Treasure Chest",
			},
		},
	
		[9999980] = {
			readable = "Treasure Chest",
			icon = 1001980,
			text = {
				en = "Treasure Chest",
			},
		},
	
		[9999985] = {
			readable = "Treasure Chest",
			icon = 1001980,
			text = {
				en = "Treasure Chest",
			},
		},
	
		[9999986] = {
			readable = "Treasure Chest",
			icon = 1001980,
			text = {
				en = "Treasure Chest",
			},
		},
	
		[9999987] = {
			readable = "Treasure Chest",
			icon = 1001980,
			text = {
				en = "Treasure Chest",
			},
		},
	
		[9999988] = {
			readable = "Treasure Chest",
			icon = 1001980,
			text = {
				en = "Treasure Chest",
			},
		},
	
		[9999989] = {
			readable = "Treasure Chest",
			icon = 1001980,
			text = {
				en = "Treasure Chest",
			},
		},
	
		[9999990] = {
			readable = "Treasure Chest",
			icon = 1001980,
			text = {
				en = "Treasure Chest",
			},
		},
})
do ObjectDB[objectID] = objectData; end
