---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, {
	m(BROKEN_ISLES, {
		m(BROKEN_SHORE, {
			n(RARES, {
				header(HEADERS.Achievement, 11841, {	-- Naxt Victim
					["description"] = "Each different Sentinax Beacon summons mobs that drop additional Sentinax Beacons for that specific Beacon and ultimately the Portal Stone (boss).\n\nYou get the Uncommon (green quality) Sentinax Beacons from the standard mobs in the area, you then need to farm the mobs that come out of the Sentinax Portal until they drop a Rare (blue quality) Sentinax Beacon and use it to empower the portal, it is only after this that the Portal Stone can drop. Keep using all the Rare Sentinax Beacons you get to extend the duration of the Sentinax Beacon.",
					["groups"] = {
						n(120675, {	-- An'thyna <Venom Queen>
							["provider"] = {"i",146919},	-- Portal-Stone: An'thyna
						}),
						n(120681, {	-- Fel Obliterator
							["provider"] = {"i",146920},	-- Portal-Stone: Fel Obliterator
						}),
						n(120665, {	-- Force-Commander Xillious
							["provider"] = {"i",146918},	-- Portal-Stone: Force-Commander Xillious
						}),
						n(120686, {	-- Illisthyndria <Keeper of Knives>
							["provider"] = {"i",146921},	-- Portal-Stone: Illisthyndria
						}),
						n(120641, {	-- Skulguloth
							["provider"] = {"i",146917},	-- Portal-Stone: Skulguloth
						}),
						n(120583, {	-- Than'otalion
							["provider"] = {"i",146916},	-- Portal-Stone: Than'otalion
						}),
					},
				}),
				n(121016, {	-- Aqueux
					["questID"] = 46953,	-- Rare Elite 18
					["isDaily"] = true,
					["coord"] = { 51.9, 78.2, BROKEN_SHORE },
				}),
				n(121029, {	-- Brood Mother Nix
					["questID"] = 46965,	-- Rare Elite 19
					["isDaily"] = true,
					["coord"] = { 39.6, 28.9, BROKEN_SHORE },
				}),
				n(121046, {	-- Brother Badatin
					["questID"] = 47001,	-- Rare Elite 21
					["isDaily"] = true,
					["coord"] = { 78.0, 39.0, BROKEN_SHORE },
				}),
				n(116953, {	-- Corrupted Bonebreaker
					["questID"] = 46101,	-- Rare Elite 12
					["isDaily"] = true,
					["coord"] = { 60.0, 53.0, BROKEN_SHORE },
				}),
				n(117136, {	-- Doombringer Zar'thoz
					["questID"] = 46097,	-- Rare Elite 08
					["isDaily"] = true,
					["coord"] = { 49.0, 38.0, BROKEN_SHORE },
				}),
				n(117095, {	-- Dreadblade Annihilator
					["questID"] = 46098,	-- Rare Elite 09
					["isDaily"] = true,
					["coord"] = { 57.8, 30.1, BROKEN_SHORE },
				}),
				n(118993, {	-- Dreadeye
					["questID"] = 46202,	-- Rare Elite 14
					["isDaily"] = true,
					["coord"] = { 41.0, 79.0, BROKEN_SHORE },
				}),
				n(121134, {	-- Duke Sithizi
					["questID"] = 47036,	-- Rare Elite 24
					["isDaily"] = true,
					["coord"] = { 78.1, 27.9, BROKEN_SHORE },
				}),
				n(117086, {	-- Emberfire
					["questID"] = 46093,	-- Rare Elite 04
					["isDaily"] = true,
					["coord"] = { 51.0, 45.0, BROKEN_SHORE },
				}),
				n(116166, {	-- Eye of Gurgh
					["questID"] = 47068,	-- Rare Elite 25
					["isDaily"] = true,
					["coord"] = { 67.0, 35.0, BROKEN_SHORE },
				}),
				n(117093, {	-- Felbringer Xar'thok
					["questID"] = 46099,	-- Rare Elite 10
					["isDaily"] = true,
					["coord"] = { 58.3, 49.6, BROKEN_SHORE },
				}),
				n(117103, {	-- Felcaller Zelthae
					["questID"] = 46102,	-- Rare Elite 13
					["isDaily"] = true,
					["coord"] = { 88.3, 29.8, BROKEN_SHORE },
				}),
				n(117091, {	-- Felmaw Emberfiend
					["questID"] = 46095,	-- Rare Elite 06
					["isDaily"] = true,
					["coord"] = { 39.0, 42.0, BROKEN_SHORE },
				}),
				n(120998, {	-- Flllurlokkr
					["questID"] = 46951,	-- Rare Elite 17
					["isDaily"] = true,
					["coord"] = { 39.5, 60.0, BROKEN_SHORE },
				}),
				n(121037, {	-- Grossir
					["questID"] = 46995,	-- Rare Elite 20
					["isDaily"] = true,
					["coord"] = { 77.8, 23.9, BROKEN_SHORE },
				}),
				n(119718, {	-- Imp Mother Bruva
					["questID"] = 46313,	-- Rare Elite 16
					["isDaily"] = true,
					["coord"] = { 61.0, 44.0, BROKEN_SHORE },
				}),
				n(117089, {	-- Inquisitor Chillbane
					["questID"] = 46096,	-- Rare Elite 07
					["isDaily"] = true,
					["coord"] = { 61.1, 39.5, BROKEN_SHORE },
				}),
				n(121107, {	-- Lady Eldrathe
					["questID"] = 47026,	-- Rare Elite 22
					["isDaily"] = true,
					["coord"] = { 41.0, 16.0, BROKEN_SHORE },
				}),
				n(119629, {	-- Lord Hel'Nurath
					["questID"] = 46304,	-- Rare Elite 15
					["isDaily"] = true,
					["coord"] = { 45.0, 51.3, BROKEN_SHORE },
					["groups"] = {
						i(142233, {	-- Netherlord's Accursed Wrathsteed (MOUNT!)
							["description"] = "This mount is only available to warlocks who have completed |cFFFFD700The Wrathsteed of Xoroth|r quest from the class mount campaign. \nOnce completed you can kill Lord Hel'Nurath for a 100% chance at getting the mount skin.",
							["classes"] = { WARLOCK },
							["sourceQuests"] = { 46243 },	-- The Wrathsteed of Xoroth
						}),
					},
				}),
				n(117141, {	-- Malgrazoth
					["questID"] = 46090,	-- Rare Elite 01
					["isDaily"] = true,
					["coord"] = { 56.0, 27.3, BROKEN_SHORE },
				}),
				n(117094, {	-- Malorus the Soulkeeper
					["questID"] = 46092,	-- Rare Elite 03
					["isDaily"] = true,
					["coord"] = { 42.0, 42.0, BROKEN_SHORE },
				}),
				n(117096, {	-- Potionmaster Gloop
					["questID"] = 46094,	-- Rare Elite 05
					["isDaily"] = true,
					["coord"] = { 55.3, 56.7, BROKEN_SHORE },
				}),
				n(117140, {	-- Salethan the Broodwalker
					["questID"] = 46091,	-- Rare Elite 02
					["isDaily"] = true,
					["coord"] = { 65.0, 30.0, BROKEN_SHORE },
				}),
				n(121112, {	-- Somber Dawn
					["questID"] = 47028,	-- Rare Elite 23
					["isDaily"] = true,
					["coord"] = { 32.0, 60.0, BROKEN_SHORE },
				}),
				n(117090, {	-- Xorogun the Flamecarver
					["questID"] = 46100,	-- Rare Elite 11
					["isDaily"] = true,
					["coord"] = { 49.2, 48.4, BROKEN_SHORE },
				}),
			}),
		}),
	}),
});
