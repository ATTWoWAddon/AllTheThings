---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, {
	m(BROKEN_ISLES, {
		m(BROKEN_SHORE, {
			explorationHeader({
				visit_exploration(8715,{coord={39.6,30.1,BROKEN_SHORE}}),	-- Blood Nest
				exploration(8552),	-- Broken Valley
				exploration(8577),	-- Cinder Run
				visit_exploration(8547,{coord={54.5,64.7,BROKEN_SHORE}}),	-- Coast of Anguish
				exploration(8519),	-- Crescent Ruins
				exploration(8602),	-- Dark Stockades
				visit_exploration(8143,{coord={31.6,32.7,BROKEN_SHORE}}),	-- Darkstone Isle
				exploration(8587),	-- Deadwood Landing
				exploration(8554),	-- Deliverance Point
				visit_exploration(8516,{coord={55.6,26.8,BROKEN_SHORE}}),	-- Felbreach Hollow
				visit_exploration(8558,{coord={58.4,54.5,BROKEN_SHORE}}),	-- Feldust Cavern
				exploration(8506),	-- Felfire Pass
				exploration(8548),	-- Felrage Strand
				visit_exploration(8592,{coord={66.5,34.1,BROKEN_SHORE}}),	-- Felsworn Vault
				exploration(8571),	-- Forlorn Depths
				visit_exploration(8557,{coord={61.6,56.8,BROKEN_SHORE}}),	-- Foulshore Strip
				exploration(8551),	-- Garrison of the Fel
				exploration(7798, {	-- Hope's End
					-- NOTE: This is exclusive to the scenario when you attempt to rescue Tirion.
					-- TODO: Determine if you can collect it in there.
					["collectible"] = false,
				}),
				exploration(8530),	-- Impsorrow Approach
				exploration(8576),	-- Jagged Cove
				visit_exploration(8572,{coord={55.1,63.1,BROKEN_SHORE}}),	-- Maw of Corruption
				visit_exploration(8542,{coord={73.2,36.8,BROKEN_SHORE}}),	-- Moonlight Ascent
				exploration(8643),	-- Path of Suffering
				exploration(8580),	-- Scavenger's Edge
				exploration(8555),	-- Screaming Cliffs
				visit_exploration(8593,{coord={43.0,37.3,BROKEN_SHORE}}),	-- Shadow Fracture
				exploration(8590),	-- Soldier's Torment
				exploration(8584),	-- Soul Ruin
				visit_exploration(8603,{coord={38.8,58.8,BROKEN_SHORE}}),	-- Stonefin Shoals
				visit_exploration(8707,{coord={87.7,29.3,BROKEN_SHORE}}),	-- Strand's End
				exploration(8545),	-- The Creeping Grotto
				visit_exploration(8550,{coord={49.7,54.7,BROKEN_SHORE}}),	-- The Hijacked Portal
				visit_exploration(8588,{coord={45.5,66.9,BROKEN_SHORE}}),	-- The Pit of Agony
				exploration(7797, {	-- The Shattered Edge
					-- NOTE: This is exclusive to the scenario when you attempt to rescue Tirion.
					-- TODO: Determine if you can collect it in there.
					["collectible"] = false,
				}),
				exploration(8336),	-- The Tomb of Sargeras
				visit_exploration(8515,{coord={55.3,36.5,BROKEN_SHORE}}),	-- The Twisted Grounds
				exploration(8543),	-- The Weeping Terrace
				exploration(8560),	-- Vengeance Point
				exploration(8553),	-- Wrynnfall
			}),
		}),
	}),
});
