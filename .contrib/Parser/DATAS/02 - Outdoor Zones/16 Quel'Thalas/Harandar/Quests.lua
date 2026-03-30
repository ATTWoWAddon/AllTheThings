---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(MAP.MIDNIGHT.QUELTHALAS, {
	m(MAP.MIDNIGHT.HARANDAR, {
		n(BONUS_OBJECTIVES, {
			q(86874, {	-- Culling the Light
				["sourceQuest"] = 86867,	-- Into the Lightbloom
				["coord"] = { 30.6, 77.2, MAP.MIDNIGHT.HARANDAR },
			}),
		}),
		n(QUESTS, {
			n(NEW_CHARACTER, sharedData({
				["races"] = { HARANIR_ALLIANCE, HARANIR_HORDE },
			}, {
				q(90957, {	-- Initiation Day
					["qg"] = 245090,	-- Hagar
					["coord"] = { 34.8, 24.9, MAP.MIDNIGHT.HARANDAR },
					["groups"] = {
						i(257529),	-- Coarse Haranir Cowl
						i(257528),	-- Entwined Haranir Cowl
						i(257530),	-- Hardened Haranir Cowl
						i(257527),	-- Woven Haranir Cowl
					},
				}),
				q(90958, {	-- Roots Above All
					["sourceQuest"] = 90957,	-- Initiation Day
					["qg"] = 245102,	-- Dalnir
					["coord"] = { 35.3, 23.3, MAP.MIDNIGHT.HARANDAR },
					["groups"] = {
						o(553844, {	-- Axe
							["coord"] = { 36.6, 25.1, MAP.MIDNIGHT.HARANDAR },
							["races"] = HORDE_ONLY,
							["groups"] = { i(246126) },	-- Horde Axe (QI!)
						}),
						o(553793, {	-- Shield
							["coord"] = { 36.6, 25.1, MAP.MIDNIGHT.HARANDAR },
							["races"] = ALLIANCE_ONLY,
							["groups"] = { i(246112) },	-- Alliance Shield (QI!)
						}),
						i(246129),	-- Outsider's Gear (QI!)
					},
				}),
				q(90959, {	-- Traditional Duties
					["sourceQuest"] = 90958,	-- Roots Above All
					["qg"] = 245879,	-- Orweyna
					["coord"] = { 35.3, 23.5, MAP.MIDNIGHT.HARANDAR },
					["groups"] = {
						i(257558),	-- Woven Haranir Leaves
						i(257559),	-- Entwined Haranir Leaves
						i(257560),	-- Coarse Haranir Leaves
						i(257561),	-- Hardened Haranir Leaves
					},
				}),
				q(90960, {	-- My Story, My Legacy
					["sourceQuest"] = 90959,	-- Traditional Duties
					["qg"] = 245096,	-- Hagar
					["coord"] = { 34.0, 26.9, MAP.MIDNIGHT.HARANDAR },
				}),
				q(90961, {	-- Stranger in a New Land
					["sourceQuest"] = 90960,	-- My Story, My Legacy
					["qg"] = 245097,	-- Hagar
					["coord"] = { 31.9, 27.4, MAP.MIDNIGHT.HARANDAR },
					["groups"] = {
						i(246740, {	-- Tabard of the Haranir
							["races"] = ALLIANCE_ONLY,
						}),
						i(246795, {	-- Tabard of the Haranir
							["races"] = HORDE_ONLY,
						}),
					},
				}),
				q(94445, {	-- Choose a Path
					["sourceQuest"] = 90961,	-- Stranger in a New Land
					["qg"] = 133362,	-- Ambassador Moorgard
					["coord"] = { 53.1, 15.3, STORMWIND_CITY },
				}),
			})),
			header(HEADERS.Achievement, 41804, {	-- One Does Not Simply Walk Into Harandar
				header(HEADERS.AchCriteria, 41804.01, {	-- Of Caves and Cradles
					q(89402, {	-- Harandar
						--["sourceQuests"] = { XXX },	-- ??
						["provider"] = { "n", 240523 },	-- Scouting Map
						["coord"] = { 45.5, 70.4, MAP.MIDNIGHT.SILVERMOON_CITY },
					}),
					q(86899, {	-- The Root Cause
						["sourceQuests"] = { 89402 },	-- Harandar
						["provider"] = { "n", 236704 },	-- Orweyna
						["coord"] = { 45.4, 45.5, MAP.MIDNIGHT.EVERSONG_WOODS },
					}),
					q(86900, {	-- To Har'athir
						["sourceQuests"] = { 86899 },	-- The Root Cause
						["provider"] = { "n", 237480 },	-- Orweyna
						["coord"] = { 75.6, 53.6, MAP.MIDNIGHT.HARANDAR },
						["groups"] = {
							i(256227),	-- Ancient Frond Cloak
							i(256226),	-- Rootwoven Cape
						},
					}),
					q(86901, {	-- The Rift and the Den
						["sourceQuests"] = { 86900 },	-- To Har'athir
						["provider"] = { "n", 237483 },	-- Orweyna
						["coord"] = { 70.0, 51.5, MAP.MIDNIGHT.HARANDAR },
					}),
					q(86929, {	-- The Council Assembles
						["sourceQuests"] = { 86901 },	-- The Rift and the Den
						["provider"] = { "n", 237345 },	-- Halduron Brightwing
						["coord"] = { 54.8, 51.2, MAP.MIDNIGHT.HARANDAR },
						["groups"] = {
							i(256209),	-- Battered Belt of the Council
							i(256217),	-- Councilmember's Spare Cinch
							i(256201),	-- Unwelcome Visitor's Sash
							i(256193),	-- Worn Harandar Greatbelt
						},
					}),
					q(86907, {	-- The Den of Echoes
						["sourceQuests"] = { 86929 },	-- The Council Assembles
						["provider"] = { "n", 237332 },	-- Hagar
						["coord"] = { 43.8, 54.3, 2576 },	-- The Den
					}),
					q(86911, {	-- Echoes and Memories
						["sourceQuests"] = { 86907 },	-- The Den of Echoes
						["provider"] = { "n", 237567 },	-- Hagar
						["coord"] = { 38.8, 46.9, MAP.MIDNIGHT.HARANDAR },
						["groups"] = {
							o(527117, {	-- Iceberry Bush
								["coords"] = {
									{ 35.8, 46.6, MAP.MIDNIGHT.HARANDAR },
									{ 36.0, 45.4, MAP.MIDNIGHT.HARANDAR },
									{ 36.9, 47.0, MAP.MIDNIGHT.HARANDAR },
									{ 36.9, 48.1, MAP.MIDNIGHT.HARANDAR },
									{ 37.5, 46.4, MAP.MIDNIGHT.HARANDAR },
								},
								["groups"] = { i(239014) },	-- Iceberries (QI!)
							}),
							--
							i(246415),	-- Ruddy Haranir Pigment Bowl (DECOR!)
						},
					}),
					------ Stay awhile and listen ------
					hqt(90859, {	-- Stay awhile and listen: Hagar
						["name"] = "Stay awhile and listen: Hagar",
						["description"] = "Dialogue becomes available during 'Echoes and Memories' (86911).",
						["sourceQuests"] = { 86907 },	-- The Den of Echoes
						["provider"] = { "n", 237567 },	-- Hagar
						["coord"] = { 38.8, 46.9, MAP.MIDNIGHT.HARANDAR },
					}),
					--
					q(90094, {	-- Echo of the Hunt
						["sourceQuests"] = { 86911 },	-- Echoes and Memories
						["provider"] = { "n", 239650 },	-- Zur'ashar Kassameh
						["coord"] = { 36.1, 44.3, MAP.MIDNIGHT.HARANDAR },
					}),
					q(90095, {	-- Echo of the Call
						["sourceQuests"] = { 90094 },	-- Echo of the Hunt
						["provider"] = { "n", 239795 },	-- Zur'ashar Kassameh
						["coord"] = { 34.9, 42.8, MAP.MIDNIGHT.HARANDAR },
						["groups"] = {
							i(256182),	-- Blade of Painted Memories
							i(256179),	-- Bow of Painted Memories
							i(256185),	-- Cudgel of Painted Memories
							i(256181),	-- Glaive of Painted Memories
							i(256230),	-- Greatsword of Painted Memories
							i(256191),	-- Handaxe of Painted Memories
							i(256189),	-- Knife of Painted Memories
							i(256187),	-- Mace of Painted Memories
							i(256178),	-- Spear of Painted Memories
							i(256176),	-- Spire of Painted Memories
							i(256183),	-- Sword of Painted Memories
						},
					}),
					q(86912, {	-- Down the Rootways
						["sourceQuests"] = { 90095 },	-- Echo of the Call
						["provider"] = { "n", 243884 },	-- Zur'ashar Kassameh
						["coord"] = { 33.9, 44.8, MAP.MIDNIGHT.HARANDAR },
						["groups"] = {
							o(572806, {	-- Fragment of Revelation
								["coord"] = { 50.8, 64.2, THE_GULF_OF_MEMORY },
								["groups"] = { i(251512) },	-- Fragment of Revelation (QI!)
							}),
							--
							i(249627),	-- Arboreal Vine Collar
							i(249620),	-- Vibrant Wilderloop
						},
					}),
					q(86913, {	-- A Hut in Har'mara
						["sourceQuests"] = { 86912 },	-- Down the Rootways
						["provider"] = { "n", 240839 },	-- Hagar
						["coord"] = { 34.8, 25.0, MAP.MIDNIGHT.HARANDAR },
					}),
					q(86914, {	-- Tending to Har'mara
						["sourceQuests"] = { 86913 },	-- A Hut in Har'mara
						["provider"] = { "n", 237572 },	-- Hagar
						["coord"] = { 34.9, 25.0, MAP.MIDNIGHT.HARANDAR },
						["groups"] = {
							i(238024),	-- Watering Can (PQI!)
							--
							i(256175),	-- Spore-Touched Baton
							i(256188),	-- Spore-Touched Bludgeon
							i(256174),	-- Spore-Touched Buckler
							i(256190),	-- Spore-Touched Dagger
							i(256231),	-- Spore-Touched Falchion
							i(269982),	-- Spore-Touched Glaive
							i(256186),	-- Spore-Touched Mace
							i(256184),	-- Spore-Touched Saber
							i(256180),	-- Spore-Touched Shortbow
							i(256177),	-- Spore-Touched Staff
						},
					}),
					q(86956, {	-- The Traveling Flowers
						["sourceQuests"] = { 86913 },	-- A Hut in Har'mara
						["provider"] = { "n", 237787 },	-- Halduron Brightwing
						["coord"] = { 34.9, 25.1, MAP.MIDNIGHT.HARANDAR },
						["groups"] = { i(262614) },	-- Harandar Runestone (DECOR!)
					}),
					q(86910, {	-- Koozat's Trample
						["sourceQuests"] = {
							86914,	-- Tending to Har'mara
							86956,	-- The Traveling Flowers
						},
						["provider"] = { "n", 237572 },	-- Hagar
						["coord"] = { 34.9, 25.0, MAP.MIDNIGHT.HARANDAR },
					}),
					q(86973, {	-- Halting Harm in Har'mara
						["sourceQuests"] = { 86910 },	-- Koozat's Trample
						["provider"] = { "n", 240533 },	-- Orweyna
						["coord"] = { 35.7, 25.3, MAP.MIDNIGHT.HARANDAR },
						["groups"] = { i(245535) },	-- Sturdy Haranir Handcart (DECOR!)
					}),
					q(86942, {	-- Culling the Spread
						["sourceQuests"] = { 86910 },	-- Koozat's Trample
						["provider"] = { "n", 240533 },	-- Orweyna
						["coord"] = { 35.7, 25.3, MAP.MIDNIGHT.HARANDAR },
						["groups"] = {
							i(256194),	-- Keem's Blooming Pauldrons
							i(256210),	-- Light-Blanched Shoulderpads
							i(256202),	-- Light-Crazed Rutaani's Shoulderguards
							i(256218),	-- Traveling Merchant's Mantle
						},
					}),
					q(89034, {	-- Burning Bitterblooms
						["sourceQuests"] = { 86910 },	-- Koozat's Trample
						["provider"] = { "n", 240630 },	-- Halduron Brightwing
						["coord"] = { 35.7, 25.2, MAP.MIDNIGHT.HARANDAR },
						["groups"] = {
							i(256196),	-- Greathelm of Scorched Fronds
							i(256204),	-- Har'mara Defender's Helm
							i(256212),	-- Hat of the Harmonious Grove
							i(256220),	-- Singed Sporetender's Cap
						},
					}),
					q(86944, {	-- Seeds of the Rift
						["sourceQuests"] = {
							89034,	-- Burning Bitterblooms
							86942,	-- Culling the Spread
							86973,	-- Halting Harm in Har'mara
						},
						["provider"] = { "n", 240533 },	-- Orweyna
						["coord"] = { 35.7, 25.3, MAP.MIDNIGHT.HARANDAR },
						["groups"] = {
							o(629603, {	-- Glistening Seed Bag
								["coord"] = { 34.9, 25.1, MAP.MIDNIGHT.HARANDAR },
								["groups"] = { i(258623) },	-- Glistening Seed Bag (QI!)
							}),
						},
					}),
					------ Stay awhile and listen ------
					hqt(90884, {	-- Stay awhile and listen: Orweyna	// Exo 12.03.2026. I did not get this... Does not exist?
						["name"] = "Stay awhile and listen: Orweyna",
						["description"] = "Dialogue becomes available during 'Seeds of the Rift' (86944).",
						["sourceQuests"] = {
							89034,	-- Burning Bitterblooms
							86942,	-- Culling the Spread
							86973,	-- Halting Harm in Har'mara
						},
						["provider"] = { "n", 237786 },	-- Orweyna
						["coord"] = { 34.9, 24.9, MAP.MIDNIGHT.HARANDAR },
					}),
					--
				}),
				header(HEADERS.AchCriteria, 41804.02, {	-- Call of the Goddess
					q(86930, {	-- To Sow the Seed
						["sourceQuests"] = { 86944 },	-- Seeds of the Rift
						["provider"] = { "n", 237786 },	-- Orweyna
						["coord"] = { 34.9, 24.9, MAP.MIDNIGHT.HARANDAR },
						["groups"] = {
							i(256203),	-- Light-Blighted Greaves
							i(256219),	-- Light-Blighted Leggings
							i(256195),	-- Light-Blighted Legguards
							i(256211),	-- Light-Blighted Trousers
						},
					}),
					q(86864, {	-- Watch The Den
						["sourceQuests"] = { 86930 },	-- To Sow the Seed
						["provider"] = { "n", 237860 },	-- Orweyna
						["coords"] = {
							{ 44.2, 52.6, 2576 },	-- The Den
							{ 50.8, 53.2, MAP.MIDNIGHT.HARANDAR },
						},
					}),
					q(86836, {	-- The Hunter Awaits
						["sourceQuests"] = { 86864 },	-- Watch The Den
						["provider"] = { "n", 241045 },	-- Ku'paal
						["coord"] = { 54.3, 55.7, MAP.MIDNIGHT.HARANDAR },
					}),
					------ Stay awhile and listen ------
					hqt(94908, {	-- Stay awhile and listen: Orweyna
						["name"] = "Stay awhile and listen: Orweyna",
						["description"] = "Dialogue becomes available during 'The Hunter Awaits' (86836).",
						["sourceQuests"] = { 86864 },	-- Watch The Den
						["provider"] = { "n", 237786 },	-- Orweyna
						["coord"] = { 54.3, 55.8, MAP.MIDNIGHT.HARANDAR },
					}),
					--
					q(86855, {	-- Consequences of Our Duty
						["sourceQuests"] = { 86836 },	-- The Hunter Awaits
						["provider"] = { "n", 237236 },	-- Amarakk
						["coord"] = { 62.0, 54.6, MAP.MIDNIGHT.HARANDAR },
						["groups"] = {
							i(243595),	-- Salve of Aln (PQI!)
							--
							i(256335),	-- Amarakk's Woven Signet
							i(256334),	-- Band of Severed Connections
						},
					}),
					q(86851, {	-- The Foundation of Aln
						["sourceQuests"] = { 86836 },	-- The Hunter Awaits
						["provider"] = { "n", 237236 },	-- Amarakk
						["coord"] = { 62.0, 54.6, MAP.MIDNIGHT.HARANDAR },
						["groups"] = {
							i(238417),	-- Diminished Alndust (QI!)
							--
							i(266259),	-- Altar of the Shul'ka (DECOR!)
						},
					}),
					q(86856, {	-- Dampening the Call
						["sourceQuests"] = {
							86855,	-- Consequences of Our Duty
							86851,	-- The Foundation of Aln
						},
						["provider"] = { "n", 241070 },	-- Orweyna
						["coord"] = { 61.9, 54.5, MAP.MIDNIGHT.HARANDAR },
					}),
					q(86857, {	-- Descent into the Rift
						["sourceQuests"] = { 86856 },	-- Dampening the Call
						["provider"] = { "n", 241070 },	-- Orweyna
						["coord"] = { 61.9, 54.5, MAP.MIDNIGHT.HARANDAR },
						["groups"] = { i(246407) },	-- Stoppered Spring Water Gourd (DECOR!)
					}),
					q(86858, {	-- The Madness Roots Deep
						["sourceQuests"] = { 86857 },	-- Descent into the Rift
						["provider"] = { "n", 237284 },	-- Amarakk
						["coord"] = { 61.7, 56.1, MAP.MIDNIGHT.HARANDAR },
						["groups"] = {
							i(256199),	-- Alndust-Coated Carapace
							i(256215),	-- On'heia's Dusty Jerkin
							i(256207),	-- Riftwalker's Cuirass
							i(256223),	-- Robe of the Alndust-Addled
						},
					}),
					q(86859, {	-- Grinding Out a Solution
						["sourceQuests"] = { 86858 },	-- The Madness Roots Deep
						["provider"] = { "n", 237284 },	-- Amarakk
						["coord"] = { 61.1, 57.3, MAP.MIDNIGHT.HARANDAR },
						["groups"] = {
							o(508709, {	-- Aln Mushroom
								["coords"] = {
									{ 63.8, 61.4, MAP.MIDNIGHT.HARANDAR },
									{ 64.2, 62.3, MAP.MIDNIGHT.HARANDAR },
									{ 64.4, 59.9, MAP.MIDNIGHT.HARANDAR },
									{ 65.0, 63.1, MAP.MIDNIGHT.HARANDAR },
									{ 65.3, 61.9, MAP.MIDNIGHT.HARANDAR },
									{ 65.4, 60.4, MAP.MIDNIGHT.HARANDAR },
									{ 66.0, 60.9, MAP.MIDNIGHT.HARANDAR },
								},
								["groups"] = { i(238651) },	-- Alngrown Fungus (QI!)
							}),
						},
					}),
					q(86860, {	-- Before They Grow
						["sourceQuests"] = { 86858 },	-- The Madness Roots Deep
						["provider"] = { "n", 237284 },	-- Amarakk
						["coord"] = { 61.1, 57.3, MAP.MIDNIGHT.HARANDAR },
						["groups"] = { i(239131) },	-- Amarakk's Influence (PQI!)
					}),
					q(86861, {	-- Herding Manifestations
						["sourceQuests"] = { 86858 },	-- The Madness Roots Deep
						["provider"] = { "n", 237284 },	-- Amarakk
						["coord"] = { 61.1, 57.3, MAP.MIDNIGHT.HARANDAR },
						["groups"] = { i(252045) },	-- Fungal Pergola (DECOR!)
					}),
					q(86862, {	-- The Greater They Aln
						["sourceQuests"] = {
							86860,	-- Before They Grow
							86859,	-- Grinding Out a Solution
							86861,	-- Herding Manifestations
						},
						["provider"] = { "n", 237284 },	-- Amarakk
						["coord"] = { 63.1, 56.8, MAP.MIDNIGHT.HARANDAR },
						["groups"] = {
							o(527509, {	-- Greater Alndust
								["coord"] = { 65.0, 57.4, MAP.MIDNIGHT.HARANDAR },
								["groups"] = { i(238738) },	-- Greater Alndust (QI!)
							}),
							--
							i(252956),	-- Aln-Bound Essence
							i(252957),	-- Tangle of Vibrant Vines
							i(259477),	-- Thriving Essence Sprig
						},
					}),
					q(86865, {	-- In Search of the Problem
						["sourceQuests"] = { 86862 },	-- The Greater They Aln
						["provider"] = { "n", 237234 },	-- Orweyna
						["coord"] = { 63.1, 56.8, MAP.MIDNIGHT.HARANDAR },
					}),
					------ Stay awhile and listen ------
					hqt(94991, {	-- Stay awhile and listen: Orweyna
						["name"] = "Stay awhile and listen: Orweyna ",
						["description"] = "Dialogue becomes available during 'In Search of the Problem' (86865).",
						["sourceQuests"] = { 86865 },	-- In Search of the Problem
						["provider"] = { "n", 237234 },	-- Orweyna
						["coord"] = { 63.2, 56.8, MAP.MIDNIGHT.HARANDAR },
					}),
					--
					q(86866, {	-- Can we Heal This?
						["sourceQuests"] = { 86865 },	-- In Search of the Problem
						["provider"] = { "n", 237325 },	-- Orweyna
						["coord"] = { 31.4, 64.9, MAP.MIDNIGHT.HARANDAR },
						["groups"] = { i(254319) },	-- Root-Woven Door (DECOR!)
					}),
					------ Stay awhile and listen ------
					hqt(94951, {	-- Stay awhile and listen: Hannan
						["name"] = "Stay awhile and listen: Hannan",
						["description"] = "Dialogue becomes available during 'Can we Heal This?' (86866).",
						["sourceQuests"] = { 86865 },	-- In Search of the Problem
						["provider"] = { "n", 241629 },	-- Hannan
						["coord"] = { 31.4, 64.9, MAP.MIDNIGHT.HARANDAR },
					}),
					--
					q(94677, {	-- The Missing Rootwarden
						["sourceQuests"] = { 86865 },	-- In Search of the Problem
						["provider"] = { "n", 237325 },	-- Orweyna
						["coord"] = { 31.4, 64.9, MAP.MIDNIGHT.HARANDAR },
						["groups"] = {
							o(620318, {	-- Ruia's Storage
								["coord"] = { 31.0, 64.8, MAP.MIDNIGHT.HARANDAR },
								["groups"] = { i(265818) },	-- Ruia's Musings, Part 1 (QI!)
							}),
							o(620497, {	-- Ruia's Musings
								["coord"] = { 32.9, 65.0, MAP.MIDNIGHT.HARANDAR },
								["groups"] = { i(265819) },	-- Ruia's Musings, Part 2 (QI!)
							}),
							o(620498, {	-- Ruia's Musings
								["coord"] = { 30.5, 67.5, MAP.MIDNIGHT.HARANDAR },
								["groups"] = { i(265820) },	-- Ruia's Musings, Part 3 (QI!)
							})
						},
					}),
					q(86882, {	-- Alndust in Right Hands
						["sourceQuests"] = {
							86866,	-- Can we Heal This?
							94677,	-- The Missing Rootwarden
						},
						["provider"] = { "n", 237356 },	-- Orweyna
						["coord"] = { 32.0, 61.4, MAP.MIDNIGHT.HARANDAR },
						["groups"] = {
							i(256213),	-- Alndust-Touched Gloves
							i(256197),	-- Gauntlets of the Innoculated
							i(256205),	-- Hopeful Haranir's Grasps
							i(256221),	-- Rallied Haranir's Mitts
						},
					}),
					q(86867, {	-- Into the Lightbloom
						["sourceQuests"] = { 86882 },	-- Alndust in Right Hands
						["provider"] = { "n", 237356 },	-- Orweyna
						["coord"] = { 33.2, 76.0, MAP.MIDNIGHT.HARANDAR },
						["groups"] = { i(253467) },	-- Rutaani Sporepod (DECOR!)
					}),
					q(86881, {	-- At the Root
						["sourceQuests"] = { 86867 },	-- Into the Lightbloom
						["provider"] = { "n", 237356 },	-- Orweyna
						["coord"] = { 30.6, 77.2, MAP.MIDNIGHT.HARANDAR },
					}),
					q(86880, {	-- Our Beloved, Returned
						["sourceQuests"] = { 86867 },	-- Into the Lightbloom
						["provider"] = { "n", 237356 },	-- Orweyna
						["coord"] = { 30.6, 77.2, MAP.MIDNIGHT.HARANDAR },
						["groups"] = {
							o(508411, {	-- Haranir Heirloom
								["coords"] = {
									{ 28.3, 82.9, MAP.MIDNIGHT.HARANDAR },
									{ 28.6, 75.2, MAP.MIDNIGHT.HARANDAR },
									{ 29.7, 74.0, MAP.MIDNIGHT.HARANDAR },
									{ 29.9, 81.0, MAP.MIDNIGHT.HARANDAR },
									{ 30.5, 73.9, MAP.MIDNIGHT.HARANDAR },
									{ 31.5, 81.8, MAP.MIDNIGHT.HARANDAR },
									{ 33.0, 79.3, MAP.MIDNIGHT.HARANDAR },
									{ 33.7, 83.9, MAP.MIDNIGHT.HARANDAR },
									{ 35.3, 81.2, MAP.MIDNIGHT.HARANDAR },
								},
								["groups"] = { i(238792) },	-- Haranir Artifacts (QI!)
							}),
						},
					}),
					q(86877, {	-- Righteous Pruning
						["sourceQuests"] = { 86867 },	-- Into the Lightbloom
						["provider"] = { "n", 237356 },	-- Orweyna
						["coord"] = { 30.6, 77.2, MAP.MIDNIGHT.HARANDAR },
						["groups"] = {
							i(256214),	-- Boots of Infinite Gravity
							i(256222),	-- Hazy Penumbral Treads
							i(256206),	-- Neverending Vortex Stompers
							i(256198),	-- Warbots of the Colossal Behemoths
						},
					}),
					q(86890, {	-- Tell the People What You Have Seen
						["sourceQuests"] = {
							86881,	-- At the Root
							86880,	-- Our Beloved, Returned
							86877,	-- Righteous Pruning
						},
						["provider"] = { "n", 237356 },	-- Orweyna
						["coord"] = { 30.6, 77.2, MAP.MIDNIGHT.HARANDAR },
						["groups"] = {
							i(256228),	-- Ring of the Refused Call
							i(256229),	-- Unmoved Elder's Hoop
						},
					}),
				}),
				header(HEADERS.AchCriteria, 41804.03, {	-- Emergence
					q(86883, {	-- The Frenzied March
						["sourceQuests"] = { 86890 },	-- Tell the People What You Have Seen
						["provider"] = { "n", 241742 },	-- Orweyna
						["coords"] = {
							{ 53.2, 55.5, MAP.MIDNIGHT.HARANDAR },
							{ 63.3, 70.6, 2576 },	-- The Den
						},
					}),
					q(86884, {	-- Cull and Burn
						["sourceQuests"] = { 86883 },	-- The Frenzied March
						["provider"] = { "n", 237361 },	-- Orweyna
						["coord"] = { 62.2, 59.5, MAP.MIDNIGHT.EVERSONG_WOODS },
						["groups"] = {
							i(238196),	-- Lightbleached Rootbone (QI!)
							--
							i(256224),	-- Light-Bleached Amulet
							i(256225),	-- Rootbone Choker
						},
					}),
					q(86885, {	-- Stem the Tides
						["sourceQuests"] = { 86883 },	-- The Frenzied March
						["provider"] = { "n", 237465 },	-- Halduron Brightwing
						["coord"] = { 62.3, 59.5, MAP.MIDNIGHT.EVERSONG_WOODS },
					}),
					q(86887, {	-- Expeditious Retreat
						["sourceQuests"] = {
							86884,	-- Cull and Burn
							86885,	-- Stem the Tides
						},
						["provider"] = { "n", 237465 },	-- Halduron Brightwing
						["coord"] = { 62.3, 59.5, MAP.MIDNIGHT.EVERSONG_WOODS },
					}),
					q(86891, {	-- A Last Resort
						["sourceQuests"] = {
							86884,	-- Cull and Burn
							86885,	-- Stem the Tides
						},
						["provider"] = { "n", 237465 },	-- Halduron Brightwing
						["coord"] = { 62.3, 59.5, MAP.MIDNIGHT.EVERSONG_WOODS },
						["groups"] = { i(254878) },	-- Root-Woven Window (DECOR!)
					}),
					q(86892, {	-- Survive
						["sourceQuests"] = {
							86891,	-- A Last Resort
							86887,	-- Expeditious Retreat
						},
						["provider"] = { "n", 237361 },	-- Orweyna
						["coord"] = { 58.7, 57.3, MAP.MIDNIGHT.EVERSONG_WOODS },
						["groups"] = {
							i(256208),	-- Bracers of the Suncrown
							i(256216),	-- Dissipated Ritual Bangles
							i(256200),	-- Hardened Lash'ra Cuffs
							i(256192),	-- Light-Scorched Vambraces
						},
					}),
					q(86894, {	-- The Gift of Aln'hara
						["sourceQuests"] = { 86892 },	-- Survive
						["provider"] = { "n", 237361 },	-- Orweyna
						["coord"] = { 58.7, 57.3, MAP.MIDNIGHT.EVERSONG_WOODS },
					}),
					q(86896, {	-- Light Finds a Way
						["sourceQuests"] = { 86892 },	-- Survive
						["provider"] = { "n", 241130 },	-- Halduron Broghtwing
						["coord"] = { 58.7, 57.2, MAP.MIDNIGHT.EVERSONG_WOODS },
						["groups"] = { i(247234) },	-- Rustic Harandar Planter (DECOR!)
					}),
					q(86897, {	-- Quelling the Frenzy
						["sourceQuests"] = {
							86896,	-- Light Finds a Way
							86894,	-- The Gift of Aln'hara
						},
						["provider"] = { "n", 237361 },	-- Orweyna
						["coord"] = { 60.8, 56.8, MAP.MIDNIGHT.EVERSONG_WOODS },
						["groups"] = {
							i(259896),	-- Bark of the Guardian Tree
							i(252957),	-- Tangle of Vibrant Vines
						},
					}),
					q(86898, {	-- Rise of the Haranir
						["sourceQuests"] = { 86897 },	-- Quelling the Frenzy
						["provider"] = { "n", 241704 },	-- Orweyna
						["coord"] = { 58.4, 55.4, MAP.MIDNIGHT.EVERSONG_WOODS },
					}),
					q(95324, {	-- The War Beyond the Roots
						["sourceQuests"] = { 86898 },	-- Rise of the Haranir
						["provider"] = { "n", 255819 },	-- Elder Hagar
						["coord"] = { 36.5, 68.5, MAP.MIDNIGHT.SILVERMOON_CITY },
						["groups"] = {
							ach(61506, {	-- Allied Race: Haranir
								i(246736),	-- Ivory Grimlynx (MOUNT!)
							}),
						},
					}),
				}),
			}),
			header(HEADERS.Achievement, 61739, {	-- Sojourner of Harandar
				header(HEADERS.AchCriteria, 61739.01, {	-- A Goblin in Harandar
					q(90533, {	-- Go Get Orweyna!
						["sourceQuests"] = { 86898 },	-- Rise of the Haranir
						["provider"] = { "n", 242593 },	-- Monte Gazlowe
						["coord"] = { 47.1, 45.8, MAP.MIDNIGHT.HARANDAR },
						["groups"] = { i(241125) },	-- Handcrafted Plush (QI!)
					}),
					q(90534, {	-- The Home of the Haranir
						["sourceQuests"] = { 90533 },	-- Go Get Orweyna!
						["provider"] = { "n", 242592 },	-- Orweyna
						["coord"] = { 47.2, 45.8, MAP.MIDNIGHT.HARANDAR },
					}),
					q(90535, {	-- Leave Your Mark
						["sourceQuests"] = { 90534 },	-- The Home of the Haranir
						["provider"] = { "n", 242882 },	-- Orweyna
						["coord"] = { 47.9, 22.4, 2576 },	-- The Den
						["groups"] = { i(260427) },	-- Nahuut's Second-Favorite Chew Toy
					}),
				}),
				header(HEADERS.AchCriteria, 61739.02, {	-- The Legend of Aln'sharan
					["description"] = "It is recommended to do this Sojourner quest chain as soon as possible as it unlocks the |cFF4A54E8Mysterious Skyshards|r to drop from any creature in the zone.",
					["groups"] = {
						q(90467, {	-- Tales of the Sky
							["sourceQuests"] = { 86930 },	-- To Sow the Seed
							["provider"] = { "n", 242358 },	-- Kuri
							["coord"] = { 67.8, 27.5, MAP.MIDNIGHT.HARANDAR },
							["groups"] = {
								o(529370, {	-- Stray Skyshards
									["coords"] = {
										{ 67.9, 30.2, MAP.MIDNIGHT.HARANDAR },
										{ 68.4, 31.7, MAP.MIDNIGHT.HARANDAR },
										{ 69.2, 30.3, MAP.MIDNIGHT.HARANDAR },
										{ 69.3, 32.3, MAP.MIDNIGHT.HARANDAR },
										{ 70.2, 29.9, MAP.MIDNIGHT.HARANDAR },
										{ 70.2, 32.0, MAP.MIDNIGHT.HARANDAR },
										{ 70.4, 31.4, MAP.MIDNIGHT.HARANDAR },
									},
									["groups"] = { i(240484) },	-- Stray Skyshards (QI!)
								}),
							},
						}),
						q(90468, {	-- Ugh, Chores!
							["sourceQuests"] = { 86930 },	-- To Sow the Seed
							["provider"] = { "n", 242358 },	-- Kuri
							["coord"] = { 67.8, 27.5, MAP.MIDNIGHT.HARANDAR },
							["groups"] = { i(240485) },	-- Intact Saptor Frond (QI!)
						}),
						q(90469, {	-- Carry On, Wayward Kuri
							["sourceQuests"] = {
								90467,	-- Tales of the Sky
								90468,	-- Ugh, Chores!
							},
							["provider"] = { "n", 242689 },	-- Kamari
							["coord"] = { 69.4, 29.2, MAP.MIDNIGHT.HARANDAR },
						}),
						q(90470, {	-- Skyglass Scavenging
							["sourceQuests"] = { 90469 },	-- Carry On, Wayward Kuri
							["provider"] = { "n", 242691 },	-- Kuri
							["coord"] = { 69.7, 26.6, MAP.MIDNIGHT.HARANDAR },
						}),
						q(90474, {	-- The Legend of Aln'sharan
							["sourceQuests"] = { 90470 },	-- Skyglass Scavenging
							["provider"] = { "n", 242691 },	-- Kuri
							["coord"] = { 69.7, 26.6, MAP.MIDNIGHT.HARANDAR },
							["groups"] = { i(255826) },	-- Mysterious Skyshards
						}),
					},
				}),
				header(HEADERS.AchCriteria, 61739.03, {	-- Late Bloomers
					q(90537, {	-- Late Bloomers
						["sourceQuests"] = { 86930 },	-- To Sow the Seed
						["provider"] = { "n", 242650 },	-- Ney'leia
						["coord"] = { 37.0, 26.0, MAP.MIDNIGHT.HARANDAR },
						["groups"] = {
							o(544785, {	-- Empty Seed Sack
								["coord"] = { 48.7, 32.2, MAP.MIDNIGHT.HARANDAR },
								["groups"] = { i(244337) },	-- Empty Seed Sack (QI!)
							}),
						},
					}),
					q(90540, {	-- Rutaani Rescue
						["sourceQuests"] = { 90537 },	-- Late Bloomers
						["provider"] = { "n", 243053 },	-- Ney'leia
						["coord"] = { 48.9, 29.7, MAP.MIDNIGHT.HARANDAR },
					}),
					q(90569, {	-- Back in the Bag
						["sourceQuests"] = { 90537 },	-- Late Bloomers
						["provider"] = { "n", 243053 },	-- Ney'leia
						["coord"] = { 48.9, 29.7, MAP.MIDNIGHT.HARANDAR },
						["groups"] = { i(242226) },	-- Stolen Seeds (QI!)
					}),
					q(90963, {	-- Caves of the Cleft
						["sourceQuests"] = {
							90569,	-- Back in the Bag
							90540,	-- Rutaani Rescue
						},
						["provider"] = { "n", 243053 },	-- Ney'leia
						["coord"] = { 48.9, 29.7, MAP.MIDNIGHT.HARANDAR },
					}),
					q(90601, {	-- Gathering Glowshrooms
						["sourceQuests"] = { 90963 },	-- Caves of the Cleft
						["provider"] = { "n", 245166 },	-- Ney'leia
						["coord"] = { 49.7, 23.3, MAP.MIDNIGHT.HARANDAR },
						["groups"] = {
							o(531575, {	-- Glowshroom
								["coords"] = {
									{ 47.4, 22.1, MAP.MIDNIGHT.HARANDAR },
									{ 47.4, 23.0, MAP.MIDNIGHT.HARANDAR },
									{ 49.0, 23.0, MAP.MIDNIGHT.HARANDAR },
									{ 49.3, 21.9, MAP.MIDNIGHT.HARANDAR },
									{ 49.5, 22.3, MAP.MIDNIGHT.HARANDAR },
								},
								["groups"] = { i(244429) },	-- Glowshroom (QI!)
							}),
						},
					}),
					q(90602, {	-- Gomphusta
						["sourceQuests"] = { 90963 },	-- Caves of the Cleft
						["provider"] = { "n", 245166 },	-- Ney'leia
						["coord"] = { 49.7, 23.3, MAP.MIDNIGHT.HARANDAR },
						["groups"] = {
							i(246117),	-- Carved Key (QI!)
							o(553808, {	-- Gomphusta's Chest
								["coord"] = { 48.6, 22.4, MAP.MIDNIGHT.HARANDAR },
								["groups"] = { i(246120) },	-- Cultivation Notes (QI!)
							}),
							--
							i(263473),	-- Recipe: Flora Frenzy (RECIPE!)
						},
					}),
				}),
				header(HEADERS.AchCriteria, 61739.04, {	-- The Greenspeaker's Vigil
					q(91346, {	-- Supplicants to The Goddess
						["sourceQuests"] = { 86930 },	-- To Sow the Seed
						["provider"] = { "n", 246607 },	-- Greenspeaker Cyenna
						["coord"] = { 65.4, 28.1, MAP.MIDNIGHT.HARANDAR },
					}),
					q(91359, {	-- Fungal Lashers B Gone
						["sourceQuests"] = { 91346 },	-- Supplicants to The Goddess
						["provider"] = { "n", 246607 },	-- Greenspeaker Cyenna
						["coord"] = { 65.4, 28.1, MAP.MIDNIGHT.HARANDAR },
						["groups"] = { i(246886) },	-- Harmonious Lash (QI!)
					}),
					q(91360, {	-- Weeding Out the Unwanted
						["sourceQuests"] = { 91346 },	-- Supplicants to The Goddess
						["provider"] = { "n", 246607 },	-- Greenspeaker Cyenna
						["coord"] = { 65.4, 28.1, MAP.MIDNIGHT.HARANDAR },
					}),
					q(91361, {	-- Back on Duty?
						["sourceQuests"] = {
							91359,	-- Fungal Lashers B Gone
							91360,	-- Weeding Out the Unwanted
						},
						["provider"] = { "n", 246607 },	-- Greenspeaker Cyenna
						["coord"] = { 65.4, 28.1, MAP.MIDNIGHT.HARANDAR },
						["groups"] = {
							i(260432),	-- Riverscale's Choker
							i(260431),	-- Riverscale's Collar
						},
					}),
				}),
				header(HEADERS.AchCriteria, 61739.05, {	-- Peril Among Petals
					q(91063, {	-- The Blooming Lattice
						["sourceQuests"] = { 86930 },	-- To Sow the Seed
						["provider"] = { "n", 245637 },	-- Su'meera
						["coord"] = { 65.4, 22.6, MAP.MIDNIGHT.HARANDAR },
					}),
					q(91065, {	-- Purloining Petals
						["sourceQuests"] = { 91063 },	-- The Blooming Lattice
						["provider"] = { "n", 245639 },	-- Su'meera
						["coord"] = { 60.8, 29.9, MAP.MIDNIGHT.HARANDAR },
						["groups"] = {
							o(550011, {	-- Paint-Speckled Gourd
								["coord"] = { 55.3, 30.7, MAP.MIDNIGHT.HARANDAR },
								["groups"] = { i(245886) },	-- Paint-Speckled Gourd (QI!)
							}),
							o(550008, {	-- Splattered Scroll
								["coord"] = { 54.9, 32.1, MAP.MIDNIGHT.HARANDAR },
								["groups"] = { i(245883) },	-- Splattered Scroll (QI!)
							}),
							o(548703, {	-- Pilfered Crafting Drill
								["coord"] = { 54.6, 28.3, MAP.MIDNIGHT.HARANDAR },
								["groups"] = { i(245570) },	-- Pilfered Crafting Drill (QI!)
							}),
							o(548700, {	-- Well-Worn Ladle
								["coord"] = { 55.3, 28.3, MAP.MIDNIGHT.HARANDAR },
								["groups"] = { i(245569) },	-- Well-worn Ladle (QI!)
							}),
						},
					}),
					q(91086, {	-- Nipping the Buds
						["sourceQuests"] = { 91063 },	-- The Blooming Lattice
						["provider"] = { "n", 245639 },	-- Su'meera
						["coord"] = { 60.8, 29.9, MAP.MIDNIGHT.HARANDAR },
					}),
					q(91085, {	-- Petal Bristles
						["sourceQuests"] = { 91063 },	-- The Blooming Lattice
						["provider"] = { "n", 245639 },	-- Su'meera
						["coord"] = { 60.8, 29.9, MAP.MIDNIGHT.HARANDAR },
						["groups"] = {
							o(557986, {	-- Petalwing Plume
								["coords"] = {
									{ 52.5, 29.2, MAP.MIDNIGHT.HARANDAR },
									{ 53.2, 28.1, MAP.MIDNIGHT.HARANDAR },
									{ 54.2, 31.8, MAP.MIDNIGHT.HARANDAR },
									{ 54.7, 28.9, MAP.MIDNIGHT.HARANDAR },
									{ 54.7, 29.8, MAP.MIDNIGHT.HARANDAR },
									{ 54.9, 32.1, MAP.MIDNIGHT.HARANDAR },
									{ 55.1, 32.5, MAP.MIDNIGHT.HARANDAR },
									{ 55.3, 30.6, MAP.MIDNIGHT.HARANDAR },
									{ 55.4, 28.4, MAP.MIDNIGHT.HARANDAR },
									{ 56.8, 29.8, MAP.MIDNIGHT.HARANDAR },
									{ 57.3, 28.2, MAP.MIDNIGHT.HARANDAR },
									{ 57.4, 29.3, MAP.MIDNIGHT.HARANDAR },
									{ 58.1, 28.8, MAP.MIDNIGHT.HARANDAR },
								},
								["groups"] = { i(245571) },	-- Petalwing Plume (QI!)
							}),
						},
					}),
					q(91088, {	-- Behind the Falls
						["sourceQuests"] = {
							91086,	-- Nipping the Buds
							91085,	-- Petal Bristles
							91065,	-- Purloining Petals
						},
						["provider"] = { "n", 245639 },	-- Su'meera
						["coord"] = { 60.8, 29.9, MAP.MIDNIGHT.HARANDAR },
					}),
					q(91136, {	-- Memories in Stone
						["sourceQuests"] = { 91088 },	-- Behind the Falls
						["provider"] = { "n", 245986 },	-- Su'meera
						["coord"] = { 56.1, 24.8, MAP.MIDNIGHT.HARANDAR },
						["groups"] = {
							i(260437),	-- Ja'kul's Woven Pants
							i(260436),	-- Lost Mentor's Greaves
							i(260435),	-- Painter's Stained Pantaloons
							i(260434),	-- Vision-Walker's Leggings
						},
					}),
				}),
				header(HEADERS.AchCriteria, 61739.06, {	-- Haranir Never Say Die
					q(91550, {	-- A Game of Silence and Shadow
						["sourceQuests"] = { 86930 },	-- To Sow the Seed
						["provider"] = { "n", 247640 },	-- Shao'mal
						["coord"] = { 48.8, 44.3, MAP.MIDNIGHT.HARANDAR },
					}),
					q(91551, {	-- De-nest-stration
						["sourceQuests"] = { 91550 },	-- A Game of Silence and Shadow
						["provider"] = { "n", 247658 },	-- Nayeli
						["coord"] = { 53.9, 41.3, MAP.MIDNIGHT.HARANDAR },
					}),
					q(91552, {	-- Feathered Fury
						["sourceQuests"] = { 91550 },	-- A Game of Silence and Shadow
						["provider"] = { "n", 247658 },	-- Nayeli
						["coord"] = { 53.9, 41.3, MAP.MIDNIGHT.HARANDAR },
					}),
					q(91553, {	-- Haranir Never Say Die!
						["sourceQuests"] = {
							91551,	-- De-nest-stration
							91552,	-- Feathered Fury
						},
						["provider"] = { "n", 247736 },	-- Nayeli
						["coord"] = { 57.3, 49.0, MAP.MIDNIGHT.HARANDAR },
						["groups"] = { i(260439) },	-- Silence and Shadow Champion's Badge
					}),
				}),
				header(HEADERS.AchCriteria, 61739.07, {	-- Harandar's Kitchen
					q(91585, {	-- Fresh from the Garden
						["sourceQuests"] = { 86930 },	-- To Sow the Seed
						["provider"] = { "n", 247936 },	-- Yu'relen
						["coord"] = { 40.9, 23.2, MAP.MIDNIGHT.HARANDAR },
						["groups"] = {
							i(246923),	-- Frillfish Fillet (QI!)
							i(246924),	-- Root Drift Jelly (QI!)
						},
					}),
					q(91586, {	-- Soil-based Alternatives
						["sourceQuests"] = { 86930 },	-- To Sow the Seed
						["provider"] = { "n", 247936 },	-- Yu'relen
						["coord"] = { 40.9, 23.2, MAP.MIDNIGHT.HARANDAR },
						["groups"] = {
							o(557572, {	-- Nutrient-Rich Dirt
								["coords"] = {
									{ 39.3, 24.1, MAP.MIDNIGHT.HARANDAR },
									{ 39.6, 24.5, MAP.MIDNIGHT.HARANDAR },
									{ 39.8, 23.9, MAP.MIDNIGHT.HARANDAR },
									{ 39.8, 24.6, MAP.MIDNIGHT.HARANDAR },
									{ 39.7, 23.0, MAP.MIDNIGHT.HARANDAR },
									{ 39.9, 25.8, MAP.MIDNIGHT.HARANDAR },
									{ 40.3, 23.0, MAP.MIDNIGHT.HARANDAR },
									{ 40.4, 24.7, MAP.MIDNIGHT.HARANDAR },
									{ 40.4, 25.3, MAP.MIDNIGHT.HARANDAR },
									{ 41.4, 25.7, MAP.MIDNIGHT.HARANDAR },
									{ 41.7, 23.4, MAP.MIDNIGHT.HARANDAR },
									{ 41.8, 24.9, MAP.MIDNIGHT.HARANDAR },
								},
								["groups"] = { i(246926) },	-- Nutrient Rich Soil (QI!)
							}),
						},
					}),
					q(91587, {	-- Carcass Cuisine
						["sourceQuests"] = { 86930 },	-- To Sow the Seed
						["provider"] = { "n", 247936 },	-- Yu'relen
						["coord"] = { 40.9, 23.2, MAP.MIDNIGHT.HARANDAR },
						["groups"] = { i(246942) },	-- Corpse Rind (QI!)
					}),
					q(91588, {	-- Harandar's Kitchen
						["sourceQuests"] = {
							91587,	-- Carcass Cuisine
							91585,	-- Fresh from the Garden
							91586,	-- Soil-based Alternatives
						},
						["provider"] = { "n", 247936 },	-- Yu'relen
						["coord"] = { 40.9, 23.2, MAP.MIDNIGHT.HARANDAR },
					}),
					q(91589, {	-- Root Dash Delivery
						["sourceQuests"] = { 91588 },	-- Harandar's Kitchen
						["provider"] = { "n", 247936 },	-- Yu'relen
						["coord"] = { 40.9, 23.2, MAP.MIDNIGHT.HARANDAR },
						["groups"] = { i(264178) },	-- Harandar Charcuterie Board (DECOR!)
					}),
				}),
				header(HEADERS.AchCriteria, 61739.08, {	-- Silence at Fungara Village
					q(91375, {	-- The Silence at Fungara Village
						["sourceQuest"] = 86890,	-- Tell the People What You Have Seen
						["qg"] = 257002,	-- Ghikal
						["coord"] = { 33.3, 66.7, MAP.MIDNIGHT.HARANDAR },
						["isBreadcrumb"] = true,
					}),
					q(91376, {	-- Little Monsters
						["sourceQuest"] = 91375,	-- The Silence at Fungara Village
						["provider"] = { "n", 246777 },	-- Ghikal
						["coord"] = { 43.9, 71.7, MAP.MIDNIGHT.HARANDAR },
						["groups"] = { i(247243) },	-- Strange Mycelium (QI!)
					}),
					q(91377, {	-- Spawn of the Dead
						["sourceQuest"] = 91375,	-- The Silence at Fungara Village
						["provider"] = { "n", 246777 },	-- Ghikal
						["coord"] = { 43.9, 71.7, MAP.MIDNIGHT.HARANDAR },
					}),
					q(91378, {	-- You Are Legend
						["sourceQuests"] = {
							91376,	-- Little Monsters
							91377,	-- Spawn of the Dead
						},
						["provider"] = { "n", 246777 },	-- Ghikal
						["coord"] = { 44.1, 66.4, MAP.MIDNIGHT.HARANDAR },
					}),
					q(91379, {	-- Decayed Land
						["sourceQuests"] = {
							91376,	-- Little Monsters
							91377,	-- Spawn of the Dead
						},
						["provider"] = { "n", 246777 },	-- Ghikal
						["coord"] = { 44.1, 66.4, MAP.MIDNIGHT.HARANDAR },
					}),
					q(91381, {	-- Reticent Evil
						["sourceQuests"] = {
							91379,	-- Decayed Land
							91378,	-- You Are Legend
						},
						["provider"] = { "n", 246777 },	-- Ghikal
						["coord"] = { 44.1, 66.4, MAP.MIDNIGHT.HARANDAR },
						["groups"] = {
							i(260440),	-- Blooming Spore Vestments
							i(260447),	-- Fungus-Infested Brigandine
							i(260444),	-- Ghikal's Spare Tunic
							i(260446),	-- Spore-Covered Breastplate
						},
					}),
				}),
				header(HEADERS.AchCriteria, 61739.09, {	-- Cultivating Hope
					q(91872, {	-- The Former Rootwarden
						["sourceQuests"] = { 86898 },	-- Rise of the Haranir
						["provider"] = { "n", 237572 },	-- Hagar
						["coord"] = { 34.9, 25.0, MAP.MIDNIGHT.HARANDAR },
					}),
					q(91873, {	-- Buffer Zone
						["sourceQuests"] = { 91872 },	-- The Former Rootwarden
						["provider"] = { "n", 252495 },	-- Hagar
						["coord"] = { 42.6, 34.1, MAP.MIDNIGHT.HARANDAR },
					}),
					q(91875, {	-- Natural Remedy
						["sourceQuests"] = { 91873 },	-- Buffer Zone
						["provider"] = { "n", 252497 },	-- Hagar
						["coord"] = { 42.4, 34.4, MAP.MIDNIGHT.HARANDAR },
						["groups"] = {
							i(252649),	-- Verdant Stalker Sludge (QI!)
						},
					}),
					q(91874, {	-- Flare Up
						["sourceQuests"] = { 91875 },	-- Natural Remedy
						["provider"] = { "n", 252496 },	-- Hagar
						["coord"] = { 42.3, 34.2, MAP.MIDNIGHT.HARANDAR },
					}),
					q(91876, {	-- Tending Hope
						["sourceQuests"] = { 91874 },	-- Flare Up
						["provider"] = { "n", 248886 },	-- Hagar
						["coord"] = { 42.6, 33.6, MAP.MIDNIGHT.HARANDAR },
						["groups"] = {
							i(260450),	-- Band of the Former Rootwarden
							i(260451),	-- Ring of Hope Preserved
						},
					}),
				}),
				header(HEADERS.AchCriteria, 61739.10, {	-- Hunter's Rights
					q(92882, {	-- A Hunter's Plight
						["sourceQuests"] = { 86930 },	-- To Sow the Seed
						["provider"] = { "n", 253390 },	-- Ketan
						["coord"] = { 69.4, 52.8, MAP.MIDNIGHT.HARANDAR },
					}),
					q(92883, {	-- A Hunter's Duty
						["sourceQuests"] = { 92882 },	-- A Hunter's Plight
						["provider"] = { "n", 253392 },	-- Akazi
						["coord"] = { 70.5, 50.7, MAP.MIDNIGHT.HARANDAR },
						["groups"] = {
							i(255259),	-- Chloroceros Bone (QI!)
							i(255258),	-- Grovecrawler Fang (QI!)
							i(255260),	-- Lasher Vine (QI!)
							o(584525, {	-- Sporeglider's Tail Spore
								["coords"] = {
									{ 69.4, 43.1, MAP.MIDNIGHT.HARANDAR },
									{ 69.6, 44.5, MAP.MIDNIGHT.HARANDAR },
									{ 69.9, 41.8, MAP.MIDNIGHT.HARANDAR },
									{ 70.2, 43.8, MAP.MIDNIGHT.HARANDAR },
									{ 71.0, 41.1, MAP.MIDNIGHT.HARANDAR },
									{ 71.2, 42.7, MAP.MIDNIGHT.HARANDAR },
									{ 71.5, 41.7, MAP.MIDNIGHT.HARANDAR },
									{ 71.9, 39.6, MAP.MIDNIGHT.HARANDAR },
								},
								["groups"] = { i(255261) },	-- Sporeglider's Tail Spore (QI!)
							}),
						},
					}),
					q(92884, {	-- A Hunter's Weapon
						["sourceQuests"] = { 92883 },	-- A Hunter's Duty
						["provider"] = { "n", 253433 },	-- Ketan
						["coord"] = { 70.0, 52.9, MAP.MIDNIGHT.HARANDAR },
						["groups"] = {
							o(602759, {	-- Ka'dani Spear
								["coord"] = { 70.0, 52.8, MAP.MIDNIGHT.HARANDAR },
								["groups"] = { i(257717) },	-- Ka'dani Spear (QI!)
							}),
						},
					}),
					q(92885, {	-- A Hunter's Prey
						["sourceQuests"] = { 92884 },	-- A Hunter's Weapon
						["provider"] = { "n", 253392 },	-- Akazi
						["coord"] = { 70.5, 50.7, MAP.MIDNIGHT.HARANDAR },
						["groups"] = {
							i(260473),	-- Ka'shuk Trainee's Dagger
							i(260483),	-- Ka'shuk Trainee's Greatsword
							i(260472),	-- Ka'shuk Trainee's Hatchet
							i(260479),	-- Ka'shuk Trainee's Longbow
							i(260477),	-- Ka'shuk Trainee's Longsword
							i(260474),	-- Ka'shuk Trainee's Mace
							i(260476),	-- Ka'shuk Trainee's Shortsword
							i(260481),	-- Ka'shuk Trainee's Spear
							i(260482),	-- Ka'shuk Trainee's Staff
							i(260478),	-- Ka'shuk Trainee's Warglaive
						},
					}),
				}),
				header(HEADERS.AchCriteria, 61739.11, {	-- A Palette of Feelings
					q(92694, {	-- Dusk Among Pigments
						["sourceQuests"] = { 86930 },	-- To Sow the Seed
						["provider"] = { "n", 252871 },	-- Shay'neia
						["coord"] = { 70.5, 51.2, MAP.MIDNIGHT.HARANDAR },
					}),
					q(92695, {	-- The Stroke of Storms
						["sourceQuests"] = { 92694 },	-- Dusk Among Pigments
						["provider"] = { "n", 252872 },	-- Orn'shan
						["coord"] = { 74.0, 53.1, MAP.MIDNIGHT.HARANDAR },
					}),
					q(92696, {	-- Colors Reborn Anew
						["sourceQuests"] = { 92695 },	-- The Stroke of Storms
						["provider"] = { "n", 252872 },	-- Orn'shan
						["coord"] = { 72.4, 55.7, MAP.MIDNIGHT.HARANDAR },
						["groups"] = { i(258571) },	-- Mushroom Pigment (QI!)
					}),
					q(92697, {	-- Hues of Tomorrow
						["sourceQuests"] = { 92696 },	-- Colors Reborn Anew
						["provider"] = { "n", 252872 },	-- Orn'shan
						["coord"] = { 72.4, 55.7, MAP.MIDNIGHT.HARANDAR },
						["groups"] = {
							i(269981),	-- Paintmaker's Edge
							i(260528),	-- Paintmaker's Estoc
							i(260523),	-- Paintmaker's Kris
							i(260525),	-- Paintmaker's Mace
							i(260530),	-- Paintmaker's Palette
							i(260526),	-- Paintmaker's Rapier
							i(260529),	-- Paintmaker's Scraper
							i(260524),	-- Paintmaker's Stirrer
							i(260527),	-- Paintmaker's Walking Stick
						},
					}),
				}),
				header(HEADERS.AchCriteria, 61739.12, {	-- Predator Reintroduction
					q(92865, {	-- Feeding the Buds
						["sourceQuests"] = { 86930 },	-- To Sow the Seed
						["provider"] = { "n", 253312 },	-- Ney'tar
						["coord"] = { 69.5, 50.6, MAP.MIDNIGHT.HARANDAR },
						["groups"] = { i(255577) },	-- Chloroceros Bud (QI!)
					}),
					q(92864, {	-- Drift Them Away
						["sourceQuests"] = { 86930 },	-- To Sow the Seed
						["provider"] = { "n", 253312 },	-- Ney'tar
						["coord"] = { 69.5, 50.6, MAP.MIDNIGHT.HARANDAR },
					}),
					q(92866, {	-- Re-Hydra-ted
						["sourceQuests"] = {
							92864,	-- Drift Them Away
							92865,	-- Feeding the Buds
						},
						["provider"] = { "n", 253312 },	-- Ney'tar
						["coord"] = { 69.5, 50.6, MAP.MIDNIGHT.HARANDAR },
						["groups"] = { i(260705) },	-- Assistant Botanist Leafy (PET!)
					}),
				}),
				header(HEADERS.AchCriteria, 61739.13, {	-- Bloomtown
					q(92732, {	-- Light Disturbance
						["sourceQuests"] = { 86898 },	-- Rise of the Haranir
						["qg"] = 241629,	-- Hannan
						["coord"] = { 31.4, 64.9, MAP.MIDNIGHT.HARANDAR },
					}),
					q(92736, {	-- Light Stroll
						["sourceQuests"] = { 92732 },	-- Light Disturbance
						["qg"] = 253087,	-- Luminescent Corpse
						["coord"] = { 40.6, 63.0, MAP.MIDNIGHT.HARANDAR },
					}),
					q(92737, {	-- Light Carnage
						["sourceQuests"] = { 92736 },	-- Light Stroll
						["qg"] = 253105,	-- Hannan
						["coord"] = { 41.7, 67.8, MAP.MIDNIGHT.HARANDAR },
					}),
					q(92738, {	-- Potatoad Tots
						["sourceQuests"] = { 92736 },	-- Light Stroll
						["qg"] = 253105,	-- Hannan
						["coord"] = { 41.7, 67.8, MAP.MIDNIGHT.HARANDAR },
					}),
					q(92739, {	-- O.K. Bloomer
						["sourceQuests"] = {
							92737,	-- Light Carnage
							92738,	-- Potatoad Tots
						},
						["qg"] = 253105,	-- Hannan
						["coords"] = {
							{ 37.3, 72.3, MAP.MIDNIGHT.HARANDAR },
							{ 41.7, 67.8, MAP.MIDNIGHT.HARANDAR },
						},
						["groups"] = { i(260585) },	-- Linda the Lucky (PET!)
					}),
				}),
				header(HEADERS.AchCriteria, 61739.14, {	-- The Grudge Pit
					q(90615, {	-- Be Grudge You
						["sourceQuests"] = { 86930 },	-- To Sow the Seed
						["qg"] = 254903,	-- Motta
						["coord"] = { 70.3, 52.9, MAP.MIDNIGHT.HARANDAR },
						["isBreadcrumb"] = true,
					}),
					q(90616, {	-- You Strong?
						["sourceQuest"] = 90615,	-- Be Grudge You
						["provider"] = { "n", 243226 },	-- Boletus
						["coord"] = { 71.8, 64.0, MAP.MIDNIGHT.HARANDAR },
					}),
					q(90617, {	-- A Few Fun Guys
						["sourceQuests"] = { 90616 },	-- You Strong?
						["provider"] = { "n", 243226 },	-- Boletus
						["coord"] = { 71.8, 64.0, MAP.MIDNIGHT.HARANDAR },
					}),
					q(90619, {	-- What Doesn't Kill Them
						["sourceQuests"] = { 90617 },	-- A Few Fun Guys
						["provider"] = { "n", 243226 },	-- Boletus
						["coord"] = { 71.8, 64.0, MAP.MIDNIGHT.HARANDAR },
					}),
					q(91450, {	-- We Ready Now
						["sourceQuests"] = { 90619 },	-- What Doesn't Kill Them
						["provider"] = { "n", 246208 },	-- Brakko
						["coord"] = { 72.1, 62.9, MAP.MIDNIGHT.HARANDAR },
					}),
					q(91270, {	-- The Most Important Thing
						["sourceQuests"] = { 91450 },	-- We Ready Now
						["provider"] = { "n", 251715 },	-- Tuktuk
						["coord"] = { 71.8, 63.9, MAP.MIDNIGHT.HARANDAR },
					}),
					q(90620, {	-- To the Ring
						["sourceQuest"] = 91270,	-- The Most Important Thing
						["qg"] = 243226,	-- Boletus <Fight Promoter>
						["coord"] = { 71.8, 64.0, MAP.MIDNIGHT.HARANDAR },
					}),
					q(90621, {	-- Tiny Heroes' Journeys
						["sourceQuest"] = 90620,	-- To the Ring
						["qg"] = 243226,	-- Boletus <Fight Promoter>
						["coord"] = { 71.8, 64.0, MAP.MIDNIGHT.HARANDAR },
					}),
					q(92616, {	-- Mushrooming Courage
						["sourceQuest"] = 90620,	-- To the Ring
						["qg"] = 247245,	-- Brakko
						["coord"] = { 71.8, 64.0, MAP.MIDNIGHT.HARANDAR },
					}),
					q(92617, {	-- Mushrooming Resilience
						["sourceQuest"] = 90620,	-- To the Ring
						["qg"] = 251723,	-- Ziny
						["coord"] = { 71.8, 64.0, MAP.MIDNIGHT.HARANDAR },
					}),
					q(92618, {	-- Mushrooming Confidence
						["sourceQuest"] = 90620,	-- To the Ring
						["qg"] = 251715,	-- Tuktuk
						["coord"] = { 71.8, 64.0, MAP.MIDNIGHT.HARANDAR },
					}),
					q(90622, {	-- Not-Yet Defeated Champions
						["sourceQuest"] = 90621,	-- Tiny Heroes' Journeys
						["qg"] = 243226,	-- Boletus <Fight Promoter>
						["coord"] = { 71.8, 64.0, MAP.MIDNIGHT.HARANDAR },
						["groups"] = { title(670) },	-- <name>, Teacher of Strong
					}),
				}),
				header(HEADERS.AchCriteria, 61739.15, {	-- Trials of the Shul'ka
					q(90824, {	-- My Brother's Alive!
						["sourceQuest"] = 86890,	-- Tell the People What You Have Seen
						["provider"] = { "n", 244163 },	-- Chua
						["coord"] = { 52.2, 55.1, MAP.MIDNIGHT.HARANDAR },
					}),
					q(90826, {	-- The Healing Waters of Ahl'ua
						["sourceQuests"] = { 90824 },	-- My Brother's Alive!
						["provider"] = { "n", 244242 },	-- En'liahn
						["coord"] = { 43.1, 61.4, MAP.MIDNIGHT.HARANDAR },
						["groups"] = {
							i(246118),	-- En'liahn's Jug (QI!)
							o(539208, {	-- Healing Waters of Ahl'ua
								["coords"] = {
									{ 39.7, 53.1, MAP.MIDNIGHT.HARANDAR },
									{ 40.3, 56.3, MAP.MIDNIGHT.HARANDAR },
									{ 40.4, 54.4, MAP.MIDNIGHT.HARANDAR },
									{ 40.4, 59.7, MAP.MIDNIGHT.HARANDAR },
									{ 41.0, 52.2, MAP.MIDNIGHT.HARANDAR },
									{ 41.0, 58.0, MAP.MIDNIGHT.HARANDAR },
									{ 42.3, 52.4, MAP.MIDNIGHT.HARANDAR },
									{ 43.1, 54.2, MAP.MIDNIGHT.HARANDAR },
									{ 44.7, 54.1, MAP.MIDNIGHT.HARANDAR },
								},
								["groups"] = { i(243196) },	-- Healing Waters of Ahl'ua (QI!)
							}),
						},
					}),
					q(90827, {	-- Only the Poisonous Parts
						["sourceQuests"] = { 90824 },	-- My Brother's Alive!
						["provider"] = { "n", 244242 },	-- En'liahn
						["coord"] = { 43.1, 61.4, MAP.MIDNIGHT.HARANDAR },
						["groups"] = { i(243598) },	-- Phytogenic Poison Part (QI!)
					}),
					q(90829, {	-- Meeting My Mentor
						["sourceQuests"] = {
							90827,	-- Only the Poisonous Parts
							90826,	-- The Healing Waters of Ahl'ua
						},
						["provider"] = { "n", 244242 },	-- En'liahn
						["coord"] = { 43.1, 61.4, MAP.MIDNIGHT.HARANDAR },
					}),
					q(90830, {	-- The Path Will Reveal Itself
						["sourceQuests"] = { 90829 },	-- Meeting My Mentor
						["provider"] = { "n", 244394 },	-- En'liahn
						["coord"] = { 63.9, 54.7, MAP.MIDNIGHT.HARANDAR },
					}),
					q(90831, {	-- Doing Is Becoming
						["sourceQuests"] = { 90829 },	-- Meeting My Mentor
						["provider"] = { "n", 244419 },	-- Amarakk
						["coord"] = { 63.9, 54.7, MAP.MIDNIGHT.HARANDAR },
					}),
					q(90832, {	-- As Her Voice Goes Silent
						["sourceQuests"] = {
							90831,	-- Doing Is Becoming
							90830,	-- The Path Will Reveal Itself
						},
						["provider"] = { "n", 244455 },	-- Amarakk
						["coord"] = { 62.9, 62.4, MAP.MIDNIGHT.HARANDAR },
					}),
					q(90833, {	-- The Final Rite
						["sourceQuests"] = { 90832 },	-- As Her Voice Goes Silent
						["provider"] = { "n", 244455 },	-- Amarakk
						["coord"] = { 62.9, 62.4, MAP.MIDNIGHT.HARANDAR },
					}),
					q(90834, {	-- From This Point Forward
						["sourceQuests"] = { 90833 },	-- The Final Rite
						["provider"] = { "n", 244473 },	-- En'liahn
						["coord"] = { 61.6, 60.2, MAP.MIDNIGHT.HARANDAR },
						["groups"] = { i(263020) },	-- Ward of the Shul'ka (DECOR!)
					}),
				}),
			}),
			--After campaign
			q(93651, {	-- The Blinding Vale
				["sourceQuests"] = { 86898 },	-- Rise of the Haranir
				["providers"] = {
					{ "n", 255822 },	-- Orweyna @ Silvermoon City
					{ "n", 255828 },	-- Orweyna @ The Den, Harandar
				},
				["coords"] = {
					{ 36.6, 68.5, MAP.MIDNIGHT.SILVERMOON_CITY },
					{ 50.9, 53.1, MAP.MIDNIGHT.HARANDAR },
				},
				["groups"] = {
					i(251190),	-- Bloodthorn Burnous
					i(251194),	-- Lightwarden's Bind
					i(251183),	-- Rootwarden Wraps
					i(251197),	-- Thornspike Gauntlets
				},
			}),
			--Quest that lead to Luminous Dust vendor
			q(92448, {	-- Where Dust Dances
				["provider"] = { "i", 251881 },	-- Small Pile of Luminous Dust
				["coord"] = { 52.9, 51.7, MAP.MIDNIGHT.HARANDAR },
			}),
			--Side quests
			--Leading to villages, could be breadcrumb but they are not?
			q(93776, {	-- Har'alnor, Village of Twilight
				["sourceQuests"] = {
					86881,	-- At the Root
					86880,	-- Our Beloved, Returned
					86877,	-- Righteous Pruning
				},
				["qg"] = 241655,	-- Hannan
				["coord"] = { 33.2, 76.0, MAP.MIDNIGHT.HARANDAR },
			}),
			q(93745, {	-- Har'athir, Village of Memory
				["sourceQuests"] = { 86930 },	-- To Sow the Seed
				["provider"] = { "n", 256245 },	-- Orna
				["coords"] = {
					{ 54.2, 53.3, MAP.MIDNIGHT.HARANDAR },
					{ 71.1, 53.9, 2576 },	-- The Den
				},
				["altQuests"] = {	-- Quest gets auto-completed as soon as you accept any of the altQuests
					92882,	-- A Hunter's Plight
					90615,	-- Be Grudge You	// This one may not be accurate
					92694,	-- Dusk Among Pigments
					92864,	-- Drift Them Away
					92865,	-- Feeding the Buds
				},
			}),
			q(93775, {	-- Har'mara, Village of Balance
				["sourceQuests"] = { 86930 },	-- To Sow the Seed
				["provider"] = { "n", 256350 },	-- Ravi
				["coord"] = { 50.7, 55.7, MAP.MIDNIGHT.HARANDAR },
				["altQuests"] = {	-- Quest gets auto-completed as soon as you accept any of the altQuests
					90537,	-- Late Bloomers
					91587,	-- Carcass Cuisine
					91585,	-- Fresh from the Garden
					91586,	-- Soil-based Alternatives
				},
			}),
			q(93771, {	-- Har'kuai, Village of Rain
				["sourceQuests"] = { 86930 },	-- To Sow the Seed
				["provider"] = { "n", 256313 },	-- Kaleo
				["coord"] = { 51.0, 50.9, MAP.MIDNIGHT.HARANDAR },
				--["altQuests"] = {	-- Quest gets auto-completed as soon as you accept any of the altQuests / Alex: probably Blizzard bug - this one are not.
				--	91346,	-- Supplicants to The Goddess
				--	90467,	-- Tales of the Sky
				--	91063,	-- The Blooming Lattice
				--	90468,	-- Ugh, Chores!
				--},
			}),
		}),
		n(QUESTS, sharedData({
			-- ["sourceQuests"] = { 86930 },	-- To Sow the Seed (perhaps a different quest is required?)
			["qg"] = 249361,	-- Shul'ka Li'tya
			["coord"] = { 51.8, 74.2, MAP.MIDNIGHT.HARANDAR },
			["isWeekly"] = true,	-- Probably? Blue !
		}, {
			q(92013, {	-- WANTED: Dionaea's Thorntusks
				["groups"] = { i(249408) },	-- Thorntusks of Dionaea (QI!)
			}),
			q(91970),	-- WANTED: Gelatonius
			q(92012, {	-- WANTED: Gorebarb's Pincers
				["groups"] = { i(249406) },	-- Gorebarb's Pincers (QI!)
			}),
			q(91980, {	-- WANTED: Hellebora's Thorn
				["groups"] = { i(249402) },	-- Hellebora's Thorn (QI!)
			}),
			q(91998, {	-- WANTED: Muckmire's Choking Vines
				["groups"] = { i(249404) },	-- Choking Vines (QI!)
			}),
			q(92010, {	-- WANTED: Slewstalk's Stalks
				["groups"] = { i(249405) },	-- Luminescent Stalks (QI!)
			}),
			q(91982, {	-- WANTED: Toadshade's Petals
				["groups"] = { i(249403) },	-- Toadshade Petals (QI!)
			}),
		})),
	}),
}));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.MID, {
	m(MAP.MIDNIGHT.QUELTHALAS, {
		m(MAP.MIDNIGHT.HARANDAR, {
			n(QUESTS, {
				-- During questing
				--q(89196),	-- Zone Choice Made (spellID 1254861), same hqt as previously.
				q(92712),	-- after turn in questID 86929 (The Council Assembles), could be some phase swtiches or faction renown?
				q(94046),	-- The Cradle - Boundary Catcher - Caught 03 - Teleport [DNT] (spellID 1266363), fly directly up into the glowing skybox (achievementID 61860 - From The Cradle to the Grave)
				q(95146),	-- 12.0 Local 13 Q03a Accept Hannan Leaves (JKP) (spellID 1282413), after accepting O.K. Bloomer (questID 92739)
			}),
		}),
	}),
}));
