-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------
local LIBRARY_BOOKS_HEADER = createHeader({
	readable = "Library Books",
	icon = 133739,
	text = {
		en = "Library Books",
		-- TODO: de = "",
		-- TODO: es = "",
		-- TODO: mx = "",
		-- TODO: fr = "",
		-- TODO: it = "",
		-- TODO: ko = "",
		-- TODO: pt = "",
		-- TODO: ru = "",
		cn = "图书馆藏书",
		tw = "圖書館藏書",
	},
});
local allBookSourceQuests = {
	81955,	-- A Mind of Metal
	84398,	-- A Study of the Light
	79949,	-- A Web of Lies: Debunking Myths and Legends
	78145,	-- Arcanic Systems Manual
	79091,	-- Archmage Antonidas: The Unabridged Autobiography
	79092,	-- Archmage Theocritus's Research Journal
	79096,	-- Ataeric: On Arcane Curiosities
	79535,	-- Basilisks: Should Petrification be Feared?
	79097,	-- Baxtan: On Destructive Magics
	78142,	-- Bewitchments and Glamours
	81956,	-- Conjurer's Codex
	78147,	-- Crimes Against Anatomy
	79948,	-- Defensive Magics 101
	79950,	-- Demons and You
	81952,	-- Everyday Etiquette
	78149,	-- Fury of the Land
	79947,	-- Geomancy: The Stone-Cold Truth
	78146,	-- Goaz Scrolls
	84399,	-- Ka-Boom!
	81949,	-- Legends of the Tidesages
	84396,	-- Magma or Lava?
	79951,	-- Mummies: A Guide to the Unsavory Undead
	78124,	-- Nar'thalas Almanac
	84402,	-- Necromancy 101
	84397,	-- Northern Kalimdor - A Comprehensive Guide
	79093,	-- Rumi of Gnomeregan: The Collected Works
	78148,	-- Runes of the Sorceror-Kings
	79952,	-- RwlRwlRwlRwl!
	81947,	-- Sanguine Sorcery
	84401,	-- Scourge: Undead Menace or Misunderstood?
	78143,	-- Secrets of the Dreamers
	81953,	-- Stonewrought Design
	79095,	-- The Apothecary's Metaphysical Primer
	78127,	-- The Dalaran Digest
	84400,	-- The Knight and the Lady
	79094,	-- The Lessons of Ta'zo
	84395,	-- Undead Potatoes
	81954,	-- Venomous Journeys
};
root(ROOTS.ExpansionFeatures, {
	n(LIBRARY_BOOKS_HEADER, {	-- Library Books
		aqd = {
			qg = 211033,	-- Garion Wendell <Librarian>
			coord = { 49.0, 86.4, STORMWIND_CITY },
		},
		hqd = {
			qg = 211022,	-- Owen Thadd <Librarian>
			coord = { 73.6, 33.0, UNDERCITY },
		},
		timeline = { TIMELINE.ADDED_1_60_1 },
		groups = {
			q(81955, {	-- A Mind of Metal
				provider = { "i", 220352 },	-- A Mind of Metal
				maps = { SEARING_GORGE },
				groups = {
					i(211779),	-- Comprehension Charm
				},
			}),
			q(84398, {	-- A Study of the Light
				provider = { "i", 228135 },	-- A Study of the Light
				maps = { EASTERN_PLAGUELANDS },
				-- TODO: Wowhead lists Jennea Cannon (5497) as the quest giver for this book instead of the librarians. Confirm in game.
				groups = {
					i(211779),	-- Comprehension Charm
				},
			}),
			q(79949, {	-- A Web of Lies: Debunking Myths and Legends
				provider = { "i", 215816 },	-- A Web of Lies: Debunking Myths and Legends
				maps = { ARATHI_HIGHLANDS },
				groups = {
					i(211779),	-- Comprehension Charm
				},
			}),
			q(78145, {	-- Arcanic Systems Manual
				provider = { "i", 209847 },	-- Arcanic Systems Manual
				maps = { THE_BARRENS },
				groups = {
					i(211779),	-- Comprehension Charm
				},
			}),
			q(79091, {	-- Archmage Antonidas: The Unabridged Autobiography
				provider = { "i", 203754 },	-- Archmage Antonidas: The Unabridged Autobiography
				maps = { IRONFORGE },
				races = ALLIANCE_ONLY,
				groups = {
					i(211779),	-- Comprehension Charm
				},
			}),
			q(79092, {	-- Archmage Theocritus' Research Journal
				provider = { "i", 203755 },	-- Archmage Theocritus's Research Journal
				maps = { ELWYNN_FOREST },
				races = ALLIANCE_ONLY,
				groups = {
					i(211779),	-- Comprehension Charm
				},
			}),
			q(79096, {	-- Ataeric: On Arcane Curiosities
				provider = { "i", 210177 },	-- Ataeric: On Arcane Curiosities
				maps = { SILVERPINE_FOREST },
				races = HORDE_ONLY,
				groups = {
					i(211779),	-- Comprehension Charm
				},
			}),
			q(79535, {	-- Basilisks: Should Petrification be Feared?
				provider = { "i", 213165 },	-- Basilisks: Should Petrification be Feared?
				maps = { STRANGLETHORN_VALE },
				groups = {
					i(211779),	-- Comprehension Charm
				},
			}),
			q(79097, {	-- Baxtan: On Destructive Magics
				provider = { "i", 208800 },	-- Baxtan: On Destructive Magics
				maps = { THE_BARRENS },
				groups = {
					i(211779),	-- Comprehension Charm
				},
			}),
			q(78142, {	-- Bewitchments and Glamours
				provider = { "i", 209845 },	-- Bewitchments and Glamours
				maps = { WESTFALL },
				groups = {
					i(211779),	-- Comprehension Charm
				},
			}),
			q(81956, {	-- Conjurer's Codex
				provider = { "i", 220353 },	-- Conjurer's Codex
				maps = { BLASTED_LANDS },
				groups = {
					i(211779),	-- Comprehension Charm
				},
			}),
			q(78147, {	-- Crimes Against Anatomy
				provider = { "i", 209849 },	-- Crimes Against Anatomy
				maps = { DUSKWOOD },
				groups = {
					i(211779),	-- Comprehension Charm
				},
			}),
			q(79948, {	-- Defensive Magics 101
				provider = { "i", 215815 },	-- Defensive Magics 101
				maps = { ALTERAC_MOUNTAINS },
				groups = {
					i(211779),	-- Comprehension Charm
				},
			}),
			q(79950, {	-- Demons and You
				provider = { "i", 215817 },	-- Demons and You
				maps = { DESOLACE },
				groups = {
					i(211779),	-- Comprehension Charm
				},
			}),
			q(81952, {	-- Everyday Etiquette
				provider = { "i", 220348 },	-- Everyday Etiquette
				maps = { AZSHARA },
				groups = {
					i(211779),	-- Comprehension Charm
				},
			}),
			q(78150, {	-- Friend of the Library
				sourceQuests = allBookSourceQuests,
				sourceQuestNumRequired = 10,
				groups = {
					i(277203),	-- Scholarly Pendant
					i(277204),	-- Erudite's Amulet
				},
			}),
			q(78149, {	-- Fury of the Land
				provider = { "i", 209851 },	-- Fury of the Land
				maps = { STONETALON_MOUNTAINS },
				groups = {
					i(211779),	-- Comprehension Charm
				},
			}),
			q(79947, {	-- Geomancy: The Stone-Cold Truth
				provider = { "i", 215683 },	-- Geomancy: The Stone-Cold Truth
				maps = { THOUSAND_NEEDLES },
				groups = {
					i(211779),	-- Comprehension Charm
				},
			}),
			q(78146, {	-- Goaz Scrolls
				provider = { "i", 209848 },	-- Goaz Scrolls
				maps = { WETLANDS },
				groups = {
					i(211779),	-- Comprehension Charm
				},
			}),
			q(79536, {	-- Greater Friend of the Library (1/2)
				sourceQuests = allBookSourceQuests,
				sourceQuestNumRequired = 20,
				lvl = 20,
				groups = {
					i(281634),	-- Field Researcher's Loop
					i(281635),	-- Philanthropist's Ring
				},
			}),
			q(82208, {	-- Greater Friend of the Library (2/2)
				sourceQuests = allBookSourceQuests,
				sourceQuestNumRequired = 25,
				lvl = 30,
				groups = {
					i(277254),	-- Truthseeker's Bow
					i(277258),	-- Crest of Elucidation
					i(277260),	-- Researcher's Night Light
				},
			}),
			q(84399, {	-- Ka-Boom!
				provider = { "i", 228136 },	-- Ka-Boom!
				maps = { WINTERSPRING },
				-- TODO: Wowhead lists Jennea Cannon (5497) as the quest giver for this book instead of the librarians. Confirm in game.
				groups = {
					i(211779),	-- Comprehension Charm
				},
			}),
			q(81949, {	-- Legends of the Tidesages
				provider = { "i", 220346 },	-- Legends of the Tidesages
				maps = { TANARIS },
				groups = {
					i(211779),	-- Comprehension Charm
				},
			}),
			q(84396, {	-- Magma or Lava?
				provider = { "i", 228133 },	-- Magma or Lava?
				maps = { BURNING_STEPPES },
				-- TODO: Wowhead lists Jennea Cannon (5497) as the quest giver for this book instead of the librarians. Confirm in game.
				groups = {
					i(211779),	-- Comprehension Charm
				},
			}),
			q(79951, {	-- Mummies: A Guide to the Unsavory Undead
				provider = { "i", 215820 },	-- Mummies: A Guide to the Unsavory Undead
				maps = { BADLANDS },
				groups = {
					i(211779),	-- Comprehension Charm
				},
			}),
			q(78124, {	-- Nar'thalas Almanac
				provider = { "i", 209843 },	-- Nar'thalas Almanac, Vol. 74
				maps = { DARKSHORE },
				groups = {
					i(211779),	-- Comprehension Charm
				},
			}),
			q(84402, {	-- Necromancy 101
				provider = { "i", 228141 },	-- Necromancy 101
				maps = { WESTERN_PLAGUELANDS },
				-- TODO: Wowhead lists Jennea Cannon (5497) as the quest giver for this book instead of the librarians. Confirm in game.
				groups = {
					i(211779),	-- Comprehension Charm
				},
			}),
			q(84397, {	-- Northern Kalimdor - A Comprehensive Guide
				provider = { "i", 228134 },	-- Northern Kalimdor - A Comprehensive Guide
				maps = { FELWOOD },
				-- TODO: Wowhead lists Jennea Cannon (5497) as the quest giver for this book instead of the librarians. Confirm in game.
				groups = {
					i(211779),	-- Comprehension Charm
				},
			}),
			q(97286, {	-- Research Access
				classes = { MAGE },
				-- TODO: Wowhead doesn't list this quest's objectives yet.
			}),
			q(79093, {	-- Rumi of Gnomeregan: The Collected Works
				provider = { "i", 208860 },	-- Rumi of Gnomeregan: The Collected Works
				maps = { WESTFALL, LOCH_MODAN },
				races = ALLIANCE_ONLY,
				groups = {
					i(211779),	-- Comprehension Charm
				},
			}),
			q(78148, {	-- Runes of the Sorcerer-Kings
				provider = { "i", 209850 },	-- Runes of the Sorcerer-Kings
				maps = { LOCH_MODAN },
				races = ALLIANCE_ONLY,
				groups = {
					i(211779),	-- Comprehension Charm
				},
			}),
			q(79952, {	-- RwlRwlRwlRwl!
				provider = { "i", 215822 },	-- RwlRwlRwlRwl!
				maps = { DUSTWALLOW_MARSH },
				groups = {
					i(211779),	-- Comprehension Charm
				},
			}),
			q(81947, {	-- Sanguine Sorcery
				provider = { "i", 220345 },	-- Sanguine Sorcery
				maps = { SWAMP_OF_SORROWS },
				groups = {
					i(211779),	-- Comprehension Charm
				},
			}),
			q(84401, {	-- Scourge: Undead Menace or Misunderstood?
				provider = { "i", 228140 },	-- Scourge: Undead Menace or Misunderstood?
				maps = { EASTERN_PLAGUELANDS },
				-- TODO: Wowhead lists Jennea Cannon (5497) as the quest giver for this book instead of the librarians. Confirm in game.
				groups = {
					i(211779),	-- Comprehension Charm
				},
			}),
			q(78143, {	-- Secrets of the Dreamers
				provider = { "i", 209846 },	-- Secrets of the Dreamers
				maps = { WAILING_CAVERNS },
				groups = {
					i(211779),	-- Comprehension Charm
				},
			}),
			q(81953, {	-- Stonewrought Design
				provider = { "i", 220349 },	-- Stonewrought Design
				maps = { BURNING_STEPPES },
				groups = {
					i(211779),	-- Comprehension Charm
				},
			}),
			q(79095, {	-- The Apothecary's Metaphysical Primer
				provider = { "i", 208185 },	-- The Apothecary's Metaphysical Primer
				maps = { TIRISFAL_GLADES },
				races = HORDE_ONLY,
				groups = {
					i(211779),	-- Comprehension Charm
				},
			}),
			q(78127, {	-- The Dalaran Digest
				provider = { "i", 209844 },	-- The Dalaran Digest, Vol. 23
				maps = { SILVERPINE_FOREST },
				groups = {
					i(211779),	-- Comprehension Charm
				},
			}),
			q(84400, {	-- The Knight and the Lady
				provider = { "i", 228138 },	-- The Knight and the Lady
				maps = { EASTERN_PLAGUELANDS },
				-- TODO: Wowhead lists Jennea Cannon (5497) as the quest giver for this book instead of the librarians. Confirm in game.
				groups = {
					i(211779),	-- Comprehension Charm
				},
			}),
			q(79094, {	-- The Lessons of Ta'zo
				provider = { "i", 207972 },	-- The Lessons of Ta'zo
				maps = { ORGRIMMAR },
				races = HORDE_ONLY,
				groups = {
					i(211779),	-- Comprehension Charm
				},
			}),
			q(84395, {	-- Undead Potatoes
				provider = { "i", 228132 },	-- Undead Potatoes
				maps = { WESTERN_PLAGUELANDS },
				-- TODO: Wowhead lists Jennea Cannon (5497) as the quest giver for this book instead of the librarians. Confirm in game.
				groups = {
					i(211779),	-- Comprehension Charm
				},
			}),
			q(81954, {	-- Venomous Journeys
				provider = { "i", 220350 },	-- Venomous Journeys
				maps = { THE_HINTERLANDS },
				groups = {
					i(211779),	-- Comprehension Charm
				},
			}),
		},
	}),
});
