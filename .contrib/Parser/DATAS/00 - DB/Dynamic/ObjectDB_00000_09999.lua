local ObjectDB = ObjectDB; for objectID,objectData in pairs({
	
		[31] = {
			readable = "Old Lion Statue",
			icon = 464140,
			model = 189908,
			text = {
				en = "Old Lion Statue",
				es = "Estatua de león antigua",
				de = "Alte Löwenstatue",
				fr = "Statue du vieux lion",
				it = "Vecchia Statua di Leone",
				pt = "Estátua de Leão Antiga",
				ru = "Статуя старого льва",
				ko = "오래된 사자상",
				cn = "陈旧的石狮子",
			},
		},
	
		[32] = {
			readable = "Sunken Chest",
			model = 196976,
			text = {
				en = "Sunken Chest",
				es = "Cofre sumergido",
				de = "Versunkene Truhe",
				fr = "Coffre englouti",
				pt = "Baú Afundado",
				ru = "Затонувший сундук",
				ko = "가라앉은 상자",
				cn = "沉没的箱子",
			},
		},
	
		[33] = {
			readable = "Locked Chest",
			model = 196979,
			text = {
				en = "Locked Chest",
				es = "Cofre cerrado",
				de = "Verschlossene Truhe",
				fr = "Coffre verrouillé",
				pt = "Baú Trancado",
				ru = "Запертый сундук",
				ko = "잠긴 궤짝",
			},
		},
	
		[34] = {
			readable = "Old Jug",
			icon = 132798,
			model = 189821,
			text = {
				en = "Old Jug",
				es = "Vieja jarra",
				de = "Alter Henkelkrug",
				fr = "Vieille cruche",
				it = "Vecchio Fiasco",
				pt = "Velho Garrafão",
				ru = "Старый кувшин",
				ko = "낡은 단지",
				cn = "旧罐子",
			},
		},
	
		[35] = {
			readable = "Captain's Footlocker",
			model = 198238,
			text = {
				en = "Captain's Footlocker",
				es = "Baúl del Capitán",
				de = "Schließkiste des Kapitäns",
				fr = "Coffre du capitaine",
				it = "Scrigno del Capitano",
				pt = "Maleta do Capitão",
				ru = "Сундучок капитана",
				ko = "선장의 사물함",
				cn = "船长的手提箱",
			},
		},
	
		[36] = {
			readable = "Broken Barrel",
			model = 199567,
			text = {
				en = "Broken Barrel",
				es = "Barrica rota",
				de = "Zerbrochenes Fass",
				fr = "Tonneau cassé",
				it = "Barile Spezzato",
				pt = "Barril Quebrado",
				ru = "Разбитая бочка",
				ko = "부서진 통",
				cn = "破酒桶",
			},
		},
	
		[37] = {
			readable = "Eliza's Tombstone",
			model = 189534,
			text = {
				en = "Eliza's Tombstone",
				es = "Lápida de Eliza",
				de = "Elizas Grabstein",
				fr = "Tombe d'Eliza",
				pt = "Lápide de Elisa",
				ru = "Надгробный камень Элизы",
				ko = "엘리자의 묘비",
				cn = "伊莉莎的墓碑",
			},
		},
	
		[41] = {
			readable = "Ambassador's Locker",
			model = 196976,
			text = {
				en = "Ambassador's Locker",
				es = "Armario del Embajador",
				de = "Spind des Botschafters",
				fr = "Placard de l'ambassadeur",
				pt = "Armário do Embaixador",
				ru = "Сундук посла",
				ko = "대사의 상자",
				cn = "大使的箱子",
			},
		},
	
		[47] = {
			readable = "Wanted: Lieutenant Fangore",
			model = 199421,
			text = {
				en = "Wanted: Lieutenant Fangore",
				es = "¡Se busca!",
				de = "GESUCHT:",
				fr = "Avis de recherche !",
				it = "Ricercato!",
				pt = "Procura-se!",
				ru = "Розыск!",
				ko = "현상 수배!",
				cn = "通缉！",
			},
		},
	
		[52] = {
			readable = "Fall of Gurubashi",
			model = 200640,
			text = {
				en = "Fall of Gurubashi",
				es = "La Caída de Gurubashi",
				de = "Gurubashis Untergang",
				fr = "Chute des Gurubashi",
				pt = "A Queda de Gurubashi",
				ru = "Водопад Гурубаши",
				ko = "구루바시의 몰락",
				cn = "古拉巴什的毁灭",
			},
		},
	
		[54] = {
			readable = "The Emperor's Tomb",
			model = 200640,
			text = {
				en = "The Emperor's Tomb",
				es = "La Tumba del Emperador",
				de = "Das Grabmal des Imperators",
				fr = "La tombe de l'empereur",
				pt = "A Tumba do Imperador",
				ru = "Гробница императора",
				ko = "제국의 무덤",
				cn = "帝王之墓",
			},
		},
	
		[55] = {
			readable = "A half-eaten body",
			icon = 133730,
			model = 198343,
			text = {
				en = "A half-eaten body",
				es = "Un cadáver medio comido",
				de = "Ein halb aufgefressener Körper",
				fr = "Un corps à moitié dévoré",
				it = "Corpo Smangiucchiato",
				pt = "Corpo semi-devorado",
				ru = "Обглоданный труп",
				ko = "반쯤 파먹힌 시체",
				cn = "被吃掉一半的尸体",
			},
		},
	
		[56] = {
			readable = "Rolf's corpse",
			icon = 133730,
			model = 198343,
			text = {
				en = "Rolf's corpse",
				es = "Cadáver de Rolf",
				de = "Rolfs Leichnam",
				fr = "Cadavre de Rolf",
				it = "Cadavere di Rolf",
				pt = "Cadáver de Rodolfo",
				ru = "Труп Рольфа",
				ko = "롤프의 시체",
				cn = "罗尔夫的尸体",
			},
		},
	
		[57] = {
			readable = "Moon Over the Vale",
			model = 200640,
			text = {
				en = "Moon Over the Vale",
				es = "Luna sobre el Valle",
				de = "Mond über dem Tal",
				fr = "Lune surplombant la Vallée",
				pt = "A lua cobre o vale",
				ru = "Луна над долиной",
				ko = "골짜기의 달",
				cn = "月亮照耀着山谷",
			},
		},
	
		[58] = {
			readable = "Gri'lek the Wanderer",
			model = 200640,
			text = {
				en = "Gri'lek the Wanderer",
				es = "Gri'lek el Trotamundos",
				de = "Gri’lek der Wanderer",
				fr = "Gri'lek le Vagabond",
				pt = "Gri'lek, o Errante",
				ru = "Гри'лек Странник",
				ko = "방랑자 그리렉",
				cn = "游荡者格里雷克",
			},
		},
	
		[59] = {
			readable = "Mound of loose dirt",
			model = 189528,
			text = {
				en = "Mound of loose dirt",
				es = "Montón de tierra",
				de = "Ein Haufen lockere Erde",
				fr = "Monticule de poussière",
				pt = "Monte de Terra Solta",
				ru = "Куча рыхлой земли",
				ko = "대충 덮인 흙무더기",
				cn = "一堆松软的泥土",
			},
		},
	
		[60] = {
			readable = "Wanted: Gath'Ilzogg",
			model = 199426,
			text = {
				en = "Wanted: Gath'Ilzogg",
				es = "Se busca: Gath'Ilzogg",
				de = "GESUCHT: Gath'Ilzogg",
				fr = "Avis de recherche : Gath'Ilzogg",
				it = "Ricercato: Gath'ilzogg",
				pt = "Procura-se: Gath'Ilzogg",
				ru = "Разыскивается: Гат'Илзогг",
				ko = "현상 수배: 가스일조그",
				cn = "通缉：加塞尔佐格",
			},
		},
	
		[61] = {
			readable = "A Weathered Grave",
			icon = 236399,
			model = 189541,
			text = {
				en = "A Weathered Grave",
				es = "Una tumba erosionada",
				de = "Ein verwittertes Grab",
				fr = "Un tombeau dégradé par les intempéries",
				it = "Tomba Rovinata",
				pt = "A Velha Lápide",
				ru = "Заброшенная могила",
				ko = "낡은 묘비",
				cn = "破旧的坟墓",
			},
		},
	
		[68] = {
			readable = "Wanted Poster",
			model = 199421,
			text = {
				en = "Wanted Poster",
				es = "Cartel de Se busca",
				de = "Steckbrief",
				fr = "Avis de recherche",
				it = "Manifesto dei Ricercati",
				pt = "Pôster de Procura-se",
				ru = "Плакат \"Разыскивается\"",
				ko = "현상 수배 전단",
				cn = "通缉告示",
			},
		},
	
		[73] = {
			readable = "Treasure Chest",
			model = 196976,
			text = {
				en = "Treasure Chest",
			},
		},
	
		[74] = {
			readable = "Treasure Chest",
			model = 196979,
			text = {
				en = "Treasure Chest",
			},
		},
	
		[75] = {
			readable = "Wooden Chest",
			model = 196979,
			text = {
				en = "Wooden Chest",
			},
		},
	
		[76] = {
			readable = "An Empty Jar",
			model = 199180,
			text = {
				en = "An Empty Jar",
				es = "Una jarra vacía",
				de = "Ein leerer Krug",
				fr = "Une jarre vide",
				pt = "Jarra Vazia",
				ru = "Пустой кувшин",
				ko = "빈 단지",
				cn = "空瓶子",
			},
		},
	
		[119] = {
			readable = "Abercrombie's Crate",
			model = 190543,
			text = {
				en = "Abercrombie's Crate",
				es = "Cajón de Abercrombie",
				de = "Calvinius' Kiste",
				fr = "Caisse d'Abercrombie",
				pt = "Caixote do Abercrombie",
				ru = "Ящик Аберкромби",
				ko = "에이버크롬비의 상자",
				cn = "亚伯克隆比的箱子",
			},
		},
	
		[164] = {
			readable = "Scaber Stalk",
			model = 219476,
			text = {
				en = "Scaber Stalk",
			},
		},
	
		[249] = {
			readable = "Crate of Foodstuffs",
			model = 200961,
			text = {
				en = "Crate of Foodstuffs",
				ru = "Ящик с провизией",
			},
		},
	
		[252] = {
			readable = "I Should not be here B",
			model = 196975,
			text = {
				en = "I Should not be here B",
			},
		},
	
		[255] = {
			readable = "Musty Scroll",
			text = {
				en = "Musty Scroll",
			},
		},
	
		[256] = {
			readable = "Wanted!",
			icon = 134939,
			model = 199421,
			text = {
				en = "Wanted!",
				es = "¡Se busca!",
				de = "GESUCHT",
				fr = "Avis de recherche !",
				it = "Ricercato!",
				pt = "Procura-se!",
				ru = "Разыскивается!",
				ko = "현상 수배!",
				cn = "通缉",
			},
		},
	
		[257] = {
			readable = "Suspicious Barrel",
			model = 198280,
			text = {
				en = "Suspicious Barrel",
				es = "Barrica sospechosa",
				de = "Verdächtiges Fass",
				fr = "Tonneau suspect",
				it = "Barile Sospetto",
				pt = "Barril Suspeito",
				ru = "Подозрительная бочка",
				ko = "수상한 통",
				cn = "可疑的桶",
			},
		},
	
		[259] = {
			readable = "Half-buried Barrel",
			icon = 132798,
			model = 199563,
			text = {
				en = "Half-buried Barrel",
				es = "Barrica semienterrada",
				de = "Halb vergrabenes Fass",
				fr = "Tonneau à moitié enseveli",
				it = "Barile Mezzo Sepolto",
				pt = "Barril Semienterrado",
				ru = "Полузакопанная бочка",
				ko = "반쯤 묻힌 통",
				cn = "半埋的大桶",
			},
		},
	
		[261] = {
			readable = "Damaged Crate",
			icon = 132762,
			model = 198168,
			text = {
				en = "Damaged Crate",
				es = "Cajón dañado",
				de = "Beschädigte Kiste",
				fr = "Caisse endommagée",
				it = "Cassa Danneggiata",
				pt = "Caixote Danificado",
				ru = "Поврежденный ящик",
				ko = "부서진 상자",
				cn = "破损的箱子",
			},
		},
	
		[263] = {
			readable = "Kurzen Supplies",
			model = 198085,
			text = {
				en = "Kurzen Supplies",
				es = "Suministros Kurzen",
				de = "Kurzens Vorräte",
				fr = "Ravitaillements de Kurzen",
				pt = "Suprimentos de Kurzen",
				ru = "Припасы Курцена",
				ko = "쿠르젠 보급품",
				cn = "库尔森补给品",
			},
		},
	
		[264] = {
			readable = "Kurzen Supplies",
			model = 198085,
			text = {
				en = "Kurzen Supplies",
				es = "Suministros Kurzen",
				de = "Kurzens Vorräte",
				fr = "Ravitaillements de Kurzen",
				pt = "Suprimentos de Kurzen",
				ru = "Припасы Курцена",
				ko = "쿠르젠 보급품",
				cn = "库尔森补给品",
			},
		},
	
		[269] = {
			readable = "Guarded Thunder Ale Barrel",
			model = 199563,
			text = {
				en = "Guarded Thunder Ale Barrel",
				es = "Barrica de Cerveza del Trueno custodiado",
				de = "Bewachtes Fass mit Donnerbräu Lager",
				fr = "Tonneau de Tonneblonde gardé",
				it = "Barile Custodito di Birra del Tuono",
				pt = "Barril de Cerveja do Trovão Protegido",
				ru = "Охраняемая бочка Громового эля",
				ko = "야벤이 지키고 있는 썬더브루 맥주통",
				cn = "被看守着的酒桶",
			},
		},
	
		[270] = {
			readable = "Unguarded Thunder Ale Barrel",
			icon = 133201,
			model = 199563,
			text = {
				en = "Unguarded Thunder Ale Barrel",
				es = "Barrica de Cerveza del Trueno sin vigilar",
				de = "Unbewachtes Fass mit Donnerbräu Lager",
				fr = "Tonneau de Tonneblonde non gardé",
				pt = "Barril de Cerveja do Trovão Desprotegido",
				ru = "Неохраняемая бочка Громового эля",
				ko = "아무도 지키지 않는 썬더브루 맥주통",
				cn = "无人守卫的雷酒桶",
			},
		},
	
		[271] = {
			readable = "Miners' League Crates",
			model = 198085,
			text = {
				en = "Miners' League Crates",
				es = "Cajones de la Liga de Mineros",
				de = "Kisten der Minenarbeiterliga",
				fr = "Caisses de la Ligue des mineurs",
				pt = "Caixotes da Liga dos Mineradores",
				ru = "Ящики Лиги Рудокопов",
				ko = "광부 조합 상자",
				cn = "矿工联盟的储物箱",
			},
		},
	
		[272] = {
			readable = "MacGrann's Meat Locker",
			model = 196979,
			text = {
				en = "MacGrann's Meat Locker",
				es = "Estantería de carne de MacGrann",
				de = "MacGranns Fleisch-Spind",
				fr = "Placard à viande de MacGrann",
				pt = "Depósito de Carne de MacGrann",
				ru = "Мясной ледник Макгранна",
				ko = "맥그란의 고기 상자",
			},
		},
	
		[276] = {
			readable = "Shimmerweed Basket",
			model = 200351,
			text = {
				en = "Shimmerweed Basket",
				es = "Cesta de cardaluz",
				de = "Schimmerkrautkorb",
				fr = "Panier à chatoyante",
				pt = "Cesta de Tremulerva",
				ru = "Корзинка с звездолистом",
				ko = "쉼머위드 바구니",
				cn = "微光草篮",
			},
		},
	
		[287] = {
			readable = "Bookie Herod's Records",
			model = 198056,
			text = {
				en = "Bookie Herod's Records",
				es = "Documentos del corredor Herod",
				de = "Buchmacher Herods Aufzeichnungen",
				fr = "Archives d'Hérode la Paperasse",
				pt = "Registros do Contador Herodes",
				ru = "Записи букмекера Ирода",
				ko = "사서 헤로드의 기록",
				cn = "书呆子赫罗德的档案",
			},
		},
	
		[288] = {
			readable = "Bookie Herod's Strongbox",
			model = 196979,
			text = {
				en = "Bookie Herod's Strongbox",
				es = "Caja fuerte del corredor Herod",
				de = "Buchmacher Herods Geldkassette",
				fr = "Coffre-fort d'Hérode la Paperasse",
				pt = "Cofre do Contador Herodes",
				ru = "Сейф букмекера Ирода",
				ko = "사서 헤로드의 금고",
				cn = "书呆子赫罗德的保险箱",
			},
		},
	
		[290] = {
			readable = "Furlbrow's Wardrobe",
			model = 198634,
			text = {
				en = "Furlbrow's Wardrobe",
				es = "Guardarropa de Furlbrow",
				de = "Furlbrows Kleiderschrank",
				fr = "Penderie de Furlbrow",
				pt = "Guarda-roupas do Taturana",
				ru = "Платяной шкаф Хмуроброва",
				ko = "펄브로우의 옷장",
				cn = "法布隆的柜子",
			},
		},
	
		[321] = {
			readable = "Tear of Tilloa",
			model = 198203,
			text = {
				en = "Tear of Tilloa",
				es = "Lágrima de Tilloa",
				de = "Tilloaträne",
				fr = "Larme de Tilloa",
				pt = "Lágrima de Tirsa",
				ru = "Слеза Тиллоа",
				ko = "틸로아의 눈물",
				cn = "蒂罗亚之泪",
			},
		},
	
		[323] = {
			readable = "Arcanite Lode",
			model = 197038,
			text = {
				en = "Arcanite Lode",
			},
		},
	
		[324] = {
			readable = "Small Thorium Vein",
			model = 219566,
			text = {
				en = "Small Thorium Vein",
				es = "Filón pequeño de torio",
				de = "Kleines Thoriumvorkommen",
				fr = "Petit filon de thorium",
				pt = "Veio de Tório Escasso",
				ru = "Малая ториевая жила",
				ko = "작은 토륨 광맥",
				cn = "瑟银矿脉",
			},
		},
	
		[331] = {
			readable = "Loose Soil",
			model = 204112,
			text = {
				en = "Loose Soil",
				es = "Suelo blando",
				de = "Lockere Erde",
				fr = "Terre meuble",
				pt = "Terra Solta",
				ru = "Рыхлая земля",
				ko = "대충 덮인 흙더미",
				cn = "松软的土壤",
			},
		},
	
		[333] = {
			readable = "Ancient Relic",
			model = 199751,
			text = {
				en = "Ancient Relic",
				es = "Reliquia antigua",
				de = "Uraltes Relikt",
				fr = "Relique ancienne",
				pt = "Relíquia Antiga",
				ru = "Древняя святыня",
				ko = "고대 유물",
				cn = "古代遗物",
			},
		},
	
		[334] = {
			readable = "Ancient Relic",
			model = 199753,
			text = {
				en = "Ancient Relic",
				es = "Reliquia antigua",
				de = "Uraltes Relikt",
				fr = "Relique ancienne",
				pt = "Relíquia Antiga",
				ru = "Древняя святыня",
				ko = "고대 유물",
				cn = "古代遗物",
			},
		},
	
		[337] = {
			readable = "Water Pitcher",
			model = 189815,
			text = {
				en = "Water Pitcher",
				ru = "Кувшин с водой",
			},
		},
	
		[375] = {
			readable = "Tirisfal Pumpkin",
			model = 189409,
			text = {
				en = "Tirisfal Pumpkin",
				es = "Calabaza de Tirisfal",
				de = "Tirisfalkürbis",
				fr = "Potiron de Tirisfal",
				pt = "Abóbora de Tirisfal",
				ru = "Тирисфальская тыква",
				ko = "티리스팔 호박",
				cn = "提瑞斯法南瓜",
			},
		},
	
		[711] = {
			readable = "Wanted!",
			icon = 134939,
			model = 199421,
			text = {
				en = "Wanted!",
				es = "¡Se busca!",
				de = "GESUCHT!",
				fr = "Avis de recherche !",
				pt = "Procura-se!",
				ru = "Розыск!",
				ko = "현상 수배!",
				cn = "通缉！",
			},
		},
	
		[759] = {
			readable = "The Holy Spring",
			model = 190361,
			text = {
				en = "The Holy Spring",
				es = "El manantial sagrado",
				de = "Der Heilige Quell",
				fr = "La source sacrée",
				pt = "A Fonte Sagrada",
				ru = "Святой источник",
				ko = "신성한 샘물",
				cn = "圣泉",
			},
		},
	
		[1165] = {
			readable = "Gunther's Books",
			model = 198056,
			text = {
				en = "Gunther's Books",
				es = "Libros de Gunther",
				de = "Gunthers Bücher",
				fr = "Livres de Gunther",
				pt = "Livros do Tertuliano",
				ru = "Книги Гюнтера",
				ko = "군터의 책",
			},
		},
	
		[1166] = {
			readable = "Alexston's Chest",
			model = 196976,
			text = {
				en = "Alexston's Chest",
				es = "Cofre de Alexston",
				de = "Alexstons Truhe",
				fr = "Coffre d'Alexston",
				pt = "Baú do Aleixo",
				ru = "Сундук Алекстона",
				ko = "알렉스턴의 궤짝",
				cn = "阿历克斯顿的箱子",
			},
		},
	
		[1557] = {
			readable = "Lillith's Dinner Table",
			model = 198598,
			text = {
				en = "Lillith's Dinner Table",
				es = "Mesa de cena de Lillith",
				de = "Lilliths Esstisch",
				fr = "Table de dîner de Lillith",
				it = "Tavolo da Pranzo di Lillith",
				pt = "Mesa de Jantar da Lillith",
				ru = "Обеденный стол Лилит",
				ko = "릴리스의 제단",
				cn = "莉莉丝的餐桌",
			},
		},
	
		[1560] = {
			readable = "Storage Chest",
			model = 196979,
			text = {
				en = "Storage Chest",
				es = "Arcón",
				de = "Aufbewahrungstruhe",
				fr = "Coffre de stockage",
				pt = "Baú de Estoque",
				ru = "Ящик",
				ko = "보관함",
				cn = "储物箱",
			},
		},
	
		[1561] = {
			readable = "Sealed Crate",
			model = 198168,
			text = {
				en = "Sealed Crate",
				es = "Cajón sellado",
				de = "Versiegelte Kiste",
				fr = "Caisse scellée",
				it = "Cassa Sigillata",
				pt = "Caixote Selado",
				ru = "Запечатанный ящик",
				ko = "봉인된 함",
				cn = "密封的箱子",
			},
		},
	
		[1562] = {
			readable = "Marshal Haggard's Chest",
			model = 196982,
			text = {
				en = "Marshal Haggard's Chest",
				es = "Cofre del alguacil Haggard",
				de = "Truhe von Marshal Haggard",
				fr = "Coffre du maréchal Haggard",
				pt = "Baú do Marechal Haggard",
				ru = "Сундук маршала Хаггарда",
				ko = "치안대장 해거드의 상자",
				cn = "哈加德的箱子",
			},
		},
	
		[1571] = {
			readable = "Dusty Spellbooks",
			model = 198055,
			text = {
				en = "Dusty Spellbooks",
				es = "Libros de hechizos polvorientos",
				de = "Staubige Zauberbücher",
				fr = "Livres de sorts poussiéreux",
				pt = "Grimórios Empoeirados",
				ru = "Пыльные заклинательные книги",
				ko = "더러운 마법책",
				cn = "布满灰尘的法术书",
			},
		},
	
		[1585] = {
			readable = "Explosive Charge",
			model = 197464,
			text = {
				en = "Explosive Charge",
				es = "Carga explosiva",
				de = "Sprengladung",
				fr = "Charge explosive",
				pt = "Carga Explosiva",
				ru = "Взрывчатка",
				ko = "폭발물",
				cn = "爆炸品",
			},
		},
	
		[1586] = {
			readable = "Crate of Candles",
			model = 199634,
			text = {
				en = "Crate of Candles",
				es = "Cajón de velas",
				de = "Kiste mit Kerzen",
				fr = "Caisse de bougies",
				it = "Cassa di Candele",
				pt = "Caixote de Velas",
				ru = "Ящик со свечами",
				ko = "양초 상자",
				cn = "蜡烛箱",
			},
		},
	
		[1593] = {
			readable = "Corpse Laden Boat",
			icon = 1126431,
			model = 190104,
			text = {
				en = "Corpse Laden Boat",
				es = "Barco cargado de cadáveres",
				de = "Boot mit Leichen",
				fr = "Bateau chargé de cadavres",
				pt = "Barco Cheio de Cadáveres",
				ru = "Корабль с трупами",
				ko = "시체 더미 나룻배",
				cn = "运尸船",
			},
		},
	
		[1594] = {
			readable = "Berard's Bookshelf",
			model = 198054,
			text = {
				en = "Berard's Bookshelf",
				es = "Estantería de Berard",
				de = "Berards Bücherregal",
				fr = "Etagère de livres de Berard",
				pt = "Prateleira de Livros de Berardo",
				ru = "Книжная полка Берарда",
				ko = "베랄드의 책장",
			},
		},
	
		[1599] = {
			readable = "Shallow Grave",
			model = 189528,
			text = {
				en = "Shallow Grave",
				es = "Tumba poco profunda",
				de = "Flaches Grab",
				fr = "Tombe peu profonde",
				pt = "Cova Rasa",
				ru = "Неглубокая могила",
				ko = "얕은 무덤",
			},
		},
	
		[1609] = {
			readable = "Dragonmaw Catapult",
			model = 189709,
			text = {
				en = "Dragonmaw Catapult",
				es = "Catapulta Faucedraco",
				de = "Katapult des Drachenmals",
				fr = "Catapulte des Gueules-de-dragon",
				it = "Catapulta delle Fauci di Drago",
				pt = "Catapulta da Presa do Dragão",
				ru = "Катапульта клана Драконьей Пасти",
				ko = "용아귀 투석기",
				cn = "龙喉投石车",
			},
		},
	
		[1610] = {
			readable = "Incendicite Mineral Vein",
			model = 219531,
			text = {
				en = "Incendicite Mineral Vein",
				es = "Filón de incendicita",
				de = "Pyrophor-Mineralvorkommen",
				fr = "Filon d'incendicite",
				ru = "Ароматитовая жила",
				ko = "발연 광맥",
				cn = "火岩矿脉",
			},
		},
	
		[1617] = {
			readable = "Silverleaf",
			model = 219487,
			text = {
				en = "Silverleaf",
				es = "Hojaplata",
				de = "Silberblatt",
				fr = "Feuillargent",
				pt = "Folha-prata",
				ru = "Сребролист",
				ko = "은엽수 덤불",
				cn = "银叶草",
			},
		},
	
		[1618] = {
			readable = "Peacebloom",
			model = 219481,
			text = {
				en = "Peacebloom",
				es = "Flor de paz",
				de = "Friedensblume",
				fr = "Pacifique",
				pt = "Botão-da-paz",
				ru = "Мироцвет",
				ko = "평온초",
				cn = "宁神花",
			},
		},
	
		[1619] = {
			readable = "Earthroot",
			model = 219489,
			text = {
				en = "Earthroot",
				es = "Raíz de tierra",
				de = "Erdwurzel",
				fr = "Terrestrine",
				pt = "Raiz-telúrica",
				ru = "Землекорень",
				ko = "뱀뿌리",
				cn = "地根草",
			},
		},
	
		[1620] = {
			readable = "Mageroyal",
			model = 219470,
			text = {
				en = "Mageroyal",
				es = "Marregal",
				de = "Maguskönigskraut",
				fr = "Mage royal",
				pt = "Magi-real",
				ru = "Магороза",
				ko = "마법초",
				cn = "魔皇草",
			},
		},
	
		[1621] = {
			readable = "Briarthorn",
			model = 219502,
			text = {
				en = "Briarthorn",
				es = "Brezospina",
				de = "Wilddornrose",
				fr = "Eglantine",
				pt = "Cravespinho",
				ru = "Остротерн",
				ko = "찔레가시",
				cn = "石南草",
			},
		},
	
		[1622] = {
			readable = "Bruiseweed",
			model = 219440,
			text = {
				en = "Bruiseweed",
				es = "Hierba cardenal",
				de = "Beulengras",
				fr = "Doulourante",
				pt = "Ervamossa",
				ru = "Синячник",
				ko = "생채기풀",
				cn = "跌打草",
			},
		},
	
		[1623] = {
			readable = "Wild Steelbloom",
			model = 219494,
			text = {
				en = "Wild Steelbloom",
				es = "Acérita salvaje",
				de = "Wildstahlblume",
				fr = "Aciérite sauvage",
				pt = "Ácera-agreste",
				ru = "Дикий сталецвет",
				ko = "야생 철쭉",
				cn = "野钢花",
			},
		},
	
		[1624] = {
			readable = "Kingsblood",
			model = 219443,
			text = {
				en = "Kingsblood",
				es = "Sangrerregia",
				de = "Königsblut",
				fr = "Sang-royal",
				pt = "Sangue-real",
				ru = "Королевская кровь",
				ko = "왕꽃잎풀",
				cn = "皇血草",
			},
		},
	
		[1627] = {
			readable = "Dalaran Crate",
			icon = 132761,
			model = 198168,
			text = {
				en = "Dalaran Crate",
				es = "Cajón de Dalaran",
				de = "Kiste aus Dalaran",
				fr = "Caisse de Dalaran",
				it = "Cassa di Dalaran",
				pt = "Caixote de Dalaran",
				ru = "Ящик из Даларана",
				ko = "달라란 상자",
				cn = "达拉然板条箱",
			},
		},
	
		[1628] = {
			readable = "Grave Moss",
			model = 219463,
			text = {
				en = "Grave Moss",
				es = "Musgo de tumba",
				de = "Grabmoos",
				fr = "Tombeline",
				pt = "Musgo-de-tumba",
				ru = "Могильный мох",
				ko = "무덤이끼",
				cn = "墓地苔",
			},
		},
	
		[1667] = {
			readable = "Incendicite Mineral Vein",
			model = 219531,
			text = {
				en = "Incendicite Mineral Vein",
				es = "Filón de incendicita",
				de = "Pyrophor-Mineralvorkommen",
				fr = "Filon d'incendicite",
				ru = "Ароматитовая жила",
				ko = "발연 광맥",
				cn = "火岩矿脉",
			},
		},
	
		[1673] = {
			readable = "Fel Cone",
			icon = 133944,
			model = 467768,
			text = {
				en = "Fel Cone",
				es = "Bellota vil",
				de = "Teufelszapfen",
				fr = "Gangrenoix",
				it = "Vilpigna",
				pt = "Pinha Vil",
				ru = "Шишка Скверны",
				ko = "악의 열매",
				cn = "魔锥果",
			},
		},
	
		[1682] = {
			readable = "Quest Chest",
			model = 196976,
			text = {
				en = "Quest Chest",
			},
		},
	
		[1685] = {
			readable = "Forge",
			model = 189193,
			text = {
				en = "Forge",
				es = "Forja",
				de = "Schmiede",
				pt = "Forja",
				ru = "Горн",
				ko = "가열로",
				cn = "熔炉",
			},
		},
	
		[1720] = {
			readable = "Stanley's Dish",
			model = 198177,
			text = {
				en = "Stanley's Dish",
				es = "Plato de Stanley",
				de = "Stanleys Napf",
				fr = "Plat de Stanley",
				pt = "Prato do Fido",
				ru = "Блюдо Стэнли",
				ko = "스탠리의 밥그릇",
				cn = "斯坦雷的碟子",
			},
		},
	
		[1721] = {
			readable = "Locked ball and chain",
			model = 197946,
			text = {
				en = "Locked ball and chain",
				es = "Cadena con bola de preso",
				de = "Verschlossene Kugel und Kette",
				fr = "Boulet et chaîne verrouillés",
				pt = "Bola e corrente presas",
				ru = "Запертые шар и цепь",
				ko = "단단히 잠긴 족쇄",
				cn = "坚固链球",
			},
		},
	
		[1722] = {
			readable = "Locked ball and chain",
			model = 197946,
			text = {
				en = "Locked ball and chain",
				es = "Cadena con bola de preso",
				de = "Verschlossene Kugel und Kette",
				fr = "Boulet et chaîne verrouillés",
				pt = "Bola e Corrente Trancada",
				ru = "Запертые шар и цепь",
				ko = "단단히 잠긴 족쇄",
				cn = "坚固链球",
			},
		},
	
		[1723] = {
			readable = "Mudsnout Blossom",
			model = 219474,
			text = {
				en = "Mudsnout Blossom",
				es = "Flor Morrobarro",
				de = "Morastschnauzenkappe",
				fr = "Fleurs de fangemufle",
				pt = "Cogumelo Fuçalama",
				ru = "Цветок Грязного Рыла",
				ko = "진흙주둥이꽃",
				cn = "泥头花",
			},
		},
	
		[1726] = {
			readable = "Missing: Corporal Keeshan",
			model = 198409,
			text = {
				en = "Missing: Corporal Keeshan",
				es = "Desaparecido: Cabo Keeshan",
				de = "Vermisst: Corporal Keeshan",
				fr = "Disparu : caporal Keeshan",
				pt = "Desaparecido: Cabo Keeshan",
				ru = "Пропавший без вести: капрал Кеешан",
				ko = "실종: 하사관 키샨",
				cn = "失踪：基沙恩下士",
			},
		},
	
		[1727] = {
			readable = "Keg of Shindigger Stout",
			model = 199563,
			text = {
				en = "Keg of Shindigger Stout",
				es = "Barril de cerveza Machacacanillas",
				de = "Fässchen Shindigger-Starkbier",
				fr = "Tonneau de Shindigger",
				pt = "Barril de Stout do Festeiro",
				ru = "Бочонок \"Землекопского крепкого\"",
				ko = "신디거 스타우트 맥주통",
			},
		},
	
		[1728] = {
			readable = "Dusty Rug",
			model = 198435,
			text = {
				en = "Dusty Rug",
				es = "Alfombra polvorienta",
				de = "Staubiger Teppich",
				fr = "Carpette poussiéreuse",
				pt = "Tapete Empoeirado",
				ru = "Пыльный коврик",
				ko = "더러운 양탄자",
				cn = "布满灰尘的毯子",
			},
		},
	
		[1731] = {
			readable = "Copper Vein",
			model = 219514,
			text = {
				en = "Copper Vein",
				es = "Filón de cobre",
				de = "Kupfervorkommen",
				fr = "Filon de cuivre",
				pt = "Veio de Cobre",
				ru = "Медная жила",
				ko = "구리 광맥",
				cn = "铜矿",
			},
		},
	
		[1732] = {
			readable = "Tin Vein",
			model = 219568,
			text = {
				en = "Tin Vein",
				es = "Filón de estaño",
				de = "Zinnvorkommen",
				fr = "Filon d'étain",
				pt = "Veio de Estanho",
				ru = "Оловянная жила",
				ko = "주석 광맥",
				cn = "锡矿",
			},
		},
	
		[1733] = {
			readable = "Silver Vein",
			model = 219569,
			text = {
				en = "Silver Vein",
				es = "Filón de plata",
				de = "Silbervorkommen",
				fr = "Filon d'argent",
				pt = "Veio de Prata",
				ru = "Серебряная жила",
				ko = "은 광맥",
				cn = "银矿",
			},
		},
	
		[1734] = {
			readable = "Gold Vein",
			model = 219524,
			text = {
				en = "Gold Vein",
				es = "Filón de oro",
				de = "Goldvorkommen",
				fr = "Filon d'or",
				pt = "Veio de Ouro",
				ru = "Золотая жила",
				ko = "금 광맥",
				cn = "金矿石",
			},
		},
	
		[1735] = {
			readable = "Iron Deposit",
			model = 219532,
			text = {
				en = "Iron Deposit",
				es = "Depósito de hierro",
				de = "Eisenvorkommen",
				fr = "Gisement de fer",
				pt = "Depósito de Ferro",
				ru = "Залежи железа",
				ko = "철 광맥",
				cn = "铁矿石",
			},
		},
	
		[1736] = {
			readable = "Shipment of Iron",
			model = 198168,
			text = {
				en = "Shipment of Iron",
				es = "Envío de hierro",
				de = "Eisenlieferung",
				fr = "Chargement de fer",
				pt = "Carregamento de Ferro",
				ru = "Партия железа",
				ko = "철괴 상자",
				cn = "一箱铁材",
			},
		},
	
		[1738] = {
			readable = "Syndicate Documents",
			icon = 134939,
			model = 198451,
			text = {
				en = "Syndicate Documents",
				es = "Documentos de Hermandad",
				de = "Dokumente des Syndikats",
				fr = "Documents du Syndicat",
				pt = "Documentos da Camarilha",
				ru = "Документы Синдиката",
				ko = "비밀결사대 문서",
				cn = "辛迪加文档",
			},
		},
	
		[1739] = {
			readable = "Syndicate Documents",
			icon = 134939,
			model = 198453,
			text = {
				en = "Syndicate Documents",
				es = "Documentos del Sindicato",
				de = "Dokumente des Syndikats",
				fr = "Documents du Syndicat",
				pt = "Documentos da Camarilha",
				ru = "Документы Синдиката",
				ko = "비밀결사대 문서",
				cn = "辛迪加文档",
			},
		},
	
		[1740] = {
			readable = "Syndicate Documents",
			icon = 134939,
			model = 198451,
			text = {
				en = "Syndicate Documents",
				es = "Documentos de la Hermandad",
				de = "Dokumente des Syndikats",
				fr = "Documents du Syndicat",
				it = "Documenti della Lega dei Tagliagole",
				pt = "Documentos da Camarilha",
				ru = "Документы Синдиката",
				ko = "비밀결사대 문서",
				cn = "辛迪加文档",
			},
		},
	
		[1759] = {
			readable = "Hillsbrad Town Registry",
			model = 198017,
			text = {
				en = "Hillsbrad Town Registry",
				es = "Registro de Trabalomas",
				de = "Stadtverzeichnis von Hillsbrad",
				fr = "Registre municipal d'Hillsbrad",
				pt = "Cartório de Eira dos Montes",
				ru = "Регистрационная книга Хилсбрада",
				ko = "힐스브래드 마을의 기록부",
				cn = "希尔斯布莱德城镇文档",
			},
		},
	
		[1760] = {
			readable = "Weathered Bookcase",
			model = 198047,
			text = {
				en = "Weathered Bookcase",
				es = "Estantería estropeada",
				de = "Verwitterter Bücherschrank",
				fr = "Bibliothèque dégradée par les intempéries",
				pt = "Estante de Livros Surrada",
				ru = "Старый книжный шкаф",
				ko = "오래된 책장",
				cn = "陈旧的书架",
			},
		},
	
		[1761] = {
			readable = "Hillsbrad Proclamation",
			icon = 134939,
			model = 201113,
			text = {
				en = "Hillsbrad Proclamation",
				es = "Proclamación de Trabalomas",
				de = "Proklamation des Hügellands",
				fr = "Proclamation de Hautebrande",
				pt = "Proclamação de Eira dos Montes",
				ru = "Хилсбрадское официальное объявление",
				ko = "힐스브래드 선언문",
				cn = "希尔斯布莱德宣言",
			},
		},
	
		[1763] = {
			readable = "WANTED",
			icon = 134939,
			model = 199424,
			text = {
				en = "WANTED",
				es = "SE BUSCA",
				de = "GESUCHT",
				fr = "AVIS DE RECHERCHE",
				pt = "PROCURA-SE",
				ru = "РАЗЫСКИВАЕТСЯ",
				ko = "현상 수배!",
				cn = "通缉",
			},
		},
	
		[1765] = {
			readable = "Worn Wooden Chest",
			icon = 132763,
			model = 196979,
			text = {
				en = "Worn Wooden Chest",
				es = "Cofre de madera gastado",
				de = "Abgenutzte Holztruhe",
				fr = "Coffre en bois usé",
				it = "Cassa di Legno Consumata",
				pt = "Baú de Madeira Gasto",
				ru = "Подержанный деревянный сундук",
				ko = "낡은 나무 궤짝",
				cn = "旧木箱",
			},
		},
	
		[1767] = {
			readable = "Helcular's Grave",
			model = 190633,
			text = {
				en = "Helcular's Grave",
				es = "Tumba de Helcular",
				de = "Helculars Grab",
				fr = "Tombeau d'Helcular",
				pt = "Tumba de Helcolar",
				ru = "Могила Гелькулара",
				ko = "헬쿨라의 무덤",
				cn = "赫尔库拉的墓地",
			},
		},
	
		[1768] = {
			readable = "Flame of Azel",
			icon = 135813,
			model = 198065,
			text = {
				en = "Flame of Azel",
				es = "Llama de Azel",
				de = "Flamme von Azel",
				fr = "Flamme d'Azel",
				pt = "Chama de Azel",
				ru = "Пламя Азеля",
				ko = "아젤의 불꽃",
				cn = "埃希尔之焰",
			},
		},
	
		[1769] = {
			readable = "Flame of Veraz",
			icon = 135813,
			model = 198065,
			text = {
				en = "Flame of Veraz",
				es = "Llama de Veraz",
				de = "Flamme von Veraz",
				fr = "Flamme de Veraz",
				pt = "Chama de Veraz",
				ru = "Пламя Вераза",
				ko = "베라즈의 불꽃",
				cn = "沃拉兹之焰",
			},
		},
	
		[1770] = {
			readable = "Flame of Uzel",
			icon = 135813,
			model = 198065,
			text = {
				en = "Flame of Uzel",
				es = "Llama de Uzel",
				de = "Flamme von Uzel",
				fr = "Flamme d'Uzel",
				pt = "Chama de Uzel",
				ru = "Пламя Узеля",
				ko = "우젤의 불꽃",
				cn = "尤基尔之焰",
			},
		},
	
		[2008] = {
			readable = "Dangerous!",
			icon = 134166,
			model = 199428,
			text = {
				en = "Dangerous!",
				es = "¡Peligro!",
				de = "Gefährlich!",
				fr = "Dangereux !",
				pt = "Perigo!",
				ru = "ОПАСНО!",
				ko = "위험!",
				cn = "危险！",
			},
		},
	
		[2039] = {
			readable = "Hidden Strongbox",
			model = 196976,
			text = {
				en = "Hidden Strongbox",
				es = "Caja fuerte oculta",
				de = "Versteckte Geldkassette",
				fr = "Coffre dissimulé",
				pt = "Cofre Escondido",
				ru = "Потайной сейф",
				ko = "숨겨진 금고",
				cn = "隐蔽的保险箱",
			},
		},
	
		[2040] = {
			readable = "Mithril Deposit",
			model = 219541,
			text = {
				en = "Mithril Deposit",
				es = "Depósito de mitril",
				de = "Mithrilablagerung",
				fr = "Gisement de mithril",
				pt = "Depósito de Mithril",
				ru = "Мифриловые залежи",
				ko = "미스릴 광맥",
				cn = "秘银矿脉",
			},
		},
	
		[2041] = {
			readable = "Liferoot",
			model = 219469,
			text = {
				en = "Liferoot",
				es = "Vidarraíz",
				de = "Lebenswurz",
				fr = "Vietérule",
				pt = "Raiz-da-vida",
				ru = "Жизнекорень",
				ko = "생명의 뿌리",
				cn = "活根草",
			},
		},
	
		[2042] = {
			readable = "Fadeleaf",
			model = 219449,
			text = {
				en = "Fadeleaf",
				es = "Pálida",
				de = "Blassblatt",
				fr = "Pâlerette",
				pt = "Some-folha",
				ru = "Бледнолист",
				ko = "미명초",
				cn = "枯叶草",
			},
		},
	
		[2043] = {
			readable = "Khadgar's Whisker",
			model = 219468,
			text = {
				en = "Khadgar's Whisker",
				es = "Vibrisa de Khadgar",
				de = "Khadgars Schnurrbart",
				fr = "Moustache de Khadgar",
				pt = "Bigode-de-hadgar",
				ru = "Кадгаров ус",
				ko = "카드가의 수염",
				cn = "卡德加的胡须",
			},
		},
	
		[2044] = {
			readable = "Wintersbite",
			model = 219507,
			text = {
				en = "Wintersbite",
				es = "Ivernalia",
				de = "Winterbiss",
				fr = "Hivernale",
				pt = "Boquinha-do-inverno",
				ru = "Морозник",
				ko = "겨울서리풀",
				cn = "冬刺草",
			},
		},
	
		[2045] = {
			readable = "Stranglekelp",
			model = 219495,
			text = {
				en = "Stranglekelp",
				es = "Alga estranguladora",
				de = "Würgetang",
				fr = "Etouffante",
				pt = "Estrangulalga",
				ru = "Удавник",
				ko = "갈래물풀",
				cn = "荆棘藻",
			},
		},
	
		[2046] = {
			readable = "Goldthorn",
			model = 219462,
			text = {
				en = "Goldthorn",
				es = "Espina de oro",
				de = "Golddorn",
				fr = "Dorépine",
				pt = "Espinheira-dourada",
				ru = "Златошип",
				ko = "황금가시",
				cn = "金棘草",
			},
		},
	
		[2047] = {
			readable = "Truesilver Deposit",
			model = 219569,
			text = {
				en = "Truesilver Deposit",
				es = "Depósito de veraplata",
				de = "Echtsilberablagerung",
				fr = "Gisement de vrai-argent",
				pt = "Depósito de Veraprata",
				ru = "Залежи истинного серебра",
				ko = "진은 광맥",
				cn = "真银矿石",
			},
		},
	
		[2053] = {
			readable = "TWO-SOLUTION TEST",
			model = 196976,
			text = {
				en = "TWO-SOLUTION TEST",
			},
		},
	
		[2054] = {
			readable = "Tin Vein",
			model = 219568,
			text = {
				en = "Tin Vein",
				es = "Filón de estaño",
				de = "Zinnvorkommen",
				fr = "Filon d'étain",
				pt = "Veio de Estanho",
				ru = "Оловянная жила",
				ko = "주석 광맥",
				cn = "锡矿",
			},
		},
	
		[2055] = {
			readable = "Copper Vein",
			model = 219514,
			text = {
				en = "Copper Vein",
				es = "Filón de cobre",
				de = "Kupfervorkommen",
				fr = "Filon de cuivre",
				pt = "Veio de Cobre",
				ru = "Медная жила",
				ko = "구리 광맥",
				cn = "铜矿",
			},
		},
	
		[2059] = {
			readable = "A Dwarven Corpse",
			icon = 133728,
			model = 197330,
			text = {
				en = "A Dwarven Corpse",
				es = "Un cadáver de enano",
				de = "Eine Zwergenleiche",
				fr = "Un cadavre de Nain",
				it = "Cadavere di un Nano",
				pt = "Cadáver Enânico",
				ru = "Труп дворфа",
				ko = "드워프 시체",
				cn = "矮人的尸体",
			},
		},
	
		[2068] = {
			readable = "Pupellyverbos Port",
			model = 198057,
			text = {
				en = "Pupellyverbos Port",
				es = "Oporto Pupellyverbos",
				de = "Pupellyverbos-Portwein",
				fr = "Porto Pupellyverbos",
				pt = "Xerez de Pupellyverbos",
				ru = "Портвейн Пупелливербоса",
				ko = "퍼플리버보스 포트 와인",
				cn = "紫葡萄酒",
			},
		},
	
		[2076] = {
			readable = "Bubbling Cauldron",
			icon = 133778,
			model = 198100,
			text = {
				en = "Bubbling Cauldron",
				es = "Caldera burbujeante",
				de = "Blubbernder Kessel",
				fr = "Chaudron bouillonnant",
				it = "Calderone Ribollente",
				pt = "Caldeirão Borbulhante",
				ru = "Бурлящий котел",
				ko = "끓고 있는 가마솥",
				cn = "冒泡的大锅",
			},
		},
	
		[2082] = {
			readable = "Uther the Lightbringer",
			model = 204142,
			text = {
				en = "Uther the Lightbringer",
				es = "Uther el Iluminado",
				de = "Uther Lightbringer",
				fr = "Uther, le Porteur de Lumière",
				pt = "Uther, o Arauto da Luz",
				ru = "Утер Светоносный",
				ko = "빛의 수호자 우서",
				cn = "光明使者乌瑟尔",
			},
		},
	
		[2083] = {
			readable = "Bloodsail Correspondence",
			icon = 1500889,
			model = 198455,
			text = {
				en = "Bloodsail Correspondence",
				es = "Correspondencia de los Velasangre",
				de = "Blutsegelkorrespondenz",
				fr = "Correspondance de la Voile sanglante",
				it = "Corrispondenza dei Velerosse",
				pt = "Correspondência dos Vela Sangrenta",
				ru = "Переписка Кровавого Паруса",
				ko = "붉은해적단 통신문",
				cn = "血帆海盗的信件",
			},
		},
	
		[2084] = {
			readable = "Musquash Root",
			model = 190384,
			text = {
				en = "Musquash Root",
				es = "Zibética",
				de = "Bisamwurzel",
				fr = "Racine de Musquash",
				pt = "Raiz Almiscarada",
				ru = "Мускусный корень",
				ko = "사향쥐 뿌리",
				cn = "麝鼠根",
			},
		},
	
		[2085] = {
			readable = "Singing Crystals",
			model = 190809,
			text = {
				en = "Singing Crystals",
			},
		},
	
		[2086] = {
			readable = "Bloodsail Charts",
			model = 198457,
			text = {
				en = "Bloodsail Charts",
				es = "Carta de navegación de los Velasangre",
				de = "Blutsegelkarten",
				fr = "Cartes de la Voile sanglante",
				pt = "Cartas de Navegação dos Vela Sangrenta",
				ru = "Карты пиратов Кровавого паруса",
				ko = "붉은해적단 해도",
				cn = "血帆海图",
			},
		},
	
		[2087] = {
			readable = "Bloodsail Orders",
			model = 198452,
			text = {
				en = "Bloodsail Orders",
				es = "Pedidos de los Velasangre",
				de = "Blutsegelbefehle",
				fr = "Ordres de la Voile sanglante",
				pt = "Ordens da Vela Sangrenta",
				ru = "Приказы пиратов Кровавого паруса",
				ko = "붉은해적단의 명령서",
				cn = "血帆计划书",
			},
		},
	
		[2289] = {
			readable = "Ruined Lifeboat",
			model = 190677,
			text = {
				en = "Ruined Lifeboat",
				es = "Bote salvavidas inservible",
				de = "Unbrauchbares Rettungsboot",
				fr = "Canot de sauvetage abîmé",
				it = "Scialuppa di Salvataggio Rovinata",
				pt = "Bote Salva-vidas Arruinado",
				ru = "Разбитая спасательная шлюпка",
				ko = "난파된 구명정",
				cn = "破损的救生艇",
			},
		},
	
		[2549] = {
			readable = "Cookie Test Chest",
			model = 196976,
			text = {
				en = "Cookie Test Chest",
			},
		},
	
		[2553] = {
			readable = "A Soggy Scroll",
			icon = 134939,
			model = 198453,
			text = {
				en = "A Soggy Scroll",
				es = "Un viejo pergamino",
				de = "Eine glitschige Rolle",
				fr = "Un parchemin trempé",
				it = "Pergamena Zuppa",
				pt = "Pergaminho Encharcado",
				ru = "Промокший свиток",
				ko = "젖은 두루마리",
				cn = "浸水的卷轴",
			},
		},
	
		[2554] = {
			readable = "Cortello's Riddle",
			model = 198453,
			text = {
				en = "Cortello's Riddle",
				es = "El enigma de Cortello",
				de = "Cortellos Rätsel",
				fr = "Devinette de Cortello",
				pt = "Charada do Cortello",
				ru = "Загадка Кортелло",
				ko = "코르텔로의 수수께끼",
				cn = "科泰罗的谜题",
			},
		},
	
		[2555] = {
			readable = "Musty Scroll",
			icon = 134939,
			model = 198453,
			text = {
				en = "Musty Scroll",
				es = "Pergamino mohoso",
				de = "Modrige Rolle",
				fr = "Parchemin moisi",
				it = "Pergamena Ammuffita",
				pt = "Pergaminho Mofado",
				ru = "Заплесневелый свиток",
				ko = "곰팡이 슨 두루마리",
				cn = "发霉的卷轴",
			},
		},
	
		[2556] = {
			readable = "Cortello's Treasure",
			model = 196976,
			text = {
				en = "Cortello's Treasure",
				es = "El tesoro de Cortello",
				de = "Cortellos Schatz",
				fr = "Trésor de Cortello",
				pt = "Tesouro de Cortello",
				ru = "Сокровище Кортелло",
				ko = "코르텔로의 보물",
				cn = "科泰罗的宝藏",
			},
		},
	
		[2557] = {
			readable = "Altar of the Tides",
			model = 197832,
			text = {
				en = "Altar of the Tides",
			},
		},
	
		[2559] = {
			readable = "Maury's Lock Test Chest",
			model = 196976,
			text = {
				en = "Maury's Lock Test Chest",
			},
		},
	
		[2560] = {
			readable = "Half-Buried Bottle",
			model = 198061,
			text = {
				en = "Half-Buried Bottle",
				es = "Botella semienterrada",
				de = "Halb vergrabene Flasche",
				fr = "Bouteille à moitié ensevelie",
				pt = "Garrafa Semienterrada",
				ru = "Полузакопанная бутылка",
				ko = "반쯤 묻힌 병",
				cn = "半埋的瓶子",
			},
		},
	
		[2576] = {
			readable = "Altar of the Tides",
			model = 197832,
			text = {
				en = "Altar of the Tides",
				es = "Altar de las Mareas",
				de = "Altar der Gezeiten",
				fr = "Autel des marées",
				pt = "Altar das Marés",
				ru = "Алтарь Приливов",
				ko = "해일의 제단",
				cn = "海潮祭坛",
			},
		},
	
		[2652] = {
			readable = "Ebenezer Rustlocke's Corpse",
			model = 197330,
			text = {
				en = "Ebenezer Rustlocke's Corpse",
				es = "Cadáver de Ebenezer Herrumbra",
				de = "Ebenezer Rostlockes Leichnam",
				fr = "Cadavre d'Ebenezer Bouclerouille",
				it = "Cadavere di Ebenezer Rustlocke",
				pt = "Cadáver de Ebenezer Rustlocke",
				ru = "Труп Эбенезера Ржавый Засов",
				ko = "에벤에셀 러스트로크의 시체",
				cn = "伊贝尼瑟的尸体",
			},
		},
	
		[2653] = {
			readable = "Lesser Bloodstone Deposit",
			model = 197038,
			text = {
				en = "Lesser Bloodstone Deposit",
				es = "Depósito de sangrita inferior",
				de = "Geringe Blutsteinablagerung",
				fr = "Gisement de pierre de sang inférieure",
				pt = "Depósito de Pedra-sangrenta Menor",
				ru = "Малое месторождение кровавого камня",
				ko = "저급 혈석 광맥",
				cn = "次级血石矿脉",
			},
		},
	
		[2656] = {
			readable = "Waterlogged Letter",
			model = 198453,
			text = {
				en = "Waterlogged Letter",
				es = "Carta con marcas de agua",
				de = "Durchnässter Brief",
				fr = "Lettre détrempée",
				pt = "Carta Encharcada",
				ru = "Промокшее письмо",
				ko = "물에 젖은 편지",
				cn = "浸水的信件",
			},
		},
	
		[2657] = {
			readable = "Legends of the Earth",
			model = 198016,
			text = {
				en = "Legends of the Earth",
				es = "Las Leyendas de la Tierra",
				de = "Legenden der Erde",
				fr = "Légendes de la Terre",
				pt = "Lendas da Terra",
				ru = "Легенды Земли",
				ko = "대지의 전설",
				cn = "大地传说",
			},
		},
	
		[2688] = {
			readable = "Keystone",
			icon = 132775,
			model = 199976,
			text = {
				en = "Keystone",
				es = "Piedra angular",
				de = "Schlüsselstein",
				fr = "Clé cruciale",
				it = "Pietra Angolare",
				pt = "Pedra-chave",
				ru = "Краеугольный камень",
				ko = "쐐기돌",
				cn = "钥匙之石",
			},
		},
	
		[2689] = {
			readable = "Stone of West Binding",
			model = 198951,
			text = {
				en = "Stone of West Binding",
				es = "Piedra de Vínculo Oeste",
				de = "Stein der Westlichen Bindung",
				fr = "Pierre de Lien occidentale",
				it = "Pietra del Vincolo Occidentale",
				pt = "Pedra da União Ocidental",
				ru = "Западный связывающий камень",
				ko = "서부 봉인석",
				cn = "西禁锢之石",
			},
		},
	
		[2690] = {
			readable = "Stone of Outer Binding",
			model = 198951,
			text = {
				en = "Stone of Outer Binding",
				es = "Piedra de Vínculo Exterior",
				de = "Stein der Äußeren Bindung",
				fr = "Pierre de Lien extérieure",
				it = "Pietra del Vincolo Esterno",
				pt = "Pedra da União Externa",
				ru = "Внешний связывающий камень",
				ko = "외부 봉인석",
				cn = "外禁锢之石",
			},
		},
	
		[2691] = {
			readable = "Stone of East Binding",
			model = 198951,
			text = {
				en = "Stone of East Binding",
				es = "Piedra de Vínculo Este",
				de = "Stein der Östlichen Bindung",
				fr = "Pierre de Lien orientale",
				it = "Pietra del Vincolo Orientale",
				pt = "Pedra da União Oriental",
				ru = "Восточный связывающий камень",
				ko = "동부 봉인석",
				cn = "东禁锢之石",
			},
		},
	
		[2700] = {
			readable = "Campfire",
			model = 189705,
			text = {
				en = "Campfire",
			},
		},
	
		[2701] = {
			readable = "Iridescent Shards",
			icon = 1003587,
			model = 202445,
			text = {
				en = "Iridescent Shards",
				es = "Fragmentos iridiscentes",
				de = "Regenbogenfarbene Splitter",
				fr = "Fragments iridescents",
				it = "Frammento Iridescente",
				pt = "Fragmentos Iridescentes",
				ru = "Радужные осколки",
				ko = "오색 결정",
				cn = "虹光水晶碎块",
			},
		},
	
		[2702] = {
			readable = "Stone of Inner Binding",
			icon = 1003587,
			model = 198951,
			text = {
				en = "Stone of Inner Binding",
				es = "Piedra de Vínculo Interior",
				de = "Stein der Inneren Bindung",
				fr = "Pierre de Lien intérieure",
				it = "Pietra del Vincolo Interno",
				pt = "Pedra da União Interna",
				ru = "Внутренний связывающий камень",
				ko = "내부 봉인석",
				cn = "内禁锢之石",
			},
		},
	
		[2703] = {
			readable = "Trollbane's Tomb",
			text = {
				en = "Trollbane's Tomb",
			},
		},
	
		[2704] = {
			readable = "Cache of Explosives",
			icon = 132761,
			model = 200898,
			text = {
				en = "Cache of Explosives",
				es = "Alijo de explosivos",
				de = "Sprengstofflager",
				fr = "Cache d'explosifs",
				it = "Cassa di Esplosivi",
				pt = "Caixa de Explosivos",
				ru = "Тайный склад взрывчатки",
				ko = "숨겨진 폭탄",
				cn = "爆炸品",
			},
		},
	
		[2707] = {
			readable = "Maiden's Folly Charts",
			model = 198457,
			text = {
				en = "Maiden's Folly Charts",
				es = "Mapas disparatados de Maiden",
				de = "Karten der TOLLEN MINNA",
				fr = "Cartes de la Folie de la Vierge",
				pt = "Mapas da Extravagância da Donzela",
				ru = "Карты \"Девичьей Блажи\"",
				ko = "메이든즈 폴리호의 해도",
				cn = "处女号的航海图",
			},
		},
	
		[2708] = {
			readable = "Spirit of Silverpine Charts",
			model = 198457,
			text = {
				en = "Spirit of Silverpine Charts",
				es = "Carta de navegación del Espíritu de Argénteos",
				de = "Karten der SILBERGEIST",
				fr = "Cartes de l'Esprit des Pins argentés",
				pt = "Mapas do Espírito de Pinhaprata",
				ru = "Карты \"Духа Серебряного бора\"",
				ko = "실버파인 스피릿호의 해도",
				cn = "银松之魂号的航海图",
			},
		},
	
		[2709] = {
			readable = "Maiden's Folly Log",
			model = 198016,
			text = {
				en = "Maiden's Folly Log",
				es = "Bitácora disparatada de Maiden",
				de = "Logbuch der TOLLEN MINNA",
				fr = "Journal de la Folie de la Vierge",
				pt = "Diário de Bordo da Extravagância da Donzela",
				ru = "Судовой журнал \"Девичьей Блажи\"",
				ko = "메이든즈 폴리호의 항해일지",
				cn = "处女号的航海日志",
			},
		},
	
		[2710] = {
			readable = "Spirit of Silverpine Log",
			model = 198029,
			text = {
				en = "Spirit of Silverpine Log",
				es = "Bitácora del Espíritu de Argénteos",
				de = "Logbuch der SILBERGEIST",
				fr = "Journal de l'Esprit des Pins argentés",
				pt = "Diário de Bordo do Espírito de Pinhaprata",
				ru = "Судовой журнал \"Духа Серебряного бора\"",
				ko = "실버파인 스피릿호의 항해일지",
				cn = "银松之魂号的航海日志",
			},
		},
	
		[2712] = {
			readable = "Calcified Elven Gem",
			model = 198950,
			text = {
				en = "Calcified Elven Gem",
				es = "Gema élfica calcificada",
				de = "Verkalkter Elfenedelstein",
				fr = "Gemme elfique calcifiée",
				pt = "Gema Élfica Calcificada",
				ru = "Окаменевший эльфийский самоцвет",
				ko = "엘프의 보석",
				cn = "石化精灵宝钻",
			},
		},
	
		[2713] = {
			readable = "Wanted Board",
			icon = 134939,
			model = 199428,
			text = {
				en = "Wanted Board",
				es = "Tablón de Se busca",
				de = "Steckbriefbrett",
				fr = "Tableau des recherches",
				it = "Bacheca dei Ricercati",
				pt = "Quadro de Procurados",
				ru = "Розыск!",
				ko = "현상 수배 전단",
				cn = "通缉板",
			},
		},
	
		[2714] = {
			readable = "Alterac Granite",
			model = 203668,
			text = {
				en = "Alterac Granite",
				es = "Granito de Alterac",
				de = "Alteracgranit",
				fr = "Granit d'Alterac",
				pt = "Granito de Alterac",
				ru = "Альтеракский гранит",
				ko = "알터랙 화강암",
				cn = "奥特兰克花岗岩",
			},
		},
	
		[2715] = {
			readable = "Runed Pedestal",
			model = 198836,
			text = {
				en = "Runed Pedestal",
				es = "Pedestal con runas",
				de = "Runenverzierter Sockel",
				fr = "Piédestal runique",
				pt = "Pedestal Rúnico",
				ru = "Рунный пьедестал",
				ko = "룬 문자가 새겨진 주춧돌",
				cn = "符文底座",
			},
		},
	
		[2716] = {
			readable = "Trelane's Chest",
			model = 196976,
			text = {
				en = "Trelane's Chest",
				es = "Cofre de Trelane",
				de = "Trelanes Truhe",
				fr = "Coffre de Trelane",
				pt = "Baú de Trelane",
				ru = "Сундук Трелана",
				ko = "트렐레인의 궤짝",
				cn = "特雷莱恩的箱子",
			},
		},
	
		[2717] = {
			readable = "Trelane's Footlocker",
			model = 196979,
			text = {
				en = "Trelane's Footlocker",
				es = "Baúl de Trelane",
				de = "Trelanes Schließkiste",
				fr = "Cantine de Trelane",
				pt = "Caixote de Trelane",
				ru = "Сундучок Трелана",
				ko = "트렐레인의 사물함",
				cn = "特雷莱恩的手提箱",
			},
		},
	
		[2718] = {
			readable = "Trelane's Lockbox",
			model = 196982,
			text = {
				en = "Trelane's Lockbox",
				es = "Arcón de Trelane",
				de = "Trelanes Schließkassette",
				fr = "Coffret de Trelane",
				pt = "Cofre de Trelane",
				ru = "Денежный ящик Трелана",
				ko = "트렐레인의 금고",
				cn = "特雷莱恩的箱子",
			},
		},
	
		[2723] = {
			readable = "Bale of Hay",
			model = 189810,
			text = {
				en = "Bale of Hay",
			},
		},
	
		[2724] = {
			readable = "Sack of Oats",
			model = 197608,
			text = {
				en = "Sack of Oats",
				es = "Saco de avena",
				de = "Sack Hafer",
				fr = "Sac d'avoine",
				pt = "Saco de Aveia",
				ru = "Мешок овса",
				ko = "귀리 부대",
				cn = "一袋燕麦",
			},
		},
	
		[2734] = {
			readable = "Waterlogged Chest",
			model = 196979,
			text = {
				en = "Waterlogged Chest",
				es = "Cofre encharcado",
				de = "Vollgelaufene Truhe",
				fr = "Coffre détrempé",
				it = "Cassa Fradicia",
				pt = "Baú Encharcado",
				ru = "Отсыревший сундук",
				ko = "흠뻑 젖은 상자",
				cn = "浸水的箱子",
			},
		},
	
		[2735] = {
			readable = "TEST Bombwagon",
			model = 200898,
			text = {
				en = "TEST Bombwagon",
			},
		},
	
		[2736] = {
			readable = "TEST Burning Book",
			model = 200900,
			text = {
				en = "TEST Burning Book",
			},
		},
	
		[2737] = {
			readable = "TEST Cannon",
			model = 200947,
			text = {
				en = "TEST Cannon",
			},
		},
	
		[2738] = {
			readable = "TEST Burning Scroll",
			model = 201113,
			text = {
				en = "TEST Burning Scroll",
			},
		},
	
		[2739] = {
			readable = "Chest of the Black Feather",
			icon = 132914,
			model = 196976,
			text = {
				en = "Chest of the Black Feather",
				es = "Cofre de la pluma negra",
				de = "Truhe der schwarzen Feder",
				fr = "Coffre de la plume noire",
				it = "Cassa della Piuma Nera",
				pt = "Baú da Pena Negra",
				ru = "Сундук Черного пера",
				ko = "검은 깃털의 상자",
				cn = "黑羽之箱",
			},
		},
	
		[2740] = {
			readable = "Chest of the Raven Claw",
			icon = 134334,
			model = 196976,
			text = {
				en = "Chest of the Raven Claw",
				es = "Cofre de la garra del cuervo",
				de = "Truhe der Rabenkralle",
				fr = "Coffre de la griffe du corbeau",
				it = "Cassa dell'Artiglio del Corvo",
				pt = "Baú da Garra de Corvo",
				ru = "Сундук Вороньего Когтя",
				ko = "까마귀 발톱의 상자",
				cn = "鸦爪之箱",
			},
		},
	
		[2741] = {
			readable = "Chest of the Sky",
			icon = 134132,
			model = 196976,
			text = {
				en = "Chest of the Sky",
				es = "Cofre del cielo",
				de = "Truhe des Himmels",
				fr = "Coffre des cieux",
				it = "Cassa del Cielo",
				pt = "Baú do Céu",
				ru = "Сундук Небес",
				ko = "천상의 상자",
				cn = "天空之箱",
			},
		},
	
		[2742] = {
			readable = "Chest of Nesting",
			icon = 134414,
			model = 196976,
			text = {
				en = "Chest of Nesting",
				es = "Cofre del nidal",
				de = "Truhe des Nistens",
				fr = "Coffre du nichoir",
				it = "Cassa di Nidificazione",
				pt = "Baú da Nidificação",
				ru = "Сундук Гнездования",
				ko = "안식의 상자",
				cn = "巢穴之箱",
			},
		},
	
		[2743] = {
			readable = "Carved Stone Urn",
			model = 199751,
			text = {
				en = "Carved Stone Urn",
				es = "Urna de piedra labrada",
				de = "Verzierte Steinurne",
				fr = "Urne en pierre gravée",
				pt = "Urna de Pedra com Gravuras",
				ru = "Резная каменная урна",
				ko = "돌조각 단지",
				cn = "雕纹石罐",
			},
		},
	
		[2744] = {
			readable = "Giant Clam",
			model = 196998,
			text = {
				en = "Giant Clam",
				es = "Almeja gigante",
				de = "Riesenmuschel",
				fr = "Palourde géante",
				pt = "Marisco Gigante",
				ru = "Гигантский моллюск",
				ko = "대합",
				cn = "巨型蚌壳",
			},
		},
	
		[2842] = {
			readable = "Pillar of Diamond",
			model = 199976,
			text = {
				en = "Pillar of Diamond",
				es = "Pilar de diamante",
				de = "Diamantsäule",
				fr = "Pilier de diamant",
				ru = "Алмазный столп",
				ko = "다이아몬드 기둥",
				cn = "钻石柱",
			},
		},
	
		[2843] = {
			readable = "Battered Chest",
			model = 219372,
			text = {
				en = "Battered Chest",
				es = "Cofre maltrecho",
				de = "Ramponierte Truhe",
				fr = "Coffre endommagé",
				pt = "Baú Desgastado",
				ru = "Побитый сундук",
				ko = "낡은 궤짝",
				cn = "破损的箱子",
				tw = "破損的箱子",
			},
		},
	
		[2844] = {
			readable = "Tattered Chest",
			model = 219372,
			text = {
				en = "Tattered Chest",
				es = "Cofre ajado",
				de = "Ramponierte Truhe",
				fr = "Coffre en morceaux",
				it = "Cassa Sbrindellata",
				pt = "Baú Gasto",
				ru = "Побитый сундук",
				ko = "낡은 궤짝",
				cn = "破碎的箱子",
			},
		},
	
		[2845] = {
			readable = "Tattered Chest",
			model = 219372,
			text = {
				en = "Tattered Chest",
				es = "Cofre ajado",
				de = "Ramponierte Truhe",
				fr = "Coffre en morceaux",
				it = "Cassa Sbrindellata",
				pt = "Baú Gasto",
				ru = "Побитый сундук",
				ko = "낡은 궤짝",
				cn = "破碎的箱子",
			},
		},
	
		[2846] = {
			readable = "Tattered Chest",
			model = 219372,
			text = {
				en = "Tattered Chest",
				es = "Cofre ajado",
				de = "Ramponierte Truhe",
				fr = "Coffre en morceaux",
				it = "Cassa Sbrindellata",
				pt = "Baú Gasto",
				ru = "Побитый сундук",
				ko = "낡은 궤짝",
				cn = "破碎的箱子",
			},
		},
	
		[2847] = {
			readable = "Tattered Chest",
			model = 219372,
			text = {
				en = "Tattered Chest",
				es = "Cofre ajado",
				de = "Ramponierte Truhe",
				fr = "Coffre en morceaux",
				pt = "Baú Gasto",
				ru = "Побитый сундук",
			},
		},
	
		[2848] = {
			readable = "Pillar of Opal",
			model = 199976,
			text = {
				en = "Pillar of Opal",
				es = "Pilar de ópalo",
				de = "Opalsäule",
				fr = "Pilier d'opale",
				pt = "Pilar de Opala",
				ru = "Опаловый столп",
				ko = "오팔 기둥",
				cn = "玛瑙石柱",
			},
		},
	
		[2849] = {
			readable = "Battered Chest",
			model = 219372,
			text = {
				en = "Battered Chest",
				es = "Cofre maltrecho",
				de = "Ramponierte Truhe",
				fr = "Coffre endommagé",
				pt = "Baú Desgastado",
				ru = "Побитый сундук",
				ko = "낡은 궤짝",
				cn = "破损的箱子",
				tw = "破損的箱子",
			},
		},
	
		[2850] = {
			readable = "Solid Chest",
			model = 219372,
			text = {
				en = "Solid Chest",
				es = "Cofre sólido",
				de = "Robuste Truhe",
				fr = "Coffre solide",
				pt = "Baú Sólido",
				ru = "Добротный сундук",
				ko = "단단한 궤짝",
				cn = "坚固的箱子",
			},
		},
	
		[2851] = {
			readable = "Iron Bound Chest",
			model = 219372,
			text = {
				en = "Iron Bound Chest",
			},
		},
	
		[2852] = {
			readable = "Solid Chest",
			model = 219372,
			text = {
				en = "Solid Chest",
				es = "Cofre sólido",
				de = "Robuste Truhe",
				fr = "Coffre solide",
				pt = "Baú Sólido",
				ru = "Добротный сундук",
				ko = "단단한 궤짝",
				cn = "坚固的箱子",
			},
		},
	
		[2853] = {
			readable = "Iron Bound Chest",
			model = 219372,
			text = {
				en = "Iron Bound Chest",
			},
		},
	
		[2854] = {
			readable = "Iron Bound Chest",
			model = 219372,
			text = {
				en = "Iron Bound Chest",
			},
		},
	
		[2855] = {
			readable = "Solid Chest",
			model = 219372,
			text = {
				en = "Solid Chest",
				es = "Cofre sólido",
				de = "Robuste Truhe",
				fr = "Coffre solide",
				pt = "Baú Sólido",
				ru = "Добротный сундук",
				ko = "단단한 궤짝",
				cn = "坚固的箱子",
			},
		},
	
		[2856] = {
			readable = "Iron Bound Chest",
			model = 219372,
			text = {
				en = "Iron Bound Chest",
			},
		},
	
		[2857] = {
			readable = "Solid Chest",
			model = 219372,
			text = {
				en = "Solid Chest",
				es = "Cofre sólido",
				de = "Robuste Truhe",
				fr = "Coffre solide",
				pt = "Baú Sólido",
				ru = "Добротный сундук",
				ko = "단단한 궤짝",
				cn = "坚固的箱子",
			},
		},
	
		[2858] = {
			readable = "Pillar of Amethyst",
			model = 199976,
			text = {
				en = "Pillar of Amethyst",
				es = "Pilar de amatista",
				de = "Amethystsäule",
				fr = "Pilier d'améthyste",
				pt = "Pilar de Ametista",
				ru = "Аметистовый столп",
				ko = "자수정 기둥",
				cn = "紫水晶石柱",
			},
		},
	
		[2866] = {
			readable = "Firebloom",
			model = 219452,
			text = {
				en = "Firebloom",
				es = "Flor de fuego",
				de = "Feuerblüte",
				fr = "Fleur de feu",
				pt = "Ignídea",
				ru = "Огнецвет",
				ko = "화염초",
				cn = "火焰花",
			},
		},
	
		[2867] = {
			readable = "Excavation Supply Crate",
			model = 198168,
			text = {
				en = "Excavation Supply Crate",
				es = "Cajón de provisiones de excavación",
				de = "Ausgrabungsgrundbedarfskiste",
				fr = "Caisse de ravitaillement pour l'excavation",
				pt = "Caixote de Suprimentos da Escavação",
				ru = "Ящик с припасами с карьера",
				ko = "발굴조사단 보급 상자",
				cn = "挖掘场补给箱",
			},
		},
	
		[2868] = {
			readable = "Crumpled Map",
			model = 198457,
			text = {
				en = "Crumpled Map",
				es = "Mapa arrugado",
				de = "Zerknitterte Karte",
				fr = "Carte chiffonnée",
				it = "Mappa Sgualcita",
				pt = "Mapa Amassado",
				ru = "Мятая карта",
				ko = "구겨진 지도",
				cn = "弄皱的地图",
			},
		},
	
		[2869] = {
			readable = "Ancient Chest",
			model = 200953,
			text = {
				en = "Ancient Chest",
			},
		},
	
		[2874] = {
			readable = "test lock object",
			model = 196998,
			text = {
				en = "test lock object",
			},
		},
	
		[2875] = {
			readable = "Battered Dwarven Skeleton",
			model = 197330,
			text = {
				en = "Battered Dwarven Skeleton",
				es = "Esqueleto de enano maltrecho",
				de = "Ramponiertes Zwergenskelett",
				fr = "Squelette de Nain décrépi",
				it = "Scheletro Danneggiato di Nano",
				pt = "Esqueleto de Anão Danificado",
				ru = "Рассыпающийся дворфийский скелет",
				ko = "훼손된 드워프 해골",
				cn = "残破的矮人骸骨",
			},
		},
	
		[2883] = {
			readable = "Ripe Pumpkin",
			model = 189409,
			text = {
				en = "Ripe Pumpkin",
				es = "Calabaza madura",
				de = "Reifer Kürbis",
				fr = "Citrouille mûre",
				pt = "Abóbora Madura",
				ru = "Спелая тыква",
				ko = "잘 여문 호박",
				cn = "熟透的南瓜",
			},
		},
	
		[2884] = {
			readable = "Clam",
			model = 196998,
			text = {
				en = "Clam",
				es = "Almeja",
				de = "Muschel",
				fr = "Palourde",
				it = "Bivalve",
				pt = "Marisco",
				ru = "Моллюск",
				ko = "조개",
				cn = "蚌壳",
			},
		},
	
		[2885] = {
			readable = "Large Crate",
			model = 198168,
			text = {
				en = "Large Crate",
			},
		},
	
		[2886] = {
			readable = "Barrel",
			model = 199737,
			text = {
				en = "Barrel",
			},
		},
	
		[2887] = {
			readable = "Cauldron",
			model = 198100,
			text = {
				en = "Cauldron",
			},
		},
	
		[2888] = {
			readable = "Woodpile",
			model = 198198,
			text = {
				en = "Woodpile",
			},
		},
	
		[2889] = {
			readable = "Powder Keg",
			model = 197463,
			text = {
				en = "Powder Keg",
			},
		},
	
		[2890] = {
			readable = "Full Mine Cart",
			model = 190256,
			text = {
				en = "Full Mine Cart",
			},
		},
	
		[2891] = {
			readable = "Balia'mah Trophy Skulls",
			model = 200638,
			text = {
				en = "Balia'mah Trophy Skulls",
				es = "Cráneos trofeo de Balia'mah",
				de = "Balia’mah-Trophäenschädel",
				fr = "Crânes trophées de Balia'mah",
				pt = "Crânios-troféu de Balia'mah",
				ru = "Трофейные черепа Балиа'ма",
				ko = "발리아마 전리품 해골",
				cn = "巴里亚曼颅骨堆",
			},
		},
	
		[2892] = {
			readable = "Ziata'jai Trophy Skulls",
			model = 200638,
			text = {
				en = "Ziata'jai Trophy Skulls",
				es = "Cráneos trofeo de Ziata'jai",
				de = "Ziata’jai-Trophäenschädel",
				fr = "Crânes trophées de Ziata'jai",
				pt = "Crânios-troféu de Ziata'jai",
				ru = "Зиата'джайские трофейные черепа",
				ko = "지아타자이 전리품 해골",
				cn = "赞塔加颅骨堆",
			},
		},
	
		[2893] = {
			readable = "Zul'Mamwe Trophy Skulls",
			model = 200638,
			text = {
				en = "Zul'Mamwe Trophy Skulls",
				es = "Cráneos trofeo de Zul'Mamwe",
				de = "Zul’Mamwe-Trophäenschädel",
				fr = "Crânes trophées de Zul'Mamwe",
				pt = "Crânios-troféu de Zul'Mamwe",
				ru = "Трофейные черепа Зулмамбве",
				ko = "줄맘웨 전리품 해골",
				cn = "祖玛维颅骨堆",
			},
		},
	
		[2895] = {
			readable = "TEST Lever",
			model = 201061,
			text = {
				en = "TEST Lever",
			},
		},
	
		[2907] = {
			readable = "Water Pitcher",
			model = 189815,
			text = {
				en = "Water Pitcher",
				es = "Jarra de agua",
				de = "Wasserkanne",
				fr = "Cruche d'eau",
				pt = "Jarra d'Água",
				ru = "Кувшин для воды",
				ko = "물병",
				cn = "水罐",
			},
		},
	
		[2908] = {
			readable = "Sealed Supply Crate",
			icon = 132763,
			model = 198167,
			text = {
				en = "Sealed Supply Crate",
				es = "Cajón de suministros sellado",
				de = "Versiegelte Vorratskiste",
				fr = "Caisse de ravitaillements scellée",
				it = "Cassa di Rifornimenti Sigillata",
				pt = "Caixote de Suprimentos Lacrado",
				ru = "Запечатанный ящик с припасами",
				ko = "도장 찍힌 보급품 상자",
				cn = "密封的补给箱",
			},
		},
	
		[2910] = {
			readable = "Well Stone",
			icon = 135238,
			model = 198947,
			text = {
				en = "Well Stone",
				es = "Piedra de pozo",
				de = "Quellstein",
				fr = "Pierre de puits",
				it = "Pietra del Pozzo",
				pt = "Pedra de Poço",
				ru = "Камень у источника",
				ko = "우물돌",
				cn = "水井石",
			},
		},
	
		[2912] = {
			readable = "Ambercorn",
			icon = 133944,
			model = 202297,
			text = {
				en = "Ambercorn",
				es = "Bellota ámbar",
				de = "Bernsteinkorn",
				fr = "Pomme de pin",
				it = "Corno d'Ambra",
				pt = "Pinhâmbar",
				ru = "Янтарное семя",
				ko = "대지열매",
				cn = "琥珀颗粒",
			},
		},
	
		[2933] = {
			readable = "Seal of the Earth",
			model = 199975,
			text = {
				en = "Seal of the Earth",
				es = "Sello de la Tierra",
				de = "Siegel der Erde",
				fr = "Sceau de la Terre",
				pt = "Selo da Terra",
				ru = "Печать земли",
				ko = "대지의 봉인",
				cn = "大地封印",
			},
		},
	
		[3076] = {
			readable = "Dirt-stained Map",
			model = 198457,
			text = {
				en = "Dirt-stained Map",
				es = "Mapa manchado",
				de = "Schmutzbefleckte Karte",
				fr = "Carte couverte de poussière",
				it = "Mappa Macchiata",
				pt = "Mapa Sujo de Terra",
				ru = "Карта с пятнами грязи",
				ko = "지저분한 지도",
				cn = "沾满泥土的地图",
			},
		},
	
		[3189] = {
			readable = "Attack Plan: Valley of Trials",
			icon = 134939,
			model = 201113,
			text = {
				en = "Attack Plan: Valley of Trials",
				es = "Plan de ataque: Valle de los Retos",
				de = "Angriffsplan: Tal der Prüfungen",
				fr = "Plan d'attaque : Vallée des Épreuves",
				it = "Piano d'Attacco: Valle delle Sfide",
				pt = "Plano de Ataque: Vale das Provações",
				ru = "План нападения на Долину Испытаний",
				ko = "공격 계획서: 시험의 골짜기",
				cn = "进攻计划：试炼谷",
			},
		},
	
		[3190] = {
			readable = "Attack Plan: Sen'jin Village",
			icon = 134939,
			model = 201113,
			text = {
				en = "Attack Plan: Sen'jin Village",
				es = "Plan de ataque: Poblado Sen'jin",
				de = "Angriffsplan: Sen'jin",
				fr = "Plan d'attaque : Village de Sen’jin",
				it = "Piano d'Attacco: Villaggio di Sen'jin",
				pt = "Plano de Ataque: Aldeia Sen'jin",
				ru = "План нападения на деревню Сен'джин",
				ko = "공격 계획서: 센진 마을",
				cn = "进攻计划：森金村",
			},
		},
	
		[3191] = {
			readable = "Attack Plan: Razor Hill",
			model = 201113,
			text = {
				en = "Attack Plan: Razor Hill",
			},
		},
	
		[3192] = {
			readable = "Attack Plan: Orgrimmar",
			icon = 134939,
			model = 201113,
			text = {
				en = "Attack Plan: Orgrimmar",
				es = "Plan de ataque: Orgrimmar",
				de = "Angriffsplan: Orgrimmar",
				fr = "Plan d'attaque : Orgrimmar",
				it = "Piano d'Attacco: Orgrimmar",
				pt = "Plano de Ataque: Orgrimmar",
				ru = "План нападения на Оргриммар",
				ko = "공격 계획서: 오그리마",
				cn = "进攻计划：奥格瑞玛",
			},
		},
	
		[3219] = {
			readable = "Scott's Cannon",
			model = 200947,
			text = {
				en = "Scott's Cannon",
			},
		},
	
		[3221] = {
			readable = "Scott's Placed Cannon",
			model = 200947,
			text = {
				en = "Scott's Placed Cannon",
			},
		},
	
		[3236] = {
			readable = "Gnomish Toolbox",
			icon = 134520,
			model = 197617,
			text = {
				en = "Gnomish Toolbox",
				es = "Caja de herramientas gnoma",
				de = "Gnomenwerkzeugkasten",
				fr = "Boîte à outils gnome",
				it = "Cassetta degli Attrezzi Gnomesca",
				pt = "Caixa de Ferramentas Gnômica",
				ru = "Ящик с гномскими инструментами",
				ko = "노움 공구상자",
				cn = "侏儒工具箱",
			},
		},
	
		[3237] = {
			readable = "Imprisoned Darkspear",
			icon = 133730,
			model = 190440,
			text = {
				en = "Imprisoned Darkspear",
				es = "Lanza Negra encarcelado",
				de = "Eingekerkerter Dunkelspeertroll",
				fr = "Sombrelance emprisonné",
				pt = "Lançanegra Aprisionado",
				ru = "Останки пленника из клана Черного Копья",
				ko = "사로잡힌 검은창부족의 영혼",
			},
		},
	
		[3238] = {
			readable = "Chen's Empty Keg",
			icon = 132623,
			model = 198006,
			text = {
				en = "Chen's Empty Keg",
				es = "Barril vacío de Chen",
				de = "Chens leeres Fässchen",
				fr = "Tonneau vide de Chen",
				pt = "Barril Vazio do Chen",
				ru = "Пустой бочонок Чена",
				ko = "첸의 빈 술통",
				cn = "老陈的空酒桶",
			},
		},
	
		[3239] = {
			readable = "Benedict's Chest",
			model = 196982,
			text = {
				en = "Benedict's Chest",
				es = "Cofre de Benedict",
				de = "Benedicts Truhe",
				fr = "Coffre de Benedict",
				pt = "Baú do Bento",
				ru = "Сундук Бенедикта",
				ko = "베네딕트의 상자",
				cn = "本尼迪克的箱子",
			},
		},
	
		[3240] = {
			readable = "Taillasher Eggs",
			icon = 132833,
			model = 199225,
			text = {
				en = "Taillasher Eggs",
				es = "Huevos de colazote",
				de = "Schwanzpeitschereier",
				fr = "Œuf de fouette-queue",
				pt = "Ovos de Açoitacauda",
				ru = "Яйца кнутохвоста",
				ko = "붉은발톱랩터 알",
				cn = "鞭尾龙的蛋",
			},
		},
	
		[3290] = {
			readable = "Stolen Supply Sack",
			icon = 133639,
			model = 200442,
			text = {
				en = "Stolen Supply Sack",
				es = "Saco de provisiones robado",
				de = "Gestohlener Vorratssack",
				fr = "Sac de ravitaillement dérobé",
				it = "Sacca di Provviste Rubate",
				pt = "Saco de Suprimentos Roubado",
				ru = "Украденный мешок с припасами",
				ko = "도둑맞은 보급품 부대",
				cn = "被偷走的补给袋",
			},
		},
	
		[3524] = {
			readable = "The Demon Seed",
			model = 201056,
			text = {
				en = "The Demon Seed",
				es = "La semilla del Demonio",
				de = "Die Dämonensaat",
				fr = "La Graine démoniaque",
				pt = "A Semente Demoníaca",
				ru = "Демоново семя",
				ko = "악마의 씨앗",
				cn = "恶魔之种",
			},
		},
	
		[3525] = {
			readable = "The Altar of Fire",
			icon = 135805,
			model = 189280,
			text = {
				en = "The Altar of Fire",
				es = "El Altar de Fuego",
				de = "Der Altar des Feuers",
				fr = "L'Autel de feu",
				it = "Altare del Fuoco",
				pt = "O Altar de Fogo",
				ru = "Алтарь Огня",
				ko = "불의 제단",
				cn = "火焰祭坛",
			},
		},
	
		[3640] = {
			readable = "Laden Mushroom",
			icon = 133848,
			model = 219476,
			text = {
				en = "Laden Mushroom",
				es = "Champiñón cargado",
				de = "Potenter Pilz",
				fr = "Champignon chargé",
				it = "Fungo Carico di Spore",
				pt = "Cogumelo Carregado",
				ru = "Спелый гриб",
				ko = "숙성한 버섯",
				cn = "丰满的蘑菇",
			},
		},
	
		[3642] = {
			readable = "Kolkars' Booty",
			model = 196979,
			text = {
				en = "Kolkars' Booty",
				es = "Botín Kolkar",
				de = "Kolkars Beute",
				fr = "Butin des Kolkar",
				pt = "Butim de Kolkar",
				ru = "Добыча Колкара",
				ko = "콜카르 노획물 궤짝",
				cn = "科卡尔的战利品",
			},
		},
	
		[3643] = {
			readable = "Old Footlocker",
			model = 198238,
			text = {
				en = "Old Footlocker",
				es = "Baúl antiguo",
				de = "Alte Schließkiste",
				fr = "Vieille cantine",
				it = "Vecchio Scrigno",
				pt = "Maleta Velha",
				ru = "Старый сундучок",
				ko = "낡은 사물함",
				cn = "旧提箱",
			},
		},
	
		[3644] = {
			readable = "Bael Modan Flying Machine",
			icon = 133714,
			model = 201006,
			text = {
				en = "Bael Modan Flying Machine",
				es = "Máquina voladora de Bael Modan",
				de = "Flugapparat von Bael Modan",
				fr = "Machine volante de Bael Modan",
				pt = "Máquina Voadora de Bael Modan",
				ru = "Бейлмоданский ветролет",
				ko = "바엘 모단 비행기",
				cn = "巴尔莫丹飞行器",
			},
		},
	
		[3645] = {
			readable = "Ripe Watermelon",
			model = 201142,
			text = {
				en = "Ripe Watermelon",
			},
		},
	
		[3646] = {
			readable = "General Twinbraid's Strongbox",
			icon = 134075,
			model = 196976,
			text = {
				en = "General Twinbraid's Strongbox",
				es = "Caja fuerte del general Trenzado",
				de = "Geldkassette von General Doppelzopf",
				fr = "Coffre du général Doublenattes",
				pt = "Cofre do General Duas-tranças",
				ru = "Сейф генерала Двукоссы",
				ko = "트윈브레이드 장군의 금고",
			},
		},
	
		[3657] = {
			readable = "Abandoned Mine Car",
			model = 201072,
			text = {
				en = "Abandoned Mine Car",
			},
		},
	
		[3658] = {
			readable = "Water Barrel",
			model = 200884,
			text = {
				en = "Water Barrel",
				es = "Barril de Agua",
				de = "Wasserfass",
				fr = "Tonneau d'eau",
				pt = "Barril de Água",
				ru = "Бочка с водой",
				ko = "물통",
				cn = "水桶",
			},
		},
	
		[3659] = {
			readable = "Barrel of Melon Juice",
			model = 200884,
			text = {
				en = "Barrel of Melon Juice",
				es = "Barril de zumo de melón",
				de = "Fass Melonensaft",
				fr = "Tonneau de jus de melon",
				pt = "Barril de Suco de Melão",
				ru = "Бочка дынного сока",
				ko = "멜론 주스통",
				cn = "一桶果汁",
			},
		},
	
		[3660] = {
			readable = "Armor Crate",
			model = 200960,
			text = {
				en = "Armor Crate",
				es = "Cajón de armaduras",
				de = "Rüstungskiste",
				fr = "Caisse d'armures",
				pt = "Caixote de Armaduras",
				ru = "Оружейный ящик",
				ko = "방어구 상자",
				cn = "铠甲箱",
			},
		},
	
		[3661] = {
			readable = "Weapon Crate",
			model = 200960,
			text = {
				en = "Weapon Crate",
				es = "Cajón de armas",
				de = "Waffenkiste",
				fr = "Caisse d'armes",
				pt = "Caixote de Armas",
				ru = "Ящик с оружием",
				ko = "무기 상자",
				cn = "武器箱",
			},
		},
	
		[3662] = {
			readable = "Food Crate",
			model = 200961,
			text = {
				en = "Food Crate",
				es = "Cajón de comida",
				de = "Nahrungsmittelkiste",
				fr = "Caisse de nourriture",
				pt = "Caixote de Comida",
				ru = "Ящик со съестными припасами",
				ko = "음식 상자",
				cn = "食品箱",
			},
		},
	
		[3666] = {
			readable = "Test Goober Barrel",
			model = 200884,
			text = {
				en = "Test Goober Barrel",
			},
		},
	
		[3667] = {
			readable = "Test Goober bombwagon",
			model = 200898,
			text = {
				en = "Test Goober bombwagon",
			},
		},
	
		[3668] = {
			readable = "Test Goober Book01",
			model = 200900,
			text = {
				en = "Test Goober Book01",
			},
		},
	
		[3669] = {
			readable = "Test Goober BookOpenMedium01",
			model = 200912,
			text = {
				en = "Test Goober BookOpenMedium01",
			},
		},
	
		[3670] = {
			readable = "Test Goober BookTrapArm",
			model = 200916,
			text = {
				en = "Test Goober BookTrapArm",
			},
		},
	
		[3671] = {
			readable = "Test Goober BittpmBigRed",
			model = 200936,
			text = {
				en = "Test Goober BittpmBigRed",
			},
		},
	
		[3672] = {
			readable = "Test Goober Cannon01",
			model = 200947,
			text = {
				en = "Test Goober Cannon01",
			},
		},
	
		[3673] = {
			readable = "Test Goober Crate01",
			model = 200960,
			text = {
				en = "Test Goober Crate01",
			},
		},
	
		[3674] = {
			readable = "Test Goober Crate02",
			model = 200961,
			text = {
				en = "Test Goober Crate02",
			},
		},
	
		[3675] = {
			readable = "Test Goober DwarvenMemorial",
			model = 200971,
			text = {
				en = "Test Goober DwarvenMemorial",
			},
		},
	
		[3676] = {
			readable = "Test Goober FlyingMachine",
			model = 201006,
			text = {
				en = "Test Goober FlyingMachine",
			},
		},
	
		[3677] = {
			readable = "Test Goober JewelRed",
			model = 201056,
			text = {
				en = "Test Goober JewelRed",
			},
		},
	
		[3678] = {
			readable = "Test Goober LeverMetal",
			model = 201061,
			text = {
				en = "Test Goober LeverMetal",
			},
		},
	
		[3679] = {
			readable = "Test Goober MineCar",
			model = 201072,
			text = {
				en = "Test Goober MineCar",
			},
		},
	
		[3680] = {
			readable = "Test Goober RuneBlue",
			model = 201101,
			text = {
				en = "Test Goober RuneBlue",
			},
		},
	
		[3681] = {
			readable = "Test Goober RuneGroundBlue",
			model = 201103,
			text = {
				en = "Test Goober RuneGroundBlue",
			},
		},
	
		[3682] = {
			readable = "Test Goober Scroll01",
			model = 201113,
			text = {
				en = "Test Goober Scroll01",
			},
		},
	
		[3683] = {
			readable = "Test Goober Torch01",
			model = 201129,
			text = {
				en = "Test Goober Torch01",
			},
		},
	
		[3684] = {
			readable = "Test Goober Watermelon",
			model = 201142,
			text = {
				en = "Test Goober Watermelon",
			},
		},
	
		[3685] = {
			readable = "Silithid Mound",
			icon = 132834,
			model = 201386,
			text = {
				en = "Silithid Mound",
				es = "Montículo de silítidos",
				de = "Silithid-Buckel",
				fr = "Antre des silithides",
				pt = "Monte de Terra Silitídeo",
				ru = "Курган силитида",
				ko = "실리시드 흙더미",
				cn = "异种蝎土丘",
			},
		},
	
		[3689] = {
			readable = "Weapon Crate",
			model = 200960,
			text = {
				en = "Weapon Crate",
				es = "Cajón de armas",
				de = "Waffenkiste",
				fr = "Caisse d'armes",
				pt = "Caixote de Armas",
				ru = "Ящик с оружием",
				ko = "무기 상자",
				cn = "武器箱",
			},
		},
	
		[3690] = {
			readable = "Food Crate",
			model = 200961,
			text = {
				en = "Food Crate",
				es = "Cajón de comida",
				de = "Nahrungsmittelkiste",
				fr = "Caisse de nourriture",
				pt = "Caixote de Comida",
				ru = "Ящик со съестными припасами",
				ko = "음식 상자",
			},
		},
	
		[3691] = {
			readable = "Food Crate",
			model = 200961,
			text = {
				en = "Food Crate",
				es = "Cajón de comida",
				de = "Nahrungsmittelkiste",
				fr = "Caisse de nourriture",
				pt = "Caixote de Comida",
				ru = "Ящик со съестными припасами",
				ko = "음식 상자",
				cn = "食品箱",
			},
		},
	
		[3692] = {
			readable = "Food Crate",
			model = 200961,
			text = {
				en = "Food Crate",
			},
		},
	
		[3693] = {
			readable = "Food Crate",
			model = 200961,
			text = {
				en = "Food Crate",
				es = "Cajón de comida",
				de = "Nahrungsmittelkiste",
				fr = "Caisse de nourriture",
				pt = "Caixote de Comida",
				ru = "Ящик со съестными припасами",
				ko = "음식 상자",
				cn = "食品箱",
			},
		},
	
		[3694] = {
			readable = "Food Crate",
			model = 200961,
			text = {
				en = "Food Crate",
				es = "Cajón de comida",
				de = "Nahrungsmittelkiste",
				fr = "Caisse de nourriture",
				pt = "Caixote de Comida",
				ru = "Ящик со съестными припасами",
				ko = "음식 상자",
				cn = "食品箱",
			},
		},
	
		[3695] = {
			readable = "Food Crate",
			model = 200961,
			text = {
				en = "Food Crate",
				es = "Cajón de comida",
				de = "Nahrungsmittelkiste",
				fr = "Caisse de nourriture",
				pt = "Caixote de Comida",
				ru = "Ящик со съестными припасами",
				ko = "음식 상자",
				cn = "食品箱",
			},
		},
	
		[3696] = {
			readable = "Food Crate",
			model = 200961,
			text = {
				en = "Food Crate",
			},
		},
	
		[3697] = {
			readable = "Food Crate",
			model = 200961,
			text = {
				en = "Food Crate",
			},
		},
	
		[3698] = {
			readable = "Food Crate",
			model = 200961,
			text = {
				en = "Food Crate",
			},
		},
	
		[3699] = {
			readable = "Food Crate",
			model = 200961,
			text = {
				en = "Food Crate",
			},
		},
	
		[3701] = {
			readable = "Food Crate",
			model = 200961,
			text = {
				en = "Food Crate",
			},
		},
	
		[3702] = {
			readable = "Armor Crate",
			model = 200960,
			text = {
				en = "Armor Crate",
				es = "Cajón de armaduras",
				de = "Rüstungskiste",
				fr = "Caisse d'armures",
				pt = "Caixote de Armaduras",
				ru = "Оружейный ящик",
				ko = "방어구 상자",
				cn = "铠甲箱",
			},
		},
	
		[3703] = {
			readable = "Armor Crate",
			model = 200960,
			text = {
				en = "Armor Crate",
				es = "Cajón de armaduras",
				de = "Rüstungskiste",
				fr = "Caisse d'armures",
				pt = "Caixote de Armaduras",
				ru = "Оружейный ящик",
				ko = "방어구 상자",
				cn = "铠甲箱",
			},
		},
	
		[3704] = {
			readable = "Weapon Crate",
			model = 200960,
			text = {
				en = "Weapon Crate",
				es = "Cajón de armas",
				de = "Waffenkiste",
				fr = "Caisse d'armes",
				pt = "Caixote de Armas",
				ru = "Ящик с оружием",
				ko = "무기 상자",
				cn = "武器箱",
			},
		},
	
		[3705] = {
			readable = "Barrel of Milk",
			model = 200884,
			text = {
				en = "Barrel of Milk",
				es = "Barril de leche",
				de = "Fass mit Milch",
				fr = "Tonneau de lait",
				pt = "Barril de Leite",
				ru = "Бочка молока",
				ko = "우유통",
				cn = "一桶牛奶",
			},
		},
	
		[3706] = {
			readable = "Barrel of Sweet Nectar",
			model = 200884,
			text = {
				en = "Barrel of Sweet Nectar",
				es = "Barril de néctar dulce",
				de = "Fass mit süßem Nektar",
				fr = "Tonneau de nectar sucré",
				pt = "Barril de Néctar Doce",
				ru = "Бочка сладкого нектара",
				ko = "달콤한 과즙통",
				cn = "一桶蜂蜜酒",
			},
		},
	
		[3707] = {
			readable = "Food Crate",
			model = 200961,
			text = {
				en = "Food Crate",
				es = "Cajón de comida",
				de = "Nahrungsmittelkiste",
				fr = "Caisse de nourriture",
				pt = "Caixote de Comida",
				ru = "Ящик со съестными припасами",
				ko = "음식 상자",
				cn = "食品箱",
			},
		},
	
		[3708] = {
			readable = "Food Crate",
			model = 200961,
			text = {
				en = "Food Crate",
			},
		},
	
		[3709] = {
			readable = "Food Crate",
			model = 200961,
			text = {
				en = "Food Crate",
			},
		},
	
		[3710] = {
			readable = "Food Crate",
			model = 200961,
			text = {
				en = "Food Crate",
			},
		},
	
		[3712] = {
			readable = "Food Crate",
			model = 200961,
			text = {
				en = "Food Crate",
			},
		},
	
		[3713] = {
			readable = "Food Crate",
			model = 200961,
			text = {
				en = "Food Crate",
			},
		},
	
		[3714] = {
			readable = "Alliance Strongbox",
			model = 219372,
			text = {
				en = "Alliance Strongbox",
				es = "Caja fuerte de la Alianza",
				de = "Geldkassette der Allianz",
				fr = "Coffre de l'Alliance",
				pt = "Caixa-forte da Aliança",
				ru = "Сейф Альянса",
				ko = "얼라이언스 금고",
				cn = "联盟保险箱",
			},
		},
	
		[3715] = {
			readable = "Alliance Chest",
			model = 219372,
			text = {
				en = "Alliance Chest",
				es = "Cofre de la Alianza",
				de = "Truhe der Allianz",
				fr = "Coffre de l'Alliance",
				pt = "Baú da Aliança",
				ru = "Сундук Альянса",
				ko = "얼라이언스 궤짝",
				cn = "联盟宝箱",
			},
		},
	
		[3719] = {
			readable = "Food Crate",
			model = 200961,
			text = {
				en = "Food Crate",
				es = "Cajón de comida",
				de = "Nahrungsmittelkiste",
				fr = "Caisse de nourriture",
				pt = "Caixote de Comida",
				ru = "Ящик со съестными припасами",
				ko = "음식 상자",
				cn = "食品箱",
			},
		},
	
		[3724] = {
			readable = "Peacebloom",
			model = 219481,
			text = {
				en = "Peacebloom",
				es = "Flor de paz",
				de = "Friedensblume",
				fr = "Pacifique",
				pt = "Botão-da-paz",
				ru = "Мироцвет",
				ko = "평온초",
				cn = "宁神花",
			},
		},
	
		[3725] = {
			readable = "Silverleaf",
			model = 219487,
			text = {
				en = "Silverleaf",
				es = "Hojaplata",
				de = "Silberblatt",
				fr = "Feuillargent",
				pt = "Folha-prata",
				ru = "Сребролист",
				ko = "은엽수 덤불",
				cn = "银叶草",
			},
		},
	
		[3726] = {
			readable = "Earthroot",
			model = 219489,
			text = {
				en = "Earthroot",
				es = "Raíz de tierra",
				de = "Erdwurzel",
				fr = "Terrestrine",
				pt = "Raiz-telúrica",
				ru = "Землекорень",
				ko = "뱀뿌리",
				cn = "地根草",
			},
		},
	
		[3727] = {
			readable = "Mageroyal",
			model = 219470,
			text = {
				en = "Mageroyal",
				es = "Marregal",
				de = "Maguskönigskraut",
				fr = "Mage royal",
				pt = "Magi-real",
				ru = "Магороза",
				ko = "마법초",
				cn = "魔皇草",
			},
		},
	
		[3729] = {
			readable = "Briarthorn",
			model = 219502,
			text = {
				en = "Briarthorn",
				es = "Brezospina",
				de = "Wilddornrose",
				fr = "Eglantine",
				pt = "Cravespinho",
				ru = "Остротерн",
				ko = "찔레가시",
				cn = "石南草",
			},
		},
	
		[3730] = {
			readable = "Bruiseweed",
			model = 219440,
			text = {
				en = "Bruiseweed",
				es = "Hierba cardenal",
				de = "Beulengras",
				fr = "Doulourante",
				pt = "Ervamossa",
				ru = "Синячник",
				ko = "생채기풀",
				cn = "跌打草",
			},
		},
	
		[3731] = {
			readable = "Test Goober Crate01-a",
			model = 200960,
			text = {
				en = "Test Goober Crate01-a",
			},
		},
	
		[3732] = {
			readable = "Test Goober Crate02-a",
			model = 200961,
			text = {
				en = "Test Goober Crate02-a",
			},
		},
	
		[3734] = {
			readable = "Test Goober Fissure",
			model = 201001,
			text = {
				en = "Test Goober Fissure",
			},
		},
	
		[3735] = {
			readable = "Test Goober AlchemySet01",
			model = 200877,
			text = {
				en = "Test Goober AlchemySet01",
			},
		},
	
		[3736] = {
			readable = "Test Goober Fissure -a",
			model = 201001,
			text = {
				en = "Test Goober Fissure -a",
			},
		},
	
		[3737] = {
			readable = "Bubbling Fissure",
			icon = 133849,
			model = 201001,
			text = {
				en = "Bubbling Fissure",
				es = "Fisura burbujeante",
				de = "Blubbernder Felsspalt",
				fr = "Fissure bouillonnante",
				it = "Fessura Ribollente",
				pt = "Rachadura Borbulhante",
				ru = "Бурлящая расщелина",
				ko = "거품이 나오는 균열",
				cn = "冒泡的裂隙",
			},
		},
	
		[3740] = {
			readable = "Bubbling Fissure",
			model = 201001,
			text = {
				en = "Bubbling Fissure",
				es = "Fisura burbujeante",
				de = "Blubbernder Felsspalt",
				fr = "Fissure bouillonnante",
				pt = "Rachadura Borbulhante",
				ru = "Бурлящая расщелина",
				ko = "거품이 나오는 균열",
				cn = "冒泡的裂隙",
			},
		},
	
		[3743] = {
			readable = "Fissure Plant",
			model = 189772,
			text = {
				en = "Fissure Plant",
				es = "Planta de la fisura",
				de = "Felsspaltenpflanze",
				fr = "Plante des crevasses",
				pt = "Planta da Fenda",
				ru = "Ущельник",
				ko = "균열 식물",
				cn = "裂开的植物",
			},
		},
	
		[3763] = {
			readable = "Copper Vein",
			model = 219514,
			text = {
				en = "Copper Vein",
				es = "Filón de cobre",
				de = "Kupfervorkommen",
				fr = "Filon de cuivre",
				pt = "Veio de Cobre",
				ru = "Медная жила",
				ko = "구리 광맥",
				cn = "铜矿",
			},
		},
	
		[3764] = {
			readable = "Tin Vein",
			model = 219568,
			text = {
				en = "Tin Vein",
				es = "Filón de estaño",
				de = "Zinnvorkommen",
				fr = "Filon d'étain",
				pt = "Veio de Estanho",
				ru = "Оловянная Жила",
				ko = "주석 광맥",
				cn = "锡矿",
			},
		},
	
		[3767] = {
			readable = "Drizzlik's Emporium",
			icon = 134143,
			model = 198168,
			text = {
				en = "Drizzlik's Emporium",
				es = "Emporio de Drizzlik",
				de = "Drizzliks Kaufhaus",
				fr = "Marché de Drizzlik",
				pt = "Empório de Drizzlik",
				ru = "Ящик c пометкой \"Лавка Дриззлика\"",
				ko = "드리즐릭 잡화상자",
				cn = "崔斯里克的货物",
			},
		},
	
		[3768] = {
			readable = "Fragile - Do Not Drop",
			icon = 134442,
			model = 198158,
			text = {
				en = "Fragile - Do Not Drop",
				es = "Frágil: evitar golpes",
				de = "Zerbrechlich - nicht fallen lassen",
				fr = "Fragile – Ne pas jeter",
				pt = "Frágil - Não Deixe Cair",
				ru = "Ящик с пометкой \"Хрупкое! Не ронять!\"",
				ko = "취급 주의",
				cn = "易碎品",
			},
		},
	
		[3972] = {
			readable = "WANTED",
			icon = 134939,
			model = 199424,
			text = {
				en = "WANTED",
				es = "SE BUSCA",
				de = "GESUCHT",
				fr = "AVIS DE RECHERCHE",
				it = "RICERCATO",
				pt = "PROCURA-SE",
				ru = "РАЗЫСКИВАЕТСЯ",
				ko = "현상 수배!",
				cn = "通缉",
			},
		},
	
		[4072] = {
			readable = "Main Control Valve",
			icon = 134063,
			model = 198618,
			text = {
				en = "Main Control Valve",
				es = "Válvula de control principal",
				de = "Hauptsteuerventil",
				fr = "Valve de contrôle principale",
				it = "Valvola di Controllo Principale",
				pt = "Válvula Principal",
				ru = "Главный клапан управления",
				ko = "주제어 밸브",
				cn = "主控制阀",
			},
		},
	
		[4095] = {
			readable = "Alliance Strongbox",
			model = 219372,
			text = {
				en = "Alliance Strongbox",
			},
		},
	
		[4096] = {
			readable = "Alliance Chest",
			model = 219372,
			text = {
				en = "Alliance Chest",
				es = "Cofre de la Alianza",
				de = "Truhe der Allianz",
				fr = "Coffre de l'Alliance",
				pt = "Baú da Aliança",
				ru = "Сундук Альянса",
				ko = "얼라이언스 궤짝",
				cn = "联盟宝箱",
			},
		},
	
		[4141] = {
			readable = "Control Console",
			icon = 134063,
			model = 197760,
			text = {
				en = "Control Console",
				es = "Consola de control",
				de = "Steuerkonsole",
				fr = "Console de contrôle",
				it = "Console di Comando",
				pt = "Painel de Controle",
				ru = "Панель управления",
				ko = "제어 장치",
				cn = "控制台",
			},
		},
	
		[4148] = {
			readable = "Mithril Bound Chest",
			model = 219372,
			text = {
				en = "Mithril Bound Chest",
			},
		},
	
		[4149] = {
			readable = "Solid Chest",
			model = 219372,
			text = {
				en = "Solid Chest",
				es = "Cofre sólido",
				de = "Robuste Truhe",
				fr = "Coffre solide",
				pt = "Baú Sólido",
				ru = "Добротный сундук",
				ko = "단단한 궤짝",
				cn = "坚固的箱子",
			},
		},
	
		[4166] = {
			readable = "Alchemical Implements",
			model = 200877,
			text = {
				en = "Alchemical Implements",
				es = "Instrumentos de alquimia",
				de = "Alchimie-Gerätschaften",
				fr = "Matériel d'alchimie",
				pt = "Ferramentas Alquímicas",
				ru = "Алхимическое оборудование",
				ko = "연금술 실험기구",
				cn = "炼金材料店",
			},
		},
	
		[4170] = {
			readable = "Mesa Elevator",
			model = 202316,
			text = {
				en = "Mesa Elevator",
				es = "Elevador de la mesa",
				de = "Mesafahrstuhl",
				fr = "Ascenseur de Mesa",
				it = "Ascensore della Mesa",
				pt = "Elevador da Chapada",
				ru = "Подъемник на нагорье",
				ko = "절벽 승강기",
				cn = "台地升降梯",
			},
		},
	
		[4171] = {
			readable = "Mesa Elevator",
			model = 202316,
			text = {
				en = "Mesa Elevator",
				es = "Elevador de la mesa",
				de = "Mesafahrstuhl",
				fr = "Ascenseur de Mesa",
				it = "Ascensore della Mesa",
				pt = "Elevador da Chapada",
				ru = "Подъемник на нагорье",
				ko = "절벽 승강기",
				cn = "台地升降梯",
			},
		},
	
		[4406] = {
			readable = "Webwood Eggs",
			icon = 132833,
			model = 200974,
			text = {
				en = "Webwood Eggs",
				es = "Huevos de Tejemadera",
				de = "Waldwebereier",
				fr = "Œufs d'araignées Tissebois",
				it = "Uova di Telalegno",
				pt = "Ovos de Lenhateia",
				ru = "Яйца чащобного тенетника",
				ko = "나무그물거미알",
				cn = "树林蜘蛛的卵",
			},
		},
	
		[4608] = {
			readable = "Timberling Sprout",
			icon = 136065,
			model = 201087,
			text = {
				en = "Timberling Sprout",
				es = "Brote de Brezomadera",
				de = "Bäumlingsspross",
				fr = "Pousse de sylvain",
				it = "Germoglio di Alberiano",
				pt = "Broto de Muscoide",
				ru = "Побег древесника",
				ko = "나무괴물 씨눈",
				cn = "林精的新芽",
			},
		},
	
		[5619] = {
			readable = "Flawed Power Stone",
			model = 198947,
			text = {
				en = "Flawed Power Stone",
				es = "Piedra de poder imperfecta",
				de = "Fehlerhafter Kraftstein",
				fr = "Pierre de puissance imparfaite",
				pt = "Pedra do Poder Defeituosa",
				ru = "Треснувший камень силы",
				ko = "혼란의 마법석",
				cn = "有瑕疵的能量石",
			},
		},
	
		[5620] = {
			readable = "Flawed Power Stones",
			icon = 134095,
			model = 198947,
			text = {
				en = "Flawed Power Stones",
				es = "Piedras de energía imperfectas",
				de = "Fehlerhafte Kraftsteine",
				fr = "Pierres de puissance imparfaites",
				it = "Pietre del Potere Difettose",
				pt = "Pedras do Poder Defeituosas",
				ru = "Силовой камень с изъяном",
				ko = "혼란의 마법석",
				cn = "有裂痕的能量石",
			},
		},
	
		[5621] = {
			readable = "Flawed Power Stones",
			model = 198947,
			text = {
				en = "Flawed Power Stones",
				es = "Piedras de energía imperfectas",
				de = "Fehlerhafte Kraftsteine",
				fr = "Pierres de puissance imparfaites",
				pt = "Pedras do Poder Defeituosas",
				ru = "Камень силы с изъяном",
				ko = "혼란의 마법석",
				cn = "有裂痕的能量石",
			},
		},
	
		[6751] = {
			readable = "Strange Fruited Plant",
			icon = 134220,
			model = 190381,
			text = {
				en = "Strange Fruited Plant",
				es = "Planta con extraños frutos",
				de = "Sonderbare fruchtbeladene Pflanze",
				fr = "Plante aux fruits étranges",
				it = "Strana Pianta da Frutto",
				pt = "Planta Frutífera Estranha",
				ru = "Чудоягодник",
				ko = "이상한 열매의 식물",
				cn = "奇怪的果树",
			},
		},
	
		[6752] = {
			readable = "Strange Fronded Plant",
			icon = 960672,
			model = 190380,
			text = {
				en = "Strange Fronded Plant",
				es = "Planta con extrañas hojas",
				de = "Sonderbare wedelbestückte Pflanze",
				fr = "Plantes aux feuilles étranges",
				it = "Strana Pianta Frondosa",
				pt = "Planta Frondosa Estranha",
				ru = "Растение со странными листьями",
				ko = "이상한 잎의 식물",
				cn = "奇怪的树木",
			},
		},
	
		[6906] = {
			readable = "Red Raptor Nest",
			icon = 294479,
			model = 199223,
			text = {
				en = "Red Raptor Nest",
				es = "Nido de raptor rojo",
				de = "Rotraptornest",
				fr = "Nid de raptor rouge",
				pt = "Ninho de Raptor Vermelho",
				ru = "Гнездо красного ящера",
				ko = "붉은 랩터 둥지",
				cn = "红色迅猛龙巢穴",
			},
		},
	
		[6907] = {
			readable = "Blue Raptor Nest",
			icon = 294479,
			model = 199223,
			text = {
				en = "Blue Raptor Nest",
				es = "Nido de raptor azul",
				de = "Blauraptornest",
				fr = "Nid de raptor bleu",
				pt = "Ninho de Raptor Azul",
				ru = "Гнездо синего ящера",
				ko = "파란 랩터 둥지",
				cn = "蓝色迅猛龙巢穴",
			},
		},
	
		[6908] = {
			readable = "Yellow Raptor Nest",
			icon = 294479,
			model = 199223,
			text = {
				en = "Yellow Raptor Nest",
				es = "Nido de raptor amarillo",
				de = "Gelbraptornest",
				fr = "Nid de raptor jaune",
				pt = "Ninho de Raptor Amarelo",
				ru = "Гнездо желтого ящера",
				ko = "노란 랩터 둥지",
				cn = "黄色迅猛龙巢穴",
			},
		},
	
		[7510] = {
			readable = "Sprouted Frond",
			icon = 458173,
			model = 189772,
			text = {
				en = "Sprouted Frond",
				es = "Fronda crecida",
				de = "Sprießender Wedel",
				fr = "Racine éclose",
				it = "Pianta Rigogliosa",
				pt = "Fronde Desenvolvida",
				ru = "Росток папоротника",
				ko = "싹튼 잎",
				cn = "发芽的树叶",
			},
		},
	
		[7923] = {
			readable = "Denalan's Planter",
			model = 198398,
			text = {
				en = "Denalan's Planter",
				es = "Maceta de Denalan",
				de = "Denalans Blumentopf",
				fr = "Pot de Denalan",
				pt = "Sementeira do Denalan",
				ru = "Кадка Деналана",
				ko = "데날란의 화분",
				cn = "德纳兰的培养皿",
			},
		},
	
		[9630] = {
			readable = "Flagongut's Fossil",
			model = 197456,
			text = {
				en = "Flagongut's Fossil",
				es = "Fósil de Gargavino",
				de = "Flagonguts Fossil",
				fr = "Fossile de Flagongut",
				pt = "Fóssil do Pançacheia",
				ru = "Окаменелость Бутылопуза",
				ko = "플라곤구트의 화석",
				cn = "弗拉冈特的化石",
			},
		},
})
do ObjectDB[objectID] = objectData; end
