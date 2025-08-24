-----------------------------------------------------
--     W O R L D   E V E N T S   M O D U L E       --
-----------------------------------------------------
--[[root(ROOTS.WorldEvents, applyevent(EVENTS.REMIX_LEGION, n(REMIX_LEGION, bubbleDown({ ["timeline"] = { ADDED_11_2_5, REMOVED_LEGION_REMIX_END } }, {
	n(RAIDS, {
		inst(861, {	-- Trial of Valor
			["isRaid"] = true,
			["coord"] = { 70.4, 69.4, STORMHEIM },
			["maps"] = { 806, 807, 808 },
			["groups"] = {
				n(ACHIEVEMENTS, {
					ach(19958, {	-- Raid Finder: Siege of Orgrimmar
						crit(65761, {	-- Immerseus
							["_encounter"] = { 852, DIFFICULTY.RAID.LFR },
						}),
						crit(65762, {	-- The Fallen Protectors
							["_encounter"] = { 849, DIFFICULTY.RAID.LFR },
						}),
						crit(65763, {	-- Norushen
							["_encounter"] = { 866, DIFFICULTY.RAID.LFR },
						}),
						crit(65764, {	-- Sha of Pride
							["_encounter"] = { 867, DIFFICULTY.RAID.LFR },
						}),
						crit(65765, {	-- Galakras
							["_encounter"] = { 881, DIFFICULTY.RAID.LFR },
						}),
						crit(65766, {	-- Iron Juggernaut
							["_encounter"] = { 864, DIFFICULTY.RAID.LFR },
						}),
						crit(65767, {	-- Kor'kron Dark Shaman
							["_encounter"] = { 856, DIFFICULTY.RAID.LFR },
						}),
						crit(65768, {	-- General Nazgrim
							["_encounter"] = { 850, DIFFICULTY.RAID.LFR },
						}),
						crit(65769, {	-- Malkorok
							["_encounter"] = { 846, DIFFICULTY.RAID.LFR },
						}),
						crit(65770, {	-- Spoils of Pandaria
							["_encounter"] = { 870, DIFFICULTY.RAID.LFR },
						}),
						crit(65771, {	-- Thok the Bloodthirsty
							["_encounter"] = { 851, DIFFICULTY.RAID.LFR },
						}),
						crit(65772, {	-- Siegecrafter Blackfuse
							["_encounter"] = { 865, DIFFICULTY.RAID.LFR },
						}),
						crit(65773, {	-- Paragons of the Klaxxi
							["_encounter"] = { 853, DIFFICULTY.RAID.LFR },
						}),
						crit(65774, {	-- Garrosh Hellscream
							["_encounter"] = { 869, DIFFICULTY.RAID.LFR },
						}),
					}),
					ach(19959, {	-- Siege of Orgrimmar
						crit(65775, {	-- Immerseus
							["_encounter"] = { 852, DIFFICULTY.RAID.NORMAL },
						}),
						crit(65776, {	-- The Fallen Protectors
							["_encounter"] = { 849, DIFFICULTY.RAID.NORMAL },
						}),
						crit(65777, {	-- Norushen
							["_encounter"] = { 866, DIFFICULTY.RAID.NORMAL },
						}),
						crit(65778, {	-- Sha of Pride
							["_encounter"] = { 867, DIFFICULTY.RAID.NORMAL },
						}),
						crit(65779, {	-- Galakras
							["_encounter"] = { 881, DIFFICULTY.RAID.NORMAL },
						}),
						crit(65780, {	-- Iron Juggernaut
							["_encounter"] = { 864, DIFFICULTY.RAID.NORMAL },
						}),
						crit(65781, {	-- Kor'kron Dark Shaman
							["_encounter"] = { 856, DIFFICULTY.RAID.NORMAL },
						}),
						crit(65782, {	-- General Nazgrim
							["_encounter"] = { 850, DIFFICULTY.RAID.NORMAL },
						}),
						crit(65783, {	-- Malkorok
							["_encounter"] = { 846, DIFFICULTY.RAID.NORMAL },
						}),
						crit(65784, {	-- Spoils of Pandaria
							["_encounter"] = { 870, DIFFICULTY.RAID.NORMAL },
						}),
						crit(65785, {	-- Thok the Bloodthirsty
							["_encounter"] = { 851, DIFFICULTY.RAID.NORMAL },
						}),
						crit(65786, {	-- Siegecrafter Blackfuse
							["_encounter"] = { 865, DIFFICULTY.RAID.NORMAL },
						}),
						crit(65787, {	-- Paragons of the Klaxxi
							["_encounter"] = { 853, DIFFICULTY.RAID.NORMAL },
						}),
						crit(65788, {	-- Garrosh Hellscream
							["_encounter"] = { 869, DIFFICULTY.RAID.NORMAL },
						}),
					}),
					ach(19960, {	-- Heroic: Siege of Orgrimmar
						crit(65789, {	-- Immerseus
							["_encounter"] = { 852, DIFFICULTY.RAID.HEROIC },
						}),
						crit(65790, {	-- The Fallen Protectors
							["_encounter"] = { 849, DIFFICULTY.RAID.HEROIC },
						}),
						crit(65791, {	-- Norushen
							["_encounter"] = { 866, DIFFICULTY.RAID.HEROIC },
						}),
						crit(65792, {	-- Sha of Pride
							["_encounter"] = { 867, DIFFICULTY.RAID.HEROIC },
						}),
						crit(65793, {	-- Galakras
							["_encounter"] = { 881, DIFFICULTY.RAID.HEROIC },
						}),
						crit(65794, {	-- Iron Juggernaut
							["_encounter"] = { 864, DIFFICULTY.RAID.HEROIC },
						}),
						crit(65795, {	-- Kor'kron Dark Shaman
							["_encounter"] = { 856, DIFFICULTY.RAID.HEROIC },
						}),
						crit(65796, {	-- General Nazgrim
							["_encounter"] = { 850, DIFFICULTY.RAID.HEROIC },
						}),
						crit(65797, {	-- Malkorok
							["_encounter"] = { 846, DIFFICULTY.RAID.HEROIC },
						}),
						crit(65798, {	-- Spoils of Pandaria
							["_encounter"] = { 870, DIFFICULTY.RAID.HEROIC },
						}),
						crit(65799, {	-- Thok the Bloodthirsty
							["_encounter"] = { 851, DIFFICULTY.RAID.HEROIC },
						}),
						crit(65800, {	-- Siegecrafter Blackfuse
							["_encounter"] = { 865, DIFFICULTY.RAID.HEROIC },
						}),
						crit(65801, {	-- Paragons of the Klaxxi
							["_encounter"] = { 853, DIFFICULTY.RAID.HEROIC },
						}),
						crit(65802, {	-- Garrosh Hellscream
							["_encounter"] = { 869, DIFFICULTY.RAID.HEROIC },
						}),
					}),
					ach(19961, {	-- Mythic: Siege of Orgrimmar
						title(552),	-- <Name>, Paragon of the Mists
						crit(65803, {	-- Immerseus
							["_encounter"] = { 852, DIFFICULTY.RAID.MYTHIC },
						}),
						crit(65804, {	-- The Fallen Protectors
							["_encounter"] = { 849, DIFFICULTY.RAID.MYTHIC },
						}),
						crit(65805, {	-- Norushen
							["_encounter"] = { 866, DIFFICULTY.RAID.MYTHIC },
						}),
						crit(65806, {	-- Sha of Pride
							["_encounter"] = { 867, DIFFICULTY.RAID.MYTHIC },
						}),
						crit(65807, {	-- Galakras
							["_encounter"] = { 881, DIFFICULTY.RAID.MYTHIC },
						}),
						crit(65808, {	-- Iron Juggernaut
							["_encounter"] = { 864, DIFFICULTY.RAID.MYTHIC },
						}),
						crit(65809, {	-- Kor'kron Dark Shaman
							["_encounter"] = { 856, DIFFICULTY.RAID.MYTHIC },
						}),
						crit(65810, {	-- General Nazgrim
							["_encounter"] = { 850, DIFFICULTY.RAID.MYTHIC },
						}),
						crit(65811, {	-- Malkorok
							["_encounter"] = { 846, DIFFICULTY.RAID.MYTHIC },
						}),
						crit(65812, {	-- Spoils of Pandaria
							["_encounter"] = { 870, DIFFICULTY.RAID.MYTHIC },
						}),
						crit(65813, {	-- Thok the Bloodthirsty
							["_encounter"] = { 851, DIFFICULTY.RAID.MYTHIC },
						}),
						crit(65814, {	-- Siegecrafter Blackfuse
							["_encounter"] = { 865, DIFFICULTY.RAID.MYTHIC },
						}),
						crit(65815, {	-- Paragons of the Klaxxi
							["_encounter"] = { 853, DIFFICULTY.RAID.MYTHIC },
						}),
						crit(65816, {	-- Garrosh Hellscream
							["_encounter"] = { 869, DIFFICULTY.RAID.MYTHIC },
						}),
					}),
				}),
				d(DIFFICULTY.RAID.LFR, {
					n(ARMOR, bubbleDown({ ["modID"] = 0 }, {
						filter(CLOTH, {
							-- MAGE
							i(213827),	-- Chronomancer Cuffs
							i(213828),	-- Chronomancer Belt
							i(213829),	-- Chronomancer Amice
							i(213830),	-- Chronomancer Pants
							i(213831),	-- Chronomancer Cowl
							i(213832),	-- Chronomancer Handwraps
							i(213833),	-- Chronomancer Treads
							i(213834),	-- Chronomancer Raiment
							-- PRIEST
							i(213891),	-- Bracers of the Ternion Glory
							i(213892),	-- Cord of the Ternion Glory
							i(213893),	-- Shoulderpads of the Ternion Glory
							i(213894),	-- Leggings of the Ternion Glory
							i(213895),	-- Hood of the Ternion Glory
							i(213896),	-- Gloves of the Ternion Glory
							i(213897),	-- Sandals of the Ternion Glory
							i(213898),	-- Robe of the Ternion Glory
							-- WARLOCK
							i(213971),	-- Cuffs of the Horned Nightmare
							i(213972),	-- Belt of the Horned Nightmare
							i(213973),	-- Amice of the Horned Nightmare
							i(213974),	-- Pants of the Horned Nightmare
							i(213975),	-- Cowl of the Horned Nightmare
							i(213976),	-- Handwraps of the Horned Nightmare
							i(213977),	-- Treads of the Horned Nightmare
							i(213978),	-- Raiment of the Horned Nightmare
						}),
						filter(LEATHER, {
							-- DRUID
							i(214190),	-- Bracers of the Shattered Vale
							i(214191),	-- Tunic of the Shattered Vale
							i(214192),	-- Boots of the Shattered Vale
							i(214193),	-- Helm of the Shattered Vale
							i(214194),	-- Gloves of the Shattered Vale
							i(214195),	-- Belt of the Shattered Vale
							i(214196),	-- Shoulderpads of the Shattered Vale
							i(214197),	-- Leggings of the Shattered Vale
							-- MONK
							i(214283),	-- Leggings of Seven Sacred Seals
							i(214284),	-- Shoulderpads of Seven Sacred Seals
							i(214285),	-- Belt of Seven Sacred Seals
							i(214286),	-- Gloves of Seven Sacred Seals
							i(214287),	-- Helm of Seven Sacred Seals
							i(214288),	-- Boots of Seven Sacred Seals
							i(214289),	-- Tunic of Seven Sacred Seals
							i(214290),	-- Bracers of Seven Sacred Seals
							-- ROGUE
							i(214363),	-- Legguards of the Barbed Assassin
							i(214364),	-- Spaulders of the Barbed Assassin
							i(214365),	-- Waistband of the Barbed Assassin
							i(214366),	-- Grips of the Barbed Assassin
							i(214367),	-- Cover of the Barbed Assassin
							i(214368),	-- Footguards of the Barbed Assassin
							i(214369),	-- Vest of the Barbed Assassin
							i(214370),	-- Bindings of the Barbed Assassin
						}),
						filter(MAIL, {
							-- HUNTER
							i(214617),	-- Wristguards of the Unblinking Vigil
							i(214618),	-- Breastplate of the Unblinking Vigil
							i(214619),	-- Feet of the Unblinking Vigil
							i(214620),	-- Helmet of the Unblinking Vigil
							i(214621),	-- Grips of the Unblinking Vigil
							i(214622),	-- Girdle of the Unblinking Vigil
							i(214623),	-- Mantle of the Unblinking Vigil
							i(214624),	-- Legwraps of the Unblinking Vigil
							-- SHAMAN
							i(214695),	-- Breastplate of Celestial Harmony
							i(214694),	-- Footguards of Celestial Harmony
							i(214691),	-- Girdle of Celestial Harmony
							i(214692),	-- Grips of Celestial Harmony
							i(214693),	-- Helmet of Celestial Harmony
							i(214689),	-- Legwraps of Celestial Harmony
							i(214690),	-- Mantle of Celestial Harmony
							i(214696),	-- Wristguards of Celestial Harmony
						}),
						filter(PLATE, {
							-- DEATH KNIGHT
							i(214873),	-- Chestguard of Cyclopean Dread
							i(214874),	-- Armguards of Cyclopean Dread
							i(214875),	-- Greatboots of Cyclopean Dread
							i(214876),	-- Warhelm of Cyclopean Dread
							i(214877),	-- Grasp of Cyclopean Dread
							i(214878),	-- Waistguard of Cyclopean Dread
							i(214879),	-- Shoulderguards of Cyclopean Dread
							i(214880),	-- Greaves of Cyclopean Dread
							-- PALADIN
							i(214937),	-- Warboots of Winged Triumph
							i(214938),	-- Vambraces of Winged Triumph
							i(214939),	-- Legplates of Winged Triumph
							i(214940),	-- Greathelm of Winged Triumph
							i(214941),	-- Battleplate of Winged Triumph
							i(214942),	-- Handguards of Winged Triumph
							i(214943),	-- Spaulders of Winged Triumph
							i(214944),	-- Greatbelt of Winged Triumph
							-- WARRIOR
							i(215025),	-- Girdle of the Prehistoric Marauder
							i(215026),	-- Pauldrons of the Prehistoric Marauder
							i(215027),	-- Grasp of the Prehistoric Marauder
							i(215028),	-- Breastplate of the Prehistoric Marauder
							i(215029),	-- Helm of the Prehistoric Marauder
							i(215030),	-- Legguards of the Prehistoric Marauder
							i(215031),	-- Bracers of the Prehistoric Marauder
							i(215032),	-- Sabatons of the Prehistoric Marauder
						}),
					})),
					n(WEAPONS, bubbleDown({ ["modID"] = 0 }, {
						i(215917),	-- Arcweaver Spellblade
						i(215520),	-- Dagryn's Longbow
						i(215551),	-- Death Lotus Repeater
						i(215835),	-- Drakebinder's Spire
						i(210343),	-- Gar'tok, Might of the Faithful
						i(215971),	-- Greatsword of Fallen Pride
						i(215794),	-- Halberd of Inner Darkness
						i(215469),	-- Haromm's Frozen Battleaxe
						i(215524),	-- Hisek's Longbow
						i(215715),	-- Kardris' Scepter
						i(215913),	-- Kil'ruk's Hateful Blade
						i(210336),	-- Kor'kron Heavy Rifle
						i(215477),	-- Korven's Crescent
						i(215663),	-- Lucky Cricket Cage
						i(215720),	-- Mace of the Old Ones
						i(215473),	-- Malkorok's Headtaker
						i(210643),	-- Mistspinner's Channel
						i(215573),	-- Nazgrim's Shanker
						i(215572),	-- Norushen's Dagger
						i(216554),	-- Norushen's Tower Shield
						i(215831),	-- Pride's Gaze
						i(215659),	-- Prophecies of Y'Shaarj
						i(215577),	-- Rik'kal's Bloody Blade
						i(215827),	-- Rod of the Megantholithic Apparatus
						i(215667),	-- Sha-Touched Globule
						i(215921),	-- Shao-Tien Saber
						i(216555),	-- Shield of the Fallen General
						i(215723),	-- Siegecrafter's Forge Drill
						i(215628),	-- Softfoot's Iron Claw
						i(211161),	-- Sphere of Immerseus
						i(210338),	-- Spire of Supremacy
						i(210341),	-- Staff of Corrupted Waters
						i(216546),	-- Visage of Dread
						i(215501),	-- Xal'atoh, Malformed Image of Gorehowl
						i(215909),	-- Xifeng, Longblade of the Guardian
					})),
					header(HEADERS.Achievement, 8458, {	-- Vale of Eternal Sorrows
						e(852, {	-- Immerseus
							["crs"] = { 71543 },	-- Immerseus
						}),
						e(849, {	-- The Fallen Protectors
							["crs"] = {
								71479,	-- He Softfoot [The Fallen Protectors]
								71475,	-- Rook Stonetoe [The Fallen Protectors]
								71480,	-- Sun Tenderheart [The Fallen Protectors]
							},
						}),
						e(866, {	-- Norushen
							["crs"] = {
								71965,	-- Norushen
								72276,	-- Amalgam of Corruption
							},
						}),
						e(867, {	-- Sha of Pride
							["crs"] = { 71734 },	-- Sha of Pride
						}),
					}),
					header(HEADERS.Achievement, 8459, {	-- Gates of Retribution
						e(881, {	-- Galakras
							["crs"] = { 72249 },	-- Galakras
						}),
						e(864, {	-- Iron Juggernaut
							["crs"] = { 71466 },	-- Iron Juggernaut
						}),
						e(856, {	-- Kor'kron Dark Shaman
							["crs"] = {
								71466,	-- Earthbreaker Haromm
								71858,	-- Wavebinder Kardris
							},
						}),
						e(850, {	-- General Nazgrim
							["crs"] = { 71515 },	-- General Nazgrim
						}),
					}),
					header(HEADERS.Achievement, 8461, {	-- The Underhold
						e(846, {	-- Malkorok
							["crs"] = { 71454 },	-- Malkorok
						}),
						e(870, {	-- Spoils of Pandaria
							["crs"] = { 71889 },	-- Secured Stockpile of Pandaren Spoils
						}),
						e(851, {	-- Thok the Bloodthirsty
							["crs"] = { 71529 },	-- Thok the Bloodthirsty
						}),
					}),
					header(HEADERS.Achievement, 8462, {	-- Downfall
						e(865, {	-- Siegecrafter Blackfuse
							["crs"] = { 71504 },	-- Siegecrafter Blackfuse
						}),
						e(853, {	-- Paragons of the Klaxxi
							["crs"] = {
								71153,	-- Hisek the Swarmkeeper
								71160,	-- Iyyokuk the Lucid
								71154,	-- Ka'roz the Locust
								71156,	-- Kaz'tik the Manipulator
								71161,	-- Kil'ruk the Wind-Reaver
								71155,	-- Korven the Prime
								71157,	-- Xaril the Poisoned Mind
								71158,	-- Rik'kal the Dissector
								71152,	-- Skeer the Bloodseeker
							},
						}),
						e(869, {	-- Garrosh Hellscream
							["crs"] = { 71865 },	-- Garrosh Hellscream
						}),
					}),
				}),
				d(DIFFICULTY.RAID.NORMAL, {
					n(ARMOR, bubbleDown({ ["modID"] = 0 }, {
						filter(CLOTH, {
							-- MAGE
							i(213835),	-- Chronomancer Vestment
							i(213836),	-- Chronomancer Slippers
							i(213837),	-- Chronomancer Mitts
							i(213838),	-- Chronomancer Crown
							i(213839),	-- Chronomancer Trousers
							i(213840),	-- Chronomancer Mantle
							i(213841),	-- Chronomancer Sash
							i(213842),	-- Chronomancer Wristwraps
							-- PRIEST
							i(213907),	-- Wristwraps of the Ternion Glory
							i(213908),	-- Sash of the Ternion Glory
							i(213909),	-- Mantle of the Ternion Glory
							i(213910),	-- Trousers of the Ternion Glory
							i(213911),	-- Crown of the Ternion Glory
							i(213912),	-- Mitts of the Ternion Glory
							i(213913),	-- Slippers of the Ternion Glory
							i(213914),	-- Vestment of the Ternion Glory
							-- WARLOCK
							i(213979),	-- Vestment of the Horned Nightmare
							i(213980),	-- Slippers of the Horned Nightmare
							i(213981),	-- Mitts of the Horned Nightmare
							i(213982),	-- Crown of the Horned Nightmare
							i(213983),	-- Trousers of the Horned Nightmare
							i(213984),	-- Mantle of the Horned Nightmare
							i(213985),	-- Sash of the Horned Nightmare
							i(213986),	-- Wristwraps of the Horned Nightmare
						}),
						filter(LEATHER, {
							-- DRUID
							i(214206),	-- Wraps of the Shattered Vale
							i(214207),	-- Jerkin of the Shattered Vale
							i(214208),	-- Treads of the Shattered Vale
							i(214209),	-- Cap of the Shattered Vale
							i(214210),	-- Handguards of the Shattered Vale
							i(214211),	-- Cinch of the Shattered Vale
							i(214212),	-- Mantle of the Shattered Vale
							i(214213),	-- Pants of the Shattered Vale
							-- MONK
							i(214291),	-- Bindings of Seven Sacred Seals
							i(214292),	-- Vest of Seven Sacred Seals
							i(214293),	-- Footguards of Seven Sacred Seals
							i(214294),	-- Cover of Seven Sacred Seals
							i(214295),	-- Grips of Seven Sacred Seals
							i(214296),	-- Waistband of Seven Sacred Seals
							i(214297),	-- Spaulders of Seven Sacred Seals
							i(214298),	-- Legguards of Seven Sacred Seals
							-- ROGUE
							i(214355),	-- Bracers of the Barbed Assassin
							i(214356),	-- Tunic of the Barbed Assassin
							i(214357),	-- Boots of the Barbed Assassin
							i(214358),	-- Helm of the Barbed Assassin
							i(214359),	-- Gloves of the Barbed Assassin
							i(214360),	-- Belt of the Barbed Assassin
							i(214361),	-- Shoulderpads of the Barbed Assassin
							i(214362),	-- Leggings of the Barbed Assassin
						}),
						filter(MAIL, {
							-- HUNTER
							i(214606),	-- Legguards of the Unblinking Vigil
							i(214607),	-- Pauldrons of the Unblinking Vigil
							i(214608),	-- Chain of the Unblinking Vigil
							i(214610),	-- Gloves of the Unblinking Vigil
							i(214611),	-- Headguard of the Unblinking Vigil
							i(214612),	-- Sabatons of the Unblinking Vigil
							i(214613),	-- Chestguard of the Unblinking Vigil
							i(214614),	-- Armbands of the Unblinking Vigil
							-- SHAMAN
							i(214681),	-- Armbands of Celestial Harmony
							i(214686),	-- Chain of Celestial Harmony
							i(214682),	-- Chestguard of Celestial Harmony
							i(214685),	-- Gloves of Celestial Harmony
							i(214684),	-- Headguard of Celestial Harmony
							i(214688),	-- Legguards of Celestial Harmony
							i(214687),	-- Pauldrons of Celestial Harmony
							i(214683),	-- Sabatons of Celestial Harmony
						}),
						filter(PLATE, {
							-- DEATH KNIGHT
							i(214865),	-- Legplates of Cyclopean Dread
							i(214866),	-- Spaulders of Cyclopean Dread
							i(214867),	-- Greatbelt of Cyclopean Dread
							i(214868),	-- Handguards of Cyclopean Dread
							i(214869),	-- Greathelm of Cyclopean Dread
							i(214870),	-- Warboots of Cyclopean Dread
							i(214871),	-- Vambraces of Cyclopean Dread
							i(214872),	-- Battleplate of Cyclopean Dread
							-- PALADIN
							i(214953),	-- Sabatons of Winged Triumph
							i(214954),	-- Bracers of Winged Triumph
							i(214955),	-- Legguards of Winged Triumph
							i(214956),	-- Helm of Winged Triumph
							i(214957),	-- Breastplate of Winged Triumph
							i(214958),	-- Gauntlets of Winged Triumph
							i(214959),	-- Pauldrons of Winged Triumph
							i(214960),	-- Girdle of Winged Triumph
							-- WARRIOR
							i(215033),	-- Greatbelt of the Prehistoric Marauder
							i(215034),	-- Spaulders of the Prehistoric Marauder
							i(215035),	-- Gauntlets of the Prehistoric Marauder
							i(215036),	-- Battleplate of the Prehistoric Marauder
							i(215037),	-- Greathelm of the Prehistoric Marauder
							i(215038),	-- Legplates of the Prehistoric Marauder
							i(215039),	-- Vambraces of the Prehistoric Marauder
							i(215040),	-- Warboots of the Prehistoric Marauder
						}),
					})),
					n(WEAPONS, bubbleDown({ ["modID"] = 0 }, {
						i(215918),	-- Arcweaver Spellblade
						i(215521),	-- Dagryn's Longbow
						i(215554),	-- Death Lotus Repeater
						i(215836),	-- Drakebinder's Spire
						i(215777),	-- Gar'tok, Might of the Faithful
						i(215972),	-- Greatsword of Fallen Pride
						i(215795),	-- Halberd of Inner Darkness
						i(215470),	-- Haromm's Frozen Battleaxe
						i(215525),	-- Hisek's Longbow
						i(215716),	-- Kardris' Scepter
						i(215914),	-- Kil'ruk's Hateful Blade (wowhead)
						i(215690),	-- Kor'kron Heavy Rifle
						i(215478),	-- Korven's Crescent
						i(215664),	-- Lucky Cricket Cage
						i(215721),	-- Mace of the Old Ones
						i(215474),	-- Malkorok's Headtaker
						i(215994),	-- Mistspinner's Channel
						i(215574),	-- Nazgrim's Shanker
						i(215570),	-- Norushen's Dagger
						i(216551),	-- Norushen's Tower Shield
						i(215832),	-- Pride's Gaze
						i(215660),	-- Prophecies of Y'Shaarj
						i(215578),	-- Rik'kal's Bloody Blade
						i(215828),	-- Rod of the Megantholithic Apparatus
						i(215668),	-- Sha-Touched Globule
						i(215922),	-- Shao-Tien Saber
						i(216556),	-- Shield of the Fallen General
						i(215724),	-- Siegecrafter's Forge Drill
						i(215629),	-- Softfoot's Iron Claw
						i(215712),	-- Sphere of Immerseus
						i(215823),	-- Spire of Supremacy
						i(215818),	-- Staff of Corrupted Waters
						i(216547),	-- Visage of Dread
						i(215502),	-- Xal'atoh, Malformed Image of Gorehowl
						i(215910),	-- Xifeng, Longblade of the Guardian
					})),
					e(852, {	-- Immerseus
						["crs"] = { 71543 },	-- Immerseus
					}),
					e(849, {	-- The Fallen Protectors
						["crs"] = {
							71479,	-- He Softfoot [The Fallen Protectors]
							71475,	-- Rook Stonetoe [The Fallen Protectors]
							71480,	-- Sun Tenderheart [The Fallen Protectors]
						},
					}),
					e(866, {	-- Norushen
						["crs"] = {
							71965,	-- Norushen
							72276,	-- Amalgam of Corruption
						},
					}),
					e(867, {	-- Sha of Pride
						["crs"] = { 71734 },	-- Sha of Pride
					}),
					e(881, {	-- Galakras
						["crs"] = { 72249 },	-- Galakras
					}),
					e(864, {	-- Iron Juggernaut
						["crs"] = { 71466 },	-- Iron Juggernaut
					}),
					e(856, {	-- Kor'kron Dark Shaman
						["crs"] = {
							71466,	-- Earthbreaker Haromm
							71858,	-- Wavebinder Kardris
						},
					}),
					e(850, {	-- General Nazgrim
						["crs"] = { 71515 },	-- General Nazgrim
					}),
					e(846, {	-- Malkorok
						["crs"] = { 71454 },	-- Malkorok
					}),
					e(870, {	-- Spoils of Pandaria
						["crs"] = { 71889 },	-- Secured Stockpile of Pandaren Spoils
					}),
					e(851, {	-- Thok the Bloodthirsty
						["crs"] = { 71529 },	-- Thok the Bloodthirsty
					}),
					e(865, {	-- Siegecrafter Blackfuse
						["crs"] = { 71504 },	-- Siegecrafter Blackfuse
					}),
					e(853, {	-- Paragons of the Klaxxi
						["crs"] = {
							71153,	-- Hisek the Swarmkeeper
							71160,	-- Iyyokuk the Lucid
							71154,	-- Ka'roz the Locust
							71156,	-- Kaz'tik the Manipulator
							71161,	-- Kil'ruk the Wind-Reaver
							71155,	-- Korven the Prime
							71157,	-- Xaril the Poisoned Mind
							71158,	-- Rik'kal the Dissector
							71152,	-- Skeer the Bloodseeker
						},
					}),
					e(869, {	-- Garrosh Hellscream
						["crs"] = { 71865 },	-- Garrosh Hellscream
						["groups"] = {
							i(224461),	-- Bones of Mannoroth
						}
					}),
				}),
				d(DIFFICULTY.RAID.HEROIC, {
					n(ARMOR, bubbleDown({ ["modID"] = 0 }, {
						filter(CLOTH, {
							-- MAGE
							i(213819),	-- Chronomancer Robe
							i(213820),	-- Chronomancer Sandals
							i(213821),	-- Chronomancer Gloves
							i(213822),	-- Chronomancer Hood
							i(213823),	-- Chronomancer Leggings
							i(213824),	-- Chronomancer Shoulderpads
							i(213825),	-- Chronomancer Cord
							i(213826),	-- Chronomancer Bracers
							-- PRIEST
							i(213899),	-- Raiment of the Ternion Glory
							i(213900),	-- Treads of the Ternion Glory
							i(213901),	-- Handwraps of the Ternion Glory
							i(213902),	-- Cowl of the Ternion Glory
							i(213903),	-- Pants of the Ternion Glory
							i(213904),	-- Amice of the Ternion Glory
							i(213905),	-- Belt of the Ternion Glory
							i(213906),	-- Cuffs of the Ternion Glory
							-- WARLOCK
							i(213963),	-- Robe of the Horned Nightmare
							i(213964),	-- Sandals of the Horned Nightmare
							i(213965),	-- Gloves of the Horned Nightmare
							i(213966),	-- Hood of the Horned Nightmare
							i(213967),	-- Leggings of the Horned Nightmare
							i(213968),	-- Shoulderpads of the Horned Nightmare
							i(213969),	-- Cord of the Horned Nightmare
							i(213970),	-- Bracers of the Horned Nightmare
						}),
						filter(LEATHER, {
							-- DRUID
							i(214198),	-- Legguards of the Shattered Vale
							i(214199),	-- Spaulders of the Shattered Vale
							i(214200),	-- Waistband of the Shattered Vale
							i(214201),	-- Grips of the Shattered Vale
							i(214202),	-- Cover of the Shattered Vale
							i(214203),	-- Footguards of the Shattered Vale
							i(214204),	-- Vest of the Shattered Vale
							i(214205),	-- Bindings of the Shattered Vale
							-- MONK
							i(214299),	-- Pants of Seven Sacred Seals
							i(214300),	-- Mantle of Seven Sacred Seals
							i(214301),	-- Cinch of Seven Sacred Seals
							i(214302),	-- Handguards of Seven Sacred Seals
							i(214303),	-- Cap of Seven Sacred Seals
							i(214304),	-- Treads of Seven Sacred Seals
							i(214305),	-- Jerkin of Seven Sacred Seals
							i(214306),	-- Wraps of Seven Sacred Seals
							-- ROGUE
							i(214371),	-- Wraps of the Barbed Assassin
							i(214372),	-- Jerkin of the Barbed Assassin
							i(214373),	-- Treads of the Barbed Assassin
							i(214374),	-- Cap of the Barbed Assassin
							i(214375),	-- Handguards of the Barbed Assassin
							i(214376),	-- Cinch of the Barbed Assassin
							-- Bugged
							--i(214377),	-- Mantle of the Barbed Assassin
							i(214378),	-- Pants of the Barbed Assassin
						}),
						filter(MAIL, {
							-- HUNTER
							i(214625),	-- Leggings of the Unblinking Vigil
							i(214626),	-- Spaulders of the Unblinking Vigil
							i(214627),	-- Belt of the Unblinking Vigil
							i(214628),	-- Gauntlets of the Unblinking Vigil
							i(214629),	-- Helm of the Unblinking Vigil
							i(214630),	-- Boots of the Unblinking Vigil
							i(214631),	-- Hauberk of the Unblinking Vigil
							i(214632),	-- Bracers of the Unblinking Vigil
							-- SHAMAN
							i(214702),	-- Belt of Celestial Harmony
							i(214699),	-- Boots of Celestial Harmony
							i(214697),	-- Bracers of Celestial Harmony
							i(214701),	-- Gauntlets of Celestial Harmony
							i(214698),	-- Hauberk of Celestial Harmony
							i(214700),	-- Helm of Celestial Harmony
							i(214704),	-- Leggings of Celestial Harmony
							i(214703),	-- Spaulders of Celestial Harmony
						}),
						filter(PLATE, {
							-- DEATH KNIGHT
							i(214881),	-- Legguards of Cyclopean Dread
							i(214882),	-- Pauldrons of Cyclopean Dread
							i(214883),	-- Girdle of Cyclopean Dread
							i(214884),	-- Gauntlets of Cyclopean Dread
							i(214885),	-- Helm of Cyclopean Dread
							i(214886),	-- Sabatons of Cyclopean Dread
							i(214887),	-- Bracers of Cyclopean Dread
							i(214888),	-- Breastplate of Cyclopean Dread
							-- PALADIN
							i(214945),	-- Waistguard of Winged Triumph
							i(214946),	-- Shoulderguards of Winged Triumph
							i(214947),	-- Grasp of Winged Triumph
							i(214948),	-- Chestguard of Winged Triumph
							i(214949),	-- Warhelm of Winged Triumph
							i(214950),	-- Greaves of Winged Triumph
							i(214951),	-- Armguards of Winged Triumph
							i(214952),	-- Greatboots of Winged Triumph
							-- WARRIOR
							i(215017),	-- Greatboots of the Prehistoric Marauder
							i(215018),	-- Armguards of the Prehistoric Marauder
							i(215019),	-- Greaves of the Prehistoric Marauder
							i(215020),	-- Warhelm of the Prehistoric Marauder
							i(215021),	-- Chestguard of the Prehistoric Marauder
							i(215022),	-- Handguards of the Prehistoric Marauder
							i(215023),	-- Shoulderguards of the Prehistoric Marauder
							i(215024),	-- Waistguard of the Prehistoric Marauder
						}),
					})),
					n(WEAPONS, bubbleDown({ ["modID"] = 0 }, {
						i(215919),	-- Arcweaver Spellblade
						i(215522),	-- Dagryn's Longbow
						i(215552),	-- Death Lotus Repeater
						i(215837),	-- Drakebinder's Spire
						i(215778),	-- Gar'tok Might of the FaithFul
						i(215973),	-- Greatsword of Fallen Pride
						i(215796),	-- Halberd of Inner Darkness
						i(215471),	-- Haromm's Frozen Battleaxe
						i(215526),	-- Hisek's Longbow
						i(215717),	-- Kardris' Scepter
						i(215915),	-- Kil'ruk's Hateful Blade
						i(215691),	-- Kor'kron Heavy Rifle
						i(215665),	-- Lucky Cricket Cage
						i(215479),	-- Korven's Crescent
						i(215719),	-- Mace of the Old Ones
						i(215475),	-- Malkorok's Headtaker
						i(215995),	-- Mistspinner's Channel
						i(215575),	-- Nazgrim's Shanker
						i(215570),	-- Norushen's Dagger (Malkorok HC)
						i(216552),	-- Noreshen Tower Shield
						i(215579),	-- Rik'kal's Bloody Blade
						i(215829),	-- Rod of the Megantholithic Apparatus
						i(215669),	-- Sha-Touched Globule
						i(215923),	-- Shao-Tien Saber
						i(216557),	-- Shield of the Fallen General
						i(215725),	-- Siegecrafter's Forge Drill
						i(215819),	-- Staff of Corrupted Waters
						i(215713),	-- Sphere of Immerseus
						i(215825),	-- Spire of Supreamcy
						i(215833),	-- Pride's Gaze
						i(215661),	-- Prophecies of Y'shaarj
						i(215630),	-- Softfoot's Iron Claw
						i(216548),	-- Visage of Dread
						i(215503),	-- Xal'atoh, Malformed Image of Gorehowl
						i(215911),	-- Xifeng, Longblade of the Guardian
					})),
					e(852, {	-- Immerseus
						["crs"] = { 71543 },	-- Immerseus
					}),
					e(849, {	-- The Fallen Protectors
						["crs"] = {
							71479,	-- He Softfoot [The Fallen Protectors]
							71475,	-- Rook Stonetoe [The Fallen Protectors]
							71480,	-- Sun Tenderheart [The Fallen Protectors]
						},
					}),
					e(866, {	-- Norushen
						["crs"] = {
							71965,	-- Norushen
							72276,	-- Amalgam of Corruption
						},
					}),
					e(867, {	-- Sha of Pride
						["crs"] = { 71734 },	-- Sha of Pride
					}),
					e(881, {	-- Galakras
						["crs"] = { 72249 },	-- Galakras
					}),
					e(864, {	-- Iron Juggernaut
						["crs"] = { 71466 },	-- Iron Juggernaut
					}),
					e(856, {	-- Kor'kron Dark Shaman
						["crs"] = {
							71466,	-- Earthbreaker Haromm
							71858,	-- Wavebinder Kardris
						},
					}),
					e(850, {	-- General Nazgrim
						["crs"] = { 71515 },	-- General Nazgrim
					}),
					e(846, {	-- Malkorok
						["crs"] = { 71454 },	-- Malkorok
					}),
					e(870, {	-- Spoils of Pandaria
						["crs"] = { 71889 },	-- Secured Stockpile of Pandaren Spoils
					}),
					e(851, {	-- Thok the Bloodthirsty
						["crs"] = { 71529 },	-- Thok the Bloodthirsty
					}),
					e(865, {	-- Siegecrafter Blackfuse
						["crs"] = { 71504 },	-- Siegecrafter Blackfuse
					}),
					e(853, {	-- Paragons of the Klaxxi
						["crs"] = {
							71153,	-- Hisek the Swarmkeeper
							71160,	-- Iyyokuk the Lucid
							71154,	-- Ka'roz the Locust
							71156,	-- Kaz'tik the Manipulator
							71161,	-- Kil'ruk the Wind-Reaver
							71155,	-- Korven the Prime
							71157,	-- Xaril the Poisoned Mind
							71158,	-- Rik'kal the Dissector
							71152,	-- Skeer the Bloodseeker
						},
					}),
					e(869, {	-- Garrosh Hellscream
						["crs"] = { 71865 },	-- Garrosh Hellscream
						["groups"] = {
							i(224461),	-- Bones of Mannoroth
						}
					}),
				}),
				d(DIFFICULTY.RAID.MYTHIC, {
					n(ARMOR, bubbleDown({ ["modID"] = 0 }, {
						filter(CLOTH, {
							-- MAGE
							i(213835),	-- Chronomancer Vestment
							i(213836),	-- Chronomancer Slippers
							i(213837),	-- Chronomancer Mitts
							i(213838),	-- Chronomancer Crown
							i(213839),	-- Chronomancer Trousers
							i(213840),	-- Chronomancer Mantle
							i(213841),	-- Chronomancer Sash
							i(213842),	-- Chronomancer Wristwraps
							-- PRIEST
							i(213907),	-- Wristwraps of the Ternion Glory
							i(213908),	-- Sash of the Ternion Glory
							i(213909),	-- Mantle of the Ternion Glory
							i(213910),	-- Trousers of the Ternion Glory
							i(213911),	-- Crown of the Ternion Glory
							i(213912),	-- Mitts of the Ternion Glory
							i(213913),	-- Slippers of the Ternion Glory
							i(213914),	-- Vestment of the Ternion Glory
							-- WARLOCK
							i(213979),	-- Vestment of the Horned Nightmare
							i(213980),	-- Slippers of the Horned Nightmare
							i(213981),	-- Mitts of the Horned Nightmare
							i(213982),	-- Crown of the Horned Nightmare
							i(213983),	-- Trousers of the Horned Nightmare
							i(213984),	-- Mantle of the Horned Nightmare
							i(213985),	-- Sash of the Horned Nightmare
							i(213986),	-- Wristwraps of the Horned Nightmare
							-- MAGE (shared with HC)
							i(213819),	-- Chronomancer Robe
							i(213820),	-- Chronomancer Sandals
							i(213821),	-- Chronomancer Gloves
							i(213822),	-- Chronomancer Hood
							i(213823),	-- Chronomancer Leggings
							i(213824),	-- Chronomancer Shoulderpads
							i(213825),	-- Chronomancer Cord
							i(213826),	-- Chronomancer Bracers
							-- PRIEST (shared with HC)
							i(213899),	-- Raiment of the Ternion Glory
							i(213900),	-- Treads of the Ternion Glory
							i(213901),	-- Handwraps of the Ternion Glory
							i(213902),	-- Cowl of the Ternion Glory
							i(213903),	-- Pants of the Ternion Glory
							i(213904),	-- Amice of the Ternion Glory
							i(213905),	-- Belt of the Ternion Glory
							i(213906),	-- Cuffs of the Ternion Glory
							-- WARLOCK (shared with HC)
							i(213963),	-- Robe of the Horned Nightmare
							i(213964),	-- Sandals of the Horned Nightmare
							i(213965),	-- Gloves of the Horned Nightmare
							i(213966),	-- Hood of the Horned Nightmare
							i(213967),	-- Leggings of the Horned Nightmare
							i(213968),	-- Shoulderpads of the Horned Nightmare
							i(213969),	-- Cord of the Horned Nightmare
							i(213970),	-- Bracers of the Horned Nightmare
						}),
						filter(LEATHER, {
							-- DRUID
							i(214206),	-- Wraps of the Shattered Vale
							i(214207),	-- Jerkin of the Shattered Vale
							i(214208),	-- Treads of the Shattered Vale
							i(214209),	-- Cap of the Shattered Vale
							i(214210),	-- Handguards of the Shattered Vale
							i(214211),	-- Cinch of the Shattered Vale
							i(214212),	-- Mantle of the Shattered Vale
							i(214213),	-- Pants of the Shattered Vale
							-- MONK
							i(214291),	-- Bindings of Seven Sacred Seals
							i(214292),	-- Vest of Seven Sacred Seals
							i(214293),	-- Footguards of Seven Sacred Seals
							i(214294),	-- Cover of Seven Sacred Seals
							i(214295),	-- Grips of Seven Sacred Seals
							i(214296),	-- Waistband of Seven Sacred Seals
							i(214297),	-- Spaulders of Seven Sacred Seals
							i(214298),	-- Legguards of Seven Sacred Seals
							-- ROGUE
							i(214355),	-- Bracers of the Barbed Assassin
							i(214356),	-- Tunic of the Barbed Assassin
							i(214357),	-- Boots of the Barbed Assassin
							i(214358),	-- Helm of the Barbed Assassin
							i(214359),	-- Gloves of the Barbed Assassin
							i(214360),	-- Belt of the Barbed Assassin
							i(214361),	-- Shoulderpads of the Barbed Assassin
							i(214362),	-- Leggings of the Barbed Assassin
							-- DRUID (shared with HC)
							i(214198),	-- Legguards of the Shattered Vale
							i(214199),	-- Spaulders of the Shattered Vale
							i(214200),	-- Waistband of the Shattered Vale
							i(214201),	-- Grips of the Shattered Vale
							i(214202),	-- Cover of the Shattered Vale
							i(214203),	-- Footguards of the Shattered Vale
							i(214204),	-- Vest of the Shattered Vale
							i(214205),	-- Bindings of the Shattered Vale
							-- MONK (shared with HC)
							i(214299),	-- Pants of Seven Sacred Seals
							i(214300),	-- Mantle of Seven Sacred Seals
							i(214301),	-- Cinch of Seven Sacred Seals
							i(214302),	-- Handguards of Seven Sacred Seals
							i(214303),	-- Cap of Seven Sacred Seals
							i(214304),	-- Treads of Seven Sacred Seals
							i(214305),	-- Jerkin of Seven Sacred Seals
							i(214306),	-- Wraps of Seven Sacred Seals
							-- ROGUE (shared with HC)
							i(214371),	-- Wraps of the Barbed Assassin
							i(214372),	-- Jerkin of the Barbed Assassin
							i(214373),	-- Treads of the Barbed Assassin
							i(214374),	-- Cap of the Barbed Assassin
							i(214375),	-- Handguards of the Barbed Assassin
							i(214376),	-- Cinch of the Barbed Assassin
							-- Bugged
							--i(214377),	-- Mantle of the Barbed Assassin
							i(214378),	-- Pants of the Barbed Assassin
						}),
						filter(MAIL, {
							-- HUNTER
							i(214606),	-- Legguards of the Unblinking Vigil
							i(214607),	-- Pauldrons of the Unblinking Vigil
							i(214608),	-- Chain of the Unblinking Vigil
							i(214610),	-- Gloves of the Unblinking Vigil
							i(214611),	-- Headguard of the Unblinking Vigil
							i(214612),	-- Sabatons of the Unblinking Vigil
							i(214613),	-- Chestguard of the Unblinking Vigil
							i(214614),	-- Armbands of the Unblinking Vigil
							-- SHAMAN
							i(214681),	-- Armbands of Celestial Harmony
							i(214686),	-- Chain of Celestial Harmony
							i(214682),	-- Chestguard of Celestial Harmony
							i(214685),	-- Gloves of Celestial Harmony
							i(214684),	-- Headguard of Celestial Harmony
							i(214688),	-- Legguards of Celestial Harmony
							i(214687),	-- Pauldrons of Celestial Harmony
							i(214683),	-- Sabatons of Celestial Harmony
							-- HUNTER (shared with HC)
							i(214625),	-- Leggings of the Unblinking Vigil
							i(214626),	-- Spaulders of the Unblinking Vigil
							i(214627),	-- Belt of the Unblinking Vigil
							i(214628),	-- Gauntlets of the Unblinking Vigil
							i(214629),	-- Helm of the Unblinking Vigil
							i(214630),	-- Boots of the Unblinking Vigil
							i(214631),	-- Hauberk of the Unblinking Vigil
							i(214632),	-- Bracers of the Unblinking Vigil
							-- SHAMAN (shared with HC)
							i(214702),	-- Belt of Celestial Harmony
							i(214699),	-- Boots of Celestial Harmony
							i(214697),	-- Bracers of Celestial Harmony
							i(214701),	-- Gauntlets of Celestial Harmony
							i(214698),	-- Hauberk of Celestial Harmony
							i(214700),	-- Helm of Celestial Harmony
							i(214704),	-- Leggings of Celestial Harmony
							i(214703),	-- Spaulders of Celestial Harmony
						}),
						filter(PLATE, {
							-- DEATH KNIGHT
							i(214865),	-- Legplates of Cyclopean Dread
							i(214866),	-- Spaulders of Cyclopean Dread
							i(214867),	-- Greatbelt of Cyclopean Dread
							i(214868),	-- Handguards of Cyclopean Dread
							i(214869),	-- Greathelm of Cyclopean Dread
							i(214870),	-- Warboots of Cyclopean Dread
							i(214871),	-- Vambraces of Cyclopean Dread
							i(214872),	-- Battleplate of Cyclopean Dread
							-- PALADIN
							i(214953),	-- Sabatons of Winged Triumph
							i(214954),	-- Bracers of Winged Triumph
							i(214955),	-- Legguards of Winged Triumph
							i(214956),	-- Helm of Winged Triumph
							i(214957),	-- Breastplate of Winged Triumph
							i(214958),	-- Gauntlets of Winged Triumph
							i(214959),	-- Pauldrons of Winged Triumph
							i(214960),	-- Girdle of Winged Triumph
							-- WARRIOR
							i(215033),	-- Greatbelt of the Prehistoric Marauder
							i(215034),	-- Spaulders of the Prehistoric Marauder
							i(215035),	-- Gauntlets of the Prehistoric Marauder
							i(215036),	-- Battleplate of the Prehistoric Marauder
							i(215037),	-- Greathelm of the Prehistoric Marauder
							i(215038),	-- Legplates of the Prehistoric Marauder
							i(215039),	-- Vambraces of the Prehistoric Marauder
							i(215040),	-- Warboots of the Prehistoric Marauder
							-- DEATH KNIGHT (shared with HC)
							i(214881),	-- Legguards of Cyclopean Dread
							i(214882),	-- Pauldrons of Cyclopean Dread
							i(214883),	-- Girdle of Cyclopean Dread
							i(214884),	-- Gauntlets of Cyclopean Dread
							i(214885),	-- Helm of Cyclopean Dread
							i(214886),	-- Sabatons of Cyclopean Dread
							i(214887),	-- Bracers of Cyclopean Dread
							i(214888),	-- Breastplate of Cyclopean Dread
							-- PALADIN (shared with HC)
							i(214945),	-- Waistguard of Winged Triumph
							i(214946),	-- Shoulderguards of Winged Triumph
							i(214947),	-- Grasp of Winged Triumph
							i(214948),	-- Chestguard of Winged Triumph
							i(214949),	-- Warhelm of Winged Triumph
							i(214950),	-- Greaves of Winged Triumph
							i(214951),	-- Armguards of Winged Triumph
							i(214952),	-- Greatboots of Winged Triumph
							-- WARRIOR (shared with HC)
							i(215017),	-- Greatboots of the Prehistoric Marauder
							i(215018),	-- Armguards of the Prehistoric Marauder
							i(215019),	-- Greaves of the Prehistoric Marauder
							i(215020),	-- Warhelm of the Prehistoric Marauder
							i(215021),	-- Chestguard of the Prehistoric Marauder
							i(215022),	-- Handguards of the Prehistoric Marauder
							i(215023),	-- Shoulderguards of the Prehistoric Marauder
							i(215024),	-- Waistguard of the Prehistoric Marauder
						}),
					})),
					n(WEAPONS, bubbleDown({ ["modID"] = 0 }, {
						i(215920),	-- Arcweaver Spellblade
						i(215523),	-- Dagryn's Longbow
						i(215553),	-- Death Lotus Repeater
						i(215838),	-- Drakebinder's Spire
						i(215779),	-- Gar'tok, Might of the Faithful
						i(215974),	-- Greatsword of Fallen Pride
						i(215797),	-- Halberd of Inner Darkness
						i(215472),	-- Haromm's Frozen Battleaxe
						i(215527),	-- Hisek's Longbow
						i(215718),	-- Kardris' Scepter
						i(215916),	-- Kil'ruk's Hateful Blade
						i(215692),	-- Kor'kron Heavy Rifle
						i(215480),	-- Korven's Crescent
						i(215666),	-- Lucky Cricket Cage
						i(215722),	-- Mace of the Old Ones
						i(215476),	-- Malkorok's Headtaker
						i(215996),	-- Mistspinner's Channel
						i(215576),	-- Nazgrim's Shanker
						i(215571),	-- Norushen's Dagger
						i(216553),	-- Norushen's Tower Shield
						i(215834),	-- Pride's Gaze
						i(215662),	-- Prophecies of Y'Shaarj
						i(215580),	-- Rik'kal's Bloody Blade
						i(215830),	-- Rod of the Megantholithic Apparatus
						i(215670),	-- Sha-Touched Globule
						i(215924),	-- Shao-Tien Saber
						i(215726),	-- Siegecrafter's Forge Drill
						i(216558),	-- Shield of the Fallen General
						i(215631),	-- Softfoot's Iron Claw
						i(215826),	-- Spire of Supremacy
						i(215821),	-- Staff of Corrupted Waters
						i(215714),	-- Sphere of Immerseus
						i(216550),	-- Visage of Dread
						i(215504),	-- Xal'atoh, Malformed Image of Gorehowl
						i(215912),	-- Xifeng, Longblade of the Guardian
					})),
					e(852, {	-- Immerseus
						["crs"] = { 71543 },	-- Immerseus
					}),
					e(849, {	-- The Fallen Protectors
						["crs"] = {
							71479,	-- He Softfoot [The Fallen Protectors]
							71475,	-- Rook Stonetoe [The Fallen Protectors]
							71480,	-- Sun Tenderheart [The Fallen Protectors]
						},
					}),
					e(866, {	-- Norushen
						["crs"] = {
							71965,	-- Norushen
							72276,	-- Amalgam of Corruption
						},
					}),
					e(867, {	-- Sha of Pride
						["crs"] = { 71734 },	-- Sha of Pride
					}),
					e(881, {	-- Galakras
						["crs"] = { 72249 },	-- Galakras
					}),
					e(864, {	-- Iron Juggernaut
						["crs"] = { 71466 },	-- Iron Juggernaut
					}),
					e(856, {	-- Kor'kron Dark Shaman
						["crs"] = {
							71466,	-- Earthbreaker Haromm
							71858,	-- Wavebinder Kardris
						},
					}),
					e(850, {	-- General Nazgrim
						["crs"] = { 71515 },	-- General Nazgrim
					}),
					e(846, {	-- Malkorok
						["crs"] = { 71454 },	-- Malkorok
					}),
					e(870, {	-- Spoils of Pandaria
						["crs"] = { 71889 },	-- Secured Stockpile of Pandaren Spoils
					}),
					e(851, {	-- Thok the Bloodthirsty
						["crs"] = { 71529 },	-- Thok the Bloodthirsty
					}),
					e(865, {	-- Siegecrafter Blackfuse
						["crs"] = { 71504 },	-- Siegecrafter Blackfuse
					}),
					e(853, {	-- Paragons of the Klaxxi
						["crs"] = {
							71153,	-- Hisek the Swarmkeeper
							71160,	-- Iyyokuk the Lucid
							71154,	-- Ka'roz the Locust
							71156,	-- Kaz'tik the Manipulator
							71161,	-- Kil'ruk the Wind-Reaver
							71155,	-- Korven the Prime
							71157,	-- Xaril the Poisoned Mind
							71158,	-- Rik'kal the Dissector
							71152,	-- Skeer the Bloodseeker
						},
					}),
					e(869, {	-- Garrosh Hellscream
						["crs"] = { 71865 },	-- Garrosh Hellscream
						["groups"] = {
							i(224461),	-- Bones of Mannoroth
						}
					}),
				}),
			},
		}),
	}),
}))));--]]
