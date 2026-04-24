---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root("Zones", m(DRAGON_ISLES, bubbleDown({ ["timeline"] = { ADDED_10_0_2 } }, {
	m(THE_FORBIDDEN_REACH_DRACTHYR, bubbleDownSelf({ ["races"] = { DRACTHYR_ALLIANCE, DRACTHYR_HORDE } }, {
		n(RARES, sharedData({
			["isDaily"] = true,
		},{
			n(191729, {	-- Deathrip
				["coord"] = { 32.9, 41.2, THE_FORBIDDEN_REACH_DRACTHYR },
				["questID"] = 66966,
				["groups"] = {
					i(197725),	-- Deathrip's Curled Claw
				},
			}),
			n(191746, {	-- Ketess the Pilager
				["coord"] = { 56.7, 65.6, THE_FORBIDDEN_REACH_DRACTHYR },
				["questID"] = 66975,
				["groups"] = {
					i(194741),	-- Earthbound Tome
				},
			}),
			n(191713, {	-- Scytherin
				["coord"] = { 28.9, 36.6, THE_FORBIDDEN_REACH_DRACTHYR },
				["questID"] = 66967,
				["groups"] = {
					i(196435),	-- Scytherin's Barbed Necklace
				},
			}),
			n(181833, {	-- Shimmermaw
				["coord"] = { 71.0, 37.4, THE_FORBIDDEN_REACH_DRACTHYR },
				["questID"] = 64971,
				["groups"] = {
					i(194074),	-- Gilded Key
				},
			}),
			n(181427, {	-- Stormspine
				["coord"] = { 54.9, 43.1, THE_FORBIDDEN_REACH_DRACTHYR },
				["questID"] = 64859,
				["groups"] = {
					i(194084),	-- Charged Storm Crystal
				},
			}),
			n(182280, {	-- Tazenrath
				["coord"] = { 79.7, 74.3, THE_FORBIDDEN_REACH_DRACTHYR },
				["questID"] = 66973,
				["groups"] = {
					i(194883),	-- Runic Wing
				},
			}),
			n(186355, {	-- Tripletath the Lost
				["description"] = "Cave entrance is at 59.9, 59.0.",
				["coord"] = { 57.4, 60.2, THE_FORBIDDEN_REACH_DRACTHYR },
				["questID"] = 65910,
				["groups"] = {
					i(197727),	-- Mystical Water Vial
				},
			}),
		})),
	})),
})));
