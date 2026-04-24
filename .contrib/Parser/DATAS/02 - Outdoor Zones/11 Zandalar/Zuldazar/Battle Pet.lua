---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(ZANDALAR, bubbleDown({ ["timeline"] = { ADDED_8_0_1 } }, {
	m(ZULDAZAR, {
		petbattle(filter(BATTLE_PETS, {
			pet(2537, {	-- Baby Zandalari Raptor (PET!)
				["coord"] = { 71.2, 41.2, ZULDAZAR },
				["timeline"] = { ADDED_8_1_0 },
			}),
			pet(2385, {	-- Barrier Hermit (PET!)
				["description"] = "Found commonly on the shorelines of Tusk Isle and Isle of Fang, islands south of Zuldazar."
			}),
			pet(2387, {	-- Golden Beetle (PET!)
				["description"] = "Found at the coord in Atal'Dazar area, as well as alongside Barrier Hermits.",
				["coord"] = { 42.8, 39.2, ZULDAZAR },
			}),
			pet(2390, {	-- Leafy Flutterwing (PET!)
				["description"] = "Found mosly along walkways in east Zuldazar.",
				["coords"] = {
					{ 77.0, 14.8, ZULDAZAR },
					{ 72.6, 20.2, ZULDAZAR },
					{ 71.6, 29.8, ZULDAZAR },
					{ 71.6, 39.0, ZULDAZAR },
					{ 79.6, 46.2, ZULDAZAR },
				},
			}),
			pet(2384, {	-- Shore Butterfly (PET!)
				["description"] = "Found on the SW coasts of Tusk Isle and Isle of Fang, may be easier to find as a backline.",
				["coords"] = {
					{ 60.2, 75.8, ZULDAZAR },
					{ 59.4, 79.6, ZULDAZAR },
					{ 54.6, 89.6, ZULDAZAR },
					{ 56.8, 95.4, ZULDAZAR },
				},
			}),
		})),
	}),
})));
