---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(MAP.MIDNIGHT.QUELTHALAS, {
	m(MAP.MIDNIGHT.ZULAMAN, {
		i(256739),	-- Formula: Enchant Ring - Eyes of the Eagle (RECIPE!)
		n(TREASURES, {
			o(539053, {	-- Abandoned Nest
				["coord"] = { 42.6, 52.4, MAP.MIDNIGHT.ZULAMAN },
				["questID"] = 90799,
				["groups"] = {
					i(255680),	-- Forgotten Talon
					i(255008),	-- Weathered Eagle Egg
				},
			}),
			o(539047, {	-- Abandoned Ritual Skull
				["coord"] = { 44.7, 44.1, MAP.MIDNIGHT.ZULAMAN },
				["cost"] = { { "i", 259361, 1000 } },	-- 1000x Vile Essence
				--["questID"] = XXXX,
			}),
			o(539051, {	-- Mrruk's Mangy Trove
				["coord"] = { 52.3, 66.0, MAP.MIDNIGHT.ZULAMAN },
				["questID"] = 90797,
				["groups"] = {
					i(256164),	-- Broken Oar
					i(255428),	-- Tolbani's Medicine Satchel
				},
			}),
			--o(539042, {	-- Ruz'avalt's Prized Tackle	-- TODO: Blizzard bug - unable to interact with it
			--	["coord"] = { X, Y, MAP.MIDNIGHT.ZULAMAN },
			--	["questID"] = ?????,
			--}),
			o(539052, {	-- Secret Formula
				["coord"] = { 40.5, 36.0, MAP.MIDNIGHT.ZULAMAN },
				["questID"] = 90798,
				["groups"] = {
					i(256326),	-- Fetid Dartfrog Idol
					i(257149),	-- Old Tome
				},
			}),
			o(617237, {	-- Sealed Twilight's Blade Bounty Cache
				["provider"] = { "o", 617659 },	-- Sealed Twilight's Blade Bounty
				["coord"] = { 21.9, 77.4, MAP.MIDNIGHT.ZULAMAN },
				["questID"] = 93871,
				["groups"] = {
					iensemble(265362),	-- Arsenal: Twilight Blade
				},
			}),
			o(582179, {	-- Twilight Ordinance
				["coord"] = { 25.4, 64.2, MAP.MIDNIGHT.ZULAMAN },
				--["questID"] = XXXX,
			}),
			o(613727, {	-- Honored Warrior's Cache
				["provider"] = { "o", 539046 },	-- TODO: could be swapped
				["coord"] = { 46.8, 81.9, MAP.MIDNIGHT.ZULAMAN },
				["questID"] = 93560,	-- TODO: seems like flag for additonal things?
			}),
			--Lore
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
			o(620321, {	-- Tablet of Halazzi
				["coord"] = { 32.1, 31.6, MAP.MIDNIGHT.ZULAMAN },
				["questID"] = 94628,
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
			o(620325, {	-- Tablet of the Ruling Family
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
			--Vista Point Flags / High Peaks
			o(619651, {	-- Vista Point Flag
				["coord"] = { 27.8, 70.0, MAP.MIDNIGHT.ZULAMAN },
				["questID"] = 94541,
			}),
			o(619652, {	-- Vista Point Flag
				["coord"] = { 53.0, 82.0, MAP.MIDNIGHT.ZULAMAN },
				["questID"] = 94542,
			}),
			o(619653, {	-- Vista Point Flag
				["coord"] = { 57.7, 21.2, MAP.MIDNIGHT.ZULAMAN },
				["questID"] = 94543,
			}),
			o(619654, {	-- Vista Point Flag
				["coord"] = { 63.6, 85.1, MAP.MIDNIGHT.EVERSONG_WOODS },	-- TODO: Blizzard bug, don't ask me
				["questID"] = 94544,
			}),
			o(619655, {	-- Vista Point Flag
				["coord"] = { 41.9, 41.6, MAP.MIDNIGHT.ZULAMAN },
				["questID"] = 94545,
			}),
		}),
	}),
}));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.MID, {
	m(MAP.MIDNIGHT.QUELTHALAS, {
		m(MAP.MIDNIGHT.ZULAMAN, {
			n(TREASURES, {
				--Order doesn't matter, idk if merge under treasure is required.
				q(93918, {	-- Sealing Orb unlocked 
					["coord"] = { 24.0, 75.7, MAP.MIDNIGHT.ZULAMAN },
					["name"] = "Sealing Orb unlocked.",
				}),
				q(93917, {	-- Sealing Orb unlocked 
					["coord"] = { 24.0, 78.9, MAP.MIDNIGHT.ZULAMAN },
					["name"] = "Sealing Orb unlocked.",
				}),
				q(93916, {	-- Sealing Orb unlocked #3
					["coord"] = { 26.1, 80.7, MAP.MIDNIGHT.ZULAMAN },
					["name"] = "Sealing Orb unlocked.",
				}),
				q(93919, {	-- Sealing Orb unlocked #4
					["coord"] = { 26.1, 74.0, MAP.MIDNIGHT.ZULAMAN },
					["name"] = "Sealing Orb unlocked.",
				}),
				--
			}),
		}),
	}),
}));