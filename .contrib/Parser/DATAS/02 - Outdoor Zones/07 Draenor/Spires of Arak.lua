---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

local COMMON_TREASURE_SYM = {{"select","itemID",
	-- Weapons
	116593,	-- Bloodmane Axe
	116595,	-- Bloodmane Bow
	116594,	-- Bloodmane Broadaxe
	116596,	-- Bloodmane Crossbow
	116597,	-- Bloodmane Dagger
	116608,	-- Bloodmane Greatsword
	116600,	-- Bloodmane Gun
	116603,	-- Bloodmane Hammer
	116599,	-- Bloodmane Knuckles
	116601,	-- Bloodmane Mace
	116604,	-- Bloodmane Spear
	116605,	-- Bloodmane Staff
	116606,	-- Bloodmane Staff
	116607,	-- Bloodmane Sword
	116718,	-- Ruhkmari Bowl
	116602,	-- Ruhkmari Scepter
	116598,	-- Ruhkmari Spellblade
	116609,	-- Ruhkmari Wand
	106661,	-- Talon Guard Shield
	-- Head
	106667,	-- Breezestrider Hood
	106683,	-- Snarlthorn Helm
	106657,	-- Talon Guard Helm
	106672,	-- Windswept Cowl
	-- Neck
	116685,	-- Ruhkmari Amulet
	-- Shoulders
	106669,	-- Breezestrider Shoulders
	106685,	-- Snarlthorn Spaulders
	106659,	-- Talon Guard Pauldrons
	106677,	-- Windswept Shoulderpads
	-- Back
	116717,	-- Ruhkmari Cloak
	-- Chest
	106668,	-- Breezestrider Jerkin
	106686,	-- Snarlthorn Vest
	106654,	-- Talon Guard Breastplate
	106675,	-- Windswept Robe
	-- Wrist
	106663,	-- Breezestrider Bindings
	106680,	-- Snarlthorn Bracers
	106662,	-- Talon Guard Vambraces
	106678,	-- Windswept Wristwraps
	-- Hands
	106666,	-- Breezestrider Gloves
	106681,	-- Snarlthorn Gauntlets
	106655,	-- Talon Guard Gauntlets
	106673,	-- Windswept Handwraps
	-- Waist
	106670,	-- Breezestrider Waistband
	106679,	-- Snarlthorn Belt
	106656,	-- Talon Guard Girdle
	106671,	-- Windswept Cord
	-- Legs
	106665,	-- Breezestrider Britches
	106684,	-- Snarlthorn Legguards
	106658,	-- Talon Guard Legplates
	106674,	-- Windswept Leggings
	-- Feet
	106664,	-- Breezestrider Boots
	106682,	-- Snarlthorn Greaves
	106660,	-- Talon Guard Sabatons
	106676,	-- Windswept Sandals
	-- Finger
	116719,	-- Ruhkmari Ring
	-- Junkbox
	116920,	-- True Steel Lockbox
}};

root(ROOTS.Zones, {
	m(DRAENOR, {
		m(SPIRES_OF_ARAK, {
			["lore"] = "Spires of Arak is a zone in southern Draenor. Previously known only as Arak, it once contained a single massive spire that dominated the forested landscape, before it was sundered by the destruction of the Apexis' Breath of Rukhmar. It is the homeland of arakkoa, who rule over the land from the Skyreach, a majestic palace situated atop the largest spire in the area. Their society, however underwent a great schism between the winged arakkoa and the wingless, who are considered lesser beings by their winged brethren. Many of the wingless arakkoa flee the Spires and pour into Talador, while the Iron Horde's Shattered Hand clan strengthens their presence. Many Azerothians also have built their bases along the coast, such as the Steamwheedle Cartel or the Alliance expedition led by Admiral Taylor.",
			["icon"] = 1060981,
			["groups"] = {
				n(ACHIEVEMENTS, {
					ach(9605, {	-- Arak Star
						["sym"] = {{ "achievement_criteria" }},
					}),
					ach(9433),		-- A-VOID-ance
					ach(9469),		-- Arakkoa Outcasts
					ach(8925, {	-- Between Arak and a Hard Place (Alliance)
						["description"] = "Completing the Achievement will allow you to buy 'Spires of Arak Treasure Map' from Grakis in Stormshield.",
						["races"] = ALLIANCE_ONLY,
						["sym"] = {{ "achievement_criteria" }},
						["groups"] = { follower(218) },	-- Talonpriest Ishaal
					}),
					ach(8926, {	-- Between Arak and a Hard Place (Horde)
						["description"] = "Completing the Achievement will allow you to buy 'Spires of Arak Treasure Map' from Srikka in Warspear.",
						["races"] = HORDE_ONLY,
						["sym"] = {{ "achievement_criteria" }},
						["groups"] = { follower(218) },	-- Talonpriest Ishaal
					}),
					ach(9612),		-- Eggs in One Basket
					ach(8941),		-- Explore Spires of Arak
					ach(9613),		-- Fish Gotta Swim, Birds Gotta Eat
					ach(9601, {		-- King of the Monsters (Lost Veil Anzu)
						["sym"] = {{ "achievement_criteria" }},
					}),
					ach(9072, {	-- Mantle of the Talon King
						["sourceQuest"] = 37177,	-- Call of the Talon King
						["groups"] = {
							-- title_gendered(278, 279),	-- Talon King / Talon Queen
							title_male(278),	-- Talon King <Name>
							title_female(279),	-- Talon Queen <Name>
							follower(224),	-- Talon Guard Kurekk
						},
					}),
					ach(9600, {		-- Monster Mash (Lost Veil Anzu)
						["sym"] = {{ "achievement_criteria" }},
					}),
				}),
				petbattle(filter(BATTLE_PETS, {
					["sym"] = {{"select","speciesID",
						635,	-- Adder (PET!)
						407,	-- Forest Spiderling (PET!)
						1441,	-- Mud Jumper (PET!)
						417,	-- Rat (PET!)
						1587,	-- Royal Moth (PET!)
						379,	-- Squirrel (PET!)
						401,	-- Strand Crab (PET!)
						1593,	-- Waterfly (PET!)
						1582,	-- Zangar Crawler (PET!)
					}},
					["groups"] = {
						pet(1462),	-- Bloodsting Wasp (PET!)
						pet(1573),	-- Golden Dawnfeather (PET!)
						pet(1592, {	-- Sapphire Firefly (PET!)
							["description"] = "Only one is up at a time. Once captured or killed, it immediately respawns.",
							["coords"] = {
								{ 37.8, 41.8, SPIRES_OF_ARAK },
								{ 45.0, 35.0, SPIRES_OF_ARAK },
								{ 45.6, 62.4, SPIRES_OF_ARAK },
								{ 46.0, 48.4, SPIRES_OF_ARAK },
								{ 49.6, 50.8, SPIRES_OF_ARAK },
								{ 53.0, 70.6, SPIRES_OF_ARAK },
								{ 55.6, 32.4, SPIRES_OF_ARAK },
								{ 56.6, 42.0, SPIRES_OF_ARAK },
								{ 57.8, 51.0, SPIRES_OF_ARAK },
								{ 59.0, 68.6, SPIRES_OF_ARAK },
							},
						}),
						pet(568, {	-- Silkbead Snail (PET!)
							["coord"] = { 48.8, 45.4, SPIRES_OF_ARAK },
						}),
						pet(1590),	-- Swamplighter Firefly (PET!)
						pet(1456),	-- Thicket Skitterer (PET!)
					},
				})),
				explorationHeader({
					visit_exploration(7222,{coord={36.4,56.7,SPIRES_OF_ARAK}}),	-- Admiral Taylor's Farm
					exploration(6999),	-- Admiral Taylor's Garrison
					exploration(7199),	-- Apexis Excavation
					exploration(7197),	-- Axefall
					exploration(7317),	-- Bladefist Hold
					exploration(7277),	-- Bloodmane Pridelands
					exploration(7140),	-- Bloodmane Valley
					exploration(7126),	-- Camp Thornscar
					visit_exploration(7111,{coord={51.7,31.2,SPIRES_OF_ARAK}}),	-- Crow's Crook
					exploration(7034),	-- Dreadtalon Peak
					visit_exploration(7440,{coord={72.4,53.1,SPIRES_OF_ARAK}}),	-- Echidnean Shelf
					exploration(7276, {	-- Forlorn Delta
						-- CRIEVE NOTE: I was initially able to collect this, but if you collect Pinchwhistle Gearworks, it gets masked behind it.
						["collectible"] = false,
					}),
					exploration(7308),	-- Harvesting Pits
					exploration(7046),	-- Lost Veil Anzu
					exploration(7272),	-- Murkbog
					exploration(7142),	-- Nest of the Ravenspeakers
					exploration(7162),	-- Pinchwhistle Gearworks
					exploration(7163),	-- Pinchwhistle Point
					exploration(7035),	-- Ravenskar
					exploration(7145),	-- Sethekk Hollow
					visit_exploration(7302,{coord={54.7,21.8,SPIRES_OF_ARAK}}),	-- Shadow's Vigil
					exploration(7125),	-- Shadowglade
					exploration(7031),	-- Skettis
					exploration(7316),	-- Skettis
					exploration(7198),	-- Southport
					visit_exploration(7016,{coord={52.0,18.6,SPIRES_OF_ARAK}}),	-- Spires of Arak
					exploration(7182),	-- Talon Altar
					visit_exploration(7180,{coord={62.0,42.5,SPIRES_OF_ARAK}}),	-- Talon Watch
					visit_exploration(7093,{coord={39.8,20.3,SPIRES_OF_ARAK}}),	-- Terokkar Pass
					exploration(7305),	-- Terrace of Dawn
					exploration(7147),	-- The Broken Spire
					visit_exploration(7445,{coord={66.8,61.6,SPIRES_OF_ARAK}}),	-- The Evanescent Sea
					exploration(7270),	-- The Howling Crag
					visit_exploration(7449,{coord={30.0,32.7,SPIRES_OF_ARAK}}),	-- The Thorn Pits
					exploration(7110),	-- The Undergrowth
					exploration(7202),	-- The Writhing Mire
					exploration(7127),	-- Veil Akraz
					visit_exploration(7036,{coord={46.6,45.5,SPIRES_OF_ARAK}}),	-- Veil Terokk
					exploration(7274, {	-- Veil Zekk
						-- CRIEVE NOTE: I was initially able to collect this, but if you collect Bloodmane Valley, it gets masked behind it.
						["collectible"] = false,
					}),
					exploration(7306),	-- Windswept Terrace
					visit_exploration(7164,{coord={60.6,79.8,SPIRES_OF_ARAK}}),	-- Wreck of the Mother Lode
				}),
				n(FACTIONS, {
					faction(FACTION_ARAKKOA_OUTCASTS),	-- Arakkoa Outcasts
				}),
				n(FLIGHT_PATHS, {
					fp(1513, {	-- Apexis Excavation, Spires of Arak
						["cr"] = 84509,	-- Skytalon Kuris
						["coord"] = { 37.0, 24.6, SPIRES_OF_ARAK },
					}),
					fp(1487, {	-- Axefall, Spires of Arak
						["cr"] = 82612,	-- Hutou Featherwind
						["coord"] = { 39.5, 43.4, SPIRES_OF_ARAK },
						["races"] = HORDE_ONLY,
					}),
					fp(1515, {	-- Crow's Crook, Spires of Arak
						["cr"] = 84515,	-- Darkscreech
						["coord"] = { 51.8, 31.1, SPIRES_OF_ARAK },
					}),
					fp(1510, {	-- Pinchwhistle Gearworks, Spires of Arak
						["cr"] = 82511,	-- Kwiven Quickcog
						["coord"] = { 60.9, 73.3, SPIRES_OF_ARAK },
					}),
					fp(1493, {	-- Southport, Spires of Arak
						["cr"] = 83567,	-- Firn Swiftbreeze
						["coord"] = { 39.1, 61.8, SPIRES_OF_ARAK },
						["races"] = ALLIANCE_ONLY,
					}),
					fp(1509, {	-- Talon Watch, Spires of Arak
						["cr"] = 84504,	-- Skytalon Karaz
						["coord"] = { 61.9, 42.6, SPIRES_OF_ARAK },
					}),
					fp(1508, {	-- Veil Terokk, Spires of Arak
						["cr"] = 84498,	-- Skytalon Meshaal
						["coord"] = { 46.2, 44.1, SPIRES_OF_ARAK },
					}),
				}),
				petbattles({
					n(87123, {	-- Vesharr <Grand Master Pet Tamer>
						["coord"] = { 46.4, 45.2, SPIRES_OF_ARAK },
						["timeline"] = { ADDED_6_0_2 },
						["petBattleLvl"] = 25,
						["groups"] = {
							q(37207, {	-- Vesharr
								["timeline"] = { ADDED_6_0_2 },
								["isDaily"] = true,
								["_drop"] = { "g" },	-- Drops Polished Pet Charm
								["groups"] = {
									-- #if BEFORE 10.2.5
									i(116415, {	-- Shiny Pet Charm
										["timeline"] = { REMOVED_10_2_5 },
									}),
									-- #endif
								},
							}),
						},
					}),
				}),
				n(QUESTS, {
					n(STOKTRON_BREWERY, sharedData({
						["races"] = ALLIANCE_ONLY,
					},{
						["groups"] = {
							q(35926, {	-- Assassin's Mark
								["sourceQuest"] = 35915,	-- Attempted Murder
								["qg"] = 83609,
								["coord"] = { 52.0, 23.5, SPIRES_OF_ARAK },
							}),
							q(35915, {	-- Attempted Murder
								["sourceQuest"] = 37329,	-- Not Here, Not Now
								["qg"] = 83549,	-- Hulda Shadowblade
								["coord"] = { 39.6, 60.8, SPIRES_OF_ARAK },
							}),
							q(37327, {	-- Befriending the Locals
								["sourceQuest"] = 35286,	-- Orders, Commander?
								["qg"] = 81929,	-- Lieutenant Willem
								["coord"] = { 39.8, 60.8, SPIRES_OF_ARAK },
							}),
							q(37287, {  -- Cleaning House
								["sourceQuest"] = 36165,	-- No Time to Waste
								["qg"] = 84291,	-- Kolrigg Stoktron
								["coord"] = { 39.5, 61.7, SPIRES_OF_ARAK },
								["groups"] = { i(119001) },	-- Mystery Keg (TOY!)
							}),
							q(36023, {	-- Extrinsic Motivation
								["sourceQuest"] = 35926,	-- Assassin's Mask
								["qg"] = 83773,	-- Hulda Shadowblade
								["coord"] = { 53.5, 27.5, SPIRES_OF_ARAK },
							}),
							q(36029, {	-- Gardul Venomshiv
								["sourceQuests"] = {
									36023,	-- Extrinsic Motivation
									35959,	-- The Power of Poison
								},
								["qg"] = 83773,	-- Hulda Shadowblade
								["coord"] = { 53.5, 27.5, SPIRES_OF_ARAK },
							}),
							q(36165, {	-- No Time to Waste
								["sourceQuest"] = 36048,	-- We Have Him Now
								["qg"] = 83900,	-- Hulda Shadowblade
								["coord"] = { 57.1, 34.4, SPIRES_OF_ARAK },
							}),
							q(37329, {	-- Not Here, Not Now
								["sourceQuest"] = 37296,	-- A Lack of Wasps
								["qg"] = 83463,	-- Dusk-Seer Irizzar
								["coord"] = { 43.8, 48.9, SPIRES_OF_ARAK },
							}),
							q(37281, {	-- Standing United
								["sourceQuest"] = 36165,	-- No Time to Waste
								["qg"] = 88195,	-- Hulda Shadowblade
								["coord"] = { 39.7, 60.9, SPIRES_OF_ARAK },
								["groups"] = { follower(453) },	-- Hulda Shadowblade
							}),
							q(35959, {	-- The Power of Poison
								["sourceQuest"] = 35926,	-- Assassin's Mask
								["qg"] = 83773,	-- Hulda Shadowblade
								["coord"] = { 53.5, 27.5, SPIRES_OF_ARAK },
							}),
							q(36048, {	-- We Have Him Now
								["sourceQuest"] = 36029,	-- Gardul Venomshiv
								["qg"] = 83900,	-- Hulda Shadowblade
								["coord"] = { 57.1, 34.4, SPIRES_OF_ARAK },
							}),
						},
					})),
					n(HEARTHFIRE_TAVERN, sharedData({
						["races"] = HORDE_ONLY,
					},{
						["groups"] = {
							q(35924, {	-- Assassin's Mark
								["sourceQuest"] = 35907,	-- Attempted Murder
								["qg"] = 83608,	-- Dark Ranger Velonara
								["coord"] = { 52.0, 23.5, SPIRES_OF_ARAK },
							}),
							q(35907, {	-- Attempted Murder
								["sourceQuests"] = {
									37326,	-- Befriending the Locals
									37328,	-- Not Here, Not Now
								},
								["qg"] = 83529,	-- Dark Ranger Velonara
								["coord"] = { 40.0, 43.2, SPIRES_OF_ARAK },
							}),
							q(37326, {	-- Befriending the Locals
								["sourceQuest"] = 35277,	-- Orders, Commander?
								["qg"] = 81920,	-- Taskmaster Gornek
								["coord"] = { 40.1, 43.5, SPIRES_OF_ARAK },
							}),
							q(36022, {	-- Extrinsic Motivation
								["sourceQuest"] = 35924,	-- Assassin's Mask
								["qg"] = 83772,	-- Dark Ranger Velonara
								["coord"] = { 53.5, 27.5, SPIRES_OF_ARAK },
							}),
							q(36028, {	-- Gardul Venomshiv
								["sourceQuests"] = {
									36022,	-- Extrinsic Motivation
									35947,	-- The Power of Poison
								},
								["qg"] = 83772,	-- Dark Ranger Velonara
								["coord"] = { 53.5, 27.5, SPIRES_OF_ARAK },
							}),
							q(36166, {	-- No Time to Waste
								["sourceQuest"] = 36047,	-- We Have Him Now
								["qg"] = 83903,	-- Dark Ranger Velonara
								["coord"] = { 57.1, 34.4, SPIRES_OF_ARAK },
							}),
							q(37328, {	-- Not Here, Not Now
								["sourceQuest"] = 37296,	-- A Lack of Wasps
								["qg"] = 83463,	-- Dusk-Seer Irizzar
								["coord"] = { 43.8, 48.9, SPIRES_OF_ARAK },
							}),
							q(37292, {  -- Not In Your Army
								["sourceQuest"] = 36166,	-- No Time to Waste
								["qg"] = 84292,	-- Lunzul
								["coord"] = { 40.1, 42.6, SPIRES_OF_ARAK },
								["groups"] = { i(119001) },	-- Mystery Keg (TOY!)
							}),
							q(37276, {	-- Standing United
								["sourceQuest"] = 36166,	-- No Time to Waste
								["qg"] = 88179,	-- Dark Ranger Velonara
								["coord"] = { 40.0, 43.3, SPIRES_OF_ARAK },
								["groups"] = { follower(453) },	-- Dark Ranger Velonara
							}),
							q(35947, {	-- The Power of Poison
								["sourceQuest"] = 35924,	-- Assassin's Mask
								["qg"] = 83772,	-- Dark Ranger Velonara
								["coord"] = { 53.5, 27.5, SPIRES_OF_ARAK },
							}),
							q(36047, {	-- We Have Him Now
								["sourceQuest"] = 36028,	-- Gardul Venomshiv
								["qg"] = 83899,	-- Dark Ranger Velonara
								["coord"] = { 57.1, 34.4, SPIRES_OF_ARAK },
							}),
						},
					})),
					n(SMUGGLERS_DEN, {
						q(35739, {	-- All Natural
							["sourceQuest"] = 35719,	-- Back on Track
							["qg"] = 82788,	-- Dilbert Tinkertoss
							["coord"] = { 60.2, 53.1, SPIRES_OF_ARAK },
							["races"] = ALLIANCE_ONLY,
						}),
						q(35738, {	-- All Natural
							["sourceQuest"] = 35718,	-- Back on Track
							["qg"] = 82786,	-- Trixxy Weldblast
							["coord"] = { 60.1, 53.1, SPIRES_OF_ARAK },
							["races"] = HORDE_ONLY,
						}),
						q(35719, {	-- Back on Track
							["sourceQuests"] = {
								35878,	-- Safety Measures
								35716,	-- Sticky Situation
							},
							["qg"] = 82759,	-- Filbert Tinkertoss
							["coord"] = { 56.2, 42.4, SPIRES_OF_ARAK },
							["races"] = ALLIANCE_ONLY,
						}),
						q(35718, {	-- Back on Track
							["sourceQuests"] = {
								35879,	-- Safety Measures
								35706,	-- Sticky Situation
							},
							["qg"] = 82713,	-- Mixxy Weldblast
							["coord"] = { 56.0, 40.8, SPIRES_OF_ARAK },
							["races"] = HORDE_ONLY,
						}),
						q(35705, {	-- Best Deals Anywhere
							["sourceQuest"] = 37330,	-- Not Here, Not Now
							["qg"] = 82691,	-- Provisioner Galgar
							["coord"] = { 40.0, 43.1, SPIRES_OF_ARAK },
							["races"] = HORDE_ONLY,
						}),
						q(35782, {	-- I See Dead Arakkoa
							["sourceQuest"] = 35719,	-- Back on Track
							["qg"] = 82788,	-- Dilbert Tinkertoss
							["coord"] = { 60.2, 53.1, SPIRES_OF_ARAK },
							["races"] = ALLIANCE_ONLY,
						}),
						q(35766, {	-- I See Dead Arakkoa
							["sourceQuest"] = 35718,	-- Back on Track
							["qg"] = 82786,	-- Trixxy Weldblast
							["coord"] = { 60.1, 53.1, SPIRES_OF_ARAK },
							["races"] = HORDE_ONLY,
						}),
						q(37331, {	-- Not Here, Not Now
							["sourceQuest"] = 37296,	-- A Lack of Wasps
							["qg"] = 83463,	-- Dusk-Seer Irizzar
							["coord"] = { 43.9, 48.8, SPIRES_OF_ARAK },
							["races"] = ALLIANCE_ONLY,
						}),
						q(37330, {	-- Not Here, Not Now
							["sourceQuest"] = 37296,	-- A Lack of Wasps
							["qg"] = 83463,	-- Dusk-Seer Irizzar
							["coord"] = { 43.9, 48.8, SPIRES_OF_ARAK },
							["races"] = HORDE_ONLY,
						}),
						q(35699, {	-- Peace Offering (Alliance)
							["sourceQuest"] = 35286,	-- Orders, Commander?
							["qg"] = 82709,	-- Milly Osworth
							["coord"] = { 39.5, 61.2, SPIRES_OF_ARAK },
							["races"] = ALLIANCE_ONLY,
						}),
						q(35697, {	-- Peace Offering (Horde)
							["sourceQuest"] = 35277,	-- Orders, Commander?
							["qg"] = 82691,	-- Provisioner Galgar
							["coord"] = { 40.0, 43.1, SPIRES_OF_ARAK },
							["races"] = HORDE_ONLY,
						}),
						q(35878, {	-- Safety Measures
							["sourceQuest"] = 35713,	-- The Tinkertoss Twins
							["qg"] = 82759,	-- Filbert Tinkertoss
							["coord"] = { 56.2, 42.4, SPIRES_OF_ARAK },
							["races"] = ALLIANCE_ONLY,
						}),
						q(35879, {	-- Safety Measures
							["sourceQuest"] = 35705,	-- Best Deals Anywhere
							["qg"] = 82713,	-- Mixxy Weldblast
							["coord"] = { 56.0, 40.8, SPIRES_OF_ARAK },
							["races"] = HORDE_ONLY,
						}),
						q(35716, {	-- Sticky Situation
							["sourceQuest"] = 35713,	-- The Tinkertoss Twins
							["qg"] = 82759,	-- Filbert Tinkertoss
							["coord"] = { 56.2, 42.4, SPIRES_OF_ARAK },
							["races"] = ALLIANCE_ONLY,
						}),
						q(35706, {	-- Sticky Situation
							["sourceQuest"] = 35705,	-- Best Deals Anywhere
							["qg"] = 82713,	-- Mixxy Weldblast
							["coord"] = { 56.0, 40.8, SPIRES_OF_ARAK },
							["races"] = HORDE_ONLY,
						}),
						q(35835, {	-- The Ebon Hunter
							["sourceQuests"] = {
								35739,	-- All Natural
								35782,	-- I See Dead Arakkoa
							},
							["qg"] = 82788,	-- Dilbert Tinkertoss
							["coord"] = { 60.2, 53.1, SPIRES_OF_ARAK },
							["races"] = ALLIANCE_ONLY,
							["groups"] = { i(116394) },	-- Outpost Building Assembly Notes
						}),
						q(35797, {	-- The Ebon Hunter
							["sourceQuests"] = {
								35738,	-- All Natural
								35766,	-- I See Dead Arakkoa
							},
							["qg"] = 82786,	-- Trixxy Weldblast
							["coord"] = { 60.1, 53.1, SPIRES_OF_ARAK },
							["races"] = HORDE_ONLY,
							["groups"] = { i(116394) },	-- Outpost Building Assembly Notes
						}),
						q(35713, {	-- The Tinkertoss Twins
							["sourceQuest"] = 37331,	-- Not Here, Not Now
							["qg"] = 82709,	-- Milly Osworth
							["coord"] = { 39.5, 61.2, SPIRES_OF_ARAK },
							["races"] = ALLIANCE_ONLY,
						}),
					}),
					q(34756, {	-- A Charming Deception
						["sourceQuest"] = 34659,	-- The Crone
						["qg"] = 79890,	-- Ornekka
						["coord"] = { 51.6, 31.2, SPIRES_OF_ARAK },
						["groups"] = {
							i(114948),	-- Skettis Deceiver's Band
							i(119070),	-- Skettis Deceiver's Gemband
							i(119062),	-- Skettis Deceiver's Loop
							i(114952),	-- Skettis Deceiver's Ring
							i(114953),	-- Skettis Deceiver's Signet
						},
					}),
					q(34883, {	-- A Feast of Shadows
						["sourceQuest"] = 34830,	-- Behind the Veil
						["qg"] = 80508,	-- Talonpriest Zellek
						["coord"] = { 44.4, 24.0, SPIRES_OF_ARAK },
						["groups"] = {
							i(114723),	-- Cragplate Helm
							i(114725),	-- Ravenchain Helm
							i(114724),	-- Shadowveil Hood
							i(114726),	-- Skysinger Helm
						},
					}),
					q(35671, {	-- A Gathering of Shadows
						["sourceQuests"] = {
							34756,	-- A Charming Deception
							34805,	-- Echo Hunters
							35668,	-- Syth's Secret
						},
						["qg"] = 81770,	-- Reshad
						["coord"] = { 48.5, 44.4, SPIRES_OF_ARAK },
						["groups"] = {
							i(258741, {	-- Writings of Reshad the Outcast (DECOR!)
								["timeline"] = { ADDED_12_0_0 },
							}),
						},
					}),
					q(37296, {	-- A Lack of Wasps
						["sourceQuests"] = {
							37326,	-- Befriending the Locals (tavern/brewery)
							35699,	-- Peace Offering (smuggler's den)
						},
						["sourceQuestNumRequired"] = 1,
						["qg"] = 83463,	-- Dusk-Seer Irizzar
						["coord"] = { 43.9, 48.8, SPIRES_OF_ARAK },
					}),
					q(35339, {	-- A Parting Favor
						["sourceQuests"] = {
							35329,	-- I See Dead People (A)
							35322,	-- I See Dead People (H)
						},
						["qgs"] = {
							82100,	-- Bryan Finn (first version fades out about a minute after turning in previous quest and is replaced with second version)
							82101,	-- Bryan Finn
						},
						["coord"] = { 38.9, 48.8, SPIRES_OF_ARAK },
					}),
					q(35353, {	-- A Piece of the Puzzle
						["sourceQuest"] = 35339,	-- A Parting Favor
						["qg"] = 82124,	-- Alice Finn
						["coord"] = { 37.6, 51.0, SPIRES_OF_ARAK },
						["groups"] = { i(114958) },	-- Watch Commander Branson's Lape
					}),
					q(35245, {	-- A Sentimental Relic
						["sourceQuest"] = 35013,	-- Lithic's Gift
						["qg"] = 80834,	-- Memory of Lithic
						["coord"] = { 60.5, 38.8, SPIRES_OF_ARAK },
					}),
					q(36059, {	-- A Worthy Vessel
						["sourceQuest"] = 35895,	-- Terokk's Fall
						["qg"] = 80153,	-- Shadow-Sage Iskar
						["coord"] = { 46.5, 46.5, SPIRES_OF_ARAK },
					}),
					q(34657, {	-- Adherents of the Sun God
						["sourceQuest"] = 34655,	-- The Shadows of Skettis
						["qg"] = 79519,	-- Reshad
						["coord"] = { 43.6, 12.9, SPIRES_OF_ARAK },
					}),
					q(35482, {	-- Admiral Taylor [A]
						["sourceQuests"] = {
							35408,	-- Prime the Cannons
							35407,	-- Punishable by Death
						},
						["qg"] = 82278,	-- Lady Claudia
						["coord"] = { 37.6, 53.7, SPIRES_OF_ARAK },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							i(118082),	-- Admiral Taylor's Boot Knife
							i(118079),	-- Admiral Taylor's Ceremonial Sword
							i(118083),	-- Admiral Taylor's Cutlass
							i(118084),	-- Admiral Taylor's Glaive
							i(118080),	-- Admiral Taylor's Greatsword
							i(118081),	-- Admiral Taylor's Hunting Bow
							i(118086),	-- Admiral Taylor's Keg Tapper
							i(114945),	-- Admiral Taylor's Shield
							i(118085),	-- Admiral Taylor's Staff of Wisdom
						},
					}),
					q(36183, {	-- Admiral Taylor [H]
						["sourceQuests"] = {
							35408,	-- Prime the Cannons
							35407,	-- Punishable by Death
						},
						["qg"] = 82278,	-- Lady Claudia
						["coord"] = { 37.6, 53.8, SPIRES_OF_ARAK },
						["races"] = HORDE_ONLY,
						["groups"] = {
							i(118082),	-- Admiral Taylor's Boot Knife
							i(118079),	-- Admiral Taylor's Ceremonial Sword
							i(118083),	-- Admiral Taylor's Cutlass
							i(118084),	-- Admiral Taylor's Glaive
							i(118080),	-- Admiral Taylor's Greatsword
							i(118081),	-- Admiral Taylor's Hunting Bow
							i(118086),	-- Admiral Taylor's Keg Tapper
							i(114945),	-- Admiral Taylor's Shield
							i(118085),	-- Admiral Taylor's Staff of Wisdom
						},
					}),
					q(35636, {	-- All Due Respect
						["sourceQuest"] = 34659,	-- The Crone
						["qg"] = 79890,	-- Ornekka
						["coord"] = { 51.6, 31.2, SPIRES_OF_ARAK },
					}),
					q(34886, {	-- Baby Bird
						["sourceQuest"] = 34838,	-- Ikky's Egg
						["qg"] = 80469,	-- Ikky
						["coord"] = { 45.4, 36.6, SPIRES_OF_ARAK },
					}),
					q(34942, {	-- Back from Beyond
						["sourceQuests"] = {
							34883,	-- A Feast of Shadows
							34882,	-- Blades in the Dark
						},
						["qg"] = 80508,	-- Talonpriest Zellek
						["coord"] = { 44.4, 24.0, SPIRES_OF_ARAK },
					}),
					q(35000, {	-- Banished From the Sky
						["sourceQuest"] = 34998,	-- Talon Watch
						["qg"] = 80758,	-- Talon Guard Kurekk
						["coord"] = { 62.1, 42.6, SPIRES_OF_ARAK },
					}),
					q(34830, {	-- Behind the Veil
						["sourceQuest"] = 34828,	-- Ishaal's Orb
						["qg"] = 80232,	-- Talonpriest Ishaal
						["coord"] = { 47.9, 34.6, SPIRES_OF_ARAK },
					}),
					q(34882, {	-- Blades in the Dark
						["sourceQuest"] = 34830,	-- Behind the Veil
						["qg"] = 80508,	-- Talonpriest Zellek
						["coord"] = { 44.4, 24.0, SPIRES_OF_ARAK },
					}),
					q(35009, {	-- Call of the Raven Mother
						["sourceQuests"] = {
							34939,	-- Declawing the Bloodmane
							34938,	-- Ralshiara's Demise
							34924,	-- The Egg Thieves
						},
						["qg"] = 80481,	-- High Ravenspeaker Krikka
						["coord"] = { 52.0, 49.9, SPIRES_OF_ARAK },
					}),
					q(37177, {	-- Call of the Talon King
						["description"] = "Granted automatically. If you're in the zone when you hit exalted, leave the zone and return.",
						["qg"] = 84122,	-- Shade of Terokk
						["coord"] = { 46.6, 46.7, SPIRES_OF_ARAK },
						["minReputation"] = { FACTION_ARAKKOA_OUTCASTS, EXALTED },
					}),
					q(35081, {	-- Clearing Out Before Cleaning Up
						["sourceQuest"] = 35080,	-- The Mother Lode
						["qg"] = 81784,	-- Engineer Gazwitz
						["coord"] = { 59.1, 79.2, SPIRES_OF_ARAK },
					}),
					q(35634, {	-- Control is King
						["sourceQuests"] = {
							35260,	-- Hardly Working
							35273,	-- Hot Seat
							35258,	-- Legacy of the Apexis
						},
						["qg"] = 80157,	-- Darkscryer Raastok
						["coord"] = { 36.8, 24.5, SPIRES_OF_ARAK },
					}),
					q(34921, {	-- Cult of the Ravenspeakers
						["sourceQuests"] = {
							35634,	-- Control is King
							35012,	-- Sethe, the Dead God
						},
						["qg"] = 80648,	-- Anzu
						["coord"] = { 46.8, 46.0, SPIRES_OF_ARAK },
					}),
					q(36428, {	-- Curing With Force
						["sourceQuests"] = {
							36384,	-- Field Trial
							35089,	-- Skimming Off the Top
							35090,	-- The Right Parts for the Job
						},
						["qg"] = 81443,	-- Krixel Pinchwhistle
						["coord"] = { 58.4, 92.2, SPIRES_OF_ARAK },
						["groups"] = { i(115533) },	-- Vial of Refined Serum (QI!)
					}),
					q(34939, {  -- Declawing The Bloodmane
						["sourceQuests"] = {
							34923,	-- The Bloodmane
							34922,	-- Words of the Raven Mother
						},
						["qg"] = 80860,	-- High Ravenspeaker Krikka
						["coord"] = { 54.8, 54.2, SPIRES_OF_ARAK },
						["groups"] = {
							i(114720),	-- Cragplate Gauntlets
							i(114722),	-- Ravenchain Gauntlets
							i(114721),	-- Shadowveil Gloves
							i(114719),	-- Skysinger Gloves
						},
					}),
					q(35077, {  -- Defungination
						["sourceQuests"] = { 35619, 35620, 36862 },	-- Pinchwhistle Gearworks (Alliance and 2 Horde versions)
						["qg"] = 81109,	-- Kimzee Pinchwhistle
						["coord"] = { 61.4, 72.8, SPIRES_OF_ARAK },
						["groups"] = {
							i(118071),	-- "Fireproof" Venture Co. Blastplate
							i(118072),	-- "Fireproof" Venture Co. Chainmail
							i(118074),	-- "Fireproof" Venture Co. Robes
							i(118073),	-- "Fireproof" Venture Co. Tunic
						},
					}),
					q(34805, {	-- Echo Hunters
						["sourceQuest"] = 34659,	-- The Crone
						["qg"] = 80265,	-- Reshad
						["coord"] = { 51.6, 31.2, SPIRES_OF_ARAK },
					}),
					q(36425, {	-- Egg Punt
						["sourceQuest"] = 34827,	-- Last of the Talonpriests
						["qg"] = 85425,	-- Ravager Egg
						["coord"] = { 47.1, 31.6, SPIRES_OF_ARAK },
					}),
					q(36384, {	-- Field Trial
						["sourceQuest"] = 35285,	-- Follow that Hotrod!
						["qg"] = 81443,	-- Krixel Pinchwhistle
						["coord"] = { 58.4, 92.2, SPIRES_OF_ARAK },
						["groups"] = { i(115475) },	-- Vial of Untested Serum (QI!)
					}),
					q(35298, {	-- Flame On
						["sourceQuests"] = {
							36428,	-- Curing With Force
							35211,	-- Preventing the Worst
							35091,	-- Sporicide
						},
						["qg"] = 81443,	-- Krixel Pinchwhistle
						["coord"] = { 58.4, 92.2, SPIRES_OF_ARAK },
						["groups"] = { i(111957) },	-- Salvage Yard, Level 1
					}),
					q(35285, {	-- Follow that Hotrod!
						["sourceQuests"] = {
							35081,	-- Clearing Out Before Cleaning Up
							35082,	-- Getting the Crew Back Together
						},
						["qg"] = 81784,	-- Engineer Gazwitz
						["coord"] = { 59.1, 79.2, SPIRES_OF_ARAK },
					}),
					q(36353, {	-- For Old Times' Sake
						["sourceQuest"] = 35482,	-- Admiral Taylor
						["qg"] = 85080,	-- Admiral Taylor
						["coord"] = { 39.9, 60.6, SPIRES_OF_ARAK },
						["races"] = ALLIANCE_ONLY,
						["groups"] = { follower(204) },	-- Admiral Taylor
					}),
					q(35001, {	-- Gaze of the Raven God
						["sourceQuest"] = 35000,	-- Banished From the Sky
						["qg"] = 80758,	-- Talon Guard Kurekk
						["coord"] = { 62.1, 42.6, SPIRES_OF_ARAK },
					}),
					q(35082, {	-- Getting the Crew Back Together
						["sourceQuest"] = 35080,	-- The Mother Lode
						["qg"] = 81773,	-- Kimzee Pinchwhistle
						["coord"] = { 59.1, 79.2, SPIRES_OF_ARAK },
					}),
					q(35260, {	-- Hardly Working
						["sourceQuests"] = {
							34882,	-- Blades in the Dark
							34883,	-- A Feast of Shadows
						},
						["qg"] = 80157,	-- Darkscryer Raastok
						["coord"] = { 36.9, 24.5, SPIRES_OF_ARAK },
						["groups"] = {
							i(114950),	-- Skywatch Adherent Choker
							i(119089),	-- Skywatch Adherant Gorget
							i(114951),	-- Skywatch Adherent Locket
							i(119080),	-- Skywatch Adherant Necklace
							i(114947),	-- Skywatch Adherent Pendant
						},
					}),
					q(34999, {  -- Hatred Undying
						["sourceQuest"] = 35611,	-- Return to Veil Terokk
						["qg"] = 81514,	-- Kazu
						["coord"] = { 61.9, 42.2, SPIRES_OF_ARAK },
						["groups"] = {
							i(114715),	-- Cragplate Warboots
							i(114717),	-- Ravenchain Sabatons
							i(114716),	-- Shadowveil Treads
							i(114718),	-- Skysinger Boots
						},
					}),
					heroscall(q(49566, {	-- Hero's Call: Spires of Arak!
						["timeline"] = { ADDED_7_3_5 },
						["isBreadcrumb"] = true,
						["lvl"] = 96,
					})),
					q(34656, {  -- Hidden in Plain Sight
						["sourceQuest"] = 34655,	-- The Shadows of Skettis
						["qg"] = 79519,	-- Reshad
						["coord"] = { 43.6, 12.9, SPIRES_OF_ARAK },
						["groups"] = {
							i(114733),	-- Cragplate Shoulders
							i(114735),	-- Ravenchain Spaulders
							i(114734),	-- Shadowveil Mantle
							i(114732),	-- Skysinger Spaulders
						},
					}),
					q(35549, {	-- Honoring a Hero
						["sourceQuest"] = 35482,	-- Admiral Taylor
						["qg"] = 82403,	-- Jasper Fel
						["coord"] = { 36.8, 56.7, SPIRES_OF_ARAK },
						["races"] = ALLIANCE_ONLY,
					}),
					q(35273, {  -- Hot Seat
						["icon"] = 1029590,
						["sourceQuest"] = 35261,	-- Shot Caller
						["provider"] = { "o", 232353 },	-- Overseer's Chair
						["coord"] = { 35.5, 32.1, SPIRES_OF_ARAK },
						["groups"] = {
							i(258748, {	-- "Rising Glory of Rukhmar" Statue (DECOR!)
								["timeline"] = { ADDED_12_0_0 },
							}),
							i(114727),	-- Cragplate Legguards
							i(114729),	-- Ravenchain Leggings
							i(114728),	-- Shadowveil Leggings
							i(114730),	-- Skysinger Breeches
						},
					}),
					q(34898, {	-- Ikky
						["sourceQuest"] = 34886,	-- Baby Bird
						["qg"] = 85320,	-- Ikky
						["coord"] = { 46.2, 45.6, SPIRES_OF_ARAK },
						["groups"] = { pet(1532) },	-- Ikky (PET!)
					}),
					q(34838, {	-- Ikky's Egg
						["description"] = "Available once you pick up the gavel during |cFFFFD700The Kaliri Whisperer|r.",
						["sourceQuest"] = 34884,	-- The Kaliri Whisperer (must pick up gavel)
						["qg"] = 80470,	-- Kaliri Egg
						["coord"] = { 45.4, 36.6, SPIRES_OF_ARAK },
					}),
					q(35276, {	-- Inspecting the Troops (A)
						["sourceQuest"] = 35274,	-- One of Our Own
						["qg"] = 81891,	-- Jasper Fel
						["coord"] = { 45.9, 46.3, SPIRES_OF_ARAK },
						["races"] = ALLIANCE_ONLY,
					}),
					q(35275, {	-- Inspecting the Troops (H)
						["sourceQuest"] = 35272,	-- One of Our Own
						["qg"] = 81890,	-- Shadow Hunter Ukambe
						["coord"] = { 45.9, 46.3, SPIRES_OF_ARAK },
						["races"] = HORDE_ONLY,
					}),
					q(35329, {	-- I See Dead People (A)
						["sourceQuest"] = 35293,	-- Old Friends
						["qg"] = 81960,	-- Jasper Fel
						["coord"] = { 39.1, 48.8, SPIRES_OF_ARAK },
						["races"] = ALLIANCE_ONLY,
					}),
					q(35322, {	-- I See Dead People (H)
						["sourceQuest"] = 35295,	-- What's Theirs is Ours
						["qg"] = 81961,	-- Shadow Hunter Ukambe
						["coord"] = { 39.1, 48.9, SPIRES_OF_ARAK },
						["races"] = HORDE_ONLY,
					}),
					q(34828, {	-- Ishaal's Orb
						["sourceQuest"] = 34827,	-- Last of the Talonpriests
						["qg"] = 80232,	-- Talonpriest Ishaal
						["coord"] = { 47.9, 34.6, SPIRES_OF_ARAK },
					}),
					q(36062, {	-- Kimzee Pinchwhistle
						["sourceQuest"] = 35298,	-- Flame On
						["qg"] = 82468,	-- Kimzee Pinchwhistle
						["coord"] = { 61.5, 72.7, SPIRES_OF_ARAK },
						["groups"] = { follower(192) },	-- Kimzee Pinchwhistle
					}),
					q(34827, {	-- Last of the Talonpriests
						["sourceQuest"] = 35611,	-- Return to Veil Terokk
						["qg"] = 80153,	-- Shadow-Sage Iskar
						["coord"] = { 45.9, 45.7, SPIRES_OF_ARAK },
					}),
					q(35258, {	-- Legacy of the Apexis
						["sourceQuests"] = {
							34882,	-- Blades in the Dark
							34883,	-- Return to Veil Terokk
							35257,	-- Power Unearthed (breadcrumb)
						},
						["qg"] = 80157,	-- Darkscryer Raastok
						["coord"] = { 36.9, 24.5, SPIRES_OF_ARAK },
					}),
					q(37168, {	-- Leorajh, the Enlightened
						["qg"] = 87561,	-- Leorajh
						["coords"] = {
							{ 54.9, 65.1, SPIRES_OF_ARAK },	-- cave entrance
							{ 54.2, 63.0, SPIRES_OF_ARAK },	-- questgiver
						},
						["groups"] = { follower(219) },	-- Leorajh
					}),
					q(35013, {	-- Lithic's Gift
						["sourceQuests"] = {
							35011,	-- The False Talon King
							35003,	-- Ritual Severance
							35004,	-- Servants of a Dead God
						},
						["qg"] = 86475,	-- Talon Guard Kurekk
						["coord"] = { 64.1, 37.0, SPIRES_OF_ARAK },
					}),
					q(34885, {	-- Mother of Thorns
						["description"] = "Available once you pick up the gavel during |cFFFFD700The Kaliri Whisperer|r.",
						["sourceQuest"] = 34884,	-- The Kaliri Whisperer (must pick up gavel)
						["qg"] = 80233,	-- Skizzik
						["coord"] = { 45.4, 36.3, SPIRES_OF_ARAK },
						["groups"] = {
							i(114957),	-- Oversized Shadeback Talon
							i(114959),	-- Prickly Shadeback Thorn
							i(114961),	-- Thornmother Eye
						},
					}),
					q(34829, {  -- New Neighbors
						["sourceQuest"] = 34827,	-- Last of the Talonpriests
						["qg"] = 80232,	-- Talonpriest Ishaal
						["coord"] = { 47.9, 34.6, SPIRES_OF_ARAK },
						["groups"] = {
							i(114736),	-- Cragplate Girdle
							i(114738),	-- Ravenchain Belt
							i(114737),	-- Shadowveil Cord
							i(114739),	-- Skysinger Belt
						},
					}),
					q(36606, {	-- News from Nagrand
						["altQuests"] = { 36601 },	-- News from Nagrand
						["qg"] = 81929,	-- Lieutenant Willem
						["coord"] = { 39.8, 60.9, SPIRES_OF_ARAK },
						["races"] = ALLIANCE_ONLY,
						["isBreadcrumb"] = true,
						["lvl"] = 96,	-- not sure why you can pick this up at 96 when nagrand is a 98 zone, but you can
					}),
					q(36601, {	-- News from Nagrand
						["altQuests"] = { 36606 },	-- News from Nagrand
						["qg"] = 80153,	-- Shadow-Sage Iskar
						["coord"] = { 45.8, 45.6, SPIRES_OF_ARAK },
						["races"] = ALLIANCE_ONLY,
						["isBreadcrumb"] = true,
						["lvl"] = 96,
					}),
					q(36607, {	-- News from Nagrand
						["altQuests"] = { 36602 },	-- News from Nagrand
						["qg"] = 81920,	-- Taskmaster Gornek
						["coord"] = { 40.2, 43.4, SPIRES_OF_ARAK },
						["races"] = HORDE_ONLY,
						["isBreadcrumb"] = true,
						["lvl"] = 96,
					}),
					q(36602, {	-- News from Nagrand
						["altQuests"] = { 36607 },	-- News from Nagrand
						["qg"] = 80153,	-- Shadow-Sage Iskar
						["coord"] = { 45.8, 45.6, SPIRES_OF_ARAK },
						["races"] = HORDE_ONLY,
						["isBreadcrumb"] = true,
						["lvl"] = 96,
					}),
					q(35293, {	-- Old Friends
						["sourceQuest"] = 35286,	-- Orders, Commander?
						["qg"] = 81949,	-- Jasper Fel
						["coord"] = { 39.8, 60.7, SPIRES_OF_ARAK },
						["races"] = ALLIANCE_ONLY,
					}),
					q(36085, {	-- On Ebon Wings
						["sourceQuest"] = 35009,	-- Call of the Raven Mother
						["qg"] = 84276,	-- Reshad
						["coord"] = { 51.3, 50.3, SPIRES_OF_ARAK },
					}),
					q(35274, {	-- One of Our Own (Alliance)
						["sourceQuest"] = 35671,	-- A Gathering of Shadows
						["qg"] = 81891,	-- Jasper Fel
						["coord"] = { 45.9, 46.3, SPIRES_OF_ARAK },
						["races"] = ALLIANCE_ONLY,
					}),
					q(35272, {	-- One of Our Own (Horde)
						["sourceQuest"] = 35671,	-- A Gathering of Shadows
						["qg"] = 81890,	-- Shadow Hunter Ukambe
						["coord"] = { 45.9, 46.3, SPIRES_OF_ARAK },
						["races"] = HORDE_ONLY,
					}),
					q(35286, {	-- Orders, Commander? (Alliance)
						["sourceQuest"] = 35276,	-- Inspecting the Troops (Alliance)
						["qg"] = 81929,	-- Lieutenant Willem
						["coord"] = { 39.9, 60.7, SPIRES_OF_ARAK },
						["races"] = ALLIANCE_ONLY,
					}),
					q(35277, {	-- Orders, Commander? (Horde)
						["sourceQuest"] = 35275,	-- Inspecting the Troops (Horde)
						["qg"] = 81920,	-- Taskmaster Gornek
						["coord"] = { 40.1, 43.4, SPIRES_OF_ARAK },
						["races"] = HORDE_ONLY,
					}),
					q(34658, {	-- Orders From On High
						["sourceQuests"] = {
							34657,	-- Adherents to the Sun God
							34656,	-- Hidden in Plain Sight
						},
						["qg"] = 79519,	-- Reshad
						["coord"] = { 43.6, 12.9, SPIRES_OF_ARAK },
					}),
					q(35619, {	-- Pinchwhistle Gearworks (Alliance)
						["sourceQuest"] = 35286,	-- Orders, Commander?
						["qg"] = 85550,	-- Watchman Kovak
						["coord"] = { 39.7, 60.6, SPIRES_OF_ARAK },
						["races"] = ALLIANCE_ONLY,
						["isBreadcrumb"] = true,
					}),
					q(35620, {	-- Pinchwhistle Gearworks (Horde)
						["sourceQuest"] = 35277,	-- Orders, Commander?
						["qg"] = 85566,	-- Scout Cel
						["coord"] = { 40.0, 43.8, SPIRES_OF_ARAK },
						["races"] = HORDE_ONLY,
						["isBreadcrumb"] = true,
					}),
					q(35257, {	-- Power Unearthed
						["sourceQuest"] = 34942,	-- Back from Beyond (must have picked up)
						["qg"] = 85598,	-- Darkscryer Raastok
						["coord"] = { 44.4, 24.0, SPIRES_OF_ARAK },
						["isBreadcrumb"] = true,
					}),
					q(35211, {  -- Preventing the Worst
						["sourceQuests"] = {
							36384,	-- Field Trial
							35089,	-- Skimming Off the Top
							35090,	-- The Right Parts for the Job
						},
						["qg"] = 81443,	-- Krixel Pinchwhistle
						["coord"] = { 58.4, 92.2, SPIRES_OF_ARAK },
						["groups"] = {
							i(118090),	-- "Super Sterilized" Blastguard Britches
							i(118089),	-- "Super Sterilized" Blastguard Leggings
							i(118087),	-- "Super Sterilized" Blastguard Legplates
							i(118088),	-- "Super Sterilized" Blastguard Legwraps
						},
					}),
					q(35408, {	-- Prime the Cannons
						["sourceQuest"] = 35380,	-- Second in Command
						["qg"] = 82212,	-- Lady Claudia
						["coord"] = { 37.6, 53.8, SPIRES_OF_ARAK },
					}),
					q(35407, {	-- Punishable by Death
						["sourceQuest"] = 35380,	-- Second in Command
						["qg"] = 82194,	-- Sir Edward
						["coord"] = { 37.6, 53.8, SPIRES_OF_ARAK },
					}),
					q(34938, {	-- Ralshiara's Demise
						["sourceQuests"] = {
							34923,	-- The Bloodmane
							34922,	-- Words of the Raven Mother
						},
						["qg"] = 80740,	-- Ravenspeaker Sekara
						["coord"] = { 54.8, 54.2, SPIRES_OF_ARAK },
					}),
					q(35007, {	-- Rendezvous with the Ritualists
						["sourceQuest"] = 35010,	-- The High Ravenspeaker
						["qg"] = 80481,	-- High Ravenspeaker Krikka
						["coord"] = { 52.0, 49.9, SPIRES_OF_ARAK },
					}),
					q(35611, {	-- Return to Veil Terokk
						["sourceQuests"] = {
							35286,	-- Orders, Commander? (A)
							35277,	-- Orders, Commander? (H)
						},
						["qg"] = 79748,	-- Percy
						["coords"] = {
							{ 40.1, 60.3, SPIRES_OF_ARAK },	-- (A)
							{ 40.0, 44.0, SPIRES_OF_ARAK },	-- (H)
						},
					}),
					q(35733, {	-- Rites of the Talonpriests
						["sourceQuests"] = {
							34942,	-- Back from Beyond
							34884,	-- The Kaliri Whisperer
						},
						["qg"] = 81770,	-- Reshad
						["coord"] = { 46.5, 46.5, SPIRES_OF_ARAK },
					}),
					q(35003, {	-- Ritual Severance
						["sourceQuests"] = {
							35001,	-- Gaze of the Raven God
							35002,	-- Sons of Sethe
						},
						["qg"] = 80648,	-- Anzu
						["coord"] = { 66.7, 51.6, SPIRES_OF_ARAK },
						["groups"] = {
							i(114955),	-- Hollowblood Cloak
							i(114949),	-- Hollowblood Drape
							i(114954),	-- Hollowblood Greatcloak
							i(119053),	-- Hollowblood Scale Cloak
							i(119058),	-- Hollowblood Scarf
						},
					}),
					q(35380, {	-- Second in Command
						["sourceQuest"] = 35353,	-- A Piece of the Puzzle
						["qg"] = 82126,	-- Alice Finn
						["coord"] = { 37.5, 50.7, SPIRES_OF_ARAK },
					}),
					q(35004, {  -- Servants of a Dead God
						["sourceQuests"] = {
							35001,	-- Gaze of the Raven God
							35002,	-- Sons of Sethe
						},
						["qg"] = 80648,	-- Anzu
						["coord"] = { 66.7, 51.6, SPIRES_OF_ARAK },
						["groups"] = {
							i(114955),	-- Hollowblood Cloak
							i(114949),	-- Hollowblood Drape
							i(114954),	-- Hollowblood Greatcloak
							i(119053),	-- Hollowblood Scale Cloak
							i(119058),	-- Hollowblood Scarf
						},
					}),
					q(35012, {  -- Sethe, the Dead God
						["sourceQuests"] = {
							35011,	-- The False Talon King
							35003,	-- Ritual Severance
							-- 35004,	-- Servants of a Dead God [Not required 2023.07.14]
						},
						["qg"] = 86355,	-- Anzu
						["coord"] = { 64.1, 37.0, SPIRES_OF_ARAK },
						["groups"] = {
							i(114712),	-- Cragplate Chestplate
							i(114713),	-- Ravenchain Vest
							i(114731),	-- Shadowveil Robe
							i(114714),	-- Skysinger Vest
						},
					}),
					q(35261, {	-- Shot-Caller
						["sourceQuest"] = 35259,	-- Sol Sisters
						["qg"] = 82123,	-- Inactive Apexis Destroyer
						["coords"] = {	-- depends on which 'sister' you kill last
							{ 31.9, 25.5, SPIRES_OF_ARAK },
							{ 32.6, 29.0, SPIRES_OF_ARAK },
						},
					}),
					q(35089, {	-- Skimming Off the Top
						["sourceQuest"] = 35285,	-- Follow that Hotrod!
						["qg"] = 81972,	-- Kimzee Pinchwhistle
						["coord"] = { 58.4, 92.2, SPIRES_OF_ARAK },
					}),
					q(35259, {	-- Sol Sisters
						["sourceQuests"] = {
							34882,	-- Blades in the Dark
							34883,	-- Return to Veil Terokk
						},
						["qg"] = 80155,	-- Kura the Blind
						["coord"] = { 36.9, 24.5, SPIRES_OF_ARAK },
					}),
					q(35002, {	-- Sons of Sethe
						["sourceQuest"] = 35000,	-- Banished From the Sky
						["qg"] = 80758,	-- Talon Guard Kurekk
						["coord"] = { 62.1, 42.6, SPIRES_OF_ARAK },
					}),
					q(35079, {	-- Spore-be-Gone
						["qg"] = 81128,	-- Engineer Gazwitz
						["coord"] = { 61.4, 72.8, SPIRES_OF_ARAK },
					}),
					q(35091, {	-- Sporicide
						["sourceQuests"] = {
							35089,	-- Skimming Off the Top
							35090,	-- The Right Parts for the Job
						},
						["qg"] = 81978,	-- Kimzee Pinchwhistle
						["coord"] = { 58.7, 92.7, SPIRES_OF_ARAK },
					}),
					q(35550, {	-- Surviving in a Savage Land
						["sourceQuest"] = 36183,	-- Admiral Taylor
						["qg"] = 82402,	-- Shadow Hunter Ukambe
						["coord"] = { 36.8, 56.8, SPIRES_OF_ARAK },
						["races"] = HORDE_ONLY,
					}),
					q(35668, {	-- Syth's Secret
						["sourceQuest"] = 35636,	-- All Due Respect
						["qg"] = 82621,	-- Reshad
						["coord"] = { 50.3, 36.6, SPIRES_OF_ARAK },
					}),
					q(37144, {	-- Talon Guard Kurekk
						["qg"] = 80758,	-- Talon Guard Kurekk
						["coord"] = { 46.7, 46.4, SPIRES_OF_ARAK },
						["minReputation"] = { FACTION_ARAKKOA_OUTCASTS, EXALTED },
						["groups"] = { follower(224) },	-- Talon Guard Kurekk
					}),
					q(34998, {	-- Talon Watch
						["sourceQuest"] = 35611,	-- Return to Veil Terokk
						["qg"] = 81770,	-- Reshad
						["coord"] = { 45.9, 45.7, SPIRES_OF_ARAK },
					}),
					q(37141, {	-- Talonpriest Ishaal
						["sourceQuests"] = {	-- all "Between Arak and a Hard Place" criteria
							35671,	-- A Gathering of Shadows
							35482,	-- Admiral Taylor [A]
							36183,	-- Admiral Taylor [H]
							34942,	-- Back from Beyond
							35012,	-- Sethe, the Dead God
							35245,	-- A Sentimental Relic
							35634,	-- Control is King
							35896,	-- The Avatar of Terokk
							36165,	-- No Time to Waste (Alliance)
							35835,	-- The Ebon Hunter (Alliance)
							36166,	-- No Time to Waste (Horde)
							35797,	-- The Ebon Hunter (Horde)
							35298,	-- Flame On
							35704,	-- When All is Aligned
						},
						["qg"] = 83959,	-- Talonpriest Ishaal
						["coord"] = { 46.5, 46.7, SPIRES_OF_ARAK },
						["groups"] = { follower(218) },	-- Talonpriest Ishaal
					}),
					q(35895, {	-- Terokk's Fall
						["sourceQuest"] = 35897,	-- The Missing Piece
						["qg"] = 82813,	-- Effigy of Terokk
						["coord"] = { 46.6, 46.6, SPIRES_OF_ARAK },
					}),
					q(35896, {	-- The Avatar of Terokk
						["sourceQuest"] = 36059,	-- A Worthy Vessel
						["qg"] = 84122,	-- Shade of Terokk
						["coord"] = { 46.6, 46.6, SPIRES_OF_ARAK },
						["groups"] = {
							i(119073),	-- Talon Guard Bloodsworn Band
							i(118070),	-- Talon Guard Bloodsworn Loop
							i(118069),	-- Talon Guard Bloodsworn Ring
							i(119065),	-- Talon Guard Bloodsworn Seal
							i(118068),	-- Talon Guard Bloodsworn Signet
							i(258749, {	-- Uncorrupted Eye of Terokk (DECOR!)
								["timeline"] = { ADDED_12_0_0 },
							}),
						},
					}),
					q(34923, {  -- The Bloodmane
						["sourceQuest"] = 35007,	-- Rendezvous with the Ritualists
						["qg"] = 80740,	-- Ravenspeaker Sekara
						["coord"] = { 54.8, 54.1, SPIRES_OF_ARAK },
						["groups"] = {
							i(114741),	-- Cragplate Wristwraps
							i(114742),	-- Ravenchain Wristwraps
							i(114740),	-- Shadowveil Wristwraps
							i(114743),	-- Skysinger Wristwraps
						},
					}),
					q(34659, {	-- The Crone
						["sourceQuest"] = 34658,	-- Orders From On High
						["qg"] = 79519,	-- Reshad
						["coord"] = { 45.4, 18.2, SPIRES_OF_ARAK },
					}),
					q(34924, {	-- The Egg Thieves
						["sourceQuests"] = {
							34923,	-- The Bloodmane
							34922,	-- Words of the Raven Mother
						},
						["qg"] = 80863,	-- Vakora of the Flock
						["coord"] = { 54.8, 54.2, SPIRES_OF_ARAK },
					}),
					q(35011, {	-- The False Talon King
						["sourceQuests"] = {
							35001,	-- Gaze of the Raven God
							35002,	-- Sons of Sethe
						},
						["qg"] = 86475,	-- Talon Guard Kurekk
						["coord"] = { 66.7, 51.6, SPIRES_OF_ARAK },
					}),
					q(35010, {	-- The High Ravenspeaker
						["sourceQuest"] = 34991,	-- To the... Rescue?
						["qg"] = 80639,	-- Iktis of the Flock
						["coord"] = { 48.9, 49.0, SPIRES_OF_ARAK },
					}),
					q(36790, {	-- The Initiate's Revenge
						["sourceQuests"] = {
							34923,	-- The Bloodmane
							34922,	-- Words of the Raven Mother
						},
						["qg"] = 86381,	-- Mortally Wounded Initiate
						["coord"] = { 50.9, 55.8, SPIRES_OF_ARAK },
					}),
					q(34884, {	-- The Kaliri Whisperer
						["sourceQuest"] = 35611,	-- Return to Veil Terokk
						["qg"] = 81770,	-- Reshad
						["coord"] = { 45.9, 45.7, SPIRES_OF_ARAK },
					}),
					q(35897, {	-- The Missing Piece
						["sourceQuests"] = {
							35734,	-- The Talon King
							35245,	-- A Sentimental Relic
						},
						["qg"] = 81770,	-- Reshad
						["coord"] = { 46.5, 46.5, SPIRES_OF_ARAK },
					}),
					q(35080, {	-- The Mother Lode
						["sourceQuests"] = {
							35077,	-- Defungination
							35079,	-- Spore-be-Gone
							36179,	-- Unwanted Pests
						},
						["qg"] = 81109,	-- Kimzee Pinchwhistle
						["coord"] = { 61.4, 72.9, SPIRES_OF_ARAK },
					}),
					q(35090, {  -- The Right Parts for the Job
						["sourceQuest"] = 35285,	-- Follow that Hotrod!
						["qg"] = 81972,	-- Kimzee Pinchwhistle
						["coord"] = { 58.4, 92.2, SPIRES_OF_ARAK },
						["groups"] = {
							o(231811, {	-- Serviceable Gear
								["coords"] = {
									{ 57.9, 90.5, SPIRES_OF_ARAK },
									{ 58.3, 89.7, SPIRES_OF_ARAK },
									{ 58.9, 88.4, SPIRES_OF_ARAK },
									{ 59.4, 89.9, SPIRES_OF_ARAK },
									{ 59.7, 87.4, SPIRES_OF_ARAK },
									{ 60.0, 89.4, SPIRES_OF_ARAK },
									{ 60.6, 88.7, SPIRES_OF_ARAK },
								},
								["groups"] = { i(112634 ) },	-- Serviceable Gear (QI!)
							}),
							i(112698),	-- G-14 Buster Rocket (QI!)
							--
							i(118077),	-- Fungal Resistant Chainmail Boots
							i(118075),	-- Fungal Resistant Plate Boots
							i(118076),	-- Fungal Resistant Slippers
							i(118078),	-- Fungal Resistant Workboots
						},
					}),
					q(34655, {	-- The Shadows of Skettis
						["sourceQuests"] = {
							34653,	-- Arakkoa Exodus
							36951,	-- Arakkoa Exodus
							-- #if AFTER 7.3.5
							49566,	-- Hero's Call: Spires of Arak!
							49548,	-- Warchief's Command: Spires of Arak!
							-- #endif
						},
						["qg"] = 79539,	-- Azik
						["coord"] = { 37.8, 18.0, SPIRES_OF_ARAK },
					}),
					q(35734, {	-- The Talon King
						["sourceQuest"] = 35733,	-- Rites of the Talonpriests
						["qg"] = 82813,	-- Effigy of Terokk
						["coord"] = { 46.6, 46.6, SPIRES_OF_ARAK },
					}),
					q(36864, {	-- Three Feet Under
						["qg"] = 86597,	-- Benjamin Gibb
						["coord"] = { 35.8, 52.3, SPIRES_OF_ARAK },
						["races"] = HORDE_ONLY,
						["groups"] = { follower(204) },	-- Benjamin Gibb
					}),
					q(34991, {	-- To the... Rescue?
						["sourceQuest"] = 34921,	-- Cult of the Ravenspeakers
						["qg"] = 80639,	-- Iktis of the Flock
						["coord"] = { 48.9, 49.0, SPIRES_OF_ARAK },
					}),
					q(36179, {	-- Unwanted Pests
						["qg"] = 85062,	-- Exterminator Lemmy
						["coord"] = { 62.5, 73.8, SPIRES_OF_ARAK },
					}),
					q(36316, {	-- Victory is Within Reach
						["sourceQuest"] = 35704,	-- When All is Aligned
						["qg"] = 81770,	-- Reshad
						["coord"] = { 46.5, 46.5, SPIRES_OF_ARAK },
					}),
					q(35674, {	-- Wanted: Keeho's Severed Paw (Alliance)
						["icon"] = 632821,
						["sourceQuest"] = 35286,	-- Orders, Commander?
						["provider"] = { "o", 233100 },	-- Wanted Poster
						["coord"] = { 39.6, 61.3, SPIRES_OF_ARAK },
						["races"] = ALLIANCE_ONLY,
					}),
					q(35669, {	-- Wanted: Keeho's Severed Paw (Horde)
						["icon"] = 632821,
						["sourceQuest"] = 35277,	-- Orders, Commander?
						["provider"] = { "o", 233099 },	-- Wanted Poster
						["coord"] = { 40.1, 43.0, SPIRES_OF_ARAK },
						["races"] = HORDE_ONLY,
					}),
					q(35675, {	-- Wanted: Spineslicer's Husk (Alliance)
						["icon"] = 632821,
						["sourceQuest"] = 35286,	-- Orders, Commander?
						["provider"] = { "o", 233100 },	-- Wanted Poster
						["coord"] = { 39.6, 61.3, SPIRES_OF_ARAK },
						["races"] = ALLIANCE_ONLY,
					}),
					q(35670, {	-- Wanted: Spineslicer's Husk (Horde)
						["icon"] = 632821,
						["sourceQuest"] = 35277,	-- Orders, Commander?
						["provider"] = { "o", 233099 },	-- Wanted Poster
						["coord"] = { 40.1, 43.0, SPIRES_OF_ARAK },
						["races"] = HORDE_ONLY,
					}),
					q(35676, {	-- Wanted: Venombarb (Alliance)
						["icon"] = 632821,
						["sourceQuest"] = 35286,	-- Orders, Commander?
						["provider"] = { "o", 233100 },	-- Wanted Poster
						["coord"] = { 39.6, 61.3, SPIRES_OF_ARAK },
						["races"] = ALLIANCE_ONLY,
					}),
					q(35672, {	-- Wanted: Venombarb (Horde)
						["icon"] = 632821,
						["sourceQuest"] = 35277,	-- Orders, Commander?
						["provider"] = { "o", 233099 },	-- Wanted Poster
						["coord"] = { 40.1, 43.0, SPIRES_OF_ARAK },
						["races"] = HORDE_ONLY,
					}),
					warchiefscommand(q(49548, {	-- Warchief's Command: Spires of Arak!
						["timeline"] = { ADDED_7_3_5 },
						["races"] = HORDE_ONLY,
						["isBreadcrumb"] = true,
						["lvl"] = 96,
					})),
					q(35295, {	-- What's Theirs is Ours
						["sourceQuest"] = 35277,	-- Orders, Commander?
						["qg"] = 81959,	-- Shadow Hunter Ukambe
						["coord"] = { 40.2, 43.3, SPIRES_OF_ARAK },
						["races"] = HORDE_ONLY,
					}),
					q(35704, {  -- When All Is Aligned
						["sourceQuest"] = 36085,	-- On Ebon Wings
						["qg"] = 84262,	-- Reshad
						["coord"] = { 46.5, 54.3, SPIRES_OF_ARAK },
						["groups"] = {
							i(258745, {	-- High Arakkoan Library Shelf (DECOR!)
								["timeline"] = { ADDED_12_0_0 },
							}),
							i(114905),	-- Talon Guard Bow
							i(114910),	-- Talon Guard Cudgel
							i(114906),	-- Talon Guard Dagger
							i(114908),	-- Talon Guard Glaive
							i(114903),	-- Talon Guard Shortblade
							i(114909),	-- Talon Guard Staff
							i(114907),	-- Talon Guard Wingclipper
							i(114904),	-- Talon Guard Wingsmasher
						},
					}),
					q(34922, {	-- Words of the Raven Mother
						["sourceQuest"] = 35007,	-- Rendezvous with the Ritualists
						["qg"] = 80740,	-- Ravenspeaker Sekara
						["coord"] = { 54.8, 54.1, SPIRES_OF_ARAK },
					}),
					n(BONUS_OBJECTIVES, {
						-- TODO: Check SQ
						q(36860, {	-- Assault on Lost Veil Anzu
							["coord"] = { 73.0, 43.0, SPIRES_OF_ARAK },
							["isRepeatable"] = true,
							-- This is the only bonus objective without A/H difference
						}),
						q(36490, {	-- Assault on Pillars of Fate (A)
							["coord"] = { 72.0, 26.0, SPIRES_OF_ARAK },
							["races"] = ALLIANCE_ONLY,
							["isRepeatable"] = true,
						}),
						q(36491, {	-- Assault on Pillars of Fate (H)
							["coord"] = { 72.0, 26.0, SPIRES_OF_ARAK },
							["races"] = HORDE_ONLY,
							["isRepeatable"] = true,
						}),
						q(36069, {	-- Assault on Skettis (A)
							["coord"] = { 56.0, 10.0, SPIRES_OF_ARAK },
							["races"] = ALLIANCE_ONLY,
							["isRepeatable"] = true,
						}),
						q(36070, {	-- Assault on Skettis (H)
							["coord"] = { 56.0, 10.0, SPIRES_OF_ARAK },
							["races"] = HORDE_ONLY,
							["isRepeatable"] = true,
						}),
						q(36792, {	-- Bladefist Hold
							["coord"] = { 29.2, 30.0, SPIRES_OF_ARAK },
						}),
						q(36660, {	-- Bloodmane Pridelands
							["coord"] = { 48.0, 71.4, SPIRES_OF_ARAK },
						}),
						q(36590, {	-- The Howling Crag
							["coord"] = { 65.0, 25.9, SPIRES_OF_ARAK },
						}),
						q(35649, {	-- The Writhing Mire
							["coord"] = { 33.2, 43.3, SPIRES_OF_ARAK },
						}),
					}),
				}),
				n(RARES, {
					-- Coords have been confirmed on rares except for Edge of Reality and some noted rares on longer spawn timers.
					n(84887, {	-- Betsi Boombasket
						["questID"] = 36291,
						["coord"] = { 58.4, 84.2, SPIRES_OF_ARAK },
						["groups"] = { i(116907) },	-- Betsi's Boomstick
					}),
					n(80614, {	-- Blade-Dancer Aeryx
						["questID"] = 35599,
						["coord"] = { 46.8, 23.2, SPIRES_OF_ARAK },
					}),
					n(84856, {	-- Blightglow
						["questID"] = 36283,
						["coords"] = {
							{ 64.4, 65.6, SPIRES_OF_ARAK },
							{ 65.2, 67.8, SPIRES_OF_ARAK },
						},
						["groups"] = { i(118205) },	-- Blightglow Pauldrons
					}),
					n(84807, {	-- Durkath Steelmaw
						["questID"] = 36267,
						["coord"] = { 46.4, 28.6, SPIRES_OF_ARAK },
						["groups"] = { i(118198) },	-- Steelmaw's Stompers
					}),
					n(80372, {	-- Echidna
						["questID"] = 37406,
						["coord"] = { 69.3, 53.9, SPIRES_OF_ARAK },
						["isDaily"] = true,
					}),
					n(84890, {	-- Festerbloom
						["questID"] = 36297,
						["coord"] = { 54.8, 39.8, SPIRES_OF_ARAK },
						["groups"] = { i(118200) },	-- Vile Branch of Festerbloom
					}),
					n(85036, {	-- Formless Nightmare
						["description"] = "Located inside the void portal phase.",
						["questID"] = 37360,
						["isDaily"] = true,
						["coord"] = { 72.2, 19.6, SPIRES_OF_ARAK },
						["groups"] = { i(119373) },	-- Nightmare-Chain Bracers
					}),
					n(86978, {	-- Gaze
						["description"] = "Click on the Fel Tome to summon.",
						["questID"] = 36943,
						["coord"] = { 25.2, 24.2, SPIRES_OF_ARAK },
						["groups"] = { i(118696) },	-- Eye of Gaze
					}),
					n(87029, {	-- Giga Sentinel
						["questID"] = 37393,
						["isDaily"] = true,
						["coord"] = { 71.6, 44.8, SPIRES_OF_ARAK },	-- **Coords unconfirmed, relied on wowhead**
						["lvl"] = 100,
						["groups"] = { i(119401) },	-- Sentinel's Wingblade
					}),
					n(87019, {	-- Gluttonous Giant
						["questID"] = 37390,
						["isDaily"] = true,
						["coord"] = { 74.6, 43.6, SPIRES_OF_ARAK },
						["lvl"] = 100,
						["groups"] = { i(119404) },	-- Glowing Morel
					}),
					n(84951, {	-- Gobblefin
						["questID"] = 36305,
						["coord"] = { 33.6, 58.8, SPIRES_OF_ARAK },
						["lvl"] = lvlsquish(100, 100, 40),
					}),
					n(86724, {	-- Hermit Palefur
						["questID"] = 36887,
						["coord"] = { 59.2, 14.8, SPIRES_OF_ARAK },
						["groups"] = { i(118279) },	-- Hermit's Hood
					}),
					n(84955, {	-- Jiasska the Sporegorger
						["questID"] = 36306,
						["coord"] = { 56.6, 94.6, SPIRES_OF_ARAK },
						["groups"] = { i(118202) },	-- Fungus-Infected Hydra Lung
					}),
					n(84810, {	-- Kalos the Bloodbathed
						["questID"] = 36268,
						["coord"] = { 62.8, 37.6, SPIRES_OF_ARAK },
						["groups"] = { i(118735) },	-- Bloodbathed Outcast Robes
					}),
					n(85037, {	-- Kenos the Unraveler
						["description"] = "Located inside the void portal phase. Requires 3 people to click orb.",
						["questID"] = 37361,
						["isDaily"] = true,
						["coord"] = { 70.6, 24.2, SPIRES_OF_ARAK },
						["groups"] = { i(119354) },	-- Cowl of the Unraveller
					}),
					n(87026, {	-- Mecha Plunderer
						["questID"] = 37391,
						["isDaily"] = true,
						["coord"] = { 74.4, 38.6, SPIRES_OF_ARAK },
						["lvl"] = 100,
						["groups"] = { i(119398) },	-- Plunderer's Drill
					}),
					n(86621, {	-- Morphed Sentient
						["questID"] = 37493,
						["isDaily"] = true,
						["coord"] = { 73.6, 45.0, SPIRES_OF_ARAK },	-- **Coords unconfirmed, relied on wowhead**
						["lvl"] = 100,
					}),
					n(84417, {	-- Mutafen
						["questID"] = 36396,
						["coords"] = {
							{ 53.2, 89.0, SPIRES_OF_ARAK },
							{ 54.8, 88.6, SPIRES_OF_ARAK },
						},
						["groups"] = { i(118206) },	-- Mutafen's Mighty Maul
					}),
					n(82247, {	-- Nas Dunberlin
						["questID"] = 36129,
						["coord"] = { 36.6, 52.4, SPIRES_OF_ARAK },
						["groups"] = { i(116837) },	-- Spooky Scythe
					}),
					n(84872, {	-- Oskiira the Vengeful
						["questID"] = 36288,
						["coord"] = { 65.0, 54.0, SPIRES_OF_ARAK },
						["groups"] = { i(118204) },	-- Oskiira's Mercy
					}),
					n(84838, {	-- Poisonmaster Bortusk
						["questID"] = 36279,
						["coord"] = { 59.6, 37.6, SPIRES_OF_ARAK },
						["groups"] = { i(118199) },	-- Poison Cask
					}),
					n(85504, {	-- Rotcap
						["questID"] = 36470,
						["coord"] = { 38.4, 27.4, SPIRES_OF_ARAK },
						["groups"] = { i(118107) },	-- Brilliant Spore (PET!)
					}),
					n(84833, {	-- Sangrikass
						["questID"] = 36276,
						["coord"] = { 68.8, 49.0, SPIRES_OF_ARAK },
						["groups"] = { i(118203) },	-- Moultingskin Tunic
					}),
					n(79938, {	-- Shadowbark
						["questID"] = 36478,
						["coord"] = { 51.8, 35.6, SPIRES_OF_ARAK },
						["groups"] = { i(118201) },	-- Shadowbark's Skin
					}),
					n(87027, {	-- Shadow Hulk
						["questID"] = 37392,
						["isDaily"] = true,
						["coord"] = { 71.25, 33.24, SPIRES_OF_ARAK },
						["lvl"] = 100,
						["groups"] = { i(119363) },	-- Stretchy Purple Pants
					}),
					n(83990, {	-- Solar Magnifier
						["questID"] = 37394,
						["isDaily"] = true,
						["coord"] = { 52.0, 7.6, SPIRES_OF_ARAK },
						["groups"] = { i(119407) },	-- Cloudsplitter Greatstaff
					}),
					n(85026, {	-- Soul-Twister Torek
						["questID"] = 37358,
						["isDaily"] = true,
						["coord"] = { 72.6, 19.6, SPIRES_OF_ARAK },
						["groups"] = {
							i(119178),	-- Black Whirlwind (TOY!)
							i(119410),	-- Soultwisting Staff
						},
					}),
					n(84805, {	-- Stonespite
						["questID"] = 36265,
						["coord"] = { 33.6, 22.0, SPIRES_OF_ARAK },
						["groups"] = { i(116858) },	-- Stonespite Scale Leggings
					}),
					n(84912, {	-- Sunderthorn
						["questID"] = 36298,
						["coord"] = { 58.6, 45.0, SPIRES_OF_ARAK },
						["description"] = "This rare can sometimes bug out. If you fly in fast enough, you can still kill enough wasps to get her to spawn. Melee classes may find this near impossible.",
						["groups"] = { i(116855) },	-- Stingtail's Toxic Stinger
					}),
					n(85520, {	-- Swarmleaf
						["questID"] = 36472,
						["coord"] = { 52.8, 54.8, SPIRES_OF_ARAK },
						["groups"] = { i(116857) },	-- Stave of Buzzing Bark
					}),
					n(84836, {	-- Talonbreaker <Bloodmane High Shaman>
						["questID"] = 36278,
						["coord"] = { 54.6, 63.2, SPIRES_OF_ARAK },
						["groups"] = { i(116838) },	-- Talonbreaker Talisman
					}),
					n(84775, {	-- Tesska the Broken
						["questID"] = 36254,
						["coord"] = { 57.2, 73.8, SPIRES_OF_ARAK },
						["groups"] = { i(116852) },	-- Tesska's Cursed Talisman
					}),
					n(82050, {	-- Varasha
						["questID"] = 35334,
						["coords"] = {
							{ 29.6, 42.0, SPIRES_OF_ARAK },	-- Varasha
							{ 31.5, 43.3, SPIRES_OF_ARAK },	-- Cave Entrance
						},
						["groups"] = { i(118207) },	-- Hydraling (PET!)
					}),
					n(85078, {	-- Voidreaver Urnae
						["questID"] = 37359,
						["isDaily"] = true,
						["coords"] = {
							{ 73.6, 31.2, SPIRES_OF_ARAK },
							{ 74.8, 32.4, SPIRES_OF_ARAK },
						},
						["groups"] = { i(119392) },	-- Voidreaver's Axe
					}),
				}),
				n(TREASURES, {
					o(235313, {	-- Abandoned Mining Pick (cannot be transmogged)
						["questID"] = 36458,
						["coord"] = { 40.6, 55.0, SPIRES_OF_ARAK },
						["groups"] = { i(116913) },	-- Peon's Mining Pick
					}),
					o(235365, {	-- Admiral Taylor's Coffer
						["description"] = "The key is on a stone behind a skeleton in front of the closed mine, south of the garrison. (37.7, 56.3)",
						["questID"] = 36462,
						["coord"] = { 36.2, 54.4, SPIRES_OF_ARAK },
						["groups"] = { i(119348) },	-- Admiral Taylor's Garrison Log
					}),
					o(235143, {	-- Assassin's Spear
						["questID"] = 36445,
						["coord"] = { 49.2, 37.3, SPIRES_OF_ARAK },
						["groups"] = { i(116835) },	-- Assassin's Spear
					}),
					o(232989, {	-- Basket of Arakkoa Goods
						["description"] = "Must establish your outpost to get this treasure.",
						["questID"] = 35627,
						["coords"] = {
							{ 40.1, 60.3, SPIRES_OF_ARAK },	-- Alliance
							{ 40.1, 43.9, SPIRES_OF_ARAK },	-- Horde
						},
					}),
					o(234473, {	-- Campaign Contributions
						["description"] = "On a shelf above the doorway.",
						["questID"] = 36367,
						["coord"] = { 55.5, 90.8, SPIRES_OF_ARAK },
					}),
					o(235299, {	-- Coinbender's Payment
						["questID"] = 36453,
						["coord"] = { 68.4, 89.0, SPIRES_OF_ARAK },
					}),
					o(234704, {	-- Elixir of Shadow Sight
						["repeatable"] = true,
						["questID"] = 36397,
						["coord"] = { 43.8, 24.7, SPIRES_OF_ARAK },
						["icon"] = 134746,
						["groups"] = { i(115463) },	-- Elixir of Shadow Sight
					}),
					o(234736, {	-- Elixir of Shadow Sight
						["repeatable"] = true,
						["questID"] = 36401,
						["coord"] = { 53.1, 84.5, SPIRES_OF_ARAK },
						["icon"] = 134746,
						["groups"] = { i(115463) },	-- Elixir of Shadow Sight
					}),
					o(234705, {	-- Elixir of Shadow Sight
						["repeatable"] = true,
						["questID"] = 36398,
						["coord"] = { 69.2, 43.5, SPIRES_OF_ARAK },
						["icon"] = 134746,
						["groups"] = { i(115463) },	-- Elixir of Shadow Sight
					}),
					o(234703, {	-- Elixir of Shadow Sight
						["repeatable"] = true,
						["questID"] = 36395,
						["coord"] = { 43.9, 15.0, SPIRES_OF_ARAK },
						["icon"] = 134746,
						["groups"] = { i(115463) },	-- Elixir of Shadow Sight
					}),
					o(234735, {	-- Elixir of Shadow Sight
						["repeatable"] = true,
						["questID"] = 36400,
						["coord"] = { 55.6, 22.1, SPIRES_OF_ARAK },
						["icon"] = 134746,
						["groups"] = { i(115463) },	-- Elixir of Shadow Sight
					}),
					o(234734, {	-- Elixir of Shadow Sight
						["repeatable"] = true,
						["questID"] = 36399,
						["coord"] = { 48.9, 62.5, SPIRES_OF_ARAK },
						["icon"] = 134746,
						["groups"] = { i(115463) },	-- Elixir of Shadow Sight
					}),
					o(235097, {	-- Ephial's Dark Grimoire
						["questID"] = 36418,
						["coord"] = { 36.5, 57.9, SPIRES_OF_ARAK },
						["icon"] = 134746,
						["groups"] = { i(116914) },	-- Ephial's Grimoire
					}),
					o(234157, {	-- Fractured Sunstone
						["questID"] = 36246,
						["coord"] = { 50.5, 22.1, SPIRES_OF_ARAK },
						["groups"] = { i(116919) },	-- Fractured Sunstone
					}),
					o(235103, {	-- Garrison Supplies
						["questID"] = 36420,
						["coord"] = { 37.2, 47.5, SPIRES_OF_ARAK },
					}),
					o(235289, {	-- Garrison Workman's Hammer
						["questID"] = 36451,
						["coord"] = { 41.8, 50.5, SPIRES_OF_ARAK },
						["description"] = "This treasure is bugged as of 8.0.1. The hammer can be seen in the cart from a distance but disappears when you approach it due to zone phasing. If you fly in fast enough, you can still loot it.",
						["groups"] = { i(116918) },	-- Garrison Workman's Hammer
					}),
					o(234618, {	-- Gift of Anzu
						["description"] = "Drink an Elixir of Shadow Sight near the Shrine to get the Gift of Anzu.",
						["cost"] = {{ "i", 115463, 1 }},	-- Elixir of Shadow Sight
						["questID"] = 36381,
						["coord"] = { 61.1, 55.3, SPIRES_OF_ARAK },
						["modelScale"] = 0.4,
						["groups"] = { i(118240) },	-- Anzu's Scything Talon
					}),
					n(86961, {	-- Gift of Anzu
						["description"] = "Drink an Elixir of Shadow Sight near the Shrine to get the Gift of Anzu.",
						["cost"] = {{ "i", 115463, 1 }},	-- Elixir of Shadow Sight
						["questID"] = 36386,
						["coord"] = { 48.6, 44.4, SPIRES_OF_ARAK },
						["icon"] = 132372,	-- TODO: not working
						["groups"] = { i(118237) },	-- Anzu's Malice
					}),
					n(86941, {	-- Gift of Anzu
						["description"] = "Drink an Elixir of Shadow Sight near the Shrine to get the Gift of Anzu.",
						["cost"] = {{ "i", 115463, 1 }},	-- Elixir of Shadow Sight
						["questID"] = 36388,
						["coord"] = { 42.42, 26.69, SPIRES_OF_ARAK },
						["icon"] = 132372,	-- TODO: not working
						["groups"] = { i(118242) },	-- Anzu's Scorn
					}),
					n(86962, {	-- Gift of Anzu
						["description"] = "Drink an Elixir of Shadow Sight near the Shrine to get the Gift of Anzu.",
						["cost"] = {{ "i", 115463, 1 }},	-- Elixir of Shadow Sight
						["questID"] = 36389,
						["coord"] = { 46.9, 40.46, SPIRES_OF_ARAK },
						["icon"] = 132372,	-- TODO: not working
						["groups"] = { i(118238) },	-- Anzu's Reach
					}),
					n(86953, {	-- Gift of Anzu
						["description"] = "Drink an Elixir of Shadow Sight near the Shrine to get the Gift of Anzu.",
						["cost"] = {{ "i", 115463, 1 }},	-- Elixir of Shadow Sight
						["questID"] = 36390,
						["coord"] = { 57.01, 78.93, SPIRES_OF_ARAK },
						["icon"] = 132372,	-- TODO: not working
						["groups"] = { i(118241) },	-- Anzu's Piercing Talon
					}),
					n(86956, {	-- Gift of Anzu
						["description"] = "Drink an Elixir of Shadow Sight near the Shrine to get the Gift of Anzu.",
						["cost"] = {{ "i", 115463, 1 }},	-- Elixir of Shadow Sight
						["questID"] = 36392,
						["coord"] = { 52.0, 19.7, SPIRES_OF_ARAK },
						["icon"] = 132372,	-- TODO: not working
						["groups"] = { i(118239) },	-- Anzu's Stoicism
					}),
					o(235141, {	-- Iron Horde Explosives
						["questID"] = 36444,
						["coord"] = { 50.4, 25.8, SPIRES_OF_ARAK },
						["groups"] = { i(118691) },	-- Iron Horde Explosives
					}),
					o(234159, {	-- Lost Herb Satchel
						["questID"] = 36247,
						["coord"] = { 50.7, 28.7, SPIRES_OF_ARAK },
					}),
					o(235091, {	-- Lost Ring
						["questID"] = 36411,
						["coord"] = { 47.8, 36.1, SPIRES_OF_ARAK },
						["groups"] = { i(116911) },	-- Outcast Decoder Ring
					}),
					o(235095, {	-- Misplaced Scroll
						["questID"] = 36416,
						["coord"] = { 52.5, 42.7, SPIRES_OF_ARAK },
					}),
					o(234154, {	-- Misplaced Scrolls
						["questID"] = 36244,
						["icon"] = 454060,
						["coord"] = { 42.7, 18.3, SPIRES_OF_ARAK },
						["groups"] = { i(109585) },	-- Arakkoa Cipher
					}),
					o(235300, {	-- Mysterious Mushrooms
						["questID"] = 36454,
						["coord"] = { 63.6, 67.4, SPIRES_OF_ARAK },
					}),
					o(232458, {	-- Nizzix's Chest
						["questID"] = 35481,
						["coord"] = { 60.9, 87.8, SPIRES_OF_ARAK },
					}),
					o(234744, {	-- Offering to the Raven Mother
						["questID"] = 36403,
						["coord"] = { 53.31, 55.51, SPIRES_OF_ARAK },
						["groups"] = { i(118267) },	-- Ravenmother Offering
					}),
					o(234746, {	-- Offering to the Raven Mother
						["questID"] = 36405,
						["coord"] = { 48.3, 52.6, SPIRES_OF_ARAK },
						["groups"] = { i(118267) },	-- Ravenmother Offering
					}),
					o(234748, {	-- Offering to the Raven Mother
						["questID"] = 36406,
						["coord"] = { 48.9, 54.7, SPIRES_OF_ARAK },
						["groups"] = { i(118267) },	-- Ravenmother Offering
					}),
					o(235073, {	-- Offering to the Raven Mother
						["questID"] = 36407,
						["coord"] = { 51.9, 64.6, SPIRES_OF_ARAK },
						["groups"] = { i(118267) },	-- Ravenmother Offering
					}),
					o(235090, {	-- Offering to the Raven Mother
						["questID"] = 36410,
						["coord"] = { 61.0, 63.8, SPIRES_OF_ARAK },
						["groups"] = { i(118267) },	-- Ravenmother Offering
					}),
					o(234740, {	-- Orcish Signaling Horn
						["questID"] = 36402,
						["coord"] = { 36.3, 39.5, SPIRES_OF_ARAK },
						["groups"] = { i(120337) },	-- Novice Rylak Hunter's Horn
					}),
					o(234432, {	-- Ogron Plunder
						["questID"] = 36340,
						["coord"] = { 58.7, 60.3, SPIRES_OF_ARAK },
						["groups"] = { i(116922) },	-- Burglar's Vest
					}),
					o(234147, {	-- Outcast's Belongings
						["questID"] = 36243,
						["coord"] = { 36.8, 17.2, SPIRES_OF_ARAK },
						["sym"] = COMMON_TREASURE_SYM,
					}),
					o(235172, {	-- Outcast's Belongings
						["questID"] = 36447,
						["coord"] = { 42.1, 21.7, SPIRES_OF_ARAK },
						["sym"] = COMMON_TREASURE_SYM,
					}),
					o(235168, {	-- Outcast's Pouch
						["questID"] = 36446,
						["coord"] = { 46.9, 34.0, SPIRES_OF_ARAK },
						["sym"] = COMMON_TREASURE_SYM,
					}),
					o(243280, {	-- Pirate Pepe
						["coord"] = { 54.11, 83.61, SPIRES_OF_ARAK },
						["timeline"] = { ADDED_6_2_0 },
						["groups"] = { i(127870) },	-- A Tiny Pirate Hat (Pepe!)
					}),
					o(234449, {	-- Relics of the Outcasts
						["questID"] = 36355,
						["icon"] = 1002596,
						["coord"] = { 43.2, 27.2, SPIRES_OF_ARAK },
						["description"] = "Must have archaeology.",
					}),
					o(234454, {	-- Relics of the Outcasts
						["description"] = "Requires archaeology.",
						["questID"] = 36359,
						["icon"] = 1002596,
						["coord"] = { 60.2, 53.8, SPIRES_OF_ARAK },
					}),
					o(234446, {	-- Relics of the Outcasts
						["description"] = "Requires archaeology.",
						["questID"] = 36354,
						["icon"] = 1002596,
						["coord"] = { 45.9, 44.2, SPIRES_OF_ARAK },
					}),
					o(234451, {	-- Relics of the Outcasts
						["description"] = "Requires archaeology.",
						["questID"] = 36356,
						["icon"] = 1002596,
						["coord"] = { 67.5, 39.9, SPIRES_OF_ARAK },
					}),
					o(234455, {	-- Relics of the Outcasts
						["description"] = "Requires archaeology.",
						["questID"] = 36360,
						["icon"] = 1002596,
						["coord"] = { 51.8, 48.9, SPIRES_OF_ARAK },
					}),
					o(234155, {	-- Relics of the Outcasts
						["description"] = "Requires archaeology.",
						["questID"] = 36245,
						["icon"] = 1002596,
						["coord"] = { 43.0, 16.5, SPIRES_OF_ARAK },
					}),
					o(233975, {	-- Rooby's Roo
						["description"] = "Buy 3 Rooby Treats from Miril Dumonde in the basement of the inn and feed them to Rooby on the main floor of the inn. Follow Rooby and feed him each time he stops until he leaves his treasure.",
						["questID"] = 36657,
						["coord"] = { 37.3, 50.7, SPIRES_OF_ARAK },
						["groups"] = { i(116887) },	-- Rooby Roo's Ruby Rollar
					}),
					n(85206, {	-- Rukhmar's Image
						["questID"] = 36377,
						["coord"] = { 44.4, 12.0, SPIRES_OF_ARAK },
					}),
					o(234472, {	-- Sailor Zazzuk's 180-Proof Rum
						["questID"] = 36366,
						["coord"] = { 55.5, 90.8, SPIRES_OF_ARAK },
					}),
					n(85190, {	-- Sethekk Idol
						["questID"] = 36375,
						["coord"] = { 68.2, 38.8, SPIRES_OF_ARAK },
					}),
					o(235282, {	-- Sethekk Ritual Brew
						["questID"] = 36450,
						["coord"] = { 71.6, 48.6, SPIRES_OF_ARAK },
					}),
					o(234458, {	-- Shattered Hand Cache
						["questID"] = 36362,
						["coord"] = { 56.2, 28.8, SPIRES_OF_ARAK },
					}),
					o(234456, {	-- Shattered Hand Lockbox
						["questID"] = 36361,
						["coord"] = { 47.9, 30.7, SPIRES_OF_ARAK },
						["groups"] = { i(116920) },	-- True Steel Lockbox
					}),
					o(235310, {	-- Shredder Parts
						["questID"] = 36456,
						["coord"] = { 60.9, 84.6, SPIRES_OF_ARAK },
					}),
					o(380963, {	-- Small Pile of Ash
						["description"] = "Some North locations are phased until completing 'Orders From On High' (34658)",
						["sourceQuest"] = 34658,	-- Orders From On High
						["timeline"] = { ADDED_10_0_7 },
						["coords"] = {
							{ 37.9, 17.9, SPIRES_OF_ARAK },
							{ 42.1, 15.8, SPIRES_OF_ARAK },
							{ 44.0, 13.7, SPIRES_OF_ARAK },
							{ 44.5, 23.4, SPIRES_OF_ARAK },
							{ 45.1, 15.0, SPIRES_OF_ARAK },
							{ 52.0, 31.3, SPIRES_OF_ARAK },
							{ 52.2, 49.9, SPIRES_OF_ARAK },
							{ 61.9, 42.3, SPIRES_OF_ARAK },
							{ 68.7, 44.6, SPIRES_OF_ARAK },
						},
						["groups"] = { i(199097) },	-- Sacred Phoenix Ash
					}),
					o(235135, {	-- Smuggled Apexis Artifacts
						["description"] = "Requires archaeology.",
						["questID"] = 36433,
						["icon"] = 1002596,
						["coord"] = { 56.3, 45.3, SPIRES_OF_ARAK },
					}),
					o(234471, {	-- Spray-O-Matic 5000 XT
						["questID"] = 36365,
						["coord"] = { 59.7, 81.5, SPIRES_OF_ARAK },
					}),
					n(85165, {	-- Statue of Anzu
						["questID"] = 36374,
						["coord"] = { 57.8, 22.2, SPIRES_OF_ARAK },
					}),
					o(235104, {	-- Sun-Touched Cache
						["description"] = "Requires archaeology.",
						["questID"] = 36421,
						["icon"] = 1002596,
						["coord"] = { 34.1, 27.5, SPIRES_OF_ARAK },
					}),
					o(235105, {	-- Sun-Touched Cache
						["description"] = "Requires archaeology.",
						["questID"] = 36422,
						["icon"] = 1002596,
						["coord"] = { 33.3, 27.3, SPIRES_OF_ARAK },
					}),
					o(234461, {	-- Toxicfang Venom
						["questID"] = 36364,
						["coord"] = { 54.4, 32.4, SPIRES_OF_ARAK },
						["groups"] = { i(118695) },	-- Toxicfang Venom
					}),
					o(235307, {	-- Waterlogged Satchel
						["questID"] = 36455,
						["coord"] = { 66.5, 56.5, SPIRES_OF_ARAK },
						["sym"] = COMMON_TREASURE_SYM,
					}),
				}),
				n(VENDORS, {
					n(SMUGGLERS_DEN, {
						n(82459, {	-- Honest Jim
							["description"] = "Use the |cFFFFD700Smuggling Run!|r ability to summon.",
							["races"] = ALLIANCE_ONLY,
							["groups"] = {
								i(113096, {	-- Bloodmane Charm (TOY!)
									["cost"] = 5000000,	-- 500g
									["isLimited"] = true,
								}),
								i(79249),	-- Fel-Charred Tome
								i(113094, {	-- Gronnskin Bag
									["cost"] = 22000000,	-- 2,200g
									["isLimited"] = true,
								}),
								i(116915, {	-- Inactive Apexis Guardian
									["isLimited"] = true,
									["groups"] = { follower(168) },	-- Ziri'ak
								}),
								i(113277, {	-- Ogreblood Potion
									["isLimited"] = true,
								}),
								i(113273, {	-- Orb of the Soulstealer
									["isLimited"] = true,
								}),
								i(113274, {	-- Plume of Celerity
									["isLimited"] = true,
								}),
								i(113276, {	-- Pridehunter's Fang
									["isLimited"] = true,
								}),
								i(113275, {	-- Ravenlord's Talon
									["isLimited"] = true,
								}),
								i(113278, {	-- Scavenger's Eyepiece
									["isLimited"] = true,
								}),
								i(117415, {	-- Smuggled Tonic
									["isLimited"] = true,
								}),
								i(113290),	-- Spirevine Fruit
							},
						}),
						n(84243, {	-- Linny "The Skinny" Leadpockets
							["description"] = "Use the |cFFFFD700Smuggling Run!|r ability to summon.",
							["races"] = HORDE_ONLY,
							["groups"] = {
								i(113096, {	-- Bloodmane Charm (TOY!)
									["cost"] = 5000000,	-- 500g
									["isLimited"] = true,
								}),
								i(79249),	-- Fel-Charred Tome
								i(113094, {	-- Gronnskin Bag
									["cost"] = 22000000,	-- 2,200g
									["isLimited"] = true,
								}),
								i(116915, {	-- Inactive Apexis Guardian
									["isLimited"] = true,
									["groups"] = { follower(168) },	-- Ziri'ak
								}),
								i(113277, {	-- Ogreblood Potion
									["isLimited"] = true,
								}),
								i(113273, {	-- Orb of the Soulstealer
									["isLimited"] = true,
								}),
								i(113274, {	-- Plume of Celerity
									["isLimited"] = true,
								}),
								i(113276, {	-- Pridehunter's Fang
									["isLimited"] = true,
								}),
								i(113275, {	-- Ravenlord's Talon
									["isLimited"] = true,
								}),
								i(113278, {	-- Scavenger's Eyepiece
									["isLimited"] = true,
								}),
								i(117415, {	-- Smuggled Tonic
									["isLimited"] = true,
								}),
								i(113290),	-- Spirevine Fruit
							},
						}),
					}),
					n(82432, {	-- Miril Dumonde
						["description"] = "Vendor only sells Admiral Taylor's Greatsword to those who have completed the associated quest.",
						["coord"] = { 37.6, 50.8, SPIRES_OF_ARAK },
						["groups"] = { i(118080) },	-- Admiral Taylor's Greatsword
					}),
					n(87775, {	-- Ruuan the Seer
						["timeline"] = { ADDED_6_0_2 },
						["coord"] = { 46.6, 45.0, SPIRES_OF_ARAK },
						["groups"] = {
							i(258748, {	-- "Rising Glory of Rukhmar" Statue (DECOR!)
								["timeline"] = { ADDED_12_0_0 },
							}),
							i(258741, {	-- Writings of Reshad the Outcast (DECOR!)
								["timeline"] = { ADDED_12_0_0 },
							}),
							i(258749, {	-- Uncorrupted Eye of Terokk (DECOR!)
								["timeline"] = { ADDED_12_0_0 },
							}),
							i(258745, {	-- High Arakkoan Library Shelf (DECOR!)
								["timeline"] = { ADDED_12_0_0 },
							}),
							i(258740, {	-- Glorious Pendant of Rukhmar (DECOR!)
								["timeline"] = { ADDED_12_0_0 },
							}),
						},
					}),
					n(87123, {	-- Vesharr
						["description"] = "Items will be unavailable until you complete the pet battle daily quest |cFFFFD700Vesharr|r.",
						["coord"] = { 46.4, 45.2, SPIRES_OF_ARAK },
						["groups"] = {
							i(120051),	-- Kaliri Hatchling (PET!)
							i(120050, {	-- Veilwatcher Hatchling (PET!)
								["cost"] = 10000000,	-- 1,000g
							}),
						},
					}),
					n(88045, {	-- Zektar
						["sourceQuest"] = 34991,	-- To the... Rescue? [May be earlier in chain, but was available at this point]
						["coord"] = { 52.0, 50.4, SPIRES_OF_ARAK },
						["groups"] = {
							i(199203, {	-- Phoenix Ash Talisman
								["timeline"] = { ADDED_10_0_7 },
								["cost"] = {
									{ "i", 199099,  1 },	-- Glittering Phoenix Ember
									{ "i", 199097, 10 },	-- Sacred Phoenix Ash
									{ "i", 199092, 20 },	-- Inert Phoenix Ash
								},
							}),
						},
					}),
				}),
			},
		}),
	}),
});

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.WOD, bubbleDownSelf({ ["timeline"] = { ADDED_6_0_2 } }, {
	m(DRAENOR, {
		m(SPIRES_OF_ARAK, {
			n(QUESTS, {
				q(35874),	-- Apparatus - triggers after finishing "The Ebon Hunter" (questID 35835 & 35797)
				q(35290),	-- Inn - Inn selected (A)
				q(37315),	-- Inn - Inn selected (A)
				q(35283),	-- Inn - Inn selected (H)
				q(37313),	-- Inn - Inn selected (H)
				q(37417),	-- Feast of the Spires - put down by the barkeep if you have the brewery (A)
				q(37416),	-- Feast of the Spires - put down by the barkeep if you have the brewery (H)
				q(36111),	-- Flight Home
				q(36112),	-- Flight Home
				q(36577),	-- Flying Machine Completed - triggers after landing during "Flame On" (questID 35298)
				q(35028),	-- Krikka and Vakora Tracking - triggers during "The Bloodmane" (questID 34923) and "Words of the Raven Mother" (questID 34922)
				q(35201),	-- Krixel
				q(36184),	-- Mother Lode - triggers when you accept "The Mother Lode" quest and the crash happens (questID 35080)
				q(36885),	-- Ogre Waygate
				q(36724),	-- Reshad Tracking - triggers after turning in "Call of the Raven Mother" (questID 35009)
				q(37317),	-- Talon King Ikiss - killed during "The False Talon King" (questID 35011)
				q(35291),	-- Trading Post - Trading Post selected (A)
				q(37316),	-- Trading Post - Trading Post selected (A)
				q(35284),	-- Trading Post - Trading Post selected (H)
				q(37314),	-- Trading Post - Trading Post selected (H)
			}),
			n(TREASURES, {
				q(36798),	-- Rooby Roo - fed 3x to reveal the treasure
			}),
		}),
	}),
})));
