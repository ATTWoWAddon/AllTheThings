---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(SHADOWLANDS, bubbleDown({ ["timeline"] = { ADDED_9_0_2_LAUNCH } }, {
	m(REVENDRETH, {
		petbattle(filter(BATTLE_PETS, {
			pet(2902),	-- Dusky Dredwing Pup (PET!)
			pet(2895, {	-- Lost Soul (PET!)
				["description"] = "Shares spawn timer with Rosetipped Spiderling in The Banewood, killing any you see will increase spawn chances.",
			}),
			pet(3014, {	-- Mire Creeper (PET!)
				["description"] = "There is only one of these up at a time, and it runs around pools in The Endmire. Respawn time of ~5 minutes if it dies.",
				["coord"] = { 56.0, 59.0, REVENDRETH},
			}),
			pet(3007),	-- Rosetipped Spiderling (PET!)
			pet(3015),	-- Withering Creeper (PET!)
		})),
	}),
})));
