---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(DRAGON_ISLES, bubbleDown({ ["timeline"] = { ADDED_10_0_2_LAUNCH } }, {
	m(THE_AZURE_SPAN, {
		n(ACHIEVEMENTS, {
			ach(16678, {	-- Adventurer of The Azure Span
				["sym"] = {{ "achievement_criteria" }},
			}),
			ach(17563, {	-- Ancient Stones of the Azure Span (automated)
				["timeline"] = { ADDED_10_1_0 },
			}),
			ach(16577, {	-- Azure Span Glyph Hunter
				-- Meta Achievement
				["sym"] = {{"meta_achievement",
					16065,	-- Dragon Glyphs: Azure Archive
					16068,	-- Dragon Glyphs: Brackenhide Hollow
					16064,	-- Dragon Glyphs: Cobalt Assembly
					16069,	-- Dragon Glyphs: Creektooth Den
					16672,	-- Dragon Glyphs: Forkriver Crossing
					16070,	-- Dragon Glyphs: Imbuour
					16072,	-- Dragon Glyphs: Kalthraz Fortress
					16067,	-- Dragon Glyphs: Lost Ruins
					16066,	-- Dragon Glyphs: Ruins of Karnthar
					16673,	-- Dragon Glyphs: The Fallen Course
					16073,	-- Dragon Glyphs: Vakthros Range
					16071,	-- Dragon Glyphs: Zelthrak Outpost
				}},
			}),
			ach(16336, {	-- Azure Spanner
				["sym"] = {{ "achievement_criteria" }},
			}),
			ach(16474, {	-- Do You Wanna Build a Snowman?
				["coord"] = { 50.7, 55.4, THE_AZURE_SPAN },
			}),
			ach(16065, {	-- Dragon Glyphs: Azure Archive
				["coord"] = { 39.4, 63.4, THE_AZURE_SPAN },
			}),
			ach(16068, {	-- Dragon Glyphs: Brackenhide Hollow
				["coord"] = { 10.3, 35.9, THE_AZURE_SPAN },
			}),
			ach(16064, {	-- Dragon Glyphs: Cobalt Assembly
				["coord"] = { 45.8, 25.8, THE_AZURE_SPAN },
			}),
			ach(16069, {	-- Dragon Glyphs: Creektooth Den
				["coord"] = { 26.2, 31.7, THE_AZURE_SPAN },
			}),
			ach(16070, {	-- Dragon Glyphs: Imbu
				["coord"] = { 60.6, 70.0, THE_AZURE_SPAN },
			}),
			ach(16072, {	-- Dragon Glyphs: Kalthraz Fortress
				["coord"] = { 67.6, 29.1, THE_AZURE_SPAN },
			}),
			ach(16067, {	-- Dragon Glyphs: Lost Ruins
				["coord"] = { 70.6, 46.3, THE_AZURE_SPAN },
			}),
			ach(16066, {	-- Dragon Glyphs: Ruins of Karnthar
				["coord"] = { 68.6, 60.4, THE_AZURE_SPAN },
			}),
			ach(16673, {	-- Dragon Glyphs: The Fallen Course
				["coord"] = { 56.7, 15.9, THE_AZURE_SPAN },
			}),
			ach(16073, {	-- Dragon Glyphs: Vakthros Range
				["coord"] = { 72.7, 39.1, THE_AZURE_SPAN },
			}),
			ach(16071, {	-- Dragon Glyphs: Zelthrak Outpost
				["coord"] = { 52.9, 49.0, THE_AZURE_SPAN },
			}),
			ach(16460),		-- Explore the Azure Span
			ach(16580, {	-- Lend a Helping Span
				["sym"] = {{ "achievement_criteria" }},
			}),
			ach(16638, {	-- Ley Line in the Span
				crit(55972, {	-- Azure Archives
					-- ["cr"] = 198260,	-- Misaligned Ley Crystal
					["coord"] = { 43.8, 61.9, THE_AZURE_SPAN },
				}),
				crit(55973, {	-- Ancient Outlook
					-- ["cr"] = 198260,	-- Misaligned Ley Crystal
					["coord"] = { 26.3, 36.4, THE_AZURE_SPAN },
				}),
				crit(55974, {	-- Rustpine Den
					-- ["cr"] = 198260,	-- Misaligned Ley Crystal
					["coord"] = { 66.2, 51.3, THE_AZURE_SPAN },
				}),
				crit(55975, {	-- Ruins of Karnthar
					-- ["cr"] = 198260,	-- Misaligned Ley Crystal
					["coord"] = { 66.8, 59.6, THE_AZURE_SPAN },
				}),
				crit(55976, {	-- Slyvern Plunge
					-- ["cr"] = 198260,	-- Misaligned Ley Crystal
					["coord"] = { 65.4, 28.4, THE_AZURE_SPAN },
				}),
			}),
			ach(15889, {	-- River Rapids Wrangler
				["coord"] = { 45.0, 54.0, THE_AZURE_SPAN },
				["groups"] = {
					i(198428),	-- Tuskarr Dinghy (TOY!)
				},
			}),
			ach(16581, {	-- Seeing Blue
				["coords"] = {
					{ 40.0, 61.7, THE_AZURE_SPAN },	-- Start
					{ 46.1, 26.3, THE_AZURE_SPAN },	-- End
				},
			}),
			ach(16428, {	-- Sojourner of Azure Span
				["sym"] = {{ "achievement_criteria" }},
			}),
			pvp(ach(16594)),	-- Tour of Duty: The Azure Span
			ach(16300, {	-- Treasures of The Azure Span
				["sym"] = {{ "achievement_criteria" }},
			}),
		}),
	})
})));
-- root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.DF, bubbleDownSelf({ ["timeline"] = { ADDED_10_0_2_LAUNCH } }, {
-- 	m(DRAGON_ISLES, {
-- 		m(THE_AZURE_SPAN, {
-- 			n(ACHIEVEMENTS, {
-- 				q(72136, name(HEADERS.AchCriteria, 16638.03)),	-- Ley Line in the Span achievement - Rustpine Den - 66.2, 51.3, THE_AZURE_SPAN
-- 				q(72138, name(HEADERS.AchCriteria, 16638.01)),	-- Ley Line in the Span achievement - Azure Archives - 43.8, 61.9, THE_AZURE_SPAN
-- 				q(72139, name(HEADERS.AchCriteria, 16638.02)),	-- Ley Line in the Span achievement - Ancient Outlook - 26.3, 36.4, THE_AZURE_SPAN
-- 				q(72140, name(HEADERS.AchCriteria, 16638.05)),	-- Ley Line in the Span achievement - Slyvern Plunge - 65.4, 28.4, THE_AZURE_SPAN
-- 				q(72141, name(HEADERS.AchCriteria, 16638.04)),	-- Ley Line in the Span achievement - Ruins of Karnthar - 66.8, 59.6, THE_AZURE_SPAN
-- 			}),
-- 		}),
-- 	}),
-- })));
