---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(MAP.MIDNIGHT.QUELTHALAS, {
	m(MAP.MIDNIGHT.HARANDAR, {
		n(ACHIEVEMENTS, {
			ach(61917),	-- "Hold aggro, I got this"
			ach(61344, {	-- Chronicler of the Haranir
				title(680),	-- <Name>, Chronicler of the Haranir
			}),
			ach(61052, {	-- Dust 'Em Off
				title(754),	-- Dustlord <Name>
			}),
			ach(61520),	-- Explore Harandar
			skyriding(ach(61582, {	-- Harandar Glyph Hunter
				-- Meta Achievement
				["sym"] = {{"meta_achievement",
					61547,	-- Skyriding Glyphs: Blooming Lattice
					61543,	-- Skyriding Glyphs: Blossoming Terrace
					61549,	-- Skyriding Glyphs: Fungara Village
					61550,	-- Skyriding Glyphs: Rift of Aln
					61546,	-- Skyriding Glyphs: Roots of Amirdrassil
					61548,	-- Skyriding Glyphs: Roots of Nordrassil
					61551,	-- Skyriding Glyphs: Roots of Shaladrassil
					61545,	-- Skyriding Glyphs: Roots of Teldrassil
					61544,	-- Skyriding Glyphs: The Cradle
				}},
			})),
			ach(61860),	-- From The Cradle to the Grave
			ach(62290, {	-- Harandar: The Highest Peaks
				i(265792),	-- Fungarian Vine Fence (DECOR!)
			}),
			ach(61706),	-- Herald of the Goddess
			ach(61264, {	-- Leaf None Behind
				i(264266),	-- Lightbloom Moss Mound (DECOR!)
			}),
			ach(61574, {	-- Legends Never Die
				i(264259),	-- On'ohia's Call (DECOR!)
			}),
			ach(61219),	-- No Time to Paws
			ach(41804),	-- One Does Not Simply Walk Into Harandar
			skyriding(ach(61547, {	-- Skyriding Glyphs: Blooming Lattice
				["coord"] = { 54.6, 35.6, MAP.MIDNIGHT.HARANDAR },
			})),
			skyriding(ach(61543, {	-- Skyriding Glyphs: Blossoming Terrace
				["coord"] = { 60.3, 44.4, MAP.MIDNIGHT.HARANDAR },
			})),
			skyriding(ach(61549, {	-- Skyriding Glyphs: Fungara Village
				["coord"] = { 44.6, 62.9, MAP.MIDNIGHT.HARANDAR },
			})),
			skyriding(ach(61550, {	-- Skyriding Glyphs: Rift of Aln
				["coord"] = { 61.9, 67.5, MAP.MIDNIGHT.HARANDAR },
			})),
			skyriding(ach(61546, {	-- Skyriding Glyphs: Roots of Amirdrassil
				["coord"] = { 69.4, 45.8, MAP.MIDNIGHT.HARANDAR },
			})),
			skyriding(ach(61548, {	-- Skyriding Glyphs: Roots of Nordrassil
				["coord"] = { 73.0, 25.8, MAP.MIDNIGHT.HARANDAR },
			})),
			skyriding(ach(61551, {	-- Skyriding Glyphs: Roots of Shaladrassil
				["coord"] = { 26.5, 61.4, MAP.MIDNIGHT.HARANDAR },
			})),
			skyriding(ach(61545, {	-- Skyriding Glyphs: Roots of Teldrassil
				--["coord"] = { X, Y, MAP.MIDNIGHT.HARANDAR },
			})),
			skyriding(ach(61544, {	-- Skyriding Glyphs: The Cradle
				["coord"] = { 47.1, 53.1, MAP.MIDNIGHT.HARANDAR },
			})),
			ach(61739),	-- Sojourner of Harandar
			ach(62260),	-- That's Aln, Folks!
			ach(42278),	-- The Empty Cradle
			ach(61263, {	-- Treasures of Harandar
				--i(263579),	-- Vivacious Chloroceros (MOUNT!)
			}),
			pvp(ach(61223)),	-- Tour of Duty: Harandar
		}),
	}),
}));
