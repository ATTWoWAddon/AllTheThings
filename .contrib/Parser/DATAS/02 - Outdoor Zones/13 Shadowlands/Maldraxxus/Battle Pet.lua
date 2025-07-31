---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(SHADOWLANDS, bubbleDown({ ["timeline"] = { ADDED_9_0_2_LAUNCH } }, {
	m(MALDRAXXUS, {
		petbattle(filter(BATTLE_PETS, {
			pet(3051, {	-- Animated Cruor (PET!)
				["description"] = "Found commonly in the House of Constructs and northeast of Theatre of Pain.",
				["coords"] = {
					{ 31.8, 28.6, MALDRAXXUS },
					{ 56.2, 41.8, MALDRAXXUS },
					{ 32.0, 23.4, MALDRAXXUS },
				},
			}),
			pet(3050, {	-- Bleak Skitterer (PET!)
				["description"] = "Found close to these few coords.",
				["coords"] = {
					{ 38.4, 32.8, MALDRAXXUS },
					{ 53.6, 59.8, MALDRAXXUS },
					{ 64.2, 36.6, MALDRAXXUS },
				},
			}),
			pet(2950, {	-- Clutch (PET!)
				["description"] = "Normally found only around this coord.",
				["coord"] = { 31.8, 28.6, MALDRAXXUS },
			}),
			pet(3083, {	-- Crawbat (PET!)
				["description"] = "Found commonly around the outside of the ToP arena.",
			}),
			pet(3052, {	-- Necroray Spawnling (PET!)
				["description"] = "Found around the green slime pools (1) above the House of Plagues and (2) SW of the House of Eyes.",
				["coords"] = {
					{ 73.6, 51.2, MALDRAXXUS },
					{ 45.0, 30.4, MALDRAXXUS },
				},
			}),
			pet(3049, {	-- Pulsating Maggot (PET!)
				["description"] = "Found commonly around the outside of the ToP arena.",
			}),
		})),
	}),
})));
