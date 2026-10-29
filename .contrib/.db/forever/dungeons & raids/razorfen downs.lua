-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
instanceroot(233, {	-- Razorfen Downs
	lore = "Crafted from the same mighty vines as Razorfen Kraul, Razorfen Downs is the traditional capital city of the quillboar race. The sprawling, thorn-ridden labyrinth houses a veritable army of loyal quillboar as well as their high priests - the Death's Head tribe. Recently, however, a looming shadow has fallen over the crude den. Agents of the undead Scourge - led by the lich, Amnennar the Coldbringer - have taken control over the quillboar race and turned the maze of thorns into a bastion of undead might. Now the quillboar fight a desperate battle to reclaim their beloved city before Amnennar spreads his control across the Barrens.",
	icon = 136352,
	zoneTextAreaID = 722,	-- Razorfen Downs
	mapID = MAP.RAZORFEN_DOWNS,
	coord = { 50.0, 92.0, MAP.THE_BARRENS },
	lvl = 35,
	groups = {
		n(QUESTS, {
			q(6626, {	-- A Host of Evil
				qg = 12866,	-- Myriam Moonsinger
				coord = { 49.0, 94.0, MAP.THE_BARRENS },
				lvl = 28,
				groups = {
					objective(1, {	-- 0/8 Razorfen Battleguard slain
						provider = { "n", 7873 },	-- Razorfen Battleguard
					}),
					objective(2, {	-- 0/8  slain
						provider = { "n", 7874 },	-- Razorfen Thornweaver
					}),
					objective(3, {	-- 0/8 Death's Head Cultist slain
						provider = { "n", 7872 },	-- Death's Head Cultist
					}),
				},
			}),
			q(6521, {	-- An Unholy Alliance (2/2)
				sourceQuest = 6522,	-- An Unholy Alliance (1/2)
				provider = { "n", 2425 },	-- Varimathras
				coord = { 56.3, 92.2, MAP.UNDERCITY },
				maps = { MAP.THE_BARRENS },
				races = HORDE_ONLY,
				lvl = 28,
				groups = {
					objective(1, {	-- 0/1 Ambassador Malcin's Head
						provider = { "i", 17009 },	-- Ambassador Malcin's Head
						coord = { 48.6, 95.6, MAP.THE_BARRENS },
						cr = 12865,	-- Ambassador Malcin
					}),
					i(17039),	-- Skullbreaker
					i(17042),	-- Nail Spitter
					i(17043),	-- Zealot's Robe
					i(270054, {	-- Cultist's Chestguard
						timeline = { TIMELINE.ADDED_1_60_1 },
					}),
				},
			}),
			q(3341, {	-- Bring the End
				qg = 2308,	-- Andrew Brownell
				coord = { 74.0, 32.8, MAP.UNDERCITY },
				races = HORDE_ONLY,
				lvl = 37,
				groups = {
					objective(1, {	-- 0/1 Skull of the Coldbringer
						provider = { "i", 10420 },	-- Skull of the Coldbringer
					}),
					i(10823),	-- Vanquisher's Sword
					i(10824),	-- Amberglow Talisman
				},
			}),
			q(3636, {	-- Bring the Light
				qg = 1284,	-- Archbishop Benedictus
				coord = { 39.6, 27.4, MAP.STORMWIND_CITY },
				races = ALLIANCE_ONLY,
				lvl = 39,
				groups = {
					objective(1, {	-- 0/1 Amnennar the Coldbringer slain
						provider = { "n", 7358 },	-- Amnennar the Coldbringer
					}),
					i(10823),	-- Vanquisher's Sword
					i(10824),	-- Amberglow Talisman
				},
			}),
			q(3525, {	-- Extinguishing the Idol
				sourceQuest = 3523,	-- Scourge of the Downs
				providers = {
					{ "n",   8516 },	-- Belnistrasz
					{ "o", 152097 },	-- Belnistrasz's Brazier
				},
				lvl = 32,
				groups = {
					i(10710),	-- Dragonclaw Ring
				},
			}),
			q(3523, {	-- Scourge of the Downs
				providers = {
					{ "n", 8516 },	-- Belnistrasz
					{ "i", 10682 },	-- Belnistrasz's Oathstone
				},
				lvl = 32,
			}),
		}),
		n(ZONE_DROPS, {
			i(3172, {	-- Boar Intestines
				crs = {
					7333,	-- Withered Battle Boar
					7334,	-- Battle Boar Horror
				},
			}),
			i(10573),	-- Boneslasher
			i(10582),	-- Briar Tredders
			i(10574),	-- Corpseshroud
			i(10581),	-- Death's Head Vestment
			i(10571),	-- Ebony Boneclub
			i(10572),	-- Freezing Shard
			i(10570),	-- Manslayer
			i(10567),	-- Quillshooter
			i(10583),	-- Quillward Harness
			i(10584),	-- Stormgale Fists
			i(10578),	-- Thoughtcast Boots
		}),
		n(7895, {	-- Ambassador Bloodrage
			description = "This is a rare that is not always present.",
			coords = {
				{ 46.2, 87.4, MAP.THE_BARRENS },
				{ 48.0, 90.4, MAP.THE_BARRENS },
				{ 48.6, 95.6, MAP.THE_BARRENS },
			},
			groups = {
				i(286639, {	-- Ambassador's Bloodrobes
					timeline = { TIMELINE.ADDED_1_60_1 },
				}),
			},
		}),
		n(7355, {	-- Tuten'kash
			i(10776),	-- Silky Spider Cape
			i(10775),	-- Carapace of Tuten'kash
			i(10777),	-- Arachnid Gloves
		}),
		n(7356, {	-- Plaguemaw the Rotting
			sourceQuest = 3525,	-- Extinguishing the Idol
			groups = {
				i(10766),	-- Plaguerot Sprig
				i(10760),	-- Swine Fists
			},
		}),
		n(8696, {	-- Henry Stern
			description = "The only source of acquiring Goldthorn Tea.",
			groups = {
				recipe(130289),	-- Goldthorn Tea
			},
		}),
		n(7357, {	-- Mordresh Fire Eye
			i(10770),	-- Mordresh's Lifeless Skull
			i(10769),	-- Glowing Eye of Mordresh
			i(10771),	-- Deathmage Sash
		}),
		n(8567, {	-- Glutton
			i(10772),	-- Glutton's Cleaver
			i(10774),	-- Fleshhide Shoulders
		}),
		n(7354, {	-- Ragglesnout
			description = "This is a rare spawn that is not always present.",
			groups = {
				i(10758),	-- X'caliboar
				i(10767),	-- Savage Boar's Guard
				i(10768),	-- Boar Champion's Belt
			},
		}),
		n(7358, {	-- Amnennar the Coldbringer
			i(10420),	-- Skull of the Coldbringer
			i(10761),	-- Coldrage Dagger
			i(10763),	-- Icemetal Barbute
			i(10764),	-- Deathchill Armor
			i(10762),	-- Robes of the Lich
			i(10765),	-- Bonefingers
		}),
	},
});