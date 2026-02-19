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
			ach(61855),	-- Explore Eversong Woods
			ach(62261),	-- Forever Song
			ach(62187),	-- Grand Magister's Sommelier
			ach(61961),	-- Runestone Rush
			skyriding(ach(61522, {	-- Skyriding Glyphs: Brightwing Estate
				["coord"] = { 65.2, 32.6, MAP.MIDNIGHT.EVERSONG_WOODS },
			})),
			skyriding(ach(61525, {	-- Skyriding Glyphs: Daggerspine Point
				["coord"] = { 33.4, 65.4, MAP.MIDNIGHT.EVERSONG_WOODS },
			})),
			skyriding(ach(61529, {	-- Skyriding Glyphs: Dawnstar Spire
				["coord"] = { 62.6, 62.8, MAP.MIDNIGHT.EVERSONG_WOODS },
			})),
			skyriding(ach(61527, {	-- Skyriding Glyphs: Fairbreeze Village
				["coord"] = { 43.2, 46.4, MAP.MIDNIGHT.EVERSONG_WOODS },
			})),
			skyriding(ach(61524, {	-- Skyriding Glyphs: Goldenmist Village
				["coord"] = { 40.0, 59.6, MAP.MIDNIGHT.EVERSONG_WOODS },
			})),
			skyriding(ach(61531, {	-- Skyriding Glyphs: Path of Dawn
				["coord"] = { 49.5, 48.0, MAP.MIDNIGHT.EVERSONG_WOODS },
			})),
			skyriding(ach(61523, {	-- Skyriding Glyphs: Silvermoon City
				["coord"] = { 58.9, 19.5, MAP.MIDNIGHT.EVERSONG_WOODS },
			})),
			skyriding(ach(61526, {	-- Skyriding Glyphs: Suncrown Tree
				["coord"] = { 58.4, 58.4, MAP.MIDNIGHT.EVERSONG_WOODS },
			})),
			skyriding(ach(61530, {	-- Skyriding Glyphs: Sunsail Anchorage
				["coord"] = { 39.5, 45.6, MAP.MIDNIGHT.EVERSONG_WOODS },
			})),
			skyriding(ach(61521, {	-- Skyriding Glyphs: The Shining Span
				["coords"] = {	-- Same location but on both maps
					{ 51.4, 8.2, MAP.MIDNIGHT.EVERSONG_WOODS },
					{ 48.3, 6.6, MAP.MIDNIGHT.SILVERMOON_CITY },
				},
			})),
			skyriding(ach(61528, {	-- Skyriding Glyphs: Tranquillien
				["coord"] = { 52.5, 67.6, MAP.MIDNIGHT.EVERSONG_WOODS },
			})),
			ach(61957),	-- Sojourner of Eversong Woods
			pvp(ach(61221)),	-- Tour of Duty: Eversong Woods
			ach(61960, {	-- Treasures of Eversong Woods
				i(269028),	-- Sootpaw (PET!)
			}),
		}),
	}),
}));
