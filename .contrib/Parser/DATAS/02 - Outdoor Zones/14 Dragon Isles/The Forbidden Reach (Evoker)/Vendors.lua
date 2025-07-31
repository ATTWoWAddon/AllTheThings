---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root("Zones", m(DRAGON_ISLES, bubbleDown({ ["timeline"] = { ADDED_10_0_2 } }, {
	m(THE_FORBIDDEN_REACH_DRACTHYR, bubbleDownSelf({ ["races"] = { DRACTHYR_ALLIANCE, DRACTHYR_HORDE } }, {
		n(VENDORS, {
			n(192785, {	-- Fusethrian <Rations & Hydration>
				["coord"] = { 43.6, 60.8, THE_FORBIDDEN_REACH_DRACTHYR },
				["groups"] = {
					i(200305),	-- Dracthyr Water Rations
					i(200304),	-- Stored Dracthyr Rations
				},
			}),
			n(198429, {	-- Treysh
				["sourceQuests"] = { 72263 },	-- Cavalry Has Its Place
				["coord"] = { 45.3, 61.3, THE_FORBIDDEN_REACH_DRACTHYR },
				["groups"] = {
					i(198809),	-- Armored Vorquin Leystrider (MOUINT!)
					i(201720),	-- Bronze Vorquin (MOUINT!)
					i(201702),	-- Crimson Vorquin (MOUINT!)
					i(198808),	-- Guardian Vorquin (MOUINT!)
					i(198811),	-- Majestic Armored Vorquin (MOUINT!)
					i(201719),	-- Obsidian Vorquin (MOUINT!)
					i(201704),	-- Sapphire Vorquin (MOUINT!)
					i(198810),	-- Swift Armored Vorquin (MOUINT!)
				},
			}),
		}),
	})),
})));
