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
						["races"] = ALLIANCE_ONLY,
						["sym"] = {{ "achievement_criteria" }},
						["g"] = {
							follower(218),	-- Talonpriest Ishaal
						},
					}),
					ach(8926, {	-- Between Arak and a Hard Place (Horde)
						["races"] = HORDE_ONLY,
						["sym"] = {{ "achievement_criteria" }},
						["g"] = {
							follower(218),	-- Talonpriest Ishaal
						},
					}),
					ach(9612),		-- Eggs in One Basket
					explorationAch(8941),		-- Explore Spires of Arak
					ach(9613),		-- Fish Gotta Swim, Birds Gotta Eat
					ach(9601, {		-- King of the Monsters (Lost Veil Anzu)
						["sym"] = {{ "achievement_criteria" }},
					}),
					ach(9072, {	-- Mantle of the Talon King
						["sourceQuest"] = 37177,	-- Call of the Talon King
						["g"] = {
							--title_gendered(278, 279),	-- Talon King / Talon Queen
							title_male(278),	-- Talon King <Name>
							title_female(279),	-- Talon Queen <Name>
							follower(224),	-- Talon Guard Kurekk
						},
					}),
					ach(9600, {		-- Monster Mash (Lost Veil Anzu)
						["sym"] = {{ "achievement_criteria" }},
					}),
					ach(9564, {	-- Securing Draenor (Alliance)
						["collectible"] = false,	-- We want to hide the achievement after the finished the criteria for the zone since they can't earn anything more here
						["races"] = ALLIANCE_ONLY,
						["g"] = {
							crit(26255),	-- Assault on Skettis
							crit(26256),	-- Assault on Pillars of Fate
						},
					}),
					ach(9562, {	-- Securing Draenor (Horde)
						["collectible"] = false,	-- We want to hide the achievement after the finished the criteria for the zone since they can't earn anything more here
						["races"] = HORDE_ONLY,
						["g"] = {
							crit(26240),	-- Assault on Pillars of Fate
							crit(26243),	-- Assault on Skettis
						},
					}),
				}),
				petbattle(filter(BATTLE_PETS, {
					["sym"] = {{"select","speciesID",
						635,	-- Adder (PET!)
						407,	-- Forest Spiderling (PET!)
						1441,	-- Mud Jumper (PET!)
						417,	-- Rat (PET!)
						1587,	-- Royal Moth (PET!)
						568,	-- Silkbead Snail (PET!)
						379,	-- Squirrel (PET!)
						401,	-- Strand Crab (PET!)
						1593,	-- Waterfly (PET!)
						1582,	-- Zangar Crawler (PET!)
					}},
					["groups"] = {
						pet(1462),	-- Bloodsting Wasp (PET!)
						pet(1573),	-- Golden Dawnfeather (PET!)
						pet(1592, {	-- Sapphire Firefly (PET!)
							["description"] = "Only one is up at a time.  Once captured or killed, it immediately respawns.",
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
						["coord"] = { 37.0, 24.6, SPIRES_OF_ARAK },
					}),
					fp(1487, {	-- Axefall, Spires of Arak
						["coord"] = { 39.4, 43.2, SPIRES_OF_ARAK },
						["races"] = HORDE_ONLY,
					}),
					fp(1515, {	-- Crow's Crook, Spires of Arak
						["coord"] = { 51.8, 31.0, SPIRES_OF_ARAK },
					}),
					fp(1510, {	-- Pinchwhistle Gearworks, Spires of Arak
						["coord"] = { 60.8, 73.2, SPIRES_OF_ARAK },
					}),
					fp(1493, {	-- Southport, Spires of Arak
						["coord"] = { 39.0, 61.8, SPIRES_OF_ARAK },
						["races"] = ALLIANCE_ONLY,
					}),
					fp(1509, {	-- Talon Watch, Spires of Arak
						["coord"] = { 61.8, 42.6, SPIRES_OF_ARAK },
					}),
					fp(1508, {	-- Veil Terokk, Spires of Arak
						["coord"] = { 46.2, 44.0, SPIRES_OF_ARAK },
					}),
				}),
				petbattles({ ADDED_6_0_2 }, {
					n(87123, {	-- Vesharr <Grand Master Pet Tamer>
						["coord"] = { 46.4, 45.2, SPIRES_OF_ARAK },
					}),
				}),
				n(QUESTS, {
					n(STOKTRON_BREWERY, {
						["races"] = ALLIANCE_ONLY,
						["g"] = {
							q(35926, {	-- Assassin's Mark
								["sourceQuests"] = { 35915 },	-- Attempted Murder
								["coord"] = { 52.0, 23.5, SPIRES_OF_ARAK },
								["races"] = ALLIANCE_ONLY,
								["provider"] = { "n", 83609 },
							}),
							q(35915, {	-- Attempted Murder
								["sourceQuests"] = { 37329 },	-- Not Here, Not Now
								["coord"] = { 39.6, 60.8, SPIRES_OF_ARAK },
								["races"] = ALLIANCE_ONLY,
								["provider"] = { "n", 83549 },	-- Hulda Shadowblade
							}),
							q(37327, {	-- Befriending the Locals
								["sourceQuests"] = { 35286 },	-- Orders, Commander?
								["coord"] = { 39.8, 60.8, SPIRES_OF_ARAK },
								["races"] = ALLIANCE_ONLY,
								["provider"] = { "n", 81929 },	-- Lieutenant Willem
							}),
							q(37287, {  -- Cleaning House
								["sourceQuests"] = { 36165 },	-- No Time to Waste
								["coord"] = { 39.5, 61.7, SPIRES_OF_ARAK },
								["races"] = ALLIANCE_ONLY,
								["provider"] = { "n", 84291 },	-- Kolrigg Stoktron
								["g"] = {
									i(119001),	-- Mystery Keg (TOY!)
								},
							}),
							q(36023, {	-- Extrinsic Motivation
								["sourceQuests"] = { 35926 },	-- Assassin's Mask
								["coord"] = { 53.5, 27.5, SPIRES_OF_ARAK },
								["races"] = ALLIANCE_ONLY,
								["provider"] = { "n", 83773 },	-- Hulda Shadowblade
							}),
							q(36029, {	-- Gardul Venomshiv
								["sourceQuests"] = {
									36023,	-- Extrinsic Motivation
									35959,	-- The Power of Poison
								},
								["coord"] = { 53.5, 27.5, SPIRES_OF_ARAK },
								["races"] = ALLIANCE_ONLY,
								["provider"] = { "n", 83773 },	-- Hulda Shadowblade
							}),
							q(36165, {	-- No Time to Waste
								["sourceQuests"] = { 36048 },	-- We Have Him Now
								["coord"] = { 57.1, 34.4, SPIRES_OF_ARAK },
								["races"] = ALLIANCE_ONLY,
								["provider"] = { "n", 83900 },	-- Hulda Shadowblade
							}),
							q(37329, {	-- Not Here, Not Now
								["sourceQuests"] = { 37296 },	-- A Lack of Wasps
								["coord"] = { 43.8, 48.9, SPIRES_OF_ARAK },
								["races"] = ALLIANCE_ONLY,
								["provider"] = { "n", 83463 },	-- Dusk-Seer Irizzar
							}),
							q(37281, {	-- Standing United
								["sourceQuests"] = { 36165 },	-- No Time to Waste
								["coord"] = { 39.7, 60.9, SPIRES_OF_ARAK },
								["races"] = ALLIANCE_ONLY,
								["provider"] = { "n", 88195 },	-- Hulda Shadowblade
								["g"] = {
									follower(453),	-- Hulda Shadowblade
								},
							}),
							q(35959, {	-- The Power of Poison
								["sourceQuests"] = { 35926 },	-- Assassin's Mask
								["coord"] = { 53.5, 27.5, SPIRES_OF_ARAK },
								["races"] = ALLIANCE_ONLY,
								["provider"] = { "n", 83773 },	-- Hulda Shadowblade
							}),
							q(36048, {	-- We Have Him Now
								["sourceQuests"] = { 36029 },	-- Gardul Venomshiv
								["coord"] = { 57.1, 34.4, SPIRES_OF_ARAK },
								["races"] = ALLIANCE_ONLY,
								["provider"] = { "n", 83900 },	-- Hulda Shadowblade
							}),
						},
					}),
					n(HEARTHFIRE_TAVERN, {
						["races"] = HORDE_ONLY,
						["g"] = {
							q(35924, {	-- Assassin's Mark
								["sourceQuests"] = { 35907 },	-- Attempted Murder
								["coord"] = { 52.0, 23.5, SPIRES_OF_ARAK },
								["races"] = HORDE_ONLY,
								["provider"] = { "n", 83608 },	-- Dark Ranger Velonara
							}),
							q(35907, {	-- Attempted Murder
								["sourceQuests"] = {
									37326,	-- Befriending the Locals
									37328,	-- Not Here, Not Now
								},
								["coord"] = { 40.0, 43.2, SPIRES_OF_ARAK },
								["races"] = HORDE_ONLY,
								["provider"] = { "n", 83529 },	-- Dark Ranger Velonara
							}),
							q(37326, {	-- Befriending the Locals
								["sourceQuests"] = { 35277 },	-- Orders, Commander?
								["coord"] = { 40.1, 43.5, SPIRES_OF_ARAK },
								["races"] = HORDE_ONLY,
								["provider"] = { "n", 81920 },	-- Taskmaster Gornek
							}),
							q(36022, {	-- Extrinsic Motivation
								["sourceQuests"] = { 35924 },	-- Assassin's Mask
								["coord"] = { 53.5, 27.5, SPIRES_OF_ARAK },
								["races"] = HORDE_ONLY,
								["provider"] = { "n", 83772 },	-- Dark Ranger Velonara
							}),
							q(36028, {	-- Gardul Venomshiv
								["sourceQuests"] = {
									36022,	-- Extrinsic Motivation
									35947,	-- The Power of Poison
								},
								["coord"] = { 53.5, 27.5, SPIRES_OF_ARAK },
								["races"] = HORDE_ONLY,
								["provider"] = { "n", 83772 },	-- Dark Ranger Velonara
							}),
							q(36166, {	-- No Time to Waste
								["sourceQuests"] = { 36047 },	-- We Have Him Now
								["coord"] = { 57.1, 34.4, SPIRES_OF_ARAK },
								["races"] = HORDE_ONLY,
								["provider"] = { "n", 83903 },	-- Dark Ranger Velonara
							}),
							q(37328, {	-- Not Here, Not Now
								["sourceQuests"] = { 37296 },	-- A Lack of Wasps
								["coord"] = { 43.8, 48.9, SPIRES_OF_ARAK },
								["races"] = HORDE_ONLY,
								["provider"] = { "n", 83463 },	-- Dusk-Seer Irizzar
							}),
							q(37292, {  -- Not In Your Army
								["sourceQuests"] = { 36166 },	-- No Time to Waste
								["coord"] = { 40.1, 42.6, SPIRES_OF_ARAK },
								["races"] = HORDE_ONLY,
								["provider"] = { "n", 84292 },	-- Lunzul
								["g"] = {
									i(119001),	-- Mystery Keg (TOY!)
								},
							}),
							q(37276, {	-- Standing United
								["sourceQuests"] = { 36166 },	-- No Time to Waste
								["coord"] = { 40.0, 43.3, SPIRES_OF_ARAK },
								["races"] = HORDE_ONLY,
								["provider"] = { "n", 88179 },	-- Dark Ranger Velonara
								["g"] = {
									follower(453),	-- Dark Ranger Velonara
								},
							}),
							q(35947, {	-- The Power of Poison
								["sourceQuests"] = { 35924 },	-- Assassin's Mask
								["coord"] = { 53.5, 27.5, SPIRES_OF_ARAK },
								["races"] = HORDE_ONLY,
								["provider"] = { "n", 83772 },	-- Dark Ranger Velonara
							}),
							q(36047, {	-- We Have Him Now
								["sourceQuests"] = { 36028 },	--	Gardul Venomshiv
								["coord"] = { 57.1, 34.4, SPIRES_OF_ARAK },
								["races"] = HORDE_ONLY,
								["provider"] = { "n", 83899 },	--	Dark Ranger Velonara
							}),
						},
					}),
					n(SMUGGLERS_DEN, {
						q(35739, {	-- All Natural
							["sourceQuests"] = { 35719 },	-- Back on Track
							["coord"] = { 60.2, 53.1, SPIRES_OF_ARAK },
							["races"] = ALLIANCE_ONLY,
							["provider"] = { "n", 82788 },	-- Dilbert Tinkertoss
						}),
						q(35738, {	-- All Natural
							["sourceQuests"] = { 35718 },	-- Back on Track
							["coord"] = { 60.1, 53.1, SPIRES_OF_ARAK },
							["races"] = HORDE_ONLY,
							["provider"] = { "n", 82786 },	-- Trixxy Weldblast
						}),
						q(35719, {	-- Back on Track
							["sourceQuests"] = {
								35878,	-- Safety Measures
								35716,	-- Sticky Situation
							},
							["coord"] = { 56.2, 42.4, SPIRES_OF_ARAK },
							["races"] = ALLIANCE_ONLY,
							["provider"] = { "n", 82759 },	-- Filbert Tinkertoss
						}),
						q(35718, {	-- Back on Track
							["sourceQuests"] = {
								35879,	-- Safety Measures
								35706,	-- Sticky Situation
							},
							["coord"] = { 56.0, 40.8, SPIRES_OF_ARAK },
							["races"] = HORDE_ONLY,
							["provider"] = { "n", 82713 },	-- Mixxy Weldblast
						}),
						q(35705, {	-- Best Deals Anywhere
							["sourceQuests"] = { 37330 },	-- Not Here, Not Now
							["coord"] = { 40.0, 43.1, SPIRES_OF_ARAK },
							["races"] = HORDE_ONLY,
							["provider"] = { "n", 82691 },	-- Provisioner Galgar
						}),
						q(35782, {	-- I See Dead Arakkoa
							["sourceQuests"] = { 35719 },	-- Back on Track
							["coord"] = { 60.2, 53.1, SPIRES_OF_ARAK },
							["races"] = ALLIANCE_ONLY,
							["provider"] = { "n", 82788 },	-- Dilbert Tinkertoss
						}),
						q(35766, {	-- I See Dead Arakkoa
							["sourceQuests"] = { 35718 },	-- Back on Track
							["coord"] = { 60.1, 53.1, SPIRES_OF_ARAK },
							["races"] = HORDE_ONLY,
							["provider"] = { "n", 82786 },	-- Trixxy Weldblast
						}),
						q(37331, {	-- Not Here, Not Now
							["sourceQuests"] = { 37296 },	-- A Lack of Wasps
							["coord"] = { 43.9, 48.8, SPIRES_OF_ARAK },
							["races"] = ALLIANCE_ONLY,
							["provider"] = { "n", 83463 },	-- Dusk-Seer Irizzar
						}),
						q(37330, {	-- Not Here, Not Now
							["sourceQuests"] = { 37296 },	-- A Lack of Wasps
							["coord"] = { 43.9, 48.8, SPIRES_OF_ARAK },
							["races"] = HORDE_ONLY,
							["provider"] = { "n", 83463 },	-- Dusk-Seer Irizzar
						}),
						q(35699, {	-- Peace Offering (Alliance)
							["sourceQuests"] = { 35286 },	-- Orders, Commander?
							["coord"] = { 39.5, 61.2, SPIRES_OF_ARAK },
							["races"] = ALLIANCE_ONLY,
							["provider"] = { "n", 82709 },	-- Milly Osworth
						}),
						q(35697, {	-- Peace Offering (Horde)
							["sourceQuests"] = { 35277 },	-- Orders, Commander?
							["races"] = HORDE_ONLY,
							["coord"] = { 40.0, 43.1, SPIRES_OF_ARAK },
							["provider"] = { "n", 82691 },	-- Provisioner Galgar
						}),
						q(35878, {	-- Safety Measures
							["sourceQuests"] = { 35713 },	-- The Tinkertoss Twins
							["coord"] = { 56.2, 42.4, SPIRES_OF_ARAK },
							["races"] = ALLIANCE_ONLY,
							["provider"] = { "n", 82759 },	-- Filbert Tinkertoss
						}),
						q(35879, {	-- Safety Measures
							["sourceQuests"] = { 35705 },	-- Best Deals Anywhere
							["coord"] = { 56.0, 40.8, SPIRES_OF_ARAK },
							["races"] = HORDE_ONLY,
							["provider"] = { "n", 82713 },	-- Mixxy Weldblast
						}),
						q(35716, {	-- Sticky Situation
							["sourceQuests"] = { 35713 },	-- The Tinkertoss Twins
							["coord"] = { 56.2, 42.4, SPIRES_OF_ARAK },
							["races"] = ALLIANCE_ONLY,
							["provider"] = { "n", 82759 },	-- Filbert Tinkertoss
						}),
						q(35706, {	-- Sticky Situation
							["sourceQuests"] = { 35705 },	-- Best Deals Anywhere
							["coord"] = { 56.0, 40.8, SPIRES_OF_ARAK },
							["races"] = HORDE_ONLY,
							["provider"] = { "n", 82713 },	-- Mixxy Weldblast
						}),
						q(35835, {	-- The Ebon Hunter
							["sourceQuests"] = {
								35739,	-- All Natural
								35782,	-- I See Dead Arakkoa
							},
							["coord"] = { 60.2, 53.1, SPIRES_OF_ARAK },
							["races"] = ALLIANCE_ONLY,
							["provider"] = { "n", 82788 },	-- Dilbert Tinkertoss
							["g"] = {
								i(116394),	-- Outpost Building Assembly Notes
							},
						}),
						q(35797, {	-- The Ebon Hunter
							["sourceQuests"] = {
								35738,	-- All Natural
								35766,	-- I See Dead Arakkoa
							},
							["coord"] = { 60.1, 53.1, SPIRES_OF_ARAK },
							["races"] = HORDE_ONLY,
							["provider"] = { "n", 82786 },	-- Trixxy Weldblast
							["g"] = {
								i(116394),	-- Outpost Building Assembly Notes
							},
						}),
						q(35713, {	-- The Tinkertoss Twins
							["sourceQuests"] = { 37331 },	-- Not Here, Not Now
							["coord"] = { 39.5, 61.2, SPIRES_OF_ARAK },
							["races"] = ALLIANCE_ONLY,
							["provider"] = { "n", 82709 },	-- Milly Osworth
						}),
					}),
					q(34756, {	-- A Charming Deception
						["sourceQuests"] = { 34659 },	-- The Crone
						["coord"] = { 51.6, 31.2, SPIRES_OF_ARAK },
						["provider"] = { "n", 79890 },	-- Ornekka
						["g"] = {
							i(114948),	-- Skettis Deceiver's Band
							i(119070),	-- Skettis Deceiver's Gemband
							i(119062),	-- Skettis Deceiver's Loop
							i(114952),	-- Skettis Deceiver's Ring
							i(114953),	-- Skettis Deceiver's Signet
						},
					}),
					q(34883, {	-- A Feast of Shadows
						["sourceQuests"] = { 34830 },	-- Behind the Veil
						["coord"] = { 44.4, 24.0, SPIRES_OF_ARAK },
						["provider"] = { "n", 80508 },	-- Talonpriest Zellek
						["g"] = {
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
						["coord"] = { 48.5, 44.4, SPIRES_OF_ARAK },
						["provider"] = { "n", 81770 },	-- Reshad
					}),
					q(37296, {	-- A Lack of Wasps
						["sourceQuests"] = {
							37326,	-- Befriending the Locals (tavern/brewery)
							35699,	-- Peace Offering (smuggler's den)
						},
						["sourceQuestNumRequired"] = 1,
						["coord"] = { 43.9, 48.8, SPIRES_OF_ARAK },
						["provider"] = { "n", 83463 },	-- Dusk-Seer Irizzar
					}),
					q(35339, {	-- A Parting Favor
						["sourceQuests"] = {
							35329,	-- I See Dead People (A)
							35322,	-- I See Dead People (H)
						},
						["coord"] = { 38.9, 48.8, SPIRES_OF_ARAK },
						["providers"] = {
							{ "n", 82100 },	-- Bryan Finn (first version fades out about a minute after turning in previous quest and is replaced with second version)
							{ "n", 82101 },	-- Bryan Finn
						},
					}),
					q(35353, {	-- A Piece of the Puzzle
						["sourceQuests"] = { 35339 },	-- A Parting Favor
						["coord"] = { 37.6, 51.0, SPIRES_OF_ARAK },
						["provider"] = { "n", 82124 },	-- Alice Finn
						["g"] = {
							i(114958),	-- Watch Commander Branson's Lape
						},
					}),
					q(35245, {	-- A Sentimental Relic
						["sourceQuests"] = { 35013 },	-- Lithic's Gift
						["coord"] = { 60.5, 38.8, SPIRES_OF_ARAK },
						["provider"] = { "n", 80834 },	-- Memory of Lithic
					}),
					q(36059, {	-- A Worthy Vessel
						["sourceQuests"] = { 35895 },	-- Terokk's Fall
						["coord"] = { 46.5, 46.5, SPIRES_OF_ARAK },
						["provider"] = { "n", 80153 },	-- Shadow-Sage Iskar
					}),
					q(34657, {	-- Adherents of the Sun God
						["sourceQuests"] = { 34655 },	-- The Shadows of Skettis
						["coord"] = { 43.6, 12.9, SPIRES_OF_ARAK },
						["provider"] = { "n", 79519 },	-- Reshad
					}),
					q(35482, {	-- Admiral Taylor [A]
						["sourceQuests"] = {
							35408,	-- Prime the Cannons
							35407,	-- Punishable by Death
						},
						["coord"] = { 37.6, 53.7, SPIRES_OF_ARAK },
						["races"] = ALLIANCE_ONLY,
						["provider"] = { "n", 82278 },	-- Lady Claudia
						["g"] = {
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
						["provider"] = { "n", 82278 },	-- Lady Claudia
						["coord"] = { 37.6, 53.8, SPIRES_OF_ARAK },
						["races"] = HORDE_ONLY,
						["g"] = {
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
						["sourceQuests"] = { 34659 },	-- The Crone
						["coord"] = { 51.6, 31.2, SPIRES_OF_ARAK },
						["provider"] = { "n", 79890 },	-- Ornekka
					}),
					q(34886, {	-- Baby Bird
						["sourceQuests"] = { 34838 },	-- Ikky's Egg
						["coord"] = { 45.4, 36.6, SPIRES_OF_ARAK },
						["provider"] = { "n", 80469 },	-- Ikky
					}),
					q(34942, {	-- Back from Beyond
						["sourceQuests"] = {
							34883,	-- A Feast of Shadows
							34882,	-- Blades in the Dark
						},
						["coord"] = { 44.4, 24.0, SPIRES_OF_ARAK },
						["provider"] = { "n", 80508 },	-- Talonpriest Zellek
					}),
					q(35000, {	-- Banished From the Sky
						["sourceQuests"] = { 34998 },	-- Talon Watch
						["coord"] = { 62.1, 42.6, SPIRES_OF_ARAK },
						["provider"] = { "n", 80758 },	-- Talon Guard Kurekk
					}),
					q(34830, {	-- Behind the Veil
						["sourceQuests"] = { 34828 },	-- Ishaal's Orb
						["coord"] = { 47.9, 34.6, SPIRES_OF_ARAK },
						["provider"] = { "n", 80232 },	-- Talonpriest Ishaal
					}),
					q(34882, {	-- Blades in the Dark
						["sourceQuests"] = { 34830 },	-- Behind the Veil
						["coord"] = { 44.4, 24.0, SPIRES_OF_ARAK },
						["provider"] = { "n", 80508 },	-- Talonpriest Zellek
					}),
					q(35009, {	-- Call of the Raven Mother
						["sourceQuests"] = {
							34939,	-- Declawing the Bloodmane
							34938,	-- Ralshiara's Demise
							34924,	-- The Egg Thieves
						},
						["coord"] = { 52.0, 49.9, SPIRES_OF_ARAK },
						["provider"] = { "n", 80481 },	-- High Ravenspeaker Krikka
					}),
					q(37177, {	-- Call of the Talon King
						["provider"] = { "n", 84122 },	-- Shade of Terokk
						["coord"] = { 46.6, 46.7, SPIRES_OF_ARAK },
						["minReputation"] = { FACTION_ARAKKOA_OUTCASTS, EXALTED },
						["description"] = "Granted automatically. If you're in the zone when you hit exalted, leave the zone and return.",
					}),
					q(35081, {	-- Clearing Out Before Cleaning Up
						["sourceQuests"] = { 35080 },	-- The Mother Lode
						["coord"] = { 59.1, 79.2, SPIRES_OF_ARAK },
						["provider"] = { "n", 81784 },	-- Engineer Gazwitz
					}),
					q(35634, {	-- Control is King
						["sourceQuests"] = {
							35260,	-- Hardly Working
							35273,	-- Hot Seat
							35258,	-- Legacy of the Apexis
						},
						["provider"] = { "n", 80157 },	-- Darkscryer Raastok
						["coord"] = { 36.8, 24.5, SPIRES_OF_ARAK },
					}),
					q(34921, {	-- Cult of the Ravenspeakers
						["sourceQuests"] = {
							35634,	-- Control is King
							35012,	-- Sethe, the Dead God
						},
						["coord"] = { 46.8, 46.0, SPIRES_OF_ARAK },
						["provider"] = { "n", 80648 },	-- Anzu
					}),
					q(36428, {	-- Curing With Force
						["sourceQuests"] = {
							36384,	-- Field Trial
							35089,	-- Skimming Off the Top
							35090,	-- The Right Parts for the Job
						},
						["coord"] = { 58.4, 92.2, SPIRES_OF_ARAK },
						["provider"] = { "n", 81443 },	-- Krixel Pinchwhistle
					}),
					q(34939, {  -- Declawing The Bloodmane
						["sourceQuests"] = {
							34923,	-- The Bloodmane
							34922,	-- Words of the Raven Mother
						},
						["coord"] = { 54.8, 54.2, SPIRES_OF_ARAK },
						["provider"] = { "n", 80860 },	-- High Ravenspeaker Krikka
						["g"] = {
							i(114720),	-- Cragplate Gauntlets
							i(114722),	-- Ravenchain Gauntlets
							i(114721),	-- Shadowveil Gloves
							i(114719),	-- Skysinger Gloves
						},
					}),
					q(35077, {  -- Defungination
						["sourceQuests"] = { 35619, 35620, 36862 },	-- Pinchwhistle Gearworks (Alliance and 2 Horde versions)
						["coord"] = { 61.4, 72.8, SPIRES_OF_ARAK },
						["provider"] = { "n", 81109 },	-- Kimzee Pinchwhistle
						["g"] = {
							i(118071),	-- "Fireproof" Venture Co. Blastplate
							i(118072),	-- "Fireproof" Venture Co. Chainmail
							i(118074),	-- "Fireproof" Venture Co. Robes
							i(118073),	-- "Fireproof" Venture Co. Tunic
						},
					}),
					q(34805, {	-- Echo Hunters
						["sourceQuests"] = { 34659 },	-- The Crone
						["coord"] = { 51.6, 31.2, SPIRES_OF_ARAK },
						["provider"] = { "n", 80265 },	-- Reshad
					}),
					q(36425, {	-- Egg Punt
						["sourceQuests"] = { 34827 },	-- Last of the Talonpriests
						["coord"] = { 47.1, 31.6, SPIRES_OF_ARAK },
						["provider"] = { "n", 85425 },	-- Ravager Egg
					}),
					q(36384, {	-- Field Trial
						["sourceQuests"] = { 35285 },	-- Follow that Hotrod!
						["coord"] = { 58.4, 92.2, SPIRES_OF_ARAK },
						["provider"] = { "n", 81443 },	-- Krixel Pinchwhistle
					}),
					q(35298, {	-- Flame On
						["sourceQuests"] = {
							36428,	-- Curing With Force
							35211,	-- Preventing the Worst
							35091,	-- Sporicide
						},
						["coord"] = { 58.4, 92.2, SPIRES_OF_ARAK },
						["provider"] = { "n", 81443 },	-- Krixel Pinchwhistle
						["g"] = {
							i(111957),	-- Salvage Yard, Level 1
						},
					}),
					q(35285, {	-- Follow that Hotrod!
						["sourceQuests"] = {
							35081,	-- Clearing Out Before Cleaning Up
							35082,	-- Getting the Crew Back Together
						},
						["coord"] = { 59.1, 79.2, SPIRES_OF_ARAK },
						["provider"] = { "n", 81784 },	-- Engineer Gazwitz
					}),
					q(36353, {	-- For Old Times' Sake
						["sourceQuests"] = { 35482 },	-- Admiral Taylor
						["coord"] = { 39.9, 60.6, SPIRES_OF_ARAK },
						["races"] = ALLIANCE_ONLY,
						["provider"] = { "n", 85080 },	-- Admiral Taylor
						["g"] = {
							follower(204),	-- Admiral Taylor
						},
					}),
					q(35001, {	-- Gaze of the Raven God
						["sourceQuests"] = { 35000 },	-- Banished From the Sky
						["coord"] = { 62.1, 42.6, SPIRES_OF_ARAK },
						["provider"] = { "n", 80758 },	-- Talon Guard Kurekk
					}),
					q(35082, {	-- Getting the Crew Back Together
						["sourceQuests"] = { 35080 },	-- The Mother Lode
						["coord"] = { 59.1, 79.2, SPIRES_OF_ARAK },
						["provider"] = { "n", 81773 },	-- Kimzee Pinchwhistle
					}),
					q(35260, {	-- Hardly Working
						["sourceQuests"] = {
							34882,	-- Blades in the Dark
							34883,	-- A Feast of Shadows
						},
						["coord"] = { 36.9, 24.5, SPIRES_OF_ARAK },
						["provider"] = { "n", 80157 },	-- Darkscryer Raastok
						["g"] = {
							i(114950),	-- Skywatch Adherent Choker
							i(119089),	-- Skywatch Adherant Gorget
							i(114951),	-- Skywatch Adherent Locket
							i(119080),	-- Skywatch Adherant Necklace
							i(114947),	-- Skywatch Adherent Pendant
						},
					}),
					q(34999, {  -- Hatred Undying
						["sourceQuests"] = { 35611 },	-- Return to Veil Terokk
						["coord"] = { 61.9, 42.2, SPIRES_OF_ARAK },
						["provider"] = { "n", 81514 },	-- Kazu
						["g"] = {
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
						["sourceQuests"] = { 34655 },	-- The Shadows of Skettis
						["coord"] = { 43.6, 12.9, SPIRES_OF_ARAK },
						["provider"] = { "n", 79519 },	-- Reshad
						["g"] = {
							i(114733),	-- Cragplate Shoulders
							i(114735),	-- Ravenchain Spaulders
							i(114734),	-- Shadowveil Mantle
							i(114732),	-- Skysinger Spaulders
						},
					}),
					q(35549, {	-- Honoring a Hero
						["sourceQuests"] = { 35482 },	-- Admiral Taylor
						["coord"] = { 36.8, 56.7, SPIRES_OF_ARAK },
						["races"] = ALLIANCE_ONLY,
						["provider"] = { "n", 82403 },	-- Jasper Fel
					}),
					q(35273, {  -- Hot Seat
						["sourceQuests"] = { 35261 },	-- Shot Caller
						["provider"] = {"o",232353},	-- Overseer's Chair
						["coord"] = { 35.5, 32.1, SPIRES_OF_ARAK },
						["icon"] = 1029590,
						["g"] = {
							i(114727),	-- Cragplate Legguards
							i(114729),	-- Ravenchain Leggings
							i(114728),	-- Shadowveil Leggings
							i(114730),	-- Skysinger Breeches
						},
					}),
					q(34898, {	-- Ikky
						["sourceQuests"] = { 34886 },	-- Baby Bird
						["coord"] = { 46.2, 45.6, SPIRES_OF_ARAK },
						["provider"] = { "n", 85320 },	-- Ikky
						["g"] = {
							pet(1532),	-- Ikky (PET!)
						},
					}),
					q(34838, {	-- Ikky's Egg
						["sourceQuests"] = { 34884 },	-- The Kaliri Whisperer (must pick up gavel)
						["description"] = "Available once you pick up the gavel during |cFFFFD700The Kaliri Whisperer|r.",
						["coord"] = { 45.4, 36.6, SPIRES_OF_ARAK },
						["provider"] = { "n", 80470 },	-- Kaliri Egg
					}),
					q(35276, {	-- Inspecting the Troops (A)
						["sourceQuests"] = { 35274 },	-- One of Our Own
						["coord"] = { 45.9, 46.3, SPIRES_OF_ARAK },
						["races"] = ALLIANCE_ONLY,
						["provider"] = { "n", 81891 },	-- Jasper Fel
					}),
					q(35275, {	-- Inspecting the Troops (H)
						["sourceQuests"] = { 35272 },	-- One of Our Own
						["coord"] = { 45.9, 46.3, SPIRES_OF_ARAK },
						["races"] = HORDE_ONLY,
						["provider"] = { "n", 81890 },	-- Shadow Hunter Ukambe
					}),
					q(35329, {	-- I See Dead People (A)
						["sourceQuests"] = { 35293 },	-- Old Friends
						["coord"] = { 39.1, 48.8, SPIRES_OF_ARAK },
						["races"] = ALLIANCE_ONLY,
						["provider"] = { "n", 81960 },	-- Jasper Fel
					}),
					q(35322, {	-- I See Dead People (H)
						["sourceQuests"] = { 35295 },	-- What's Theirs is Ours
						["coord"] = { 39.1, 48.9, SPIRES_OF_ARAK },
						["races"] = HORDE_ONLY,
						["provider"] = { "n", 81961 },	-- Shadow Hunter Ukambe
					}),
					q(34828, {	-- Ishaal's Orb
						["sourceQuests"] = { 34827 },	-- Last of the Talonpriests
						["coord"] = { 47.9, 34.6, SPIRES_OF_ARAK },
						["provider"] = { "n", 80232 },	-- Talonpriest Ishaal
					}),
					q(36062, {	-- Kimzee Pinchwhistle
						["sourceQuests"] = { 35298 },	-- Flame On
						["coord"] = { 61.5, 72.7, SPIRES_OF_ARAK },
						["provider"] = { "n", 82468 },	-- Kimzee Pinchwhistle
						["g"] = {
							follower(192),	-- Kimzee Pinchwhistle
						},
					}),
					q(34827, {	-- Last of the Talonpriests
						["sourceQuests"] = { 35611 },	-- Return to Veil Terokk
						["coord"] = { 45.9, 45.7, SPIRES_OF_ARAK },
						["provider"] = { "n", 80153 },	-- Shadow-Sage Iskar
					}),
					q(35258, {	-- Legacy of the Apexis
						["sourceQuests"] = {
							34882,	-- Blades in the Dark
							34883,	-- Return to Veil Terokk
							35257,	-- Power Unearthed (breadcrumb)
						},
						["coord"] = { 36.9, 24.5, SPIRES_OF_ARAK },
						["provider"] = { "n", 80157 },	-- Darkscryer Raastok
					}),
					q(37168, {	-- Leorajh, the Enlightened
						["coords"] = {
							{ 54.9, 65.1, SPIRES_OF_ARAK },	-- cave entrance
							{ 54.2, 63.0, SPIRES_OF_ARAK },	-- questgiver
						},
						["provider"] = { "n", 87561 },	-- Leorajh
						["g"] = {
							follower(219),	-- Leorajh
						},
					}),
					q(35013, {	-- Lithic's Gift
						["sourceQuests"] = {
							35011,	-- The False Talon King
							35003,	-- Ritual Severance
							35004,	-- Servants of a Dead God
						},
						["coord"] = { 64.1, 37.0, SPIRES_OF_ARAK },
						["provider"] = { "n", 86475 },	-- Talon Guard Kurekk
					}),
					q(34885, {	-- Mother of Thorns
						["sourceQuests"] = { 34884 },	-- The Kaliri Whisperer (must pick up gavel)
						["description"] = "Available once you pick up the gavel during |cFFFFD700The Kaliri Whisperer|r.",
						["coord"] = { 45.4, 36.3, SPIRES_OF_ARAK },
						["provider"] = { "n", 80233 },	-- Skizzik
						["g"] = {
							i(114957),	-- Oversized Shadeback Talon
							i(114959),	-- Prickly Shadeback Thorn
							i(114961),	-- Thornmother Eye
						},
					}),
					q(34829, {  -- New Neighbors
						["sourceQuests"] = { 34827 },	-- Last of the Talonpriests
						["coord"] = { 47.9, 34.6, SPIRES_OF_ARAK },
						["provider"] = { "n", 80232 },	-- Talonpriest Ishaal
						["g"] = {
							i(114736),	-- Cragplate Girdle
							i(114738),	-- Ravenchain Belt
							i(114737),	-- Shadowveil Cord
							i(114739),	-- Skysinger Belt
						},
					}),
					q(36606, {	-- News from Nagrand
						["isBreadcrumb"] = true,
						["altQuests"] = { 36601 },	-- News from Nagrand
						["coord"] = { 39.8, 60.9, SPIRES_OF_ARAK },
						["races"] = ALLIANCE_ONLY,
						["lvl"] = 96,	-- not sure why you can pick this up at 96 when nagrand is a 98 zone, but you can
						["provider"] = { "n", 81929 },	-- Lieutenant Willem
					}),
					q(36601, {	-- News from Nagrand
						["isBreadcrumb"] = true,
						["altQuests"] = { 36606 },	-- News from Nagrand
						["coord"] = { 45.8, 45.6, SPIRES_OF_ARAK },
						["races"] = ALLIANCE_ONLY,
						["lvl"] = 96,
						["provider"] = { "n", 80153 },	-- Shadow-Sage iskar
					}),
					q(36607, {	-- News from Nagrand
						["isBreadcrumb"] = true,
						["coord"] = { 40.2, 43.4, SPIRES_OF_ARAK },
						["altQuests"] = { 36602 },	-- News from Nagrand
						["races"] = HORDE_ONLY,
						["lvl"] = 96,
						["provider"] = { "n", 81920 },	-- Taskmaster Gornek
					}),
					q(36602, {	-- News from Nagrand
						["isBreadcrumb"] = true,
						["coord"] = { 45.8, 45.6, SPIRES_OF_ARAK },
						["altQuests"] = { 36607 },	-- News from Nagrand
						["races"] = HORDE_ONLY,
						["lvl"] = 96,
						["provider"] = { "n", 80153 },	-- Shadow-Sage iskar
					}),
					q(35293, {	-- Old Friends
						["sourceQuests"] = { 35286 },	-- Orders, Commander?
						["coord"] = { 39.8, 60.7, SPIRES_OF_ARAK },
						["races"] = ALLIANCE_ONLY,
						["provider"] = { "n", 81949 },	-- Jasper Fel
					}),
					q(36085, {	-- On Ebon Wings
						["sourceQuests"] = { 35009 },	-- Call of the Raven Mother
						["coord"] = { 51.3, 50.3, SPIRES_OF_ARAK },
						["provider"] = { "n", 84276 },	-- Reshad
					}),
					q(35274, {	-- One of Our Own (Alliance)
						["sourceQuests"] = { 35671 },	-- A Gathering of Shadows
						["coord"] = { 45.9, 46.3, SPIRES_OF_ARAK },
						["races"] = ALLIANCE_ONLY,
						["provider"] = { "n", 81891 },	-- Jasper Fel
					}),
					q(35272, {	-- One of Our Own (Horde)
						["sourceQuests"] = { 35671 },	-- A Gathering of Shadows
						["coord"] = { 45.9, 46.3, SPIRES_OF_ARAK },
						["races"] = HORDE_ONLY,
						["provider"] = { "n", 81890 },	-- Shadow Hunter Ukambe
					}),
					q(35286, {	-- Orders, Commander? (Alliance)
						["sourceQuests"] = { 35276 },	-- Inspecting the Troops (Alliance)
						["coord"] = { 39.9, 60.7, SPIRES_OF_ARAK },
						["races"] = ALLIANCE_ONLY,
						["provider"] = { "n", 81929 },	-- Lieutenant Willem
					}),
					q(35277, {	-- Orders, Commander? (Horde)
						["sourceQuests"] = { 35275 },	-- Inspecting the Troops (Horde)
						["coord"] = { 40.1, 43.4, SPIRES_OF_ARAK },
						["races"] = HORDE_ONLY,
						["provider"] = { "n", 81920 },	-- Taskmaster Gornek
					}),
					q(34658, {	-- Orders From On High
						["sourceQuests"] = {
							34657,	-- Adherents to the Sun God
							34656,	-- Hidden in Plain Sight
						},
						["coord"] = { 43.6, 12.9, SPIRES_OF_ARAK },
						["provider"] = { "n", 79519 },	-- Reshad
					}),
					q(35619, {	-- Pinchwhistle Gearworks (Alliance)
						["sourceQuests"] = { 35286 },	-- Orders, Commander?
						["isBreadcrumb"] = true,
						["coord"] = { 39.7, 60.6, SPIRES_OF_ARAK },
						["races"] = ALLIANCE_ONLY,
						["provider"] = { "n", 85550 },	-- Watchman Kovak
					}),
					q(35620, {	-- Pinchwhistle Gearworks (Horde)
						["sourceQuests"] = { 35277 },	-- Orders, Commander?
						["provider"] = { "n", 85566 },	-- Scout Cel
						["races"] = HORDE_ONLY,
						["isBreadcrumb"] = true,
						["coord"] = { 40.0, 43.8, SPIRES_OF_ARAK },
					}),
					q(35257, {	-- Power Unearthed
						["sourceQuests"] = { 34942 },	-- Back from Beyond (must have picked up)
						["isBreadcrumb"] = true,
						["coord"] = { 44.4, 24.0, SPIRES_OF_ARAK },
						["provider"] = { "n", 85598 },	-- Darkscryer Raastok
					}),
					q(35211, {  -- Preventing the Worst
						["sourceQuests"] = {
							36384,	-- Field Trial
							35089,	-- Skimming Off the Top
							35090,	-- The Right Parts for the Job
						},
						["coord"] = { 58.4, 92.2, SPIRES_OF_ARAK },
						["provider"] = { "n", 81443 },	-- Krixel Pinchwhistle
						["g"] = {
							i(118090),	-- "Super Sterilized" Blastguard Britches
							i(118089),	-- "Super Sterilized" Blastguard Leggings
							i(118087),	-- "Super Sterilized" Blastguard Legplates
							i(118088),	-- "Super Sterlized" Blastguard Legwraps
						},
					}),
					q(35408, {	-- Prime the Cannons
						["sourceQuests"] = { 35380 },	-- Second in Command
						["coord"] = { 37.6, 53.8, SPIRES_OF_ARAK },
						["provider"] = { "n", 82212 },	-- Lady Claudia
					}),
					q(35407, {	-- Punishable by Death
						["sourceQuests"] = { 35380 },	-- Second in Command
						["coord"] = { 37.6, 53.8, SPIRES_OF_ARAK },
						["provider"] = { "n", 82194 },	-- Sir Edward
					}),
					q(34938, {	-- Ralshiara's Demise
						["sourceQuests"] = {
							34923,	-- The Bloodmane
							34922,	-- Words of the Raven Mother
						},
						["coord"] = { 54.8, 54.2, SPIRES_OF_ARAK },
						["provider"] = { "n", 80740 },	-- Ravenspeaker Sekara
					}),
					q(35007, {	-- Rendezvous with the Ritualists
						["sourceQuests"] = { 35010 },	-- The High Ravenspeaker
						["coord"] = { 52.0, 49.9, SPIRES_OF_ARAK },
						["provider"] = { "n", 80481 },	-- High Ravenspeaker Krikka
					}),
					q(35611, {	-- Return to Veil Terokk
						["sourceQuests"] = {
							35286,	-- Orders, Commander? (A)
							35277,	-- Orders, Commander? (H)
						},
						["coords"] = {
							{ 40.1, 60.3, SPIRES_OF_ARAK },	-- (A)
							{ 40.0, 44.0, SPIRES_OF_ARAK },	-- (H)
						},
						["provider"] = { "n", 79748 },	-- Percy
					}),
					q(35733, {	-- Rites of the Talonpriests
						["sourceQuests"] = {
							34942,	-- Back from Beyond
							34884,	-- The Kaliri Whisperer
						},
						["coord"] = { 46.5, 46.5, SPIRES_OF_ARAK },
						["provider"] = { "n", 81770 },	-- Reshad
					}),
					q(35003, {	-- Ritual Severance
						["sourceQuests"] = {
							35001,	-- Gaze of the Raven God
							35002,	-- Sons of Sethe
						},
						["coord"] = { 66.7, 51.6, SPIRES_OF_ARAK },
						["provider"] = { "n", 80648 },	-- Anzu
						["g"] = {
							i(114955),	-- Hollowblood Cloak
							i(114949),	-- Hollowblood Drape
							i(114954),	-- Hollowblood Greatcloak
							i(119053),	-- Hollowblood Scale Cloak
							i(119058),	-- Hollowblood Scarf
						},
					}),
					q(35380, {	-- Second in Command
						["sourceQuests"] = { 35353 },	-- A Piece of the Puzzle
						["coord"] = { 37.5, 50.7, SPIRES_OF_ARAK },
						["provider"] = { "n", 82126 },	-- Alice Finn
					}),
					q(35004, {  -- Servants of a Dead God
						["sourceQuests"] = {
							35001,	-- Gaze of the Raven God
							35002,	-- Sons of Sethe
						},
						["coord"] = { 66.7, 51.6, SPIRES_OF_ARAK },
						["provider"] = { "n", 80648 },	-- Anzu
						["g"] = {
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
						["coord"] = { 64.1, 37.0, SPIRES_OF_ARAK },
						["provider"] = { "n", 86355 },	-- Anzu
						["g"] = {
							i(114712),	-- Cragplate Chestplate
							i(114713),	-- Ravenchain Vest
							i(114731),	-- Shadowveil Robe
							i(114714),	-- Skysinger Vest
						},
					}),
					q(35261, {	-- Shot-Caller
						["sourceQuests"] = { 35259 },	-- Sol Sisters
						["provider"] = { "n", 82123 },	-- Inactive Apexis Destroyer
						["coords"] = {	-- depends on which 'sister' you kill last
							{ 31.9, 25.5, SPIRES_OF_ARAK },
							{ 32.6, 29.0, SPIRES_OF_ARAK },
						},
					}),
					q(35089, {	-- Skimming Off the Top
						["sourceQuests"] = { 35285 },	-- Follow that Hotrod!
						["coord"] = { 58.4, 92.2, SPIRES_OF_ARAK },
						["provider"] = { "n", 81972 },	-- Kimzee Pinchwhistle
					}),
					q(35259, {	-- Sol Sisters
						["sourceQuests"] = {
							34882,	-- Blades in the Dark
							34883,	-- Return to Veil Terokk
						},
						["coord"] = { 36.9, 24.5, SPIRES_OF_ARAK },
						["provider"] = { "n", 80155 },	-- Kura the Blind
					}),
					q(35002, {	-- Sons of Sethe
						["sourceQuests"] = { 35000 },	-- Banished From the Sky
						["coord"] = { 62.1, 42.6, SPIRES_OF_ARAK },
						["provider"] = { "n", 80758 },	-- Talon Guard Kurekk
					}),
					q(35079, {	-- Spore-be-Gone
						["coord"] = { 61.4, 72.8, SPIRES_OF_ARAK },
						["provider"] = { "n", 81128 },	-- Engineer Gazwitz
					}),
					q(35091, {	-- Sporicide
						["sourceQuests"] = {
							35089,	-- Skimming Off the Top
							35090,	-- The Right Parts for the Job
						},
						["coord"] = { 58.7, 92.7, SPIRES_OF_ARAK },
						["provider"] = { "n", 81978 },	-- Kimzee Pinchwhistle
					}),
					q(35550, {	-- Surviving in a Savage Land
						["sourceQuests"] = { 36183 },	-- Admiral Taylor
						["coord"] = { 36.8, 56.8, SPIRES_OF_ARAK },
						["races"] = HORDE_ONLY,
						["provider"] = { "n", 82402 },	-- Shadow Hunter Ukambe
					}),
					q(35668, {	-- Syth's Secret
						["sourceQuests"] = { 35636 },	-- All Due Respect
						["coord"] = { 50.3, 36.6, SPIRES_OF_ARAK },
						["provider"] = { "n", 82621 },	-- Reshad
					}),
					q(37144, {	-- Talon Guard Kurekk
						["provider"] = { "n", 80758 },	-- Talon Guard Kurekk
						["coord"] = { 46.7, 46.4, SPIRES_OF_ARAK },
						["minReputation"] = { FACTION_ARAKKOA_OUTCASTS, EXALTED },
						["g"] = {
							follower(224),	-- Talon Guard Kurekk
						},
					}),
					q(34998, {	-- Talon Watch
						["sourceQuests"] = { 35611 },	-- Return to Veil Terokk
						["coord"] = { 45.9, 45.7, SPIRES_OF_ARAK },
						["provider"] = { "n", 81770 },	-- Reshad
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
						["coord"] = { 46.5, 46.7, SPIRES_OF_ARAK },
						["provider"] = { "n", 83959 },	-- Talonpriest Ishaal
						["g"] = {
							follower(218),	-- Talonpriest Ishaal
						},
					}),
					q(35895, {	-- Terokk's Fall
						["sourceQuests"] = { 35897 },	-- The Missing Piece
						["coord"] = { 46.6, 46.6, SPIRES_OF_ARAK },
						["provider"] = { "n", 82813 },	-- Effigy of Terokk
					}),
					q(35896, {	-- The Avatar of Terokk
						["sourceQuests"] = { 36059 },	-- A Worthy Vessel
						["coord"] = { 46.6, 46.6, SPIRES_OF_ARAK },
						["provider"] = { "n", 84122 },	-- Shade of Terokk
						["g"] = {
							i(119073),	-- Talon Guard Bloodsworn Band
							i(118070),	-- Talon Guard Bloodsworn Loop
							i(118069),	-- Talon Guard Bloodsworn Ring
							i(119065),	-- Talon Guard Bloodsworn Seal
							i(118068),	-- Talon Guard Bloodsworn Signet
						},
					}),
					q(34923, {  -- The Bloodmane
						["sourceQuests"] = { 35007 },	-- Rendezvous with the Ritualists
						["coord"] = { 54.8, 54.1, SPIRES_OF_ARAK },
						["provider"] = { "n", 80740 },	-- Ravenspeaker Sekara
						["g"] = {
							i(114741),	-- Cragplate Wristwraps
							i(114742),	-- Ravenchain Wristwraps
							i(114740),	-- Shadowveil Wristwraps
							i(114743),	-- Skysinger Wristwraps
						},
					}),
					q(34659, {	-- The Crone
						["sourceQuests"] = { 34658 },	-- Orders From On High
						["coord"] = { 45.4, 18.2, SPIRES_OF_ARAK },
						["provider"] = { "n", 79519 },	-- Reshad
					}),
					q(34924, {	-- The Egg Thieves
						["sourceQuests"] = {
							34923,	-- The Bloodmane
							34922,	-- Words of the Raven Mother
						},
						["coord"] = { 54.8, 54.2, SPIRES_OF_ARAK },
						["provider"] = { "n", 80863 },	-- Vakora of the Flock
					}),
					q(35011, {	-- The False Talon King
						["sourceQuests"] = {
							35001,	-- Gaze of the Raven God
							35002,	-- Sons of Sethe
						},
						["coord"] = { 66.7, 51.6, SPIRES_OF_ARAK },
						["provider"] = { "n", 86475 },	-- Talon Guard Kurekk
					}),
					q(35010, {	-- The High Ravenspeaker
						["sourceQuests"] = { 34991 },	-- To the... Rescue?
						["coord"] = { 48.9, 49.0, SPIRES_OF_ARAK },
						["provider"] = { "n", 80639 },	-- Iktis of the Flock
					}),
					q(36790, {	-- The Initiate's Revenge
						["sourceQuests"] = {
							34923,	-- The Bloodmane
							34922,	-- Words of the Raven Mother
						},
						["coord"] = { 50.9, 55.8, SPIRES_OF_ARAK },
						["provider"] = { "n", 86381 },	-- Mortally Wounded Initiate
					}),
					q(34884, {	-- The Kaliri Whisperer
						["sourceQuests"] = { 35611 },	-- Return to Veil Terokk
						["coord"] = { 45.9, 45.7, SPIRES_OF_ARAK },
						["provider"] = { "n", 81770 },	-- Reshad
					}),
					q(35897, {	-- The Missing Piece
						["sourceQuests"] = {
							35734,	-- The Talon King
							35245,	-- A Sentimental Relic
						},
						["coord"] = { 46.5, 46.5, SPIRES_OF_ARAK },
						["provider"] = { "n", 81770 },	-- Reshad
					}),
					q(35080, {	-- The Mother Lode
						["sourceQuests"] = {
							35077,	-- Defungination
							35079,	-- Spore-be-Gone
							36179,	-- Unwanted Pests
						},
						["coord"] = { 61.4, 72.9, SPIRES_OF_ARAK },
						["provider"] = { "n", 81109 },	-- Kimzee Pinchwhistle
					}),
					q(35090, {  -- The Right Parts for the Job
						["sourceQuests"] = { 35285 },	-- Follow that Hotrod!
						["coord"] = { 58.4, 92.2, SPIRES_OF_ARAK },
						["provider"] = { "n", 81972 },	-- Kimzee Pinchwhistle
						["g"] = {
							i(118077),	-- Fungal Reisistant Chainmail Boots
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
						["coord"] = { 37.8, 18.0, SPIRES_OF_ARAK },
						["provider"] = { "n", 79539 },	-- Azik
					}),
					q(35734, {	-- The Talon King
						["sourceQuests"] = { 35733 },	-- Rites of the Talonpriests
						["coord"] = { 46.6, 46.6, SPIRES_OF_ARAK },
						["provider"] = { "n", 82813 },	-- Effigy of Terokk
					}),
					q(36864, {	-- Three Feet Under
						["provider"] = { "n", 86597 },	-- Benjamin Gibb
						["coord"] = { 35.8, 52.3, SPIRES_OF_ARAK },
						["races"] = HORDE_ONLY,
						["g"] = {
							follower(204),	-- Benjamin Gibb
						},
					}),
					q(34991, {	-- To the... Rescue?
						["sourceQuests"] = { 34921 },	-- Cult of the Ravenspeakers
						["coord"] = { 48.9, 49.0, SPIRES_OF_ARAK },
						["provider"] = { "n", 80639 },	-- Iktis of the Flock
					}),
					q(36179, {	-- Unwanted Pests
						["coord"] = { 62.5, 73.8, SPIRES_OF_ARAK },
						["provider"] = { "n", 85062 },	-- Exterminator Lemmy
					}),
					q(36316, {	-- Victory is Within Reach
						["sourceQuests"] = { 35704 },	-- When All is Aligned
						["coord"] = { 46.5, 46.5, SPIRES_OF_ARAK },
						["provider"] = { "n", 81770 },	-- Reshad
					}),
					q(35674, {	-- Wanted: Keeho's Severed Paw (Alliance)
						["sourceQuests"] = { 35286 },	-- Orders, Commander?
						["coord"] = { 39.6, 61.3, SPIRES_OF_ARAK },
						["races"] = ALLIANCE_ONLY,
						["icon"] = 632821,
					}),
					q(35669, {	-- Wanted: Keeho's Severed Paw (Horde)
						["sourceQuests"] = { 35277 },	-- Orders, Commander?
						["coord"] = { 40.1, 43.0, SPIRES_OF_ARAK },
						["races"] = HORDE_ONLY,
						["icon"] = 632821,
					}),
					q(35675, {	-- Wanted: Spineslicer's Husk (Alliance)
						["sourceQuests"] = { 35286 },	-- Orders, Commander?
						["coord"] = { 39.6, 61.3, SPIRES_OF_ARAK },
						["races"] = ALLIANCE_ONLY,
						["icon"] = 632821,
					}),
					q(35670, {	-- Wanted: Spineslicer's Husk (Horde)
						["sourceQuests"] = { 35277 },	-- Orders, Commander?
						["coord"] = { 40.1, 43.0, SPIRES_OF_ARAK },
						["races"] = HORDE_ONLY,
						["icon"] = 632821,
					}),
					q(35676, {	-- Wanted: Venombarb (Alliance)
						["sourceQuests"] = { 35286 },	-- Orders, Commander?
						["coord"] = { 39.6, 61.3, SPIRES_OF_ARAK },
						["races"] = ALLIANCE_ONLY,
						["icon"] = 632821,
					}),
					q(35672, {	-- Wanted: Venombarb (Horde)
						["sourceQuests"] = { 35277 },	-- Orders, Commander?
						["coord"] = { 40.1, 43.0, SPIRES_OF_ARAK },
						["races"] = HORDE_ONLY,
						["icon"] = 632821,
					}),
					warchiefscommand(q(49548, {	-- Warchief's Command: Spires of Arak!
						["timeline"] = { ADDED_7_3_5 },
						["races"] = HORDE_ONLY,
						["isBreadcrumb"] = true,
						["lvl"] = 96,
					})),
					q(35295, {	-- What's Theirs is Ours
						["sourceQuests"] = { 35277 },	-- Orders, Commander?
						["races"] = HORDE_ONLY,
						["coord"] = { 40.2, 43.3, SPIRES_OF_ARAK },
						["provider"] = { "n", 81959 },	-- Shadow Hunter Ukambe
					}),
					q(35704, {  -- When All Is Aligned
						["sourceQuests"] = { 36085 },	-- On Ebon Wings
						["coord"] = { 46.5, 54.3, SPIRES_OF_ARAK },
						["provider"] = { "n", 84262 },	-- Reshad
						["g"] = {
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
						["sourceQuests"] = { 35007 },	-- Rendezvous with the Ritualists
						["coord"] = { 54.8, 54.1, SPIRES_OF_ARAK },
						["provider"] = { "n", 80740 },	-- Ravenspeaker Sekara
					}),
					n(BONUS_OBJECTIVES, {
						-- TODO: Check SQ
						q(36860, {	-- Assault on Lost Veil Anzu
							["coord"] = { 73.0, 43.0, SPIRES_OF_ARAK },
							-- This is the only bonus objective without A/H difference
							["isRepeatable"] = true,
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
						["g"] = {
							i(116907),	-- Betsi's Boomstick
						},
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
						["g"] = {
							i(118205),	-- Blightglow Pauldrons
						},
					}),
					n(84807, {	-- Durkath Steelmaw
						["questID"] = 36267,
						["coord"] = { 46.4, 28.6, SPIRES_OF_ARAK },
						["g"] = {
							i(118198),	-- Steelmaw's Stompers
						},
					}),
					n(80372, {	-- Echidna
						["questID"] = 37406,
						["coord"] = { 69.3, 53.9, SPIRES_OF_ARAK },
						["isDaily"] = true,
					}),
					n(84890, {	-- Festerbloom
						["questID"] = 36297,
						["coord"] = { 54.8, 39.8, SPIRES_OF_ARAK },
						["g"] = {
							i(118200),	-- Vile Branch of Festerbloom
						},
					}),
					n(85036, {	-- Formless Nightmare
						["description"] = "Located inside the void portal phase.",
						["questID"] = 37360,
						["isDaily"] = true,
						["coord"] = { 72.2, 19.6, SPIRES_OF_ARAK },
						["g"] = {
							i(119373),	-- Nightmare-Chain Bracers
						},
					}),
					n(86978, {	-- Gaze
						["description"] = "Click on the Fel Tome to summon.",
						["questID"] = 36943,
						["coord"] = { 25.2, 24.2, SPIRES_OF_ARAK },
						["g"] = {
							i(118696),	-- Eye of Gaze
						},
					}),
					n(87029, {	-- Giga Sentinel
						["questID"] = 37393,
						["isDaily"] = true,
						["coord"] = { 71.6, 44.8, SPIRES_OF_ARAK },	-- **Coords unconfirmed, relied on wowhead**
						["lvl"] = 100,
						["g"] = {
							i(119401),	-- Sentinel's Wingblade
						},
					}),
					n(87019, {	-- Gluttonous Giant
						["questID"] = 37390,
						["isDaily"] = true,
						["coord"] = { 74.6, 43.6, SPIRES_OF_ARAK },
						["lvl"] = 100,
						["g"] = {
							i(119404),	-- Glowing Morel
						},
					}),
					n(84951, {	-- Gobblefin
						["questID"] = 36305,
						["coord"] = { 33.6, 58.8, SPIRES_OF_ARAK },
						["lvl"] = lvlsquish(100, 100, 40),
					}),
					n(86724, {	-- Hermit Palefur
						["questID"] = 36887,
						["coord"] = { 59.2, 14.8, SPIRES_OF_ARAK },
						["g"] = {
							i(118279),	-- Hermit's Hood
						},
					}),
					n(84955, {	-- Jiasska the Sporegorger
						["questID"] = 36306,
						["coord"] = { 56.6, 94.6, SPIRES_OF_ARAK },
						["g"] = {
							i(118202),	-- Fungus-Infected Hydra Lung
						},
					}),
					n(84810, {	-- Kalos the Bloodbathed
						["questID"] = 36268,
						["coord"] = { 62.8, 37.6, SPIRES_OF_ARAK },
						["g"] = {
							i(118735),	-- Bloodbathed Outcast Robes
						},
					}),
					n(85037, {	-- Kenos the Unraveler
						["description"] = "Located inside the void portal phase. Requires 3 people to click orb.",
						["questID"] = 37361,
						["isDaily"] = true,
						["coord"] = { 70.6, 24.2, SPIRES_OF_ARAK },
						["g"] = {
							i(119354),	-- Cowl of the Unraveller
						},
					}),
					n(87026, {	-- Mecha Plunderer
						["questID"] = 37391,
						["isDaily"] = true,
						["coord"] = { 74.4, 38.6, SPIRES_OF_ARAK },
						["lvl"] = 100,
						["g"] = {
							i(119398),	-- Plunderer's Drill
						},
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
						["g"] = {
							i(118206),	-- Mutafen's Mighty Maul
						},
					}),
					n(82247, {	-- Nas Dunberlin
						["questID"] = 36129,
						["coord"] = { 36.6, 52.4, SPIRES_OF_ARAK },
						["g"] = {
							i(116837),	-- Spooky Scythe
						},
					}),
					n(84872, {	-- Oskiira the Vengeful
						["questID"] = 36288,
						["coord"] = { 65.0, 54.0, SPIRES_OF_ARAK },
						["g"] = {
							i(118204),	-- Oskiira's Mercy
						},
					}),
					n(84838, {	-- Poisonmaster Bortusk
						["questID"] = 36279,
						["coord"] = { 59.6, 37.6, SPIRES_OF_ARAK },
						["g"] = {
							i(118199),	-- Poison Cask
						},
					}),
					n(85504, {	-- Rotcap
						["questID"] = 36470,
						["coord"] = { 38.4, 27.4, SPIRES_OF_ARAK },
						["g"] = {
							i(118107),	-- Brilliant Spore (PET!)
						},
					}),
					n(84833, {	-- Sangrikass
						["questID"] = 36276,
						["coord"] = { 68.8, 49.0, SPIRES_OF_ARAK },
						["g"] = {
							i(118203),	-- Moultingskin Tunic
						},
					}),
					n(79938, {	-- Shadowbark
						["questID"] = 36478,
						["coord"] = { 51.8, 35.6, SPIRES_OF_ARAK },
						["g"] = {
							i(118201),	-- Shadowbark's Skin
						},
					}),
					n(87027, {	-- Shadow Hulk
						["questID"] = 37392,
						["isDaily"] = true,
						["coord"] = { 71.25, 33.24, SPIRES_OF_ARAK },
						["lvl"] = 100,
						["g"] = {
							i(119363),	-- Stretchy Purple Pants
						},
					}),
					n(83990, {	-- Solar Magnifier
						["questID"] = 37394,
						["isDaily"] = true,
						["coord"] = { 52.0, 7.6, SPIRES_OF_ARAK },
						["g"] = {
							i(119407),	-- Cloudsplitter Greatstaff
						},
					}),
					n(85026, {	-- Soul-Twister Torek
						["questID"] = 37358,
						["isDaily"] = true,
						["coord"] = { 72.6, 19.6, SPIRES_OF_ARAK },
						["g"] = {
							i(119178),	-- Black Whirlwind (TOY!)
							i(119410),	-- Soultwisting Staff
						},
					}),
					n(84805, {	-- Stonespite
						["questID"] = 36265,
						["coord"] = { 33.6, 22.0, SPIRES_OF_ARAK },
						["g"] = {
							i(116858),	-- Stonespite Scale Leggings
						},
					}),
					n(84912, {	-- Sunderthorn
						["questID"] = 36298,
						["coord"] = { 58.6, 45.0, SPIRES_OF_ARAK },
						["description"] = "This rare can sometimes bug out. If you fly in fast enough, you can still enough wasps to get her to spawn. Melee classes may find this near impossible.",
						["g"] = {
							i(116855),	-- Stingtail's Toxic Stinger
						},
					}),
					n(85520, {	-- Swarmleaf
						["questID"] = 36472,
						["coord"] = { 52.8, 54.8, SPIRES_OF_ARAK },
						["g"] = {
							i(116857),	-- Stave of Buzzing Bark
						},
					}),
					n(84836, {	-- Talonbreaker <Bloodmane High Shaman>
						["questID"] = 36278,
						["coord"] = { 54.6, 63.2, SPIRES_OF_ARAK },
						["g"] = {
							i(116838),	-- Talonbreaker Talisman
						},
					}),
					n(84775, {	-- Tesska the Broken
						["questID"] = 36254,
						["coord"] = { 57.2, 73.8, SPIRES_OF_ARAK },
						["g"] = {
							i(116852),	-- Tesska's Cursed Talisman
						},
					}),
					n(82050, {	-- Varasha
						["questID"] = 35334,
						["coords"] = {
							{ 29.6, 42.0, SPIRES_OF_ARAK },	-- Varasha
							{ 31.5, 43.3, SPIRES_OF_ARAK },	-- Cave Entrance
						},
						["g"] = {
							i(118207),	-- Hydraling (PET!)
						},
					}),
					n(85078, {	-- Voidreaver Urnae
						["questID"] = 37359,
						["isDaily"] = true,
						["coords"] = {
							{ 73.6, 31.2, SPIRES_OF_ARAK },
							{ 74.8, 32.4, SPIRES_OF_ARAK },
						},
						["g"] = {
							i(119392),	-- Voidreaver's Axe
						},
					}),
				}),
				n(TREASURES, {
					o(235313, {	-- Abandoned Mining Pick (cannot be transmogged)
						["questID"] = 36458,
						["coord"] = { 40.6, 55.0, SPIRES_OF_ARAK },
						["g"] = {
							i(116913),	-- Peon's Mining Pick
						},
					}),
					o(235365, {	-- Admiral Taylor's Coffer
						["questID"] = 36462,
						["description"] = "The key is on a stone behind a skeleton in front of the closed mine, south of the garrison. (37.7, 56.3)",
						["coord"] = { 36.2, 54.4, SPIRES_OF_ARAK },
						["g"] = {
							currency(824),	-- Garrison Resources
							i(119348),	-- Admiral Taylor's Garrison Log
						},
					}),
					o(235143, {	-- Assassin's Spear
						["questID"] = 36445,
						["coord"] = { 49.2, 37.3, SPIRES_OF_ARAK },
						["g"] = {
							i(116835),	-- Assassin's Spear
						},
					}),
					o(232989, {	-- Basket of Arakkoa Goods
						["questID"] = 35627,
						["description"] = "Must establish your outpost to get this treasure.",
						["coords"] = {
							{ 40.1, 60.3, SPIRES_OF_ARAK },	-- alliance
							{ 40.1, 43.9, SPIRES_OF_ARAK },	-- horde
						},
					}),
					o(234473, {	-- Campaign Contributions
						["questID"] = 36367,
						["coord"] = { 55.5, 90.8, SPIRES_OF_ARAK },
						["description"] = "On a shelf above the doorway.",
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
						["g"] = {
							i(115463),	-- Elixir of Shadow Sight
						},
					}),
					o(234736, {	-- Elixir of Shadow Sight
						["repeatable"] = true,
						["questID"] = 36401,
						["coord"] = { 53.1, 84.5, SPIRES_OF_ARAK },
						["icon"] = 134746,
						["g"] = {
							i(115463),	-- Elixir of Shadow Sight
						},
					}),
					o(234705, {	-- Elixir of Shadow Sight
						["repeatable"] = true,
						["questID"] = 36398,
						["coord"] = { 69.2, 43.5, SPIRES_OF_ARAK },
						["icon"] = 134746,
						["g"] = {
							i(115463),	-- Elixir of Shadow Sight
						},
					}),
					o(234703, {	-- Elixir of Shadow Sight
						["repeatable"] = true,
						["questID"] = 36395,
						["coord"] = { 43.9, 15.0, SPIRES_OF_ARAK },
						["icon"] = 134746,
						["g"] = {
							i(115463),	-- Elixir of Shadow Sight
						},
					}),
					o(234735, {	-- Elixir of Shadow Sight
						["repeatable"] = true,
						["questID"] = 36400,
						["coord"] = { 55.6, 22.1, SPIRES_OF_ARAK },
						["icon"] = 134746,
						["g"] = {
							i(115463),	-- Elixir of Shadow Sight
						},
					}),
					o(234734, {	-- Elixir of Shadow Sight
						["repeatable"] = true,
						["questID"] = 36399,
						["coord"] = { 48.9, 62.5, SPIRES_OF_ARAK },
						["icon"] = 134746,
						["g"] = {
							i(115463),	-- Elixir of Shadow Sight
						},
					}),
					o(235097, {	-- Ephial's Dark Grimoire
						["questID"] = 36418,
						["coord"] = { 36.5, 57.9, SPIRES_OF_ARAK },
						["icon"] = 134746,
						["g"] = {
							i(116914),	-- Ephial's Grimoire
						},
					}),
					o(234157, {	-- Fractured Sunstone
						["questID"] = 36246,
						["coord"] = { 50.5, 22.1, SPIRES_OF_ARAK },
						["g"] = {
							i(116919),	-- Fractured Sunstone
						},
					}),
					o(235103, {	-- Garrison Supplies
						["questID"] = 36420,
						["coord"] = { 37.2, 47.5, SPIRES_OF_ARAK },
						["g"] = {
							currency(824),	-- Garrison Resources
						},
					}),
					o(235289, {	-- Garrison Workman's Hammer
						["questID"] = 36451,
						["coord"] = { 41.8, 50.5, SPIRES_OF_ARAK },
						["description"] = "This treasure is bugged as of 8.0.1. The hammer can be seen in the cart from a distance but disappears when you approach it due to zone phasing. If you fly in fast enough, you can still loot it.",
						["g"] = {
							i(116918),	-- Garrison Workman's Hammer
						},
					}),
					o(234618, {	-- Gift of Anzu
						["description"] = "Drink an Elixir of Shadow Sight near the Shrine to get the Gift of Anzu.",
						["cost"] = {{"i",115463,1}},	-- Elixir of Shadow Sight
						["questID"] = 36381,
						["coord"] = { 61.1, 55.3, SPIRES_OF_ARAK },
						["modelScale"] = 0.4,
						["g"] = {
							i(118240),	-- Anzu's Scything Talon
						},
					}),
					n(86961, {	-- Gift of Anzu
						["description"] = "Drink an Elixir of Shadow Sight near the Shrine to get the Gift of Anzu.",
						["cost"] = {{"i",115463,1}},	-- Elixir of Shadow Sight
						["questID"] = 36386,
						["coord"] = { 48.6, 44.4, SPIRES_OF_ARAK },
						["icon"] = 132372,	-- TODO: not working
						["g"] = {
							i(118237),	-- Anzu's Malice
						},
					}),
					n(86941, {	-- Gift of Anzu
						["description"] = "Drink an Elixir of Shadow Sight near the Shrine to get the Gift of Anzu.",
						["cost"] = {{"i",115463,1}},	-- Elixir of Shadow Sight
						["questID"] = 36388,
						["coord"] = { 42.42, 26.69, SPIRES_OF_ARAK },
						["icon"] = 132372,	-- TODO: not working
						["g"] = {
							i(118242),	-- Anzu's Scorn
						},
					}),
					n(86962, {	-- Gift of Anzu
						["description"] = "Drink an Elixir of Shadow Sight near the Shrine to get the Gift of Anzu.",
						["cost"] = {{"i",115463,1}},	-- Elixir of Shadow Sight
						["questID"] = 36389,
						["coord"] = { 46.9, 40.46, SPIRES_OF_ARAK },
						["icon"] = 132372,	-- TODO: not working
						["g"] = {
							i(118238),	-- Anzu's Reach
						},
					}),
					n(86953, {	-- Gift of Anzu
						["description"] = "Drink an Elixir of Shadow Sight near the Shrine to get the Gift of Anzu.",
						["cost"] = {{"i",115463,1}},	-- Elixir of Shadow Sight
						["questID"] = 36390,
						["coord"] = { 57.01, 78.93, SPIRES_OF_ARAK },
						["icon"] = 132372,	-- TODO: not working
						["g"] = {
							i(118241),	-- Anzu's Piercing Talon
						},
					}),
					n(86956, {	-- Gift of Anzu
						["description"] = "Drink an Elixir of Shadow Sight near the Shrine to get the Gift of Anzu.",
						["cost"] = {{"i",115463,1}},	-- Elixir of Shadow Sight
						["questID"] = 36392,
						["coord"] = { 52.0, 19.7, SPIRES_OF_ARAK },
						["icon"] = 132372,	-- TODO: not working
						["g"] = {
							i(118239),	-- Anzu's Stoicism
						},
					}),
					o(235141, {	-- Iron Horde Explosives
						["questID"] = 36444,
						["coord"] = { 50.4, 25.8, SPIRES_OF_ARAK },
						["g"] = {
							i(118691),	-- Iron Horde Explosives
						},
					}),
					o(234159, {	-- Lost Herb Satchel
						["questID"] = 36247,
						["coord"] = { 50.7, 28.7, SPIRES_OF_ARAK },
					}),
					o(235091, {	-- Lost Ring
						["questID"] = 36411,
						["coord"] = { 47.8, 36.1, SPIRES_OF_ARAK },
						["g"] = {
							i(116911),	-- Outcast Decoder Ring
						},
					}),
					o(235095, {	-- Misplaced Scroll
						["questID"] = 36416,
						["coord"] = { 52.5, 42.7, SPIRES_OF_ARAK },
						["g"] = {
							currency(824),	-- Garrison Resources
						},
					}),
					o(234154, {	-- Misplaced Scrolls
						["questID"] = 36244,
						["icon"] = 454060,
						["coord"] = { 42.7, 18.3, SPIRES_OF_ARAK },
						["g"] = {
							i(109585),	-- Arakkoa Cipher
						},
					}),
					o(235300, {	-- Mysterious Mushrooms
						["questID"] = 36454,
						["coord"] = { 63.6, 67.4, SPIRES_OF_ARAK },
					}),
					o(232458, {	-- Nizzix's Chest
						["questID"] = 35481,
						["coord"] = { 60.9, 87.8, SPIRES_OF_ARAK },
						["g"] = {
							currency(824),	-- Garrison Resources
						},
					}),
					o(234744, {	-- Offering to the Raven Mother
						["questID"] = 36403,
						["coord"] = { 53.31, 55.51, SPIRES_OF_ARAK },
						["g"] = {
							i(118267),	-- Ravenmother Offering
						},
					}),
					o(234746, {	-- Offering to the Raven Mother
						["questID"] = 36405,
						["coord"] = { 48.3, 52.6, SPIRES_OF_ARAK },
						["g"] = {
							i(118267),	-- Ravenmother Offering
						},
					}),
					o(234748, {	-- Offering to the Raven Mother
						["questID"] = 36406,
						["coord"] = { 48.9, 54.7, SPIRES_OF_ARAK },
						["g"] = {
							i(118267),	-- Ravenmother Offering
						},
					}),
					o(235073, {	-- Offering to the Raven Mother
						["questID"] = 36407,
						["coord"] = { 51.9, 64.6, SPIRES_OF_ARAK },
						["g"] = {
							i(118267),	-- Ravenmother Offering
						},
					}),
					o(235090, {	-- Offering to the Raven Mother
						["questID"] = 36410,
						["coord"] = { 61.0, 63.8, SPIRES_OF_ARAK },
						["g"] = {
							i(118267),	-- Ravenmother Offering
						},
					}),
					o(234740, {	-- Orcish Signaling Horn
						["questID"] = 36402,
						["coord"] = { 36.3, 39.5, SPIRES_OF_ARAK },
						["g"] = {
							i(120337),	-- Novice Rylak Hunter's Horn
						},
					}),
					o(234432, {	-- Ogron Plunder
						["questID"] = 36340,
						["coord"] = { 58.7, 60.3, SPIRES_OF_ARAK },
						["g"] = {
							i(116922),	-- Burglar's Vest
						},
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
					o(234449, {	-- Relics of the Outcasts
						["questID"] = 36355,
						["icon"] = 1002596,
						["coord"] = { 43.2, 27.2, SPIRES_OF_ARAK },
						["description"] = "Must have archaeology.",
					}),
					o(234454, {	-- Relics of the Outcasts
						["questID"] = 36359,
						["icon"] = 1002596,
						["coord"] = { 60.2, 53.8, SPIRES_OF_ARAK },
						["description"] = "Requires archaeology.",
					}),
					o(234446, {	-- Relics of the Outcasts
						["questID"] = 36354,
						["icon"] = 1002596,
						["coord"] = { 45.9, 44.2, SPIRES_OF_ARAK },
						["description"] = "Requires archaeology.",
					}),
					o(234451, {	-- Relics of the Outcasts
						["questID"] = 36356,
						["icon"] = 1002596,
						["coord"] = { 67.5, 39.9, SPIRES_OF_ARAK },
						["description"] = "Requires archaeology.",
					}),
					o(234455, {	-- Relics of the Outcasts
						["questID"] = 36360,
						["icon"] = 1002596,
						["coord"] = { 51.8, 48.9, SPIRES_OF_ARAK },
						["description"] = "Requires archaeology.",
					}),
					o(234155, {	-- Relics of the Outcasts
						["questID"] = 36245,
						["icon"] = 1002596,
						["coord"] = { 43.0, 16.5, SPIRES_OF_ARAK },
						["description"] = "Requires archaeology.",
					}),
					o(233975, {	-- Rooby's Roo
						["description"] = "Buy 3 Rooby Treats from Miril Dumonde in the basement of the inn and feed them to Rooby on the main floor of the inn.  Follow Rooby and feed him each time he stops until he leaves his treasure.",
						["questID"] = 36657,
						["coord"] = { 37.3, 50.7, SPIRES_OF_ARAK },
						["g"] = {
							i(116887),	-- Rooby Roo's Ruby Rollar
						},
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
						["g"] = {
							currency(824),	-- Garrison Resources
						},
					}),
					o(234456, {	-- Shattered Hand Lockbox
						["questID"] = 36361,
						["coord"] = { 47.9, 30.7, SPIRES_OF_ARAK },
						["g"] = {
							i(116920),	-- True Steel Lockbox
						},
					}),
					o(235310, {	-- Shredder Parts
						["questID"] = 36456,
						["coord"] = { 60.9, 84.6, SPIRES_OF_ARAK },
						["g"] = {
							currency(824),	-- Garrison Resources
						},
					}),
					o(380963, {	-- Small Pile of Ash
						["timeline"] = { ADDED_10_0_7 },
						["description"] = "Some North locations are phased until completing 'Orders From On High' [34658]",
						["sourceQuest"] = 34658,	-- Orders From On High
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
						["g"] = {
							i(199097),	-- Sacred Phoenix Ash
						},
					}),
					o(235135, {	-- Smuggled Apexis Artifacts
						["questID"] = 36433,
						["icon"] = 1002596,
						["coord"] = { 56.3, 45.3, SPIRES_OF_ARAK },
						["description"] = "Requires archaeology.",
					}),
					o(234471, {	-- Spray-O-Matic 5000 XT
						["questID"] = 36365,
						["coord"] = { 59.7, 81.5, SPIRES_OF_ARAK },
						["g"] = {
							currency(824),	-- Garrison Resources
						},
					}),
					n(85165, {	-- Statue of Anzu
						["questID"] = 36374,
						["coord"] = { 57.8, 22.2, SPIRES_OF_ARAK },
					}),
					o(235104, {	-- Sun-Touched Cache
						["questID"] = 36421,
						["icon"] = 1002596,
						["coord"] = { 34.1, 27.5, SPIRES_OF_ARAK },
						["description"] = "Requires archaeology.",
					}),
					o(235105, {	-- Sun-Touched Cache
						["questID"] = 36422,
						["icon"] = 1002596,
						["coord"] = { 33.3, 27.3, SPIRES_OF_ARAK },
						["description"] = "Requires archaeology.",
					}),
					o(234461, {	-- Toxicfang Venom
						["questID"] = 36364,
						["coord"] = { 54.4, 32.4, SPIRES_OF_ARAK },
						["g"] = {
							i(118695),	-- Toxicfang Venom
						},
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
							["g"] = {
								i(113096, {	-- Bloodmane Charm (TOY!)
									["isLimited"] = true,
									["cost"] = 5000000,	-- 500g
								}),
								i(79249),	-- Fel-Charred Tome
								i(113094, {	-- Gronnskin Bag
									["isLimited"] = true,
									["cost"] = 22000000,	-- 2,200g
								}),
								i(116915, {	-- Inactive Apexis Guardian
									["isLimited"] = true,
									["g"] = {
										follower(168),	-- Ziri'ak
									},
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
							["g"] = {
								i(113096, {	-- Bloodmane Charm (TOY!)
									["isLimited"] = true,
									["cost"] = 5000000,	-- 500g
								}),
								i(79249),	-- Fel-Charred Tome
								i(113094, {	-- Gronnskin Bag
									["isLimited"] = true,
									["cost"] = 22000000,	-- 2,200g
								}),
								i(116915, {	-- Inactive Apexis Guardian
									["isLimited"] = true,
									["g"] = {
										follower(168),	-- Ziri'ak
									},
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
						["g"] = {
							i(118080),	-- Admiral Taylor's Greatsword
						},
					}),
					n(87123, {	-- Vesharr
						["description"] = "Items will be unavailable until you complete the pet battle daily quest |cFFFFD700Vesharr|r.",
						["coord"] = { 46.4, 45.2, SPIRES_OF_ARAK },
						["g"] = {
							i(120051),	-- Kaliri Hatchling (PET!)
							i(120050, {	-- Veilwatcher Hatchling (PET!)
								["cost"] = 10000000,	-- 1,000g
							}),
						},
					}),
					n(88045, {	-- Zektar
						["sourceQuest"] = 34991,	-- To the... Rescue? [May be earlier in chain, but was available at this point]
						["coord"] = { 52.0, 50.4, SPIRES_OF_ARAK },
						["g"] = {
							i(199203, {	-- Phoenix Ash Talisman
								["timeline"] = { ADDED_10_0_7 },
								["cost"] = {
									{ "i", 199099, 1 },	-- Glittering Phoenix Ember
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