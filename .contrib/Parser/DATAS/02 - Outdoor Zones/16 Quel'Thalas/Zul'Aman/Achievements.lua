---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(MAP.MIDNIGHT.QUELTHALAS, {
	m(MAP.MIDNIGHT.ZULAMAN, {
		n(ACHIEVEMENTS, {
			ach(62267),	-- A Most Violent Loa
			ach(62269),	-- Altar of Blessings: Amani Curious
			ach(62270),	-- Altar of Blessings: One for Altar
			ach(62121),	-- Altar of Blessings: Sacred Buffet Devotee
			ach(62120),	-- Altar of Blessings: The Penitent Troll
			ach(61856),	-- Explore Zul'Aman
			ach(41803),	-- For Zul'Aman!
			ach(62200),	-- Gnome Alone
			ach(61453),	-- Making an Amani Out of You
			ach(62199),	-- Put a Pin in It
			ach(61455),	-- Shadowpine Scattered
			skyriding(ach(61540, {	-- Skyriding Glyphs: Amani Pass
				--["coord"] = { X, Y, Z },
			})),
			skyriding(ach(61537, {	-- Skyriding Glyphs: Nalorakk's Prowl
				--["coord"] = { X, Y, Z },
			})),
			skyriding(ach(61542, {	-- Skyriding Glyphs: Revantusk Sedge
				--["coord"] = { X, Y, Z },
			})),
			skyriding(ach(61532, {	-- Skyriding Glyphs: Shadebasin Watch
				--["coord"] = { X, Y, Z },
			})),
			skyriding(ach(61539, {	-- Skyriding Glyphs: Solemn Valley
				--["coord"] = { X, Y, Z },
			})),
			skyriding(ach(61541, {	-- Skyriding Glyphs: Spiritpaw Burrow
				--["coord"] = { X, Y, Z },
			})),
			skyriding(ach(61535, {	-- Skyriding Glyphs: Strait of Hexx'alor
				--["coord"] = { X, Y, Z },
			})),
			skyriding(ach(61533, {	-- Skyriding Glyphs: Temple of Akil'zon
				--["coord"] = { X, Y, Z },
			})),
			skyriding(ach(61534, {	-- Skyriding Glyphs: Temple of Jan'alai
				--["coord"] = { X, Y, Z },
			})),
			skyriding(ach(61536, {	-- Skyriding Glyphs: Witherbark Bluffs
				--["coord"] = { X, Y, Z },
			})),
			skyriding(ach(61538, {	-- Skyriding Glyphs: Zeb'Alar Lumberyard
				--["coord"] = { X, Y, Z },
			})),
			ach(62122, {	-- Tallest Tree in the Forest
				i(264335),	-- Colossal Amani Stone Visage (DECOR!)
			}),
			ach(62201),	-- The Frog and the Princesses
			pvp(ach(61222)),	-- Tour of Duty: Zul'Aman
			ach(62125, {	-- Treasures of Zul'Aman
				i(268717);	-- Pango Plating (TOY!)
			}),
			ach(61452),	-- Sojourner of Zul'Aman
			ach(62202, {	-- Spiritpaw Marathon
				-- TODO: wasn't automated in 12.0.1.65893
				["provider"] = { "n", 261115 },	-- Kapara Pup	(TODO: probably required to talk with npc nearby)
				["coords"] = {
					{ 32.2, 22.3, MAP.MIDNIGHT.ZULAMAN },
					{ 51.6, 32.7, MAP.MIDNIGHT.ZULAMAN },
				},
				["questID"] = 95450,
			}),
			skyriding(ach(61581, {	-- Zul'Aman Glyph Hunter
				-- Meta Achievement
				["sym"] = {{"meta_achievement",
					61540,	-- Skyriding Glyphs: Amani Pass
					61537,	-- Skyriding Glyphs: Nalorakk's Prowl
					61542,	-- Skyriding Glyphs: Revantusk Sedge
					61532,	-- Skyriding Glyphs: Shadebasin Watch
					61539,	-- Skyriding Glyphs: Solemn Valley
					61541,	-- Skyriding Glyphs: Spiritpaw Burrow
					61535,	-- Skyriding Glyphs: Strait of Hexx'alor
					61533,	-- Skyriding Glyphs: Temple of Akil'zon
					61534,	-- Skyriding Glyphs: Temple of Jan'alai
					61536,	-- Skyriding Glyphs: Witherbark Bluffs
					61538,	-- Skyriding Glyphs: Zeb'Alar Lumberyard
				}},
			})),
			ach(62289, {	-- Zul'Aman: The Highest Peaks
				i(256925),	-- Amani Spearhunter's Spit (DECOR!)
			}),
		}),
	}),
}));
