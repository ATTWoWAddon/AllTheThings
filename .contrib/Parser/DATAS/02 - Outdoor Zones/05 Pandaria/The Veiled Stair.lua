---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, {
	m(PANDARIA, {
		m(THE_VEILED_STAIR, {
			["icon"] = 656543,
			["groups"] = {
				battlepets({
					["sym"] = {{"select","speciesID",
						706,	-- Bandicoon (PET!)
						708,	-- Malayan Quillrat (PET!)
						709,	-- Malayan Quillrat Pup (PET!)
					}},
				}),
				explorationHeader({
					visit_exploration(6377,{coord={55.7,55.4,THE_VEILED_STAIR}}),	-- Hatescale Burrow
					visit_exploration(6382,{coord={69.4,78.6,THE_VEILED_STAIR}}),	-- Mason's Folly
					exploration(6380),	-- Path of a Hundred Steps
					exploration(6375),	-- Tavern in the Mists
					exploration(6373),	-- The Secret Aerie
					exploration(6381),	-- The Spring Road
				}),
				n(FLIGHT_PATHS, {
					fp(1029, {	-- Tavern in the Mists
						["coord"] = { 56.6, 75.8, THE_VEILED_STAIR },
					}),
				}),
				n(QUESTS, {
					q(31287, {	-- Educating Saurok
						["provider"] = { "n", 63484 },	-- Len the Whisperer
						["coord"] = { 53.51, 65.75, THE_VEILED_STAIR },
					}),
					q(31286, {	-- Robbing Robbers of Robbers
						["provider"] = { "n", 63484 },	-- Len the Whisperer
						["coord"] = { 53.51, 65.75, THE_VEILED_STAIR },
						["g"] = {
							i(85981),	-- Black Market Merchandise (QI!)
						},
					}),
					q(31611, {	-- The Kun-Lai Kicker
						["description"] = "If you don't see questgiver in The Veiled Stair, look in the Binan Village to the north.",
						["provider"] = { "n", 63367 },	-- Brewmaster Boof
						["coords"] = {
							{ 72.6, 93.0, KUN_LAI_SUMMIT },
							{ 51.90, 43.73, THE_VEILED_STAIR },
						},
					}),
					q(31285, {	-- The Spring Drifter
						["provider"] = { "n", 63367 },	-- Brewmaster Boof
						["coord"] = { 51.90, 43.73, THE_VEILED_STAIR },
					}),
				}),
				n(TREASURES, {
					o(214325, {	-- Forgotten Lockbox
						["questID"] = 31867, -- Forgotten Lockbox
						["description"] = "Located on a barrel on the second floor of the inn",
						["coord"] = { 54.66, 71.67, THE_VEILED_STAIR },
					}),
					o(213845, {	-- The Hammer of Folly
						["questID"] = 31428,
						["coord"] = { 74.92, 76.47, THE_VEILED_STAIR },
						["g"] = {
							i(86473),	-- The Hammer of Folly
						},
					}),
				}),
				n(VENDORS, {
					un(38, n(70436, {	-- Blacktalon Quartermaster <Supplier to the Black Prince> (Ordos - Legendary Cloak filter)
						["description"] = "To purchase the epic cloaks you must have obtained the achievement |r |cFFFFD700'Chapter IV: Celestial Blessings'|r during Mists of Pandaria. ",
						["coord"] = { 54.2, 72.9, THE_VEILED_STAIR },
						["g"] = {
							i(98149, {	-- Cranewing Cloak
								["cost"] = 100000000,	-- 10,000g
							}),
							i(98150, {	-- Jadefire Drape
								["cost"] = 100000000,	-- 10,000g
							}),
							i(98335, {	-- Oxhoof Greatcloak
								["cost"] = 100000000,	-- 10,000g
							}),
							i(98146, {	-- Oxhorn Bladebreaker
								["cost"] = 100000000,	-- 10,000g
							}),
							i(98147, {	-- Tigerclaw Cape
								["cost"] = 100000000,	-- 10,000g
							}),
							i(98148, {	-- Tigerfang Wrap
								["cost"] = 100000000,	-- 10,000g
							}),
							i(102457, {	-- Timeless Essence of the Black Dragonflight
								["description"] = "To purchase the legendary cloak token you must have obtained the achievement |r |cFFFFD700'Chapter V: Judgment of the Black Prince'|r during Mists of Pandaria.",
								["g"] = {
									i(102248),	-- Fen-Yu, Fury of Xuen
									i(102249),	-- Gon-Lu, Strength of Xuen
									i(102247),	-- Jina-Kang, Kindness of Chi-Ji
									i(102245),	-- Qian-Le, Courage of Niuzao
									i(102250),	-- Qian-Ying, Fortitude of Niuzao
									i(102246),	-- Xing-Ho, Breath of Yu'lon
								},
							}),
						},
					})),
				}),
			},
		}),
	}),
});
