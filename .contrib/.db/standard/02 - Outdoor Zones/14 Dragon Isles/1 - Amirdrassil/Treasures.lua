---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(DRAGON_ISLES, bubbleDown({ ["timeline"] = { ADDED_10_2_5 } }, {
	m(AMIRDRASSIL, {
		n(TREASURES, {
			o(421180, {	-- Kaldorei Backpack
				["coord"] = { 52.5, 17.7, AMIRDRASSIL },
				["questID"] =
					-- #if BEFORE 10.2.6
					79494,
					-- #else
					82825,
					-- #endif
				["lockCriteria"] = { 1, "sourceID", 195171 },
				["groups"] = {
					i(213005),	-- Blue Kaldorei Backpack
				},
			}),
			o(421183, {	-- Kaldorei Bag
				["coord"] = { 55.33, 64.28, AMIRDRASSIL },
				["questID"] =
					-- #if BEFORE 10.2.6
					79472,
					-- #else
					82821,
					-- #endif
				["lockCriteria"] = { 1, "sourceID", 195176 },
				["groups"] = {
					i(213010),	-- Blue Kaldorei Pouch
				},
			}),
			o(421338, {	-- Kaldorei Bag
				["coord"] = { 48.3, 76.4, AMIRDRASSIL },
				["questID"] =
					-- #if BEFORE 10.2.6
					79493,
					-- #else
					82824,
					-- #endif
				["lockCriteria"] = { 1, "sourceID", 195175 },
				["groups"] = {
					i(213009),	-- Violet Kaldorei Pouch
				},
			}),
			o(421179, {	-- Kaldorei Bedroll
				["coord"] = { 54.7, 77.2, AMIRDRASSIL },
				["questID"] =
					-- #if BEFORE 10.2.6
					79473,
					-- #else
					82822,
					-- #endif
				["lockCriteria"] = { 1, "sourceID", 195169 },
				["groups"] = {
					i(213003),	-- Blue Kaldorei Bedroll
				},
			}),
			o(421181, {	-- Kaldorei Dagger
				["coord"] = { 31.3, 16.1, AMIRDRASSIL },
				["questID"] =
					-- #if BEFORE 10.2.6
					79496,
					-- #else
					82826,
					-- #endif
				["lockCriteria"] = { 1, "sourceID", 195174 },
				["groups"] = {
					i(213008),	-- Kaldorei Bow Carver
				},
			}),
			o(421339, {	-- Kaldorei Horn
				["coord"] = { 58.5, 51.9, AMIRDRASSIL },
				["questID"] =
					-- #if BEFORE 10.2.6
					79498,
					-- #else
					82828,
					-- #endif
				["lockCriteria"] = { 1, "sourceID", 195172 },
				["groups"] = {
					i(213006),	-- Night Elven Horn
				},
			}),
			o(421182, {	-- Kaldorei Horn
				["coord"] = { 49.1, 70.3, AMIRDRASSIL },
				["questID"] =
					-- #if BEFORE 10.2.6
					79497,
					-- #else
					82827,
					-- #endif
				["lockCriteria"] = { 1, "sourceID", 195173 },
				["groups"] = {
					i(213007),	-- Night Elven Signal
				},
			}),
			o(421555, {	-- Kaldorei Moon Bow
				["coord"] = { 29.0, 28.9, AMIRDRASSIL },
				["questID"] =
					-- #if BEFORE 10.2.6
					79520,
					-- #else
					82831,
					-- #endif
				["lockCriteria"] = { 1, "sourceID", 195215 },
				["groups"] = {
					i(213160),	-- Kaldorei Moon Bow
				},
			}),
			o(421184, {	-- Kaldorei Shield
				["coord"] = { 47.9, 56.9, AMIRDRASSIL },
				["questID"] =
					-- #if BEFORE 10.2.6
					79499,
					-- #else
					82829,
					-- #endif
				["lockCriteria"] = { 1, "sourceID", 195177 },
				["groups"] = {
					i(213011),	-- Night Elven Shield
				},
			}),
			o(421185, {	-- Kaldorei Spear
				["coord"] = { 53.5, 55.7, AMIRDRASSIL },
				["questID"] =
					-- #if BEFORE 10.2.6
					79490,
					-- #else
					82823,
					-- #endif
				["lockCriteria"] = { 1, "sourceID", 195178 },
				["groups"] = {
					i(213012),	-- Night Elven Spear
				},
			}),
			o(421186, {	-- Kaldorei Spyglass
				["coord"] = { 51.9, 5.9, AMIRDRASSIL },
				["questID"] =
					-- #if BEFORE 10.2.6
					79500,
					-- #else
					82830,
					-- #endif
				["lockCriteria"] = { 1, "sourceID", 195179 },
				["groups"] = {
					i(213013),	-- Kaldorei Sentinel's Spyglass
				},
			}),
		}),
	}),
})));

-- #if AFTER 10.2.6
root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.DF, bubbleDownSelf({ ["timeline"] = { ADDED_10_2_5, REMOVED_10_2_6 } }, {
	m(DRAGON_ISLES, {
		m(AMIRDRASSIL, {
			n(TREASURES, {
				-- Old questIDs of treasures
				q(79494),	-- Kaldorei Backpack
				q(79472),	-- Kaldorei Bag
				q(79493),	-- Kaldorei Bag
				q(79473),	-- Kaldorei Bedroll
				q(79496),	-- Kaldorei Dagger
				q(79498),	-- Kaldorei Horn
				q(79497),	-- Kaldorei Horn
				q(79520),	-- Kaldorei Moon Bow
				q(79499),	-- Kaldorei Shield
				q(79490),	-- Kaldorei Spear
				q(79500),	-- Kaldorei Spyglass
			}),
		}),
	}),
})));
-- #endif
