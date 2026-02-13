---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(MAP.MIDNIGHT.QUELTHALAS, {
	m(MAP.MIDNIGHT.SILVERMOON_CITY, {
		n(TREASURES, {
			--Treasure
			o(617881, {	-- Rookery Cache
				["coord"] = { 24.3, 69.3, MAP.MIDNIGHT.SILVERMOON_CITY },
				--["questID"] = XXXX,
				["cr"] = 257049,	-- Mischevious Chick
				["cost"] = { { "i", 263870, 1 } },	-- 1x Rookery Cache Key
				["groups"] = { i(267838) },	-- Sunwing Hatchling (PET!)
			}),
			n(257049, {	-- Mischevious Chick
				-- Exo Note: 02.02.2026., Not working. Area where you're supposed to place the meat is not visible
				["description"] = "FEEEEED MEEEEEE!!!",
				["cost"] = { { "i", 265674, 1 } },	-- 1x Tasty Meat
				["groups"] = { i(263870) },	-- Rookery Cache Key
			}),
			--Lore
			o(613887, {	-- Unfinished Sheet Music
				["coord"] = { 38.1, 77.0, MAP.MIDNIGHT.SILVERMOON_CITY },
				["questID"] = 93570,
			}),
		}),
	}),
}));
