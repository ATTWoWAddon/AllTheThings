---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(KHAZ_ALGAR, {
	m(AZJ_KAHET, {
		n(RARES, sharedData({ ["isDaily"] = true }, {
			n(216042, {	-- Cha'tak
				["description"] = "Inside the cave, behind the waterfall.",
				["coord"] = { 70.7, 21.4, AZJ_KAHET },
				["questID"] = 81704,
				["groups"] = {
					i(221212),	-- Death Burrower Handguards
					i(221237),	-- Lamentable Vagrant's Lantern
				},
			}),
			n(222624, {	-- Deepcrawler Tx'kesh
				["coord"] = { 64.5, 6.4, AZJ_KAHET },
				["questID"] = 82077,
				["groups"] = {
					i(223923),	-- Gilded Cryptlord's Sabatons
					i(223917),	-- Nerubian Covert's Cloak
					i(223916),	-- Nerubian Cutthroat's Reach
					i(223915),	-- Nerubian Orator's Stiletto
				},
			}),
			n(216045, {	-- Enduring Gutterface
				["coord"] = { 58.0, 62.3, AZJ_KAHET },
				["questID"] = 81707,
				["groups"] = {
					i(221248),	-- Deep Terror Carver
					i(221243),	-- Slippers of Delirium (alpha data)
				},
			}),
			n(216050, {	-- Harverster Qixt
				["description"] = "Patrols in the area.",
				["questID"] = 82036,
				["coords"] = {
					{ 62.4, 86.4, AZJ_KAHET_LOWER},	-- Start
					{ 64.3, 86.0, AZJ_KAHET_LOWER},	-- Mid
					{ 65.5, 81.9, AZJ_KAHET_LOWER},	-- End
				},
				["groups"] = {
					i(223917),	-- Nerubian Covert's Cloak
					i(223941),	-- Nerubian Cultivator's Girdle
					i(223916),	-- Nerubian Cutthroat's Reach
					i(223915),	-- Nerubian Orator's Stiletto
				},
			}),
			n(216048, {	-- Jix'ak the Crazed
				--["description"] = "Can be at any blood pool in area?",
				["questID"] = 82034,
				["coord"] = { 65.1, 85.7, AZJ_KAHET_LOWER},
				["groups"] = {
					i(223950),	-- Corruption Sifter's Treads
					i(223917),	-- Nerubian Covert's Cloak
					i(223916),	-- Nerubian Cutthroat's Reach
					i(223915),	-- Nerubian Orator's Stiletto
				},
			}),
			n(221327, {	-- Kaheti Silk Hauler
				["description"] = "Patrols on the road.",
				["coords"] = {
					{ 65.2, 18.9, AZJ_KAHET },	-- Start
					{ 63.2, 25.2, AZJ_KAHET },	-- Mid
					{ 61.7, 29.8, AZJ_KAHET },	-- End
				},
				["questID"] = 81702,
				["groups"] = {
					i(221240),	-- Nerubian Stagshell Gouger
					i(221206),	-- Reinforced Chitin Chestpiece
				},
			}),
			n(216044, {	-- Maddened Siegebomber
				--TODO: need more coords, flying around
				["coord"] = { 66.4, 56.4, AZJ_KAHET },
				["questID"] = 81706,
				["groups"] = {
					i(221217),	-- Nerubian Bomber's Leggings
					i(221252),	-- Nerubian Slayer's Claymore
					i(221263),	-- Nerubian Venom-Tipped Dart
				},
			}),
			n(216043, {	-- Monstrous Lasharoth
				["coord"] = { 68.9, 72.2, AZJ_KAHET },
				["questID"] = 81705,
				["groups"] = {
					i(221250),	-- Creeping Lasher Machete
					i(221253),	-- Cultivator's Plant Puncher
					i(221227),	-- Monstrous Fungal Cord
				},
			}),
			n(216052, {	-- Skrimisher Sa'zryk
				["description"] = "Patrolling the path from the base to the top.",
				["coords"] = {
						{ 61.3, 7.6, AZJ_KAHET },
						{ 62.9, 4.8, AZJ_KAHET },
				},
				["questID"] = 82078,
				["groups"] = {
					i(223939),	-- Esteemed Nerubian's Mantle
					i(223917),	-- Nerubian Covert's Cloak
					i(223916),	-- Nerubian Cutthroat's Reach
					i(223915),	-- Nerubian Orator's Stiletto
				},
			}),
			n(216038, {	-- The Groundskeeper
				["coord"] = { 30.6, 55.5, NERUBAR },
				["questID"] = 81634,
				["groups"] = {
					i(221214),	-- Chitin Chain Headpiece
					i(221252),	-- Nerubian Slayer's Claymore
				},
			}),
			n(216047, {	-- The One Left
				["questID"] = 82290,
				["coord"] = { 63.5, 95.2, AZJ_KAHET },
				["groups"] = {
					i(221251),	-- Bestial Underground Cleaver
					i(221247),	-- Cavernous Critter Shooter
					i(221265),	-- Charm of the Underground Beast
					i(225998),	-- Earthen Adventurer's Cloak
					i(221246),	-- Fierce Beast Staff
				},
			}),
			n(216049, {	-- The Oozekhan
				["questID"] = 82035,
				["coord"] = { 61.7, 89.4, AZJ_KAHET_LOWER },
				["groups"] = {
					i(223931),	-- Black Blood Cowl
				},
			}),
			n(216046, {	-- Tka'ktath
				["questID"] = 82289,
				["coord"] = { 62.8, 66.7, AZJ_KAHET },
				["groups"] = {
					i(221252),	-- Nerubian Slayer's Claymore
					i(221240),	-- Nerubian Stagshell Gouger
					i(221263),	-- Nerubian Venom-Tipped Dart
					i(225952),	-- Vial of Tka'ktath's Blood (QS!)
				},
			}),
			n(216051, {	-- Umbraclaw Matra
				["coord"] = { 64.5, 3.4, AZJ_KAHET },
				["questID"] = 82037,
				["groups"] = {
					i(223930),	-- Monstrous Chain Pincers
					i(221240),	-- Nerubian Stagshell Gouger
				},
			}),
			n(216039, {	-- Xishorr
				["coord"] = { 67.3, 58.4, NERUBAR_LOWER },
				["questID"] = 81701,
				["groups"] = {
					i(221506),	-- Arachnid's Web-Sown Guise
					i(221239),	-- Spider Blasting Blunderbuss
					i(221221),	-- Venomous Lurker's Shoulderplates
				},
			}),
			n(216034, {	-- XT-Minecrusher 8700
				["coord"] = { 76.6, 57.8, AZJ_KAHET },
				["questID"] = 81703,
				["groups"] = {
					i(221232),	-- Polished Goblin Bling
					i(221231),	-- Steam-Powered Wristwatch
				},
			}),
		})),
		n(RARES, {
			n(216031, {	-- Abyssal Devourer
				["coord"] = { 47.4, 43.7, AZJ_KAHET },
				["questID"] = 81695,
				["groups"] = {
					i(223390),	-- Leggings of Dark Hunger
					i(223391),	-- Legguards of Dark Hunger
					i(223389),	-- Legplates of Dark Hunger
					i(223392),	-- Trousers of Dark Hunger
				},
			}),
			n(214151, {	-- Ahg'zagall
				["coord"] = { 40.0, 47.3, AZJ_KAHET },
				["questID"] = 78905,
				["groups"] = {
					i(223375),	-- Clattering Chitin Necklace
				},
			}),
			n(216032, {	-- Stronghold Scouts (Khak'ik npcID)
				["crs"] = { 221032 },	-- Rhak'ik
				["coords"] = {
					{ 45.5, 36.2, AZJ_KAHET },	-- Start
					{ 45.5, 42.1, AZJ_KAHET },	-- Mid
					{ 45.5, 47.1, AZJ_KAHET },	-- End
				},
				["questID"] = 81694,
				["groups"] = {
					i(223378),	-- Footguards of the Nerubian Twins
					i(223407),	-- Sabatons of the Nerubian Twins
					i(223406),	-- Slippers of the Nerubian Twins
					i(223408),	-- Treads of the Nerubian Twins
				},
			}),
			n(216037, {	-- Vilewing
				["description"] = "Flies around the area.",
				["coord"] = { 36.6, 44.3, AZJ_KAHET },
				["questID"] = 81700,
				["groups"] = {
					i(223388),	-- Vilewing Cap
					i(223387),	-- Vilewing Chain Helm
					i(223386),	-- Vilewing Crown
					i(223405),	-- Vilewing Visor
				},
			}),
			n(216041, {	-- Webspeaker Grik'ik
				["coord"] = { 61.3, 27.3, AZJ_KAHET },
				["questID"] = 81699,
				["groups"] = {
					i(223369),	-- Webspeaker's Spiritual Cloak
				},
			}),
		}),
	}),
}));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.TWW, {
	m(KHAZ_ALGAR, {
		m(AZJ_KAHET, {
			n(RARES, {
				q(84073, {	-- Weekly reputation: Cha'tak
					["name"] = "Cha'tak weekly reputation obtained.",
				}),
				q(84081, {	-- Weekly reputation: Deepcrawler Tx'kesh
					["name"] = "Deepcrawler Tx'kesh weekly reputation obtained.",
				}),
				q(84076, {	-- Weekly reputation: Enduring Gutterface
					["name"] = "Enduring Gutterface weekly reputation obtained.",
				}),
				q(84079, {	-- Weekly reputation: Harverster Qixt
					["name"] = "Harverster Qixt weekly reputation obtained.",
				}),
				q(84077, {	-- Weekly reputation: Jix'ak the Crazed
					["name"] = "Jix'ak the Crazed weekly reputation obtained.",
				}),
				q(84071, {	-- Weekly reputation: Kaheti Silk Hauler
					["name"] = "Kaheti Silk Hauler weekly reputation obtained.",
				}),
				q(84075, {	-- Weekly reputation: Maddened Siegebomber
					["name"] = "Maddened Siegebomber weekly reputation obtained.",
				}),
				q(84074, {	-- Weekly reputation: Monstrous Lasharoth
					["name"] = "Monstrous Lasharoth weekly reputation obtained.",
				}),
				q(84082, {	-- Weekly reputation: Skrimisher Sa'zryk
					["name"] = "Skrimisher Sa'zryk weekly reputation obtained.",
				}),
				q(84069, {	-- Weekly reputation: The Groundskeeper
					["name"] = "The Groundskeeper weekly reputation obtained.",
				}),
				q(85167, {	-- Weekly reputation: The One Left
					["name"] = "The One Left weekly reputation obtained.",
				}),
				q(84078, {	-- Weekly reputation: The Oozekhan
					["name"] = "The Oozekhan weekly reputation obtained.",
				}),
				q(85166, {	-- Weekly reputation: Tka'ktath
					["name"] = "Tka'ktath weekly reputation obtained.",
				}),
				q(84080, {	-- Weekly reputation: Umbraclaw Matra
					["name"] = "Umbraclaw Matra weekly reputation obtained.",
				}),
				q(84070, {	-- Weekly reputation: Xishorr
					["name"] = "Xishorr weekly reputation obtained.",
				}),
				q(84072, {	-- Weekly reputation: XT-Minecrusher 8700
					["name"] = "XT-Minecrusher 8700 weekly reputation obtained.",
				}),
			}),
		}),
	}),
}));
