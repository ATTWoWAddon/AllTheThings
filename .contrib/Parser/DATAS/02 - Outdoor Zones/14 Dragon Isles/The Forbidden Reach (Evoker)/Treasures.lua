---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root("Zones", m(DRAGON_ISLES, bubbleDown({ ["timeline"] = { ADDED_10_0_2 } }, {
	m(THE_FORBIDDEN_REACH_DRACTHYR, bubbleDownSelf({ ["races"] = { DRACTHYR_ALLIANCE, DRACTHYR_HORDE } }, {
		n(TREASURES, {
			o(377458, {	-- Abandoned Weapon Rack
				["coord"] = { 46.2, 21.7, THE_FORBIDDEN_REACH_DRACTHYR },
				["questID"] = 66965,
				["g"] = {
					i(194888),	-- Dracthyr's Inscribed Blade
					i(194073),	-- Distinguished Dracthyr's Implement
				},
			}),
			o(376124, {	-- Bag of Enchanted Wind
				["coord"] = { 42.1, 34.4, THE_FORBIDDEN_REACH_DRACTHYR },
				["questID"] = 65909,
				["g"] = {
					i(193840),	-- Bag of Enchanted Winds
				},
			}),
			n(191992, {	-- Eviscerated Argali
				["coord"] = { 41.7, 23.0, THE_FORBIDDEN_REACH_DRACTHYR },
				["questID"] = 67013,
				["g"] = {
					i(194511),	-- Living Ration
				},
			}),
			o(377233, {	-- Hessethiash's Poorly Hidden Treasure
				["coord"] = { 35.6, 69.65, THE_FORBIDDEN_REACH_DRACTHYR },
				["questID"] = 66876,
				["g"] = {
					i(195885, {["races"]=IGNORED_VALUE}),	-- Black Dragon's Scale Cloak
				},
			}),
			o(377466, {	-- Lost Draconic Hourglass
				["coord"] = { 30.5, 64.3, THE_FORBIDDEN_REACH_DRACTHYR },
				["questID"] = 66974,
				["g"] = {
					i(194720),	-- Lost Draconic Hourglass
				},
			}),
			o(376213, {	-- Mysterious Wand
				["coord"] = { 38.2, 74.5, 2109 },
				["questID"] = 66010,
				["g"] = {
					i(193861),	-- Blue Magic Wand
				},
			}),
			o(376123, {	-- Suspicious Bottle
				["coord"] = { 62.2, 43.1, THE_FORBIDDEN_REACH_DRACTHYR },
				["questID"] = 65908,
				["g"] = {
					i(195580),	-- Suspicious Bottle
				},
			}),
			o(377317, {	-- Treasure Hoard
				["coord"] = { 71.0, 37.4, THE_FORBIDDEN_REACH_DRACTHYR },
				["questID"] = 66932,
				["g"] = {
					i(194037, {	-- Heavy Chest
						["cost"] = { { "i", 194074, 1 }, },	-- 1xGilded Key
						["g"] = {
							i(194072),	-- Sack of Gold
						},
					}),
				},
			}),
		}),
	})),
})))