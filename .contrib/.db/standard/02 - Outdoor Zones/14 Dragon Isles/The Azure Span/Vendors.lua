---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(DRAGON_ISLES, bubbleDown({ ["timeline"] = { ADDED_10_0_2_LAUNCH } }, {
	m(THE_AZURE_SPAN, {
		n(VENDORS, {
			n(186446, {	-- Elder Nappa <Innkeeper>
				["coord"] = { 12.4, 49.4, THE_AZURE_SPAN },
				["groups"] = {
					i(194689),	-- Anchovy Crisps
					i(194683),	-- Buttermilk
					i(194692),	-- Distilled Fish Juice
					i(194693),	-- Improvised Sushi
					i(197850),	-- Mammoth Dumpling
				},
			}),
			n(193637, {	-- Jinkutuk
				["coord"] = { 13.9, 49.5, THE_AZURE_SPAN },
				["groups"] = {
					i(192153),	-- Frigidfish
					i(198104, {	-- Recipe: Blubbery Muffin (RECIPE!)
						["cost"] = {
							{ "i", 197772, 1 },	-- 1x Churnbelly Tea
							{ "i", 197760, 20 },	-- 20x Mackeral Snackeral
						},
					}),
				},
			}),
			n(196069, {	-- Patchu
				["coord"] = { 13.9, 49.8, THE_AZURE_SPAN },
				["groups"] = {
					i(192459, {	-- Jean's Lucky Fish (PET!)
						["cost"] = { { "i", POLISHED_PET_CHARM, 300 } },
					}),
					i(200927, {	-- Petal (PET!)
						["cost"] = { { "i", POLISHED_PET_CHARM, 100 } },
					}),
					i(201703, {	-- Pinkie (PET!)
						["cost"] = { { "i", POLISHED_PET_CHARM, 500 } },
					}),
					i(193071, {	-- Pistachio (PET!)
						["cost"] = { { "i", POLISHED_PET_CHARM, 50 } },
					}),
					i(201441, {	-- Scout (PET!)
						["cost"] = { { "i", POLISHED_PET_CHARM, 5000 } },
					}),
					i(201707, {	-- Troubled Tome (PET!)
						["cost"] = { { "i", POLISHED_PET_CHARM, 200 } },
					}),
				},
			}),
			n(199448, {	-- Tattukiaka <Ottuk Trader>
				["coord"] = { 14.0, 49.6, THE_AZURE_SPAN },
				["groups"] = {
					i(198871, {	-- Iskaara Trader's Ottuk (MOUNT!)
						["cost"] = {
							{ "i", 195496, 1 },	-- 1x Eye of the Vengeful Hurricane
							{ "i", 195502, 1 },	-- 1x Terros's Captive Core
						},
					}),
					i(198873, {	-- Ivory Trader's Ottuk (MOUNT!)
						["cost"] = {
							{ "i", 193708, 1 },	-- 1x Platinum Star Band
							{ "i", 193696, 1 },	-- 1x Thunderous Downburst Ring
							{ "i", 193633, 1 },	-- 1x Unstable Arcane Loop
						},
					}),
				},
			}),
			n(192560, {	-- Elder Nappa <Innkeeper>
				["coord"] = { 13.2, 49.6, THE_AZURE_SPAN },
				["groups"] = {
					i(197847),	-- Gorloc Fin Soup
				},
			}),
			n(189460, {	-- Vel Tal IX
				["coord"] = { 37.4, 62.4, THE_AZURE_SPAN },
				["groups"] = {
					i(197853),	-- Critter Kebab
					i(197854),	-- Enchanted Argali Tenderloin
					i(197851),	-- Extra Crispy Mutton
					i(197852),	-- Goat Brisket
					i(194694),	-- Seasoned Hornswog Steak
					i(194681),	-- Sugarwing Cupcake
					i(194688),	-- Vorquin Filet
				},
			}),
		}),
	}),
})));
