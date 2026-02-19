---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(MAP.MIDNIGHT.QUELTHALAS, {
	m(MAP.MIDNIGHT.EVERSONG_WOODS, {
		n(TREASURES, {
			i(259369),	-- Design: Resplendent Highborne Statue (RECIPE!)
			i(258131),	-- Pattern: Luxurious Silvermoon Lounge Cushion (RECIPE!)
			header(HEADERS.Achievement, 62185, {	-- Ever Painting
				o(621762),	-- Anar'alah Belore
				o(621700),	-- Babble and Brook
				o(621711),	-- Elrendar's Song
				o(621732),	-- Light Consuming
				o(621734),	-- Lost Lamppost
				o(621709),	-- Memories of Ghosts
				o(621707),	-- Sway of Red and Gold
			}),
			o(613242, {	-- Antique Nobleman's Signet Ring
				["coord"] = { 52.3, 45.4, MAP.MIDNIGHT.EVERSONG_WOODS },
				["questID"] = 93455,
				["groups"] = {
					i(265814),	-- Noble's Signet Ring
				},
			}),
			o(555351, {	-- Burbling Paint Pot
				["coord"] = { 48.7, 75.5, MAP.MIDNIGHT.EVERSONG_WOODS },
				["questID"] = 91358,
				["groups"] = {
					i(246314),	-- Burbling Blob of Paint (PET!)
				},
			}),
			o(613267, {	-- Farstrider's Lost Quiver
				["coord"] = { 60.7, 67.3, MAP.MIDNIGHT.EVERSONG_WOODS },
				["questID"] = 93457,
				["groups"] = {
					i(265816),	-- Lost Quiver
				},
			}),
			o(617432, {	-- Forgotten Ink and Quill
				["coord"] = { 43.3, 69.5, MAP.MIDNIGHT.EVERSONG_WOODS },
				--["questID"] = 94747,	-- I did not get his //Braghe
				["questID"] = 93893,
				["groups"] = {
					i(262616),	-- Lively Songwriter's Quill (DECOR!)
				},
			}),
			o(613697, {	-- Gift of the Phoenix
				["coord"] = { 41.0, 19.5, MAP.MIDNIGHT.EVERSONG_WOODS },
				["questID"] = 93544,
				["groups"] = {
					i(263211),	-- Gilded Eversong Cup (DECOR!)
					o(613729, {	-- Sunstrider Vessel
						["provider"] = { "o", 613708 },	-- Sunstrider Vessel / Gift of the Phoenix mid-phase ID for treasure
						["description"] = "Pick this Vessel up and catch embers 5 times than place it back where you pick it up",
						["questID"] = 93545,
					}),
				},
			}),
			o(617534, {	-- Gilded Arnillary Sphere
				["coord"] = { 44.6, 45.6, MAP.MIDNIGHT.EVERSONG_WOODS },
				--["questID"] = 94740,	-- I did not get his //Braghe
				["questID"] = 93908,
				["groups"] = {
					i(265828),	-- Gilded Armillary Sphere (750g JUNK!)
					i(262453),	-- Heathlight Armillary (DECOR!)
				},
			}),
			o(617881, {	-- Rookery Cache
				["coord"] = { 24.3, 69.3, MAP.MIDNIGHT.SILVERMOON_CITY },
				["questID"] = 93967,
				["cost"] = { { "i", 263870, 1 } },	-- 1x Rookery Cache Key
				["groups"] = {
					i(267838),	-- Sunwing Hatchling (PET!)
					n(257049, {	-- Mischevious Chick
						["description"] = "If it didn't spawn bowl towards it - zone out and go back.",	-- TODO: Blizzard bug - remove it if they ever manage to fix this
						["coord"] = { 24.2, 69.5, MAP.MIDNIGHT.SILVERMOON_CITY },
						["questID"] = 94626,
						["cost"] = { { "i", 265674, 1 }, },	-- 1x Tasty Meat
					}),
					o(620206, {	-- Rookery Cache Key
						["coord"] = { 24.1, 69.5, MAP.MIDNIGHT.SILVERMOON_CITY },
						["groups"] = {
							i(263870),	-- Rookery Cache Key
						},
					}),
				},
			}),
			o(587307, {	-- Stone Vat
				["coord"] = { 40.5, 61.0, MAP.MIDNIGHT.EVERSONG_WOODS },
				["questID"] = 93061,
				["cost"] = {
					{ "i", 256232, 10 },	-- 10x Bunch of Ripe Grapes
					{ "i", 256397, 1 },	-- 1x Packet of Instant Yeast
				},
				["groups"] = {
					i(251912),	-- Goldenmist Grapes (DECOR!)
					n(251405, {
						["coord"] = { 40.8, 60.5, MAP.MIDNIGHT.EVERSONG_WOODS },
						["groups"] = {
							i(256397),	-- Packet of Instant Yeast
						},
					}),
					o(587443, {	-- Ripe Grapes
						["groups"] = {
							i(256232),	-- Bunch of Ripe Grapes
						},
					}),
				},
			}),
			o(613252, {	-- Triple-Locked Safebox
				["coord"] = { 38.9, 76.1, MAP.MIDNIGHT.EVERSONG_WOODS },
				["questID"] = 93456,
				["cost"] = {
					{ "i", 258768, 1 },	-- 1x Battered Safebox Key
					{ "i", 258770, 1 },	-- 1x Tarnished Safebox Key
					{ "i", 258769, 1 },	-- 1x Worn Safebox Key
				},
				["groups"] = {
					i(243106),	-- Gemmed Eversong Lantern (DECOR!)
					o(613269, {	-- Battered Safebox Key
						["coord"] = { 37.6, 74.8, MAP.MIDNIGHT.EVERSONG_WOODS },
						["groups"] = {
							i(258768),	-- Battered Safebox Key
						},
					}),
					o(613272, {	-- Tarnished Safebox Key
						["coord"] = { 38.5, 73.5, MAP.MIDNIGHT.EVERSONG_WOODS },
						["groups"] = {
							i(258770),	-- Tarnished Safebox Key
						},
					}),
					o(613271, {	-- Worn Safebox Key
						["coord"] = { 38.5, 73.5, MAP.MIDNIGHT.EVERSONG_WOODS },
						["groups"] = {
							i(258769),	-- Worn Safebox Key
						},
					}),
				},
			}),
			--lore
			o(613850, {	-- Hawkstrider Husbandry: Unabridged Edition
				["coord"] = { 57.8, 50.9, MAP.MIDNIGHT.EVERSONG_WOODS },
				["questID"] = 93562,
			}),
			o(526903, {	-- Memorial Plaque
				["coord"] = { 48.0, 88.2, MAP.MIDNIGHT.EVERSONG_WOODS },
				["questID"] = 91841,
			}),
			o(613847, {	-- Mirveda's Notes
				["coord"] = { 50.5, 43.5, MAP.MIDNIGHT.EVERSONG_WOODS },
				["questID"] = 93564,
			}),
			o(507966, {	-- Profane Research
				["coord"] = { 36.1, 72.5, MAP.MIDNIGHT.EVERSONG_WOODS },
				["questID"] = 93565,
			}),
			o(613861, {	-- Shrine of Dath'Remar
				["coord"] = { 37.6, 13.8, MAP.MIDNIGHT.EVERSONG_WOODS },
				["questID"] = 93563,
			}),
			o(613887, {	-- Unfinished Sheet Music
				["coord"] = { 38.1, 77.0, MAP.MIDNIGHT.SILVERMOON_CITY },
				["questID"] = 93570,
			}),
			header(HEADERS.Achievement, 62288, {	-- Eversong Woods: The Highest Peaks
				o(619621, {	-- Vista Point Flag
					["coord"] = { 20.2, 79.6, MAP.MIDNIGHT.SILVERMOON_CITY },
					["questID"] = 94536,
				}),
				o(619647, {	-- Vista Point Flag
					["coord"] = { 40.4, 10.1, MAP.MIDNIGHT.EVERSONG_WOODS },
					["questID"] = 94537,
				}),
				o(619648, {	-- Vista Point Flag
					["coord"] = { 37.4, 47.9, MAP.MIDNIGHT.EVERSONG_WOODS },
					["questID"] = 94538,
				}),
				o(619649, {	-- Vista Point Flag
					["coord"] = { 54.6, 51.0, MAP.MIDNIGHT.EVERSONG_WOODS },
					["questID"] = 94539,
				}),
				o(619650, {	-- Vista Point Flag
					["coord"] = { 50.3, 84.2, MAP.MIDNIGHT.EVERSONG_WOODS },
					["questID"] = 94540,
				}),
			}),
		}),
	}),
}));
