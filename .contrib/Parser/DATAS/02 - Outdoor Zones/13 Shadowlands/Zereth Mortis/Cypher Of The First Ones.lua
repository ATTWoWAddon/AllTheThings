---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
local CYPHER = 1979;
root(ROOTS.Zones, m(SHADOWLANDS, bubbleDown({ ["timeline"] = { ADDED_9_2_0 } }, {
	m(ZERETH_MORTIS, {
		header(HEADERS.Achievement, 15402, {	-- Cypher of the First Ones
			n(ACHIEVEMENTS, {
				ach(15542),	-- Apocopocolypse Now
				ach(15402, {	-- Cyphers of the First Ones
					recipe(365040),	-- Pale Regal Cervid
					crit(1, {	-- All Metrial Cyphers
						["_noautomation"] = true,
					}),
					crit(2, {	-- All Aelic Cyphers
						["_noautomation"] = true,
					}),
					crit(3, {	-- All Dealic Cyphers
						["_noautomation"] = true,
					}),
					crit(4, {	-- All Trebalim Cyphers
						["_noautomation"] = true,
					}),
				}),
				ach(15508, {	-- Fashion of the First Ones
					["sym"] = {{ "achievement_criteria" }},
					["groups"] = {
						i(190182, {	-- Lovely Regal Pocopoc
							["questID"] = 65600,
						}),
					},
				}),
				ach(15509, {	-- Tales of the Exile
					["sym"] = {{ "achievement_criteria" }},
				}),
			}),
			n(QUESTS, {
				q(64861, {	-- Kismetric Disc
					["sourceQuests"] = { 64230 },	-- Cyphers of the First Ones
					["provider"] = { "i", 187792 },	-- Kismetric Disc
					["g"] = {
						i(190062, {	-- Wicked Pocopoc
							["questID"] = 65530,
						}),
					},
				}),
				q(65674, {	-- What Is This Thing?
					["sourceQuests"] = { 64230 },	-- Cyphers of the First Ones
					["provider"] = { "i", 190579 },	-- Unformed Essence
				}),
				q(66579, {	-- Sounds of Healing
					["sourceQuests"] = { 65219 },	-- Jiro to Hero
					["provider"] = { "i", 192444 },	-- Resonating Disc
					["timeline"] = { ADDED_9_2_5 },
				}),
				-- Puzzle Quests
				q(65460, {	-- Your First Cantaric Protolock
					["description"] = "Requires Cachial.",
					["sourceQuests"] = { 64230 },	-- Cyphers of the First Ones
					["provider"] = { "n", 177958 },	-- Firim
					["coord"] = { 34.6, 48.1, ZERETH_MORTIS },
				}),
				q(65461, {	-- Your First Mezzonic Protolock
					["sourceQuests"] = { 65460 },	-- Your First Mezzonic Protolock
					["provider"] = { "n", 177958 },	-- Firim
					["coord"] = { 34.6, 48.1, ZERETH_MORTIS },
				}),
				q(65466, {	-- Your First Fugueal Protolock
					["sourceQuests"] = { 65461 },	-- Your First Mezzonic Protolock
					["provider"] = { "n", 177958 },	-- Firim
					["coord"] = { 34.6, 48.1, ZERETH_MORTIS },
				}),
				-- Cypher Research
				q(65431, {	-- Further Research: Aealic
					["sourceQuests"] = { 64230 },	-- Cyphers of the First Ones
					["provider"] = { "n", 181397 },	-- Cypher Console
					["coord"] = { 33.8, 49.4, ZERETH_MORTIS },
				}),
				q(65432, {	-- Further Research: Dealic
					["sourceQuests"] = { 65431 },	-- Further Research: Aealic
					["provider"] = { "n", 181397 },	-- Cypher Console
					["coord"] = { 33.8, 49.4, ZERETH_MORTIS },
				}),
				q(65433, {	-- Further Research: Trebalim
					["sourceQuests"] = { 65432 },	-- Further Research: Dealic
					["provider"] = { "n", 181397 },	-- Cypher Console
					["coord"] = { 33.8, 49.4, ZERETH_MORTIS },
				}),
				q(65700, {	-- Core Control
					["description"] = "Requires Dealic Understanding.",
					["sourceQuests"] = { 64230 },	-- Cyphers of the First Ones
					["provider"] = { "n", 177958 },	-- Firim
					["coord"] = { 34.2, 48.7, ZERETH_MORTIS },
				}),
				-- Hanoa Questline (Terrace of Formation)
				q(64772, {	-- Broken Circle
					["description"] = "Requires Altonian Understanding.",
					["sourceQuests"] = { 65431 },	-- Further Research: Aealic
					["provider"] = { "n", 181091 },	-- Hanoa the Exile
					["coord"] = { 40.1, 42.1, ZERETH_MORTIS },
				}),
				q(64773, {	-- A Jiro Guide to Not Being Eaten
					["sourceQuests"] = { 64772 },	-- Broken Circle
					["provider"] = { "n", 181098 },	-- Olea Pau
					["coord"] = { 38, 39.8, ZERETH_MORTIS },
				}),
				q(64713, {	-- Picking Up the Pieces... Literally
					["sourceQuests"] = { 64772 },	-- Broken Circle
					["provider"] = { "n", 180919 },	-- Olea Novi
					["coord"] = { 36.7, 37.7, ZERETH_MORTIS },
					["g"] = {
						i(187615),	-- Orb Fragment (QI!)
					},
				}),
				q(65370, {	-- Gut Check
					["sourceQuests"] = { 64772 },	-- Broken Circle
					["provider"] = { "n", 181102 },	-- Olea Manu
					["coord"] = { 38.2, 35.3, ZERETH_MORTIS },
					["g"] = {
						i(189450),	-- Crescendal (QI!)
					},
				}),
				q(64775, {	-- Mawdified Behavior
					["sourceQuests"] = {
						64773,	-- A Jiro Guide to Not Being Eaten
						64713,	-- Picking Up the Pieces... Literally
						65370,	-- Gut Check
					},
					["provider"] = { "n", 180984 },	-- Hanoa the Exile
					["coord"] = { 39.5, 31.9, ZERETH_MORTIS },
					["g"] = {
						i(189493),	-- Black Steel Fragment (QI!)
					},
				}),
				q(64739, {	-- Zovaal's Grasp
					["sourceQuests"] = { 64775 },	-- Mawdified Behavior
					["provider"] = { "n", 184469 },	-- Hanoa the Exile
					["coord"] = { 39.4, 32.2, ZERETH_MORTIS },
				}),
				q(64778, {	-- Rift Recon
					["sourceQuests"] = { 64739 },	-- Zovaal's Grasp
					["provider"] = { "n", 18170 },	-- Olea Manu
					["coord"] = { 42.7, 31.6, ZERETH_MORTIS },
				}),
				q(64780, {	-- Mawsteel, Maw Problems
					["sourceQuests"] = { 64739 },	-- Zovaal's Grasp
					["provider"] = { "n", 181177 },	-- Olea Novi
					["coord"] = { 42.6, 31.6, ZERETH_MORTIS },
				}),
				q(64779, {	-- Pound of Flesh
					["sourceQuests"] = { 64739 },	-- Zovaal's Grasp
					["provider"] = { "n", 181174 },	-- Olea Pau
					["coord"] = { 42.3, 31.5, ZERETH_MORTIS },
					["g"] = {
						i(187950),	-- Warped Flesh (QI!)
					},
				}),
				q(65219, {	-- Jiro to Hero
					["sourceQuests"] = {
						64778,	-- Rift Recon
						64780,	-- Mawsteel, Maw Problems
						64779,	-- Pound of Flesh
					},
					["provider"] = { "n", 180989 },	-- Hanoa the Exile
					["coord"] = { 42.7, 31.4, ZERETH_MORTIS },
				}),
				-- Glimmercane Questline
				q(64641, {	-- Mysterious Greenery
					["description"] = "Requires Sorpranian Understanding.",
					["sourceQuests"] = { 65432 },	-- Further Research: Dealic
					["provider"] = { "n", 180799 },	-- Glimmercane
					["coord"] = { 55.3, 64.4, ZERETH_MORTIS },
				}),
				q(64642, {	-- Clearing the Ruins
					["sourceQuests"] = { 64641 },	-- Mysterious Greenery
					["provider"] = { "n", 179900 },	-- Koh Shira
					["coord"] = { 60.5, 70, ZERETH_MORTIS },
				}),
				q(64643, {	-- Scavenging A Solution
					["sourceQuests"] = { 64641 },	-- Mysterious Greenery
					["provider"] = { "n", 179923 },	-- Koh Riva
					["coord"] = { 60.5, 70.1, ZERETH_MORTIS },
					["g"] = {
						i(187131),	-- Automa Internals (QI!)
					},
				}),
				q(64644, {	-- A Splash of the Eternal
					["sourceQuests"] = {
						64642,	-- Clearing the Ruins
						64643,	-- Scavenging A Solution
					},
					["provider"] = { "n", 180702 },	-- Glimmercane
					["coord"] = { 60.7, 69.8, ZERETH_MORTIS },
					["g"] = {
						i(187925),	-- Eternal Water (QI!)
					},
				}),
				q(64645, {	-- Moment of Truth
					["sourceQuests"] = { 64644 },	-- A Splash of the Eternal
					["provider"] = { "n", 179900 },	-- Koh Shira
					["coord"] = { 60.5, 70.1, ZERETH_MORTIS },
				}),
				q(64646, {	-- Ramping Up
					["sourceQuests"] = { 64645 },	-- Moment of Truth
					["provider"] = { "n", 180797 },	-- Koh Shira
					["coord"] = { 63.2, 73.1, ZERETH_MORTIS },
				}),
				q(64647, {	-- Strange Gears
					["sourceQuests"] = { 64645 },	-- Moment of Truth
					["provider"] = { "o", 375021 },	-- Perished Automa
					["coord"] = { 29.3, 15.3, 2027 },
					["g"] = {
						i(187619),	-- Winding Seed (QI!)
						i(187620),	-- Winding Seed (QI!)
					},
				}),
				q(64648, {	-- Reap What We Have Sown
					["sourceQuests"] = {
						64646,	-- Ramping Up
						64647,	-- Strange Gears
					},
					["provider"] = { "n", 180800 },	-- Koh Shira
					["coord"] = { 39.3, 55.5, 2027 },
					["g"] = {
						i(190985),	-- Crystallic Cryptic Mask
						i(190991),	-- Crystallic Enigmatic Epaulets
						i(190997),	-- Crystallic Numerus Crown
						i(190979),	-- Crystallic Oracular Smock
						i(190984),	-- Nova Cryptic Mask
						i(190990),	-- Nova Enigmatic Epaulets
						i(190996),	-- Nova Numerus Crown
						i(190978),	-- Nova Oracular Smock
						i(190983),	-- Scouring Cryptic Mask
						i(190989),	-- Scouring Enigmatic Epaulets
						i(190995),	-- Scouring Numerus Crown
						i(190977),	-- Scouring Oracular Smock
					},
				}),
			}),
			n(TREASURES, {
				-- Concordances
				o(373583, {	-- Tranquil Concordance
					["description"] = "Requires Aealic Understanding.",
					["coord"] = { 38.9, 48.5, ZERETH_MORTIS },
					["questID"] = 65212,
				}),
				o(373553, {	-- Tranquil Concordance
					["description"] = "Requires Aealic Understanding.",
					["coord"] = { 32.2, 62.9, ZERETH_MORTIS },
					["questID"] = 64940,
				}),
				o(373580, {	-- Tranquil Concordance
					["description"] = "Requires Aealic Understanding.",
					["coord"] = { 49.3, 71.6, ZERETH_MORTIS },
					["questID"] = 65209,
				}),
				o(373586, {	-- Tranquil Concordance
					["description"] = "Requires Aealic Understanding.",
					["coord"] = { 60.2, 47.1, ZERETH_MORTIS },
					["questID"] = 65215,
				}),
				o(373587, {	-- Excitable Concordance
					["description"] = "Requires Dealic Understanding.",
					["coord"] = { 50.4, 51, ZERETH_MORTIS },
					["questID"] = 65216,
				}),
				o(373584, {	-- Excitable Concordance
					["description"] = "Requires Dealic Understanding.",
					["coord"] = { 39, 31.3, ZERETH_MORTIS },
					["questID"] = 65213,
				}),
				o(373562, {	-- Excitable Concordance
					["description"] = "Requires Dealic Understanding.",
					["coord"] = { 31.7, 54.6, ZERETH_MORTIS },
					["questID"] = 65179,
				}),
				o(373581, {	-- Excitable Concordance
					["description"] = "Requires Dealic Understanding.",
					["coord"] = { 64.6, 60.4, ZERETH_MORTIS },
					["questID"] = 65210,
				}),
				o(373585, {	-- Mercurial Concordance
					["description"] = "Requires Trebalim Understanding.",
					["coord"] = { 39.8, 25.7, ZERETH_MORTIS },
					["questID"] = 65214,
				}),
				o(373588, {	-- Mercurial Concordance
					["description"] = "Requires Trebalim Understanding.",
					["coord"] = { 64.3, 24.0, ZERETH_MORTIS },
					["questID"] = 65217,
				}),
				o(373582, {	-- Mercurial Concordance
					["description"] = "Requires Trebalim Understanding.",
					["coord"] = { 51.6, 91.3, ZERETH_MORTIS },
					["questID"] = 65211,
				}),
				o(373563, {	-- Mercurial Concordance
					["description"] = "Requires Trebalim Understanding.",
					["coord"] = { 35.0, 71.5, ZERETH_MORTIS },
					["questID"] = 65180,
				}),
				-- Firim
				o(375973, {	-- Firim in Exile, Part 1
					["coord"] = { 35.7, 55.4, ZERETH_MORTIS },
					["questID"] = 65739,
					["g"] = {
						i(189575),	-- Firim in Exile, Part 1
					},
				}),
				o(375982, {	-- Firim in Exile, Part 2
					["coord"] = { 41.8, 62.4, ZERETH_MORTIS },
					["questID"] = 65741,
					["g"] = {
						i(189576),	-- Firim in Exile, Part 2
					},
				}),
				o(375983, {	-- Firim in Exile, Part 3
					["coord"] = { 37.5, 46.1, ZERETH_MORTIS },
					["questID"] = 65742,
					["g"] = {
						i(189578),	-- Firim in Exile, Part 3
					},
				}),
				o(375984, {	-- Firim in Exile, Part 4
					["coord"] = { 49.9, 76.6, ZERETH_MORTIS },
					["questID"] = 65743,
					["g"] = {
						i(189579),	-- Firim in Exile, Part 4
					},
				}),
				o(375985, {	-- Firim in Exile, Part 5
					["coord"] = { 39, 31.1, ZERETH_MORTIS },
					["questID"] = 65744,
					["g"] = {
						i(189580),	-- Firim in Exile, Part 5
					},
				}),
				o(375986, {	-- Firim in Exile, Part 6
					["coord"] = { 67.4, 25.2, ZERETH_MORTIS },
					["questID"] = 65745,
					["g"] = {
						i(189581),	-- Firim in Exile, Part 6
					},
				}),
				o(375987, {	-- Firim in Exile, Part 7
					["coord"] = { 64.8, 33.6, ZERETH_MORTIS },
					["questID"] = 65746,
					["g"] = {
						i(189582),	-- Firim in Exile, Part 7
					},
				}),
				o(375988, {	-- Firim in Exile, Epilogue
					["coord"] = { 34.3, 48.8, ZERETH_MORTIS },
					["questID"] = 65747,
					["g"] = {
						i(189753),	-- Firim in Exile, Epilogue
					},
				}),
			}),
			n(TREASURES, sharedData({ ["isDaily"] = true }, {	-- Puzzle Chests
				o(375062, {	-- Cantaric Cache
					["coords"] = {
						{ 48.7, 87.5, ZERETH_MORTIS },
						{ 55, 48.0, ZERETH_MORTIS },
						{ 56, 79.6, ZERETH_MORTIS },
					},
					["questID"] = 65318,
				}),
				o(373474, {	-- Cantaric Cache
					["coords"] = {
						{ 38.5, 63.2, ZERETH_MORTIS },
						{ 53, 45.6, ZERETH_MORTIS },
						{ 43.7, 21.5, ZERETH_MORTIS },
					},
					["questID"] = 65094,
				}),
				o(375069, {	-- Cantaric Cache
					["coords"] = {
						{ 44.7, 76.1, ZERETH_MORTIS },
						{ 44.2, 90.1, ZERETH_MORTIS },
					},
					["questID"] = 65323,
				}),
				o(375068, {	-- Fugueal Cache
					["coords"] = {
						{ 38.5, 35.5, ZERETH_MORTIS },
						{ 42.3, 68.8, ZERETH_MORTIS },
						{ 39.2, 46.7, ZERETH_MORTIS },
					},
					["questID"] = 65322,
				}),
				o(375061, {	-- Fugueal Cache
					["coords"] = {
						{ 44.3, 30.9, ZERETH_MORTIS },
						{ 59.7, 22.8, ZERETH_MORTIS },
					},
					["questID"] = 65317,
				}),
				o(373473, {	-- Fugueal Cache
					["coords"] = {
						{ 57.5, 65.8, ZERETH_MORTIS },
						{ 63.1, 37.4, ZERETH_MORTIS },
						{ 47.1, 77.2, ZERETH_MORTIS },
						{ 46, 64.5, ZERETH_MORTIS },
					},
					["questID"] = 65093,
				}),
				o(375067, {	-- Glissandian Cache
					["coords"] = {
						{ 40, 72.9, ZERETH_MORTIS },
						{ 33.8, 54.3, ZERETH_MORTIS },
						{ 44.7, 50.5, ZERETH_MORTIS },
					},
					["questID"] = 65321,
				}),
				o(373472, {	-- Glissandian Cache
					["coords"] = {
						{ 58.9, 36.4, ZERETH_MORTIS },
						{ 41.8, 31.3, ZERETH_MORTIS },
					},
					["questID"] = 65092,
				}),
				o(375060, {	-- Glissandian Cache
					["coords"] = {
						{ 38.5, 35.5, ZERETH_MORTIS },
						{ 56, 84.1, ZERETH_MORTIS },
						{ 56.6, 61.4, ZERETH_MORTIS },
					},
					["questID"] = 65316,
				}),
				o(373471, {	-- Mezzonic Cache
					["coords"] = {
						{ 39.3, 60.4, ZERETH_MORTIS },
						{ 55.7, 50, ZERETH_MORTIS },
						{ 52.2, 72.1, ZERETH_MORTIS },
					},
					["questID"] = 65091,
				}),
				o(375066, {	-- Mezzonic Cache
					["coords"] = {
						{ 38.5, 35.5, ZERETH_MORTIS },
						{ 43.6, 40.3, ZERETH_MORTIS },
						{ 50, 30.5, ZERETH_MORTIS },
					},
					["questID"] = 65320,
				}),
				o(375059, {	-- Mezzonic Cache
					["coords"] = {
						{ 35.8, 59.1, ZERETH_MORTIS },
					},
					["questID"] = 65315,
				}),
				o(370494, {	-- Toccatian Cache
					["coords"] = {
						{ 46.8, 67, ZERETH_MORTIS },
						{ 37, 46.5, ZERETH_MORTIS },
						{ 34.6, 68.8, ZERETH_MORTIS },
					},
					["questID"] = 64972,
				}),
				o(375058, {	-- Toccatian Cache
					["coords"] = {
						{ 53.2, 86.9, ZERETH_MORTIS },
					},
					["questID"] = 65314,
				}),
				o(375064, {	-- Toccatian Cache
					["coords"] = {
						{ 67.8, 27.4, ZERETH_MORTIS },
						{ 65.6, 47.6, ZERETH_MORTIS },
						{ 64.3, 63.3, ZERETH_MORTIS },
					},
					["questID"] = 65319,
				}),
			})),
			n(VENDORS, {
				n(177958, {	-- Firim
					i(187908, {	-- Firim's Spare Forge-tap
						["description"] = "This item is only available after completing the Daily Quest: Materials of Creation (64717) or Hallow Efforts (64579).",
						["g"] = {
							i(187527),	-- Aeon Matrix
							i(187788, {	-- Aetheric Lattice
								["coord"] = { 53.0, 29.1, ZERETH_MORTIS },
							}),
							i(187891, {	-- Empyrean Essence
								["coords"] = {
									{ 44.8, 76.5, ZERETH_MORTIS },
									{ 46.3, 68.4, ZERETH_MORTIS },
								},
							}),
							i(187894, {	-- Energized Firmament
								["coord"] = { 53.1, 28.9, ZERETH_MORTIS },
							}),
							i(187885, {	-- Honeycombed Lattice
								["coord"] = { 64.3, 59.2, ZERETH_MORTIS },
							}),
							i(187892, {	-- Incorporeal Sand
								["coords"] = {
									{ 39.3, 34.6, ZERETH_MORTIS },
									{ 41.0, 38.8, ZERETH_MORTIS },
									{ 46.9, 65.0, ZERETH_MORTIS },
									{ 56.9, 52.1, ZERETH_MORTIS },
									{ 62.4, 57.6, ZERETH_MORTIS },
								},
							}),
							i(187879, {	-- Pollinated Extraction
								["coord"] = { 62.8, 68.2, ZERETH_MORTIS },
							}),
							i(190129, {	-- Serene Pigment
								["coord"] = { 34.56, 46.51, ZERETH_MORTIS },
							}),
							i(187889, {	-- Unstable Agitant
								["coords"] = {
									{ 44.7, 91.8, ZERETH_MORTIS },
									{ 45.3, 73.1, ZERETH_MORTIS },
									{ 45.9, 71.1, ZERETH_MORTIS },
									{ 51.0, 70.2, ZERETH_MORTIS },
									{ 56.1, 68.7, ZERETH_MORTIS },
								},
							}),
							i(187893, {	-- Volatile Precursor
								["coords"] = {
									{ 40.7, 57.1, ZERETH_MORTIS },
									{ 42.9, 49.8, ZERETH_MORTIS },
									{ 44.5, 50.0, ZERETH_MORTIS },
									{ 47.4, 61.1, ZERETH_MORTIS },
									{ 48.3, 59.5, ZERETH_MORTIS },
									{ 49.1, 57.5, ZERETH_MORTIS },
									{ 50.4, 64.1, ZERETH_MORTIS },
								},
							}),
							i(190128, {	-- Wayward Essence
								["description"] = "Very specific positioning. Face towards the center of the orb.",
								["coord"] = { 32.65, 40.76, ZERETH_MORTIS },
							}),
							i(187728, {	-- Ephemera Strand
								["g"] = {
									i(187787, {	-- Ephemera Orb
										i(187890),	-- Anima-charged Yolk
										i(187735),	-- Geordy (PET!)
										i(188231),	-- Provis Cache Key
										i(187866),	-- Accelerating Tendons
										i(187867),	-- Evolved Exo-mucus
										i(187865),	-- Spiked Protomesh
									}),
								},
							}),
							i(187792, {	-- Kismetric Disc
								["cost"] = {
									{ "i", 187791, 1 },		-- 1x Kismetric Circlet
									{ "i", 187790, 100 },	-- 100x Trace Enigmet
									{ "i", 187728, 10 },	-- 10x Ephemera Strand
									{ "i", 187789, 5 },		-- 5x Eidolic Particles
								},
							}),
							i(187789, {	-- Eidolic Particles
								["coords"] = {
									{ 44.4, 59.1, ZERETH_MORTIS },
									{ 44.8, 46.6, ZERETH_MORTIS },
									{ 45.0, 62.8, ZERETH_MORTIS },
									{ 50.2, 60.2, ZERETH_MORTIS },
									{ 50.5, 46.9, ZERETH_MORTIS },
								},
							}),
							i(187791),	-- Kismetric Circlet
							i(187790),	-- Trace Enigmet
						},
					}),
					i(187909, {	-- Unstable Containment Trap
						["description"] = "This item is only available after completing the Daily Quest: Overgrown Story (64785) or Trappings of Success(64854).",
					}),
				}),
				n(185748, {	-- Mai Toa
					["coord"] = { 58.6, 49.8, ZERETH_MORTIS },
					["g"] = {
						i(190880),	-- Catalyzed Apple Pie
					},
				}),
				n(183962, {	-- Olea Manu
					["description"] = "Only Available after Hanoas Questline",
					["sourceQuests"] = { 65219 },	-- Jiro to Hero
					["coord"] = { 37.2, 44.7, ZERETH_MORTIS },
					["g"] = {
						i(189986, {	-- Armadillo Soul (SOUL!)
							["cost"] = { { "c", CYPHER, 500 }, },
						}),
						i(187421, {	-- Ashen Liniment
							["cost"] = { { "c", CYPHER, 25 }, },
							["timeline"] = {  ADDED_9_2_7 },
						}),
						i(188793, {	-- Improvised Cypher Analysis Tool
							["questID"] = 65282,
							["cost"] = { { "c", CYPHER, 150 }, },
						}),
						i(189980, {	-- Brutosaur Soul (SOUL!)
							["cost"] = { { "c", CYPHER, 1000 }, },
						}),
						i(187824, {	-- Formula: Magically Regulated Automa Core (RECIPE!)
							["cost"] = { { "c", CYPHER, 25 }, },
						}),
						i(190333, {	-- Jiro Circle of Song (TOY!)
							["cost"] = { { "c", CYPHER, 100 }, },
						}),
						i(187781, {	-- Olea Cache
							["cost"] = { { "c", CYPHER, 700 }, },
							["g"] = {
								i(190946),	-- Emerald-Heart Protomaul
								i(190945),	-- Greatmaul of the Ancient Sentinels
								i(190947),	-- Halo-Stave of the Oracles
								i(190943),	-- Jiro Tuning Hammer
								i(190944),	-- Mace of Renewed Purpose
								i(190949),	-- Stave of the Eternal Cycle
							},
							["sym"] = {
								{"select", "itemID",
									188957,	-- Genesis Mote
									187634,	-- Ambystan Lattice
									187636,	-- Aurelid Lattice
									187633,	-- Bufonid Lattice
									187635,	-- Cervid Lattice
									189146,	-- Geomental Lattice
									189145,	-- Helicid Lattice
									189147,	-- Leporid Lattice
									190388,	-- Lupine Lattice
									189148,	-- Poultrid Lattice
									189149,	-- Proto Avian Lattice
									189150,	-- Raptora Lattice
									189151,	-- Scarabid Lattice
									189152,	-- Tarachnid Lattice
									189153,	-- Unformed Lattice
									189154,	-- Vespoid Lattice
									189155,	-- Viperid Lattice
									189156,	-- Vombata Lattice
									-- Pet Protoform
									189157,	-- Glimmer of Animation
									189158,	-- Glimmer of Cunning
									189159,	-- Glimmer of Discovery
									189160,	-- Glimmer of Focus
									189161,	-- Glimmer of Malice
									189162,	-- Glimmer of Metamorphosis
									189163,	-- Glimmer of Motion
									189164,	-- Glimmer of Multiplicity
									189165,	-- Glimmer of Predation
									189166,	-- Glimmer of Renewal
									189167,	-- Glimmer of Satisfaction
									189168,	-- Glimmer of Serenity
									189169,	-- Glimmer of Survival
									189170,	-- Glimmer of Vigilance
									-- Mount Protoform
									189171,	-- Bauble of Pure Innovation
									189172,	-- Crystallized Echo of the First Song
									189173,	-- Eternal Ragepearl
									189174,	-- Lens of Focused Intention
									189175,	-- Mawforged Bridle
									189176,	-- Protoform Sentience Crown
									189177,	-- Revelation Key
									189178,	-- Tools of Incomprehensible Experimentation
									189179,	-- Unalloyed Bronze Ingot
									189180,	-- Wind's Infinite Call
								},
							},
						}),
						i(191039, {	-- Pocopoc Traveler (PET!)
							["cost"] = { { "c", CYPHER, 500 }, },
						}),
						i(190739, {	-- Provis Wax
							["cost"] = { { "c", CYPHER, 25 }, },
							["timeline"] = { ADDED_9_2_7 },
						}),
						i(187804, {	-- Recipe: Empty Kettle of Stone Soup (RECIPE!)
							["cost"] = { { "c", CYPHER, 25 }, },
						}),
					},
				}),
			}),
		}),
	}),
})));

root(ROOTS.HiddenQuestTriggers, m(SHADOWLANDS, bubbleDown({ ["timeline"] = { ADDED_9_2_0 } }, {
	m(ZERETH_MORTIS, {
		header(HEADERS.Achievement, 15402, {	-- Cypher of the First Ones
			q(65027),	-- eligible for Firim's Spare Forge-tap
			q(65028),	-- eligible for Unstable Containment Trap
			q(65017, {["repeatable"]=true}),	-- Looting 187891, {	-- Empyrean Essence
			q(65015, {["repeatable"]=true}),	-- Looting 187894, {	-- Energized Firmament
			q(65622, {["repeatable"]=true}),	-- Looting 187885, {	-- Honeycombed Lattice
			q(65014, {["repeatable"]=true}),	-- Looting 187892, {	-- Incorporeal Sand
			q(65005, {["repeatable"]=true}),	-- Looting 187879, {	-- Pollinated Extraction
			q(65560, {["repeatable"]=true}),	-- Looting 190129, {	-- Serene Pigment
			q(65018, {["repeatable"]=true}),	-- Looting 187889, {	-- Unstable Agitant
			q(65016, {["repeatable"]=true}),	-- Looting 187893, {	-- Volatile Precursor
			q(65559, {["repeatable"]=true}),	-- Looting 190128, {	-- Wayward Essence
			q(65019, {["repeatable"]=true}),	-- Looting 187890, {	-- Anima-charged Yolk
			-- Pocopoc Costumes Applied
			q(66059),	-- Chef's Hat
			q(66060),	-- Crown of Flowers
			q(66061),	-- Pirate Hat
			q(66062),	-- Safari Hat
			q(66063),	-- Dapper
			q(66064),	-- Tricorne Hat
			q(66065),	-- Witch Hat
			q(66066),	-- Candle
			q(66067),	-- Pepe
			q(66068),	-- Princess Hat
			q(66069),	-- No Costume
		}),
	}),
})))