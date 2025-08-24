---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
-- #if AFTER 8.3.0.33062
root(ROOTS.Zones, {
	m(NORTHREND, {
		m(1602, {	-- Icecrown (DK starting zone)
			n(QUESTS, {
				q(58877, bubbleDown({ ["timeline"] = { ADDED_8_3_0 } }, {	-- Death's Power Grows
					["qg"] = 163016,	-- The Lich King
					["coord"] = { 49.5, 90.7, 1602 },
					["classes"] = { DEATHKNIGHT },
					["groups"] = {
						i(174485),	-- Burning Greatsword of the Ebon Blade
						i(174662),	-- Burning Saber of the Ebon Blade
						i(174486),	-- Crimson Greatsword of the Ebon Blade
						i(174659),	-- Crimson Saber of the Ebon Blade
						i(174488),	-- Freezing Greatsword of the Ebon Blade
						i(174660),	-- Freezing Saber of the Ebon Blade
						i(174487),	-- Unholy Greatsword of the Ebon Blade
						i(174661),	-- Unholy Saber of the Ebon Blade
					},
				})),
				q(58902, {	-- Defender of Azeroth (A)
					["sourceQuest"] = 58877,	-- Death's Power Grows
					["qg"] = 163016,	-- The Lich King
					["coord"] = { 49.5, 90.7, 1602 },
					["timeline"] = { ADDED_8_3_0 },
					["classes"] = { DEATHKNIGHT },
					["races"] = ALLIANCE_ONLY,
				}),
				q(58903, {	-- Defender of Azeroth (H)
					["sourceQuest"] = 58877,	-- Death's Power Grows
					["qg"] = 163016,	-- The Lich King
					["coord"] = { 49.5, 90.7, 1602 },
					["timeline"] = { ADDED_8_3_0 },
					["classes"] = { DEATHKNIGHT },
					["races"] = HORDE_ONLY,
				}),
				q(58989, {	-- Runeforging 101
					["description"] = "Use your Death Gate after finishing previous quest, Darion will be in Acherus.",
					["sourceQuests"] = {
						58902,	-- Defender of Azeroth (A)
						58903,	-- Defender of Azeroth (H)
					},
					["qg"] = 29246,	-- Highlord Darion Morgraine
					["coord"] = { 82.0, 46.3, EASTERN_PLAGUELANDS },	-- Acherus: The Ebon Hold (Lower Level)
					["timeline"] = { ADDED_8_3_0 },
					["classes"] = { DEATHKNIGHT },
				}),
			}),
		}),
	}),
});
-- #endif
