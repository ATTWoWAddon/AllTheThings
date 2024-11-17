---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(KHAZ_ALGAR, bubbleDown({ ["timeline"] = { ADDED_11_0_7 } }, {
	m(SIREN_ISLE, {
		n(TREASURES, {
			--repeatable local treasure
			--o(474822),	-- Runed Storm Cache
			--o(500683),	-- Seafarer's Cache
			--o(500686),	-- Seafarer's Cache
			--
			o(505503, {	--  Ashvane Issued Workboots
				-- TODO: unsure if something needed in addition or it just exist here now
				["coord"] = { 41.6, 45.8, SIREN_ISLE },
				["questID"] = 86765,
				["g"] = {
					i(233916), -- Ashvane Issued Workboots (COSMETIC!)
					--i(191058), -- Dilapidated Parchment: Bottom Half (NYI)
					--i(191059), -- Dilapidated Parchment: Top Half (NYI)
				},
			}),
			o(464233, {	--  Bilge Rat Supply Chest
				["coord"] = { 62.4, 90.8, SIREN_ISLE },
				["questID"] = 84529,
				["cost"] = {{ "i", 228621, 1 }},	-- Bilge Rat Supply Key
			}),
			o(465272, {	--  Empty Kaja'Cola Can
				["coord"] = { 60.8, 62.9, SIREN_ISLE },
				["g"] = {
					i(228665),	-- Empty Kaja'Cola (QS!)
				},
			}),
			o(505504, {	--  Kul Tiran Lumberer's Hatchet
				-- Naga?
				["coord"] = { 40.2, 41.8, SIREN_ISLE },
				["questID"] = 86764,
				["g"] = {
					i(233957),	-- Kul Tiran Lumberer's Hatchet (COSMETIC!)
				},
			}),
			o(505506, {	-- Minnow's Favorite Blade
				["description"] = "On 2nd floor, at the base of the ceiling. It has big range to interact with it, don't try jump towards it or where it is.",
				["coord"] = { 39.3, 53.8, SIREN_ISLE },
				["questID"] = 86767,
				["g"] = {
					i(233831), -- Minnow's Favorite Blade (COSMETIC!)
					--i(191059), -- Dilapidated Parchment: Top Half
					--i(191058), -- Dilapidated Parchment: Bottom Half
					--idk, they are same as for workboots and create same Treasure Map: Ohn'ahran Plains (itemID 191087)
				},
			}),
			o(463539, {	-- Pilfered Earthen Chest
				["coord"] = { 68.4, 94.4, SIREN_ISLE },
				["questID"] = 84527,
				--["isWeekly"] = true,	-- repeatble after full circle of theme? naga (this) -> pirates -> vrykul
				["g"] = {
					i(229181),	-- Ordained Forge Maul
				},
			}),
			o(499127, {	-- Runemarked Coffer
				-- TODO: The Forgotten Tomb + storm phase
				-- TODO: I don't make screenshot for this one, so I'm unsure if it something in loot or it is related to treasure chest)
				["coord"] = { 26.6, 23.9, 2375 },
				["questID"] = 85859,
			}),
			o(500407, {	-- Runed Storm Cache
				-- TODO: The Forgotten Tomb + storm phase
				-- TODO: I don't make screenshot for this one, so I'm unsure if it something in loot or it is related to treasure chest)
				["coord"] = { 28.5, 73.5, 2375 },
				["questID"] = 84843,
			}),
			o(493375, {	-- Rune-Sealed Coffer
				-- TODO: move to hqt? 85714 solving puzzle before unlock it
				["coord"] = { 67.8, 73.5, SIREN_ISLE },
				["questID"] = 86171,
			}),
			o(505476, {	-- Stone Carver's Scramseax
				["coord"] = { 26.5, 23.4, 2375 },
				["questID"] = 86732,
				["g"] = {
					i(233834),	-- Stone Carver's Scramseax (COSMETIC!)
				},
			}),
			o(500697, {	-- Well Loved Squeaky Toy
				["coord"] = { 39.3, 54.2, SIREN_ISLE },
				["g"] = {
					i(233027),	-- Well Loved Squeaky Toy
				},
			}),
		}),
	}),
})));