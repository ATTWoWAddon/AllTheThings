---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(MAP.MIDNIGHT.QUELTHALAS, {
	m(MAP.MIDNIGHT.VOIDSTORM, {
		header(HEADERS.Faction, FACTION_SLAYERS_DUELLUM, {
			["icon"] = 7505702,
			["groups"] = {
				faction(FACTION_SLAYERS_DUELLUM),
				n(QUESTS, {
					q(94492, {	-- Paragon of the Slayer's Duellum
						["qg"] = 258328,	-- Thraxadar <Slayer's Duellum Quartermaster>
						["coord"] = { 39.3, 81.0, MAP.MIDNIGHT.SLAYERS_RISE_OUTDOOR },
						["minReputation"] = { FACTION_SLAYERS_DUELLUM, EXALTED },
						["repeatable"] = true,
						["groups"] = {
							i(267299, {	-- Slayer's Duellum Trove
								i(257176),	-- Duskbrute Harrower (MOUNT!)
								i(264892),	-- Nova (PET!)
							}),
						},
					}),
				}),
				n(VENDORS, {
					n(258328, {	-- Thraxadar <Slayer's Duellum Quartermaster>
						["coord"] = { 39.3, 81.0, MAP.MIDNIGHT.SLAYERS_RISE_OUTDOOR },
						["groups"] = bubbleDownClassicRep(FACTION_SLAYERS_DUELLUM, {
							{		-- Neutral
							}, {	-- Friendly
								i(264253, {	-- Galactic Void-Scarred Barricade (DECOR!)
									["cost"] = {{ "c", VOIDLIGHT_MARL, 250 }},
								}),
							}, {	-- Honored
								i(264345, {	-- Galactic Commander's Orb (DECOR!)
									["cost"] = {{ "c", VOIDLIGHT_MARL, 250 }},
								}),
								i(264517, {	-- Galactic Flag of Victory (TOY!)
									["cost"] = {{ "c", VOIDLIGHT_MARL, 4000 }},
								}),
							}, {	-- Revered
								i(247785, {	-- Galactic Void-Scarred Banner (DECOR!)
									["cost"] = {{ "c", VOIDLIGHT_MARL, 250 }},
								}),
								i(265035, {	-- Medusa (PET!)
									["cost"] = {{ "c", VOIDLIGHT_MARL, 2500 }},
								}),
							}, {	-- Exalted
								i(257448, {	-- Frenzied Shredclaw (MOUNT!)
									["cost"] = {{ "c", VOIDLIGHT_MARL, 6000 }},
								}),
								i(257447, {	-- Prowling Shredclaw (MOUNT!)
									["cost"] = {{ "c", VOIDLIGHT_MARL, 6000 }},
								}),
							},
						}),
					}),
				}),
			},
		}),
	}),
}));
