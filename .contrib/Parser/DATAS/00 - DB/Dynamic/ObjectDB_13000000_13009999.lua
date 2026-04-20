local ObjectDB = ObjectDB; for objectID,objectData in pairs({
	
		[13000000] = {
			readable = "|cFFFFFFFFStep 1:|r Purchase Talisman of True Treasure Tracking",
			icon = 133299,
			text = {
				en = "|cFFFFFFFFStep 1:|r Purchase Talisman of True Treasure Tracking",
				es = "|cFFFFFFFFStep 1:|r Purchase Dije de buscador de tesoros verdadero",
				de = "|cFFFFFFFFSchritt 1:|r Purchase Talisman der wahren Schatzjagd",
				fr = "|cFFFFFFFFÉtape 1:|r Acheter un Talisman Trouveur de Trésors Tangibles",
				it = "|cFFFFFFFFStep 1:|r Purchase Talismano del Rintracciamento del Vero Tesoro",
				pt = "|cFFFFFFFFStep 1:|r Purchase Talismã de Rastreamento de Tesouros",
				ru = "|cFFFFFFFFШаг 1:|r Купите Талисман поиска Истинных Сокровищ",
				ko = "|cFFFFFFFFStep 1:|r Purchase 진정한 보물 추적의 부적",
				cn = "|cFFFFFFFF第1步:|r 购买正牌寻宝护符",
			},
		},
	
		[13000001] = {
			readable = "|cFFFFFFFFStep 2:|r Equip Talisman",
			icon = 133299,
			text = {
				en = "|cFFFFFFFFStep 2:|r Equip Talisman",
				de = "|cFFFFFFFFSchritt 2:|r Equip Talisman",
				fr = "|cFFFFFFFFÉtape 2:|r Équiper le Talisman Trouveur de Trésors Tangibles",
				ru = "|cFFFFFFFFШаг 2:|r Наденьте Талисман",
				cn = "|cFFFFFFFF第2步:|r 装备正牌寻宝护符",
			},
		},
	
		[13000002] = {
			readable = "|cFFFFFFFFItem 1:|r Scintillating Murloc Skin Lotion",
			icon = 603530,
			text = {
				en = "|cFFFFFFFFItem 1:|r Scintillating Murloc Skin Lotion",
				ru = "|cFFFFFFFFПредмет 1:|r Искрящийся мурлочий лосьон для кожи",
			},
		},
	
		[13000003] = {
			readable = "Glittergill Glitter",
			icon = 1387618,
			text = {
				en = "Glittergill Glitter",
				es = "Brillos Agallabrillante",
				de = "Glitzerkiemenglitter",
				fr = "Paillettes de branchies-irisées",
				pt = "Purpurina Brilhaguelra",
				ru = "Чешуйка сверкающего окуня",
				cn = "光鳞亮粉",
			},
		},
	
		[13000004] = {
			readable = "|cFFFFFFFFStep 1:|r Seashell",
			icon = 1498832,
			text = {
				en = "|cFFFFFFFFStep 1:|r Seashell",
				es = "|cFFFFFFFFStep 1:|r Concha",
				de = "|cFFFFFFFFSchritt 1:|r Muschel",
				fr = "|cFFFFFFFFÉtape 1:|r Coquillage",
				pt = "|cFFFFFFFFStep 1:|r Concha",
				ru = "|cFFFFFFFFШаг 1:|r Морская ракушка",
				cn = "|cFFFFFFFF第1步:|r 贝壳",
			},
		},
	
		[13000005] = {
			readable = "|cFFFFFFFFStep 2:|r Cavity-Free Great Shark Tooth",
			icon = 1518092,
			text = {
				en = "|cFFFFFFFFStep 2:|r Cavity-Free Great Shark Tooth",
				es = "|cFFFFFFFFStep 2:|r Diente de gran tiburón sin caries",
				de = "|cFFFFFFFFSchritt 2:|r Gesunder Großhaizahn",
				fr = "|cFFFFFFFFÉtape 2:|r Dent de grand requin non cariée",
				pt = "|cFFFFFFFFStep 2:|r Dente de Grande Tubarão sem Cáries",
				ru = "|cFFFFFFFFШаг 2:|r Здоровый зуб большой акулы",
				cn = "|cFFFFFFFF第2步:|r 没有洞的大鲨鱼之牙",
			},
		},
	
		[13000006] = {
			readable = "|cFFFFFFFFStep 3:|r Razoreel Larva",
			icon = 970810,
			text = {
				en = "|cFFFFFFFFStep 3:|r Razoreel Larva",
				es = "|cFFFFFFFFStep 3:|r Larva de hojaanguila",
				de = "|cFFFFFFFFSchritt 3:|r Rasieraallarve",
				fr = "|cFFFFFFFFÉtape 3:|r Larve d’anguille-scie",
				pt = "|cFFFFFFFFStep 3:|r Larva de Enguia-gume",
				ru = "|cFFFFFFFFШаг 3:|r Малек бритвенного угря",
				cn = "|cFFFFFFFF第3步:|r 剃刀鳗幼体",
			},
		},
	
		[13000007] = {
			readable = "|cFFFFFFFFStep 4:|r Well-Fed Doctor Fish",
			icon = 970818,
			text = {
				en = "|cFFFFFFFFStep 4:|r Well-Fed Doctor Fish",
				es = "|cFFFFFFFFStep 4:|r Pez doctor bien alimentado",
				de = "|cFFFFFFFFSchritt 4:|r Wohlgenährter Knabberfisch",
				fr = "|cFFFFFFFFÉtape 4:|r Poisson-docteur repu",
				pt = "|cFFFFFFFFStep 4:|r Peixe-médico Bem Alimentado",
				ru = "|cFFFFFFFFШаг 4:|r Откормленная рыба-доктор",
				cn = "|cFFFFFFFF第4步:|r 进食充分的医生鱼",
			},
		},
	
		[13000008] = {
			readable = "|cFFFFFFFFStep 5:|r Freshly Molted Crab Skin",
			icon = 132186,
			text = {
				en = "|cFFFFFFFFStep 5:|r Freshly Molted Crab Skin",
				es = "|cFFFFFFFFStep 5:|r Piel de cangrejo mudada recientemente",
				de = "|cFFFFFFFFSchritt 5:|r Frisch abgestreifter Krabbenpanzer",
				fr = "|cFFFFFFFFÉtape 5:|r Carapace de crabe fraîchement muée",
				pt = "|cFFFFFFFFStep 5:|r Pele de Caranguejo Recém-trocada",
				ru = "|cFFFFFFFFШаг 5:|r Недавно сброшенный панцирь краба",
				cn = "|cFFFFFFFF第5步:|r 刚刚蜕下的螃蟹皮",
			},
		},
	
		[13000009] = {
			readable = "|cFFFFFFFFStep 6:|r Glittergill Glitter",
			icon = 1387618,
			text = {
				en = "|cFFFFFFFFStep 6:|r Glittergill Glitter",
				es = "|cFFFFFFFFStep 6:|r Brillos Agallabrillante",
				de = "|cFFFFFFFFSchritt 6:|r Glitzerkiemenglitter",
				fr = "|cFFFFFFFFÉtape 6:|r Paillettes de branchies-irisées",
				pt = "|cFFFFFFFFStep 6:|r Purpurina Brilhaguelra",
				ru = "|cFFFFFFFFШаг 6:|r Чешуйка сверкающего окуня",
				cn = "|cFFFFFFFF第6步:|r 光鳞亮粉",
			},
		},
	
		[13000010] = {
			readable = "Symbiotic Plankton",
			icon = 237147,
			text = {
				en = "Symbiotic Plankton",
				es = "Plancton simbiótico",
				de = "Symbiotisches Plankton",
				fr = "Plancton symbiotique",
				pt = "Plâncton Simbiótico",
				ru = "Планктон-симбионт",
				cn = "共生浮游生物",
			},
		},
	
		[13000011] = {
			readable = "|cFFFFFFFFStep 1:|r Seashell",
			icon = 1498832,
			text = {
				en = "|cFFFFFFFFStep 1:|r Seashell",
				es = "|cFFFFFFFFStep 1:|r Concha",
				de = "|cFFFFFFFFSchritt 1:|r Muschel",
				fr = "|cFFFFFFFFÉtape 1:|r Coquillage",
				pt = "|cFFFFFFFFStep 1:|r Concha",
				ru = "|cFFFFFFFFШаг 1:|r Морская ракушка",
				cn = "|cFFFFFFFF第1步:|r 贝壳",
			},
		},
	
		[13000012] = {
			readable = "|cFFFFFFFFStep 2:|r Giant Giant Toenail Clipping",
			icon = 1518079,
			text = {
				en = "|cFFFFFFFFStep 2:|r Giant Giant Toenail Clipping",
				es = "|cFFFFFFFFStep 2:|r Corte de uña del pie gigante de gigante",
				de = "|cFFFFFFFFSchritt 2:|r Riesiger abgeschnittener Riesenzehnagel",
				fr = "|cFFFFFFFFÉtape 2:|r Rognure d’ongle de géant géante",
				pt = "|cFFFFFFFFStep 2:|r Pedaço Gigante de Unha de Gigante",
				ru = "|cFFFFFFFFШаг 2:|r Гигантский кусок ногтя гиганта",
				cn = "|cFFFFFFFF第2步:|r 巨大的巨人脚趾",
			},
		},
	
		[13000013] = {
			readable = "|cFFFFFFFFStep 3:|r Makrura Eye",
			icon = 970832,
			text = {
				en = "|cFFFFFFFFStep 3:|r Makrura Eye",
				es = "|cFFFFFFFFStep 3:|r Ojo de makrura",
				de = "|cFFFFFFFFSchritt 3:|r Makruraauge",
				fr = "|cFFFFFFFFÉtape 3:|r Œil de makrura",
				pt = "|cFFFFFFFFStep 3:|r Olho de Makrura",
				ru = "|cFFFFFFFFШаг 3:|r Глаз макруры",
				cn = "|cFFFFFFFF第3步:|r 龙虾人的眼睛",
			},
		},
	
		[13000014] = {
			readable = "|cFFFFFFFFStep 4:|r Accidentally-Severed Seahorse Fin",
			icon = 1547462,
			text = {
				en = "|cFFFFFFFFStep 4:|r Accidentally-Severed Seahorse Fin",
				es = "|cFFFFFFFFStep 4:|r Aleta de caballito de mar cortada por accidente",
				de = "|cFFFFFFFFSchritt 4:|r Versehentlich abgetrennte Seepferdflosse",
				fr = "|cFFFFFFFFÉtape 4:|r Aileron d’hippocampe coupé accidentellement",
				pt = "|cFFFFFFFFStep 4:|r Barbatana de Cavalo-marinho Decepada por Acidente",
				ru = "|cFFFFFFFFШаг 4:|r Случайно отрезанный плавник морского конька",
				cn = "|cFFFFFFFF第4步:|r 偶然切掉的海马鳍",
			},
		},
	
		[13000015] = {
			readable = "|cFFFFFFFFStep 5:|r Shiny Sea Serpent Scale",
			icon = 1526599,
			text = {
				en = "|cFFFFFFFFStep 5:|r Shiny Sea Serpent Scale",
				es = "|cFFFFFFFFStep 5:|r Escama de serpiente marina brillante",
				de = "|cFFFFFFFFSchritt 5:|r Glänzende Seeschlangenschuppe",
				fr = "|cFFFFFFFFÉtape 5:|r Écaille de serpent de mer brillante",
				pt = "|cFFFFFFFFStep 5:|r Escama de Serpente Marinha Faiscante",
				ru = "|cFFFFFFFFШаг 5:|r Яркая чешуя морского змея",
				cn = "|cFFFFFFFF第5步:|r 闪耀的海蛇鳞",
			},
		},
	
		[13000016] = {
			readable = "|cFFFFFFFFStep 6:|r Symbiotic Plankton",
			icon = 237147,
			text = {
				en = "|cFFFFFFFFStep 6:|r Symbiotic Plankton",
				es = "|cFFFFFFFFStep 6:|r Plancton simbiótico",
				de = "|cFFFFFFFFSchritt 6:|r Symbiotisches Plankton",
				fr = "|cFFFFFFFFÉtape 6:|r Plancton symbiotique",
				pt = "|cFFFFFFFFStep 6:|r Plâncton Simbiótico",
				ru = "|cFFFFFFFFШаг 6:|r Планктон-симбионт",
				cn = "|cFFFFFFFF第6步:|r 共生浮游生物",
			},
		},
	
		[13000017] = {
			readable = "Scintillating Murloc Skin Lotion",
			icon = 603530,
			text = {
				en = "Scintillating Murloc Skin Lotion",
				es = "Loción para piel múrloc centelleante",
				de = "Schillernde Murlochautcreme",
				fr = "Lotion scintillante murloc pour la peau",
				pt = "Creme Cintilante para Pele de Murloc",
				ru = "Искрящийся мурлочий лосьон для для кожи",
				cn = "闪烁的鱼人皮润滑剂",
			},
		},
	
		[13000018] = {
			readable = "|cFFFFFFFFItem 2:|r Potent Gastropod Gloop",
			icon = 237150,
			text = {
				en = "|cFFFFFFFFItem 2:|r Potent Gastropod Gloop",
				ru = "|cFFFFFFFFПредмет 2:|r Сочные выделения брюхонога",
			},
		},
	
		[13000019] = {
			readable = "|cFFFFFFFFStep 1:|r Seashell",
			icon = 1498832,
			text = {
				en = "|cFFFFFFFFStep 1:|r Seashell",
				es = "|cFFFFFFFFStep 1:|r Concha",
				de = "|cFFFFFFFFSchritt 1:|r Muschel",
				fr = "|cFFFFFFFFÉtape 1:|r Coquillage",
				pt = "|cFFFFFFFFStep 1:|r Concha",
				ru = "|cFFFFFFFFШаг 1:|r Морская ракушка",
				cn = "|cFFFFFFFF第1步:|r 贝壳",
			},
		},
	
		[13000020] = {
			readable = "|cFFFFFFFFStep 2:|r Vantus Black Squid Ink",
			icon = 134845,
			text = {
				en = "|cFFFFFFFFStep 2:|r Vantus Black Squid Ink",
				es = "|cFFFFFFFFStep 2:|r Tinta de calamar negra vantus",
				de = "|cFFFFFFFFSchritt 2:|r Schwarze Vantuskalmartinte",
				fr = "|cFFFFFFFFÉtape 2:|r Encre noire de calmar de Vantus",
				pt = "|cFFFFFFFFStep 2:|r Tinta de Lula Vantus",
				ru = "|cFFFFFFFFШаг 2:|r Непроглядно черное чернило кальмара",
				cn = "|cFFFFFFFF第2步:|r 凡图斯黑鱿鱼墨水",
			},
		},
	
		[13000021] = {
			readable = "|cFFFFFFFFStep 3:|r Super Slick Eel Slime",
			icon = 237149,
			text = {
				en = "|cFFFFFFFFStep 3:|r Super Slick Eel Slime",
				es = "|cFFFFFFFFStep 3:|r Baba de anguila superresbaladiza",
				de = "|cFFFFFFFFSchritt 3:|r Extrem glitschiger Aalschleim",
				fr = "|cFFFFFFFFÉtape 3:|r Gelée d’anguille super glissante",
				pt = "|cFFFFFFFFStep 3:|r Gosma de Enguia Supergosmenta",
				ru = "|cFFFFFFFFШаг 3:|r Крайне скользкая слизь угря",
				cn = "|cFFFFFFFF第3步:|r 超级滑的鳗鱼粘液",
			},
		},
	
		[13000022] = {
			readable = "|cFFFFFFFFStep 4:|r Rock-Encrusted Whelk Shell",
			icon = 442735,
			text = {
				en = "|cFFFFFFFFStep 4:|r Rock-Encrusted Whelk Shell",
				es = "|cFFFFFFFFStep 4:|r Concha de buccino con roca incrustada",
				de = "|cFFFFFFFFSchritt 4:|r Verkrustetes Schneckenhaus",
				fr = "|cFFFFFFFFÉtape 4:|r Coquille de bulot incrustée de pierres",
				pt = "|cFFFFFFFFStep 4:|r Búzio com Rochas Incrustadas",
				ru = "|cFFFFFFFFШаг 4:|r Обросшая камнями раковина моллюска",
				cn = "|cFFFFFFFF第4步:|r 覆盖岩层的海螺壳",
			},
		},
	
		[13000023] = {
			readable = "|cFFFFFFFFStep 5:|r Potent Gastropod Gloop",
			icon = 237150,
			text = {
				en = "|cFFFFFFFFStep 5:|r Potent Gastropod Gloop",
				es = "|cFFFFFFFFStep 5:|r Pegote de gasterópodo potente",
				de = "|cFFFFFFFFSchritt 5:|r Potenter Schneckenschleim",
				fr = "|cFFFFFFFFÉtape 5:|r Glaire gluante de gastéropode",
				pt = "|cFFFFFFFFStep 5:|r Gosma de Gastrópode Potente",
				ru = "|cFFFFFFFFШаг 5:|r Сочные выделения брюхонога",
				cn = "|cFFFFFFFF第5步:|r 强力的蜗牛粘液",
			},
		},
	
		[13000024] = {
			readable = "|cFFFFFFFFItem 3:|r Captured Cavitation Bubble",
			icon = 462651,
			text = {
				en = "|cFFFFFFFFItem 3:|r Captured Cavitation Bubble",
				ru = "|cFFFFFFFFПредмет 3:|r Пойманный кавитационный пузырек",
			},
		},
	
		[13000025] = {
			readable = "|cFFFFFFFFStep 1:|r Seashell",
			icon = 1498832,
			text = {
				en = "|cFFFFFFFFStep 1:|r Seashell",
				es = "|cFFFFFFFFStep 1:|r Concha",
				de = "|cFFFFFFFFSchritt 1:|r Muschel",
				fr = "|cFFFFFFFFÉtape 1:|r Coquillage",
				pt = "|cFFFFFFFFStep 1:|r Concha",
				ru = "|cFFFFFFFFШаг 1:|r Морская ракушка",
				cn = "|cFFFFFFFF第1步:|r 贝壳",
			},
		},
	
		[13000026] = {
			readable = "|cFFFFFFFFStep 2:|r Very Pretty Coral",
			icon = 458176,
			text = {
				en = "|cFFFFFFFFStep 2:|r Very Pretty Coral",
				es = "|cFFFFFFFFStep 2:|r Coral muy bonito",
				de = "|cFFFFFFFFSchritt 2:|r Sehr hübsche Koralle",
				fr = "|cFFFFFFFFÉtape 2:|r Très joli corail",
				pt = "|cFFFFFFFFStep 2:|r Coral Lindíssimo",
				ru = "|cFFFFFFFFШаг 2:|r Очень красивый коралл",
				cn = "|cFFFFFFFF第2步:|r 非常漂亮的珊瑚",
			},
		},
	
		[13000027] = {
			readable = "|cFFFFFFFFStep 3:|r Iridescent Shimmerray Skin",
			icon = 1526629,
			text = {
				en = "|cFFFFFFFFStep 3:|r Iridescent Shimmerray Skin",
				es = "|cFFFFFFFFStep 3:|r Piel de fulgirrayo iridiscente",
				de = "|cFFFFFFFFSchritt 3:|r Irisierende Schillerrochenhaut",
				fr = "|cFFFFFFFFÉtape 3:|r Peau de raie-miroir iridescente",
				pt = "|cFFFFFFFFStep 3:|r Pele de Brilharraia Iridescente",
				ru = "|cFFFFFFFFШаг 3:|r Переливающаяся кожа мерцающего ската",
				cn = "|cFFFFFFFF第3步:|r 虹色闪光鳐之皮",
			},
		},
	
		[13000028] = {
			readable = "|cFFFFFFFFStep 4:|r Luxurous Luxscale Scale",
			icon = 1526615,
			text = {
				en = "|cFFFFFFFFStep 4:|r Luxurous Luxscale Scale",
				es = "|cFFFFFFFFStep 4:|r Escama de lujo de Escama Luminosa",
				de = "|cFFFFFFFFSchritt 4:|r Üppige Luxschuppenschuppe",
				fr = "|cFFFFFFFFÉtape 4:|r Écaille de luxécaille luxueuse",
				pt = "|cFFFFFFFFStep 4:|r Escama de Luxescala Luxuosa",
				ru = "|cFFFFFFFFШаг 4:|r Сверкающий фрагмент светящейся чешуи",
				cn = "|cFFFFFFFF第4步:|r 奢侈的奢鳞之鳞",
			},
		},
	
		[13000029] = {
			readable = "|cFFFFFFFFStep 5:|r Captured Cavitation Bubble",
			icon = 462651,
			text = {
				en = "|cFFFFFFFFStep 5:|r Captured Cavitation Bubble",
				es = "|cFFFFFFFFStep 5:|r Burbuja de cavitación capturada",
				de = "|cFFFFFFFFSchritt 5:|r Eingefangene Kavitationsblase",
				fr = "|cFFFFFFFFÉtape 5:|r Bulle de cavitation emprisonnée",
				pt = "|cFFFFFFFFStep 5:|r Bolha de Cavitação Capturada",
				ru = "|cFFFFFFFFШаг 5:|r Пойманный кавитационный пузырек",
				cn = "|cFFFFFFFF第5步:|r 捕获的空穴气泡",
			},
		},
	
		[13000030] = {
			readable = "Purchase Red Crystal Monocle",
			icon = 133146,
			text = {
				en = "Purchase Red Crystal Monocle",
				es = "Purchase Monóculo de cristal rojo",
				de = "Purchase Rotes Kristallmonokel",
				fr = "Acheter un Monocle de cristal rouge",
				it = "Purchase Monocolo di Cristallo Rosso",
				pt = "Purchase Monóculo de Cristal Vermelho",
				ru = "Купите Монокль из красного кристалла",
				ko = "Purchase 빨간색 수정 외눈안경",
				cn = "购买红色单片眼镜",
			},
		},
	
		[13000032] = {
			readable = "|cFFFFFFFFStep 3:|r Pick a Monocle (Or Don't!)",
			icon = 133146,
			text = {
				en = "|cFFFFFFFFStep 3:|r Pick a Monocle (Or Don't!)",
				de = "|cFFFFFFFFSchritt 3:|r Pick a Monocle (Or Don't!)",
				fr = "|cFFFFFFFFÉtape 3:|r Choisir un monocle (Ou pas !)",
				ru = "|cFFFFFFFFШаг 3:|r Возьмите Монокль (или не берите!)",
				cn = "|cFFFFFFFF第3步:|r 选择一个单片眼镜（或不！）",
			},
		},
	
		[13000033] = {
			readable = "|cFFFFFFFFStep 4:|r Suramar Beams",
			icon = 3528282,
			text = {
				en = "|cFFFFFFFFStep 4:|r Suramar Beams",
				de = "|cFFFFFFFFSchritt 4:|r Suramar Beams",
				fr = "|cFFFFFFFFÉtape 4:|r Raypons de Suramar",
				ru = "|cFFFFFFFFШаг 4:|r Лучи Сурамара",
				cn = "|cFFFFFFFF第4步:|r 苏拉玛射线",
			},
		},
	
		[13000034] = {
			readable = "|cFFFFFFFFStep 5:|r Cat Code",
			icon = 656576,
			text = {
				en = "|cFFFFFFFFStep 5:|r Cat Code",
				de = "|cFFFFFFFFSchritt 5:|r Cat Code",
				fr = "|cFFFFFFFFÉtape 5:|r Code du Chat",
				ru = "|cFFFFFFFFШаг 5:|r Кошачий Код",
				cn = "|cFFFFFFFF第5步:|r 猫密码",
			},
		},
	
		[13000035] = {
			readable = "|cFFFFFFFFStep 6:|r Jumping Puzzle",
			icon = 1041234,
			text = {
				en = "|cFFFFFFFFStep 6:|r Jumping Puzzle",
				de = "|cFFFFFFFFSchritt 6:|r Jumping Puzzle",
				fr = "|cFFFFFFFFÉtape 6:|r Casse-tête de saut",
				ru = "|cFFFFFFFFШаг 6:|r Прыгучий паззл",
				cn = "|cFFFFFFFF第6步:|r 跳跃迷宫",
			},
		},
	
		[13000036] = {
			readable = "|cFFFFFFFFStep 7:|r Arcane Lava",
			icon = 1041230,
			text = {
				en = "|cFFFFFFFFStep 7:|r Arcane Lava",
				de = "|cFFFFFFFFSchritt 7:|r Arcane Lava",
				fr = "|cFFFFFFFFÉtape 7:|r Lave arcanique",
				ru = "|cFFFFFFFFШаг 7:|r Пол — это (магическая) лава!",
				cn = "|cFFFFFFFF第7步:|r 奥术岩浆",
			},
		},
	
		[13000037] = {
			readable = "|cFFFFFFFFStep 8:|r Hivemind",
			icon = 2266815,
			text = {
				en = "|cFFFFFFFFStep 8:|r Hivemind",
				es = "|cFFFFFFFFStep 8:|r La mente colmena",
				de = "|cFFFFFFFFSchritt 8:|r Das Schwarmbewusstsein",
				fr = "|cFFFFFFFFÉtape 8:|r Conscience collective",
				it = "|cFFFFFFFFStep 8:|r Mente Alveare",
				pt = "|cFFFFFFFFStep 8:|r A Mente Coletiva",
				ru = "|cFFFFFFFFШаг 8:|r Коллективный разум",
				ko = "|cFFFFFFFFStep 8:|r 군체의식",
				cn = "|cFFFFFFFF第8步:|r 主脑",
			},
		},
	
		[13000040] = {
			readable = "|cFFFFFFFFStep 1:|r Phoenix Ash Talisman",
			icon = 2125665,
			text = {
				en = "|cFFFFFFFFStep 1:|r Phoenix Ash Talisman",
			},
		},
	
		[13000041] = {
			readable = "|cFFFFFFFFStep 1A:|r Glittering Phoenix Ember",
			icon = 514016,
			text = {
				en = "|cFFFFFFFFStep 1A:|r Glittering Phoenix Ember",
			},
		},
	
		[13000042] = {
			readable = "|cFFFFFFFFStep 1B:|r Inert Phoenix Ash",
			icon = 133849,
			text = {
				en = "|cFFFFFFFFStep 1B:|r Inert Phoenix Ash",
			},
		},
	
		[13000043] = {
			readable = "|cFFFFFFFFStep 1C:|r Sacred Phoenix Ash",
			icon = 1003597,
			text = {
				en = "|cFFFFFFFFStep 1C:|r Sacred Phoenix Ash",
			},
		},
	
		[13000044] = {
			readable = "|cFFFFFFFFStep 2:|r Ash Feather",
			icon = 2103819,
			text = {
				en = "|cFFFFFFFFStep 2:|r Ash Feather",
			},
		},
	
		[13000045] = {
			readable = "|cFFFFFFFFStep 3:|r Smoldering Phoenix Ash",
			icon = 443368,
			text = {
				en = "|cFFFFFFFFStep 3:|r Smoldering Phoenix Ash",
			},
		},
})
do ObjectDB[objectID] = objectData; end
