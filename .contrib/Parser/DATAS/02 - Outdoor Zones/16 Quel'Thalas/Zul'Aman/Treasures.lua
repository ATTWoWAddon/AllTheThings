---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(MAP.MIDNIGHT.QUELTHALAS, {
	m(MAP.MIDNIGHT.ZULAMAN, {
		n(TREASURES, {
			o(539047, {	-- Abandoned Ritual Skull
				["coord"] = { 44.7, 44.1, MAP.MIDNIGHT.ZULAMAN },
				["cost"] = { { "i", 259361, 1000 } },	-- 1000x Vile Essence
				--["questID"] = XXXX,
			}),
			o(539051, {	-- Mrruk's Mangy Trove
				["coord"] = { 52.3, 66.0, MAP.MIDNIGHT.ZULAMAN },
				["questID"] = 90797,
				["groups"] = {
					i(256164),	-- [DNT] Broken Oar (TODO: PH?)
					i(255428),	-- Tolbani's Medicine Satchel
				},
			}),
			o(582179, {	-- Twilight Ordinance
				["coord"] = { 25.4, 64.2, MAP.MIDNIGHT.ZULAMAN },
				--["questID"] = XXXX,
			}),
			--[[--Lore
			o(XXXX, {	-- Honored Warrior's Cache
				["coord"] = { 46.8, 81.9, MAP.MIDNIGHT.ZULAMAN },
				["questID"] = 93560,
			}),]]--
			o(555480, {	-- Inscribed Oar
				["coord"] = { 45.7, 70.2, MAP.MIDNIGHT.ZULAMAN },
				["questID"] = 91395,
			}),
			o(620314, {	-- Tablet of Akil'zon
				["coord"] = { 53.1, 82.1, MAP.MIDNIGHT.ZULAMAN },
				["questID"] = 94627,
			}),
			o(620327, {	-- Tablet of Filo
				["coord"] = { 52.9, 32.1, MAP.MIDNIGHT.ZULAMAN },
				["questID"] = 94674,
			}),
			o(620323, {	-- Tablet of Jan'alal
				["coord"] = { 55.1, 17.6, MAP.MIDNIGHT.ZULAMAN },
				["questID"] = 94631,
			}),
			o(620326, {	-- Tablet of Kulzi
				["coord"] = { 39.3, 44.7, MAP.MIDNIGHT.ZULAMAN },
				["questID"] = 94673,
			}),
			o(620324, {	-- Tablet of Nalorakk
				["coord"] = { 30.2, 84.6, MAP.MIDNIGHT.ZULAMAN },
				["questID"] = 94632,
			}),
			o(620325, {	-- Tablet of the Witherbark
				["coord"] = { 37.5, 26.7, MAP.MIDNIGHT.ZULAMAN },
				["questID"] = 94633,
			}),
			--Repeatable
			o(555462, {	-- Forgotten Amani Cache
				["groups"] = {
					i(259112),	-- Dark Gold Dye
				},
			}),
			o(583965, {	-- Maisara Vilevessel
				["groups"] = {
					--share Forgotten Amani Cache
				},
			}),
			o(583971, {	-- Stonewash Supplies
				["groups"] = {
					--share Forgotten Amani Cache
				},
			}),
			--Vista Point Flag
			o(619653, {	-- Vista Point Flag
				["coord"] = { 57.7, 21.2, MAP.MIDNIGHT.ZULAMAN },
				["questID"] = 94543,
			}),
			o(619655, {	-- Vista Point Flag
				["coord"] = { 41.9, 41.6, MAP.MIDNIGHT.ZULAMAN },
				["questID"] = 94545,
			}),
			o(619652, {	-- Vista Point Flag
				["coord"] = { 53.0, 82.0, MAP.MIDNIGHT.ZULAMAN },
				["questID"] = 94542,
			}),
		}),
	}),
}));
