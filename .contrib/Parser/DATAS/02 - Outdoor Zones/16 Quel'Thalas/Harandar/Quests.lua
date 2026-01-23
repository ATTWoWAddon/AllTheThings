---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(MAP.MIDNIGHT.QUELTHALAS, {
	m(MAP.MIDNIGHT.HARANDAR, {
		n(QUESTS, {
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
						--["coord"] = { x, y, MAP.MIDNIGHT.HARANDAR },
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
						["coord"] = { 50.8, 53.4, MAP.MIDNIGHT.HARANDAR },
					}),
					q(86911, {	-- Echoes and Memories
						["sourceQuests"] = { 86907 },	-- The Den of Echoes
						["provider"] = { "n", 237567 },	-- Hagar
						["coord"] = { 38.8, 46.9, MAP.MIDNIGHT.HARANDAR },
						["groups"] = {
							o(527117, {	--
								i(239014),	-- Iceberries (QI!)
							}),
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
							i(256176),	--
							i(256178),	-- Spear of Painted Memories
							i(256179),	--
							i(256181),	--
							i(256182),	--
							i(256183),	--
							i(256185),	--
							i(256187),	--
							i(256189),	--
							i(256191),	-- Handaxe of Painted Memories
							i(256230),	--
						},
					}),
					q(86912, {	-- Down the Rootways
						["sourceQuests"] = { 90095 },	-- Echo of the Call
						["provider"] = { "n", 243884 },	-- Zur'ashar Kassameh
						["coord"] = { 33.9, 44.8, MAP.MIDNIGHT.HARANDAR },
						["groups"] = {
							o(572806, {	--
								i(251512),	-- Fragment of Revelation (QI!)
							}),
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
							i(238024),	-- Watering Can (QI!)
							--
							i(256174),	--
							i(256175),	--
							i(256177),	-- Spore-Touched Staff
							i(256180),	--
							i(256184),	-- Spore-Touched Saber
							i(256186),	--
							i(256188),	-- Spore-Touched Bludgeon
							i(256190),	--
							i(256231),	--
						},
					}),
					q(86956, {	-- The Traveling Flowers
						["sourceQuests"] = { 86913 },	-- A Hut in Har'mara
						["provider"] = { "n", 237787 },	-- Halduron Brightwing
						["coord"] = { 34.9, 25.1, MAP.MIDNIGHT.HARANDAR },
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
						["coord"] = { 34.9, 25.0, MAP.MIDNIGHT.HARANDAR },
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
							i(258623),	-- Glistening Seed Bag (QI!)
						},
					}),
					------ Stay awhile and listen ------
					hqt(90884, {	-- Stay awhile and listen: Orweyna
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
						["coord"] = { 50.8, 53.2, MAP.MIDNIGHT.HARANDAR },
						["groups"] = {
							--This quest unlock (almost) all side quests in zone
						},
					}),
					q(86836, {	-- The Hunter Awaits
						["sourceQuests"] = { 86864 },	-- Watch The Den
						["provider"] = { "n", 241045 },	-- Ku'paal
						["coord"] = { 54.3, 55.7, MAP.MIDNIGHT.HARANDAR },
					}),
					q(86855, {	-- Consequences of Our Duty
						["sourceQuests"] = { 86836 },	-- The Hunter Awaits
						["provider"] = { "n", 237236 },	-- Amarakk
						["coord"] = { 62.0, 54.6, MAP.MIDNIGHT.HARANDAR },
						["groups"] = {
							i(256335),	-- Amarakk's Woven Signet
							i(256334),	-- Band of Severed Connections
							i(243595),	-- Salve of Aln (QI!)
						},
					}),
					q(86851, {	-- The Foundation of Aln
						["sourceQuests"] = { 86836 },	-- The Hunter Awaits
						["provider"] = { "n", 237236 },	-- Amarakk
						["coord"] = { 62.0, 54.6, MAP.MIDNIGHT.HARANDAR },
						["groups"] = {
							i(238417),	-- Diminished Alndust (QI!)
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
					q(86861, {	-- Herding Manifestations
						["sourceQuests"] = { 86858 },	-- The Madness Roots Deep
						["provider"] = { "n", 237284 },	-- Amarakk
						["coord"] = { 61.1, 57.3, MAP.MIDNIGHT.HARANDAR },
					}),
					q(86860, {	-- Before They Grow
						["sourceQuests"] = { 86858 },	-- The Madness Roots Deep
						["provider"] = { "n", 237284 },	-- Amarakk
						["coord"] = { 61.1, 57.3, MAP.MIDNIGHT.HARANDAR },
						["groups"] = {
							i(239131),	-- Amarakk's Influence (QI!)
						},
					}),
					q(86859, {	-- Grinding Out a Solution
						["sourceQuests"] = { 86858 },	-- The Madness Roots Deep
						["provider"] = { "n", 237284 },	-- Amarakk
						["coord"] = { 61.1, 57.3, MAP.MIDNIGHT.HARANDAR },
						["groups"] = {
							o(508709, {
								i(238651),	-- Alngrown Fungus (QI!)
							}),
						},
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
							i(252957),	-- Tangle of Vibrant Vines
							i(252956),	-- Aln-Bound Essence
							o(527509, {	--
								i(238738),	-- Greater Alndust (QI!)
							}),
						},
					}),
					q(86865, {	-- In Search of the Problem
						["sourceQuests"] = { 86862 },	-- The Greater They Aln
						["provider"] = { "n", 237234 },	-- Orweyna
						["coord"] = { 63.1, 56.8, MAP.MIDNIGHT.HARANDAR },
					}),
					q(86866, {	-- Can we Heal This?
						["sourceQuests"] = { 86865 },	-- In Search of the Problem
						["provider"] = { "n", 237235 },	-- Orweyna
						["coord"] = { 31.4, 64.9, MAP.MIDNIGHT.HARANDAR },
					}),
					q(86882, {	-- Alndust in Right Hands
						["sourceQuests"] = { 86866 },	-- Can we Heal This?
						["provider"] = { "n", 237236 },	-- Orweyna
						["coord"] = { 32.0, 61.4, MAP.MIDNIGHT.HARANDAR },
						["groups"] = {
							i(256213),	-- Alndust-Touched Gloves
							i(256197),	-- Gauntlets of the Innoculated
							i(256205),	-- Hopeful Haranir's Grasps
							i(256221),	-- Rallied Haranir's Mitts
						},
					}),
					q(86867, {	-- Into the Lightbloom
						["sourceQuests"] = { 86866 },	-- Can we Heal This?
						["provider"] = { "n", 237356 },	-- Orweyna
						["coord"] = { 33.2, 76.0, MAP.MIDNIGHT.HARANDAR },
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
							o(508411, {	--
								i(238792),	-- Haranir Artifacts (QI!)
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
						["coord"] = { 53.2, 55.5, MAP.MIDNIGHT.HARANDAR },
					}),
					q(86884, {	-- Cull and Burn
						["sourceQuests"] = { 86883 },	-- The Frenzied March
						["provider"] = { "n", 237361 },	-- Orweyna
						["coord"] = { 62.2, 59.5, MAP.MIDNIGHT.EVERSONG_WOODS },
						["groups"] = {
							i(238196),	-- Lightbleached Rootbone (QI!)
							i(256224),	-- Light-Bleached Amulet
							i(256225),	-- Rootbone Choker
						},
					}),
					q(86885, {	-- Stem the Tides
						["sourceQuests"] = { 86883 },	-- The Frenzied March
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
					}),
					q(86887, {	-- Expeditious Retreat
						["sourceQuests"] = {
							86884,	-- Cull and Burn
							86885,	-- Stem the Tides
						},
						["provider"] = { "n", 237465 },	-- Halduron Brightwing
						["coord"] = { 62.3, 59.5, MAP.MIDNIGHT.EVERSONG_WOODS },
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
							i(259477),	-- Thriving Essence Sprig
						},
					}),
					q(86898, {	-- Rise of the Haranir
						["sourceQuests"] = { 86897 },	-- Quelling the Frenzy
						["provider"] = { "n", 241704 },	-- Orweyna
						["coord"] = { 58.4, 55.4, MAP.MIDNIGHT.EVERSONG_WOODS },
						["groups"] = {
							ach(61506, {	-- Allied Race: Haranir (just in case, atm)
								i(246736),	-- Ivory Grimlynx (MOUNT!)
							}),
						},
					}),
				}),
			}),
			n(BONUS_OBJECTIVES, {
				q(86874, {	-- Culling the Light
					["sourceQuests"] = { 86866 },	-- Can we Heal This? (It require 86867 to be picked up)
					["coord"] = { 30.6, 77.2, MAP.MIDNIGHT.HARANDAR },
				}),
			}),
			--After campaign
			q(93651, {	-- The Blinding Vale
				["sourceQuests"] = { 86898 },	-- Rise of the Haranir
				["providers"] = {
					{ "n", 255822 },	-- Orweyna
					{ "n", 255828 },	-- Orweyna
				},
				["coord"] = { 36.6, 68.5, MAP.MIDNIGHT.SILVERMOON_CITY },
				["groups"] = {
					i(251190),	-- Bloodthorn Burnous
					i(251194),	-- Lightwarden's Bind
					i(251183),	-- Rootwarden Wraps
					i(251197),	-- Thornspike Gauntlets
				},
			}),
			--Delves
			q(93421, {	-- Delver's Call: The Grudge Pit
				["provider"] = { "o", 612264 },	-- The Grudge Pit
				["coord"] = { 71.2, 52.1, MAP.MIDNIGHT.HARANDAR },
			}),
			q(93416, {	-- Delver's Call: The Gulf of Memory
				["provider"] = { "o", 612259 },	-- The Gulf of Memory
				["coord"] = { 52.9, 51.7, MAP.MIDNIGHT.HARANDAR },
			}),
			--Quest that lead to Luminous Dust vendor
			q(92448, {	-- Where Dust Dances
				["provider"] = { "i", 251881 },	-- Small Pile of Luminous Dust
				["coord"] = { 52.9, 51.7, MAP.MIDNIGHT.HARANDAR },
			}),
			--Side quests
			---1
			q(90616, {	-- You Strong?
				["sourceQuests"] = { 86864 },	-- Watch The Den
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
				["groups"] = {
					--TODO: bugged, Brakko uninteractable
				},
			}),
			---2
			q(92882, {	-- A Hunter's Plight
				["sourceQuests"] = { 86864 },	-- Watch The Den
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
					o(584525, {	--
						i(255261),	-- Sporeglider's Tail Spore (QI!)
					}),
				},
			}),
			q(92884, {	-- A Hunter's Weapon
				["sourceQuests"] = { 92883 },	-- A Hunter's Duty
				["provider"] = { "n", 253433 },	-- Ketan
				["coord"] = { 70.0, 52.9, MAP.MIDNIGHT.HARANDAR },
				["groups"] = {
					o(602759, {	--
						i(257717),	-- Ka'dani Spear (QI!)
					}),
				},
			}),
			q(92885, {	-- A Hunter's Prey
				["sourceQuests"] = { 92884 },	-- A Hunter's Weapon
				["provider"] = { "n", 253392 },	-- Akazi
				["coord"] = { 70.5, 50.7, MAP.MIDNIGHT.HARANDAR },
				["groups"] = {
					i(260472),
					i(260473),
					i(260474),
					i(260476),
					i(260477),	-- Ka'shuk Trainee's Hatchet
					i(260478),
					i(260479),
					i(260481),	-- Ka'shuk Trainee's Spear
					i(260482),
					i(260483),
				},
			}),
			---3
			q(92694, {	-- Dusk Among Pigments
				["sourceQuests"] = { 86864 },	-- Watch The Den
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
				["groups"] = {
					i(258571),	-- Mushroom Pigment (QI!)
				},
			}),
			q(92697, {	-- Hues of Tomorrow
				["sourceQuests"] = { 92696 },	-- Colors Reborn Anew
				["provider"] = { "n", 252872 },	-- Orn'shan
				["coord"] = { 72.4, 55.7, MAP.MIDNIGHT.HARANDAR },
				["groups"] = {
					i(260523),	--
					i(260524),	-- Paintmaker's Stirrer
					i(260526),	-- Paintmaker's Rapier
					i(260527),	-- Paintmaker's Walking Stick
					i(260528),	--
					i(260529),	--
					i(260530),	--
				},
			}),
			---4
			q(92864, {	-- Feeding the Buds
				["sourceQuests"] = { 86864 },	-- Watch The Den
				["provider"] = { "n", 253312 },	-- Ney'tar
				["coord"] = { 69.5, 50.6, MAP.MIDNIGHT.HARANDAR },
			}),
			q(92865, {	-- Dusk Among Pigments
				["sourceQuests"] = { 86864 },	-- Watch The Den
				["provider"] = { "n", 253312 },	-- Ney'tar
				["coord"] = { 69.5, 50.6, MAP.MIDNIGHT.HARANDAR },
				["groups"] = {
					i(255577),	-- Chloroceros Bud (QI!)
				},
			}),
			q(92866, {	-- Re-Hydra-ted
				["sourceQuests"] = {
					92864,	-- Feeding the Buds
					92865,	-- Dusk Among Pigments
				},
				["provider"] = { "n", 253312 },	-- Ney'tar
				["coord"] = { 69.5, 50.6, MAP.MIDNIGHT.HARANDAR },
				["groups"] = {
					i(260705),	-- Assistant Botanist Leafy (PET!)
				},
			}),
			---5
			q(90467, {	-- Tales of the Sky
				["sourceQuests"] = { 86864 },	-- Watch The Den
				["provider"] = { "n", 242358 },	-- Kuri
				["coord"] = { 67.8, 27.5, MAP.MIDNIGHT.HARANDAR },
				["groups"] = {
					o(529370, {	--
						i(240484),	-- Stray Skyshards (QI!)
					}),
				},
			}),
			q(90468, {	-- Ugh, Chores!
				["sourceQuests"] = { 86864 },	-- Watch The Den
				["provider"] = { "n", 242358 },	-- Kuri
				["coord"] = { 67.8, 27.5, MAP.MIDNIGHT.HARANDAR },
				["groups"] = {
					i(240485),	-- Intact Saptor Frond (QI!)
				},
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
				["groups"] = {
					i(255826),	-- Mysterious Skyshards
				},
			}),
			---6
			q(91346, {	-- Supplicants to The Goddess
				["sourceQuests"] = { 86864 },	-- Watch The Den
				["provider"] = { "n", 246607 },	-- Cyenna
				["coord"] = { 65.4, 28.1, MAP.MIDNIGHT.HARANDAR },
			}),
			q(91359, {	-- Fungal Lashers B Gone
				["sourceQuests"] = { 91346 },	-- Supplicants to The Goddess
				["provider"] = { "n", 246607 },	-- Cyenna
				["coord"] = { 65.4, 28.1, MAP.MIDNIGHT.HARANDAR },
				["groups"] = {
					i(246886),	-- Harmonious Lash (QI!)
				},
			}),
			q(91360, {	-- Weeding Out the Unwanted
				["sourceQuests"] = { 91346 },	-- Supplicants to The Goddess
				["provider"] = { "n", 246607 },	-- Cyenna
				["coord"] = { 65.4, 28.1, MAP.MIDNIGHT.HARANDAR },
			}),
			q(91360, {	-- Weeding Out the Unwanted
				["sourceQuests"] = {
					91359,	-- Fungal Lashers B Gone
					91346,	-- Supplicants to The Goddess
				},
				["provider"] = { "n", 246607 },	-- Cyenna
				["coord"] = { 65.4, 28.1, MAP.MIDNIGHT.HARANDAR },
				["groups"] = {
					i(260432),	-- Riverscale's Choker
					i(260431),	-- Riverscale's Collar
				},
			}),
			---7
			q(91063, {	-- The Blooming Lattice
				["sourceQuests"] = { 86864 },	-- Watch The Den
				["provider"] = { "n", 245637 },	-- Su'meera
				["coord"] = { 65.4, 22.6, MAP.MIDNIGHT.HARANDAR },
			}),
			q(91065, {	-- Purloining Petals
				["sourceQuests"] = { 91063 },	-- The Blooming Lattice
				["provider"] = { "n", 245639 },	-- Su'meera
				["coord"] = { 60.8, 29.9, MAP.MIDNIGHT.HARANDAR },
				["groups"] = {
					o(550011, {
						i(245886),	-- Paint-Speckled Gourd (QI!)
					}),
					o(550008, {
						i(245883),	-- Splattered Scroll (QI!)
					}),
					o(548703, {
						i(245570),	-- Pilfered Crafting Drill (QI!)
					}),
					o(548700, {
						i(245569),	-- Well-worn Ladle (QI!)
					}),
				},
			}),
			q(91085, {	-- Petal Bristles
				["sourceQuests"] = { 91063 },	-- The Blooming Lattice
				["provider"] = { "n", 245639 },	-- Su'meera
				["coord"] = { 60.8, 29.9, MAP.MIDNIGHT.HARANDAR },
				["groups"] = {
					o(557986, {
						i(245571),	-- Petalwing Plume (QI!)
					}),
				},
			}),
			q(91086, {	-- Nipping the Buds
				["sourceQuests"] = { 91063 },	-- The Blooming Lattice
				["provider"] = { "n", 245639 },	-- Su'meera
				["coord"] = { 60.8, 29.9, MAP.MIDNIGHT.HARANDAR },
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
			---8
			q(91587, {	-- Carcass Cuisine
				["sourceQuests"] = { 86864 },	-- Watch The Den
				["provider"] = { "n", 247936 },	-- Yu'relen
				["coord"] = { 40.9, 23.2, MAP.MIDNIGHT.HARANDAR },
				["groups"] = {
					i(246942),	-- Corpse Rind (QI!)
				},
			}),
			q(91585, {	-- Fresh from the Garden
				["sourceQuests"] = { 86864 },	-- Watch The Den
				["provider"] = { "n", 247936 },	-- Yu'relen
				["coord"] = { 40.9, 23.2, MAP.MIDNIGHT.HARANDAR },
				["groups"] = {
					i(246923),	-- Frillfish Fillet (QI!)
					i(246924),	-- Root Drift Jelly (QI!)
				},
			}),
			q(91586, {	-- Soil-based Alternatives
				["sourceQuests"] = { 86864 },	-- Watch The Den
				["provider"] = { "n", 247936 },	-- Yu'relen
				["coord"] = { 40.9, 23.2, MAP.MIDNIGHT.HARANDAR },
				["groups"] = {
					o(557572, {	--
						i(246926),	-- Nutrient Rich Soil (QI!)
					}),
				},
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
				["groups"] = {
					--PH reward (Pocket Lint)
				},
			}),
			---9
			q(90537, {	-- Late Bloomers
				["sourceQuests"] = { 86864 },	-- Watch The Den
				["provider"] = { "n", 242650 },	-- Ney'leia
				["coord"] = { 37.0, 26.0, MAP.MIDNIGHT.HARANDAR },
				["groups"] = {
					o(544785, {	--
						i(244337),	-- Empty Seed Sack (QI!)
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
				["groups"] = {
					i(242226),	-- Stolen Seeds (QI!)
				},
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
					o(531575, {	--
						i(244429),	-- Glowshroom (QI!)
					}),
				},
			}),
			q(90602, {	-- Gomphusta
				["sourceQuests"] = { 90963 },	-- Caves of the Cleft
				["provider"] = { "n", 245166 },	-- Ney'leia
				["coord"] = { 49.7, 23.3, MAP.MIDNIGHT.HARANDAR },
				["groups"] = {
					i(246117),	-- Carved Key (QI!)
					i(263473),	-- Recipe: Flora Frenzy (RECIPE!)
					o(553808, {	--
						i(246120),	-- Cultivation Notes (QI!)
					}),
				},
			}),
			---10
			q(91872, {	-- The Former Rootwarden
				["sourceQuests"] = { 86864 },	-- Watch The Den
				["provider"] = { "n", 237572 },	-- Hagar
				["coord"] = { 34.9, 25.0, MAP.MIDNIGHT.HARANDAR },
			}),
			q(91873, {	-- Buffer Zone
				["sourceQuests"] = { 91872 },	-- The Former Rootwarden
				["provider"] = { "n", 252495 },	-- Hagar
				["coord"] = { 42.6, 34.1, MAP.MIDNIGHT.HARANDAR },
			}),
			q(91874, {	-- Flare Up
				["sourceQuests"] = { 91873 },	-- Buffer Zone
				["provider"] = { "n", 252497 },	-- Hagar
				["coord"] = { 42.3, 34.2, MAP.MIDNIGHT.HARANDAR },
			}),
			q(91875, {	-- Natural Remedy
				["sourceQuests"] = { 91874 },	-- Flare Up
				["provider"] = { "n", 252496 },	-- Hagar
				["coord"] = { 42.4, 34.4, MAP.MIDNIGHT.HARANDAR },
				["groups"] = {
					i(252649),	-- Verdant Stalker Sludge (QI!)
				},
			}),
			q(91876, {	-- Tending Hope
				["sourceQuests"] = { 91875 },	-- Natural Remedy
				["provider"] = { "n", 248886 },	-- Hagar
				["coord"] = { 42.6, 33.6, MAP.MIDNIGHT.HARANDAR },
				["groups"] = {
					i(260450),	-- Band of the Former Rootwarden
					i(260451),	-- Ring of Hope Preserved
				},
			}),
			---11
			q(90533, {	-- Go Get Orweyna!
				["sourceQuests"] = { 86864 },	-- Watch The Den
				["provider"] = { "n", 242593 },	-- Monte Gazlowe
				["coord"] = { 47.1, 45.8, MAP.MIDNIGHT.HARANDAR },
				["groups"] = {
					i(241125),	-- Handcrafted Plush (QI!)
				},
			}),
			q(90534, {	-- The Home of the Haranir
				["sourceQuests"] = { 86864 },	-- Watch The Den
				["provider"] = { "n", 242592 },	-- Orweyna
				["coord"] = { 47.2, 45.8, MAP.MIDNIGHT.HARANDAR },
			}),
			q(90535, {	-- Leave Your Mark
				["sourceQuests"] = { 90534 },	-- The Home of the Haranir
				["provider"] = { "n", 242882 },	-- Orweyna
				["coord"] = { 51.3, 49.4, MAP.MIDNIGHT.HARANDAR },
				["groups"] = {
					i(260427),	-- Nahuut's Second-Favorite Chew Toy
				},
			}),
			---12
			q(91550, {	-- A Game of Silence and Shadow
				["sourceQuests"] = { 86864 },	-- Watch The Den
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
				["groups"] = {
					i(260439),	-- Silence and Shadow Champion's Badge
				},
			}),
			---13
			q(90824, {	-- My Brother's Alive!
				["sourceQuests"] = { 86864 },	-- Watch The Den
				["provider"] = { "n", 244163 },	-- Chua
				["coord"] = { 52.2, 55.1, MAP.MIDNIGHT.HARANDAR },
			}),
			q(90826, {	-- The Healing Waters of Ahl'ua
				["sourceQuests"] = { 90824 },	-- My Brother's Alive!
				["provider"] = { "n", 244242 },	-- En'liahn
				["coord"] = { 43.1, 61.4, MAP.MIDNIGHT.HARANDAR },
				["groups"] = {
					i(246118),	-- En'liahn's Jug (QI!)
					o(539208, {
						i(243196),	-- Healing Waters of Ahl'ua (QI!)
					}),
				},
			}),
			q(90827, {	-- Only the Poisonous Parts
				["sourceQuests"] = { 90824 },	-- My Brother's Alive!
				["provider"] = { "n", 244242 },	-- En'liahn
				["coord"] = { 43.1, 61.4, MAP.MIDNIGHT.HARANDAR },
				["groups"] = {
					i(243598),	-- Phytogenic Poison Part (QI!)
				},
			}),
			q(90829, {	-- Meeting My Mentor
				["sourceQuests"] = {
					90827,	-- Only the Poisonous Parts
					90826,	-- The Healing Waters of Ahl'ua
				},
				["provider"] = { "n", 244242 },	-- En'liahn
				["coord"] = { 43.1, 61.4, MAP.MIDNIGHT.HARANDAR },
				["groups"] = {
					i(243598),	-- Phytogenic Poison Part (QI!)
				},
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
			--[[q(, {	-- From This Point Forward (TODO: forgot to copy-paste, again)
				["sourceQuests"] = { 90833 },	-- The Final Rite
				["provider"] = { "n", 244473 },	-- En'liahn
				["coord"] = { 62.9, 62.4, MAP.MIDNIGHT.HARANDAR },
				["groups"] = {
					--PH
				},
			}),]]--
			---14	(build 63854 - this quest chain lock out quest in other zone, could be fixed in future build or map bug)
			q(91377, {	-- Spawn of the Dead
				["sourceQuests"] = { 86864 },	-- Watch The Den
				["provider"] = { "n", 246777 },	-- Ghikal
				["coord"] = { 43.9, 71.7, MAP.MIDNIGHT.HARANDAR },
			}),
			q(91376, {	-- Little Monsters
				["sourceQuests"] = { 86864 },	-- Watch The Den
				["provider"] = { "n", 246777 },	-- Ghikal
				["coord"] = { 43.9, 71.7, MAP.MIDNIGHT.HARANDAR },
				["groups"] = {
					i(247243),	-- Strange Mycelium (QI!)
				},
			}),
			q(91379, {	-- Decayed Land
				["sourceQuests"] = {
					91376,	-- Little Monsters
					91377,	-- Spawn of the Dead
				},
				["provider"] = { "n", 246777 },	-- Ghikal
				["coord"] = { 44.1, 66.4, MAP.MIDNIGHT.HARANDAR },
			}),
			q(91378, {	-- You Are Legend
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
			--Leading to villages, could be breadcrumb but they are not?
			q(93745, {	-- Har'athir, Village of Memory
				["sourceQuests"] = { 86864 },	-- Watch The Den
				["provider"] = { "n", 256245 },	-- Orna
				["coord"] = { 54.2, 53.3, MAP.MIDNIGHT.HARANDAR },
			}),
			q(93775, {	-- Har'mara, Village of Balance
				["sourceQuests"] = { 86864 },	-- Watch The Den
				["provider"] = { "n", 256350 },	-- Ravi
				["coord"] = { 50.7, 55.7, MAP.MIDNIGHT.HARANDAR },
			}),
			q(93771, {	-- Har'kuai, Village of Rain
				["sourceQuests"] = { 86864 },	-- Watch The Den
				["provider"] = { "n", 256313 },	-- Kaleo
				["coord"] = { 51.0, 50.9, MAP.MIDNIGHT.HARANDAR },
			}),
		}),
	}),
}));
root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.MID, {
	m(MAP.MIDNIGHT.QUELTHALAS, {
		m(MAP.MIDNIGHT.HARANDAR, {
			n(QUESTS, {
				-- During questing
				--q(89196),	-- Zone Choice Made (spellID 1254861), same hqt as previously.
				q(92712),	-- after turn in questID 86929 (The Council Assembles), could be some phase swtiches or faction renown?
			}),
		}),
	}),
}));
