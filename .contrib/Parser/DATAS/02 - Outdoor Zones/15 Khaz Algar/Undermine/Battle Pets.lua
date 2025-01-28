---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(KHAZ_ALGAR, bubbleDown({ ["timeline"] = { ADDED_11_1_0 } }, {
	m(UNDERMINE, {
		petbattle(filter(BATTLE_PETS, {
			pet(4652),	-- Acid-Drenched Rat
			pet(4656),	-- Bombshell Crab
			pet(4658),	-- Cave Crab
			pet(4660),	-- Paleshell Crab
			pet(4668),	-- Ultrahopper EX
			pet(4654),	-- Underroach
			pet(4662),	-- Varmint MK II
			pet(4657),	-- Venture Bombshell
			pet(4651),	-- Wily Rat
			-- in Zuldazar
			pet(4659, {	-- Kaja Crab
				["coord"] = { 22.5, 59.8, ZULDAZAR },
			}),
			pet(4666, {	-- Tropical Frog
				["coord"] = { 21.9, 56.1, ZULDAZAR },
			}),
			-- in Ringing Deeps
			pet(4484, {	-- Frenzied Bloodtick
				["coord"] = { 68.1, 90.8, THE_RINGING_DEEPS },
			}),
			pet(4507, {	-- Hemospore (TODO: wasn't in area when Frenzied Bloodtick is up?)
				["coord"] = { 73.6, 95.0, THE_RINGING_DEEPS },
			}),
		})),
	}),
})));