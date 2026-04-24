---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(MAP.MIDNIGHT.QUELTHALAS, {
	m(MAP.MIDNIGHT.ZULAMAN, {
		n(ACHIEVEMENTS, {
			ach(62267, {	-- A Most Violent Loa
				["description"] = "Kill 100 Kapara or Kapara pups around Zul'Aman to draw the wrath of Filo, Loa of Childhood.",
				["crs"] = {
					250101,	-- Kapara
					250100,	-- Kapara Pup
				},
			}),
			ach(62269),	-- Altar of Blessings: Amani Curious
			ach(62270),	-- Altar of Blessings: One for Altar
			ach(62121),	-- Altar of Blessings: Sacred Buffet Devotee
			ach(62120),	-- Altar of Blessings: The Penitent Troll
			ach(61856),	-- Explore Zul'Aman
			ach(41803),	-- For Zul'Aman!
			ach(62200, {	-- Gnome Alone
				["_noautomation"] = true,
				["groups"] = {
					crit(112847, {	-- Discarded Scroll
						["provider"] = { "o", 633820 },	-- Discarded Scroll
						["coord"] = { 45.9, 66.0, MAP.MIDNIGHT.ZULAMAN },
					}),
					crit(112845, {	-- Hastily-Scribbled Note
						["provider"] = { "o", 633805 },	-- Hastily-Scribbled Note
						["coord"] = { 46.4, 41.4, MAP.MIDNIGHT.ZULAMAN },
					}),
					crit(112039, {	-- Message in a Bottle
						["provider"] = { "o", 633792 },	-- Message in a Bottle
						["coord"] = { 54.9, 32.4, MAP.MIDNIGHT.ZULAMAN },
					}),
					crit(112844, {	-- Moldy Diary Found
						["provider"] = { "o", 633815 },	-- Moldy Diary
						["coord"] = { 35.7, 25.2, MAP.MIDNIGHT.ZULAMAN },
					}),
					crit(112848, {	-- Parting Note
						["provider"] = { "o", 633823 },	-- Parting Note
						["coord"] = { 34.8, 17.2, MAP.MIDNIGHT.ZULAMAN },
					}),
					crit(112846, {	-- Scrap of Singed Paper
						["provider"] = { "o", 633814 },	-- Scrap of Singed Paper
						["coord"] = { 54.3, 20.6, MAP.MIDNIGHT.ZULAMAN },
					}),
				},
			}),
			ach(61453),	-- Making an Amani Out of You
			ach(62199, {	-- Put a Pin in It
				hqt(95005, {	-- Talk to Chu'ke on a ridge by the coast
					["name"] = "Talk to Chu'ke on a ridge by the coast.",
					["qg"] = 258933,	-- Chu'ke <Lost Doll>
					["coord"] = { 59.2, 71.1, MAP.MIDNIGHT.ZULAMAN },
				}),
				o(627489, {	-- Forgotten Button
					["description"] = "Talk to Kalika and take the Forgotten Button.",
					["sourceQuest"] = 95005,	-- Talk to Chu'ke on a ridge by the coast
					["coord"] = { 38.7, 23.9, MAP.MIDNIGHT.ZULAMAN },
					["questID"] = 95045,
				}),
				hqt(95046, {	-- Talk to Chu'ke again south of the Den of Nalorakk
					["name"] = "Talk to Chu'ke again south of the Den of Nalorakk.",
					["sourceQuest"] = 95045,	-- Forgotten Button
					["qg"] = 258933,	-- Chu'ke <Lost Doll>
					["coord"] = { 37.8, 90.1, MAP.MIDNIGHT.ZULAMAN },
				}),
			}),
			ach(61455, {	-- Shadowpine Scattered
				["_noautomation"] = true,
				["groups"] = {
					crit(109749, {	-- Songseeker Baz'wa
						["description"] = "Becomes available after completing Zul'Aman campaign.",
						["provider"] = { "n", 254808 },	-- Songseeker Baz'wa
						["coord"] = { 52.7, 79.3, MAP.MIDNIGHT.ZULAMAN },
					}),
					crit(109752, {	-- Songseeker Dova
						["provider"] = { "n", 254839 },	-- Songseeker Dova
						["coord"] = { 39.2, 56.4, MAP.MIDNIGHT.ZULAMAN },
					}),
					crit(109750, {	-- Songseeker Far'lan
						["provider"] = { "n", 254807 },	-- Songseeker Far'lan
						["coord"] = { 47.3, 81.9, MAP.MIDNIGHT.ZULAMAN },
					}),
					crit(109753, {	-- Songseeker Ikaja
						["description"] = "On top of the temple.",
						["provider"] = { "n", 254841 },	-- Songseeker Ikaja
						["coord"] = { 55.2, 18.1, MAP.MIDNIGHT.ZULAMAN },
					}),
					crit(109751, {	-- Songseeker Jebanda
						["description"] = "Walks around with a group of Shadowpine Travelers along the given path.",
						["provider"] = { "n", 254840 },	-- Songseeker Jebanda
						["coords"] = {
							{ 31.6, 38.1, MAP.MIDNIGHT.ZULAMAN },
							{ 31.6, 46.5, MAP.MIDNIGHT.ZULAMAN },
							{ 33.1, 44.0, MAP.MIDNIGHT.ZULAMAN },
							{ 33.3, 39.9, MAP.MIDNIGHT.ZULAMAN },
						},
					}),
				},
			}),
			skyriding(ach(61540, {	-- Skyriding Glyphs: Amani Pass
				["coords"] = {
					{ 63.8, 81.9, MAP.MIDNIGHT.EVERSONG_WOODS },	-- NOTE: Blizzard bug. While standing on the spot, the game displays you as if you are in Eversong Woods
					{ 24.8, 54.9, MAP.MIDNIGHT.ZULAMAN },	-- Correct Zul'Aman coordinate
				},
			})),
			skyriding(ach(61537, {	-- Skyriding Glyphs: Nalorakk's Prowl
				["coord"] = { 30.4, 84.8, MAP.MIDNIGHT.ZULAMAN },
			})),
			skyriding(ach(61542, {	-- Skyriding Glyphs: Revantusk Sedge
				["coord"] = { 19.2, 70.7, MAP.MIDNIGHT.ZULAMAN },
			})),
			skyriding(ach(61532, {	-- Skyriding Glyphs: Shadebasin Watch
				["coord"] = { 42.9, 34.4, MAP.MIDNIGHT.ZULAMAN },
			})),
			skyriding(ach(61539, {	-- Skyriding Glyphs: Solemn Valley
				["coord"] = { 46.7, 82.2, MAP.MIDNIGHT.ZULAMAN },
			})),
			skyriding(ach(61541, {	-- Skyriding Glyphs: Spiritpaw Burrow
				["coord"] = { 42.7, 80.1, MAP.MIDNIGHT.ZULAMAN },
			})),
			skyriding(ach(61535, {	-- Skyriding Glyphs: Strait of Hexx'alor
				["coord"] = { 53.2, 54.5, MAP.MIDNIGHT.ZULAMAN },
			})),
			skyriding(ach(61533, {	-- Skyriding Glyphs: Temple of Akil'zon
				["coord"] = { 53.6, 80.4, MAP.MIDNIGHT.ZULAMAN },
			})),
			skyriding(ach(61534, {	-- Skyriding Glyphs: Temple of Jan'alai
				["coord"] = { 51.5, 23.6, MAP.MIDNIGHT.ZULAMAN },
			})),
			skyriding(ach(61536, {	-- Skyriding Glyphs: Witherbark Bluffs
				["coord"] = { 39.6, 19.7, MAP.MIDNIGHT.ZULAMAN },
			})),
			skyriding(ach(61538, {	-- Skyriding Glyphs: Zeb'Alar Lumberyard
				["coord"] = { 28.0, 28.5, MAP.MIDNIGHT.ZULAMAN },
			})),
			ach(62122, {	-- Tallest Tree in the Forest
				i(264335),	-- Colossal Amani Stone Visage (DECOR!)
			}),
			ach(62201, {	-- The Frog and the Princesses
				crit(112041, {	-- Princess Fita
					["provider"] = { "n", 258937 },	-- Princess Fita
					["coord"] = { 31.7, 22.6, MAP.MIDNIGHT.ZULAMAN },
				}),
				crit(112445, {	-- Princess Gabiku
					["provider"] = { "n", 259684 },	-- Princess Gabiku
					["coord"] = { 68.3, 19.3, MAP.MIDNIGHT.ZULAMAN },
				}),
				crit(112446, {	-- Princess Jakobu
					["provider"] = { "n", 259682 },	-- Princess Jakobu
					["coord"] = { 27.5, 40.1, MAP.MIDNIGHT.ATAL_AMAN_OUTDOOR },
				}),
				crit(112447, {	-- Princess Tafiki
					["provider"] = { "n", 259683 },	-- Princess Tafiki
					["coord"] = { 53.9, 59.6, MAP.MIDNIGHT.ZULAMAN },
				}),
				crit(112448, {	-- Princess Zambina
					["provider"] = { "n", 259685 },	-- Princess Zambina
					["coord"] = { 29.8, 79.1, MAP.MIDNIGHT.ZULAMAN },
				}),
			}),
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
