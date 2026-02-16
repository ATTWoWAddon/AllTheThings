---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(MAP.MIDNIGHT.QUELTHALAS, {
	m(MAP.MIDNIGHT.EVERSONG_WOODS, {
		header(HEADERS.Faction, FACTION_SILVERMOON_COURT, {
			["icon"] = 7505700,
			["groups"] = {
				faction(FACTION_SILVERMOON_COURT),
				n(ACHIEVEMENTS, {
					ach(62262, {	-- -- Silvermoon Court Champion
						["minReputation"] = { FACTION_SILVERMOON_COURT, 20 },	-- Silvermoon Court, Renown 20
					}),
				}),
				title(667, {	-- <Name>, Life of the Party
					["minReputation"] = { FACTION_SILVERMOON_COURT, 20 },	-- Silvermoon Court, Renown 20
				}),
				--[[n(QUESTS, sharedData({
					["provider"] = { "n", 240838 },	-- Caeris Fairdawn <Renown Quartermaster>
					["coord"] = { 43.5, 47.4, MAP.MIDNIGHT.EVERSONG_WOODS },
				}, bubbleDownRep(FACTION_SILVERMOON_COURT, {
					{		-- RENOWN 1 --
					}, {	-- RENOWN 2 --
					}, {	-- RENOWN 3 --
					}, {	-- RENOWN 4 --
					}, {	-- RENOWN 5 --
					}, {	-- RENOWN 6 --
					}, {	-- RENOWN 7 --
					}, {	-- RENOWN 8 --
					}, {	-- RENOWN 9 --
					}, {	-- RENOWN 10 --
					}, {	-- RENOWN 11 --
					}, {	-- RENOWN 12 --
					}, {	-- RENOWN 13 --
					}, {	-- RENOWN 14 --
					}, {	-- RENOWN 15 --
					}, {	-- RENOWN 16 --
					}, {	-- RENOWN 17 --
					}, {	-- RENOWN 18 --
					}, {	-- RENOWN 19 --
					}, {	-- RENOWN 20 --
						------ Paragon ------
					},
				}))),--]]
				n(VENDORS, {
					n(240838, {	-- Caeris Fairdawn <Renown Quartermaster>
						["coord"] = { 43.5, 47.4, MAP.MIDNIGHT.EVERSONG_WOODS },
						["groups"] = bubbleDownRep(FACTION_SILVERMOON_COURT, {
							{		-- RENOWN 1 --
							}, {	-- RENOWN 2 --
								i(265658, {	-- Silvermoon Court Cloak (COSMETIC!)
									["cost"] = { { "c", VOIDLIGHT_MARL, 3000 } },
								}),
								i(267641, {	-- Tarnished Silvermoon Suncrest
									["cost"] = { { "c", VOIDLIGHT_MARL, 750 } },
								}),
								i(267639, {	-- Tarnished Silvermoon Sunguard
									["cost"] = { { "c", VOIDLIGHT_MARL, 750 } },
								}),
								i(267638, {	-- Tarnished Silvermoon Sunspire
									["cost"] = { { "c", VOIDLIGHT_MARL, 750 } },
								}),
								i(267640, {	-- Tarnished Silvermoon Sunveil
									["cost"] = { { "c", VOIDLIGHT_MARL, 750 } },
								}),
								iensemble(259028, {	-- Ensemble: Haven's Elegant Regalia
									["cost"] = { { "c", VOIDLIGHT_MARL, 5000 } },
								}),
							}, {	-- RENOWN 3 --
								i(263205, {	-- Crimson Silvermoon Runner (DECOR!)
									["cost"] = { { "c", VOIDLIGHT_MARL, 750 } },
								}),
								i(263223, {	-- Gilded Sky-Blue Drapery (DECOR!)
									["cost"] = { { "c", VOIDLIGHT_MARL, 750 } },
								}),
								i(263206, {	-- Plum Eversong Rug (DECOR!)
									["cost"] = { { "c", VOIDLIGHT_MARL, 750 } },
								}),
							}, {	-- RENOWN 4 --
							}, {	-- RENOWN 5 --
								i(259363, {	-- Design: Bejeweled Sin'dorei Lyre (RECIPE!)
									["cost"] = {
										{ "c", ARTISAN_MOXIE.JEWELCRAFTING, 150 },
										{ "c", VOIDLIGHT_MARL, 1500 },
									},
								}),
								i(256760, {	-- Formula: Enchant Ring - Silvermoon's Tenacity (RECIPE!)
									["cost"] = {
										{ "c", ARTISAN_MOXIE.ENCHANTING, 150 },
										{ "c", VOIDLIGHT_MARL, 1500 },
									},
								}),
								i(268042, {	-- Formula: Endless Codex of Blooming Light (RECIPE!)
									["cost"] = {
										{ "c", ARTISAN_MOXIE.ENCHANTING, 150 },
										{ "c", VOIDLIGHT_MARL, 1500 },
									},
								}),
								i(259374, {	-- Formula: Spellbound Tome of Thalassian Magics (RECIPE!)
									["cost"] = {
										{ "c", ARTISAN_MOXIE.ENCHANTING, 150 },
										{ "c", VOIDLIGHT_MARL, 1500 },
									},
								}),
								i(258124, {	-- Pattern: Arcanoweave Spellthread (RECIPE!)
									["cost"] = {
										{ "c", ARTISAN_MOXIE.TAILORING, 150 },
										{ "c", VOIDLIGHT_MARL, 1500 },
									},
								}),
								i(256636, {	-- Pattern: Row Walker's Deflectors (RECIPE!)
									["cost"] = {
										{ "c", ARTISAN_MOXIE.LEATHERWORKING, 150 },
										{ "c", VOIDLIGHT_MARL, 1500 },
									},
								}),
								i(265528, {	-- Plans: Gilded Silvermoon Anvil (RECIPE!)
									["cost"] = {
										{ "c", ARTISAN_MOXIE.BLACKSMITHING, 150 },
										{ "c", VOIDLIGHT_MARL, 1500 },
									},
								}),
								i(265532, {	-- Plans: Gilded Silvermoon Hanger (RECIPE!)
									["cost"] = {
										{ "c", ARTISAN_MOXIE.BLACKSMITHING, 150 },
										{ "c", VOIDLIGHT_MARL, 1500 },
									},
								}),
								i(263444, {	-- Technique: Contract: The Silvermoon Court (RECIPE!)
									["cost"] = {
										{ "c", ARTISAN_MOXIE.INSCRIPTION, 150 },
										{ "c", VOIDLIGHT_MARL, 1500 },
									},
								}),
							}, {	-- RENOWN 6 --
								i(257600, {	-- Skill Issue: Enchanting (CI!)
									["requireSkill"] = ENCHANTING,
									["cost"] = {
										{ "c", ARTISAN_MOXIE.ENCHANTING, 75 },
										{ "c", VOIDLIGHT_MARL, 750 },
									},
								}),
								i(257599, {	-- Skill Issue: Jewelcrafting (CI!)
									["requireSkill"] = JEWELCRAFTING,
									["cost"] = {
										{ "c", ARTISAN_MOXIE.JEWELCRAFTING, 75 },
										{ "c", VOIDLIGHT_MARL, 750 },
									},
								}),
								i(257601, {	-- Skill Issue: Tailoring (CI!)
									["requireSkill"] = TAILORING,
									["cost"] = {
										{ "c", ARTISAN_MOXIE.TAILORING, 75 },
										{ "c", VOIDLIGHT_MARL, 750 },
									},
								}),
							}, {	-- RENOWN 7 --
								i(257422, {	-- Gilded Sunfury Chair (DECOR!)
									["cost"] = { { "c", VOIDLIGHT_MARL, 750 } },
								}),
								i(263228, {	-- Grand Lightwood Table (DECOR!)
									["cost"] = { { "c", VOIDLIGHT_MARL, 2500 } },
								}),
								i(245290, {	-- Long Silvermoon Table (DECOR!)
									["cost"] = { { "c", VOIDLIGHT_MARL, 750 } },
								}),
								i(263229, {	-- Ornate Lightwood Table (DECOR!)
									["cost"] = { { "c", VOIDLIGHT_MARL, 750 } },
								}),
								i(256040, {	-- Silvermoon Gemmed Chair (DECOR!)
									["cost"] = { { "c", VOIDLIGHT_MARL, 750 } },
								}),
							}, {	-- RENOWN 8 --
							}, {	-- RENOWN 9 --
							}, {	-- RENOWN 10 --
								i(265663, {	-- Silvermoon Court Tabard (COSMETIC!)
									["cost"] = { { "c", VOIDLIGHT_MARL, 3000 } },
								}),
							}, {	-- RENOWN 11 --
								i(263232, {	-- Floating Spire Shelf (DECOR!)
									["cost"] = { { "c", VOIDLIGHT_MARL, 750 } },
								}),
								i(263234, {	-- Turning Silvermoon Archives (DECOR!)
									["cost"] = { { "c", VOIDLIGHT_MARL, 2500 } },
								}),
							}, {	-- RENOWN 12 --
								i(259224, {	-- Dragonhawk Munchkin (PET!)
									["cost"] = { { "c", VOIDLIGHT_MARL, 2500 } },
								}),
							}, {	-- RENOWN 13 --
								i(259240, {	-- Sin'dorei Wine (TOY!)
									["cost"] = { { "c", VOIDLIGHT_MARL, 4000 } },
								}),
							}, {	-- RENOWN 14 --
								iensemble(259082, {	-- Ensemble: Haven Dignitary's Trappings
									["cost"] = { { "c", VOIDLIGHT_MARL, 5000 } },
								}),
							}, {	-- RENOWN 15 --
								i(257421, {	-- Bejeweled Silvermoon Chandelier (DECOR!)
									["cost"] = { { "c", VOIDLIGHT_MARL, 750 } },
								}),
								i(245985, {	-- Floating Azure Lantern (DECOR!)
									["cost"] = { { "c", VOIDLIGHT_MARL, 750 } },
								}),
								i(264264, {	-- Gilded Vigil Post (DECOR!)
									["cost"] = { { "c", VOIDLIGHT_MARL, 750 } },
								}),
								i(264265, {	-- Sanctified Flame Lantern (DECOR!)
									["cost"] = { { "c", VOIDLIGHT_MARL, 750 } },
								}),
							}, {	-- RENOWN 16 --
								i(265659, {	-- Silvermoon Court Epaulets (COSMETIC!)
									["cost"] = { { "c", VOIDLIGHT_MARL, 3000 } },
								}),
							}, {	-- RENOWN 17 --
								i(257154, {	-- Crimson Silvermoon Hawkstrider (MOUNT!)
									["cost"] = { { "c", VOIDLIGHT_MARL, 6000 } },
								}),
							}, {	-- RENOWN 18 --
								i(249559, {	-- Reverent Sin'dorei Statue (DECOR!)
									["cost"] = { { "c", VOIDLIGHT_MARL, 2500 } },
								}),
								i(245941, {	-- Silvermoon Sanctum Focus (DECOR!)
									["cost"] = { { "c", VOIDLIGHT_MARL, 2500 } },
								}),
							}, {	-- RENOWN 19 --
								i(257142, {	-- Fiery Dragonhawk (MOUNT!)
									["cost"] = { { "c", VOIDLIGHT_MARL, 8000 } },
								}),
							}, {	-- RENOWN 20 --
								iensemble(259091, {	-- Ensemble: Haven Socialite's Attire
									["cost"] = { { "c", VOIDLIGHT_MARL, 5000 } },
								}),
							},
						}),
					}),
				}),
			},
		}),
	}),
}));

--[[root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.MID, {
	header(HEADERS.Faction, FACTION_SILVERMOON_COURT, {
		q(),	--
	}),
}));--]]
