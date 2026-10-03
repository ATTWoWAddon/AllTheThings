---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(MAP.MIDNIGHT.QUELTHALAS, {
	m(MAP.MIDNIGHT.THE_COILED_ISLE, {
		n(VENDORS, {
			n(256688, {	-- Ata'leki <Spectral Foods Vendor>
				["coord"] = { 69.6, 52.1, MAP.MIDNIGHT.THE_COILED_ISLE },
				["groups"] = {
					i(280422),	-- Spirit Sprouts
				},
			}),
			n(270399, {	-- Firetender Zab'ni <Decor Specialist>
				["coord"] = { 58.6, 45.9, MAP.MIDNIGHT.THE_COILED_ISLE },
				["groups"] = {
					i(279452, {	-- "Summoning of Ula'tek" Mural (DECOR!)
						["cost"] = { { "c", VOIDLIGHT_MARL, 500 } },
					}),
					i(279508, {	-- "The Hunger Awakens" Mural (DECOR!)
						["cost"] = { { "c", VOIDLIGHT_MARL, 500 } },
					}),
					i(263873, {	-- Amani Forge (DECOR!)
						["cost"] = { { "c", VOIDLIGHT_MARL, 500 } },
					}),
					i(281582, {	-- Atal'Utek Ivy (DECOR!)
						["cost"] = { { "c", VOIDLIGHT_MARL, 150 } },
					}),
					i(271609, {	-- Destroyed Clutch of Ula'tek (DECOR!)
						["cost"] = { { "c", VOIDLIGHT_MARL, 150 } },
					}),
					i(271176, {	-- Feathered Ula'tek Talisman (DECOR!)
						["cost"] = { { "c", VOIDLIGHT_MARL, 150 } },
					}),
					i(244345, {	-- Forgotten Amani Urn (DECOR!)
						["cost"] = { { "c", VOIDLIGHT_MARL, 150 } },
					}),
					i(279285, {	-- Lost Tortollan Scroll (DECOR!)
						["cost"] = { { "c", VOIDLIGHT_MARL, 150 } },
					}),
					i(248962, {	-- Mysterious Voodoo Mask (DECOR!)
						["cost"] = { { "c", VOIDLIGHT_MARL, 150 } },
					}),
					i(271851, {	-- Oozing Vilescar Barricade (DECOR!)
						["cost"] = { { "c", VOIDLIGHT_MARL, 250 } },
					}),
					i(281580, {	-- Pungent Atal-Utek Shroom (DECOR!)
						["cost"] = { { "c", VOIDLIGHT_MARL, 250 } },
					}),
					i(280218, {	-- Tortollan Scholar Satchel (DECOR!)
						["cost"] = { { "c", VOIDLIGHT_MARL, 150 } },
					}),
					i(271175, {	-- Venomjade Necklace (DECOR!)
						["cost"] = { { "c", VOIDLIGHT_MARL, 150 } },
					}),
					i(279292, {	-- Zul'Aman Pine Tree (DECOR!)
						["cost"] = { { "c", VOIDLIGHT_MARL, 250 } },
					}),
				},
			}),
			n(256686, {	-- Mab'jul <Spectral Drinks Vendor>
				["coord"] = { 69.3, 52.2, MAP.MIDNIGHT.THE_COILED_ISLE },
				["groups"] = {
					i(280425),	-- Afterlife Ale
					i(266435, {	-- Ki'clak Snack
						["cost"] = { { "i", 267085, 10 } },	-- Swirling Ectoplasm
					}),
				},
			}),
			n(253843, {	-- Navigator Otoola <Watcher of Sea Stars>
				["coord"] = { 57.2, 48.3, MAP.MIDNIGHT.THE_COILED_ISLE },
				["groups"] = {
					i(274597, {	-- Bulbous Benthos
						["cost"] = { { "i", 274596, 25 } },	-- 25x Beached Asteroid
					}),
					i(275697, {	-- Design: Roaring Amani Garnet (RECIPE!)
						["cost"] = {
							{ "i", 274597, 50 },	-- 50x Bulbous Benthos
							{ "c", VOIDLIGHT_MARL, 750 },
						},
					}),
					i(275314, {	-- Formula: Enchanted Eversong Trout (RECIPE!)
						["cost"] = {
							{ "i", 274597, 50 },	-- 50x Bulbous Benthos
							{ "c", VOIDLIGHT_MARL, 750 },
						},
					}),
					i(274817, {	-- Gold Starfish (TOY!)
						["cost"] = {
							{ "i", 274595, 10 },	-- 10x Pristine Polygon
							{ "c", VOIDLIGHT_MARL, 750 },
						},
					}),
					i(278557, {	-- Otoola's Recognition (TOY!)
						["cost"] = {
							{ "i", 274595, 10 },	-- 10x Pristine Polygon
							{ "c", VOIDLIGHT_MARL, 750 },
						},
					}),
					i(275342, {	-- Pattern: Tortollan Slingsack (RECIPE!)
						["cost"] = {
							{ "i", 274597, 50 },	-- 50x Bulbous Benthos
							{ "c", VOIDLIGHT_MARL, 750 },
						},
					}),
					i(274595, {	-- Pristine Polygon
						["cost"] = { { "i", 274597, 5 } },	-- 5x Bulbous Benthos
					}),
					i(275271, {	-- Recipe: Venom-Spiced Cutlets (RECIPE!)
						["cost"] = {
							{ "i", 274596, 250 },	-- 250x Beached Asteroid
							{ "c", VOIDLIGHT_MARL, 750 },
						},
					}),
				},
			}),
			n(258904, {	-- Ya'lami <Spectral Potions Vendor>
				["coord"] = { 69.8, 52.2, MAP.MIDNIGHT.THE_COILED_ISLE },
				["groups"] = {
					i(280409),	-- Potion of Liquid Undeath
				},
			}),
		}),
	}),
}));
