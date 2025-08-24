---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, {
	m(OUTLAND, applyclassicphase(TBC_PHASE_ONE, {
		m(NETHERSTORM, bubbleDownSelf({ ["timeline"] = { ADDED_2_0_1 } }, {
			["lore"] = "Netherstorm is the northern-most zone in Outland. It is covered in magical currents, giving it an unnatural sci-fi look--except in the protected Eco-Domes, which are lush green. Goblins and Ethereals have made outposts here, as well as the Burning Legion and Kael'thas' blood elves, with numerous Mana Forges across the region. This region has numerous quests that grant Aldor or Scryer reputation.",
			["icon"] = 236811,
			["groups"] = {
				n(ACHIEVEMENTS, {
					ach(843),	-- Explore Netherstorm
					ach(1194, {	-- Into the Nether
						-- #if AFTER 7.3.5
						["_doautomation"] = true,
						-- #else
						["sourceQuests"] = {
							-- Socrethar
							10409,	-- Deathblow to the Legion (Aldor)
							10507,	-- Turning Point (Scryers)

							-- The Violet Tower
							10240,	-- Building a Perimeter

							-- Building the X-52 Nether-Rocket
							10221,	-- Dr. Boom!

							-- Protect Area 52!
							10249,	-- Back to the Chief!

							-- The Consortium
							10276,	-- Full Triangle
							10408,	-- Nexus-King Salhadaar
							10440,	-- Success!
							10274,	-- Securing the Celestial Ridge

							-- Destroying the All-Devouring
							10439,	-- Dimensius the All-Devouring
						},
						-- #endif
					}),
				}),
				battlepets({
					pet(521, {	-- Fledgling Nether Ray (PET!)
						["description"] = "Found only around Manaforges.",
					}),
					pet(638),	-- Nether Roach (PET!)
				}),
				explorationHeader({
					exploration(3712),	-- Area 52
					visit_exploration(3723,{coord={43.3,71.2,NETHERSTORM}}),	-- Arklon Ruins
					visit_exploration(3921,{coord={38.9,69.0,NETHERSTORM}}),	-- Arklonis Ridge
					exploration(3737),	-- Celestial Ridge
					visit_exploration(3879,{coord={62.1,79.9,NETHERSTORM}}),	-- Chapel Yard
					exploration(3724),	-- Cosmowrench
					exploration(3874),	-- Eco-Dome Farfield
					exploration(3877),	-- Eco-Dome Midrealm
					exploration(3875),	-- Eco-Dome Skyperch
					exploration(3876),	-- Eco-Dome Sutheron
					visit_exploration(3878,{coord={54.4,40.0,NETHERSTORM}}),	-- Ethereum Staging Grounds
					exploration(3740),	-- Forge Base: Gehenna
					exploration(3739),	-- Forge Base: Oblivion
					exploration(3868),	-- Gyro-Plank Bridge
					visit_exploration(3882,{coord={50.1,65.6,NETHERSTORM}}),	-- Invasion Point: Destroyer
					exploration(3732),	-- Kirin'Var Village
					exploration(3722),	-- Manaforge Ara
					exploration(3726),	-- Manaforge B'naar
					exploration(3730),	-- Manaforge Coruu
					exploration(3734),	-- Manaforge Duro
					exploration(3736),	-- Manaforge Ultris
					-- #if AFTER CATA
					exploration(3850),	-- Netherstone (Wrath Classic: Can't be collected)
					-- #endif
					visit_exploration(3854,{coord={59.8,31.9,NETHERSTORM}}),	-- Protectorate Watch Post
					exploration(3725),	-- Ruins of Enkaat
					exploration(3741),	-- Ruins of Farahlon
					exploration(3742),	-- Socrethar's Seat
					visit_exploration(3837,{coord={56.7,80.8,NETHERSTORM}}),	-- Sunfury Hold
					exploration(3842),	-- Tempest Keep
					visit_exploration(3721,{coord={37.2,50.3,NETHERSTORM}}),	-- The Crumbling Waste
					visit_exploration(3729,{coord={28.8,77.8,NETHERSTORM}}),	-- The Heap
					visit_exploration(3873,{coord={37.4,63.6,NETHERSTORM}}),	-- The Proving Grounds
					exploration(3727),	-- The Scrap Field
					exploration(3738),	-- The Stormspire
					exploration(3731),	-- The Tempest Rift
					visit_exploration(3728,{coord={56.0,64.1,NETHERSTORM}}),	-- The Vortex Fields
					visit_exploration(3934,{coord={60.7,88.2,NETHERSTORM}}),	-- Town Square
					visit_exploration(3881,{coord={26.4,44.0,NETHERSTORM}}),	-- Trelleum Mine
					visit_exploration(3735,{coord={57.4,47.7,NETHERSTORM}}),	-- Voidwind Plateau
					exploration(3935),	-- Wizard Row
				}),
				n(FLIGHT_PATHS, {
					fp(122, {	-- Area 52, Netherstorm
						["cr"] = 18938,	-- Krexcil <Flight Master>
						["coord"] = { 33.8, 64.0, NETHERSTORM },
					}),
					fp(150, {	-- Cosmowrench, Netherstorm
						["cr"] = 20515,	-- Harpax <Flight Master>
						["coord"] = { 65.2, 66.6, NETHERSTORM },
					}),
					fp(139, {	-- The Stormspire, Netherstorm
						["cr"] = 19583,	-- Grennik <Flight Master>
						["coord"] = { 45.2, 34.8, NETHERSTORM },
					}),
				}),
				n(QUESTS, {
					q(10197, {	-- A Convincing Disguise
						["sourceQuest"] = 10652,	-- Behind Enemy Lines
						["qg"] = 19840,	-- Caledis Brightdawn
						["coord"] = { 48.2, 86.6, NETHERSTORM },
						["minReputation"] = { FACTION_THE_SCRYERS, NEUTRAL },	-- The Scryers, Neutral.
						["groups"] = {
							objective(1, {	-- 0/1 Sunfury Researcher Gloves
								["provider"] = { "i", 28636 },	-- Sunfury Researcher Gloves
								["cr"] = 20136,	-- Sunfury Researcher
							}),
							objective(2, {	-- 0/1 Sunfury Guardsman Medallion
								["provider"] = { "i", 28637 },	-- Sunfury Guardsman Medallion
								["cr"] = 18850,	-- Sunfury Guardsman
							}),
							objective(3, {	-- 0/1 Sunfury Arcanist Robes
								["provider"] = { "i", 28635 },	-- Sunfury Arcanist Robes
								["cr"] = 20134,	-- Sunfury Arcanist
							}),
						},
					}),
					q(10202, {	-- A Defector
						["sourceQuest"] = 10341,	-- Kick Them While They're Down
						["qg"] = 19469,	-- Magistrix Larynna
						["coord"] = { 32.1, 64.0, NETHERSTORM },
						["minReputation"] = { FACTION_THE_SCRYERS, NEUTRAL },	-- The Scryers, Neutral.
					}),
					q(10508, {	-- A Gift for Voren'thal
						["sourceQuest"] = 10432,	-- Damning Evidence
						["qg"] = 19468,	-- Spymaster Thalodien
						["coord"] = { 32.0, 64.1, NETHERSTORM },
						["minReputation"] = { FACTION_THE_SCRYERS, NEUTRAL },	-- The Scryers, Neutral.
						-- May also require Shutting Down Manaforge Ara.
						["groups"] = {
							objective(1, {	-- 0/1 First Half of Socrethar's Stone
								["provider"] = { "i", 29624 },	-- First Half of Socrethar's Stone
								["cr"] = 20800,	-- Forgemaster Morug
							}),
							objective(2, {	-- 0/1 Second Half of Socrethar's Stone
								["provider"] = { "i", 29625 },	-- Second Half of Socrethar's Stone
								["cr"] = 20801,	-- Silroth
							}),
						},
					}),
					q(11038, {	-- Assist Exarch Orelis
						["sourceQuest"] = 10551,	-- Allegiance to the Aldor
						["qgs"] = {
							23271,	-- Vindicator Kaan
							23270,	-- Vindicator Aeus
						},
						["coords"] = {
							{ 35.0, 32.6, SHATTRATH_CITY },
							{ 47.4, 26.4, SHATTRATH_CITY },
						},
						["minReputation"] = { FACTION_THE_ALDOR, NEUTRAL },	-- The Aldor, Neutral.
						["isBreadcrumb"] = true,	-- for "Distraction at Manaforge B'naar," unavailable if you did any Netherstorm breadcrumb quest
					}),
					q(10264, {	-- Assisting the Consortium (The Scryers)
						["sourceQuest"] = 10186,	-- You're Hired!
						["qg"] = 19468,	-- Spymaster Thalodien
						["coord"] = { 32.0, 64.1, NETHERSTORM },
						["minReputation"] = { FACTION_THE_SCRYERS, NEUTRAL },	-- The Scryers, Neutral.
						["isBreadcrumb"] = true,
					}),
					q(10652, {	-- Behind Enemy Lines
						["sourceQuest"] = 10194,	-- Stealth Flight
						["qg"] = 20162,	-- Veronia
						["coord"] = { 33.8, 64.2, NETHERSTORM },
						["minReputation"] = { FACTION_THE_SCRYERS, NEUTRAL },	-- The Scryers, Neutral.
					}),
					q(10204, {	-- Bloodgem Crystals
						["sourceQuest"] = 10189,	-- Manaforge B'naar
						["qg"] = 19469,	-- Magistrix Larynna
						["coord"] = { 32.1, 64.0, NETHERSTORM },
						["minReputation"] = { FACTION_THE_SCRYERS, NEUTRAL },	-- The Scryers, Neutral.
					}),
					q(10509, {	-- Bound for Glory
						["sourceQuest"] = 10508,	-- A Gift for Voren'thal
						["qg"] = 19468,	-- Spymaster Thalodien
						["coord"] = { 32.0, 64.1, NETHERSTORM },
						["minReputation"] = { FACTION_THE_SCRYERS, NEUTRAL },	-- The Scryers, Neutral.
					}),
					q(10432, {	-- Damning Evidence
						["sourceQuest"] = 10202,	-- A Defector
						["qg"] = 20920,	-- Magister Theledorn
						["coord"] = { 26.2, 41.6, NETHERSTORM },
						["minReputation"] = { FACTION_THE_SCRYERS, NEUTRAL },	-- The Scryers, Neutral.
						["groups"] = {
							objective(1, {	-- 0/8 Orders From Kael'thas
								["provider"] = { "i", 29797 },	-- Orders From Kael'thas
								["crs"] = {
									18860,	-- Daughter of Destiny
									20285,	-- Gan'arg Warp-Tinker
									20326,	-- Mo'arg Warp-Master
								},
							}),
						},
					}),
					q(10193, {	-- High Value Targets
						["sourceQuest"] = 10189,	-- Manaforge B'naar
						["qg"] = 19468,	-- Spymaster Thalodien
						["coord"] = { 32.0, 64.1, NETHERSTORM },
						["minReputation"] = { FACTION_THE_SCRYERS, NEUTRAL },	-- The Scryers, Neutral.
						["groups"] = {
							objective(1, {	-- 0/2 Sunfury Warp-Master slain
								["provider"] = { "n", 18857 },	-- Sunfury Warp-Master
							}),
							objective(2, {	-- 0/6 Sunfury Warp-Engineer slain
								["provider"] = { "n", 18852 },	-- Sunfury Warp-Engineer
							}),
							objective(3, {	-- 0/8 Sunfury Geologist slain
								["provider"] = { "n", 19779 },	-- Sunfury Geologist
							}),
						},
					}),
					q(10198, {	-- Information Gathering
						["sourceQuest"] = 10197,	-- A Convincing Disguise
						["qg"] = 19840,	-- Caledis Brightdawn
						["coord"] = { 48.2, 86.6, NETHERSTORM },
						["minReputation"] = { FACTION_THE_SCRYERS, NEUTRAL },	-- The Scryers, Neutral.
						["groups"] = {
							i(30383),	-- Belt of the Sage
							i(30386),	-- Bloodguard's Greaves
							i(30384),	-- Brightdawn Bracers
							i(30397),	-- Spymaster's Crossbow
						},
					}),
					q(10341, {	-- Kick Them While They're Down
						["sourceQuest"] = 10330,	-- Shutting Down Manaforge Coruu
						["qg"] = 19469,	-- Magistrix Larynna
						["coord"] = { 32.1, 64.0, NETHERSTORM },
						["minReputation"] = { FACTION_THE_SCRYERS, NEUTRAL },	-- The Scryers, Neutral.
						["groups"] = {
							objective(1, {	-- 0/8 Sunfury Conjurer slain
								["provider"] = { "n", 20139 },	-- Sunfury Conjurer
							}),
							objective(2, {	-- 0/6 Sunfury Bowman slain
								["provider"] = { "n", 20207 },	-- Sunfury Bowman
							}),
							objective(3, {	-- 0/4 Sunfury Centurion slain
								["provider"] = { "n", 20140 },	-- Sunfury Centurion
							}),
							i(30522),	-- Conjurer's Staff
							i(30396),	-- Jeweled Halberd
							i(30394),	-- Sunfury Blade
							i(30395),	-- Warp-Master's Maul
						},
					}),
					q(10189, {	-- Manaforge B'naar
						["sourceQuests"] = {
							10552,	-- Allegiance to the Scryers
							11039,	-- Report to Spymaster Thalodien
						},
						["qg"] = 19468,	-- Spymaster Thalodien
						["coord"] = { 32.0, 64.1, NETHERSTORM },
						["minReputation"] = { FACTION_THE_SCRYERS, NEUTRAL },	-- The Scryers, Neutral.
						["groups"] = {
							objective(1, {	-- 0/1 B'naar Personnel Roster
								["provider"] = { "i", 28376 },	-- B'naar Personnel Roster
								["cr"] = 19635,	-- Captain Arathyn
							}),
						},
					}),
					q(11039, {	-- Report to Spymaster Thalodien
						["sourceQuest"] = 10552,	-- Allegiance to the Scryers
						["qgs"] = {
							23273,	-- Arcanist Raestan
							23272,	-- Arcanist Savan
						},
						["coords"] = {
							{ 44.6, 76.2, SHATTRATH_CITY },
							{ 60.6, 63.2, SHATTRATH_CITY },
						},
						["minReputation"] = { FACTION_THE_SCRYERS, NEUTRAL },	-- The Scryers, Neutral.
						["isBreadcrumb"] = true,	-- for Manaforge B'naar
					}),
					q(10200, {	-- Return to Thalodien
						["sourceQuest"] = 10330,	-- Shutting Down Manaforge Coruu
						["qg"] = 19840,	-- Caledis Brightdawn
						["coord"] = { 48.2, 86.6, NETHERSTORM },
						["minReputation"] = { FACTION_THE_SCRYERS, NEUTRAL },	-- The Scryers, Neutral.
					}),
					q(10329, {	-- Shutting Down Manaforge B'naar
						["sourceQuest"] = 10193,	-- High Value Targets
						["qg"] = 19468,	-- Spymaster Thalodien
						["coord"] = { 32.0, 64.1, NETHERSTORM },
						["minReputation"] = { FACTION_THE_SCRYERS, NEUTRAL },	-- The Scryers, Neutral.
						["groups"] = {
							objective(1, {	-- 0/1 Manaforge B'naar Shut Down
								["provider"] = { "n", 20209 },	-- B'naar Control Console
							}),
							objective(2, {	-- 0/1 B'naar Access Crystal
								["provider"] = { "i", 29366 },	-- B'naar Access Crystal
								["cr"] = 20416,	-- Overseer Theredis
							}),
						},
					}),
					q(10330, {	-- Shutting Down Manaforge Coruu
						["sourceQuest"] = 10198,	-- Information Gathering
						["qg"] = 19840,	-- Caledis Brightdawn
						["coord"] = { 48.2, 86.6, NETHERSTORM },
						["minReputation"] = { FACTION_THE_SCRYERS, NEUTRAL },	-- The Scryers, Neutral.
						["groups"] = {
							objective(1, {	-- 0/1 Manaforge Coruu Shut Down
								["provider"] = { "n", 20417 },	-- Coruu Control Console
							}),
							objective(2, {	-- 0/1 Coruu Access Crystal
								["provider"] = { "i", 29396 },	-- Coruu Access Crystal
								["cr"] = 20397,	-- Overseer Seylanna
							}),
						},
					}),
					q(10338, {	-- Shutting Down Manaforge Duro
						["sourceQuest"] = 10200,	-- Return to Thalodien
						["qg"] = 19468,	-- Spymaster Thalodien
						["coord"] = { 32.0, 64.1, NETHERSTORM },
						["minReputation"] = { FACTION_THE_SCRYERS, NEUTRAL },	-- The Scryers, Neutral.
						["groups"] = {
							objective(1, {	-- 0/1 Manaforge Duro Shut Down
								["provider"] = { "n", 20418 },	-- Duro Control Console
							}),
							objective(2, {	-- 0/1 Duro Access Crystal
								["provider"] = { "i", 29397 },	-- Duro Access Crystal
								["cr"] = 20435,	-- Overseer Athanel
							}),
						},
					}),
					q(10194, {	-- Stealth Flight
						["sourceQuest"] = 10329,	-- Shutting Down Manaforge B'naar
						["qg"] = 19468,	-- Spymaster Thalodien
						["coord"] = { 32.0, 64.1, NETHERSTORM },
						["minReputation"] = { FACTION_THE_SCRYERS, NEUTRAL },	-- The Scryers, Neutral.
					}),
					q(10365, {	-- Shutting Down Manaforge Ara
						["sourceQuest"] = 10338,	-- Shutting Down Manaforge Duro
						["qg"] = 19468,	-- Spymaster Thalodien
						["coord"] = { 32.0, 64.0, NETHERSTORM },
						["minReputation"] = { FACTION_THE_SCRYERS, NEUTRAL },	-- The Scryers, Neutral.
						["groups"] = {
							objective(1, {	-- 0/1 Manaforge Ara Shut Down
								["provider"] = { "n", 20440 },	-- Ara Control Console
							}),
							objective(2, {	-- 0/1 Ara Access Crystal
								["provider"] = { "i", 29411 },	-- Ara Access Crystal
								["cr"] = 20685,	-- Overseer Azarad
							}),
							i(30366),	-- Manastorm Band
							i(30378),	-- Thalodien's Charm
						},
					}),
					q(10507, {	-- Turning Point
						["sourceQuest"] = 10509,	-- Bound for Glory
						["qg"] = 18530,	-- Voren'thal the Seer
						["coord"] = { 42.6, 91.4, SHATTRATH_CITY },
						["minReputation"] = { FACTION_THE_SCRYERS, NEUTRAL },	-- The Scryers, Neutral.
						["groups"] = {
							objective(1, {	-- 0/1 Socrethar slain
								["provider"] = { "n", 20132 },	-- Socrethar
							}),
							objective(2, {	-- 0/1 Voren'thal's Presence
								["providers"] = {
									{ "i", 30259 },	-- Voren'thal's Presence
									{ "i", 30260 },	-- Voren'thal's Package
								},
							}),
							objective(3, {	-- 0/1 Socrethar's Teleportation Stone
								["providers"] = {
									{ "i", 29796 },	-- Socrethar's Teleportation Stone
									{ "i", 30260 },	-- Voren'thal's Package
								},
							}),
							i(30375),	-- Gauntlets of the Vanquisher
							i(30374),	-- Greaves of Spellpower
							i(30373),	-- Netherfused Pauldrons
							i(30372),	-- Socrethar's Girdle
							i(30859),	-- Wand of the Seer
						},
					}),
					q(10970, {	-- A Mission of Mercy
						["sourceQuest"] = 10969,	-- Seek Out Ameer
						["qg"] = 20448,	-- Commander Ameer
						["coord"] = { 59.5, 32.4, NETHERSTORM },
						["minReputation"] = { FACTION_THE_CONSORTIUM, HONORED },
						["groups"] = {
							objective(1, {	-- 0/1 Salvaged Ethereum Prison Key
								["provider"] = { "i", 31956 },	-- Salvaged Ethereum Prison Key
								["crs"] = {
									20452,	-- Ethereum Assassin
									20453,	-- Ethereum Shocktrooper
									20454,	-- Nexus-King Salhadaar
									20456,	-- Ethereum Researcher
									20457,	-- Ethereum Disruptor
									20458,	-- Ethereum Archon
									20459,	-- Ethereum Overlord
									20474,	-- Ethereum Nexus-Stalker
									20727,	-- Captain Zovax
									20770,	-- Warden Icoshock
									20854,	-- Ethereum Gladiator
									22821,	-- Ethereum Avenger
									22822,	-- Ethereum Nullifier
									23008,	-- Ethereum Jailor
								},
							}),
						},
					}),
					q(10973, {	-- A Thousand Worlds
						["qg"] = 20448,	-- Commander Ameer
						["minReputation"] = { FACTION_THE_CONSORTIUM, REVERED },
					}),
					q(10308, {	-- Another Heap of Ethereals
						["description"] = "Gives reputation through Exalted.",
						["sourceQuest"] = 10262,	-- A Heap of Ethereals
						["qg"] = 19880,	-- Nether-Stalker Khay'ji
						["coord"] = { 32.4, 64.2, NETHERSTORM },
						["repeatable"] = true,
					}),
					q(10972, {	-- Ethereum Prisoner I.D. Catalogue
						["sourceQuest"] = 10971,	-- Ethereum Secrets
						["qg"] = 20448,	-- Commander Ameer
						["coord"] = { 59.5, 32.4, NETHERSTORM },
						["maxReputation"] = { FACTION_THE_CONSORTIUM, EXALTED },	-- The Consortium, Exalted.
						["cost"] = { { "i", 31957, 1 } },	-- Ethereum Prisoner I.D. Tag
						["repeatable"] = true,
					}),
					q(10971, {	-- Ethereum Secrets
						["sourceQuest"] = 10970,	-- A Mission of Mercy
						["qg"] = 20448,	-- Commander Ameer
						["coord"] = { 59.5, 32.4, NETHERSTORM },
					}),
					q(10969, {	-- Seek Out Ameer
						["qg"] = 22899,	-- Protectorate Advisor Rahim
						["coord"] = { 45.8, 36.2, NETHERSTORM },
						["minReputation"] = { FACTION_THE_CONSORTIUM, HONORED },
						["isBreadcrumb"] = true,	-- for "A Mission of Mercy"
					}),
					q(10974, {	-- Stasis Chambers of Bash'ir
						["sourceQuest"] = 10973,	-- A Thousand Worlds
						["qg"] = 20448,	-- Commander Ameer
						["coord"] = { 59.5, 32.4, NETHERSTORM },
						["maps"] = { BLADES_EDGE_MOUNTAINS },
						["groups"] = {
							i(32064),	-- Protectorate Treasure Cache
						},
					}),
					q(10380, {	-- A Dark Pact
						["sourceQuest"] = 10431,	-- Outside Assistance
						["qg"] = 20780,	-- Kaylaan
						["coord"] = { 34.8, 38.3, NETHERSTORM },
						["minReputation"] = { FACTION_THE_ALDOR, NEUTRAL },	-- The Aldor, Neutral.
						["groups"] = {
							objective(1, {	-- 0/6 Gan'arg Warp-Tinker slain
								["provider"] = { "n", 20285 },	-- Gan'arg Warp-Tinker
							}),
							objective(2, {	-- 0/3 Daughter of Destiny slain
								["provider"] = { "n", 18860 },	-- Daughter of Destiny
							}),
							objective(3, {	-- 0/3 Mo'arg Warp-Master slain
								["provider"] = { "n", 20326 },	-- Mo'arg Warp-Master
							}),
						},
					}),
					q(10381, {	-- Aldor No More
						["sourceQuest"] = 10380,	-- A Dark Pact
						["qg"] = 20780,	-- Kaylaan
						["coord"] = { 34.8, 38.3, NETHERSTORM },
						["minReputation"] = { FACTION_THE_ALDOR, NEUTRAL },	-- The Aldor, Neutral.
						["groups"] = {
							i(30382),	-- Aldor Ceremonial Wraps
							i(30380),	-- Girdle of the Lost Vindicator
							i(30381),	-- Kaylaan's Spaulders
							i(30379),	-- Vindicator's Light Vest
						},
					}),
					q(10263, {	-- Assisting the Consortium (The Aldor)
						["sourceQuest"] = 10186,	-- You're Hired!
						["qg"] = 19467,	-- Anchorite Karja
						["coord"] = { 32.0, 64.2, NETHERSTORM },
						["minReputation"] = { FACTION_THE_ALDOR, NEUTRAL },	-- The Aldor, Neutral.
						["isBreadcrumb"] = true,
					}),
					q(10246, {	-- Attack on Manaforge Coruu
						["sourceQuest"] = 10299,	-- Shutting Down Manaforge B'naar
						["qg"] = 19466,	-- Exarch Orelis
						["coord"] = { 32.0, 64.2, NETHERSTORM },
						["minReputation"] = { FACTION_THE_ALDOR, NEUTRAL },	-- The Aldor, Neutral.
						["groups"] = {
							objective(1, {	-- 0/5 Sunfury Researcher slain
								["provider"] = { "n", 20136 },	-- Sunfury Researcher
							}),
							objective(2, {	-- 0/8 Sunfury Arcanist slain
								["provider"] = { "n", 20134 },	-- Sunfury Arcanist
							}),
						},
					}),
					q(10245, {	-- B'naar Console Transcription
						["sourceQuest"] = 10243,	-- Naaru Technology
						["provider"] = { "o", 183770 },	-- B'naar Control Console
						["coord"] = { 23.2, 68.2, NETHERSTORM },
						["minReputation"] = { FACTION_THE_ALDOR, NEUTRAL },	-- The Aldor, Neutral.
					}),
					q(10409, {	-- Deathblow to the Legion
						["sourceQuest"] = 10410,	-- Ishanah's Help
						["qg"] = 18538,	-- Ishanah
						["coord"] = { 24.2, 29.8, SHATTRATH_CITY },
						["minReputation"] = { FACTION_THE_ALDOR, NEUTRAL },	-- The Aldor, Neutral.
						["groups"] = {
							i(30369),	-- Cleansed Fel Pauldrons
							i(30370),	-- Gauntlets of the Redeemed Vindicator
							i(30371),	-- Lightwarden's Girdle
							i(30860),	-- Kaylaan's Signet
							i(30368),	-- Slippers of the High Priestess
						},
					}),
					q(10241, {	-- Distraction at Manaforge B'naar
						["sourceQuests"] = {
							10551,	-- Allegiance to the Aldor
							11038,	-- Assist Exarch Orelis
						},
						["qg"] = 19466,	-- Exarch Orelis
						["coord"] = { 32.0, 64.2, NETHERSTORM },
						["minReputation"] = { FACTION_THE_ALDOR, NEUTRAL },	-- The Aldor, Neutral.
						["groups"] = {
							objective(1, {	-- 0/8 Sunfury Magister slain
								["provider"] = { "n", 18855 },	-- Sunfury Magister
							}),
							objective(2, {	-- 0/8 Sunfury Bloodwarder slain
								["provider"] = { "n", 18853 },	-- Sunfury Bloodwarder
							}),
						},
					}),
					q(10410, {	-- Ishanah's Help
						["sourceQuest"] = 10407,	-- Socrethar's Shadow
						["qg"] = 19467,	-- Anchorite Karja
						["coord"] = { 32.0, 64.2, NETHERSTORM },
						["minReputation"] = { FACTION_THE_ALDOR, NEUTRAL },	-- The Aldor, Neutral.
					}),
					q(10313, {	-- Measuring Warp Energies
						["sourceQuest"] = 10241,	-- Distraction at Manaforge B'naar
						["qg"] = 19466,	-- Exarch Orelis
						["coord"] = { 32.0, 64.2, NETHERSTORM },
						["minReputation"] = { FACTION_THE_ALDOR, NEUTRAL },	-- The Aldor, Neutral.
						["groups"] = {
							i(30362),	-- Energized Helm
							i(30364),	-- Resonating Axe
							i(30363),	-- Warp-Shielded Hauberk
							i(30521),	-- Warpweaver's Gloves
						},
					}),
					q(10243, {	-- Naaru Technology
						["sourceQuest"] = 10241,	-- Distraction at Manaforge B'naar
						["qg"] = 19467,	-- Anchorite Karja
						["coord"] = { 32.0, 64.2, NETHERSTORM },
						["minReputation"] = { FACTION_THE_ALDOR, NEUTRAL },	-- The Aldor, Neutral.
					}),
					q(10431, {	-- Outside Assistance
						["sourceQuest"] = 10328,	-- Sunfury Briefings
						["qg"] = 19466,	-- Exarch Orelis
						["coord"] = { 32.0, 64.2, NETHERSTORM },
						["minReputation"] = { FACTION_THE_ALDOR, NEUTRAL },	-- The Aldor, Neutral.
					}),
					q(10323, {	-- Shutting Down Manaforge Ara
						["sourceQuest"] = 10322,	-- Shutting Down Manaforge Duro
						["qg"] = 19467,	-- Anchorite Karja
						["coord"] = { 32.0, 64.2, NETHERSTORM },
						["minReputation"] = { FACTION_THE_ALDOR, NEUTRAL },	-- The Aldor, Neutral.
						["groups"] = {
							objective(1, {	-- 0/1 Manaforge Ara Shut Down
								["provider"] = { "n", 20440 },	-- Ara Control Console
							}),
							objective(2, {	-- 0/1 Ara Access Crystal
								["provider"] = { "i", 29411 },	-- Ara Access Crystal
								["cr"] = 20685,	-- Overseer Azarad
							}),
							i(30377),	-- Karja's Medallion
							i(30365),	-- Overseer's Signet
						},
					}),
					q(10299, {	-- Shutting Down Manaforge B'naar
						["sourceQuest"] = 10245,	-- B'naar Console Transcription
						["qg"] = 19467,	-- Anchorite Karja
						["coord"] = { 32.0, 64.2, NETHERSTORM },
						["minReputation"] = { FACTION_THE_ALDOR, NEUTRAL },	-- The Aldor, Neutral.
						["groups"] = {
							objective(1, {	-- 0/1 Manaforge B'naar Shut Down
								["provider"] = { "n", 20209 },	-- B'naar Control Console
							}),
							objective(2, {	-- 0/1 B'naar Access Crystal
								["provider"] = { "i", 29366 },	-- B'naar Access Crystal
								["cr"] = 20416,	-- Overseer Theredis
							}),
						},
					}),
					q(10321, {	-- Shutting Down Manaforge Coruu
						["sourceQuest"] = 10299,	-- Shutting Down Manaforge B'naar
						["qg"] = 19467,	-- Anchorite Karja
						["coord"] = { 32.0, 64.2, NETHERSTORM },
						["minReputation"] = { FACTION_THE_ALDOR, NEUTRAL },	-- The Aldor, Neutral.
						["groups"] = {
							objective(1, {	-- 0/1 Manaforge Coruu Shut Down
								["provider"] = { "n", 20417 },	-- Coruu Control Console
							}),
							objective(2, {	-- 0/1 Coruu Access Crystal
								["provider"] = { "i", 29396 },	-- Coruu Access Crystal
								["cr"] = 20397,	-- Overseer Seylanna
							}),
						},
					}),
					q(10322, {	-- Shutting Down Manaforge Duro
						["sourceQuest"] = 10321,	-- Shutting Down Manaforge Coruu
						["qg"] = 19467,	-- Anchorite Karja
						["coord"] = { 32.0, 64.2, NETHERSTORM },
						["minReputation"] = { FACTION_THE_ALDOR, NEUTRAL },	-- The Aldor, Neutral.
						["groups"] = {
							objective(1, {	-- 0/1 Manaforge Duro Shut Down
								["provider"] = { "n", 20418 },	-- Duro Control Console
							}),
							objective(2, {	-- 0/1 Duro Access Crystal
								["provider"] = { "i", 29397 },	-- Duro Access Crystal
								["cr"] = 20435,	-- Overseer Athanel
							}),
						},
					}),
					q(10407, {	-- Socrethar's Shadow
						["sourceQuests"] = {
							10323,	-- Shutting Down Manaforge Ara
							10381,	-- Aldor No More
						},
						["qg"] = 19467,	-- Anchorite Karja
						["coord"] = { 32.0, 64.2, NETHERSTORM },
						["minReputation"] = { FACTION_THE_ALDOR, NEUTRAL },	-- The Aldor, Neutral.
						["groups"] = {
							objective(1, {	-- 0/1 First Half of Socrethar's Stone
								["provider"] = { "i", 29624 },	-- First Half of Socrethar's Stone
								["cr"] = 20800,	-- Forgemaster Morug
							}),
							objective(2, {	-- 0/1 Second Half of Socrethar's Stone
								["provider"] = { "i", 29625 },	-- Second Half of Socrethar's Stone
								["cr"] = 20801,	-- Silroth
							}),
						},
					}),
					q(10328, {	-- Sunfury Briefings
						["sourceQuest"] = 10321,	-- Shutting Down Manaforge Coruu
						["qg"] = 19466,	-- Exarch Orelis
						["coord"] = { 32.0, 64.2, NETHERSTORM },
						["minReputation"] = { FACTION_THE_ALDOR, NEUTRAL },	-- The Aldor, Neutral.
						["groups"] = {
							objective(1, {	-- 0/1 Sunfury Military Briefing
								["provider"] = { "i", 29545 },	-- Sunfury Military Briefing
								["crs"] = {
									20140,	-- Sunfury Centurion
									20207,	-- Sunfury Bowman
								},
							}),
							objective(2, {	-- 0/1 Sunfury Arcane Briefing
								["provider"] = { "i", 29546 },	-- Sunfury Arcane Briefing
								["cr"] = 20139,	-- Sunfury Conjurer
							}),
						},
					}),
					q(10185, {	-- A Fate Worse Than Death
						["sourceQuest"] = 10174,	-- Curse of the Violet Tower
						["qg"] = 19488,	-- Custodian Dieworth
						["coord"] = { 57.6, 86.2, NETHERSTORM },
						["groups"] = {
							objective(1, {	-- 0/10 Mana Seeker slain
								["provider"] = { "n", 18867 },	-- Mana Seeker
							}),
							objective(2, {	-- 0/10 Mageslayer slain
								["provider"] = { "n", 18866 },	-- Mageslayer
							}),
							i(30401),	-- Farahlite Studded Boots
							i(29955),	-- Mana-Infused Wristguards
							i(29954),	-- Spiritbinder's Mantle
							i(29959),	-- Spiritualist's Gauntlets
						},
					}),
					q(10262, {	-- A Heap of Ethereals
						["sourceQuest"] = 10265,	-- Consortium Crystal Collection
						["qg"] = 19880,	-- Nether-Stalker Khay'ji
						["coord"] = { 32.4, 64.2, NETHERSTORM },
					}),
					q(10314, {	-- A Lingering Suspicion
						["sourceQuest"] = 10316,	-- Searching for Evidence
						["provider"] = { "o", 184300 },	-- Necromantic Focus
						["coord"] = { 60.3, 78.0, NETHERSTORM },
						["groups"] = {
							objective(1, {	-- 0/10 Loathsome Remnant
								["provider"] = { "i", 29338 },	-- Loathsome Remnant
								["crs"] = {
									20480,	-- Kirin'Var Ghost
									20496,	-- Kirin'Var Spectre
									20512,	-- Tormented Soul
									21065,	-- Tormented Citizen
								},
							}),
						},
					}),
					q(10270, {	-- A Not-So-Modest Proposal
						["qg"] = 20071,	-- Wind Trader Marid
						["coord"] = { 58.3, 31.7, NETHERSTORM },
						["groups"] = {
							objective(1, {	-- 0/1 Teleporter Power Pack
								["providers"] = {
									{ "i", 28969 },	-- Teleporter Power Pack
									{ "o", 184075 },	-- Teleporter Power Pack
								},
							}),
						},
					}),
					q(10272, {	-- A Promising Start
						["sourceQuest"] = 10281,	-- Formal Introductions
						["qg"] = 20110,	-- Tyri
						["coord"] = { 71.2, 35.1, NETHERSTORM },
						["groups"] = {
							objective(1, {	-- 0/15 Nether Dragonkin Egg
								["providers"] = {
									{ "i", 28971 },	-- Nether Dragonkin Egg
									{ "o", 184077 },	-- Nether Dragonkin Egg
								},
							}),
						},
					}),
					q(10305, {	-- Abjurist Belmara
						["provider"] = { "i", 29234 },	-- Belmara's Tome
						["coord"] = { 58.6, 88.6, NETHERSTORM },
						["crs"] = { 19546 },	-- Abjurist Belmara
						["groups"] = {
							objective(1, {	-- 0/1 Put Belmara's Spirit to Rest
								["providers"] = {
									{ "i", 28336 },	-- Belmara's Tome
									{ "o", 183268 },	-- Bookshelf
								},
							}),
						},
					}),
					q(10436, {	-- All Clear!
						["sourceQuest"] = 10430,	-- Testing the Prototype
						["qg"] = 20913,	-- Tashar
						["coord"] = { 44.7, 14.6, NETHERSTORM },
						["groups"] = {
							objective(1, {	-- 0/12 Scythetooth Raptor slain
								["provider"] = { "n", 20634 },	-- Scythetooth Raptor
							}),
						},
					}),
					q(10268, {	-- An Audience with the Prince
						["sourceQuest"] = 10267,	-- Rightful Repossession
						["qg"] = 20066,	-- Gahruj
						["coord"] = { 46.7, 56.9, NETHERSTORM },
					}),
					q(10176, {	-- Ar'kelos the Guardian
						["sourceQuest"] = 10209,	-- Summoner Kanthin's Prize
						["qg"] = 19644,	-- Image of Archmage Vargoth
						["groups"] = {
							objective(1, {	-- 0/1 Ar'kelos slain
								["provider"] = { "n", 19494 },	-- Ar'kelos
							}),
							i(29777),	-- Cloak of the Valiant Defender
							i(29776),	-- Core of Ar'kelos
							i(29775),	-- Pendant of the Battle-Mage
							i(29779),	-- Rejuvenating Scepter
						},
					}),
					q(10353, {	-- Arconus the Insatiable
						["qg"] = 20552,	-- Agent Ya-six
						["coord"] = { 60.9, 41.5, NETHERSTORM },
						["groups"] = {
							objective(1, {	-- 0/1 Arconus the Insatiable slain
								["provider"] = { "n", 20554 },	-- Arconus the Insatiable
							}),
							i(30329),	-- Flesh Handler's Headpiece
							i(30517),	-- Netherfarer's Leggings
							i(30328),	-- Protectorate Assassin's Tunic
							i(30330),	-- Starcaller's Plated Belt
						},
					}),
					q(10249, {	-- Back to the Chief!
						["sourceQuest"] = 10248,	-- You, Robot
						["qg"] = 19832,	-- Doctor Vomisa, Ph.T.
						["coord"] = { 37.3, 63.6, NETHERSTORM },
						["groups"] = {
							i(134021, {	-- X-52 Rocket Helmet (TOY!)
								["timeline"] = { ADDED_7_0_3 },
							}),
							i(30019),	-- Area 52 Defender's Pants
							i(30014),	-- X-52 Pilot's Leggings
							i(30016),	-- X-52 Technician's Helm
							i(30847, {	-- X-52 Rocket Helmet
								["timeline"] = { REMOVED_7_0_3 },
							}),
						},
					}),
					q(10182, {	-- Battle-Mage Dathric
						["provider"] = { "i", 29233 },	-- Dathric's Blade
						["coord"] = { 60.6, 87.6, NETHERSTORM },
						["crs"] = { 19543 },	-- Battle-Mage Dathric
						["groups"] = {
							objective(1, {	-- 0/1 Put Dathric's Spirit to Rest
								["providers"] = {
									{ "i", 28351 },	-- Dathric's Blade
									{ "o", 183269 },	-- Weapon Rack
								},
							}),
						},
					}),
					q(10924, {	-- Bloody Imp-ossible!
						["qg"] = 22479,	-- Sab'aoth
						["coord"] = { 66.4, 67.2, NETHERSTORM },
					}),
					q(10701, {	-- Breaking Down Netherock
						["provider"] = { "o", 183811 },	-- Wanted Poster
						["coord"] = { 32.1, 64.7, NETHERSTORM },
						["groups"] = {
							objective(1, {	-- 0/1 Netherock slain
								["provider"] = { "n", 20772 },	-- Netherock
							}),
							i(31315),	-- Goblin Girdle
							i(31313),	-- Nether-Rocket Gloves
							i(31314),	-- Rocket-Chief Pauldrons
							i(31312),	-- Sinister Area 52 Boots
						},
					}),
					q(10240, {	-- Building a Perimeter
						["sourceQuest"] = 10239,	-- Potential Energy Source
						["qg"] = 19489,	-- Lieutenant-Sorcerer Morran
						["coord"] = { 57.6, 86.3, NETHERSTORM },
						["groups"] = {
							i(30398),	-- Boots of the Beneficent
							i(29785),	-- Crimson Mail Bracers
							i(29784),	-- Harmony's Touch
							i(29786),	-- Kirin'Var Defender's Greaves
						},
					}),
					q(10307, {	-- Cohlien Frostweaver
						["provider"] = { "i", 29236 },	-- Cohlien's Cap
						["coord"] = { 59.6, 87.6, NETHERSTORM },
						["crs"] = { 19545 },	-- Cohlien Frostweaver
						["groups"] = {
							objective(1, {	-- 0/1 Put Cohlien's Spirit to Rest
								["providers"] = {
									{ "i", 28353 },	-- Cohlien's Cap
									{ "o", 183266 },	-- Footlocker
								},
							}),
						},
					}),
					q(10422, {	-- Captain Tyralius
						["qg"] = 20450,	-- Flesh Handler Viridius
						["coords"] = {
							{ 58.6, 31.7, NETHERSTORM },
							{ 59.4, 32.0, NETHERSTORM },
							{ 60.1, 32.5, NETHERSTORM },
						},
						["cr"] = 20770,	-- Warden Icoshock
						["groups"] = {
							objective(1, {	-- 0/1 Captain Tyralius Freed
								["providers"] = {
									{ "i", 29742 },	-- The Warden's Key
									{ "o", 184588 },	-- Captain Tyralius's Prison
								},
								["cr"] = 20770,	-- Warden Icoshock
							}),
						},
					}),
					q(10319, {	-- Capturing the Phylactery
						["sourceQuest"] = 10314,	-- A Lingering Suspicion
						["qg"] = 19488,	-- Custodian Dieworth
						["coord"] = { 57.5, 86.3, NETHERSTORM },
						["groups"] = {
							objective(1, {	-- 0/1 Naberius' Phylactery
								["providers"] = {
									{ "i", 29361 },	-- Naberius' Phylactery
									{ "o", 184310 },	-- Suspicious Outhouse
								},
							}),
						},
					}),
					q(10306, {	-- Conjurer Luminrath
						["provider"] = { "i", 29235 },	-- Luminrath's Mantle
						["coord"] = { 59.8, 85.6, NETHERSTORM },
						["crs"] = { 19544 },	-- Conjurer Luminrath
						["groups"] = {
							objective(1, {	-- 0/1 Put Luminrath's Spirit to Rest
								["providers"] = {
									{ "i", 28352 },	-- Luminrath's Mantle
									{ "o", 183267 },	-- Dresser
								},
							}),
						},
					}),
					q(10265, {	-- Consortium Crystal Collection
						["sourceQuests"] = {
							10263,	-- Assisting the Consortium (The Aldor)
							10264,	-- Assisting the Consortium (The Scryers)
						},
						["qg"] = 19880,	-- Nether-Stalker Khay'ji
						["coord"] = { 32.4, 64.2, NETHERSTORM },
						["groups"] = {
							objective(1, {	-- 0/1 Arklon Crystal Artifact
								["provider"] = { "i", 28829 },	-- Arklon Crystal Artifact
								["cr"] = 20215,	-- Pentatharon
							}),
						},
					}),
					q(10427, {	-- Creatures of the Eco-Domes
						["sourceQuest"] = 10426,	-- Flora of the Eco-Domes
						["qg"] = 20871,	-- Aurine Moonblaze
						["coord"] = { 42.3, 32.6, NETHERSTORM },
						["groups"] = {
							objective(1, {	-- 0/12 Talbuk Tagged
								["provider"] = { "i", 29817 },	-- Talbuk Tagger
								["crs"] = {
									20610,	-- Talbuk Doe
									20777,	-- Talbuk Sire
								},
							}),
						},
					}),
					q(10174, {	-- Curse of the Violet Tower
						["sourceQuest"] = 10300,	-- Rebuilding the Staff
						["qg"] = 19217,	-- Ravandwyr
						["coord"] = { 31.4, 66.1, NETHERSTORM },
						["groups"] = {
							i(28455),	-- Archmage Vargoth's Staff
						},
					}),
					q(10418, {	-- Deal With the Saboteurs
						["sourceQuest"] = 10417,	-- Run a Diagnostic!
						["qg"] = 20810,	-- Mehrdad
						["coord"] = { 46.4, 56.4, NETHERSTORM },
						["groups"] = {
							objective(1, {	-- 0/8 Barbscale Crocolisk slain
								["provider"] = { "n", 20773 },	-- Barbscale Crocolisk
							}),
						},
					}),
					q(10317, {	-- Dealing with the Foreman
						["qg"] = 20112,	-- Wind Trader Tuluman
						["coord"] = { 34.6, 37.9, NETHERSTORM },
					}),
					q(10318, {	-- Dealing with the Overmaster
						["sourceQuest"] = 10317,	-- Dealing with the Foreman
						["qg"] = 20393,	-- Foreman Sundown
						["coord"] = { 26.4, 42.3, NETHERSTORM },
						["groups"] = {
							objective(1, {	-- 0/1 Overmaster Grindgarr slain
								["provider"] = { "n", 20803 },	-- Overmaster Grindgarr
							}),
							i(30003),	-- Gloves of the Nether-Stalker
							i(30004),	-- Landing Boots
							i(30005),	-- Overmaster's Shoulders
							i(30006),	-- Wind Trader's Band
						},
					}),
					q(10235, {	-- Declawing Doomclaw
						["sourceQuest"] = 10234,	-- One Demon's Trash...
						["qg"] = 19728,	-- Mama Wheeler
						["coord"] = { 46.6, 56.5, NETHERSTORM },
						["groups"] = {
							objective(1, {	-- 0/1 Doomclaw's Hand
								["provider"] = { "i", 28563 },	-- Doomclaw's Hand
								["cr"] = 19738,	-- Doomclaw
							}),
							i(30279),	-- Mama's Insurance
							i(30278),	-- Pilfered Ethereal Blade
							i(30277),	-- Ripfang Paw
						},
					}),
					q(10406, {	-- Delivering the Message
						["sourceQuest"] = 10405,	-- S-A-B-O-T-A-G-E
						["qg"] = 20482,	-- Image of Commander Ameer
						["coord"] = { 56.8, 38.7, NETHERSTORM },
						["groups"] = {
							i(30335),	-- Druidic Force Boots
							i(30337),	-- Protectorate Headplate
							i(30336),	-- Surger's Hand Wraps
							i(30518),	-- Warpthread Vest
						},
					}),
					q(10320, {	-- Destroy Naberius!
						["sourceQuest"] = 10319,	-- Capturing the Phylactery
						["qg"] = 19488,	-- Custodian Dieworth
						["coord"] = { 57.5, 86.3, NETHERSTORM },
						["groups"] = {
							objective(1, {	-- 0/1 Naberius slain
								["provider"] = { "n", 20483 },	-- Naberius
							}),
							i(29782),	-- Coif of the Wicked
							i(29780),	-- Kirin Tor Apprentice's Robes
							i(29783),	-- Legguards of the Resolute Defender
							i(29781),	-- Lifewarden's Breastplate
						},
					}),
					q(10424, {	-- Diagnosis: Critical
						["sourceQuest"] = 10423,	-- To the Stormspire
						["qg"] = 20811,	-- Ghabar
						["coord"] = { 43.5, 35.1, NETHERSTORM },
					}),
					q(10439, {	-- Dimensius the All-Devouring
						["sourceQuest"] = 10438,	-- On Nethery Wings
						["qg"] = 20907,	-- Professor Dabiri
						["coord"] = { 60.1, 31.7, NETHERSTORM },
						["groups"] = {
							objective(1, {	-- 0/1 Dimensius the All-Devouring slain
								["provider"] = { "n", 19554 },	-- Dimensius the All-Devouring
							}),
							objective(2, {	-- 0/1 Speak to Captain Saeed
								["provider"] = { "n", 20985 },	-- Captain Saeed
							}),
							i(30297),	-- Circlet of the Starcaller
							i(30300),	-- Dabiri's Enigma
							i(30299),	-- Starcaller's Plated Leggings
							i(30298),	-- Void Slayer's Tunic
						},
					}),
					q(10247, {	-- Doctor Vomisa, Ph.T.
						["sourceQuest"] = 10237,	-- Warn Area 52!
						["qg"] = 19570,	-- Rocket-Chief Fuselage
						["coord"] = { 32.7, 65.0, NETHERSTORM },
					}),
					q(10223, {	-- Down With Daellis
						["sourceQuest"] = 10222,	-- The Sunfury Garrison
						["qg"] = 19488,	-- Custodian Dieworth
						["coord"] = { 57.5, 86.3, NETHERSTORM },
						["groups"] = {
							objective(1, {	-- 0/1 Master Daellis Dawnstrike slain
								["provider"] = { "n", 19705 },	-- Master Daellis Dawnstrike
							}),
							i(29792),	-- Dawnstrider's Cloak
							i(30399),	-- Nightstalker's Wristguards
							i(29793),	-- Signet of the Violet Tower
							i(29794),	-- Strength of the Violet Tower
						},
					}),
					q(10221, {	-- Dr. Boom!
						["sourceQuest"] = 10203,	-- Invaluable Asset Zapping
						["qg"] = 19634,	-- Lead Sapper Blastfizzle
						["coord"] = { 34.2, 68.0, NETHERSTORM },
						["groups"] = {
							objective(1, {	-- 0/1 Dr. Boom slain
								["provider"] = { "n", 20284 },	-- Dr. Boom
							}),
							i(30514),	-- Nether Guards
							i(29968),	-- Nether Leggings
							i(29967),	-- Nether Vest
							i(29969),	-- Sparky's Discarded Helmet
						},
					}),
					q(10311, {	-- Drijya Needs Your Help
						["qg"] = 20066,	-- Gahruj
						["coord"] = { 46.6, 56.8, NETHERSTORM },
						["isBreadcrumb"] = true,
					}),
					q(10411, {	-- Electro-Shock Goodness!
						["qg"] = 20449,	-- Researcher Navuud
						["coord"] = { 59.2, 32.6, NETHERSTORM },
						["groups"] = {
							objective(1, {	-- 0/30 Seeping Sludge Globule slain
								["provider"] = { "n", 20806 },	-- Seeping Sludge Globule
							}),
							objective(2, {	-- 0/30 Void Waste Globule slain
								["provider"] = { "n", 20805 },	-- Void Waste Globule
							}),
						},
					}),
					q(10226, {	-- Elemental Power Extraction
						["sourceQuest"] = 10224,	-- Essence for the Engines
						["qg"] = 19709,	-- Chief Engineer Trep
						["coord"] = { 32.4, 66.8, NETHERSTORM },
						["groups"] = {
							objective(1, {	-- 0/5 Elemental Power
								["providers"] = {
									{ "i", 28548 },	-- Elemental Power
									{ "o", 183933 },	-- Elemental Power
								},
							}),
							i(30264),	-- Area 52 Engineering Gloves
							i(30516),	-- Chief Engineer's Belt
							i(30263),	-- Heavy-Duty Engineering Boots
							i(30262),	-- Trep's Shoulderguards
						},
					}),
					q(10425, {	-- Escape from the Staging Grounds
						["description"] = "An Ethereum Gladiator and a Captured Protectorate Vanguard spawns in the middle of the staging grounds every 7 minutes. Kill the Gladiator to obtain the escort quest.",
						["qg"] = 20763,	-- Captured Protectorate Vanguard
						["coord"] = { 57.0, 37.6, NETHERSTORM },
						["groups"] = {
							i(30331),	-- Diviner's Cinch
							i(30332),	-- Ferocious Bands
							i(30333),	-- Spaulders of the Protectorate
							i(30334),	-- Starcaller's Plated Stompers
						},
					}),
					q(10224, {	-- Essence for the Engines
						["sourceQuest"] = 10225,	-- Report to Engineering
						["qg"] = 19709,	-- Chief Engineer Trep
						["coord"] = { 32.4, 66.8, NETHERSTORM },
						["groups"] = {
							objective(1, {	-- 0/7 Mana Wraith Essence
								["provider"] = { "i", 28527 },	-- Mana Wraith Essence
								["crs"] = {
									18864,	-- Mana Wraith
									18878,	-- Warp Beast
								},
							}),
						},
					}),
					q(10384, {	-- Ethereum Data
						["sourceQuest"] = 10339,	-- The Ethereum
						["qg"] = 20482,	-- Image of Commander Ameer
						["coord"] = { 56.8, 38.7, NETHERSTORM },
						["groups"] = {
							objective(1, {	-- 0/1 Ethereum Data Cell
								["providers"] = {
									{ "i", 29582 },	-- Ethereum Data Cell
									{ "o", 184560 },	-- Ethereum Data Cell
								},
							}),
						},
					}),
					q(10855, {	-- Fel Reavers, No Thanks!
						["qg"] = 20471,	-- Nether-Stalker Nauthis
						["coord"] = { 44.7, 34.9, NETHERSTORM },
					}),
					q(10256, {	-- Finding the Keymaster
						["sourceQuest"] = 10176,	-- Ar'kelos the Guardian
						["qg"] = 19481,	-- Archmage Vargoth
						["coord"] = { 58.3, 86.4, NETHERSTORM },
					}),
					q(10426, {	-- Flora of the Eco-Domes
						["qg"] = 20871,	-- Aurine Moonblaze
						["coord"] = { 42.3, 32.6, NETHERSTORM },
					}),
					q(10281, {	-- Formal Introductions
						["sourceQuest"] = 10271,	-- Getting Down to Business
						["qg"] = 20154,	-- Shrouded Figure
						["coord"] = { 70.9, 38.8, NETHERSTORM },
					}),
					q(10276, {	-- Full Triangle
						["sourceQuest"] = 10275,	-- Triangulation Point Two
						["qg"] = 20112,	-- Wind Trader Tuluman
						["coord"] = { 34.6, 37.9, NETHERSTORM },
						["groups"] = {
							objective(1, {	-- 0/1 Ata'mal Crystal
								["provider"] = { "i", 29026 },	-- Ata'mal Crystal
								["cr"] = 20138,	-- Culuthas
							}),
						},
					}),
					q(10271, {	-- Getting Down to Business
						["sourceQuest"] = 10270,	-- A Not-So-Modest Proposal
						["qg"] = 20518,	-- Image of Wind Trader Marid
						["coord"] = { 71.1, 39.0, NETHERSTORM },
					}),
					q(10333, {	-- Help Mama Wheeler
						["sourceQuest"] = 10206,	-- Pick Your Part
						["qg"] = 19645,	-- Papa Wheeler
						["coord"] = { 33.0, 64.7, NETHERSTORM },
						["isBreadcrumb"] = true,
					}),
					heroscall(q(39202, {	-- Hero's Call: Netherstorm!
						["timeline"] = { ADDED_6_2_0 },
						["isBreadcrumb"] = true,
						["lvl"] = 67,
					})),
					q(10293, {	-- Hitting the Motherlode
						["sourceQuest"] = 10290,	-- In Search of Farahlite
						["qg"] = 20067,	-- Zuben Elgenubi
						["coord"] = { 44.1, 36.0, NETHERSTORM },
						["groups"] = {
							objective(1, {	-- 0/1 Farahlite Core
								["provider"] = { "i", 29164 },	-- Farahlite Core
								["cr"] = 20202,	-- Cragskaar
							}),
							i(29814),	-- Celestial Jewel Ring
							i(29815),	-- Chain of Glowing Tendrils
							i(29813),	-- Cloak of Woven Energy
						},
					}),
					q(10232, {	-- In A Scrap With The Legion
						["sourceQuest"] = 10206,	-- Pick Your Part
						["qg"] = 19645,	-- Papa Wheeler
						["coord"] = { 33.0, 64.7, NETHERSTORM },
						["groups"] = {
							objective(1, {	-- 0/5 Mo'arg Doomsmith slain
								["provider"] = { "n", 16944 },	-- Mo'arg Doomsmith
							}),
							objective(2, {	-- 0/15 Gan'arg Engineer slain
								["provider"] = { "n", 16948 },	-- Gan'arg Engineer
							}),
						},
					}),
					q(10290, {	-- In Search of Farahlite
						["qg"] = 20067,	-- Zuben Elgenubi
						["coord"] = { 44.1, 36.0, NETHERSTORM },
						["groups"] = {
							objective(1, {	-- 0/4 Raw Farahlite
								["provider"] = { "i", 29163 },	-- Raw Farahlite
								["crs"] = {
									18885,	-- Farahlon Giant
									18886,	-- Farahlon Breaker
									20202,	-- Cragskaar
								},
							}),
						},
					}),
					q(10331, {	-- Indispensable Tools
						["qg"] = 20463,	-- Apprentice Andrethan
						["coord"] = { 57.7, 85.2, NETHERSTORM },
						["groups"] = {
							objective(1, {	-- 0/1 Smithing Hammer
								["provider"] = { "i", 29365 },	-- Smithing Hammer
								["cr"] = 20409,	-- Kirin'Var Apprentice
							}),
						},
					}),
					q(10203, {	-- Invaluable Asset Zapping
						["sourceQuest"] = 10186,	-- You're Hired!
						["qg"] = 19570,	-- Rocket-Chief Fuselage
						["coord"] = { 32.7, 65.0, NETHERSTORM },
						["groups"] = {
							objective(1, {	-- 0/1 Hyper Rotational Dig-A-Matic retrieved
								["provider"] = { "o", 183805 },	-- Hyper Rotational Dig-A-Matic
							}),
							objective(2, {	-- 0/1 Servo-Pneumatic Dredging Claw retrieved
								["provider"] = { "o", 183806 },	-- Servo-Pneumatic Dredging Claw
							}),
							objective(3, {	-- 0/1 Multi-Spectrum Terrain Analyzer retrieved
								["provider"] = { "o", 183807 },	-- Multi-Spectrum Terrain Analyzer
							}),
							objective(4, {	-- 0/1 Big Wagon Full of Explosives retrieved
								["provider"] = { "o", 183808 },	-- Big Wagon Full of Explosives
							}),
						},
					}),
					q(10309, {	-- It's a Fel Reaver, But with Heart
						["qg"] = 19690,	-- N. D. Meancamp
						["coord"] = { 26.8, 77.0, NETHERSTORM },
						["groups"] = {
							objective(1, {	-- 0/1 Heart of the Fel Reaver
								["provider"] = { "i", 29260 },	-- Heart of the Fel Reaver
								["cr"] = 20243,	-- Scrapped Fel Reaver
							}),
							i(30268),	-- Heap Leggings
							i(30270),	-- Scavenged Breastplate
							i(30269),	-- Warp-Raider's Eyepatch
						},
					}),
					q(10433, {	-- Keeping Up Appearances
						["qg"] = 20921,	-- Shauly Pore
						["coord"] = { 46.5, 56.0, NETHERSTORM },
						["groups"] = {
							objective(1, {	-- 0/10 Ripfang Lynx Pelt
								["provider"] = { "i", 29801 },	-- Ripfang Lynx Pelt
								["cr"] = 20671,	-- Ripfang Lynx
							}),
						},
					}),
					q(10192, {	-- Krasus's Compendium
						["sourceQuest"] = 10188,	-- The Sigil of Krasus
						["qg"] = 19644,	-- Image of Archmage Vargoth
						["groups"] = {
							objective(1, {	-- 0/1 Krasus' Compendium - Chapter 1
								["providers"] = {
									{ "i", 28472 },	-- Krasus' Compendium - Chapter 1
									{ "o", 184121 },	-- Krasus's Compendium - Chapter 1
								},
							}),
							objective(2, {	-- 0/1 Krasus' Compendium - Chapter 2
								["providers"] = {
									{ "i", 28473 },	-- Krasus' Compendium - Chapter 2
									{ "o", 184122 },	-- Krasus's Compendium - Chapter 2
								},
							}),
							objective(3, {	-- 0/1 Krasus' Compendium - Chapter 3
								["providers"] = {
									{ "i", 28474 },	-- Krasus' Compendium - Chapter 3
									{ "o", 184123 },	-- Krasus's Compendium - Chapter 3
								},
							}),
						},
					}),
					q(10184, {	-- Malevolent Remnants
						["qg"] = 19488,	-- Custodian Dieworth
						["coord"] = { 57.5, 86.3, NETHERSTORM },
						["groups"] = {
							objective(1, {	-- 0/20 Severed Spirit slain
								["providers"] = {
									{ "n", 19881},	-- Severed Spirit
									{ "n", 20934},	-- Severed Defender
								},
							}),
						},
					}),
					q(10191, {	-- Mark V is Alive!
						["qg"] = 19589,	-- Maxx A. Million Mk. V
						["coord"] = { 31.6, 56.6, NETHERSTORM },
						["groups"] = {
							i(30226),	-- Alley's Recurve
							-- #if BEFORE MOP
							i(30227, {	-- Mark V's Throwing Star
								["timeline"] = { REMOVED_5_0_4 },
							}),
							-- #endif
							i(30252),	-- Unearthed Enkaat Wand
						},
					}),
					q(10332, {	-- Master Smith Rhonsus
						["sourceQuest"] = 10331,	-- Indispensable Tools
						["qg"] = 20463,	-- Apprentice Andrethan
						["coord"] = { 57.7, 85.2, NETHERSTORM },
						["groups"] = {
							objective(1, {	-- 0/1 Rhonsus slain
								["provider"] = { "n", 20410 },	-- Rhonsus
							}),
							i(29789),	-- Andrethan's Masterwork
							i(29788),	-- Finely Wrought Scale Leggings
							i(29787),	-- Master Smith's Hammer
							i(29791),	-- Reinforced Heaume
						},
					}),
					q(10334, {	-- Needs More Cowbell
						["qg"] = 20464,	-- Thadell
						["coord"] = { 57.7, 84.9, NETHERSTORM },
					}),
					q(10850, {	-- Nether Gas In a Fel Fire Engine
						["sourceQuest"] = 10855,	-- Fel Reavers, No Thanks!
						["qg"] = 22293,	-- Inactive Fel Reaver
						["repeatable"] = true,
						["groups"] = {
							objective(1, {	-- 0/5 Condensed Nether Gas
								["provider"] = { "i", 31653 },	-- Condensed Nether Gas
								["cr"] = 16949,	-- Gan'arg Mekgineer
							}),
						},
					}),
					q(10408, {	-- Nexus-King Salhadaar
						["sourceQuest"] = 10406,	-- Delivering the Message
						["qg"] = 20482,	-- Image of Commander Ameer
						["coord"] = { 56.8, 38.7, NETHERSTORM },
						["groups"] = {
							objective(1, {	-- 0/1 Nexus-King Salhadaar slain
								["provider"] = { "n", 20454 },	-- Nexus-King Salhadaar
							}),
							i(30011),	-- Ameer's Impulse Taser
							i(30012),	-- Ameer's Judgment
							i(30010),	-- Fleshling Simulation Staff
							i(30009),	-- The Burning Crusader
							i(30013),	-- Twin-Bladed Ripper
							--
							i(29618),	-- Protectorate Disruptor (QI!)
						},
					}),
					q(10315, {	-- Neutralizing the Nethermancers
						["qg"] = 20341,	-- Nether-Stalker Oazul
						["coord"] = { 34.5, 37.8, NETHERSTORM },
						["groups"] = {
							objective(1, {	-- 0/15 Sunfury Nethermancer slain
								["provider"] = { "n", 20248 },	-- Sunfury Nethermancer
							}),
						},
					}),
					q(10348, {	-- New Opportunities
						["qg"] = 20810,	-- Mehrdad
						["coord"] = { 46.4, 56.4, NETHERSTORM },
						["groups"] = {
							objective(1, {	-- 0/15 Ivory Bell
								["providers"] = {
									{ "i", 29474 },	-- Ivory Bell
									{ "o", 184443 },	-- Ivory Bell
								},
							}),
						},
					}),
					q(10183, {	-- Off To Area 52
						["qg"] = 19569,	-- Netherologist Coppernickels
						["coord"] = { 21.2, 55.6, NETHERSTORM },
						["isBreadcrumb"] = true,	-- for "You're Hired!"
					}),
					q(10438, {	-- On Nethery Wings
						["sourceQuest"] = 10437,	-- Recipe for Destruction
						["qg"] = 20907,	-- Professor Dabiri
						["coord"] = { 60.1, 31.7, NETHERSTORM },
					}),
					q(10234, {	-- One Demon's Trash...
						["sourceQuest"] = 10333,	-- Help Mama Wheeler
						["qg"] = 19728,	-- Mama Wheeler
						["coord"] = { 46.6, 56.5, NETHERSTORM },
						["groups"] = {
							objective(1, {	-- 0/10 Fel Reaver Part
								["providers"] = {
									{ "i", 28551 },	-- Fel Reaver Part
									{ "o", 183935 },	-- Fel Reaver Part
								},
							}),
						},
					}),
					q(10206, {	-- Pick Your Part
						["sourceQuest"] = 10265,	-- Consortium Crystal Collection
						["qg"] = 19645,	-- Papa Wheeler
						["coord"] = { 33.0, 64.7, NETHERSTORM },
						["groups"] = {
							objective(1, {	-- 0/10 Ethereal Technology
								["providers"] = {
									{ "i", 28457 },	-- Ethereal Technology
									{ "o", 183813 },	-- Ethereal Technology
									{ "o", 183814 },	-- Ethereal Technology
								},
							}),
							i(30275),	-- Mech Tech Shoulders
							i(30274),	-- Papa's Armbands
							i(30276),	-- Wheeler Family Heirloom
						},
					}),
					q(10239, {	-- Potential Energy Source
						["sourceQuest"] = 10343,	-- The Unending Invasion
						["qg"] = 19489,	-- Lieutenant-Sorcerer Morran
						["coord"] = { 57.6, 86.3, NETHERSTORM },
						["groups"] = {
							objective(1, {	-- 0/10 Energy Isolation Cube
								["providers"] = {
									{ "i", 28564 },	-- Energy Isolation Cube
									{ "o", 183945 },	-- Energy Isolation Cube
								},
							}),
						},
					}),
					q(10385, {	-- Potential for Brain Damage = High
						["sourceQuest"] = 10384,	-- Ethereum Data
						["qg"] = 20482,	-- Image of Commander Ameer
						["coord"] = { 56.8, 38.7, NETHERSTORM },
						["groups"] = {
							objective(1, {	-- 0/15 Ethereum Relay Data
								["provider"] = { "i", 29459 },	-- Ethereum Relay Data
								["cr"] = 20619,	-- Ethereum Relay
							}),
							--
							i(29482),	-- Ethereum Essence (QI!)
						},
					}),
					q(10300, {	-- Rebuilding the Staff
						["sourceQuest"] = 10173,	-- The Archmage's Staff
						["qg"] = 19217,	-- Ravandwyr
						["coord"] = { 31.4, 66.1, NETHERSTORM },
						["groups"] = {
							objective(1, {	-- 0/4 Flawless Crystal Shard
								["provider"] = { "i", 29216 },	-- Flawless Crystal Shard
								["crs"] = {
									18872,	-- Disembodied Vindicator
									18873,	-- Disembodied Protector
									21058,	-- Disembodied Exarch
								},
							}),
						},
					}),
					q(10190, {	-- Recharging the Batteries
						["qg"] = 19578,	-- Bot-Specialist Alley
						["coord"] = { 31.5, 56.6, NETHERSTORM },
					}),
					q(10437, {	-- Recipe for Destruction
						["qg"] = 20907,	-- Professor Dabiri
						["coord"] = { 60.1, 31.7, NETHERSTORM },
						["groups"] = {
							objective(1, {	-- 0/8 Fragment of Dimensius
								["provider"] = { "i", 29822 },	-- Fragment of Dimensius
								["crs"] = {
									18869,	-- Unstable Voidwraith
									18870,	-- Voidshrieker
									19357,	-- Dimming Voidwraith
								},
							}),
						},
					}),
					q(10225, {	-- Report to Engineering
						["sourceQuest"] = 10186,	-- You're Hired!
						["qg"] = 19570,	-- Rocket-Chief Fuselage
						["coord"] = { 32.7, 65.0, NETHERSTORM },
					}),
					q(10266, {	-- Request for Assistance
						["sourceQuest"] = 10205,	-- Warp-Raider Nesaad
						["qg"] = 19880,	-- Nether-Stalker Khay-ji
						["coord"] = { 32.4, 64.2, NETHERSTORM },
					}),
					q(10435, {	-- Retrieving the Goods
						["sourceQuest"] = 10434,	-- The Dynamic Duo
						["qg"] = 20205,	-- Audi the Needle
						["coord"] = { 44.7, 36.7, NETHERSTORM },
						["groups"] = {
							objective(1, {	-- 0/10 Dome Generator Segment
								["providers"] = {
									{ "i", 29798 },	-- Dome Generator Segment
									{ "o", 184607 },	-- Dome Generator Segment
								},
							}),
							i(30284),	-- Audi's Embroidered Boots
							i(30285),	-- B.O.O.M. Operative's Belt
							i(30402),	-- Field Agent's Bracers
							i(30286),	-- Otherworldly Pauldrons
						},
					}),
					q(10267, {	-- Rightful Repossession
						["sourceQuest"] = 10266,	-- Request for Assistance
						["qg"] = 20066,	-- Gahruj
						["coord"] = { 46.7, 56.9, NETHERSTORM },
						["groups"] = {
							objective(1, {	-- 0/10 Box of Surveying Equipment
								["providers"] = {
									{ "i", 28913 },	-- Box of Surveying Equipment
									{ "o", 184031 },	-- Box of Surveying Equipment
								},
							}),
							i(30273),	-- Duro Footgear
							i(30272),	-- Eco-Dome Leggings
							i(30271),	-- Midrealm Hat
						},
					}),
					q(10417, {	-- Run a Diagnostic!
						["qg"] = 20810,	-- Mehrdad
						["coord"] = { 46.4, 56.4, NETHERSTORM },
						["groups"] = {
							objective(1, {	-- 0/1 Diagnostic Results
								["providers"] = {
									{ "i", 29741 },	-- Diagnostic Results
									{ "o", 184589 },	-- Diagnostic Equipment
								},
							}),
						},
					}),
					q(10405, {	-- S-A-B-O-T-A-G-E
						["sourceQuest"] = 10385,	-- Potential for Brain Damage = High
						["qg"] = 20482,	-- Image of Commander Ameer
						["coord"] = { 56.8, 38.7, NETHERSTORM },
						["groups"] = {
							objective(1, {	-- 0/1 Prepared Ethereum Wrapping
								["provider"] = { "i", 29591 },	-- Prepared Ethereum Wrapping
								["crs"] = {
									20458,	-- Ethereum Archon
									20459,	-- Ethereum Overlord
								},
							}),
						},
					}),
					q(10310, {	-- Sabotage the Warp-Gate!
						["sourceQuest"] = 10311,	-- Drijya Needs Your Help
						["qg"] = 20281,	-- Drijya
						["coord"] = { 48.1, 63.5, NETHERSTORM },
						["groups"] = {
							i(29978),	-- Consortium Combatant's Robes
							i(29980),	-- Midrealm Leggings
							i(29979),	-- Netherstorm Eyepatch
						},
					}),
					q(10316, {	-- Searching for Evidence
						["sourceQuest"] = 10312,	-- The Annals of Kirin'Var
						["qg"] = 19488,	-- Custodian Dieworth
						["coord"] = { 57.5, 86.3, NETHERSTORM },
					}),
					q(10274, {	-- Securing the Celestial Ridge
						["sourceQuest"] = 10273,	-- Troublesome Distractions
						["qg"] = 20110,	-- Tyri
						["coord"] = { 71.2, 35.1, NETHERSTORM },
						["groups"] = {
							objective(1, {	-- 0/1 Slay Veraku
								["provider"] = { "n", 18544 },	-- Veraku
							}),
							i(29812),	-- Blued Steel Gauntlets
							i(29810),	-- Dragon Crested Epaulets
							i(29811),	-- Goldenlink Bracers
							i(29808),	-- Shimmering Azure Boots
						},
					}),
					q(10342, {	-- Securing the Shaleskin Shale
						["qg"] = 19617,	-- Boots
						["coord"] = { 32.3, 63.9, NETHERSTORM },
						["groups"] = {
							objective(1, {	-- 0/5 Shaleskin Shale
								["provider"] = { "i", 29464 },	-- Shaleskin Shale
								["cr"] = 20210,	-- Shaleskin Flayer
							}),
						},
					}),
					q(10280, {	-- Special Delivery to Shattrath City
						["description"] = "Items do not show up on quest rewards but appearances are awarded upon turn in to A'dal.",
						["sourceQuest"] = 10276,	-- Full Triangle
						["qg"] = 20084,	-- Image of Nexus-Prince Haramad
						["coord"] = { 45.9, 36.0, NETHERSTORM },
						["groups"] = {
							i(30258),	-- Chestplate of A'dal
							i(30256),	-- Pants of the Naaru
							i(30257),	-- Shattrath Leggings
						},
					}),
					q(10440, {	-- Success!
						["sourceQuest"] = 10436,	-- All Clear!
						["qg"] = 20913,	-- Tashar
						["coord"] = { 44.7, 14.6, NETHERSTORM },
						["groups"] = {
							i(30520),	-- Gold-Trimmed Cuffs
							i(30293),	-- Heavenly Inspiration
							i(30290),	-- Leggings of Concentrated Power
							i(30291),	-- Nexus-Guard's Pauldrons
						},
					}),
					q(10209, {	-- Summoner Kanthin's Prize
						["sourceQuest"] = 10301,	-- Unlocking the Compendium
						["qg"] = 19644,	-- Image of Archmage Vargoth
						["groups"] = {
							objective(1, {	-- 0/1 Stone of Glacius
								["provider"] = { "i", 28479 },	-- Stone of Glacius
								["cr"] = 19657,	-- Summoner Kanthin
							}),
						},
					}),
					q(10335, {	-- Surveying the Ruins
						["qg"] = 20470,	-- Zephyrion
						["coord"] = { 44.7, 34.9, NETHERSTORM },
						["groups"] = {
							i(30255),	-- Chestguard of the Stormspire
							i(30253),	-- Ethereal Gloves
							i(30254),	-- Zephyrion's Belt
						},
					}),
					q(10857, {	-- Teleport This!
						["sourceQuest"] = 10856,	-- The Best Defense
						["qg"] = 20471,	-- Nether-Stalker Nauthis
						["coord"] = { 44.7, 34.9, NETHERSTORM },
						["groups"] = {
							i(31699),	-- Imbued Draenethyst Crystal
							i(31703),	-- Nether-Stalker's Blade
							i(31700),	-- Runed Silver Staff
							i(31701),	-- Saboteur's Axe
						},
					}),
					q(10430, {	-- Testing the Prototype
						["sourceQuest"] = 10424,	-- Diagnosis: Critical
						["qg"] = 20811,	-- Ghabar
						["coord"] = { 43.5, 35.1, NETHERSTORM },
					}),
					q(10199, {	-- That Little Extra Kick
						["sourceQuest"] = 10342,	-- Securing the Shaleskin Shale
						["qg"] = 19617,	-- Boots
						["coord"] = { 32.3, 63.9, NETHERSTORM },
						["groups"] = {
							objective(1, {	-- 0/5 Nether Ray Stinger
								["provider"] = { "i", 28417 },	-- Nether Ray Stinger
								["cr"] = 18880,	-- Nether Ray
							}),
							i(29999),	-- After Hours Pauldrons
							i(30002),	-- Boot's Boots
							i(30001),	-- Doc's Belt
							i(30000),	-- Mixologist's Gloves
						},
					}),
					q(10173, {	-- The Archmage's Staff
						["qg"] = 19217,	-- Ravandwyr
						["coord"] = { 31.4, 66.1, NETHERSTORM },
						["groups"] = {
							objective(1, {	-- 0/1 Archmage Vargoth's Staff
								["provider"] = { "i", 28292 },	-- Archmage Vargoth's Staff
								["cr"] = 19493,	-- Ekkorash the Inquisitor
							}),
						},
					}),
					q(10856, {	-- The Best Defense
						["sourceQuest"] = 10855,	-- Fel Reavers, No Thanks!
						["qg"] = 20471,	-- Nether-Stalker Nauthis
						["coord"] = { 44.7, 34.9, NETHERSTORM },
						["groups"] = {
							objective(1, {	-- 0/12 Wrathbringer slain
								["provider"] = { "n", 18858 },	-- Wrathbringer
							}),
						},
					}),
					q(10434, {	-- The Dynamic Duo
						["sourceQuest"] = 10433,	-- Keeping Up Appearances
						["qg"] = 20921,	-- Shauly Pore
						["coord"] = { 46.5, 56.0, NETHERSTORM },
					}),
					q(10339, {	-- The Ethereum
						["qg"] = 20448,	-- Commander Ameer
						["coord"] = { 59.4, 32.2, NETHERSTORM },
						["groups"] = {
							objective(1, {	-- 0/5 Ethereum Assassin slain
								["provider"] = { "n", 20452 },	-- Ethereum Assassin
							}),
							objective(2, {	-- 0/5 Ethereum Shocktrooper slain
								["provider"] = { "n", 20453 },	-- Ethereum Shocktrooper
							}),
							objective(3, {	-- 0/2 Ethereum Researcher slain
								["provider"] = { "n", 20456 },	-- Ethereum Researcher
							}),
							objective(4, {	-- 0/1 Captain Zovax slain
								["provider"] = { "n", 20727 },	-- Captain Zovax
							}),
						},
					}),
					q(10345, {	-- The Flesh Lies...
						["qg"] = 20551,	-- Agent Araxes
						["coord"] = { 59.4, 45.0, NETHERSTORM },
						["groups"] = {
							i(30519),	-- Boots of the Nexus Warden
							i(30352),	-- Demolisher's Bracers
							i(30341),	-- Flash Handler's Gauntlets
							i(30342),	-- Protectorate Waistband
						},
					}),
					q(10413, {	-- The Horrors of Pollution
						["provider"] = { "i", 29738 },	-- Vial of Void Horror Ooze
						["coord"] = { 54.6, 44.1, NETHERSTORM },
						["crs"] = { 20779 },	-- Congealed Void Horror
						["groups"] = {
							i(30338),	-- Diviner's Cloak
							i(30339),	-- Protectorate Assassin's Ring
							i(30340),	-- Starkiller's Bauble
						},
					}),
					q(10336, {	-- The Minions of Culuthas
						["qg"] = 20471,	-- Nether-Stalker Nauthis
						["coord"] = { 44.7, 34.9, NETHERSTORM },
						["groups"] = {
							objective(1, {	-- 0/10 Hound of Culuthas slain
								["provider"] = { "n", 20141 },	-- Hound of Culuthas
							}),
							objective(2, {	-- 0/5 Eye of Culuthas slain
								["provider"] = { "n", 20394 },	-- Eye of Culuthas
							}),
						},
					}),
					q(10188, {	-- The Sigil of Krasus
						["sourceQuest"] = 10174,	-- Curse of the Violet Tower
						["qg"] = 19644,	-- Image of Archmage Vargoth
						["groups"] = {
							objective(1, {	-- 0/1 Sigil of Krasus
								["provider"] = { "i", 28368 },	-- Sigil of Krasus
								["cr"] = 19593,	-- Spellbinder Maryana
							}),
							i(29773),	-- Battle-Mage's Helmet
							i(29774),	-- Kirin'Var Defender's Chausses
							i(29771),	-- Kirin'Var Journeyman's Belt
							i(29772),	-- Kirin'Var Scout's Belt
						},
					}),
					q(10222, {	-- The Sunfury Garrison
						["sourceQuest"] = 10188,	-- The Sigil of Krasus
						["qg"] = 19488,	-- Custodian Dieworth
						["coord"] = { 57.5, 86.3, NETHERSTORM },
						["groups"] = {
							objective(1, {	-- 0/10 Sunfury Archer slain
								["provider"] = { "n", 19707 },	-- Sunfury Archer
							}),
						},
					}),
					q(10343, {	-- The Unending Invasion
						["sourceQuest"] = 10174,	-- Curse of the Violet Tower
						["qg"] = 19489,	-- Lieutenant-Sorcerer Morran
						["coord"] = { 57.6, 86.3, NETHERSTORM },
						["groups"] = {
							objective(1, {	-- 0/1 Mana Bomb Fragment
								["providers"] = {
									{ "i", 29461 },	-- Mana Bomb Fragment
									{ "o", 184433 },	-- Mana Bomb Fragment
								},
							}),
						},
					}),
					q(10312, {	-- The Annals of Kirin'Var
						["sourceQuest"] = 10184,	-- Malevolent Remnants
						["qg"] = 19488,	-- Custodian Dieworth
						["coord"] = { 57.5, 86.3, NETHERSTORM },
						["groups"] = {
							objective(1, {	-- 0/1 Annals of Kirin'Var
								["provider"] = { "i", 29331 },	-- Annals of Kirin'Var
								["cr"] = 19543,	-- Battle-Mage Dathric
							}),
						},
					}),
					q(10423, {	-- To the Stormspire
						["sourceQuest"] = 10418,	-- Deal With the Saboteurs
						["qg"] = 20810,	-- Mehrdad
						["coord"] = { 46.4, 56.4, NETHERSTORM },
					}),
					q(10233, {	-- Torching Sunfury Hold
						["sourceQuest"] = 10192,	-- Krasus's Compendium
						["qg"] = 19489,	-- Lieutenant-Sorcerer Morran
						["coord"] = { 57.6, 86.3, NETHERSTORM },
					}),
					q(10269, {	-- Triangulation Point One
						["sourceQuest"] = 10268,	-- An Audience With the Prince
						["qg"] = 20084,	-- Image of Nexus-Prince Haramad
						["coord"] = { 45.9, 36.0, NETHERSTORM },
					}),
					q(10275, {	-- Triangulation Point Two
						["sourceQuest"] = 10269,	-- Triangulation Point One
						["qg"] = 20092,	-- Dealer Hazzin
						["coord"] = { 58.3, 31.3, NETHERSTORM },
					}),
					q(10273, {	-- Troublesome Distractions
						["sourceQuest"] = 10272,	-- A Promising Start
						["qg"] = 20110,	-- Tyri
						["coord"] = { 71.2, 35.1, NETHERSTORM },
						["groups"] = {
							objective(1, {	-- 0/1 Wind Trader Marid slain
								["provider"] = { "n", 20071 },	-- Wind Trader Marid
							}),
						},
					}),
					q(10301, {	-- Unlocking the Compendium
						["sourceQuest"] = 10192,	-- Krasus's Compendium
						["qg"] = 19644,	-- Image of Archmage Vargoth
						["groups"] = {
							objective(1, {	-- 0/1 Heliotrope Oculus
								["provider"] = { "i", 28475 },	-- Heliotrope Oculus
								["crs"] = {
									19650,	-- [PH]Sunfury Caster - Sunfury Hold
									19926,	-- Spellreaver Marathelle
								},
							}),
						},
					}),
					q(10261, {	-- Wanted: Annihilator Servo!
						["provider"] = { "o", 183811 },	-- Wanted Poster
						["coord"] = { 32.1, 64.7, NETHERSTORM },
						["groups"] = {
							objective(1, {	-- 0/1 Annihilator Servo
								["provider"] = { "i", 28787 },	-- Annihilator Servo
								["cr"] = 18856,	-- Arcane Annihilator
							}),
							i(30295),	-- Exotic Spiked Shoulders
							i(30296),	-- Lost Chestplate of the Reverent
							i(30294),	-- Red Pointy Hat
						},
					}),
					warchiefscommand(q(39201, {	-- Warchief's Command: Netherstorm!
						["timeline"] = { ADDED_6_2_0 },
						["races"] = HORDE_ONLY,
						["isBreadcrumb"] = true,
					})),
					q(10237, {	-- Warn Area 52!
						["sourceQuest"] = 10235,	-- Declawing Doomclaw
						["qg"] = 19728,	-- Mama Wheeler
						["coord"] = { 46.6, 56.5, NETHERSTORM },
					}),
					q(10205, {	-- Warp-Raider Nesaad
						["sourceQuest"] = 10262,	-- A Heap of Ethereals
						["qg"] = 19880,	-- Nether-Stalker Khay'ji
						["coord"] = { 32.4, 64.2, NETHERSTORM },
						["groups"] = {
							objective(1, {	-- 0/1 Warp-Raider Nesaad slain
								["provider"] = { "n", 19641 },	-- Warp-Raider Nesaad
							}),
							i(30266),	-- Zaxxis Boots
							i(30265),	-- Zaxxis Bracers
							i(30267),	-- Zaxxis Gloves
						},
					}),
					q(10429, {	-- When Nature Goes Too Far
						["sourceQuest"] = 10427,	-- Creatures of the Eco-Domes
						["qg"] = 20871,	-- Aurine Moonblaze
						["coord"] = { 42.3, 32.6, NETHERSTORM },
						["groups"] = {
							objective(1, {	-- 0/1 Hulking Hydra Heart
								["provider"] = { "i", 29768 },	-- Hulking Hydra Heart
								["cr"] = 20775,	-- Markaru
							}),
						},
					}),
					q(10337, {	-- When the Cows Come Home
						["sourceQuest"] = 10334,	-- Needs More Cowbell
						["qg"] = 20415,	-- Bessy
						["coord"] = { 59.1, 78.8, NETHERSTORM },
						["groups"] = {
							i(29806),	-- Cowpoke's Riding Gloves
							i(29807),	-- Engraved Cattleman's Buckle
							i(30523),	-- Hotshot Cattle Prod
							i(30400),	-- Thadell's Bracers
							i(29804),	-- Wrangler's Boots
						},
					}),
					q(10248, {	-- You, Robot
						["sourceQuest"] = 10247,	-- Doctor Vomisa, Ph.T.
						["qg"] = 19832,	-- Doctor Vomisa, Ph.T.
						["coord"] = { 37.3, 63.6, NETHERSTORM },
					}),
					q(10186, {	-- You're Hired!
						["sourceQuests"] = {
							11042,	-- A Mystifying Vision
							11037,	-- A Strange Vision
							-- #if AFTER 6.2.0.20182
							39202,	-- Hero's Call: Netherstorm!
							-- #endif
							10183,	-- Off To Area 52
							11036,	-- Out of This World Produce!
							11040,	-- Parts for the Rocket-Chief
							-- #if AFTER 6.2.0.20182
							39201,	-- Warchief's Command: Netherstorm!
							-- #endif
						},
						["qg"] = 19570,	-- Rocket-Chief Fuselage
						["coord"] = { 32.7, 65.0, NETHERSTORM },
						["groups"] = {
							objective(1, {	-- 0/10 Etherlithium Matrix Crystal
								["providers"] = {
									{ "i", 28364 },	-- Etherlithium Matrix Crystal
									{ "o", 183767 },	-- Etherlithium Matrix Crystal
								},
							}),
							i(30225),	-- Junior Technician 3rd Grade Bracers
							i(30224),	-- Junior Technician 3rd Grade Gloves
							i(30515),	-- Junior Technician 3rd Grade Goggles
							i(30218),	-- Junior Technician 3rd Grade Shoulders
						},
					}),
				}),
				n(RARES, {
					n(18697, {	-- Chief Engineer Lorthander
						["coords"] = {
							{ 26.8, 36.0, NETHERSTORM },
							{ 27.4, 38.6, NETHERSTORM },
							{ 28.0, 39.8, NETHERSTORM },
							{ 26.2, 40.6, NETHERSTORM },
							{ 26.4, 42.8, NETHERSTORM },
							{ 59.2, 62.4, NETHERSTORM },
							{ 58.6, 64.0, NETHERSTORM },
							{ 61.2, 65.4, NETHERSTORM },
							{ 59.2, 67.2, NETHERSTORM },
							{ 49.0, 81.4, NETHERSTORM },
							{ 48.2, 81.6, NETHERSTORM },
							{ 46.2, 80.0, NETHERSTORM },
							{ 46.6, 83.2, NETHERSTORM },
							{ 47.4, 84.6, NETHERSTORM },
						},
						["groups"] = {
							i(31201),	-- Illidari Cloak
						},
					}),
					n(18698, {	-- Ever-Core the Punisher
						["coords"] = {
							{ 20.6, 68.2, NETHERSTORM },
							{ 21.2, 76.4, NETHERSTORM },
							{ 24.0, 75.6, NETHERSTORM },
							{ 26.8, 72.8, NETHERSTORM },
							{ 26.8, 65.0, NETHERSTORM },
							{ 24.4, 41.4, NETHERSTORM },
							{ 27.2, 42.6, NETHERSTORM },
							{ 30.8, 41.8, NETHERSTORM },
							{ 61.0, 46.6, NETHERSTORM },
							{ 57.6, 42.6, NETHERSTORM },
							{ 57.6, 39.0, NETHERSTORM },
							{ 61.2, 32.2, NETHERSTORM },
						},
						["groups"] = {
							i(31203),	-- Arcane Loop
						},
					}),
					n(20932, {	-- Nuramoc
						["coords"] = {
							{ 23.2, 78.8, NETHERSTORM },
							{ 26.8, 81.4, NETHERSTORM },
							{ 35.6, 78.0, NETHERSTORM },
							{ 40.4, 77.2, NETHERSTORM },
							{ 44.2, 71.8, NETHERSTORM },
							{ 54.2, 59.8, NETHERSTORM },
							{ 57.2, 60.2, NETHERSTORM },
							{ 65.6, 58.2, NETHERSTORM },
							{ 67.6, 60.4, NETHERSTORM },
							{ 33.0, 32.0, NETHERSTORM },
							{ 34.4, 27.6, NETHERSTORM },
							{ 35.6, 24.4, NETHERSTORM },
							{ 35.2, 19.6, NETHERSTORM },
						},
						["groups"] = {
							i(31212),	-- Chimaerahide Leggings
							i(31211),	-- Chimaerahide Pants
							i(31210),	-- Chimaerascale Legguards
							i(31209),	-- Chimaerascale Legplates
						},
					}),
				}),
				n(VENDORS, {
					n(19540, {	-- Asarnan <Enchanting Trainer>
						["coord"] = { 44.2, 33.6, NETHERSTORM },
					}),
					n(54649, {	-- Big Zokk Torquewrench <Classic Weapons>
						["coord"] = { 33.2, 64.0, NETHERSTORM },
						["timeline"] = { ADDED_4_3_0 },
						-- #if NOT ANYCLASSIC
						["description"] = "Items on this vendor require Legionnaire/Knight-Captain rank or higher to purchase.",
						["groups"] = applyclassicphase(CATA_PHASE_HOUR_OF_TWILIGHT, bubbleDown({ ["timeline"] = { ADDED_4_3_0 } }, pvp({
							a(i(77549)),	-- Replica Grand Marshal's Demolisher
							a(i(77550)),	-- Replica Grand Marshal's Swiftblade
							a(i(77551)),	-- Replica Grand Marshal's Dirk
							a(i(77552)),	-- Replica Grand Marshal's Mageblade
							a(i(77553)),	-- Replica Grand Marshal's Warhammer
							a(i(77554)),	-- Replica Grand Marshal's Sunderer
							a(i(77555)),	-- Replica Grand Marshal's Hand Cannon
							a(i(77556)),	-- Replica Grand Marshal's Stave
							a(i(77557)),	-- Replica Grand Marshal's Hand Blade
							a(i(77558)),	-- Replica Grand Marshal's Punisher
							a(i(77560)),	-- Replica Grand Marshal's Claymore
							a(i(77561)),	-- Replica Grand Marshal's Longsword
							a(i(77562)),	-- Replica Grand Marshal's Handaxe
							a(i(77563)),	-- Replica Grand Marshal's Battle Hammer
							a(i(77564)),	-- Replica Grand Marshal's Glaive
							a(i(77565)),	-- Replica Grand Marshal's Bullseye
							a(i(77566)),	-- Replica Grand Marshal's Repeater
							a(i(77594)),	-- Replica Grand Marshal's Tome of Restoration
							a(i(77595)),	-- Replica Grand Marshal's Tome of Power
							a(i(77596)),	-- Replica Grand Marshal's Aegis
							h(i(77567)),	-- Replica High Warlord's Battle Mace
							h(i(77568)),	-- Replica High Warlord's Spellblade
							h(i(77569)),	-- Replica High Warlord's Quickblade
							h(i(77571)),	-- Replica High Warlord's Destroyer
							h(i(77572)),	-- Replica High Warlord's Pig Sticker
							h(i(77573)),	-- Replica High Warlord's Pulverizer
							h(i(77574)),	-- Replica High Warlord's Battle Axe
							h(i(77575)),	-- Replica High Warlord's Claw
							h(i(77576)),	-- Replica High Warlord's Razor
							h(i(77577)),	-- Replica High Warlord's Greatsword
							h(i(77578)),	-- Replica High Warlord's Recurve
							h(i(77579)),	-- Replica High Warlord's Street Sweeper
							h(i(77580)),	-- Replica High Warlord's Cleaver
							h(i(77581)),	-- Replica High Warlord's War Staff
							h(i(77582)),	-- Replica High Warlord's Blade
							h(i(77584)),	-- Replica High Warlord's Bludgeon
							h(i(77585)),	-- Replica High Warlord's Crossbow
							h(i(77592)),	-- Replica High Warlord's Tome of Mending
							h(i(77593)),	-- Replica High Warlord's Tome of Destruction
							h(i(77597)),	-- Replica High Warlord's Shield Wall
						}))),
						-- #endif
					}),
					applyclassicphase(WRATH_PHASE_FOUR, n(33933, {	-- Big Zokk Torquewrench <Arena Vendor> // Original S8 Vendor // Relentless Gladiator: Season 7 Gladiator Gear
						["coord"] = { 33.2, 64.1, NETHERSTORM },
						-- #if BEFORE 4.0.3.13277
						["sym"] = {{"sub", "pvp_gear_base", EXPANSION.WRATH, SEASON_RELENTLESS, PVP_GLADIATOR },{ "pop" }},	-- Relentless Gladiator's Set
						-- #endif
						["timeline"] = { ADDED_3_3_2, REMOVED_4_0_3 },
					})),
					applyclassicphase(WRATH_PHASE_THREE, n(33932, {	-- Big Zokk Torquewrench <Arena Vendor> // Original S7 Vendor // Furious Gladiator: Season 6 Gladiator Gear
						["coord"] = { 33.2, 64.1, NETHERSTORM },
						-- #if BEFORE 4.0.3.13277
						["sym"] = {{"sub", "pvp_gear_base", EXPANSION.WRATH, SEASON_FURIOUS, PVP_GLADIATOR },{ "pop" }},	-- Furious Gladiator's Set
						-- #endif
						["timeline"] = { ADDED_3_2_0, REMOVED_4_0_3 },
					})),
					applyclassicphase(WRATH_PHASE_TWO, n(33916, {	-- Big Zokk Torquewrench <Arena Vendor> // Original S6 Vendor // Deadly Gladiator: Season 5 Gladiator Gear
						["coord"] = { 33.2, 64.1, NETHERSTORM },
						-- #if BEFORE 4.0.3.13277
						["sym"] = {{"sub", "pvp_gear_base", EXPANSION.WRATH, SEASON_DEADLY, PVP_GLADIATOR },{ "pop" }},	-- Deadly Gladiator's Set
						-- #endif
						["timeline"] = { ADDED_3_1_0, REMOVED_4_0_3 },
					})),
					applyclassicphase(WRATH_PHASE_ONE, n(32355, {	-- Big Zokk Torquewrench <Arena Vendor> // Original S5 Vendor // Hateful Gladiator: Season 5 Gladiator Gear
						["coord"] = { 33.2, 64.1, NETHERSTORM },
						-- #if BEFORE 4.0.3.13277
						["sym"] = {{"sub", "pvp_gear_base", EXPANSION.WRATH, SEASON_DEADLY, PRE_SEASON_HATEFUL },{ "pop" }},	-- Hateful Gladiator's Set
						-- #endif
						["timeline"] = { ADDED_3_0_2, REMOVED_4_0_3 },
					})),
					n(26352, {	-- Big Zokk Torquewrench <Arena Vendor> Original BC S4 VENDOR
						["coord"] = { 33.2, 64.1, NETHERSTORM },
						-- #if BEFORE WRATH
						["sym"] = {
							{"sub", "pvp_gear_base", EXPANSION.TBC, SEASON_BRUTAL, PVP_GLADIATOR },	-- Brutal Gladiator's Set
							-- #if ANYCLASSIC
							-- For classic they added every season's gear to him... oh lord.
							{ "finalize" },
							{"sub", "pvp_gear_base", EXPANSION.TBC, SEASON_VENGEFUL, PVP_GLADIATOR }, { "finalize" },	-- Vengeful Gladiator's Set
							{"sub", "pvp_gear_base", EXPANSION.TBC, SEASON_MERCILESS, PVP_GLADIATOR }, { "finalize" },	-- Merciless Gladiator's Set
							{"sub", "pvp_gear_base", EXPANSION.TBC, SEASON_GLADIATOR, PVP_GLADIATOR }, { "finalize" },	-- Gladiator's Set
							-- #else
							{ "pop" },
							-- #endif
						},
						-- #endif
						["timeline"] = { ADDED_2_4_2, REMOVED_3_0_2 },
					}),
					-- #if ANYCLASSIC
					-- mapped from PvP
					n(107619, {	-- Blaze Magmaburn <Brutal and Guardian Gladiator>
						["coord"] = { 33.2, 64.0, NETHERSTORM },
						["sym"] = {{"sub", "pvp_gear_base", EXPANSION.TBC, SEASON_BRUTAL, PVP_GLADIATOR },{"merge"},{ "pop" }},	-- Brutal Gladiator's Set
						["timeline"] = { ADDED_7_0_3 },
					}),
					-- #endif
					n(19536, {	-- Dealer Jadyan <Exotic Weapons>
						["coord"] = { 44.0, 36.6, NETHERSTORM },
						["groups"] = {
							i(29380, {	-- Ethereum Phase Blade
								["isLimited"] = true,
							}),
							i(29377, {	-- Ethereum Phase-Spear
								["isLimited"] = true,
							}),
							i(78348, {	-- Formula: Enchant Weapon - Executioner (RECIPE!)
								["timeline"] = { ADDED_4_3_0 },
							}),
							i(29371, {	-- Nexus-Claw
								["isLimited"] = true,
							}),
							i(29391, {	-- Pulse Dagger
								["isLimited"] = true,
							}),
							i(29378, {	-- Starheart Baton
								["isLimited"] = true,
							}),
							i(29372, {	-- Void-Talon
								["isLimited"] = true,
							}),
						},
					}),
					n(19537, {	-- Dealer Malij <Enchanting Supplies>
						["coord"] = { 44.2, 34.0, NETHERSTORM },
					}),
					n(20980, {	-- Dealer Rashaad <Exotic Creatures>
						["coord"] = { 43.4, 35.2, NETHERSTORM },
						["groups"] = {
							i(29958),	-- Blue Dragonhawk Hatchling (PET!)
							i(29364),	-- Brown Rabbit (PET!)
							i(8490),	-- Siamese Cat (PET!)
							i(10392),	-- Crimson Snake (PET!)
							i(29363, {	-- Mana Wyrmling (PET!)
								["timeline"] = { ADDED_2_0_1},
							}),
							i(8495),	-- Senegal (PET!)
							i(29902),	-- Red Moth (PET!)
							i(10393),	-- Undercity Cockroach (PET!)
						},
					}),
					n(40209, {	-- Grex Brainboiler <Classic Alliance Cloth & Leather>
						["coord"] = { 33.0, 64.0, NETHERSTORM },
						["timeline"] = { ADDED_4_0_3 },
						-- #if NOT ANYCLASSIC
						["description"] = "Items on this vendor require Legionnaire/Knight-Captain rank or higher to purchase.",
						["groups"] = applyclassicphase(CATA_PHASE_HOUR_OF_TWILIGHT, bubbleDown({ ["timeline"] = { ADDED_4_3_0 } }, pvp({
							i(77670),	-- Replica Field Marshal's Dragonhide Breastplate
							i(77692),	-- Replica Field Marshal's Satin Mantle
							i(77710),	-- Replica Field Marshal's Coronal
							i(77709),	-- Replica Field Marshal's Dreadweave Shoulders
							i(77701),	-- Replica Field Marshal's Leather Chestpiece
							i(77700),	-- Replica Field Marshal's Leather Mask
							i(77697),	-- Replica Field Marshal's Leather Epaulets
							i(77695),	-- Replica Field Marshal's Headdress
							i(77694),	-- Replica Field Marshal's Satin Vestments
							i(77712),	-- Replica Field Marshal's Dreadweave Robe
							i(77682),	-- Replica Field Marshal's Coronet
							i(77679),	-- Replica Field Marshal's Silk Spaulders
							i(77678),	-- Replica Field Marshal's Silk Vestments
							i(77671),	-- Replica Field Marshal's Dragonhide Helmet
							i(77667),	-- Replica Field Marshal's Dragonhide Spaulders
							i(77683),	-- Replica Marshal's Silk Footwraps
							i(77711),	-- Replica Marshal's Dreadweave Leggings
							i(77708),	-- Replica Marshal's Dreadweave Boots
							i(77742),	-- Replica Lieutenant Commander's Dragonhide Headguard
							i(77713),	-- Replica Marshal's Dreadweave Gloves
							i(77666),	-- Replica Marshal's Dragonhide Gauntlets
							i(77784),	-- Replica Lieutenant Commander's Silk Cowl
							i(77668),	-- Replica Marshal's Dragonhide Legguards
							i(77669),	-- Replica Marshal's Dragonhide Boots
							i(77850),	-- Replica Lieutenant Commander's Dreadweave Spaulders
							i(77844),	-- Replica Lieutenant Commander's Dreadweave Cowl
							i(77820),	-- Replica Lieutenant Commander's Leather Helm
							i(77699),	-- Replica Marshal's Leather Footguards
							i(77680),	-- Replica Marshal's Silk Leggings
							i(77681),	-- Replica Marshal's Silk Gloves
							i(77800),	-- Replica Lieutenant Commander's Satin Hood
							i(77748),	-- Replica Lieutenant Commander's Dragonhide Shoulders
							i(77690),	-- Replica Marshal's Satin Sandals
							i(77691),	-- Replica Marshal's Satin Pants
							i(77801),	-- Replica Lieutenant Commander's Satin Mantle
							i(77693),	-- Replica Marshal's Satin Gloves
							i(77698),	-- Replica Marshal's Leather Handgrips
							i(77813),	-- Replica Lieutenant Commander's Leather Shoulders
							i(77696),	-- Replica Marshal's Leather Leggings
							i(77812),	-- Replica Knight-Captain's Leather Legguards
							i(77811),	-- Replica Knight-Captain's Leather Chestpiece
							i(77799),	-- Replica Knight-Captain's Satin Tunic
							i(77797),	-- Replica Knight-Captain's Satin Legguards
							i(77785),	-- Replica Knight-Captain's Silk Tunic
							i(77745),	-- Replica Knight-Captain's Dragonhide Leggings
							i(77847),	-- Replica Knight-Captain's Dreadweave Legguards
							i(77848),	-- Replica Knight-Captain's Dreadweave Tunic
							i(77777),	-- Replica Knight-Captain's Silk Legguards
							i(77720),	-- Replica Knight-Lieutenant's Dragonhide Grips
							i(120993, {	-- Replica Knight-Lieutenant's Leather Clasp
								["timeline"] = { ADDED_6_1_0 },
							}),
							i(120992, {	-- Replica Knight-Lieutenant's Dragonhide Belt
								["timeline"] = { ADDED_6_1_0 },
							}),
							i(120996, {	-- Replica Knight-Lieutenant's Dreadweave Wrap
								["timeline"] = { ADDED_6_1_0 },
							}),
							i(120995, {	-- Replica Knight-Lieutenant's Satin Belt
								["timeline"] = { ADDED_6_1_0 },
							}),
							i(120994, {	-- Replica Knight-Lieutenant's Silk Cinch
								["timeline"] = { ADDED_6_1_0 },
							}),
							i(77733),	-- Replica Knight-Lieutenant's Dreadweave Handwraps
							i(77732),	-- Replica Knight-Lieutenant's Dreadweave Walkers
							i(77731),	-- Replica Knight-Lieutenant's Leather Grips
							i(77730),	-- Replica Knight-Lieutenant's Leather Walkers
							i(77729),	-- Replica Knight-Lieutenant's Satin Walkers
							i(77728),	-- Replica Knight-Lieutenant's Satin Handwraps
							i(77725),	-- Replica Knight-Lieutenant's Silk Handwraps
							i(77724),	-- Replica Knight-Lieutenant's Silk Walkers
							i(77721),	-- Replica Knight-Lieutenant's Dragonhide Treads
							i(77599),	-- Replica Knight-Lieutenant's Dragonhide Footwraps
							i(77598),	-- Replica Lieutenant Commander's Dragonhide Epaulets
							i(77651),	-- Replica Knight-Lieutenant's Dreadweave Boots
							i(77650),	-- Replica Knight-Lieutenant's Dreadweave Gloves
							i(77649),	-- Replica Knight-Captain's Dreadweave Leggings
							i(77648),	-- Replica Knight-Captain's Dreadweave Robe
							i(77647),	-- Replica Lieutenant Commander's Dreadweave Mantle
							i(77600),	-- Replica Lieutenant Commander's Dragonhide Shroud
							i(77639),	-- Replica Sergeant Major's Leather Armsplints
							i(77638),	-- Replica Knight-Captain's Leather Legguards
							i(77637),	-- Replica Knight-Lieutenant's Leather Boots
							i(77636),	-- Replica Lieutenant Commander's Leather Spaulders
							i(77635),	-- Replica Lieutenant Commander's Leather Veil
							i(77634),	-- Replica Knight-Lieutenant's Leather Gauntlets
							i(77633),	-- Replica Knight-Captain's Leather Armor
							i(77632),	-- Replica Knight-Lieutenant's Satin Boots
							i(77631),	-- Replica Lieutenant Commander's Satin Amice
							i(77630),	-- Replica Knight-Captain's Satin Robes
							i(77652),	-- Replica Lieutenant Commander's Headguard
							i(77629),	-- Replica Lieutenant Commander's Diadem
							i(77628),	-- Replica Knight-Captain's Satin Leggings
							i(77627),	-- Replica Knight-Lieutenant's Satin Gloves
							i(77620),	-- Replica Sergeant Major's Silk Cuffs
							i(77619),	-- Replica Lieutenant Commander's Crown
							i(77618),	-- Replica Knight-Captain's Silk Leggings
							i(77617),	-- Replica Knight-Lieutenant's Silk Gloves
							i(77616),	-- Replica Knight-Lieutenant's Silk Boots
							i(77615),	-- Replica Lieutenant Commander's Silk Spaulders
							i(77614),	-- Replica Knight-Captain's Silk Raiment
							i(77601),	-- Replica Knight-Captain's Dragonhide Leggings
							i(77604),	-- Replica Sergeant Major's Dragonhide Armsplints
							i(77603),	-- Replica Knight-Lieutenant's Dragonhide Gloves
							i(77602),	-- Replica Knight-Captain's Dragonhide Tunic
							i(77605),	-- Replica Sergeant Major's Dragonhide Armsplints
							i(77640),	-- Replica Sergeant Major's Leather Armsplints
							i(77787),	-- Replica Sergeant Major's Silk Cuffs
						}))),
						-- #endif
					}),
					applyclassicphase(WRATH_PHASE_FOUR, n(34094, {	-- Grex Brainboiler <Veteran Arena Vendor> / <Exceptional Arena Weaponry> [WRATH] Original WOTLK S8 ELITE VENDOR
						["coord"] = { 33.1, 64.0, NETHERSTORM },
						-- #if BEFORE 4.0.3.13277
						["sym"] = {{"sub", "pvp_gear_base", EXPANSION.WRATH, SEASON_WRATHFUL, PVP_ELITE },{"merge"}},	-- Wrathful Gladiator's Elite Set
						-- #endif
						["timeline"] = { ADDED_3_3_2, REMOVED_4_0_3 },
					})),
					applyclassicphase(WRATH_PHASE_THREE, n(34091, {	-- Grex Brainboiler <Veteran Arena Vendor> / <Exceptional Arena Weaponry> [WRATH] Original WOTLK S7 ELITE VENDOR
						["coord"] = { 33.1, 64.0, NETHERSTORM },
						-- #if BEFORE 4.0.3.13277
						["sym"] = {{"sub", "pvp_gear_base", EXPANSION.WRATH, SEASON_RELENTLESS, PVP_ELITE },{"merge"}},	-- Relentless Gladiator's Elite Set
						-- #endif
						["timeline"] = { ADDED_3_2_0, REMOVED_4_0_3 },
					})),
					applyclassicphase(WRATH_PHASE_TWO, n(34089, {	-- Grex Brainboiler <Veteran Arena Vendor> / <Exceptional Arena Weaponry> [WRATH] Original WOTLK S6 ELITE VENDOR
						["coord"] = { 33.1, 64.0, NETHERSTORM },
						-- #if BEFORE 4.0.3
						["sym"] = {{"sub", "pvp_gear_base", EXPANSION.WRATH, SEASON_FURIOUS, PVP_ELITE },{"merge"}},	-- Furious Gladiator's Elite Set
						-- #endif
						["timeline"] = { ADDED_3_1_0, REMOVED_4_0_3 },
					})),
					applyclassicphase(WRATH_PHASE_ONE, n(32356, {	-- Grex Brainboiler <Veteran Arena Vendor> [WRATH] Original WOTLK S5 VENDOR
						["coord"] = { 33.1, 64.0, NETHERSTORM },
						-- #if BEFORE 4.0.3.13277
						["sym"] = {
							{"sub", "pvp_gear_base", EXPANSION.WRATH, SEASON_DEADLY, PVP_GLADIATOR },{ "pop" },		-- Deadly Gladiator's Set
							-- #if ANYCLASSIC
							{ "select", "itemID", 201993 },	-- Deadly Gladiator's Tabard (Wrath Classic Only)
							-- #endif
						},
						-- #endif
						["timeline"] = { ADDED_3_0_2, REMOVED_4_0_3 },
					})),
					-- #if ANYCLASSIC
					-- mapped from PvP
					n(107599, {	-- Izzee the 'Clutch' <Merciless and Veteran's Gladiator>
						["coord"] = { 33.0, 64.2, NETHERSTORM },
						["sym"] = {{"sub", "pvp_gear_base", EXPANSION.TBC, SEASON_MERCILESS, PVP_GLADIATOR },{"merge"},{ "pop" }},	-- Merciless Gladiator's Set
						["timeline"] = { ADDED_7_0_3 },
					}),
					-- #endif
					n(21493, {	-- Kablamm Farflinger <Transportation Engineer>
						["requireSkill"] = GOBLIN_ENGINEERING,
						["description"] = "Goblin Engineers can speak to Kablamm to learn the recipe.",
						["coord"] = { 32.9, 63.7, NETHERSTORM },
						["groups"] = {
							r(36954),	-- Dimensional Ripper - Area 52
						},
					}),
					n(20242, {	-- Karaaz <Consortium Quartermaster>
						["coord"] = { 43.6, 34.4, NETHERSTORM },
						["groups"] = bubbleDownClassicRep(FACTION_THE_CONSORTIUM, {
							{		-- Neutral
							}, {	-- Friendly
								i(23136),	-- Design: Luminous Flame Spessarite [TBC] / Design: Reckless Flame Spessarite [Cata+] (RECIPE!)
								i(23146),	-- Design: Shifting Shadow Draenite (RECIPE!)
								i(25732),	-- Pattern: Fel Leather Gloves (RECIPE!)
							}, {	-- Honored
								i(23134),	-- Design: Delicate Blood Garnet (RECIPE!)
								-- #if BEFORE CATA
								i(23155),	-- Design: Lustrous Azure Moonstone [TBC] / Design: Sparkling Azure Moonstone [Cata+] (RECIPE!)
								-- #else
								i(23155),	-- Design: Sparkling Azure Moonstone [Cata+] / Design: Lustrous Azure Moonstone [TBC] (RECIPE!)
								i(23150),	-- Design: Subtle Golden Draenite [Cata+] / Design: Thick Golden Draenite [TBC] (RECIPE!)
								-- #endif
								i(25908),	-- Design: Swift Skyfire Diamond (RECIPE!)
								-- #if BEFORE CATA
								i(23150),	-- Design: Thick Golden Draenite [TBC] / Design: Subtle Golden Draenite [Cata+] (RECIPE!)
								-- #endif
								i(28274),	-- Formula: Enchant Cloak - Spell Penetration [TBC] / Formula: Enchant Cloak - PvP Power [Cata+] (RECIPE!)
								applyclassicphase(TBC_PHASE_THREE, i(22552, {["timeline"]={ADDED_2_1_0}})),	-- Formula: Enchant Weapon - Major Striking (RECIPE!)
								i(29456),	-- Gift of the Ethereal
								i(24314),	-- Pattern: Bag of Jewels (RECIPE!)
								i(25733),	-- Pattern: Fel Leather Boots (RECIPE!)
								i(29118, {	-- Smuggler's Ammo Pouch
									["timeline"] = { REMOVED_4_0_1 },
								}),
							}, {	-- Revered
								i(29115),	-- Consortium Blaster
								i(33156),	-- Design: Crimson Sun (RECIPE!)
								i(33305),	-- Design: Don Julio's Heart (RECIPE!)
								i(24178),	-- Design: Pendant of the Null Rune (RECIPE!)
								i(138796, {	-- Illusion: Executioner (ILLUSION!)
									["timeline"] = { ADDED_7_0_3 },
								}),
								i(29116),	-- Nomad's Leggings
								i(25734),	-- Pattern: Fel Leather Leggings (RECIPE!)
								i(23874),	-- Schematic: Elemental Seaforium Charge (RECIPE!)
								i(29117),	-- Stormspire Vest
							}, {	-- Exalted
								i(31776),	-- Consortium Tabard
								i(33622),	-- Design: Relentless Earthstorm Diamond (RECIPE!)
								i(29121),	-- Guile of Khoraazi
								i(29119),	-- Haramad's Bargain
								i(29122),	-- Nether Runner's Cowl
								i(29457),	-- Nethershard
							},
						}),
					}),
					-- #if ANYCLASSIC
					-- mapped from PvP
					n(54650, {	-- Kezzik the Striker <Gladiator and General's Gladiator> [Legion+] / Kezzik the Striker <Gladiator, Merciless, & Vengeful Gear>
						["coord"] = { 33.0, 64.2, NETHERSTORM },
						["sym"] = {
							{"sub", "pvp_gear_base", EXPANSION.TBC, SEASON_GLADIATOR, PVP_GLADIATOR },{"merge"},	-- Gladiator's Set
							-- #if BEFORE LEGION
							{ "finalize" },
							{"sub", "pvp_gear_base", EXPANSION.TBC, SEASON_MERCILESS, PVP_GLADIATOR },{"merge"},	-- Merciless Gladiator's Set
							{"sub", "pvp_gear_base", EXPANSION.TBC, SEASON_VENGEFUL, PVP_GLADIATOR },{"merge"},	-- Vengeful Gladiator's Set
							-- #else
							{"exclude","itemID",
								28379,	-- Sergeant's Heavy Cape (A)
								28378,	-- Sergeant's Heavy Cape (H)
								28380,	-- Sergeant's Heavy Cloak (A)
								28377,	-- Sergeant's Heavy Cloak (H)
							},
							{ "pop" },
							-- #endif
						},
						["timeline"] = { ADDED_4_3_0 },
					}),
					-- #endif
					applyclassicphase(WRATH_PHASE_FOUR, n(33940, {	-- Kezzik the Striker <Veteran Arena Vendor> [WRATH] Original WOTLK S8 VENDOR
						["coord"] = { 33.1, 64.3, NETHERSTORM },
						-- #if BEFORE 4.0.3.13277
						["sym"] = {{"sub", "pvp_gear_base", EXPANSION.WRATH, SEASON_WRATHFUL, PVP_GLADIATOR },{"pop"}},	-- Wrathful Gladiator's Set
						-- #endif
						["timeline"] = { ADDED_3_3_2, REMOVED_4_0_3 },
					})),
					applyclassicphase(WRATH_PHASE_THREE, n(33931, {	-- Kezzik the Striker <Veteran Arena Vendor> [WRATH] Original WOTLK S7 VENDOR
						["coord"] = { 33.1, 64.3, NETHERSTORM },
						-- #if BEFORE 4.0.3.13277
						["sym"] = {{"sub", "pvp_gear_base", EXPANSION.WRATH, SEASON_RELENTLESS, PVP_GLADIATOR },{"pop"}},	-- Relentless Gladiator's Set
						-- #endif
						["timeline"] = { ADDED_3_2_0, REMOVED_4_0_3 },
					})),
					applyclassicphase(WRATH_PHASE_TWO, n(33918, {	-- Kezzik the Striker <Veteran Arena Vendor> [WRATH] Original WOTLK S6 VENDOR
						["coord"] = { 33.1, 64.3, NETHERSTORM },
						-- #if BEFORE 4.0.3
						["sym"] = {{"sub", "pvp_gear_base", EXPANSION.WRATH, SEASON_FURIOUS, PVP_GLADIATOR },{"pop"}},	-- Furious Gladiator's Set
						-- #endif
						["timeline"] = { ADDED_3_1_0, REMOVED_4_0_3 },
					})),
					applyclassicphase(WRATH_PHASE_ONE, n(32405, {	-- Kezzik the Striker <Veteran Arena Vendor> [WRATH] Original WOTLK S5 VENDOR
						["coord"] = { 33.1, 64.3, NETHERSTORM },
						-- #if BEFORE 4.0.3
						["sym"] = {{"sub", "pvp_gear_base", EXPANSION.WRATH, SEASON_DEADLY, PVP_GLADIATOR },{"pop"}},	-- Deadly Gladiator's Set
						-- #endif
						["timeline"] = { ADDED_3_0_2, REMOVED_4_0_3 },
					})),
					-- #if ANYCLASSIC
					-- mapped from PvP
					n(107610, {	-- Kitzie Crankshot <Vengeful and Vindicator's Gladiator>
						["coord"] = { 33.0, 64.2, NETHERSTORM },
						["sym"] = {{"sub", "pvp_gear_base", EXPANSION.TBC, SEASON_VENGEFUL, PVP_GLADIATOR },{"merge"},{"pop"}},	-- Vengeful Gladiator Set
						["timeline"] = { ADDED_7_0_3 },
					}),
					-- #endif
					n(23396, {	-- Krixel Pinchwhistle <Classic Alliance Mail & Plate> / Krixel Pinchwhistle <Arena Vendor> [TBC]
						["coord"] = { 33.0, 64.0, NETHERSTORM },
						-- #if BEFORE WRATH
						["sym"] = {{"sub", "pvp_gear_base", EXPANSION.TBC, SEASON_GLADIATOR, PVP_GLADIATOR },{"pop"}},	-- Gladiator's Set
						-- #endif
						["timeline"] = { REMOVED_3_0_2, ADDED_4_3_0 },
						-- #if AFTER 4.3.0.15005
						-- #if NOT ANYCLASSIC
						["description"] = "Items on this vendor require Legionnaire/Knight-Captain rank or higher to purchase.",
						["groups"] = bubbleDown({ ["timeline"] = { ADDED_4_3_0 } }, applyclassicphase(CATA_PHASE_HOUR_OF_TWILIGHT, pvp({
							i(77718),	-- Replica Field Marshal's Plate Shoulderguards
							i(77673),	-- Replica Field Marshal's Chain Spaulders
							i(77714),	-- Replica Field Marshal's Plate Armor
							i(77707),	-- Replica Field Marshal's Mail Armor
							i(77705),	-- Replica Field Marshal's Mail Spaulders
							i(77704),	-- Replica Field Marshal's Mail Helm
							i(77715),	-- Replica Field Marshal's Plate Helm
							i(77674),	-- Replica Field Marshal's Chain Breastplate
							i(77676),	-- Replica Field Marshal's Chain Helm
							i(77687),	-- Replica Field Marshal's Lamellar Chestplate
							i(77688),	-- Replica Field Marshal's Lamellar Faceguard
							i(77689),	-- Replica Field Marshal's Lamellar Pauldrons
							i(77645),	-- Replica Lieutenant Commander's Mail Pauldrons
							i(77719),	-- Replica Marshal's Plate Boots
							i(77763),	-- Replica Lieutenant Commander's Chain Helm
							i(77703),	-- Replica Marshal's Mail Gauntlets
							i(77702),	-- Replica Marshal's Mail Boots
							i(77664),	-- Replica Lieutenant Commander's Lamellar Headguard
							i(77665),	-- Replica Lieutenant Commander's Lamellar Shoulders
							i(77672),	-- Replica Marshal's Chain Boots
							i(77867),	-- Replica Lieutenant Commander's Plate Helmet
							i(77762),	-- Replica Lieutenant Commander's Chain Shoulders
							i(77675),	-- Replica Marshal's Chain Legguards
							i(77706),	-- Replica Marshal's Mail Leggings
							i(77717),	-- Replica Marshal's Plate Legguards
							i(77684),	-- Replica Marshal's Lamellar Boots
							i(77685),	-- Replica Marshal's Lamellar Gloves
							i(77686),	-- Replica Marshal's Lamellar Legplates
							i(77677),	-- Replica Marshal's Chain Grips
							i(77642),	-- Replica Lieutenant Commander's Mail Headguard
							i(77859),	-- Replica Lieutenant Commander's Plate Shoulders
							i(77716),	-- Replica Marshal's Plate Gauntlets
							i(77662),	-- Replica Knight-Captain's Lamellar Breastplate
							i(77661),	-- Replica Knight-Captain's Lamellar Leggings
							i(77643),	-- Replica Knight-Captain's Mail Legguards
							i(77641),	-- Replica Knight-Captain's Mail Hauberk
							i(77761),	-- Replica Knight-Captain's Chain Hauberk
							i(77769),	-- Replica Knight-Captain's Chain Legguards
							i(77858),	-- Replica Knight-Captain's Plate Hauberk
							i(77864),	-- Replica Knight-Captain's Plate Leggings
							i(77644),	-- Replica Knight-Lieutenant's Mail Greaves
							i(120977, {	-- Replica Knight-Lieutenant's Plate Waistguard
								["timeline"] = { ADDED_6_1_0 },
							}),
							i(77646),	-- Replica Knight-Lieutenant's Mail Vices
							i(77735),	-- Replica Knight-Lieutenant's Plate Greaves
							i(77734),	-- Replica Knight-Lieutenant's Plate Gauntlets
							i(77727),	-- Replica Knight-Lieutenant's Lamellar Gauntlets
							i(77726),	-- Replica Knight-Lieutenant's Lamellar Sabatons
							i(77723),	-- Replica Knight-Lieutenant's Chain Greaves
							i(77722),	-- Replica Knight-Lieutenant's Chain Vices
							i(120983, {	-- Replica Knight-Lieutenant's Chain Belt
								["timeline"] = { ADDED_6_1_0 },
							}),
							i(120982, {	-- Replica Knight-Lieutenant's Mail Links
								["timeline"] = { ADDED_6_1_0 },
							}),
							i(120981, {	-- Replica Knight-Lieutenant's Lamellar Girdle
								["timeline"] = { ADDED_6_1_0 },
							}),
							i(77625),	-- Replica Knight-Lieutenant's Lamellar Sabatons
							i(77607),	-- Replica Lieutenant Commander's Chain Pauldrons
							i(77659),	-- Replica Sergeant Major's Plate Wristguards
							i(77658),	-- Replica Knight-Lieutenant's Plate Boots
							i(77657),	-- Replica Lieutenant Commander's Plate Pauldrons
							i(77656),	-- Replica Lieutenant Commander's Plate Helm
							i(77655),	-- Replica Knight-Captain's Plate Leggings
							i(77654),	-- Replica Knight-Captain's Plate Chestguard
							i(77653),	-- Replica Knight-Lieutenant's Plate Gauntlets
							i(77626),	-- Replica Knight-Captain's Lamellar Breastplate
							i(77608),	-- Replica Knight-Captain's Chain Hauberk
							i(77624),	-- Replica Lieutenant Commander's Lamellar Headguard
							i(77623),	-- Replica Knight-Captain's Lamellar Leggings
							i(77622),	-- Replica Knight-Lieutenant's Lamellar Gauntlets
							i(77621),	-- Replica Lieutenant Commander's Lamellar Shoulders
							i(77612),	-- Replica Sergeant Major's Chain Armguards
							i(77613, {	-- Replica Sergeant Major's Chain Armguards
								["description"] = "Horde appearance is learned when buying the Alliance version.",
								["races"] = ALLIANCE_ONLY,
								["groups"] = { h(i(77836)) },	-- Replica First Sergeant's Mail Wristguards
							}),
							i(77611),	-- Replica Knight-Captain's Chain Leggings
							i(77610),	-- Replica Knight-Lieutenant's Chain Gauntlets
							i(77609),	-- Replica Lieutenant Commander's Chain Helmet
							i(77606),	-- Replica Knight-Lieutenant's Chain Boots
							i(77660, {	-- Replica Sergeant Major's Plate Wristguards
								["description"] = "Horde appearance is learned when buying the Alliance version.",
								["races"] = ALLIANCE_ONLY,
								["groups"] = { h(i(77870)) },	-- Replica First Sergeant's Plate Bracers
							}),
						}))),
						-- #endif
						-- #endif
					}),
					n(54648, {	-- Leeni "Smiley" Smalls <Classic Horde Mail & Plate>
						["coord"] = { 33.0, 64.0, NETHERSTORM },
						["timeline"] = { ADDED_4_3_0 },
						-- #if NOT ANYCLASSIC
						["description"] = "Items on this vendor require Legionnaire/Knight-Captain rank or higher to purchase.",
						["groups"] = applyclassicphase(CATA_PHASE_HOUR_OF_TWILIGHT, bubbleDown({ ["timeline"] = { ADDED_4_3_0 } }, pvp({
							i(77897),	-- Replica Warlord's Lamellar Pauldrons
							i(77880),	-- Replica Warlord's Chain Shoulders
							i(77923),	-- Replica Warlord's Plate Shoulders
							i(77914),	-- Replica Warlord's Mail Armor
							i(77913),	-- Replica Warlord's Mail Helm
							i(77910),	-- Replica Warlord's Mail Spaulders
							i(77924),	-- Replica Warlord's Plate Armor
							i(77927),	-- Replica Warlord's Plate Headpiece
							i(77894),	-- Replica Warlord's Lamellar Faceguard
							i(77892),	-- Replica Warlord's Lamellar Chestplate
							i(77883),	-- Replica Warlord's Chain Helmet
							i(77882),	-- Replica Warlord's Chain Chestpiece
							i(77896),	-- Replica General's Lamellar Legplates
							i(77911),	-- Replica General's Mail Boots
							i(77926),	-- Replica General's Plate Leggings
							i(77922),	-- Replica General's Plate Boots
							i(77765),	-- Replica Champion's Chain Helm
							i(77831),	-- Replica Champion's Mail Pauldrons
							i(77832),	-- Replica Champion's Mail Headguard
							i(77895),	-- Replica General's Lamellar Gloves
							i(77766),	-- Replica Champion's Chain Shoulders
							i(77893),	-- Replica General's Lamellar Boots
							i(77915),	-- Replica General's Mail Leggings
							i(77885),	-- Replica General's Chain Gloves
							i(77884),	-- Replica General's Chain Boots
							i(77925),	-- Replica General's Plate Gauntlets
							i(77871),	-- Replica Champion's Lamellar Headguard
							i(77881),	-- Replica General's Chain Legguards
							i(77912),	-- Replica General's Mail Gauntlets
							i(77872),	-- Replica Champion's Lamellar Shoulders
							i(77868),	-- Replica Champion's Plate Shoulders
							i(77869),	-- Replica Champion's Plate Helm
							i(77866),	-- Replica Legionnaire's Plate Leggings
							i(77829),	-- Replica Legionnaire's Mail Legguards
							i(77873),	-- Replica Legionnaire's Lamellar Breastplate
							i(77865),	-- Replica Legionnaire's Plate Hauberk
							i(77834),	-- Replica Legionnaire's Mail Hauberk
							i(77663),	-- Replica Legionnaire's Lamellar Leggings
							i(77760),	-- Replica Legionnaire's Chain Legguards
							i(77768),	-- Replica Legionnaire's Chain Hauberk
							i(77764),	-- Replica Blood Guard's Chain Vices
							i(120991, {	-- Replica Blood Guard's Chain Belt
								["timeline"] = { ADDED_6_1_0 },
							}),
							i(77833),	-- Replica Blood Guard's Mail Vices
							i(77830),	-- Replica Blood Guard's Mail Greaves
							i(77863),	-- Replica Blood Guard's Plate Gauntlets
							i(77767),	-- Replica Blood Guard's Chain Greaves
							i(77862),	-- Replica Blood Guard's Plate Greaves
							i(77928),	-- Replica Blood Guard's Lamellar Sabatons
							i(77929),	-- Replica Blood Guard's Lamellar Gauntlets
							i(120976, {	-- Replica Blood Guard's Plate Waistguard
								["timeline"] = { ADDED_6_1_0 },
							}),
							i(120980, {	-- Replica Blood Guard's Lamellar Girdle
								["timeline"] = { ADDED_6_1_0 },
							}),
							i(120990, {	-- Replica Blood Guard's Mail Links
								["timeline"] = { ADDED_6_1_0 },
							}),
							i(77861),	-- Replica First Sergeant's Plate Bracers
							i(77828),	-- Replica Blood Guard's Mail Walkers
							i(77827),	-- Replica Champion's Mail Helm
							i(77826),	-- Replica Champion's Mail Shoulders
							i(77860),	-- Replica Blood Guard's Plate Gloves
							i(77824),	-- Replica Legionnaire's Mail Chestpiece
							i(77823),	-- Replica Blood Guard's Mail Grips
							i(77857),	-- Replica Legionnaire's Plate Legguards
							i(77856),	-- Replica Champion's Plate Pauldrons
							i(77759),	-- Replica Champion's Chain Headguard
							i(77758),	-- Replica Legionnaire's Chain Leggings
							i(77757),	-- Replica Legionnaire's Chain Breastplate
							i(77756),	-- Replica Blood Guard's Chain Gauntlets
							i(77755),	-- Replica Blood Guard's Chain Boots
							i(77855),	-- Replica Champion's Plate Headguard
							i(77854),	-- Replica Legionnaire's Plate Armor
							i(77853),	-- Replica Blood Guard's Plate Boots
							i(77835),	-- Replica First Sergeant's Mail Wristguards
							i(77754),	-- Replica Champion's Chain Pauldrons
							i(77825),	-- Replica Legionnaire's Mail Leggings
						}))),
						-- #endif
					}),
					applyclassicphase(WRATH_PHASE_FOUR, n(33941, {	-- Leeni "Smiley" Smalls <Apprentice Arena Vendor> [WRATH] Original WOTLK S8 VENDOR
						["coord"] = { 33.0, 64.0, NETHERSTORM },
						-- #if BEFORE 4.0.3.13277
						["sym"] = {{"sub", "pvp_gear_base", EXPANSION.WRATH, SEASON_FURIOUS, PVP_GLADIATOR },{"pop"}},	-- Furious Gladiator's Set
						-- #endif
						["timeline"] = { ADDED_3_3_2, REMOVED_4_0_3 },
					})),
					applyclassicphase(WRATH_PHASE_THREE, n(33930, {	-- Leeni "Smiley" Smalls <Apprentice Arena Vendor> [WRATH] Original WOTLK S7 VENDOR
						["coord"] = { 33.0, 64.0, NETHERSTORM },
						-- #if BEFORE 4.0.3.13277
						["sym"] = {{"sub", "pvp_gear_base", EXPANSION.WRATH, SEASON_DEADLY, PVP_GLADIATOR },{"pop"}},	-- Deadly Gladiator's Set
						-- #endif
						["timeline"] = { ADDED_3_2_0, REMOVED_4_0_3 },
					})),
					applyclassicphase(WRATH_PHASE_TWO, n(33919, {	-- Leeni "Smiley" Smalls <Apprentice Arena Vendor> [WRATH] Original WOTLK S6 VENDOR
						["coord"] = { 33.0, 64.0, NETHERSTORM },
						-- #if BEFORE 4.0.3
						["sym"] = {{"sub", "pvp_gear_base", EXPANSION.WRATH, SEASON_DEADLY, PRE_SEASON_HATEFUL },{"pop"}},	-- Hateful Gladiator's Set
						-- #endif
						["timeline"] = { ADDED_3_1_0, REMOVED_4_0_3 },
					})),
					applyclassicphase(WRATH_PHASE_ONE, n(32354, {	-- Leeni "Smiley" Smalls <Apprentice Arena Vendor> [WRATH] Original WOTLK S5 VENDOR
						["coord"] = { 33.0, 64.0, NETHERSTORM },
						-- #if BEFORE 4.0.3
						["sym"] = {{"sub", "pvp_gear_base", EXPANSION.WRATH, SEASON_DEADLY, PVP_HONOR },{"pop"}},	-- Savage Gladiator's Set
						-- #endif
						["timeline"] = { ADDED_3_0_2, REMOVED_4_0_3 },
					})),
					n(58152, {	-- Tini Smalls <Classic Horde Cloth & Leather>
						["coord"] = { 33.0, 64.2, NETHERSTORM },
						["timeline"] = { ADDED_4_3_0 },
						-- #if NOT ANYCLASSIC
						["description"] = "Items on this vendor require Legionnaire/Knight-Captain rank or higher to purchase.",
						["groups"] = applyclassicphase(CATA_PHASE_HOUR_OF_TWILIGHT, bubbleDown({ ["timeline"] = { ADDED_4_3_0 } }, pvp({
							i(77900),	-- Replica Warlord's Satin Cowl
							i(77874),	-- Replica Warlord's Dragonhide Helmet
							i(77919),	-- Replica Warlord's Dreadweave Robe
							i(77917),	-- Replica Warlord's Dreadweave Hood
							i(77909),	-- Replica Warlord's Leather Helm
							i(77908),	-- Replica Warlord's Leather Breastplate
							i(77907),	-- Replica Warlord's Leather Spaulders
							i(77901),	-- Replica Warlord's Satin Robes
							i(77920),	-- Replica Warlord's Dreadweave Mantle
							i(77899),	-- Replica Warlord's Satin Mantle
							i(77890),	-- Replica Warlord's Silk Amice
							i(77889),	-- Replica Warlord's Silk Raiment
							i(77886),	-- Replica Warlord's Silk Cowl
							i(77878),	-- Replica Warlord's Dragonhide Epaulets
							i(77876),	-- Replica Warlord's Dragonhide Hauberk
							i(77921),	-- Replica General's Dreadweave Pants
							i(77903),	-- Replica General's Satin Boots
							i(77902),	-- Replica General's Satin Leggings
							i(77916),	-- Replica General's Dreadweave Gloves
							i(77752),	-- Replica Champion's Dragonhide Headguard
							i(77746),	-- Replica Champion's Dragonhide Shoulders
							i(77796),	-- Replica Champion's Satin Mantle
							i(77918),	-- Replica General's Dreadweave Boots
							i(77898),	-- Replica General's Satin Gloves
							i(77891),	-- Replica General's Silk Trousers
							i(77778),	-- Replica Champion's Silk Cowl
							i(77779),	-- Replica Champion's Silk Mantle
							i(77888),	-- Replica General's Silk Boots
							i(77887),	-- Replica General's Silk Handguards
							i(77815),	-- Replica Champion's Leather Helm
							i(77795),	-- Replica Champion's Satin Hood
							i(77819),	-- Replica Champion's Leather Shoulders
							i(77879),	-- Replica General's Dragonhide Gloves
							i(77906),	-- Replica General's Leather Legguards
							i(77877),	-- Replica General's Dragonhide Leggings
							i(77905),	-- Replica General's Leather Mitts
							i(77875),	-- Replica General's Dragonhide Boots
							i(77904),	-- Replica General's Leather Treads
							i(77845),	-- Replica Champion's Dreadweave Cowl
							i(77846),	-- Replica Champion's Dreadweave Spaulders
							i(77781),	-- Replica Legionnaire's Silk Tunic
							i(77782),	-- Replica Legionnaire's Silk Legguards
							i(77798),	-- Replica Legionnaire's Satin Legguards
							i(77802),	-- Replica Legionnaire's Satin Tunic
							i(77818),	-- Replica Legionnaire's Leather Legguards
							i(77749),	-- Replica Legionnaire's Dragonhide Chestpiece
							i(77852),	-- Replica Legionnaire's Dreadweave Legguards
							i(77744),	-- Replica Legionnaire's Dragonhide Leggings
							i(77821),	-- Replica Legionnaire's Leather Chestpiece
							i(77851),	-- Replica Legionnaire's Dreadweave Tunic
							i(77750),	-- Replica Blood Guard's Dragonhide Grips
							i(77803),	-- Replica Blood Guard's Satin Handwraps
							i(77804),	-- Replica Blood Guard's Satin Walkers
							i(120984, {	-- Replica Blood Guard's Dragonhide Belt
								["timeline"] = { ADDED_6_1_0 },
							}),
							i(120988, {	-- Replica Blood Guard's Satin Waistwrap
								["timeline"] = { ADDED_6_1_0 },
							}),
							i(120987, {	-- Replica Blood Guard's Silk Cinch
								["timeline"] = { ADDED_6_1_0 },
							}),
							i(120986, {	-- Replica Blood Guard's Dreadweave Wrap
								["timeline"] = { ADDED_6_1_0 },
							}),
							i(77747),	-- Replica Blood Guard's Dragonhide Treads
							i(77783),	-- Replica Blood Guard's Silk Handwraps
							i(77773),	-- Replica Blood Guard's Silk Walkers
							i(77843),	-- Replica Blood Guard's Dreadweave Walkers
							i(120985, {	-- Replica Blood Guard's Leather Clasp
								["timeline"] = { ADDED_6_1_0 },
							}),
							i(77816),	-- Replica Blood Guard's Leather Walkers
							i(77849),	-- Replica Blood Guard's Dreadweave Handwraps
							i(77817),	-- Replica Blood Guard's Leather Grips
							i(77791),	-- Replica Blood Guard's Satin Gloves
							i(77842),	-- Replica Champion's Dreadweave Shoulders
							i(77840),	-- Replica Blood Guard's Dreadweave Gloves
							i(77839),	-- Replica Blood Guard's Dreadweave Boots
							i(77838),	-- Replica Legionnaire's Dreadweave Leggings
							i(77837),	-- Replica Champion's Dreadweave Hood
							i(77738),	-- Replica Legionnaire's Dragonhide Breastplate
							i(77737),	-- Replica Champion's Dragonhide Spaulders
							i(77814),	-- Replica First Sergeant's Leather Armguards
							i(77810),	-- Replica Blood Guard's Leather Vices
							i(77809),	-- Replica Blood Guard's Leather Treads
							i(77808),	-- Replica Legionnaire's Leather Hauberk
							i(77807),	-- Replica Legionnaire's Leather Leggings
							i(77806),	-- Replica Champion's Leather Mantle
							i(77805),	-- Replica Champion's Leather Headguard
							i(77794),	-- Replica Legionnaire's Satin Trousers
							i(77793),	-- Replica Legionnaire's Satin Vestments
							i(77792),	-- Replica Champion's Satin Cowl
							i(77841),	-- Replica Legionnaire's Dreadweave Robe
							i(77790),	-- Replica Blood Guard's Satin Boots
							i(77789),	-- Replica Champion's Satin Shoulderpads
							i(77739),	-- Replica Champion's Dragonhide Helm
							i(77786),	-- Replica First Sergeant's Silk Cuffs
							i(77776),	-- Replica Champion's Silk Hood
							i(77775),	-- Replica Blood Guard's Silk Gloves
							i(77774),	-- Replica Legionnaire's Silk Pants
							i(77772),	-- Replica Champion's Silk Shoulderpads
							i(77771),	-- Replica Blood Guard's Silk Footwraps
							i(77770),	-- Replica Legionnaire's Silk Robes
							i(77740),	-- Replica Legionnaire's Dragonhide Trousers
							i(77743),	-- Replica First Sergeant's Dragonhide Armguards
							i(77741),	-- Replica Blood Guard's Dragonhide Gauntlets
							i(77736),	-- Replica Blood Guard's Dragonhide Boots
							i(77753),	-- Replica First Sergeant's Dragonhide Armguards
							i(77788),	-- Replica First Sergeant's Silk Cuffs
							i(77822),	-- Replica First Sergeant's Leather Armguards
						}))),
						-- #endif
					}),
					n(20112, {	-- Wind Trader Tuluman <Weapon Merchant>
						["coord"] = { 34.6, 37.8, NETHERSTORM },
						["sym"] = {{"select","itemID",
							30754,	-- Ancient Bone Mace
							30749,	-- Draenic Sparring Blade
							30750,	-- Draenic Warblade
							30752,	-- Mag'hari Battleaxe
							30755,	-- Mag'hari Fighting Claw
							30751,	-- Mag'hari Light Axe
							30753,	-- Warphorn Spear
						}},
						["groups"] = {
							i(30755, {	-- Mag'hari Fighting Claw
								["isLimited"] = true,
							}),
							i(30753, {	-- Warphorn Spear
								["isLimited"] = true,
							}),
						},
					}),
				}),
				n(ZONE_DROPS, {
					i(24162, {	-- Design: Arcane Khorium Band
						["cr"] = 18866,	-- Mageslayer
					}),
					n(20520, {	-- Ethereum Prisoner (multiple named mobs with the same ID once spawned)
						["provider"] = { "o", 184418 },	-- Ethereum Prison
						["sourceQuest"] = 10970,	-- A Mission of Mercy (required to be able to find the prison keys)
						["description"] = "Ethereum Prison Key, a fairly common drop in Heroic Mana-Tombs, can be used to open prisons west of Manaforge Ultris in Netherstorm. There is a chance that one of these mobs will be released when you open a prison. To loot Ethereum Prison Keys, you must first complete the quest 'A Mission of Mercy' in Netherstorm.",
						["coords"] = {
							{ 54.6, 46.6, NETHERSTORM },
							{ 54.5, 40.2, NETHERSTORM },
						},
						["cost"] = {
							{ "i", 29460, 1 },	-- Ethereum Prison Key (required to summon/"release" mobs)
						},
						["groups"] = {
							i(31957),	-- Ethereum Prisoner I.D. Tag
							i(31581),	-- Slatesteel Boots
							i(31565),	-- Skystalker's Boots
							i(31557),	-- Windchanneller's Boots
							i(32520),	-- Manaforged Sphere
							i(31573),	-- Mistshroud Boots
							i(31938),	-- Enigmatic Cloak
							i(31943),	-- Ethereum Band
							i(31940),	-- Ethereum Torque
							i(31939),	-- Dark Cloak
							i(31929),	-- Enigmatic Band
							i(31936),	-- Fiery Cloak
							i(31926),	-- Frigid Band
							i(31935),	-- Frigid Cloak
							i(31937),	-- Living Cloak
							i(31928),	-- Dark Band
							i(31925),	-- Fiery Band
							i(31927),	-- Living Band
						},
					}),
					i(22530, {	-- Formula: Enchant Bracer - Greater Dodge / TBC: Formula: Enchant Bracer - Major Defense (RECIPE!)
						["crs"] = {
							23008,	-- Ethereum Jailor
							22822,	-- Ethereum Nullifier
						},
					}),
					i(28277, {	-- Formula: Enchant Cloak - Greater Shadow Resistance (RECIPE!)
						["cr"] = 18870,	-- Voidshrieker
						["timeline"] = { ADDED_2_0_1, REMOVED_5_0_4 },
					}),
					i(22551, {	-- Formula: Enchant Weapon - Major Intellect
						["cr"] = 20136,	-- Sunfury Researcher
					}),
					i(21919, {	-- Pattern: Primal Mooncloth Bag (RECIPE!)
						["cr"] = 18872,	-- Disembodied Vindicator
					}),
					i(21911, {	-- Pattern: Spellfire Bag (RECIPE!)
						["cr"] = 20134,	-- Sunfury Arcanist
					}),
					i(23639, {	-- Plans: Greater Ward of Shielding (RECIPE!)
						["crs"] = {
							18856,	-- Arcane Annihilator
							18853,	-- Sunfury Bloodwarder
						},
					}),
					i(23610, {	-- Plans: Khorium Boots (RECIPE!)
						["cr"] = 18873,	-- Disembodied Protector
					}),
					applyclassicphase(TBC_PHASE_TWO, i(33804, {	-- Schematic: Adamantite Arrow Maker (RECIPE!)
						["cr"] = 19707,	-- Sunfury Archer
						["timeline"] = { ADDED_2_3_0, REMOVED_4_0_1 },	-- Changes to uncollectible scrap item in Cata
					})),
					i(23808, {	-- Schematic: Khorium Scope (RECIPE!)
						["cr"] = 20207,	-- Sunfury Bowman
					}),
				}),
			},
		})),
	})),
});

-- Add in the items that aren't locked by phase.
