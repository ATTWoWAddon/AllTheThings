-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------
GREAT_ODYN_AND_THE_FIRELORD = createHeader({
	readable = "Great Odyn and the Firelord",
	icon = 237446,
	text = {
		en = "Great Odyn and the Firelord",
		es = "El gran Odyn y el Señor del Fuego",
		de = "Der große Odyn und der Feuerlord",
		fr = "Le grand Odyn et le seigneur du feu",
		pt = "O Grande Odyn e o Senhor do Fogo",
		ru = "Великий Один и Повелитель Огня",
		cn = "伟大的奥丁与炎魔之王",
	},
});
THE_WANDERER_AND_THE_SERPENT = createHeader({
	readable = "The Wanderer and the Serpent",
	icon = 237446,
	text = {
		en = "The Wanderer and the Serpent",
		es = "El nómada y la serpiente",
		de = "Der Wanderer und die Schlange",
		pt = "O Andarilho e a Serpente",
		ru = "Странник и змей",
		cn = "流浪者与蛇",
	},
});
HALLS_OF_GOLD_AND_GLORY = createHeader({
	readable = "Halls of Gold and Glory",
	icon = 237446,
	text = {
		en = "Halls of Gold and Glory",
		es = "Cámaras de oro y gloria",
		de = "Hallen des Goldes und des Ruhmes",
		pt = "Os Salões de Ouro e Glória",
		ru = "Чертоги золота и славы",
		cn = "黄金与荣耀的殿堂",
	},
});
THE_KEEPERS_EYE = createHeader({
	readable = "The Keeper's Eye",
	icon = 237446,
	text = {
		en = "The Keeper's Eye",
		es = "El ojo del guardián",
		de = "Das Auge des Hüters",
		pt = "O Olho do Guardião",
		ru = "Глаз Хранителя",
		cn = "守护者之眼",
	},
});
FIRST_OF_THE_VALKYR = createHeader({
	readable = "First of the Val'kyr",
	icon = 237446,
	text = {
		en = "First of the Val'kyr",
		es = "La primera Val'kyr",
		de = "Die erste der Val'kyr",
		pt = "A Primeira das Val'kyren",
		ru = "Первая из валь'кир",
		cn = "首位瓦格里",
	},
});
THE_SEALING_OF_THE_HALLS_OF_VALOR = createHeader({
	readable = "The Sealing of the Halls of Valor",
	icon = 237446,
	text = {
		en = "The Sealing of the Halls of Valor",
		es = "El sello de las Cámaras del Valor",
		de = "Die Versiegelung der Hallen der Tapferkeit",
		pt = "O Selamento dos Salões da Bravura",
		ru = "Печать на Чертогах Доблести",
		cn = "封印英灵殿",
	},
});
HIS_NAME_IS_DRAGONBLOOD = createHeader({
	readable = "His Name Is Dragonblood",
	icon = 237446,
	text = {
		en = "His Name Is Dragonblood",
		es = "Se llama Sangredragón",
		fr = "Il s’appelait Sang de dragon",
		pt = "Ele se chama Sangue de Dragão",
		ru = "Октель Драконья Кровь",
		cn = "他名叫龙血",
	},
});
THE_LAST_WORDS_OF_ASGRIM_THE_DREADKILLER = createHeader({
	readable = "The Last Words of Asgrim the Dreadkiller",
	icon = 237446,
	text = {
		en = "The Last Words of Asgrim the Dreadkiller",
		es = "Las últimas palabras de Asgrim el Mataterrador",
		fr = "Les dernières paroles d’Asgrim le Tueur de l’effroi",
		pt = "As Últimas Palavras de Asgrim, o Algoz Medonho",
		ru = "Последние слова Азгрима Смертоубийцы",
		cn = "亡灵杀手艾斯格里姆的遗言",
	},
});
A_SHIELDMAIDENS_CREED = createHeader({
	readable = "A Shieldmaiden's Creed",
	icon = 237446,
	text = {
		en = "A Shieldmaiden's Creed",
		es = "El credo de una doncella escudera",
		fr = "Le credo de la vierge guerrière",
		pt = "A Crença de uma Dama Escudeira",
		ru = "Кредо девы щита",
		cn = "女武神的信条",
	},
});
THE_PROPHECY_OF_RYTHAS_THE_ORACLE = createHeader({
	readable = "The Prophecy of Rythas the Oracle",
	icon = 237446,
	text = {
		en = "The Prophecy of Rythas the Oracle",
		es = "La profecía de Rythas el Oráculo",
		fr = "La prophétie de Rythas l’Oracle",
		pt = "A Profecia de Rythas, o Oráculo",
		ru = "Пророчество Райтаса Провидца",
		cn = "神谕者莱萨斯的预言",
	},
});
THE_LESSONS_OF_THE_BLACKFIST = createHeader({
	readable = "The Lessons of the Blackfist",
	icon = 237446,
	text = {
		en = "The Lessons of the Blackfist",
		es = "Las lecciones de Puño Opaco",
		fr = "Les leçons du poing noir",
		pt = "As Lições do Punho Negro",
		ru = "Уроки Черного Кулака",
		cn = "黑拳的教诲",
	},
});
VOLUNDS_FOLLY = createHeader({
	readable = "Volund's Folly",
	icon = 237446,
	text = {
		en = "Volund's Folly",
		es = "La locura de Volund",
		fr = "La folie de Volund",
		pt = "A Tolice de Volund",
		ru = "Безрассудный Волунд",
		cn = "沃伦德的愚行",
	},
});
root(ROOTS.ExpansionFeatures, expansion(EXPANSION.LEGION, bubbleDown({ ["timeline"] = { ADDED_7_0_3 } }, {
	n(CLASS_HALL, {
		cl(WARRIOR, bubbleDownSelf({ ["classes"] = { WARRIOR } }, {
			["maps"] = { SKYHOLD },
			["g"] = {
				n(ARTIFACTS, {
					cl(WARRIOR, ARMS, {
						q(43643, {	-- Secrets of the Axes
							["coord"] = { 41.0, 37.1, SKYHOLD },
							["provider"] = { "n", 96586 },	-- Master Smith Helgar
							["description"] = "Every day, there is a chance that speaking to Master Smith Helgar will offer a dialogue option, \"Is there an axe the equal to Strom'kar?\", which will end with being offered the quest Secrets of the Axes. When this quest is active, it is active region-wide, and everyone will have access to it for that day.\n\nThis sends you to speak to High Overlord Saurfang at Krasus' Landing in Dalaran. When done, jump back up to Skyhold and speak again to Master Smith Helgar, who will send you to the Circle of Wills to duel Saurfang.",
							["g"] = {
								i(139578, {	-- The Arcanite Bladebreaker
									artifact(908),	-- Strom'kar, the Warbreaker
								}),
							},
						}),
					}),
					cl(WARRIOR, FURY, {
						i(139579, {	-- The Dragonslayers
							["cost"] = {
								{ "i", 140660, 1 },	-- Haft of the God-King
								{ "i", 140658, 1 },	-- Skull of Nithogg
								{ "i", 140659, 1 },	-- Skull of Shar'thos
							},
							["g"] = {
								artifact(964),	-- Warswords of the Valarjar [Main Hand]
								-- artifact(964),	-- Warswords of the Valarjar [Off Hand]
							},
						}),
					}),
					cl(WARRIOR, PROTECTION, {
						["description"] = "Read the Saga of the Valajar tablet (right behind your AK research guy) in your Order Hall first.\nGo to Highmount and go forward into the cave until the zone changes to \"Neltharions Vault\" (just to make sure, the next step can already trigger in front of the cave)\nIf you see the chat emote \"You hear a strange roar from the cavern ahead\"(May not be seen anymore as of 9.1.0) carefully search all gold piles for your appreance (it can be on multiple locations, so search carefully)\nIf you do not see that emote, try visiting the cave the next day...\n\nYou must be spec'd Protection to see the appearance on the ground.",
						["coords"] = {
							{ 45.1, 28.6, SKYHOLD },
							{ 49.6, 68.5, HIGHMOUNTAIN },
						},
						["g"] = {
							q(44311, {	-- Burning Plate of the Worldbreaker Available
								["name"] = "Burning Plate of the Worldbreaker Available",
								["description"] = "This quest indicates if the appearance spawns and can be looted.",
							}),
							q(44312, {	-- Burning Plate of the Worldbreaker Denied
								["isDaily"] = true,
								["name"] = "Burning Plate of the Worldbreaker Denied",
								["description"] = "This quest apparently makes you unable to see/obtain the container while it is true.",
							}),
							i(139580, {	-- Burning Plate of the Worldbreaker
								artifact(159),	-- Scale of the Earth-Warder
								-- artifact(159),	-- Scaleshard
							}),
						},
					}),
				}),
				n(FOLLOWERS, bubbleDownSelf({
					["collectible"] = false,
					["u"] = UNLEARNABLE,	-- Temporary troops
				}, {
					follower(1012),	-- Alliance:7th Legion Shock Force \\ Horde:Kor'kron Shock Force
					follower(1013),	-- Alliance:7th Legion Shock Force \\ Horde:Kor'kron Shock Force
					follower(1014),	-- Alliance:7th Legion Shock Force \\ Horde:Kor'kron Shock Force
					follower(1015),	-- Alliance:7th Legion Shock Force \\ Horde:Kor'kron Shock Force
					follower(687),	-- Shieldmaiden Warband
					follower(864),	-- Shieldmaiden Warband
					follower(865),	-- Shieldmaiden Warband
					follower(866),	-- Shieldmaiden Warband
					follower(688),	-- Stormforged Valarjar
					follower(861),	-- Stormforged Valarjar
					follower(862),	-- Stormforged Valarjar
					follower(863),	-- Stormforged Valarjar
					follower(686),	-- Valarjar Aspirants
					follower(858),	-- Valarjar Aspirants
					follower(859),	-- Valarjar Aspirants
					follower(860),	-- Valarjar Aspirants
					follower(852),	-- Valkyra Shieldmaidens
					follower(867),	-- Valkyra Shieldmaidens
					follower(868),	-- Valkyra Shieldmaidens
					follower(869),	-- Valkyra Shieldmaidens
				})),
				n(QUESTS, {
					-- Introduction
					q(42814, {	-- An Important Mission
						["provider"] = { "n", 108961 },	-- Sergeant Dalton
						["maps"] = { LEGION_DALARAN },
						["races"] = ALLIANCE_ONLY,
					}),
					q(41052, {	-- A Desperate Plea
						["provider"] = { "n", 93775 },	-- Eitrigg
						["maps"] = { LEGION_DALARAN },
						["races"] = HORDE_ONLY,
					}),
					q(42815, {	-- Return to the Broken Shore (A)
						["sourceQuest"] = 42814,	-- An Important Mission
						["provider"] = { "n", 96183 },	-- Danath Trollbane
						["coord"] = { 74.6, 45.6, LEGION_DALARAN },
						["races"] = ALLIANCE_ONLY,
					}),
					q(38904, {	-- Return to the Broken Shore (H)
						["sourceQuest"] = 41052,	-- A Desperate Plea
						["provider"] = { "n", 93773 },	-- High Overlord Saurfang
						["coord"] = { 75.0, 46.2, LEGION_DALARAN },
						["races"] = HORDE_ONLY,
					}),
					q(39654, {	-- Odyn and the Valarjar
						["sourceQuests"] = {
							42815,	-- Return to the Broken Shore (A)
							38904,	-- Return to the Broken Shore (H)
						},
						["provider"] = { "n", 93823 },	-- Danica the Reclaimer
						["coord"] = { 59.0, 29.7, SKYHOLD },
					}),
					-- Artifact Choosen
					q(40579, {	-- Weapons of Legend
						["sourceQuest"] = 39654,	-- Odyn and the Valarjar
						["provider"] = { "n", 96469 },	-- Odyn
						["coord"] = { 58.3, 84.9, SKYHOLD },
					}),
					q(43949, {	-- More Weapons of Legend
						["sourceQuest"] = 40579,	-- Weapons of Legend
						["coord"] = { 58.3, 84.7, SKYHOLD },
						["provider"] = { "n", 96469 },	-- Odyn
					}),
					q(44417, {	-- One More Legend
						["sourceQuest"] = 43949,	-- More Weapons of Legend
						["coord"] = { 58.3, 84.6, SKYHOLD },
						["provider"] = { "n", 96469 },	-- Odyn
					}),
					cl(WARRIOR, ARMS, {
						q(41105, {	-- The Sword of Kings
							["sourceQuests"] = {
								40579,	-- Weapons of Legend
								43949,	-- More Weapons of Legend
								44417,	-- One More Legend
							},
							["sourceQuestNumRequired"] = 1,
							["provider"] = { "n", 96469 },	-- Odyn
							["coord"] = { 58.3, 84.6, SKYHOLD },
							["g"] = {
								i(128910, {	-- Strom'kar, the Warbreaker
									["ItemAppearanceModifierID"] = 0,
									["groups"] = {
										artifact(295),	-- Strom'kar, the Warbreaker
									},
								}),
							},
						}),
					}),
					cl(WARRIOR, FURY, {
						q(40043, {	-- The Hunter of Heroes
							["sourceQuests"] = {
								40579,	-- Weapons of Legend
								43949,	-- More Weapons of Legend
								44417,	-- One More Legend
							},
							["sourceQuestNumRequired"] = 1,
							["provider"] = { "n", 96469 },	-- Odyn
							["coord"] = { 58.3, 84.6, SKYHOLD },
							["g"] = {
								i(128908, {	-- Warswords of the Valarjar [Main Hand]
									["ItemAppearanceModifierID"] = 9,
									["groups"] = {
										artifact(296),	-- Warswords of the Valarjar
									},
								}),
								i(134553, {	-- Warswords of the Valarjar [Off Hand]
									["ItemAppearanceModifierID"] = 9,
									["groups"] = {
										artifact(296),	-- Warswords of the Valarjar
									},
								}),
							},
						}),
					}),
					cl(WARRIOR, PROTECTION, {
						q(39191, {	-- Legacy of the Icebreaker
							["sourceQuests"] = {
								40579,	-- Weapons of Legend
								43949,	-- More Weapons of Legend
								44417,	-- One More Legend
							},
							["sourceQuestNumRequired"] = 1,
							["provider"] = { "n", 96469 },	-- Odyn
							["coord"] = { 58.3, 84.6, SKYHOLD },
							["g"] = {
								i(128288, {	-- Scaleshard
									["ItemAppearanceModifierID"] = 9,
									["groups"] = {
										artifact(66),	-- Scaleshard
									},
								}),
								i(128289, {	-- Scale of the Earth-Warder
									["ItemAppearanceModifierID"] = 9,
									["groups"] = {
										artifact(66),	-- Scale of the Earth-Warder
									},
								}),
							},
						}),
					}),
					q(44255, {	-- Axe and You Shall Receive
						["sourceQuests"] = { 40579 },	-- Weapons of Legend
						["provider"] = { "n", 112392 },	-- Quartermaster Durnolf
						["coord"] = { 56.2, 27.0, SKYHOLD },
						["g"] = {
							i(139684),	-- Battlelord's Greathelm
						},
					}),
					q(39530, {	-- The Forgening
						["sourceQuests"] = {
							41105,	-- The Sword of Kings
							40043,	-- The Hunter of Heroes
							39191,	-- Legacy of the Icebreaker
						},
						["sourceQuestNumRequired"] = 1,
						["provider"] = { "n", 96469 },	-- Odyn
						["coord"] = { 58.3, 84.6, SKYHOLD },
						["timeline"] = { ADDED_7_0_3, REMOVED_8_0_1 },
					}),
					q(39192, {	-- The Forge of Odyn
						["sourceQuest"] = 39530,	-- The Forgening
						["provider"] = { "n", 96586 },	-- Master Smith Helgar
						["coord"] = { 41.0, 37.1, SKYHOLD },
						["timeline"] = { ADDED_7_0_3, REMOVED_8_0_1 },
					}),
					-- Start Legion Zone
					q(39214, {	-- The Eye of Odyn
						["sourceQuests"] = {
							-- #IF BEFORE 8.0.1
							39192,	-- The Forge of Odyn
							-- #ELSE
							41105,	-- The Sword of Kings
							40043,	-- The Hunter of Heroes
							39191,	-- Legacy of the Icebreaker
							-- #ENDIF
						},
						["sourceQuestNumRequired"] = 1,
						["provider"] = { "n", 100622 },	-- Danica the Reclaimer
						["coord"] = { 59.6, 83.7, SKYHOLD },
					}),
					q(40585, {	-- Thus Begins the War
						["sourceQuest"] = 39214,	-- The Eye of Odyn
						["provider"] = { "n", 100635 },	-- Skyseer Ghrent
						["coord"] = { 59.7, 13.3, SKYHOLD },
					}),
					-- Learn Mission Table & Research
					q(42597, {	-- Odyn's Summons
						["sourceQuest"] = 40585,	-- Thus Begins the War
						["provider"] = { "n", 112663 },	-- Danica the Reclaimer
						["maps"] = { LEGION_DALARAN },
					}),
					q(42598, {	-- Champions of Skyhold
						["sourceQuest"] = 42597,	-- Odyn's Summons
						["provider"] = { "n", 96469 },	-- Odyn
						["coord"] = { 58.3, 84.7, SKYHOLD },
					}),
					q(42605, {	-- Champion: Ragnvald Drakeborn
						["sourceQuest"] = 42598,	-- Champions of Skyhold
						["provider"] = { "n", 107984 },	-- Ragnvald Drakeborn
						["coord"] = { 61.3, 33.8, SKYHOLD },
						["g"] = {
							follower(708),	-- Ragnvald Drakeborn
						},
					}),
					q(42606, {	-- Champion: Finna Bjornsdottir
						["sourceQuest"] = 42598,	-- Champions of Skyhold
						["provider"] = { "n", 107985 },	-- Finna Bjornsdottir
						["coord"] = { 61.5, 34.5, SKYHOLD },
						["g"] = {
							follower(709),	-- Finna Bjornsdottir
						},
					}),
					q(42607, {	-- Captain Stahlstrom
						["sourceQuest"] = 42598,	-- Champions of Skyhold
						["provider"] = { "n", 100635 },	-- Skyseer Ghrent
						["coord"] = { 59.7, 13.4, SKYHOLD },
					}),
					q(42609, {	-- Recruiting the Troops
						["sourceQuest"] = 42607,	-- Captain Stahlstrom
						["provider"] = { "n", 100635 },	-- Skyseer Ghrent
						["coord"] = { 59.7, 13.4, SKYHOLD },
					}),
					q(42610, {	-- Troops in the Field
						["sourceQuest"] = 42609,	-- Recruiting the Troops
						["provider"] = { "n", 100635 },	-- Skyseer Ghrent
						["coord"] = { 59.7, 13.4, SKYHOLD },
					}),
					q(42611, {	-- Einar the Runecaster
						["sourceQuest"] = 42610,	-- Troops in the Field
						["provider"] = { "n", 100635 },	-- Skyseer Ghrent
						["coord"] = { 59.7, 13.3, SKYHOLD },
					}),
					-- Chap 1
					q(43750, {	-- The Call of Battle
						["sourceQuest"] = 42611,	-- Einar the Runecaster
						["provider"] = { "n", 100635 },	-- Skyseer Ghrent
						["coord"] = { 59.7, 13.4, SKYHOLD },
					}),
					q(42193, {	-- The Gjallarhorn
						["sourceQuest"] = 43750,	-- The Call of Battle
						["provider"] = { "n", 107987 },	-- Hymdall
						["coord"] = { 55.9, 84.4, SKYHOLD },
					}),
					q(42194, {	-- Stolen Honor
						["sourceQuest"] = 42193,	-- The Gjallarhorn
						["provider"] = { "n", 106720 },	-- Svergan Stormcloak
						["coord"] = { 63.8, 47.2, STORMHEIM },
					}),
					q(42650, {	-- Break the Bonds
						["sourceQuest"] = 42194,	-- Stolen Honor
						["provider"] = { "n", 106720 },	-- Svergan Stormcloak
						["coord"] = { 63.8, 47.2, STORMHEIM },
						["g"] = {
							i(138204),	-- Svergan's Belongings (QI!)
						},
					}),
					q(42651, {	-- Svergan's Promise
						["sourceQuest"] = 42650,	-- Break the Bonds
						["provider"] = { "n", 106720 },	-- Svergan Stormcloak
						["coord"] = { 70.8, 38.1, STORMHEIM },
					}),
					q(42107, {	-- On the Trail of the Great Worm
						["sourceQuest"] = 42651,	-- Svergan's Promise
						["provider"] = { "n", 107987 },	-- Hymdall
						["coord"] = { 55.9, 84.4, SKYHOLD },
					}),
					q(42614, {	-- Champion: Svergan Stormcloak
						["sourceQuest"] = 42107,	-- On the Trail of the Great Worm
						["provider"] = { "n", 107986 },	-- Svergan Stormcloak
						["coord"] = { 52.0, 82.6, SKYHOLD },
						["g"] = {
							follower(710),	-- Svergan Stormcloak
						},
					}),
					-- Chap 2
					q(42110, {	-- To the Summit!
						["sourceQuest"] = 42107,	-- On the Trail of the Great Worm
						["provider"] = { "n", 107987 },	-- Hymdall
						["coord"] = { 55.9, 84.4, SKYHOLD },
					}),
					q(42202, {	-- Revenge, Served Cold
						["sourceQuest"] = 42110,	-- To the Summit!
						["provider"] = { "n", 106271 },	-- Jarum Skymane
						["coord"] = { 53.8, 87.8, HIGHMOUNTAIN },
					}),
					q(42204, {	-- Jorhuttam
						["sourceQuest"] = 42202,	-- Revenge, Served Cold
						["provider"] = { "n", 106271 },	-- Jarum Skymane
						["coord"] = { 53.8, 87.8, HIGHMOUNTAIN },
						["g"] = {
							i(139501),	-- Frostcrag Drums (QI!)
							i(138205),	-- The Gjallarhorn (QI!)
							follower(711),	-- Hymdall
							artifact(793),	-- Strom'kar, the Warbreaker
							artifact(656),	-- Warswords of the Valarjar [Main Hand]
							-- artifact(656),	-- Warswords of the Valarjar [Off Hand]
							artifact(146),	-- Scale of the Earth-Warder
							-- artifact(146),	-- Scaleshard
						},
					}),
					-- Chap 3
					q(43585, {	-- Preparing For War
						["sourceQuest"] = 42204,	-- Jorhuttam
						["provider"] = { "n", 96469 },	-- Odyn
						["coord"] = { 58.3, 84.7, SKYHOLD },
					}),
					q(43975, {	-- Recruiting Shieldmaidens
						["sourceQuest"] = 42204,	-- Jorhuttam
						["provider"] = { "n", 100635 },	-- Skyseer Ghrent
						["coord"] = { 59.7, 13.3, SKYHOLD },
					}),
					q(43586, {	-- Maw of Souls: Message to Helya
						["sourceQuest"] = 42204,	-- Jorhuttam
						["provider"] = { "n", 96469 },	-- Odyn
						["coord"] = { 58.3, 84.6, SKYHOLD },
						["maps"] = { 706, 707, 708 },	-- Maw of Souls
					}),
					q(43604, {	-- Maw of Souls: Ymiron's Broken Blade
						["sourceQuest"] = 43586,	-- Maw of Souls: Message to Helya
						["provider"] = { "i", 139619 },	-- Ymiron's Broken Blade
						["maps"] = { 706, 707, 708 },	-- Maw of Souls
						["g"] = {
							follower(712),	-- King Ymiron
						},
					}),
					q(43090, {	-- Ulduar's Oath
						["sourceQuest"] = 43586,	-- Maw of Souls: Message to Helya
						["provider"] = { "n", 96469 },	-- Odyn
						["coord"] = { 58.3, 84.6, SKYHOLD },
						["maps"] = { 744, 746 },	-- Ulduar (Scenario Map)
						["g"] = {
							i(139688),	-- Battlelord's Bracers
						},
					}),
					q(42616, {	-- Champion: Dvalen Ironrune
						["sourceQuest"] = 43090,	-- Ulduar's Oath
						["provider"] = { "n", 112766 },	-- Dvalen Ironrune
						["coord"] = { 57.1, 75.0, SKYHOLD },
						["g"] = {
							follower(714),	-- Dvalen Ironrune
						},
					}),
					q(42618, {	-- Champion: Thorim
						["sourceQuest"] = 43090,	-- Ulduar's Oath
						["provider"] = { "n", 112765 },	-- Thorim
						["coord"] = { 59.5, 75.2, SKYHOLD },
						["g"] = {
							follower(713),	-- Thorim
						},
					}),
					-- Chap 4
					q(44667, {	-- Will of the Valarjar
						["sourceQuest"] = 43090,	-- Ulduar's Oath
						["provider"] = { "n", 96469 },	-- Odyn
						["coord"] = { 58.3, 84.6, SKYHOLD },
					}),
					q(42918, {	-- Demonic Runes
						["sourceQuest"] = 43090,	-- Ulduar's Oath
						["provider"] = { "n", 96469 },	-- Odyn
						["coord"] = { 58.3, 84.6, SKYHOLD },
					}),
					q(43506, {	-- Black Rook Hold: Greater Power
						["sourceQuests"] = {
							42918,	-- Demonic Runes
							44667,	-- Will of the Valarjar
						},
						["provider"] = { "n", 96469 },	-- Odyn
						["coord"] = { 58.3, 84.6, SKYHOLD },
						["maps"] = { 751, 752, 753, 754, 755, 756 },	-- Black Rook Hold
					}),
					q(43577, {	-- Capturing the Gateway
						["sourceQuest"] = 43506,	-- Black Rook Hold: Greater Power
						["provider"] = { "n", 96469 },	-- Odyn
						["coord"] = { 58.3, 84.6, SKYHOLD },
					}),
					q(42974, {	-- The Fate of Hodir
						["sourceQuest"] = 43577,	-- Capturing the Gateway
						["provider"] = { "n", 96469 },	-- Odyn
						["coord"] = { 58.3, 84.6, SKYHOLD },
						["maps"] = { 714 },	-- Niskara (Scenario Map)
						["g"] = {
							title(62),	-- Battlelord <Name>
							i(139681),	-- Battlelord's Chest
						},
					}),
					q(42619, {	-- Champion: Hodir
						["sourceQuest"] = 42974,	-- The Fate of Hodir
						["provider"] = { "n", 113583 },	-- Hodir
						["coord"] = { 59.7, 78.4, SKYHOLD },
						["g"] = {
							follower(715),	-- Hodir
						},
					}),
					q(43425, {	-- A Hero's Weapon
						["sourceQuest"] = 42974,	-- The Fate of Hodir
						["provider"] = { "n", 96469 },	-- Odyn
						["coord"] = { 58.3, 84.6, SKYHOLD },
						["g"] = {
							artifact(794),	-- Strom'kar, the Warbreaker
							artifact(657),	-- Warswords of the Valarjar [Main Hand]
							-- artifact(657),	-- Warswords of the Valarjar [Off Hand]
							artifact(152),	-- Scale of the Earth-Warder
							-- artifact(152),	-- Scaleshard
						},
					}),
					-- Interlude
					q(45986, {	-- An Urgent Warning
						["sourceQuest"] = 43425,	-- A Hero's Weapon
						["provider"] = { "n", 118406 },	-- Injured Shieldmaiden
						["coord"] = { 61.2, 27.6, SKYHOLD },
						["isBreadcrumb"] = true,
						["timeline"] = { ADDED_7_1_5, REMOVED_7_2_0 },
					}),
					q(45987, {	-- Investigate the Broken Shore
						["sourceQuest"] = 45986,	-- An Urgent Warning
						["provider"] = { "n", 100635 },	-- Skyseer Ghrent
						["coord"] = { 59.7, 13.4, SKYHOLD },
						["timeline"] = { ADDED_7_1_5, REMOVED_7_2_0 },
					}),
					-- 7.2.0
					q(46173, {	-- Tactical Planning
						["sourceQuests"] = {
							47137,	-- Champions of Legionfall
							-- #IF AFTER 7.2.0
							43425,	-- A Hero's Weapon
							-- #ELSE
							45987,	-- Investigate the Broken Shore
							-- #ENDIF
						},
						["provider"] = { "n", 96469 },	-- Odyn
						["coord"] = { 58.3, 84.6, SKYHOLD },
						["timeline"] = { ADDED_7_2_0 },
					}),
					q(44849, {	-- Recruitment Drive
						["sourceQuest"] = 46173,	-- Tactical Planning
						["provider"] = { "n", 96469 },	-- Odyn
						["coord"] = { 58.3, 84.6, SKYHOLD },
						["timeline"] = { ADDED_7_2_0 },
					}),
					q(44850, {	-- Arming the Army
						["sourceQuest"] = 44849,	-- Recruitment Drive
						["provider"] = { "n", 116193 },	-- Aerylia
						["coord"] = { 34.3, 28.5, HELHEIM },
						["timeline"] = { ADDED_7_2_0 },
					}),
					q(45834, {	-- Stolen Souls
						["sourceQuest"] = 44849,	-- Recruitment Drive
						["provider"] = { "n", 116193 },	-- Aerylia
						["coord"] = { 34.3, 28.5, HELHEIM },
						["timeline"] = { ADDED_7_2_0 },
					}),
					q(45118, {	-- Helya's Horn
						["sourceQuest"] = 44849,	-- Recruitment Drive
						["provider"] = { "n", 116193 },	-- Aerylia
						["coord"] = { 34.3, 28.5, HELHEIM },
						["timeline"] = { ADDED_7_2_0 },
						["g"] = {
							i(144071),	-- Helya's Horn (QI!)
						},
					}),
					q(45128, {	-- A Glorious Reunion
						["sourceQuests"] = {
							44850,	-- Arming the Army
							45118,	-- Helya's Horn
							45834,	-- Stolen Souls
						},
						["provider"] = { "n", 116193 },	-- Aerylia
						["coord"] = { 34.3, 28.5, HELHEIM },
						["timeline"] = { ADDED_7_2_0 },
					}),
					q(44889, {	-- Resource Management
						["sourceQuest"] = 45128,	-- A Glorious Reunion
						["provider"] = { "n", 96469 },	-- Odyn
						["coord"] = { 58.3, 84.6, SKYHOLD },
						["timeline"] = { ADDED_7_2_0 },
					}),
					q(45634, {	-- Kvaldir on Call
						["sourceQuest"] = 44889,	-- Resource Management
						["provider"] = { "n", 116858 },	-- Danica the Reclaimer
						["coord"] = { 69.8, 34.7, BROKEN_SHORE },
						["timeline"] = { ADDED_7_2_0 },
					}),
					q(45648, {	-- Missing in Action: Lord Darius Crowley
						["sourceQuest"] = 44889,	-- Resource Management
						["provider"] = { "n", 116858 },	-- Danica the Reclaimer
						["coord"] = { 69.8, 34.7, BROKEN_SHORE },
						["races"] = ALLIANCE_ONLY,
						["timeline"] = { ADDED_7_2_0 },
					}),
					q(45632, {	-- Missing in Action: Eitrigg
						["sourceQuest"] = 44889,	-- Resource Management
						["provider"] = { "n", 116858 },	-- Danica the Reclaimer
						["coord"] = { 69.8, 34.7, BROKEN_SHORE },
						["races"] = HORDE_ONLY,
						["timeline"] = { ADDED_7_2_0 },
					}),
					q(45649, {	-- Mission: Search and Rescue (A)
						["sourceQuest"] = 45648,	-- Missing in Action: Lord Darius Crowley
						["provider"] = { "n", 117475 },	-- Lord Darius Crowley
						["coord"] = { 73.7, 31.2, BROKEN_SHORE },
						["races"] = ALLIANCE_ONLY,
						["timeline"] = { ADDED_7_2_0 },
					}),
					q(45647, {	-- Mission: Search and Rescue (H)
						["sourceQuest"] = 45632,	-- Missing in Action: Eitrigg
						["provider"] = { "n", 117471 },	-- Eitrigg
						["coord"] = { 73.7, 31.2, BROKEN_SHORE },
						["races"] = HORDE_ONLY,
						["timeline"] = { ADDED_7_2_0 },
					}),
					q(45650, {	-- Operation Felrage (A)
						["sourceQuest"] = 45648,	-- Missing in Action: Lord Darius Crowley
						["provider"] = { "n", 117475 },	-- Lord Darius Crowley
						["coord"] = { 73.7, 31.2, BROKEN_SHORE },
						["races"] = ALLIANCE_ONLY,
						["timeline"] = { ADDED_7_2_0 },
					}),
					q(45633, {	-- Operation Felrage (H)
						["sourceQuest"] = 45632,	-- Missing in Action: Eitrigg
						["provider"] = { "n", 117471 },	-- Eitrigg
						["coord"] = { 73.7, 31.2, BROKEN_SHORE },
						["races"] = HORDE_ONLY,
						["timeline"] = { ADDED_7_2_0 },
					}),
					q(46267, {	-- Return of the Battlelord
						["sourceQuests"] = {
							45634,	-- Kvaldir on Call
							45649,	-- Mission: Search and Rescue (A)
							45647,	-- Mission: Search and Rescue (H)
							45650,	-- Operation Felrage (A)
							45633,	-- Operation Felrage (H)
						},
						["provider"] = { "n", 116858 },	-- Danica the Reclaimer
						["coord"] = { 69.8, 34.7, BROKEN_SHORE },
						["timeline"] = { ADDED_7_2_0 },
					}),
					q(45876, bubbleDownSelf({ ["timeline"] = { ADDED_7_2_0 } }, {	-- Champion: Lord Darius Crowley
						["sourceQuest"] = 46267,	-- Return of the Battlelord
						["provider"] = { "n", 117480 },	-- Lord Darius Crowley
						["coord"] = { 59.9, 83.8, SKYHOLD },
						["races"] = ALLIANCE_ONLY,
						["g"] = {
							follower(989),	-- Lord Darius Crowley / Eitrigg
						},
					})),
					q(45873, bubbleDownSelf({ ["timeline"] = { ADDED_7_2_0 } }, {	-- Champion: Eitrigg
						["sourceQuest"] = 46267,	-- Return of the Battlelord
						["provider"] = { "n", 117479 },	-- Eitrigg
						["coord"] = { 59.9, 83.8, SKYHOLD },
						["races"] = HORDE_ONLY,
						["g"] = {
							follower(989),	-- Lord Darius Crowley / Eitrigg
						},
					})),
					q(46208, {	-- A Godly Invitation
						["sourceQuests"] = {
							47137,	-- Champions of Legionfall
							46267,	-- Return of the Battlelord
						},
						["provider"] = { "n", 119527 },	-- Valarjar Warsinger
						["coord"] = { 43.6, 63.1, BROKEN_SHORE },
						["timeline"] = { ADDED_7_2_0 },
					}),
					q(46207, bubbleDownSelf({ ["timeline"] = { ADDED_7_2_0 } }, {	-- The Trial of Rage
						["sourceQuest"] = 46208,	-- A Godly Invitation
						["provider"] = { "n", 96469 },	-- Odyn
						["coord"] = { 58.3, 84.6, SKYHOLD },
						["maps"] = { 829 },	-- Halls of Valor (Scenario Map)
						["g"] = {
							mount(229388),	-- Battlelord's Bloodthirsty War Wyrm (MOUNT!)
						},
					})),
					-- The End
					q(43888, {	-- Hitting the Books
						["provider"] = { "n", 111741 },	-- Fjornson Stonecarver
						["coord"] = { 45.1, 28.2, SKYHOLD },
						["timeline"] = { ADDED_7_0_3, REMOVED_7_3_0 },
					}),
					q(46142, {	-- Knowledge is Power
						["sourceQuest"] = 43888,	-- Hitting the Books
						["provider"] = { "n", 111741 },	-- Fjornson Stonecarver
						["coord"] = { 45.1, 28.2, SKYHOLD },
						["timeline"] = { ADDED_7_1_5, REMOVED_7_3_0 },
					}),
					q(46155, {	-- Furthering Knowledge
						["sourceQuest"] = 46142,	-- Knowledge is Power
						["provider"] = { "n", 111741 },	-- Fjornson Stonecarver
						["coord"] = { 45.1, 28.2, SKYHOLD },
						["timeline"] = { ADDED_7_1_5, REMOVED_7_3_0 },
					}),
					q(46778, {	-- Further Advancement
						["sourceQuest"] = 46267,	-- Return of the Battlelord
						["provider"] = { "n", 100635 },	-- Skyseer Ghrent
						["coord"] = { 59.7, 13.4, SKYHOLD },
						["timeline"] = { ADDED_7_2_0 },
					}),
					i(144436, bubbleDownSelf({ ["timeline"] = { ADDED_7_2_0 } }, {	-- Lost Legend of Odyn
						["description"] = "This item can drop off of any Vrykul in the Broken Isles as a Warrior (any spec).",
						["g"] = {
							n(GREAT_ODYN_AND_THE_FIRELORD, { ["questID"] = 46223, }),
							n(THE_WANDERER_AND_THE_SERPENT, { ["questID"] = 46224, }),
							n(HALLS_OF_GOLD_AND_GLORY, { ["questID"] = 46225, }),
							n(THE_KEEPERS_EYE, { ["questID"] = 46226, }),
							n(FIRST_OF_THE_VALKYR, { ["questID"] = 46227, }),
							n(THE_SEALING_OF_THE_HALLS_OF_VALOR, { ["questID"] = 46228, }),
						}
					})),
					i(144437, bubbleDownSelf({ ["timeline"] = { ADDED_7_2_0 } }, {	-- Lost Legend of the Valarjar
						["description"] = "This item can drop off of any Vrykul in the Broken Isles as a Warrior. (any spec)",
						["crs"] = {
							115732,	-- Jorvild the Trusted (highest drop chance)
						},
						["g"] = {
							n(HIS_NAME_IS_DRAGONBLOOD, { ["questID"] = 46229, }),
							n(THE_LAST_WORDS_OF_ASGRIM_THE_DREADKILLER, { ["questID"] = 46230, }),
							n(A_SHIELDMAIDENS_CREED, { ["questID"] = 46231, }),
							n(THE_PROPHECY_OF_RYTHAS_THE_ORACLE, { ["questID"] = 46232, }),
							n(THE_LESSONS_OF_THE_BLACKFIST, { ["questID"] = 46233, }),
							n(VOLUNDS_FOLLY, { ["questID"] = 46234, }),
						}
					})),
				}),
				n(SPECIAL, {
					gt(410, {	-- Bladestorm
						q(44222, {	-- The Might of the Val'kyr
							["provider"] = { "n", 111774 },	-- Matilda Skoptidottir
							["coord"] = { 72.6, 30.8, SKYHOLD },
							["timeline"] = { ADDED_7_0_3, REMOVED_8_0_1 },
						}),
					}),
					gt(408, {	-- For Honor and Glory
						o(252570, {	-- Skyhold Chest of Riches
							["description"] = "\nThe chests spawn every 3 hours in the Arena of Glory, starting at 0:00 Realm Time or 02:00 Realm Time if Daylight Savings Time is active. You must research the 2nd tier order hall upgrade |cFFFFD700For Honor and Glory|r from Einar the Runecaster to see the chest. You can only loot it once per week.\n\nIt can contain the Fury Hidden Appearance items, however, you're better off gathering those items from their respective sources in the outdoor world due to the number of Warriors going for the toy. (IE: Do not open this chest if you already have the toy)",
							["questID"] = 43763,	-- Chest of Riches Weekly Lockout
							["isWeekly"] = true,
							["g"] = {
								i(141069, {	-- Skyhold Chest of Riches
									i(140160),	-- Stormforged Vrykul Horn (TOY!)
									i(140161),	-- Hargal's Favorite Trinket
									i(141071),	-- Badge of Honor
								}),
							},
						}),
					}),
					gt(411, {	-- Heavenly Forge
						q(44221, {	-- Champion Armaments
							["sourceQuest"] = 42611,	-- Einar the Runecaster
							["coord"] = { 62.3, 25.8, SKYHOLD },
							["provider"] = { "n", 110437 },	-- Haklang Ulfsson
						}),
					}),
				}),
				n(VENDORS, {
					n(112392, {	-- Quartermaster Durnolf
						["coord"] = { 56.1, 27.0, SKYHOLD },
						["sym"] = {{"select","itemID",143727}},	-- Champion's Salute (TOY!)
						["g"] = {
							i(140946, {	-- Battlelord's Armor Kit
								["cost"] = { { "c", 1220, 2000 }, },	-- 2,000x Order Resources
							}),
							i(139681, {	-- Battlelord's Chestplate
								["cost"] = 5000000,	-- 500g
							}),
							i(139683, {	-- Battlelord's Gauntlets
								["cost"] = 5000000,	-- 500g
							}),
							i(139687, {	-- Battlelord's Girdle
								["cost"] = 5000000,	-- 500g
							}),
							i(140985, {	-- Battlelord's Greater Armor Kit
								["cost"] = { { "c", 1220, 4000 }, },	-- 4,000x Order Resources
							}),
							i(139684, {	-- Battlelord's Greathelm
								["cost"] = 5000000,	-- 500g
							}),
							i(139685, {	-- Battlelord's Legplates
								["cost"] = 5000000,	-- 500g
							}),
							i(140984, {	-- Battlelord's Lesser Armor Kit
								["cost"] = { { "c", 1220, 500 }, },		-- 500x Order Resources
							}),
							i(139686, {	-- Battlelord's Pauldrons
								["cost"] = 5000000,	-- 500g
							}),
							i(139682, {	-- Battlelord's Warboots
								["cost"] = 5000000,	-- 500g
							}),
							i(139688, {	-- Battlelord's Wristguards
								["cost"] = 5000000,	-- 500g
							}),
							i(140537),	-- Skyhold Bulwark
							i(140559),	-- Skyhold Claymore
							i(140557),	-- Skyhold Quickblade
						},
					}),
				}),
			},
		})),
	}),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.LEGION, bubbleDownSelf({ ["timeline"] = { ADDED_7_0_3 } }, {
	n(CLASS_HALL, {
		cl(WARRIOR, bubbleDownSelf({ ["classes"] = { WARRIOR } }, {
			q(39174),	-- Guiding Light Tutorialized - triggers when you get your first artifact weapon and go back to Skyhold
			q(44060),	-- Azsuna Teleport Learned - in Azurewing Repose
			q(41359),	-- Highmountain Teleport Learned - in Thunder Totem
			q(41360),	-- Stormheim Teleport Learned - in Valdisdall
			q(44062),	-- Suramar Teleport Learned - in Meredil
			q(44061),	-- Val'sharah Teleport Learned - in Loriathil
			q(44658),	-- Tracking Quest: 7.0 Class Hall - Warrior - Ch1 Trail - completed the "On the Trail of the Great Worm" mission
			q(44551),	-- Tracking Quest: Capturing the Gateway 1 - completed the "Investigate Felsoul Hold" mission
			q(44552),	-- Tracking Quest: Capturing the Gateway 2 - completed the "Preparing Our Arrival" mission
			q(44553),	-- Tracking Quest: Capturing the Gateway 3 - completed the "Last Chance" mission
			q(44633),	-- Tracking Quest: Preparing for War 1 - completed the "Aiding the Valkyra" mission
			q(44634),	-- Tracking Quest: Preparing for War 2 - completed the "Lost at Sea" mission
			q(44635),	-- Tracking Quest: Preparing for War 3 - completed the "Enslaved by Sea Giants" mission
		})),
	}),
})));