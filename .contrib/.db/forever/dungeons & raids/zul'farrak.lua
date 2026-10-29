-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
instanceroot(241, {	-- Zul'Farrak
	lore = "Troll legends tell of a powerful sword called Sul'thraze the Lasher, a weapon capable of instilling fear and weakness in even the most formidable of foes. Long ago, the weapon was split in half. However, rumors have circulated that the two halves may be found somewhere within Zul'Farrak's walls. Reports have also suggested that a band of mercenaries fleeing Gadgetzan wandered into the city and became trapped. Their fate remains unknown. But perhaps most disturbing of all are the hushed whispers of an ancient creature sleeping within a sacred pool at the city's heart - a mighty demigod who will wreak untold destruction upon any adventurer foolish enough to awaken him.",
	icon = 136368,
	zoneTextAreaID = 978,	-- Zul'Farrak
	mapID = MAP.ZULFARRAK,
	coord = { 39.0, 19.0, MAP.TANARIS },
	lvl = 39,
	groups = {
		n(QUESTS, {
			q(2768, {	-- Divino-matic Rod
				qg = 7407,	-- Chief Engineer Bilgewhizzle <Gadgetzan Water Co.>
				coord = { 52.5, 28.5, MAP.TANARIS },
				lvl = 40,
				groups = {
					objective(1, {	-- 0/1 Divino-matic Rod
						provider = { "i", 8548 },	-- Divino-matic Rod
					}),
					i(9534),	-- Engineer's Guild Headpiece
					i(9533),	-- Masons Fraternity Ring
				},
			}),
			q(2770, {	-- Gahz'rilla
				sourceQuest = 2769,	-- The Brassbolts Brothers
				qg = 4453,	-- Wizzle Brassbolts
				coord = { 78.0, 77.0, MAP.THOUSAND_NEEDLES },
				lvl = 40,
				groups = {
					objective(1, {	-- 0/1 Gahz'rilla's Electrified Scale
						provider = { "i", 8707 },	-- Gahz'rilla's Electrified Scale
					}),
					i(11122, {	-- Carrot on a Stick
						description = "Do NOT vendor this item. Keep it with you always. It is best-in-slot when you are traveling long distances on your mount. (Which you do a lot in Classic!)",
					}),
					i(9653),	-- Speedy Racer Goggles
				},
			}),
			q(2991, {	-- Nekrum's Medallion
				sourceQuest = 2990,	-- Thadius Grimshade
				qg = 8022,	-- Thadius Grimshade
				coord = { 67.0, 19.4, MAP.BLASTED_LANDS },
				races = ALLIANCE_ONLY,
				lvl = 40,
				groups = {
					objective(1, {	-- 0/1 Nekrum's Medallion
						provider = { "i", 9471 },	-- Nekrum's Medallion
					}),
				},
			}),
			q(2865, {	-- Scarab Shells
				sourceQuest = 2864,	-- Tran'rek
				qg = 7876,	-- Tran'rek
				coord = { 51.6, 26.8, MAP.TANARIS },
				lvl = 40,
				groups = {
					objective(1, {	-- 0/5 Uncracked Scarab Shell
						provider = { "i", 9238 },	-- Uncracked Scarab Shell
						cr = 7269,	-- Scarab
					}),
				},
			}),
			q(2861, {	-- Tabetha's Task
				allianceQuestData = {
					qgs = {
						5144,	-- Bink <Mage Trainer>
						5497,	-- Jennea Cannon <Mage Trainer>
					},
					coords = {
						{ 27.0, 8.2, MAP.IRONFORGE },
						{ 38.6, 79.4, MAP.STORMWIND_CITY },
					},
				},
				hordeQuestData = {
					qgs = {
						5885,	-- Deino <Mage Trainer>
						4568,	-- Anastasia Hartwell <Mage Trainer>
					},
					coords = {
						{ 38.4, 86.0, MAP.ORGRIMMAR },
						{ 85.0, 10.2, MAP.UNDERCITY },
					},
				},
				lvl = 40,
				isBreadcrumb = true,
			}),
			q(4787, {	-- The Ancient Egg
				sourceQuest = 3527,	-- The Prophecy of Mosh'aru
				qg = 8579,	-- Yeh'kinya
				coord = { 67.0, 22.4, MAP.TANARIS },
				maps = { MAP.THE_HINTERLANDS },
				lvl = 40,
				groups = {
					objective(1, {	-- 0/1 Ancient Egg
						providers = {
							{ "i", 12402 },	-- Ancient Egg
							{ "o", 175889 },	-- Ancient Egg
						},
						coord = { 57.5, 86.7, MAP.THE_HINTERLANDS },
					}),
				},
			}),
			q(2769, {	-- The Brassbolts Brothers
				qg = 6169,	-- Klockmort Spannerspan
				coord = { 68.2, 46.2, MAP.IRONFORGE },
				races = ALLIANCE_ONLY,
				lvl = 40,
				isBreadcrumb = true,
			}),
			q(3527, {	-- The Prophecy of Mosh'aru
				sourceQuest = 3520,	-- Screecher Spirits
				qg = 8579,	-- Yeh'kinya
				coord = { 67.0, 22.4, MAP.TANARIS },
				lvl = 40,
				groups = {
					objective(1, {	-- 0/1 First Mosh'aru Tablet
						provider = { "i", 10660 },	-- First Mosh'aru Tablet
					}),
					objective(2, {	-- 0/1 Second Mosh'aru Tablet
						provider = { "i", 10661 },	-- Second Mosh'aru Tablet
					}),
				},
			}),
			q(2936, {	-- The Spider God
				sourceQuest = 2935,	-- Consult Master Gadrin
				qg = 3188,	-- Master Gadrin
				coord = { 56.0, 74.6, MAP.DUROTAR },
				races = HORDE_ONLY,
				lvl = 40,
				groups = {
					objective(1, {	-- Find the Spider God's Name
						provider = { "o", 142715 },	-- Tablet of Theka
					}),
				},
			}),
			q(2846, {	-- Tiara of the Deep
				sourceQuest = 2861,	-- Tabetha's Task
				qg = 6546,	-- Tabetha
				coord = { 46.0, 57.0, MAP.DUSTWALLOW_MARSH },
				lvl = 40,
				groups = {
					objective(1, {	-- 0/1 Tiara of the Deep
						provider = { "i", 9234 },	-- Tiara of the Deep
					}),
					i(9527),	-- Spellshifter Rod
					i(9531),	-- Gemshale Pauldrons
				},
			}),
			q(3042, {	-- Troll Temper
				qg = 7804,	-- Trenton Lighthammer <The Mithril Order>
				coord = { 51.4, 28.8, MAP.TANARIS },
				lvl = 40,
				groups = {
					objective(1, {	-- 0/20 Troll Temper
						provider = { "i", 9523 },	-- Troll Temper
					}),
				},
			}),
		}),
		n(SPECIAL, {
			i(9240, {	-- Mallet of Zul'Farrak
				description = "The Sacred Mallet drops from Qiaga the Keeper on top of the Altar of Zul in Hinterlands. You then bring it to the top of Jintha'alor and use it near the altar to turn into the Mallet of Zul'Farrak so you can summon Gahz'rilla in Zul'Farrak.",
				coord = { 59.0, 79.6, MAP.THE_HINTERLANDS },
				cost = { { "i", 9241, 1 } },	-- Sacred Mallet
				cr = 7995,	-- Vile Priestess Hexx
			}),
			i(9241, {	-- Sacred Mallet
				description = "Bring this to the top of Jintha'alor and use it near the altar to turn into the Mallet of Zul'Farrak so you can summon Gahz'rilla in Zul'Farrak.",
				coord = { 49.2, 68.6, MAP.THE_HINTERLANDS },
				cr = 7996,	-- Qiaga the Keeper
			}),
			i(9372, {	-- Sul'thraze the Lasher
				description = "You must take both of the swords and combine them to form this weapon.",
				cost = {
					{ "i", 11086, 1 },	-- Jang'thraze the Protector
					{ "i", 9379, 1 },	-- Sang'thraze the Deflector
				},
				crs = {
					8127,	-- Antu'sul
					7267,	-- Chief Ukorz Sandscalp
				},
			}),
		}),
		n(ZONE_DROPS, {
			i(9243),	-- Shriveled Heart / Shriveled Troll Heart
			i(9523),	-- Troll Temper
		}),
		n(10080, {	-- Sandarr Dunereaver
			description = "This is a Rare Creature and, as such, is not always present.\n\nItems listed for this NPC 'technically' can drop from other creatures in the dungeon, but are extremely rare in comparison.",
			groups = {
				i(9512),	-- Blackmetal Cape
				i(9511),	-- Bloodletter Scalpel
				i(6440),	-- Brainlash
				i(9480),	-- Eyegouger
				i(9483),	-- Flaming Incinerator
				i(5616),	-- Gutwrencher
				i(862),		-- Runed Ring
				i(9484),	-- Spellshock Leggings
				i(9481),	-- The Minotaur
				i(2040),	-- Troll Protector
				i(9482),	-- Witch Doctor's Cane
			},
		}),
		n(10082, {	-- Zerillis
			description = "This is a Rare Creature and, as such, is not always present.",
			groups = {
				i(12470),	-- Sandstalker Ankleguards
			},
		}),
		e(485, {	-- Theka the Martyr
			creatureID = 7272,
			groups = {
				i(10660),	-- First Mosh'aru Tablet
			},
		}),
		e(484, {	-- Antu'sul
			creatureID = 8127,
			groups = {
				i(9379),	-- Sang'thraze the Deflector
				i(9639),	-- The Hand of Antu'sul
				i(9641),	-- Lifeblood Amulet
				i(9640),	-- Vice Grips
			},
		}),
		e(486, {	-- Witch Doctor Zum'rah
			creatureID = 7271,
			groups = {
				i(18082),	-- Zum'rah's Vexing Cane
				i(18083),	-- Jumanza Grips
			},
		}),
		n(10081, {	-- Dustwraith
			description = "This is a Rare Creature and, as such, is not always present.",
			groups = {
				i(12471),	-- Desertwalker Cane
			},
		}),
		e(482, {	-- Hydromancer Velratha
			creatureID = 7795,
			groups = {
				i(9234),	-- Tiara of the Deep
				i(10661),	-- Second Mosh'aru Tablet
			},
		}),
		e(483, {	-- Gahz'rilla
			creatureID = 7273,
			description = "Someone in your party must have the Mallet of Zul'Farrak to summon this boss!\n\nIf you have it, simply bang the Gong of Zul'Farrak. (after first confirming with your party...)",
			provider = { "o", 141832 },	-- Gong of Zul'Farrak
			cost = { { "i", 9240, 1 } },	-- Mallet of Zul'Farrak
			groups = {
				i(8707),	-- Gahz'rilla's Electrified Scale
				i(9467),	-- Gahz'rilla Fang
				i(9469),	-- Gahz'rilla Scale Armor
			},
		}),
		n(7796, {	-- Nekrum Gutchewer
			description = "He's linked to Shadowpriest Sezz'ziz. Both will aggro once the 100 troll assault on the pyramid is complete.",
			groups = {
				i(9471, {	-- Nekrum's Medallion
					races = ALLIANCE_ONLY,
				}),
			},
		}),
		e(487, {	-- Nekrum & Sezzi'ziz
			creatureID = 7275,	-- Shadowpriest Sezz'ziz
			groups = {
				i(9475),	-- Diabolic Skiver
				i(9470),	-- Bad Mojo Mask
				i(9473),	-- Jinxed Hoodoo Skin
				i(9474),	-- Jinxed Hoodoo Kilt
			},
		}),
		n(7607, {	-- Weegli Blastfuse
			description = "You must talk to this NPC in order to enter the room with the last boss! If you are not fast enough, their whole party hearthstones out of the instance.",
		}),
		n(7604, {	-- Sergeant Bly
			description = "These adventurers initially help you clear the gauntlet leading up to the previous boss, but then they turn on you. You don't have to fight them if no one in your party needs the quest item.",
			qgs = {
				7608,	-- Murta Grimgut
				7606,	-- Oro Eyegouge
				7605,	-- Raven
			},
			groups = {
				i(8548),	-- Divino-matic Rod
			},
		}),
		n(7797, {	-- Ruuzlu
			description = "He's linked to Chief Ukorz Sandscalp, and both are immune to CC. It's generally preferred to kill Ruuzlu first, however.",
		}),
		e(489, {	-- Chief Ukorz Sandscalp
			creatureID = 7267,
			groups = {
				i(11086),	-- Jang'thraze the Protector
				i(9478),	-- Ripsaw
				i(9477),	-- The Chief's Enforcer
				i(9479),	-- Embrace of the Lycan
				i(9476),	-- Big Bad Pauldrons
			},
		}),
	},
});