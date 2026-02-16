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
