---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(MAP.MIDNIGHT.QUELTHALAS, {
	m(MAP.MIDNIGHT.VOIDSTORM, {
		n(VENDORS, {
			n(249098, {	-- Balaak the Twice-Exiled
				["coord"] = { 53.5, 52.0, MAP.MIDNIGHT.SLAYERS_RISE_OUTDOOR },
				["groups"] = {
					--TODO: not worth to list cost, imo
					--but if someone want 100x itemID 248944
					i(258763),	-- Portable Void Zeal
					i(248967),	-- Scroll of Elements
					i(248966),	-- Scroll of Fluidity
					i(248968),	-- Scroll of Might
					i(248957),	-- Scroll of Resistance
					i(258736),	-- Scroll of Town Portal
					i(259092),	-- Void-Tinged Free Action Potion
					i(259245),	-- Void Phase Potion
				},
			}),
			n(259922, {	-- Void Researcher Aemely <Decor Specialist>
				["coord"] = { 52.7, 72.8, MAP.MIDNIGHT.VOIDSTORM },
				["groups"] = sharedData({
					["cost"] = { { "c", VOIDLIGHT_MARL, 750 } },
				}, {
					i(264340),	-- Cosmic Barrel (DECOR!)
					i(262472),	-- Cosmic Kettle (DECOR!)
					i(264659),	-- Cosmic Traveler's Satchel (DECOR!)
					i(267209),	-- Open Void Elf Bedroll (DECOR!)
					i(264657, {	-- Open Sturdy Void Elf Trunk (DECOR!)
						["cost"] = { { "c", VOIDLIGHT_MARL, 2500 },	},
					}),
					i(264493),	-- Opened Domanaar Storage Crate (DECOR!)
					i(262351),	-- Ornate Cosmic Rug (DECOR!) TODO: Blizzard bug - 0 cost, gray quality
					i(267082),	-- Ornate Cosmic Table (DECOR!)
					i(262606),	-- Smoldering Energy Forge (DECOR!)
					i(264508, {	-- Sturdy Void Elf Barricade (DECOR!)
						["cost"] = { { "c", VOIDLIGHT_MARL, 2500 },	},
					}),
					i(263240, {	-- Sturdy Void Elf Crate (DECOR!)
						["cost"] = { { "c", VOIDLIGHT_MARL, 2500 },	},
					}),
					i(264656),	-- Void Elf Weapon Rack (DECOR!)
				}),
			}),
			n(244749, {	-- Xy'dax
				["coord"] = { 26.4, 67.5, MAP.MIDNIGHT.VOIDSTORM },
				["groups"] = {
					i(264503, {	-- Cracked Core
						["cost"] = { { "i", 246951, 10 }},	-- 10x Stormarion Core
					}),
					i(251635, {	-- Illegal Cosmic Emitter
						["cost"] = { { "i", 246951, 30 }},	-- 30x Stormarion Core
					}),
					i(251805, {	-- Unstable Explosive Device
						["cost"] = { { "i", 246951, 10 }},	-- 10x Stormarion Core
					}),
				},
			}),
		}),
	}),
}));
