---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(DRAGON_ISLES, bubbleDown({ ["timeline"] = { ADDED_10_1_0 } }, {
	m(ZARALEK_CAVERN, {
		petbattle(filter(BATTLE_PETS, {
			-- Helpful info https://www.wowhead.com/achievement=17879/zaralek-cavern-safari#comments:id=5603133
			pet(3483, {	-- Boulderfang (PET!)
				["coord"] = { 48.9, 58.2, ZARALEK_CAVERN },
			}),
			pet(3482, {	-- Cobbleshell (PET!)
				["coord"] = { 59.8, 58.3, ZARALEK_CAVERN },
			}),
			pet(3488, {	-- Deepridger (PET!)
				["description"] = "Rarespawn of Slabwing. Cannot be Backline.",
				["coord"] = { 42.2, 67.4, ZARALEK_CAVERN },
			}),
			pet(3490, {	-- Ebonwing Moth (PET!)
				["description"] = "Rarespawn of Hollow Moth. Cannot be Backline.",
				["coord"] = { 44.7, 66.4, ZARALEK_CAVERN },
			}),
			pet(3480, {	-- Endmite (PET!)
				["coord"] = { 53.6, 45.3, ZARALEK_CAVERN },
			}),
			pet(3485, {	-- Hollow Moth (PET!)
				["coord"] = { 44.6, 66.4, ZARALEK_CAVERN },
			}),
			pet(3486, {	-- Lithengale (PET!)
				["description"] = "Rarespawn of Rock Martin. Cannot be Backline.",
				["coord"] = { 45.7, 69.7, ZARALEK_CAVERN },
			}),
			pet(3477, {	-- Puddlehopper (PET!)
				["coord"] = { 47.5, 37.4, ZARALEK_CAVERN },
			}),
			pet(3478, {	-- Rock Martin (PET!)
				["coord"] = { 50.6, 40.1, ZARALEK_CAVERN },
			}),
			pet(3487, {	-- Scarlapod (PET!)
				["description"] = "Rarespawn of Cobbleshell. Cannot be Backline.",
				["coord"] = { 59.8, 58.3, ZARALEK_CAVERN },
			}),
			pet(3484, {	-- Slabwing (PET!)
				["coord"] = { 49.3, 53.4, ZARALEK_CAVERN },
			}),
			pet(3481, {	-- Stonewhisker (PET!)
				["coord"] = { 53.6, 46.2, ZARALEK_CAVERN },
			}),
			pet(3489, {	-- Sunglow Cobra (PET!)
				["coord"] = { 50.6, 34.6, ZARALEK_CAVERN },
			}),
			pet(3479, {	-- Yellabon (PET!)
				["coord"] = { 52.1, 45.0, ZARALEK_CAVERN },
			}),
		})),
	}),
})));
