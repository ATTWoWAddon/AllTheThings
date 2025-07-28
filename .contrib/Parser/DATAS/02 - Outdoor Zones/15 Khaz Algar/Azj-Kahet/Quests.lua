---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
local TEMPORARY_SOURCEQUEST = 78384;
root(ROOTS.Zones, m(KHAZ_ALGAR, bubbleDown({ ["timeline"] = { ADDED_11_0_2 } }, {
	m(AZJ_KAHET, {
		n(QUESTS, {
			header(HEADERS.Achievement, 19559, {	-- Azj-Kahet
				------ Chapter 1 ------
				q(78384, {	-- Chasing The Light
					["provider"] = { "n", 211752 },	-- Alleria Windrunner
					["sourceQuests"] = {
						78630,	-- The Reckoning
						TWW_ACCOUNT_CAMPAIGN_QUEST,
					},
					["sourceQuestNumRequired"] = 1,
					["coord"] = { 29.3, 42.6, AZJ_KAHET },
					["groups"] = {
						o(411104, {	-- Well-Bleached Bones
							i(211775),	-- Bleached Bones (QI!)
						}),
						o(411102, {	-- Airship Rubble
							i(211774),	-- Crumpled Lion Gauntlet (QI!)
						}),
						o(411106, {	-- Weathered Cloth
							i(211783),	-- Scrap of Weathered Fabric (QI!)
						}),
					},
				}),
				q(78350, {	-- Heroes Never Die
					["provider"] = { "n", 211699 },	-- Faerin
					["sourceQuests"] = {
						78630,	-- The Reckoning
						TWW_ACCOUNT_CAMPAIGN_QUEST,
					},
					["sourceQuestNumRequired"] = 1,
					["coord"] = { 29.4, 42.2, AZJ_KAHET },
					["groups"] = {
						i(225524),	-- Rescued Aeroknight's Gloves
						i(225530),	-- Rescued Aeroknight's Helmet
						i(225540),	-- Rescued Aeroknight's Mantle
						i(225521),	-- Rescued Aeroknight's Vambraces
					},
				}),
				q(78348, {	-- Friends in Low Places
					["provider"] = { "n", 211699 },	-- Faerin
					["sourceQuests"] = {
						78384,	-- Chasing The Light
						78350,	-- Heroes Never Die
					},
					["coord"] = { 32.5, 47.1, AZJ_KAHET },
				}),
				q(78353, {	-- Fear the Old Blood
					["provider"] = { "n", 215944 },	-- Orweyna
					["sourceQuests"] = { 78348 },	-- Friends in Low Places
					["coord"] = { 33.0, 56.3, AZJ_KAHET },
					["groups"] = {
						i(225546),	-- Corrosive Blackblood Ring
						i(225545),	-- Hissing Blackblood Ring
					},
				}),
				q(78352, {	-- For Naught, So Vial
					["provider"] = { "n", 215944 },	-- Orweyna
					["sourceQuests"] = { 78348 },	-- Friends in Low Places
					["coord"] = { 33.0, 56.3, AZJ_KAHET },
				}),
				q(79139, {	-- Alone in the Dark
					["provider"] = { "n", 215113 },	-- Orweyna
					["sourceQuests"] = {
						78353,	-- Fear the Old Blood
						78352,	-- For Naught, So Vial
					},
					["coord"] = { 35.7, 58.2, AZJ_KAHET },
				}),
				q(78354, {	-- A Guiding Thread
					["provider"] = { "n", 216213 },	-- Spindle
					["sourceQuests"] = { 79139 },	-- Alone in the Dark
					["coord"] = { 44.2, 56.8, AZJ_KAHET },
					["groups"] = {
						i(225514),	-- Webweave Belt
						i(225533),	-- Webweave Grips
						i(225516),	-- Webweave Stompers
						i(225529),	-- Webweave Wristguards
					},
				}),
				q(78392, {	-- The Tangled Web
					["provider"] = { "n", 207471 },	-- Widow Arak'nai
					["sourceQuests"] = { 78354 },	-- A Guiding Thread
					["coord"] = { 55.7, 43.8, AZJ_KAHET },
				}),
				q(78393, {	-- A Seeming Respite
					["provider"] = { "n", 207471 },	-- Widow Arak'nai
					["sourceQuests"] = { 78354 },	-- A Guiding Thread
					["coord"] = { 55.7, 43.8, AZJ_KAHET },
				}),
				------ Chapter 2 ------
				q(78233, {	-- The Weaver's Gift
					["provider"] = { "n", 207471 },	-- Widow Arak'nai
					["sourceQuests"] = {
						78393,	-- A Seeming Respite
						78352,	-- The Tangled Web
					},
					["coord"] = { 55.7, 43.8, AZJ_KAHET },
				}),
				q(80399, {	-- Rations and Revelations
					["provider"] = { "n", 211409 },	-- Faerin Lothar
					["sourceQuests"] = { 78233 },	-- The Weaver's Gift
					["coord"] = { 59.4, 19.4, AZJ_KAHET },
					["groups"] = {
						i(217614),	-- Arathi Rations (QI!)
					},
				}),
				q(78236, {	-- Scrappy Straggler
					["provider"] = { "n", 211409 },	-- Faerin Lothar
					["sourceQuests"] = { 80399 },	-- Rations and Revelations
					["coord"] = { 59.4, 19.4, AZJ_KAHET },
				}),
				q(78234, {	-- Force Your Way
					["qgs"] = {
						220051,	-- Flynn Fairwind
						211444,	-- Flynn Fairwind
					},
					["sourceQuests"] = { 78236 },	-- Scrappy Straggler
					["coord"] = { 63.0, 27.1, AZJ_KAHET },
				}),
				q(78383, {	-- Strategic Edge
					["qgs"] = {
						220051,	-- Flynn Fairwind
						211444,	-- Flynn Fairwind
					},
					["sourceQuests"] = { 78236 },	-- Scrappy Straggler
					["coord"] = { 63.0, 27.1, AZJ_KAHET },
					["groups"] = {
						o(441587, {	-- Crate of Emptied Vials
							i(212159),	-- Vial of Used Pheromones (QI!)
						}),
						o(441586, {	-- Military Correspondence
							i(211769),	-- Orders from Siegehold (QI!)
						}),
						o(441588, {	-- Confiscated Weapons
							i(211870),	-- Flynn's Blades (QI!)
						}),
						o(441585, {	-- Burning Venom Flask
							i(212158),	-- Burning Venom Flask (QI!)
						}),
						i(221031),	-- Nerubian Intelligence (QI!)
						i(225364),	-- Kaheti Confiscated Blade
						i(225349),	-- Kaheti Confiscated Borers
						i(225358),	-- Kaheti Confiscated Buckler
						i(225356),	-- Kaheti Confiscated Crossbow
						i(225354),	-- Kaheti Confiscated Dirk
						i(225360),	-- Kaheti Confiscated Hatchet
						i(225362),	-- Kaheti Confiscated Knife
						i(225357),	-- Kaheti Confiscated Lantern
						i(225359),	-- Kaheti Confiscated Mallet
						i(225353),	-- Kaheti Confiscated Spade
						i(225361),	-- Kaheti Confiscated Staff
						i(225363),	-- Kaheti Confiscated Sword
					},
				}),
				q(78237, {	-- Let Fly!
					["provider"] = { "n", 211444 },	-- Flynn Fairwind
					["sourceQuests"] = {
						78234,	-- Force Your Way
						78383,	-- Strategic Edge
					},
				}),
				q(79625, {	-- Not Quite Dead
					["provider"] = { "n", 217330 },	-- Anub'azal
					["sourceQuests"] = { 78237 },	-- Let Fly!
					["coord"] = { 45.5, 19.7, AZJ_KAHET },
				}),
				q(79175, {	-- I Think I'm a Drone Now
					["provider"] = { "n", 217330 },	-- Anub'azal
					["sourceQuests"] = { 79625 },	-- Not Quite Dead
					["coord"] = { 45.5, 19.7, AZJ_KAHET },
					["groups"] = {
						i(225538),	-- General's Pungent Armor
						i(225526),	-- General's Pungent Legguards
						i(225535),	-- General's Pungent Mantle
						i(225515),	-- General's Pungent Wraps
					},
				}),
				q(78250, {	-- General Admission
					["provider"] = { "n", 217330 },	-- Anub'azal
					["sourceQuests"] = { 79175 },	-- I Think I'm a Drone Now
					["coord"] = { 45.5, 19.7, AZJ_KAHET },
					["groups"] = {
						o(410395, {	-- Siegehold Records
							i(217165),	-- Zev'kall's Attrition Log (QI!)
						}),
					},
				}),
				q(78249, {	-- Specific Personages
					["provider"] = { "n", 217330 },	-- Anub'azal
					["sourceQuests"] = { 79175 },	-- I Think I'm a Drone Now
					["coord"] = { 45.5, 19.7, AZJ_KAHET },
					["groups"] = {
						i(225549),	-- Cape of the Favored
						i(225550),	-- Cloak of the Tactician
						i(225551),	-- Drape of the Heritage Lord
						i(225552),	-- Shroud of the Whisperer
					},
				}),
				q(78254, {	-- Stolen Influence
					["provider"] = { "n", 217330 },	-- Anub'azal
					["sourceQuests"] = {
						78250,	-- General Admission
						78249,	-- Specific Personages
					},
					["coord"] = { 45.5, 19.7, AZJ_KAHET },
					["groups"] = {
						i(212528),	-- Zev'kall's Pheromone Emitter (QI!)
					},
				}),
				q(78251, {	-- Dalaran's Most Distressed
					["provider"] = { "n", 211399 },	-- Monte Gazlowe
					["sourceQuests"] = {
						78250,	-- General Admission
						78249,	-- Specific Personages
					},
					["coord"] = { 45.3, 19.9, AZJ_KAHET },
				}),
				q(78255, {	-- Just Act Casual
					["provider"] = { "n", 215413 },	-- Monte Gazlowe
					["sourceQuests"] = {
						78251,	-- Dalaran's Most Distressed
						78254,	-- Stolen Influence
					},
					["coord"] = { 47.4, 23.9, AZJ_KAHET },
					["groups"] = {
						i(225520),	-- Smuggled Nerubian Belt
						i(225523),	-- Smuggled Nerubian Boots
						i(225537),	-- Smuggled Nerubian Cuffs
						i(225513),	-- Smuggled Nerubian Trousers
					},
				}),
				q(78256, {	-- The General's Consensus
					["provider"] = { "n", 215845 },	-- Monte Gazlowe
					["sourceQuests"] = { 78255 },	-- Just Act Casual
					["coord"] = { 51.8, 25.8, AZJ_KAHET },
					["groups"] = {
						o(428814, {	-- Inconspicuous Box
							i(217042),	-- Zev'kall's Pheromone Emitter (QI!)
						}),
					},
				}),
				------ Chapter 3 ------
				q(78226, {	-- A Most Intriguing Invitation
					["provider"] = { "n", 207471 },	-- Widow Arak'nai
					["sourceQuests"] = { 78256 },	-- The General's Consensus
					["coord"] = { 55.7, 43.8, AZJ_KAHET },
					["groups"] = {
						i(212605),	-- The Vizier's Invitation (QI!)
					},
				}),
				q(78228, {	-- Into a Skittering City
					["provider"] = { "n", 211351 },	-- Anduin Wrynn
					["sourceQuests"] = { 78226 },	-- A Most Intriguing Invitation
					["coord"] = { 67.1, 31.5, NERUBAR_LOWER },
				}),
				q(78232, {	-- Rewriting the Rewritten
					["provider"] = { "n", 211499 },	-- Executor Nizrek
					["sourceQuests"] = { 78228 },	-- Into a Skittering City
					["coord"] = { 67.5, 32.5, NERUBAR_LOWER },
					["groups"] = {
						i(225970),	-- Nizrek's Holographic Manipulator
					},
				}),
				q(78231, {	-- Like a Spider on the Wall
					["provider"] = { "n", 211351 },	-- Anduin Wrynn
					["sourceQuests"] = { 78228 },	-- Into a Skittering City
					["coord"] = { 66.9, 31.9, NERUBAR_LOWER },
				}),
				------ Stay awhile and listen ------
				hqt(81946, {	-- Stay awhile and listen: Anduin Wrynn
					["name"] = "Stay awhile and listen: Anduin Wrynn",
					["description"] = "Dialogue becomes available after accepting both 'Like a Spider on the Wall' (78231) and 'Rewriting the Rewritten' (78232) but will be unavailable after completion.",
					["sourceQuests"] = {
						78231,	-- Like a Spider on the Wall
						78232,	-- Rewriting the Rewritten
					},
					["provider"] = { "n", 211351 },	-- Anduin Wrynn
					["coord"] = { 67.0, 31.8, NERUBAR_LOWER },
					["lockCriteria"] = { 2,	-- Completing both quests
						"questID", 78231,	-- Like a Spider on the Wall
						"questID", 78232,	-- Rewriting the Rewritten
					},
				}),
				--
				q(78244, {	-- Kahet Hospitality
					["provider"] = { "n", 217386 },	-- Anduin Wrynn
					["sourceQuests"] = {
						78231,	-- Like a Spider on the Wall
						78232,	-- Rewriting the Rewritten
					},
					["coord"] = { 55.3, 46.1, NERUBAR },
					--["maps"] = { xx },	-- I expect there separate mapID for scenario but currently it is same (2213)
					["groups"] = {
						i(225561),	-- Queensfang Choker
						i(225562),	-- Swarm-Maven's Amulet
						i(225563),	-- Threadmaestro's Collar
					},
				}),
				q(78248, {	-- What We Still Have
					["provider"] = { "n", 217385 },	-- Alleria Windrunner
					["sourceQuests"] = { 78244 },	-- Kahet Hospitality
					["coord"] = { 60.6, 68.8, AZJ_KAHET },
					["groups"] = {
						-- crit 'Plans Within Plans' for achievementID ? (Azj-Kahet)
					},
				}),
				------ Stay awhile and listen ------
				hqt(82033, {	-- Stay awhile and listen: Alleria Windrunner
					["name"] = "Stay awhile and listen: Alleria Windrunner",
					["sourceQuests"] = { 78248 },	-- What We Still Have
					["provider"] = { "n", 217385 },	-- Alleria Windrunner
					["coord"] = { 60.6, 68.8, AZJ_KAHET },
				}),
				--
			}),
			header(HEADERS.AchCriteria, 40636.01, {	-- Rak-Ush Swarmery
				q(83325, {	-- Bountiful Beetles
					["qgs"] = {
						224729,	-- Anub'okki
						229184,	-- Aspirant Kiipka
					},
					["sourceQuests"] = {
						TEMPORARY_SOURCEQUEST,
						TWW_ACCOUNT_CAMPAIGN_QUEST,
					},
					["sourceQuestNumRequired"] = 1,
					["coord"] = { 55.9, 42.4, AZJ_KAHET },
					["isBreadcrumb"] = true,
				}),
				q(79119, {	-- It's Rough to Be a Bug!
					["provider"] = { "n", 214359 },	-- Kish'nal
					["sourceQuests"] = { 83325 },
					["coord"] = { 76, 82.4, AZJ_KAHET },
				}),
				q(79114, {	-- Beautification Project
					["provider"] = { "n", 214359 },	-- Kish'nal
					["sourceQuests"] = { 79119 },	-- It's Rough to Be a Bug!
					["coord"] = { 76.1, 82.5, AZJ_KAHET },
				}),
				q(79115, {	-- Expert Consultant
					["provider"] = { "n", 214356 },	-- Vix'aron
					["sourceQuests"] = { 79114 },	-- Beautification Project
					["coord"] = { 74.9, 83.7, AZJ_KAHET },
				}),
				q(79117, {	-- Bright Young Niffen
					["provider"] = { "n", 215037 },	-- Vetiverian
					["sourceQuests"] = { 79115 },	-- Expert Consultant
					["coord"] = { 77.2, 64.5, AZJ_KAHET },
				}),
				q(79118, {	-- Rak-Ush Under New Management
					["provider"] = { "n", 215037 },	-- Vetiverian
					["sourceQuests"] = { 79117 },	-- Bright Young Niffen
					["coord"] = { 77.2, 64.5, AZJ_KAHET },
				}),
				q(79120, {	-- Beetle in a Haystack
					["provider"] = { "n", 214356 },	-- Vix'aron
					["sourceQuests"] = { 79118 },	-- Rak-Ush Under New Management
					["coord"] = { 75, 80.9, AZJ_KAHET },
					["groups"] = {
						i(213392),	-- Smoke Grenade (QI!)
					},
				}),
				q(79121, {	-- Bug Test
					["provider"] = { "n", 214359 },	-- Kish'nal
					["sourceQuests"] = { 79120 },	-- Beetle in a Haystack
					["coord"] = { 75, 80.7, AZJ_KAHET },
				}),
				q(79122, {	-- Scarab Scouting
					["provider"] = { "n", 214359 },	-- Kish'nal
					["sourceQuests"] = { 79121 },	-- Bug Test
					["coord"] = { 75, 80.7, AZJ_KAHET },
					["groups"] = {
						i(228440),	-- Chitin-Laced Shoulderguards
						i(228439),	-- Mitts of Menial Tasks
						i(228441),	-- Overseer's Oversized Clasp
						i(228442),	-- Rak-Ush Rancher's Waders
					},
				}),
				q(79123, {	-- Permanent Hire
					["provider"] = { "n", 214359 },	-- Kish'nal
					["sourceQuests"] = { 79122 },	-- Scarab Scouting
					["coord"] = { 75, 80.7, AZJ_KAHET },
					["groups"] = {
						i(225935),	-- Rak-Ush Battleshell (PET!)
					},
				}),
			}),
			header(HEADERS.AchCriteria, 40636.02, {	-- Pillar-nest Vosh
				q(79174, {	-- Infested Infestation
					["provider"] = { "n", 215349 },	-- Great Hexer Ohodo
					["sourceQuests"] = { TEMPORARY_SOURCEQUEST },
					["coord"] = { 57.8, 19.8, AZJ_KAHET },
				}),
				q(79355, {	-- Prisoner Preservation
					["provider"] = { "n", 215349 },	-- Great Hexer Ohodo
					["sourceQuests"] = { TEMPORARY_SOURCEQUEST },
					["coord"] = { 57.8, 19.8, AZJ_KAHET },
				}),
				q(79356, {	-- Anti-Fungal Firestarter
					["provider"] = { "n", 215349 },	-- Great Hexer Ohodo
					["sourceQuests"] = {
						79174,	-- Infested Infestation
						79355,	-- Prisoner Preservation
					},
					["coord"] = { 57.8, 19.8, AZJ_KAHET },
					["groups"] = {
						i(212334),	-- Anti-Fungal Fire Bomb (QI!)
					},
				}),
				q(79357, {	-- Removing the Cap
					["provider"] = { "n", 215349 },	-- Great Hexer Ohodo
					["sourceQuests"] = {
						79174,	-- Infested Infestation
						79355,	-- Prisoner Preservation
					},
					["coord"] = { 57.8, 19.8, AZJ_KAHET },
					["groups"] = {
						i(213420),	-- Fungarian Mushroom Cap (QI!)
					},
				}),
			}),
			header(HEADERS.AchCriteria, 40636.03, {	-- Gutter Work
				q(79710, {	-- A Fin of Every Kind
					["provider"] = { "n", 217565 },	-- Al'kubian
					["sourceQuests"] = {
						TEMPORARY_SOURCEQUEST,
						TWW_ACCOUNT_CAMPAIGN_QUEST,
					},
					["sourceQuestNumRequired"] = 1,
					["coord"] = { 60.0, 66.2, AZJ_KAHET },
					["groups"] = {
						i(222921),	-- Mangled Kobyss Innards (QI!)
						i(224102),	-- Chunked Kobyss Innards (QI!)
						i(224103),	-- Uncertain Kobyss Innards (QI!)
						i(224232),	-- Rotting Kobyss Innards (QI!)
					},
				}),
				q(79711, {	-- That's Pretty Gross
					["provider"] = { "o", 443995 },	-- Familiar-Looking Appendage
					["sourceQuests"] = {
						TEMPORARY_SOURCEQUEST,
						TWW_ACCOUNT_CAMPAIGN_QUEST,
					},
					["sourceQuestNumRequired"] = 1,
					["coord"] = { 55.6, 70.8, AZJ_KAHET },	-- TODO: probably have more spawns?
					["groups"] = {
						i(214504),	-- Emerald Necklace (QI!)
					},
				}),
				q(79713, {	-- Moonlight Gutter Swim
					["provider"] = { "n", 217565 },	-- Al'kubian
					["sourceQuests"] = {
						79710,	-- A Fin of Every Kind
						79711,	-- That's Pretty Gross
					},
					["coord"] = { 60.0, 66.2, AZJ_KAHET },
					["groups"] = {
						i(222926),	-- Leg Chewer's Stomach (QI!)
						i(222924),	-- Liverseeker's Intestines (QI!)
					},
				}),
				q(79714, {	-- Rescuing the Food
					["provider"] = { "n", 217565 },	-- Al'kubian
					["sourceQuests"] = {
						79710,	-- A Fin of Every Kind
						79711,	-- That's Pretty Gross
					},
					["coord"] = { 60.0, 66.2, AZJ_KAHET },
					["groups"] = {
						i(223287),	-- Atomized Salien Slime (QI!)
					},
				}),
				q(79715, {	-- Grand, Gutsy Solutions
					["provider"] = { "n", 217565 },	-- Al'kubian
					["sourceQuests"] = {
						79713,	-- Moonlight Gutter Swim
						79714,	-- Rescuing the Food
					},
					["coord"] = { 60.0, 66.2, AZJ_KAHET },
					["groups"] = {
						ach(41200, { -- Grand, Gutsy Solutions
							["timeline"] = { ADDED_11_0_7 },
						}),
						i(222944),	-- Swollen Brain of Gluttony (QI!)
						i(222980, {	-- Slim (PET!)
							["description"] = "May requires an alt below Level 80 to show up as quest reward.",
						}),
					},
				}),
			}),
			header(HEADERS.AchCriteria, 40636.04, {	-- Melody of Madness
				q(83306, {	-- Where the Wild Things Camp
					["provider"] = { "n", 211409 },	-- Faerin Lothar
					["sourceQuests"] = { TEMPORARY_SOURCEQUEST },
					["coord"] = { 59.4, 19.4, AZJ_KAHET },
					["isBreadcrumb"] = true,
				}),
				q(80564, {	-- Field Research
					["provider"] = { "n", 220595 },	-- Orweyna
					["sourceQuests"] = { 83306 },	-- Where the Wild Things Camp
					["coord"] = { 44.6, 66.4, AZJ_KAHET },
				}),
				q(80563, {	-- Tool of Attunement
					["provider"] = { "n", 220595 },	-- Orweyna
					["sourceQuests"] = { 83306 },	-- Where the Wild Things Camp
					["coord"] = { 44.6, 66.4, AZJ_KAHET },
					["groups"] = {
						i(218188),	-- Tuning Crystal (QI!)
					},
				}),
				q(82143, {	-- The Path of Dissonance
					["provider"] = { "n", 226672 },	-- Orweyna
					["sourceQuests"] = {
						80564,	-- Field Research
						80563,	-- Tool of Attunement
					},
					["coord"] = { 49.3, 60.2, AZJ_KAHET_LOWER },	-- but probably could be 2 more, depending on order of quest before?
				}),
				q(80565, {	-- Resounding Repercussions
					["provider"] = { "n", 220603 },	-- Orweyna
					["sourceQuests"] = { 82143 },	-- The Path of Dissonance
					["coord"] = { 59.9, 63.8, AZJ_KAHET },
				}),
				q(80566, {	-- Enemies Around
					["provider"] = { "n", 220608 },	-- Hannan
					["sourceQuests"] = { 80565 },	-- Resounding Repercussions
					["coord"] = { 61.9, 62.6, AZJ_KAHET },
				}),
				q(80567, {	-- Song of Restoring
					["provider"] = { "n", 223285 },	-- Orweyna
					["sourceQuests"] = { 80566 },	-- Enemies Around
					["coord"] = { 59.8, 63.9, AZJ_KAHET },
				}),
				q(80568, {	-- Leave No Trace
					["provider"] = { "n", 223286 },	-- Hannan
					["sourceQuests"] = { 80567 },	-- Song of Restoring
					["coord"] = { 59.8, 64.0, AZJ_KAHET },
					["groups"] = {
						i(223322),	-- Hannan's Scythe (QI!)
					},
				}),
				q(80571, {	-- Decipher the Cacophony
					["provider"] = { "n", 220610 },	-- Orweyna
					["sourceQuests"] = { 80568 },	-- Leave No Trace
					["coord"] = { 62.6, 79.2, AZJ_KAHET_LOWER },
					["groups"] = {
						i(221776),	-- Discordant Essence (QI!)
					},
				}),
				q(80570, {	-- Staunch the Flow
					["provider"] = { "n", 220610 },	-- Orweyna
					["sourceQuests"] = { 80568 },	-- Leave No Trace
					["coord"] = { 62.6, 79.2, AZJ_KAHET_LOWER },
				}),
				q(80572, {	-- Discordant Measure
					["provider"] = { "n", 220610 },	-- Orweyna
					["sourceQuests"] = {
						80571,	-- Staunch the Flow
						80570,	-- Decipher the Cacophony
					},
					["coord"] = { 62.6, 79.2, AZJ_KAHET_LOWER },
					["groups"] = {
						i(225696),	-- Corrupted Heart (QI!)
						i(225698),	-- Root Sliver (QI!)
						i(225697),	-- Sightless Eye (QI!)
					},
				}),
				q(80569, {	-- Harmonious Approach
					["provider"] = { "n", 227158 },	-- Hannan
					["sourceQuests"] = {
						80571,	-- Staunch the Flow
						80570,	-- Decipher the Cacophony
					},
					["coord"] = { 62.5, 79.1, AZJ_KAHET_LOWER },
				}),
			}),
			header(HEADERS.AchCriteria, 40636.05, {	-- Pawns and Puppetry
				q(80203, {	-- Social Clues
					["provider"] = { "n", 219357 },	-- Orator Tx'itk <The Second Strand>
					["sourceQuests"] = { TEMPORARY_SOURCEQUEST },
					["coord"] = { 71.4, 44.4, NERUBAR },
				}),
				q(80204, {	-- Espionage and Ventriloquism
					["provider"] = { "n", 221092 },	-- Orator Tx'itk <The Second Strand>
					["sourceQuests"] = { 80203 },	-- Social Clues
					["coord"] = { 65.7, 40.1, NERUBAR },
					["groups"] = {
						i(219443),	-- Paralytic Draught (QI!)
					},
				}),
				q(80206, {	-- Marionette Mercy
					["provider"] = { "n", 221093 },	-- Orator Tx'itk <The Second Strand>
					["sourceQuests"] = { 80204 },	-- Espionage and Ventriloquism
					["coord"] = { 65.6, 42.3, NERUBAR },
					["groups"] = {
						i(219385),	-- Antiparalytic Serum (QI!)
					},
				}),
				q(80205, {	-- Pulling Strings
					["provider"] = { "n", 221093 },	-- Orator Tx'itk <The Second Strand>
					["sourceQuests"] = { 80206 },	-- Marionette Mercy
					["coord"] = { 65.6, 42.3, NERUBAR },
				}),
			}),
			header(HEADERS.AchCriteria, 40636.06, {	-- The Wormlands
				q(83321, {	-- Strange Bats
					["provider"] = { "n", 223754 },	-- Linny Leadlinger
					["sourceQuests"] = { 78233 },	-- The Weaver's Gift
					["coord"] = { 55.8, 43.7, AZJ_KAHET },
					["isBreadcrumb"] = true,
				}),
				q(78897, {	-- Boom or Blight
					["provider"] = { "n", 211652 },	-- Greenspeaker Na'layro
					["sourceQuests"] = { 83321 },	-- Strange Bats
					["coord"] = { 42.3, 42.5, AZJ_KAHET },
				}),
				q(78898, {	-- Intention vs Instinct
					["qgs"] = {
						225629,	-- Greenspeaker Na'layro
						211652,	-- Greenspeaker Na'layro
					},
					["sourceQuests"] = { 83321 },	-- Strange Bats
					["coord"] = { 42.3, 42.5, AZJ_KAHET },
					["groups"] = {
						i(211412),	-- Singing Stone (QI!)
					},
				}),
				q(78901, {	-- Heeeelllp!!!
					["sourceQuests"] = { 83321 },	-- Strange Bats
					["coord"] = { 41.6, 42.1, AZJ_KAHET },
				}),
				q(78902, {	-- Delegated Dig
					["provider"] = { "n", 214168 },	-- Skedgit Cinderbangs
					["sourceQuests"] = { 78901 },	-- Heeeelllp!!!
					["coord"] = { 40.7, 39.7, AZJ_KAHET },
					["groups"] = {
						o(414113, {	-- Sivstone Deposit
							i(211415),	-- Sivstone Chunk (QI!)
						}),
					},
				}),
				q(79349, {	-- Entrepreneur Inc.
					["provider"] = { "n", 214168 },	-- Skedgit Cinderbangs
					["sourceQuests"] = { 78902 },	-- Delegated Dig
					["coord"] = { 40.7, 39.7, AZJ_KAHET },
					["groups"] = {
						i(226172),	-- Disturbance Detection Device (COSMETIC!)
					},
				}),
			}),
			header(HEADERS.AchCriteria, 40636.07, {	-- Haggling with Mmarl
				q(79651, {	-- Trade Partners
					["provider"] = { "n", 223754 },	-- Linny Leadlinger
					["sourceQuests"] = { 78256 },	-- The General's Consensus
					["coord"] = { 55.8, 43.7, AZJ_KAHET },
					["isBreadcrumb"] = true,
				}),
				q(80558, {	-- Nothing Ventured
					["provider"] = { "n", 217029 },	-- Monte Gazlowe
					["sourceQuests"] = { 79651 },	-- Trade Partners
					["coord"] = { 77.1, 64.2, AZJ_KAHET },
				}),
				q(79539, {	-- Electrifying!
					["provider"] = { "n", 216994 },	-- Jenni Boombuckle
					["sourceQuests"] = { 80558 },	-- Nothing Ventured
					["coord"] = { 77.8, 62.8, AZJ_KAHET },
					["groups"] = {
						i(213629),	-- Debugger Hat (QI!)
					},
				}),
				q(79538, {	-- Smelly Shrubberies
					["provider"] = { "n", 216996 },	-- Rhubarn
					["sourceQuests"] = { 80558 },	-- Nothing Ventured
					["coord"] = { 77.9, 62.9, AZJ_KAHET },
					["groups"] = {
						i(213514),	-- Smellsage Branch (QI!)
					},
				}),
				q(79540, {	-- The Party's Over
					["provider"] = { "n", 217402 },	-- Grigg
					["sourceQuests"] = {
						79539,	-- Electrifying!
						79538,	-- Smelly Shrubberies
					},
					["coord"] = { 77.9, 62.8, AZJ_KAHET },
				}),
				q(79541, {	-- Burn It With Fire
					["provider"] = { "n", 217029 },	-- Monte Gazlowe
					["sourceQuests"] = { 79540 },	-- The Party's Over
					["coord"] = { 77.6, 59.6, AZJ_KAHET },
					["groups"] = {
						i(219392),	-- Flameflow 7000 (QI!)
					},
				}),
			}),
			header(HEADERS.AchCriteria, 40636.08, {	-- The Second Front
				q(79574, {	-- The Second Front
					["provider"] = { "n", 217133 },	-- Kal Smoulderbrow
					["sourceQuests"] = { 78630 },	-- The Rise of the Reckoning
					["coord"] = { 29.4, 41.6, AZJ_KAHET },
					["isBreadcrumb"] = true,
				}),
				q(79580, {	-- Offensive Counter
					["provider"] = { "n", 212076 },	-- General Steelstrike
					["sourceQuests"] = { 79574 },	-- The Second Front
					["coord"] = { 27.5, 45.1, AZJ_KAHET },
				}),
				q(79579, {	-- That Airspace is Mine(d)!
					["provider"] = { "n", 212076 },	-- General Steelstrike
					["sourceQuests"] = { 79574 },	-- The Second Front
					["coord"] = { 27.5, 45.1, AZJ_KAHET },
				}),
			}),
			header(HEADERS.AchCriteria, 40636.09, {	-- Mr. Sunflower's Therapy
				q(82340, {	-- Loss of Limb
					["provider"] = { "n", 223723 },	-- Mr. Sunflower
					["sourceQuests"] = { TEMPORARY_SOURCEQUEST },
					["coord"] = { 63.3, 37.4, NERUBAR_LOWER },
				}),
				q(83057, {	-- Setting Boundaries
					["provider"] = { "n", 223723 },	-- Mr. Sunflower
					["sourceQuests"] = { 82340 },	-- Loss of Limb
					["coord"] = { 55.0, 39.1, NERUBAR_LOWER },
				}),
			}),
			header(HEADERS.AchCriteria, 40636.10, {	-- The Wild Camp
				q(83716, {	-- Beneath the Roots
					["provider"] = { "n", 211409 },	-- Faerin Lothar
					["sourceQuests"] = { TEMPORARY_SOURCEQUEST },
					["coord"] = { 59.4, 19.4, AZJ_KAHET },
					["isBreadcrumb"] = true,
				}),
				q(83628, {	-- Tense Recovery
					["provider"] = { "n", 227222 },	-- Ysabel Gleamgaard
					["sourceQuests"] = { 83716 },	-- Beneath the Roots
					["coord"] = { 23.6, 52.2, AZJ_KAHET },
				}),
				q(83629, {	-- Ancient Respite
					["provider"] = { "n", 227224 },	-- Goehi
					["sourceQuests"] = { 83628 },	-- Tense Recovery
					["coord"] = { 23.9, 40.7, AZJ_KAHET },
				}),
				q(83632, {	-- Rings of Memory
					["provider"] = { "n", 227224 },	-- Goehi
					["sourceQuests"] = { 83629 },	-- Ancient Respite
					["coord"] = { 23.9, 40.7, AZJ_KAHET },
					["groups"] = {
						i(225973),	-- Goehi's Root (QI!)
					},
				}),
				q(83639, {	-- Open Communications
					["provider"] = { "n", 215724 },	-- Ney'leia
					["sourceQuests"] = { 83632 },	-- Rings of Memory
					["coord"] = { 23.1, 53.3, AZJ_KAHET },
				}),
			}),
			header(HEADERS.AchCriteria, 40636.11, {	-- Pillar-nest of Horrors
				q(79954, {	-- Spiders!
					["provider"] = { "n", 217255 },	-- Ag'thax
					["sourceQuests"] = { TEMPORARY_SOURCEQUEST },
					["coord"] = { 77.4, 68.5, NERUBAR },
					["groups"] = {
						i(216688),	-- High Hollows Key (QI!)
					},
				}),
				q(79955, {	-- ...And Now I'm Arachnophobic
					["provider"] = { "n", 217640 },	-- Albert
					["coord"] = { 66.8, 54.9, NERUBAR_LOWER },
				}),
				q(79956, {	-- Legs in the Ceiling
					["provider"] = { "n", 217640 },	-- Albert
					["sourceQuests"] = { 79955 },	-- ...And Now I'm Arachnophobic
					["coord"] = { 69.9, 63.3, NERUBAR_LOWER },
				}),
				q(79957, {	-- Maggots in Your Eyes
					["provider"] = { "n", 217994 },	-- Albert
					["sourceQuests"] = { 79956 },	-- Legs in the Ceiling
					["coord"] = { 68.7, 62.3, NERUBAR_LOWER },
					["groups"] = {
						i(216689),	-- Albert's Head (QI!)
						i(228446),	-- Albert's Last Gloves
						i(228445),	-- Deceased Nerubian's Slippers
						i(228448),	-- Long-Forgotten Girdle
						i(228447),	-- Spider-Fang Epaulets
					},
				}),
			}),
			header(HEADERS.AchCriteria, 40636.12, {	-- Subterfuge in Silk
				q(81686, {	-- Subterfuge in Silk
					["provider"] = { "n", 207476 },	-- Kex
					["sourceQuests"] = { 78244 },	-- Kaheti Hospitality
					["coord"] = { 56.8, 38.8, AZJ_KAHET },
					["isBreadcrumb"] = true,	-- unless it is now required for spawn next quests/npc
				}),
				q(83616, {	-- The Entrenched
					["provider"] = { "n", 222136 },	-- Teth
					-- ["sourceQuests"] = { 81686 },	-- Subterfuge in Silk
					["coord"] = { 69.7, 47.9, AZJ_KAHET },
				}),
				q(81683, {	-- Spring Collection
					["provider"] = { "n", 221557 },	-- Grand Overspinner Antourix
					["sourceQuests"] = { 83616 },	-- The Entrenched
					["coord"] = { 75.8, 52.5, AZJ_KAHET },
					["groups"] = {
						i(224286),	-- Cochineal Crawler (QI!)
						i(224284),	-- Eyeless Petal (QI!)
						i(224285),	-- Luminous Strangler Sap (QI!)
						i(224283),	-- Reclaimed Catalyst (QI!)
					},
				}),
				q(81667, {	-- The Upstart
					["provider"] = { "n", 222136 },	-- Teth
					["sourceQuests"] = { 81686 },	-- Subterfuge in Silk
					["coord"] = { 69.7, 47.9, AZJ_KAHET },
				}),
				q(81668, {	-- Measure Once, Cut Thrice
					["provider"] = { "n", 221550 },	-- Ren'khat
					["sourceQuests"] = { 81667 },	-- The Upstart
					["coord"] = { 66.6, 41.3, AZJ_KAHET },
				}),
				q(81685, {	-- Azj-Kahet's Next Top Dyemaster
					["provider"] = { "n", 222132 },	-- Teth
					["sourceQuests"] = {
						81668,	-- Measure Once, Cut Thrice
						81683,	-- Spring Collection
					},
					["coord"] = { 72.9, 42.8, AZJ_KAHET },
					["groups"] = {
						i(226166),	-- Message-Imprinted Silken Square
					},
				}),
				q(81687, {	-- I Expect You To Dye
					["provider"] = { "n", 222132 },	-- Teth
					["sourceQuests"] = {
						81668,	-- Measure Once, Cut Thrice
						81683,	-- Spring Collection
					},
					["coord"] = { 72.9, 42.8, AZJ_KAHET },
				}),
				q(81688, {	-- That's All
					["provider"] = { "n", 222136 },	-- Teth
					["sourceQuests"] = {
						81685,	-- Azj-Kahet's Next Top Dyemaster
						81687,	-- I Expect You To Dye
					},
					["coord"] = { 69.7, 47.9, AZJ_KAHET },
					["groups"] = {
						i(224659),	-- Secret-Woven Silk (QI!)
					},
				}),
			}),
			header(HEADERS.AchCriteria, 40636.13, {	-- Silken Ward
				q(83324, {	-- A Silken Thread
					["provider"] = { "n", 223754 },	-- Linny Leadlinger
					["sourceQuests"] = { 78256 },	-- The General's Consensus
					["coord"] = { 55.8, 43.7, AZJ_KAHET },
					["isBreadcrumb"] = true
				}),
				q(81890, {	-- Unfulfilled Requests
					["provider"] = { "n", 208782 },	-- Executor Nizrek
					["sourceQuests"] = {
						TEMPORARY_SOURCEQUEST,
						TWW_ACCOUNT_CAMPAIGN_QUEST,
					},
					["sourceQuestNumRequired"] = 1,
					["coord"] = { 52.9, 46.1, NERUBAR },
					["isBreadcrumb"] = true
				}),
				q(81928, {	-- The Voice of the People
					["provider"] = { "n", 221948 },	-- Sum'latha
					["sourceQuests"] = {
						83324,	-- A Silken Thread
						81890,	-- Unfulfilled Requests
					},
					["sourceQuestNumRequired"] = 1,
					["coord"] = { 51.4, 63.9, AZJ_KAHET },
				}),
				q(81959, {	-- Collecting a Concotion
					["provider"] = { "n", 221842 },	-- Alchemist Talbax
					["sourceQuests"] = { 81928 },	-- A Cure for All Problems
					["coord"] = { 59.9, 54.2, AZJ_KAHET },
					["groups"] = {
						i(221755),	-- Alchemical Potions (QI!)
					},
				}),
				q(81962, {	-- A Nudge in the Right Direction
					["provider"] = { "n", 221842 },	-- Alchemist Talbax
					["sourceQuests"] = { 81959 },	-- Collecting a Concotion
					["coord"] = { 59.9, 54.1, AZJ_KAHET },
				}),
				q(81963, {	-- The Fruits of Our Labor
					["provider"] = { "n", 221842 },	-- Alchemist Talbax
					["sourceQuests"] = { 81962 },	-- A Nudge in the Right Direction
					["coord"] = { 59.9, 54.1, AZJ_KAHET },
					["groups"] = {
						i(228443),	-- Liberator's Tarnished Band
						i(228444),	-- Silken Ward Signet
					},
				}),
			}),
			header(HEADERS.AchCriteria, 40636.14, {	-- Grieve & Weave
				q(79630, {	-- Searching the Web
					["provider"] = { "n", 217356 },	-- Arax'ne
					["sourceQuests"] = { TEMPORARY_SOURCEQUEST },
					["coord"] = { 64.1, 15.9, NERUBAR },
				}),
				q(79631, {	-- Klaskin's Great Escape
					["provider"] = { "n", 217355 },	-- Klaskin
					["sourceQuests"] = { 79630 },	-- Searching the Web
					["coord"] = { 47.9, 13.2, NERUBAR },
				}),
				q(80502, {	-- Don't Cry for Me, Azi-Kahet
					["provider"] = { "n", 220690 },	-- Klaskin
					["sourceQuests"] = { 79631 },	-- Klaskin's Great Escape
					["coord"] = { 63.9, 16.2, NERUBAR },
					["groups"] = {
						i(226173),	-- Boots of the First Embrace
						i(226174),	-- Famished Bride's Clasp
						i(226176),	-- Love's Last Grasp
						i(226175),	-- Traditional Nuptial Shoulderpads
					},
				}),
			}),
			header(HEADERS.AchCriteria, 40636.15, {	-- All Good Things...
				q(82248, {	-- Advance to Faerin
					["provider"] = { "n", 207471 },	-- Widow Arak'nai
					["sourceQuests"] = { 78256 },	-- The General's Consensus
					["coord"] = { 55.7, 43.8, AZJ_KAHET },
					["isBreadcrumb"] = true,
				}),
				q(81929, {	-- Here's the Plan
					["provider"] = { "n", 211409 },	-- Faerin Lothar
					["sourceQuests"] = { 82248 },	-- Advance to Faerin
					["coord"] = { 59.4, 19.4, AZJ_KAHET },
				}),
				q(81945, {	-- To Arathi's End
					["provider"] = { "n", 211409 },	-- Faerin Lothar
					["sourceQuests"] = { 81929 },	-- Here's the Plan
					["coord"] = { 59.4, 19.4, AZJ_KAHET },
				}),
				q(81964, {	-- The Blacksmith's Fate
					["qgs"] = {
						221961,	-- Faerin Lothar
						221980,	-- Faerin Lothar
					},
					["sourceQuests"] = { 81945 },	-- To Arathi's End
					["coord"] = { 63.8, 17.9, AZJ_KAHET },	-- Faerin and Monte start following on quest accept
					["groups"] = {
						i(223157),	-- Blacksmith's Breastplate (QI!)
					},
				}),
				q(81965, {	-- Invasion Disruption
					["qgs"] = {
						221961,	-- Faerin Lothar
						221980,	-- Faerin Lothar
					},
					["sourceQuests"] = { 81945 },	-- To Arathi's End
					["coord"] = { 63.8, 17.9, AZJ_KAHET },	-- Faerin and Monte start following on quest accept
				}),
				q(81950, {	-- BOOM Treats!
					["qgs"] = {
						221977,	-- Monte Gazlowe
						221982,	-- Monte Gazlowe
					},
					["sourceQuests"] = { 81945 },	-- To Arathi's End
					["coord"] = { 63.8, 17.9, AZJ_KAHET },	-- Faerin and Monte start following on quest accept
				}),
				q(81969, {	-- An End to the End
					["provider"] = { "n", 221980 },	-- Faerin Lothar
					["sourceQuests"] = {
						81950,	-- BOOM Treats!
						81965,	-- Invasion Disruption
						81964,	-- The Blacksmith's Fate
					},
					--["coord"] = { x, y, },	-- Faerin and Monte are following the player
				}),
				q(82268, {	-- The Sorrowful Journey Home
					["provider"] = { "n", 223467 },	-- Faerin Lothar
					["sourceQuests"] = { 81969 },	-- An End to the End
					["coord"] = { 48.8, 58.4, AZJ_KAHET },
					["groups"] = {
						i(223247),	-- Ryton Blackholme's Breastplate (QI!)
					},
				}),
				q(82284, {	-- Remembrance for the Fallen
					["provider"] = { "n", 220406 },	-- Faerin Lothar
					["sourceQuests"] = { 82268 },	-- The Sorrowful Journey Home
					["coord"] = { 43.2, 56.3, HALLOWFALL },
					["groups"] = {
						i(223515),	-- Breastplate and Tinderbox (QI!)
						i(223444),	-- Arathi Defender's Breeches
						i(223462),	-- Honorable Arathi Breastplate
						i(223450),	-- Honored Soldier's Chainmail
						i(223439),	-- Mereldar Scholar's Leggings
					},
				}),
				------ Stay awhile and listen ------
				hqt(81513, {	-- Stay awhile and listen: Faerin Lothar
					["name"] = "Stay awhile and listen: Faerin Lothar",
					["sourceQuests"] = { 82284 },	-- Remembrance for the Fallen
					["provider"] = { "n", 211409 },	-- Faerin Lothar
					["coord"] = { 59.4, 19.4, AZJ_KAHET },
				}),
			}),
			header(HEADERS.Item, 224150, {	-- Siegbarg
				q(83627, {	-- The Beginning of Something Beautiful
					["provider"] = { "i", 225952 },	-- 1x Vial of Tka'ktath's Blood
				}),
				q(83719, {	-- Those Are Chitin Words
					["provider"] = { "n", 218171 },	-- Shalba
					["sourceQuests"] = { 83627 },	-- The Beginning of Something Beautiful
					["coord"] = { 45.4, 13.5, NERUBAR },
					["groups"] = {
						i(225950),	-- Nerubian Chitin (QI!)
					},
				}),
				q(83720, {	-- Venom? More Like Get 'Em
					["provider"] = { "n", 218171 },	-- Shalba
					["sourceQuests"] = { 83719 },	-- Those Are Chitin Words
					["coord"] = { 45.4, 13.5, NERUBAR },
					["groups"] = {
						i(226135),	-- Nerubian Venom (QI!)
					},
				}),
				q(83721, {	-- A Small Ocean's Worth of Blood
					["provider"] = { "n", 218171 },	-- Shalba
					["sourceQuests"] = { 83720 },	-- Venom? More Like Get 'Em
					["coord"] = { 45.4, 13.5, NERUBAR },
					["groups"] = {
						i(226136),	-- Nerubian Blood (QI!)
					},
				}),
				q(84246, {	-- Witnessing Brilliance
					["provider"] = { "n", 218171 },	-- Shalba
					["sourceQuests"] = { 83721 },	-- Venom? More Like Get 'Em
					["coord"] = { 45.4, 13.5, NERUBAR },
				}),
				q(83722, {	-- Consolation Flies
					["provider"] = { "n", 218171 },	-- Shalba
					["sourceQuests"] = { 84246 },	-- Witnessing Brilliance
					["coord"] = { 45.4, 13.5, NERUBAR },
					["groups"] = {
						i(224150),	-- Siesbarg (MOUNT!)
					},
				}),
			}),
			------ Legendary Legerdemain ------
			q(79717, {	-- Means of Ingress
				["provider"] = { "n", 217692 },	-- Ar'syn <Legendary Legerdemain>
				["sourceQuests"] = { TEMPORARY_SOURCEQUEST },
				["coord"] = { 32.0, 22.5, NERUBAR },
			}),
			q(79718, {	-- Skeins Street Irregulars
				["provider"] = { "n", 217692 },	-- Ar'syn <Legendary Legerdemain>
				["sourceQuests"] = { TEMPORARY_SOURCEQUEST },
				["coord"] = { 32.0, 22.5, NERUBAR },
			}),
			q(79729, {	-- Educate Yourself
				["provider"] = { "n", 217692 },	-- Ar'syn <Legendary Legerdemain>
				["sourceQuests"] = {
					79717,	-- Means of Ingress
					79718,	-- Skeins Street Irregulars
				},
				["coord"] = { 32.0, 22.5, NERUBAR },
			}),
			q(79723, {	-- Repatriation by Subtraction
				["provider"] = { "n", 217692 },	-- Ar'syn <Legendary Legerdemain>
				["sourceQuests"] = {
					79717,	-- Means of Ingress
					79718,	-- Skeins Street Irregulars
				},
				["coord"] = { 32.0, 22.5, NERUBAR },
				["groups"] = {
					i(215159),	-- Pillaged Trophy (QI!)
				},
			}),
			q(79730, {	-- Dogged Pursuit
				["provider"] = { "n", 217692 },	-- Ar'syn <Legendary Legerdemain>
				["sourceQuests"] = {
					79729,	-- Educate Yourself
					79723,	-- Repatriation by Subtraction
				},
				["coord"] = { 34.0, 29.8, NERUBAR },
			}),
			------ Miscellaneous ------
			q(84664, {	-- Making the Underworld Go Round
				["provider"] = { "n", 223754 },	-- Linny Leadlinger
				--["sourceQuests"] = { ? },	-- ?
				["coord"] = { 55.8, 43.7, AZJ_KAHET },
				["groups"] = {
					i(228913),	-- Dubious Vial of Vigor (QI!)
				},
			}),
			-- Raid Campaign Intro --
			q(83587, {	-- Our Chance to Strike
				["provider"] = { "n", 227217 },	-- Webster
				--["sourceQuests"] = { ? },	-- ?
				["coords"] = {
					{ 31.6, 63.2, DORNOGAL },
					{ 57, 41.7, AZJ_KAHET },
					{ 39.4, 65.4, NERUBAR },
				},
			}),
			q(82124, {	-- The Beginning of the End
				["provider"] = { "n", 208782 },	-- Executor Nizrek
				["sourceQuests"] = { 83587 },	-- Our Chance to Strike
				["coord"] = { 52.9, 46.1, NERUBAR },
			}),
			q(82125, {	-- A Spy Like Us
				["provider"] = { "n", 208782 },	-- Executor Nizrek
				["sourceQuests"] = { 82124 },	-- The Beginning of the End
				["coord"] = { 52.9, 46.1, NERUBAR },
			}),
			q(82126, {	-- Defense of the People
				["provider"] = { "n", 222790  },	-- Gut'usu
				["sourceQuests"] = { 82125 },	-- A Spy Like Us
				["coord"] = { 57.2, 41, NERUBAR_LOWER },
			}),
			q(82127, {	-- Make Them Prey
				["provider"] = { "n", 222790  },	-- Gut'usu
				["sourceQuests"] = { 82125 },	-- A Spy Like Us
				["coord"] = { 57.2, 41, NERUBAR_LOWER },
			}),
			q(82130, {	-- A Shot at the Top
				["provider"] = { "n", 222790  },	-- Gut'usu
				["sourceQuests"] = {
					82126,	-- Defense of the People
					82127,	-- Make Them Prey
				},
				["coord"] = { 57.2, 41, NERUBAR_LOWER },
			}),
			q(82141, {	-- To Kill a Queen
				["provider"] = { "n", 208782 },	-- Executor Nizrek
				["sourceQuests"] = { 82130 },	-- A Shot at the Top
				["coord"] = { 52.9, 46.1, NERUBAR },
				["groups"] = {
					i(224072),	-- Enchanted Runed Harbinger Crest
					i(225896),	-- Void-Touched Valorstone
				},
			}),
			--
			n(BONUS_OBJECTIVES, sharedData({
				["lockCriteria"] = { 1, "lvl", 80 },
			},{
				q(81670, {	-- Shattered Silk
					["coord"] = { 72.8, 55.0, AZJ_KAHET },
				}),
			})),
		}),
	}),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.TWW, bubbleDownSelf({ ["timeline"] = { ADDED_11_0_2 } }, {
	m(KHAZ_ALGAR, {
		m(AZJ_KAHET, {
			n(QUESTS, {
				q(79658),	-- [DNT] The Severed Threads Renown Unlock (spellID 448677)
				q(83488, {	-- Rak-Ush Stagshell World Quests Unlocked (spellID 456051)
					["name"] = "Rak-Ush Stagshell World Quests Unlocked.",
				}),
				-- Pheromones (spellID 444927 - [DNT] Set Faction Reputation) - ?
				q(81628),	-- triggered during questID 79175 (I Think I'm a Drone Now) when apply Anub'azal's Pheromones
				q(81625),	-- triggered during questID 78226 (A Most Intriguing Invitation) when apply Azi-Kahet Pheromones
				q(81623),	-- triggered during questID 78228 (Into a Skittering City) when apply Azi-Kahet Pheromones
				q(84471),	-- triggered after turn in questID 84682 (Of Pacts and Patrons) (spellID 463432 - [DNT] Choice Complete Credit)
				q(84681, {	-- triggered after turn in questID 84682 (Of Pacts and Patrons) (spellID 463432 - [DNT] Choice Complete Credit)
					["name"] = "'Of Pacts and Patrons' Completed Credit (Account-wide)",
					["sourceQuest"] = 84682,	-- Of Pacts and Patrons
				}),
				q(84666),	-- triggered after turn in questID 84664 (Making the Underworld Go Round) (spellID 463299 - [DNT] Push Loot)
				q(86931, {	-- triggered after turn in of any of the pact weeklies?
					["timeline"] = { ADDED_11_0_7 },
				}),
			}),
		}),
	}),
})));
