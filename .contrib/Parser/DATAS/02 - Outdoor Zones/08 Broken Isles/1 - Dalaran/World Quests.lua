---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, {
	m(BROKEN_ISLES, {
		m(LEGION_DALARAN, {
			n(WORLD_QUESTS, {
				petbattle(q(42442, {	-- Fight Night: Amalia
					["isWorldQuest"] = true,
					["lvl"] = 110,
					["filterID"] = BATTLE_PETS,
				})),
				petbattle(q(40299, {	-- Fight Night: Bodhi Sunwayver
					["isWorldQuest"] = true,
					["lvl"] = 110,
					["filterID"] = BATTLE_PETS,
				})),
				petbattle(q(41881, {	-- Fight Night: Heliosus
					["isWorldQuest"] = true,
					["lvl"] = 110,
					["filterID"] = BATTLE_PETS,
				})),
				petbattle(q(41886, {	-- Fight Night: Rats!
					["isWorldQuest"] = true,
					["lvl"] = 110,
					["filterID"] = BATTLE_PETS,
				})),
				petbattle(q(40298, {	-- Fight Night: Sir Galveston
					["isWorldQuest"] = true,
					["lvl"] = 110,
					["filterID"] = BATTLE_PETS,
				})),
				petbattle(q(42062, {	-- Fight Night: Stitches Jr. Jr.
					["isWorldQuest"] = true,
					["lvl"] = 110,
					["filterID"] = BATTLE_PETS,
				})),
				petbattle(q(40277, {	-- Fight Night: Tiffany Nelson
					["isWorldQuest"] = true,
					["lvl"] = 110,
					["filterID"] = BATTLE_PETS,
				})),
				prof(ALCHEMY, {
					q(41662, {	-- Work Order: Ancient Rejuvenation Potions
						["requireSkill"] = ALCHEMY,
						["isWorldQuest"] = true,
						["lvl"] = { 45 },
					}),
				}),
				prof(BLACKSMITHING, {
					q(41638, {	-- Work Order: Leystone Gauntlets
						["requireSkill"] = BLACKSMITHING,
						["isWorldQuest"] = true,
						["lvl"] = { 45 },
						["groups"] = {
							i(137606),	-- Plans: Leystone Gauntlets [Rank 3] (RECIPE!)
						},
					}),
				}),
				prof(ENCHANTING, {
					q(41674, {	-- Work Order: Word of Intellect
						["provider"] = { "n", 32725 },	-- Warmage Silva
						["requireSkill"] = ENCHANTING,
						["isWorldQuest"] = true,
						["lvl"] = { 45 },
						["groups"] = {
							i(128606),	-- Formula: Enchant CLoak - Word of Intellect [Rank 3] (RECIPE!)
						},
					}),
				}),
				prof(ENGINEERING, {
					q(41680, {	-- Work Order: Failure Detection Pylon
						["provider"] = { "n", 32725 },	-- Warmage Silva
						["requireSkill"] = ENGINEERING,
						["isWorldQuest"] = true,
						["lvl"] = { 45 },
						["groups"] = {
							i(137724),	-- Schematic: Failure Detection Pylon [Rank 3] (RECIPE!)
						},
					}),
				}),
				prof(JEWELCRAFTING, {
					q(46134, {	-- Gemcutter Needed
						["requireSkill"] = JEWELCRAFTING,
						["isWorldQuest"] = true,
						["lvl"] = { 45 },
					}),
					q(46135, {	-- Gemcutter Needed
						["requireSkill"] = JEWELCRAFTING,
						["isWorldQuest"] = true,
						["lvl"] = { 45 },
					}),
					q(46136, {	-- Gemcutter Needed
						["requireSkill"] = JEWELCRAFTING,
						["isWorldQuest"] = true,
						["lvl"] = { 45 },
					}),
					q(46137, {	-- Gemcutter Needed
						["requireSkill"] = JEWELCRAFTING,
						["isWorldQuest"] = true,
						["lvl"] = { 45 },
					}),
					q(46138, {	-- Gemcutter Needed
						["requireSkill"] = JEWELCRAFTING,
						["isWorldQuest"] = true,
						["lvl"] = { 45 },
					}),
					q(46139, {	-- Gemcutter Needed
						["requireSkill"] = JEWELCRAFTING,
						["isWorldQuest"] = true,
						["lvl"] = { 45 },
					}),
					q(41656, {	-- Work Order: Azsunite Loop
						["isWorldQuest"] = true,
						["lvl"] = { 45 },
						["groups"] = {
							i(137840),	-- Design: Azsunite Loop [Rank 3] (RECIPE!)
						},
					}),
				}),
				prof(LEATHERWORKING, {
					q(41644, {	-- Work Order: Warhide Gloves
						["provider"] = { "n", 32725 },	-- Warmage Silva
						["requireSkill"] = LEATHERWORKING,
						["isWorldQuest"] = true,
						["lvl"] = { 45 },
						["groups"] = {
							i(137879),	-- Pattern: Warhide Gloves [Rank 3] (RECIPE!)
						},
					}),
				}),
				prof(TAILORING, {
					q(41650, {	-- Work Order: Silkweave Hood
						["requireSkill"] = TAILORING,
						["isWorldQuest"] = true,
						["lvl"] = { 45 },
						["groups"] = {
							i(138013),	-- Pattern: Silkweave Hood [Rank 3] (RECIPE!)
						},
					}),
				}),
			}),
		}),
	}),
});
