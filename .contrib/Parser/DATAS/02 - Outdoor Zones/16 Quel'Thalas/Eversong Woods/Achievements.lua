---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(MAP.MIDNIGHT.QUELTHALAS, {
	m(MAP.MIDNIGHT.EVERSONG_WOODS, {
		n(ACHIEVEMENTS, {
			ach(61507, {	-- A Bloody Song
				i(257367),	-- Silvermoon Energy Focus (DECOR!)
			}),
			ach(62185, {	-- Ever Painting
				i(244656),	-- Silvermoon Painter's Cushion (DECOR!)
			}),
			ach(62288, {	-- Eversong Woods: The Highest Peaks
				i(254773),	-- "Eversong Lantern" Painting (DECOR!)
			}),
			ach(41802),	-- Eversong In Reprise
			skyriding(ach(61576, {	-- Eversong Woods Glyph Hunter
				-- Meta Achievement
				["sym"] = {{"meta_achievement",
					61522,	-- Skyriding Glyphs: Brightwing Estate
					61525,	-- Skyriding Glyphs: Daggerspine Point
					61529,	-- Skyriding Glyphs: Dawnstar Spire
					61527,	-- Skyriding Glyphs: Fairbreeze Village
					61524,	-- Skyriding Glyphs: Goldenmist Village
					61531,	-- Skyriding Glyphs: Path of Dawn
					61523,	-- Skyriding Glyphs: Silvermoon City
					61526,	-- Skyriding Glyphs: Suncrown Tree
					61530,	-- Skyriding Glyphs: Sunsail Anchorage
					61521,	-- Skyriding Glyphs: The Shining Span
					61528,	-- Skyriding Glyphs: Tranquillien
				}},
			})),
			--ach(61855),	-- Explore Eversong Woods (TRIGGERS CRITERIA WARNINGS!)
			ach(62261),	-- Forever Song
			ach(62187),	-- Grand Magister's Sommelier
			ach(61961),	-- Runestone Rush
			skyriding(ach(61522, {	-- Skyriding Glyphs: Brightwing Estate
				--["coord"] = { X, Y, Z },
			})),
			skyriding(ach(61525, {	-- Skyriding Glyphs: Daggerspine Point
				--["coord"] = { X, Y, Z },
			})),
			skyriding(ach(61529, {	-- Skyriding Glyphs: Dawnstar Spire
				--["coord"] = { X, Y, Z },
			})),
			skyriding(ach(61527, {	-- Skyriding Glyphs: Fairbreeze Village
				--["coord"] = { X, Y, Z },
			})),
			skyriding(ach(61524, {	-- Skyriding Glyphs: Goldenmist Village
				--["coord"] = { X, Y, Z },
			})),
			skyriding(ach(61531, {	-- Skyriding Glyphs: Path of Dawn
				--["coord"] = { X, Y, Z },
			})),
			skyriding(ach(61523, {	-- Skyriding Glyphs: Silvermoon City
				--["coord"] = { X, Y, Z },
			})),
			skyriding(ach(61526, {	-- Skyriding Glyphs: Suncrown Tree
				--["coord"] = { X, Y, Z },
			})),
			skyriding(ach(61530, {	-- Skyriding Glyphs: Sunsail Anchorage
				--["coord"] = { X, Y, Z },
			})),
			skyriding(ach(61521, {	-- Skyriding Glyphs: The Shining Span
				--["coord"] = { X, Y, Z },
			})),
			skyriding(ach(61528, {	-- Skyriding Glyphs: Tranquillien
				--["coord"] = { X, Y, Z },
			})),
			ach(61957),	-- Sojourner of Eversong Woods
			ach(62186, {	-- The Party Must Go On
				i(251909),	-- Eversong Feast Platter (DECOR!)
			}),
			pvp(ach(61221)),	-- Tour of Duty: Eversong Woods
			ach(61960, {	-- Treasures of Eversong Woods
				i(269028),	-- Sootpaw (PET!)
			}),
		}),
	}),
}));
