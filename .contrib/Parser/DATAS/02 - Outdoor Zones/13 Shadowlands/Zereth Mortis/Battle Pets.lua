---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(SHADOWLANDS, bubbleDown({ ["timeline"] = { ADDED_9_2_0 } }, {
	m(ZERETH_MORTIS, {
		petbattle(filter(BATTLE_PETS, {
			pet(3216, {	-- Ambystan Snapper (PET!)
				["coords"] = {
					{ 35.0, 56.0, ZERETH_MORTIS },
					{ 35.4, 44.2, ZERETH_MORTIS },
					{ 39.2, 33.8, ZERETH_MORTIS },
					{ 39.2, 71.4, ZERETH_MORTIS },
					{ 45.4, 65.0, ZERETH_MORTIS },
					{ 48.0, 73.8, ZERETH_MORTIS },
				},
			}),
			pet(3217, {	-- Aurelid Floater (PET!)
				["description"] = "Only spawns at these coords, & can be non-combat. Kill and wait for respawns if needed.",
				["coords"] = {
					{ 57.4, 82.3, ZERETH_MORTIS },
					{ 52.4, 75.1, ZERETH_MORTIS },
					{ 64.5, 68.8, ZERETH_MORTIS },
					{ 35.6, 72.1, ZERETH_MORTIS },
				},
			}),
			pet(3212),	-- Bloodsucker Vespoid (PET!)
			pet(3173),	-- Bufonid Croaker (PET!)
			pet(3206, {	-- Emerald Scarabid (PET!)
				["description"] = "Found in the sand-covered parts of the zone.",
			}),
			n(183349, {	-- Agitated Poultrid
				["description"] = "This npc can spawn around Zereth Mortis where Wild Poultrids are. Do /chicken to start a pet battle.",
				["crs"] = { 183286 },	-- Enraged Poultrid
				["coords"] = {
					{ 44, 92, ZERETH_MORTIS },
					{ 48, 81, ZERETH_MORTIS },
					{ 31.3, 55.3, ZERETH_MORTIS },
					{ 39.6, 55.5, ZERETH_MORTIS },
					{ 48.7, 95.6, ZERETH_MORTIS },
				},
				["g"] = {
					pet(3218),	-- Enraged Poultrid (PET!)
				},
			}),
			pet(3210),	-- Green Viperid (PET!)
			pet(3209),	-- King Viperid (PET!)
			pet(3215, {	-- Mawtouched Geomental (PET!)
				["description"] = "Requires eating a Questionable Mawshroom from Korthia to see.",
				["provider"] = { "i", 187244 },	-- Questionable Mawshroom
				["coords"] = {
					{ 61.4, 73.6, ZERETH_MORTIS },
					{ 61.8, 67.6, ZERETH_MORTIS },
					{ 64.2, 71.0, ZERETH_MORTIS },
				},
			}),
			pet(3205),	-- Metallic Scarabid (PET!)
			pet(3214),	-- Momma Vombata (PET!)
			pet(3219),	-- Predatory Gastropod (PET!)
			pet(3196),	-- Proto Avian Fledgling (PET!)
			pet(3208),	-- Red Viperid (PET!)
			pet(3200,{	-- Scarlet Proto Avian (PET!)
				["description"] = "Rare spawn of Proto-Avian Fledgling. Best chances are killing critters around the Genesis Vestibule. Good luck!",
				["coord"] = { 30, 54, ZERETH_MORTIS },
			}),
			pet(3203),	-- Tarachnid Ambusher (PET!)
			pet(3202),	-- Tarachnid Stalker (PET!)
			pet(3191),	-- Timid Leporid (PET!)
			pet(3180, {	-- Venomous Bufonid (PET!)
				["coords"] = {
					{ 36.6, 70.6, ZERETH_MORTIS },
					{ 44.8, 58.6, ZERETH_MORTIS },
					{ 47.6, 85.8, ZERETH_MORTIS },
					{ 50.6, 74.6, ZERETH_MORTIS },
					{ 58.2, 82.2, ZERETH_MORTIS },
					{ 60.2, 72.2, ZERETH_MORTIS },
					{ 76.8, 45.4, ZERETH_MORTIS },
					{ 77.2, 51.8, ZERETH_MORTIS },
					{ 77.6, 58.8, ZERETH_MORTIS },
					{ 81.0, 46.0, ZERETH_MORTIS },
				},
			}),
			pet(3190),	-- Vicious Leporid (PET!)
			pet(3213),	-- Vombata Pup (PET!)
		})),
	}),
})));