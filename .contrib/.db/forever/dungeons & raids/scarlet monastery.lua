-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
local SCARLET_MONASTERY_GRAVEYARD_HEADER = createHeader({
	readable = "Graveyard",
	icon = 133730,
	text = {
		en = "Graveyard",
		de = "Friedhof",
		-- TODO: es = "",
		-- TODO: mx = "",
		fr = "Cimetière",
		-- TODO: it = "",
		-- TODO: ko = "",
		-- TODO: pt = "",
		ru = "Кладбище",
		cn = "墓地",
		tw = "墓地",
	},
});
local SCARLET_MONASTERY_LIBRARY_HEADER = createHeader({
	readable = "Library",
	icon = 133745,
	text = {
		en = "Library",
		de = "Bibliothek",
		-- TODO: es = "",
		-- TODO: mx = "",
		fr = "Librairie",
		-- TODO: it = "",
		-- TODO: ko = "",
		-- TODO: pt = "",
		ru = "Библиотека",
		cn = "图书馆",
		tw = "圖書館",
	},
});
local SCARLET_MONASTERY_ARMORY_HEADER = createHeader({
	readable = "Armory",
	icon = 643268,
	text = {
		en = "Armory",
		de = "Waffenkammer",
		-- TODO: es = "",
		-- TODO: mx = "",
		fr = "Armurerie",
		-- TODO: it = "",
		-- TODO: ko = "",
		-- TODO: pt = "",
		ru = "Оружейная",
		cn = "军械库",
		tw = "武器庫",
	},
});
local SCARLET_MONASTERY_CATHEDRAL_HEADER = createHeader({
	readable = "Cathedral",
	icon = 136354,
	text = {
		en = "Cathedral",
		de = "Kathedrale",
		-- TODO: es = "",
		-- TODO: mx = "",
		fr = "Cathédrale",
		-- TODO: it = "",
		-- TODO: ko = "",
		-- TODO: pt = "",
		ru = "Собор",
		cn = "大教堂",
		tw = "修道院",
	},
});

instanceroot(316, {	-- Scarlet Monastery
	lore = "The Monastery was once a proud bastion of Lordaeron's priesthood - a center for learning and enlightenment. With the rise of the undead Scourge during the Third War, the peaceful Monastery was converted into a stronghold of the fanatical Scarlet Crusade. The Crusaders are intolerant of all non-human races, regardless of alliance or affiliation. They believe that any and all outsiders are potential carriers of the undead plague - and must be destroyed. Reports indicate that adventurers who enter the monastery are forced to contend with Scarlet Commander Mograine - who commands a large garrison of fanatically devoted warriors. However, the monastery's true master is High Inquisitor Whitemane - a fearsome priestess who possesses the ability to resurrect fallen warriors to do battle in her name.",
	icon =	136354,
	zoneTextAreaID = 796,
	coord = { 82.6, 32.4, MAP.TIRISFAL_GLADES },
	mapID = MAP.SCARLET_MONASTERY,
	lvl = 25,
	groups = {
		n(QUESTS, {
			q(1113, {	-- Hearts of Zeal
				sourceQuest = 1109,	-- Going, Going, Guano!
				qg = 2055,	-- Master Apothecary Faranell <Royal Apothecary Society>
				coord = { 48.82, 69.28, MAP.UNDERCITY },
				races = HORDE_ONLY,
				lvl = 30,
				groups = {
					objective(1, {	-- 0/20 Heart of Zeal
						provider = { "i", 5805 },	-- Heart of Zeal
					}),
				},
			}),
			q(1053, {	-- In the Name of the Light
				sourceQuest = 1052,	-- Down the Scarlet Path (2/2)
				qg = 3980,	-- Raleigh the Devout
				coord = { 51.5, 58.4, MAP.HILLSBRAD_FOOTHILLS },
				races = ALLIANCE_ONLY,
				lvl = 34,
				groups = {
					objective(1, {	-- 0/1 High Inquisitor Whitemane slain
						provider = { "n", 3977 },	-- High Inquisitor Whitemane
					}),
					objective(2, {	-- 0/1 Scarlet Commander Mograine slain
						provider = { "n", 3976 },	-- Scarlet Commander Mograine
					}),
					objective(3, {	-- 0/1 Herod slain
						provider = { "n", 3975 },	-- Herod <The Scarlet Champion>
					}),
					objective(4, {	-- 0/1 Houndmaster Loksey slain
						provider = { "n", 3974 },	-- Houndmaster Loksey
					}),
					i(6830),	-- Bonebiter
					i(6831),	-- Black Menace
					i(6829),	-- Sword of Serenity
					i(11262),	-- Orb of Lorica
				},
			}),
			q(1048, {	-- Into The Scarlet Monastery
				qg = 2425,	-- Varimathras
				coord = { 56.3, 92.2, MAP.UNDERCITY },
				races = HORDE_ONLY,
				lvl = 33,
				groups = {
					objective(1, {	-- 0/1 High Inquisitor Whitemane slain
						provider = { "n", 3977 },	-- High Inquisitor Whitemane
					}),
					objective(2, {	-- 0/1 Scarlet Commander Mograine slain
						provider = { "n", 3976 },	-- Scarlet Commander Mograine
					}),
					objective(3, {	-- 0/1 Herod slain
						provider = { "n", 3975 },	-- Herod <The Scarlet Champion>
					}),
					objective(4, {	-- 0/1 Houndmaster Loksey slain
						provider = { "n", 3974 },	-- Houndmaster Loksey
					}),
					i(6802),	-- Sword of Omen
					i(6803),	-- Prophetic Cane
					i(10711),	-- Dragon's Blood Necklace
				},
			}),
		}),
		n(ZONE_DROPS, {
			i(7759),	-- Archon Chestpiece
			i(7728),	-- Beguiler Robes
			i(7753),	-- Bloodspiller
			i(7729),	-- Chesterfall Musket
			i(7730),	-- Cobalt Crusher
			i(7752),	-- Dreamslayer
			i(7736),	-- Fight Club
			i(7755),	-- Flintrock Shoulders
			i(7754),	-- Harbinger Boots
			i(7786),	-- Headsplitter
			i(5805),	-- Heart of Zeal
			i(2262),	-- Mark of Kern
			i(7787),	-- Resplendent Guardian
			i(7758),	-- Ruthless Shiv
			i(10329),	-- Scarlet Belt
			i(10332),	-- Scarlet Boots
			i(10328),	-- Scarlet Chestpiece
			i(10331),	-- Scarlet Gauntlets
			i(10333),	-- Scarlet Wristguards
			i(5756),	-- Sliverblade
			i(7761),	-- Steelclaw Reaver
			i(5819),	-- Sunblaze Coif
			i(1992),	-- Swampchill Fetish
			i(8225),	-- Tainted Pierce
			i(8226),	-- The Butcher
			i(7760),	-- Warchief Kilt
			i(7727),	-- Watchman Pauldrons
			i(7757),	-- Windweaver Staff
		}),
		n(SCARLET_MONASTERY_GRAVEYARD_HEADER, {
			lvl = 25,
			groups = {
				n(QUESTS, {
					q(1051, {	-- Vorrel's Revenge
						qg = 3981,	-- Vorrel Sengutz
						maps = { MAP.ALTERAC_MOUNTAINS, MAP.HILLSBRAD_FOOTHILLS },
						races = HORDE_ONLY,
						lvl = 25,
						groups = {
							objective(1, {	-- 0/1 Vorrel's Wedding Ring
								provider = { "i", 5538 },	-- Vorrel's Wedding Ring
								coord = { 32.3, 32.8, MAP.ALTERAC_MOUNTAINS },
								cr = 3984,	-- Nancy Vishas
							}),
							i(4643),	-- Grimsteel Cape
							i(7750),	-- Mantle of Woe
							i(7751),	-- Vorrel's Boots
						},
					}),
				}),
				n(RARES, {
					n(6488, {	-- Fallen Champion
						i(7690),	-- Ebon Vise
						i(7691),	-- Embalmed Shroud
						i(7689),	-- Morbid Dawn
					}),
					n(6490, {	-- Azshir the Sleepless
						i(7709),	-- Blighted Leggings
						i(7731),	-- Ghostshard Talisman
						i(7708),	-- Necrotic Wand
					}),
					n(6489, {	-- Ironspine
						i(7687),	-- Ironspine's Fist
						i(7688),	-- Ironspine's Ribcage
						i(7686),	-- Ironspine's Eye
					}),
				}),
				n(3983, {	-- Interrogator Vishas
					i(7683),	-- Bloody Brass Knuckles
					i(7682),	-- Torturing Poker
					i(274290, {	-- Painwalker Buckler
						timeline = { TIMELINE.ADDED_1_60_1 },
					}),
				}),
				n(4543, {	-- Bloodmage Thalnos
					i(7685),	-- Orb of the Forgotten Seer
					i(7684),	-- Bloodmage Mantle
					i(274291, {	-- Polished Skullcap
						timeline = { TIMELINE.ADDED_1_60_1 },
					}),
				}),
			},
		}),
		n(SCARLET_MONASTERY_LIBRARY_HEADER, {
			lvl = 28,
			groups = {
				n(QUESTS, {
					q(1049, {	-- Compendium of the Fallen
						qg = 3978,	-- Sage Truthseeker
						coord = { 34.6, 47.2, MAP.THUNDER_BLUFF },
						races = exclude(UNDEAD, HORDE_ONLY),
						lvl = 28,
						groups = {
							objective(1, {	-- 0/1 Compendium of the Fallen
								providers = {
									{ "i", 5535 },	-- Compendium of the Fallen
									{ "o", 19283 },	-- Compendium of the Fallen
								},
								description = "On one of the shelves on the left as you enter the final hallway leading to Doan.",
							}),
							i(17508),	-- Forcestone Buckler
							i(7749),	-- Omega Orb
							i(7747),	-- Vile Protector
						},
					}),
					q(1050, {	-- Mythology of the Titans
						qg = 3979,	-- Librarian Mae Paledust <Explorers' League>
						coord = { 75.0, 12.5, MAP.IRONFORGE },
						races = ALLIANCE_ONLY,
						lvl = 28,
						groups = {
							objective(1, {	-- 0/1 Mythology of the Titans
								providers = {
									{ "i", 5536 },	-- Mythology of the Titans
									{ "o", 19284 },	-- Mythology of the Titans
								},
								description = "In the hallway with the benches immediately to your left upon entering it.",
							}),
							i(7746),	-- Explorers' League Commendation
						},
					}),
					q(1951, {	-- Rituals of Power
						sourceQuest = 1950,	-- Get the Scoop
						qg = 6548,	-- Magus Tirth
						coord = { 47.82, 75.8, MAP.THOUSAND_NEEDLES },
						maps = { MAP.DUSTWALLOW_MARSH },
						classes = { MAGE },
						lvl = 30,
						groups = {
							objective(1, {	-- 0/1 Rituals of Power
								provider = { "i", 7274 },	-- Rituals of Power
							}),
						},
					}),
					q(1160, {	-- Test of Lore (5/6)
						sourceQuest = 1159,	-- Test of Lore (4/6)
						qg = 4488,	-- Parqual Fintallas
						coord = { 57.8, 65.4, MAP.UNDERCITY },
						races = HORDE_ONLY,
						lvl = 28,
						groups = {
							objective(1, {	-- 0/1 Beginnings of the Undead Threat
								providers = {
									{ "i", 5861 },	-- Beginnings of the Undead Threat
									{ "o", 20726 },	-- Beginnings of the Undead Threat
								},
								description = "In the first cooridor with books, there are 2 pocket rooms, the first pocket room has a table with 2 clickable books on it.\n\nOne of them is a container.",
							}),
						},
					}),
				}),
				n(TREASURES, {
					o(103821, {	-- Doan's Strongbox
						description = "Found in the chest after killing Arcanist Doan.",
						groups = {
							i(7146),	-- The Scarlet Key
						},
					}),
				}),
				n(3974, {	-- Houndmaster Loksey
					i(7710),	-- Loksey's Training Stick
					i(7756),	-- Dog Training Gloves
					i(3456),	-- Dog Whistle
					i(273109, {	-- Blueprint: Trapper's Workbench (RECIPE!)
						timeline = { TIMELINE.ADDED_1_60_1 },
					}),
					i(274292, {	-- Houndmaster Boomerang
						timeline = { TIMELINE.ADDED_1_60_1 },
					}),
				}),
				n(6487, {	-- Arcanist Doan
					i(7714),	-- Hypnotic Blade
					i(7713),	-- Illusionary Rod
					i(7712),	-- Mantle of Doan
					i(7711),	-- Robe of Doan
					i(274293, {	-- Spellsever Crossbow
						timeline = { TIMELINE.ADDED_1_60_1 },
					}),
					i(274294, {	-- Library Walkers
						timeline = { TIMELINE.ADDED_1_60_1 },
					}),
				}),
			},
		}),
		n(SCARLET_MONASTERY_ARMORY_HEADER, {
			cost = { { "i", 7146, 1 } },	-- The Scarlet Key
			lvl = 35,
			groups = {
				n(3975, {	-- Herod
					i(7717),	-- Ravager
					i(7719),	-- Raging Berserker's Helm
					i(7718),	-- Herod's Shoulder
					i(10330),	-- Scarlet Leggings
				}),
				n(6575, {	-- Scarlet Trainee
					i(23192),	-- Tabard of the Scarlet Crusade
				}),
			},
		}),
		n(SCARLET_MONASTERY_CATHEDRAL_HEADER, {
			cost = { { "i", 7146, 1 } },	-- The Scarlet Key
			lvl = 37,
			groups = {
				n(4542, {	-- High Inquisitor Fairbanks
					i(19507),	-- Inquisitor's Shawl
					i(19508),	-- Branded Leather Bracers
					i(19509),	-- Dusty Mail Boots
				}),
				n(3976, {	-- Scarlet Commander Mograine
					i(7726),	-- Aegis of the Scarlet Commander
					i(7724),	-- Gauntlets of Divinity
					i(7723),	-- Mograine's Might
					i(10330),	-- Scarlet Leggings
				}),
				n(3977, {	-- High Inquisitor Whitemane
					i(7721),	-- Hand of Righteousness
					i(7722),	-- Triune Amulet
					i(7720),	-- Whitemane's Chapeau
				}),
			},
		}),
	},
});
