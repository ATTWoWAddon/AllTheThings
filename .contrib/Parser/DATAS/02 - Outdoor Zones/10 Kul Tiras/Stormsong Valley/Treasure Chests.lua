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
			o(294311, {	-- Small Treasure Chest (unique loot pool)
				["questID"] = 52989,
				["isDaily"] = true,
				["sharedDescription"] = "Items which currently allow unlocking an Appearance Source when vendored, though are not available to transmog.",
				["coords"] = {
					{ 82.1, 44.0, STORMSONG_VALLEY },
					{ 77.8, 42.1, STORMSONG_VALLEY },
					{ 78.7, 57.4, STORMSONG_VALLEY },
					{ 79.1, 43.3, STORMSONG_VALLEY },
					{ 79.6, 55.2, STORMSONG_VALLEY },
					{ 81.7, 50.1, STORMSONG_VALLEY },
					{ 82.2, 44.0, STORMSONG_VALLEY },
					{ 83.1, 44.1, STORMSONG_VALLEY },
					{ 84.2, 54.5, STORMSONG_VALLEY },
					{ 84.7, 53.3, STORMSONG_VALLEY },
					{ 85.4, 50.4, STORMSONG_VALLEY },
					{ 85.5, 50.4, STORMSONG_VALLEY },
					{ 85.6, 53.3, STORMSONG_VALLEY },
					{ 86.0, 52.3, STORMSONG_VALLEY },
				},
				["groups"] = {
					i(162661),	-- Battered Skull
					i(162671),	-- Broken Crossbow
					i(162663),	-- Broken Spearhead
					i(162660),	-- Burnished Shield
					i(162674),	-- Cracked Helmet
					i(162678),	-- Crimson Flail
					i(162677),	-- Dull Throwing Knives
					i(162662),	-- Etched Mask
					i(162679),	-- Misfired Pistol
					i(162676),	-- Ragged Furs
					i(162680),	-- Ruined Collar
					i(162651),	-- Rusted Chains
					i(162682),	-- Tarnished Longsword
					i(162659),	-- Worn Mace
				},
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
	}),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.BFA, bubbleDownSelf({ ["timeline"] = { ADDED_8_0_1 } }, {
	m(KUL_TIRAS, {
		m(STORMSONG_VALLEY, {
			n(TREASURES, {
				q(51945),	-- Stormsong Valley repeatable random chest
				q(53652),	-- Reported as "Alliance BfA: Opened a chest in Stormsong Valley and got this"
			}),
		}),
	}),
})));
