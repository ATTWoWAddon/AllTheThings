---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(KHAZ_ALGAR, {
	m(UNDERMINE, {
		petbattle(filter(BATTLE_PETS, {
			pet(4652),	-- Acid-Drenched Rat (PET!)
			pet(4693),	-- Alchemical Runoff (PET!)
			pet(4656),	-- Bombshell Crab (PET!)
			pet(4658),	-- Cave Crab (PET!)
			pet(4663),	-- Lime Roboclucker (PET!)
			pet(4660),	-- Paleshell Crab (PET!)
			pet(4667),	-- Spring-Loaded Ribbitron (PET!)
			pet(4668, {	-- Ultrahopper EX (PET!)
				["description"] = "Very long Respawn",
				["coords"] = {
					{ 36.0, 24.4, UNDERMINE },
					{ 32.0, 27.6, UNDERMINE },
				},
			}),
			pet(4654),	-- Underroach (PET!)
			pet(4662),	-- Varmint MK II (PET!)
			pet(4657),	-- Venture Bombshell (PET!)
			pet(4651),	-- Wily Rat (PET!)
			-- in Zuldazar
			pet(4659, {	-- Kaja Crab (PET!)
				["description"] = "In Zuldazar",
				["coord"] = { 22.5, 59.8, ZULDAZAR },
			}),
			pet(4666, {	-- Tropical Frog (PET!)
				["description"] = "In Zuldazar",
				["coord"] = { 21.9, 56.1, ZULDAZAR },
			}),
			-- in Ringing Deeps
			pet(4484, {	-- Frenzied Bloodtick (PET!)
				["description"] = "In Ringing Deeps",
				["coord"] = { 68.1, 90.8, THE_RINGING_DEEPS },
			}),
			pet(4507, {	-- Hemospore (PET!)
				["description"] = "In Ringing Deeps",
				["coord"] = { 73.6, 95.0, THE_RINGING_DEEPS },
			}),
		})),
	}),
}));
