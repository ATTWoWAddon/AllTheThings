---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(SHADOWLANDS, bubbleDown({ ["timeline"] = { ADDED_9_1_0 } }, {
	m(KORTHIA, {
		header(HEADERS.Spell, 354778, {	-- The Rift
			["description"] = "The things in this section are only accessible when you are in The Rift, a version of the Maw populated by shades.",
			["cost"] = {
				{"i",186969,1},	-- Collapsing Riftstone
				{"i",186731,1},	-- Repaired Riftkey
			},
			["groups"] = {
				n(QUESTS, {
					q(64522, {	-- Stolen Korthian Supplies
						["provider"] = { "i", 187276 },	-- Stolen Korthian Supplies
						["minReputation"] = { FACTION_THE_ARCHIVISTS_CODEX, 3 },	-- Tier 3
						["isWeekly"] = true,
						["groups"] = {
							i(187551),	-- Small Korthian Supply Chest
						},
					}),
				}),
				n(RARES, {
					n(179914, {	-- Observer Yorik
						["questID"] = 64440,
						["coord"] = { 50.2, 75.4, KORTHIA },
						["isDaily"] = true,
						["groups"] = {
							i(187405),	-- Choker of the Hidden Observer
							i(187420),	-- Maw-Ocular Viewfinder (TOY!)
							i(187365),	-- Rift Splitter
						},
					}),
				}),
				n(TREASURES, {	-- TODO: at least some of these appear to have multiple spawnpoints, which i am sure i have not captured all of myself
					o_repeated({	-- Riftbound Cache
						-- Contains
							-- Epics
							i(187251),	-- Shaded Skull Shoulderguards
							i(187243),	-- Shadehunter's Crescent
							-- Blues
							i(187421),	-- Ashen Liniment
							i(187276),	-- Stolen Korthian Supplies
							-- Greens
							i(185050),	-- Spider Soul
							-- Whites
							i(186994),	-- Design: Shaded Stone Statue (RECIPE!)
						-- Objects
						o(369437, {	-- Riftbound Cache
							["coords"] = {
								{ 33.4, 39.3, KORTHIA },
								{ 37.9, 35.8, KORTHIA },
								{ 39.8, 42.9, KORTHIA },
								{ 36.0, 32.5, KORTHIA },
							},
							["questID"] = 64456,
							["isDaily"] = true,
						}),
						o(369438, {	-- Riftbound Cache
							["description"] = "If this cache spawns in Zelnithop's cave, it is on the lowest level and the opposite side from where the rare spawns.",
							["coords"] = {
								{ 24.8, 56.1, KORTHIA },
								{ 26.0, 55.7, KORTHIA },
								{ 29.7, 39.3, 2007 },	-- In the cave
								{ 43.5, 72.9, 2007 },	-- In the cave
							},
							["questID"] = 64470,
							["isDaily"] = true,
						}),
						o(369440, {	-- Riftbound Cache
							["coords"] = {
								{ 46.1, 31.9, KORTHIA },
								{ 50.7, 33.0, KORTHIA },
								{ 56.3, 18.4, KORTHIA },
								{ 64.3, 30.3, KORTHIA },
							},
							["questID"] = 64472,
							["isDaily"] = true,
						}),
						o(369439, {	-- Riftbound Cache
							["coords"] = {
								{ 54.2, 54.8, KORTHIA },
								{ 54.8, 42.3, KORTHIA },
								{ 55.5, 65.0, KORTHIA },
								{ 61.0, 35.4, KORTHIA },
								{ 61.8, 58.8, KORTHIA },
							},
							["questID"] = 64471,
							["isDaily"] = true,
						}),
					}),
				}),
				n(ZONE_DROPS, {
					i(187174, {	-- Shaded Judgment Stone (TOY!)
						["description"] = "This has a chance to drop from creatures in The Rift, or from the specific Rares which are pulled out of The Rift.",
						["crs"] = {
							-- Korthia Rares
							179913,	-- Deadsoul Hatcher
							179608,	-- Screaming Shade
							179911,	-- Silent Soulstalker
							-- The Maw Rares
							179853,	-- Blinding Shadow
							179851,	-- Guard Orguluus
							179735,	-- Torglluun
						},
					}),
					i(187006),	-- Recipe: Twilight Tea (RECIPE!)
				}),
			},
		}),
	}),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.SL, bubbleDownSelf({ ["timeline"] = { ADDED_9_1_0 } }, {
	m(SHADOWLANDS, {
		m(KORTHIA, {
			header(HEADERS.Spell, 354778, {	-- The Rift
				q(64704),	-- triggered when looting 48-research item Half-Completed Runeforge Pattern from Observer Yorik
			}),
		}),
	}),
})));
