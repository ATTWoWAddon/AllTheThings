---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(SHADOWLANDS, bubbleDown({ ["timeline"] = { ADDED_9_1_0 } }, {
	m(KORTHIA, {
		petbattle(filter(BATTLE_PETS, {
			pet(3102, {		-- Animite Broodling (PET!)
				["coords"] = {
					{ 51.9, 23.5, KORTHIA },
					{ 40.0, 51.3, KORTHIA },
				},
			}),
			pet(3134, {		-- Anxious Nibbler (PET!)
				["coords"] = {
					{ 37.6, 33.6, KORTHIA },
					{ 45.8, 36.2, KORTHIA },
				},
			}),
			pet(3139, {		-- Devourling (PET!)
				["coords"] = {
					{ 54.0, 19.8, KORTHIA },
					{ 34.0, 46.0, KORTHIA },
				},
			}),
			pet(3126, {		-- Eye of Affliction (PET!)
				["coords"] = {
					{ 60.4, 34.6, KORTHIA },
					{ 60.4, 55.0, KORTHIA },
					{ 49.6, 51.8, KORTHIA },
				},
			}),
			pet(3141, {		-- Wild Corpsefly (PET!)
				["description"] = "This is a secondary battle pet that has a chance to join the battle.\nAppears in 9 different colors.",
				["coords"] = {
					{ 40.0, 48.0, KORTHIA },
				},
			}),
			pet(3135, {		-- Young Garnetgullet (PET!)
				["coords"] = {
					{ 50.7, 27.0, KORTHIA },
					{ 45.8, 33.6, KORTHIA },
				},
			}),
		})),
	}),
})));
