--------------------------------------------
--     H O L I D A Y S  M O D U L E       --
--------------------------------------------
root(ROOTS.Holidays, applyevent(EVENTS.HALLOWS_END, n(createHeader({
	readable = "Hallow's End",
	constant = "HALLOWS_END_HEADER",
	icon = [[~_.asset("Holiday_hallows_end")]],
	eventID = EVENTS.HALLOWS_END,
	eventSchedule = {
		1,	-- Recurring
		10, 18, 10, 0,	-- 10/18 at 10:00 AM
		11, 1, 11, 0	-- 11/01 at 11:00 AM
	},
	text = {
		en = "Hallow's End",
		de = "Schlotternächte",
		es = "Halloween",
		mx = "Halloween",
		fr = "Sanssaint",
		it = "Veglia delle Ombre",
		ko = "할로윈 축제",
		pt = "Noturnália",
		ru = "Тыквовин",
		cn = "万圣节",
		tw = "萬鬼節",
	},
}), {
	timeline = { TIMELINE.ADDED_1_60_1 },
	groups = {
		n(QUESTS, {
			q(1658, {	-- Crashing the Wickerman Festival
				qg = 15199,	-- Sergeant Hartman
				coord = { 50.0, 57.2, MAP.HILLSBRAD_FOOTHILLS },
				maps = { MAP.SILVERPINE_FOREST, MAP.TIRISFAL_GLADES },
				races = ALLIANCE_ONLY,
				lvl = 25,
				isYearly = true,
				groups = {
					objective(1, {	-- Scout out the Forsaken's Wickerman Festival.
						provider = { "o", 181672 },	-- Wickerman Effigy
						coord = { 56.0, 69.0, MAP.TIRISFAL_GLADES },
					}),
					i(20557),	-- Hallow's End Pumpkin Treat
				},
			}),
			q(8311, {	-- Hallow's End Treats for Jesper!
				qg = 15310,	-- Jesper
				coord = { 56.6, 51.8, MAP.STORMWIND_CITY },
				maxReputation = { 469, EXALTED },	-- Alliance, Exalted.
				races = ALLIANCE_ONLY,
				lvl = 10,
				isYearly = true,
				groups = {
					q(8356, {	-- Flexing for Nougat (Alliance)
						qg = 6740,	-- Innkeeper Allison <Innkeeper>
						coord = { 60.6, 75.0, MAP.STORMWIND_CITY },
						races = ALLIANCE_ONLY,
						repeatable = true,
						groups = {
							objective(1, {	-- 0/1 Stormwind Nougat
								questID = 8311,	-- Hallow's End Treats for Jesper!
								provider = { "i", 20492 },	-- Stormwind Nougat (QI!)
							}),
						},
					}),
					q(8355, {	-- Incoming Gumdrop (Alliance)
						qg = 6826,	-- Talvash del Kissel
						coord = { 36.0, 4.0, MAP.IRONFORGE },
						races = ALLIANCE_ONLY,
						repeatable = true,
						groups = {
							objective(2, {	-- 0/1 Gnomeregan Gumdrop
								questID = 8311,	-- Hallow's End Treats for Jesper!
								provider = { "i", 20494 },	-- Gnomeregan Gumdrop (QI!)
							}),
						},
					}),
					q(8353, {	-- Chicken Clucking for a Mint (Alliance)
						qg = 5111,	-- Innkeeper Firebrew <Innkeeper>
						coord = { 18.6, 51.4, MAP.IRONFORGE },
						races = ALLIANCE_ONLY,
						repeatable = true,
						groups = {
							objective(3, {	-- 0/1 Ironforge Mint
								questID = 8311,	-- Hallow's End Treats for Jesper!
								provider = { "i", 20490 },	-- Ironforge Mint (QI!)
							}),
						},
					}),
					q(8357, {	-- Dancing for Marzipan (Alliance)
						qg = 6735,	-- Innkeeper Saelienne <Innkeeper>
						coord = { 67.2, 15.8, MAP.DARNASSUS },
						races = ALLIANCE_ONLY,
						repeatable = true,
						groups = {
							objective(4, {	-- 0/1 Darnassus Marzipan
								questID = 8311,	-- Hallow's End Treats for Jesper!
								provider = { "i", 20496 },	-- Darnassus Marzipan (QI!)
							}),
						},
					}),
					i(20557),	-- Hallow's End Pumpkin Treat
				},
			}),
			q(8312, {	-- Hallow's End Treats for Spoops!
				qg = 15309,	-- Spoops
				coord = { 71.2, 22.8, MAP.ORGRIMMAR },
				maxReputation = { 67, EXALTED },	-- Horde, Exalted.
				races = HORDE_ONLY,
				lvl = 10,
				isYearly = true,
				groups = {
					q(8359, {	-- Flexing for Nougat (Horde)
						qg = 6929,	-- Innkeeper Gryshka <Innkeeper>
						coord = { 54.2, 68.4, MAP.ORGRIMMAR },
						races = HORDE_ONLY,
						repeatable = true,
						groups = {
							objective(1, {	-- 0/1 Orgrimmar Nougat
								questID = 8312,	-- Hallow's End Treats for Spoops!
								provider = { "i", 20493 },	-- Orgrimmar Nougat (QI!)
							}),
						},
					}),
					q(8358, {	-- Incoming Gumdrop (Horde)
						qg = 11814,	-- Kali Remik
						coord = { 56.2, 74.2, MAP.DUROTAR },
						races = HORDE_ONLY,
						repeatable = true,
						groups = {
							objective(2, {	-- 0/1 Darkspear Gumdrop
								questID = 8312,	-- Hallow's End Treats for Spoops!
								provider = { "i", 20495 },	-- Darkspear Gumdrop (QI!)
							}),
						},
					}),
					q(8354, {	-- Chicken Clucking for a Mint (Horde)
						qg = 6741,	-- Innkeeper Norman <Innkeeper>
						coord = { 67.8, 38.6, MAP.UNDERCITY },
						races = HORDE_ONLY,
						repeatable = true,
						groups = {
							objective(3, {	-- 0/1 Undercity Mint
								questID = 8312,	-- Hallow's End Treats for Spoops!
								provider = { "i", 20491 },	-- Undercity Mint (QI!)
							}),
						},
					}),
					q(8360, {	-- Dancing for Marzipan (Horde)
						qg = 6746,	-- Innkeeper Pala <Innkeeper>
						coord = { 45.8, 64.4, MAP.THUNDER_BLUFF },
						races = HORDE_ONLY,
						repeatable = true,
						groups = {
							objective(4, {	-- 0/1 Thunder Bluff Marzipan
								questID = 8312,	-- Hallow's End Treats for Spoops!
								provider = { "i", 20497 },	-- Thunder Bluff Marzipan (QI!)
							}),
						},
					}),
					i(20557),	-- Hallow's End Pumpkin Treat
				},
			}),
			q(8322, {	-- Rotten Eggs
				qg = 15197,	-- Darkcaller Yanka
				coords = {
					{ 55.6, 69.9, MAP.TIRISFAL_GLADES },
					{ 51.4, 59.0, MAP.HILLSBRAD_FOOTHILLS },
				},
				cost = { { "i", 20605, 1 } },	-- 1x Rotten Eggs (QI!)
				races = HORDE_ONLY,
				lvl = 30,
				isYearly = true,
			}),
			q(8409, {	-- Ruined Kegs
				sourceQuest = 8322,	-- Rotten Eggs
				provider = { "o", 180570 },	-- Keg
				coord = { 51.4, 59.0, MAP.HILLSBRAD_FOOTHILLS },
				races = HORDE_ONLY,
				lvl = 30,
				isYearly = true,
				groups = {
					i(20557),	-- Hallow's End Pumpkin Treat
				},
			}),
			q(1657, {	-- Stinking Up Southshore
				qg = 15197,	-- Darkcaller Yanka
				coord = { 55.6, 69.9, MAP.TIRISFAL_GLADES },
				maps = { MAP.HILLSBRAD_FOOTHILLS },
				races = HORDE_ONLY,
				lvl = 25,
				isYearly = true,
				groups = {
					objective(1, {	-- Toss Stink Bomb into Southshore
						provider = { "i", 20387 },	-- Forsaken Stink Bomb Cluster (QI!)
						coord = { 49.8, 57.9, MAP.HILLSBRAD_FOOTHILLS },
					}),
					i(20557),	-- Hallow's End Pumpkin Treat
				},
			}),
			q(8373, {	-- The Power of Pine
				qg = 15199,	-- Sergeant Hartman
				coord = { 50.0, 57.2, MAP.HILLSBRAD_FOOTHILLS },
				races = ALLIANCE_ONLY,
				lvl = 25,
				isYearly = true,
				groups = {
					objective(1, {	-- Clean up a stink bomb that's been dropped on Southshore!
						provider = { "i", 20604 },	-- Stink Bomb Cleaner (QI!)
					}),
					i(20557),	-- Hallow's End Pumpkin Treat
				},
			}),
		}),
		n(REWARDS, {
			i(20393, {	-- Treat Bag
				description = "Get this by Trick or Treating at any Innkeeper.",
				sym = {
					{ "selectparent" },	-- Select the "Rewards" header.
					{ "pop" },	-- Get the Rewards.
					{ "exclude", "itemID", 20393, 37586, 34077 },	-- Treat Bag & Crudely Wrapped Gift
					{ "select", "itemID", 33292, 33154 },	-- Hallowed Helm & Sinister Squashling
				},
			}),
			i(20390),	-- Candy Bar
			i(20389),	-- Candy Corn
			i(20388),	-- Lollipop
			i(20410),	-- Hallowed Wand - Bat
			i(20409),	-- Hallowed Wand - Ghost
			i(20399),	-- Hallowed Wand - Leper Gnome
			i(20398),	-- Hallowed Wand - Ninja
			i(20397),	-- Hallowed Wand - Pirate
			i(20413),	-- Hallowed Wand - Random
			i(20411),	-- Hallowed Wand - Skeleton
			i(20414),	-- Hallowed Wand - Wisp
			i(20562),	-- Flimsy Female Dwarf Mask
			i(20561),	-- Flimsy Male Dwarf Mask
			i(20392),	-- Flimsy Female Gnome Mask
			i(20391),	-- Flimsy Male Gnome Mask
			i(20565),	-- Flimsy Female Human Mask
			i(20566),	-- Flimsy Male Human Mask
			i(20563),	-- Flimsy Female Night Elf Mask
			i(20564),	-- Flimsy Male Night Elf Mask
			i(20569),	-- Flimsy Female Orc Mask
			i(20570),	-- Flimsy Male Orc Mask
			i(20571),	-- Flimsy Female Tauren Mask
			i(20572),	-- Flimsy Male Tauren Mask
			i(20567),	-- Flimsy Female Troll Mask
			i(20568),	-- Flimsy Male Troll Mask
			i(20574),	-- Flimsy Female Undead Mask
			i(20573),	-- Flimsy Male Undead Mask
		}),
		n(TREASURES, {
			o(180523, {	-- Apple Bob
				i(20516),	-- Bobbing Apple
			}),
		}),
		n(ZONE_DROPS, {
			i(20400),	-- Pumpkin Bag
		}),
	},
})));
