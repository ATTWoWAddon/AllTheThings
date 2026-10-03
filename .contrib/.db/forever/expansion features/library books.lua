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
		-- TODO: cn = "",
		-- TODO: tw = "",
	},
});
root(ROOTS.ExpansionFeatures, {
	n(LIBRARY_BOOKS_HEADER, {	-- Library Books
		aqd = {
			qg = 211033,	-- Garion Wendell <Librarian>
			coord = { 37.8, 80.2, STORMWIND_CITY },
		},
		hqd = {
			qg = 211022,	-- Owen Thadd <Librarian>
			coord = { 73.6, 33.0, UNDERCITY },
		},
		timeline = { TIMELINE.ADDED_1_60_1 },
		groups = {
			q(78145, {	-- Arcanic Systems Manual
				["provider"] = { "i", 209847 },	-- Arcanic Systems Manual
				["maps"] = { THE_BARRENS },
				["groups"] = {
					i(211779),	-- Comprehension Charm
				},
			}),
			q(79091, {	-- Archmage Antonidas: The Unabridged Autobiography
				["provider"] = { "i", 203754 },	-- Archmage Antonidas: The Unabridged Autobiography
				["maps"] = { IRONFORGE },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(211779),	-- Comprehension Charm
				},
			}),
			q(79092, {	-- Archmage Theocritus's Research Journal
				["provider"] = { "i", 203755 },	-- Archmage Theocritus's Research Journal
				["maps"] = { ELWYNN_FOREST },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(211779),	-- Comprehension Charm
				},
			}),
			q(79096, {	-- Ataeric: On Arcane Curiosities
				["provider"] = { "i", 210177 },	-- Ataeric: On Arcane Curiosities
				["maps"] = { SILVERPINE_FOREST },
				["races"] = HORDE_ONLY,
			}),
			q(79097, {	-- Baxtan: On Destructive Magics
				["provider"] = { "i", 208800 },	-- Baxtan: On Destructive Magics
				["maps"] = { THE_BARRENS },
				["groups"] = {
					i(211779),	-- Comprehension Charm
				},
			}),
			q(78142, {	-- Bewitchments and Glamours
				["provider"] = { "i", 209845 },	-- Bewitchments and Glamours
				["maps"] = { WESTFALL },
				["groups"] = {
					i(211779),	-- Comprehension Charm
				},
			}),
			q(78147, {	-- Crimes Against Anatomy
				["provider"] = { "i", 209849 },	-- Crimes Against Anatomy
				["maps"] = { DUSKWOOD },
				["groups"] = {
					i(211779),	-- Comprehension Charm
				},
			}),
			q(78150, {	-- Friend of the Library
				["sourceQuests"] = {
					78145,	-- Arcanic Systems Manual
					79091,	-- Archmage Antonidas: The Unabridged Autobiography
					79092,	-- Archmage Theocritus's Research Journal
					79096,	-- Ataeric: On Arcane Curiosities
					79097,	-- Baxtan: On Destructive Magics
					78142,	-- Bewitchments and Glamours
					78147,	-- Crimes Against Anatomy
					78149,	-- Fury of the Land
					78146,	-- Goaz Scrolls
					78124,	-- Nar'thalas Almanac
					79093,	-- Rumi of Gnomeregan: The Collected Works
					78148,	-- Runes of the Sorceror-Kings
					78143,	-- Secrets of the Dreamers
					79095,	-- The Apothecary's Metaphysical Primer
					78127,	-- The Dalaran Digest
					79094,	-- The Lessons of Ta'zo
				},
				["sourceQuestNumRequired"] = 10,
				["groups"] = {
					i(277203),	-- Scholarly Pendant
					i(277204),	-- Erudite's Amulet
				},
			}),
			q(78149, {	-- Fury of the Land
				["provider"] = { "i", 209851 },	-- Fury of the Land
				["maps"] = { STONETALON_MOUNTAINS },
				["groups"] = {
					i(211779),	-- Comprehension Charm
				},
			}),
			q(78146, {	-- Goaz Scrolls
				["provider"] = { "i", 209848 },	-- Goaz Scrolls
				["maps"] = { WETLANDS },
				["groups"] = {
					i(211779),	-- Comprehension Charm
				},
			}),
			q(79536, {	-- Greater Friend of the Library
				["qg"] = 211033,	-- Garion Wendell <Librarian>
				["sourceQuests"] = {
					78145,	-- Arcanic Systems Manual
					79091,	-- Archmage Antonidas: The Unabridged Autobiography
					79092,	-- Archmage Theocritus's Research Journal
					79096,	-- Ataeric: On Arcane Curiosities
					79097,	-- Baxtan: On Destructive Magics
					78142,	-- Bewitchments and Glamours
					78147,	-- Crimes Against Anatomy
					78149,	-- Fury of the Land
					78146,	-- Goaz Scrolls
					78124,	-- Nar'thalas Almanac
					79093,	-- Rumi of Gnomeregan: The Collected Works
					78148,	-- Runes of the Sorceror-Kings
					78143,	-- Secrets of the Dreamers
					79095,	-- The Apothecary's Metaphysical Primer
					78127,	-- The Dalaran Digest
					79094,	-- The Lessons of Ta'zo
					-- TODO: Need to add more book quests
				},
				["sourceQuestNumRequired"] = 20,
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 20,
				["groups"] = {
					i(281634),	-- Field Researcher's Loop
					i(281635),	-- Philanthropist's Ring
				},
			}),
			q(78124, {	-- Nar'thalas Almanac
				["provider"] = { "i", 209843 },	-- Nar'thalas Almanac, Vol. 74
				["maps"] = { DARKSHORE },
				["groups"] = {
					i(211779),	-- Comprehension Charm
				},
			}),
			q(79093, {	-- Rumi of Gnomeregan: The Collected Works
				["provider"] = { "i", 208860 },	-- Rumi of Gnomeregan: The Collected Works
				["maps"] = { WESTFALL, LOCH_MODAN },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(211779),	-- Comprehension Charm
				},
			}),
			q(78148, {	-- Runes of the Sorceror-Kings
				["provider"] = { "i", 209850 },	-- Runes of the Sorcerer-Kings
				["maps"] = { LOCH_MODAN },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(211779),	-- Comprehension Charm
				},
			}),
			q(78143, {	-- Secrets of the Dreamers
				["provider"] = { "i", 209846 },	-- Secrets of the Dreamers
				["maps"] = { WAILING_CAVERNS },
				["groups"] = {
					i(211779),	-- Comprehension Charm
				},
			}),
			q(79095, {	-- The Apothecary's Metaphysical Primer
				["provider"] = { "i", 208185 },	-- The Apothecary's Metaphysical Primer
				["maps"] = { TIRISFAL_GLADES },
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(211779),	-- Comprehension Charm
				},
			}),
			q(78127, {	-- The Dalaran Digest
				["provider"] = { "i", 209844 },	-- The Dalaran Digest, Vol. 23
				["maps"] = { SILVERPINE_FOREST },
				["groups"] = {
					i(211779),	-- Comprehension Charm
				},
			}),
			q(79094, {	-- The Lessons of Ta'zo
				["provider"] = { "i", 207972 },	-- The Lessons of Ta'zo
				["maps"] = { ORGRIMMAR },
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(211779),	-- Comprehension Charm
				},
			}),
		},
	}),
});
