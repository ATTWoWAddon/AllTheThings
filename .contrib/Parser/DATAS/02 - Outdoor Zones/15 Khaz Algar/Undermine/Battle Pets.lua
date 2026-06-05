---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(KHAZ_ALGAR, {
	m(UNDERMINE, {
		petbattle(filter(BATTLE_PETS, {
			pet(4652, {	-- Acid-Drenched Rat (PET!)
				["coords"] = {
					{ 33.1, 66.4, UNDERMINE },
				},
			}),
			pet(4693, {	-- Alchemical Runoff (PET!)
				["coords"] = {
					{ 40.6, 79.8, UNDERMINE },
				},
			}),
			pet(4656, {	-- Bombshell Crab (PET!)
				["coords"] = {
					{ 50.6, 31.6, UNDERMINE },
				},
			}),
			pet(4658, {	-- Cave Crab (PET!)
				["coords"] = {
					{ 67.5, 23.7, UNDERMINE },
					{ 69.8, 25.4, UNDERMINE },
				},
			}),
			pet(4663, {	-- Lime Roboclucker (PET!)
				["coords"] = {
					{ 41.4, 10.3, UNDERMINE },
				},
			}),
			pet(4660, {	-- Paleshell Crab (PET!)
				["coords"] = {
					{ 64.7, 30.8, UNDERMINE },
				},
			}),
			pet(4667, {	-- Spring-Loaded Ribbitron (PET!)
				["description"] = "Backline pet only",
			}),
			pet(4668, {	-- Ultrahopper EX (PET!)
				["description"] = "Very long Respawn. Patrols the listed coords.",
				["coords"] = {
					{ 34.6, 23.6, UNDERMINE },
					{ 36.4, 27.6, UNDERMINE },
					{ 33.6, 25.5, UNDERMINE },
					{ 30.3, 30.8, UNDERMINE },
				},
			}),
			pet(4654, {	-- Underroach (PET!)
				["coords"] = {
					{ 28.0, 64.3, UNDERMINE },
					{ 35.1, 86.4, UNDERMINE },
					{ 42.1, 79.6, UNDERMINE },
					{ 44.2, 89.9, UNDERMINE },
					{ 44.9, 68.9, UNDERMINE },
					{ 45.1, 47.6, UNDERMINE },
					{ 48.8, 79.9, UNDERMINE },
					{ 55.0, 47.2, UNDERMINE },
					{ 56.8, 74.3, UNDERMINE },
				},
			}),
			pet(4662, {	-- Varmint MK II (PET!)
				["coords"] = {
					{ 69.7, 81.1, UNDERMINE },
				},
			}),
			pet(4657, {	-- Venture Bombshell (PET!)
				["coords"] = {
					{ 64.2, 78.6, UNDERMINE },
					{ 66.2, 86.6, UNDERMINE },
				},
			}),
			pet(4651, {	-- Wily Rat (PET!)
				["coords"] = {
					{ 40.4, 47.6, UNDERMINE },
					{ 41.3, 11.2, UNDERMINE },
					{ 55.3, 65.8, UNDERMINE },
					{ 62.9, 74.0, UNDERMINE },
				},
			}),
			header(HEADERS.Map, ZULDAZAR, {
				pet(4659, {	-- Kaja Crab (PET!)
					["coord"] = { 22.5, 59.8, ZULDAZAR },
				}),
				pet(4666, {	-- Tropical Frog (PET!)
					["coord"] = { 21.9, 56.1, ZULDAZAR },
				}),
			}),
			header(HEADERS.Map, THE_RINGING_DEEPS, {
				pet(4484, {	-- Frenzied Bloodtick (PET!)
					["coord"] = { 68.1, 90.8, THE_RINGING_DEEPS },
				}),
				pet(4507, {	-- Hemospore (PET!)
					["coord"] = { 73.6, 95.0, THE_RINGING_DEEPS },
				}),
			}),
		})),
	}),
}));
