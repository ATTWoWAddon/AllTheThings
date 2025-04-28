BOUNTIFUL = createHeader({
	readable = "Bountiful",
	icon = 4622271,
	text = {
		en = WOWAPI_GetSpellName(430253),
	},
});
CURIO = createHeader({
	readable = "Curio",
	icon = 1604168,
	text = {
		en = WOWAPI_GetSpellName(456522),
	},
});
DELVES_TWW_S1 = createHeader({
	readable = "Delves TWW S1",
	icon = 1604168,
	text = {
		en = "Delves TWW S1",
		cn = "地心之战地下堡第1季",
	},
});
DELVES_TWW_S2 = createHeader({
	readable = "Delves TWW S2",
	icon = 1604168,
	text = {
		en = "Delves TWW S2",
		cn = "地心之战地下堡第2季",
	},
});
local UNDERCOIN = 2803;
local NERUBIAN_DELVES = { EARTHCRAWL_MINES, SKITTERING_BREACH, THE_DREAD_PIT, THE_SPIRAL_WEAVE, THE_UNDERKEEP };
local FUNGARIAN_DELVES = { FUNGAL_FOLLY, MYCOMANCER_CAVERN };
local KOBOLD_DELVES = { KRIEGVALS_REST, THE_WATERWORKS };
local SHADOW_DELVES = { NIGHTFALL_SANCTUM };
local KOBYSS_DELVES = { TAK_RETHAN_ABYSS, THE_SINKHOLE };
local ALL_REGULAR_DELVES = {
	EARTHCRAWL_MINES,
	FUNGAL_FOLLY,
	KRIEGVALS_REST,
	MYCOMANCER_CAVERN,
	NIGHTFALL_SANCTUM,
	SKITTERING_BREACH,
	TAK_RETHAN_ABYSS,
	THE_DREAD_PIT,
	THE_SINKHOLE,
	THE_SPIRAL_WEAVE,
	THE_UNDERKEEP,
	THE_WATERWORKS,
	-- #if AFTER 11.1.0
	EXCAVATION_SITE_9,
	SIDESTREET_SLUICE,
	-- #endif
};
local ALL_THE_DELVES = {
	EARTHCRAWL_MINES,
	FUNGAL_FOLLY,
	KRIEGVALS_REST,
	MYCOMANCER_CAVERN,
	NIGHTFALL_SANCTUM,
	SKITTERING_BREACH,
	TAK_RETHAN_ABYSS,
	THE_DREAD_PIT,
	THE_SINKHOLE,
	THE_SPIRAL_WEAVE,
	THE_UNDERKEEP,
	THE_WATERWORKS,
	ZEKVIRS_LAIR,
	-- #if AFTER 11.1.0
	DEMOLITION_DOME,
	EXCAVATION_SITE_9,
	SIDESTREET_SLUICE,
	-- #endif
};
local mapped = function(t)
	if not t.maps then
		t.maps = ALL_REGULAR_DELVES
	end
	return t
end
root(ROOTS.Delves, expansion(EXPANSION.TWW, bubbleDownSelf({ ["timeline"] = { ADDED_11_0_2 } }, {
	n(DELVES_TWW_S1, {	-- Includes Zekvir's Lair
		n(ACHIEVEMENTS, bubbleDownSelf({ ["timeline"] = { ADDED_11_0_2, REMOVED_11_1_0_SEASONSTART } }, {
			ach(40446, {	-- I TAKE Candle!
				["maps"] = KOBOLD_DELVES,
			}),
			ach(40515, {	-- War Within Delves: Tier 4 (Season 1)
				["maps"] = ALL_REGULAR_DELVES,
			}),
			ach(40516, {	-- War Within Delves: Tier 5 (Season 1)
				["maps"] = ALL_REGULAR_DELVES,
			}),
			ach(40517, {	-- War Within Delves: Tier 6 (Season 1)
				["maps"] = ALL_REGULAR_DELVES,
			}),
			ach(40518, {	-- War Within Delves: Tier 7 (Season 1)
				["maps"] = ALL_REGULAR_DELVES,
			}),
			ach(40519, {	-- War Within Delves: Tier 8 (Season 1)
				["maps"] = ALL_REGULAR_DELVES,
			}),
			ach(40520, {	-- War Within Delves: Tier 9 (Season 1)
				["maps"] = ALL_REGULAR_DELVES,
			}),
			ach(40521, {	-- War Within Delves: Tier 10 (Season 1)
				["maps"] = ALL_REGULAR_DELVES,
			}),
			ach(40726, {	-- War Within Delves: Tier 11 (Season 1)
				["maps"] = ALL_REGULAR_DELVES,
				["g"] = {
					title(550),	-- High Explorer <Name>
				},
			}),
		})),
		-- TWW Season 1 Boss (Still available)
		m(ZEKVIRS_LAIR, {
			["icon"] = [[~_.asset("Delves_Nerubian")]],
			["coord"] = { 6.7, 33.9, NERUBAR },
			["g"] = {
				n(ACHIEVEMENTS, bubbleDownSelf({ ["timeline"] = { ADDED_11_0_2, REMOVED_11_1_0_SEASONSTART } }, {
					ach(40431, {	-- Hunting the Hunter
						title(560),	-- <Name> Ascension Breaker
					}),
					ach(40433, {	-- Let Me Solo Him
						i(225542),	-- Delver's Dirigible Schematic: Void (MM!)
					}),
					ach(40103, {	-- My First Nemesis (Namechanged from Nemesis in 11.1)
						i(212171),	-- Zekvir's Raptorial Spine
					}),
				})),
				n(DELVE_COMPLETION, {	-- ToDO: check if still available in 11.1
					n(TREASURES, {
						filter(COSMETIC, {
							i(212163),	-- Soporific Shroom Cap
						}),
						n(WEAPONS, {
							i(218126),	-- Befouler's Syringe
						}),
					}),
				}),
				n(QUESTS, bubbleDownSelf({ ["timeline"] = { ADDED_11_0_2, REMOVED_11_1_0_SEASONSTART } }, {
					q(83752, {	-- Threats of Zekvir
						["provider"] = { "n", 227492 },	-- Brann Bronzebeard
						["coord"] = { 46.2, 48.0, THE_RINGING_DEEPS },
					}),
				})),
				n(221427, {	-- Zekvir
					["crs"] = { 225204 },	-- Zekvir (not sure which is "?" or "??")
					-- #if AFTER 11.1.0
					["groups"] = {
						i(212171),	-- Zekvir's Raptorial Spine
						i(225542),	-- Delver's Dirigible Schematic: Void (MM!)
					},
					-- #endif
				}),
			},
		}),
	}),
	n(DELVES_TWW_S2, {	-- Includes Demolition Dome
		n(ACHIEVEMENTS, bubbleDownSelf({ ["timeline"] = { ADDED_11_1_0_SEASONSTART, REMOVED_11_2_0 } }, {
			ach(41709),	-- Journey's End (Season 2)
			ach(41531, {	-- The Hataclysm
				["description"] = "After you've defeated the Underpin once, Ask Brann to change his hat 10 times at his spot in Dornogal.",
				["provider"] = { "n", 206017 },	-- Brann Bronzebeard
				["coord"] = { 47.6, 44.6, DORNOGAL },
				["sourceAchievement"] = 41530,	-- My New Nemesis
			}),
			ach(41191, {	-- War Within Delves: Tier 4 (Season 2)
				["maps"] = ALL_REGULAR_DELVES,
			}),
			ach(41192, {	-- War Within Delves: Tier 5 (Season 2)
				["maps"] = ALL_REGULAR_DELVES,
			}),
			ach(41198, {	-- War Within Delves: Tier 6 (Season 2)
				["maps"] = ALL_REGULAR_DELVES,
			}),
			ach(41193, {	-- War Within Delves: Tier 7 (Season 2)
				["maps"] = ALL_REGULAR_DELVES,
			}),
			ach(41194, {	-- War Within Delves: Tier 8 (Season 2)
				["maps"] = ALL_REGULAR_DELVES,
			}),
			ach(41195, {	-- War Within Delves: Tier 9 (Season 2)
				["maps"] = ALL_REGULAR_DELVES,
			}),
			ach(41196, {	-- War Within Delves: Tier 10 (Season 2)
				["maps"] = ALL_REGULAR_DELVES,
			}),
			ach(41197, {	-- War Within Delves: Tier 11 (Season 2)
				["maps"] = ALL_REGULAR_DELVES,
			}),
		})),
		-- TWW Season 2 Boss (Still available)
		m(DEMOLITION_DOME, bubbleDownSelf({ ["timeline"] = { ADDED_11_1_0_SEASONSTART } }, {
			--["icon"] = [[~_.asset("Delves_Nerubian")]],
			["maps"] = { 2426 },
			["coord"] = { 52.7, 9.4, UNDERMINE },
			["g"] = {
				n(ACHIEVEMENTS, {
					ach(41529, {	-- Breaking the Bank
						title(612),	-- %s, the Real Deal
					}),
					ach(41210, {	-- Let Me Solo Him: The Underpin
						i(233196),	-- Delver's Gob-Trotter Schematic: Gold (MM!)
					}),
					ach(41530, {	-- My New Nemesis
						i(235614),	-- Golden-Gob Propulsion Rig
					}),
				}),
			},
		})),
	}),
	n(ACHIEVEMENTS, {
		ach(40817, {	-- A Delver's Bounty
			["maps"] = ALL_REGULAR_DELVES,
		}),
		ach(41115, {	-- Algari Delver
			["timeline"] = { ADDED_11_1_0 },
			["maps"] = ALL_REGULAR_DELVES,
			-- Meta Achievement
			["sym"] = {{"meta_achievement",
				41106,	-- Algari Delver Damage Dealer
				41107,	-- Algari Delver Healer
				41108,	-- Algari Delver Tank
			}},
		}),
		ach(41116, {	-- Algari Delver II
			["timeline"] = { ADDED_11_1_0 },
			["maps"] = ALL_REGULAR_DELVES,
			-- Meta Achievement
			["sym"] = {{"meta_achievement",
				41109,	-- Algari Delver Damage Dealer II
				41111,	-- Algari Delver Healer II
				41113,	-- Algari Delver Tank II
			}},
		}),
		ach(41106, {	-- Algari Delver Damage Dealer
			["timeline"] = { ADDED_11_1_0 },
			["g"] = {
				crit(71057, {	-- Earthcrawl Mines
					["maps"] = { EARTHCRAWL_MINES },
				}),
				crit(70995, {	-- Fungal Folly
					["maps"] = { FUNGAL_FOLLY },
				}),
				crit(70996, {	-- Kriegval's Rest
					["maps"] = { KRIEGVALS_REST },
				}),
				crit(70997, {	-- Mycomancer Cavern
					["maps"] = { MYCOMANCER_CAVERN },
				}),
				crit(70998, {	-- Nightfall Sanctum
					["maps"] = { NIGHTFALL_SANCTUM },
				}),
				crit(70999, {	-- Skittering Breach
					["maps"] = { SKITTERING_BREACH },
				}),
				crit(71000, {	-- Tak-Rethan Abyss
					["maps"] = { TAK_RETHAN_ABYSS },
				}),
				crit(71001, {	-- The Dread Pit
					["maps"] = { THE_DREAD_PIT },
				}),
				crit(71002, {	-- The Sinkhole
					["maps"] = { THE_SINKHOLE },
				}),
				crit(71003, {	-- The Spiral Weave
					["maps"] = { THE_SPIRAL_WEAVE },
				}),
				crit(71004, {	-- The Underkeep
					["maps"] = { THE_UNDERKEEP },
				}),
				crit(71005, {	-- The Waterworks
					["maps"] = { THE_WATERWORKS },
				}),
				crit(71006, {	-- Sidestreet Sluice
					["maps"] = { SIDESTREET_SLUICE },
				}),
				crit(71007, {	-- Excavation Site 9
					["maps"] = { EXCAVATION_SITE_9 },
				}),
			},
		}),
		ach(41109, {	-- Algari Delver Damage Dealer II
			["timeline"] = { ADDED_11_1_0 },
			["g"] = {
				crit(71043, {	-- Earthcrawl Mines
					["maps"] = { EARTHCRAWL_MINES },
				}),
				crit(71044, {	-- Fungal Folly
					["maps"] = { FUNGAL_FOLLY },
				}),
				crit(71045, {	-- Kriegval's Rest
					["maps"] = { KRIEGVALS_REST },
				}),
				crit(71046, {	-- Mycomancer Cavern
					["maps"] = { MYCOMANCER_CAVERN },
				}),
				crit(71047, {	-- Nightfall Sanctum
					["maps"] = { NIGHTFALL_SANCTUM },
				}),
				crit(71048, {	-- Skittering Breach
					["maps"] = { SKITTERING_BREACH },
				}),
				crit(71049, {	-- Tak-Rethan Abyss
					["maps"] = { TAK_RETHAN_ABYSS },
				}),
				crit(71050, {	-- The Dread Pit
					["maps"] = { THE_DREAD_PIT },
				}),
				crit(71051, {	-- The Sinkhole
					["maps"] = { THE_SINKHOLE },
				}),
				crit(71052, {	-- The Spiral Weave
					["maps"] = { THE_SPIRAL_WEAVE },
				}),
				crit(71053, {	-- The Underkeep
					["maps"] = { THE_UNDERKEEP },
				}),
				crit(71054, {	-- The Waterworks
					["maps"] = { THE_WATERWORKS },
				}),
				crit(71055, {	-- Sidestreet Sluice
					["maps"] = { SIDESTREET_SLUICE },
				}),
				crit(71056, {	-- Excavation Site 9
					["maps"] = { EXCAVATION_SITE_9 },
				}),
			},
		}),
		ach(41110, {	-- Algari Delver Damage Dealer III
			["timeline"] = { ADDED_11_1_0 },
			["g"] = {
				crit(71058, {	-- Earthcrawl Mines
					["maps"] = { EARTHCRAWL_MINES },
				}),
				crit(71059, {	-- Fungal Folly
					["maps"] = { FUNGAL_FOLLY },
				}),
				crit(71060, {	-- Kriegval's Rest
					["maps"] = { KRIEGVALS_REST },
				}),
				crit(71061, {	-- Mycomancer Cavern
					["maps"] = { MYCOMANCER_CAVERN },
				}),
				crit(71062, {	-- Nightfall Sanctum
					["maps"] = { NIGHTFALL_SANCTUM },
				}),
				crit(71063, {	-- Skittering Breach
					["maps"] = { SKITTERING_BREACH },
				}),
				crit(71064, {	-- Tak-Rethan Abyss
					["maps"] = { TAK_RETHAN_ABYSS },
				}),
				crit(71065, {	-- The Dread Pit
					["maps"] = { THE_DREAD_PIT },
				}),
				crit(71066, {	-- The Sinkhole
					["maps"] = { THE_SINKHOLE },
				}),
				crit(71067, {	-- The Spiral Weave
					["maps"] = { THE_SPIRAL_WEAVE },
				}),
				crit(71068, {	-- The Underkeep
					["maps"] = { THE_UNDERKEEP },
				}),
				crit(71069, {	-- The Waterworks
					["maps"] = { THE_WATERWORKS },
				}),
				crit(71070, {	-- Sidestreet Sluice
					["maps"] = { SIDESTREET_SLUICE },
				}),
				crit(71071, {	-- Excavation Site 9
					["maps"] = { EXCAVATION_SITE_9 },
				}),
			},
		}),
		ach(41107, {	-- Algari Delver Healer
			["timeline"] = { ADDED_11_1_0 },
			["g"] = {
				crit(71008, {	-- Earthcrawl Mines
					["maps"] = { EARTHCRAWL_MINES },
				}),
				crit(71009, {	-- Fungal Folly
					["maps"] = { FUNGAL_FOLLY },
				}),
				crit(71010, {	-- Kriegval's Rest
					["maps"] = { KRIEGVALS_REST },
				}),
				crit(71011, {	-- Mycomancer Cavern
					["maps"] = { MYCOMANCER_CAVERN },
				}),
				crit(71012, {	-- Nightfall Sanctum
					["maps"] = { NIGHTFALL_SANCTUM },
				}),
				crit(71013, {	-- Skittering Breach
					["maps"] = { SKITTERING_BREACH },
				}),
				crit(71014, {	-- Tak-Rethan Abyss
					["maps"] = { TAK_RETHAN_ABYSS },
				}),
				crit(71015, {	-- The Dread Pit
					["maps"] = { THE_DREAD_PIT },
				}),
				crit(71016, {	-- The Sinkhole
					["maps"] = { THE_SINKHOLE },
				}),
				crit(71017, {	-- The Spiral Weave
					["maps"] = { THE_SPIRAL_WEAVE },
				}),
				crit(71018, {	-- The Underkeep
					["maps"] = { THE_UNDERKEEP },
				}),
				crit(71019, {	-- The Waterworks
					["maps"] = { THE_WATERWORKS },
				}),
				crit(71020, {	-- Sidestreet Sluice
					["maps"] = { SIDESTREET_SLUICE },
				}),
				crit(71021, {	-- Excavation Site 9
					["maps"] = { EXCAVATION_SITE_9 },
				}),
			},
		}),
		ach(41111, {	-- Algari Delver Healer II
			["timeline"] = { ADDED_11_1_0 },
			["g"] = {
				crit(71072, {	-- Earthcrawl Mines
					["maps"] = { EARTHCRAWL_MINES },
				}),
				crit(71073, {	-- Fungal Folly
					["maps"] = { FUNGAL_FOLLY },
				}),
				crit(71074, {	-- Kriegval's Rest
					["maps"] = { KRIEGVALS_REST },
				}),
				crit(71075, {	-- Mycomancer Cavern
					["maps"] = { MYCOMANCER_CAVERN },
				}),
				crit(71076, {	-- Nightfall Sanctum
					["maps"] = { NIGHTFALL_SANCTUM },
				}),
				crit(71077, {	-- Skittering Breach
					["maps"] = { SKITTERING_BREACH },
				}),
				crit(71078, {	-- Tak-Rethan Abyss
					["maps"] = { TAK_RETHAN_ABYSS },
				}),
				crit(71079, {	-- The Dread Pit
					["maps"] = { THE_DREAD_PIT },
				}),
				crit(71080, {	-- The Sinkhole
					["maps"] = { THE_SINKHOLE },
				}),
				crit(71081, {	-- The Spiral Weave
					["maps"] = { THE_SPIRAL_WEAVE },
				}),
				crit(71082, {	-- The Underkeep
					["maps"] = { THE_UNDERKEEP },
				}),
				crit(71083, {	-- The Waterworks
					["maps"] = { THE_WATERWORKS },
				}),
				crit(71084, {	-- Sidestreet Sluice
					["maps"] = { SIDESTREET_SLUICE },
				}),
				crit(71085, {	-- Excavation Site 9
					["maps"] = { EXCAVATION_SITE_9 },
				}),
			},
		}),
		ach(41112, {	-- Algari Delver Healer III
			["timeline"] = { ADDED_11_1_0 },
			["g"] = {
				crit(71086, {	-- Earthcrawl Mines
					["maps"] = { EARTHCRAWL_MINES },
				}),
				crit(71087, {	-- Fungal Folly
					["maps"] = { FUNGAL_FOLLY },
				}),
				crit(71088, {	-- Kriegval's Rest
					["maps"] = { KRIEGVALS_REST },
				}),
				crit(71089, {	-- Mycomancer Cavern
					["maps"] = { MYCOMANCER_CAVERN },
				}),
				crit(71090, {	-- Nightfall Sanctum
					["maps"] = { NIGHTFALL_SANCTUM },
				}),
				crit(71091, {	-- Skittering Breach
					["maps"] = { SKITTERING_BREACH },
				}),
				crit(71092, {	-- Tak-Rethan Abyss
					["maps"] = { TAK_RETHAN_ABYSS },
				}),
				crit(71093, {	-- The Dread Pit
					["maps"] = { THE_DREAD_PIT },
				}),
				crit(71094, {	-- The Sinkhole
					["maps"] = { THE_SINKHOLE },
				}),
				crit(71095, {	-- The Spiral Weave
					["maps"] = { THE_SPIRAL_WEAVE },
				}),
				crit(71096, {	-- The Underkeep
					["maps"] = { THE_UNDERKEEP },
				}),
				crit(71097, {	-- The Waterworks
					["maps"] = { THE_WATERWORKS },
				}),
				crit(71098, {	-- Sidestreet Sluice
					["maps"] = { SIDESTREET_SLUICE },
				}),
				crit(71099, {	-- Excavation Site 9
					["maps"] = { EXCAVATION_SITE_9 },
				}),
			},
		}),
		ach(41108, {	-- Algari Delver Tank
			["timeline"] = { ADDED_11_1_0 },
			["g"] = {
				crit(71022, {	-- Earthcrawl Mines
					["maps"] = { EARTHCRAWL_MINES },
				}),
				crit(71023, {	-- Fungal Folly
					["maps"] = { FUNGAL_FOLLY },
				}),
				crit(71024, {	-- Kriegval's Rest
					["maps"] = { KRIEGVALS_REST },
				}),
				crit(71025, {	-- Mycomancer Cavern
					["maps"] = { MYCOMANCER_CAVERN },
				}),
				crit(71026, {	-- Nightfall Sanctum
					["maps"] = { NIGHTFALL_SANCTUM },
				}),
				crit(71027, {	-- Skittering Breach
					["maps"] = { SKITTERING_BREACH },
				}),
				crit(71028, {	-- Tak-Rethan Abyss
					["maps"] = { TAK_RETHAN_ABYSS },
				}),
				crit(71029, {	-- The Dread Pit
					["maps"] = { THE_DREAD_PIT },
				}),
				crit(71030, {	-- The Sinkhole
					["maps"] = { THE_SINKHOLE },
				}),
				crit(71031, {	-- The Spiral Weave
					["maps"] = { THE_SPIRAL_WEAVE },
				}),
				crit(71032, {	-- The Underkeep
					["maps"] = { THE_UNDERKEEP },
				}),
				crit(71033, {	-- The Waterworks
					["maps"] = { THE_WATERWORKS },
				}),
				crit(71034, {	-- Sidestreet Sluice
					["maps"] = { SIDESTREET_SLUICE },
				}),
				crit(71035, {	-- Excavation Site 9
					["maps"] = { EXCAVATION_SITE_9 },
				}),
			},
		}),
		ach(41113, {	-- Algari Delver Tank II
			["timeline"] = { ADDED_11_1_0 },
			["g"] = {
				crit(71100, {	-- Earthcrawl Mines
					["maps"] = { EARTHCRAWL_MINES },
				}),
				crit(71101, {	-- Fungal Folly
					["maps"] = { FUNGAL_FOLLY },
				}),
				crit(71102, {	-- Kriegval's Rest
					["maps"] = { KRIEGVALS_REST },
				}),
				crit(71103, {	-- Mycomancer Cavern
					["maps"] = { MYCOMANCER_CAVERN },
				}),
				crit(71104, {	-- Nightfall Sanctum
					["maps"] = { NIGHTFALL_SANCTUM },
				}),
				crit(71105, {	-- Skittering Breach
					["maps"] = { SKITTERING_BREACH },
				}),
				crit(71106, {	-- Tak-Rethan Abyss
					["maps"] = { TAK_RETHAN_ABYSS },
				}),
				crit(71107, {	-- The Dread Pit
					["maps"] = { THE_DREAD_PIT },
				}),
				crit(71108, {	-- The Sinkhole
					["maps"] = { THE_SINKHOLE },
				}),
				crit(71109, {	-- The Spiral Weave
					["maps"] = { THE_SPIRAL_WEAVE },
				}),
				crit(71110, {	-- The Underkeep
					["maps"] = { THE_UNDERKEEP },
				}),
				crit(71111, {	-- The Waterworks
					["maps"] = { THE_WATERWORKS },
				}),
				crit(71112, {	-- Sidestreet Sluice
					["maps"] = { SIDESTREET_SLUICE },
				}),
				crit(71113, {	-- Excavation Site 9
					["maps"] = { EXCAVATION_SITE_9 },
				}),
			},
		}),
		ach(41114, {	-- Algari Delver Tank III
			["timeline"] = { ADDED_11_1_0 },
			["g"] = {
				crit(71114, {	-- Earthcrawl Mines
					["maps"] = { EARTHCRAWL_MINES },
				}),
				crit(71115, {	-- Fungal Folly
					["maps"] = { FUNGAL_FOLLY },
				}),
				crit(71116, {	-- Kriegval's Rest
					["maps"] = { KRIEGVALS_REST },
				}),
				crit(71117, {	-- Mycomancer Cavern
					["maps"] = { MYCOMANCER_CAVERN },
				}),
				crit(71118, {	-- Nightfall Sanctum
					["maps"] = { NIGHTFALL_SANCTUM },
				}),
				crit(71119, {	-- Skittering Breach
					["maps"] = { SKITTERING_BREACH },
				}),
				crit(71120, {	-- Tak-Rethan Abyss
					["maps"] = { TAK_RETHAN_ABYSS },
				}),
				crit(71121, {	-- The Dread Pit
					["maps"] = { THE_DREAD_PIT },
				}),
				crit(71122, {	-- The Sinkhole
					["maps"] = { THE_SINKHOLE },
				}),
				crit(71123, {	-- The Spiral Weave
					["maps"] = { THE_SPIRAL_WEAVE },
				}),
				crit(71124, {	-- The Underkeep
					["maps"] = { THE_UNDERKEEP },
				}),
				crit(71125, {	-- The Waterworks
					["maps"] = { THE_WATERWORKS },
				}),
				crit(71126, {	-- Sidestreet Sluice
					["maps"] = { SIDESTREET_SLUICE },
				}),
				crit(71127, {	-- Excavation Site 9
					["maps"] = { EXCAVATION_SITE_9 },
				}),
			},
		}),
		ach(40538, {	-- Brann Development
			["maps"] = ALL_THE_DELVES,
		}),
		ach(40635, {	-- Branntastic
			["maps"] = ALL_THE_DELVES,
		}),
		ach(41723, {	-- Buddy System VIII
			["timeline"] = { ADDED_11_1_0_SEASONSTART },
			["maps"] = ALL_THE_DELVES,
		}),
		ach(41537, {	-- Buddy System VII
			["timeline"] = { ADDED_11_1_0_SEASONSTART },
			["maps"] = ALL_THE_DELVES,
		}),
		ach(40461, {	-- Buddy System VI
			["maps"] = ALL_THE_DELVES,
		}),
		ach(40457, {	-- Buddy System V
			["maps"] = ALL_THE_DELVES,
		}),
		ach(40456, {	-- Buddy System IV
			["maps"] = ALL_THE_DELVES,
		}),
		ach(40451, {	-- Buddy System III
			["maps"] = ALL_THE_DELVES,
		}),
		ach(40450, {	-- Buddy System II
			["maps"] = ALL_THE_DELVES,
		}),
		ach(40455, {	-- Buddy System
			["maps"] = ALL_THE_DELVES,
		}),
		ach(40882, {	-- Copious Coffers
			["maps"] = ALL_REGULAR_DELVES,
			["g"] = {
				title(575),	-- <Name> the Bountiful
				i(237358, {	-- Silver Coffer Key
					["timeline"] = { ADDED_11_1_0 },
				}),
			},
		}),
		ach(41097, {	-- Curiosity Never Killed the Looter
			["timeline"] = { ADDED_11_1_0 },
			["maps"] = ALL_REGULAR_DELVES,
		}),
		ach(40437, {	-- Delver of the Depths (automated)
			["maps"] = ALL_REGULAR_DELVES,
		}),
		ach(40447, {	-- Delver of the Depths II (automated)
			["maps"] = ALL_REGULAR_DELVES,
		}),
		ach(40448, {	-- Delver of the Depths III (automated)
			["maps"] = ALL_REGULAR_DELVES,
		}),
		ach(40449, {	-- Delver of the Depths IV (automated)
			["maps"] = ALL_REGULAR_DELVES,
		}),
		ach(40454, {	-- Daystormer
			["maps"] = SHADOW_DELVES,
		}),
		ach(40460, {	-- Delve Deep
			["maps"] = ALL_THE_DELVES,
		}),
		ach(40462, {	-- Delve Deeper
			["maps"] = ALL_THE_DELVES,
		}),
		ach(40463, {	-- Delve Deepest
			["maps"] = ALL_THE_DELVES,
		}),
		ach(41095, {	-- Delve Beyond (500)
			["timeline"] = { ADDED_11_1_0 },
			["maps"] = ALL_THE_DELVES,
			["g"] = {
				title(598),	-- Delver %s
			},
		}),
		ach(41096, {	-- Delve Infinite (1000)
			["timeline"] = { ADDED_11_1_0 },
			["maps"] = ALL_THE_DELVES,
			["g"] = {
				title(599),	-- Infinite Delver %s
			},
		}),
		ach(40537, {	-- Delve Loremaster: War Within
			-- Meta Achievement
			["sym"] = {{"meta_achievement",
				40527,	-- Earthcrawl Mines Stories
				40525,	-- Fungal Folly Stories
				40526,	-- Kriegval's Rest Stories
				40529,	-- The Dread Pit Stories
				40528,	-- The Waterworks Stories
				40533,	-- Skittering Breach Stories
				40532,	-- The Sinkhole Stories
				40530,	-- Nightfall Sanctum Stories
				40531,	-- Mycomancer Cavern Stories
				40536,	-- The Spiral Weave Stories
				40535,	-- Tak-Rethan Abyss Stories
				40534,	-- The Underkeep Stories
			}},
			["maps"] = ALL_REGULAR_DELVES,
		}),
		ach(41714, {	-- From Trash to Treasure (automated)
			["timeline"] = { ADDED_11_1_0_SEASONSTART },
		}),
		ach(40438, {	-- Glory of the Delver
			-- Meta Achievement
			["sym"] = {{"meta_achievement",
				40519,	-- War Within Delves: Tier 8
				40537,	-- Delve Loremaster: War Within
				40506,	-- Leave No Treasure Unfound
				40445,	-- Sporesweeper
				-- #if BEFORE 11.1
				40446,	-- I TAKE Candle!
				-- #endif
				40452,	-- Just Keep Swimming
				40453,	-- Spider Senses
				40454,	-- Daystormer
				-- #if BEFORE 11.1.0.59490
				40103,	-- My First Nemesis (Namechanged from Nemesis in 11.1)
				-- #endif
				-- #if AFTER 11.1.0.59490
				-- #if BEFORE 11.2.0
				41530,	-- My New Nemesis
				-- #endif
				-- #endif
				40538,	-- Brann Development
			}},
			["maps"] = ALL_THE_DELVES,
			["g"] = {
				i(224415),	-- Ivory Goliathus (MOUNT!)
			},
		}),
		ach(40524, {	-- Good Deed Delver
			["maps"] = ALL_REGULAR_DELVES,
		}),
		ach(40732, {	-- Heavy-Handed
			["maps"] = ALL_THE_DELVES,
		}),
		ach(40098, {	-- Immortal Spelunker
			["maps"] = ALL_REGULAR_DELVES,
			["g"] = {
				title(549),	-- Immortal Spelunker <Name>
			},
		}),
		ach(40763, {	-- I'm not a Thief, I'm a Treasure Hunter
			["maps"] = ALL_REGULAR_DELVES,
		}),
		ach(40459),		-- I've Got a Flying Machine!
		ach(40789),		-- I've Got More Flying Machine?! (automated)
		ach(40788, {	-- I Got the Keys
			["maps"] = ALL_REGULAR_DELVES,
		}),
		ach(40452, {	-- Just Keep Swimming
			["maps"] = KOBYSS_DELVES,
		}),
		ach(40506, {	-- Leave No Treasure Unfound
			-- Meta Achievement
			["sym"] = {{"meta_achievement",
				40806,	-- Earthcrawl Mines Discoveries
				40803,	-- Fungal Folly Discoveries
				40807,	-- Kriegval's Rest Discoveries
				40812,	-- The Dread Pit Discoveries
				40816,	-- The Waterworks Discoveries
				40810,	-- Skittering Breach Discoveries
				40813,	-- The Sinkhole Discoveries
				40809,	-- Nightfall Sanctum Discoveries
				40808,	-- Mycomancer Cavern Discoveries
				40814,	-- The Spiral Weave Discoveries
				40811,	-- Tak-Rethan Abyss Discoveries
				40815,	-- The Underkeep Discoveries
			}},
			["maps"] = ALL_REGULAR_DELVES,
			["g"] = {
				title(570),	-- <Name>, Seeker of Loot
			},
		}),
		ach(40523, {	-- On Brand
			["maps"] = ALL_THE_DELVES,
		}),
		ach(40863, {	-- Perplexing Puzzle
			["maps"] = ALL_REGULAR_DELVES,
		}),
		ach(40864, {	-- Plentiful Perplexing Puzzles
			["maps"] = ALL_REGULAR_DELVES,
			["crs"] = {
				225401,	-- Wrapped Spool
			},
		}),
		ach(41105, {	-- Prodigious Plentiful Perplexing Puzzles
			["timeline"] = { ADDED_11_1_0 },
			["maps"] = ALL_REGULAR_DELVES,
			["crs"] = {
				225401,	-- Wrapped Spool
			},
		}),
		ach(40820, {	-- Raisin' Brann
			["maps"] = ALL_THE_DELVES,
		}),
		ach(40819, {	-- Ready to Turn
			["maps"] = ALL_REGULAR_DELVES,
		}),
		ach(40453, {	-- Spider Senses
			["maps"] = NERUBIAN_DELVES,
		}),
		ach(40445, {	-- Sporesweeper
			["maps"] = FUNGARIAN_DELVES,
		}),
		ach(40458, {	-- Stranger Delves
			["maps"] = ALL_REGULAR_DELVES,
		}),
		ach(40885, {	-- The Key to Madness
			["maps"] = ALL_REGULAR_DELVES,
			["g"] = {
				i(237355, {	-- Golden Coffer Key
					["timeline"] = { ADDED_11_1_0 },
				}),
			},
		}),
		ach(40100, {	-- Undying Caver
			["maps"] = ALL_REGULAR_DELVES,
		}),
		ach(40725, {	-- War Within Delves: Endgame (automated)
			["maps"] = ALL_REGULAR_DELVES,
		}),
		ach(40631, {	-- War Within Delves: Tier 1
			["maps"] = ALL_REGULAR_DELVES,
		}),
		ach(40512, {	-- War Within Delves: Tier 2
			["maps"] = ALL_REGULAR_DELVES,
		}),
		ach(40514, {	-- War Within Delves: Tier 3
			["maps"] = ALL_REGULAR_DELVES,
		}),
		ach(40436, {	-- You're Getting a Delve!
			["maps"] = ALL_REGULAR_DELVES,
		}),
	}),
	mapped(n(DELVE_COMPLETION, {
		n(ARMOR, {
			filter(BACK_F, {
				i(211005),	-- Cave Topographer's Drape
				i(211006),	-- Secret-Dredger's Cloak
				i(211007),	-- Torchbearer's Greatcloak
				i(211062),	-- Treasure-Seeker's Shawl
			}),
			filter(CLOTH, {
				i(211013),	-- Cave Topographer's Cord
				i(211011),	-- Cave Topographer's Cowl
				i(211014),	-- Cave Topographer's Cuffs
				i(211010),	-- Cave Topographer's Handwraps
				i(211012),	-- Cave Topographer's Leggings
				i(211009),	-- Cave Topographer's Sandals
				i(211039),	-- Cave Topographer's Shoulders
				i(211008),	-- Cave Topographer's Vestment
			}),
			filter(FINGER_F, {
				i(211051),	-- Loop of Vestigial Power
				i(211052),	-- Olden Signet
				i(211061),	-- Unearthed Relic Band
			}),
			filter(LEATHER, {
				i(211020),	-- Treasure-Seeker's Bindings
				i(211015),	-- Treasure-Seeker's Boots
				i(211018),	-- Treasure-Seeker's Breeches
				i(211038),	-- Treasure-Seeker's Epaulets
				i(211016),	-- Treasure-Seeker's Grips
				i(211017),	-- Treasure-Seeker's Helm
				i(211019),	-- Treasure-Seeker's Sash
				i(211037),	-- Treasure-Seeker's Vest
			}),
			filter(MAIL, {
				i(211028),	-- Torchbearer's Bracers
				i(211021),	-- Torchbearer's Chainmail
				i(211027),	-- Torchbearer's Cinch
				i(211024),	-- Torchbearer's Coif
				i(211025),	-- Torchbearer's Greaves
				i(211023),	-- Torchbearer's Grips
				i(211026),	-- Torchbearer's Shoulderguards
				i(211022),	-- Torchbearer's Striders
			}),
			filter(MISC, {
				i(242919, {	-- Cracked Keystone (QS!/QI!) (TODO: Alex - I speculate it may have different sources but cannot confirm it due to lack of time)
					["timeline"] = { ADDED_11_1_5 },	-- TODO: REMOVED_11_2_0?
				}),
			}),
			filter(NECK_F, {
				i(211063),	-- Long-Lost Choker
			}),
			filter(PLATE, {
				i(211036),	-- Secret-Dredger's Armplates
				i(211030),	-- Secret-Dredger's Breastplate
				i(211032),	-- Secret-Dredger's Gauntlets
				i(211035),	-- Secret-Dredger's Girdle
				i(211029),	-- Secret-Dredger's Helm
				i(211033),	-- Secret-Dredger's Legguards
				i(211034),	-- Secret-Dredger's Mantle
				i(211031),	-- Secret-Dredger's Sabatons
			}),
			filter(TRINKET_F, {
				i(215170),	-- Abyssal Trap
				i(232891, {	-- Amorphous Relic
					["timeline"] = { ADDED_11_1_0_SEASONSTART },
				}),
				i(234717, {	-- Blastmaster3000
					["timeline"] = { ADDED_11_1_0_SEASONSTART },
				}),
				i(215174),	-- Concoction: Kiss of Death
				i(234326, {	-- Core Recycling Unit
					["timeline"] = { ADDED_11_1_0_SEASONSTART },
				}),
				i(215169),	-- Everburning Lantern
				i(215171),	-- Fungal Friend Flute
				i(234217, {	-- Funhouse Lens
					["timeline"] = { ADDED_11_1_0_SEASONSTART },
				}),
				i(235984, {	-- Garbagemancer's Last Resort
					["timeline"] = { ADDED_11_1_0_SEASONSTART },
				}),
				i(225653),	-- Siphoning Lightbrand
				i(215178),	-- Shadow-Binding Ritual Knife
				i(215172),	-- Silken Chain Weaver
				i(225668),	-- Unstable Power Suit Core
				i(225891),	-- Vile Vial of Kaheti Bile
			}),
		}),
		filter(BATTLE_PETS, {
			i(222971),	-- Bouncer (PET!)
			i(221820),	-- Chester (PET!)
			i(232848, {	-- Mr. DELVER (PET!)
				["timeline"] = { ADDED_11_1_0 },
			}),
			i(223624),	-- Sneef (PET!)
			i(225337),	-- Violet Sporbit (PET!)
		}),
		filter(TOYS, bubbleDownSelf({ ["timeline"] = { ADDED_11_1_0_SEASONSTART } }, {
			i(230924), 	-- Spotlight Materializer 1000 (TOY!)
		})),
		filter(COSMETIC, bubbleDownSelf({ ["timeline"] = { ADDED_11_1_0 } }, {
			i(235617), 	-- Lucky Goblin's Strapped Rockets
			i(235615),	-- Rusty Gobjets
		})),
		n(BOUNTIFUL, bubbleDownFiltered({
			["cost"] = {{"c", RESTORED_COFFER_KEY, 1}},
		},FILTERFUNC_itemID,{
			["provider"] = { "o", 413590 },	-- Bountiful Coffer
			["g"] = {
				i(220520, {["timeline"]={ REMOVED_11_1_0}}),	-- Radiant Echo
				i(235897, {["timeline"]={ ADDED_11_1_0_SEASONSTART}}),	-- Radiant Echo
				i(228958, {["timeline"]={ REMOVED_11_1_0}}),	-- Radiant Echo (QS!)
				i(235896, {["timeline"]={ ADDED_11_1_0_SEASONSTART}}),	-- Radiant Echo (QS!)
				n(ARMOR, {
					filter(BACK_F, {
						n(DELVES_TWW_S1, bubbleDown({ ["timeline"] = { REMOVED_11_1_0_SEASONSTART } }, {
							i(219183),	-- Amice of Hidden Stars
							i(219186),	-- Myconic Wrap
							i(219185),	-- Serape of the Stygian Sea
							i(219190),	-- Unkindled Waxweave Mozzetta
						})),
						n(DELVES_TWW_S2, bubbleDown({ ["timeline"] = { ADDED_11_1_0_SEASONSTART, REMOVED_11_2_0_SEASONSTART } }, {
							i(235427),	-- Blastborne Shroud
							i(235430),	-- Junkreaver's Overcloak
							i(235426),	-- Nitroclad Wrap
							i(235421),	-- Noxious Injector Sheen
						})),
					}),
					filter(CLOTH, {
						n(DELVES_TWW_S1, bubbleDown({ ["timeline"] = { REMOVED_11_1_0_SEASONSTART } }, {
							i(219176),	-- Unkindled Waxweave Belt
							i(219178),	-- Unkindled Waxweave Buskins
							i(219175),	-- Unkindled Waxweave Clasps
							i(219182),	-- Unkindled Waxweave Garb
							i(219180),	-- Unkindled Waxweave Mitts
							i(219181),	-- Unkindled Waxweave Slippers
							i(219177),	-- Unkindled Waxweave Shoulderpads
							i(219179),	-- Unkindled Waxweave Veil
						})),
						n(DELVES_TWW_S2, bubbleDown({ ["timeline"] = { ADDED_11_1_0_SEASONSTART, REMOVED_11_2_0_SEASONSTART } }, {
							i(235431),	-- Noxious Injector Harness
							i(235432),	-- Noxious Injector Footpads
							i(235433),	-- Noxious Injector Hands
							i(235434),	-- Noxious Injector Brainbulb
							i(235435),	-- Noxious Injector Trousers
							i(235436),	-- Noxious Injector Mantle
							i(235437),	-- Noxious Injector Tube
							i(235438),	-- Noxious Injector Manacles
						})),
					}),
					filter(FINGER_F, {
						n(DELVES_TWW_S1, bubbleDown({ ["timeline"] = { REMOVED_11_1_0_SEASONSTART } }, {
							i(219187),	-- Bone-Carved Circlet
							i(219221),	-- Ceremonial Song Ring
							i(219188),	-- Dark Abyss Hoop
							i(219189),	-- Fuzzy Molding Halo
						})),
						n(DELVES_TWW_S2, bubbleDown({ ["timeline"] = { ADDED_11_1_0_SEASONSTART, REMOVED_11_2_0_SEASONSTART } }, {
							i(235425),	-- Dumpsterdelver's Loop
							i(235423),	-- Expensive Gemstone Ring
							i(235424),	-- Rich Uncle's Endowment
						})),
					}),
					filter(LEATHER, {
						n(DELVES_TWW_S1, bubbleDown({ ["timeline"] = { REMOVED_11_1_0_SEASONSTART } }, {
							i(219172),	-- Myconic Clutches
							i(219170),	-- Myconic Chausses
							i(219174),	-- Myconic Frock
							i(219171),	-- Myconic Hood
							i(219169),	-- Myconic Shoulderstrap
							i(219168),	-- Myconic Strap
							i(219173),	-- Myconic Waders
							i(219167),	-- Myconic Wristbands
						})),
						n(DELVES_TWW_S2, bubbleDown({ ["timeline"] = { ADDED_11_1_0_SEASONSTART, REMOVED_11_2_0_SEASONSTART } }, {
							i(235439),	-- Nitroclad Bodice
							i(235440),	-- Nitroclad Striders
							i(235441),	-- Nitroclad Grips
							i(235442),	-- Nitroclad Hood
							i(235443),	-- Nitroclad Breeches
							i(235444),	-- Nitroclad Motorpads
							i(235445),	-- Nitroclad Strap
							i(235446),	-- Nitroclad Armguards
						})),
					}),
					filter(MAIL, {
						n(DELVES_TWW_S1, bubbleDown({ ["timeline"] = { REMOVED_11_1_0_SEASONSTART } }, {
							i(219163),	-- Bascinet of the Stygian Sea
							i(219166),	-- Hauberk of the Stygian Sea
							i(219164),	-- Grasps of the Stygian Sea
							i(219162),	-- Poleyns of the Stygian Sea
							i(219160),	-- Sash of the Stygian Sea
							i(219161),	-- Spaulders of the Stygian Sea
							i(219165),	-- Treads of the Stygian Sea
							i(219159),	-- Wrist Bindings of the Stygian Sea
						})),
						n(DELVES_TWW_S2, bubbleDown({ ["timeline"] = { ADDED_11_1_0_SEASONSTART, REMOVED_11_2_0_SEASONSTART } }, {
							i(235447),	-- Blastborne Hauberk
							i(235448),	-- Blastborne Greaves
							i(235449),	-- Blastborne Grips
							i(235450),	-- Blastborne Targeting Visor
							i(235451),	-- Blastborne Legguards
							i(235452),	-- Blastborne Missile Pads
							i(235453),	-- Blastborne Links
							i(235454),	-- Blastborne Vambraces
						})),
					}),
					filter(NECK_F, {
						n(DELVES_TWW_S1, bubbleDown({ ["timeline"] = { REMOVED_11_1_0_SEASONSTART } }, {
							i(219184),	-- Enkindled Locket
							i(219217),	-- Gold-Thread Choker
						})),
						n(DELVES_TWW_S2, bubbleDown({ ["timeline"] = { ADDED_11_1_0_SEASONSTART, REMOVED_11_2_0_SEASONSTART } }, {
							i(235428),	-- Gobtastic Bling
							i(235429),	-- Moneymaker's Collar
						})),
					}),
					filter(PLATE, {
						n(DELVES_TWW_S1, bubbleDown({ ["timeline"] = { REMOVED_11_1_0_SEASONSTART } }, {
							i(219152),	-- Charmbelt of Hidden Stars
							i(219156),	-- Fists of Hidden Stars
							i(219151),	-- Handguards of Hidden Stars
							i(219154),	-- Legplates of Hidden Stars
							i(219158),	-- Raiment of Hidden Stars
							i(219153),	-- Pauldrons of Hidden Stars
							i(219157),	-- Sollerets of Hidden Stars
							i(219155),	-- Visage of Hidden Stars
						})),
						n(DELVES_TWW_S2, bubbleDown({ ["timeline"] = { ADDED_11_1_0_SEASONSTART, REMOVED_11_2_0_SEASONSTART } }, {
							i(235455),	-- Junkreaver's Breastplate
							i(235456),	-- Junkreaver's Crushers
							i(235457),	-- Junkreaver's Gauntlets
							i(235458),	-- Junkreaver's Scrapgaze
							i(235459),	-- Junkreaver's Legplates
							i(235461),	-- Junkreaver's Shoulderplates
							i(235462),	-- Junkreaver's Girdle
							i(235463),	-- Junkreaver's Coils
						})),
					}),
				}),
				filter(COSMETIC, bubbleDownSelf({ ["timeline"] = { ADDED_11_1_0 } }, {
					i(235616),	-- True Speed Goblin-Thruster
				})),
				filter(TOYS, {
					i(225910),	-- Pileus Delight (TOY!)
				}),
				n(WEAPONS, {
					n(DELVES_TWW_S1, bubbleDown({ ["timeline"] = { REMOVED_11_1_0_SEASONSTART } }, {
						i(219203),	-- Arathi Holy Standard
						i(218126),	-- Befouler's Syringe
						i(219207),	-- Flame-Bearing Crozier
						i(219206),	-- Hand of Piety
						i(219204),	-- Imperial Flarebolt
						i(219202),	-- Lamplighter's Mercy
						i(219208),	-- Pyretic Star
						i(219199),	-- Radiant Steelglaives
						i(218125),	-- Reactive Webbed Escutcheon
						i(219200),	-- Unscathed Rampart
						i(219201),	-- Vessel of Sacred Flame
						i(219209),	-- Worshipper's Poniard
						i(219205),	-- Shooting Starquebus
						i(219210),	-- Sanctifier's Startierce
					})),
					n(DELVES_TWW_S2, bubbleDown({ ["timeline"] = { ADDED_11_1_0_SEASONSTART, REMOVED_11_2_0_SEASONSTART } }, {
						i(218126),	-- Befouler's Syringe
						i(235494),	-- Biker Gang's Spare Tire
						i(235489),	-- Bullet Biter
						i(235490),	-- Clawbacker Halberd
						i(236003, {	-- Fate Weaver
							["description"] = "Fly to Fate Weaver's Spool in Azj-Kahet to perform the ritual, coords 64.2, 74.8",
							["groups"] = {
								i(219941),	-- Fateweaved Mallet
								i(219382),	-- Fateweaved Needle
							},
						}),
						i(235493),	-- Ignited Flare Jar
						i(235491),	-- Immolation Warning
						i(235487),	-- Interest Compounder
						i(235495),	-- Missile Guided Throat Slitter
						i(235485),	-- Oil Gouger
						i(235492),	-- Oscillating Scrapcleaver
						i(235484),	-- Razor-sharp Desk Fan
						i(235488),	-- Rocket Taped to a Screwdriver
						i(235486),	-- Springloaded Kneecap Breaker
						i(235422),	-- Venture Co Seal
					})),
				}),
			},
		})),
		filter(CONSUMABLES, {
			i(227668),	-- Delver's Bounty [Tier 1]
			i(227778),	-- Delver's Bounty [Tier 2]
			i(227779),	-- Delver's Bounty [Tier 3]
			i(227780),	-- Delver's Bounty [Tier 4]
			i(227781),	-- Delver's Bounty [Tier 5]
			i(227782),	-- Delver's Bounty [Tier 6]
			i(227783),	-- Delver's Bounty [Tier 7]
			i(226120),	-- Deployable Battle Supplies
			i(226131),	-- Deployable Wind-Wrangling Spire
			i(233210, {	-- Pungent Putrigill
				["timeline"] = { ADDED_11_1_0 },
			}),
		}),
		n(CURIO, {	-- TODO: Might be that Curio Belongs to Specific Delves... Have to check // Braghe
			-- ["sharedDescription"] = "To collect a Curio, it must be selected on Brann prior to an ATT Force Refresh",
			["g"] = {
				--[[
				-- We could comment these in to give every rank of curio a Source line, but maybe it's not worth it
				n(RANK_ONE, {
					i(225903, {	-- Amorphous Relic [Rank 1]
						["bonusID"] = 11265,
					}),
					i(225897, {	-- Brute Force Idol [Rank 1]
						["bonusID"] = 11235
					}),
					i(225902, {	-- Idol of Final Will [Rank 1]
						["bonusID"] = 11260,
					}),
					i(225898, {	-- Idol of the Earthmother [Rank 1]
						["bonusID"] = 11240,
					}),
					i(225906, {	-- Lifeless Necrotic Relic [Rank 1]
						["bonusID"] = 11280,
					}),
					i(225900, {	-- Light-Touched Idol [Rank 1]
						["bonusID"] = 11250,
					}),
					i(225905, {	-- Olden Seeker Relic [Rank 1]
						["bonusID"] = 11275,
					}),
					i(218129, {	-- Porcelain Arrowhead Idol [Rank 1]
						["bonusID"] = 11230,
					}),
					i(229353, {	-- Rage-Filled Idol [Rank 1]
						["bonusID"] = 12008,
					}),
					i(225907, {	-- Relic of Sentience [Rank 1]
						["bonusID"] = 11285,
					}),
					i(225908, {	-- Relicblood of Zekvir [Rank 1]
						["bonusID"] = 11290,
					}),
					i(225901, {	-- Streamlined Relic [Rank 1]
						["bonusID"] = 11255,
					}),
					i(225904, {	-- Time Lost Relic [Rank 1]
						["bonusID"] = 11270,
					}),
					i(225899, {	-- Unbreakable Iron Idol [Rank 1]
						["bonusID"] = 11245,
					}),
				}),
				n(RANK_TWO, {
					i(225903, {	-- Amorphous Relic [Rank 2]
						["bonusID"] = 11266,
					}),
					i(225897, {	-- Brute Force Idol [Rank 2]
						["bonusID"] = 11236
					}),
					i(225902, {	-- Idol of Final Will [Rank 2]
						["bonusID"] = 11261,
					}),
					i(225898, {	-- Idol of the Earthmother [Rank 2]
						["bonusID"] = 11241,
					}),
					i(225906, {	-- Lifeless Necrotic Relic [Rank 2]
						["bonusID"] = 11281,
					}),
					i(225900, {	-- Light-Touched Idol [Rank 2]
						["bonusID"] = 11251,
					}),
					i(225905, {	-- Olden Seeker Relic [Rank 2]
						["bonusID"] = 11276,
					}),
					i(218129, {	-- Porcelain Arrowhead Idol [Rank 2]
						["bonusID"] = 11231,
					}),
					i(229353, {	-- Rage-Filled Idol [Rank 2]
						["bonusID"] = 12009,
					}),
					i(225907, {	-- Relic of Sentience [Rank 2]
						["bonusID"] = 11286,
					}),
					i(225908, {	-- Relicblood of Zekvir [Rank 2]
						["bonusID"] = 11291,
					}),
					i(225901, {	-- Streamlined Relic [Rank 2]
						["bonusID"] = 11256,
					}),
					i(225904, {	-- Time Lost Relic [Rank 2]
						["bonusID"] = 11271,
					}),
					i(225899, {	-- Unbreakable Iron Idol [Rank 2]
						["bonusID"] = 11246,
					}),
				}),
				n(RANK_THREE, {
					i(225903, {	-- Amorphous Relic [Rank 3]
						["bonusID"] = 11267,
					}),
					i(225897, {	-- Brute Force Idol [Rank 3]
						["bonusID"] = 11237
					}),
					i(225902, {	-- Idol of Final Will [Rank 3]
						["bonusID"] = 11262,
					}),
					i(225898, {	-- Idol of the Earthmother [Rank 3]
						["bonusID"] = 11242,
					}),
					i(225906, {	-- Lifeless Necrotic Relic [Rank 3]
						["bonusID"] = 11282,
					}),
					i(225900, {	-- Light-Touched Idol [Rank 3]
						["bonusID"] = 11252,
					}),
					i(225905, {	-- Olden Seeker Relic [Rank 3]
						["bonusID"] = 11277,
					}),
					i(218129, {	-- Porcelain Arrowhead Idol [Rank 3]
						["bonusID"] = 11232,
					}),
					i(229353, {	-- Rage-Filled Idol [Rank 3]
						["bonusID"] = 12010,
					}),
					i(225907, {	-- Relic of Sentience [Rank 3]
						["bonusID"] = 11287,
					}),
					i(225908, {	-- Relicblood of Zekvir [Rank 3]
						["bonusID"] = 11292,
					}),
					i(225901, {	-- Streamlined Relic [Rank 3]
						["bonusID"] = 11257,
					}),
					i(225904, {	-- Time Lost Relic [Rank 3]
						["bonusID"] = 11272,
					}),
					i(225899, {	-- Unbreakable Iron Idol [Rank 3]
						["bonusID"] = 11247,
					}),
				}),
				--]]
				n(RANK_FOUR, {
					i(225903, {	-- Amorphous Relic [Rank 4]
						["bonusID"] = 11268,
					}),
					i(234014, {	-- Automatic Footbomb Dispenser [Rank 4]
						["bonusID"] = 12160,
						["timeline"] = { ADDED_11_1_0_SEASONSTART },
					}),
					i(230233, {	-- Biofuel Rocket Gear [Rank 4]
						["bonusID"] = 12124,
						["timeline"] = { ADDED_11_1_0_SEASONSTART },
					}),
					i(225897, {	-- Brute Force Idol [Rank 4]
						["bonusID"] = 11238
					}),
					i(230232, {	-- Comically Large Magnet [Rank 4]
						["bonusID"] = 12120,
						["timeline"] = { ADDED_11_1_0_SEASONSTART },
					}),
					i(230227, {	-- Goblomagnetic Bouncing Grenade [Rank 4]
						["bonusID"] = 12148,
						["timeline"] = { ADDED_11_1_0_SEASONSTART },
					}),
					i(225902, {	-- Idol of Final Will [Rank 4]
						["bonusID"] = 11263,
					}),
					i(225898, {	-- Idol of the Earthmother [Rank 4]
						["bonusID"] = 11243,
					}),
					i(230229, {	-- Impact Conversion Matrix [Rank 4]
						["bonusID"] = 12156,
						["timeline"] = { ADDED_11_1_0_SEASONSTART },
					}),
					i(230225, {	-- Kaja'Cola Carrier [Rank 4]
						["bonusID"] = 12116,
						["timeline"] = { ADDED_11_1_0_SEASONSTART },
					}),
					i(230230, {	-- L00T RAID-R [Rank 4]
						["bonusID"] = 12105,
						["timeline"] = { ADDED_11_1_0_SEASONSTART },
					}),
					i(225906, {	-- Lifeless Necrotic Relic [Rank 4]
						["bonusID"] = 11283,
					}),
					i(225900, {	-- Light-Touched Idol [Rank 4]
						["bonusID"] = 11253,
					}),
					i(234015, {	-- Mechasaur EZ-Build Kit [Rank 4]
						["bonusID"] = 12164,
						["timeline"] = { ADDED_11_1_0_SEASONSTART },
					}),
					i(225905, {	-- Olden Seeker Relic [Rank 4]
						["bonusID"] = 11278,
					}),
					i(230950, {	-- Overdrive Pylon [Rank 4]
						["bonusID"] = 12132,
						["timeline"] = { ADDED_11_1_0_SEASONSTART },
					}),
					i(234013, {	-- Pacifist Rig [Rank 4]
						["bonusID"] = 12136,
						["timeline"] = { ADDED_11_1_0_SEASONSTART },
					}),
					i(230234, {	-- Pinged Augment Chip [Rank 4]
						["bonusID"] = 12144,
						["timeline"] = { ADDED_11_1_0_SEASONSTART },
					}),
					i(230228, {	-- Pocket Factory [Rank 4]
						["bonusID"] = 12152,
						["timeline"] = { ADDED_11_1_0_SEASONSTART },
					}),
					i(218129, {	-- Porcelain Arrowhead Idol [Rank 4]
						["bonusID"] = 11233,
					}),
					i(229353, {	-- Rage-Filled Idol [Rank 4]
						["bonusID"] = 12011,
					}),
					i(225907, {	-- Relic of Sentience [Rank 4]
						["bonusID"] = 11288,
					}),
					i(225908, {	-- Relicblood of Zekvir [Rank 4]
						["bonusID"] = 11293,
					}),
					i(230231, {	-- Reverse Engineered Goblin Death Bomb [Rank 4]
						["bonusID"] = 12140,
						["timeline"] = { ADDED_11_1_0_SEASONSTART },
					}),
					i(225901, {	-- Streamlined Relic [Rank 4]
						["bonusID"] = 11258,
					}),
					i(230226, {	-- Three Dimensional Bioprinter [Rank 4]
						["bonusID"] = 12128,
						["timeline"] = { ADDED_11_1_0_SEASONSTART },
					}),
					i(225904, {	-- Time Lost Relic [Rank 4]
						["bonusID"] = 11273,
					}),
					i(225899, {	-- Unbreakable Iron Idol [Rank 4]
						["bonusID"] = 11248,
					}),
				}),
			},
		}),
		filter(MISC, {
			i(228942),	-- Bountiful Coffer
			i(224181),	-- Companion Experience (Tier 1-2)
			i(224411),	-- Companion Experience (Tier 3)
			i(224412),	-- Companion Experience (every tier)
			i(227784, {["timeline"]={ REMOVED_11_1_0_SEASONSTART }}),	-- Delver's Bounty
			i(233071, {["timeline"]={ ADDED_11_1_0_SEASONSTART, REMOVED_11_2_0 },["isWeekly"]=true}),	-- Delver's Bounty (actual item, looted from Jettisoned Pile of Goblin-Bucks)
			i(235628, {["timeline"]={ ADDED_11_1_0_SEASONSTART, REMOVED_11_2_0 }}),	-- Delver's Bounty (probably exist only to display rewards)
			i(222922),	-- Expeditionary Spoils (Tier 1)
			i(222923),	-- Expeditionary Spoils (Tier 2)
			i(225178),	-- Expeditionary Spoils (Tier 3)
			i(222916),	-- Player Experience (Tier 1-2)
			i(222917),	-- Player Experience (Tier 3)
			i(222927),	-- Weathered Coin Coffer
			i(223287),	-- Atomized Salien Slime
			i(227794),	-- Archaic Cipher Key (QI!/QS!)
			i(218121),	-- Candle Light
			i(226132),	-- Deployable Recovery Keg
			i(226110),	-- Elemental Fusion Bomb
			i(226107),	-- Homebrewed Blink Vial
			i(225249),	-- Rattling Bag'o'gold
			i(226109),	-- Squirming Swarm Sac
			--
			i(226002),	-- Expensive-Looking Find (was looted from Sturdy Chest (objectID) 454091)
			i(226003),	-- Snake Oil (was looted from Sturdy Chest (objectID) 454091, 455496)
			i(226001),	-- Pure Gold Stein (was looted from Sturdy Chest (objectID) 455489)
			i(226004),	-- Odlen Text (was looted from Sturdy Chest (objectID) 455495)
			i(226005),	-- Ancient Tool (was looted from Sturdy Chest (objectID) 455914)
			--
			i(234619, {	-- Ultimate Orange O-pocalypse (Curio buff item)
				["timeline"] = { ADDED_11_1_0_SEASONSTART },
			}),
			--
			i(228560),	-- Ancient Curio (QI!/QS!)
			i(228581),	-- Ancient Curio (QI!/QS!)
			i(234329, {	-- Ancient Curio (QS!)
				["timeline"] = { ADDED_11_1_0_SEASONSTART },
			}),
			i(234330, {	-- Ancient Curio (QS!)
				["timeline"] = { ADDED_11_1_0_SEASONSTART },
			}),
			--
			currency(2803),	-- Undercoin
		}),
		filter(RECIPES, {
			i(223085),	-- Design: Fractured Gemstone Locket (RECIPE!)
			i(223139),	-- Formula: Enchant Cloak - Chant of Leeching Fangs (RECIPE!)
			i(224434),	-- Pattern: Dawnthread Lining (RECIPE!)
			i(223101),	-- Pattern: Reinforced Setae Flyers (RECIPE!)
			i(223051),	-- Plans: Artisan Skinning Knife (RECIPE!)
			i(223060),	-- Technique: Patient Alchemist's Mixing Rod (RECIPE!)
		}),
		n(WEAPONS, {
			i(219355),	-- Bedrock Breaker
			i(211041),	-- Brilliant Beacon
			i(211047),	-- Lapidarius Gemcutter
			i(211059),	-- Luminous Lampspire
			i(219351),	-- Mana-Lined Slab Slicer
			i(219354),	-- Mountain Shaper's Greataxe
			i(211048),	-- Pathfinder's Stonecarver
			i(219352),	-- Skypiercing Drillstaff
			i(219356),	-- Torchlit Pickaxe
			i(219353),	-- Trailblazer's Hookshoot
			i(211046),	-- Umbral Artist's Chisel
			i(211040),	-- Unhinged Vault-Hatch
		}),
	})),
	n(HIDDEN_QUESTS, {
		-- Brann Bronzebeard leveling quest
		hqt(77716),	-- Level 2
		hqt(77718),	-- Level 3
		hqt(77719),	-- Level 4
		hqt(77720),	-- Level 5
		hqt(77721),	-- Level 6
		hqt(77722),	-- Level 7
		hqt(77723),	-- Level 8
		hqt(77724),	-- Level 9
		hqt(77727),	-- Level 10
		hqt(77728),	-- Level 11
		hqt(77729),	-- Level 12
		hqt(77730),	-- Level 13
		hqt(77731),	-- Level 14
		hqt(77732),	-- Level 15
		hqt(77733),	-- Level 16
		hqt(77734),	-- Level 17
		hqt(77735),	-- Level 18
		hqt(77736),	-- Level 19
		hqt(77737),	-- Level 20
		hqt(81509),	-- Level 21
		hqt(81508),	-- Level 22
		hqt(81507),	-- Level 23
		hqt(79352),	-- Level 24
		hqt(79351),	-- Level 25
		hqt(84087),	-- Level 26
		hqt(84088),	-- Level 27
		hqt(84089),	-- Level 28
		hqt(84090),	-- Level 29
		hqt(84091),	-- Level 30
		hqt(84092),	-- Level 31
		hqt(84093),	-- Level 32
		hqt(84094),	-- Level 33
		hqt(84095),	-- Level 34
		hqt(84096),	-- Level 35
		hqt(84097),	-- Level 36
		hqt(84098),	-- Level 37
		hqt(84099),	-- Level 38
		hqt(84100),	-- Level 39
		hqt(84101),	-- Level 40
		hqt(84102),	-- Level 41
		hqt(84103),	-- Level 42
		hqt(84104),	-- Level 43
		hqt(84105),	-- Level 44
		hqt(84106),	-- Level 45
		hqt(84107),	-- Level 46
		hqt(84108),	-- Level 47
		hqt(84109),	-- Level 48
		hqt(84110),	-- Level 49
		hqt(83329),	-- Level 50
		hqt(84111),	-- Level 51
		hqt(84112),	-- Level 52
		hqt(84113),	-- Level 53
		hqt(84114),	-- Level 54
		hqt(84115),	-- Level 55
		hqt(84116),	-- Level 56
		hqt(84117),	-- Level 57
		hqt(84118),	-- Level 58
		hqt(84119),	-- Level 59
		hqt(83330),	-- Level 60
		hqt(86974, {["timeline"] = { ADDED_11_1_0_SEASONSTART }}),	-- Level 61
		hqt(86975, {["timeline"] = { ADDED_11_1_0_SEASONSTART }}),	-- Level 62
		hqt(86976, {["timeline"] = { ADDED_11_1_0_SEASONSTART }}),	-- Level 63
		hqt(86977, {["timeline"] = { ADDED_11_1_0_SEASONSTART }}),	-- Level 64
		hqt(86978, {["timeline"] = { ADDED_11_1_0_SEASONSTART }}),	-- Level 65
		hqt(86979, {["timeline"] = { ADDED_11_1_0_SEASONSTART }}),	-- Level 66
		hqt(86980, {["timeline"] = { ADDED_11_1_0_SEASONSTART }}),	-- Level 67
		hqt(86981, {["timeline"] = { ADDED_11_1_0_SEASONSTART }}),	-- Level 68
		hqt(86982, {["timeline"] = { ADDED_11_1_0_SEASONSTART }}),	-- Level 69
		hqt(86983, {["timeline"] = { ADDED_11_1_0_SEASONSTART }}),	-- Level 70
		hqt(86984, {["timeline"] = { ADDED_11_1_0_SEASONSTART }}),	-- Level 71
		hqt(86985, {["timeline"] = { ADDED_11_1_0_SEASONSTART }}),	-- Level 72
		hqt(86986, {["timeline"] = { ADDED_11_1_0_SEASONSTART }}),	-- Level 73
		hqt(86987, {["timeline"] = { ADDED_11_1_0_SEASONSTART }}),	-- Level 74
		hqt(86988, {["timeline"] = { ADDED_11_1_0_SEASONSTART }}),	-- Level 75
		hqt(86989, {["timeline"] = { ADDED_11_1_0_SEASONSTART }}),	-- Level 76
		hqt(86990, {["timeline"] = { ADDED_11_1_0_SEASONSTART }}),	-- Level 77
		hqt(86991, {["timeline"] = { ADDED_11_1_0_SEASONSTART }}),	-- Level 78
		hqt(86992, {["timeline"] = { ADDED_11_1_0_SEASONSTART }}),	-- Level 79
		--hqt(86993, {["timeline"] = { ADDED_11_1_0_SEASONSTART }}),	-- Level 80 Attached on achievement
	}),
	n(QUESTS, {
		q(84370, {	-- The Key to Success
			["provider"] = { "i", 227794 },	-- Archaic Cipher Key
			["isWeekly"] = true,
		}),
		-- Season 1 (probably gonna need to sort out stuff out side of it)
		q(84519, {	-- Ancient Curiosity: Combat
			["provider"] = { "i", 228560 },	-- Ancient Curio (TODO: providers ids could be swapped) (TODO: MIGHT CHANGED ITEMID)
			["maps"] = ALL_REGULAR_DELVES,
			["timeline"] = { REMOVED_11_1_0 },
			["g"] = {
				-- I don't think this is the curio everyone gets from this quest... is it RNG or only this one
				-- that wowhead claims?
				-- i(228580),	-- Brute Force Idol
				-- i(225897, {	-- Brute Force Idol [Rank 1]
				-- 	["bonusID"] = 11235
				-- }),
				i(228984),	-- Unbreakable Iron Idol
			},
		}),
		q(84520, {	-- Ancient Curiosity: Utility
			["provider"] = { "i", 228581 },	-- Ancient Curio (TODO: providers ids could be swapped) (TODO: MIGHT CHANGED ITEMID)
			["maps"] = ALL_REGULAR_DELVES,
			["timeline"] = { REMOVED_11_1_0 },
			["g"] = {
				i(228582),	-- Streamlined Relic
				-- i(225901, {	-- Streamlined Relic [Rank 1] (only tracking Rank 4 curios)
				-- 	["bonusID"] = 11255,
				-- }),
			},
		}),
		q(81514, {	-- Bountiful Delves
			["sourceQuests"] = { 83315 },	-- Preparing for the Unknown
			["provider"] = { "n", 206017 },	-- Brann Bronzebeard
			["coord"] = { 47.4, 44.4, DORNOGAL },
		}),
		q(81510, {	-- Ship It!
			["sourceQuests"] = { 81514 },	-- Bountiful Delves
			["provider"] = { "n", 206017 },	-- Brann Bronzebeard
			["coord"] = { 47.4, 44.4, DORNOGAL },
			["g"] = {
				i(219391),	-- Delver's Dirigible (MOUNT!)
			},
		}),
		q(81593, {	-- Maximum Potential
			["sourceQuests"] = { 81510 },	-- Ship It!
			["provider"] = { "n", 206017 },	-- Brann Bronzebeard
			["coord"] = { 47.4, 44.4, DORNOGAL },
		}),
		q(81595, {	-- Seasonal Start
			["sourceQuests"] = {
				81510,	-- Ship It!
				84365,	-- Something on the Horizon
			},
			["sourceQuestNumRequired"] = 1,
			["provider"] = { "n", 206017 },	-- Brann Bronzebeard
			["coord"] = { 47.4, 44.4, DORNOGAL },
		}),
		q(84224, {	-- To Delves!
			--["sourceQuests"] = { 81510 },	-- Ship It! TODO: wrong, auto pop on fresh (first) 80s on account, as of 11.0.5
			--["provider"] = { "n", xxxxx },	-- Auto-accept?
			["coord"] = { 47.4, 44.4, DORNOGAL },
		}),
		q(81596, {	-- Delve Hunter
			["sourceQuests"] = { 81595 },	-- Seasonal Start
			["provider"] = { "n", 226763 },	-- Naleidea Rivergleam
			["coord"] = { 47.8, 44.5, DORNOGAL },
		}),
		q(83500, {	-- Zekvir, Hand of the Harbinger
			["sourceQuests"] = { 81596 },	-- Delve Hunter
			["provider"] = { "n", 206017 },	-- Brann Bronzebeard
			["coord"] = { 47.4, 44.4, DORNOGAL },
			["g"] = {
				i(225547),	-- Toxic Victory (TOY!)
			},
		}),
		-- Season 2
		q(86461, {	-- Ancient Curiosity: Combat
			["provider"] = { "i", 234330 },	-- Ancient Curio
			["maps"] = ALL_REGULAR_DELVES,	-- s2 delves or all delves?
			["timeline"] = { ADDED_11_1_0_SEASONSTART },
		}),
		q(86462, {	-- Ancient Curiosity: Utility
			["provider"] = { "i", 234329 },	-- Ancient Curio
			["maps"] = ALL_REGULAR_DELVES,	-- s2 delves or all delves?
			["timeline"] = { ADDED_11_1_0_SEASONSTART },
		}),
		q(88947, {	-- Undermined Delves
			--["sourceQuests"] = { xx },	-- ??
			["provider"] = { "n", 206017 },	-- Brann Bronzebeard
			["coord"] = { 47.6, 44.3, DORNOGAL },
			["isBreadcrumb"] = true,
			["timeline"] = { ADDED_11_1_0_SEASONSTART },
		}),
		q(85242, {	-- Seasonal Refresher
			["sourceQuests"] = { 88947 },	-- Undermined Delves
			["provider"] = { "n", 206017 },	-- Brann Bronzebeard
			["coord"] = { 47.4, 44.4, DORNOGAL },
			["timeline"] = { ADDED_11_1_0_SEASONSTART },
			["g"] = {
				i(233281, {	-- Delver's Cosmetic Surprise Bag
					-- it seems like give you as reward any cosmetic from s1 delves that wasn't looted before
				}),
				i(233276),	-- Delver's Starter Kit
			},
		}),
		q(85243, {	-- I Want My Hat Back
			["sourceQuests"] = { 85242 },	-- Seasonal Refresher
			["provider"] = { "n", 206017 },	-- Brann Bronzebeard
			["coord"] = { 47.4, 44.4, DORNOGAL },
			["timeline"] = { ADDED_11_1_0_SEASONSTART },
			["g"] = {
				o(500694, {	-- Nerubian Lord
					i(233025),	-- Giant Pile of Gold (QI!)
					i(233026),	-- Johnny's Share of the Spoils (QI!)
				}),
				--
				ach(41532),	-- I've Got a Flying Machine?
				i(229974),	-- Delver's Gob-Trotter (MOUNT!)
			},
		}),
		q(85244, {	-- Defeating the Underpin
			["sourceQuests"] = { 85243 },	-- I Want My Hat Back
			["provider"] = { "n", 206017 },	-- Brann Bronzebeard
			["coord"] = { 47.4, 44.4, DORNOGAL },
			["timeline"] = { ADDED_11_1_0_SEASONSTART },
			["g"] = {
				i(212170),	-- Brann's Spare Hat (COSMETIC!)
				i(230727),	-- Explosive Victory (TOY!)
			},
		}),
		q(90779, {	-- Cracked Keystone
			["provider"] = { "i", 242919 },	-- Cracked Keystone
			["timeline"] = { ADDED_11_1_5 },	-- TODO: REMOVED_11_2_0?
		}),
	}),
	n(QUESTS, sharedData({
		["provider"] = { "n", 206017 },	-- Brann Bronzebeard
		["coord"] = { 47.4, 44.4, DORNOGAL },
		["weekly"] = true,
	}, {
		q(82746),	-- Delves: Breaking Tough to Loot Stuff
		q(82707),	-- Delves: Earthen Defense
		q(82710),	-- Delves: Empire-ical Exploration
		q(82706),	-- Delves: Khaz Algar Research
		q(82711, {	-- Delves: Lost and Found
			["g"] = {
				i(224159),	-- Brann's Compass (QI!)
				i(224160),	-- Brann's Hat (QI!)
				i(224158),	-- Brann's Letter Opener (QI!)
			},
		}),
		q(82708),	-- Delves: Nerubian Menace
		q(82709, {	-- Delves: Percussive Archaeology
			["g"] = {
				i(224146),	-- Khaz Algar Archaeological Fragments (QI!)
			},
		}),
		q(82712),	-- Delves: Trouble Up and Down Khaz Algar
	})),
	n(RARES, {
		-- TODO: These might not appear in all delves, look into refining these down
		n(236886, {	-- Hovering Menace
			["timeline"] = { ADDED_11_1_0 },
		}),
		n(207482),	-- Invasive Sporecap
		n(236895, {	-- Malfuctioning Pummeler
			["timeline"] = { ADDED_11_1_0 },
		}),
		n(209721),	-- Secret Treasure
		n(228030),	-- Sir Finley Mrgglton
		n(223541),	-- Stolen Loader
		n(236892, {	-- Treasure Crab
			["timeline"] = { ADDED_11_1_0 },
		}),
		n(208728),	-- Treasure Wraith
	}),
	mapped(n(TREASURES, {
		-- Mislaid Curiosities can be found throughout all Delves, random coordinates
		o(455914, {	-- Mislaid Curiosity
			["description"] = "Contains Chunk of Companion Experience tokens.",
			["timeline"] = { REMOVED_11_1_0_SEASONSTART },
			["g"] = {
				-- First versions
				i(228071),	-- Chunk of Companion Experience (Uncommon)
				i(228072),	-- Chunk of Companion Experience (Rare)
				i(228073),	-- Chunk of Companion Experience (Epic)
				-- Second versions
				i(232047),	-- Chunk of Companion Experience (Uncommon)
				i(232046),	-- Chunk of Companion Experience (Rare)
				i(232045),	-- Chunk of Companion Experience (Epic)
			},
		}),
		o(478443, {	-- Mislaid Curiosity
			["description"] = "Contains a 'Chunk of Companion Experience' token.\n\n|cFF40bf40Massively buffed in 11.1, they can now provide up to 18k Brann XP each, depending on the Delves' Level & which experience token you receive.|r",
			["timeline"] = { ADDED_11_1_0 },
			["g"] = {
				-- Brann Experience
				i(235504),	-- Chunk of Companion Experience (Uncommon)
				i(235503),	-- Chunk of Companion Experience (Rare)
				i(235502),	-- Chunk of Companion Experience (Epic)
				-- Miscellaneous
				i(231099),	-- Back-Strapped Missile
				i(233055),	-- Corpse Cleaner
				i(233118),	-- Incontinental Takeout
				i(233205),	-- Go-Go Juice
				i(233062),	-- Pocket Pizza
				i(233061),	-- Rock-in-a-Bottle
			},
		}),
		o(455759, {	-- Hulking Raptorial Claw
			["description"] = "Left behind by Zekvir when he invades a delve.",
			["timeline"] = { REMOVED_11_1_0_SEASONSTART },
			["g"] = {
				i(218126),	-- Befouler's Syringe
				i(219381, {	-- Fate Weaver
					["description"] = "Fly to Fate Weaver's Spool in Azj-Kahet to perform the ritual, coords 64.2, 74.8",
					["groups"] = {
						i(219941),	-- Fateweaved Mallet
						i(219382),	-- Fateweaved Needle
					},
				}),
				i(218125),	-- Reactive Webbed Escutcheon
			},
		}),
		o(506498, {	-- Gilded Stash
			["timeline"] = { ADDED_11_1_0, REMOVED_11_2_0 },
			["g"] = {
				-- gilded undermine crest x7
			},
		}),
		o(507768, {	-- Jettisoned Pile of Goblin-Bucks
			["description"] = "Left behind by Underpin when he is defeated in a delve.",
			["timeline"] = { ADDED_11_1_0_SEASONSTART, REMOVED_11_2_0 },
			["g"] = {
				i(235813),	-- Machine Gob's Iron Grin
				--i(233071), -- Delver's Bounty
			},
		}),
		o(503871, {	-- Nemesis Strongbox (gray)
			["timeline"] = { ADDED_11_1_0 },
			["g"] = {
				-- gold bag
				-- TODO: have other chunk of exp too?
			},
		}),
		o(503868, {	-- Nemesis Strongbox (uncommon)
			["timeline"] = { ADDED_11_1_0 },
			["g"] = {
				-- gold bag, delves reagents
				-- TODO: have other chunk of exp too?
			},
		}),
		o(503869, {	-- Nemesis Strongbox (rare)
			["timeline"] = { ADDED_11_1_0 },
			["g"] = {
				-- gold bag, delves reagents
				-- TODO: have other chunk of exp too?
			},
		}),
		o(503870, {	-- Nemesis Strongbox (epic)
			["timeline"] = { ADDED_11_1_0 },
			["g"] = {
				-- gold bag, delves reagents
				i(235607),	-- Chunk of Companion Experience (epic)
			},
		}),
	})),
	n(VENDORS, {
		n(226250, {	-- Reno Jackson <Delve Treasures>
			["coord"] = { 47.6, 45.0, DORNOGAL },
			["g"] = {
				n(DELVERS_DIRIGIBLE_SCHEMATIC, {
					i(224981, {	-- Delver's Dirigible Schematic: Brown Paint (MM!)
						["cost"] = {{"c", RESONANCE_CRYSTALS, 10}},
					}),
					i(224982, {	-- Delver's Dirigible Schematic: Exhaust (MM!)
						["cost"] = {{"c", RESONANCE_CRYSTALS, 10}},
					}),
					i(224980, {	-- Delver's Dirigible Schematic: Front-Mounted Lantern (MM!)
						["cost"] = {{"c", RESONANCE_CRYSTALS, 10}},
					}),
					i(224960, {	-- Delver's Dirigible Schematic: Lantern Wing (MM!)
						["cost"] = {{"c", RESONANCE_CRYSTALS, 10}},
					}),
					i(224979, {	-- Delver's Dirigible Schematic: Zeppelin (MM!)
						["cost"] = {{"c", RESONANCE_CRYSTALS, 10}},
					}),
				}),
				n(DELVERS_GOBTROTTER_SCHEMATIC, sharedDataSelf({ ["timeline"] = { ADDED_11_1_0_SEASONSTART } }, {
					i(230219, {	-- Delver's Gob-Trotter Schematic: Balloon (MM!)
						["cost"] = {{"c", RESONANCE_CRYSTALS, 10}},
					}),
					i(230217, {	-- Delver's Gob-Trotter Schematic: Flamethrower (MM!)
						["cost"] = {{"c", RESONANCE_CRYSTALS, 10}},
					}),
					i(230220, {	-- Delver's Gob-Trotter Schematic: Green (MM!)
						["cost"] = {{"c", RESONANCE_CRYSTALS, 10}},
					}),
					i(230216, {	-- Delver's Gob-Trotter Schematic: Harpoon (MM!)
						["cost"] = {{"c", RESONANCE_CRYSTALS, 10}},
					}),
					i(230218, {	-- Delver's Gob-Trotter Schematic: Pipes (MM!)
						["cost"] = {{"c", RESONANCE_CRYSTALS, 10}},
					}),
				})),
				filter(TOYS, {
					i(230850, {	-- Delve-O-Bot 7001 (TOY!)
						["cost"] = {{"c", RESONANCE_CRYSTALS, 10}},
						["timeline"] = { ADDED_11_1_0_SEASONSTART },
					}),
					i(223312, {	-- Trusty Hat (TOY!)
						["cost"] = {{"c", RESONANCE_CRYSTALS, 10}},
					}),
				}),
				filter(MISC, {
					i(235608, {	-- Nightfall Sanctum Campsite
						["cost"] = {{"c", RESONANCE_CRYSTALS, 10}},
						["timeline"] = { ADDED_11_1_0_SEASONSTART },
						["g"] = { ws(5) },	-- Cultists' Quay (WS!)
					}),
				}),
				n(ARMOR, {
					filter(BACK_F, {
						i(225414, {	-- Cave Topographer's Drape
							["cost"] = {{"c", RESONANCE_CRYSTALS, 1300}},
						}),
						i(225411, {	-- Secret-Dredger's Cloak
							["cost"] = {{"c", RESONANCE_CRYSTALS, 1300}},
						}),
						i(225413, {	-- Treasure-Seeker's Shawl
							["cost"] = {{"c", RESONANCE_CRYSTALS, 1300}},
						}),
						i(225412, {	-- Torchbearer's Greatcloak
							["cost"] = {{"c", RESONANCE_CRYSTALS, 1300}},
						}),
					}),
					filter(CLOTH, {
						i(225393, {	-- Cave Topographer's Cord
							["cost"] = {{"c", RESONANCE_CRYSTALS, 1300}},
						}),
						i(225390, {	-- Cave Topographer's Cowl
							["cost"] = {{"c", RESONANCE_CRYSTALS, 3250}},
						}),
						i(225394, {	-- Cave Topographer's Cuffs
							["cost"] = {{"c", RESONANCE_CRYSTALS, 1300}},
						}),
						i(225389, {	-- Cave Topographer's Handwraps
							["cost"] = {{"c", RESONANCE_CRYSTALS, 2600}},
						}),
						i(225391, {	-- Cave Topographer's Leggings
							["cost"] = {{"c", RESONANCE_CRYSTALS, 3250}},
						}),
						i(225388, {	-- Cave Topographer's Sandals
							["cost"] = {{"c", RESONANCE_CRYSTALS, 2600}},
						}),
						i(225392, {	-- Cave Topographer's Shoulders
							["cost"] = {{"c", RESONANCE_CRYSTALS, 2600}},
						}),
						i(225387, {	-- Cave Topographer's Vestment
							["cost"] = {{"c", RESONANCE_CRYSTALS, 3250}},
						}),
					}),
					filter(LEATHER, {
						i(225402, {	-- Treasure-Seeker's Bindings
							["cost"] = {{"c", RESONANCE_CRYSTALS, 1300}},
						}),
						i(225396, {	-- Treasure-Seeker's Boots
							["cost"] = {{"c", RESONANCE_CRYSTALS, 2600}},
						}),
						i(225399, {	-- Treasure-Seeker's Breeches
							["cost"] = {{"c", RESONANCE_CRYSTALS, 3250}},
						}),
						i(225400, {	-- Treasure-Seeker's Epaulets
							["cost"] = {{"c", RESONANCE_CRYSTALS, 2600}},
						}),
						i(225397, {	-- Treasure-Seeker's Grips
							["cost"] = {{"c", RESONANCE_CRYSTALS, 2600}},
						}),
						i(225398, {	-- Treasure-Seeker's Helm
							["cost"] = {{"c", RESONANCE_CRYSTALS, 3250}},
						}),
						i(225401, {	-- Treasure-Seeker's Sash
							["cost"] = {{"c", RESONANCE_CRYSTALS, 1300}},
						}),
						i(225395, {	-- Treasure-Seeker's Vest
							["cost"] = {{"c", RESONANCE_CRYSTALS, 3250}},
						}),
					}),
					filter(MAIL, {
						i(225386, {	-- Torchbearer's Bracers
							["cost"] = {{"c", RESONANCE_CRYSTALS, 1300}},
						}),
						i(225379, {	-- Torchbearer's Chainmail
							["cost"] = {{"c", RESONANCE_CRYSTALS, 3250}},
						}),
						i(225380, {	-- Torchbearer's Cinch
							["cost"] = {{"c", RESONANCE_CRYSTALS, 1300}},
						}),
						i(225383, {	-- Torchbearer's Coif
							["cost"] = {{"c", RESONANCE_CRYSTALS, 3250}},
						}),
						i(225384, {	-- Torchbearer's Greaves
							["cost"] = {{"c", RESONANCE_CRYSTALS, 3250}},
						}),
						i(225382, {	-- Torchbearer's Grips
							["cost"] = {{"c", RESONANCE_CRYSTALS, 2600}},
						}),
						i(225385, {	-- Torchbearer's Shoulderguards
							["cost"] = {{"c", RESONANCE_CRYSTALS, 2600}},
						}),
						i(225381, {	-- Torchbearer's Striders
							["cost"] = {{"c", RESONANCE_CRYSTALS, 2600}},
						}),
					}),
					filter(PLATE, {
						i(225410, {	-- Secret-Dredger's Armplates
							["cost"] = {{"c", RESONANCE_CRYSTALS, 1300}},
						}),
						i(225403, {	-- Secret-Dredger's Breastplate
							["cost"] = {{"c", RESONANCE_CRYSTALS, 3250}},
						}),
						i(225405, {	-- Secret-Dredger's Gauntlets
							["cost"] = {{"c", RESONANCE_CRYSTALS, 2600}},
						}),
						i(225409, {	-- Secret-Dredger's Girdle
							["cost"] = {{"c", RESONANCE_CRYSTALS, 1300}},
						}),
						i(225406, {	-- Secret-Dredger's Helm
							["cost"] = {{"c", RESONANCE_CRYSTALS, 3250}},
						}),
						i(225407, {	-- Secret-Dredger's Legguards
							["cost"] = {{"c", RESONANCE_CRYSTALS, 3250}},
						}),
						i(225408, {	-- Secret-Dredger's Mantle
							["cost"] = {{"c", RESONANCE_CRYSTALS, 2600}},
						}),
						i(225404, {	-- Secret-Dredger's Sabatons
							["cost"] = {{"c", RESONANCE_CRYSTALS, 2600}},
						}),
					}),
				}),
				n(WEAPONS, {
					i(225500, {	-- Bedrock Breaker
						["cost"] = {{"c", RESONANCE_CRYSTALS, 3500}},
					}),
					i(225507, {	-- Brilliant Beacon
						["cost"] = {{"c", RESONANCE_CRYSTALS, 3500}},
					}),
					i(225499, {	-- Lapidarius Gemcutter
						["cost"] = {{"c", RESONANCE_CRYSTALS, 3500}},
					}),
					i(225505, {	-- Luminous Lampspire
						["cost"] = {{"c", RESONANCE_CRYSTALS, 3500}},
					}),
					i(225506, {	-- Mana-Lined Slab Slicer
						["cost"] = {{"c", RESONANCE_CRYSTALS, 3500}},
					}),
					i(225502, {	-- Mountain Shaper's Greataxe
						["cost"] = {{"c", RESONANCE_CRYSTALS, 3500}},
					}),
					i(225501, {	-- Pathfinder's Stonecarver
						["cost"] = {{"c", RESONANCE_CRYSTALS, 3500}},
					}),
					i(225504, {	-- Skypiercing Drillstaff
						["cost"] = {{"c", RESONANCE_CRYSTALS, 3500}},
					}),
					i(225497, {	-- Torchlit Pickaxe
						["cost"] = {{"c", RESONANCE_CRYSTALS, 3500}},
					}),
					i(225503, {	-- Trailblazer's Hookshoot
						["cost"] = {{"c", RESONANCE_CRYSTALS, 3500}},
					}),
					i(225498, {	-- Umbral Artist's Chisel
						["cost"] = {{"c", RESONANCE_CRYSTALS, 3500}},
					}),
					i(225508, {	-- Unhinged Vault-Hatch
						["cost"] = {{"c", RESONANCE_CRYSTALS, 3500}},
					}),
				}),
			},
		}),
		n(208070, {	-- Sir Finley Mrgglton <Delve Treasures>
			["coord"] = { 47.6, 43.6, DORNOGAL },
			["g"] = {
				n(DELVERS_DIRIGIBLE_SCHEMATIC, {
					i(235685, {	-- Delver's Dirigible Schematic: Drill (MM!)
						["cost"] = {{"c", UNDERCOIN, 2500}},
						["timeline"] = { ADDED_11_1_0_SEASONSTART },
					}),
					i(224771, {	-- Delver's Dirigible Schematic: Empennage (MM!)
						["cost"] = {{"c", UNDERCOIN, 1000}},
					}),
					i(224770, {	-- Delver's Dirigible Schematic: Front-Mounted Propeller (MM!)
						["cost"] = {{"c", UNDERCOIN, 2500}},
					}),
					i(235684, {	-- Delver's Dirigible Schematic: Glider (MM!)
						["cost"] = {{"c", UNDERCOIN, 2500}},
						["timeline"] = { ADDED_11_1_0_SEASONSTART },
					}),
					i(224769, {	-- Delver's Dirigible Schematic: Rotor Blades (MM!)
						["cost"] = {{"c", UNDERCOIN, 3000}},
					}),
					i(235687, {	-- Delver's Dirigible Schematic: Spoiler (MM!)
						["cost"] = {{"c", UNDERCOIN, 2500}},
						["timeline"] = { ADDED_11_1_0_SEASONSTART },
					}),
					i(235683, {	-- Delver's Dirigible Schematic: Turbine (MM!)
						["cost"] = {{"c", UNDERCOIN, 2500}},
						["timeline"] = { ADDED_11_1_0_SEASONSTART },
					}),
					i(224768, {	-- Delver's Dirigible Schematic: Wing-Mounted Propeller (MM!)
						["cost"] = {{"c", UNDERCOIN, 2500}},
					}),
					i(235686, {	-- Delver's Dirigible Schematic: White Paint (MM!)
						["cost"] = {{"c", UNDERCOIN, 2500}},
						["timeline"] = { ADDED_11_1_0_SEASONSTART },
					}),
				}),
				filter(BATTLE_PETS, {
					i(222974, {	-- Sir Shady Mrrgglton Junior (PET!)
						["cost"] = {{"c", UNDERCOIN, 10000}},
					}),
				}),
				filter(COSMETIC, {
					i(212166, {	-- Coral Nautic Helm
						["cost"] = {{"c", UNDERCOIN, 2500}},
						["timeline"] = { ADDED_11_0_5 },
					}),
					iensemble(234388, {	-- Arsenal: Hallowfall Weaponry
						["cost"] = {{"c", UNDERCOIN, 5000}},
						["timeline"] = { ADDED_11_1_0_SEASONSTART },
					}),
					iensemble(234385, {	-- Ensemble: Aegis Of Hidden Stars
						["cost"] = {{"c", UNDERCOIN, 5000}},
						["timeline"] = { ADDED_11_1_0_SEASONSTART },
					}),
					iensemble(234384, {	-- Ensemble: Chains Of The Stygian Sea
						["cost"] = {{"c", UNDERCOIN, 5000}},
						["timeline"] = { ADDED_11_1_0_SEASONSTART },
					}),
					iensemble(234383, {	-- Ensemble: Myconic Shell
						["cost"] = {{"c", UNDERCOIN, 5000}},
						["timeline"] = { ADDED_11_1_0_SEASONSTART },
					}),
					iensemble(234382, {	-- Ensemble: Unkindled Waxweave Panoply
						["cost"] = {{"c", UNDERCOIN, 5000}},
						["timeline"] = { ADDED_11_1_0_SEASONSTART },
					}),
					i(235617, {	-- Lucky Goblin's Strapped Rockets (COSMETIC!)
						["cost"] = {{"c", RESONANCE_CRYSTALS, 4000}},
						["timeline"] = { ADDED_11_1_0_SEASONSTART },
					}),
					i(212169, {	-- Mint-Scented Candle Hat
						["cost"] = {{"c", UNDERCOIN, 2500}},
						["timeline"] = { ADDED_11_0_5 },
					}),
					i(212163, {	-- Soporific Shroom Cap
						["cost"] = {{"c", UNDERCOIN, 2500}},
						["timeline"] = { ADDED_11_0_5 },
					}),
				}),
				filter(MISC, {
					i(233792, {	-- Delver's Disguise
						["cost"] = {{"c", UNDERCOIN, 500}},
						["timeline"] = { ADDED_11_1_0_SEASONSTART },
					}),
					i(226258, {	-- Delver's Pouch of Reagents
						["cost"] = {{"c", UNDERCOIN, 1500}},
					}),
					i(226259, {	-- Delver's Pouch of Resonance Crystals
						["cost"] = {{"c", UNDERCOIN, 2000}},
						-- Blizzard added the same note on the item.
						-- #if BEFORE 11.1.0
						["description"] = "Contains 250 Resonance Crystals.",
						-- #endif
						-- Listening 500+ Items is excessive bloat, especially since you get around 150 Undercoins per Delve
						-- Even if you have all items, which takes ages, its probably better to keep them for future Delve Seasons -Goldenshacal 24th Sep 2024
						--["g"] = {
						--	currency(RESONANCE_CRYSTALS),
						--},
					}),
					i(224172, {	-- Restored Coffer Key
						["cost"] = {{"c", UNDERCOIN, 1000}},
					}),
					i(232493, {	-- Restored Coffer Key
						["cost"] = {{"c", UNDERCOIN, 1000}},
					}),
					i(232494, {	-- Restored Coffer Key
						["cost"] = {{"c", UNDERCOIN, 1000}},
					}),
					i(232495, {	-- Restored Coffer Key
						["cost"] = {{"c", UNDERCOIN, 1000}},
					}),
					i(232496, {	-- Restored Coffer Key
						["cost"] = {{"c", UNDERCOIN, 2000}},
					}),
					i(232497, {	-- Restored Coffer Key
						["cost"] = {{"c", UNDERCOIN, 2000}},
					}),
					i(232498, {	-- Restored Coffer Key
						["cost"] = {{"c", UNDERCOIN, 2000}},
					}),
					i(235531, {	-- Restored Coffer Key
						["cost"] = {{"c", UNDERCOIN, 2000}},
						["timeline"] = { ADDED_11_1_0_SEASONSTART },
					}),
					i(233555, {	-- Restored Coffer Key
						["cost"] = {{"c", UNDERCOIN, 2000}},
						["timeline"] = { ADDED_11_1_0_SEASONSTART },
					}),
					i(233186, {	-- Wave Scrambler 2000
						["cost"] = {{"c", UNDERCOIN, 1500}},
						["timeline"] = { ADDED_11_1_0_SEASONSTART },
					}),
				}),
				filter(TOYS, {
					i(211931, {	-- Abyss Caller Horn (TOY!)
						["cost"] = {{"c", UNDERCOIN, 500}},
					}),
					i(228413, {	-- Lampyridae Lure (TOY!)
						["cost"] = {{"c", UNDERCOIN, 500}},
					}),
					i(225910, {	-- Pileus Delight (TOY!)
						["cost"] = {{"c", UNDERCOIN, 500}},
					}),
					i(230924, {	-- Spotlight Materializer 1000 (TOY!)
						["cost"] = {{"c", UNDERCOIN, 500}},
						["timeline"] = { ADDED_11_1_0_SEASONSTART },
					}),
					i(231064, {	-- Throwaway Gangster Disguise (TOY!)
						["cost"] = {{"c", UNDERCOIN, 2500}},
						["timeline"] = { ADDED_11_1_0_SEASONSTART },
					}),
				}),
				n(ARMOR, {
					filter(BACK_F, {
						i(211005, {	-- Cave Topographer's Drape
							["cost"] = {{"c", UNDERCOIN, 500}},
						}),
						i(211006, {	-- Secret-Dredger's Cloak
							["cost"] = {{"c", UNDERCOIN, 500}},
						}),
						i(211007, {	-- Torchbearer's Greatcloak
							["cost"] = {{"c", UNDERCOIN, 500}},
						}),
						i(225065, {	-- Torchbearer's Haversack
							["cost"] = {{"c", UNDERCOIN, 2500}},
							["timeline"] = { ADDED_11_0_5 },
						}),
						i(211062, {	-- Treasure-Seeker's Shawl
							["cost"] = {{"c", UNDERCOIN, 500}},
						}),
					}),
					filter(CLOTH, bubbleDown({ ["timeline"] = { ADDED_11_1_0 } }, {
						i(211013, {	-- Cave Topographer's Cord
							["cost"] = {{"c", UNDERCOIN, 625}},
						}),
						i(211011, {	-- Cave Topographer's Cowl
							["cost"] = {{"c", UNDERCOIN, 875}},
						}),
						i(211014, {	-- Cave Topographer's Cuffs
							["cost"] = {{"c", UNDERCOIN, 625}},
						}),
						i(211010, {	-- Cave Topographer's Handwraps
							["cost"] = {{"c", UNDERCOIN, 750}},
						}),
						i(211012, {	-- Cave Topographer's Leggings
							["cost"] = {{"c", UNDERCOIN, 875}},
						}),
						i(211009, {	-- Cave Topographer's Sandals
							["cost"] = {{"c", UNDERCOIN, 750}},
						}),
						i(211039, {	-- Cave Topographer's Shoulders
							["cost"] = {{"c", UNDERCOIN, 750}},
						}),
						i(211008, {	-- Cave Topographer's Vestment
							["cost"] = {{"c", UNDERCOIN, 875}},
						}),
					})),
					filter(FINGER_F, {
						i(211051, {	-- Loop of Vestigial Power
							["cost"] = {{"c", UNDERCOIN, 500}},
						}),
						i(211052, {	-- Olden Signet
							["cost"] = {{"c", UNDERCOIN, 500}},
						}),
						i(211061, {	-- Unearthed Relic Band
							["cost"] = {{"c", UNDERCOIN, 500}},
						}),
					}),
					filter(LEATHER, bubbleDown({ ["timeline"] = { ADDED_11_1_0 } }, {
						i(211020, {	-- Treasure-Seeker's Bindings
							["cost"] = {{"c", UNDERCOIN, 625}},
						}),
						i(211015, {	-- Treasure-Seeker's Boots
							["cost"] = {{"c", UNDERCOIN, 750}},
						}),
						i(211018, {	-- Treasure-Seeker's Breeches
							["cost"] = {{"c", UNDERCOIN, 875}},
						}),
						i(211038, {	-- Treasure-Seeker's Epaulets
							["cost"] = {{"c", UNDERCOIN, 750}},
						}),
						i(211016, {	-- Treasure-Seeker's Grips
							["cost"] = {{"c", UNDERCOIN, 750}},
						}),
						i(211017, {	-- Treasure-Seeker's Helm
							["cost"] = {{"c", UNDERCOIN, 875}},
						}),
						i(211019, {	-- Treasure-Seeker's Sash
							["cost"] = {{"c", UNDERCOIN, 625}},
						}),
						i(211037, {	-- Treasure-Seeker's Vest
							["cost"] = {{"c", UNDERCOIN, 875}},
						}),
					})),
					filter(MAIL, bubbleDown({ ["timeline"] = { ADDED_11_1_0 } }, {
						i(211028, {	-- Torchbearer's Bracers
							["cost"] = {{"c", UNDERCOIN, 625}},
						}),
						i(211021, {	-- Torchbearer's Chainmail
							["cost"] = {{"c", UNDERCOIN, 875}},
						}),
						i(211027, {	-- Torchbearer's Cinch
							["cost"] = {{"c", UNDERCOIN, 625}},
						}),
						i(211024, {	-- Torchbearer's Coif
							["cost"] = {{"c", UNDERCOIN, 875}},
						}),
						i(211025, {	-- Torchbearer's Greaves
							["cost"] = {{"c", UNDERCOIN, 875}},
						}),
						i(211023, {	-- Torchbearer's Grips
							["cost"] = {{"c", UNDERCOIN, 750}},
						}),
						i(211026, {	-- Torchbearer's Shoulderguards
							["cost"] = {{"c", UNDERCOIN, 750}},
						}),
						i(211022, {	-- Torchbearer's Striders
							["cost"] = {{"c", UNDERCOIN, 750}},
						}),
					})),
					filter(NECK_F, {
						i(211063, {	-- Long-Lost Choker
							["cost"] = {{"c", UNDERCOIN, 500}},
						}),
					}),
					filter(PLATE, bubbleDown({ ["timeline"] = { ADDED_11_1_0 } }, {
						i(211036, {	-- Secret-Dredger's Armplates
							["cost"] = {{"c", UNDERCOIN, 625}},
						}),
						i(211030, {	-- Secret-Dredger's Breastplate
							["cost"] = {{"c", UNDERCOIN, 875}},
						}),
						i(211032, {	-- Secret-Dredger's Gauntlets
							["cost"] = {{"c", UNDERCOIN, 750}},
						}),
						i(211035, {	-- Secret-Dredger's Girdle
							["cost"] = {{"c", UNDERCOIN, 625}},
						}),
						i(211029, {	-- Secret-Dredger's Helm
							["cost"] = {{"c", UNDERCOIN, 875}},
						}),
						i(211033, {	-- Secret-Dredger's Legguards
							["cost"] = {{"c", UNDERCOIN, 875}},
						}),
						i(211034, {	-- Secret-Dredger's Mantle
							["cost"] = {{"c", UNDERCOIN, 750}},
						}),
						i(211031, {	-- Secret-Dredger's Sabatons
							["cost"] = {{"c", UNDERCOIN, 750}},
						}),
					})),
					i(221502, {	-- Adventurer's Warbound Battlegear Drop
						["cost"] = {{"c", UNDERCOIN, 5000}},
						["timeline"] = { REMOVED_11_1_0_SEASONSTART },
					}),
					i(224814, {	-- Adventurer's Warbound Boots
						["cost"] = {{"c", UNDERCOIN, 750}},
						["timeline"] = { REMOVED_11_1_0_SEASONSTART },
					}),
					i(224845, {	-- Adventurer's Warbound Chestpiece
						["cost"] = {{"c", UNDERCOIN, 875}},
						["timeline"] = { REMOVED_11_1_0_SEASONSTART },
					}),
					i(224844, {	-- Adventurer's Warbound Gloves
						["cost"] = {{"c", UNDERCOIN, 750}},
						["timeline"] = { REMOVED_11_1_0_SEASONSTART },
					}),
					i(224843, {	-- Adventurer's Warbound Headpiece
						["cost"] = {{"c", UNDERCOIN, 875}},
						["timeline"] = { REMOVED_11_1_0_SEASONSTART },
					}),
					i(224842, {	-- Adventurer's Warbound Legs
						["cost"] = {{"c", UNDERCOIN, 875}},
						["timeline"] = { REMOVED_11_1_0_SEASONSTART },
					}),
					i(224841, {	-- Adventurer's Warbound Shoulders
						["cost"] = {{"c", UNDERCOIN, 750}},
						["timeline"] = { REMOVED_11_1_0_SEASONSTART },
					}),
					i(224840, {	-- Adventurer's Warbound Waist
						["cost"] = {{"c", UNDERCOIN, 625}},
						["timeline"] = { REMOVED_11_1_0_SEASONSTART },
					}),
					i(224839, {	-- Adventurer's Warbound Wrists
						["cost"] = {{"c", UNDERCOIN, 625}},
						["timeline"] = { REMOVED_11_1_0_SEASONSTART },
					}),
				}),
				n(WEAPONS, {
					i(219355, {	-- Bedrock Breaker
						["cost"] = {{"c", UNDERCOIN, 1250}},
					}),
					i(211041, {	-- Brilliant Beacon
						["cost"] = {{"c", UNDERCOIN, 1250}},
					}),
					i(211047, {	-- Lapidarius Gemcutter
						["cost"] = {{"c", UNDERCOIN, 1250}},
					}),
					i(211059, {	-- Luminous Lampspire
						["cost"] = {{"c", UNDERCOIN, 2500}},
					}),
					i(219351, {	-- Mana-Lined Slab Slicer
						["cost"] = {{"c", UNDERCOIN, 2500}},
					}),
					i(219354, {	-- Mountain Shaper's Greataxe
						["cost"] = {{"c", UNDERCOIN, 2500}},
					}),
					i(211048, {	-- Pathfinder's Stonecarver
						["cost"] = {{"c", UNDERCOIN, 1250}},
					}),
					i(219352, {	-- Skypiercing Drillstaff
						["cost"] = {{"c", UNDERCOIN, 2500}},
					}),
					i(219356, {	-- Torchlit Pickaxe
						["cost"] = {{"c", UNDERCOIN, 1250}},
					}),
					i(219353, {	-- Trailblazer's Hookshoot
						["cost"] = {{"c", UNDERCOIN, 2500}},
					}),
					i(211046, {	-- Umbral Artist's Chisel
						["cost"] = {{"c", UNDERCOIN, 1250}},
					}),
					i(211040, {	-- Unhinged Vault-Hatch
						["cost"] = {{"c", UNDERCOIN, 1250}},
					}),
				}),
			},
		}),
	}),
	mapped(n(ZONE_DROPS, {
		i(225692),	-- Glowglow Cap (sturdy chest)
		i(236668),	-- C.H.E.T.T. Card
	})),
	m(EARTHCRAWL_MINES, {
		["icon"] = [[~_.asset("Delves_Nerubian")]],
		["coord"] = { 38.6, 73.9, ISLE_OF_DORN },
		["g"] = {
			n(ACHIEVEMENTS, {
				ach(40806),	-- Earthcrawl Mines Discoveries
				ach(40527, {	-- Earthcrawl Mines Stories
					crit(68758),	-- Kidnapped Earthen
					crit(68759),	-- Precious Ores
					crit(68760),	-- Fiery Grounds
					crit(102963, { -- Looking for Treasure
						["timeline"] = { ADDED_11_1_0 },
					}),
					crit(102964, { -- Bugs and Grubs
						["timeline"] = { ADDED_11_1_0 },
					}),
				}),
			}),
			n(DELVE_COMPLETION, {
				n(TREASURES, {
					filter(COSMETIC, {
						i(212172),	-- Ajul'Nerub Raptorial Spine
						i(211801),	-- Poisonous Shroom Cap
						i(225067),	-- Shadowlit Haversack
						i(212167),	-- Taken Candle
						i(225066),	-- Trailblazer's Haversack
					}),
				}),
			}),
			filter(MISC, {
				i(213000),	-- Holy Flamethrower Torch (QI!)
				i(213085, {	-- Lost Treasure (QI!)
					["timeline"] = { ADDED_11_1_0 }
				}),
				i(212868),	-- Precious Ore (QI!)
				i(226222),	-- Webbed Hookshot (QI!)
			}),
			n(QUESTS, {
				q(85648, {	-- Delver's Call: Earthcrawl Mines
					["providers"] = {
						{ "o", 455716 },	-- DELVER'S CALL
						{ "o", 487805 },	-- DELVER'S CALL: Earthcrawl Mines
					},
					["coords"] = {
						{ 55.3, 55.9, ISLE_OF_DORN },
						{ 44.7, 12.0, EARTHCRAWL_MINES },
					},
				}),
			}),
			n(TREASURES, {
				o(454090, {	-- Sturdy Chest
					["coord"] = { 45.2, 14.7, EARTHCRAWL_MINES },
					["questID"] = 83440,
				}),
				o(454091, {	-- Sturdy Chest
					["coord"] = { 43.5, 27.1, EARTHCRAWL_MINES },
					["questID"] = 83438,
				}),
				o(454094, {	-- Sturdy Chest
					["coord"] = { 36.3, 33.1, EARTHCRAWL_MINES },
					["questID"] = 83441,
				}),
				o(454049, {	-- Sturdy Chest
					["coord"] = { 32.8, 40.0, EARTHCRAWL_MINES },
					["questID"] = 83451,
				}),
				o(454092, {	-- Sturdy Chest
					["coord"] = { 53.1, 82.1, EARTHCRAWL_MINES },
					["questID"] = 83439,
				}),
			}),
			n(ZONE_DROPS, {
				i(224025),	-- Crackling Shard
			}),
		},
	}),
	m(EXCAVATION_SITE_9, bubbleDownSelf({ ["timeline"] = { ADDED_11_1_0 } }, {
		--["icon"] = [[~_.asset("Delves_Nerubian")]],
		["coord"] = { 81.0, 98.2, THE_RINGING_DEEPS },
		["g"] = {
			n(ACHIEVEMENTS, {
				ach(41100),	-- Excavation Site 9 Discoveries
				ach(41098, {	-- Excavation Site 9 Stories
					crit(70985),	-- Lost Excavators
					crit(70986),	-- Black Blood Profits
					crit(70987),	-- Rowdy Rifts
				}),
			}),
			n(DELVE_COMPLETION, {
				n(TREASURES, {
					filter(COSMETIC, {
						i(212168),	-- Cinderbee Wax Candle Hat
						i(211801),	-- Poisonous Shroom Cap
						i(212164),	-- Shallow Nautic Helm
					}),
				}),
			}),
			n(TREASURES, {
				o(503011, {	-- Sturdy Chest
					["coord"] = { 57.0, 46.8, EXCAVATION_SITE_9 },
					["questID"] = 86345,
				}),
				o(503012, {	-- Sturdy Chest
					["coord"] = { 33.5, 59.2, EXCAVATION_SITE_9 },
					["questID"] = 86346,
				}),
				o(502995, {	-- Sturdy Chest
					["coord"] = { 73.4, 39.6, EXCAVATION_SITE_9 },
					["questID"] = 86343,
				}),
				o(503013, {	-- Sturdy Chest
					["coord"] = { 50.8, 61.3, EXCAVATION_SITE_9 },
					["questID"] = 86347,
				}),
			}),
			filter(MISC, {
				o(500583, {	-- Box of Lightly Profitable Sludge
					i(233008),	-- Box of Lightly Profitable Sludge
				}),
				o(500581, {	-- Container of Highly Profitable Sludge
					i(233006),	-- Container of Highly Profitable Sludge
				}),
				o(500582, {	-- Crate of Somewhat Profitable Sludge
					i(233007),	-- Crate of Somewhat Profitable Sludge
				}),
			}),
		},
	})),
	m(FUNGAL_FOLLY, {
		["icon"] = [[~_.asset("Delves_Fungarian")]],
		["coord"] = { 51.9, 65.5, ISLE_OF_DORN },
		["g"] = {
			n(ACHIEVEMENTS, {
				ach(40803),	-- Fungal Folly Discoveries
				ach(40525, {	-- Fungal Folly Stories
					crit(68752),	-- Lost Miners
					crit(68753),	-- Spreading Decay
					crit(68754),	-- Explorer's Competition
					crit(102965, {	-- Oversparked Operation
						["timeline"] = { ADDED_11_1_0 },
					}),
				}),
			}),
			n(DELVE_COMPLETION, {
				n(TREASURES, {
					filter(COSMETIC, {
						i(212172),	-- Ajul'Nerub Raptorial Spine
						i(212162),	-- Bitter Shroom Cap
						i(212168),	-- Cinderbee Wax Candle Hat
						i(211801),	-- Poisonous Shroom Cap
						i(212164),	-- Shallow Nautic Helm
						i(212163),	-- Soporific Shroom Cap
					}),
				}),
			}),
			filter(MISC, {
				o(409302, {	-- Dispersal Crystal
					["coord"] = { 63, 54.3, FUNGAL_FOLLY },
					["g"] = {
						i(209788),	-- Dispersion Crystal (QI!)
					},
				}),
				i(210017),	-- Fungal Fish (QI!)
			}),
			n(QUESTS, {
				q(83758, {	-- Delver's Call: Fungal Folly
					["providers"] = {
						{ "o", 455716 },	-- DELVER'S CALL
						{ "o", 485669 },	-- DELVER'S CALL: Fungal Folly
					},
					["coords"] = {
						{ 55.3, 55.9, ISLE_OF_DORN },
						{ 61.5, 80.5, FUNGAL_FOLLY },
					},
				}),
			}),
			n(TREASURES, {
				o(455516, {	-- Sturdy Chest
					["coord"] = { 32.7, 74.2, FUNGAL_FOLLY },
					["questID"] = 83671,
				}),
				o(455495, {	-- Sturdy Chest
					["coord"] = { 34.5, 65.8, FUNGAL_FOLLY },
					["questID"] = 83689,
				}),
				o(455527, {	-- Sturdy Chest
					["coord"] = { 58.7, 46.8, FUNGAL_FOLLY },
					["questID"] = 83702,
				}),
				o(454093, {	-- Sturdy Chest
					["coord"] = { 49.6, 35.7, FUNGAL_FOLLY },
					["questID"] = 83452,
					["g"] = {
						i(225556),	-- Ancient Construct (TOY!) -- confirmed 2/2
					},
				}),
				o(455496, {	-- Sturdy Chest
					["description"] = "Jumping Mushroom close by",
					["coord"] = { 53.5, 41.7, FUNGAL_FOLLY },
					["questID"] = 83690,
				}),
			}),
			n(ZONE_DROPS, {
				i(224025),	-- Crackling Shard
			}),
		},
	}),
	m(KRIEGVALS_REST, {
		["icon"] = [[~_.asset("Delves_Kobold")]],
		["coord"] = { 62.1, 42.7, ISLE_OF_DORN },
		["g"] = {
			n(ACHIEVEMENTS, {
				ach(40807),	-- Kriegval's Rest Discoveries
				ach(40526, {	-- Kriegval's Rest Stories
					crit(68755),	-- Lost Keepsakes
					crit(68756),	-- Swarming Kobolds
					crit(68757),	-- Dagran's Day Out
					crit(102967, {	-- Corrupted Candles
						["timeline"] = { ADDED_11_1_0 },
					}),
				}),
			}),
			n(DELVE_COMPLETION, {
				n(TREASURES, {
					filter(BATTLE_PETS, {
						i(221496),	-- Wriggle (PET!)
					}),
					filter(COSMETIC, {
						i(212168),	-- Cinderbee Wax Candle Hat
						i(212169),	-- Mint-Scented Candle Hat
						i(212167),	-- Taken Candle
						i(225066),	-- Trailblazer's Haversack
					}),
				}),
			}),
			filter(MISC, {
				i(210970),	-- Crumbled Keepsake (QI!)
				i(210981),	-- Kriegval's Helm (QI!)
				i(211209),	-- Suspicious Candle (QI!)
			}),
			n(QUESTS, {
				q(83759, {	-- Delver's Call: Kriegval's Rest
					["providers"] = {
						{ "o", 455716 },	-- DELVER'S CALL
						{ "o", 455713 },	-- DELVER'S CALL: Kriegval's Rest
					},
					["coords"] = {
						{ 55.3, 55.9, ISLE_OF_DORN },
						{ 35.6, 27.1, KRIEGVALS_REST },
					},
				}),
			}),
			n(TREASURES, {
				o(455510, {	-- Sturdy Chest
					["coord"] = { 46.2, 19.8, KRIEGVALS_REST },
					["questID"] = 83665,
				}),
				o(455524, {	-- Sturdy Chest
					["coord"] = { 62.3, 52.9, KRIEGVALS_REST },
					["questID"] = 83698,
				}),
				o(455511, {	-- Sturdy Chest
					["coord"] = { 69.9, 85.1, KRIEGVALS_REST },
					["questID"] = 83666,
				}),
				o(455489, {	-- Sturdy Chest
					["coord"] = { 74.3, 70.2, KRIEGVALS_REST },
					["questID"] = 83683,
				}),
			}),
			n(ZONE_DROPS, {
				i(224025),	-- Crackling Shard
			}),
		},
	}),
	m(MYCOMANCER_CAVERN, {
		["icon"] = [[~_.asset("Delves_Fungarian")]],
		["coord"] = { 71.1, 31.1, HALLOWFALL },
		["g"] = {
			n(ACHIEVEMENTS, {
				ach(40808),	-- Mycomancer Cavern Discoveries
				ach(40531, {	-- Mycomancer Cavern Stories
					crit(68770),	-- Missing Pigs
					crit(68771),	-- The Great Scavenger Hunt
					crit(68772),	-- Mushroom Morsel
				}),
			}),
			n(DELVE_COMPLETION, {
				n(TREASURES, {
					filter(COSMETIC, {
						i(212162),	-- Bitter Shroom Cap
						i(212165),	-- Deep Nautic Helm
						i(211801),	-- Poisonous Shroom Cap
						i(212164),	-- Shallow Nautic Helm
						i(212163),	-- Soporific Shroom Cap
					}),
				}),
			}),
			filter(MISC, {
				i(218002),	-- Priceless Pumpkin (QI!)
				i(217387),	-- Princess Pumpkin (QI!)
				i(218000),	-- Sack of Spices (QI!)
				i(217999),	-- Tasty Mussel (QI!)
			}),
			n(QUESTS, {
				q(83769, {	-- Delver's Call: Mycomancer Cavern
					["provider"] = { "o", 455690 },	-- Delver's Call: Mycomancer Cavern
					["coords"] = {
						{ 68.9, 44.4, HALLOWFALL },
						{ 19.5, 36.7, MYCOMANCER_CAVERN },
					},
				}),
			}),
			n(TREASURES, {
				o(456581, {	-- Egg Clutch
					["minReputation"] = { FACTION_HALLOWFALL_ARATHI, 12 },
					["coord"] = { 58.1, 31.2, MYCOMANCER_CAVERN },
					["g"] = {
						i(225339),	-- Chicken Eggs (QS!/QI!)
					},
				}),
				o(456583, {	-- Lost Shoe
					["minReputation"] = { FACTION_HALLOWFALL_ARATHI, 12 },
					["coord"] = { 38.8, 21.7, MYCOMANCER_CAVERN },
					["g"] = {
						i(225336),	-- A Lost Shoe (QS!/QI!)
					},
				}),
				o(455497, {	-- Sturdy Chest
					["coord"] = { 63.3, 45.3, MYCOMANCER_CAVERN },
					["questID"] = 83691,
				}),
				o(455534, {	-- Sturdy Chest
					["coord"] = { 50.0, 21.5, MYCOMANCER_CAVERN },
					["questID"] = 83652,
				}),
				o(454202, {	-- Sturdy Chest
					["coord"] = { 68.8, 40.6, MYCOMANCER_CAVERN },
					["questID"] = 83455,
				}),
				o(455517, {	-- Sturdy Chest
					["coord"] = { 40.2, 62.1, MYCOMANCER_CAVERN },
					["questID"] = 83672,
				}),
			}),
			-- TODO: depending on prevalance of this sort of object/etc. throughout TWW, we may want to consolidate
			-- providers of these 'light' emitting sources, and use a shortcut to wrap all necessary groups
			n(TREASURES, sharedData({
				["sharedDescription"] = "Requires any 'light' emitting consumable item to be active.",
			},{
				-- requires any 'light' item
				o(454037, {	-- Stolen Supplies
					["coord"] = { 59.2, 72.6, MYCOMANCER_CAVERN },
					["questID"] = 83378,
				}),
				o(454038, {	-- Stolen Supplies
					["coord"] = { 60.7, 61.7, MYCOMANCER_CAVERN },
					["questID"] = 83380,
				}),
				o(454039, {	-- Stolen Supplies
					["coord"] = { 49.7, 21.1, MYCOMANCER_CAVERN },
					["questID"] = 83381,
				}),
			})),
		},
	}),
	m(NIGHTFALL_SANCTUM, {
		["icon"] = [[~_.asset("Delves_Shadow")]],
		["coord"] = { 34.6, 46.8, HALLOWFALL },
		["g"] = {
			n(ACHIEVEMENTS, {
				ach(40809),	-- Nightfall Sanctum Discoveries
				ach(40530, {	-- Nightfall Sanctum Stories
					crit(68767),	-- Dark Ritual
					crit(68768),	-- Kyron's Assault
					crit(68769),	-- Signal Noise
					crit(102975, {	-- Aiming to get Even
						["timeline"] = { ADDED_11_1_0 },
					}),
				}),
			}),
			n(DELVE_COMPLETION, {
				n(TREASURES, {
					filter(COSMETIC, {
						i(225067),	-- Shadowlit Haversack
						i(225065),	-- Torchbearer's Haversack
						i(225066),	-- Trailblazer's Haversack
					}),
				}),
			}),
			filter(MISC, {
				i(215466),	-- Sanctified Supplies (QI!)
				i(216420),	-- Symbol of Light (QI!)
				i(216433),	-- Stolen Relic (QI!)
				i(232874, { ["timeline"] = { ADDED_11_1_0 } }),	-- Undermine Stockpile (QI!)
			}),
			n(QUESTS, {
				q(83755, {	-- Delves: Nightfall Sanctum
					["provider"] = { "n", 227523 },	-- Brann Bronzebeard
					["coord"] = { 43.5, 56.3, HALLOWFALL },
				}),
				q(85664, {	-- Delver's Call: Nightfall Sanctum
					["provider"] = { "o", 487847 },	-- DELVER'S CALL: Nightfall Sanctum
					["coord"] = { 72.6, 27.5, NIGHTFALL_SANCTUM },
				}),
			}),
			n(TREASURES, {
				o(455494, {	-- Sturdy Chest
					["coord"] = { 77.7, 36.2, NIGHTFALL_SANCTUM },
					["questID"] = 83688,
				}),
				o(454201, {	-- Sturdy Chest
					["coord"] = { 39.2, 74.4, NIGHTFALL_SANCTUM },
					["questID"] = 83454,
				}),
				o(455526, {	-- Sturdy Chest
					["coord"] = { 40.0, 36.7, NIGHTFALL_SANCTUM },
					["questID"] = 83701,
				}),
				o(455515, {	-- Sturdy Chest
					["description"] = "On mushroom",
					["coord"] = { 70.9, 44.4, NIGHTFALL_SANCTUM },
					["questID"] = 83670,
				}),
			}),
		},
	}),
	m(SIDESTREET_SLUICE, bubbleDownSelf({ ["timeline"] = { ADDED_11_1_0 } }, {
		--["icon"] = [[~_.asset("Delves_Nerubian")]],
		["coord"] = { 35.2, 52.2, UNDERMINE },
		["maps"] = {
			--2420,	-- The Pits (constant mapID)
			2421,	-- The Low Decks
			2422,	-- The High Decks
			2423,	-- Entrance
		},
		["g"] = {
			n(ACHIEVEMENTS, {
				ach(41101),	-- Sidestreet Sluice Discoveries
				ach(41099, {	-- Sidestreet Sluice Stories
					crit(70988),	-- All That Glitters
					crit(70989),	-- Mr. DELVER
					crit(70990),	-- Teleporter Tantrums
				}),
			}),
			n(DELVE_COMPLETION, {
				n(TREASURES, {
					filter(BATTLE_PETS, {
						i(221496),	-- Wriggle (PET!)
					}),
					filter(COSMETIC, {
						i(212162),	-- Bitter Shroom Cap
						i(212167),	-- Taken Candle
					}),
				}),
			}),
			filter(MISC, {
				i(234454),	-- Remote Teleporter (QI!)
				i(234451),	-- Stolen Goods (QI!)
			}),
			n(TREASURES, {
				o(503157, {	-- Sturdy Chest
					["coord"] = { 61.0, 63.9, SIDESTREET_SLUICE },
					["questID"] = 86787,
				}),
				o(507226, {	-- Sturdy Chest
					["description"] = "Walk along the metal beam to access.",
					["coord"] = { 77.6, 39.5, 2422 },
					["questID"] = 86789,
				}),
				o(507227, {	-- Sturdy Chest
					["coord"] = { 33.4, 73.3, SIDESTREET_SLUICE },
					["questID"] = 86790,
				}),
				o(507221, {	-- Sturdy Chest
					["coord"] = { 76.8, 75.0, SIDESTREET_SLUICE },
					["questID"] = 86788,
				}),
			}),
		},
	})),
	m(SKITTERING_BREACH, {
		["icon"] = [[~_.asset("Delves_Nerubian")]],
		["coord"] = { 65.5, 61.5, HALLOWFALL },
		["g"] = {
			n(ACHIEVEMENTS, {
				ach(40810),	-- Skittering Breach Discoveries
				ach(40533, {	-- Skittering Breach Stories
					crit(68776),	-- Old Rituals
					crit(68777),	-- Renilash Beckons
					crit(68778),	-- Shadow Realm
					crit(102972, {	-- Relics of the Old Gods
						["timeline"] = { ADDED_11_1_0 },
					}),
				}),
			}),
			n(DELVE_COMPLETION, {
				n(TREASURES, {
					filter(BATTLE_PETS, {
						i(221496),	-- Wriggle (PET!)
					}),
					filter(COSMETIC, {
						i(212172),	-- Ajul'Nerub Raptorial Spine
						i(212162),	-- Bitter Shroom Cap
						i(212173),	-- Rulk'Nerub Raptorial Spine
					}),
				}),
			}),
			filter(MISC, {
				i(225719),	-- Light's Mantle (QI!)
			}),
			n(QUESTS, {
				q(83768, {	-- Delver's Call: The Skittering Breach
					["provider"] = { "o", 455694 },	-- Delver's Call: The Skittering Breach
					["coords"] = {
						{ 67.8, 45.7, HALLOWFALL },
						{ 72.6, 54.9, SKITTERING_BREACH },
					},
				}),
			}),
			n(TREASURES, {
				o(455505, {	-- Sturdy Chest
					["coord"] = { 27.4, 26.4, SKITTERING_BREACH },
					["questID"] = 83660,
				}),
				o(455522, {	-- Sturdy Chest
					["coord"] = { 56.1, 24.1, SKITTERING_BREACH },
					["questID"] = 83696,
				}),
				o(455486, {	-- Sturdy Chest
					["coord"] = { 66.7, 14.5, SKITTERING_BREACH },
					["questID"] = 83680,
				}),
				o(455485, {	-- Sturdy Chest
					["coord"] = { 51.1, 65.1, SKITTERING_BREACH },
					["questID"] = 83679,
				}),
			}),
		},
	}),
	m(TAK_RETHAN_ABYSS, {
		["icon"] = [[~_.asset("Delves_Kobyss")]],
		["coord"] = { 55.5, 74.9, AZJ_KAHET },
		["maps"] = {
			2314,
		},
		["g"] = {
			n(ACHIEVEMENTS, {
				ach(40811),	-- Tak-Rethan Abyss Discoveries
				ach(40535, {	-- Tak-Rethan Abyss Stories
					crit(68783),	-- Goblin Mischief
					crit(68784),	-- Niffen Napping
					crit(68785),	-- Pheromone Fury
					crit(102966, {	-- Pump the Brakes
						["timeline"] = { ADDED_11_1_0 },
					}),
				}),
			}),
			n(DELVE_COMPLETION, {
				n(TREASURES, {
					filter(BATTLE_PETS, {
						i(221496),	-- Wriggle (PET!)
					}),
					filter(COSMETIC, {
						i(212166),	-- Coral Nautic Helm
						i(212165),	-- Deep Nautic Helm
						i(212164),	-- Shallow Nautic Helm
					}),
				}),
			}),
			filter(MISC, {
				o(415296, {	-- Repair Kit
					i(211776),	-- Damp Repair Kit (QI!)
				}),
			}),
			n(QUESTS, {
				q(83771, {	-- Delver's Call: Tak-Rethan Abyss
					["provider"] = { "o", 455720 },	-- Delver's Call: Tak-Rethan Abyss
					["coords"] = {
						{ 56.8, 40.7, AZJ_KAHET },
						{ 53.1, 20.2, TAK_RETHAN_ABYSS },
					},
				}),
			}),
			n(TREASURES, {
				o(455533, {	-- Sturdy Chest
					["coord"] = { 59.7, 24.7, TAK_RETHAN_ABYSS },
					["questID"] = 83651,
				}),
				o(455514, {	-- Sturdy Chest
					["coord"] = { 35.1, 58.6, TAK_RETHAN_ABYSS },
					["questID"] = 83669,
				}),
				o(455492, {	-- Sturdy Chest
					["coord"] = { 64.7, 49.3, TAK_RETHAN_ABYSS },
					["questID"] = 83686,
				}),
				o(455493, {	-- Sturdy Chest
					["coord"] = { 44.7, 49.7, TAK_RETHAN_ABYSS },
					["questID"] = 83687,
				}),
			}),
		},
	}),
	m(THE_DREAD_PIT, {
		["icon"] = [[~_.asset("Delves_Nerubian")]],
		["coord"] = { 74.1, 37.7, THE_RINGING_DEEPS },
		["g"] = {
			n(ACHIEVEMENTS, {
				ach(40812),	-- The Dread Pit Discoveries
				ach(40529, {	-- The Dread Pit Stories
					crit(68764),	-- Lost Gems
					crit(68765),	-- Smashing Skardyn
					crit(68766),	-- Kobold Kidnapping
					crit(102969, {	-- Darkfuse Disruption
						["timeline"] = { ADDED_11_1_0 },
					}),
				}),
			}),
			n(DELVE_COMPLETION, {
				n(TREASURES, {
					filter(COSMETIC, {
						i(212172),	-- Ajul'Nerub Raptorial Spine
						i(212173),	-- Rulk'Nerub Raptorial Spine
					}),
				}),
			}),
			filter(MISC, {
				i(217965),	-- Repair Kit (QI!)
			}),
			n(QUESTS, {
				q(83766, {	-- Delver's Call: Dread Pit
					["provider"] = { "o", 455685 },	-- Delver's Call: Dread Pit
					["coords"] = {
						{ 58.3, 64.2, THE_RINGING_DEEPS },
						{ 30, 54.8, THE_DREAD_PIT },
					},
				}),
			}),
			n(TREASURES, {
				o(455482, {	-- Sturdy Chest
					["coord"] = { 41.1, 45.5, THE_DREAD_PIT },
					["questID"] = 83677,
				}),
				o(455503, {	-- Sturdy Chest
					["coord"] = { 57.5, 56.1, THE_DREAD_PIT },
					["questID"] = 83658,
				}),
				o(455484, {	-- Sturdy Chest
					["coord"] = { 57.8, 27.7, THE_DREAD_PIT },
					["questID"] = 83678,
				}),
				o(455504, {	-- Sturdy Chest
					["coord"] = { 36.3, 16.7, THE_DREAD_PIT },
					["questID"] = 83659,
				}),
			})
		},
	}),
	m(THE_SINKHOLE, {
		["icon"] = [[~_.asset("Delves_Kobyss")]],
		["coord"] = { 50.6, 53.2, HALLOWFALL },
		["g"] = {
			n(ACHIEVEMENTS, {
				ach(40813),	-- The Sinkhole Discoveries
				ach(40532, {	-- The Sinkhole Stories
					crit(68773),	-- Illusory Rescue
					crit(68774),	-- Raen's Gambit
					crit(68775),	-- Lurking Terror
					crit(102970, {	-- Orphan's Holiday
						["timeline"] = { ADDED_11_1_0 },
					}),
				}),
			}),
			n(DELVE_COMPLETION, {
				n(TREASURES, {
					filter(BATTLE_PETS, {
						i(221496),	-- Wriggle (PET!)
					}),
					filter(COSMETIC, {
						i(212166),	-- Coral Nautic Helm
						i(212165),	-- Deep Nautic Helm
						i(225067),	-- Shadowlit Haversack
						i(212164),	-- Shallow Nautic Helm
					}),
				}),
			}),
			filter(MISC, {
				i(218122),	-- Stolen Relic (QI!)
			}),
			n(QUESTS, {
				q(83767, {	-- Delver's Call: The Sinkhole
					["provider"] = { "o", 455704 },	-- Delver's Call: The Sinkhole
					["coords"] = {
						{ 48.7, 39.5, HALLOWFALL },
						{ 53.1, 20.2, THE_SINKHOLE },
					},
				}),
			}),
			n(TREASURES, {
				o(454200, {	-- Sturdy Chest
					["coord"] = { 52.3, 13.7, THE_SINKHOLE },
					["questID"] = 83453,
				}),
				o(455513, {	-- Sturdy Chest
					["coord"] = { 43.5, 60.8, THE_SINKHOLE },
					["questID"] = 83668,
				}),
				o(455525, {	-- Sturdy Chest
					["coord"] = { 72.6, 61.8, THE_SINKHOLE },
					["questID"] = 83700,
				}),
				o(455491, {	-- Sturdy Chest
					["coord"] = { 48.5, 69.3, THE_SINKHOLE },
					["questID"] = 83685,
				}),
			}),
			n(219713, {	-- Arathi Captive
				["description"] = "Attempting to save this captive will spawn an assassin and not count towards any progress",
			}),
			n(219718, {	-- Arathi Captive
				["description"] = "Save this captive",
			}),
		},
	}),
	m(THE_SPIRAL_WEAVE, {
		["icon"] = [[~_.asset("Delves_Nerubian")]],
		["coord"] = { 46.6, 25.7, AZJ_KAHET },
		["maps"] = { 2313 },	-- The Spiral Weave
		["g"] = {
			n(ACHIEVEMENTS, {
				ach(40814),	-- The Spiral Weave Discoveries
				ach(40536, {	-- The Spiral Weave Stories
					crit(68786),	-- Tortured Hostages
					crit(68787),	-- From the Weaver with Love
					crit(68788),	-- Strange Disturbances
					crit(102973, {	-- Down to Size
						["timeline"] = { ADDED_11_1_0 },
					}),
				}),
			}),
			n(DELVE_COMPLETION, {
				n(TREASURES, {
					filter(COSMETIC, {
						i(212172),	-- Ajul'Nerub Raptorial Spine
						i(212173),	-- Rulk'Nerub Raptorial Spine
					}),
				}),
			}),
			filter(MISC, {
				i(216772),	-- Whispering Explosives (QI!)
				o_repeated(sharedData({	-- Web Bomb
					["timeline"] = { ADDED_11_1_0 },
				},{
					i(234421),	-- Web Bomb (QI!)
					o(504093),	-- Web Bomb
					o(504195),	-- Web Bomb
				})),
				o_repeated(sharedData({	-- Plundered Artifacts
					["timeline"] = { ADDED_11_1_0 },
				},{
					i(235257),	-- Plundered Artifacts (QI!)
					o(506525),	-- Web Bomb
					o(504195),	-- Web Bomb
				})),
			}),
			n(QUESTS, {
				q(83770, {	-- Delver's Call: Spiral Weave
					["provider"] = { "n", 211721 },	-- Sir Jonathan Trueheart
					["coord"] = { 58.9, 18.6, AZJ_KAHET },
				}),
				q(85666, {	-- Delver's Call: Spiral Weave
					-- cross complete with 83770
					["provider"] = { "o", 487851 },	-- DELVER'S CALL: The Spiral Weave
					["coord"] = { 53.0, 76.1, THE_SPIRAL_WEAVE },
				}),
			}),
			n(TREASURES, {
				o(455487, {	-- Sturdy Chest
					["description"] = "Located ontop of pillar, accessible after killing last boss.",
					["coord"] = { 46.0, 46.1, THE_SPIRAL_WEAVE },
					["questID"] = 83681,
				}),
				o(455531, {	-- Sturdy Chest
					["coord"] = { 50.5, 46.2, THE_SPIRAL_WEAVE },
					["questID"] = 83649,
				}),
				o(455506, {	-- Sturdy Chest
					["description"] = "Located on beam over your head. Accessible during the From the Weaver with Love story.",
					["coord"] = { 36.3, 10.5, THE_SPIRAL_WEAVE },
					["questID"] = 83661,
				}),
				o(455507, {	-- Sturdy Chest
					["description"] = "Located on beam over your head, accessible after killing last boss",
					["coord"] = { 42.5, 47.7, THE_SPIRAL_WEAVE },
					["questID"] = 83662,
				}),
			}),
		},
	}),
	m(THE_UNDERKEEP, {
		["icon"] = [[~_.asset("Delves_Nerubian")]],
		["coord"] = { 58.1, 65.8, 2213 },
		["g"] = {
			n(ACHIEVEMENTS, {
				ach(40815),	-- The Underkeep Discoveries
				ach(40534, {	-- The Underkeep Stories
					crit(68779),	-- Torture Victims
					crit(68780),	-- Weaver Rescue
					crit(68781),	-- Evolved Research
					crit(68782),	-- Runaway Evolution
					crit(102974, {	-- Third Party Operation
						["timeline"] = { ADDED_11_1_0 },
					}),
				}),
			}),
			n(DELVE_COMPLETION, {
				n(TREASURES, {
					filter(COSMETIC, {
						i(212172),	-- Ajul'Nerub Raptorial Spine
						i(212173),	-- Rulk'Nerub Raptorial Spine
					}),
				}),
			}),
			filter(MISC, {
				i(217715),	-- Key Scroll (QI!)
				i(217895),	-- Volatile Pheromone (QI!)
				i(217897),	-- Volatile Pheromone (QI!)
			}),
			n(QUESTS, {
				q(83761, {	-- Delves: The Underkeep
					["provider"] = { "n", 227544 },	-- Brann Bronzebeard
					["coord"] = { 57.3, 42.3, AZJ_KAHET },
				}),
				q(85667, {	-- Delver's Call: The Underkeep
					["provider"] = { "o", 487855 },	-- DELVER'S CALL: The Underkeep
					["coord"] = { 35.9, 26.2, THE_UNDERKEEP },
				}),
			}),
			n(TREASURES, {
				o(455508, {	-- Sturdy Chest
					["description"] = "Not available during Torture Victims story.",	-- Completed in Runaway Evolution
					["coord"] = { 39.6, 69.3, THE_UNDERKEEP },
					["questID"] = 83663,
				}),
				o(455509, {	-- Sturdy Chest
					["coord"] = { 35.9, 34.6, THE_UNDERKEEP },
					["questID"] = 83664,
				}),
				o(455488, {	-- Sturdy Chest
					["coord"] = { 63.7, 32.4, THE_UNDERKEEP },
					["questID"] = 83682,
				}),
				o(455523, {	-- Sturdy Chest
					["coord"] = { 72, 88.8, THE_UNDERKEEP },
					["questID"] = 83697,
				}),
			}),
		},
	}),
	m(THE_WATERWORKS, {
		["icon"] = [[~_.asset("Delves_Kobold")]],
		["coord"] = { 46.3, 48.5, THE_RINGING_DEEPS },
		["g"] = {
			n(ACHIEVEMENTS, {
				ach(40816),	-- The Waterworks Discoveries
				ach(40528, {	-- The Waterworks Stories
					crit(68761),	-- Captured Engineers
					crit(68762),	-- Trust Issues
					crit(68763),	-- Stomping Some Sense
					crit(102968, {	-- Put a Wrench on It!
						["timeline"] = { ADDED_11_1_0 },
					}),
				}),
			}),
			n(DELVE_COMPLETION, {
				n(TREASURES, {
					filter(COSMETIC, {
						i(212168),	-- Cinderbee Wax Candle Hat
						i(212169),	-- Mint-Scented Candle Hat
						i(212167),	-- Taken Candle
					}),
				}),
			}),
			n(QUESTS, {
				q(83749, {	-- Delves: The Waterworks
					["provider"] = { "n", 227477 },	-- Brann Bronzebeard
					["coord"] = { 47.1, 31.9, THE_RINGING_DEEPS },
				}),
				q(85649, {	-- Delver's Call: The Waterworks
					["provider"] = { "o", 487815 },	-- DELVER'S CALL: The Waterworks
					["coord"] = { 46.6, 17.7, THE_WATERWORKS },	-- TODO: as of 11.1 report coords are shifted to 46.6, 15.2?
				}),
			}),
			n(TREASURES, {
				o(455490, {	-- Sturdy Chest
					["coord"] = { 49.9, 24.6, THE_WATERWORKS },
					["questID"] = 83684,
				}),
				o(455532, {	-- Sturdy Chest
					["coord"] = { 44.3, 38.2, THE_WATERWORKS },
					["questID"] = 83650,
				}),
				o(455512, {	-- Sturdy Chest
					["coord"] = { 47.9, 53.5, THE_WATERWORKS },
					["questID"] = 83667,
				}),
				o(454207, {	-- Sturdy Chest
					["coord"] = { 49.5, 79.1, THE_WATERWORKS },
					["questID"] = 83456,
				}),
			}),
		},
	}),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.TWW, bubbleDownSelf({ ["timeline"] = { ADDED_11_0_2 } }, {
	n(DELVES, {
		n(BOUNTIFUL, {	-- Bountiful Delve runs
			q(82944),	-- Earthcrawl Mines
			q(85187, {["timeline"]={ADDED_11_1_0}}),	-- Excavation Site 9
			q(82939),	-- Fungal Folly
			q(82941),	-- Kriegval's Rest
			q(82940),	-- Mycomancer Cavern
			q(82777),	-- Nightfall Sanctum
			q(85668, {["timeline"]={ADDED_11_1_0}}),	-- Sidestreet Sluice
			q(78508),	-- Skittering Breach
			q(82776),	-- Tak-Rethan Abyss
			q(82938),	-- The Dread Pit
			q(82937),	-- The Sinkhole
			q(82942),	-- The Spiral Weave
			q(82943),	-- The Underkeep
			q(82945),	-- The Waterworks
			-- One time rep bonus from Bountiful Delves
			q(83317),	-- Council of Dornogal
			q(83318),	-- Assembly of the Deeps
			q(83319),	-- Severed Threads
			q(83320),	-- Hallowfall Arathi
			q(87407, {["timeline"]={ADDED_11_1_0}}),	-- Undermine Cartel
		}),
		n(DELVES_TWW_S1, {
			--Delver's Journey Rewards
			q(83158),	-- Adventurer's Warbound Battlegear Drop (spellID 453929)
			q(83235),	-- Airship: Wings 05 - Lantern Wing (spellID 454473)
			q(83236),	-- Airship: Top 03 - Zeppelin (spellID 454476)
			q(83237),	-- Airship: Front 05 - Lantern (spellID 454475)
			q(83238),	-- Airship: Body Color 01 - Brown (spellID 454478)
			q(83239),	-- Airship: Back 02 - Multi-Exhaust (spellID 454474)
			q(83157),	-- Discounted Restored Coffer Key (spellID 453934)
			q(83180),	-- Hidden Stash from Deep Within (5k crystals)
			q(83156),	-- Purchaseable Restored Coffer Key (spellID 453933)
			q(83193),	-- Trusty Hat (spellID 454301)

			q(82772, {["timeline"]={REMOVED_11_1_0_SEASONSTART}}),	-- First Delve of the day (Season 1)

			-- Zekvir Invasion
			q(84816),	-- Zekvir pop in Earthcrawl Mines (first time, unsure what tier it was)
			q(84817),	-- Zekvir pop in Mycomancer Cavern (unsure, Tier 9)
			q(84818),	-- Zekvir pop in The Spiral Weave (2nd time in week, Tier 8)
			q(84819),	-- Zekvir pop in Skittering Breach (2nd time in week, Tier 8), also in Nightfall Sanctum (unsure, Tier 3)
		}),
		n(DELVES_TWW_S2, bubbleDownSelf({ ["timeline"] = { ADDED_11_1_0_SEASONSTART } }, {
			n(QUESTS, {
				-- q(86329),	-- Delver's Cosmetic Surprise Bag (itemID 233281) [linked to Item]
				-- q(86328),	-- Delver's Starter Kit (itemID 233276) [linked to Item]
				-- q(90780),	-- when Cracked Keystone was obtained (push loot in Fungal Folly?)
			}),
			--Delver's Journey Rewards
			q(85204),	-- Delver's Dirigible Schematic: Flamethrower (spellID 467083)
			q(85203),	-- Delver's Dirigible Schematic: Pipes (spellID 467082)
			q(85202),	-- Delver's Dirigible Schematic: Harpoon (spellID 467081)
			q(85201),	-- Delver's Dirigible Schematic: Baloon (spellID 467080)
			q(85207),	-- Purchaseable Restored Coffer Keys (spellID 467093)
			q(85200),	-- Delver's Dirigible Schematic: Green Paint (spellID 467076)
			q(85210),	-- Delve-O-Bot 7001 (spellID 467097)
			q(85206),	-- Warbound Equipment Set (spellID 467089)
			q(85205),	-- Discounted Restored Coffer Key (spellID 467087)
			-- q(86878),	-- Where We Thrive (camp site) (spellID 1217505?) [linked to Item]

			-- q(86371),	-- Delver's Bounty weekly lockout (source doesn't matter) [linked to Item]
			q(86438),	-- Opened first Nemesis Strongbox (first purple on account)
			-- Underpin Invasion
			q(87287),	-- after openining Jettisoned Pile of Goblin-Bucks (objectID 507768), First per week, Delve Tier doesn't matter
			q(87286),	-- after openining Jettisoned Pile of Goblin-Bucks (objectID 507768), Second per week, Delve Tier doesn't matter
		})),
		q(85651),	-- Triggers with 'Delver's Call: The Sinkhole' (questID 83767)
		q(85719),	-- Unknown. Seems to pop very rarely on completion of a delve

		-- Restored Coffer Key (Pop from any weekly activity, orders (of activity) doesn't matter)
		q(84736, name(HEADERS.Currency,3028,{["isWeekly"]=true})),	-- 1st
		q(84737, name(HEADERS.Currency,3028,{["isWeekly"]=true})),	-- 2nd
		q(84738, name(HEADERS.Currency,3028,{["isWeekly"]=true})),	-- 3rd
		q(84739, name(HEADERS.Currency,3028,{["isWeekly"]=true})),	-- 4th

		-- Zekvir Delve
		q(85757),	-- Triggered when looting second chest after defeating Zekvir solo on ? difficulty, also triggered on looting first bountiful heavy trunk in The Underkeep
		q(86324),	-- First weekly Zekvir kill (also triggered off looting second Zekvir cache)
		q(86157),	-- Killed Zekvir (?) as a duo with someone who'd never killed him before
		q(86325),	-- Looting first Zekvir cache from above kil

		-- Underpin Delve
		q(86407, {["timeline"]={ADDED_11_1_0_SEASONSTART}}),	-- First weekly Underpin kill
		q(86439, {["timeline"]={ADDED_11_1_0_SEASONSTART}}),	-- First weekly Underpin kill
	}),
})));
