---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, {
	m(BROKEN_ISLES, {
		m(EYE_OF_AZSHARA, {
			["description"] = "The Eye of Azshara is zone south of Dalaran in the Broken Isles. It is an elite zone that is a replica of the dungeon of the same name. A flight master can be found here, you need to unlock it by visiting the flight point.",
			["icon"] = 1417426,
			["groups"] = {
				petbattle(filter(BATTLE_PETS, {
					["sym"] = {{"select","speciesID",
						1914,	-- Coastal Sandpiper (PET!)
						1728,	-- Juvenile Scuttleback (PET!)
					}},
				})),
				explorationHeader({
					visit_exploration(8373,{coord={47.5,78.7,BROKEN_ISLES}}),	-- Eye of Azshara
				}),
				n(FLIGHT_PATHS, {
					fp(1870, {	-- Eye of Azshara, Azsuna
						["coord"] = { 38.2, 46.0, EYE_OF_AZSHARA },
					}),
				}),
				n(RARES, {
					n(111573, {	-- Kosumoth the Hungering
						["description"] = "For a detailed explanation on how to get this world quest to be available, find |cFFFFD700Kosumoth the Hungering|r in the Secrets section of the ATT main list (type /att main, or click the minimap button).",
						["questID"] = 45479,
						["groups"] = {
							q(43798, {	-- DANGER: Kosumoth the Hungering
								["sourceQuest"] = 43761,	-- Step 12: Hungering Orb
								["repeatable"] = true,
								["groups"] = {
									i(140261),	-- Hungering Claw (PET!)
									i(138201),	-- Fathom Dweller (MOUNT!)
								},
							}),
						},
					}),
				}),
				n(WORLD_QUESTS, {
					q(43805, {	-- Aquatic Assassination
						["isWorldQuest"] = true,
						["lvl"] = 110,
					}),
				}),
			},
		}),
	}),
});
