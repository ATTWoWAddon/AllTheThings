---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(KHAZ_ALGAR, bubbleDown({ ["timeline"] = { ADDED_11_0_7 } }, {
	m(SIREN_ISLE, {
		petbattle(filter(BATTLE_PETS, {
			pet(4724),	-- Battleboar Piglet (vrykul?)
			pet(4703),	-- Cave Kroling
			pet(4723),	-- Cliffreach Cub
			pet(4710),	-- Pillaged Parrot (pirates/vrykul)
			--pet(2541),	-- Proper Parrot (in-game journal: drop Pirates) (itemID 166358?)
			--pet(4709),	-- Rock Hound Mica (in-game journal: unique - probably some secret/special?) (creatureID 234366/itemID 233057/spellID 473127, missing Siren Isle in wago tables)
			pet(4702),	-- Rusty Kroling
			pet(4711, {	-- Snapdragon Pup
				["description"] = "Only spawns during Naga invasion week.",
			}),
			pet(4628),	-- Tidal Kroling (pirates/vrykul)
			--pet(4725),	-- Titan Orb (wago - drop, missing description, spellID 474730, NYI?)
		})),
	}),
})));