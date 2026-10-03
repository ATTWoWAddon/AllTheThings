---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(DRAGON_ISLES, bubbleDown({ ["timeline"] = { ADDED_10_0_2_LAUNCH } }, {
	m(VALDRAKKEN, {
		petbattle(filter(BATTLE_PETS, {
			["sym"] = {{"select","speciesID",
				3307,	-- Plucky Duckling (PET!)
				3301,	-- Wild Duckling (PET!)
			}},
		})),
	}),
})));
