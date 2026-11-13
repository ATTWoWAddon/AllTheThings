---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

maproot(EASTERN_KINGDOMS, DUN_MOROGH, {
	lore = "Dun Morogh is home to both the gnomes of Gnomeregan and the Ironforge dwarves and is the location of the major city of Ironforge. The Khaz Modan mountains surround Dun Morogh on all sides, making it accessible only by certain passes that are currently watched over by dwarven troops.\n\nThe center of dwarven culture and ingenuity, Dun Morogh holds the capital of Ironforge. The region is snow-swept and forested, with gray, craggy mountains and slinking wolves. Troggs recently overran Gnomeregan, the gnomes' former capital, and drove its citizens to Ironforge. Frostmane trolls menace dwarven patrols. Several villages and towns dot the landscape, and though the trade routes can be perilous, dwarven mountaineers and warriors keep their settlements safe.",
	maps = {
		29,		-- The Grizzled Den
		31,		-- Gol'Balar Quarry
		469,	-- ???
		470,	-- Frostmane Hold
	},
	icon = 236755,
	groups = {
		m(COLDRIDGE_VALLEY, {
			lore = "Coldridge Valley is the starting area for young dwarven recruits, and contains the base camp of Anvilmar. It is located in the southwestern corner of Dun Morogh, and is linked to the greater area by Coldridge Pass to the northeast.",
			icon = 236444,
			zoneTextAreaIDs = {
				132,	-- Coldridge Valley
				800,	-- Coldridge Pass
				77,		-- Anvilmar
			},
			maps = {
				28,		-- Coldridge Pass
				428,	-- Frostmane Hovel (Coldridge Valley)
			},
			groups = {
				n(QUESTS, {
					q(170, {	-- A New Threat
						sourceQuest = 179,	-- Dwarven Outfitters
						qg = 713,	-- Balir Frosthammer
						coord = { 29.6, 71.2, DUN_MOROGH },
						races = ALLIANCE_ONLY,
						groups = {
							objective(1, {	-- 0/6 Rockjaw Trogg
								provider = { "n", 707 },	-- Rockjaw Trogg
							}),
							objective(2, {	-- 0/6 Burly Rockjaw Trogg
								provider = { "n", 724 },	-- Burly Rockjaw Trogg
							}),
							i(6185),	-- Bear Shawl
							i(2172),	-- Rustic Belt
							i(6173),	-- Snow Boots
						},
					}),
					q(3361, {	-- A Refugee's Quandary
						qg = 8416,	-- Felix Whindlebolt
						coords = {
							{ 28.6, 67.8, DUN_MOROGH },
						},
						races = ALLIANCE_ONLY,
						lvl = 3,
						groups = {
							objective(1, {	-- 0/1 Felix's Box
								providers = {
									{ "i",  10438 },	-- Felix's Box (QI!)
									{ "o", 148499 },	-- Felix's Box
								},
								coords = {
									{ 20.9, 76.1, DUN_MOROGH },
								},
							}),
							objective(2, {	-- 0/1 Felix's Chest
								providers = {
									{ "i",  16313 },	-- Felix's Chest (QI!)
									{ "o", 178084 },	-- Felix's Chest
								},
								coords = {
									{ 22.8, 79.9, DUN_MOROGH },
								},
							}),
							objective(3, {	-- 0/1 Felix's Bucket of Bolts
								providers = {
									{ "i",  16314 },	-- Felix's Bucket of Bolts (QI!)
									{ "o", 178085 },	-- Felix's Bucket of Bolts
								},
								coords = {
									{ 26.3, 79.3, DUN_MOROGH },
								},
							}),
						},
					}),
					q(1599, {	-- Beginnings
						altQuests = { 1598 },	-- The Stolen Tome
						qg = 460,	-- Alamar Grimm <Warlock Trainer>
						coord = { 28.6, 66.1, DUN_MOROGH },
						races = ALLIANCE_ONLY,
						classes = { WARLOCK },
						groups = {
							objective(1, {	-- 0/3 Feather Charm
								provider = { "i", 6753 },	-- Feather Charm (QI!)
								cr = 946,	-- Frostmane Novice
							}),
							recipe(688),	-- Summon Imp
						},
					}),
					q(3365, {	-- Bring Back the Mug
						sourceQuest = 3364,	-- Scalding Mornbrew Delivery
						qg = 836,	-- Durnan Furcutter
						qi = 10440,	-- Nori's Mug
						coord = { 28.8, 66.4, DUN_MOROGH },
						races = ALLIANCE_ONLY,
						lvl = 4,
					}),
					q(233, {	-- Coldridge Valley Mail Delivery (1/2)
						sourceQuest = 179,	-- Dwarven Outfitters
						qg = 658,	-- Sten Stoutarm
						qi = 2187,	-- A Stack of Letters (PQI!)
						coord = { 29.8, 71.2, DUN_MOROGH },
						races = ALLIANCE_ONLY,
					}),
					q(234, {	-- Coldridge Valley Mail Delivery (2/2)
						sourceQuest = 233,	-- Coldridge Valley Mail Delivery (1/2)
						qg = 714,	-- Talin Keeneye
						qi = 2188,	-- A Letter to Grelin Whitebeard (PQI!)
						coord = { 22.6, 71.4, DUN_MOROGH },
						races = ALLIANCE_ONLY,
					}),
					q(3107, {	-- Consecrated Rune
						sourceQuest = 179,	-- Dwarven Outfitters
						providers = {
							{ "n",   658 },	-- Sten Stoutarm
							{ "i",  9563 },	-- Consecrated Rune (PQI!)
						},
						coords = {
							{ 29.8, 71.2, DUN_MOROGH },
						},
						races = { DWARF },
						classes = { PALADIN },
					}),
					q(179, {	-- Dwarven Outfitters
						qg = 658,	-- Sten Stoutarm
						coord = { 29.8, 71.2, DUN_MOROGH },
						races = ALLIANCE_ONLY,
						groups = {
							objective(1, {	-- 0/8 Tough Wolf Meat
								provider = { "i", 750 },	-- Tough Wolf Meat (QI!)
								crs = {
									705,	-- Ragged Young Wolf
									704,	-- Ragged Timber Wolf
								},
							}),
							i(719),	-- Rabbit Handler Gloves
							i(6171),	-- Wolf Handler Gloves
							i(2547),	-- Boar Handler Gloves
						},
					}),
					q(3113, {	-- Encrypted Memorandum
						sourceQuest = 179,	-- Dwarven Outfitters
						providers = {
							{ "n",   658 },	-- Sten Stoutarm
							{ "i",  9558 },	-- Encrypted Memorandum (PQI!)
						},
						coords = {
							{ 29.8, 71.2, DUN_MOROGH },
						},
						races = { GNOME },
						classes = { ROGUE },
					}),
					q(3109, {	-- Encrypted Rune
						sourceQuest = 179,	-- Dwarven Outfitters
						providers = {
							{ "n",   658 },	-- Sten Stoutarm
							{ "i",  9550 },	-- Encrypted Rune (PQI!)
						},
						coords = {
							{ 29.8, 71.2, DUN_MOROGH },
						},
						races = { DWARF },
						classes = { ROGUE },
					}),
					q(3108, {	-- Etched Rune
						sourceQuest = 179,	-- Dwarven Outfitters
						providers = {
							{ "n",   658 },	-- Sten Stoutarm
							{ "i",  9566 },	-- Etched Rune (PQI!)
						},
						coords = {
							{ 29.8, 71.2, DUN_MOROGH },
						},
						races = { DWARF },
						classes = { HUNTER },
					}),
					q(3114, {	-- Glyphic Memorandum
						sourceQuest = 179,	-- Dwarven Outfitters
						providers = {
							{ "n",   658 },	-- Sten Stoutarm
							{ "i",  9573 },	-- Glyphic Memorandum (PQI!)
						},
						coords = {
							{ 29.8, 71.2, DUN_MOROGH },
						},
						races = { GNOME },
						classes = { MAGE },
					}),
					q(3110, {	-- Hallowed Rune
						sourceQuest = 179,	-- Dwarven Outfitters
						providers = {
							{ "n",   658 },	-- Sten Stoutarm
							{ "i",  9556 },	-- Hallowed Rune (PQI!)
						},
						coords = {
							{ 29.8, 71.2, DUN_MOROGH },
						},
						races = { DWARF },
						classes = { PRIEST },
					}),
					applyclassicphase(SOD_PHASE_ONE, q(77661, {	-- Meditation on the Light
						qg = 837,	-- Branstock Khalder <Priest Trainer>
						coord = { 28.6, 66.4, DUN_MOROGH },
						classes = { PRIEST },
						races = { DWARF },
						lvl = 2,
						groups = {
							objective(1, {	-- 0/1 Learn Spell: Engrave Gloves - Penance
								providers = {
									{ "i", 205951 },	-- Memory of a Troubled Acolyte
									{ "n", 208565 },	-- Altar of the Light
								},
								coord = { 28.8, 66.6, DUN_MOROGH },
								description = "Kneel (/kneel) at the Altar of the Light to gain a Meditation buff, then use the Rune to complete the quest.",
							}),
							recipe(402862),	-- Engrave Gloves - Penance
							i(711),	-- Tattered Cloth Gloves
						},
					})),
					applyclassicphase(SOD_PHASE_ONE, q(77657, {	-- Relics of the Light
						qg = 926,	-- Bromos Grummner <Paladin Trainer>
						coord = { 28.8, 68.2, DUN_MOROGH },
						classes = { PALADIN },
						races = { DWARF },
						lvl = 2,
						groups = {
							objective(1, {	-- 0/1 Learn Spell: Engrave Gloves - Crusader Strike
								provider = { "i", 205420 },	-- Libram of Judgement
								cr = 706,	-- Frostmane Troll Whelp
							}),
							recipe(410002),	-- Engrave Gloves - Crusader Strike
							i(2385),	-- Tarnished Chain Gloves
						},
					})),
					q(3364, {	-- Scalding Mornbrew Delivery
						qg = 12738,	-- Nori Pridedrift
						qi = 10439,	-- Durnan's Scalding Mornbrew (PQI!)
						coord = { 25.0, 75.8, DUN_MOROGH },
						races = ALLIANCE_ONLY,
						lvl = 4,
					}),
					q(282, {	-- Senir's Observations (1/2)
						sourceQuest = 218,	-- The Stolen Journal
						altQuests = { 287 },	-- Frostmane Hold
						qg = 786,	-- Grelin Whitebeard
						qi = 2619,	-- Grelin's Report (PQI!)
						coord = { 25.0, 75.8, DUN_MOROGH },
						races = ALLIANCE_ONLY,
						isBreadcrumb = true,
					}),
					q(420, {	-- Senir's Observations (2/2)
						sourceQuest = 282,	-- Senir's Observations (1/2)
						altQuests = { 287 },	-- Frostmane Hold
						qg = 1965,	-- Mountaineer Thalos
						qi = 2619,	-- Grelin's Report (PQI!)
						coord = { 33.4, 71.8, DUN_MOROGH },
						races = ALLIANCE_ONLY,
						isBreadcrumb = true,
					}),
					q(3112, {	-- Simple Memorandum
						sourceQuest = 179,	-- Dwarven Outfitters
						providers = {
							{ "n",   658 },	-- Sten Stoutarm
							{ "i",  9544 },	-- Simple Memorandum (PQI!)
						},
						coords = {
							{ 29.8, 71.2, DUN_MOROGH },
						},
						races = { GNOME },
						classes = { WARRIOR },
					}),
					q(3106, {	-- Simple Rune
						sourceQuest = 179,	-- Dwarven Outfitters
						providers = {
							{ "n",   658 },	-- Sten Stoutarm
							{ "i",  9543 },	-- Simple Rune (PQI!)
						},
						coords = {
							{ 29.8, 71.2, DUN_MOROGH },
						},
						races = { DWARF },
						classes = { WARRIOR },
					}),
					applyclassicphase(SOD_PHASE_ONE, q(77667, {	-- Spell Research
						qg = 944,	-- Marryk Nurribit <Mage Trainer>
						qi = 211809,	-- Comprehension Primer
						coord = { 28.6, 66.4, DUN_MOROGH },
						classes = { MAGE },
						races = { GNOME },
						lvl = 2,
						groups = {
							objective(1, {	-- 0/1 Learn Spell: Engrave Gloves - Ice Lance
								provider = { "i", 203745 },	-- Spell Notes: Ice Lance
							}),
							recipe(401760),	-- Engrave Gloves - Ice Lance
							i(211779),	-- Comprehension Charm
							i(711),	-- Tattered Cloth Gloves
						},
					})),
					applyclassicphase(SOD_PHASE_ONE, q(77666, {	-- Stolen Power
						qg = 460,	-- Alamar Grimm <Warlock Trainer>
						coord = { 28.6, 66.2, DUN_MOROGH },
						classes = { WARLOCK },
						races = { GNOME },
						lvl = 2,
						groups = {
							objective(1, {	-- 0/1 Learn Spell: Engrave Gloves - Haunt
								provider = { "i", 205230 },	-- Rune of Haunting
							}),
							recipe(403919),	-- Engrave Gloves - Haunt
							i(711),	-- Tattered Cloth Gloves
						},
					})),
					q(2160, {	-- Supplies to Tannok
						qg = 6782,	-- Hands Springsprocket
						qi = 7646,	-- Crate of Inn Supplies (PQI!)
						coord = { 33.8, 72.2, DUN_MOROGH },
						races = ALLIANCE_ONLY,
					}),
					q(3115, {	-- Tainted Memorandum
						sourceQuests = {
							179,	-- Dwarven Outfitters
						},
						providers = {
							{ "n",   658 },	-- Sten Stoutarm
							{ "i",  9577 },	-- Tainted Memorandum (PQI!)
						},
						coords = {
							{ 29.8, 71.2, DUN_MOROGH },
						},
						races = {
							GNOME
						},
						classes = { WARLOCK },
					}),
					q(183, {	-- The Boar Hunter
						qg = 714,	-- Talin Keeneye
						coord = { 22.6, 71.4, DUN_MOROGH },
						races = ALLIANCE_ONLY,
						groups = {
							objective(1, {	-- 0/12 Small Crag Boars slain
								provider = { "n", 708 },	-- Small Crag Boar
							}),
							i(79),	-- Dwarven Cloth Britches
							i(61),	-- Dwarven Leather Pants
						},
					}),
					applyclassicphase(SOD_PHASE_ONE, q(77655, {	-- The Lost Rune [Dwarf]
						qg = 912,	-- Thran Khorman <Warrior Trainer>
						coord = { 28.8, 67.2, DUN_MOROGH },
						classes = { WARRIOR },
						races = { DWARF },
						lvl = 2,
						groups = {
							objective(1, {	-- 0/1 Learn Spell: Engrave Gloves - Victory Rush
								provider = { "i", 204806 },	-- Rune of Victory Rush
								cr = 706,	-- Frostmane Troll Whelp
								-- TODO: Confirm if drops from Troll Whelps.
							}),
							recipe(403470),	-- Engrave Gloves - Victory Rush
							i(2385),	-- Tarnished Chain Gloves
						},
					})),
					applyclassicphase(SOD_PHASE_ONE, q(77656, {	-- The Lost Rune [Gnome]
						qg = 912,	-- Thran Khorman <Warrior Trainer>
						coord = { 28.8, 67.2, DUN_MOROGH },
						classes = { WARRIOR },
						races = { GNOME },
						lvl = 2,
						groups = {
							objective(1, {	-- 0/1 Learn Spell: Engrave Gloves - Victory Rush
								provider = { "i", 204806 },	-- Rune of Victory Rush
								cr = 706,	-- Frostmane Troll Whelp
								-- TODO: Confirm if drops from Troll Whelps.
							}),
							recipe(403470),	-- Engrave Gloves - Victory Rush
							i(2385),	-- Tarnished Chain Gloves
						},
					})),
					q(218, {	-- The Stolen Journal
						sourceQuest = 182,	-- The Troll Cave
						qg = 786,	-- Grelin Whitebeard
						coord = { 25.0, 75.8, DUN_MOROGH },
						races = ALLIANCE_ONLY,
						groups = {
							objective(1, {	-- 0/1 Grenlin Whitebeard's Journal
								provider = { "i", 2004 },	-- Grenlin Whitebeard's Journal (QI!)
								coord = { 30.4, 80.2, DUN_MOROGH },
								cr = 808,	-- Grik'nir the Cold
							}),
							i(6176),	-- Dwarven Kite Shield
							i(5581),	-- Smooth Walking Staff
						},
					}),
					q(182, {	-- The Troll Cave / The Troll Menace [CATA+]
						qg = 786,	-- Grelin Whitebeard
						coords = {
							{ 25.0, 75.8, DUN_MOROGH },
						},
						races = ALLIANCE_ONLY,
						groups = {
							objective(1, {	-- 0/14 (CATA+: 10) Frostmane Troll Whelp
								provider = { "n", 706 },	-- Frostmane Troll Whelp
							}),
							i(2047),	-- Anvilmar Hand Axe
							i(2048),	-- Anvilmar Hammer
							i(2195),	-- Anvilmar Knife
							i(5761),	-- Anvilmar Sledge
							i(961),	-- Healing Herb
						},
					}),
					applyclassicphase(SOD_PHASE_ONE, q(77658, {	-- Thrice Stolen [Dwarf]
						qg = 916,	-- Solm Hargrin <Rogue Trainer>
						coord = { 28.4, 67.6, DUN_MOROGH },
						classes = { ROGUE },
						races = { DWARF },
						lvl = 2,
						groups = {
							objective(1, {	-- 0/1 Learn Spell: Engrave Gloves - Shadowstrike
								providers = {
									{ "o", 405628 },	-- Frostmane Loot Cache
									{ "i", 204795 },	-- Rune of Shadowstrike
								},
								coord = { 30.8, 80.1, DUN_MOROGH },
							}),
							recipe(400105),	-- Engrave Gloves - Shadowstrike
							i(2125),	-- Cracked Leather Gloves
						},
					})),
					applyclassicphase(SOD_PHASE_ONE, q(77659, {	-- Thrice Stolen [Gnome]
						qg = 916,	-- Solm Hargrin <Rogue Trainer>
						coord = { 28.4, 67.6, DUN_MOROGH },
						classes = { ROGUE },
						races = { GNOME },
						lvl = 2,
						groups = {
							objective(1, {	-- 0/1 Learn Spell: Engrave Gloves - Shadowstrike
								providers = {
									{ "o", 405628 },	-- Frostmane Loot Cache
									{ "i", 204795 },	-- Rune of Shadowstrike
								},
								coord = { 30.8, 80.1, DUN_MOROGH },
							}),
							recipe(400105),	-- Engrave Gloves - Shadowstrike
							i(2125),	-- Cracked Leather Gloves
						},
					})),
					applyclassicphase(SOD_PHASE_ONE, q(77660, {	-- Trek Through the Caves
						qg = 895,	-- Thorgas Grimson <Hunter Trainer>
						coord = { 29.0, 67.4, DUN_MOROGH },
						classes = { HUNTER },
						races = { DWARF },
						lvl = 2,
						groups = {
							objective(1, {	-- 0/1 Learn Spell: Engrave Gloves - Chimera Shot
								providers = {
									{ "o", 405628 },	-- Frostmane Loot Cache
									{ "i", 206168 },	-- Rune of the Chimera
								},
								coord = { 30.8, 80.1, DUN_MOROGH },
							}),
							recipe(410121),	-- Engrave Gloves - Chimera Shot
							i(2125),	-- Cracked Leather Gloves
						},
					})),
				}),
				n(TREASURES, {
					applyclassicphase(SOD_PHASE_ONE, o(405633, {	-- Rockjaw Footlocker
						coord = { 26.8, 72.6, DUN_MOROGH },
						races = ALLIANCE_ONLY,
						groups = {
							i(205951, {	-- Memory of a Troubled Acolyte
								classes = { PRIEST },
							}),
							i(205230, {	-- Rune of Haunting
								classes = { WARLOCK },
							}),
							i(203751, {	-- Spell Notes: CALE ENCI
								classes = { MAGE },
							}),
						},
					})),
				}),
				n(ZONE_DROPS, {
					-- Added to Gnolls in Elwynn Forest via Pickpocket (not trolling)
					i(2109, {	-- Frostmane Chain Vest
						cr = 808,	-- Grik'nir the Cold
					}),
					i(2108, {	-- Frostmane Leather Vest
						cr = 706,	-- Frostmane Troll Whelp
						coords = {
							{ 37.4, 78.2, DUN_MOROGH },
							{ 33.4, 77.6, DUN_MOROGH },
							{ 28.4, 75.6, DUN_MOROGH },
						},
					}),
					i(2110, {	-- Light Magesmith Robe
						cr = 946,	-- Frostmane Novice
						coords = {
							{ 30.4, 81.0, DUN_MOROGH },
						},
					}),
					i(2787, {	-- Trogg Dagger
						crs = {
							724,	-- Burly Rockjaw Trogg
						},
						coords = {
							{ 21.8, 72.6, DUN_MOROGH },
							{ 27.6, 72.8, DUN_MOROGH },
							{ 31.0, 76.0, DUN_MOROGH },
						},
					}),
					i(2054, {	-- Trogg Hand Axe
						cr = 1718,	-- Rockjaw Raider
						coords = {
							{ 35.6, 67.8, DUN_MOROGH },
						},
					}),
				}),
			},
		}),
		n(ACHIEVEMENTS, {
			ach(627),	-- Explore Dun Morogh
		}),
		explorationHeader({
			exploration(803),	-- Amberstill Ranch
			exploration(77),	-- Anvilmar
			exploration(137),	-- Brewnall Village
			exploration(801),	-- Chill Breeze Valley
			exploration(800),	-- Coldridge Pass
			exploration(132),	-- Coldridge Valley
			exploration(135),	-- Frostmane Hold
			exploration(809),	-- Gates of Ironforge
			exploration(133),	-- Gnomeregan
			exploration(134),	-- Gol'Bolar Quarry
			exploration(212),	-- Helm's Bed Lake
			exploration(211),	-- Iceflow Lake
			exploration(716),	-- Ironband's Compound
			exploration(131),	-- Kharanos
			exploration(138),	-- Misty Pine Refuge
			exploration(808),	-- North Gate Outpost
			exploration(802),	-- Shimmer Ridge
			exploration(806),	-- South Gate Outpost
			exploration(136),	-- The Grizzled Den
			exploration(804),	-- The Tundrid Hills
		}),
		pickpocketing({
			applyclassicphase(SOD_PHASE_ONE, i(208205, {	-- Blackrat's Note
				coord = { 78.2, 59.8, DUN_MOROGH },
				classes = { ROGUE },
				cr = 6123,	-- Dark Iron Spy
			})),
			applyclassicphase(SOD_PHASE_ONE, i(208220, {	-- Dun Morogh Treasure Map
				classes = { ROGUE },
				cost = {
					{ "i", 208219, 1 },	-- Bottom-Left Map Piece
					{ "i", 208218, 1 },	-- Bottom-Right Map Piece
					{ "i", 208215, 1 },	-- Top-Left Map Piece
					{ "i", 208213, 1 },	-- Top-Right Map Piece
				},
			})),
			applyclassicphase(SOD_PHASE_ONE, i(208219, {	-- Bottom-Left Map Piece
				coord = { 78.2, 59.8, DUN_MOROGH },
				classes = { ROGUE },
				cr = 6123,	-- Dark Iron Spy
			})),
			applyclassicphase(SOD_PHASE_ONE, i(208218, {	-- Bottom-Right Map Piece
				coord = { 26.0, 41.8, DUN_MOROGH },
				classes = { ROGUE },
				cr = 1211,	-- Leper Gnome
			})),
			applyclassicphase(SOD_PHASE_ONE, i(208215, {	-- Top-Left Map Piece
				coord = { 69.8, 59.0, DUN_MOROGH },
				classes = { ROGUE },
				crs = {
					1116,	-- Rockjaw Ambusher
					1718,	-- Rockjaw Raider
					724,	-- Burly Rockjaw Trogg
					707,	-- Rockjaw Trogg
					1115,	-- Rockjaw Skullthumper
				},
			})),
			applyclassicphase(SOD_PHASE_ONE, i(208213, {	-- Top-Right Map Piece
				coord = { 23.4, 53.8, DUN_MOROGH },
				classes = { ROGUE },
				crs = {
					1124,	-- Frostmane Shadowcaster
					1122,	-- Frostmane Hideskinner
					946,	-- Frostmane Novice
					1397,	-- Frostmane Seer
					706,	-- Frostmane Troll Whelp
					1123,	-- Frostmane Headhunter
					1121,	-- Frostmane Snowstrider
				},
			})),
		}),
		n(QUESTS, {
			q(319, {	-- A Favor for Evershine
				sourceQuest = 318,	-- Evershine
				qg = 1374,	-- Rejold Barleybrew
				coord = { 30.2, 45.8, DUN_MOROGH },
				races = ALLIANCE_ONLY,
				lvl = 2,
				groups = {
					objective(1, {	-- 0/6 Ice Claw Bear
						provider = { "n", 1196 },	-- Ice Claw Bear
					}),
					objective(2, {	-- 0/8 Elder Crag Boar
						provider = { "n", 1127 },	-- Elder Crag Boar
					}),
					objective(3, {	-- 0/8 Snow Leopard
						provider = { "n", 1201 },	-- Snow Leopard
					}),
				},
			}),
			q(5541, {	-- Ammo for Rumbleshot
				qg = 1694,	-- Loslor Rudge
				coord = { 50.0, 49.4, DUN_MOROGH },
				races = ALLIANCE_ONLY,
				lvl = 5,
				groups = {
					objective(1, {	-- 0/1 Rumbleshot's Ammo
						providers = {
							{ "i",  13850 },	-- Rumbleshot's Ammo (QI!)
							{ "o", 176785 },	-- Ammo Crate
						},
						coord = { 44.13, 56.95, DUN_MOROGH },
					}),
					objective(2, {
						cr = 1243,	-- Hegnar Rumbleshot <Gunsmith>
						coord = { 40.7, 65.1, DUN_MOROGH },
					}),
				},
			}),
			q(417, {	-- A Pilot's Revenge
				sourceQuest = 419,	-- The Lost Pilot
				providers = {
					{ "o", 2059 },	-- A Dwarven Corpse
					{ "i", 3117 },	-- Hildelve's Journal (PQI!)
				},
				coord = { 79.7, 36.2, DUN_MOROGH },
				races = ALLIANCE_ONLY,
				lvl = 8,
				groups = {
					objective(1, {	-- 0/1 Mangy Claw
						provider = { "i", 3183 },	-- Mangy Claw (QI!)
						coord = { 78.34, 37.74, DUN_MOROGH },
						cr = 1961,	-- Mangeclaw
					}),
					i(2218),	-- Craftsman's Dagger
					i(1009),	-- Compact Hammer
				},
			}),
			q(384, {	-- Beer Basted Boar Ribs
				qg = 1267,	-- Ragnar Thunderbrew
				coords = {
					{ 46.8, 52.4, DUN_MOROGH },
				},
				cost = {
					{ "i", 2894, 1 },	-- Rhapsody Malt
					{ "i", 2886, 6 },	-- Crag Boar Rib
				},
				requireSkill = COOKING,
				races = ALLIANCE_ONLY,
				lvl = 5,
				groups = {
					objective(1, {	-- 0/6 Crag Boar Rib
						provider = { "i", 2886 },	-- Tender Boar Ribs
						crs = {
							1125,	-- Crag Boar
							1126,	-- Large Crag Boar
							1127,	-- Elder Crag Boar
							1689,	-- Scarred Crag Boar
							208638,	-- Fyodi
						},
					}),
					objective(2, {	-- 0/1 Rhapsody Malt
						provider = { "i", 2894 },	-- Rhapsody Malt
						cr = 1247,	-- Crag Boar
					}),
					i(2888),	-- Beer Basted Boar Ribs
					i(2889),	-- Recipe: Beer Basted Boar Ribs (RECIPE!)
				},
			}),
			q(310, {	-- Bitter Rivals
				qg = 1375,	-- Marleth Barleybrew
				qi = 2548,	-- Barrel of Barleybrew Scalder (PQI!)
				coord = { 30.2, 45.6, DUN_MOROGH },
				races = ALLIANCE_ONLY,
				lvl = 2,
				groups = {
					q(308, {	-- Distracting Jarven
						qg = 1373,	-- Jarven Thunderbrew
						coord = { 47.6, 52.6, DUN_MOROGH },
						cost = { { "i", 2686, 1 } },	-- Thunder Ale
						races = ALLIANCE_ONLY,
						repeatable = true,
						groups = {
							q(311, {	-- Return to Marleth
								sourceQuest = 310,	-- Bitter Rivals
								providers = {
									{ "o",  270 },	-- Unguarded Thunder Ale Barrel
									{ "i", 2666 },	-- Barrel of Thunder Ale (QI!)
								},
								coord = { 47.7, 52.7, DUN_MOROGH },
								races = ALLIANCE_ONLY,
								lvl = 2,
							}),
						},
					}),
					q(403, {	-- Guarded Thunderbrew Barrel
						provider = { "o", 269 },	-- Guarded Thunder Ale Barrel
						coord = { 47.7, 52.7, DUN_MOROGH },
						races = ALLIANCE_ONLY,
						repeatable = true,
					}),
				},
			}),
			q(7674, {	-- Black Ram Exchange
				description = "If you are one of the poor unfortunate souls that turned in your unique mount for one of the generic mounts, I'm so sorry.",
				qg = 1261,	-- Veron Amberstill
				coords = {
					{ 63.4, 50.6, DUN_MOROGH },
				},
				timeline = { REMOVED_1_4_0 },
				cost = { { "i", 13328, 1 } },	-- Black Ram
				races = ALLIANCE_ONLY,
				repeatable = true,
				_drop = { "g" },
				sym = { { "select", "itemID", 18785, 18786, 18787 } },
			}),
			q(5637, {	-- Desperate Prayer
				altQuests = {
					5634,	-- Desperate Prayer [Stormwind City #1]
					5635,	-- Desperate Prayer [Elwynn Forest]
					5636,	-- Desperate Prayer [Teldrassil]
					5638,	-- Desperate Prayer [Stormwind City #2]
					5639,	-- Desperate Prayer [Ironforge]
					5640,	-- Desperate Prayer [Darnassus]
				},
				qg = 1226,	-- Maxan Anvol <Priest Trainer>
				coord = { 47.2, 52.2, DUN_MOROGH },
				races = { HUMAN, DWARF },
				classes = { PRIEST },
				lvl = 10,
				groups = {
					{
						recipeID = 13908,	-- Desperate Prayer (Rank 1)
						rank = 1,
					},
				},
			}),
			q(318, {	-- Evershine
				sourceQuest = 317,	-- Stocking Jetsteam
				qg = 1378,	-- Pilot Bellowfiz
				coord = { 49.4, 48.4, DUN_MOROGH },
				races = ALLIANCE_ONLY,
				lvl = 2,
			}),
			q(7673, {	-- Frost Ram Exchange
				description = "If you are one of the poor unfortunate souls that turned in your unique mount for one of the generic mounts, I'm so sorry.",
				qg = 1261,	-- Veron Amberstill
				coords = {
					{ 63.4, 50.6, DUN_MOROGH },
				},
				timeline = { REMOVED_1_4_0 },
				cost = { { "i", 13329, 1 } },	-- Frost Ram
				races = ALLIANCE_ONLY,
				repeatable = true,
				_drop = { "g" },
				sym = { { "select", "itemID", 18785, 18786, 18787 } },
			}),
			q(287, {	-- Frostmane Hold
				sourceQuest = 420,	-- Senir's Observations (2/2)
				qg = 1252,	-- Senir Whitebeard
				coord = { 46.6, 53.8, DUN_MOROGH },
				races = ALLIANCE_ONLY,
				lvl = 7,
				groups = {
					objective(1, {	-- 0/5 Frostmane Headhunter
						provider = { "n", 1123 },	-- Frostmane Headhunter
					}),
					i(3216),	-- Warm Winter Robe
					i(2900),	-- Stone Buckler
				},
			}),
			q(5625, {	-- Garments of the Light
				sourceQuest = 5626,	-- In Favor of the Light
				qg = 1226,	-- Maxan Anvol <Priest Trainer>
				coord = { 47.2, 52.2, DUN_MOROGH },
				races = { DWARF },
				classes = { PRIEST },
				lvl = 5,
				groups = {
					objective(1, {	-- Heal and fortify Mountaineer Dolf
						provider = { "n", 12427 },	-- Mountaineer Dolf
						coord = { 45.8, 54.4, DUN_MOROGH },
					}),
					i(16605),	-- Friar's Robes of the Light
				},
			}),
			q(7675, {	-- Icy Blue Mechanostrider Replacement
				description = "If you are one of the poor unfortunate souls that turned in your unique mount for one of the generic mounts, I'm so sorry.",
				qg = 7955,	-- Milli Featherwhistle
				coords = {
					{ 49.0, 48.0, DUN_MOROGH },
				},
				timeline = { REMOVED_1_4_0 },
				cost = { { "i", 13327, 1 } },	-- Icy Blue Mechanostrider Mod A
				races = ALLIANCE_ONLY,
				repeatable = true,
				_drop = { "g" },
				sym = { { "select", "itemID", 18772, 18773, 18774 } },
			}),
			q(5626, {	-- In Favor of the Light
				qg = 837,	-- Branstock Khalder <Priest Trainer>
				coord = { 28.6, 66.4, DUN_MOROGH },
				maps = { COLDRIDGE_VALLEY },
				races = { DWARF },
				classes = { PRIEST },
				isBreadcrumb = true,
				lvl = 5,
			}),
			q(1679, {	-- Muren Stormpike
				altQuests = {
					1638,	-- A Warrior's Training
					1684,	-- Elanaria
					1678,	-- Vejrek
				},
				qg = 1229,	-- Granis Swiftaxe <Warrior Trainer>
				coord = { 47.2, 52.6, DUN_MOROGH },
				classes = { WARRIOR },
				races = ALLIANCE_ONLY,
				lvl = 10,
			}),
			q(2239, {	-- Onin's Report
				sourceQuest = 2238,	-- Simple Subterfugin'
				qg = 6886,	-- Onin MacHammer
				qi = 7715,	-- Onin's Report (PQI!)
				coord = { 25.2, 44.4, DUN_MOROGH },
				races = ALLIANCE_ONLY,
				classes = { ROGUE },
				lvl = 10,
				groups = {
					i(7298),	-- Blade of Cunning
				},
			}),
			q(412, {	-- Operation Recombobulation
				qg = 1269,	-- Razzle Sprysprocket
				coords = {
					{ 45.8, 49.2, DUN_MOROGH },
				},
				races = ALLIANCE_ONLY,
				lvl = 7,
				groups = {
					objective(1, {	-- 0/8 Restabilization Cog
						provider = { "i", 3083 },	-- Restabilization Cog (QI!)
						crs = {
							8503,	-- Gibblewilt
							1211,	-- Leper Gnome
						},
					}),
					objective(2, {	-- 0/8 Gyromechanic Gear
						provider = { "i", 3084 },	-- Gyromechanic Gear (QI!)
						crs = {
							8503,	-- Gibblewilt
							1211,	-- Leper Gnome
						},
					}),
					i(3152),	-- Driving Gloves
					i(3153),	-- Oil-stained Cloak
				},
			}),
			q(314, {	-- Protecting the Herd
				qg = 1265,	-- Rudra Amberstill
				coords = {
					{ 63.0, 49.8, DUN_MOROGH },
				},
				races = ALLIANCE_ONLY,
				lvl = 6,
				groups = {
					objective(1, {	-- 0/1 Fang of Vagash
						provider = { "i", 3627 },	-- Fang of Vagash (QI!)
						coord = { 69.8, 44.5, DUN_MOROGH },
						cr = 1388,	-- Vagash
					}),
					i(10549),	-- Rancher's Trousers
					i(2817),	-- Soft Leather Tunic / Hard Leather Tunic [CATA+]
					i(3103),	-- Coldridge Hammer
				},
			}),
			q(415, {	-- Rejold's New Brew
				description = "If you want to finish this, complete 'The Perfect Stout' and then do not accept Shimmer Stout after. Once you grab this quest and return to him, then you can grab Shimmer Stout!",
				qgs = {
					1378,	-- Pilot Bellowfiz
					1872,	-- Tharek Blackstone
				},
				coords = {
					{ 49.4, 48.4, DUN_MOROGH },
					{ 46.0, 51.6, DUN_MOROGH },
				},
				races = ALLIANCE_ONLY,
				isBreadcrumb = true,
				lvl = 8,
				groups = {
					i(3087),	-- Mug of Shimmer Stout
				},
			}),
			q(320, {	-- Return to Bellowfiz
				sourceQuest = 319,	-- A Favor for Evershine
				qg = 1374,	-- Rejold Barleybrew
				qi = 2696,	-- Cask of Evershine (PQI!)
				coord = { 30.2, 45.8, DUN_MOROGH },
				races = ALLIANCE_ONLY,
				lvl = 2,
				groups = {
					i(1011),	-- Sharp Axe
					i(1010),	-- Gnarled Short Staff
					i(10547),	-- Camping Knife
				},
			}),
			q(5630, {	-- Returning Home [Dun Morogh]
				altQuests = {
					5627,	-- Returning Home [Darnassus]
					5628,	-- Returning Home [Elwynn Forest]
					5629,	-- Returning Home [Teldrassil]
					5631,	-- Returning Home [Stormwind City]
					5632,	-- Returning Home [Stormwind City]
					5633,	-- Returning Home [Ironforge]
				},
				qg = 1226,	-- Maxan Anvol <Priest Trainer>
				coord = { 47.2, 52.2, DUN_MOROGH },
				classes = { PRIEST },
				races = { NIGHTELF },
				lvl = 10,
				groups = {
					{
						recipeID = 10797,	-- Starshards (Rank 1)
						rank = 1,
					},
				},
			}),
			q(2218, {	-- Road to Salvation
				qg = 1234,	-- Hogral Bakkan
				coord = { 47.6, 52.6, DUN_MOROGH },
				races = ALLIANCE_ONLY,
				classes = { ROGUE },
				lvl = 10,
			}),
			q(466, {	-- Search for Incendicite
				sourceQuest = 467,	-- Stonegear's Search
				qg = 1377,	-- Pilot Stonegear
				coord = { 49.6, 48.4, DUN_MOROGH },
				maps = { WETLANDS },
				cost = { { "i", 3340, 6 } },	-- Incendicite Ore
				races = ALLIANCE_ONLY,
				lvl = 20,
				groups = {
					i(3565),	-- Beerstained Gloves
				},
			}),
			q(413, {	-- Shimmer Stout
				sourceQuests = {
					415,	-- Rejold's New Brew
					315,	-- The Perfect Stout
				},
				qg = 1374,	-- Rejold Barleybrew
				qi = 3085,	-- Barrel of Shimmer Stout (PQI!)
				coord = { 30.2, 45.8, DUN_MOROGH },
				races = ALLIANCE_ONLY,
				lvl = 8,
			}),
			q(1879, {	-- Speak with Bink
				altQuests = { 1860 },	-- Speak with Jennea
				qg = 1228,	-- Magis Sparkmantle <Mage Trainer>
				coord = { 47.4, 52.0, DUN_MOROGH },
				races = ALLIANCE_ONLY,
				classes = { MAGE },
				isBreadcrumb = true,
				lvl = 10,
			}),
			q(317, {	-- Stocking Jetsteam
				qg = 1378,	-- Pilot Bellowfiz
				coord = { 49.4, 48.4, DUN_MOROGH },
				cost = { { "i", 769, 4 } },	-- Chunk of Boar Meat
				races = ALLIANCE_ONLY,
				lvl = 2,
				groups = {
					objective(1, {	-- 0/4 Chunk of Boar Meat
						provider = { "i", 769 },	-- Chunk of Boar Meat
						crs = {
							1125,	-- Crag Boar
							1126,	-- Large Crag Boar
							1127,	-- Elder Crag Boar
							1689,	-- Scarred Crag Boar
							208638,	-- Fyodi
						},
					}),
					objective(2, {	-- 0/2 Thick Bear Fur
						provider = { "i", 6952 },	-- Thick Bear Fur (QI!)
						crs = {
							1128,	-- Young Black Bear
							1196,	-- Ice Claw Bear
						},
					}),
				},
			}),
			q(467, {	-- Stonegear's Search
				qgs = {
					1340,	-- Mountaineer Kadrell
					2092,	-- Pilot Longbeard
				},
				coords = {
					{ 34.8, 47.0, LOCH_MODAN },
					{ 72.4, 93.6, IRONFORGE },
				},
				races = ALLIANCE_ONLY,
				isBreadcrumb = true,
				lvl = 20,
			}),
			q(414, {	-- Stout to Kadrell
				sourceQuest = 413,	-- Shimmer Stout
				qg = 1959,	-- Mountaineer Barleybrew
				qi = 3086,	-- Cask of Shimmer Stout (PQI!)
				coord = { 86.2, 48.8, DUN_MOROGH },
				races = ALLIANCE_ONLY,
				lvl = 8,
			}),
			q(6064, {	-- Taming the Beast (1/3)
				sourceQuests = {
					6074,	-- The Hunter's Path [Ironforge]
					6075,	-- The Hunter's Path [Dun Morogh]
					6076,	-- The Hunter's Path [Stormwind City]
				},
				qg = 1231,	-- Grif Wildheart <Hunter Trainer>
				qi = 15911,	-- Taming Rod (PQI!)
				coord = { 45.8, 53.0, DUN_MOROGH },
				races = { DWARF },
				classes = { HUNTER },
				lvl = 10,
				groups = {
					objective(1, {	-- 0/1 Tame a Large Crag Boar
						providers = {
							{ "n", 1126 },	-- Large Crag Boar
						},
					}),
				},
			}),
			q(6084, {	-- Taming the Beast (2/3)
				sourceQuest = 6064,	-- Taming the Beast (1/3)
				qg = 1231,	-- Grif Wildheart <Hunter Trainer>
				qi = 15913,	-- Taming Rod (PQI!)
				coord = { 45.8, 53.0, DUN_MOROGH },
				races = { DWARF },
				classes = { HUNTER },
				lvl = 10,
				groups = {
					objective(1, {	-- 0/1 Tame a Snow Leopard
						providers = {
							{ "n", 1201 },	-- Snow Leopard
						},
					}),
				},
			}),
			q(6085, {	-- Taming the Beast (3/3)
				sourceQuest = 6084,	-- Taming the Beast (2/3)
				qg = 1231,	-- Grif Wildheart <Hunter Trainer>
				qi = 15908,	-- Taming Rod (PQI!)
				coord = { 45.8, 53.0, DUN_MOROGH },
				races = { DWARF },
				classes = { HUNTER },
				lvl = 10,
				groups = {
					objective(1, {	-- 0/1 Tame a Ice Claw Bear
						providers = {
							{ "n", 1196 },	-- Ice Claw Bear
						},
					}),
				},
			}),
			q(313, {	-- The Grizzled Den / Forced to Watch from Afar [CATA+]
				qg = 1377,	-- Pilot Stonegear
				coord = { 49.6, 48.6, DUN_MOROGH },
				races = ALLIANCE_ONLY,
				lvl = 4,
				groups = {
					objective(1, {	-- 0/8 Wendigo Mane
						provider = { "i", 2671 },	-- Wendigo Mane (QI!)
						crs = {
							1134,	-- Young Wendigo
							1137,	-- Edan the Howler
							1271,	-- Old Icebeard
							1135,	-- Wendigo
						},
					}),
				},
			}),
			q(6074, {	-- The Hunter's Path [Ironforge]
				qg = 5116,	-- Olmin Burningbeard <Hunter Trainer>
				coord = { 70.0, 84.6, IRONFORGE },
				races = { DWARF },
				classes = { HUNTER },
				isBreadcrumb = true,
				lvl = 10,
			}),
			q(6075, {	-- The Hunter's Path [Dun Morogh]
				qg = 11807,	-- Tristane Shadowstone
				coord = { 30.6, 45.4, DUN_MOROGH },
				races = { DWARF },
				classes = { HUNTER },
				isBreadcrumb = true,
				lvl = 10,
			}),
			q(6076, {	-- The Hunter's Path [Stormwind City]
				qg = 5515,	-- Einris Brightspear <Hunter Trainer>
				coords = {
					{ 61.6, 15.4, STORMWIND_CITY },
				},
				races = { DWARF },
				classes = { HUNTER },
				isBreadcrumb = true,
				lvl = 10,
			}),
			q(419, {	-- The Lost Pilot
				qg = 1960,	-- Pilot Hammerfoot
				coord = { 83.8, 39.2, DUN_MOROGH },
				races = ALLIANCE_ONLY,
				lvl = 8,
				groups = {
					i(3151),	-- Siege Brigade Vest
				},
			}),
			q(315, {	-- The Perfect Stout
				qg = 1374,	-- Rejold Barleybrew
				coords = {
					{ 30.2, 45.8, DUN_MOROGH },
				},
				races = ALLIANCE_ONLY,
				lvl = 5,
				groups = {
					objective(1, {	-- 0/6 Shimmerweed (7 after CATA)
						providers = {
							{ "i", 2676 },	-- Shimmerweed (QI!)
							{ "o",  276 },	-- Shimmerweed Basket
						},
						cr = 1397,	-- Frostmane Seer
					}),
					i(2326),	-- Ivy-weave Bracers
					i(2905),	-- Goat Fur Cloak
				},
			}),
			q(433, {	-- The Public Servant
				description = "The quest 'The Public Servant' gets flagged as not completed on a yearly basis, thus is unintentionally repeatable. This does not affect the collected state of the quest rewards.",
				providers = {
					{ "n", 1977 },	-- Senator Mehr Stonehallow
				},
				coords = {
					{ 68.6, 56.0, DUN_MOROGH },
				},
				races = ALLIANCE_ONLY,
				isYearly = true,
				lvl = 6,
				-- Danny Donkey: Molkree says this quest probably got added by mistake to a list of quests to be marked as incomplete on a yearly basis. All yearly quests reset 15/01.
				-- Classic have description in the quest because it will not play ball and appear directly on the npc itself due to conflict with the state of being a QG. This is not an issue on retail.
				groups = {
					objective(1, {	-- 0/10 Rockjaw Bonesnapper slain
						provider = { "n", 1117 },	-- Rockjaw Bonesnapper
					}),
					n(1977),	-- Senator Mehr Stonehallow
				},
			}),
			q(291, {	-- The Reports
				sourceQuest = 287,	-- Frostmane Hold
				qg = 1252,	-- Senir Whitebeard
				qi = 2628,	-- Senir's Report (PQI!)
				coord = { 46.6, 53.8, DUN_MOROGH },
				races = ALLIANCE_ONLY,
			}),
			q(1653, {	-- The Test of Righteousness (1/3)
				sourceQuest = 1652,	-- The Tome of Valor (4/4)
				qg = 6171,	-- Duthorian Rall
				coords = {
					{ 39.8, 30.8, STORMWIND_CITY },
				},
				races = ALLIANCE_ONLY,
				classes = { PALADIN },
				lvl = 20,
			}),
			q(1654, {	-- The Test of Righteousness (2/3)
				sourceQuest = 1653,	-- The Test of Righteousness (1/3)
				qg = 6181,	-- Jordan Stilwell
				qi = 6996,	-- Jordan's Weapon Notes (PQI!)
				coord = { 52.6, 36.8, DUN_MOROGH },
				maps = { BLACKFATHOM_DEEPS, DARKSHORE, DEADMINES, LOCH_MODAN, SHADOWFANG_KEEP },
				races = ALLIANCE_ONLY,
				classes = { PALADIN },
				lvl = 20,
				groups = {
					objective(1, {	-- 0/1 Whitestone Oak Lumber
						provider = { "i", 6994 },	-- Whitestone Oak Lumber (QI!)
						cr = 641,	-- Goblin Woodcarver
					}),
					objective(3, {	-- 0/1 Jordan's Smithing Hammer
						providers = {
							{ "i",  6895 },	-- Jordan's Smithing Hammer (QI!)
							{ "o", 91138 },	-- Jordan's Hammer
						},
					}),
					q(1655, {	-- Bailor's Ore Shipment
						qg = 6241,	-- Bailor Stonehand
						coord = { 36.0, 45.0, LOCH_MODAN },
						races = ALLIANCE_ONLY,
						classes = { PALADIN },
						repeatable = true,
						lvl = 20,
						groups = {
							objective(1, {	-- 0/1 Jordan's Ore Shipment
								providers = {
									{ "i",  6992 },	-- Jordan's Ore Shipment
									{ "o", 92420 },	-- Bailor's Ore
								},
								coord = { 71.6, 21.4, LOCH_MODAN },
							}),
							objective(2, {	-- 0/1 Jordan's Refined Ore Shipment
								provider = { "i", 6993 },	-- Jordan's Refined Ore Shipment
								questID = 1654,	-- The Test of Righteousness (2/3)
							}),
						},
					}),
					q(1442, {	-- Seeking the Kor Gem
						sourceQuest = 1653,	-- The Test of Righteousness (1/3)
						qg = 3649,	-- Thundris Windweaver
						coord = { 37.4, 40.2, DARKSHORE },
						races = ALLIANCE_ONLY,
						classes = { PALADIN },
						repeatable = true,
						lvl = 20,
						groups = {
							objective(1, {	-- 0/1 Corrupted Kor Gem
								provider = { "i", 6995 },	-- Corrupted Kor Gem
								crs = {
									4803,	-- Blackfathom Oracle
									4805,	-- Blackfathom Sea Witch
									4802,	-- Blackfathom Tide Priestess
									216661,	-- Blackfathom Tide Priestess
								},
							}),
							objective(4, {	-- 0/1 Purified Kor Gem
								provider = { "i", 7083 },	-- Purified Kor Gem
								questID = 1654,	-- The Test of Righteousness (2/3)
							}),
						},
					}),
				},
			}),
			q(1806, {	-- The Test of Righteousness (3/3)
				sourceQuest = 1654,	-- The Test of Righteousness (2/3)
				qg = 6181,	-- Jordan Stilwell
				coord = { 52.6, 36.8, DUN_MOROGH },
				races = ALLIANCE_ONLY,
				classes = { PALADIN },
				lvl = 20,
				groups = {
					i(6953),	-- Verigan's Fist
				},
			}),
			q(432, {	-- Those Blasted Troggs!
				qg = 1254,	-- Foreman Stonebrow
				coords = {
					{ 69.0, 56.2, DUN_MOROGH },
				},
				races = ALLIANCE_ONLY,
				lvl = 5,
				groups = {
					objective(1, {	-- 0/6 Rockjaw Skullthumper slain
						provider = { "n", 1115 },	-- Rockjaw Skullthumper
					}),
				},
			}),
			q(2299, {	-- To Hulfdan!
				sourceQuest = 2218,	-- Road to Salvation
				qg = 1234,	-- Hogral Bakkan
				coord = { 47.6, 52.6, DUN_MOROGH },
				races = ALLIANCE_ONLY,
				classes = { ROGUE },
				isBreadcrumb = true,
				lvl = 16,
			}),
			q(400, {	-- Tools for Steelgrill
				qg = 1872,	-- Tharek Blackstone
				qi = 2999,	-- Steelgrill's Tools (PQI!)
				coord = { 46.0, 51.6, DUN_MOROGH },
				races = ALLIANCE_ONLY,
				lvl = 2,
			}),
			q(6086, {	-- Training the Beast
				sourceQuest = 6085,	-- Taming the Beast (3/3)
				qg = 1231,	-- Grif Wildheart <Hunter Trainer>
				coord = { 45.8, 53.0, DUN_MOROGH },
				races = { DWARF },
				classes = { HUNTER },
				lvl = 10,
				groups = {
					recipe(883),	-- Call Pet
					recipe(2641),	-- Dismiss Pet
					recipe(1515),	-- Tame Beast
				},
			}),
			q(312, {	-- Tundra MacGrann's Stolen Stash
				qg = 1266,	-- Tundra MacGrann
				coord = { 34.6, 51.6, DUN_MOROGH },
				races = ALLIANCE_ONLY,
				lvl = 7,
				groups = {
					objective(1, {	-- 0/1 MacGrann's Dried Meats
						providers = {
							{ "i", 2667 },	-- MacGrann's Dried Meats (QI!)
							{ "o",  272 },	-- MacGrann's Meat Locker
						},
						coord = { 38.5, 53.93, DUN_MOROGH },
					}),
					i(6177),	-- Ironwrought Bracers
					i(10550),	-- Wooly Mittens
				},
			}),
			q(7676, {	-- White Mechanostrider Replacement
				description = "If you are one of the poor unfortunate souls that turned in your unique mount for one of the generic mounts, I'm so sorry.",
				qg = 7955,	-- Milli Featherwhistle
				coords = {
					{ 49.0, 48.0, DUN_MOROGH },
				},
				timeline = { REMOVED_1_4_0 },
				cost = { { "i", 13326, 1 } },	-- White Mechanostrider Mod A
				races = ALLIANCE_ONLY,
				repeatable = true,
				_drop = { "g" },
				sym = { { "select", "itemID", 18772, 18773, 18774 } },
			}),
		}),
		n(RARES, {
			n(1130, {	-- Bjarn
				coords = {
					{ 52.8, 58.4, DUN_MOROGH },
					{ 56.8, 56.8, DUN_MOROGH },
					{ 63.6, 60.6, DUN_MOROGH },
					{ 59.0, 61.6, DUN_MOROGH },
				},
				groups = {
					i(2069),	-- Black Bear Hide Vest
				},
			}),
			n(1137, {	-- Edan the Howler
				coords = {
					{ 43.6, 49.6, DUN_MOROGH },
					{ 39.6, 48.2, DUN_MOROGH },
					{ 42.2, 46.4, DUN_MOROGH },
				},
				description = "Located in The Grizzled Den.",
				groups = {
					i(3225),	-- Bloodstained Knife
					i(3008),	-- Wendigo Fur Cloak
				},
			}),
			applyclassicphase(SOD_PHASE_ONE, n(208752, {	-- Frozen Trogg
				coord = { 69.2, 58.2, DUN_MOROGH },
				classes = { MAGE, WARLOCK },
				groups = {
					i(205228, {	-- Rune of Chaos Bolt
						classes = { WARLOCK },
						groups = {
							recipe(403925),	-- Engrave Gloves - Chaos Bolt
						},
					}),
					i(203748, {	-- Spell Notes: Burnout
						classes = { MAGE },
						groups = {
							recipe(401759),	-- Engrave Chest - Burnout
						},
					}),
				},
			})),
			applyclassicphase(SOD_PHASE_ONE, n(208638, {	-- Fyodi
				description = "The runes he drops can also drop from any of the rare creatures in the zone.",
				coord = { 31.6, 40.0, DUN_MOROGH },
				classes = { HUNTER, MAGE, WARRIOR },
				groups = {
					i(206169, {	-- Rune of Explosive Shot
						classes = { HUNTER },
						groups = {
							recipe(410123),	-- Engrave Gloves - Explosive Shot
						},
					}),
					i(204809, {	-- Rune of Furious Thunder
						classes = { WARRIOR },
						groups = {
							recipe(403476),	-- Engrave Pants - Furious Thunder
						},
					}),
					i(203753, {	-- Spell Notes: RING SEFF OSTROF
						classes = { MAGE },
					}),
				},
			})),
			n(8503, {	-- Gibblewilt
				coords = {
					{ 27.2, 36.6, DUN_MOROGH },
					{ 25.0, 44.6, DUN_MOROGH },
				},
				groups = {
					i(10554),	-- Foreman Pants
					i(10553),	-- Foreman Vest
				},
			}),
			n(1260, {	-- Great Father Arctikus
				coords = {
					{ 23.8, 53.4, DUN_MOROGH },
					{ 22.0, 51.0, DUN_MOROGH },
				},
				groups = {
					i(3223),	-- Frostmane Scepter
					i(2546),	-- Royal Frostmane Girdle
				},
			}),
			n(1119, {	-- Hammerspine
				coords = {
					{ 71.8, 51.4, DUN_MOROGH },
					{ 72.8, 53.8, DUN_MOROGH },
				},
				groups = {
					i(763),	-- Ice-covered Bracers
					i(2254),	-- Icepane Warhammer
				},
			}),
			applyclassicphase(SOD_PHASE_ONE, n(208812, {	-- Jorul
				description = "You can tame him and you still get the rune!",
				coord = { 37.78, 42.55, DUN_MOROGH },
				cost = { { "i", 208192, 1 } },	-- Dun Morogh Pig Meat
				groups = {
					i(205979, {	-- Rune of Flanking
						classes = { HUNTER },
						groups = {
							recipe(425762),	-- Engrave Pants - Flanking Strike
						},
					}),
				},
			})),
			n(1271, {	-- Old Icebeard
				coords = {
					{ 38.4, 54.0, DUN_MOROGH },
				},
				groups = {
					i(2899),	-- Wengido Collar
				},
			}),
			applyclassicphase(SOD_PHASE_ONE, n(208180, {	-- Razormane Poacher
				provider = { "n", 208975 },	-- Rustling Bush
				description = "Cast Hunter's Mark on the bush to spawn the rare creature.",
				coord = { 28.8, 49.6, DUN_MOROGH },
				classes = { HUNTER },
				groups = {
					i(206155, {	-- Rune of Marksmanship
						classes = { HUNTER },
						groups = {
							recipe(410113),	-- Engrave Chest - Master Marksman
						},
					}),
				},
			})),
			applyclassicphase(SOD_PHASE_ONE, n(204070, {	-- Soboz
				-- TODO: Try to get an objectID for this.
				-- provider = { "o",  },	-- Summoning Circle
				coord = { 42.2, 35.6, DUN_MOROGH },
				cost = {
					{ "i", 208139, 1 },	-- Ominous Tome
					{ "i", 208140, 1 },	-- Wendigo Blood
					{ "i", 204907, 1 },	-- Wolf Jawbone
				},
				races = ALLIANCE_ONLY,
				groups = {
					i(204912, {	-- Rune of Grace
						classes = { WARLOCK },
						groups = {
							recipe(425477),	-- Engrave Pants - Demonic Grace
						},
					}),
				},
			})),
			n(1132, {	-- Timber
				coords = {
					{ 36.0, 37.8, DUN_MOROGH },
					{ 35.6, 42.8, DUN_MOROGH },
					{ 31.8, 42.6, DUN_MOROGH },
				},
				groups = {
					i(3224),	-- Silver-lined Bracers
					i(1965),	-- White Wolf Gloves
				},
			}),
			applyclassicphase(SOD_PHASE_ONE, n(203079, {	-- Wandering Swordsman
				provider = { "o", 392029 },	-- Swordsman's Reward
				coord = { 53.8, 47.2, DUN_MOROGH },
				groups = {
					i(204441, {	-- Rune of Blood Frenzy
						classes = { WARRIOR },
						groups = {
							recipe(403474),	-- Engrave Chest - Blood Frenzy
						},
					}),
				},
			})),
		}),
		n(RIDING_TRAINER, {
			n(7954, {	-- Binjy Featherwhistle <Mechanostrider Pilot>
				coord = { 49.2, 48.0, DUN_MOROGH },
				races = { DWARF, GNOME },
				-- Available to Gnomes without faction requirements.
				minReputation = { FACTION_GNOMEREGAN, EXALTED },
				OnInit = [[function(t)
					if _.RaceIndex == ]] .. GNOME .. [[ then
						t.minReputation = nil;
					end
					return t;
				end]],
				groups = {
					recipe(10907, {	-- Mechanostrider Piloting
						cost = 200000,
						lvl = 40,
					}),
				},
			}),
			n(4772, {	-- Ultham Ironhorn <Ram Riding Instructor>
				coord = { 63.8, 50.2, DUN_MOROGH },
				races = ALLIANCE_ONLY,
				-- Available to Dwarves without faction requirements.
				minReputation = { FACTION_IRONFORGE, EXALTED },
				OnInit = [[function(t)
					if _.RaceIndex == ]] .. DWARF .. [[ then
						t.minReputation = nil;
					end
					return t;
				end]],
				groups = {
					recipe(826, {	-- Ram Riding
						cost = 200000,
						lvl = 40,
					}),
				},
			}),
		}),
		n(TREASURES, {
			applyclassicphase(SOD_PHASE_ONE, n(204937, {	-- Adventurer's Spirit
				provider = { "n", 204827 },	-- Adventurer's Remains
				coord = { 43.0, 49.6, DUN_MOROGH },
				groups = {
					i(210589, {	-- Echo of the Ancestors
						classes = { SHAMAN },
						groups = {
							recipe(410099),	-- Engrave Pants - Ancestral Guidance
						},
					}),
					i(205944, {	-- Reciprocal Epiphany
						classes = { PRIEST },
						groups = {
							recipe(402848),	-- Engrave Pants - Prayer of Mending
						},
					}),
					i(206264, {	-- Rune of Inspiration
						classes = { PALADIN },
						groups = {
							recipe(410011),	-- Engrave Pants - Inspiration Exemplar
						},
					}),
					i(206970, {	-- Rune of Life
						classes = { DRUID },
						groups = {
							recipe(410033),	-- Engrave Pants - Lifebloom
						},
					}),
				},
			})),
			applyclassicphase(SOD_PHASE_ONE, i(203993, {	-- Rune of Slaughter
				provider = { "o", 387466 },	-- Rusty Lockbox
				coord = { 47.0, 52.0, DUN_MOROGH },
				classes = { ROGUE },
				groups = {
					recipe(424992),	-- Engrave Chest - Slaughter from the Shadows
				},
			})),
			applyclassicphase(SOD_PHASE_ONE, i(203991, {	-- Rune of Quick Draw
				provider = { "o", 386675 },	-- Buried Treasure
				coord = { 46.96, 43.73, DUN_MOROGH },
				cost = { { "i", 208220, 1 } },	-- Dun Morogh Treasure Map
				classes = { ROGUE },
				groups = {
					recipe(400095),	-- Engrave Chest - Quick Draw
				},
			})),
			applyclassicphase(SOD_PHASE_ONE, n(208802, {	-- Wounded Adventurer
				coord = { 25.6, 43.6, DUN_MOROGH },
				classes = { PALADIN },
				races = ALLIANCE_ONLY,
				groups = {
					i(205685, {	-- Rune of Aegis
						classes = { PALADIN },
						groups = {
							recipe(425619),	-- Engrave Chest - Aegis
						},
					}),
				},
			})),
		}),
		n(VENDORS, {
			applyclassicphase(SOD_PHASE_ONE, n(208886, {	-- Blackrat
				coord = { 57.2, 45.2, DUN_MOROGH },
				races = ALLIANCE_ONLY,
				groups = {
					i(203990, {	-- Rune of Mutilation
						cost = { { "i", 208205, 1 } },	-- Blackrat's Note
						classes = { ROGUE },
						groups = {
							recipe(400094),	-- Engrave Gloves - Mutilate
						},
					}),
				},
			})),
			n(8508, {	-- Gretta Ganter <Fisherman Supplies>
				coords = {
					{ 31.6, 44.6, DUN_MOROGH },
				},
				races = ALLIANCE_ONLY,
				groups = {
					i(6325),	-- Recipe: Brilliant Smallfish (RECIPE!)
				},
			}),
			n(1247, {	-- Innkeeper Belm <Innkeeper>
				coords = {
					{ 47.4, 52.6, DUN_MOROGH },
				},
				races = ALLIANCE_ONLY,
				groups = {
					i(2894),	-- Rhapsody Malt
					i(2686),	-- Thunder Ale
				},
			}),
			n(7955, {	-- Milli Featherwhistle <Mechanostrider Merchant>
				coords = {
					{ 49.0, 48.0, DUN_MOROGH },
				},
				-- Available to Gnomes without faction requirements.
				minReputation = { FACTION_GNOMEREGAN, EXALTED },
				OnInit = [[function(t)
					if _.RaceIndex == ]] .. GNOME .. [[ then
						t.minReputation = nil;
					end
					return t;
				end]],
				races = ALLIANCE_ONLY,
				groups = {
					i(8595),	-- Blue Mechanostrider (MOUNT!)
					i(13321),	-- Green Mechanostrider (MOUNT!)
					i(8563),	-- Red Mechanostrider (MOUNT!)
					i(13322),	-- Unpainted Mechanostrider (MOUNT!)
					i(18772),	-- Swift Green Mechanostrider (MOUNT!)
					i(18773),	-- Swift White Mechanostrider (MOUNT!)
					i(18774),	-- Swift Yellow Mechanostrider (MOUNT!)
					i(13327, {	-- Icy Blue Mechanostrider Mod A (MOUNT!)
						timeline = { REMOVED_1_4_0 },
					}),
					i(13326, {	-- White Mechanostrider Mod A (MOUNT!)
						timeline = { REMOVED_1_4_0 },
					}),
				},
			}),
			applyclassicphase(SOD_PHASE_ONE, n(208711, {	-- Toby
				description = "Use the musk and tame a Rabbit and then bring it to Toby.",
				coord = { 63.6, 50.2, DUN_MOROGH },
				cost = { { "i", 208180, 1 } },	-- Rabbit Musk
				crs = { 721 },	-- Rabbit
				races = ALLIANCE_ONLY,
				groups = {
					i(206032, {	-- Rune of Carve
						classes = { HUNTER },
						groups = {
							recipe(425758),	-- Engrave Gloves - Carve
						},
					}),
				},
			})),
			n(1261, {	-- Veron Amberstill <Ram Breeder>
				coords = {
					{ 63.4, 50.6, DUN_MOROGH },
				},
				-- Available to Dwarves without faction requirements.
				minReputation = { FACTION_IRONFORGE, EXALTED },
				OnInit = [[function(t)
					if _.RaceIndex == ]] .. DWARF .. [[ then
						t.minReputation = nil;
					end
					return t;
				end]],
				races = ALLIANCE_ONLY,
				groups = {
					i(5872),	-- Brown Ram (MOUNT!)
					i(5864),	-- Gray Ram (MOUNT!)
					i(5873),	-- White Ram (MOUNT!)
					i(18786),	-- Swift Brown Ram (MOUNT!)
					i(18787),	-- Swift Gray Ram (MOUNT!)
					i(18785),	-- Swift White Ram (MOUNT!)
					i(13328, {	-- Black Ram (MOUNT!)
						timeline = { REMOVED_1_4_0 },
					}),
					i(13329, {	-- Frost Ram (MOUNT!)
						timeline = { REMOVED_1_4_0 },
					}),
				},
			}),
			n(1263, {	-- Yarlyn Amberstill
				coords = {
					{ 63.2, 50.8, DUN_MOROGH },
				},
				races = ALLIANCE_ONLY,
				groups = {
					i(8497,	{	-- Snowshoe Rabbit (PET!)
						timeline = { ADDED_1_11_1 },
					}),
				},
			}),
		}),
		n(ZONE_DROPS, {
			i(2886, {	-- Crag Boar Rib
				coords = {
					{ 46.6, 59.8, DUN_MOROGH },
				},
				crs = {
					1125,	-- Crag Boar
					1689,	-- Scarred Crag Boar
					1127,	-- Elder Crag Boar
					1126,	-- Large Crag Boar
				},
				description = "Only drops from Crag Boars in Dun Morogh."
			}),
			applyclassicphase(SOD_PHASE_ONE, i(208192, {	-- Dun Morogh Pig Meat
				classes = { HUNTER },
				crs = {
					208638,	-- Fyodi
					1125,	-- Crag Boar
					1126,	-- Large Crag Boar
					1127,	-- Elder Crag Boar
					1689,	-- Scarred Crag Boar
				},
			})),
			i(2067, {	-- Frostbit Staff
				coords = {
					{ 79.2, 48.4, DUN_MOROGH },
					{ 78.0, 54.2, DUN_MOROGH },
				},
				cr = 1117,	-- Rockjaw Bonesnapper
			}),
			-- Moved to the starting area.
			i(2259, {	-- Frostmane Club
				coords = {
					{ 21.2, 54.4, MAP.DUN_MOROGH },
					{ 40.8, 35.0, MAP.DUN_MOROGH },
					{ 40.8, 43.6, MAP.DUN_MOROGH },
				},
				cr = 1121,	-- Frostmane Snowstrider
			}),
			i(2260, {	-- Frostmane Hand Axe
				coords = {
					{ 26.6, 50.6, DUN_MOROGH },
					{ 27.2, 52.8, DUN_MOROGH },
				},
				crs = {
					1123,	-- Frostmane Headhunter
					1122,	-- Frostmane Hideskinner
				},
			}),
			i(2258, {	-- Frostmane Shortsword
				coords = {
					{ 26.6, 50.6, DUN_MOROGH },
					{ 27.2, 52.8, DUN_MOROGH },
				},
				cr = 1120,	-- Frostmane Troll
			}),
			i(2257, {	-- Frostmane Staff
				coords = {
					{ 26.6, 50.6, DUN_MOROGH },
					{ 27.2, 52.8, DUN_MOROGH },
				},
				crs = {
					1124,	-- Frostmane Shadowcaster
				},
			}),
			i(2112, {	-- Lumberjack Jerkin
				cr = 1689,	-- Scarred Crag Boar
				coords = {
					{ 88.6, 51.4, DUN_MOROGH },
					{ 81.6, 49.0, DUN_MOROGH },
				},
			}),
			applyclassicphase(SOD_PHASE_ONE, i(205940, {	-- Memory of a Dark Purpose
				coord = { 26.0, 41.8, DUN_MOROGH },
				classes = { PRIEST },
				cr = 1211,	-- Leper Gnome
				groups = {
					recipe(425216),	-- Engrave Chest - Void Plague
				},
			})),
			applyclassicphase(SOD_PHASE_ONE, i(205945, {	-- Memory of an Imprisoned Savior
				description = "This can drop from any of the Rare Creatures in the zone.",
				coord = { 78.6, 62.0, DUN_MOROGH },
				classes = { PRIEST },
				cr = 6124,	-- Captain Beld <Dark Iron Captain>
				groups = {
					recipe(402854),	-- Engrave Pants - Shared Pain
				},
			})),
			i(2898, {	-- Mountaineer Chestpiece
				cr = 1196,	-- Ice Claw Bear
				coords = {
					{ 30.8, 40.4, DUN_MOROGH },
					{ 37.2, 44.8, DUN_MOROGH },
					{ 67.0, 50.2, DUN_MOROGH },
				},
			}),
			applyclassicphase(SOD_PHASE_ONE, i(208139, {	-- Ominous Tome
				coords = {
					{ 23.2, 53.6, DUN_MOROGH },
					{ 42.4, 35.8, DUN_MOROGH },
					{ 42.0, 44.6, DUN_MOROGH },
				},
				classes = { WARLOCK },
				crs = {
					1124,	-- Frostmane Shadowcaster
					1397,	-- Frostmane Seer
				},
			})),
			applyclassicphase(SOD_PHASE_ONE, i(208158, {	-- Pristine Trogg Heart
				coord = { 70.6, 59.2, DUN_MOROGH },
				classes = { WARRIOR },
				crs = {
					1116,	-- Rockjaw Ambusher
					1117,	-- Rockjaw Bonesnapper
					1115,	-- Rockjaw Skullthumper
				},
			})),
			applyclassicphase(SOD_PHASE_ONE, i(205947, {	-- Prophecy of a Desecrated Citadel
				coords = {
					{ 23.2, 53.6, DUN_MOROGH },
					{ 42.4, 35.8, DUN_MOROGH },
					{ 42.0, 44.6, DUN_MOROGH },
				},
				classes = { PRIEST },
				crs = {
					1124,	-- Frostmane Shadowcaster
					1397,	-- Frostmane Seer
				},
				groups = {
					recipe(402852),	-- Engrave Pants - Homunculi
				},
			})),
			applyclassicphase(SOD_PHASE_ONE, i(208180, {	-- Rabbit Musk
				coords = {
					{ 70.8, 56.0, DUN_MOROGH },
					{ 68.8, 58.2, DUN_MOROGH },
					{ 80.4, 57.2, DUN_MOROGH },
				},
				classes = { HUNTER },
				crs = {
					1115,	-- Rockjaw Skullthumper
					1117,	-- Rockjaw Bonesnapper
					1118,	-- Rockjaw Backbreaker
					1116,	-- Rockjaw Ambusher
				},
			})),
			i(2065, {	-- Rockjaw Blade
				cr = 1116,	-- Rockjaw Ambusher
				coords = {
					{ 72.6, 54.0, DUN_MOROGH },
					{ 77.6, 59.6, DUN_MOROGH },
				},
			}),
			applyclassicphase(SOD_PHASE_ONE, i(208159, {	-- Severed Troll Head
				coord = { 26.6, 50.6, DUN_MOROGH },
				classes = { WARRIOR },
				crs = {
					1123,	-- Frostmane Headhunter
					1397,	-- Frostmane Seer
					1124,	-- Frostmane Shadowcaster
					1121,	-- Frostmane Snowstrider
					1120,	-- Frostmane Troll
				},
			})),
			applyclassicphase(SOD_PHASE_ONE, i(208160, {	-- Severed Wendigo Paw
				coord = { 42.6, 55.0, DUN_MOROGH },
				classes = { WARRIOR },
				crs = {
					1135,	-- Wendigo
					1134,	-- Young Wendigo
				},
			})),
			i(2066, {	-- Skull Hatchet
				coords = {
					{ 78.2, 52.2, DUN_MOROGH },
					{ 76.6, 58.0, DUN_MOROGH },
				},
				cr = 1115,	-- Rockjaw Skullthumper
			}),
			i(2114, {	-- Snowy Robe
				coords = {
					{ 36.0, 38.8, DUN_MOROGH },
					{ 33.0, 45.0, DUN_MOROGH },
				},
				crs = {
					1133,	-- Starving Winter Wolf
				},
			}),
			applyclassicphase(SOD_PHASE_ONE, i(203752, {	-- Spell Notes: MILEGIN VALF
				coords = {
					{ 23.2, 53.6, DUN_MOROGH },
					{ 42.4, 35.8, DUN_MOROGH },
					{ 42.0, 44.6, DUN_MOROGH },
				},
				classes = { MAGE },
				crs = {
					1124,	-- Frostmane Shadowcaster
					1397,	-- Frostmane Seer
				},
			})),
			i(2064, {	-- Trogg Club
				coords = {
					{ 80.0, 57.6, DUN_MOROGH },
					{ 69.4, 58.8, DUN_MOROGH },
				},
				crs = {
					1118,	-- Rockjaw Backbreaker
				},
			}),
			i(5767, {	-- Violet Robes
				coords = {
					{ 49.8, 37.2, DUN_MOROGH },
					{ 46.6, 40.6, DUN_MOROGH },
					{ 49.0, 42.6, DUN_MOROGH },
				},
				crs = {
					1397,	-- Frostmane Seer
				},
			}),
			applyclassicphase(SOD_PHASE_ONE, i(208160, {	-- Wendigo Blood
				coord = { 42.6, 55.0, DUN_MOROGH },
				classes = { WARLOCK },
				crs = {
					1135,	-- Wendigo
					1134,	-- Young Wendigo
				},
			})),
			applyclassicphase(SOD_PHASE_ONE, i(204907, {	-- Wolf Jawbone
				coords = {
					{ 27.6, 77.0, DUN_MOROGH },
					{ 34.8, 43.6, DUN_MOROGH },
					{ 50.0, 49.4, DUN_MOROGH },
					{ 45.6, 44.0, DUN_MOROGH },
					{ 44.4, 47.6, DUN_MOROGH },
				},
				classes = { WARLOCK },
				crs = {
					704,	-- Ragged Timber Wolf
					705,	-- Ragged Young Wolf
					1131,	-- Winter Wolf
					1133,	-- Starving Winter Wolf
					1138,	-- Snow Tracker Wolf
				},
			})),
		}),
	},
});
