---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

maproot(KALIMDOR, DUROTAR, {
	lore =
		"Once the home of the savage quilboar, the Horde arrived on Kalimdor's shore and, in the aftermath of the Third War, drove the quilboar from the land and established this region as its own. Warchief Thrall named the new nation after his father, Durotan, and rules ably. Horde settlements are scattered throughout the rocky land, which is only marginally more fertile than the Barrens.\n\nThe Horde's greatest city is Orgrimmar, a warrior city that symbolizes the greatness of the orcs and their allies. Much of Durotar remains wild, and the orcs continually fend off centaur and quilboar as they attempt to tame the land.",
	icon = 236756,
	maps = {
		3,	-- Tiragarde Keep
		4,	-- Tiragarde Keep
		5,	-- Skull Rock
		6,	-- Dustwind Cave
	},
	groups = {
		m(VALLEY_OF_TRIALS, {
			lore = "The Valley of Trials in southern Durotar is where all young orc adventurers begin their journey. Within the valley, they are safe from external threats while taking on challenges that enable them to get used to their new status as recruits of the Horde.",
			icon = 236452,
			-- CRIEVE NOTE: I actually have no idea when they added the proper mapID for this subzone.
			zoneTextAreaIDs = {
				363,	-- Valley of Trials
				364,	-- The Den
				365,	-- Burning Blade Coven
			},
			maps = { 2 },	-- Burning Blade Coven
			groups = {
				n(QUESTS, {
					applyclassicphase(SOD_PHASE_ONE, q(77582, {	-- A Trial of Fitness [Orc]
						qg = 3153,	-- Frang <Warrior Trainer>
						coord = { 42.8, 69.4, DUROTAR },
						races = { ORC },
						classes = { WARRIOR },
						lvl = 2,
						groups = {
							objective(1, {	-- 0/1 Learn Spell: Engrave Gloves - Victory Rush
								providers = {
									{ "i", 204806 },	-- Rune of Victory Rush
									{ "o", 404911 },	-- Hidden Cache
								},
								coord = { 43.2, 69.6, DUROTAR },
							}),
							recipe(403470),	-- Engrave Gloves - Victory Rush
							i(2385),	-- Tarnished Chain Gloves
						},
					})),
					applyclassicphase(SOD_PHASE_ONE, q(77588, {	-- A Trial of Fitness [Troll]
						qg = 3153,	-- Frang <Warrior Trainer>
						coord = { 42.8, 69.4, DUROTAR },
						races = { TROLL },
						classes = { WARRIOR },
						lvl = 2,
						groups = {
							objective(1, {	-- 0/1 Learn Spell: Engrave Gloves - Victory Rush
								providers = {
									{ "i", 204806 },	-- Rune of Victory Rush
									{ "o", 404911 },	-- Hidden Cache
								},
								coord = { 43.2, 69.6, DUROTAR },
							}),
							recipe(403470),	-- Engrave Gloves - Victory Rush
							i(2385),	-- Tarnished Chain Gloves
						},
					})),
					applyclassicphase(SOD_PHASE_ONE, q(77583, {	-- Atop the Cliffs [Orc]
						qg = 3155,	-- Rwag <Rogue Trainer>
						coord = { 41.2, 68.0, DUROTAR },
						races = { ORC },
						classes = { ROGUE },
						lvl = 2,
						groups = {
							objective(1, {	-- 0/1 Learn Spell: Engrave Gloves - Shadowstrike
								providers = {
									{ "o", 404911 },	-- Hidden Cache
									{ "i", 204795 },	-- Rune of Shadowstrike
								},
								coord = { 43.2, 69.6, DUROTAR },
							}),
							recipe(400105),	-- Engrave Gloves - Shadowstrike
							i(2125),	-- Cracked Leather Gloves
						},
					})),
					applyclassicphase(SOD_PHASE_ONE, q(77592, {	-- Atop the Cliffs [Troll]
						qg = 3155,	-- Rwag <Rogue Trainer>
						coord = { 41.2, 68.0, DUROTAR },
						races = { TROLL },
						classes = { ROGUE },
						lvl = 2,
						groups = {
							objective(1, {	-- 0/1 Learn Spell: Engrave Gloves - Shadowstrike
								providers = {
									{ "o", 404911 },	-- Hidden Cache
									{ "i", 204795 },	-- Rune of Shadowstrike
								},
								coord = { 43.2, 69.6, DUROTAR },
							}),
							recipe(400105),	-- Engrave Gloves - Shadowstrike
							i(2125),	-- Cracked Leather Gloves
						},
					})),
					q(794, {	-- Burning Blade Medallion
						sourceQuests = {
							792,	-- Vile Familiars
							1499,	-- Vile Familiars (Part 2 - Warlocks only!)
						},
						qg = 3145,	-- Zureetha Fargaze
						coord = { 42.8, 69.0, DUROTAR },
						races = HORDE_ONLY,
						groups = {
							objective(1, {	-- 0/1 Burning Blade Medallion
								provider = { "i", 4859 },	-- Burning Blade Medallion
								coord = { 42.8, 52.6, DUROTAR },
								cr = 3183,	-- Yarrog Baneshadow
							}),
							i(4921),	-- Dust-covered Leggings
							i(4922),	-- Jagged Chain Vest
							i(6713),	-- Ripped Pants
						},
					}),
					q(1516, {	-- Call of Earth (1/3)
						altQuests = { 1519 },	-- Call to Earth (1/3 Mulgore)
						qg = 5887,	-- Canaga Earthcaller
						coord = { 42.4, 69.0, DUROTAR },
						races = HORDE_ONLY,
						classes = { SHAMAN },
						lvl = 4,
						groups = {
							objective(1, {	-- 0/2 Felstalker Hoof
								provider = { "i", 6640 },	-- Felstalker Hoof
								cr = 3102,	-- Felstalker
							}),
						},
					}),
					q(1517, {	-- Call of Earth (2/3)
						sourceQuest = 1516,	-- Call of Earth (1/3)
						altQuests = { 1520 },	-- Call to Earth (2/3 Mulgore)
						qg = 5887,	-- Canaga Earthcaller
						qi = 6635,	-- Earth Sapta
						coord = { 42.4, 69.0, DUROTAR },
						races = HORDE_ONLY,
						classes = { SHAMAN },
						lvl = 4,
					}),
					q(1518, {	-- Call of Earth (3/3)
						sourceQuest = 1517,	-- Call of Earth (2/3)
						altQuests = { 1521 },	-- Call to Earth (3/3 Mulgore)
						qg = 5891,	-- Minor Manifestation of Earth
						qg = 5891,	-- Minor Manifestation of Earth
						qi = 6656,	-- Rough Quartz
						coord = { 44.0, 76.0, DUROTAR },
						races = HORDE_ONLY,
						classes = { SHAMAN },
						lvl = 4,
						groups = {
							recipe(8071),	-- Stoneskin Totem
							i(5175, {	-- Earth Totem
								description = "You must keep this in your bags forever.",
							}),
						},
					}),
					q(788, {	-- Cutting Teeth
						sourceQuest = 4641,	-- Your Place In The World
						qg = 3143,	-- Gornek
						coord = { 42.0, 68.4, DUROTAR },
						races = HORDE_ONLY,
						groups = {
							objective(1, {	-- 0/10 (8 in Wrath) Mottled Boar
								provider = { "n", 3098 },	-- Mottled Boar
							}),
							i(4915),	-- Soft Wool Boots
							i(4914),	-- Battleworn Leather Gloves
						},
					}),
					q(1463, {	-- Earth Sapta
						sourceQuest = 1516,	-- Call of Earth (1/3)
						qg = 5887,	-- Canaga Earthcaller
						coord = { 42.4, 69.0, DUROTAR },
						races = HORDE_ONLY,
						classes = { SHAMAN },
						repeatable = true,
						lvl = 4,
						groups = {
							i(6635),	-- Earth Sapta
						},
					}),
					q(3088, {	-- Encrypted Parchment
						sourceQuest = 788,	-- Cutting Teeth
						qg = 3143,	-- Gornek
						qi = 9560,	-- Encrypted Parchment
						coord = { 42.0, 68.4, DUROTAR },
						races = { ORC },
						classes = { ROGUE },
					}),
					q(3083, {	-- Encrypted Tablet
						sourceQuest = 788,	-- Cutting Teeth
						qg = 3143,	-- Gornek
						qi = 9554,	-- Encrypted Tablet
						coord = { 42.0, 68.4, DUROTAR },
						races = { TROLL },
						classes = { ROGUE },
					}),
					q(3087, {	-- Etched Parchment
						sourceQuest = 788,	-- Cutting Teeth
						qg = 3143,	-- Gornek
						qi = 9553,	-- Etched Parchment
						coord = { 42.0, 68.4, DUROTAR },
						races = { ORC },
						classes = { HUNTER },
					}),
					q(3082, {	-- Etched Tablet
						sourceQuest = 788,	-- Cutting Teeth
						qg = 3143,	-- Gornek
						qi = 9564,	-- Etched Tablet
						coord = { 42.0, 68.4, DUROTAR },
						races = { TROLL },
						classes = { HUNTER },
					}),
					q(4402, {	-- Galgar's Cactus Apple Surprise
						sourceQuest = 788,	-- Cutting Teeth
						qg = 9796,	-- Galgar
						coord = { 42.6, 67.2, DUROTAR },
						races = HORDE_ONLY,
						groups = {
							objective(1, {	-- 0/10 Cactus Apple
								providers = {
									{ "i",  11583 },	-- Cactus Apple
									{ "o", 171938 },	-- Cactus Apple
								},
							}),
							i(11584),	-- Cactus Apple Surprise
						},
					}),
					q(3086, {	-- Glyphic Tablet
						sourceQuest = 788,	-- Cutting Teeth
						qg = 3143,	-- Gornek
						qi = 9575,	-- Glyphic Tablet
						coord = { 42.0, 68.4, DUROTAR },
						races = { TROLL },
						classes = { MAGE },
					}),
					q(3085, {	-- Hallowed Tablet
						sourceQuest = 788,	-- Cutting Teeth
						qg = 3143,	-- Gornek
						qi = 9561,	-- Hallowed Tablet
						coord = { 42.0, 68.4, DUROTAR },
						races = { TROLL },
						classes = { PRIEST },
					}),
					applyclassicphase(SOD_PHASE_ONE, q(77584, {	-- Hunt for the Rune
						qg = 3154,	-- Jen'shan <Hunter Trainer>
						coord = { 42.8, 69.2, DUROTAR },
						races = { ORC },
						classes = { HUNTER },
						lvl = 2,
						groups = {
							objective(1, {	-- 0/1 Learn Spell: Engrave Gloves - Chimera Shot
								provider = { "i", 206168 },	-- Rune of the Chimera
								cr = 3124,	-- Scorpid Worker
							}),
							recipe(410121),	-- Engrave Gloves - Chimera Shot
							i(2125),	-- Cracked Leather Gloves
						},
					})),
					applyclassicphase(SOD_PHASE_ONE, q(77585, {	-- Icons of Power [Orc]
						qg = 3157,	-- Shikrik <Shaman Trainer>
						coord = { 42.4, 69.0, DUROTAR },
						races = { ORC },
						classes = { SHAMAN },
						lvl = 2,
						groups = {
							objective(1, {	-- 0/1 Learn Spell: Engrave Chest - Overload
								provider = { "i", 206381 },	-- Dyadic Icon
							}),
							recipe(410094),	-- Engrave Chest - Overload
							i(2127),	-- Cracked Leather Vest
						},
					})),
					applyclassicphase(SOD_PHASE_ONE, q(77587, {	-- Icons of Power [Troll]
						qg = 3157,	-- Shikrik <Shaman Trainer>
						coord = { 42.4, 69.0, DUROTAR },
						races = { TROLL },
						classes = { SHAMAN },
						lvl = 2,
						groups = {
							objective(1, {	-- 0/1 Learn Spell: Engrave Chest - Overload
								provider = { "i", 206381 },	-- Dyadic Icon
							}),
							recipe(410094),	-- Engrave Chest - Overload
							i(2127),	-- Cracked Leather Vest
						},
					})),
					q(5649, {	-- In Favor of Spirituality
						qg = 3707,	-- Ken'jai
						coord = { 42.4, 68.8, DUROTAR },
						races = { TROLL },
						classes = { PRIEST },
						lvl = 5
					}),
					q(5441, {	-- Lazy Peons
						qg = 11378,	-- Foreman Thazz'ril
						coord = { 44.6, 68.6, DUROTAR },
						races = HORDE_ONLY,
						lvl = 3,
						groups = {
							objective(1, {	-- 0/5 Peons Awoken
								provider = { "i", 16114 },	-- Foreman's Blackjack
								cr = 10556,	-- Lazy Peon
							}),
						},
					}),
					q(805, {	-- Report to Sen'jin Village
						sourceQuest = 794,	-- Burning Blade Medallion
						qg = 3145,	-- Zureetha Fargaze
						coord = { 42.8, 69.0, DUROTAR },
						races = HORDE_ONLY,
					}),
					applyclassicphase(SOD_PHASE_ONE, q(77590, {	-- Rugged Terrain
						qg = 3154,	-- Jen'shan <Hunter Trainer>
						coord = { 42.8, 69.2, DUROTAR },
						races = { TROLL },
						classes = { HUNTER },
						lvl = 2,
						groups = {
							objective(1, {	-- 0/1 Learn Spell: Engrave Gloves - Chimera Shot
								provider = { "i", 206168 },	-- Rune of the Chimera
								cr = 3124,	-- Scorpid Worker
							}),
							recipe(410121),	-- Engrave Gloves - Chimera Shot
							i(2125),	-- Cracked Leather Gloves
						},
					})),
					q(3089, {	-- Rune-Inscribed Parchment
						sourceQuest = 788,	-- Cutting Teeth
						qg = 3143,	-- Gornek
						qi = 9568,	-- Rune-Inscribed Parchment
						coord = { 42.0, 68.4, DUROTAR },
						races = { ORC },
						classes = { SHAMAN },
					}),
					q(3084, {	-- Rune-Inscribed Tablet
						sourceQuest = 788,	-- Cutting Teeth
						qg = 3143,	-- Gornek
						qi = 9562,	-- Rune-Inscribed Tablet
						coord = { 42.0, 68.4, DUROTAR },
						races = { TROLL },
						classes = { SHAMAN },
					}),
					q(790, {	-- Sarkoth (1/2)
						qg = 3287,	-- Hana'zua
						coord = { 40.6, 62.6, DUROTAR },
						races = HORDE_ONLY,
						groups = {
							objective(1, {	-- 0/1 Sarkoth's Mangled Claw
								provider = { "i", 4905 },	-- Sarkoth's Mangled Claw
								coord = { 40.6, 66.6, DUROTAR },
								cr = 3281,	-- Sarkoth
							}),
						},
					}),
					q(804, {	-- Sarkoth (2/2)
						sourceQuest = 790,	-- Sarkoth (1/2)
						qg = 3287,	-- Hana'zua
						coord = { 40.6, 62.6, DUROTAR },
						races = HORDE_ONLY,
						groups = {
							i(4916),	-- Soft Wool Vest
							i(4917),	-- Battleworn Chain Leggings
						},
					}),
					q(2383, {	-- Simple Parchment
						sourceQuest = 788,	-- Cutting Teeth
						qg = 3143,	-- Gornek
						qi = 12635,	-- Simple Parchment
						coord = { 42.0, 68.4, DUROTAR },
						races = { ORC },
						classes = { WARRIOR },
					}),
					q(3065, {	-- Simple Tablet
						sourceQuest = 788,	-- Cutting Teeth
						qg = 3143,	-- Gornek
						qi = 6488,	-- Simple Tablet
						coord = { 42.0, 68.4, DUROTAR },
						races = { TROLL },
						classes = { WARRIOR },
					}),
					applyclassicphase(SOD_PHASE_ONE, q(77643, {	-- Spell Research
						qg = 5884,	-- Mai'ah <Mage Trainer>
						qi = 211809,	-- Comprehension Primer
						coord = { 42.4, 69.0, DUROTAR },
						races = { TROLL },
						classes = { MAGE },
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
					q(789, {	-- Sting of the Scorpid
						sourceQuest = 788,	-- Cutting Teeth
						qg = 3143,	-- Gornek
						coord = { 42.0, 68.4, DUROTAR },
						races = HORDE_ONLY,
						groups = {
							objective(1, {	-- 0/10 Scorpid Worker Tail
								provider = { "i", 4862 },	-- Scorpid Worker Tail
								crs = {
									3281,	-- Sarkoth
									3124,	-- Scorpid Worker
								},
							}),
							i(4919),	-- Soft Wool Belt
							i(4920),	-- Battleworn Cape
						},
					}),
					applyclassicphase(SOD_PHASE_ONE, q(77586, {	-- Stolen Power
						qg = 3156,	-- Nartok <Warlock Trainer>
						coord = { 40.6, 68.4, DUROTAR },
						races = { ORC },
						classes = { WARLOCK },
						lvl = 2,
						groups = {
							objective(1, {	-- 0/1 Learn Spell: Engrave Gloves - Haunt
								provider = { "i", 205230 },	-- Rune of Haunting
							}),
							recipe(403919),	-- Engrave Gloves - Haunt
							i(711),	-- Tattered Cloth Gloves
						},
					})),
					q(3090, {	-- Tainted Parchment
						sourceQuest = 788,	-- Cutting Teeth
						qg = 3143,	-- Gornek
						qg = 3143,	-- Gornek
						qi = 9579,	-- Tainted Parchment
						coords = {
							{ 42.0, 68.4, DUROTAR },
						},
						races = { ORC, TROLL },
						classes = { WARLOCK },
					}),
					q(6394, {	-- Thazz'ril's Pick
						sourceQuest = 5441,	-- Lazy Peons
						qg = 11378,	-- Foreman Thazz'ril
						coord = { 44.6, 68.6, DUROTAR },
						races = HORDE_ONLY,
						lvl = 3,
						groups = {
							objective(1, {	-- 0/1 Thazz'ril's Pick
								providers = {
									{ "i",  16332 },	-- Thazz'ril's Pick
									{ "o", 178087 },	-- Thazz'ril's Pick
								},
								coord = { 43.8, 53.8, DUROTAR },
							}),
						},
					}),
					q(792, {	-- Vile Familiars
						qg = 3145,	-- Zureetha Fargaze
						coord = { 42.85, 69.14, DUROTAR },
						classes = exclude(WARLOCK, ALL_CLASSES),
						races = HORDE_ONLY,
						lvl = 2,
						groups = {
							objective(1, {	-- 0/12 Vile Familiar
								provider = { "n", 3101 },	-- Vile Familiar
							}),
							i(12449, {	-- Primitive Bow
								timeline = { REMOVED_1_7_0 },
							}),
							i(4924),	-- Primitive Club
							i(4925),	-- Primitive Hand Blade
							i(4923),	-- Primitive Hatchet
							i(5778),	-- Primitive Walking Stick
						},
					}),
					q(1485, {	-- Vile Familiars (Part 1 - Warlocks only!)
						qg = 5765,	-- Ruzan
						coord = { 42.6, 69.0, DUROTAR },
						classes = { WARLOCK },
						races = HORDE_ONLY,
						groups = {
							objective(1, {	-- 0/8 Vile Familiar Head
								provider = { "i", 6487 },	-- Vile Familiar Head
								cr = 3101,	-- Vile Familiar
							}),
							recipe(688),	-- Summon Imp
						},
					}),
					q(1499, {	-- Vile Familiars (Part 2 - Warlocks only!)
						sourceQuest = 1485,	-- Vile Familiars (Part 1 - Warlocks only!)
						qg = 5765,	-- Ruzan
						coord = { 42.6, 69.0, DUROTAR },
						classes = { WARLOCK },
						races = HORDE_ONLY,
						groups = {
							i(4925),	-- Primitive Hand Blade
							i(5778),	-- Primitive Walking Stick
						},
					}),
					applyclassicphase(SOD_PHASE_ONE, q(77642, {	-- Wisdom of the Loa
						qg = 3707,	-- Ken'jai <Priest Trainer>
						coord = { 42.4, 68.8, DUROTAR },
						races = { TROLL },
						classes = { PRIEST },
						lvl = 2,
						groups = {
							objective(1, {	-- 0/1 Learn Spell: Engrave Gloves - Penance
								provider = { "i", 205951 },	-- Memory of a Troubled Acolyte
								description = "Kneel (/kneel) at the Loa Altar to gain a Meditation buff, then use the Rune to complete the quest.",
								coord = { 55.4, 72.6, DUROTAR },
							}),
							recipe(402862),	-- Engrave Gloves - Penance
							i(711),	-- Tattered Cloth Gloves
						},
					})),
					q(4641, {	-- Your Place In The World
						altQuests = { 787 },	-- The New Horde
						qg = 10176,	-- Kaltunk
						coord = { 43.2, 68.4, DUROTAR },
						races = HORDE_ONLY,
						isBreadcrumb = true,
					}),
				}),
				n(TREASURES, {
					applyclassicphase(SOD_PHASE_ONE, o(404695, {	-- Waterlogged Stashbox
						coord = { 43.0, 54.5, DUROTAR },
						races = HORDE_ONLY,
						groups = {
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
					applyclassicphase(SOD_PHASE_ONE, i(206381, {	-- Dyadic Icon
						coord = { 40.8, 64.0, DUROTAR },
						classes = { SHAMAN },
						cr = 3124,	-- Scorpid Worker
					})),
					applyclassicphase(SOD_PHASE_ONE, i(206169, {	-- Rune of Explosive Shot
						description = "This can also drop from any of the rare mobs in the zone.",
						coord = { 40.6, 67.7, DUROTAR },
						classes = { HUNTER },
						cr = 3281,	-- Sarkoth
						groups = {
							recipe(410123),	-- Engrave Gloves - Explosive Shot
						},
					})),
					applyclassicphase(SOD_PHASE_ONE, i(204809, {	-- Rune of Furious Thunder
						description = "This can also drop from any of the rare mobs in the zone.",
						coord = { 40.6, 67.7, DUROTAR },
						classes = { WARRIOR },
						cr = 3281,	-- Sarkoth
						groups = {
							recipe(403476),	-- Engrave Pants - Furious Thunder
						},
					})),
				}),
			},
		}),
		n(ACHIEVEMENTS, {
			ach(728),	-- Explore Durotar
		}),
		explorationHeader({
			exploration(370),	-- Drygulch Ravine
			exploration(368),	-- Echo Isles
			exploration(366),	-- Kolkar Crag
			exploration(1637),	-- Orgrimmar
			exploration(362),	-- Razor Hill
			exploration(816),	-- Razormane Grounds
			exploration(410),	-- Razorwind Canyon
			exploration(367),	-- Sen'jin Village
			exploration(817),	-- Skull Rock
			exploration(369),	-- Thunder Ridge
			exploration(372),	-- Tiragarde Keep
			exploration(363),	-- Valley of Trials
		}),
		pickpocketing({
			applyclassicphase(SOD_PHASE_ONE, i(207110, {	-- Durotar Treasure Map
				classes = { ROGUE },
				cost = {
					{ "i", 207106, 1 },	-- Bottom-Left Map Piece
					{ "i", 207107, 1 },	-- Bottom-Right Map Piece
					{ "i", 207108, 1 },	-- Top-Left Map Piece
					{ "i", 207109, 1 },	-- Top-Right Map Piece
				},
			})),
			applyclassicphase(SOD_PHASE_ONE, i(207106, {	-- Bottom-Left Map Piece
				coord = { 67.2, 85.6, DUROTAR },
				classes = { ROGUE },
				crs = {
					3206,	-- Voodoo Troll
					3207,	-- Hexed Troll
				},
			})),
			applyclassicphase(SOD_PHASE_ONE, i(207107, {	-- Bottom-Right Map Piece
				coord = { 43.0, 39.8, DUROTAR },
				classes = { ROGUE },
				crs = {
					3111,	-- Razormane Quilboar
					3114,	-- Razormane Battleguard
					3113,	-- Razormane Dustrunner
					3112,	-- Razormane Scout
				},
			})),
			applyclassicphase(SOD_PHASE_ONE, i(207098, {	-- Note from Ba'so
				coord = { 53.0, 27.6, DUROTAR },
				classes = { ROGUE },
				crs = {
					3196,	-- Burning Blade Neophyte
					3195,	-- Burning Blade Thug
					3199,	-- Burning Blade Cultist
					3197,	-- Burning Blade Fanatic
					3198,	-- Burning Blade Apprentice
				},
			})),
			applyclassicphase(SOD_PHASE_ONE, i(207108, {	-- Top-Left Map Piece
				coord = { 53.0, 27.6, DUROTAR },
				classes = { ROGUE },
				crs = {
					3196,	-- Burning Blade Neophyte
					3195,	-- Burning Blade Thug
					3199,	-- Burning Blade Cultist
					3197,	-- Burning Blade Fanatic
					3198,	-- Burning Blade Apprentice
				},
			})),
			applyclassicphase(SOD_PHASE_ONE, i(207109, {	-- Top-Right Map Piece
				coord = { 58.8, 55.4, DUROTAR },
				classes = { ROGUE },
				crs = {
					3129,	-- Kul Tiras Marine
					3128,	-- Kul Tiras Sailor
				},
			})),
		}),
		n(QUESTS, {
			q(2161, {	-- A Peon's Burden
				qg = 6786,	-- Ukor
				qi = 7629,	-- Ukor's Burden
				coord = { 52.0, 68.2, DUROTAR },
				races = HORDE_ONLY,
			}),
			q(818, {	-- A Solvent Spirit
				qg = 3304,	-- Master Vornal
				coord = { 55.8, 74.4, DUROTAR },
				races = HORDE_ONLY,
				lvl = 5,
				groups = {
					objective(1, {	-- 0/4 Intact Makrura Eye
						provider = { "i", 4887 },	-- Intact Makrura Eye
						crs = {
							3103,	-- Makrura Clacker
							3104,	-- Makrura Shellhide
							3105,	-- Makrura Snapclaw
							3141,	-- Makrura Elder
						},
					}),
					objective(2, {	-- 0/8 Crawler Mucus
						provider = { "i", 4888 },	-- Crawler Mucus
						crs = {
							3228,	-- Corrupted Surf Crawler
							3108,	-- Encrusted Surf Crawler
							3106,	-- Pygmy Surf Crawler
							3107,	-- Surf Crawler
						},
					}),
					i(4941),	-- Really Sticky Glue
				},
			}),
			q(809, {	-- Ak'Zeloth
				sourceQuest = 829,	-- Neeru Fireblade
				qg = 3216,	-- Neeru Fireblade
				coord = { 49.6, 50.4, ORGRIMMAR },
				races = HORDE_ONLY,
				lvl = 4,
			}),
			q(815, {	-- Break a Few Eggs
				qg = 3191,	-- Cook Torka
				coord = { 51.11, 42.45, DUROTAR },
				races = HORDE_ONLY,
				lvl = 6,
				groups = {
					objective(1, {	-- 0/3 Taillasher Egg
						providers = {
							{ "i", 4890 },	-- Taillasher Egg
							{ "o", 3240 },	-- Taillasher Eggs
						},
					}),
				},
			}),
			q(1843, {	-- Brutal Gauntlets
				sourceQuest = 1842,	-- Satyr Hooves
				qg = 6408,	-- Ula'elek
				coord = { 56.2, 74.4, DUROTAR },
				races = HORDE_ONLY,
				classes = { WARRIOR },
				lvl = 20,
				groups = {
					i(7129),	-- Brutal Gauntlets
				},
			}),
			q(832, {	-- Burning Shadows
				provider = { "i", 4903 },	-- Eye of Burning Shadow
				coord = { 51.78, 9.56, DUROTAR },
				maps = { ORGRIMMAR },
				races = HORDE_ONLY,
				cr = 3204,	-- Gazz'uz
				lvl = 4,
			}),
			q(791, {	-- Carry Your Weight
				qg = 3147,	-- Furl Scornbrow
				coord = { 49.8, 40.4, DUROTAR },
				races = HORDE_ONLY,
				lvl = 4,
				groups = {
					objective(1, {	-- 0/8 Canvas Scraps
						provider = { "i", 4870 },	-- Canvas Scraps
						crs = {
							3119,	-- Kolkar Drudge
							3120,	-- Kolkar Outrunner
							3129,	-- Kul Tiras Marine
							3128,	-- Kul Tiras Sailor
							3192,	-- Lieutenant Benedict
							5808,	-- Warlord Kolkanis
							5809,	-- Watch Commander Zalaphil
						},
					}),
					i(11845),	-- Handmade Leather Bag
				},
			}),
			q(840, {	-- Conscript of the Horde
				qg = 3336,	-- Takrin Pathseeker
				qi = 4992,	-- Recruitment Letter
				coord = { 50.8, 43.5, DUROTAR },
				races = HORDE_ONLY,
				isBreadcrumb = true,
				lvl = 10,
			}),
			q(842, {	-- Crossroads Conscription
				sourceQuest = 840,	-- Conscript of the Horde
				qg = 3337,	-- Kargal Battlescar
				qi = 4995,	-- Signed Recruitment Letter
				coord = { 62.26, 19.37, THE_BARRENS },
				races = HORDE_ONLY,
				lvl = 10,
			}),
			q(806, {	-- Dark Storms
				sourceQuest = 823,	-- Report to Orgnil
				qg = 3142,	-- Orgnil Soulscar
				coord = { 52.2, 43.2, DUROTAR },
				races = HORDE_ONLY,
				lvl = 4,
				groups = {
					objective(1, {	-- 0/1 Fizzle's Claw
						provider = { "i", 4869 },	-- Fizzle's Claw
						coord = { 42.6, 26.4, DUROTAR },
						cr = 3203,	-- Fizzle Darkstorm
					}),
					i(4942),	-- Tiger Hide Boots
				},
			}),
			q(837, {	-- Encroachment
				qg = 3139,	-- Gar'Thok
				coord = { 52.0, 43.4, DUROTAR },
				races = HORDE_ONLY,
				lvl = 6,
				groups = {
					objective(1, {	-- 0/4 Razormane Quilboar slain
						provider = { "n", 3111 },	-- Razormane Quilboar
					}),
					objective(2, {	-- 0/4 Razormane Scout slain
						provider = { "n", 3112 },	-- Razormane Scout
					}),
					objective(3, {	-- 0/4 Razormane Dustrunner slain
						provider = { "n", 3113 },	-- Razormane Dustrunner
					}),
					objective(4, {	-- 0/4 Razormane Battleguard slain
						provider = { "n", 3114 },	-- Razormane Battleguard
					}),
				},
			}),
			q(1464, {	-- Fire Sapta
				sourceQuest = 1525,	-- Call of Fire (3/5)
				qg = 5900,	-- Telf Joolam
				coord = { 38.6, 58.8, DUROTAR },
				races = HORDE_ONLY,
				classes = { SHAMAN },
				repeatable = true,
				lvl = 10,
				groups = {
					i(6636),	-- Fire Sapta
				},
			}),
			q(825, {	-- From The Wreckage....
				sourceQuest = 784,	-- Vanquish the Betrayers
				qg = 3139,	-- Gar'Thok
				coord = { 52.0, 43.4, DUROTAR },
				races = HORDE_ONLY,
				lvl = 3,
				groups = {
					objective(1, {	-- 0/3 Gnomish Tools
						providers = {
							{ "i", 4863 },	-- Gnomish Tools
							{ "o", 3236 },	-- Gnomish Toolbox
						},
					}),
					i(4936),	-- Dirt-trodden Boots
					i(4928),	-- Sandrunner Wristguards
					i(4935),	-- Wide Metal Girdle
				},
			}),
			q(1506, {	-- Gan'rul's Summons
				altQuests = { 1478 },	-- Halgar's Summons
				qg = 3294,	-- Ophek
				coord = { 54.2, 41.2, DUROTAR },
				races = { ORC, TROLL, UNDEAD },
				classes = { WARLOCK },
				lvl = 10,
			}),
			q(5648, {	-- Garments of Spirituality
				sourceQuest = 5649,	-- In Favor of Spirituality
				qg = 3706,	-- Tai'jin
				coord = { 54.2, 42.8, DUROTAR },
				races = { TROLL },
				classes = { PRIEST },
				lvl = 5,
				groups = {
					i(16606),	-- Juju Hex Robes
				},
			}),
			q(5654, {	-- Hex of Weakness [Durotar]
				altQuests = {
					5652,	-- Hex of Weakness [Orgrimmar]
					5655,	-- Hex of Weakness [Mulgore]
					5656,	-- Hex of Weakness [Thunder Bluff]
					5657,	-- Hex of Weakness [Undercity]
				},
				qg = 3706,	-- Tai'jin <Priest Trainer>
				coord = { 54.2, 42.8, DUROTAR },
				races = { TROLL },
				classes = { PRIEST },
				lvl = 10,
				groups = {
					{
						recipeID = 9035,	-- Hex of Weakness (Rank 1)
						rank = 1,
					},
				},
			}),
			q(7664, {	-- Ivory Raptor Replacement
				description = "If you are one of the poor unfortunate souls that turned in your unique mount for one of the generic mounts I'm so sorry.",
				qg = 7952,	-- Zjolnir
				coord = { 55.2, 75.6, DUROTAR },
				timeline = { REMOVED_1_4_0 },
				cost = { { "i", 13317, 1 } },	-- Ivory Raptor (MOUNT!)
				races = HORDE_ONLY,
				repeatable = true,
				_drop = { "g" },
				sym = { { "select", "itemID", 18788, 18789, 18790 } },
			}),
			q(1884, {	-- Ju-Ju Heaps
				sourceQuests = {
					1881,	-- Speak with Anastasia
					1883,	-- Speak with Un'thuwa
				},
				qg = 5880,	-- Un'Thuwa <Mage Trainer>
				coord = { 56.2, 75.0, DUROTAR },
				races = { UNDEAD, TROLL },
				classes = { MAGE },
				lvl = 10,
				groups = {
					i(7508),	-- Ley Orb
					i(9513),	-- Ley Staff
				},
			}),
			q(816, {	-- Lost But Not Forgotten
				qg = 3193,	-- Misha Tor'kren
				coord = { 43.10, 30.24, DUROTAR },
				races = HORDE_ONLY,
				lvl = 8,
				groups = {
					objective(1, {	-- 0/1 Kron's Amulet
						provider = { "i", 4891 },	-- Kron's Amulet
						crs = {
							3231,	-- Corrupted Dreadmaw Crocolisk
							3110,	-- Dreadmaw Crocolisk
						},
					}),
					i(4944),	-- Handsewn Cloak
				},
			}),
			q(828, {	-- Margoz
				sourceQuest = 806,	-- Dark Storms
				qg = 3142,	-- Orgnil Soulscar
				coord = { 52.2, 43.2, DUROTAR },
				races = HORDE_ONLY,
				lvl = 4,
			}),
			q(808, {	-- Minshina's Skull
				sourceQuest = 805,	-- Report to Sen'jin Village
				qg = 3188,	-- Master Gadrin
				coord = { 56.0, 74.6, DUROTAR },
				races = HORDE_ONLY,
				lvl = 4,
				groups = {
					objective(1, {	-- 0/1 Minshina's Skull
						providers = {
							{ "i", 4864 },	-- Minshina's Skull
							{ "o", 3237 },	-- Imprisoned Darkspear
						},
						coord = { 67.4, 87.7, DUROTAR },
					}),
					i(4945),	-- Faintly Glowing Skull
				},
			}),
			q(812, {	-- Need for a Cure
				qg = 3190,	-- Rhinag
				coord = { 41.54, 18.61, DUROTAR },
				maps = { ORGRIMMAR },
				races = HORDE_ONLY,
				lvl = 7,
				groups = {
					q(813, {	-- Finding the Antidote
						qg = 3189,	-- Kor'ghan
						coord = { 47.0, 53.4, ORGRIMMAR },
						races = HORDE_ONLY,
						repeatable = true,
						lvl = 7,
						groups = {
							objective(1, {	-- 0/4 Venomtail Poison Sac
								cost = { { "i", 4886, 4 } },	-- Venomtail Poison Sac
								crs = {
									3226,	-- Corrupted Scorpid
									5823,	-- Death Flayer
									3127,	-- Venomtail Scorpid
								},
							}),
							objective(1, {	-- 0/1 Venomtail Antidote
								questID = 812,	-- Need for a Cure
								provider = { "i", 4904 },	-- Venomtail Antidote
							}),
						},
					}),
					i(4937),	-- Charging Buckler
					i(4929),	-- Light Scorpid Armor
				},
			}),
			q(829, {	-- Neeru Fireblade
				sourceQuest = 827,	-- Skull Rock
				qg = 3208,	-- Margoz
				qi = 6658,	-- Example Collar
				coord = { 56.4, 20.0, DUROTAR },
				races = HORDE_ONLY,
				lvl = 4,
			}),
			q(817, {	-- Practical Prey
				qg = 3194,	-- Vel'rin Fang
				coord = { 55.95, 73.92, DUROTAR },
				races = HORDE_ONLY,
				lvl = 5,
				groups = {
					objective(1, {	-- 0/4 Durotar Tiger Fur
						provider = { "i", 4892 },	-- Durotar Tiger Fur
						cr = 3121,	-- Durotar Tiger
					}),
				},
			}),
			q(7665, {	-- Red Raptor Replacement
				description = "If you are one of the poor unfortunate souls that turned in your unique mount for one of the generic mounts I'm so sorry.",
				qg = 7952,	-- Zjolnir
				coord = { 55.2, 75.6, DUROTAR },
				timeline = { REMOVED_1_4_0 },
				cost = { { "i", 8586, 1 } },	-- Mottled Red Raptor (MOUNT!)
				races = HORDE_ONLY,
				repeatable = true,
				_drop = { "g" },
				sym = { { "select", "itemID", 18788, 18789, 18790 } },
			}),
			q(823, {	-- Report to Orgnil
				sourceQuest = 805,	-- Report to Sen'jin Village
				qg = 3188,	-- Master Gadrin
				coord = { 56.0, 74.6, DUROTAR },
				races = HORDE_ONLY,
				lvl = 4,
			}),
			q(1842, {	-- Satyr Hooves
				sourceQuest = 1839,	-- Ula'elek and the Brutal Gauntlets
				qg = 6408,	-- Ula'elek
				coord = { 56.2, 74.4, DUROTAR },
				maps = { ASHENVALE },
				races = HORDE_ONLY,
				classes = { WARRIOR },
				lvl = 20,
				groups = {
					objective(1, {	-- 0/7 Uncloven Satyr Hoof
						provider = { "i", 7128 },	-- Uncloven Satyr Hoof
						crs = {
							3771,	-- Bleakheart Hellcaller
							3770,	-- Bleakheart Shadowstalker
							3767,	-- Bleakheart Trickster
							3765,	-- Bleakheart Satyr
							3755,	-- Xavian Felsworn
							3754,	-- Xavian Betrayer
							3757,	-- Xavian Hellcaller
							3752,	-- Xavian Rogue
							10647,	-- Prince Raze
							3758,	-- Felmusk Satyr
							3762,	-- Felmusk Felsworn
							3763,	-- Felmusk Shadowstalker
							3759,	-- Felmusk Rogue
						},
					}),
				},
			}),
			q(835, {	-- Securing the Lines
				sourceQuest = 834,	-- Winds in the Desert
				qg = 3293,	-- Rezlak
				coord = { 46.4, 23.0, DUROTAR },
				-- races = ALL_RACES,	-- Crieve: Yes, doable on Alliance.
				lvl = 7,
				groups = {
					objective(1, {	-- 0/12 Dustwind Savage
						provider = { "n", 3117 },	-- Dustwind Savage
					}),
					objective(2, {	-- 0/8 Dustwind Storm Witch
						provider = { "n", 3118 },	-- Dustwind Storm Witch
					}),
					i(4932),	-- Harpy Wing Clipper
					i(4931),	-- Hickory Shortbow
					i(4938),	-- Blemished Wooden Staff
				},
			}),
			q(827, {	-- Skull Rock
				sourceQuest = 828,	-- Margoz
				qg = 3208,	-- Margoz
				coord = { 56.4, 20.0, DUROTAR },
				races = HORDE_ONLY,
				lvl = 4,
				groups = {
					objective(1, {	-- 0/6 Searing Collar
						provider = { "i", 4871 },	-- Searing Collar
						crs = {
							3198,	-- Burning Blade Apprentice
							3199,	-- Burning Blade Cultist
							3197,	-- Burning Blade Fanatic
							3196,	-- Burning Blade Neophyte
							3195,	-- Burning Blade Thug
						},
					}),
					i(4947),	-- Jagged Dagger
					i(4939),	-- Steady Bastard Sword
					i(4948),	-- Stinging Mace
				},
			}),
			q(1883, {	-- Speak with Un'thuwa
				altQuests = { 1881 },	-- Speak with Anastasia
				qgs = {
					3049,	-- Thurston Xane <Mage Trainer>
					7311,	-- Uthel'nay <Mage Trainer>
				},
				coords = {
					{ 39.0, 86.0, ORGRIMMAR },
					{ 25.0, 20.6, THUNDER_BLUFF },
				},
				races = { UNDEAD, TROLL },
				classes = { MAGE },
				isBreadcrumb = true,
				lvl = 10,
			}),
			q(6062, {	-- Taming the Beast (1/3)
				sourceQuests = {
					6068,	-- The Hunter's Path [Orgrimmar]
					6069,	-- The Hunter's Path [Durotar]
					6070,	-- The Hunter's Path [Thunder Bluff]
				},
				qg = 3171,	-- Thotar <Hunter Trainer>
				coord = { 51.8, 43.4, DUROTAR },
				races = { ORC, UNDEAD, TROLL },
				classes = { HUNTER },
				lvl = 10,
				groups = {
					objective(1, {	-- Tame a Dire Mottled Boar
						provider = { "i", 15917 },	-- Taming Rod
						cr = 3099,	-- Dire Mottled Boar
					}),
				},
			}),
			q(6083, {	-- Taming the Beast (2/3)
				sourceQuest = 6062,	-- Taming the Beast (1/3)
				qg = 3171,	-- Thotar <Hunter Trainer>
				coord = { 51.8, 43.4, DUROTAR },
				races = { ORC, UNDEAD, TROLL },
				classes = { HUNTER },
				lvl = 10,
				groups = {
					objective(1, {	-- Tame a Surf Crawler
						provider = { "i", 15919 },	-- Taming Rod
						cr = 3107,	-- Surf Crawler
					}),
				},
			}),
			q(6082, {	-- Taming the Beast (3/3)
				sourceQuest = 6083,	-- Taming the Beast (2/3)
				qg = 3171,	-- Thotar <Hunter Trainer>
				coord = { 51.8, 43.4, DUROTAR },
				races = { ORC, UNDEAD, TROLL },
				classes = { HUNTER },
				lvl = 10,
				groups = {
					objective(1, {	-- Tame an Armored Scorpid
						provider = { "i", 15920 },	-- Taming Rod
						cr = 3126,	-- Armored Scorpid
					}),
					recipe(883),	-- Call Pet
					recipe(2641),	-- Dismiss Pet
					recipe(1515),	-- Tame Beast
				},
			}),
			q(830, {	-- The Admiral's Orders (1/2)
				provider = { "i", 4881 },	-- Aged Envelope
				races = HORDE_ONLY,
			}),
			q(831, {	-- The Admiral's Orders (2/2)
				sourceQuest = 830,	-- The Admiral's Orders (1/2)
				qg = 3139,	-- Gar'Thok
				qi = 4883,	-- Admiral Proudmoore's Orders
				coord = { 52.0, 43.4, DUROTAR },
				races = HORDE_ONLY,
			}),
			q(924, {	-- The Demon Seed
				sourceQuest = 809,	-- Ak'Zeloth
				qg = 3521,	-- Ak'Zeloth
				coord = { 62.4, 20.0, THE_BARRENS },
				races = HORDE_ONLY,
				lvl = 9,
				groups = {
					q(926, {	-- Flawed Power Stone
						sourceQuest = 924,	-- The Demon Seed
						provider = { "o", 5620 },	-- Flawed Power Stones
						coord = { 62.4, 20.0, THE_BARRENS },
						races = HORDE_ONLY,
						repeatable = true,
						groups = {
							objective(1, {	-- Destroy the Demon Seed
								questID = 924,	-- The Demon Seed
								providers = {
									{ "o", 3525 },	-- The Altar of Fire
									{ "i", 4986 },	-- Flawed Power Stone
								},
								coord = { 47.0, 19.0, THE_BARRENS },
							}),
						},
					}),
					i(5420),	-- Banshee Armor
				},
			}),
			q(6068, {	-- The Hunter's Path [Orgrimmar]
				qg = 3407,	-- Sian'dur <Hunter Trainer>
				coord = { 67.8, 17.8, ORGRIMMAR },
				races = { ORC, UNDEAD, TROLL },
				classes = { HUNTER },
				isBreadcrumb = true,
				lvl = 10,
			}),
			q(6069, {	-- The Hunter's Path [Durotar]
				qg = 11814,	-- Kali Remik
				coord = { 6.2, 74.2, DUROTAR },
				races = { ORC, UNDEAD, TROLL },
				classes = { HUNTER },
				isBreadcrumb = true,
				lvl = 10,
			}),
			q(6070, {	-- The Hunter's Path [Thunder Bluff]
				qg = 3038,	-- Kary Thunderhorn <Hunter Trainer>
				coord = { 58.4, 88.0, THUNDER_BLUFF },
				races = { ORC, UNDEAD, TROLL },
				classes = { HUNTER },
				isBreadcrumb = true,
				lvl = 10,
			}),
			q(1859, {	-- Therzok
				qg = 3170,	-- Kaplak
				coord = { 51.98, 43.70, DUROTAR },
				races = { ORC, TROLL },
				classes = { ROGUE },
				isBreadcrumb = true,
				lvl = 10,
			}),
			q(786, {	-- Thwarting Kolkar Aggression
				-- sourceQuest = 785,	-- A Strategic Alliance [didn't make it into Classic]
				qg = 3140,	-- Lar Prowltusk
				coord = { 54.52, 75.20, DUROTAR },
				races = HORDE_ONLY,
				lvl = 5,
				groups = {
					objective(1, {	-- 0/1 Attack Plan: Valley of Trials
						provider = { "o", 3189 },	-- Attack Plan: Valley of Trials
						coord = { 49.8, 81.3, DUROTAR },
					}),
					objective(2, {	-- 0/1 Attack Plan: Sen'jin Village
						provider = { "o", 3190 },	-- Attack Plan: Sen'jin Village
						coord = { 47.6, 77.4, DUROTAR },
					}),
					objective(3, {	-- 0/1 Attack Plan: Orgrimmar
						provider = { "o", 3192 },	-- Attack Plan: Orgrimmar
						coord = { 46.3, 79.0, DUROTAR },
					}),
					i(4933),	-- Seasoned Fighter's Cloak
					i(6062),	-- Heavy Cord Bracers
				},
			}),
			q(6081, {	-- Training the Beast
				sourceQuest = 6082,	-- Taming the Beast (3/3)
				qg = 3171,	-- Thotar <Hunter Trainer>
				coord = { 51.8, 43.4, DUROTAR },
				races = { ORC, UNDEAD, TROLL },
				classes = { HUNTER },
				lvl = 10,
				groups = {
					recipe(6991),	-- Feed Pet
					recipe(982),	-- Revive Pet
				},
			}),
			q(784, {	-- Vanquish the Betrayers
				qg = 3139,	-- Gar'Thok
				coord = { 52.0, 43.4, DUROTAR },
				races = HORDE_ONLY,
				lvl = 3,
				groups = {
					objective(1, {	-- 0/10 Kul Tiras Sailor
						provider = { "n", 3128 },	-- Kul Tiras Sailor
					}),
					objective(2, {	-- 0/8 Kul Tiras Marine
						provider = { "n", 3129 },	-- Kul Tiras Marine
					}),
					objective(3, {	-- 0/1 Lieutenant Benedict
						provider = { "n", 3192 },	-- Lieutenant Benedict
					}),
				},
			}),
			q(834, {	-- Winds in the Desert
				qg = 3293,	-- Rezlak
				coord = { 46.4, 23.0, DUROTAR },
				-- races = ALL_RACES,	-- Crieve: Yes, doable on Alliance.
				lvl = 7,
				groups = {
					objective(1, {	-- 0/5 Sack of Supplies
						providers = {
							{ "i", 4918 },	-- Sack of Supplies
							{ "o", 3290 },	-- Stolen Supply Sack
						},
					}),
				},
			}),
			q(826, {	-- Zalazane
				sourceQuest = 805,	-- Report to Sen'jin Village
				qg = 3188,	-- Master Gadrin
				coord = { 56.0, 74.6, DUROTAR },
				races = HORDE_ONLY,
				lvl = 4,
				groups = {
					objective(1, {	-- 0/8 Hexed Troll
						provider = { "n", 3207 },	-- Hexed Troll
					}),
					objective(2, {	-- 0/8 Voodoo Troll
						provider = { "n", 3206 },	-- Voodoo Troll
					}),
					objective(3, {	-- 0/1 Zalazane's Head
						provider = { "i", 4866 },	-- Zalazane's Head
						coord = { 67.6, 87.8, DUROTAR },
						cr = 3205,	-- Zalazane
					}),
					i(4946),	-- Lightweight Boots
					i(4940),	-- Veiled Grips
				},
			}),
		}),
		n(RARES, {
			n(5824, {	-- Captain Flat Tusk <Captain of the Battleguard>
				coords = {
					{ 38.6, 53.8, DUROTAR },
					{ 44.8, 50.6, DUROTAR },
					{ 42.4, 38.6, DUROTAR },
				},
			}),
			n(5823, {	-- Death Flayer
				coords = {
					{ 38.8, 46.2, DUROTAR },
					{ 35.2, 48.2, DUROTAR },
					{ 35.4, 53.0, DUROTAR },
					{ 36.0, 55.6, DUROTAR },
					{ 37.8, 53.4, DUROTAR },
					{ 39.2, 51.0, DUROTAR },
				},
			}),
			n(5822, {	-- Felweaver Scornn
				coords = {
					{ 51.6, 9.6, DUROTAR },
					{ 53.0, 7.2, DUROTAR },
				},
			}),
			applyclassicphase(SOD_PHASE_ONE, n(208275, {	-- Frozen Makrura
				coord = { 58.6, 45.6, DUROTAR },
				classes = { MAGE, SHAMAN, WARLOCK },
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
					i(206388, {	-- Sulfurous Icon
						classes = { SHAMAN },
						groups = {
							recipe(425344),	-- Engrave Gloves - Molten Blast
						},
					}),
				},
			})),
			n(5826, {	-- Geolord Mottle
				coords = {
					{ 43.6, 40.8, DUROTAR },
					{ 49.6, 45.0, DUROTAR },
					{ 47.6, 50.0, DUROTAR },
					{ 44.6, 48.4, DUROTAR },
					{ 43.8, 50.0, DUROTAR },
				},
			}),
			applyclassicphase(SOD_PHASE_ONE, n(208124, {	-- Raluk
				description = "You can tame him and you still get the rune!",
				coord = { 69.1, 71.5, DUROTAR },
				cost = { { "i", 207590, 1 } },	-- Durotar Pig Meat
				groups = {
					i(205979, {	-- Rune of Flanking
						classes = { HUNTER },
						groups = {
							recipe(425762),	-- Engrave Pants - Flanking Strike
						},
					}),
				},
			})),
			applyclassicphase(SOD_PHASE_ONE, n(208180, {	-- Razormane Poacher
				provider = { "n", 208179 },	-- Rustling Bush
				description = "Cast Hunter's Mark on the bush to spawn the rare.",
				coord = { 40.6, 52.0, DUROTAR },
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
				coord = { 67.6, 87.8, DUROTAR },
				cost = {
					{ "i", 207731, 1 },	-- Ominous Tome
					{ "i", 207732, 1 },	-- Makrura Leg
					{ "i", 207733, 1 },	-- Kul Tiran Skull
				},
				races = HORDE_ONLY,
				groups = {
					i(204912, {	-- Rune of Grace
						classes = { WARLOCK },
						groups = {
							recipe(425477),	-- Engrave Pants - Demonic Grace
						},
					}),
				},
			})),
			applyclassicphase(SOD_PHASE_ONE, n(203079, {	-- Wandering Swordsman
				provider = { "o", 392029 },	-- Swordsman's Reward
				coords = {
					{ 37.0, 46.8, DUROTAR },
					{ 41.0, 49.8, DUROTAR },
					{ 55.0, 39.4, DUROTAR },
					{ 56.4, 27.0, DUROTAR },
					{ 56.8, 21.6, DUROTAR },
				},
				groups = {
					i(204441, {	-- Rune of Blood Frenzy
						classes = { WARRIOR },
						groups = {
							recipe(403474),	-- Engrave Chest - Blood Frenzy
						},
					}),
				},
			})),
			n(5808, {	-- Warlord Kolkanis
				coords = {
					{ 46.6, 79.8, DUROTAR },
					{ 48.2, 78.2, DUROTAR },
					{ 49.6, 80.6, DUROTAR },
				},
			}),
			n(5809, {	-- Watch Commander Zalaphil
				coord = { 59.6, 59.0, DUROTAR },
			}),
		}),
		n(RIDING_TRAINER, {
			n(7953, {	-- Xar'Ti <Raptor Riding Trainer>
				coord = { 55.3, 75.5, DUROTAR },
				races = { ORC, TROLL, UNDEAD },

				-- Available to Trolls without faction requirements.
				minReputation = { FACTION_DARKSPEAR_TROLLS, EXALTED },
				OnInit = [[function(t)
					if _.RaceIndex == ]] .. TROLL .. [[ then
						t.minReputation = nil;
					end
					return t;
				end]],
				groups = {
					recipe(10861, {	-- Raptor Riding
						cost = 200000,
						lvl = 40,
					}),
				},
			}),
		}),
		n(TREASURES, {
			applyclassicphase(SOD_PHASE_ONE, n(204937, {	-- Adventurer's Spirit
				provider = { "n", 204827 },	-- Adventurer's Remains
				coord = { 48.0, 79.6, DUROTAR },
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
			o(3239, {	-- Benedict's Chest
				coord = { 59.3, 57.7, DUROTAR },
				cost = { { "i", 4882, 1 } },	-- Benedict's Key
				groups = {
					i(4881),	-- Aged Envelope
				},
			}),
			applyclassicphase(SOD_PHASE_ONE, i(206386, {	-- Galvanic Icon
				-- provider = { "o",  },	-- TODO: I don't have the objectID for this. It's called "Galvanic Icon" just like the item.
				description = "These are random spawn totems on the ground; listen for the lightning cast sound to help you pinpoint the location.",
				coords = {
					{ 38.01, 35.53, DUROTAR },
					{ 53.36, 50.48, DUROTAR },
					{ 51.78, 56.39, DUROTAR },
					{ 36.95, 45.53, DUROTAR },
					{ 56.53, 28.37, DUROTAR },
					{ 39.43, 50.06, DUROTAR },
					{ 54.07, 55.82, DUROTAR },
					{ 36.3, 9.8, DUROTAR },
					{ 37.5, 52.5, DUROTAR },
					{ 41.65, 55.98, DUROTAR },
					{ 37.99, 60.04, DUROTAR },
				},
				classes = { SHAMAN },
				groups = {
					recipe(410098),	-- Engrave Chest - Shield Mastery
				},
			})),
			applyclassicphase(SOD_PHASE_ONE, i(203993, {	-- Rune of Slaughter
				provider = { "o", 387466 },	-- Rusty Lockbox
				coord = { 53.8, 27.2, DUROTAR },
				classes = { ROGUE },
				groups = {
					recipe(424992),	-- Engrave Chest - Slaughter from the Shadows
				},
			})),
			applyclassicphase(SOD_PHASE_ONE, i(203991, {	-- Rune of Quick Draw
				provider = { "o", 386675 },	-- Buried Treasure
				coord = { 62.1, 94.8, DUROTAR },
				cost = { { "i", 207110, 1 } },	-- Durotar Treasure Map
				classes = { ROGUE },
				groups = {
					recipe(400095),	-- Engrave Chest - Quick Draw
				},
			})),
		}),
		n(VENDORS, {
			applyclassicphase(SOD_PHASE_ONE, n(208036, {	-- Ba'so
				coord = { 52.0, 58.4, DUROTAR },
				races = HORDE_ONLY,
				groups = {
					i(203990, {	-- Rune of Mutilation
						cost = { { "i", 207098, 1 } },	-- Note from Ba'so
						classes = { ROGUE },
						groups = {
							recipe(400094),	-- Engrave Gloves - Mutilate
						},
					}),
				},
			})),
			n(3881, {	-- Grimtak
				coords = {
					{ 51.2, 42.6, DUROTAR },
				},
				races = HORDE_ONLY,
				groups = {
					i(5483),	-- Recipe: Scorpid Surprise (RECIPE!)
				},
			}),
			applyclassicphase(SOD_PHASE_ONE, n(208184, {	-- Razzil <Snake Charmer>
				description = "Use the pheromone and tame an adder and then bring it to Razzil.",
				coord = { 52.2, 44.0, DUROTAR },
				cost = { { "i", 207631, 1 } },	-- Adder Pheromone
				crs = { 3300 },	-- Adder
				races = HORDE_ONLY,
				groups = {
					i(206032, {	-- Rune of Carve
						classes = { HUNTER },
						groups = {
							recipe(425758),	-- Engrave Gloves - Carve
						},
					}),
				},
			})),
			n(5942, {	-- Zansoa <Fishing Supplies>
				coords = {
					{ 56.0, 73.4, DUROTAR },
				},
				races = HORDE_ONLY,
				groups = {
					i(6368),	-- Recipe: Rainbow Fin Albacore (RECIPE!)
					i(6326),	-- Recipe: Slitherskin Mackerel (RECIPE!)
				},
			}),
			n(7952, {	-- Zjolnir <Raptor Handler>
				coord = { 55.2, 75.6, DUROTAR },
				-- Available to Trolls without faction requirements.
				minReputation = { FACTION_DARKSPEAR_TROLLS, EXALTED },
				OnInit = [[function(t)
					if _.RaceIndex == ]] .. TROLL .. [[ then
						t.minReputation = nil;
					end
					return t;
				end]],
				races = HORDE_ONLY,
				groups = {
					i(8588),	-- Emerald Raptor (MOUNT!)
					i(18788),	-- Swift Blue Raptor (MOUNT!)
					i(18789),	-- Swift Olive Raptor (MOUNT!)
					i(18790),	-- Swift Orange Raptor (MOUNT!)
					i(8591),	-- Turquoise Raptor (MOUNT!)
					i(8592),	-- Violet Raptor (MOUNT!)
					i(13317, {	-- Ivory Raptor (MOUNT!)
						timeline = { REMOVED_1_4_0 },
					}),
					i(8586, {	-- Mottled Red Raptor (MOUNT!)
						timeline = { REMOVED_1_4_0 },
					}),
				},
			}),
		}),
		n(ZONE_DROPS, {
			applyclassicphase(SOD_PHASE_ONE, i(207631, {	-- Adder Pheromone
				coords = {
					{ 43.2, 40.4, DUROTAR },
					{ 39.6, 52.6, DUROTAR },
					{ 50.6, 49.6, DUROTAR },
					{ 38.6, 55.0, DUROTAR },
				},
				classes = { HUNTER },
				crs = {
					3114,	-- Razormane Battleguard
					3111,	-- Razormane Quilboar
					3113,	-- Razormane Dustrunner
					3112,	-- Razormane Scout
					5824,	-- Captain Flat Tusk <Captain of the Battleguard>
					5826,	-- Geolord Mottle
				},
			})),
			i(4882, {	-- Benedict's Key
				cr = 3192,	-- Lieutenant Benedict
				coord = { 59.6, 58.2, DUROTAR },
			}),
			applyclassicphase(SOD_PHASE_ONE, i(207590, {	-- Durotar Pig Meat
				classes = { HUNTER },
				crs = {
					3099,	-- Dire Mottled Boar
					3100,	-- Elder Mottled Boar
					3225,	-- Corrupted Mottled Boar
				},
			})),
			applyclassicphase(SOD_PHASE_ONE, i(207733, {	-- Kul Tiran Skull
				coord = { 57.6, 55.4, DUROTAR },
				classes = { WARLOCK },
				crs = {
					3128,	-- Kul Tiras Sailor
					3129,	-- Kul Tiras Marine
				},
			})),
			applyclassicphase(SOD_PHASE_ONE, i(207732, {	-- Makrura Leg
				coords = {
					{ 53.8, 84.6, DUROTAR },
					{ 60.8, 74.8, DUROTAR },
					{ 61.6, 45.0, DUROTAR },
					{ 64.4, 92.4, DUROTAR },
				},
				classes = { WARLOCK },
				crs = {
					3103,	-- Makrura Clacker
					3104,	-- Makrura Shellhide
				},
			})),
			applyclassicphase(SOD_PHASE_ONE, i(205940, {	-- Memory of a Dark Purpose
				coord = { 59.2, 56.8, DUROTAR },
				classes = { PRIEST },
				races = HORDE_ONLY,
				crs = {
					3128,	-- Kul Tiras Sailor
					3129,	-- Kul Tiras Marine
				},
				groups = {
					recipe(425216),	-- Engrave Chest - Void Plague
				},
			})),
			applyclassicphase(SOD_PHASE_ONE, i(205945, {	-- Memory of an Imprisoned Savior
				description = "This can also drop from any of the rare mobs in the zone.",
				coord = { 67.6, 87.8, DUROTAR },
				classes = { PRIEST },
				cr = 3205,	-- Zalazane
				groups = {
					recipe(402854),	-- Engrave Pants - Shared Pain
				},
			})),
			applyclassicphase(SOD_PHASE_ONE, i(207731, {	-- Ominous Tome
				coord = { 67.4, 83.6, DUROTAR },
				classes = { WARLOCK },
				crs = {
					3206,	-- Voodoo Troll
					3207,	-- Hexed Troll
				},
			})),
			applyclassicphase(SOD_PHASE_ONE, i(205947, {	-- Prophecy of a Desecrated Citadel
				coords = {
					{ 43.0, 39.4, DUROTAR },
					{ 52.0, 21.6, DUROTAR },
					{ 67.2, 85.6, DUROTAR },
				},
				classes = { PRIEST },
				crs = {
					3113,	-- Razormane Dustrunner
					3118,	-- Dustwind Storm Witch
					3206,	-- Voodoo Troll
					3207,	-- Hexed Troll
				},
				groups = {
					recipe(402852),	-- Engrave Pants - Homunculi
				},
			})),
			applyclassicphase(SOD_PHASE_ONE, i(207062, {	-- Severed Centaur Head
				coord = { 51.2, 78.4, DUROTAR },
				classes = { WARRIOR },
				crs = {
					3119,	-- Kolkar Drudge
					3120,	-- Kolkar Outrunner
				},
			})),
			applyclassicphase(SOD_PHASE_ONE, i(206995, {	-- Severed Harpy Head
				coord = { 48.6, 32.4, DUROTAR },
				classes = { WARRIOR },
				crs = {
					3116,	-- Dustwind Pillager
					3115,	-- Dustwind Harpy
					3117,	-- Dustwind Savage
					3118,	-- Dustwind Storm Witch
				},
			})),
			applyclassicphase(SOD_PHASE_ONE, i(206994, {	-- Severed Quilboar Head
				coord = { 50.0, 49.6, DUROTAR },
				classes = { WARRIOR },
				crs = {
					3112,	-- Razormane Scout
					3111,	-- Razormane Quilboar
					3114,	-- Razormane Battleguard
					3113,	-- Razormane Dustrunner
				},
			})),
			i(5466, {	-- Scorpid Stinger
				maps = { DUROTAR },
				crs = {
					3126,	-- Armoured Scorpid
					3125,	-- Clattering Scorpid
					3226,	-- Corrupted Scorpid
					5823,	-- Death Flayer
					3127,	-- Venomtail Scorpid
				},
				description = "Only drops from scorpids in Durotar, excluding Echo Isles and Valley of Trials."
			}),
			applyclassicphase(SOD_PHASE_ONE, i(203752, {	-- Spell Notes: MILEGIN VALF
				coords = {
					{ 53.0, 27.6, DUROTAR },
					{ 53.8, 9.6, DUROTAR },
					{ 42.8, 26.4, DUROTAR },
				},
				classes = { MAGE },
				crs = {
					3196,	-- Burning Blade Neophyte
					3195,	-- Burning Blade Thug
					3197,	-- Burning Blade Fanatic
					3198,	-- Burning Blade Apprentice
					3199,	-- Burning Blade Cultist
				},
			})),
			applyclassicphase(SOD_PHASE_ONE, i(203753, {	-- Spell Notes: RING SEFF OSTROF
				description = "This can also drop from any of the rare mobs in the zone.",
				coord = { 67.6, 87.8, DUROTAR },
				classes = { MAGE },
				cr = 3205,	-- Zalazane
			})),
		}),
	},
});

