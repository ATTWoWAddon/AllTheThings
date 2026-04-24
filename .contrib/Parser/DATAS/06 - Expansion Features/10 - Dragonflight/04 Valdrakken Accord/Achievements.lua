-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------

root(ROOTS.ExpansionFeatures, expansion(EXPANSION.DF, bubbleDown({ ["timeline"] = { ADDED_10_0_2_LAUNCH } }, {
	header(HEADERS.Faction, FACTION_VALDRAKKEN_ACCORD, {
		faction(FACTION_VALDRAKKEN_ACCORD, {
			["icon"] = 4687629,
		}),
		n(ACHIEVEMENTS, bubbleDownSelf({ ["timeline"] = { ADDED_10_2_6 } }, {
			ach(19483, {	-- Flight Club
				-- Meta Achievement
				["sym"] = {{"meta_achievement",
					16679,	-- Adventurer of Thaldraszus
					17782,	-- Daycare Derby
					18383,	-- Hey Nanny Nanny
					16497,	-- I'm Playing All Sides
					16496,	-- Obsidian Champion
					16495,	-- Obsidian Keymaster
					16412,	-- Siege on Dragonbane Keep: Chiseled Record
					16411,	-- Siege on Dragonbane Keep: Home Sweet Home
					16410,	-- Siege on Dragonbane Keep: Snack Attack
					16301,	-- Treasures of Thaldraszus
					18384,	-- Whelp, There It Is
				}},
				["groups"] = {
					i(211862),	-- Bestowed Ottuk Vanguard (MOUNT!)
				},
			}),
			ach(16530, {	-- Ally of the Flights
				["minReputation"] = { FACTION_VALDRAKKEN_ACCORD, 30 },	-- Valdrakken Accord Renown 30
				["timeline"] = { REMOVED_11_0_7 },
			}),
			ach(41182, {	-- Ally of the Flights
				["minReputation"] = { FACTION_VALDRAKKEN_ACCORD, 30 },	-- Valdrakken Accord Renown 30
				["timeline"] = { ADDED_11_0_7 },
			}),
			ach(16994, {	-- Friends in the Accord
				["minReputation"] = { FACTION_VALDRAKKEN_ACCORD, 15 },	-- Valdrakken Accord Renown 15
				["timeline"] = { ADDED_10_2_0, REMOVED_11_0_7 },
			}),
			ach(41171, {	-- Friends in the Accord
				["minReputation"] = { FACTION_VALDRAKKEN_ACCORD, 15 },	-- Valdrakken Accord Renown 15
				["timeline"] = { ADDED_11_0_7 },
			}),
		})),
	}),
})));
