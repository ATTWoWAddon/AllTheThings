---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(KHAZ_ALGAR, bubbleDown({ ["timeline"] = { ADDED_11_0_2 } }, {
	m(DORNOGAL, {
		n(ACHIEVEMENTS, {
			ach(40606, {	-- Flat Earthen
				["description"] = "Stand at the coordinates and let the machine crush you.",
				["coord"] = { 50.0, 62.0, DORNOGAL },	-- The Forgegrounds
			}),
			-- TODO: These might need to be moved, the quest starts in Dorn but that might not be the best home.
			a(ach(41818, {	-- Rise of the Red Dawn (A)
				["timeline"] = { ADDED_11_1_7 },
				["groups"] = {
					title(630),	-- <Name> of Stromgarde
				},
			})),
			h(ach(41820, {	-- Rise of the Red Dawn (H)
				["timeline"] = { ADDED_11_1_7 },
				["groups"] = {
					title(629),	-- <Name> of Hammerfall
				},
			})),
		}),
	}),
})));