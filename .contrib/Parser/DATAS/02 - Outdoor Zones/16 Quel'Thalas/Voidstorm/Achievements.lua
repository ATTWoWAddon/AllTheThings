---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(MAP.MIDNIGHT.QUELTHALAS, {
	m(MAP.MIDNIGHT.VOIDSTORM, {
		n(ACHIEVEMENTS, {
			ach(61913),	-- A Singular Problem
			ach(61912),	-- Anchoring the Defense
			ach(41806),	-- Breaching the Voidstorm
			ach(61857),	-- Explore Voidstorm
			ach(62105),	-- Lysikas Would Be Proud
			ach(61922),	-- Ninety Percent is Good Enough
			ach(61861),	-- Oh, No You Don't!
			skyriding(ach(61563, {	-- Skyriding Glyphs: Ethereum Refinery
				["coord"] = { 38.9, 76.1, MAP.MIDNIGHT.VOIDSTORM },
			})),
			skyriding(ach(61558, {	-- Skyriding Glyphs: Gnawing Reach
				["coord"] = { 54.9, 45.6, MAP.MIDNIGHT.VOIDSTORM },
			})),
			skyriding(ach(61564, {	-- Skyriding Glyphs: Hanaar Outpost
				--["coord"] = { X, Y, MAP.MIDNIGHT.VOIDSTORM },
			})),
			skyriding(ach(61562, {	-- Skyriding Glyphs: Masters' Perch
				["coord"] = { 45.3, 52.3, MAP.MIDNIGHT.VOIDSTORM },
			})),
			skyriding(ach(61561, {	-- Skyriding Glyphs: Obscurion Citadel
				["coord"] = { 65.1, 71.9, MAP.MIDNIGHT.VOIDSTORM },
			})),
			skyriding(ach(61560, {	-- Skyriding Glyphs: Shadowguard Point
				["coord"] = { 36.0, 37.4, MAP.MIDNIGHT.VOIDSTORM },
			})),
			skyriding(ach(61557, {	-- Skyriding Glyphs: The Bladeburrows
				["coord"] = { 39.9, 71.0, MAP.MIDNIGHT.VOIDSTORM },
			})),
			skyriding(ach(61559, {	-- Skyriding Glyphs: The Gorging Pit
				["coord"] = { 49.2, 87.6, MAP.MIDNIGHT.VOIDSTORM },
			})),
			skyriding(ach(61556, {	-- Skyriding Glyphs: The Ingress
				["coord"] = { 35.7, 61.1, MAP.MIDNIGHT.VOIDSTORM },
			})),
			skyriding(ach(61555, {	-- Skyriding Glyphs: The Molt
				["coord"] = { 37.2, 50.0, MAP.MIDNIGHT.VOIDSTORM },
			})),
			skyriding(ach(61552, {	-- Skyriding Glyphs: The Voidspire
				["coord"] = { 51.3, 62.7, MAP.MIDNIGHT.VOIDSTORM },
			})),
			ach(61864),	-- Sojourner of Voidstorm
			ach(62385, {	-- Staring Into The Void
				--i(260697),	-- Lab-grown Stormray (MOUNT!)
			}),
			ach(62130, {	-- The Ultimate Predator
				i(264493),	-- Opened Domanaar Storage Crate (DECOR!)
			}),
			ach(62133),	-- Thrill of the Chase
			pvp(ach(61224)),	-- Tour of Duty: Voidstorm
			ach(62126, {	-- Treasures of Voidstorm
				i(264695),	-- Interdimensional Parcel Signal (TOY!)
			}),
			skyriding(ach(61583, {	-- Voidstorm Glyph Hunter
				-- Meta Achievement
				["sym"] = {{"meta_achievement",
					61563,	-- Skyriding Glyphs: Ethereum Refinery
					61558,	-- Skyriding Glyphs: Gnawing Reach
					61564,	-- Skyriding Glyphs: Hanaar Outpost
					61562,	-- Skyriding Glyphs: Masters' Perch
					61561,	-- Skyriding Glyphs: Obscurion Citadel
					61560,	-- Skyriding Glyphs: Shadowguard Point
					61557,	-- Skyriding Glyphs: The Bladeburrows
					61559,	-- Skyriding Glyphs: The Gorging Pit
					61556,	-- Skyriding Glyphs: The Ingress
					61555,	-- Skyriding Glyphs: The Molt
					61552,	-- Skyriding Glyphs: The Voidspire
				}},
			})),
			ach(62291, {	-- Voidstorm: The Highest Peaks
				i(264656),	-- Void Elf Weapon Rack (DECOR!)
			}),
			ach(62256),	-- Yelling into the Voidstorm
		}),
	}),
}));
