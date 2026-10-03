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
	-- #if AFTER 11.2.0
	ARCHIVAL_ASSAULT,
	-- #endif
	-- #if AFTER 12.0.0
	ATAL_AMAN,
	COLLEGIATE_CALAMITY,
	PARHELION_PLAZA,
	SHADOWGUARD_POINT,
	SUNKILLER_SANCTUM,
	THE_DARKWAY,
	THE_GULF_OF_MEMORY,
	THE_GRUDGE_PIT,
	THE_SHADOW_ENCLAVE,
	TWILIGHT_CRYPTS,
	-- #endif
};

root(ROOTS.Delves, timelineSelf({ ["timeline"] = { ADDED_11_0_2 } }, {
	n(ACHIEVEMENTS, {
		ach(40817, {	-- A Delver's Bounty
			["maps"] = ALL_REGULAR_DELVES,
		}),
		ach(40882, {	-- Copious Coffers
			["maps"] = ALL_REGULAR_DELVES,
			["groups"] = {
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
		ach(40460, {	-- Delve Deep
			["maps"] = ALL_REGULAR_DELVES,
		}),
		ach(40462, {	-- Delve Deeper
			["maps"] = ALL_REGULAR_DELVES,
		}),
		ach(40463, {	-- Delve Deepest (100)
			["maps"] = ALL_REGULAR_DELVES,
		}),
		ach(41095, {	-- Delve Beyond (500)
			["timeline"] = { ADDED_11_1_0 },
			["maps"] = ALL_REGULAR_DELVES,
			["groups"] = {
				-- #if AFTER 11.2.0
				title(650),	-- Delver <Name>
				-- #else
				title(598),	-- Delver <Name> / Flickering <Name>
				-- #endif
			},
		}),
		ach(41096, {	-- Delve Infinite (1000)
			["timeline"] = { ADDED_11_1_0 },
			["maps"] = ALL_REGULAR_DELVES,
			["groups"] = { title(599) },	-- Infinite Delver <Name>
		}),
		ach(40098, {	-- Immortal Spelunker
			["maps"] = ALL_REGULAR_DELVES,
			["groups"] = {
				title(549),	-- Immortal Spelunker <Name>
			},
		}),
		ach(40763, {	-- I'm not a Thief, I'm a Treasure Hunter
			["maps"] = ALL_REGULAR_DELVES,
		}),
		ach(40788, {	-- I Got the Keys
			["maps"] = ALL_REGULAR_DELVES,
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
		ach(40819, {	-- Ready to Turn
			["maps"] = ALL_REGULAR_DELVES,
		}),
		ach(40885, {	-- The Key to Madness
			["maps"] = ALL_REGULAR_DELVES,
			["groups"] = {
				i(237355, {	-- Golden Coffer Key
					["timeline"] = { ADDED_11_1_0 },
				}),
			},
		}),
		ach(40436, {	-- You're Getting a Delve!
			["maps"] = ALL_REGULAR_DELVES,
		}),
	}),
}));
