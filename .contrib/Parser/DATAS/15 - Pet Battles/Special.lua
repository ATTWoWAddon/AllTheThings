----------------------------------------------
--   P E T    B A T T L E    M O D U L E    --
----------------------------------------------
root(ROOTS.PetBattles, bubbleDown({ ["timeline"] = { ADDED_5_0_4 } }, {
	n(SPECIAL, sharedData({
		["sharedDescription"] = "You may only learn the pet offered once per character from this Battle Pet Trainer.|r"
	}, {
		n(63596, {	-- Audrey Burnhep
			["coord"] = { 69.4, 24.4, STORMWIND_CITY },
			["races"] = ALLIANCE_ONLY,
			["groups"] = {
				pet(138, {	-- Blue Moth
					["races"] = { DRAENEI },
				}),
				pet(630, {	-- Gilnean Raven (PET!)
					["races"] = { WORGEN },
				}),
				pet(68, {	-- Great Horned Owl
					["races"] = { NIGHTELF },
				}),
				pet(792, {	-- Jade Crane Chick
					["races"] = { PANDAREN_ALLIANCE },
				}),
				pet(43, {	-- Orange Tabby Cat
					["races"] = { HUMAN },
				}),
				pet(72, {	-- Snowshoe Rabbit
					["races"] = { GNOME, DWARF },
				}),
			},
		}),
		n(63075, {	-- Grady Bannson
			["coord"] = { 53.8, 50.1, DUN_MOROGH },
			["races"] = ALLIANCE_ONLY,
			["sym"] = {
				{"select", "npcID", 63596},				-- Audrey Burnhep
				{"pop"},								-- Discard Header and acquire all of their children.
			},
		}),
		n(63077, {	-- Lehna
			["coord"] = { 49.2, 52.0, AZUREMYST_ISLE },
			["races"] = ALLIANCE_ONLY,
			["sym"] = {
				{"select", "npcID", 63596},				-- Audrey Burnhep
				{"pop"},								-- Discard Header and acquire all of their children.
			},
		}),
		n(63014, {	-- Marcus Jensen
			["coord"] = { 40.2, 66.0, ELWYNN_FOREST },
			["races"] = ALLIANCE_ONLY,
			["sym"] = {
				{"select", "npcID", 63596},				-- Audrey Burnhep
				{"pop"},								-- Discard Header and acquire all of their children.
			},
		}),
		n(63070, {	-- Valeena
			["coord"] = { 55.2, 51.2, TELDRASSIL },
			["races"] = ALLIANCE_ONLY,
			["sym"] = {
				{"select", "npcID", 63596},				-- Audrey Burnhep
				{"pop"},								-- Discard Header and acquire all of their children.
			},
		}),
		n(63083, {	-- Will Larsons
			["coord"] = { 50.1, 20.2, DARKSHORE },
			["races"] = ALLIANCE_ONLY,
			["sym"] = {
				{"select", "npcID", 63596},				-- Audrey Burnhep
				{"pop"},								-- Discard Header and acquire all of their children.
			},
		}),
		n(63073, {	-- Ansel Fincap
			["coord"] = { 60.8, 54.2, TIRISFAL_GLADES },
			["races"] = HORDE_ONLY,
			["sym"] = {
				{"select", "npcID", 63626},				-- Varzok
				{"pop"},								-- Discard Header and acquire all of their children.
			},
		}),
		n(63080, {	-- Jarson Everlong
			["coord"] = { 47.2, 47.2, EVERSONG_WOODS },
			["races"] = HORDE_ONLY,
			["sym"] = {
				{"select", "npcID", 63626},				-- Varzok
				{"pop"},								-- Discard Header and acquire all of their children.
			},
		}),
		n(63086, {	-- Matty
			["coord"] = { 36.8, 77.1, ORGRIMMAR },
			["races"] = HORDE_ONLY,
			["sym"] = {
				{"select", "npcID", 63626},				-- Varzok
				{"pop"},								-- Discard Header and acquire all of their children.
			},
		}),
		n(63061, {	-- Narzak
			["coord"] = { 52.7, 41.3, DUROTAR },
			["races"] = HORDE_ONLY,
			["sym"] = {
				{"select", "npcID", 63626},				-- Varzok
				{"pop"},								-- Discard Header and acquire all of their children.
			},
		}),
		n(63067, {	-- Naleen
			["coord"] = { 49.2, 56.1, MULGORE },
			["races"] = HORDE_ONLY,
			["sym"] = {
				{"select", "npcID", 63626},				-- Varzok
				{"pop"},								-- Discard Header and acquire all of their children.
			},
		}),
		n(63626, {	-- Varzok
			["coord"] = { 52.6, 59.3, ORGRIMMAR },
			["races"] = HORDE_ONLY,
			["groups"] = {
				pet(75, {	-- Black Kingsnake (PET!)
					["races"] = { ORC, TROLL },
				}),
				pet(70, {	-- Brown Praire Dog (PET!)
					["races"] = { TAUREN },
				}),
				pet(142, {	-- Golden Dragonhawk Hatchling (PET!)
					["races"] = { BLOODELF },
				}),
				pet(792, {	-- Jade Crane Chick (PET!)
					["races"] = { PANDAREN_HORDE },
				}),
				pet(629, {	-- Shore Crawler (PET!)
					["races"] = { GOBLIN },
				}),
				pet(55, {	-- Undercity Cockroach (PET!)
					["races"] = { UNDEAD },
				}),
			},
		}),
	})),
}));
