---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(DRAGON_ISLES, bubbleDown({ ["timeline"] = { ADDED_10_0_2_LAUNCH } }, {
	m(THE_WAKING_SHORES, {
		n(QUESTS, {
			header(HEADERS.Achievement, 16334, {	-- Waking Hope
				------ Prologue ------
				q(70197, {	-- The Call of the Isles [A]
					["maps"] = { STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["timeline"] = { ADDED_10_0_2_LAUNCH, REMOVED_TWW_LAUNCH },
				}),
				q(70198, {	-- The Call of the Isles [H]
					["maps"] = { ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
					["timeline"] = { ADDED_10_0_2_LAUNCH, REMOVED_TWW_LAUNCH },
				}),
				q(67700, {	-- To The Dragon Isles! [A]
					["sourceQuests"] = {
						66596,	--  Whispers in the Winds [A]
						70197,	--	The Call of the Isles [A]
					},
					["provider"] = { "n", 189077 },	-- Toddy Whiskers
					["coord"] = { 22.7, 55.6, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
				}),
				q(65444, {	-- To the Dragon Isles! [H]
					["sourceQuests"] = {
						65439,	-- Whispers on the Winds [H]
						70198,	-- The Call of the Isles [H]
					},
					["provider"] = { "n", 197279 },	-- Naleidea Rivergleam
					["coord"] = { 55.8, 12.7, DUROTAR },
					["races"] = HORDE_ONLY,
				}),
				q(70122, {	-- Explorers in Peril [A]
					["sourceQuests"] = { 67700 },	-- To The Dragon Isles! [A]
					["provider"] = { "n", 189022 },	-- Toddy Whiskers
					["coord"] = { 82.1, 31.9, THE_WAKING_SHORES },
					["races"] = ALLIANCE_ONLY,
				}),
				q(65452, {	-- Explorers in Peril [H]
					["sourceQuests"] = { 65444 },	-- To the Dragon Isles! [H]
					["provider"] = { "n", 184841 },	-- Naleidea Rivergleam
					["coord"] = { 80.6, 27.6, THE_WAKING_SHORES },
					["races"] = HORDE_ONLY,
				}),
				q(70124, {	-- Practice Materials [A]
					["sourceQuests"] = { 67700 },	-- To The Dragon Isles! [A]
					["provider"] = { "n", 189021 },	-- Thaelin Darkanvil
					["coord"] = { 82.1, 31.9, THE_WAKING_SHORES },
					["races"] = ALLIANCE_ONLY,
					["g"] = {
						i(198398),	-- Primal Proto-Whelp Scale (QI!)
					},
				}),
				q(65451, {	-- Practice Materials [H]
					["sourceQuests"] = { 65444 },	-- To the Dragon Isles! [H]
					["provider"] = { "n", 184844 },	-- Boss Magor
					["coord"] = { 80.6, 27.7, THE_WAKING_SHORES },
					["races"] = HORDE_ONLY,
					["g"] = {
						i(189565),	-- Primal Proto-Whelp Scale (QI!)
					},
				}),
				q(70123, {	-- Primal Pests [A]
					["sourceQuests"] = { 67700 },		-- To The Dragon Isles! [A]
					["provider"] = { "n", 189035 },	-- Scalecommander Azurathel
					["coord"] = { 82.2, 31.8, THE_WAKING_SHORES },
					["races"] = ALLIANCE_ONLY,
				}),
				q(65453, {	-- Primal Pests [H]
					["sourceQuests"] = { 65444 },	-- To the Dragon Isles! [H]
					["provider"] = { "n", 184859 },	-- Scalecommander Cindretresh
					["coord"] = { 80.7, 27.6, THE_WAKING_SHORES },
					["races"] = HORDE_ONLY,
				}),
				q(70125, {	-- Where is Wrathion? [A]
					["sourceQuests"] = {
						70122,	-- Explorers in Peril [A]
					},
					["provider"] = { "n", 187251 },	-- Toddy Whiskers
					["coord"] = { 76.6, 33.6, THE_WAKING_SHORES },
					["races"] = ALLIANCE_ONLY,
				}),
				q(69910, {	-- Where is Wrathion? [H]
					["sourceQuests"] = {
						65452,	-- Explorers in Peril [H]
					},
					["provider"] = { "n", 184870 },	-- Naleidea Rivergleam
					["coord"] = { 76.6, 33.6, THE_WAKING_SHORES },
					["races"] = HORDE_ONLY,
				}),
				q(69911, {	-- Excuse the Mess
					["sourceQuests"] = {
						70125,	-- Where is Wrathion? [A]
						69910,	-- Where is Wrathion? [H]
					},
					["provider"] = { "n", 193362 },	-- Sendrax
					["coord"] = { 76.6, 33.7, THE_WAKING_SHORES },
				}),
				q(69912, {	-- My First Real Emergency!
					["sourceQuests"] = {
						69911,	-- Excuse the Mess
						70123,	-- Primal Pests [A]
						65453,	-- Primal Pests [H]
						70124,	-- Practice Materials [A]
						65451,	-- Practice Materials [H]
					},
					["provider"] = { "n", 193362 },	-- Sendrax
					["coord"] = { 76.6, 33.7, THE_WAKING_SHORES },
				}),
				q(69914, {	-- The Djaradin Have Awoken
					["sourceQuests"] = { 69912 },	-- My First Real Emergency!
					["provider"] = { "n", 193372 },	-- Majordomo Selistra
					["coord"] = { 76.6, 33.7, THE_WAKING_SHORES },
				}),
				------ Chapter 1 ------
				q(65760, {	-- Reporting for Duty
					["sourceQuests"] = { 69914 },	-- The Djaradin Have Awoken
					["provider"] = { "n", 193363 },	-- Sendrax
					["coord"] = { 76.3, 34.4, THE_WAKING_SHORES },
				}),
				q(65990, {	-- Deliver Whelps From Evil
					["sourceQuests"] = { 65760 },	-- Reporting for Duty
					["provider"] = { "n", 186584 },	-- Commander Lethanak
					["coord"] = { 71.2, 40.8, THE_WAKING_SHORES },
				}),
				q(65989, {	-- Invader Djaradin
					["sourceQuests"] = { 65760 },	-- Reporting for Duty
					["provider"] = { "n", 186584 },	-- Commander Lethanak
					["coord"] = { 71.2, 40.8, THE_WAKING_SHORES },
					["g"] = {
						i(194401),	-- Expedition Guard's Chestguard
						i(194402),	-- Expedition Mercenary's Hauberk
						i(194400),	-- Expedition Researcher's Vestments
						i(194403),	-- Field Scout's Vest
					},
				}),
				q(65991, {	-- Time for a Reckoning
					["sourceQuests"] = {
						65990,	-- Deliver Whelps From Evil
						65989,	-- Invader Djaradin
					},
					["provider"] = { "n", 186584 },	-- Commander Lethanak
					["coord"] = { 71.2, 40.8, THE_WAKING_SHORES },
				}),
				q(65992, {	-- Blacktalon Intel
					["sourceQuests"] = { 65991 },	-- Time for a Reckoning
					["provider"] = { "n", 186640 },	-- Wrathion
					["coord"] = { 66.4, 35.0, THE_WAKING_SHORES },
				}),
				q(65993, {	-- Killjoy
					["sourceQuests"] = { 65991 },	-- Time for a Reckoning
					["provider"] = { "n", 186640 },	-- Wrathion
					["coord"] = { 66.4, 35.0, THE_WAKING_SHORES },
					["g"] = {
						i(194389),	-- Brush Clearing Axe
						i(194392),	-- Expedition Defender's Blade
						i(194378),	-- Explorer's Belt Knife
						i(194374),	-- Explorers' League Rifle
						i(194375),	-- Explorer's Short Sword
						i(194373),	-- Field Explorer's Stave
						i(194394),	-- Persistent Threat Cleaver
						i(194377),	-- Reliquary Dissection Knife
						i(198488),	-- Staff of Discovery
					},
				}),
				q(65995, {	-- The Obsidian Citadel
					["sourceQuests"] = {
						65992,	-- Blacktalon Intel
						65993,	-- Killjoy
					},
					["provider"] = { "i", 193874 },	-- Qalashi Plans
					["coord"] = { 63.1, 29.5, THE_WAKING_SHORES },
				}),
				q(65996, {	-- Veteran Reinforcements
					["sourceQuests"] = { 65995 },	-- The Obsidian Citadel
					["provider"] = { "n", 186767 },	-- Majordomo Selistra
					["coord"] = { 62.7, 33.1, THE_WAKING_SHORES },
					["g"] = {
						i(193917),	-- Rejuvenating Draught
					},
				}),
				q(65997, {	-- Chasing Sendrax
					["sourceQuests"] = { 65996 },	-- Veteran Reinforcements
					["provider"] = { "n", 190155 },	-- Caretaker Azkra
					["coord"] = { 55.0, 30.8, THE_WAKING_SHORES },
				}),
				q(65998, {	-- Future of the Flights
					["sourceQuests"] = { 65997 },	-- Chasing Sendrax
					["provider"] = { "n", 187406 },	-- Sendrax
					["coord"] = { 55.2, 25.0, THE_WAKING_SHORES },
				}),
				q(66000, {	-- Library of Alexstrasza
					["sourceQuests"] = { 65997 },	-- Chasing Sendrax
					["provider"] = { "o", 377499 },	-- On the Origin of Draconic Species
					["coord"] = { 55.3, 24.7, THE_WAKING_SHORES },
					["g"] = {
						o(376943, {	-- Dracuixote
							["coord"] = { 53.5, 22.0, THE_WAKING_SHORES },
							["g"] = { i(192754) },	-- Dracuixote (QI!)
						}),
						o(376946, {	-- Pride and Protodrakes
							["coord"] = { 54.7, 20.5, THE_WAKING_SHORES },
							["g"] = { i(192757) },	-- Pride and Protodrakes (QI!)
						}),
						o(376944, {	-- The Lord of the Wings
							["coord"] = { 54.6, 20.6, THE_WAKING_SHORES },
							["g"] = { i(192755) },	-- The Lord of the Wings (QI!)
						}),
						o(376945, {	-- The Red and the Black Flights
							["coord"] = { 57.6, 23.8, THE_WAKING_SHORES },
							["g"] = { i(192756) },	-- The Red and the Black Flights (QI!)
						}),
						o(376942, {	-- The Scales of Wrath
							["coord"] = { 53.4, 22.5, THE_WAKING_SHORES },
							["g"] = { i(192753) },	-- The Scales of Wrath (QI!)
						}),
						o(376941, {	-- The Titanic Comedy
							["coord"] = { 57.1, 23.8, THE_WAKING_SHORES },
							["g"] = { i(192745) },	-- The Titanic Comedy (QI!)
						}),
					},
				}),
				q(65999, {	-- Red in Tooth and Claw
					["sourceQuests"] = { 65997 },	-- Chasing Sendrax
					["provider"] = { "n", 187406 },	-- Sendrax
					["coord"] = { 55.2, 25.0, THE_WAKING_SHORES },
					["g"] = {
						i(194369),	-- Primalist Pendant
					},
				}),
				q(66001, {	-- A Last Hope
					["sourceQuests"] = {
						65998,	-- Future of the Flights
						66000,	-- Library of Alexstrasza
						65999,	-- Red in Tooth and Claw
					},
					["provider"] = { "n", 190171 },	-- Sendrax
					["coord"] = { 54.0, 22.8, THE_WAKING_SHORES },
					["g"] = {
						i(194382),	-- Expedition Mercenary's Boots
						i(194381),	-- Expedition Researcher's Treads
						i(194338),	-- Expedition Guard's Sabatons
						i(194383),	-- Field Scout's Boots
					},
				}),
				------ Chapter 2 ------
				q(66114, {	-- For the Benefit of the Queen
					["sourceQuests"] = { 66001 },	-- A Last Hope
					["provider"] = { "n", 186795 },	-- Majordomo Selistra
					["coord"] = { 55.1, 31.0, THE_WAKING_SHORES },
				}),
				q(68795, {	-- Dragonriding
					["sourceQuests"] = { 66114 },	-- For the Benefit of the Queen
					["provider"] = { "n", 187290 },	-- Alexstrasza the Life-Binder
					["coord"] = { 62.3, 73.0, THE_WAKING_SHORES },
					["g"] = {
						i(194034),	-- Renewed Proto-Drake (MOUNT!)
						ach(15794),	-- A New Friend
					},
				}),
				q(65118, {	-- How to Glide with Your Dragon
					["sourceQuests"] = { 68795 },	-- Dragonriding
					["provider"] = { "n", 193287 },	-- Lord Andestrasz
					["coord"] = { 57.7, 66.9, THE_WAKING_SHORES },
					["g"] = {
						i(188134),	-- Bronze Timepiece
					},
				}),
				q(65120, {	-- How To Dive with Your Dragon
					["sourceQuests"] = { 65118 },	-- How to Glide with Your Dragon
					["provider"] = { "n", 193287 },	-- Lord Andestrasz
					["coord"] = { 57.7, 66.9, THE_WAKING_SHORES },
					["g"] = {
						i(188139),	-- Bronze Timepiece
					},
				}),
				q(65133, {	-- How to Use Momentum with Your Dragon
					["sourceQuests"] = { 65120 },	-- How To Dive with Your Dragon
					["provider"] = { "n", 193287 },	-- Lord Andestrasz
					["coord"] = { 57.7, 66.9, THE_WAKING_SHORES },
					["g"] = {
						i(188169),	-- Bronze Timepiece
					},
				}),
				q(77345, {	-- The Need For Higher Velocities
					["sourceQuests"] = { 65133 },	-- How to Use Momentum with Your Dragon
					["provider"] = { "n", 193287 },	-- Lord Andestrasz
					["timeline"] = { ADDED_10_1_7 },
					["coord"] = { 57.7, 66.9, THE_WAKING_SHORES },
					["g"] = {
						i(208182),	-- Bronze Timepiece (QI!)
					},
				}),
				q(68796, {	-- The Skytop Observatory
					["sourceQuests"] = { 65133 },	-- How to Use Momentum with Your Dragon
					["provider"] = { "n", 193287 },	-- Lord Andestrasz
					["coord"] = { 57.7, 66.9, THE_WAKING_SHORES },
				}),
				q(68797, {	-- A New Set of Horns
					["sourceQuests"] = { 68796 },	-- The Skytop Observatory
					["provider"] = { "n", 193359 },	-- Lord Andestrasz
					["coord"] = { 75.2, 55.0, THE_WAKING_SHORES },
					["g"] = {
						i(197380),	-- Renewed Proto-Drake: Curved Horns (MM!)
						i(197365),	-- Renewed Proto-Drake: Finned Crest (MM!)
					},
				}),
				q(68798, {	-- Dragon Glyphs and You
					["sourceQuests"] = { 68797 },	-- A New Set of Horns
					["provider"] = { "n", 193359 },	-- Lord Andestrasz
					["coord"] = { 75.2, 55.0, THE_WAKING_SHORES },
				}),
				q(68799, {	-- Return to the Ruby Lifeshrine
					["sourceQuests"] = { 68798 },	-- Meet the Trainers
					["provider"] = { "n", 193359 },	-- Lord Andestrasz
					["coord"] = { 75.2, 55.0, THE_WAKING_SHORES },
				}),
				q(66115, {	-- The Mandate of the Red
					["sourceQuests"] = { 66114 },	-- For the Benefit of the Queen
					["provider"] = { "n", 187290 },	-- Alexstrasza the Life-Binder
					["coord"] = { 62.3, 73.0, THE_WAKING_SHORES },
					["g"] = {
						i(194344),	-- Expedition Guard's Gauntlets
						i(194346),	-- Expedition Mercenary's Grips
						i(194345),	-- Expedition Researcher's Gloves
						i(194343),	-- Field Scout's Gloves
					},
				}),
				q(70061, {	-- Training Wings
					["sourceQuests"] = { 66115 },	-- The Mandate of the Red
					["provider"] = { "n", 194174 },	-- Amella
					["coord"] = { 62.2, 70.5, THE_WAKING_SHORES },
					["g"] = {
						i(197406),	-- Renewed Proto-Drake: Spined Tail (MM!)
					},
				}),
				q(66931, {	-- Who Brought the Ruckus?
					["sourceQuests"] = {
						68799,	-- Return to the Ruby Lifeshrine
						70061,	-- Training Wings
					},
					["provider"] = { "n", 187290 },	-- Alexstrasza the Life-Binder
					["coord"] = { 62.3, 73.0, THE_WAKING_SHORES },
				}),
				q(66116, {	-- The Primary Threat
					["sourceQuests"] = { 66931 },	-- Who Brought the Ruckus?
					["provider"] = { "n", 190293 },	-- Majordomo Selistra
					["coord"] = { 59.5, 72.6, THE_WAKING_SHORES },
				}),
				q(66118, {	-- Basalt Assault
					["sourceQuests"] = { 66116 },	-- The Primary Threat
					["provider"] = { "n", 187119 },	-- Commander Lethanak
					["coord"] = { 59.5, 75.9, THE_WAKING_SHORES },
					["g"] = {
						i(194366),	-- Carved Basalt Ring
					},
				}),
				q(66121, {	-- Egg Evac
					["sourceQuests"] = { 66118 },	-- Basalt Assault
					["provider"] = { "n", 187129 },	-- Majordomo Selistra
					["coord"] = { 59.5, 76.1, THE_WAKING_SHORES },
					["g"] = {
						i(192436),	-- Ruby Spear
					},
				}),
				q(66122, {	-- Proto-Fight
					["sourceQuests"] = { 66118 },	-- Basalt Assault
					["provider"] = { "n", 187119 },	-- Commander Lethanak
					["coord"] = { 59.5, 75.9, THE_WAKING_SHORES },
					["g"] = {
						i(192436),	-- Ruby Spear
					},
				}),
				q(66123, {	-- Cut Off the Head
					["sourceQuests"] = {
						66121,	-- Egg Evac
						66122,	-- Proto-Fight
					},
					["provider"] = { "n", 191895 },	-- Majordomo Selistra
					["coord"] = { 53.7, 80.2, THE_WAKING_SHORES },
					["g"] = {
						i(194355),	-- Expedition Guard's Spaulders
						i(194357),	-- Expedition Mercenary's Monnion
						i(194356),	-- Expedition Researcher's Mantle
						i(194354),	-- Field Scout's Spaulders
						i(192436),	-- Ruby Spear
					},
				}),
				q(66124, {	-- Exeunt, Triumphant
					["sourceQuests"] = { 66123 },	-- Cut Off the Head
					["provider"] = { "n", 191895 },	-- Majordomo Selistra
					["coord"] = { 53.7, 80.2, THE_WAKING_SHORES },
					["g"] = {
						i(197378),	-- Renewed Proto-Drake: Subtle Horns (MM!)
					},
				}),
				------ Chapter 3 ------
				q(66079, {	-- Wrathion Awaits
					["sourceQuests"] = { 66124 },	-- Exeunt, Triumphant
					["provider"] = { "n", 187115 },	-- Alexstrasza the Life-Binder
					["coord"] = { 46.1, 78.3, THE_WAKING_SHORES },
				}),
				q(72241, {	-- Lessons from Our Past
					["sourceQuests"] = {
						66124,	-- Exeunt, Triumphant
						66079,	-- Wrathion Awaits
					},
					["provider"] = { "n", 192795 },	-- Scalecommander Emberthal
					["coord"] = { 42.4, 66.8, THE_WAKING_SHORES },
				}),
				q(66048, {	-- Best Plans and Intentions
					["sourceQuests"] = { 72241 },	-- Lessons from Our Past
					["provider"] = { "n", 192795 },	-- Scalecommander Emberthal
					["coord"] = { 42.5, 66.8, THE_WAKING_SHORES },
				}),
				q(66078, {	-- Sharp Practice
					["sourceQuests"] = { 72241 },	-- Lessons from Our Past
					["provider"] = { "n", 186274 },	-- Wrathion
					["coord"] = { 42.5, 66.8, THE_WAKING_SHORES },
				}),
				q(65957, {	-- No Time For Heroes
					["sourceQuests"] = {
						66048,	-- Best Plans and Intentions
						66078,	-- Sharp Practice
					},
					["provider"] = { "n", 186274 },	-- Wrathion
					["coord"] = { 42.5, 66.8, THE_WAKING_SHORES },
					["g"] = {
						i(194370),	-- Drape of the Djaradin Slayer
					},
				}),
				q(65956, {	-- Talon Strike
					["sourceQuests"] = {
						66048,	-- Best Plans and Intentions
						66078,	-- Sharp Practice
					},
					["provider"] = { "n", 186274 },	-- Wrathion
					["coord"] = { 42.5, 66.8, THE_WAKING_SHORES },
				}),
				q(65939, {	-- The Courage of One's Convictions
					["sourceQuests"] = {
						65957,	-- No Time For Heroes
						65956,	-- Talon Strike
					},
					["provider"] = { "n", 186681 },	-- Wrathion
					["coord"] = { 34.0, 61.3, THE_WAKING_SHORES },
				}),
				q(66044, {	-- Taking the Walls
					["sourceQuests"] = {
						65957,	-- No Time For Heroes
						65956,	-- Talon Strike
						65939,	-- The Courage of One's Convictions
					},
					["provider"] = { "n", 186933 },	-- Wrathion
					["coord"] = { 29.2, 58.8, THE_WAKING_SHORES },
				}),
				q(66049, {	-- Obsidian Oathstone
					["sourceQuests"] = { 66044 },	-- Taking the Walls
					["provider"] = { "n", 196265 },	-- Wrathion
					["coord"] = { 26.4, 58.8, THE_WAKING_SHORES },
				}),
				q(66055, {	-- A Shattered Past
					["sourceQuests"] = { 66049 },	-- Obsidian Oathstone
					["provider"] = { "n", 186493 },	-- Forgemaster Bazentus
					["coord"] = { 27.3, 62.8, THE_WAKING_SHORES },
					["g"] = {
						i(194358),	-- Expedition Guard's Girdle
						i(194360),	-- Expedition Mercenary's Belt
						i(194359),	-- Expedition Researcher's Sash
						i(194361),	-- Field Scout's Belt
						i(191131),	-- Oathstone Fragment
					},
				}),
				q(66056, {	-- Forging A New Future
					["sourceQuests"] = {
						66055,	-- A Shattered Past
						65939,	-- The Courage of One's Convictions
					},
					["provider"] = { "n", 186493 },	-- Forgemaster Bazentus
					["coord"] = { 27.3, 62.8, THE_WAKING_SHORES },
					["g"] = {
						i(192548),	-- Cindershard Coal (QI!)
					},
				}),
				q(66354, {	-- The Spark
					["sourceQuests"] = { 66056 },	-- Forging A New Future
					["provider"] = { "n", 186493 },	-- Forgemaster Bazentus
					["coord"] = { 24.7, 61.1, THE_WAKING_SHORES },
				}),
				q(66057, {	-- Restoring the Faith
					["sourceQuests"] = { 66354 },	-- The Spark
					["provider"] = { "n", 186493 },	-- Forgemaster Bazentus
					["coord"] = { 24.7, 61.1, THE_WAKING_SHORES },
					["g"] = {
						i(194340),	-- Expedition Guard's Greaves
						i(194341),	-- Expedition Mercenary's Legguards
						i(194339),	-- Expedition Researcher's Pantaloons
						i(194342),	-- Field Scout's Pants
					},
				}),
				------ Chapter 4 ------
				q(66780, {	-- Claimant to the Throne
					["sourceQuests"] = { 66057 },	-- Restoring the Faith
					["provider"] = { "n", 187495 },	-- Wrathion
					["coord"] = { 24.4, 55.5, THE_WAKING_SHORES },
				}),
				q(66779, {	-- Heir Apparent
					["sourceQuests"] = { 66057 },	-- Restoring the Faith
					["provider"] = { "n", 185894 },	-- Sabellian
					["coord"] = { 24.2, 55.9, THE_WAKING_SHORES },
				}),
				q(65793, {	-- Black Wagon Flight
					["sourceQuests"] = {
						66780,	-- Claimant to the Throne
						66779,	-- Heir Apparent
					},
					["provider"] = { "n", 185894 },	-- Sabellian
					["coord"] = { 24.2, 55.9, THE_WAKING_SHORES },
					["g"] = {
						i(194363),	-- Expedition Guard's Vambraces
						i(194364),	-- Expedition Mercenary's Bracers
						i(194362),	-- Expedition Researcher's Wraps
						i(194365),	-- Field Scout's Bindings
					},
				}),
				q(66785, {	-- The Last Eggtender
					["sourceQuests"] = { 65793 },	-- Black Wagon Flight
					["provider"] = { "n", 190740 },	-- Sabellian
					["coord"] = { 58.0, 67.3, THE_WAKING_SHORES },
				}),
				q(66788, {	-- Eggcited for the Future
					["sourceQuests"] = { 66785 },	-- The Last Eggtender
					["provider"] = { "n", 185904 },	-- Mother Elion
					["coord"] = { 61.6, 68.7, THE_WAKING_SHORES },
				}),
				q(65791, {	-- Life-Binder on Duty
					["sourceQuests"] = { 66788 },	-- Eggcited for the Future
					["provider"] = { "n", 185904 },	-- Mother Elion
					["coord"] = { 61.6, 68.7, THE_WAKING_SHORES },
					["g"] = {
						i(194399),	-- Lifegift Ruby
					},
				}),
				q(65794, {	-- A Change of Care
					["sourceQuests"] = { 65791 },	-- Life-Binder on Duty
					["provider"] = { "n", 185905 },	-- Alexstrasza the Life-Binder
					["coord"] = { 62.3, 73.0, THE_WAKING_SHORES },
					["g"] = {
						i(194380),	-- Expedition Guard's Helm
						i(194348),	-- Expedition Mercenary's Helm
						i(194347),	-- Expedition Researcher's Hood
						i(194349),	-- Field Scout's Helmet
					},
				}),
				q(70641, {	-- A Waking Oath
					["sourceQuests"] = { 65791 },	-- Life-Binder on Duty
					["provider"] = { "n", 185905 },	-- Alexstrasza the Life-Binder
					["coord"] = { 62.3, 73.0, THE_WAKING_SHORES },
					["classes"] = { EVOKER },
					["races"] = { DRACTHYR_ALLIANCE, DRACTHYR_HORDE },
				}),
				------ Continues in Ohn'ahran Plains ------
			}),
			header(HEADERS.AchCriteria, 16401.01, {	-- Beyond the Barrier
				q(69896, {	-- Disastrous Detour
					["sourceQuests"] = { 66001 },	-- A Last Hope
					["provider"] = { "n", 190273 },	-- Scout Kuvaeth
					["coord"] = { 63.5, 61.8, THE_WAKING_SHORES },
					["isBreadcrumb"] = true,
				}),
				q(66437, {	-- A Key Element
					["sourceQuests"] = { 69896 },	-- Disastrous Detour
					["provider"] = { "i", 191904 },	-- Orb of Primal Stone
					["coord"] = { 66.5, 57.7, THE_WAKING_SHORES },
				}),
				q(66435, {	-- Site Salvage
					["sourceQuests"] = { 69896 },	-- Disastrous Detour
					["provider"] = { "n", 188735 },	-- Elementalist Taiyang
					["coord"] = { 66.1, 58.1, THE_WAKING_SHORES },
				}),
				q(66436, {	-- Unearthed Troublemakers
					--["sourceQuests"] = {  },	-- Unknown
					["provider"] = { "n", 188735 },	-- Elementalist Taiyang
					["coord"] = { 66.1, 58.1, THE_WAKING_SHORES },
					["g"] = {
						i(194410),	-- Cinch of the Ruby Defenders
						i(194409),	-- Earth Binding Chain
						i(194408),	-- Life Vault Cord
						i(194407),	-- Ruby Guardian's Girdle
					},
				}),
				q(66441, {	-- Distilled Effort
					["sourceQuests"] = {
						66437,	-- A Key Element
						66435,	-- Site Salvage
						66436,	-- Unearthed Troublemakers
					},
					["provider"] = { "n", 190352 },	-- Elementalist Taiyang
					["coord"] = { 66.6, 56.1, THE_WAKING_SHORES },
					["g"] = {
						i(194367),	-- Band of Focused Elements
						i(192562),	-- Orb of Primal Waves (QI!)
					},
				}),
				q(66438, {	-- Lofty Goals
					["sourceQuests"] = {
						66437,	-- A Key Element
						66435,	-- Site Salvage
						66436,	-- Unearthed Troublemakers
					},
					["provider"] = { "n", 188503 },	-- Examiner Tae'Shara Bloodwatcher
					["coord"] = { 66.6, 56.1, THE_WAKING_SHORES },
					["g"] = {
						i(192524),	-- Orb of Primal Gales (QI!)
					},
				}),
				q(66439, {	-- Rapid Fire Plans
					["sourceQuests"] = {
						66437,	-- A Key Element
						66435,	-- Site Salvage
						66436,	-- Unearthed Troublemakers
					},
					["provider"] = { "n", 188053 },	-- Acadia Chistlestone
					["coord"] = { 66.6, 56.1, THE_WAKING_SHORES },
					["g"] = {
						i(192546),	-- Orb of Primal Flames (QI!)
						i(192545),	-- Primal Flame Fragment (QI!)
					},
				}),
				q(66442, {	-- Let's Get Theoretical
					["sourceQuests"] = {
						66441,	-- Distilled Effort
						66438,	-- Lofty Goals
						66439,	-- Rapid Fire Plans
					},
					["provider"] = { "n", 190352 },	-- Elementalist Taiyang
					["coord"] = { 66.6, 56.1, THE_WAKING_SHORES },
				}),
				q(66447, {	-- Beyond the Barrier
					["sourceQuests"] = { 66442 },	-- Let's Get Theoretical
					["provider"] = { "n", 190353 },	-- Elementalist Taiyang
					["coord"] = { 66.4, 55.7, THE_WAKING_SHORES },
					["g"] = {
						i(194393),	-- Expedition Guard's Cudgel
						i(194371),	-- Expedition Guard's Shield
						i(194379),	-- Field Scout's Longblade
						i(192480),	-- Fragmented Record Rubbing (QI!)
						i(194386),	-- League Mercenary's Mace
						i(194416),	-- Titan Lightning Generator
						i(194372),	-- Vault Guardian's Missive
						i(194376),	-- Vault Guardian's Poleaxe
						i(194417),	-- Vault Guard's Talon
					},
				}),
			}),
			header(HEADERS.AchCriteria, 16401.02, {	-- Brave Researchers
				q(69897, {	-- Behavior Analysis "Homework"
					["sourceQuests"] = { 66963 },	-- Out For Delivery
					["provider"] = { "n", 193500 },	-- Iyali
					["coord"] = { 45.9, 81.4, THE_WAKING_SHORES },
				}),
				q(69898, {	-- Scientfic Meat-thod
					["sourceQuests"] = { 66963 },	-- Out For Delivery
					["provider"] = { "n", 193500 },	-- Iyali
					["coord"] = { 45.9, 81.4, THE_WAKING_SHORES },
				}),
				q(69899, {	-- Secret Research
					["sourceQuests"] = {
						69897,	-- Behavior Analysis "Homework"
						69898,	-- Scientfic Meat-thod
					},
					["provider"] = { "n", 193500 },	-- Iyali
					["coord"] = { 45.9, 81.4, THE_WAKING_SHORES },
				}),
				q(69901, {	-- Bring In the Expert
					["sourceQuests"] = { 69899 },	-- Secret Research
					["provider"] = { "n", 192298 },	-- Tyrgon
					["coord"] = { 46.0, 81.5, THE_WAKING_SHORES },
				}),
				q(69900, {	-- Identifying the Source
					["sourceQuests"] = { 69899 },	-- Secret Research
					["provider"] = { "n", 192298 },	-- Tyrgon
					["coord"] = { 46.0, 81.5, THE_WAKING_SHORES },
				}),
				q(69902, {	-- Theory in Practice
					["sourceQuests"] = {
						69901,	-- Bring In the Expert
						69900,	-- Identifying the Source
					},
					["provider"] = { "n", 192298 },	-- Tyrgon
					["coord"] = { 46.0, 81.5, THE_WAKING_SHORES },
				}),
			}),
			header(HEADERS.AchCriteria, 16401.03, {	-- Professional Protographer
				q(66963, {	-- Out For Delivery
					["provider"] = { "n", 191698 },	-- Hauler Bennet
					["coord"] = { 48.5, 78.9, THE_WAKING_SHORES },
					["isBreadcrumb"] = true,
				}),
				q(66524, {	-- Amateur Protography
					["sourceQuests"] = { 66963 },	-- Out For Delivery
					["provider"] = { "n", 187705 },	-- Cataloger Wulferd
					["coord"] = { 48.5, 82.7, THE_WAKING_SHORES },
					["g"] = {
						i(192465),	-- Wulferd's Award-Winning Camera
					},
				}),
				q(66525, {	-- Competitive Protography
					["sourceQuests"] = { 66524 },	-- Amateur Protography
					["provider"] = { "n", 193740 },	-- Cataloger Wulferd
					["coord"] = { 39.0, 83.2, THE_WAKING_SHORES },
					["g"] = {
						i(192465),	-- Wulferd's Award-Winning Camera
					},
				}),
				q(66526, {	-- Preserving the Wild
					["sourceQuests"] = { 66524 },	-- Amateur Protography
					["provider"] = { "n", 193954 },	-- Dervishian
					["coord"] = { 39.1, 83.3, THE_WAKING_SHORES },
				}),
				q(66527, {	-- Professional Protography
					["sourceQuests"] = {
						66525,	-- Competitive Protography
						66526,	-- Preserving the Wild
					},
					["provider"] = { "n", 193740 },	-- Cataloger Wulferd
					["coord"] = { 39.0, 83.2, THE_WAKING_SHORES },
					["g"] = {
						i(192465),	-- Wulferd's Award-Winning Camera
					},
				}),
				q(66528, {	-- King Without a Crown
					["sourceQuests"] = { 66527 },	-- Professional Protography
					["provider"] = { "n", 193954 },	-- Dervishian
					["coord"] = { 39.1, 83.3, THE_WAKING_SHORES },
				}),
				q(66529, {	-- A Thousand Words
					["sourceQuests"] = { 66528 },	-- King Without a Crown
					["provider"] = { "n", 193954 },	-- Dervishian
					["coord"] = { 39.1, 83.3, THE_WAKING_SHORES },
					["g"] = {
						i(192465),	-- Wulferd's Award-Winning Camera
					},
				}),
			}),
			header(HEADERS.AchCriteria, 16401.04, {	-- Ruby Lifecalling
				q(66825, {	-- A Ruby Lifecalling
					["sourceQuests"] = {
						66114,	-- For the Benefit of the Queen
						70125,	-- Where is Wrathion? (A)
						69910,	-- Where is Wrathion? (H)
						DF_ACCOUNT_CAMPAIGN_QUEST,
					},
					["sourceQuestNumRequired"] = 1,
					["provider"] = { "n", 191025 },	-- Lifecaller Tzadrak
					["coord"] = { 61.9, 73.8, THE_WAKING_SHORES },
				}),
				q(70351, {	-- Garden Party
					["sourceQuests"] = { 66825 },	-- A Ruby Lifecalling
					["provider"] = { "n", 191012 },	-- Akora
					["coord"] = { 61.7, 73.7, THE_WAKING_SHORES },
				}),
				q(66827, {	-- Flowers of our Labor
					["sourceQuests"] = { 70351 },	-- Garden Party
					["provider"] = { "n", 190866 },	-- Akora
					["coord"] = { 60.2, 66.4, THE_WAKING_SHORES },
					["g"] = {
						i(193826),	-- Trusty Dragonkin Rake
					},
				}),
				q(66828, {	-- Huddle at the Hollow
					["sourceQuests"] = { 66827 },	-- Flowers of our Labor
					["provider"] = { "n", 190868 },	-- Keshki
					["coord"] = { 60.2, 66.4, THE_WAKING_SHORES },
				}),
				q(66830, {	-- Hornswoggled!
					["sourceQuests"] = { 66828 },	-- Huddle at the Hollow
					["provider"] = { "n", 191011 },	-- Keshki
					["coord"] = { 65.3, 63.7, THE_WAKING_SHORES },
					["g"] = {
						i(193918),	-- Jar of Fireflies
					},
				}),
				q(66831, {	-- Home Is Where the Frogs Are
					["sourceQuests"] = { 66830 },	-- Hornswoggled!
					["provider"] = { "n", 191011 },	-- Keshki
					["coord"] = { 65.3, 63.7, THE_WAKING_SHORES },
					["g"] = {
						i(197399),	-- Renewed Proto-Drake: Razor Snout (MM!)
					},
				}),
				q(66879, {	-- Hornstrider Havoc
					["sourceQuests"] = { 66825 },	-- A Ruby Lifecalling
					["provider"] = { "n", 191176 },	-- Dazakros
					["coord"] = { 61.7, 73.8, THE_WAKING_SHORES },
				}),
				q(66893, {	-- Beaky Reclamation
					["sourceQuests"] = { 66879 },	-- Hornstrider Havoc
					["provider"] = { "n", 191280 },	-- Dazakros
					["coord"] = { 53.4, 58.4, THE_WAKING_SHORES },
					["g"] = {
						i(194434),	-- Pungent Salve
					},
				}),
				q(66892, {	-- Deluge Dilemma
					["sourceQuests"] = { 66879 },	-- Hornstrider Havoc
					["provider"] = { "n", 191280 },	-- Dazakros
					["coord"] = { 53.4, 58.4, THE_WAKING_SHORES },
				}),
				q(66997, {	-- Nursery Direction
					["sourceQuests"] = { 66825 },	-- A Ruby Lifecalling
					["provider"] = { "n", 191174 },	-- Vaeros
					["coord"] = { 61.8, 73.6, THE_WAKING_SHORES },
				}),
				q(66735, {	-- Just a Trim
					["sourceQuests"] = { 66997 },	-- Nursery Direction
					["provider"] = { "n", 190525 },	-- Vaeros
					["coord"] = { 55.3, 63.5, THE_WAKING_SHORES },
				}),
				q(66734, {	-- Leave Bee Alone
					["sourceQuests"] = { 66997 },	-- Nursery Direction
					["provider"] = { "n", 190525 },	-- Vaeros
					["coord"] = { 55.3, 63.5, THE_WAKING_SHORES },
					["g"] = {
						i(194404),	-- Beetender's Hood
						i(194415),	-- Reinforced Beekeeper's Helm
						i(194406),	-- Stingerproof Helmet
						i(194405),	-- Wasp Repelling Skullcap
						i(193064),	-- Smoke Diffuser
					},
				}),
				q(66737, {	-- A Better Start
					["sourceQuests"] = {
						66735,	-- Just a Trim
						66734,	-- Leave Bee Alone
					},
					["provider"] = { "n", 190533 },	-- Adazius
					["coord"] = { 55.2, 63.7, THE_WAKING_SHORES },
					["g"] = {
						i(194419),	-- Life Pool Herb Pouch
						i(194418),	-- Life Pools Watering Can
					},
				}),
			}),
			header(HEADERS.AchCriteria, 16401.05, {	-- Save the Hippos!
				q(72122, {	-- Erstwhile Ecologists
					["sourceQuests"] = {
						65990,	-- Deliver Whelps From Evil
						65989,	-- Invader Djaradin
					},
					["provider"] = { "n", 195303 },	-- Mender Eskros
					["coord"] = { 71.2, 40.5, THE_WAKING_SHORES },
					["isBreadcrumb"] = true, -- Prob?
				}),
				q(66105, {	-- A Scalpel of a Solution
					["sourceQuests"] = { 72122 },	-- Erstwhile Ecologists
					["provider"] = { "n", 186410 },	-- Ecologist Iskha
					["coord"] = { 74.4, 42.1, THE_WAKING_SHORES },
					["g"] = {
						i(194350),	-- Expedition Guard's Legguards
						i(194352),	-- Expedition Mercenary's Leggings
						i(194351),	-- Expedition Researcher's Leggings
						i(194353),	-- Field Scout's Breeches
					},
				}),
				q(66107, {	-- Wildlife Rescue
					["sourceQuests"] = { 72122 },	-- Erstwhile Ecologists
					["provider"] = { "n", 186428 },	-- Ecologist Tharu
					["coord"] = { 74.5, 42.2, THE_WAKING_SHORES },
				}),
				q(66104, {	-- Forensic Ecology
					["sourceQuests"] = {
						66105,	-- A Scalpel of a Solution
						66107,	-- Wildlife Rescue
					},
					["provider"] = { "n", 186410 },	-- Ecologist Iskha
					["coord"] = { 74.4, 42.1, THE_WAKING_SHORES },
				}),
				q(66108, {	-- A Sledgehammer of a Solution
					["sourceQuests"] = { 66104 },	-- Forensic Ecology
					["provider"] = { "n", 186410 },	-- Ecologist Iskha
					["coord"] = { 74.4, 42.1, THE_WAKING_SHORES },
					["g"] = {
						i(194412),	-- Expedition Guard's Wristguards
						i(194413),	-- Expedition Mercenary's Wristwraps
						i(194411),	-- Expedition Researcher's Binders
						i(194414),	-- Field Scout's Bindings
					},
				}),
				q(66106, {	-- Don't Be So Shellfish
					["sourceQuests"] = { 66104 },	-- Forensic Ecology
					["provider"] = { "n", 186428 },	-- Ecologist Tharu
					["coord"] = { 74.5, 42.2, THE_WAKING_SHORES },
					["g"] = {
						i(191549),	-- Water-Infused Shell (QI!)
						i(191546),	-- Wind-Infused Shell (QI!)
					},
				}),
			}),
			header(HEADERS.AchCriteria, 16401.06, {	-- The Shadow of His Wings
				q(65690, {	-- A Cultist's Misgivings
					["sourceQuests"] = {
						65444,	-- To the Dragon Isles! (H)
						67700,	-- To the Dragon Isles! (A)
						DF_ACCOUNT_CAMPAIGN_QUEST,
					},
					["sourceQuestNumRequired"] = 1,
					["provider"] = { "n", 185627 },	-- Ingot
					["coord"] = { 39.4, 48.3, THE_WAKING_SHORES },
				}),
				q(65782, {	-- Under Lock and Key
					["sourceQuests"] = { 65690 },	-- A Cultist's Misgivings
					["provider"] = { "n", 185628 },	-- Ayasanth
					["coord"] = { 37.4, 46.7, THE_WAKING_SHORES },
					["g"] = {
						i(190612),	-- Worldbreaker Cell Key (QI!)
					},
				}),
				q(65687, {	-- Punching Up
					["sourceQuests"] = {
						65444,	-- To the Dragon Isles! (H)
						67700,	-- To the Dragon Isles! (A)
						DF_ACCOUNT_CAMPAIGN_QUEST,
					},
					["sourceQuestNumRequired"] = 1,
					["provider"] = { "n", 185627 },	-- Ingot
					["coord"] = { 39.4, 48.3, THE_WAKING_SHORES },
					["g"] = {
						i(194368),	-- Worldbreaker's Charm
					},
				}),
				q(65691, {	-- The Shadow of His Wings
					["sourceQuests"] = {
						65687,	-- Punching Up
						65782,	-- Under Lock and Key
					},
					["provider"] = { "n", 185628 },	-- Ayasanth
					["coord"] = { 37.4, 46.6, THE_WAKING_SHORES },
					["g"] = {
						i(194420),	-- Blacktalon Blade
						i(194396),	-- Blacktalon Claw
						i(194397),	-- Darkscale Twinblade
						i(194395),	-- Doomsayer's Greatsword
						i(194385),	-- Neltharian Channeler's Rod
						i(194388),	-- Obsidian Guardian's Cleaver
						i(194390),	-- Obsidian Spellsplitter
						i(194387),	-- Obsidian Watcher's Crossbow
					},
				}),
			}),
			header(HEADERS.AchCriteria, 16406.01, {	-- Captain Garrick & Shuja Grimaxe
				q(67053, {	-- Give Peace a Chance [A]
					["provider"] = { "n", 184449 },	-- Captain Garrick
					["coord"] = { 76.7, 34.6, THE_WAKING_SHORES },
					["races"] = ALLIANCE_ONLY,
				}),
				q(66110, {	-- Give Peace a Chance [H]
					["provider"] = { "n", 184452 },	-- Warlord Breka Grimaxe
					["coord"] = { 76.4, 33.1, THE_WAKING_SHORES },
					["races"] = HORDE_ONLY,
				}),
				q(70135, {	-- Encroaching Elementals [A]
					["sourceQuests"] = { 67053 },	-- Give Peace a Chance [A]
					["provider"] = { "n", 184452 },	-- Warlord Breka Grimaxe
					["coord"] = { 76.4, 33.1, THE_WAKING_SHORES },
					["races"] = ALLIANCE_ONLY,
				}),
				q(66111, {	-- Encroaching Elementals [H]
					["sourceQuests"] = { 66110 },	-- Give Peace a Chance [H]
					["provider"] = { "n", 184449 },	-- Captain Garrick
					["coord"] = { 76.7, 34.6, THE_WAKING_SHORES },
					["races"] = HORDE_ONLY,
				}),
			}),
			header(HEADERS.AchCriteria, 16406.02, {	-- Duroz & Kolgar
				q(70239, {	-- Untold Regrets
					["sourceQuests"] = {
						66114,	-- For the Benefit of the Queen
						DF_ACCOUNT_CAMPAIGN_QUEST,
					},
					["sourceQuestNumRequired"] = 1,
					["provider"] = { "n", 194801 },	-- Kolgar Flameguard
					["coord"] = { 58.7, 67.8, THE_WAKING_SHORES },
				}),
				q(70240, {	-- Pain Management
					["sourceQuests"] = { 70239 },	-- Untold Regrets
					["provider"] = { "n", 194805 },	-- Bathoras
					["coord"] = { 57.4, 65.7, THE_WAKING_SHORES },
					["g"] = {
						o(380575, {	-- Blooming Shallowlily
							["coords"] = {
								{ 55.9, 64.4, THE_WAKING_SHORES },
								{ 56.0, 65.3, THE_WAKING_SHORES },
								{ 56.0, 65.6, THE_WAKING_SHORES },
								{ 56.8, 64.5, THE_WAKING_SHORES },
							},
							["g"] = { i(198668) },	-- Blooming Shallowlily (QI!)
						}),
						i(198673),	-- Empty Life Pool Vial
						i(200109),	-- Medicative Potion (QI!)
						o(380576, {	-- Milky Snapflower
							["coords"] = {
								{ 55.8, 64.4, THE_WAKING_SHORES },
								{ 56.9, 64.0, THE_WAKING_SHORES },
								{ 56.9, 65.5, THE_WAKING_SHORES },
							},
							["g"] = { i(198666) },	-- Milky Snapflower (QI!)
						}),
					},
				}),
				q(70241, {	-- The Bitter End
					-- TODO: Requirement to continue?? Next Day/Time/Finish Chap 3/4?
					["sourceQuests"] = { 70240 },	-- Pain Management
					["provider"] = { "n", 194801 },	-- Kolgar Flameguard
					["coord"] = { 56.8, 64.5, THE_WAKING_SHORES },
				}),
				q(70242, {	-- Life After Life
					["sourceQuests"] = { 70241 },	-- The Bitter End
					["provider"] = { "n", 194805 },	-- Bathoras
					["coord"] = { 56.8, 64.4, THE_WAKING_SHORES },
					["g"] = {
						i(198701),	-- Inert Vessel (QI!)
					},
				}),
				q(70708, {	-- Hallow
					["sourceQuests"] = { 70242 },	-- Life After Life
					["provider"] = { "n", 194801 },	-- Bathoras
					["coord"] = { 58.4, 67.5, THE_WAKING_SHORES },
					["g"] = {
						i(200129),	-- Kolgar's Pack (QI!)
					},
				}),
			}),
			header(HEADERS.AchCriteria, 16406.03, {	-- Tarjin the Blind
				q(70779, {	-- Tarjin's Tales
					["provider"] = { "n", 196214 },	-- Tarjin the Blind
					["coord"] = { 16.1, 62.6, THE_WAKING_SHORES },
					["isWeekly"] = true,
					["g"] = {
						i(199822),	-- Impressive Dragon Skull (QI!)
					},
				}),
			}),
			header(HEADERS.AchCriteria, 16406.04, {	-- Veritistrasz
				q(70132, {	-- Stay a While
					["sourceQuests"] = {
						66114,	-- For the Benefit of the Queen
						DF_ACCOUNT_CAMPAIGN_QUEST,
					},
					["sourceQuestNumRequired"] = 1,
					["provider"] = { "n", 194076 },	-- Veritistrasz
					["coord"] = { 57.8, 66.8, THE_WAKING_SHORES },
				}),
				q(70134, {	-- Memories
					["sourceQuests"] = { 70223 },	-- Stay a While [Post-RP #9]
					["provider"] = { "n", 194076 },	-- Veritistrasz
					["coord"] = { 57.8, 66.7, THE_WAKING_SHORES },
					["g"] = {
						i(197361),	-- Renewed Proto-Drake: Spiked Crest (MM!)
						i(198979),	-- Time Capsule Letter
						i(198430),	-- Time Capsule (QI!)
					},
				}),
				q(70268, {	-- Memories Revived
					["sourceQuests"] = { 70134 },	-- Memories
					["provider"] = { "i", 198661 },	-- Partially Destroyed Diary
					["coord"] = { 23, 60, THE_WAKING_SHORES },
					["description"] = "To obtain this quest, you must enter the vault located at 27, 61. Once inside, head down the stairs and take a left, and then another left into the room. This room will have a bookshelf on it with the item to start this quest.",
				}),
			}),
			header(HEADERS.Achievement, 16409, {	-- Let's Get Quacking
				q(66196, {	-- A Quack For Help
					["sourceQuests"] = { 66104 },	-- Forensic Ecology
					["provider"] = { "n", 187439 },	-- Bubbled Duckling
					["coord"] = { 80.1, 42.9, THE_WAKING_SHORES },
				}),
				q(70877, {	-- A Quack in Time
					["sourceQuests"] = { 66196 },	-- A Quack For Help
					["provider"] = { "n", 196744 },	-- Bubbled Duckling
					["coord"] = { 80.1, 39.9, THE_WAKING_SHORES },
				}),
				q(70917, {	-- A Shoulder to Quack On
					["sourceQuests"] = { 70877 },	-- A Quack in Time
					["provider"] = { "n", 196746 },	-- Bubbled Duckling
					["coord"] = { 81.6, 45.4, THE_WAKING_SHORES },
				}),
				q(70918, {	-- Quack for Your Life
					["sourceQuests"] = { 70917 },	-- A Shoulder to Quack On
					["provider"] = { "n", 196572 },	-- Bubbled Duckling
					["coord"] = { 79.3, 42.7, THE_WAKING_SHORES },
				}),
				q(70919, {	-- Quacking Out For a Hero
					["sourceQuests"] = { 70918 },	-- Quack for Your Life
					["provider"] = { "n", 196747 },	-- Bubbled Duckling
					["coord"] = { 82.8, 42.6, THE_WAKING_SHORES },
					["g"] = {
						ach(16409),	-- Let's Get Quacking
					},
				}),
			}),
			header(HEADERS.Item, 198622, {	-- Spyragos
				q(65875, {	-- A Dragon's Day Off
					["provider"] = { "n", 192662 },
					["coord"] = { 20.1, 39.5, THE_WAKING_SHORES },
					["cost"] = {
						{ "i", 195543, 1 },	-- 1x Riptide Brew
						{ "i", 197737, 1 },	-- 1x Popfizz Punch
						{ "i", 197738, 1 },	-- 1x Flameslinger Rum
						{ "i", 197739, 1 },	-- 1x Happy Trigger Sour
						{ "i", 198045, 1 },	-- 1x Slam Bam Swill
						{ "i", 198043, 1 },	-- 1x Stealthy Elven Port
						{ "i", 198044, 1 },	-- 1x Whirlwind Wine
					},
					["g"] = {
						i(198622),	-- Spyragos (PET!)
					},
				}),
			}),
			header(HEADERS.Achievement, 16323, {	-- Fragments of History
				q(70231, {	-- Talk to Emilia Bellocq
					["name"] = "Talk to Emilia Bellocq",
					["description"] = "Talk to Emilia Bellocq and chose her dialogue option to complete this quest and unlock the objects required to complete achievement Fragments of History",
					["provider"] = { "n", 193915 },	-- Emilia Bellocq
					["coord"] = { 75.4, 34.0, THE_WAKING_SHORES },
				}),
				q(70175, {	-- Broken Banding
					["sourceQuests"] = { 70231 },	-- Dialogue with Emilia Bellocq
					["provider"] = { "i", 198475 },	-- Broken Bankding
					["coord"] = { 81.0, 30.4, THE_WAKING_SHORES },
				}),
				q(70236, {	-- Dislodged Dragoneye
					["sourceQuests"] = { 70231 },	-- Dialogue with Emilia Bellocq
					["provider"] = { "i", 198626 },	-- Dislodged Dragoneye
					["coord"] = { 60.5, 57.9, THE_WAKING_SHORES },
				}),
				q(70789, {	-- Finely Carved Wing
					["sourceQuests"] = { 70231 },	-- Dialogue with Emilia Bellocq
					["provider"] = { "i", 199841 },	-- Finely Carved Wing
					["coord"] = { 47.2, 88.6, THE_WAKING_SHORES },
				}),
				q(70207, {	-- Tail Fragment
					["sourceQuests"] = { 70231 },	-- Dialogue with Emilia Bellocq
					["provider"] = { "i", 198543 },	-- Tail Fragment
					["coord"] = { 58.2, 68.3, THE_WAKING_SHORES },
				}),
			}),
			------ Miscellaneous ------
			q(70179, {	-- A Two for One Deal
				["sourceQuests"] = { 66001 },	-- A Last Hope, -- TODO: Wasnt available when picking up 65997, but available before 66001....
				["provider"] = { "n", 194525 },	-- Apprentice Caretaker Zefren
				["coord"] = { 54.4, 30.8, THE_WAKING_SHORES },
				["g"] = {
					i(198511),	-- Building Materials (QI!)
				},
			}),
			q(66112, {	-- Always Be Crafting
				["sourceQuests"] = { 66110 },	-- Give Peace a Chance
				["provider"] = { "n", 187261 },	-- Grun Ashbeard
				["coord"] = { 76.4, 34.6, THE_WAKING_SHORES },
				["g"] = {
					i(190386),	-- Primal Earthen Core (QI!)
					i(194548),	-- Primal Molten Core (QI!)
				},
			}),
			q(66612, {	-- Crabtender's Quandry
				["sourceQuests"] = {
					65439,	-- To the Dragon Isles! (H)
					67700,	-- To the Dragon Isles! (A)
				},
				["provider"] = { "n", 196827 },	-- Crabtender Kad'irsza
				["coord"] = { 59.7, 51.2, THE_WAKING_SHORES },
			}),
			q(72708, {	-- Dragon Isles Supplies
				["sourceQuests"] = {
					67700,	-- To The Dragon Isles! [A]
					65444,	-- To the Dragon Isles! [H]
				},
				["provider"] = { "i", 202081 },	-- Dragon Isles Supply Bag
			}),
			q(70994, {	-- Drainage Solutions
				["sourceQuests"] = { 66114 },	-- For the Benefit of the Queen
				["provider"] = { "n", 196820 },	-- Zikkori
				["coord"] = { 70.5, 56.8, THE_WAKING_SHORES },
				["g"] = {
					i(200747),	-- Zikkori's Water Siphoning Device
				},
			}),
			q(66998, {	-- Fighting Fire with... Water
				["sourceQuests"] = { 65995 },	-- The Obsidian Citadel
				["provider"] = { "n", 188297 },	-- Caretaker Ventraz
				["coord"] = { 59.1, 34.8, THE_WAKING_SHORES },
				["g"] = {
					i(194441),	-- Bottled Water Elemental
				},
			}),
			q(70058, {	-- Friend on the Mend
				["sourceQuests"] = { 66114 },	-- For the Benefit of the Queen
				["provider"] = { "n", 193955 },	-- Lillistazsa
				["coord"] = { 59.9, 70.4, THE_WAKING_SHORES },
				["g"] = {
					i(198345),	-- Glass Bead (QI!)
					i(198857),	-- Lucky Duck (TOY!)
					i(198344),	-- Scrap of Fabric (QI!)
					i(198343),	-- Soft Ruby Feather (QI!)
				},
			}),
			q(66101, {	-- From Such Great Heights
				["sourceQuests"] = {
					67700,	-- To The Dragon Isles! [A]
					65444,	-- To the Dragon Isles! [H]
				},
				["provider"] = { "n", 187257 },	-- Aster Cloudgaze
				["coord"] = { 75.8, 33., THE_WAKING_SHORES },
			}),
			q(72709, {	-- Funding a Treasure Hunt
				["sourceQuests"] = 72708,	-- Dragon Isles Supplies
				["provider"] = { "n", 198846 },	-- Cataloger Jakes
				["coord"] = { 76.5, 34.2, THE_WAKING_SHORES },
				["isBreadcrumb"] = true,
				["g"] = {
					i(198854),	-- Archeologist Artifact Notes
				},
			}),
			q(71141, {	-- Gills with Gall
				["sourceQuests"] = {
					65439,	-- To the Dragon Isles! (H)
					67700,	-- To the Dragon Isles! (A)
				},
				["provider"] = { "n", 193304 },	-- Ru'Kroszk
				["coord"] = { 59.7, 51.2, THE_WAKING_SHORES },
			}),
			q(66368, {	-- Island In A Storm
				["sourceQuests"] = { 66369 },	-- The Earthen Ward
				["provider"] = { "n", 187609 },	-- Earthcaller Yevaa
				["coord"] = { 37.4, 71.8, THE_WAKING_SHORES },
				["isWeekly"] = true,
				["g"] = {
					i(191837),	-- Earthen Charm
				},
			}),
			q(70042, {	-- Opportunities Abound
				["sourceQuests"] = {
					70125,	-- Where is Wrathion? (A)
					69910,	-- Where is Wrathion? (H)
				},
				["provider"] = { "n", 193838 },	-- Vish the Sneak
				["coord"] = { 76.6, 33.6, THE_WAKING_SHORES },
				["sourceQuestNumRequired"] = 1,
				["classes"] = { ROGUE },
				["g"] = {
					i(198133),	-- Golden Expedition Compass (QI!
					i(198135),	-- Jeb's Supply Pack (QI!)
					i(198139),	-- Jeb's Underwear
					i(198134),	-- Shiny Surveyor Scope (QI!)
				},
			}),
			q(69965, {	-- Quality Assurance
				["sourceQuests"] = { 66110 },	-- Give Peace a Chance
				["provider"] = { "n", 192438 },	-- Haephesta
				["coord"] = { 76.4, 34.4, THE_WAKING_SHORES },
			}),
			q(66003, {	-- Rings To Bind Them
				["provider"] = { "n", 187609 },	-- Earthcaller Yevaa
				["coord"] = { 37.4, 71.8, THE_WAKING_SHORES },
				["g"] = {
					i(194384),	-- Elemental Binding Ring
					i(191278),	-- Molten Binding Rings (QI!)
				},
			}),
			q(70414, {	-- Shaky Grounds
				["provider"] = { "n", 195234 },	-- Earthmender Govrum
				["coord"] = { 37.0, 55.8, THE_WAKING_SHORES },
				["g"] = {
					i(200617),	-- Shattering Totem
					i(198980),	-- Shattering Totem
				},
			}),
			q(66369, {	-- The Earthen Ward
				["sourceQuests"] = { 66003 },	-- Rings To Bind Them
				["provider"] = { "n", 187609 },	-- Earthcaller Yevaa
				["coord"] = { 37.4, 71.8, THE_WAKING_SHORES },
				["g"] = {
					i(191837),	-- Earthen Charm
				},
			}),
			------ Evoker Quests ------
			q(70446, {	-- A Personal History
				["provider"] = { "n", 193456 },	-- Archivist Edress
				["coord"] = { 25.0, 56.2, THE_WAKING_SHORES },
				["classes"] = { EVOKER },
				["races"] = { DRACTHYR_ALLIANCE, DRACTHYR_HORDE },
			}),
			q(70159, {	-- A Taste of Home
				["provider"] = { "n", 194462 },	-- Talon Scaralesh
				["coord"] = { 47.1, 82.9, THE_WAKING_SHORES },
				["classes"] = { EVOKER },
				["races"] = { DRACTHYR_HORDE },
				["g"] = {
					i(198447),	-- Bilgewater-Imported Imitation Crab (QI!)
					i(198445),	-- Charred Zandali Chilis (QI!)
					i(198446),	-- Fine Suramar Vintage (QI!)
					i(198530),	-- Raw Zandali Chilis (QI!)
				},
			}),
			q(70164, {	-- A Tinker's Chance
				["provider"] = { "n", 194136 },	-- Eralshek
				["coord"] = { 65.4, 58.5, THE_WAKING_SHORES },
				["classes"] = { EVOKER },
				["races"] = { DRACTHYR_ALLIANCE, DRACTHYR_HORDE },
			}),
			q(70742, {	-- Runs in the Family
				["sourceQuests"] = { 70446 },	-- A Personal History
				["provider"] = { "n", 192795 },	-- Scalecommander Emberthal
				["coord"] = { 44.7, 64.1, THE_WAKING_SHORES },
				["classes"] = { EVOKER },
				["races"] = { DRACTHYR_ALLIANCE, DRACTHYR_HORDE },
			}),
			q(70148, {	-- Without Purpose
				["provider"] = { "n", 192438 },	-- Hephaesta
				["coord"] = { 76.4, 34.4, THE_WAKING_SHORES },
				["classes"] = { EVOKER },
				["races"] = { DRACTHYR_ALLIANCE, DRACTHYR_HORDE },
			}),
			------ Alt Quests ------
			q(72293, {	-- Adventuring in the Dragon Isles
				["sourceQuests"] = {
					70125,	-- Where is Wrathion? (A)
					69910,	-- Where is Wrathion? (H)
				},
				["provider"] = { "n", 193362 },	-- Sendrax
				["coord"] = { 76.6, 33.7, THE_WAKING_SHORES },
				["lockCriteria"] = { 1, "questID", 69911 },	-- Excuse the Mess
				["isBreadcrumb"] = true,
			}),
			q(72266, {	-- The Waking Shores
				["sourceQuests"] = { 72293 },	-- Adventuring in the Dragon Isles
				["provider"] = { "n", 198386 },	-- Scouting Map
				["coord"] = { 76.5, 34.2, THE_WAKING_SHORES },
				["lockCriteria"] = { 1, "questID", 69911 },	-- Excuse the Mess
				["isBreadcrumb"] = true,
			}),
			q(72267, {	-- Ohn'ahran Plains
				["sourceQuests"] = { 72293 },	-- Adventuring in the Dragon Isles
				["provider"] = { "n", 198386 },	-- Scouting Map
				["coord"] = { 76.5, 34.2, THE_WAKING_SHORES },
				["lockCriteria"] = { 1, "questID", 65779 },	-- Into the Plains
				["isBreadcrumb"] = true,
			}),
			q(72268, {	-- Azure Span
				["sourceQuests"] = { 72293 },	-- Adventuring in the Dragon Isles
				["provider"] = { "n", 198386 },	-- Scouting Map
				["coord"] = { 76.5, 34.2, THE_WAKING_SHORES },
				["lockCriteria"] = { 1, "questID", 65686 },	-- To the Azure Span
				["isBreadcrumb"] = true,
			}),
			q(72269, {	-- Thaldraszsus
				["sourceQuests"] = { 72293 },	-- Adventuring in the Dragon Isles
				["provider"] = { "n", 198386 },	-- Scouting Map
				["coord"] = { 76.5, 34.2, THE_WAKING_SHORES },
				["lockCriteria"] = { 1, "questID", 66244 },	-- To Valdrakken
				["isBreadcrumb"] = true,
			}),
			n(BONUS_OBJECTIVES, {
				q(66076, {	-- Ancient Hornswog
					["provider"] = { "n", 187111 },	-- Ancient Hornswog
					["coord"] = { 77.6, 22.2, THE_WAKING_SHORES },
					["timeline"] = { ADDED_10_0_2_LAUNCH, REMOVED_11_0_0 },
				}),
				q(66117, {	-- Clear the Battlefield
					["sourceQuests"] = { 66116 },	-- The Primary Threat
					["coord"] = { 58.9, 76.6, THE_WAKING_SHORES },
				}),
				q(65994, {	-- Djaradin Djustice
					["sourceQuests"] = {
						65990,	-- Deliver Whelps From Evil
						65989,	-- Invader Djaradin
					},
					["coord"] = { 67.6, 38.5, THE_WAKING_SHORES },
				}),
				q(66956, {	-- Dragonhunter Igordan
					["provider"] = { "n", 191611 },	-- Dragonhunter Igordan
					["coord"] = { 64.3, 33.0, THE_WAKING_SHORES },
				}),
				q(70648, {	-- Firava the Rekindler
					["provider"] = { "n", 195915 },	-- Firava the Rekindler
					["coord"] = { 56.9, 25.3, THE_WAKING_SHORES },
				}),
				q(66960, {	-- Klozicc the Ascended
					["provider"] = { "n", 187209 },	-- Klozicc the Ascended
					["coord"] = { 54.7, 82.3, THE_WAKING_SHORES },
				}),
				q(66074, {	-- Primal Scythid Queen
					["provider"] = { "n", 184853 },	-- Primal Scythid Queen
					["coord"] = { 81.3, 37.7, THE_WAKING_SHORES },
				}),
				q(70196, {	-- Pruning the Preserve
					["sourceQuestNumRequired"] = 1,
					["sourceQuests"] = {
						66079,	-- Wrathion Awaits
						DF_ACCOUNT_CAMPAIGN_QUEST,
					},
					["DisablePartySync"] = true,	-- TODO: Figure out what Quest blocks it
					["coord"] = { 44.4, 82.1, THE_WAKING_SHORES },
				}),
				q(70751, {	-- Terillod the Devout
					["provider"] = { "n", 193171 },	-- Terillod the Devout
					["coord"] = { 60.6, 82.9, THE_WAKING_SHORES },
				}),
			}),
			n(HIDDEN_QUESTS, {
				q(72101, {	-- Release Kite: Apex Canopy
					["name"] = "Release Kite: Apex Canopy",
					["coord"] = { 24.0, 89.9, THE_WAKING_SHORES },
				}),
				q(72103, {	-- Release Kite: Concord Observatory
					["name"] = "Release Kite: Concord Observatory",
					["coord"] = { 57.2, 46.4, THE_WAKING_SHORES },
				}),
				q(72098, {	-- Release Kite: Crumbling Life Archway
					["name"] = "Release Kite: Crumbling Life Archway",
					["coord"] = { 56.8, 58.0, THE_WAKING_SHORES },
				}),
				q(72099, {	-- Release Kite: Hatchery Observatory
					["name"] = "Release Kite: Hatchery Observatory",
					["coord"] = { 61.7, 80.8, THE_WAKING_SHORES },
				}),
				q(72105, {	-- Release Kite: Life-Binder Conservatory
					["name"] = "Release Kite: Life-Binder Conservatory",
					["coord"] = { 57.0, 20.0, THE_WAKING_SHORES },
				}),
				q(72100, {	-- Release Kite: Obsidian Observatory
					["name"] = "Release Kite: Obsidian Observatory",
					["coord"] = { 43.6, 63.8, THE_WAKING_SHORES },
				}),
				q(72097, {	-- Release Kite: Skytop Observatory
					["name"] = "Release Kite: Skytop Observatory",
					["coord"] = { 73.0, 52.9, THE_WAKING_SHORES },
				}),
				q(72102, {	-- Release Kite: The Overflowing Spring
					["name"] = "Release Kite: The Overflowing Spring",
					["coord"] = { 50.3, 55.6, THE_WAKING_SHORES },
				}),
				q(72104, {	-- Release Kite: Uktulut Backwater
					["name"] = "Release Kite: Uktulut Backwater",
					["coord"] = { 48.9, 39.9, THE_WAKING_SHORES },
				}),
				q(72096, {	-- Release Kite: Wingrest Embassy
					["name"] = "Release Kite: Wingrest Embassy",
					["coord"] = { 73.2, 37.8, THE_WAKING_SHORES },
				}),
				q(72059, {	-- Stay awhile and listen: Commander Lethanak
					["name"] = "Stay awhile and listen: Commander Lethanak",
					["sourceQuests"] = { 66788 },	-- Eggcited for the Future
					["provider"] = { "n", 195212 },	-- Commander Lethanak
					["coord"] = { 62.7, 72.2, THE_WAKING_SHORES },
					["isDaily"] = true,	-- possible weekly?
				}),
				q(70206, {	-- Stay awhile and listen: Veritistrasz: 1
					["name"] = "Stay awhile and listen: Veritistrasz: 1",
					["sourceQuests"] = { 66114 },	-- For the Benefit of the Queen
					["provider"] = { "n", 194076 },	-- Veritistrasz
					["coord"] = { 57.8, 66.7, THE_WAKING_SHORES },
				}),
				q(70543, {	-- Stay awhile and listen: Veritistrasz: 2
					["name"] = "Stay awhile and listen: Veritistrasz: 2",
					["sourceQuests"] = { 70206 },	-- Veritistrasz: 1
					["provider"] = { "n", 194076 },	-- Veritistrasz
					["coord"] = { 57.8, 66.7, THE_WAKING_SHORES },
				}),
				q(70544, {	-- Stay awhile and listen: Veritistrasz: 3
					["name"] = "Stay awhile and listen: Veritistrasz: 3",
					["sourceQuests"] = { 70543 },	-- Veritistrasz: 2
					["provider"] = { "n", 194076 },	-- Veritistrasz
					["coord"] = { 57.8, 66.7, THE_WAKING_SHORES },
				}),
				q(70217, {	-- Stay awhile and listen: Veritistrasz: 4
					["name"] = "Stay awhile and listen: Veritistrasz: 4",
					["sourceQuests"] = { 70544 },	-- Veritistrasz: 3
					["provider"] = { "n", 194076 },	-- Veritistrasz
					["coord"] = { 57.8, 66.7, THE_WAKING_SHORES },
				}),
				q(70546, {	-- Stay awhile and listen: Veritistrasz: 5
					["name"] = "Stay awhile and listen: Veritistrasz: 5",
					["sourceQuests"] = { 70217 },	-- Veritistrasz: 4
					["provider"] = { "n", 194076 },	-- Veritistrasz
					["coord"] = { 57.8, 66.7, THE_WAKING_SHORES },
				}),
				q(70547, {	-- Stay awhile and listen: Veritistrasz: 6
					["name"] = "Stay awhile and listen: Veritistrasz: 6",
					["sourceQuests"] = { 70546 },	-- Veritistrasz: 5
					["provider"] = { "n", 194076 },	-- Veritistrasz
					["coord"] = { 57.8, 66.7, THE_WAKING_SHORES },
				}),
				q(70219, {	-- Stay awhile and listen: Veritistrasz: 7
					["name"] = "Stay awhile and listen: Veritistrasz: 7",
					["sourceQuests"] = { 70547 },	-- Veritistrasz: 6
					["provider"] = { "n", 194076 },	-- Veritistrasz
					["coord"] = { 57.8, 66.7, THE_WAKING_SHORES },
				}),
				q(70548, {	-- Stay awhile and listen: Veritistrasz: 8
					["name"] = "Stay awhile and listen: Veritistrasz: 8",
					["sourceQuests"] = { 70219 },	-- Veritistrasz: 7
					["provider"] = { "n", 194076 },	-- Veritistrasz
					["coord"] = { 57.8, 66.7, THE_WAKING_SHORES },
				}),
				q(70223, {	-- Stay awhile and listen: Veritistrasz: 9
					["name"] = "Stay awhile and listen: Veritistrasz: 9",
					["sourceQuests"] = { 70548 },	-- Veritistrasz: 8
					["provider"] = { "n", 194076 },	-- Veritistrasz
					["coord"] = { 57.8, 66.7, THE_WAKING_SHORES },
				}),
				q(70709, {	-- Talk to: Wu'de Prepfoot
					["name"] = "Talk to: Wu'de Prepfoot",
					["sourceQuests"] = { 65691 },	-- The Shadow of His Wings
					["provider"] = { "n", 196072 },	-- Wu'de Prepfoot
					["coord"] = { 35.1, 47.2, THE_WAKING_SHORES },
					["isDaily"] = true,	-- possible weekly?
				}),
				-- Theory In Practice moved temporarily to HQTs
				-- To Skytop Observatory moved temporarily to HQTs
				-- TODO: for the two above mentioned chains, how do we sort these types of things going forward? Also, is Skytop an actual quest or should this be a NYI/Never Implemented?
			}),
		}),
	}),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.DF, bubbleDownSelf({ ["timeline"] = { ADDED_10_0_2_LAUNCH } }, {
	m(DRAGON_ISLES, {
		m(THE_WAKING_SHORES, {
			n(QUESTS, {
				q(66898),	-- triggered during 'The Shadow of His Wings' (65691)
				q(70872),	-- Quack Weekly Trigger (spellID 390284)
				q(70262),	-- triggered with 'Memories Revived' (70268)
				q(72353),	-- triggeres during 'Adventuring in the Dragon Isles' (72293) when any zone is chosen by player (spellID 394163)
				q(70767),	-- triggers when 'Tale of the Outsider' becomes available for Tarjin the Blind
				q(70768),	-- triggers when 'Tale of the Outsider' completes (spellID 388144)
				q(70770),	-- triggers when 'Tale of the Elders' becomes available for Tarjin the Blind
				q(70769),	-- triggers when 'Tale of the Elders' completes (spellID 388145)
				q(70772),	-- triggers when 'Tale of the Warlord' becomes available for Tarjin the Blind
				q(70771),	-- triggers when 'Tale of the Warlord' completes (spellID 388146)
				q(70776),	-- triggers when 'Tale of the Magma Pact' becomes available for Tarjin the Blind
				q(70775),	-- triggers when 'Tale of the Magma Pact' completes (spellID 388148)
				q(70774),	-- triggers when 'Tale of the Slumbering' becomes available for Tarjin the Blind
				q(70773),	-- triggers when 'Tale of the Slumbering' completes (spellID 388147)
				q(70778),	-- triggers when 'Tale of the Weakling' becomes available for Tarjin the Blind
				-- q(70777),	-- triggers when 'Tale of the Weakling' completes (spellID 388149)
				q(72804),	-- Flag Weekly Tracking Quest [DNT] (spellID 397184) [triggers when 'Tale of the Phoenix' completes]
				q(70218),	-- Dialogue before you can pick up the quest "A Dragon's Day Off"

				-- TODO: how do we sort these types of things going forward? Also, is Skytop an actual quest or should this be a NYI/Never Implemented?
				q(72178, {	-- Theory in Practice: Baron von Swoopenbite
					["name"] = "Theory in Practice: Baron von Swoopenbite",
					["sourceQuests"] = {
						69901,	-- Bring In the Expert
						69900,	-- Identifying the Source
					},
					["provider"] = { "n", 192298 },	-- Tyrgon
					["coord"] = { 46.0, 81.5, THE_WAKING_SHORES },
					["altQuests"] = {
						-- 72178,	-- Theory in Practice: Baron von Swoopenbite
						72174,	-- Theory in Practice: Bob
						72179,	-- Theory in Practice: Lord Firegiggle
						72177,	-- Theory in Practice: Mr.Nibbles
						72176,	-- Theory in Practice: Toughscale
					},
				}),
				q(72174, {	-- Theory in Practice: Bob
					["name"] = "Theory in Practice: Bob",
					["sourceQuests"] = {
						69901,	-- Bring In the Expert
						69900,	-- Identifying the Source
					},
					["provider"] = { "n", 192298 },	-- Tyrgon
					["coord"] = { 46.0, 81.5, THE_WAKING_SHORES },
					["altQuests"] = {
						72178,	-- Theory in Practice: Baron von Swoopenbite
						-- 72174,	-- Theory in Practice: Bob
						72179,	-- Theory in Practice: Lord Firegiggle
						72177,	-- Theory in Practice: Mr.Nibbles
						72176,	-- Theory in Practice: Toughscale
					},
				}),
				q(72179, {	-- Theory in Practice: Lord Firegiggle
					["name"] = "Theory in Practice: Lord Firegiggle",
					["sourceQuests"] = {
						69901,	-- Bring In the Expert
						69900,	-- Identifying the Source
					},
					["provider"] = { "n", 192298 },	-- Tyrgon
					["coord"] = { 46.0, 81.5, THE_WAKING_SHORES },
					["altQuests"] = {
						72178,	-- Theory in Practice: Baron von Swoopenbite
						72174,	-- Theory in Practice: Bob
						-- 72179,	-- Theory in Practice: Lord Firegiggle
						72177,	-- Theory in Practice: Mr.Nibbles
						72176,	-- Theory in Practice: Toughscale
					},
				}),
				q(72177, {	-- Theory in Practice: Mr.Nibbles
					["name"] = "Theory in Practice: Mr.Nibbles",
					["sourceQuests"] = {
						69901,	-- Bring In the Expert
						69900,	-- Identifying the Source
					},
					["provider"] = { "n", 192298 },	-- Tyrgon
					["coord"] = { 46.0, 81.5, THE_WAKING_SHORES },
					["altQuests"] = {
						72178,	-- Theory in Practice: Baron von Swoopenbite
						72174,	-- Theory in Practice: Bob
						72179,	-- Theory in Practice: Lord Firegiggle
						-- 72177,	-- Theory in Practice: Mr.Nibbles
						72176,	-- Theory in Practice: Toughscale
					},
				}),
				q(72176, {	-- Theory in Practice: Toughscale
					["name"] = "Theory in Practice: Toughscale",
					["sourceQuests"] = {
						69901,	-- Bring In the Expert
						69900,	-- Identifying the Source
					},
					["provider"] = { "n", 192298 },	-- Tyrgon
					["coord"] = { 46.0, 81.5, THE_WAKING_SHORES },
					["altQuests"] = {
						72178,	-- Theory in Practice: Baron von Swoopenbite
						72174,	-- Theory in Practice: Bob
						72179,	-- Theory in Practice: Lord Firegiggle
						72177,	-- Theory in Practice: Mr.Nibbles
						-- 72176,	-- Theory in Practice: Toughscale
					},
				}),
				q(72089, {	-- To Skytop Observatory
					["name"] = "To Skytop Observatory",
					["provider"] = { "n", 193287 },	-- Lord Andestrasz
					["coord"] = { 57.7, 66.9, THE_WAKING_SHORES },
				}),
				o(404260, {	-- Riddle Solved!
					["timeline"] = { ADDED_10_1_5 },
					["questID"] = 76451,
					["coord"] = { 67.1, 56.8, THE_WAKING_SHORES},
				}),
			}),
		}),
	}),
})));