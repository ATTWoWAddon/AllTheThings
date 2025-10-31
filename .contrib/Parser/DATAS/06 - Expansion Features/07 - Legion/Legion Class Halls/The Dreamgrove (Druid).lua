-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------
DAILY_DREAMWAY_EVENT_ROLL = createHeader({
	readable = "Daily Dreamway Event Roll",
	standalone = true,
	icon = 1128042,
	text = {
		en = "Event Roll",
		es = "Rotación de evento",
		mx = "Rotación de evento",
		de = "Ereignisliste",
		fr = "Rouleau d'événement",
		it = "Rotolo di eventi",
		pt = "Lista de Eventos",
		ru = "Ролл События",
		ko = "이벤트 롤",
		cn = "事件掷骰",
	},
	description = {
		en = "If this quest has a checkmark next to it, then check below which stone is active. If none of them are checked, that means that none of the owlcat stones can be interacted with today and that you should come back tomorrow.",
		es = "Si esta misión tiene una marca de verificación, comprueba debajo qué piedra está activa. Si ninguna está marcada, significa que no se puede interactuar con ninguna de las piedras buhogato hoy y que debes volver mañana.",
		mx = "Si esta misión tiene un check, revisa debajo qué piedra está activa. Si ninguna está marcada, significa que no se puede interactuar con ninguna de las piedras buhogato hoy y que debes volver mañana.",
	},
});
DUSKWOOD_ACTIVE = createHeader({
	readable = "Duskwood Active",
	standalone = true,
	icon = 236757,
	text = {
		en = [[~DUNGEON_FLOOR_NIGHTMARERAID8.." "..]] .. WOWAPI_GetSpellName(133137),
		ru = "Сумеречный лес - активен",
	},
	description = {
		en = "If this quest has a checkmark next to it, then that means the stone is active.",
		es = "Si esta misión tiene una marca de verificación al lado, significa que la piedra está activa.",
		mx = "Si esta misión tiene un check al lado, significa que la piedra está activa.",
	},
});
FERALAS_ACTIVE = createHeader({
	readable = "Feralas Active",
	standalone = true,
	icon = 236764,
	text = {
		en = [[~DUNGEON_FLOOR_NIGHTMARERAID9.." "..]] .. WOWAPI_GetSpellName(133137),
		ru = "Фералас - активен",
	},
	description = {
		en = "If this quest has a checkmark next to it, then that means the stone is active.",
		es = "Si esta misión tiene una marca de verificación al lado, significa que la piedra está activa.",
		mx = "Si esta misión tiene un check al lado, significa que la piedra está activa.",
	},
});
THE_HINTERLANDS_ACTIVE = createHeader({
	readable = "The Hinterlands Active",
	standalone = true,
	icon = 236780,
	text = {
		en = [[~DUNGEON_FLOOR_NIGHTMARERAID7.." "..]] .. WOWAPI_GetSpellName(133137),
		ru = "Внутренние земли - активен",
	},
	description = {
		en = "If this quest has a checkmark next to it, then that means the stone is active.",
		es = "Si esta misión tiene una marca de verificación al lado, significa que la piedra está activa.",
		mx = "Si esta misión tiene una check al lado, significa que la piedra está activa.",
	},
});
DUSKWOOD_ACTIVATED = createHeader({
	readable = "Duskwood Activated",
	standalone = true,
	icon = 236757,
	text = {
		en = [[~DUNGEON_FLOOR_NIGHTMARERAID8.." "..]] .. WOWAPI_GetSpellName(78741),
		ru = "Сумеречный лес - активирован",
	},
	description = {
		en = "This quest indicates if you have activated the Duskwood Owlcat Stone.",
		es = "Esta misión indica si has activado la Piedra buhogato de Bosque del Ocaso.",
		mx = "Esta misión muestra si has activado la Piedra buhogato de Bosque del Ocaso.",
	},
});
FERALAS_ACTIVATED = createHeader({
	readable = "Feralas Activated",
	standalone = true,
	icon = 236764,
	text = {
		en = [[~DUNGEON_FLOOR_NIGHTMARERAID9.." "..]] .. WOWAPI_GetSpellName(78741),
		ru = "Фералас - активирован",
	},
	description = {
		en = "This quest indicates if you have activated the Feralas Owlcat Stone.",
		es = "Esta misión indica si has activado la Piedra buhogato de Feralas.",
		mx = "Esta misión muestra si has activado la Piedra buhogato de Feralas.",
	},
});
THE_HINTERLANDS_ACTIVATED = createHeader({
	readable = "The Hinterlands Activated",
	icon = 236780,
	standalone = true,
	text = {
		en = [[~DUNGEON_FLOOR_NIGHTMARERAID7.." "..]] .. WOWAPI_GetSpellName(78741),
		ru = "Внутренние земли - активирован",
	},
	description = {
		en = "This quest indicates if you have activated the Hinterlands Owlcat Stone.",
		es = "Esta misión indica si has activado la Piedra buhogato de las Tierras del Interior.",
		mx = "Esta misión muestra si has activado la Piedra buhogato de las Tierras del Interior.",
	},
});


root(ROOTS.ExpansionFeatures, expansion(EXPANSION.LEGION, bubbleDown({ ["timeline"] = { ADDED_7_0_3 } }, {
	n(CLASS_HALL, {
		cl(DRUID, bubbleDownSelf({ ["classes"] = { DRUID } }, {
			["maps"] = {
				THE_DREAMGROVE,
				1468,	-- The Dreamgrove
			},
			["groups"] = {
				o(253161, {	-- Grove Vine
					["classes"] = { DRUID },
					["description"] = "|c808080FAThese pets are obtained by picking them from the|r |cFFFFD700Evergreen|r |c808080FAclass hall ability that druids get on Tier 2.\nOnce the ability is learned you will gain access to two plots where you grow plants every three days and it will randomly pick amongst six plots. When Grove Vine spawns it has a chance for these two pets.|r",
					["groups"] = {
						i(139554, {	-- Acorn of the Endless
							artifact(62),	-- Restoration Druid Hidden Artifact Appearance
						}),
						i(129362),	-- Broot (PET!)
						i(140397),	-- G'hanir's Blossom
						i(140741),	-- Nightmare Lasher (PET!)
						i(140400),	-- Perfect Dreamgrove Blossom
					},
				}),
				petbattle(filter(BATTLE_PETS, {
					["sym"] = {{"select","speciesID",
						479,	-- Elfin Rabbit (PET!)
					}},
				})),
				n(ACHIEVEMENTS, bubbleDownSelf({ ["timeline"] = { ADDED_11_2_7 } }, {
					ach(42289, {	-- Hidden Potential of the Archdruid
						i(250134),	-- Seed of Ages Cutting (DECOR!)
					}),
					ach(60964, {	-- Legendary Research of the Dreamgrove
						i(250111),	-- Replica Tome of the Ancients (DECOR!)
					}),
					ach(60983, {	-- Raise an Army for the Dreamgrove
						i(251013),	-- Cenarion Arch (DECOR!)
					}),
					ach(42272, {	-- The Archdruid's Campaign
						i(260581),	-- Brazier of Elune (DECOR!)
					}),
				})),
				n(FLIGHT_PATHS, {
					fp(1815, {	-- The Dreamgrove, Val'sharah
						["creatureID"] = 107457,	-- Danise Stargazer
						["coord"] = { 61.7, 33.9, THE_DREAMGROVE },
					}),
				}),
				n(FOLLOWERS, bubbleDownSelf({
					["collectible"] = false,
					["u"] = UNLEARNABLE,	-- Temporary troops
				}, {
					follower(749),	-- Ancient of War
					follower(938),	-- Ancient of War
					follower(939),	-- Ancient of War
					follower(668),	-- Daughters of Cenarius
					follower(829),	-- Daughters of Cenarius
					follower(830),	-- Daughters of Cenarius
					follower(831),	-- Daughters of Cenarius
					follower(763),	-- Dreamgrove Treants
					follower(826),	-- Dreamgrove Treants
					follower(827),	-- Dreamgrove Treants
					follower(828),	-- Dreamgrove Treants
					follower(1016),	-- Dreamgrove Wardens
					follower(1020),	-- Dreamgrove Wardens
					follower(1021),	-- Dreamgrove Wardens
					follower(1022),	-- Dreamgrove Wardens
					follower(669),	-- Druids of the Claw
					follower(832),	-- Druids of the Claw
					follower(833),	-- Druids of the Claw
					follower(834),	-- Druids of the Claw
					follower(670),	-- Keepers of the Grove
					follower(835),	-- Keepers of the Grove
					follower(836),	-- Keepers of the Grove
					follower(837),	-- Keepers of the Grove
				})),
				n(QUESTS, {
					q(42044, {	-- A Dying Dream
						["sourceQuests"] = {
							42041,	-- Enduring the Nightmare
							42042,	-- Teensy Weensies!
							42043,	-- Cleaning Up
						},
						["provider"] = { "n", 106204 },	-- Archdruid Hamuul Runetotem
						["coord"] = { 43.4, 30.6, 715 },
					}),
					q(40785, {	-- A Foe of the Dark
						["sourceQuests"] = { 40784 },	-- Its Rightful Place
						["provider"] = { "n", 101651 },	-- Belysra Starbreeze
						["coord"] = { 48.8, 34.2, DUSKWOOD },
					}),
					q(42586, {	-- A Glade Defense
						["sourceQuests"] = { 42585 },	-- Recruiting the Troops
						["provider"] = { "n", 98002 },	-- Skylord Omnuron
						["coord"] = { 52.6, 51.4, THE_DREAMGROVE },
					}),
					q(43409, {	-- A Hero's Weapon
						["sourceQuests"] = { 42056 },	-- Champion: Remulos
						["provider"] = { "n", 101195 },	-- Rensar Greathoof
						["coord"] = { 44.7, 52.0, THE_DREAMGROVE },
						["groups"] = {
							spell(219663) -- Heroic Weapons [No item associated]
						},
					}),
					q(42046, {	-- A New Beginning
						["sourceQuests"] = { 42045 },	-- Communing with Malorne
						["provider"] = { "n", 106250 },	-- Keeper Remulos
						["coord"] = { 60.5, 23.6, MOUNT_HYJAL },
						["groups"] = { i(139730) },	-- Bracers of the Dreamgrove
					}),
					q(40643, {	-- A Summons From Moonglade
						["sourceQuests"] = { 44663 },	-- In the Blink of an Eye
						["provider"] = { "n", 101061 },	-- Archdruid Hamuul Runetotem
						["coord"] = { 57.8, 45.8, LEGION_DALARAN },
						["groups"] = { i(173716) },	-- Mossy Hearthstone (QI!)
					}),
					q(42439, {	-- Aid for the Ashen
						["sourceQuests"] = { 42428 },	-- The Shrine of Ashamane
						["provider"] = { "n", 107392 },	-- Delandros Shimmermoon
						["coord"] = { 70.4, 46.7, VALSHARAH },
					}),
					q(46026, {	-- An Urgent Warning
						["u"] = REMOVED_FROM_GAME,	-- supposedly removed in 7.2
					}),
					q(43980, {	-- Another Weapon of Old
						["sourceQuests"] = { 40653 },	-- Making Trails
						["provider"] = { "n", 101195 },	-- Rensar Greathoof
						["coord"] = { 44.7, 52.0, THE_DREAMGROVE },
					}),
					q(42054, {	-- Archimonde, the Defiler
						["sourceQuests"] = { 42053 },	-- The War of the Ancients
						["provider"] = { "n", 107212 },	-- Skylord Omnuron
						["coord"] = { 53.7, 33.9, 760 },
					}),
					q(41332, {	-- Ascending The Circle
						["sourceQuests"] = { 41255 },	-- Sowing The Seed
						["provider"] = { "n", 97923 },	-- Rensar Greathoof
						["coord"] = { 30.9, 54.2, THE_DREAMGROVE },
					}),
					q(44877, {	-- Attack on the Roost
						["sourceQuest"] = 44869,	-- Talon Terror
						["qgs"] = {
							115802,	-- Thisalee Crow
							119982,	-- Druid of the Talon
						},
						["coord"] = { 40.9, 42.6, MOUNT_HYJAL },
					}),
					q(44888, {	-- Aviana's Grace
						["sourceQuests"] = {
							44877,	-- Attack on the Roost
							45532,	-- Mother's Orders
						},
						["qgs"] = {
							115802,	-- Thisalee Crow
							119982,	-- Druid of the Talon
						},
						["coord"] = { 40.9, 42.6, MOUNT_HYJAL },
					}),
					q(42588, {	-- Branching Out
						["sourceQuests"] = { 42586 },	-- A Glade Defense
						["provider"] = { "n", 98002 },	-- Skylord Omnuron
						["coord"] = { 52.6, 51.4, THE_DREAMGROVE },
					}),
					q(41106, {	-- Call of the Wilds
						["sourceQuests"] = { 40643 },	-- A Summons From Moonglade
						["qgs"] = {
							101064,	-- Archdruid Hamuul Runetotem
							-- #if AFTER BFA
							142299,	-- Archdruid Hamuul Runetotem
							-- #endif
						},
						["coords"] = {
							{ 56.2, 32.0, MOONGLADE },
							-- #if AFTER BFA
							{ 42.3, 44.3, SILITHUS },
							-- #endif
						},
					}),
					q(43368, {	-- Champion: Brightwing
						["sourceQuests"] = {
							42719,	-- Eye of Azshara: Cleansing the Dreamway
							43365,	-- The Cycle Continues
							42129,	-- The Pendant of Starlight
						},
						["provider"] = { "n", 98008 },		-- Brightwing
						["coord"] = { 39.6, 45.5, 715 },
						["groups"] = {
							follower(645),	-- Brightwing
						},
					}),
					q(42038, {	-- Champion: Broll Bearmantle
						["sourceQuests"] = { 42036 },	-- Idol of the Wilds
						["provider"] = { "n", 106091 },	-- Broll Bearmantle
						["coord"] = { 49.0, 47.1, THE_DREAMGROVE },
						["lvl"] = 103,
						["groups"] = {
							follower(641),	-- Broll Bearmantle
						},
					}),
					q(42047, {	-- Champion: Hamuul Runetotem
						["sourceQuests"] = { 42046 },	-- A New Beginning
						["provider"] = { "n", 107025 },	-- Archdruid Hamuul Runetotem
						["coord"] = { 47.9, 55.4, THE_DREAMGROVE },
						["lvl"] = 110,
						["groups"] = {
							follower(643),	-- Archdruid Hamuul Runetotem
						},
					}),
					q(42048, {	-- Champion: Mylune
						["sourceQuests"] = { 42046 },	-- A New Beginning
						["provider"] = { "n", 107026 },	-- Mylune
						["coord"] = { 53.7, 51.0, THE_DREAMGROVE },
						["lvl"] = 110,
						["groups"] = {
							follower(644),	-- Mylune
						},
					}),
					q(42096, {	-- Champion: Naralex
						["sourceQuests"] = { 42583 },	-- Rise, Champions
						["provider"] = { "n", 103778 },	-- Naralex
						["coord"] = { 67.2, 75.8, THE_DREAMGROVE },
						["groups"] = {
							follower(639),	-- Naralex
						},
					}),
					q(42056, {	-- Champion: Remulos
						["sourceQuests"] = { 42055 },	-- The Demi-God's Return
						["provider"] = { "n", 103832 },	-- Keeper Remulos
						["coord"] = { 44.6, 50.2, THE_DREAMGROVE },
						["groups"] = {
							follower(646),	-- Keeper Remulos
						},
					}),
					q(42039, {	-- Champion: Sylendra Gladesong
						["sourceQuests"] = { 42036 },	-- Idol of the Wilds
						["provider"] = { "n", 106093 },	-- Sylendra Gladesong
						["coord"] = { 49.0, 46.8, THE_DREAMGROVE },
						["lvl"] = 103,
						["groups"] = {
							follower(642),	-- Sylendra Gladesong
						},
					}),
					q(46044, {	-- Champion: Thisalee Crow
						["sourceQuests"] = { 45425 },	-- Grovebound
						["provider"] = { "n", 106299 },	-- Thisalee Crow
						["coord"] = { 44.4, 51.5, THE_DREAMGROVE },
						["groups"] = {
							follower(999),	-- Thisalee Crow
						},
					}),
					q(40650, {	-- Champion: Zen'tabra
						["sourceQuests"] = { 42583 },	-- Rise, Champions
						["provider"] = { "n", 98013 },	-- Zen'tabra
						["coord"] = { 47.3, 7.5, THE_DREAMGROVE },
						["groups"] = {
							follower(640),	-- Zen'tabra
						},
					}),
					q(42043, {	-- Cleaning Up
						["sourceQuests"] = { 42040 },	-- The Way to Nordrassil
						["provider"] = { "n", 106204 },	-- Archdruid Hamuul Runetotem
						["coord"] = { 43.4, 30.6, 715 },
					}),
					q(41689, {	-- Cleansing the Mother Tree
						["sourceQuests"] = { 41690 },	-- Reconvene
						["provider"] = { "n", 104577 },	-- Lyessa Bloomwatcher
						["coord"] = { 45.2, 51.9, THE_DREAMGROVE },
						["groups"] = {
							title(332),	-- <Name>, Guardian of G'Hanir
							o(248499, {	-- G'Hanir
								["coord"] = { 60.6, 25.4, MOUNT_HYJAL },
								["groups"] = {
									i(128306, {	-- G'Hanir, the Mother Tree
										["ItemAppearanceModifierID"] = 9,
										["groups"] = {
											artifact(45),	-- Standard Appearance
										},
									}),
								},
							}),
						},
					}),
					q(42045, {	-- Communing with Malorne
						["sourceQuests"] = { 42044 },	-- A Dying Dream
						["provider"] = { "n", 106204 },	-- Archdruid Hamuul Runetotem
						["coord"] = { 43.4, 30.6, 715 },
					}),
					q(44076, {	-- Darkheart Thicket: Essence of Regrowth
						["sourceQuests"] = { 43991 },	-- The Protectors
						["provider"] = { "n", 112549 },	-- Glimmer of Aessina
						["coord"] = { 40.9, 59.0, 715 },
						["lvl"] = 103,
					}),
					q(42050, {	-- Defenders of the Dream
						["sourceQuests"] = { 42051 },	-- Enter Nightmare
						["provider"] = { "n", 107163 },	-- Archdruid Hamuul Runetotem
						["coord"] = { 61.2, 65.2, 760 },
					}),
					q(43403, {	-- Defending the Isles
						["sourceQuests"] = { 42046 },	-- A New Beginning
						["provider"] = { "n", 106250 },	-- Keeper Remulos
						["coord"] = { 60.5, 23.6, MOUNT_HYJAL },
					}),
					q(42031, {	-- Dire Growth
						["sourceQuests"] = { 42032 },	-- Sampling the Nightmare
						["provider"] = { "n", 98002 },	-- Skylord Omnuron
						["coord"] = { 52.6, 51.4, THE_DREAMGROVE },
					}),
					q(40835, {	-- Disturbing the Past
						["sourceQuests"] = { 40834 },	-- Following the Curse
						["provider"] = { "n", 100729 },	-- Revil Kost
						["coord"] = { 52.4, 34.4, DEADWIND_PASS },
					}),
					q(40654, {	-- Druids of the Claw
						["sourceQuests"] = { 42036 },	-- Idol of the Wilds
						["provider"] = { "n", 101195 },	-- Rensar Greathoof
						["coord"] = { 44.6, 52.0, THE_DREAMGROVE },
						["lvl"] = 103,
					}),
					q(42041, {	-- Enduring the Nightmare
						["sourceQuests"] = { 42040 },	-- The Way to Nordrassil
						["provider"] = { "n", 106204 },	-- Archdruid Hamuul Runetotem
						["coord"] = { 43.4, 30.6, 715 },
					}),
					q(42051, {	-- Enter Nightmare
						["sourceQuests"] = { 42049 },	-- Powering the Portal
						["provider"] = { "n", 101195 },	-- Rensar Greathoof
						["coord"] = { 44.7, 52.0, THE_DREAMGROVE },
						["maps"] = { MOONGLADE },
					}),
					q(44235, {	-- Essence of Fate
						["provider"] = { "n", 110810 },	-- Almenis
						["coord"] = { 41.0, 29.3, THE_DREAMGROVE },
					}),
					q(42719, {	-- Eye of Azshara: Cleansing the Dreamway
						["sourceQuests"] = { 42045 },	-- Communing with Malorne
						["provider"] = { "n", 98008 },	-- Brightwing
						["coord"] = { 39.6, 45.5, 715 },
					}),
					q(44077, {	-- Eye of Azshara: Essence of Balance
						["sourceQuests"] = { 43991 },	-- The Protectors
						["provider"] = { "n", 112548 },	-- Keeper Remulos
						["coord"] = { 30.7, 50.8, 715 },
						["lvl"] = 103,
					}),
					q(41783, {	-- Fallen Offerings
						["sourceQuests"] = { 41782 },	-- To The Hills
						["provider"] = { "n", 104535 },	-- Lea Stonepaw
						["coord"] = { 51.3, 36.8, GRIZZLY_HILLS },
						["u"] = REMOVED_FROM_GAME,	-- was not part of the questline as of 12/12/20
					}),
					q(42365, {	-- Focusing the Energies
						["sourceQuests"] = { 42046 },	-- A New Beginning
						["provider"] = { "n", 106250 },	-- Keeper Remulos
						["coord"] = { 60.5, 23.6, THE_DREAMGROVE },
					}),
					q(91614, {	-- Focusing the Energies (Remix)
						["sourceQuests"] = { 42046 },	-- A New Beginning
						["provider"] = { "n", 106250 },	-- Keeper Remulos
						["coord"] = { 60.5, 23.6, THE_DREAMGROVE },
						["timeline"] = { ADDED_LEGION_REMIX, REMOVED_LEGION_REMIX_END },
					}),
					q(40834, {	-- Following the Curse
						["sourceQuests"] = { 40785 },	-- A Foe in the Dark
						["provider"] = { "n", 100323 },	-- Revil Kost
						["coord"] = { 77.4, 36.3, DUSKWOOD },
					}),
					q(46786, {	-- Further Advancement
						["sourceQuests"] = { 46044 },	-- Champion: Thisalee Crow
						["provider"] = { "n", 98002 },	-- Skylord Omnuron
						["coord"] = { 52.6, 51.4, THE_DREAMGROVE },
					}),
					q(46154, {	-- Furthering Knowledge
						["u"] = REMOVED_FROM_GAME,
					}),
					q(42037, {	-- Gathering the Dreamweavers
						["sourceQuests"] = { 42036 },	-- Idol of the Wilds
						["provider"] = { "n", 98002 },	-- Skylord Omnuron
						["coord"] = { 52.6, 51.4, THE_DREAMGROVE },
						["lvl"] = 103,
					}),
					q(42034, {	-- Grip of Nightmare
						["sourceQuests"] = { 42033 },	-- Malorne's Refuge
						["provider"] = { "n", 105903 },	-- Broll Bearmantle
						["coord"] = { 57.2, 71.3, VALSHARAH },
						["lvl"] = 103,
					}),
					q(45425, {	-- Grovebound
						["sourceQuests"] = { 46677 },	-- Prick of a Thistle
						["qgs"] = {
							120070,	-- Thisalee Crow
							120084,	-- Druid of the Talon
						},
						["maps"] = { BROKEN_SHORE },
					}),
					q(42516, {	-- Growing Power
						["description"] = "To get this quest, you have to port to Dalaran.",
						["sourceQuests"] = { 40653 },	-- Making Trails
						["provider"] = { "n", 112689 },	-- Archdruid Hamuul Runetotem
						["isBreadcrumb"] = true,
					}),
					q(44075, {	-- Halls of Valor: Essence of Ferocity
						["sourceQuests"] = { 43991 },	-- The Protectors
						["provider"] = { "n", 112544 },	-- Keeper Remulos
						["coord"] = { 31.1, 36.5, 715 },
						["lvl"] = 103,
					}),
					q(43879, {	-- Hitting the Books
						["u"] = REMOVED_FROM_GAME,
					}),
					q(42036, {	-- Idol of the Wilds
						["sourceQuests"] = { 42035 },	-- Tracking the Enemy
						["provider"] = { "n", 106883 },	-- Sylendra Gladesong
						["coord"] = { 59.8, 75.2, VALSHARAH },
						["lvl"] = 103,
					}),
					q(41436, {	-- In Deep Slumber
						["sourceQuests"] = { 41449 },	-- Join the Dreamer
						["provider"] = { "n", 104349 },	-- Naralex
						["coord"] = { 39.6, 18.2, VALSHARAH },	-- technically Dreamgrove, but inside the barrow den the mapID changes
						["groups"] = {
							o(248098, {	-- C'Hanir
								["coord"] = { 45.5, 50.5, 747 },	-- The Dreamgrove
								["groups"] = { i(135582) },	-- Corrupted G'Hanir, the Mother Tree
							}),
						},
					}),
					q(46027, {	-- Investigate the Broken Shore
						["isBreadcrumb"] = true,
						["u"] = REMOVED_FROM_GAME,	-- supposedly removed in 7.2
					}),
					q(40784, {	-- Its Rightful Place
						["sourceQuests"] = { 40783 },	-- The Scythe of Elune
						["provider"] = { "n", 101656 },	-- Valorn Stillbough
						["coord"] = { 48.9, 34.3, DUSKWOOD },
					}),
					q(41449, {	-- Join the Dreamer
						["sourceQuests"] = { 41422 },	-- Necessary Preparations
						["provider"] = { "n", 113525 },	-- Mylune
						["coord"] = { 52.6, 52.8, THE_DREAMGROVE },
					}),
					q(46141, {	-- Knowledge is Power
						["u"] = REMOVED_FROM_GAME,
					}),
					q(45498, {	-- Let Sleeping Dogs Lie
						["sourceQuests"] = { 44921 },	-- Lone Wolf
						["qgs"] = {
							120032,	-- Thisalee Crow
							120041,	-- Druid of the Talon
						},
						["coord"] = { 68.0, 54.8, MOONGLADE },
					}),
					q(44921, {	-- Lone Wolf
						["sourceQuest"] = 44888,	-- Aviana's Grace
						["provider"] = { "n", 115749 },	-- Aviana
						["coord"] = { 44.3, 48.0, MOUNT_HYJAL },
					}),
					q(42033, {	-- Malorne's Refuge
						["sourceQuests"] = { 42031 },	-- Dire Growth
						["provider"] = { "n", 101195 },	-- Rensar Greathoof
						["coord"] = { 44.6, 52.0, THE_DREAMGROVE },
						["lvl"] = 103,
					}),
					q(40653, {	-- Making Trails
						["sourceQuests"] = { 40652 },	-- Word on the Winds
						["provider"] = { "n", 98002 },	-- Skylord Omnuron
						["coord"] = { 52.6, 51.4, THE_DREAMGROVE },
					}),
					q(40649, {	-- Meet with Mylune
						["provider"] = { "n", 103832 },	-- Keeper Remulos
						["coord"] = { 44.8, 50.6, THE_DREAMGROVE },
					}),
					q(41468, {	-- Mistress of the Claw
						["provider"] = { "n", 101195 },	-- Rensar Greathoof
						["coord"] = { 44.7, 52.0, THE_DREAMGROVE },
					}),
					q(44431, {	-- More Weapons of Old
						["sourceQuests"] = { 43980 },	-- Another Weapon of Old
						["provider"] = { "n", 101195 },	-- Rensar Greathoof
						["coord"] = { 44.7, 52.0, THE_DREAMGROVE },
					}),
					q(45532, {	-- Mother's Orders
						["sourceQuest"] = 44869,	-- Talon Terror
						["qgs"] = {
							115802,	-- Thisalee Crow
							119982,	-- Druid of the Talon
						},
						["coord"] = { 40.9, 42.6, MOUNT_HYJAL },
					}),
					q(45426, {	-- Nature's Advance
						["sourceQuests"] = { 46924 },	-- The Wolf's Tale
						["provider"] = { "n", 115750 },	-- Goldrinn <Ancient>
						["coord"] = { 68.1, 55.3, MOONGLADE },
					}),
					q(46676, {	-- Nature's Touch
						["sourceQuests"] = { 46674 },	-- The Preservation of Nature
						["qgs"] = {
							120070,	-- Thisalee Crow
							120084,	-- Druid of the Talon
						},
						["coord"] = { 43.5, 58.3, BROKEN_SHORE },
					}),
					q(41422, {	-- Necessary Preparations
						["sourceQuests"] = { 40649 },	-- Meet with Mylune
						["provider"] = { "n", 113525 },	-- Mylune
						["coord"] = { 52.6, 52.8, THE_DREAMGROVE },
						["groups"] = {
							o(247901, {	-- Empty Cup
								["coord"] = { 36.1, 26.5, THE_DREAMGROVE },
								["groups"] = { i(135501) },	-- Cup of Moonwater (QI!)
							}),
						},
					}),
					q(44074, {	-- Neltharion's Lair: Essence of Tenacity
						["sourceQuests"] = { 43991 },	-- The Protectors
						["provider"] = { "n", 112546 },	-- Keeper Remulos
						["coord"] = { 34.7, 62.5, 715 },
						["lvl"] = 103,
					}),
					q(42049, {	-- Powering the Portal
						["sourceQuests"] = { 42046 },	-- A New Beginning
						["provider"] = { "n", 106250 },	-- Keeper Remulos
						["coord"] = { 60.5, 23.6, THE_DREAMGROVE },
					}),
					q(46677, {	-- Prick of a Thistle
						["sourceQuests"] = {
							46676,	-- Nature's Touch
							46675,	-- To Track a Demon
						},
						["qgs"] = {
							120070,	-- Thisalee Crow
							120084,	-- Druid of the Talon
						},
						["maps"] = { BROKEN_SHORE },
					}),
					q(41690, {	-- Reconvene
						["sourceQuests"] = { 41436 },	-- In Deep Slumber
						["provider"] = { "n", 104349 },	-- Naralex
						["coord"] = { 39.6, 18.2, VALSHARAH },	-- technically Dreamgrove, but in the barrow den the mapID changes
						["cost"] = { { "i", 135582, 1 } },	-- Corrupted G'Hanir, the Mother Tree
					}),
					q(42585, {	-- Recruiting the Troops
						["sourceQuests"] = { 42584 },	-- Sister Lilith
						["provider"] = { "n", 98002 },	-- Skylord Omnuron
						["coord"] = { 52.6, 51.4, THE_DREAMGROVE },
					}),
					q(42583, {	-- Rise, Champions
						["sourceQuests"] = { 42516 },	-- Growing Power
						["provider"] = { "n", 101195 },	-- Rensar Greathoof
						["coord"] = { 44.6, 52.0, THE_DREAMGROVE },
					}),
					q(42032, {	-- Sampling the Nightmare
						["sourceQuests"] = { 42588 },	-- Branching Out
						["provider"] = { "n", 98002 },	-- Skylord Omnuron
						["coord"] = { 52.6, 51.4, THE_DREAMGROVE },
					}),
					q(42438, {	-- Seeds of Renewal
						["sourceQuests"] = { 42428 },	-- The Shrine of Ashamane
						["provider"] = { "n", 107392 },	-- Delandros Shimmermoon
						["coord"] = { 70.4, 46.7, VALSHARAH },
					}),
					q(42584, {	-- Sister Lilith
						["sourceQuests"] = { 42583 },	-- Rise, Champions
						["provider"] = { "n", 98002 },	-- Skylord Omnuron
						["coord"] = { 52.6, 51.4, THE_DREAMGROVE },
					}),
					q(41255, {	-- Sowing The Seed
						["description"] = "Available after collecting your first artifact weapon.",
						["provider"] = { "n", 101195 },	-- Rensar Greathoof
						["coord"] = { 44.5, 51.1, THE_DREAMGROVE },
					}),
					q(44869, {	-- Talon Terror
						["sourceQuests"] = { 47137 },	-- Champions of Legionfall
						["provider"] = { "n", 106299 },	-- Thisalee Crow
						["coord"] = { 44.3, 51.5, THE_DREAMGROVE },
					}),
					q(42042, {	-- Teensy Weensies!
						["sourceQuests"] = { 42040 },	-- The Way to Nordrassil
						["provider"] = { "n", 106204 },	-- Archdruid Hamuul Runetotem
						["coord"] = { 43.4, 30.6, 715 },
					}),
					q(45528, {	-- The Befouled Barrows
						["sourceQuests"] = { 44921 },	-- Lone Wolf
						["qgs"] = {
							120032,	-- Thisalee Crow
							120041,	-- Druid of the Talon
						},
						["coord"] = { 68.0, 54.8, MOONGLADE },
					}),
					q(40900, {	-- The Burden Borne
						["sourceQuests"] = { 40838 },	-- The Dark Riders
						["provider"] = { "n", 101282 },	-- Revil Kost
						["coord"] = { 68.3, 27.1, 46 },
					}),
					q(43365, {	-- The Cycle Continues
						["sourceQuests"] = { 42045 },	-- Communing with Malorne
						["provider"] = { "n", 98008 },	-- Brightwing
						["coord"] = { 39.6, 45.5, 715 },
						["groups"] = {
							i(139380),	-- Dream Seeds (QI!)
						},
					}),
					q(40838, {	-- The Dark Riders
						["sourceQuests"] = { 40837 },	-- The Deadwind Hunt
						["provider"] = { "n", 100812 },	-- Revil Kost
						["coord"] = { 46.9, 69.5, DEADWIND_PASS },
						["groups"] = {
							o(246437, {
								["coord"] = { 68.3, 23.6, 46 },	-- Karazhan Catacombs
								["groups"] = {
									i(128858, {	-- Scythe of Elune
										["ItemAppearanceModifierID"] = 9,
										["groups"] = {
											artifact(244),	-- Standard Appearance
										},
									}),
								},
							}),
						},
					}),
					q(40837, {	-- The Deadwind Hunt
						["sourceQuests"] = { 40835 },	-- Disturbing the Past
						["provider"] = { "n", 100729 },	-- Revil Kost
						["coord"] = { 52.4, 34.4, DEADWIND_PASS },
					}),
					q(42055, {	-- The Demi-God's Return
						["sourceQuests"] = { 42054 },	-- Call of the Wilds
						["provider"] = { "n", 106905 },	-- Malorne
						["coord"] = { 66.1, 66.8, 760 },
						["groups"] = {
							i(139723),	-- Robes of the Dreamgrove
							title(327),	-- Archdruid <Name>
						},
					}),
					q(41918, {	-- The Dreamer Returns
						["sourceQuests"] = { 40647 },	-- When Dreams Become Nightmares
						["provider"] = { "n", 104535 },	-- Lea Stonepaw
						["coord"] = { 51.3, 36.8, GRIZZLY_HILLS },
					}),
					q(40644, {	-- The Dreamway
						["sourceQuests"] = { 41106 },	-- Call of the Wilds
						["provider"] = { "n", 101064 },	-- Archdruid Hamuul Runetotem
						["coord"] = { 56.2, 32.0, MOONGLADE },
					}),
					q(42432, {	-- The Emerald Nightmare: The Emerald Nightmare
						["sourceQuests"] = { 42056 },	-- Champion: Remulos
						["provider"] = { "n", 101195 },	-- Rensar Greathoof
						["coord"] = { 44.7, 52.0, THE_DREAMGROVE },
					}),
					q(42430, {	-- The Fangs of Ashamane
						["sourceQuests"] = { 42440 },	-- The Shrine in Peril
						["provider"] = { "n", 107392 },	-- Delandros Shimmermoon
						["coord"] = { 73.8, 38.4, VALSHARAH },
						["groups"] = {
							o(250386, {	-- Fangs of Ashamane
								["coord"] = { 54.9, 20.5, 693 },	-- Falanaar Arcway
								["groups"] = {
									i(128860, {	-- Fangs of Ashamane
										["ItemAppearanceModifierID"] = 9,
										["groups"] = {
											artifact(426, {	-- Standard Troll
												["displayID"] = 66779,	-- Rainbow Druid Form
												["races"] = { TROLL, ZANDALARI },
											}),
											artifact(427, {	-- Standard Tauren
												["displayID"] = 66777,	-- Brown Druid Form
												["races"] = { TAUREN, HIGHMOUNTAIN_TAUREN },
											}),
											artifact(428, {	-- Standard Worgen / Kultiran
												["displayID"] = 66778,	-- Light Brown Form
												["races"] = { WORGEN, KULTIRAN },
											}),
											artifact(430, {	-- Standard Night Elf
												["displayID"] = 66780,	-- Purple Druid Form
												["races"] = { NIGHTELF },
											}),
										},
									}),
								},
							}),
						},
					}),
					q(41790, {	-- The First Trial of Ursol
						["sourceQuests"] = { 41782 },	-- To The Hills
						["provider"] = { "n", 104385 },	-- Ursol
						["coord"] = { 50.5, 37.6, GRIZZLY_HILLS },
					}),
					q(44232, {	-- The Grove Provides
						["provider"] = { "n", 112323 },	-- Amurra Thistledew
						["coords"] = {
							{ 40.2, 18.7, THE_DREAMGROVE },
							{ 40.0, 24.8, THE_DREAMGROVE },
						},
					--	this is now available to level 45 characters (was previously 110). unsure if it has any specific SQs or if it's just "hey, congratulations for hitting this level!"
					--	["sourceQuests"] = { },	--
						["groups"] = { i(139726) },	-- Hood of the Dreamgrove
					}),
					q(42129, {	-- The Pendant of Starlight
						["sourceQuests"] = { 42045 },	-- Communing with Malorne
						["provider"] = { "n", 98008 },	-- Brightwing
						["coord"] = { 39.6, 45.5, 715 },
					}),
					q(46674, {	-- The Preservation of Nature
						["sourceQuests"] = { 45426 },	-- Nature's Advance
						["provider"] = { "n", 101195 },	-- Rensar Greathoof
						["coord"] = { 44.6, 51.8, THE_DREAMGROVE },
					}),
					q(43991, {	-- The Protectors
						["description"] = "Feral stone: Shapeshift into cat form and use Prowl.\nRestoration stone: Heal the sampling infront of the stone.\nBalance stone: Target the candles and use Moonfire.\nGuardian stone: Just be a Bear.",
						["sourceQuests"] = { 42036 },	-- Idol of the Wilds
						["provider"] = { "n", 103832 },	-- Keeper Remulos
						["coord"] = { 44.6, 50.0, THE_DREAMGROVE },
						["lvl"] = 103,
					}),
					q(40783, {	-- The Scythe of Elune
						["provider"] = { "n", 103778 },	-- Naralex
						["coord"] = { 44.6, 51.4, THE_DREAMGROVE },
					}),
					q(41791, {	-- The Second Trial of Ursol
						["sourceQuests"] = { 41790 },	-- The First Trial of Ursol
						["provider"] = { "n", 104385 },	-- Ursol
						["coord"] = { 50.5, 37.6, GRIZZLY_HILLS },
					}),
					q(40651, {	-- The Seed of Ages
						["u"] = REMOVED_FROM_GAME,
					}),
					q(42428, {	-- The Shrine of Ashamane
						["provider"] = { "n", 101195 },	-- Rensar Greathoof
						["coord"] = { 44.7, 52.0, THE_DREAMGROVE },
					}),
					q(42440, {	-- The Shrine in Peril
						["sourceQuests"] = {
							42438,	-- Seeds of Renewal
							42439,	-- Aid for the Ashen
						},
						["provider"] = { "n", 107392 },	-- Delandros Shimmermoon
						["coord"] = { 73.2, 42.6, VALSHARAH },
					}),
					q(41792, {	-- The Third Trial of Ursol
						["sourceQuests"] = { 41791 },	-- The Second Trial of Ursol
						["provider"] = { "n", 104385 },	-- Ursol
						["coord"] = { 50.5, 37.6, GRIZZLY_HILLS },
					}),
					q(42053, {	-- The War of Ancients
						["sourceQuests"] = { 42050 },	-- Defenders of the Dream
						["provider"] = { "n", 107132 },	-- Keeper Remulos
						["coord"] = { 61.4, 65.6, 760 },
					}),
					q(42040, {	-- The Way to Nordrassil
						["sourceQuests"] = { 42037 },	-- Gathering the Dreamweavers
						["provider"] = { "n", 103832 },	-- Keeper Remulos
						["coord"] = { 44.6, 50.0, THE_DREAMGROVE },
					}),
					q(46924, {	-- The Wolf's Tale
						["sourceQuests"] = {
							45498,	-- Let Sleeping Dogs Lie
							45528,	-- The Befouled Barrows
						},
						["qgs"] = {
							120032,	-- Thisalee Crow
							120041,	-- Druid of the Talon
						},
						["maps"] = { MOONGLADE },
					}),
					q(40645, {	-- To The Dreamgrove
						["sourceQuests"] = { 40644 },	-- The Dreamway
						["provider"] = { "n", 103875 },	-- Malfurion Stormrage
						["coord"] = { 66.8, 60.4, MOONGLADE },
					}),
					q(41782, {	-- To The Hills
						["sourceQuests"] = { 41468 },	-- Mistress of the Claw
						["qgs"] = {
							101259,	-- Lea Stonepaw
							104535,	-- Lea Stonepaw
						},
						["coord"] = { 39.2, 18.7, VALSHARAH },
						["groups"] = { i(135563) },	-- Flask of Moonwell Water (QI!)
					}),
					q(46675, {	-- To Track a Demon
						["sourceQuests"] = { 46674 },	-- The Preservation of Nature
						["qgs"] = {
							120070,	-- Thisalee Crow
							120084,	-- Druid of the Talon
						},
						["coord"] = { 43.5, 58.3, BROKEN_SHORE },
						["groups"] = { i(147282) },	-- Impsorrow Missive (QI!)
					}),
					q(42035, {	-- Tracking the Enemy
						["sourceQuests"] = { 42034 },	-- Grip of Nightmare
						["provider"] = { "n", 105948 },	-- Sylendra Gladesong
						["coord"] = { 56.8, 71.5, VALSHARAH },
						["lvl"] = 103,
					}),
					q(40646, {	-- Weapons of Legend
						["sourceQuests"] = { 40644 },	--	To The Dreamgrove
						["provider"] = { "n", 101195 },	-- Rensar Greathoof
						["coord"] = { 44.5, 51.1, THE_DREAMGROVE },
					}),
					q(44443, {	-- Weapons of the Ancients
						["sourceQuests"] = { 44431 },	-- More Weapons of Old
						["provider"] = { "n", 101195 },	-- Rensar Greathoof
						["coord"] = { 44.7, 52.0, THE_DREAMGROVE },
					}),
					q(40647, {	-- When Dreams Become Nightmares
						["sourceQuests"] = { 41792 },	-- The Third Trial of Ursol
						["provider"] = { "n", 104535 },	-- Lea Stonepaw
						["coord"] = { 51.3, 36.8, GRIZZLY_HILLS },
						["maps"] = {
							757,	-- Ursoc's Lair
						},
						["groups"] = {
							o(248853, {	-- Claws of Ursoc
								["coord"] = { 50.5, 26.6, 757 },	-- Ursoc's Lair
								["groups"] = {
									i(128821, {	-- Claws of Ursoc
										["ItemAppearanceModifierID"] = 9,
										["groups"] = {
											artifact(265, {	-- Standard Troll
												["races"] = { TROLL, ZANDALARI },
											}),
											artifact(264, {	-- Standard Tauren
												["races"] = { TAUREN, HIGHMOUNTAIN_TAUREN },
											}),
											artifact(266, {	-- Standard Worgen / Kultiran
												["races"] = { WORGEN, KULTIRAN },
											}),
											artifact(121, {	-- Standard Night Elf
												["races"] = { NIGHTELF },
											}),
										},
									}),
								},
							}),
						},
					}),
					q(40652, {	-- Word on the Winds
						["sourceQuests"] = { 41332 },	-- Ascending The Circle
						["provider"] = { "n", 104241 },	-- Malfurion Stormrage
						["coord"] = { 46.0, 51.1, THE_DREAMGROVE },
					}),

					-- 7.2.0
					q(46317, {	-- Talon's Call
						["sourceQuests"] = {
							47137,	-- Champions of Legionfall
							45425,	-- Grovebound
						},
						["provider"] = { "n", 118105 },	-- Grovewarden Proudhorn
						["coord"] = { 43.6, 63.6, BROKEN_SHORE },
					}),
					q(46318, {	-- Defense of Aviana
						["sourceQuests"] = { 46317 },	-- Talon's Call
						["provider"] = { "n", 106299 },	-- Thisalee Crow
					}),
					q(46319, {	-- You Can't Take the Sky from Me
						["sourceQuests"] = { 46318 },	-- Defense of Aviana
						["provider"] = { "n", 106299 },	-- Thisalee Crow
						["groups"] = {
							mount(231437),	-- Archdruid's Lunarwing Form (MOUNT!)
							mount(241857),	-- Archdruid's Lunarwing Form (MOUNT!)
						},
					}),
					--

					q(44237),	-- Ancients of War
					q(41412, {	-- The Retreat
						["sourceQuests"] = { 44153 },	-- Light's Charge
						["coord"] = { 60.0, 52.4, THE_DREAMGROVE },
						-- TODO: triggered "Right after completing Light's Charge and picking up Goddess Watch Over You"
						-- maybe more info? is this actually an HQT instead?
					}),
					q(41413),	-- What Could Go Wrong?

					--[[ TODO: Artifact Appearance  Quests Commented Out For Now
					o(253118, {	-- Dreamgrove Blossoms
						sp(220679, { i(139554) }),	-- Acorn of the Endless
					}),
					o(253176, {	-- G'Hanir Blossoms
						sp(220679, { i(139554) }),	-- Acorn of the Endless
					}),
					o(253161, {	-- Grove Vine
						sp(220679, { i(139554) }),	-- Acorn of the Endless
					}),
					o(253157, {	-- Spirit Berries
						sp(220679, { i(139554) }),	-- Acorn of the Endless
					}),
					o(253179, {	-- Sunblossom
						sp(220679, { i(139554) }),	-- Acorn of the Endless
					}),
					o(253181, {	-- Thornstalk
						sp(220679, { i(139554) }),	-- Acorn of the Endless
					}),
					--]]
				}),
				n(98000, {	-- Scouting Map
					["groups"] = {
						i(139420),	-- Wild Mushroom
					},
					["achievementID"] = 11217,
					["modelScale"] = 2.25,
				}),
				n(TREASURES, {
					o_repeated({	-- Spirit Berries
						["coord"] = { 45.6, 63.7, THE_DREAMGROVE },
						["groups"] = {
							o(253157),	-- Spirit Berries
							o(253183),	-- Spirit Berries
							i(140347),	-- Spirit Berries
							i(140351),	-- Sunfruit
						},
					}),
				}),
				n(VENDORS, {
					n(112323, {	-- Amurra Thistledew <Proprietor>
						["coord"] = { 40.0, 24.8, THE_DREAMGROVE },
						["sym"] = {{"select","itemID",143727}},	-- Champion's Salute (TOY!)
						["groups"] = {
							i(139728, {	-- Amice of the Dreamgrove
								["cost"] = 5000000,	-- 500g
							}),
							i(140937, {	-- Archdruid's Armor Kit
								["cost"] = {{ "c", 1220, 2000 }},	-- 2,000x Order Resources
							}),
							i(140967, {	-- Archdruid's Greater Armor Kit
								["cost"] = {{ "c", 1220, 4000 }},	-- 4,000x Order Resources
							}),
							i(140966, {	-- Archdruid's Lesser Armor Kit
								["cost"] = {{ "c", 1220, 500 }},	-- 500x Order Resources
							}),
							i(139730, {	-- Bracers of the Dreamgrove
								["cost"] = 5000000,	-- 500g
							}),
							i(260581, {	-- Brazier of Elune (DECOR!)
								["sourceAchievement"] = 42272,	-- The Archdruid's Campaign
								["timeline"] = { ADDED_11_2_7 },
								["cost"] = {{ "c", 1220, 1500 }},	-- 1,500x Order Resources
							}),
							i(251013, {	-- Cenarion Arch (DECOR!)
								["sourceAchievement"] = 60983,	-- Raise an Army for the Dreamgrove
								["timeline"] = { ADDED_11_2_7 },
								["cost"] = {{ "c", 1220, 2000 }},	-- 2,000x Order Resources
							}),
							i(139729, {	-- Cord of the Dreamgrove
								["cost"] = 5000000,	-- 500g
							}),
							i(140540),	-- Dreamgrove Blade
							i(140542),	-- Dreamgrove Spire
							i(250133, {	-- Dreamweaver Banner (DECOR!)
								["timeline"] = { ADDED_11_2_7 },
								["cost"] = {{ "c", 1220, 1000 }},	-- 1,000x Order Resources
							}),
							i(139725, {	-- Gloves of the Dreamgrove
								["cost"] = 5000000,	-- 500g
							}),
							i(139726, {	-- Hood of the Dreamgrove
								["cost"] = 5000000,	-- 500g
							}),
							i(139727, {	-- Leggings of the Dreamgrove
								["cost"] = 5000000,	-- 500g
							}),
							i(140549),	-- Pillar of the Dreamgrove
							i(250111, {	-- Replica Tome of the Ancients (DECOR!)
								["sourceAchievement"] = 60964,	-- Legendary Research of the Dreamgrove
								["timeline"] = { ADDED_11_2_7 },
								["cost"] = {{ "c", 1220, 3000 }},	-- 3,000x Order Resources
							}),
							i(139723, {	-- Robes of the Dreamgrove
								["cost"] = 5000000,	-- 500g
							}),
							i(245550, {	-- Runed Dreamweaver Moonstone (DECOR!)
								["timeline"] = { ADDED_11_2_7 },
								["cost"] = {{ "c", 1220, 500 }},	-- 500x Order Resources
							}),
							i(139724, {	-- Sandals of the Dreamgrove
								["cost"] = 5000000,	-- 500g
							}),
							i(250134, {	-- Seed of Ages Cutting (DECOR!)
								["sourceAchievement"] = 42289,	-- Hidden Potential of the Archdruid
								["timeline"] = { ADDED_11_2_7 },
								["cost"] = {{ "c", 1220, 5000 }},	-- 5,000x Order Resources
							}),
							i(246216, {	-- Sprouting Lamppost (DECOR!)
								["timeline"] = { ADDED_11_2_7 },
								["cost"] = {{ "c", 1220, 500 }},	-- 500x Order Resources
							}),
							i(136795),	-- Tome of the Wilds: Charm Woodland Creature (CI!)
							i(136794),	-- Tome of the Wilds: Flap (CI!)
							i(136789),	-- Tome of the Wilds: Mount Form (CI!)
							i(136790),	-- Tome of the Wilds: Track Beasts (CI!)
							i(136787),	-- Tome of the Wilds: Treant Form (CI!)
						},
					}),
				}),
				m(715, bubbleDown({["classes"] = { DRUID }},{	-- Emerald Dreamway
					["icon"] = 135745,	-- Dream Portal Icon
					["groups"] = {
						n(DAILY_DREAMWAY_EVENT_ROLL, {
							["questID"] = 44326,	-- "daily dreamway event roll" on WoWHead
							["isDaily"] = true,
							["groups"] = {
								n(DUSKWOOD_ACTIVE, {
									["questID"] = 44329,	-- Owlcat Stone Activate [Duskwood]
									["sourceQuest"] = 44326,	-- Daily Dreamway Event Roll
									["coords"] = {
										{ 42.0, 38.0, DUSKWOOD },
										{ 43.0, 38.0, DUSKWOOD },
										{ 43.7, 41.9, DUSKWOOD },
										{ 44.0, 35.0, DUSKWOOD },
										{ 45.0, 36.0, DUSKWOOD },
										{ 45.0, 45.0, DUSKWOOD },
										{ 46.0, 36.5, DUSKWOOD },
										{ 47.3, 35.9, DUSKWOOD },
										{ 48.6, 31.7, DUSKWOOD },
										{ 48.0, 44.0, DUSKWOOD },
										{ 48.9, 38.7, DUSKWOOD },
										{ 50.0, 41.0, DUSKWOOD },
										{ 50.7, 44.9, DUSKWOOD },
										{ 50.8, 45.0, DUSKWOOD },
										{ 51.0, 41.0, DUSKWOOD },
										{ 51.0, 43.0, DUSKWOOD },
									},
									["isDaily"] = true,
								}),
								n(FERALAS_ACTIVE, {
									["questID"] = 44327,	-- Owlcat Stone Activate [Feralas]
									["sourceQuest"] = 44326,	-- Daily Dreamway Event Roll
									["coords"] = {
										{ 48.0, 6.0, FERALAS },
										{ 48.0, 10.0, FERALAS },
										{ 49.5, 4.4, FERALAS },
										{ 49.0, 11.0, FERALAS },
										{ 49.4, 12.0, FERALAS },
										{ 50.8, 4.4, FERALAS },
										{ 50.0, 11.0, FERALAS },
										{ 50.0, 15.0, FERALAS },
										{ 50.1, 15.9, FERALAS },
										{ 51.5, 5.3, FERALAS },
										{ 51.0, 10.0, FERALAS },
										{ 51.3, 15.5, FERALAS },
										{ 52.0, 6.0, FERALAS },
										{ 52.0, 10.0, FERALAS },
										{ 52.8, 15.4, FERALAS },
										{ 53.8, 14.9, FERALAS },
										{ 54.0, 6.0, FERALAS },
										{ 54.0, 7.8, FERALAS },
										{ 54.3, 10.3, FERALAS },
										{ 54.0, 12.9, FERALAS },
										{ 54.0, 15.0, FERALAS },
									},
									["isDaily"] = true,
								}),
								n(THE_HINTERLANDS_ACTIVE, {
									["questID"] = 44328,	-- Owlcat Stone Activate [Hinterlands]
									["sourceQuest"] = 44326,	-- Daily Dreamway Event Roll
									["coords"] = {
										{ 57.0, 34.0, THE_HINTERLANDS },
										{ 58.1, 18.1, THE_HINTERLANDS },
										{ 58.3, 29.1, THE_HINTERLANDS },
										{ 58.6, 32.1, THE_HINTERLANDS },
										{ 59.6, 25.5, THE_HINTERLANDS },
										{ 60.0, 28.0, THE_HINTERLANDS },
										{ 60.0, 29.0, THE_HINTERLANDS },
										{ 60.0, 33.0, THE_HINTERLANDS },
										{ 63.9, 31.7, THE_HINTERLANDS },
										{ 64.0, 24.0, THE_HINTERLANDS },
										{ 64.0, 32.0, THE_HINTERLANDS },
										{ 66.9, 20.5, THE_HINTERLANDS },
										{ 66.0, 37.2, THE_HINTERLANDS },
										{ 66.0, 38.0, THE_HINTERLANDS },
										{ 67.0, 31.0, THE_HINTERLANDS },
										{ 68.0, 24.0, THE_HINTERLANDS },
										{ 68.8, 25.0, THE_HINTERLANDS },
										{ 68.9, 32.4, THE_HINTERLANDS },
										{ 68.0, 36.0, THE_HINTERLANDS },
									},
									["isDaily"] = true,
								}),
							},
						}),
						n(DUSKWOOD_ACTIVATED, {
							["questID"] = 44330,	-- Owlcat Stone Touched [Duskwood]
							["sourceQuests"] = { 44329 },	-- Owlcat Stone Activate [Duskwood]
						}),
						n(FERALAS_ACTIVATED, {
							["questID"] = 44331,	-- Owlcat Stone Touched [Feralas]
							["sourceQuests"] = { 44327 },	-- Owlcat Stone Activate [Feralas]
						}),
						n(THE_HINTERLANDS_ACTIVATED, {
							["questID"] = 44332,	-- Owlcat Stone Touched [Hinterlands]
							["sourceQuests"] = { 44328 },	-- Owlcat Stone Activate [Hinterlands]
						}),
						n(113663, {	-- Ela'lothen <The Moonspirit>
							["description"] = "Turn on \"Show Incomplete Quests\" to see which stones you are still missing. Each quest has a description added to it on it's location.\n\nOnce all 3 of the Owlcat stones are activated, you will be able to see Ela'lothen. In cat form, type /sit at him for the Feather of the Moonspirit to appear in your inventory.",
							["sourceQuests"] = { 44330, 44331, 44332 },
							["groups"] = {
								i(139552, {	-- Feather of the Moonspirit
									artifact(830),	-- Feral Druid Hidden Artifact Appearance
								}),
							},
						}),
					},
				})),
			},
		})),
	}),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.LEGION, bubbleDownSelf({ ["timeline"] = { ADDED_7_0_3 } }, {
	n(CLASS_HALL, {
		cl(DRUID, bubbleDownSelf({ ["classes"] = { DRUID } }, {
			q(42513),	-- Ashamane's Fall - landing and approaching RPing NPCs at the start of "The Shrine of Ashamane" (questID 42428)
			q(41885),	-- Naralex Kneel Seen - drinking the potion while next to Naralex during "In Deep Slumber" (questID 41436)
			q(41194),	-- Remulos Tracker - entering the Emerald Dreamway for the first time
			q(44236),	-- Essence of Fate - completed with quest 44235
			q(44642),	-- Tracking Quest: 7.0 Class Hall - Druid - Pacing Mission 1A - completed the "Sampling the Nightmare" mission
			q(42360),	-- Tracking Quest: Chose Broll - part of "Defenders of the Dream" (questID 42050)
			q(42361),	-- Tracking Quest: Chose Sylendra - part of "Defenders of the Dream" (questID 42050)
			q(42362),	-- Tracking Quest: Chose Zen'tabra - part of "Defenders of the Dream" (questID 42050)
			q(42363),	-- Tracking Quest: Chose Mylune - part of "Defenders of the Dream" (questID 42050)
			q(43353),	-- Tracking Quest: Celestine of the Harvest - completed the "Gathering the Dreamweavers: Celestine of the Harvest" mission
			q(43354),	-- Tracking Quest: Thisalee Crow - completed the "Gathering the Dreamweavers: Thisalee Crow" mission
			q(43355),	-- Tracking Quest: Matoclaw - completed the "Gathering the Dreamweavers: Matoclaw" mission
			q(43356),	-- Tracking Quest: Talza - completed the "Gathering the Dreamweavers: Talza" mission
			q(43357),	-- Tracking Quest: Graham Silverclaw - completed the "Gathering the Dreamweavers: Graham Silverclaw" mission
		})),
	}),
})));
