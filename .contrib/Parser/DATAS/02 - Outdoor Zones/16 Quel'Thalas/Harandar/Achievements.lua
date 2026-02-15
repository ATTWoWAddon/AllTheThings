---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(MAP.MIDNIGHT.QUELTHALAS, {
	m(MAP.MIDNIGHT.HARANDAR, {
		n(ACHIEVEMENTS, {
			ach(61344, {	-- Chronicler of the Haranir
				title(680),	-- <Name>, Chronicler of the Haranir
			}),
			ach(61052, {	-- Dust 'Em Off
				title(754),	-- Dustlord <Name>
			}),
			--ach(61520),	-- Explore Harandar (TRIGGERS CRITERIA WARNINGS!)
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
			ach(62290, {	-- Harandar: The Highest Peaks
				i(265792),	-- Fungarian Vine Fence (DECOR!)
			}),
			ach(61860),	-- From The Cradle to the Grave
			ach(61264, {	-- Leaf None Behind
				i(264266),	-- Lightbloom Moss Mound (DECOR!)
			}),
			ach(61574, {	-- Legends Never Die
				i(264259),	-- On'ohia's Call (DECOR!)
			}),
			ach(61219),	-- No Time to Paws
			ach(41804),	-- One Does Not Simply Walk Into Harandar
			skyriding(ach(61547, {	-- Skyriding Glyphs: Blooming Lattice
				--["coord"] = { X, Y, Z },
			})),
			skyriding(ach(61543, {	-- Skyriding Glyphs: Blossoming Terrace
				--["coord"] = { X, Y, Z },
			})),
			skyriding(ach(61549, {	-- Skyriding Glyphs: Fungara Village
				--["coord"] = { X, Y, Z },
			})),
			skyriding(ach(61550, {	-- Skyriding Glyphs: Rift of Aln
				--["coord"] = { X, Y, Z },
			})),
			skyriding(ach(61546, {	-- Skyriding Glyphs: Roots of Amirdrassil
				--["coord"] = { X, Y, Z },
			})),
			skyriding(ach(61548, {	-- Skyriding Glyphs: Roots of Nordrassil
				--["coord"] = { X, Y, Z },
			})),
			skyriding(ach(61551, {	-- Skyriding Glyphs: Roots of Shaladrassil
				--["coord"] = { X, Y, Z },
			})),
			skyriding(ach(61545, {	-- Skyriding Glyphs: Roots of Teldrassil
				--["coord"] = { X, Y, Z },
			})),
			skyriding(ach(61544, {	-- Skyriding Glyphs: The Cradle
				--["coord"] = { X, Y, Z },
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
