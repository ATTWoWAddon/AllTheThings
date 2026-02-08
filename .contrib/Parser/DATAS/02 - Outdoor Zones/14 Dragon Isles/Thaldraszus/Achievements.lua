---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(DRAGON_ISLES, bubbleDown({ ["timeline"] = { ADDED_10_0_2_LAUNCH } }, {
	m(THALDRASZUS, {
		n(ACHIEVEMENTS, {
			ach(16679, {	-- Adventurer of Thaldraszus
				["sym"] = {{ "achievement_criteria" }},
			}),
			ach(17564, {	-- Ancient Stones of Thaldraszus (automated)
				["timeline"] = { ADDED_10_1_0 },
			}),
			ach(16104, {	-- Dragon Glyphs: Algeth'ar Academy
				["coord"] = { 62.4, 40.4, THALDRASZUS },
			}),
			ach(16102, {	-- Dragon Glyphs: Algeth'era
				["coord"] = { 49.9, 40.3, THALDRASZUS },
			}),
			ach(16666, {	-- Dragon Glyphs: Gelikyr Overlook
				["coord"] = { 52.7, 67.4, THALDRASZUS },
			}),
			ach(16667, {	-- Dragon Glyphs: Passage of Time
				["coord"] = { 55.8, 72.4, THALDRASZUS },
			}),
			ach(16100, {	-- Dragon Glyphs: South Hold Gate
				["coord"] = { 35.6, 85.5, THALDRASZUS },
			}),
			ach(16099, {	-- Dragon Glyphs: Stormshroud Peak
				["coord"] = { 46.1, 74.1, THALDRASZUS },
			}),
			ach(16098, {	-- Dragon Glyphs: Temporal Conflux
				["coord"] = { 66.0, 82.3, THALDRASZUS },
			}),
			ach(16107, {	-- Dragon Glyphs: Thaldraszus Apex
				["coord"] = { 72.0, 69.2, THALDRASZUS },
			}),
			ach(16103, {	-- Dragon Glyphs: Tyrhold
				["coord"] = { 61.6, 56.6, THALDRASZUS },
			}),
			ach(16106, {	-- Dragon Glyphs: Vault of the Incarnates
				["coord"] = { 72.4, 51.4, THALDRASZUS },
			}),
			ach(16105, {	-- Dragon Glyphs: Veiled Ossuary
				["coord"] = { 67.1, 11.8, THALDRASZUS },
			}),
			ach(16518),		-- Explore Thaldraszus
			ach(16634, {	-- Framing a New Perspective
				["description"] = "Exact point in the world will be within a light pink beam of light when using the 'Selfie Camera MkII' near the proper location.",
				["groups"] = {
					crit(55994, {	-- The Seat of the Aspects
						["coord"] = { 56.1, 44.4, VALDRAKKEN },
					}),
					crit(55995, {	-- The Cascades
						["coord"] = { 39.0, 70.4, THALDRASZUS },
					}),
					crit(55996, {	-- Passage of Time
						["coord"] = { 55.7, 73.2, THALDRASZUS },
					}),
					crit(55997, {	-- Vault of the Incarnates
						["coord"] = { 68.3, 58.3, THALDRASZUS },
					}),
					crit(55998, {	-- Tyrhold
						["coord"] = { 57.1, 58.7, THALDRASZUS },
					}),
					crit(55999, {	-- Algeth'era Court
						["coord"] = { 50.2, 40.3, THALDRASZUS },
					}),
					crit(56000, {	-- Veiled Ossuary
						["coord"] = { 63.4, 13.4, THALDRASZUS },
					}),
					crit(56001, {	-- Serene Dreams Spa
						["coord"] = { 39.4, 46.9, THALDRASZUS },
					}),
					crit(56002, {	-- Shadow Ledge
						["coord"] = { 48.3, 66.8, THALDRASZUS },
					}),
					crit(56003, {	-- Valdrakken's Portal Room
						["coord"] = { 56.6, 43.4, VALDRAKKEN },
					}),
					crit(56004, {	-- Tyrhold Reservoir
						["coord"] = { 47.0, 59.5, THALDRASZUS },
					}),
				},
			}),
			ach(16363, {	-- Just Don't Ask Me to Spell It
				["sym"] = {{ "achievement_criteria" }},
			}),
			ach(16621, {	-- One of Everything, Please
				["sym"] = {{ "achievement_criteria" }},
            }),
			ach(16398, {	-- Sojourner of Thaldraszus
				["sym"] = {{ "achievement_criteria" }},
			}),
			ach(16578, {	-- Thaldraszus Glyph Hunter
				-- Meta Achievement
				["sym"] = {{"meta_achievement",
					16104,	-- Dragon Glyphs: Algeth'ar Academy
					16102,	-- Dragon Glyphs: Algeth'era
					16666,	-- Dragon Glyphs: Gelikyr Overlook
					16667,	-- Dragon Glyphs: Passage of Time
					16100,	-- Dragon Glyphs: South Hold Gate
					16099,	-- Dragon Glyphs: Stormshroud Peak
					16098,	-- Dragon Glyphs: Temporal Conflux
					16107,	-- Dragon Glyphs: Thaldraszus Apex
					16103,	-- Dragon Glyphs: Tyrhold
					16101,	-- Dragon Glyphs: Valdrakken
					16106,	-- Dragon Glyphs: Vault of the Incarnates
					16105,	-- Dragon Glyphs: Veiled Ossuary
				}},
			}),
			ach(16622, {	-- Three Minutes or It's Free
				["maps"] = { THE_AZURE_SPAN },
			}),
			pvp(ach(16593)),	-- Tour of Duty: Thaldraszus
			ach(16301, {	-- Treasures of Thaldraszus
				["sym"] = {{ "achievement_criteria" }},
			}),
		}),
	}),
})));
-- root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.DF, bubbleDownSelf({ ["timeline"] = { ADDED_10_0_2_LAUNCH } }, {
-- 	m(DRAGON_ISLES, {
-- 		m(THALDRASZUS, {
-- 			n(ACHIEVEMENTS, {
-- 				-- Achievement Framing a New Perspective
-- 				q(72142, name(HEADERS.AchCriteria, 16634.01)),	-- The Seat of the Aspects
-- 				q(72143, name(HEADERS.AchCriteria, 16634.02)),	-- The Cascades
-- 				q(72144, name(HEADERS.AchCriteria, 16634.03)),	-- Passage of Time
-- 				q(72145, name(HEADERS.AchCriteria, 16634.04)),	-- Vault of the Incarnates
-- 				q(72146, name(HEADERS.AchCriteria, 16634.05)),	-- Tryhold
-- 				q(72147, name(HEADERS.AchCriteria, 16634.06)),	-- Algeth'era Court
-- 				q(72148, name(HEADERS.AchCriteria, 16634.07)),	-- Veiled Ossuary
-- 				q(72149, name(HEADERS.AchCriteria, 16634.08)),	-- Serene Dreams Spa
-- 				q(72150, name(HEADERS.AchCriteria, 16634.09)),	-- Shadow Ledge
-- 				q(72151, name(HEADERS.AchCriteria, 16634.10)),	-- Valdrakken's Portal Room
-- 				q(72152, name(HEADERS.AchCriteria, 16634.11)),	-- Tryhold Reservoir
-- 			}),
-- 		}),
-- 	}),
-- })));
