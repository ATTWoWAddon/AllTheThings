---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(SHADOWLANDS, bubbleDown({ ["timeline"] = { ADDED_9_0_2_LAUNCH } }, {
	m(ARDENWEALD, {
		petbattle(filter(BATTLE_PETS, {
			pet(3081, {	-- Decay Grub (PET!)
				["description"] = "Found around Heartwood Grove, along the path of coords.",
				["coords"] = {
					{ 61.2, 31.8, ARDENWEALD },
					{ 64.2, 23.6, ARDENWEALD },
					{ 71.0, 29.2, ARDENWEALD },
					{ 72.2, 38.2, ARDENWEALD },
				},
			}),
			pet(3021, {	-- Deepwood Leaper (PET!)
				["description"] = "Found in most of southeast Ardenweald. Coords are general locations.",
				["coords"] = {
					{ 51.2, 55.6, ARDENWEALD },
					{ 38.8, 64.6, ARDENWEALD },
					{ 37.8, 52.0, ARDENWEALD },
					{ 28.6, 58.6, ARDENWEALD },
				},
			}),
			pet(2919, {	-- Gorm Rootstinger (PET!)
				["description"] = "Found in the areas around these coords.",
				["coords"] = {
					{ 68.8, 56.6, ARDENWEALD },
					{ 30.0, 50.6, ARDENWEALD },
				},
			}),
			pet(3082, {	-- Starmoth (PET!)
				["description"] = "Found south of Glitterfall Basin in large area around coord.",
				["coord"] = { 53.0, 34.4, ARDENWEALD },
			}),
			pet(2924, {	-- Tranquil Wader (PET!)
				["description"] = "Found between Hibernal Hollow and Heart of the Forest.",
				["coords"] = {
					{ 54.2, 55.2, ARDENWEALD },
					{ 55.2, 60.8, ARDENWEALD },
					{ 50.6, 60.2, ARDENWEALD },
				},
			}),
			pet(3080, {	-- Verdant Kit (PET!)
				["description"] = "Found west of Heart of the Forest.",
				["coords"] = {
					{ 42.6, 54.6, ARDENWEALD },
					{ 41.2, 49.8, ARDENWEALD },
				},
			}),
		})),
	}),
})));
