---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(KHAZ_ALGAR, {
	m(DORNOGAL, {
		petbattle(filter(BATTLE_PETS, {
			pet(4518, {	-- Magmashell Crawler (PET!)
				["coords"] = {
					{ 47.9, 56.0, DORNOGAL },
					{ 41.1, 13.0, THE_RINGING_DEEPS },
				},
			}),
		})),
	}),
}));
