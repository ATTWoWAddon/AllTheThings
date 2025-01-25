-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------
root(ROOTS.ExpansionFeatures, expansion(EXPANSION.TWW, bubbleDownSelf({ ["timeline"] = { ADDED_11_1_0 } }, {
	n(CARTELS_OF_UNDERMINE, {
		n(FACTIONS, {
			faction(FACTION_CARTELS_OF_UNDERMINE, {
				faction(FACTION_UNDERMINE_BILGEWATER_CARTEL),	-- Bilgewater Cartel
				faction(FACTION_BLACKWATER_CARTEL),	-- Blackwater Cartel
				faction(FACTION_UNDERMINE_STEAMWHEEDLE_CARTEL),	-- Steamwheedle Cartel
				faction(FACTION_VENTURE_CO),	-- Venture Co
				ach(41349, {	-- In with the Cartels
					crit(102751, {	-- Bilgewater Cartel
						["minReputation"] = { FACTION_UNDERMINE_BILGEWATER_CARTEL, HONORED },	-- Bilgewater Cartel Honored
					}),
					crit(102752, {	-- Blackwater Cartel
						["minReputation"] = { FACTION_BLACKWATER_CARTEL, HONORED },	-- Blackwater Cartel Honored
					}),
					crit(102753, {	-- Steamwheedle Cartel
						["minReputation"] = { FACTION_UNDERMINE_STEAMWHEEDLE_CARTEL, HONORED },	-- Steamwheedle Cartel Honored
					}),
					crit(102754, {	-- Venture Co
						["minReputation"] = { FACTION_VENTURE_CO, HONORED },	-- Venture Co Honored
					}),
					i(232807),	-- Iron Chick
				}),
				ach(41351, {	-- Cartels Bestie
					crit(102751, {	-- Bilgewater Cartel
						["minReputation"] = { FACTION_UNDERMINE_BILGEWATER_CARTEL, REVERED },	-- Bilgewater Cartel Revered
					}),
					crit(102752, {	-- Blackwater Cartel
						["minReputation"] = { FACTION_BLACKWATER_CARTEL, REVERED },	-- Blackwater Cartel Revered
					}),
					crit(102753, {	-- Steamwheedle Cartel
						["minReputation"] = { FACTION_UNDERMINE_STEAMWHEEDLE_CARTEL, REVERED },	-- Steamwheedle Cartel Revered
					}),
					crit(102754, {	-- Venture Co
						["minReputation"] = { FACTION_VENTURE_CO, REVERED },	-- Venture Co Revered
					}),
					-- TODO: Ensemble: Goblin Bruiser's Attire
				}),
				ach(41352, {	-- Trade-Duke
					crit(102751, {	-- Bilgewater Cartel
						["minReputation"] = { FACTION_UNDERMINE_BILGEWATER_CARTEL, EXALTED },	-- Bilgewater Cartel Exalted
					}),
					crit(102752, {	-- Blackwater Cartel
						["minReputation"] = { FACTION_BLACKWATER_CARTEL, EXALTED },	-- Blackwater Cartel Exalted
					}),
					crit(102753, {	-- Steamwheedle Cartel
						["minReputation"] = { FACTION_UNDERMINE_STEAMWHEEDLE_CARTEL, EXALTED },	-- Steamwheedle Cartel Exalted
					}),
					crit(102754, {	-- Venture Co
						["minReputation"] = { FACTION_VENTURE_CO, EXALTED },	-- Venture Co Exalted
					}),
					-- TODO: Title: Trade-duke
				}),
				ach(41086, {	-- Ally of Undermine
					["minReputation"] = { FACTION_CARTELS_OF_UNDERMINE, 20 },	-- Cartels of Undermine 20
					["g"] = {
						title(603),	-- <Name> the Explosive
					},
				}),
			}),
			faction(FACTION_DARKFUSE_SOLUTIONS, {
				ach(41350, {	-- A Long Fuse
					["minReputation"] = { FACTION_DARKFUSE_SOLUTIONS, EXALTED },	-- Darkfuse Solutions Exalted
				}),
			}),
		}),
	}),
})));