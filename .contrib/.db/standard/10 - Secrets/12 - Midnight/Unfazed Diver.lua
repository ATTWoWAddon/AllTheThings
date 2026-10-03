-------------------------------------------
--     S E C R E T S     M O D U L E     --
-------------------------------------------

root(ROOTS.Secrets, expansion(EXPANSION.MID, {
	header(HEADERS.Item, 246723, bubbleDownSelf({ ["timeline"] = { ADDED_12_0_7 } }, {	-- Unfazed Diver
		["level"] = 90,
		["groups"] = {
			o(656056, {	-- Bill of Lading
				["description"] = "In Untethered Space on the floor to the left of the counter.",
				["provider"] = { "i", 235499 },	-- Reshii Wraps
				["coord"] = { 46.9, 58.6, KARESH_TAZAVESH },
				["questID"] = 97098,
				["groups"] = {
					i(275670),	-- Bill of Lading
					i(275665),	-- Phase-Displaced Toy
				},
			}),
			o(656049, {	-- Odd Smelling Crate
				["coord"] = { 48.2, 70.3, MAP.MIDNIGHT.VOIDSTORM },
				["questID"] = 97099,
			}),
			i(276465, {	-- Specimen Container Key
				["cr"] = 265891,	-- Hal'hadar Manatech
			}),
			o(658801, {	-- Specimen Container
				["description"] = "Currently only visible in Normal World Tier.",
				["coord"] = { 71.5, 45.3, NAIGTAL },
				["cost"] = { { "i", 276465, 1 } },	-- Specimen Container Key
				["groups"] = { i(246723) },	-- Unfazed Diver (PET!)
			}),
		},
	})),
}));
