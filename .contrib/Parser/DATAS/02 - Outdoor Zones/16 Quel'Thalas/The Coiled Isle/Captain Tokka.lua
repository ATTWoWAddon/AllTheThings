---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

local COILED_FILAMENT = 3546;

root(ROOTS.Zones, m(MAP.MIDNIGHT.QUELTHALAS, {
	m(MAP.MIDNIGHT.THE_COILED_ISLE, {
		header(HEADERS.Faction, FACTION_CAPTAIN_TOKKA, {
			["lore"] = "Captain Tokka's ship was devoured by the Great White Serpent and his crew corrupted by Ula'tek's Curse. He'll share the secrets of venom fishing, if you help him get his revenge.",
			["icon"] = 2065576,
			["groups"] = {
				faction(FACTION_CAPTAIN_TOKKA),
				n(ACHIEVEMENTS, {
					ach(63629, {	-- Angler of The Coiled Isle
						i(278336),	-- Sinful Pearl (CI!)
					}),
					ach(63631),	-- Captain Tokka's Crew
					ach(63635, {	-- Tokka's Terrible Trials
						title(789),	-- Bloodsworn Mariner <Name>
					}),
					ach(63632),	-- Toxic Trophies
					ach(63634),	-- Where Did You Get That? (automated)
				}),
				n(QUESTS, sharedDataSelf({
					["isDaily"] = true,
				}, {
					q(94804, {	-- A Collection of Rot
						["qg"] = 257598,	-- Second Mate Sluggs
						["coord"] = { 51.6, 49.8, MAP.MIDNIGHT.THE_COILED_ISLE },
					}),
					q(97562, {	-- Culling the Killifish
						["qg"] = 268394,	-- Brinedrinker Gills
						["coord"] = { 51.7, 50.2, MAP.MIDNIGHT.THE_COILED_ISLE },
						["groups"] = { i(274587) },	-- Spotted Killifish (QI!)
					}),
				})),
				n(VENDORS, {
					n(257598, {	-- Second Mate Sluggs
						["coord"] = { 51.6, 49.8, MAP.MIDNIGHT.THE_COILED_ISLE },
						["groups"] = {
							-- Rank 1: Stranger (Neutral)
							i(262792, {	-- Shredded Bloomline
								["cost"] = { { "c", COILED_FILAMENT, 10 } },
							}),
							i(262797, {	-- Shredded Glimmerline
								["cost"] = { { "c", COILED_FILAMENT, 10 } },
							}),
							-- Rank 2: Doomed Sailor
							i(277923, {	-- Aged Tortollan Scroll Case (DECOR!)
								["minReputation"] = { FACTION_CAPTAIN_TOKKA, 2 },
								["cost"] = { { "c", VOIDLIGHT_MARL, 150 } },
							}),
							i(278332, {	-- Recipe: Puffer Plate (RECIPE!)
								["minReputation"] = { FACTION_CAPTAIN_TOKKA, 2 },
								["cost"] = { { "c", VOIDLIGHT_MARL, 1500 } },
							}),
							i(277927, {	-- Yellowed Kelp Pile (DECOR!)
								["minReputation"] = { FACTION_CAPTAIN_TOKKA, 2 },
								["cost"] = { { "c", VOIDLIGHT_MARL, 250 } },
							}),
							-- Rank 3: Cursed Angler
							i(275693, {	-- Design: Opalescent Amani Peridot (RECIPE!)
								["minReputation"] = { FACTION_CAPTAIN_TOKKA, 3 },
								["cost"] = { { "c", ARTISAN_MOXIE.JEWELCRAFTING, 150 } },
							}),
							i(277931, {	-- Hanging Yellowed Kelp (DECOR!)
								["minReputation"] = { FACTION_CAPTAIN_TOKKA, 3 },
								["cost"] = { { "c", VOIDLIGHT_MARL, 250 } },
							}),
							i(275336, {	-- Pattern: Mounted Moby (RECIPE!)
								["minReputation"] = { FACTION_CAPTAIN_TOKKA, 3 },
								["cost"] = { { "c", ARTISAN_MOXIE.LEATHERWORKING, 150 } },
							}),
							i(271891, {	-- Recipe: Alluring Nostrum (RECIPE!)
								["minReputation"] = { FACTION_CAPTAIN_TOKKA, 3 },
								["cost"] = { { "c", ARTISAN_MOXIE.INSCRIPTION, 150 } },
							}),
							i(275018, {	-- Recipe: Coiled Stargorger Lure (RECIPE!)
								["minReputation"] = { FACTION_CAPTAIN_TOKKA, 3 },
								["cost"] = { { "c", VOIDLIGHT_MARL, 1500 } },
							}),
							i(275318, {	-- Schematic: Fine Captain's Bottle (RECIPE!)
								["minReputation"] = { FACTION_CAPTAIN_TOKKA, 3 },
								["cost"] = { { "c", ARTISAN_MOXIE.ENGINEERING, 150 } },
							}),
							i(275322, {	-- Technique: Ferocious Feline Trinket (RECIPE!)
								["minReputation"] = { FACTION_CAPTAIN_TOKKA, 3 },
								["cost"] = { { "c", ARTISAN_MOXIE.INSCRIPTION, 150 } },
							}),
							-- Rank 4: Venom Trawler
							i(277925, {	-- Blue Tortollan Signpost (DECOR!)
								["minReputation"] = { FACTION_CAPTAIN_TOKKA, 4 },
								["cost"] = { { "c", VOIDLIGHT_MARL, 250 } },
							}),
							i(278391, {	-- Eerie Lure (CI?)
								["minReputation"] = { FACTION_CAPTAIN_TOKKA, 4 },
								["cost"] = { { "c", VOIDLIGHT_MARL, 250 } },
							}),
							i(275301, {	-- Recipe: Feast of Knowledge (RECIPE!)
								["minReputation"] = { FACTION_CAPTAIN_TOKKA, 4 },
								["cost"] = { { "c", VOIDLIGHT_MARL, 1500 } },
							}),
							i(275012, {	-- Recipe: Tokka's Multi-Ward (RECIPE!)
								["minReputation"] = { FACTION_CAPTAIN_TOKKA, 4 },
								["cost"] = { { "c", VOIDLIGHT_MARL, 1500 } },
							}),
							i(277929, {	-- Rustic Fishing Rack (DECOR!)
								["minReputation"] = { FACTION_CAPTAIN_TOKKA, 4 },
								["cost"] = { { "c", VOIDLIGHT_MARL, 500 } },
							}),
							i(275020, {	-- Venom Elemental (PET!)
								["minReputation"] = { FACTION_CAPTAIN_TOKKA, 4 },
								["cost"] = { { "g", 1000000 } },	-- 100g
							}),
							-- Rank 5: Bloodsworn Crew
							i(274814, {	-- Envenomed Game Ripper (COSMETIC!)
								["minReputation"] = { FACTION_CAPTAIN_TOKKA, 5 },
								["cost"] = { { "c", COILED_FILAMENT, 1000 } },
							}),
							i(274802, {	-- Envenomed Gavel (COSMETIC!)
								["minReputation"] = { FACTION_CAPTAIN_TOKKA, 5 },
								["cost"] = { { "c", COILED_FILAMENT, 500 } },
							}),
							i(275653, {	-- Sea-Dwelling Isle Serpent (MOUNT!)
								["minReputation"] = { FACTION_CAPTAIN_TOKKA, 5 },
								["cost"] = { { "c", COILED_FILAMENT, 2500 } },
							}),
							i(244790, {	-- The Coiled Huntress [Fishing Tool]
								["minReputation"] = { FACTION_CAPTAIN_TOKKA, 5 },
								["cost"] = { { "c", VOIDLIGHT_MARL, 6000 } },
							}),
							i(277921, {	-- Traditional Tortollan Tent (DECOR!)
								["minReputation"] = { FACTION_CAPTAIN_TOKKA, 5 },
								["cost"] = { { "c", VOIDLIGHT_MARL, 500 } },
							}),
						},
					}),
				}),
			},
		}),
	}),
}));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.MID, {
	m(MAP.MIDNIGHT.QUELTHALAS, {
		m(MAP.MIDNIGHT.THE_COILED_ISLE, {
			header(HEADERS.Faction, FACTION_CAPTAIN_TOKKA, {
				q(97537),	-- Triggered after turning in 'A Collection of Rot' (94804)
			}),
		}),
	}),
}));
