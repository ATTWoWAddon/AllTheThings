---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(KUL_TIRAS, bubbleDown({ ["timeline"] = { ADDED_8_0_1 } }, {
	m(STORMSONG_VALLEY, {
		n(TREASURES, {
			o(303039, {	-- Curious Grain Sack
				["questID"] = 53635,
				["coord"] = { 32.1, 66.2, STORMSONG_VALLEY },
			}),
			o(281646, {	-- Honey Vat
				["questID"] = 50576,
				["coord"] = { 66.6, 71.1, STORMSONG_VALLEY },
				["groups"] = {
					i(154476),	-- Honey-Glazed Vambraces
				},
			}),
			o(296854, {	-- Legends of the Tidesages - Part 1
				["coord"] = { 49.51, 80.90, STORMSONG_VALLEY },
			}),
			o(296902, {	-- Legends of the Tidesages - Part 2
				["coord"] = { 59.02, 59.54, STORMSONG_VALLEY },
			}),
			o(296903, {	-- Legends of the Tidesages - Part 3
				["coord"] = { 31.95, 72.91, STORMSONG_VALLEY },
			}),
			o(296904, {	-- Legends of the Tidesages - Part 4
				["coord"] = { 33.81, 33.23, STORMSONG_VALLEY },
			}),
			o(296905, {	-- Legends of the Tidesages - Part 5
				["coord"] = { 56.02, 38.53, STORMSONG_VALLEY },
			}),
			o(296906, {	-- Legends of the Tidesages - Part 6
				["coord"] = { 44.18, 36.60, STORMSONG_VALLEY },
			}),
			o(296907, {	-- Legends of the Tidesages - Part 7
				["coord"] = { 62.08, 30.22, STORMSONG_VALLEY },
			}),
			o(296908, {	-- Legends of the Tidesages - Part 8
				["coord"] = { 75.07, 31.13, STORMSONG_VALLEY },
			}),
			o(291257, {	-- Small Treasure Chest
				["questID"] = 51939,
				["isDaily"] = true,
				["coords"] = {
					{ 64.4, 70.2, STORMSONG_VALLEY },
					{ 65.9, 75.7, STORMSONG_VALLEY },
					{ 66.4, 68.2, STORMSONG_VALLEY },
					{ 67.3, 78.0, STORMSONG_VALLEY },
					{ 68.1, 71.4, STORMSONG_VALLEY },
					{ 68.8, 78.8, STORMSONG_VALLEY },
					{ 69.2, 77.2, STORMSONG_VALLEY },
					{ 69.4, 68.1, STORMSONG_VALLEY },
					{ 71.2, 69.4, STORMSONG_VALLEY },
					{ 72.0, 65.9, STORMSONG_VALLEY },
					{ 72.1, 68.7, STORMSONG_VALLEY },
					{ 72.7, 72.8, STORMSONG_VALLEY },
					{ 73.3, 67.5, STORMSONG_VALLEY },
					{ 74.1, 67.8, STORMSONG_VALLEY },
				},
			}),
		}),
		o(293351, {	-- Truffle
			-- Spellid 275911 Turbo Truffle
		}),
		o(293445, {	-- Truffle
			i(162010),	-- Valley Truffle
		}),
		o(293446, {	-- Truffle
			i(162011),	-- Violet Truffle
		}),
		o(293449, {	-- Truffle
			i(162012),	-- Magic Truffle
		}),
		o(296855, {	-- Truffle
			i(163558),	-- Sporonite Bomb
			i(162010),	-- Valley Truffle
		}),
	}),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.BFA, bubbleDownSelf({ ["timeline"] = { ADDED_8_0_1 } }, {
	m(KUL_TIRAS, {
		m(STORMSONG_VALLEY, {
			n(TREASURES, {
				q(51184),	-- Stormsong Valley repeatable random chest
				q(51927),	-- Stormsong Valley repeatable random chest
				q(51930),	-- Stormsong Valley repeatable random chest
				q(51935),	-- Stormsong Valley repeatable random chest
				q(51938),	-- Stormsong Valley repeatable random chest
				q(51940),	-- Stormsong Valley repeatable random chest
				q(51941),	-- Stormsong Valley repeatable random chest
				q(51942),	-- Stormsong Valley repeatable random chest
				q(51943),	-- Stormsong Valley repeatable random chest
				q(51944),	-- Stormsong Valley repeatable random chest
				q(51945),	-- Stormsong Valley repeatable random chest
				q(51946),	-- Stormsong Valley repeatable random chest
				q(52989),	-- Stormsong Valley repeatable random chest
				q(53652),	-- Reported as "Alliance BfA: Opened a chest in Stormsong Valley and got this"
			}),
		}),
	}),
})));
