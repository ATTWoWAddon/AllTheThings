---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(KHAZ_ALGAR, {
	m(HALLOWFALL, {
		n(VENDORS, {
			n(217989, {	-- Aeden Braesmeld
				["coord"] = { 42.0, 54.6, HALLOWFALL },
				["groups"] = {
					i(227543, {	-- Preserved Arathi Hatchet
						["cost"] = { { "c", RESONANCE_CRYSTALS, 500 } },
					}),
					i(227542, {	-- Preserved Arathi Sword
						["cost"] = { { "c", RESONANCE_CRYSTALS, 500 } },
					}),
					i(227545, {	-- Preserved Deep-Dweller's Cudgel
						["cost"] = { { "c", RESONANCE_CRYSTALS, 500 } },
					}),
					i(227546, {	-- Preserved Deep-Dweller's Dirk
						["cost"] = { { "c", RESONANCE_CRYSTALS, 500 } },
					}),
					i(227544, {	-- Preserved Deep-Dweller's Staff
						["cost"] = { { "c", RESONANCE_CRYSTALS, 500 } },
					}),
					-- double up from quest reward?
					i(220507, {	-- Lamplighter's Torch
						["cost"] = { { "c", RESONANCE_CRYSTALS, 500 } },
					}),
					i(220508, {	-- Lamplighter's Unlit Torch
						["cost"] = { { "c", RESONANCE_CRYSTALS, 500 } },
					}),
				},
			}),
			n(217642, {	-- Nalina Ironsong <Innkeeper>
				["coord"] = { 42.8, 55.8, HALLOWFALL },
				["groups"] = {
					i(260583, {	-- Arathi Bartender's Shelves (DECOR!)
						["timeline"] = { ADDED_11_2_7 },
						["cost"] = { { "c", RESONANCE_CRYSTALS, 500 } },
					}),
				},
			}),
			n(214380, {	-- Raen Dawncavalyr
				["coord"] = { 43.3, 56.4, HALLOWFALL },
				["groups"] = {
					i(227694, {	-- Preserved Begrimed Greathelm
						["cost"] = { { "c", RESONANCE_CRYSTALS, 200 } },
					}),
					i(227696, {	-- Preserved Distressed Visor
						["cost"] = { { "c", RESONANCE_CRYSTALS, 200 } },
					}),
					i(227697, {	-- Preserved Moth-Ridden Hood
						["cost"] = { { "c", RESONANCE_CRYSTALS, 200 } },
					}),
					i(227695, {	-- Preserved Pierced Helm
						["cost"] = { { "c", RESONANCE_CRYSTALS, 200 } },
					}),
				},
			}),
			n(217645, {	-- Torran Dellain
				["coord"] = { 69.3, 43.9, HALLOWFALL },
				["groups"] = {
					i(225238),	-- Meaty Haunch
				},
			}),
		}),
	}),
}));
